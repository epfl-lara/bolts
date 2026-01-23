; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!514804 () Bool)

(assert start!514804)

(declare-fun b!4908440 () Bool)

(declare-fun b_free!131939 () Bool)

(declare-fun b_next!132729 () Bool)

(assert (=> b!4908440 (= b_free!131939 (not b_next!132729))))

(declare-fun tp!1380469 () Bool)

(declare-fun b_and!346547 () Bool)

(assert (=> b!4908440 (= tp!1380469 b_and!346547)))

(declare-fun b_free!131941 () Bool)

(declare-fun b_next!132731 () Bool)

(assert (=> b!4908440 (= b_free!131941 (not b_next!132731))))

(declare-fun tp!1380471 () Bool)

(declare-fun b_and!346549 () Bool)

(assert (=> b!4908440 (= tp!1380471 b_and!346549)))

(declare-fun b!4908451 () Bool)

(declare-fun e!3068140 () Bool)

(assert (=> b!4908451 (= e!3068140 true)))

(declare-fun b!4908450 () Bool)

(declare-fun e!3068139 () Bool)

(assert (=> b!4908450 (= e!3068139 e!3068140)))

(declare-fun b!4908435 () Bool)

(assert (=> b!4908435 e!3068139))

(assert (= b!4908450 b!4908451))

(assert (= b!4908435 b!4908450))

(declare-fun order!25827 () Int)

(declare-datatypes ((C!26832 0))(
  ( (C!26833 (val!22750 Int)) )
))
(declare-datatypes ((Regex!13317 0))(
  ( (ElementMatch!13317 (c!834337 C!26832)) (Concat!21869 (regOne!27146 Regex!13317) (regTwo!27146 Regex!13317)) (EmptyExpr!13317) (Star!13317 (reg!13646 Regex!13317)) (EmptyLang!13317) (Union!13317 (regOne!27147 Regex!13317) (regTwo!27147 Regex!13317)) )
))
(declare-datatypes ((String!64201 0))(
  ( (String!64202 (value!264003 String)) )
))
(declare-datatypes ((List!56682 0))(
  ( (Nil!56558) (Cons!56558 (h!63006 (_ BitVec 16)) (t!366942 List!56682)) )
))
(declare-datatypes ((TokenValue!8552 0))(
  ( (FloatLiteralValue!17104 (text!60309 List!56682)) (TokenValueExt!8551 (__x!34397 Int)) (Broken!42760 (value!264004 List!56682)) (Object!8675) (End!8552) (Def!8552) (Underscore!8552) (Match!8552) (Else!8552) (Error!8552) (Case!8552) (If!8552) (Extends!8552) (Abstract!8552) (Class!8552) (Val!8552) (DelimiterValue!17104 (del!8612 List!56682)) (KeywordValue!8558 (value!264005 List!56682)) (CommentValue!17104 (value!264006 List!56682)) (WhitespaceValue!17104 (value!264007 List!56682)) (IndentationValue!8552 (value!264008 List!56682)) (String!64203) (Int32!8552) (Broken!42761 (value!264009 List!56682)) (Boolean!8553) (Unit!146775) (OperatorValue!8555 (op!8612 List!56682)) (IdentifierValue!17104 (value!264010 List!56682)) (IdentifierValue!17105 (value!264011 List!56682)) (WhitespaceValue!17105 (value!264012 List!56682)) (True!17104) (False!17104) (Broken!42762 (value!264013 List!56682)) (Broken!42763 (value!264014 List!56682)) (True!17105) (RightBrace!8552) (RightBracket!8552) (Colon!8552) (Null!8552) (Comma!8552) (LeftBracket!8552) (False!17105) (LeftBrace!8552) (ImaginaryLiteralValue!8552 (text!60310 List!56682)) (StringLiteralValue!25656 (value!264015 List!56682)) (EOFValue!8552 (value!264016 List!56682)) (IdentValue!8552 (value!264017 List!56682)) (DelimiterValue!17105 (value!264018 List!56682)) (DedentValue!8552 (value!264019 List!56682)) (NewLineValue!8552 (value!264020 List!56682)) (IntegerValue!25656 (value!264021 (_ BitVec 32)) (text!60311 List!56682)) (IntegerValue!25657 (value!264022 Int) (text!60312 List!56682)) (Times!8552) (Or!8552) (Equal!8552) (Minus!8552) (Broken!42764 (value!264023 List!56682)) (And!8552) (Div!8552) (LessEqual!8552) (Mod!8552) (Concat!21870) (Not!8552) (Plus!8552) (SpaceValue!8552 (value!264024 List!56682)) (IntegerValue!25658 (value!264025 Int) (text!60313 List!56682)) (StringLiteralValue!25657 (text!60314 List!56682)) (FloatLiteralValue!17105 (text!60315 List!56682)) (BytesLiteralValue!8552 (value!264026 List!56682)) (CommentValue!17105 (value!264027 List!56682)) (StringLiteralValue!25658 (value!264028 List!56682)) (ErrorTokenValue!8552 (msg!8613 List!56682)) )
))
(declare-datatypes ((List!56683 0))(
  ( (Nil!56559) (Cons!56559 (h!63007 C!26832) (t!366943 List!56683)) )
))
(declare-datatypes ((IArray!29681 0))(
  ( (IArray!29682 (innerList!14898 List!56683)) )
))
(declare-datatypes ((Conc!14810 0))(
  ( (Node!14810 (left!41193 Conc!14810) (right!41523 Conc!14810) (csize!29850 Int) (cheight!15021 Int)) (Leaf!24648 (xs!18126 IArray!29681) (csize!29851 Int)) (Empty!14810) )
))
(declare-datatypes ((BalanceConc!29050 0))(
  ( (BalanceConc!29051 (c!834338 Conc!14810)) )
))
(declare-datatypes ((TokenValueInjection!16412 0))(
  ( (TokenValueInjection!16413 (toValue!11175 Int) (toChars!11034 Int)) )
))
(declare-datatypes ((Rule!16284 0))(
  ( (Rule!16285 (regex!8242 Regex!13317) (tag!9106 String!64201) (isSeparator!8242 Bool) (transformation!8242 TokenValueInjection!16412)) )
))
(declare-fun rule!164 () Rule!16284)

(declare-fun order!25825 () Int)

(declare-fun lambda!244608 () Int)

(declare-fun dynLambda!22879 (Int Int) Int)

(declare-fun dynLambda!22880 (Int Int) Int)

(assert (=> b!4908451 (< (dynLambda!22879 order!25825 (toValue!11175 (transformation!8242 rule!164))) (dynLambda!22880 order!25827 lambda!244608))))

(declare-fun order!25829 () Int)

(declare-fun dynLambda!22881 (Int Int) Int)

(assert (=> b!4908451 (< (dynLambda!22881 order!25829 (toChars!11034 (transformation!8242 rule!164))) (dynLambda!22880 order!25827 lambda!244608))))

(declare-fun b!4908431 () Bool)

(declare-fun res!2096672 () Bool)

(declare-fun e!3068130 () Bool)

(assert (=> b!4908431 (=> res!2096672 e!3068130)))

(declare-fun lt!2014207 () Bool)

(assert (=> b!4908431 (= res!2096672 (not lt!2014207))))

(declare-fun b!4908432 () Bool)

(declare-fun e!3068126 () Bool)

(declare-fun input!1509 () BalanceConc!29050)

(declare-fun tp!1380470 () Bool)

(declare-fun inv!73065 (Conc!14810) Bool)

(assert (=> b!4908432 (= e!3068126 (and (inv!73065 (c!834338 input!1509)) tp!1380470))))

(declare-fun b!4908433 () Bool)

(declare-fun e!3068128 () Bool)

(assert (=> b!4908433 (= e!3068128 e!3068130)))

(declare-fun res!2096677 () Bool)

(assert (=> b!4908433 (=> res!2096677 e!3068130)))

(declare-datatypes ((Token!15012 0))(
  ( (Token!15013 (value!264029 TokenValue!8552) (rule!11450 Rule!16284) (size!37309 Int) (originalCharacters!8537 List!56683)) )
))
(declare-datatypes ((tuple2!60868 0))(
  ( (tuple2!60869 (_1!33737 Token!15012) (_2!33737 List!56683)) )
))
(declare-datatypes ((Option!14121 0))(
  ( (None!14120) (Some!14120 (v!50082 tuple2!60868)) )
))
(declare-fun lt!2014213 () Option!14121)

(declare-fun isDefined!11130 (Option!14121) Bool)

(assert (=> b!4908433 (= res!2096677 (not (= lt!2014207 (isDefined!11130 lt!2014213))))))

(declare-fun lt!2014208 () TokenValue!8552)

(declare-datatypes ((tuple2!60870 0))(
  ( (tuple2!60871 (_1!33738 BalanceConc!29050) (_2!33738 BalanceConc!29050)) )
))
(declare-fun lt!2014216 () tuple2!60870)

(declare-fun lt!2014214 () List!56683)

(declare-fun lt!2014218 () Int)

(declare-datatypes ((tuple2!60872 0))(
  ( (tuple2!60873 (_1!33739 Token!15012) (_2!33739 BalanceConc!29050)) )
))
(declare-datatypes ((Option!14122 0))(
  ( (None!14121) (Some!14121 (v!50083 tuple2!60872)) )
))
(declare-fun isDefined!11131 (Option!14122) Bool)

(assert (=> b!4908433 (= lt!2014207 (isDefined!11131 (Some!14121 (tuple2!60873 (Token!15013 lt!2014208 rule!164 lt!2014218 lt!2014214) (_2!33738 lt!2014216)))))))

(declare-datatypes ((LexerInterface!7834 0))(
  ( (LexerInterfaceExt!7831 (__x!34398 Int)) (Lexer!7832) )
))
(declare-fun thiss!15943 () LexerInterface!7834)

(declare-fun lt!2014221 () List!56683)

(declare-fun maxPrefixOneRule!3579 (LexerInterface!7834 Rule!16284 List!56683) Option!14121)

(assert (=> b!4908433 (= lt!2014213 (maxPrefixOneRule!3579 thiss!15943 rule!164 lt!2014221))))

(declare-fun size!37310 (BalanceConc!29050) Int)

(assert (=> b!4908433 (= lt!2014218 (size!37310 (_1!33738 lt!2014216)))))

(declare-fun apply!13586 (TokenValueInjection!16412 BalanceConc!29050) TokenValue!8552)

(assert (=> b!4908433 (= lt!2014208 (apply!13586 (transformation!8242 rule!164) (_1!33738 lt!2014216)))))

(declare-datatypes ((Unit!146776 0))(
  ( (Unit!146777) )
))
(declare-fun lt!2014217 () Unit!146776)

(declare-fun lt!2014220 () BalanceConc!29050)

(declare-fun ForallOf!1179 (Int BalanceConc!29050) Unit!146776)

(assert (=> b!4908433 (= lt!2014217 (ForallOf!1179 lambda!244608 lt!2014220))))

(declare-fun seqFromList!5984 (List!56683) BalanceConc!29050)

(assert (=> b!4908433 (= lt!2014220 (seqFromList!5984 lt!2014214))))

(declare-fun list!17834 (BalanceConc!29050) List!56683)

(assert (=> b!4908433 (= lt!2014214 (list!17834 (_1!33738 lt!2014216)))))

(declare-fun lt!2014212 () Unit!146776)

(assert (=> b!4908433 (= lt!2014212 (ForallOf!1179 lambda!244608 (_1!33738 lt!2014216)))))

(declare-fun res!2096676 () Bool)

(assert (=> b!4908435 (=> res!2096676 e!3068128)))

(declare-fun Forall!1739 (Int) Bool)

(assert (=> b!4908435 (= res!2096676 (not (Forall!1739 lambda!244608)))))

(declare-fun b!4908436 () Bool)

(declare-fun e!3068131 () Bool)

(declare-datatypes ((tuple2!60874 0))(
  ( (tuple2!60875 (_1!33740 List!56683) (_2!33740 List!56683)) )
))
(declare-fun lt!2014219 () tuple2!60874)

(declare-fun matchR!6584 (Regex!13317 List!56683) Bool)

(assert (=> b!4908436 (= e!3068131 (matchR!6584 (regex!8242 rule!164) (_1!33740 lt!2014219)))))

(declare-fun lt!2014210 () tuple2!60868)

(declare-fun e!3068125 () Bool)

(declare-fun b!4908437 () Bool)

(assert (=> b!4908437 (= e!3068125 (or (not (= (value!264029 (_1!33737 lt!2014210)) lt!2014208)) (not (= (rule!11450 (_1!33737 lt!2014210)) rule!164)) (= (size!37309 (_1!33737 lt!2014210)) lt!2014218)))))

(declare-fun get!19569 (Option!14121) tuple2!60868)

(assert (=> b!4908437 (= lt!2014210 (get!19569 lt!2014213))))

(declare-fun tp!1380468 () Bool)

(declare-fun e!3068127 () Bool)

(declare-fun e!3068132 () Bool)

(declare-fun b!4908438 () Bool)

(declare-fun inv!73061 (String!64201) Bool)

(declare-fun inv!73066 (TokenValueInjection!16412) Bool)

(assert (=> b!4908438 (= e!3068132 (and tp!1380468 (inv!73061 (tag!9106 rule!164)) (inv!73066 (transformation!8242 rule!164)) e!3068127))))

(declare-fun b!4908439 () Bool)

(declare-fun e!3068134 () Bool)

(declare-fun e!3068133 () Bool)

(assert (=> b!4908439 (= e!3068134 e!3068133)))

(declare-fun res!2096678 () Bool)

(assert (=> b!4908439 (=> (not res!2096678) (not e!3068133))))

(declare-fun isEmpty!30457 (BalanceConc!29050) Bool)

(assert (=> b!4908439 (= res!2096678 (not (isEmpty!30457 (_1!33738 lt!2014216))))))

(declare-fun findLongestMatchWithZipperSequence!330 (Regex!13317 BalanceConc!29050) tuple2!60870)

(assert (=> b!4908439 (= lt!2014216 (findLongestMatchWithZipperSequence!330 (regex!8242 rule!164) input!1509))))

(assert (=> b!4908440 (= e!3068127 (and tp!1380469 tp!1380471))))

(declare-fun b!4908441 () Bool)

(declare-fun res!2096675 () Bool)

(assert (=> b!4908441 (=> res!2096675 e!3068130)))

(assert (=> b!4908441 (= res!2096675 (not (= (list!17834 lt!2014220) lt!2014214)))))

(declare-fun res!2096680 () Bool)

(assert (=> start!514804 (=> (not res!2096680) (not e!3068134))))

(get-info :version)

(assert (=> start!514804 (= res!2096680 ((_ is Lexer!7832) thiss!15943))))

(assert (=> start!514804 e!3068134))

(assert (=> start!514804 true))

(assert (=> start!514804 e!3068132))

(declare-fun inv!73067 (BalanceConc!29050) Bool)

(assert (=> start!514804 (and (inv!73067 input!1509) e!3068126)))

(declare-fun b!4908434 () Bool)

(assert (=> b!4908434 (= e!3068133 (not e!3068128))))

(declare-fun res!2096679 () Bool)

(assert (=> b!4908434 (=> res!2096679 e!3068128)))

(declare-fun semiInverseModEq!3643 (Int Int) Bool)

(assert (=> b!4908434 (= res!2096679 (not (semiInverseModEq!3643 (toChars!11034 (transformation!8242 rule!164)) (toValue!11175 (transformation!8242 rule!164)))))))

(declare-fun lt!2014211 () Unit!146776)

(declare-fun lemmaInv!1288 (TokenValueInjection!16412) Unit!146776)

(assert (=> b!4908434 (= lt!2014211 (lemmaInv!1288 (transformation!8242 rule!164)))))

(assert (=> b!4908434 e!3068131))

(declare-fun res!2096673 () Bool)

(assert (=> b!4908434 (=> res!2096673 e!3068131)))

(declare-fun isEmpty!30458 (List!56683) Bool)

(assert (=> b!4908434 (= res!2096673 (isEmpty!30458 (_1!33740 lt!2014219)))))

(declare-fun findLongestMatchInner!1805 (Regex!13317 List!56683 Int List!56683 List!56683 Int) tuple2!60874)

(declare-fun size!37311 (List!56683) Int)

(assert (=> b!4908434 (= lt!2014219 (findLongestMatchInner!1805 (regex!8242 rule!164) Nil!56559 (size!37311 Nil!56559) lt!2014221 lt!2014221 (size!37311 lt!2014221)))))

(declare-fun lt!2014209 () Unit!146776)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1768 (Regex!13317 List!56683) Unit!146776)

(assert (=> b!4908434 (= lt!2014209 (longestMatchIsAcceptedByMatchOrIsEmpty!1768 (regex!8242 rule!164) lt!2014221))))

(assert (=> b!4908434 (= lt!2014221 (list!17834 input!1509))))

(declare-fun b!4908442 () Bool)

(declare-fun res!2096671 () Bool)

(assert (=> b!4908442 (=> (not res!2096671) (not e!3068134))))

(declare-fun ruleValid!3739 (LexerInterface!7834 Rule!16284) Bool)

(assert (=> b!4908442 (= res!2096671 (ruleValid!3739 thiss!15943 rule!164))))

(declare-fun b!4908443 () Bool)

(assert (=> b!4908443 (= e!3068130 e!3068125)))

(declare-fun res!2096674 () Bool)

(assert (=> b!4908443 (=> res!2096674 e!3068125)))

(assert (=> b!4908443 (= res!2096674 (not (= (apply!13586 (transformation!8242 rule!164) lt!2014220) lt!2014208)))))

(declare-fun lt!2014215 () Unit!146776)

(declare-fun lemmaEqSameImage!1124 (TokenValueInjection!16412 BalanceConc!29050 BalanceConc!29050) Unit!146776)

(assert (=> b!4908443 (= lt!2014215 (lemmaEqSameImage!1124 (transformation!8242 rule!164) (_1!33738 lt!2014216) lt!2014220))))

(assert (= (and start!514804 res!2096680) b!4908442))

(assert (= (and b!4908442 res!2096671) b!4908439))

(assert (= (and b!4908439 res!2096678) b!4908434))

(assert (= (and b!4908434 (not res!2096673)) b!4908436))

(assert (= (and b!4908434 (not res!2096679)) b!4908435))

(assert (= (and b!4908435 (not res!2096676)) b!4908433))

(assert (= (and b!4908433 (not res!2096677)) b!4908431))

(assert (= (and b!4908431 (not res!2096672)) b!4908441))

(assert (= (and b!4908441 (not res!2096675)) b!4908443))

(assert (= (and b!4908443 (not res!2096674)) b!4908437))

(assert (= b!4908438 b!4908440))

(assert (= start!514804 b!4908438))

(assert (= start!514804 b!4908432))

(declare-fun m!5918150 () Bool)

(assert (=> b!4908432 m!5918150))

(declare-fun m!5918152 () Bool)

(assert (=> b!4908436 m!5918152))

(declare-fun m!5918154 () Bool)

(assert (=> b!4908435 m!5918154))

(declare-fun m!5918156 () Bool)

(assert (=> start!514804 m!5918156))

(declare-fun m!5918158 () Bool)

(assert (=> b!4908438 m!5918158))

(declare-fun m!5918160 () Bool)

(assert (=> b!4908438 m!5918160))

(declare-fun m!5918162 () Bool)

(assert (=> b!4908433 m!5918162))

(declare-fun m!5918164 () Bool)

(assert (=> b!4908433 m!5918164))

(declare-fun m!5918166 () Bool)

(assert (=> b!4908433 m!5918166))

(declare-fun m!5918168 () Bool)

(assert (=> b!4908433 m!5918168))

(declare-fun m!5918170 () Bool)

(assert (=> b!4908433 m!5918170))

(declare-fun m!5918172 () Bool)

(assert (=> b!4908433 m!5918172))

(declare-fun m!5918174 () Bool)

(assert (=> b!4908433 m!5918174))

(declare-fun m!5918176 () Bool)

(assert (=> b!4908433 m!5918176))

(declare-fun m!5918178 () Bool)

(assert (=> b!4908433 m!5918178))

(declare-fun m!5918180 () Bool)

(assert (=> b!4908441 m!5918180))

(declare-fun m!5918182 () Bool)

(assert (=> b!4908439 m!5918182))

(declare-fun m!5918184 () Bool)

(assert (=> b!4908439 m!5918184))

(declare-fun m!5918186 () Bool)

(assert (=> b!4908437 m!5918186))

(declare-fun m!5918188 () Bool)

(assert (=> b!4908443 m!5918188))

(declare-fun m!5918190 () Bool)

(assert (=> b!4908443 m!5918190))

(declare-fun m!5918192 () Bool)

(assert (=> b!4908434 m!5918192))

(assert (=> b!4908434 m!5918192))

(declare-fun m!5918194 () Bool)

(assert (=> b!4908434 m!5918194))

(declare-fun m!5918196 () Bool)

(assert (=> b!4908434 m!5918196))

(assert (=> b!4908434 m!5918194))

(declare-fun m!5918198 () Bool)

(assert (=> b!4908434 m!5918198))

(declare-fun m!5918200 () Bool)

(assert (=> b!4908434 m!5918200))

(declare-fun m!5918202 () Bool)

(assert (=> b!4908434 m!5918202))

(declare-fun m!5918204 () Bool)

(assert (=> b!4908434 m!5918204))

(declare-fun m!5918206 () Bool)

(assert (=> b!4908434 m!5918206))

(declare-fun m!5918208 () Bool)

(assert (=> b!4908442 m!5918208))

(check-sat (not b!4908439) (not b!4908441) (not b!4908442) (not b!4908438) (not b!4908437) (not b!4908433) (not b!4908432) (not b!4908436) (not start!514804) (not b_next!132729) b_and!346547 (not b!4908435) (not b!4908434) b_and!346549 (not b_next!132731) (not b!4908443))
(check-sat b_and!346549 b_and!346547 (not b_next!132731) (not b_next!132729))
(get-model)

(declare-fun d!1577500 () Bool)

(declare-fun c!834344 () Bool)

(assert (=> d!1577500 (= c!834344 ((_ is Node!14810) (c!834338 input!1509)))))

(declare-fun e!3068160 () Bool)

(assert (=> d!1577500 (= (inv!73065 (c!834338 input!1509)) e!3068160)))

(declare-fun b!4908479 () Bool)

(declare-fun inv!73069 (Conc!14810) Bool)

(assert (=> b!4908479 (= e!3068160 (inv!73069 (c!834338 input!1509)))))

(declare-fun b!4908480 () Bool)

(declare-fun e!3068161 () Bool)

(assert (=> b!4908480 (= e!3068160 e!3068161)))

(declare-fun res!2096695 () Bool)

(assert (=> b!4908480 (= res!2096695 (not ((_ is Leaf!24648) (c!834338 input!1509))))))

(assert (=> b!4908480 (=> res!2096695 e!3068161)))

(declare-fun b!4908481 () Bool)

(declare-fun inv!73071 (Conc!14810) Bool)

(assert (=> b!4908481 (= e!3068161 (inv!73071 (c!834338 input!1509)))))

(assert (= (and d!1577500 c!834344) b!4908479))

(assert (= (and d!1577500 (not c!834344)) b!4908480))

(assert (= (and b!4908480 (not res!2096695)) b!4908481))

(declare-fun m!5918232 () Bool)

(assert (=> b!4908479 m!5918232))

(declare-fun m!5918234 () Bool)

(assert (=> b!4908481 m!5918234))

(assert (=> b!4908432 d!1577500))

(declare-fun d!1577510 () Bool)

(declare-fun res!2096706 () Bool)

(declare-fun e!3068170 () Bool)

(assert (=> d!1577510 (=> (not res!2096706) (not e!3068170))))

(declare-fun validRegex!5910 (Regex!13317) Bool)

(assert (=> d!1577510 (= res!2096706 (validRegex!5910 (regex!8242 rule!164)))))

(assert (=> d!1577510 (= (ruleValid!3739 thiss!15943 rule!164) e!3068170)))

(declare-fun b!4908492 () Bool)

(declare-fun res!2096707 () Bool)

(assert (=> b!4908492 (=> (not res!2096707) (not e!3068170))))

(declare-fun nullable!4583 (Regex!13317) Bool)

(assert (=> b!4908492 (= res!2096707 (not (nullable!4583 (regex!8242 rule!164))))))

(declare-fun b!4908493 () Bool)

(assert (=> b!4908493 (= e!3068170 (not (= (tag!9106 rule!164) (String!64202 ""))))))

(assert (= (and d!1577510 res!2096706) b!4908492))

(assert (= (and b!4908492 res!2096707) b!4908493))

(declare-fun m!5918244 () Bool)

(assert (=> d!1577510 m!5918244))

(declare-fun m!5918246 () Bool)

(assert (=> b!4908492 m!5918246))

(assert (=> b!4908442 d!1577510))

(declare-fun d!1577516 () Bool)

(declare-fun list!17836 (Conc!14810) List!56683)

(assert (=> d!1577516 (= (list!17834 lt!2014220) (list!17836 (c!834338 lt!2014220)))))

(declare-fun bs!1177284 () Bool)

(assert (= bs!1177284 d!1577516))

(declare-fun m!5918248 () Bool)

(assert (=> bs!1177284 m!5918248))

(assert (=> b!4908441 d!1577516))

(declare-fun d!1577518 () Bool)

(declare-fun isBalanced!4041 (Conc!14810) Bool)

(assert (=> d!1577518 (= (inv!73067 input!1509) (isBalanced!4041 (c!834338 input!1509)))))

(declare-fun bs!1177287 () Bool)

(assert (= bs!1177287 d!1577518))

(declare-fun m!5918254 () Bool)

(assert (=> bs!1177287 m!5918254))

(assert (=> start!514804 d!1577518))

(declare-fun d!1577524 () Bool)

(assert (=> d!1577524 (= (list!17834 input!1509) (list!17836 (c!834338 input!1509)))))

(declare-fun bs!1177288 () Bool)

(assert (= bs!1177288 d!1577524))

(declare-fun m!5918256 () Bool)

(assert (=> bs!1177288 m!5918256))

(assert (=> b!4908434 d!1577524))

(declare-fun d!1577526 () Bool)

(assert (=> d!1577526 (= (isEmpty!30458 (_1!33740 lt!2014219)) ((_ is Nil!56559) (_1!33740 lt!2014219)))))

(assert (=> b!4908434 d!1577526))

(declare-fun d!1577528 () Bool)

(declare-fun lt!2014234 () Int)

(assert (=> d!1577528 (>= lt!2014234 0)))

(declare-fun e!3068174 () Int)

(assert (=> d!1577528 (= lt!2014234 e!3068174)))

(declare-fun c!834348 () Bool)

(assert (=> d!1577528 (= c!834348 ((_ is Nil!56559) lt!2014221))))

(assert (=> d!1577528 (= (size!37311 lt!2014221) lt!2014234)))

(declare-fun b!4908504 () Bool)

(assert (=> b!4908504 (= e!3068174 0)))

(declare-fun b!4908505 () Bool)

(assert (=> b!4908505 (= e!3068174 (+ 1 (size!37311 (t!366943 lt!2014221))))))

(assert (= (and d!1577528 c!834348) b!4908504))

(assert (= (and d!1577528 (not c!834348)) b!4908505))

(declare-fun m!5918258 () Bool)

(assert (=> b!4908505 m!5918258))

(assert (=> b!4908434 d!1577528))

(declare-fun d!1577530 () Bool)

(declare-fun e!3068177 () Bool)

(assert (=> d!1577530 e!3068177))

(declare-fun res!2096710 () Bool)

(assert (=> d!1577530 (=> res!2096710 e!3068177)))

(assert (=> d!1577530 (= res!2096710 (isEmpty!30458 (_1!33740 (findLongestMatchInner!1805 (regex!8242 rule!164) Nil!56559 (size!37311 Nil!56559) lt!2014221 lt!2014221 (size!37311 lt!2014221)))))))

(declare-fun lt!2014237 () Unit!146776)

(declare-fun choose!35894 (Regex!13317 List!56683) Unit!146776)

(assert (=> d!1577530 (= lt!2014237 (choose!35894 (regex!8242 rule!164) lt!2014221))))

(assert (=> d!1577530 (validRegex!5910 (regex!8242 rule!164))))

(assert (=> d!1577530 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1768 (regex!8242 rule!164) lt!2014221) lt!2014237)))

(declare-fun b!4908508 () Bool)

(assert (=> b!4908508 (= e!3068177 (matchR!6584 (regex!8242 rule!164) (_1!33740 (findLongestMatchInner!1805 (regex!8242 rule!164) Nil!56559 (size!37311 Nil!56559) lt!2014221 lt!2014221 (size!37311 lt!2014221)))))))

(assert (= (and d!1577530 (not res!2096710)) b!4908508))

(assert (=> d!1577530 m!5918192))

(declare-fun m!5918260 () Bool)

(assert (=> d!1577530 m!5918260))

(assert (=> d!1577530 m!5918194))

(declare-fun m!5918262 () Bool)

(assert (=> d!1577530 m!5918262))

(assert (=> d!1577530 m!5918244))

(assert (=> d!1577530 m!5918192))

(assert (=> d!1577530 m!5918194))

(assert (=> d!1577530 m!5918196))

(assert (=> b!4908508 m!5918192))

(assert (=> b!4908508 m!5918194))

(assert (=> b!4908508 m!5918192))

(assert (=> b!4908508 m!5918194))

(assert (=> b!4908508 m!5918196))

(declare-fun m!5918264 () Bool)

(assert (=> b!4908508 m!5918264))

(assert (=> b!4908434 d!1577530))

(declare-fun d!1577532 () Bool)

(declare-fun e!3068180 () Bool)

(assert (=> d!1577532 e!3068180))

(declare-fun res!2096713 () Bool)

(assert (=> d!1577532 (=> (not res!2096713) (not e!3068180))))

(assert (=> d!1577532 (= res!2096713 (semiInverseModEq!3643 (toChars!11034 (transformation!8242 rule!164)) (toValue!11175 (transformation!8242 rule!164))))))

(declare-fun Unit!146782 () Unit!146776)

(assert (=> d!1577532 (= (lemmaInv!1288 (transformation!8242 rule!164)) Unit!146782)))

(declare-fun b!4908511 () Bool)

(declare-fun equivClasses!3495 (Int Int) Bool)

(assert (=> b!4908511 (= e!3068180 (equivClasses!3495 (toChars!11034 (transformation!8242 rule!164)) (toValue!11175 (transformation!8242 rule!164))))))

(assert (= (and d!1577532 res!2096713) b!4908511))

(assert (=> d!1577532 m!5918200))

(declare-fun m!5918266 () Bool)

(assert (=> b!4908511 m!5918266))

(assert (=> b!4908434 d!1577532))

(declare-fun b!4908694 () Bool)

(declare-fun e!3068282 () tuple2!60874)

(declare-fun e!3068279 () tuple2!60874)

(assert (=> b!4908694 (= e!3068282 e!3068279)))

(declare-fun lt!2014423 () tuple2!60874)

(declare-fun call!340768 () tuple2!60874)

(assert (=> b!4908694 (= lt!2014423 call!340768)))

(declare-fun c!834398 () Bool)

(assert (=> b!4908694 (= c!834398 (isEmpty!30458 (_1!33740 lt!2014423)))))

(declare-fun b!4908695 () Bool)

(assert (=> b!4908695 (= e!3068282 call!340768)))

(declare-fun b!4908696 () Bool)

(assert (=> b!4908696 (= e!3068279 (tuple2!60875 Nil!56559 lt!2014221))))

(declare-fun bm!340763 () Bool)

(declare-fun call!340775 () Unit!146776)

(declare-fun lemmaIsPrefixRefl!3321 (List!56683 List!56683) Unit!146776)

(assert (=> bm!340763 (= call!340775 (lemmaIsPrefixRefl!3321 lt!2014221 lt!2014221))))

(declare-fun bm!340764 () Bool)

(declare-fun call!340770 () List!56683)

(declare-fun tail!9631 (List!56683) List!56683)

(assert (=> bm!340764 (= call!340770 (tail!9631 lt!2014221))))

(declare-fun b!4908697 () Bool)

(declare-fun e!3068280 () tuple2!60874)

(assert (=> b!4908697 (= e!3068280 (tuple2!60875 Nil!56559 lt!2014221))))

(declare-fun b!4908698 () Bool)

(declare-fun c!834399 () Bool)

(declare-fun call!340773 () Bool)

(assert (=> b!4908698 (= c!834399 call!340773)))

(declare-fun lt!2014419 () Unit!146776)

(declare-fun lt!2014420 () Unit!146776)

(assert (=> b!4908698 (= lt!2014419 lt!2014420)))

(assert (=> b!4908698 (= lt!2014221 Nil!56559)))

(declare-fun call!340772 () Unit!146776)

(assert (=> b!4908698 (= lt!2014420 call!340772)))

(declare-fun lt!2014424 () Unit!146776)

(declare-fun lt!2014429 () Unit!146776)

(assert (=> b!4908698 (= lt!2014424 lt!2014429)))

(declare-fun call!340771 () Bool)

(assert (=> b!4908698 call!340771))

(assert (=> b!4908698 (= lt!2014429 call!340775)))

(declare-fun e!3068276 () tuple2!60874)

(declare-fun e!3068283 () tuple2!60874)

(assert (=> b!4908698 (= e!3068276 e!3068283)))

(declare-fun b!4908699 () Bool)

(declare-fun e!3068281 () Bool)

(declare-fun lt!2014436 () tuple2!60874)

(assert (=> b!4908699 (= e!3068281 (>= (size!37311 (_1!33740 lt!2014436)) (size!37311 Nil!56559)))))

(declare-fun b!4908700 () Bool)

(assert (=> b!4908700 (= e!3068283 (tuple2!60875 Nil!56559 Nil!56559))))

(declare-fun d!1577534 () Bool)

(declare-fun e!3068277 () Bool)

(assert (=> d!1577534 e!3068277))

(declare-fun res!2096775 () Bool)

(assert (=> d!1577534 (=> (not res!2096775) (not e!3068277))))

(declare-fun ++!12271 (List!56683 List!56683) List!56683)

(assert (=> d!1577534 (= res!2096775 (= (++!12271 (_1!33740 lt!2014436) (_2!33740 lt!2014436)) lt!2014221))))

(assert (=> d!1577534 (= lt!2014436 e!3068280)))

(declare-fun c!834395 () Bool)

(declare-fun lostCause!1111 (Regex!13317) Bool)

(assert (=> d!1577534 (= c!834395 (lostCause!1111 (regex!8242 rule!164)))))

(declare-fun lt!2014411 () Unit!146776)

(declare-fun Unit!146783 () Unit!146776)

(assert (=> d!1577534 (= lt!2014411 Unit!146783)))

(declare-fun getSuffix!2912 (List!56683 List!56683) List!56683)

(assert (=> d!1577534 (= (getSuffix!2912 lt!2014221 Nil!56559) lt!2014221)))

(declare-fun lt!2014417 () Unit!146776)

(declare-fun lt!2014418 () Unit!146776)

(assert (=> d!1577534 (= lt!2014417 lt!2014418)))

(declare-fun lt!2014427 () List!56683)

(assert (=> d!1577534 (= lt!2014221 lt!2014427)))

(declare-fun lemmaSamePrefixThenSameSuffix!2328 (List!56683 List!56683 List!56683 List!56683 List!56683) Unit!146776)

(assert (=> d!1577534 (= lt!2014418 (lemmaSamePrefixThenSameSuffix!2328 Nil!56559 lt!2014221 Nil!56559 lt!2014427 lt!2014221))))

(assert (=> d!1577534 (= lt!2014427 (getSuffix!2912 lt!2014221 Nil!56559))))

(declare-fun lt!2014412 () Unit!146776)

(declare-fun lt!2014428 () Unit!146776)

(assert (=> d!1577534 (= lt!2014412 lt!2014428)))

(declare-fun isPrefix!4924 (List!56683 List!56683) Bool)

(assert (=> d!1577534 (isPrefix!4924 Nil!56559 (++!12271 Nil!56559 lt!2014221))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3148 (List!56683 List!56683) Unit!146776)

(assert (=> d!1577534 (= lt!2014428 (lemmaConcatTwoListThenFirstIsPrefix!3148 Nil!56559 lt!2014221))))

(assert (=> d!1577534 (validRegex!5910 (regex!8242 rule!164))))

(assert (=> d!1577534 (= (findLongestMatchInner!1805 (regex!8242 rule!164) Nil!56559 (size!37311 Nil!56559) lt!2014221 lt!2014221 (size!37311 lt!2014221)) lt!2014436)))

(declare-fun b!4908701 () Bool)

(declare-fun e!3068278 () Unit!146776)

(declare-fun Unit!146784 () Unit!146776)

(assert (=> b!4908701 (= e!3068278 Unit!146784)))

(declare-fun b!4908702 () Bool)

(declare-fun Unit!146785 () Unit!146776)

(assert (=> b!4908702 (= e!3068278 Unit!146785)))

(declare-fun lt!2014421 () Unit!146776)

(assert (=> b!4908702 (= lt!2014421 call!340775)))

(assert (=> b!4908702 call!340771))

(declare-fun lt!2014426 () Unit!146776)

(assert (=> b!4908702 (= lt!2014426 lt!2014421)))

(declare-fun lt!2014432 () Unit!146776)

(assert (=> b!4908702 (= lt!2014432 call!340772)))

(assert (=> b!4908702 (= lt!2014221 Nil!56559)))

(declare-fun lt!2014422 () Unit!146776)

(assert (=> b!4908702 (= lt!2014422 lt!2014432)))

(assert (=> b!4908702 false))

(declare-fun bm!340765 () Bool)

(declare-fun call!340769 () Regex!13317)

(declare-fun call!340774 () C!26832)

(declare-fun derivativeStep!3903 (Regex!13317 C!26832) Regex!13317)

(assert (=> bm!340765 (= call!340769 (derivativeStep!3903 (regex!8242 rule!164) call!340774))))

(declare-fun b!4908703 () Bool)

(assert (=> b!4908703 (= e!3068283 (tuple2!60875 Nil!56559 lt!2014221))))

(declare-fun bm!340766 () Bool)

(assert (=> bm!340766 (= call!340773 (nullable!4583 (regex!8242 rule!164)))))

(declare-fun b!4908704 () Bool)

(assert (=> b!4908704 (= e!3068280 e!3068276)))

(declare-fun c!834397 () Bool)

(assert (=> b!4908704 (= c!834397 (= (size!37311 Nil!56559) (size!37311 lt!2014221)))))

(declare-fun b!4908705 () Bool)

(declare-fun c!834394 () Bool)

(assert (=> b!4908705 (= c!834394 call!340773)))

(declare-fun lt!2014431 () Unit!146776)

(declare-fun lt!2014416 () Unit!146776)

(assert (=> b!4908705 (= lt!2014431 lt!2014416)))

(declare-fun lt!2014434 () C!26832)

(declare-fun lt!2014433 () List!56683)

(assert (=> b!4908705 (= (++!12271 (++!12271 Nil!56559 (Cons!56559 lt!2014434 Nil!56559)) lt!2014433) lt!2014221)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1355 (List!56683 C!26832 List!56683 List!56683) Unit!146776)

(assert (=> b!4908705 (= lt!2014416 (lemmaMoveElementToOtherListKeepsConcatEq!1355 Nil!56559 lt!2014434 lt!2014433 lt!2014221))))

(assert (=> b!4908705 (= lt!2014433 (tail!9631 lt!2014221))))

(declare-fun head!10484 (List!56683) C!26832)

(assert (=> b!4908705 (= lt!2014434 (head!10484 lt!2014221))))

(declare-fun lt!2014425 () Unit!146776)

(declare-fun lt!2014414 () Unit!146776)

(assert (=> b!4908705 (= lt!2014425 lt!2014414)))

(assert (=> b!4908705 (isPrefix!4924 (++!12271 Nil!56559 (Cons!56559 (head!10484 (getSuffix!2912 lt!2014221 Nil!56559)) Nil!56559)) lt!2014221)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!737 (List!56683 List!56683) Unit!146776)

(assert (=> b!4908705 (= lt!2014414 (lemmaAddHeadSuffixToPrefixStillPrefix!737 Nil!56559 lt!2014221))))

(declare-fun lt!2014409 () Unit!146776)

(declare-fun lt!2014413 () Unit!146776)

(assert (=> b!4908705 (= lt!2014409 lt!2014413)))

(assert (=> b!4908705 (= lt!2014413 (lemmaAddHeadSuffixToPrefixStillPrefix!737 Nil!56559 lt!2014221))))

(declare-fun lt!2014435 () List!56683)

(assert (=> b!4908705 (= lt!2014435 (++!12271 Nil!56559 (Cons!56559 (head!10484 lt!2014221) Nil!56559)))))

(declare-fun lt!2014415 () Unit!146776)

(assert (=> b!4908705 (= lt!2014415 e!3068278)))

(declare-fun c!834396 () Bool)

(assert (=> b!4908705 (= c!834396 (= (size!37311 Nil!56559) (size!37311 lt!2014221)))))

(declare-fun lt!2014430 () Unit!146776)

(declare-fun lt!2014410 () Unit!146776)

(assert (=> b!4908705 (= lt!2014430 lt!2014410)))

(assert (=> b!4908705 (<= (size!37311 Nil!56559) (size!37311 lt!2014221))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!649 (List!56683 List!56683) Unit!146776)

(assert (=> b!4908705 (= lt!2014410 (lemmaIsPrefixThenSmallerEqSize!649 Nil!56559 lt!2014221))))

(assert (=> b!4908705 (= e!3068276 e!3068282)))

(declare-fun b!4908706 () Bool)

(assert (=> b!4908706 (= e!3068279 lt!2014423)))

(declare-fun b!4908707 () Bool)

(assert (=> b!4908707 (= e!3068277 e!3068281)))

(declare-fun res!2096776 () Bool)

(assert (=> b!4908707 (=> res!2096776 e!3068281)))

(assert (=> b!4908707 (= res!2096776 (isEmpty!30458 (_1!33740 lt!2014436)))))

(declare-fun bm!340767 () Bool)

(assert (=> bm!340767 (= call!340771 (isPrefix!4924 lt!2014221 lt!2014221))))

(declare-fun bm!340768 () Bool)

(assert (=> bm!340768 (= call!340768 (findLongestMatchInner!1805 call!340769 lt!2014435 (+ (size!37311 Nil!56559) 1) call!340770 lt!2014221 (size!37311 lt!2014221)))))

(declare-fun bm!340769 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1083 (List!56683 List!56683 List!56683) Unit!146776)

(assert (=> bm!340769 (= call!340772 (lemmaIsPrefixSameLengthThenSameList!1083 lt!2014221 Nil!56559 lt!2014221))))

(declare-fun bm!340770 () Bool)

(assert (=> bm!340770 (= call!340774 (head!10484 lt!2014221))))

(assert (= (and d!1577534 c!834395) b!4908697))

(assert (= (and d!1577534 (not c!834395)) b!4908704))

(assert (= (and b!4908704 c!834397) b!4908698))

(assert (= (and b!4908704 (not c!834397)) b!4908705))

(assert (= (and b!4908698 c!834399) b!4908700))

(assert (= (and b!4908698 (not c!834399)) b!4908703))

(assert (= (and b!4908705 c!834396) b!4908702))

(assert (= (and b!4908705 (not c!834396)) b!4908701))

(assert (= (and b!4908705 c!834394) b!4908694))

(assert (= (and b!4908705 (not c!834394)) b!4908695))

(assert (= (and b!4908694 c!834398) b!4908696))

(assert (= (and b!4908694 (not c!834398)) b!4908706))

(assert (= (or b!4908694 b!4908695) bm!340770))

(assert (= (or b!4908694 b!4908695) bm!340764))

(assert (= (or b!4908694 b!4908695) bm!340765))

(assert (= (or b!4908694 b!4908695) bm!340768))

(assert (= (or b!4908698 b!4908702) bm!340767))

(assert (= (or b!4908698 b!4908702) bm!340763))

(assert (= (or b!4908698 b!4908702) bm!340769))

(assert (= (or b!4908698 b!4908705) bm!340766))

(assert (= (and d!1577534 res!2096775) b!4908707))

(assert (= (and b!4908707 (not res!2096776)) b!4908699))

(declare-fun m!5918422 () Bool)

(assert (=> bm!340770 m!5918422))

(assert (=> bm!340766 m!5918246))

(declare-fun m!5918424 () Bool)

(assert (=> d!1577534 m!5918424))

(declare-fun m!5918426 () Bool)

(assert (=> d!1577534 m!5918426))

(declare-fun m!5918428 () Bool)

(assert (=> d!1577534 m!5918428))

(declare-fun m!5918430 () Bool)

(assert (=> d!1577534 m!5918430))

(assert (=> d!1577534 m!5918244))

(declare-fun m!5918432 () Bool)

(assert (=> d!1577534 m!5918432))

(declare-fun m!5918434 () Bool)

(assert (=> d!1577534 m!5918434))

(assert (=> d!1577534 m!5918424))

(declare-fun m!5918436 () Bool)

(assert (=> d!1577534 m!5918436))

(assert (=> b!4908705 m!5918428))

(declare-fun m!5918438 () Bool)

(assert (=> b!4908705 m!5918438))

(declare-fun m!5918440 () Bool)

(assert (=> b!4908705 m!5918440))

(declare-fun m!5918442 () Bool)

(assert (=> b!4908705 m!5918442))

(declare-fun m!5918444 () Bool)

(assert (=> b!4908705 m!5918444))

(assert (=> b!4908705 m!5918194))

(declare-fun m!5918446 () Bool)

(assert (=> b!4908705 m!5918446))

(declare-fun m!5918448 () Bool)

(assert (=> b!4908705 m!5918448))

(declare-fun m!5918450 () Bool)

(assert (=> b!4908705 m!5918450))

(declare-fun m!5918452 () Bool)

(assert (=> b!4908705 m!5918452))

(assert (=> b!4908705 m!5918446))

(declare-fun m!5918454 () Bool)

(assert (=> b!4908705 m!5918454))

(assert (=> b!4908705 m!5918448))

(declare-fun m!5918456 () Bool)

(assert (=> b!4908705 m!5918456))

(assert (=> b!4908705 m!5918192))

(assert (=> b!4908705 m!5918428))

(assert (=> b!4908705 m!5918422))

(declare-fun m!5918458 () Bool)

(assert (=> bm!340763 m!5918458))

(assert (=> bm!340764 m!5918440))

(declare-fun m!5918460 () Bool)

(assert (=> bm!340767 m!5918460))

(declare-fun m!5918462 () Bool)

(assert (=> b!4908694 m!5918462))

(assert (=> bm!340768 m!5918194))

(declare-fun m!5918464 () Bool)

(assert (=> bm!340768 m!5918464))

(declare-fun m!5918466 () Bool)

(assert (=> bm!340769 m!5918466))

(declare-fun m!5918468 () Bool)

(assert (=> b!4908707 m!5918468))

(declare-fun m!5918470 () Bool)

(assert (=> bm!340765 m!5918470))

(declare-fun m!5918472 () Bool)

(assert (=> b!4908699 m!5918472))

(assert (=> b!4908699 m!5918192))

(assert (=> b!4908434 d!1577534))

(declare-fun d!1577574 () Bool)

(declare-fun lt!2014437 () Int)

(assert (=> d!1577574 (>= lt!2014437 0)))

(declare-fun e!3068284 () Int)

(assert (=> d!1577574 (= lt!2014437 e!3068284)))

(declare-fun c!834400 () Bool)

(assert (=> d!1577574 (= c!834400 ((_ is Nil!56559) Nil!56559))))

(assert (=> d!1577574 (= (size!37311 Nil!56559) lt!2014437)))

(declare-fun b!4908708 () Bool)

(assert (=> b!4908708 (= e!3068284 0)))

(declare-fun b!4908709 () Bool)

(assert (=> b!4908709 (= e!3068284 (+ 1 (size!37311 (t!366943 Nil!56559))))))

(assert (= (and d!1577574 c!834400) b!4908708))

(assert (= (and d!1577574 (not c!834400)) b!4908709))

(declare-fun m!5918474 () Bool)

(assert (=> b!4908709 m!5918474))

(assert (=> b!4908434 d!1577574))

(declare-fun bs!1177301 () Bool)

(declare-fun d!1577576 () Bool)

(assert (= bs!1177301 (and d!1577576 b!4908435)))

(declare-fun lambda!244617 () Int)

(assert (=> bs!1177301 (= lambda!244617 lambda!244608)))

(assert (=> d!1577576 true))

(assert (=> d!1577576 (< (dynLambda!22881 order!25829 (toChars!11034 (transformation!8242 rule!164))) (dynLambda!22880 order!25827 lambda!244617))))

(assert (=> d!1577576 true))

(assert (=> d!1577576 (< (dynLambda!22879 order!25825 (toValue!11175 (transformation!8242 rule!164))) (dynLambda!22880 order!25827 lambda!244617))))

(assert (=> d!1577576 (= (semiInverseModEq!3643 (toChars!11034 (transformation!8242 rule!164)) (toValue!11175 (transformation!8242 rule!164))) (Forall!1739 lambda!244617))))

(declare-fun bs!1177302 () Bool)

(assert (= bs!1177302 d!1577576))

(declare-fun m!5918476 () Bool)

(assert (=> bs!1177302 m!5918476))

(assert (=> b!4908434 d!1577576))

(declare-fun d!1577578 () Bool)

(declare-fun lt!2014440 () Int)

(assert (=> d!1577578 (= lt!2014440 (size!37311 (list!17834 (_1!33738 lt!2014216))))))

(declare-fun size!37313 (Conc!14810) Int)

(assert (=> d!1577578 (= lt!2014440 (size!37313 (c!834338 (_1!33738 lt!2014216))))))

(assert (=> d!1577578 (= (size!37310 (_1!33738 lt!2014216)) lt!2014440)))

(declare-fun bs!1177303 () Bool)

(assert (= bs!1177303 d!1577578))

(assert (=> bs!1177303 m!5918168))

(assert (=> bs!1177303 m!5918168))

(declare-fun m!5918478 () Bool)

(assert (=> bs!1177303 m!5918478))

(declare-fun m!5918480 () Bool)

(assert (=> bs!1177303 m!5918480))

(assert (=> b!4908433 d!1577578))

(declare-fun d!1577580 () Bool)

(declare-fun dynLambda!22886 (Int BalanceConc!29050) Bool)

(assert (=> d!1577580 (dynLambda!22886 lambda!244608 lt!2014220)))

(declare-fun lt!2014443 () Unit!146776)

(declare-fun choose!35895 (Int BalanceConc!29050) Unit!146776)

(assert (=> d!1577580 (= lt!2014443 (choose!35895 lambda!244608 lt!2014220))))

(assert (=> d!1577580 (Forall!1739 lambda!244608)))

(assert (=> d!1577580 (= (ForallOf!1179 lambda!244608 lt!2014220) lt!2014443)))

(declare-fun b_lambda!195713 () Bool)

(assert (=> (not b_lambda!195713) (not d!1577580)))

(declare-fun bs!1177304 () Bool)

(assert (= bs!1177304 d!1577580))

(declare-fun m!5918482 () Bool)

(assert (=> bs!1177304 m!5918482))

(declare-fun m!5918484 () Bool)

(assert (=> bs!1177304 m!5918484))

(assert (=> bs!1177304 m!5918154))

(assert (=> b!4908433 d!1577580))

(declare-fun d!1577582 () Bool)

(declare-fun fromListB!2712 (List!56683) BalanceConc!29050)

(assert (=> d!1577582 (= (seqFromList!5984 lt!2014214) (fromListB!2712 lt!2014214))))

(declare-fun bs!1177305 () Bool)

(assert (= bs!1177305 d!1577582))

(declare-fun m!5918486 () Bool)

(assert (=> bs!1177305 m!5918486))

(assert (=> b!4908433 d!1577582))

(declare-fun d!1577584 () Bool)

(assert (=> d!1577584 (dynLambda!22886 lambda!244608 (_1!33738 lt!2014216))))

(declare-fun lt!2014444 () Unit!146776)

(assert (=> d!1577584 (= lt!2014444 (choose!35895 lambda!244608 (_1!33738 lt!2014216)))))

(assert (=> d!1577584 (Forall!1739 lambda!244608)))

(assert (=> d!1577584 (= (ForallOf!1179 lambda!244608 (_1!33738 lt!2014216)) lt!2014444)))

(declare-fun b_lambda!195715 () Bool)

(assert (=> (not b_lambda!195715) (not d!1577584)))

(declare-fun bs!1177306 () Bool)

(assert (= bs!1177306 d!1577584))

(declare-fun m!5918488 () Bool)

(assert (=> bs!1177306 m!5918488))

(declare-fun m!5918490 () Bool)

(assert (=> bs!1177306 m!5918490))

(assert (=> bs!1177306 m!5918154))

(assert (=> b!4908433 d!1577584))

(declare-fun d!1577586 () Bool)

(assert (=> d!1577586 (= (list!17834 (_1!33738 lt!2014216)) (list!17836 (c!834338 (_1!33738 lt!2014216))))))

(declare-fun bs!1177307 () Bool)

(assert (= bs!1177307 d!1577586))

(declare-fun m!5918492 () Bool)

(assert (=> bs!1177307 m!5918492))

(assert (=> b!4908433 d!1577586))

(declare-fun d!1577588 () Bool)

(declare-fun dynLambda!22887 (Int BalanceConc!29050) TokenValue!8552)

(assert (=> d!1577588 (= (apply!13586 (transformation!8242 rule!164) (_1!33738 lt!2014216)) (dynLambda!22887 (toValue!11175 (transformation!8242 rule!164)) (_1!33738 lt!2014216)))))

(declare-fun b_lambda!195717 () Bool)

(assert (=> (not b_lambda!195717) (not d!1577588)))

(declare-fun t!366953 () Bool)

(declare-fun tb!259999 () Bool)

(assert (=> (and b!4908440 (= (toValue!11175 (transformation!8242 rule!164)) (toValue!11175 (transformation!8242 rule!164))) t!366953) tb!259999))

(declare-fun result!323826 () Bool)

(declare-fun inv!21 (TokenValue!8552) Bool)

(assert (=> tb!259999 (= result!323826 (inv!21 (dynLambda!22887 (toValue!11175 (transformation!8242 rule!164)) (_1!33738 lt!2014216))))))

(declare-fun m!5918494 () Bool)

(assert (=> tb!259999 m!5918494))

(assert (=> d!1577588 t!366953))

(declare-fun b_and!346567 () Bool)

(assert (= b_and!346547 (and (=> t!366953 result!323826) b_and!346567)))

(declare-fun m!5918496 () Bool)

(assert (=> d!1577588 m!5918496))

(assert (=> b!4908433 d!1577588))

(declare-fun d!1577590 () Bool)

(declare-fun isEmpty!30462 (Option!14121) Bool)

(assert (=> d!1577590 (= (isDefined!11130 lt!2014213) (not (isEmpty!30462 lt!2014213)))))

(declare-fun bs!1177308 () Bool)

(assert (= bs!1177308 d!1577590))

(declare-fun m!5918498 () Bool)

(assert (=> bs!1177308 m!5918498))

(assert (=> b!4908433 d!1577590))

(declare-fun b!4908734 () Bool)

(declare-fun res!2096795 () Bool)

(declare-fun e!3068299 () Bool)

(assert (=> b!4908734 (=> (not res!2096795) (not e!3068299))))

(declare-fun lt!2014455 () Option!14121)

(assert (=> b!4908734 (= res!2096795 (= (value!264029 (_1!33737 (get!19569 lt!2014455))) (apply!13586 (transformation!8242 (rule!11450 (_1!33737 (get!19569 lt!2014455)))) (seqFromList!5984 (originalCharacters!8537 (_1!33737 (get!19569 lt!2014455)))))))))

(declare-fun b!4908735 () Bool)

(declare-fun e!3068297 () Bool)

(assert (=> b!4908735 (= e!3068297 e!3068299)))

(declare-fun res!2096793 () Bool)

(assert (=> b!4908735 (=> (not res!2096793) (not e!3068299))))

(declare-fun charsOf!5397 (Token!15012) BalanceConc!29050)

(assert (=> b!4908735 (= res!2096793 (matchR!6584 (regex!8242 rule!164) (list!17834 (charsOf!5397 (_1!33737 (get!19569 lt!2014455))))))))

(declare-fun d!1577592 () Bool)

(assert (=> d!1577592 e!3068297))

(declare-fun res!2096792 () Bool)

(assert (=> d!1577592 (=> res!2096792 e!3068297)))

(assert (=> d!1577592 (= res!2096792 (isEmpty!30462 lt!2014455))))

(declare-fun e!3068298 () Option!14121)

(assert (=> d!1577592 (= lt!2014455 e!3068298)))

(declare-fun c!834403 () Bool)

(declare-fun lt!2014457 () tuple2!60874)

(assert (=> d!1577592 (= c!834403 (isEmpty!30458 (_1!33740 lt!2014457)))))

(declare-fun findLongestMatch!1673 (Regex!13317 List!56683) tuple2!60874)

(assert (=> d!1577592 (= lt!2014457 (findLongestMatch!1673 (regex!8242 rule!164) lt!2014221))))

(assert (=> d!1577592 (ruleValid!3739 thiss!15943 rule!164)))

(assert (=> d!1577592 (= (maxPrefixOneRule!3579 thiss!15943 rule!164 lt!2014221) lt!2014455)))

(declare-fun b!4908736 () Bool)

(declare-fun res!2096794 () Bool)

(assert (=> b!4908736 (=> (not res!2096794) (not e!3068299))))

(assert (=> b!4908736 (= res!2096794 (= (++!12271 (list!17834 (charsOf!5397 (_1!33737 (get!19569 lt!2014455)))) (_2!33737 (get!19569 lt!2014455))) lt!2014221))))

(declare-fun b!4908737 () Bool)

(assert (=> b!4908737 (= e!3068298 (Some!14120 (tuple2!60869 (Token!15013 (apply!13586 (transformation!8242 rule!164) (seqFromList!5984 (_1!33740 lt!2014457))) rule!164 (size!37310 (seqFromList!5984 (_1!33740 lt!2014457))) (_1!33740 lt!2014457)) (_2!33740 lt!2014457))))))

(declare-fun lt!2014459 () Unit!146776)

(assert (=> b!4908737 (= lt!2014459 (longestMatchIsAcceptedByMatchOrIsEmpty!1768 (regex!8242 rule!164) lt!2014221))))

(declare-fun res!2096797 () Bool)

(assert (=> b!4908737 (= res!2096797 (isEmpty!30458 (_1!33740 (findLongestMatchInner!1805 (regex!8242 rule!164) Nil!56559 (size!37311 Nil!56559) lt!2014221 lt!2014221 (size!37311 lt!2014221)))))))

(declare-fun e!3068296 () Bool)

(assert (=> b!4908737 (=> res!2096797 e!3068296)))

(assert (=> b!4908737 e!3068296))

(declare-fun lt!2014458 () Unit!146776)

(assert (=> b!4908737 (= lt!2014458 lt!2014459)))

(declare-fun lt!2014456 () Unit!146776)

(declare-fun lemmaSemiInverse!2585 (TokenValueInjection!16412 BalanceConc!29050) Unit!146776)

(assert (=> b!4908737 (= lt!2014456 (lemmaSemiInverse!2585 (transformation!8242 rule!164) (seqFromList!5984 (_1!33740 lt!2014457))))))

(declare-fun b!4908738 () Bool)

(assert (=> b!4908738 (= e!3068299 (= (size!37309 (_1!33737 (get!19569 lt!2014455))) (size!37311 (originalCharacters!8537 (_1!33737 (get!19569 lt!2014455))))))))

(declare-fun b!4908739 () Bool)

(assert (=> b!4908739 (= e!3068298 None!14120)))

(declare-fun b!4908740 () Bool)

(declare-fun res!2096791 () Bool)

(assert (=> b!4908740 (=> (not res!2096791) (not e!3068299))))

(assert (=> b!4908740 (= res!2096791 (= (rule!11450 (_1!33737 (get!19569 lt!2014455))) rule!164))))

(declare-fun b!4908741 () Bool)

(declare-fun res!2096796 () Bool)

(assert (=> b!4908741 (=> (not res!2096796) (not e!3068299))))

(assert (=> b!4908741 (= res!2096796 (< (size!37311 (_2!33737 (get!19569 lt!2014455))) (size!37311 lt!2014221)))))

(declare-fun b!4908742 () Bool)

(assert (=> b!4908742 (= e!3068296 (matchR!6584 (regex!8242 rule!164) (_1!33740 (findLongestMatchInner!1805 (regex!8242 rule!164) Nil!56559 (size!37311 Nil!56559) lt!2014221 lt!2014221 (size!37311 lt!2014221)))))))

(assert (= (and d!1577592 c!834403) b!4908739))

(assert (= (and d!1577592 (not c!834403)) b!4908737))

(assert (= (and b!4908737 (not res!2096797)) b!4908742))

(assert (= (and d!1577592 (not res!2096792)) b!4908735))

(assert (= (and b!4908735 res!2096793) b!4908736))

(assert (= (and b!4908736 res!2096794) b!4908741))

(assert (= (and b!4908741 res!2096796) b!4908740))

(assert (= (and b!4908740 res!2096791) b!4908734))

(assert (= (and b!4908734 res!2096795) b!4908738))

(declare-fun m!5918500 () Bool)

(assert (=> d!1577592 m!5918500))

(declare-fun m!5918502 () Bool)

(assert (=> d!1577592 m!5918502))

(declare-fun m!5918504 () Bool)

(assert (=> d!1577592 m!5918504))

(assert (=> d!1577592 m!5918208))

(declare-fun m!5918506 () Bool)

(assert (=> b!4908741 m!5918506))

(declare-fun m!5918508 () Bool)

(assert (=> b!4908741 m!5918508))

(assert (=> b!4908741 m!5918194))

(assert (=> b!4908734 m!5918506))

(declare-fun m!5918510 () Bool)

(assert (=> b!4908734 m!5918510))

(assert (=> b!4908734 m!5918510))

(declare-fun m!5918512 () Bool)

(assert (=> b!4908734 m!5918512))

(assert (=> b!4908737 m!5918260))

(assert (=> b!4908737 m!5918192))

(assert (=> b!4908737 m!5918202))

(assert (=> b!4908737 m!5918192))

(assert (=> b!4908737 m!5918194))

(assert (=> b!4908737 m!5918196))

(declare-fun m!5918514 () Bool)

(assert (=> b!4908737 m!5918514))

(assert (=> b!4908737 m!5918194))

(assert (=> b!4908737 m!5918514))

(declare-fun m!5918516 () Bool)

(assert (=> b!4908737 m!5918516))

(assert (=> b!4908737 m!5918514))

(declare-fun m!5918518 () Bool)

(assert (=> b!4908737 m!5918518))

(assert (=> b!4908737 m!5918514))

(declare-fun m!5918520 () Bool)

(assert (=> b!4908737 m!5918520))

(assert (=> b!4908740 m!5918506))

(assert (=> b!4908742 m!5918192))

(assert (=> b!4908742 m!5918194))

(assert (=> b!4908742 m!5918192))

(assert (=> b!4908742 m!5918194))

(assert (=> b!4908742 m!5918196))

(assert (=> b!4908742 m!5918264))

(assert (=> b!4908736 m!5918506))

(declare-fun m!5918522 () Bool)

(assert (=> b!4908736 m!5918522))

(assert (=> b!4908736 m!5918522))

(declare-fun m!5918524 () Bool)

(assert (=> b!4908736 m!5918524))

(assert (=> b!4908736 m!5918524))

(declare-fun m!5918526 () Bool)

(assert (=> b!4908736 m!5918526))

(assert (=> b!4908735 m!5918506))

(assert (=> b!4908735 m!5918522))

(assert (=> b!4908735 m!5918522))

(assert (=> b!4908735 m!5918524))

(assert (=> b!4908735 m!5918524))

(declare-fun m!5918528 () Bool)

(assert (=> b!4908735 m!5918528))

(assert (=> b!4908738 m!5918506))

(declare-fun m!5918530 () Bool)

(assert (=> b!4908738 m!5918530))

(assert (=> b!4908433 d!1577592))

(declare-fun d!1577594 () Bool)

(declare-fun isEmpty!30463 (Option!14122) Bool)

(assert (=> d!1577594 (= (isDefined!11131 (Some!14121 (tuple2!60873 (Token!15013 lt!2014208 rule!164 lt!2014218 lt!2014214) (_2!33738 lt!2014216)))) (not (isEmpty!30463 (Some!14121 (tuple2!60873 (Token!15013 lt!2014208 rule!164 lt!2014218 lt!2014214) (_2!33738 lt!2014216))))))))

(declare-fun bs!1177309 () Bool)

(assert (= bs!1177309 d!1577594))

(declare-fun m!5918532 () Bool)

(assert (=> bs!1177309 m!5918532))

(assert (=> b!4908433 d!1577594))

(declare-fun d!1577596 () Bool)

(assert (=> d!1577596 (= (apply!13586 (transformation!8242 rule!164) lt!2014220) (dynLambda!22887 (toValue!11175 (transformation!8242 rule!164)) lt!2014220))))

(declare-fun b_lambda!195719 () Bool)

(assert (=> (not b_lambda!195719) (not d!1577596)))

(declare-fun t!366955 () Bool)

(declare-fun tb!260001 () Bool)

(assert (=> (and b!4908440 (= (toValue!11175 (transformation!8242 rule!164)) (toValue!11175 (transformation!8242 rule!164))) t!366955) tb!260001))

(declare-fun result!323830 () Bool)

(assert (=> tb!260001 (= result!323830 (inv!21 (dynLambda!22887 (toValue!11175 (transformation!8242 rule!164)) lt!2014220)))))

(declare-fun m!5918534 () Bool)

(assert (=> tb!260001 m!5918534))

(assert (=> d!1577596 t!366955))

(declare-fun b_and!346569 () Bool)

(assert (= b_and!346567 (and (=> t!366955 result!323830) b_and!346569)))

(declare-fun m!5918536 () Bool)

(assert (=> d!1577596 m!5918536))

(assert (=> b!4908443 d!1577596))

(declare-fun b!4908749 () Bool)

(declare-fun e!3068305 () Bool)

(assert (=> b!4908749 (= e!3068305 true)))

(declare-fun d!1577598 () Bool)

(assert (=> d!1577598 e!3068305))

(assert (= d!1577598 b!4908749))

(declare-fun lambda!244620 () Int)

(declare-fun order!25833 () Int)

(declare-fun dynLambda!22888 (Int Int) Int)

(assert (=> b!4908749 (< (dynLambda!22879 order!25825 (toValue!11175 (transformation!8242 rule!164))) (dynLambda!22888 order!25833 lambda!244620))))

(assert (=> b!4908749 (< (dynLambda!22881 order!25829 (toChars!11034 (transformation!8242 rule!164))) (dynLambda!22888 order!25833 lambda!244620))))

(assert (=> d!1577598 (= (dynLambda!22887 (toValue!11175 (transformation!8242 rule!164)) (_1!33738 lt!2014216)) (dynLambda!22887 (toValue!11175 (transformation!8242 rule!164)) lt!2014220))))

(declare-fun lt!2014462 () Unit!146776)

(declare-fun Forall2of!462 (Int BalanceConc!29050 BalanceConc!29050) Unit!146776)

(assert (=> d!1577598 (= lt!2014462 (Forall2of!462 lambda!244620 (_1!33738 lt!2014216) lt!2014220))))

(assert (=> d!1577598 (= (list!17834 (_1!33738 lt!2014216)) (list!17834 lt!2014220))))

(assert (=> d!1577598 (= (lemmaEqSameImage!1124 (transformation!8242 rule!164) (_1!33738 lt!2014216) lt!2014220) lt!2014462)))

(declare-fun b_lambda!195721 () Bool)

(assert (=> (not b_lambda!195721) (not d!1577598)))

(assert (=> d!1577598 t!366953))

(declare-fun b_and!346571 () Bool)

(assert (= b_and!346569 (and (=> t!366953 result!323826) b_and!346571)))

(declare-fun b_lambda!195723 () Bool)

(assert (=> (not b_lambda!195723) (not d!1577598)))

(assert (=> d!1577598 t!366955))

(declare-fun b_and!346573 () Bool)

(assert (= b_and!346571 (and (=> t!366955 result!323830) b_and!346573)))

(declare-fun m!5918538 () Bool)

(assert (=> d!1577598 m!5918538))

(assert (=> d!1577598 m!5918180))

(assert (=> d!1577598 m!5918168))

(assert (=> d!1577598 m!5918496))

(assert (=> d!1577598 m!5918536))

(assert (=> b!4908443 d!1577598))

(declare-fun d!1577600 () Bool)

(assert (=> d!1577600 (= (get!19569 lt!2014213) (v!50082 lt!2014213))))

(assert (=> b!4908437 d!1577600))

(declare-fun b!4908778 () Bool)

(declare-fun e!3068326 () Bool)

(assert (=> b!4908778 (= e!3068326 (= (head!10484 (_1!33740 lt!2014219)) (c!834337 (regex!8242 rule!164))))))

(declare-fun b!4908779 () Bool)

(declare-fun e!3068323 () Bool)

(assert (=> b!4908779 (= e!3068323 (nullable!4583 (regex!8242 rule!164)))))

(declare-fun bm!340773 () Bool)

(declare-fun call!340778 () Bool)

(assert (=> bm!340773 (= call!340778 (isEmpty!30458 (_1!33740 lt!2014219)))))

(declare-fun b!4908780 () Bool)

(declare-fun e!3068325 () Bool)

(declare-fun lt!2014465 () Bool)

(assert (=> b!4908780 (= e!3068325 (= lt!2014465 call!340778))))

(declare-fun b!4908782 () Bool)

(declare-fun res!2096819 () Bool)

(assert (=> b!4908782 (=> (not res!2096819) (not e!3068326))))

(assert (=> b!4908782 (= res!2096819 (not call!340778))))

(declare-fun b!4908783 () Bool)

(declare-fun e!3068324 () Bool)

(assert (=> b!4908783 (= e!3068324 (not (= (head!10484 (_1!33740 lt!2014219)) (c!834337 (regex!8242 rule!164)))))))

(declare-fun b!4908784 () Bool)

(declare-fun res!2096821 () Bool)

(declare-fun e!3068322 () Bool)

(assert (=> b!4908784 (=> res!2096821 e!3068322)))

(assert (=> b!4908784 (= res!2096821 e!3068326)))

(declare-fun res!2096816 () Bool)

(assert (=> b!4908784 (=> (not res!2096816) (not e!3068326))))

(assert (=> b!4908784 (= res!2096816 lt!2014465)))

(declare-fun b!4908785 () Bool)

(declare-fun res!2096820 () Bool)

(assert (=> b!4908785 (=> res!2096820 e!3068324)))

(assert (=> b!4908785 (= res!2096820 (not (isEmpty!30458 (tail!9631 (_1!33740 lt!2014219)))))))

(declare-fun b!4908781 () Bool)

(declare-fun e!3068321 () Bool)

(assert (=> b!4908781 (= e!3068325 e!3068321)))

(declare-fun c!834411 () Bool)

(assert (=> b!4908781 (= c!834411 ((_ is EmptyLang!13317) (regex!8242 rule!164)))))

(declare-fun d!1577602 () Bool)

(assert (=> d!1577602 e!3068325))

(declare-fun c!834412 () Bool)

(assert (=> d!1577602 (= c!834412 ((_ is EmptyExpr!13317) (regex!8242 rule!164)))))

(assert (=> d!1577602 (= lt!2014465 e!3068323)))

(declare-fun c!834410 () Bool)

(assert (=> d!1577602 (= c!834410 (isEmpty!30458 (_1!33740 lt!2014219)))))

(assert (=> d!1577602 (validRegex!5910 (regex!8242 rule!164))))

(assert (=> d!1577602 (= (matchR!6584 (regex!8242 rule!164) (_1!33740 lt!2014219)) lt!2014465)))

(declare-fun b!4908786 () Bool)

(assert (=> b!4908786 (= e!3068323 (matchR!6584 (derivativeStep!3903 (regex!8242 rule!164) (head!10484 (_1!33740 lt!2014219))) (tail!9631 (_1!33740 lt!2014219))))))

(declare-fun b!4908787 () Bool)

(declare-fun e!3068320 () Bool)

(assert (=> b!4908787 (= e!3068320 e!3068324)))

(declare-fun res!2096817 () Bool)

(assert (=> b!4908787 (=> res!2096817 e!3068324)))

(assert (=> b!4908787 (= res!2096817 call!340778)))

(declare-fun b!4908788 () Bool)

(declare-fun res!2096823 () Bool)

(assert (=> b!4908788 (=> (not res!2096823) (not e!3068326))))

(assert (=> b!4908788 (= res!2096823 (isEmpty!30458 (tail!9631 (_1!33740 lt!2014219))))))

(declare-fun b!4908789 () Bool)

(assert (=> b!4908789 (= e!3068321 (not lt!2014465))))

(declare-fun b!4908790 () Bool)

(assert (=> b!4908790 (= e!3068322 e!3068320)))

(declare-fun res!2096822 () Bool)

(assert (=> b!4908790 (=> (not res!2096822) (not e!3068320))))

(assert (=> b!4908790 (= res!2096822 (not lt!2014465))))

(declare-fun b!4908791 () Bool)

(declare-fun res!2096818 () Bool)

(assert (=> b!4908791 (=> res!2096818 e!3068322)))

(assert (=> b!4908791 (= res!2096818 (not ((_ is ElementMatch!13317) (regex!8242 rule!164))))))

(assert (=> b!4908791 (= e!3068321 e!3068322)))

(assert (= (and d!1577602 c!834410) b!4908779))

(assert (= (and d!1577602 (not c!834410)) b!4908786))

(assert (= (and d!1577602 c!834412) b!4908780))

(assert (= (and d!1577602 (not c!834412)) b!4908781))

(assert (= (and b!4908781 c!834411) b!4908789))

(assert (= (and b!4908781 (not c!834411)) b!4908791))

(assert (= (and b!4908791 (not res!2096818)) b!4908784))

(assert (= (and b!4908784 res!2096816) b!4908782))

(assert (= (and b!4908782 res!2096819) b!4908788))

(assert (= (and b!4908788 res!2096823) b!4908778))

(assert (= (and b!4908784 (not res!2096821)) b!4908790))

(assert (= (and b!4908790 res!2096822) b!4908787))

(assert (= (and b!4908787 (not res!2096817)) b!4908785))

(assert (= (and b!4908785 (not res!2096820)) b!4908783))

(assert (= (or b!4908780 b!4908782 b!4908787) bm!340773))

(declare-fun m!5918540 () Bool)

(assert (=> b!4908783 m!5918540))

(declare-fun m!5918542 () Bool)

(assert (=> b!4908785 m!5918542))

(assert (=> b!4908785 m!5918542))

(declare-fun m!5918544 () Bool)

(assert (=> b!4908785 m!5918544))

(assert (=> b!4908788 m!5918542))

(assert (=> b!4908788 m!5918542))

(assert (=> b!4908788 m!5918544))

(assert (=> b!4908786 m!5918540))

(assert (=> b!4908786 m!5918540))

(declare-fun m!5918546 () Bool)

(assert (=> b!4908786 m!5918546))

(assert (=> b!4908786 m!5918542))

(assert (=> b!4908786 m!5918546))

(assert (=> b!4908786 m!5918542))

(declare-fun m!5918548 () Bool)

(assert (=> b!4908786 m!5918548))

(assert (=> b!4908779 m!5918246))

(assert (=> bm!340773 m!5918198))

(assert (=> b!4908778 m!5918540))

(assert (=> d!1577602 m!5918198))

(assert (=> d!1577602 m!5918244))

(assert (=> b!4908436 d!1577602))

(declare-fun d!1577604 () Bool)

(declare-fun choose!35896 (Int) Bool)

(assert (=> d!1577604 (= (Forall!1739 lambda!244608) (choose!35896 lambda!244608))))

(declare-fun bs!1177310 () Bool)

(assert (= bs!1177310 d!1577604))

(declare-fun m!5918550 () Bool)

(assert (=> bs!1177310 m!5918550))

(assert (=> b!4908435 d!1577604))

(declare-fun d!1577606 () Bool)

(declare-fun lt!2014468 () Bool)

(assert (=> d!1577606 (= lt!2014468 (isEmpty!30458 (list!17834 (_1!33738 lt!2014216))))))

(declare-fun isEmpty!30464 (Conc!14810) Bool)

(assert (=> d!1577606 (= lt!2014468 (isEmpty!30464 (c!834338 (_1!33738 lt!2014216))))))

(assert (=> d!1577606 (= (isEmpty!30457 (_1!33738 lt!2014216)) lt!2014468)))

(declare-fun bs!1177311 () Bool)

(assert (= bs!1177311 d!1577606))

(assert (=> bs!1177311 m!5918168))

(assert (=> bs!1177311 m!5918168))

(declare-fun m!5918552 () Bool)

(assert (=> bs!1177311 m!5918552))

(declare-fun m!5918554 () Bool)

(assert (=> bs!1177311 m!5918554))

(assert (=> b!4908439 d!1577606))

(declare-fun d!1577608 () Bool)

(declare-fun lt!2014471 () tuple2!60870)

(assert (=> d!1577608 (= (tuple2!60875 (list!17834 (_1!33738 lt!2014471)) (list!17834 (_2!33738 lt!2014471))) (findLongestMatch!1673 (regex!8242 rule!164) (list!17834 input!1509)))))

(declare-fun choose!35897 (Regex!13317 BalanceConc!29050) tuple2!60870)

(assert (=> d!1577608 (= lt!2014471 (choose!35897 (regex!8242 rule!164) input!1509))))

(assert (=> d!1577608 (validRegex!5910 (regex!8242 rule!164))))

(assert (=> d!1577608 (= (findLongestMatchWithZipperSequence!330 (regex!8242 rule!164) input!1509) lt!2014471)))

(declare-fun bs!1177312 () Bool)

(assert (= bs!1177312 d!1577608))

(declare-fun m!5918556 () Bool)

(assert (=> bs!1177312 m!5918556))

(assert (=> bs!1177312 m!5918204))

(declare-fun m!5918558 () Bool)

(assert (=> bs!1177312 m!5918558))

(declare-fun m!5918560 () Bool)

(assert (=> bs!1177312 m!5918560))

(declare-fun m!5918562 () Bool)

(assert (=> bs!1177312 m!5918562))

(assert (=> bs!1177312 m!5918204))

(assert (=> bs!1177312 m!5918244))

(assert (=> b!4908439 d!1577608))

(declare-fun d!1577610 () Bool)

(assert (=> d!1577610 (= (inv!73061 (tag!9106 rule!164)) (= (mod (str.len (value!264003 (tag!9106 rule!164))) 2) 0))))

(assert (=> b!4908438 d!1577610))

(declare-fun d!1577612 () Bool)

(declare-fun res!2096826 () Bool)

(declare-fun e!3068329 () Bool)

(assert (=> d!1577612 (=> (not res!2096826) (not e!3068329))))

(assert (=> d!1577612 (= res!2096826 (semiInverseModEq!3643 (toChars!11034 (transformation!8242 rule!164)) (toValue!11175 (transformation!8242 rule!164))))))

(assert (=> d!1577612 (= (inv!73066 (transformation!8242 rule!164)) e!3068329)))

(declare-fun b!4908794 () Bool)

(assert (=> b!4908794 (= e!3068329 (equivClasses!3495 (toChars!11034 (transformation!8242 rule!164)) (toValue!11175 (transformation!8242 rule!164))))))

(assert (= (and d!1577612 res!2096826) b!4908794))

(assert (=> d!1577612 m!5918200))

(assert (=> b!4908794 m!5918266))

(assert (=> b!4908438 d!1577612))

(declare-fun tp!1380508 () Bool)

(declare-fun e!3068335 () Bool)

(declare-fun b!4908803 () Bool)

(declare-fun tp!1380507 () Bool)

(assert (=> b!4908803 (= e!3068335 (and (inv!73065 (left!41193 (c!834338 input!1509))) tp!1380508 (inv!73065 (right!41523 (c!834338 input!1509))) tp!1380507))))

(declare-fun b!4908805 () Bool)

(declare-fun e!3068334 () Bool)

(declare-fun tp!1380506 () Bool)

(assert (=> b!4908805 (= e!3068334 tp!1380506)))

(declare-fun b!4908804 () Bool)

(declare-fun inv!73073 (IArray!29681) Bool)

(assert (=> b!4908804 (= e!3068335 (and (inv!73073 (xs!18126 (c!834338 input!1509))) e!3068334))))

(assert (=> b!4908432 (= tp!1380470 (and (inv!73065 (c!834338 input!1509)) e!3068335))))

(assert (= (and b!4908432 ((_ is Node!14810) (c!834338 input!1509))) b!4908803))

(assert (= b!4908804 b!4908805))

(assert (= (and b!4908432 ((_ is Leaf!24648) (c!834338 input!1509))) b!4908804))

(declare-fun m!5918564 () Bool)

(assert (=> b!4908803 m!5918564))

(declare-fun m!5918566 () Bool)

(assert (=> b!4908803 m!5918566))

(declare-fun m!5918568 () Bool)

(assert (=> b!4908804 m!5918568))

(assert (=> b!4908432 m!5918150))

(declare-fun b!4908818 () Bool)

(declare-fun e!3068338 () Bool)

(declare-fun tp!1380522 () Bool)

(assert (=> b!4908818 (= e!3068338 tp!1380522)))

(declare-fun b!4908816 () Bool)

(declare-fun tp_is_empty!35843 () Bool)

(assert (=> b!4908816 (= e!3068338 tp_is_empty!35843)))

(declare-fun b!4908819 () Bool)

(declare-fun tp!1380523 () Bool)

(declare-fun tp!1380520 () Bool)

(assert (=> b!4908819 (= e!3068338 (and tp!1380523 tp!1380520))))

(declare-fun b!4908817 () Bool)

(declare-fun tp!1380519 () Bool)

(declare-fun tp!1380521 () Bool)

(assert (=> b!4908817 (= e!3068338 (and tp!1380519 tp!1380521))))

(assert (=> b!4908438 (= tp!1380468 e!3068338)))

(assert (= (and b!4908438 ((_ is ElementMatch!13317) (regex!8242 rule!164))) b!4908816))

(assert (= (and b!4908438 ((_ is Concat!21869) (regex!8242 rule!164))) b!4908817))

(assert (= (and b!4908438 ((_ is Star!13317) (regex!8242 rule!164))) b!4908818))

(assert (= (and b!4908438 ((_ is Union!13317) (regex!8242 rule!164))) b!4908819))

(declare-fun b_lambda!195725 () Bool)

(assert (= b_lambda!195723 (or (and b!4908440 b_free!131939) b_lambda!195725)))

(declare-fun b_lambda!195727 () Bool)

(assert (= b_lambda!195721 (or (and b!4908440 b_free!131939) b_lambda!195727)))

(declare-fun b_lambda!195729 () Bool)

(assert (= b_lambda!195717 (or (and b!4908440 b_free!131939) b_lambda!195729)))

(declare-fun b_lambda!195731 () Bool)

(assert (= b_lambda!195713 (or b!4908435 b_lambda!195731)))

(declare-fun bs!1177313 () Bool)

(declare-fun d!1577614 () Bool)

(assert (= bs!1177313 (and d!1577614 b!4908435)))

(declare-fun dynLambda!22889 (Int TokenValue!8552) BalanceConc!29050)

(assert (=> bs!1177313 (= (dynLambda!22886 lambda!244608 lt!2014220) (= (list!17834 (dynLambda!22889 (toChars!11034 (transformation!8242 rule!164)) (dynLambda!22887 (toValue!11175 (transformation!8242 rule!164)) lt!2014220))) (list!17834 lt!2014220)))))

(declare-fun b_lambda!195737 () Bool)

(assert (=> (not b_lambda!195737) (not bs!1177313)))

(declare-fun t!366957 () Bool)

(declare-fun tb!260003 () Bool)

(assert (=> (and b!4908440 (= (toChars!11034 (transformation!8242 rule!164)) (toChars!11034 (transformation!8242 rule!164))) t!366957) tb!260003))

(declare-fun tp!1380526 () Bool)

(declare-fun e!3068341 () Bool)

(declare-fun b!4908824 () Bool)

(assert (=> b!4908824 (= e!3068341 (and (inv!73065 (c!834338 (dynLambda!22889 (toChars!11034 (transformation!8242 rule!164)) (dynLambda!22887 (toValue!11175 (transformation!8242 rule!164)) lt!2014220)))) tp!1380526))))

(declare-fun result!323836 () Bool)

(assert (=> tb!260003 (= result!323836 (and (inv!73067 (dynLambda!22889 (toChars!11034 (transformation!8242 rule!164)) (dynLambda!22887 (toValue!11175 (transformation!8242 rule!164)) lt!2014220))) e!3068341))))

(assert (= tb!260003 b!4908824))

(declare-fun m!5918570 () Bool)

(assert (=> b!4908824 m!5918570))

(declare-fun m!5918572 () Bool)

(assert (=> tb!260003 m!5918572))

(assert (=> bs!1177313 t!366957))

(declare-fun b_and!346575 () Bool)

(assert (= b_and!346549 (and (=> t!366957 result!323836) b_and!346575)))

(declare-fun b_lambda!195739 () Bool)

(assert (=> (not b_lambda!195739) (not bs!1177313)))

(assert (=> bs!1177313 t!366955))

(declare-fun b_and!346577 () Bool)

(assert (= b_and!346573 (and (=> t!366955 result!323830) b_and!346577)))

(assert (=> bs!1177313 m!5918180))

(assert (=> bs!1177313 m!5918536))

(assert (=> bs!1177313 m!5918536))

(declare-fun m!5918574 () Bool)

(assert (=> bs!1177313 m!5918574))

(assert (=> bs!1177313 m!5918574))

(declare-fun m!5918576 () Bool)

(assert (=> bs!1177313 m!5918576))

(assert (=> d!1577580 d!1577614))

(declare-fun b_lambda!195733 () Bool)

(assert (= b_lambda!195719 (or (and b!4908440 b_free!131939) b_lambda!195733)))

(declare-fun b_lambda!195735 () Bool)

(assert (= b_lambda!195715 (or b!4908435 b_lambda!195735)))

(declare-fun bs!1177314 () Bool)

(declare-fun d!1577616 () Bool)

(assert (= bs!1177314 (and d!1577616 b!4908435)))

(assert (=> bs!1177314 (= (dynLambda!22886 lambda!244608 (_1!33738 lt!2014216)) (= (list!17834 (dynLambda!22889 (toChars!11034 (transformation!8242 rule!164)) (dynLambda!22887 (toValue!11175 (transformation!8242 rule!164)) (_1!33738 lt!2014216)))) (list!17834 (_1!33738 lt!2014216))))))

(declare-fun b_lambda!195741 () Bool)

(assert (=> (not b_lambda!195741) (not bs!1177314)))

(declare-fun t!366959 () Bool)

(declare-fun tb!260005 () Bool)

(assert (=> (and b!4908440 (= (toChars!11034 (transformation!8242 rule!164)) (toChars!11034 (transformation!8242 rule!164))) t!366959) tb!260005))

(declare-fun b!4908825 () Bool)

(declare-fun tp!1380527 () Bool)

(declare-fun e!3068342 () Bool)

(assert (=> b!4908825 (= e!3068342 (and (inv!73065 (c!834338 (dynLambda!22889 (toChars!11034 (transformation!8242 rule!164)) (dynLambda!22887 (toValue!11175 (transformation!8242 rule!164)) (_1!33738 lt!2014216))))) tp!1380527))))

(declare-fun result!323840 () Bool)

(assert (=> tb!260005 (= result!323840 (and (inv!73067 (dynLambda!22889 (toChars!11034 (transformation!8242 rule!164)) (dynLambda!22887 (toValue!11175 (transformation!8242 rule!164)) (_1!33738 lt!2014216)))) e!3068342))))

(assert (= tb!260005 b!4908825))

(declare-fun m!5918578 () Bool)

(assert (=> b!4908825 m!5918578))

(declare-fun m!5918580 () Bool)

(assert (=> tb!260005 m!5918580))

(assert (=> bs!1177314 t!366959))

(declare-fun b_and!346579 () Bool)

(assert (= b_and!346575 (and (=> t!366959 result!323840) b_and!346579)))

(declare-fun b_lambda!195743 () Bool)

(assert (=> (not b_lambda!195743) (not bs!1177314)))

(assert (=> bs!1177314 t!366953))

(declare-fun b_and!346581 () Bool)

(assert (= b_and!346577 (and (=> t!366953 result!323826) b_and!346581)))

(assert (=> bs!1177314 m!5918168))

(assert (=> bs!1177314 m!5918496))

(assert (=> bs!1177314 m!5918496))

(declare-fun m!5918582 () Bool)

(assert (=> bs!1177314 m!5918582))

(assert (=> bs!1177314 m!5918582))

(declare-fun m!5918584 () Bool)

(assert (=> bs!1177314 m!5918584))

(assert (=> d!1577584 d!1577616))

(check-sat (not b!4908699) (not d!1577612) (not d!1577576) (not b!4908825) (not b!4908705) (not b!4908735) (not b!4908737) (not d!1577594) (not b!4908511) (not b_lambda!195739) (not b!4908819) (not d!1577532) (not b!4908785) (not d!1577580) (not b!4908794) (not bm!340766) (not d!1577534) (not tb!259999) tp_is_empty!35843 (not b!4908788) (not b!4908707) (not b!4908741) (not b!4908694) (not bm!340763) (not b_lambda!195733) (not bs!1177313) (not b_lambda!195737) (not b_lambda!195743) (not d!1577590) (not b!4908805) (not b!4908824) (not d!1577530) (not b!4908738) (not bm!340768) (not b!4908817) (not b_lambda!195741) (not d!1577524) (not b!4908505) (not b_lambda!195731) (not b!4908786) (not b!4908742) (not b_lambda!195727) (not b!4908492) (not b_lambda!195735) (not tb!260005) (not d!1577586) (not d!1577584) (not b!4908736) (not b!4908779) (not bm!340767) (not d!1577606) (not b!4908818) (not b_next!132731) (not d!1577516) (not b!4908479) (not bs!1177314) (not tb!260003) (not bm!340765) (not b!4908481) (not bm!340764) b_and!346581 (not b!4908432) b_and!346579 (not b!4908803) (not d!1577608) (not bm!340773) (not d!1577578) (not b!4908778) (not bm!340770) (not d!1577582) (not d!1577598) (not bm!340769) (not tb!260001) (not b!4908783) (not b!4908734) (not b!4908740) (not d!1577604) (not d!1577602) (not b_next!132729) (not b_lambda!195725) (not d!1577592) (not b!4908508) (not b!4908709) (not b_lambda!195729) (not b!4908804) (not d!1577510) (not d!1577518))
(check-sat b_and!346579 b_and!346581 (not b_next!132731) (not b_next!132729))
