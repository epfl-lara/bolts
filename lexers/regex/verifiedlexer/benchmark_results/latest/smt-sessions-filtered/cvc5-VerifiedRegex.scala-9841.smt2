; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!515122 () Bool)

(assert start!515122)

(declare-fun b!4909906 () Bool)

(declare-fun b_free!131967 () Bool)

(declare-fun b_next!132757 () Bool)

(assert (=> b!4909906 (= b_free!131967 (not b_next!132757))))

(declare-fun tp!1380721 () Bool)

(declare-fun b_and!346671 () Bool)

(assert (=> b!4909906 (= tp!1380721 b_and!346671)))

(declare-fun b_free!131969 () Bool)

(declare-fun b_next!132759 () Bool)

(assert (=> b!4909906 (= b_free!131969 (not b_next!132759))))

(declare-fun tp!1380722 () Bool)

(declare-fun b_and!346673 () Bool)

(assert (=> b!4909906 (= tp!1380722 b_and!346673)))

(declare-fun b!4909914 () Bool)

(declare-fun e!3069010 () Bool)

(assert (=> b!4909914 (= e!3069010 true)))

(declare-fun b!4909913 () Bool)

(declare-fun e!3069009 () Bool)

(assert (=> b!4909913 (= e!3069009 e!3069010)))

(declare-fun b!4909897 () Bool)

(assert (=> b!4909897 e!3069009))

(assert (= b!4909913 b!4909914))

(assert (= b!4909897 b!4909913))

(declare-fun lambda!244693 () Int)

(declare-fun order!25881 () Int)

(declare-fun order!25879 () Int)

(declare-datatypes ((C!26846 0))(
  ( (C!26847 (val!22757 Int)) )
))
(declare-datatypes ((Regex!13324 0))(
  ( (ElementMatch!13324 (c!834580 C!26846)) (Concat!21883 (regOne!27160 Regex!13324) (regTwo!27160 Regex!13324)) (EmptyExpr!13324) (Star!13324 (reg!13653 Regex!13324)) (EmptyLang!13324) (Union!13324 (regOne!27161 Regex!13324) (regTwo!27161 Regex!13324)) )
))
(declare-datatypes ((String!64238 0))(
  ( (String!64239 (value!264204 String)) )
))
(declare-datatypes ((List!56696 0))(
  ( (Nil!56572) (Cons!56572 (h!63020 (_ BitVec 16)) (t!367004 List!56696)) )
))
(declare-datatypes ((TokenValue!8559 0))(
  ( (FloatLiteralValue!17118 (text!60358 List!56696)) (TokenValueExt!8558 (__x!34411 Int)) (Broken!42795 (value!264205 List!56696)) (Object!8682) (End!8559) (Def!8559) (Underscore!8559) (Match!8559) (Else!8559) (Error!8559) (Case!8559) (If!8559) (Extends!8559) (Abstract!8559) (Class!8559) (Val!8559) (DelimiterValue!17118 (del!8619 List!56696)) (KeywordValue!8565 (value!264206 List!56696)) (CommentValue!17118 (value!264207 List!56696)) (WhitespaceValue!17118 (value!264208 List!56696)) (IndentationValue!8559 (value!264209 List!56696)) (String!64240) (Int32!8559) (Broken!42796 (value!264210 List!56696)) (Boolean!8560) (Unit!146820) (OperatorValue!8562 (op!8619 List!56696)) (IdentifierValue!17118 (value!264211 List!56696)) (IdentifierValue!17119 (value!264212 List!56696)) (WhitespaceValue!17119 (value!264213 List!56696)) (True!17118) (False!17118) (Broken!42797 (value!264214 List!56696)) (Broken!42798 (value!264215 List!56696)) (True!17119) (RightBrace!8559) (RightBracket!8559) (Colon!8559) (Null!8559) (Comma!8559) (LeftBracket!8559) (False!17119) (LeftBrace!8559) (ImaginaryLiteralValue!8559 (text!60359 List!56696)) (StringLiteralValue!25677 (value!264216 List!56696)) (EOFValue!8559 (value!264217 List!56696)) (IdentValue!8559 (value!264218 List!56696)) (DelimiterValue!17119 (value!264219 List!56696)) (DedentValue!8559 (value!264220 List!56696)) (NewLineValue!8559 (value!264221 List!56696)) (IntegerValue!25677 (value!264222 (_ BitVec 32)) (text!60360 List!56696)) (IntegerValue!25678 (value!264223 Int) (text!60361 List!56696)) (Times!8559) (Or!8559) (Equal!8559) (Minus!8559) (Broken!42799 (value!264224 List!56696)) (And!8559) (Div!8559) (LessEqual!8559) (Mod!8559) (Concat!21884) (Not!8559) (Plus!8559) (SpaceValue!8559 (value!264225 List!56696)) (IntegerValue!25679 (value!264226 Int) (text!60362 List!56696)) (StringLiteralValue!25678 (text!60363 List!56696)) (FloatLiteralValue!17119 (text!60364 List!56696)) (BytesLiteralValue!8559 (value!264227 List!56696)) (CommentValue!17119 (value!264228 List!56696)) (StringLiteralValue!25679 (value!264229 List!56696)) (ErrorTokenValue!8559 (msg!8620 List!56696)) )
))
(declare-datatypes ((List!56697 0))(
  ( (Nil!56573) (Cons!56573 (h!63021 C!26846) (t!367005 List!56697)) )
))
(declare-datatypes ((IArray!29695 0))(
  ( (IArray!29696 (innerList!14905 List!56697)) )
))
(declare-datatypes ((Conc!14817 0))(
  ( (Node!14817 (left!41218 Conc!14817) (right!41548 Conc!14817) (csize!29864 Int) (cheight!15028 Int)) (Leaf!24659 (xs!18133 IArray!29695) (csize!29865 Int)) (Empty!14817) )
))
(declare-datatypes ((BalanceConc!29064 0))(
  ( (BalanceConc!29065 (c!834581 Conc!14817)) )
))
(declare-datatypes ((TokenValueInjection!16426 0))(
  ( (TokenValueInjection!16427 (toValue!11188 Int) (toChars!11047 Int)) )
))
(declare-datatypes ((Rule!16298 0))(
  ( (Rule!16299 (regex!8249 Regex!13324) (tag!9113 String!64238) (isSeparator!8249 Bool) (transformation!8249 TokenValueInjection!16426)) )
))
(declare-fun rule!164 () Rule!16298)

(declare-fun dynLambda!22924 (Int Int) Int)

(declare-fun dynLambda!22925 (Int Int) Int)

(assert (=> b!4909914 (< (dynLambda!22924 order!25879 (toValue!11188 (transformation!8249 rule!164))) (dynLambda!22925 order!25881 lambda!244693))))

(declare-fun order!25883 () Int)

(declare-fun dynLambda!22926 (Int Int) Int)

(assert (=> b!4909914 (< (dynLambda!22926 order!25883 (toChars!11047 (transformation!8249 rule!164))) (dynLambda!22925 order!25881 lambda!244693))))

(declare-fun b!4909892 () Bool)

(declare-fun e!3069001 () Bool)

(declare-fun e!3068996 () Bool)

(assert (=> b!4909892 (= e!3069001 e!3068996)))

(declare-fun res!2097338 () Bool)

(assert (=> b!4909892 (=> res!2097338 e!3068996)))

(declare-fun lt!2015309 () Bool)

(declare-datatypes ((Token!15026 0))(
  ( (Token!15027 (value!264230 TokenValue!8559) (rule!11463 Rule!16298) (size!37336 Int) (originalCharacters!8544 List!56697)) )
))
(declare-datatypes ((tuple2!60924 0))(
  ( (tuple2!60925 (_1!33765 Token!15026) (_2!33765 List!56697)) )
))
(declare-datatypes ((Option!14135 0))(
  ( (None!14134) (Some!14134 (v!50096 tuple2!60924)) )
))
(declare-fun lt!2015298 () Option!14135)

(declare-fun isDefined!11144 (Option!14135) Bool)

(assert (=> b!4909892 (= res!2097338 (not (= lt!2015309 (isDefined!11144 lt!2015298))))))

(declare-datatypes ((tuple2!60926 0))(
  ( (tuple2!60927 (_1!33766 Token!15026) (_2!33766 BalanceConc!29064)) )
))
(declare-datatypes ((Option!14136 0))(
  ( (None!14135) (Some!14135 (v!50097 tuple2!60926)) )
))
(declare-fun lt!2015299 () Option!14136)

(declare-fun isDefined!11145 (Option!14136) Bool)

(assert (=> b!4909892 (= lt!2015309 (isDefined!11145 lt!2015299))))

(declare-fun lt!2015301 () List!56697)

(declare-datatypes ((LexerInterface!7841 0))(
  ( (LexerInterfaceExt!7838 (__x!34412 Int)) (Lexer!7839) )
))
(declare-fun thiss!15943 () LexerInterface!7841)

(declare-fun maxPrefixOneRule!3586 (LexerInterface!7841 Rule!16298 List!56697) Option!14135)

(assert (=> b!4909892 (= lt!2015298 (maxPrefixOneRule!3586 thiss!15943 rule!164 lt!2015301))))

(declare-fun lt!2015304 () Token!15026)

(declare-datatypes ((tuple2!60928 0))(
  ( (tuple2!60929 (_1!33767 BalanceConc!29064) (_2!33767 BalanceConc!29064)) )
))
(declare-fun lt!2015311 () tuple2!60928)

(assert (=> b!4909892 (= lt!2015299 (Some!14135 (tuple2!60927 lt!2015304 (_2!33767 lt!2015311))))))

(declare-fun lt!2015296 () List!56697)

(declare-fun lt!2015313 () TokenValue!8559)

(declare-fun lt!2015297 () Int)

(assert (=> b!4909892 (= lt!2015304 (Token!15027 lt!2015313 rule!164 lt!2015297 lt!2015296))))

(declare-fun size!37337 (BalanceConc!29064) Int)

(assert (=> b!4909892 (= lt!2015297 (size!37337 (_1!33767 lt!2015311)))))

(declare-fun apply!13593 (TokenValueInjection!16426 BalanceConc!29064) TokenValue!8559)

(assert (=> b!4909892 (= lt!2015313 (apply!13593 (transformation!8249 rule!164) (_1!33767 lt!2015311)))))

(declare-datatypes ((Unit!146821 0))(
  ( (Unit!146822) )
))
(declare-fun lt!2015305 () Unit!146821)

(declare-fun lt!2015302 () BalanceConc!29064)

(declare-fun ForallOf!1186 (Int BalanceConc!29064) Unit!146821)

(assert (=> b!4909892 (= lt!2015305 (ForallOf!1186 lambda!244693 lt!2015302))))

(declare-fun seqFromList!5991 (List!56697) BalanceConc!29064)

(assert (=> b!4909892 (= lt!2015302 (seqFromList!5991 lt!2015296))))

(declare-fun list!17847 (BalanceConc!29064) List!56697)

(assert (=> b!4909892 (= lt!2015296 (list!17847 (_1!33767 lt!2015311)))))

(declare-fun lt!2015300 () Unit!146821)

(assert (=> b!4909892 (= lt!2015300 (ForallOf!1186 lambda!244693 (_1!33767 lt!2015311)))))

(declare-fun b!4909893 () Bool)

(declare-fun e!3069000 () Bool)

(declare-fun lt!2015308 () tuple2!60926)

(declare-fun lt!2015306 () tuple2!60924)

(assert (=> b!4909893 (= e!3069000 (= (list!17847 (_2!33766 lt!2015308)) (_2!33765 lt!2015306)))))

(declare-fun b!4909894 () Bool)

(declare-fun tp!1380720 () Bool)

(declare-fun e!3068999 () Bool)

(declare-fun e!3068994 () Bool)

(declare-fun inv!73113 (String!64238) Bool)

(declare-fun inv!73116 (TokenValueInjection!16426) Bool)

(assert (=> b!4909894 (= e!3068994 (and tp!1380720 (inv!73113 (tag!9113 rule!164)) (inv!73116 (transformation!8249 rule!164)) e!3068999))))

(declare-fun b!4909895 () Bool)

(declare-fun res!2097337 () Bool)

(assert (=> b!4909895 (=> res!2097337 e!3068996)))

(assert (=> b!4909895 (= res!2097337 (not (= (list!17847 lt!2015302) lt!2015296)))))

(declare-fun b!4909896 () Bool)

(declare-fun e!3068995 () Bool)

(assert (=> b!4909896 (= e!3068996 e!3068995)))

(declare-fun res!2097330 () Bool)

(assert (=> b!4909896 (=> res!2097330 e!3068995)))

(assert (=> b!4909896 (= res!2097330 (not (= (apply!13593 (transformation!8249 rule!164) lt!2015302) lt!2015313)))))

(declare-fun lt!2015303 () Unit!146821)

(declare-fun lemmaEqSameImage!1131 (TokenValueInjection!16426 BalanceConc!29064 BalanceConc!29064) Unit!146821)

(assert (=> b!4909896 (= lt!2015303 (lemmaEqSameImage!1131 (transformation!8249 rule!164) (_1!33767 lt!2015311) lt!2015302))))

(declare-fun res!2097329 () Bool)

(assert (=> b!4909897 (=> res!2097329 e!3069001)))

(declare-fun Forall!1746 (Int) Bool)

(assert (=> b!4909897 (= res!2097329 (not (Forall!1746 lambda!244693)))))

(declare-fun b!4909898 () Bool)

(declare-fun e!3069004 () Bool)

(assert (=> b!4909898 (= e!3069004 (not e!3069001))))

(declare-fun res!2097332 () Bool)

(assert (=> b!4909898 (=> res!2097332 e!3069001)))

(declare-fun semiInverseModEq!3650 (Int Int) Bool)

(assert (=> b!4909898 (= res!2097332 (not (semiInverseModEq!3650 (toChars!11047 (transformation!8249 rule!164)) (toValue!11188 (transformation!8249 rule!164)))))))

(declare-fun lt!2015307 () Unit!146821)

(declare-fun lemmaInv!1295 (TokenValueInjection!16426) Unit!146821)

(assert (=> b!4909898 (= lt!2015307 (lemmaInv!1295 (transformation!8249 rule!164)))))

(declare-fun e!3068998 () Bool)

(assert (=> b!4909898 e!3068998))

(declare-fun res!2097331 () Bool)

(assert (=> b!4909898 (=> res!2097331 e!3068998)))

(declare-datatypes ((tuple2!60930 0))(
  ( (tuple2!60931 (_1!33768 List!56697) (_2!33768 List!56697)) )
))
(declare-fun lt!2015310 () tuple2!60930)

(declare-fun isEmpty!30489 (List!56697) Bool)

(assert (=> b!4909898 (= res!2097331 (isEmpty!30489 (_1!33768 lt!2015310)))))

(declare-fun findLongestMatchInner!1812 (Regex!13324 List!56697 Int List!56697 List!56697 Int) tuple2!60930)

(declare-fun size!37338 (List!56697) Int)

(assert (=> b!4909898 (= lt!2015310 (findLongestMatchInner!1812 (regex!8249 rule!164) Nil!56573 (size!37338 Nil!56573) lt!2015301 lt!2015301 (size!37338 lt!2015301)))))

(declare-fun lt!2015312 () Unit!146821)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1775 (Regex!13324 List!56697) Unit!146821)

(assert (=> b!4909898 (= lt!2015312 (longestMatchIsAcceptedByMatchOrIsEmpty!1775 (regex!8249 rule!164) lt!2015301))))

(declare-fun input!1509 () BalanceConc!29064)

(assert (=> b!4909898 (= lt!2015301 (list!17847 input!1509))))

(declare-fun b!4909899 () Bool)

(declare-fun e!3068993 () Bool)

(assert (=> b!4909899 (= e!3068993 e!3069004)))

(declare-fun res!2097333 () Bool)

(assert (=> b!4909899 (=> (not res!2097333) (not e!3069004))))

(declare-fun isEmpty!30490 (BalanceConc!29064) Bool)

(assert (=> b!4909899 (= res!2097333 (not (isEmpty!30490 (_1!33767 lt!2015311))))))

(declare-fun findLongestMatchWithZipperSequence!337 (Regex!13324 BalanceConc!29064) tuple2!60928)

(assert (=> b!4909899 (= lt!2015311 (findLongestMatchWithZipperSequence!337 (regex!8249 rule!164) input!1509))))

(declare-fun b!4909900 () Bool)

(declare-fun res!2097336 () Bool)

(assert (=> b!4909900 (=> (not res!2097336) (not e!3068993))))

(declare-fun ruleValid!3746 (LexerInterface!7841 Rule!16298) Bool)

(assert (=> b!4909900 (= res!2097336 (ruleValid!3746 thiss!15943 rule!164))))

(declare-fun b!4909901 () Bool)

(declare-fun e!3069003 () Bool)

(assert (=> b!4909901 (= e!3068995 e!3069003)))

(declare-fun res!2097339 () Bool)

(assert (=> b!4909901 (=> res!2097339 e!3069003)))

(assert (=> b!4909901 (= res!2097339 (or (not (= (value!264230 (_1!33765 lt!2015306)) lt!2015313)) (not (= (rule!11463 (_1!33765 lt!2015306)) rule!164)) (not (= (size!37336 (_1!33765 lt!2015306)) lt!2015297)) (not (= (originalCharacters!8544 (_1!33765 lt!2015306)) lt!2015296)) (not (= lt!2015304 (_1!33765 lt!2015306)))))))

(declare-fun get!19582 (Option!14135) tuple2!60924)

(assert (=> b!4909901 (= lt!2015306 (get!19582 lt!2015298))))

(declare-fun b!4909903 () Bool)

(declare-fun matchR!6591 (Regex!13324 List!56697) Bool)

(assert (=> b!4909903 (= e!3068998 (matchR!6591 (regex!8249 rule!164) (_1!33768 lt!2015310)))))

(declare-fun b!4909904 () Bool)

(declare-fun res!2097334 () Bool)

(assert (=> b!4909904 (=> res!2097334 e!3068996)))

(assert (=> b!4909904 (= res!2097334 (not lt!2015309))))

(declare-fun b!4909905 () Bool)

(assert (=> b!4909905 (= e!3069003 e!3069000)))

(declare-fun res!2097335 () Bool)

(assert (=> b!4909905 (=> res!2097335 e!3069000)))

(assert (=> b!4909905 (= res!2097335 (not (= (_1!33766 lt!2015308) (_1!33765 lt!2015306))))))

(declare-fun get!19583 (Option!14136) tuple2!60926)

(assert (=> b!4909905 (= lt!2015308 (get!19583 lt!2015299))))

(assert (=> b!4909906 (= e!3068999 (and tp!1380721 tp!1380722))))

(declare-fun b!4909902 () Bool)

(declare-fun e!3069002 () Bool)

(declare-fun tp!1380723 () Bool)

(declare-fun inv!73117 (Conc!14817) Bool)

(assert (=> b!4909902 (= e!3069002 (and (inv!73117 (c!834581 input!1509)) tp!1380723))))

(declare-fun res!2097340 () Bool)

(assert (=> start!515122 (=> (not res!2097340) (not e!3068993))))

(assert (=> start!515122 (= res!2097340 (is-Lexer!7839 thiss!15943))))

(assert (=> start!515122 e!3068993))

(assert (=> start!515122 true))

(assert (=> start!515122 e!3068994))

(declare-fun inv!73118 (BalanceConc!29064) Bool)

(assert (=> start!515122 (and (inv!73118 input!1509) e!3069002)))

(assert (= (and start!515122 res!2097340) b!4909900))

(assert (= (and b!4909900 res!2097336) b!4909899))

(assert (= (and b!4909899 res!2097333) b!4909898))

(assert (= (and b!4909898 (not res!2097331)) b!4909903))

(assert (= (and b!4909898 (not res!2097332)) b!4909897))

(assert (= (and b!4909897 (not res!2097329)) b!4909892))

(assert (= (and b!4909892 (not res!2097338)) b!4909904))

(assert (= (and b!4909904 (not res!2097334)) b!4909895))

(assert (= (and b!4909895 (not res!2097337)) b!4909896))

(assert (= (and b!4909896 (not res!2097330)) b!4909901))

(assert (= (and b!4909901 (not res!2097339)) b!4909905))

(assert (= (and b!4909905 (not res!2097335)) b!4909893))

(assert (= b!4909894 b!4909906))

(assert (= start!515122 b!4909894))

(assert (= start!515122 b!4909902))

(declare-fun m!5919702 () Bool)

(assert (=> start!515122 m!5919702))

(declare-fun m!5919704 () Bool)

(assert (=> b!4909898 m!5919704))

(declare-fun m!5919706 () Bool)

(assert (=> b!4909898 m!5919706))

(declare-fun m!5919708 () Bool)

(assert (=> b!4909898 m!5919708))

(declare-fun m!5919710 () Bool)

(assert (=> b!4909898 m!5919710))

(declare-fun m!5919712 () Bool)

(assert (=> b!4909898 m!5919712))

(assert (=> b!4909898 m!5919706))

(assert (=> b!4909898 m!5919712))

(declare-fun m!5919714 () Bool)

(assert (=> b!4909898 m!5919714))

(declare-fun m!5919716 () Bool)

(assert (=> b!4909898 m!5919716))

(declare-fun m!5919718 () Bool)

(assert (=> b!4909898 m!5919718))

(declare-fun m!5919720 () Bool)

(assert (=> b!4909903 m!5919720))

(declare-fun m!5919722 () Bool)

(assert (=> b!4909895 m!5919722))

(declare-fun m!5919724 () Bool)

(assert (=> b!4909901 m!5919724))

(declare-fun m!5919726 () Bool)

(assert (=> b!4909897 m!5919726))

(declare-fun m!5919728 () Bool)

(assert (=> b!4909892 m!5919728))

(declare-fun m!5919730 () Bool)

(assert (=> b!4909892 m!5919730))

(declare-fun m!5919732 () Bool)

(assert (=> b!4909892 m!5919732))

(declare-fun m!5919734 () Bool)

(assert (=> b!4909892 m!5919734))

(declare-fun m!5919736 () Bool)

(assert (=> b!4909892 m!5919736))

(declare-fun m!5919738 () Bool)

(assert (=> b!4909892 m!5919738))

(declare-fun m!5919740 () Bool)

(assert (=> b!4909892 m!5919740))

(declare-fun m!5919742 () Bool)

(assert (=> b!4909892 m!5919742))

(declare-fun m!5919744 () Bool)

(assert (=> b!4909892 m!5919744))

(declare-fun m!5919746 () Bool)

(assert (=> b!4909894 m!5919746))

(declare-fun m!5919748 () Bool)

(assert (=> b!4909894 m!5919748))

(declare-fun m!5919750 () Bool)

(assert (=> b!4909905 m!5919750))

(declare-fun m!5919752 () Bool)

(assert (=> b!4909899 m!5919752))

(declare-fun m!5919754 () Bool)

(assert (=> b!4909899 m!5919754))

(declare-fun m!5919756 () Bool)

(assert (=> b!4909902 m!5919756))

(declare-fun m!5919758 () Bool)

(assert (=> b!4909893 m!5919758))

(declare-fun m!5919760 () Bool)

(assert (=> b!4909900 m!5919760))

(declare-fun m!5919762 () Bool)

(assert (=> b!4909896 m!5919762))

(declare-fun m!5919764 () Bool)

(assert (=> b!4909896 m!5919764))

(push 1)

(assert (not b_next!132757))

(assert (not b!4909896))

(assert b_and!346671)

(assert (not b!4909905))

(assert (not b!4909902))

(assert (not b!4909900))

(assert (not b!4909901))

(assert (not start!515122))

(assert b_and!346673)

(assert (not b!4909892))

(assert (not b!4909893))

(assert (not b!4909903))

(assert (not b!4909894))

(assert (not b!4909899))

(assert (not b!4909897))

(assert (not b!4909898))

(assert (not b_next!132759))

(assert (not b!4909895))

(check-sat)

(pop 1)

(push 1)

(assert b_and!346673)

(assert b_and!346671)

(assert (not b_next!132759))

(assert (not b_next!132757))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1577882 () Bool)

(declare-fun choose!35914 (Int) Bool)

(assert (=> d!1577882 (= (Forall!1746 lambda!244693) (choose!35914 lambda!244693))))

(declare-fun bs!1177391 () Bool)

(assert (= bs!1177391 d!1577882))

(declare-fun m!5919830 () Bool)

(assert (=> bs!1177391 m!5919830))

(assert (=> b!4909897 d!1577882))

(declare-fun d!1577884 () Bool)

(declare-fun dynLambda!22930 (Int BalanceConc!29064) TokenValue!8559)

(assert (=> d!1577884 (= (apply!13593 (transformation!8249 rule!164) lt!2015302) (dynLambda!22930 (toValue!11188 (transformation!8249 rule!164)) lt!2015302))))

(declare-fun b_lambda!195873 () Bool)

(assert (=> (not b_lambda!195873) (not d!1577884)))

(declare-fun t!367009 () Bool)

(declare-fun tb!260039 () Bool)

(assert (=> (and b!4909906 (= (toValue!11188 (transformation!8249 rule!164)) (toValue!11188 (transformation!8249 rule!164))) t!367009) tb!260039))

(declare-fun result!323906 () Bool)

(declare-fun inv!21 (TokenValue!8559) Bool)

(assert (=> tb!260039 (= result!323906 (inv!21 (dynLambda!22930 (toValue!11188 (transformation!8249 rule!164)) lt!2015302)))))

(declare-fun m!5919832 () Bool)

(assert (=> tb!260039 m!5919832))

(assert (=> d!1577884 t!367009))

(declare-fun b_and!346679 () Bool)

(assert (= b_and!346671 (and (=> t!367009 result!323906) b_and!346679)))

(declare-fun m!5919834 () Bool)

(assert (=> d!1577884 m!5919834))

(assert (=> b!4909896 d!1577884))

(declare-fun b!4909976 () Bool)

(declare-fun e!3069060 () Bool)

(assert (=> b!4909976 (= e!3069060 true)))

(declare-fun d!1577886 () Bool)

(assert (=> d!1577886 e!3069060))

(assert (= d!1577886 b!4909976))

(declare-fun order!25891 () Int)

(declare-fun lambda!244703 () Int)

(declare-fun dynLambda!22931 (Int Int) Int)

(assert (=> b!4909976 (< (dynLambda!22924 order!25879 (toValue!11188 (transformation!8249 rule!164))) (dynLambda!22931 order!25891 lambda!244703))))

(assert (=> b!4909976 (< (dynLambda!22926 order!25883 (toChars!11047 (transformation!8249 rule!164))) (dynLambda!22931 order!25891 lambda!244703))))

(assert (=> d!1577886 (= (dynLambda!22930 (toValue!11188 (transformation!8249 rule!164)) (_1!33767 lt!2015311)) (dynLambda!22930 (toValue!11188 (transformation!8249 rule!164)) lt!2015302))))

(declare-fun lt!2015370 () Unit!146821)

(declare-fun Forall2of!467 (Int BalanceConc!29064 BalanceConc!29064) Unit!146821)

(assert (=> d!1577886 (= lt!2015370 (Forall2of!467 lambda!244703 (_1!33767 lt!2015311) lt!2015302))))

(assert (=> d!1577886 (= (list!17847 (_1!33767 lt!2015311)) (list!17847 lt!2015302))))

(assert (=> d!1577886 (= (lemmaEqSameImage!1131 (transformation!8249 rule!164) (_1!33767 lt!2015311) lt!2015302) lt!2015370)))

(declare-fun b_lambda!195875 () Bool)

(assert (=> (not b_lambda!195875) (not d!1577886)))

(declare-fun t!367011 () Bool)

(declare-fun tb!260041 () Bool)

(assert (=> (and b!4909906 (= (toValue!11188 (transformation!8249 rule!164)) (toValue!11188 (transformation!8249 rule!164))) t!367011) tb!260041))

(declare-fun result!323910 () Bool)

(assert (=> tb!260041 (= result!323910 (inv!21 (dynLambda!22930 (toValue!11188 (transformation!8249 rule!164)) (_1!33767 lt!2015311))))))

(declare-fun m!5919836 () Bool)

(assert (=> tb!260041 m!5919836))

(assert (=> d!1577886 t!367011))

(declare-fun b_and!346681 () Bool)

(assert (= b_and!346679 (and (=> t!367011 result!323910) b_and!346681)))

(declare-fun b_lambda!195877 () Bool)

(assert (=> (not b_lambda!195877) (not d!1577886)))

(assert (=> d!1577886 t!367009))

(declare-fun b_and!346683 () Bool)

(assert (= b_and!346681 (and (=> t!367009 result!323906) b_and!346683)))

(assert (=> d!1577886 m!5919834))

(assert (=> d!1577886 m!5919728))

(assert (=> d!1577886 m!5919722))

(declare-fun m!5919838 () Bool)

(assert (=> d!1577886 m!5919838))

(declare-fun m!5919840 () Bool)

(assert (=> d!1577886 m!5919840))

(assert (=> b!4909896 d!1577886))

(declare-fun d!1577888 () Bool)

(assert (=> d!1577888 (= (inv!73113 (tag!9113 rule!164)) (= (mod (str.len (value!264204 (tag!9113 rule!164))) 2) 0))))

(assert (=> b!4909894 d!1577888))

(declare-fun d!1577890 () Bool)

(declare-fun res!2097385 () Bool)

(declare-fun e!3069064 () Bool)

(assert (=> d!1577890 (=> (not res!2097385) (not e!3069064))))

(assert (=> d!1577890 (= res!2097385 (semiInverseModEq!3650 (toChars!11047 (transformation!8249 rule!164)) (toValue!11188 (transformation!8249 rule!164))))))

(assert (=> d!1577890 (= (inv!73116 (transformation!8249 rule!164)) e!3069064)))

(declare-fun b!4909979 () Bool)

(declare-fun equivClasses!3500 (Int Int) Bool)

(assert (=> b!4909979 (= e!3069064 (equivClasses!3500 (toChars!11047 (transformation!8249 rule!164)) (toValue!11188 (transformation!8249 rule!164))))))

(assert (= (and d!1577890 res!2097385) b!4909979))

(assert (=> d!1577890 m!5919704))

(declare-fun m!5919842 () Bool)

(assert (=> b!4909979 m!5919842))

(assert (=> b!4909894 d!1577890))

(declare-fun d!1577892 () Bool)

(assert (=> d!1577892 (= (get!19583 lt!2015299) (v!50097 lt!2015299))))

(assert (=> b!4909905 d!1577892))

(declare-fun d!1577894 () Bool)

(declare-fun list!17849 (Conc!14817) List!56697)

(assert (=> d!1577894 (= (list!17847 lt!2015302) (list!17849 (c!834581 lt!2015302)))))

(declare-fun bs!1177392 () Bool)

(assert (= bs!1177392 d!1577894))

(declare-fun m!5919844 () Bool)

(assert (=> bs!1177392 m!5919844))

(assert (=> b!4909895 d!1577894))

(declare-fun d!1577896 () Bool)

(assert (=> d!1577896 (= (list!17847 (_2!33766 lt!2015308)) (list!17849 (c!834581 (_2!33766 lt!2015308))))))

(declare-fun bs!1177393 () Bool)

(assert (= bs!1177393 d!1577896))

(declare-fun m!5919846 () Bool)

(assert (=> bs!1177393 m!5919846))

(assert (=> b!4909893 d!1577896))

(declare-fun d!1577898 () Bool)

(declare-fun c!834587 () Bool)

(assert (=> d!1577898 (= c!834587 (is-Node!14817 (c!834581 input!1509)))))

(declare-fun e!3069069 () Bool)

(assert (=> d!1577898 (= (inv!73117 (c!834581 input!1509)) e!3069069)))

(declare-fun b!4909986 () Bool)

(declare-fun inv!73122 (Conc!14817) Bool)

(assert (=> b!4909986 (= e!3069069 (inv!73122 (c!834581 input!1509)))))

(declare-fun b!4909987 () Bool)

(declare-fun e!3069070 () Bool)

(assert (=> b!4909987 (= e!3069069 e!3069070)))

(declare-fun res!2097388 () Bool)

(assert (=> b!4909987 (= res!2097388 (not (is-Leaf!24659 (c!834581 input!1509))))))

(assert (=> b!4909987 (=> res!2097388 e!3069070)))

(declare-fun b!4909988 () Bool)

(declare-fun inv!73123 (Conc!14817) Bool)

(assert (=> b!4909988 (= e!3069070 (inv!73123 (c!834581 input!1509)))))

(assert (= (and d!1577898 c!834587) b!4909986))

(assert (= (and d!1577898 (not c!834587)) b!4909987))

(assert (= (and b!4909987 (not res!2097388)) b!4909988))

(declare-fun m!5919848 () Bool)

(assert (=> b!4909986 m!5919848))

(declare-fun m!5919850 () Bool)

(assert (=> b!4909988 m!5919850))

(assert (=> b!4909902 d!1577898))

(declare-fun d!1577900 () Bool)

(declare-fun fromListB!2717 (List!56697) BalanceConc!29064)

(assert (=> d!1577900 (= (seqFromList!5991 lt!2015296) (fromListB!2717 lt!2015296))))

(declare-fun bs!1177394 () Bool)

(assert (= bs!1177394 d!1577900))

(declare-fun m!5919852 () Bool)

(assert (=> bs!1177394 m!5919852))

(assert (=> b!4909892 d!1577900))

(declare-fun d!1577902 () Bool)

(declare-fun isEmpty!30493 (Option!14136) Bool)

(assert (=> d!1577902 (= (isDefined!11145 lt!2015299) (not (isEmpty!30493 lt!2015299)))))

(declare-fun bs!1177395 () Bool)

(assert (= bs!1177395 d!1577902))

(declare-fun m!5919854 () Bool)

(assert (=> bs!1177395 m!5919854))

(assert (=> b!4909892 d!1577902))

(declare-fun d!1577904 () Bool)

(assert (=> d!1577904 (= (list!17847 (_1!33767 lt!2015311)) (list!17849 (c!834581 (_1!33767 lt!2015311))))))

(declare-fun bs!1177396 () Bool)

(assert (= bs!1177396 d!1577904))

(declare-fun m!5919856 () Bool)

(assert (=> bs!1177396 m!5919856))

(assert (=> b!4909892 d!1577904))

(declare-fun d!1577906 () Bool)

(declare-fun isEmpty!30494 (Option!14135) Bool)

(assert (=> d!1577906 (= (isDefined!11144 lt!2015298) (not (isEmpty!30494 lt!2015298)))))

(declare-fun bs!1177397 () Bool)

(assert (= bs!1177397 d!1577906))

(declare-fun m!5919858 () Bool)

(assert (=> bs!1177397 m!5919858))

(assert (=> b!4909892 d!1577906))

(declare-fun b!4910007 () Bool)

(declare-fun e!3069079 () Bool)

(declare-fun lt!2015389 () Option!14135)

(assert (=> b!4910007 (= e!3069079 (= (size!37336 (_1!33765 (get!19582 lt!2015389))) (size!37338 (originalCharacters!8544 (_1!33765 (get!19582 lt!2015389))))))))

(declare-fun b!4910008 () Bool)

(declare-fun e!3069082 () Option!14135)

(assert (=> b!4910008 (= e!3069082 None!14134)))

(declare-fun b!4910009 () Bool)

(declare-fun e!3069081 () Bool)

(assert (=> b!4910009 (= e!3069081 (matchR!6591 (regex!8249 rule!164) (_1!33768 (findLongestMatchInner!1812 (regex!8249 rule!164) Nil!56573 (size!37338 Nil!56573) lt!2015301 lt!2015301 (size!37338 lt!2015301)))))))

(declare-fun d!1577908 () Bool)

(declare-fun e!3069080 () Bool)

(assert (=> d!1577908 e!3069080))

(declare-fun res!2097406 () Bool)

(assert (=> d!1577908 (=> res!2097406 e!3069080)))

(assert (=> d!1577908 (= res!2097406 (isEmpty!30494 lt!2015389))))

(assert (=> d!1577908 (= lt!2015389 e!3069082)))

(declare-fun c!834590 () Bool)

(declare-fun lt!2015387 () tuple2!60930)

(assert (=> d!1577908 (= c!834590 (isEmpty!30489 (_1!33768 lt!2015387)))))

(declare-fun findLongestMatch!1678 (Regex!13324 List!56697) tuple2!60930)

(assert (=> d!1577908 (= lt!2015387 (findLongestMatch!1678 (regex!8249 rule!164) lt!2015301))))

(assert (=> d!1577908 (ruleValid!3746 thiss!15943 rule!164)))

(assert (=> d!1577908 (= (maxPrefixOneRule!3586 thiss!15943 rule!164 lt!2015301) lt!2015389)))

(declare-fun b!4910010 () Bool)

(declare-fun res!2097408 () Bool)

(assert (=> b!4910010 (=> (not res!2097408) (not e!3069079))))

(assert (=> b!4910010 (= res!2097408 (= (rule!11463 (_1!33765 (get!19582 lt!2015389))) rule!164))))

(declare-fun b!4910011 () Bool)

(declare-fun res!2097409 () Bool)

(assert (=> b!4910011 (=> (not res!2097409) (not e!3069079))))

(declare-fun ++!12276 (List!56697 List!56697) List!56697)

(declare-fun charsOf!5402 (Token!15026) BalanceConc!29064)

(assert (=> b!4910011 (= res!2097409 (= (++!12276 (list!17847 (charsOf!5402 (_1!33765 (get!19582 lt!2015389)))) (_2!33765 (get!19582 lt!2015389))) lt!2015301))))

(declare-fun b!4910012 () Bool)

(declare-fun res!2097404 () Bool)

(assert (=> b!4910012 (=> (not res!2097404) (not e!3069079))))

(assert (=> b!4910012 (= res!2097404 (= (value!264230 (_1!33765 (get!19582 lt!2015389))) (apply!13593 (transformation!8249 (rule!11463 (_1!33765 (get!19582 lt!2015389)))) (seqFromList!5991 (originalCharacters!8544 (_1!33765 (get!19582 lt!2015389)))))))))

(declare-fun b!4910013 () Bool)

(assert (=> b!4910013 (= e!3069082 (Some!14134 (tuple2!60925 (Token!15027 (apply!13593 (transformation!8249 rule!164) (seqFromList!5991 (_1!33768 lt!2015387))) rule!164 (size!37337 (seqFromList!5991 (_1!33768 lt!2015387))) (_1!33768 lt!2015387)) (_2!33768 lt!2015387))))))

(declare-fun lt!2015390 () Unit!146821)

(assert (=> b!4910013 (= lt!2015390 (longestMatchIsAcceptedByMatchOrIsEmpty!1775 (regex!8249 rule!164) lt!2015301))))

(declare-fun res!2097403 () Bool)

(assert (=> b!4910013 (= res!2097403 (isEmpty!30489 (_1!33768 (findLongestMatchInner!1812 (regex!8249 rule!164) Nil!56573 (size!37338 Nil!56573) lt!2015301 lt!2015301 (size!37338 lt!2015301)))))))

(assert (=> b!4910013 (=> res!2097403 e!3069081)))

(assert (=> b!4910013 e!3069081))

(declare-fun lt!2015391 () Unit!146821)

(assert (=> b!4910013 (= lt!2015391 lt!2015390)))

(declare-fun lt!2015388 () Unit!146821)

(declare-fun lemmaSemiInverse!2590 (TokenValueInjection!16426 BalanceConc!29064) Unit!146821)

(assert (=> b!4910013 (= lt!2015388 (lemmaSemiInverse!2590 (transformation!8249 rule!164) (seqFromList!5991 (_1!33768 lt!2015387))))))

(declare-fun b!4910014 () Bool)

(declare-fun res!2097405 () Bool)

(assert (=> b!4910014 (=> (not res!2097405) (not e!3069079))))

(assert (=> b!4910014 (= res!2097405 (< (size!37338 (_2!33765 (get!19582 lt!2015389))) (size!37338 lt!2015301)))))

(declare-fun b!4910015 () Bool)

(assert (=> b!4910015 (= e!3069080 e!3069079)))

(declare-fun res!2097407 () Bool)

(assert (=> b!4910015 (=> (not res!2097407) (not e!3069079))))

(assert (=> b!4910015 (= res!2097407 (matchR!6591 (regex!8249 rule!164) (list!17847 (charsOf!5402 (_1!33765 (get!19582 lt!2015389))))))))

(assert (= (and d!1577908 c!834590) b!4910008))

(assert (= (and d!1577908 (not c!834590)) b!4910013))

(assert (= (and b!4910013 (not res!2097403)) b!4910009))

(assert (= (and d!1577908 (not res!2097406)) b!4910015))

(assert (= (and b!4910015 res!2097407) b!4910011))

(assert (= (and b!4910011 res!2097409) b!4910014))

(assert (= (and b!4910014 res!2097405) b!4910010))

(assert (= (and b!4910010 res!2097408) b!4910012))

(assert (= (and b!4910012 res!2097404) b!4910007))

(assert (=> b!4910013 m!5919706))

(assert (=> b!4910013 m!5919712))

(assert (=> b!4910013 m!5919706))

(assert (=> b!4910013 m!5919712))

(assert (=> b!4910013 m!5919714))

(declare-fun m!5919868 () Bool)

(assert (=> b!4910013 m!5919868))

(assert (=> b!4910013 m!5919708))

(declare-fun m!5919870 () Bool)

(assert (=> b!4910013 m!5919870))

(declare-fun m!5919872 () Bool)

(assert (=> b!4910013 m!5919872))

(assert (=> b!4910013 m!5919870))

(declare-fun m!5919874 () Bool)

(assert (=> b!4910013 m!5919874))

(assert (=> b!4910013 m!5919870))

(assert (=> b!4910013 m!5919870))

(declare-fun m!5919876 () Bool)

(assert (=> b!4910013 m!5919876))

(declare-fun m!5919878 () Bool)

(assert (=> b!4910007 m!5919878))

(declare-fun m!5919880 () Bool)

(assert (=> b!4910007 m!5919880))

(assert (=> b!4910010 m!5919878))

(assert (=> b!4910014 m!5919878))

(declare-fun m!5919882 () Bool)

(assert (=> b!4910014 m!5919882))

(assert (=> b!4910014 m!5919712))

(assert (=> b!4910012 m!5919878))

(declare-fun m!5919884 () Bool)

(assert (=> b!4910012 m!5919884))

(assert (=> b!4910012 m!5919884))

(declare-fun m!5919886 () Bool)

(assert (=> b!4910012 m!5919886))

(assert (=> b!4910011 m!5919878))

(declare-fun m!5919888 () Bool)

(assert (=> b!4910011 m!5919888))

(assert (=> b!4910011 m!5919888))

(declare-fun m!5919890 () Bool)

(assert (=> b!4910011 m!5919890))

(assert (=> b!4910011 m!5919890))

(declare-fun m!5919892 () Bool)

(assert (=> b!4910011 m!5919892))

(assert (=> b!4910009 m!5919706))

(assert (=> b!4910009 m!5919712))

(assert (=> b!4910009 m!5919706))

(assert (=> b!4910009 m!5919712))

(assert (=> b!4910009 m!5919714))

(declare-fun m!5919894 () Bool)

(assert (=> b!4910009 m!5919894))

(declare-fun m!5919896 () Bool)

(assert (=> d!1577908 m!5919896))

(declare-fun m!5919898 () Bool)

(assert (=> d!1577908 m!5919898))

(declare-fun m!5919900 () Bool)

(assert (=> d!1577908 m!5919900))

(assert (=> d!1577908 m!5919760))

(assert (=> b!4910015 m!5919878))

(assert (=> b!4910015 m!5919888))

(assert (=> b!4910015 m!5919888))

(assert (=> b!4910015 m!5919890))

(assert (=> b!4910015 m!5919890))

(declare-fun m!5919902 () Bool)

(assert (=> b!4910015 m!5919902))

(assert (=> b!4909892 d!1577908))

(declare-fun d!1577918 () Bool)

(declare-fun lt!2015394 () Int)

(assert (=> d!1577918 (= lt!2015394 (size!37338 (list!17847 (_1!33767 lt!2015311))))))

(declare-fun size!37342 (Conc!14817) Int)

(assert (=> d!1577918 (= lt!2015394 (size!37342 (c!834581 (_1!33767 lt!2015311))))))

(assert (=> d!1577918 (= (size!37337 (_1!33767 lt!2015311)) lt!2015394)))

(declare-fun bs!1177400 () Bool)

(assert (= bs!1177400 d!1577918))

(assert (=> bs!1177400 m!5919728))

(assert (=> bs!1177400 m!5919728))

(declare-fun m!5919904 () Bool)

(assert (=> bs!1177400 m!5919904))

(declare-fun m!5919906 () Bool)

(assert (=> bs!1177400 m!5919906))

(assert (=> b!4909892 d!1577918))

(declare-fun d!1577920 () Bool)

(declare-fun dynLambda!22932 (Int BalanceConc!29064) Bool)

(assert (=> d!1577920 (dynLambda!22932 lambda!244693 lt!2015302)))

(declare-fun lt!2015397 () Unit!146821)

(declare-fun choose!35915 (Int BalanceConc!29064) Unit!146821)

(assert (=> d!1577920 (= lt!2015397 (choose!35915 lambda!244693 lt!2015302))))

(assert (=> d!1577920 (Forall!1746 lambda!244693)))

(assert (=> d!1577920 (= (ForallOf!1186 lambda!244693 lt!2015302) lt!2015397)))

(declare-fun b_lambda!195881 () Bool)

(assert (=> (not b_lambda!195881) (not d!1577920)))

(declare-fun bs!1177401 () Bool)

(assert (= bs!1177401 d!1577920))

(declare-fun m!5919908 () Bool)

(assert (=> bs!1177401 m!5919908))

(declare-fun m!5919910 () Bool)

(assert (=> bs!1177401 m!5919910))

(assert (=> bs!1177401 m!5919726))

(assert (=> b!4909892 d!1577920))

(declare-fun d!1577922 () Bool)

(assert (=> d!1577922 (dynLambda!22932 lambda!244693 (_1!33767 lt!2015311))))

(declare-fun lt!2015398 () Unit!146821)

(assert (=> d!1577922 (= lt!2015398 (choose!35915 lambda!244693 (_1!33767 lt!2015311)))))

(assert (=> d!1577922 (Forall!1746 lambda!244693)))

(assert (=> d!1577922 (= (ForallOf!1186 lambda!244693 (_1!33767 lt!2015311)) lt!2015398)))

(declare-fun b_lambda!195883 () Bool)

(assert (=> (not b_lambda!195883) (not d!1577922)))

(declare-fun bs!1177402 () Bool)

(assert (= bs!1177402 d!1577922))

(declare-fun m!5919912 () Bool)

(assert (=> bs!1177402 m!5919912))

(declare-fun m!5919914 () Bool)

(assert (=> bs!1177402 m!5919914))

(assert (=> bs!1177402 m!5919726))

(assert (=> b!4909892 d!1577922))

(declare-fun d!1577924 () Bool)

(assert (=> d!1577924 (= (apply!13593 (transformation!8249 rule!164) (_1!33767 lt!2015311)) (dynLambda!22930 (toValue!11188 (transformation!8249 rule!164)) (_1!33767 lt!2015311)))))

(declare-fun b_lambda!195885 () Bool)

(assert (=> (not b_lambda!195885) (not d!1577924)))

(assert (=> d!1577924 t!367011))

(declare-fun b_and!346685 () Bool)

(assert (= b_and!346683 (and (=> t!367011 result!323910) b_and!346685)))

(assert (=> d!1577924 m!5919838))

(assert (=> b!4909892 d!1577924))

(declare-fun d!1577926 () Bool)

(declare-fun isBalanced!4046 (Conc!14817) Bool)

(assert (=> d!1577926 (= (inv!73118 input!1509) (isBalanced!4046 (c!834581 input!1509)))))

(declare-fun bs!1177403 () Bool)

(assert (= bs!1177403 d!1577926))

(declare-fun m!5919916 () Bool)

(assert (=> bs!1177403 m!5919916))

(assert (=> start!515122 d!1577926))

(declare-fun b!4910044 () Bool)

(declare-fun e!3069097 () Bool)

(declare-fun e!3069102 () Bool)

(assert (=> b!4910044 (= e!3069097 e!3069102)))

(declare-fun res!2097432 () Bool)

(assert (=> b!4910044 (=> res!2097432 e!3069102)))

(declare-fun call!340889 () Bool)

(assert (=> b!4910044 (= res!2097432 call!340889)))

(declare-fun b!4910045 () Bool)

(declare-fun e!3069099 () Bool)

(declare-fun lt!2015401 () Bool)

(assert (=> b!4910045 (= e!3069099 (not lt!2015401))))

(declare-fun b!4910046 () Bool)

(declare-fun res!2097426 () Bool)

(declare-fun e!3069103 () Bool)

(assert (=> b!4910046 (=> res!2097426 e!3069103)))

(declare-fun e!3069100 () Bool)

(assert (=> b!4910046 (= res!2097426 e!3069100)))

(declare-fun res!2097428 () Bool)

(assert (=> b!4910046 (=> (not res!2097428) (not e!3069100))))

(assert (=> b!4910046 (= res!2097428 lt!2015401)))

(declare-fun b!4910047 () Bool)

(declare-fun res!2097431 () Bool)

(assert (=> b!4910047 (=> (not res!2097431) (not e!3069100))))

(assert (=> b!4910047 (= res!2097431 (not call!340889))))

(declare-fun d!1577928 () Bool)

(declare-fun e!3069101 () Bool)

(assert (=> d!1577928 e!3069101))

(declare-fun c!834598 () Bool)

(assert (=> d!1577928 (= c!834598 (is-EmptyExpr!13324 (regex!8249 rule!164)))))

(declare-fun e!3069098 () Bool)

(assert (=> d!1577928 (= lt!2015401 e!3069098)))

(declare-fun c!834599 () Bool)

(assert (=> d!1577928 (= c!834599 (isEmpty!30489 (_1!33768 lt!2015310)))))

(declare-fun validRegex!5915 (Regex!13324) Bool)

(assert (=> d!1577928 (validRegex!5915 (regex!8249 rule!164))))

(assert (=> d!1577928 (= (matchR!6591 (regex!8249 rule!164) (_1!33768 lt!2015310)) lt!2015401)))

(declare-fun b!4910048 () Bool)

(declare-fun res!2097427 () Bool)

(assert (=> b!4910048 (=> (not res!2097427) (not e!3069100))))

(declare-fun tail!9636 (List!56697) List!56697)

(assert (=> b!4910048 (= res!2097427 (isEmpty!30489 (tail!9636 (_1!33768 lt!2015310))))))

(declare-fun b!4910049 () Bool)

(declare-fun res!2097430 () Bool)

(assert (=> b!4910049 (=> res!2097430 e!3069102)))

(assert (=> b!4910049 (= res!2097430 (not (isEmpty!30489 (tail!9636 (_1!33768 lt!2015310)))))))

(declare-fun b!4910050 () Bool)

(declare-fun derivativeStep!3908 (Regex!13324 C!26846) Regex!13324)

(declare-fun head!10489 (List!56697) C!26846)

(assert (=> b!4910050 (= e!3069098 (matchR!6591 (derivativeStep!3908 (regex!8249 rule!164) (head!10489 (_1!33768 lt!2015310))) (tail!9636 (_1!33768 lt!2015310))))))

(declare-fun b!4910051 () Bool)

(declare-fun res!2097433 () Bool)

(assert (=> b!4910051 (=> res!2097433 e!3069103)))

(assert (=> b!4910051 (= res!2097433 (not (is-ElementMatch!13324 (regex!8249 rule!164))))))

(assert (=> b!4910051 (= e!3069099 e!3069103)))

(declare-fun b!4910052 () Bool)

(assert (=> b!4910052 (= e!3069100 (= (head!10489 (_1!33768 lt!2015310)) (c!834580 (regex!8249 rule!164))))))

(declare-fun b!4910053 () Bool)

(assert (=> b!4910053 (= e!3069101 (= lt!2015401 call!340889))))

(declare-fun b!4910054 () Bool)

(assert (=> b!4910054 (= e!3069102 (not (= (head!10489 (_1!33768 lt!2015310)) (c!834580 (regex!8249 rule!164)))))))

(declare-fun b!4910055 () Bool)

(assert (=> b!4910055 (= e!3069101 e!3069099)))

(declare-fun c!834597 () Bool)

(assert (=> b!4910055 (= c!834597 (is-EmptyLang!13324 (regex!8249 rule!164)))))

(declare-fun b!4910056 () Bool)

(declare-fun nullable!4588 (Regex!13324) Bool)

(assert (=> b!4910056 (= e!3069098 (nullable!4588 (regex!8249 rule!164)))))

(declare-fun bm!340884 () Bool)

(assert (=> bm!340884 (= call!340889 (isEmpty!30489 (_1!33768 lt!2015310)))))

(declare-fun b!4910057 () Bool)

(assert (=> b!4910057 (= e!3069103 e!3069097)))

(declare-fun res!2097429 () Bool)

(assert (=> b!4910057 (=> (not res!2097429) (not e!3069097))))

(assert (=> b!4910057 (= res!2097429 (not lt!2015401))))

(assert (= (and d!1577928 c!834599) b!4910056))

(assert (= (and d!1577928 (not c!834599)) b!4910050))

(assert (= (and d!1577928 c!834598) b!4910053))

(assert (= (and d!1577928 (not c!834598)) b!4910055))

(assert (= (and b!4910055 c!834597) b!4910045))

(assert (= (and b!4910055 (not c!834597)) b!4910051))

(assert (= (and b!4910051 (not res!2097433)) b!4910046))

(assert (= (and b!4910046 res!2097428) b!4910047))

(assert (= (and b!4910047 res!2097431) b!4910048))

(assert (= (and b!4910048 res!2097427) b!4910052))

(assert (= (and b!4910046 (not res!2097426)) b!4910057))

(assert (= (and b!4910057 res!2097429) b!4910044))

(assert (= (and b!4910044 (not res!2097432)) b!4910049))

(assert (= (and b!4910049 (not res!2097430)) b!4910054))

(assert (= (or b!4910053 b!4910044 b!4910047) bm!340884))

(declare-fun m!5919918 () Bool)

(assert (=> b!4910048 m!5919918))

(assert (=> b!4910048 m!5919918))

(declare-fun m!5919920 () Bool)

(assert (=> b!4910048 m!5919920))

(declare-fun m!5919922 () Bool)

(assert (=> b!4910054 m!5919922))

(assert (=> b!4910049 m!5919918))

(assert (=> b!4910049 m!5919918))

(assert (=> b!4910049 m!5919920))

(assert (=> b!4910050 m!5919922))

(assert (=> b!4910050 m!5919922))

(declare-fun m!5919924 () Bool)

(assert (=> b!4910050 m!5919924))

(assert (=> b!4910050 m!5919918))

(assert (=> b!4910050 m!5919924))

(assert (=> b!4910050 m!5919918))

(declare-fun m!5919926 () Bool)

(assert (=> b!4910050 m!5919926))

(assert (=> bm!340884 m!5919710))

(assert (=> b!4910052 m!5919922))

(assert (=> d!1577928 m!5919710))

(declare-fun m!5919928 () Bool)

(assert (=> d!1577928 m!5919928))

(declare-fun m!5919930 () Bool)

(assert (=> b!4910056 m!5919930))

(assert (=> b!4909903 d!1577928))

(declare-fun d!1577930 () Bool)

(assert (=> d!1577930 (= (get!19582 lt!2015298) (v!50096 lt!2015298))))

(assert (=> b!4909901 d!1577930))

(declare-fun d!1577932 () Bool)

(declare-fun res!2097438 () Bool)

(declare-fun e!3069106 () Bool)

(assert (=> d!1577932 (=> (not res!2097438) (not e!3069106))))

(assert (=> d!1577932 (= res!2097438 (validRegex!5915 (regex!8249 rule!164)))))

(assert (=> d!1577932 (= (ruleValid!3746 thiss!15943 rule!164) e!3069106)))

(declare-fun b!4910062 () Bool)

(declare-fun res!2097439 () Bool)

(assert (=> b!4910062 (=> (not res!2097439) (not e!3069106))))

(assert (=> b!4910062 (= res!2097439 (not (nullable!4588 (regex!8249 rule!164))))))

(declare-fun b!4910063 () Bool)

(assert (=> b!4910063 (= e!3069106 (not (= (tag!9113 rule!164) (String!64239 ""))))))

(assert (= (and d!1577932 res!2097438) b!4910062))

(assert (= (and b!4910062 res!2097439) b!4910063))

(assert (=> d!1577932 m!5919928))

(assert (=> b!4910062 m!5919930))

(assert (=> b!4909900 d!1577932))

(declare-fun d!1577934 () Bool)

(assert (=> d!1577934 (= (list!17847 input!1509) (list!17849 (c!834581 input!1509)))))

(declare-fun bs!1177404 () Bool)

(assert (= bs!1177404 d!1577934))

(declare-fun m!5919932 () Bool)

(assert (=> bs!1177404 m!5919932))

(assert (=> b!4909898 d!1577934))

(declare-fun b!4910136 () Bool)

(declare-fun e!3069152 () tuple2!60930)

(declare-fun call!340911 () tuple2!60930)

(assert (=> b!4910136 (= e!3069152 call!340911)))

(declare-fun b!4910137 () Bool)

(declare-fun e!3069147 () tuple2!60930)

(declare-fun e!3069150 () tuple2!60930)

(assert (=> b!4910137 (= e!3069147 e!3069150)))

(declare-fun c!834623 () Bool)

(assert (=> b!4910137 (= c!834623 (= (size!37338 Nil!56573) (size!37338 lt!2015301)))))

(declare-fun b!4910138 () Bool)

(declare-fun e!3069153 () Unit!146821)

(declare-fun Unit!146826 () Unit!146821)

(assert (=> b!4910138 (= e!3069153 Unit!146826)))

(declare-fun lt!2015489 () Unit!146821)

(declare-fun call!340908 () Unit!146821)

(assert (=> b!4910138 (= lt!2015489 call!340908)))

(declare-fun call!340909 () Bool)

(assert (=> b!4910138 call!340909))

(declare-fun lt!2015482 () Unit!146821)

(assert (=> b!4910138 (= lt!2015482 lt!2015489)))

(declare-fun lt!2015494 () Unit!146821)

(declare-fun call!340913 () Unit!146821)

(assert (=> b!4910138 (= lt!2015494 call!340913)))

(assert (=> b!4910138 (= lt!2015301 Nil!56573)))

(declare-fun lt!2015477 () Unit!146821)

(assert (=> b!4910138 (= lt!2015477 lt!2015494)))

(assert (=> b!4910138 false))

(declare-fun b!4910139 () Bool)

(declare-fun e!3069148 () tuple2!60930)

(assert (=> b!4910139 (= e!3069148 (tuple2!60931 Nil!56573 lt!2015301))))

(declare-fun bm!340901 () Bool)

(declare-fun call!340907 () C!26846)

(assert (=> bm!340901 (= call!340907 (head!10489 lt!2015301))))

(declare-fun bm!340902 () Bool)

(declare-fun call!340912 () List!56697)

(assert (=> bm!340902 (= call!340912 (tail!9636 lt!2015301))))

(declare-fun bm!340903 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1088 (List!56697 List!56697 List!56697) Unit!146821)

(assert (=> bm!340903 (= call!340913 (lemmaIsPrefixSameLengthThenSameList!1088 lt!2015301 Nil!56573 lt!2015301))))

(declare-fun b!4910141 () Bool)

(declare-fun c!834624 () Bool)

(declare-fun call!340910 () Bool)

(assert (=> b!4910141 (= c!834624 call!340910)))

(declare-fun lt!2015491 () Unit!146821)

(declare-fun lt!2015497 () Unit!146821)

(assert (=> b!4910141 (= lt!2015491 lt!2015497)))

(declare-fun lt!2015493 () C!26846)

(declare-fun lt!2015476 () List!56697)

(assert (=> b!4910141 (= (++!12276 (++!12276 Nil!56573 (Cons!56573 lt!2015493 Nil!56573)) lt!2015476) lt!2015301)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1360 (List!56697 C!26846 List!56697 List!56697) Unit!146821)

(assert (=> b!4910141 (= lt!2015497 (lemmaMoveElementToOtherListKeepsConcatEq!1360 Nil!56573 lt!2015493 lt!2015476 lt!2015301))))

(assert (=> b!4910141 (= lt!2015476 (tail!9636 lt!2015301))))

(assert (=> b!4910141 (= lt!2015493 (head!10489 lt!2015301))))

(declare-fun lt!2015479 () Unit!146821)

(declare-fun lt!2015495 () Unit!146821)

(assert (=> b!4910141 (= lt!2015479 lt!2015495)))

(declare-fun isPrefix!4929 (List!56697 List!56697) Bool)

(declare-fun getSuffix!2917 (List!56697 List!56697) List!56697)

(assert (=> b!4910141 (isPrefix!4929 (++!12276 Nil!56573 (Cons!56573 (head!10489 (getSuffix!2917 lt!2015301 Nil!56573)) Nil!56573)) lt!2015301)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!742 (List!56697 List!56697) Unit!146821)

(assert (=> b!4910141 (= lt!2015495 (lemmaAddHeadSuffixToPrefixStillPrefix!742 Nil!56573 lt!2015301))))

(declare-fun lt!2015499 () Unit!146821)

(declare-fun lt!2015500 () Unit!146821)

(assert (=> b!4910141 (= lt!2015499 lt!2015500)))

(assert (=> b!4910141 (= lt!2015500 (lemmaAddHeadSuffixToPrefixStillPrefix!742 Nil!56573 lt!2015301))))

(declare-fun lt!2015478 () List!56697)

(assert (=> b!4910141 (= lt!2015478 (++!12276 Nil!56573 (Cons!56573 (head!10489 lt!2015301) Nil!56573)))))

(declare-fun lt!2015486 () Unit!146821)

(assert (=> b!4910141 (= lt!2015486 e!3069153)))

(declare-fun c!834625 () Bool)

(assert (=> b!4910141 (= c!834625 (= (size!37338 Nil!56573) (size!37338 lt!2015301)))))

(declare-fun lt!2015483 () Unit!146821)

(declare-fun lt!2015485 () Unit!146821)

(assert (=> b!4910141 (= lt!2015483 lt!2015485)))

(assert (=> b!4910141 (<= (size!37338 Nil!56573) (size!37338 lt!2015301))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!654 (List!56697 List!56697) Unit!146821)

(assert (=> b!4910141 (= lt!2015485 (lemmaIsPrefixThenSmallerEqSize!654 Nil!56573 lt!2015301))))

(assert (=> b!4910141 (= e!3069150 e!3069152)))

(declare-fun b!4910142 () Bool)

(declare-fun Unit!146827 () Unit!146821)

(assert (=> b!4910142 (= e!3069153 Unit!146827)))

(declare-fun bm!340904 () Bool)

(declare-fun lemmaIsPrefixRefl!3326 (List!56697 List!56697) Unit!146821)

(assert (=> bm!340904 (= call!340908 (lemmaIsPrefixRefl!3326 lt!2015301 lt!2015301))))

(declare-fun b!4910143 () Bool)

(declare-fun e!3069151 () Bool)

(declare-fun lt!2015488 () tuple2!60930)

(assert (=> b!4910143 (= e!3069151 (>= (size!37338 (_1!33768 lt!2015488)) (size!37338 Nil!56573)))))

(declare-fun b!4910144 () Bool)

(declare-fun c!834621 () Bool)

(assert (=> b!4910144 (= c!834621 call!340910)))

(declare-fun lt!2015490 () Unit!146821)

(declare-fun lt!2015503 () Unit!146821)

(assert (=> b!4910144 (= lt!2015490 lt!2015503)))

(assert (=> b!4910144 (= lt!2015301 Nil!56573)))

(assert (=> b!4910144 (= lt!2015503 call!340913)))

(declare-fun lt!2015480 () Unit!146821)

(declare-fun lt!2015492 () Unit!146821)

(assert (=> b!4910144 (= lt!2015480 lt!2015492)))

(assert (=> b!4910144 call!340909))

(assert (=> b!4910144 (= lt!2015492 call!340908)))

(declare-fun e!3069146 () tuple2!60930)

(assert (=> b!4910144 (= e!3069150 e!3069146)))

(declare-fun b!4910145 () Bool)

(assert (=> b!4910145 (= e!3069146 (tuple2!60931 Nil!56573 lt!2015301))))

(declare-fun b!4910146 () Bool)

(assert (=> b!4910146 (= e!3069152 e!3069148)))

(declare-fun lt!2015487 () tuple2!60930)

(assert (=> b!4910146 (= lt!2015487 call!340911)))

(declare-fun c!834622 () Bool)

(assert (=> b!4910146 (= c!834622 (isEmpty!30489 (_1!33768 lt!2015487)))))

(declare-fun d!1577936 () Bool)

(declare-fun e!3069149 () Bool)

(assert (=> d!1577936 e!3069149))

(declare-fun res!2097469 () Bool)

(assert (=> d!1577936 (=> (not res!2097469) (not e!3069149))))

(assert (=> d!1577936 (= res!2097469 (= (++!12276 (_1!33768 lt!2015488) (_2!33768 lt!2015488)) lt!2015301))))

(assert (=> d!1577936 (= lt!2015488 e!3069147)))

(declare-fun c!834620 () Bool)

(declare-fun lostCause!1116 (Regex!13324) Bool)

(assert (=> d!1577936 (= c!834620 (lostCause!1116 (regex!8249 rule!164)))))

(declare-fun lt!2015484 () Unit!146821)

(declare-fun Unit!146828 () Unit!146821)

(assert (=> d!1577936 (= lt!2015484 Unit!146828)))

(assert (=> d!1577936 (= (getSuffix!2917 lt!2015301 Nil!56573) lt!2015301)))

(declare-fun lt!2015502 () Unit!146821)

(declare-fun lt!2015496 () Unit!146821)

(assert (=> d!1577936 (= lt!2015502 lt!2015496)))

(declare-fun lt!2015498 () List!56697)

(assert (=> d!1577936 (= lt!2015301 lt!2015498)))

(declare-fun lemmaSamePrefixThenSameSuffix!2333 (List!56697 List!56697 List!56697 List!56697 List!56697) Unit!146821)

(assert (=> d!1577936 (= lt!2015496 (lemmaSamePrefixThenSameSuffix!2333 Nil!56573 lt!2015301 Nil!56573 lt!2015498 lt!2015301))))

(assert (=> d!1577936 (= lt!2015498 (getSuffix!2917 lt!2015301 Nil!56573))))

(declare-fun lt!2015481 () Unit!146821)

(declare-fun lt!2015501 () Unit!146821)

(assert (=> d!1577936 (= lt!2015481 lt!2015501)))

(assert (=> d!1577936 (isPrefix!4929 Nil!56573 (++!12276 Nil!56573 lt!2015301))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3153 (List!56697 List!56697) Unit!146821)

(assert (=> d!1577936 (= lt!2015501 (lemmaConcatTwoListThenFirstIsPrefix!3153 Nil!56573 lt!2015301))))

(assert (=> d!1577936 (validRegex!5915 (regex!8249 rule!164))))

(assert (=> d!1577936 (= (findLongestMatchInner!1812 (regex!8249 rule!164) Nil!56573 (size!37338 Nil!56573) lt!2015301 lt!2015301 (size!37338 lt!2015301)) lt!2015488)))

(declare-fun b!4910140 () Bool)

(assert (=> b!4910140 (= e!3069147 (tuple2!60931 Nil!56573 lt!2015301))))

(declare-fun b!4910147 () Bool)

(assert (=> b!4910147 (= e!3069146 (tuple2!60931 Nil!56573 Nil!56573))))

(declare-fun bm!340905 () Bool)

(assert (=> bm!340905 (= call!340909 (isPrefix!4929 lt!2015301 lt!2015301))))

(declare-fun b!4910148 () Bool)

(assert (=> b!4910148 (= e!3069148 lt!2015487)))

(declare-fun call!340906 () Regex!13324)

(declare-fun bm!340906 () Bool)

(assert (=> bm!340906 (= call!340911 (findLongestMatchInner!1812 call!340906 lt!2015478 (+ (size!37338 Nil!56573) 1) call!340912 lt!2015301 (size!37338 lt!2015301)))))

(declare-fun bm!340907 () Bool)

(assert (=> bm!340907 (= call!340906 (derivativeStep!3908 (regex!8249 rule!164) call!340907))))

(declare-fun b!4910149 () Bool)

(assert (=> b!4910149 (= e!3069149 e!3069151)))

(declare-fun res!2097468 () Bool)

(assert (=> b!4910149 (=> res!2097468 e!3069151)))

(assert (=> b!4910149 (= res!2097468 (isEmpty!30489 (_1!33768 lt!2015488)))))

(declare-fun bm!340908 () Bool)

(assert (=> bm!340908 (= call!340910 (nullable!4588 (regex!8249 rule!164)))))

(assert (= (and d!1577936 c!834620) b!4910140))

(assert (= (and d!1577936 (not c!834620)) b!4910137))

(assert (= (and b!4910137 c!834623) b!4910144))

(assert (= (and b!4910137 (not c!834623)) b!4910141))

(assert (= (and b!4910144 c!834621) b!4910147))

(assert (= (and b!4910144 (not c!834621)) b!4910145))

(assert (= (and b!4910141 c!834625) b!4910138))

(assert (= (and b!4910141 (not c!834625)) b!4910142))

(assert (= (and b!4910141 c!834624) b!4910146))

(assert (= (and b!4910141 (not c!834624)) b!4910136))

(assert (= (and b!4910146 c!834622) b!4910139))

(assert (= (and b!4910146 (not c!834622)) b!4910148))

(assert (= (or b!4910146 b!4910136) bm!340901))

(assert (= (or b!4910146 b!4910136) bm!340902))

(assert (= (or b!4910146 b!4910136) bm!340907))

(assert (= (or b!4910146 b!4910136) bm!340906))

(assert (= (or b!4910144 b!4910138) bm!340905))

(assert (= (or b!4910144 b!4910138) bm!340904))

(assert (= (or b!4910144 b!4910138) bm!340903))

(assert (= (or b!4910144 b!4910141) bm!340908))

(assert (= (and d!1577936 res!2097469) b!4910149))

(assert (= (and b!4910149 (not res!2097468)) b!4910143))

(declare-fun m!5919990 () Bool)

(assert (=> b!4910146 m!5919990))

(declare-fun m!5919992 () Bool)

(assert (=> bm!340904 m!5919992))

(assert (=> bm!340906 m!5919712))

(declare-fun m!5919994 () Bool)

(assert (=> bm!340906 m!5919994))

(declare-fun m!5919996 () Bool)

(assert (=> b!4910143 m!5919996))

(assert (=> b!4910143 m!5919706))

(declare-fun m!5919998 () Bool)

(assert (=> bm!340901 m!5919998))

(declare-fun m!5920000 () Bool)

(assert (=> bm!340907 m!5920000))

(declare-fun m!5920002 () Bool)

(assert (=> d!1577936 m!5920002))

(assert (=> d!1577936 m!5919928))

(assert (=> d!1577936 m!5920002))

(declare-fun m!5920004 () Bool)

(assert (=> d!1577936 m!5920004))

(declare-fun m!5920006 () Bool)

(assert (=> d!1577936 m!5920006))

(declare-fun m!5920008 () Bool)

(assert (=> d!1577936 m!5920008))

(declare-fun m!5920010 () Bool)

(assert (=> d!1577936 m!5920010))

(declare-fun m!5920012 () Bool)

(assert (=> d!1577936 m!5920012))

(declare-fun m!5920014 () Bool)

(assert (=> d!1577936 m!5920014))

(assert (=> b!4910141 m!5920012))

(declare-fun m!5920016 () Bool)

(assert (=> b!4910141 m!5920016))

(declare-fun m!5920018 () Bool)

(assert (=> b!4910141 m!5920018))

(assert (=> b!4910141 m!5919706))

(declare-fun m!5920020 () Bool)

(assert (=> b!4910141 m!5920020))

(declare-fun m!5920022 () Bool)

(assert (=> b!4910141 m!5920022))

(assert (=> b!4910141 m!5920012))

(declare-fun m!5920024 () Bool)

(assert (=> b!4910141 m!5920024))

(declare-fun m!5920026 () Bool)

(assert (=> b!4910141 m!5920026))

(assert (=> b!4910141 m!5919712))

(assert (=> b!4910141 m!5919998))

(assert (=> b!4910141 m!5920018))

(declare-fun m!5920028 () Bool)

(assert (=> b!4910141 m!5920028))

(declare-fun m!5920030 () Bool)

(assert (=> b!4910141 m!5920030))

(assert (=> b!4910141 m!5920020))

(declare-fun m!5920032 () Bool)

(assert (=> b!4910141 m!5920032))

(declare-fun m!5920034 () Bool)

(assert (=> b!4910141 m!5920034))

(declare-fun m!5920036 () Bool)

(assert (=> bm!340903 m!5920036))

(assert (=> bm!340902 m!5920024))

(assert (=> bm!340908 m!5919930))

(declare-fun m!5920038 () Bool)

(assert (=> b!4910149 m!5920038))

(declare-fun m!5920040 () Bool)

(assert (=> bm!340905 m!5920040))

(assert (=> b!4909898 d!1577936))

(declare-fun d!1577954 () Bool)

(assert (=> d!1577954 (= (isEmpty!30489 (_1!33768 lt!2015310)) (is-Nil!56573 (_1!33768 lt!2015310)))))

(assert (=> b!4909898 d!1577954))

(declare-fun d!1577956 () Bool)

(declare-fun e!3069168 () Bool)

(assert (=> d!1577956 e!3069168))

(declare-fun res!2097488 () Bool)

(assert (=> d!1577956 (=> (not res!2097488) (not e!3069168))))

(assert (=> d!1577956 (= res!2097488 (semiInverseModEq!3650 (toChars!11047 (transformation!8249 rule!164)) (toValue!11188 (transformation!8249 rule!164))))))

(declare-fun Unit!146829 () Unit!146821)

(assert (=> d!1577956 (= (lemmaInv!1295 (transformation!8249 rule!164)) Unit!146829)))

(declare-fun b!4910174 () Bool)

(assert (=> b!4910174 (= e!3069168 (equivClasses!3500 (toChars!11047 (transformation!8249 rule!164)) (toValue!11188 (transformation!8249 rule!164))))))

(assert (= (and d!1577956 res!2097488) b!4910174))

(assert (=> d!1577956 m!5919704))

(assert (=> b!4910174 m!5919842))

(assert (=> b!4909898 d!1577956))

(declare-fun d!1577958 () Bool)

(declare-fun lt!2015506 () Int)

(assert (=> d!1577958 (>= lt!2015506 0)))

(declare-fun e!3069171 () Int)

(assert (=> d!1577958 (= lt!2015506 e!3069171)))

(declare-fun c!834632 () Bool)

(assert (=> d!1577958 (= c!834632 (is-Nil!56573 Nil!56573))))

(assert (=> d!1577958 (= (size!37338 Nil!56573) lt!2015506)))

(declare-fun b!4910179 () Bool)

(assert (=> b!4910179 (= e!3069171 0)))

(declare-fun b!4910180 () Bool)

(assert (=> b!4910180 (= e!3069171 (+ 1 (size!37338 (t!367005 Nil!56573))))))

(assert (= (and d!1577958 c!834632) b!4910179))

(assert (= (and d!1577958 (not c!834632)) b!4910180))

(declare-fun m!5920042 () Bool)

(assert (=> b!4910180 m!5920042))

(assert (=> b!4909898 d!1577958))

(declare-fun bs!1177411 () Bool)

(declare-fun d!1577960 () Bool)

(assert (= bs!1177411 (and d!1577960 b!4909897)))

(declare-fun lambda!244706 () Int)

(assert (=> bs!1177411 (= lambda!244706 lambda!244693)))

(assert (=> d!1577960 true))

(assert (=> d!1577960 (< (dynLambda!22926 order!25883 (toChars!11047 (transformation!8249 rule!164))) (dynLambda!22925 order!25881 lambda!244706))))

(assert (=> d!1577960 true))

(assert (=> d!1577960 (< (dynLambda!22924 order!25879 (toValue!11188 (transformation!8249 rule!164))) (dynLambda!22925 order!25881 lambda!244706))))

(assert (=> d!1577960 (= (semiInverseModEq!3650 (toChars!11047 (transformation!8249 rule!164)) (toValue!11188 (transformation!8249 rule!164))) (Forall!1746 lambda!244706))))

(declare-fun bs!1177412 () Bool)

(assert (= bs!1177412 d!1577960))

(declare-fun m!5920060 () Bool)

(assert (=> bs!1177412 m!5920060))

(assert (=> b!4909898 d!1577960))

(declare-fun d!1577966 () Bool)

(declare-fun lt!2015508 () Int)

(assert (=> d!1577966 (>= lt!2015508 0)))

(declare-fun e!3069179 () Int)

(assert (=> d!1577966 (= lt!2015508 e!3069179)))

(declare-fun c!834636 () Bool)

(assert (=> d!1577966 (= c!834636 (is-Nil!56573 lt!2015301))))

(assert (=> d!1577966 (= (size!37338 lt!2015301) lt!2015508)))

(declare-fun b!4910199 () Bool)

(assert (=> b!4910199 (= e!3069179 0)))

(declare-fun b!4910200 () Bool)

(assert (=> b!4910200 (= e!3069179 (+ 1 (size!37338 (t!367005 lt!2015301))))))

(assert (= (and d!1577966 c!834636) b!4910199))

(assert (= (and d!1577966 (not c!834636)) b!4910200))

(declare-fun m!5920062 () Bool)

(assert (=> b!4910200 m!5920062))

(assert (=> b!4909898 d!1577966))

(declare-fun d!1577970 () Bool)

(declare-fun e!3069183 () Bool)

(assert (=> d!1577970 e!3069183))

(declare-fun res!2097499 () Bool)

(assert (=> d!1577970 (=> res!2097499 e!3069183)))

(assert (=> d!1577970 (= res!2097499 (isEmpty!30489 (_1!33768 (findLongestMatchInner!1812 (regex!8249 rule!164) Nil!56573 (size!37338 Nil!56573) lt!2015301 lt!2015301 (size!37338 lt!2015301)))))))

(declare-fun lt!2015511 () Unit!146821)

(declare-fun choose!35917 (Regex!13324 List!56697) Unit!146821)

(assert (=> d!1577970 (= lt!2015511 (choose!35917 (regex!8249 rule!164) lt!2015301))))

(assert (=> d!1577970 (validRegex!5915 (regex!8249 rule!164))))

(assert (=> d!1577970 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1775 (regex!8249 rule!164) lt!2015301) lt!2015511)))

(declare-fun b!4910203 () Bool)

(assert (=> b!4910203 (= e!3069183 (matchR!6591 (regex!8249 rule!164) (_1!33768 (findLongestMatchInner!1812 (regex!8249 rule!164) Nil!56573 (size!37338 Nil!56573) lt!2015301 lt!2015301 (size!37338 lt!2015301)))))))

(assert (= (and d!1577970 (not res!2097499)) b!4910203))

(assert (=> d!1577970 m!5919928))

(assert (=> d!1577970 m!5919706))

(assert (=> d!1577970 m!5919712))

(assert (=> d!1577970 m!5919714))

(declare-fun m!5920070 () Bool)

(assert (=> d!1577970 m!5920070))

(assert (=> d!1577970 m!5919712))

(assert (=> d!1577970 m!5919868))

(assert (=> d!1577970 m!5919706))

(assert (=> b!4910203 m!5919706))

(assert (=> b!4910203 m!5919712))

(assert (=> b!4910203 m!5919706))

(assert (=> b!4910203 m!5919712))

(assert (=> b!4910203 m!5919714))

(assert (=> b!4910203 m!5919894))

(assert (=> b!4909898 d!1577970))

(declare-fun d!1577976 () Bool)

(declare-fun lt!2015516 () Bool)

(assert (=> d!1577976 (= lt!2015516 (isEmpty!30489 (list!17847 (_1!33767 lt!2015311))))))

(declare-fun isEmpty!30496 (Conc!14817) Bool)

(assert (=> d!1577976 (= lt!2015516 (isEmpty!30496 (c!834581 (_1!33767 lt!2015311))))))

(assert (=> d!1577976 (= (isEmpty!30490 (_1!33767 lt!2015311)) lt!2015516)))

(declare-fun bs!1177414 () Bool)

(assert (= bs!1177414 d!1577976))

(assert (=> bs!1177414 m!5919728))

(assert (=> bs!1177414 m!5919728))

(declare-fun m!5920072 () Bool)

(assert (=> bs!1177414 m!5920072))

(declare-fun m!5920074 () Bool)

(assert (=> bs!1177414 m!5920074))

(assert (=> b!4909899 d!1577976))

(declare-fun d!1577978 () Bool)

(declare-fun lt!2015520 () tuple2!60928)

(assert (=> d!1577978 (= (tuple2!60931 (list!17847 (_1!33767 lt!2015520)) (list!17847 (_2!33767 lt!2015520))) (findLongestMatch!1678 (regex!8249 rule!164) (list!17847 input!1509)))))

(declare-fun choose!35918 (Regex!13324 BalanceConc!29064) tuple2!60928)

(assert (=> d!1577978 (= lt!2015520 (choose!35918 (regex!8249 rule!164) input!1509))))

(assert (=> d!1577978 (validRegex!5915 (regex!8249 rule!164))))

(assert (=> d!1577978 (= (findLongestMatchWithZipperSequence!337 (regex!8249 rule!164) input!1509) lt!2015520)))

(declare-fun bs!1177415 () Bool)

(assert (= bs!1177415 d!1577978))

(assert (=> bs!1177415 m!5919716))

(declare-fun m!5920078 () Bool)

(assert (=> bs!1177415 m!5920078))

(assert (=> bs!1177415 m!5919716))

(declare-fun m!5920080 () Bool)

(assert (=> bs!1177415 m!5920080))

(declare-fun m!5920082 () Bool)

(assert (=> bs!1177415 m!5920082))

(declare-fun m!5920084 () Bool)

(assert (=> bs!1177415 m!5920084))

(assert (=> bs!1177415 m!5919928))

(assert (=> b!4909899 d!1577978))

(declare-fun e!3069196 () Bool)

(declare-fun tp!1380744 () Bool)

(declare-fun tp!1380743 () Bool)

(declare-fun b!4910222 () Bool)

(assert (=> b!4910222 (= e!3069196 (and (inv!73117 (left!41218 (c!834581 input!1509))) tp!1380743 (inv!73117 (right!41548 (c!834581 input!1509))) tp!1380744))))

(declare-fun b!4910224 () Bool)

(declare-fun e!3069197 () Bool)

(declare-fun tp!1380742 () Bool)

(assert (=> b!4910224 (= e!3069197 tp!1380742)))

(declare-fun b!4910223 () Bool)

(declare-fun inv!73124 (IArray!29695) Bool)

(assert (=> b!4910223 (= e!3069196 (and (inv!73124 (xs!18133 (c!834581 input!1509))) e!3069197))))

(assert (=> b!4909902 (= tp!1380723 (and (inv!73117 (c!834581 input!1509)) e!3069196))))

(assert (= (and b!4909902 (is-Node!14817 (c!834581 input!1509))) b!4910222))

(assert (= b!4910223 b!4910224))

(assert (= (and b!4909902 (is-Leaf!24659 (c!834581 input!1509))) b!4910223))

(declare-fun m!5920088 () Bool)

(assert (=> b!4910222 m!5920088))

(declare-fun m!5920090 () Bool)

(assert (=> b!4910222 m!5920090))

(declare-fun m!5920092 () Bool)

(assert (=> b!4910223 m!5920092))

(assert (=> b!4909902 m!5919756))

(declare-fun b!4910242 () Bool)

(declare-fun e!3069202 () Bool)

(declare-fun tp!1380757 () Bool)

(declare-fun tp!1380758 () Bool)

(assert (=> b!4910242 (= e!3069202 (and tp!1380757 tp!1380758))))

(declare-fun b!4910239 () Bool)

(declare-fun tp_is_empty!35853 () Bool)

(assert (=> b!4910239 (= e!3069202 tp_is_empty!35853)))

(assert (=> b!4909894 (= tp!1380720 e!3069202)))

(declare-fun b!4910241 () Bool)

(declare-fun tp!1380759 () Bool)

(assert (=> b!4910241 (= e!3069202 tp!1380759)))

(declare-fun b!4910240 () Bool)

(declare-fun tp!1380755 () Bool)

(declare-fun tp!1380756 () Bool)

(assert (=> b!4910240 (= e!3069202 (and tp!1380755 tp!1380756))))

(assert (= (and b!4909894 (is-ElementMatch!13324 (regex!8249 rule!164))) b!4910239))

(assert (= (and b!4909894 (is-Concat!21883 (regex!8249 rule!164))) b!4910240))

(assert (= (and b!4909894 (is-Star!13324 (regex!8249 rule!164))) b!4910241))

(assert (= (and b!4909894 (is-Union!13324 (regex!8249 rule!164))) b!4910242))

(declare-fun b_lambda!195897 () Bool)

(assert (= b_lambda!195877 (or (and b!4909906 b_free!131967) b_lambda!195897)))

(declare-fun b_lambda!195899 () Bool)

(assert (= b_lambda!195881 (or b!4909897 b_lambda!195899)))

(declare-fun bs!1177416 () Bool)

(declare-fun d!1577986 () Bool)

(assert (= bs!1177416 (and d!1577986 b!4909897)))

(declare-fun dynLambda!22935 (Int TokenValue!8559) BalanceConc!29064)

(assert (=> bs!1177416 (= (dynLambda!22932 lambda!244693 lt!2015302) (= (list!17847 (dynLambda!22935 (toChars!11047 (transformation!8249 rule!164)) (dynLambda!22930 (toValue!11188 (transformation!8249 rule!164)) lt!2015302))) (list!17847 lt!2015302)))))

(declare-fun b_lambda!195909 () Bool)

(assert (=> (not b_lambda!195909) (not bs!1177416)))

(declare-fun t!367017 () Bool)

(declare-fun tb!260047 () Bool)

(assert (=> (and b!4909906 (= (toChars!11047 (transformation!8249 rule!164)) (toChars!11047 (transformation!8249 rule!164))) t!367017) tb!260047))

(declare-fun e!3069206 () Bool)

(declare-fun b!4910249 () Bool)

(declare-fun tp!1380762 () Bool)

(assert (=> b!4910249 (= e!3069206 (and (inv!73117 (c!834581 (dynLambda!22935 (toChars!11047 (transformation!8249 rule!164)) (dynLambda!22930 (toValue!11188 (transformation!8249 rule!164)) lt!2015302)))) tp!1380762))))

(declare-fun result!323922 () Bool)

(assert (=> tb!260047 (= result!323922 (and (inv!73118 (dynLambda!22935 (toChars!11047 (transformation!8249 rule!164)) (dynLambda!22930 (toValue!11188 (transformation!8249 rule!164)) lt!2015302))) e!3069206))))

(assert (= tb!260047 b!4910249))

(declare-fun m!5920094 () Bool)

(assert (=> b!4910249 m!5920094))

(declare-fun m!5920096 () Bool)

(assert (=> tb!260047 m!5920096))

(assert (=> bs!1177416 t!367017))

(declare-fun b_and!346695 () Bool)

(assert (= b_and!346673 (and (=> t!367017 result!323922) b_and!346695)))

(declare-fun b_lambda!195911 () Bool)

(assert (=> (not b_lambda!195911) (not bs!1177416)))

(assert (=> bs!1177416 t!367009))

(declare-fun b_and!346697 () Bool)

(assert (= b_and!346685 (and (=> t!367009 result!323906) b_and!346697)))

(declare-fun m!5920098 () Bool)

(assert (=> bs!1177416 m!5920098))

(declare-fun m!5920100 () Bool)

(assert (=> bs!1177416 m!5920100))

(assert (=> bs!1177416 m!5919834))

(assert (=> bs!1177416 m!5920098))

(assert (=> bs!1177416 m!5919722))

(assert (=> bs!1177416 m!5919834))

(assert (=> d!1577920 d!1577986))

(declare-fun b_lambda!195901 () Bool)

(assert (= b_lambda!195873 (or (and b!4909906 b_free!131967) b_lambda!195901)))

(declare-fun b_lambda!195903 () Bool)

(assert (= b_lambda!195875 (or (and b!4909906 b_free!131967) b_lambda!195903)))

(declare-fun b_lambda!195905 () Bool)

(assert (= b_lambda!195885 (or (and b!4909906 b_free!131967) b_lambda!195905)))

(declare-fun b_lambda!195907 () Bool)

(assert (= b_lambda!195883 (or b!4909897 b_lambda!195907)))

(declare-fun bs!1177417 () Bool)

(declare-fun d!1577990 () Bool)

(assert (= bs!1177417 (and d!1577990 b!4909897)))

(assert (=> bs!1177417 (= (dynLambda!22932 lambda!244693 (_1!33767 lt!2015311)) (= (list!17847 (dynLambda!22935 (toChars!11047 (transformation!8249 rule!164)) (dynLambda!22930 (toValue!11188 (transformation!8249 rule!164)) (_1!33767 lt!2015311)))) (list!17847 (_1!33767 lt!2015311))))))

(declare-fun b_lambda!195913 () Bool)

(assert (=> (not b_lambda!195913) (not bs!1177417)))

(declare-fun t!367019 () Bool)

(declare-fun tb!260049 () Bool)

(assert (=> (and b!4909906 (= (toChars!11047 (transformation!8249 rule!164)) (toChars!11047 (transformation!8249 rule!164))) t!367019) tb!260049))

(declare-fun tp!1380763 () Bool)

(declare-fun e!3069207 () Bool)

(declare-fun b!4910250 () Bool)

(assert (=> b!4910250 (= e!3069207 (and (inv!73117 (c!834581 (dynLambda!22935 (toChars!11047 (transformation!8249 rule!164)) (dynLambda!22930 (toValue!11188 (transformation!8249 rule!164)) (_1!33767 lt!2015311))))) tp!1380763))))

(declare-fun result!323926 () Bool)

(assert (=> tb!260049 (= result!323926 (and (inv!73118 (dynLambda!22935 (toChars!11047 (transformation!8249 rule!164)) (dynLambda!22930 (toValue!11188 (transformation!8249 rule!164)) (_1!33767 lt!2015311)))) e!3069207))))

(assert (= tb!260049 b!4910250))

(declare-fun m!5920102 () Bool)

(assert (=> b!4910250 m!5920102))

(declare-fun m!5920104 () Bool)

(assert (=> tb!260049 m!5920104))

(assert (=> bs!1177417 t!367019))

(declare-fun b_and!346699 () Bool)

(assert (= b_and!346695 (and (=> t!367019 result!323926) b_and!346699)))

(declare-fun b_lambda!195915 () Bool)

(assert (=> (not b_lambda!195915) (not bs!1177417)))

(assert (=> bs!1177417 t!367011))

(declare-fun b_and!346701 () Bool)

(assert (= b_and!346697 (and (=> t!367011 result!323910) b_and!346701)))

(declare-fun m!5920110 () Bool)

(assert (=> bs!1177417 m!5920110))

(declare-fun m!5920112 () Bool)

(assert (=> bs!1177417 m!5920112))

(assert (=> bs!1177417 m!5919838))

(assert (=> bs!1177417 m!5920110))

(assert (=> bs!1177417 m!5919728))

(assert (=> bs!1177417 m!5919838))

(assert (=> d!1577922 d!1577990))

(push 1)

(assert (not b!4910241))

(assert (not b_next!132757))

(assert (not b!4910174))

(assert (not b_next!132759))

(assert (not b_lambda!195911))

(assert (not d!1577902))

(assert (not b_lambda!195915))

(assert (not b_lambda!195901))

(assert (not b!4910012))

(assert (not b_lambda!195913))

(assert (not d!1577928))

(assert (not d!1577918))

(assert (not d!1577920))

(assert b_and!346699)

(assert (not d!1577970))

(assert (not b!4910146))

(assert (not bm!340884))

(assert (not d!1577908))

(assert (not bm!340907))

(assert (not b!4910249))

(assert (not tb!260039))

(assert (not bm!340904))

(assert (not b!4910013))

(assert (not b!4909979))

(assert (not b!4910141))

(assert (not b!4910007))

(assert (not b!4910062))

(assert (not bm!340906))

(assert (not d!1577900))

(assert (not b!4910250))

(assert (not d!1577960))

(assert (not b!4910052))

(assert (not b!4910224))

(assert (not b_lambda!195899))

(assert (not b_lambda!195897))

(assert (not b_lambda!195905))

(assert (not b!4910011))

(assert (not bm!340908))

(assert (not b!4910050))

(assert (not b!4910054))

(assert (not d!1577922))

(assert (not d!1577978))

(assert (not b!4909902))

(assert (not tb!260049))

(assert (not b_lambda!195903))

(assert (not tb!260047))

(assert (not b!4910014))

(assert (not b!4910049))

(assert (not b!4910015))

(assert (not b!4909988))

(assert (not d!1577956))

(assert (not b_lambda!195907))

(assert (not d!1577904))

(assert (not b!4910180))

(assert (not bs!1177417))

(assert (not d!1577894))

(assert (not b!4910009))

(assert (not bm!340905))

(assert (not b!4910048))

(assert (not b!4910143))

(assert b_and!346701)

(assert (not d!1577896))

(assert (not b!4909986))

(assert (not d!1577934))

(assert (not b!4910149))

(assert (not b!4910203))

(assert (not bm!340901))

(assert (not b!4910010))

(assert (not d!1577882))

(assert (not d!1577926))

(assert (not d!1577886))

(assert (not tb!260041))

(assert tp_is_empty!35853)

(assert (not b!4910242))

(assert (not d!1577976))

(assert (not d!1577936))

(assert (not b!4910222))

(assert (not bm!340903))

(assert (not d!1577906))

(assert (not b!4910223))

(assert (not b!4910056))

(assert (not b_lambda!195909))

(assert (not b!4910200))

(assert (not bs!1177416))

(assert (not b!4910240))

(assert (not d!1577890))

(assert (not bm!340902))

(assert (not d!1577932))

(check-sat)

(pop 1)

(push 1)

(assert b_and!346699)

(assert b_and!346701)

(assert (not b_next!132759))

(assert (not b_next!132757))

(check-sat)

(pop 1)

