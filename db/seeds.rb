# This file should contain all the record creation needegenre_idd to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
	email: 'aa@aa',
	password: 'admin1',
	)

Item.create!(

			name: 'ショートケーキ',
			description: '地に舞い降りし天使、闇を引き裂く白のベール',
			genre_id: 'ケーキ',
			price: '1200',
			status: '販売中',
			image: open('./app/assets/images/ショートケーキ.jpg')
            )

Item.create!(
	        name: 'チョコケーキ',
			description: '白黒つけたくないから',
			genre_id: 'ケーキ',
			price: '1200',
			status: '販売中',
			image: open('./app/assets/images/チョコケーキ.jpg')
            )

Item.create!(
	        name: 'モンブラン',
			description: '素朴な秋、ありのままでいいんだよ',
			genre_id: 'ケーキ',
			price: '1000',
			status: '販売中',
			image: open('./app/assets/images/モンブラン.jpg')
            )

Item.create!(
	        name: 'クッキー',
	    	description: '友達が飼ってる柴犬の名前もクッキーだったな',
			genre_id: 'クッキー',
			price: '700',
			status: '販売中',
			image: open('./app/assets/images/クッキー.jpg')
			)

Item.create!(
	        name: 'プディング',
	    	description: 'プリン？いえいえ、Pudding。',
			genre_id: 'プリンゼリー',
			price: '600',
			status: '販売中',
			image: open('./app/assets/images/プリン.jpg')
			)

Item.create!(
	        name: 'イチゴ大福',
	    	description: 'あぁあの子に食べさせたい！ふっくらもちもち、うん可愛い！',
	    	genre_id: '和菓子',
			price: '500',
			status: '販売中',
			image: open('./app/assets/images/苺大福.jpg')
			)
