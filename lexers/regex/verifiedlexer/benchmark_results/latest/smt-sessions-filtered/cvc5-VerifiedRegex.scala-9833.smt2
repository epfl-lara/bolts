; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!514254 () Bool)

(assert start!514254)

(declare-fun b!4905870 () Bool)

(declare-fun b_free!131903 () Bool)

(declare-fun b_next!132693 () Bool)

(assert (=> b!4905870 (= b_free!131903 (not b_next!132693))))

(declare-fun tp!1380043 () Bool)

(declare-fun b_and!346375 () Bool)

(assert (=> b!4905870 (= tp!1380043 b_and!346375)))

(declare-fun b_free!131905 () Bool)

(declare-fun b_next!132695 () Bool)

(assert (=> b!4905870 (= b_free!131905 (not b_next!132695))))

(declare-fun tp!1380040 () Bool)

(declare-fun b_and!346377 () Bool)

(assert (=> b!4905870 (= tp!1380040 b_and!346377)))

(declare-fun b!4905878 () Bool)

(declare-fun e!3066647 () Bool)

(assert (=> b!4905878 (= e!3066647 true)))

(declare-fun b!4905877 () Bool)

(declare-fun e!3066646 () Bool)

(assert (=> b!4905877 (= e!3066646 e!3066647)))

(declare-fun b!4905867 () Bool)

(assert (=> b!4905867 e!3066646))

(assert (= b!4905877 b!4905878))

(assert (= b!4905867 b!4905877))

(declare-fun lambda!244491 () Int)

(declare-fun order!25755 () Int)

(declare-fun order!25757 () Int)

(declare-datatypes ((C!26814 0))(
  ( (C!26815 (val!22741 Int)) )
))
(declare-datatypes ((Regex!13308 0))(
  ( (ElementMatch!13308 (c!833850 C!26814)) (Concat!21851 (regOne!27128 Regex!13308) (regTwo!27128 Regex!13308)) (EmptyExpr!13308) (Star!13308 (reg!13637 Regex!13308)) (EmptyLang!13308) (Union!13308 (regOne!27129 Regex!13308) (regTwo!27129 Regex!13308)) )
))
(declare-datatypes ((String!64158 0))(
  ( (String!64159 (value!263748 String)) )
))
(declare-datatypes ((List!56664 0))(
  ( (Nil!56540) (Cons!56540 (h!62988 (_ BitVec 16)) (t!366836 List!56664)) )
))
(declare-datatypes ((TokenValue!8543 0))(
  ( (FloatLiteralValue!17086 (text!60246 List!56664)) (TokenValueExt!8542 (__x!34379 Int)) (Broken!42715 (value!263749 List!56664)) (Object!8666) (End!8543) (Def!8543) (Underscore!8543) (Match!8543) (Else!8543) (Error!8543) (Case!8543) (If!8543) (Extends!8543) (Abstract!8543) (Class!8543) (Val!8543) (DelimiterValue!17086 (del!8603 List!56664)) (KeywordValue!8549 (value!263750 List!56664)) (CommentValue!17086 (value!263751 List!56664)) (WhitespaceValue!17086 (value!263752 List!56664)) (IndentationValue!8543 (value!263753 List!56664)) (String!64160) (Int32!8543) (Broken!42716 (value!263754 List!56664)) (Boolean!8544) (Unit!146711) (OperatorValue!8546 (op!8603 List!56664)) (IdentifierValue!17086 (value!263755 List!56664)) (IdentifierValue!17087 (value!263756 List!56664)) (WhitespaceValue!17087 (value!263757 List!56664)) (True!17086) (False!17086) (Broken!42717 (value!263758 List!56664)) (Broken!42718 (value!263759 List!56664)) (True!17087) (RightBrace!8543) (RightBracket!8543) (Colon!8543) (Null!8543) (Comma!8543) (LeftBracket!8543) (False!17087) (LeftBrace!8543) (ImaginaryLiteralValue!8543 (text!60247 List!56664)) (StringLiteralValue!25629 (value!263760 List!56664)) (EOFValue!8543 (value!263761 List!56664)) (IdentValue!8543 (value!263762 List!56664)) (DelimiterValue!17087 (value!263763 List!56664)) (DedentValue!8543 (value!263764 List!56664)) (NewLineValue!8543 (value!263765 List!56664)) (IntegerValue!25629 (value!263766 (_ BitVec 32)) (text!60248 List!56664)) (IntegerValue!25630 (value!263767 Int) (text!60249 List!56664)) (Times!8543) (Or!8543) (Equal!8543) (Minus!8543) (Broken!42719 (value!263768 List!56664)) (And!8543) (Div!8543) (LessEqual!8543) (Mod!8543) (Concat!21852) (Not!8543) (Plus!8543) (SpaceValue!8543 (value!263769 List!56664)) (IntegerValue!25631 (value!263770 Int) (text!60250 List!56664)) (StringLiteralValue!25630 (text!60251 List!56664)) (FloatLiteralValue!17087 (text!60252 List!56664)) (BytesLiteralValue!8543 (value!263771 List!56664)) (CommentValue!17087 (value!263772 List!56664)) (StringLiteralValue!25631 (value!263773 List!56664)) (ErrorTokenValue!8543 (msg!8604 List!56664)) )
))
(declare-datatypes ((List!56665 0))(
  ( (Nil!56541) (Cons!56541 (h!62989 C!26814) (t!366837 List!56665)) )
))
(declare-datatypes ((IArray!29663 0))(
  ( (IArray!29664 (innerList!14889 List!56665)) )
))
(declare-datatypes ((Conc!14801 0))(
  ( (Node!14801 (left!41162 Conc!14801) (right!41492 Conc!14801) (csize!29832 Int) (cheight!15012 Int)) (Leaf!24635 (xs!18117 IArray!29663) (csize!29833 Int)) (Empty!14801) )
))
(declare-datatypes ((BalanceConc!29032 0))(
  ( (BalanceConc!29033 (c!833851 Conc!14801)) )
))
(declare-datatypes ((TokenValueInjection!16394 0))(
  ( (TokenValueInjection!16395 (toValue!11156 Int) (toChars!11015 Int)) )
))
(declare-datatypes ((Rule!16266 0))(
  ( (Rule!16267 (regex!8233 Regex!13308) (tag!9097 String!64158) (isSeparator!8233 Bool) (transformation!8233 TokenValueInjection!16394)) )
))
(declare-fun rule!164 () Rule!16266)

(declare-fun dynLambda!22823 (Int Int) Int)

(declare-fun dynLambda!22824 (Int Int) Int)

(assert (=> b!4905878 (< (dynLambda!22823 order!25755 (toValue!11156 (transformation!8233 rule!164))) (dynLambda!22824 order!25757 lambda!244491))))

(declare-fun order!25759 () Int)

(declare-fun dynLambda!22825 (Int Int) Int)

(assert (=> b!4905878 (< (dynLambda!22825 order!25759 (toChars!11015 (transformation!8233 rule!164))) (dynLambda!22824 order!25757 lambda!244491))))

(declare-fun res!2095568 () Bool)

(declare-fun e!3066637 () Bool)

(assert (=> start!514254 (=> (not res!2095568) (not e!3066637))))

(declare-datatypes ((LexerInterface!7825 0))(
  ( (LexerInterfaceExt!7822 (__x!34380 Int)) (Lexer!7823) )
))
(declare-fun thiss!15943 () LexerInterface!7825)

(assert (=> start!514254 (= res!2095568 (is-Lexer!7823 thiss!15943))))

(assert (=> start!514254 e!3066637))

(assert (=> start!514254 true))

(declare-fun e!3066635 () Bool)

(assert (=> start!514254 e!3066635))

(declare-fun input!1509 () BalanceConc!29032)

(declare-fun e!3066634 () Bool)

(declare-fun inv!73005 (BalanceConc!29032) Bool)

(assert (=> start!514254 (and (inv!73005 input!1509) e!3066634)))

(declare-fun b!4905860 () Bool)

(declare-fun tp!1380041 () Bool)

(declare-fun inv!73006 (Conc!14801) Bool)

(assert (=> b!4905860 (= e!3066634 (and (inv!73006 (c!833851 input!1509)) tp!1380041))))

(declare-fun b!4905861 () Bool)

(declare-fun res!2095567 () Bool)

(assert (=> b!4905861 (=> (not res!2095567) (not e!3066637))))

(declare-fun ruleValid!3730 (LexerInterface!7825 Rule!16266) Bool)

(assert (=> b!4905861 (= res!2095567 (ruleValid!3730 thiss!15943 rule!164))))

(declare-fun b!4905862 () Bool)

(declare-fun e!3066636 () Bool)

(declare-fun e!3066639 () Bool)

(assert (=> b!4905862 (= e!3066636 e!3066639)))

(declare-fun res!2095571 () Bool)

(assert (=> b!4905862 (=> res!2095571 e!3066639)))

(declare-fun lt!2012604 () List!56665)

(declare-fun lt!2012607 () Bool)

(declare-datatypes ((Token!14994 0))(
  ( (Token!14995 (value!263774 TokenValue!8543) (rule!11433 Rule!16266) (size!37275 Int) (originalCharacters!8528 List!56665)) )
))
(declare-datatypes ((tuple2!60796 0))(
  ( (tuple2!60797 (_1!33701 Token!14994) (_2!33701 List!56665)) )
))
(declare-datatypes ((Option!14103 0))(
  ( (None!14102) (Some!14102 (v!50064 tuple2!60796)) )
))
(declare-fun isDefined!11112 (Option!14103) Bool)

(declare-fun maxPrefixOneRule!3570 (LexerInterface!7825 Rule!16266 List!56665) Option!14103)

(assert (=> b!4905862 (= res!2095571 (not (= lt!2012607 (isDefined!11112 (maxPrefixOneRule!3570 thiss!15943 rule!164 lt!2012604)))))))

(declare-fun lt!2012600 () List!56665)

(declare-datatypes ((tuple2!60798 0))(
  ( (tuple2!60799 (_1!33702 BalanceConc!29032) (_2!33702 BalanceConc!29032)) )
))
(declare-fun lt!2012608 () tuple2!60798)

(declare-datatypes ((tuple2!60800 0))(
  ( (tuple2!60801 (_1!33703 Token!14994) (_2!33703 BalanceConc!29032)) )
))
(declare-datatypes ((Option!14104 0))(
  ( (None!14103) (Some!14103 (v!50065 tuple2!60800)) )
))
(declare-fun isDefined!11113 (Option!14104) Bool)

(declare-fun apply!13577 (TokenValueInjection!16394 BalanceConc!29032) TokenValue!8543)

(declare-fun size!37276 (BalanceConc!29032) Int)

(assert (=> b!4905862 (= lt!2012607 (isDefined!11113 (Some!14103 (tuple2!60801 (Token!14995 (apply!13577 (transformation!8233 rule!164) (_1!33702 lt!2012608)) rule!164 (size!37276 (_1!33702 lt!2012608)) lt!2012600) (_2!33702 lt!2012608)))))))

(declare-datatypes ((Unit!146712 0))(
  ( (Unit!146713) )
))
(declare-fun lt!2012609 () Unit!146712)

(declare-fun lt!2012605 () BalanceConc!29032)

(declare-fun ForallOf!1170 (Int BalanceConc!29032) Unit!146712)

(assert (=> b!4905862 (= lt!2012609 (ForallOf!1170 lambda!244491 lt!2012605))))

(declare-fun seqFromList!5975 (List!56665) BalanceConc!29032)

(assert (=> b!4905862 (= lt!2012605 (seqFromList!5975 lt!2012600))))

(declare-fun list!17815 (BalanceConc!29032) List!56665)

(assert (=> b!4905862 (= lt!2012600 (list!17815 (_1!33702 lt!2012608)))))

(declare-fun lt!2012601 () Unit!146712)

(assert (=> b!4905862 (= lt!2012601 (ForallOf!1170 lambda!244491 (_1!33702 lt!2012608)))))

(declare-fun b!4905863 () Bool)

(declare-fun e!3066638 () Bool)

(assert (=> b!4905863 (= e!3066637 e!3066638)))

(declare-fun res!2095566 () Bool)

(assert (=> b!4905863 (=> (not res!2095566) (not e!3066638))))

(declare-fun isEmpty!30417 (BalanceConc!29032) Bool)

(assert (=> b!4905863 (= res!2095566 (not (isEmpty!30417 (_1!33702 lt!2012608))))))

(declare-fun findLongestMatchWithZipperSequence!321 (Regex!13308 BalanceConc!29032) tuple2!60798)

(assert (=> b!4905863 (= lt!2012608 (findLongestMatchWithZipperSequence!321 (regex!8233 rule!164) input!1509))))

(declare-fun e!3066633 () Bool)

(declare-fun b!4905864 () Bool)

(declare-fun tp!1380042 () Bool)

(declare-fun inv!73002 (String!64158) Bool)

(declare-fun inv!73007 (TokenValueInjection!16394) Bool)

(assert (=> b!4905864 (= e!3066635 (and tp!1380042 (inv!73002 (tag!9097 rule!164)) (inv!73007 (transformation!8233 rule!164)) e!3066633))))

(declare-fun b!4905865 () Bool)

(declare-fun res!2095569 () Bool)

(assert (=> b!4905865 (=> res!2095569 e!3066639)))

(assert (=> b!4905865 (= res!2095569 (not lt!2012607))))

(declare-fun b!4905866 () Bool)

(assert (=> b!4905866 (= e!3066638 (not e!3066636))))

(declare-fun res!2095572 () Bool)

(assert (=> b!4905866 (=> res!2095572 e!3066636)))

(declare-fun semiInverseModEq!3634 (Int Int) Bool)

(assert (=> b!4905866 (= res!2095572 (not (semiInverseModEq!3634 (toChars!11015 (transformation!8233 rule!164)) (toValue!11156 (transformation!8233 rule!164)))))))

(declare-fun lt!2012603 () Unit!146712)

(declare-fun lemmaInv!1279 (TokenValueInjection!16394) Unit!146712)

(assert (=> b!4905866 (= lt!2012603 (lemmaInv!1279 (transformation!8233 rule!164)))))

(declare-fun e!3066640 () Bool)

(assert (=> b!4905866 e!3066640))

(declare-fun res!2095565 () Bool)

(assert (=> b!4905866 (=> res!2095565 e!3066640)))

(declare-datatypes ((tuple2!60802 0))(
  ( (tuple2!60803 (_1!33704 List!56665) (_2!33704 List!56665)) )
))
(declare-fun lt!2012602 () tuple2!60802)

(declare-fun isEmpty!30418 (List!56665) Bool)

(assert (=> b!4905866 (= res!2095565 (isEmpty!30418 (_1!33704 lt!2012602)))))

(declare-fun findLongestMatchInner!1796 (Regex!13308 List!56665 Int List!56665 List!56665 Int) tuple2!60802)

(declare-fun size!37277 (List!56665) Int)

(assert (=> b!4905866 (= lt!2012602 (findLongestMatchInner!1796 (regex!8233 rule!164) Nil!56541 (size!37277 Nil!56541) lt!2012604 lt!2012604 (size!37277 lt!2012604)))))

(declare-fun lt!2012606 () Unit!146712)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1759 (Regex!13308 List!56665) Unit!146712)

(assert (=> b!4905866 (= lt!2012606 (longestMatchIsAcceptedByMatchOrIsEmpty!1759 (regex!8233 rule!164) lt!2012604))))

(assert (=> b!4905866 (= lt!2012604 (list!17815 input!1509))))

(declare-fun res!2095570 () Bool)

(assert (=> b!4905867 (=> res!2095570 e!3066636)))

(declare-fun Forall!1730 (Int) Bool)

(assert (=> b!4905867 (= res!2095570 (not (Forall!1730 lambda!244491)))))

(declare-fun b!4905868 () Bool)

(declare-fun matchR!6575 (Regex!13308 List!56665) Bool)

(assert (=> b!4905868 (= e!3066640 (matchR!6575 (regex!8233 rule!164) (_1!33704 lt!2012602)))))

(declare-fun b!4905869 () Bool)

(assert (=> b!4905869 (= e!3066639 (= (list!17815 lt!2012605) lt!2012600))))

(assert (=> b!4905870 (= e!3066633 (and tp!1380043 tp!1380040))))

(assert (= (and start!514254 res!2095568) b!4905861))

(assert (= (and b!4905861 res!2095567) b!4905863))

(assert (= (and b!4905863 res!2095566) b!4905866))

(assert (= (and b!4905866 (not res!2095565)) b!4905868))

(assert (= (and b!4905866 (not res!2095572)) b!4905867))

(assert (= (and b!4905867 (not res!2095570)) b!4905862))

(assert (= (and b!4905862 (not res!2095571)) b!4905865))

(assert (= (and b!4905865 (not res!2095569)) b!4905869))

(assert (= b!4905864 b!4905870))

(assert (= start!514254 b!4905864))

(assert (= start!514254 b!4905860))

(declare-fun m!5915218 () Bool)

(assert (=> b!4905863 m!5915218))

(declare-fun m!5915220 () Bool)

(assert (=> b!4905863 m!5915220))

(declare-fun m!5915222 () Bool)

(assert (=> b!4905869 m!5915222))

(declare-fun m!5915224 () Bool)

(assert (=> b!4905866 m!5915224))

(declare-fun m!5915226 () Bool)

(assert (=> b!4905866 m!5915226))

(declare-fun m!5915228 () Bool)

(assert (=> b!4905866 m!5915228))

(declare-fun m!5915230 () Bool)

(assert (=> b!4905866 m!5915230))

(assert (=> b!4905866 m!5915226))

(assert (=> b!4905866 m!5915230))

(declare-fun m!5915232 () Bool)

(assert (=> b!4905866 m!5915232))

(declare-fun m!5915234 () Bool)

(assert (=> b!4905866 m!5915234))

(declare-fun m!5915236 () Bool)

(assert (=> b!4905866 m!5915236))

(declare-fun m!5915238 () Bool)

(assert (=> b!4905866 m!5915238))

(declare-fun m!5915240 () Bool)

(assert (=> b!4905861 m!5915240))

(declare-fun m!5915242 () Bool)

(assert (=> start!514254 m!5915242))

(declare-fun m!5915244 () Bool)

(assert (=> b!4905867 m!5915244))

(declare-fun m!5915246 () Bool)

(assert (=> b!4905860 m!5915246))

(declare-fun m!5915248 () Bool)

(assert (=> b!4905868 m!5915248))

(declare-fun m!5915250 () Bool)

(assert (=> b!4905864 m!5915250))

(declare-fun m!5915252 () Bool)

(assert (=> b!4905864 m!5915252))

(declare-fun m!5915254 () Bool)

(assert (=> b!4905862 m!5915254))

(declare-fun m!5915256 () Bool)

(assert (=> b!4905862 m!5915256))

(declare-fun m!5915258 () Bool)

(assert (=> b!4905862 m!5915258))

(declare-fun m!5915260 () Bool)

(assert (=> b!4905862 m!5915260))

(declare-fun m!5915262 () Bool)

(assert (=> b!4905862 m!5915262))

(declare-fun m!5915264 () Bool)

(assert (=> b!4905862 m!5915264))

(declare-fun m!5915266 () Bool)

(assert (=> b!4905862 m!5915266))

(declare-fun m!5915268 () Bool)

(assert (=> b!4905862 m!5915268))

(declare-fun m!5915270 () Bool)

(assert (=> b!4905862 m!5915270))

(assert (=> b!4905862 m!5915254))

(push 1)

(assert (not b!4905869))

(assert (not start!514254))

(assert (not b!4905863))

(assert b_and!346375)

(assert (not b!4905868))

(assert b_and!346377)

(assert (not b!4905862))

(assert (not b_next!132693))

(assert (not b!4905864))

(assert (not b_next!132695))

(assert (not b!4905860))

(assert (not b!4905867))

(assert (not b!4905866))

(assert (not b!4905861))

(check-sat)

(pop 1)

(push 1)

(assert b_and!346377)

(assert b_and!346375)

(assert (not b_next!132695))

(assert (not b_next!132693))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1576642 () Bool)

(assert (=> d!1576642 (= (inv!73002 (tag!9097 rule!164)) (= (mod (str.len (value!263748 (tag!9097 rule!164))) 2) 0))))

(assert (=> b!4905864 d!1576642))

(declare-fun d!1576644 () Bool)

(declare-fun res!2095602 () Bool)

(declare-fun e!3066683 () Bool)

(assert (=> d!1576644 (=> (not res!2095602) (not e!3066683))))

(assert (=> d!1576644 (= res!2095602 (semiInverseModEq!3634 (toChars!11015 (transformation!8233 rule!164)) (toValue!11156 (transformation!8233 rule!164))))))

(assert (=> d!1576644 (= (inv!73007 (transformation!8233 rule!164)) e!3066683)))

(declare-fun b!4905922 () Bool)

(declare-fun equivClasses!3487 (Int Int) Bool)

(assert (=> b!4905922 (= e!3066683 (equivClasses!3487 (toChars!11015 (transformation!8233 rule!164)) (toValue!11156 (transformation!8233 rule!164))))))

(assert (= (and d!1576644 res!2095602) b!4905922))

(assert (=> d!1576644 m!5915224))

(declare-fun m!5915326 () Bool)

(assert (=> b!4905922 m!5915326))

(assert (=> b!4905864 d!1576644))

(declare-fun d!1576646 () Bool)

(declare-fun isBalanced!4033 (Conc!14801) Bool)

(assert (=> d!1576646 (= (inv!73005 input!1509) (isBalanced!4033 (c!833851 input!1509)))))

(declare-fun bs!1177077 () Bool)

(assert (= bs!1177077 d!1576646))

(declare-fun m!5915328 () Bool)

(assert (=> bs!1177077 m!5915328))

(assert (=> start!514254 d!1576646))

(declare-fun d!1576648 () Bool)

(declare-fun c!833857 () Bool)

(assert (=> d!1576648 (= c!833857 (is-Node!14801 (c!833851 input!1509)))))

(declare-fun e!3066688 () Bool)

(assert (=> d!1576648 (= (inv!73006 (c!833851 input!1509)) e!3066688)))

(declare-fun b!4905929 () Bool)

(declare-fun inv!73011 (Conc!14801) Bool)

(assert (=> b!4905929 (= e!3066688 (inv!73011 (c!833851 input!1509)))))

(declare-fun b!4905930 () Bool)

(declare-fun e!3066689 () Bool)

(assert (=> b!4905930 (= e!3066688 e!3066689)))

(declare-fun res!2095606 () Bool)

(assert (=> b!4905930 (= res!2095606 (not (is-Leaf!24635 (c!833851 input!1509))))))

(assert (=> b!4905930 (=> res!2095606 e!3066689)))

(declare-fun b!4905931 () Bool)

(declare-fun inv!73012 (Conc!14801) Bool)

(assert (=> b!4905931 (= e!3066689 (inv!73012 (c!833851 input!1509)))))

(assert (= (and d!1576648 c!833857) b!4905929))

(assert (= (and d!1576648 (not c!833857)) b!4905930))

(assert (= (and b!4905930 (not res!2095606)) b!4905931))

(declare-fun m!5915330 () Bool)

(assert (=> b!4905929 m!5915330))

(declare-fun m!5915332 () Bool)

(assert (=> b!4905931 m!5915332))

(assert (=> b!4905860 d!1576648))

(declare-fun d!1576650 () Bool)

(declare-fun list!17817 (Conc!14801) List!56665)

(assert (=> d!1576650 (= (list!17815 input!1509) (list!17817 (c!833851 input!1509)))))

(declare-fun bs!1177078 () Bool)

(assert (= bs!1177078 d!1576650))

(declare-fun m!5915334 () Bool)

(assert (=> bs!1177078 m!5915334))

(assert (=> b!4905866 d!1576650))

(declare-fun d!1576652 () Bool)

(declare-fun e!3066692 () Bool)

(assert (=> d!1576652 e!3066692))

(declare-fun res!2095609 () Bool)

(assert (=> d!1576652 (=> res!2095609 e!3066692)))

(assert (=> d!1576652 (= res!2095609 (isEmpty!30418 (_1!33704 (findLongestMatchInner!1796 (regex!8233 rule!164) Nil!56541 (size!37277 Nil!56541) lt!2012604 lt!2012604 (size!37277 lt!2012604)))))))

(declare-fun lt!2012642 () Unit!146712)

(declare-fun choose!35849 (Regex!13308 List!56665) Unit!146712)

(assert (=> d!1576652 (= lt!2012642 (choose!35849 (regex!8233 rule!164) lt!2012604))))

(declare-fun validRegex!5901 (Regex!13308) Bool)

(assert (=> d!1576652 (validRegex!5901 (regex!8233 rule!164))))

(assert (=> d!1576652 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1759 (regex!8233 rule!164) lt!2012604) lt!2012642)))

(declare-fun b!4905934 () Bool)

(assert (=> b!4905934 (= e!3066692 (matchR!6575 (regex!8233 rule!164) (_1!33704 (findLongestMatchInner!1796 (regex!8233 rule!164) Nil!56541 (size!37277 Nil!56541) lt!2012604 lt!2012604 (size!37277 lt!2012604)))))))

(assert (= (and d!1576652 (not res!2095609)) b!4905934))

(assert (=> d!1576652 m!5915226))

(assert (=> d!1576652 m!5915226))

(assert (=> d!1576652 m!5915230))

(assert (=> d!1576652 m!5915232))

(assert (=> d!1576652 m!5915230))

(declare-fun m!5915336 () Bool)

(assert (=> d!1576652 m!5915336))

(declare-fun m!5915338 () Bool)

(assert (=> d!1576652 m!5915338))

(declare-fun m!5915340 () Bool)

(assert (=> d!1576652 m!5915340))

(assert (=> b!4905934 m!5915226))

(assert (=> b!4905934 m!5915230))

(assert (=> b!4905934 m!5915226))

(assert (=> b!4905934 m!5915230))

(assert (=> b!4905934 m!5915232))

(declare-fun m!5915342 () Bool)

(assert (=> b!4905934 m!5915342))

(assert (=> b!4905866 d!1576652))

(declare-fun d!1576654 () Bool)

(declare-fun lt!2012645 () Int)

(assert (=> d!1576654 (>= lt!2012645 0)))

(declare-fun e!3066695 () Int)

(assert (=> d!1576654 (= lt!2012645 e!3066695)))

(declare-fun c!833860 () Bool)

(assert (=> d!1576654 (= c!833860 (is-Nil!56541 lt!2012604))))

(assert (=> d!1576654 (= (size!37277 lt!2012604) lt!2012645)))

(declare-fun b!4905939 () Bool)

(assert (=> b!4905939 (= e!3066695 0)))

(declare-fun b!4905940 () Bool)

(assert (=> b!4905940 (= e!3066695 (+ 1 (size!37277 (t!366837 lt!2012604))))))

(assert (= (and d!1576654 c!833860) b!4905939))

(assert (= (and d!1576654 (not c!833860)) b!4905940))

(declare-fun m!5915344 () Bool)

(assert (=> b!4905940 m!5915344))

(assert (=> b!4905866 d!1576654))

(declare-fun d!1576656 () Bool)

(assert (=> d!1576656 (= (isEmpty!30418 (_1!33704 lt!2012602)) (is-Nil!56541 (_1!33704 lt!2012602)))))

(assert (=> b!4905866 d!1576656))

(declare-fun bm!340451 () Bool)

(declare-fun call!340458 () Bool)

(declare-fun isPrefix!4915 (List!56665 List!56665) Bool)

(assert (=> bm!340451 (= call!340458 (isPrefix!4915 lt!2012604 lt!2012604))))

(declare-fun b!4906026 () Bool)

(declare-fun e!3066745 () tuple2!60802)

(declare-fun lt!2012714 () tuple2!60802)

(assert (=> b!4906026 (= e!3066745 lt!2012714)))

(declare-fun b!4906027 () Bool)

(declare-fun e!3066747 () Bool)

(declare-fun lt!2012710 () tuple2!60802)

(assert (=> b!4906027 (= e!3066747 (>= (size!37277 (_1!33704 lt!2012710)) (size!37277 Nil!56541)))))

(declare-fun call!340461 () tuple2!60802)

(declare-fun lt!2012716 () List!56665)

(declare-fun bm!340452 () Bool)

(declare-fun call!340462 () Regex!13308)

(declare-fun call!340459 () List!56665)

(assert (=> bm!340452 (= call!340461 (findLongestMatchInner!1796 call!340462 lt!2012716 (+ (size!37277 Nil!56541) 1) call!340459 lt!2012604 (size!37277 lt!2012604)))))

(declare-fun bm!340453 () Bool)

(declare-fun call!340457 () Unit!146712)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1074 (List!56665 List!56665 List!56665) Unit!146712)

(assert (=> bm!340453 (= call!340457 (lemmaIsPrefixSameLengthThenSameList!1074 lt!2012604 Nil!56541 lt!2012604))))

(declare-fun b!4906028 () Bool)

(declare-fun e!3066743 () Unit!146712)

(declare-fun Unit!146717 () Unit!146712)

(assert (=> b!4906028 (= e!3066743 Unit!146717)))

(declare-fun lt!2012725 () Unit!146712)

(declare-fun call!340460 () Unit!146712)

(assert (=> b!4906028 (= lt!2012725 call!340460)))

(assert (=> b!4906028 call!340458))

(declare-fun lt!2012720 () Unit!146712)

(assert (=> b!4906028 (= lt!2012720 lt!2012725)))

(declare-fun lt!2012712 () Unit!146712)

(assert (=> b!4906028 (= lt!2012712 call!340457)))

(assert (=> b!4906028 (= lt!2012604 Nil!56541)))

(declare-fun lt!2012711 () Unit!146712)

(assert (=> b!4906028 (= lt!2012711 lt!2012712)))

(assert (=> b!4906028 false))

(declare-fun b!4906029 () Bool)

(assert (=> b!4906029 (= e!3066745 (tuple2!60803 Nil!56541 lt!2012604))))

(declare-fun bm!340454 () Bool)

(declare-fun call!340456 () C!26814)

(declare-fun derivativeStep!3894 (Regex!13308 C!26814) Regex!13308)

(assert (=> bm!340454 (= call!340462 (derivativeStep!3894 (regex!8233 rule!164) call!340456))))

(declare-fun bm!340455 () Bool)

(declare-fun head!10475 (List!56665) C!26814)

(assert (=> bm!340455 (= call!340456 (head!10475 lt!2012604))))

(declare-fun bm!340456 () Bool)

(declare-fun call!340463 () Bool)

(declare-fun nullable!4574 (Regex!13308) Bool)

(assert (=> bm!340456 (= call!340463 (nullable!4574 (regex!8233 rule!164)))))

(declare-fun d!1576658 () Bool)

(declare-fun e!3066742 () Bool)

(assert (=> d!1576658 e!3066742))

(declare-fun res!2095648 () Bool)

(assert (=> d!1576658 (=> (not res!2095648) (not e!3066742))))

(declare-fun ++!12262 (List!56665 List!56665) List!56665)

(assert (=> d!1576658 (= res!2095648 (= (++!12262 (_1!33704 lt!2012710) (_2!33704 lt!2012710)) lt!2012604))))

(declare-fun e!3066749 () tuple2!60802)

(assert (=> d!1576658 (= lt!2012710 e!3066749)))

(declare-fun c!833888 () Bool)

(declare-fun lostCause!1102 (Regex!13308) Bool)

(assert (=> d!1576658 (= c!833888 (lostCause!1102 (regex!8233 rule!164)))))

(declare-fun lt!2012726 () Unit!146712)

(declare-fun Unit!146718 () Unit!146712)

(assert (=> d!1576658 (= lt!2012726 Unit!146718)))

(declare-fun getSuffix!2903 (List!56665 List!56665) List!56665)

(assert (=> d!1576658 (= (getSuffix!2903 lt!2012604 Nil!56541) lt!2012604)))

(declare-fun lt!2012728 () Unit!146712)

(declare-fun lt!2012713 () Unit!146712)

(assert (=> d!1576658 (= lt!2012728 lt!2012713)))

(declare-fun lt!2012727 () List!56665)

(assert (=> d!1576658 (= lt!2012604 lt!2012727)))

(declare-fun lemmaSamePrefixThenSameSuffix!2319 (List!56665 List!56665 List!56665 List!56665 List!56665) Unit!146712)

(assert (=> d!1576658 (= lt!2012713 (lemmaSamePrefixThenSameSuffix!2319 Nil!56541 lt!2012604 Nil!56541 lt!2012727 lt!2012604))))

(assert (=> d!1576658 (= lt!2012727 (getSuffix!2903 lt!2012604 Nil!56541))))

(declare-fun lt!2012735 () Unit!146712)

(declare-fun lt!2012709 () Unit!146712)

(assert (=> d!1576658 (= lt!2012735 lt!2012709)))

(assert (=> d!1576658 (isPrefix!4915 Nil!56541 (++!12262 Nil!56541 lt!2012604))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3139 (List!56665 List!56665) Unit!146712)

(assert (=> d!1576658 (= lt!2012709 (lemmaConcatTwoListThenFirstIsPrefix!3139 Nil!56541 lt!2012604))))

(assert (=> d!1576658 (validRegex!5901 (regex!8233 rule!164))))

(assert (=> d!1576658 (= (findLongestMatchInner!1796 (regex!8233 rule!164) Nil!56541 (size!37277 Nil!56541) lt!2012604 lt!2012604 (size!37277 lt!2012604)) lt!2012710)))

(declare-fun b!4906030 () Bool)

(declare-fun e!3066746 () tuple2!60802)

(assert (=> b!4906030 (= e!3066746 e!3066745)))

(assert (=> b!4906030 (= lt!2012714 call!340461)))

(declare-fun c!833886 () Bool)

(assert (=> b!4906030 (= c!833886 (isEmpty!30418 (_1!33704 lt!2012714)))))

(declare-fun b!4906031 () Bool)

(assert (=> b!4906031 (= e!3066742 e!3066747)))

(declare-fun res!2095647 () Bool)

(assert (=> b!4906031 (=> res!2095647 e!3066747)))

(assert (=> b!4906031 (= res!2095647 (isEmpty!30418 (_1!33704 lt!2012710)))))

(declare-fun b!4906032 () Bool)

(declare-fun Unit!146719 () Unit!146712)

(assert (=> b!4906032 (= e!3066743 Unit!146719)))

(declare-fun b!4906033 () Bool)

(declare-fun c!833889 () Bool)

(assert (=> b!4906033 (= c!833889 call!340463)))

(declare-fun lt!2012732 () Unit!146712)

(declare-fun lt!2012717 () Unit!146712)

(assert (=> b!4906033 (= lt!2012732 lt!2012717)))

(declare-fun lt!2012718 () C!26814)

(declare-fun lt!2012731 () List!56665)

(assert (=> b!4906033 (= (++!12262 (++!12262 Nil!56541 (Cons!56541 lt!2012718 Nil!56541)) lt!2012731) lt!2012604)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1346 (List!56665 C!26814 List!56665 List!56665) Unit!146712)

(assert (=> b!4906033 (= lt!2012717 (lemmaMoveElementToOtherListKeepsConcatEq!1346 Nil!56541 lt!2012718 lt!2012731 lt!2012604))))

(declare-fun tail!9622 (List!56665) List!56665)

(assert (=> b!4906033 (= lt!2012731 (tail!9622 lt!2012604))))

(assert (=> b!4906033 (= lt!2012718 (head!10475 lt!2012604))))

(declare-fun lt!2012721 () Unit!146712)

(declare-fun lt!2012729 () Unit!146712)

(assert (=> b!4906033 (= lt!2012721 lt!2012729)))

(assert (=> b!4906033 (isPrefix!4915 (++!12262 Nil!56541 (Cons!56541 (head!10475 (getSuffix!2903 lt!2012604 Nil!56541)) Nil!56541)) lt!2012604)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!728 (List!56665 List!56665) Unit!146712)

(assert (=> b!4906033 (= lt!2012729 (lemmaAddHeadSuffixToPrefixStillPrefix!728 Nil!56541 lt!2012604))))

(declare-fun lt!2012719 () Unit!146712)

(declare-fun lt!2012733 () Unit!146712)

(assert (=> b!4906033 (= lt!2012719 lt!2012733)))

(assert (=> b!4906033 (= lt!2012733 (lemmaAddHeadSuffixToPrefixStillPrefix!728 Nil!56541 lt!2012604))))

(assert (=> b!4906033 (= lt!2012716 (++!12262 Nil!56541 (Cons!56541 (head!10475 lt!2012604) Nil!56541)))))

(declare-fun lt!2012723 () Unit!146712)

(assert (=> b!4906033 (= lt!2012723 e!3066743)))

(declare-fun c!833890 () Bool)

(assert (=> b!4906033 (= c!833890 (= (size!37277 Nil!56541) (size!37277 lt!2012604)))))

(declare-fun lt!2012730 () Unit!146712)

(declare-fun lt!2012715 () Unit!146712)

(assert (=> b!4906033 (= lt!2012730 lt!2012715)))

(assert (=> b!4906033 (<= (size!37277 Nil!56541) (size!37277 lt!2012604))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!640 (List!56665 List!56665) Unit!146712)

(assert (=> b!4906033 (= lt!2012715 (lemmaIsPrefixThenSmallerEqSize!640 Nil!56541 lt!2012604))))

(declare-fun e!3066748 () tuple2!60802)

(assert (=> b!4906033 (= e!3066748 e!3066746)))

(declare-fun b!4906034 () Bool)

(declare-fun e!3066744 () tuple2!60802)

(assert (=> b!4906034 (= e!3066744 (tuple2!60803 Nil!56541 Nil!56541))))

(declare-fun b!4906035 () Bool)

(declare-fun c!833885 () Bool)

(assert (=> b!4906035 (= c!833885 call!340463)))

(declare-fun lt!2012708 () Unit!146712)

(declare-fun lt!2012722 () Unit!146712)

(assert (=> b!4906035 (= lt!2012708 lt!2012722)))

(assert (=> b!4906035 (= lt!2012604 Nil!56541)))

(assert (=> b!4906035 (= lt!2012722 call!340457)))

(declare-fun lt!2012734 () Unit!146712)

(declare-fun lt!2012724 () Unit!146712)

(assert (=> b!4906035 (= lt!2012734 lt!2012724)))

(assert (=> b!4906035 call!340458))

(assert (=> b!4906035 (= lt!2012724 call!340460)))

(assert (=> b!4906035 (= e!3066748 e!3066744)))

(declare-fun bm!340457 () Bool)

(assert (=> bm!340457 (= call!340459 (tail!9622 lt!2012604))))

(declare-fun b!4906036 () Bool)

(assert (=> b!4906036 (= e!3066749 e!3066748)))

(declare-fun c!833887 () Bool)

(assert (=> b!4906036 (= c!833887 (= (size!37277 Nil!56541) (size!37277 lt!2012604)))))

(declare-fun bm!340458 () Bool)

(declare-fun lemmaIsPrefixRefl!3312 (List!56665 List!56665) Unit!146712)

(assert (=> bm!340458 (= call!340460 (lemmaIsPrefixRefl!3312 lt!2012604 lt!2012604))))

(declare-fun b!4906037 () Bool)

(assert (=> b!4906037 (= e!3066746 call!340461)))

(declare-fun b!4906038 () Bool)

(assert (=> b!4906038 (= e!3066744 (tuple2!60803 Nil!56541 lt!2012604))))

(declare-fun b!4906039 () Bool)

(assert (=> b!4906039 (= e!3066749 (tuple2!60803 Nil!56541 lt!2012604))))

(assert (= (and d!1576658 c!833888) b!4906039))

(assert (= (and d!1576658 (not c!833888)) b!4906036))

(assert (= (and b!4906036 c!833887) b!4906035))

(assert (= (and b!4906036 (not c!833887)) b!4906033))

(assert (= (and b!4906035 c!833885) b!4906034))

(assert (= (and b!4906035 (not c!833885)) b!4906038))

(assert (= (and b!4906033 c!833890) b!4906028))

(assert (= (and b!4906033 (not c!833890)) b!4906032))

(assert (= (and b!4906033 c!833889) b!4906030))

(assert (= (and b!4906033 (not c!833889)) b!4906037))

(assert (= (and b!4906030 c!833886) b!4906029))

(assert (= (and b!4906030 (not c!833886)) b!4906026))

(assert (= (or b!4906030 b!4906037) bm!340455))

(assert (= (or b!4906030 b!4906037) bm!340457))

(assert (= (or b!4906030 b!4906037) bm!340454))

(assert (= (or b!4906030 b!4906037) bm!340452))

(assert (= (or b!4906035 b!4906028) bm!340451))

(assert (= (or b!4906035 b!4906028) bm!340458))

(assert (= (or b!4906035 b!4906028) bm!340453))

(assert (= (or b!4906035 b!4906033) bm!340456))

(assert (= (and d!1576658 res!2095648) b!4906031))

(assert (= (and b!4906031 (not res!2095647)) b!4906027))

(declare-fun m!5915372 () Bool)

(assert (=> b!4906027 m!5915372))

(assert (=> b!4906027 m!5915226))

(declare-fun m!5915374 () Bool)

(assert (=> bm!340457 m!5915374))

(declare-fun m!5915376 () Bool)

(assert (=> bm!340451 m!5915376))

(declare-fun m!5915378 () Bool)

(assert (=> bm!340453 m!5915378))

(assert (=> bm!340452 m!5915230))

(declare-fun m!5915380 () Bool)

(assert (=> bm!340452 m!5915380))

(declare-fun m!5915382 () Bool)

(assert (=> bm!340455 m!5915382))

(declare-fun m!5915384 () Bool)

(assert (=> b!4906031 m!5915384))

(declare-fun m!5915386 () Bool)

(assert (=> bm!340456 m!5915386))

(declare-fun m!5915388 () Bool)

(assert (=> b!4906033 m!5915388))

(declare-fun m!5915390 () Bool)

(assert (=> b!4906033 m!5915390))

(assert (=> b!4906033 m!5915230))

(declare-fun m!5915392 () Bool)

(assert (=> b!4906033 m!5915392))

(declare-fun m!5915394 () Bool)

(assert (=> b!4906033 m!5915394))

(declare-fun m!5915396 () Bool)

(assert (=> b!4906033 m!5915396))

(assert (=> b!4906033 m!5915382))

(declare-fun m!5915398 () Bool)

(assert (=> b!4906033 m!5915398))

(declare-fun m!5915400 () Bool)

(assert (=> b!4906033 m!5915400))

(assert (=> b!4906033 m!5915398))

(declare-fun m!5915402 () Bool)

(assert (=> b!4906033 m!5915402))

(assert (=> b!4906033 m!5915374))

(declare-fun m!5915404 () Bool)

(assert (=> b!4906033 m!5915404))

(assert (=> b!4906033 m!5915396))

(declare-fun m!5915406 () Bool)

(assert (=> b!4906033 m!5915406))

(assert (=> b!4906033 m!5915226))

(assert (=> b!4906033 m!5915392))

(declare-fun m!5915408 () Bool)

(assert (=> b!4906030 m!5915408))

(assert (=> d!1576658 m!5915336))

(declare-fun m!5915410 () Bool)

(assert (=> d!1576658 m!5915410))

(assert (=> d!1576658 m!5915396))

(declare-fun m!5915412 () Bool)

(assert (=> d!1576658 m!5915412))

(declare-fun m!5915414 () Bool)

(assert (=> d!1576658 m!5915414))

(declare-fun m!5915416 () Bool)

(assert (=> d!1576658 m!5915416))

(declare-fun m!5915418 () Bool)

(assert (=> d!1576658 m!5915418))

(assert (=> d!1576658 m!5915418))

(declare-fun m!5915420 () Bool)

(assert (=> d!1576658 m!5915420))

(declare-fun m!5915422 () Bool)

(assert (=> bm!340458 m!5915422))

(declare-fun m!5915424 () Bool)

(assert (=> bm!340454 m!5915424))

(assert (=> b!4905866 d!1576658))

(declare-fun d!1576682 () Bool)

(declare-fun e!3066752 () Bool)

(assert (=> d!1576682 e!3066752))

(declare-fun res!2095651 () Bool)

(assert (=> d!1576682 (=> (not res!2095651) (not e!3066752))))

(assert (=> d!1576682 (= res!2095651 (semiInverseModEq!3634 (toChars!11015 (transformation!8233 rule!164)) (toValue!11156 (transformation!8233 rule!164))))))

(declare-fun Unit!146720 () Unit!146712)

(assert (=> d!1576682 (= (lemmaInv!1279 (transformation!8233 rule!164)) Unit!146720)))

(declare-fun b!4906042 () Bool)

(assert (=> b!4906042 (= e!3066752 (equivClasses!3487 (toChars!11015 (transformation!8233 rule!164)) (toValue!11156 (transformation!8233 rule!164))))))

(assert (= (and d!1576682 res!2095651) b!4906042))

(assert (=> d!1576682 m!5915224))

(assert (=> b!4906042 m!5915326))

(assert (=> b!4905866 d!1576682))

(declare-fun d!1576684 () Bool)

(declare-fun lt!2012736 () Int)

(assert (=> d!1576684 (>= lt!2012736 0)))

(declare-fun e!3066753 () Int)

(assert (=> d!1576684 (= lt!2012736 e!3066753)))

(declare-fun c!833891 () Bool)

(assert (=> d!1576684 (= c!833891 (is-Nil!56541 Nil!56541))))

(assert (=> d!1576684 (= (size!37277 Nil!56541) lt!2012736)))

(declare-fun b!4906043 () Bool)

(assert (=> b!4906043 (= e!3066753 0)))

(declare-fun b!4906044 () Bool)

(assert (=> b!4906044 (= e!3066753 (+ 1 (size!37277 (t!366837 Nil!56541))))))

(assert (= (and d!1576684 c!833891) b!4906043))

(assert (= (and d!1576684 (not c!833891)) b!4906044))

(declare-fun m!5915426 () Bool)

(assert (=> b!4906044 m!5915426))

(assert (=> b!4905866 d!1576684))

(declare-fun bs!1177083 () Bool)

(declare-fun d!1576686 () Bool)

(assert (= bs!1177083 (and d!1576686 b!4905867)))

(declare-fun lambda!244501 () Int)

(assert (=> bs!1177083 (= lambda!244501 lambda!244491)))

(assert (=> d!1576686 true))

(assert (=> d!1576686 (< (dynLambda!22825 order!25759 (toChars!11015 (transformation!8233 rule!164))) (dynLambda!22824 order!25757 lambda!244501))))

(assert (=> d!1576686 true))

(assert (=> d!1576686 (< (dynLambda!22823 order!25755 (toValue!11156 (transformation!8233 rule!164))) (dynLambda!22824 order!25757 lambda!244501))))

(assert (=> d!1576686 (= (semiInverseModEq!3634 (toChars!11015 (transformation!8233 rule!164)) (toValue!11156 (transformation!8233 rule!164))) (Forall!1730 lambda!244501))))

(declare-fun bs!1177084 () Bool)

(assert (= bs!1177084 d!1576686))

(declare-fun m!5915428 () Bool)

(assert (=> bs!1177084 m!5915428))

(assert (=> b!4905866 d!1576686))

(declare-fun d!1576688 () Bool)

(declare-fun res!2095656 () Bool)

(declare-fun e!3066756 () Bool)

(assert (=> d!1576688 (=> (not res!2095656) (not e!3066756))))

(assert (=> d!1576688 (= res!2095656 (validRegex!5901 (regex!8233 rule!164)))))

(assert (=> d!1576688 (= (ruleValid!3730 thiss!15943 rule!164) e!3066756)))

(declare-fun b!4906053 () Bool)

(declare-fun res!2095657 () Bool)

(assert (=> b!4906053 (=> (not res!2095657) (not e!3066756))))

(assert (=> b!4906053 (= res!2095657 (not (nullable!4574 (regex!8233 rule!164))))))

(declare-fun b!4906054 () Bool)

(assert (=> b!4906054 (= e!3066756 (not (= (tag!9097 rule!164) (String!64159 ""))))))

(assert (= (and d!1576688 res!2095656) b!4906053))

(assert (= (and b!4906053 res!2095657) b!4906054))

(assert (=> d!1576688 m!5915336))

(assert (=> b!4906053 m!5915386))

(assert (=> b!4905861 d!1576688))

(declare-fun d!1576690 () Bool)

(declare-fun choose!35850 (Int) Bool)

(assert (=> d!1576690 (= (Forall!1730 lambda!244491) (choose!35850 lambda!244491))))

(declare-fun bs!1177085 () Bool)

(assert (= bs!1177085 d!1576690))

(declare-fun m!5915430 () Bool)

(assert (=> bs!1177085 m!5915430))

(assert (=> b!4905867 d!1576690))

(declare-fun d!1576692 () Bool)

(declare-fun dynLambda!22829 (Int BalanceConc!29032) Bool)

(assert (=> d!1576692 (dynLambda!22829 lambda!244491 lt!2012605)))

(declare-fun lt!2012739 () Unit!146712)

(declare-fun choose!35851 (Int BalanceConc!29032) Unit!146712)

(assert (=> d!1576692 (= lt!2012739 (choose!35851 lambda!244491 lt!2012605))))

(assert (=> d!1576692 (Forall!1730 lambda!244491)))

(assert (=> d!1576692 (= (ForallOf!1170 lambda!244491 lt!2012605) lt!2012739)))

(declare-fun b_lambda!195385 () Bool)

(assert (=> (not b_lambda!195385) (not d!1576692)))

(declare-fun bs!1177086 () Bool)

(assert (= bs!1177086 d!1576692))

(declare-fun m!5915432 () Bool)

(assert (=> bs!1177086 m!5915432))

(declare-fun m!5915434 () Bool)

(assert (=> bs!1177086 m!5915434))

(assert (=> bs!1177086 m!5915244))

(assert (=> b!4905862 d!1576692))

(declare-fun d!1576694 () Bool)

(declare-fun dynLambda!22830 (Int BalanceConc!29032) TokenValue!8543)

(assert (=> d!1576694 (= (apply!13577 (transformation!8233 rule!164) (_1!33702 lt!2012608)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608)))))

(declare-fun b_lambda!195387 () Bool)

(assert (=> (not b_lambda!195387) (not d!1576694)))

(declare-fun t!366841 () Bool)

(declare-fun tb!259911 () Bool)

(assert (=> (and b!4905870 (= (toValue!11156 (transformation!8233 rule!164)) (toValue!11156 (transformation!8233 rule!164))) t!366841) tb!259911))

(declare-fun result!323662 () Bool)

(declare-fun inv!21 (TokenValue!8543) Bool)

(assert (=> tb!259911 (= result!323662 (inv!21 (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608))))))

(declare-fun m!5915436 () Bool)

(assert (=> tb!259911 m!5915436))

(assert (=> d!1576694 t!366841))

(declare-fun b_and!346383 () Bool)

(assert (= b_and!346375 (and (=> t!366841 result!323662) b_and!346383)))

(declare-fun m!5915438 () Bool)

(assert (=> d!1576694 m!5915438))

(assert (=> b!4905862 d!1576694))

(declare-fun d!1576696 () Bool)

(declare-fun isEmpty!30421 (Option!14103) Bool)

(assert (=> d!1576696 (= (isDefined!11112 (maxPrefixOneRule!3570 thiss!15943 rule!164 lt!2012604)) (not (isEmpty!30421 (maxPrefixOneRule!3570 thiss!15943 rule!164 lt!2012604))))))

(declare-fun bs!1177087 () Bool)

(assert (= bs!1177087 d!1576696))

(assert (=> bs!1177087 m!5915254))

(declare-fun m!5915440 () Bool)

(assert (=> bs!1177087 m!5915440))

(assert (=> b!4905862 d!1576696))

(declare-fun d!1576698 () Bool)

(declare-fun fromListB!2704 (List!56665) BalanceConc!29032)

(assert (=> d!1576698 (= (seqFromList!5975 lt!2012600) (fromListB!2704 lt!2012600))))

(declare-fun bs!1177088 () Bool)

(assert (= bs!1177088 d!1576698))

(declare-fun m!5915442 () Bool)

(assert (=> bs!1177088 m!5915442))

(assert (=> b!4905862 d!1576698))

(declare-fun d!1576700 () Bool)

(assert (=> d!1576700 (= (list!17815 (_1!33702 lt!2012608)) (list!17817 (c!833851 (_1!33702 lt!2012608))))))

(declare-fun bs!1177089 () Bool)

(assert (= bs!1177089 d!1576700))

(declare-fun m!5915444 () Bool)

(assert (=> bs!1177089 m!5915444))

(assert (=> b!4905862 d!1576700))

(declare-fun d!1576702 () Bool)

(declare-fun lt!2012742 () Int)

(assert (=> d!1576702 (= lt!2012742 (size!37277 (list!17815 (_1!33702 lt!2012608))))))

(declare-fun size!37281 (Conc!14801) Int)

(assert (=> d!1576702 (= lt!2012742 (size!37281 (c!833851 (_1!33702 lt!2012608))))))

(assert (=> d!1576702 (= (size!37276 (_1!33702 lt!2012608)) lt!2012742)))

(declare-fun bs!1177090 () Bool)

(assert (= bs!1177090 d!1576702))

(assert (=> bs!1177090 m!5915268))

(assert (=> bs!1177090 m!5915268))

(declare-fun m!5915446 () Bool)

(assert (=> bs!1177090 m!5915446))

(declare-fun m!5915448 () Bool)

(assert (=> bs!1177090 m!5915448))

(assert (=> b!4905862 d!1576702))

(declare-fun d!1576704 () Bool)

(declare-fun isEmpty!30422 (Option!14104) Bool)

(assert (=> d!1576704 (= (isDefined!11113 (Some!14103 (tuple2!60801 (Token!14995 (apply!13577 (transformation!8233 rule!164) (_1!33702 lt!2012608)) rule!164 (size!37276 (_1!33702 lt!2012608)) lt!2012600) (_2!33702 lt!2012608)))) (not (isEmpty!30422 (Some!14103 (tuple2!60801 (Token!14995 (apply!13577 (transformation!8233 rule!164) (_1!33702 lt!2012608)) rule!164 (size!37276 (_1!33702 lt!2012608)) lt!2012600) (_2!33702 lt!2012608))))))))

(declare-fun bs!1177091 () Bool)

(assert (= bs!1177091 d!1576704))

(declare-fun m!5915450 () Bool)

(assert (=> bs!1177091 m!5915450))

(assert (=> b!4905862 d!1576704))

(declare-fun b!4906075 () Bool)

(declare-fun res!2095677 () Bool)

(declare-fun e!3066769 () Bool)

(assert (=> b!4906075 (=> (not res!2095677) (not e!3066769))))

(declare-fun lt!2012757 () Option!14103)

(declare-fun get!19556 (Option!14103) tuple2!60796)

(assert (=> b!4906075 (= res!2095677 (< (size!37277 (_2!33701 (get!19556 lt!2012757))) (size!37277 lt!2012604)))))

(declare-fun b!4906076 () Bool)

(declare-fun res!2095674 () Bool)

(assert (=> b!4906076 (=> (not res!2095674) (not e!3066769))))

(declare-fun charsOf!5389 (Token!14994) BalanceConc!29032)

(assert (=> b!4906076 (= res!2095674 (= (++!12262 (list!17815 (charsOf!5389 (_1!33701 (get!19556 lt!2012757)))) (_2!33701 (get!19556 lt!2012757))) lt!2012604))))

(declare-fun b!4906077 () Bool)

(declare-fun res!2095678 () Bool)

(assert (=> b!4906077 (=> (not res!2095678) (not e!3066769))))

(assert (=> b!4906077 (= res!2095678 (= (value!263774 (_1!33701 (get!19556 lt!2012757))) (apply!13577 (transformation!8233 (rule!11433 (_1!33701 (get!19556 lt!2012757)))) (seqFromList!5975 (originalCharacters!8528 (_1!33701 (get!19556 lt!2012757)))))))))

(declare-fun b!4906078 () Bool)

(declare-fun e!3066768 () Bool)

(assert (=> b!4906078 (= e!3066768 e!3066769)))

(declare-fun res!2095675 () Bool)

(assert (=> b!4906078 (=> (not res!2095675) (not e!3066769))))

(assert (=> b!4906078 (= res!2095675 (matchR!6575 (regex!8233 rule!164) (list!17815 (charsOf!5389 (_1!33701 (get!19556 lt!2012757))))))))

(declare-fun b!4906080 () Bool)

(declare-fun res!2095673 () Bool)

(assert (=> b!4906080 (=> (not res!2095673) (not e!3066769))))

(assert (=> b!4906080 (= res!2095673 (= (rule!11433 (_1!33701 (get!19556 lt!2012757))) rule!164))))

(declare-fun b!4906081 () Bool)

(declare-fun e!3066770 () Bool)

(assert (=> b!4906081 (= e!3066770 (matchR!6575 (regex!8233 rule!164) (_1!33704 (findLongestMatchInner!1796 (regex!8233 rule!164) Nil!56541 (size!37277 Nil!56541) lt!2012604 lt!2012604 (size!37277 lt!2012604)))))))

(declare-fun b!4906082 () Bool)

(declare-fun e!3066771 () Option!14103)

(declare-fun lt!2012754 () tuple2!60802)

(assert (=> b!4906082 (= e!3066771 (Some!14102 (tuple2!60797 (Token!14995 (apply!13577 (transformation!8233 rule!164) (seqFromList!5975 (_1!33704 lt!2012754))) rule!164 (size!37276 (seqFromList!5975 (_1!33704 lt!2012754))) (_1!33704 lt!2012754)) (_2!33704 lt!2012754))))))

(declare-fun lt!2012756 () Unit!146712)

(assert (=> b!4906082 (= lt!2012756 (longestMatchIsAcceptedByMatchOrIsEmpty!1759 (regex!8233 rule!164) lt!2012604))))

(declare-fun res!2095672 () Bool)

(assert (=> b!4906082 (= res!2095672 (isEmpty!30418 (_1!33704 (findLongestMatchInner!1796 (regex!8233 rule!164) Nil!56541 (size!37277 Nil!56541) lt!2012604 lt!2012604 (size!37277 lt!2012604)))))))

(assert (=> b!4906082 (=> res!2095672 e!3066770)))

(assert (=> b!4906082 e!3066770))

(declare-fun lt!2012755 () Unit!146712)

(assert (=> b!4906082 (= lt!2012755 lt!2012756)))

(declare-fun lt!2012753 () Unit!146712)

(declare-fun lemmaSemiInverse!2577 (TokenValueInjection!16394 BalanceConc!29032) Unit!146712)

(assert (=> b!4906082 (= lt!2012753 (lemmaSemiInverse!2577 (transformation!8233 rule!164) (seqFromList!5975 (_1!33704 lt!2012754))))))

(declare-fun b!4906083 () Bool)

(assert (=> b!4906083 (= e!3066769 (= (size!37275 (_1!33701 (get!19556 lt!2012757))) (size!37277 (originalCharacters!8528 (_1!33701 (get!19556 lt!2012757))))))))

(declare-fun b!4906079 () Bool)

(assert (=> b!4906079 (= e!3066771 None!14102)))

(declare-fun d!1576706 () Bool)

(assert (=> d!1576706 e!3066768))

(declare-fun res!2095676 () Bool)

(assert (=> d!1576706 (=> res!2095676 e!3066768)))

(assert (=> d!1576706 (= res!2095676 (isEmpty!30421 lt!2012757))))

(assert (=> d!1576706 (= lt!2012757 e!3066771)))

(declare-fun c!833894 () Bool)

(assert (=> d!1576706 (= c!833894 (isEmpty!30418 (_1!33704 lt!2012754)))))

(declare-fun findLongestMatch!1664 (Regex!13308 List!56665) tuple2!60802)

(assert (=> d!1576706 (= lt!2012754 (findLongestMatch!1664 (regex!8233 rule!164) lt!2012604))))

(assert (=> d!1576706 (ruleValid!3730 thiss!15943 rule!164)))

(assert (=> d!1576706 (= (maxPrefixOneRule!3570 thiss!15943 rule!164 lt!2012604) lt!2012757)))

(assert (= (and d!1576706 c!833894) b!4906079))

(assert (= (and d!1576706 (not c!833894)) b!4906082))

(assert (= (and b!4906082 (not res!2095672)) b!4906081))

(assert (= (and d!1576706 (not res!2095676)) b!4906078))

(assert (= (and b!4906078 res!2095675) b!4906076))

(assert (= (and b!4906076 res!2095674) b!4906075))

(assert (= (and b!4906075 res!2095677) b!4906080))

(assert (= (and b!4906080 res!2095673) b!4906077))

(assert (= (and b!4906077 res!2095678) b!4906083))

(declare-fun m!5915452 () Bool)

(assert (=> d!1576706 m!5915452))

(declare-fun m!5915454 () Bool)

(assert (=> d!1576706 m!5915454))

(declare-fun m!5915456 () Bool)

(assert (=> d!1576706 m!5915456))

(assert (=> d!1576706 m!5915240))

(assert (=> b!4906081 m!5915226))

(assert (=> b!4906081 m!5915230))

(assert (=> b!4906081 m!5915226))

(assert (=> b!4906081 m!5915230))

(assert (=> b!4906081 m!5915232))

(assert (=> b!4906081 m!5915342))

(declare-fun m!5915458 () Bool)

(assert (=> b!4906076 m!5915458))

(declare-fun m!5915460 () Bool)

(assert (=> b!4906076 m!5915460))

(assert (=> b!4906076 m!5915460))

(declare-fun m!5915462 () Bool)

(assert (=> b!4906076 m!5915462))

(assert (=> b!4906076 m!5915462))

(declare-fun m!5915464 () Bool)

(assert (=> b!4906076 m!5915464))

(declare-fun m!5915466 () Bool)

(assert (=> b!4906082 m!5915466))

(declare-fun m!5915468 () Bool)

(assert (=> b!4906082 m!5915468))

(assert (=> b!4906082 m!5915234))

(assert (=> b!4906082 m!5915230))

(assert (=> b!4906082 m!5915466))

(declare-fun m!5915470 () Bool)

(assert (=> b!4906082 m!5915470))

(assert (=> b!4906082 m!5915340))

(assert (=> b!4906082 m!5915226))

(assert (=> b!4906082 m!5915230))

(assert (=> b!4906082 m!5915232))

(assert (=> b!4906082 m!5915226))

(assert (=> b!4906082 m!5915466))

(assert (=> b!4906082 m!5915466))

(declare-fun m!5915472 () Bool)

(assert (=> b!4906082 m!5915472))

(assert (=> b!4906078 m!5915458))

(assert (=> b!4906078 m!5915460))

(assert (=> b!4906078 m!5915460))

(assert (=> b!4906078 m!5915462))

(assert (=> b!4906078 m!5915462))

(declare-fun m!5915474 () Bool)

(assert (=> b!4906078 m!5915474))

(assert (=> b!4906083 m!5915458))

(declare-fun m!5915476 () Bool)

(assert (=> b!4906083 m!5915476))

(assert (=> b!4906077 m!5915458))

(declare-fun m!5915478 () Bool)

(assert (=> b!4906077 m!5915478))

(assert (=> b!4906077 m!5915478))

(declare-fun m!5915480 () Bool)

(assert (=> b!4906077 m!5915480))

(assert (=> b!4906080 m!5915458))

(assert (=> b!4906075 m!5915458))

(declare-fun m!5915482 () Bool)

(assert (=> b!4906075 m!5915482))

(assert (=> b!4906075 m!5915230))

(assert (=> b!4905862 d!1576706))

(declare-fun d!1576708 () Bool)

(assert (=> d!1576708 (dynLambda!22829 lambda!244491 (_1!33702 lt!2012608))))

(declare-fun lt!2012758 () Unit!146712)

(assert (=> d!1576708 (= lt!2012758 (choose!35851 lambda!244491 (_1!33702 lt!2012608)))))

(assert (=> d!1576708 (Forall!1730 lambda!244491)))

(assert (=> d!1576708 (= (ForallOf!1170 lambda!244491 (_1!33702 lt!2012608)) lt!2012758)))

(declare-fun b_lambda!195389 () Bool)

(assert (=> (not b_lambda!195389) (not d!1576708)))

(declare-fun bs!1177092 () Bool)

(assert (= bs!1177092 d!1576708))

(declare-fun m!5915484 () Bool)

(assert (=> bs!1177092 m!5915484))

(declare-fun m!5915486 () Bool)

(assert (=> bs!1177092 m!5915486))

(assert (=> bs!1177092 m!5915244))

(assert (=> b!4905862 d!1576708))

(declare-fun b!4906112 () Bool)

(declare-fun e!3066788 () Bool)

(declare-fun e!3066791 () Bool)

(assert (=> b!4906112 (= e!3066788 e!3066791)))

(declare-fun res!2095696 () Bool)

(assert (=> b!4906112 (=> res!2095696 e!3066791)))

(declare-fun call!340466 () Bool)

(assert (=> b!4906112 (= res!2095696 call!340466)))

(declare-fun d!1576710 () Bool)

(declare-fun e!3066786 () Bool)

(assert (=> d!1576710 e!3066786))

(declare-fun c!833903 () Bool)

(assert (=> d!1576710 (= c!833903 (is-EmptyExpr!13308 (regex!8233 rule!164)))))

(declare-fun lt!2012761 () Bool)

(declare-fun e!3066792 () Bool)

(assert (=> d!1576710 (= lt!2012761 e!3066792)))

(declare-fun c!833901 () Bool)

(assert (=> d!1576710 (= c!833901 (isEmpty!30418 (_1!33704 lt!2012602)))))

(assert (=> d!1576710 (validRegex!5901 (regex!8233 rule!164))))

(assert (=> d!1576710 (= (matchR!6575 (regex!8233 rule!164) (_1!33704 lt!2012602)) lt!2012761)))

(declare-fun b!4906113 () Bool)

(declare-fun res!2095700 () Bool)

(declare-fun e!3066787 () Bool)

(assert (=> b!4906113 (=> (not res!2095700) (not e!3066787))))

(assert (=> b!4906113 (= res!2095700 (not call!340466))))

(declare-fun b!4906114 () Bool)

(assert (=> b!4906114 (= e!3066791 (not (= (head!10475 (_1!33704 lt!2012602)) (c!833850 (regex!8233 rule!164)))))))

(declare-fun b!4906115 () Bool)

(declare-fun res!2095697 () Bool)

(declare-fun e!3066790 () Bool)

(assert (=> b!4906115 (=> res!2095697 e!3066790)))

(assert (=> b!4906115 (= res!2095697 (not (is-ElementMatch!13308 (regex!8233 rule!164))))))

(declare-fun e!3066789 () Bool)

(assert (=> b!4906115 (= e!3066789 e!3066790)))

(declare-fun b!4906116 () Bool)

(assert (=> b!4906116 (= e!3066786 (= lt!2012761 call!340466))))

(declare-fun b!4906117 () Bool)

(assert (=> b!4906117 (= e!3066786 e!3066789)))

(declare-fun c!833902 () Bool)

(assert (=> b!4906117 (= c!833902 (is-EmptyLang!13308 (regex!8233 rule!164)))))

(declare-fun b!4906118 () Bool)

(assert (=> b!4906118 (= e!3066789 (not lt!2012761))))

(declare-fun b!4906119 () Bool)

(declare-fun res!2095702 () Bool)

(assert (=> b!4906119 (=> res!2095702 e!3066790)))

(assert (=> b!4906119 (= res!2095702 e!3066787)))

(declare-fun res!2095701 () Bool)

(assert (=> b!4906119 (=> (not res!2095701) (not e!3066787))))

(assert (=> b!4906119 (= res!2095701 lt!2012761)))

(declare-fun b!4906120 () Bool)

(assert (=> b!4906120 (= e!3066790 e!3066788)))

(declare-fun res!2095698 () Bool)

(assert (=> b!4906120 (=> (not res!2095698) (not e!3066788))))

(assert (=> b!4906120 (= res!2095698 (not lt!2012761))))

(declare-fun b!4906121 () Bool)

(declare-fun res!2095695 () Bool)

(assert (=> b!4906121 (=> res!2095695 e!3066791)))

(assert (=> b!4906121 (= res!2095695 (not (isEmpty!30418 (tail!9622 (_1!33704 lt!2012602)))))))

(declare-fun b!4906122 () Bool)

(declare-fun res!2095699 () Bool)

(assert (=> b!4906122 (=> (not res!2095699) (not e!3066787))))

(assert (=> b!4906122 (= res!2095699 (isEmpty!30418 (tail!9622 (_1!33704 lt!2012602))))))

(declare-fun b!4906123 () Bool)

(assert (=> b!4906123 (= e!3066792 (nullable!4574 (regex!8233 rule!164)))))

(declare-fun b!4906124 () Bool)

(assert (=> b!4906124 (= e!3066787 (= (head!10475 (_1!33704 lt!2012602)) (c!833850 (regex!8233 rule!164))))))

(declare-fun bm!340461 () Bool)

(assert (=> bm!340461 (= call!340466 (isEmpty!30418 (_1!33704 lt!2012602)))))

(declare-fun b!4906125 () Bool)

(assert (=> b!4906125 (= e!3066792 (matchR!6575 (derivativeStep!3894 (regex!8233 rule!164) (head!10475 (_1!33704 lt!2012602))) (tail!9622 (_1!33704 lt!2012602))))))

(assert (= (and d!1576710 c!833901) b!4906123))

(assert (= (and d!1576710 (not c!833901)) b!4906125))

(assert (= (and d!1576710 c!833903) b!4906116))

(assert (= (and d!1576710 (not c!833903)) b!4906117))

(assert (= (and b!4906117 c!833902) b!4906118))

(assert (= (and b!4906117 (not c!833902)) b!4906115))

(assert (= (and b!4906115 (not res!2095697)) b!4906119))

(assert (= (and b!4906119 res!2095701) b!4906113))

(assert (= (and b!4906113 res!2095700) b!4906122))

(assert (= (and b!4906122 res!2095699) b!4906124))

(assert (= (and b!4906119 (not res!2095702)) b!4906120))

(assert (= (and b!4906120 res!2095698) b!4906112))

(assert (= (and b!4906112 (not res!2095696)) b!4906121))

(assert (= (and b!4906121 (not res!2095695)) b!4906114))

(assert (= (or b!4906116 b!4906112 b!4906113) bm!340461))

(assert (=> d!1576710 m!5915228))

(assert (=> d!1576710 m!5915336))

(declare-fun m!5915488 () Bool)

(assert (=> b!4906121 m!5915488))

(assert (=> b!4906121 m!5915488))

(declare-fun m!5915490 () Bool)

(assert (=> b!4906121 m!5915490))

(assert (=> b!4906122 m!5915488))

(assert (=> b!4906122 m!5915488))

(assert (=> b!4906122 m!5915490))

(assert (=> bm!340461 m!5915228))

(declare-fun m!5915492 () Bool)

(assert (=> b!4906124 m!5915492))

(assert (=> b!4906125 m!5915492))

(assert (=> b!4906125 m!5915492))

(declare-fun m!5915494 () Bool)

(assert (=> b!4906125 m!5915494))

(assert (=> b!4906125 m!5915488))

(assert (=> b!4906125 m!5915494))

(assert (=> b!4906125 m!5915488))

(declare-fun m!5915496 () Bool)

(assert (=> b!4906125 m!5915496))

(assert (=> b!4906123 m!5915386))

(assert (=> b!4906114 m!5915492))

(assert (=> b!4905868 d!1576710))

(declare-fun d!1576712 () Bool)

(declare-fun lt!2012764 () Bool)

(assert (=> d!1576712 (= lt!2012764 (isEmpty!30418 (list!17815 (_1!33702 lt!2012608))))))

(declare-fun isEmpty!30423 (Conc!14801) Bool)

(assert (=> d!1576712 (= lt!2012764 (isEmpty!30423 (c!833851 (_1!33702 lt!2012608))))))

(assert (=> d!1576712 (= (isEmpty!30417 (_1!33702 lt!2012608)) lt!2012764)))

(declare-fun bs!1177093 () Bool)

(assert (= bs!1177093 d!1576712))

(assert (=> bs!1177093 m!5915268))

(assert (=> bs!1177093 m!5915268))

(declare-fun m!5915498 () Bool)

(assert (=> bs!1177093 m!5915498))

(declare-fun m!5915500 () Bool)

(assert (=> bs!1177093 m!5915500))

(assert (=> b!4905863 d!1576712))

(declare-fun d!1576714 () Bool)

(declare-fun lt!2012793 () tuple2!60798)

(assert (=> d!1576714 (= (tuple2!60803 (list!17815 (_1!33702 lt!2012793)) (list!17815 (_2!33702 lt!2012793))) (findLongestMatch!1664 (regex!8233 rule!164) (list!17815 input!1509)))))

(declare-fun choose!35852 (Regex!13308 BalanceConc!29032) tuple2!60798)

(assert (=> d!1576714 (= lt!2012793 (choose!35852 (regex!8233 rule!164) input!1509))))

(assert (=> d!1576714 (validRegex!5901 (regex!8233 rule!164))))

(assert (=> d!1576714 (= (findLongestMatchWithZipperSequence!321 (regex!8233 rule!164) input!1509) lt!2012793)))

(declare-fun bs!1177094 () Bool)

(assert (= bs!1177094 d!1576714))

(declare-fun m!5915502 () Bool)

(assert (=> bs!1177094 m!5915502))

(assert (=> bs!1177094 m!5915236))

(declare-fun m!5915504 () Bool)

(assert (=> bs!1177094 m!5915504))

(assert (=> bs!1177094 m!5915236))

(declare-fun m!5915506 () Bool)

(assert (=> bs!1177094 m!5915506))

(declare-fun m!5915508 () Bool)

(assert (=> bs!1177094 m!5915508))

(assert (=> bs!1177094 m!5915336))

(assert (=> b!4905863 d!1576714))

(declare-fun d!1576716 () Bool)

(assert (=> d!1576716 (= (list!17815 lt!2012605) (list!17817 (c!833851 lt!2012605)))))

(declare-fun bs!1177095 () Bool)

(assert (= bs!1177095 d!1576716))

(declare-fun m!5915510 () Bool)

(assert (=> bs!1177095 m!5915510))

(assert (=> b!4905869 d!1576716))

(declare-fun e!3066807 () Bool)

(assert (=> b!4905864 (= tp!1380042 e!3066807)))

(declare-fun b!4906162 () Bool)

(declare-fun tp!1380068 () Bool)

(assert (=> b!4906162 (= e!3066807 tp!1380068)))

(declare-fun b!4906160 () Bool)

(declare-fun tp_is_empty!35825 () Bool)

(assert (=> b!4906160 (= e!3066807 tp_is_empty!35825)))

(declare-fun b!4906163 () Bool)

(declare-fun tp!1380069 () Bool)

(declare-fun tp!1380070 () Bool)

(assert (=> b!4906163 (= e!3066807 (and tp!1380069 tp!1380070))))

(declare-fun b!4906161 () Bool)

(declare-fun tp!1380067 () Bool)

(declare-fun tp!1380066 () Bool)

(assert (=> b!4906161 (= e!3066807 (and tp!1380067 tp!1380066))))

(assert (= (and b!4905864 (is-ElementMatch!13308 (regex!8233 rule!164))) b!4906160))

(assert (= (and b!4905864 (is-Concat!21851 (regex!8233 rule!164))) b!4906161))

(assert (= (and b!4905864 (is-Star!13308 (regex!8233 rule!164))) b!4906162))

(assert (= (and b!4905864 (is-Union!13308 (regex!8233 rule!164))) b!4906163))

(declare-fun e!3066813 () Bool)

(declare-fun b!4906172 () Bool)

(declare-fun tp!1380079 () Bool)

(declare-fun tp!1380078 () Bool)

(assert (=> b!4906172 (= e!3066813 (and (inv!73006 (left!41162 (c!833851 input!1509))) tp!1380079 (inv!73006 (right!41492 (c!833851 input!1509))) tp!1380078))))

(declare-fun b!4906174 () Bool)

(declare-fun e!3066812 () Bool)

(declare-fun tp!1380077 () Bool)

(assert (=> b!4906174 (= e!3066812 tp!1380077)))

(declare-fun b!4906173 () Bool)

(declare-fun inv!73013 (IArray!29663) Bool)

(assert (=> b!4906173 (= e!3066813 (and (inv!73013 (xs!18117 (c!833851 input!1509))) e!3066812))))

(assert (=> b!4905860 (= tp!1380041 (and (inv!73006 (c!833851 input!1509)) e!3066813))))

(assert (= (and b!4905860 (is-Node!14801 (c!833851 input!1509))) b!4906172))

(assert (= b!4906173 b!4906174))

(assert (= (and b!4905860 (is-Leaf!24635 (c!833851 input!1509))) b!4906173))

(declare-fun m!5915512 () Bool)

(assert (=> b!4906172 m!5915512))

(declare-fun m!5915514 () Bool)

(assert (=> b!4906172 m!5915514))

(declare-fun m!5915516 () Bool)

(assert (=> b!4906173 m!5915516))

(assert (=> b!4905860 m!5915246))

(declare-fun b_lambda!195391 () Bool)

(assert (= b_lambda!195387 (or (and b!4905870 b_free!131903) b_lambda!195391)))

(declare-fun b_lambda!195393 () Bool)

(assert (= b_lambda!195389 (or b!4905867 b_lambda!195393)))

(declare-fun bs!1177096 () Bool)

(declare-fun d!1576718 () Bool)

(assert (= bs!1177096 (and d!1576718 b!4905867)))

(declare-fun dynLambda!22831 (Int TokenValue!8543) BalanceConc!29032)

(assert (=> bs!1177096 (= (dynLambda!22829 lambda!244491 (_1!33702 lt!2012608)) (= (list!17815 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608)))) (list!17815 (_1!33702 lt!2012608))))))

(declare-fun b_lambda!195397 () Bool)

(assert (=> (not b_lambda!195397) (not bs!1177096)))

(declare-fun t!366843 () Bool)

(declare-fun tb!259913 () Bool)

(assert (=> (and b!4905870 (= (toChars!11015 (transformation!8233 rule!164)) (toChars!11015 (transformation!8233 rule!164))) t!366843) tb!259913))

(declare-fun b!4906179 () Bool)

(declare-fun tp!1380082 () Bool)

(declare-fun e!3066816 () Bool)

(assert (=> b!4906179 (= e!3066816 (and (inv!73006 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608))))) tp!1380082))))

(declare-fun result!323670 () Bool)

(assert (=> tb!259913 (= result!323670 (and (inv!73005 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608)))) e!3066816))))

(assert (= tb!259913 b!4906179))

(declare-fun m!5915518 () Bool)

(assert (=> b!4906179 m!5915518))

(declare-fun m!5915520 () Bool)

(assert (=> tb!259913 m!5915520))

(assert (=> bs!1177096 t!366843))

(declare-fun b_and!346385 () Bool)

(assert (= b_and!346377 (and (=> t!366843 result!323670) b_and!346385)))

(declare-fun b_lambda!195399 () Bool)

(assert (=> (not b_lambda!195399) (not bs!1177096)))

(assert (=> bs!1177096 t!366841))

(declare-fun b_and!346387 () Bool)

(assert (= b_and!346383 (and (=> t!366841 result!323662) b_and!346387)))

(assert (=> bs!1177096 m!5915268))

(assert (=> bs!1177096 m!5915438))

(assert (=> bs!1177096 m!5915438))

(declare-fun m!5915522 () Bool)

(assert (=> bs!1177096 m!5915522))

(assert (=> bs!1177096 m!5915522))

(declare-fun m!5915524 () Bool)

(assert (=> bs!1177096 m!5915524))

(assert (=> d!1576708 d!1576718))

(declare-fun b_lambda!195395 () Bool)

(assert (= b_lambda!195385 (or b!4905867 b_lambda!195395)))

(declare-fun bs!1177097 () Bool)

(declare-fun d!1576720 () Bool)

(assert (= bs!1177097 (and d!1576720 b!4905867)))

(assert (=> bs!1177097 (= (dynLambda!22829 lambda!244491 lt!2012605) (= (list!17815 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) lt!2012605))) (list!17815 lt!2012605)))))

(declare-fun b_lambda!195401 () Bool)

(assert (=> (not b_lambda!195401) (not bs!1177097)))

(declare-fun t!366845 () Bool)

(declare-fun tb!259915 () Bool)

(assert (=> (and b!4905870 (= (toChars!11015 (transformation!8233 rule!164)) (toChars!11015 (transformation!8233 rule!164))) t!366845) tb!259915))

(declare-fun tp!1380083 () Bool)

(declare-fun b!4906180 () Bool)

(declare-fun e!3066817 () Bool)

(assert (=> b!4906180 (= e!3066817 (and (inv!73006 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) lt!2012605)))) tp!1380083))))

(declare-fun result!323674 () Bool)

(assert (=> tb!259915 (= result!323674 (and (inv!73005 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) lt!2012605))) e!3066817))))

(assert (= tb!259915 b!4906180))

(declare-fun m!5915526 () Bool)

(assert (=> b!4906180 m!5915526))

(declare-fun m!5915528 () Bool)

(assert (=> tb!259915 m!5915528))

(assert (=> bs!1177097 t!366845))

(declare-fun b_and!346389 () Bool)

(assert (= b_and!346385 (and (=> t!366845 result!323674) b_and!346389)))

(declare-fun b_lambda!195403 () Bool)

(assert (=> (not b_lambda!195403) (not bs!1177097)))

(declare-fun t!366847 () Bool)

(declare-fun tb!259917 () Bool)

(assert (=> (and b!4905870 (= (toValue!11156 (transformation!8233 rule!164)) (toValue!11156 (transformation!8233 rule!164))) t!366847) tb!259917))

(declare-fun result!323676 () Bool)

(assert (=> tb!259917 (= result!323676 (inv!21 (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) lt!2012605)))))

(declare-fun m!5915530 () Bool)

(assert (=> tb!259917 m!5915530))

(assert (=> bs!1177097 t!366847))

(declare-fun b_and!346391 () Bool)

(assert (= b_and!346387 (and (=> t!366847 result!323676) b_and!346391)))

(assert (=> bs!1177097 m!5915222))

(declare-fun m!5915532 () Bool)

(assert (=> bs!1177097 m!5915532))

(assert (=> bs!1177097 m!5915532))

(declare-fun m!5915534 () Bool)

(assert (=> bs!1177097 m!5915534))

(assert (=> bs!1177097 m!5915534))

(declare-fun m!5915536 () Bool)

(assert (=> bs!1177097 m!5915536))

(assert (=> d!1576692 d!1576720))

(push 1)

(assert (not b!4906114))

(assert (not b!4906080))

(assert (not b!4906173))

(assert (not b!4906042))

(assert b_and!346389)

(assert (not b!4906027))

(assert (not b!4906123))

(assert (not b!4906077))

(assert (not d!1576702))

(assert (not b!4906082))

(assert (not d!1576714))

(assert (not b!4906122))

(assert (not d!1576650))

(assert (not b!4905931))

(assert (not b!4906163))

(assert (not b_lambda!195403))

(assert (not bm!340453))

(assert (not b!4906075))

(assert (not d!1576704))

(assert (not b_lambda!195399))

(assert (not d!1576688))

(assert (not bm!340455))

(assert (not b_lambda!195395))

(assert (not d!1576692))

(assert (not b!4906076))

(assert (not bm!340461))

(assert b_and!346391)

(assert (not bm!340452))

(assert (not d!1576682))

(assert (not b!4906081))

(assert (not bm!340454))

(assert (not bm!340457))

(assert (not d!1576646))

(assert (not d!1576686))

(assert (not b_lambda!195397))

(assert (not bs!1177096))

(assert (not d!1576690))

(assert (not b_lambda!195391))

(assert (not bm!340458))

(assert (not b!4906162))

(assert (not d!1576658))

(assert (not b!4906121))

(assert (not b!4905940))

(assert (not b_next!132693))

(assert (not b!4906161))

(assert (not bs!1177097))

(assert (not b!4906083))

(assert (not bm!340451))

(assert (not b!4906124))

(assert (not b!4906174))

(assert (not b!4906172))

(assert (not b!4905934))

(assert (not d!1576644))

(assert (not d!1576712))

(assert (not b_next!132695))

(assert (not b!4906053))

(assert (not d!1576696))

(assert (not d!1576710))

(assert (not tb!259911))

(assert (not b!4906030))

(assert (not b!4906033))

(assert (not b_lambda!195401))

(assert (not tb!259915))

(assert (not d!1576708))

(assert (not b!4906179))

(assert (not b!4905860))

(assert (not b_lambda!195393))

(assert (not b!4905922))

(assert (not d!1576652))

(assert (not tb!259917))

(assert (not b!4906078))

(assert (not b!4905929))

(assert tp_is_empty!35825)

(assert (not d!1576698))

(assert (not d!1576700))

(assert (not b!4906031))

(assert (not bm!340456))

(assert (not b!4906180))

(assert (not tb!259913))

(assert (not d!1576716))

(assert (not b!4906044))

(assert (not d!1576706))

(assert (not b!4906125))

(check-sat)

(pop 1)

(push 1)

(assert b_and!346389)

(assert b_and!346391)

(assert (not b_next!132695))

(assert (not b_next!132693))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!195425 () Bool)

(assert (= b_lambda!195399 (or (and b!4905870 b_free!131903) b_lambda!195425)))

(declare-fun b_lambda!195427 () Bool)

(assert (= b_lambda!195401 (or (and b!4905870 b_free!131905) b_lambda!195427)))

(declare-fun b_lambda!195429 () Bool)

(assert (= b_lambda!195403 (or (and b!4905870 b_free!131903) b_lambda!195429)))

(declare-fun b_lambda!195431 () Bool)

(assert (= b_lambda!195397 (or (and b!4905870 b_free!131905) b_lambda!195431)))

(push 1)

(assert (not b!4906114))

(assert (not b!4906080))

(assert (not b!4906173))

(assert (not b!4906042))

(assert b_and!346389)

(assert (not b!4906027))

(assert (not b!4906123))

(assert (not b!4906077))

(assert (not d!1576702))

(assert (not b!4906082))

(assert (not b_lambda!195429))

(assert (not d!1576714))

(assert (not b!4906122))

(assert (not b_lambda!195425))

(assert (not d!1576650))

(assert (not b!4905931))

(assert (not b!4906163))

(assert (not bm!340453))

(assert (not b!4906075))

(assert (not d!1576704))

(assert (not d!1576688))

(assert (not bm!340455))

(assert (not b_lambda!195395))

(assert (not d!1576692))

(assert (not b!4906076))

(assert (not bm!340461))

(assert b_and!346391)

(assert (not bm!340452))

(assert (not d!1576682))

(assert (not b!4906081))

(assert (not bm!340454))

(assert (not bm!340457))

(assert (not d!1576646))

(assert (not d!1576686))

(assert (not bs!1177096))

(assert (not d!1576690))

(assert (not b_lambda!195391))

(assert (not b_lambda!195427))

(assert (not bm!340458))

(assert (not b!4906162))

(assert (not d!1576658))

(assert (not b!4906121))

(assert (not b!4905940))

(assert (not b_next!132693))

(assert (not b!4906161))

(assert (not bs!1177097))

(assert (not b!4906083))

(assert (not bm!340451))

(assert (not b!4906124))

(assert (not b!4906174))

(assert (not b!4906172))

(assert (not b!4905934))

(assert (not d!1576644))

(assert (not d!1576712))

(assert (not b_next!132695))

(assert (not b!4906053))

(assert (not b_lambda!195431))

(assert (not d!1576696))

(assert (not d!1576710))

(assert (not tb!259911))

(assert (not b!4906030))

(assert (not b!4906033))

(assert (not tb!259915))

(assert (not d!1576708))

(assert (not b!4906179))

(assert (not b!4905860))

(assert (not b_lambda!195393))

(assert (not b!4905922))

(assert (not d!1576652))

(assert (not tb!259917))

(assert (not b!4906078))

(assert (not b!4905929))

(assert tp_is_empty!35825)

(assert (not d!1576698))

(assert (not d!1576700))

(assert (not b!4906031))

(assert (not bm!340456))

(assert (not b!4906180))

(assert (not tb!259913))

(assert (not d!1576716))

(assert (not b!4906044))

(assert (not d!1576706))

(assert (not b!4906125))

(check-sat)

(pop 1)

(push 1)

(assert b_and!346389)

(assert b_and!346391)

(assert (not b_next!132695))

(assert (not b_next!132693))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1576758 () Bool)

(assert (=> d!1576758 (= (isEmpty!30418 (_1!33704 lt!2012714)) (is-Nil!56541 (_1!33704 lt!2012714)))))

(assert (=> b!4906030 d!1576758))

(declare-fun d!1576760 () Bool)

(declare-fun res!2095743 () Bool)

(declare-fun e!3066875 () Bool)

(assert (=> d!1576760 (=> (not res!2095743) (not e!3066875))))

(declare-fun list!17819 (IArray!29663) List!56665)

(assert (=> d!1576760 (= res!2095743 (<= (size!37277 (list!17819 (xs!18117 (c!833851 input!1509)))) 512))))

(assert (=> d!1576760 (= (inv!73012 (c!833851 input!1509)) e!3066875)))

(declare-fun b!4906284 () Bool)

(declare-fun res!2095744 () Bool)

(assert (=> b!4906284 (=> (not res!2095744) (not e!3066875))))

(assert (=> b!4906284 (= res!2095744 (= (csize!29833 (c!833851 input!1509)) (size!37277 (list!17819 (xs!18117 (c!833851 input!1509))))))))

(declare-fun b!4906285 () Bool)

(assert (=> b!4906285 (= e!3066875 (and (> (csize!29833 (c!833851 input!1509)) 0) (<= (csize!29833 (c!833851 input!1509)) 512)))))

(assert (= (and d!1576760 res!2095743) b!4906284))

(assert (= (and b!4906284 res!2095744) b!4906285))

(declare-fun m!5915698 () Bool)

(assert (=> d!1576760 m!5915698))

(assert (=> d!1576760 m!5915698))

(declare-fun m!5915700 () Bool)

(assert (=> d!1576760 m!5915700))

(assert (=> b!4906284 m!5915698))

(assert (=> b!4906284 m!5915698))

(assert (=> b!4906284 m!5915700))

(assert (=> b!4905931 d!1576760))

(declare-fun d!1576762 () Bool)

(declare-fun nullableFct!1247 (Regex!13308) Bool)

(assert (=> d!1576762 (= (nullable!4574 (regex!8233 rule!164)) (nullableFct!1247 (regex!8233 rule!164)))))

(declare-fun bs!1177111 () Bool)

(assert (= bs!1177111 d!1576762))

(declare-fun m!5915702 () Bool)

(assert (=> bs!1177111 m!5915702))

(assert (=> b!4906123 d!1576762))

(declare-fun b!4906286 () Bool)

(declare-fun e!3066878 () Bool)

(declare-fun e!3066881 () Bool)

(assert (=> b!4906286 (= e!3066878 e!3066881)))

(declare-fun res!2095746 () Bool)

(assert (=> b!4906286 (=> res!2095746 e!3066881)))

(declare-fun call!340491 () Bool)

(assert (=> b!4906286 (= res!2095746 call!340491)))

(declare-fun d!1576764 () Bool)

(declare-fun e!3066876 () Bool)

(assert (=> d!1576764 e!3066876))

(declare-fun c!833931 () Bool)

(assert (=> d!1576764 (= c!833931 (is-EmptyExpr!13308 (regex!8233 rule!164)))))

(declare-fun lt!2012884 () Bool)

(declare-fun e!3066882 () Bool)

(assert (=> d!1576764 (= lt!2012884 e!3066882)))

(declare-fun c!833929 () Bool)

(assert (=> d!1576764 (= c!833929 (isEmpty!30418 (_1!33704 (findLongestMatchInner!1796 (regex!8233 rule!164) Nil!56541 (size!37277 Nil!56541) lt!2012604 lt!2012604 (size!37277 lt!2012604)))))))

(assert (=> d!1576764 (validRegex!5901 (regex!8233 rule!164))))

(assert (=> d!1576764 (= (matchR!6575 (regex!8233 rule!164) (_1!33704 (findLongestMatchInner!1796 (regex!8233 rule!164) Nil!56541 (size!37277 Nil!56541) lt!2012604 lt!2012604 (size!37277 lt!2012604)))) lt!2012884)))

(declare-fun b!4906287 () Bool)

(declare-fun res!2095750 () Bool)

(declare-fun e!3066877 () Bool)

(assert (=> b!4906287 (=> (not res!2095750) (not e!3066877))))

(assert (=> b!4906287 (= res!2095750 (not call!340491))))

(declare-fun b!4906288 () Bool)

(assert (=> b!4906288 (= e!3066881 (not (= (head!10475 (_1!33704 (findLongestMatchInner!1796 (regex!8233 rule!164) Nil!56541 (size!37277 Nil!56541) lt!2012604 lt!2012604 (size!37277 lt!2012604)))) (c!833850 (regex!8233 rule!164)))))))

(declare-fun b!4906289 () Bool)

(declare-fun res!2095747 () Bool)

(declare-fun e!3066880 () Bool)

(assert (=> b!4906289 (=> res!2095747 e!3066880)))

(assert (=> b!4906289 (= res!2095747 (not (is-ElementMatch!13308 (regex!8233 rule!164))))))

(declare-fun e!3066879 () Bool)

(assert (=> b!4906289 (= e!3066879 e!3066880)))

(declare-fun b!4906290 () Bool)

(assert (=> b!4906290 (= e!3066876 (= lt!2012884 call!340491))))

(declare-fun b!4906291 () Bool)

(assert (=> b!4906291 (= e!3066876 e!3066879)))

(declare-fun c!833930 () Bool)

(assert (=> b!4906291 (= c!833930 (is-EmptyLang!13308 (regex!8233 rule!164)))))

(declare-fun b!4906292 () Bool)

(assert (=> b!4906292 (= e!3066879 (not lt!2012884))))

(declare-fun b!4906293 () Bool)

(declare-fun res!2095752 () Bool)

(assert (=> b!4906293 (=> res!2095752 e!3066880)))

(assert (=> b!4906293 (= res!2095752 e!3066877)))

(declare-fun res!2095751 () Bool)

(assert (=> b!4906293 (=> (not res!2095751) (not e!3066877))))

(assert (=> b!4906293 (= res!2095751 lt!2012884)))

(declare-fun b!4906294 () Bool)

(assert (=> b!4906294 (= e!3066880 e!3066878)))

(declare-fun res!2095748 () Bool)

(assert (=> b!4906294 (=> (not res!2095748) (not e!3066878))))

(assert (=> b!4906294 (= res!2095748 (not lt!2012884))))

(declare-fun b!4906295 () Bool)

(declare-fun res!2095745 () Bool)

(assert (=> b!4906295 (=> res!2095745 e!3066881)))

(assert (=> b!4906295 (= res!2095745 (not (isEmpty!30418 (tail!9622 (_1!33704 (findLongestMatchInner!1796 (regex!8233 rule!164) Nil!56541 (size!37277 Nil!56541) lt!2012604 lt!2012604 (size!37277 lt!2012604)))))))))

(declare-fun b!4906296 () Bool)

(declare-fun res!2095749 () Bool)

(assert (=> b!4906296 (=> (not res!2095749) (not e!3066877))))

(assert (=> b!4906296 (= res!2095749 (isEmpty!30418 (tail!9622 (_1!33704 (findLongestMatchInner!1796 (regex!8233 rule!164) Nil!56541 (size!37277 Nil!56541) lt!2012604 lt!2012604 (size!37277 lt!2012604))))))))

(declare-fun b!4906297 () Bool)

(assert (=> b!4906297 (= e!3066882 (nullable!4574 (regex!8233 rule!164)))))

(declare-fun b!4906298 () Bool)

(assert (=> b!4906298 (= e!3066877 (= (head!10475 (_1!33704 (findLongestMatchInner!1796 (regex!8233 rule!164) Nil!56541 (size!37277 Nil!56541) lt!2012604 lt!2012604 (size!37277 lt!2012604)))) (c!833850 (regex!8233 rule!164))))))

(declare-fun bm!340486 () Bool)

(assert (=> bm!340486 (= call!340491 (isEmpty!30418 (_1!33704 (findLongestMatchInner!1796 (regex!8233 rule!164) Nil!56541 (size!37277 Nil!56541) lt!2012604 lt!2012604 (size!37277 lt!2012604)))))))

(declare-fun b!4906299 () Bool)

(assert (=> b!4906299 (= e!3066882 (matchR!6575 (derivativeStep!3894 (regex!8233 rule!164) (head!10475 (_1!33704 (findLongestMatchInner!1796 (regex!8233 rule!164) Nil!56541 (size!37277 Nil!56541) lt!2012604 lt!2012604 (size!37277 lt!2012604))))) (tail!9622 (_1!33704 (findLongestMatchInner!1796 (regex!8233 rule!164) Nil!56541 (size!37277 Nil!56541) lt!2012604 lt!2012604 (size!37277 lt!2012604))))))))

(assert (= (and d!1576764 c!833929) b!4906297))

(assert (= (and d!1576764 (not c!833929)) b!4906299))

(assert (= (and d!1576764 c!833931) b!4906290))

(assert (= (and d!1576764 (not c!833931)) b!4906291))

(assert (= (and b!4906291 c!833930) b!4906292))

(assert (= (and b!4906291 (not c!833930)) b!4906289))

(assert (= (and b!4906289 (not res!2095747)) b!4906293))

(assert (= (and b!4906293 res!2095751) b!4906287))

(assert (= (and b!4906287 res!2095750) b!4906296))

(assert (= (and b!4906296 res!2095749) b!4906298))

(assert (= (and b!4906293 (not res!2095752)) b!4906294))

(assert (= (and b!4906294 res!2095748) b!4906286))

(assert (= (and b!4906286 (not res!2095746)) b!4906295))

(assert (= (and b!4906295 (not res!2095745)) b!4906288))

(assert (= (or b!4906290 b!4906286 b!4906287) bm!340486))

(assert (=> d!1576764 m!5915340))

(assert (=> d!1576764 m!5915336))

(declare-fun m!5915704 () Bool)

(assert (=> b!4906295 m!5915704))

(assert (=> b!4906295 m!5915704))

(declare-fun m!5915706 () Bool)

(assert (=> b!4906295 m!5915706))

(assert (=> b!4906296 m!5915704))

(assert (=> b!4906296 m!5915704))

(assert (=> b!4906296 m!5915706))

(assert (=> bm!340486 m!5915340))

(declare-fun m!5915708 () Bool)

(assert (=> b!4906298 m!5915708))

(assert (=> b!4906299 m!5915708))

(assert (=> b!4906299 m!5915708))

(declare-fun m!5915710 () Bool)

(assert (=> b!4906299 m!5915710))

(assert (=> b!4906299 m!5915704))

(assert (=> b!4906299 m!5915710))

(assert (=> b!4906299 m!5915704))

(declare-fun m!5915712 () Bool)

(assert (=> b!4906299 m!5915712))

(assert (=> b!4906297 m!5915386))

(assert (=> b!4906288 m!5915708))

(assert (=> b!4905934 d!1576764))

(assert (=> b!4905934 d!1576658))

(assert (=> b!4905934 d!1576684))

(assert (=> b!4905934 d!1576654))

(declare-fun d!1576766 () Bool)

(assert (=> d!1576766 (= (head!10475 lt!2012604) (h!62989 lt!2012604))))

(assert (=> bm!340455 d!1576766))

(declare-fun d!1576768 () Bool)

(assert (=> d!1576768 (= (list!17815 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608)))) (list!17817 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608))))))))

(declare-fun bs!1177112 () Bool)

(assert (= bs!1177112 d!1576768))

(declare-fun m!5915714 () Bool)

(assert (=> bs!1177112 m!5915714))

(assert (=> bs!1177096 d!1576768))

(assert (=> bs!1177096 d!1576700))

(declare-fun d!1576770 () Bool)

(assert (=> d!1576770 (= (isEmpty!30421 (maxPrefixOneRule!3570 thiss!15943 rule!164 lt!2012604)) (not (is-Some!14102 (maxPrefixOneRule!3570 thiss!15943 rule!164 lt!2012604))))))

(assert (=> d!1576696 d!1576770))

(declare-fun d!1576772 () Bool)

(assert (=> d!1576772 (= (isEmpty!30421 lt!2012757) (not (is-Some!14102 lt!2012757)))))

(assert (=> d!1576706 d!1576772))

(declare-fun d!1576774 () Bool)

(assert (=> d!1576774 (= (isEmpty!30418 (_1!33704 lt!2012754)) (is-Nil!56541 (_1!33704 lt!2012754)))))

(assert (=> d!1576706 d!1576774))

(declare-fun d!1576776 () Bool)

(declare-fun lt!2012904 () tuple2!60802)

(assert (=> d!1576776 (= (++!12262 (_1!33704 lt!2012904) (_2!33704 lt!2012904)) lt!2012604)))

(declare-fun sizeTr!349 (List!56665 Int) Int)

(assert (=> d!1576776 (= lt!2012904 (findLongestMatchInner!1796 (regex!8233 rule!164) Nil!56541 0 lt!2012604 lt!2012604 (sizeTr!349 lt!2012604 0)))))

(declare-fun lt!2012908 () Unit!146712)

(declare-fun lt!2012902 () Unit!146712)

(assert (=> d!1576776 (= lt!2012908 lt!2012902)))

(declare-fun lt!2012907 () List!56665)

(declare-fun lt!2012903 () Int)

(assert (=> d!1576776 (= (sizeTr!349 lt!2012907 lt!2012903) (+ (size!37277 lt!2012907) lt!2012903))))

(declare-fun lemmaSizeTrEqualsSize!348 (List!56665 Int) Unit!146712)

(assert (=> d!1576776 (= lt!2012902 (lemmaSizeTrEqualsSize!348 lt!2012907 lt!2012903))))

(assert (=> d!1576776 (= lt!2012903 0)))

(assert (=> d!1576776 (= lt!2012907 Nil!56541)))

(declare-fun lt!2012906 () Unit!146712)

(declare-fun lt!2012905 () Unit!146712)

(assert (=> d!1576776 (= lt!2012906 lt!2012905)))

(declare-fun lt!2012901 () Int)

(assert (=> d!1576776 (= (sizeTr!349 lt!2012604 lt!2012901) (+ (size!37277 lt!2012604) lt!2012901))))

(assert (=> d!1576776 (= lt!2012905 (lemmaSizeTrEqualsSize!348 lt!2012604 lt!2012901))))

(assert (=> d!1576776 (= lt!2012901 0)))

(assert (=> d!1576776 (validRegex!5901 (regex!8233 rule!164))))

(assert (=> d!1576776 (= (findLongestMatch!1664 (regex!8233 rule!164) lt!2012604) lt!2012904)))

(declare-fun bs!1177113 () Bool)

(assert (= bs!1177113 d!1576776))

(declare-fun m!5915716 () Bool)

(assert (=> bs!1177113 m!5915716))

(declare-fun m!5915718 () Bool)

(assert (=> bs!1177113 m!5915718))

(declare-fun m!5915720 () Bool)

(assert (=> bs!1177113 m!5915720))

(assert (=> bs!1177113 m!5915336))

(declare-fun m!5915722 () Bool)

(assert (=> bs!1177113 m!5915722))

(assert (=> bs!1177113 m!5915718))

(declare-fun m!5915724 () Bool)

(assert (=> bs!1177113 m!5915724))

(declare-fun m!5915726 () Bool)

(assert (=> bs!1177113 m!5915726))

(declare-fun m!5915728 () Bool)

(assert (=> bs!1177113 m!5915728))

(assert (=> bs!1177113 m!5915230))

(declare-fun m!5915730 () Bool)

(assert (=> bs!1177113 m!5915730))

(assert (=> d!1576706 d!1576776))

(assert (=> d!1576706 d!1576688))

(declare-fun d!1576778 () Bool)

(declare-fun lt!2012909 () Int)

(assert (=> d!1576778 (>= lt!2012909 0)))

(declare-fun e!3066883 () Int)

(assert (=> d!1576778 (= lt!2012909 e!3066883)))

(declare-fun c!833932 () Bool)

(assert (=> d!1576778 (= c!833932 (is-Nil!56541 (list!17815 (_1!33702 lt!2012608))))))

(assert (=> d!1576778 (= (size!37277 (list!17815 (_1!33702 lt!2012608))) lt!2012909)))

(declare-fun b!4906300 () Bool)

(assert (=> b!4906300 (= e!3066883 0)))

(declare-fun b!4906301 () Bool)

(assert (=> b!4906301 (= e!3066883 (+ 1 (size!37277 (t!366837 (list!17815 (_1!33702 lt!2012608))))))))

(assert (= (and d!1576778 c!833932) b!4906300))

(assert (= (and d!1576778 (not c!833932)) b!4906301))

(declare-fun m!5915732 () Bool)

(assert (=> b!4906301 m!5915732))

(assert (=> d!1576702 d!1576778))

(assert (=> d!1576702 d!1576700))

(declare-fun d!1576780 () Bool)

(declare-fun lt!2012912 () Int)

(assert (=> d!1576780 (= lt!2012912 (size!37277 (list!17817 (c!833851 (_1!33702 lt!2012608)))))))

(assert (=> d!1576780 (= lt!2012912 (ite (is-Empty!14801 (c!833851 (_1!33702 lt!2012608))) 0 (ite (is-Leaf!24635 (c!833851 (_1!33702 lt!2012608))) (csize!29833 (c!833851 (_1!33702 lt!2012608))) (csize!29832 (c!833851 (_1!33702 lt!2012608))))))))

(assert (=> d!1576780 (= (size!37281 (c!833851 (_1!33702 lt!2012608))) lt!2012912)))

(declare-fun bs!1177114 () Bool)

(assert (= bs!1177114 d!1576780))

(assert (=> bs!1177114 m!5915444))

(assert (=> bs!1177114 m!5915444))

(declare-fun m!5915734 () Bool)

(assert (=> bs!1177114 m!5915734))

(assert (=> d!1576702 d!1576780))

(declare-fun d!1576782 () Bool)

(assert (not d!1576782))

(assert (=> b!4906044 d!1576782))

(assert (=> bm!340461 d!1576656))

(declare-fun d!1576784 () Bool)

(assert (=> d!1576784 (= lt!2012604 Nil!56541)))

(declare-fun lt!2012915 () Unit!146712)

(declare-fun choose!35857 (List!56665 List!56665 List!56665) Unit!146712)

(assert (=> d!1576784 (= lt!2012915 (choose!35857 lt!2012604 Nil!56541 lt!2012604))))

(assert (=> d!1576784 (isPrefix!4915 lt!2012604 lt!2012604)))

(assert (=> d!1576784 (= (lemmaIsPrefixSameLengthThenSameList!1074 lt!2012604 Nil!56541 lt!2012604) lt!2012915)))

(declare-fun bs!1177115 () Bool)

(assert (= bs!1177115 d!1576784))

(declare-fun m!5915736 () Bool)

(assert (=> bs!1177115 m!5915736))

(assert (=> bs!1177115 m!5915376))

(assert (=> bm!340453 d!1576784))

(declare-fun b!4906302 () Bool)

(declare-fun e!3066886 () Bool)

(declare-fun e!3066889 () Bool)

(assert (=> b!4906302 (= e!3066886 e!3066889)))

(declare-fun res!2095754 () Bool)

(assert (=> b!4906302 (=> res!2095754 e!3066889)))

(declare-fun call!340492 () Bool)

(assert (=> b!4906302 (= res!2095754 call!340492)))

(declare-fun d!1576786 () Bool)

(declare-fun e!3066884 () Bool)

(assert (=> d!1576786 e!3066884))

(declare-fun c!833935 () Bool)

(assert (=> d!1576786 (= c!833935 (is-EmptyExpr!13308 (regex!8233 rule!164)))))

(declare-fun lt!2012916 () Bool)

(declare-fun e!3066890 () Bool)

(assert (=> d!1576786 (= lt!2012916 e!3066890)))

(declare-fun c!833933 () Bool)

(assert (=> d!1576786 (= c!833933 (isEmpty!30418 (list!17815 (charsOf!5389 (_1!33701 (get!19556 lt!2012757))))))))

(assert (=> d!1576786 (validRegex!5901 (regex!8233 rule!164))))

(assert (=> d!1576786 (= (matchR!6575 (regex!8233 rule!164) (list!17815 (charsOf!5389 (_1!33701 (get!19556 lt!2012757))))) lt!2012916)))

(declare-fun b!4906303 () Bool)

(declare-fun res!2095758 () Bool)

(declare-fun e!3066885 () Bool)

(assert (=> b!4906303 (=> (not res!2095758) (not e!3066885))))

(assert (=> b!4906303 (= res!2095758 (not call!340492))))

(declare-fun b!4906304 () Bool)

(assert (=> b!4906304 (= e!3066889 (not (= (head!10475 (list!17815 (charsOf!5389 (_1!33701 (get!19556 lt!2012757))))) (c!833850 (regex!8233 rule!164)))))))

(declare-fun b!4906305 () Bool)

(declare-fun res!2095755 () Bool)

(declare-fun e!3066888 () Bool)

(assert (=> b!4906305 (=> res!2095755 e!3066888)))

(assert (=> b!4906305 (= res!2095755 (not (is-ElementMatch!13308 (regex!8233 rule!164))))))

(declare-fun e!3066887 () Bool)

(assert (=> b!4906305 (= e!3066887 e!3066888)))

(declare-fun b!4906306 () Bool)

(assert (=> b!4906306 (= e!3066884 (= lt!2012916 call!340492))))

(declare-fun b!4906307 () Bool)

(assert (=> b!4906307 (= e!3066884 e!3066887)))

(declare-fun c!833934 () Bool)

(assert (=> b!4906307 (= c!833934 (is-EmptyLang!13308 (regex!8233 rule!164)))))

(declare-fun b!4906308 () Bool)

(assert (=> b!4906308 (= e!3066887 (not lt!2012916))))

(declare-fun b!4906309 () Bool)

(declare-fun res!2095760 () Bool)

(assert (=> b!4906309 (=> res!2095760 e!3066888)))

(assert (=> b!4906309 (= res!2095760 e!3066885)))

(declare-fun res!2095759 () Bool)

(assert (=> b!4906309 (=> (not res!2095759) (not e!3066885))))

(assert (=> b!4906309 (= res!2095759 lt!2012916)))

(declare-fun b!4906310 () Bool)

(assert (=> b!4906310 (= e!3066888 e!3066886)))

(declare-fun res!2095756 () Bool)

(assert (=> b!4906310 (=> (not res!2095756) (not e!3066886))))

(assert (=> b!4906310 (= res!2095756 (not lt!2012916))))

(declare-fun b!4906311 () Bool)

(declare-fun res!2095753 () Bool)

(assert (=> b!4906311 (=> res!2095753 e!3066889)))

(assert (=> b!4906311 (= res!2095753 (not (isEmpty!30418 (tail!9622 (list!17815 (charsOf!5389 (_1!33701 (get!19556 lt!2012757))))))))))

(declare-fun b!4906312 () Bool)

(declare-fun res!2095757 () Bool)

(assert (=> b!4906312 (=> (not res!2095757) (not e!3066885))))

(assert (=> b!4906312 (= res!2095757 (isEmpty!30418 (tail!9622 (list!17815 (charsOf!5389 (_1!33701 (get!19556 lt!2012757)))))))))

(declare-fun b!4906313 () Bool)

(assert (=> b!4906313 (= e!3066890 (nullable!4574 (regex!8233 rule!164)))))

(declare-fun b!4906314 () Bool)

(assert (=> b!4906314 (= e!3066885 (= (head!10475 (list!17815 (charsOf!5389 (_1!33701 (get!19556 lt!2012757))))) (c!833850 (regex!8233 rule!164))))))

(declare-fun bm!340487 () Bool)

(assert (=> bm!340487 (= call!340492 (isEmpty!30418 (list!17815 (charsOf!5389 (_1!33701 (get!19556 lt!2012757))))))))

(declare-fun b!4906315 () Bool)

(assert (=> b!4906315 (= e!3066890 (matchR!6575 (derivativeStep!3894 (regex!8233 rule!164) (head!10475 (list!17815 (charsOf!5389 (_1!33701 (get!19556 lt!2012757)))))) (tail!9622 (list!17815 (charsOf!5389 (_1!33701 (get!19556 lt!2012757)))))))))

(assert (= (and d!1576786 c!833933) b!4906313))

(assert (= (and d!1576786 (not c!833933)) b!4906315))

(assert (= (and d!1576786 c!833935) b!4906306))

(assert (= (and d!1576786 (not c!833935)) b!4906307))

(assert (= (and b!4906307 c!833934) b!4906308))

(assert (= (and b!4906307 (not c!833934)) b!4906305))

(assert (= (and b!4906305 (not res!2095755)) b!4906309))

(assert (= (and b!4906309 res!2095759) b!4906303))

(assert (= (and b!4906303 res!2095758) b!4906312))

(assert (= (and b!4906312 res!2095757) b!4906314))

(assert (= (and b!4906309 (not res!2095760)) b!4906310))

(assert (= (and b!4906310 res!2095756) b!4906302))

(assert (= (and b!4906302 (not res!2095754)) b!4906311))

(assert (= (and b!4906311 (not res!2095753)) b!4906304))

(assert (= (or b!4906306 b!4906302 b!4906303) bm!340487))

(assert (=> d!1576786 m!5915462))

(declare-fun m!5915738 () Bool)

(assert (=> d!1576786 m!5915738))

(assert (=> d!1576786 m!5915336))

(assert (=> b!4906311 m!5915462))

(declare-fun m!5915740 () Bool)

(assert (=> b!4906311 m!5915740))

(assert (=> b!4906311 m!5915740))

(declare-fun m!5915742 () Bool)

(assert (=> b!4906311 m!5915742))

(assert (=> b!4906312 m!5915462))

(assert (=> b!4906312 m!5915740))

(assert (=> b!4906312 m!5915740))

(assert (=> b!4906312 m!5915742))

(assert (=> bm!340487 m!5915462))

(assert (=> bm!340487 m!5915738))

(assert (=> b!4906314 m!5915462))

(declare-fun m!5915744 () Bool)

(assert (=> b!4906314 m!5915744))

(assert (=> b!4906315 m!5915462))

(assert (=> b!4906315 m!5915744))

(assert (=> b!4906315 m!5915744))

(declare-fun m!5915746 () Bool)

(assert (=> b!4906315 m!5915746))

(assert (=> b!4906315 m!5915462))

(assert (=> b!4906315 m!5915740))

(assert (=> b!4906315 m!5915746))

(assert (=> b!4906315 m!5915740))

(declare-fun m!5915748 () Bool)

(assert (=> b!4906315 m!5915748))

(assert (=> b!4906313 m!5915386))

(assert (=> b!4906304 m!5915462))

(assert (=> b!4906304 m!5915744))

(assert (=> b!4906078 d!1576786))

(declare-fun d!1576788 () Bool)

(assert (=> d!1576788 (= (list!17815 (charsOf!5389 (_1!33701 (get!19556 lt!2012757)))) (list!17817 (c!833851 (charsOf!5389 (_1!33701 (get!19556 lt!2012757))))))))

(declare-fun bs!1177116 () Bool)

(assert (= bs!1177116 d!1576788))

(declare-fun m!5915750 () Bool)

(assert (=> bs!1177116 m!5915750))

(assert (=> b!4906078 d!1576788))

(declare-fun d!1576790 () Bool)

(declare-fun lt!2012919 () BalanceConc!29032)

(assert (=> d!1576790 (= (list!17815 lt!2012919) (originalCharacters!8528 (_1!33701 (get!19556 lt!2012757))))))

(assert (=> d!1576790 (= lt!2012919 (dynLambda!22831 (toChars!11015 (transformation!8233 (rule!11433 (_1!33701 (get!19556 lt!2012757))))) (value!263774 (_1!33701 (get!19556 lt!2012757)))))))

(assert (=> d!1576790 (= (charsOf!5389 (_1!33701 (get!19556 lt!2012757))) lt!2012919)))

(declare-fun b_lambda!195433 () Bool)

(assert (=> (not b_lambda!195433) (not d!1576790)))

(declare-fun t!366858 () Bool)

(declare-fun tb!259927 () Bool)

(assert (=> (and b!4905870 (= (toChars!11015 (transformation!8233 rule!164)) (toChars!11015 (transformation!8233 (rule!11433 (_1!33701 (get!19556 lt!2012757)))))) t!366858) tb!259927))

(declare-fun b!4906316 () Bool)

(declare-fun e!3066891 () Bool)

(declare-fun tp!1380112 () Bool)

(assert (=> b!4906316 (= e!3066891 (and (inv!73006 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 (rule!11433 (_1!33701 (get!19556 lt!2012757))))) (value!263774 (_1!33701 (get!19556 lt!2012757)))))) tp!1380112))))

(declare-fun result!323694 () Bool)

(assert (=> tb!259927 (= result!323694 (and (inv!73005 (dynLambda!22831 (toChars!11015 (transformation!8233 (rule!11433 (_1!33701 (get!19556 lt!2012757))))) (value!263774 (_1!33701 (get!19556 lt!2012757))))) e!3066891))))

(assert (= tb!259927 b!4906316))

(declare-fun m!5915752 () Bool)

(assert (=> b!4906316 m!5915752))

(declare-fun m!5915754 () Bool)

(assert (=> tb!259927 m!5915754))

(assert (=> d!1576790 t!366858))

(declare-fun b_and!346403 () Bool)

(assert (= b_and!346389 (and (=> t!366858 result!323694) b_and!346403)))

(declare-fun m!5915756 () Bool)

(assert (=> d!1576790 m!5915756))

(declare-fun m!5915758 () Bool)

(assert (=> d!1576790 m!5915758))

(assert (=> b!4906078 d!1576790))

(declare-fun d!1576792 () Bool)

(assert (=> d!1576792 (= (get!19556 lt!2012757) (v!50064 lt!2012757))))

(assert (=> b!4906078 d!1576792))

(declare-fun d!1576794 () Bool)

(assert (=> d!1576794 (= (isEmpty!30422 (Some!14103 (tuple2!60801 (Token!14995 (apply!13577 (transformation!8233 rule!164) (_1!33702 lt!2012608)) rule!164 (size!37276 (_1!33702 lt!2012608)) lt!2012600) (_2!33702 lt!2012608)))) (not (is-Some!14103 (Some!14103 (tuple2!60801 (Token!14995 (apply!13577 (transformation!8233 rule!164) (_1!33702 lt!2012608)) rule!164 (size!37276 (_1!33702 lt!2012608)) lt!2012600) (_2!33702 lt!2012608))))))))

(assert (=> d!1576704 d!1576794))

(declare-fun d!1576796 () Bool)

(assert (=> d!1576796 (= (isEmpty!30418 (list!17815 (_1!33702 lt!2012608))) (is-Nil!56541 (list!17815 (_1!33702 lt!2012608))))))

(assert (=> d!1576712 d!1576796))

(assert (=> d!1576712 d!1576700))

(declare-fun d!1576798 () Bool)

(declare-fun lt!2012922 () Bool)

(assert (=> d!1576798 (= lt!2012922 (isEmpty!30418 (list!17817 (c!833851 (_1!33702 lt!2012608)))))))

(assert (=> d!1576798 (= lt!2012922 (= (size!37281 (c!833851 (_1!33702 lt!2012608))) 0))))

(assert (=> d!1576798 (= (isEmpty!30423 (c!833851 (_1!33702 lt!2012608))) lt!2012922)))

(declare-fun bs!1177117 () Bool)

(assert (= bs!1177117 d!1576798))

(assert (=> bs!1177117 m!5915444))

(assert (=> bs!1177117 m!5915444))

(declare-fun m!5915760 () Bool)

(assert (=> bs!1177117 m!5915760))

(assert (=> bs!1177117 m!5915448))

(assert (=> d!1576712 d!1576798))

(declare-fun b!4906327 () Bool)

(declare-fun e!3066897 () List!56665)

(assert (=> b!4906327 (= e!3066897 (list!17819 (xs!18117 (c!833851 lt!2012605))))))

(declare-fun b!4906328 () Bool)

(assert (=> b!4906328 (= e!3066897 (++!12262 (list!17817 (left!41162 (c!833851 lt!2012605))) (list!17817 (right!41492 (c!833851 lt!2012605)))))))

(declare-fun b!4906326 () Bool)

(declare-fun e!3066896 () List!56665)

(assert (=> b!4906326 (= e!3066896 e!3066897)))

(declare-fun c!833941 () Bool)

(assert (=> b!4906326 (= c!833941 (is-Leaf!24635 (c!833851 lt!2012605)))))

(declare-fun b!4906325 () Bool)

(assert (=> b!4906325 (= e!3066896 Nil!56541)))

(declare-fun d!1576800 () Bool)

(declare-fun c!833940 () Bool)

(assert (=> d!1576800 (= c!833940 (is-Empty!14801 (c!833851 lt!2012605)))))

(assert (=> d!1576800 (= (list!17817 (c!833851 lt!2012605)) e!3066896)))

(assert (= (and d!1576800 c!833940) b!4906325))

(assert (= (and d!1576800 (not c!833940)) b!4906326))

(assert (= (and b!4906326 c!833941) b!4906327))

(assert (= (and b!4906326 (not c!833941)) b!4906328))

(declare-fun m!5915762 () Bool)

(assert (=> b!4906327 m!5915762))

(declare-fun m!5915764 () Bool)

(assert (=> b!4906328 m!5915764))

(declare-fun m!5915766 () Bool)

(assert (=> b!4906328 m!5915766))

(assert (=> b!4906328 m!5915764))

(assert (=> b!4906328 m!5915766))

(declare-fun m!5915768 () Bool)

(assert (=> b!4906328 m!5915768))

(assert (=> d!1576716 d!1576800))

(assert (=> b!4906082 d!1576652))

(assert (=> b!4906082 d!1576654))

(declare-fun d!1576802 () Bool)

(assert (=> d!1576802 (= (apply!13577 (transformation!8233 rule!164) (seqFromList!5975 (_1!33704 lt!2012754))) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (seqFromList!5975 (_1!33704 lt!2012754))))))

(declare-fun b_lambda!195435 () Bool)

(assert (=> (not b_lambda!195435) (not d!1576802)))

(declare-fun t!366862 () Bool)

(declare-fun tb!259929 () Bool)

(assert (=> (and b!4905870 (= (toValue!11156 (transformation!8233 rule!164)) (toValue!11156 (transformation!8233 rule!164))) t!366862) tb!259929))

(declare-fun result!323696 () Bool)

(assert (=> tb!259929 (= result!323696 (inv!21 (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (seqFromList!5975 (_1!33704 lt!2012754)))))))

(declare-fun m!5915770 () Bool)

(assert (=> tb!259929 m!5915770))

(assert (=> d!1576802 t!366862))

(declare-fun b_and!346405 () Bool)

(assert (= b_and!346391 (and (=> t!366862 result!323696) b_and!346405)))

(assert (=> d!1576802 m!5915466))

(declare-fun m!5915772 () Bool)

(assert (=> d!1576802 m!5915772))

(assert (=> b!4906082 d!1576802))

(declare-fun d!1576804 () Bool)

(assert (=> d!1576804 (= (seqFromList!5975 (_1!33704 lt!2012754)) (fromListB!2704 (_1!33704 lt!2012754)))))

(declare-fun bs!1177118 () Bool)

(assert (= bs!1177118 d!1576804))

(declare-fun m!5915774 () Bool)

(assert (=> bs!1177118 m!5915774))

(assert (=> b!4906082 d!1576804))

(assert (=> b!4906082 d!1576658))

(declare-fun bs!1177119 () Bool)

(declare-fun d!1576806 () Bool)

(assert (= bs!1177119 (and d!1576806 b!4905867)))

(declare-fun lambda!244507 () Int)

(assert (=> bs!1177119 (= lambda!244507 lambda!244491)))

(declare-fun bs!1177120 () Bool)

(assert (= bs!1177120 (and d!1576806 d!1576686)))

(assert (=> bs!1177120 (= lambda!244507 lambda!244501)))

(declare-fun b!4906333 () Bool)

(declare-fun e!3066901 () Bool)

(assert (=> b!4906333 (= e!3066901 true)))

(assert (=> d!1576806 e!3066901))

(assert (= d!1576806 b!4906333))

(assert (=> b!4906333 (< (dynLambda!22823 order!25755 (toValue!11156 (transformation!8233 rule!164))) (dynLambda!22824 order!25757 lambda!244507))))

(assert (=> b!4906333 (< (dynLambda!22825 order!25759 (toChars!11015 (transformation!8233 rule!164))) (dynLambda!22824 order!25757 lambda!244507))))

(assert (=> d!1576806 (= (list!17815 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (seqFromList!5975 (_1!33704 lt!2012754))))) (list!17815 (seqFromList!5975 (_1!33704 lt!2012754))))))

(declare-fun lt!2012925 () Unit!146712)

(assert (=> d!1576806 (= lt!2012925 (ForallOf!1170 lambda!244507 (seqFromList!5975 (_1!33704 lt!2012754))))))

(assert (=> d!1576806 (= (lemmaSemiInverse!2577 (transformation!8233 rule!164) (seqFromList!5975 (_1!33704 lt!2012754))) lt!2012925)))

(declare-fun b_lambda!195437 () Bool)

(assert (=> (not b_lambda!195437) (not d!1576806)))

(declare-fun t!366864 () Bool)

(declare-fun tb!259931 () Bool)

(assert (=> (and b!4905870 (= (toChars!11015 (transformation!8233 rule!164)) (toChars!11015 (transformation!8233 rule!164))) t!366864) tb!259931))

(declare-fun b!4906334 () Bool)

(declare-fun e!3066902 () Bool)

(declare-fun tp!1380113 () Bool)

(assert (=> b!4906334 (= e!3066902 (and (inv!73006 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (seqFromList!5975 (_1!33704 lt!2012754)))))) tp!1380113))))

(declare-fun result!323698 () Bool)

(assert (=> tb!259931 (= result!323698 (and (inv!73005 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (seqFromList!5975 (_1!33704 lt!2012754))))) e!3066902))))

(assert (= tb!259931 b!4906334))

(declare-fun m!5915776 () Bool)

(assert (=> b!4906334 m!5915776))

(declare-fun m!5915778 () Bool)

(assert (=> tb!259931 m!5915778))

(assert (=> d!1576806 t!366864))

(declare-fun b_and!346407 () Bool)

(assert (= b_and!346403 (and (=> t!366864 result!323698) b_and!346407)))

(declare-fun b_lambda!195439 () Bool)

(assert (=> (not b_lambda!195439) (not d!1576806)))

(assert (=> d!1576806 t!366862))

(declare-fun b_and!346409 () Bool)

(assert (= b_and!346405 (and (=> t!366862 result!323696) b_and!346409)))

(assert (=> d!1576806 m!5915466))

(declare-fun m!5915780 () Bool)

(assert (=> d!1576806 m!5915780))

(assert (=> d!1576806 m!5915466))

(assert (=> d!1576806 m!5915772))

(declare-fun m!5915782 () Bool)

(assert (=> d!1576806 m!5915782))

(declare-fun m!5915784 () Bool)

(assert (=> d!1576806 m!5915784))

(assert (=> d!1576806 m!5915466))

(declare-fun m!5915786 () Bool)

(assert (=> d!1576806 m!5915786))

(assert (=> d!1576806 m!5915772))

(assert (=> d!1576806 m!5915782))

(assert (=> b!4906082 d!1576806))

(declare-fun d!1576808 () Bool)

(assert (=> d!1576808 (= (isEmpty!30418 (_1!33704 (findLongestMatchInner!1796 (regex!8233 rule!164) Nil!56541 (size!37277 Nil!56541) lt!2012604 lt!2012604 (size!37277 lt!2012604)))) (is-Nil!56541 (_1!33704 (findLongestMatchInner!1796 (regex!8233 rule!164) Nil!56541 (size!37277 Nil!56541) lt!2012604 lt!2012604 (size!37277 lt!2012604)))))))

(assert (=> b!4906082 d!1576808))

(declare-fun d!1576810 () Bool)

(declare-fun lt!2012926 () Int)

(assert (=> d!1576810 (= lt!2012926 (size!37277 (list!17815 (seqFromList!5975 (_1!33704 lt!2012754)))))))

(assert (=> d!1576810 (= lt!2012926 (size!37281 (c!833851 (seqFromList!5975 (_1!33704 lt!2012754)))))))

(assert (=> d!1576810 (= (size!37276 (seqFromList!5975 (_1!33704 lt!2012754))) lt!2012926)))

(declare-fun bs!1177121 () Bool)

(assert (= bs!1177121 d!1576810))

(assert (=> bs!1177121 m!5915466))

(assert (=> bs!1177121 m!5915786))

(assert (=> bs!1177121 m!5915786))

(declare-fun m!5915788 () Bool)

(assert (=> bs!1177121 m!5915788))

(declare-fun m!5915790 () Bool)

(assert (=> bs!1177121 m!5915790))

(assert (=> b!4906082 d!1576810))

(assert (=> b!4906082 d!1576684))

(declare-fun d!1576812 () Bool)

(declare-fun res!2095767 () Bool)

(declare-fun e!3066905 () Bool)

(assert (=> d!1576812 (=> (not res!2095767) (not e!3066905))))

(assert (=> d!1576812 (= res!2095767 (= (csize!29832 (c!833851 input!1509)) (+ (size!37281 (left!41162 (c!833851 input!1509))) (size!37281 (right!41492 (c!833851 input!1509))))))))

(assert (=> d!1576812 (= (inv!73011 (c!833851 input!1509)) e!3066905)))

(declare-fun b!4906341 () Bool)

(declare-fun res!2095768 () Bool)

(assert (=> b!4906341 (=> (not res!2095768) (not e!3066905))))

(assert (=> b!4906341 (= res!2095768 (and (not (= (left!41162 (c!833851 input!1509)) Empty!14801)) (not (= (right!41492 (c!833851 input!1509)) Empty!14801))))))

(declare-fun b!4906342 () Bool)

(declare-fun res!2095769 () Bool)

(assert (=> b!4906342 (=> (not res!2095769) (not e!3066905))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1968 (Conc!14801) Int)

(assert (=> b!4906342 (= res!2095769 (= (cheight!15012 (c!833851 input!1509)) (+ (max!0 (height!1968 (left!41162 (c!833851 input!1509))) (height!1968 (right!41492 (c!833851 input!1509)))) 1)))))

(declare-fun b!4906343 () Bool)

(assert (=> b!4906343 (= e!3066905 (<= 0 (cheight!15012 (c!833851 input!1509))))))

(assert (= (and d!1576812 res!2095767) b!4906341))

(assert (= (and b!4906341 res!2095768) b!4906342))

(assert (= (and b!4906342 res!2095769) b!4906343))

(declare-fun m!5915792 () Bool)

(assert (=> d!1576812 m!5915792))

(declare-fun m!5915794 () Bool)

(assert (=> d!1576812 m!5915794))

(declare-fun m!5915796 () Bool)

(assert (=> b!4906342 m!5915796))

(declare-fun m!5915798 () Bool)

(assert (=> b!4906342 m!5915798))

(assert (=> b!4906342 m!5915796))

(assert (=> b!4906342 m!5915798))

(declare-fun m!5915800 () Bool)

(assert (=> b!4906342 m!5915800))

(assert (=> b!4905929 d!1576812))

(declare-fun d!1576814 () Bool)

(assert (=> d!1576814 (= (isEmpty!30418 (tail!9622 (_1!33704 lt!2012602))) (is-Nil!56541 (tail!9622 (_1!33704 lt!2012602))))))

(assert (=> b!4906121 d!1576814))

(declare-fun d!1576816 () Bool)

(assert (=> d!1576816 (= (tail!9622 (_1!33704 lt!2012602)) (t!366837 (_1!33704 lt!2012602)))))

(assert (=> b!4906121 d!1576816))

(assert (=> b!4906080 d!1576792))

(declare-fun d!1576818 () Bool)

(assert (=> d!1576818 (= (inv!73005 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608)))) (isBalanced!4033 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608))))))))

(declare-fun bs!1177122 () Bool)

(assert (= bs!1177122 d!1576818))

(declare-fun m!5915802 () Bool)

(assert (=> bs!1177122 m!5915802))

(assert (=> tb!259913 d!1576818))

(declare-fun d!1576820 () Bool)

(assert (=> d!1576820 (dynLambda!22829 lambda!244491 (_1!33702 lt!2012608))))

(assert (=> d!1576820 true))

(declare-fun _$1!11221 () Unit!146712)

(assert (=> d!1576820 (= (choose!35851 lambda!244491 (_1!33702 lt!2012608)) _$1!11221)))

(declare-fun b_lambda!195441 () Bool)

(assert (=> (not b_lambda!195441) (not d!1576820)))

(declare-fun bs!1177123 () Bool)

(assert (= bs!1177123 d!1576820))

(assert (=> bs!1177123 m!5915484))

(assert (=> d!1576708 d!1576820))

(assert (=> d!1576708 d!1576690))

(assert (=> d!1576644 d!1576686))

(declare-fun d!1576822 () Bool)

(declare-fun e!3066908 () Bool)

(assert (=> d!1576822 e!3066908))

(declare-fun res!2095772 () Bool)

(assert (=> d!1576822 (=> (not res!2095772) (not e!3066908))))

(declare-fun lt!2012929 () BalanceConc!29032)

(assert (=> d!1576822 (= res!2095772 (= (list!17815 lt!2012929) lt!2012600))))

(declare-fun fromList!941 (List!56665) Conc!14801)

(assert (=> d!1576822 (= lt!2012929 (BalanceConc!29033 (fromList!941 lt!2012600)))))

(assert (=> d!1576822 (= (fromListB!2704 lt!2012600) lt!2012929)))

(declare-fun b!4906346 () Bool)

(assert (=> b!4906346 (= e!3066908 (isBalanced!4033 (fromList!941 lt!2012600)))))

(assert (= (and d!1576822 res!2095772) b!4906346))

(declare-fun m!5915804 () Bool)

(assert (=> d!1576822 m!5915804))

(declare-fun m!5915806 () Bool)

(assert (=> d!1576822 m!5915806))

(assert (=> b!4906346 m!5915806))

(assert (=> b!4906346 m!5915806))

(declare-fun m!5915808 () Bool)

(assert (=> b!4906346 m!5915808))

(assert (=> d!1576698 d!1576822))

(assert (=> b!4906077 d!1576792))

(declare-fun d!1576824 () Bool)

(assert (=> d!1576824 (= (apply!13577 (transformation!8233 (rule!11433 (_1!33701 (get!19556 lt!2012757)))) (seqFromList!5975 (originalCharacters!8528 (_1!33701 (get!19556 lt!2012757))))) (dynLambda!22830 (toValue!11156 (transformation!8233 (rule!11433 (_1!33701 (get!19556 lt!2012757))))) (seqFromList!5975 (originalCharacters!8528 (_1!33701 (get!19556 lt!2012757))))))))

(declare-fun b_lambda!195443 () Bool)

(assert (=> (not b_lambda!195443) (not d!1576824)))

(declare-fun t!366866 () Bool)

(declare-fun tb!259933 () Bool)

(assert (=> (and b!4905870 (= (toValue!11156 (transformation!8233 rule!164)) (toValue!11156 (transformation!8233 (rule!11433 (_1!33701 (get!19556 lt!2012757)))))) t!366866) tb!259933))

(declare-fun result!323700 () Bool)

(assert (=> tb!259933 (= result!323700 (inv!21 (dynLambda!22830 (toValue!11156 (transformation!8233 (rule!11433 (_1!33701 (get!19556 lt!2012757))))) (seqFromList!5975 (originalCharacters!8528 (_1!33701 (get!19556 lt!2012757)))))))))

(declare-fun m!5915810 () Bool)

(assert (=> tb!259933 m!5915810))

(assert (=> d!1576824 t!366866))

(declare-fun b_and!346411 () Bool)

(assert (= b_and!346409 (and (=> t!366866 result!323700) b_and!346411)))

(assert (=> d!1576824 m!5915478))

(declare-fun m!5915812 () Bool)

(assert (=> d!1576824 m!5915812))

(assert (=> b!4906077 d!1576824))

(declare-fun d!1576826 () Bool)

(assert (=> d!1576826 (= (seqFromList!5975 (originalCharacters!8528 (_1!33701 (get!19556 lt!2012757)))) (fromListB!2704 (originalCharacters!8528 (_1!33701 (get!19556 lt!2012757)))))))

(declare-fun bs!1177124 () Bool)

(assert (= bs!1177124 d!1576826))

(declare-fun m!5915814 () Bool)

(assert (=> bs!1177124 m!5915814))

(assert (=> b!4906077 d!1576826))

(declare-fun b!4906365 () Bool)

(declare-fun res!2095786 () Bool)

(declare-fun e!3066930 () Bool)

(assert (=> b!4906365 (=> (not res!2095786) (not e!3066930))))

(declare-fun call!340500 () Bool)

(assert (=> b!4906365 (= res!2095786 call!340500)))

(declare-fun e!3066926 () Bool)

(assert (=> b!4906365 (= e!3066926 e!3066930)))

(declare-fun d!1576828 () Bool)

(declare-fun res!2095785 () Bool)

(declare-fun e!3066924 () Bool)

(assert (=> d!1576828 (=> res!2095785 e!3066924)))

(assert (=> d!1576828 (= res!2095785 (is-ElementMatch!13308 (regex!8233 rule!164)))))

(assert (=> d!1576828 (= (validRegex!5901 (regex!8233 rule!164)) e!3066924)))

(declare-fun bm!340494 () Bool)

(declare-fun call!340499 () Bool)

(declare-fun c!833948 () Bool)

(assert (=> bm!340494 (= call!340499 (validRegex!5901 (ite c!833948 (regTwo!27129 (regex!8233 rule!164)) (regOne!27128 (regex!8233 rule!164)))))))

(declare-fun b!4906366 () Bool)

(declare-fun e!3066927 () Bool)

(declare-fun e!3066929 () Bool)

(assert (=> b!4906366 (= e!3066927 e!3066929)))

(declare-fun res!2095783 () Bool)

(assert (=> b!4906366 (= res!2095783 (not (nullable!4574 (reg!13637 (regex!8233 rule!164)))))))

(assert (=> b!4906366 (=> (not res!2095783) (not e!3066929))))

(declare-fun b!4906367 () Bool)

(declare-fun call!340501 () Bool)

(assert (=> b!4906367 (= e!3066929 call!340501)))

(declare-fun b!4906368 () Bool)

(declare-fun res!2095787 () Bool)

(declare-fun e!3066925 () Bool)

(assert (=> b!4906368 (=> res!2095787 e!3066925)))

(assert (=> b!4906368 (= res!2095787 (not (is-Concat!21851 (regex!8233 rule!164))))))

(assert (=> b!4906368 (= e!3066926 e!3066925)))

(declare-fun bm!340495 () Bool)

(assert (=> bm!340495 (= call!340500 call!340501)))

(declare-fun b!4906369 () Bool)

(assert (=> b!4906369 (= e!3066927 e!3066926)))

(assert (=> b!4906369 (= c!833948 (is-Union!13308 (regex!8233 rule!164)))))

(declare-fun b!4906370 () Bool)

(assert (=> b!4906370 (= e!3066930 call!340499)))

(declare-fun b!4906371 () Bool)

(declare-fun e!3066928 () Bool)

(assert (=> b!4906371 (= e!3066928 call!340500)))

(declare-fun b!4906372 () Bool)

(assert (=> b!4906372 (= e!3066925 e!3066928)))

(declare-fun res!2095784 () Bool)

(assert (=> b!4906372 (=> (not res!2095784) (not e!3066928))))

(assert (=> b!4906372 (= res!2095784 call!340499)))

(declare-fun b!4906373 () Bool)

(assert (=> b!4906373 (= e!3066924 e!3066927)))

(declare-fun c!833949 () Bool)

(assert (=> b!4906373 (= c!833949 (is-Star!13308 (regex!8233 rule!164)))))

(declare-fun bm!340496 () Bool)

(assert (=> bm!340496 (= call!340501 (validRegex!5901 (ite c!833949 (reg!13637 (regex!8233 rule!164)) (ite c!833948 (regOne!27129 (regex!8233 rule!164)) (regTwo!27128 (regex!8233 rule!164))))))))

(assert (= (and d!1576828 (not res!2095785)) b!4906373))

(assert (= (and b!4906373 c!833949) b!4906366))

(assert (= (and b!4906373 (not c!833949)) b!4906369))

(assert (= (and b!4906366 res!2095783) b!4906367))

(assert (= (and b!4906369 c!833948) b!4906365))

(assert (= (and b!4906369 (not c!833948)) b!4906368))

(assert (= (and b!4906365 res!2095786) b!4906370))

(assert (= (and b!4906368 (not res!2095787)) b!4906372))

(assert (= (and b!4906372 res!2095784) b!4906371))

(assert (= (or b!4906370 b!4906372) bm!340494))

(assert (= (or b!4906365 b!4906371) bm!340495))

(assert (= (or b!4906367 bm!340495) bm!340496))

(declare-fun m!5915816 () Bool)

(assert (=> bm!340494 m!5915816))

(declare-fun m!5915818 () Bool)

(assert (=> b!4906366 m!5915818))

(declare-fun m!5915820 () Bool)

(assert (=> bm!340496 m!5915820))

(assert (=> d!1576688 d!1576828))

(declare-fun d!1576830 () Bool)

(declare-fun c!833950 () Bool)

(assert (=> d!1576830 (= c!833950 (is-Node!14801 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608))))))))

(declare-fun e!3066931 () Bool)

(assert (=> d!1576830 (= (inv!73006 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608))))) e!3066931)))

(declare-fun b!4906374 () Bool)

(assert (=> b!4906374 (= e!3066931 (inv!73011 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608))))))))

(declare-fun b!4906375 () Bool)

(declare-fun e!3066932 () Bool)

(assert (=> b!4906375 (= e!3066931 e!3066932)))

(declare-fun res!2095788 () Bool)

(assert (=> b!4906375 (= res!2095788 (not (is-Leaf!24635 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608)))))))))

(assert (=> b!4906375 (=> res!2095788 e!3066932)))

(declare-fun b!4906376 () Bool)

(assert (=> b!4906376 (= e!3066932 (inv!73012 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608))))))))

(assert (= (and d!1576830 c!833950) b!4906374))

(assert (= (and d!1576830 (not c!833950)) b!4906375))

(assert (= (and b!4906375 (not res!2095788)) b!4906376))

(declare-fun m!5915822 () Bool)

(assert (=> b!4906374 m!5915822))

(declare-fun m!5915824 () Bool)

(assert (=> b!4906376 m!5915824))

(assert (=> b!4906179 d!1576830))

(assert (=> d!1576652 d!1576654))

(assert (=> d!1576652 d!1576828))

(assert (=> d!1576652 d!1576658))

(declare-fun d!1576832 () Bool)

(declare-fun e!3066935 () Bool)

(assert (=> d!1576832 e!3066935))

(declare-fun res!2095791 () Bool)

(assert (=> d!1576832 (=> res!2095791 e!3066935)))

(assert (=> d!1576832 (= res!2095791 (isEmpty!30418 (_1!33704 (findLongestMatchInner!1796 (regex!8233 rule!164) Nil!56541 (size!37277 Nil!56541) lt!2012604 lt!2012604 (size!37277 lt!2012604)))))))

(assert (=> d!1576832 true))

(declare-fun _$92!512 () Unit!146712)

(assert (=> d!1576832 (= (choose!35849 (regex!8233 rule!164) lt!2012604) _$92!512)))

(declare-fun b!4906379 () Bool)

(assert (=> b!4906379 (= e!3066935 (matchR!6575 (regex!8233 rule!164) (_1!33704 (findLongestMatchInner!1796 (regex!8233 rule!164) Nil!56541 (size!37277 Nil!56541) lt!2012604 lt!2012604 (size!37277 lt!2012604)))))))

(assert (= (and d!1576832 (not res!2095791)) b!4906379))

(assert (=> d!1576832 m!5915226))

(assert (=> d!1576832 m!5915230))

(assert (=> d!1576832 m!5915226))

(assert (=> d!1576832 m!5915230))

(assert (=> d!1576832 m!5915232))

(assert (=> d!1576832 m!5915340))

(assert (=> b!4906379 m!5915226))

(assert (=> b!4906379 m!5915230))

(assert (=> b!4906379 m!5915226))

(assert (=> b!4906379 m!5915230))

(assert (=> b!4906379 m!5915232))

(assert (=> b!4906379 m!5915342))

(assert (=> d!1576652 d!1576832))

(assert (=> d!1576652 d!1576684))

(assert (=> d!1576652 d!1576808))

(declare-fun d!1576834 () Bool)

(assert (=> d!1576834 true))

(assert (=> d!1576834 true))

(declare-fun res!2095794 () Bool)

(assert (=> d!1576834 (= (choose!35850 lambda!244491) res!2095794)))

(assert (=> d!1576690 d!1576834))

(declare-fun b!4906392 () Bool)

(declare-fun res!2095807 () Bool)

(declare-fun e!3066941 () Bool)

(assert (=> b!4906392 (=> (not res!2095807) (not e!3066941))))

(assert (=> b!4906392 (= res!2095807 (isBalanced!4033 (right!41492 (c!833851 input!1509))))))

(declare-fun b!4906393 () Bool)

(declare-fun e!3066940 () Bool)

(assert (=> b!4906393 (= e!3066940 e!3066941)))

(declare-fun res!2095812 () Bool)

(assert (=> b!4906393 (=> (not res!2095812) (not e!3066941))))

(assert (=> b!4906393 (= res!2095812 (<= (- 1) (- (height!1968 (left!41162 (c!833851 input!1509))) (height!1968 (right!41492 (c!833851 input!1509))))))))

(declare-fun d!1576836 () Bool)

(declare-fun res!2095808 () Bool)

(assert (=> d!1576836 (=> res!2095808 e!3066940)))

(assert (=> d!1576836 (= res!2095808 (not (is-Node!14801 (c!833851 input!1509))))))

(assert (=> d!1576836 (= (isBalanced!4033 (c!833851 input!1509)) e!3066940)))

(declare-fun b!4906394 () Bool)

(declare-fun res!2095810 () Bool)

(assert (=> b!4906394 (=> (not res!2095810) (not e!3066941))))

(assert (=> b!4906394 (= res!2095810 (isBalanced!4033 (left!41162 (c!833851 input!1509))))))

(declare-fun b!4906395 () Bool)

(declare-fun res!2095809 () Bool)

(assert (=> b!4906395 (=> (not res!2095809) (not e!3066941))))

(assert (=> b!4906395 (= res!2095809 (not (isEmpty!30423 (left!41162 (c!833851 input!1509)))))))

(declare-fun b!4906396 () Bool)

(assert (=> b!4906396 (= e!3066941 (not (isEmpty!30423 (right!41492 (c!833851 input!1509)))))))

(declare-fun b!4906397 () Bool)

(declare-fun res!2095811 () Bool)

(assert (=> b!4906397 (=> (not res!2095811) (not e!3066941))))

(assert (=> b!4906397 (= res!2095811 (<= (- (height!1968 (left!41162 (c!833851 input!1509))) (height!1968 (right!41492 (c!833851 input!1509)))) 1))))

(assert (= (and d!1576836 (not res!2095808)) b!4906393))

(assert (= (and b!4906393 res!2095812) b!4906397))

(assert (= (and b!4906397 res!2095811) b!4906394))

(assert (= (and b!4906394 res!2095810) b!4906392))

(assert (= (and b!4906392 res!2095807) b!4906395))

(assert (= (and b!4906395 res!2095809) b!4906396))

(declare-fun m!5915826 () Bool)

(assert (=> b!4906396 m!5915826))

(declare-fun m!5915828 () Bool)

(assert (=> b!4906394 m!5915828))

(declare-fun m!5915830 () Bool)

(assert (=> b!4906392 m!5915830))

(assert (=> b!4906397 m!5915796))

(assert (=> b!4906397 m!5915798))

(assert (=> b!4906393 m!5915796))

(assert (=> b!4906393 m!5915798))

(declare-fun m!5915832 () Bool)

(assert (=> b!4906395 m!5915832))

(assert (=> d!1576646 d!1576836))

(declare-fun d!1576838 () Bool)

(assert (=> d!1576838 (= (head!10475 (_1!33704 lt!2012602)) (h!62989 (_1!33704 lt!2012602)))))

(assert (=> b!4906114 d!1576838))

(declare-fun d!1576840 () Bool)

(declare-fun lt!2012930 () Int)

(assert (=> d!1576840 (>= lt!2012930 0)))

(declare-fun e!3066942 () Int)

(assert (=> d!1576840 (= lt!2012930 e!3066942)))

(declare-fun c!833951 () Bool)

(assert (=> d!1576840 (= c!833951 (is-Nil!56541 (_2!33701 (get!19556 lt!2012757))))))

(assert (=> d!1576840 (= (size!37277 (_2!33701 (get!19556 lt!2012757))) lt!2012930)))

(declare-fun b!4906398 () Bool)

(assert (=> b!4906398 (= e!3066942 0)))

(declare-fun b!4906399 () Bool)

(assert (=> b!4906399 (= e!3066942 (+ 1 (size!37277 (t!366837 (_2!33701 (get!19556 lt!2012757))))))))

(assert (= (and d!1576840 c!833951) b!4906398))

(assert (= (and d!1576840 (not c!833951)) b!4906399))

(declare-fun m!5915834 () Bool)

(assert (=> b!4906399 m!5915834))

(assert (=> b!4906075 d!1576840))

(assert (=> b!4906075 d!1576792))

(assert (=> b!4906075 d!1576654))

(declare-fun b!4906402 () Bool)

(declare-fun e!3066944 () List!56665)

(assert (=> b!4906402 (= e!3066944 (list!17819 (xs!18117 (c!833851 input!1509))))))

(declare-fun b!4906403 () Bool)

(assert (=> b!4906403 (= e!3066944 (++!12262 (list!17817 (left!41162 (c!833851 input!1509))) (list!17817 (right!41492 (c!833851 input!1509)))))))

(declare-fun b!4906401 () Bool)

(declare-fun e!3066943 () List!56665)

(assert (=> b!4906401 (= e!3066943 e!3066944)))

(declare-fun c!833953 () Bool)

(assert (=> b!4906401 (= c!833953 (is-Leaf!24635 (c!833851 input!1509)))))

(declare-fun b!4906400 () Bool)

(assert (=> b!4906400 (= e!3066943 Nil!56541)))

(declare-fun d!1576842 () Bool)

(declare-fun c!833952 () Bool)

(assert (=> d!1576842 (= c!833952 (is-Empty!14801 (c!833851 input!1509)))))

(assert (=> d!1576842 (= (list!17817 (c!833851 input!1509)) e!3066943)))

(assert (= (and d!1576842 c!833952) b!4906400))

(assert (= (and d!1576842 (not c!833952)) b!4906401))

(assert (= (and b!4906401 c!833953) b!4906402))

(assert (= (and b!4906401 (not c!833953)) b!4906403))

(assert (=> b!4906402 m!5915698))

(declare-fun m!5915836 () Bool)

(assert (=> b!4906403 m!5915836))

(declare-fun m!5915838 () Bool)

(assert (=> b!4906403 m!5915838))

(assert (=> b!4906403 m!5915836))

(assert (=> b!4906403 m!5915838))

(declare-fun m!5915840 () Bool)

(assert (=> b!4906403 m!5915840))

(assert (=> d!1576650 d!1576842))

(declare-fun d!1576844 () Bool)

(assert (=> d!1576844 (= (Forall!1730 lambda!244501) (choose!35850 lambda!244501))))

(declare-fun bs!1177125 () Bool)

(assert (= bs!1177125 d!1576844))

(declare-fun m!5915842 () Bool)

(assert (=> bs!1177125 m!5915842))

(assert (=> d!1576686 d!1576844))

(assert (=> b!4905860 d!1576648))

(assert (=> d!1576682 d!1576686))

(declare-fun b!4906414 () Bool)

(declare-fun e!3066953 () Bool)

(declare-fun inv!15 (TokenValue!8543) Bool)

(assert (=> b!4906414 (= e!3066953 (inv!15 (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608))))))

(declare-fun d!1576846 () Bool)

(declare-fun c!833958 () Bool)

(assert (=> d!1576846 (= c!833958 (is-IntegerValue!25629 (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608))))))

(declare-fun e!3066951 () Bool)

(assert (=> d!1576846 (= (inv!21 (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608))) e!3066951)))

(declare-fun b!4906415 () Bool)

(declare-fun e!3066952 () Bool)

(declare-fun inv!17 (TokenValue!8543) Bool)

(assert (=> b!4906415 (= e!3066952 (inv!17 (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608))))))

(declare-fun b!4906416 () Bool)

(assert (=> b!4906416 (= e!3066951 e!3066952)))

(declare-fun c!833959 () Bool)

(assert (=> b!4906416 (= c!833959 (is-IntegerValue!25630 (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608))))))

(declare-fun b!4906417 () Bool)

(declare-fun res!2095815 () Bool)

(assert (=> b!4906417 (=> res!2095815 e!3066953)))

(assert (=> b!4906417 (= res!2095815 (not (is-IntegerValue!25631 (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608)))))))

(assert (=> b!4906417 (= e!3066952 e!3066953)))

(declare-fun b!4906418 () Bool)

(declare-fun inv!16 (TokenValue!8543) Bool)

(assert (=> b!4906418 (= e!3066951 (inv!16 (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608))))))

(assert (= (and d!1576846 c!833958) b!4906418))

(assert (= (and d!1576846 (not c!833958)) b!4906416))

(assert (= (and b!4906416 c!833959) b!4906415))

(assert (= (and b!4906416 (not c!833959)) b!4906417))

(assert (= (and b!4906417 (not res!2095815)) b!4906414))

(declare-fun m!5915844 () Bool)

(assert (=> b!4906414 m!5915844))

(declare-fun m!5915846 () Bool)

(assert (=> b!4906415 m!5915846))

(declare-fun m!5915848 () Bool)

(assert (=> b!4906418 m!5915848))

(assert (=> tb!259911 d!1576846))

(declare-fun d!1576848 () Bool)

(assert (=> d!1576848 (isPrefix!4915 lt!2012604 lt!2012604)))

(declare-fun lt!2012933 () Unit!146712)

(declare-fun choose!35858 (List!56665 List!56665) Unit!146712)

(assert (=> d!1576848 (= lt!2012933 (choose!35858 lt!2012604 lt!2012604))))

(assert (=> d!1576848 (= (lemmaIsPrefixRefl!3312 lt!2012604 lt!2012604) lt!2012933)))

(declare-fun bs!1177126 () Bool)

(assert (= bs!1177126 d!1576848))

(assert (=> bs!1177126 m!5915376))

(declare-fun m!5915850 () Bool)

(assert (=> bs!1177126 m!5915850))

(assert (=> bm!340458 d!1576848))

(declare-fun d!1576850 () Bool)

(declare-fun c!833960 () Bool)

(assert (=> d!1576850 (= c!833960 (is-Node!14801 (left!41162 (c!833851 input!1509))))))

(declare-fun e!3066954 () Bool)

(assert (=> d!1576850 (= (inv!73006 (left!41162 (c!833851 input!1509))) e!3066954)))

(declare-fun b!4906419 () Bool)

(assert (=> b!4906419 (= e!3066954 (inv!73011 (left!41162 (c!833851 input!1509))))))

(declare-fun b!4906420 () Bool)

(declare-fun e!3066955 () Bool)

(assert (=> b!4906420 (= e!3066954 e!3066955)))

(declare-fun res!2095816 () Bool)

(assert (=> b!4906420 (= res!2095816 (not (is-Leaf!24635 (left!41162 (c!833851 input!1509)))))))

(assert (=> b!4906420 (=> res!2095816 e!3066955)))

(declare-fun b!4906421 () Bool)

(assert (=> b!4906421 (= e!3066955 (inv!73012 (left!41162 (c!833851 input!1509))))))

(assert (= (and d!1576850 c!833960) b!4906419))

(assert (= (and d!1576850 (not c!833960)) b!4906420))

(assert (= (and b!4906420 (not res!2095816)) b!4906421))

(declare-fun m!5915852 () Bool)

(assert (=> b!4906419 m!5915852))

(declare-fun m!5915854 () Bool)

(assert (=> b!4906421 m!5915854))

(assert (=> b!4906172 d!1576850))

(declare-fun d!1576852 () Bool)

(declare-fun c!833961 () Bool)

(assert (=> d!1576852 (= c!833961 (is-Node!14801 (right!41492 (c!833851 input!1509))))))

(declare-fun e!3066956 () Bool)

(assert (=> d!1576852 (= (inv!73006 (right!41492 (c!833851 input!1509))) e!3066956)))

(declare-fun b!4906422 () Bool)

(assert (=> b!4906422 (= e!3066956 (inv!73011 (right!41492 (c!833851 input!1509))))))

(declare-fun b!4906423 () Bool)

(declare-fun e!3066957 () Bool)

(assert (=> b!4906423 (= e!3066956 e!3066957)))

(declare-fun res!2095817 () Bool)

(assert (=> b!4906423 (= res!2095817 (not (is-Leaf!24635 (right!41492 (c!833851 input!1509)))))))

(assert (=> b!4906423 (=> res!2095817 e!3066957)))

(declare-fun b!4906424 () Bool)

(assert (=> b!4906424 (= e!3066957 (inv!73012 (right!41492 (c!833851 input!1509))))))

(assert (= (and d!1576852 c!833961) b!4906422))

(assert (= (and d!1576852 (not c!833961)) b!4906423))

(assert (= (and b!4906423 (not res!2095817)) b!4906424))

(declare-fun m!5915856 () Bool)

(assert (=> b!4906422 m!5915856))

(declare-fun m!5915858 () Bool)

(assert (=> b!4906424 m!5915858))

(assert (=> b!4906172 d!1576852))

(declare-fun d!1576854 () Bool)

(declare-fun c!833962 () Bool)

(assert (=> d!1576854 (= c!833962 (is-Node!14801 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) lt!2012605)))))))

(declare-fun e!3066958 () Bool)

(assert (=> d!1576854 (= (inv!73006 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) lt!2012605)))) e!3066958)))

(declare-fun b!4906425 () Bool)

(assert (=> b!4906425 (= e!3066958 (inv!73011 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) lt!2012605)))))))

(declare-fun b!4906426 () Bool)

(declare-fun e!3066959 () Bool)

(assert (=> b!4906426 (= e!3066958 e!3066959)))

(declare-fun res!2095818 () Bool)

(assert (=> b!4906426 (= res!2095818 (not (is-Leaf!24635 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) lt!2012605))))))))

(assert (=> b!4906426 (=> res!2095818 e!3066959)))

(declare-fun b!4906427 () Bool)

(assert (=> b!4906427 (= e!3066959 (inv!73012 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) lt!2012605)))))))

(assert (= (and d!1576854 c!833962) b!4906425))

(assert (= (and d!1576854 (not c!833962)) b!4906426))

(assert (= (and b!4906426 (not res!2095818)) b!4906427))

(declare-fun m!5915860 () Bool)

(assert (=> b!4906425 m!5915860))

(declare-fun m!5915862 () Bool)

(assert (=> b!4906427 m!5915862))

(assert (=> b!4906180 d!1576854))

(declare-fun d!1576856 () Bool)

(assert (=> d!1576856 (= (tail!9622 lt!2012604) (t!366837 lt!2012604))))

(assert (=> bm!340457 d!1576856))

(assert (=> b!4906124 d!1576838))

(assert (=> bm!340456 d!1576762))

(assert (=> d!1576710 d!1576656))

(assert (=> d!1576710 d!1576828))

(declare-fun d!1576858 () Bool)

(assert (=> d!1576858 (dynLambda!22829 lambda!244491 lt!2012605)))

(assert (=> d!1576858 true))

(declare-fun _$1!11222 () Unit!146712)

(assert (=> d!1576858 (= (choose!35851 lambda!244491 lt!2012605) _$1!11222)))

(declare-fun b_lambda!195445 () Bool)

(assert (=> (not b_lambda!195445) (not d!1576858)))

(declare-fun bs!1177127 () Bool)

(assert (= bs!1177127 d!1576858))

(assert (=> bs!1177127 m!5915432))

(assert (=> d!1576692 d!1576858))

(assert (=> d!1576692 d!1576690))

(declare-fun b!4906437 () Bool)

(declare-fun e!3066964 () List!56665)

(assert (=> b!4906437 (= e!3066964 (Cons!56541 (h!62989 (_1!33704 lt!2012710)) (++!12262 (t!366837 (_1!33704 lt!2012710)) (_2!33704 lt!2012710))))))

(declare-fun b!4906439 () Bool)

(declare-fun e!3066965 () Bool)

(declare-fun lt!2012936 () List!56665)

(assert (=> b!4906439 (= e!3066965 (or (not (= (_2!33704 lt!2012710) Nil!56541)) (= lt!2012936 (_1!33704 lt!2012710))))))

(declare-fun d!1576860 () Bool)

(assert (=> d!1576860 e!3066965))

(declare-fun res!2095823 () Bool)

(assert (=> d!1576860 (=> (not res!2095823) (not e!3066965))))

(declare-fun content!10039 (List!56665) (Set C!26814))

(assert (=> d!1576860 (= res!2095823 (= (content!10039 lt!2012936) (set.union (content!10039 (_1!33704 lt!2012710)) (content!10039 (_2!33704 lt!2012710)))))))

(assert (=> d!1576860 (= lt!2012936 e!3066964)))

(declare-fun c!833965 () Bool)

(assert (=> d!1576860 (= c!833965 (is-Nil!56541 (_1!33704 lt!2012710)))))

(assert (=> d!1576860 (= (++!12262 (_1!33704 lt!2012710) (_2!33704 lt!2012710)) lt!2012936)))

(declare-fun b!4906438 () Bool)

(declare-fun res!2095824 () Bool)

(assert (=> b!4906438 (=> (not res!2095824) (not e!3066965))))

(assert (=> b!4906438 (= res!2095824 (= (size!37277 lt!2012936) (+ (size!37277 (_1!33704 lt!2012710)) (size!37277 (_2!33704 lt!2012710)))))))

(declare-fun b!4906436 () Bool)

(assert (=> b!4906436 (= e!3066964 (_2!33704 lt!2012710))))

(assert (= (and d!1576860 c!833965) b!4906436))

(assert (= (and d!1576860 (not c!833965)) b!4906437))

(assert (= (and d!1576860 res!2095823) b!4906438))

(assert (= (and b!4906438 res!2095824) b!4906439))

(declare-fun m!5915864 () Bool)

(assert (=> b!4906437 m!5915864))

(declare-fun m!5915866 () Bool)

(assert (=> d!1576860 m!5915866))

(declare-fun m!5915868 () Bool)

(assert (=> d!1576860 m!5915868))

(declare-fun m!5915870 () Bool)

(assert (=> d!1576860 m!5915870))

(declare-fun m!5915872 () Bool)

(assert (=> b!4906438 m!5915872))

(assert (=> b!4906438 m!5915372))

(declare-fun m!5915874 () Bool)

(assert (=> b!4906438 m!5915874))

(assert (=> d!1576658 d!1576860))

(declare-fun d!1576862 () Bool)

(declare-fun e!3066974 () Bool)

(assert (=> d!1576862 e!3066974))

(declare-fun res!2095834 () Bool)

(assert (=> d!1576862 (=> res!2095834 e!3066974)))

(declare-fun lt!2012939 () Bool)

(assert (=> d!1576862 (= res!2095834 (not lt!2012939))))

(declare-fun e!3066973 () Bool)

(assert (=> d!1576862 (= lt!2012939 e!3066973)))

(declare-fun res!2095836 () Bool)

(assert (=> d!1576862 (=> res!2095836 e!3066973)))

(assert (=> d!1576862 (= res!2095836 (is-Nil!56541 Nil!56541))))

(assert (=> d!1576862 (= (isPrefix!4915 Nil!56541 (++!12262 Nil!56541 lt!2012604)) lt!2012939)))

(declare-fun b!4906451 () Bool)

(assert (=> b!4906451 (= e!3066974 (>= (size!37277 (++!12262 Nil!56541 lt!2012604)) (size!37277 Nil!56541)))))

(declare-fun b!4906448 () Bool)

(declare-fun e!3066972 () Bool)

(assert (=> b!4906448 (= e!3066973 e!3066972)))

(declare-fun res!2095833 () Bool)

(assert (=> b!4906448 (=> (not res!2095833) (not e!3066972))))

(assert (=> b!4906448 (= res!2095833 (not (is-Nil!56541 (++!12262 Nil!56541 lt!2012604))))))

(declare-fun b!4906449 () Bool)

(declare-fun res!2095835 () Bool)

(assert (=> b!4906449 (=> (not res!2095835) (not e!3066972))))

(assert (=> b!4906449 (= res!2095835 (= (head!10475 Nil!56541) (head!10475 (++!12262 Nil!56541 lt!2012604))))))

(declare-fun b!4906450 () Bool)

(assert (=> b!4906450 (= e!3066972 (isPrefix!4915 (tail!9622 Nil!56541) (tail!9622 (++!12262 Nil!56541 lt!2012604))))))

(assert (= (and d!1576862 (not res!2095836)) b!4906448))

(assert (= (and b!4906448 res!2095833) b!4906449))

(assert (= (and b!4906449 res!2095835) b!4906450))

(assert (= (and d!1576862 (not res!2095834)) b!4906451))

(assert (=> b!4906451 m!5915418))

(declare-fun m!5915876 () Bool)

(assert (=> b!4906451 m!5915876))

(assert (=> b!4906451 m!5915226))

(declare-fun m!5915878 () Bool)

(assert (=> b!4906449 m!5915878))

(assert (=> b!4906449 m!5915418))

(declare-fun m!5915880 () Bool)

(assert (=> b!4906449 m!5915880))

(declare-fun m!5915882 () Bool)

(assert (=> b!4906450 m!5915882))

(assert (=> b!4906450 m!5915418))

(declare-fun m!5915884 () Bool)

(assert (=> b!4906450 m!5915884))

(assert (=> b!4906450 m!5915882))

(assert (=> b!4906450 m!5915884))

(declare-fun m!5915886 () Bool)

(assert (=> b!4906450 m!5915886))

(assert (=> d!1576658 d!1576862))

(assert (=> d!1576658 d!1576828))

(declare-fun d!1576864 () Bool)

(declare-fun lostCauseFct!281 (Regex!13308) Bool)

(assert (=> d!1576864 (= (lostCause!1102 (regex!8233 rule!164)) (lostCauseFct!281 (regex!8233 rule!164)))))

(declare-fun bs!1177128 () Bool)

(assert (= bs!1177128 d!1576864))

(declare-fun m!5915888 () Bool)

(assert (=> bs!1177128 m!5915888))

(assert (=> d!1576658 d!1576864))

(declare-fun d!1576866 () Bool)

(assert (=> d!1576866 (isPrefix!4915 Nil!56541 (++!12262 Nil!56541 lt!2012604))))

(declare-fun lt!2012942 () Unit!146712)

(declare-fun choose!35859 (List!56665 List!56665) Unit!146712)

(assert (=> d!1576866 (= lt!2012942 (choose!35859 Nil!56541 lt!2012604))))

(assert (=> d!1576866 (= (lemmaConcatTwoListThenFirstIsPrefix!3139 Nil!56541 lt!2012604) lt!2012942)))

(declare-fun bs!1177129 () Bool)

(assert (= bs!1177129 d!1576866))

(assert (=> bs!1177129 m!5915418))

(assert (=> bs!1177129 m!5915418))

(assert (=> bs!1177129 m!5915420))

(declare-fun m!5915890 () Bool)

(assert (=> bs!1177129 m!5915890))

(assert (=> d!1576658 d!1576866))

(declare-fun d!1576868 () Bool)

(declare-fun lt!2012945 () List!56665)

(assert (=> d!1576868 (= (++!12262 Nil!56541 lt!2012945) lt!2012604)))

(declare-fun e!3066977 () List!56665)

(assert (=> d!1576868 (= lt!2012945 e!3066977)))

(declare-fun c!833968 () Bool)

(assert (=> d!1576868 (= c!833968 (is-Cons!56541 Nil!56541))))

(assert (=> d!1576868 (>= (size!37277 lt!2012604) (size!37277 Nil!56541))))

(assert (=> d!1576868 (= (getSuffix!2903 lt!2012604 Nil!56541) lt!2012945)))

(declare-fun b!4906456 () Bool)

(assert (=> b!4906456 (= e!3066977 (getSuffix!2903 (tail!9622 lt!2012604) (t!366837 Nil!56541)))))

(declare-fun b!4906457 () Bool)

(assert (=> b!4906457 (= e!3066977 lt!2012604)))

(assert (= (and d!1576868 c!833968) b!4906456))

(assert (= (and d!1576868 (not c!833968)) b!4906457))

(declare-fun m!5915892 () Bool)

(assert (=> d!1576868 m!5915892))

(assert (=> d!1576868 m!5915230))

(assert (=> d!1576868 m!5915226))

(assert (=> b!4906456 m!5915374))

(assert (=> b!4906456 m!5915374))

(declare-fun m!5915894 () Bool)

(assert (=> b!4906456 m!5915894))

(assert (=> d!1576658 d!1576868))

(declare-fun d!1576870 () Bool)

(assert (=> d!1576870 (= lt!2012604 lt!2012727)))

(declare-fun lt!2012948 () Unit!146712)

(declare-fun choose!35860 (List!56665 List!56665 List!56665 List!56665 List!56665) Unit!146712)

(assert (=> d!1576870 (= lt!2012948 (choose!35860 Nil!56541 lt!2012604 Nil!56541 lt!2012727 lt!2012604))))

(assert (=> d!1576870 (isPrefix!4915 Nil!56541 lt!2012604)))

(assert (=> d!1576870 (= (lemmaSamePrefixThenSameSuffix!2319 Nil!56541 lt!2012604 Nil!56541 lt!2012727 lt!2012604) lt!2012948)))

(declare-fun bs!1177130 () Bool)

(assert (= bs!1177130 d!1576870))

(declare-fun m!5915896 () Bool)

(assert (=> bs!1177130 m!5915896))

(declare-fun m!5915898 () Bool)

(assert (=> bs!1177130 m!5915898))

(assert (=> d!1576658 d!1576870))

(declare-fun b!4906459 () Bool)

(declare-fun e!3066978 () List!56665)

(assert (=> b!4906459 (= e!3066978 (Cons!56541 (h!62989 Nil!56541) (++!12262 (t!366837 Nil!56541) lt!2012604)))))

(declare-fun b!4906461 () Bool)

(declare-fun e!3066979 () Bool)

(declare-fun lt!2012949 () List!56665)

(assert (=> b!4906461 (= e!3066979 (or (not (= lt!2012604 Nil!56541)) (= lt!2012949 Nil!56541)))))

(declare-fun d!1576872 () Bool)

(assert (=> d!1576872 e!3066979))

(declare-fun res!2095837 () Bool)

(assert (=> d!1576872 (=> (not res!2095837) (not e!3066979))))

(assert (=> d!1576872 (= res!2095837 (= (content!10039 lt!2012949) (set.union (content!10039 Nil!56541) (content!10039 lt!2012604))))))

(assert (=> d!1576872 (= lt!2012949 e!3066978)))

(declare-fun c!833969 () Bool)

(assert (=> d!1576872 (= c!833969 (is-Nil!56541 Nil!56541))))

(assert (=> d!1576872 (= (++!12262 Nil!56541 lt!2012604) lt!2012949)))

(declare-fun b!4906460 () Bool)

(declare-fun res!2095838 () Bool)

(assert (=> b!4906460 (=> (not res!2095838) (not e!3066979))))

(assert (=> b!4906460 (= res!2095838 (= (size!37277 lt!2012949) (+ (size!37277 Nil!56541) (size!37277 lt!2012604))))))

(declare-fun b!4906458 () Bool)

(assert (=> b!4906458 (= e!3066978 lt!2012604)))

(assert (= (and d!1576872 c!833969) b!4906458))

(assert (= (and d!1576872 (not c!833969)) b!4906459))

(assert (= (and d!1576872 res!2095837) b!4906460))

(assert (= (and b!4906460 res!2095838) b!4906461))

(declare-fun m!5915900 () Bool)

(assert (=> b!4906459 m!5915900))

(declare-fun m!5915902 () Bool)

(assert (=> d!1576872 m!5915902))

(declare-fun m!5915904 () Bool)

(assert (=> d!1576872 m!5915904))

(declare-fun m!5915906 () Bool)

(assert (=> d!1576872 m!5915906))

(declare-fun m!5915908 () Bool)

(assert (=> b!4906460 m!5915908))

(assert (=> b!4906460 m!5915226))

(assert (=> b!4906460 m!5915230))

(assert (=> d!1576658 d!1576872))

(assert (=> b!4906122 d!1576814))

(assert (=> b!4906122 d!1576816))

(assert (=> b!4906083 d!1576792))

(declare-fun d!1576874 () Bool)

(declare-fun lt!2012950 () Int)

(assert (=> d!1576874 (>= lt!2012950 0)))

(declare-fun e!3066980 () Int)

(assert (=> d!1576874 (= lt!2012950 e!3066980)))

(declare-fun c!833970 () Bool)

(assert (=> d!1576874 (= c!833970 (is-Nil!56541 (originalCharacters!8528 (_1!33701 (get!19556 lt!2012757)))))))

(assert (=> d!1576874 (= (size!37277 (originalCharacters!8528 (_1!33701 (get!19556 lt!2012757)))) lt!2012950)))

(declare-fun b!4906462 () Bool)

(assert (=> b!4906462 (= e!3066980 0)))

(declare-fun b!4906463 () Bool)

(assert (=> b!4906463 (= e!3066980 (+ 1 (size!37277 (t!366837 (originalCharacters!8528 (_1!33701 (get!19556 lt!2012757)))))))))

(assert (= (and d!1576874 c!833970) b!4906462))

(assert (= (and d!1576874 (not c!833970)) b!4906463))

(declare-fun m!5915910 () Bool)

(assert (=> b!4906463 m!5915910))

(assert (=> b!4906083 d!1576874))

(declare-fun b!4906464 () Bool)

(declare-fun e!3066983 () Bool)

(declare-fun e!3066986 () Bool)

(assert (=> b!4906464 (= e!3066983 e!3066986)))

(declare-fun res!2095840 () Bool)

(assert (=> b!4906464 (=> res!2095840 e!3066986)))

(declare-fun call!340502 () Bool)

(assert (=> b!4906464 (= res!2095840 call!340502)))

(declare-fun d!1576876 () Bool)

(declare-fun e!3066981 () Bool)

(assert (=> d!1576876 e!3066981))

(declare-fun c!833973 () Bool)

(assert (=> d!1576876 (= c!833973 (is-EmptyExpr!13308 (derivativeStep!3894 (regex!8233 rule!164) (head!10475 (_1!33704 lt!2012602)))))))

(declare-fun lt!2012951 () Bool)

(declare-fun e!3066987 () Bool)

(assert (=> d!1576876 (= lt!2012951 e!3066987)))

(declare-fun c!833971 () Bool)

(assert (=> d!1576876 (= c!833971 (isEmpty!30418 (tail!9622 (_1!33704 lt!2012602))))))

(assert (=> d!1576876 (validRegex!5901 (derivativeStep!3894 (regex!8233 rule!164) (head!10475 (_1!33704 lt!2012602))))))

(assert (=> d!1576876 (= (matchR!6575 (derivativeStep!3894 (regex!8233 rule!164) (head!10475 (_1!33704 lt!2012602))) (tail!9622 (_1!33704 lt!2012602))) lt!2012951)))

(declare-fun b!4906465 () Bool)

(declare-fun res!2095844 () Bool)

(declare-fun e!3066982 () Bool)

(assert (=> b!4906465 (=> (not res!2095844) (not e!3066982))))

(assert (=> b!4906465 (= res!2095844 (not call!340502))))

(declare-fun b!4906466 () Bool)

(assert (=> b!4906466 (= e!3066986 (not (= (head!10475 (tail!9622 (_1!33704 lt!2012602))) (c!833850 (derivativeStep!3894 (regex!8233 rule!164) (head!10475 (_1!33704 lt!2012602)))))))))

(declare-fun b!4906467 () Bool)

(declare-fun res!2095841 () Bool)

(declare-fun e!3066985 () Bool)

(assert (=> b!4906467 (=> res!2095841 e!3066985)))

(assert (=> b!4906467 (= res!2095841 (not (is-ElementMatch!13308 (derivativeStep!3894 (regex!8233 rule!164) (head!10475 (_1!33704 lt!2012602))))))))

(declare-fun e!3066984 () Bool)

(assert (=> b!4906467 (= e!3066984 e!3066985)))

(declare-fun b!4906468 () Bool)

(assert (=> b!4906468 (= e!3066981 (= lt!2012951 call!340502))))

(declare-fun b!4906469 () Bool)

(assert (=> b!4906469 (= e!3066981 e!3066984)))

(declare-fun c!833972 () Bool)

(assert (=> b!4906469 (= c!833972 (is-EmptyLang!13308 (derivativeStep!3894 (regex!8233 rule!164) (head!10475 (_1!33704 lt!2012602)))))))

(declare-fun b!4906470 () Bool)

(assert (=> b!4906470 (= e!3066984 (not lt!2012951))))

(declare-fun b!4906471 () Bool)

(declare-fun res!2095846 () Bool)

(assert (=> b!4906471 (=> res!2095846 e!3066985)))

(assert (=> b!4906471 (= res!2095846 e!3066982)))

(declare-fun res!2095845 () Bool)

(assert (=> b!4906471 (=> (not res!2095845) (not e!3066982))))

(assert (=> b!4906471 (= res!2095845 lt!2012951)))

(declare-fun b!4906472 () Bool)

(assert (=> b!4906472 (= e!3066985 e!3066983)))

(declare-fun res!2095842 () Bool)

(assert (=> b!4906472 (=> (not res!2095842) (not e!3066983))))

(assert (=> b!4906472 (= res!2095842 (not lt!2012951))))

(declare-fun b!4906473 () Bool)

(declare-fun res!2095839 () Bool)

(assert (=> b!4906473 (=> res!2095839 e!3066986)))

(assert (=> b!4906473 (= res!2095839 (not (isEmpty!30418 (tail!9622 (tail!9622 (_1!33704 lt!2012602))))))))

(declare-fun b!4906474 () Bool)

(declare-fun res!2095843 () Bool)

(assert (=> b!4906474 (=> (not res!2095843) (not e!3066982))))

(assert (=> b!4906474 (= res!2095843 (isEmpty!30418 (tail!9622 (tail!9622 (_1!33704 lt!2012602)))))))

(declare-fun b!4906475 () Bool)

(assert (=> b!4906475 (= e!3066987 (nullable!4574 (derivativeStep!3894 (regex!8233 rule!164) (head!10475 (_1!33704 lt!2012602)))))))

(declare-fun b!4906476 () Bool)

(assert (=> b!4906476 (= e!3066982 (= (head!10475 (tail!9622 (_1!33704 lt!2012602))) (c!833850 (derivativeStep!3894 (regex!8233 rule!164) (head!10475 (_1!33704 lt!2012602))))))))

(declare-fun bm!340497 () Bool)

(assert (=> bm!340497 (= call!340502 (isEmpty!30418 (tail!9622 (_1!33704 lt!2012602))))))

(declare-fun b!4906477 () Bool)

(assert (=> b!4906477 (= e!3066987 (matchR!6575 (derivativeStep!3894 (derivativeStep!3894 (regex!8233 rule!164) (head!10475 (_1!33704 lt!2012602))) (head!10475 (tail!9622 (_1!33704 lt!2012602)))) (tail!9622 (tail!9622 (_1!33704 lt!2012602)))))))

(assert (= (and d!1576876 c!833971) b!4906475))

(assert (= (and d!1576876 (not c!833971)) b!4906477))

(assert (= (and d!1576876 c!833973) b!4906468))

(assert (= (and d!1576876 (not c!833973)) b!4906469))

(assert (= (and b!4906469 c!833972) b!4906470))

(assert (= (and b!4906469 (not c!833972)) b!4906467))

(assert (= (and b!4906467 (not res!2095841)) b!4906471))

(assert (= (and b!4906471 res!2095845) b!4906465))

(assert (= (and b!4906465 res!2095844) b!4906474))

(assert (= (and b!4906474 res!2095843) b!4906476))

(assert (= (and b!4906471 (not res!2095846)) b!4906472))

(assert (= (and b!4906472 res!2095842) b!4906464))

(assert (= (and b!4906464 (not res!2095840)) b!4906473))

(assert (= (and b!4906473 (not res!2095839)) b!4906466))

(assert (= (or b!4906468 b!4906464 b!4906465) bm!340497))

(assert (=> d!1576876 m!5915488))

(assert (=> d!1576876 m!5915490))

(assert (=> d!1576876 m!5915494))

(declare-fun m!5915912 () Bool)

(assert (=> d!1576876 m!5915912))

(assert (=> b!4906473 m!5915488))

(declare-fun m!5915914 () Bool)

(assert (=> b!4906473 m!5915914))

(assert (=> b!4906473 m!5915914))

(declare-fun m!5915916 () Bool)

(assert (=> b!4906473 m!5915916))

(assert (=> b!4906474 m!5915488))

(assert (=> b!4906474 m!5915914))

(assert (=> b!4906474 m!5915914))

(assert (=> b!4906474 m!5915916))

(assert (=> bm!340497 m!5915488))

(assert (=> bm!340497 m!5915490))

(assert (=> b!4906476 m!5915488))

(declare-fun m!5915918 () Bool)

(assert (=> b!4906476 m!5915918))

(assert (=> b!4906477 m!5915488))

(assert (=> b!4906477 m!5915918))

(assert (=> b!4906477 m!5915494))

(assert (=> b!4906477 m!5915918))

(declare-fun m!5915920 () Bool)

(assert (=> b!4906477 m!5915920))

(assert (=> b!4906477 m!5915488))

(assert (=> b!4906477 m!5915914))

(assert (=> b!4906477 m!5915920))

(assert (=> b!4906477 m!5915914))

(declare-fun m!5915922 () Bool)

(assert (=> b!4906477 m!5915922))

(assert (=> b!4906475 m!5915494))

(declare-fun m!5915924 () Bool)

(assert (=> b!4906475 m!5915924))

(assert (=> b!4906466 m!5915488))

(assert (=> b!4906466 m!5915918))

(assert (=> b!4906125 d!1576876))

(declare-fun bm!340506 () Bool)

(declare-fun c!833984 () Bool)

(declare-fun call!340514 () Regex!13308)

(declare-fun c!833986 () Bool)

(assert (=> bm!340506 (= call!340514 (derivativeStep!3894 (ite c!833984 (regOne!27129 (regex!8233 rule!164)) (ite c!833986 (reg!13637 (regex!8233 rule!164)) (regOne!27128 (regex!8233 rule!164)))) (head!10475 (_1!33704 lt!2012602))))))

(declare-fun b!4906498 () Bool)

(declare-fun c!833987 () Bool)

(assert (=> b!4906498 (= c!833987 (nullable!4574 (regOne!27128 (regex!8233 rule!164))))))

(declare-fun e!3067000 () Regex!13308)

(declare-fun e!3067001 () Regex!13308)

(assert (=> b!4906498 (= e!3067000 e!3067001)))

(declare-fun b!4906499 () Bool)

(declare-fun e!3066998 () Regex!13308)

(assert (=> b!4906499 (= e!3066998 e!3067000)))

(assert (=> b!4906499 (= c!833986 (is-Star!13308 (regex!8233 rule!164)))))

(declare-fun d!1576878 () Bool)

(declare-fun lt!2012954 () Regex!13308)

(assert (=> d!1576878 (validRegex!5901 lt!2012954)))

(declare-fun e!3067002 () Regex!13308)

(assert (=> d!1576878 (= lt!2012954 e!3067002)))

(declare-fun c!833985 () Bool)

(assert (=> d!1576878 (= c!833985 (or (is-EmptyExpr!13308 (regex!8233 rule!164)) (is-EmptyLang!13308 (regex!8233 rule!164))))))

(assert (=> d!1576878 (validRegex!5901 (regex!8233 rule!164))))

(assert (=> d!1576878 (= (derivativeStep!3894 (regex!8233 rule!164) (head!10475 (_1!33704 lt!2012602))) lt!2012954)))

(declare-fun bm!340507 () Bool)

(declare-fun call!340512 () Regex!13308)

(assert (=> bm!340507 (= call!340512 call!340514)))

(declare-fun call!340513 () Regex!13308)

(declare-fun call!340511 () Regex!13308)

(declare-fun b!4906500 () Bool)

(assert (=> b!4906500 (= e!3067001 (Union!13308 (Concat!21851 call!340513 (regTwo!27128 (regex!8233 rule!164))) call!340511))))

(declare-fun b!4906501 () Bool)

(assert (=> b!4906501 (= e!3067002 EmptyLang!13308)))

(declare-fun bm!340508 () Bool)

(assert (=> bm!340508 (= call!340513 call!340512)))

(declare-fun b!4906502 () Bool)

(declare-fun e!3066999 () Regex!13308)

(assert (=> b!4906502 (= e!3066999 (ite (= (head!10475 (_1!33704 lt!2012602)) (c!833850 (regex!8233 rule!164))) EmptyExpr!13308 EmptyLang!13308))))

(declare-fun b!4906503 () Bool)

(assert (=> b!4906503 (= e!3066998 (Union!13308 call!340514 call!340511))))

(declare-fun b!4906504 () Bool)

(assert (=> b!4906504 (= c!833984 (is-Union!13308 (regex!8233 rule!164)))))

(assert (=> b!4906504 (= e!3066999 e!3066998)))

(declare-fun b!4906505 () Bool)

(assert (=> b!4906505 (= e!3067001 (Union!13308 (Concat!21851 call!340513 (regTwo!27128 (regex!8233 rule!164))) EmptyLang!13308))))

(declare-fun b!4906506 () Bool)

(assert (=> b!4906506 (= e!3067002 e!3066999)))

(declare-fun c!833988 () Bool)

(assert (=> b!4906506 (= c!833988 (is-ElementMatch!13308 (regex!8233 rule!164)))))

(declare-fun b!4906507 () Bool)

(assert (=> b!4906507 (= e!3067000 (Concat!21851 call!340512 (regex!8233 rule!164)))))

(declare-fun bm!340509 () Bool)

(assert (=> bm!340509 (= call!340511 (derivativeStep!3894 (ite c!833984 (regTwo!27129 (regex!8233 rule!164)) (regTwo!27128 (regex!8233 rule!164))) (head!10475 (_1!33704 lt!2012602))))))

(assert (= (and d!1576878 c!833985) b!4906501))

(assert (= (and d!1576878 (not c!833985)) b!4906506))

(assert (= (and b!4906506 c!833988) b!4906502))

(assert (= (and b!4906506 (not c!833988)) b!4906504))

(assert (= (and b!4906504 c!833984) b!4906503))

(assert (= (and b!4906504 (not c!833984)) b!4906499))

(assert (= (and b!4906499 c!833986) b!4906507))

(assert (= (and b!4906499 (not c!833986)) b!4906498))

(assert (= (and b!4906498 c!833987) b!4906500))

(assert (= (and b!4906498 (not c!833987)) b!4906505))

(assert (= (or b!4906500 b!4906505) bm!340508))

(assert (= (or b!4906507 bm!340508) bm!340507))

(assert (= (or b!4906503 bm!340507) bm!340506))

(assert (= (or b!4906503 b!4906500) bm!340509))

(assert (=> bm!340506 m!5915492))

(declare-fun m!5915926 () Bool)

(assert (=> bm!340506 m!5915926))

(declare-fun m!5915928 () Bool)

(assert (=> b!4906498 m!5915928))

(declare-fun m!5915930 () Bool)

(assert (=> d!1576878 m!5915930))

(assert (=> d!1576878 m!5915336))

(assert (=> bm!340509 m!5915492))

(declare-fun m!5915932 () Bool)

(assert (=> bm!340509 m!5915932))

(assert (=> b!4906125 d!1576878))

(assert (=> b!4906125 d!1576838))

(assert (=> b!4906125 d!1576816))

(declare-fun d!1576880 () Bool)

(assert (=> d!1576880 (= (isEmpty!30418 (_1!33704 lt!2012710)) (is-Nil!56541 (_1!33704 lt!2012710)))))

(assert (=> b!4906031 d!1576880))

(declare-fun d!1576882 () Bool)

(assert (=> d!1576882 (= (inv!73005 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) lt!2012605))) (isBalanced!4033 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) lt!2012605)))))))

(declare-fun bs!1177131 () Bool)

(assert (= bs!1177131 d!1576882))

(declare-fun m!5915934 () Bool)

(assert (=> bs!1177131 m!5915934))

(assert (=> tb!259915 d!1576882))

(declare-fun d!1576884 () Bool)

(assert (=> d!1576884 true))

(declare-fun lambda!244510 () Int)

(declare-fun order!25767 () Int)

(declare-fun dynLambda!22835 (Int Int) Int)

(assert (=> d!1576884 (< (dynLambda!22823 order!25755 (toValue!11156 (transformation!8233 rule!164))) (dynLambda!22835 order!25767 lambda!244510))))

(declare-fun Forall2!1280 (Int) Bool)

(assert (=> d!1576884 (= (equivClasses!3487 (toChars!11015 (transformation!8233 rule!164)) (toValue!11156 (transformation!8233 rule!164))) (Forall2!1280 lambda!244510))))

(declare-fun bs!1177132 () Bool)

(assert (= bs!1177132 d!1576884))

(declare-fun m!5915936 () Bool)

(assert (=> bs!1177132 m!5915936))

(assert (=> b!4906042 d!1576884))

(declare-fun bm!340510 () Bool)

(declare-fun call!340517 () Bool)

(assert (=> bm!340510 (= call!340517 (isPrefix!4915 lt!2012604 lt!2012604))))

(declare-fun b!4906512 () Bool)

(declare-fun e!3067008 () tuple2!60802)

(declare-fun lt!2012961 () tuple2!60802)

(assert (=> b!4906512 (= e!3067008 lt!2012961)))

(declare-fun b!4906513 () Bool)

(declare-fun e!3067010 () Bool)

(declare-fun lt!2012957 () tuple2!60802)

(assert (=> b!4906513 (= e!3067010 (>= (size!37277 (_1!33704 lt!2012957)) (size!37277 lt!2012716)))))

(declare-fun call!340521 () Regex!13308)

(declare-fun bm!340511 () Bool)

(declare-fun call!340520 () tuple2!60802)

(declare-fun call!340518 () List!56665)

(declare-fun lt!2012963 () List!56665)

(assert (=> bm!340511 (= call!340520 (findLongestMatchInner!1796 call!340521 lt!2012963 (+ (size!37277 Nil!56541) 1 1) call!340518 lt!2012604 (size!37277 lt!2012604)))))

(declare-fun bm!340512 () Bool)

(declare-fun call!340516 () Unit!146712)

(assert (=> bm!340512 (= call!340516 (lemmaIsPrefixSameLengthThenSameList!1074 lt!2012604 lt!2012716 lt!2012604))))

(declare-fun b!4906514 () Bool)

(declare-fun e!3067006 () Unit!146712)

(declare-fun Unit!146725 () Unit!146712)

(assert (=> b!4906514 (= e!3067006 Unit!146725)))

(declare-fun lt!2012972 () Unit!146712)

(declare-fun call!340519 () Unit!146712)

(assert (=> b!4906514 (= lt!2012972 call!340519)))

(assert (=> b!4906514 call!340517))

(declare-fun lt!2012967 () Unit!146712)

(assert (=> b!4906514 (= lt!2012967 lt!2012972)))

(declare-fun lt!2012959 () Unit!146712)

(assert (=> b!4906514 (= lt!2012959 call!340516)))

(assert (=> b!4906514 (= lt!2012604 lt!2012716)))

(declare-fun lt!2012958 () Unit!146712)

(assert (=> b!4906514 (= lt!2012958 lt!2012959)))

(assert (=> b!4906514 false))

(declare-fun b!4906515 () Bool)

(assert (=> b!4906515 (= e!3067008 (tuple2!60803 lt!2012716 call!340459))))

(declare-fun bm!340513 () Bool)

(declare-fun call!340515 () C!26814)

(assert (=> bm!340513 (= call!340521 (derivativeStep!3894 call!340462 call!340515))))

(declare-fun bm!340514 () Bool)

(assert (=> bm!340514 (= call!340515 (head!10475 call!340459))))

(declare-fun bm!340515 () Bool)

(declare-fun call!340522 () Bool)

(assert (=> bm!340515 (= call!340522 (nullable!4574 call!340462))))

(declare-fun d!1576886 () Bool)

(declare-fun e!3067005 () Bool)

(assert (=> d!1576886 e!3067005))

(declare-fun res!2095850 () Bool)

(assert (=> d!1576886 (=> (not res!2095850) (not e!3067005))))

(assert (=> d!1576886 (= res!2095850 (= (++!12262 (_1!33704 lt!2012957) (_2!33704 lt!2012957)) lt!2012604))))

(declare-fun e!3067012 () tuple2!60802)

(assert (=> d!1576886 (= lt!2012957 e!3067012)))

(declare-fun c!833992 () Bool)

(assert (=> d!1576886 (= c!833992 (lostCause!1102 call!340462))))

(declare-fun lt!2012973 () Unit!146712)

(declare-fun Unit!146726 () Unit!146712)

(assert (=> d!1576886 (= lt!2012973 Unit!146726)))

(assert (=> d!1576886 (= (getSuffix!2903 lt!2012604 lt!2012716) call!340459)))

(declare-fun lt!2012975 () Unit!146712)

(declare-fun lt!2012960 () Unit!146712)

(assert (=> d!1576886 (= lt!2012975 lt!2012960)))

(declare-fun lt!2012974 () List!56665)

(assert (=> d!1576886 (= call!340459 lt!2012974)))

(assert (=> d!1576886 (= lt!2012960 (lemmaSamePrefixThenSameSuffix!2319 lt!2012716 call!340459 lt!2012716 lt!2012974 lt!2012604))))

(assert (=> d!1576886 (= lt!2012974 (getSuffix!2903 lt!2012604 lt!2012716))))

(declare-fun lt!2012982 () Unit!146712)

(declare-fun lt!2012956 () Unit!146712)

(assert (=> d!1576886 (= lt!2012982 lt!2012956)))

(assert (=> d!1576886 (isPrefix!4915 lt!2012716 (++!12262 lt!2012716 call!340459))))

(assert (=> d!1576886 (= lt!2012956 (lemmaConcatTwoListThenFirstIsPrefix!3139 lt!2012716 call!340459))))

(assert (=> d!1576886 (validRegex!5901 call!340462)))

(assert (=> d!1576886 (= (findLongestMatchInner!1796 call!340462 lt!2012716 (+ (size!37277 Nil!56541) 1) call!340459 lt!2012604 (size!37277 lt!2012604)) lt!2012957)))

(declare-fun b!4906516 () Bool)

(declare-fun e!3067009 () tuple2!60802)

(assert (=> b!4906516 (= e!3067009 e!3067008)))

(assert (=> b!4906516 (= lt!2012961 call!340520)))

(declare-fun c!833990 () Bool)

(assert (=> b!4906516 (= c!833990 (isEmpty!30418 (_1!33704 lt!2012961)))))

(declare-fun b!4906517 () Bool)

(assert (=> b!4906517 (= e!3067005 e!3067010)))

(declare-fun res!2095849 () Bool)

(assert (=> b!4906517 (=> res!2095849 e!3067010)))

(assert (=> b!4906517 (= res!2095849 (isEmpty!30418 (_1!33704 lt!2012957)))))

(declare-fun b!4906518 () Bool)

(declare-fun Unit!146727 () Unit!146712)

(assert (=> b!4906518 (= e!3067006 Unit!146727)))

(declare-fun b!4906519 () Bool)

(declare-fun c!833993 () Bool)

(assert (=> b!4906519 (= c!833993 call!340522)))

(declare-fun lt!2012979 () Unit!146712)

(declare-fun lt!2012964 () Unit!146712)

(assert (=> b!4906519 (= lt!2012979 lt!2012964)))

(declare-fun lt!2012978 () List!56665)

(declare-fun lt!2012965 () C!26814)

(assert (=> b!4906519 (= (++!12262 (++!12262 lt!2012716 (Cons!56541 lt!2012965 Nil!56541)) lt!2012978) lt!2012604)))

(assert (=> b!4906519 (= lt!2012964 (lemmaMoveElementToOtherListKeepsConcatEq!1346 lt!2012716 lt!2012965 lt!2012978 lt!2012604))))

(assert (=> b!4906519 (= lt!2012978 (tail!9622 call!340459))))

(assert (=> b!4906519 (= lt!2012965 (head!10475 call!340459))))

(declare-fun lt!2012968 () Unit!146712)

(declare-fun lt!2012976 () Unit!146712)

(assert (=> b!4906519 (= lt!2012968 lt!2012976)))

(assert (=> b!4906519 (isPrefix!4915 (++!12262 lt!2012716 (Cons!56541 (head!10475 (getSuffix!2903 lt!2012604 lt!2012716)) Nil!56541)) lt!2012604)))

(assert (=> b!4906519 (= lt!2012976 (lemmaAddHeadSuffixToPrefixStillPrefix!728 lt!2012716 lt!2012604))))

(declare-fun lt!2012966 () Unit!146712)

(declare-fun lt!2012980 () Unit!146712)

(assert (=> b!4906519 (= lt!2012966 lt!2012980)))

(assert (=> b!4906519 (= lt!2012980 (lemmaAddHeadSuffixToPrefixStillPrefix!728 lt!2012716 lt!2012604))))

(assert (=> b!4906519 (= lt!2012963 (++!12262 lt!2012716 (Cons!56541 (head!10475 call!340459) Nil!56541)))))

(declare-fun lt!2012970 () Unit!146712)

(assert (=> b!4906519 (= lt!2012970 e!3067006)))

(declare-fun c!833994 () Bool)

(assert (=> b!4906519 (= c!833994 (= (size!37277 lt!2012716) (size!37277 lt!2012604)))))

(declare-fun lt!2012977 () Unit!146712)

(declare-fun lt!2012962 () Unit!146712)

(assert (=> b!4906519 (= lt!2012977 lt!2012962)))

(assert (=> b!4906519 (<= (size!37277 lt!2012716) (size!37277 lt!2012604))))

(assert (=> b!4906519 (= lt!2012962 (lemmaIsPrefixThenSmallerEqSize!640 lt!2012716 lt!2012604))))

(declare-fun e!3067011 () tuple2!60802)

(assert (=> b!4906519 (= e!3067011 e!3067009)))

(declare-fun b!4906520 () Bool)

(declare-fun e!3067007 () tuple2!60802)

(assert (=> b!4906520 (= e!3067007 (tuple2!60803 lt!2012716 Nil!56541))))

(declare-fun b!4906521 () Bool)

(declare-fun c!833989 () Bool)

(assert (=> b!4906521 (= c!833989 call!340522)))

(declare-fun lt!2012955 () Unit!146712)

(declare-fun lt!2012969 () Unit!146712)

(assert (=> b!4906521 (= lt!2012955 lt!2012969)))

(assert (=> b!4906521 (= lt!2012604 lt!2012716)))

(assert (=> b!4906521 (= lt!2012969 call!340516)))

(declare-fun lt!2012981 () Unit!146712)

(declare-fun lt!2012971 () Unit!146712)

(assert (=> b!4906521 (= lt!2012981 lt!2012971)))

(assert (=> b!4906521 call!340517))

(assert (=> b!4906521 (= lt!2012971 call!340519)))

(assert (=> b!4906521 (= e!3067011 e!3067007)))

(declare-fun bm!340516 () Bool)

(assert (=> bm!340516 (= call!340518 (tail!9622 call!340459))))

(declare-fun b!4906522 () Bool)

(assert (=> b!4906522 (= e!3067012 e!3067011)))

(declare-fun c!833991 () Bool)

(assert (=> b!4906522 (= c!833991 (= (+ (size!37277 Nil!56541) 1) (size!37277 lt!2012604)))))

(declare-fun bm!340517 () Bool)

(assert (=> bm!340517 (= call!340519 (lemmaIsPrefixRefl!3312 lt!2012604 lt!2012604))))

(declare-fun b!4906523 () Bool)

(assert (=> b!4906523 (= e!3067009 call!340520)))

(declare-fun b!4906524 () Bool)

(assert (=> b!4906524 (= e!3067007 (tuple2!60803 Nil!56541 lt!2012604))))

(declare-fun b!4906525 () Bool)

(assert (=> b!4906525 (= e!3067012 (tuple2!60803 Nil!56541 lt!2012604))))

(assert (= (and d!1576886 c!833992) b!4906525))

(assert (= (and d!1576886 (not c!833992)) b!4906522))

(assert (= (and b!4906522 c!833991) b!4906521))

(assert (= (and b!4906522 (not c!833991)) b!4906519))

(assert (= (and b!4906521 c!833989) b!4906520))

(assert (= (and b!4906521 (not c!833989)) b!4906524))

(assert (= (and b!4906519 c!833994) b!4906514))

(assert (= (and b!4906519 (not c!833994)) b!4906518))

(assert (= (and b!4906519 c!833993) b!4906516))

(assert (= (and b!4906519 (not c!833993)) b!4906523))

(assert (= (and b!4906516 c!833990) b!4906515))

(assert (= (and b!4906516 (not c!833990)) b!4906512))

(assert (= (or b!4906516 b!4906523) bm!340514))

(assert (= (or b!4906516 b!4906523) bm!340516))

(assert (= (or b!4906516 b!4906523) bm!340513))

(assert (= (or b!4906516 b!4906523) bm!340511))

(assert (= (or b!4906521 b!4906514) bm!340510))

(assert (= (or b!4906521 b!4906514) bm!340517))

(assert (= (or b!4906521 b!4906514) bm!340512))

(assert (= (or b!4906521 b!4906519) bm!340515))

(assert (= (and d!1576886 res!2095850) b!4906517))

(assert (= (and b!4906517 (not res!2095849)) b!4906513))

(declare-fun m!5915938 () Bool)

(assert (=> b!4906513 m!5915938))

(declare-fun m!5915940 () Bool)

(assert (=> b!4906513 m!5915940))

(declare-fun m!5915942 () Bool)

(assert (=> bm!340516 m!5915942))

(assert (=> bm!340510 m!5915376))

(declare-fun m!5915944 () Bool)

(assert (=> bm!340512 m!5915944))

(assert (=> bm!340511 m!5915230))

(declare-fun m!5915946 () Bool)

(assert (=> bm!340511 m!5915946))

(declare-fun m!5915948 () Bool)

(assert (=> bm!340514 m!5915948))

(declare-fun m!5915950 () Bool)

(assert (=> b!4906517 m!5915950))

(declare-fun m!5915952 () Bool)

(assert (=> bm!340515 m!5915952))

(declare-fun m!5915954 () Bool)

(assert (=> b!4906519 m!5915954))

(declare-fun m!5915956 () Bool)

(assert (=> b!4906519 m!5915956))

(assert (=> b!4906519 m!5915230))

(declare-fun m!5915958 () Bool)

(assert (=> b!4906519 m!5915958))

(declare-fun m!5915960 () Bool)

(assert (=> b!4906519 m!5915960))

(declare-fun m!5915962 () Bool)

(assert (=> b!4906519 m!5915962))

(assert (=> b!4906519 m!5915948))

(declare-fun m!5915964 () Bool)

(assert (=> b!4906519 m!5915964))

(declare-fun m!5915966 () Bool)

(assert (=> b!4906519 m!5915966))

(assert (=> b!4906519 m!5915964))

(declare-fun m!5915968 () Bool)

(assert (=> b!4906519 m!5915968))

(assert (=> b!4906519 m!5915942))

(declare-fun m!5915970 () Bool)

(assert (=> b!4906519 m!5915970))

(assert (=> b!4906519 m!5915962))

(declare-fun m!5915972 () Bool)

(assert (=> b!4906519 m!5915972))

(assert (=> b!4906519 m!5915940))

(assert (=> b!4906519 m!5915958))

(declare-fun m!5915974 () Bool)

(assert (=> b!4906516 m!5915974))

(declare-fun m!5915976 () Bool)

(assert (=> d!1576886 m!5915976))

(declare-fun m!5915978 () Bool)

(assert (=> d!1576886 m!5915978))

(assert (=> d!1576886 m!5915962))

(declare-fun m!5915980 () Bool)

(assert (=> d!1576886 m!5915980))

(declare-fun m!5915982 () Bool)

(assert (=> d!1576886 m!5915982))

(declare-fun m!5915984 () Bool)

(assert (=> d!1576886 m!5915984))

(declare-fun m!5915986 () Bool)

(assert (=> d!1576886 m!5915986))

(assert (=> d!1576886 m!5915986))

(declare-fun m!5915988 () Bool)

(assert (=> d!1576886 m!5915988))

(assert (=> bm!340517 m!5915422))

(declare-fun m!5915990 () Bool)

(assert (=> bm!340513 m!5915990))

(assert (=> bm!340452 d!1576886))

(declare-fun d!1576888 () Bool)

(assert (=> d!1576888 (= (list!17815 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) lt!2012605))) (list!17817 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) lt!2012605)))))))

(declare-fun bs!1177133 () Bool)

(assert (= bs!1177133 d!1576888))

(declare-fun m!5915992 () Bool)

(assert (=> bs!1177133 m!5915992))

(assert (=> bs!1177097 d!1576888))

(assert (=> bs!1177097 d!1576716))

(declare-fun c!833995 () Bool)

(declare-fun c!833997 () Bool)

(declare-fun bm!340518 () Bool)

(declare-fun call!340526 () Regex!13308)

(assert (=> bm!340518 (= call!340526 (derivativeStep!3894 (ite c!833995 (regOne!27129 (regex!8233 rule!164)) (ite c!833997 (reg!13637 (regex!8233 rule!164)) (regOne!27128 (regex!8233 rule!164)))) call!340456))))

(declare-fun b!4906526 () Bool)

(declare-fun c!833998 () Bool)

(assert (=> b!4906526 (= c!833998 (nullable!4574 (regOne!27128 (regex!8233 rule!164))))))

(declare-fun e!3067015 () Regex!13308)

(declare-fun e!3067016 () Regex!13308)

(assert (=> b!4906526 (= e!3067015 e!3067016)))

(declare-fun b!4906527 () Bool)

(declare-fun e!3067013 () Regex!13308)

(assert (=> b!4906527 (= e!3067013 e!3067015)))

(assert (=> b!4906527 (= c!833997 (is-Star!13308 (regex!8233 rule!164)))))

(declare-fun d!1576890 () Bool)

(declare-fun lt!2012983 () Regex!13308)

(assert (=> d!1576890 (validRegex!5901 lt!2012983)))

(declare-fun e!3067017 () Regex!13308)

(assert (=> d!1576890 (= lt!2012983 e!3067017)))

(declare-fun c!833996 () Bool)

(assert (=> d!1576890 (= c!833996 (or (is-EmptyExpr!13308 (regex!8233 rule!164)) (is-EmptyLang!13308 (regex!8233 rule!164))))))

(assert (=> d!1576890 (validRegex!5901 (regex!8233 rule!164))))

(assert (=> d!1576890 (= (derivativeStep!3894 (regex!8233 rule!164) call!340456) lt!2012983)))

(declare-fun bm!340519 () Bool)

(declare-fun call!340524 () Regex!13308)

(assert (=> bm!340519 (= call!340524 call!340526)))

(declare-fun call!340525 () Regex!13308)

(declare-fun call!340523 () Regex!13308)

(declare-fun b!4906528 () Bool)

(assert (=> b!4906528 (= e!3067016 (Union!13308 (Concat!21851 call!340525 (regTwo!27128 (regex!8233 rule!164))) call!340523))))

(declare-fun b!4906529 () Bool)

(assert (=> b!4906529 (= e!3067017 EmptyLang!13308)))

(declare-fun bm!340520 () Bool)

(assert (=> bm!340520 (= call!340525 call!340524)))

(declare-fun b!4906530 () Bool)

(declare-fun e!3067014 () Regex!13308)

(assert (=> b!4906530 (= e!3067014 (ite (= call!340456 (c!833850 (regex!8233 rule!164))) EmptyExpr!13308 EmptyLang!13308))))

(declare-fun b!4906531 () Bool)

(assert (=> b!4906531 (= e!3067013 (Union!13308 call!340526 call!340523))))

(declare-fun b!4906532 () Bool)

(assert (=> b!4906532 (= c!833995 (is-Union!13308 (regex!8233 rule!164)))))

(assert (=> b!4906532 (= e!3067014 e!3067013)))

(declare-fun b!4906533 () Bool)

(assert (=> b!4906533 (= e!3067016 (Union!13308 (Concat!21851 call!340525 (regTwo!27128 (regex!8233 rule!164))) EmptyLang!13308))))

(declare-fun b!4906534 () Bool)

(assert (=> b!4906534 (= e!3067017 e!3067014)))

(declare-fun c!833999 () Bool)

(assert (=> b!4906534 (= c!833999 (is-ElementMatch!13308 (regex!8233 rule!164)))))

(declare-fun b!4906535 () Bool)

(assert (=> b!4906535 (= e!3067015 (Concat!21851 call!340524 (regex!8233 rule!164)))))

(declare-fun bm!340521 () Bool)

(assert (=> bm!340521 (= call!340523 (derivativeStep!3894 (ite c!833995 (regTwo!27129 (regex!8233 rule!164)) (regTwo!27128 (regex!8233 rule!164))) call!340456))))

(assert (= (and d!1576890 c!833996) b!4906529))

(assert (= (and d!1576890 (not c!833996)) b!4906534))

(assert (= (and b!4906534 c!833999) b!4906530))

(assert (= (and b!4906534 (not c!833999)) b!4906532))

(assert (= (and b!4906532 c!833995) b!4906531))

(assert (= (and b!4906532 (not c!833995)) b!4906527))

(assert (= (and b!4906527 c!833997) b!4906535))

(assert (= (and b!4906527 (not c!833997)) b!4906526))

(assert (= (and b!4906526 c!833998) b!4906528))

(assert (= (and b!4906526 (not c!833998)) b!4906533))

(assert (= (or b!4906528 b!4906533) bm!340520))

(assert (= (or b!4906535 bm!340520) bm!340519))

(assert (= (or b!4906531 bm!340519) bm!340518))

(assert (= (or b!4906531 b!4906528) bm!340521))

(declare-fun m!5915994 () Bool)

(assert (=> bm!340518 m!5915994))

(assert (=> b!4906526 m!5915928))

(declare-fun m!5915996 () Bool)

(assert (=> d!1576890 m!5915996))

(assert (=> d!1576890 m!5915336))

(declare-fun m!5915998 () Bool)

(assert (=> bm!340521 m!5915998))

(assert (=> bm!340454 d!1576890))

(declare-fun b!4906536 () Bool)

(declare-fun e!3067020 () Bool)

(assert (=> b!4906536 (= e!3067020 (inv!15 (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) lt!2012605)))))

(declare-fun d!1576892 () Bool)

(declare-fun c!834000 () Bool)

(assert (=> d!1576892 (= c!834000 (is-IntegerValue!25629 (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) lt!2012605)))))

(declare-fun e!3067018 () Bool)

(assert (=> d!1576892 (= (inv!21 (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) lt!2012605)) e!3067018)))

(declare-fun b!4906537 () Bool)

(declare-fun e!3067019 () Bool)

(assert (=> b!4906537 (= e!3067019 (inv!17 (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) lt!2012605)))))

(declare-fun b!4906538 () Bool)

(assert (=> b!4906538 (= e!3067018 e!3067019)))

(declare-fun c!834001 () Bool)

(assert (=> b!4906538 (= c!834001 (is-IntegerValue!25630 (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) lt!2012605)))))

(declare-fun b!4906539 () Bool)

(declare-fun res!2095851 () Bool)

(assert (=> b!4906539 (=> res!2095851 e!3067020)))

(assert (=> b!4906539 (= res!2095851 (not (is-IntegerValue!25631 (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) lt!2012605))))))

(assert (=> b!4906539 (= e!3067019 e!3067020)))

(declare-fun b!4906540 () Bool)

(assert (=> b!4906540 (= e!3067018 (inv!16 (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) lt!2012605)))))

(assert (= (and d!1576892 c!834000) b!4906540))

(assert (= (and d!1576892 (not c!834000)) b!4906538))

(assert (= (and b!4906538 c!834001) b!4906537))

(assert (= (and b!4906538 (not c!834001)) b!4906539))

(assert (= (and b!4906539 (not res!2095851)) b!4906536))

(declare-fun m!5916000 () Bool)

(assert (=> b!4906536 m!5916000))

(declare-fun m!5916002 () Bool)

(assert (=> b!4906537 m!5916002))

(declare-fun m!5916004 () Bool)

(assert (=> b!4906540 m!5916004))

(assert (=> tb!259917 d!1576892))

(declare-fun b!4906543 () Bool)

(declare-fun e!3067022 () List!56665)

(assert (=> b!4906543 (= e!3067022 (list!17819 (xs!18117 (c!833851 (_1!33702 lt!2012608)))))))

(declare-fun b!4906544 () Bool)

(assert (=> b!4906544 (= e!3067022 (++!12262 (list!17817 (left!41162 (c!833851 (_1!33702 lt!2012608)))) (list!17817 (right!41492 (c!833851 (_1!33702 lt!2012608))))))))

(declare-fun b!4906542 () Bool)

(declare-fun e!3067021 () List!56665)

(assert (=> b!4906542 (= e!3067021 e!3067022)))

(declare-fun c!834003 () Bool)

(assert (=> b!4906542 (= c!834003 (is-Leaf!24635 (c!833851 (_1!33702 lt!2012608))))))

(declare-fun b!4906541 () Bool)

(assert (=> b!4906541 (= e!3067021 Nil!56541)))

(declare-fun d!1576894 () Bool)

(declare-fun c!834002 () Bool)

(assert (=> d!1576894 (= c!834002 (is-Empty!14801 (c!833851 (_1!33702 lt!2012608))))))

(assert (=> d!1576894 (= (list!17817 (c!833851 (_1!33702 lt!2012608))) e!3067021)))

(assert (= (and d!1576894 c!834002) b!4906541))

(assert (= (and d!1576894 (not c!834002)) b!4906542))

(assert (= (and b!4906542 c!834003) b!4906543))

(assert (= (and b!4906542 (not c!834003)) b!4906544))

(declare-fun m!5916006 () Bool)

(assert (=> b!4906543 m!5916006))

(declare-fun m!5916008 () Bool)

(assert (=> b!4906544 m!5916008))

(declare-fun m!5916010 () Bool)

(assert (=> b!4906544 m!5916010))

(assert (=> b!4906544 m!5916008))

(assert (=> b!4906544 m!5916010))

(declare-fun m!5916012 () Bool)

(assert (=> b!4906544 m!5916012))

(assert (=> d!1576700 d!1576894))

(assert (=> b!4906081 d!1576764))

(assert (=> b!4906081 d!1576658))

(assert (=> b!4906081 d!1576684))

(assert (=> b!4906081 d!1576654))

(declare-fun d!1576896 () Bool)

(declare-fun lt!2012984 () Int)

(assert (=> d!1576896 (>= lt!2012984 0)))

(declare-fun e!3067023 () Int)

(assert (=> d!1576896 (= lt!2012984 e!3067023)))

(declare-fun c!834004 () Bool)

(assert (=> d!1576896 (= c!834004 (is-Nil!56541 (t!366837 lt!2012604)))))

(assert (=> d!1576896 (= (size!37277 (t!366837 lt!2012604)) lt!2012984)))

(declare-fun b!4906545 () Bool)

(assert (=> b!4906545 (= e!3067023 0)))

(declare-fun b!4906546 () Bool)

(assert (=> b!4906546 (= e!3067023 (+ 1 (size!37277 (t!366837 (t!366837 lt!2012604)))))))

(assert (= (and d!1576896 c!834004) b!4906545))

(assert (= (and d!1576896 (not c!834004)) b!4906546))

(declare-fun m!5916014 () Bool)

(assert (=> b!4906546 m!5916014))

(assert (=> b!4905940 d!1576896))

(assert (=> b!4906053 d!1576762))

(declare-fun d!1576898 () Bool)

(declare-fun lt!2012985 () Int)

(assert (=> d!1576898 (>= lt!2012985 0)))

(declare-fun e!3067024 () Int)

(assert (=> d!1576898 (= lt!2012985 e!3067024)))

(declare-fun c!834005 () Bool)

(assert (=> d!1576898 (= c!834005 (is-Nil!56541 (_1!33704 lt!2012710)))))

(assert (=> d!1576898 (= (size!37277 (_1!33704 lt!2012710)) lt!2012985)))

(declare-fun b!4906547 () Bool)

(assert (=> b!4906547 (= e!3067024 0)))

(declare-fun b!4906548 () Bool)

(assert (=> b!4906548 (= e!3067024 (+ 1 (size!37277 (t!366837 (_1!33704 lt!2012710)))))))

(assert (= (and d!1576898 c!834005) b!4906547))

(assert (= (and d!1576898 (not c!834005)) b!4906548))

(declare-fun m!5916016 () Bool)

(assert (=> b!4906548 m!5916016))

(assert (=> b!4906027 d!1576898))

(assert (=> b!4906027 d!1576684))

(declare-fun b!4906550 () Bool)

(declare-fun e!3067025 () List!56665)

(assert (=> b!4906550 (= e!3067025 (Cons!56541 (h!62989 (list!17815 (charsOf!5389 (_1!33701 (get!19556 lt!2012757))))) (++!12262 (t!366837 (list!17815 (charsOf!5389 (_1!33701 (get!19556 lt!2012757))))) (_2!33701 (get!19556 lt!2012757)))))))

(declare-fun b!4906552 () Bool)

(declare-fun e!3067026 () Bool)

(declare-fun lt!2012986 () List!56665)

(assert (=> b!4906552 (= e!3067026 (or (not (= (_2!33701 (get!19556 lt!2012757)) Nil!56541)) (= lt!2012986 (list!17815 (charsOf!5389 (_1!33701 (get!19556 lt!2012757)))))))))

(declare-fun d!1576900 () Bool)

(assert (=> d!1576900 e!3067026))

(declare-fun res!2095852 () Bool)

(assert (=> d!1576900 (=> (not res!2095852) (not e!3067026))))

(assert (=> d!1576900 (= res!2095852 (= (content!10039 lt!2012986) (set.union (content!10039 (list!17815 (charsOf!5389 (_1!33701 (get!19556 lt!2012757))))) (content!10039 (_2!33701 (get!19556 lt!2012757))))))))

(assert (=> d!1576900 (= lt!2012986 e!3067025)))

(declare-fun c!834006 () Bool)

(assert (=> d!1576900 (= c!834006 (is-Nil!56541 (list!17815 (charsOf!5389 (_1!33701 (get!19556 lt!2012757))))))))

(assert (=> d!1576900 (= (++!12262 (list!17815 (charsOf!5389 (_1!33701 (get!19556 lt!2012757)))) (_2!33701 (get!19556 lt!2012757))) lt!2012986)))

(declare-fun b!4906551 () Bool)

(declare-fun res!2095853 () Bool)

(assert (=> b!4906551 (=> (not res!2095853) (not e!3067026))))

(assert (=> b!4906551 (= res!2095853 (= (size!37277 lt!2012986) (+ (size!37277 (list!17815 (charsOf!5389 (_1!33701 (get!19556 lt!2012757))))) (size!37277 (_2!33701 (get!19556 lt!2012757))))))))

(declare-fun b!4906549 () Bool)

(assert (=> b!4906549 (= e!3067025 (_2!33701 (get!19556 lt!2012757)))))

(assert (= (and d!1576900 c!834006) b!4906549))

(assert (= (and d!1576900 (not c!834006)) b!4906550))

(assert (= (and d!1576900 res!2095852) b!4906551))

(assert (= (and b!4906551 res!2095853) b!4906552))

(declare-fun m!5916018 () Bool)

(assert (=> b!4906550 m!5916018))

(declare-fun m!5916020 () Bool)

(assert (=> d!1576900 m!5916020))

(assert (=> d!1576900 m!5915462))

(declare-fun m!5916022 () Bool)

(assert (=> d!1576900 m!5916022))

(declare-fun m!5916024 () Bool)

(assert (=> d!1576900 m!5916024))

(declare-fun m!5916026 () Bool)

(assert (=> b!4906551 m!5916026))

(assert (=> b!4906551 m!5915462))

(declare-fun m!5916028 () Bool)

(assert (=> b!4906551 m!5916028))

(assert (=> b!4906551 m!5915482))

(assert (=> b!4906076 d!1576900))

(assert (=> b!4906076 d!1576788))

(assert (=> b!4906076 d!1576790))

(assert (=> b!4906076 d!1576792))

(declare-fun d!1576902 () Bool)

(declare-fun e!3067029 () Bool)

(assert (=> d!1576902 e!3067029))

(declare-fun res!2095855 () Bool)

(assert (=> d!1576902 (=> res!2095855 e!3067029)))

(declare-fun lt!2012987 () Bool)

(assert (=> d!1576902 (= res!2095855 (not lt!2012987))))

(declare-fun e!3067028 () Bool)

(assert (=> d!1576902 (= lt!2012987 e!3067028)))

(declare-fun res!2095857 () Bool)

(assert (=> d!1576902 (=> res!2095857 e!3067028)))

(assert (=> d!1576902 (= res!2095857 (is-Nil!56541 lt!2012604))))

(assert (=> d!1576902 (= (isPrefix!4915 lt!2012604 lt!2012604) lt!2012987)))

(declare-fun b!4906556 () Bool)

(assert (=> b!4906556 (= e!3067029 (>= (size!37277 lt!2012604) (size!37277 lt!2012604)))))

(declare-fun b!4906553 () Bool)

(declare-fun e!3067027 () Bool)

(assert (=> b!4906553 (= e!3067028 e!3067027)))

(declare-fun res!2095854 () Bool)

(assert (=> b!4906553 (=> (not res!2095854) (not e!3067027))))

(assert (=> b!4906553 (= res!2095854 (not (is-Nil!56541 lt!2012604)))))

(declare-fun b!4906554 () Bool)

(declare-fun res!2095856 () Bool)

(assert (=> b!4906554 (=> (not res!2095856) (not e!3067027))))

(assert (=> b!4906554 (= res!2095856 (= (head!10475 lt!2012604) (head!10475 lt!2012604)))))

(declare-fun b!4906555 () Bool)

(assert (=> b!4906555 (= e!3067027 (isPrefix!4915 (tail!9622 lt!2012604) (tail!9622 lt!2012604)))))

(assert (= (and d!1576902 (not res!2095857)) b!4906553))

(assert (= (and b!4906553 res!2095854) b!4906554))

(assert (= (and b!4906554 res!2095856) b!4906555))

(assert (= (and d!1576902 (not res!2095855)) b!4906556))

(assert (=> b!4906556 m!5915230))

(assert (=> b!4906556 m!5915230))

(assert (=> b!4906554 m!5915382))

(assert (=> b!4906554 m!5915382))

(assert (=> b!4906555 m!5915374))

(assert (=> b!4906555 m!5915374))

(assert (=> b!4906555 m!5915374))

(assert (=> b!4906555 m!5915374))

(declare-fun m!5916030 () Bool)

(assert (=> b!4906555 m!5916030))

(assert (=> bm!340451 d!1576902))

(assert (=> d!1576714 d!1576650))

(assert (=> d!1576714 d!1576828))

(declare-fun d!1576904 () Bool)

(declare-fun lt!2012991 () tuple2!60802)

(assert (=> d!1576904 (= (++!12262 (_1!33704 lt!2012991) (_2!33704 lt!2012991)) (list!17815 input!1509))))

(assert (=> d!1576904 (= lt!2012991 (findLongestMatchInner!1796 (regex!8233 rule!164) Nil!56541 0 (list!17815 input!1509) (list!17815 input!1509) (sizeTr!349 (list!17815 input!1509) 0)))))

(declare-fun lt!2012995 () Unit!146712)

(declare-fun lt!2012989 () Unit!146712)

(assert (=> d!1576904 (= lt!2012995 lt!2012989)))

(declare-fun lt!2012994 () List!56665)

(declare-fun lt!2012990 () Int)

(assert (=> d!1576904 (= (sizeTr!349 lt!2012994 lt!2012990) (+ (size!37277 lt!2012994) lt!2012990))))

(assert (=> d!1576904 (= lt!2012989 (lemmaSizeTrEqualsSize!348 lt!2012994 lt!2012990))))

(assert (=> d!1576904 (= lt!2012990 0)))

(assert (=> d!1576904 (= lt!2012994 Nil!56541)))

(declare-fun lt!2012993 () Unit!146712)

(declare-fun lt!2012992 () Unit!146712)

(assert (=> d!1576904 (= lt!2012993 lt!2012992)))

(declare-fun lt!2012988 () Int)

(assert (=> d!1576904 (= (sizeTr!349 (list!17815 input!1509) lt!2012988) (+ (size!37277 (list!17815 input!1509)) lt!2012988))))

(assert (=> d!1576904 (= lt!2012992 (lemmaSizeTrEqualsSize!348 (list!17815 input!1509) lt!2012988))))

(assert (=> d!1576904 (= lt!2012988 0)))

(assert (=> d!1576904 (validRegex!5901 (regex!8233 rule!164))))

(assert (=> d!1576904 (= (findLongestMatch!1664 (regex!8233 rule!164) (list!17815 input!1509)) lt!2012991)))

(declare-fun bs!1177134 () Bool)

(assert (= bs!1177134 d!1576904))

(declare-fun m!5916032 () Bool)

(assert (=> bs!1177134 m!5916032))

(assert (=> bs!1177134 m!5915236))

(assert (=> bs!1177134 m!5915236))

(declare-fun m!5916034 () Bool)

(assert (=> bs!1177134 m!5916034))

(declare-fun m!5916036 () Bool)

(assert (=> bs!1177134 m!5916036))

(assert (=> bs!1177134 m!5915336))

(declare-fun m!5916038 () Bool)

(assert (=> bs!1177134 m!5916038))

(assert (=> bs!1177134 m!5915236))

(assert (=> bs!1177134 m!5916034))

(assert (=> bs!1177134 m!5915236))

(declare-fun m!5916040 () Bool)

(assert (=> bs!1177134 m!5916040))

(declare-fun m!5916042 () Bool)

(assert (=> bs!1177134 m!5916042))

(declare-fun m!5916044 () Bool)

(assert (=> bs!1177134 m!5916044))

(assert (=> bs!1177134 m!5915236))

(declare-fun m!5916046 () Bool)

(assert (=> bs!1177134 m!5916046))

(assert (=> bs!1177134 m!5915236))

(declare-fun m!5916048 () Bool)

(assert (=> bs!1177134 m!5916048))

(assert (=> d!1576714 d!1576904))

(declare-fun d!1576906 () Bool)

(declare-fun res!2095860 () tuple2!60798)

(assert (=> d!1576906 (= (tuple2!60803 (list!17815 (_1!33702 res!2095860)) (list!17815 (_2!33702 res!2095860))) (findLongestMatch!1664 (regex!8233 rule!164) (list!17815 input!1509)))))

(declare-fun e!3067035 () Bool)

(declare-fun e!3067034 () Bool)

(assert (=> d!1576906 (and (inv!73005 (_1!33702 res!2095860)) e!3067035 (inv!73005 (_2!33702 res!2095860)) e!3067034)))

(assert (=> d!1576906 (= (choose!35852 (regex!8233 rule!164) input!1509) res!2095860)))

(declare-fun b!4906561 () Bool)

(declare-fun tp!1380119 () Bool)

(assert (=> b!4906561 (= e!3067035 (and (inv!73006 (c!833851 (_1!33702 res!2095860))) tp!1380119))))

(declare-fun b!4906562 () Bool)

(declare-fun tp!1380118 () Bool)

(assert (=> b!4906562 (= e!3067034 (and (inv!73006 (c!833851 (_2!33702 res!2095860))) tp!1380118))))

(assert (= d!1576906 b!4906561))

(assert (= d!1576906 b!4906562))

(declare-fun m!5916050 () Bool)

(assert (=> d!1576906 m!5916050))

(declare-fun m!5916052 () Bool)

(assert (=> d!1576906 m!5916052))

(assert (=> d!1576906 m!5915236))

(declare-fun m!5916054 () Bool)

(assert (=> d!1576906 m!5916054))

(assert (=> d!1576906 m!5915236))

(assert (=> d!1576906 m!5915504))

(declare-fun m!5916056 () Bool)

(assert (=> d!1576906 m!5916056))

(declare-fun m!5916058 () Bool)

(assert (=> b!4906561 m!5916058))

(declare-fun m!5916060 () Bool)

(assert (=> b!4906562 m!5916060))

(assert (=> d!1576714 d!1576906))

(declare-fun d!1576908 () Bool)

(assert (=> d!1576908 (= (list!17815 (_2!33702 lt!2012793)) (list!17817 (c!833851 (_2!33702 lt!2012793))))))

(declare-fun bs!1177135 () Bool)

(assert (= bs!1177135 d!1576908))

(declare-fun m!5916062 () Bool)

(assert (=> bs!1177135 m!5916062))

(assert (=> d!1576714 d!1576908))

(declare-fun d!1576910 () Bool)

(assert (=> d!1576910 (= (list!17815 (_1!33702 lt!2012793)) (list!17817 (c!833851 (_1!33702 lt!2012793))))))

(declare-fun bs!1177136 () Bool)

(assert (= bs!1177136 d!1576910))

(declare-fun m!5916064 () Bool)

(assert (=> bs!1177136 m!5916064))

(assert (=> d!1576714 d!1576910))

(declare-fun b!4906564 () Bool)

(declare-fun e!3067036 () List!56665)

(assert (=> b!4906564 (= e!3067036 (Cons!56541 (h!62989 Nil!56541) (++!12262 (t!366837 Nil!56541) (Cons!56541 (head!10475 (getSuffix!2903 lt!2012604 Nil!56541)) Nil!56541))))))

(declare-fun b!4906566 () Bool)

(declare-fun e!3067037 () Bool)

(declare-fun lt!2012996 () List!56665)

(assert (=> b!4906566 (= e!3067037 (or (not (= (Cons!56541 (head!10475 (getSuffix!2903 lt!2012604 Nil!56541)) Nil!56541) Nil!56541)) (= lt!2012996 Nil!56541)))))

(declare-fun d!1576912 () Bool)

(assert (=> d!1576912 e!3067037))

(declare-fun res!2095861 () Bool)

(assert (=> d!1576912 (=> (not res!2095861) (not e!3067037))))

(assert (=> d!1576912 (= res!2095861 (= (content!10039 lt!2012996) (set.union (content!10039 Nil!56541) (content!10039 (Cons!56541 (head!10475 (getSuffix!2903 lt!2012604 Nil!56541)) Nil!56541)))))))

(assert (=> d!1576912 (= lt!2012996 e!3067036)))

(declare-fun c!834007 () Bool)

(assert (=> d!1576912 (= c!834007 (is-Nil!56541 Nil!56541))))

(assert (=> d!1576912 (= (++!12262 Nil!56541 (Cons!56541 (head!10475 (getSuffix!2903 lt!2012604 Nil!56541)) Nil!56541)) lt!2012996)))

(declare-fun b!4906565 () Bool)

(declare-fun res!2095862 () Bool)

(assert (=> b!4906565 (=> (not res!2095862) (not e!3067037))))

(assert (=> b!4906565 (= res!2095862 (= (size!37277 lt!2012996) (+ (size!37277 Nil!56541) (size!37277 (Cons!56541 (head!10475 (getSuffix!2903 lt!2012604 Nil!56541)) Nil!56541)))))))

(declare-fun b!4906563 () Bool)

(assert (=> b!4906563 (= e!3067036 (Cons!56541 (head!10475 (getSuffix!2903 lt!2012604 Nil!56541)) Nil!56541))))

(assert (= (and d!1576912 c!834007) b!4906563))

(assert (= (and d!1576912 (not c!834007)) b!4906564))

(assert (= (and d!1576912 res!2095861) b!4906565))

(assert (= (and b!4906565 res!2095862) b!4906566))

(declare-fun m!5916066 () Bool)

(assert (=> b!4906564 m!5916066))

(declare-fun m!5916068 () Bool)

(assert (=> d!1576912 m!5916068))

(assert (=> d!1576912 m!5915904))

(declare-fun m!5916070 () Bool)

(assert (=> d!1576912 m!5916070))

(declare-fun m!5916072 () Bool)

(assert (=> b!4906565 m!5916072))

(assert (=> b!4906565 m!5915226))

(declare-fun m!5916074 () Bool)

(assert (=> b!4906565 m!5916074))

(assert (=> b!4906033 d!1576912))

(assert (=> b!4906033 d!1576654))

(declare-fun b!4906568 () Bool)

(declare-fun e!3067038 () List!56665)

(assert (=> b!4906568 (= e!3067038 (Cons!56541 (h!62989 (++!12262 Nil!56541 (Cons!56541 lt!2012718 Nil!56541))) (++!12262 (t!366837 (++!12262 Nil!56541 (Cons!56541 lt!2012718 Nil!56541))) lt!2012731)))))

(declare-fun b!4906570 () Bool)

(declare-fun e!3067039 () Bool)

(declare-fun lt!2012997 () List!56665)

(assert (=> b!4906570 (= e!3067039 (or (not (= lt!2012731 Nil!56541)) (= lt!2012997 (++!12262 Nil!56541 (Cons!56541 lt!2012718 Nil!56541)))))))

(declare-fun d!1576914 () Bool)

(assert (=> d!1576914 e!3067039))

(declare-fun res!2095863 () Bool)

(assert (=> d!1576914 (=> (not res!2095863) (not e!3067039))))

(assert (=> d!1576914 (= res!2095863 (= (content!10039 lt!2012997) (set.union (content!10039 (++!12262 Nil!56541 (Cons!56541 lt!2012718 Nil!56541))) (content!10039 lt!2012731))))))

(assert (=> d!1576914 (= lt!2012997 e!3067038)))

(declare-fun c!834008 () Bool)

(assert (=> d!1576914 (= c!834008 (is-Nil!56541 (++!12262 Nil!56541 (Cons!56541 lt!2012718 Nil!56541))))))

(assert (=> d!1576914 (= (++!12262 (++!12262 Nil!56541 (Cons!56541 lt!2012718 Nil!56541)) lt!2012731) lt!2012997)))

(declare-fun b!4906569 () Bool)

(declare-fun res!2095864 () Bool)

(assert (=> b!4906569 (=> (not res!2095864) (not e!3067039))))

(assert (=> b!4906569 (= res!2095864 (= (size!37277 lt!2012997) (+ (size!37277 (++!12262 Nil!56541 (Cons!56541 lt!2012718 Nil!56541))) (size!37277 lt!2012731))))))

(declare-fun b!4906567 () Bool)

(assert (=> b!4906567 (= e!3067038 lt!2012731)))

(assert (= (and d!1576914 c!834008) b!4906567))

(assert (= (and d!1576914 (not c!834008)) b!4906568))

(assert (= (and d!1576914 res!2095863) b!4906569))

(assert (= (and b!4906569 res!2095864) b!4906570))

(declare-fun m!5916076 () Bool)

(assert (=> b!4906568 m!5916076))

(declare-fun m!5916078 () Bool)

(assert (=> d!1576914 m!5916078))

(assert (=> d!1576914 m!5915398))

(declare-fun m!5916080 () Bool)

(assert (=> d!1576914 m!5916080))

(declare-fun m!5916082 () Bool)

(assert (=> d!1576914 m!5916082))

(declare-fun m!5916084 () Bool)

(assert (=> b!4906569 m!5916084))

(assert (=> b!4906569 m!5915398))

(declare-fun m!5916086 () Bool)

(assert (=> b!4906569 m!5916086))

(declare-fun m!5916088 () Bool)

(assert (=> b!4906569 m!5916088))

(assert (=> b!4906033 d!1576914))

(declare-fun b!4906572 () Bool)

(declare-fun e!3067040 () List!56665)

(assert (=> b!4906572 (= e!3067040 (Cons!56541 (h!62989 Nil!56541) (++!12262 (t!366837 Nil!56541) (Cons!56541 lt!2012718 Nil!56541))))))

(declare-fun b!4906574 () Bool)

(declare-fun e!3067041 () Bool)

(declare-fun lt!2012998 () List!56665)

(assert (=> b!4906574 (= e!3067041 (or (not (= (Cons!56541 lt!2012718 Nil!56541) Nil!56541)) (= lt!2012998 Nil!56541)))))

(declare-fun d!1576916 () Bool)

(assert (=> d!1576916 e!3067041))

(declare-fun res!2095865 () Bool)

(assert (=> d!1576916 (=> (not res!2095865) (not e!3067041))))

(assert (=> d!1576916 (= res!2095865 (= (content!10039 lt!2012998) (set.union (content!10039 Nil!56541) (content!10039 (Cons!56541 lt!2012718 Nil!56541)))))))

(assert (=> d!1576916 (= lt!2012998 e!3067040)))

(declare-fun c!834009 () Bool)

(assert (=> d!1576916 (= c!834009 (is-Nil!56541 Nil!56541))))

(assert (=> d!1576916 (= (++!12262 Nil!56541 (Cons!56541 lt!2012718 Nil!56541)) lt!2012998)))

(declare-fun b!4906573 () Bool)

(declare-fun res!2095866 () Bool)

(assert (=> b!4906573 (=> (not res!2095866) (not e!3067041))))

(assert (=> b!4906573 (= res!2095866 (= (size!37277 lt!2012998) (+ (size!37277 Nil!56541) (size!37277 (Cons!56541 lt!2012718 Nil!56541)))))))

(declare-fun b!4906571 () Bool)

(assert (=> b!4906571 (= e!3067040 (Cons!56541 lt!2012718 Nil!56541))))

(assert (= (and d!1576916 c!834009) b!4906571))

(assert (= (and d!1576916 (not c!834009)) b!4906572))

(assert (= (and d!1576916 res!2095865) b!4906573))

(assert (= (and b!4906573 res!2095866) b!4906574))

(declare-fun m!5916090 () Bool)

(assert (=> b!4906572 m!5916090))

(declare-fun m!5916092 () Bool)

(assert (=> d!1576916 m!5916092))

(assert (=> d!1576916 m!5915904))

(declare-fun m!5916094 () Bool)

(assert (=> d!1576916 m!5916094))

(declare-fun m!5916096 () Bool)

(assert (=> b!4906573 m!5916096))

(assert (=> b!4906573 m!5915226))

(declare-fun m!5916098 () Bool)

(assert (=> b!4906573 m!5916098))

(assert (=> b!4906033 d!1576916))

(assert (=> b!4906033 d!1576684))

(declare-fun d!1576918 () Bool)

(assert (=> d!1576918 (isPrefix!4915 (++!12262 Nil!56541 (Cons!56541 (head!10475 (getSuffix!2903 lt!2012604 Nil!56541)) Nil!56541)) lt!2012604)))

(declare-fun lt!2013001 () Unit!146712)

(declare-fun choose!35861 (List!56665 List!56665) Unit!146712)

(assert (=> d!1576918 (= lt!2013001 (choose!35861 Nil!56541 lt!2012604))))

(assert (=> d!1576918 (isPrefix!4915 Nil!56541 lt!2012604)))

(assert (=> d!1576918 (= (lemmaAddHeadSuffixToPrefixStillPrefix!728 Nil!56541 lt!2012604) lt!2013001)))

(declare-fun bs!1177137 () Bool)

(assert (= bs!1177137 d!1576918))

(assert (=> bs!1177137 m!5915392))

(assert (=> bs!1177137 m!5915898))

(declare-fun m!5916100 () Bool)

(assert (=> bs!1177137 m!5916100))

(assert (=> bs!1177137 m!5915392))

(assert (=> bs!1177137 m!5915394))

(assert (=> bs!1177137 m!5915396))

(assert (=> bs!1177137 m!5915396))

(assert (=> bs!1177137 m!5915406))

(assert (=> b!4906033 d!1576918))

(declare-fun b!4906576 () Bool)

(declare-fun e!3067042 () List!56665)

(assert (=> b!4906576 (= e!3067042 (Cons!56541 (h!62989 Nil!56541) (++!12262 (t!366837 Nil!56541) (Cons!56541 (head!10475 lt!2012604) Nil!56541))))))

(declare-fun b!4906578 () Bool)

(declare-fun e!3067043 () Bool)

(declare-fun lt!2013002 () List!56665)

(assert (=> b!4906578 (= e!3067043 (or (not (= (Cons!56541 (head!10475 lt!2012604) Nil!56541) Nil!56541)) (= lt!2013002 Nil!56541)))))

(declare-fun d!1576920 () Bool)

(assert (=> d!1576920 e!3067043))

(declare-fun res!2095867 () Bool)

(assert (=> d!1576920 (=> (not res!2095867) (not e!3067043))))

(assert (=> d!1576920 (= res!2095867 (= (content!10039 lt!2013002) (set.union (content!10039 Nil!56541) (content!10039 (Cons!56541 (head!10475 lt!2012604) Nil!56541)))))))

(assert (=> d!1576920 (= lt!2013002 e!3067042)))

(declare-fun c!834010 () Bool)

(assert (=> d!1576920 (= c!834010 (is-Nil!56541 Nil!56541))))

(assert (=> d!1576920 (= (++!12262 Nil!56541 (Cons!56541 (head!10475 lt!2012604) Nil!56541)) lt!2013002)))

(declare-fun b!4906577 () Bool)

(declare-fun res!2095868 () Bool)

(assert (=> b!4906577 (=> (not res!2095868) (not e!3067043))))

(assert (=> b!4906577 (= res!2095868 (= (size!37277 lt!2013002) (+ (size!37277 Nil!56541) (size!37277 (Cons!56541 (head!10475 lt!2012604) Nil!56541)))))))

(declare-fun b!4906575 () Bool)

(assert (=> b!4906575 (= e!3067042 (Cons!56541 (head!10475 lt!2012604) Nil!56541))))

(assert (= (and d!1576920 c!834010) b!4906575))

(assert (= (and d!1576920 (not c!834010)) b!4906576))

(assert (= (and d!1576920 res!2095867) b!4906577))

(assert (= (and b!4906577 res!2095868) b!4906578))

(declare-fun m!5916102 () Bool)

(assert (=> b!4906576 m!5916102))

(declare-fun m!5916104 () Bool)

(assert (=> d!1576920 m!5916104))

(assert (=> d!1576920 m!5915904))

(declare-fun m!5916106 () Bool)

(assert (=> d!1576920 m!5916106))

(declare-fun m!5916108 () Bool)

(assert (=> b!4906577 m!5916108))

(assert (=> b!4906577 m!5915226))

(declare-fun m!5916110 () Bool)

(assert (=> b!4906577 m!5916110))

(assert (=> b!4906033 d!1576920))

(assert (=> b!4906033 d!1576868))

(declare-fun d!1576922 () Bool)

(assert (=> d!1576922 (<= (size!37277 Nil!56541) (size!37277 lt!2012604))))

(declare-fun lt!2013005 () Unit!146712)

(declare-fun choose!35862 (List!56665 List!56665) Unit!146712)

(assert (=> d!1576922 (= lt!2013005 (choose!35862 Nil!56541 lt!2012604))))

(assert (=> d!1576922 (isPrefix!4915 Nil!56541 lt!2012604)))

(assert (=> d!1576922 (= (lemmaIsPrefixThenSmallerEqSize!640 Nil!56541 lt!2012604) lt!2013005)))

(declare-fun bs!1177138 () Bool)

(assert (= bs!1177138 d!1576922))

(assert (=> bs!1177138 m!5915226))

(assert (=> bs!1177138 m!5915230))

(declare-fun m!5916112 () Bool)

(assert (=> bs!1177138 m!5916112))

(assert (=> bs!1177138 m!5915898))

(assert (=> b!4906033 d!1576922))

(assert (=> b!4906033 d!1576856))

(assert (=> b!4906033 d!1576766))

(declare-fun d!1576924 () Bool)

(assert (=> d!1576924 (= (head!10475 (getSuffix!2903 lt!2012604 Nil!56541)) (h!62989 (getSuffix!2903 lt!2012604 Nil!56541)))))

(assert (=> b!4906033 d!1576924))

(declare-fun d!1576926 () Bool)

(declare-fun e!3067046 () Bool)

(assert (=> d!1576926 e!3067046))

(declare-fun res!2095870 () Bool)

(assert (=> d!1576926 (=> res!2095870 e!3067046)))

(declare-fun lt!2013006 () Bool)

(assert (=> d!1576926 (= res!2095870 (not lt!2013006))))

(declare-fun e!3067045 () Bool)

(assert (=> d!1576926 (= lt!2013006 e!3067045)))

(declare-fun res!2095872 () Bool)

(assert (=> d!1576926 (=> res!2095872 e!3067045)))

(assert (=> d!1576926 (= res!2095872 (is-Nil!56541 (++!12262 Nil!56541 (Cons!56541 (head!10475 (getSuffix!2903 lt!2012604 Nil!56541)) Nil!56541))))))

(assert (=> d!1576926 (= (isPrefix!4915 (++!12262 Nil!56541 (Cons!56541 (head!10475 (getSuffix!2903 lt!2012604 Nil!56541)) Nil!56541)) lt!2012604) lt!2013006)))

(declare-fun b!4906582 () Bool)

(assert (=> b!4906582 (= e!3067046 (>= (size!37277 lt!2012604) (size!37277 (++!12262 Nil!56541 (Cons!56541 (head!10475 (getSuffix!2903 lt!2012604 Nil!56541)) Nil!56541)))))))

(declare-fun b!4906579 () Bool)

(declare-fun e!3067044 () Bool)

(assert (=> b!4906579 (= e!3067045 e!3067044)))

(declare-fun res!2095869 () Bool)

(assert (=> b!4906579 (=> (not res!2095869) (not e!3067044))))

(assert (=> b!4906579 (= res!2095869 (not (is-Nil!56541 lt!2012604)))))

(declare-fun b!4906580 () Bool)

(declare-fun res!2095871 () Bool)

(assert (=> b!4906580 (=> (not res!2095871) (not e!3067044))))

(assert (=> b!4906580 (= res!2095871 (= (head!10475 (++!12262 Nil!56541 (Cons!56541 (head!10475 (getSuffix!2903 lt!2012604 Nil!56541)) Nil!56541))) (head!10475 lt!2012604)))))

(declare-fun b!4906581 () Bool)

(assert (=> b!4906581 (= e!3067044 (isPrefix!4915 (tail!9622 (++!12262 Nil!56541 (Cons!56541 (head!10475 (getSuffix!2903 lt!2012604 Nil!56541)) Nil!56541))) (tail!9622 lt!2012604)))))

(assert (= (and d!1576926 (not res!2095872)) b!4906579))

(assert (= (and b!4906579 res!2095869) b!4906580))

(assert (= (and b!4906580 res!2095871) b!4906581))

(assert (= (and d!1576926 (not res!2095870)) b!4906582))

(assert (=> b!4906582 m!5915230))

(assert (=> b!4906582 m!5915392))

(declare-fun m!5916114 () Bool)

(assert (=> b!4906582 m!5916114))

(assert (=> b!4906580 m!5915392))

(declare-fun m!5916116 () Bool)

(assert (=> b!4906580 m!5916116))

(assert (=> b!4906580 m!5915382))

(assert (=> b!4906581 m!5915392))

(declare-fun m!5916118 () Bool)

(assert (=> b!4906581 m!5916118))

(assert (=> b!4906581 m!5915374))

(assert (=> b!4906581 m!5916118))

(assert (=> b!4906581 m!5915374))

(declare-fun m!5916120 () Bool)

(assert (=> b!4906581 m!5916120))

(assert (=> b!4906033 d!1576926))

(declare-fun d!1576928 () Bool)

(assert (=> d!1576928 (= (++!12262 (++!12262 Nil!56541 (Cons!56541 lt!2012718 Nil!56541)) lt!2012731) lt!2012604)))

(declare-fun lt!2013009 () Unit!146712)

(declare-fun choose!35863 (List!56665 C!26814 List!56665 List!56665) Unit!146712)

(assert (=> d!1576928 (= lt!2013009 (choose!35863 Nil!56541 lt!2012718 lt!2012731 lt!2012604))))

(assert (=> d!1576928 (= (++!12262 Nil!56541 (Cons!56541 lt!2012718 lt!2012731)) lt!2012604)))

(assert (=> d!1576928 (= (lemmaMoveElementToOtherListKeepsConcatEq!1346 Nil!56541 lt!2012718 lt!2012731 lt!2012604) lt!2013009)))

(declare-fun bs!1177139 () Bool)

(assert (= bs!1177139 d!1576928))

(assert (=> bs!1177139 m!5915398))

(assert (=> bs!1177139 m!5915398))

(assert (=> bs!1177139 m!5915400))

(declare-fun m!5916122 () Bool)

(assert (=> bs!1177139 m!5916122))

(declare-fun m!5916124 () Bool)

(assert (=> bs!1177139 m!5916124))

(assert (=> b!4906033 d!1576928))

(declare-fun d!1576930 () Bool)

(assert (=> d!1576930 (= (inv!73013 (xs!18117 (c!833851 input!1509))) (<= (size!37277 (innerList!14889 (xs!18117 (c!833851 input!1509)))) 2147483647))))

(declare-fun bs!1177140 () Bool)

(assert (= bs!1177140 d!1576930))

(declare-fun m!5916126 () Bool)

(assert (=> bs!1177140 m!5916126))

(assert (=> b!4906173 d!1576930))

(assert (=> b!4905922 d!1576884))

(declare-fun e!3067047 () Bool)

(assert (=> b!4906162 (= tp!1380068 e!3067047)))

(declare-fun b!4906585 () Bool)

(declare-fun tp!1380122 () Bool)

(assert (=> b!4906585 (= e!3067047 tp!1380122)))

(declare-fun b!4906583 () Bool)

(assert (=> b!4906583 (= e!3067047 tp_is_empty!35825)))

(declare-fun b!4906586 () Bool)

(declare-fun tp!1380123 () Bool)

(declare-fun tp!1380124 () Bool)

(assert (=> b!4906586 (= e!3067047 (and tp!1380123 tp!1380124))))

(declare-fun b!4906584 () Bool)

(declare-fun tp!1380121 () Bool)

(declare-fun tp!1380120 () Bool)

(assert (=> b!4906584 (= e!3067047 (and tp!1380121 tp!1380120))))

(assert (= (and b!4906162 (is-ElementMatch!13308 (reg!13637 (regex!8233 rule!164)))) b!4906583))

(assert (= (and b!4906162 (is-Concat!21851 (reg!13637 (regex!8233 rule!164)))) b!4906584))

(assert (= (and b!4906162 (is-Star!13308 (reg!13637 (regex!8233 rule!164)))) b!4906585))

(assert (= (and b!4906162 (is-Union!13308 (reg!13637 (regex!8233 rule!164)))) b!4906586))

(declare-fun b!4906591 () Bool)

(declare-fun e!3067050 () Bool)

(declare-fun tp!1380127 () Bool)

(assert (=> b!4906591 (= e!3067050 (and tp_is_empty!35825 tp!1380127))))

(assert (=> b!4906174 (= tp!1380077 e!3067050)))

(assert (= (and b!4906174 (is-Cons!56541 (innerList!14889 (xs!18117 (c!833851 input!1509))))) b!4906591))

(declare-fun e!3067051 () Bool)

(assert (=> b!4906161 (= tp!1380067 e!3067051)))

(declare-fun b!4906594 () Bool)

(declare-fun tp!1380130 () Bool)

(assert (=> b!4906594 (= e!3067051 tp!1380130)))

(declare-fun b!4906592 () Bool)

(assert (=> b!4906592 (= e!3067051 tp_is_empty!35825)))

(declare-fun b!4906595 () Bool)

(declare-fun tp!1380131 () Bool)

(declare-fun tp!1380132 () Bool)

(assert (=> b!4906595 (= e!3067051 (and tp!1380131 tp!1380132))))

(declare-fun b!4906593 () Bool)

(declare-fun tp!1380129 () Bool)

(declare-fun tp!1380128 () Bool)

(assert (=> b!4906593 (= e!3067051 (and tp!1380129 tp!1380128))))

(assert (= (and b!4906161 (is-ElementMatch!13308 (regOne!27128 (regex!8233 rule!164)))) b!4906592))

(assert (= (and b!4906161 (is-Concat!21851 (regOne!27128 (regex!8233 rule!164)))) b!4906593))

(assert (= (and b!4906161 (is-Star!13308 (regOne!27128 (regex!8233 rule!164)))) b!4906594))

(assert (= (and b!4906161 (is-Union!13308 (regOne!27128 (regex!8233 rule!164)))) b!4906595))

(declare-fun e!3067052 () Bool)

(assert (=> b!4906161 (= tp!1380066 e!3067052)))

(declare-fun b!4906598 () Bool)

(declare-fun tp!1380135 () Bool)

(assert (=> b!4906598 (= e!3067052 tp!1380135)))

(declare-fun b!4906596 () Bool)

(assert (=> b!4906596 (= e!3067052 tp_is_empty!35825)))

(declare-fun b!4906599 () Bool)

(declare-fun tp!1380136 () Bool)

(declare-fun tp!1380137 () Bool)

(assert (=> b!4906599 (= e!3067052 (and tp!1380136 tp!1380137))))

(declare-fun b!4906597 () Bool)

(declare-fun tp!1380134 () Bool)

(declare-fun tp!1380133 () Bool)

(assert (=> b!4906597 (= e!3067052 (and tp!1380134 tp!1380133))))

(assert (= (and b!4906161 (is-ElementMatch!13308 (regTwo!27128 (regex!8233 rule!164)))) b!4906596))

(assert (= (and b!4906161 (is-Concat!21851 (regTwo!27128 (regex!8233 rule!164)))) b!4906597))

(assert (= (and b!4906161 (is-Star!13308 (regTwo!27128 (regex!8233 rule!164)))) b!4906598))

(assert (= (and b!4906161 (is-Union!13308 (regTwo!27128 (regex!8233 rule!164)))) b!4906599))

(declare-fun tp!1380139 () Bool)

(declare-fun e!3067054 () Bool)

(declare-fun b!4906600 () Bool)

(declare-fun tp!1380140 () Bool)

(assert (=> b!4906600 (= e!3067054 (and (inv!73006 (left!41162 (left!41162 (c!833851 input!1509)))) tp!1380140 (inv!73006 (right!41492 (left!41162 (c!833851 input!1509)))) tp!1380139))))

(declare-fun b!4906602 () Bool)

(declare-fun e!3067053 () Bool)

(declare-fun tp!1380138 () Bool)

(assert (=> b!4906602 (= e!3067053 tp!1380138)))

(declare-fun b!4906601 () Bool)

(assert (=> b!4906601 (= e!3067054 (and (inv!73013 (xs!18117 (left!41162 (c!833851 input!1509)))) e!3067053))))

(assert (=> b!4906172 (= tp!1380079 (and (inv!73006 (left!41162 (c!833851 input!1509))) e!3067054))))

(assert (= (and b!4906172 (is-Node!14801 (left!41162 (c!833851 input!1509)))) b!4906600))

(assert (= b!4906601 b!4906602))

(assert (= (and b!4906172 (is-Leaf!24635 (left!41162 (c!833851 input!1509)))) b!4906601))

(declare-fun m!5916128 () Bool)

(assert (=> b!4906600 m!5916128))

(declare-fun m!5916130 () Bool)

(assert (=> b!4906600 m!5916130))

(declare-fun m!5916132 () Bool)

(assert (=> b!4906601 m!5916132))

(assert (=> b!4906172 m!5915512))

(declare-fun tp!1380142 () Bool)

(declare-fun tp!1380143 () Bool)

(declare-fun e!3067056 () Bool)

(declare-fun b!4906603 () Bool)

(assert (=> b!4906603 (= e!3067056 (and (inv!73006 (left!41162 (right!41492 (c!833851 input!1509)))) tp!1380143 (inv!73006 (right!41492 (right!41492 (c!833851 input!1509)))) tp!1380142))))

(declare-fun b!4906605 () Bool)

(declare-fun e!3067055 () Bool)

(declare-fun tp!1380141 () Bool)

(assert (=> b!4906605 (= e!3067055 tp!1380141)))

(declare-fun b!4906604 () Bool)

(assert (=> b!4906604 (= e!3067056 (and (inv!73013 (xs!18117 (right!41492 (c!833851 input!1509)))) e!3067055))))

(assert (=> b!4906172 (= tp!1380078 (and (inv!73006 (right!41492 (c!833851 input!1509))) e!3067056))))

(assert (= (and b!4906172 (is-Node!14801 (right!41492 (c!833851 input!1509)))) b!4906603))

(assert (= b!4906604 b!4906605))

(assert (= (and b!4906172 (is-Leaf!24635 (right!41492 (c!833851 input!1509)))) b!4906604))

(declare-fun m!5916134 () Bool)

(assert (=> b!4906603 m!5916134))

(declare-fun m!5916136 () Bool)

(assert (=> b!4906603 m!5916136))

(declare-fun m!5916138 () Bool)

(assert (=> b!4906604 m!5916138))

(assert (=> b!4906172 m!5915514))

(declare-fun tp!1380145 () Bool)

(declare-fun b!4906606 () Bool)

(declare-fun tp!1380146 () Bool)

(declare-fun e!3067058 () Bool)

(assert (=> b!4906606 (= e!3067058 (and (inv!73006 (left!41162 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608)))))) tp!1380146 (inv!73006 (right!41492 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608)))))) tp!1380145))))

(declare-fun b!4906608 () Bool)

(declare-fun e!3067057 () Bool)

(declare-fun tp!1380144 () Bool)

(assert (=> b!4906608 (= e!3067057 tp!1380144)))

(declare-fun b!4906607 () Bool)

(assert (=> b!4906607 (= e!3067058 (and (inv!73013 (xs!18117 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608)))))) e!3067057))))

(assert (=> b!4906179 (= tp!1380082 (and (inv!73006 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608))))) e!3067058))))

(assert (= (and b!4906179 (is-Node!14801 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608)))))) b!4906606))

(assert (= b!4906607 b!4906608))

(assert (= (and b!4906179 (is-Leaf!24635 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) (_1!33702 lt!2012608)))))) b!4906607))

(declare-fun m!5916140 () Bool)

(assert (=> b!4906606 m!5916140))

(declare-fun m!5916142 () Bool)

(assert (=> b!4906606 m!5916142))

(declare-fun m!5916144 () Bool)

(assert (=> b!4906607 m!5916144))

(assert (=> b!4906179 m!5915518))

(declare-fun e!3067059 () Bool)

(assert (=> b!4906163 (= tp!1380069 e!3067059)))

(declare-fun b!4906611 () Bool)

(declare-fun tp!1380149 () Bool)

(assert (=> b!4906611 (= e!3067059 tp!1380149)))

(declare-fun b!4906609 () Bool)

(assert (=> b!4906609 (= e!3067059 tp_is_empty!35825)))

(declare-fun b!4906612 () Bool)

(declare-fun tp!1380150 () Bool)

(declare-fun tp!1380151 () Bool)

(assert (=> b!4906612 (= e!3067059 (and tp!1380150 tp!1380151))))

(declare-fun b!4906610 () Bool)

(declare-fun tp!1380148 () Bool)

(declare-fun tp!1380147 () Bool)

(assert (=> b!4906610 (= e!3067059 (and tp!1380148 tp!1380147))))

(assert (= (and b!4906163 (is-ElementMatch!13308 (regOne!27129 (regex!8233 rule!164)))) b!4906609))

(assert (= (and b!4906163 (is-Concat!21851 (regOne!27129 (regex!8233 rule!164)))) b!4906610))

(assert (= (and b!4906163 (is-Star!13308 (regOne!27129 (regex!8233 rule!164)))) b!4906611))

(assert (= (and b!4906163 (is-Union!13308 (regOne!27129 (regex!8233 rule!164)))) b!4906612))

(declare-fun e!3067060 () Bool)

(assert (=> b!4906163 (= tp!1380070 e!3067060)))

(declare-fun b!4906615 () Bool)

(declare-fun tp!1380154 () Bool)

(assert (=> b!4906615 (= e!3067060 tp!1380154)))

(declare-fun b!4906613 () Bool)

(assert (=> b!4906613 (= e!3067060 tp_is_empty!35825)))

(declare-fun b!4906616 () Bool)

(declare-fun tp!1380155 () Bool)

(declare-fun tp!1380156 () Bool)

(assert (=> b!4906616 (= e!3067060 (and tp!1380155 tp!1380156))))

(declare-fun b!4906614 () Bool)

(declare-fun tp!1380153 () Bool)

(declare-fun tp!1380152 () Bool)

(assert (=> b!4906614 (= e!3067060 (and tp!1380153 tp!1380152))))

(assert (= (and b!4906163 (is-ElementMatch!13308 (regTwo!27129 (regex!8233 rule!164)))) b!4906613))

(assert (= (and b!4906163 (is-Concat!21851 (regTwo!27129 (regex!8233 rule!164)))) b!4906614))

(assert (= (and b!4906163 (is-Star!13308 (regTwo!27129 (regex!8233 rule!164)))) b!4906615))

(assert (= (and b!4906163 (is-Union!13308 (regTwo!27129 (regex!8233 rule!164)))) b!4906616))

(declare-fun b!4906617 () Bool)

(declare-fun tp!1380159 () Bool)

(declare-fun e!3067062 () Bool)

(declare-fun tp!1380158 () Bool)

(assert (=> b!4906617 (= e!3067062 (and (inv!73006 (left!41162 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) lt!2012605))))) tp!1380159 (inv!73006 (right!41492 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) lt!2012605))))) tp!1380158))))

(declare-fun b!4906619 () Bool)

(declare-fun e!3067061 () Bool)

(declare-fun tp!1380157 () Bool)

(assert (=> b!4906619 (= e!3067061 tp!1380157)))

(declare-fun b!4906618 () Bool)

(assert (=> b!4906618 (= e!3067062 (and (inv!73013 (xs!18117 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) lt!2012605))))) e!3067061))))

(assert (=> b!4906180 (= tp!1380083 (and (inv!73006 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) lt!2012605)))) e!3067062))))

(assert (= (and b!4906180 (is-Node!14801 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) lt!2012605))))) b!4906617))

(assert (= b!4906618 b!4906619))

(assert (= (and b!4906180 (is-Leaf!24635 (c!833851 (dynLambda!22831 (toChars!11015 (transformation!8233 rule!164)) (dynLambda!22830 (toValue!11156 (transformation!8233 rule!164)) lt!2012605))))) b!4906618))

(declare-fun m!5916146 () Bool)

(assert (=> b!4906617 m!5916146))

(declare-fun m!5916148 () Bool)

(assert (=> b!4906617 m!5916148))

(declare-fun m!5916150 () Bool)

(assert (=> b!4906618 m!5916150))

(assert (=> b!4906180 m!5915526))

(declare-fun b_lambda!195455 () Bool)

(assert (= b_lambda!195437 (or (and b!4905870 b_free!131905) b_lambda!195455)))

(declare-fun b_lambda!195457 () Bool)

(assert (= b_lambda!195445 (or b!4905867 b_lambda!195457)))

(assert (=> d!1576858 d!1576720))

(declare-fun b_lambda!195459 () Bool)

(assert (= b_lambda!195439 (or (and b!4905870 b_free!131903) b_lambda!195459)))

(declare-fun b_lambda!195461 () Bool)

(assert (= b_lambda!195441 (or b!4905867 b_lambda!195461)))

(assert (=> d!1576820 d!1576718))

(declare-fun b_lambda!195463 () Bool)

(assert (= b_lambda!195435 (or (and b!4905870 b_free!131903) b_lambda!195463)))

(push 1)

(assert (not b!4906572))

(assert (not b!4906327))

(assert (not b!4906498))

(assert (not b!4906599))

(assert (not b!4906597))

(assert (not b!4906551))

(assert (not b!4906450))

(assert (not bm!340494))

(assert (not b!4906394))

(assert (not bm!340515))

(assert (not d!1576870))

(assert (not b!4906606))

(assert (not bm!340487))

(assert (not b!4906312))

(assert (not d!1576788))

(assert (not d!1576764))

(assert (not b!4906601))

(assert (not d!1576918))

(assert (not d!1576920))

(assert (not b_lambda!195429))

(assert (not b!4906374))

(assert (not d!1576922))

(assert (not b!4906586))

(assert (not d!1576860))

(assert (not d!1576910))

(assert (not b!4906580))

(assert (not b_lambda!195425))

(assert (not b!4906615))

(assert (not b!4906543))

(assert (not b!4906608))

(assert (not b!4906603))

(assert (not b_lambda!195433))

(assert (not b!4906591))

(assert (not b_lambda!195463))

(assert (not tb!259927))

(assert (not d!1576930))

(assert (not b!4906584))

(assert (not b!4906466))

(assert (not b!4906379))

(assert (not b!4906395))

(assert (not b!4906419))

(assert (not d!1576790))

(assert (not b!4906422))

(assert (not b_lambda!195395))

(assert (not b!4906569))

(assert (not b!4906315))

(assert (not b_lambda!195443))

(assert (not b!4906421))

(assert (not b!4906392))

(assert (not d!1576876))

(assert (not d!1576786))

(assert (not b!4906517))

(assert (not b!4906334))

(assert (not b!4906600))

(assert (not b!4906459))

(assert (not d!1576760))

(assert (not d!1576888))

(assert (not b!4906284))

(assert (not d!1576864))

(assert (not d!1576890))

(assert (not d!1576848))

(assert (not b!4906403))

(assert (not tb!259929))

(assert (not d!1576798))

(assert (not b!4906516))

(assert (not bm!340513))

(assert (not d!1576908))

(assert (not b!4906437))

(assert (not bm!340517))

(assert (not b!4906288))

(assert (not b!4906561))

(assert (not d!1576832))

(assert (not b!4906605))

(assert (not bm!340512))

(assert (not d!1576762))

(assert (not b!4906425))

(assert (not b!4906536))

(assert (not b!4906474))

(assert (not bm!340506))

(assert (not b!4906548))

(assert (not d!1576884))

(assert (not b_lambda!195391))

(assert (not b_lambda!195427))

(assert (not b!4906581))

(assert (not d!1576776))

(assert (not b!4906301))

(assert (not d!1576768))

(assert (not b!4906396))

(assert (not b!4906617))

(assert (not b!4906604))

(assert (not b!4906393))

(assert (not d!1576806))

(assert (not b!4906477))

(assert (not b!4906577))

(assert (not d!1576928))

(assert (not d!1576914))

(assert (not d!1576912))

(assert (not b_lambda!195455))

(assert (not d!1576904))

(assert (not bm!340509))

(assert (not b!4906546))

(assert (not b_next!132693))

(assert (not d!1576882))

(assert (not b!4906537))

(assert (not bm!340521))

(assert (not b!4906610))

(assert (not b!4906366))

(assert (not bm!340516))

(assert (not b_lambda!195457))

(assert (not b!4906415))

(assert (not b!4906402))

(assert (not d!1576916))

(assert (not d!1576780))

(assert (not b!4906460))

(assert (not b!4906346))

(assert (not b!4906616))

(assert (not b!4906313))

(assert (not b!4906554))

(assert (not d!1576872))

(assert (not b!4906172))

(assert (not b!4906376))

(assert (not b!4906463))

(assert (not b_next!132695))

(assert (not b!4906614))

(assert (not d!1576812))

(assert (not b!4906304))

(assert (not b_lambda!195431))

(assert (not b!4906593))

(assert (not b!4906418))

(assert (not b!4906295))

(assert (not b!4906476))

(assert (not b!4906414))

(assert (not bm!340486))

(assert (not b!4906540))

(assert (not b!4906342))

(assert (not b!4906427))

(assert (not d!1576886))

(assert (not b!4906424))

(assert (not b!4906513))

(assert (not b!4906576))

(assert (not b!4906611))

(assert (not d!1576804))

(assert (not b!4906311))

(assert (not b!4906595))

(assert (not bm!340496))

(assert (not b_lambda!195461))

(assert (not d!1576818))

(assert (not b!4906526))

(assert (not d!1576784))

(assert (not b!4906607))

(assert (not b!4906544))

(assert (not b!4906179))

(assert (not b!4906297))

(assert (not d!1576822))

(assert (not bm!340514))

(assert (not d!1576866))

(assert (not b!4906602))

(assert (not b!4906550))

(assert (not b!4906556))

(assert (not b!4906562))

(assert (not b!4906564))

(assert (not bm!340497))

(assert (not b_lambda!195393))

(assert (not b!4906328))

(assert (not b!4906397))

(assert (not tb!259931))

(assert (not b!4906456))

(assert (not d!1576844))

(assert (not b!4906582))

(assert (not b!4906438))

(assert (not b!4906618))

(assert (not d!1576906))

(assert (not b!4906475))

(assert (not b!4906473))

(assert (not bm!340510))

(assert (not b!4906619))

(assert (not b!4906565))

(assert tp_is_empty!35825)

(assert (not bm!340511))

(assert (not b!4906298))

(assert (not b!4906598))

(assert b_and!346407)

(assert (not bm!340518))

(assert (not b!4906519))

(assert (not b!4906612))

(assert (not b!4906449))

(assert (not b!4906555))

(assert (not tb!259933))

(assert (not b!4906594))

(assert (not d!1576810))

(assert (not b!4906180))

(assert (not d!1576826))

(assert (not b!4906316))

(assert (not b!4906296))

(assert (not b!4906451))

(assert (not b!4906573))

(assert (not b_lambda!195459))

(assert (not d!1576868))

(assert (not b!4906314))

(assert (not b!4906568))

(assert (not d!1576878))

(assert (not d!1576900))

(assert (not b!4906399))

(assert (not b!4906585))

(assert (not b!4906299))

(assert b_and!346411)

(check-sat)

(pop 1)

(push 1)

(assert b_and!346407)

(assert b_and!346411)

(assert (not b_next!132695))

(assert (not b_next!132693))

(check-sat)

(pop 1)

