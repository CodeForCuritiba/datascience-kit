#!/bin/bash
echo "Telegram Publisher"

BOT_URL="https://api.telegram.org/bot${TELEGRAM_TOKEN}/sendMessage"

VERSION=$(cat VERSION || echo 'N/A')

PARSE_MODE="Markdown"

if [ $TRAVIS_TEST_RESULT -ne 0 ]; then
    build_status="🔴 Falha"
else
    build_status="⭐ SUCESSO"
fi

send_msg () {
    curl -s -X POST ${BOT_URL} -d chat_id=$TELEGRAM_CHAT_ID \
        -d text="$1" -d parse_mode=${PARSE_MODE}
}

send_msg "
CODE 4 CURITIBA - 🏭 - Status do travis
Status da construção: *${build_status}!*

\`Repositório:  ${TRAVIS_REPO_SLUG}\`
\`Branch:       ${TRAVIS_BRANCH}\`
\`Versão:       ${VERSION}\`

${TRAVIS_COMMIT_MESSAGE}

[Link da construção](${TRAVIS_JOB_WEB_URL})
"
