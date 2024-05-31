echo "パスワードマネージャーへようこそ！"
echo "次の選択肢から入力してください("Add Password" "Get Password" "Exit")：";
read input



while [ "$input" != " Exit" ]; do
   case $input in
     "Add Password")
     # Add Password が入力された場合
       echo "サービス名を入力してください："; read service
       echo "ユーザー名を入力してください："; read user
       echo "パスワードを入力してください："; read password
       echo "$service,$user,$password" >> ~/passmana_info.txt
       echo "パスワードの追加は成功しました。" 
       ;;

   esac

   echo "次の選択肢から入力してください("Add Password" "Get Password" "Exit")：";
   read input
done


echo "Thank you!"
## プログラムが終了
