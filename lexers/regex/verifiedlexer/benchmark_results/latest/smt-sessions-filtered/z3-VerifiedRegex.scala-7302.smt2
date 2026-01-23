; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!389108 () Bool)

(assert start!389108)

(declare-fun b!4105185 () Bool)

(declare-fun b_free!115265 () Bool)

(declare-fun b_next!115969 () Bool)

(assert (=> b!4105185 (= b_free!115265 (not b_next!115969))))

(declare-fun tp!1244794 () Bool)

(declare-fun b_and!317079 () Bool)

(assert (=> b!4105185 (= tp!1244794 b_and!317079)))

(declare-fun b_free!115267 () Bool)

(declare-fun b_next!115971 () Bool)

(assert (=> b!4105185 (= b_free!115267 (not b_next!115971))))

(declare-fun tp!1244797 () Bool)

(declare-fun b_and!317081 () Bool)

(assert (=> b!4105185 (= tp!1244797 b_and!317081)))

(declare-fun b!4105190 () Bool)

(declare-fun b_free!115269 () Bool)

(declare-fun b_next!115973 () Bool)

(assert (=> b!4105190 (= b_free!115269 (not b_next!115973))))

(declare-fun tp!1244796 () Bool)

(declare-fun b_and!317083 () Bool)

(assert (=> b!4105190 (= tp!1244796 b_and!317083)))

(declare-fun b_free!115271 () Bool)

(declare-fun b_next!115975 () Bool)

(assert (=> b!4105190 (= b_free!115271 (not b_next!115975))))

(declare-fun tp!1244798 () Bool)

(declare-fun b_and!317085 () Bool)

(assert (=> b!4105190 (= tp!1244798 b_and!317085)))

(declare-fun e!2547644 () Bool)

(declare-fun e!2547646 () Bool)

(declare-fun tp!1244800 () Bool)

(declare-datatypes ((C!24348 0))(
  ( (C!24349 (val!14284 Int)) )
))
(declare-datatypes ((List!44304 0))(
  ( (Nil!44180) (Cons!44180 (h!49600 C!24348) (t!339961 List!44304)) )
))
(declare-datatypes ((IArray!26779 0))(
  ( (IArray!26780 (innerList!13447 List!44304)) )
))
(declare-datatypes ((Conc!13387 0))(
  ( (Node!13387 (left!33153 Conc!13387) (right!33483 Conc!13387) (csize!27004 Int) (cheight!13598 Int)) (Leaf!20690 (xs!16693 IArray!26779) (csize!27005 Int)) (Empty!13387) )
))
(declare-datatypes ((List!44305 0))(
  ( (Nil!44181) (Cons!44181 (h!49601 (_ BitVec 16)) (t!339962 List!44305)) )
))
(declare-datatypes ((Regex!12081 0))(
  ( (ElementMatch!12081 (c!706670 C!24348)) (Concat!19487 (regOne!24674 Regex!12081) (regTwo!24674 Regex!12081)) (EmptyExpr!12081) (Star!12081 (reg!12410 Regex!12081)) (EmptyLang!12081) (Union!12081 (regOne!24675 Regex!12081) (regTwo!24675 Regex!12081)) )
))
(declare-datatypes ((TokenValue!7406 0))(
  ( (FloatLiteralValue!14812 (text!52287 List!44305)) (TokenValueExt!7405 (__x!27029 Int)) (Broken!37030 (value!225109 List!44305)) (Object!7529) (End!7406) (Def!7406) (Underscore!7406) (Match!7406) (Else!7406) (Error!7406) (Case!7406) (If!7406) (Extends!7406) (Abstract!7406) (Class!7406) (Val!7406) (DelimiterValue!14812 (del!7466 List!44305)) (KeywordValue!7412 (value!225110 List!44305)) (CommentValue!14812 (value!225111 List!44305)) (WhitespaceValue!14812 (value!225112 List!44305)) (IndentationValue!7406 (value!225113 List!44305)) (String!50779) (Int32!7406) (Broken!37031 (value!225114 List!44305)) (Boolean!7407) (Unit!63656) (OperatorValue!7409 (op!7466 List!44305)) (IdentifierValue!14812 (value!225115 List!44305)) (IdentifierValue!14813 (value!225116 List!44305)) (WhitespaceValue!14813 (value!225117 List!44305)) (True!14812) (False!14812) (Broken!37032 (value!225118 List!44305)) (Broken!37033 (value!225119 List!44305)) (True!14813) (RightBrace!7406) (RightBracket!7406) (Colon!7406) (Null!7406) (Comma!7406) (LeftBracket!7406) (False!14813) (LeftBrace!7406) (ImaginaryLiteralValue!7406 (text!52288 List!44305)) (StringLiteralValue!22218 (value!225120 List!44305)) (EOFValue!7406 (value!225121 List!44305)) (IdentValue!7406 (value!225122 List!44305)) (DelimiterValue!14813 (value!225123 List!44305)) (DedentValue!7406 (value!225124 List!44305)) (NewLineValue!7406 (value!225125 List!44305)) (IntegerValue!22218 (value!225126 (_ BitVec 32)) (text!52289 List!44305)) (IntegerValue!22219 (value!225127 Int) (text!52290 List!44305)) (Times!7406) (Or!7406) (Equal!7406) (Minus!7406) (Broken!37034 (value!225128 List!44305)) (And!7406) (Div!7406) (LessEqual!7406) (Mod!7406) (Concat!19488) (Not!7406) (Plus!7406) (SpaceValue!7406 (value!225129 List!44305)) (IntegerValue!22220 (value!225130 Int) (text!52291 List!44305)) (StringLiteralValue!22219 (text!52292 List!44305)) (FloatLiteralValue!14813 (text!52293 List!44305)) (BytesLiteralValue!7406 (value!225131 List!44305)) (CommentValue!14813 (value!225132 List!44305)) (StringLiteralValue!22220 (value!225133 List!44305)) (ErrorTokenValue!7406 (msg!7467 List!44305)) )
))
(declare-datatypes ((BalanceConc!26368 0))(
  ( (BalanceConc!26369 (c!706671 Conc!13387)) )
))
(declare-datatypes ((TokenValueInjection!14240 0))(
  ( (TokenValueInjection!14241 (toValue!9796 Int) (toChars!9655 Int)) )
))
(declare-datatypes ((String!50780 0))(
  ( (String!50781 (value!225134 String)) )
))
(declare-datatypes ((Rule!14152 0))(
  ( (Rule!14153 (regex!7176 Regex!12081) (tag!8036 String!50780) (isSeparator!7176 Bool) (transformation!7176 TokenValueInjection!14240)) )
))
(declare-datatypes ((List!44306 0))(
  ( (Nil!44182) (Cons!44182 (h!49602 Rule!14152) (t!339963 List!44306)) )
))
(declare-fun rTail!27 () List!44306)

(declare-fun b!4105181 () Bool)

(declare-fun inv!58843 (String!50780) Bool)

(declare-fun inv!58845 (TokenValueInjection!14240) Bool)

(assert (=> b!4105181 (= e!2547646 (and tp!1244800 (inv!58843 (tag!8036 (h!49602 rTail!27))) (inv!58845 (transformation!7176 (h!49602 rTail!27))) e!2547644))))

(declare-fun b!4105182 () Bool)

(declare-fun e!2547651 () Bool)

(declare-fun e!2547649 () Bool)

(assert (=> b!4105182 (= e!2547651 e!2547649)))

(declare-fun res!1678152 () Bool)

(assert (=> b!4105182 (=> res!1678152 e!2547649)))

(declare-datatypes ((List!44307 0))(
  ( (Nil!44183) (Cons!44183 (h!49603 String!50780) (t!339964 List!44307)) )
))
(declare-fun lt!1467507 () List!44307)

(declare-fun subseq!547 (List!44307 List!44307) Bool)

(assert (=> b!4105182 (= res!1678152 (not (subseq!547 Nil!44183 lt!1467507)))))

(assert (=> b!4105182 (= lt!1467507 (Cons!44183 (tag!8036 (h!49602 rTail!27)) Nil!44183))))

(declare-fun b!4105183 () Bool)

(declare-fun e!2547648 () Bool)

(declare-fun e!2547645 () Bool)

(assert (=> b!4105183 (= e!2547648 e!2547645)))

(declare-fun res!1678151 () Bool)

(assert (=> b!4105183 (=> (not res!1678151) (not e!2547645))))

(declare-datatypes ((LexerInterface!6765 0))(
  ( (LexerInterfaceExt!6762 (__x!27030 Int)) (Lexer!6763) )
))
(declare-fun thiss!26455 () LexerInterface!6765)

(declare-fun lt!1467509 () List!44306)

(declare-fun rulesInvariant!6108 (LexerInterface!6765 List!44306) Bool)

(assert (=> b!4105183 (= res!1678151 (rulesInvariant!6108 thiss!26455 lt!1467509))))

(declare-fun rHead!24 () Rule!14152)

(assert (=> b!4105183 (= lt!1467509 (Cons!44182 rHead!24 rTail!27))))

(declare-fun lt!1467508 () List!44306)

(declare-fun b!4105184 () Bool)

(declare-fun noDuplicateTag!2853 (LexerInterface!6765 List!44306 List!44307) Bool)

(assert (=> b!4105184 (= e!2547649 (noDuplicateTag!2853 thiss!26455 lt!1467508 lt!1467507))))

(assert (=> b!4105185 (= e!2547644 (and tp!1244794 tp!1244797))))

(declare-fun res!1678156 () Bool)

(assert (=> start!389108 (=> (not res!1678156) (not e!2547648))))

(get-info :version)

(assert (=> start!389108 (= res!1678156 ((_ is Lexer!6763) thiss!26455))))

(assert (=> start!389108 e!2547648))

(assert (=> start!389108 true))

(declare-fun e!2547643 () Bool)

(assert (=> start!389108 e!2547643))

(declare-fun e!2547652 () Bool)

(assert (=> start!389108 e!2547652))

(declare-fun b!4105186 () Bool)

(declare-fun res!1678155 () Bool)

(assert (=> b!4105186 (=> (not res!1678155) (not e!2547648))))

(declare-fun isEmpty!26387 (List!44306) Bool)

(assert (=> b!4105186 (= res!1678155 (not (isEmpty!26387 rTail!27)))))

(declare-fun b!4105187 () Bool)

(declare-fun tp!1244795 () Bool)

(assert (=> b!4105187 (= e!2547643 (and e!2547646 tp!1244795))))

(declare-fun b!4105188 () Bool)

(assert (=> b!4105188 (= e!2547645 (not e!2547651))))

(declare-fun res!1678153 () Bool)

(assert (=> b!4105188 (=> res!1678153 e!2547651)))

(assert (=> b!4105188 (= res!1678153 (isEmpty!26387 (t!339963 rTail!27)))))

(assert (=> b!4105188 (not (= (tag!8036 rHead!24) (tag!8036 (h!49602 rTail!27))))))

(declare-datatypes ((Unit!63657 0))(
  ( (Unit!63658) )
))
(declare-fun lt!1467506 () Unit!63657)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!36 (LexerInterface!6765 List!44306 Rule!14152 Rule!14152) Unit!63657)

(assert (=> b!4105188 (= lt!1467506 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!36 thiss!26455 lt!1467509 rHead!24 (h!49602 rTail!27)))))

(assert (=> b!4105188 (noDuplicateTag!2853 thiss!26455 (Cons!44182 (h!49602 rTail!27) lt!1467508) Nil!44183)))

(assert (=> b!4105188 (= lt!1467508 (Cons!44182 rHead!24 (t!339963 rTail!27)))))

(declare-fun lt!1467505 () Unit!63657)

(declare-fun lemmaNoDuplicateCanReorder!48 (LexerInterface!6765 Rule!14152 Rule!14152 List!44306) Unit!63657)

(assert (=> b!4105188 (= lt!1467505 (lemmaNoDuplicateCanReorder!48 thiss!26455 rHead!24 (h!49602 rTail!27) (t!339963 rTail!27)))))

(declare-fun b!4105189 () Bool)

(declare-fun res!1678154 () Bool)

(assert (=> b!4105189 (=> (not res!1678154) (not e!2547645))))

(assert (=> b!4105189 (= res!1678154 ((_ is Cons!44182) rTail!27))))

(declare-fun e!2547650 () Bool)

(assert (=> b!4105190 (= e!2547650 (and tp!1244796 tp!1244798))))

(declare-fun b!4105191 () Bool)

(declare-fun tp!1244799 () Bool)

(assert (=> b!4105191 (= e!2547652 (and tp!1244799 (inv!58843 (tag!8036 rHead!24)) (inv!58845 (transformation!7176 rHead!24)) e!2547650))))

(assert (= (and start!389108 res!1678156) b!4105186))

(assert (= (and b!4105186 res!1678155) b!4105183))

(assert (= (and b!4105183 res!1678151) b!4105189))

(assert (= (and b!4105189 res!1678154) b!4105188))

(assert (= (and b!4105188 (not res!1678153)) b!4105182))

(assert (= (and b!4105182 (not res!1678152)) b!4105184))

(assert (= b!4105181 b!4105185))

(assert (= b!4105187 b!4105181))

(assert (= (and start!389108 ((_ is Cons!44182) rTail!27)) b!4105187))

(assert (= b!4105191 b!4105190))

(assert (= start!389108 b!4105191))

(declare-fun m!4710233 () Bool)

(assert (=> b!4105188 m!4710233))

(declare-fun m!4710235 () Bool)

(assert (=> b!4105188 m!4710235))

(declare-fun m!4710237 () Bool)

(assert (=> b!4105188 m!4710237))

(declare-fun m!4710239 () Bool)

(assert (=> b!4105188 m!4710239))

(declare-fun m!4710241 () Bool)

(assert (=> b!4105186 m!4710241))

(declare-fun m!4710243 () Bool)

(assert (=> b!4105182 m!4710243))

(declare-fun m!4710245 () Bool)

(assert (=> b!4105184 m!4710245))

(declare-fun m!4710247 () Bool)

(assert (=> b!4105183 m!4710247))

(declare-fun m!4710249 () Bool)

(assert (=> b!4105181 m!4710249))

(declare-fun m!4710251 () Bool)

(assert (=> b!4105181 m!4710251))

(declare-fun m!4710253 () Bool)

(assert (=> b!4105191 m!4710253))

(declare-fun m!4710255 () Bool)

(assert (=> b!4105191 m!4710255))

(check-sat b_and!317081 (not b_next!115969) b_and!317079 (not b!4105181) b_and!317085 (not b_next!115971) (not b!4105188) (not b!4105184) (not b!4105186) (not b!4105182) (not b!4105187) b_and!317083 (not b_next!115975) (not b!4105183) (not b_next!115973) (not b!4105191))
(check-sat b_and!317081 (not b_next!115969) b_and!317079 b_and!317085 (not b_next!115971) (not b_next!115973) b_and!317083 (not b_next!115975))
(get-model)

(declare-fun d!1218537 () Bool)

(declare-fun res!1678191 () Bool)

(declare-fun e!2547683 () Bool)

(assert (=> d!1218537 (=> res!1678191 e!2547683)))

(assert (=> d!1218537 (= res!1678191 ((_ is Nil!44183) Nil!44183))))

(assert (=> d!1218537 (= (subseq!547 Nil!44183 lt!1467507) e!2547683)))

(declare-fun b!4105221 () Bool)

(declare-fun e!2547682 () Bool)

(assert (=> b!4105221 (= e!2547682 (subseq!547 Nil!44183 (t!339964 lt!1467507)))))

(declare-fun b!4105219 () Bool)

(declare-fun e!2547681 () Bool)

(assert (=> b!4105219 (= e!2547681 e!2547682)))

(declare-fun res!1678190 () Bool)

(assert (=> b!4105219 (=> res!1678190 e!2547682)))

(declare-fun e!2547680 () Bool)

(assert (=> b!4105219 (= res!1678190 e!2547680)))

(declare-fun res!1678193 () Bool)

(assert (=> b!4105219 (=> (not res!1678193) (not e!2547680))))

(assert (=> b!4105219 (= res!1678193 (= (h!49603 Nil!44183) (h!49603 lt!1467507)))))

(declare-fun b!4105218 () Bool)

(assert (=> b!4105218 (= e!2547683 e!2547681)))

(declare-fun res!1678192 () Bool)

(assert (=> b!4105218 (=> (not res!1678192) (not e!2547681))))

(assert (=> b!4105218 (= res!1678192 ((_ is Cons!44183) lt!1467507))))

(declare-fun b!4105220 () Bool)

(assert (=> b!4105220 (= e!2547680 (subseq!547 (t!339964 Nil!44183) (t!339964 lt!1467507)))))

(assert (= (and d!1218537 (not res!1678191)) b!4105218))

(assert (= (and b!4105218 res!1678192) b!4105219))

(assert (= (and b!4105219 res!1678193) b!4105220))

(assert (= (and b!4105219 (not res!1678190)) b!4105221))

(declare-fun m!4710273 () Bool)

(assert (=> b!4105221 m!4710273))

(declare-fun m!4710275 () Bool)

(assert (=> b!4105220 m!4710275))

(assert (=> b!4105182 d!1218537))

(declare-fun d!1218549 () Bool)

(assert (=> d!1218549 (= (inv!58843 (tag!8036 (h!49602 rTail!27))) (= (mod (str.len (value!225134 (tag!8036 (h!49602 rTail!27)))) 2) 0))))

(assert (=> b!4105181 d!1218549))

(declare-fun d!1218551 () Bool)

(declare-fun res!1678203 () Bool)

(declare-fun e!2547693 () Bool)

(assert (=> d!1218551 (=> (not res!1678203) (not e!2547693))))

(declare-fun semiInverseModEq!3089 (Int Int) Bool)

(assert (=> d!1218551 (= res!1678203 (semiInverseModEq!3089 (toChars!9655 (transformation!7176 (h!49602 rTail!27))) (toValue!9796 (transformation!7176 (h!49602 rTail!27)))))))

(assert (=> d!1218551 (= (inv!58845 (transformation!7176 (h!49602 rTail!27))) e!2547693)))

(declare-fun b!4105231 () Bool)

(declare-fun equivClasses!2988 (Int Int) Bool)

(assert (=> b!4105231 (= e!2547693 (equivClasses!2988 (toChars!9655 (transformation!7176 (h!49602 rTail!27))) (toValue!9796 (transformation!7176 (h!49602 rTail!27)))))))

(assert (= (and d!1218551 res!1678203) b!4105231))

(declare-fun m!4710281 () Bool)

(assert (=> d!1218551 m!4710281))

(declare-fun m!4710283 () Bool)

(assert (=> b!4105231 m!4710283))

(assert (=> b!4105181 d!1218551))

(declare-fun d!1218557 () Bool)

(declare-fun res!1678208 () Bool)

(declare-fun e!2547698 () Bool)

(assert (=> d!1218557 (=> (not res!1678208) (not e!2547698))))

(declare-fun rulesValid!2824 (LexerInterface!6765 List!44306) Bool)

(assert (=> d!1218557 (= res!1678208 (rulesValid!2824 thiss!26455 lt!1467509))))

(assert (=> d!1218557 (= (rulesInvariant!6108 thiss!26455 lt!1467509) e!2547698)))

(declare-fun b!4105236 () Bool)

(assert (=> b!4105236 (= e!2547698 (noDuplicateTag!2853 thiss!26455 lt!1467509 Nil!44183))))

(assert (= (and d!1218557 res!1678208) b!4105236))

(declare-fun m!4710293 () Bool)

(assert (=> d!1218557 m!4710293))

(declare-fun m!4710295 () Bool)

(assert (=> b!4105236 m!4710295))

(assert (=> b!4105183 d!1218557))

(declare-fun d!1218563 () Bool)

(assert (=> d!1218563 (= (isEmpty!26387 (t!339963 rTail!27)) ((_ is Nil!44182) (t!339963 rTail!27)))))

(assert (=> b!4105188 d!1218563))

(declare-fun d!1218565 () Bool)

(assert (=> d!1218565 (not (= (tag!8036 rHead!24) (tag!8036 (h!49602 rTail!27))))))

(declare-fun lt!1467518 () Unit!63657)

(declare-fun choose!25101 (LexerInterface!6765 List!44306 Rule!14152 Rule!14152) Unit!63657)

(assert (=> d!1218565 (= lt!1467518 (choose!25101 thiss!26455 lt!1467509 rHead!24 (h!49602 rTail!27)))))

(declare-fun contains!8855 (List!44306 Rule!14152) Bool)

(assert (=> d!1218565 (contains!8855 lt!1467509 rHead!24)))

(assert (=> d!1218565 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!36 thiss!26455 lt!1467509 rHead!24 (h!49602 rTail!27)) lt!1467518)))

(declare-fun bs!594049 () Bool)

(assert (= bs!594049 d!1218565))

(declare-fun m!4710303 () Bool)

(assert (=> bs!594049 m!4710303))

(declare-fun m!4710305 () Bool)

(assert (=> bs!594049 m!4710305))

(assert (=> b!4105188 d!1218565))

(declare-fun d!1218567 () Bool)

(declare-fun res!1678213 () Bool)

(declare-fun e!2547714 () Bool)

(assert (=> d!1218567 (=> res!1678213 e!2547714)))

(assert (=> d!1218567 (= res!1678213 ((_ is Nil!44182) (Cons!44182 (h!49602 rTail!27) lt!1467508)))))

(assert (=> d!1218567 (= (noDuplicateTag!2853 thiss!26455 (Cons!44182 (h!49602 rTail!27) lt!1467508) Nil!44183) e!2547714)))

(declare-fun b!4105263 () Bool)

(declare-fun e!2547715 () Bool)

(assert (=> b!4105263 (= e!2547714 e!2547715)))

(declare-fun res!1678214 () Bool)

(assert (=> b!4105263 (=> (not res!1678214) (not e!2547715))))

(declare-fun contains!8856 (List!44307 String!50780) Bool)

(assert (=> b!4105263 (= res!1678214 (not (contains!8856 Nil!44183 (tag!8036 (h!49602 (Cons!44182 (h!49602 rTail!27) lt!1467508))))))))

(declare-fun b!4105264 () Bool)

(assert (=> b!4105264 (= e!2547715 (noDuplicateTag!2853 thiss!26455 (t!339963 (Cons!44182 (h!49602 rTail!27) lt!1467508)) (Cons!44183 (tag!8036 (h!49602 (Cons!44182 (h!49602 rTail!27) lt!1467508))) Nil!44183)))))

(assert (= (and d!1218567 (not res!1678213)) b!4105263))

(assert (= (and b!4105263 res!1678214) b!4105264))

(declare-fun m!4710307 () Bool)

(assert (=> b!4105263 m!4710307))

(declare-fun m!4710309 () Bool)

(assert (=> b!4105264 m!4710309))

(assert (=> b!4105188 d!1218567))

(declare-fun d!1218569 () Bool)

(assert (=> d!1218569 (noDuplicateTag!2853 thiss!26455 (Cons!44182 (h!49602 rTail!27) (Cons!44182 rHead!24 (t!339963 rTail!27))) Nil!44183)))

(declare-fun lt!1467521 () Unit!63657)

(declare-fun choose!25103 (LexerInterface!6765 Rule!14152 Rule!14152 List!44306) Unit!63657)

(assert (=> d!1218569 (= lt!1467521 (choose!25103 thiss!26455 rHead!24 (h!49602 rTail!27) (t!339963 rTail!27)))))

(assert (=> d!1218569 (noDuplicateTag!2853 thiss!26455 (Cons!44182 rHead!24 (Cons!44182 (h!49602 rTail!27) (t!339963 rTail!27))) Nil!44183)))

(assert (=> d!1218569 (= (lemmaNoDuplicateCanReorder!48 thiss!26455 rHead!24 (h!49602 rTail!27) (t!339963 rTail!27)) lt!1467521)))

(declare-fun bs!594050 () Bool)

(assert (= bs!594050 d!1218569))

(declare-fun m!4710315 () Bool)

(assert (=> bs!594050 m!4710315))

(declare-fun m!4710317 () Bool)

(assert (=> bs!594050 m!4710317))

(declare-fun m!4710319 () Bool)

(assert (=> bs!594050 m!4710319))

(assert (=> b!4105188 d!1218569))

(declare-fun d!1218571 () Bool)

(declare-fun res!1678215 () Bool)

(declare-fun e!2547721 () Bool)

(assert (=> d!1218571 (=> res!1678215 e!2547721)))

(assert (=> d!1218571 (= res!1678215 ((_ is Nil!44182) lt!1467508))))

(assert (=> d!1218571 (= (noDuplicateTag!2853 thiss!26455 lt!1467508 lt!1467507) e!2547721)))

(declare-fun b!4105272 () Bool)

(declare-fun e!2547722 () Bool)

(assert (=> b!4105272 (= e!2547721 e!2547722)))

(declare-fun res!1678216 () Bool)

(assert (=> b!4105272 (=> (not res!1678216) (not e!2547722))))

(assert (=> b!4105272 (= res!1678216 (not (contains!8856 lt!1467507 (tag!8036 (h!49602 lt!1467508)))))))

(declare-fun b!4105273 () Bool)

(assert (=> b!4105273 (= e!2547722 (noDuplicateTag!2853 thiss!26455 (t!339963 lt!1467508) (Cons!44183 (tag!8036 (h!49602 lt!1467508)) lt!1467507)))))

(assert (= (and d!1218571 (not res!1678215)) b!4105272))

(assert (= (and b!4105272 res!1678216) b!4105273))

(declare-fun m!4710321 () Bool)

(assert (=> b!4105272 m!4710321))

(declare-fun m!4710323 () Bool)

(assert (=> b!4105273 m!4710323))

(assert (=> b!4105184 d!1218571))

(declare-fun d!1218573 () Bool)

(assert (=> d!1218573 (= (inv!58843 (tag!8036 rHead!24)) (= (mod (str.len (value!225134 (tag!8036 rHead!24))) 2) 0))))

(assert (=> b!4105191 d!1218573))

(declare-fun d!1218575 () Bool)

(declare-fun res!1678217 () Bool)

(declare-fun e!2547723 () Bool)

(assert (=> d!1218575 (=> (not res!1678217) (not e!2547723))))

(assert (=> d!1218575 (= res!1678217 (semiInverseModEq!3089 (toChars!9655 (transformation!7176 rHead!24)) (toValue!9796 (transformation!7176 rHead!24))))))

(assert (=> d!1218575 (= (inv!58845 (transformation!7176 rHead!24)) e!2547723)))

(declare-fun b!4105274 () Bool)

(assert (=> b!4105274 (= e!2547723 (equivClasses!2988 (toChars!9655 (transformation!7176 rHead!24)) (toValue!9796 (transformation!7176 rHead!24))))))

(assert (= (and d!1218575 res!1678217) b!4105274))

(declare-fun m!4710325 () Bool)

(assert (=> d!1218575 m!4710325))

(declare-fun m!4710327 () Bool)

(assert (=> b!4105274 m!4710327))

(assert (=> b!4105191 d!1218575))

(declare-fun d!1218577 () Bool)

(assert (=> d!1218577 (= (isEmpty!26387 rTail!27) ((_ is Nil!44182) rTail!27))))

(assert (=> b!4105186 d!1218577))

(declare-fun b!4105285 () Bool)

(declare-fun b_free!115277 () Bool)

(declare-fun b_next!115981 () Bool)

(assert (=> b!4105285 (= b_free!115277 (not b_next!115981))))

(declare-fun tp!1244841 () Bool)

(declare-fun b_and!317091 () Bool)

(assert (=> b!4105285 (= tp!1244841 b_and!317091)))

(declare-fun b_free!115279 () Bool)

(declare-fun b_next!115983 () Bool)

(assert (=> b!4105285 (= b_free!115279 (not b_next!115983))))

(declare-fun tp!1244844 () Bool)

(declare-fun b_and!317093 () Bool)

(assert (=> b!4105285 (= tp!1244844 b_and!317093)))

(declare-fun e!2547733 () Bool)

(assert (=> b!4105285 (= e!2547733 (and tp!1244841 tp!1244844))))

(declare-fun e!2547735 () Bool)

(declare-fun b!4105284 () Bool)

(declare-fun tp!1244842 () Bool)

(assert (=> b!4105284 (= e!2547735 (and tp!1244842 (inv!58843 (tag!8036 (h!49602 (t!339963 rTail!27)))) (inv!58845 (transformation!7176 (h!49602 (t!339963 rTail!27)))) e!2547733))))

(declare-fun b!4105283 () Bool)

(declare-fun e!2547734 () Bool)

(declare-fun tp!1244843 () Bool)

(assert (=> b!4105283 (= e!2547734 (and e!2547735 tp!1244843))))

(assert (=> b!4105187 (= tp!1244795 e!2547734)))

(assert (= b!4105284 b!4105285))

(assert (= b!4105283 b!4105284))

(assert (= (and b!4105187 ((_ is Cons!44182) (t!339963 rTail!27))) b!4105283))

(declare-fun m!4710329 () Bool)

(assert (=> b!4105284 m!4710329))

(declare-fun m!4710331 () Bool)

(assert (=> b!4105284 m!4710331))

(declare-fun b!4105297 () Bool)

(declare-fun e!2547738 () Bool)

(declare-fun tp!1244856 () Bool)

(declare-fun tp!1244858 () Bool)

(assert (=> b!4105297 (= e!2547738 (and tp!1244856 tp!1244858))))

(declare-fun b!4105299 () Bool)

(declare-fun tp!1244857 () Bool)

(declare-fun tp!1244859 () Bool)

(assert (=> b!4105299 (= e!2547738 (and tp!1244857 tp!1244859))))

(declare-fun b!4105298 () Bool)

(declare-fun tp!1244855 () Bool)

(assert (=> b!4105298 (= e!2547738 tp!1244855)))

(declare-fun b!4105296 () Bool)

(declare-fun tp_is_empty!21133 () Bool)

(assert (=> b!4105296 (= e!2547738 tp_is_empty!21133)))

(assert (=> b!4105181 (= tp!1244800 e!2547738)))

(assert (= (and b!4105181 ((_ is ElementMatch!12081) (regex!7176 (h!49602 rTail!27)))) b!4105296))

(assert (= (and b!4105181 ((_ is Concat!19487) (regex!7176 (h!49602 rTail!27)))) b!4105297))

(assert (= (and b!4105181 ((_ is Star!12081) (regex!7176 (h!49602 rTail!27)))) b!4105298))

(assert (= (and b!4105181 ((_ is Union!12081) (regex!7176 (h!49602 rTail!27)))) b!4105299))

(declare-fun b!4105301 () Bool)

(declare-fun e!2547739 () Bool)

(declare-fun tp!1244861 () Bool)

(declare-fun tp!1244863 () Bool)

(assert (=> b!4105301 (= e!2547739 (and tp!1244861 tp!1244863))))

(declare-fun b!4105303 () Bool)

(declare-fun tp!1244862 () Bool)

(declare-fun tp!1244864 () Bool)

(assert (=> b!4105303 (= e!2547739 (and tp!1244862 tp!1244864))))

(declare-fun b!4105302 () Bool)

(declare-fun tp!1244860 () Bool)

(assert (=> b!4105302 (= e!2547739 tp!1244860)))

(declare-fun b!4105300 () Bool)

(assert (=> b!4105300 (= e!2547739 tp_is_empty!21133)))

(assert (=> b!4105191 (= tp!1244799 e!2547739)))

(assert (= (and b!4105191 ((_ is ElementMatch!12081) (regex!7176 rHead!24))) b!4105300))

(assert (= (and b!4105191 ((_ is Concat!19487) (regex!7176 rHead!24))) b!4105301))

(assert (= (and b!4105191 ((_ is Star!12081) (regex!7176 rHead!24))) b!4105302))

(assert (= (and b!4105191 ((_ is Union!12081) (regex!7176 rHead!24))) b!4105303))

(check-sat b_and!317079 (not b_next!115971) (not b!4105298) (not d!1218551) (not d!1218557) (not b!4105264) (not b!4105236) b_and!317081 (not b!4105273) (not b_next!115969) (not b!4105263) (not b!4105220) b_and!317083 (not d!1218565) (not b_next!115975) (not b!4105231) (not b_next!115983) tp_is_empty!21133 (not b_next!115981) (not b!4105299) b_and!317085 (not b!4105283) (not b!4105284) (not d!1218569) (not b!4105301) (not b!4105302) (not b!4105272) (not b_next!115973) (not b!4105303) (not b!4105274) (not d!1218575) b_and!317091 b_and!317093 (not b!4105221) (not b!4105297))
(check-sat b_and!317081 (not b_next!115969) b_and!317079 (not b_next!115983) (not b_next!115971) (not b_next!115973) b_and!317083 (not b_next!115975) (not b_next!115981) b_and!317085 b_and!317091 b_and!317093)
