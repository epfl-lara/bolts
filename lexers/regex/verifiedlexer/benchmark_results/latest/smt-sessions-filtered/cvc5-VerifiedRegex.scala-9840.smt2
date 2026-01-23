; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!515014 () Bool)

(assert start!515014)

(declare-fun b!4909428 () Bool)

(declare-fun b_free!131959 () Bool)

(declare-fun b_next!132749 () Bool)

(assert (=> b!4909428 (= b_free!131959 (not b_next!132749))))

(declare-fun tp!1380642 () Bool)

(declare-fun b_and!346631 () Bool)

(assert (=> b!4909428 (= tp!1380642 b_and!346631)))

(declare-fun b_free!131961 () Bool)

(declare-fun b_next!132751 () Bool)

(assert (=> b!4909428 (= b_free!131961 (not b_next!132751))))

(declare-fun tp!1380643 () Bool)

(declare-fun b_and!346633 () Bool)

(assert (=> b!4909428 (= tp!1380643 b_and!346633)))

(declare-fun b!4909437 () Bool)

(declare-fun e!3068727 () Bool)

(assert (=> b!4909437 (= e!3068727 true)))

(declare-fun b!4909436 () Bool)

(declare-fun e!3068726 () Bool)

(assert (=> b!4909436 (= e!3068726 e!3068727)))

(declare-fun b!4909417 () Bool)

(assert (=> b!4909417 e!3068726))

(assert (= b!4909436 b!4909437))

(assert (= b!4909417 b!4909436))

(declare-fun order!25865 () Int)

(declare-datatypes ((C!26842 0))(
  ( (C!26843 (val!22755 Int)) )
))
(declare-datatypes ((Regex!13322 0))(
  ( (ElementMatch!13322 (c!834500 C!26842)) (Concat!21879 (regOne!27156 Regex!13322) (regTwo!27156 Regex!13322)) (EmptyExpr!13322) (Star!13322 (reg!13651 Regex!13322)) (EmptyLang!13322) (Union!13322 (regOne!27157 Regex!13322) (regTwo!27157 Regex!13322)) )
))
(declare-datatypes ((String!64228 0))(
  ( (String!64229 (value!264147 String)) )
))
(declare-datatypes ((List!56692 0))(
  ( (Nil!56568) (Cons!56568 (h!63016 (_ BitVec 16)) (t!366984 List!56692)) )
))
(declare-datatypes ((TokenValue!8557 0))(
  ( (FloatLiteralValue!17114 (text!60344 List!56692)) (TokenValueExt!8556 (__x!34407 Int)) (Broken!42785 (value!264148 List!56692)) (Object!8680) (End!8557) (Def!8557) (Underscore!8557) (Match!8557) (Else!8557) (Error!8557) (Case!8557) (If!8557) (Extends!8557) (Abstract!8557) (Class!8557) (Val!8557) (DelimiterValue!17114 (del!8617 List!56692)) (KeywordValue!8563 (value!264149 List!56692)) (CommentValue!17114 (value!264150 List!56692)) (WhitespaceValue!17114 (value!264151 List!56692)) (IndentationValue!8557 (value!264152 List!56692)) (String!64230) (Int32!8557) (Broken!42786 (value!264153 List!56692)) (Boolean!8558) (Unit!146806) (OperatorValue!8560 (op!8617 List!56692)) (IdentifierValue!17114 (value!264154 List!56692)) (IdentifierValue!17115 (value!264155 List!56692)) (WhitespaceValue!17115 (value!264156 List!56692)) (True!17114) (False!17114) (Broken!42787 (value!264157 List!56692)) (Broken!42788 (value!264158 List!56692)) (True!17115) (RightBrace!8557) (RightBracket!8557) (Colon!8557) (Null!8557) (Comma!8557) (LeftBracket!8557) (False!17115) (LeftBrace!8557) (ImaginaryLiteralValue!8557 (text!60345 List!56692)) (StringLiteralValue!25671 (value!264159 List!56692)) (EOFValue!8557 (value!264160 List!56692)) (IdentValue!8557 (value!264161 List!56692)) (DelimiterValue!17115 (value!264162 List!56692)) (DedentValue!8557 (value!264163 List!56692)) (NewLineValue!8557 (value!264164 List!56692)) (IntegerValue!25671 (value!264165 (_ BitVec 32)) (text!60346 List!56692)) (IntegerValue!25672 (value!264166 Int) (text!60347 List!56692)) (Times!8557) (Or!8557) (Equal!8557) (Minus!8557) (Broken!42789 (value!264167 List!56692)) (And!8557) (Div!8557) (LessEqual!8557) (Mod!8557) (Concat!21880) (Not!8557) (Plus!8557) (SpaceValue!8557 (value!264168 List!56692)) (IntegerValue!25673 (value!264169 Int) (text!60348 List!56692)) (StringLiteralValue!25672 (text!60349 List!56692)) (FloatLiteralValue!17115 (text!60350 List!56692)) (BytesLiteralValue!8557 (value!264170 List!56692)) (CommentValue!17115 (value!264171 List!56692)) (StringLiteralValue!25673 (value!264172 List!56692)) (ErrorTokenValue!8557 (msg!8618 List!56692)) )
))
(declare-datatypes ((List!56693 0))(
  ( (Nil!56569) (Cons!56569 (h!63017 C!26842) (t!366985 List!56693)) )
))
(declare-datatypes ((IArray!29691 0))(
  ( (IArray!29692 (innerList!14903 List!56693)) )
))
(declare-datatypes ((Conc!14815 0))(
  ( (Node!14815 (left!41211 Conc!14815) (right!41541 Conc!14815) (csize!29860 Int) (cheight!15026 Int)) (Leaf!24656 (xs!18131 IArray!29691) (csize!29861 Int)) (Empty!14815) )
))
(declare-datatypes ((BalanceConc!29060 0))(
  ( (BalanceConc!29061 (c!834501 Conc!14815)) )
))
(declare-datatypes ((TokenValueInjection!16422 0))(
  ( (TokenValueInjection!16423 (toValue!11184 Int) (toChars!11043 Int)) )
))
(declare-datatypes ((Rule!16294 0))(
  ( (Rule!16295 (regex!8247 Regex!13322) (tag!9111 String!64228) (isSeparator!8247 Bool) (transformation!8247 TokenValueInjection!16422)) )
))
(declare-fun rule!164 () Rule!16294)

(declare-fun order!25863 () Int)

(declare-fun lambda!244667 () Int)

(declare-fun dynLambda!22910 (Int Int) Int)

(declare-fun dynLambda!22911 (Int Int) Int)

(assert (=> b!4909437 (< (dynLambda!22910 order!25863 (toValue!11184 (transformation!8247 rule!164))) (dynLambda!22911 order!25865 lambda!244667))))

(declare-fun order!25867 () Int)

(declare-fun dynLambda!22912 (Int Int) Int)

(assert (=> b!4909437 (< (dynLambda!22912 order!25867 (toChars!11043 (transformation!8247 rule!164))) (dynLambda!22911 order!25865 lambda!244667))))

(declare-fun b!4909416 () Bool)

(declare-fun e!3068719 () Bool)

(declare-fun e!3068714 () Bool)

(assert (=> b!4909416 (= e!3068719 e!3068714)))

(declare-fun res!2097121 () Bool)

(assert (=> b!4909416 (=> res!2097121 e!3068714)))

(declare-fun lt!2014943 () TokenValue!8557)

(declare-fun lt!2014948 () BalanceConc!29060)

(declare-fun apply!13591 (TokenValueInjection!16422 BalanceConc!29060) TokenValue!8557)

(assert (=> b!4909416 (= res!2097121 (not (= (apply!13591 (transformation!8247 rule!164) lt!2014948) lt!2014943)))))

(declare-datatypes ((tuple2!60908 0))(
  ( (tuple2!60909 (_1!33757 BalanceConc!29060) (_2!33757 BalanceConc!29060)) )
))
(declare-fun lt!2014950 () tuple2!60908)

(declare-datatypes ((Unit!146807 0))(
  ( (Unit!146808) )
))
(declare-fun lt!2014955 () Unit!146807)

(declare-fun lemmaEqSameImage!1129 (TokenValueInjection!16422 BalanceConc!29060 BalanceConc!29060) Unit!146807)

(assert (=> b!4909416 (= lt!2014955 (lemmaEqSameImage!1129 (transformation!8247 rule!164) (_1!33757 lt!2014950) lt!2014948))))

(declare-fun res!2097120 () Bool)

(declare-fun e!3068716 () Bool)

(assert (=> b!4909417 (=> res!2097120 e!3068716)))

(declare-fun Forall!1744 (Int) Bool)

(assert (=> b!4909417 (= res!2097120 (not (Forall!1744 lambda!244667)))))

(declare-fun res!2097125 () Bool)

(declare-fun e!3068721 () Bool)

(assert (=> start!515014 (=> (not res!2097125) (not e!3068721))))

(declare-datatypes ((LexerInterface!7839 0))(
  ( (LexerInterfaceExt!7836 (__x!34408 Int)) (Lexer!7837) )
))
(declare-fun thiss!15943 () LexerInterface!7839)

(assert (=> start!515014 (= res!2097125 (is-Lexer!7837 thiss!15943))))

(assert (=> start!515014 e!3068721))

(assert (=> start!515014 true))

(declare-fun e!3068718 () Bool)

(assert (=> start!515014 e!3068718))

(declare-fun input!1509 () BalanceConc!29060)

(declare-fun e!3068717 () Bool)

(declare-fun inv!73101 (BalanceConc!29060) Bool)

(assert (=> start!515014 (and (inv!73101 input!1509) e!3068717)))

(declare-fun b!4909418 () Bool)

(declare-fun e!3068715 () Bool)

(declare-datatypes ((Token!15022 0))(
  ( (Token!15023 (value!264173 TokenValue!8557) (rule!11459 Rule!16294) (size!37328 Int) (originalCharacters!8542 List!56693)) )
))
(declare-datatypes ((tuple2!60910 0))(
  ( (tuple2!60911 (_1!33758 Token!15022) (_2!33758 BalanceConc!29060)) )
))
(declare-datatypes ((Option!14131 0))(
  ( (None!14130) (Some!14130 (v!50092 tuple2!60910)) )
))
(declare-fun lt!2014953 () Option!14131)

(declare-datatypes ((tuple2!60912 0))(
  ( (tuple2!60913 (_1!33759 Token!15022) (_2!33759 List!56693)) )
))
(declare-fun lt!2014947 () tuple2!60912)

(declare-fun get!19577 (Option!14131) tuple2!60910)

(assert (=> b!4909418 (= e!3068715 (= (_1!33758 (get!19577 lt!2014953)) (_1!33759 lt!2014947)))))

(declare-fun b!4909419 () Bool)

(declare-fun res!2097115 () Bool)

(assert (=> b!4909419 (=> (not res!2097115) (not e!3068721))))

(declare-fun ruleValid!3744 (LexerInterface!7839 Rule!16294) Bool)

(assert (=> b!4909419 (= res!2097115 (ruleValid!3744 thiss!15943 rule!164))))

(declare-fun b!4909420 () Bool)

(declare-fun res!2097118 () Bool)

(assert (=> b!4909420 (=> res!2097118 e!3068719)))

(declare-fun lt!2014952 () Bool)

(assert (=> b!4909420 (= res!2097118 (not lt!2014952))))

(declare-fun tp!1380640 () Bool)

(declare-fun e!3068720 () Bool)

(declare-fun b!4909421 () Bool)

(declare-fun inv!73098 (String!64228) Bool)

(declare-fun inv!73102 (TokenValueInjection!16422) Bool)

(assert (=> b!4909421 (= e!3068718 (and tp!1380640 (inv!73098 (tag!9111 rule!164)) (inv!73102 (transformation!8247 rule!164)) e!3068720))))

(declare-fun b!4909422 () Bool)

(assert (=> b!4909422 (= e!3068714 e!3068715)))

(declare-fun res!2097124 () Bool)

(assert (=> b!4909422 (=> res!2097124 e!3068715)))

(declare-fun lt!2014946 () Int)

(declare-fun lt!2014942 () List!56693)

(declare-fun lt!2014949 () Token!15022)

(assert (=> b!4909422 (= res!2097124 (or (not (= (value!264173 (_1!33759 lt!2014947)) lt!2014943)) (not (= (rule!11459 (_1!33759 lt!2014947)) rule!164)) (not (= (size!37328 (_1!33759 lt!2014947)) lt!2014946)) (not (= (originalCharacters!8542 (_1!33759 lt!2014947)) lt!2014942)) (not (= lt!2014949 (_1!33759 lt!2014947)))))))

(declare-datatypes ((Option!14132 0))(
  ( (None!14131) (Some!14131 (v!50093 tuple2!60912)) )
))
(declare-fun lt!2014951 () Option!14132)

(declare-fun get!19578 (Option!14132) tuple2!60912)

(assert (=> b!4909422 (= lt!2014947 (get!19578 lt!2014951))))

(declare-fun b!4909423 () Bool)

(declare-fun res!2097117 () Bool)

(assert (=> b!4909423 (=> res!2097117 e!3068719)))

(declare-fun list!17843 (BalanceConc!29060) List!56693)

(assert (=> b!4909423 (= res!2097117 (not (= (list!17843 lt!2014948) lt!2014942)))))

(declare-fun b!4909424 () Bool)

(declare-fun e!3068712 () Bool)

(declare-datatypes ((tuple2!60914 0))(
  ( (tuple2!60915 (_1!33760 List!56693) (_2!33760 List!56693)) )
))
(declare-fun lt!2014954 () tuple2!60914)

(declare-fun matchR!6589 (Regex!13322 List!56693) Bool)

(assert (=> b!4909424 (= e!3068712 (matchR!6589 (regex!8247 rule!164) (_1!33760 lt!2014954)))))

(declare-fun b!4909425 () Bool)

(declare-fun e!3068713 () Bool)

(assert (=> b!4909425 (= e!3068713 (not e!3068716))))

(declare-fun res!2097123 () Bool)

(assert (=> b!4909425 (=> res!2097123 e!3068716)))

(declare-fun semiInverseModEq!3648 (Int Int) Bool)

(assert (=> b!4909425 (= res!2097123 (not (semiInverseModEq!3648 (toChars!11043 (transformation!8247 rule!164)) (toValue!11184 (transformation!8247 rule!164)))))))

(declare-fun lt!2014945 () Unit!146807)

(declare-fun lemmaInv!1293 (TokenValueInjection!16422) Unit!146807)

(assert (=> b!4909425 (= lt!2014945 (lemmaInv!1293 (transformation!8247 rule!164)))))

(assert (=> b!4909425 e!3068712))

(declare-fun res!2097119 () Bool)

(assert (=> b!4909425 (=> res!2097119 e!3068712)))

(declare-fun isEmpty!30479 (List!56693) Bool)

(assert (=> b!4909425 (= res!2097119 (isEmpty!30479 (_1!33760 lt!2014954)))))

(declare-fun lt!2014957 () List!56693)

(declare-fun findLongestMatchInner!1810 (Regex!13322 List!56693 Int List!56693 List!56693 Int) tuple2!60914)

(declare-fun size!37329 (List!56693) Int)

(assert (=> b!4909425 (= lt!2014954 (findLongestMatchInner!1810 (regex!8247 rule!164) Nil!56569 (size!37329 Nil!56569) lt!2014957 lt!2014957 (size!37329 lt!2014957)))))

(declare-fun lt!2014956 () Unit!146807)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1773 (Regex!13322 List!56693) Unit!146807)

(assert (=> b!4909425 (= lt!2014956 (longestMatchIsAcceptedByMatchOrIsEmpty!1773 (regex!8247 rule!164) lt!2014957))))

(assert (=> b!4909425 (= lt!2014957 (list!17843 input!1509))))

(declare-fun b!4909426 () Bool)

(declare-fun tp!1380641 () Bool)

(declare-fun inv!73103 (Conc!14815) Bool)

(assert (=> b!4909426 (= e!3068717 (and (inv!73103 (c!834501 input!1509)) tp!1380641))))

(declare-fun b!4909427 () Bool)

(assert (=> b!4909427 (= e!3068716 e!3068719)))

(declare-fun res!2097122 () Bool)

(assert (=> b!4909427 (=> res!2097122 e!3068719)))

(declare-fun isDefined!11140 (Option!14132) Bool)

(assert (=> b!4909427 (= res!2097122 (not (= lt!2014952 (isDefined!11140 lt!2014951))))))

(declare-fun isDefined!11141 (Option!14131) Bool)

(assert (=> b!4909427 (= lt!2014952 (isDefined!11141 lt!2014953))))

(declare-fun maxPrefixOneRule!3584 (LexerInterface!7839 Rule!16294 List!56693) Option!14132)

(assert (=> b!4909427 (= lt!2014951 (maxPrefixOneRule!3584 thiss!15943 rule!164 lt!2014957))))

(assert (=> b!4909427 (= lt!2014953 (Some!14130 (tuple2!60911 lt!2014949 (_2!33757 lt!2014950))))))

(assert (=> b!4909427 (= lt!2014949 (Token!15023 lt!2014943 rule!164 lt!2014946 lt!2014942))))

(declare-fun size!37330 (BalanceConc!29060) Int)

(assert (=> b!4909427 (= lt!2014946 (size!37330 (_1!33757 lt!2014950)))))

(assert (=> b!4909427 (= lt!2014943 (apply!13591 (transformation!8247 rule!164) (_1!33757 lt!2014950)))))

(declare-fun lt!2014958 () Unit!146807)

(declare-fun ForallOf!1184 (Int BalanceConc!29060) Unit!146807)

(assert (=> b!4909427 (= lt!2014958 (ForallOf!1184 lambda!244667 lt!2014948))))

(declare-fun seqFromList!5989 (List!56693) BalanceConc!29060)

(assert (=> b!4909427 (= lt!2014948 (seqFromList!5989 lt!2014942))))

(assert (=> b!4909427 (= lt!2014942 (list!17843 (_1!33757 lt!2014950)))))

(declare-fun lt!2014944 () Unit!146807)

(assert (=> b!4909427 (= lt!2014944 (ForallOf!1184 lambda!244667 (_1!33757 lt!2014950)))))

(assert (=> b!4909428 (= e!3068720 (and tp!1380642 tp!1380643))))

(declare-fun b!4909429 () Bool)

(assert (=> b!4909429 (= e!3068721 e!3068713)))

(declare-fun res!2097116 () Bool)

(assert (=> b!4909429 (=> (not res!2097116) (not e!3068713))))

(declare-fun isEmpty!30480 (BalanceConc!29060) Bool)

(assert (=> b!4909429 (= res!2097116 (not (isEmpty!30480 (_1!33757 lt!2014950))))))

(declare-fun findLongestMatchWithZipperSequence!335 (Regex!13322 BalanceConc!29060) tuple2!60908)

(assert (=> b!4909429 (= lt!2014950 (findLongestMatchWithZipperSequence!335 (regex!8247 rule!164) input!1509))))

(assert (= (and start!515014 res!2097125) b!4909419))

(assert (= (and b!4909419 res!2097115) b!4909429))

(assert (= (and b!4909429 res!2097116) b!4909425))

(assert (= (and b!4909425 (not res!2097119)) b!4909424))

(assert (= (and b!4909425 (not res!2097123)) b!4909417))

(assert (= (and b!4909417 (not res!2097120)) b!4909427))

(assert (= (and b!4909427 (not res!2097122)) b!4909420))

(assert (= (and b!4909420 (not res!2097118)) b!4909423))

(assert (= (and b!4909423 (not res!2097117)) b!4909416))

(assert (= (and b!4909416 (not res!2097121)) b!4909422))

(assert (= (and b!4909422 (not res!2097124)) b!4909418))

(assert (= b!4909421 b!4909428))

(assert (= start!515014 b!4909421))

(assert (= start!515014 b!4909426))

(declare-fun m!5919202 () Bool)

(assert (=> b!4909429 m!5919202))

(declare-fun m!5919204 () Bool)

(assert (=> b!4909429 m!5919204))

(declare-fun m!5919206 () Bool)

(assert (=> start!515014 m!5919206))

(declare-fun m!5919208 () Bool)

(assert (=> b!4909424 m!5919208))

(declare-fun m!5919210 () Bool)

(assert (=> b!4909416 m!5919210))

(declare-fun m!5919212 () Bool)

(assert (=> b!4909416 m!5919212))

(declare-fun m!5919214 () Bool)

(assert (=> b!4909423 m!5919214))

(declare-fun m!5919216 () Bool)

(assert (=> b!4909426 m!5919216))

(declare-fun m!5919218 () Bool)

(assert (=> b!4909418 m!5919218))

(declare-fun m!5919220 () Bool)

(assert (=> b!4909427 m!5919220))

(declare-fun m!5919222 () Bool)

(assert (=> b!4909427 m!5919222))

(declare-fun m!5919224 () Bool)

(assert (=> b!4909427 m!5919224))

(declare-fun m!5919226 () Bool)

(assert (=> b!4909427 m!5919226))

(declare-fun m!5919228 () Bool)

(assert (=> b!4909427 m!5919228))

(declare-fun m!5919230 () Bool)

(assert (=> b!4909427 m!5919230))

(declare-fun m!5919232 () Bool)

(assert (=> b!4909427 m!5919232))

(declare-fun m!5919234 () Bool)

(assert (=> b!4909427 m!5919234))

(declare-fun m!5919236 () Bool)

(assert (=> b!4909427 m!5919236))

(declare-fun m!5919238 () Bool)

(assert (=> b!4909425 m!5919238))

(declare-fun m!5919240 () Bool)

(assert (=> b!4909425 m!5919240))

(declare-fun m!5919242 () Bool)

(assert (=> b!4909425 m!5919242))

(declare-fun m!5919244 () Bool)

(assert (=> b!4909425 m!5919244))

(declare-fun m!5919246 () Bool)

(assert (=> b!4909425 m!5919246))

(declare-fun m!5919248 () Bool)

(assert (=> b!4909425 m!5919248))

(declare-fun m!5919250 () Bool)

(assert (=> b!4909425 m!5919250))

(assert (=> b!4909425 m!5919240))

(assert (=> b!4909425 m!5919244))

(declare-fun m!5919252 () Bool)

(assert (=> b!4909425 m!5919252))

(declare-fun m!5919254 () Bool)

(assert (=> b!4909422 m!5919254))

(declare-fun m!5919256 () Bool)

(assert (=> b!4909417 m!5919256))

(declare-fun m!5919258 () Bool)

(assert (=> b!4909421 m!5919258))

(declare-fun m!5919260 () Bool)

(assert (=> b!4909421 m!5919260))

(declare-fun m!5919262 () Bool)

(assert (=> b!4909419 m!5919262))

(push 1)

(assert (not b!4909422))

(assert (not b!4909429))

(assert (not b!4909427))

(assert (not b!4909419))

(assert (not start!515014))

(assert (not b!4909417))

(assert (not b!4909424))

(assert (not b_next!132749))

(assert b_and!346631)

(assert (not b!4909425))

(assert (not b!4909421))

(assert (not b!4909423))

(assert (not b!4909418))

(assert (not b_next!132751))

(assert (not b!4909426))

(assert (not b!4909416))

(assert b_and!346633)

(check-sat)

(pop 1)

(push 1)

(assert b_and!346633)

(assert b_and!346631)

(assert (not b_next!132751))

(assert (not b_next!132749))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1577749 () Bool)

(declare-fun lt!2015012 () Bool)

(assert (=> d!1577749 (= lt!2015012 (isEmpty!30479 (list!17843 (_1!33757 lt!2014950))))))

(declare-fun isEmpty!30483 (Conc!14815) Bool)

(assert (=> d!1577749 (= lt!2015012 (isEmpty!30483 (c!834501 (_1!33757 lt!2014950))))))

(assert (=> d!1577749 (= (isEmpty!30480 (_1!33757 lt!2014950)) lt!2015012)))

(declare-fun bs!1177355 () Bool)

(assert (= bs!1177355 d!1577749))

(assert (=> bs!1177355 m!5919222))

(assert (=> bs!1177355 m!5919222))

(declare-fun m!5919326 () Bool)

(assert (=> bs!1177355 m!5919326))

(declare-fun m!5919328 () Bool)

(assert (=> bs!1177355 m!5919328))

(assert (=> b!4909429 d!1577749))

(declare-fun d!1577751 () Bool)

(declare-fun lt!2015015 () tuple2!60908)

(declare-fun findLongestMatch!1676 (Regex!13322 List!56693) tuple2!60914)

(assert (=> d!1577751 (= (tuple2!60915 (list!17843 (_1!33757 lt!2015015)) (list!17843 (_2!33757 lt!2015015))) (findLongestMatch!1676 (regex!8247 rule!164) (list!17843 input!1509)))))

(declare-fun choose!35906 (Regex!13322 BalanceConc!29060) tuple2!60908)

(assert (=> d!1577751 (= lt!2015015 (choose!35906 (regex!8247 rule!164) input!1509))))

(declare-fun validRegex!5913 (Regex!13322) Bool)

(assert (=> d!1577751 (validRegex!5913 (regex!8247 rule!164))))

(assert (=> d!1577751 (= (findLongestMatchWithZipperSequence!335 (regex!8247 rule!164) input!1509) lt!2015015)))

(declare-fun bs!1177356 () Bool)

(assert (= bs!1177356 d!1577751))

(declare-fun m!5919330 () Bool)

(assert (=> bs!1177356 m!5919330))

(assert (=> bs!1177356 m!5919246))

(declare-fun m!5919332 () Bool)

(assert (=> bs!1177356 m!5919332))

(declare-fun m!5919334 () Bool)

(assert (=> bs!1177356 m!5919334))

(assert (=> bs!1177356 m!5919246))

(declare-fun m!5919336 () Bool)

(assert (=> bs!1177356 m!5919336))

(declare-fun m!5919338 () Bool)

(assert (=> bs!1177356 m!5919338))

(assert (=> b!4909429 d!1577751))

(declare-fun d!1577753 () Bool)

(declare-fun res!2097167 () Bool)

(declare-fun e!3068769 () Bool)

(assert (=> d!1577753 (=> (not res!2097167) (not e!3068769))))

(assert (=> d!1577753 (= res!2097167 (validRegex!5913 (regex!8247 rule!164)))))

(assert (=> d!1577753 (= (ruleValid!3744 thiss!15943 rule!164) e!3068769)))

(declare-fun b!4909492 () Bool)

(declare-fun res!2097168 () Bool)

(assert (=> b!4909492 (=> (not res!2097168) (not e!3068769))))

(declare-fun nullable!4586 (Regex!13322) Bool)

(assert (=> b!4909492 (= res!2097168 (not (nullable!4586 (regex!8247 rule!164))))))

(declare-fun b!4909493 () Bool)

(assert (=> b!4909493 (= e!3068769 (not (= (tag!9111 rule!164) (String!64229 ""))))))

(assert (= (and d!1577753 res!2097167) b!4909492))

(assert (= (and b!4909492 res!2097168) b!4909493))

(assert (=> d!1577753 m!5919338))

(declare-fun m!5919340 () Bool)

(assert (=> b!4909492 m!5919340))

(assert (=> b!4909419 d!1577753))

(declare-fun d!1577755 () Bool)

(assert (=> d!1577755 (= (inv!73098 (tag!9111 rule!164)) (= (mod (str.len (value!264147 (tag!9111 rule!164))) 2) 0))))

(assert (=> b!4909421 d!1577755))

(declare-fun d!1577757 () Bool)

(declare-fun res!2097171 () Bool)

(declare-fun e!3068772 () Bool)

(assert (=> d!1577757 (=> (not res!2097171) (not e!3068772))))

(assert (=> d!1577757 (= res!2097171 (semiInverseModEq!3648 (toChars!11043 (transformation!8247 rule!164)) (toValue!11184 (transformation!8247 rule!164))))))

(assert (=> d!1577757 (= (inv!73102 (transformation!8247 rule!164)) e!3068772)))

(declare-fun b!4909496 () Bool)

(declare-fun equivClasses!3498 (Int Int) Bool)

(assert (=> b!4909496 (= e!3068772 (equivClasses!3498 (toChars!11043 (transformation!8247 rule!164)) (toValue!11184 (transformation!8247 rule!164))))))

(assert (= (and d!1577757 res!2097171) b!4909496))

(assert (=> d!1577757 m!5919238))

(declare-fun m!5919342 () Bool)

(assert (=> b!4909496 m!5919342))

(assert (=> b!4909421 d!1577757))

(declare-fun d!1577759 () Bool)

(assert (=> d!1577759 (= (get!19578 lt!2014951) (v!50093 lt!2014951))))

(assert (=> b!4909422 d!1577759))

(declare-fun d!1577761 () Bool)

(declare-fun list!17845 (Conc!14815) List!56693)

(assert (=> d!1577761 (= (list!17843 lt!2014948) (list!17845 (c!834501 lt!2014948)))))

(declare-fun bs!1177357 () Bool)

(assert (= bs!1177357 d!1577761))

(declare-fun m!5919344 () Bool)

(assert (=> bs!1177357 m!5919344))

(assert (=> b!4909423 d!1577761))

(declare-fun b!4909525 () Bool)

(declare-fun e!3068792 () Bool)

(declare-fun head!10487 (List!56693) C!26842)

(assert (=> b!4909525 (= e!3068792 (= (head!10487 (_1!33760 lt!2014954)) (c!834500 (regex!8247 rule!164))))))

(declare-fun bm!340830 () Bool)

(declare-fun call!340835 () Bool)

(assert (=> bm!340830 (= call!340835 (isEmpty!30479 (_1!33760 lt!2014954)))))

(declare-fun b!4909526 () Bool)

(declare-fun e!3068790 () Bool)

(declare-fun lt!2015018 () Bool)

(assert (=> b!4909526 (= e!3068790 (not lt!2015018))))

(declare-fun b!4909527 () Bool)

(declare-fun e!3068793 () Bool)

(declare-fun e!3068787 () Bool)

(assert (=> b!4909527 (= e!3068793 e!3068787)))

(declare-fun res!2097192 () Bool)

(assert (=> b!4909527 (=> res!2097192 e!3068787)))

(assert (=> b!4909527 (= res!2097192 call!340835)))

(declare-fun b!4909528 () Bool)

(declare-fun e!3068788 () Bool)

(assert (=> b!4909528 (= e!3068788 (nullable!4586 (regex!8247 rule!164)))))

(declare-fun b!4909529 () Bool)

(declare-fun e!3068789 () Bool)

(assert (=> b!4909529 (= e!3068789 e!3068790)))

(declare-fun c!834512 () Bool)

(assert (=> b!4909529 (= c!834512 (is-EmptyLang!13322 (regex!8247 rule!164)))))

(declare-fun b!4909530 () Bool)

(declare-fun res!2097190 () Bool)

(declare-fun e!3068791 () Bool)

(assert (=> b!4909530 (=> res!2097190 e!3068791)))

(assert (=> b!4909530 (= res!2097190 e!3068792)))

(declare-fun res!2097195 () Bool)

(assert (=> b!4909530 (=> (not res!2097195) (not e!3068792))))

(assert (=> b!4909530 (= res!2097195 lt!2015018)))

(declare-fun b!4909531 () Bool)

(assert (=> b!4909531 (= e!3068791 e!3068793)))

(declare-fun res!2097194 () Bool)

(assert (=> b!4909531 (=> (not res!2097194) (not e!3068793))))

(assert (=> b!4909531 (= res!2097194 (not lt!2015018))))

(declare-fun b!4909532 () Bool)

(declare-fun res!2097191 () Bool)

(assert (=> b!4909532 (=> res!2097191 e!3068791)))

(assert (=> b!4909532 (= res!2097191 (not (is-ElementMatch!13322 (regex!8247 rule!164))))))

(assert (=> b!4909532 (= e!3068790 e!3068791)))

(declare-fun b!4909533 () Bool)

(declare-fun res!2097193 () Bool)

(assert (=> b!4909533 (=> (not res!2097193) (not e!3068792))))

(declare-fun tail!9634 (List!56693) List!56693)

(assert (=> b!4909533 (= res!2097193 (isEmpty!30479 (tail!9634 (_1!33760 lt!2014954))))))

(declare-fun d!1577763 () Bool)

(assert (=> d!1577763 e!3068789))

(declare-fun c!834511 () Bool)

(assert (=> d!1577763 (= c!834511 (is-EmptyExpr!13322 (regex!8247 rule!164)))))

(assert (=> d!1577763 (= lt!2015018 e!3068788)))

(declare-fun c!834513 () Bool)

(assert (=> d!1577763 (= c!834513 (isEmpty!30479 (_1!33760 lt!2014954)))))

(assert (=> d!1577763 (validRegex!5913 (regex!8247 rule!164))))

(assert (=> d!1577763 (= (matchR!6589 (regex!8247 rule!164) (_1!33760 lt!2014954)) lt!2015018)))

(declare-fun b!4909534 () Bool)

(declare-fun res!2097189 () Bool)

(assert (=> b!4909534 (=> res!2097189 e!3068787)))

(assert (=> b!4909534 (= res!2097189 (not (isEmpty!30479 (tail!9634 (_1!33760 lt!2014954)))))))

(declare-fun b!4909535 () Bool)

(declare-fun derivativeStep!3906 (Regex!13322 C!26842) Regex!13322)

(assert (=> b!4909535 (= e!3068788 (matchR!6589 (derivativeStep!3906 (regex!8247 rule!164) (head!10487 (_1!33760 lt!2014954))) (tail!9634 (_1!33760 lt!2014954))))))

(declare-fun b!4909536 () Bool)

(assert (=> b!4909536 (= e!3068789 (= lt!2015018 call!340835))))

(declare-fun b!4909537 () Bool)

(declare-fun res!2097188 () Bool)

(assert (=> b!4909537 (=> (not res!2097188) (not e!3068792))))

(assert (=> b!4909537 (= res!2097188 (not call!340835))))

(declare-fun b!4909538 () Bool)

(assert (=> b!4909538 (= e!3068787 (not (= (head!10487 (_1!33760 lt!2014954)) (c!834500 (regex!8247 rule!164)))))))

(assert (= (and d!1577763 c!834513) b!4909528))

(assert (= (and d!1577763 (not c!834513)) b!4909535))

(assert (= (and d!1577763 c!834511) b!4909536))

(assert (= (and d!1577763 (not c!834511)) b!4909529))

(assert (= (and b!4909529 c!834512) b!4909526))

(assert (= (and b!4909529 (not c!834512)) b!4909532))

(assert (= (and b!4909532 (not res!2097191)) b!4909530))

(assert (= (and b!4909530 res!2097195) b!4909537))

(assert (= (and b!4909537 res!2097188) b!4909533))

(assert (= (and b!4909533 res!2097193) b!4909525))

(assert (= (and b!4909530 (not res!2097190)) b!4909531))

(assert (= (and b!4909531 res!2097194) b!4909527))

(assert (= (and b!4909527 (not res!2097192)) b!4909534))

(assert (= (and b!4909534 (not res!2097189)) b!4909538))

(assert (= (or b!4909536 b!4909527 b!4909537) bm!340830))

(declare-fun m!5919346 () Bool)

(assert (=> b!4909535 m!5919346))

(assert (=> b!4909535 m!5919346))

(declare-fun m!5919348 () Bool)

(assert (=> b!4909535 m!5919348))

(declare-fun m!5919350 () Bool)

(assert (=> b!4909535 m!5919350))

(assert (=> b!4909535 m!5919348))

(assert (=> b!4909535 m!5919350))

(declare-fun m!5919352 () Bool)

(assert (=> b!4909535 m!5919352))

(assert (=> d!1577763 m!5919250))

(assert (=> d!1577763 m!5919338))

(assert (=> b!4909525 m!5919346))

(assert (=> b!4909538 m!5919346))

(assert (=> b!4909534 m!5919350))

(assert (=> b!4909534 m!5919350))

(declare-fun m!5919354 () Bool)

(assert (=> b!4909534 m!5919354))

(assert (=> bm!340830 m!5919250))

(assert (=> b!4909533 m!5919350))

(assert (=> b!4909533 m!5919350))

(assert (=> b!4909533 m!5919354))

(assert (=> b!4909528 m!5919340))

(assert (=> b!4909424 d!1577763))

(declare-fun d!1577765 () Bool)

(assert (=> d!1577765 (= (list!17843 input!1509) (list!17845 (c!834501 input!1509)))))

(declare-fun bs!1177358 () Bool)

(assert (= bs!1177358 d!1577765))

(declare-fun m!5919356 () Bool)

(assert (=> bs!1177358 m!5919356))

(assert (=> b!4909425 d!1577765))

(declare-fun d!1577767 () Bool)

(declare-fun e!3068838 () Bool)

(assert (=> d!1577767 e!3068838))

(declare-fun res!2097227 () Bool)

(assert (=> d!1577767 (=> (not res!2097227) (not e!3068838))))

(declare-fun lt!2015095 () tuple2!60914)

(declare-fun ++!12274 (List!56693 List!56693) List!56693)

(assert (=> d!1577767 (= res!2097227 (= (++!12274 (_1!33760 lt!2015095) (_2!33760 lt!2015095)) lt!2014957))))

(declare-fun e!3068845 () tuple2!60914)

(assert (=> d!1577767 (= lt!2015095 e!3068845)))

(declare-fun c!834539 () Bool)

(declare-fun lostCause!1114 (Regex!13322) Bool)

(assert (=> d!1577767 (= c!834539 (lostCause!1114 (regex!8247 rule!164)))))

(declare-fun lt!2015086 () Unit!146807)

(declare-fun Unit!146812 () Unit!146807)

(assert (=> d!1577767 (= lt!2015086 Unit!146812)))

(declare-fun getSuffix!2915 (List!56693 List!56693) List!56693)

(assert (=> d!1577767 (= (getSuffix!2915 lt!2014957 Nil!56569) lt!2014957)))

(declare-fun lt!2015083 () Unit!146807)

(declare-fun lt!2015102 () Unit!146807)

(assert (=> d!1577767 (= lt!2015083 lt!2015102)))

(declare-fun lt!2015085 () List!56693)

(assert (=> d!1577767 (= lt!2014957 lt!2015085)))

(declare-fun lemmaSamePrefixThenSameSuffix!2331 (List!56693 List!56693 List!56693 List!56693 List!56693) Unit!146807)

(assert (=> d!1577767 (= lt!2015102 (lemmaSamePrefixThenSameSuffix!2331 Nil!56569 lt!2014957 Nil!56569 lt!2015085 lt!2014957))))

(assert (=> d!1577767 (= lt!2015085 (getSuffix!2915 lt!2014957 Nil!56569))))

(declare-fun lt!2015101 () Unit!146807)

(declare-fun lt!2015100 () Unit!146807)

(assert (=> d!1577767 (= lt!2015101 lt!2015100)))

(declare-fun isPrefix!4927 (List!56693 List!56693) Bool)

(assert (=> d!1577767 (isPrefix!4927 Nil!56569 (++!12274 Nil!56569 lt!2014957))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3151 (List!56693 List!56693) Unit!146807)

(assert (=> d!1577767 (= lt!2015100 (lemmaConcatTwoListThenFirstIsPrefix!3151 Nil!56569 lt!2014957))))

(assert (=> d!1577767 (validRegex!5913 (regex!8247 rule!164))))

(assert (=> d!1577767 (= (findLongestMatchInner!1810 (regex!8247 rule!164) Nil!56569 (size!37329 Nil!56569) lt!2014957 lt!2014957 (size!37329 lt!2014957)) lt!2015095)))

(declare-fun bm!340850 () Bool)

(declare-fun call!340856 () List!56693)

(assert (=> bm!340850 (= call!340856 (tail!9634 lt!2014957))))

(declare-fun bm!340851 () Bool)

(declare-fun call!340859 () C!26842)

(assert (=> bm!340851 (= call!340859 (head!10487 lt!2014957))))

(declare-fun b!4909624 () Bool)

(assert (=> b!4909624 (= e!3068845 (tuple2!60915 Nil!56569 lt!2014957))))

(declare-fun b!4909625 () Bool)

(declare-fun e!3068842 () tuple2!60914)

(assert (=> b!4909625 (= e!3068842 (tuple2!60915 Nil!56569 lt!2014957))))

(declare-fun b!4909626 () Bool)

(declare-fun e!3068843 () Unit!146807)

(declare-fun Unit!146813 () Unit!146807)

(assert (=> b!4909626 (= e!3068843 Unit!146813)))

(declare-fun b!4909627 () Bool)

(declare-fun e!3068841 () Bool)

(assert (=> b!4909627 (= e!3068838 e!3068841)))

(declare-fun res!2097228 () Bool)

(assert (=> b!4909627 (=> res!2097228 e!3068841)))

(assert (=> b!4909627 (= res!2097228 (isEmpty!30479 (_1!33760 lt!2015095)))))

(declare-fun bm!340852 () Bool)

(declare-fun call!340861 () Bool)

(assert (=> bm!340852 (= call!340861 (nullable!4586 (regex!8247 rule!164)))))

(declare-fun bm!340853 () Bool)

(declare-fun call!340862 () Unit!146807)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1086 (List!56693 List!56693 List!56693) Unit!146807)

(assert (=> bm!340853 (= call!340862 (lemmaIsPrefixSameLengthThenSameList!1086 lt!2014957 Nil!56569 lt!2014957))))

(declare-fun call!340855 () Regex!13322)

(declare-fun lt!2015093 () List!56693)

(declare-fun bm!340854 () Bool)

(declare-fun call!340860 () tuple2!60914)

(assert (=> bm!340854 (= call!340860 (findLongestMatchInner!1810 call!340855 lt!2015093 (+ (size!37329 Nil!56569) 1) call!340856 lt!2014957 (size!37329 lt!2014957)))))

(declare-fun b!4909628 () Bool)

(declare-fun lt!2015109 () tuple2!60914)

(assert (=> b!4909628 (= e!3068842 lt!2015109)))

(declare-fun b!4909629 () Bool)

(declare-fun e!3068840 () tuple2!60914)

(assert (=> b!4909629 (= e!3068840 call!340860)))

(declare-fun bm!340855 () Bool)

(declare-fun call!340857 () Bool)

(assert (=> bm!340855 (= call!340857 (isPrefix!4927 lt!2014957 lt!2014957))))

(declare-fun b!4909630 () Bool)

(declare-fun c!834544 () Bool)

(assert (=> b!4909630 (= c!834544 call!340861)))

(declare-fun lt!2015104 () Unit!146807)

(declare-fun lt!2015090 () Unit!146807)

(assert (=> b!4909630 (= lt!2015104 lt!2015090)))

(declare-fun lt!2015105 () C!26842)

(declare-fun lt!2015082 () List!56693)

(assert (=> b!4909630 (= (++!12274 (++!12274 Nil!56569 (Cons!56569 lt!2015105 Nil!56569)) lt!2015082) lt!2014957)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1358 (List!56693 C!26842 List!56693 List!56693) Unit!146807)

(assert (=> b!4909630 (= lt!2015090 (lemmaMoveElementToOtherListKeepsConcatEq!1358 Nil!56569 lt!2015105 lt!2015082 lt!2014957))))

(assert (=> b!4909630 (= lt!2015082 (tail!9634 lt!2014957))))

(assert (=> b!4909630 (= lt!2015105 (head!10487 lt!2014957))))

(declare-fun lt!2015108 () Unit!146807)

(declare-fun lt!2015099 () Unit!146807)

(assert (=> b!4909630 (= lt!2015108 lt!2015099)))

(assert (=> b!4909630 (isPrefix!4927 (++!12274 Nil!56569 (Cons!56569 (head!10487 (getSuffix!2915 lt!2014957 Nil!56569)) Nil!56569)) lt!2014957)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!740 (List!56693 List!56693) Unit!146807)

(assert (=> b!4909630 (= lt!2015099 (lemmaAddHeadSuffixToPrefixStillPrefix!740 Nil!56569 lt!2014957))))

(declare-fun lt!2015106 () Unit!146807)

(declare-fun lt!2015103 () Unit!146807)

(assert (=> b!4909630 (= lt!2015106 lt!2015103)))

(assert (=> b!4909630 (= lt!2015103 (lemmaAddHeadSuffixToPrefixStillPrefix!740 Nil!56569 lt!2014957))))

(assert (=> b!4909630 (= lt!2015093 (++!12274 Nil!56569 (Cons!56569 (head!10487 lt!2014957) Nil!56569)))))

(declare-fun lt!2015098 () Unit!146807)

(assert (=> b!4909630 (= lt!2015098 e!3068843)))

(declare-fun c!834543 () Bool)

(assert (=> b!4909630 (= c!834543 (= (size!37329 Nil!56569) (size!37329 lt!2014957)))))

(declare-fun lt!2015088 () Unit!146807)

(declare-fun lt!2015084 () Unit!146807)

(assert (=> b!4909630 (= lt!2015088 lt!2015084)))

(assert (=> b!4909630 (<= (size!37329 Nil!56569) (size!37329 lt!2014957))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!652 (List!56693 List!56693) Unit!146807)

(assert (=> b!4909630 (= lt!2015084 (lemmaIsPrefixThenSmallerEqSize!652 Nil!56569 lt!2014957))))

(declare-fun e!3068844 () tuple2!60914)

(assert (=> b!4909630 (= e!3068844 e!3068840)))

(declare-fun b!4909631 () Bool)

(assert (=> b!4909631 (= e!3068845 e!3068844)))

(declare-fun c!834540 () Bool)

(assert (=> b!4909631 (= c!834540 (= (size!37329 Nil!56569) (size!37329 lt!2014957)))))

(declare-fun b!4909632 () Bool)

(declare-fun Unit!146814 () Unit!146807)

(assert (=> b!4909632 (= e!3068843 Unit!146814)))

(declare-fun lt!2015091 () Unit!146807)

(declare-fun call!340858 () Unit!146807)

(assert (=> b!4909632 (= lt!2015091 call!340858)))

(assert (=> b!4909632 call!340857))

(declare-fun lt!2015092 () Unit!146807)

(assert (=> b!4909632 (= lt!2015092 lt!2015091)))

(declare-fun lt!2015094 () Unit!146807)

(assert (=> b!4909632 (= lt!2015094 call!340862)))

(assert (=> b!4909632 (= lt!2014957 Nil!56569)))

(declare-fun lt!2015097 () Unit!146807)

(assert (=> b!4909632 (= lt!2015097 lt!2015094)))

(assert (=> b!4909632 false))

(declare-fun bm!340856 () Bool)

(assert (=> bm!340856 (= call!340855 (derivativeStep!3906 (regex!8247 rule!164) call!340859))))

(declare-fun b!4909633 () Bool)

(assert (=> b!4909633 (= e!3068841 (>= (size!37329 (_1!33760 lt!2015095)) (size!37329 Nil!56569)))))

(declare-fun b!4909634 () Bool)

(declare-fun c!834541 () Bool)

(assert (=> b!4909634 (= c!834541 call!340861)))

(declare-fun lt!2015096 () Unit!146807)

(declare-fun lt!2015089 () Unit!146807)

(assert (=> b!4909634 (= lt!2015096 lt!2015089)))

(assert (=> b!4909634 (= lt!2014957 Nil!56569)))

(assert (=> b!4909634 (= lt!2015089 call!340862)))

(declare-fun lt!2015107 () Unit!146807)

(declare-fun lt!2015087 () Unit!146807)

(assert (=> b!4909634 (= lt!2015107 lt!2015087)))

(assert (=> b!4909634 call!340857))

(assert (=> b!4909634 (= lt!2015087 call!340858)))

(declare-fun e!3068839 () tuple2!60914)

(assert (=> b!4909634 (= e!3068844 e!3068839)))

(declare-fun bm!340857 () Bool)

(declare-fun lemmaIsPrefixRefl!3324 (List!56693 List!56693) Unit!146807)

(assert (=> bm!340857 (= call!340858 (lemmaIsPrefixRefl!3324 lt!2014957 lt!2014957))))

(declare-fun b!4909635 () Bool)

(assert (=> b!4909635 (= e!3068839 (tuple2!60915 Nil!56569 Nil!56569))))

(declare-fun b!4909636 () Bool)

(assert (=> b!4909636 (= e!3068840 e!3068842)))

(assert (=> b!4909636 (= lt!2015109 call!340860)))

(declare-fun c!834542 () Bool)

(assert (=> b!4909636 (= c!834542 (isEmpty!30479 (_1!33760 lt!2015109)))))

(declare-fun b!4909637 () Bool)

(assert (=> b!4909637 (= e!3068839 (tuple2!60915 Nil!56569 lt!2014957))))

(assert (= (and d!1577767 c!834539) b!4909624))

(assert (= (and d!1577767 (not c!834539)) b!4909631))

(assert (= (and b!4909631 c!834540) b!4909634))

(assert (= (and b!4909631 (not c!834540)) b!4909630))

(assert (= (and b!4909634 c!834541) b!4909635))

(assert (= (and b!4909634 (not c!834541)) b!4909637))

(assert (= (and b!4909630 c!834543) b!4909632))

(assert (= (and b!4909630 (not c!834543)) b!4909626))

(assert (= (and b!4909630 c!834544) b!4909636))

(assert (= (and b!4909630 (not c!834544)) b!4909629))

(assert (= (and b!4909636 c!834542) b!4909625))

(assert (= (and b!4909636 (not c!834542)) b!4909628))

(assert (= (or b!4909636 b!4909629) bm!340851))

(assert (= (or b!4909636 b!4909629) bm!340850))

(assert (= (or b!4909636 b!4909629) bm!340856))

(assert (= (or b!4909636 b!4909629) bm!340854))

(assert (= (or b!4909634 b!4909632) bm!340855))

(assert (= (or b!4909634 b!4909632) bm!340857))

(assert (= (or b!4909634 b!4909632) bm!340853))

(assert (= (or b!4909634 b!4909630) bm!340852))

(assert (= (and d!1577767 res!2097227) b!4909627))

(assert (= (and b!4909627 (not res!2097228)) b!4909633))

(assert (=> bm!340852 m!5919340))

(declare-fun m!5919382 () Bool)

(assert (=> d!1577767 m!5919382))

(declare-fun m!5919384 () Bool)

(assert (=> d!1577767 m!5919384))

(assert (=> d!1577767 m!5919338))

(declare-fun m!5919386 () Bool)

(assert (=> d!1577767 m!5919386))

(declare-fun m!5919388 () Bool)

(assert (=> d!1577767 m!5919388))

(assert (=> d!1577767 m!5919382))

(declare-fun m!5919390 () Bool)

(assert (=> d!1577767 m!5919390))

(declare-fun m!5919392 () Bool)

(assert (=> d!1577767 m!5919392))

(declare-fun m!5919394 () Bool)

(assert (=> d!1577767 m!5919394))

(declare-fun m!5919396 () Bool)

(assert (=> b!4909633 m!5919396))

(assert (=> b!4909633 m!5919240))

(declare-fun m!5919398 () Bool)

(assert (=> b!4909630 m!5919398))

(declare-fun m!5919400 () Bool)

(assert (=> b!4909630 m!5919400))

(declare-fun m!5919402 () Bool)

(assert (=> b!4909630 m!5919402))

(declare-fun m!5919404 () Bool)

(assert (=> b!4909630 m!5919404))

(declare-fun m!5919406 () Bool)

(assert (=> b!4909630 m!5919406))

(declare-fun m!5919408 () Bool)

(assert (=> b!4909630 m!5919408))

(assert (=> b!4909630 m!5919240))

(declare-fun m!5919410 () Bool)

(assert (=> b!4909630 m!5919410))

(declare-fun m!5919412 () Bool)

(assert (=> b!4909630 m!5919412))

(assert (=> b!4909630 m!5919404))

(declare-fun m!5919414 () Bool)

(assert (=> b!4909630 m!5919414))

(declare-fun m!5919416 () Bool)

(assert (=> b!4909630 m!5919416))

(assert (=> b!4909630 m!5919244))

(assert (=> b!4909630 m!5919394))

(declare-fun m!5919418 () Bool)

(assert (=> b!4909630 m!5919418))

(assert (=> b!4909630 m!5919394))

(assert (=> b!4909630 m!5919406))

(declare-fun m!5919420 () Bool)

(assert (=> bm!340855 m!5919420))

(declare-fun m!5919422 () Bool)

(assert (=> bm!340856 m!5919422))

(declare-fun m!5919424 () Bool)

(assert (=> b!4909636 m!5919424))

(declare-fun m!5919426 () Bool)

(assert (=> b!4909627 m!5919426))

(assert (=> bm!340850 m!5919410))

(assert (=> bm!340854 m!5919244))

(declare-fun m!5919428 () Bool)

(assert (=> bm!340854 m!5919428))

(assert (=> bm!340851 m!5919400))

(declare-fun m!5919430 () Bool)

(assert (=> bm!340857 m!5919430))

(declare-fun m!5919432 () Bool)

(assert (=> bm!340853 m!5919432))

(assert (=> b!4909425 d!1577767))

(declare-fun d!1577787 () Bool)

(assert (=> d!1577787 (= (isEmpty!30479 (_1!33760 lt!2014954)) (is-Nil!56569 (_1!33760 lt!2014954)))))

(assert (=> b!4909425 d!1577787))

(declare-fun d!1577789 () Bool)

(declare-fun lt!2015112 () Int)

(assert (=> d!1577789 (>= lt!2015112 0)))

(declare-fun e!3068848 () Int)

(assert (=> d!1577789 (= lt!2015112 e!3068848)))

(declare-fun c!834547 () Bool)

(assert (=> d!1577789 (= c!834547 (is-Nil!56569 lt!2014957))))

(assert (=> d!1577789 (= (size!37329 lt!2014957) lt!2015112)))

(declare-fun b!4909642 () Bool)

(assert (=> b!4909642 (= e!3068848 0)))

(declare-fun b!4909643 () Bool)

(assert (=> b!4909643 (= e!3068848 (+ 1 (size!37329 (t!366985 lt!2014957))))))

(assert (= (and d!1577789 c!834547) b!4909642))

(assert (= (and d!1577789 (not c!834547)) b!4909643))

(declare-fun m!5919434 () Bool)

(assert (=> b!4909643 m!5919434))

(assert (=> b!4909425 d!1577789))

(declare-fun d!1577791 () Bool)

(declare-fun e!3068851 () Bool)

(assert (=> d!1577791 e!3068851))

(declare-fun res!2097231 () Bool)

(assert (=> d!1577791 (=> (not res!2097231) (not e!3068851))))

(assert (=> d!1577791 (= res!2097231 (semiInverseModEq!3648 (toChars!11043 (transformation!8247 rule!164)) (toValue!11184 (transformation!8247 rule!164))))))

(declare-fun Unit!146815 () Unit!146807)

(assert (=> d!1577791 (= (lemmaInv!1293 (transformation!8247 rule!164)) Unit!146815)))

(declare-fun b!4909646 () Bool)

(assert (=> b!4909646 (= e!3068851 (equivClasses!3498 (toChars!11043 (transformation!8247 rule!164)) (toValue!11184 (transformation!8247 rule!164))))))

(assert (= (and d!1577791 res!2097231) b!4909646))

(assert (=> d!1577791 m!5919238))

(assert (=> b!4909646 m!5919342))

(assert (=> b!4909425 d!1577791))

(declare-fun d!1577793 () Bool)

(declare-fun lt!2015113 () Int)

(assert (=> d!1577793 (>= lt!2015113 0)))

(declare-fun e!3068852 () Int)

(assert (=> d!1577793 (= lt!2015113 e!3068852)))

(declare-fun c!834548 () Bool)

(assert (=> d!1577793 (= c!834548 (is-Nil!56569 Nil!56569))))

(assert (=> d!1577793 (= (size!37329 Nil!56569) lt!2015113)))

(declare-fun b!4909647 () Bool)

(assert (=> b!4909647 (= e!3068852 0)))

(declare-fun b!4909648 () Bool)

(assert (=> b!4909648 (= e!3068852 (+ 1 (size!37329 (t!366985 Nil!56569))))))

(assert (= (and d!1577793 c!834548) b!4909647))

(assert (= (and d!1577793 (not c!834548)) b!4909648))

(declare-fun m!5919436 () Bool)

(assert (=> b!4909648 m!5919436))

(assert (=> b!4909425 d!1577793))

(declare-fun bs!1177362 () Bool)

(declare-fun d!1577795 () Bool)

(assert (= bs!1177362 (and d!1577795 b!4909417)))

(declare-fun lambda!244680 () Int)

(assert (=> bs!1177362 (= lambda!244680 lambda!244667)))

(assert (=> d!1577795 true))

(assert (=> d!1577795 (< (dynLambda!22912 order!25867 (toChars!11043 (transformation!8247 rule!164))) (dynLambda!22911 order!25865 lambda!244680))))

(assert (=> d!1577795 true))

(assert (=> d!1577795 (< (dynLambda!22910 order!25863 (toValue!11184 (transformation!8247 rule!164))) (dynLambda!22911 order!25865 lambda!244680))))

(assert (=> d!1577795 (= (semiInverseModEq!3648 (toChars!11043 (transformation!8247 rule!164)) (toValue!11184 (transformation!8247 rule!164))) (Forall!1744 lambda!244680))))

(declare-fun bs!1177363 () Bool)

(assert (= bs!1177363 d!1577795))

(declare-fun m!5919438 () Bool)

(assert (=> bs!1177363 m!5919438))

(assert (=> b!4909425 d!1577795))

(declare-fun d!1577797 () Bool)

(declare-fun e!3068855 () Bool)

(assert (=> d!1577797 e!3068855))

(declare-fun res!2097234 () Bool)

(assert (=> d!1577797 (=> res!2097234 e!3068855)))

(assert (=> d!1577797 (= res!2097234 (isEmpty!30479 (_1!33760 (findLongestMatchInner!1810 (regex!8247 rule!164) Nil!56569 (size!37329 Nil!56569) lt!2014957 lt!2014957 (size!37329 lt!2014957)))))))

(declare-fun lt!2015116 () Unit!146807)

(declare-fun choose!35907 (Regex!13322 List!56693) Unit!146807)

(assert (=> d!1577797 (= lt!2015116 (choose!35907 (regex!8247 rule!164) lt!2014957))))

(assert (=> d!1577797 (validRegex!5913 (regex!8247 rule!164))))

(assert (=> d!1577797 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1773 (regex!8247 rule!164) lt!2014957) lt!2015116)))

(declare-fun b!4909655 () Bool)

(assert (=> b!4909655 (= e!3068855 (matchR!6589 (regex!8247 rule!164) (_1!33760 (findLongestMatchInner!1810 (regex!8247 rule!164) Nil!56569 (size!37329 Nil!56569) lt!2014957 lt!2014957 (size!37329 lt!2014957)))))))

(assert (= (and d!1577797 (not res!2097234)) b!4909655))

(assert (=> d!1577797 m!5919338))

(assert (=> d!1577797 m!5919240))

(assert (=> d!1577797 m!5919244))

(assert (=> d!1577797 m!5919252))

(declare-fun m!5919440 () Bool)

(assert (=> d!1577797 m!5919440))

(declare-fun m!5919442 () Bool)

(assert (=> d!1577797 m!5919442))

(assert (=> d!1577797 m!5919244))

(assert (=> d!1577797 m!5919240))

(assert (=> b!4909655 m!5919240))

(assert (=> b!4909655 m!5919244))

(assert (=> b!4909655 m!5919240))

(assert (=> b!4909655 m!5919244))

(assert (=> b!4909655 m!5919252))

(declare-fun m!5919444 () Bool)

(assert (=> b!4909655 m!5919444))

(assert (=> b!4909425 d!1577797))

(declare-fun d!1577799 () Bool)

(declare-fun c!834551 () Bool)

(assert (=> d!1577799 (= c!834551 (is-Node!14815 (c!834501 input!1509)))))

(declare-fun e!3068860 () Bool)

(assert (=> d!1577799 (= (inv!73103 (c!834501 input!1509)) e!3068860)))

(declare-fun b!4909662 () Bool)

(declare-fun inv!73107 (Conc!14815) Bool)

(assert (=> b!4909662 (= e!3068860 (inv!73107 (c!834501 input!1509)))))

(declare-fun b!4909663 () Bool)

(declare-fun e!3068861 () Bool)

(assert (=> b!4909663 (= e!3068860 e!3068861)))

(declare-fun res!2097237 () Bool)

(assert (=> b!4909663 (= res!2097237 (not (is-Leaf!24656 (c!834501 input!1509))))))

(assert (=> b!4909663 (=> res!2097237 e!3068861)))

(declare-fun b!4909664 () Bool)

(declare-fun inv!73108 (Conc!14815) Bool)

(assert (=> b!4909664 (= e!3068861 (inv!73108 (c!834501 input!1509)))))

(assert (= (and d!1577799 c!834551) b!4909662))

(assert (= (and d!1577799 (not c!834551)) b!4909663))

(assert (= (and b!4909663 (not res!2097237)) b!4909664))

(declare-fun m!5919446 () Bool)

(assert (=> b!4909662 m!5919446))

(declare-fun m!5919448 () Bool)

(assert (=> b!4909664 m!5919448))

(assert (=> b!4909426 d!1577799))

(declare-fun d!1577801 () Bool)

(declare-fun dynLambda!22916 (Int BalanceConc!29060) TokenValue!8557)

(assert (=> d!1577801 (= (apply!13591 (transformation!8247 rule!164) lt!2014948) (dynLambda!22916 (toValue!11184 (transformation!8247 rule!164)) lt!2014948))))

(declare-fun b_lambda!195809 () Bool)

(assert (=> (not b_lambda!195809) (not d!1577801)))

(declare-fun t!366989 () Bool)

(declare-fun tb!260023 () Bool)

(assert (=> (and b!4909428 (= (toValue!11184 (transformation!8247 rule!164)) (toValue!11184 (transformation!8247 rule!164))) t!366989) tb!260023))

(declare-fun result!323874 () Bool)

(declare-fun inv!21 (TokenValue!8557) Bool)

(assert (=> tb!260023 (= result!323874 (inv!21 (dynLambda!22916 (toValue!11184 (transformation!8247 rule!164)) lt!2014948)))))

(declare-fun m!5919450 () Bool)

(assert (=> tb!260023 m!5919450))

(assert (=> d!1577801 t!366989))

(declare-fun b_and!346639 () Bool)

(assert (= b_and!346631 (and (=> t!366989 result!323874) b_and!346639)))

(declare-fun m!5919452 () Bool)

(assert (=> d!1577801 m!5919452))

(assert (=> b!4909416 d!1577801))

(declare-fun b!4909673 () Bool)

(declare-fun e!3068869 () Bool)

(assert (=> b!4909673 (= e!3068869 true)))

(declare-fun d!1577803 () Bool)

(assert (=> d!1577803 e!3068869))

(assert (= d!1577803 b!4909673))

(declare-fun lambda!244683 () Int)

(declare-fun order!25875 () Int)

(declare-fun dynLambda!22917 (Int Int) Int)

(assert (=> b!4909673 (< (dynLambda!22910 order!25863 (toValue!11184 (transformation!8247 rule!164))) (dynLambda!22917 order!25875 lambda!244683))))

(assert (=> b!4909673 (< (dynLambda!22912 order!25867 (toChars!11043 (transformation!8247 rule!164))) (dynLambda!22917 order!25875 lambda!244683))))

(assert (=> d!1577803 (= (dynLambda!22916 (toValue!11184 (transformation!8247 rule!164)) (_1!33757 lt!2014950)) (dynLambda!22916 (toValue!11184 (transformation!8247 rule!164)) lt!2014948))))

(declare-fun lt!2015119 () Unit!146807)

(declare-fun Forall2of!465 (Int BalanceConc!29060 BalanceConc!29060) Unit!146807)

(assert (=> d!1577803 (= lt!2015119 (Forall2of!465 lambda!244683 (_1!33757 lt!2014950) lt!2014948))))

(assert (=> d!1577803 (= (list!17843 (_1!33757 lt!2014950)) (list!17843 lt!2014948))))

(assert (=> d!1577803 (= (lemmaEqSameImage!1129 (transformation!8247 rule!164) (_1!33757 lt!2014950) lt!2014948) lt!2015119)))

(declare-fun b_lambda!195811 () Bool)

(assert (=> (not b_lambda!195811) (not d!1577803)))

(declare-fun t!366991 () Bool)

(declare-fun tb!260025 () Bool)

(assert (=> (and b!4909428 (= (toValue!11184 (transformation!8247 rule!164)) (toValue!11184 (transformation!8247 rule!164))) t!366991) tb!260025))

(declare-fun result!323878 () Bool)

(assert (=> tb!260025 (= result!323878 (inv!21 (dynLambda!22916 (toValue!11184 (transformation!8247 rule!164)) (_1!33757 lt!2014950))))))

(declare-fun m!5919454 () Bool)

(assert (=> tb!260025 m!5919454))

(assert (=> d!1577803 t!366991))

(declare-fun b_and!346641 () Bool)

(assert (= b_and!346639 (and (=> t!366991 result!323878) b_and!346641)))

(declare-fun b_lambda!195813 () Bool)

(assert (=> (not b_lambda!195813) (not d!1577803)))

(assert (=> d!1577803 t!366989))

(declare-fun b_and!346643 () Bool)

(assert (= b_and!346641 (and (=> t!366989 result!323874) b_and!346643)))

(assert (=> d!1577803 m!5919222))

(assert (=> d!1577803 m!5919452))

(declare-fun m!5919456 () Bool)

(assert (=> d!1577803 m!5919456))

(assert (=> d!1577803 m!5919214))

(declare-fun m!5919458 () Bool)

(assert (=> d!1577803 m!5919458))

(assert (=> b!4909416 d!1577803))

(declare-fun d!1577805 () Bool)

(assert (=> d!1577805 (= (apply!13591 (transformation!8247 rule!164) (_1!33757 lt!2014950)) (dynLambda!22916 (toValue!11184 (transformation!8247 rule!164)) (_1!33757 lt!2014950)))))

(declare-fun b_lambda!195815 () Bool)

(assert (=> (not b_lambda!195815) (not d!1577805)))

(assert (=> d!1577805 t!366991))

(declare-fun b_and!346645 () Bool)

(assert (= b_and!346643 (and (=> t!366991 result!323878) b_and!346645)))

(assert (=> d!1577805 m!5919456))

(assert (=> b!4909427 d!1577805))

(declare-fun d!1577807 () Bool)

(declare-fun dynLambda!22918 (Int BalanceConc!29060) Bool)

(assert (=> d!1577807 (dynLambda!22918 lambda!244667 (_1!33757 lt!2014950))))

(declare-fun lt!2015122 () Unit!146807)

(declare-fun choose!35908 (Int BalanceConc!29060) Unit!146807)

(assert (=> d!1577807 (= lt!2015122 (choose!35908 lambda!244667 (_1!33757 lt!2014950)))))

(assert (=> d!1577807 (Forall!1744 lambda!244667)))

(assert (=> d!1577807 (= (ForallOf!1184 lambda!244667 (_1!33757 lt!2014950)) lt!2015122)))

(declare-fun b_lambda!195817 () Bool)

(assert (=> (not b_lambda!195817) (not d!1577807)))

(declare-fun bs!1177364 () Bool)

(assert (= bs!1177364 d!1577807))

(declare-fun m!5919460 () Bool)

(assert (=> bs!1177364 m!5919460))

(declare-fun m!5919462 () Bool)

(assert (=> bs!1177364 m!5919462))

(assert (=> bs!1177364 m!5919256))

(assert (=> b!4909427 d!1577807))

(declare-fun d!1577809 () Bool)

(assert (=> d!1577809 (= (list!17843 (_1!33757 lt!2014950)) (list!17845 (c!834501 (_1!33757 lt!2014950))))))

(declare-fun bs!1177365 () Bool)

(assert (= bs!1177365 d!1577809))

(declare-fun m!5919464 () Bool)

(assert (=> bs!1177365 m!5919464))

(assert (=> b!4909427 d!1577809))

(declare-fun d!1577811 () Bool)

(declare-fun isEmpty!30484 (Option!14132) Bool)

(assert (=> d!1577811 (= (isDefined!11140 lt!2014951) (not (isEmpty!30484 lt!2014951)))))

(declare-fun bs!1177366 () Bool)

(assert (= bs!1177366 d!1577811))

(declare-fun m!5919466 () Bool)

(assert (=> bs!1177366 m!5919466))

(assert (=> b!4909427 d!1577811))

(declare-fun d!1577813 () Bool)

(declare-fun lt!2015125 () Int)

(assert (=> d!1577813 (= lt!2015125 (size!37329 (list!17843 (_1!33757 lt!2014950))))))

(declare-fun size!37334 (Conc!14815) Int)

(assert (=> d!1577813 (= lt!2015125 (size!37334 (c!834501 (_1!33757 lt!2014950))))))

(assert (=> d!1577813 (= (size!37330 (_1!33757 lt!2014950)) lt!2015125)))

(declare-fun bs!1177367 () Bool)

(assert (= bs!1177367 d!1577813))

(assert (=> bs!1177367 m!5919222))

(assert (=> bs!1177367 m!5919222))

(declare-fun m!5919468 () Bool)

(assert (=> bs!1177367 m!5919468))

(declare-fun m!5919470 () Bool)

(assert (=> bs!1177367 m!5919470))

(assert (=> b!4909427 d!1577813))

(declare-fun b!4909692 () Bool)

(declare-fun res!2097260 () Bool)

(declare-fun e!3068880 () Bool)

(assert (=> b!4909692 (=> (not res!2097260) (not e!3068880))))

(declare-fun lt!2015137 () Option!14132)

(declare-fun charsOf!5400 (Token!15022) BalanceConc!29060)

(assert (=> b!4909692 (= res!2097260 (= (++!12274 (list!17843 (charsOf!5400 (_1!33759 (get!19578 lt!2015137)))) (_2!33759 (get!19578 lt!2015137))) lt!2014957))))

(declare-fun b!4909693 () Bool)

(assert (=> b!4909693 (= e!3068880 (= (size!37328 (_1!33759 (get!19578 lt!2015137))) (size!37329 (originalCharacters!8542 (_1!33759 (get!19578 lt!2015137))))))))

(declare-fun b!4909694 () Bool)

(declare-fun res!2097259 () Bool)

(assert (=> b!4909694 (=> (not res!2097259) (not e!3068880))))

(assert (=> b!4909694 (= res!2097259 (= (value!264173 (_1!33759 (get!19578 lt!2015137))) (apply!13591 (transformation!8247 (rule!11459 (_1!33759 (get!19578 lt!2015137)))) (seqFromList!5989 (originalCharacters!8542 (_1!33759 (get!19578 lt!2015137)))))))))

(declare-fun b!4909696 () Bool)

(declare-fun res!2097258 () Bool)

(assert (=> b!4909696 (=> (not res!2097258) (not e!3068880))))

(assert (=> b!4909696 (= res!2097258 (= (rule!11459 (_1!33759 (get!19578 lt!2015137))) rule!164))))

(declare-fun b!4909697 () Bool)

(declare-fun e!3068882 () Bool)

(assert (=> b!4909697 (= e!3068882 (matchR!6589 (regex!8247 rule!164) (_1!33760 (findLongestMatchInner!1810 (regex!8247 rule!164) Nil!56569 (size!37329 Nil!56569) lt!2014957 lt!2014957 (size!37329 lt!2014957)))))))

(declare-fun b!4909698 () Bool)

(declare-fun res!2097256 () Bool)

(assert (=> b!4909698 (=> (not res!2097256) (not e!3068880))))

(assert (=> b!4909698 (= res!2097256 (< (size!37329 (_2!33759 (get!19578 lt!2015137))) (size!37329 lt!2014957)))))

(declare-fun b!4909699 () Bool)

(declare-fun e!3068879 () Option!14132)

(assert (=> b!4909699 (= e!3068879 None!14131)))

(declare-fun b!4909700 () Bool)

(declare-fun lt!2015139 () tuple2!60914)

(assert (=> b!4909700 (= e!3068879 (Some!14131 (tuple2!60913 (Token!15023 (apply!13591 (transformation!8247 rule!164) (seqFromList!5989 (_1!33760 lt!2015139))) rule!164 (size!37330 (seqFromList!5989 (_1!33760 lt!2015139))) (_1!33760 lt!2015139)) (_2!33760 lt!2015139))))))

(declare-fun lt!2015138 () Unit!146807)

(assert (=> b!4909700 (= lt!2015138 (longestMatchIsAcceptedByMatchOrIsEmpty!1773 (regex!8247 rule!164) lt!2014957))))

(declare-fun res!2097257 () Bool)

(assert (=> b!4909700 (= res!2097257 (isEmpty!30479 (_1!33760 (findLongestMatchInner!1810 (regex!8247 rule!164) Nil!56569 (size!37329 Nil!56569) lt!2014957 lt!2014957 (size!37329 lt!2014957)))))))

(assert (=> b!4909700 (=> res!2097257 e!3068882)))

(assert (=> b!4909700 e!3068882))

(declare-fun lt!2015140 () Unit!146807)

(assert (=> b!4909700 (= lt!2015140 lt!2015138)))

(declare-fun lt!2015136 () Unit!146807)

(declare-fun lemmaSemiInverse!2588 (TokenValueInjection!16422 BalanceConc!29060) Unit!146807)

(assert (=> b!4909700 (= lt!2015136 (lemmaSemiInverse!2588 (transformation!8247 rule!164) (seqFromList!5989 (_1!33760 lt!2015139))))))

(declare-fun b!4909695 () Bool)

(declare-fun e!3068881 () Bool)

(assert (=> b!4909695 (= e!3068881 e!3068880)))

(declare-fun res!2097254 () Bool)

(assert (=> b!4909695 (=> (not res!2097254) (not e!3068880))))

(assert (=> b!4909695 (= res!2097254 (matchR!6589 (regex!8247 rule!164) (list!17843 (charsOf!5400 (_1!33759 (get!19578 lt!2015137))))))))

(declare-fun d!1577815 () Bool)

(assert (=> d!1577815 e!3068881))

(declare-fun res!2097255 () Bool)

(assert (=> d!1577815 (=> res!2097255 e!3068881)))

(assert (=> d!1577815 (= res!2097255 (isEmpty!30484 lt!2015137))))

(assert (=> d!1577815 (= lt!2015137 e!3068879)))

(declare-fun c!834554 () Bool)

(assert (=> d!1577815 (= c!834554 (isEmpty!30479 (_1!33760 lt!2015139)))))

(assert (=> d!1577815 (= lt!2015139 (findLongestMatch!1676 (regex!8247 rule!164) lt!2014957))))

(assert (=> d!1577815 (ruleValid!3744 thiss!15943 rule!164)))

(assert (=> d!1577815 (= (maxPrefixOneRule!3584 thiss!15943 rule!164 lt!2014957) lt!2015137)))

(assert (= (and d!1577815 c!834554) b!4909699))

(assert (= (and d!1577815 (not c!834554)) b!4909700))

(assert (= (and b!4909700 (not res!2097257)) b!4909697))

(assert (= (and d!1577815 (not res!2097255)) b!4909695))

(assert (= (and b!4909695 res!2097254) b!4909692))

(assert (= (and b!4909692 res!2097260) b!4909698))

(assert (= (and b!4909698 res!2097256) b!4909696))

(assert (= (and b!4909696 res!2097258) b!4909694))

(assert (= (and b!4909694 res!2097259) b!4909693))

(declare-fun m!5919472 () Bool)

(assert (=> d!1577815 m!5919472))

(declare-fun m!5919474 () Bool)

(assert (=> d!1577815 m!5919474))

(declare-fun m!5919476 () Bool)

(assert (=> d!1577815 m!5919476))

(assert (=> d!1577815 m!5919262))

(assert (=> b!4909700 m!5919240))

(assert (=> b!4909700 m!5919244))

(declare-fun m!5919478 () Bool)

(assert (=> b!4909700 m!5919478))

(declare-fun m!5919480 () Bool)

(assert (=> b!4909700 m!5919480))

(assert (=> b!4909700 m!5919478))

(declare-fun m!5919482 () Bool)

(assert (=> b!4909700 m!5919482))

(assert (=> b!4909700 m!5919478))

(declare-fun m!5919484 () Bool)

(assert (=> b!4909700 m!5919484))

(assert (=> b!4909700 m!5919442))

(assert (=> b!4909700 m!5919478))

(assert (=> b!4909700 m!5919240))

(assert (=> b!4909700 m!5919244))

(assert (=> b!4909700 m!5919252))

(assert (=> b!4909700 m!5919242))

(declare-fun m!5919486 () Bool)

(assert (=> b!4909693 m!5919486))

(declare-fun m!5919488 () Bool)

(assert (=> b!4909693 m!5919488))

(assert (=> b!4909698 m!5919486))

(declare-fun m!5919490 () Bool)

(assert (=> b!4909698 m!5919490))

(assert (=> b!4909698 m!5919244))

(assert (=> b!4909697 m!5919240))

(assert (=> b!4909697 m!5919244))

(assert (=> b!4909697 m!5919240))

(assert (=> b!4909697 m!5919244))

(assert (=> b!4909697 m!5919252))

(assert (=> b!4909697 m!5919444))

(assert (=> b!4909692 m!5919486))

(declare-fun m!5919492 () Bool)

(assert (=> b!4909692 m!5919492))

(assert (=> b!4909692 m!5919492))

(declare-fun m!5919494 () Bool)

(assert (=> b!4909692 m!5919494))

(assert (=> b!4909692 m!5919494))

(declare-fun m!5919496 () Bool)

(assert (=> b!4909692 m!5919496))

(assert (=> b!4909694 m!5919486))

(declare-fun m!5919498 () Bool)

(assert (=> b!4909694 m!5919498))

(assert (=> b!4909694 m!5919498))

(declare-fun m!5919500 () Bool)

(assert (=> b!4909694 m!5919500))

(assert (=> b!4909696 m!5919486))

(assert (=> b!4909695 m!5919486))

(assert (=> b!4909695 m!5919492))

(assert (=> b!4909695 m!5919492))

(assert (=> b!4909695 m!5919494))

(assert (=> b!4909695 m!5919494))

(declare-fun m!5919502 () Bool)

(assert (=> b!4909695 m!5919502))

(assert (=> b!4909427 d!1577815))

(declare-fun d!1577817 () Bool)

(declare-fun fromListB!2715 (List!56693) BalanceConc!29060)

(assert (=> d!1577817 (= (seqFromList!5989 lt!2014942) (fromListB!2715 lt!2014942))))

(declare-fun bs!1177368 () Bool)

(assert (= bs!1177368 d!1577817))

(declare-fun m!5919504 () Bool)

(assert (=> bs!1177368 m!5919504))

(assert (=> b!4909427 d!1577817))

(declare-fun d!1577819 () Bool)

(assert (=> d!1577819 (dynLambda!22918 lambda!244667 lt!2014948)))

(declare-fun lt!2015141 () Unit!146807)

(assert (=> d!1577819 (= lt!2015141 (choose!35908 lambda!244667 lt!2014948))))

(assert (=> d!1577819 (Forall!1744 lambda!244667)))

(assert (=> d!1577819 (= (ForallOf!1184 lambda!244667 lt!2014948) lt!2015141)))

(declare-fun b_lambda!195819 () Bool)

(assert (=> (not b_lambda!195819) (not d!1577819)))

(declare-fun bs!1177369 () Bool)

(assert (= bs!1177369 d!1577819))

(declare-fun m!5919506 () Bool)

(assert (=> bs!1177369 m!5919506))

(declare-fun m!5919508 () Bool)

(assert (=> bs!1177369 m!5919508))

(assert (=> bs!1177369 m!5919256))

(assert (=> b!4909427 d!1577819))

(declare-fun d!1577821 () Bool)

(declare-fun isEmpty!30485 (Option!14131) Bool)

(assert (=> d!1577821 (= (isDefined!11141 lt!2014953) (not (isEmpty!30485 lt!2014953)))))

(declare-fun bs!1177370 () Bool)

(assert (= bs!1177370 d!1577821))

(declare-fun m!5919510 () Bool)

(assert (=> bs!1177370 m!5919510))

(assert (=> b!4909427 d!1577821))

(declare-fun d!1577823 () Bool)

(declare-fun isBalanced!4044 (Conc!14815) Bool)

(assert (=> d!1577823 (= (inv!73101 input!1509) (isBalanced!4044 (c!834501 input!1509)))))

(declare-fun bs!1177371 () Bool)

(assert (= bs!1177371 d!1577823))

(declare-fun m!5919512 () Bool)

(assert (=> bs!1177371 m!5919512))

(assert (=> start!515014 d!1577823))

(declare-fun d!1577825 () Bool)

(declare-fun choose!35909 (Int) Bool)

(assert (=> d!1577825 (= (Forall!1744 lambda!244667) (choose!35909 lambda!244667))))

(declare-fun bs!1177372 () Bool)

(assert (= bs!1177372 d!1577825))

(declare-fun m!5919514 () Bool)

(assert (=> bs!1177372 m!5919514))

(assert (=> b!4909417 d!1577825))

(declare-fun d!1577827 () Bool)

(assert (=> d!1577827 (= (get!19577 lt!2014953) (v!50092 lt!2014953))))

(assert (=> b!4909418 d!1577827))

(declare-fun tp!1380664 () Bool)

(declare-fun tp!1380662 () Bool)

(declare-fun e!3068888 () Bool)

(declare-fun b!4909709 () Bool)

(assert (=> b!4909709 (= e!3068888 (and (inv!73103 (left!41211 (c!834501 input!1509))) tp!1380664 (inv!73103 (right!41541 (c!834501 input!1509))) tp!1380662))))

(declare-fun b!4909711 () Bool)

(declare-fun e!3068887 () Bool)

(declare-fun tp!1380663 () Bool)

(assert (=> b!4909711 (= e!3068887 tp!1380663)))

(declare-fun b!4909710 () Bool)

(declare-fun inv!73109 (IArray!29691) Bool)

(assert (=> b!4909710 (= e!3068888 (and (inv!73109 (xs!18131 (c!834501 input!1509))) e!3068887))))

(assert (=> b!4909426 (= tp!1380641 (and (inv!73103 (c!834501 input!1509)) e!3068888))))

(assert (= (and b!4909426 (is-Node!14815 (c!834501 input!1509))) b!4909709))

(assert (= b!4909710 b!4909711))

(assert (= (and b!4909426 (is-Leaf!24656 (c!834501 input!1509))) b!4909710))

(declare-fun m!5919516 () Bool)

(assert (=> b!4909709 m!5919516))

(declare-fun m!5919518 () Bool)

(assert (=> b!4909709 m!5919518))

(declare-fun m!5919520 () Bool)

(assert (=> b!4909710 m!5919520))

(assert (=> b!4909426 m!5919216))

(declare-fun e!3068891 () Bool)

(assert (=> b!4909421 (= tp!1380640 e!3068891)))

(declare-fun b!4909722 () Bool)

(declare-fun tp_is_empty!35849 () Bool)

(assert (=> b!4909722 (= e!3068891 tp_is_empty!35849)))

(declare-fun b!4909723 () Bool)

(declare-fun tp!1380679 () Bool)

(declare-fun tp!1380677 () Bool)

(assert (=> b!4909723 (= e!3068891 (and tp!1380679 tp!1380677))))

(declare-fun b!4909725 () Bool)

(declare-fun tp!1380675 () Bool)

(declare-fun tp!1380676 () Bool)

(assert (=> b!4909725 (= e!3068891 (and tp!1380675 tp!1380676))))

(declare-fun b!4909724 () Bool)

(declare-fun tp!1380678 () Bool)

(assert (=> b!4909724 (= e!3068891 tp!1380678)))

(assert (= (and b!4909421 (is-ElementMatch!13322 (regex!8247 rule!164))) b!4909722))

(assert (= (and b!4909421 (is-Concat!21879 (regex!8247 rule!164))) b!4909723))

(assert (= (and b!4909421 (is-Star!13322 (regex!8247 rule!164))) b!4909724))

(assert (= (and b!4909421 (is-Union!13322 (regex!8247 rule!164))) b!4909725))

(declare-fun b_lambda!195821 () Bool)

(assert (= b_lambda!195813 (or (and b!4909428 b_free!131959) b_lambda!195821)))

(declare-fun b_lambda!195823 () Bool)

(assert (= b_lambda!195819 (or b!4909417 b_lambda!195823)))

(declare-fun bs!1177373 () Bool)

(declare-fun d!1577829 () Bool)

(assert (= bs!1177373 (and d!1577829 b!4909417)))

(declare-fun dynLambda!22919 (Int TokenValue!8557) BalanceConc!29060)

(assert (=> bs!1177373 (= (dynLambda!22918 lambda!244667 lt!2014948) (= (list!17843 (dynLambda!22919 (toChars!11043 (transformation!8247 rule!164)) (dynLambda!22916 (toValue!11184 (transformation!8247 rule!164)) lt!2014948))) (list!17843 lt!2014948)))))

(declare-fun b_lambda!195833 () Bool)

(assert (=> (not b_lambda!195833) (not bs!1177373)))

(declare-fun t!366993 () Bool)

(declare-fun tb!260027 () Bool)

(assert (=> (and b!4909428 (= (toChars!11043 (transformation!8247 rule!164)) (toChars!11043 (transformation!8247 rule!164))) t!366993) tb!260027))

(declare-fun b!4909730 () Bool)

(declare-fun tp!1380682 () Bool)

(declare-fun e!3068894 () Bool)

(assert (=> b!4909730 (= e!3068894 (and (inv!73103 (c!834501 (dynLambda!22919 (toChars!11043 (transformation!8247 rule!164)) (dynLambda!22916 (toValue!11184 (transformation!8247 rule!164)) lt!2014948)))) tp!1380682))))

(declare-fun result!323884 () Bool)

(assert (=> tb!260027 (= result!323884 (and (inv!73101 (dynLambda!22919 (toChars!11043 (transformation!8247 rule!164)) (dynLambda!22916 (toValue!11184 (transformation!8247 rule!164)) lt!2014948))) e!3068894))))

(assert (= tb!260027 b!4909730))

(declare-fun m!5919522 () Bool)

(assert (=> b!4909730 m!5919522))

(declare-fun m!5919524 () Bool)

(assert (=> tb!260027 m!5919524))

(assert (=> bs!1177373 t!366993))

(declare-fun b_and!346647 () Bool)

(assert (= b_and!346633 (and (=> t!366993 result!323884) b_and!346647)))

(declare-fun b_lambda!195835 () Bool)

(assert (=> (not b_lambda!195835) (not bs!1177373)))

(assert (=> bs!1177373 t!366989))

(declare-fun b_and!346649 () Bool)

(assert (= b_and!346645 (and (=> t!366989 result!323874) b_and!346649)))

(assert (=> bs!1177373 m!5919214))

(declare-fun m!5919526 () Bool)

(assert (=> bs!1177373 m!5919526))

(declare-fun m!5919528 () Bool)

(assert (=> bs!1177373 m!5919528))

(assert (=> bs!1177373 m!5919452))

(assert (=> bs!1177373 m!5919526))

(assert (=> bs!1177373 m!5919452))

(assert (=> d!1577819 d!1577829))

(declare-fun b_lambda!195825 () Bool)

(assert (= b_lambda!195809 (or (and b!4909428 b_free!131959) b_lambda!195825)))

(declare-fun b_lambda!195827 () Bool)

(assert (= b_lambda!195811 (or (and b!4909428 b_free!131959) b_lambda!195827)))

(declare-fun b_lambda!195829 () Bool)

(assert (= b_lambda!195817 (or b!4909417 b_lambda!195829)))

(declare-fun bs!1177374 () Bool)

(declare-fun d!1577831 () Bool)

(assert (= bs!1177374 (and d!1577831 b!4909417)))

(assert (=> bs!1177374 (= (dynLambda!22918 lambda!244667 (_1!33757 lt!2014950)) (= (list!17843 (dynLambda!22919 (toChars!11043 (transformation!8247 rule!164)) (dynLambda!22916 (toValue!11184 (transformation!8247 rule!164)) (_1!33757 lt!2014950)))) (list!17843 (_1!33757 lt!2014950))))))

(declare-fun b_lambda!195837 () Bool)

(assert (=> (not b_lambda!195837) (not bs!1177374)))

(declare-fun t!366995 () Bool)

(declare-fun tb!260029 () Bool)

(assert (=> (and b!4909428 (= (toChars!11043 (transformation!8247 rule!164)) (toChars!11043 (transformation!8247 rule!164))) t!366995) tb!260029))

(declare-fun e!3068895 () Bool)

(declare-fun b!4909731 () Bool)

(declare-fun tp!1380683 () Bool)

(assert (=> b!4909731 (= e!3068895 (and (inv!73103 (c!834501 (dynLambda!22919 (toChars!11043 (transformation!8247 rule!164)) (dynLambda!22916 (toValue!11184 (transformation!8247 rule!164)) (_1!33757 lt!2014950))))) tp!1380683))))

(declare-fun result!323888 () Bool)

(assert (=> tb!260029 (= result!323888 (and (inv!73101 (dynLambda!22919 (toChars!11043 (transformation!8247 rule!164)) (dynLambda!22916 (toValue!11184 (transformation!8247 rule!164)) (_1!33757 lt!2014950)))) e!3068895))))

(assert (= tb!260029 b!4909731))

(declare-fun m!5919530 () Bool)

(assert (=> b!4909731 m!5919530))

(declare-fun m!5919532 () Bool)

(assert (=> tb!260029 m!5919532))

(assert (=> bs!1177374 t!366995))

(declare-fun b_and!346651 () Bool)

(assert (= b_and!346647 (and (=> t!366995 result!323888) b_and!346651)))

(declare-fun b_lambda!195839 () Bool)

(assert (=> (not b_lambda!195839) (not bs!1177374)))

(assert (=> bs!1177374 t!366991))

(declare-fun b_and!346653 () Bool)

(assert (= b_and!346649 (and (=> t!366991 result!323878) b_and!346653)))

(assert (=> bs!1177374 m!5919222))

(declare-fun m!5919534 () Bool)

(assert (=> bs!1177374 m!5919534))

(declare-fun m!5919536 () Bool)

(assert (=> bs!1177374 m!5919536))

(assert (=> bs!1177374 m!5919456))

(assert (=> bs!1177374 m!5919534))

(assert (=> bs!1177374 m!5919456))

(assert (=> d!1577807 d!1577831))

(declare-fun b_lambda!195831 () Bool)

(assert (= b_lambda!195815 (or (and b!4909428 b_free!131959) b_lambda!195831)))

(push 1)

(assert (not b!4909730))

(assert (not b!4909533))

(assert (not d!1577823))

(assert (not d!1577795))

(assert (not b!4909693))

(assert (not b!4909723))

(assert (not bm!340853))

(assert (not bm!340850))

(assert (not bm!340851))

(assert (not b_lambda!195825))

(assert (not d!1577751))

(assert b_and!346653)

(assert (not b!4909664))

(assert (not b!4909655))

(assert (not d!1577803))

(assert (not d!1577757))

(assert (not bs!1177373))

(assert (not bs!1177374))

(assert (not d!1577809))

(assert (not b!4909492))

(assert (not b_lambda!195829))

(assert (not d!1577791))

(assert (not b!4909724))

(assert (not d!1577765))

(assert (not d!1577797))

(assert (not b!4909698))

(assert (not bm!340855))

(assert b_and!346651)

(assert (not b_lambda!195839))

(assert (not b!4909694))

(assert (not b_lambda!195821))

(assert (not b!4909633))

(assert (not d!1577813))

(assert (not b!4909662))

(assert (not b!4909636))

(assert (not d!1577749))

(assert (not b!4909528))

(assert (not b!4909627))

(assert (not d!1577761))

(assert (not d!1577815))

(assert (not d!1577807))

(assert (not b!4909710))

(assert (not b!4909643))

(assert (not b!4909697))

(assert (not bm!340856))

(assert (not bm!340857))

(assert (not b_lambda!195823))

(assert (not d!1577825))

(assert (not b!4909535))

(assert (not b!4909534))

(assert (not bm!340852))

(assert (not b_lambda!195831))

(assert (not d!1577821))

(assert (not b!4909695))

(assert (not d!1577763))

(assert (not tb!260029))

(assert (not bm!340854))

(assert (not b!4909648))

(assert (not b_lambda!195827))

(assert (not b!4909525))

(assert (not b!4909696))

(assert (not b_next!132749))

(assert (not d!1577753))

(assert (not b!4909646))

(assert (not b_lambda!195835))

(assert (not b_next!132751))

(assert (not b!4909538))

(assert (not d!1577811))

(assert (not b!4909711))

(assert (not b!4909426))

(assert (not tb!260027))

(assert (not b!4909496))

(assert (not b!4909709))

(assert (not b!4909630))

(assert (not b!4909731))

(assert (not b_lambda!195837))

(assert (not tb!260023))

(assert (not b_lambda!195833))

(assert (not b!4909725))

(assert (not b!4909700))

(assert tp_is_empty!35849)

(assert (not bm!340830))

(assert (not d!1577819))

(assert (not d!1577817))

(assert (not tb!260025))

(assert (not b!4909692))

(assert (not d!1577767))

(check-sat)

(pop 1)

(push 1)

(assert b_and!346651)

(assert b_and!346653)

(assert (not b_next!132751))

(assert (not b_next!132749))

(check-sat)

(pop 1)

