; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!746882 () Bool)

(assert start!746882)

(declare-fun b!7911283 () Bool)

(declare-fun b_free!135211 () Bool)

(declare-fun b_next!136001 () Bool)

(assert (=> b!7911283 (= b_free!135211 (not b_next!136001))))

(declare-fun tp!2356593 () Bool)

(declare-fun b_and!353531 () Bool)

(assert (=> b!7911283 (= tp!2356593 b_and!353531)))

(declare-fun b_free!135213 () Bool)

(declare-fun b_next!136003 () Bool)

(assert (=> b!7911283 (= b_free!135213 (not b_next!136003))))

(declare-fun tp!2356596 () Bool)

(declare-fun b_and!353533 () Bool)

(assert (=> b!7911283 (= tp!2356596 b_and!353533)))

(declare-fun e!4670038 () Bool)

(declare-datatypes ((List!74495 0))(
  ( (Nil!74371) (Cons!74371 (h!80819 (_ BitVec 16)) (t!389904 List!74495)) )
))
(declare-datatypes ((C!43070 0))(
  ( (C!43071 (val!31999 Int)) )
))
(declare-datatypes ((List!74496 0))(
  ( (Nil!74372) (Cons!74372 (h!80820 C!43070) (t!389905 List!74496)) )
))
(declare-datatypes ((IArray!31743 0))(
  ( (IArray!31744 (innerList!15929 List!74496)) )
))
(declare-datatypes ((Conc!15841 0))(
  ( (Node!15841 (left!56758 Conc!15841) (right!57088 Conc!15841) (csize!31912 Int) (cheight!16052 Int)) (Leaf!30143 (xs!19223 IArray!31743) (csize!31913 Int)) (Empty!15841) )
))
(declare-datatypes ((BalanceConc!30800 0))(
  ( (BalanceConc!30801 (c!1451460 Conc!15841)) )
))
(declare-datatypes ((TokenValue!8983 0))(
  ( (FloatLiteralValue!17966 (text!63326 List!74495)) (TokenValueExt!8982 (__x!35253 Int)) (Broken!44915 (value!288962 List!74495)) (Object!9106) (End!8983) (Def!8983) (Underscore!8983) (Match!8983) (Else!8983) (Error!8983) (Case!8983) (If!8983) (Extends!8983) (Abstract!8983) (Class!8983) (Val!8983) (DelimiterValue!17966 (del!9043 List!74495)) (KeywordValue!8989 (value!288963 List!74495)) (CommentValue!17966 (value!288964 List!74495)) (WhitespaceValue!17966 (value!288965 List!74495)) (IndentationValue!8983 (value!288966 List!74495)) (String!83338) (Int32!8983) (Broken!44916 (value!288967 List!74495)) (Boolean!8984) (Unit!169432) (OperatorValue!8986 (op!9043 List!74495)) (IdentifierValue!17966 (value!288968 List!74495)) (IdentifierValue!17967 (value!288969 List!74495)) (WhitespaceValue!17967 (value!288970 List!74495)) (True!17966) (False!17966) (Broken!44917 (value!288971 List!74495)) (Broken!44918 (value!288972 List!74495)) (True!17967) (RightBrace!8983) (RightBracket!8983) (Colon!8983) (Null!8983) (Comma!8983) (LeftBracket!8983) (False!17967) (LeftBrace!8983) (ImaginaryLiteralValue!8983 (text!63327 List!74495)) (StringLiteralValue!26949 (value!288973 List!74495)) (EOFValue!8983 (value!288974 List!74495)) (IdentValue!8983 (value!288975 List!74495)) (DelimiterValue!17967 (value!288976 List!74495)) (DedentValue!8983 (value!288977 List!74495)) (NewLineValue!8983 (value!288978 List!74495)) (IntegerValue!26949 (value!288979 (_ BitVec 32)) (text!63328 List!74495)) (IntegerValue!26950 (value!288980 Int) (text!63329 List!74495)) (Times!8983) (Or!8983) (Equal!8983) (Minus!8983) (Broken!44919 (value!288981 List!74495)) (And!8983) (Div!8983) (LessEqual!8983) (Mod!8983) (Concat!30353) (Not!8983) (Plus!8983) (SpaceValue!8983 (value!288982 List!74495)) (IntegerValue!26951 (value!288983 Int) (text!63330 List!74495)) (StringLiteralValue!26950 (text!63331 List!74495)) (FloatLiteralValue!17967 (text!63332 List!74495)) (BytesLiteralValue!8983 (value!288984 List!74495)) (CommentValue!17967 (value!288985 List!74495)) (StringLiteralValue!26951 (value!288986 List!74495)) (ErrorTokenValue!8983 (msg!9044 List!74495)) )
))
(declare-datatypes ((Regex!21370 0))(
  ( (ElementMatch!21370 (c!1451461 C!43070)) (Concat!30354 (regOne!43252 Regex!21370) (regTwo!43252 Regex!21370)) (EmptyExpr!21370) (Star!21370 (reg!21699 Regex!21370)) (EmptyLang!21370) (Union!21370 (regOne!43253 Regex!21370) (regTwo!43253 Regex!21370)) )
))
(declare-datatypes ((String!83339 0))(
  ( (String!83340 (value!288987 String)) )
))
(declare-datatypes ((TokenValueInjection!17274 0))(
  ( (TokenValueInjection!17275 (toValue!11724 Int) (toChars!11583 Int)) )
))
(declare-datatypes ((Rule!17134 0))(
  ( (Rule!17135 (regex!8667 Regex!21370) (tag!9531 String!83339) (isSeparator!8667 Bool) (transformation!8667 TokenValueInjection!17274)) )
))
(declare-fun rule!156 () Rule!17134)

(declare-fun e!4670036 () Bool)

(declare-fun b!7911281 () Bool)

(declare-fun tp!2356595 () Bool)

(declare-fun inv!95428 (String!83339) Bool)

(declare-fun inv!95431 (TokenValueInjection!17274) Bool)

(assert (=> b!7911281 (= e!4670036 (and tp!2356595 (inv!95428 (tag!9531 rule!156)) (inv!95431 (transformation!8667 rule!156)) e!4670038))))

(declare-fun b!7911282 () Bool)

(declare-fun res!3140043 () Bool)

(declare-fun e!4670039 () Bool)

(assert (=> b!7911282 (=> res!3140043 e!4670039)))

(declare-datatypes ((Token!15746 0))(
  ( (Token!15747 (value!288988 TokenValue!8983) (rule!11967 Rule!17134) (size!43149 Int) (originalCharacters!8904 List!74496)) )
))
(declare-datatypes ((tuple2!70434 0))(
  ( (tuple2!70435 (_1!38520 Token!15746) (_2!38520 List!74496)) )
))
(declare-fun lt!2687532 () tuple2!70434)

(declare-fun lt!2687535 () Int)

(declare-fun size!43150 (List!74496) Int)

(assert (=> b!7911282 (= res!3140043 (>= (size!43150 (_2!38520 lt!2687532)) lt!2687535))))

(assert (=> b!7911283 (= e!4670038 (and tp!2356593 tp!2356596))))

(declare-fun b!7911284 () Bool)

(declare-fun res!3140037 () Bool)

(assert (=> b!7911284 (=> res!3140037 e!4670039)))

(declare-fun input!1480 () List!74496)

(declare-fun lt!2687531 () List!74496)

(declare-fun ++!18213 (List!74496 List!74496) List!74496)

(assert (=> b!7911284 (= res!3140037 (not (= (++!18213 lt!2687531 (_2!38520 lt!2687532)) input!1480)))))

(declare-fun b!7911285 () Bool)

(declare-fun e!4670035 () Bool)

(declare-fun tp_is_empty!53115 () Bool)

(declare-fun tp!2356594 () Bool)

(assert (=> b!7911285 (= e!4670035 (and tp_is_empty!53115 tp!2356594))))

(declare-fun b!7911286 () Bool)

(declare-datatypes ((Option!17945 0))(
  ( (None!17944) (Some!17944 (v!55101 tuple2!70434)) )
))
(declare-fun lt!2687539 () Option!17945)

(declare-fun isDefined!14503 (Option!17945) Bool)

(assert (=> b!7911286 (= e!4670039 (isDefined!14503 lt!2687539))))

(declare-fun res!3140041 () Bool)

(declare-fun e!4670031 () Bool)

(assert (=> start!746882 (=> (not res!3140041) (not e!4670031))))

(declare-datatypes ((LexerInterface!8259 0))(
  ( (LexerInterfaceExt!8256 (__x!35254 Int)) (Lexer!8257) )
))
(declare-fun thiss!15815 () LexerInterface!8259)

(assert (=> start!746882 (= res!3140041 (is-Lexer!8257 thiss!15815))))

(assert (=> start!746882 e!4670031))

(assert (=> start!746882 true))

(assert (=> start!746882 e!4670036))

(assert (=> start!746882 e!4670035))

(declare-fun b!7911287 () Bool)

(declare-fun e!4670033 () Bool)

(assert (=> b!7911287 (= e!4670033 e!4670039)))

(declare-fun res!3140040 () Bool)

(assert (=> b!7911287 (=> res!3140040 e!4670039)))

(declare-fun matchR!10691 (Regex!21370 List!74496) Bool)

(assert (=> b!7911287 (= res!3140040 (not (matchR!10691 (regex!8667 rule!156) lt!2687531)))))

(declare-fun list!19319 (BalanceConc!30800) List!74496)

(declare-fun charsOf!5605 (Token!15746) BalanceConc!30800)

(assert (=> b!7911287 (= lt!2687531 (list!19319 (charsOf!5605 (_1!38520 lt!2687532))))))

(declare-fun get!26749 (Option!17945) tuple2!70434)

(assert (=> b!7911287 (= lt!2687532 (get!26749 lt!2687539))))

(declare-fun b!7911288 () Bool)

(declare-fun e!4670032 () Bool)

(assert (=> b!7911288 (= e!4670031 e!4670032)))

(declare-fun res!3140042 () Bool)

(assert (=> b!7911288 (=> (not res!3140042) (not e!4670032))))

(declare-datatypes ((tuple2!70436 0))(
  ( (tuple2!70437 (_1!38521 List!74496) (_2!38521 List!74496)) )
))
(declare-fun lt!2687533 () tuple2!70436)

(declare-fun isEmpty!42704 (List!74496) Bool)

(assert (=> b!7911288 (= res!3140042 (not (isEmpty!42704 (_1!38521 lt!2687533))))))

(declare-fun findLongestMatch!1960 (Regex!21370 List!74496) tuple2!70436)

(assert (=> b!7911288 (= lt!2687533 (findLongestMatch!1960 (regex!8667 rule!156) input!1480))))

(declare-fun b!7911289 () Bool)

(declare-fun e!4670037 () Bool)

(declare-fun lt!2687537 () tuple2!70436)

(assert (=> b!7911289 (= e!4670037 (matchR!10691 (regex!8667 rule!156) (_1!38521 lt!2687537)))))

(declare-fun b!7911290 () Bool)

(declare-fun res!3140035 () Bool)

(assert (=> b!7911290 (=> res!3140035 e!4670039)))

(assert (=> b!7911290 (= res!3140035 (not (= (rule!11967 (_1!38520 lt!2687532)) rule!156)))))

(declare-fun b!7911291 () Bool)

(declare-fun res!3140039 () Bool)

(assert (=> b!7911291 (=> (not res!3140039) (not e!4670031))))

(declare-fun ruleValid!3978 (LexerInterface!8259 Rule!17134) Bool)

(assert (=> b!7911291 (= res!3140039 (ruleValid!3978 thiss!15815 rule!156))))

(declare-fun b!7911292 () Bool)

(assert (=> b!7911292 (= e!4670032 (not e!4670033))))

(declare-fun res!3140038 () Bool)

(assert (=> b!7911292 (=> res!3140038 e!4670033)))

(declare-fun isEmpty!42705 (Option!17945) Bool)

(assert (=> b!7911292 (= res!3140038 (isEmpty!42705 lt!2687539))))

(declare-fun lt!2687540 () BalanceConc!30800)

(declare-fun apply!14376 (TokenValueInjection!17274 BalanceConc!30800) TokenValue!8983)

(declare-fun size!43151 (BalanceConc!30800) Int)

(assert (=> b!7911292 (= lt!2687539 (Some!17944 (tuple2!70435 (Token!15747 (apply!14376 (transformation!8667 rule!156) lt!2687540) rule!156 (size!43151 lt!2687540) (_1!38521 lt!2687533)) (_2!38521 lt!2687533))))))

(declare-datatypes ((Unit!169433 0))(
  ( (Unit!169434) )
))
(declare-fun lt!2687538 () Unit!169433)

(declare-fun lemmaSemiInverse!2687 (TokenValueInjection!17274 BalanceConc!30800) Unit!169433)

(assert (=> b!7911292 (= lt!2687538 (lemmaSemiInverse!2687 (transformation!8667 rule!156) lt!2687540))))

(declare-fun seqFromList!6194 (List!74496) BalanceConc!30800)

(assert (=> b!7911292 (= lt!2687540 (seqFromList!6194 (_1!38521 lt!2687533)))))

(assert (=> b!7911292 e!4670037))

(declare-fun res!3140036 () Bool)

(assert (=> b!7911292 (=> res!3140036 e!4670037)))

(assert (=> b!7911292 (= res!3140036 (isEmpty!42704 (_1!38521 lt!2687537)))))

(declare-fun lt!2687534 () Int)

(declare-fun findLongestMatchInner!2177 (Regex!21370 List!74496 Int List!74496 List!74496 Int) tuple2!70436)

(assert (=> b!7911292 (= lt!2687537 (findLongestMatchInner!2177 (regex!8667 rule!156) Nil!74372 lt!2687534 input!1480 input!1480 lt!2687535))))

(assert (=> b!7911292 (= lt!2687535 (size!43150 input!1480))))

(assert (=> b!7911292 (= lt!2687534 (size!43150 Nil!74372))))

(declare-fun lt!2687536 () Unit!169433)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2140 (Regex!21370 List!74496) Unit!169433)

(assert (=> b!7911292 (= lt!2687536 (longestMatchIsAcceptedByMatchOrIsEmpty!2140 (regex!8667 rule!156) input!1480))))

(assert (= (and start!746882 res!3140041) b!7911291))

(assert (= (and b!7911291 res!3140039) b!7911288))

(assert (= (and b!7911288 res!3140042) b!7911292))

(assert (= (and b!7911292 (not res!3140036)) b!7911289))

(assert (= (and b!7911292 (not res!3140038)) b!7911287))

(assert (= (and b!7911287 (not res!3140040)) b!7911284))

(assert (= (and b!7911284 (not res!3140037)) b!7911282))

(assert (= (and b!7911282 (not res!3140043)) b!7911290))

(assert (= (and b!7911290 (not res!3140035)) b!7911286))

(assert (= b!7911281 b!7911283))

(assert (= start!746882 b!7911281))

(assert (= (and start!746882 (is-Cons!74372 input!1480)) b!7911285))

(declare-fun m!8284852 () Bool)

(assert (=> b!7911288 m!8284852))

(declare-fun m!8284854 () Bool)

(assert (=> b!7911288 m!8284854))

(declare-fun m!8284856 () Bool)

(assert (=> b!7911284 m!8284856))

(declare-fun m!8284858 () Bool)

(assert (=> b!7911292 m!8284858))

(declare-fun m!8284860 () Bool)

(assert (=> b!7911292 m!8284860))

(declare-fun m!8284862 () Bool)

(assert (=> b!7911292 m!8284862))

(declare-fun m!8284864 () Bool)

(assert (=> b!7911292 m!8284864))

(declare-fun m!8284866 () Bool)

(assert (=> b!7911292 m!8284866))

(declare-fun m!8284868 () Bool)

(assert (=> b!7911292 m!8284868))

(declare-fun m!8284870 () Bool)

(assert (=> b!7911292 m!8284870))

(declare-fun m!8284872 () Bool)

(assert (=> b!7911292 m!8284872))

(declare-fun m!8284874 () Bool)

(assert (=> b!7911292 m!8284874))

(declare-fun m!8284876 () Bool)

(assert (=> b!7911292 m!8284876))

(declare-fun m!8284878 () Bool)

(assert (=> b!7911289 m!8284878))

(declare-fun m!8284880 () Bool)

(assert (=> b!7911281 m!8284880))

(declare-fun m!8284882 () Bool)

(assert (=> b!7911281 m!8284882))

(declare-fun m!8284884 () Bool)

(assert (=> b!7911287 m!8284884))

(declare-fun m!8284886 () Bool)

(assert (=> b!7911287 m!8284886))

(assert (=> b!7911287 m!8284886))

(declare-fun m!8284888 () Bool)

(assert (=> b!7911287 m!8284888))

(declare-fun m!8284890 () Bool)

(assert (=> b!7911287 m!8284890))

(declare-fun m!8284892 () Bool)

(assert (=> b!7911282 m!8284892))

(declare-fun m!8284894 () Bool)

(assert (=> b!7911286 m!8284894))

(declare-fun m!8284896 () Bool)

(assert (=> b!7911291 m!8284896))

(push 1)

(assert (not b!7911281))

(assert (not b!7911286))

(assert (not b_next!136003))

(assert (not b!7911282))

(assert b_and!353531)

(assert (not b_next!136001))

(assert (not b!7911289))

(assert (not b!7911291))

(assert tp_is_empty!53115)

(assert (not b!7911292))

(assert (not b!7911285))

(assert (not b!7911284))

(assert (not b!7911288))

(assert b_and!353533)

(assert (not b!7911287))

(check-sat)

(pop 1)

(push 1)

(assert b_and!353531)

(assert b_and!353533)

(assert (not b_next!136001))

(assert (not b_next!136003))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2360294 () Bool)

(declare-fun res!3140077 () Bool)

(declare-fun e!4670069 () Bool)

(assert (=> d!2360294 (=> (not res!3140077) (not e!4670069))))

(declare-fun validRegex!11676 (Regex!21370) Bool)

(assert (=> d!2360294 (= res!3140077 (validRegex!11676 (regex!8667 rule!156)))))

(assert (=> d!2360294 (= (ruleValid!3978 thiss!15815 rule!156) e!4670069)))

(declare-fun b!7911333 () Bool)

(declare-fun res!3140078 () Bool)

(assert (=> b!7911333 (=> (not res!3140078) (not e!4670069))))

(declare-fun nullable!9511 (Regex!21370) Bool)

(assert (=> b!7911333 (= res!3140078 (not (nullable!9511 (regex!8667 rule!156))))))

(declare-fun b!7911334 () Bool)

(assert (=> b!7911334 (= e!4670069 (not (= (tag!9531 rule!156) (String!83340 ""))))))

(assert (= (and d!2360294 res!3140077) b!7911333))

(assert (= (and b!7911333 res!3140078) b!7911334))

(declare-fun m!8284944 () Bool)

(assert (=> d!2360294 m!8284944))

(declare-fun m!8284946 () Bool)

(assert (=> b!7911333 m!8284946))

(assert (=> b!7911291 d!2360294))

(declare-fun d!2360296 () Bool)

(assert (=> d!2360296 (= (isDefined!14503 lt!2687539) (not (isEmpty!42705 lt!2687539)))))

(declare-fun bs!1968264 () Bool)

(assert (= bs!1968264 d!2360296))

(assert (=> bs!1968264 m!8284860))

(assert (=> b!7911286 d!2360296))

(declare-fun d!2360298 () Bool)

(assert (=> d!2360298 (= (inv!95428 (tag!9531 rule!156)) (= (mod (str.len (value!288987 (tag!9531 rule!156))) 2) 0))))

(assert (=> b!7911281 d!2360298))

(declare-fun d!2360300 () Bool)

(declare-fun res!3140082 () Bool)

(declare-fun e!4670072 () Bool)

(assert (=> d!2360300 (=> (not res!3140082) (not e!4670072))))

(declare-fun semiInverseModEq!3841 (Int Int) Bool)

(assert (=> d!2360300 (= res!3140082 (semiInverseModEq!3841 (toChars!11583 (transformation!8667 rule!156)) (toValue!11724 (transformation!8667 rule!156))))))

(assert (=> d!2360300 (= (inv!95431 (transformation!8667 rule!156)) e!4670072)))

(declare-fun b!7911337 () Bool)

(declare-fun equivClasses!3656 (Int Int) Bool)

(assert (=> b!7911337 (= e!4670072 (equivClasses!3656 (toChars!11583 (transformation!8667 rule!156)) (toValue!11724 (transformation!8667 rule!156))))))

(assert (= (and d!2360300 res!3140082) b!7911337))

(declare-fun m!8284948 () Bool)

(assert (=> d!2360300 m!8284948))

(declare-fun m!8284950 () Bool)

(assert (=> b!7911337 m!8284950))

(assert (=> b!7911281 d!2360300))

(declare-fun d!2360302 () Bool)

(declare-fun lt!2687573 () Int)

(assert (=> d!2360302 (>= lt!2687573 0)))

(declare-fun e!4670075 () Int)

(assert (=> d!2360302 (= lt!2687573 e!4670075)))

(declare-fun c!1451467 () Bool)

(assert (=> d!2360302 (= c!1451467 (is-Nil!74372 input!1480))))

(assert (=> d!2360302 (= (size!43150 input!1480) lt!2687573)))

(declare-fun b!7911342 () Bool)

(assert (=> b!7911342 (= e!4670075 0)))

(declare-fun b!7911343 () Bool)

(assert (=> b!7911343 (= e!4670075 (+ 1 (size!43150 (t!389905 input!1480))))))

(assert (= (and d!2360302 c!1451467) b!7911342))

(assert (= (and d!2360302 (not c!1451467)) b!7911343))

(declare-fun m!8284952 () Bool)

(assert (=> b!7911343 m!8284952))

(assert (=> b!7911292 d!2360302))

(declare-fun d!2360304 () Bool)

(declare-fun lt!2687574 () Int)

(assert (=> d!2360304 (>= lt!2687574 0)))

(declare-fun e!4670076 () Int)

(assert (=> d!2360304 (= lt!2687574 e!4670076)))

(declare-fun c!1451468 () Bool)

(assert (=> d!2360304 (= c!1451468 (is-Nil!74372 Nil!74372))))

(assert (=> d!2360304 (= (size!43150 Nil!74372) lt!2687574)))

(declare-fun b!7911344 () Bool)

(assert (=> b!7911344 (= e!4670076 0)))

(declare-fun b!7911345 () Bool)

(assert (=> b!7911345 (= e!4670076 (+ 1 (size!43150 (t!389905 Nil!74372))))))

(assert (= (and d!2360304 c!1451468) b!7911344))

(assert (= (and d!2360304 (not c!1451468)) b!7911345))

(declare-fun m!8284954 () Bool)

(assert (=> b!7911345 m!8284954))

(assert (=> b!7911292 d!2360304))

(declare-fun d!2360306 () Bool)

(declare-fun dynLambda!30158 (Int BalanceConc!30800) TokenValue!8983)

(assert (=> d!2360306 (= (apply!14376 (transformation!8667 rule!156) lt!2687540) (dynLambda!30158 (toValue!11724 (transformation!8667 rule!156)) lt!2687540))))

(declare-fun b_lambda!290067 () Bool)

(assert (=> (not b_lambda!290067) (not d!2360306)))

(declare-fun t!389909 () Bool)

(declare-fun tb!263247 () Bool)

(assert (=> (and b!7911283 (= (toValue!11724 (transformation!8667 rule!156)) (toValue!11724 (transformation!8667 rule!156))) t!389909) tb!263247))

(declare-fun result!360590 () Bool)

(declare-fun inv!21 (TokenValue!8983) Bool)

(assert (=> tb!263247 (= result!360590 (inv!21 (dynLambda!30158 (toValue!11724 (transformation!8667 rule!156)) lt!2687540)))))

(declare-fun m!8284956 () Bool)

(assert (=> tb!263247 m!8284956))

(assert (=> d!2360306 t!389909))

(declare-fun b_and!353539 () Bool)

(assert (= b_and!353531 (and (=> t!389909 result!360590) b_and!353539)))

(declare-fun m!8284958 () Bool)

(assert (=> d!2360306 m!8284958))

(assert (=> b!7911292 d!2360306))

(declare-fun b!7911360 () Bool)

(declare-fun e!4670086 () Bool)

(assert (=> b!7911360 (= e!4670086 true)))

(declare-fun d!2360308 () Bool)

(assert (=> d!2360308 e!4670086))

(assert (= d!2360308 b!7911360))

(declare-fun lambda!472572 () Int)

(declare-fun order!29919 () Int)

(declare-fun order!29917 () Int)

(declare-fun dynLambda!30159 (Int Int) Int)

(declare-fun dynLambda!30160 (Int Int) Int)

(assert (=> b!7911360 (< (dynLambda!30159 order!29917 (toValue!11724 (transformation!8667 rule!156))) (dynLambda!30160 order!29919 lambda!472572))))

(declare-fun order!29921 () Int)

(declare-fun dynLambda!30161 (Int Int) Int)

(assert (=> b!7911360 (< (dynLambda!30161 order!29921 (toChars!11583 (transformation!8667 rule!156))) (dynLambda!30160 order!29919 lambda!472572))))

(declare-fun dynLambda!30162 (Int TokenValue!8983) BalanceConc!30800)

(assert (=> d!2360308 (= (list!19319 (dynLambda!30162 (toChars!11583 (transformation!8667 rule!156)) (dynLambda!30158 (toValue!11724 (transformation!8667 rule!156)) lt!2687540))) (list!19319 lt!2687540))))

(declare-fun lt!2687610 () Unit!169433)

(declare-fun ForallOf!1313 (Int BalanceConc!30800) Unit!169433)

(assert (=> d!2360308 (= lt!2687610 (ForallOf!1313 lambda!472572 lt!2687540))))

(assert (=> d!2360308 (= (lemmaSemiInverse!2687 (transformation!8667 rule!156) lt!2687540) lt!2687610)))

(declare-fun b_lambda!290069 () Bool)

(assert (=> (not b_lambda!290069) (not d!2360308)))

(declare-fun t!389911 () Bool)

(declare-fun tb!263249 () Bool)

(assert (=> (and b!7911283 (= (toChars!11583 (transformation!8667 rule!156)) (toChars!11583 (transformation!8667 rule!156))) t!389911) tb!263249))

(declare-fun tp!2356611 () Bool)

(declare-fun b!7911365 () Bool)

(declare-fun e!4670089 () Bool)

(declare-fun inv!95433 (Conc!15841) Bool)

(assert (=> b!7911365 (= e!4670089 (and (inv!95433 (c!1451460 (dynLambda!30162 (toChars!11583 (transformation!8667 rule!156)) (dynLambda!30158 (toValue!11724 (transformation!8667 rule!156)) lt!2687540)))) tp!2356611))))

(declare-fun result!360594 () Bool)

(declare-fun inv!95434 (BalanceConc!30800) Bool)

(assert (=> tb!263249 (= result!360594 (and (inv!95434 (dynLambda!30162 (toChars!11583 (transformation!8667 rule!156)) (dynLambda!30158 (toValue!11724 (transformation!8667 rule!156)) lt!2687540))) e!4670089))))

(assert (= tb!263249 b!7911365))

(declare-fun m!8284988 () Bool)

(assert (=> b!7911365 m!8284988))

(declare-fun m!8284990 () Bool)

(assert (=> tb!263249 m!8284990))

(assert (=> d!2360308 t!389911))

(declare-fun b_and!353541 () Bool)

(assert (= b_and!353533 (and (=> t!389911 result!360594) b_and!353541)))

(declare-fun b_lambda!290071 () Bool)

(assert (=> (not b_lambda!290071) (not d!2360308)))

(assert (=> d!2360308 t!389909))

(declare-fun b_and!353543 () Bool)

(assert (= b_and!353539 (and (=> t!389909 result!360590) b_and!353543)))

(declare-fun m!8284992 () Bool)

(assert (=> d!2360308 m!8284992))

(declare-fun m!8284994 () Bool)

(assert (=> d!2360308 m!8284994))

(assert (=> d!2360308 m!8284958))

(assert (=> d!2360308 m!8284992))

(assert (=> d!2360308 m!8284958))

(declare-fun m!8284996 () Bool)

(assert (=> d!2360308 m!8284996))

(declare-fun m!8284998 () Bool)

(assert (=> d!2360308 m!8284998))

(assert (=> b!7911292 d!2360308))

(declare-fun d!2360324 () Bool)

(declare-fun fromListB!2799 (List!74496) BalanceConc!30800)

(assert (=> d!2360324 (= (seqFromList!6194 (_1!38521 lt!2687533)) (fromListB!2799 (_1!38521 lt!2687533)))))

(declare-fun bs!1968267 () Bool)

(assert (= bs!1968267 d!2360324))

(declare-fun m!8285000 () Bool)

(assert (=> bs!1968267 m!8285000))

(assert (=> b!7911292 d!2360324))

(declare-fun b!7911394 () Bool)

(declare-fun e!4670111 () tuple2!70436)

(assert (=> b!7911394 (= e!4670111 (tuple2!70437 Nil!74372 input!1480))))

(declare-fun b!7911395 () Bool)

(declare-fun c!1451489 () Bool)

(declare-fun call!733819 () Bool)

(assert (=> b!7911395 (= c!1451489 call!733819)))

(declare-fun lt!2687694 () Unit!169433)

(declare-fun lt!2687672 () Unit!169433)

(assert (=> b!7911395 (= lt!2687694 lt!2687672)))

(assert (=> b!7911395 (= input!1480 Nil!74372)))

(declare-fun call!733821 () Unit!169433)

(assert (=> b!7911395 (= lt!2687672 call!733821)))

(declare-fun lt!2687673 () Unit!169433)

(declare-fun lt!2687678 () Unit!169433)

(assert (=> b!7911395 (= lt!2687673 lt!2687678)))

(declare-fun call!733822 () Bool)

(assert (=> b!7911395 call!733822))

(declare-fun call!733815 () Unit!169433)

(assert (=> b!7911395 (= lt!2687678 call!733815)))

(declare-fun e!4670108 () tuple2!70436)

(assert (=> b!7911395 (= e!4670108 e!4670111)))

(declare-fun bm!733810 () Bool)

(declare-fun call!733817 () C!43070)

(declare-fun head!16174 (List!74496) C!43070)

(assert (=> bm!733810 (= call!733817 (head!16174 input!1480))))

(declare-fun b!7911396 () Bool)

(declare-fun e!4670106 () tuple2!70436)

(assert (=> b!7911396 (= e!4670106 e!4670108)))

(declare-fun c!1451492 () Bool)

(assert (=> b!7911396 (= c!1451492 (= lt!2687534 lt!2687535))))

(declare-fun bm!733811 () Bool)

(declare-fun lemmaIsPrefixRefl!3994 (List!74496 List!74496) Unit!169433)

(assert (=> bm!733811 (= call!733815 (lemmaIsPrefixRefl!3994 input!1480 input!1480))))

(declare-fun b!7911397 () Bool)

(declare-fun e!4670109 () tuple2!70436)

(declare-fun e!4670113 () tuple2!70436)

(assert (=> b!7911397 (= e!4670109 e!4670113)))

(declare-fun lt!2687693 () tuple2!70436)

(declare-fun call!733820 () tuple2!70436)

(assert (=> b!7911397 (= lt!2687693 call!733820)))

(declare-fun c!1451491 () Bool)

(assert (=> b!7911397 (= c!1451491 (isEmpty!42704 (_1!38521 lt!2687693)))))

(declare-fun bm!733813 () Bool)

(assert (=> bm!733813 (= call!733819 (nullable!9511 (regex!8667 rule!156)))))

(declare-fun b!7911398 () Bool)

(assert (=> b!7911398 (= e!4670111 (tuple2!70437 Nil!74372 Nil!74372))))

(declare-fun bm!733814 () Bool)

(declare-fun call!733816 () Regex!21370)

(declare-fun derivativeStep!6453 (Regex!21370 C!43070) Regex!21370)

(assert (=> bm!733814 (= call!733816 (derivativeStep!6453 (regex!8667 rule!156) call!733817))))

(declare-fun bm!733815 () Bool)

(declare-fun isPrefix!6482 (List!74496 List!74496) Bool)

(assert (=> bm!733815 (= call!733822 (isPrefix!6482 input!1480 input!1480))))

(declare-fun b!7911399 () Bool)

(declare-fun e!4670112 () Bool)

(declare-fun lt!2687671 () tuple2!70436)

(assert (=> b!7911399 (= e!4670112 (>= (size!43150 (_1!38521 lt!2687671)) (size!43150 Nil!74372)))))

(declare-fun b!7911400 () Bool)

(assert (=> b!7911400 (= e!4670113 (tuple2!70437 Nil!74372 input!1480))))

(declare-fun b!7911401 () Bool)

(declare-fun e!4670107 () Bool)

(assert (=> b!7911401 (= e!4670107 e!4670112)))

(declare-fun res!3140088 () Bool)

(assert (=> b!7911401 (=> res!3140088 e!4670112)))

(assert (=> b!7911401 (= res!3140088 (isEmpty!42704 (_1!38521 lt!2687671)))))

(declare-fun b!7911402 () Bool)

(declare-fun c!1451488 () Bool)

(assert (=> b!7911402 (= c!1451488 call!733819)))

(declare-fun lt!2687687 () Unit!169433)

(declare-fun lt!2687690 () Unit!169433)

(assert (=> b!7911402 (= lt!2687687 lt!2687690)))

(declare-fun lt!2687670 () C!43070)

(declare-fun lt!2687669 () List!74496)

(assert (=> b!7911402 (= (++!18213 (++!18213 Nil!74372 (Cons!74372 lt!2687670 Nil!74372)) lt!2687669) input!1480)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3482 (List!74496 C!43070 List!74496 List!74496) Unit!169433)

(assert (=> b!7911402 (= lt!2687690 (lemmaMoveElementToOtherListKeepsConcatEq!3482 Nil!74372 lt!2687670 lt!2687669 input!1480))))

(declare-fun tail!15717 (List!74496) List!74496)

(assert (=> b!7911402 (= lt!2687669 (tail!15717 input!1480))))

(assert (=> b!7911402 (= lt!2687670 (head!16174 input!1480))))

(declare-fun lt!2687686 () Unit!169433)

(declare-fun lt!2687677 () Unit!169433)

(assert (=> b!7911402 (= lt!2687686 lt!2687677)))

(declare-fun getSuffix!3695 (List!74496 List!74496) List!74496)

(assert (=> b!7911402 (isPrefix!6482 (++!18213 Nil!74372 (Cons!74372 (head!16174 (getSuffix!3695 input!1480 Nil!74372)) Nil!74372)) input!1480)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1260 (List!74496 List!74496) Unit!169433)

(assert (=> b!7911402 (= lt!2687677 (lemmaAddHeadSuffixToPrefixStillPrefix!1260 Nil!74372 input!1480))))

(declare-fun lt!2687674 () Unit!169433)

(declare-fun lt!2687675 () Unit!169433)

(assert (=> b!7911402 (= lt!2687674 lt!2687675)))

(assert (=> b!7911402 (= lt!2687675 (lemmaAddHeadSuffixToPrefixStillPrefix!1260 Nil!74372 input!1480))))

(declare-fun lt!2687683 () List!74496)

(assert (=> b!7911402 (= lt!2687683 (++!18213 Nil!74372 (Cons!74372 (head!16174 input!1480) Nil!74372)))))

(declare-fun lt!2687681 () Unit!169433)

(declare-fun e!4670110 () Unit!169433)

(assert (=> b!7911402 (= lt!2687681 e!4670110)))

(declare-fun c!1451487 () Bool)

(assert (=> b!7911402 (= c!1451487 (= (size!43150 Nil!74372) (size!43150 input!1480)))))

(declare-fun lt!2687689 () Unit!169433)

(declare-fun lt!2687688 () Unit!169433)

(assert (=> b!7911402 (= lt!2687689 lt!2687688)))

(assert (=> b!7911402 (<= (size!43150 Nil!74372) (size!43150 input!1480))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1040 (List!74496 List!74496) Unit!169433)

(assert (=> b!7911402 (= lt!2687688 (lemmaIsPrefixThenSmallerEqSize!1040 Nil!74372 input!1480))))

(assert (=> b!7911402 (= e!4670108 e!4670109)))

(declare-fun b!7911403 () Bool)

(assert (=> b!7911403 (= e!4670109 call!733820)))

(declare-fun b!7911404 () Bool)

(declare-fun Unit!169438 () Unit!169433)

(assert (=> b!7911404 (= e!4670110 Unit!169438)))

(declare-fun lt!2687667 () Unit!169433)

(assert (=> b!7911404 (= lt!2687667 call!733815)))

(assert (=> b!7911404 call!733822))

(declare-fun lt!2687679 () Unit!169433)

(assert (=> b!7911404 (= lt!2687679 lt!2687667)))

(declare-fun lt!2687691 () Unit!169433)

(assert (=> b!7911404 (= lt!2687691 call!733821)))

(assert (=> b!7911404 (= input!1480 Nil!74372)))

(declare-fun lt!2687676 () Unit!169433)

(assert (=> b!7911404 (= lt!2687676 lt!2687691)))

(assert (=> b!7911404 false))

(declare-fun bm!733816 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1575 (List!74496 List!74496 List!74496) Unit!169433)

(assert (=> bm!733816 (= call!733821 (lemmaIsPrefixSameLengthThenSameList!1575 input!1480 Nil!74372 input!1480))))

(declare-fun b!7911405 () Bool)

(assert (=> b!7911405 (= e!4670106 (tuple2!70437 Nil!74372 input!1480))))

(declare-fun b!7911406 () Bool)

(declare-fun Unit!169439 () Unit!169433)

(assert (=> b!7911406 (= e!4670110 Unit!169439)))

(declare-fun bm!733812 () Bool)

(declare-fun call!733818 () List!74496)

(assert (=> bm!733812 (= call!733818 (tail!15717 input!1480))))

(declare-fun d!2360326 () Bool)

(assert (=> d!2360326 e!4670107))

(declare-fun res!3140089 () Bool)

(assert (=> d!2360326 (=> (not res!3140089) (not e!4670107))))

(assert (=> d!2360326 (= res!3140089 (= (++!18213 (_1!38521 lt!2687671) (_2!38521 lt!2687671)) input!1480))))

(assert (=> d!2360326 (= lt!2687671 e!4670106)))

(declare-fun c!1451490 () Bool)

(declare-fun lostCause!1927 (Regex!21370) Bool)

(assert (=> d!2360326 (= c!1451490 (lostCause!1927 (regex!8667 rule!156)))))

(declare-fun lt!2687692 () Unit!169433)

(declare-fun Unit!169440 () Unit!169433)

(assert (=> d!2360326 (= lt!2687692 Unit!169440)))

(assert (=> d!2360326 (= (getSuffix!3695 input!1480 Nil!74372) input!1480)))

(declare-fun lt!2687684 () Unit!169433)

(declare-fun lt!2687680 () Unit!169433)

(assert (=> d!2360326 (= lt!2687684 lt!2687680)))

(declare-fun lt!2687685 () List!74496)

(assert (=> d!2360326 (= input!1480 lt!2687685)))

(declare-fun lemmaSamePrefixThenSameSuffix!2943 (List!74496 List!74496 List!74496 List!74496 List!74496) Unit!169433)

(assert (=> d!2360326 (= lt!2687680 (lemmaSamePrefixThenSameSuffix!2943 Nil!74372 input!1480 Nil!74372 lt!2687685 input!1480))))

(assert (=> d!2360326 (= lt!2687685 (getSuffix!3695 input!1480 Nil!74372))))

(declare-fun lt!2687682 () Unit!169433)

(declare-fun lt!2687668 () Unit!169433)

(assert (=> d!2360326 (= lt!2687682 lt!2687668)))

(assert (=> d!2360326 (isPrefix!6482 Nil!74372 (++!18213 Nil!74372 input!1480))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3805 (List!74496 List!74496) Unit!169433)

(assert (=> d!2360326 (= lt!2687668 (lemmaConcatTwoListThenFirstIsPrefix!3805 Nil!74372 input!1480))))

(assert (=> d!2360326 (validRegex!11676 (regex!8667 rule!156))))

(assert (=> d!2360326 (= (findLongestMatchInner!2177 (regex!8667 rule!156) Nil!74372 lt!2687534 input!1480 input!1480 lt!2687535) lt!2687671)))

(declare-fun b!7911407 () Bool)

(assert (=> b!7911407 (= e!4670113 lt!2687693)))

(declare-fun bm!733817 () Bool)

(assert (=> bm!733817 (= call!733820 (findLongestMatchInner!2177 call!733816 lt!2687683 (+ lt!2687534 1) call!733818 input!1480 lt!2687535))))

(assert (= (and d!2360326 c!1451490) b!7911405))

(assert (= (and d!2360326 (not c!1451490)) b!7911396))

(assert (= (and b!7911396 c!1451492) b!7911395))

(assert (= (and b!7911396 (not c!1451492)) b!7911402))

(assert (= (and b!7911395 c!1451489) b!7911398))

(assert (= (and b!7911395 (not c!1451489)) b!7911394))

(assert (= (and b!7911402 c!1451487) b!7911404))

(assert (= (and b!7911402 (not c!1451487)) b!7911406))

(assert (= (and b!7911402 c!1451488) b!7911397))

(assert (= (and b!7911402 (not c!1451488)) b!7911403))

(assert (= (and b!7911397 c!1451491) b!7911400))

(assert (= (and b!7911397 (not c!1451491)) b!7911407))

(assert (= (or b!7911397 b!7911403) bm!733810))

(assert (= (or b!7911397 b!7911403) bm!733812))

(assert (= (or b!7911397 b!7911403) bm!733814))

(assert (= (or b!7911397 b!7911403) bm!733817))

(assert (= (or b!7911395 b!7911402) bm!733813))

(assert (= (or b!7911395 b!7911404) bm!733815))

(assert (= (or b!7911395 b!7911404) bm!733811))

(assert (= (or b!7911395 b!7911404) bm!733816))

(assert (= (and d!2360326 res!3140089) b!7911401))

(assert (= (and b!7911401 (not res!3140088)) b!7911399))

(declare-fun m!8285002 () Bool)

(assert (=> b!7911401 m!8285002))

(declare-fun m!8285004 () Bool)

(assert (=> bm!733817 m!8285004))

(declare-fun m!8285006 () Bool)

(assert (=> d!2360326 m!8285006))

(declare-fun m!8285008 () Bool)

(assert (=> d!2360326 m!8285008))

(declare-fun m!8285010 () Bool)

(assert (=> d!2360326 m!8285010))

(declare-fun m!8285012 () Bool)

(assert (=> d!2360326 m!8285012))

(assert (=> d!2360326 m!8284944))

(assert (=> d!2360326 m!8285012))

(declare-fun m!8285014 () Bool)

(assert (=> d!2360326 m!8285014))

(declare-fun m!8285016 () Bool)

(assert (=> d!2360326 m!8285016))

(declare-fun m!8285018 () Bool)

(assert (=> d!2360326 m!8285018))

(assert (=> bm!733813 m!8284946))

(declare-fun m!8285020 () Bool)

(assert (=> bm!733810 m!8285020))

(declare-fun m!8285022 () Bool)

(assert (=> bm!733812 m!8285022))

(declare-fun m!8285024 () Bool)

(assert (=> bm!733815 m!8285024))

(declare-fun m!8285026 () Bool)

(assert (=> bm!733811 m!8285026))

(declare-fun m!8285028 () Bool)

(assert (=> bm!733816 m!8285028))

(declare-fun m!8285030 () Bool)

(assert (=> bm!733814 m!8285030))

(declare-fun m!8285032 () Bool)

(assert (=> b!7911397 m!8285032))

(assert (=> b!7911402 m!8285020))

(declare-fun m!8285034 () Bool)

(assert (=> b!7911402 m!8285034))

(declare-fun m!8285036 () Bool)

(assert (=> b!7911402 m!8285036))

(declare-fun m!8285038 () Bool)

(assert (=> b!7911402 m!8285038))

(assert (=> b!7911402 m!8284874))

(assert (=> b!7911402 m!8285016))

(declare-fun m!8285040 () Bool)

(assert (=> b!7911402 m!8285040))

(declare-fun m!8285042 () Bool)

(assert (=> b!7911402 m!8285042))

(declare-fun m!8285044 () Bool)

(assert (=> b!7911402 m!8285044))

(assert (=> b!7911402 m!8285034))

(declare-fun m!8285046 () Bool)

(assert (=> b!7911402 m!8285046))

(assert (=> b!7911402 m!8285016))

(declare-fun m!8285048 () Bool)

(assert (=> b!7911402 m!8285048))

(assert (=> b!7911402 m!8284868))

(assert (=> b!7911402 m!8285042))

(assert (=> b!7911402 m!8285022))

(declare-fun m!8285050 () Bool)

(assert (=> b!7911402 m!8285050))

(declare-fun m!8285052 () Bool)

(assert (=> b!7911399 m!8285052))

(assert (=> b!7911399 m!8284874))

(assert (=> b!7911292 d!2360326))

(declare-fun d!2360328 () Bool)

(assert (=> d!2360328 (= (isEmpty!42704 (_1!38521 lt!2687537)) (is-Nil!74372 (_1!38521 lt!2687537)))))

(assert (=> b!7911292 d!2360328))

(declare-fun d!2360330 () Bool)

(declare-fun lt!2687697 () Int)

(assert (=> d!2360330 (= lt!2687697 (size!43150 (list!19319 lt!2687540)))))

(declare-fun size!43155 (Conc!15841) Int)

(assert (=> d!2360330 (= lt!2687697 (size!43155 (c!1451460 lt!2687540)))))

(assert (=> d!2360330 (= (size!43151 lt!2687540) lt!2687697)))

(declare-fun bs!1968268 () Bool)

(assert (= bs!1968268 d!2360330))

(assert (=> bs!1968268 m!8284996))

(assert (=> bs!1968268 m!8284996))

(declare-fun m!8285054 () Bool)

(assert (=> bs!1968268 m!8285054))

(declare-fun m!8285056 () Bool)

(assert (=> bs!1968268 m!8285056))

(assert (=> b!7911292 d!2360330))

(declare-fun d!2360332 () Bool)

(assert (=> d!2360332 (= (isEmpty!42705 lt!2687539) (not (is-Some!17944 lt!2687539)))))

(assert (=> b!7911292 d!2360332))

(declare-fun d!2360334 () Bool)

(declare-fun e!4670116 () Bool)

(assert (=> d!2360334 e!4670116))

(declare-fun res!3140092 () Bool)

(assert (=> d!2360334 (=> res!3140092 e!4670116)))

(assert (=> d!2360334 (= res!3140092 (isEmpty!42704 (_1!38521 (findLongestMatchInner!2177 (regex!8667 rule!156) Nil!74372 (size!43150 Nil!74372) input!1480 input!1480 (size!43150 input!1480)))))))

(declare-fun lt!2687700 () Unit!169433)

(declare-fun choose!59746 (Regex!21370 List!74496) Unit!169433)

(assert (=> d!2360334 (= lt!2687700 (choose!59746 (regex!8667 rule!156) input!1480))))

(assert (=> d!2360334 (validRegex!11676 (regex!8667 rule!156))))

(assert (=> d!2360334 (= (longestMatchIsAcceptedByMatchOrIsEmpty!2140 (regex!8667 rule!156) input!1480) lt!2687700)))

(declare-fun b!7911410 () Bool)

(assert (=> b!7911410 (= e!4670116 (matchR!10691 (regex!8667 rule!156) (_1!38521 (findLongestMatchInner!2177 (regex!8667 rule!156) Nil!74372 (size!43150 Nil!74372) input!1480 input!1480 (size!43150 input!1480)))))))

(assert (= (and d!2360334 (not res!3140092)) b!7911410))

(assert (=> d!2360334 m!8284874))

(assert (=> d!2360334 m!8284944))

(declare-fun m!8285058 () Bool)

(assert (=> d!2360334 m!8285058))

(assert (=> d!2360334 m!8284868))

(declare-fun m!8285060 () Bool)

(assert (=> d!2360334 m!8285060))

(assert (=> d!2360334 m!8284874))

(assert (=> d!2360334 m!8284868))

(declare-fun m!8285062 () Bool)

(assert (=> d!2360334 m!8285062))

(assert (=> b!7911410 m!8284874))

(assert (=> b!7911410 m!8284868))

(assert (=> b!7911410 m!8284874))

(assert (=> b!7911410 m!8284868))

(assert (=> b!7911410 m!8285062))

(declare-fun m!8285064 () Bool)

(assert (=> b!7911410 m!8285064))

(assert (=> b!7911292 d!2360334))

(declare-fun bm!733820 () Bool)

(declare-fun call!733825 () Bool)

(assert (=> bm!733820 (= call!733825 (isEmpty!42704 lt!2687531))))

(declare-fun b!7911439 () Bool)

(declare-fun res!3140115 () Bool)

(declare-fun e!4670133 () Bool)

(assert (=> b!7911439 (=> res!3140115 e!4670133)))

(assert (=> b!7911439 (= res!3140115 (not (isEmpty!42704 (tail!15717 lt!2687531))))))

(declare-fun b!7911440 () Bool)

(declare-fun e!4670134 () Bool)

(declare-fun lt!2687703 () Bool)

(assert (=> b!7911440 (= e!4670134 (= lt!2687703 call!733825))))

(declare-fun b!7911441 () Bool)

(declare-fun e!4670137 () Bool)

(declare-fun e!4670136 () Bool)

(assert (=> b!7911441 (= e!4670137 e!4670136)))

(declare-fun res!3140113 () Bool)

(assert (=> b!7911441 (=> (not res!3140113) (not e!4670136))))

(assert (=> b!7911441 (= res!3140113 (not lt!2687703))))

(declare-fun b!7911442 () Bool)

(declare-fun e!4670135 () Bool)

(assert (=> b!7911442 (= e!4670134 e!4670135)))

(declare-fun c!1451499 () Bool)

(assert (=> b!7911442 (= c!1451499 (is-EmptyLang!21370 (regex!8667 rule!156)))))

(declare-fun b!7911443 () Bool)

(declare-fun e!4670132 () Bool)

(assert (=> b!7911443 (= e!4670132 (matchR!10691 (derivativeStep!6453 (regex!8667 rule!156) (head!16174 lt!2687531)) (tail!15717 lt!2687531)))))

(declare-fun b!7911444 () Bool)

(assert (=> b!7911444 (= e!4670132 (nullable!9511 (regex!8667 rule!156)))))

(declare-fun b!7911445 () Bool)

(assert (=> b!7911445 (= e!4670133 (not (= (head!16174 lt!2687531) (c!1451461 (regex!8667 rule!156)))))))

(declare-fun b!7911446 () Bool)

(assert (=> b!7911446 (= e!4670135 (not lt!2687703))))

(declare-fun d!2360336 () Bool)

(assert (=> d!2360336 e!4670134))

(declare-fun c!1451501 () Bool)

(assert (=> d!2360336 (= c!1451501 (is-EmptyExpr!21370 (regex!8667 rule!156)))))

(assert (=> d!2360336 (= lt!2687703 e!4670132)))

(declare-fun c!1451500 () Bool)

(assert (=> d!2360336 (= c!1451500 (isEmpty!42704 lt!2687531))))

(assert (=> d!2360336 (validRegex!11676 (regex!8667 rule!156))))

(assert (=> d!2360336 (= (matchR!10691 (regex!8667 rule!156) lt!2687531) lt!2687703)))

(declare-fun b!7911447 () Bool)

(declare-fun res!3140111 () Bool)

(declare-fun e!4670131 () Bool)

(assert (=> b!7911447 (=> (not res!3140111) (not e!4670131))))

(assert (=> b!7911447 (= res!3140111 (not call!733825))))

(declare-fun b!7911448 () Bool)

(assert (=> b!7911448 (= e!4670131 (= (head!16174 lt!2687531) (c!1451461 (regex!8667 rule!156))))))

(declare-fun b!7911449 () Bool)

(declare-fun res!3140110 () Bool)

(assert (=> b!7911449 (=> res!3140110 e!4670137)))

(assert (=> b!7911449 (= res!3140110 (not (is-ElementMatch!21370 (regex!8667 rule!156))))))

(assert (=> b!7911449 (= e!4670135 e!4670137)))

(declare-fun b!7911450 () Bool)

(declare-fun res!3140112 () Bool)

(assert (=> b!7911450 (=> (not res!3140112) (not e!4670131))))

(assert (=> b!7911450 (= res!3140112 (isEmpty!42704 (tail!15717 lt!2687531)))))

(declare-fun b!7911451 () Bool)

(declare-fun res!3140116 () Bool)

(assert (=> b!7911451 (=> res!3140116 e!4670137)))

(assert (=> b!7911451 (= res!3140116 e!4670131)))

(declare-fun res!3140109 () Bool)

(assert (=> b!7911451 (=> (not res!3140109) (not e!4670131))))

(assert (=> b!7911451 (= res!3140109 lt!2687703)))

(declare-fun b!7911452 () Bool)

(assert (=> b!7911452 (= e!4670136 e!4670133)))

(declare-fun res!3140114 () Bool)

(assert (=> b!7911452 (=> res!3140114 e!4670133)))

(assert (=> b!7911452 (= res!3140114 call!733825)))

(assert (= (and d!2360336 c!1451500) b!7911444))

(assert (= (and d!2360336 (not c!1451500)) b!7911443))

(assert (= (and d!2360336 c!1451501) b!7911440))

(assert (= (and d!2360336 (not c!1451501)) b!7911442))

(assert (= (and b!7911442 c!1451499) b!7911446))

(assert (= (and b!7911442 (not c!1451499)) b!7911449))

(assert (= (and b!7911449 (not res!3140110)) b!7911451))

(assert (= (and b!7911451 res!3140109) b!7911447))

(assert (= (and b!7911447 res!3140111) b!7911450))

(assert (= (and b!7911450 res!3140112) b!7911448))

(assert (= (and b!7911451 (not res!3140116)) b!7911441))

(assert (= (and b!7911441 res!3140113) b!7911452))

(assert (= (and b!7911452 (not res!3140114)) b!7911439))

(assert (= (and b!7911439 (not res!3140115)) b!7911445))

(assert (= (or b!7911440 b!7911447 b!7911452) bm!733820))

(declare-fun m!8285066 () Bool)

(assert (=> b!7911450 m!8285066))

(assert (=> b!7911450 m!8285066))

(declare-fun m!8285068 () Bool)

(assert (=> b!7911450 m!8285068))

(assert (=> b!7911439 m!8285066))

(assert (=> b!7911439 m!8285066))

(assert (=> b!7911439 m!8285068))

(declare-fun m!8285070 () Bool)

(assert (=> b!7911443 m!8285070))

(assert (=> b!7911443 m!8285070))

(declare-fun m!8285072 () Bool)

(assert (=> b!7911443 m!8285072))

(assert (=> b!7911443 m!8285066))

(assert (=> b!7911443 m!8285072))

(assert (=> b!7911443 m!8285066))

(declare-fun m!8285074 () Bool)

(assert (=> b!7911443 m!8285074))

(assert (=> b!7911444 m!8284946))

(assert (=> b!7911445 m!8285070))

(declare-fun m!8285076 () Bool)

(assert (=> d!2360336 m!8285076))

(assert (=> d!2360336 m!8284944))

(assert (=> b!7911448 m!8285070))

(assert (=> bm!733820 m!8285076))

(assert (=> b!7911287 d!2360336))

(declare-fun d!2360338 () Bool)

(declare-fun list!19321 (Conc!15841) List!74496)

(assert (=> d!2360338 (= (list!19319 (charsOf!5605 (_1!38520 lt!2687532))) (list!19321 (c!1451460 (charsOf!5605 (_1!38520 lt!2687532)))))))

(declare-fun bs!1968269 () Bool)

(assert (= bs!1968269 d!2360338))

(declare-fun m!8285078 () Bool)

(assert (=> bs!1968269 m!8285078))

(assert (=> b!7911287 d!2360338))

(declare-fun d!2360340 () Bool)

(declare-fun lt!2687706 () BalanceConc!30800)

(assert (=> d!2360340 (= (list!19319 lt!2687706) (originalCharacters!8904 (_1!38520 lt!2687532)))))

(assert (=> d!2360340 (= lt!2687706 (dynLambda!30162 (toChars!11583 (transformation!8667 (rule!11967 (_1!38520 lt!2687532)))) (value!288988 (_1!38520 lt!2687532))))))

(assert (=> d!2360340 (= (charsOf!5605 (_1!38520 lt!2687532)) lt!2687706)))

(declare-fun b_lambda!290073 () Bool)

(assert (=> (not b_lambda!290073) (not d!2360340)))

(declare-fun t!389913 () Bool)

(declare-fun tb!263251 () Bool)

(assert (=> (and b!7911283 (= (toChars!11583 (transformation!8667 rule!156)) (toChars!11583 (transformation!8667 (rule!11967 (_1!38520 lt!2687532))))) t!389913) tb!263251))

(declare-fun b!7911453 () Bool)

(declare-fun e!4670138 () Bool)

(declare-fun tp!2356612 () Bool)

(assert (=> b!7911453 (= e!4670138 (and (inv!95433 (c!1451460 (dynLambda!30162 (toChars!11583 (transformation!8667 (rule!11967 (_1!38520 lt!2687532)))) (value!288988 (_1!38520 lt!2687532))))) tp!2356612))))

(declare-fun result!360598 () Bool)

(assert (=> tb!263251 (= result!360598 (and (inv!95434 (dynLambda!30162 (toChars!11583 (transformation!8667 (rule!11967 (_1!38520 lt!2687532)))) (value!288988 (_1!38520 lt!2687532)))) e!4670138))))

(assert (= tb!263251 b!7911453))

(declare-fun m!8285080 () Bool)

(assert (=> b!7911453 m!8285080))

(declare-fun m!8285082 () Bool)

(assert (=> tb!263251 m!8285082))

(assert (=> d!2360340 t!389913))

(declare-fun b_and!353545 () Bool)

(assert (= b_and!353541 (and (=> t!389913 result!360598) b_and!353545)))

(declare-fun m!8285084 () Bool)

(assert (=> d!2360340 m!8285084))

(declare-fun m!8285086 () Bool)

(assert (=> d!2360340 m!8285086))

(assert (=> b!7911287 d!2360340))

(declare-fun d!2360342 () Bool)

(assert (=> d!2360342 (= (get!26749 lt!2687539) (v!55101 lt!2687539))))

(assert (=> b!7911287 d!2360342))

(declare-fun d!2360344 () Bool)

(declare-fun lt!2687707 () Int)

(assert (=> d!2360344 (>= lt!2687707 0)))

(declare-fun e!4670139 () Int)

(assert (=> d!2360344 (= lt!2687707 e!4670139)))

(declare-fun c!1451502 () Bool)

(assert (=> d!2360344 (= c!1451502 (is-Nil!74372 (_2!38520 lt!2687532)))))

(assert (=> d!2360344 (= (size!43150 (_2!38520 lt!2687532)) lt!2687707)))

(declare-fun b!7911454 () Bool)

(assert (=> b!7911454 (= e!4670139 0)))

(declare-fun b!7911455 () Bool)

(assert (=> b!7911455 (= e!4670139 (+ 1 (size!43150 (t!389905 (_2!38520 lt!2687532)))))))

(assert (= (and d!2360344 c!1451502) b!7911454))

(assert (= (and d!2360344 (not c!1451502)) b!7911455))

(declare-fun m!8285088 () Bool)

(assert (=> b!7911455 m!8285088))

(assert (=> b!7911282 d!2360344))

(declare-fun d!2360346 () Bool)

(assert (=> d!2360346 (= (isEmpty!42704 (_1!38521 lt!2687533)) (is-Nil!74372 (_1!38521 lt!2687533)))))

(assert (=> b!7911288 d!2360346))

(declare-fun d!2360348 () Bool)

(declare-fun lt!2687724 () tuple2!70436)

(assert (=> d!2360348 (= (++!18213 (_1!38521 lt!2687724) (_2!38521 lt!2687724)) input!1480)))

(declare-fun sizeTr!464 (List!74496 Int) Int)

(assert (=> d!2360348 (= lt!2687724 (findLongestMatchInner!2177 (regex!8667 rule!156) Nil!74372 0 input!1480 input!1480 (sizeTr!464 input!1480 0)))))

(declare-fun lt!2687726 () Unit!169433)

(declare-fun lt!2687731 () Unit!169433)

(assert (=> d!2360348 (= lt!2687726 lt!2687731)))

(declare-fun lt!2687727 () List!74496)

(declare-fun lt!2687730 () Int)

(assert (=> d!2360348 (= (sizeTr!464 lt!2687727 lt!2687730) (+ (size!43150 lt!2687727) lt!2687730))))

(declare-fun lemmaSizeTrEqualsSize!463 (List!74496 Int) Unit!169433)

(assert (=> d!2360348 (= lt!2687731 (lemmaSizeTrEqualsSize!463 lt!2687727 lt!2687730))))

(assert (=> d!2360348 (= lt!2687730 0)))

(assert (=> d!2360348 (= lt!2687727 Nil!74372)))

(declare-fun lt!2687728 () Unit!169433)

(declare-fun lt!2687725 () Unit!169433)

(assert (=> d!2360348 (= lt!2687728 lt!2687725)))

(declare-fun lt!2687729 () Int)

(assert (=> d!2360348 (= (sizeTr!464 input!1480 lt!2687729) (+ (size!43150 input!1480) lt!2687729))))

(assert (=> d!2360348 (= lt!2687725 (lemmaSizeTrEqualsSize!463 input!1480 lt!2687729))))

(assert (=> d!2360348 (= lt!2687729 0)))

(assert (=> d!2360348 (validRegex!11676 (regex!8667 rule!156))))

(assert (=> d!2360348 (= (findLongestMatch!1960 (regex!8667 rule!156) input!1480) lt!2687724)))

(declare-fun bs!1968270 () Bool)

(assert (= bs!1968270 d!2360348))

(declare-fun m!8285090 () Bool)

(assert (=> bs!1968270 m!8285090))

(declare-fun m!8285092 () Bool)

(assert (=> bs!1968270 m!8285092))

(declare-fun m!8285094 () Bool)

(assert (=> bs!1968270 m!8285094))

(assert (=> bs!1968270 m!8284944))

(declare-fun m!8285096 () Bool)

(assert (=> bs!1968270 m!8285096))

(assert (=> bs!1968270 m!8285094))

(declare-fun m!8285098 () Bool)

(assert (=> bs!1968270 m!8285098))

(declare-fun m!8285100 () Bool)

(assert (=> bs!1968270 m!8285100))

(declare-fun m!8285102 () Bool)

(assert (=> bs!1968270 m!8285102))

(assert (=> bs!1968270 m!8284868))

(declare-fun m!8285104 () Bool)

(assert (=> bs!1968270 m!8285104))

(assert (=> b!7911288 d!2360348))

(declare-fun bm!733821 () Bool)

(declare-fun call!733826 () Bool)

(assert (=> bm!733821 (= call!733826 (isEmpty!42704 (_1!38521 lt!2687537)))))

(declare-fun b!7911456 () Bool)

(declare-fun res!3140123 () Bool)

(declare-fun e!4670142 () Bool)

(assert (=> b!7911456 (=> res!3140123 e!4670142)))

(assert (=> b!7911456 (= res!3140123 (not (isEmpty!42704 (tail!15717 (_1!38521 lt!2687537)))))))

(declare-fun b!7911457 () Bool)

(declare-fun e!4670143 () Bool)

(declare-fun lt!2687732 () Bool)

(assert (=> b!7911457 (= e!4670143 (= lt!2687732 call!733826))))

(declare-fun b!7911458 () Bool)

(declare-fun e!4670146 () Bool)

(declare-fun e!4670145 () Bool)

(assert (=> b!7911458 (= e!4670146 e!4670145)))

(declare-fun res!3140121 () Bool)

(assert (=> b!7911458 (=> (not res!3140121) (not e!4670145))))

(assert (=> b!7911458 (= res!3140121 (not lt!2687732))))

(declare-fun b!7911459 () Bool)

(declare-fun e!4670144 () Bool)

(assert (=> b!7911459 (= e!4670143 e!4670144)))

(declare-fun c!1451503 () Bool)

(assert (=> b!7911459 (= c!1451503 (is-EmptyLang!21370 (regex!8667 rule!156)))))

(declare-fun b!7911460 () Bool)

(declare-fun e!4670141 () Bool)

(assert (=> b!7911460 (= e!4670141 (matchR!10691 (derivativeStep!6453 (regex!8667 rule!156) (head!16174 (_1!38521 lt!2687537))) (tail!15717 (_1!38521 lt!2687537))))))

(declare-fun b!7911461 () Bool)

(assert (=> b!7911461 (= e!4670141 (nullable!9511 (regex!8667 rule!156)))))

(declare-fun b!7911462 () Bool)

(assert (=> b!7911462 (= e!4670142 (not (= (head!16174 (_1!38521 lt!2687537)) (c!1451461 (regex!8667 rule!156)))))))

(declare-fun b!7911463 () Bool)

(assert (=> b!7911463 (= e!4670144 (not lt!2687732))))

(declare-fun d!2360350 () Bool)

(assert (=> d!2360350 e!4670143))

(declare-fun c!1451505 () Bool)

(assert (=> d!2360350 (= c!1451505 (is-EmptyExpr!21370 (regex!8667 rule!156)))))

(assert (=> d!2360350 (= lt!2687732 e!4670141)))

(declare-fun c!1451504 () Bool)

(assert (=> d!2360350 (= c!1451504 (isEmpty!42704 (_1!38521 lt!2687537)))))

(assert (=> d!2360350 (validRegex!11676 (regex!8667 rule!156))))

(assert (=> d!2360350 (= (matchR!10691 (regex!8667 rule!156) (_1!38521 lt!2687537)) lt!2687732)))

(declare-fun b!7911464 () Bool)

(declare-fun res!3140119 () Bool)

(declare-fun e!4670140 () Bool)

(assert (=> b!7911464 (=> (not res!3140119) (not e!4670140))))

(assert (=> b!7911464 (= res!3140119 (not call!733826))))

(declare-fun b!7911465 () Bool)

(assert (=> b!7911465 (= e!4670140 (= (head!16174 (_1!38521 lt!2687537)) (c!1451461 (regex!8667 rule!156))))))

(declare-fun b!7911466 () Bool)

(declare-fun res!3140118 () Bool)

(assert (=> b!7911466 (=> res!3140118 e!4670146)))

(assert (=> b!7911466 (= res!3140118 (not (is-ElementMatch!21370 (regex!8667 rule!156))))))

(assert (=> b!7911466 (= e!4670144 e!4670146)))

(declare-fun b!7911467 () Bool)

(declare-fun res!3140120 () Bool)

(assert (=> b!7911467 (=> (not res!3140120) (not e!4670140))))

(assert (=> b!7911467 (= res!3140120 (isEmpty!42704 (tail!15717 (_1!38521 lt!2687537))))))

(declare-fun b!7911468 () Bool)

(declare-fun res!3140124 () Bool)

(assert (=> b!7911468 (=> res!3140124 e!4670146)))

(assert (=> b!7911468 (= res!3140124 e!4670140)))

(declare-fun res!3140117 () Bool)

(assert (=> b!7911468 (=> (not res!3140117) (not e!4670140))))

(assert (=> b!7911468 (= res!3140117 lt!2687732)))

(declare-fun b!7911469 () Bool)

(assert (=> b!7911469 (= e!4670145 e!4670142)))

(declare-fun res!3140122 () Bool)

(assert (=> b!7911469 (=> res!3140122 e!4670142)))

(assert (=> b!7911469 (= res!3140122 call!733826)))

(assert (= (and d!2360350 c!1451504) b!7911461))

(assert (= (and d!2360350 (not c!1451504)) b!7911460))

(assert (= (and d!2360350 c!1451505) b!7911457))

(assert (= (and d!2360350 (not c!1451505)) b!7911459))

(assert (= (and b!7911459 c!1451503) b!7911463))

(assert (= (and b!7911459 (not c!1451503)) b!7911466))

(assert (= (and b!7911466 (not res!3140118)) b!7911468))

(assert (= (and b!7911468 res!3140117) b!7911464))

(assert (= (and b!7911464 res!3140119) b!7911467))

(assert (= (and b!7911467 res!3140120) b!7911465))

(assert (= (and b!7911468 (not res!3140124)) b!7911458))

(assert (= (and b!7911458 res!3140121) b!7911469))

(assert (= (and b!7911469 (not res!3140122)) b!7911456))

(assert (= (and b!7911456 (not res!3140123)) b!7911462))

(assert (= (or b!7911457 b!7911464 b!7911469) bm!733821))

(declare-fun m!8285106 () Bool)

(assert (=> b!7911467 m!8285106))

(assert (=> b!7911467 m!8285106))

(declare-fun m!8285108 () Bool)

(assert (=> b!7911467 m!8285108))

(assert (=> b!7911456 m!8285106))

(assert (=> b!7911456 m!8285106))

(assert (=> b!7911456 m!8285108))

(declare-fun m!8285110 () Bool)

(assert (=> b!7911460 m!8285110))

(assert (=> b!7911460 m!8285110))

(declare-fun m!8285112 () Bool)

(assert (=> b!7911460 m!8285112))

(assert (=> b!7911460 m!8285106))

(assert (=> b!7911460 m!8285112))

(assert (=> b!7911460 m!8285106))

(declare-fun m!8285114 () Bool)

(assert (=> b!7911460 m!8285114))

(assert (=> b!7911461 m!8284946))

(assert (=> b!7911462 m!8285110))

(assert (=> d!2360350 m!8284870))

(assert (=> d!2360350 m!8284944))

(assert (=> b!7911465 m!8285110))

(assert (=> bm!733821 m!8284870))

(assert (=> b!7911289 d!2360350))

(declare-fun b!7911478 () Bool)

(declare-fun e!4670152 () List!74496)

(assert (=> b!7911478 (= e!4670152 (_2!38520 lt!2687532))))

(declare-fun d!2360352 () Bool)

(declare-fun e!4670151 () Bool)

(assert (=> d!2360352 e!4670151))

(declare-fun res!3140129 () Bool)

(assert (=> d!2360352 (=> (not res!3140129) (not e!4670151))))

(declare-fun lt!2687735 () List!74496)

(declare-fun content!15750 (List!74496) (Set C!43070))

(assert (=> d!2360352 (= res!3140129 (= (content!15750 lt!2687735) (set.union (content!15750 lt!2687531) (content!15750 (_2!38520 lt!2687532)))))))

(assert (=> d!2360352 (= lt!2687735 e!4670152)))

(declare-fun c!1451508 () Bool)

(assert (=> d!2360352 (= c!1451508 (is-Nil!74372 lt!2687531))))

(assert (=> d!2360352 (= (++!18213 lt!2687531 (_2!38520 lt!2687532)) lt!2687735)))

(declare-fun b!7911481 () Bool)

(assert (=> b!7911481 (= e!4670151 (or (not (= (_2!38520 lt!2687532) Nil!74372)) (= lt!2687735 lt!2687531)))))

(declare-fun b!7911480 () Bool)

(declare-fun res!3140130 () Bool)

(assert (=> b!7911480 (=> (not res!3140130) (not e!4670151))))

(assert (=> b!7911480 (= res!3140130 (= (size!43150 lt!2687735) (+ (size!43150 lt!2687531) (size!43150 (_2!38520 lt!2687532)))))))

(declare-fun b!7911479 () Bool)

(assert (=> b!7911479 (= e!4670152 (Cons!74372 (h!80820 lt!2687531) (++!18213 (t!389905 lt!2687531) (_2!38520 lt!2687532))))))

(assert (= (and d!2360352 c!1451508) b!7911478))

(assert (= (and d!2360352 (not c!1451508)) b!7911479))

(assert (= (and d!2360352 res!3140129) b!7911480))

(assert (= (and b!7911480 res!3140130) b!7911481))

(declare-fun m!8285116 () Bool)

(assert (=> d!2360352 m!8285116))

(declare-fun m!8285118 () Bool)

(assert (=> d!2360352 m!8285118))

(declare-fun m!8285120 () Bool)

(assert (=> d!2360352 m!8285120))

(declare-fun m!8285122 () Bool)

(assert (=> b!7911480 m!8285122))

(declare-fun m!8285124 () Bool)

(assert (=> b!7911480 m!8285124))

(assert (=> b!7911480 m!8284892))

(declare-fun m!8285126 () Bool)

(assert (=> b!7911479 m!8285126))

(assert (=> b!7911284 d!2360352))

(declare-fun b!7911492 () Bool)

(declare-fun e!4670155 () Bool)

(assert (=> b!7911492 (= e!4670155 tp_is_empty!53115)))

(declare-fun b!7911493 () Bool)

(declare-fun tp!2356624 () Bool)

(declare-fun tp!2356623 () Bool)

(assert (=> b!7911493 (= e!4670155 (and tp!2356624 tp!2356623))))

(declare-fun b!7911494 () Bool)

(declare-fun tp!2356625 () Bool)

(assert (=> b!7911494 (= e!4670155 tp!2356625)))

(assert (=> b!7911281 (= tp!2356595 e!4670155)))

(declare-fun b!7911495 () Bool)

(declare-fun tp!2356626 () Bool)

(declare-fun tp!2356627 () Bool)

(assert (=> b!7911495 (= e!4670155 (and tp!2356626 tp!2356627))))

(assert (= (and b!7911281 (is-ElementMatch!21370 (regex!8667 rule!156))) b!7911492))

(assert (= (and b!7911281 (is-Concat!30354 (regex!8667 rule!156))) b!7911493))

(assert (= (and b!7911281 (is-Star!21370 (regex!8667 rule!156))) b!7911494))

(assert (= (and b!7911281 (is-Union!21370 (regex!8667 rule!156))) b!7911495))

(declare-fun b!7911500 () Bool)

(declare-fun e!4670158 () Bool)

(declare-fun tp!2356630 () Bool)

(assert (=> b!7911500 (= e!4670158 (and tp_is_empty!53115 tp!2356630))))

(assert (=> b!7911285 (= tp!2356594 e!4670158)))

(assert (= (and b!7911285 (is-Cons!74372 (t!389905 input!1480))) b!7911500))

(declare-fun b_lambda!290075 () Bool)

(assert (= b_lambda!290067 (or (and b!7911283 b_free!135211) b_lambda!290075)))

(declare-fun b_lambda!290077 () Bool)

(assert (= b_lambda!290069 (or (and b!7911283 b_free!135213) b_lambda!290077)))

(declare-fun b_lambda!290079 () Bool)

(assert (= b_lambda!290071 (or (and b!7911283 b_free!135211) b_lambda!290079)))

(push 1)

(assert (not tb!263251))

(assert (not b_next!136003))

(assert (not b_lambda!290073))

(assert (not b!7911453))

(assert (not b!7911465))

(assert (not b!7911443))

(assert (not b!7911365))

(assert (not d!2360336))

(assert tp_is_empty!53115)

(assert (not d!2360308))

(assert (not b!7911495))

(assert (not b!7911461))

(assert (not d!2360338))

(assert (not d!2360330))

(assert (not d!2360300))

(assert (not b!7911345))

(assert (not b_lambda!290075))

(assert (not b!7911402))

(assert (not b!7911410))

(assert (not bm!733815))

(assert (not b!7911479))

(assert (not b!7911462))

(assert (not b!7911439))

(assert (not b!7911456))

(assert (not bm!733816))

(assert b_and!353545)

(assert (not b!7911460))

(assert (not b!7911333))

(assert (not bm!733821))

(assert (not b_lambda!290079))

(assert (not b_lambda!290077))

(assert (not bm!733814))

(assert (not bm!733811))

(assert (not bm!733812))

(assert (not b!7911467))

(assert (not b_next!136001))

(assert (not b!7911455))

(assert (not d!2360294))

(assert (not b!7911337))

(assert (not bm!733817))

(assert (not b!7911444))

(assert (not d!2360348))

(assert (not d!2360334))

(assert (not d!2360340))

(assert (not b!7911448))

(assert (not d!2360352))

(assert (not d!2360296))

(assert (not b!7911445))

(assert (not d!2360350))

(assert (not b!7911493))

(assert (not b!7911500))

(assert (not bm!733813))

(assert (not b!7911397))

(assert (not b!7911480))

(assert (not d!2360326))

(assert (not b!7911450))

(assert (not b!7911401))

(assert (not bm!733820))

(assert (not tb!263249))

(assert (not bm!733810))

(assert b_and!353543)

(assert (not b!7911399))

(assert (not tb!263247))

(assert (not b!7911343))

(assert (not d!2360324))

(assert (not b!7911494))

(check-sat)

(pop 1)

(push 1)

(assert b_and!353543)

(assert b_and!353545)

(assert (not b_next!136001))

(assert (not b_next!136003))

(check-sat)

(pop 1)

