; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!408676 () Bool)

(assert start!408676)

(assert (=> start!408676 true))

(declare-fun b!4264777 () Bool)

(declare-fun e!2648111 () Bool)

(declare-datatypes ((List!47392 0))(
  ( (Nil!47268) (Cons!47268 (h!52688 (_ BitVec 16)) (t!353461 List!47392)) )
))
(declare-datatypes ((IArray!28505 0))(
  ( (IArray!28506 (innerList!14310 List!47392)) )
))
(declare-datatypes ((Conc!14250 0))(
  ( (Node!14250 (left!35040 Conc!14250) (right!35370 Conc!14250) (csize!28730 Int) (cheight!14461 Int)) (Leaf!22031 (xs!17556 IArray!28505) (csize!28731 Int)) (Empty!14250) )
))
(declare-datatypes ((BalanceConc!28010 0))(
  ( (BalanceConc!28011 (c!724708 Conc!14250)) )
))
(declare-fun x!738013 () BalanceConc!28010)

(declare-fun tp!1307445 () Bool)

(declare-fun inv!62190 (Conc!14250) Bool)

(assert (=> b!4264777 (= e!2648111 (and (inv!62190 (c!724708 x!738013)) tp!1307445))))

(declare-fun inst!1556 () Bool)

(declare-datatypes ((OperatorValueInjection!28 0))(
  ( (OperatorValueInjection!29) )
))
(declare-fun thiss!2520 () OperatorValueInjection!28)

(declare-fun inv!62191 (BalanceConc!28010) Bool)

(declare-fun list!17073 (BalanceConc!28010) List!47392)

(declare-datatypes ((TokenValue!8223 0))(
  ( (FloatLiteralValue!16446 (text!58006 List!47392)) (TokenValueExt!8222 (__x!28669 Int)) (Broken!41115 (value!248387 List!47392)) (Object!8346) (End!8223) (Def!8223) (Underscore!8223) (Match!8223) (Else!8223) (Error!8223) (Case!8223) (If!8223) (Extends!8223) (Abstract!8223) (Class!8223) (Val!8223) (DelimiterValue!16446 (del!8283 List!47392)) (KeywordValue!8229 (value!248388 List!47392)) (CommentValue!16446 (value!248389 List!47392)) (WhitespaceValue!16446 (value!248390 List!47392)) (IndentationValue!8223 (value!248391 List!47392)) (String!55146) (Int32!8223) (Broken!41116 (value!248392 List!47392)) (Boolean!8224) (Unit!66149) (OperatorValue!8226 (op!8283 List!47392)) (IdentifierValue!16446 (value!248393 List!47392)) (IdentifierValue!16447 (value!248394 List!47392)) (WhitespaceValue!16447 (value!248395 List!47392)) (True!16446) (False!16446) (Broken!41117 (value!248396 List!47392)) (Broken!41118 (value!248397 List!47392)) (True!16447) (RightBrace!8223) (RightBracket!8223) (Colon!8223) (Null!8223) (Comma!8223) (LeftBracket!8223) (False!16447) (LeftBrace!8223) (ImaginaryLiteralValue!8223 (text!58007 List!47392)) (StringLiteralValue!24669 (value!248398 List!47392)) (EOFValue!8223 (value!248399 List!47392)) (IdentValue!8223 (value!248400 List!47392)) (DelimiterValue!16447 (value!248401 List!47392)) (DedentValue!8223 (value!248402 List!47392)) (NewLineValue!8223 (value!248403 List!47392)) (IntegerValue!24669 (value!248404 (_ BitVec 32)) (text!58008 List!47392)) (IntegerValue!24670 (value!248405 Int) (text!58009 List!47392)) (Times!8223) (Or!8223) (Equal!8223) (Minus!8223) (Broken!41119 (value!248406 List!47392)) (And!8223) (Div!8223) (LessEqual!8223) (Mod!8223) (Concat!21121) (Not!8223) (Plus!8223) (SpaceValue!8223 (value!248407 List!47392)) (IntegerValue!24671 (value!248408 Int) (text!58010 List!47392)) (StringLiteralValue!24670 (text!58011 List!47392)) (FloatLiteralValue!16447 (text!58012 List!47392)) (BytesLiteralValue!8223 (value!248409 List!47392)) (CommentValue!16447 (value!248410 List!47392)) (StringLiteralValue!24671 (value!248411 List!47392)) (ErrorTokenValue!8223 (msg!8284 List!47392)) )
))
(declare-fun toCharacters!10 (OperatorValueInjection!28 TokenValue!8223) BalanceConc!28010)

(declare-fun toValue!17 (OperatorValueInjection!28 BalanceConc!28010) TokenValue!8223)

(assert (=> start!408676 (= inst!1556 (=> (and (inv!62191 x!738013) e!2648111) (= (list!17073 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))) (list!17073 x!738013))))))

(assert (= start!408676 b!4264777))

(declare-fun m!4855047 () Bool)

(assert (=> b!4264777 m!4855047))

(declare-fun m!4855049 () Bool)

(assert (=> start!408676 m!4855049))

(declare-fun m!4855051 () Bool)

(assert (=> start!408676 m!4855051))

(assert (=> start!408676 m!4855049))

(declare-fun m!4855053 () Bool)

(assert (=> start!408676 m!4855053))

(assert (=> start!408676 m!4855051))

(declare-fun m!4855055 () Bool)

(assert (=> start!408676 m!4855055))

(declare-fun m!4855057 () Bool)

(assert (=> start!408676 m!4855057))

(declare-fun bs!599222 () Bool)

(declare-fun neg-inst!1556 () Bool)

(declare-fun s!239090 () Bool)

(assert (= bs!599222 (and neg-inst!1556 s!239090)))

(assert (=> bs!599222 (=> true (= (list!17073 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))) (list!17073 x!738013)))))

(assert (=> m!4855053 m!4855049))

(assert (=> m!4855053 m!4855051))

(assert (=> m!4855053 m!4855055))

(assert (=> m!4855053 s!239090))

(assert (=> m!4855049 s!239090))

(declare-fun bs!599223 () Bool)

(assert (= bs!599223 (and neg-inst!1556 start!408676)))

(assert (=> bs!599223 (= true inst!1556)))

(declare-fun lambda!130294 () Int)

(declare-fun Forall!1607 (Int) Bool)

(assert (=> start!408676 (= (Forall!1607 lambda!130294) inst!1556)))

(assert (=> start!408676 (not (Forall!1607 lambda!130294))))

(assert (=> start!408676 true))

(assert (= neg-inst!1556 inst!1556))

(declare-fun m!4855059 () Bool)

(assert (=> start!408676 m!4855059))

(assert (=> start!408676 m!4855059))

(push 1)

(assert (not b!4264777))

(assert (not bs!599222))

(assert (not start!408676))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1256517 () Bool)

(declare-fun list!17075 (Conc!14250) List!47392)

(assert (=> d!1256517 (= (list!17073 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))) (list!17075 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))

(declare-fun bs!599226 () Bool)

(assert (= bs!599226 d!1256517))

(declare-fun m!4855075 () Bool)

(assert (=> bs!599226 m!4855075))

(assert (=> bs!599222 d!1256517))

(declare-fun b!4264831 () Bool)

(declare-fun e!2648142 () BalanceConc!28010)

(declare-fun seqFromList!5846 (List!47392) BalanceConc!28010)

(assert (=> b!4264831 (= e!2648142 (seqFromList!5846 (value!248406 (toValue!17 thiss!2520 x!738013))))))

(declare-fun b!4264832 () Bool)

(declare-fun e!2648143 () BalanceConc!28010)

(declare-fun e!2648148 () BalanceConc!28010)

(assert (=> b!4264832 (= e!2648143 e!2648148)))

(declare-fun c!724742 () Bool)

(assert (=> b!4264832 (= c!724742 (is-Div!8223 (toValue!17 thiss!2520 x!738013)))))

(declare-fun b!4264833 () Bool)

(declare-fun e!2648146 () BalanceConc!28010)

(assert (=> b!4264833 (= e!2648146 e!2648142)))

(declare-fun c!724736 () Bool)

(assert (=> b!4264833 (= c!724736 (is-Broken!41119 (toValue!17 thiss!2520 x!738013)))))

(declare-fun b!4264834 () Bool)

(declare-fun stringDivConc!0 () BalanceConc!28010)

(assert (=> b!4264834 (= e!2648148 stringDivConc!0)))

(declare-fun b!4264835 () Bool)

(declare-fun e!2648147 () BalanceConc!28010)

(declare-fun e!2648140 () BalanceConc!28010)

(assert (=> b!4264835 (= e!2648147 e!2648140)))

(declare-fun c!724739 () Bool)

(assert (=> b!4264835 (= c!724739 (is-Not!8223 (toValue!17 thiss!2520 x!738013)))))

(declare-fun b!4264836 () Bool)

(declare-fun stringModConc!0 () BalanceConc!28010)

(assert (=> b!4264836 (= e!2648147 stringModConc!0)))

(declare-fun b!4264837 () Bool)

(declare-fun e!2648145 () BalanceConc!28010)

(declare-fun stringAndConc!0 () BalanceConc!28010)

(assert (=> b!4264837 (= e!2648145 stringAndConc!0)))

(declare-fun b!4264839 () Bool)

(declare-fun e!2648150 () BalanceConc!28010)

(declare-fun stringEqualConc!0 () BalanceConc!28010)

(assert (=> b!4264839 (= e!2648150 stringEqualConc!0)))

(declare-fun b!4264840 () Bool)

(declare-fun stringTimesConc!0 () BalanceConc!28010)

(assert (=> b!4264840 (= e!2648143 stringTimesConc!0)))

(declare-fun b!4264841 () Bool)

(assert (=> b!4264841 (= e!2648142 (BalanceConc!28011 Empty!14250))))

(declare-fun b!4264842 () Bool)

(declare-fun c!724744 () Bool)

(assert (=> b!4264842 (= c!724744 (is-And!8223 (toValue!17 thiss!2520 x!738013)))))

(declare-fun e!2648144 () BalanceConc!28010)

(assert (=> b!4264842 (= e!2648144 e!2648145)))

(declare-fun b!4264843 () Bool)

(declare-fun e!2648141 () BalanceConc!28010)

(declare-fun stringOrConc!0 () BalanceConc!28010)

(assert (=> b!4264843 (= e!2648141 stringOrConc!0)))

(declare-fun b!4264844 () Bool)

(declare-fun c!724741 () Bool)

(assert (=> b!4264844 (= c!724741 (is-Concat!21121 (toValue!17 thiss!2520 x!738013)))))

(assert (=> b!4264844 (= e!2648141 e!2648146)))

(declare-fun b!4264845 () Bool)

(declare-fun stringConcatConc!0 () BalanceConc!28010)

(assert (=> b!4264845 (= e!2648146 stringConcatConc!0)))

(declare-fun b!4264846 () Bool)

(declare-fun c!724743 () Bool)

(assert (=> b!4264846 (= c!724743 (is-Mod!8223 (toValue!17 thiss!2520 x!738013)))))

(assert (=> b!4264846 (= e!2648148 e!2648147)))

(declare-fun b!4264847 () Bool)

(declare-fun e!2648149 () BalanceConc!28010)

(declare-fun stringPlusConc!0 () BalanceConc!28010)

(assert (=> b!4264847 (= e!2648149 stringPlusConc!0)))

(declare-fun b!4264848 () Bool)

(declare-fun e!2648139 () BalanceConc!28010)

(assert (=> b!4264848 (= e!2648149 e!2648139)))

(declare-fun c!724738 () Bool)

(assert (=> b!4264848 (= c!724738 (is-Minus!8223 (toValue!17 thiss!2520 x!738013)))))

(declare-fun b!4264849 () Bool)

(assert (=> b!4264849 (= e!2648145 e!2648141)))

(declare-fun c!724746 () Bool)

(assert (=> b!4264849 (= c!724746 (is-Or!8223 (toValue!17 thiss!2520 x!738013)))))

(declare-fun b!4264850 () Bool)

(declare-fun stringLessEqualConc!0 () BalanceConc!28010)

(assert (=> b!4264850 (= e!2648144 stringLessEqualConc!0)))

(declare-fun b!4264851 () Bool)

(assert (=> b!4264851 (= e!2648150 e!2648144)))

(declare-fun c!724735 () Bool)

(assert (=> b!4264851 (= c!724735 (is-LessEqual!8223 (toValue!17 thiss!2520 x!738013)))))

(declare-fun b!4264852 () Bool)

(declare-fun c!724737 () Bool)

(assert (=> b!4264852 (= c!724737 (is-Times!8223 (toValue!17 thiss!2520 x!738013)))))

(assert (=> b!4264852 (= e!2648139 e!2648143)))

(declare-fun b!4264853 () Bool)

(declare-fun c!724740 () Bool)

(assert (=> b!4264853 (= c!724740 (is-Equal!8223 (toValue!17 thiss!2520 x!738013)))))

(assert (=> b!4264853 (= e!2648140 e!2648150)))

(declare-fun b!4264854 () Bool)

(declare-fun stringMinusConc!0 () BalanceConc!28010)

(assert (=> b!4264854 (= e!2648139 stringMinusConc!0)))

(declare-fun d!1256519 () Bool)

(declare-fun c!724745 () Bool)

(assert (=> d!1256519 (= c!724745 (is-Plus!8223 (toValue!17 thiss!2520 x!738013)))))

(assert (=> d!1256519 (= (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)) e!2648149)))

(declare-fun b!4264838 () Bool)

(declare-fun stringNotConc!0 () BalanceConc!28010)

(assert (=> b!4264838 (= e!2648140 stringNotConc!0)))

(assert (= (and d!1256519 c!724745) b!4264847))

(assert (= (and d!1256519 (not c!724745)) b!4264848))

(assert (= (and b!4264848 c!724738) b!4264854))

(assert (= (and b!4264848 (not c!724738)) b!4264852))

(assert (= (and b!4264852 c!724737) b!4264840))

(assert (= (and b!4264852 (not c!724737)) b!4264832))

(assert (= (and b!4264832 c!724742) b!4264834))

(assert (= (and b!4264832 (not c!724742)) b!4264846))

(assert (= (and b!4264846 c!724743) b!4264836))

(assert (= (and b!4264846 (not c!724743)) b!4264835))

(assert (= (and b!4264835 c!724739) b!4264838))

(assert (= (and b!4264835 (not c!724739)) b!4264853))

(assert (= (and b!4264853 c!724740) b!4264839))

(assert (= (and b!4264853 (not c!724740)) b!4264851))

(assert (= (and b!4264851 c!724735) b!4264850))

(assert (= (and b!4264851 (not c!724735)) b!4264842))

(assert (= (and b!4264842 c!724744) b!4264837))

(assert (= (and b!4264842 (not c!724744)) b!4264849))

(assert (= (and b!4264849 c!724746) b!4264843))

(assert (= (and b!4264849 (not c!724746)) b!4264844))

(assert (= (and b!4264844 c!724741) b!4264845))

(assert (= (and b!4264844 (not c!724741)) b!4264833))

(assert (= (and b!4264833 c!724736) b!4264831))

(assert (= (and b!4264833 (not c!724736)) b!4264841))

(declare-fun m!4855079 () Bool)

(assert (=> b!4264831 m!4855079))

(declare-fun m!4855081 () Bool)

(assert (=> b!4264845 m!4855081))

(declare-fun m!4855083 () Bool)

(assert (=> b!4264847 m!4855083))

(declare-fun m!4855085 () Bool)

(assert (=> b!4264843 m!4855085))

(declare-fun m!4855087 () Bool)

(assert (=> b!4264839 m!4855087))

(declare-fun m!4855089 () Bool)

(assert (=> b!4264837 m!4855089))

(declare-fun m!4855091 () Bool)

(assert (=> b!4264850 m!4855091))

(declare-fun m!4855093 () Bool)

(assert (=> b!4264834 m!4855093))

(declare-fun m!4855095 () Bool)

(assert (=> b!4264854 m!4855095))

(declare-fun m!4855097 () Bool)

(assert (=> b!4264838 m!4855097))

(declare-fun m!4855099 () Bool)

(assert (=> b!4264836 m!4855099))

(declare-fun m!4855101 () Bool)

(assert (=> b!4264840 m!4855101))

(assert (=> bs!599222 d!1256519))

(declare-fun d!1256525 () Bool)

(declare-fun lt!1511485 () List!47392)

(declare-fun efficientList!418 (BalanceConc!28010) List!47392)

(assert (=> d!1256525 (= lt!1511485 (efficientList!418 x!738013))))

(assert (=> d!1256525 (= (toValue!17 thiss!2520 x!738013) (ite (= lt!1511485 (Cons!47268 #x002B Nil!47268)) Plus!8223 (ite (= lt!1511485 (Cons!47268 #x002D Nil!47268)) Minus!8223 (ite (= lt!1511485 (Cons!47268 #x002A Nil!47268)) Times!8223 (ite (= lt!1511485 (Cons!47268 #x002F Nil!47268)) Div!8223 (ite (= lt!1511485 (Cons!47268 #x0025 Nil!47268)) Mod!8223 (ite (= lt!1511485 (Cons!47268 #x0021 Nil!47268)) Not!8223 (ite (= lt!1511485 (Cons!47268 #x003D Nil!47268)) Equal!8223 (ite (= lt!1511485 (Cons!47268 #x003C (Cons!47268 #x003D Nil!47268))) LessEqual!8223 (ite (= lt!1511485 (Cons!47268 #x0026 (Cons!47268 #x0026 Nil!47268))) And!8223 (ite (= lt!1511485 (Cons!47268 #x007C (Cons!47268 #x007C Nil!47268))) Or!8223 (ite (= lt!1511485 (Cons!47268 #x002B (Cons!47268 #x002B Nil!47268))) Concat!21121 (Broken!41119 lt!1511485)))))))))))))))

(declare-fun bs!599228 () Bool)

(assert (= bs!599228 d!1256525))

(declare-fun m!4855103 () Bool)

(assert (=> bs!599228 m!4855103))

(assert (=> bs!599222 d!1256525))

(declare-fun d!1256527 () Bool)

(assert (=> d!1256527 (= (list!17073 x!738013) (list!17075 (c!724708 x!738013)))))

(declare-fun bs!599229 () Bool)

(assert (= bs!599229 d!1256527))

(declare-fun m!4855105 () Bool)

(assert (=> bs!599229 m!4855105))

(assert (=> bs!599222 d!1256527))

(push 1)

(assert (not d!1256527))

(assert (not b!4264834))

(assert (not b!4264777))

(assert (not d!1256517))

(assert (not b!4264840))

(assert (not start!408676))

(assert (not b!4264847))

(assert (not b!4264831))

(assert (not b!4264839))

(assert (not b!4264836))

(assert (not b!4264837))

(assert (not b!4264854))

(assert (not b!4264838))

(assert (not d!1256525))

(assert (not b!4264845))

(assert (not b!4264850))

(assert (not b!4264843))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1256533 () Bool)

(declare-fun lt!1511491 () List!47392)

(assert (=> d!1256533 (= lt!1511491 (list!17073 x!738013))))

(declare-fun efficientList!419 (Conc!14250 List!47392) List!47392)

(declare-fun efficientList$default$2!146 (Conc!14250) List!47392)

(assert (=> d!1256533 (= lt!1511491 (efficientList!419 (c!724708 x!738013) (efficientList$default$2!146 (c!724708 x!738013))))))

(assert (=> d!1256533 (= (efficientList!418 x!738013) lt!1511491)))

(declare-fun bs!599232 () Bool)

(assert (= bs!599232 d!1256533))

(assert (=> bs!599232 m!4855053))

(declare-fun m!4855135 () Bool)

(assert (=> bs!599232 m!4855135))

(assert (=> bs!599232 m!4855135))

(declare-fun m!4855137 () Bool)

(assert (=> bs!599232 m!4855137))

(assert (=> d!1256525 d!1256533))

(declare-fun b!4264937 () Bool)

(declare-fun e!2648192 () List!47392)

(declare-fun list!17077 (IArray!28505) List!47392)

(assert (=> b!4264937 (= e!2648192 (list!17077 (xs!17556 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))

(declare-fun b!4264935 () Bool)

(declare-fun e!2648191 () List!47392)

(assert (=> b!4264935 (= e!2648191 Nil!47268)))

(declare-fun d!1256535 () Bool)

(declare-fun c!724788 () Bool)

(assert (=> d!1256535 (= c!724788 (is-Empty!14250 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))

(assert (=> d!1256535 (= (list!17075 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))) e!2648191)))

(declare-fun b!4264938 () Bool)

(declare-fun ++!12049 (List!47392 List!47392) List!47392)

(assert (=> b!4264938 (= e!2648192 (++!12049 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))) (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))

(declare-fun b!4264936 () Bool)

(assert (=> b!4264936 (= e!2648191 e!2648192)))

(declare-fun c!724789 () Bool)

(assert (=> b!4264936 (= c!724789 (is-Leaf!22031 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))

(assert (= (and d!1256535 c!724788) b!4264935))

(assert (= (and d!1256535 (not c!724788)) b!4264936))

(assert (= (and b!4264936 c!724789) b!4264937))

(assert (= (and b!4264936 (not c!724789)) b!4264938))

(declare-fun m!4855139 () Bool)

(assert (=> b!4264937 m!4855139))

(declare-fun m!4855141 () Bool)

(assert (=> b!4264938 m!4855141))

(declare-fun m!4855143 () Bool)

(assert (=> b!4264938 m!4855143))

(assert (=> b!4264938 m!4855141))

(assert (=> b!4264938 m!4855143))

(declare-fun m!4855145 () Bool)

(assert (=> b!4264938 m!4855145))

(assert (=> d!1256517 d!1256535))

(declare-fun b!4264941 () Bool)

(declare-fun e!2648194 () List!47392)

(assert (=> b!4264941 (= e!2648194 (list!17077 (xs!17556 (c!724708 x!738013))))))

(declare-fun b!4264939 () Bool)

(declare-fun e!2648193 () List!47392)

(assert (=> b!4264939 (= e!2648193 Nil!47268)))

(declare-fun d!1256537 () Bool)

(declare-fun c!724790 () Bool)

(assert (=> d!1256537 (= c!724790 (is-Empty!14250 (c!724708 x!738013)))))

(assert (=> d!1256537 (= (list!17075 (c!724708 x!738013)) e!2648193)))

(declare-fun b!4264942 () Bool)

(assert (=> b!4264942 (= e!2648194 (++!12049 (list!17075 (left!35040 (c!724708 x!738013))) (list!17075 (right!35370 (c!724708 x!738013)))))))

(declare-fun b!4264940 () Bool)

(assert (=> b!4264940 (= e!2648193 e!2648194)))

(declare-fun c!724791 () Bool)

(assert (=> b!4264940 (= c!724791 (is-Leaf!22031 (c!724708 x!738013)))))

(assert (= (and d!1256537 c!724790) b!4264939))

(assert (= (and d!1256537 (not c!724790)) b!4264940))

(assert (= (and b!4264940 c!724791) b!4264941))

(assert (= (and b!4264940 (not c!724791)) b!4264942))

(declare-fun m!4855147 () Bool)

(assert (=> b!4264941 m!4855147))

(declare-fun m!4855149 () Bool)

(assert (=> b!4264942 m!4855149))

(declare-fun m!4855151 () Bool)

(assert (=> b!4264942 m!4855151))

(assert (=> b!4264942 m!4855149))

(assert (=> b!4264942 m!4855151))

(declare-fun m!4855153 () Bool)

(assert (=> b!4264942 m!4855153))

(assert (=> d!1256527 d!1256537))

(push 1)

(assert (not b!4264834))

(assert (not b!4264777))

(assert (not b!4264937))

(assert (not b!4264938))

(assert (not d!1256533))

(assert (not b!4264840))

(assert (not start!408676))

(assert (not b!4264847))

(assert (not b!4264831))

(assert (not b!4264942))

(assert (not b!4264941))

(assert (not b!4264839))

(assert (not b!4264845))

(assert (not b!4264836))

(assert (not b!4264837))

(assert (not b!4264854))

(assert (not b!4264838))

(assert (not b!4264850))

(assert (not b!4264843))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1256539 () Bool)

(assert (=> d!1256539 (= stringPlusConc!0 (seqFromList!5846 (Cons!47268 #x002B Nil!47268)))))

(declare-fun bs!599233 () Bool)

(assert (= bs!599233 d!1256539))

(declare-fun m!4855155 () Bool)

(assert (=> bs!599233 m!4855155))

(assert (=> b!4264847 d!1256539))

(declare-fun d!1256541 () Bool)

(declare-fun c!724794 () Bool)

(assert (=> d!1256541 (= c!724794 (is-Node!14250 (c!724708 x!738013)))))

(declare-fun e!2648199 () Bool)

(assert (=> d!1256541 (= (inv!62190 (c!724708 x!738013)) e!2648199)))

(declare-fun b!4264949 () Bool)

(declare-fun inv!62194 (Conc!14250) Bool)

(assert (=> b!4264949 (= e!2648199 (inv!62194 (c!724708 x!738013)))))

(declare-fun b!4264950 () Bool)

(declare-fun e!2648200 () Bool)

(assert (=> b!4264950 (= e!2648199 e!2648200)))

(declare-fun res!1752742 () Bool)

(assert (=> b!4264950 (= res!1752742 (not (is-Leaf!22031 (c!724708 x!738013))))))

(assert (=> b!4264950 (=> res!1752742 e!2648200)))

(declare-fun b!4264951 () Bool)

(declare-fun inv!62195 (Conc!14250) Bool)

(assert (=> b!4264951 (= e!2648200 (inv!62195 (c!724708 x!738013)))))

(assert (= (and d!1256541 c!724794) b!4264949))

(assert (= (and d!1256541 (not c!724794)) b!4264950))

(assert (= (and b!4264950 (not res!1752742)) b!4264951))

(declare-fun m!4855157 () Bool)

(assert (=> b!4264949 m!4855157))

(declare-fun m!4855159 () Bool)

(assert (=> b!4264951 m!4855159))

(assert (=> b!4264777 d!1256541))

(assert (=> d!1256533 d!1256527))

(declare-fun b!4264972 () Bool)

(declare-fun e!2648211 () List!47392)

(declare-fun lt!1511502 () List!47392)

(assert (=> b!4264972 (= e!2648211 lt!1511502)))

(declare-fun d!1256543 () Bool)

(declare-fun lt!1511506 () List!47392)

(assert (=> d!1256543 (= lt!1511506 (++!12049 (list!17075 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013))))))

(declare-fun e!2648212 () List!47392)

(assert (=> d!1256543 (= lt!1511506 e!2648212)))

(declare-fun c!724806 () Bool)

(assert (=> d!1256543 (= c!724806 (is-Empty!14250 (c!724708 x!738013)))))

(assert (=> d!1256543 (= (efficientList!419 (c!724708 x!738013) (efficientList$default$2!146 (c!724708 x!738013))) lt!1511506)))

(declare-fun b!4264973 () Bool)

(declare-fun e!2648213 () List!47392)

(declare-fun call!294041 () List!47392)

(assert (=> b!4264973 (= e!2648213 call!294041)))

(declare-fun bm!294036 () Bool)

(declare-fun c!724805 () Bool)

(declare-fun c!724807 () Bool)

(assert (=> bm!294036 (= c!724805 c!724807)))

(assert (=> bm!294036 (= call!294041 (++!12049 e!2648211 (efficientList$default$2!146 (c!724708 x!738013))))))

(declare-fun b!4264974 () Bool)

(assert (=> b!4264974 (= e!2648212 e!2648213)))

(assert (=> b!4264974 (= c!724807 (is-Leaf!22031 (c!724708 x!738013)))))

(declare-fun b!4264975 () Bool)

(declare-fun efficientList!421 (IArray!28505) List!47392)

(assert (=> b!4264975 (= e!2648211 (efficientList!421 (xs!17556 (c!724708 x!738013))))))

(declare-fun b!4264976 () Bool)

(assert (=> b!4264976 (= e!2648212 (efficientList$default$2!146 (c!724708 x!738013)))))

(declare-fun b!4264977 () Bool)

(declare-datatypes ((Unit!66151 0))(
  ( (Unit!66152) )
))
(declare-fun lt!1511503 () Unit!66151)

(declare-fun lt!1511504 () Unit!66151)

(assert (=> b!4264977 (= lt!1511503 lt!1511504)))

(declare-fun lt!1511505 () List!47392)

(assert (=> b!4264977 (= (++!12049 (++!12049 lt!1511505 lt!1511502) (efficientList$default$2!146 (c!724708 x!738013))) (++!12049 lt!1511505 call!294041))))

(declare-fun lemmaConcatAssociativity!2693 (List!47392 List!47392 List!47392) Unit!66151)

(assert (=> b!4264977 (= lt!1511504 (lemmaConcatAssociativity!2693 lt!1511505 lt!1511502 (efficientList$default$2!146 (c!724708 x!738013))))))

(assert (=> b!4264977 (= lt!1511502 (list!17075 (right!35370 (c!724708 x!738013))))))

(assert (=> b!4264977 (= lt!1511505 (list!17075 (left!35040 (c!724708 x!738013))))))

(assert (=> b!4264977 (= e!2648213 (efficientList!419 (left!35040 (c!724708 x!738013)) (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))))))

(assert (= (and d!1256543 c!724806) b!4264976))

(assert (= (and d!1256543 (not c!724806)) b!4264974))

(assert (= (and b!4264974 c!724807) b!4264973))

(assert (= (and b!4264974 (not c!724807)) b!4264977))

(assert (= (or b!4264973 b!4264977) bm!294036))

(assert (= (and bm!294036 c!724805) b!4264975))

(assert (= (and bm!294036 (not c!724805)) b!4264972))

(assert (=> d!1256543 m!4855105))

(assert (=> d!1256543 m!4855105))

(assert (=> d!1256543 m!4855135))

(declare-fun m!4855161 () Bool)

(assert (=> d!1256543 m!4855161))

(assert (=> bm!294036 m!4855135))

(declare-fun m!4855163 () Bool)

(assert (=> bm!294036 m!4855163))

(declare-fun m!4855165 () Bool)

(assert (=> b!4264975 m!4855165))

(declare-fun m!4855167 () Bool)

(assert (=> b!4264977 m!4855167))

(assert (=> b!4264977 m!4855151))

(declare-fun m!4855169 () Bool)

(assert (=> b!4264977 m!4855169))

(declare-fun m!4855171 () Bool)

(assert (=> b!4264977 m!4855171))

(assert (=> b!4264977 m!4855135))

(declare-fun m!4855173 () Bool)

(assert (=> b!4264977 m!4855173))

(declare-fun m!4855175 () Bool)

(assert (=> b!4264977 m!4855175))

(assert (=> b!4264977 m!4855167))

(assert (=> b!4264977 m!4855135))

(declare-fun m!4855177 () Bool)

(assert (=> b!4264977 m!4855177))

(assert (=> b!4264977 m!4855135))

(assert (=> b!4264977 m!4855169))

(assert (=> b!4264977 m!4855149))

(assert (=> d!1256533 d!1256543))

(declare-fun d!1256547 () Bool)

(assert (=> d!1256547 (= (efficientList$default$2!146 (c!724708 x!738013)) Nil!47268)))

(assert (=> d!1256533 d!1256547))

(assert (=> start!408676 d!1256517))

(declare-fun d!1256549 () Bool)

(declare-fun choose!25994 (Int) Bool)

(assert (=> d!1256549 (= (Forall!1607 lambda!130294) (choose!25994 lambda!130294))))

(declare-fun bs!599234 () Bool)

(assert (= bs!599234 d!1256549))

(declare-fun m!4855179 () Bool)

(assert (=> bs!599234 m!4855179))

(assert (=> start!408676 d!1256549))

(assert (=> start!408676 d!1256527))

(declare-fun d!1256551 () Bool)

(declare-fun isBalanced!3809 (Conc!14250) Bool)

(assert (=> d!1256551 (= (inv!62191 x!738013) (isBalanced!3809 (c!724708 x!738013)))))

(declare-fun bs!599235 () Bool)

(assert (= bs!599235 d!1256551))

(declare-fun m!4855189 () Bool)

(assert (=> bs!599235 m!4855189))

(assert (=> start!408676 d!1256551))

(assert (=> start!408676 d!1256519))

(assert (=> start!408676 d!1256525))

(declare-fun tp!1307453 () Bool)

(declare-fun b!4264988 () Bool)

(declare-fun tp!1307454 () Bool)

(declare-fun e!2648220 () Bool)

(assert (=> b!4264988 (= e!2648220 (and (inv!62190 (left!35040 (c!724708 x!738013))) tp!1307453 (inv!62190 (right!35370 (c!724708 x!738013))) tp!1307454))))

(declare-fun b!4264989 () Bool)

(declare-fun inv!62196 (IArray!28505) Bool)

(assert (=> b!4264989 (= e!2648220 (inv!62196 (xs!17556 (c!724708 x!738013))))))

(assert (=> b!4264777 (= tp!1307445 (and (inv!62190 (c!724708 x!738013)) e!2648220))))

(assert (= (and b!4264777 (is-Node!14250 (c!724708 x!738013))) b!4264988))

(assert (= (and b!4264777 (is-Leaf!22031 (c!724708 x!738013))) b!4264989))

(declare-fun m!4855191 () Bool)

(assert (=> b!4264988 m!4855191))

(declare-fun m!4855193 () Bool)

(assert (=> b!4264988 m!4855193))

(declare-fun m!4855195 () Bool)

(assert (=> b!4264989 m!4855195))

(assert (=> b!4264777 m!4855047))

(push 1)

(assert (not b!4264949))

(assert (not b!4264777))

(assert (not b!4264937))

(assert (not b!4264951))

(assert (not b!4264938))

(assert (not b!4264988))

(assert (not d!1256539))

(assert (not b!4264975))

(assert (not bm!294036))

(assert (not b!4264989))

(assert (not b!4264941))

(assert (not b!4264839))

(assert (not b!4264845))

(assert (not b!4264836))

(assert (not b!4264837))

(assert (not b!4264834))

(assert (not d!1256549))

(assert (not b!4264854))

(assert (not b!4264838))

(assert (not d!1256543))

(assert (not b!4264840))

(assert (not d!1256551))

(assert (not b!4264831))

(assert (not b!4264977))

(assert (not b!4264942))

(assert (not b!4264850))

(assert (not b!4264843))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1256563 () Bool)

(assert (=> d!1256563 (= stringOrConc!0 (seqFromList!5846 (Cons!47268 #x007C (Cons!47268 #x007C Nil!47268))))))

(declare-fun bs!599239 () Bool)

(assert (= bs!599239 d!1256563))

(declare-fun m!4855213 () Bool)

(assert (=> bs!599239 m!4855213))

(assert (=> b!4264843 d!1256563))

(declare-fun d!1256565 () Bool)

(assert (=> d!1256565 (= stringConcatConc!0 (seqFromList!5846 (Cons!47268 #x002B (Cons!47268 #x002B Nil!47268))))))

(declare-fun bs!599240 () Bool)

(assert (= bs!599240 d!1256565))

(declare-fun m!4855215 () Bool)

(assert (=> bs!599240 m!4855215))

(assert (=> b!4264845 d!1256565))

(declare-fun d!1256567 () Bool)

(assert (=> d!1256567 (= stringLessEqualConc!0 (seqFromList!5846 (Cons!47268 #x003C (Cons!47268 #x003D Nil!47268))))))

(declare-fun bs!599241 () Bool)

(assert (= bs!599241 d!1256567))

(declare-fun m!4855217 () Bool)

(assert (=> bs!599241 m!4855217))

(assert (=> b!4264850 d!1256567))

(declare-fun d!1256569 () Bool)

(declare-fun fromListB!2657 (List!47392) BalanceConc!28010)

(assert (=> d!1256569 (= (seqFromList!5846 (value!248406 (toValue!17 thiss!2520 x!738013))) (fromListB!2657 (value!248406 (toValue!17 thiss!2520 x!738013))))))

(declare-fun bs!599242 () Bool)

(assert (= bs!599242 d!1256569))

(declare-fun m!4855223 () Bool)

(assert (=> bs!599242 m!4855223))

(assert (=> b!4264831 d!1256569))

(declare-fun d!1256573 () Bool)

(assert (=> d!1256573 (= stringMinusConc!0 (seqFromList!5846 (Cons!47268 #x002D Nil!47268)))))

(declare-fun bs!599243 () Bool)

(assert (= bs!599243 d!1256573))

(declare-fun m!4855225 () Bool)

(assert (=> bs!599243 m!4855225))

(assert (=> b!4264854 d!1256573))

(declare-fun d!1256575 () Bool)

(assert (=> d!1256575 (= stringDivConc!0 (seqFromList!5846 (Cons!47268 #x002F Nil!47268)))))

(declare-fun bs!599244 () Bool)

(assert (= bs!599244 d!1256575))

(declare-fun m!4855227 () Bool)

(assert (=> bs!599244 m!4855227))

(assert (=> b!4264834 d!1256575))

(declare-fun d!1256577 () Bool)

(assert (=> d!1256577 (= stringModConc!0 (seqFromList!5846 (Cons!47268 #x0025 Nil!47268)))))

(declare-fun bs!599246 () Bool)

(assert (= bs!599246 d!1256577))

(declare-fun m!4855231 () Bool)

(assert (=> bs!599246 m!4855231))

(assert (=> b!4264836 d!1256577))

(declare-fun d!1256581 () Bool)

(assert (=> d!1256581 (= stringAndConc!0 (seqFromList!5846 (Cons!47268 #x0026 (Cons!47268 #x0026 Nil!47268))))))

(declare-fun bs!599247 () Bool)

(assert (= bs!599247 d!1256581))

(declare-fun m!4855233 () Bool)

(assert (=> bs!599247 m!4855233))

(assert (=> b!4264837 d!1256581))

(declare-fun b!4265014 () Bool)

(declare-fun e!2648234 () Bool)

(declare-fun lt!1511512 () List!47392)

(assert (=> b!4265014 (= e!2648234 (or (not (= (efficientList$default$2!146 (c!724708 x!738013)) Nil!47268)) (= lt!1511512 (list!17075 (c!724708 x!738013)))))))

(declare-fun b!4265013 () Bool)

(declare-fun res!1752750 () Bool)

(assert (=> b!4265013 (=> (not res!1752750) (not e!2648234))))

(declare-fun size!34622 (List!47392) Int)

(assert (=> b!4265013 (= res!1752750 (= (size!34622 lt!1511512) (+ (size!34622 (list!17075 (c!724708 x!738013))) (size!34622 (efficientList$default$2!146 (c!724708 x!738013))))))))

(declare-fun b!4265012 () Bool)

(declare-fun e!2648235 () List!47392)

(assert (=> b!4265012 (= e!2648235 (Cons!47268 (h!52688 (list!17075 (c!724708 x!738013))) (++!12049 (t!353461 (list!17075 (c!724708 x!738013))) (efficientList$default$2!146 (c!724708 x!738013)))))))

(declare-fun b!4265011 () Bool)

(assert (=> b!4265011 (= e!2648235 (efficientList$default$2!146 (c!724708 x!738013)))))

(declare-fun d!1256583 () Bool)

(assert (=> d!1256583 e!2648234))

(declare-fun res!1752751 () Bool)

(assert (=> d!1256583 (=> (not res!1752751) (not e!2648234))))

(declare-fun content!7469 (List!47392) (Set (_ BitVec 16)))

(assert (=> d!1256583 (= res!1752751 (= (content!7469 lt!1511512) (set.union (content!7469 (list!17075 (c!724708 x!738013))) (content!7469 (efficientList$default$2!146 (c!724708 x!738013))))))))

(assert (=> d!1256583 (= lt!1511512 e!2648235)))

(declare-fun c!724817 () Bool)

(assert (=> d!1256583 (= c!724817 (is-Nil!47268 (list!17075 (c!724708 x!738013))))))

(assert (=> d!1256583 (= (++!12049 (list!17075 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013))) lt!1511512)))

(assert (= (and d!1256583 c!724817) b!4265011))

(assert (= (and d!1256583 (not c!724817)) b!4265012))

(assert (= (and d!1256583 res!1752751) b!4265013))

(assert (= (and b!4265013 res!1752750) b!4265014))

(declare-fun m!4855235 () Bool)

(assert (=> b!4265013 m!4855235))

(assert (=> b!4265013 m!4855105))

(declare-fun m!4855237 () Bool)

(assert (=> b!4265013 m!4855237))

(assert (=> b!4265013 m!4855135))

(declare-fun m!4855239 () Bool)

(assert (=> b!4265013 m!4855239))

(assert (=> b!4265012 m!4855135))

(declare-fun m!4855241 () Bool)

(assert (=> b!4265012 m!4855241))

(declare-fun m!4855243 () Bool)

(assert (=> d!1256583 m!4855243))

(assert (=> d!1256583 m!4855105))

(declare-fun m!4855245 () Bool)

(assert (=> d!1256583 m!4855245))

(assert (=> d!1256583 m!4855135))

(declare-fun m!4855247 () Bool)

(assert (=> d!1256583 m!4855247))

(assert (=> d!1256543 d!1256583))

(assert (=> d!1256543 d!1256537))

(declare-fun d!1256585 () Bool)

(assert (=> d!1256585 (= (seqFromList!5846 (Cons!47268 #x002B Nil!47268)) (fromListB!2657 (Cons!47268 #x002B Nil!47268)))))

(declare-fun bs!599248 () Bool)

(assert (= bs!599248 d!1256585))

(declare-fun m!4855249 () Bool)

(assert (=> bs!599248 m!4855249))

(assert (=> d!1256539 d!1256585))

(declare-fun d!1256587 () Bool)

(assert (=> d!1256587 (= stringNotConc!0 (seqFromList!5846 (Cons!47268 #x0021 Nil!47268)))))

(declare-fun bs!599249 () Bool)

(assert (= bs!599249 d!1256587))

(declare-fun m!4855251 () Bool)

(assert (=> bs!599249 m!4855251))

(assert (=> b!4264838 d!1256587))

(declare-fun d!1256589 () Bool)

(assert (=> d!1256589 (= stringTimesConc!0 (seqFromList!5846 (Cons!47268 #x002A Nil!47268)))))

(declare-fun bs!599250 () Bool)

(assert (= bs!599250 d!1256589))

(declare-fun m!4855253 () Bool)

(assert (=> bs!599250 m!4855253))

(assert (=> b!4264840 d!1256589))

(declare-fun d!1256591 () Bool)

(assert (=> d!1256591 (= stringEqualConc!0 (seqFromList!5846 (Cons!47268 #x003D Nil!47268)))))

(declare-fun bs!599251 () Bool)

(assert (= bs!599251 d!1256591))

(declare-fun m!4855255 () Bool)

(assert (=> bs!599251 m!4855255))

(assert (=> b!4264839 d!1256591))

(push 1)

(assert (not d!1256587))

(assert (not d!1256565))

(assert (not d!1256549))

(assert (not b!4264777))

(assert (not b!4264937))

(assert (not b!4264938))

(assert (not b!4264988))

(assert (not b!4265012))

(assert (not b!4265013))

(assert (not d!1256591))

(assert (not b!4264975))

(assert (not bm!294036))

(assert (not d!1256573))

(assert (not d!1256551))

(assert (not b!4264989))

(assert (not d!1256567))

(assert (not d!1256589))

(assert (not b!4264949))

(assert (not d!1256585))

(assert (not b!4264951))

(assert (not d!1256577))

(assert (not d!1256581))

(assert (not d!1256575))

(assert (not d!1256563))

(assert (not b!4264977))

(assert (not b!4264942))

(assert (not b!4264941))

(assert (not d!1256569))

(assert (not d!1256583))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1256595 () Bool)

(declare-fun c!724829 () Bool)

(assert (=> d!1256595 (= c!724829 (is-Nil!47268 lt!1511512))))

(declare-fun e!2648253 () (Set (_ BitVec 16)))

(assert (=> d!1256595 (= (content!7469 lt!1511512) e!2648253)))

(declare-fun b!4265045 () Bool)

(assert (=> b!4265045 (= e!2648253 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265046 () Bool)

(assert (=> b!4265046 (= e!2648253 (set.union (set.insert (h!52688 lt!1511512) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 lt!1511512))))))

(assert (= (and d!1256595 c!724829) b!4265045))

(assert (= (and d!1256595 (not c!724829)) b!4265046))

(declare-fun m!4855281 () Bool)

(assert (=> b!4265046 m!4855281))

(declare-fun m!4855283 () Bool)

(assert (=> b!4265046 m!4855283))

(assert (=> d!1256583 d!1256595))

(declare-fun d!1256597 () Bool)

(declare-fun c!724830 () Bool)

(assert (=> d!1256597 (= c!724830 (is-Nil!47268 (list!17075 (c!724708 x!738013))))))

(declare-fun e!2648254 () (Set (_ BitVec 16)))

(assert (=> d!1256597 (= (content!7469 (list!17075 (c!724708 x!738013))) e!2648254)))

(declare-fun b!4265047 () Bool)

(assert (=> b!4265047 (= e!2648254 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265048 () Bool)

(assert (=> b!4265048 (= e!2648254 (set.union (set.insert (h!52688 (list!17075 (c!724708 x!738013))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (list!17075 (c!724708 x!738013))))))))

(assert (= (and d!1256597 c!724830) b!4265047))

(assert (= (and d!1256597 (not c!724830)) b!4265048))

(declare-fun m!4855285 () Bool)

(assert (=> b!4265048 m!4855285))

(declare-fun m!4855287 () Bool)

(assert (=> b!4265048 m!4855287))

(assert (=> d!1256583 d!1256597))

(declare-fun d!1256599 () Bool)

(declare-fun c!724831 () Bool)

(assert (=> d!1256599 (= c!724831 (is-Nil!47268 (efficientList$default$2!146 (c!724708 x!738013))))))

(declare-fun e!2648255 () (Set (_ BitVec 16)))

(assert (=> d!1256599 (= (content!7469 (efficientList$default$2!146 (c!724708 x!738013))) e!2648255)))

(declare-fun b!4265049 () Bool)

(assert (=> b!4265049 (= e!2648255 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265050 () Bool)

(assert (=> b!4265050 (= e!2648255 (set.union (set.insert (h!52688 (efficientList$default$2!146 (c!724708 x!738013))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (efficientList$default$2!146 (c!724708 x!738013))))))))

(assert (= (and d!1256599 c!724831) b!4265049))

(assert (= (and d!1256599 (not c!724831)) b!4265050))

(declare-fun m!4855289 () Bool)

(assert (=> b!4265050 m!4855289))

(declare-fun m!4855291 () Bool)

(assert (=> b!4265050 m!4855291))

(assert (=> d!1256583 d!1256599))

(declare-fun d!1256601 () Bool)

(assert (=> d!1256601 (= (list!17077 (xs!17556 (c!724708 x!738013))) (innerList!14310 (xs!17556 (c!724708 x!738013))))))

(assert (=> b!4264941 d!1256601))

(declare-fun b!4265054 () Bool)

(declare-fun e!2648256 () Bool)

(declare-fun lt!1511528 () List!47392)

(assert (=> b!4265054 (= e!2648256 (or (not (= (list!17075 (right!35370 (c!724708 x!738013))) Nil!47268)) (= lt!1511528 (list!17075 (left!35040 (c!724708 x!738013))))))))

(declare-fun b!4265053 () Bool)

(declare-fun res!1752752 () Bool)

(assert (=> b!4265053 (=> (not res!1752752) (not e!2648256))))

(assert (=> b!4265053 (= res!1752752 (= (size!34622 lt!1511528) (+ (size!34622 (list!17075 (left!35040 (c!724708 x!738013)))) (size!34622 (list!17075 (right!35370 (c!724708 x!738013)))))))))

(declare-fun b!4265052 () Bool)

(declare-fun e!2648257 () List!47392)

(assert (=> b!4265052 (= e!2648257 (Cons!47268 (h!52688 (list!17075 (left!35040 (c!724708 x!738013)))) (++!12049 (t!353461 (list!17075 (left!35040 (c!724708 x!738013)))) (list!17075 (right!35370 (c!724708 x!738013))))))))

(declare-fun b!4265051 () Bool)

(assert (=> b!4265051 (= e!2648257 (list!17075 (right!35370 (c!724708 x!738013))))))

(declare-fun d!1256603 () Bool)

(assert (=> d!1256603 e!2648256))

(declare-fun res!1752753 () Bool)

(assert (=> d!1256603 (=> (not res!1752753) (not e!2648256))))

(assert (=> d!1256603 (= res!1752753 (= (content!7469 lt!1511528) (set.union (content!7469 (list!17075 (left!35040 (c!724708 x!738013)))) (content!7469 (list!17075 (right!35370 (c!724708 x!738013)))))))))

(assert (=> d!1256603 (= lt!1511528 e!2648257)))

(declare-fun c!724832 () Bool)

(assert (=> d!1256603 (= c!724832 (is-Nil!47268 (list!17075 (left!35040 (c!724708 x!738013)))))))

(assert (=> d!1256603 (= (++!12049 (list!17075 (left!35040 (c!724708 x!738013))) (list!17075 (right!35370 (c!724708 x!738013)))) lt!1511528)))

(assert (= (and d!1256603 c!724832) b!4265051))

(assert (= (and d!1256603 (not c!724832)) b!4265052))

(assert (= (and d!1256603 res!1752753) b!4265053))

(assert (= (and b!4265053 res!1752752) b!4265054))

(declare-fun m!4855293 () Bool)

(assert (=> b!4265053 m!4855293))

(assert (=> b!4265053 m!4855149))

(declare-fun m!4855295 () Bool)

(assert (=> b!4265053 m!4855295))

(assert (=> b!4265053 m!4855151))

(declare-fun m!4855297 () Bool)

(assert (=> b!4265053 m!4855297))

(assert (=> b!4265052 m!4855151))

(declare-fun m!4855299 () Bool)

(assert (=> b!4265052 m!4855299))

(declare-fun m!4855301 () Bool)

(assert (=> d!1256603 m!4855301))

(assert (=> d!1256603 m!4855149))

(declare-fun m!4855303 () Bool)

(assert (=> d!1256603 m!4855303))

(assert (=> d!1256603 m!4855151))

(declare-fun m!4855305 () Bool)

(assert (=> d!1256603 m!4855305))

(assert (=> b!4264942 d!1256603))

(declare-fun b!4265057 () Bool)

(declare-fun e!2648259 () List!47392)

(assert (=> b!4265057 (= e!2648259 (list!17077 (xs!17556 (left!35040 (c!724708 x!738013)))))))

(declare-fun b!4265055 () Bool)

(declare-fun e!2648258 () List!47392)

(assert (=> b!4265055 (= e!2648258 Nil!47268)))

(declare-fun d!1256605 () Bool)

(declare-fun c!724833 () Bool)

(assert (=> d!1256605 (= c!724833 (is-Empty!14250 (left!35040 (c!724708 x!738013))))))

(assert (=> d!1256605 (= (list!17075 (left!35040 (c!724708 x!738013))) e!2648258)))

(declare-fun b!4265058 () Bool)

(assert (=> b!4265058 (= e!2648259 (++!12049 (list!17075 (left!35040 (left!35040 (c!724708 x!738013)))) (list!17075 (right!35370 (left!35040 (c!724708 x!738013))))))))

(declare-fun b!4265056 () Bool)

(assert (=> b!4265056 (= e!2648258 e!2648259)))

(declare-fun c!724834 () Bool)

(assert (=> b!4265056 (= c!724834 (is-Leaf!22031 (left!35040 (c!724708 x!738013))))))

(assert (= (and d!1256605 c!724833) b!4265055))

(assert (= (and d!1256605 (not c!724833)) b!4265056))

(assert (= (and b!4265056 c!724834) b!4265057))

(assert (= (and b!4265056 (not c!724834)) b!4265058))

(declare-fun m!4855307 () Bool)

(assert (=> b!4265057 m!4855307))

(declare-fun m!4855309 () Bool)

(assert (=> b!4265058 m!4855309))

(declare-fun m!4855311 () Bool)

(assert (=> b!4265058 m!4855311))

(assert (=> b!4265058 m!4855309))

(assert (=> b!4265058 m!4855311))

(declare-fun m!4855313 () Bool)

(assert (=> b!4265058 m!4855313))

(assert (=> b!4264942 d!1256605))

(declare-fun b!4265061 () Bool)

(declare-fun e!2648261 () List!47392)

(assert (=> b!4265061 (= e!2648261 (list!17077 (xs!17556 (right!35370 (c!724708 x!738013)))))))

(declare-fun b!4265059 () Bool)

(declare-fun e!2648260 () List!47392)

(assert (=> b!4265059 (= e!2648260 Nil!47268)))

(declare-fun d!1256607 () Bool)

(declare-fun c!724835 () Bool)

(assert (=> d!1256607 (= c!724835 (is-Empty!14250 (right!35370 (c!724708 x!738013))))))

(assert (=> d!1256607 (= (list!17075 (right!35370 (c!724708 x!738013))) e!2648260)))

(declare-fun b!4265062 () Bool)

(assert (=> b!4265062 (= e!2648261 (++!12049 (list!17075 (left!35040 (right!35370 (c!724708 x!738013)))) (list!17075 (right!35370 (right!35370 (c!724708 x!738013))))))))

(declare-fun b!4265060 () Bool)

(assert (=> b!4265060 (= e!2648260 e!2648261)))

(declare-fun c!724836 () Bool)

(assert (=> b!4265060 (= c!724836 (is-Leaf!22031 (right!35370 (c!724708 x!738013))))))

(assert (= (and d!1256607 c!724835) b!4265059))

(assert (= (and d!1256607 (not c!724835)) b!4265060))

(assert (= (and b!4265060 c!724836) b!4265061))

(assert (= (and b!4265060 (not c!724836)) b!4265062))

(declare-fun m!4855315 () Bool)

(assert (=> b!4265061 m!4855315))

(declare-fun m!4855317 () Bool)

(assert (=> b!4265062 m!4855317))

(declare-fun m!4855319 () Bool)

(assert (=> b!4265062 m!4855319))

(assert (=> b!4265062 m!4855317))

(assert (=> b!4265062 m!4855319))

(declare-fun m!4855321 () Bool)

(assert (=> b!4265062 m!4855321))

(assert (=> b!4264942 d!1256607))

(declare-fun d!1256609 () Bool)

(declare-fun e!2648264 () Bool)

(assert (=> d!1256609 e!2648264))

(declare-fun res!1752756 () Bool)

(assert (=> d!1256609 (=> (not res!1752756) (not e!2648264))))

(declare-fun lt!1511531 () BalanceConc!28010)

(assert (=> d!1256609 (= res!1752756 (= (list!17073 lt!1511531) (Cons!47268 #x002B Nil!47268)))))

(declare-fun fromList!917 (List!47392) Conc!14250)

(assert (=> d!1256609 (= lt!1511531 (BalanceConc!28011 (fromList!917 (Cons!47268 #x002B Nil!47268))))))

(assert (=> d!1256609 (= (fromListB!2657 (Cons!47268 #x002B Nil!47268)) lt!1511531)))

(declare-fun b!4265065 () Bool)

(assert (=> b!4265065 (= e!2648264 (isBalanced!3809 (fromList!917 (Cons!47268 #x002B Nil!47268))))))

(assert (= (and d!1256609 res!1752756) b!4265065))

(declare-fun m!4855323 () Bool)

(assert (=> d!1256609 m!4855323))

(declare-fun m!4855325 () Bool)

(assert (=> d!1256609 m!4855325))

(assert (=> b!4265065 m!4855325))

(assert (=> b!4265065 m!4855325))

(declare-fun m!4855327 () Bool)

(assert (=> b!4265065 m!4855327))

(assert (=> d!1256585 d!1256609))

(declare-fun e!2648265 () Bool)

(declare-fun lt!1511532 () List!47392)

(declare-fun b!4265069 () Bool)

(assert (=> b!4265069 (= e!2648265 (or (not (= (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))) Nil!47268)) (= lt!1511532 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(declare-fun b!4265068 () Bool)

(declare-fun res!1752757 () Bool)

(assert (=> b!4265068 (=> (not res!1752757) (not e!2648265))))

(assert (=> b!4265068 (= res!1752757 (= (size!34622 lt!1511532) (+ (size!34622 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) (size!34622 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))))

(declare-fun b!4265067 () Bool)

(declare-fun e!2648266 () List!47392)

(assert (=> b!4265067 (= e!2648266 (Cons!47268 (h!52688 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) (++!12049 (t!353461 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(declare-fun b!4265066 () Bool)

(assert (=> b!4265066 (= e!2648266 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))

(declare-fun d!1256611 () Bool)

(assert (=> d!1256611 e!2648265))

(declare-fun res!1752758 () Bool)

(assert (=> d!1256611 (=> (not res!1752758) (not e!2648265))))

(assert (=> d!1256611 (= res!1752758 (= (content!7469 lt!1511532) (set.union (content!7469 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) (content!7469 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))))

(assert (=> d!1256611 (= lt!1511532 e!2648266)))

(declare-fun c!724838 () Bool)

(assert (=> d!1256611 (= c!724838 (is-Nil!47268 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))

(assert (=> d!1256611 (= (++!12049 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))) (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) lt!1511532)))

(assert (= (and d!1256611 c!724838) b!4265066))

(assert (= (and d!1256611 (not c!724838)) b!4265067))

(assert (= (and d!1256611 res!1752758) b!4265068))

(assert (= (and b!4265068 res!1752757) b!4265069))

(declare-fun m!4855329 () Bool)

(assert (=> b!4265068 m!4855329))

(assert (=> b!4265068 m!4855141))

(declare-fun m!4855331 () Bool)

(assert (=> b!4265068 m!4855331))

(assert (=> b!4265068 m!4855143))

(declare-fun m!4855333 () Bool)

(assert (=> b!4265068 m!4855333))

(assert (=> b!4265067 m!4855143))

(declare-fun m!4855335 () Bool)

(assert (=> b!4265067 m!4855335))

(declare-fun m!4855337 () Bool)

(assert (=> d!1256611 m!4855337))

(assert (=> d!1256611 m!4855141))

(declare-fun m!4855339 () Bool)

(assert (=> d!1256611 m!4855339))

(assert (=> d!1256611 m!4855143))

(declare-fun m!4855341 () Bool)

(assert (=> d!1256611 m!4855341))

(assert (=> b!4264938 d!1256611))

(declare-fun b!4265072 () Bool)

(declare-fun e!2648268 () List!47392)

(assert (=> b!4265072 (= e!2648268 (list!17077 (xs!17556 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))

(declare-fun b!4265070 () Bool)

(declare-fun e!2648267 () List!47392)

(assert (=> b!4265070 (= e!2648267 Nil!47268)))

(declare-fun d!1256613 () Bool)

(declare-fun c!724839 () Bool)

(assert (=> d!1256613 (= c!724839 (is-Empty!14250 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))

(assert (=> d!1256613 (= (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))) e!2648267)))

(declare-fun b!4265073 () Bool)

(assert (=> b!4265073 (= e!2648268 (++!12049 (list!17075 (left!35040 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) (list!17075 (right!35370 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(declare-fun b!4265071 () Bool)

(assert (=> b!4265071 (= e!2648267 e!2648268)))

(declare-fun c!724840 () Bool)

(assert (=> b!4265071 (= c!724840 (is-Leaf!22031 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))

(assert (= (and d!1256613 c!724839) b!4265070))

(assert (= (and d!1256613 (not c!724839)) b!4265071))

(assert (= (and b!4265071 c!724840) b!4265072))

(assert (= (and b!4265071 (not c!724840)) b!4265073))

(declare-fun m!4855343 () Bool)

(assert (=> b!4265072 m!4855343))

(declare-fun m!4855345 () Bool)

(assert (=> b!4265073 m!4855345))

(declare-fun m!4855347 () Bool)

(assert (=> b!4265073 m!4855347))

(assert (=> b!4265073 m!4855345))

(assert (=> b!4265073 m!4855347))

(declare-fun m!4855349 () Bool)

(assert (=> b!4265073 m!4855349))

(assert (=> b!4264938 d!1256613))

(declare-fun b!4265076 () Bool)

(declare-fun e!2648270 () List!47392)

(assert (=> b!4265076 (= e!2648270 (list!17077 (xs!17556 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))

(declare-fun b!4265074 () Bool)

(declare-fun e!2648269 () List!47392)

(assert (=> b!4265074 (= e!2648269 Nil!47268)))

(declare-fun d!1256615 () Bool)

(declare-fun c!724841 () Bool)

(assert (=> d!1256615 (= c!724841 (is-Empty!14250 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))

(assert (=> d!1256615 (= (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))) e!2648269)))

(declare-fun b!4265077 () Bool)

(assert (=> b!4265077 (= e!2648270 (++!12049 (list!17075 (left!35040 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) (list!17075 (right!35370 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(declare-fun b!4265075 () Bool)

(assert (=> b!4265075 (= e!2648269 e!2648270)))

(declare-fun c!724842 () Bool)

(assert (=> b!4265075 (= c!724842 (is-Leaf!22031 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))

(assert (= (and d!1256615 c!724841) b!4265074))

(assert (= (and d!1256615 (not c!724841)) b!4265075))

(assert (= (and b!4265075 c!724842) b!4265076))

(assert (= (and b!4265075 (not c!724842)) b!4265077))

(declare-fun m!4855351 () Bool)

(assert (=> b!4265076 m!4855351))

(declare-fun m!4855353 () Bool)

(assert (=> b!4265077 m!4855353))

(declare-fun m!4855355 () Bool)

(assert (=> b!4265077 m!4855355))

(assert (=> b!4265077 m!4855353))

(assert (=> b!4265077 m!4855355))

(declare-fun m!4855357 () Bool)

(assert (=> b!4265077 m!4855357))

(assert (=> b!4264938 d!1256615))

(declare-fun d!1256617 () Bool)

(assert (=> d!1256617 (= (seqFromList!5846 (Cons!47268 #x002D Nil!47268)) (fromListB!2657 (Cons!47268 #x002D Nil!47268)))))

(declare-fun bs!599252 () Bool)

(assert (= bs!599252 d!1256617))

(declare-fun m!4855359 () Bool)

(assert (=> bs!599252 m!4855359))

(assert (=> d!1256573 d!1256617))

(declare-fun d!1256619 () Bool)

(assert (=> d!1256619 (= (list!17077 (xs!17556 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))) (innerList!14310 (xs!17556 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))

(assert (=> b!4264937 d!1256619))

(declare-fun bs!599253 () Bool)

(declare-fun s!239094 () Bool)

(assert (= bs!599253 (and neg-inst!1556 s!239094)))

(assert (=> bs!599253 (=> true (= (list!17073 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))) (list!17073 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))

(declare-fun m!4855361 () Bool)

(assert (=> m!4855055 m!4855361))

(declare-fun m!4855363 () Bool)

(assert (=> m!4855055 m!4855363))

(declare-fun m!4855365 () Bool)

(assert (=> m!4855055 m!4855365))

(assert (=> m!4855055 s!239094))

(push 1)

(assert (not d!1256587))

(assert (not d!1256565))

(assert (not b!4264777))

(assert (not b!4264951))

(assert (not b!4265065))

(assert (not b!4265012))

(assert (not b!4265058))

(assert (not b!4265067))

(assert (not d!1256591))

(assert (not b!4264975))

(assert (not bm!294036))

(assert (not b!4264989))

(assert (not b!4265046))

(assert (not b!4265072))

(assert (not d!1256589))

(assert (not b!4264949))

(assert (not b!4265062))

(assert (not d!1256611))

(assert (not d!1256549))

(assert (not b!4265048))

(assert (not b!4264988))

(assert (not b!4265057))

(assert (not d!1256577))

(assert (not d!1256581))

(assert (not b!4265053))

(assert (not b!4265013))

(assert (not d!1256551))

(assert (not b!4265077))

(assert (not b!4265068))

(assert (not b!4265061))

(assert (not d!1256609))

(assert (not d!1256575))

(assert (not d!1256563))

(assert (not b!4264977))

(assert (not b!4265076))

(assert (not b!4265050))

(assert (not d!1256617))

(assert (not d!1256569))

(assert (not d!1256567))

(assert (not b!4265073))

(assert (not b!4265052))

(assert (not bs!599253))

(assert (not d!1256603))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1256653 () Bool)

(declare-fun lt!1511539 () Int)

(assert (=> d!1256653 (>= lt!1511539 0)))

(declare-fun e!2648287 () Int)

(assert (=> d!1256653 (= lt!1511539 e!2648287)))

(declare-fun c!724855 () Bool)

(assert (=> d!1256653 (= c!724855 (is-Nil!47268 lt!1511512))))

(assert (=> d!1256653 (= (size!34622 lt!1511512) lt!1511539)))

(declare-fun b!4265110 () Bool)

(assert (=> b!4265110 (= e!2648287 0)))

(declare-fun b!4265111 () Bool)

(assert (=> b!4265111 (= e!2648287 (+ 1 (size!34622 (t!353461 lt!1511512))))))

(assert (= (and d!1256653 c!724855) b!4265110))

(assert (= (and d!1256653 (not c!724855)) b!4265111))

(declare-fun m!4855435 () Bool)

(assert (=> b!4265111 m!4855435))

(assert (=> b!4265013 d!1256653))

(declare-fun d!1256659 () Bool)

(declare-fun lt!1511540 () Int)

(assert (=> d!1256659 (>= lt!1511540 0)))

(declare-fun e!2648288 () Int)

(assert (=> d!1256659 (= lt!1511540 e!2648288)))

(declare-fun c!724856 () Bool)

(assert (=> d!1256659 (= c!724856 (is-Nil!47268 (list!17075 (c!724708 x!738013))))))

(assert (=> d!1256659 (= (size!34622 (list!17075 (c!724708 x!738013))) lt!1511540)))

(declare-fun b!4265112 () Bool)

(assert (=> b!4265112 (= e!2648288 0)))

(declare-fun b!4265113 () Bool)

(assert (=> b!4265113 (= e!2648288 (+ 1 (size!34622 (t!353461 (list!17075 (c!724708 x!738013))))))))

(assert (= (and d!1256659 c!724856) b!4265112))

(assert (= (and d!1256659 (not c!724856)) b!4265113))

(declare-fun m!4855437 () Bool)

(assert (=> b!4265113 m!4855437))

(assert (=> b!4265013 d!1256659))

(declare-fun d!1256661 () Bool)

(declare-fun lt!1511541 () Int)

(assert (=> d!1256661 (>= lt!1511541 0)))

(declare-fun e!2648289 () Int)

(assert (=> d!1256661 (= lt!1511541 e!2648289)))

(declare-fun c!724857 () Bool)

(assert (=> d!1256661 (= c!724857 (is-Nil!47268 (efficientList$default$2!146 (c!724708 x!738013))))))

(assert (=> d!1256661 (= (size!34622 (efficientList$default$2!146 (c!724708 x!738013))) lt!1511541)))

(declare-fun b!4265114 () Bool)

(assert (=> b!4265114 (= e!2648289 0)))

(declare-fun b!4265115 () Bool)

(assert (=> b!4265115 (= e!2648289 (+ 1 (size!34622 (t!353461 (efficientList$default$2!146 (c!724708 x!738013))))))))

(assert (= (and d!1256661 c!724857) b!4265114))

(assert (= (and d!1256661 (not c!724857)) b!4265115))

(declare-fun m!4855439 () Bool)

(assert (=> b!4265115 m!4855439))

(assert (=> b!4265013 d!1256661))

(declare-fun b!4265119 () Bool)

(declare-fun e!2648290 () Bool)

(declare-fun lt!1511542 () List!47392)

(assert (=> b!4265119 (= e!2648290 (or (not (= (efficientList$default$2!146 (c!724708 x!738013)) Nil!47268)) (= lt!1511542 (t!353461 (list!17075 (c!724708 x!738013))))))))

(declare-fun b!4265118 () Bool)

(declare-fun res!1752767 () Bool)

(assert (=> b!4265118 (=> (not res!1752767) (not e!2648290))))

(assert (=> b!4265118 (= res!1752767 (= (size!34622 lt!1511542) (+ (size!34622 (t!353461 (list!17075 (c!724708 x!738013)))) (size!34622 (efficientList$default$2!146 (c!724708 x!738013))))))))

(declare-fun b!4265117 () Bool)

(declare-fun e!2648291 () List!47392)

(assert (=> b!4265117 (= e!2648291 (Cons!47268 (h!52688 (t!353461 (list!17075 (c!724708 x!738013)))) (++!12049 (t!353461 (t!353461 (list!17075 (c!724708 x!738013)))) (efficientList$default$2!146 (c!724708 x!738013)))))))

(declare-fun b!4265116 () Bool)

(assert (=> b!4265116 (= e!2648291 (efficientList$default$2!146 (c!724708 x!738013)))))

(declare-fun d!1256663 () Bool)

(assert (=> d!1256663 e!2648290))

(declare-fun res!1752768 () Bool)

(assert (=> d!1256663 (=> (not res!1752768) (not e!2648290))))

(assert (=> d!1256663 (= res!1752768 (= (content!7469 lt!1511542) (set.union (content!7469 (t!353461 (list!17075 (c!724708 x!738013)))) (content!7469 (efficientList$default$2!146 (c!724708 x!738013))))))))

(assert (=> d!1256663 (= lt!1511542 e!2648291)))

(declare-fun c!724858 () Bool)

(assert (=> d!1256663 (= c!724858 (is-Nil!47268 (t!353461 (list!17075 (c!724708 x!738013)))))))

(assert (=> d!1256663 (= (++!12049 (t!353461 (list!17075 (c!724708 x!738013))) (efficientList$default$2!146 (c!724708 x!738013))) lt!1511542)))

(assert (= (and d!1256663 c!724858) b!4265116))

(assert (= (and d!1256663 (not c!724858)) b!4265117))

(assert (= (and d!1256663 res!1752768) b!4265118))

(assert (= (and b!4265118 res!1752767) b!4265119))

(declare-fun m!4855441 () Bool)

(assert (=> b!4265118 m!4855441))

(assert (=> b!4265118 m!4855437))

(assert (=> b!4265118 m!4855135))

(assert (=> b!4265118 m!4855239))

(assert (=> b!4265117 m!4855135))

(declare-fun m!4855443 () Bool)

(assert (=> b!4265117 m!4855443))

(declare-fun m!4855445 () Bool)

(assert (=> d!1256663 m!4855445))

(assert (=> d!1256663 m!4855287))

(assert (=> d!1256663 m!4855135))

(assert (=> d!1256663 m!4855247))

(assert (=> b!4265012 d!1256663))

(declare-fun d!1256665 () Bool)

(assert (=> d!1256665 (= (list!17073 lt!1511531) (list!17075 (c!724708 lt!1511531)))))

(declare-fun bs!599266 () Bool)

(assert (= bs!599266 d!1256665))

(declare-fun m!4855447 () Bool)

(assert (=> bs!599266 m!4855447))

(assert (=> d!1256609 d!1256665))

(declare-fun d!1256667 () Bool)

(declare-fun e!2648297 () Bool)

(assert (=> d!1256667 e!2648297))

(declare-fun res!1752771 () Bool)

(assert (=> d!1256667 (=> (not res!1752771) (not e!2648297))))

(declare-fun lt!1511545 () Conc!14250)

(assert (=> d!1256667 (= res!1752771 (= (list!17075 lt!1511545) (Cons!47268 #x002B Nil!47268)))))

(declare-fun choose!25996 (List!47392) Conc!14250)

(assert (=> d!1256667 (= lt!1511545 (choose!25996 (Cons!47268 #x002B Nil!47268)))))

(assert (=> d!1256667 (= (fromList!917 (Cons!47268 #x002B Nil!47268)) lt!1511545)))

(declare-fun b!4265128 () Bool)

(assert (=> b!4265128 (= e!2648297 (isBalanced!3809 lt!1511545))))

(assert (= (and d!1256667 res!1752771) b!4265128))

(declare-fun m!4855461 () Bool)

(assert (=> d!1256667 m!4855461))

(declare-fun m!4855463 () Bool)

(assert (=> d!1256667 m!4855463))

(declare-fun m!4855465 () Bool)

(assert (=> b!4265128 m!4855465))

(assert (=> d!1256609 d!1256667))

(declare-fun d!1256675 () Bool)

(declare-fun c!724863 () Bool)

(assert (=> d!1256675 (= c!724863 (is-Node!14250 (left!35040 (c!724708 x!738013))))))

(declare-fun e!2648298 () Bool)

(assert (=> d!1256675 (= (inv!62190 (left!35040 (c!724708 x!738013))) e!2648298)))

(declare-fun b!4265129 () Bool)

(assert (=> b!4265129 (= e!2648298 (inv!62194 (left!35040 (c!724708 x!738013))))))

(declare-fun b!4265130 () Bool)

(declare-fun e!2648299 () Bool)

(assert (=> b!4265130 (= e!2648298 e!2648299)))

(declare-fun res!1752772 () Bool)

(assert (=> b!4265130 (= res!1752772 (not (is-Leaf!22031 (left!35040 (c!724708 x!738013)))))))

(assert (=> b!4265130 (=> res!1752772 e!2648299)))

(declare-fun b!4265131 () Bool)

(assert (=> b!4265131 (= e!2648299 (inv!62195 (left!35040 (c!724708 x!738013))))))

(assert (= (and d!1256675 c!724863) b!4265129))

(assert (= (and d!1256675 (not c!724863)) b!4265130))

(assert (= (and b!4265130 (not res!1752772)) b!4265131))

(declare-fun m!4855467 () Bool)

(assert (=> b!4265129 m!4855467))

(declare-fun m!4855469 () Bool)

(assert (=> b!4265131 m!4855469))

(assert (=> b!4264988 d!1256675))

(declare-fun d!1256677 () Bool)

(declare-fun c!724864 () Bool)

(assert (=> d!1256677 (= c!724864 (is-Node!14250 (right!35370 (c!724708 x!738013))))))

(declare-fun e!2648302 () Bool)

(assert (=> d!1256677 (= (inv!62190 (right!35370 (c!724708 x!738013))) e!2648302)))

(declare-fun b!4265134 () Bool)

(assert (=> b!4265134 (= e!2648302 (inv!62194 (right!35370 (c!724708 x!738013))))))

(declare-fun b!4265135 () Bool)

(declare-fun e!2648303 () Bool)

(assert (=> b!4265135 (= e!2648302 e!2648303)))

(declare-fun res!1752775 () Bool)

(assert (=> b!4265135 (= res!1752775 (not (is-Leaf!22031 (right!35370 (c!724708 x!738013)))))))

(assert (=> b!4265135 (=> res!1752775 e!2648303)))

(declare-fun b!4265136 () Bool)

(assert (=> b!4265136 (= e!2648303 (inv!62195 (right!35370 (c!724708 x!738013))))))

(assert (= (and d!1256677 c!724864) b!4265134))

(assert (= (and d!1256677 (not c!724864)) b!4265135))

(assert (= (and b!4265135 (not res!1752775)) b!4265136))

(declare-fun m!4855471 () Bool)

(assert (=> b!4265134 m!4855471))

(declare-fun m!4855473 () Bool)

(assert (=> b!4265136 m!4855473))

(assert (=> b!4264988 d!1256677))

(declare-fun d!1256679 () Bool)

(declare-fun e!2648304 () Bool)

(assert (=> d!1256679 e!2648304))

(declare-fun res!1752776 () Bool)

(assert (=> d!1256679 (=> (not res!1752776) (not e!2648304))))

(declare-fun lt!1511548 () BalanceConc!28010)

(assert (=> d!1256679 (= res!1752776 (= (list!17073 lt!1511548) (Cons!47268 #x002D Nil!47268)))))

(assert (=> d!1256679 (= lt!1511548 (BalanceConc!28011 (fromList!917 (Cons!47268 #x002D Nil!47268))))))

(assert (=> d!1256679 (= (fromListB!2657 (Cons!47268 #x002D Nil!47268)) lt!1511548)))

(declare-fun b!4265137 () Bool)

(assert (=> b!4265137 (= e!2648304 (isBalanced!3809 (fromList!917 (Cons!47268 #x002D Nil!47268))))))

(assert (= (and d!1256679 res!1752776) b!4265137))

(declare-fun m!4855475 () Bool)

(assert (=> d!1256679 m!4855475))

(declare-fun m!4855477 () Bool)

(assert (=> d!1256679 m!4855477))

(assert (=> b!4265137 m!4855477))

(assert (=> b!4265137 m!4855477))

(declare-fun m!4855481 () Bool)

(assert (=> b!4265137 m!4855481))

(assert (=> d!1256617 d!1256679))

(declare-fun d!1256681 () Bool)

(assert (=> d!1256681 (= (inv!62196 (xs!17556 (c!724708 x!738013))) (<= (size!34622 (innerList!14310 (xs!17556 (c!724708 x!738013)))) 2147483647))))

(declare-fun bs!599267 () Bool)

(assert (= bs!599267 d!1256681))

(declare-fun m!4855487 () Bool)

(assert (=> bs!599267 m!4855487))

(assert (=> b!4264989 d!1256681))

(declare-fun d!1256687 () Bool)

(declare-fun c!724866 () Bool)

(assert (=> d!1256687 (= c!724866 (is-Nil!47268 lt!1511532))))

(declare-fun e!2648308 () (Set (_ BitVec 16)))

(assert (=> d!1256687 (= (content!7469 lt!1511532) e!2648308)))

(declare-fun b!4265143 () Bool)

(assert (=> b!4265143 (= e!2648308 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265144 () Bool)

(assert (=> b!4265144 (= e!2648308 (set.union (set.insert (h!52688 lt!1511532) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 lt!1511532))))))

(assert (= (and d!1256687 c!724866) b!4265143))

(assert (= (and d!1256687 (not c!724866)) b!4265144))

(declare-fun m!4855503 () Bool)

(assert (=> b!4265144 m!4855503))

(declare-fun m!4855505 () Bool)

(assert (=> b!4265144 m!4855505))

(assert (=> d!1256611 d!1256687))

(declare-fun d!1256691 () Bool)

(declare-fun c!724869 () Bool)

(assert (=> d!1256691 (= c!724869 (is-Nil!47268 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))

(declare-fun e!2648311 () (Set (_ BitVec 16)))

(assert (=> d!1256691 (= (content!7469 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) e!2648311)))

(declare-fun b!4265149 () Bool)

(assert (=> b!4265149 (= e!2648311 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265150 () Bool)

(assert (=> b!4265150 (= e!2648311 (set.union (set.insert (h!52688 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))))

(assert (= (and d!1256691 c!724869) b!4265149))

(assert (= (and d!1256691 (not c!724869)) b!4265150))

(declare-fun m!4855511 () Bool)

(assert (=> b!4265150 m!4855511))

(declare-fun m!4855513 () Bool)

(assert (=> b!4265150 m!4855513))

(assert (=> d!1256611 d!1256691))

(declare-fun d!1256693 () Bool)

(declare-fun c!724870 () Bool)

(assert (=> d!1256693 (= c!724870 (is-Nil!47268 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))

(declare-fun e!2648312 () (Set (_ BitVec 16)))

(assert (=> d!1256693 (= (content!7469 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) e!2648312)))

(declare-fun b!4265151 () Bool)

(assert (=> b!4265151 (= e!2648312 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265152 () Bool)

(assert (=> b!4265152 (= e!2648312 (set.union (set.insert (h!52688 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))))

(assert (= (and d!1256693 c!724870) b!4265151))

(assert (= (and d!1256693 (not c!724870)) b!4265152))

(declare-fun m!4855519 () Bool)

(assert (=> b!4265152 m!4855519))

(declare-fun m!4855521 () Bool)

(assert (=> b!4265152 m!4855521))

(assert (=> d!1256611 d!1256693))

(declare-fun e!2648315 () Bool)

(declare-fun b!4265160 () Bool)

(declare-fun lt!1511551 () List!47392)

(assert (=> b!4265160 (= e!2648315 (or (not (= (efficientList$default$2!146 (c!724708 x!738013)) Nil!47268)) (= lt!1511551 e!2648211)))))

(declare-fun b!4265159 () Bool)

(declare-fun res!1752780 () Bool)

(assert (=> b!4265159 (=> (not res!1752780) (not e!2648315))))

(assert (=> b!4265159 (= res!1752780 (= (size!34622 lt!1511551) (+ (size!34622 e!2648211) (size!34622 (efficientList$default$2!146 (c!724708 x!738013))))))))

(declare-fun b!4265158 () Bool)

(declare-fun e!2648316 () List!47392)

(assert (=> b!4265158 (= e!2648316 (Cons!47268 (h!52688 e!2648211) (++!12049 (t!353461 e!2648211) (efficientList$default$2!146 (c!724708 x!738013)))))))

(declare-fun b!4265157 () Bool)

(assert (=> b!4265157 (= e!2648316 (efficientList$default$2!146 (c!724708 x!738013)))))

(declare-fun d!1256697 () Bool)

(assert (=> d!1256697 e!2648315))

(declare-fun res!1752781 () Bool)

(assert (=> d!1256697 (=> (not res!1752781) (not e!2648315))))

(assert (=> d!1256697 (= res!1752781 (= (content!7469 lt!1511551) (set.union (content!7469 e!2648211) (content!7469 (efficientList$default$2!146 (c!724708 x!738013))))))))

(assert (=> d!1256697 (= lt!1511551 e!2648316)))

(declare-fun c!724873 () Bool)

(assert (=> d!1256697 (= c!724873 (is-Nil!47268 e!2648211))))

(assert (=> d!1256697 (= (++!12049 e!2648211 (efficientList$default$2!146 (c!724708 x!738013))) lt!1511551)))

(assert (= (and d!1256697 c!724873) b!4265157))

(assert (= (and d!1256697 (not c!724873)) b!4265158))

(assert (= (and d!1256697 res!1752781) b!4265159))

(assert (= (and b!4265159 res!1752780) b!4265160))

(declare-fun m!4855533 () Bool)

(assert (=> b!4265159 m!4855533))

(declare-fun m!4855535 () Bool)

(assert (=> b!4265159 m!4855535))

(assert (=> b!4265159 m!4855135))

(assert (=> b!4265159 m!4855239))

(assert (=> b!4265158 m!4855135))

(declare-fun m!4855537 () Bool)

(assert (=> b!4265158 m!4855537))

(declare-fun m!4855539 () Bool)

(assert (=> d!1256697 m!4855539))

(declare-fun m!4855541 () Bool)

(assert (=> d!1256697 m!4855541))

(assert (=> d!1256697 m!4855135))

(assert (=> d!1256697 m!4855247))

(assert (=> bm!294036 d!1256697))

(declare-fun d!1256701 () Bool)

(declare-fun c!724874 () Bool)

(assert (=> d!1256701 (= c!724874 (is-Nil!47268 lt!1511528))))

(declare-fun e!2648317 () (Set (_ BitVec 16)))

(assert (=> d!1256701 (= (content!7469 lt!1511528) e!2648317)))

(declare-fun b!4265161 () Bool)

(assert (=> b!4265161 (= e!2648317 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265162 () Bool)

(assert (=> b!4265162 (= e!2648317 (set.union (set.insert (h!52688 lt!1511528) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 lt!1511528))))))

(assert (= (and d!1256701 c!724874) b!4265161))

(assert (= (and d!1256701 (not c!724874)) b!4265162))

(declare-fun m!4855547 () Bool)

(assert (=> b!4265162 m!4855547))

(declare-fun m!4855549 () Bool)

(assert (=> b!4265162 m!4855549))

(assert (=> d!1256603 d!1256701))

(declare-fun d!1256703 () Bool)

(declare-fun c!724875 () Bool)

(assert (=> d!1256703 (= c!724875 (is-Nil!47268 (list!17075 (left!35040 (c!724708 x!738013)))))))

(declare-fun e!2648318 () (Set (_ BitVec 16)))

(assert (=> d!1256703 (= (content!7469 (list!17075 (left!35040 (c!724708 x!738013)))) e!2648318)))

(declare-fun b!4265163 () Bool)

(assert (=> b!4265163 (= e!2648318 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265164 () Bool)

(assert (=> b!4265164 (= e!2648318 (set.union (set.insert (h!52688 (list!17075 (left!35040 (c!724708 x!738013)))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (list!17075 (left!35040 (c!724708 x!738013)))))))))

(assert (= (and d!1256703 c!724875) b!4265163))

(assert (= (and d!1256703 (not c!724875)) b!4265164))

(declare-fun m!4855553 () Bool)

(assert (=> b!4265164 m!4855553))

(declare-fun m!4855555 () Bool)

(assert (=> b!4265164 m!4855555))

(assert (=> d!1256603 d!1256703))

(declare-fun d!1256705 () Bool)

(declare-fun c!724876 () Bool)

(assert (=> d!1256705 (= c!724876 (is-Nil!47268 (list!17075 (right!35370 (c!724708 x!738013)))))))

(declare-fun e!2648319 () (Set (_ BitVec 16)))

(assert (=> d!1256705 (= (content!7469 (list!17075 (right!35370 (c!724708 x!738013)))) e!2648319)))

(declare-fun b!4265165 () Bool)

(assert (=> b!4265165 (= e!2648319 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265166 () Bool)

(assert (=> b!4265166 (= e!2648319 (set.union (set.insert (h!52688 (list!17075 (right!35370 (c!724708 x!738013)))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (list!17075 (right!35370 (c!724708 x!738013)))))))))

(assert (= (and d!1256705 c!724876) b!4265165))

(assert (= (and d!1256705 (not c!724876)) b!4265166))

(declare-fun m!4855557 () Bool)

(assert (=> b!4265166 m!4855557))

(declare-fun m!4855559 () Bool)

(assert (=> b!4265166 m!4855559))

(assert (=> d!1256603 d!1256705))

(declare-fun d!1256707 () Bool)

(declare-fun res!1752788 () Bool)

(declare-fun e!2648322 () Bool)

(assert (=> d!1256707 (=> (not res!1752788) (not e!2648322))))

(declare-fun size!34624 (Conc!14250) Int)

(assert (=> d!1256707 (= res!1752788 (= (csize!28730 (c!724708 x!738013)) (+ (size!34624 (left!35040 (c!724708 x!738013))) (size!34624 (right!35370 (c!724708 x!738013))))))))

(assert (=> d!1256707 (= (inv!62194 (c!724708 x!738013)) e!2648322)))

(declare-fun b!4265173 () Bool)

(declare-fun res!1752789 () Bool)

(assert (=> b!4265173 (=> (not res!1752789) (not e!2648322))))

(assert (=> b!4265173 (= res!1752789 (and (not (= (left!35040 (c!724708 x!738013)) Empty!14250)) (not (= (right!35370 (c!724708 x!738013)) Empty!14250))))))

(declare-fun b!4265174 () Bool)

(declare-fun res!1752790 () Bool)

(assert (=> b!4265174 (=> (not res!1752790) (not e!2648322))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1875 (Conc!14250) Int)

(assert (=> b!4265174 (= res!1752790 (= (cheight!14461 (c!724708 x!738013)) (+ (max!0 (height!1875 (left!35040 (c!724708 x!738013))) (height!1875 (right!35370 (c!724708 x!738013)))) 1)))))

(declare-fun b!4265175 () Bool)

(assert (=> b!4265175 (= e!2648322 (<= 0 (cheight!14461 (c!724708 x!738013))))))

(assert (= (and d!1256707 res!1752788) b!4265173))

(assert (= (and b!4265173 res!1752789) b!4265174))

(assert (= (and b!4265174 res!1752790) b!4265175))

(declare-fun m!4855561 () Bool)

(assert (=> d!1256707 m!4855561))

(declare-fun m!4855563 () Bool)

(assert (=> d!1256707 m!4855563))

(declare-fun m!4855565 () Bool)

(assert (=> b!4265174 m!4855565))

(declare-fun m!4855567 () Bool)

(assert (=> b!4265174 m!4855567))

(assert (=> b!4265174 m!4855565))

(assert (=> b!4265174 m!4855567))

(declare-fun m!4855569 () Bool)

(assert (=> b!4265174 m!4855569))

(assert (=> b!4264949 d!1256707))

(declare-fun d!1256709 () Bool)

(assert (=> d!1256709 (= (seqFromList!5846 (Cons!47268 #x002A Nil!47268)) (fromListB!2657 (Cons!47268 #x002A Nil!47268)))))

(declare-fun bs!599270 () Bool)

(assert (= bs!599270 d!1256709))

(declare-fun m!4855571 () Bool)

(assert (=> bs!599270 m!4855571))

(assert (=> d!1256589 d!1256709))

(declare-fun d!1256711 () Bool)

(declare-fun res!1752795 () Bool)

(declare-fun e!2648325 () Bool)

(assert (=> d!1256711 (=> (not res!1752795) (not e!2648325))))

(assert (=> d!1256711 (= res!1752795 (<= (size!34622 (list!17077 (xs!17556 (c!724708 x!738013)))) 512))))

(assert (=> d!1256711 (= (inv!62195 (c!724708 x!738013)) e!2648325)))

(declare-fun b!4265180 () Bool)

(declare-fun res!1752796 () Bool)

(assert (=> b!4265180 (=> (not res!1752796) (not e!2648325))))

(assert (=> b!4265180 (= res!1752796 (= (csize!28731 (c!724708 x!738013)) (size!34622 (list!17077 (xs!17556 (c!724708 x!738013))))))))

(declare-fun b!4265181 () Bool)

(assert (=> b!4265181 (= e!2648325 (and (> (csize!28731 (c!724708 x!738013)) 0) (<= (csize!28731 (c!724708 x!738013)) 512)))))

(assert (= (and d!1256711 res!1752795) b!4265180))

(assert (= (and b!4265180 res!1752796) b!4265181))

(assert (=> d!1256711 m!4855147))

(assert (=> d!1256711 m!4855147))

(declare-fun m!4855573 () Bool)

(assert (=> d!1256711 m!4855573))

(assert (=> b!4265180 m!4855147))

(assert (=> b!4265180 m!4855147))

(assert (=> b!4265180 m!4855573))

(assert (=> b!4264951 d!1256711))

(declare-fun d!1256713 () Bool)

(declare-fun res!1752814 () Bool)

(declare-fun e!2648330 () Bool)

(assert (=> d!1256713 (=> res!1752814 e!2648330)))

(assert (=> d!1256713 (= res!1752814 (not (is-Node!14250 (c!724708 x!738013))))))

(assert (=> d!1256713 (= (isBalanced!3809 (c!724708 x!738013)) e!2648330)))

(declare-fun b!4265194 () Bool)

(declare-fun e!2648331 () Bool)

(assert (=> b!4265194 (= e!2648330 e!2648331)))

(declare-fun res!1752810 () Bool)

(assert (=> b!4265194 (=> (not res!1752810) (not e!2648331))))

(assert (=> b!4265194 (= res!1752810 (<= (- 1) (- (height!1875 (left!35040 (c!724708 x!738013))) (height!1875 (right!35370 (c!724708 x!738013))))))))

(declare-fun b!4265195 () Bool)

(declare-fun res!1752811 () Bool)

(assert (=> b!4265195 (=> (not res!1752811) (not e!2648331))))

(assert (=> b!4265195 (= res!1752811 (isBalanced!3809 (left!35040 (c!724708 x!738013))))))

(declare-fun b!4265196 () Bool)

(declare-fun res!1752813 () Bool)

(assert (=> b!4265196 (=> (not res!1752813) (not e!2648331))))

(assert (=> b!4265196 (= res!1752813 (<= (- (height!1875 (left!35040 (c!724708 x!738013))) (height!1875 (right!35370 (c!724708 x!738013)))) 1))))

(declare-fun b!4265197 () Bool)

(declare-fun isEmpty!27994 (Conc!14250) Bool)

(assert (=> b!4265197 (= e!2648331 (not (isEmpty!27994 (right!35370 (c!724708 x!738013)))))))

(declare-fun b!4265198 () Bool)

(declare-fun res!1752812 () Bool)

(assert (=> b!4265198 (=> (not res!1752812) (not e!2648331))))

(assert (=> b!4265198 (= res!1752812 (isBalanced!3809 (right!35370 (c!724708 x!738013))))))

(declare-fun b!4265199 () Bool)

(declare-fun res!1752809 () Bool)

(assert (=> b!4265199 (=> (not res!1752809) (not e!2648331))))

(assert (=> b!4265199 (= res!1752809 (not (isEmpty!27994 (left!35040 (c!724708 x!738013)))))))

(assert (= (and d!1256713 (not res!1752814)) b!4265194))

(assert (= (and b!4265194 res!1752810) b!4265196))

(assert (= (and b!4265196 res!1752813) b!4265195))

(assert (= (and b!4265195 res!1752811) b!4265198))

(assert (= (and b!4265198 res!1752812) b!4265199))

(assert (= (and b!4265199 res!1752809) b!4265197))

(assert (=> b!4265194 m!4855565))

(assert (=> b!4265194 m!4855567))

(declare-fun m!4855575 () Bool)

(assert (=> b!4265198 m!4855575))

(declare-fun m!4855577 () Bool)

(assert (=> b!4265195 m!4855577))

(declare-fun m!4855579 () Bool)

(assert (=> b!4265197 m!4855579))

(assert (=> b!4265196 m!4855565))

(assert (=> b!4265196 m!4855567))

(declare-fun m!4855581 () Bool)

(assert (=> b!4265199 m!4855581))

(assert (=> d!1256551 d!1256713))

(declare-fun d!1256715 () Bool)

(declare-fun lt!1511554 () List!47392)

(assert (=> d!1256715 (= lt!1511554 (list!17077 (xs!17556 (c!724708 x!738013))))))

(declare-fun rec!28 (IArray!28505 Int List!47392) List!47392)

(declare-fun size!34625 (IArray!28505) Int)

(assert (=> d!1256715 (= lt!1511554 (rec!28 (xs!17556 (c!724708 x!738013)) (size!34625 (xs!17556 (c!724708 x!738013))) Nil!47268))))

(assert (=> d!1256715 (= (efficientList!421 (xs!17556 (c!724708 x!738013))) lt!1511554)))

(declare-fun bs!599271 () Bool)

(assert (= bs!599271 d!1256715))

(assert (=> bs!599271 m!4855147))

(declare-fun m!4855583 () Bool)

(assert (=> bs!599271 m!4855583))

(assert (=> bs!599271 m!4855583))

(declare-fun m!4855585 () Bool)

(assert (=> bs!599271 m!4855585))

(assert (=> b!4264975 d!1256715))

(declare-fun b!4265200 () Bool)

(declare-fun e!2648332 () List!47392)

(declare-fun lt!1511555 () List!47392)

(assert (=> b!4265200 (= e!2648332 lt!1511555)))

(declare-fun d!1256717 () Bool)

(declare-fun lt!1511559 () List!47392)

(assert (=> d!1256717 (= lt!1511559 (++!12049 (list!17075 (left!35040 (c!724708 x!738013))) (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))))))

(declare-fun e!2648333 () List!47392)

(assert (=> d!1256717 (= lt!1511559 e!2648333)))

(declare-fun c!724878 () Bool)

(assert (=> d!1256717 (= c!724878 (is-Empty!14250 (left!35040 (c!724708 x!738013))))))

(assert (=> d!1256717 (= (efficientList!419 (left!35040 (c!724708 x!738013)) (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))) lt!1511559)))

(declare-fun b!4265201 () Bool)

(declare-fun e!2648334 () List!47392)

(declare-fun call!294045 () List!47392)

(assert (=> b!4265201 (= e!2648334 call!294045)))

(declare-fun bm!294040 () Bool)

(declare-fun c!724877 () Bool)

(declare-fun c!724879 () Bool)

(assert (=> bm!294040 (= c!724877 c!724879)))

(assert (=> bm!294040 (= call!294045 (++!12049 e!2648332 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))))))

(declare-fun b!4265202 () Bool)

(assert (=> b!4265202 (= e!2648333 e!2648334)))

(assert (=> b!4265202 (= c!724879 (is-Leaf!22031 (left!35040 (c!724708 x!738013))))))

(declare-fun b!4265203 () Bool)

(assert (=> b!4265203 (= e!2648332 (efficientList!421 (xs!17556 (left!35040 (c!724708 x!738013)))))))

(declare-fun b!4265204 () Bool)

(assert (=> b!4265204 (= e!2648333 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013))))))

(declare-fun b!4265205 () Bool)

(declare-fun lt!1511556 () Unit!66151)

(declare-fun lt!1511557 () Unit!66151)

(assert (=> b!4265205 (= lt!1511556 lt!1511557)))

(declare-fun lt!1511558 () List!47392)

(assert (=> b!4265205 (= (++!12049 (++!12049 lt!1511558 lt!1511555) (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))) (++!12049 lt!1511558 call!294045))))

(assert (=> b!4265205 (= lt!1511557 (lemmaConcatAssociativity!2693 lt!1511558 lt!1511555 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))))))

(assert (=> b!4265205 (= lt!1511555 (list!17075 (right!35370 (left!35040 (c!724708 x!738013)))))))

(assert (=> b!4265205 (= lt!1511558 (list!17075 (left!35040 (left!35040 (c!724708 x!738013)))))))

(assert (=> b!4265205 (= e!2648334 (efficientList!419 (left!35040 (left!35040 (c!724708 x!738013))) (efficientList!419 (right!35370 (left!35040 (c!724708 x!738013))) (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013))))))))

(assert (= (and d!1256717 c!724878) b!4265204))

(assert (= (and d!1256717 (not c!724878)) b!4265202))

(assert (= (and b!4265202 c!724879) b!4265201))

(assert (= (and b!4265202 (not c!724879)) b!4265205))

(assert (= (or b!4265201 b!4265205) bm!294040))

(assert (= (and bm!294040 c!724877) b!4265203))

(assert (= (and bm!294040 (not c!724877)) b!4265200))

(assert (=> d!1256717 m!4855149))

(assert (=> d!1256717 m!4855149))

(assert (=> d!1256717 m!4855169))

(declare-fun m!4855587 () Bool)

(assert (=> d!1256717 m!4855587))

(assert (=> bm!294040 m!4855169))

(declare-fun m!4855589 () Bool)

(assert (=> bm!294040 m!4855589))

(declare-fun m!4855591 () Bool)

(assert (=> b!4265203 m!4855591))

(declare-fun m!4855593 () Bool)

(assert (=> b!4265205 m!4855593))

(assert (=> b!4265205 m!4855311))

(declare-fun m!4855595 () Bool)

(assert (=> b!4265205 m!4855595))

(declare-fun m!4855597 () Bool)

(assert (=> b!4265205 m!4855597))

(assert (=> b!4265205 m!4855169))

(declare-fun m!4855599 () Bool)

(assert (=> b!4265205 m!4855599))

(declare-fun m!4855601 () Bool)

(assert (=> b!4265205 m!4855601))

(assert (=> b!4265205 m!4855593))

(assert (=> b!4265205 m!4855169))

(declare-fun m!4855603 () Bool)

(assert (=> b!4265205 m!4855603))

(assert (=> b!4265205 m!4855169))

(assert (=> b!4265205 m!4855595))

(assert (=> b!4265205 m!4855309))

(assert (=> b!4264977 d!1256717))

(assert (=> b!4264977 d!1256607))

(declare-fun lt!1511560 () List!47392)

(declare-fun e!2648335 () Bool)

(declare-fun b!4265209 () Bool)

(assert (=> b!4265209 (= e!2648335 (or (not (= lt!1511502 Nil!47268)) (= lt!1511560 lt!1511505)))))

(declare-fun b!4265208 () Bool)

(declare-fun res!1752815 () Bool)

(assert (=> b!4265208 (=> (not res!1752815) (not e!2648335))))

(assert (=> b!4265208 (= res!1752815 (= (size!34622 lt!1511560) (+ (size!34622 lt!1511505) (size!34622 lt!1511502))))))

(declare-fun b!4265207 () Bool)

(declare-fun e!2648336 () List!47392)

(assert (=> b!4265207 (= e!2648336 (Cons!47268 (h!52688 lt!1511505) (++!12049 (t!353461 lt!1511505) lt!1511502)))))

(declare-fun b!4265206 () Bool)

(assert (=> b!4265206 (= e!2648336 lt!1511502)))

(declare-fun d!1256719 () Bool)

(assert (=> d!1256719 e!2648335))

(declare-fun res!1752816 () Bool)

(assert (=> d!1256719 (=> (not res!1752816) (not e!2648335))))

(assert (=> d!1256719 (= res!1752816 (= (content!7469 lt!1511560) (set.union (content!7469 lt!1511505) (content!7469 lt!1511502))))))

(assert (=> d!1256719 (= lt!1511560 e!2648336)))

(declare-fun c!724880 () Bool)

(assert (=> d!1256719 (= c!724880 (is-Nil!47268 lt!1511505))))

(assert (=> d!1256719 (= (++!12049 lt!1511505 lt!1511502) lt!1511560)))

(assert (= (and d!1256719 c!724880) b!4265206))

(assert (= (and d!1256719 (not c!724880)) b!4265207))

(assert (= (and d!1256719 res!1752816) b!4265208))

(assert (= (and b!4265208 res!1752815) b!4265209))

(declare-fun m!4855605 () Bool)

(assert (=> b!4265208 m!4855605))

(declare-fun m!4855607 () Bool)

(assert (=> b!4265208 m!4855607))

(declare-fun m!4855609 () Bool)

(assert (=> b!4265208 m!4855609))

(declare-fun m!4855611 () Bool)

(assert (=> b!4265207 m!4855611))

(declare-fun m!4855613 () Bool)

(assert (=> d!1256719 m!4855613))

(declare-fun m!4855615 () Bool)

(assert (=> d!1256719 m!4855615))

(declare-fun m!4855617 () Bool)

(assert (=> d!1256719 m!4855617))

(assert (=> b!4264977 d!1256719))

(declare-fun lt!1511561 () List!47392)

(declare-fun e!2648337 () Bool)

(declare-fun b!4265213 () Bool)

(assert (=> b!4265213 (= e!2648337 (or (not (= call!294041 Nil!47268)) (= lt!1511561 lt!1511505)))))

(declare-fun b!4265212 () Bool)

(declare-fun res!1752817 () Bool)

(assert (=> b!4265212 (=> (not res!1752817) (not e!2648337))))

(assert (=> b!4265212 (= res!1752817 (= (size!34622 lt!1511561) (+ (size!34622 lt!1511505) (size!34622 call!294041))))))

(declare-fun b!4265211 () Bool)

(declare-fun e!2648338 () List!47392)

(assert (=> b!4265211 (= e!2648338 (Cons!47268 (h!52688 lt!1511505) (++!12049 (t!353461 lt!1511505) call!294041)))))

(declare-fun b!4265210 () Bool)

(assert (=> b!4265210 (= e!2648338 call!294041)))

(declare-fun d!1256721 () Bool)

(assert (=> d!1256721 e!2648337))

(declare-fun res!1752818 () Bool)

(assert (=> d!1256721 (=> (not res!1752818) (not e!2648337))))

(assert (=> d!1256721 (= res!1752818 (= (content!7469 lt!1511561) (set.union (content!7469 lt!1511505) (content!7469 call!294041))))))

(assert (=> d!1256721 (= lt!1511561 e!2648338)))

(declare-fun c!724881 () Bool)

(assert (=> d!1256721 (= c!724881 (is-Nil!47268 lt!1511505))))

(assert (=> d!1256721 (= (++!12049 lt!1511505 call!294041) lt!1511561)))

(assert (= (and d!1256721 c!724881) b!4265210))

(assert (= (and d!1256721 (not c!724881)) b!4265211))

(assert (= (and d!1256721 res!1752818) b!4265212))

(assert (= (and b!4265212 res!1752817) b!4265213))

(declare-fun m!4855619 () Bool)

(assert (=> b!4265212 m!4855619))

(assert (=> b!4265212 m!4855607))

(declare-fun m!4855621 () Bool)

(assert (=> b!4265212 m!4855621))

(declare-fun m!4855623 () Bool)

(assert (=> b!4265211 m!4855623))

(declare-fun m!4855625 () Bool)

(assert (=> d!1256721 m!4855625))

(assert (=> d!1256721 m!4855615))

(declare-fun m!4855627 () Bool)

(assert (=> d!1256721 m!4855627))

(assert (=> b!4264977 d!1256721))

(declare-fun b!4265214 () Bool)

(declare-fun e!2648339 () List!47392)

(declare-fun lt!1511562 () List!47392)

(assert (=> b!4265214 (= e!2648339 lt!1511562)))

(declare-fun d!1256723 () Bool)

(declare-fun lt!1511566 () List!47392)

(assert (=> d!1256723 (= lt!1511566 (++!12049 (list!17075 (right!35370 (c!724708 x!738013))) (efficientList$default$2!146 (c!724708 x!738013))))))

(declare-fun e!2648340 () List!47392)

(assert (=> d!1256723 (= lt!1511566 e!2648340)))

(declare-fun c!724883 () Bool)

(assert (=> d!1256723 (= c!724883 (is-Empty!14250 (right!35370 (c!724708 x!738013))))))

(assert (=> d!1256723 (= (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013))) lt!1511566)))

(declare-fun b!4265215 () Bool)

(declare-fun e!2648341 () List!47392)

(declare-fun call!294046 () List!47392)

(assert (=> b!4265215 (= e!2648341 call!294046)))

(declare-fun bm!294041 () Bool)

(declare-fun c!724882 () Bool)

(declare-fun c!724884 () Bool)

(assert (=> bm!294041 (= c!724882 c!724884)))

(assert (=> bm!294041 (= call!294046 (++!12049 e!2648339 (efficientList$default$2!146 (c!724708 x!738013))))))

(declare-fun b!4265216 () Bool)

(assert (=> b!4265216 (= e!2648340 e!2648341)))

(assert (=> b!4265216 (= c!724884 (is-Leaf!22031 (right!35370 (c!724708 x!738013))))))

(declare-fun b!4265217 () Bool)

(assert (=> b!4265217 (= e!2648339 (efficientList!421 (xs!17556 (right!35370 (c!724708 x!738013)))))))

(declare-fun b!4265218 () Bool)

(assert (=> b!4265218 (= e!2648340 (efficientList$default$2!146 (c!724708 x!738013)))))

(declare-fun b!4265219 () Bool)

(declare-fun lt!1511563 () Unit!66151)

(declare-fun lt!1511564 () Unit!66151)

(assert (=> b!4265219 (= lt!1511563 lt!1511564)))

(declare-fun lt!1511565 () List!47392)

(assert (=> b!4265219 (= (++!12049 (++!12049 lt!1511565 lt!1511562) (efficientList$default$2!146 (c!724708 x!738013))) (++!12049 lt!1511565 call!294046))))

(assert (=> b!4265219 (= lt!1511564 (lemmaConcatAssociativity!2693 lt!1511565 lt!1511562 (efficientList$default$2!146 (c!724708 x!738013))))))

(assert (=> b!4265219 (= lt!1511562 (list!17075 (right!35370 (right!35370 (c!724708 x!738013)))))))

(assert (=> b!4265219 (= lt!1511565 (list!17075 (left!35040 (right!35370 (c!724708 x!738013)))))))

(assert (=> b!4265219 (= e!2648341 (efficientList!419 (left!35040 (right!35370 (c!724708 x!738013))) (efficientList!419 (right!35370 (right!35370 (c!724708 x!738013))) (efficientList$default$2!146 (c!724708 x!738013)))))))

(assert (= (and d!1256723 c!724883) b!4265218))

(assert (= (and d!1256723 (not c!724883)) b!4265216))

(assert (= (and b!4265216 c!724884) b!4265215))

(assert (= (and b!4265216 (not c!724884)) b!4265219))

(assert (= (or b!4265215 b!4265219) bm!294041))

(assert (= (and bm!294041 c!724882) b!4265217))

(assert (= (and bm!294041 (not c!724882)) b!4265214))

(assert (=> d!1256723 m!4855151))

(assert (=> d!1256723 m!4855151))

(assert (=> d!1256723 m!4855135))

(declare-fun m!4855629 () Bool)

(assert (=> d!1256723 m!4855629))

(assert (=> bm!294041 m!4855135))

(declare-fun m!4855631 () Bool)

(assert (=> bm!294041 m!4855631))

(declare-fun m!4855633 () Bool)

(assert (=> b!4265217 m!4855633))

(declare-fun m!4855635 () Bool)

(assert (=> b!4265219 m!4855635))

(assert (=> b!4265219 m!4855319))

(declare-fun m!4855637 () Bool)

(assert (=> b!4265219 m!4855637))

(declare-fun m!4855639 () Bool)

(assert (=> b!4265219 m!4855639))

(assert (=> b!4265219 m!4855135))

(declare-fun m!4855641 () Bool)

(assert (=> b!4265219 m!4855641))

(declare-fun m!4855643 () Bool)

(assert (=> b!4265219 m!4855643))

(assert (=> b!4265219 m!4855635))

(assert (=> b!4265219 m!4855135))

(declare-fun m!4855645 () Bool)

(assert (=> b!4265219 m!4855645))

(assert (=> b!4265219 m!4855135))

(assert (=> b!4265219 m!4855637))

(assert (=> b!4265219 m!4855317))

(assert (=> b!4264977 d!1256723))

(assert (=> b!4264977 d!1256605))

(declare-fun lt!1511567 () List!47392)

(declare-fun e!2648342 () Bool)

(declare-fun b!4265223 () Bool)

(assert (=> b!4265223 (= e!2648342 (or (not (= (efficientList$default$2!146 (c!724708 x!738013)) Nil!47268)) (= lt!1511567 (++!12049 lt!1511505 lt!1511502))))))

(declare-fun b!4265222 () Bool)

(declare-fun res!1752819 () Bool)

(assert (=> b!4265222 (=> (not res!1752819) (not e!2648342))))

(assert (=> b!4265222 (= res!1752819 (= (size!34622 lt!1511567) (+ (size!34622 (++!12049 lt!1511505 lt!1511502)) (size!34622 (efficientList$default$2!146 (c!724708 x!738013))))))))

(declare-fun b!4265221 () Bool)

(declare-fun e!2648343 () List!47392)

(assert (=> b!4265221 (= e!2648343 (Cons!47268 (h!52688 (++!12049 lt!1511505 lt!1511502)) (++!12049 (t!353461 (++!12049 lt!1511505 lt!1511502)) (efficientList$default$2!146 (c!724708 x!738013)))))))

(declare-fun b!4265220 () Bool)

(assert (=> b!4265220 (= e!2648343 (efficientList$default$2!146 (c!724708 x!738013)))))

(declare-fun d!1256725 () Bool)

(assert (=> d!1256725 e!2648342))

(declare-fun res!1752820 () Bool)

(assert (=> d!1256725 (=> (not res!1752820) (not e!2648342))))

(assert (=> d!1256725 (= res!1752820 (= (content!7469 lt!1511567) (set.union (content!7469 (++!12049 lt!1511505 lt!1511502)) (content!7469 (efficientList$default$2!146 (c!724708 x!738013))))))))

(assert (=> d!1256725 (= lt!1511567 e!2648343)))

(declare-fun c!724885 () Bool)

(assert (=> d!1256725 (= c!724885 (is-Nil!47268 (++!12049 lt!1511505 lt!1511502)))))

(assert (=> d!1256725 (= (++!12049 (++!12049 lt!1511505 lt!1511502) (efficientList$default$2!146 (c!724708 x!738013))) lt!1511567)))

(assert (= (and d!1256725 c!724885) b!4265220))

(assert (= (and d!1256725 (not c!724885)) b!4265221))

(assert (= (and d!1256725 res!1752820) b!4265222))

(assert (= (and b!4265222 res!1752819) b!4265223))

(declare-fun m!4855647 () Bool)

(assert (=> b!4265222 m!4855647))

(assert (=> b!4265222 m!4855167))

(declare-fun m!4855649 () Bool)

(assert (=> b!4265222 m!4855649))

(assert (=> b!4265222 m!4855135))

(assert (=> b!4265222 m!4855239))

(assert (=> b!4265221 m!4855135))

(declare-fun m!4855651 () Bool)

(assert (=> b!4265221 m!4855651))

(declare-fun m!4855653 () Bool)

(assert (=> d!1256725 m!4855653))

(assert (=> d!1256725 m!4855167))

(declare-fun m!4855655 () Bool)

(assert (=> d!1256725 m!4855655))

(assert (=> d!1256725 m!4855135))

(assert (=> d!1256725 m!4855247))

(assert (=> b!4264977 d!1256725))

(declare-fun d!1256727 () Bool)

(assert (=> d!1256727 (= (++!12049 (++!12049 lt!1511505 lt!1511502) (efficientList$default$2!146 (c!724708 x!738013))) (++!12049 lt!1511505 (++!12049 lt!1511502 (efficientList$default$2!146 (c!724708 x!738013)))))))

(declare-fun lt!1511570 () Unit!66151)

(declare-fun choose!25997 (List!47392 List!47392 List!47392) Unit!66151)

(assert (=> d!1256727 (= lt!1511570 (choose!25997 lt!1511505 lt!1511502 (efficientList$default$2!146 (c!724708 x!738013))))))

(assert (=> d!1256727 (= (lemmaConcatAssociativity!2693 lt!1511505 lt!1511502 (efficientList$default$2!146 (c!724708 x!738013))) lt!1511570)))

(declare-fun bs!599272 () Bool)

(assert (= bs!599272 d!1256727))

(assert (=> bs!599272 m!4855167))

(assert (=> bs!599272 m!4855167))

(assert (=> bs!599272 m!4855135))

(assert (=> bs!599272 m!4855177))

(assert (=> bs!599272 m!4855135))

(declare-fun m!4855657 () Bool)

(assert (=> bs!599272 m!4855657))

(assert (=> bs!599272 m!4855135))

(declare-fun m!4855659 () Bool)

(assert (=> bs!599272 m!4855659))

(assert (=> bs!599272 m!4855657))

(declare-fun m!4855661 () Bool)

(assert (=> bs!599272 m!4855661))

(assert (=> b!4264977 d!1256727))

(declare-fun d!1256729 () Bool)

(assert (=> d!1256729 (= (list!17073 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))) (list!17075 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))

(declare-fun bs!599273 () Bool)

(assert (= bs!599273 d!1256729))

(declare-fun m!4855663 () Bool)

(assert (=> bs!599273 m!4855663))

(assert (=> bs!599253 d!1256729))

(declare-fun b!4265224 () Bool)

(declare-fun e!2648347 () BalanceConc!28010)

(assert (=> b!4265224 (= e!2648347 (seqFromList!5846 (value!248406 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))

(declare-fun b!4265225 () Bool)

(declare-fun e!2648348 () BalanceConc!28010)

(declare-fun e!2648353 () BalanceConc!28010)

(assert (=> b!4265225 (= e!2648348 e!2648353)))

(declare-fun c!724893 () Bool)

(assert (=> b!4265225 (= c!724893 (is-Div!8223 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))

(declare-fun b!4265226 () Bool)

(declare-fun e!2648351 () BalanceConc!28010)

(assert (=> b!4265226 (= e!2648351 e!2648347)))

(declare-fun c!724887 () Bool)

(assert (=> b!4265226 (= c!724887 (is-Broken!41119 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))

(declare-fun b!4265227 () Bool)

(assert (=> b!4265227 (= e!2648353 stringDivConc!0)))

(declare-fun b!4265228 () Bool)

(declare-fun e!2648352 () BalanceConc!28010)

(declare-fun e!2648345 () BalanceConc!28010)

(assert (=> b!4265228 (= e!2648352 e!2648345)))

(declare-fun c!724890 () Bool)

(assert (=> b!4265228 (= c!724890 (is-Not!8223 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))

(declare-fun b!4265229 () Bool)

(assert (=> b!4265229 (= e!2648352 stringModConc!0)))

(declare-fun b!4265230 () Bool)

(declare-fun e!2648350 () BalanceConc!28010)

(assert (=> b!4265230 (= e!2648350 stringAndConc!0)))

(declare-fun b!4265232 () Bool)

(declare-fun e!2648355 () BalanceConc!28010)

(assert (=> b!4265232 (= e!2648355 stringEqualConc!0)))

(declare-fun b!4265233 () Bool)

(assert (=> b!4265233 (= e!2648348 stringTimesConc!0)))

(declare-fun b!4265234 () Bool)

(assert (=> b!4265234 (= e!2648347 (BalanceConc!28011 Empty!14250))))

(declare-fun b!4265235 () Bool)

(declare-fun c!724895 () Bool)

(assert (=> b!4265235 (= c!724895 (is-And!8223 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))

(declare-fun e!2648349 () BalanceConc!28010)

(assert (=> b!4265235 (= e!2648349 e!2648350)))

(declare-fun b!4265236 () Bool)

(declare-fun e!2648346 () BalanceConc!28010)

(assert (=> b!4265236 (= e!2648346 stringOrConc!0)))

(declare-fun b!4265237 () Bool)

(declare-fun c!724892 () Bool)

(assert (=> b!4265237 (= c!724892 (is-Concat!21121 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))

(assert (=> b!4265237 (= e!2648346 e!2648351)))

(declare-fun b!4265238 () Bool)

(assert (=> b!4265238 (= e!2648351 stringConcatConc!0)))

(declare-fun b!4265239 () Bool)

(declare-fun c!724894 () Bool)

(assert (=> b!4265239 (= c!724894 (is-Mod!8223 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))

(assert (=> b!4265239 (= e!2648353 e!2648352)))

(declare-fun b!4265240 () Bool)

(declare-fun e!2648354 () BalanceConc!28010)

(assert (=> b!4265240 (= e!2648354 stringPlusConc!0)))

(declare-fun b!4265241 () Bool)

(declare-fun e!2648344 () BalanceConc!28010)

(assert (=> b!4265241 (= e!2648354 e!2648344)))

(declare-fun c!724889 () Bool)

(assert (=> b!4265241 (= c!724889 (is-Minus!8223 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))

(declare-fun b!4265242 () Bool)

(assert (=> b!4265242 (= e!2648350 e!2648346)))

(declare-fun c!724897 () Bool)

(assert (=> b!4265242 (= c!724897 (is-Or!8223 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))

(declare-fun b!4265243 () Bool)

(assert (=> b!4265243 (= e!2648349 stringLessEqualConc!0)))

(declare-fun b!4265244 () Bool)

(assert (=> b!4265244 (= e!2648355 e!2648349)))

(declare-fun c!724886 () Bool)

(assert (=> b!4265244 (= c!724886 (is-LessEqual!8223 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))

(declare-fun b!4265245 () Bool)

(declare-fun c!724888 () Bool)

(assert (=> b!4265245 (= c!724888 (is-Times!8223 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))

(assert (=> b!4265245 (= e!2648344 e!2648348)))

(declare-fun b!4265246 () Bool)

(declare-fun c!724891 () Bool)

(assert (=> b!4265246 (= c!724891 (is-Equal!8223 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))

(assert (=> b!4265246 (= e!2648345 e!2648355)))

(declare-fun b!4265247 () Bool)

(assert (=> b!4265247 (= e!2648344 stringMinusConc!0)))

(declare-fun d!1256731 () Bool)

(declare-fun c!724896 () Bool)

(assert (=> d!1256731 (= c!724896 (is-Plus!8223 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))

(assert (=> d!1256731 (= (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))) e!2648354)))

(declare-fun b!4265231 () Bool)

(assert (=> b!4265231 (= e!2648345 stringNotConc!0)))

(assert (= (and d!1256731 c!724896) b!4265240))

(assert (= (and d!1256731 (not c!724896)) b!4265241))

(assert (= (and b!4265241 c!724889) b!4265247))

(assert (= (and b!4265241 (not c!724889)) b!4265245))

(assert (= (and b!4265245 c!724888) b!4265233))

(assert (= (and b!4265245 (not c!724888)) b!4265225))

(assert (= (and b!4265225 c!724893) b!4265227))

(assert (= (and b!4265225 (not c!724893)) b!4265239))

(assert (= (and b!4265239 c!724894) b!4265229))

(assert (= (and b!4265239 (not c!724894)) b!4265228))

(assert (= (and b!4265228 c!724890) b!4265231))

(assert (= (and b!4265228 (not c!724890)) b!4265246))

(assert (= (and b!4265246 c!724891) b!4265232))

(assert (= (and b!4265246 (not c!724891)) b!4265244))

(assert (= (and b!4265244 c!724886) b!4265243))

(assert (= (and b!4265244 (not c!724886)) b!4265235))

(assert (= (and b!4265235 c!724895) b!4265230))

(assert (= (and b!4265235 (not c!724895)) b!4265242))

(assert (= (and b!4265242 c!724897) b!4265236))

(assert (= (and b!4265242 (not c!724897)) b!4265237))

(assert (= (and b!4265237 c!724892) b!4265238))

(assert (= (and b!4265237 (not c!724892)) b!4265226))

(assert (= (and b!4265226 c!724887) b!4265224))

(assert (= (and b!4265226 (not c!724887)) b!4265234))

(declare-fun m!4855665 () Bool)

(assert (=> b!4265224 m!4855665))

(assert (=> b!4265238 m!4855081))

(assert (=> b!4265240 m!4855083))

(assert (=> b!4265236 m!4855085))

(assert (=> b!4265232 m!4855087))

(assert (=> b!4265230 m!4855089))

(assert (=> b!4265243 m!4855091))

(assert (=> b!4265227 m!4855093))

(assert (=> b!4265247 m!4855095))

(assert (=> b!4265231 m!4855097))

(assert (=> b!4265229 m!4855099))

(assert (=> b!4265233 m!4855101))

(assert (=> bs!599253 d!1256731))

(declare-fun d!1256733 () Bool)

(declare-fun lt!1511571 () List!47392)

(assert (=> d!1256733 (= lt!1511571 (efficientList!418 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))

(assert (=> d!1256733 (= (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))) (ite (= lt!1511571 (Cons!47268 #x002B Nil!47268)) Plus!8223 (ite (= lt!1511571 (Cons!47268 #x002D Nil!47268)) Minus!8223 (ite (= lt!1511571 (Cons!47268 #x002A Nil!47268)) Times!8223 (ite (= lt!1511571 (Cons!47268 #x002F Nil!47268)) Div!8223 (ite (= lt!1511571 (Cons!47268 #x0025 Nil!47268)) Mod!8223 (ite (= lt!1511571 (Cons!47268 #x0021 Nil!47268)) Not!8223 (ite (= lt!1511571 (Cons!47268 #x003D Nil!47268)) Equal!8223 (ite (= lt!1511571 (Cons!47268 #x003C (Cons!47268 #x003D Nil!47268))) LessEqual!8223 (ite (= lt!1511571 (Cons!47268 #x0026 (Cons!47268 #x0026 Nil!47268))) And!8223 (ite (= lt!1511571 (Cons!47268 #x007C (Cons!47268 #x007C Nil!47268))) Or!8223 (ite (= lt!1511571 (Cons!47268 #x002B (Cons!47268 #x002B Nil!47268))) Concat!21121 (Broken!41119 lt!1511571)))))))))))))))

(declare-fun bs!599274 () Bool)

(assert (= bs!599274 d!1256733))

(assert (=> bs!599274 m!4855051))

(declare-fun m!4855667 () Bool)

(assert (=> bs!599274 m!4855667))

(assert (=> bs!599253 d!1256733))

(assert (=> bs!599253 d!1256517))

(declare-fun d!1256735 () Bool)

(assert (=> d!1256735 true))

(assert (=> d!1256735 true))

(declare-fun res!1752823 () Bool)

(assert (=> d!1256735 (= (choose!25994 lambda!130294) res!1752823)))

(assert (=> d!1256549 d!1256735))

(assert (=> b!4264777 d!1256541))

(declare-fun tp!1307461 () Bool)

(declare-fun tp!1307462 () Bool)

(declare-fun b!4265248 () Bool)

(declare-fun e!2648356 () Bool)

(assert (=> b!4265248 (= e!2648356 (and (inv!62190 (left!35040 (left!35040 (c!724708 x!738013)))) tp!1307461 (inv!62190 (right!35370 (left!35040 (c!724708 x!738013)))) tp!1307462))))

(declare-fun b!4265249 () Bool)

(assert (=> b!4265249 (= e!2648356 (inv!62196 (xs!17556 (left!35040 (c!724708 x!738013)))))))

(assert (=> b!4264988 (= tp!1307453 (and (inv!62190 (left!35040 (c!724708 x!738013))) e!2648356))))

(assert (= (and b!4264988 (is-Node!14250 (left!35040 (c!724708 x!738013)))) b!4265248))

(assert (= (and b!4264988 (is-Leaf!22031 (left!35040 (c!724708 x!738013)))) b!4265249))

(declare-fun m!4855669 () Bool)

(assert (=> b!4265248 m!4855669))

(declare-fun m!4855671 () Bool)

(assert (=> b!4265248 m!4855671))

(declare-fun m!4855673 () Bool)

(assert (=> b!4265249 m!4855673))

(assert (=> b!4264988 m!4855191))

(declare-fun b!4265250 () Bool)

(declare-fun e!2648358 () Bool)

(declare-fun tp!1307463 () Bool)

(declare-fun tp!1307464 () Bool)

(assert (=> b!4265250 (= e!2648358 (and (inv!62190 (left!35040 (right!35370 (c!724708 x!738013)))) tp!1307463 (inv!62190 (right!35370 (right!35370 (c!724708 x!738013)))) tp!1307464))))

(declare-fun b!4265251 () Bool)

(assert (=> b!4265251 (= e!2648358 (inv!62196 (xs!17556 (right!35370 (c!724708 x!738013)))))))

(assert (=> b!4264988 (= tp!1307454 (and (inv!62190 (right!35370 (c!724708 x!738013))) e!2648358))))

(assert (= (and b!4264988 (is-Node!14250 (right!35370 (c!724708 x!738013)))) b!4265250))

(assert (= (and b!4264988 (is-Leaf!22031 (right!35370 (c!724708 x!738013)))) b!4265251))

(declare-fun m!4855675 () Bool)

(assert (=> b!4265250 m!4855675))

(declare-fun m!4855677 () Bool)

(assert (=> b!4265250 m!4855677))

(declare-fun m!4855679 () Bool)

(assert (=> b!4265251 m!4855679))

(assert (=> b!4264988 m!4855193))

(push 1)

(assert (not b!4265207))

(assert (not d!1256727))

(assert (not b!4265162))

(assert (not b!4265144))

(assert (not b!4265072))

(assert (not b!4265232))

(assert (not d!1256587))

(assert (not b!4265251))

(assert (not b!4265180))

(assert (not b!4265062))

(assert (not d!1256667))

(assert (not d!1256715))

(assert (not d!1256729))

(assert (not b!4265224))

(assert (not b!4265250))

(assert (not d!1256565))

(assert (not d!1256697))

(assert (not d!1256663))

(assert (not b!4265117))

(assert (not b!4265208))

(assert (not b!4265212))

(assert (not b!4265219))

(assert (not d!1256721))

(assert (not b!4265248))

(assert (not b!4265203))

(assert (not b!4265137))

(assert (not d!1256711))

(assert (not b!4265150))

(assert (not b!4265222))

(assert (not d!1256719))

(assert (not d!1256681))

(assert (not b!4265128))

(assert (not b!4265249))

(assert (not b!4265065))

(assert (not b!4265243))

(assert (not b!4265048))

(assert (not b!4264988))

(assert (not b!4265230))

(assert (not b!4265134))

(assert (not b!4265158))

(assert (not b!4265058))

(assert (not d!1256717))

(assert (not b!4265057))

(assert (not d!1256733))

(assert (not d!1256577))

(assert (not d!1256581))

(assert (not b!4265053))

(assert (not b!4265159))

(assert (not b!4265236))

(assert (not b!4265118))

(assert (not b!4265113))

(assert (not b!4265111))

(assert (not d!1256723))

(assert (not b!4265067))

(assert (not b!4265131))

(assert (not d!1256591))

(assert (not b!4265196))

(assert (not bm!294040))

(assert (not d!1256709))

(assert (not d!1256725))

(assert (not b!4265233))

(assert (not b!4265136))

(assert (not bm!294041))

(assert (not b!4265217))

(assert (not b!4265077))

(assert (not b!4265115))

(assert (not b!4265129))

(assert (not b!4265068))

(assert (not b!4265227))

(assert (not b!4265231))

(assert (not d!1256707))

(assert (not b!4265061))

(assert (not b!4265238))

(assert (not d!1256575))

(assert (not d!1256563))

(assert (not b!4265229))

(assert (not b!4265197))

(assert (not b!4265199))

(assert (not b!4265194))

(assert (not d!1256665))

(assert (not b!4265247))

(assert (not b!4265076))

(assert (not b!4265050))

(assert (not b!4265221))

(assert (not b!4265195))

(assert (not b!4265166))

(assert (not b!4265174))

(assert (not d!1256569))

(assert (not b!4265164))

(assert (not d!1256679))

(assert (not b!4265198))

(assert (not b!4265152))

(assert (not b!4265240))

(assert (not b!4265046))

(assert (not b!4265211))

(assert (not d!1256567))

(assert (not b!4265073))

(assert (not b!4265205))

(assert (not b!4265052))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1256801 () Bool)

(assert (=> d!1256801 (= (seqFromList!5846 (Cons!47268 #x007C (Cons!47268 #x007C Nil!47268))) (fromListB!2657 (Cons!47268 #x007C (Cons!47268 #x007C Nil!47268))))))

(declare-fun bs!599282 () Bool)

(assert (= bs!599282 d!1256801))

(declare-fun m!4855875 () Bool)

(assert (=> bs!599282 m!4855875))

(assert (=> d!1256563 d!1256801))

(declare-fun b!4265379 () Bool)

(declare-fun e!2648424 () List!47392)

(assert (=> b!4265379 (= e!2648424 (list!17077 (xs!17556 lt!1511545)))))

(declare-fun b!4265377 () Bool)

(declare-fun e!2648423 () List!47392)

(assert (=> b!4265377 (= e!2648423 Nil!47268)))

(declare-fun d!1256803 () Bool)

(declare-fun c!724934 () Bool)

(assert (=> d!1256803 (= c!724934 (is-Empty!14250 lt!1511545))))

(assert (=> d!1256803 (= (list!17075 lt!1511545) e!2648423)))

(declare-fun b!4265380 () Bool)

(assert (=> b!4265380 (= e!2648424 (++!12049 (list!17075 (left!35040 lt!1511545)) (list!17075 (right!35370 lt!1511545))))))

(declare-fun b!4265378 () Bool)

(assert (=> b!4265378 (= e!2648423 e!2648424)))

(declare-fun c!724935 () Bool)

(assert (=> b!4265378 (= c!724935 (is-Leaf!22031 lt!1511545))))

(assert (= (and d!1256803 c!724934) b!4265377))

(assert (= (and d!1256803 (not c!724934)) b!4265378))

(assert (= (and b!4265378 c!724935) b!4265379))

(assert (= (and b!4265378 (not c!724935)) b!4265380))

(declare-fun m!4855877 () Bool)

(assert (=> b!4265379 m!4855877))

(declare-fun m!4855879 () Bool)

(assert (=> b!4265380 m!4855879))

(declare-fun m!4855881 () Bool)

(assert (=> b!4265380 m!4855881))

(assert (=> b!4265380 m!4855879))

(assert (=> b!4265380 m!4855881))

(declare-fun m!4855883 () Bool)

(assert (=> b!4265380 m!4855883))

(assert (=> d!1256667 d!1256803))

(declare-fun d!1256805 () Bool)

(declare-fun e!2648431 () Bool)

(assert (=> d!1256805 e!2648431))

(declare-fun res!1752880 () Bool)

(assert (=> d!1256805 (=> (not res!1752880) (not e!2648431))))

(declare-fun res!1752881 () Conc!14250)

(assert (=> d!1256805 (= res!1752880 (= (list!17075 res!1752881) (Cons!47268 #x002B Nil!47268)))))

(declare-fun e!2648433 () Bool)

(assert (=> d!1256805 (and (inv!62190 res!1752881) e!2648433)))

(assert (=> d!1256805 (= (choose!25996 (Cons!47268 #x002B Nil!47268)) res!1752881)))

(declare-fun tp!1307473 () Bool)

(declare-fun b!4265387 () Bool)

(declare-fun tp!1307474 () Bool)

(assert (=> b!4265387 (= e!2648433 (and (inv!62190 (left!35040 res!1752881)) tp!1307474 (inv!62190 (right!35370 res!1752881)) tp!1307473))))

(declare-fun b!4265388 () Bool)

(assert (=> b!4265388 (= e!2648433 (inv!62196 (xs!17556 res!1752881)))))

(declare-fun b!4265389 () Bool)

(assert (=> b!4265389 (= e!2648431 (isBalanced!3809 res!1752881))))

(assert (= (and d!1256805 (is-Node!14250 res!1752881)) b!4265387))

(assert (= (and d!1256805 (is-Leaf!22031 res!1752881)) b!4265388))

(assert (= (and d!1256805 res!1752880) b!4265389))

(declare-fun m!4855885 () Bool)

(assert (=> d!1256805 m!4855885))

(declare-fun m!4855887 () Bool)

(assert (=> d!1256805 m!4855887))

(declare-fun m!4855889 () Bool)

(assert (=> b!4265387 m!4855889))

(declare-fun m!4855891 () Bool)

(assert (=> b!4265387 m!4855891))

(declare-fun m!4855893 () Bool)

(assert (=> b!4265388 m!4855893))

(declare-fun m!4855895 () Bool)

(assert (=> b!4265389 m!4855895))

(assert (=> d!1256667 d!1256805))

(declare-fun d!1256807 () Bool)

(assert (=> d!1256807 (= (seqFromList!5846 (Cons!47268 #x003C (Cons!47268 #x003D Nil!47268))) (fromListB!2657 (Cons!47268 #x003C (Cons!47268 #x003D Nil!47268))))))

(declare-fun bs!599283 () Bool)

(assert (= bs!599283 d!1256807))

(declare-fun m!4855897 () Bool)

(assert (=> bs!599283 m!4855897))

(assert (=> d!1256567 d!1256807))

(declare-fun b!4265393 () Bool)

(declare-fun e!2648434 () Bool)

(declare-fun lt!1511603 () List!47392)

(assert (=> b!4265393 (= e!2648434 (or (not (= (efficientList$default$2!146 (c!724708 x!738013)) Nil!47268)) (= lt!1511603 (list!17075 (right!35370 (c!724708 x!738013))))))))

(declare-fun b!4265392 () Bool)

(declare-fun res!1752882 () Bool)

(assert (=> b!4265392 (=> (not res!1752882) (not e!2648434))))

(assert (=> b!4265392 (= res!1752882 (= (size!34622 lt!1511603) (+ (size!34622 (list!17075 (right!35370 (c!724708 x!738013)))) (size!34622 (efficientList$default$2!146 (c!724708 x!738013))))))))

(declare-fun b!4265391 () Bool)

(declare-fun e!2648435 () List!47392)

(assert (=> b!4265391 (= e!2648435 (Cons!47268 (h!52688 (list!17075 (right!35370 (c!724708 x!738013)))) (++!12049 (t!353461 (list!17075 (right!35370 (c!724708 x!738013)))) (efficientList$default$2!146 (c!724708 x!738013)))))))

(declare-fun b!4265390 () Bool)

(assert (=> b!4265390 (= e!2648435 (efficientList$default$2!146 (c!724708 x!738013)))))

(declare-fun d!1256809 () Bool)

(assert (=> d!1256809 e!2648434))

(declare-fun res!1752883 () Bool)

(assert (=> d!1256809 (=> (not res!1752883) (not e!2648434))))

(assert (=> d!1256809 (= res!1752883 (= (content!7469 lt!1511603) (set.union (content!7469 (list!17075 (right!35370 (c!724708 x!738013)))) (content!7469 (efficientList$default$2!146 (c!724708 x!738013))))))))

(assert (=> d!1256809 (= lt!1511603 e!2648435)))

(declare-fun c!724936 () Bool)

(assert (=> d!1256809 (= c!724936 (is-Nil!47268 (list!17075 (right!35370 (c!724708 x!738013)))))))

(assert (=> d!1256809 (= (++!12049 (list!17075 (right!35370 (c!724708 x!738013))) (efficientList$default$2!146 (c!724708 x!738013))) lt!1511603)))

(assert (= (and d!1256809 c!724936) b!4265390))

(assert (= (and d!1256809 (not c!724936)) b!4265391))

(assert (= (and d!1256809 res!1752883) b!4265392))

(assert (= (and b!4265392 res!1752882) b!4265393))

(declare-fun m!4855899 () Bool)

(assert (=> b!4265392 m!4855899))

(assert (=> b!4265392 m!4855151))

(assert (=> b!4265392 m!4855297))

(assert (=> b!4265392 m!4855135))

(assert (=> b!4265392 m!4855239))

(assert (=> b!4265391 m!4855135))

(declare-fun m!4855901 () Bool)

(assert (=> b!4265391 m!4855901))

(declare-fun m!4855903 () Bool)

(assert (=> d!1256809 m!4855903))

(assert (=> d!1256809 m!4855151))

(assert (=> d!1256809 m!4855305))

(assert (=> d!1256809 m!4855135))

(assert (=> d!1256809 m!4855247))

(assert (=> d!1256723 d!1256809))

(assert (=> d!1256723 d!1256607))

(declare-fun d!1256811 () Bool)

(declare-fun lt!1511604 () Int)

(assert (=> d!1256811 (>= lt!1511604 0)))

(declare-fun e!2648436 () Int)

(assert (=> d!1256811 (= lt!1511604 e!2648436)))

(declare-fun c!724937 () Bool)

(assert (=> d!1256811 (= c!724937 (is-Nil!47268 lt!1511532))))

(assert (=> d!1256811 (= (size!34622 lt!1511532) lt!1511604)))

(declare-fun b!4265394 () Bool)

(assert (=> b!4265394 (= e!2648436 0)))

(declare-fun b!4265395 () Bool)

(assert (=> b!4265395 (= e!2648436 (+ 1 (size!34622 (t!353461 lt!1511532))))))

(assert (= (and d!1256811 c!724937) b!4265394))

(assert (= (and d!1256811 (not c!724937)) b!4265395))

(declare-fun m!4855905 () Bool)

(assert (=> b!4265395 m!4855905))

(assert (=> b!4265068 d!1256811))

(declare-fun d!1256813 () Bool)

(declare-fun lt!1511605 () Int)

(assert (=> d!1256813 (>= lt!1511605 0)))

(declare-fun e!2648437 () Int)

(assert (=> d!1256813 (= lt!1511605 e!2648437)))

(declare-fun c!724938 () Bool)

(assert (=> d!1256813 (= c!724938 (is-Nil!47268 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))

(assert (=> d!1256813 (= (size!34622 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) lt!1511605)))

(declare-fun b!4265396 () Bool)

(assert (=> b!4265396 (= e!2648437 0)))

(declare-fun b!4265397 () Bool)

(assert (=> b!4265397 (= e!2648437 (+ 1 (size!34622 (t!353461 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))))

(assert (= (and d!1256813 c!724938) b!4265396))

(assert (= (and d!1256813 (not c!724938)) b!4265397))

(declare-fun m!4855907 () Bool)

(assert (=> b!4265397 m!4855907))

(assert (=> b!4265068 d!1256813))

(declare-fun d!1256815 () Bool)

(declare-fun lt!1511606 () Int)

(assert (=> d!1256815 (>= lt!1511606 0)))

(declare-fun e!2648438 () Int)

(assert (=> d!1256815 (= lt!1511606 e!2648438)))

(declare-fun c!724939 () Bool)

(assert (=> d!1256815 (= c!724939 (is-Nil!47268 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))

(assert (=> d!1256815 (= (size!34622 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) lt!1511606)))

(declare-fun b!4265398 () Bool)

(assert (=> b!4265398 (= e!2648438 0)))

(declare-fun b!4265399 () Bool)

(assert (=> b!4265399 (= e!2648438 (+ 1 (size!34622 (t!353461 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))))

(assert (= (and d!1256815 c!724939) b!4265398))

(assert (= (and d!1256815 (not c!724939)) b!4265399))

(declare-fun m!4855909 () Bool)

(assert (=> b!4265399 m!4855909))

(assert (=> b!4265068 d!1256815))

(declare-fun d!1256817 () Bool)

(declare-fun lt!1511607 () List!47392)

(assert (=> d!1256817 (= lt!1511607 (list!17073 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))

(assert (=> d!1256817 (= lt!1511607 (efficientList!419 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))) (efficientList$default$2!146 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))

(assert (=> d!1256817 (= (efficientList!418 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))) lt!1511607)))

(declare-fun bs!599284 () Bool)

(assert (= bs!599284 d!1256817))

(assert (=> bs!599284 m!4855051))

(assert (=> bs!599284 m!4855055))

(declare-fun m!4855911 () Bool)

(assert (=> bs!599284 m!4855911))

(assert (=> bs!599284 m!4855911))

(declare-fun m!4855913 () Bool)

(assert (=> bs!599284 m!4855913))

(assert (=> d!1256733 d!1256817))

(declare-fun d!1256819 () Bool)

(declare-fun c!724940 () Bool)

(assert (=> d!1256819 (= c!724940 (is-Nil!47268 (t!353461 lt!1511512)))))

(declare-fun e!2648439 () (Set (_ BitVec 16)))

(assert (=> d!1256819 (= (content!7469 (t!353461 lt!1511512)) e!2648439)))

(declare-fun b!4265400 () Bool)

(assert (=> b!4265400 (= e!2648439 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265401 () Bool)

(assert (=> b!4265401 (= e!2648439 (set.union (set.insert (h!52688 (t!353461 lt!1511512)) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (t!353461 lt!1511512)))))))

(assert (= (and d!1256819 c!724940) b!4265400))

(assert (= (and d!1256819 (not c!724940)) b!4265401))

(declare-fun m!4855915 () Bool)

(assert (=> b!4265401 m!4855915))

(declare-fun m!4855917 () Bool)

(assert (=> b!4265401 m!4855917))

(assert (=> b!4265046 d!1256819))

(declare-fun d!1256821 () Bool)

(declare-fun e!2648440 () Bool)

(assert (=> d!1256821 e!2648440))

(declare-fun res!1752884 () Bool)

(assert (=> d!1256821 (=> (not res!1752884) (not e!2648440))))

(declare-fun lt!1511608 () BalanceConc!28010)

(assert (=> d!1256821 (= res!1752884 (= (list!17073 lt!1511608) (value!248406 (toValue!17 thiss!2520 x!738013))))))

(assert (=> d!1256821 (= lt!1511608 (BalanceConc!28011 (fromList!917 (value!248406 (toValue!17 thiss!2520 x!738013)))))))

(assert (=> d!1256821 (= (fromListB!2657 (value!248406 (toValue!17 thiss!2520 x!738013))) lt!1511608)))

(declare-fun b!4265402 () Bool)

(assert (=> b!4265402 (= e!2648440 (isBalanced!3809 (fromList!917 (value!248406 (toValue!17 thiss!2520 x!738013)))))))

(assert (= (and d!1256821 res!1752884) b!4265402))

(declare-fun m!4855919 () Bool)

(assert (=> d!1256821 m!4855919))

(declare-fun m!4855921 () Bool)

(assert (=> d!1256821 m!4855921))

(assert (=> b!4265402 m!4855921))

(assert (=> b!4265402 m!4855921))

(declare-fun m!4855923 () Bool)

(assert (=> b!4265402 m!4855923))

(assert (=> d!1256569 d!1256821))

(declare-fun d!1256823 () Bool)

(declare-fun res!1752890 () Bool)

(declare-fun e!2648441 () Bool)

(assert (=> d!1256823 (=> res!1752890 e!2648441)))

(assert (=> d!1256823 (= res!1752890 (not (is-Node!14250 (fromList!917 (Cons!47268 #x002B Nil!47268)))))))

(assert (=> d!1256823 (= (isBalanced!3809 (fromList!917 (Cons!47268 #x002B Nil!47268))) e!2648441)))

(declare-fun b!4265403 () Bool)

(declare-fun e!2648442 () Bool)

(assert (=> b!4265403 (= e!2648441 e!2648442)))

(declare-fun res!1752886 () Bool)

(assert (=> b!4265403 (=> (not res!1752886) (not e!2648442))))

(assert (=> b!4265403 (= res!1752886 (<= (- 1) (- (height!1875 (left!35040 (fromList!917 (Cons!47268 #x002B Nil!47268)))) (height!1875 (right!35370 (fromList!917 (Cons!47268 #x002B Nil!47268)))))))))

(declare-fun b!4265404 () Bool)

(declare-fun res!1752887 () Bool)

(assert (=> b!4265404 (=> (not res!1752887) (not e!2648442))))

(assert (=> b!4265404 (= res!1752887 (isBalanced!3809 (left!35040 (fromList!917 (Cons!47268 #x002B Nil!47268)))))))

(declare-fun b!4265405 () Bool)

(declare-fun res!1752889 () Bool)

(assert (=> b!4265405 (=> (not res!1752889) (not e!2648442))))

(assert (=> b!4265405 (= res!1752889 (<= (- (height!1875 (left!35040 (fromList!917 (Cons!47268 #x002B Nil!47268)))) (height!1875 (right!35370 (fromList!917 (Cons!47268 #x002B Nil!47268))))) 1))))

(declare-fun b!4265406 () Bool)

(assert (=> b!4265406 (= e!2648442 (not (isEmpty!27994 (right!35370 (fromList!917 (Cons!47268 #x002B Nil!47268))))))))

(declare-fun b!4265407 () Bool)

(declare-fun res!1752888 () Bool)

(assert (=> b!4265407 (=> (not res!1752888) (not e!2648442))))

(assert (=> b!4265407 (= res!1752888 (isBalanced!3809 (right!35370 (fromList!917 (Cons!47268 #x002B Nil!47268)))))))

(declare-fun b!4265408 () Bool)

(declare-fun res!1752885 () Bool)

(assert (=> b!4265408 (=> (not res!1752885) (not e!2648442))))

(assert (=> b!4265408 (= res!1752885 (not (isEmpty!27994 (left!35040 (fromList!917 (Cons!47268 #x002B Nil!47268))))))))

(assert (= (and d!1256823 (not res!1752890)) b!4265403))

(assert (= (and b!4265403 res!1752886) b!4265405))

(assert (= (and b!4265405 res!1752889) b!4265404))

(assert (= (and b!4265404 res!1752887) b!4265407))

(assert (= (and b!4265407 res!1752888) b!4265408))

(assert (= (and b!4265408 res!1752885) b!4265406))

(declare-fun m!4855925 () Bool)

(assert (=> b!4265403 m!4855925))

(declare-fun m!4855927 () Bool)

(assert (=> b!4265403 m!4855927))

(declare-fun m!4855929 () Bool)

(assert (=> b!4265407 m!4855929))

(declare-fun m!4855931 () Bool)

(assert (=> b!4265404 m!4855931))

(declare-fun m!4855933 () Bool)

(assert (=> b!4265406 m!4855933))

(assert (=> b!4265405 m!4855925))

(assert (=> b!4265405 m!4855927))

(declare-fun m!4855935 () Bool)

(assert (=> b!4265408 m!4855935))

(assert (=> b!4265065 d!1256823))

(assert (=> b!4265065 d!1256667))

(declare-fun d!1256825 () Bool)

(declare-fun c!724941 () Bool)

(assert (=> d!1256825 (= c!724941 (is-Nil!47268 lt!1511567))))

(declare-fun e!2648443 () (Set (_ BitVec 16)))

(assert (=> d!1256825 (= (content!7469 lt!1511567) e!2648443)))

(declare-fun b!4265409 () Bool)

(assert (=> b!4265409 (= e!2648443 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265410 () Bool)

(assert (=> b!4265410 (= e!2648443 (set.union (set.insert (h!52688 lt!1511567) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 lt!1511567))))))

(assert (= (and d!1256825 c!724941) b!4265409))

(assert (= (and d!1256825 (not c!724941)) b!4265410))

(declare-fun m!4855937 () Bool)

(assert (=> b!4265410 m!4855937))

(declare-fun m!4855939 () Bool)

(assert (=> b!4265410 m!4855939))

(assert (=> d!1256725 d!1256825))

(declare-fun d!1256827 () Bool)

(declare-fun c!724942 () Bool)

(assert (=> d!1256827 (= c!724942 (is-Nil!47268 (++!12049 lt!1511505 lt!1511502)))))

(declare-fun e!2648444 () (Set (_ BitVec 16)))

(assert (=> d!1256827 (= (content!7469 (++!12049 lt!1511505 lt!1511502)) e!2648444)))

(declare-fun b!4265411 () Bool)

(assert (=> b!4265411 (= e!2648444 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265412 () Bool)

(assert (=> b!4265412 (= e!2648444 (set.union (set.insert (h!52688 (++!12049 lt!1511505 lt!1511502)) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (++!12049 lt!1511505 lt!1511502)))))))

(assert (= (and d!1256827 c!724942) b!4265411))

(assert (= (and d!1256827 (not c!724942)) b!4265412))

(declare-fun m!4855941 () Bool)

(assert (=> b!4265412 m!4855941))

(declare-fun m!4855943 () Bool)

(assert (=> b!4265412 m!4855943))

(assert (=> d!1256725 d!1256827))

(assert (=> d!1256725 d!1256599))

(declare-fun b!4265416 () Bool)

(declare-fun e!2648445 () Bool)

(declare-fun lt!1511609 () List!47392)

(assert (=> b!4265416 (= e!2648445 (or (not (= (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013))) Nil!47268)) (= lt!1511609 (list!17075 (left!35040 (c!724708 x!738013))))))))

(declare-fun b!4265415 () Bool)

(declare-fun res!1752891 () Bool)

(assert (=> b!4265415 (=> (not res!1752891) (not e!2648445))))

(assert (=> b!4265415 (= res!1752891 (= (size!34622 lt!1511609) (+ (size!34622 (list!17075 (left!35040 (c!724708 x!738013)))) (size!34622 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))))))))

(declare-fun b!4265414 () Bool)

(declare-fun e!2648446 () List!47392)

(assert (=> b!4265414 (= e!2648446 (Cons!47268 (h!52688 (list!17075 (left!35040 (c!724708 x!738013)))) (++!12049 (t!353461 (list!17075 (left!35040 (c!724708 x!738013)))) (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013))))))))

(declare-fun b!4265413 () Bool)

(assert (=> b!4265413 (= e!2648446 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013))))))

(declare-fun d!1256829 () Bool)

(assert (=> d!1256829 e!2648445))

(declare-fun res!1752892 () Bool)

(assert (=> d!1256829 (=> (not res!1752892) (not e!2648445))))

(assert (=> d!1256829 (= res!1752892 (= (content!7469 lt!1511609) (set.union (content!7469 (list!17075 (left!35040 (c!724708 x!738013)))) (content!7469 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))))))))

(assert (=> d!1256829 (= lt!1511609 e!2648446)))

(declare-fun c!724943 () Bool)

(assert (=> d!1256829 (= c!724943 (is-Nil!47268 (list!17075 (left!35040 (c!724708 x!738013)))))))

(assert (=> d!1256829 (= (++!12049 (list!17075 (left!35040 (c!724708 x!738013))) (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))) lt!1511609)))

(assert (= (and d!1256829 c!724943) b!4265413))

(assert (= (and d!1256829 (not c!724943)) b!4265414))

(assert (= (and d!1256829 res!1752892) b!4265415))

(assert (= (and b!4265415 res!1752891) b!4265416))

(declare-fun m!4855945 () Bool)

(assert (=> b!4265415 m!4855945))

(assert (=> b!4265415 m!4855149))

(assert (=> b!4265415 m!4855295))

(assert (=> b!4265415 m!4855169))

(declare-fun m!4855947 () Bool)

(assert (=> b!4265415 m!4855947))

(assert (=> b!4265414 m!4855169))

(declare-fun m!4855949 () Bool)

(assert (=> b!4265414 m!4855949))

(declare-fun m!4855951 () Bool)

(assert (=> d!1256829 m!4855951))

(assert (=> d!1256829 m!4855149))

(assert (=> d!1256829 m!4855303))

(assert (=> d!1256829 m!4855169))

(declare-fun m!4855953 () Bool)

(assert (=> d!1256829 m!4855953))

(assert (=> d!1256717 d!1256829))

(assert (=> d!1256717 d!1256605))

(declare-fun d!1256831 () Bool)

(assert (=> d!1256831 (= (seqFromList!5846 (Cons!47268 #x0025 Nil!47268)) (fromListB!2657 (Cons!47268 #x0025 Nil!47268)))))

(declare-fun bs!599285 () Bool)

(assert (= bs!599285 d!1256831))

(declare-fun m!4855955 () Bool)

(assert (=> bs!599285 m!4855955))

(assert (=> d!1256577 d!1256831))

(declare-fun b!4265420 () Bool)

(declare-fun e!2648447 () Bool)

(declare-fun lt!1511610 () List!47392)

(assert (=> b!4265420 (= e!2648447 (or (not (= (list!17075 (right!35370 (c!724708 x!738013))) Nil!47268)) (= lt!1511610 (t!353461 (list!17075 (left!35040 (c!724708 x!738013)))))))))

(declare-fun b!4265419 () Bool)

(declare-fun res!1752893 () Bool)

(assert (=> b!4265419 (=> (not res!1752893) (not e!2648447))))

(assert (=> b!4265419 (= res!1752893 (= (size!34622 lt!1511610) (+ (size!34622 (t!353461 (list!17075 (left!35040 (c!724708 x!738013))))) (size!34622 (list!17075 (right!35370 (c!724708 x!738013)))))))))

(declare-fun b!4265418 () Bool)

(declare-fun e!2648448 () List!47392)

(assert (=> b!4265418 (= e!2648448 (Cons!47268 (h!52688 (t!353461 (list!17075 (left!35040 (c!724708 x!738013))))) (++!12049 (t!353461 (t!353461 (list!17075 (left!35040 (c!724708 x!738013))))) (list!17075 (right!35370 (c!724708 x!738013))))))))

(declare-fun b!4265417 () Bool)

(assert (=> b!4265417 (= e!2648448 (list!17075 (right!35370 (c!724708 x!738013))))))

(declare-fun d!1256833 () Bool)

(assert (=> d!1256833 e!2648447))

(declare-fun res!1752894 () Bool)

(assert (=> d!1256833 (=> (not res!1752894) (not e!2648447))))

(assert (=> d!1256833 (= res!1752894 (= (content!7469 lt!1511610) (set.union (content!7469 (t!353461 (list!17075 (left!35040 (c!724708 x!738013))))) (content!7469 (list!17075 (right!35370 (c!724708 x!738013)))))))))

(assert (=> d!1256833 (= lt!1511610 e!2648448)))

(declare-fun c!724944 () Bool)

(assert (=> d!1256833 (= c!724944 (is-Nil!47268 (t!353461 (list!17075 (left!35040 (c!724708 x!738013))))))))

(assert (=> d!1256833 (= (++!12049 (t!353461 (list!17075 (left!35040 (c!724708 x!738013)))) (list!17075 (right!35370 (c!724708 x!738013)))) lt!1511610)))

(assert (= (and d!1256833 c!724944) b!4265417))

(assert (= (and d!1256833 (not c!724944)) b!4265418))

(assert (= (and d!1256833 res!1752894) b!4265419))

(assert (= (and b!4265419 res!1752893) b!4265420))

(declare-fun m!4855957 () Bool)

(assert (=> b!4265419 m!4855957))

(declare-fun m!4855959 () Bool)

(assert (=> b!4265419 m!4855959))

(assert (=> b!4265419 m!4855151))

(assert (=> b!4265419 m!4855297))

(assert (=> b!4265418 m!4855151))

(declare-fun m!4855961 () Bool)

(assert (=> b!4265418 m!4855961))

(declare-fun m!4855963 () Bool)

(assert (=> d!1256833 m!4855963))

(assert (=> d!1256833 m!4855555))

(assert (=> d!1256833 m!4855151))

(assert (=> d!1256833 m!4855305))

(assert (=> b!4265052 d!1256833))

(declare-fun b!4265423 () Bool)

(declare-fun e!2648450 () List!47392)

(assert (=> b!4265423 (= e!2648450 (list!17077 (xs!17556 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(declare-fun b!4265421 () Bool)

(declare-fun e!2648449 () List!47392)

(assert (=> b!4265421 (= e!2648449 Nil!47268)))

(declare-fun d!1256835 () Bool)

(declare-fun c!724945 () Bool)

(assert (=> d!1256835 (= c!724945 (is-Empty!14250 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))

(assert (=> d!1256835 (= (list!17075 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) e!2648449)))

(declare-fun b!4265424 () Bool)

(assert (=> b!4265424 (= e!2648450 (++!12049 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))))

(declare-fun b!4265422 () Bool)

(assert (=> b!4265422 (= e!2648449 e!2648450)))

(declare-fun c!724946 () Bool)

(assert (=> b!4265422 (= c!724946 (is-Leaf!22031 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))

(assert (= (and d!1256835 c!724945) b!4265421))

(assert (= (and d!1256835 (not c!724945)) b!4265422))

(assert (= (and b!4265422 c!724946) b!4265423))

(assert (= (and b!4265422 (not c!724946)) b!4265424))

(declare-fun m!4855965 () Bool)

(assert (=> b!4265423 m!4855965))

(declare-fun m!4855967 () Bool)

(assert (=> b!4265424 m!4855967))

(declare-fun m!4855969 () Bool)

(assert (=> b!4265424 m!4855969))

(assert (=> b!4265424 m!4855967))

(assert (=> b!4265424 m!4855969))

(declare-fun m!4855971 () Bool)

(assert (=> b!4265424 m!4855971))

(assert (=> d!1256729 d!1256835))

(declare-fun d!1256837 () Bool)

(assert (=> d!1256837 (= (seqFromList!5846 (Cons!47268 #x0021 Nil!47268)) (fromListB!2657 (Cons!47268 #x0021 Nil!47268)))))

(declare-fun bs!599286 () Bool)

(assert (= bs!599286 d!1256837))

(declare-fun m!4855973 () Bool)

(assert (=> bs!599286 m!4855973))

(assert (=> d!1256587 d!1256837))

(declare-fun d!1256839 () Bool)

(declare-fun c!724947 () Bool)

(assert (=> d!1256839 (= c!724947 (is-Nil!47268 lt!1511560))))

(declare-fun e!2648451 () (Set (_ BitVec 16)))

(assert (=> d!1256839 (= (content!7469 lt!1511560) e!2648451)))

(declare-fun b!4265425 () Bool)

(assert (=> b!4265425 (= e!2648451 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265426 () Bool)

(assert (=> b!4265426 (= e!2648451 (set.union (set.insert (h!52688 lt!1511560) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 lt!1511560))))))

(assert (= (and d!1256839 c!724947) b!4265425))

(assert (= (and d!1256839 (not c!724947)) b!4265426))

(declare-fun m!4855975 () Bool)

(assert (=> b!4265426 m!4855975))

(declare-fun m!4855977 () Bool)

(assert (=> b!4265426 m!4855977))

(assert (=> d!1256719 d!1256839))

(declare-fun d!1256841 () Bool)

(declare-fun c!724948 () Bool)

(assert (=> d!1256841 (= c!724948 (is-Nil!47268 lt!1511505))))

(declare-fun e!2648452 () (Set (_ BitVec 16)))

(assert (=> d!1256841 (= (content!7469 lt!1511505) e!2648452)))

(declare-fun b!4265427 () Bool)

(assert (=> b!4265427 (= e!2648452 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265428 () Bool)

(assert (=> b!4265428 (= e!2648452 (set.union (set.insert (h!52688 lt!1511505) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 lt!1511505))))))

(assert (= (and d!1256841 c!724948) b!4265427))

(assert (= (and d!1256841 (not c!724948)) b!4265428))

(declare-fun m!4855979 () Bool)

(assert (=> b!4265428 m!4855979))

(declare-fun m!4855981 () Bool)

(assert (=> b!4265428 m!4855981))

(assert (=> d!1256719 d!1256841))

(declare-fun d!1256843 () Bool)

(declare-fun c!724949 () Bool)

(assert (=> d!1256843 (= c!724949 (is-Nil!47268 lt!1511502))))

(declare-fun e!2648453 () (Set (_ BitVec 16)))

(assert (=> d!1256843 (= (content!7469 lt!1511502) e!2648453)))

(declare-fun b!4265429 () Bool)

(assert (=> b!4265429 (= e!2648453 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265430 () Bool)

(assert (=> b!4265430 (= e!2648453 (set.union (set.insert (h!52688 lt!1511502) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 lt!1511502))))))

(assert (= (and d!1256843 c!724949) b!4265429))

(assert (= (and d!1256843 (not c!724949)) b!4265430))

(declare-fun m!4855983 () Bool)

(assert (=> b!4265430 m!4855983))

(declare-fun m!4855985 () Bool)

(assert (=> b!4265430 m!4855985))

(assert (=> d!1256719 d!1256843))

(declare-fun lt!1511611 () List!47392)

(declare-fun e!2648454 () Bool)

(declare-fun b!4265434 () Bool)

(assert (=> b!4265434 (= e!2648454 (or (not (= (++!12049 lt!1511502 (efficientList$default$2!146 (c!724708 x!738013))) Nil!47268)) (= lt!1511611 lt!1511505)))))

(declare-fun b!4265433 () Bool)

(declare-fun res!1752895 () Bool)

(assert (=> b!4265433 (=> (not res!1752895) (not e!2648454))))

(assert (=> b!4265433 (= res!1752895 (= (size!34622 lt!1511611) (+ (size!34622 lt!1511505) (size!34622 (++!12049 lt!1511502 (efficientList$default$2!146 (c!724708 x!738013)))))))))

(declare-fun e!2648455 () List!47392)

(declare-fun b!4265432 () Bool)

(assert (=> b!4265432 (= e!2648455 (Cons!47268 (h!52688 lt!1511505) (++!12049 (t!353461 lt!1511505) (++!12049 lt!1511502 (efficientList$default$2!146 (c!724708 x!738013))))))))

(declare-fun b!4265431 () Bool)

(assert (=> b!4265431 (= e!2648455 (++!12049 lt!1511502 (efficientList$default$2!146 (c!724708 x!738013))))))

(declare-fun d!1256845 () Bool)

(assert (=> d!1256845 e!2648454))

(declare-fun res!1752896 () Bool)

(assert (=> d!1256845 (=> (not res!1752896) (not e!2648454))))

(assert (=> d!1256845 (= res!1752896 (= (content!7469 lt!1511611) (set.union (content!7469 lt!1511505) (content!7469 (++!12049 lt!1511502 (efficientList$default$2!146 (c!724708 x!738013)))))))))

(assert (=> d!1256845 (= lt!1511611 e!2648455)))

(declare-fun c!724950 () Bool)

(assert (=> d!1256845 (= c!724950 (is-Nil!47268 lt!1511505))))

(assert (=> d!1256845 (= (++!12049 lt!1511505 (++!12049 lt!1511502 (efficientList$default$2!146 (c!724708 x!738013)))) lt!1511611)))

(assert (= (and d!1256845 c!724950) b!4265431))

(assert (= (and d!1256845 (not c!724950)) b!4265432))

(assert (= (and d!1256845 res!1752896) b!4265433))

(assert (= (and b!4265433 res!1752895) b!4265434))

(declare-fun m!4855987 () Bool)

(assert (=> b!4265433 m!4855987))

(assert (=> b!4265433 m!4855607))

(assert (=> b!4265433 m!4855657))

(declare-fun m!4855989 () Bool)

(assert (=> b!4265433 m!4855989))

(assert (=> b!4265432 m!4855657))

(declare-fun m!4855991 () Bool)

(assert (=> b!4265432 m!4855991))

(declare-fun m!4855993 () Bool)

(assert (=> d!1256845 m!4855993))

(assert (=> d!1256845 m!4855615))

(assert (=> d!1256845 m!4855657))

(declare-fun m!4855995 () Bool)

(assert (=> d!1256845 m!4855995))

(assert (=> d!1256727 d!1256845))

(declare-fun d!1256847 () Bool)

(assert (=> d!1256847 (= (++!12049 (++!12049 lt!1511505 lt!1511502) (efficientList$default$2!146 (c!724708 x!738013))) (++!12049 lt!1511505 (++!12049 lt!1511502 (efficientList$default$2!146 (c!724708 x!738013)))))))

(assert (=> d!1256847 true))

(declare-fun _$15!500 () Unit!66151)

(assert (=> d!1256847 (= (choose!25997 lt!1511505 lt!1511502 (efficientList$default$2!146 (c!724708 x!738013))) _$15!500)))

(declare-fun bs!599287 () Bool)

(assert (= bs!599287 d!1256847))

(assert (=> bs!599287 m!4855167))

(assert (=> bs!599287 m!4855167))

(assert (=> bs!599287 m!4855135))

(assert (=> bs!599287 m!4855177))

(assert (=> bs!599287 m!4855135))

(assert (=> bs!599287 m!4855657))

(assert (=> bs!599287 m!4855657))

(assert (=> bs!599287 m!4855661))

(assert (=> d!1256727 d!1256847))

(assert (=> d!1256727 d!1256725))

(declare-fun e!2648456 () Bool)

(declare-fun lt!1511612 () List!47392)

(declare-fun b!4265438 () Bool)

(assert (=> b!4265438 (= e!2648456 (or (not (= (efficientList$default$2!146 (c!724708 x!738013)) Nil!47268)) (= lt!1511612 lt!1511502)))))

(declare-fun b!4265437 () Bool)

(declare-fun res!1752897 () Bool)

(assert (=> b!4265437 (=> (not res!1752897) (not e!2648456))))

(assert (=> b!4265437 (= res!1752897 (= (size!34622 lt!1511612) (+ (size!34622 lt!1511502) (size!34622 (efficientList$default$2!146 (c!724708 x!738013))))))))

(declare-fun b!4265436 () Bool)

(declare-fun e!2648457 () List!47392)

(assert (=> b!4265436 (= e!2648457 (Cons!47268 (h!52688 lt!1511502) (++!12049 (t!353461 lt!1511502) (efficientList$default$2!146 (c!724708 x!738013)))))))

(declare-fun b!4265435 () Bool)

(assert (=> b!4265435 (= e!2648457 (efficientList$default$2!146 (c!724708 x!738013)))))

(declare-fun d!1256849 () Bool)

(assert (=> d!1256849 e!2648456))

(declare-fun res!1752898 () Bool)

(assert (=> d!1256849 (=> (not res!1752898) (not e!2648456))))

(assert (=> d!1256849 (= res!1752898 (= (content!7469 lt!1511612) (set.union (content!7469 lt!1511502) (content!7469 (efficientList$default$2!146 (c!724708 x!738013))))))))

(assert (=> d!1256849 (= lt!1511612 e!2648457)))

(declare-fun c!724951 () Bool)

(assert (=> d!1256849 (= c!724951 (is-Nil!47268 lt!1511502))))

(assert (=> d!1256849 (= (++!12049 lt!1511502 (efficientList$default$2!146 (c!724708 x!738013))) lt!1511612)))

(assert (= (and d!1256849 c!724951) b!4265435))

(assert (= (and d!1256849 (not c!724951)) b!4265436))

(assert (= (and d!1256849 res!1752898) b!4265437))

(assert (= (and b!4265437 res!1752897) b!4265438))

(declare-fun m!4855997 () Bool)

(assert (=> b!4265437 m!4855997))

(assert (=> b!4265437 m!4855609))

(assert (=> b!4265437 m!4855135))

(assert (=> b!4265437 m!4855239))

(assert (=> b!4265436 m!4855135))

(declare-fun m!4855999 () Bool)

(assert (=> b!4265436 m!4855999))

(declare-fun m!4856001 () Bool)

(assert (=> d!1256849 m!4856001))

(assert (=> d!1256849 m!4855617))

(assert (=> d!1256849 m!4855135))

(assert (=> d!1256849 m!4855247))

(assert (=> d!1256727 d!1256849))

(assert (=> d!1256727 d!1256719))

(declare-fun d!1256851 () Bool)

(declare-fun c!724952 () Bool)

(assert (=> d!1256851 (= c!724952 (is-Nil!47268 (t!353461 (list!17075 (c!724708 x!738013)))))))

(declare-fun e!2648458 () (Set (_ BitVec 16)))

(assert (=> d!1256851 (= (content!7469 (t!353461 (list!17075 (c!724708 x!738013)))) e!2648458)))

(declare-fun b!4265439 () Bool)

(assert (=> b!4265439 (= e!2648458 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265440 () Bool)

(assert (=> b!4265440 (= e!2648458 (set.union (set.insert (h!52688 (t!353461 (list!17075 (c!724708 x!738013)))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (t!353461 (list!17075 (c!724708 x!738013)))))))))

(assert (= (and d!1256851 c!724952) b!4265439))

(assert (= (and d!1256851 (not c!724952)) b!4265440))

(declare-fun m!4856003 () Bool)

(assert (=> b!4265440 m!4856003))

(declare-fun m!4856005 () Bool)

(assert (=> b!4265440 m!4856005))

(assert (=> b!4265048 d!1256851))

(declare-fun d!1256853 () Bool)

(declare-fun lt!1511613 () Int)

(assert (=> d!1256853 (>= lt!1511613 0)))

(declare-fun e!2648459 () Int)

(assert (=> d!1256853 (= lt!1511613 e!2648459)))

(declare-fun c!724953 () Bool)

(assert (=> d!1256853 (= c!724953 (is-Nil!47268 lt!1511528))))

(assert (=> d!1256853 (= (size!34622 lt!1511528) lt!1511613)))

(declare-fun b!4265441 () Bool)

(assert (=> b!4265441 (= e!2648459 0)))

(declare-fun b!4265442 () Bool)

(assert (=> b!4265442 (= e!2648459 (+ 1 (size!34622 (t!353461 lt!1511528))))))

(assert (= (and d!1256853 c!724953) b!4265441))

(assert (= (and d!1256853 (not c!724953)) b!4265442))

(declare-fun m!4856007 () Bool)

(assert (=> b!4265442 m!4856007))

(assert (=> b!4265053 d!1256853))

(declare-fun d!1256855 () Bool)

(declare-fun lt!1511614 () Int)

(assert (=> d!1256855 (>= lt!1511614 0)))

(declare-fun e!2648460 () Int)

(assert (=> d!1256855 (= lt!1511614 e!2648460)))

(declare-fun c!724954 () Bool)

(assert (=> d!1256855 (= c!724954 (is-Nil!47268 (list!17075 (left!35040 (c!724708 x!738013)))))))

(assert (=> d!1256855 (= (size!34622 (list!17075 (left!35040 (c!724708 x!738013)))) lt!1511614)))

(declare-fun b!4265443 () Bool)

(assert (=> b!4265443 (= e!2648460 0)))

(declare-fun b!4265444 () Bool)

(assert (=> b!4265444 (= e!2648460 (+ 1 (size!34622 (t!353461 (list!17075 (left!35040 (c!724708 x!738013)))))))))

(assert (= (and d!1256855 c!724954) b!4265443))

(assert (= (and d!1256855 (not c!724954)) b!4265444))

(assert (=> b!4265444 m!4855959))

(assert (=> b!4265053 d!1256855))

(declare-fun d!1256857 () Bool)

(declare-fun lt!1511615 () Int)

(assert (=> d!1256857 (>= lt!1511615 0)))

(declare-fun e!2648461 () Int)

(assert (=> d!1256857 (= lt!1511615 e!2648461)))

(declare-fun c!724955 () Bool)

(assert (=> d!1256857 (= c!724955 (is-Nil!47268 (list!17075 (right!35370 (c!724708 x!738013)))))))

(assert (=> d!1256857 (= (size!34622 (list!17075 (right!35370 (c!724708 x!738013)))) lt!1511615)))

(declare-fun b!4265445 () Bool)

(assert (=> b!4265445 (= e!2648461 0)))

(declare-fun b!4265446 () Bool)

(assert (=> b!4265446 (= e!2648461 (+ 1 (size!34622 (t!353461 (list!17075 (right!35370 (c!724708 x!738013)))))))))

(assert (= (and d!1256857 c!724955) b!4265445))

(assert (= (and d!1256857 (not c!724955)) b!4265446))

(declare-fun m!4856009 () Bool)

(assert (=> b!4265446 m!4856009))

(assert (=> b!4265053 d!1256857))

(declare-fun d!1256859 () Bool)

(declare-fun e!2648462 () Bool)

(assert (=> d!1256859 e!2648462))

(declare-fun res!1752899 () Bool)

(assert (=> d!1256859 (=> (not res!1752899) (not e!2648462))))

(declare-fun lt!1511616 () BalanceConc!28010)

(assert (=> d!1256859 (= res!1752899 (= (list!17073 lt!1511616) (Cons!47268 #x002A Nil!47268)))))

(assert (=> d!1256859 (= lt!1511616 (BalanceConc!28011 (fromList!917 (Cons!47268 #x002A Nil!47268))))))

(assert (=> d!1256859 (= (fromListB!2657 (Cons!47268 #x002A Nil!47268)) lt!1511616)))

(declare-fun b!4265447 () Bool)

(assert (=> b!4265447 (= e!2648462 (isBalanced!3809 (fromList!917 (Cons!47268 #x002A Nil!47268))))))

(assert (= (and d!1256859 res!1752899) b!4265447))

(declare-fun m!4856011 () Bool)

(assert (=> d!1256859 m!4856011))

(declare-fun m!4856013 () Bool)

(assert (=> d!1256859 m!4856013))

(assert (=> b!4265447 m!4856013))

(assert (=> b!4265447 m!4856013))

(declare-fun m!4856015 () Bool)

(assert (=> b!4265447 m!4856015))

(assert (=> d!1256709 d!1256859))

(declare-fun d!1256861 () Bool)

(declare-fun c!724956 () Bool)

(assert (=> d!1256861 (= c!724956 (is-Nil!47268 lt!1511542))))

(declare-fun e!2648463 () (Set (_ BitVec 16)))

(assert (=> d!1256861 (= (content!7469 lt!1511542) e!2648463)))

(declare-fun b!4265448 () Bool)

(assert (=> b!4265448 (= e!2648463 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265449 () Bool)

(assert (=> b!4265449 (= e!2648463 (set.union (set.insert (h!52688 lt!1511542) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 lt!1511542))))))

(assert (= (and d!1256861 c!724956) b!4265448))

(assert (= (and d!1256861 (not c!724956)) b!4265449))

(declare-fun m!4856017 () Bool)

(assert (=> b!4265449 m!4856017))

(declare-fun m!4856019 () Bool)

(assert (=> b!4265449 m!4856019))

(assert (=> d!1256663 d!1256861))

(assert (=> d!1256663 d!1256851))

(assert (=> d!1256663 d!1256599))

(declare-fun d!1256863 () Bool)

(assert (=> d!1256863 (= (seqFromList!5846 (Cons!47268 #x0026 (Cons!47268 #x0026 Nil!47268))) (fromListB!2657 (Cons!47268 #x0026 (Cons!47268 #x0026 Nil!47268))))))

(declare-fun bs!599288 () Bool)

(assert (= bs!599288 d!1256863))

(declare-fun m!4856021 () Bool)

(assert (=> bs!599288 m!4856021))

(assert (=> d!1256581 d!1256863))

(declare-fun d!1256865 () Bool)

(assert (=> d!1256865 (= (seqFromList!5846 (Cons!47268 #x002F Nil!47268)) (fromListB!2657 (Cons!47268 #x002F Nil!47268)))))

(declare-fun bs!599289 () Bool)

(assert (= bs!599289 d!1256865))

(declare-fun m!4856023 () Bool)

(assert (=> bs!599289 m!4856023))

(assert (=> d!1256575 d!1256865))

(declare-fun d!1256867 () Bool)

(assert (=> d!1256867 (= (list!17073 lt!1511548) (list!17075 (c!724708 lt!1511548)))))

(declare-fun bs!599290 () Bool)

(assert (= bs!599290 d!1256867))

(declare-fun m!4856025 () Bool)

(assert (=> bs!599290 m!4856025))

(assert (=> d!1256679 d!1256867))

(declare-fun d!1256869 () Bool)

(declare-fun e!2648464 () Bool)

(assert (=> d!1256869 e!2648464))

(declare-fun res!1752900 () Bool)

(assert (=> d!1256869 (=> (not res!1752900) (not e!2648464))))

(declare-fun lt!1511617 () Conc!14250)

(assert (=> d!1256869 (= res!1752900 (= (list!17075 lt!1511617) (Cons!47268 #x002D Nil!47268)))))

(assert (=> d!1256869 (= lt!1511617 (choose!25996 (Cons!47268 #x002D Nil!47268)))))

(assert (=> d!1256869 (= (fromList!917 (Cons!47268 #x002D Nil!47268)) lt!1511617)))

(declare-fun b!4265450 () Bool)

(assert (=> b!4265450 (= e!2648464 (isBalanced!3809 lt!1511617))))

(assert (= (and d!1256869 res!1752900) b!4265450))

(declare-fun m!4856027 () Bool)

(assert (=> d!1256869 m!4856027))

(declare-fun m!4856029 () Bool)

(assert (=> d!1256869 m!4856029))

(declare-fun m!4856031 () Bool)

(assert (=> b!4265450 m!4856031))

(assert (=> d!1256679 d!1256869))

(declare-fun d!1256871 () Bool)

(assert (=> d!1256871 (= (seqFromList!5846 (Cons!47268 #x002B (Cons!47268 #x002B Nil!47268))) (fromListB!2657 (Cons!47268 #x002B (Cons!47268 #x002B Nil!47268))))))

(declare-fun bs!599291 () Bool)

(assert (= bs!599291 d!1256871))

(declare-fun m!4856033 () Bool)

(assert (=> bs!599291 m!4856033))

(assert (=> d!1256565 d!1256871))

(declare-fun d!1256873 () Bool)

(declare-fun c!724957 () Bool)

(assert (=> d!1256873 (= c!724957 (is-Nil!47268 lt!1511561))))

(declare-fun e!2648465 () (Set (_ BitVec 16)))

(assert (=> d!1256873 (= (content!7469 lt!1511561) e!2648465)))

(declare-fun b!4265451 () Bool)

(assert (=> b!4265451 (= e!2648465 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265452 () Bool)

(assert (=> b!4265452 (= e!2648465 (set.union (set.insert (h!52688 lt!1511561) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 lt!1511561))))))

(assert (= (and d!1256873 c!724957) b!4265451))

(assert (= (and d!1256873 (not c!724957)) b!4265452))

(declare-fun m!4856035 () Bool)

(assert (=> b!4265452 m!4856035))

(declare-fun m!4856037 () Bool)

(assert (=> b!4265452 m!4856037))

(assert (=> d!1256721 d!1256873))

(assert (=> d!1256721 d!1256841))

(declare-fun d!1256875 () Bool)

(declare-fun c!724958 () Bool)

(assert (=> d!1256875 (= c!724958 (is-Nil!47268 call!294041))))

(declare-fun e!2648466 () (Set (_ BitVec 16)))

(assert (=> d!1256875 (= (content!7469 call!294041) e!2648466)))

(declare-fun b!4265453 () Bool)

(assert (=> b!4265453 (= e!2648466 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265454 () Bool)

(assert (=> b!4265454 (= e!2648466 (set.union (set.insert (h!52688 call!294041) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 call!294041))))))

(assert (= (and d!1256875 c!724958) b!4265453))

(assert (= (and d!1256875 (not c!724958)) b!4265454))

(declare-fun m!4856039 () Bool)

(assert (=> b!4265454 m!4856039))

(declare-fun m!4856041 () Bool)

(assert (=> b!4265454 m!4856041))

(assert (=> d!1256721 d!1256875))

(declare-fun lt!1511618 () List!47392)

(declare-fun e!2648467 () Bool)

(declare-fun b!4265458 () Bool)

(assert (=> b!4265458 (= e!2648467 (or (not (= (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))) Nil!47268)) (= lt!1511618 (t!353461 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))))

(declare-fun b!4265457 () Bool)

(declare-fun res!1752901 () Bool)

(assert (=> b!4265457 (=> (not res!1752901) (not e!2648467))))

(assert (=> b!4265457 (= res!1752901 (= (size!34622 lt!1511618) (+ (size!34622 (t!353461 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) (size!34622 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))))

(declare-fun b!4265456 () Bool)

(declare-fun e!2648468 () List!47392)

(assert (=> b!4265456 (= e!2648468 (Cons!47268 (h!52688 (t!353461 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) (++!12049 (t!353461 (t!353461 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(declare-fun b!4265455 () Bool)

(assert (=> b!4265455 (= e!2648468 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))

(declare-fun d!1256877 () Bool)

(assert (=> d!1256877 e!2648467))

(declare-fun res!1752902 () Bool)

(assert (=> d!1256877 (=> (not res!1752902) (not e!2648467))))

(assert (=> d!1256877 (= res!1752902 (= (content!7469 lt!1511618) (set.union (content!7469 (t!353461 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) (content!7469 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))))

(assert (=> d!1256877 (= lt!1511618 e!2648468)))

(declare-fun c!724959 () Bool)

(assert (=> d!1256877 (= c!724959 (is-Nil!47268 (t!353461 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(assert (=> d!1256877 (= (++!12049 (t!353461 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) lt!1511618)))

(assert (= (and d!1256877 c!724959) b!4265455))

(assert (= (and d!1256877 (not c!724959)) b!4265456))

(assert (= (and d!1256877 res!1752902) b!4265457))

(assert (= (and b!4265457 res!1752901) b!4265458))

(declare-fun m!4856043 () Bool)

(assert (=> b!4265457 m!4856043))

(assert (=> b!4265457 m!4855907))

(assert (=> b!4265457 m!4855143))

(assert (=> b!4265457 m!4855333))

(assert (=> b!4265456 m!4855143))

(declare-fun m!4856045 () Bool)

(assert (=> b!4265456 m!4856045))

(declare-fun m!4856047 () Bool)

(assert (=> d!1256877 m!4856047))

(assert (=> d!1256877 m!4855513))

(assert (=> d!1256877 m!4855143))

(assert (=> d!1256877 m!4855341))

(assert (=> b!4265067 d!1256877))

(declare-fun d!1256879 () Bool)

(assert (=> d!1256879 (= (seqFromList!5846 (Cons!47268 #x003D Nil!47268)) (fromListB!2657 (Cons!47268 #x003D Nil!47268)))))

(declare-fun bs!599292 () Bool)

(assert (= bs!599292 d!1256879))

(declare-fun m!4856049 () Bool)

(assert (=> bs!599292 m!4856049))

(assert (=> d!1256591 d!1256879))

(declare-fun d!1256881 () Bool)

(declare-fun c!724960 () Bool)

(assert (=> d!1256881 (= c!724960 (is-Nil!47268 (t!353461 (efficientList$default$2!146 (c!724708 x!738013)))))))

(declare-fun e!2648469 () (Set (_ BitVec 16)))

(assert (=> d!1256881 (= (content!7469 (t!353461 (efficientList$default$2!146 (c!724708 x!738013)))) e!2648469)))

(declare-fun b!4265459 () Bool)

(assert (=> b!4265459 (= e!2648469 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265460 () Bool)

(assert (=> b!4265460 (= e!2648469 (set.union (set.insert (h!52688 (t!353461 (efficientList$default$2!146 (c!724708 x!738013)))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (t!353461 (efficientList$default$2!146 (c!724708 x!738013)))))))))

(assert (= (and d!1256881 c!724960) b!4265459))

(assert (= (and d!1256881 (not c!724960)) b!4265460))

(declare-fun m!4856051 () Bool)

(assert (=> b!4265460 m!4856051))

(declare-fun m!4856053 () Bool)

(assert (=> b!4265460 m!4856053))

(assert (=> b!4265050 d!1256881))

(declare-fun b!4265463 () Bool)

(declare-fun e!2648471 () List!47392)

(assert (=> b!4265463 (= e!2648471 (list!17077 (xs!17556 (c!724708 lt!1511531))))))

(declare-fun b!4265461 () Bool)

(declare-fun e!2648470 () List!47392)

(assert (=> b!4265461 (= e!2648470 Nil!47268)))

(declare-fun d!1256883 () Bool)

(declare-fun c!724961 () Bool)

(assert (=> d!1256883 (= c!724961 (is-Empty!14250 (c!724708 lt!1511531)))))

(assert (=> d!1256883 (= (list!17075 (c!724708 lt!1511531)) e!2648470)))

(declare-fun b!4265464 () Bool)

(assert (=> b!4265464 (= e!2648471 (++!12049 (list!17075 (left!35040 (c!724708 lt!1511531))) (list!17075 (right!35370 (c!724708 lt!1511531)))))))

(declare-fun b!4265462 () Bool)

(assert (=> b!4265462 (= e!2648470 e!2648471)))

(declare-fun c!724962 () Bool)

(assert (=> b!4265462 (= c!724962 (is-Leaf!22031 (c!724708 lt!1511531)))))

(assert (= (and d!1256883 c!724961) b!4265461))

(assert (= (and d!1256883 (not c!724961)) b!4265462))

(assert (= (and b!4265462 c!724962) b!4265463))

(assert (= (and b!4265462 (not c!724962)) b!4265464))

(declare-fun m!4856055 () Bool)

(assert (=> b!4265463 m!4856055))

(declare-fun m!4856057 () Bool)

(assert (=> b!4265464 m!4856057))

(declare-fun m!4856059 () Bool)

(assert (=> b!4265464 m!4856059))

(assert (=> b!4265464 m!4856057))

(assert (=> b!4265464 m!4856059))

(declare-fun m!4856061 () Bool)

(assert (=> b!4265464 m!4856061))

(assert (=> d!1256665 d!1256883))

(push 1)

(assert (not d!1256715))

(assert (not b!4265207))

(assert (not b!4265233))

(assert (not b!4265406))

(assert (not b!4265415))

(assert (not b!4265414))

(assert (not b!4265232))

(assert (not b!4265449))

(assert (not b!4265251))

(assert (not b!4265180))

(assert (not d!1256829))

(assert (not b!4265062))

(assert (not b!4265395))

(assert (not b!4265224))

(assert (not b!4265447))

(assert (not d!1256697))

(assert (not d!1256837))

(assert (not b!4265389))

(assert (not b!4265250))

(assert (not b!4265403))

(assert (not b!4265117))

(assert (not b!4265426))

(assert (not b!4265208))

(assert (not b!4265212))

(assert (not b!4265219))

(assert (not b!4265203))

(assert (not b!4265137))

(assert (not d!1256879))

(assert (not b!4265464))

(assert (not d!1256805))

(assert (not b!4265430))

(assert (not b!4265248))

(assert (not b!4265379))

(assert (not d!1256711))

(assert (not b!4265150))

(assert (not d!1256865))

(assert (not b!4265418))

(assert (not b!4265222))

(assert (not d!1256681))

(assert (not b!4265128))

(assert (not b!4265249))

(assert (not b!4265424))

(assert (not b!4265412))

(assert (not b!4265405))

(assert (not b!4265423))

(assert (not b!4265243))

(assert (not b!4264988))

(assert (not b!4265230))

(assert (not b!4265134))

(assert (not d!1256847))

(assert (not b!4265162))

(assert (not d!1256877))

(assert (not b!4265158))

(assert (not b!4265454))

(assert (not b!4265058))

(assert (not b!4265387))

(assert (not b!4265057))

(assert (not b!4265380))

(assert (not b!4265410))

(assert (not b!4265159))

(assert (not d!1256859))

(assert (not b!4265236))

(assert (not b!4265118))

(assert (not b!4265113))

(assert (not b!4265111))

(assert (not b!4265392))

(assert (not b!4265433))

(assert (not d!1256867))

(assert (not b!4265131))

(assert (not b!4265419))

(assert (not b!4265463))

(assert (not b!4265196))

(assert (not b!4265402))

(assert (not bm!294040))

(assert (not d!1256863))

(assert (not b!4265136))

(assert (not bm!294041))

(assert (not b!4265442))

(assert (not b!4265457))

(assert (not b!4265217))

(assert (not b!4265437))

(assert (not b!4265144))

(assert (not b!4265444))

(assert (not d!1256845))

(assert (not b!4265428))

(assert (not b!4265077))

(assert (not b!4265115))

(assert (not b!4265129))

(assert (not b!4265227))

(assert (not b!4265450))

(assert (not d!1256707))

(assert (not b!4265061))

(assert (not b!4265238))

(assert (not b!4265231))

(assert (not b!4265460))

(assert (not b!4265401))

(assert (not b!4265404))

(assert (not d!1256801))

(assert (not d!1256869))

(assert (not b!4265229))

(assert (not b!4265197))

(assert (not b!4265199))

(assert (not b!4265194))

(assert (not b!4265247))

(assert (not b!4265076))

(assert (not b!4265221))

(assert (not d!1256821))

(assert (not d!1256817))

(assert (not b!4265195))

(assert (not b!4265166))

(assert (not b!4265174))

(assert (not b!4265456))

(assert (not b!4265164))

(assert (not b!4265391))

(assert (not d!1256833))

(assert (not b!4265198))

(assert (not b!4265407))

(assert (not b!4265240))

(assert (not b!4265440))

(assert (not b!4265152))

(assert (not b!4265388))

(assert (not b!4265452))

(assert (not d!1256809))

(assert (not b!4265072))

(assert (not d!1256807))

(assert (not b!4265211))

(assert (not b!4265397))

(assert (not d!1256831))

(assert (not b!4265073))

(assert (not b!4265436))

(assert (not b!4265432))

(assert (not b!4265399))

(assert (not d!1256849))

(assert (not b!4265446))

(assert (not b!4265408))

(assert (not d!1256871))

(assert (not b!4265205))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1256969 () Bool)

(declare-fun c!724992 () Bool)

(assert (=> d!1256969 (= c!724992 (is-Nil!47268 (t!353461 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(declare-fun e!2648521 () (Set (_ BitVec 16)))

(assert (=> d!1256969 (= (content!7469 (t!353461 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) e!2648521)))

(declare-fun b!4265553 () Bool)

(assert (=> b!4265553 (= e!2648521 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265554 () Bool)

(assert (=> b!4265554 (= e!2648521 (set.union (set.insert (h!52688 (t!353461 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (t!353461 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))))

(assert (= (and d!1256969 c!724992) b!4265553))

(assert (= (and d!1256969 (not c!724992)) b!4265554))

(declare-fun m!4856251 () Bool)

(assert (=> b!4265554 m!4856251))

(declare-fun m!4856253 () Bool)

(assert (=> b!4265554 m!4856253))

(assert (=> b!4265152 d!1256969))

(declare-fun b!4265557 () Bool)

(declare-fun e!2648523 () List!47392)

(assert (=> b!4265557 (= e!2648523 (list!17077 (xs!17556 lt!1511617)))))

(declare-fun b!4265555 () Bool)

(declare-fun e!2648522 () List!47392)

(assert (=> b!4265555 (= e!2648522 Nil!47268)))

(declare-fun d!1256971 () Bool)

(declare-fun c!724993 () Bool)

(assert (=> d!1256971 (= c!724993 (is-Empty!14250 lt!1511617))))

(assert (=> d!1256971 (= (list!17075 lt!1511617) e!2648522)))

(declare-fun b!4265558 () Bool)

(assert (=> b!4265558 (= e!2648523 (++!12049 (list!17075 (left!35040 lt!1511617)) (list!17075 (right!35370 lt!1511617))))))

(declare-fun b!4265556 () Bool)

(assert (=> b!4265556 (= e!2648522 e!2648523)))

(declare-fun c!724994 () Bool)

(assert (=> b!4265556 (= c!724994 (is-Leaf!22031 lt!1511617))))

(assert (= (and d!1256971 c!724993) b!4265555))

(assert (= (and d!1256971 (not c!724993)) b!4265556))

(assert (= (and b!4265556 c!724994) b!4265557))

(assert (= (and b!4265556 (not c!724994)) b!4265558))

(declare-fun m!4856255 () Bool)

(assert (=> b!4265557 m!4856255))

(declare-fun m!4856257 () Bool)

(assert (=> b!4265558 m!4856257))

(declare-fun m!4856259 () Bool)

(assert (=> b!4265558 m!4856259))

(assert (=> b!4265558 m!4856257))

(assert (=> b!4265558 m!4856259))

(declare-fun m!4856261 () Bool)

(assert (=> b!4265558 m!4856261))

(assert (=> d!1256869 d!1256971))

(declare-fun d!1256973 () Bool)

(declare-fun e!2648524 () Bool)

(assert (=> d!1256973 e!2648524))

(declare-fun res!1752930 () Bool)

(assert (=> d!1256973 (=> (not res!1752930) (not e!2648524))))

(declare-fun res!1752931 () Conc!14250)

(assert (=> d!1256973 (= res!1752930 (= (list!17075 res!1752931) (Cons!47268 #x002D Nil!47268)))))

(declare-fun e!2648526 () Bool)

(assert (=> d!1256973 (and (inv!62190 res!1752931) e!2648526)))

(assert (=> d!1256973 (= (choose!25996 (Cons!47268 #x002D Nil!47268)) res!1752931)))

(declare-fun b!4265559 () Bool)

(declare-fun tp!1307481 () Bool)

(declare-fun tp!1307482 () Bool)

(assert (=> b!4265559 (= e!2648526 (and (inv!62190 (left!35040 res!1752931)) tp!1307482 (inv!62190 (right!35370 res!1752931)) tp!1307481))))

(declare-fun b!4265560 () Bool)

(assert (=> b!4265560 (= e!2648526 (inv!62196 (xs!17556 res!1752931)))))

(declare-fun b!4265561 () Bool)

(assert (=> b!4265561 (= e!2648524 (isBalanced!3809 res!1752931))))

(assert (= (and d!1256973 (is-Node!14250 res!1752931)) b!4265559))

(assert (= (and d!1256973 (is-Leaf!22031 res!1752931)) b!4265560))

(assert (= (and d!1256973 res!1752930) b!4265561))

(declare-fun m!4856263 () Bool)

(assert (=> d!1256973 m!4856263))

(declare-fun m!4856265 () Bool)

(assert (=> d!1256973 m!4856265))

(declare-fun m!4856267 () Bool)

(assert (=> b!4265559 m!4856267))

(declare-fun m!4856269 () Bool)

(assert (=> b!4265559 m!4856269))

(declare-fun m!4856271 () Bool)

(assert (=> b!4265560 m!4856271))

(declare-fun m!4856273 () Bool)

(assert (=> b!4265561 m!4856273))

(assert (=> d!1256869 d!1256973))

(declare-fun d!1256975 () Bool)

(declare-fun res!1752937 () Bool)

(declare-fun e!2648527 () Bool)

(assert (=> d!1256975 (=> res!1752937 e!2648527)))

(assert (=> d!1256975 (= res!1752937 (not (is-Node!14250 lt!1511545)))))

(assert (=> d!1256975 (= (isBalanced!3809 lt!1511545) e!2648527)))

(declare-fun b!4265562 () Bool)

(declare-fun e!2648528 () Bool)

(assert (=> b!4265562 (= e!2648527 e!2648528)))

(declare-fun res!1752933 () Bool)

(assert (=> b!4265562 (=> (not res!1752933) (not e!2648528))))

(assert (=> b!4265562 (= res!1752933 (<= (- 1) (- (height!1875 (left!35040 lt!1511545)) (height!1875 (right!35370 lt!1511545)))))))

(declare-fun b!4265563 () Bool)

(declare-fun res!1752934 () Bool)

(assert (=> b!4265563 (=> (not res!1752934) (not e!2648528))))

(assert (=> b!4265563 (= res!1752934 (isBalanced!3809 (left!35040 lt!1511545)))))

(declare-fun b!4265564 () Bool)

(declare-fun res!1752936 () Bool)

(assert (=> b!4265564 (=> (not res!1752936) (not e!2648528))))

(assert (=> b!4265564 (= res!1752936 (<= (- (height!1875 (left!35040 lt!1511545)) (height!1875 (right!35370 lt!1511545))) 1))))

(declare-fun b!4265565 () Bool)

(assert (=> b!4265565 (= e!2648528 (not (isEmpty!27994 (right!35370 lt!1511545))))))

(declare-fun b!4265566 () Bool)

(declare-fun res!1752935 () Bool)

(assert (=> b!4265566 (=> (not res!1752935) (not e!2648528))))

(assert (=> b!4265566 (= res!1752935 (isBalanced!3809 (right!35370 lt!1511545)))))

(declare-fun b!4265567 () Bool)

(declare-fun res!1752932 () Bool)

(assert (=> b!4265567 (=> (not res!1752932) (not e!2648528))))

(assert (=> b!4265567 (= res!1752932 (not (isEmpty!27994 (left!35040 lt!1511545))))))

(assert (= (and d!1256975 (not res!1752937)) b!4265562))

(assert (= (and b!4265562 res!1752933) b!4265564))

(assert (= (and b!4265564 res!1752936) b!4265563))

(assert (= (and b!4265563 res!1752934) b!4265566))

(assert (= (and b!4265566 res!1752935) b!4265567))

(assert (= (and b!4265567 res!1752932) b!4265565))

(declare-fun m!4856275 () Bool)

(assert (=> b!4265562 m!4856275))

(declare-fun m!4856277 () Bool)

(assert (=> b!4265562 m!4856277))

(declare-fun m!4856279 () Bool)

(assert (=> b!4265566 m!4856279))

(declare-fun m!4856281 () Bool)

(assert (=> b!4265563 m!4856281))

(declare-fun m!4856283 () Bool)

(assert (=> b!4265565 m!4856283))

(assert (=> b!4265564 m!4856275))

(assert (=> b!4265564 m!4856277))

(declare-fun m!4856285 () Bool)

(assert (=> b!4265567 m!4856285))

(assert (=> b!4265128 d!1256975))

(assert (=> d!1256847 d!1256725))

(assert (=> d!1256847 d!1256719))

(assert (=> d!1256847 d!1256845))

(assert (=> d!1256847 d!1256849))

(declare-fun e!2648529 () Bool)

(declare-fun lt!1511635 () List!47392)

(declare-fun b!4265571 () Bool)

(assert (=> b!4265571 (= e!2648529 (or (not (= (efficientList$default$2!146 (c!724708 x!738013)) Nil!47268)) (= lt!1511635 (t!353461 (++!12049 lt!1511505 lt!1511502)))))))

(declare-fun b!4265570 () Bool)

(declare-fun res!1752938 () Bool)

(assert (=> b!4265570 (=> (not res!1752938) (not e!2648529))))

(assert (=> b!4265570 (= res!1752938 (= (size!34622 lt!1511635) (+ (size!34622 (t!353461 (++!12049 lt!1511505 lt!1511502))) (size!34622 (efficientList$default$2!146 (c!724708 x!738013))))))))

(declare-fun e!2648530 () List!47392)

(declare-fun b!4265569 () Bool)

(assert (=> b!4265569 (= e!2648530 (Cons!47268 (h!52688 (t!353461 (++!12049 lt!1511505 lt!1511502))) (++!12049 (t!353461 (t!353461 (++!12049 lt!1511505 lt!1511502))) (efficientList$default$2!146 (c!724708 x!738013)))))))

(declare-fun b!4265568 () Bool)

(assert (=> b!4265568 (= e!2648530 (efficientList$default$2!146 (c!724708 x!738013)))))

(declare-fun d!1256977 () Bool)

(assert (=> d!1256977 e!2648529))

(declare-fun res!1752939 () Bool)

(assert (=> d!1256977 (=> (not res!1752939) (not e!2648529))))

(assert (=> d!1256977 (= res!1752939 (= (content!7469 lt!1511635) (set.union (content!7469 (t!353461 (++!12049 lt!1511505 lt!1511502))) (content!7469 (efficientList$default$2!146 (c!724708 x!738013))))))))

(assert (=> d!1256977 (= lt!1511635 e!2648530)))

(declare-fun c!724995 () Bool)

(assert (=> d!1256977 (= c!724995 (is-Nil!47268 (t!353461 (++!12049 lt!1511505 lt!1511502))))))

(assert (=> d!1256977 (= (++!12049 (t!353461 (++!12049 lt!1511505 lt!1511502)) (efficientList$default$2!146 (c!724708 x!738013))) lt!1511635)))

(assert (= (and d!1256977 c!724995) b!4265568))

(assert (= (and d!1256977 (not c!724995)) b!4265569))

(assert (= (and d!1256977 res!1752939) b!4265570))

(assert (= (and b!4265570 res!1752938) b!4265571))

(declare-fun m!4856287 () Bool)

(assert (=> b!4265570 m!4856287))

(declare-fun m!4856289 () Bool)

(assert (=> b!4265570 m!4856289))

(assert (=> b!4265570 m!4855135))

(assert (=> b!4265570 m!4855239))

(assert (=> b!4265569 m!4855135))

(declare-fun m!4856291 () Bool)

(assert (=> b!4265569 m!4856291))

(declare-fun m!4856293 () Bool)

(assert (=> d!1256977 m!4856293))

(assert (=> d!1256977 m!4855943))

(assert (=> d!1256977 m!4855135))

(assert (=> d!1256977 m!4855247))

(assert (=> b!4265221 d!1256977))

(declare-fun d!1256979 () Bool)

(assert (=> d!1256979 (= (list!17077 (xs!17556 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) (innerList!14310 (xs!17556 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))

(assert (=> b!4265076 d!1256979))

(declare-fun e!2648531 () Bool)

(declare-fun b!4265575 () Bool)

(declare-fun lt!1511636 () List!47392)

(assert (=> b!4265575 (= e!2648531 (or (not (= (list!17075 (right!35370 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) Nil!47268)) (= lt!1511636 (list!17075 (left!35040 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))))

(declare-fun b!4265574 () Bool)

(declare-fun res!1752940 () Bool)

(assert (=> b!4265574 (=> (not res!1752940) (not e!2648531))))

(assert (=> b!4265574 (= res!1752940 (= (size!34622 lt!1511636) (+ (size!34622 (list!17075 (left!35040 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) (size!34622 (list!17075 (right!35370 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))))

(declare-fun b!4265573 () Bool)

(declare-fun e!2648532 () List!47392)

(assert (=> b!4265573 (= e!2648532 (Cons!47268 (h!52688 (list!17075 (left!35040 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) (++!12049 (t!353461 (list!17075 (left!35040 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) (list!17075 (right!35370 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))))

(declare-fun b!4265572 () Bool)

(assert (=> b!4265572 (= e!2648532 (list!17075 (right!35370 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))

(declare-fun d!1256981 () Bool)

(assert (=> d!1256981 e!2648531))

(declare-fun res!1752941 () Bool)

(assert (=> d!1256981 (=> (not res!1752941) (not e!2648531))))

(assert (=> d!1256981 (= res!1752941 (= (content!7469 lt!1511636) (set.union (content!7469 (list!17075 (left!35040 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) (content!7469 (list!17075 (right!35370 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))))

(assert (=> d!1256981 (= lt!1511636 e!2648532)))

(declare-fun c!724996 () Bool)

(assert (=> d!1256981 (= c!724996 (is-Nil!47268 (list!17075 (left!35040 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(assert (=> d!1256981 (= (++!12049 (list!17075 (left!35040 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) (list!17075 (right!35370 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) lt!1511636)))

(assert (= (and d!1256981 c!724996) b!4265572))

(assert (= (and d!1256981 (not c!724996)) b!4265573))

(assert (= (and d!1256981 res!1752941) b!4265574))

(assert (= (and b!4265574 res!1752940) b!4265575))

(declare-fun m!4856295 () Bool)

(assert (=> b!4265574 m!4856295))

(assert (=> b!4265574 m!4855345))

(declare-fun m!4856297 () Bool)

(assert (=> b!4265574 m!4856297))

(assert (=> b!4265574 m!4855347))

(declare-fun m!4856299 () Bool)

(assert (=> b!4265574 m!4856299))

(assert (=> b!4265573 m!4855347))

(declare-fun m!4856301 () Bool)

(assert (=> b!4265573 m!4856301))

(declare-fun m!4856303 () Bool)

(assert (=> d!1256981 m!4856303))

(assert (=> d!1256981 m!4855345))

(declare-fun m!4856305 () Bool)

(assert (=> d!1256981 m!4856305))

(assert (=> d!1256981 m!4855347))

(declare-fun m!4856307 () Bool)

(assert (=> d!1256981 m!4856307))

(assert (=> b!4265073 d!1256981))

(declare-fun b!4265578 () Bool)

(declare-fun e!2648534 () List!47392)

(assert (=> b!4265578 (= e!2648534 (list!17077 (xs!17556 (left!35040 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(declare-fun b!4265576 () Bool)

(declare-fun e!2648533 () List!47392)

(assert (=> b!4265576 (= e!2648533 Nil!47268)))

(declare-fun d!1256983 () Bool)

(declare-fun c!724997 () Bool)

(assert (=> d!1256983 (= c!724997 (is-Empty!14250 (left!35040 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))

(assert (=> d!1256983 (= (list!17075 (left!35040 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) e!2648533)))

(declare-fun b!4265579 () Bool)

(assert (=> b!4265579 (= e!2648534 (++!12049 (list!17075 (left!35040 (left!35040 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) (list!17075 (right!35370 (left!35040 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))))

(declare-fun b!4265577 () Bool)

(assert (=> b!4265577 (= e!2648533 e!2648534)))

(declare-fun c!724998 () Bool)

(assert (=> b!4265577 (= c!724998 (is-Leaf!22031 (left!35040 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))

(assert (= (and d!1256983 c!724997) b!4265576))

(assert (= (and d!1256983 (not c!724997)) b!4265577))

(assert (= (and b!4265577 c!724998) b!4265578))

(assert (= (and b!4265577 (not c!724998)) b!4265579))

(declare-fun m!4856309 () Bool)

(assert (=> b!4265578 m!4856309))

(declare-fun m!4856311 () Bool)

(assert (=> b!4265579 m!4856311))

(declare-fun m!4856313 () Bool)

(assert (=> b!4265579 m!4856313))

(assert (=> b!4265579 m!4856311))

(assert (=> b!4265579 m!4856313))

(declare-fun m!4856315 () Bool)

(assert (=> b!4265579 m!4856315))

(assert (=> b!4265073 d!1256983))

(declare-fun b!4265582 () Bool)

(declare-fun e!2648536 () List!47392)

(assert (=> b!4265582 (= e!2648536 (list!17077 (xs!17556 (right!35370 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(declare-fun b!4265580 () Bool)

(declare-fun e!2648535 () List!47392)

(assert (=> b!4265580 (= e!2648535 Nil!47268)))

(declare-fun d!1256985 () Bool)

(declare-fun c!724999 () Bool)

(assert (=> d!1256985 (= c!724999 (is-Empty!14250 (right!35370 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))

(assert (=> d!1256985 (= (list!17075 (right!35370 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) e!2648535)))

(declare-fun b!4265583 () Bool)

(assert (=> b!4265583 (= e!2648536 (++!12049 (list!17075 (left!35040 (right!35370 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) (list!17075 (right!35370 (right!35370 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))))

(declare-fun b!4265581 () Bool)

(assert (=> b!4265581 (= e!2648535 e!2648536)))

(declare-fun c!725000 () Bool)

(assert (=> b!4265581 (= c!725000 (is-Leaf!22031 (right!35370 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))

(assert (= (and d!1256985 c!724999) b!4265580))

(assert (= (and d!1256985 (not c!724999)) b!4265581))

(assert (= (and b!4265581 c!725000) b!4265582))

(assert (= (and b!4265581 (not c!725000)) b!4265583))

(declare-fun m!4856317 () Bool)

(assert (=> b!4265582 m!4856317))

(declare-fun m!4856319 () Bool)

(assert (=> b!4265583 m!4856319))

(declare-fun m!4856321 () Bool)

(assert (=> b!4265583 m!4856321))

(assert (=> b!4265583 m!4856319))

(assert (=> b!4265583 m!4856321))

(declare-fun m!4856323 () Bool)

(assert (=> b!4265583 m!4856323))

(assert (=> b!4265073 d!1256985))

(assert (=> d!1256817 d!1256517))

(declare-fun b!4265584 () Bool)

(declare-fun e!2648537 () List!47392)

(declare-fun lt!1511637 () List!47392)

(assert (=> b!4265584 (= e!2648537 lt!1511637)))

(declare-fun d!1256987 () Bool)

(declare-fun lt!1511641 () List!47392)

(assert (=> d!1256987 (= lt!1511641 (++!12049 (list!17075 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))) (efficientList$default$2!146 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))

(declare-fun e!2648538 () List!47392)

(assert (=> d!1256987 (= lt!1511641 e!2648538)))

(declare-fun c!725002 () Bool)

(assert (=> d!1256987 (= c!725002 (is-Empty!14250 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))

(assert (=> d!1256987 (= (efficientList!419 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))) (efficientList$default$2!146 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))) lt!1511641)))

(declare-fun b!4265585 () Bool)

(declare-fun e!2648539 () List!47392)

(declare-fun call!294049 () List!47392)

(assert (=> b!4265585 (= e!2648539 call!294049)))

(declare-fun bm!294044 () Bool)

(declare-fun c!725001 () Bool)

(declare-fun c!725003 () Bool)

(assert (=> bm!294044 (= c!725001 c!725003)))

(assert (=> bm!294044 (= call!294049 (++!12049 e!2648537 (efficientList$default$2!146 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))

(declare-fun b!4265586 () Bool)

(assert (=> b!4265586 (= e!2648538 e!2648539)))

(assert (=> b!4265586 (= c!725003 (is-Leaf!22031 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))

(declare-fun b!4265587 () Bool)

(assert (=> b!4265587 (= e!2648537 (efficientList!421 (xs!17556 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))

(declare-fun b!4265588 () Bool)

(assert (=> b!4265588 (= e!2648538 (efficientList$default$2!146 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))

(declare-fun b!4265589 () Bool)

(declare-fun lt!1511638 () Unit!66151)

(declare-fun lt!1511639 () Unit!66151)

(assert (=> b!4265589 (= lt!1511638 lt!1511639)))

(declare-fun lt!1511640 () List!47392)

(assert (=> b!4265589 (= (++!12049 (++!12049 lt!1511640 lt!1511637) (efficientList$default$2!146 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))) (++!12049 lt!1511640 call!294049))))

(assert (=> b!4265589 (= lt!1511639 (lemmaConcatAssociativity!2693 lt!1511640 lt!1511637 (efficientList$default$2!146 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))

(assert (=> b!4265589 (= lt!1511637 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))

(assert (=> b!4265589 (= lt!1511640 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))

(assert (=> b!4265589 (= e!2648539 (efficientList!419 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))) (efficientList!419 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))) (efficientList$default$2!146 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))

(assert (= (and d!1256987 c!725002) b!4265588))

(assert (= (and d!1256987 (not c!725002)) b!4265586))

(assert (= (and b!4265586 c!725003) b!4265585))

(assert (= (and b!4265586 (not c!725003)) b!4265589))

(assert (= (or b!4265585 b!4265589) bm!294044))

(assert (= (and bm!294044 c!725001) b!4265587))

(assert (= (and bm!294044 (not c!725001)) b!4265584))

(assert (=> d!1256987 m!4855075))

(assert (=> d!1256987 m!4855075))

(assert (=> d!1256987 m!4855911))

(declare-fun m!4856325 () Bool)

(assert (=> d!1256987 m!4856325))

(assert (=> bm!294044 m!4855911))

(declare-fun m!4856327 () Bool)

(assert (=> bm!294044 m!4856327))

(declare-fun m!4856329 () Bool)

(assert (=> b!4265587 m!4856329))

(declare-fun m!4856331 () Bool)

(assert (=> b!4265589 m!4856331))

(assert (=> b!4265589 m!4855143))

(declare-fun m!4856333 () Bool)

(assert (=> b!4265589 m!4856333))

(declare-fun m!4856335 () Bool)

(assert (=> b!4265589 m!4856335))

(assert (=> b!4265589 m!4855911))

(declare-fun m!4856337 () Bool)

(assert (=> b!4265589 m!4856337))

(declare-fun m!4856339 () Bool)

(assert (=> b!4265589 m!4856339))

(assert (=> b!4265589 m!4856331))

(assert (=> b!4265589 m!4855911))

(declare-fun m!4856341 () Bool)

(assert (=> b!4265589 m!4856341))

(assert (=> b!4265589 m!4855911))

(assert (=> b!4265589 m!4856333))

(assert (=> b!4265589 m!4855141))

(assert (=> d!1256817 d!1256987))

(declare-fun d!1256989 () Bool)

(assert (=> d!1256989 (= (efficientList$default$2!146 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))) Nil!47268)))

(assert (=> d!1256817 d!1256989))

(declare-fun d!1256991 () Bool)

(declare-fun c!725004 () Bool)

(assert (=> d!1256991 (= c!725004 (is-Nil!47268 (t!353461 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(declare-fun e!2648540 () (Set (_ BitVec 16)))

(assert (=> d!1256991 (= (content!7469 (t!353461 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) e!2648540)))

(declare-fun b!4265590 () Bool)

(assert (=> b!4265590 (= e!2648540 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265591 () Bool)

(assert (=> b!4265591 (= e!2648540 (set.union (set.insert (h!52688 (t!353461 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (t!353461 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))))

(assert (= (and d!1256991 c!725004) b!4265590))

(assert (= (and d!1256991 (not c!725004)) b!4265591))

(declare-fun m!4856343 () Bool)

(assert (=> b!4265591 m!4856343))

(declare-fun m!4856345 () Bool)

(assert (=> b!4265591 m!4856345))

(assert (=> b!4265150 d!1256991))

(declare-fun d!1256993 () Bool)

(assert (=> d!1256993 (= (list!17073 lt!1511616) (list!17075 (c!724708 lt!1511616)))))

(declare-fun bs!599304 () Bool)

(assert (= bs!599304 d!1256993))

(declare-fun m!4856347 () Bool)

(assert (=> bs!599304 m!4856347))

(assert (=> d!1256859 d!1256993))

(declare-fun d!1256995 () Bool)

(declare-fun e!2648541 () Bool)

(assert (=> d!1256995 e!2648541))

(declare-fun res!1752942 () Bool)

(assert (=> d!1256995 (=> (not res!1752942) (not e!2648541))))

(declare-fun lt!1511642 () Conc!14250)

(assert (=> d!1256995 (= res!1752942 (= (list!17075 lt!1511642) (Cons!47268 #x002A Nil!47268)))))

(assert (=> d!1256995 (= lt!1511642 (choose!25996 (Cons!47268 #x002A Nil!47268)))))

(assert (=> d!1256995 (= (fromList!917 (Cons!47268 #x002A Nil!47268)) lt!1511642)))

(declare-fun b!4265592 () Bool)

(assert (=> b!4265592 (= e!2648541 (isBalanced!3809 lt!1511642))))

(assert (= (and d!1256995 res!1752942) b!4265592))

(declare-fun m!4856349 () Bool)

(assert (=> d!1256995 m!4856349))

(declare-fun m!4856351 () Bool)

(assert (=> d!1256995 m!4856351))

(declare-fun m!4856353 () Bool)

(assert (=> b!4265592 m!4856353))

(assert (=> d!1256859 d!1256995))

(declare-fun b!4265595 () Bool)

(declare-fun e!2648543 () List!47392)

(assert (=> b!4265595 (= e!2648543 (list!17077 (xs!17556 res!1752881)))))

(declare-fun b!4265593 () Bool)

(declare-fun e!2648542 () List!47392)

(assert (=> b!4265593 (= e!2648542 Nil!47268)))

(declare-fun d!1256997 () Bool)

(declare-fun c!725005 () Bool)

(assert (=> d!1256997 (= c!725005 (is-Empty!14250 res!1752881))))

(assert (=> d!1256997 (= (list!17075 res!1752881) e!2648542)))

(declare-fun b!4265596 () Bool)

(assert (=> b!4265596 (= e!2648543 (++!12049 (list!17075 (left!35040 res!1752881)) (list!17075 (right!35370 res!1752881))))))

(declare-fun b!4265594 () Bool)

(assert (=> b!4265594 (= e!2648542 e!2648543)))

(declare-fun c!725006 () Bool)

(assert (=> b!4265594 (= c!725006 (is-Leaf!22031 res!1752881))))

(assert (= (and d!1256997 c!725005) b!4265593))

(assert (= (and d!1256997 (not c!725005)) b!4265594))

(assert (= (and b!4265594 c!725006) b!4265595))

(assert (= (and b!4265594 (not c!725006)) b!4265596))

(declare-fun m!4856355 () Bool)

(assert (=> b!4265595 m!4856355))

(declare-fun m!4856357 () Bool)

(assert (=> b!4265596 m!4856357))

(declare-fun m!4856359 () Bool)

(assert (=> b!4265596 m!4856359))

(assert (=> b!4265596 m!4856357))

(assert (=> b!4265596 m!4856359))

(declare-fun m!4856361 () Bool)

(assert (=> b!4265596 m!4856361))

(assert (=> d!1256805 d!1256997))

(declare-fun d!1256999 () Bool)

(declare-fun c!725007 () Bool)

(assert (=> d!1256999 (= c!725007 (is-Node!14250 res!1752881))))

(declare-fun e!2648544 () Bool)

(assert (=> d!1256999 (= (inv!62190 res!1752881) e!2648544)))

(declare-fun b!4265597 () Bool)

(assert (=> b!4265597 (= e!2648544 (inv!62194 res!1752881))))

(declare-fun b!4265598 () Bool)

(declare-fun e!2648545 () Bool)

(assert (=> b!4265598 (= e!2648544 e!2648545)))

(declare-fun res!1752943 () Bool)

(assert (=> b!4265598 (= res!1752943 (not (is-Leaf!22031 res!1752881)))))

(assert (=> b!4265598 (=> res!1752943 e!2648545)))

(declare-fun b!4265599 () Bool)

(assert (=> b!4265599 (= e!2648545 (inv!62195 res!1752881))))

(assert (= (and d!1256999 c!725007) b!4265597))

(assert (= (and d!1256999 (not c!725007)) b!4265598))

(assert (= (and b!4265598 (not res!1752943)) b!4265599))

(declare-fun m!4856363 () Bool)

(assert (=> b!4265597 m!4856363))

(declare-fun m!4856365 () Bool)

(assert (=> b!4265599 m!4856365))

(assert (=> d!1256805 d!1256999))

(declare-fun d!1257001 () Bool)

(declare-fun c!725008 () Bool)

(assert (=> d!1257001 (= c!725008 (is-Nil!47268 (t!353461 (list!17075 (left!35040 (c!724708 x!738013))))))))

(declare-fun e!2648546 () (Set (_ BitVec 16)))

(assert (=> d!1257001 (= (content!7469 (t!353461 (list!17075 (left!35040 (c!724708 x!738013))))) e!2648546)))

(declare-fun b!4265600 () Bool)

(assert (=> b!4265600 (= e!2648546 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265601 () Bool)

(assert (=> b!4265601 (= e!2648546 (set.union (set.insert (h!52688 (t!353461 (list!17075 (left!35040 (c!724708 x!738013))))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (t!353461 (list!17075 (left!35040 (c!724708 x!738013))))))))))

(assert (= (and d!1257001 c!725008) b!4265600))

(assert (= (and d!1257001 (not c!725008)) b!4265601))

(declare-fun m!4856367 () Bool)

(assert (=> b!4265601 m!4856367))

(declare-fun m!4856369 () Bool)

(assert (=> b!4265601 m!4856369))

(assert (=> b!4265164 d!1257001))

(declare-fun e!2648547 () Bool)

(declare-fun b!4265605 () Bool)

(declare-fun lt!1511643 () List!47392)

(assert (=> b!4265605 (= e!2648547 (or (not (= lt!1511502 Nil!47268)) (= lt!1511643 (t!353461 lt!1511505))))))

(declare-fun b!4265604 () Bool)

(declare-fun res!1752944 () Bool)

(assert (=> b!4265604 (=> (not res!1752944) (not e!2648547))))

(assert (=> b!4265604 (= res!1752944 (= (size!34622 lt!1511643) (+ (size!34622 (t!353461 lt!1511505)) (size!34622 lt!1511502))))))

(declare-fun b!4265603 () Bool)

(declare-fun e!2648548 () List!47392)

(assert (=> b!4265603 (= e!2648548 (Cons!47268 (h!52688 (t!353461 lt!1511505)) (++!12049 (t!353461 (t!353461 lt!1511505)) lt!1511502)))))

(declare-fun b!4265602 () Bool)

(assert (=> b!4265602 (= e!2648548 lt!1511502)))

(declare-fun d!1257003 () Bool)

(assert (=> d!1257003 e!2648547))

(declare-fun res!1752945 () Bool)

(assert (=> d!1257003 (=> (not res!1752945) (not e!2648547))))

(assert (=> d!1257003 (= res!1752945 (= (content!7469 lt!1511643) (set.union (content!7469 (t!353461 lt!1511505)) (content!7469 lt!1511502))))))

(assert (=> d!1257003 (= lt!1511643 e!2648548)))

(declare-fun c!725009 () Bool)

(assert (=> d!1257003 (= c!725009 (is-Nil!47268 (t!353461 lt!1511505)))))

(assert (=> d!1257003 (= (++!12049 (t!353461 lt!1511505) lt!1511502) lt!1511643)))

(assert (= (and d!1257003 c!725009) b!4265602))

(assert (= (and d!1257003 (not c!725009)) b!4265603))

(assert (= (and d!1257003 res!1752945) b!4265604))

(assert (= (and b!4265604 res!1752944) b!4265605))

(declare-fun m!4856371 () Bool)

(assert (=> b!4265604 m!4856371))

(declare-fun m!4856373 () Bool)

(assert (=> b!4265604 m!4856373))

(assert (=> b!4265604 m!4855609))

(declare-fun m!4856375 () Bool)

(assert (=> b!4265603 m!4856375))

(declare-fun m!4856377 () Bool)

(assert (=> d!1257003 m!4856377))

(assert (=> d!1257003 m!4855981))

(assert (=> d!1257003 m!4855617))

(assert (=> b!4265207 d!1257003))

(declare-fun d!1257005 () Bool)

(declare-fun lt!1511644 () Int)

(assert (=> d!1257005 (>= lt!1511644 0)))

(declare-fun e!2648549 () Int)

(assert (=> d!1257005 (= lt!1511644 e!2648549)))

(declare-fun c!725010 () Bool)

(assert (=> d!1257005 (= c!725010 (is-Nil!47268 lt!1511567))))

(assert (=> d!1257005 (= (size!34622 lt!1511567) lt!1511644)))

(declare-fun b!4265606 () Bool)

(assert (=> b!4265606 (= e!2648549 0)))

(declare-fun b!4265607 () Bool)

(assert (=> b!4265607 (= e!2648549 (+ 1 (size!34622 (t!353461 lt!1511567))))))

(assert (= (and d!1257005 c!725010) b!4265606))

(assert (= (and d!1257005 (not c!725010)) b!4265607))

(declare-fun m!4856379 () Bool)

(assert (=> b!4265607 m!4856379))

(assert (=> b!4265222 d!1257005))

(declare-fun d!1257007 () Bool)

(declare-fun lt!1511645 () Int)

(assert (=> d!1257007 (>= lt!1511645 0)))

(declare-fun e!2648550 () Int)

(assert (=> d!1257007 (= lt!1511645 e!2648550)))

(declare-fun c!725011 () Bool)

(assert (=> d!1257007 (= c!725011 (is-Nil!47268 (++!12049 lt!1511505 lt!1511502)))))

(assert (=> d!1257007 (= (size!34622 (++!12049 lt!1511505 lt!1511502)) lt!1511645)))

(declare-fun b!4265608 () Bool)

(assert (=> b!4265608 (= e!2648550 0)))

(declare-fun b!4265609 () Bool)

(assert (=> b!4265609 (= e!2648550 (+ 1 (size!34622 (t!353461 (++!12049 lt!1511505 lt!1511502)))))))

(assert (= (and d!1257007 c!725011) b!4265608))

(assert (= (and d!1257007 (not c!725011)) b!4265609))

(assert (=> b!4265609 m!4856289))

(assert (=> b!4265222 d!1257007))

(assert (=> b!4265222 d!1256661))

(declare-fun d!1257009 () Bool)

(declare-fun c!725012 () Bool)

(assert (=> d!1257009 (= c!725012 (is-Nil!47268 (t!353461 lt!1511528)))))

(declare-fun e!2648551 () (Set (_ BitVec 16)))

(assert (=> d!1257009 (= (content!7469 (t!353461 lt!1511528)) e!2648551)))

(declare-fun b!4265610 () Bool)

(assert (=> b!4265610 (= e!2648551 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265611 () Bool)

(assert (=> b!4265611 (= e!2648551 (set.union (set.insert (h!52688 (t!353461 lt!1511528)) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (t!353461 lt!1511528)))))))

(assert (= (and d!1257009 c!725012) b!4265610))

(assert (= (and d!1257009 (not c!725012)) b!4265611))

(declare-fun m!4856381 () Bool)

(assert (=> b!4265611 m!4856381))

(declare-fun m!4856383 () Bool)

(assert (=> b!4265611 m!4856383))

(assert (=> b!4265162 d!1257009))

(declare-fun lt!1511646 () List!47392)

(declare-fun b!4265615 () Bool)

(declare-fun e!2648552 () Bool)

(assert (=> b!4265615 (= e!2648552 (or (not (= (list!17075 (right!35370 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) Nil!47268)) (= lt!1511646 (list!17075 (left!35040 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))))

(declare-fun b!4265614 () Bool)

(declare-fun res!1752946 () Bool)

(assert (=> b!4265614 (=> (not res!1752946) (not e!2648552))))

(assert (=> b!4265614 (= res!1752946 (= (size!34622 lt!1511646) (+ (size!34622 (list!17075 (left!35040 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) (size!34622 (list!17075 (right!35370 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))))

(declare-fun b!4265613 () Bool)

(declare-fun e!2648553 () List!47392)

(assert (=> b!4265613 (= e!2648553 (Cons!47268 (h!52688 (list!17075 (left!35040 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) (++!12049 (t!353461 (list!17075 (left!35040 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) (list!17075 (right!35370 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))))

(declare-fun b!4265612 () Bool)

(assert (=> b!4265612 (= e!2648553 (list!17075 (right!35370 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))

(declare-fun d!1257011 () Bool)

(assert (=> d!1257011 e!2648552))

(declare-fun res!1752947 () Bool)

(assert (=> d!1257011 (=> (not res!1752947) (not e!2648552))))

(assert (=> d!1257011 (= res!1752947 (= (content!7469 lt!1511646) (set.union (content!7469 (list!17075 (left!35040 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) (content!7469 (list!17075 (right!35370 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))))

(assert (=> d!1257011 (= lt!1511646 e!2648553)))

(declare-fun c!725013 () Bool)

(assert (=> d!1257011 (= c!725013 (is-Nil!47268 (list!17075 (left!35040 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(assert (=> d!1257011 (= (++!12049 (list!17075 (left!35040 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) (list!17075 (right!35370 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) lt!1511646)))

(assert (= (and d!1257011 c!725013) b!4265612))

(assert (= (and d!1257011 (not c!725013)) b!4265613))

(assert (= (and d!1257011 res!1752947) b!4265614))

(assert (= (and b!4265614 res!1752946) b!4265615))

(declare-fun m!4856385 () Bool)

(assert (=> b!4265614 m!4856385))

(assert (=> b!4265614 m!4855353))

(declare-fun m!4856387 () Bool)

(assert (=> b!4265614 m!4856387))

(assert (=> b!4265614 m!4855355))

(declare-fun m!4856389 () Bool)

(assert (=> b!4265614 m!4856389))

(assert (=> b!4265613 m!4855355))

(declare-fun m!4856391 () Bool)

(assert (=> b!4265613 m!4856391))

(declare-fun m!4856393 () Bool)

(assert (=> d!1257011 m!4856393))

(assert (=> d!1257011 m!4855353))

(declare-fun m!4856395 () Bool)

(assert (=> d!1257011 m!4856395))

(assert (=> d!1257011 m!4855355))

(declare-fun m!4856397 () Bool)

(assert (=> d!1257011 m!4856397))

(assert (=> b!4265077 d!1257011))

(declare-fun b!4265618 () Bool)

(declare-fun e!2648555 () List!47392)

(assert (=> b!4265618 (= e!2648555 (list!17077 (xs!17556 (left!35040 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(declare-fun b!4265616 () Bool)

(declare-fun e!2648554 () List!47392)

(assert (=> b!4265616 (= e!2648554 Nil!47268)))

(declare-fun d!1257013 () Bool)

(declare-fun c!725014 () Bool)

(assert (=> d!1257013 (= c!725014 (is-Empty!14250 (left!35040 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))

(assert (=> d!1257013 (= (list!17075 (left!35040 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) e!2648554)))

(declare-fun b!4265619 () Bool)

(assert (=> b!4265619 (= e!2648555 (++!12049 (list!17075 (left!35040 (left!35040 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) (list!17075 (right!35370 (left!35040 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))))

(declare-fun b!4265617 () Bool)

(assert (=> b!4265617 (= e!2648554 e!2648555)))

(declare-fun c!725015 () Bool)

(assert (=> b!4265617 (= c!725015 (is-Leaf!22031 (left!35040 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))

(assert (= (and d!1257013 c!725014) b!4265616))

(assert (= (and d!1257013 (not c!725014)) b!4265617))

(assert (= (and b!4265617 c!725015) b!4265618))

(assert (= (and b!4265617 (not c!725015)) b!4265619))

(declare-fun m!4856399 () Bool)

(assert (=> b!4265618 m!4856399))

(declare-fun m!4856401 () Bool)

(assert (=> b!4265619 m!4856401))

(declare-fun m!4856403 () Bool)

(assert (=> b!4265619 m!4856403))

(assert (=> b!4265619 m!4856401))

(assert (=> b!4265619 m!4856403))

(declare-fun m!4856405 () Bool)

(assert (=> b!4265619 m!4856405))

(assert (=> b!4265077 d!1257013))

(declare-fun b!4265622 () Bool)

(declare-fun e!2648557 () List!47392)

(assert (=> b!4265622 (= e!2648557 (list!17077 (xs!17556 (right!35370 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(declare-fun b!4265620 () Bool)

(declare-fun e!2648556 () List!47392)

(assert (=> b!4265620 (= e!2648556 Nil!47268)))

(declare-fun d!1257015 () Bool)

(declare-fun c!725016 () Bool)

(assert (=> d!1257015 (= c!725016 (is-Empty!14250 (right!35370 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))

(assert (=> d!1257015 (= (list!17075 (right!35370 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) e!2648556)))

(declare-fun b!4265623 () Bool)

(assert (=> b!4265623 (= e!2648557 (++!12049 (list!17075 (left!35040 (right!35370 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) (list!17075 (right!35370 (right!35370 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))))

(declare-fun b!4265621 () Bool)

(assert (=> b!4265621 (= e!2648556 e!2648557)))

(declare-fun c!725017 () Bool)

(assert (=> b!4265621 (= c!725017 (is-Leaf!22031 (right!35370 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))

(assert (= (and d!1257015 c!725016) b!4265620))

(assert (= (and d!1257015 (not c!725016)) b!4265621))

(assert (= (and b!4265621 c!725017) b!4265622))

(assert (= (and b!4265621 (not c!725017)) b!4265623))

(declare-fun m!4856407 () Bool)

(assert (=> b!4265622 m!4856407))

(declare-fun m!4856409 () Bool)

(assert (=> b!4265623 m!4856409))

(declare-fun m!4856411 () Bool)

(assert (=> b!4265623 m!4856411))

(assert (=> b!4265623 m!4856409))

(assert (=> b!4265623 m!4856411))

(declare-fun m!4856413 () Bool)

(assert (=> b!4265623 m!4856413))

(assert (=> b!4265077 d!1257015))

(declare-fun d!1257017 () Bool)

(declare-fun c!725018 () Bool)

(assert (=> d!1257017 (= c!725018 (is-Nil!47268 lt!1511551))))

(declare-fun e!2648558 () (Set (_ BitVec 16)))

(assert (=> d!1257017 (= (content!7469 lt!1511551) e!2648558)))

(declare-fun b!4265624 () Bool)

(assert (=> b!4265624 (= e!2648558 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265625 () Bool)

(assert (=> b!4265625 (= e!2648558 (set.union (set.insert (h!52688 lt!1511551) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 lt!1511551))))))

(assert (= (and d!1257017 c!725018) b!4265624))

(assert (= (and d!1257017 (not c!725018)) b!4265625))

(declare-fun m!4856415 () Bool)

(assert (=> b!4265625 m!4856415))

(declare-fun m!4856417 () Bool)

(assert (=> b!4265625 m!4856417))

(assert (=> d!1256697 d!1257017))

(declare-fun d!1257019 () Bool)

(declare-fun c!725019 () Bool)

(assert (=> d!1257019 (= c!725019 (is-Nil!47268 e!2648211))))

(declare-fun e!2648559 () (Set (_ BitVec 16)))

(assert (=> d!1257019 (= (content!7469 e!2648211) e!2648559)))

(declare-fun b!4265626 () Bool)

(assert (=> b!4265626 (= e!2648559 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265627 () Bool)

(assert (=> b!4265627 (= e!2648559 (set.union (set.insert (h!52688 e!2648211) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 e!2648211))))))

(assert (= (and d!1257019 c!725019) b!4265626))

(assert (= (and d!1257019 (not c!725019)) b!4265627))

(declare-fun m!4856419 () Bool)

(assert (=> b!4265627 m!4856419))

(declare-fun m!4856421 () Bool)

(assert (=> b!4265627 m!4856421))

(assert (=> d!1256697 d!1257019))

(assert (=> d!1256697 d!1256599))

(declare-fun d!1257021 () Bool)

(assert (=> d!1257021 (= (list!17077 (xs!17556 (left!35040 (c!724708 x!738013)))) (innerList!14310 (xs!17556 (left!35040 (c!724708 x!738013)))))))

(assert (=> b!4265057 d!1257021))

(declare-fun d!1257023 () Bool)

(declare-fun c!725020 () Bool)

(assert (=> d!1257023 (= c!725020 (is-Nil!47268 lt!1511610))))

(declare-fun e!2648560 () (Set (_ BitVec 16)))

(assert (=> d!1257023 (= (content!7469 lt!1511610) e!2648560)))

(declare-fun b!4265628 () Bool)

(assert (=> b!4265628 (= e!2648560 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265629 () Bool)

(assert (=> b!4265629 (= e!2648560 (set.union (set.insert (h!52688 lt!1511610) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 lt!1511610))))))

(assert (= (and d!1257023 c!725020) b!4265628))

(assert (= (and d!1257023 (not c!725020)) b!4265629))

(declare-fun m!4856423 () Bool)

(assert (=> b!4265629 m!4856423))

(declare-fun m!4856425 () Bool)

(assert (=> b!4265629 m!4856425))

(assert (=> d!1256833 d!1257023))

(assert (=> d!1256833 d!1257001))

(assert (=> d!1256833 d!1256705))

(declare-fun d!1257025 () Bool)

(declare-fun lt!1511647 () Int)

(assert (=> d!1257025 (>= lt!1511647 0)))

(declare-fun e!2648561 () Int)

(assert (=> d!1257025 (= lt!1511647 e!2648561)))

(declare-fun c!725021 () Bool)

(assert (=> d!1257025 (= c!725021 (is-Nil!47268 (t!353461 lt!1511512)))))

(assert (=> d!1257025 (= (size!34622 (t!353461 lt!1511512)) lt!1511647)))

(declare-fun b!4265630 () Bool)

(assert (=> b!4265630 (= e!2648561 0)))

(declare-fun b!4265631 () Bool)

(assert (=> b!4265631 (= e!2648561 (+ 1 (size!34622 (t!353461 (t!353461 lt!1511512)))))))

(assert (= (and d!1257025 c!725021) b!4265630))

(assert (= (and d!1257025 (not c!725021)) b!4265631))

(declare-fun m!4856427 () Bool)

(assert (=> b!4265631 m!4856427))

(assert (=> b!4265111 d!1257025))

(assert (=> b!4265240 d!1256539))

(declare-fun b!4265635 () Bool)

(declare-fun e!2648562 () Bool)

(declare-fun lt!1511648 () List!47392)

(assert (=> b!4265635 (= e!2648562 (or (not (= (efficientList$default$2!146 (c!724708 x!738013)) Nil!47268)) (= lt!1511648 (t!353461 (t!353461 (list!17075 (c!724708 x!738013)))))))))

(declare-fun b!4265634 () Bool)

(declare-fun res!1752948 () Bool)

(assert (=> b!4265634 (=> (not res!1752948) (not e!2648562))))

(assert (=> b!4265634 (= res!1752948 (= (size!34622 lt!1511648) (+ (size!34622 (t!353461 (t!353461 (list!17075 (c!724708 x!738013))))) (size!34622 (efficientList$default$2!146 (c!724708 x!738013))))))))

(declare-fun b!4265633 () Bool)

(declare-fun e!2648563 () List!47392)

(assert (=> b!4265633 (= e!2648563 (Cons!47268 (h!52688 (t!353461 (t!353461 (list!17075 (c!724708 x!738013))))) (++!12049 (t!353461 (t!353461 (t!353461 (list!17075 (c!724708 x!738013))))) (efficientList$default$2!146 (c!724708 x!738013)))))))

(declare-fun b!4265632 () Bool)

(assert (=> b!4265632 (= e!2648563 (efficientList$default$2!146 (c!724708 x!738013)))))

(declare-fun d!1257027 () Bool)

(assert (=> d!1257027 e!2648562))

(declare-fun res!1752949 () Bool)

(assert (=> d!1257027 (=> (not res!1752949) (not e!2648562))))

(assert (=> d!1257027 (= res!1752949 (= (content!7469 lt!1511648) (set.union (content!7469 (t!353461 (t!353461 (list!17075 (c!724708 x!738013))))) (content!7469 (efficientList$default$2!146 (c!724708 x!738013))))))))

(assert (=> d!1257027 (= lt!1511648 e!2648563)))

(declare-fun c!725022 () Bool)

(assert (=> d!1257027 (= c!725022 (is-Nil!47268 (t!353461 (t!353461 (list!17075 (c!724708 x!738013))))))))

(assert (=> d!1257027 (= (++!12049 (t!353461 (t!353461 (list!17075 (c!724708 x!738013)))) (efficientList$default$2!146 (c!724708 x!738013))) lt!1511648)))

(assert (= (and d!1257027 c!725022) b!4265632))

(assert (= (and d!1257027 (not c!725022)) b!4265633))

(assert (= (and d!1257027 res!1752949) b!4265634))

(assert (= (and b!4265634 res!1752948) b!4265635))

(declare-fun m!4856429 () Bool)

(assert (=> b!4265634 m!4856429))

(declare-fun m!4856431 () Bool)

(assert (=> b!4265634 m!4856431))

(assert (=> b!4265634 m!4855135))

(assert (=> b!4265634 m!4855239))

(assert (=> b!4265633 m!4855135))

(declare-fun m!4856433 () Bool)

(assert (=> b!4265633 m!4856433))

(declare-fun m!4856435 () Bool)

(assert (=> d!1257027 m!4856435))

(assert (=> d!1257027 m!4856005))

(assert (=> d!1257027 m!4855135))

(assert (=> d!1257027 m!4855247))

(assert (=> b!4265117 d!1257027))

(declare-fun d!1257029 () Bool)

(declare-fun lt!1511649 () Int)

(assert (=> d!1257029 (>= lt!1511649 0)))

(declare-fun e!2648564 () Int)

(assert (=> d!1257029 (= lt!1511649 e!2648564)))

(declare-fun c!725023 () Bool)

(assert (=> d!1257029 (= c!725023 (is-Nil!47268 (t!353461 (list!17075 (c!724708 x!738013)))))))

(assert (=> d!1257029 (= (size!34622 (t!353461 (list!17075 (c!724708 x!738013)))) lt!1511649)))

(declare-fun b!4265636 () Bool)

(assert (=> b!4265636 (= e!2648564 0)))

(declare-fun b!4265637 () Bool)

(assert (=> b!4265637 (= e!2648564 (+ 1 (size!34622 (t!353461 (t!353461 (list!17075 (c!724708 x!738013)))))))))

(assert (= (and d!1257029 c!725023) b!4265636))

(assert (= (and d!1257029 (not c!725023)) b!4265637))

(assert (=> b!4265637 m!4856431))

(assert (=> b!4265113 d!1257029))

(declare-fun d!1257031 () Bool)

(declare-fun res!1752955 () Bool)

(declare-fun e!2648565 () Bool)

(assert (=> d!1257031 (=> res!1752955 e!2648565)))

(assert (=> d!1257031 (= res!1752955 (not (is-Node!14250 (fromList!917 (Cons!47268 #x002D Nil!47268)))))))

(assert (=> d!1257031 (= (isBalanced!3809 (fromList!917 (Cons!47268 #x002D Nil!47268))) e!2648565)))

(declare-fun b!4265638 () Bool)

(declare-fun e!2648566 () Bool)

(assert (=> b!4265638 (= e!2648565 e!2648566)))

(declare-fun res!1752951 () Bool)

(assert (=> b!4265638 (=> (not res!1752951) (not e!2648566))))

(assert (=> b!4265638 (= res!1752951 (<= (- 1) (- (height!1875 (left!35040 (fromList!917 (Cons!47268 #x002D Nil!47268)))) (height!1875 (right!35370 (fromList!917 (Cons!47268 #x002D Nil!47268)))))))))

(declare-fun b!4265639 () Bool)

(declare-fun res!1752952 () Bool)

(assert (=> b!4265639 (=> (not res!1752952) (not e!2648566))))

(assert (=> b!4265639 (= res!1752952 (isBalanced!3809 (left!35040 (fromList!917 (Cons!47268 #x002D Nil!47268)))))))

(declare-fun b!4265640 () Bool)

(declare-fun res!1752954 () Bool)

(assert (=> b!4265640 (=> (not res!1752954) (not e!2648566))))

(assert (=> b!4265640 (= res!1752954 (<= (- (height!1875 (left!35040 (fromList!917 (Cons!47268 #x002D Nil!47268)))) (height!1875 (right!35370 (fromList!917 (Cons!47268 #x002D Nil!47268))))) 1))))

(declare-fun b!4265641 () Bool)

(assert (=> b!4265641 (= e!2648566 (not (isEmpty!27994 (right!35370 (fromList!917 (Cons!47268 #x002D Nil!47268))))))))

(declare-fun b!4265642 () Bool)

(declare-fun res!1752953 () Bool)

(assert (=> b!4265642 (=> (not res!1752953) (not e!2648566))))

(assert (=> b!4265642 (= res!1752953 (isBalanced!3809 (right!35370 (fromList!917 (Cons!47268 #x002D Nil!47268)))))))

(declare-fun b!4265643 () Bool)

(declare-fun res!1752950 () Bool)

(assert (=> b!4265643 (=> (not res!1752950) (not e!2648566))))

(assert (=> b!4265643 (= res!1752950 (not (isEmpty!27994 (left!35040 (fromList!917 (Cons!47268 #x002D Nil!47268))))))))

(assert (= (and d!1257031 (not res!1752955)) b!4265638))

(assert (= (and b!4265638 res!1752951) b!4265640))

(assert (= (and b!4265640 res!1752954) b!4265639))

(assert (= (and b!4265639 res!1752952) b!4265642))

(assert (= (and b!4265642 res!1752953) b!4265643))

(assert (= (and b!4265643 res!1752950) b!4265641))

(declare-fun m!4856437 () Bool)

(assert (=> b!4265638 m!4856437))

(declare-fun m!4856439 () Bool)

(assert (=> b!4265638 m!4856439))

(declare-fun m!4856441 () Bool)

(assert (=> b!4265642 m!4856441))

(declare-fun m!4856443 () Bool)

(assert (=> b!4265639 m!4856443))

(declare-fun m!4856445 () Bool)

(assert (=> b!4265641 m!4856445))

(assert (=> b!4265640 m!4856437))

(assert (=> b!4265640 m!4856439))

(declare-fun m!4856447 () Bool)

(assert (=> b!4265643 m!4856447))

(assert (=> b!4265137 d!1257031))

(assert (=> b!4265137 d!1256869))

(declare-fun d!1257033 () Bool)

(declare-fun lt!1511650 () Int)

(assert (=> d!1257033 (>= lt!1511650 0)))

(declare-fun e!2648567 () Int)

(assert (=> d!1257033 (= lt!1511650 e!2648567)))

(declare-fun c!725024 () Bool)

(assert (=> d!1257033 (= c!725024 (is-Nil!47268 lt!1511560))))

(assert (=> d!1257033 (= (size!34622 lt!1511560) lt!1511650)))

(declare-fun b!4265644 () Bool)

(assert (=> b!4265644 (= e!2648567 0)))

(declare-fun b!4265645 () Bool)

(assert (=> b!4265645 (= e!2648567 (+ 1 (size!34622 (t!353461 lt!1511560))))))

(assert (= (and d!1257033 c!725024) b!4265644))

(assert (= (and d!1257033 (not c!725024)) b!4265645))

(declare-fun m!4856449 () Bool)

(assert (=> b!4265645 m!4856449))

(assert (=> b!4265208 d!1257033))

(declare-fun d!1257035 () Bool)

(declare-fun lt!1511651 () Int)

(assert (=> d!1257035 (>= lt!1511651 0)))

(declare-fun e!2648568 () Int)

(assert (=> d!1257035 (= lt!1511651 e!2648568)))

(declare-fun c!725025 () Bool)

(assert (=> d!1257035 (= c!725025 (is-Nil!47268 lt!1511505))))

(assert (=> d!1257035 (= (size!34622 lt!1511505) lt!1511651)))

(declare-fun b!4265646 () Bool)

(assert (=> b!4265646 (= e!2648568 0)))

(declare-fun b!4265647 () Bool)

(assert (=> b!4265647 (= e!2648568 (+ 1 (size!34622 (t!353461 lt!1511505))))))

(assert (= (and d!1257035 c!725025) b!4265646))

(assert (= (and d!1257035 (not c!725025)) b!4265647))

(assert (=> b!4265647 m!4856373))

(assert (=> b!4265208 d!1257035))

(declare-fun d!1257037 () Bool)

(declare-fun lt!1511652 () Int)

(assert (=> d!1257037 (>= lt!1511652 0)))

(declare-fun e!2648569 () Int)

(assert (=> d!1257037 (= lt!1511652 e!2648569)))

(declare-fun c!725026 () Bool)

(assert (=> d!1257037 (= c!725026 (is-Nil!47268 lt!1511502))))

(assert (=> d!1257037 (= (size!34622 lt!1511502) lt!1511652)))

(declare-fun b!4265648 () Bool)

(assert (=> b!4265648 (= e!2648569 0)))

(declare-fun b!4265649 () Bool)

(assert (=> b!4265649 (= e!2648569 (+ 1 (size!34622 (t!353461 lt!1511502))))))

(assert (= (and d!1257037 c!725026) b!4265648))

(assert (= (and d!1257037 (not c!725026)) b!4265649))

(declare-fun m!4856451 () Bool)

(assert (=> b!4265649 m!4856451))

(assert (=> b!4265208 d!1257037))

(declare-fun d!1257039 () Bool)

(declare-fun e!2648570 () Bool)

(assert (=> d!1257039 e!2648570))

(declare-fun res!1752956 () Bool)

(assert (=> d!1257039 (=> (not res!1752956) (not e!2648570))))

(declare-fun lt!1511653 () BalanceConc!28010)

(assert (=> d!1257039 (= res!1752956 (= (list!17073 lt!1511653) (Cons!47268 #x002F Nil!47268)))))

(assert (=> d!1257039 (= lt!1511653 (BalanceConc!28011 (fromList!917 (Cons!47268 #x002F Nil!47268))))))

(assert (=> d!1257039 (= (fromListB!2657 (Cons!47268 #x002F Nil!47268)) lt!1511653)))

(declare-fun b!4265650 () Bool)

(assert (=> b!4265650 (= e!2648570 (isBalanced!3809 (fromList!917 (Cons!47268 #x002F Nil!47268))))))

(assert (= (and d!1257039 res!1752956) b!4265650))

(declare-fun m!4856453 () Bool)

(assert (=> d!1257039 m!4856453))

(declare-fun m!4856455 () Bool)

(assert (=> d!1257039 m!4856455))

(assert (=> b!4265650 m!4856455))

(assert (=> b!4265650 m!4856455))

(declare-fun m!4856457 () Bool)

(assert (=> b!4265650 m!4856457))

(assert (=> d!1256865 d!1257039))

(declare-fun d!1257041 () Bool)

(assert (=> d!1257041 (= (list!17077 (xs!17556 (right!35370 (c!724708 x!738013)))) (innerList!14310 (xs!17556 (right!35370 (c!724708 x!738013)))))))

(assert (=> b!4265061 d!1257041))

(declare-fun d!1257043 () Bool)

(declare-fun lt!1511654 () Int)

(assert (=> d!1257043 (>= lt!1511654 0)))

(declare-fun e!2648571 () Int)

(assert (=> d!1257043 (= lt!1511654 e!2648571)))

(declare-fun c!725027 () Bool)

(assert (=> d!1257043 (= c!725027 (is-Nil!47268 (t!353461 (efficientList$default$2!146 (c!724708 x!738013)))))))

(assert (=> d!1257043 (= (size!34622 (t!353461 (efficientList$default$2!146 (c!724708 x!738013)))) lt!1511654)))

(declare-fun b!4265651 () Bool)

(assert (=> b!4265651 (= e!2648571 0)))

(declare-fun b!4265652 () Bool)

(assert (=> b!4265652 (= e!2648571 (+ 1 (size!34622 (t!353461 (t!353461 (efficientList$default$2!146 (c!724708 x!738013)))))))))

(assert (= (and d!1257043 c!725027) b!4265651))

(assert (= (and d!1257043 (not c!725027)) b!4265652))

(declare-fun m!4856459 () Bool)

(assert (=> b!4265652 m!4856459))

(assert (=> b!4265115 d!1257043))

(declare-fun lt!1511655 () List!47392)

(declare-fun e!2648572 () Bool)

(declare-fun b!4265656 () Bool)

(assert (=> b!4265656 (= e!2648572 (or (not (= call!294041 Nil!47268)) (= lt!1511655 (t!353461 lt!1511505))))))

(declare-fun b!4265655 () Bool)

(declare-fun res!1752957 () Bool)

(assert (=> b!4265655 (=> (not res!1752957) (not e!2648572))))

(assert (=> b!4265655 (= res!1752957 (= (size!34622 lt!1511655) (+ (size!34622 (t!353461 lt!1511505)) (size!34622 call!294041))))))

(declare-fun b!4265654 () Bool)

(declare-fun e!2648573 () List!47392)

(assert (=> b!4265654 (= e!2648573 (Cons!47268 (h!52688 (t!353461 lt!1511505)) (++!12049 (t!353461 (t!353461 lt!1511505)) call!294041)))))

(declare-fun b!4265653 () Bool)

(assert (=> b!4265653 (= e!2648573 call!294041)))

(declare-fun d!1257045 () Bool)

(assert (=> d!1257045 e!2648572))

(declare-fun res!1752958 () Bool)

(assert (=> d!1257045 (=> (not res!1752958) (not e!2648572))))

(assert (=> d!1257045 (= res!1752958 (= (content!7469 lt!1511655) (set.union (content!7469 (t!353461 lt!1511505)) (content!7469 call!294041))))))

(assert (=> d!1257045 (= lt!1511655 e!2648573)))

(declare-fun c!725028 () Bool)

(assert (=> d!1257045 (= c!725028 (is-Nil!47268 (t!353461 lt!1511505)))))

(assert (=> d!1257045 (= (++!12049 (t!353461 lt!1511505) call!294041) lt!1511655)))

(assert (= (and d!1257045 c!725028) b!4265653))

(assert (= (and d!1257045 (not c!725028)) b!4265654))

(assert (= (and d!1257045 res!1752958) b!4265655))

(assert (= (and b!4265655 res!1752957) b!4265656))

(declare-fun m!4856461 () Bool)

(assert (=> b!4265655 m!4856461))

(assert (=> b!4265655 m!4856373))

(assert (=> b!4265655 m!4855621))

(declare-fun m!4856463 () Bool)

(assert (=> b!4265654 m!4856463))

(declare-fun m!4856465 () Bool)

(assert (=> d!1257045 m!4856465))

(assert (=> d!1257045 m!4855981))

(assert (=> d!1257045 m!4855627))

(assert (=> b!4265211 d!1257045))

(declare-fun d!1257047 () Bool)

(declare-fun c!725029 () Bool)

(assert (=> d!1257047 (= c!725029 (is-Nil!47268 (t!353461 lt!1511532)))))

(declare-fun e!2648574 () (Set (_ BitVec 16)))

(assert (=> d!1257047 (= (content!7469 (t!353461 lt!1511532)) e!2648574)))

(declare-fun b!4265657 () Bool)

(assert (=> b!4265657 (= e!2648574 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265658 () Bool)

(assert (=> b!4265658 (= e!2648574 (set.union (set.insert (h!52688 (t!353461 lt!1511532)) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (t!353461 lt!1511532)))))))

(assert (= (and d!1257047 c!725029) b!4265657))

(assert (= (and d!1257047 (not c!725029)) b!4265658))

(declare-fun m!4856467 () Bool)

(assert (=> b!4265658 m!4856467))

(declare-fun m!4856469 () Bool)

(assert (=> b!4265658 m!4856469))

(assert (=> b!4265144 d!1257047))

(declare-fun b!4265662 () Bool)

(declare-fun e!2648575 () Bool)

(declare-fun lt!1511656 () List!47392)

(assert (=> b!4265662 (= e!2648575 (or (not (= (list!17075 (right!35370 (left!35040 (c!724708 x!738013)))) Nil!47268)) (= lt!1511656 (list!17075 (left!35040 (left!35040 (c!724708 x!738013)))))))))

(declare-fun b!4265661 () Bool)

(declare-fun res!1752959 () Bool)

(assert (=> b!4265661 (=> (not res!1752959) (not e!2648575))))

(assert (=> b!4265661 (= res!1752959 (= (size!34622 lt!1511656) (+ (size!34622 (list!17075 (left!35040 (left!35040 (c!724708 x!738013))))) (size!34622 (list!17075 (right!35370 (left!35040 (c!724708 x!738013))))))))))

(declare-fun b!4265660 () Bool)

(declare-fun e!2648576 () List!47392)

(assert (=> b!4265660 (= e!2648576 (Cons!47268 (h!52688 (list!17075 (left!35040 (left!35040 (c!724708 x!738013))))) (++!12049 (t!353461 (list!17075 (left!35040 (left!35040 (c!724708 x!738013))))) (list!17075 (right!35370 (left!35040 (c!724708 x!738013)))))))))

(declare-fun b!4265659 () Bool)

(assert (=> b!4265659 (= e!2648576 (list!17075 (right!35370 (left!35040 (c!724708 x!738013)))))))

(declare-fun d!1257049 () Bool)

(assert (=> d!1257049 e!2648575))

(declare-fun res!1752960 () Bool)

(assert (=> d!1257049 (=> (not res!1752960) (not e!2648575))))

(assert (=> d!1257049 (= res!1752960 (= (content!7469 lt!1511656) (set.union (content!7469 (list!17075 (left!35040 (left!35040 (c!724708 x!738013))))) (content!7469 (list!17075 (right!35370 (left!35040 (c!724708 x!738013))))))))))

(assert (=> d!1257049 (= lt!1511656 e!2648576)))

(declare-fun c!725030 () Bool)

(assert (=> d!1257049 (= c!725030 (is-Nil!47268 (list!17075 (left!35040 (left!35040 (c!724708 x!738013))))))))

(assert (=> d!1257049 (= (++!12049 (list!17075 (left!35040 (left!35040 (c!724708 x!738013)))) (list!17075 (right!35370 (left!35040 (c!724708 x!738013))))) lt!1511656)))

(assert (= (and d!1257049 c!725030) b!4265659))

(assert (= (and d!1257049 (not c!725030)) b!4265660))

(assert (= (and d!1257049 res!1752960) b!4265661))

(assert (= (and b!4265661 res!1752959) b!4265662))

(declare-fun m!4856471 () Bool)

(assert (=> b!4265661 m!4856471))

(assert (=> b!4265661 m!4855309))

(declare-fun m!4856473 () Bool)

(assert (=> b!4265661 m!4856473))

(assert (=> b!4265661 m!4855311))

(declare-fun m!4856475 () Bool)

(assert (=> b!4265661 m!4856475))

(assert (=> b!4265660 m!4855311))

(declare-fun m!4856477 () Bool)

(assert (=> b!4265660 m!4856477))

(declare-fun m!4856479 () Bool)

(assert (=> d!1257049 m!4856479))

(assert (=> d!1257049 m!4855309))

(declare-fun m!4856481 () Bool)

(assert (=> d!1257049 m!4856481))

(assert (=> d!1257049 m!4855311))

(declare-fun m!4856483 () Bool)

(assert (=> d!1257049 m!4856483))

(assert (=> b!4265058 d!1257049))

(declare-fun b!4265665 () Bool)

(declare-fun e!2648578 () List!47392)

(assert (=> b!4265665 (= e!2648578 (list!17077 (xs!17556 (left!35040 (left!35040 (c!724708 x!738013))))))))

(declare-fun b!4265663 () Bool)

(declare-fun e!2648577 () List!47392)

(assert (=> b!4265663 (= e!2648577 Nil!47268)))

(declare-fun d!1257051 () Bool)

(declare-fun c!725031 () Bool)

(assert (=> d!1257051 (= c!725031 (is-Empty!14250 (left!35040 (left!35040 (c!724708 x!738013)))))))

(assert (=> d!1257051 (= (list!17075 (left!35040 (left!35040 (c!724708 x!738013)))) e!2648577)))

(declare-fun b!4265666 () Bool)

(assert (=> b!4265666 (= e!2648578 (++!12049 (list!17075 (left!35040 (left!35040 (left!35040 (c!724708 x!738013))))) (list!17075 (right!35370 (left!35040 (left!35040 (c!724708 x!738013)))))))))

(declare-fun b!4265664 () Bool)

(assert (=> b!4265664 (= e!2648577 e!2648578)))

(declare-fun c!725032 () Bool)

(assert (=> b!4265664 (= c!725032 (is-Leaf!22031 (left!35040 (left!35040 (c!724708 x!738013)))))))

(assert (= (and d!1257051 c!725031) b!4265663))

(assert (= (and d!1257051 (not c!725031)) b!4265664))

(assert (= (and b!4265664 c!725032) b!4265665))

(assert (= (and b!4265664 (not c!725032)) b!4265666))

(declare-fun m!4856485 () Bool)

(assert (=> b!4265665 m!4856485))

(declare-fun m!4856487 () Bool)

(assert (=> b!4265666 m!4856487))

(declare-fun m!4856489 () Bool)

(assert (=> b!4265666 m!4856489))

(assert (=> b!4265666 m!4856487))

(assert (=> b!4265666 m!4856489))

(declare-fun m!4856491 () Bool)

(assert (=> b!4265666 m!4856491))

(assert (=> b!4265058 d!1257051))

(declare-fun b!4265669 () Bool)

(declare-fun e!2648580 () List!47392)

(assert (=> b!4265669 (= e!2648580 (list!17077 (xs!17556 (right!35370 (left!35040 (c!724708 x!738013))))))))

(declare-fun b!4265667 () Bool)

(declare-fun e!2648579 () List!47392)

(assert (=> b!4265667 (= e!2648579 Nil!47268)))

(declare-fun d!1257053 () Bool)

(declare-fun c!725033 () Bool)

(assert (=> d!1257053 (= c!725033 (is-Empty!14250 (right!35370 (left!35040 (c!724708 x!738013)))))))

(assert (=> d!1257053 (= (list!17075 (right!35370 (left!35040 (c!724708 x!738013)))) e!2648579)))

(declare-fun b!4265670 () Bool)

(assert (=> b!4265670 (= e!2648580 (++!12049 (list!17075 (left!35040 (right!35370 (left!35040 (c!724708 x!738013))))) (list!17075 (right!35370 (right!35370 (left!35040 (c!724708 x!738013)))))))))

(declare-fun b!4265668 () Bool)

(assert (=> b!4265668 (= e!2648579 e!2648580)))

(declare-fun c!725034 () Bool)

(assert (=> b!4265668 (= c!725034 (is-Leaf!22031 (right!35370 (left!35040 (c!724708 x!738013)))))))

(assert (= (and d!1257053 c!725033) b!4265667))

(assert (= (and d!1257053 (not c!725033)) b!4265668))

(assert (= (and b!4265668 c!725034) b!4265669))

(assert (= (and b!4265668 (not c!725034)) b!4265670))

(declare-fun m!4856493 () Bool)

(assert (=> b!4265669 m!4856493))

(declare-fun m!4856495 () Bool)

(assert (=> b!4265670 m!4856495))

(declare-fun m!4856497 () Bool)

(assert (=> b!4265670 m!4856497))

(assert (=> b!4265670 m!4856495))

(assert (=> b!4265670 m!4856497))

(declare-fun m!4856499 () Bool)

(assert (=> b!4265670 m!4856499))

(assert (=> b!4265058 d!1257053))

(declare-fun d!1257055 () Bool)

(declare-fun c!725035 () Bool)

(assert (=> d!1257055 (= c!725035 (is-Nil!47268 lt!1511612))))

(declare-fun e!2648581 () (Set (_ BitVec 16)))

(assert (=> d!1257055 (= (content!7469 lt!1511612) e!2648581)))

(declare-fun b!4265671 () Bool)

(assert (=> b!4265671 (= e!2648581 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265672 () Bool)

(assert (=> b!4265672 (= e!2648581 (set.union (set.insert (h!52688 lt!1511612) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 lt!1511612))))))

(assert (= (and d!1257055 c!725035) b!4265671))

(assert (= (and d!1257055 (not c!725035)) b!4265672))

(declare-fun m!4856501 () Bool)

(assert (=> b!4265672 m!4856501))

(declare-fun m!4856503 () Bool)

(assert (=> b!4265672 m!4856503))

(assert (=> d!1256849 d!1257055))

(assert (=> d!1256849 d!1256843))

(assert (=> d!1256849 d!1256599))

(declare-fun d!1257057 () Bool)

(declare-fun c!725036 () Bool)

(assert (=> d!1257057 (= c!725036 (is-Nil!47268 lt!1511603))))

(declare-fun e!2648582 () (Set (_ BitVec 16)))

(assert (=> d!1257057 (= (content!7469 lt!1511603) e!2648582)))

(declare-fun b!4265673 () Bool)

(assert (=> b!4265673 (= e!2648582 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265674 () Bool)

(assert (=> b!4265674 (= e!2648582 (set.union (set.insert (h!52688 lt!1511603) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 lt!1511603))))))

(assert (= (and d!1257057 c!725036) b!4265673))

(assert (= (and d!1257057 (not c!725036)) b!4265674))

(declare-fun m!4856505 () Bool)

(assert (=> b!4265674 m!4856505))

(declare-fun m!4856507 () Bool)

(assert (=> b!4265674 m!4856507))

(assert (=> d!1256809 d!1257057))

(assert (=> d!1256809 d!1256705))

(assert (=> d!1256809 d!1256599))

(declare-fun d!1257059 () Bool)

(declare-fun c!725037 () Bool)

(assert (=> d!1257059 (= c!725037 (is-Nil!47268 (t!353461 (list!17075 (right!35370 (c!724708 x!738013))))))))

(declare-fun e!2648583 () (Set (_ BitVec 16)))

(assert (=> d!1257059 (= (content!7469 (t!353461 (list!17075 (right!35370 (c!724708 x!738013))))) e!2648583)))

(declare-fun b!4265675 () Bool)

(assert (=> b!4265675 (= e!2648583 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265676 () Bool)

(assert (=> b!4265676 (= e!2648583 (set.union (set.insert (h!52688 (t!353461 (list!17075 (right!35370 (c!724708 x!738013))))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (t!353461 (list!17075 (right!35370 (c!724708 x!738013))))))))))

(assert (= (and d!1257059 c!725037) b!4265675))

(assert (= (and d!1257059 (not c!725037)) b!4265676))

(declare-fun m!4856509 () Bool)

(assert (=> b!4265676 m!4856509))

(declare-fun m!4856511 () Bool)

(assert (=> b!4265676 m!4856511))

(assert (=> b!4265166 d!1257059))

(declare-fun d!1257061 () Bool)

(declare-fun c!725038 () Bool)

(assert (=> d!1257061 (= c!725038 (is-Nil!47268 lt!1511611))))

(declare-fun e!2648584 () (Set (_ BitVec 16)))

(assert (=> d!1257061 (= (content!7469 lt!1511611) e!2648584)))

(declare-fun b!4265677 () Bool)

(assert (=> b!4265677 (= e!2648584 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265678 () Bool)

(assert (=> b!4265678 (= e!2648584 (set.union (set.insert (h!52688 lt!1511611) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 lt!1511611))))))

(assert (= (and d!1257061 c!725038) b!4265677))

(assert (= (and d!1257061 (not c!725038)) b!4265678))

(declare-fun m!4856513 () Bool)

(assert (=> b!4265678 m!4856513))

(declare-fun m!4856515 () Bool)

(assert (=> b!4265678 m!4856515))

(assert (=> d!1256845 d!1257061))

(assert (=> d!1256845 d!1256841))

(declare-fun d!1257063 () Bool)

(declare-fun c!725039 () Bool)

(assert (=> d!1257063 (= c!725039 (is-Nil!47268 (++!12049 lt!1511502 (efficientList$default$2!146 (c!724708 x!738013)))))))

(declare-fun e!2648585 () (Set (_ BitVec 16)))

(assert (=> d!1257063 (= (content!7469 (++!12049 lt!1511502 (efficientList$default$2!146 (c!724708 x!738013)))) e!2648585)))

(declare-fun b!4265679 () Bool)

(assert (=> b!4265679 (= e!2648585 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265680 () Bool)

(assert (=> b!4265680 (= e!2648585 (set.union (set.insert (h!52688 (++!12049 lt!1511502 (efficientList$default$2!146 (c!724708 x!738013)))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (++!12049 lt!1511502 (efficientList$default$2!146 (c!724708 x!738013)))))))))

(assert (= (and d!1257063 c!725039) b!4265679))

(assert (= (and d!1257063 (not c!725039)) b!4265680))

(declare-fun m!4856517 () Bool)

(assert (=> b!4265680 m!4856517))

(declare-fun m!4856519 () Bool)

(assert (=> b!4265680 m!4856519))

(assert (=> d!1256845 d!1257063))

(declare-fun d!1257065 () Bool)

(declare-fun lt!1511657 () Int)

(assert (=> d!1257065 (>= lt!1511657 0)))

(declare-fun e!2648586 () Int)

(assert (=> d!1257065 (= lt!1511657 e!2648586)))

(declare-fun c!725040 () Bool)

(assert (=> d!1257065 (= c!725040 (is-Nil!47268 lt!1511542))))

(assert (=> d!1257065 (= (size!34622 lt!1511542) lt!1511657)))

(declare-fun b!4265681 () Bool)

(assert (=> b!4265681 (= e!2648586 0)))

(declare-fun b!4265682 () Bool)

(assert (=> b!4265682 (= e!2648586 (+ 1 (size!34622 (t!353461 lt!1511542))))))

(assert (= (and d!1257065 c!725040) b!4265681))

(assert (= (and d!1257065 (not c!725040)) b!4265682))

(declare-fun m!4856521 () Bool)

(assert (=> b!4265682 m!4856521))

(assert (=> b!4265118 d!1257065))

(assert (=> b!4265118 d!1257029))

(assert (=> b!4265118 d!1256661))

(declare-fun d!1257067 () Bool)

(declare-fun c!725041 () Bool)

(assert (=> d!1257067 (= c!725041 (is-Nil!47268 lt!1511609))))

(declare-fun e!2648587 () (Set (_ BitVec 16)))

(assert (=> d!1257067 (= (content!7469 lt!1511609) e!2648587)))

(declare-fun b!4265683 () Bool)

(assert (=> b!4265683 (= e!2648587 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265684 () Bool)

(assert (=> b!4265684 (= e!2648587 (set.union (set.insert (h!52688 lt!1511609) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 lt!1511609))))))

(assert (= (and d!1257067 c!725041) b!4265683))

(assert (= (and d!1257067 (not c!725041)) b!4265684))

(declare-fun m!4856523 () Bool)

(assert (=> b!4265684 m!4856523))

(declare-fun m!4856525 () Bool)

(assert (=> b!4265684 m!4856525))

(assert (=> d!1256829 d!1257067))

(assert (=> d!1256829 d!1256703))

(declare-fun d!1257069 () Bool)

(declare-fun c!725042 () Bool)

(assert (=> d!1257069 (= c!725042 (is-Nil!47268 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))))))

(declare-fun e!2648588 () (Set (_ BitVec 16)))

(assert (=> d!1257069 (= (content!7469 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))) e!2648588)))

(declare-fun b!4265685 () Bool)

(assert (=> b!4265685 (= e!2648588 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265686 () Bool)

(assert (=> b!4265686 (= e!2648588 (set.union (set.insert (h!52688 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))))))))

(assert (= (and d!1257069 c!725042) b!4265685))

(assert (= (and d!1257069 (not c!725042)) b!4265686))

(declare-fun m!4856527 () Bool)

(assert (=> b!4265686 m!4856527))

(declare-fun m!4856529 () Bool)

(assert (=> b!4265686 m!4856529))

(assert (=> d!1256829 d!1257069))

(declare-fun b!4265690 () Bool)

(declare-fun e!2648589 () Bool)

(declare-fun lt!1511658 () List!47392)

(assert (=> b!4265690 (= e!2648589 (or (not (= (list!17075 (right!35370 (right!35370 (c!724708 x!738013)))) Nil!47268)) (= lt!1511658 (list!17075 (left!35040 (right!35370 (c!724708 x!738013)))))))))

(declare-fun b!4265689 () Bool)

(declare-fun res!1752961 () Bool)

(assert (=> b!4265689 (=> (not res!1752961) (not e!2648589))))

(assert (=> b!4265689 (= res!1752961 (= (size!34622 lt!1511658) (+ (size!34622 (list!17075 (left!35040 (right!35370 (c!724708 x!738013))))) (size!34622 (list!17075 (right!35370 (right!35370 (c!724708 x!738013))))))))))

(declare-fun b!4265688 () Bool)

(declare-fun e!2648590 () List!47392)

(assert (=> b!4265688 (= e!2648590 (Cons!47268 (h!52688 (list!17075 (left!35040 (right!35370 (c!724708 x!738013))))) (++!12049 (t!353461 (list!17075 (left!35040 (right!35370 (c!724708 x!738013))))) (list!17075 (right!35370 (right!35370 (c!724708 x!738013)))))))))

(declare-fun b!4265687 () Bool)

(assert (=> b!4265687 (= e!2648590 (list!17075 (right!35370 (right!35370 (c!724708 x!738013)))))))

(declare-fun d!1257071 () Bool)

(assert (=> d!1257071 e!2648589))

(declare-fun res!1752962 () Bool)

(assert (=> d!1257071 (=> (not res!1752962) (not e!2648589))))

(assert (=> d!1257071 (= res!1752962 (= (content!7469 lt!1511658) (set.union (content!7469 (list!17075 (left!35040 (right!35370 (c!724708 x!738013))))) (content!7469 (list!17075 (right!35370 (right!35370 (c!724708 x!738013))))))))))

(assert (=> d!1257071 (= lt!1511658 e!2648590)))

(declare-fun c!725043 () Bool)

(assert (=> d!1257071 (= c!725043 (is-Nil!47268 (list!17075 (left!35040 (right!35370 (c!724708 x!738013))))))))

(assert (=> d!1257071 (= (++!12049 (list!17075 (left!35040 (right!35370 (c!724708 x!738013)))) (list!17075 (right!35370 (right!35370 (c!724708 x!738013))))) lt!1511658)))

(assert (= (and d!1257071 c!725043) b!4265687))

(assert (= (and d!1257071 (not c!725043)) b!4265688))

(assert (= (and d!1257071 res!1752962) b!4265689))

(assert (= (and b!4265689 res!1752961) b!4265690))

(declare-fun m!4856531 () Bool)

(assert (=> b!4265689 m!4856531))

(assert (=> b!4265689 m!4855317))

(declare-fun m!4856533 () Bool)

(assert (=> b!4265689 m!4856533))

(assert (=> b!4265689 m!4855319))

(declare-fun m!4856535 () Bool)

(assert (=> b!4265689 m!4856535))

(assert (=> b!4265688 m!4855319))

(declare-fun m!4856537 () Bool)

(assert (=> b!4265688 m!4856537))

(declare-fun m!4856539 () Bool)

(assert (=> d!1257071 m!4856539))

(assert (=> d!1257071 m!4855317))

(declare-fun m!4856541 () Bool)

(assert (=> d!1257071 m!4856541))

(assert (=> d!1257071 m!4855319))

(declare-fun m!4856543 () Bool)

(assert (=> d!1257071 m!4856543))

(assert (=> b!4265062 d!1257071))

(declare-fun b!4265693 () Bool)

(declare-fun e!2648592 () List!47392)

(assert (=> b!4265693 (= e!2648592 (list!17077 (xs!17556 (left!35040 (right!35370 (c!724708 x!738013))))))))

(declare-fun b!4265691 () Bool)

(declare-fun e!2648591 () List!47392)

(assert (=> b!4265691 (= e!2648591 Nil!47268)))

(declare-fun d!1257073 () Bool)

(declare-fun c!725044 () Bool)

(assert (=> d!1257073 (= c!725044 (is-Empty!14250 (left!35040 (right!35370 (c!724708 x!738013)))))))

(assert (=> d!1257073 (= (list!17075 (left!35040 (right!35370 (c!724708 x!738013)))) e!2648591)))

(declare-fun b!4265694 () Bool)

(assert (=> b!4265694 (= e!2648592 (++!12049 (list!17075 (left!35040 (left!35040 (right!35370 (c!724708 x!738013))))) (list!17075 (right!35370 (left!35040 (right!35370 (c!724708 x!738013)))))))))

(declare-fun b!4265692 () Bool)

(assert (=> b!4265692 (= e!2648591 e!2648592)))

(declare-fun c!725045 () Bool)

(assert (=> b!4265692 (= c!725045 (is-Leaf!22031 (left!35040 (right!35370 (c!724708 x!738013)))))))

(assert (= (and d!1257073 c!725044) b!4265691))

(assert (= (and d!1257073 (not c!725044)) b!4265692))

(assert (= (and b!4265692 c!725045) b!4265693))

(assert (= (and b!4265692 (not c!725045)) b!4265694))

(declare-fun m!4856545 () Bool)

(assert (=> b!4265693 m!4856545))

(declare-fun m!4856547 () Bool)

(assert (=> b!4265694 m!4856547))

(declare-fun m!4856549 () Bool)

(assert (=> b!4265694 m!4856549))

(assert (=> b!4265694 m!4856547))

(assert (=> b!4265694 m!4856549))

(declare-fun m!4856551 () Bool)

(assert (=> b!4265694 m!4856551))

(assert (=> b!4265062 d!1257073))

(declare-fun b!4265697 () Bool)

(declare-fun e!2648594 () List!47392)

(assert (=> b!4265697 (= e!2648594 (list!17077 (xs!17556 (right!35370 (right!35370 (c!724708 x!738013))))))))

(declare-fun b!4265695 () Bool)

(declare-fun e!2648593 () List!47392)

(assert (=> b!4265695 (= e!2648593 Nil!47268)))

(declare-fun d!1257075 () Bool)

(declare-fun c!725046 () Bool)

(assert (=> d!1257075 (= c!725046 (is-Empty!14250 (right!35370 (right!35370 (c!724708 x!738013)))))))

(assert (=> d!1257075 (= (list!17075 (right!35370 (right!35370 (c!724708 x!738013)))) e!2648593)))

(declare-fun b!4265698 () Bool)

(assert (=> b!4265698 (= e!2648594 (++!12049 (list!17075 (left!35040 (right!35370 (right!35370 (c!724708 x!738013))))) (list!17075 (right!35370 (right!35370 (right!35370 (c!724708 x!738013)))))))))

(declare-fun b!4265696 () Bool)

(assert (=> b!4265696 (= e!2648593 e!2648594)))

(declare-fun c!725047 () Bool)

(assert (=> b!4265696 (= c!725047 (is-Leaf!22031 (right!35370 (right!35370 (c!724708 x!738013)))))))

(assert (= (and d!1257075 c!725046) b!4265695))

(assert (= (and d!1257075 (not c!725046)) b!4265696))

(assert (= (and b!4265696 c!725047) b!4265697))

(assert (= (and b!4265696 (not c!725047)) b!4265698))

(declare-fun m!4856553 () Bool)

(assert (=> b!4265697 m!4856553))

(declare-fun m!4856555 () Bool)

(assert (=> b!4265698 m!4856555))

(declare-fun m!4856557 () Bool)

(assert (=> b!4265698 m!4856557))

(assert (=> b!4265698 m!4856555))

(assert (=> b!4265698 m!4856557))

(declare-fun m!4856559 () Bool)

(assert (=> b!4265698 m!4856559))

(assert (=> b!4265062 d!1257075))

(declare-fun d!1257077 () Bool)

(declare-fun c!725048 () Bool)

(assert (=> d!1257077 (= c!725048 (is-Nil!47268 lt!1511618))))

(declare-fun e!2648595 () (Set (_ BitVec 16)))

(assert (=> d!1257077 (= (content!7469 lt!1511618) e!2648595)))

(declare-fun b!4265699 () Bool)

(assert (=> b!4265699 (= e!2648595 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265700 () Bool)

(assert (=> b!4265700 (= e!2648595 (set.union (set.insert (h!52688 lt!1511618) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 lt!1511618))))))

(assert (= (and d!1257077 c!725048) b!4265699))

(assert (= (and d!1257077 (not c!725048)) b!4265700))

(declare-fun m!4856561 () Bool)

(assert (=> b!4265700 m!4856561))

(declare-fun m!4856563 () Bool)

(assert (=> b!4265700 m!4856563))

(assert (=> d!1256877 d!1257077))

(assert (=> d!1256877 d!1256991))

(assert (=> d!1256877 d!1256693))

(declare-fun d!1257079 () Bool)

(declare-fun lt!1511659 () Int)

(assert (=> d!1257079 (>= lt!1511659 0)))

(declare-fun e!2648596 () Int)

(assert (=> d!1257079 (= lt!1511659 e!2648596)))

(declare-fun c!725049 () Bool)

(assert (=> d!1257079 (= c!725049 (is-Nil!47268 lt!1511561))))

(assert (=> d!1257079 (= (size!34622 lt!1511561) lt!1511659)))

(declare-fun b!4265701 () Bool)

(assert (=> b!4265701 (= e!2648596 0)))

(declare-fun b!4265702 () Bool)

(assert (=> b!4265702 (= e!2648596 (+ 1 (size!34622 (t!353461 lt!1511561))))))

(assert (= (and d!1257079 c!725049) b!4265701))

(assert (= (and d!1257079 (not c!725049)) b!4265702))

(declare-fun m!4856565 () Bool)

(assert (=> b!4265702 m!4856565))

(assert (=> b!4265212 d!1257079))

(assert (=> b!4265212 d!1257035))

(declare-fun d!1257081 () Bool)

(declare-fun lt!1511660 () Int)

(assert (=> d!1257081 (>= lt!1511660 0)))

(declare-fun e!2648597 () Int)

(assert (=> d!1257081 (= lt!1511660 e!2648597)))

(declare-fun c!725050 () Bool)

(assert (=> d!1257081 (= c!725050 (is-Nil!47268 call!294041))))

(assert (=> d!1257081 (= (size!34622 call!294041) lt!1511660)))

(declare-fun b!4265703 () Bool)

(assert (=> b!4265703 (= e!2648597 0)))

(declare-fun b!4265704 () Bool)

(assert (=> b!4265704 (= e!2648597 (+ 1 (size!34622 (t!353461 call!294041))))))

(assert (= (and d!1257081 c!725050) b!4265703))

(assert (= (and d!1257081 (not c!725050)) b!4265704))

(declare-fun m!4856567 () Bool)

(assert (=> b!4265704 m!4856567))

(assert (=> b!4265212 d!1257081))

(declare-fun b!4265707 () Bool)

(declare-fun e!2648599 () List!47392)

(assert (=> b!4265707 (= e!2648599 (list!17077 (xs!17556 (c!724708 lt!1511548))))))

(declare-fun b!4265705 () Bool)

(declare-fun e!2648598 () List!47392)

(assert (=> b!4265705 (= e!2648598 Nil!47268)))

(declare-fun d!1257083 () Bool)

(declare-fun c!725051 () Bool)

(assert (=> d!1257083 (= c!725051 (is-Empty!14250 (c!724708 lt!1511548)))))

(assert (=> d!1257083 (= (list!17075 (c!724708 lt!1511548)) e!2648598)))

(declare-fun b!4265708 () Bool)

(assert (=> b!4265708 (= e!2648599 (++!12049 (list!17075 (left!35040 (c!724708 lt!1511548))) (list!17075 (right!35370 (c!724708 lt!1511548)))))))

(declare-fun b!4265706 () Bool)

(assert (=> b!4265706 (= e!2648598 e!2648599)))

(declare-fun c!725052 () Bool)

(assert (=> b!4265706 (= c!725052 (is-Leaf!22031 (c!724708 lt!1511548)))))

(assert (= (and d!1257083 c!725051) b!4265705))

(assert (= (and d!1257083 (not c!725051)) b!4265706))

(assert (= (and b!4265706 c!725052) b!4265707))

(assert (= (and b!4265706 (not c!725052)) b!4265708))

(declare-fun m!4856569 () Bool)

(assert (=> b!4265707 m!4856569))

(declare-fun m!4856571 () Bool)

(assert (=> b!4265708 m!4856571))

(declare-fun m!4856573 () Bool)

(assert (=> b!4265708 m!4856573))

(assert (=> b!4265708 m!4856571))

(assert (=> b!4265708 m!4856573))

(declare-fun m!4856575 () Bool)

(assert (=> b!4265708 m!4856575))

(assert (=> d!1256867 d!1257083))

(declare-fun d!1257085 () Bool)

(assert (=> d!1257085 (= (list!17077 (xs!17556 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) (innerList!14310 (xs!17556 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))

(assert (=> b!4265072 d!1257085))

(push 1)

(assert (not b!4265406))

(assert (not b!4265415))

(assert (not b!4265414))

(assert (not b!4265232))

(assert (not b!4265449))

(assert (not b!4265631))

(assert (not d!1256981))

(assert (not b!4265700))

(assert (not b!4265180))

(assert (not b!4265251))

(assert (not b!4265639))

(assert (not b!4265599))

(assert (not b!4265566))

(assert (not b!4265582))

(assert (not b!4265650))

(assert (not b!4265583))

(assert (not d!1256715))

(assert (not b!4265561))

(assert (not d!1257011))

(assert (not b!4265395))

(assert (not b!4265614))

(assert (not b!4265224))

(assert (not b!4265447))

(assert (not bm!294044))

(assert (not d!1256837))

(assert (not b!4265389))

(assert (not b!4265591))

(assert (not b!4265250))

(assert (not b!4265403))

(assert (not b!4265567))

(assert (not b!4265426))

(assert (not b!4265619))

(assert (not b!4265634))

(assert (not b!4265707))

(assert (not b!4265595))

(assert (not b!4265678))

(assert (not b!4265676))

(assert (not b!4265219))

(assert (not d!1257071))

(assert (not b!4265203))

(assert (not d!1256879))

(assert (not b!4265464))

(assert (not b!4265611))

(assert (not b!4265430))

(assert (not b!4265248))

(assert (not b!4265559))

(assert (not b!4265698))

(assert (not b!4265379))

(assert (not d!1256711))

(assert (not b!4265418))

(assert (not b!4265672))

(assert (not b!4265658))

(assert (not b!4265708))

(assert (not d!1256977))

(assert (not d!1256993))

(assert (not b!4265666))

(assert (not b!4265560))

(assert (not b!4265587))

(assert (not b!4265640))

(assert (not d!1256681))

(assert (not b!4265638))

(assert (not b!4265249))

(assert (not b!4265424))

(assert (not b!4265649))

(assert (not b!4265412))

(assert (not b!4265405))

(assert (not b!4265423))

(assert (not b!4265641))

(assert (not b!4265574))

(assert (not b!4265243))

(assert (not b!4265642))

(assert (not b!4265694))

(assert (not d!1257003))

(assert (not b!4265230))

(assert (not b!4265134))

(assert (not b!4265627))

(assert (not b!4265688))

(assert (not b!4265637))

(assert (not b!4264988))

(assert (not b!4265565))

(assert (not d!1256973))

(assert (not b!4265660))

(assert (not b!4265158))

(assert (not b!4265387))

(assert (not b!4265454))

(assert (not b!4265647))

(assert (not b!4265670))

(assert (not b!4265654))

(assert (not b!4265380))

(assert (not b!4265159))

(assert (not b!4265604))

(assert (not b!4265236))

(assert (not b!4265704))

(assert (not b!4265410))

(assert (not b!4265564))

(assert (not d!1257027))

(assert (not b!4265661))

(assert (not b!4265655))

(assert (not b!4265607))

(assert (not b!4265623))

(assert (not b!4265573))

(assert (not b!4265392))

(assert (not b!4265433))

(assert (not b!4265131))

(assert (not b!4265682))

(assert (not b!4265686))

(assert (not b!4265463))

(assert (not b!4265196))

(assert (not b!4265562))

(assert (not b!4265578))

(assert (not b!4265419))

(assert (not b!4265629))

(assert (not b!4265402))

(assert (not b!4265684))

(assert (not d!1256995))

(assert (not b!4265554))

(assert (not b!4265669))

(assert (not d!1256863))

(assert (not d!1257039))

(assert (not bm!294040))

(assert (not b!4265233))

(assert (not d!1257049))

(assert (not b!4265596))

(assert (not b!4265136))

(assert (not bm!294041))

(assert (not b!4265442))

(assert (not b!4265601))

(assert (not b!4265457))

(assert (not b!4265570))

(assert (not b!4265217))

(assert (not b!4265579))

(assert (not b!4265437))

(assert (not b!4265563))

(assert (not b!4265444))

(assert (not b!4265697))

(assert (not b!4265613))

(assert (not b!4265428))

(assert (not b!4265129))

(assert (not b!4265238))

(assert (not b!4265689))

(assert (not b!4265227))

(assert (not b!4265674))

(assert (not b!4265450))

(assert (not d!1256707))

(assert (not b!4265231))

(assert (not b!4265460))

(assert (not b!4265609))

(assert (not b!4265401))

(assert (not b!4265404))

(assert (not d!1256987))

(assert (not b!4265229))

(assert (not d!1256801))

(assert (not b!4265197))

(assert (not b!4265569))

(assert (not b!4265702))

(assert (not b!4265199))

(assert (not b!4265625))

(assert (not b!4265652))

(assert (not b!4265194))

(assert (not b!4265247))

(assert (not b!4265592))

(assert (not d!1256821))

(assert (not b!4265195))

(assert (not b!4265557))

(assert (not b!4265645))

(assert (not b!4265693))

(assert (not b!4265174))

(assert (not b!4265558))

(assert (not b!4265665))

(assert (not b!4265456))

(assert (not b!4265391))

(assert (not b!4265622))

(assert (not b!4265198))

(assert (not b!4265407))

(assert (not b!4265440))

(assert (not b!4265388))

(assert (not b!4265452))

(assert (not b!4265603))

(assert (not d!1256807))

(assert (not b!4265643))

(assert (not b!4265397))

(assert (not b!4265589))

(assert (not b!4265446))

(assert (not d!1257045))

(assert (not b!4265436))

(assert (not b!4265432))

(assert (not b!4265618))

(assert (not b!4265399))

(assert (not b!4265597))

(assert (not d!1256831))

(assert (not b!4265408))

(assert (not d!1256871))

(assert (not b!4265205))

(assert (not b!4265680))

(assert (not b!4265633))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1257207 () Bool)

(declare-fun res!1753001 () Bool)

(declare-fun e!2648680 () Bool)

(assert (=> d!1257207 (=> res!1753001 e!2648680)))

(assert (=> d!1257207 (= res!1753001 (not (is-Node!14250 res!1752881)))))

(assert (=> d!1257207 (= (isBalanced!3809 res!1752881) e!2648680)))

(declare-fun b!4265867 () Bool)

(declare-fun e!2648681 () Bool)

(assert (=> b!4265867 (= e!2648680 e!2648681)))

(declare-fun res!1752997 () Bool)

(assert (=> b!4265867 (=> (not res!1752997) (not e!2648681))))

(assert (=> b!4265867 (= res!1752997 (<= (- 1) (- (height!1875 (left!35040 res!1752881)) (height!1875 (right!35370 res!1752881)))))))

(declare-fun b!4265868 () Bool)

(declare-fun res!1752998 () Bool)

(assert (=> b!4265868 (=> (not res!1752998) (not e!2648681))))

(assert (=> b!4265868 (= res!1752998 (isBalanced!3809 (left!35040 res!1752881)))))

(declare-fun b!4265869 () Bool)

(declare-fun res!1753000 () Bool)

(assert (=> b!4265869 (=> (not res!1753000) (not e!2648681))))

(assert (=> b!4265869 (= res!1753000 (<= (- (height!1875 (left!35040 res!1752881)) (height!1875 (right!35370 res!1752881))) 1))))

(declare-fun b!4265870 () Bool)

(assert (=> b!4265870 (= e!2648681 (not (isEmpty!27994 (right!35370 res!1752881))))))

(declare-fun b!4265871 () Bool)

(declare-fun res!1752999 () Bool)

(assert (=> b!4265871 (=> (not res!1752999) (not e!2648681))))

(assert (=> b!4265871 (= res!1752999 (isBalanced!3809 (right!35370 res!1752881)))))

(declare-fun b!4265872 () Bool)

(declare-fun res!1752996 () Bool)

(assert (=> b!4265872 (=> (not res!1752996) (not e!2648681))))

(assert (=> b!4265872 (= res!1752996 (not (isEmpty!27994 (left!35040 res!1752881))))))

(assert (= (and d!1257207 (not res!1753001)) b!4265867))

(assert (= (and b!4265867 res!1752997) b!4265869))

(assert (= (and b!4265869 res!1753000) b!4265868))

(assert (= (and b!4265868 res!1752998) b!4265871))

(assert (= (and b!4265871 res!1752999) b!4265872))

(assert (= (and b!4265872 res!1752996) b!4265870))

(declare-fun m!4856907 () Bool)

(assert (=> b!4265867 m!4856907))

(declare-fun m!4856909 () Bool)

(assert (=> b!4265867 m!4856909))

(declare-fun m!4856911 () Bool)

(assert (=> b!4265871 m!4856911))

(declare-fun m!4856913 () Bool)

(assert (=> b!4265868 m!4856913))

(declare-fun m!4856915 () Bool)

(assert (=> b!4265870 m!4856915))

(assert (=> b!4265869 m!4856907))

(assert (=> b!4265869 m!4856909))

(declare-fun m!4856917 () Bool)

(assert (=> b!4265872 m!4856917))

(assert (=> b!4265389 d!1257207))

(declare-fun d!1257209 () Bool)

(declare-fun lt!1511687 () Int)

(assert (=> d!1257209 (>= lt!1511687 0)))

(declare-fun e!2648682 () Int)

(assert (=> d!1257209 (= lt!1511687 e!2648682)))

(declare-fun c!725115 () Bool)

(assert (=> d!1257209 (= c!725115 (is-Nil!47268 lt!1511609))))

(assert (=> d!1257209 (= (size!34622 lt!1511609) lt!1511687)))

(declare-fun b!4265873 () Bool)

(assert (=> b!4265873 (= e!2648682 0)))

(declare-fun b!4265874 () Bool)

(assert (=> b!4265874 (= e!2648682 (+ 1 (size!34622 (t!353461 lt!1511609))))))

(assert (= (and d!1257209 c!725115) b!4265873))

(assert (= (and d!1257209 (not c!725115)) b!4265874))

(declare-fun m!4856919 () Bool)

(assert (=> b!4265874 m!4856919))

(assert (=> b!4265415 d!1257209))

(assert (=> b!4265415 d!1256855))

(declare-fun d!1257211 () Bool)

(declare-fun lt!1511688 () Int)

(assert (=> d!1257211 (>= lt!1511688 0)))

(declare-fun e!2648683 () Int)

(assert (=> d!1257211 (= lt!1511688 e!2648683)))

(declare-fun c!725116 () Bool)

(assert (=> d!1257211 (= c!725116 (is-Nil!47268 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))))))

(assert (=> d!1257211 (= (size!34622 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))) lt!1511688)))

(declare-fun b!4265875 () Bool)

(assert (=> b!4265875 (= e!2648683 0)))

(declare-fun b!4265876 () Bool)

(assert (=> b!4265876 (= e!2648683 (+ 1 (size!34622 (t!353461 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))))))))

(assert (= (and d!1257211 c!725116) b!4265875))

(assert (= (and d!1257211 (not c!725116)) b!4265876))

(declare-fun m!4856921 () Bool)

(assert (=> b!4265876 m!4856921))

(assert (=> b!4265415 d!1257211))

(declare-fun d!1257213 () Bool)

(declare-fun c!725117 () Bool)

(assert (=> d!1257213 (= c!725117 (is-Nil!47268 (t!353461 lt!1511561)))))

(declare-fun e!2648684 () (Set (_ BitVec 16)))

(assert (=> d!1257213 (= (content!7469 (t!353461 lt!1511561)) e!2648684)))

(declare-fun b!4265877 () Bool)

(assert (=> b!4265877 (= e!2648684 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265878 () Bool)

(assert (=> b!4265878 (= e!2648684 (set.union (set.insert (h!52688 (t!353461 lt!1511561)) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (t!353461 lt!1511561)))))))

(assert (= (and d!1257213 c!725117) b!4265877))

(assert (= (and d!1257213 (not c!725117)) b!4265878))

(declare-fun m!4856923 () Bool)

(assert (=> b!4265878 m!4856923))

(declare-fun m!4856925 () Bool)

(assert (=> b!4265878 m!4856925))

(assert (=> b!4265452 d!1257213))

(declare-fun d!1257215 () Bool)

(declare-fun c!725118 () Bool)

(assert (=> d!1257215 (= c!725118 (is-Nil!47268 (t!353461 lt!1511542)))))

(declare-fun e!2648685 () (Set (_ BitVec 16)))

(assert (=> d!1257215 (= (content!7469 (t!353461 lt!1511542)) e!2648685)))

(declare-fun b!4265879 () Bool)

(assert (=> b!4265879 (= e!2648685 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265880 () Bool)

(assert (=> b!4265880 (= e!2648685 (set.union (set.insert (h!52688 (t!353461 lt!1511542)) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (t!353461 lt!1511542)))))))

(assert (= (and d!1257215 c!725118) b!4265879))

(assert (= (and d!1257215 (not c!725118)) b!4265880))

(declare-fun m!4856927 () Bool)

(assert (=> b!4265880 m!4856927))

(declare-fun m!4856929 () Bool)

(assert (=> b!4265880 m!4856929))

(assert (=> b!4265449 d!1257215))

(declare-fun d!1257217 () Bool)

(declare-fun lt!1511691 () Int)

(assert (=> d!1257217 (= lt!1511691 (size!34622 (list!17075 (left!35040 (c!724708 x!738013)))))))

(assert (=> d!1257217 (= lt!1511691 (ite (is-Empty!14250 (left!35040 (c!724708 x!738013))) 0 (ite (is-Leaf!22031 (left!35040 (c!724708 x!738013))) (csize!28731 (left!35040 (c!724708 x!738013))) (csize!28730 (left!35040 (c!724708 x!738013))))))))

(assert (=> d!1257217 (= (size!34624 (left!35040 (c!724708 x!738013))) lt!1511691)))

(declare-fun bs!599306 () Bool)

(assert (= bs!599306 d!1257217))

(assert (=> bs!599306 m!4855149))

(assert (=> bs!599306 m!4855149))

(assert (=> bs!599306 m!4855295))

(assert (=> d!1256707 d!1257217))

(declare-fun d!1257219 () Bool)

(declare-fun lt!1511692 () Int)

(assert (=> d!1257219 (= lt!1511692 (size!34622 (list!17075 (right!35370 (c!724708 x!738013)))))))

(assert (=> d!1257219 (= lt!1511692 (ite (is-Empty!14250 (right!35370 (c!724708 x!738013))) 0 (ite (is-Leaf!22031 (right!35370 (c!724708 x!738013))) (csize!28731 (right!35370 (c!724708 x!738013))) (csize!28730 (right!35370 (c!724708 x!738013))))))))

(assert (=> d!1257219 (= (size!34624 (right!35370 (c!724708 x!738013))) lt!1511692)))

(declare-fun bs!599307 () Bool)

(assert (= bs!599307 d!1257219))

(assert (=> bs!599307 m!4855151))

(assert (=> bs!599307 m!4855151))

(assert (=> bs!599307 m!4855297))

(assert (=> d!1256707 d!1257219))

(declare-fun d!1257221 () Bool)

(declare-fun lt!1511693 () List!47392)

(assert (=> d!1257221 (= lt!1511693 (list!17077 (xs!17556 (right!35370 (c!724708 x!738013)))))))

(assert (=> d!1257221 (= lt!1511693 (rec!28 (xs!17556 (right!35370 (c!724708 x!738013))) (size!34625 (xs!17556 (right!35370 (c!724708 x!738013)))) Nil!47268))))

(assert (=> d!1257221 (= (efficientList!421 (xs!17556 (right!35370 (c!724708 x!738013)))) lt!1511693)))

(declare-fun bs!599308 () Bool)

(assert (= bs!599308 d!1257221))

(assert (=> bs!599308 m!4855315))

(declare-fun m!4856931 () Bool)

(assert (=> bs!599308 m!4856931))

(assert (=> bs!599308 m!4856931))

(declare-fun m!4856933 () Bool)

(assert (=> bs!599308 m!4856933))

(assert (=> b!4265217 d!1257221))

(declare-fun d!1257223 () Bool)

(declare-fun lt!1511694 () Int)

(assert (=> d!1257223 (>= lt!1511694 0)))

(declare-fun e!2648686 () Int)

(assert (=> d!1257223 (= lt!1511694 e!2648686)))

(declare-fun c!725119 () Bool)

(assert (=> d!1257223 (= c!725119 (is-Nil!47268 lt!1511618))))

(assert (=> d!1257223 (= (size!34622 lt!1511618) lt!1511694)))

(declare-fun b!4265881 () Bool)

(assert (=> b!4265881 (= e!2648686 0)))

(declare-fun b!4265882 () Bool)

(assert (=> b!4265882 (= e!2648686 (+ 1 (size!34622 (t!353461 lt!1511618))))))

(assert (= (and d!1257223 c!725119) b!4265881))

(assert (= (and d!1257223 (not c!725119)) b!4265882))

(declare-fun m!4856935 () Bool)

(assert (=> b!4265882 m!4856935))

(assert (=> b!4265457 d!1257223))

(declare-fun d!1257225 () Bool)

(declare-fun lt!1511695 () Int)

(assert (=> d!1257225 (>= lt!1511695 0)))

(declare-fun e!2648687 () Int)

(assert (=> d!1257225 (= lt!1511695 e!2648687)))

(declare-fun c!725120 () Bool)

(assert (=> d!1257225 (= c!725120 (is-Nil!47268 (t!353461 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(assert (=> d!1257225 (= (size!34622 (t!353461 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) lt!1511695)))

(declare-fun b!4265883 () Bool)

(assert (=> b!4265883 (= e!2648687 0)))

(declare-fun b!4265884 () Bool)

(assert (=> b!4265884 (= e!2648687 (+ 1 (size!34622 (t!353461 (t!353461 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))))

(assert (= (and d!1257225 c!725120) b!4265883))

(assert (= (and d!1257225 (not c!725120)) b!4265884))

(declare-fun m!4856937 () Bool)

(assert (=> b!4265884 m!4856937))

(assert (=> b!4265457 d!1257225))

(assert (=> b!4265457 d!1256815))

(declare-fun d!1257227 () Bool)

(declare-fun res!1753007 () Bool)

(declare-fun e!2648688 () Bool)

(assert (=> d!1257227 (=> res!1753007 e!2648688)))

(assert (=> d!1257227 (= res!1753007 (not (is-Node!14250 lt!1511617)))))

(assert (=> d!1257227 (= (isBalanced!3809 lt!1511617) e!2648688)))

(declare-fun b!4265885 () Bool)

(declare-fun e!2648689 () Bool)

(assert (=> b!4265885 (= e!2648688 e!2648689)))

(declare-fun res!1753003 () Bool)

(assert (=> b!4265885 (=> (not res!1753003) (not e!2648689))))

(assert (=> b!4265885 (= res!1753003 (<= (- 1) (- (height!1875 (left!35040 lt!1511617)) (height!1875 (right!35370 lt!1511617)))))))

(declare-fun b!4265886 () Bool)

(declare-fun res!1753004 () Bool)

(assert (=> b!4265886 (=> (not res!1753004) (not e!2648689))))

(assert (=> b!4265886 (= res!1753004 (isBalanced!3809 (left!35040 lt!1511617)))))

(declare-fun b!4265887 () Bool)

(declare-fun res!1753006 () Bool)

(assert (=> b!4265887 (=> (not res!1753006) (not e!2648689))))

(assert (=> b!4265887 (= res!1753006 (<= (- (height!1875 (left!35040 lt!1511617)) (height!1875 (right!35370 lt!1511617))) 1))))

(declare-fun b!4265888 () Bool)

(assert (=> b!4265888 (= e!2648689 (not (isEmpty!27994 (right!35370 lt!1511617))))))

(declare-fun b!4265889 () Bool)

(declare-fun res!1753005 () Bool)

(assert (=> b!4265889 (=> (not res!1753005) (not e!2648689))))

(assert (=> b!4265889 (= res!1753005 (isBalanced!3809 (right!35370 lt!1511617)))))

(declare-fun b!4265890 () Bool)

(declare-fun res!1753002 () Bool)

(assert (=> b!4265890 (=> (not res!1753002) (not e!2648689))))

(assert (=> b!4265890 (= res!1753002 (not (isEmpty!27994 (left!35040 lt!1511617))))))

(assert (= (and d!1257227 (not res!1753007)) b!4265885))

(assert (= (and b!4265885 res!1753003) b!4265887))

(assert (= (and b!4265887 res!1753006) b!4265886))

(assert (= (and b!4265886 res!1753004) b!4265889))

(assert (= (and b!4265889 res!1753005) b!4265890))

(assert (= (and b!4265890 res!1753002) b!4265888))

(declare-fun m!4856939 () Bool)

(assert (=> b!4265885 m!4856939))

(declare-fun m!4856941 () Bool)

(assert (=> b!4265885 m!4856941))

(declare-fun m!4856943 () Bool)

(assert (=> b!4265889 m!4856943))

(declare-fun m!4856945 () Bool)

(assert (=> b!4265886 m!4856945))

(declare-fun m!4856947 () Bool)

(assert (=> b!4265888 m!4856947))

(assert (=> b!4265887 m!4856939))

(assert (=> b!4265887 m!4856941))

(declare-fun m!4856949 () Bool)

(assert (=> b!4265890 m!4856949))

(assert (=> b!4265450 d!1257227))

(declare-fun d!1257229 () Bool)

(declare-fun c!725121 () Bool)

(assert (=> d!1257229 (= c!725121 (is-Nil!47268 lt!1511646))))

(declare-fun e!2648690 () (Set (_ BitVec 16)))

(assert (=> d!1257229 (= (content!7469 lt!1511646) e!2648690)))

(declare-fun b!4265891 () Bool)

(assert (=> b!4265891 (= e!2648690 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265892 () Bool)

(assert (=> b!4265892 (= e!2648690 (set.union (set.insert (h!52688 lt!1511646) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 lt!1511646))))))

(assert (= (and d!1257229 c!725121) b!4265891))

(assert (= (and d!1257229 (not c!725121)) b!4265892))

(declare-fun m!4856951 () Bool)

(assert (=> b!4265892 m!4856951))

(declare-fun m!4856953 () Bool)

(assert (=> b!4265892 m!4856953))

(assert (=> d!1257011 d!1257229))

(declare-fun d!1257231 () Bool)

(declare-fun c!725122 () Bool)

(assert (=> d!1257231 (= c!725122 (is-Nil!47268 (list!17075 (left!35040 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(declare-fun e!2648691 () (Set (_ BitVec 16)))

(assert (=> d!1257231 (= (content!7469 (list!17075 (left!35040 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) e!2648691)))

(declare-fun b!4265893 () Bool)

(assert (=> b!4265893 (= e!2648691 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265894 () Bool)

(assert (=> b!4265894 (= e!2648691 (set.union (set.insert (h!52688 (list!17075 (left!35040 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (list!17075 (left!35040 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))))

(assert (= (and d!1257231 c!725122) b!4265893))

(assert (= (and d!1257231 (not c!725122)) b!4265894))

(declare-fun m!4856955 () Bool)

(assert (=> b!4265894 m!4856955))

(declare-fun m!4856957 () Bool)

(assert (=> b!4265894 m!4856957))

(assert (=> d!1257011 d!1257231))

(declare-fun d!1257233 () Bool)

(declare-fun c!725123 () Bool)

(assert (=> d!1257233 (= c!725123 (is-Nil!47268 (list!17075 (right!35370 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(declare-fun e!2648692 () (Set (_ BitVec 16)))

(assert (=> d!1257233 (= (content!7469 (list!17075 (right!35370 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) e!2648692)))

(declare-fun b!4265895 () Bool)

(assert (=> b!4265895 (= e!2648692 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265896 () Bool)

(assert (=> b!4265896 (= e!2648692 (set.union (set.insert (h!52688 (list!17075 (right!35370 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (list!17075 (right!35370 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))))

(assert (= (and d!1257233 c!725123) b!4265895))

(assert (= (and d!1257233 (not c!725123)) b!4265896))

(declare-fun m!4856959 () Bool)

(assert (=> b!4265896 m!4856959))

(declare-fun m!4856961 () Bool)

(assert (=> b!4265896 m!4856961))

(assert (=> d!1257011 d!1257233))

(declare-fun d!1257235 () Bool)

(declare-fun c!725124 () Bool)

(assert (=> d!1257235 (= c!725124 (is-Node!14250 (left!35040 (left!35040 (c!724708 x!738013)))))))

(declare-fun e!2648693 () Bool)

(assert (=> d!1257235 (= (inv!62190 (left!35040 (left!35040 (c!724708 x!738013)))) e!2648693)))

(declare-fun b!4265897 () Bool)

(assert (=> b!4265897 (= e!2648693 (inv!62194 (left!35040 (left!35040 (c!724708 x!738013)))))))

(declare-fun b!4265898 () Bool)

(declare-fun e!2648694 () Bool)

(assert (=> b!4265898 (= e!2648693 e!2648694)))

(declare-fun res!1753008 () Bool)

(assert (=> b!4265898 (= res!1753008 (not (is-Leaf!22031 (left!35040 (left!35040 (c!724708 x!738013))))))))

(assert (=> b!4265898 (=> res!1753008 e!2648694)))

(declare-fun b!4265899 () Bool)

(assert (=> b!4265899 (= e!2648694 (inv!62195 (left!35040 (left!35040 (c!724708 x!738013)))))))

(assert (= (and d!1257235 c!725124) b!4265897))

(assert (= (and d!1257235 (not c!725124)) b!4265898))

(assert (= (and b!4265898 (not res!1753008)) b!4265899))

(declare-fun m!4856963 () Bool)

(assert (=> b!4265897 m!4856963))

(declare-fun m!4856965 () Bool)

(assert (=> b!4265899 m!4856965))

(assert (=> b!4265248 d!1257235))

(declare-fun d!1257237 () Bool)

(declare-fun c!725125 () Bool)

(assert (=> d!1257237 (= c!725125 (is-Node!14250 (right!35370 (left!35040 (c!724708 x!738013)))))))

(declare-fun e!2648695 () Bool)

(assert (=> d!1257237 (= (inv!62190 (right!35370 (left!35040 (c!724708 x!738013)))) e!2648695)))

(declare-fun b!4265900 () Bool)

(assert (=> b!4265900 (= e!2648695 (inv!62194 (right!35370 (left!35040 (c!724708 x!738013)))))))

(declare-fun b!4265901 () Bool)

(declare-fun e!2648696 () Bool)

(assert (=> b!4265901 (= e!2648695 e!2648696)))

(declare-fun res!1753009 () Bool)

(assert (=> b!4265901 (= res!1753009 (not (is-Leaf!22031 (right!35370 (left!35040 (c!724708 x!738013))))))))

(assert (=> b!4265901 (=> res!1753009 e!2648696)))

(declare-fun b!4265902 () Bool)

(assert (=> b!4265902 (= e!2648696 (inv!62195 (right!35370 (left!35040 (c!724708 x!738013)))))))

(assert (= (and d!1257237 c!725125) b!4265900))

(assert (= (and d!1257237 (not c!725125)) b!4265901))

(assert (= (and b!4265901 (not res!1753009)) b!4265902))

(declare-fun m!4856967 () Bool)

(assert (=> b!4265900 m!4856967))

(declare-fun m!4856969 () Bool)

(assert (=> b!4265902 m!4856969))

(assert (=> b!4265248 d!1257237))

(declare-fun d!1257239 () Bool)

(declare-fun c!725126 () Bool)

(assert (=> d!1257239 (= c!725126 (is-Nil!47268 (t!353461 (t!353461 lt!1511512))))))

(declare-fun e!2648697 () (Set (_ BitVec 16)))

(assert (=> d!1257239 (= (content!7469 (t!353461 (t!353461 lt!1511512))) e!2648697)))

(declare-fun b!4265903 () Bool)

(assert (=> b!4265903 (= e!2648697 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265904 () Bool)

(assert (=> b!4265904 (= e!2648697 (set.union (set.insert (h!52688 (t!353461 (t!353461 lt!1511512))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (t!353461 (t!353461 lt!1511512))))))))

(assert (= (and d!1257239 c!725126) b!4265903))

(assert (= (and d!1257239 (not c!725126)) b!4265904))

(declare-fun m!4856971 () Bool)

(assert (=> b!4265904 m!4856971))

(declare-fun m!4856973 () Bool)

(assert (=> b!4265904 m!4856973))

(assert (=> b!4265401 d!1257239))

(assert (=> d!1256715 d!1256601))

(declare-fun d!1257241 () Bool)

(declare-fun lt!1511716 () List!47392)

(assert (=> d!1257241 (= lt!1511716 (list!17077 (xs!17556 (c!724708 x!738013))))))

(declare-fun e!2648702 () List!47392)

(assert (=> d!1257241 (= lt!1511716 e!2648702)))

(declare-fun c!725129 () Bool)

(assert (=> d!1257241 (= c!725129 (<= (size!34625 (xs!17556 (c!724708 x!738013))) 0))))

(declare-fun e!2648703 () Bool)

(assert (=> d!1257241 e!2648703))

(declare-fun res!1753012 () Bool)

(assert (=> d!1257241 (=> (not res!1753012) (not e!2648703))))

(assert (=> d!1257241 (= res!1753012 (<= 0 (size!34625 (xs!17556 (c!724708 x!738013)))))))

(assert (=> d!1257241 (= (rec!28 (xs!17556 (c!724708 x!738013)) (size!34625 (xs!17556 (c!724708 x!738013))) Nil!47268) lt!1511716)))

(declare-fun b!4265911 () Bool)

(assert (=> b!4265911 (= e!2648703 (<= (size!34625 (xs!17556 (c!724708 x!738013))) (size!34625 (xs!17556 (c!724708 x!738013)))))))

(declare-fun b!4265912 () Bool)

(assert (=> b!4265912 (= e!2648702 Nil!47268)))

(declare-fun b!4265913 () Bool)

(declare-fun $colon$colon!638 (List!47392 (_ BitVec 16)) List!47392)

(declare-fun apply!10786 (IArray!28505 Int) (_ BitVec 16))

(assert (=> b!4265913 (= e!2648702 (rec!28 (xs!17556 (c!724708 x!738013)) (- (size!34625 (xs!17556 (c!724708 x!738013))) 1) ($colon$colon!638 Nil!47268 (apply!10786 (xs!17556 (c!724708 x!738013)) (- (size!34625 (xs!17556 (c!724708 x!738013))) 1)))))))

(declare-fun lt!1511722 () List!47392)

(assert (=> b!4265913 (= lt!1511722 (list!17077 (xs!17556 (c!724708 x!738013))))))

(declare-fun lt!1511720 () Int)

(assert (=> b!4265913 (= lt!1511720 (- (size!34625 (xs!17556 (c!724708 x!738013))) 1))))

(declare-fun lt!1511721 () Unit!66151)

(declare-fun lemmaDropApply!1240 (List!47392 Int) Unit!66151)

(assert (=> b!4265913 (= lt!1511721 (lemmaDropApply!1240 lt!1511722 lt!1511720))))

(declare-fun head!8996 (List!47392) (_ BitVec 16))

(declare-fun drop!2138 (List!47392 Int) List!47392)

(declare-fun apply!10787 (List!47392 Int) (_ BitVec 16))

(assert (=> b!4265913 (= (head!8996 (drop!2138 lt!1511722 lt!1511720)) (apply!10787 lt!1511722 lt!1511720))))

(declare-fun lt!1511715 () Unit!66151)

(assert (=> b!4265913 (= lt!1511715 lt!1511721)))

(declare-fun lt!1511719 () List!47392)

(assert (=> b!4265913 (= lt!1511719 (list!17077 (xs!17556 (c!724708 x!738013))))))

(declare-fun lt!1511717 () Int)

(assert (=> b!4265913 (= lt!1511717 (- (size!34625 (xs!17556 (c!724708 x!738013))) 1))))

(declare-fun lt!1511718 () Unit!66151)

(declare-fun lemmaDropTail!1124 (List!47392 Int) Unit!66151)

(assert (=> b!4265913 (= lt!1511718 (lemmaDropTail!1124 lt!1511719 lt!1511717))))

(declare-fun tail!6861 (List!47392) List!47392)

(assert (=> b!4265913 (= (tail!6861 (drop!2138 lt!1511719 lt!1511717)) (drop!2138 lt!1511719 (+ lt!1511717 1)))))

(declare-fun lt!1511714 () Unit!66151)

(assert (=> b!4265913 (= lt!1511714 lt!1511718)))

(assert (= (and d!1257241 res!1753012) b!4265911))

(assert (= (and d!1257241 c!725129) b!4265912))

(assert (= (and d!1257241 (not c!725129)) b!4265913))

(assert (=> d!1257241 m!4855147))

(assert (=> b!4265911 m!4855583))

(declare-fun m!4856975 () Bool)

(assert (=> b!4265913 m!4856975))

(declare-fun m!4856977 () Bool)

(assert (=> b!4265913 m!4856977))

(declare-fun m!4856979 () Bool)

(assert (=> b!4265913 m!4856979))

(declare-fun m!4856981 () Bool)

(assert (=> b!4265913 m!4856981))

(declare-fun m!4856983 () Bool)

(assert (=> b!4265913 m!4856983))

(declare-fun m!4856985 () Bool)

(assert (=> b!4265913 m!4856985))

(declare-fun m!4856987 () Bool)

(assert (=> b!4265913 m!4856987))

(assert (=> b!4265913 m!4856981))

(declare-fun m!4856989 () Bool)

(assert (=> b!4265913 m!4856989))

(assert (=> b!4265913 m!4856985))

(declare-fun m!4856991 () Bool)

(assert (=> b!4265913 m!4856991))

(assert (=> b!4265913 m!4856977))

(declare-fun m!4856993 () Bool)

(assert (=> b!4265913 m!4856993))

(assert (=> b!4265913 m!4856991))

(declare-fun m!4856995 () Bool)

(assert (=> b!4265913 m!4856995))

(assert (=> b!4265913 m!4855147))

(assert (=> d!1256715 d!1257241))

(declare-fun d!1257243 () Bool)

(declare-fun lt!1511725 () Int)

(assert (=> d!1257243 (= lt!1511725 (size!34622 (list!17077 (xs!17556 (c!724708 x!738013)))))))

(declare-fun choose!26000 (IArray!28505) Int)

(assert (=> d!1257243 (= lt!1511725 (choose!26000 (xs!17556 (c!724708 x!738013))))))

(assert (=> d!1257243 (= (size!34625 (xs!17556 (c!724708 x!738013))) lt!1511725)))

(declare-fun bs!599309 () Bool)

(assert (= bs!599309 d!1257243))

(assert (=> bs!599309 m!4855147))

(assert (=> bs!599309 m!4855147))

(assert (=> bs!599309 m!4855573))

(declare-fun m!4856997 () Bool)

(assert (=> bs!599309 m!4856997))

(assert (=> d!1256715 d!1257243))

(declare-fun d!1257245 () Bool)

(declare-fun c!725130 () Bool)

(assert (=> d!1257245 (= c!725130 (is-Nil!47268 (t!353461 lt!1511567)))))

(declare-fun e!2648704 () (Set (_ BitVec 16)))

(assert (=> d!1257245 (= (content!7469 (t!353461 lt!1511567)) e!2648704)))

(declare-fun b!4265914 () Bool)

(assert (=> b!4265914 (= e!2648704 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265915 () Bool)

(assert (=> b!4265915 (= e!2648704 (set.union (set.insert (h!52688 (t!353461 lt!1511567)) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (t!353461 lt!1511567)))))))

(assert (= (and d!1257245 c!725130) b!4265914))

(assert (= (and d!1257245 (not c!725130)) b!4265915))

(declare-fun m!4856999 () Bool)

(assert (=> b!4265915 m!4856999))

(declare-fun m!4857001 () Bool)

(assert (=> b!4265915 m!4857001))

(assert (=> b!4265410 d!1257245))

(declare-fun d!1257247 () Bool)

(declare-fun lt!1511726 () Int)

(assert (=> d!1257247 (>= lt!1511726 0)))

(declare-fun e!2648705 () Int)

(assert (=> d!1257247 (= lt!1511726 e!2648705)))

(declare-fun c!725131 () Bool)

(assert (=> d!1257247 (= c!725131 (is-Nil!47268 (t!353461 lt!1511532)))))

(assert (=> d!1257247 (= (size!34622 (t!353461 lt!1511532)) lt!1511726)))

(declare-fun b!4265916 () Bool)

(assert (=> b!4265916 (= e!2648705 0)))

(declare-fun b!4265917 () Bool)

(assert (=> b!4265917 (= e!2648705 (+ 1 (size!34622 (t!353461 (t!353461 lt!1511532)))))))

(assert (= (and d!1257247 c!725131) b!4265916))

(assert (= (and d!1257247 (not c!725131)) b!4265917))

(declare-fun m!4857003 () Bool)

(assert (=> b!4265917 m!4857003))

(assert (=> b!4265395 d!1257247))

(declare-fun d!1257249 () Bool)

(declare-fun c!725132 () Bool)

(assert (=> d!1257249 (= c!725132 (is-Nil!47268 (t!353461 lt!1511502)))))

(declare-fun e!2648706 () (Set (_ BitVec 16)))

(assert (=> d!1257249 (= (content!7469 (t!353461 lt!1511502)) e!2648706)))

(declare-fun b!4265918 () Bool)

(assert (=> b!4265918 (= e!2648706 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265919 () Bool)

(assert (=> b!4265919 (= e!2648706 (set.union (set.insert (h!52688 (t!353461 lt!1511502)) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (t!353461 lt!1511502)))))))

(assert (= (and d!1257249 c!725132) b!4265918))

(assert (= (and d!1257249 (not c!725132)) b!4265919))

(declare-fun m!4857005 () Bool)

(assert (=> b!4265919 m!4857005))

(declare-fun m!4857007 () Bool)

(assert (=> b!4265919 m!4857007))

(assert (=> b!4265430 d!1257249))

(declare-fun d!1257251 () Bool)

(declare-fun c!725133 () Bool)

(assert (=> d!1257251 (= c!725133 (is-Nil!47268 (t!353461 (t!353461 (efficientList$default$2!146 (c!724708 x!738013))))))))

(declare-fun e!2648707 () (Set (_ BitVec 16)))

(assert (=> d!1257251 (= (content!7469 (t!353461 (t!353461 (efficientList$default$2!146 (c!724708 x!738013))))) e!2648707)))

(declare-fun b!4265920 () Bool)

(assert (=> b!4265920 (= e!2648707 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265921 () Bool)

(assert (=> b!4265921 (= e!2648707 (set.union (set.insert (h!52688 (t!353461 (t!353461 (efficientList$default$2!146 (c!724708 x!738013))))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (t!353461 (t!353461 (efficientList$default$2!146 (c!724708 x!738013))))))))))

(assert (= (and d!1257251 c!725133) b!4265920))

(assert (= (and d!1257251 (not c!725133)) b!4265921))

(declare-fun m!4857009 () Bool)

(assert (=> b!4265921 m!4857009))

(declare-fun m!4857011 () Bool)

(assert (=> b!4265921 m!4857011))

(assert (=> b!4265460 d!1257251))

(declare-fun b!4265925 () Bool)

(declare-fun e!2648708 () Bool)

(declare-fun lt!1511727 () List!47392)

(assert (=> b!4265925 (= e!2648708 (or (not (= (list!17075 (right!35370 (c!724708 x!738013))) Nil!47268)) (= lt!1511727 (t!353461 (t!353461 (list!17075 (left!35040 (c!724708 x!738013))))))))))

(declare-fun b!4265924 () Bool)

(declare-fun res!1753013 () Bool)

(assert (=> b!4265924 (=> (not res!1753013) (not e!2648708))))

(assert (=> b!4265924 (= res!1753013 (= (size!34622 lt!1511727) (+ (size!34622 (t!353461 (t!353461 (list!17075 (left!35040 (c!724708 x!738013)))))) (size!34622 (list!17075 (right!35370 (c!724708 x!738013)))))))))

(declare-fun b!4265923 () Bool)

(declare-fun e!2648709 () List!47392)

(assert (=> b!4265923 (= e!2648709 (Cons!47268 (h!52688 (t!353461 (t!353461 (list!17075 (left!35040 (c!724708 x!738013)))))) (++!12049 (t!353461 (t!353461 (t!353461 (list!17075 (left!35040 (c!724708 x!738013)))))) (list!17075 (right!35370 (c!724708 x!738013))))))))

(declare-fun b!4265922 () Bool)

(assert (=> b!4265922 (= e!2648709 (list!17075 (right!35370 (c!724708 x!738013))))))

(declare-fun d!1257253 () Bool)

(assert (=> d!1257253 e!2648708))

(declare-fun res!1753014 () Bool)

(assert (=> d!1257253 (=> (not res!1753014) (not e!2648708))))

(assert (=> d!1257253 (= res!1753014 (= (content!7469 lt!1511727) (set.union (content!7469 (t!353461 (t!353461 (list!17075 (left!35040 (c!724708 x!738013)))))) (content!7469 (list!17075 (right!35370 (c!724708 x!738013)))))))))

(assert (=> d!1257253 (= lt!1511727 e!2648709)))

(declare-fun c!725134 () Bool)

(assert (=> d!1257253 (= c!725134 (is-Nil!47268 (t!353461 (t!353461 (list!17075 (left!35040 (c!724708 x!738013)))))))))

(assert (=> d!1257253 (= (++!12049 (t!353461 (t!353461 (list!17075 (left!35040 (c!724708 x!738013))))) (list!17075 (right!35370 (c!724708 x!738013)))) lt!1511727)))

(assert (= (and d!1257253 c!725134) b!4265922))

(assert (= (and d!1257253 (not c!725134)) b!4265923))

(assert (= (and d!1257253 res!1753014) b!4265924))

(assert (= (and b!4265924 res!1753013) b!4265925))

(declare-fun m!4857013 () Bool)

(assert (=> b!4265924 m!4857013))

(declare-fun m!4857015 () Bool)

(assert (=> b!4265924 m!4857015))

(assert (=> b!4265924 m!4855151))

(assert (=> b!4265924 m!4855297))

(assert (=> b!4265923 m!4855151))

(declare-fun m!4857017 () Bool)

(assert (=> b!4265923 m!4857017))

(declare-fun m!4857019 () Bool)

(assert (=> d!1257253 m!4857019))

(assert (=> d!1257253 m!4856369))

(assert (=> d!1257253 m!4855151))

(assert (=> d!1257253 m!4855305))

(assert (=> b!4265418 d!1257253))

(assert (=> b!4265397 d!1257225))

(assert (=> b!4265243 d!1256567))

(declare-fun d!1257255 () Bool)

(declare-fun c!725135 () Bool)

(assert (=> d!1257255 (= c!725135 (is-Nil!47268 (t!353461 call!294041)))))

(declare-fun e!2648710 () (Set (_ BitVec 16)))

(assert (=> d!1257255 (= (content!7469 (t!353461 call!294041)) e!2648710)))

(declare-fun b!4265926 () Bool)

(assert (=> b!4265926 (= e!2648710 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265927 () Bool)

(assert (=> b!4265927 (= e!2648710 (set.union (set.insert (h!52688 (t!353461 call!294041)) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (t!353461 call!294041)))))))

(assert (= (and d!1257255 c!725135) b!4265926))

(assert (= (and d!1257255 (not c!725135)) b!4265927))

(declare-fun m!4857021 () Bool)

(assert (=> b!4265927 m!4857021))

(declare-fun m!4857023 () Bool)

(assert (=> b!4265927 m!4857023))

(assert (=> b!4265454 d!1257255))

(declare-fun d!1257257 () Bool)

(assert (=> d!1257257 (= (inv!62196 (xs!17556 (left!35040 (c!724708 x!738013)))) (<= (size!34622 (innerList!14310 (xs!17556 (left!35040 (c!724708 x!738013))))) 2147483647))))

(declare-fun bs!599310 () Bool)

(assert (= bs!599310 d!1257257))

(declare-fun m!4857025 () Bool)

(assert (=> bs!599310 m!4857025))

(assert (=> b!4265249 d!1257257))

(assert (=> b!4265227 d!1256575))

(declare-fun d!1257259 () Bool)

(declare-fun lt!1511728 () Int)

(assert (=> d!1257259 (>= lt!1511728 0)))

(declare-fun e!2648711 () Int)

(assert (=> d!1257259 (= lt!1511728 e!2648711)))

(declare-fun c!725136 () Bool)

(assert (=> d!1257259 (= c!725136 (is-Nil!47268 (t!353461 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(assert (=> d!1257259 (= (size!34622 (t!353461 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) lt!1511728)))

(declare-fun b!4265928 () Bool)

(assert (=> b!4265928 (= e!2648711 0)))

(declare-fun b!4265929 () Bool)

(assert (=> b!4265929 (= e!2648711 (+ 1 (size!34622 (t!353461 (t!353461 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))))

(assert (= (and d!1257259 c!725136) b!4265928))

(assert (= (and d!1257259 (not c!725136)) b!4265929))

(declare-fun m!4857027 () Bool)

(assert (=> b!4265929 m!4857027))

(assert (=> b!4265399 d!1257259))

(declare-fun d!1257261 () Bool)

(declare-fun c!725137 () Bool)

(assert (=> d!1257261 (= c!725137 (is-Nil!47268 (t!353461 lt!1511560)))))

(declare-fun e!2648712 () (Set (_ BitVec 16)))

(assert (=> d!1257261 (= (content!7469 (t!353461 lt!1511560)) e!2648712)))

(declare-fun b!4265930 () Bool)

(assert (=> b!4265930 (= e!2648712 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265931 () Bool)

(assert (=> b!4265931 (= e!2648712 (set.union (set.insert (h!52688 (t!353461 lt!1511560)) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (t!353461 lt!1511560)))))))

(assert (= (and d!1257261 c!725137) b!4265930))

(assert (= (and d!1257261 (not c!725137)) b!4265931))

(declare-fun m!4857029 () Bool)

(assert (=> b!4265931 m!4857029))

(declare-fun m!4857031 () Bool)

(assert (=> b!4265931 m!4857031))

(assert (=> b!4265426 d!1257261))

(declare-fun b!4265935 () Bool)

(declare-fun e!2648713 () Bool)

(declare-fun lt!1511729 () List!47392)

(assert (=> b!4265935 (= e!2648713 (or (not (= (efficientList$default$2!146 (c!724708 x!738013)) Nil!47268)) (= lt!1511729 e!2648339)))))

(declare-fun b!4265934 () Bool)

(declare-fun res!1753015 () Bool)

(assert (=> b!4265934 (=> (not res!1753015) (not e!2648713))))

(assert (=> b!4265934 (= res!1753015 (= (size!34622 lt!1511729) (+ (size!34622 e!2648339) (size!34622 (efficientList$default$2!146 (c!724708 x!738013))))))))

(declare-fun b!4265933 () Bool)

(declare-fun e!2648714 () List!47392)

(assert (=> b!4265933 (= e!2648714 (Cons!47268 (h!52688 e!2648339) (++!12049 (t!353461 e!2648339) (efficientList$default$2!146 (c!724708 x!738013)))))))

(declare-fun b!4265932 () Bool)

(assert (=> b!4265932 (= e!2648714 (efficientList$default$2!146 (c!724708 x!738013)))))

(declare-fun d!1257263 () Bool)

(assert (=> d!1257263 e!2648713))

(declare-fun res!1753016 () Bool)

(assert (=> d!1257263 (=> (not res!1753016) (not e!2648713))))

(assert (=> d!1257263 (= res!1753016 (= (content!7469 lt!1511729) (set.union (content!7469 e!2648339) (content!7469 (efficientList$default$2!146 (c!724708 x!738013))))))))

(assert (=> d!1257263 (= lt!1511729 e!2648714)))

(declare-fun c!725138 () Bool)

(assert (=> d!1257263 (= c!725138 (is-Nil!47268 e!2648339))))

(assert (=> d!1257263 (= (++!12049 e!2648339 (efficientList$default$2!146 (c!724708 x!738013))) lt!1511729)))

(assert (= (and d!1257263 c!725138) b!4265932))

(assert (= (and d!1257263 (not c!725138)) b!4265933))

(assert (= (and d!1257263 res!1753016) b!4265934))

(assert (= (and b!4265934 res!1753015) b!4265935))

(declare-fun m!4857033 () Bool)

(assert (=> b!4265934 m!4857033))

(declare-fun m!4857035 () Bool)

(assert (=> b!4265934 m!4857035))

(assert (=> b!4265934 m!4855135))

(assert (=> b!4265934 m!4855239))

(assert (=> b!4265933 m!4855135))

(declare-fun m!4857037 () Bool)

(assert (=> b!4265933 m!4857037))

(declare-fun m!4857039 () Bool)

(assert (=> d!1257263 m!4857039))

(declare-fun m!4857041 () Bool)

(assert (=> d!1257263 m!4857041))

(assert (=> d!1257263 m!4855135))

(assert (=> d!1257263 m!4855247))

(assert (=> bm!294041 d!1257263))

(declare-fun d!1257265 () Bool)

(declare-fun res!1753022 () Bool)

(declare-fun e!2648715 () Bool)

(assert (=> d!1257265 (=> res!1753022 e!2648715)))

(assert (=> d!1257265 (= res!1753022 (not (is-Node!14250 (right!35370 (c!724708 x!738013)))))))

(assert (=> d!1257265 (= (isBalanced!3809 (right!35370 (c!724708 x!738013))) e!2648715)))

(declare-fun b!4265936 () Bool)

(declare-fun e!2648716 () Bool)

(assert (=> b!4265936 (= e!2648715 e!2648716)))

(declare-fun res!1753018 () Bool)

(assert (=> b!4265936 (=> (not res!1753018) (not e!2648716))))

(assert (=> b!4265936 (= res!1753018 (<= (- 1) (- (height!1875 (left!35040 (right!35370 (c!724708 x!738013)))) (height!1875 (right!35370 (right!35370 (c!724708 x!738013)))))))))

(declare-fun b!4265937 () Bool)

(declare-fun res!1753019 () Bool)

(assert (=> b!4265937 (=> (not res!1753019) (not e!2648716))))

(assert (=> b!4265937 (= res!1753019 (isBalanced!3809 (left!35040 (right!35370 (c!724708 x!738013)))))))

(declare-fun b!4265938 () Bool)

(declare-fun res!1753021 () Bool)

(assert (=> b!4265938 (=> (not res!1753021) (not e!2648716))))

(assert (=> b!4265938 (= res!1753021 (<= (- (height!1875 (left!35040 (right!35370 (c!724708 x!738013)))) (height!1875 (right!35370 (right!35370 (c!724708 x!738013))))) 1))))

(declare-fun b!4265939 () Bool)

(assert (=> b!4265939 (= e!2648716 (not (isEmpty!27994 (right!35370 (right!35370 (c!724708 x!738013))))))))

(declare-fun b!4265940 () Bool)

(declare-fun res!1753020 () Bool)

(assert (=> b!4265940 (=> (not res!1753020) (not e!2648716))))

(assert (=> b!4265940 (= res!1753020 (isBalanced!3809 (right!35370 (right!35370 (c!724708 x!738013)))))))

(declare-fun b!4265941 () Bool)

(declare-fun res!1753017 () Bool)

(assert (=> b!4265941 (=> (not res!1753017) (not e!2648716))))

(assert (=> b!4265941 (= res!1753017 (not (isEmpty!27994 (left!35040 (right!35370 (c!724708 x!738013))))))))

(assert (= (and d!1257265 (not res!1753022)) b!4265936))

(assert (= (and b!4265936 res!1753018) b!4265938))

(assert (= (and b!4265938 res!1753021) b!4265937))

(assert (= (and b!4265937 res!1753019) b!4265940))

(assert (= (and b!4265940 res!1753020) b!4265941))

(assert (= (and b!4265941 res!1753017) b!4265939))

(declare-fun m!4857043 () Bool)

(assert (=> b!4265936 m!4857043))

(declare-fun m!4857045 () Bool)

(assert (=> b!4265936 m!4857045))

(declare-fun m!4857047 () Bool)

(assert (=> b!4265940 m!4857047))

(declare-fun m!4857049 () Bool)

(assert (=> b!4265937 m!4857049))

(declare-fun m!4857051 () Bool)

(assert (=> b!4265939 m!4857051))

(assert (=> b!4265938 m!4857043))

(assert (=> b!4265938 m!4857045))

(declare-fun m!4857053 () Bool)

(assert (=> b!4265941 m!4857053))

(assert (=> b!4265198 d!1257265))

(declare-fun b!4265945 () Bool)

(declare-fun lt!1511730 () List!47392)

(declare-fun e!2648717 () Bool)

(assert (=> b!4265945 (= e!2648717 (or (not (= (efficientList$default$2!146 (c!724708 x!738013)) Nil!47268)) (= lt!1511730 (t!353461 lt!1511502))))))

(declare-fun b!4265944 () Bool)

(declare-fun res!1753023 () Bool)

(assert (=> b!4265944 (=> (not res!1753023) (not e!2648717))))

(assert (=> b!4265944 (= res!1753023 (= (size!34622 lt!1511730) (+ (size!34622 (t!353461 lt!1511502)) (size!34622 (efficientList$default$2!146 (c!724708 x!738013))))))))

(declare-fun b!4265943 () Bool)

(declare-fun e!2648718 () List!47392)

(assert (=> b!4265943 (= e!2648718 (Cons!47268 (h!52688 (t!353461 lt!1511502)) (++!12049 (t!353461 (t!353461 lt!1511502)) (efficientList$default$2!146 (c!724708 x!738013)))))))

(declare-fun b!4265942 () Bool)

(assert (=> b!4265942 (= e!2648718 (efficientList$default$2!146 (c!724708 x!738013)))))

(declare-fun d!1257267 () Bool)

(assert (=> d!1257267 e!2648717))

(declare-fun res!1753024 () Bool)

(assert (=> d!1257267 (=> (not res!1753024) (not e!2648717))))

(assert (=> d!1257267 (= res!1753024 (= (content!7469 lt!1511730) (set.union (content!7469 (t!353461 lt!1511502)) (content!7469 (efficientList$default$2!146 (c!724708 x!738013))))))))

(assert (=> d!1257267 (= lt!1511730 e!2648718)))

(declare-fun c!725139 () Bool)

(assert (=> d!1257267 (= c!725139 (is-Nil!47268 (t!353461 lt!1511502)))))

(assert (=> d!1257267 (= (++!12049 (t!353461 lt!1511502) (efficientList$default$2!146 (c!724708 x!738013))) lt!1511730)))

(assert (= (and d!1257267 c!725139) b!4265942))

(assert (= (and d!1257267 (not c!725139)) b!4265943))

(assert (= (and d!1257267 res!1753024) b!4265944))

(assert (= (and b!4265944 res!1753023) b!4265945))

(declare-fun m!4857055 () Bool)

(assert (=> b!4265944 m!4857055))

(assert (=> b!4265944 m!4856451))

(assert (=> b!4265944 m!4855135))

(assert (=> b!4265944 m!4855239))

(assert (=> b!4265943 m!4855135))

(declare-fun m!4857057 () Bool)

(assert (=> b!4265943 m!4857057))

(declare-fun m!4857059 () Bool)

(assert (=> d!1257267 m!4857059))

(assert (=> d!1257267 m!4855985))

(assert (=> d!1257267 m!4855135))

(assert (=> d!1257267 m!4855247))

(assert (=> b!4265436 d!1257267))

(declare-fun d!1257269 () Bool)

(assert (=> d!1257269 (= (max!0 (height!1875 (left!35040 (c!724708 x!738013))) (height!1875 (right!35370 (c!724708 x!738013)))) (ite (< (height!1875 (left!35040 (c!724708 x!738013))) (height!1875 (right!35370 (c!724708 x!738013)))) (height!1875 (right!35370 (c!724708 x!738013))) (height!1875 (left!35040 (c!724708 x!738013)))))))

(assert (=> b!4265174 d!1257269))

(declare-fun d!1257271 () Bool)

(assert (=> d!1257271 (= (height!1875 (left!35040 (c!724708 x!738013))) (ite (is-Empty!14250 (left!35040 (c!724708 x!738013))) 0 (ite (is-Leaf!22031 (left!35040 (c!724708 x!738013))) 1 (cheight!14461 (left!35040 (c!724708 x!738013))))))))

(assert (=> b!4265174 d!1257271))

(declare-fun d!1257273 () Bool)

(assert (=> d!1257273 (= (height!1875 (right!35370 (c!724708 x!738013))) (ite (is-Empty!14250 (right!35370 (c!724708 x!738013))) 0 (ite (is-Leaf!22031 (right!35370 (c!724708 x!738013))) 1 (cheight!14461 (right!35370 (c!724708 x!738013))))))))

(assert (=> b!4265174 d!1257273))

(declare-fun d!1257275 () Bool)

(declare-fun lt!1511731 () Int)

(assert (=> d!1257275 (>= lt!1511731 0)))

(declare-fun e!2648719 () Int)

(assert (=> d!1257275 (= lt!1511731 e!2648719)))

(declare-fun c!725140 () Bool)

(assert (=> d!1257275 (= c!725140 (is-Nil!47268 lt!1511551))))

(assert (=> d!1257275 (= (size!34622 lt!1511551) lt!1511731)))

(declare-fun b!4265946 () Bool)

(assert (=> b!4265946 (= e!2648719 0)))

(declare-fun b!4265947 () Bool)

(assert (=> b!4265947 (= e!2648719 (+ 1 (size!34622 (t!353461 lt!1511551))))))

(assert (= (and d!1257275 c!725140) b!4265946))

(assert (= (and d!1257275 (not c!725140)) b!4265947))

(declare-fun m!4857061 () Bool)

(assert (=> b!4265947 m!4857061))

(assert (=> b!4265159 d!1257275))

(declare-fun d!1257277 () Bool)

(declare-fun lt!1511732 () Int)

(assert (=> d!1257277 (>= lt!1511732 0)))

(declare-fun e!2648720 () Int)

(assert (=> d!1257277 (= lt!1511732 e!2648720)))

(declare-fun c!725141 () Bool)

(assert (=> d!1257277 (= c!725141 (is-Nil!47268 e!2648211))))

(assert (=> d!1257277 (= (size!34622 e!2648211) lt!1511732)))

(declare-fun b!4265948 () Bool)

(assert (=> b!4265948 (= e!2648720 0)))

(declare-fun b!4265949 () Bool)

(assert (=> b!4265949 (= e!2648720 (+ 1 (size!34622 (t!353461 e!2648211))))))

(assert (= (and d!1257277 c!725141) b!4265948))

(assert (= (and d!1257277 (not c!725141)) b!4265949))

(declare-fun m!4857063 () Bool)

(assert (=> b!4265949 m!4857063))

(assert (=> b!4265159 d!1257277))

(assert (=> b!4265159 d!1256661))

(declare-fun d!1257279 () Bool)

(declare-fun lt!1511733 () Int)

(assert (=> d!1257279 (>= lt!1511733 0)))

(declare-fun e!2648721 () Int)

(assert (=> d!1257279 (= lt!1511733 e!2648721)))

(declare-fun c!725142 () Bool)

(assert (=> d!1257279 (= c!725142 (is-Nil!47268 (t!353461 lt!1511528)))))

(assert (=> d!1257279 (= (size!34622 (t!353461 lt!1511528)) lt!1511733)))

(declare-fun b!4265950 () Bool)

(assert (=> b!4265950 (= e!2648721 0)))

(declare-fun b!4265951 () Bool)

(assert (=> b!4265951 (= e!2648721 (+ 1 (size!34622 (t!353461 (t!353461 lt!1511528)))))))

(assert (= (and d!1257279 c!725142) b!4265950))

(assert (= (and d!1257279 (not c!725142)) b!4265951))

(declare-fun m!4857065 () Bool)

(assert (=> b!4265951 m!4857065))

(assert (=> b!4265442 d!1257279))

(declare-fun d!1257281 () Bool)

(assert (=> d!1257281 (= (seqFromList!5846 (value!248406 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))) (fromListB!2657 (value!248406 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))

(declare-fun bs!599311 () Bool)

(assert (= bs!599311 d!1257281))

(declare-fun m!4857067 () Bool)

(assert (=> bs!599311 m!4857067))

(assert (=> b!4265224 d!1257281))

(declare-fun e!2648722 () Bool)

(declare-fun lt!1511734 () List!47392)

(declare-fun b!4265955 () Bool)

(assert (=> b!4265955 (= e!2648722 (or (not (= (++!12049 lt!1511502 (efficientList$default$2!146 (c!724708 x!738013))) Nil!47268)) (= lt!1511734 (t!353461 lt!1511505))))))

(declare-fun b!4265954 () Bool)

(declare-fun res!1753025 () Bool)

(assert (=> b!4265954 (=> (not res!1753025) (not e!2648722))))

(assert (=> b!4265954 (= res!1753025 (= (size!34622 lt!1511734) (+ (size!34622 (t!353461 lt!1511505)) (size!34622 (++!12049 lt!1511502 (efficientList$default$2!146 (c!724708 x!738013)))))))))

(declare-fun e!2648723 () List!47392)

(declare-fun b!4265953 () Bool)

(assert (=> b!4265953 (= e!2648723 (Cons!47268 (h!52688 (t!353461 lt!1511505)) (++!12049 (t!353461 (t!353461 lt!1511505)) (++!12049 lt!1511502 (efficientList$default$2!146 (c!724708 x!738013))))))))

(declare-fun b!4265952 () Bool)

(assert (=> b!4265952 (= e!2648723 (++!12049 lt!1511502 (efficientList$default$2!146 (c!724708 x!738013))))))

(declare-fun d!1257283 () Bool)

(assert (=> d!1257283 e!2648722))

(declare-fun res!1753026 () Bool)

(assert (=> d!1257283 (=> (not res!1753026) (not e!2648722))))

(assert (=> d!1257283 (= res!1753026 (= (content!7469 lt!1511734) (set.union (content!7469 (t!353461 lt!1511505)) (content!7469 (++!12049 lt!1511502 (efficientList$default$2!146 (c!724708 x!738013)))))))))

(assert (=> d!1257283 (= lt!1511734 e!2648723)))

(declare-fun c!725143 () Bool)

(assert (=> d!1257283 (= c!725143 (is-Nil!47268 (t!353461 lt!1511505)))))

(assert (=> d!1257283 (= (++!12049 (t!353461 lt!1511505) (++!12049 lt!1511502 (efficientList$default$2!146 (c!724708 x!738013)))) lt!1511734)))

(assert (= (and d!1257283 c!725143) b!4265952))

(assert (= (and d!1257283 (not c!725143)) b!4265953))

(assert (= (and d!1257283 res!1753026) b!4265954))

(assert (= (and b!4265954 res!1753025) b!4265955))

(declare-fun m!4857069 () Bool)

(assert (=> b!4265954 m!4857069))

(assert (=> b!4265954 m!4856373))

(assert (=> b!4265954 m!4855657))

(assert (=> b!4265954 m!4855989))

(assert (=> b!4265953 m!4855657))

(declare-fun m!4857071 () Bool)

(assert (=> b!4265953 m!4857071))

(declare-fun m!4857073 () Bool)

(assert (=> d!1257283 m!4857073))

(assert (=> d!1257283 m!4855981))

(assert (=> d!1257283 m!4855657))

(assert (=> d!1257283 m!4855995))

(assert (=> b!4265432 d!1257283))

(declare-fun d!1257285 () Bool)

(declare-fun c!725144 () Bool)

(assert (=> d!1257285 (= c!725144 (is-Nil!47268 lt!1511658))))

(declare-fun e!2648724 () (Set (_ BitVec 16)))

(assert (=> d!1257285 (= (content!7469 lt!1511658) e!2648724)))

(declare-fun b!4265956 () Bool)

(assert (=> b!4265956 (= e!2648724 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265957 () Bool)

(assert (=> b!4265957 (= e!2648724 (set.union (set.insert (h!52688 lt!1511658) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 lt!1511658))))))

(assert (= (and d!1257285 c!725144) b!4265956))

(assert (= (and d!1257285 (not c!725144)) b!4265957))

(declare-fun m!4857075 () Bool)

(assert (=> b!4265957 m!4857075))

(declare-fun m!4857077 () Bool)

(assert (=> b!4265957 m!4857077))

(assert (=> d!1257071 d!1257285))

(declare-fun d!1257287 () Bool)

(declare-fun c!725145 () Bool)

(assert (=> d!1257287 (= c!725145 (is-Nil!47268 (list!17075 (left!35040 (right!35370 (c!724708 x!738013))))))))

(declare-fun e!2648725 () (Set (_ BitVec 16)))

(assert (=> d!1257287 (= (content!7469 (list!17075 (left!35040 (right!35370 (c!724708 x!738013))))) e!2648725)))

(declare-fun b!4265958 () Bool)

(assert (=> b!4265958 (= e!2648725 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265959 () Bool)

(assert (=> b!4265959 (= e!2648725 (set.union (set.insert (h!52688 (list!17075 (left!35040 (right!35370 (c!724708 x!738013))))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (list!17075 (left!35040 (right!35370 (c!724708 x!738013))))))))))

(assert (= (and d!1257287 c!725145) b!4265958))

(assert (= (and d!1257287 (not c!725145)) b!4265959))

(declare-fun m!4857079 () Bool)

(assert (=> b!4265959 m!4857079))

(declare-fun m!4857081 () Bool)

(assert (=> b!4265959 m!4857081))

(assert (=> d!1257071 d!1257287))

(declare-fun d!1257289 () Bool)

(declare-fun c!725146 () Bool)

(assert (=> d!1257289 (= c!725146 (is-Nil!47268 (list!17075 (right!35370 (right!35370 (c!724708 x!738013))))))))

(declare-fun e!2648726 () (Set (_ BitVec 16)))

(assert (=> d!1257289 (= (content!7469 (list!17075 (right!35370 (right!35370 (c!724708 x!738013))))) e!2648726)))

(declare-fun b!4265960 () Bool)

(assert (=> b!4265960 (= e!2648726 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4265961 () Bool)

(assert (=> b!4265961 (= e!2648726 (set.union (set.insert (h!52688 (list!17075 (right!35370 (right!35370 (c!724708 x!738013))))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (list!17075 (right!35370 (right!35370 (c!724708 x!738013))))))))))

(assert (= (and d!1257289 c!725146) b!4265960))

(assert (= (and d!1257289 (not c!725146)) b!4265961))

(declare-fun m!4857083 () Bool)

(assert (=> b!4265961 m!4857083))

(declare-fun m!4857085 () Bool)

(assert (=> b!4265961 m!4857085))

(assert (=> d!1257071 d!1257289))

(declare-fun d!1257291 () Bool)

(declare-fun lt!1511735 () Int)

(assert (=> d!1257291 (>= lt!1511735 0)))

(declare-fun e!2648727 () Int)

(assert (=> d!1257291 (= lt!1511735 e!2648727)))

(declare-fun c!725147 () Bool)

(assert (=> d!1257291 (= c!725147 (is-Nil!47268 (t!353461 (list!17075 (left!35040 (c!724708 x!738013))))))))

(assert (=> d!1257291 (= (size!34622 (t!353461 (list!17075 (left!35040 (c!724708 x!738013))))) lt!1511735)))

(declare-fun b!4265962 () Bool)

(assert (=> b!4265962 (= e!2648727 0)))

(declare-fun b!4265963 () Bool)

(assert (=> b!4265963 (= e!2648727 (+ 1 (size!34622 (t!353461 (t!353461 (list!17075 (left!35040 (c!724708 x!738013))))))))))

(assert (= (and d!1257291 c!725147) b!4265962))

(assert (= (and d!1257291 (not c!725147)) b!4265963))

(assert (=> b!4265963 m!4857015))

(assert (=> b!4265444 d!1257291))

(assert (=> b!4265232 d!1256591))

(declare-fun d!1257293 () Bool)

(declare-fun res!1753027 () Bool)

(declare-fun e!2648728 () Bool)

(assert (=> d!1257293 (=> (not res!1753027) (not e!2648728))))

(assert (=> d!1257293 (= res!1753027 (<= (size!34622 (list!17077 (xs!17556 (left!35040 (c!724708 x!738013))))) 512))))

(assert (=> d!1257293 (= (inv!62195 (left!35040 (c!724708 x!738013))) e!2648728)))

(declare-fun b!4265964 () Bool)

(declare-fun res!1753028 () Bool)

(assert (=> b!4265964 (=> (not res!1753028) (not e!2648728))))

(assert (=> b!4265964 (= res!1753028 (= (csize!28731 (left!35040 (c!724708 x!738013))) (size!34622 (list!17077 (xs!17556 (left!35040 (c!724708 x!738013)))))))))

(declare-fun b!4265965 () Bool)

(assert (=> b!4265965 (= e!2648728 (and (> (csize!28731 (left!35040 (c!724708 x!738013))) 0) (<= (csize!28731 (left!35040 (c!724708 x!738013))) 512)))))

(assert (= (and d!1257293 res!1753027) b!4265964))

(assert (= (and b!4265964 res!1753028) b!4265965))

(assert (=> d!1257293 m!4855307))

(assert (=> d!1257293 m!4855307))

(declare-fun m!4857087 () Bool)

(assert (=> d!1257293 m!4857087))

(assert (=> b!4265964 m!4855307))

(assert (=> b!4265964 m!4855307))

(assert (=> b!4265964 m!4857087))

(assert (=> b!4265131 d!1257293))

(declare-fun d!1257295 () Bool)

(declare-fun c!725148 () Bool)

(assert (=> d!1257295 (= c!725148 (is-Node!14250 (left!35040 res!1752881)))))

(declare-fun e!2648729 () Bool)

(assert (=> d!1257295 (= (inv!62190 (left!35040 res!1752881)) e!2648729)))

(declare-fun b!4265966 () Bool)

(assert (=> b!4265966 (= e!2648729 (inv!62194 (left!35040 res!1752881)))))

(declare-fun b!4265967 () Bool)

(declare-fun e!2648730 () Bool)

(assert (=> b!4265967 (= e!2648729 e!2648730)))

(declare-fun res!1753029 () Bool)

(assert (=> b!4265967 (= res!1753029 (not (is-Leaf!22031 (left!35040 res!1752881))))))

(assert (=> b!4265967 (=> res!1753029 e!2648730)))

(declare-fun b!4265968 () Bool)

(assert (=> b!4265968 (= e!2648730 (inv!62195 (left!35040 res!1752881)))))

(assert (= (and d!1257295 c!725148) b!4265966))

(assert (= (and d!1257295 (not c!725148)) b!4265967))

(assert (= (and b!4265967 (not res!1753029)) b!4265968))

(declare-fun m!4857089 () Bool)

(assert (=> b!4265966 m!4857089))

(declare-fun m!4857091 () Bool)

(assert (=> b!4265968 m!4857091))

(assert (=> b!4265387 d!1257295))

(declare-fun d!1257297 () Bool)

(declare-fun c!725149 () Bool)

(assert (=> d!1257297 (= c!725149 (is-Node!14250 (right!35370 res!1752881)))))

(declare-fun e!2648731 () Bool)

(assert (=> d!1257297 (= (inv!62190 (right!35370 res!1752881)) e!2648731)))

(declare-fun b!4265969 () Bool)

(assert (=> b!4265969 (= e!2648731 (inv!62194 (right!35370 res!1752881)))))

(declare-fun b!4265970 () Bool)

(declare-fun e!2648732 () Bool)

(assert (=> b!4265970 (= e!2648731 e!2648732)))

(declare-fun res!1753030 () Bool)

(assert (=> b!4265970 (= res!1753030 (not (is-Leaf!22031 (right!35370 res!1752881))))))

(assert (=> b!4265970 (=> res!1753030 e!2648732)))

(declare-fun b!4265971 () Bool)

(assert (=> b!4265971 (= e!2648732 (inv!62195 (right!35370 res!1752881)))))

(assert (= (and d!1257297 c!725149) b!4265969))

(assert (= (and d!1257297 (not c!725149)) b!4265970))

(assert (= (and b!4265970 (not res!1753030)) b!4265971))

(declare-fun m!4857093 () Bool)

(assert (=> b!4265969 m!4857093))

(declare-fun m!4857095 () Bool)

(assert (=> b!4265971 m!4857095))

(assert (=> b!4265387 d!1257297))

(declare-fun b!4265975 () Bool)

(declare-fun e!2648733 () Bool)

(declare-fun lt!1511736 () List!47392)

(assert (=> b!4265975 (= e!2648733 (or (not (= (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013))) Nil!47268)) (= lt!1511736 (t!353461 (list!17075 (left!35040 (c!724708 x!738013)))))))))

(declare-fun b!4265974 () Bool)

(declare-fun res!1753031 () Bool)

(assert (=> b!4265974 (=> (not res!1753031) (not e!2648733))))

(assert (=> b!4265974 (= res!1753031 (= (size!34622 lt!1511736) (+ (size!34622 (t!353461 (list!17075 (left!35040 (c!724708 x!738013))))) (size!34622 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))))))))

(declare-fun b!4265973 () Bool)

(declare-fun e!2648734 () List!47392)

(assert (=> b!4265973 (= e!2648734 (Cons!47268 (h!52688 (t!353461 (list!17075 (left!35040 (c!724708 x!738013))))) (++!12049 (t!353461 (t!353461 (list!17075 (left!35040 (c!724708 x!738013))))) (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013))))))))

(declare-fun b!4265972 () Bool)

(assert (=> b!4265972 (= e!2648734 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013))))))

(declare-fun d!1257299 () Bool)

(assert (=> d!1257299 e!2648733))

(declare-fun res!1753032 () Bool)

(assert (=> d!1257299 (=> (not res!1753032) (not e!2648733))))

(assert (=> d!1257299 (= res!1753032 (= (content!7469 lt!1511736) (set.union (content!7469 (t!353461 (list!17075 (left!35040 (c!724708 x!738013))))) (content!7469 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))))))))

(assert (=> d!1257299 (= lt!1511736 e!2648734)))

(declare-fun c!725150 () Bool)

(assert (=> d!1257299 (= c!725150 (is-Nil!47268 (t!353461 (list!17075 (left!35040 (c!724708 x!738013))))))))

(assert (=> d!1257299 (= (++!12049 (t!353461 (list!17075 (left!35040 (c!724708 x!738013)))) (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))) lt!1511736)))

(assert (= (and d!1257299 c!725150) b!4265972))

(assert (= (and d!1257299 (not c!725150)) b!4265973))

(assert (= (and d!1257299 res!1753032) b!4265974))

(assert (= (and b!4265974 res!1753031) b!4265975))

(declare-fun m!4857097 () Bool)

(assert (=> b!4265974 m!4857097))

(assert (=> b!4265974 m!4855959))

(assert (=> b!4265974 m!4855169))

(assert (=> b!4265974 m!4855947))

(assert (=> b!4265973 m!4855169))

(declare-fun m!4857099 () Bool)

(assert (=> b!4265973 m!4857099))

(declare-fun m!4857101 () Bool)

(assert (=> d!1257299 m!4857101))

(assert (=> d!1257299 m!4855555))

(assert (=> d!1257299 m!4855169))

(assert (=> d!1257299 m!4855953))

(assert (=> b!4265414 d!1257299))

(declare-fun d!1257301 () Bool)

(declare-fun lt!1511737 () Int)

(assert (=> d!1257301 (>= lt!1511737 0)))

(declare-fun e!2648735 () Int)

(assert (=> d!1257301 (= lt!1511737 e!2648735)))

(declare-fun c!725151 () Bool)

(assert (=> d!1257301 (= c!725151 (is-Nil!47268 (list!17077 (xs!17556 (c!724708 x!738013)))))))

(assert (=> d!1257301 (= (size!34622 (list!17077 (xs!17556 (c!724708 x!738013)))) lt!1511737)))

(declare-fun b!4265976 () Bool)

(assert (=> b!4265976 (= e!2648735 0)))

(declare-fun b!4265977 () Bool)

(assert (=> b!4265977 (= e!2648735 (+ 1 (size!34622 (t!353461 (list!17077 (xs!17556 (c!724708 x!738013)))))))))

(assert (= (and d!1257301 c!725151) b!4265976))

(assert (= (and d!1257301 (not c!725151)) b!4265977))

(declare-fun m!4857103 () Bool)

(assert (=> b!4265977 m!4857103))

(assert (=> d!1256711 d!1257301))

(assert (=> d!1256711 d!1256601))

(declare-fun b!4265981 () Bool)

(declare-fun e!2648736 () Bool)

(declare-fun lt!1511738 () List!47392)

(assert (=> b!4265981 (= e!2648736 (or (not (= (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))) Nil!47268)) (= lt!1511738 (t!353461 (t!353461 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))))

(declare-fun b!4265980 () Bool)

(declare-fun res!1753033 () Bool)

(assert (=> b!4265980 (=> (not res!1753033) (not e!2648736))))

(assert (=> b!4265980 (= res!1753033 (= (size!34622 lt!1511738) (+ (size!34622 (t!353461 (t!353461 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))) (size!34622 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))))

(declare-fun b!4265979 () Bool)

(declare-fun e!2648737 () List!47392)

(assert (=> b!4265979 (= e!2648737 (Cons!47268 (h!52688 (t!353461 (t!353461 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))) (++!12049 (t!353461 (t!353461 (t!353461 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))) (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(declare-fun b!4265978 () Bool)

(assert (=> b!4265978 (= e!2648737 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))

(declare-fun d!1257303 () Bool)

(assert (=> d!1257303 e!2648736))

(declare-fun res!1753034 () Bool)

(assert (=> d!1257303 (=> (not res!1753034) (not e!2648736))))

(assert (=> d!1257303 (= res!1753034 (= (content!7469 lt!1511738) (set.union (content!7469 (t!353461 (t!353461 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))) (content!7469 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))))

(assert (=> d!1257303 (= lt!1511738 e!2648737)))

(declare-fun c!725152 () Bool)

(assert (=> d!1257303 (= c!725152 (is-Nil!47268 (t!353461 (t!353461 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))))

(assert (=> d!1257303 (= (++!12049 (t!353461 (t!353461 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))) lt!1511738)))

(assert (= (and d!1257303 c!725152) b!4265978))

(assert (= (and d!1257303 (not c!725152)) b!4265979))

(assert (= (and d!1257303 res!1753034) b!4265980))

(assert (= (and b!4265980 res!1753033) b!4265981))

(declare-fun m!4857105 () Bool)

(assert (=> b!4265980 m!4857105))

(assert (=> b!4265980 m!4856937))

(assert (=> b!4265980 m!4855143))

(assert (=> b!4265980 m!4855333))

(assert (=> b!4265979 m!4855143))

(declare-fun m!4857107 () Bool)

(assert (=> b!4265979 m!4857107))

(declare-fun m!4857109 () Bool)

(assert (=> d!1257303 m!4857109))

(assert (=> d!1257303 m!4856345))

(assert (=> d!1257303 m!4855143))

(assert (=> d!1257303 m!4855341))

(assert (=> b!4265456 d!1257303))

(declare-fun d!1257305 () Bool)

(assert (=> d!1257305 (= (++!12049 (++!12049 lt!1511558 lt!1511555) (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))) (++!12049 lt!1511558 (++!12049 lt!1511555 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013))))))))

(declare-fun lt!1511739 () Unit!66151)

(assert (=> d!1257305 (= lt!1511739 (choose!25997 lt!1511558 lt!1511555 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))))))

(assert (=> d!1257305 (= (lemmaConcatAssociativity!2693 lt!1511558 lt!1511555 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))) lt!1511739)))

(declare-fun bs!599312 () Bool)

(assert (= bs!599312 d!1257305))

(assert (=> bs!599312 m!4855593))

(assert (=> bs!599312 m!4855593))

(assert (=> bs!599312 m!4855169))

(assert (=> bs!599312 m!4855603))

(assert (=> bs!599312 m!4855169))

(declare-fun m!4857111 () Bool)

(assert (=> bs!599312 m!4857111))

(assert (=> bs!599312 m!4855169))

(declare-fun m!4857113 () Bool)

(assert (=> bs!599312 m!4857113))

(assert (=> bs!599312 m!4857111))

(declare-fun m!4857115 () Bool)

(assert (=> bs!599312 m!4857115))

(assert (=> b!4265205 d!1257305))

(assert (=> b!4265205 d!1257051))

(declare-fun b!4265982 () Bool)

(declare-fun e!2648738 () List!47392)

(declare-fun lt!1511740 () List!47392)

(assert (=> b!4265982 (= e!2648738 lt!1511740)))

(declare-fun d!1257307 () Bool)

(declare-fun lt!1511744 () List!47392)

(assert (=> d!1257307 (= lt!1511744 (++!12049 (list!17075 (left!35040 (left!35040 (c!724708 x!738013)))) (efficientList!419 (right!35370 (left!35040 (c!724708 x!738013))) (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013))))))))

(declare-fun e!2648739 () List!47392)

(assert (=> d!1257307 (= lt!1511744 e!2648739)))

(declare-fun c!725154 () Bool)

(assert (=> d!1257307 (= c!725154 (is-Empty!14250 (left!35040 (left!35040 (c!724708 x!738013)))))))

(assert (=> d!1257307 (= (efficientList!419 (left!35040 (left!35040 (c!724708 x!738013))) (efficientList!419 (right!35370 (left!35040 (c!724708 x!738013))) (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013))))) lt!1511744)))

(declare-fun b!4265983 () Bool)

(declare-fun e!2648740 () List!47392)

(declare-fun call!294051 () List!47392)

(assert (=> b!4265983 (= e!2648740 call!294051)))

(declare-fun bm!294046 () Bool)

(declare-fun c!725153 () Bool)

(declare-fun c!725155 () Bool)

(assert (=> bm!294046 (= c!725153 c!725155)))

(assert (=> bm!294046 (= call!294051 (++!12049 e!2648738 (efficientList!419 (right!35370 (left!35040 (c!724708 x!738013))) (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013))))))))

(declare-fun b!4265984 () Bool)

(assert (=> b!4265984 (= e!2648739 e!2648740)))

(assert (=> b!4265984 (= c!725155 (is-Leaf!22031 (left!35040 (left!35040 (c!724708 x!738013)))))))

(declare-fun b!4265985 () Bool)

(assert (=> b!4265985 (= e!2648738 (efficientList!421 (xs!17556 (left!35040 (left!35040 (c!724708 x!738013))))))))

(declare-fun b!4265986 () Bool)

(assert (=> b!4265986 (= e!2648739 (efficientList!419 (right!35370 (left!35040 (c!724708 x!738013))) (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))))))

(declare-fun b!4265987 () Bool)

(declare-fun lt!1511741 () Unit!66151)

(declare-fun lt!1511742 () Unit!66151)

(assert (=> b!4265987 (= lt!1511741 lt!1511742)))

(declare-fun lt!1511743 () List!47392)

(assert (=> b!4265987 (= (++!12049 (++!12049 lt!1511743 lt!1511740) (efficientList!419 (right!35370 (left!35040 (c!724708 x!738013))) (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013))))) (++!12049 lt!1511743 call!294051))))

(assert (=> b!4265987 (= lt!1511742 (lemmaConcatAssociativity!2693 lt!1511743 lt!1511740 (efficientList!419 (right!35370 (left!35040 (c!724708 x!738013))) (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013))))))))

(assert (=> b!4265987 (= lt!1511740 (list!17075 (right!35370 (left!35040 (left!35040 (c!724708 x!738013))))))))

(assert (=> b!4265987 (= lt!1511743 (list!17075 (left!35040 (left!35040 (left!35040 (c!724708 x!738013))))))))

(assert (=> b!4265987 (= e!2648740 (efficientList!419 (left!35040 (left!35040 (left!35040 (c!724708 x!738013)))) (efficientList!419 (right!35370 (left!35040 (left!35040 (c!724708 x!738013)))) (efficientList!419 (right!35370 (left!35040 (c!724708 x!738013))) (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))))))))

(assert (= (and d!1257307 c!725154) b!4265986))

(assert (= (and d!1257307 (not c!725154)) b!4265984))

(assert (= (and b!4265984 c!725155) b!4265983))

(assert (= (and b!4265984 (not c!725155)) b!4265987))

(assert (= (or b!4265983 b!4265987) bm!294046))

(assert (= (and bm!294046 c!725153) b!4265985))

(assert (= (and bm!294046 (not c!725153)) b!4265982))

(assert (=> d!1257307 m!4855309))

(assert (=> d!1257307 m!4855309))

(assert (=> d!1257307 m!4855595))

(declare-fun m!4857117 () Bool)

(assert (=> d!1257307 m!4857117))

(assert (=> bm!294046 m!4855595))

(declare-fun m!4857119 () Bool)

(assert (=> bm!294046 m!4857119))

(declare-fun m!4857121 () Bool)

(assert (=> b!4265985 m!4857121))

(declare-fun m!4857123 () Bool)

(assert (=> b!4265987 m!4857123))

(assert (=> b!4265987 m!4856489))

(declare-fun m!4857125 () Bool)

(assert (=> b!4265987 m!4857125))

(declare-fun m!4857127 () Bool)

(assert (=> b!4265987 m!4857127))

(assert (=> b!4265987 m!4855595))

(declare-fun m!4857129 () Bool)

(assert (=> b!4265987 m!4857129))

(declare-fun m!4857131 () Bool)

(assert (=> b!4265987 m!4857131))

(assert (=> b!4265987 m!4857123))

(assert (=> b!4265987 m!4855595))

(declare-fun m!4857133 () Bool)

(assert (=> b!4265987 m!4857133))

(assert (=> b!4265987 m!4855595))

(assert (=> b!4265987 m!4857125))

(assert (=> b!4265987 m!4856487))

(assert (=> b!4265205 d!1257307))

(declare-fun lt!1511745 () List!47392)

(declare-fun e!2648741 () Bool)

(declare-fun b!4265991 () Bool)

(assert (=> b!4265991 (= e!2648741 (or (not (= call!294045 Nil!47268)) (= lt!1511745 lt!1511558)))))

(declare-fun b!4265990 () Bool)

(declare-fun res!1753035 () Bool)

(assert (=> b!4265990 (=> (not res!1753035) (not e!2648741))))

(assert (=> b!4265990 (= res!1753035 (= (size!34622 lt!1511745) (+ (size!34622 lt!1511558) (size!34622 call!294045))))))

(declare-fun b!4265989 () Bool)

(declare-fun e!2648742 () List!47392)

(assert (=> b!4265989 (= e!2648742 (Cons!47268 (h!52688 lt!1511558) (++!12049 (t!353461 lt!1511558) call!294045)))))

(declare-fun b!4265988 () Bool)

(assert (=> b!4265988 (= e!2648742 call!294045)))

(declare-fun d!1257309 () Bool)

(assert (=> d!1257309 e!2648741))

(declare-fun res!1753036 () Bool)

(assert (=> d!1257309 (=> (not res!1753036) (not e!2648741))))

(assert (=> d!1257309 (= res!1753036 (= (content!7469 lt!1511745) (set.union (content!7469 lt!1511558) (content!7469 call!294045))))))

(assert (=> d!1257309 (= lt!1511745 e!2648742)))

(declare-fun c!725156 () Bool)

(assert (=> d!1257309 (= c!725156 (is-Nil!47268 lt!1511558))))

(assert (=> d!1257309 (= (++!12049 lt!1511558 call!294045) lt!1511745)))

(assert (= (and d!1257309 c!725156) b!4265988))

(assert (= (and d!1257309 (not c!725156)) b!4265989))

(assert (= (and d!1257309 res!1753036) b!4265990))

(assert (= (and b!4265990 res!1753035) b!4265991))

(declare-fun m!4857135 () Bool)

(assert (=> b!4265990 m!4857135))

(declare-fun m!4857137 () Bool)

(assert (=> b!4265990 m!4857137))

(declare-fun m!4857139 () Bool)

(assert (=> b!4265990 m!4857139))

(declare-fun m!4857141 () Bool)

(assert (=> b!4265989 m!4857141))

(declare-fun m!4857143 () Bool)

(assert (=> d!1257309 m!4857143))

(declare-fun m!4857145 () Bool)

(assert (=> d!1257309 m!4857145))

(declare-fun m!4857147 () Bool)

(assert (=> d!1257309 m!4857147))

(assert (=> b!4265205 d!1257309))

(declare-fun b!4265992 () Bool)

(declare-fun e!2648743 () List!47392)

(declare-fun lt!1511746 () List!47392)

(assert (=> b!4265992 (= e!2648743 lt!1511746)))

(declare-fun d!1257311 () Bool)

(declare-fun lt!1511750 () List!47392)

(assert (=> d!1257311 (= lt!1511750 (++!12049 (list!17075 (right!35370 (left!35040 (c!724708 x!738013)))) (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))))))

(declare-fun e!2648744 () List!47392)

(assert (=> d!1257311 (= lt!1511750 e!2648744)))

(declare-fun c!725158 () Bool)

(assert (=> d!1257311 (= c!725158 (is-Empty!14250 (right!35370 (left!35040 (c!724708 x!738013)))))))

(assert (=> d!1257311 (= (efficientList!419 (right!35370 (left!35040 (c!724708 x!738013))) (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))) lt!1511750)))

(declare-fun b!4265993 () Bool)

(declare-fun e!2648745 () List!47392)

(declare-fun call!294052 () List!47392)

(assert (=> b!4265993 (= e!2648745 call!294052)))

(declare-fun bm!294047 () Bool)

(declare-fun c!725157 () Bool)

(declare-fun c!725159 () Bool)

(assert (=> bm!294047 (= c!725157 c!725159)))

(assert (=> bm!294047 (= call!294052 (++!12049 e!2648743 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))))))

(declare-fun b!4265994 () Bool)

(assert (=> b!4265994 (= e!2648744 e!2648745)))

(assert (=> b!4265994 (= c!725159 (is-Leaf!22031 (right!35370 (left!35040 (c!724708 x!738013)))))))

(declare-fun b!4265995 () Bool)

(assert (=> b!4265995 (= e!2648743 (efficientList!421 (xs!17556 (right!35370 (left!35040 (c!724708 x!738013))))))))

(declare-fun b!4265996 () Bool)

(assert (=> b!4265996 (= e!2648744 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013))))))

(declare-fun b!4265997 () Bool)

(declare-fun lt!1511747 () Unit!66151)

(declare-fun lt!1511748 () Unit!66151)

(assert (=> b!4265997 (= lt!1511747 lt!1511748)))

(declare-fun lt!1511749 () List!47392)

(assert (=> b!4265997 (= (++!12049 (++!12049 lt!1511749 lt!1511746) (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))) (++!12049 lt!1511749 call!294052))))

(assert (=> b!4265997 (= lt!1511748 (lemmaConcatAssociativity!2693 lt!1511749 lt!1511746 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))))))

(assert (=> b!4265997 (= lt!1511746 (list!17075 (right!35370 (right!35370 (left!35040 (c!724708 x!738013))))))))

(assert (=> b!4265997 (= lt!1511749 (list!17075 (left!35040 (right!35370 (left!35040 (c!724708 x!738013))))))))

(assert (=> b!4265997 (= e!2648745 (efficientList!419 (left!35040 (right!35370 (left!35040 (c!724708 x!738013)))) (efficientList!419 (right!35370 (right!35370 (left!35040 (c!724708 x!738013)))) (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013))))))))

(assert (= (and d!1257311 c!725158) b!4265996))

(assert (= (and d!1257311 (not c!725158)) b!4265994))

(assert (= (and b!4265994 c!725159) b!4265993))

(assert (= (and b!4265994 (not c!725159)) b!4265997))

(assert (= (or b!4265993 b!4265997) bm!294047))

(assert (= (and bm!294047 c!725157) b!4265995))

(assert (= (and bm!294047 (not c!725157)) b!4265992))

(assert (=> d!1257311 m!4855311))

(assert (=> d!1257311 m!4855311))

(assert (=> d!1257311 m!4855169))

(declare-fun m!4857149 () Bool)

(assert (=> d!1257311 m!4857149))

(assert (=> bm!294047 m!4855169))

(declare-fun m!4857151 () Bool)

(assert (=> bm!294047 m!4857151))

(declare-fun m!4857153 () Bool)

(assert (=> b!4265995 m!4857153))

(declare-fun m!4857155 () Bool)

(assert (=> b!4265997 m!4857155))

(assert (=> b!4265997 m!4856497))

(declare-fun m!4857157 () Bool)

(assert (=> b!4265997 m!4857157))

(declare-fun m!4857159 () Bool)

(assert (=> b!4265997 m!4857159))

(assert (=> b!4265997 m!4855169))

(declare-fun m!4857161 () Bool)

(assert (=> b!4265997 m!4857161))

(declare-fun m!4857163 () Bool)

(assert (=> b!4265997 m!4857163))

(assert (=> b!4265997 m!4857155))

(assert (=> b!4265997 m!4855169))

(declare-fun m!4857165 () Bool)

(assert (=> b!4265997 m!4857165))

(assert (=> b!4265997 m!4855169))

(assert (=> b!4265997 m!4857157))

(assert (=> b!4265997 m!4856495))

(assert (=> b!4265205 d!1257311))

(declare-fun lt!1511751 () List!47392)

(declare-fun b!4266001 () Bool)

(declare-fun e!2648746 () Bool)

(assert (=> b!4266001 (= e!2648746 (or (not (= (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013))) Nil!47268)) (= lt!1511751 (++!12049 lt!1511558 lt!1511555))))))

(declare-fun b!4266000 () Bool)

(declare-fun res!1753037 () Bool)

(assert (=> b!4266000 (=> (not res!1753037) (not e!2648746))))

(assert (=> b!4266000 (= res!1753037 (= (size!34622 lt!1511751) (+ (size!34622 (++!12049 lt!1511558 lt!1511555)) (size!34622 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))))))))

(declare-fun b!4265999 () Bool)

(declare-fun e!2648747 () List!47392)

(assert (=> b!4265999 (= e!2648747 (Cons!47268 (h!52688 (++!12049 lt!1511558 lt!1511555)) (++!12049 (t!353461 (++!12049 lt!1511558 lt!1511555)) (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013))))))))

(declare-fun b!4265998 () Bool)

(assert (=> b!4265998 (= e!2648747 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013))))))

(declare-fun d!1257313 () Bool)

(assert (=> d!1257313 e!2648746))

(declare-fun res!1753038 () Bool)

(assert (=> d!1257313 (=> (not res!1753038) (not e!2648746))))

(assert (=> d!1257313 (= res!1753038 (= (content!7469 lt!1511751) (set.union (content!7469 (++!12049 lt!1511558 lt!1511555)) (content!7469 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))))))))

(assert (=> d!1257313 (= lt!1511751 e!2648747)))

(declare-fun c!725160 () Bool)

(assert (=> d!1257313 (= c!725160 (is-Nil!47268 (++!12049 lt!1511558 lt!1511555)))))

(assert (=> d!1257313 (= (++!12049 (++!12049 lt!1511558 lt!1511555) (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))) lt!1511751)))

(assert (= (and d!1257313 c!725160) b!4265998))

(assert (= (and d!1257313 (not c!725160)) b!4265999))

(assert (= (and d!1257313 res!1753038) b!4266000))

(assert (= (and b!4266000 res!1753037) b!4266001))

(declare-fun m!4857167 () Bool)

(assert (=> b!4266000 m!4857167))

(assert (=> b!4266000 m!4855593))

(declare-fun m!4857169 () Bool)

(assert (=> b!4266000 m!4857169))

(assert (=> b!4266000 m!4855169))

(assert (=> b!4266000 m!4855947))

(assert (=> b!4265999 m!4855169))

(declare-fun m!4857171 () Bool)

(assert (=> b!4265999 m!4857171))

(declare-fun m!4857173 () Bool)

(assert (=> d!1257313 m!4857173))

(assert (=> d!1257313 m!4855593))

(declare-fun m!4857175 () Bool)

(assert (=> d!1257313 m!4857175))

(assert (=> d!1257313 m!4855169))

(assert (=> d!1257313 m!4855953))

(assert (=> b!4265205 d!1257313))

(assert (=> b!4265205 d!1257053))

(declare-fun b!4266005 () Bool)

(declare-fun e!2648748 () Bool)

(declare-fun lt!1511752 () List!47392)

(assert (=> b!4266005 (= e!2648748 (or (not (= lt!1511555 Nil!47268)) (= lt!1511752 lt!1511558)))))

(declare-fun b!4266004 () Bool)

(declare-fun res!1753039 () Bool)

(assert (=> b!4266004 (=> (not res!1753039) (not e!2648748))))

(assert (=> b!4266004 (= res!1753039 (= (size!34622 lt!1511752) (+ (size!34622 lt!1511558) (size!34622 lt!1511555))))))

(declare-fun b!4266003 () Bool)

(declare-fun e!2648749 () List!47392)

(assert (=> b!4266003 (= e!2648749 (Cons!47268 (h!52688 lt!1511558) (++!12049 (t!353461 lt!1511558) lt!1511555)))))

(declare-fun b!4266002 () Bool)

(assert (=> b!4266002 (= e!2648749 lt!1511555)))

(declare-fun d!1257315 () Bool)

(assert (=> d!1257315 e!2648748))

(declare-fun res!1753040 () Bool)

(assert (=> d!1257315 (=> (not res!1753040) (not e!2648748))))

(assert (=> d!1257315 (= res!1753040 (= (content!7469 lt!1511752) (set.union (content!7469 lt!1511558) (content!7469 lt!1511555))))))

(assert (=> d!1257315 (= lt!1511752 e!2648749)))

(declare-fun c!725161 () Bool)

(assert (=> d!1257315 (= c!725161 (is-Nil!47268 lt!1511558))))

(assert (=> d!1257315 (= (++!12049 lt!1511558 lt!1511555) lt!1511752)))

(assert (= (and d!1257315 c!725161) b!4266002))

(assert (= (and d!1257315 (not c!725161)) b!4266003))

(assert (= (and d!1257315 res!1753040) b!4266004))

(assert (= (and b!4266004 res!1753039) b!4266005))

(declare-fun m!4857177 () Bool)

(assert (=> b!4266004 m!4857177))

(assert (=> b!4266004 m!4857137))

(declare-fun m!4857179 () Bool)

(assert (=> b!4266004 m!4857179))

(declare-fun m!4857181 () Bool)

(assert (=> b!4266003 m!4857181))

(declare-fun m!4857183 () Bool)

(assert (=> d!1257315 m!4857183))

(assert (=> d!1257315 m!4857145))

(declare-fun m!4857185 () Bool)

(assert (=> d!1257315 m!4857185))

(assert (=> b!4265205 d!1257315))

(declare-fun d!1257317 () Bool)

(declare-fun lt!1511755 () Bool)

(declare-fun isEmpty!27997 (List!47392) Bool)

(assert (=> d!1257317 (= lt!1511755 (isEmpty!27997 (list!17075 (left!35040 (c!724708 x!738013)))))))

(assert (=> d!1257317 (= lt!1511755 (= (size!34624 (left!35040 (c!724708 x!738013))) 0))))

(assert (=> d!1257317 (= (isEmpty!27994 (left!35040 (c!724708 x!738013))) lt!1511755)))

(declare-fun bs!599313 () Bool)

(assert (= bs!599313 d!1257317))

(assert (=> bs!599313 m!4855149))

(assert (=> bs!599313 m!4855149))

(declare-fun m!4857187 () Bool)

(assert (=> bs!599313 m!4857187))

(assert (=> bs!599313 m!4855561))

(assert (=> b!4265199 d!1257317))

(declare-fun d!1257319 () Bool)

(declare-fun lt!1511756 () Int)

(assert (=> d!1257319 (>= lt!1511756 0)))

(declare-fun e!2648750 () Int)

(assert (=> d!1257319 (= lt!1511756 e!2648750)))

(declare-fun c!725162 () Bool)

(assert (=> d!1257319 (= c!725162 (is-Nil!47268 lt!1511612))))

(assert (=> d!1257319 (= (size!34622 lt!1511612) lt!1511756)))

(declare-fun b!4266006 () Bool)

(assert (=> b!4266006 (= e!2648750 0)))

(declare-fun b!4266007 () Bool)

(assert (=> b!4266007 (= e!2648750 (+ 1 (size!34622 (t!353461 lt!1511612))))))

(assert (= (and d!1257319 c!725162) b!4266006))

(assert (= (and d!1257319 (not c!725162)) b!4266007))

(declare-fun m!4857189 () Bool)

(assert (=> b!4266007 m!4857189))

(assert (=> b!4265437 d!1257319))

(assert (=> b!4265437 d!1257037))

(assert (=> b!4265437 d!1256661))

(declare-fun d!1257321 () Bool)

(declare-fun c!725163 () Bool)

(assert (=> d!1257321 (= c!725163 (is-Nil!47268 lt!1511656))))

(declare-fun e!2648751 () (Set (_ BitVec 16)))

(assert (=> d!1257321 (= (content!7469 lt!1511656) e!2648751)))

(declare-fun b!4266008 () Bool)

(assert (=> b!4266008 (= e!2648751 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4266009 () Bool)

(assert (=> b!4266009 (= e!2648751 (set.union (set.insert (h!52688 lt!1511656) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 lt!1511656))))))

(assert (= (and d!1257321 c!725163) b!4266008))

(assert (= (and d!1257321 (not c!725163)) b!4266009))

(declare-fun m!4857191 () Bool)

(assert (=> b!4266009 m!4857191))

(declare-fun m!4857193 () Bool)

(assert (=> b!4266009 m!4857193))

(assert (=> d!1257049 d!1257321))

(declare-fun d!1257323 () Bool)

(declare-fun c!725164 () Bool)

(assert (=> d!1257323 (= c!725164 (is-Nil!47268 (list!17075 (left!35040 (left!35040 (c!724708 x!738013))))))))

(declare-fun e!2648752 () (Set (_ BitVec 16)))

(assert (=> d!1257323 (= (content!7469 (list!17075 (left!35040 (left!35040 (c!724708 x!738013))))) e!2648752)))

(declare-fun b!4266010 () Bool)

(assert (=> b!4266010 (= e!2648752 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4266011 () Bool)

(assert (=> b!4266011 (= e!2648752 (set.union (set.insert (h!52688 (list!17075 (left!35040 (left!35040 (c!724708 x!738013))))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (list!17075 (left!35040 (left!35040 (c!724708 x!738013))))))))))

(assert (= (and d!1257323 c!725164) b!4266010))

(assert (= (and d!1257323 (not c!725164)) b!4266011))

(declare-fun m!4857195 () Bool)

(assert (=> b!4266011 m!4857195))

(declare-fun m!4857197 () Bool)

(assert (=> b!4266011 m!4857197))

(assert (=> d!1257049 d!1257323))

(declare-fun d!1257325 () Bool)

(declare-fun c!725165 () Bool)

(assert (=> d!1257325 (= c!725165 (is-Nil!47268 (list!17075 (right!35370 (left!35040 (c!724708 x!738013))))))))

(declare-fun e!2648753 () (Set (_ BitVec 16)))

(assert (=> d!1257325 (= (content!7469 (list!17075 (right!35370 (left!35040 (c!724708 x!738013))))) e!2648753)))

(declare-fun b!4266012 () Bool)

(assert (=> b!4266012 (= e!2648753 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4266013 () Bool)

(assert (=> b!4266013 (= e!2648753 (set.union (set.insert (h!52688 (list!17075 (right!35370 (left!35040 (c!724708 x!738013))))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (list!17075 (right!35370 (left!35040 (c!724708 x!738013))))))))))

(assert (= (and d!1257325 c!725165) b!4266012))

(assert (= (and d!1257325 (not c!725165)) b!4266013))

(declare-fun m!4857199 () Bool)

(assert (=> b!4266013 m!4857199))

(declare-fun m!4857201 () Bool)

(assert (=> b!4266013 m!4857201))

(assert (=> d!1257049 d!1257325))

(declare-fun d!1257327 () Bool)

(declare-fun c!725166 () Bool)

(assert (=> d!1257327 (= c!725166 (is-Nil!47268 (t!353461 lt!1511505)))))

(declare-fun e!2648754 () (Set (_ BitVec 16)))

(assert (=> d!1257327 (= (content!7469 (t!353461 lt!1511505)) e!2648754)))

(declare-fun b!4266014 () Bool)

(assert (=> b!4266014 (= e!2648754 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4266015 () Bool)

(assert (=> b!4266015 (= e!2648754 (set.union (set.insert (h!52688 (t!353461 lt!1511505)) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (t!353461 lt!1511505)))))))

(assert (= (and d!1257327 c!725166) b!4266014))

(assert (= (and d!1257327 (not c!725166)) b!4266015))

(declare-fun m!4857203 () Bool)

(assert (=> b!4266015 m!4857203))

(declare-fun m!4857205 () Bool)

(assert (=> b!4266015 m!4857205))

(assert (=> b!4265428 d!1257327))

(declare-fun d!1257329 () Bool)

(declare-fun lt!1511757 () Int)

(assert (=> d!1257329 (>= lt!1511757 0)))

(declare-fun e!2648755 () Int)

(assert (=> d!1257329 (= lt!1511757 e!2648755)))

(declare-fun c!725167 () Bool)

(assert (=> d!1257329 (= c!725167 (is-Nil!47268 lt!1511611))))

(assert (=> d!1257329 (= (size!34622 lt!1511611) lt!1511757)))

(declare-fun b!4266016 () Bool)

(assert (=> b!4266016 (= e!2648755 0)))

(declare-fun b!4266017 () Bool)

(assert (=> b!4266017 (= e!2648755 (+ 1 (size!34622 (t!353461 lt!1511611))))))

(assert (= (and d!1257329 c!725167) b!4266016))

(assert (= (and d!1257329 (not c!725167)) b!4266017))

(declare-fun m!4857207 () Bool)

(assert (=> b!4266017 m!4857207))

(assert (=> b!4265433 d!1257329))

(assert (=> b!4265433 d!1257035))

(declare-fun d!1257331 () Bool)

(declare-fun lt!1511758 () Int)

(assert (=> d!1257331 (>= lt!1511758 0)))

(declare-fun e!2648756 () Int)

(assert (=> d!1257331 (= lt!1511758 e!2648756)))

(declare-fun c!725168 () Bool)

(assert (=> d!1257331 (= c!725168 (is-Nil!47268 (++!12049 lt!1511502 (efficientList$default$2!146 (c!724708 x!738013)))))))

(assert (=> d!1257331 (= (size!34622 (++!12049 lt!1511502 (efficientList$default$2!146 (c!724708 x!738013)))) lt!1511758)))

(declare-fun b!4266018 () Bool)

(assert (=> b!4266018 (= e!2648756 0)))

(declare-fun b!4266019 () Bool)

(assert (=> b!4266019 (= e!2648756 (+ 1 (size!34622 (t!353461 (++!12049 lt!1511502 (efficientList$default$2!146 (c!724708 x!738013)))))))))

(assert (= (and d!1257331 c!725168) b!4266018))

(assert (= (and d!1257331 (not c!725168)) b!4266019))

(declare-fun m!4857209 () Bool)

(assert (=> b!4266019 m!4857209))

(assert (=> b!4265433 d!1257331))

(declare-fun d!1257333 () Bool)

(assert (=> d!1257333 (= (list!17073 lt!1511653) (list!17075 (c!724708 lt!1511653)))))

(declare-fun bs!599314 () Bool)

(assert (= bs!599314 d!1257333))

(declare-fun m!4857211 () Bool)

(assert (=> bs!599314 m!4857211))

(assert (=> d!1257039 d!1257333))

(declare-fun d!1257335 () Bool)

(declare-fun e!2648757 () Bool)

(assert (=> d!1257335 e!2648757))

(declare-fun res!1753041 () Bool)

(assert (=> d!1257335 (=> (not res!1753041) (not e!2648757))))

(declare-fun lt!1511759 () Conc!14250)

(assert (=> d!1257335 (= res!1753041 (= (list!17075 lt!1511759) (Cons!47268 #x002F Nil!47268)))))

(assert (=> d!1257335 (= lt!1511759 (choose!25996 (Cons!47268 #x002F Nil!47268)))))

(assert (=> d!1257335 (= (fromList!917 (Cons!47268 #x002F Nil!47268)) lt!1511759)))

(declare-fun b!4266020 () Bool)

(assert (=> b!4266020 (= e!2648757 (isBalanced!3809 lt!1511759))))

(assert (= (and d!1257335 res!1753041) b!4266020))

(declare-fun m!4857213 () Bool)

(assert (=> d!1257335 m!4857213))

(declare-fun m!4857215 () Bool)

(assert (=> d!1257335 m!4857215))

(declare-fun m!4857217 () Bool)

(assert (=> b!4266020 m!4857217))

(assert (=> d!1257039 d!1257335))

(assert (=> b!4265180 d!1257301))

(assert (=> b!4265180 d!1256601))

(assert (=> b!4265233 d!1256589))

(declare-fun d!1257337 () Bool)

(assert (=> d!1257337 (= (inv!62196 (xs!17556 res!1752881)) (<= (size!34622 (innerList!14310 (xs!17556 res!1752881))) 2147483647))))

(declare-fun bs!599315 () Bool)

(assert (= bs!599315 d!1257337))

(declare-fun m!4857219 () Bool)

(assert (=> bs!599315 m!4857219))

(assert (=> b!4265388 d!1257337))

(declare-fun d!1257339 () Bool)

(declare-fun c!725169 () Bool)

(assert (=> d!1257339 (= c!725169 (is-Node!14250 (left!35040 (right!35370 (c!724708 x!738013)))))))

(declare-fun e!2648758 () Bool)

(assert (=> d!1257339 (= (inv!62190 (left!35040 (right!35370 (c!724708 x!738013)))) e!2648758)))

(declare-fun b!4266021 () Bool)

(assert (=> b!4266021 (= e!2648758 (inv!62194 (left!35040 (right!35370 (c!724708 x!738013)))))))

(declare-fun b!4266022 () Bool)

(declare-fun e!2648759 () Bool)

(assert (=> b!4266022 (= e!2648758 e!2648759)))

(declare-fun res!1753042 () Bool)

(assert (=> b!4266022 (= res!1753042 (not (is-Leaf!22031 (left!35040 (right!35370 (c!724708 x!738013))))))))

(assert (=> b!4266022 (=> res!1753042 e!2648759)))

(declare-fun b!4266023 () Bool)

(assert (=> b!4266023 (= e!2648759 (inv!62195 (left!35040 (right!35370 (c!724708 x!738013)))))))

(assert (= (and d!1257339 c!725169) b!4266021))

(assert (= (and d!1257339 (not c!725169)) b!4266022))

(assert (= (and b!4266022 (not res!1753042)) b!4266023))

(declare-fun m!4857221 () Bool)

(assert (=> b!4266021 m!4857221))

(declare-fun m!4857223 () Bool)

(assert (=> b!4266023 m!4857223))

(assert (=> b!4265250 d!1257339))

(declare-fun d!1257341 () Bool)

(declare-fun c!725170 () Bool)

(assert (=> d!1257341 (= c!725170 (is-Node!14250 (right!35370 (right!35370 (c!724708 x!738013)))))))

(declare-fun e!2648760 () Bool)

(assert (=> d!1257341 (= (inv!62190 (right!35370 (right!35370 (c!724708 x!738013)))) e!2648760)))

(declare-fun b!4266024 () Bool)

(assert (=> b!4266024 (= e!2648760 (inv!62194 (right!35370 (right!35370 (c!724708 x!738013)))))))

(declare-fun b!4266025 () Bool)

(declare-fun e!2648761 () Bool)

(assert (=> b!4266025 (= e!2648760 e!2648761)))

(declare-fun res!1753043 () Bool)

(assert (=> b!4266025 (= res!1753043 (not (is-Leaf!22031 (right!35370 (right!35370 (c!724708 x!738013))))))))

(assert (=> b!4266025 (=> res!1753043 e!2648761)))

(declare-fun b!4266026 () Bool)

(assert (=> b!4266026 (= e!2648761 (inv!62195 (right!35370 (right!35370 (c!724708 x!738013)))))))

(assert (= (and d!1257341 c!725170) b!4266024))

(assert (= (and d!1257341 (not c!725170)) b!4266025))

(assert (= (and b!4266025 (not res!1753043)) b!4266026))

(declare-fun m!4857225 () Bool)

(assert (=> b!4266024 m!4857225))

(declare-fun m!4857227 () Bool)

(assert (=> b!4266026 m!4857227))

(assert (=> b!4265250 d!1257341))

(declare-fun d!1257343 () Bool)

(declare-fun lt!1511760 () Int)

(assert (=> d!1257343 (>= lt!1511760 0)))

(declare-fun e!2648762 () Int)

(assert (=> d!1257343 (= lt!1511760 e!2648762)))

(declare-fun c!725171 () Bool)

(assert (=> d!1257343 (= c!725171 (is-Nil!47268 (innerList!14310 (xs!17556 (c!724708 x!738013)))))))

(assert (=> d!1257343 (= (size!34622 (innerList!14310 (xs!17556 (c!724708 x!738013)))) lt!1511760)))

(declare-fun b!4266027 () Bool)

(assert (=> b!4266027 (= e!2648762 0)))

(declare-fun b!4266028 () Bool)

(assert (=> b!4266028 (= e!2648762 (+ 1 (size!34622 (t!353461 (innerList!14310 (xs!17556 (c!724708 x!738013)))))))))

(assert (= (and d!1257343 c!725171) b!4266027))

(assert (= (and d!1257343 (not c!725171)) b!4266028))

(declare-fun m!4857229 () Bool)

(assert (=> b!4266028 m!4857229))

(assert (=> d!1256681 d!1257343))

(assert (=> b!4265238 d!1256565))

(assert (=> b!4265196 d!1257271))

(assert (=> b!4265196 d!1257273))

(declare-fun d!1257345 () Bool)

(declare-fun res!1753049 () Bool)

(declare-fun e!2648763 () Bool)

(assert (=> d!1257345 (=> res!1753049 e!2648763)))

(assert (=> d!1257345 (= res!1753049 (not (is-Node!14250 (fromList!917 (Cons!47268 #x002A Nil!47268)))))))

(assert (=> d!1257345 (= (isBalanced!3809 (fromList!917 (Cons!47268 #x002A Nil!47268))) e!2648763)))

(declare-fun b!4266029 () Bool)

(declare-fun e!2648764 () Bool)

(assert (=> b!4266029 (= e!2648763 e!2648764)))

(declare-fun res!1753045 () Bool)

(assert (=> b!4266029 (=> (not res!1753045) (not e!2648764))))

(assert (=> b!4266029 (= res!1753045 (<= (- 1) (- (height!1875 (left!35040 (fromList!917 (Cons!47268 #x002A Nil!47268)))) (height!1875 (right!35370 (fromList!917 (Cons!47268 #x002A Nil!47268)))))))))

(declare-fun b!4266030 () Bool)

(declare-fun res!1753046 () Bool)

(assert (=> b!4266030 (=> (not res!1753046) (not e!2648764))))

(assert (=> b!4266030 (= res!1753046 (isBalanced!3809 (left!35040 (fromList!917 (Cons!47268 #x002A Nil!47268)))))))

(declare-fun b!4266031 () Bool)

(declare-fun res!1753048 () Bool)

(assert (=> b!4266031 (=> (not res!1753048) (not e!2648764))))

(assert (=> b!4266031 (= res!1753048 (<= (- (height!1875 (left!35040 (fromList!917 (Cons!47268 #x002A Nil!47268)))) (height!1875 (right!35370 (fromList!917 (Cons!47268 #x002A Nil!47268))))) 1))))

(declare-fun b!4266032 () Bool)

(assert (=> b!4266032 (= e!2648764 (not (isEmpty!27994 (right!35370 (fromList!917 (Cons!47268 #x002A Nil!47268))))))))

(declare-fun b!4266033 () Bool)

(declare-fun res!1753047 () Bool)

(assert (=> b!4266033 (=> (not res!1753047) (not e!2648764))))

(assert (=> b!4266033 (= res!1753047 (isBalanced!3809 (right!35370 (fromList!917 (Cons!47268 #x002A Nil!47268)))))))

(declare-fun b!4266034 () Bool)

(declare-fun res!1753044 () Bool)

(assert (=> b!4266034 (=> (not res!1753044) (not e!2648764))))

(assert (=> b!4266034 (= res!1753044 (not (isEmpty!27994 (left!35040 (fromList!917 (Cons!47268 #x002A Nil!47268))))))))

(assert (= (and d!1257345 (not res!1753049)) b!4266029))

(assert (= (and b!4266029 res!1753045) b!4266031))

(assert (= (and b!4266031 res!1753048) b!4266030))

(assert (= (and b!4266030 res!1753046) b!4266033))

(assert (= (and b!4266033 res!1753047) b!4266034))

(assert (= (and b!4266034 res!1753044) b!4266032))

(declare-fun m!4857231 () Bool)

(assert (=> b!4266029 m!4857231))

(declare-fun m!4857233 () Bool)

(assert (=> b!4266029 m!4857233))

(declare-fun m!4857235 () Bool)

(assert (=> b!4266033 m!4857235))

(declare-fun m!4857237 () Bool)

(assert (=> b!4266030 m!4857237))

(declare-fun m!4857239 () Bool)

(assert (=> b!4266032 m!4857239))

(assert (=> b!4266031 m!4857231))

(assert (=> b!4266031 m!4857233))

(declare-fun m!4857241 () Bool)

(assert (=> b!4266034 m!4857241))

(assert (=> b!4265447 d!1257345))

(assert (=> b!4265447 d!1256995))

(assert (=> b!4265247 d!1256573))

(declare-fun d!1257347 () Bool)

(declare-fun e!2648765 () Bool)

(assert (=> d!1257347 e!2648765))

(declare-fun res!1753050 () Bool)

(assert (=> d!1257347 (=> (not res!1753050) (not e!2648765))))

(declare-fun lt!1511761 () BalanceConc!28010)

(assert (=> d!1257347 (= res!1753050 (= (list!17073 lt!1511761) (Cons!47268 #x0025 Nil!47268)))))

(assert (=> d!1257347 (= lt!1511761 (BalanceConc!28011 (fromList!917 (Cons!47268 #x0025 Nil!47268))))))

(assert (=> d!1257347 (= (fromListB!2657 (Cons!47268 #x0025 Nil!47268)) lt!1511761)))

(declare-fun b!4266035 () Bool)

(assert (=> b!4266035 (= e!2648765 (isBalanced!3809 (fromList!917 (Cons!47268 #x0025 Nil!47268))))))

(assert (= (and d!1257347 res!1753050) b!4266035))

(declare-fun m!4857243 () Bool)

(assert (=> d!1257347 m!4857243))

(declare-fun m!4857245 () Bool)

(assert (=> d!1257347 m!4857245))

(assert (=> b!4266035 m!4857245))

(assert (=> b!4266035 m!4857245))

(declare-fun m!4857247 () Bool)

(assert (=> b!4266035 m!4857247))

(assert (=> d!1256831 d!1257347))

(assert (=> b!4265230 d!1256581))

(declare-fun d!1257349 () Bool)

(declare-fun res!1753051 () Bool)

(declare-fun e!2648766 () Bool)

(assert (=> d!1257349 (=> (not res!1753051) (not e!2648766))))

(assert (=> d!1257349 (= res!1753051 (= (csize!28730 (left!35040 (c!724708 x!738013))) (+ (size!34624 (left!35040 (left!35040 (c!724708 x!738013)))) (size!34624 (right!35370 (left!35040 (c!724708 x!738013)))))))))

(assert (=> d!1257349 (= (inv!62194 (left!35040 (c!724708 x!738013))) e!2648766)))

(declare-fun b!4266036 () Bool)

(declare-fun res!1753052 () Bool)

(assert (=> b!4266036 (=> (not res!1753052) (not e!2648766))))

(assert (=> b!4266036 (= res!1753052 (and (not (= (left!35040 (left!35040 (c!724708 x!738013))) Empty!14250)) (not (= (right!35370 (left!35040 (c!724708 x!738013))) Empty!14250))))))

(declare-fun b!4266037 () Bool)

(declare-fun res!1753053 () Bool)

(assert (=> b!4266037 (=> (not res!1753053) (not e!2648766))))

(assert (=> b!4266037 (= res!1753053 (= (cheight!14461 (left!35040 (c!724708 x!738013))) (+ (max!0 (height!1875 (left!35040 (left!35040 (c!724708 x!738013)))) (height!1875 (right!35370 (left!35040 (c!724708 x!738013))))) 1)))))

(declare-fun b!4266038 () Bool)

(assert (=> b!4266038 (= e!2648766 (<= 0 (cheight!14461 (left!35040 (c!724708 x!738013)))))))

(assert (= (and d!1257349 res!1753051) b!4266036))

(assert (= (and b!4266036 res!1753052) b!4266037))

(assert (= (and b!4266037 res!1753053) b!4266038))

(declare-fun m!4857249 () Bool)

(assert (=> d!1257349 m!4857249))

(declare-fun m!4857251 () Bool)

(assert (=> d!1257349 m!4857251))

(declare-fun m!4857253 () Bool)

(assert (=> b!4266037 m!4857253))

(declare-fun m!4857255 () Bool)

(assert (=> b!4266037 m!4857255))

(assert (=> b!4266037 m!4857253))

(assert (=> b!4266037 m!4857255))

(declare-fun m!4857257 () Bool)

(assert (=> b!4266037 m!4857257))

(assert (=> b!4265129 d!1257349))

(declare-fun d!1257351 () Bool)

(declare-fun res!1753054 () Bool)

(declare-fun e!2648767 () Bool)

(assert (=> d!1257351 (=> (not res!1753054) (not e!2648767))))

(assert (=> d!1257351 (= res!1753054 (<= (size!34622 (list!17077 (xs!17556 (right!35370 (c!724708 x!738013))))) 512))))

(assert (=> d!1257351 (= (inv!62195 (right!35370 (c!724708 x!738013))) e!2648767)))

(declare-fun b!4266039 () Bool)

(declare-fun res!1753055 () Bool)

(assert (=> b!4266039 (=> (not res!1753055) (not e!2648767))))

(assert (=> b!4266039 (= res!1753055 (= (csize!28731 (right!35370 (c!724708 x!738013))) (size!34622 (list!17077 (xs!17556 (right!35370 (c!724708 x!738013)))))))))

(declare-fun b!4266040 () Bool)

(assert (=> b!4266040 (= e!2648767 (and (> (csize!28731 (right!35370 (c!724708 x!738013))) 0) (<= (csize!28731 (right!35370 (c!724708 x!738013))) 512)))))

(assert (= (and d!1257351 res!1753054) b!4266039))

(assert (= (and b!4266039 res!1753055) b!4266040))

(assert (=> d!1257351 m!4855315))

(assert (=> d!1257351 m!4855315))

(declare-fun m!4857259 () Bool)

(assert (=> d!1257351 m!4857259))

(assert (=> b!4266039 m!4855315))

(assert (=> b!4266039 m!4855315))

(assert (=> b!4266039 m!4857259))

(assert (=> b!4265136 d!1257351))

(declare-fun d!1257353 () Bool)

(declare-fun lt!1511762 () List!47392)

(assert (=> d!1257353 (= lt!1511762 (list!17077 (xs!17556 (left!35040 (c!724708 x!738013)))))))

(assert (=> d!1257353 (= lt!1511762 (rec!28 (xs!17556 (left!35040 (c!724708 x!738013))) (size!34625 (xs!17556 (left!35040 (c!724708 x!738013)))) Nil!47268))))

(assert (=> d!1257353 (= (efficientList!421 (xs!17556 (left!35040 (c!724708 x!738013)))) lt!1511762)))

(declare-fun bs!599316 () Bool)

(assert (= bs!599316 d!1257353))

(assert (=> bs!599316 m!4855307))

(declare-fun m!4857261 () Bool)

(assert (=> bs!599316 m!4857261))

(assert (=> bs!599316 m!4857261))

(declare-fun m!4857263 () Bool)

(assert (=> bs!599316 m!4857263))

(assert (=> b!4265203 d!1257353))

(declare-fun d!1257355 () Bool)

(declare-fun lt!1511763 () Bool)

(assert (=> d!1257355 (= lt!1511763 (isEmpty!27997 (list!17075 (right!35370 (c!724708 x!738013)))))))

(assert (=> d!1257355 (= lt!1511763 (= (size!34624 (right!35370 (c!724708 x!738013))) 0))))

(assert (=> d!1257355 (= (isEmpty!27994 (right!35370 (c!724708 x!738013))) lt!1511763)))

(declare-fun bs!599317 () Bool)

(assert (= bs!599317 d!1257355))

(assert (=> bs!599317 m!4855151))

(assert (=> bs!599317 m!4855151))

(declare-fun m!4857265 () Bool)

(assert (=> bs!599317 m!4857265))

(assert (=> bs!599317 m!4855563))

(assert (=> b!4265197 d!1257355))

(declare-fun d!1257357 () Bool)

(declare-fun lt!1511764 () Int)

(assert (=> d!1257357 (>= lt!1511764 0)))

(declare-fun e!2648768 () Int)

(assert (=> d!1257357 (= lt!1511764 e!2648768)))

(declare-fun c!725172 () Bool)

(assert (=> d!1257357 (= c!725172 (is-Nil!47268 (t!353461 (list!17075 (right!35370 (c!724708 x!738013))))))))

(assert (=> d!1257357 (= (size!34622 (t!353461 (list!17075 (right!35370 (c!724708 x!738013))))) lt!1511764)))

(declare-fun b!4266041 () Bool)

(assert (=> b!4266041 (= e!2648768 0)))

(declare-fun b!4266042 () Bool)

(assert (=> b!4266042 (= e!2648768 (+ 1 (size!34622 (t!353461 (t!353461 (list!17075 (right!35370 (c!724708 x!738013))))))))))

(assert (= (and d!1257357 c!725172) b!4266041))

(assert (= (and d!1257357 (not c!725172)) b!4266042))

(declare-fun m!4857267 () Bool)

(assert (=> b!4266042 m!4857267))

(assert (=> b!4265446 d!1257357))

(declare-fun d!1257359 () Bool)

(assert (=> d!1257359 (= (inv!62196 (xs!17556 (right!35370 (c!724708 x!738013)))) (<= (size!34622 (innerList!14310 (xs!17556 (right!35370 (c!724708 x!738013))))) 2147483647))))

(declare-fun bs!599318 () Bool)

(assert (= bs!599318 d!1257359))

(declare-fun m!4857269 () Bool)

(assert (=> bs!599318 m!4857269))

(assert (=> b!4265251 d!1257359))

(declare-fun b!4266045 () Bool)

(declare-fun e!2648770 () List!47392)

(assert (=> b!4266045 (= e!2648770 (list!17077 (xs!17556 (c!724708 lt!1511616))))))

(declare-fun b!4266043 () Bool)

(declare-fun e!2648769 () List!47392)

(assert (=> b!4266043 (= e!2648769 Nil!47268)))

(declare-fun d!1257361 () Bool)

(declare-fun c!725173 () Bool)

(assert (=> d!1257361 (= c!725173 (is-Empty!14250 (c!724708 lt!1511616)))))

(assert (=> d!1257361 (= (list!17075 (c!724708 lt!1511616)) e!2648769)))

(declare-fun b!4266046 () Bool)

(assert (=> b!4266046 (= e!2648770 (++!12049 (list!17075 (left!35040 (c!724708 lt!1511616))) (list!17075 (right!35370 (c!724708 lt!1511616)))))))

(declare-fun b!4266044 () Bool)

(assert (=> b!4266044 (= e!2648769 e!2648770)))

(declare-fun c!725174 () Bool)

(assert (=> b!4266044 (= c!725174 (is-Leaf!22031 (c!724708 lt!1511616)))))

(assert (= (and d!1257361 c!725173) b!4266043))

(assert (= (and d!1257361 (not c!725173)) b!4266044))

(assert (= (and b!4266044 c!725174) b!4266045))

(assert (= (and b!4266044 (not c!725174)) b!4266046))

(declare-fun m!4857271 () Bool)

(assert (=> b!4266045 m!4857271))

(declare-fun m!4857273 () Bool)

(assert (=> b!4266046 m!4857273))

(declare-fun m!4857275 () Bool)

(assert (=> b!4266046 m!4857275))

(assert (=> b!4266046 m!4857273))

(assert (=> b!4266046 m!4857275))

(declare-fun m!4857277 () Bool)

(assert (=> b!4266046 m!4857277))

(assert (=> d!1256993 d!1257361))

(declare-fun e!2648771 () Bool)

(declare-fun lt!1511765 () List!47392)

(declare-fun b!4266050 () Bool)

(assert (=> b!4266050 (= e!2648771 (or (not (= (efficientList$default$2!146 (c!724708 x!738013)) Nil!47268)) (= lt!1511765 (t!353461 e!2648211))))))

(declare-fun b!4266049 () Bool)

(declare-fun res!1753056 () Bool)

(assert (=> b!4266049 (=> (not res!1753056) (not e!2648771))))

(assert (=> b!4266049 (= res!1753056 (= (size!34622 lt!1511765) (+ (size!34622 (t!353461 e!2648211)) (size!34622 (efficientList$default$2!146 (c!724708 x!738013))))))))

(declare-fun b!4266048 () Bool)

(declare-fun e!2648772 () List!47392)

(assert (=> b!4266048 (= e!2648772 (Cons!47268 (h!52688 (t!353461 e!2648211)) (++!12049 (t!353461 (t!353461 e!2648211)) (efficientList$default$2!146 (c!724708 x!738013)))))))

(declare-fun b!4266047 () Bool)

(assert (=> b!4266047 (= e!2648772 (efficientList$default$2!146 (c!724708 x!738013)))))

(declare-fun d!1257363 () Bool)

(assert (=> d!1257363 e!2648771))

(declare-fun res!1753057 () Bool)

(assert (=> d!1257363 (=> (not res!1753057) (not e!2648771))))

(assert (=> d!1257363 (= res!1753057 (= (content!7469 lt!1511765) (set.union (content!7469 (t!353461 e!2648211)) (content!7469 (efficientList$default$2!146 (c!724708 x!738013))))))))

(assert (=> d!1257363 (= lt!1511765 e!2648772)))

(declare-fun c!725175 () Bool)

(assert (=> d!1257363 (= c!725175 (is-Nil!47268 (t!353461 e!2648211)))))

(assert (=> d!1257363 (= (++!12049 (t!353461 e!2648211) (efficientList$default$2!146 (c!724708 x!738013))) lt!1511765)))

(assert (= (and d!1257363 c!725175) b!4266047))

(assert (= (and d!1257363 (not c!725175)) b!4266048))

(assert (= (and d!1257363 res!1753057) b!4266049))

(assert (= (and b!4266049 res!1753056) b!4266050))

(declare-fun m!4857279 () Bool)

(assert (=> b!4266049 m!4857279))

(assert (=> b!4266049 m!4857063))

(assert (=> b!4266049 m!4855135))

(assert (=> b!4266049 m!4855239))

(assert (=> b!4266048 m!4855135))

(declare-fun m!4857281 () Bool)

(assert (=> b!4266048 m!4857281))

(declare-fun m!4857283 () Bool)

(assert (=> d!1257363 m!4857283))

(assert (=> d!1257363 m!4856421))

(assert (=> d!1257363 m!4855135))

(assert (=> d!1257363 m!4855247))

(assert (=> b!4265158 d!1257363))

(declare-fun d!1257365 () Bool)

(declare-fun c!725176 () Bool)

(assert (=> d!1257365 (= c!725176 (is-Nil!47268 lt!1511643))))

(declare-fun e!2648773 () (Set (_ BitVec 16)))

(assert (=> d!1257365 (= (content!7469 lt!1511643) e!2648773)))

(declare-fun b!4266051 () Bool)

(assert (=> b!4266051 (= e!2648773 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4266052 () Bool)

(assert (=> b!4266052 (= e!2648773 (set.union (set.insert (h!52688 lt!1511643) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 lt!1511643))))))

(assert (= (and d!1257365 c!725176) b!4266051))

(assert (= (and d!1257365 (not c!725176)) b!4266052))

(declare-fun m!4857285 () Bool)

(assert (=> b!4266052 m!4857285))

(declare-fun m!4857287 () Bool)

(assert (=> b!4266052 m!4857287))

(assert (=> d!1257003 d!1257365))

(assert (=> d!1257003 d!1257327))

(assert (=> d!1257003 d!1256843))

(declare-fun d!1257367 () Bool)

(declare-fun c!725177 () Bool)

(assert (=> d!1257367 (= c!725177 (is-Nil!47268 lt!1511635))))

(declare-fun e!2648774 () (Set (_ BitVec 16)))

(assert (=> d!1257367 (= (content!7469 lt!1511635) e!2648774)))

(declare-fun b!4266053 () Bool)

(assert (=> b!4266053 (= e!2648774 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4266054 () Bool)

(assert (=> b!4266054 (= e!2648774 (set.union (set.insert (h!52688 lt!1511635) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 lt!1511635))))))

(assert (= (and d!1257367 c!725177) b!4266053))

(assert (= (and d!1257367 (not c!725177)) b!4266054))

(declare-fun m!4857289 () Bool)

(assert (=> b!4266054 m!4857289))

(declare-fun m!4857291 () Bool)

(assert (=> b!4266054 m!4857291))

(assert (=> d!1256977 d!1257367))

(declare-fun d!1257369 () Bool)

(declare-fun c!725178 () Bool)

(assert (=> d!1257369 (= c!725178 (is-Nil!47268 (t!353461 (++!12049 lt!1511505 lt!1511502))))))

(declare-fun e!2648775 () (Set (_ BitVec 16)))

(assert (=> d!1257369 (= (content!7469 (t!353461 (++!12049 lt!1511505 lt!1511502))) e!2648775)))

(declare-fun b!4266055 () Bool)

(assert (=> b!4266055 (= e!2648775 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4266056 () Bool)

(assert (=> b!4266056 (= e!2648775 (set.union (set.insert (h!52688 (t!353461 (++!12049 lt!1511505 lt!1511502))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (t!353461 (++!12049 lt!1511505 lt!1511502))))))))

(assert (= (and d!1257369 c!725178) b!4266055))

(assert (= (and d!1257369 (not c!725178)) b!4266056))

(declare-fun m!4857293 () Bool)

(assert (=> b!4266056 m!4857293))

(declare-fun m!4857295 () Bool)

(assert (=> b!4266056 m!4857295))

(assert (=> d!1256977 d!1257369))

(assert (=> d!1256977 d!1256599))

(declare-fun b!4266060 () Bool)

(declare-fun lt!1511766 () List!47392)

(declare-fun e!2648776 () Bool)

(assert (=> b!4266060 (= e!2648776 (or (not (= (efficientList$default$2!146 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))) Nil!47268)) (= lt!1511766 (list!17075 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))

(declare-fun b!4266059 () Bool)

(declare-fun res!1753058 () Bool)

(assert (=> b!4266059 (=> (not res!1753058) (not e!2648776))))

(assert (=> b!4266059 (= res!1753058 (= (size!34622 lt!1511766) (+ (size!34622 (list!17075 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))) (size!34622 (efficientList$default$2!146 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(declare-fun b!4266058 () Bool)

(declare-fun e!2648777 () List!47392)

(assert (=> b!4266058 (= e!2648777 (Cons!47268 (h!52688 (list!17075 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))) (++!12049 (t!353461 (list!17075 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))) (efficientList$default$2!146 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))

(declare-fun b!4266057 () Bool)

(assert (=> b!4266057 (= e!2648777 (efficientList$default$2!146 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))

(declare-fun d!1257371 () Bool)

(assert (=> d!1257371 e!2648776))

(declare-fun res!1753059 () Bool)

(assert (=> d!1257371 (=> (not res!1753059) (not e!2648776))))

(assert (=> d!1257371 (= res!1753059 (= (content!7469 lt!1511766) (set.union (content!7469 (list!17075 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))) (content!7469 (efficientList$default$2!146 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(assert (=> d!1257371 (= lt!1511766 e!2648777)))

(declare-fun c!725179 () Bool)

(assert (=> d!1257371 (= c!725179 (is-Nil!47268 (list!17075 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))

(assert (=> d!1257371 (= (++!12049 (list!17075 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))) (efficientList$default$2!146 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))) lt!1511766)))

(assert (= (and d!1257371 c!725179) b!4266057))

(assert (= (and d!1257371 (not c!725179)) b!4266058))

(assert (= (and d!1257371 res!1753059) b!4266059))

(assert (= (and b!4266059 res!1753058) b!4266060))

(declare-fun m!4857297 () Bool)

(assert (=> b!4266059 m!4857297))

(assert (=> b!4266059 m!4855075))

(declare-fun m!4857299 () Bool)

(assert (=> b!4266059 m!4857299))

(assert (=> b!4266059 m!4855911))

(declare-fun m!4857301 () Bool)

(assert (=> b!4266059 m!4857301))

(assert (=> b!4266058 m!4855911))

(declare-fun m!4857303 () Bool)

(assert (=> b!4266058 m!4857303))

(declare-fun m!4857305 () Bool)

(assert (=> d!1257371 m!4857305))

(assert (=> d!1257371 m!4855075))

(declare-fun m!4857307 () Bool)

(assert (=> d!1257371 m!4857307))

(assert (=> d!1257371 m!4855911))

(declare-fun m!4857309 () Bool)

(assert (=> d!1257371 m!4857309))

(assert (=> d!1256987 d!1257371))

(assert (=> d!1256987 d!1256535))

(declare-fun d!1257373 () Bool)

(declare-fun c!725180 () Bool)

(assert (=> d!1257373 (= c!725180 (is-Nil!47268 lt!1511655))))

(declare-fun e!2648778 () (Set (_ BitVec 16)))

(assert (=> d!1257373 (= (content!7469 lt!1511655) e!2648778)))

(declare-fun b!4266061 () Bool)

(assert (=> b!4266061 (= e!2648778 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4266062 () Bool)

(assert (=> b!4266062 (= e!2648778 (set.union (set.insert (h!52688 lt!1511655) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 lt!1511655))))))

(assert (= (and d!1257373 c!725180) b!4266061))

(assert (= (and d!1257373 (not c!725180)) b!4266062))

(declare-fun m!4857311 () Bool)

(assert (=> b!4266062 m!4857311))

(declare-fun m!4857313 () Bool)

(assert (=> b!4266062 m!4857313))

(assert (=> d!1257045 d!1257373))

(assert (=> d!1257045 d!1257327))

(assert (=> d!1257045 d!1256875))

(assert (=> b!4265231 d!1256587))

(declare-fun b!4266065 () Bool)

(declare-fun e!2648780 () List!47392)

(assert (=> b!4266065 (= e!2648780 (list!17077 (xs!17556 lt!1511642)))))

(declare-fun b!4266063 () Bool)

(declare-fun e!2648779 () List!47392)

(assert (=> b!4266063 (= e!2648779 Nil!47268)))

(declare-fun d!1257375 () Bool)

(declare-fun c!725181 () Bool)

(assert (=> d!1257375 (= c!725181 (is-Empty!14250 lt!1511642))))

(assert (=> d!1257375 (= (list!17075 lt!1511642) e!2648779)))

(declare-fun b!4266066 () Bool)

(assert (=> b!4266066 (= e!2648780 (++!12049 (list!17075 (left!35040 lt!1511642)) (list!17075 (right!35370 lt!1511642))))))

(declare-fun b!4266064 () Bool)

(assert (=> b!4266064 (= e!2648779 e!2648780)))

(declare-fun c!725182 () Bool)

(assert (=> b!4266064 (= c!725182 (is-Leaf!22031 lt!1511642))))

(assert (= (and d!1257375 c!725181) b!4266063))

(assert (= (and d!1257375 (not c!725181)) b!4266064))

(assert (= (and b!4266064 c!725182) b!4266065))

(assert (= (and b!4266064 (not c!725182)) b!4266066))

(declare-fun m!4857315 () Bool)

(assert (=> b!4266065 m!4857315))

(declare-fun m!4857317 () Bool)

(assert (=> b!4266066 m!4857317))

(declare-fun m!4857319 () Bool)

(assert (=> b!4266066 m!4857319))

(assert (=> b!4266066 m!4857317))

(assert (=> b!4266066 m!4857319))

(declare-fun m!4857321 () Bool)

(assert (=> b!4266066 m!4857321))

(assert (=> d!1256995 d!1257375))

(declare-fun d!1257377 () Bool)

(declare-fun e!2648781 () Bool)

(assert (=> d!1257377 e!2648781))

(declare-fun res!1753060 () Bool)

(assert (=> d!1257377 (=> (not res!1753060) (not e!2648781))))

(declare-fun res!1753061 () Conc!14250)

(assert (=> d!1257377 (= res!1753060 (= (list!17075 res!1753061) (Cons!47268 #x002A Nil!47268)))))

(declare-fun e!2648783 () Bool)

(assert (=> d!1257377 (and (inv!62190 res!1753061) e!2648783)))

(assert (=> d!1257377 (= (choose!25996 (Cons!47268 #x002A Nil!47268)) res!1753061)))

(declare-fun tp!1307485 () Bool)

(declare-fun b!4266067 () Bool)

(declare-fun tp!1307486 () Bool)

(assert (=> b!4266067 (= e!2648783 (and (inv!62190 (left!35040 res!1753061)) tp!1307486 (inv!62190 (right!35370 res!1753061)) tp!1307485))))

(declare-fun b!4266068 () Bool)

(assert (=> b!4266068 (= e!2648783 (inv!62196 (xs!17556 res!1753061)))))

(declare-fun b!4266069 () Bool)

(assert (=> b!4266069 (= e!2648781 (isBalanced!3809 res!1753061))))

(assert (= (and d!1257377 (is-Node!14250 res!1753061)) b!4266067))

(assert (= (and d!1257377 (is-Leaf!22031 res!1753061)) b!4266068))

(assert (= (and d!1257377 res!1753060) b!4266069))

(declare-fun m!4857323 () Bool)

(assert (=> d!1257377 m!4857323))

(declare-fun m!4857325 () Bool)

(assert (=> d!1257377 m!4857325))

(declare-fun m!4857327 () Bool)

(assert (=> b!4266067 m!4857327))

(declare-fun m!4857329 () Bool)

(assert (=> b!4266067 m!4857329))

(declare-fun m!4857331 () Bool)

(assert (=> b!4266068 m!4857331))

(declare-fun m!4857333 () Bool)

(assert (=> b!4266069 m!4857333))

(assert (=> d!1256995 d!1257377))

(assert (=> b!4265236 d!1256563))

(assert (=> b!4265194 d!1257271))

(assert (=> b!4265194 d!1257273))

(declare-fun b!4266073 () Bool)

(declare-fun e!2648784 () Bool)

(declare-fun lt!1511767 () List!47392)

(assert (=> b!4266073 (= e!2648784 (or (not (= (efficientList$default$2!146 (c!724708 x!738013)) Nil!47268)) (= lt!1511767 (t!353461 (list!17075 (right!35370 (c!724708 x!738013)))))))))

(declare-fun b!4266072 () Bool)

(declare-fun res!1753062 () Bool)

(assert (=> b!4266072 (=> (not res!1753062) (not e!2648784))))

(assert (=> b!4266072 (= res!1753062 (= (size!34622 lt!1511767) (+ (size!34622 (t!353461 (list!17075 (right!35370 (c!724708 x!738013))))) (size!34622 (efficientList$default$2!146 (c!724708 x!738013))))))))

(declare-fun b!4266071 () Bool)

(declare-fun e!2648785 () List!47392)

(assert (=> b!4266071 (= e!2648785 (Cons!47268 (h!52688 (t!353461 (list!17075 (right!35370 (c!724708 x!738013))))) (++!12049 (t!353461 (t!353461 (list!17075 (right!35370 (c!724708 x!738013))))) (efficientList$default$2!146 (c!724708 x!738013)))))))

(declare-fun b!4266070 () Bool)

(assert (=> b!4266070 (= e!2648785 (efficientList$default$2!146 (c!724708 x!738013)))))

(declare-fun d!1257379 () Bool)

(assert (=> d!1257379 e!2648784))

(declare-fun res!1753063 () Bool)

(assert (=> d!1257379 (=> (not res!1753063) (not e!2648784))))

(assert (=> d!1257379 (= res!1753063 (= (content!7469 lt!1511767) (set.union (content!7469 (t!353461 (list!17075 (right!35370 (c!724708 x!738013))))) (content!7469 (efficientList$default$2!146 (c!724708 x!738013))))))))

(assert (=> d!1257379 (= lt!1511767 e!2648785)))

(declare-fun c!725183 () Bool)

(assert (=> d!1257379 (= c!725183 (is-Nil!47268 (t!353461 (list!17075 (right!35370 (c!724708 x!738013))))))))

(assert (=> d!1257379 (= (++!12049 (t!353461 (list!17075 (right!35370 (c!724708 x!738013)))) (efficientList$default$2!146 (c!724708 x!738013))) lt!1511767)))

(assert (= (and d!1257379 c!725183) b!4266070))

(assert (= (and d!1257379 (not c!725183)) b!4266071))

(assert (= (and d!1257379 res!1753063) b!4266072))

(assert (= (and b!4266072 res!1753062) b!4266073))

(declare-fun m!4857335 () Bool)

(assert (=> b!4266072 m!4857335))

(assert (=> b!4266072 m!4856009))

(assert (=> b!4266072 m!4855135))

(assert (=> b!4266072 m!4855239))

(assert (=> b!4266071 m!4855135))

(declare-fun m!4857337 () Bool)

(assert (=> b!4266071 m!4857337))

(declare-fun m!4857339 () Bool)

(assert (=> d!1257379 m!4857339))

(assert (=> d!1257379 m!4855559))

(assert (=> d!1257379 m!4855135))

(assert (=> d!1257379 m!4855247))

(assert (=> b!4265391 d!1257379))

(declare-fun d!1257381 () Bool)

(declare-fun lt!1511768 () Int)

(assert (=> d!1257381 (>= lt!1511768 0)))

(declare-fun e!2648786 () Int)

(assert (=> d!1257381 (= lt!1511768 e!2648786)))

(declare-fun c!725184 () Bool)

(assert (=> d!1257381 (= c!725184 (is-Nil!47268 lt!1511610))))

(assert (=> d!1257381 (= (size!34622 lt!1511610) lt!1511768)))

(declare-fun b!4266074 () Bool)

(assert (=> b!4266074 (= e!2648786 0)))

(declare-fun b!4266075 () Bool)

(assert (=> b!4266075 (= e!2648786 (+ 1 (size!34622 (t!353461 lt!1511610))))))

(assert (= (and d!1257381 c!725184) b!4266074))

(assert (= (and d!1257381 (not c!725184)) b!4266075))

(declare-fun m!4857341 () Bool)

(assert (=> b!4266075 m!4857341))

(assert (=> b!4265419 d!1257381))

(assert (=> b!4265419 d!1257291))

(assert (=> b!4265419 d!1256857))

(declare-fun d!1257383 () Bool)

(assert (=> d!1257383 (= (++!12049 (++!12049 lt!1511565 lt!1511562) (efficientList$default$2!146 (c!724708 x!738013))) (++!12049 lt!1511565 (++!12049 lt!1511562 (efficientList$default$2!146 (c!724708 x!738013)))))))

(declare-fun lt!1511769 () Unit!66151)

(assert (=> d!1257383 (= lt!1511769 (choose!25997 lt!1511565 lt!1511562 (efficientList$default$2!146 (c!724708 x!738013))))))

(assert (=> d!1257383 (= (lemmaConcatAssociativity!2693 lt!1511565 lt!1511562 (efficientList$default$2!146 (c!724708 x!738013))) lt!1511769)))

(declare-fun bs!599319 () Bool)

(assert (= bs!599319 d!1257383))

(assert (=> bs!599319 m!4855635))

(assert (=> bs!599319 m!4855635))

(assert (=> bs!599319 m!4855135))

(assert (=> bs!599319 m!4855645))

(assert (=> bs!599319 m!4855135))

(declare-fun m!4857343 () Bool)

(assert (=> bs!599319 m!4857343))

(assert (=> bs!599319 m!4855135))

(declare-fun m!4857345 () Bool)

(assert (=> bs!599319 m!4857345))

(assert (=> bs!599319 m!4857343))

(declare-fun m!4857347 () Bool)

(assert (=> bs!599319 m!4857347))

(assert (=> b!4265219 d!1257383))

(assert (=> b!4265219 d!1257073))

(assert (=> b!4265219 d!1257075))

(declare-fun e!2648787 () Bool)

(declare-fun lt!1511770 () List!47392)

(declare-fun b!4266079 () Bool)

(assert (=> b!4266079 (= e!2648787 (or (not (= lt!1511562 Nil!47268)) (= lt!1511770 lt!1511565)))))

(declare-fun b!4266078 () Bool)

(declare-fun res!1753064 () Bool)

(assert (=> b!4266078 (=> (not res!1753064) (not e!2648787))))

(assert (=> b!4266078 (= res!1753064 (= (size!34622 lt!1511770) (+ (size!34622 lt!1511565) (size!34622 lt!1511562))))))

(declare-fun b!4266077 () Bool)

(declare-fun e!2648788 () List!47392)

(assert (=> b!4266077 (= e!2648788 (Cons!47268 (h!52688 lt!1511565) (++!12049 (t!353461 lt!1511565) lt!1511562)))))

(declare-fun b!4266076 () Bool)

(assert (=> b!4266076 (= e!2648788 lt!1511562)))

(declare-fun d!1257385 () Bool)

(assert (=> d!1257385 e!2648787))

(declare-fun res!1753065 () Bool)

(assert (=> d!1257385 (=> (not res!1753065) (not e!2648787))))

(assert (=> d!1257385 (= res!1753065 (= (content!7469 lt!1511770) (set.union (content!7469 lt!1511565) (content!7469 lt!1511562))))))

(assert (=> d!1257385 (= lt!1511770 e!2648788)))

(declare-fun c!725185 () Bool)

(assert (=> d!1257385 (= c!725185 (is-Nil!47268 lt!1511565))))

(assert (=> d!1257385 (= (++!12049 lt!1511565 lt!1511562) lt!1511770)))

(assert (= (and d!1257385 c!725185) b!4266076))

(assert (= (and d!1257385 (not c!725185)) b!4266077))

(assert (= (and d!1257385 res!1753065) b!4266078))

(assert (= (and b!4266078 res!1753064) b!4266079))

(declare-fun m!4857349 () Bool)

(assert (=> b!4266078 m!4857349))

(declare-fun m!4857351 () Bool)

(assert (=> b!4266078 m!4857351))

(declare-fun m!4857353 () Bool)

(assert (=> b!4266078 m!4857353))

(declare-fun m!4857355 () Bool)

(assert (=> b!4266077 m!4857355))

(declare-fun m!4857357 () Bool)

(assert (=> d!1257385 m!4857357))

(declare-fun m!4857359 () Bool)

(assert (=> d!1257385 m!4857359))

(declare-fun m!4857361 () Bool)

(assert (=> d!1257385 m!4857361))

(assert (=> b!4265219 d!1257385))

(declare-fun b!4266080 () Bool)

(declare-fun e!2648789 () List!47392)

(declare-fun lt!1511771 () List!47392)

(assert (=> b!4266080 (= e!2648789 lt!1511771)))

(declare-fun d!1257387 () Bool)

(declare-fun lt!1511775 () List!47392)

(assert (=> d!1257387 (= lt!1511775 (++!12049 (list!17075 (left!35040 (right!35370 (c!724708 x!738013)))) (efficientList!419 (right!35370 (right!35370 (c!724708 x!738013))) (efficientList$default$2!146 (c!724708 x!738013)))))))

(declare-fun e!2648790 () List!47392)

(assert (=> d!1257387 (= lt!1511775 e!2648790)))

(declare-fun c!725187 () Bool)

(assert (=> d!1257387 (= c!725187 (is-Empty!14250 (left!35040 (right!35370 (c!724708 x!738013)))))))

(assert (=> d!1257387 (= (efficientList!419 (left!35040 (right!35370 (c!724708 x!738013))) (efficientList!419 (right!35370 (right!35370 (c!724708 x!738013))) (efficientList$default$2!146 (c!724708 x!738013)))) lt!1511775)))

(declare-fun b!4266081 () Bool)

(declare-fun e!2648791 () List!47392)

(declare-fun call!294053 () List!47392)

(assert (=> b!4266081 (= e!2648791 call!294053)))

(declare-fun bm!294048 () Bool)

(declare-fun c!725186 () Bool)

(declare-fun c!725188 () Bool)

(assert (=> bm!294048 (= c!725186 c!725188)))

(assert (=> bm!294048 (= call!294053 (++!12049 e!2648789 (efficientList!419 (right!35370 (right!35370 (c!724708 x!738013))) (efficientList$default$2!146 (c!724708 x!738013)))))))

(declare-fun b!4266082 () Bool)

(assert (=> b!4266082 (= e!2648790 e!2648791)))

(assert (=> b!4266082 (= c!725188 (is-Leaf!22031 (left!35040 (right!35370 (c!724708 x!738013)))))))

(declare-fun b!4266083 () Bool)

(assert (=> b!4266083 (= e!2648789 (efficientList!421 (xs!17556 (left!35040 (right!35370 (c!724708 x!738013))))))))

(declare-fun b!4266084 () Bool)

(assert (=> b!4266084 (= e!2648790 (efficientList!419 (right!35370 (right!35370 (c!724708 x!738013))) (efficientList$default$2!146 (c!724708 x!738013))))))

(declare-fun b!4266085 () Bool)

(declare-fun lt!1511772 () Unit!66151)

(declare-fun lt!1511773 () Unit!66151)

(assert (=> b!4266085 (= lt!1511772 lt!1511773)))

(declare-fun lt!1511774 () List!47392)

(assert (=> b!4266085 (= (++!12049 (++!12049 lt!1511774 lt!1511771) (efficientList!419 (right!35370 (right!35370 (c!724708 x!738013))) (efficientList$default$2!146 (c!724708 x!738013)))) (++!12049 lt!1511774 call!294053))))

(assert (=> b!4266085 (= lt!1511773 (lemmaConcatAssociativity!2693 lt!1511774 lt!1511771 (efficientList!419 (right!35370 (right!35370 (c!724708 x!738013))) (efficientList$default$2!146 (c!724708 x!738013)))))))

(assert (=> b!4266085 (= lt!1511771 (list!17075 (right!35370 (left!35040 (right!35370 (c!724708 x!738013))))))))

(assert (=> b!4266085 (= lt!1511774 (list!17075 (left!35040 (left!35040 (right!35370 (c!724708 x!738013))))))))

(assert (=> b!4266085 (= e!2648791 (efficientList!419 (left!35040 (left!35040 (right!35370 (c!724708 x!738013)))) (efficientList!419 (right!35370 (left!35040 (right!35370 (c!724708 x!738013)))) (efficientList!419 (right!35370 (right!35370 (c!724708 x!738013))) (efficientList$default$2!146 (c!724708 x!738013))))))))

(assert (= (and d!1257387 c!725187) b!4266084))

(assert (= (and d!1257387 (not c!725187)) b!4266082))

(assert (= (and b!4266082 c!725188) b!4266081))

(assert (= (and b!4266082 (not c!725188)) b!4266085))

(assert (= (or b!4266081 b!4266085) bm!294048))

(assert (= (and bm!294048 c!725186) b!4266083))

(assert (= (and bm!294048 (not c!725186)) b!4266080))

(assert (=> d!1257387 m!4855317))

(assert (=> d!1257387 m!4855317))

(assert (=> d!1257387 m!4855637))

(declare-fun m!4857363 () Bool)

(assert (=> d!1257387 m!4857363))

(assert (=> bm!294048 m!4855637))

(declare-fun m!4857365 () Bool)

(assert (=> bm!294048 m!4857365))

(declare-fun m!4857367 () Bool)

(assert (=> b!4266083 m!4857367))

(declare-fun m!4857369 () Bool)

(assert (=> b!4266085 m!4857369))

(assert (=> b!4266085 m!4856549))

(declare-fun m!4857371 () Bool)

(assert (=> b!4266085 m!4857371))

(declare-fun m!4857373 () Bool)

(assert (=> b!4266085 m!4857373))

(assert (=> b!4266085 m!4855637))

(declare-fun m!4857375 () Bool)

(assert (=> b!4266085 m!4857375))

(declare-fun m!4857377 () Bool)

(assert (=> b!4266085 m!4857377))

(assert (=> b!4266085 m!4857369))

(assert (=> b!4266085 m!4855637))

(declare-fun m!4857379 () Bool)

(assert (=> b!4266085 m!4857379))

(assert (=> b!4266085 m!4855637))

(assert (=> b!4266085 m!4857371))

(assert (=> b!4266085 m!4856547))

(assert (=> b!4265219 d!1257387))

(declare-fun e!2648792 () Bool)

(declare-fun b!4266089 () Bool)

(declare-fun lt!1511776 () List!47392)

(assert (=> b!4266089 (= e!2648792 (or (not (= (efficientList$default$2!146 (c!724708 x!738013)) Nil!47268)) (= lt!1511776 (++!12049 lt!1511565 lt!1511562))))))

(declare-fun b!4266088 () Bool)

(declare-fun res!1753066 () Bool)

(assert (=> b!4266088 (=> (not res!1753066) (not e!2648792))))

(assert (=> b!4266088 (= res!1753066 (= (size!34622 lt!1511776) (+ (size!34622 (++!12049 lt!1511565 lt!1511562)) (size!34622 (efficientList$default$2!146 (c!724708 x!738013))))))))

(declare-fun e!2648793 () List!47392)

(declare-fun b!4266087 () Bool)

(assert (=> b!4266087 (= e!2648793 (Cons!47268 (h!52688 (++!12049 lt!1511565 lt!1511562)) (++!12049 (t!353461 (++!12049 lt!1511565 lt!1511562)) (efficientList$default$2!146 (c!724708 x!738013)))))))

(declare-fun b!4266086 () Bool)

(assert (=> b!4266086 (= e!2648793 (efficientList$default$2!146 (c!724708 x!738013)))))

(declare-fun d!1257389 () Bool)

(assert (=> d!1257389 e!2648792))

(declare-fun res!1753067 () Bool)

(assert (=> d!1257389 (=> (not res!1753067) (not e!2648792))))

(assert (=> d!1257389 (= res!1753067 (= (content!7469 lt!1511776) (set.union (content!7469 (++!12049 lt!1511565 lt!1511562)) (content!7469 (efficientList$default$2!146 (c!724708 x!738013))))))))

(assert (=> d!1257389 (= lt!1511776 e!2648793)))

(declare-fun c!725189 () Bool)

(assert (=> d!1257389 (= c!725189 (is-Nil!47268 (++!12049 lt!1511565 lt!1511562)))))

(assert (=> d!1257389 (= (++!12049 (++!12049 lt!1511565 lt!1511562) (efficientList$default$2!146 (c!724708 x!738013))) lt!1511776)))

(assert (= (and d!1257389 c!725189) b!4266086))

(assert (= (and d!1257389 (not c!725189)) b!4266087))

(assert (= (and d!1257389 res!1753067) b!4266088))

(assert (= (and b!4266088 res!1753066) b!4266089))

(declare-fun m!4857381 () Bool)

(assert (=> b!4266088 m!4857381))

(assert (=> b!4266088 m!4855635))

(declare-fun m!4857383 () Bool)

(assert (=> b!4266088 m!4857383))

(assert (=> b!4266088 m!4855135))

(assert (=> b!4266088 m!4855239))

(assert (=> b!4266087 m!4855135))

(declare-fun m!4857385 () Bool)

(assert (=> b!4266087 m!4857385))

(declare-fun m!4857387 () Bool)

(assert (=> d!1257389 m!4857387))

(assert (=> d!1257389 m!4855635))

(declare-fun m!4857389 () Bool)

(assert (=> d!1257389 m!4857389))

(assert (=> d!1257389 m!4855135))

(assert (=> d!1257389 m!4855247))

(assert (=> b!4265219 d!1257389))

(declare-fun b!4266090 () Bool)

(declare-fun e!2648794 () List!47392)

(declare-fun lt!1511777 () List!47392)

(assert (=> b!4266090 (= e!2648794 lt!1511777)))

(declare-fun d!1257391 () Bool)

(declare-fun lt!1511781 () List!47392)

(assert (=> d!1257391 (= lt!1511781 (++!12049 (list!17075 (right!35370 (right!35370 (c!724708 x!738013)))) (efficientList$default$2!146 (c!724708 x!738013))))))

(declare-fun e!2648795 () List!47392)

(assert (=> d!1257391 (= lt!1511781 e!2648795)))

(declare-fun c!725191 () Bool)

(assert (=> d!1257391 (= c!725191 (is-Empty!14250 (right!35370 (right!35370 (c!724708 x!738013)))))))

(assert (=> d!1257391 (= (efficientList!419 (right!35370 (right!35370 (c!724708 x!738013))) (efficientList$default$2!146 (c!724708 x!738013))) lt!1511781)))

(declare-fun b!4266091 () Bool)

(declare-fun e!2648796 () List!47392)

(declare-fun call!294054 () List!47392)

(assert (=> b!4266091 (= e!2648796 call!294054)))

(declare-fun bm!294049 () Bool)

(declare-fun c!725190 () Bool)

(declare-fun c!725192 () Bool)

(assert (=> bm!294049 (= c!725190 c!725192)))

(assert (=> bm!294049 (= call!294054 (++!12049 e!2648794 (efficientList$default$2!146 (c!724708 x!738013))))))

(declare-fun b!4266092 () Bool)

(assert (=> b!4266092 (= e!2648795 e!2648796)))

(assert (=> b!4266092 (= c!725192 (is-Leaf!22031 (right!35370 (right!35370 (c!724708 x!738013)))))))

(declare-fun b!4266093 () Bool)

(assert (=> b!4266093 (= e!2648794 (efficientList!421 (xs!17556 (right!35370 (right!35370 (c!724708 x!738013))))))))

(declare-fun b!4266094 () Bool)

(assert (=> b!4266094 (= e!2648795 (efficientList$default$2!146 (c!724708 x!738013)))))

(declare-fun b!4266095 () Bool)

(declare-fun lt!1511778 () Unit!66151)

(declare-fun lt!1511779 () Unit!66151)

(assert (=> b!4266095 (= lt!1511778 lt!1511779)))

(declare-fun lt!1511780 () List!47392)

(assert (=> b!4266095 (= (++!12049 (++!12049 lt!1511780 lt!1511777) (efficientList$default$2!146 (c!724708 x!738013))) (++!12049 lt!1511780 call!294054))))

(assert (=> b!4266095 (= lt!1511779 (lemmaConcatAssociativity!2693 lt!1511780 lt!1511777 (efficientList$default$2!146 (c!724708 x!738013))))))

(assert (=> b!4266095 (= lt!1511777 (list!17075 (right!35370 (right!35370 (right!35370 (c!724708 x!738013))))))))

(assert (=> b!4266095 (= lt!1511780 (list!17075 (left!35040 (right!35370 (right!35370 (c!724708 x!738013))))))))

(assert (=> b!4266095 (= e!2648796 (efficientList!419 (left!35040 (right!35370 (right!35370 (c!724708 x!738013)))) (efficientList!419 (right!35370 (right!35370 (right!35370 (c!724708 x!738013)))) (efficientList$default$2!146 (c!724708 x!738013)))))))

(assert (= (and d!1257391 c!725191) b!4266094))

(assert (= (and d!1257391 (not c!725191)) b!4266092))

(assert (= (and b!4266092 c!725192) b!4266091))

(assert (= (and b!4266092 (not c!725192)) b!4266095))

(assert (= (or b!4266091 b!4266095) bm!294049))

(assert (= (and bm!294049 c!725190) b!4266093))

(assert (= (and bm!294049 (not c!725190)) b!4266090))

(assert (=> d!1257391 m!4855319))

(assert (=> d!1257391 m!4855319))

(assert (=> d!1257391 m!4855135))

(declare-fun m!4857391 () Bool)

(assert (=> d!1257391 m!4857391))

(assert (=> bm!294049 m!4855135))

(declare-fun m!4857393 () Bool)

(assert (=> bm!294049 m!4857393))

(declare-fun m!4857395 () Bool)

(assert (=> b!4266093 m!4857395))

(declare-fun m!4857397 () Bool)

(assert (=> b!4266095 m!4857397))

(assert (=> b!4266095 m!4856557))

(declare-fun m!4857399 () Bool)

(assert (=> b!4266095 m!4857399))

(declare-fun m!4857401 () Bool)

(assert (=> b!4266095 m!4857401))

(assert (=> b!4266095 m!4855135))

(declare-fun m!4857403 () Bool)

(assert (=> b!4266095 m!4857403))

(declare-fun m!4857405 () Bool)

(assert (=> b!4266095 m!4857405))

(assert (=> b!4266095 m!4857397))

(assert (=> b!4266095 m!4855135))

(declare-fun m!4857407 () Bool)

(assert (=> b!4266095 m!4857407))

(assert (=> b!4266095 m!4855135))

(assert (=> b!4266095 m!4857399))

(assert (=> b!4266095 m!4856555))

(assert (=> b!4265219 d!1257391))

(declare-fun b!4266099 () Bool)

(declare-fun lt!1511782 () List!47392)

(declare-fun e!2648797 () Bool)

(assert (=> b!4266099 (= e!2648797 (or (not (= call!294046 Nil!47268)) (= lt!1511782 lt!1511565)))))

(declare-fun b!4266098 () Bool)

(declare-fun res!1753068 () Bool)

(assert (=> b!4266098 (=> (not res!1753068) (not e!2648797))))

(assert (=> b!4266098 (= res!1753068 (= (size!34622 lt!1511782) (+ (size!34622 lt!1511565) (size!34622 call!294046))))))

(declare-fun b!4266097 () Bool)

(declare-fun e!2648798 () List!47392)

(assert (=> b!4266097 (= e!2648798 (Cons!47268 (h!52688 lt!1511565) (++!12049 (t!353461 lt!1511565) call!294046)))))

(declare-fun b!4266096 () Bool)

(assert (=> b!4266096 (= e!2648798 call!294046)))

(declare-fun d!1257393 () Bool)

(assert (=> d!1257393 e!2648797))

(declare-fun res!1753069 () Bool)

(assert (=> d!1257393 (=> (not res!1753069) (not e!2648797))))

(assert (=> d!1257393 (= res!1753069 (= (content!7469 lt!1511782) (set.union (content!7469 lt!1511565) (content!7469 call!294046))))))

(assert (=> d!1257393 (= lt!1511782 e!2648798)))

(declare-fun c!725193 () Bool)

(assert (=> d!1257393 (= c!725193 (is-Nil!47268 lt!1511565))))

(assert (=> d!1257393 (= (++!12049 lt!1511565 call!294046) lt!1511782)))

(assert (= (and d!1257393 c!725193) b!4266096))

(assert (= (and d!1257393 (not c!725193)) b!4266097))

(assert (= (and d!1257393 res!1753069) b!4266098))

(assert (= (and b!4266098 res!1753068) b!4266099))

(declare-fun m!4857409 () Bool)

(assert (=> b!4266098 m!4857409))

(assert (=> b!4266098 m!4857351))

(declare-fun m!4857411 () Bool)

(assert (=> b!4266098 m!4857411))

(declare-fun m!4857413 () Bool)

(assert (=> b!4266097 m!4857413))

(declare-fun m!4857415 () Bool)

(assert (=> d!1257393 m!4857415))

(assert (=> d!1257393 m!4857359))

(declare-fun m!4857417 () Bool)

(assert (=> d!1257393 m!4857417))

(assert (=> b!4265219 d!1257393))

(assert (=> b!4265412 d!1257369))

(declare-fun d!1257395 () Bool)

(declare-fun c!725194 () Bool)

(assert (=> d!1257395 (= c!725194 (is-Nil!47268 lt!1511636))))

(declare-fun e!2648799 () (Set (_ BitVec 16)))

(assert (=> d!1257395 (= (content!7469 lt!1511636) e!2648799)))

(declare-fun b!4266100 () Bool)

(assert (=> b!4266100 (= e!2648799 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4266101 () Bool)

(assert (=> b!4266101 (= e!2648799 (set.union (set.insert (h!52688 lt!1511636) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 lt!1511636))))))

(assert (= (and d!1257395 c!725194) b!4266100))

(assert (= (and d!1257395 (not c!725194)) b!4266101))

(declare-fun m!4857419 () Bool)

(assert (=> b!4266101 m!4857419))

(declare-fun m!4857421 () Bool)

(assert (=> b!4266101 m!4857421))

(assert (=> d!1256981 d!1257395))

(declare-fun d!1257397 () Bool)

(declare-fun c!725195 () Bool)

(assert (=> d!1257397 (= c!725195 (is-Nil!47268 (list!17075 (left!35040 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(declare-fun e!2648800 () (Set (_ BitVec 16)))

(assert (=> d!1257397 (= (content!7469 (list!17075 (left!35040 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) e!2648800)))

(declare-fun b!4266102 () Bool)

(assert (=> b!4266102 (= e!2648800 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4266103 () Bool)

(assert (=> b!4266103 (= e!2648800 (set.union (set.insert (h!52688 (list!17075 (left!35040 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (list!17075 (left!35040 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))))

(assert (= (and d!1257397 c!725195) b!4266102))

(assert (= (and d!1257397 (not c!725195)) b!4266103))

(declare-fun m!4857423 () Bool)

(assert (=> b!4266103 m!4857423))

(declare-fun m!4857425 () Bool)

(assert (=> b!4266103 m!4857425))

(assert (=> d!1256981 d!1257397))

(declare-fun d!1257399 () Bool)

(declare-fun c!725196 () Bool)

(assert (=> d!1257399 (= c!725196 (is-Nil!47268 (list!17075 (right!35370 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(declare-fun e!2648801 () (Set (_ BitVec 16)))

(assert (=> d!1257399 (= (content!7469 (list!17075 (right!35370 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) e!2648801)))

(declare-fun b!4266104 () Bool)

(assert (=> b!4266104 (= e!2648801 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4266105 () Bool)

(assert (=> b!4266105 (= e!2648801 (set.union (set.insert (h!52688 (list!17075 (right!35370 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (list!17075 (right!35370 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))))

(assert (= (and d!1257399 c!725196) b!4266104))

(assert (= (and d!1257399 (not c!725196)) b!4266105))

(declare-fun m!4857427 () Bool)

(assert (=> b!4266105 m!4857427))

(declare-fun m!4857429 () Bool)

(assert (=> b!4266105 m!4857429))

(assert (=> d!1256981 d!1257399))

(declare-fun d!1257401 () Bool)

(assert (=> d!1257401 (= (height!1875 (left!35040 (fromList!917 (Cons!47268 #x002B Nil!47268)))) (ite (is-Empty!14250 (left!35040 (fromList!917 (Cons!47268 #x002B Nil!47268)))) 0 (ite (is-Leaf!22031 (left!35040 (fromList!917 (Cons!47268 #x002B Nil!47268)))) 1 (cheight!14461 (left!35040 (fromList!917 (Cons!47268 #x002B Nil!47268)))))))))

(assert (=> b!4265403 d!1257401))

(declare-fun d!1257403 () Bool)

(assert (=> d!1257403 (= (height!1875 (right!35370 (fromList!917 (Cons!47268 #x002B Nil!47268)))) (ite (is-Empty!14250 (right!35370 (fromList!917 (Cons!47268 #x002B Nil!47268)))) 0 (ite (is-Leaf!22031 (right!35370 (fromList!917 (Cons!47268 #x002B Nil!47268)))) 1 (cheight!14461 (right!35370 (fromList!917 (Cons!47268 #x002B Nil!47268)))))))))

(assert (=> b!4265403 d!1257403))

(declare-fun b!4266108 () Bool)

(declare-fun e!2648803 () List!47392)

(assert (=> b!4266108 (= e!2648803 (list!17077 (xs!17556 res!1752931)))))

(declare-fun b!4266106 () Bool)

(declare-fun e!2648802 () List!47392)

(assert (=> b!4266106 (= e!2648802 Nil!47268)))

(declare-fun d!1257405 () Bool)

(declare-fun c!725197 () Bool)

(assert (=> d!1257405 (= c!725197 (is-Empty!14250 res!1752931))))

(assert (=> d!1257405 (= (list!17075 res!1752931) e!2648802)))

(declare-fun b!4266109 () Bool)

(assert (=> b!4266109 (= e!2648803 (++!12049 (list!17075 (left!35040 res!1752931)) (list!17075 (right!35370 res!1752931))))))

(declare-fun b!4266107 () Bool)

(assert (=> b!4266107 (= e!2648802 e!2648803)))

(declare-fun c!725198 () Bool)

(assert (=> b!4266107 (= c!725198 (is-Leaf!22031 res!1752931))))

(assert (= (and d!1257405 c!725197) b!4266106))

(assert (= (and d!1257405 (not c!725197)) b!4266107))

(assert (= (and b!4266107 c!725198) b!4266108))

(assert (= (and b!4266107 (not c!725198)) b!4266109))

(declare-fun m!4857431 () Bool)

(assert (=> b!4266108 m!4857431))

(declare-fun m!4857433 () Bool)

(assert (=> b!4266109 m!4857433))

(declare-fun m!4857435 () Bool)

(assert (=> b!4266109 m!4857435))

(assert (=> b!4266109 m!4857433))

(assert (=> b!4266109 m!4857435))

(declare-fun m!4857437 () Bool)

(assert (=> b!4266109 m!4857437))

(assert (=> d!1256973 d!1257405))

(declare-fun d!1257407 () Bool)

(declare-fun c!725199 () Bool)

(assert (=> d!1257407 (= c!725199 (is-Node!14250 res!1752931))))

(declare-fun e!2648804 () Bool)

(assert (=> d!1257407 (= (inv!62190 res!1752931) e!2648804)))

(declare-fun b!4266110 () Bool)

(assert (=> b!4266110 (= e!2648804 (inv!62194 res!1752931))))

(declare-fun b!4266111 () Bool)

(declare-fun e!2648805 () Bool)

(assert (=> b!4266111 (= e!2648804 e!2648805)))

(declare-fun res!1753070 () Bool)

(assert (=> b!4266111 (= res!1753070 (not (is-Leaf!22031 res!1752931)))))

(assert (=> b!4266111 (=> res!1753070 e!2648805)))

(declare-fun b!4266112 () Bool)

(assert (=> b!4266112 (= e!2648805 (inv!62195 res!1752931))))

(assert (= (and d!1257407 c!725199) b!4266110))

(assert (= (and d!1257407 (not c!725199)) b!4266111))

(assert (= (and b!4266111 (not res!1753070)) b!4266112))

(declare-fun m!4857439 () Bool)

(assert (=> b!4266110 m!4857439))

(declare-fun m!4857441 () Bool)

(assert (=> b!4266112 m!4857441))

(assert (=> d!1256973 d!1257407))

(declare-fun b!4266116 () Bool)

(declare-fun e!2648806 () Bool)

(declare-fun lt!1511783 () List!47392)

(assert (=> b!4266116 (= e!2648806 (or (not (= (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013))) Nil!47268)) (= lt!1511783 e!2648332)))))

(declare-fun b!4266115 () Bool)

(declare-fun res!1753071 () Bool)

(assert (=> b!4266115 (=> (not res!1753071) (not e!2648806))))

(assert (=> b!4266115 (= res!1753071 (= (size!34622 lt!1511783) (+ (size!34622 e!2648332) (size!34622 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))))))))

(declare-fun b!4266114 () Bool)

(declare-fun e!2648807 () List!47392)

(assert (=> b!4266114 (= e!2648807 (Cons!47268 (h!52688 e!2648332) (++!12049 (t!353461 e!2648332) (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013))))))))

(declare-fun b!4266113 () Bool)

(assert (=> b!4266113 (= e!2648807 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013))))))

(declare-fun d!1257409 () Bool)

(assert (=> d!1257409 e!2648806))

(declare-fun res!1753072 () Bool)

(assert (=> d!1257409 (=> (not res!1753072) (not e!2648806))))

(assert (=> d!1257409 (= res!1753072 (= (content!7469 lt!1511783) (set.union (content!7469 e!2648332) (content!7469 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))))))))

(assert (=> d!1257409 (= lt!1511783 e!2648807)))

(declare-fun c!725200 () Bool)

(assert (=> d!1257409 (= c!725200 (is-Nil!47268 e!2648332))))

(assert (=> d!1257409 (= (++!12049 e!2648332 (efficientList!419 (right!35370 (c!724708 x!738013)) (efficientList$default$2!146 (c!724708 x!738013)))) lt!1511783)))

(assert (= (and d!1257409 c!725200) b!4266113))

(assert (= (and d!1257409 (not c!725200)) b!4266114))

(assert (= (and d!1257409 res!1753072) b!4266115))

(assert (= (and b!4266115 res!1753071) b!4266116))

(declare-fun m!4857443 () Bool)

(assert (=> b!4266115 m!4857443))

(declare-fun m!4857445 () Bool)

(assert (=> b!4266115 m!4857445))

(assert (=> b!4266115 m!4855169))

(assert (=> b!4266115 m!4855947))

(assert (=> b!4266114 m!4855169))

(declare-fun m!4857447 () Bool)

(assert (=> b!4266114 m!4857447))

(declare-fun m!4857449 () Bool)

(assert (=> d!1257409 m!4857449))

(declare-fun m!4857451 () Bool)

(assert (=> d!1257409 m!4857451))

(assert (=> d!1257409 m!4855169))

(assert (=> d!1257409 m!4855953))

(assert (=> bm!294040 d!1257409))

(declare-fun d!1257411 () Bool)

(declare-fun res!1753078 () Bool)

(declare-fun e!2648808 () Bool)

(assert (=> d!1257411 (=> res!1753078 e!2648808)))

(assert (=> d!1257411 (= res!1753078 (not (is-Node!14250 (left!35040 (c!724708 x!738013)))))))

(assert (=> d!1257411 (= (isBalanced!3809 (left!35040 (c!724708 x!738013))) e!2648808)))

(declare-fun b!4266117 () Bool)

(declare-fun e!2648809 () Bool)

(assert (=> b!4266117 (= e!2648808 e!2648809)))

(declare-fun res!1753074 () Bool)

(assert (=> b!4266117 (=> (not res!1753074) (not e!2648809))))

(assert (=> b!4266117 (= res!1753074 (<= (- 1) (- (height!1875 (left!35040 (left!35040 (c!724708 x!738013)))) (height!1875 (right!35370 (left!35040 (c!724708 x!738013)))))))))

(declare-fun b!4266118 () Bool)

(declare-fun res!1753075 () Bool)

(assert (=> b!4266118 (=> (not res!1753075) (not e!2648809))))

(assert (=> b!4266118 (= res!1753075 (isBalanced!3809 (left!35040 (left!35040 (c!724708 x!738013)))))))

(declare-fun b!4266119 () Bool)

(declare-fun res!1753077 () Bool)

(assert (=> b!4266119 (=> (not res!1753077) (not e!2648809))))

(assert (=> b!4266119 (= res!1753077 (<= (- (height!1875 (left!35040 (left!35040 (c!724708 x!738013)))) (height!1875 (right!35370 (left!35040 (c!724708 x!738013))))) 1))))

(declare-fun b!4266120 () Bool)

(assert (=> b!4266120 (= e!2648809 (not (isEmpty!27994 (right!35370 (left!35040 (c!724708 x!738013))))))))

(declare-fun b!4266121 () Bool)

(declare-fun res!1753076 () Bool)

(assert (=> b!4266121 (=> (not res!1753076) (not e!2648809))))

(assert (=> b!4266121 (= res!1753076 (isBalanced!3809 (right!35370 (left!35040 (c!724708 x!738013)))))))

(declare-fun b!4266122 () Bool)

(declare-fun res!1753073 () Bool)

(assert (=> b!4266122 (=> (not res!1753073) (not e!2648809))))

(assert (=> b!4266122 (= res!1753073 (not (isEmpty!27994 (left!35040 (left!35040 (c!724708 x!738013))))))))

(assert (= (and d!1257411 (not res!1753078)) b!4266117))

(assert (= (and b!4266117 res!1753074) b!4266119))

(assert (= (and b!4266119 res!1753077) b!4266118))

(assert (= (and b!4266118 res!1753075) b!4266121))

(assert (= (and b!4266121 res!1753076) b!4266122))

(assert (= (and b!4266122 res!1753073) b!4266120))

(assert (=> b!4266117 m!4857253))

(assert (=> b!4266117 m!4857255))

(declare-fun m!4857453 () Bool)

(assert (=> b!4266121 m!4857453))

(declare-fun m!4857455 () Bool)

(assert (=> b!4266118 m!4857455))

(declare-fun m!4857457 () Bool)

(assert (=> b!4266120 m!4857457))

(assert (=> b!4266119 m!4857253))

(assert (=> b!4266119 m!4857255))

(declare-fun m!4857459 () Bool)

(assert (=> b!4266122 m!4857459))

(assert (=> b!4265195 d!1257411))

(assert (=> b!4264988 d!1256675))

(assert (=> b!4264988 d!1256677))

(declare-fun d!1257413 () Bool)

(declare-fun lt!1511784 () Int)

(assert (=> d!1257413 (>= lt!1511784 0)))

(declare-fun e!2648810 () Int)

(assert (=> d!1257413 (= lt!1511784 e!2648810)))

(declare-fun c!725201 () Bool)

(assert (=> d!1257413 (= c!725201 (is-Nil!47268 lt!1511603))))

(assert (=> d!1257413 (= (size!34622 lt!1511603) lt!1511784)))

(declare-fun b!4266123 () Bool)

(assert (=> b!4266123 (= e!2648810 0)))

(declare-fun b!4266124 () Bool)

(assert (=> b!4266124 (= e!2648810 (+ 1 (size!34622 (t!353461 lt!1511603))))))

(assert (= (and d!1257413 c!725201) b!4266123))

(assert (= (and d!1257413 (not c!725201)) b!4266124))

(declare-fun m!4857461 () Bool)

(assert (=> b!4266124 m!4857461))

(assert (=> b!4265392 d!1257413))

(assert (=> b!4265392 d!1256857))

(assert (=> b!4265392 d!1256661))

(declare-fun d!1257415 () Bool)

(declare-fun c!725202 () Bool)

(assert (=> d!1257415 (= c!725202 (is-Nil!47268 lt!1511648))))

(declare-fun e!2648811 () (Set (_ BitVec 16)))

(assert (=> d!1257415 (= (content!7469 lt!1511648) e!2648811)))

(declare-fun b!4266125 () Bool)

(assert (=> b!4266125 (= e!2648811 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4266126 () Bool)

(assert (=> b!4266126 (= e!2648811 (set.union (set.insert (h!52688 lt!1511648) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 lt!1511648))))))

(assert (= (and d!1257415 c!725202) b!4266125))

(assert (= (and d!1257415 (not c!725202)) b!4266126))

(declare-fun m!4857463 () Bool)

(assert (=> b!4266126 m!4857463))

(declare-fun m!4857465 () Bool)

(assert (=> b!4266126 m!4857465))

(assert (=> d!1257027 d!1257415))

(declare-fun d!1257417 () Bool)

(declare-fun c!725203 () Bool)

(assert (=> d!1257417 (= c!725203 (is-Nil!47268 (t!353461 (t!353461 (list!17075 (c!724708 x!738013))))))))

(declare-fun e!2648812 () (Set (_ BitVec 16)))

(assert (=> d!1257417 (= (content!7469 (t!353461 (t!353461 (list!17075 (c!724708 x!738013))))) e!2648812)))

(declare-fun b!4266127 () Bool)

(assert (=> b!4266127 (= e!2648812 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4266128 () Bool)

(assert (=> b!4266128 (= e!2648812 (set.union (set.insert (h!52688 (t!353461 (t!353461 (list!17075 (c!724708 x!738013))))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (t!353461 (t!353461 (list!17075 (c!724708 x!738013))))))))))

(assert (= (and d!1257417 c!725203) b!4266127))

(assert (= (and d!1257417 (not c!725203)) b!4266128))

(declare-fun m!4857467 () Bool)

(assert (=> b!4266128 m!4857467))

(declare-fun m!4857469 () Bool)

(assert (=> b!4266128 m!4857469))

(assert (=> d!1257027 d!1257417))

(assert (=> d!1257027 d!1256599))

(assert (=> b!4265229 d!1256577))

(assert (=> b!4265440 d!1257417))

(declare-fun d!1257419 () Bool)

(declare-fun res!1753079 () Bool)

(declare-fun e!2648813 () Bool)

(assert (=> d!1257419 (=> (not res!1753079) (not e!2648813))))

(assert (=> d!1257419 (= res!1753079 (= (csize!28730 (right!35370 (c!724708 x!738013))) (+ (size!34624 (left!35040 (right!35370 (c!724708 x!738013)))) (size!34624 (right!35370 (right!35370 (c!724708 x!738013)))))))))

(assert (=> d!1257419 (= (inv!62194 (right!35370 (c!724708 x!738013))) e!2648813)))

(declare-fun b!4266129 () Bool)

(declare-fun res!1753080 () Bool)

(assert (=> b!4266129 (=> (not res!1753080) (not e!2648813))))

(assert (=> b!4266129 (= res!1753080 (and (not (= (left!35040 (right!35370 (c!724708 x!738013))) Empty!14250)) (not (= (right!35370 (right!35370 (c!724708 x!738013))) Empty!14250))))))

(declare-fun b!4266130 () Bool)

(declare-fun res!1753081 () Bool)

(assert (=> b!4266130 (=> (not res!1753081) (not e!2648813))))

(assert (=> b!4266130 (= res!1753081 (= (cheight!14461 (right!35370 (c!724708 x!738013))) (+ (max!0 (height!1875 (left!35040 (right!35370 (c!724708 x!738013)))) (height!1875 (right!35370 (right!35370 (c!724708 x!738013))))) 1)))))

(declare-fun b!4266131 () Bool)

(assert (=> b!4266131 (= e!2648813 (<= 0 (cheight!14461 (right!35370 (c!724708 x!738013)))))))

(assert (= (and d!1257419 res!1753079) b!4266129))

(assert (= (and b!4266129 res!1753080) b!4266130))

(assert (= (and b!4266130 res!1753081) b!4266131))

(declare-fun m!4857471 () Bool)

(assert (=> d!1257419 m!4857471))

(declare-fun m!4857473 () Bool)

(assert (=> d!1257419 m!4857473))

(assert (=> b!4266130 m!4857043))

(assert (=> b!4266130 m!4857045))

(assert (=> b!4266130 m!4857043))

(assert (=> b!4266130 m!4857045))

(declare-fun m!4857475 () Bool)

(assert (=> b!4266130 m!4857475))

(assert (=> b!4265134 d!1257419))

(declare-fun e!2648814 () Bool)

(declare-fun tp!1307488 () Bool)

(declare-fun tp!1307487 () Bool)

(declare-fun b!4266132 () Bool)

(assert (=> b!4266132 (= e!2648814 (and (inv!62190 (left!35040 (left!35040 (left!35040 (c!724708 x!738013))))) tp!1307487 (inv!62190 (right!35370 (left!35040 (left!35040 (c!724708 x!738013))))) tp!1307488))))

(declare-fun b!4266133 () Bool)

(assert (=> b!4266133 (= e!2648814 (inv!62196 (xs!17556 (left!35040 (left!35040 (c!724708 x!738013))))))))

(assert (=> b!4265248 (= tp!1307461 (and (inv!62190 (left!35040 (left!35040 (c!724708 x!738013)))) e!2648814))))

(assert (= (and b!4265248 (is-Node!14250 (left!35040 (left!35040 (c!724708 x!738013))))) b!4266132))

(assert (= (and b!4265248 (is-Leaf!22031 (left!35040 (left!35040 (c!724708 x!738013))))) b!4266133))

(declare-fun m!4857477 () Bool)

(assert (=> b!4266132 m!4857477))

(declare-fun m!4857479 () Bool)

(assert (=> b!4266132 m!4857479))

(declare-fun m!4857481 () Bool)

(assert (=> b!4266133 m!4857481))

(assert (=> b!4265248 m!4855669))

(declare-fun e!2648816 () Bool)

(declare-fun tp!1307490 () Bool)

(declare-fun tp!1307489 () Bool)

(declare-fun b!4266134 () Bool)

(assert (=> b!4266134 (= e!2648816 (and (inv!62190 (left!35040 (right!35370 (left!35040 (c!724708 x!738013))))) tp!1307489 (inv!62190 (right!35370 (right!35370 (left!35040 (c!724708 x!738013))))) tp!1307490))))

(declare-fun b!4266135 () Bool)

(assert (=> b!4266135 (= e!2648816 (inv!62196 (xs!17556 (right!35370 (left!35040 (c!724708 x!738013))))))))

(assert (=> b!4265248 (= tp!1307462 (and (inv!62190 (right!35370 (left!35040 (c!724708 x!738013)))) e!2648816))))

(assert (= (and b!4265248 (is-Node!14250 (right!35370 (left!35040 (c!724708 x!738013))))) b!4266134))

(assert (= (and b!4265248 (is-Leaf!22031 (right!35370 (left!35040 (c!724708 x!738013))))) b!4266135))

(declare-fun m!4857483 () Bool)

(assert (=> b!4266134 m!4857483))

(declare-fun m!4857485 () Bool)

(assert (=> b!4266134 m!4857485))

(declare-fun m!4857487 () Bool)

(assert (=> b!4266135 m!4857487))

(assert (=> b!4265248 m!4855671))

(declare-fun tp!1307491 () Bool)

(declare-fun b!4266136 () Bool)

(declare-fun tp!1307492 () Bool)

(declare-fun e!2648818 () Bool)

(assert (=> b!4266136 (= e!2648818 (and (inv!62190 (left!35040 (left!35040 (right!35370 (c!724708 x!738013))))) tp!1307491 (inv!62190 (right!35370 (left!35040 (right!35370 (c!724708 x!738013))))) tp!1307492))))

(declare-fun b!4266137 () Bool)

(assert (=> b!4266137 (= e!2648818 (inv!62196 (xs!17556 (left!35040 (right!35370 (c!724708 x!738013))))))))

(assert (=> b!4265250 (= tp!1307463 (and (inv!62190 (left!35040 (right!35370 (c!724708 x!738013)))) e!2648818))))

(assert (= (and b!4265250 (is-Node!14250 (left!35040 (right!35370 (c!724708 x!738013))))) b!4266136))

(assert (= (and b!4265250 (is-Leaf!22031 (left!35040 (right!35370 (c!724708 x!738013))))) b!4266137))

(declare-fun m!4857489 () Bool)

(assert (=> b!4266136 m!4857489))

(declare-fun m!4857491 () Bool)

(assert (=> b!4266136 m!4857491))

(declare-fun m!4857493 () Bool)

(assert (=> b!4266137 m!4857493))

(assert (=> b!4265250 m!4855675))

(declare-fun tp!1307493 () Bool)

(declare-fun tp!1307494 () Bool)

(declare-fun b!4266138 () Bool)

(declare-fun e!2648820 () Bool)

(assert (=> b!4266138 (= e!2648820 (and (inv!62190 (left!35040 (right!35370 (right!35370 (c!724708 x!738013))))) tp!1307493 (inv!62190 (right!35370 (right!35370 (right!35370 (c!724708 x!738013))))) tp!1307494))))

(declare-fun b!4266139 () Bool)

(assert (=> b!4266139 (= e!2648820 (inv!62196 (xs!17556 (right!35370 (right!35370 (c!724708 x!738013))))))))

(assert (=> b!4265250 (= tp!1307464 (and (inv!62190 (right!35370 (right!35370 (c!724708 x!738013)))) e!2648820))))

(assert (= (and b!4265250 (is-Node!14250 (right!35370 (right!35370 (c!724708 x!738013))))) b!4266138))

(assert (= (and b!4265250 (is-Leaf!22031 (right!35370 (right!35370 (c!724708 x!738013))))) b!4266139))

(declare-fun m!4857495 () Bool)

(assert (=> b!4266138 m!4857495))

(declare-fun m!4857497 () Bool)

(assert (=> b!4266138 m!4857497))

(declare-fun m!4857499 () Bool)

(assert (=> b!4266139 m!4857499))

(assert (=> b!4265250 m!4855677))

(declare-fun b!4266140 () Bool)

(declare-fun e!2648822 () Bool)

(declare-fun tp!1307496 () Bool)

(declare-fun tp!1307495 () Bool)

(assert (=> b!4266140 (= e!2648822 (and (inv!62190 (left!35040 (left!35040 res!1752881))) tp!1307495 (inv!62190 (right!35370 (left!35040 res!1752881))) tp!1307496))))

(declare-fun b!4266141 () Bool)

(assert (=> b!4266141 (= e!2648822 (inv!62196 (xs!17556 (left!35040 res!1752881))))))

(assert (=> b!4265387 (= tp!1307474 (and (inv!62190 (left!35040 res!1752881)) e!2648822))))

(assert (= (and b!4265387 (is-Node!14250 (left!35040 res!1752881))) b!4266140))

(assert (= (and b!4265387 (is-Leaf!22031 (left!35040 res!1752881))) b!4266141))

(declare-fun m!4857501 () Bool)

(assert (=> b!4266140 m!4857501))

(declare-fun m!4857503 () Bool)

(assert (=> b!4266140 m!4857503))

(declare-fun m!4857505 () Bool)

(assert (=> b!4266141 m!4857505))

(assert (=> b!4265387 m!4855889))

(declare-fun e!2648824 () Bool)

(declare-fun tp!1307498 () Bool)

(declare-fun tp!1307497 () Bool)

(declare-fun b!4266142 () Bool)

(assert (=> b!4266142 (= e!2648824 (and (inv!62190 (left!35040 (right!35370 res!1752881))) tp!1307497 (inv!62190 (right!35370 (right!35370 res!1752881))) tp!1307498))))

(declare-fun b!4266143 () Bool)

(assert (=> b!4266143 (= e!2648824 (inv!62196 (xs!17556 (right!35370 res!1752881))))))

(assert (=> b!4265387 (= tp!1307473 (and (inv!62190 (right!35370 res!1752881)) e!2648824))))

(assert (= (and b!4265387 (is-Node!14250 (right!35370 res!1752881))) b!4266142))

(assert (= (and b!4265387 (is-Leaf!22031 (right!35370 res!1752881))) b!4266143))

(declare-fun m!4857507 () Bool)

(assert (=> b!4266142 m!4857507))

(declare-fun m!4857509 () Bool)

(assert (=> b!4266142 m!4857509))

(declare-fun m!4857511 () Bool)

(assert (=> b!4266143 m!4857511))

(assert (=> b!4265387 m!4855891))

(push 1)

(assert (not b!4265911))

(assert (not d!1257391))

(assert (not b!4265980))

(assert (not b!4265951))

(assert (not b!4266136))

(assert (not b!4266033))

(assert (not b!4265631))

(assert (not b!4266011))

(assert (not b!4265406))

(assert (not b!4266045))

(assert (not b!4265639))

(assert (not b!4265700))

(assert (not d!1257313))

(assert (not b!4265921))

(assert (not b!4266003))

(assert (not b!4266071))

(assert (not b!4265934))

(assert (not b!4265894))

(assert (not b!4265599))

(assert (not b!4265888))

(assert (not b!4265566))

(assert (not b!4266052))

(assert (not b!4266087))

(assert (not b!4265561))

(assert (not b!4265582))

(assert (not b!4265923))

(assert (not b!4265650))

(assert (not b!4265583))

(assert (not b!4266034))

(assert (not b!4265882))

(assert (not d!1257217))

(assert (not b!4266056))

(assert (not b!4265870))

(assert (not b!4265876))

(assert (not bm!294049))

(assert (not b!4265614))

(assert (not b!4266037))

(assert (not bm!294044))

(assert (not d!1256837))

(assert (not b!4265591))

(assert (not b!4265250))

(assert (not d!1257355))

(assert (not b!4265567))

(assert (not d!1257307))

(assert (not b!4265619))

(assert (not b!4265900))

(assert (not b!4265634))

(assert (not b!4265707))

(assert (not b!4265897))

(assert (not b!4265678))

(assert (not b!4265676))

(assert (not b!4265595))

(assert (not b!4266097))

(assert (not b!4265973))

(assert (not b!4266058))

(assert (not b!4265949))

(assert (not b!4266115))

(assert (not b!4265248))

(assert (not b!4265933))

(assert (not d!1256879))

(assert (not b!4265464))

(assert (not b!4266142))

(assert (not b!4265611))

(assert (not d!1257253))

(assert (not b!4266020))

(assert (not b!4265943))

(assert (not b!4266124))

(assert (not b!4265995))

(assert (not b!4266013))

(assert (not b!4266110))

(assert (not b!4265559))

(assert (not b!4265698))

(assert (not b!4266117))

(assert (not b!4265889))

(assert (not b!4266042))

(assert (not b!4265379))

(assert (not b!4266108))

(assert (not b!4266028))

(assert (not b!4265964))

(assert (not b!4265953))

(assert (not bm!294048))

(assert (not b!4265672))

(assert (not b!4265658))

(assert (not b!4265987))

(assert (not b!4265708))

(assert (not b!4265936))

(assert (not bm!294047))

(assert (not b!4265961))

(assert (not b!4265940))

(assert (not b!4266139))

(assert (not b!4265666))

(assert (not b!4265560))

(assert (not b!4265587))

(assert (not b!4265640))

(assert (not b!4266140))

(assert (not b!4266121))

(assert (not b!4265638))

(assert (not b!4265939))

(assert (not b!4265424))

(assert (not b!4266007))

(assert (not b!4266088))

(assert (not b!4265649))

(assert (not d!1257419))

(assert (not d!1257379))

(assert (not b!4265405))

(assert (not b!4265423))

(assert (not b!4265989))

(assert (not b!4265641))

(assert (not b!4265642))

(assert (not b!4265574))

(assert (not d!1257335))

(assert (not b!4266093))

(assert (not b!4266046))

(assert (not b!4265694))

(assert (not b!4265637))

(assert (not b!4266077))

(assert (not b!4265997))

(assert (not b!4265902))

(assert (not b!4265627))

(assert (not bm!294046))

(assert (not b!4265688))

(assert (not b!4265565))

(assert (not b!4266067))

(assert (not b!4266062))

(assert (not b!4265963))

(assert (not d!1257387))

(assert (not d!1257353))

(assert (not b!4265660))

(assert (not d!1257303))

(assert (not b!4265968))

(assert (not b!4266049))

(assert (not d!1257349))

(assert (not b!4265387))

(assert (not b!4265647))

(assert (not b!4265874))

(assert (not b!4265966))

(assert (not d!1257333))

(assert (not b!4265954))

(assert (not b!4265654))

(assert (not d!1257371))

(assert (not b!4265974))

(assert (not b!4265380))

(assert (not b!4266130))

(assert (not b!4265670))

(assert (not d!1257281))

(assert (not b!4266132))

(assert (not b!4265604))

(assert (not b!4266059))

(assert (not b!4265704))

(assert (not b!4265917))

(assert (not b!4265868))

(assert (not b!4265904))

(assert (not b!4265886))

(assert (not d!1257305))

(assert (not b!4265979))

(assert (not b!4265564))

(assert (not b!4265867))

(assert (not d!1257293))

(assert (not d!1257241))

(assert (not b!4265655))

(assert (not d!1257317))

(assert (not b!4265607))

(assert (not d!1257393))

(assert (not b!4265661))

(assert (not b!4266118))

(assert (not b!4265623))

(assert (not b!4266009))

(assert (not b!4265899))

(assert (not b!4265959))

(assert (not b!4265573))

(assert (not b!4265937))

(assert (not b!4266072))

(assert (not b!4266119))

(assert (not d!1257219))

(assert (not b!4266137))

(assert (not b!4265578))

(assert (not b!4266112))

(assert (not b!4266109))

(assert (not d!1257351))

(assert (not b!4266141))

(assert (not b!4265686))

(assert (not b!4265562))

(assert (not b!4266031))

(assert (not b!4265682))

(assert (not d!1257263))

(assert (not b!4265463))

(assert (not b!4265629))

(assert (not b!4265684))

(assert (not b!4266120))

(assert (not d!1257299))

(assert (not b!4265554))

(assert (not b!4265871))

(assert (not b!4265669))

(assert (not d!1256863))

(assert (not b!4265880))

(assert (not b!4265402))

(assert (not b!4265941))

(assert (not b!4266048))

(assert (not d!1257377))

(assert (not b!4265596))

(assert (not b!4266134))

(assert (not b!4265990))

(assert (not b!4266114))

(assert (not b!4265915))

(assert (not b!4265601))

(assert (not b!4266078))

(assert (not b!4265971))

(assert (not b!4265570))

(assert (not b!4265887))

(assert (not b!4265579))

(assert (not d!1257257))

(assert (not b!4265563))

(assert (not b!4265892))

(assert (not b!4265896))

(assert (not b!4266032))

(assert (not b!4266143))

(assert (not b!4265697))

(assert (not b!4266065))

(assert (not b!4265913))

(assert (not b!4266128))

(assert (not b!4266095))

(assert (not b!4265689))

(assert (not b!4266030))

(assert (not b!4265674))

(assert (not b!4265613))

(assert (not b!4265938))

(assert (not b!4265609))

(assert (not d!1257267))

(assert (not b!4265404))

(assert (not b!4266075))

(assert (not b!4266122))

(assert (not d!1256801))

(assert (not b!4266083))

(assert (not b!4266004))

(assert (not b!4266068))

(assert (not b!4265969))

(assert (not d!1257389))

(assert (not b!4265569))

(assert (not d!1257337))

(assert (not b!4265702))

(assert (not d!1257359))

(assert (not b!4265652))

(assert (not b!4265985))

(assert (not d!1257347))

(assert (not d!1257283))

(assert (not d!1257409))

(assert (not b!4266026))

(assert (not b!4265625))

(assert (not b!4266103))

(assert (not b!4266054))

(assert (not b!4266015))

(assert (not b!4266039))

(assert (not b!4265592))

(assert (not d!1256821))

(assert (not b!4265557))

(assert (not b!4265645))

(assert (not b!4265693))

(assert (not b!4266126))

(assert (not b!4266019))

(assert (not b!4265558))

(assert (not b!4266035))

(assert (not b!4265665))

(assert (not d!1257383))

(assert (not b!4265999))

(assert (not d!1257385))

(assert (not b!4265929))

(assert (not b!4265890))

(assert (not b!4266098))

(assert (not b!4266101))

(assert (not d!1257363))

(assert (not b!4266138))

(assert (not b!4265622))

(assert (not b!4266135))

(assert (not b!4266133))

(assert (not b!4265878))

(assert (not b!4265885))

(assert (not b!4265977))

(assert (not b!4266023))

(assert (not b!4265407))

(assert (not b!4265944))

(assert (not b!4265947))

(assert (not b!4265869))

(assert (not b!4265603))

(assert (not b!4265957))

(assert (not b!4265872))

(assert (not b!4265919))

(assert (not b!4265927))

(assert (not b!4265924))

(assert (not d!1256807))

(assert (not b!4265643))

(assert (not b!4266069))

(assert (not b!4266000))

(assert (not d!1257315))

(assert (not b!4266024))

(assert (not b!4266029))

(assert (not b!4266085))

(assert (not b!4265931))

(assert (not b!4265597))

(assert (not b!4265589))

(assert (not b!4266105))

(assert (not d!1257309))

(assert (not b!4266066))

(assert (not d!1257243))

(assert (not b!4265618))

(assert (not b!4265408))

(assert (not d!1257221))

(assert (not b!4266017))

(assert (not d!1256871))

(assert (not b!4265884))

(assert (not d!1257311))

(assert (not b!4266021))

(assert (not b!4265680))

(assert (not b!4265633))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1257637 () Bool)

(declare-fun e!2648973 () Bool)

(assert (=> d!1257637 e!2648973))

(declare-fun res!1753168 () Bool)

(assert (=> d!1257637 (=> (not res!1753168) (not e!2648973))))

(declare-fun lt!1511884 () BalanceConc!28010)

(assert (=> d!1257637 (= res!1753168 (= (list!17073 lt!1511884) (Cons!47268 #x003D Nil!47268)))))

(assert (=> d!1257637 (= lt!1511884 (BalanceConc!28011 (fromList!917 (Cons!47268 #x003D Nil!47268))))))

(assert (=> d!1257637 (= (fromListB!2657 (Cons!47268 #x003D Nil!47268)) lt!1511884)))

(declare-fun b!4266423 () Bool)

(assert (=> b!4266423 (= e!2648973 (isBalanced!3809 (fromList!917 (Cons!47268 #x003D Nil!47268))))))

(assert (= (and d!1257637 res!1753168) b!4266423))

(declare-fun m!4858129 () Bool)

(assert (=> d!1257637 m!4858129))

(declare-fun m!4858131 () Bool)

(assert (=> d!1257637 m!4858131))

(assert (=> b!4266423 m!4858131))

(assert (=> b!4266423 m!4858131))

(declare-fun m!4858133 () Bool)

(assert (=> b!4266423 m!4858133))

(assert (=> d!1256879 d!1257637))

(declare-fun d!1257639 () Bool)

(declare-fun res!1753174 () Bool)

(declare-fun e!2648974 () Bool)

(assert (=> d!1257639 (=> res!1753174 e!2648974)))

(assert (=> d!1257639 (= res!1753174 (not (is-Node!14250 (right!35370 (fromList!917 (Cons!47268 #x002B Nil!47268))))))))

(assert (=> d!1257639 (= (isBalanced!3809 (right!35370 (fromList!917 (Cons!47268 #x002B Nil!47268)))) e!2648974)))

(declare-fun b!4266424 () Bool)

(declare-fun e!2648975 () Bool)

(assert (=> b!4266424 (= e!2648974 e!2648975)))

(declare-fun res!1753170 () Bool)

(assert (=> b!4266424 (=> (not res!1753170) (not e!2648975))))

(assert (=> b!4266424 (= res!1753170 (<= (- 1) (- (height!1875 (left!35040 (right!35370 (fromList!917 (Cons!47268 #x002B Nil!47268))))) (height!1875 (right!35370 (right!35370 (fromList!917 (Cons!47268 #x002B Nil!47268))))))))))

(declare-fun b!4266425 () Bool)

(declare-fun res!1753171 () Bool)

(assert (=> b!4266425 (=> (not res!1753171) (not e!2648975))))

(assert (=> b!4266425 (= res!1753171 (isBalanced!3809 (left!35040 (right!35370 (fromList!917 (Cons!47268 #x002B Nil!47268))))))))

(declare-fun b!4266426 () Bool)

(declare-fun res!1753173 () Bool)

(assert (=> b!4266426 (=> (not res!1753173) (not e!2648975))))

(assert (=> b!4266426 (= res!1753173 (<= (- (height!1875 (left!35040 (right!35370 (fromList!917 (Cons!47268 #x002B Nil!47268))))) (height!1875 (right!35370 (right!35370 (fromList!917 (Cons!47268 #x002B Nil!47268)))))) 1))))

(declare-fun b!4266427 () Bool)

(assert (=> b!4266427 (= e!2648975 (not (isEmpty!27994 (right!35370 (right!35370 (fromList!917 (Cons!47268 #x002B Nil!47268)))))))))

(declare-fun b!4266428 () Bool)

(declare-fun res!1753172 () Bool)

(assert (=> b!4266428 (=> (not res!1753172) (not e!2648975))))

(assert (=> b!4266428 (= res!1753172 (isBalanced!3809 (right!35370 (right!35370 (fromList!917 (Cons!47268 #x002B Nil!47268))))))))

(declare-fun b!4266429 () Bool)

(declare-fun res!1753169 () Bool)

(assert (=> b!4266429 (=> (not res!1753169) (not e!2648975))))

(assert (=> b!4266429 (= res!1753169 (not (isEmpty!27994 (left!35040 (right!35370 (fromList!917 (Cons!47268 #x002B Nil!47268)))))))))

(assert (= (and d!1257639 (not res!1753174)) b!4266424))

(assert (= (and b!4266424 res!1753170) b!4266426))

(assert (= (and b!4266426 res!1753173) b!4266425))

(assert (= (and b!4266425 res!1753171) b!4266428))

(assert (= (and b!4266428 res!1753172) b!4266429))

(assert (= (and b!4266429 res!1753169) b!4266427))

(declare-fun m!4858135 () Bool)

(assert (=> b!4266424 m!4858135))

(declare-fun m!4858137 () Bool)

(assert (=> b!4266424 m!4858137))

(declare-fun m!4858139 () Bool)

(assert (=> b!4266428 m!4858139))

(declare-fun m!4858141 () Bool)

(assert (=> b!4266425 m!4858141))

(declare-fun m!4858143 () Bool)

(assert (=> b!4266427 m!4858143))

(assert (=> b!4266426 m!4858135))

(assert (=> b!4266426 m!4858137))

(declare-fun m!4858145 () Bool)

(assert (=> b!4266429 m!4858145))

(assert (=> b!4265407 d!1257639))

(declare-fun d!1257641 () Bool)

(declare-fun e!2648976 () Bool)

(assert (=> d!1257641 e!2648976))

(declare-fun res!1753175 () Bool)

(assert (=> d!1257641 (=> (not res!1753175) (not e!2648976))))

(declare-fun lt!1511885 () BalanceConc!28010)

(assert (=> d!1257641 (= res!1753175 (= (list!17073 lt!1511885) (Cons!47268 #x0026 (Cons!47268 #x0026 Nil!47268))))))

(assert (=> d!1257641 (= lt!1511885 (BalanceConc!28011 (fromList!917 (Cons!47268 #x0026 (Cons!47268 #x0026 Nil!47268)))))))

(assert (=> d!1257641 (= (fromListB!2657 (Cons!47268 #x0026 (Cons!47268 #x0026 Nil!47268))) lt!1511885)))

(declare-fun b!4266430 () Bool)

(assert (=> b!4266430 (= e!2648976 (isBalanced!3809 (fromList!917 (Cons!47268 #x0026 (Cons!47268 #x0026 Nil!47268)))))))

(assert (= (and d!1257641 res!1753175) b!4266430))

(declare-fun m!4858147 () Bool)

(assert (=> d!1257641 m!4858147))

(declare-fun m!4858149 () Bool)

(assert (=> d!1257641 m!4858149))

(assert (=> b!4266430 m!4858149))

(assert (=> b!4266430 m!4858149))

(declare-fun m!4858151 () Bool)

(assert (=> b!4266430 m!4858151))

(assert (=> d!1256863 d!1257641))

(declare-fun b!4266434 () Bool)

(declare-fun e!2648977 () Bool)

(declare-fun lt!1511886 () List!47392)

(assert (=> b!4266434 (= e!2648977 (or (not (= (list!17075 (right!35370 (c!724708 lt!1511531))) Nil!47268)) (= lt!1511886 (list!17075 (left!35040 (c!724708 lt!1511531))))))))

(declare-fun b!4266433 () Bool)

(declare-fun res!1753176 () Bool)

(assert (=> b!4266433 (=> (not res!1753176) (not e!2648977))))

(assert (=> b!4266433 (= res!1753176 (= (size!34622 lt!1511886) (+ (size!34622 (list!17075 (left!35040 (c!724708 lt!1511531)))) (size!34622 (list!17075 (right!35370 (c!724708 lt!1511531)))))))))

(declare-fun b!4266432 () Bool)

(declare-fun e!2648978 () List!47392)

(assert (=> b!4266432 (= e!2648978 (Cons!47268 (h!52688 (list!17075 (left!35040 (c!724708 lt!1511531)))) (++!12049 (t!353461 (list!17075 (left!35040 (c!724708 lt!1511531)))) (list!17075 (right!35370 (c!724708 lt!1511531))))))))

(declare-fun b!4266431 () Bool)

(assert (=> b!4266431 (= e!2648978 (list!17075 (right!35370 (c!724708 lt!1511531))))))

(declare-fun d!1257643 () Bool)

(assert (=> d!1257643 e!2648977))

(declare-fun res!1753177 () Bool)

(assert (=> d!1257643 (=> (not res!1753177) (not e!2648977))))

(assert (=> d!1257643 (= res!1753177 (= (content!7469 lt!1511886) (set.union (content!7469 (list!17075 (left!35040 (c!724708 lt!1511531)))) (content!7469 (list!17075 (right!35370 (c!724708 lt!1511531)))))))))

(assert (=> d!1257643 (= lt!1511886 e!2648978)))

(declare-fun c!725294 () Bool)

(assert (=> d!1257643 (= c!725294 (is-Nil!47268 (list!17075 (left!35040 (c!724708 lt!1511531)))))))

(assert (=> d!1257643 (= (++!12049 (list!17075 (left!35040 (c!724708 lt!1511531))) (list!17075 (right!35370 (c!724708 lt!1511531)))) lt!1511886)))

(assert (= (and d!1257643 c!725294) b!4266431))

(assert (= (and d!1257643 (not c!725294)) b!4266432))

(assert (= (and d!1257643 res!1753177) b!4266433))

(assert (= (and b!4266433 res!1753176) b!4266434))

(declare-fun m!4858153 () Bool)

(assert (=> b!4266433 m!4858153))

(assert (=> b!4266433 m!4856057))

(declare-fun m!4858155 () Bool)

(assert (=> b!4266433 m!4858155))

(assert (=> b!4266433 m!4856059))

(declare-fun m!4858157 () Bool)

(assert (=> b!4266433 m!4858157))

(assert (=> b!4266432 m!4856059))

(declare-fun m!4858159 () Bool)

(assert (=> b!4266432 m!4858159))

(declare-fun m!4858161 () Bool)

(assert (=> d!1257643 m!4858161))

(assert (=> d!1257643 m!4856057))

(declare-fun m!4858163 () Bool)

(assert (=> d!1257643 m!4858163))

(assert (=> d!1257643 m!4856059))

(declare-fun m!4858165 () Bool)

(assert (=> d!1257643 m!4858165))

(assert (=> b!4265464 d!1257643))

(declare-fun b!4266437 () Bool)

(declare-fun e!2648980 () List!47392)

(assert (=> b!4266437 (= e!2648980 (list!17077 (xs!17556 (left!35040 (c!724708 lt!1511531)))))))

(declare-fun b!4266435 () Bool)

(declare-fun e!2648979 () List!47392)

(assert (=> b!4266435 (= e!2648979 Nil!47268)))

(declare-fun d!1257645 () Bool)

(declare-fun c!725295 () Bool)

(assert (=> d!1257645 (= c!725295 (is-Empty!14250 (left!35040 (c!724708 lt!1511531))))))

(assert (=> d!1257645 (= (list!17075 (left!35040 (c!724708 lt!1511531))) e!2648979)))

(declare-fun b!4266438 () Bool)

(assert (=> b!4266438 (= e!2648980 (++!12049 (list!17075 (left!35040 (left!35040 (c!724708 lt!1511531)))) (list!17075 (right!35370 (left!35040 (c!724708 lt!1511531))))))))

(declare-fun b!4266436 () Bool)

(assert (=> b!4266436 (= e!2648979 e!2648980)))

(declare-fun c!725296 () Bool)

(assert (=> b!4266436 (= c!725296 (is-Leaf!22031 (left!35040 (c!724708 lt!1511531))))))

(assert (= (and d!1257645 c!725295) b!4266435))

(assert (= (and d!1257645 (not c!725295)) b!4266436))

(assert (= (and b!4266436 c!725296) b!4266437))

(assert (= (and b!4266436 (not c!725296)) b!4266438))

(declare-fun m!4858167 () Bool)

(assert (=> b!4266437 m!4858167))

(declare-fun m!4858169 () Bool)

(assert (=> b!4266438 m!4858169))

(declare-fun m!4858171 () Bool)

(assert (=> b!4266438 m!4858171))

(assert (=> b!4266438 m!4858169))

(assert (=> b!4266438 m!4858171))

(declare-fun m!4858173 () Bool)

(assert (=> b!4266438 m!4858173))

(assert (=> b!4265464 d!1257645))

(declare-fun b!4266441 () Bool)

(declare-fun e!2648982 () List!47392)

(assert (=> b!4266441 (= e!2648982 (list!17077 (xs!17556 (right!35370 (c!724708 lt!1511531)))))))

(declare-fun b!4266439 () Bool)

(declare-fun e!2648981 () List!47392)

(assert (=> b!4266439 (= e!2648981 Nil!47268)))

(declare-fun d!1257647 () Bool)

(declare-fun c!725297 () Bool)

(assert (=> d!1257647 (= c!725297 (is-Empty!14250 (right!35370 (c!724708 lt!1511531))))))

(assert (=> d!1257647 (= (list!17075 (right!35370 (c!724708 lt!1511531))) e!2648981)))

(declare-fun b!4266442 () Bool)

(assert (=> b!4266442 (= e!2648982 (++!12049 (list!17075 (left!35040 (right!35370 (c!724708 lt!1511531)))) (list!17075 (right!35370 (right!35370 (c!724708 lt!1511531))))))))

(declare-fun b!4266440 () Bool)

(assert (=> b!4266440 (= e!2648981 e!2648982)))

(declare-fun c!725298 () Bool)

(assert (=> b!4266440 (= c!725298 (is-Leaf!22031 (right!35370 (c!724708 lt!1511531))))))

(assert (= (and d!1257647 c!725297) b!4266439))

(assert (= (and d!1257647 (not c!725297)) b!4266440))

(assert (= (and b!4266440 c!725298) b!4266441))

(assert (= (and b!4266440 (not c!725298)) b!4266442))

(declare-fun m!4858175 () Bool)

(assert (=> b!4266441 m!4858175))

(declare-fun m!4858177 () Bool)

(assert (=> b!4266442 m!4858177))

(declare-fun m!4858179 () Bool)

(assert (=> b!4266442 m!4858179))

(assert (=> b!4266442 m!4858177))

(assert (=> b!4266442 m!4858179))

(declare-fun m!4858181 () Bool)

(assert (=> b!4266442 m!4858181))

(assert (=> b!4265464 d!1257647))

(declare-fun d!1257649 () Bool)

(assert (=> d!1257649 (= (list!17073 lt!1511608) (list!17075 (c!724708 lt!1511608)))))

(declare-fun bs!599334 () Bool)

(assert (= bs!599334 d!1257649))

(declare-fun m!4858183 () Bool)

(assert (=> bs!599334 m!4858183))

(assert (=> d!1256821 d!1257649))

(declare-fun d!1257651 () Bool)

(declare-fun e!2648983 () Bool)

(assert (=> d!1257651 e!2648983))

(declare-fun res!1753178 () Bool)

(assert (=> d!1257651 (=> (not res!1753178) (not e!2648983))))

(declare-fun lt!1511887 () Conc!14250)

(assert (=> d!1257651 (= res!1753178 (= (list!17075 lt!1511887) (value!248406 (toValue!17 thiss!2520 x!738013))))))

(assert (=> d!1257651 (= lt!1511887 (choose!25996 (value!248406 (toValue!17 thiss!2520 x!738013))))))

(assert (=> d!1257651 (= (fromList!917 (value!248406 (toValue!17 thiss!2520 x!738013))) lt!1511887)))

(declare-fun b!4266443 () Bool)

(assert (=> b!4266443 (= e!2648983 (isBalanced!3809 lt!1511887))))

(assert (= (and d!1257651 res!1753178) b!4266443))

(declare-fun m!4858185 () Bool)

(assert (=> d!1257651 m!4858185))

(declare-fun m!4858187 () Bool)

(assert (=> d!1257651 m!4858187))

(declare-fun m!4858189 () Bool)

(assert (=> b!4266443 m!4858189))

(assert (=> d!1256821 d!1257651))

(assert (=> b!4265387 d!1257295))

(assert (=> b!4265387 d!1257297))

(declare-fun d!1257653 () Bool)

(assert (=> d!1257653 (= (list!17077 (xs!17556 lt!1511545)) (innerList!14310 (xs!17556 lt!1511545)))))

(assert (=> b!4265379 d!1257653))

(declare-fun d!1257655 () Bool)

(declare-fun c!725299 () Bool)

(assert (=> d!1257655 (= c!725299 (is-Nil!47268 lt!1511766))))

(declare-fun e!2648984 () (Set (_ BitVec 16)))

(assert (=> d!1257655 (= (content!7469 lt!1511766) e!2648984)))

(declare-fun b!4266444 () Bool)

(assert (=> b!4266444 (= e!2648984 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4266445 () Bool)

(assert (=> b!4266445 (= e!2648984 (set.union (set.insert (h!52688 lt!1511766) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 lt!1511766))))))

(assert (= (and d!1257655 c!725299) b!4266444))

(assert (= (and d!1257655 (not c!725299)) b!4266445))

(declare-fun m!4858191 () Bool)

(assert (=> b!4266445 m!4858191))

(declare-fun m!4858193 () Bool)

(assert (=> b!4266445 m!4858193))

(assert (=> d!1257371 d!1257655))

(declare-fun d!1257657 () Bool)

(declare-fun c!725300 () Bool)

(assert (=> d!1257657 (= c!725300 (is-Nil!47268 (list!17075 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))

(declare-fun e!2648985 () (Set (_ BitVec 16)))

(assert (=> d!1257657 (= (content!7469 (list!17075 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))) e!2648985)))

(declare-fun b!4266446 () Bool)

(assert (=> b!4266446 (= e!2648985 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4266447 () Bool)

(assert (=> b!4266447 (= e!2648985 (set.union (set.insert (h!52688 (list!17075 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (list!17075 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(assert (= (and d!1257657 c!725300) b!4266446))

(assert (= (and d!1257657 (not c!725300)) b!4266447))

(declare-fun m!4858195 () Bool)

(assert (=> b!4266447 m!4858195))

(declare-fun m!4858197 () Bool)

(assert (=> b!4266447 m!4858197))

(assert (=> d!1257371 d!1257657))

(declare-fun d!1257659 () Bool)

(declare-fun c!725301 () Bool)

(assert (=> d!1257659 (= c!725301 (is-Nil!47268 (efficientList$default$2!146 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))

(declare-fun e!2648986 () (Set (_ BitVec 16)))

(assert (=> d!1257659 (= (content!7469 (efficientList$default$2!146 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))) e!2648986)))

(declare-fun b!4266448 () Bool)

(assert (=> b!4266448 (= e!2648986 (as set.empty (Set (_ BitVec 16))))))

(declare-fun b!4266449 () Bool)

(assert (=> b!4266449 (= e!2648986 (set.union (set.insert (h!52688 (efficientList$default$2!146 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))) (as set.empty (Set (_ BitVec 16)))) (content!7469 (t!353461 (efficientList$default$2!146 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(assert (= (and d!1257659 c!725301) b!4266448))

(assert (= (and d!1257659 (not c!725301)) b!4266449))

(declare-fun m!4858199 () Bool)

(assert (=> b!4266449 m!4858199))

(declare-fun m!4858201 () Bool)

(assert (=> b!4266449 m!4858201))

(assert (=> d!1257371 d!1257659))

(declare-fun d!1257661 () Bool)

(declare-fun lt!1511888 () Bool)

(assert (=> d!1257661 (= lt!1511888 (isEmpty!27997 (list!17075 (left!35040 (fromList!917 (Cons!47268 #x002B Nil!47268))))))))

(assert (=> d!1257661 (= lt!1511888 (= (size!34624 (left!35040 (fromList!917 (Cons!47268 #x002B Nil!47268)))) 0))))

(assert (=> d!1257661 (= (isEmpty!27994 (left!35040 (fromList!917 (Cons!47268 #x002B Nil!47268)))) lt!1511888)))

(declare-fun bs!599335 () Bool)

(assert (= bs!599335 d!1257661))

(declare-fun m!4858203 () Bool)

(assert (=> bs!599335 m!4858203))

(assert (=> bs!599335 m!4858203))

(declare-fun m!4858205 () Bool)

(assert (=> bs!599335 m!4858205))

(declare-fun m!4858207 () Bool)

(assert (=> bs!599335 m!4858207))

(assert (=> b!4265408 d!1257661))

(declare-fun d!1257663 () Bool)

(declare-fun e!2648987 () Bool)

(assert (=> d!1257663 e!2648987))

(declare-fun res!1753179 () Bool)

(assert (=> d!1257663 (=> (not res!1753179) (not e!2648987))))

(declare-fun lt!1511889 () BalanceConc!28010)

(assert (=> d!1257663 (= res!1753179 (= (list!17073 lt!1511889) (Cons!47268 #x002B (Cons!47268 #x002B Nil!47268))))))

(assert (=> d!1257663 (= lt!1511889 (BalanceConc!28011 (fromList!917 (Cons!47268 #x002B (Cons!47268 #x002B Nil!47268)))))))

(assert (=> d!1257663 (= (fromListB!2657 (Cons!47268 #x002B (Cons!47268 #x002B Nil!47268))) lt!1511889)))

(declare-fun b!4266450 () Bool)

(assert (=> b!4266450 (= e!2648987 (isBalanced!3809 (fromList!917 (Cons!47268 #x002B (Cons!47268 #x002B Nil!47268)))))))

(assert (= (and d!1257663 res!1753179) b!4266450))

(declare-fun m!4858209 () Bool)

(assert (=> d!1257663 m!4858209))

(declare-fun m!4858211 () Bool)

(assert (=> d!1257663 m!4858211))

(assert (=> b!4266450 m!4858211))

(assert (=> b!4266450 m!4858211))

(declare-fun m!4858213 () Bool)

(assert (=> b!4266450 m!4858213))

(assert (=> d!1256871 d!1257663))

(declare-fun b!4266454 () Bool)

(declare-fun e!2648988 () Bool)

(declare-fun lt!1511890 () List!47392)

(assert (=> b!4266454 (= e!2648988 (or (not (= (list!17075 (right!35370 lt!1511545)) Nil!47268)) (= lt!1511890 (list!17075 (left!35040 lt!1511545)))))))

(declare-fun b!4266453 () Bool)

(declare-fun res!1753180 () Bool)

(assert (=> b!4266453 (=> (not res!1753180) (not e!2648988))))

(assert (=> b!4266453 (= res!1753180 (= (size!34622 lt!1511890) (+ (size!34622 (list!17075 (left!35040 lt!1511545))) (size!34622 (list!17075 (right!35370 lt!1511545))))))))

(declare-fun b!4266452 () Bool)

(declare-fun e!2648989 () List!47392)

(assert (=> b!4266452 (= e!2648989 (Cons!47268 (h!52688 (list!17075 (left!35040 lt!1511545))) (++!12049 (t!353461 (list!17075 (left!35040 lt!1511545))) (list!17075 (right!35370 lt!1511545)))))))

(declare-fun b!4266451 () Bool)

(assert (=> b!4266451 (= e!2648989 (list!17075 (right!35370 lt!1511545)))))

(declare-fun d!1257665 () Bool)

(assert (=> d!1257665 e!2648988))

(declare-fun res!1753181 () Bool)

(assert (=> d!1257665 (=> (not res!1753181) (not e!2648988))))

(assert (=> d!1257665 (= res!1753181 (= (content!7469 lt!1511890) (set.union (content!7469 (list!17075 (left!35040 lt!1511545))) (content!7469 (list!17075 (right!35370 lt!1511545))))))))

(assert (=> d!1257665 (= lt!1511890 e!2648989)))

(declare-fun c!725302 () Bool)

(assert (=> d!1257665 (= c!725302 (is-Nil!47268 (list!17075 (left!35040 lt!1511545))))))

(assert (=> d!1257665 (= (++!12049 (list!17075 (left!35040 lt!1511545)) (list!17075 (right!35370 lt!1511545))) lt!1511890)))

(assert (= (and d!1257665 c!725302) b!4266451))

(assert (= (and d!1257665 (not c!725302)) b!4266452))

(assert (= (and d!1257665 res!1753181) b!4266453))

(assert (= (and b!4266453 res!1753180) b!4266454))

(declare-fun m!4858215 () Bool)

(assert (=> b!4266453 m!4858215))

(assert (=> b!4266453 m!4855879))

(declare-fun m!4858217 () Bool)

(assert (=> b!4266453 m!4858217))

(assert (=> b!4266453 m!4855881))

(declare-fun m!4858219 () Bool)

(assert (=> b!4266453 m!4858219))

(assert (=> b!4266452 m!4855881))

(declare-fun m!4858221 () Bool)

(assert (=> b!4266452 m!4858221))

(declare-fun m!4858223 () Bool)

(assert (=> d!1257665 m!4858223))

(assert (=> d!1257665 m!4855879))

(declare-fun m!4858225 () Bool)

(assert (=> d!1257665 m!4858225))

(assert (=> d!1257665 m!4855881))

(declare-fun m!4858227 () Bool)

(assert (=> d!1257665 m!4858227))

(assert (=> b!4265380 d!1257665))

(declare-fun b!4266457 () Bool)

(declare-fun e!2648991 () List!47392)

(assert (=> b!4266457 (= e!2648991 (list!17077 (xs!17556 (left!35040 lt!1511545))))))

(declare-fun b!4266455 () Bool)

(declare-fun e!2648990 () List!47392)

(assert (=> b!4266455 (= e!2648990 Nil!47268)))

(declare-fun d!1257667 () Bool)

(declare-fun c!725303 () Bool)

(assert (=> d!1257667 (= c!725303 (is-Empty!14250 (left!35040 lt!1511545)))))

(assert (=> d!1257667 (= (list!17075 (left!35040 lt!1511545)) e!2648990)))

(declare-fun b!4266458 () Bool)

(assert (=> b!4266458 (= e!2648991 (++!12049 (list!17075 (left!35040 (left!35040 lt!1511545))) (list!17075 (right!35370 (left!35040 lt!1511545)))))))

(declare-fun b!4266456 () Bool)

(assert (=> b!4266456 (= e!2648990 e!2648991)))

(declare-fun c!725304 () Bool)

(assert (=> b!4266456 (= c!725304 (is-Leaf!22031 (left!35040 lt!1511545)))))

(assert (= (and d!1257667 c!725303) b!4266455))

(assert (= (and d!1257667 (not c!725303)) b!4266456))

(assert (= (and b!4266456 c!725304) b!4266457))

(assert (= (and b!4266456 (not c!725304)) b!4266458))

(declare-fun m!4858229 () Bool)

(assert (=> b!4266457 m!4858229))

(declare-fun m!4858231 () Bool)

(assert (=> b!4266458 m!4858231))

(declare-fun m!4858233 () Bool)

(assert (=> b!4266458 m!4858233))

(assert (=> b!4266458 m!4858231))

(assert (=> b!4266458 m!4858233))

(declare-fun m!4858235 () Bool)

(assert (=> b!4266458 m!4858235))

(assert (=> b!4265380 d!1257667))

(declare-fun b!4266461 () Bool)

(declare-fun e!2648993 () List!47392)

(assert (=> b!4266461 (= e!2648993 (list!17077 (xs!17556 (right!35370 lt!1511545))))))

(declare-fun b!4266459 () Bool)

(declare-fun e!2648992 () List!47392)

(assert (=> b!4266459 (= e!2648992 Nil!47268)))

(declare-fun d!1257669 () Bool)

(declare-fun c!725305 () Bool)

(assert (=> d!1257669 (= c!725305 (is-Empty!14250 (right!35370 lt!1511545)))))

(assert (=> d!1257669 (= (list!17075 (right!35370 lt!1511545)) e!2648992)))

(declare-fun b!4266462 () Bool)

(assert (=> b!4266462 (= e!2648993 (++!12049 (list!17075 (left!35040 (right!35370 lt!1511545))) (list!17075 (right!35370 (right!35370 lt!1511545)))))))

(declare-fun b!4266460 () Bool)

(assert (=> b!4266460 (= e!2648992 e!2648993)))

(declare-fun c!725306 () Bool)

(assert (=> b!4266460 (= c!725306 (is-Leaf!22031 (right!35370 lt!1511545)))))

(assert (= (and d!1257669 c!725305) b!4266459))

(assert (= (and d!1257669 (not c!725305)) b!4266460))

(assert (= (and b!4266460 c!725306) b!4266461))

(assert (= (and b!4266460 (not c!725306)) b!4266462))

(declare-fun m!4858237 () Bool)

(assert (=> b!4266461 m!4858237))

(declare-fun m!4858239 () Bool)

(assert (=> b!4266462 m!4858239))

(declare-fun m!4858241 () Bool)

(assert (=> b!4266462 m!4858241))

(assert (=> b!4266462 m!4858239))

(assert (=> b!4266462 m!4858241))

(declare-fun m!4858243 () Bool)

(assert (=> b!4266462 m!4858243))

(assert (=> b!4265380 d!1257669))

(declare-fun lt!1511891 () List!47392)

(declare-fun e!2648994 () Bool)

(declare-fun b!4266466 () Bool)

(assert (=> b!4266466 (= e!2648994 (or (not (= (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) Nil!47268)) (= lt!1511891 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))))

(declare-fun b!4266465 () Bool)

(declare-fun res!1753182 () Bool)

(assert (=> b!4266465 (=> (not res!1753182) (not e!2648994))))

(assert (=> b!4266465 (= res!1753182 (= (size!34622 lt!1511891) (+ (size!34622 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))) (size!34622 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))))))

(declare-fun b!4266464 () Bool)

(declare-fun e!2648995 () List!47392)

(assert (=> b!4266464 (= e!2648995 (Cons!47268 (h!52688 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))) (++!12049 (t!353461 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))) (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))))

(declare-fun b!4266463 () Bool)

(assert (=> b!4266463 (= e!2648995 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(declare-fun d!1257671 () Bool)

(assert (=> d!1257671 e!2648994))

(declare-fun res!1753183 () Bool)

(assert (=> d!1257671 (=> (not res!1753183) (not e!2648994))))

(assert (=> d!1257671 (= res!1753183 (= (content!7469 lt!1511891) (set.union (content!7469 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))) (content!7469 (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))))))

(assert (=> d!1257671 (= lt!1511891 e!2648995)))

(declare-fun c!725307 () Bool)

(assert (=> d!1257671 (= c!725307 (is-Nil!47268 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))))

(assert (=> d!1257671 (= (++!12049 (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))) lt!1511891)))

(assert (= (and d!1257671 c!725307) b!4266463))

(assert (= (and d!1257671 (not c!725307)) b!4266464))

(assert (= (and d!1257671 res!1753183) b!4266465))

(assert (= (and b!4266465 res!1753182) b!4266466))

(declare-fun m!4858245 () Bool)

(assert (=> b!4266465 m!4858245))

(assert (=> b!4266465 m!4855967))

(declare-fun m!4858247 () Bool)

(assert (=> b!4266465 m!4858247))

(assert (=> b!4266465 m!4855969))

(declare-fun m!4858249 () Bool)

(assert (=> b!4266465 m!4858249))

(assert (=> b!4266464 m!4855969))

(declare-fun m!4858251 () Bool)

(assert (=> b!4266464 m!4858251))

(declare-fun m!4858253 () Bool)

(assert (=> d!1257671 m!4858253))

(assert (=> d!1257671 m!4855967))

(declare-fun m!4858255 () Bool)

(assert (=> d!1257671 m!4858255))

(assert (=> d!1257671 m!4855969))

(declare-fun m!4858257 () Bool)

(assert (=> d!1257671 m!4858257))

(assert (=> b!4265424 d!1257671))

(declare-fun b!4266469 () Bool)

(declare-fun e!2648997 () List!47392)

(assert (=> b!4266469 (= e!2648997 (list!17077 (xs!17556 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))))

(declare-fun b!4266467 () Bool)

(declare-fun e!2648996 () List!47392)

(assert (=> b!4266467 (= e!2648996 Nil!47268)))

(declare-fun d!1257673 () Bool)

(declare-fun c!725308 () Bool)

(assert (=> d!1257673 (= c!725308 (is-Empty!14250 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(assert (=> d!1257673 (= (list!17075 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) e!2648996)))

(declare-fun b!4266470 () Bool)

(assert (=> b!4266470 (= e!2648997 (++!12049 (list!17075 (left!35040 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))) (list!17075 (right!35370 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))))

(declare-fun b!4266468 () Bool)

(assert (=> b!4266468 (= e!2648996 e!2648997)))

(declare-fun c!725309 () Bool)

(assert (=> b!4266468 (= c!725309 (is-Leaf!22031 (left!35040 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(assert (= (and d!1257673 c!725308) b!4266467))

(assert (= (and d!1257673 (not c!725308)) b!4266468))

(assert (= (and b!4266468 c!725309) b!4266469))

(assert (= (and b!4266468 (not c!725309)) b!4266470))

(declare-fun m!4858259 () Bool)

(assert (=> b!4266469 m!4858259))

(declare-fun m!4858261 () Bool)

(assert (=> b!4266470 m!4858261))

(declare-fun m!4858263 () Bool)

(assert (=> b!4266470 m!4858263))

(assert (=> b!4266470 m!4858261))

(assert (=> b!4266470 m!4858263))

(declare-fun m!4858265 () Bool)

(assert (=> b!4266470 m!4858265))

(assert (=> b!4265424 d!1257673))

(declare-fun b!4266473 () Bool)

(declare-fun e!2648999 () List!47392)

(assert (=> b!4266473 (= e!2648999 (list!17077 (xs!17556 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))))))

(declare-fun b!4266471 () Bool)

(declare-fun e!2648998 () List!47392)

(assert (=> b!4266471 (= e!2648998 Nil!47268)))

(declare-fun d!1257675 () Bool)

(declare-fun c!725310 () Bool)

(assert (=> d!1257675 (= c!725310 (is-Empty!14250 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(assert (=> d!1257675 (= (list!17075 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) e!2648998)))

(declare-fun b!4266474 () Bool)

(assert (=> b!4266474 (= e!2648999 (++!12049 (list!17075 (left!35040 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013)))))))) (list!17075 (right!35370 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))))

(declare-fun b!4266472 () Bool)

(assert (=> b!4266472 (= e!2648998 e!2648999)))

(declare-fun c!725311 () Bool)

(assert (=> b!4266472 (= c!725311 (is-Leaf!22031 (right!35370 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(assert (= (and d!1257675 c!725310) b!4266471))

(assert (= (and d!1257675 (not c!725310)) b!4266472))

(assert (= (and b!4266472 c!725311) b!4266473))

(assert (= (and b!4266472 (not c!725311)) b!4266474))

(declare-fun m!4858267 () Bool)

(assert (=> b!4266473 m!4858267))

(declare-fun m!4858269 () Bool)

(assert (=> b!4266474 m!4858269))

(declare-fun m!4858271 () Bool)

(assert (=> b!4266474 m!4858271))

(assert (=> b!4266474 m!4858269))

(assert (=> b!4266474 m!4858271))

(declare-fun m!4858273 () Bool)

(assert (=> b!4266474 m!4858273))

(assert (=> b!4265424 d!1257675))

(assert (=> b!4265405 d!1257401))

(assert (=> b!4265405 d!1257403))

(declare-fun d!1257677 () Bool)

(declare-fun e!2649000 () Bool)

(assert (=> d!1257677 e!2649000))

(declare-fun res!1753184 () Bool)

(assert (=> d!1257677 (=> (not res!1753184) (not e!2649000))))

(declare-fun lt!1511892 () BalanceConc!28010)

(assert (=> d!1257677 (= res!1753184 (= (list!17073 lt!1511892) (Cons!47268 #x003C (Cons!47268 #x003D Nil!47268))))))

(assert (=> d!1257677 (= lt!1511892 (BalanceConc!28011 (fromList!917 (Cons!47268 #x003C (Cons!47268 #x003D Nil!47268)))))))

(assert (=> d!1257677 (= (fromListB!2657 (Cons!47268 #x003C (Cons!47268 #x003D Nil!47268))) lt!1511892)))

(declare-fun b!4266475 () Bool)

(assert (=> b!4266475 (= e!2649000 (isBalanced!3809 (fromList!917 (Cons!47268 #x003C (Cons!47268 #x003D Nil!47268)))))))

(assert (= (and d!1257677 res!1753184) b!4266475))

(declare-fun m!4858275 () Bool)

(assert (=> d!1257677 m!4858275))

(declare-fun m!4858277 () Bool)

(assert (=> d!1257677 m!4858277))

(assert (=> b!4266475 m!4858277))

(assert (=> b!4266475 m!4858277))

(declare-fun m!4858279 () Bool)

(assert (=> b!4266475 m!4858279))

(assert (=> d!1256807 d!1257677))

(declare-fun d!1257679 () Bool)

(declare-fun e!2649001 () Bool)

(assert (=> d!1257679 e!2649001))

(declare-fun res!1753185 () Bool)

(assert (=> d!1257679 (=> (not res!1753185) (not e!2649001))))

(declare-fun lt!1511893 () BalanceConc!28010)

(assert (=> d!1257679 (= res!1753185 (= (list!17073 lt!1511893) (Cons!47268 #x0021 Nil!47268)))))

(assert (=> d!1257679 (= lt!1511893 (BalanceConc!28011 (fromList!917 (Cons!47268 #x0021 Nil!47268))))))

(assert (=> d!1257679 (= (fromListB!2657 (Cons!47268 #x0021 Nil!47268)) lt!1511893)))

(declare-fun b!4266476 () Bool)

(assert (=> b!4266476 (= e!2649001 (isBalanced!3809 (fromList!917 (Cons!47268 #x0021 Nil!47268))))))

(assert (= (and d!1257679 res!1753185) b!4266476))

(declare-fun m!4858281 () Bool)

(assert (=> d!1257679 m!4858281))

(declare-fun m!4858283 () Bool)

(assert (=> d!1257679 m!4858283))

(assert (=> b!4266476 m!4858283))

(assert (=> b!4266476 m!4858283))

(declare-fun m!4858285 () Bool)

(assert (=> b!4266476 m!4858285))

(assert (=> d!1256837 d!1257679))

(declare-fun d!1257681 () Bool)

(assert (=> d!1257681 (= (list!17077 (xs!17556 (c!724708 lt!1511531))) (innerList!14310 (xs!17556 (c!724708 lt!1511531))))))

(assert (=> b!4265463 d!1257681))

(declare-fun d!1257683 () Bool)

(declare-fun lt!1511894 () Bool)

(assert (=> d!1257683 (= lt!1511894 (isEmpty!27997 (list!17075 (right!35370 (fromList!917 (Cons!47268 #x002B Nil!47268))))))))

(assert (=> d!1257683 (= lt!1511894 (= (size!34624 (right!35370 (fromList!917 (Cons!47268 #x002B Nil!47268)))) 0))))

(assert (=> d!1257683 (= (isEmpty!27994 (right!35370 (fromList!917 (Cons!47268 #x002B Nil!47268)))) lt!1511894)))

(declare-fun bs!599336 () Bool)

(assert (= bs!599336 d!1257683))

(declare-fun m!4858287 () Bool)

(assert (=> bs!599336 m!4858287))

(assert (=> bs!599336 m!4858287))

(declare-fun m!4858289 () Bool)

(assert (=> bs!599336 m!4858289))

(declare-fun m!4858291 () Bool)

(assert (=> bs!599336 m!4858291))

(assert (=> b!4265406 d!1257683))

(declare-fun d!1257685 () Bool)

(declare-fun res!1753191 () Bool)

(declare-fun e!2649002 () Bool)

(assert (=> d!1257685 (=> res!1753191 e!2649002)))

(assert (=> d!1257685 (= res!1753191 (not (is-Node!14250 (fromList!917 (value!248406 (toValue!17 thiss!2520 x!738013))))))))

(assert (=> d!1257685 (= (isBalanced!3809 (fromList!917 (value!248406 (toValue!17 thiss!2520 x!738013)))) e!2649002)))

(declare-fun b!4266477 () Bool)

(declare-fun e!2649003 () Bool)

(assert (=> b!4266477 (= e!2649002 e!2649003)))

(declare-fun res!1753187 () Bool)

(assert (=> b!4266477 (=> (not res!1753187) (not e!2649003))))

(assert (=> b!4266477 (= res!1753187 (<= (- 1) (- (height!1875 (left!35040 (fromList!917 (value!248406 (toValue!17 thiss!2520 x!738013))))) (height!1875 (right!35370 (fromList!917 (value!248406 (toValue!17 thiss!2520 x!738013))))))))))

(declare-fun b!4266478 () Bool)

(declare-fun res!1753188 () Bool)

(assert (=> b!4266478 (=> (not res!1753188) (not e!2649003))))

(assert (=> b!4266478 (= res!1753188 (isBalanced!3809 (left!35040 (fromList!917 (value!248406 (toValue!17 thiss!2520 x!738013))))))))

(declare-fun b!4266479 () Bool)

(declare-fun res!1753190 () Bool)

(assert (=> b!4266479 (=> (not res!1753190) (not e!2649003))))

(assert (=> b!4266479 (= res!1753190 (<= (- (height!1875 (left!35040 (fromList!917 (value!248406 (toValue!17 thiss!2520 x!738013))))) (height!1875 (right!35370 (fromList!917 (value!248406 (toValue!17 thiss!2520 x!738013)))))) 1))))

(declare-fun b!4266480 () Bool)

(assert (=> b!4266480 (= e!2649003 (not (isEmpty!27994 (right!35370 (fromList!917 (value!248406 (toValue!17 thiss!2520 x!738013)))))))))

(declare-fun b!4266481 () Bool)

(declare-fun res!1753189 () Bool)

(assert (=> b!4266481 (=> (not res!1753189) (not e!2649003))))

(assert (=> b!4266481 (= res!1753189 (isBalanced!3809 (right!35370 (fromList!917 (value!248406 (toValue!17 thiss!2520 x!738013))))))))

(declare-fun b!4266482 () Bool)

(declare-fun res!1753186 () Bool)

(assert (=> b!4266482 (=> (not res!1753186) (not e!2649003))))

(assert (=> b!4266482 (= res!1753186 (not (isEmpty!27994 (left!35040 (fromList!917 (value!248406 (toValue!17 thiss!2520 x!738013)))))))))

(assert (= (and d!1257685 (not res!1753191)) b!4266477))

(assert (= (and b!4266477 res!1753187) b!4266479))

(assert (= (and b!4266479 res!1753190) b!4266478))

(assert (= (and b!4266478 res!1753188) b!4266481))

(assert (= (and b!4266481 res!1753189) b!4266482))

(assert (= (and b!4266482 res!1753186) b!4266480))

(declare-fun m!4858293 () Bool)

(assert (=> b!4266477 m!4858293))

(declare-fun m!4858295 () Bool)

(assert (=> b!4266477 m!4858295))

(declare-fun m!4858297 () Bool)

(assert (=> b!4266481 m!4858297))

(declare-fun m!4858299 () Bool)

(assert (=> b!4266478 m!4858299))

(declare-fun m!4858301 () Bool)

(assert (=> b!4266480 m!4858301))

(assert (=> b!4266479 m!4858293))

(assert (=> b!4266479 m!4858295))

(declare-fun m!4858303 () Bool)

(assert (=> b!4266482 m!4858303))

(assert (=> b!4265402 d!1257685))

(assert (=> b!4265402 d!1257651))

(declare-fun d!1257687 () Bool)

(assert (=> d!1257687 (= (list!17077 (xs!17556 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))) (innerList!14310 (xs!17556 (c!724708 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 x!738013))))))))))

(assert (=> b!4265423 d!1257687))

(declare-fun d!1257689 () Bool)

(declare-fun e!2649004 () Bool)

(assert (=> d!1257689 e!2649004))

(declare-fun res!1753192 () Bool)

(assert (=> d!1257689 (=> (not res!1753192) (not e!2649004))))

(declare-fun lt!1511895 () BalanceConc!28010)

(assert (=> d!1257689 (= res!1753192 (= (list!17073 lt!1511895) (Cons!47268 #x007C (Cons!47268 #x007C Nil!47268))))))

(assert (=> d!1257689 (= lt!1511895 (BalanceConc!28011 (fromList!917 (Cons!47268 #x007C (Cons!47268 #x007C Nil!47268)))))))

(assert (=> d!1257689 (= (fromListB!2657 (Cons!47268 #x007C (Cons!47268 #x007C Nil!47268))) lt!1511895)))

(declare-fun b!4266483 () Bool)

(assert (=> b!4266483 (= e!2649004 (isBalanced!3809 (fromList!917 (Cons!47268 #x007C (Cons!47268 #x007C Nil!47268)))))))

(assert (= (and d!1257689 res!1753192) b!4266483))

(declare-fun m!4858305 () Bool)

(assert (=> d!1257689 m!4858305))

(declare-fun m!4858307 () Bool)

(assert (=> d!1257689 m!4858307))

(assert (=> b!4266483 m!4858307))

(assert (=> b!4266483 m!4858307))

(declare-fun m!4858309 () Bool)

(assert (=> b!4266483 m!4858309))

(assert (=> d!1256801 d!1257689))

(declare-fun d!1257691 () Bool)

(declare-fun res!1753198 () Bool)

(declare-fun e!2649005 () Bool)

(assert (=> d!1257691 (=> res!1753198 e!2649005)))

(assert (=> d!1257691 (= res!1753198 (not (is-Node!14250 (left!35040 (fromList!917 (Cons!47268 #x002B Nil!47268))))))))

(assert (=> d!1257691 (= (isBalanced!3809 (left!35040 (fromList!917 (Cons!47268 #x002B Nil!47268)))) e!2649005)))

(declare-fun b!4266484 () Bool)

(declare-fun e!2649006 () Bool)

(assert (=> b!4266484 (= e!2649005 e!2649006)))

(declare-fun res!1753194 () Bool)

(assert (=> b!4266484 (=> (not res!1753194) (not e!2649006))))

(assert (=> b!4266484 (= res!1753194 (<= (- 1) (- (height!1875 (left!35040 (left!35040 (fromList!917 (Cons!47268 #x002B Nil!47268))))) (height!1875 (right!35370 (left!35040 (fromList!917 (Cons!47268 #x002B Nil!47268))))))))))

(declare-fun b!4266485 () Bool)

(declare-fun res!1753195 () Bool)

(assert (=> b!4266485 (=> (not res!1753195) (not e!2649006))))

(assert (=> b!4266485 (= res!1753195 (isBalanced!3809 (left!35040 (left!35040 (fromList!917 (Cons!47268 #x002B Nil!47268))))))))

(declare-fun b!4266486 () Bool)

(declare-fun res!1753197 () Bool)

(assert (=> b!4266486 (=> (not res!1753197) (not e!2649006))))

(assert (=> b!4266486 (= res!1753197 (<= (- (height!1875 (left!35040 (left!35040 (fromList!917 (Cons!47268 #x002B Nil!47268))))) (height!1875 (right!35370 (left!35040 (fromList!917 (Cons!47268 #x002B Nil!47268)))))) 1))))

(declare-fun b!4266487 () Bool)

(assert (=> b!4266487 (= e!2649006 (not (isEmpty!27994 (right!35370 (left!35040 (fromList!917 (Cons!47268 #x002B Nil!47268)))))))))

(declare-fun b!4266488 () Bool)

(declare-fun res!1753196 () Bool)

(assert (=> b!4266488 (=> (not res!1753196) (not e!2649006))))

(assert (=> b!4266488 (= res!1753196 (isBalanced!3809 (right!35370 (left!35040 (fromList!917 (Cons!47268 #x002B Nil!47268))))))))

(declare-fun b!4266489 () Bool)

(declare-fun res!1753193 () Bool)

(assert (=> b!4266489 (=> (not res!1753193) (not e!2649006))))

(assert (=> b!4266489 (= res!1753193 (not (isEmpty!27994 (left!35040 (left!35040 (fromList!917 (Cons!47268 #x002B Nil!47268)))))))))

(assert (= (and d!1257691 (not res!1753198)) b!4266484))

(assert (= (and b!4266484 res!1753194) b!4266486))

(assert (= (and b!4266486 res!1753197) b!4266485))

(assert (= (and b!4266485 res!1753195) b!4266488))

(assert (= (and b!4266488 res!1753196) b!4266489))

(assert (= (and b!4266489 res!1753193) b!4266487))

(declare-fun m!4858311 () Bool)

(assert (=> b!4266484 m!4858311))

(declare-fun m!4858313 () Bool)

(assert (=> b!4266484 m!4858313))

(declare-fun m!4858315 () Bool)

(assert (=> b!4266488 m!4858315))

(declare-fun m!4858317 () Bool)

(assert (=> b!4266485 m!4858317))

(declare-fun m!4858319 () Bool)

(assert (=> b!4266487 m!4858319))

(assert (=> b!4266486 m!4858311))

(assert (=> b!4266486 m!4858313))

(declare-fun m!4858321 () Bool)

(assert (=> b!4266489 m!4858321))

(assert (=> b!4265404 d!1257691))

(declare-fun bs!599337 () Bool)

(declare-fun s!239098 () Bool)

(assert (= bs!599337 (and neg-inst!1556 s!239098)))

(assert (=> bs!599337 (=> true (= (list!17073 (toCharacters!10 thiss!2520 (toValue!17 thiss!2520 lt!1511531))) (list!17073 lt!1511531)))))

(declare-fun m!4858323 () Bool)

(assert (=> m!4855323 m!4858323))

(declare-fun m!4858325 () Bool)

(assert (=> m!4855323 m!4858325))

(declare-fun m!4858327 () Bool)

(assert (=> m!4855323 m!4858327))

(assert (=> m!4855323 s!239098))

(push 1)

(assert (not b!4265911))

(assert (not d!1257391))

(assert (not b!4266443))

(assert (not b!4266011))

(assert (not b!4265980))

(assert (not b!4266136))

(assert (not b!4266033))

(assert (not b!4265631))

(assert (not d!1257651))

(assert (not b!4265951))

(assert (not b!4266045))

(assert (not b!4265639))

(assert (not b!4265700))

(assert (not d!1257313))

(assert (not b!4265921))

(assert (not b!4266003))

(assert (not b!4266071))

(assert (not b!4265934))

(assert (not b!4265894))

(assert (not b!4265599))

(assert (not b!4265888))

(assert (not b!4265566))

(assert (not b!4266052))

(assert (not b!4266087))

(assert (not b!4265561))

(assert (not b!4265582))

(assert (not b!4265923))

(assert (not b!4265650))

(assert (not b!4265583))

(assert (not b!4266034))

(assert (not b!4265882))

(assert (not d!1257217))

(assert (not b!4266056))

(assert (not b!4265870))

(assert (not b!4265876))

(assert (not bm!294049))

(assert (not b!4265614))

(assert (not b!4266037))

(assert (not bm!294044))

(assert (not d!1257665))

(assert (not b!4265591))

(assert (not b!4265250))

(assert (not b!4266450))

(assert (not b!4266461))

(assert (not d!1257355))

(assert (not b!4265567))

(assert (not d!1257307))

(assert (not b!4265619))

(assert (not b!4265900))

(assert (not b!4265634))

(assert (not b!4265707))

(assert (not b!4265897))

(assert (not b!4265678))

(assert (not b!4265676))

(assert (not b!4265595))

(assert (not b!4266097))

(assert (not d!1257677))

(assert (not b!4265973))

(assert (not b!4266058))

(assert (not b!4265949))

(assert (not b!4266473))

(assert (not b!4266115))

(assert (not b!4265248))

(assert (not b!4265933))

(assert (not b!4266453))

(assert (not b!4266142))

(assert (not b!4265611))

(assert (not d!1257253))

(assert (not b!4266020))

(assert (not b!4265943))

(assert (not b!4266124))

(assert (not b!4265995))

(assert (not b!4266013))

(assert (not b!4266429))

(assert (not b!4266110))

(assert (not b!4265559))

(assert (not b!4265698))

(assert (not b!4266117))

(assert (not b!4265889))

(assert (not b!4266042))

(assert (not b!4266108))

(assert (not b!4266028))

(assert (not b!4265964))

(assert (not b!4265953))

(assert (not bm!294048))

(assert (not b!4265672))

(assert (not b!4265658))

(assert (not b!4265987))

(assert (not b!4266430))

(assert (not b!4266465))

(assert (not b!4265708))

(assert (not b!4265936))

(assert (not b!4266462))

(assert (not bm!294047))

(assert (not b!4265961))

(assert (not b!4265940))

(assert (not b!4266139))

(assert (not b!4265666))

(assert (not b!4265560))

(assert (not b!4265587))

(assert (not b!4265640))

(assert (not b!4266140))

(assert (not b!4266121))

(assert (not b!4265638))

(assert (not b!4265939))

(assert (not d!1257663))

(assert (not b!4266007))

(assert (not b!4266088))

(assert (not b!4265649))

(assert (not d!1257419))

(assert (not d!1257379))

(assert (not d!1257637))

(assert (not b!4265989))

(assert (not b!4265641))

(assert (not b!4265642))

(assert (not b!4265574))

(assert (not d!1257335))

(assert (not b!4266093))

(assert (not b!4266046))

(assert (not b!4265694))

(assert (not b!4265637))

(assert (not b!4266077))

(assert (not b!4265997))

(assert (not b!4265902))

(assert (not b!4265627))

(assert (not b!4266482))

(assert (not bm!294046))

(assert (not b!4265688))

(assert (not b!4265565))

(assert (not b!4266067))

(assert (not b!4266062))

(assert (not b!4265963))

(assert (not d!1257387))

(assert (not d!1257353))

(assert (not b!4265660))

(assert (not d!1257303))

(assert (not b!4265968))

(assert (not b!4266049))

(assert (not b!4266484))

(assert (not d!1257349))

(assert (not d!1257689))

(assert (not b!4265647))

(assert (not b!4266483))

(assert (not b!4266438))

(assert (not b!4265874))

(assert (not b!4265966))

(assert (not d!1257333))

(assert (not b!4265954))

(assert (not b!4265654))

(assert (not b!4265974))

(assert (not b!4266489))

(assert (not b!4266441))

(assert (not b!4266130))

(assert (not b!4265670))

(assert (not d!1257281))

(assert (not b!4266132))

(assert (not b!4265604))

(assert (not b!4266059))

(assert (not b!4265704))

(assert (not b!4265917))

(assert (not b!4265868))

(assert (not b!4265904))

(assert (not b!4265886))

(assert (not d!1257305))

(assert (not b!4265979))

(assert (not b!4265867))

(assert (not d!1257293))

(assert (not b!4266447))

(assert (not d!1257241))

(assert (not b!4265655))

(assert (not d!1257317))

(assert (not b!4265607))

(assert (not d!1257393))

(assert (not b!4265564))

(assert (not b!4266488))

(assert (not b!4265661))

(assert (not b!4266118))

(assert (not b!4265623))

(assert (not b!4266485))

(assert (not b!4266009))

(assert (not b!4265899))

(assert (not d!1257649))

(assert (not b!4265959))

(assert (not b!4265573))

(assert (not b!4266479))

(assert (not b!4265937))

(assert (not b!4266072))

(assert (not d!1257219))

(assert (not b!4266137))

(assert (not d!1257641))

(assert (not b!4265578))

(assert (not b!4266112))

(assert (not b!4266109))

(assert (not d!1257351))

(assert (not b!4266426))

(assert (not b!4266141))

(assert (not b!4265686))

(assert (not d!1257263))

(assert (not b!4265562))

(assert (not d!1257643))

(assert (not b!4266119))

(assert (not b!4266031))

(assert (not b!4265682))

(assert (not b!4265629))

(assert (not b!4265941))

(assert (not b!4265684))

(assert (not b!4266120))

(assert (not d!1257299))

(assert (not b!4265554))

(assert (not b!4265871))

(assert (not b!4266470))

(assert (not b!4265669))

(assert (not b!4265880))

(assert (not b!4266486))

(assert (not b!4266048))

(assert (not d!1257377))

(assert (not b!4265596))

(assert (not b!4266134))

(assert (not b!4265990))

(assert (not b!4266114))

(assert (not b!4265915))

(assert (not b!4265601))

(assert (not b!4266481))

(assert (not b!4266078))

(assert (not b!4265971))

(assert (not b!4265570))

(assert (not b!4265887))

(assert (not b!4265579))

(assert (not d!1257257))

(assert (not b!4265563))

(assert (not b!4265892))

(assert (not b!4265896))

(assert (not b!4266452))

(assert (not b!4266032))

(assert (not b!4266143))

(assert (not b!4266437))

(assert (not b!4265697))

(assert (not b!4266478))

(assert (not b!4266065))

(assert (not b!4265913))

(assert (not b!4266128))

(assert (not b!4266095))

(assert (not b!4265689))

(assert (not b!4266030))

(assert (not b!4265674))

(assert (not b!4266423))

(assert (not b!4265613))

(assert (not b!4265938))

(assert (not b!4265609))

(assert (not d!1257267))

(assert (not b!4266477))

(assert (not b!4266075))

(assert (not b!4266122))

(assert (not b!4266083))

(assert (not b!4266004))

(assert (not b!4266457))

(assert (not b!4266068))

(assert (not b!4266474))

(assert (not b!4265969))

(assert (not d!1257389))

(assert (not b!4266427))

(assert (not b!4265569))

(assert (not d!1257337))

(assert (not b!4265702))

(assert (not d!1257359))

(assert (not b!4265652))

(assert (not b!4265985))

(assert (not b!4266425))

(assert (not d!1257347))

(assert (not d!1257283))

(assert (not d!1257409))

(assert (not b!4266026))

(assert (not b!4265625))

(assert (not b!4266103))

(assert (not b!4266054))

(assert (not b!4266480))

(assert (not b!4266015))

(assert (not b!4266039))

(assert (not b!4266424))

(assert (not b!4266428))

(assert (not b!4265592))

(assert (not b!4266432))

(assert (not b!4266458))

(assert (not b!4265557))

(assert (not b!4265645))

(assert (not b!4266433))

(assert (not b!4265693))

(assert (not b!4266126))

(assert (not b!4266019))

(assert (not b!4265558))

(assert (not b!4266035))

(assert (not b!4265665))

(assert (not d!1257671))

(assert (not d!1257383))

(assert (not d!1257683))

(assert (not d!1257385))

(assert (not b!4265929))

(assert (not b!4266445))

(assert (not b!4265890))

(assert (not b!4266098))

(assert (not b!4266101))

(assert (not d!1257363))

(assert (not b!4266464))

(assert (not b!4265999))

(assert (not b!4265622))

(assert (not b!4266135))

(assert (not d!1257661))

(assert (not b!4266133))

(assert (not b!4265878))

(assert (not b!4265885))

(assert (not b!4265977))

(assert (not b!4266023))

(assert (not b!4265944))

(assert (not b!4266476))

(assert (not b!4266138))

(assert (not b!4265947))

(assert (not b!4265869))

(assert (not b!4265643))

(assert (not b!4265957))

(assert (not bs!599337))

(assert (not b!4265872))

(assert (not b!4265919))

(assert (not b!4265927))

(assert (not b!4265924))

(assert (not d!1257679))

(assert (not b!4265603))

(assert (not b!4266069))

(assert (not b!4266000))

(assert (not d!1257315))

(assert (not b!4266029))

(assert (not b!4266085))

(assert (not b!4266475))

(assert (not b!4265931))

(assert (not b!4265597))

(assert (not b!4265589))

(assert (not b!4266487))

(assert (not b!4266105))

(assert (not d!1257309))

(assert (not b!4266066))

(assert (not d!1257243))

(assert (not b!4265618))

(assert (not b!4266024))

(assert (not b!4266449))

(assert (not d!1257221))

(assert (not b!4266017))

(assert (not b!4266442))

(assert (not b!4265884))

(assert (not d!1257311))

(assert (not b!4266021))

(assert (not b!4266469))

(assert (not b!4265680))

(assert (not b!4265633))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

