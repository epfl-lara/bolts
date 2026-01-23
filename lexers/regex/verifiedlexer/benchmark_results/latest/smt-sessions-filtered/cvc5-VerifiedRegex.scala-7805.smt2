; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!410060 () Bool)

(assert start!410060)

(assert (=> start!410060 true))

(declare-fun b!4272340 () Bool)

(assert (=> b!4272340 true))

(assert (=> b!4272340 true))

(assert (=> b!4272340 true))

(declare-fun b!4272349 () Bool)

(declare-fun e!2652605 () Bool)

(declare-datatypes ((List!47442 0))(
  ( (Nil!47318) (Cons!47318 (h!52738 (_ BitVec 16)) (t!353822 List!47442)) )
))
(declare-datatypes ((IArray!28605 0))(
  ( (IArray!28606 (innerList!14360 List!47442)) )
))
(declare-datatypes ((Conc!14300 0))(
  ( (Node!14300 (left!35191 Conc!14300) (right!35521 Conc!14300) (csize!28830 Int) (cheight!14511 Int)) (Leaf!22106 (xs!17606 IArray!28605) (csize!28831 Int)) (Empty!14300) )
))
(declare-datatypes ((BalanceConc!28110 0))(
  ( (BalanceConc!28111 (c!726995 Conc!14300)) )
))
(declare-fun x!741755 () BalanceConc!28110)

(declare-fun tp!1308231 () Bool)

(declare-fun inv!62493 (Conc!14300) Bool)

(assert (=> b!4272349 (= e!2652605 (and (inv!62493 (c!726995 x!741755)) tp!1308231))))

(declare-datatypes ((StringLiteralValueInjection!128 0))(
  ( (StringLiteralValueInjection!129) )
))
(declare-fun thiss!2587 () StringLiteralValueInjection!128)

(declare-fun inst!1744 () Bool)

(declare-fun inv!62494 (BalanceConc!28110) Bool)

(declare-fun list!17190 (BalanceConc!28110) List!47442)

(declare-datatypes ((TokenValue!8273 0))(
  ( (FloatLiteralValue!16546 (text!58356 List!47442)) (TokenValueExt!8272 (__x!28719 Int)) (Broken!41365 (value!249712 List!47442)) (Object!8396) (End!8273) (Def!8273) (Underscore!8273) (Match!8273) (Else!8273) (Error!8273) (Case!8273) (If!8273) (Extends!8273) (Abstract!8273) (Class!8273) (Val!8273) (DelimiterValue!16546 (del!8333 List!47442)) (KeywordValue!8279 (value!249713 List!47442)) (CommentValue!16546 (value!249714 List!47442)) (WhitespaceValue!16546 (value!249715 List!47442)) (IndentationValue!8273 (value!249716 List!47442)) (String!55296) (Int32!8273) (Broken!41366 (value!249717 List!47442)) (Boolean!8274) (Unit!66249) (OperatorValue!8276 (op!8333 List!47442)) (IdentifierValue!16546 (value!249718 List!47442)) (IdentifierValue!16547 (value!249719 List!47442)) (WhitespaceValue!16547 (value!249720 List!47442)) (True!16546) (False!16546) (Broken!41367 (value!249721 List!47442)) (Broken!41368 (value!249722 List!47442)) (True!16547) (RightBrace!8273) (RightBracket!8273) (Colon!8273) (Null!8273) (Comma!8273) (LeftBracket!8273) (False!16547) (LeftBrace!8273) (ImaginaryLiteralValue!8273 (text!58357 List!47442)) (StringLiteralValue!24819 (value!249723 List!47442)) (EOFValue!8273 (value!249724 List!47442)) (IdentValue!8273 (value!249725 List!47442)) (DelimiterValue!16547 (value!249726 List!47442)) (DedentValue!8273 (value!249727 List!47442)) (NewLineValue!8273 (value!249728 List!47442)) (IntegerValue!24819 (value!249729 (_ BitVec 32)) (text!58358 List!47442)) (IntegerValue!24820 (value!249730 Int) (text!58359 List!47442)) (Times!8273) (Or!8273) (Equal!8273) (Minus!8273) (Broken!41369 (value!249731 List!47442)) (And!8273) (Div!8273) (LessEqual!8273) (Mod!8273) (Concat!21171) (Not!8273) (Plus!8273) (SpaceValue!8273 (value!249732 List!47442)) (IntegerValue!24821 (value!249733 Int) (text!58360 List!47442)) (StringLiteralValue!24820 (text!58361 List!47442)) (FloatLiteralValue!16547 (text!58362 List!47442)) (BytesLiteralValue!8273 (value!249734 List!47442)) (CommentValue!16547 (value!249735 List!47442)) (StringLiteralValue!24821 (value!249736 List!47442)) (ErrorTokenValue!8273 (msg!8334 List!47442)) )
))
(declare-fun toCharacters!11 (StringLiteralValueInjection!128 TokenValue!8273) BalanceConc!28110)

(declare-fun toValue!18 (StringLiteralValueInjection!128 BalanceConc!28110) TokenValue!8273)

(assert (=> start!410060 (= inst!1744 (=> (and (inv!62494 x!741755) e!2652605) (= (list!17190 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))) (list!17190 x!741755))))))

(assert (= start!410060 b!4272349))

(declare-fun m!4866141 () Bool)

(assert (=> b!4272349 m!4866141))

(declare-fun m!4866143 () Bool)

(assert (=> start!410060 m!4866143))

(declare-fun m!4866145 () Bool)

(assert (=> start!410060 m!4866145))

(assert (=> start!410060 m!4866145))

(declare-fun m!4866147 () Bool)

(assert (=> start!410060 m!4866147))

(assert (=> start!410060 m!4866143))

(declare-fun m!4866149 () Bool)

(assert (=> start!410060 m!4866149))

(declare-fun m!4866151 () Bool)

(assert (=> start!410060 m!4866151))

(declare-fun res!1754879 () Bool)

(declare-fun e!2652608 () Bool)

(assert (=> b!4272340 (=> res!1754879 e!2652608)))

(declare-fun x!741756 () BalanceConc!28110)

(declare-fun x!741757 () BalanceConc!28110)

(assert (=> b!4272340 (= res!1754879 (not (= (list!17190 x!741756) (list!17190 x!741757))))))

(declare-fun inst!1745 () Bool)

(declare-fun e!2652606 () Bool)

(declare-fun e!2652607 () Bool)

(assert (=> b!4272340 (= inst!1745 (=> (and (inv!62494 x!741756) e!2652606 (inv!62494 x!741757) e!2652607) e!2652608))))

(declare-fun b!4272350 () Bool)

(assert (=> b!4272350 (= e!2652608 (= (toValue!18 thiss!2587 x!741756) (toValue!18 thiss!2587 x!741757)))))

(declare-fun b!4272351 () Bool)

(declare-fun tp!1308233 () Bool)

(assert (=> b!4272351 (= e!2652606 (and (inv!62493 (c!726995 x!741756)) tp!1308233))))

(declare-fun b!4272352 () Bool)

(declare-fun tp!1308232 () Bool)

(assert (=> b!4272352 (= e!2652607 (and (inv!62493 (c!726995 x!741757)) tp!1308232))))

(assert (= (and b!4272340 (not res!1754879)) b!4272350))

(assert (= b!4272340 b!4272351))

(assert (= b!4272340 b!4272352))

(declare-fun m!4866153 () Bool)

(assert (=> b!4272340 m!4866153))

(declare-fun m!4866155 () Bool)

(assert (=> b!4272340 m!4866155))

(declare-fun m!4866157 () Bool)

(assert (=> b!4272340 m!4866157))

(declare-fun m!4866159 () Bool)

(assert (=> b!4272340 m!4866159))

(declare-fun m!4866161 () Bool)

(assert (=> b!4272350 m!4866161))

(declare-fun m!4866163 () Bool)

(assert (=> b!4272350 m!4866163))

(declare-fun m!4866165 () Bool)

(assert (=> b!4272351 m!4866165))

(declare-fun m!4866167 () Bool)

(assert (=> b!4272352 m!4866167))

(declare-fun bs!601269 () Bool)

(declare-fun neg-inst!1744 () Bool)

(declare-fun s!239998 () Bool)

(assert (= bs!601269 (and neg-inst!1744 s!239998)))

(assert (=> bs!601269 (=> true (= (list!17190 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))) (list!17190 x!741755)))))

(assert (=> m!4866149 m!4866143))

(assert (=> m!4866149 m!4866145))

(assert (=> m!4866149 m!4866147))

(assert (=> m!4866149 s!239998))

(assert (=> m!4866143 s!239998))

(declare-fun bs!601270 () Bool)

(assert (= bs!601270 (and neg-inst!1744 start!410060)))

(assert (=> bs!601270 (= true inst!1744)))

(declare-fun bs!601271 () Bool)

(declare-fun neg-inst!1745 () Bool)

(declare-fun s!240000 () Bool)

(assert (= bs!601271 (and neg-inst!1745 s!240000)))

(declare-fun res!1754880 () Bool)

(declare-fun e!2652609 () Bool)

(assert (=> bs!601271 (=> res!1754880 e!2652609)))

(assert (=> bs!601271 (= res!1754880 (not (= (list!17190 x!741755) (list!17190 x!741755))))))

(assert (=> bs!601271 (=> true e!2652609)))

(declare-fun b!4272353 () Bool)

(assert (=> b!4272353 (= e!2652609 (= (toValue!18 thiss!2587 x!741755) (toValue!18 thiss!2587 x!741755)))))

(assert (= (and bs!601271 (not res!1754880)) b!4272353))

(assert (=> m!4866149 s!240000))

(assert (=> m!4866149 s!240000))

(declare-fun bs!601272 () Bool)

(assert (= bs!601272 (and m!4866143 m!4866149)))

(assert (=> bs!601272 s!240000))

(assert (=> m!4866143 s!240000))

(assert (=> bs!601272 s!240000))

(assert (=> m!4866143 s!240000))

(declare-fun bs!601273 () Bool)

(declare-fun s!240002 () Bool)

(assert (= bs!601273 (and neg-inst!1745 s!240002)))

(declare-fun res!1754881 () Bool)

(declare-fun e!2652610 () Bool)

(assert (=> bs!601273 (=> res!1754881 e!2652610)))

(assert (=> bs!601273 (= res!1754881 (not (= (list!17190 x!741755) (list!17190 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))))))))

(assert (=> bs!601273 (=> true e!2652610)))

(declare-fun b!4272354 () Bool)

(assert (=> b!4272354 (= e!2652610 (= (toValue!18 thiss!2587 x!741755) (toValue!18 thiss!2587 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755)))))))

(assert (= (and bs!601273 (not res!1754881)) b!4272354))

(declare-fun bs!601274 () Bool)

(assert (= bs!601274 (and m!4866147 m!4866149 m!4866143)))

(assert (=> bs!601274 m!4866149))

(assert (=> bs!601274 m!4866147))

(assert (=> bs!601274 s!240002))

(declare-fun bs!601275 () Bool)

(declare-fun s!240004 () Bool)

(assert (= bs!601275 (and neg-inst!1745 s!240004)))

(declare-fun res!1754882 () Bool)

(declare-fun e!2652611 () Bool)

(assert (=> bs!601275 (=> res!1754882 e!2652611)))

(assert (=> bs!601275 (= res!1754882 (not (= (list!17190 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))) (list!17190 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))))))))

(assert (=> bs!601275 (=> true e!2652611)))

(declare-fun b!4272355 () Bool)

(assert (=> b!4272355 (= e!2652611 (= (toValue!18 thiss!2587 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))) (toValue!18 thiss!2587 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755)))))))

(assert (= (and bs!601275 (not res!1754882)) b!4272355))

(assert (=> m!4866147 s!240004))

(declare-fun bs!601276 () Bool)

(declare-fun s!240006 () Bool)

(assert (= bs!601276 (and neg-inst!1745 s!240006)))

(declare-fun res!1754883 () Bool)

(declare-fun e!2652612 () Bool)

(assert (=> bs!601276 (=> res!1754883 e!2652612)))

(assert (=> bs!601276 (= res!1754883 (not (= (list!17190 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))) (list!17190 x!741755))))))

(assert (=> bs!601276 (=> true e!2652612)))

(declare-fun b!4272356 () Bool)

(assert (=> b!4272356 (= e!2652612 (= (toValue!18 thiss!2587 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))) (toValue!18 thiss!2587 x!741755)))))

(assert (= (and bs!601276 (not res!1754883)) b!4272356))

(assert (=> bs!601274 m!4866147))

(assert (=> bs!601274 m!4866149))

(assert (=> bs!601274 s!240006))

(assert (=> m!4866147 s!240004))

(declare-fun bs!601277 () Bool)

(declare-fun s!240008 () Bool)

(assert (= bs!601277 (and neg-inst!1745 s!240008)))

(declare-fun res!1754884 () Bool)

(declare-fun e!2652613 () Bool)

(assert (=> bs!601277 (=> res!1754884 e!2652613)))

(assert (=> bs!601277 (= res!1754884 (not (= (list!17190 x!741755) (list!17190 x!741757))))))

(assert (=> bs!601277 (=> true e!2652613)))

(declare-fun b!4272357 () Bool)

(assert (=> b!4272357 (= e!2652613 (= (toValue!18 thiss!2587 x!741755) (toValue!18 thiss!2587 x!741757)))))

(assert (= (and bs!601277 (not res!1754884)) b!4272357))

(declare-fun bs!601278 () Bool)

(assert (= bs!601278 (and m!4866155 m!4866149 m!4866143)))

(assert (=> bs!601278 m!4866149))

(assert (=> bs!601278 m!4866155))

(assert (=> bs!601278 s!240008))

(declare-fun bs!601279 () Bool)

(declare-fun s!240010 () Bool)

(assert (= bs!601279 (and neg-inst!1745 s!240010)))

(declare-fun res!1754885 () Bool)

(declare-fun e!2652614 () Bool)

(assert (=> bs!601279 (=> res!1754885 e!2652614)))

(assert (=> bs!601279 (= res!1754885 (not (= (list!17190 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))) (list!17190 x!741757))))))

(assert (=> bs!601279 (=> true e!2652614)))

(declare-fun b!4272358 () Bool)

(assert (=> b!4272358 (= e!2652614 (= (toValue!18 thiss!2587 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))) (toValue!18 thiss!2587 x!741757)))))

(assert (= (and bs!601279 (not res!1754885)) b!4272358))

(declare-fun bs!601280 () Bool)

(assert (= bs!601280 (and m!4866155 m!4866147)))

(assert (=> bs!601280 m!4866147))

(assert (=> bs!601280 m!4866155))

(assert (=> bs!601280 s!240010))

(declare-fun bs!601281 () Bool)

(declare-fun s!240012 () Bool)

(assert (= bs!601281 (and neg-inst!1745 s!240012)))

(declare-fun res!1754886 () Bool)

(declare-fun e!2652615 () Bool)

(assert (=> bs!601281 (=> res!1754886 e!2652615)))

(assert (=> bs!601281 (= res!1754886 (not (= (list!17190 x!741757) (list!17190 x!741757))))))

(assert (=> bs!601281 (=> true e!2652615)))

(declare-fun b!4272359 () Bool)

(assert (=> b!4272359 (= e!2652615 (= (toValue!18 thiss!2587 x!741757) (toValue!18 thiss!2587 x!741757)))))

(assert (= (and bs!601281 (not res!1754886)) b!4272359))

(assert (=> m!4866155 s!240012))

(declare-fun bs!601282 () Bool)

(declare-fun s!240014 () Bool)

(assert (= bs!601282 (and neg-inst!1745 s!240014)))

(declare-fun res!1754887 () Bool)

(declare-fun e!2652616 () Bool)

(assert (=> bs!601282 (=> res!1754887 e!2652616)))

(assert (=> bs!601282 (= res!1754887 (not (= (list!17190 x!741757) (list!17190 x!741755))))))

(assert (=> bs!601282 (=> true e!2652616)))

(declare-fun b!4272360 () Bool)

(assert (=> b!4272360 (= e!2652616 (= (toValue!18 thiss!2587 x!741757) (toValue!18 thiss!2587 x!741755)))))

(assert (= (and bs!601282 (not res!1754887)) b!4272360))

(assert (=> bs!601278 m!4866155))

(assert (=> bs!601278 m!4866149))

(assert (=> bs!601278 s!240014))

(declare-fun bs!601283 () Bool)

(declare-fun s!240016 () Bool)

(assert (= bs!601283 (and neg-inst!1745 s!240016)))

(declare-fun res!1754888 () Bool)

(declare-fun e!2652617 () Bool)

(assert (=> bs!601283 (=> res!1754888 e!2652617)))

(assert (=> bs!601283 (= res!1754888 (not (= (list!17190 x!741757) (list!17190 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))))))))

(assert (=> bs!601283 (=> true e!2652617)))

(declare-fun b!4272361 () Bool)

(assert (=> b!4272361 (= e!2652617 (= (toValue!18 thiss!2587 x!741757) (toValue!18 thiss!2587 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755)))))))

(assert (= (and bs!601283 (not res!1754888)) b!4272361))

(assert (=> bs!601280 m!4866155))

(assert (=> bs!601280 m!4866147))

(assert (=> bs!601280 s!240016))

(assert (=> m!4866155 s!240012))

(declare-fun bs!601284 () Bool)

(declare-fun s!240018 () Bool)

(assert (= bs!601284 (and neg-inst!1745 s!240018)))

(declare-fun res!1754889 () Bool)

(declare-fun e!2652618 () Bool)

(assert (=> bs!601284 (=> res!1754889 e!2652618)))

(assert (=> bs!601284 (= res!1754889 (not (= (list!17190 x!741755) (list!17190 x!741756))))))

(assert (=> bs!601284 (=> true e!2652618)))

(declare-fun b!4272362 () Bool)

(assert (=> b!4272362 (= e!2652618 (= (toValue!18 thiss!2587 x!741755) (toValue!18 thiss!2587 x!741756)))))

(assert (= (and bs!601284 (not res!1754889)) b!4272362))

(declare-fun bs!601285 () Bool)

(assert (= bs!601285 (and m!4866161 m!4866149 m!4866143)))

(assert (=> bs!601285 m!4866149))

(assert (=> bs!601285 m!4866153))

(assert (=> bs!601285 s!240018))

(declare-fun bs!601286 () Bool)

(declare-fun s!240020 () Bool)

(assert (= bs!601286 (and neg-inst!1745 s!240020)))

(declare-fun res!1754890 () Bool)

(declare-fun e!2652619 () Bool)

(assert (=> bs!601286 (=> res!1754890 e!2652619)))

(assert (=> bs!601286 (= res!1754890 (not (= (list!17190 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))) (list!17190 x!741756))))))

(assert (=> bs!601286 (=> true e!2652619)))

(declare-fun b!4272363 () Bool)

(assert (=> b!4272363 (= e!2652619 (= (toValue!18 thiss!2587 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))) (toValue!18 thiss!2587 x!741756)))))

(assert (= (and bs!601286 (not res!1754890)) b!4272363))

(declare-fun bs!601287 () Bool)

(assert (= bs!601287 (and m!4866161 m!4866147)))

(assert (=> bs!601287 m!4866147))

(assert (=> bs!601287 m!4866153))

(assert (=> bs!601287 s!240020))

(declare-fun bs!601288 () Bool)

(declare-fun s!240022 () Bool)

(assert (= bs!601288 (and neg-inst!1745 s!240022)))

(declare-fun res!1754891 () Bool)

(declare-fun e!2652620 () Bool)

(assert (=> bs!601288 (=> res!1754891 e!2652620)))

(assert (=> bs!601288 (= res!1754891 (not (= (list!17190 x!741757) (list!17190 x!741756))))))

(assert (=> bs!601288 (=> true e!2652620)))

(declare-fun b!4272364 () Bool)

(assert (=> b!4272364 (= e!2652620 (= (toValue!18 thiss!2587 x!741757) (toValue!18 thiss!2587 x!741756)))))

(assert (= (and bs!601288 (not res!1754891)) b!4272364))

(declare-fun bs!601289 () Bool)

(assert (= bs!601289 (and m!4866161 m!4866155)))

(assert (=> bs!601289 m!4866155))

(assert (=> bs!601289 m!4866153))

(assert (=> bs!601289 s!240022))

(declare-fun bs!601290 () Bool)

(declare-fun s!240024 () Bool)

(assert (= bs!601290 (and neg-inst!1745 s!240024)))

(declare-fun res!1754892 () Bool)

(declare-fun e!2652621 () Bool)

(assert (=> bs!601290 (=> res!1754892 e!2652621)))

(assert (=> bs!601290 (= res!1754892 (not (= (list!17190 x!741756) (list!17190 x!741756))))))

(assert (=> bs!601290 (=> true e!2652621)))

(declare-fun b!4272365 () Bool)

(assert (=> b!4272365 (= e!2652621 (= (toValue!18 thiss!2587 x!741756) (toValue!18 thiss!2587 x!741756)))))

(assert (= (and bs!601290 (not res!1754892)) b!4272365))

(assert (=> m!4866161 m!4866153))

(assert (=> m!4866161 m!4866153))

(assert (=> m!4866161 s!240024))

(declare-fun bs!601291 () Bool)

(declare-fun s!240026 () Bool)

(assert (= bs!601291 (and neg-inst!1745 s!240026)))

(declare-fun res!1754893 () Bool)

(declare-fun e!2652622 () Bool)

(assert (=> bs!601291 (=> res!1754893 e!2652622)))

(assert (=> bs!601291 (= res!1754893 (not (= (list!17190 x!741756) (list!17190 x!741755))))))

(assert (=> bs!601291 (=> true e!2652622)))

(declare-fun b!4272366 () Bool)

(assert (=> b!4272366 (= e!2652622 (= (toValue!18 thiss!2587 x!741756) (toValue!18 thiss!2587 x!741755)))))

(assert (= (and bs!601291 (not res!1754893)) b!4272366))

(assert (=> bs!601285 m!4866153))

(assert (=> bs!601285 m!4866149))

(assert (=> bs!601285 s!240026))

(declare-fun bs!601292 () Bool)

(declare-fun s!240028 () Bool)

(assert (= bs!601292 (and neg-inst!1745 s!240028)))

(declare-fun res!1754894 () Bool)

(declare-fun e!2652623 () Bool)

(assert (=> bs!601292 (=> res!1754894 e!2652623)))

(assert (=> bs!601292 (= res!1754894 (not (= (list!17190 x!741756) (list!17190 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))))))))

(assert (=> bs!601292 (=> true e!2652623)))

(declare-fun b!4272367 () Bool)

(assert (=> b!4272367 (= e!2652623 (= (toValue!18 thiss!2587 x!741756) (toValue!18 thiss!2587 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755)))))))

(assert (= (and bs!601292 (not res!1754894)) b!4272367))

(assert (=> bs!601287 m!4866153))

(assert (=> bs!601287 m!4866147))

(assert (=> bs!601287 s!240028))

(declare-fun bs!601293 () Bool)

(declare-fun s!240030 () Bool)

(assert (= bs!601293 (and neg-inst!1745 s!240030)))

(declare-fun res!1754895 () Bool)

(declare-fun e!2652624 () Bool)

(assert (=> bs!601293 (=> res!1754895 e!2652624)))

(assert (=> bs!601293 (= res!1754895 (not (= (list!17190 x!741756) (list!17190 x!741757))))))

(assert (=> bs!601293 (=> true e!2652624)))

(declare-fun b!4272368 () Bool)

(assert (=> b!4272368 (= e!2652624 (= (toValue!18 thiss!2587 x!741756) (toValue!18 thiss!2587 x!741757)))))

(assert (= (and bs!601293 (not res!1754895)) b!4272368))

(assert (=> bs!601289 m!4866153))

(assert (=> bs!601289 m!4866155))

(assert (=> bs!601289 s!240030))

(assert (=> m!4866161 s!240024))

(declare-fun bs!601294 () Bool)

(assert (= bs!601294 (and m!4866153 m!4866161)))

(assert (=> bs!601294 s!240024))

(declare-fun bs!601295 () Bool)

(assert (= bs!601295 (and m!4866153 m!4866147)))

(assert (=> bs!601295 s!240020))

(declare-fun bs!601296 () Bool)

(assert (= bs!601296 (and m!4866153 m!4866149 m!4866143)))

(assert (=> bs!601296 s!240018))

(declare-fun bs!601297 () Bool)

(assert (= bs!601297 (and m!4866153 m!4866155)))

(assert (=> bs!601297 s!240022))

(assert (=> m!4866153 s!240024))

(assert (=> bs!601295 s!240028))

(assert (=> bs!601296 s!240026))

(assert (=> bs!601294 s!240024))

(assert (=> bs!601297 s!240030))

(assert (=> m!4866153 s!240024))

(declare-fun bs!601298 () Bool)

(assert (= bs!601298 (and m!4866163 m!4866149 m!4866143)))

(assert (=> bs!601298 s!240008))

(declare-fun bs!601299 () Bool)

(assert (= bs!601299 (and m!4866163 m!4866155)))

(assert (=> bs!601299 s!240012))

(declare-fun bs!601300 () Bool)

(assert (= bs!601300 (and m!4866163 m!4866161 m!4866153)))

(assert (=> bs!601300 s!240030))

(declare-fun bs!601301 () Bool)

(assert (= bs!601301 (and m!4866163 m!4866147)))

(assert (=> bs!601301 s!240010))

(assert (=> m!4866163 s!240012))

(assert (=> bs!601300 s!240022))

(assert (=> bs!601301 s!240016))

(assert (=> bs!601298 s!240014))

(assert (=> m!4866163 s!240012))

(assert (=> bs!601299 s!240012))

(declare-fun bs!601302 () Bool)

(assert (= bs!601302 (and neg-inst!1745 b!4272340)))

(assert (=> bs!601302 (= true inst!1745)))

(declare-fun res!1754878 () Bool)

(declare-fun e!2652604 () Bool)

(assert (=> start!410060 (=> res!1754878 e!2652604)))

(declare-fun lambda!131034 () Int)

(declare-fun Forall!1645 (Int) Bool)

(assert (=> start!410060 (= res!1754878 (not (Forall!1645 lambda!131034)))))

(assert (=> start!410060 (= (Forall!1645 lambda!131034) inst!1744)))

(assert (=> start!410060 (not e!2652604)))

(assert (=> start!410060 true))

(declare-fun lambda!131037 () Int)

(declare-fun Forall2!1230 (Int) Bool)

(assert (=> b!4272340 (= e!2652604 (Forall2!1230 lambda!131037))))

(assert (=> b!4272340 (= (Forall2!1230 lambda!131037) inst!1745)))

(declare-fun lambda!131035 () Int)

(declare-fun lambda!131036 () Int)

(declare-fun semiInverseModEq!3515 (Int Int) Bool)

(assert (=> b!4272340 (= (semiInverseModEq!3515 lambda!131035 lambda!131036) (Forall!1645 lambda!131034))))

(assert (= neg-inst!1744 inst!1744))

(assert (= (and start!410060 (not res!1754878)) b!4272340))

(assert (= neg-inst!1745 inst!1745))

(declare-fun m!4866169 () Bool)

(assert (=> start!410060 m!4866169))

(assert (=> start!410060 m!4866169))

(declare-fun m!4866171 () Bool)

(assert (=> b!4272340 m!4866171))

(assert (=> b!4272340 m!4866171))

(declare-fun m!4866173 () Bool)

(assert (=> b!4272340 m!4866173))

(assert (=> b!4272340 m!4866169))

(push 1)

(assert (not bs!601288))

(assert (not bs!601292))

(assert (not bs!601290))

(assert (not bs!601277))

(assert (not bs!601291))

(assert (not b!4272355))

(assert (not bs!601276))

(assert (not bs!601271))

(assert (not b!4272358))

(assert (not b!4272368))

(assert (not b!4272353))

(assert (not b!4272367))

(assert (not bs!601279))

(assert (not bs!601269))

(assert (not bs!601282))

(assert (not b!4272354))

(assert (not b!4272349))

(assert (not b!4272363))

(assert (not b!4272359))

(assert (not bs!601284))

(assert (not bs!601293))

(assert (not b!4272366))

(assert (not bs!601281))

(assert (not bs!601275))

(assert (not start!410060))

(assert (not bs!601273))

(assert (not b!4272365))

(assert (not b!4272350))

(assert (not b!4272362))

(assert (not b!4272361))

(assert (not b!4272356))

(assert (not b!4272340))

(assert (not b!4272357))

(assert (not bs!601286))

(assert (not b!4272352))

(assert (not bs!601283))

(assert (not b!4272351))

(assert (not b!4272364))

(assert (not b!4272360))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1260326 () Bool)

(declare-fun efficientList!529 (BalanceConc!28110) List!47442)

(assert (=> d!1260326 (= (toValue!18 thiss!2587 x!741755) (StringLiteralValue!24821 (efficientList!529 x!741755)))))

(declare-fun bs!601339 () Bool)

(assert (= bs!601339 d!1260326))

(declare-fun m!4866209 () Bool)

(assert (=> bs!601339 m!4866209))

(assert (=> b!4272354 d!1260326))

(declare-fun d!1260328 () Bool)

(assert (=> d!1260328 (= (toValue!18 thiss!2587 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))) (StringLiteralValue!24821 (efficientList!529 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755)))))))

(declare-fun bs!601340 () Bool)

(assert (= bs!601340 d!1260328))

(assert (=> bs!601340 m!4866145))

(declare-fun m!4866211 () Bool)

(assert (=> bs!601340 m!4866211))

(assert (=> b!4272354 d!1260328))

(declare-fun d!1260330 () Bool)

(declare-fun list!17192 (Conc!14300) List!47442)

(assert (=> d!1260330 (= (list!17190 x!741757) (list!17192 (c!726995 x!741757)))))

(declare-fun bs!601341 () Bool)

(assert (= bs!601341 d!1260330))

(declare-fun m!4866213 () Bool)

(assert (=> bs!601341 m!4866213))

(assert (=> bs!601283 d!1260330))

(declare-fun d!1260332 () Bool)

(assert (=> d!1260332 (= (list!17190 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))) (list!17192 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755)))))))

(declare-fun bs!601342 () Bool)

(assert (= bs!601342 d!1260332))

(declare-fun m!4866215 () Bool)

(assert (=> bs!601342 m!4866215))

(assert (=> bs!601283 d!1260332))

(declare-fun d!1260334 () Bool)

(assert (=> d!1260334 (= (toValue!18 thiss!2587 x!741756) (StringLiteralValue!24821 (efficientList!529 x!741756)))))

(declare-fun bs!601343 () Bool)

(assert (= bs!601343 d!1260334))

(declare-fun m!4866217 () Bool)

(assert (=> bs!601343 m!4866217))

(assert (=> b!4272367 d!1260334))

(assert (=> b!4272367 d!1260328))

(assert (=> bs!601288 d!1260330))

(declare-fun d!1260336 () Bool)

(assert (=> d!1260336 (= (list!17190 x!741756) (list!17192 (c!726995 x!741756)))))

(declare-fun bs!601344 () Bool)

(assert (= bs!601344 d!1260336))

(declare-fun m!4866219 () Bool)

(assert (=> bs!601344 m!4866219))

(assert (=> bs!601288 d!1260336))

(assert (=> b!4272357 d!1260326))

(declare-fun d!1260338 () Bool)

(assert (=> d!1260338 (= (toValue!18 thiss!2587 x!741757) (StringLiteralValue!24821 (efficientList!529 x!741757)))))

(declare-fun bs!601345 () Bool)

(assert (= bs!601345 d!1260338))

(declare-fun m!4866221 () Bool)

(assert (=> bs!601345 m!4866221))

(assert (=> b!4272357 d!1260338))

(declare-fun d!1260340 () Bool)

(assert (=> d!1260340 (= (list!17190 x!741755) (list!17192 (c!726995 x!741755)))))

(declare-fun bs!601346 () Bool)

(assert (= bs!601346 d!1260340))

(declare-fun m!4866223 () Bool)

(assert (=> bs!601346 m!4866223))

(assert (=> bs!601273 d!1260340))

(assert (=> bs!601273 d!1260332))

(assert (=> b!4272360 d!1260338))

(assert (=> b!4272360 d!1260326))

(assert (=> bs!601292 d!1260336))

(assert (=> bs!601292 d!1260332))

(assert (=> bs!601284 d!1260340))

(assert (=> bs!601284 d!1260336))

(assert (=> bs!601290 d!1260336))

(assert (=> b!4272358 d!1260328))

(assert (=> b!4272358 d!1260338))

(assert (=> b!4272368 d!1260334))

(assert (=> b!4272368 d!1260338))

(assert (=> bs!601275 d!1260332))

(assert (=> b!4272361 d!1260338))

(assert (=> b!4272361 d!1260328))

(assert (=> bs!601279 d!1260332))

(assert (=> bs!601279 d!1260330))

(assert (=> bs!601293 d!1260336))

(assert (=> bs!601293 d!1260330))

(assert (=> b!4272364 d!1260338))

(assert (=> b!4272364 d!1260334))

(assert (=> bs!601271 d!1260340))

(assert (=> bs!601291 d!1260336))

(assert (=> bs!601291 d!1260340))

(assert (=> bs!601276 d!1260332))

(assert (=> bs!601276 d!1260340))

(assert (=> bs!601281 d!1260330))

(assert (=> b!4272362 d!1260326))

(assert (=> b!4272362 d!1260334))

(assert (=> b!4272365 d!1260334))

(assert (=> b!4272355 d!1260328))

(assert (=> bs!601277 d!1260340))

(assert (=> bs!601277 d!1260330))

(assert (=> b!4272363 d!1260328))

(assert (=> b!4272363 d!1260334))

(assert (=> bs!601282 d!1260330))

(assert (=> bs!601282 d!1260340))

(assert (=> b!4272353 d!1260326))

(assert (=> b!4272366 d!1260334))

(assert (=> b!4272366 d!1260326))

(assert (=> b!4272356 d!1260328))

(assert (=> b!4272356 d!1260326))

(assert (=> bs!601286 d!1260332))

(assert (=> bs!601286 d!1260336))

(assert (=> b!4272359 d!1260338))

(declare-fun bs!601347 () Bool)

(assert (= bs!601347 (and m!4866149 b!4272353)))

(assert (=> bs!601347 m!4866143))

(assert (=> bs!601347 m!4866143))

(declare-fun bs!601348 () Bool)

(assert (= bs!601348 (and m!4866147 m!4866149 m!4866143 b!4272354)))

(assert (=> bs!601348 m!4866143))

(declare-fun m!4866225 () Bool)

(assert (=> bs!601348 m!4866225))

(declare-fun bs!601349 () Bool)

(assert (= bs!601349 (and m!4866147 b!4272355)))

(assert (=> bs!601349 m!4866225))

(assert (=> bs!601349 m!4866225))

(declare-fun bs!601350 () Bool)

(assert (= bs!601350 (and m!4866147 m!4866149 m!4866143 b!4272356)))

(assert (=> bs!601350 m!4866225))

(assert (=> bs!601350 m!4866143))

(declare-fun bs!601351 () Bool)

(assert (= bs!601351 (and m!4866155 m!4866149 m!4866143 b!4272357)))

(assert (=> bs!601351 m!4866143))

(assert (=> bs!601351 m!4866163))

(declare-fun bs!601352 () Bool)

(assert (= bs!601352 (and m!4866155 m!4866147 b!4272358)))

(assert (=> bs!601352 m!4866225))

(assert (=> bs!601352 m!4866163))

(declare-fun bs!601353 () Bool)

(assert (= bs!601353 (and m!4866155 b!4272359)))

(assert (=> bs!601353 m!4866163))

(assert (=> bs!601353 m!4866163))

(declare-fun bs!601354 () Bool)

(assert (= bs!601354 (and m!4866155 m!4866149 m!4866143 b!4272360)))

(assert (=> bs!601354 m!4866163))

(assert (=> bs!601354 m!4866143))

(declare-fun bs!601355 () Bool)

(assert (= bs!601355 (and m!4866155 m!4866147 b!4272361)))

(assert (=> bs!601355 m!4866163))

(assert (=> bs!601355 m!4866225))

(declare-fun bs!601356 () Bool)

(assert (= bs!601356 (and m!4866161 m!4866149 m!4866143 b!4272362)))

(assert (=> bs!601356 m!4866143))

(assert (=> bs!601356 m!4866161))

(declare-fun bs!601357 () Bool)

(assert (= bs!601357 (and m!4866161 m!4866147 b!4272363)))

(assert (=> bs!601357 m!4866225))

(assert (=> bs!601357 m!4866161))

(declare-fun bs!601358 () Bool)

(assert (= bs!601358 (and m!4866161 m!4866155 b!4272364)))

(assert (=> bs!601358 m!4866163))

(assert (=> bs!601358 m!4866161))

(declare-fun bs!601359 () Bool)

(assert (= bs!601359 (and m!4866161 b!4272365)))

(assert (=> bs!601359 m!4866161))

(assert (=> bs!601359 m!4866161))

(declare-fun bs!601360 () Bool)

(assert (= bs!601360 (and m!4866161 m!4866149 m!4866143 b!4272366)))

(assert (=> bs!601360 m!4866161))

(assert (=> bs!601360 m!4866143))

(declare-fun bs!601361 () Bool)

(assert (= bs!601361 (and m!4866161 m!4866147 b!4272367)))

(assert (=> bs!601361 m!4866161))

(assert (=> bs!601361 m!4866225))

(declare-fun bs!601362 () Bool)

(assert (= bs!601362 (and m!4866161 m!4866155 b!4272368)))

(assert (=> bs!601362 m!4866161))

(assert (=> bs!601362 m!4866163))

(push 1)

(assert (not b!4272349))

(assert (not d!1260336))

(assert (not d!1260326))

(assert (not start!410060))

(assert (not b!4272350))

(assert (not d!1260328))

(assert (not d!1260332))

(assert (not bs!601269))

(assert (not d!1260340))

(assert (not d!1260330))

(assert (not d!1260338))

(assert (not b!4272340))

(assert (not d!1260334))

(assert (not b!4272352))

(assert (not b!4272351))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4272422 () Bool)

(declare-fun e!2652666 () List!47442)

(assert (=> b!4272422 (= e!2652666 Nil!47318)))

(declare-fun b!4272425 () Bool)

(declare-fun e!2652667 () List!47442)

(declare-fun ++!12079 (List!47442 List!47442) List!47442)

(assert (=> b!4272425 (= e!2652667 (++!12079 (list!17192 (left!35191 (c!726995 x!741756))) (list!17192 (right!35521 (c!726995 x!741756)))))))

(declare-fun d!1260358 () Bool)

(declare-fun c!727001 () Bool)

(assert (=> d!1260358 (= c!727001 (is-Empty!14300 (c!726995 x!741756)))))

(assert (=> d!1260358 (= (list!17192 (c!726995 x!741756)) e!2652666)))

(declare-fun b!4272423 () Bool)

(assert (=> b!4272423 (= e!2652666 e!2652667)))

(declare-fun c!727002 () Bool)

(assert (=> b!4272423 (= c!727002 (is-Leaf!22106 (c!726995 x!741756)))))

(declare-fun b!4272424 () Bool)

(declare-fun list!17194 (IArray!28605) List!47442)

(assert (=> b!4272424 (= e!2652667 (list!17194 (xs!17606 (c!726995 x!741756))))))

(assert (= (and d!1260358 c!727001) b!4272422))

(assert (= (and d!1260358 (not c!727001)) b!4272423))

(assert (= (and b!4272423 c!727002) b!4272424))

(assert (= (and b!4272423 (not c!727002)) b!4272425))

(declare-fun m!4866245 () Bool)

(assert (=> b!4272425 m!4866245))

(declare-fun m!4866247 () Bool)

(assert (=> b!4272425 m!4866247))

(assert (=> b!4272425 m!4866245))

(assert (=> b!4272425 m!4866247))

(declare-fun m!4866249 () Bool)

(assert (=> b!4272425 m!4866249))

(declare-fun m!4866251 () Bool)

(assert (=> b!4272424 m!4866251))

(assert (=> d!1260336 d!1260358))

(declare-fun d!1260360 () Bool)

(declare-fun lt!1513045 () List!47442)

(assert (=> d!1260360 (= lt!1513045 (list!17190 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))))))

(declare-fun efficientList!531 (Conc!14300 List!47442) List!47442)

(declare-fun efficientList$default$2!184 (Conc!14300) List!47442)

(assert (=> d!1260360 (= lt!1513045 (efficientList!531 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))) (efficientList$default$2!184 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))))))))

(assert (=> d!1260360 (= (efficientList!529 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))) lt!1513045)))

(declare-fun bs!601387 () Bool)

(assert (= bs!601387 d!1260360))

(assert (=> bs!601387 m!4866145))

(assert (=> bs!601387 m!4866147))

(declare-fun m!4866253 () Bool)

(assert (=> bs!601387 m!4866253))

(assert (=> bs!601387 m!4866253))

(declare-fun m!4866255 () Bool)

(assert (=> bs!601387 m!4866255))

(assert (=> d!1260328 d!1260360))

(declare-fun d!1260362 () Bool)

(declare-fun lt!1513046 () List!47442)

(assert (=> d!1260362 (= lt!1513046 (list!17190 x!741757))))

(assert (=> d!1260362 (= lt!1513046 (efficientList!531 (c!726995 x!741757) (efficientList$default$2!184 (c!726995 x!741757))))))

(assert (=> d!1260362 (= (efficientList!529 x!741757) lt!1513046)))

(declare-fun bs!601388 () Bool)

(assert (= bs!601388 d!1260362))

(assert (=> bs!601388 m!4866155))

(declare-fun m!4866257 () Bool)

(assert (=> bs!601388 m!4866257))

(assert (=> bs!601388 m!4866257))

(declare-fun m!4866259 () Bool)

(assert (=> bs!601388 m!4866259))

(assert (=> d!1260338 d!1260362))

(declare-fun b!4272426 () Bool)

(declare-fun e!2652668 () List!47442)

(assert (=> b!4272426 (= e!2652668 Nil!47318)))

(declare-fun b!4272429 () Bool)

(declare-fun e!2652669 () List!47442)

(assert (=> b!4272429 (= e!2652669 (++!12079 (list!17192 (left!35191 (c!726995 x!741757))) (list!17192 (right!35521 (c!726995 x!741757)))))))

(declare-fun d!1260364 () Bool)

(declare-fun c!727003 () Bool)

(assert (=> d!1260364 (= c!727003 (is-Empty!14300 (c!726995 x!741757)))))

(assert (=> d!1260364 (= (list!17192 (c!726995 x!741757)) e!2652668)))

(declare-fun b!4272427 () Bool)

(assert (=> b!4272427 (= e!2652668 e!2652669)))

(declare-fun c!727004 () Bool)

(assert (=> b!4272427 (= c!727004 (is-Leaf!22106 (c!726995 x!741757)))))

(declare-fun b!4272428 () Bool)

(assert (=> b!4272428 (= e!2652669 (list!17194 (xs!17606 (c!726995 x!741757))))))

(assert (= (and d!1260364 c!727003) b!4272426))

(assert (= (and d!1260364 (not c!727003)) b!4272427))

(assert (= (and b!4272427 c!727004) b!4272428))

(assert (= (and b!4272427 (not c!727004)) b!4272429))

(declare-fun m!4866261 () Bool)

(assert (=> b!4272429 m!4866261))

(declare-fun m!4866263 () Bool)

(assert (=> b!4272429 m!4866263))

(assert (=> b!4272429 m!4866261))

(assert (=> b!4272429 m!4866263))

(declare-fun m!4866265 () Bool)

(assert (=> b!4272429 m!4866265))

(declare-fun m!4866267 () Bool)

(assert (=> b!4272428 m!4866267))

(assert (=> d!1260330 d!1260364))

(declare-fun b!4272430 () Bool)

(declare-fun e!2652670 () List!47442)

(assert (=> b!4272430 (= e!2652670 Nil!47318)))

(declare-fun b!4272433 () Bool)

(declare-fun e!2652671 () List!47442)

(assert (=> b!4272433 (= e!2652671 (++!12079 (list!17192 (left!35191 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))))) (list!17192 (right!35521 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755)))))))))

(declare-fun d!1260366 () Bool)

(declare-fun c!727005 () Bool)

(assert (=> d!1260366 (= c!727005 (is-Empty!14300 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755)))))))

(assert (=> d!1260366 (= (list!17192 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755)))) e!2652670)))

(declare-fun b!4272431 () Bool)

(assert (=> b!4272431 (= e!2652670 e!2652671)))

(declare-fun c!727006 () Bool)

(assert (=> b!4272431 (= c!727006 (is-Leaf!22106 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755)))))))

(declare-fun b!4272432 () Bool)

(assert (=> b!4272432 (= e!2652671 (list!17194 (xs!17606 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))))))))

(assert (= (and d!1260366 c!727005) b!4272430))

(assert (= (and d!1260366 (not c!727005)) b!4272431))

(assert (= (and b!4272431 c!727006) b!4272432))

(assert (= (and b!4272431 (not c!727006)) b!4272433))

(declare-fun m!4866269 () Bool)

(assert (=> b!4272433 m!4866269))

(declare-fun m!4866271 () Bool)

(assert (=> b!4272433 m!4866271))

(assert (=> b!4272433 m!4866269))

(assert (=> b!4272433 m!4866271))

(declare-fun m!4866273 () Bool)

(assert (=> b!4272433 m!4866273))

(declare-fun m!4866275 () Bool)

(assert (=> b!4272432 m!4866275))

(assert (=> d!1260332 d!1260366))

(declare-fun d!1260368 () Bool)

(declare-fun lt!1513047 () List!47442)

(assert (=> d!1260368 (= lt!1513047 (list!17190 x!741755))))

(assert (=> d!1260368 (= lt!1513047 (efficientList!531 (c!726995 x!741755) (efficientList$default$2!184 (c!726995 x!741755))))))

(assert (=> d!1260368 (= (efficientList!529 x!741755) lt!1513047)))

(declare-fun bs!601389 () Bool)

(assert (= bs!601389 d!1260368))

(assert (=> bs!601389 m!4866149))

(declare-fun m!4866277 () Bool)

(assert (=> bs!601389 m!4866277))

(assert (=> bs!601389 m!4866277))

(declare-fun m!4866279 () Bool)

(assert (=> bs!601389 m!4866279))

(assert (=> d!1260326 d!1260368))

(declare-fun b!4272434 () Bool)

(declare-fun e!2652672 () List!47442)

(assert (=> b!4272434 (= e!2652672 Nil!47318)))

(declare-fun b!4272437 () Bool)

(declare-fun e!2652673 () List!47442)

(assert (=> b!4272437 (= e!2652673 (++!12079 (list!17192 (left!35191 (c!726995 x!741755))) (list!17192 (right!35521 (c!726995 x!741755)))))))

(declare-fun d!1260370 () Bool)

(declare-fun c!727007 () Bool)

(assert (=> d!1260370 (= c!727007 (is-Empty!14300 (c!726995 x!741755)))))

(assert (=> d!1260370 (= (list!17192 (c!726995 x!741755)) e!2652672)))

(declare-fun b!4272435 () Bool)

(assert (=> b!4272435 (= e!2652672 e!2652673)))

(declare-fun c!727008 () Bool)

(assert (=> b!4272435 (= c!727008 (is-Leaf!22106 (c!726995 x!741755)))))

(declare-fun b!4272436 () Bool)

(assert (=> b!4272436 (= e!2652673 (list!17194 (xs!17606 (c!726995 x!741755))))))

(assert (= (and d!1260370 c!727007) b!4272434))

(assert (= (and d!1260370 (not c!727007)) b!4272435))

(assert (= (and b!4272435 c!727008) b!4272436))

(assert (= (and b!4272435 (not c!727008)) b!4272437))

(declare-fun m!4866281 () Bool)

(assert (=> b!4272437 m!4866281))

(declare-fun m!4866283 () Bool)

(assert (=> b!4272437 m!4866283))

(assert (=> b!4272437 m!4866281))

(assert (=> b!4272437 m!4866283))

(declare-fun m!4866285 () Bool)

(assert (=> b!4272437 m!4866285))

(declare-fun m!4866287 () Bool)

(assert (=> b!4272436 m!4866287))

(assert (=> d!1260340 d!1260370))

(declare-fun d!1260372 () Bool)

(declare-fun lt!1513048 () List!47442)

(assert (=> d!1260372 (= lt!1513048 (list!17190 x!741756))))

(assert (=> d!1260372 (= lt!1513048 (efficientList!531 (c!726995 x!741756) (efficientList$default$2!184 (c!726995 x!741756))))))

(assert (=> d!1260372 (= (efficientList!529 x!741756) lt!1513048)))

(declare-fun bs!601390 () Bool)

(assert (= bs!601390 d!1260372))

(assert (=> bs!601390 m!4866153))

(declare-fun m!4866289 () Bool)

(assert (=> bs!601390 m!4866289))

(assert (=> bs!601390 m!4866289))

(declare-fun m!4866291 () Bool)

(assert (=> bs!601390 m!4866291))

(assert (=> d!1260334 d!1260372))

(push 1)

(assert (not d!1260372))

(assert (not b!4272349))

(assert (not b!4272437))

(assert (not b!4272433))

(assert (not d!1260368))

(assert (not d!1260362))

(assert (not start!410060))

(assert (not d!1260360))

(assert (not b!4272428))

(assert (not b!4272340))

(assert (not b!4272425))

(assert (not b!4272429))

(assert (not b!4272436))

(assert (not b!4272350))

(assert (not b!4272424))

(assert (not b!4272352))

(assert (not b!4272351))

(assert (not b!4272432))

(assert (not bs!601269))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!1260368 d!1260340))

(declare-fun b!4272450 () Bool)

(declare-fun e!2652681 () List!47442)

(declare-fun efficientList!532 (IArray!28605) List!47442)

(assert (=> b!4272450 (= e!2652681 (efficientList!532 (xs!17606 (c!726995 x!741755))))))

(declare-fun b!4272451 () Bool)

(declare-fun e!2652682 () List!47442)

(declare-fun e!2652680 () List!47442)

(assert (=> b!4272451 (= e!2652682 e!2652680)))

(declare-fun c!727017 () Bool)

(assert (=> b!4272451 (= c!727017 (is-Leaf!22106 (c!726995 x!741755)))))

(declare-fun b!4272452 () Bool)

(declare-fun lt!1513063 () List!47442)

(assert (=> b!4272452 (= e!2652681 lt!1513063)))

(declare-fun d!1260374 () Bool)

(declare-fun lt!1513059 () List!47442)

(assert (=> d!1260374 (= lt!1513059 (++!12079 (list!17192 (c!726995 x!741755)) (efficientList$default$2!184 (c!726995 x!741755))))))

(assert (=> d!1260374 (= lt!1513059 e!2652682)))

(declare-fun c!727016 () Bool)

(assert (=> d!1260374 (= c!727016 (is-Empty!14300 (c!726995 x!741755)))))

(assert (=> d!1260374 (= (efficientList!531 (c!726995 x!741755) (efficientList$default$2!184 (c!726995 x!741755))) lt!1513059)))

(declare-fun b!4272453 () Bool)

(declare-fun call!294185 () List!47442)

(assert (=> b!4272453 (= e!2652680 call!294185)))

(declare-fun b!4272454 () Bool)

(declare-datatypes ((Unit!66251 0))(
  ( (Unit!66252) )
))
(declare-fun lt!1513062 () Unit!66251)

(declare-fun lt!1513061 () Unit!66251)

(assert (=> b!4272454 (= lt!1513062 lt!1513061)))

(declare-fun lt!1513060 () List!47442)

(assert (=> b!4272454 (= (++!12079 call!294185 (efficientList$default$2!184 (c!726995 x!741755))) (++!12079 lt!1513063 (++!12079 lt!1513060 (efficientList$default$2!184 (c!726995 x!741755)))))))

(declare-fun lemmaConcatAssociativity!2717 (List!47442 List!47442 List!47442) Unit!66251)

(assert (=> b!4272454 (= lt!1513061 (lemmaConcatAssociativity!2717 lt!1513063 lt!1513060 (efficientList$default$2!184 (c!726995 x!741755))))))

(assert (=> b!4272454 (= lt!1513060 (list!17192 (right!35521 (c!726995 x!741755))))))

(assert (=> b!4272454 (= lt!1513063 (list!17192 (left!35191 (c!726995 x!741755))))))

(assert (=> b!4272454 (= e!2652680 (efficientList!531 (left!35191 (c!726995 x!741755)) (efficientList!531 (right!35521 (c!726995 x!741755)) (efficientList$default$2!184 (c!726995 x!741755)))))))

(declare-fun b!4272455 () Bool)

(assert (=> b!4272455 (= e!2652682 (efficientList$default$2!184 (c!726995 x!741755)))))

(declare-fun bm!294180 () Bool)

(declare-fun c!727015 () Bool)

(assert (=> bm!294180 (= c!727015 c!727017)))

(assert (=> bm!294180 (= call!294185 (++!12079 e!2652681 (ite c!727017 (efficientList$default$2!184 (c!726995 x!741755)) lt!1513060)))))

(assert (= (and d!1260374 c!727016) b!4272455))

(assert (= (and d!1260374 (not c!727016)) b!4272451))

(assert (= (and b!4272451 c!727017) b!4272453))

(assert (= (and b!4272451 (not c!727017)) b!4272454))

(assert (= (or b!4272453 b!4272454) bm!294180))

(assert (= (and bm!294180 c!727015) b!4272450))

(assert (= (and bm!294180 (not c!727015)) b!4272452))

(declare-fun m!4866293 () Bool)

(assert (=> b!4272450 m!4866293))

(assert (=> d!1260374 m!4866223))

(assert (=> d!1260374 m!4866223))

(assert (=> d!1260374 m!4866277))

(declare-fun m!4866295 () Bool)

(assert (=> d!1260374 m!4866295))

(declare-fun m!4866297 () Bool)

(assert (=> b!4272454 m!4866297))

(declare-fun m!4866299 () Bool)

(assert (=> b!4272454 m!4866299))

(assert (=> b!4272454 m!4866281))

(assert (=> b!4272454 m!4866277))

(assert (=> b!4272454 m!4866297))

(declare-fun m!4866301 () Bool)

(assert (=> b!4272454 m!4866301))

(declare-fun m!4866303 () Bool)

(assert (=> b!4272454 m!4866303))

(assert (=> b!4272454 m!4866283))

(assert (=> b!4272454 m!4866277))

(assert (=> b!4272454 m!4866301))

(assert (=> b!4272454 m!4866277))

(declare-fun m!4866305 () Bool)

(assert (=> b!4272454 m!4866305))

(assert (=> b!4272454 m!4866277))

(declare-fun m!4866307 () Bool)

(assert (=> b!4272454 m!4866307))

(declare-fun m!4866309 () Bool)

(assert (=> bm!294180 m!4866309))

(assert (=> d!1260368 d!1260374))

(declare-fun d!1260378 () Bool)

(assert (=> d!1260378 (= (efficientList$default$2!184 (c!726995 x!741755)) Nil!47318)))

(assert (=> d!1260368 d!1260378))

(assert (=> d!1260362 d!1260330))

(declare-fun b!4272456 () Bool)

(declare-fun e!2652684 () List!47442)

(assert (=> b!4272456 (= e!2652684 (efficientList!532 (xs!17606 (c!726995 x!741757))))))

(declare-fun b!4272457 () Bool)

(declare-fun e!2652685 () List!47442)

(declare-fun e!2652683 () List!47442)

(assert (=> b!4272457 (= e!2652685 e!2652683)))

(declare-fun c!727020 () Bool)

(assert (=> b!4272457 (= c!727020 (is-Leaf!22106 (c!726995 x!741757)))))

(declare-fun b!4272458 () Bool)

(declare-fun lt!1513068 () List!47442)

(assert (=> b!4272458 (= e!2652684 lt!1513068)))

(declare-fun d!1260380 () Bool)

(declare-fun lt!1513064 () List!47442)

(assert (=> d!1260380 (= lt!1513064 (++!12079 (list!17192 (c!726995 x!741757)) (efficientList$default$2!184 (c!726995 x!741757))))))

(assert (=> d!1260380 (= lt!1513064 e!2652685)))

(declare-fun c!727019 () Bool)

(assert (=> d!1260380 (= c!727019 (is-Empty!14300 (c!726995 x!741757)))))

(assert (=> d!1260380 (= (efficientList!531 (c!726995 x!741757) (efficientList$default$2!184 (c!726995 x!741757))) lt!1513064)))

(declare-fun b!4272459 () Bool)

(declare-fun call!294186 () List!47442)

(assert (=> b!4272459 (= e!2652683 call!294186)))

(declare-fun b!4272460 () Bool)

(declare-fun lt!1513067 () Unit!66251)

(declare-fun lt!1513066 () Unit!66251)

(assert (=> b!4272460 (= lt!1513067 lt!1513066)))

(declare-fun lt!1513065 () List!47442)

(assert (=> b!4272460 (= (++!12079 call!294186 (efficientList$default$2!184 (c!726995 x!741757))) (++!12079 lt!1513068 (++!12079 lt!1513065 (efficientList$default$2!184 (c!726995 x!741757)))))))

(assert (=> b!4272460 (= lt!1513066 (lemmaConcatAssociativity!2717 lt!1513068 lt!1513065 (efficientList$default$2!184 (c!726995 x!741757))))))

(assert (=> b!4272460 (= lt!1513065 (list!17192 (right!35521 (c!726995 x!741757))))))

(assert (=> b!4272460 (= lt!1513068 (list!17192 (left!35191 (c!726995 x!741757))))))

(assert (=> b!4272460 (= e!2652683 (efficientList!531 (left!35191 (c!726995 x!741757)) (efficientList!531 (right!35521 (c!726995 x!741757)) (efficientList$default$2!184 (c!726995 x!741757)))))))

(declare-fun b!4272461 () Bool)

(assert (=> b!4272461 (= e!2652685 (efficientList$default$2!184 (c!726995 x!741757)))))

(declare-fun bm!294181 () Bool)

(declare-fun c!727018 () Bool)

(assert (=> bm!294181 (= c!727018 c!727020)))

(assert (=> bm!294181 (= call!294186 (++!12079 e!2652684 (ite c!727020 (efficientList$default$2!184 (c!726995 x!741757)) lt!1513065)))))

(assert (= (and d!1260380 c!727019) b!4272461))

(assert (= (and d!1260380 (not c!727019)) b!4272457))

(assert (= (and b!4272457 c!727020) b!4272459))

(assert (= (and b!4272457 (not c!727020)) b!4272460))

(assert (= (or b!4272459 b!4272460) bm!294181))

(assert (= (and bm!294181 c!727018) b!4272456))

(assert (= (and bm!294181 (not c!727018)) b!4272458))

(declare-fun m!4866311 () Bool)

(assert (=> b!4272456 m!4866311))

(assert (=> d!1260380 m!4866213))

(assert (=> d!1260380 m!4866213))

(assert (=> d!1260380 m!4866257))

(declare-fun m!4866313 () Bool)

(assert (=> d!1260380 m!4866313))

(declare-fun m!4866315 () Bool)

(assert (=> b!4272460 m!4866315))

(declare-fun m!4866317 () Bool)

(assert (=> b!4272460 m!4866317))

(assert (=> b!4272460 m!4866261))

(assert (=> b!4272460 m!4866257))

(assert (=> b!4272460 m!4866315))

(declare-fun m!4866319 () Bool)

(assert (=> b!4272460 m!4866319))

(declare-fun m!4866321 () Bool)

(assert (=> b!4272460 m!4866321))

(assert (=> b!4272460 m!4866263))

(assert (=> b!4272460 m!4866257))

(assert (=> b!4272460 m!4866319))

(assert (=> b!4272460 m!4866257))

(declare-fun m!4866323 () Bool)

(assert (=> b!4272460 m!4866323))

(assert (=> b!4272460 m!4866257))

(declare-fun m!4866325 () Bool)

(assert (=> b!4272460 m!4866325))

(declare-fun m!4866327 () Bool)

(assert (=> bm!294181 m!4866327))

(assert (=> d!1260362 d!1260380))

(declare-fun d!1260382 () Bool)

(assert (=> d!1260382 (= (efficientList$default$2!184 (c!726995 x!741757)) Nil!47318)))

(assert (=> d!1260362 d!1260382))

(assert (=> d!1260372 d!1260336))

(declare-fun b!4272462 () Bool)

(declare-fun e!2652687 () List!47442)

(assert (=> b!4272462 (= e!2652687 (efficientList!532 (xs!17606 (c!726995 x!741756))))))

(declare-fun b!4272463 () Bool)

(declare-fun e!2652688 () List!47442)

(declare-fun e!2652686 () List!47442)

(assert (=> b!4272463 (= e!2652688 e!2652686)))

(declare-fun c!727023 () Bool)

(assert (=> b!4272463 (= c!727023 (is-Leaf!22106 (c!726995 x!741756)))))

(declare-fun b!4272464 () Bool)

(declare-fun lt!1513075 () List!47442)

(assert (=> b!4272464 (= e!2652687 lt!1513075)))

(declare-fun d!1260384 () Bool)

(declare-fun lt!1513071 () List!47442)

(assert (=> d!1260384 (= lt!1513071 (++!12079 (list!17192 (c!726995 x!741756)) (efficientList$default$2!184 (c!726995 x!741756))))))

(assert (=> d!1260384 (= lt!1513071 e!2652688)))

(declare-fun c!727022 () Bool)

(assert (=> d!1260384 (= c!727022 (is-Empty!14300 (c!726995 x!741756)))))

(assert (=> d!1260384 (= (efficientList!531 (c!726995 x!741756) (efficientList$default$2!184 (c!726995 x!741756))) lt!1513071)))

(declare-fun b!4272465 () Bool)

(declare-fun call!294187 () List!47442)

(assert (=> b!4272465 (= e!2652686 call!294187)))

(declare-fun b!4272466 () Bool)

(declare-fun lt!1513074 () Unit!66251)

(declare-fun lt!1513073 () Unit!66251)

(assert (=> b!4272466 (= lt!1513074 lt!1513073)))

(declare-fun lt!1513072 () List!47442)

(assert (=> b!4272466 (= (++!12079 call!294187 (efficientList$default$2!184 (c!726995 x!741756))) (++!12079 lt!1513075 (++!12079 lt!1513072 (efficientList$default$2!184 (c!726995 x!741756)))))))

(assert (=> b!4272466 (= lt!1513073 (lemmaConcatAssociativity!2717 lt!1513075 lt!1513072 (efficientList$default$2!184 (c!726995 x!741756))))))

(assert (=> b!4272466 (= lt!1513072 (list!17192 (right!35521 (c!726995 x!741756))))))

(assert (=> b!4272466 (= lt!1513075 (list!17192 (left!35191 (c!726995 x!741756))))))

(assert (=> b!4272466 (= e!2652686 (efficientList!531 (left!35191 (c!726995 x!741756)) (efficientList!531 (right!35521 (c!726995 x!741756)) (efficientList$default$2!184 (c!726995 x!741756)))))))

(declare-fun b!4272467 () Bool)

(assert (=> b!4272467 (= e!2652688 (efficientList$default$2!184 (c!726995 x!741756)))))

(declare-fun bm!294182 () Bool)

(declare-fun c!727021 () Bool)

(assert (=> bm!294182 (= c!727021 c!727023)))

(assert (=> bm!294182 (= call!294187 (++!12079 e!2652687 (ite c!727023 (efficientList$default$2!184 (c!726995 x!741756)) lt!1513072)))))

(assert (= (and d!1260384 c!727022) b!4272467))

(assert (= (and d!1260384 (not c!727022)) b!4272463))

(assert (= (and b!4272463 c!727023) b!4272465))

(assert (= (and b!4272463 (not c!727023)) b!4272466))

(assert (= (or b!4272465 b!4272466) bm!294182))

(assert (= (and bm!294182 c!727021) b!4272462))

(assert (= (and bm!294182 (not c!727021)) b!4272464))

(declare-fun m!4866329 () Bool)

(assert (=> b!4272462 m!4866329))

(assert (=> d!1260384 m!4866219))

(assert (=> d!1260384 m!4866219))

(assert (=> d!1260384 m!4866289))

(declare-fun m!4866331 () Bool)

(assert (=> d!1260384 m!4866331))

(declare-fun m!4866333 () Bool)

(assert (=> b!4272466 m!4866333))

(declare-fun m!4866335 () Bool)

(assert (=> b!4272466 m!4866335))

(assert (=> b!4272466 m!4866245))

(assert (=> b!4272466 m!4866289))

(assert (=> b!4272466 m!4866333))

(declare-fun m!4866337 () Bool)

(assert (=> b!4272466 m!4866337))

(declare-fun m!4866339 () Bool)

(assert (=> b!4272466 m!4866339))

(assert (=> b!4272466 m!4866247))

(assert (=> b!4272466 m!4866289))

(assert (=> b!4272466 m!4866337))

(assert (=> b!4272466 m!4866289))

(declare-fun m!4866341 () Bool)

(assert (=> b!4272466 m!4866341))

(assert (=> b!4272466 m!4866289))

(declare-fun m!4866343 () Bool)

(assert (=> b!4272466 m!4866343))

(declare-fun m!4866345 () Bool)

(assert (=> bm!294182 m!4866345))

(assert (=> d!1260372 d!1260384))

(declare-fun d!1260386 () Bool)

(assert (=> d!1260386 (= (efficientList$default$2!184 (c!726995 x!741756)) Nil!47318)))

(assert (=> d!1260372 d!1260386))

(declare-fun d!1260388 () Bool)

(declare-fun c!727026 () Bool)

(assert (=> d!1260388 (= c!727026 (is-Node!14300 (c!726995 x!741757)))))

(declare-fun e!2652693 () Bool)

(assert (=> d!1260388 (= (inv!62493 (c!726995 x!741757)) e!2652693)))

(declare-fun b!4272474 () Bool)

(declare-fun inv!62497 (Conc!14300) Bool)

(assert (=> b!4272474 (= e!2652693 (inv!62497 (c!726995 x!741757)))))

(declare-fun b!4272475 () Bool)

(declare-fun e!2652694 () Bool)

(assert (=> b!4272475 (= e!2652693 e!2652694)))

(declare-fun res!1754936 () Bool)

(assert (=> b!4272475 (= res!1754936 (not (is-Leaf!22106 (c!726995 x!741757))))))

(assert (=> b!4272475 (=> res!1754936 e!2652694)))

(declare-fun b!4272476 () Bool)

(declare-fun inv!62498 (Conc!14300) Bool)

(assert (=> b!4272476 (= e!2652694 (inv!62498 (c!726995 x!741757)))))

(assert (= (and d!1260388 c!727026) b!4272474))

(assert (= (and d!1260388 (not c!727026)) b!4272475))

(assert (= (and b!4272475 (not res!1754936)) b!4272476))

(declare-fun m!4866355 () Bool)

(assert (=> b!4272474 m!4866355))

(declare-fun m!4866357 () Bool)

(assert (=> b!4272476 m!4866357))

(assert (=> b!4272352 d!1260388))

(declare-fun d!1260394 () Bool)

(declare-fun c!727027 () Bool)

(assert (=> d!1260394 (= c!727027 (is-Node!14300 (c!726995 x!741756)))))

(declare-fun e!2652695 () Bool)

(assert (=> d!1260394 (= (inv!62493 (c!726995 x!741756)) e!2652695)))

(declare-fun b!4272477 () Bool)

(assert (=> b!4272477 (= e!2652695 (inv!62497 (c!726995 x!741756)))))

(declare-fun b!4272478 () Bool)

(declare-fun e!2652696 () Bool)

(assert (=> b!4272478 (= e!2652695 e!2652696)))

(declare-fun res!1754937 () Bool)

(assert (=> b!4272478 (= res!1754937 (not (is-Leaf!22106 (c!726995 x!741756))))))

(assert (=> b!4272478 (=> res!1754937 e!2652696)))

(declare-fun b!4272479 () Bool)

(assert (=> b!4272479 (= e!2652696 (inv!62498 (c!726995 x!741756)))))

(assert (= (and d!1260394 c!727027) b!4272477))

(assert (= (and d!1260394 (not c!727027)) b!4272478))

(assert (= (and b!4272478 (not res!1754937)) b!4272479))

(declare-fun m!4866359 () Bool)

(assert (=> b!4272477 m!4866359))

(declare-fun m!4866361 () Bool)

(assert (=> b!4272479 m!4866361))

(assert (=> b!4272351 d!1260394))

(assert (=> b!4272350 d!1260334))

(assert (=> b!4272350 d!1260338))

(assert (=> bs!601269 d!1260332))

(declare-fun d!1260396 () Bool)

(declare-fun c!727033 () Bool)

(assert (=> d!1260396 (= c!727033 (is-StringLiteralValue!24821 (toValue!18 thiss!2587 x!741755)))))

(declare-fun e!2652701 () BalanceConc!28110)

(assert (=> d!1260396 (= (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755)) e!2652701)))

(declare-fun b!4272488 () Bool)

(declare-fun seqFromList!5877 (List!47442) BalanceConc!28110)

(assert (=> b!4272488 (= e!2652701 (seqFromList!5877 (value!249736 (toValue!18 thiss!2587 x!741755))))))

(declare-fun b!4272489 () Bool)

(assert (=> b!4272489 (= e!2652701 (BalanceConc!28111 Empty!14300))))

(assert (= (and d!1260396 c!727033) b!4272488))

(assert (= (and d!1260396 (not c!727033)) b!4272489))

(declare-fun m!4866363 () Bool)

(assert (=> b!4272488 m!4866363))

(assert (=> bs!601269 d!1260396))

(assert (=> bs!601269 d!1260326))

(assert (=> bs!601269 d!1260340))

(declare-fun d!1260398 () Bool)

(declare-fun c!727036 () Bool)

(assert (=> d!1260398 (= c!727036 (is-Node!14300 (c!726995 x!741755)))))

(declare-fun e!2652704 () Bool)

(assert (=> d!1260398 (= (inv!62493 (c!726995 x!741755)) e!2652704)))

(declare-fun b!4272494 () Bool)

(assert (=> b!4272494 (= e!2652704 (inv!62497 (c!726995 x!741755)))))

(declare-fun b!4272495 () Bool)

(declare-fun e!2652705 () Bool)

(assert (=> b!4272495 (= e!2652704 e!2652705)))

(declare-fun res!1754938 () Bool)

(assert (=> b!4272495 (= res!1754938 (not (is-Leaf!22106 (c!726995 x!741755))))))

(assert (=> b!4272495 (=> res!1754938 e!2652705)))

(declare-fun b!4272496 () Bool)

(assert (=> b!4272496 (= e!2652705 (inv!62498 (c!726995 x!741755)))))

(assert (= (and d!1260398 c!727036) b!4272494))

(assert (= (and d!1260398 (not c!727036)) b!4272495))

(assert (= (and b!4272495 (not res!1754938)) b!4272496))

(declare-fun m!4866365 () Bool)

(assert (=> b!4272494 m!4866365))

(declare-fun m!4866367 () Bool)

(assert (=> b!4272496 m!4866367))

(assert (=> b!4272349 d!1260398))

(assert (=> d!1260360 d!1260332))

(declare-fun b!4272497 () Bool)

(declare-fun e!2652707 () List!47442)

(assert (=> b!4272497 (= e!2652707 (efficientList!532 (xs!17606 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))))))))

(declare-fun b!4272498 () Bool)

(declare-fun e!2652708 () List!47442)

(declare-fun e!2652706 () List!47442)

(assert (=> b!4272498 (= e!2652708 e!2652706)))

(declare-fun c!727039 () Bool)

(assert (=> b!4272498 (= c!727039 (is-Leaf!22106 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755)))))))

(declare-fun b!4272499 () Bool)

(declare-fun lt!1513082 () List!47442)

(assert (=> b!4272499 (= e!2652707 lt!1513082)))

(declare-fun d!1260400 () Bool)

(declare-fun lt!1513078 () List!47442)

(assert (=> d!1260400 (= lt!1513078 (++!12079 (list!17192 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755)))) (efficientList$default$2!184 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))))))))

(assert (=> d!1260400 (= lt!1513078 e!2652708)))

(declare-fun c!727038 () Bool)

(assert (=> d!1260400 (= c!727038 (is-Empty!14300 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755)))))))

(assert (=> d!1260400 (= (efficientList!531 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))) (efficientList$default$2!184 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))))) lt!1513078)))

(declare-fun b!4272500 () Bool)

(declare-fun call!294188 () List!47442)

(assert (=> b!4272500 (= e!2652706 call!294188)))

(declare-fun b!4272501 () Bool)

(declare-fun lt!1513081 () Unit!66251)

(declare-fun lt!1513080 () Unit!66251)

(assert (=> b!4272501 (= lt!1513081 lt!1513080)))

(declare-fun lt!1513079 () List!47442)

(assert (=> b!4272501 (= (++!12079 call!294188 (efficientList$default$2!184 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))))) (++!12079 lt!1513082 (++!12079 lt!1513079 (efficientList$default$2!184 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755)))))))))

(assert (=> b!4272501 (= lt!1513080 (lemmaConcatAssociativity!2717 lt!1513082 lt!1513079 (efficientList$default$2!184 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))))))))

(assert (=> b!4272501 (= lt!1513079 (list!17192 (right!35521 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))))))))

(assert (=> b!4272501 (= lt!1513082 (list!17192 (left!35191 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755))))))))

(assert (=> b!4272501 (= e!2652706 (efficientList!531 (left!35191 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755)))) (efficientList!531 (right!35521 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755)))) (efficientList$default$2!184 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755)))))))))

(declare-fun b!4272502 () Bool)

(assert (=> b!4272502 (= e!2652708 (efficientList$default$2!184 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755)))))))

(declare-fun bm!294183 () Bool)

(declare-fun c!727037 () Bool)

(assert (=> bm!294183 (= c!727037 c!727039)))

(assert (=> bm!294183 (= call!294188 (++!12079 e!2652707 (ite c!727039 (efficientList$default$2!184 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755)))) lt!1513079)))))

(assert (= (and d!1260400 c!727038) b!4272502))

(assert (= (and d!1260400 (not c!727038)) b!4272498))

(assert (= (and b!4272498 c!727039) b!4272500))

(assert (= (and b!4272498 (not c!727039)) b!4272501))

(assert (= (or b!4272500 b!4272501) bm!294183))

(assert (= (and bm!294183 c!727037) b!4272497))

(assert (= (and bm!294183 (not c!727037)) b!4272499))

(declare-fun m!4866369 () Bool)

(assert (=> b!4272497 m!4866369))

(assert (=> d!1260400 m!4866215))

(assert (=> d!1260400 m!4866215))

(assert (=> d!1260400 m!4866253))

(declare-fun m!4866371 () Bool)

(assert (=> d!1260400 m!4866371))

(declare-fun m!4866373 () Bool)

(assert (=> b!4272501 m!4866373))

(declare-fun m!4866375 () Bool)

(assert (=> b!4272501 m!4866375))

(assert (=> b!4272501 m!4866269))

(assert (=> b!4272501 m!4866253))

(assert (=> b!4272501 m!4866373))

(declare-fun m!4866377 () Bool)

(assert (=> b!4272501 m!4866377))

(declare-fun m!4866379 () Bool)

(assert (=> b!4272501 m!4866379))

(assert (=> b!4272501 m!4866271))

(assert (=> b!4272501 m!4866253))

(assert (=> b!4272501 m!4866377))

(assert (=> b!4272501 m!4866253))

(declare-fun m!4866381 () Bool)

(assert (=> b!4272501 m!4866381))

(assert (=> b!4272501 m!4866253))

(declare-fun m!4866383 () Bool)

(assert (=> b!4272501 m!4866383))

(declare-fun m!4866385 () Bool)

(assert (=> bm!294183 m!4866385))

(assert (=> d!1260360 d!1260400))

(declare-fun d!1260402 () Bool)

(assert (=> d!1260402 (= (efficientList$default$2!184 (c!726995 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741755)))) Nil!47318)))

(assert (=> d!1260360 d!1260402))

(assert (=> start!410060 d!1260332))

(assert (=> start!410060 d!1260326))

(declare-fun d!1260404 () Bool)

(declare-fun isBalanced!3848 (Conc!14300) Bool)

(assert (=> d!1260404 (= (inv!62494 x!741755) (isBalanced!3848 (c!726995 x!741755)))))

(declare-fun bs!601393 () Bool)

(assert (= bs!601393 d!1260404))

(declare-fun m!4866387 () Bool)

(assert (=> bs!601393 m!4866387))

(assert (=> start!410060 d!1260404))

(declare-fun d!1260406 () Bool)

(declare-fun choose!26052 (Int) Bool)

(assert (=> d!1260406 (= (Forall!1645 lambda!131034) (choose!26052 lambda!131034))))

(declare-fun bs!601394 () Bool)

(assert (= bs!601394 d!1260406))

(declare-fun m!4866389 () Bool)

(assert (=> bs!601394 m!4866389))

(assert (=> start!410060 d!1260406))

(assert (=> start!410060 d!1260340))

(assert (=> start!410060 d!1260396))

(declare-fun d!1260408 () Bool)

(assert (=> d!1260408 (= (inv!62494 x!741757) (isBalanced!3848 (c!726995 x!741757)))))

(declare-fun bs!601395 () Bool)

(assert (= bs!601395 d!1260408))

(declare-fun m!4866391 () Bool)

(assert (=> bs!601395 m!4866391))

(assert (=> b!4272340 d!1260408))

(declare-fun bs!601397 () Bool)

(declare-fun d!1260410 () Bool)

(assert (= bs!601397 (and d!1260410 start!410060)))

(declare-fun lambda!131058 () Int)

(assert (=> bs!601397 (not (= lambda!131058 lambda!131034))))

(assert (=> d!1260410 true))

(declare-fun order!24941 () Int)

(declare-fun order!24939 () Int)

(declare-fun dynLambda!20281 (Int Int) Int)

(declare-fun dynLambda!20282 (Int Int) Int)

(assert (=> d!1260410 (< (dynLambda!20281 order!24939 lambda!131035) (dynLambda!20282 order!24941 lambda!131058))))

(assert (=> d!1260410 true))

(declare-fun order!24943 () Int)

(declare-fun dynLambda!20283 (Int Int) Int)

(assert (=> d!1260410 (< (dynLambda!20283 order!24943 lambda!131036) (dynLambda!20282 order!24941 lambda!131058))))

(assert (=> d!1260410 (= (semiInverseModEq!3515 lambda!131035 lambda!131036) (Forall!1645 lambda!131058))))

(declare-fun bs!601398 () Bool)

(assert (= bs!601398 d!1260410))

(declare-fun m!4866413 () Bool)

(assert (=> bs!601398 m!4866413))

(assert (=> b!4272340 d!1260410))

(declare-fun d!1260418 () Bool)

(declare-fun choose!26053 (Int) Bool)

(assert (=> d!1260418 (= (Forall2!1230 lambda!131037) (choose!26053 lambda!131037))))

(declare-fun bs!601400 () Bool)

(assert (= bs!601400 d!1260418))

(declare-fun m!4866419 () Bool)

(assert (=> bs!601400 m!4866419))

(assert (=> b!4272340 d!1260418))

(declare-fun d!1260422 () Bool)

(assert (=> d!1260422 (= (inv!62494 x!741756) (isBalanced!3848 (c!726995 x!741756)))))

(declare-fun bs!601401 () Bool)

(assert (= bs!601401 d!1260422))

(declare-fun m!4866421 () Bool)

(assert (=> bs!601401 m!4866421))

(assert (=> b!4272340 d!1260422))

(assert (=> b!4272340 d!1260336))

(assert (=> b!4272340 d!1260406))

(assert (=> b!4272340 d!1260330))

(declare-fun b!4272529 () Bool)

(declare-fun tp!1308248 () Bool)

(declare-fun tp!1308247 () Bool)

(declare-fun e!2652721 () Bool)

(assert (=> b!4272529 (= e!2652721 (and (inv!62493 (left!35191 (c!726995 x!741757))) tp!1308247 (inv!62493 (right!35521 (c!726995 x!741757))) tp!1308248))))

(declare-fun b!4272530 () Bool)

(declare-fun inv!62499 (IArray!28605) Bool)

(assert (=> b!4272530 (= e!2652721 (inv!62499 (xs!17606 (c!726995 x!741757))))))

(assert (=> b!4272352 (= tp!1308232 (and (inv!62493 (c!726995 x!741757)) e!2652721))))

(assert (= (and b!4272352 (is-Node!14300 (c!726995 x!741757))) b!4272529))

(assert (= (and b!4272352 (is-Leaf!22106 (c!726995 x!741757))) b!4272530))

(declare-fun m!4866439 () Bool)

(assert (=> b!4272529 m!4866439))

(declare-fun m!4866441 () Bool)

(assert (=> b!4272529 m!4866441))

(declare-fun m!4866443 () Bool)

(assert (=> b!4272530 m!4866443))

(assert (=> b!4272352 m!4866167))

(declare-fun b!4272531 () Bool)

(declare-fun tp!1308250 () Bool)

(declare-fun e!2652723 () Bool)

(declare-fun tp!1308249 () Bool)

(assert (=> b!4272531 (= e!2652723 (and (inv!62493 (left!35191 (c!726995 x!741756))) tp!1308249 (inv!62493 (right!35521 (c!726995 x!741756))) tp!1308250))))

(declare-fun b!4272532 () Bool)

(assert (=> b!4272532 (= e!2652723 (inv!62499 (xs!17606 (c!726995 x!741756))))))

(assert (=> b!4272351 (= tp!1308233 (and (inv!62493 (c!726995 x!741756)) e!2652723))))

(assert (= (and b!4272351 (is-Node!14300 (c!726995 x!741756))) b!4272531))

(assert (= (and b!4272351 (is-Leaf!22106 (c!726995 x!741756))) b!4272532))

(declare-fun m!4866445 () Bool)

(assert (=> b!4272531 m!4866445))

(declare-fun m!4866447 () Bool)

(assert (=> b!4272531 m!4866447))

(declare-fun m!4866449 () Bool)

(assert (=> b!4272532 m!4866449))

(assert (=> b!4272351 m!4866165))

(declare-fun tp!1308251 () Bool)

(declare-fun b!4272533 () Bool)

(declare-fun e!2652725 () Bool)

(declare-fun tp!1308252 () Bool)

(assert (=> b!4272533 (= e!2652725 (and (inv!62493 (left!35191 (c!726995 x!741755))) tp!1308251 (inv!62493 (right!35521 (c!726995 x!741755))) tp!1308252))))

(declare-fun b!4272534 () Bool)

(assert (=> b!4272534 (= e!2652725 (inv!62499 (xs!17606 (c!726995 x!741755))))))

(assert (=> b!4272349 (= tp!1308231 (and (inv!62493 (c!726995 x!741755)) e!2652725))))

(assert (= (and b!4272349 (is-Node!14300 (c!726995 x!741755))) b!4272533))

(assert (= (and b!4272349 (is-Leaf!22106 (c!726995 x!741755))) b!4272534))

(declare-fun m!4866451 () Bool)

(assert (=> b!4272533 m!4866451))

(declare-fun m!4866453 () Bool)

(assert (=> b!4272533 m!4866453))

(declare-fun m!4866455 () Bool)

(assert (=> b!4272534 m!4866455))

(assert (=> b!4272349 m!4866141))

(push 1)

(assert (not b!4272349))

(assert (not b!4272533))

(assert (not bm!294183))

(assert (not b!4272532))

(assert (not b!4272424))

(assert (not b!4272476))

(assert (not d!1260384))

(assert (not d!1260406))

(assert (not b!4272432))

(assert (not b!4272425))

(assert (not b!4272479))

(assert (not d!1260422))

(assert (not b!4272474))

(assert (not b!4272437))

(assert (not b!4272454))

(assert (not b!4272433))

(assert (not d!1260418))

(assert (not b!4272450))

(assert (not b!4272530))

(assert (not b!4272494))

(assert (not bm!294181))

(assert (not b!4272531))

(assert (not b!4272429))

(assert (not b!4272436))

(assert (not b!4272501))

(assert (not bm!294182))

(assert (not b!4272460))

(assert (not b!4272477))

(assert (not bm!294180))

(assert (not b!4272428))

(assert (not d!1260380))

(assert (not d!1260400))

(assert (not b!4272497))

(assert (not b!4272466))

(assert (not d!1260404))

(assert (not b!4272496))

(assert (not b!4272529))

(assert (not b!4272534))

(assert (not d!1260408))

(assert (not b!4272488))

(assert (not d!1260374))

(assert (not b!4272352))

(assert (not b!4272351))

(assert (not b!4272456))

(assert (not b!4272462))

(assert (not d!1260410))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

