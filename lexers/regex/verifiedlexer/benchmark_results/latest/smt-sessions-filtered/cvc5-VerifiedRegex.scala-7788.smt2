; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!409214 () Bool)

(assert start!409214)

(assert (=> start!409214 true))

(declare-fun b!4268950 () Bool)

(declare-fun e!2650462 () Bool)

(declare-datatypes ((List!47408 0))(
  ( (Nil!47284) (Cons!47284 (h!52704 (_ BitVec 16)) (t!353581 List!47408)) )
))
(declare-datatypes ((IArray!28537 0))(
  ( (IArray!28538 (innerList!14326 List!47408)) )
))
(declare-datatypes ((Conc!14266 0))(
  ( (Node!14266 (left!35088 Conc!14266) (right!35418 Conc!14266) (csize!28762 Int) (cheight!14477 Int)) (Leaf!22055 (xs!17572 IArray!28537) (csize!28763 Int)) (Empty!14266) )
))
(declare-datatypes ((BalanceConc!28042 0))(
  ( (BalanceConc!28043 (c!726091 Conc!14266)) )
))
(declare-fun x!739331 () BalanceConc!28042)

(declare-fun tp!1307745 () Bool)

(declare-fun inv!62287 (Conc!14266) Bool)

(assert (=> b!4268950 (= e!2650462 (and (inv!62287 (c!726091 x!739331)) tp!1307745))))

(declare-datatypes ((IdentifierValueInjection!28 0))(
  ( (IdentifierValueInjection!29) )
))
(declare-fun thiss!2252 () IdentifierValueInjection!28)

(declare-fun inst!1616 () Bool)

(declare-fun inv!62288 (BalanceConc!28042) Bool)

(declare-fun list!17109 (BalanceConc!28042) List!47408)

(declare-datatypes ((TokenValue!8239 0))(
  ( (FloatLiteralValue!16478 (text!58118 List!47408)) (TokenValueExt!8238 (__x!28685 Int)) (Broken!41195 (value!248811 List!47408)) (Object!8362) (End!8239) (Def!8239) (Underscore!8239) (Match!8239) (Else!8239) (Error!8239) (Case!8239) (If!8239) (Extends!8239) (Abstract!8239) (Class!8239) (Val!8239) (DelimiterValue!16478 (del!8299 List!47408)) (KeywordValue!8245 (value!248812 List!47408)) (CommentValue!16478 (value!248813 List!47408)) (WhitespaceValue!16478 (value!248814 List!47408)) (IndentationValue!8239 (value!248815 List!47408)) (String!55194) (Int32!8239) (Broken!41196 (value!248816 List!47408)) (Boolean!8240) (Unit!66181) (OperatorValue!8242 (op!8299 List!47408)) (IdentifierValue!16478 (value!248817 List!47408)) (IdentifierValue!16479 (value!248818 List!47408)) (WhitespaceValue!16479 (value!248819 List!47408)) (True!16478) (False!16478) (Broken!41197 (value!248820 List!47408)) (Broken!41198 (value!248821 List!47408)) (True!16479) (RightBrace!8239) (RightBracket!8239) (Colon!8239) (Null!8239) (Comma!8239) (LeftBracket!8239) (False!16479) (LeftBrace!8239) (ImaginaryLiteralValue!8239 (text!58119 List!47408)) (StringLiteralValue!24717 (value!248822 List!47408)) (EOFValue!8239 (value!248823 List!47408)) (IdentValue!8239 (value!248824 List!47408)) (DelimiterValue!16479 (value!248825 List!47408)) (DedentValue!8239 (value!248826 List!47408)) (NewLineValue!8239 (value!248827 List!47408)) (IntegerValue!24717 (value!248828 (_ BitVec 32)) (text!58120 List!47408)) (IntegerValue!24718 (value!248829 Int) (text!58121 List!47408)) (Times!8239) (Or!8239) (Equal!8239) (Minus!8239) (Broken!41199 (value!248830 List!47408)) (And!8239) (Div!8239) (LessEqual!8239) (Mod!8239) (Concat!21137) (Not!8239) (Plus!8239) (SpaceValue!8239 (value!248831 List!47408)) (IntegerValue!24719 (value!248832 Int) (text!58122 List!47408)) (StringLiteralValue!24718 (text!58123 List!47408)) (FloatLiteralValue!16479 (text!58124 List!47408)) (BytesLiteralValue!8239 (value!248833 List!47408)) (CommentValue!16479 (value!248834 List!47408)) (StringLiteralValue!24719 (value!248835 List!47408)) (ErrorTokenValue!8239 (msg!8300 List!47408)) )
))
(declare-fun toCharacters!6 (IdentifierValueInjection!28 TokenValue!8239) BalanceConc!28042)

(declare-fun toValue!13 (IdentifierValueInjection!28 BalanceConc!28042) TokenValue!8239)

(assert (=> start!409214 (= inst!1616 (=> (and (inv!62288 x!739331) e!2650462) (= (list!17109 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739331))) (list!17109 x!739331))))))

(assert (= start!409214 b!4268950))

(declare-fun m!4861637 () Bool)

(assert (=> b!4268950 m!4861637))

(declare-fun m!4861639 () Bool)

(assert (=> start!409214 m!4861639))

(assert (=> start!409214 m!4861639))

(declare-fun m!4861641 () Bool)

(assert (=> start!409214 m!4861641))

(declare-fun m!4861643 () Bool)

(assert (=> start!409214 m!4861643))

(declare-fun m!4861645 () Bool)

(assert (=> start!409214 m!4861645))

(assert (=> start!409214 m!4861641))

(declare-fun m!4861647 () Bool)

(assert (=> start!409214 m!4861647))

(declare-fun bs!599971 () Bool)

(declare-fun neg-inst!1616 () Bool)

(declare-fun s!239396 () Bool)

(assert (= bs!599971 (and neg-inst!1616 s!239396)))

(assert (=> bs!599971 (=> true (= (list!17109 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739331))) (list!17109 x!739331)))))

(assert (=> m!4861643 m!4861639))

(assert (=> m!4861643 m!4861641))

(assert (=> m!4861643 m!4861647))

(assert (=> m!4861643 s!239396))

(assert (=> m!4861639 s!239396))

(declare-fun bs!599972 () Bool)

(assert (= bs!599972 (and neg-inst!1616 start!409214)))

(assert (=> bs!599972 (= true inst!1616)))

(declare-fun lambda!130534 () Int)

(declare-fun Forall!1619 (Int) Bool)

(assert (=> start!409214 (= (Forall!1619 lambda!130534) inst!1616)))

(assert (=> start!409214 (not (Forall!1619 lambda!130534))))

(assert (=> start!409214 true))

(assert (= neg-inst!1616 inst!1616))

(declare-fun m!4861649 () Bool)

(assert (=> start!409214 m!4861649))

(assert (=> start!409214 m!4861649))

(push 1)

(assert (not bs!599971))

(assert (not b!4268950))

(assert (not start!409214))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1258807 () Bool)

(declare-fun list!17111 (Conc!14266) List!47408)

(assert (=> d!1258807 (= (list!17109 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739331))) (list!17111 (c!726091 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739331)))))))

(declare-fun bs!599975 () Bool)

(assert (= bs!599975 d!1258807))

(declare-fun m!4861665 () Bool)

(assert (=> bs!599975 m!4861665))

(assert (=> bs!599971 d!1258807))

(declare-fun d!1258809 () Bool)

(declare-fun c!726096 () Bool)

(assert (=> d!1258809 (= c!726096 (is-IdentifierValue!16479 (toValue!13 thiss!2252 x!739331)))))

(declare-fun e!2650468 () BalanceConc!28042)

(assert (=> d!1258809 (= (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739331)) e!2650468)))

(declare-fun b!4268960 () Bool)

(declare-fun seqFromList!5856 (List!47408) BalanceConc!28042)

(assert (=> b!4268960 (= e!2650468 (seqFromList!5856 (value!248818 (toValue!13 thiss!2252 x!739331))))))

(declare-fun b!4268961 () Bool)

(assert (=> b!4268961 (= e!2650468 (BalanceConc!28043 Empty!14266))))

(assert (= (and d!1258809 c!726096) b!4268960))

(assert (= (and d!1258809 (not c!726096)) b!4268961))

(declare-fun m!4861667 () Bool)

(assert (=> b!4268960 m!4861667))

(assert (=> bs!599971 d!1258809))

(declare-fun d!1258813 () Bool)

(declare-fun efficientList!453 (BalanceConc!28042) List!47408)

(assert (=> d!1258813 (= (toValue!13 thiss!2252 x!739331) (IdentifierValue!16479 (efficientList!453 x!739331)))))

(declare-fun bs!599977 () Bool)

(assert (= bs!599977 d!1258813))

(declare-fun m!4861671 () Bool)

(assert (=> bs!599977 m!4861671))

(assert (=> bs!599971 d!1258813))

(declare-fun d!1258817 () Bool)

(assert (=> d!1258817 (= (list!17109 x!739331) (list!17111 (c!726091 x!739331)))))

(declare-fun bs!599978 () Bool)

(assert (= bs!599978 d!1258817))

(declare-fun m!4861673 () Bool)

(assert (=> bs!599978 m!4861673))

(assert (=> bs!599971 d!1258817))

(push 1)

(assert (not b!4268950))

(assert (not d!1258813))

(assert (not start!409214))

(assert (not d!1258807))

(assert (not d!1258817))

(assert (not b!4268960))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1258821 () Bool)

(declare-fun c!726105 () Bool)

(assert (=> d!1258821 (= c!726105 (is-Empty!14266 (c!726091 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739331)))))))

(declare-fun e!2650476 () List!47408)

(assert (=> d!1258821 (= (list!17111 (c!726091 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739331)))) e!2650476)))

(declare-fun b!4268976 () Bool)

(assert (=> b!4268976 (= e!2650476 Nil!47284)))

(declare-fun b!4268979 () Bool)

(declare-fun e!2650477 () List!47408)

(declare-fun ++!12058 (List!47408 List!47408) List!47408)

(assert (=> b!4268979 (= e!2650477 (++!12058 (list!17111 (left!35088 (c!726091 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739331))))) (list!17111 (right!35418 (c!726091 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739331)))))))))

(declare-fun b!4268977 () Bool)

(assert (=> b!4268977 (= e!2650476 e!2650477)))

(declare-fun c!726106 () Bool)

(assert (=> b!4268977 (= c!726106 (is-Leaf!22055 (c!726091 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739331)))))))

(declare-fun b!4268978 () Bool)

(declare-fun list!17113 (IArray!28537) List!47408)

(assert (=> b!4268978 (= e!2650477 (list!17113 (xs!17572 (c!726091 (toCharacters!6 thiss!2252 (toValue!13 thiss!2252 x!739331))))))))

(assert (= (and d!1258821 c!726105) b!4268976))

(assert (= (and d!1258821 (not c!726105)) b!4268977))

(assert (= (and b!4268977 c!726106) b!4268978))

(assert (= (and b!4268977 (not c!726106)) b!4268979))

(declare-fun m!4861677 () Bool)

(assert (=> b!4268979 m!4861677))

(declare-fun m!4861679 () Bool)

(assert (=> b!4268979 m!4861679))

(assert (=> b!4268979 m!4861677))

(assert (=> b!4268979 m!4861679))

(declare-fun m!4861681 () Bool)

(assert (=> b!4268979 m!4861681))

(declare-fun m!4861683 () Bool)

(assert (=> b!4268978 m!4861683))

(assert (=> d!1258807 d!1258821))

(declare-fun d!1258823 () Bool)

(declare-fun c!726107 () Bool)

(assert (=> d!1258823 (= c!726107 (is-Empty!14266 (c!726091 x!739331)))))

(declare-fun e!2650478 () List!47408)

(assert (=> d!1258823 (= (list!17111 (c!726091 x!739331)) e!2650478)))

(declare-fun b!4268980 () Bool)

(assert (=> b!4268980 (= e!2650478 Nil!47284)))

(declare-fun b!4268983 () Bool)

(declare-fun e!2650479 () List!47408)

(assert (=> b!4268983 (= e!2650479 (++!12058 (list!17111 (left!35088 (c!726091 x!739331))) (list!17111 (right!35418 (c!726091 x!739331)))))))

(declare-fun b!4268981 () Bool)

(assert (=> b!4268981 (= e!2650478 e!2650479)))

(declare-fun c!726108 () Bool)

(assert (=> b!4268981 (= c!726108 (is-Leaf!22055 (c!726091 x!739331)))))

(declare-fun b!4268982 () Bool)

(assert (=> b!4268982 (= e!2650479 (list!17113 (xs!17572 (c!726091 x!739331))))))

(assert (= (and d!1258823 c!726107) b!4268980))

(assert (= (and d!1258823 (not c!726107)) b!4268981))

(assert (= (and b!4268981 c!726108) b!4268982))

(assert (= (and b!4268981 (not c!726108)) b!4268983))

(declare-fun m!4861685 () Bool)

(assert (=> b!4268983 m!4861685))

(declare-fun m!4861687 () Bool)

(assert (=> b!4268983 m!4861687))

(assert (=> b!4268983 m!4861685))

(assert (=> b!4268983 m!4861687))

(declare-fun m!4861689 () Bool)

(assert (=> b!4268983 m!4861689))

(declare-fun m!4861691 () Bool)

(assert (=> b!4268982 m!4861691))

(assert (=> d!1258817 d!1258823))

(declare-fun d!1258825 () Bool)

(declare-fun lt!1512337 () List!47408)

(assert (=> d!1258825 (= lt!1512337 (list!17109 x!739331))))

(declare-fun efficientList!455 (Conc!14266 List!47408) List!47408)

(declare-fun efficientList$default$2!157 (Conc!14266) List!47408)

(assert (=> d!1258825 (= lt!1512337 (efficientList!455 (c!726091 x!739331) (efficientList$default$2!157 (c!726091 x!739331))))))

(assert (=> d!1258825 (= (efficientList!453 x!739331) lt!1512337)))

(declare-fun bs!599981 () Bool)

(assert (= bs!599981 d!1258825))

(assert (=> bs!599981 m!4861643))

(declare-fun m!4861697 () Bool)

(assert (=> bs!599981 m!4861697))

(assert (=> bs!599981 m!4861697))

(declare-fun m!4861699 () Bool)

(assert (=> bs!599981 m!4861699))

(assert (=> d!1258813 d!1258825))

(push 1)

(assert (not d!1258825))

(assert (not start!409214))

(assert (not b!4268979))

(assert (not b!4268978))

(assert (not b!4268983))

(assert (not b!4268960))

(assert (not b!4268950))

(assert (not b!4268982))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1258831 () Bool)

(declare-fun fromListB!2661 (List!47408) BalanceConc!28042)

(assert (=> d!1258831 (= (seqFromList!5856 (value!248818 (toValue!13 thiss!2252 x!739331))) (fromListB!2661 (value!248818 (toValue!13 thiss!2252 x!739331))))))

(declare-fun bs!599982 () Bool)

(assert (= bs!599982 d!1258831))

(declare-fun m!4861701 () Bool)

(assert (=> bs!599982 m!4861701))

(assert (=> b!4268960 d!1258831))

(assert (=> d!1258825 d!1258817))

(declare-fun b!4269008 () Bool)

(declare-fun e!2650493 () List!47408)

(declare-fun lt!1512349 () List!47408)

(assert (=> b!4269008 (= e!2650493 lt!1512349)))

(declare-fun b!4269009 () Bool)

(declare-fun efficientList!456 (IArray!28537) List!47408)

(assert (=> b!4269009 (= e!2650493 (efficientList!456 (xs!17572 (c!726091 x!739331))))))

(declare-fun b!4269010 () Bool)

(declare-fun e!2650494 () List!47408)

(declare-fun call!294097 () List!47408)

(assert (=> b!4269010 (= e!2650494 call!294097)))

(declare-fun b!4269011 () Bool)

(declare-datatypes ((Unit!66183 0))(
  ( (Unit!66184) )
))
(declare-fun lt!1512352 () Unit!66183)

(declare-fun lt!1512350 () Unit!66183)

(assert (=> b!4269011 (= lt!1512352 lt!1512350)))

(declare-fun lt!1512351 () List!47408)

(assert (=> b!4269011 (= (++!12058 call!294097 (efficientList$default$2!157 (c!726091 x!739331))) (++!12058 lt!1512349 (++!12058 lt!1512351 (efficientList$default$2!157 (c!726091 x!739331)))))))

(declare-fun lemmaConcatAssociativity!2701 (List!47408 List!47408 List!47408) Unit!66183)

(assert (=> b!4269011 (= lt!1512350 (lemmaConcatAssociativity!2701 lt!1512349 lt!1512351 (efficientList$default$2!157 (c!726091 x!739331))))))

(assert (=> b!4269011 (= lt!1512351 (list!17111 (right!35418 (c!726091 x!739331))))))

(assert (=> b!4269011 (= lt!1512349 (list!17111 (left!35088 (c!726091 x!739331))))))

(assert (=> b!4269011 (= e!2650494 (efficientList!455 (left!35088 (c!726091 x!739331)) (efficientList!455 (right!35418 (c!726091 x!739331)) (efficientList$default$2!157 (c!726091 x!739331)))))))

(declare-fun b!4269012 () Bool)

(declare-fun e!2650492 () List!47408)

(assert (=> b!4269012 (= e!2650492 e!2650494)))

(declare-fun c!726123 () Bool)

(assert (=> b!4269012 (= c!726123 (is-Leaf!22055 (c!726091 x!739331)))))

(declare-fun b!4269013 () Bool)

(assert (=> b!4269013 (= e!2650492 (efficientList$default$2!157 (c!726091 x!739331)))))

(declare-fun d!1258833 () Bool)

(declare-fun lt!1512348 () List!47408)

(assert (=> d!1258833 (= lt!1512348 (++!12058 (list!17111 (c!726091 x!739331)) (efficientList$default$2!157 (c!726091 x!739331))))))

(assert (=> d!1258833 (= lt!1512348 e!2650492)))

(declare-fun c!726121 () Bool)

(assert (=> d!1258833 (= c!726121 (is-Empty!14266 (c!726091 x!739331)))))

(assert (=> d!1258833 (= (efficientList!455 (c!726091 x!739331) (efficientList$default$2!157 (c!726091 x!739331))) lt!1512348)))

(declare-fun bm!294092 () Bool)

(declare-fun c!726122 () Bool)

(assert (=> bm!294092 (= c!726122 c!726123)))

(assert (=> bm!294092 (= call!294097 (++!12058 e!2650493 (ite c!726123 (efficientList$default$2!157 (c!726091 x!739331)) lt!1512351)))))

(assert (= (and d!1258833 c!726121) b!4269013))

(assert (= (and d!1258833 (not c!726121)) b!4269012))

(assert (= (and b!4269012 c!726123) b!4269010))

(assert (= (and b!4269012 (not c!726123)) b!4269011))

(assert (= (or b!4269010 b!4269011) bm!294092))

(assert (= (and bm!294092 c!726122) b!4269009))

(assert (= (and bm!294092 (not c!726122)) b!4269008))

(declare-fun m!4861711 () Bool)

(assert (=> b!4269009 m!4861711))

(assert (=> b!4269011 m!4861697))

(declare-fun m!4861713 () Bool)

(assert (=> b!4269011 m!4861713))

(assert (=> b!4269011 m!4861697))

(declare-fun m!4861715 () Bool)

(assert (=> b!4269011 m!4861715))

(assert (=> b!4269011 m!4861697))

(declare-fun m!4861717 () Bool)

(assert (=> b!4269011 m!4861717))

(assert (=> b!4269011 m!4861717))

(declare-fun m!4861719 () Bool)

(assert (=> b!4269011 m!4861719))

(assert (=> b!4269011 m!4861685))

(assert (=> b!4269011 m!4861697))

(declare-fun m!4861721 () Bool)

(assert (=> b!4269011 m!4861721))

(assert (=> b!4269011 m!4861687))

(assert (=> b!4269011 m!4861715))

(declare-fun m!4861723 () Bool)

(assert (=> b!4269011 m!4861723))

(assert (=> d!1258833 m!4861673))

(assert (=> d!1258833 m!4861673))

(assert (=> d!1258833 m!4861697))

(declare-fun m!4861725 () Bool)

(assert (=> d!1258833 m!4861725))

(declare-fun m!4861727 () Bool)

(assert (=> bm!294092 m!4861727))

(assert (=> d!1258825 d!1258833))

(declare-fun d!1258837 () Bool)

(assert (=> d!1258837 (= (efficientList$default$2!157 (c!726091 x!739331)) Nil!47284)))

(assert (=> d!1258825 d!1258837))

(declare-fun d!1258839 () Bool)

(declare-fun c!726128 () Bool)

(assert (=> d!1258839 (= c!726128 (is-Node!14266 (c!726091 x!739331)))))

(declare-fun e!2650501 () Bool)

(assert (=> d!1258839 (= (inv!62287 (c!726091 x!739331)) e!2650501)))

(declare-fun b!4269024 () Bool)

(declare-fun inv!62291 (Conc!14266) Bool)

(assert (=> b!4269024 (= e!2650501 (inv!62291 (c!726091 x!739331)))))

(declare-fun b!4269025 () Bool)

(declare-fun e!2650502 () Bool)

(assert (=> b!4269025 (= e!2650501 e!2650502)))

(declare-fun res!1753839 () Bool)

(assert (=> b!4269025 (= res!1753839 (not (is-Leaf!22055 (c!726091 x!739331))))))

(assert (=> b!4269025 (=> res!1753839 e!2650502)))

(declare-fun b!4269026 () Bool)

(declare-fun inv!62292 (Conc!14266) Bool)

(assert (=> b!4269026 (= e!2650502 (inv!62292 (c!726091 x!739331)))))

(assert (= (and d!1258839 c!726128) b!4269024))

(assert (= (and d!1258839 (not c!726128)) b!4269025))

(assert (= (and b!4269025 (not res!1753839)) b!4269026))

(declare-fun m!4861741 () Bool)

(assert (=> b!4269024 m!4861741))

(declare-fun m!4861743 () Bool)

(assert (=> b!4269026 m!4861743))

(assert (=> b!4268950 d!1258839))

(assert (=> start!409214 d!1258807))

(declare-fun d!1258843 () Bool)

(declare-fun choose!26020 (Int) Bool)

(assert (=> d!1258843 (= (Forall!1619 lambda!130534) (choose!26020 lambda!130534))))

(declare-fun bs!599984 () Bool)

(assert (= bs!599984 d!1258843))

(declare-fun m!4861745 () Bool)

(assert (=> bs!599984 m!4861745))

(assert (=> start!409214 d!1258843))

(assert (=> start!409214 d!1258813))

(assert (=> start!409214 d!1258809))

(declare-fun d!1258845 () Bool)

(declare-fun isBalanced!3822 (Conc!14266) Bool)

(assert (=> d!1258845 (= (inv!62288 x!739331) (isBalanced!3822 (c!726091 x!739331)))))

(declare-fun bs!599985 () Bool)

(assert (= bs!599985 d!1258845))

(declare-fun m!4861747 () Bool)

(assert (=> bs!599985 m!4861747))

(assert (=> start!409214 d!1258845))

(assert (=> start!409214 d!1258817))

(declare-fun e!2650507 () Bool)

(declare-fun tp!1307753 () Bool)

(declare-fun b!4269033 () Bool)

(declare-fun tp!1307754 () Bool)

(assert (=> b!4269033 (= e!2650507 (and (inv!62287 (left!35088 (c!726091 x!739331))) tp!1307753 (inv!62287 (right!35418 (c!726091 x!739331))) tp!1307754))))

(declare-fun b!4269034 () Bool)

(declare-fun inv!62293 (IArray!28537) Bool)

(assert (=> b!4269034 (= e!2650507 (inv!62293 (xs!17572 (c!726091 x!739331))))))

(assert (=> b!4268950 (= tp!1307745 (and (inv!62287 (c!726091 x!739331)) e!2650507))))

(assert (= (and b!4268950 (is-Node!14266 (c!726091 x!739331))) b!4269033))

(assert (= (and b!4268950 (is-Leaf!22055 (c!726091 x!739331))) b!4269034))

(declare-fun m!4861749 () Bool)

(assert (=> b!4269033 m!4861749))

(declare-fun m!4861751 () Bool)

(assert (=> b!4269033 m!4861751))

(declare-fun m!4861753 () Bool)

(assert (=> b!4269034 m!4861753))

(assert (=> b!4268950 m!4861637))

(push 1)

(assert (not d!1258843))

(assert (not bm!294092))

(assert (not b!4268978))

(assert (not b!4269034))

(assert (not d!1258833))

(assert (not b!4269011))

(assert (not b!4269033))

(assert (not b!4269026))

(assert (not b!4268950))

(assert (not b!4268982))

(assert (not b!4269009))

(assert (not b!4268979))

(assert (not d!1258845))

(assert (not b!4268983))

(assert (not b!4269024))

(assert (not d!1258831))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1258857 () Bool)

(declare-fun e!2650521 () Bool)

(assert (=> d!1258857 e!2650521))

(declare-fun res!1753845 () Bool)

(assert (=> d!1258857 (=> (not res!1753845) (not e!2650521))))

(declare-fun lt!1512368 () BalanceConc!28042)

(assert (=> d!1258857 (= res!1753845 (= (list!17109 lt!1512368) (value!248818 (toValue!13 thiss!2252 x!739331))))))

(declare-fun fromList!921 (List!47408) Conc!14266)

(assert (=> d!1258857 (= lt!1512368 (BalanceConc!28043 (fromList!921 (value!248818 (toValue!13 thiss!2252 x!739331)))))))

(assert (=> d!1258857 (= (fromListB!2661 (value!248818 (toValue!13 thiss!2252 x!739331))) lt!1512368)))

(declare-fun b!4269054 () Bool)

(assert (=> b!4269054 (= e!2650521 (isBalanced!3822 (fromList!921 (value!248818 (toValue!13 thiss!2252 x!739331)))))))

(assert (= (and d!1258857 res!1753845) b!4269054))

(declare-fun m!4861765 () Bool)

(assert (=> d!1258857 m!4861765))

(declare-fun m!4861767 () Bool)

(assert (=> d!1258857 m!4861767))

(assert (=> b!4269054 m!4861767))

(assert (=> b!4269054 m!4861767))

(declare-fun m!4861769 () Bool)

(assert (=> b!4269054 m!4861769))

(assert (=> d!1258831 d!1258857))

(declare-fun b!4269070 () Bool)

(declare-fun e!2650529 () Bool)

(declare-fun lt!1512371 () List!47408)

(assert (=> b!4269070 (= e!2650529 (or (not (= (efficientList$default$2!157 (c!726091 x!739331)) Nil!47284)) (= lt!1512371 (list!17111 (c!726091 x!739331)))))))

(declare-fun d!1258859 () Bool)

(assert (=> d!1258859 e!2650529))

(declare-fun res!1753851 () Bool)

(assert (=> d!1258859 (=> (not res!1753851) (not e!2650529))))

(declare-fun content!7473 (List!47408) (Set (_ BitVec 16)))

(assert (=> d!1258859 (= res!1753851 (= (content!7473 lt!1512371) (set.union (content!7473 (list!17111 (c!726091 x!739331))) (content!7473 (efficientList$default$2!157 (c!726091 x!739331))))))))

(declare-fun e!2650528 () List!47408)

(assert (=> d!1258859 (= lt!1512371 e!2650528)))

(declare-fun c!726141 () Bool)

(assert (=> d!1258859 (= c!726141 (is-Nil!47284 (list!17111 (c!726091 x!739331))))))

(assert (=> d!1258859 (= (++!12058 (list!17111 (c!726091 x!739331)) (efficientList$default$2!157 (c!726091 x!739331))) lt!1512371)))

(declare-fun b!4269067 () Bool)

(assert (=> b!4269067 (= e!2650528 (efficientList$default$2!157 (c!726091 x!739331)))))

(declare-fun b!4269069 () Bool)

(declare-fun res!1753850 () Bool)

(assert (=> b!4269069 (=> (not res!1753850) (not e!2650529))))

(declare-fun size!34634 (List!47408) Int)

(assert (=> b!4269069 (= res!1753850 (= (size!34634 lt!1512371) (+ (size!34634 (list!17111 (c!726091 x!739331))) (size!34634 (efficientList$default$2!157 (c!726091 x!739331))))))))

(declare-fun b!4269068 () Bool)

(assert (=> b!4269068 (= e!2650528 (Cons!47284 (h!52704 (list!17111 (c!726091 x!739331))) (++!12058 (t!353581 (list!17111 (c!726091 x!739331))) (efficientList$default$2!157 (c!726091 x!739331)))))))

(assert (= (and d!1258859 c!726141) b!4269067))

(assert (= (and d!1258859 (not c!726141)) b!4269068))

(assert (= (and d!1258859 res!1753851) b!4269069))

(assert (= (and b!4269069 res!1753850) b!4269070))

(declare-fun m!4861771 () Bool)

(assert (=> d!1258859 m!4861771))

(assert (=> d!1258859 m!4861673))

(declare-fun m!4861773 () Bool)

(assert (=> d!1258859 m!4861773))

(assert (=> d!1258859 m!4861697))

(declare-fun m!4861775 () Bool)

(assert (=> d!1258859 m!4861775))

(declare-fun m!4861777 () Bool)

(assert (=> b!4269069 m!4861777))

(assert (=> b!4269069 m!4861673))

(declare-fun m!4861779 () Bool)

(assert (=> b!4269069 m!4861779))

(assert (=> b!4269069 m!4861697))

(declare-fun m!4861781 () Bool)

(assert (=> b!4269069 m!4861781))

(assert (=> b!4269068 m!4861697))

(declare-fun m!4861783 () Bool)

(assert (=> b!4269068 m!4861783))

(assert (=> d!1258833 d!1258859))

(assert (=> d!1258833 d!1258823))

(push 1)

(assert (not d!1258843))

(assert (not d!1258859))

(assert (not b!4269034))

(assert (not b!4269068))

(assert (not b!4269011))

(assert (not b!4269033))

(assert (not b!4269026))

(assert (not b!4268950))

(assert (not b!4268982))

(assert (not b!4269009))

(assert (not b!4269054))

(assert (not bm!294092))

(assert (not b!4268979))

(assert (not d!1258845))

(assert (not b!4268978))

(assert (not b!4269069))

(assert (not b!4268983))

(assert (not b!4269024))

(assert (not d!1258857))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

