; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!389072 () Bool)

(assert start!389072)

(declare-fun b!4105015 () Bool)

(declare-fun b_free!115241 () Bool)

(declare-fun b_next!115945 () Bool)

(assert (=> b!4105015 (= b_free!115241 (not b_next!115945))))

(declare-fun tp!1244693 () Bool)

(declare-fun b_and!317055 () Bool)

(assert (=> b!4105015 (= tp!1244693 b_and!317055)))

(declare-fun b_free!115243 () Bool)

(declare-fun b_next!115947 () Bool)

(assert (=> b!4105015 (= b_free!115243 (not b_next!115947))))

(declare-fun tp!1244688 () Bool)

(declare-fun b_and!317057 () Bool)

(assert (=> b!4105015 (= tp!1244688 b_and!317057)))

(declare-fun b!4105016 () Bool)

(declare-fun b_free!115245 () Bool)

(declare-fun b_next!115949 () Bool)

(assert (=> b!4105016 (= b_free!115245 (not b_next!115949))))

(declare-fun tp!1244694 () Bool)

(declare-fun b_and!317059 () Bool)

(assert (=> b!4105016 (= tp!1244694 b_and!317059)))

(declare-fun b_free!115247 () Bool)

(declare-fun b_next!115951 () Bool)

(assert (=> b!4105016 (= b_free!115247 (not b_next!115951))))

(declare-fun tp!1244689 () Bool)

(declare-fun b_and!317061 () Bool)

(assert (=> b!4105016 (= tp!1244689 b_and!317061)))

(declare-fun b!4105008 () Bool)

(declare-fun e!2547503 () Bool)

(declare-fun e!2547500 () Bool)

(declare-fun tp!1244690 () Bool)

(assert (=> b!4105008 (= e!2547503 (and e!2547500 tp!1244690))))

(declare-fun b!4105009 () Bool)

(declare-fun e!2547499 () Bool)

(declare-fun e!2547504 () Bool)

(declare-datatypes ((C!24344 0))(
  ( (C!24345 (val!14282 Int)) )
))
(declare-datatypes ((List!44296 0))(
  ( (Nil!44172) (Cons!44172 (h!49592 C!24344) (t!339953 List!44296)) )
))
(declare-datatypes ((IArray!26775 0))(
  ( (IArray!26776 (innerList!13445 List!44296)) )
))
(declare-datatypes ((Conc!13385 0))(
  ( (Node!13385 (left!33150 Conc!13385) (right!33480 Conc!13385) (csize!27000 Int) (cheight!13596 Int)) (Leaf!20687 (xs!16691 IArray!26775) (csize!27001 Int)) (Empty!13385) )
))
(declare-datatypes ((List!44297 0))(
  ( (Nil!44173) (Cons!44173 (h!49593 (_ BitVec 16)) (t!339954 List!44297)) )
))
(declare-datatypes ((String!50769 0))(
  ( (String!50770 (value!225054 String)) )
))
(declare-datatypes ((Regex!12079 0))(
  ( (ElementMatch!12079 (c!706666 C!24344)) (Concat!19483 (regOne!24670 Regex!12079) (regTwo!24670 Regex!12079)) (EmptyExpr!12079) (Star!12079 (reg!12408 Regex!12079)) (EmptyLang!12079) (Union!12079 (regOne!24671 Regex!12079) (regTwo!24671 Regex!12079)) )
))
(declare-datatypes ((TokenValue!7404 0))(
  ( (FloatLiteralValue!14808 (text!52273 List!44297)) (TokenValueExt!7403 (__x!27025 Int)) (Broken!37020 (value!225055 List!44297)) (Object!7527) (End!7404) (Def!7404) (Underscore!7404) (Match!7404) (Else!7404) (Error!7404) (Case!7404) (If!7404) (Extends!7404) (Abstract!7404) (Class!7404) (Val!7404) (DelimiterValue!14808 (del!7464 List!44297)) (KeywordValue!7410 (value!225056 List!44297)) (CommentValue!14808 (value!225057 List!44297)) (WhitespaceValue!14808 (value!225058 List!44297)) (IndentationValue!7404 (value!225059 List!44297)) (String!50771) (Int32!7404) (Broken!37021 (value!225060 List!44297)) (Boolean!7405) (Unit!63650) (OperatorValue!7407 (op!7464 List!44297)) (IdentifierValue!14808 (value!225061 List!44297)) (IdentifierValue!14809 (value!225062 List!44297)) (WhitespaceValue!14809 (value!225063 List!44297)) (True!14808) (False!14808) (Broken!37022 (value!225064 List!44297)) (Broken!37023 (value!225065 List!44297)) (True!14809) (RightBrace!7404) (RightBracket!7404) (Colon!7404) (Null!7404) (Comma!7404) (LeftBracket!7404) (False!14809) (LeftBrace!7404) (ImaginaryLiteralValue!7404 (text!52274 List!44297)) (StringLiteralValue!22212 (value!225066 List!44297)) (EOFValue!7404 (value!225067 List!44297)) (IdentValue!7404 (value!225068 List!44297)) (DelimiterValue!14809 (value!225069 List!44297)) (DedentValue!7404 (value!225070 List!44297)) (NewLineValue!7404 (value!225071 List!44297)) (IntegerValue!22212 (value!225072 (_ BitVec 32)) (text!52275 List!44297)) (IntegerValue!22213 (value!225073 Int) (text!52276 List!44297)) (Times!7404) (Or!7404) (Equal!7404) (Minus!7404) (Broken!37024 (value!225074 List!44297)) (And!7404) (Div!7404) (LessEqual!7404) (Mod!7404) (Concat!19484) (Not!7404) (Plus!7404) (SpaceValue!7404 (value!225075 List!44297)) (IntegerValue!22214 (value!225076 Int) (text!52277 List!44297)) (StringLiteralValue!22213 (text!52278 List!44297)) (FloatLiteralValue!14809 (text!52279 List!44297)) (BytesLiteralValue!7404 (value!225077 List!44297)) (CommentValue!14809 (value!225078 List!44297)) (StringLiteralValue!22214 (value!225079 List!44297)) (ErrorTokenValue!7404 (msg!7465 List!44297)) )
))
(declare-datatypes ((BalanceConc!26364 0))(
  ( (BalanceConc!26365 (c!706667 Conc!13385)) )
))
(declare-datatypes ((TokenValueInjection!14236 0))(
  ( (TokenValueInjection!14237 (toValue!9794 Int) (toChars!9653 Int)) )
))
(declare-datatypes ((Rule!14148 0))(
  ( (Rule!14149 (regex!7174 Regex!12079) (tag!8034 String!50769) (isSeparator!7174 Bool) (transformation!7174 TokenValueInjection!14236)) )
))
(declare-fun rHead!24 () Rule!14148)

(declare-fun tp!1244692 () Bool)

(declare-fun inv!58838 (String!50769) Bool)

(declare-fun inv!58840 (TokenValueInjection!14236) Bool)

(assert (=> b!4105009 (= e!2547504 (and tp!1244692 (inv!58838 (tag!8034 rHead!24)) (inv!58840 (transformation!7174 rHead!24)) e!2547499))))

(declare-fun b!4105010 () Bool)

(declare-fun res!1678060 () Bool)

(declare-fun e!2547496 () Bool)

(assert (=> b!4105010 (=> (not res!1678060) (not e!2547496))))

(declare-datatypes ((List!44298 0))(
  ( (Nil!44174) (Cons!44174 (h!49594 Rule!14148) (t!339955 List!44298)) )
))
(declare-fun rTail!27 () List!44298)

(get-info :version)

(assert (=> b!4105010 (= res!1678060 ((_ is Cons!44174) rTail!27))))

(declare-fun b!4105011 () Bool)

(declare-fun e!2547498 () Bool)

(assert (=> b!4105011 (= e!2547496 (not e!2547498))))

(declare-fun res!1678062 () Bool)

(assert (=> b!4105011 (=> res!1678062 e!2547498)))

(declare-fun isEmpty!26385 (List!44298) Bool)

(assert (=> b!4105011 (= res!1678062 (isEmpty!26385 (t!339955 rTail!27)))))

(assert (=> b!4105011 (not (= (tag!8034 rHead!24) (tag!8034 (h!49594 rTail!27))))))

(declare-datatypes ((LexerInterface!6763 0))(
  ( (LexerInterfaceExt!6760 (__x!27026 Int)) (Lexer!6761) )
))
(declare-fun thiss!26455 () LexerInterface!6763)

(declare-fun lt!1467467 () List!44298)

(declare-datatypes ((Unit!63651 0))(
  ( (Unit!63652) )
))
(declare-fun lt!1467465 () Unit!63651)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!34 (LexerInterface!6763 List!44298 Rule!14148 Rule!14148) Unit!63651)

(assert (=> b!4105011 (= lt!1467465 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!34 thiss!26455 lt!1467467 rHead!24 (h!49594 rTail!27)))))

(declare-datatypes ((List!44299 0))(
  ( (Nil!44175) (Cons!44175 (h!49595 String!50769) (t!339956 List!44299)) )
))
(declare-fun noDuplicateTag!2851 (LexerInterface!6763 List!44298 List!44299) Bool)

(assert (=> b!4105011 (noDuplicateTag!2851 thiss!26455 (Cons!44174 (h!49594 rTail!27) (Cons!44174 rHead!24 (t!339955 rTail!27))) Nil!44175)))

(declare-fun lt!1467466 () Unit!63651)

(declare-fun lemmaNoDuplicateCanReorder!46 (LexerInterface!6763 Rule!14148 Rule!14148 List!44298) Unit!63651)

(assert (=> b!4105011 (= lt!1467466 (lemmaNoDuplicateCanReorder!46 thiss!26455 rHead!24 (h!49594 rTail!27) (t!339955 rTail!27)))))

(declare-fun b!4105012 () Bool)

(declare-fun res!1678061 () Bool)

(declare-fun e!2547501 () Bool)

(assert (=> b!4105012 (=> (not res!1678061) (not e!2547501))))

(assert (=> b!4105012 (= res!1678061 (not (isEmpty!26385 rTail!27)))))

(declare-fun b!4105013 () Bool)

(declare-fun subseq!545 (List!44299 List!44299) Bool)

(assert (=> b!4105013 (= e!2547498 (subseq!545 Nil!44175 (Cons!44175 (tag!8034 (h!49594 rTail!27)) Nil!44175)))))

(declare-fun res!1678059 () Bool)

(assert (=> start!389072 (=> (not res!1678059) (not e!2547501))))

(assert (=> start!389072 (= res!1678059 ((_ is Lexer!6761) thiss!26455))))

(assert (=> start!389072 e!2547501))

(assert (=> start!389072 true))

(assert (=> start!389072 e!2547503))

(assert (=> start!389072 e!2547504))

(declare-fun b!4105014 () Bool)

(assert (=> b!4105014 (= e!2547501 e!2547496)))

(declare-fun res!1678063 () Bool)

(assert (=> b!4105014 (=> (not res!1678063) (not e!2547496))))

(declare-fun rulesInvariant!6106 (LexerInterface!6763 List!44298) Bool)

(assert (=> b!4105014 (= res!1678063 (rulesInvariant!6106 thiss!26455 lt!1467467))))

(assert (=> b!4105014 (= lt!1467467 (Cons!44174 rHead!24 rTail!27))))

(assert (=> b!4105015 (= e!2547499 (and tp!1244693 tp!1244688))))

(declare-fun e!2547505 () Bool)

(assert (=> b!4105016 (= e!2547505 (and tp!1244694 tp!1244689))))

(declare-fun tp!1244691 () Bool)

(declare-fun b!4105017 () Bool)

(assert (=> b!4105017 (= e!2547500 (and tp!1244691 (inv!58838 (tag!8034 (h!49594 rTail!27))) (inv!58840 (transformation!7174 (h!49594 rTail!27))) e!2547505))))

(assert (= (and start!389072 res!1678059) b!4105012))

(assert (= (and b!4105012 res!1678061) b!4105014))

(assert (= (and b!4105014 res!1678063) b!4105010))

(assert (= (and b!4105010 res!1678060) b!4105011))

(assert (= (and b!4105011 (not res!1678062)) b!4105013))

(assert (= b!4105017 b!4105016))

(assert (= b!4105008 b!4105017))

(assert (= (and start!389072 ((_ is Cons!44174) rTail!27)) b!4105008))

(assert (= b!4105009 b!4105015))

(assert (= start!389072 b!4105009))

(declare-fun m!4710123 () Bool)

(assert (=> b!4105009 m!4710123))

(declare-fun m!4710125 () Bool)

(assert (=> b!4105009 m!4710125))

(declare-fun m!4710127 () Bool)

(assert (=> b!4105012 m!4710127))

(declare-fun m!4710129 () Bool)

(assert (=> b!4105017 m!4710129))

(declare-fun m!4710131 () Bool)

(assert (=> b!4105017 m!4710131))

(declare-fun m!4710133 () Bool)

(assert (=> b!4105011 m!4710133))

(declare-fun m!4710135 () Bool)

(assert (=> b!4105011 m!4710135))

(declare-fun m!4710137 () Bool)

(assert (=> b!4105011 m!4710137))

(declare-fun m!4710139 () Bool)

(assert (=> b!4105011 m!4710139))

(declare-fun m!4710141 () Bool)

(assert (=> b!4105013 m!4710141))

(declare-fun m!4710143 () Bool)

(assert (=> b!4105014 m!4710143))

(check-sat (not b_next!115949) (not b!4105011) b_and!317061 b_and!317057 (not b!4105013) (not b_next!115951) (not b_next!115945) (not b!4105014) b_and!317059 b_and!317055 (not b!4105017) (not b!4105012) (not b!4105008) (not b_next!115947) (not b!4105009))
(check-sat (not b_next!115949) b_and!317061 b_and!317057 (not b_next!115947) (not b_next!115951) (not b_next!115945) b_and!317059 b_and!317055)
(get-model)

(declare-fun d!1218486 () Bool)

(assert (=> d!1218486 (= (isEmpty!26385 rTail!27) ((_ is Nil!44174) rTail!27))))

(assert (=> b!4105012 d!1218486))

(declare-fun b!4105029 () Bool)

(declare-fun e!2547517 () Bool)

(assert (=> b!4105029 (= e!2547517 (subseq!545 Nil!44175 (t!339956 (Cons!44175 (tag!8034 (h!49594 rTail!27)) Nil!44175))))))

(declare-fun b!4105026 () Bool)

(declare-fun e!2547516 () Bool)

(declare-fun e!2547514 () Bool)

(assert (=> b!4105026 (= e!2547516 e!2547514)))

(declare-fun res!1678077 () Bool)

(assert (=> b!4105026 (=> (not res!1678077) (not e!2547514))))

(assert (=> b!4105026 (= res!1678077 ((_ is Cons!44175) (Cons!44175 (tag!8034 (h!49594 rTail!27)) Nil!44175)))))

(declare-fun d!1218488 () Bool)

(declare-fun res!1678076 () Bool)

(assert (=> d!1218488 (=> res!1678076 e!2547516)))

(assert (=> d!1218488 (= res!1678076 ((_ is Nil!44175) Nil!44175))))

(assert (=> d!1218488 (= (subseq!545 Nil!44175 (Cons!44175 (tag!8034 (h!49594 rTail!27)) Nil!44175)) e!2547516)))

(declare-fun b!4105027 () Bool)

(assert (=> b!4105027 (= e!2547514 e!2547517)))

(declare-fun res!1678079 () Bool)

(assert (=> b!4105027 (=> res!1678079 e!2547517)))

(declare-fun e!2547515 () Bool)

(assert (=> b!4105027 (= res!1678079 e!2547515)))

(declare-fun res!1678078 () Bool)

(assert (=> b!4105027 (=> (not res!1678078) (not e!2547515))))

(assert (=> b!4105027 (= res!1678078 (= (h!49595 Nil!44175) (h!49595 (Cons!44175 (tag!8034 (h!49594 rTail!27)) Nil!44175))))))

(declare-fun b!4105028 () Bool)

(assert (=> b!4105028 (= e!2547515 (subseq!545 (t!339956 Nil!44175) (t!339956 (Cons!44175 (tag!8034 (h!49594 rTail!27)) Nil!44175))))))

(assert (= (and d!1218488 (not res!1678076)) b!4105026))

(assert (= (and b!4105026 res!1678077) b!4105027))

(assert (= (and b!4105027 res!1678078) b!4105028))

(assert (= (and b!4105027 (not res!1678079)) b!4105029))

(declare-fun m!4710145 () Bool)

(assert (=> b!4105029 m!4710145))

(declare-fun m!4710147 () Bool)

(assert (=> b!4105028 m!4710147))

(assert (=> b!4105013 d!1218488))

(declare-fun d!1218490 () Bool)

(assert (=> d!1218490 (= (isEmpty!26385 (t!339955 rTail!27)) ((_ is Nil!44174) (t!339955 rTail!27)))))

(assert (=> b!4105011 d!1218490))

(declare-fun d!1218492 () Bool)

(assert (=> d!1218492 (not (= (tag!8034 rHead!24) (tag!8034 (h!49594 rTail!27))))))

(declare-fun lt!1467470 () Unit!63651)

(declare-fun choose!25096 (LexerInterface!6763 List!44298 Rule!14148 Rule!14148) Unit!63651)

(assert (=> d!1218492 (= lt!1467470 (choose!25096 thiss!26455 lt!1467467 rHead!24 (h!49594 rTail!27)))))

(declare-fun contains!8849 (List!44298 Rule!14148) Bool)

(assert (=> d!1218492 (contains!8849 lt!1467467 rHead!24)))

(assert (=> d!1218492 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesTagsEq!34 thiss!26455 lt!1467467 rHead!24 (h!49594 rTail!27)) lt!1467470)))

(declare-fun bs!594041 () Bool)

(assert (= bs!594041 d!1218492))

(declare-fun m!4710149 () Bool)

(assert (=> bs!594041 m!4710149))

(declare-fun m!4710151 () Bool)

(assert (=> bs!594041 m!4710151))

(assert (=> b!4105011 d!1218492))

(declare-fun d!1218494 () Bool)

(declare-fun res!1678087 () Bool)

(declare-fun e!2547522 () Bool)

(assert (=> d!1218494 (=> res!1678087 e!2547522)))

(assert (=> d!1218494 (= res!1678087 ((_ is Nil!44174) (Cons!44174 (h!49594 rTail!27) (Cons!44174 rHead!24 (t!339955 rTail!27)))))))

(assert (=> d!1218494 (= (noDuplicateTag!2851 thiss!26455 (Cons!44174 (h!49594 rTail!27) (Cons!44174 rHead!24 (t!339955 rTail!27))) Nil!44175) e!2547522)))

(declare-fun b!4105034 () Bool)

(declare-fun e!2547523 () Bool)

(assert (=> b!4105034 (= e!2547522 e!2547523)))

(declare-fun res!1678088 () Bool)

(assert (=> b!4105034 (=> (not res!1678088) (not e!2547523))))

(declare-fun contains!8850 (List!44299 String!50769) Bool)

(assert (=> b!4105034 (= res!1678088 (not (contains!8850 Nil!44175 (tag!8034 (h!49594 (Cons!44174 (h!49594 rTail!27) (Cons!44174 rHead!24 (t!339955 rTail!27))))))))))

(declare-fun b!4105035 () Bool)

(assert (=> b!4105035 (= e!2547523 (noDuplicateTag!2851 thiss!26455 (t!339955 (Cons!44174 (h!49594 rTail!27) (Cons!44174 rHead!24 (t!339955 rTail!27)))) (Cons!44175 (tag!8034 (h!49594 (Cons!44174 (h!49594 rTail!27) (Cons!44174 rHead!24 (t!339955 rTail!27))))) Nil!44175)))))

(assert (= (and d!1218494 (not res!1678087)) b!4105034))

(assert (= (and b!4105034 res!1678088) b!4105035))

(declare-fun m!4710153 () Bool)

(assert (=> b!4105034 m!4710153))

(declare-fun m!4710155 () Bool)

(assert (=> b!4105035 m!4710155))

(assert (=> b!4105011 d!1218494))

(declare-fun d!1218500 () Bool)

(assert (=> d!1218500 (noDuplicateTag!2851 thiss!26455 (Cons!44174 (h!49594 rTail!27) (Cons!44174 rHead!24 (t!339955 rTail!27))) Nil!44175)))

(declare-fun lt!1467473 () Unit!63651)

(declare-fun choose!25097 (LexerInterface!6763 Rule!14148 Rule!14148 List!44298) Unit!63651)

(assert (=> d!1218500 (= lt!1467473 (choose!25097 thiss!26455 rHead!24 (h!49594 rTail!27) (t!339955 rTail!27)))))

(assert (=> d!1218500 (noDuplicateTag!2851 thiss!26455 (Cons!44174 rHead!24 (Cons!44174 (h!49594 rTail!27) (t!339955 rTail!27))) Nil!44175)))

(assert (=> d!1218500 (= (lemmaNoDuplicateCanReorder!46 thiss!26455 rHead!24 (h!49594 rTail!27) (t!339955 rTail!27)) lt!1467473)))

(declare-fun bs!594042 () Bool)

(assert (= bs!594042 d!1218500))

(assert (=> bs!594042 m!4710137))

(declare-fun m!4710161 () Bool)

(assert (=> bs!594042 m!4710161))

(declare-fun m!4710163 () Bool)

(assert (=> bs!594042 m!4710163))

(assert (=> b!4105011 d!1218500))

(declare-fun d!1218504 () Bool)

(assert (=> d!1218504 (= (inv!58838 (tag!8034 (h!49594 rTail!27))) (= (mod (str.len (value!225054 (tag!8034 (h!49594 rTail!27)))) 2) 0))))

(assert (=> b!4105017 d!1218504))

(declare-fun d!1218506 () Bool)

(declare-fun res!1678097 () Bool)

(declare-fun e!2547532 () Bool)

(assert (=> d!1218506 (=> (not res!1678097) (not e!2547532))))

(declare-fun semiInverseModEq!3087 (Int Int) Bool)

(assert (=> d!1218506 (= res!1678097 (semiInverseModEq!3087 (toChars!9653 (transformation!7174 (h!49594 rTail!27))) (toValue!9794 (transformation!7174 (h!49594 rTail!27)))))))

(assert (=> d!1218506 (= (inv!58840 (transformation!7174 (h!49594 rTail!27))) e!2547532)))

(declare-fun b!4105044 () Bool)

(declare-fun equivClasses!2986 (Int Int) Bool)

(assert (=> b!4105044 (= e!2547532 (equivClasses!2986 (toChars!9653 (transformation!7174 (h!49594 rTail!27))) (toValue!9794 (transformation!7174 (h!49594 rTail!27)))))))

(assert (= (and d!1218506 res!1678097) b!4105044))

(declare-fun m!4710173 () Bool)

(assert (=> d!1218506 m!4710173))

(declare-fun m!4710175 () Bool)

(assert (=> b!4105044 m!4710175))

(assert (=> b!4105017 d!1218506))

(declare-fun d!1218516 () Bool)

(declare-fun res!1678104 () Bool)

(declare-fun e!2547539 () Bool)

(assert (=> d!1218516 (=> (not res!1678104) (not e!2547539))))

(declare-fun rulesValid!2822 (LexerInterface!6763 List!44298) Bool)

(assert (=> d!1218516 (= res!1678104 (rulesValid!2822 thiss!26455 lt!1467467))))

(assert (=> d!1218516 (= (rulesInvariant!6106 thiss!26455 lt!1467467) e!2547539)))

(declare-fun b!4105051 () Bool)

(assert (=> b!4105051 (= e!2547539 (noDuplicateTag!2851 thiss!26455 lt!1467467 Nil!44175))))

(assert (= (and d!1218516 res!1678104) b!4105051))

(declare-fun m!4710177 () Bool)

(assert (=> d!1218516 m!4710177))

(declare-fun m!4710179 () Bool)

(assert (=> b!4105051 m!4710179))

(assert (=> b!4105014 d!1218516))

(declare-fun d!1218518 () Bool)

(assert (=> d!1218518 (= (inv!58838 (tag!8034 rHead!24)) (= (mod (str.len (value!225054 (tag!8034 rHead!24))) 2) 0))))

(assert (=> b!4105009 d!1218518))

(declare-fun d!1218520 () Bool)

(declare-fun res!1678106 () Bool)

(declare-fun e!2547541 () Bool)

(assert (=> d!1218520 (=> (not res!1678106) (not e!2547541))))

(assert (=> d!1218520 (= res!1678106 (semiInverseModEq!3087 (toChars!9653 (transformation!7174 rHead!24)) (toValue!9794 (transformation!7174 rHead!24))))))

(assert (=> d!1218520 (= (inv!58840 (transformation!7174 rHead!24)) e!2547541)))

(declare-fun b!4105052 () Bool)

(assert (=> b!4105052 (= e!2547541 (equivClasses!2986 (toChars!9653 (transformation!7174 rHead!24)) (toValue!9794 (transformation!7174 rHead!24))))))

(assert (= (and d!1218520 res!1678106) b!4105052))

(declare-fun m!4710181 () Bool)

(assert (=> d!1218520 m!4710181))

(declare-fun m!4710183 () Bool)

(assert (=> b!4105052 m!4710183))

(assert (=> b!4105009 d!1218520))

(declare-fun b!4105067 () Bool)

(declare-fun e!2547545 () Bool)

(declare-fun tp!1244707 () Bool)

(assert (=> b!4105067 (= e!2547545 tp!1244707)))

(assert (=> b!4105017 (= tp!1244691 e!2547545)))

(declare-fun b!4105065 () Bool)

(declare-fun tp_is_empty!21127 () Bool)

(assert (=> b!4105065 (= e!2547545 tp_is_empty!21127)))

(declare-fun b!4105066 () Bool)

(declare-fun tp!1244709 () Bool)

(declare-fun tp!1244705 () Bool)

(assert (=> b!4105066 (= e!2547545 (and tp!1244709 tp!1244705))))

(declare-fun b!4105068 () Bool)

(declare-fun tp!1244708 () Bool)

(declare-fun tp!1244706 () Bool)

(assert (=> b!4105068 (= e!2547545 (and tp!1244708 tp!1244706))))

(assert (= (and b!4105017 ((_ is ElementMatch!12079) (regex!7174 (h!49594 rTail!27)))) b!4105065))

(assert (= (and b!4105017 ((_ is Concat!19483) (regex!7174 (h!49594 rTail!27)))) b!4105066))

(assert (= (and b!4105017 ((_ is Star!12079) (regex!7174 (h!49594 rTail!27)))) b!4105067))

(assert (= (and b!4105017 ((_ is Union!12079) (regex!7174 (h!49594 rTail!27)))) b!4105068))

(declare-fun b!4105079 () Bool)

(declare-fun b_free!115249 () Bool)

(declare-fun b_next!115953 () Bool)

(assert (=> b!4105079 (= b_free!115249 (not b_next!115953))))

(declare-fun tp!1244718 () Bool)

(declare-fun b_and!317063 () Bool)

(assert (=> b!4105079 (= tp!1244718 b_and!317063)))

(declare-fun b_free!115251 () Bool)

(declare-fun b_next!115955 () Bool)

(assert (=> b!4105079 (= b_free!115251 (not b_next!115955))))

(declare-fun tp!1244719 () Bool)

(declare-fun b_and!317065 () Bool)

(assert (=> b!4105079 (= tp!1244719 b_and!317065)))

(declare-fun e!2547555 () Bool)

(assert (=> b!4105079 (= e!2547555 (and tp!1244718 tp!1244719))))

(declare-fun e!2547554 () Bool)

(declare-fun tp!1244721 () Bool)

(declare-fun b!4105078 () Bool)

(assert (=> b!4105078 (= e!2547554 (and tp!1244721 (inv!58838 (tag!8034 (h!49594 (t!339955 rTail!27)))) (inv!58840 (transformation!7174 (h!49594 (t!339955 rTail!27)))) e!2547555))))

(declare-fun b!4105077 () Bool)

(declare-fun e!2547557 () Bool)

(declare-fun tp!1244720 () Bool)

(assert (=> b!4105077 (= e!2547557 (and e!2547554 tp!1244720))))

(assert (=> b!4105008 (= tp!1244690 e!2547557)))

(assert (= b!4105078 b!4105079))

(assert (= b!4105077 b!4105078))

(assert (= (and b!4105008 ((_ is Cons!44174) (t!339955 rTail!27))) b!4105077))

(declare-fun m!4710189 () Bool)

(assert (=> b!4105078 m!4710189))

(declare-fun m!4710191 () Bool)

(assert (=> b!4105078 m!4710191))

(declare-fun b!4105082 () Bool)

(declare-fun e!2547558 () Bool)

(declare-fun tp!1244724 () Bool)

(assert (=> b!4105082 (= e!2547558 tp!1244724)))

(assert (=> b!4105009 (= tp!1244692 e!2547558)))

(declare-fun b!4105080 () Bool)

(assert (=> b!4105080 (= e!2547558 tp_is_empty!21127)))

(declare-fun b!4105081 () Bool)

(declare-fun tp!1244726 () Bool)

(declare-fun tp!1244722 () Bool)

(assert (=> b!4105081 (= e!2547558 (and tp!1244726 tp!1244722))))

(declare-fun b!4105083 () Bool)

(declare-fun tp!1244725 () Bool)

(declare-fun tp!1244723 () Bool)

(assert (=> b!4105083 (= e!2547558 (and tp!1244725 tp!1244723))))

(assert (= (and b!4105009 ((_ is ElementMatch!12079) (regex!7174 rHead!24))) b!4105080))

(assert (= (and b!4105009 ((_ is Concat!19483) (regex!7174 rHead!24))) b!4105081))

(assert (= (and b!4105009 ((_ is Star!12079) (regex!7174 rHead!24))) b!4105082))

(assert (= (and b!4105009 ((_ is Union!12079) (regex!7174 rHead!24))) b!4105083))

(check-sat (not b_next!115949) b_and!317063 (not d!1218520) (not b_next!115955) (not b!4105044) (not b!4105077) (not b!4105083) b_and!317061 b_and!317057 (not b!4105078) tp_is_empty!21127 (not b_next!115951) (not b_next!115945) (not b_next!115953) b_and!317059 b_and!317055 (not b!4105034) (not b!4105035) (not d!1218506) (not b!4105029) (not d!1218500) (not b!4105067) (not d!1218492) (not b!4105052) (not b!4105051) (not b!4105068) (not b!4105081) b_and!317065 (not b!4105082) (not b_next!115947) (not d!1218516) (not b!4105066) (not b!4105028))
(check-sat (not b_next!115949) b_and!317063 (not b_next!115955) b_and!317061 b_and!317057 b_and!317065 (not b_next!115947) (not b_next!115951) (not b_next!115945) (not b_next!115953) b_and!317059 b_and!317055)
