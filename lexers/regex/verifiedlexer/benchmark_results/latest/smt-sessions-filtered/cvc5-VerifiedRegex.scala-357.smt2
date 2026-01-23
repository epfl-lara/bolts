; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!11308 () Bool)

(assert start!11308)

(assert (=> start!11308 true))

(declare-fun b!110347 () Bool)

(declare-fun e!61596 () Bool)

(declare-datatypes ((List!1786 0))(
  ( (Nil!1780) (Cons!1780 (h!7177 (_ BitVec 16)) (t!22175 List!1786)) )
))
(declare-datatypes ((IArray!1105 0))(
  ( (IArray!1106 (innerList!610 List!1786)) )
))
(declare-datatypes ((Conc!552 0))(
  ( (Node!552 (left!1497 Conc!552) (right!1827 Conc!552) (csize!1334 Int) (cheight!763 Int)) (Leaf!910 (xs!3147 IArray!1105) (csize!1335 Int)) (Empty!552) )
))
(declare-datatypes ((BalanceConc!1108 0))(
  ( (BalanceConc!1109 (c!26188 Conc!552)) )
))
(declare-fun x!31650 () BalanceConc!1108)

(declare-fun tp!59760 () Bool)

(declare-fun inv!2231 (Conc!552) Bool)

(assert (=> b!110347 (= e!61596 (and (inv!2231 (c!26188 x!31650)) tp!59760))))

(declare-datatypes ((EOFValueInjection!4 0))(
  ( (EOFValueInjection!5) )
))
(declare-fun thiss!5344 () EOFValueInjection!4)

(declare-fun inst!98 () Bool)

(declare-fun inv!2232 (BalanceConc!1108) Bool)

(declare-fun list!752 (BalanceConc!1108) List!1786)

(declare-datatypes ((TokenValue!374 0))(
  ( (FloatLiteralValue!748 (text!3063 List!1786)) (TokenValueExt!373 (__x!1833 Int)) (Broken!1870 (value!13877 List!1786)) (Object!379) (End!374) (Def!374) (Underscore!374) (Match!374) (Else!374) (Error!374) (Case!374) (If!374) (Extends!374) (Abstract!374) (Class!374) (Val!374) (DelimiterValue!748 (del!434 List!1786)) (KeywordValue!380 (value!13878 List!1786)) (CommentValue!748 (value!13879 List!1786)) (WhitespaceValue!748 (value!13880 List!1786)) (IndentationValue!374 (value!13881 List!1786)) (String!2363) (Int32!374) (Broken!1871 (value!13882 List!1786)) (Boolean!375) (Unit!1258) (OperatorValue!377 (op!434 List!1786)) (IdentifierValue!748 (value!13883 List!1786)) (IdentifierValue!749 (value!13884 List!1786)) (WhitespaceValue!749 (value!13885 List!1786)) (True!748) (False!748) (Broken!1872 (value!13886 List!1786)) (Broken!1873 (value!13887 List!1786)) (True!749) (RightBrace!374) (RightBracket!374) (Colon!374) (Null!374) (Comma!374) (LeftBracket!374) (False!749) (LeftBrace!374) (ImaginaryLiteralValue!374 (text!3064 List!1786)) (StringLiteralValue!1122 (value!13888 List!1786)) (EOFValue!374 (value!13889 List!1786)) (IdentValue!374 (value!13890 List!1786)) (DelimiterValue!749 (value!13891 List!1786)) (DedentValue!374 (value!13892 List!1786)) (NewLineValue!374 (value!13893 List!1786)) (IntegerValue!1122 (value!13894 (_ BitVec 32)) (text!3065 List!1786)) (IntegerValue!1123 (value!13895 Int) (text!3066 List!1786)) (Times!374) (Or!374) (Equal!374) (Minus!374) (Broken!1874 (value!13896 List!1786)) (And!374) (Div!374) (LessEqual!374) (Mod!374) (Concat!816) (Not!374) (Plus!374) (SpaceValue!374 (value!13897 List!1786)) (IntegerValue!1124 (value!13898 Int) (text!3067 List!1786)) (StringLiteralValue!1123 (text!3068 List!1786)) (FloatLiteralValue!749 (text!3069 List!1786)) (BytesLiteralValue!374 (value!13899 List!1786)) (CommentValue!749 (value!13900 List!1786)) (StringLiteralValue!1124 (value!13901 List!1786)) (ErrorTokenValue!374 (msg!435 List!1786)) )
))
(declare-fun toCharacters!30 (EOFValueInjection!4 TokenValue!374) BalanceConc!1108)

(declare-fun toValue!37 (EOFValueInjection!4 BalanceConc!1108) TokenValue!374)

(assert (=> start!11308 (= inst!98 (=> (and (inv!2232 x!31650) e!61596) (= (list!752 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31650))) (list!752 x!31650))))))

(assert (= start!11308 b!110347))

(declare-fun m!100596 () Bool)

(assert (=> b!110347 m!100596))

(declare-fun m!100598 () Bool)

(assert (=> start!11308 m!100598))

(declare-fun m!100600 () Bool)

(assert (=> start!11308 m!100600))

(declare-fun m!100602 () Bool)

(assert (=> start!11308 m!100602))

(assert (=> start!11308 m!100600))

(declare-fun m!100604 () Bool)

(assert (=> start!11308 m!100604))

(assert (=> start!11308 m!100604))

(declare-fun m!100606 () Bool)

(assert (=> start!11308 m!100606))

(declare-fun bs!10990 () Bool)

(declare-fun neg-inst!98 () Bool)

(declare-fun s!16505 () Bool)

(assert (= bs!10990 (and neg-inst!98 s!16505)))

(assert (=> bs!10990 (=> true (= (list!752 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31650))) (list!752 x!31650)))))

(assert (=> m!100602 m!100600))

(assert (=> m!100602 m!100604))

(assert (=> m!100602 m!100606))

(assert (=> m!100602 s!16505))

(assert (=> m!100600 s!16505))

(declare-fun bs!10991 () Bool)

(assert (= bs!10991 (and neg-inst!98 start!11308)))

(assert (=> bs!10991 (= true inst!98)))

(declare-fun lambda!2725 () Int)

(declare-fun Forall!89 (Int) Bool)

(assert (=> start!11308 (= (Forall!89 lambda!2725) inst!98)))

(assert (=> start!11308 (not (Forall!89 lambda!2725))))

(assert (=> start!11308 true))

(assert (= neg-inst!98 inst!98))

(declare-fun m!100608 () Bool)

(assert (=> start!11308 m!100608))

(assert (=> start!11308 m!100608))

(push 1)

(assert (not bs!10990))

(assert (not start!11308))

(assert (not b!110347))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!27678 () Bool)

(declare-fun list!754 (Conc!552) List!1786)

(assert (=> d!27678 (= (list!752 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31650))) (list!754 (c!26188 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31650)))))))

(declare-fun bs!10994 () Bool)

(assert (= bs!10994 d!27678))

(declare-fun m!100624 () Bool)

(assert (=> bs!10994 m!100624))

(assert (=> bs!10990 d!27678))

(declare-fun d!27680 () Bool)

(declare-fun c!26193 () Bool)

(assert (=> d!27680 (= c!26193 (is-EOFValue!374 (toValue!37 thiss!5344 x!31650)))))

(declare-fun e!61602 () BalanceConc!1108)

(assert (=> d!27680 (= (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31650)) e!61602)))

(declare-fun b!110357 () Bool)

(declare-fun seqFromList!211 (List!1786) BalanceConc!1108)

(assert (=> b!110357 (= e!61602 (seqFromList!211 (value!13889 (toValue!37 thiss!5344 x!31650))))))

(declare-fun b!110358 () Bool)

(assert (=> b!110358 (= e!61602 (BalanceConc!1109 Empty!552))))

(assert (= (and d!27680 c!26193) b!110357))

(assert (= (and d!27680 (not c!26193)) b!110358))

(declare-fun m!100626 () Bool)

(assert (=> b!110357 m!100626))

(assert (=> bs!10990 d!27680))

(declare-fun d!27684 () Bool)

(declare-fun efficientList!35 (BalanceConc!1108) List!1786)

(assert (=> d!27684 (= (toValue!37 thiss!5344 x!31650) (EOFValue!374 (efficientList!35 x!31650)))))

(declare-fun bs!10996 () Bool)

(assert (= bs!10996 d!27684))

(declare-fun m!100630 () Bool)

(assert (=> bs!10996 m!100630))

(assert (=> bs!10990 d!27684))

(declare-fun d!27688 () Bool)

(assert (=> d!27688 (= (list!752 x!31650) (list!754 (c!26188 x!31650)))))

(declare-fun bs!10997 () Bool)

(assert (= bs!10997 d!27688))

(declare-fun m!100632 () Bool)

(assert (=> bs!10997 m!100632))

(assert (=> bs!10990 d!27688))

(push 1)

(assert (not b!110347))

(assert (not d!27678))

(assert (not d!27684))

(assert (not b!110357))

(assert (not start!11308))

(assert (not d!27688))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!110373 () Bool)

(declare-fun e!61610 () List!1786)

(assert (=> b!110373 (= e!61610 Nil!1780)))

(declare-fun b!110374 () Bool)

(declare-fun e!61611 () List!1786)

(assert (=> b!110374 (= e!61610 e!61611)))

(declare-fun c!26203 () Bool)

(assert (=> b!110374 (= c!26203 (is-Leaf!910 (c!26188 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31650)))))))

(declare-fun b!110375 () Bool)

(declare-fun list!756 (IArray!1105) List!1786)

(assert (=> b!110375 (= e!61611 (list!756 (xs!3147 (c!26188 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31650))))))))

(declare-fun b!110376 () Bool)

(declare-fun ++!293 (List!1786 List!1786) List!1786)

(assert (=> b!110376 (= e!61611 (++!293 (list!754 (left!1497 (c!26188 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31650))))) (list!754 (right!1827 (c!26188 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31650)))))))))

(declare-fun d!27692 () Bool)

(declare-fun c!26202 () Bool)

(assert (=> d!27692 (= c!26202 (is-Empty!552 (c!26188 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31650)))))))

(assert (=> d!27692 (= (list!754 (c!26188 (toCharacters!30 thiss!5344 (toValue!37 thiss!5344 x!31650)))) e!61610)))

(assert (= (and d!27692 c!26202) b!110373))

(assert (= (and d!27692 (not c!26202)) b!110374))

(assert (= (and b!110374 c!26203) b!110375))

(assert (= (and b!110374 (not c!26203)) b!110376))

(declare-fun m!100640 () Bool)

(assert (=> b!110375 m!100640))

(declare-fun m!100642 () Bool)

(assert (=> b!110376 m!100642))

(declare-fun m!100644 () Bool)

(assert (=> b!110376 m!100644))

(assert (=> b!110376 m!100642))

(assert (=> b!110376 m!100644))

(declare-fun m!100646 () Bool)

(assert (=> b!110376 m!100646))

(assert (=> d!27678 d!27692))

(declare-fun b!110377 () Bool)

(declare-fun e!61612 () List!1786)

(assert (=> b!110377 (= e!61612 Nil!1780)))

(declare-fun b!110378 () Bool)

(declare-fun e!61613 () List!1786)

(assert (=> b!110378 (= e!61612 e!61613)))

(declare-fun c!26205 () Bool)

(assert (=> b!110378 (= c!26205 (is-Leaf!910 (c!26188 x!31650)))))

(declare-fun b!110379 () Bool)

(assert (=> b!110379 (= e!61613 (list!756 (xs!3147 (c!26188 x!31650))))))

(declare-fun b!110380 () Bool)

(assert (=> b!110380 (= e!61613 (++!293 (list!754 (left!1497 (c!26188 x!31650))) (list!754 (right!1827 (c!26188 x!31650)))))))

(declare-fun d!27696 () Bool)

(declare-fun c!26204 () Bool)

(assert (=> d!27696 (= c!26204 (is-Empty!552 (c!26188 x!31650)))))

(assert (=> d!27696 (= (list!754 (c!26188 x!31650)) e!61612)))

(assert (= (and d!27696 c!26204) b!110377))

(assert (= (and d!27696 (not c!26204)) b!110378))

(assert (= (and b!110378 c!26205) b!110379))

(assert (= (and b!110378 (not c!26205)) b!110380))

(declare-fun m!100648 () Bool)

(assert (=> b!110379 m!100648))

(declare-fun m!100650 () Bool)

(assert (=> b!110380 m!100650))

(declare-fun m!100652 () Bool)

(assert (=> b!110380 m!100652))

(assert (=> b!110380 m!100650))

(assert (=> b!110380 m!100652))

(declare-fun m!100654 () Bool)

(assert (=> b!110380 m!100654))

(assert (=> d!27688 d!27696))

(declare-fun d!27698 () Bool)

(declare-fun lt!32395 () List!1786)

(assert (=> d!27698 (= lt!32395 (list!752 x!31650))))

(declare-fun efficientList!37 (Conc!552 List!1786) List!1786)

(declare-fun efficientList$default$2!12 (Conc!552) List!1786)

(assert (=> d!27698 (= lt!32395 (efficientList!37 (c!26188 x!31650) (efficientList$default$2!12 (c!26188 x!31650))))))

(assert (=> d!27698 (= (efficientList!35 x!31650) lt!32395)))

(declare-fun bs!11000 () Bool)

(assert (= bs!11000 d!27698))

(assert (=> bs!11000 m!100602))

(declare-fun m!100656 () Bool)

(assert (=> bs!11000 m!100656))

(assert (=> bs!11000 m!100656))

(declare-fun m!100658 () Bool)

(assert (=> bs!11000 m!100658))

(assert (=> d!27684 d!27698))

(push 1)

(assert (not b!110380))

(assert (not b!110375))

(assert (not b!110357))

(assert (not b!110376))

(assert (not b!110347))

(assert (not d!27698))

(assert (not start!11308))

(assert (not b!110379))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!27706 () Bool)

(declare-fun isBalanced!157 (Conc!552) Bool)

(assert (=> d!27706 (= (inv!2232 x!31650) (isBalanced!157 (c!26188 x!31650)))))

(declare-fun bs!11002 () Bool)

(assert (= bs!11002 d!27706))

(declare-fun m!100680 () Bool)

(assert (=> bs!11002 m!100680))

(assert (=> start!11308 d!27706))

(assert (=> start!11308 d!27680))

(assert (=> start!11308 d!27678))

(declare-fun d!27708 () Bool)

(declare-fun choose!1489 (Int) Bool)

(assert (=> d!27708 (= (Forall!89 lambda!2725) (choose!1489 lambda!2725))))

(declare-fun bs!11003 () Bool)

(assert (= bs!11003 d!27708))

(declare-fun m!100682 () Bool)

(assert (=> bs!11003 m!100682))

(assert (=> start!11308 d!27708))

(assert (=> start!11308 d!27688))

(assert (=> start!11308 d!27684))

(declare-fun d!27710 () Bool)

(declare-fun c!26216 () Bool)

(assert (=> d!27710 (= c!26216 (is-Node!552 (c!26188 x!31650)))))

(declare-fun e!61626 () Bool)

(assert (=> d!27710 (= (inv!2231 (c!26188 x!31650)) e!61626)))

(declare-fun b!110403 () Bool)

(declare-fun inv!2235 (Conc!552) Bool)

(assert (=> b!110403 (= e!61626 (inv!2235 (c!26188 x!31650)))))

(declare-fun b!110404 () Bool)

(declare-fun e!61627 () Bool)

(assert (=> b!110404 (= e!61626 e!61627)))

(declare-fun res!53341 () Bool)

(assert (=> b!110404 (= res!53341 (not (is-Leaf!910 (c!26188 x!31650))))))

(assert (=> b!110404 (=> res!53341 e!61627)))

(declare-fun b!110405 () Bool)

(declare-fun inv!2236 (Conc!552) Bool)

(assert (=> b!110405 (= e!61627 (inv!2236 (c!26188 x!31650)))))

(assert (= (and d!27710 c!26216) b!110403))

(assert (= (and d!27710 (not c!26216)) b!110404))

(assert (= (and b!110404 (not res!53341)) b!110405))

(declare-fun m!100684 () Bool)

(assert (=> b!110403 m!100684))

(declare-fun m!100686 () Bool)

(assert (=> b!110405 m!100686))

(assert (=> b!110347 d!27710))

(assert (=> d!27698 d!27688))

(declare-fun b!110418 () Bool)

(declare-datatypes ((Unit!1260 0))(
  ( (Unit!1261) )
))
(declare-fun lt!32412 () Unit!1260)

(declare-fun lt!32411 () Unit!1260)

(assert (=> b!110418 (= lt!32412 lt!32411)))

(declare-fun call!4785 () List!1786)

(declare-fun lt!32409 () List!1786)

(declare-fun lt!32413 () List!1786)

(assert (=> b!110418 (= (++!293 call!4785 (efficientList$default$2!12 (c!26188 x!31650))) (++!293 lt!32409 (++!293 lt!32413 (efficientList$default$2!12 (c!26188 x!31650)))))))

(declare-fun lemmaConcatAssociativity!112 (List!1786 List!1786 List!1786) Unit!1260)

(assert (=> b!110418 (= lt!32411 (lemmaConcatAssociativity!112 lt!32409 lt!32413 (efficientList$default$2!12 (c!26188 x!31650))))))

(assert (=> b!110418 (= lt!32413 (list!754 (right!1827 (c!26188 x!31650))))))

(assert (=> b!110418 (= lt!32409 (list!754 (left!1497 (c!26188 x!31650))))))

(declare-fun e!61636 () List!1786)

(assert (=> b!110418 (= e!61636 (efficientList!37 (left!1497 (c!26188 x!31650)) (efficientList!37 (right!1827 (c!26188 x!31650)) (efficientList$default$2!12 (c!26188 x!31650)))))))

(declare-fun b!110419 () Bool)

(declare-fun e!61634 () List!1786)

(assert (=> b!110419 (= e!61634 e!61636)))

(declare-fun c!26224 () Bool)

(assert (=> b!110419 (= c!26224 (is-Leaf!910 (c!26188 x!31650)))))

(declare-fun b!110420 () Bool)

(assert (=> b!110420 (= e!61636 call!4785)))

(declare-fun bm!4780 () Bool)

(declare-fun c!26223 () Bool)

(assert (=> bm!4780 (= c!26223 c!26224)))

(declare-fun e!61635 () List!1786)

(assert (=> bm!4780 (= call!4785 (++!293 e!61635 (ite c!26224 (efficientList$default$2!12 (c!26188 x!31650)) lt!32413)))))

(declare-fun b!110421 () Bool)

(declare-fun efficientList!39 (IArray!1105) List!1786)

(assert (=> b!110421 (= e!61635 (efficientList!39 (xs!3147 (c!26188 x!31650))))))

(declare-fun b!110422 () Bool)

(assert (=> b!110422 (= e!61634 (efficientList$default$2!12 (c!26188 x!31650)))))

(declare-fun b!110423 () Bool)

(assert (=> b!110423 (= e!61635 lt!32409)))

(declare-fun d!27712 () Bool)

(declare-fun lt!32410 () List!1786)

(assert (=> d!27712 (= lt!32410 (++!293 (list!754 (c!26188 x!31650)) (efficientList$default$2!12 (c!26188 x!31650))))))

(assert (=> d!27712 (= lt!32410 e!61634)))

(declare-fun c!26225 () Bool)

(assert (=> d!27712 (= c!26225 (is-Empty!552 (c!26188 x!31650)))))

(assert (=> d!27712 (= (efficientList!37 (c!26188 x!31650) (efficientList$default$2!12 (c!26188 x!31650))) lt!32410)))

(assert (= (and d!27712 c!26225) b!110422))

(assert (= (and d!27712 (not c!26225)) b!110419))

(assert (= (and b!110419 c!26224) b!110420))

(assert (= (and b!110419 (not c!26224)) b!110418))

(assert (= (or b!110420 b!110418) bm!4780))

(assert (= (and bm!4780 c!26223) b!110421))

(assert (= (and bm!4780 (not c!26223)) b!110423))

(assert (=> b!110418 m!100656))

(declare-fun m!100688 () Bool)

(assert (=> b!110418 m!100688))

(assert (=> b!110418 m!100656))

(declare-fun m!100690 () Bool)

(assert (=> b!110418 m!100690))

(declare-fun m!100692 () Bool)

(assert (=> b!110418 m!100692))

(declare-fun m!100694 () Bool)

(assert (=> b!110418 m!100694))

(assert (=> b!110418 m!100656))

(declare-fun m!100696 () Bool)

(assert (=> b!110418 m!100696))

(assert (=> b!110418 m!100688))

(declare-fun m!100698 () Bool)

(assert (=> b!110418 m!100698))

(assert (=> b!110418 m!100656))

(assert (=> b!110418 m!100692))

(assert (=> b!110418 m!100650))

(assert (=> b!110418 m!100652))

(declare-fun m!100700 () Bool)

(assert (=> bm!4780 m!100700))

(declare-fun m!100702 () Bool)

(assert (=> b!110421 m!100702))

(assert (=> d!27712 m!100632))

(assert (=> d!27712 m!100632))

(assert (=> d!27712 m!100656))

(declare-fun m!100704 () Bool)

(assert (=> d!27712 m!100704))

(assert (=> d!27698 d!27712))

(declare-fun d!27714 () Bool)

(assert (=> d!27714 (= (efficientList$default$2!12 (c!26188 x!31650)) Nil!1780)))

(assert (=> d!27698 d!27714))

(declare-fun d!27716 () Bool)

(declare-fun fromListB!98 (List!1786) BalanceConc!1108)

(assert (=> d!27716 (= (seqFromList!211 (value!13889 (toValue!37 thiss!5344 x!31650))) (fromListB!98 (value!13889 (toValue!37 thiss!5344 x!31650))))))

(declare-fun bs!11004 () Bool)

(assert (= bs!11004 d!27716))

(declare-fun m!100706 () Bool)

(assert (=> bs!11004 m!100706))

(assert (=> b!110357 d!27716))

(declare-fun tp!59768 () Bool)

(declare-fun tp!59769 () Bool)

(declare-fun e!61641 () Bool)

(declare-fun b!110430 () Bool)

(assert (=> b!110430 (= e!61641 (and (inv!2231 (left!1497 (c!26188 x!31650))) tp!59768 (inv!2231 (right!1827 (c!26188 x!31650))) tp!59769))))

(declare-fun b!110431 () Bool)

(declare-fun inv!2237 (IArray!1105) Bool)

(assert (=> b!110431 (= e!61641 (inv!2237 (xs!3147 (c!26188 x!31650))))))

(assert (=> b!110347 (= tp!59760 (and (inv!2231 (c!26188 x!31650)) e!61641))))

(assert (= (and b!110347 (is-Node!552 (c!26188 x!31650))) b!110430))

(assert (= (and b!110347 (is-Leaf!910 (c!26188 x!31650))) b!110431))

(declare-fun m!100708 () Bool)

(assert (=> b!110430 m!100708))

(declare-fun m!100710 () Bool)

(assert (=> b!110430 m!100710))

(declare-fun m!100712 () Bool)

(assert (=> b!110431 m!100712))

(assert (=> b!110347 m!100596))

(push 1)

(assert (not b!110380))

(assert (not b!110418))

(assert (not b!110405))

(assert (not b!110379))

(assert (not b!110375))

(assert (not bm!4780))

(assert (not d!27712))

(assert (not b!110376))

(assert (not b!110431))

(assert (not d!27706))

(assert (not b!110347))

(assert (not d!27708))

(assert (not b!110403))

(assert (not b!110430))

(assert (not d!27716))

(assert (not b!110421))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!110469 () Bool)

(declare-fun res!53349 () Bool)

(declare-fun e!61663 () Bool)

(assert (=> b!110469 (=> (not res!53349) (not e!61663))))

(declare-fun lt!32431 () List!1786)

(declare-fun size!1554 (List!1786) Int)

(assert (=> b!110469 (= res!53349 (= (size!1554 lt!32431) (+ (size!1554 (list!754 (c!26188 x!31650))) (size!1554 (efficientList$default$2!12 (c!26188 x!31650))))))))

(declare-fun b!110468 () Bool)

(declare-fun e!61662 () List!1786)

(assert (=> b!110468 (= e!61662 (Cons!1780 (h!7177 (list!754 (c!26188 x!31650))) (++!293 (t!22175 (list!754 (c!26188 x!31650))) (efficientList$default$2!12 (c!26188 x!31650)))))))

(declare-fun b!110467 () Bool)

(assert (=> b!110467 (= e!61662 (efficientList$default$2!12 (c!26188 x!31650)))))

(declare-fun d!27726 () Bool)

(assert (=> d!27726 e!61663))

(declare-fun res!53350 () Bool)

(assert (=> d!27726 (=> (not res!53350) (not e!61663))))

(declare-fun content!203 (List!1786) (Set (_ BitVec 16)))

(assert (=> d!27726 (= res!53350 (= (content!203 lt!32431) (set.union (content!203 (list!754 (c!26188 x!31650))) (content!203 (efficientList$default$2!12 (c!26188 x!31650))))))))

(assert (=> d!27726 (= lt!32431 e!61662)))

(declare-fun c!26240 () Bool)

(assert (=> d!27726 (= c!26240 (is-Nil!1780 (list!754 (c!26188 x!31650))))))

(assert (=> d!27726 (= (++!293 (list!754 (c!26188 x!31650)) (efficientList$default$2!12 (c!26188 x!31650))) lt!32431)))

(declare-fun b!110470 () Bool)

(assert (=> b!110470 (= e!61663 (or (not (= (efficientList$default$2!12 (c!26188 x!31650)) Nil!1780)) (= lt!32431 (list!754 (c!26188 x!31650)))))))

(assert (= (and d!27726 c!26240) b!110467))

(assert (= (and d!27726 (not c!26240)) b!110468))

(assert (= (and d!27726 res!53350) b!110469))

(assert (= (and b!110469 res!53349) b!110470))

(declare-fun m!100740 () Bool)

(assert (=> b!110469 m!100740))

(assert (=> b!110469 m!100632))

(declare-fun m!100742 () Bool)

(assert (=> b!110469 m!100742))

(assert (=> b!110469 m!100656))

(declare-fun m!100744 () Bool)

(assert (=> b!110469 m!100744))

(assert (=> b!110468 m!100656))

(declare-fun m!100746 () Bool)

(assert (=> b!110468 m!100746))

(declare-fun m!100748 () Bool)

(assert (=> d!27726 m!100748))

(assert (=> d!27726 m!100632))

(declare-fun m!100750 () Bool)

(assert (=> d!27726 m!100750))

(assert (=> d!27726 m!100656))

(declare-fun m!100752 () Bool)

(assert (=> d!27726 m!100752))

(assert (=> d!27712 d!27726))

(assert (=> d!27712 d!27696))

(declare-fun d!27732 () Bool)

(declare-fun e!61666 () Bool)

(assert (=> d!27732 e!61666))

(declare-fun res!53353 () Bool)

(assert (=> d!27732 (=> (not res!53353) (not e!61666))))

(declare-fun lt!32434 () BalanceConc!1108)

(assert (=> d!27732 (= res!53353 (= (list!752 lt!32434) (value!13889 (toValue!37 thiss!5344 x!31650))))))

(declare-fun fromList!66 (List!1786) Conc!552)

(assert (=> d!27732 (= lt!32434 (BalanceConc!1109 (fromList!66 (value!13889 (toValue!37 thiss!5344 x!31650)))))))

(assert (=> d!27732 (= (fromListB!98 (value!13889 (toValue!37 thiss!5344 x!31650))) lt!32434)))

(declare-fun b!110473 () Bool)

(assert (=> b!110473 (= e!61666 (isBalanced!157 (fromList!66 (value!13889 (toValue!37 thiss!5344 x!31650)))))))

(assert (= (and d!27732 res!53353) b!110473))

(declare-fun m!100754 () Bool)

(assert (=> d!27732 m!100754))

(declare-fun m!100758 () Bool)

(assert (=> d!27732 m!100758))

(assert (=> b!110473 m!100758))

(assert (=> b!110473 m!100758))

(declare-fun m!100760 () Bool)

(assert (=> b!110473 m!100760))

(assert (=> d!27716 d!27732))

(push 1)

(assert (not b!110380))

(assert (not b!110418))

(assert (not b!110379))

(assert (not b!110375))

(assert (not bm!4780))

(assert (not b!110376))

(assert (not b!110431))

(assert (not b!110468))

(assert (not b!110473))

(assert (not d!27706))

(assert (not b!110347))

(assert (not d!27708))

(assert (not b!110405))

(assert (not d!27726))

(assert (not b!110469))

(assert (not d!27732))

(assert (not b!110403))

(assert (not b!110430))

(assert (not b!110421))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

