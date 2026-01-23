; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!511674 () Bool)

(assert start!511674)

(declare-fun b!4888407 () Bool)

(declare-fun b_free!131419 () Bool)

(declare-fun b_next!132209 () Bool)

(assert (=> b!4888407 (= b_free!131419 (not b_next!132209))))

(declare-fun tp!1375883 () Bool)

(declare-fun b_and!344251 () Bool)

(assert (=> b!4888407 (= tp!1375883 b_and!344251)))

(declare-fun b_free!131421 () Bool)

(declare-fun b_next!132211 () Bool)

(assert (=> b!4888407 (= b_free!131421 (not b_next!132211))))

(declare-fun tp!1375882 () Bool)

(declare-fun b_and!344253 () Bool)

(assert (=> b!4888407 (= tp!1375882 b_and!344253)))

(declare-fun b!4888406 () Bool)

(declare-fun b_free!131423 () Bool)

(declare-fun b_next!132213 () Bool)

(assert (=> b!4888406 (= b_free!131423 (not b_next!132213))))

(declare-fun tp!1375886 () Bool)

(declare-fun b_and!344255 () Bool)

(assert (=> b!4888406 (= tp!1375886 b_and!344255)))

(declare-fun b_free!131425 () Bool)

(declare-fun b_next!132215 () Bool)

(assert (=> b!4888406 (= b_free!131425 (not b_next!132215))))

(declare-fun tp!1375884 () Bool)

(declare-fun b_and!344257 () Bool)

(assert (=> b!4888406 (= tp!1375884 b_and!344257)))

(declare-fun res!2087680 () Bool)

(declare-fun e!3056032 () Bool)

(assert (=> start!511674 (=> (not res!2087680) (not e!3056032))))

(declare-datatypes ((LexerInterface!7753 0))(
  ( (LexerInterfaceExt!7750 (__x!34235 Int)) (Lexer!7751) )
))
(declare-fun thiss!14805 () LexerInterface!7753)

(assert (=> start!511674 (= res!2087680 (is-Lexer!7751 thiss!14805))))

(assert (=> start!511674 e!3056032))

(assert (=> start!511674 true))

(declare-fun e!3056030 () Bool)

(assert (=> start!511674 e!3056030))

(declare-datatypes ((C!26670 0))(
  ( (C!26671 (val!22669 Int)) )
))
(declare-datatypes ((List!56488 0))(
  ( (Nil!56364) (Cons!56364 (h!62812 C!26670) (t!365134 List!56488)) )
))
(declare-datatypes ((IArray!29519 0))(
  ( (IArray!29520 (innerList!14817 List!56488)) )
))
(declare-datatypes ((Conc!14729 0))(
  ( (Node!14729 (left!40936 Conc!14729) (right!41266 Conc!14729) (csize!29688 Int) (cheight!14940 Int)) (Leaf!24527 (xs!18045 IArray!29519) (csize!29689 Int)) (Empty!14729) )
))
(declare-datatypes ((BalanceConc!28888 0))(
  ( (BalanceConc!28889 (c!830904 Conc!14729)) )
))
(declare-fun input!1236 () BalanceConc!28888)

(declare-fun e!3056031 () Bool)

(declare-fun inv!72595 (BalanceConc!28888) Bool)

(assert (=> start!511674 (and (inv!72595 input!1236) e!3056031)))

(declare-fun b!4888394 () Bool)

(declare-fun e!3056041 () Bool)

(declare-fun e!3056039 () Bool)

(assert (=> b!4888394 (= e!3056041 e!3056039)))

(declare-fun res!2087683 () Bool)

(assert (=> b!4888394 (=> res!2087683 e!3056039)))

(declare-datatypes ((List!56489 0))(
  ( (Nil!56365) (Cons!56365 (h!62813 (_ BitVec 16)) (t!365135 List!56489)) )
))
(declare-datatypes ((TokenValue!8471 0))(
  ( (FloatLiteralValue!16942 (text!59742 List!56489)) (TokenValueExt!8470 (__x!34236 Int)) (Broken!42355 (value!261716 List!56489)) (Object!8594) (End!8471) (Def!8471) (Underscore!8471) (Match!8471) (Else!8471) (Error!8471) (Case!8471) (If!8471) (Extends!8471) (Abstract!8471) (Class!8471) (Val!8471) (DelimiterValue!16942 (del!8531 List!56489)) (KeywordValue!8477 (value!261717 List!56489)) (CommentValue!16942 (value!261718 List!56489)) (WhitespaceValue!16942 (value!261719 List!56489)) (IndentationValue!8471 (value!261720 List!56489)) (String!63798) (Int32!8471) (Broken!42356 (value!261721 List!56489)) (Boolean!8472) (Unit!146354) (OperatorValue!8474 (op!8531 List!56489)) (IdentifierValue!16942 (value!261722 List!56489)) (IdentifierValue!16943 (value!261723 List!56489)) (WhitespaceValue!16943 (value!261724 List!56489)) (True!16942) (False!16942) (Broken!42357 (value!261725 List!56489)) (Broken!42358 (value!261726 List!56489)) (True!16943) (RightBrace!8471) (RightBracket!8471) (Colon!8471) (Null!8471) (Comma!8471) (LeftBracket!8471) (False!16943) (LeftBrace!8471) (ImaginaryLiteralValue!8471 (text!59743 List!56489)) (StringLiteralValue!25413 (value!261727 List!56489)) (EOFValue!8471 (value!261728 List!56489)) (IdentValue!8471 (value!261729 List!56489)) (DelimiterValue!16943 (value!261730 List!56489)) (DedentValue!8471 (value!261731 List!56489)) (NewLineValue!8471 (value!261732 List!56489)) (IntegerValue!25413 (value!261733 (_ BitVec 32)) (text!59744 List!56489)) (IntegerValue!25414 (value!261734 Int) (text!59745 List!56489)) (Times!8471) (Or!8471) (Equal!8471) (Minus!8471) (Broken!42359 (value!261735 List!56489)) (And!8471) (Div!8471) (LessEqual!8471) (Mod!8471) (Concat!21707) (Not!8471) (Plus!8471) (SpaceValue!8471 (value!261736 List!56489)) (IntegerValue!25415 (value!261737 Int) (text!59746 List!56489)) (StringLiteralValue!25414 (text!59747 List!56489)) (FloatLiteralValue!16943 (text!59748 List!56489)) (BytesLiteralValue!8471 (value!261738 List!56489)) (CommentValue!16943 (value!261739 List!56489)) (StringLiteralValue!25415 (value!261740 List!56489)) (ErrorTokenValue!8471 (msg!8532 List!56489)) )
))
(declare-datatypes ((Regex!13236 0))(
  ( (ElementMatch!13236 (c!830905 C!26670)) (Concat!21708 (regOne!26984 Regex!13236) (regTwo!26984 Regex!13236)) (EmptyExpr!13236) (Star!13236 (reg!13565 Regex!13236)) (EmptyLang!13236) (Union!13236 (regOne!26985 Regex!13236) (regTwo!26985 Regex!13236)) )
))
(declare-datatypes ((String!63799 0))(
  ( (String!63800 (value!261741 String)) )
))
(declare-datatypes ((TokenValueInjection!16250 0))(
  ( (TokenValueInjection!16251 (toValue!11048 Int) (toChars!10907 Int)) )
))
(declare-datatypes ((Rule!16122 0))(
  ( (Rule!16123 (regex!8161 Regex!13236) (tag!9025 String!63799) (isSeparator!8161 Bool) (transformation!8161 TokenValueInjection!16250)) )
))
(declare-datatypes ((Token!14890 0))(
  ( (Token!14891 (value!261742 TokenValue!8471) (rule!11339 Rule!16122) (size!37107 Int) (originalCharacters!8476 List!56488)) )
))
(declare-datatypes ((tuple2!60384 0))(
  ( (tuple2!60385 (_1!33495 Token!14890) (_2!33495 BalanceConc!28888)) )
))
(declare-fun lt!2003526 () tuple2!60384)

(declare-datatypes ((tuple2!60386 0))(
  ( (tuple2!60387 (_1!33496 Token!14890) (_2!33496 List!56488)) )
))
(declare-fun lt!2003524 () tuple2!60386)

(assert (=> b!4888394 (= res!2087683 (not (= (_1!33495 lt!2003526) (_1!33496 lt!2003524))))))

(declare-datatypes ((Option!14003 0))(
  ( (None!14002) (Some!14002 (v!49952 tuple2!60386)) )
))
(declare-fun lt!2003523 () Option!14003)

(declare-fun get!19450 (Option!14003) tuple2!60386)

(assert (=> b!4888394 (= lt!2003524 (get!19450 lt!2003523))))

(declare-datatypes ((Option!14004 0))(
  ( (None!14003) (Some!14003 (v!49953 tuple2!60384)) )
))
(declare-fun lt!2003527 () Option!14004)

(declare-fun get!19451 (Option!14004) tuple2!60384)

(assert (=> b!4888394 (= lt!2003526 (get!19451 lt!2003527))))

(declare-fun tp!1375878 () Bool)

(declare-fun b!4888395 () Bool)

(declare-fun e!3056034 () Bool)

(declare-fun e!3056042 () Bool)

(declare-datatypes ((List!56490 0))(
  ( (Nil!56366) (Cons!56366 (h!62814 Rule!16122) (t!365136 List!56490)) )
))
(declare-fun rulesArg!165 () List!56490)

(declare-fun inv!72592 (String!63799) Bool)

(declare-fun inv!72596 (TokenValueInjection!16250) Bool)

(assert (=> b!4888395 (= e!3056034 (and tp!1375878 (inv!72592 (tag!9025 (h!62814 rulesArg!165))) (inv!72596 (transformation!8161 (h!62814 rulesArg!165))) e!3056042))))

(declare-fun e!3056029 () Bool)

(declare-fun e!3056028 () Bool)

(declare-fun err!4509 () Option!14004)

(declare-fun tp!1375887 () Bool)

(declare-fun b!4888396 () Bool)

(declare-fun inv!21 (TokenValue!8471) Bool)

(assert (=> b!4888396 (= e!3056028 (and (inv!21 (value!261742 (_1!33495 (v!49953 err!4509)))) e!3056029 tp!1375887))))

(declare-fun b!4888397 () Bool)

(declare-fun list!17701 (BalanceConc!28888) List!56488)

(assert (=> b!4888397 (= e!3056039 (not (= (list!17701 (_2!33495 lt!2003526)) (_2!33496 lt!2003524))))))

(declare-fun b!4888398 () Bool)

(declare-fun e!3056043 () Bool)

(declare-fun e!3056036 () Bool)

(assert (=> b!4888398 (= e!3056043 e!3056036)))

(declare-fun res!2087679 () Bool)

(assert (=> b!4888398 (=> res!2087679 e!3056036)))

(assert (=> b!4888398 (= res!2087679 e!3056041)))

(declare-fun res!2087684 () Bool)

(assert (=> b!4888398 (=> (not res!2087684) (not e!3056041))))

(declare-fun lt!2003525 () Bool)

(assert (=> b!4888398 (= res!2087684 (not lt!2003525))))

(declare-fun lt!2003521 () Bool)

(assert (=> b!4888398 (= lt!2003525 (not lt!2003521))))

(declare-fun e!3056027 () Bool)

(declare-fun e!3056035 () Bool)

(declare-fun b!4888399 () Bool)

(declare-fun inv!72597 (Token!14890) Bool)

(assert (=> b!4888399 (= e!3056027 (and (inv!72597 (_1!33495 (v!49953 err!4509))) e!3056028 (inv!72595 (_2!33495 (v!49953 err!4509))) e!3056035))))

(declare-fun tp!1375881 () Bool)

(declare-fun b!4888400 () Bool)

(declare-fun e!3056044 () Bool)

(assert (=> b!4888400 (= e!3056029 (and tp!1375881 (inv!72592 (tag!9025 (rule!11339 (_1!33495 (v!49953 err!4509))))) (inv!72596 (transformation!8161 (rule!11339 (_1!33495 (v!49953 err!4509))))) e!3056044))))

(declare-fun lt!2003522 () List!56488)

(declare-fun b!4888401 () Bool)

(declare-fun isDefined!11016 (Option!14003) Bool)

(declare-fun maxPrefix!4594 (LexerInterface!7753 List!56490 List!56488) Option!14003)

(assert (=> b!4888401 (= e!3056036 (isDefined!11016 (maxPrefix!4594 thiss!14805 rulesArg!165 lt!2003522)))))

(declare-fun b!4888402 () Bool)

(declare-fun tp!1375880 () Bool)

(declare-fun inv!72598 (Conc!14729) Bool)

(assert (=> b!4888402 (= e!3056035 (and (inv!72598 (c!830904 (_2!33495 (v!49953 err!4509)))) tp!1375880))))

(declare-fun b!4888403 () Bool)

(declare-fun e!3056037 () Bool)

(assert (=> b!4888403 (= e!3056032 (not e!3056037))))

(declare-fun res!2087682 () Bool)

(assert (=> b!4888403 (=> res!2087682 e!3056037)))

(assert (=> b!4888403 (= res!2087682 (or (and (is-Cons!56366 rulesArg!165) (is-Nil!56366 (t!365136 rulesArg!165))) (is-Cons!56366 rulesArg!165)))))

(declare-fun isPrefix!4883 (List!56488 List!56488) Bool)

(assert (=> b!4888403 (isPrefix!4883 lt!2003522 lt!2003522)))

(declare-datatypes ((Unit!146355 0))(
  ( (Unit!146356) )
))
(declare-fun lt!2003520 () Unit!146355)

(declare-fun lemmaIsPrefixRefl!3280 (List!56488 List!56488) Unit!146355)

(assert (=> b!4888403 (= lt!2003520 (lemmaIsPrefixRefl!3280 lt!2003522 lt!2003522))))

(assert (=> b!4888403 (= lt!2003522 (list!17701 input!1236))))

(declare-fun b!4888404 () Bool)

(declare-fun res!2087685 () Bool)

(assert (=> b!4888404 (=> res!2087685 e!3056036)))

(assert (=> b!4888404 (= res!2087685 lt!2003525)))

(declare-fun b!4888405 () Bool)

(declare-fun tp!1375879 () Bool)

(assert (=> b!4888405 (= e!3056030 (and e!3056034 tp!1375879))))

(assert (=> b!4888406 (= e!3056044 (and tp!1375886 tp!1375884))))

(assert (=> b!4888407 (= e!3056042 (and tp!1375883 tp!1375882))))

(declare-fun b!4888408 () Bool)

(declare-fun tp!1375885 () Bool)

(assert (=> b!4888408 (= e!3056031 (and (inv!72598 (c!830904 input!1236)) tp!1375885))))

(declare-fun b!4888409 () Bool)

(declare-fun res!2087681 () Bool)

(assert (=> b!4888409 (=> (not res!2087681) (not e!3056032))))

(declare-fun rulesValidInductive!3140 (LexerInterface!7753 List!56490) Bool)

(assert (=> b!4888409 (= res!2087681 (rulesValidInductive!3140 thiss!14805 rulesArg!165))))

(declare-fun b!4888410 () Bool)

(declare-fun res!2087687 () Bool)

(assert (=> b!4888410 (=> (not res!2087687) (not e!3056032))))

(declare-fun isEmpty!30215 (List!56490) Bool)

(assert (=> b!4888410 (= res!2087687 (not (isEmpty!30215 rulesArg!165)))))

(declare-fun b!4888411 () Bool)

(assert (=> b!4888411 (= e!3056037 e!3056043)))

(declare-fun res!2087686 () Bool)

(assert (=> b!4888411 (=> res!2087686 e!3056043)))

(assert (=> b!4888411 (= res!2087686 (not (= lt!2003521 (isDefined!11016 lt!2003523))))))

(declare-fun isDefined!11017 (Option!14004) Bool)

(assert (=> b!4888411 (= lt!2003521 (isDefined!11017 lt!2003527))))

(declare-fun maxPrefixZipper!664 (LexerInterface!7753 List!56490 List!56488) Option!14003)

(assert (=> b!4888411 (= lt!2003523 (maxPrefixZipper!664 thiss!14805 rulesArg!165 lt!2003522))))

(assert (=> b!4888411 (= lt!2003527 err!4509)))

(assert (=> b!4888411 true))

(assert (=> b!4888411 e!3056027))

(assert (= (and start!511674 res!2087680) b!4888409))

(assert (= (and b!4888409 res!2087681) b!4888410))

(assert (= (and b!4888410 res!2087687) b!4888403))

(assert (= (and b!4888403 (not res!2087682)) b!4888411))

(assert (= b!4888400 b!4888406))

(assert (= b!4888396 b!4888400))

(assert (= b!4888399 b!4888396))

(assert (= b!4888399 b!4888402))

(assert (= (and b!4888411 (is-Some!14003 err!4509)) b!4888399))

(assert (= (and b!4888411 (not res!2087686)) b!4888398))

(assert (= (and b!4888398 res!2087684) b!4888394))

(assert (= (and b!4888394 (not res!2087683)) b!4888397))

(assert (= (and b!4888398 (not res!2087679)) b!4888404))

(assert (= (and b!4888404 (not res!2087685)) b!4888401))

(assert (= b!4888395 b!4888407))

(assert (= b!4888405 b!4888395))

(assert (= (and start!511674 (is-Cons!56366 rulesArg!165)) b!4888405))

(assert (= start!511674 b!4888408))

(declare-fun m!5892024 () Bool)

(assert (=> b!4888411 m!5892024))

(declare-fun m!5892026 () Bool)

(assert (=> b!4888411 m!5892026))

(declare-fun m!5892028 () Bool)

(assert (=> b!4888411 m!5892028))

(declare-fun m!5892030 () Bool)

(assert (=> b!4888402 m!5892030))

(declare-fun m!5892032 () Bool)

(assert (=> b!4888403 m!5892032))

(declare-fun m!5892034 () Bool)

(assert (=> b!4888403 m!5892034))

(declare-fun m!5892036 () Bool)

(assert (=> b!4888403 m!5892036))

(declare-fun m!5892038 () Bool)

(assert (=> b!4888401 m!5892038))

(assert (=> b!4888401 m!5892038))

(declare-fun m!5892040 () Bool)

(assert (=> b!4888401 m!5892040))

(declare-fun m!5892042 () Bool)

(assert (=> start!511674 m!5892042))

(declare-fun m!5892044 () Bool)

(assert (=> b!4888410 m!5892044))

(declare-fun m!5892046 () Bool)

(assert (=> b!4888395 m!5892046))

(declare-fun m!5892048 () Bool)

(assert (=> b!4888395 m!5892048))

(declare-fun m!5892050 () Bool)

(assert (=> b!4888396 m!5892050))

(declare-fun m!5892052 () Bool)

(assert (=> b!4888397 m!5892052))

(declare-fun m!5892054 () Bool)

(assert (=> b!4888399 m!5892054))

(declare-fun m!5892056 () Bool)

(assert (=> b!4888399 m!5892056))

(declare-fun m!5892058 () Bool)

(assert (=> b!4888408 m!5892058))

(declare-fun m!5892060 () Bool)

(assert (=> b!4888409 m!5892060))

(declare-fun m!5892062 () Bool)

(assert (=> b!4888394 m!5892062))

(declare-fun m!5892064 () Bool)

(assert (=> b!4888394 m!5892064))

(declare-fun m!5892066 () Bool)

(assert (=> b!4888400 m!5892066))

(declare-fun m!5892068 () Bool)

(assert (=> b!4888400 m!5892068))

(push 1)

(assert (not b!4888395))

(assert (not b!4888401))

(assert (not b!4888411))

(assert (not start!511674))

(assert (not b_next!132215))

(assert (not b!4888399))

(assert (not b_next!132211))

(assert (not b!4888396))

(assert b_and!344253)

(assert (not b_next!132213))

(assert b_and!344255)

(assert (not b!4888402))

(assert (not b!4888400))

(assert b_and!344257)

(assert (not b_next!132209))

(assert (not b!4888394))

(assert (not b!4888405))

(assert (not b!4888403))

(assert (not b!4888410))

(assert (not b!4888409))

(assert (not b!4888397))

(assert b_and!344251)

(assert (not b!4888408))

(check-sat)

(pop 1)

(push 1)

(assert b_and!344251)

(assert (not b_next!132215))

(assert (not b_next!132211))

(assert b_and!344253)

(assert (not b_next!132213))

(assert b_and!344255)

(assert b_and!344257)

(assert (not b_next!132209))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1569846 () Bool)

(assert (=> d!1569846 (= (inv!72592 (tag!9025 (h!62814 rulesArg!165))) (= (mod (str.len (value!261741 (tag!9025 (h!62814 rulesArg!165)))) 2) 0))))

(assert (=> b!4888395 d!1569846))

(declare-fun d!1569848 () Bool)

(declare-fun res!2087721 () Bool)

(declare-fun e!3056101 () Bool)

(assert (=> d!1569848 (=> (not res!2087721) (not e!3056101))))

(declare-fun semiInverseModEq!3576 (Int Int) Bool)

(assert (=> d!1569848 (= res!2087721 (semiInverseModEq!3576 (toChars!10907 (transformation!8161 (h!62814 rulesArg!165))) (toValue!11048 (transformation!8161 (h!62814 rulesArg!165)))))))

(assert (=> d!1569848 (= (inv!72596 (transformation!8161 (h!62814 rulesArg!165))) e!3056101)))

(declare-fun b!4888468 () Bool)

(declare-fun equivClasses!3455 (Int Int) Bool)

(assert (=> b!4888468 (= e!3056101 (equivClasses!3455 (toChars!10907 (transformation!8161 (h!62814 rulesArg!165))) (toValue!11048 (transformation!8161 (h!62814 rulesArg!165)))))))

(assert (= (and d!1569848 res!2087721) b!4888468))

(declare-fun m!5892118 () Bool)

(assert (=> d!1569848 m!5892118))

(declare-fun m!5892120 () Bool)

(assert (=> b!4888468 m!5892120))

(assert (=> b!4888395 d!1569848))

(declare-fun d!1569854 () Bool)

(declare-fun list!17703 (Conc!14729) List!56488)

(assert (=> d!1569854 (= (list!17701 (_2!33495 lt!2003526)) (list!17703 (c!830904 (_2!33495 lt!2003526))))))

(declare-fun bs!1175680 () Bool)

(assert (= bs!1175680 d!1569854))

(declare-fun m!5892122 () Bool)

(assert (=> bs!1175680 m!5892122))

(assert (=> b!4888397 d!1569854))

(declare-fun b!4888479 () Bool)

(declare-fun res!2087724 () Bool)

(declare-fun e!3056109 () Bool)

(assert (=> b!4888479 (=> res!2087724 e!3056109)))

(assert (=> b!4888479 (= res!2087724 (not (is-IntegerValue!25415 (value!261742 (_1!33495 (v!49953 err!4509))))))))

(declare-fun e!3056108 () Bool)

(assert (=> b!4888479 (= e!3056108 e!3056109)))

(declare-fun b!4888480 () Bool)

(declare-fun e!3056110 () Bool)

(declare-fun inv!16 (TokenValue!8471) Bool)

(assert (=> b!4888480 (= e!3056110 (inv!16 (value!261742 (_1!33495 (v!49953 err!4509)))))))

(declare-fun b!4888481 () Bool)

(assert (=> b!4888481 (= e!3056110 e!3056108)))

(declare-fun c!830914 () Bool)

(assert (=> b!4888481 (= c!830914 (is-IntegerValue!25414 (value!261742 (_1!33495 (v!49953 err!4509)))))))

(declare-fun d!1569856 () Bool)

(declare-fun c!830913 () Bool)

(assert (=> d!1569856 (= c!830913 (is-IntegerValue!25413 (value!261742 (_1!33495 (v!49953 err!4509)))))))

(assert (=> d!1569856 (= (inv!21 (value!261742 (_1!33495 (v!49953 err!4509)))) e!3056110)))

(declare-fun b!4888482 () Bool)

(declare-fun inv!15 (TokenValue!8471) Bool)

(assert (=> b!4888482 (= e!3056109 (inv!15 (value!261742 (_1!33495 (v!49953 err!4509)))))))

(declare-fun b!4888483 () Bool)

(declare-fun inv!17 (TokenValue!8471) Bool)

(assert (=> b!4888483 (= e!3056108 (inv!17 (value!261742 (_1!33495 (v!49953 err!4509)))))))

(assert (= (and d!1569856 c!830913) b!4888480))

(assert (= (and d!1569856 (not c!830913)) b!4888481))

(assert (= (and b!4888481 c!830914) b!4888483))

(assert (= (and b!4888481 (not c!830914)) b!4888479))

(assert (= (and b!4888479 (not res!2087724)) b!4888482))

(declare-fun m!5892124 () Bool)

(assert (=> b!4888480 m!5892124))

(declare-fun m!5892126 () Bool)

(assert (=> b!4888482 m!5892126))

(declare-fun m!5892128 () Bool)

(assert (=> b!4888483 m!5892128))

(assert (=> b!4888396 d!1569856))

(declare-fun d!1569858 () Bool)

(assert (=> d!1569858 true))

(declare-fun lt!2003571 () Bool)

(declare-fun lambda!243895 () Int)

(declare-fun forall!13080 (List!56490 Int) Bool)

(assert (=> d!1569858 (= lt!2003571 (forall!13080 rulesArg!165 lambda!243895))))

(declare-fun e!3056152 () Bool)

(assert (=> d!1569858 (= lt!2003571 e!3056152)))

(declare-fun res!2087767 () Bool)

(assert (=> d!1569858 (=> res!2087767 e!3056152)))

(assert (=> d!1569858 (= res!2087767 (not (is-Cons!56366 rulesArg!165)))))

(assert (=> d!1569858 (= (rulesValidInductive!3140 thiss!14805 rulesArg!165) lt!2003571)))

(declare-fun b!4888557 () Bool)

(declare-fun e!3056151 () Bool)

(assert (=> b!4888557 (= e!3056152 e!3056151)))

(declare-fun res!2087768 () Bool)

(assert (=> b!4888557 (=> (not res!2087768) (not e!3056151))))

(declare-fun ruleValid!3662 (LexerInterface!7753 Rule!16122) Bool)

(assert (=> b!4888557 (= res!2087768 (ruleValid!3662 thiss!14805 (h!62814 rulesArg!165)))))

(declare-fun b!4888558 () Bool)

(assert (=> b!4888558 (= e!3056151 (rulesValidInductive!3140 thiss!14805 (t!365136 rulesArg!165)))))

(assert (= (and d!1569858 (not res!2087767)) b!4888557))

(assert (= (and b!4888557 res!2087768) b!4888558))

(declare-fun m!5892190 () Bool)

(assert (=> d!1569858 m!5892190))

(declare-fun m!5892192 () Bool)

(assert (=> b!4888557 m!5892192))

(declare-fun m!5892194 () Bool)

(assert (=> b!4888558 m!5892194))

(assert (=> b!4888409 d!1569858))

(declare-fun d!1569882 () Bool)

(declare-fun c!830930 () Bool)

(assert (=> d!1569882 (= c!830930 (is-Node!14729 (c!830904 input!1236)))))

(declare-fun e!3056157 () Bool)

(assert (=> d!1569882 (= (inv!72598 (c!830904 input!1236)) e!3056157)))

(declare-fun b!4888567 () Bool)

(declare-fun inv!72603 (Conc!14729) Bool)

(assert (=> b!4888567 (= e!3056157 (inv!72603 (c!830904 input!1236)))))

(declare-fun b!4888568 () Bool)

(declare-fun e!3056158 () Bool)

(assert (=> b!4888568 (= e!3056157 e!3056158)))

(declare-fun res!2087771 () Bool)

(assert (=> b!4888568 (= res!2087771 (not (is-Leaf!24527 (c!830904 input!1236))))))

(assert (=> b!4888568 (=> res!2087771 e!3056158)))

(declare-fun b!4888569 () Bool)

(declare-fun inv!72604 (Conc!14729) Bool)

(assert (=> b!4888569 (= e!3056158 (inv!72604 (c!830904 input!1236)))))

(assert (= (and d!1569882 c!830930) b!4888567))

(assert (= (and d!1569882 (not c!830930)) b!4888568))

(assert (= (and b!4888568 (not res!2087771)) b!4888569))

(declare-fun m!5892196 () Bool)

(assert (=> b!4888567 m!5892196))

(declare-fun m!5892198 () Bool)

(assert (=> b!4888569 m!5892198))

(assert (=> b!4888408 d!1569882))

(declare-fun d!1569884 () Bool)

(declare-fun isBalanced!4003 (Conc!14729) Bool)

(assert (=> d!1569884 (= (inv!72595 input!1236) (isBalanced!4003 (c!830904 input!1236)))))

(declare-fun bs!1175684 () Bool)

(assert (= bs!1175684 d!1569884))

(declare-fun m!5892200 () Bool)

(assert (=> bs!1175684 m!5892200))

(assert (=> start!511674 d!1569884))

(declare-fun d!1569886 () Bool)

(assert (=> d!1569886 (= (isEmpty!30215 rulesArg!165) (is-Nil!56366 rulesArg!165))))

(assert (=> b!4888410 d!1569886))

(declare-fun d!1569888 () Bool)

(declare-fun res!2087776 () Bool)

(declare-fun e!3056161 () Bool)

(assert (=> d!1569888 (=> (not res!2087776) (not e!3056161))))

(declare-fun isEmpty!30217 (List!56488) Bool)

(assert (=> d!1569888 (= res!2087776 (not (isEmpty!30217 (originalCharacters!8476 (_1!33495 (v!49953 err!4509))))))))

(assert (=> d!1569888 (= (inv!72597 (_1!33495 (v!49953 err!4509))) e!3056161)))

(declare-fun b!4888574 () Bool)

(declare-fun res!2087777 () Bool)

(assert (=> b!4888574 (=> (not res!2087777) (not e!3056161))))

(declare-fun dynLambda!22591 (Int TokenValue!8471) BalanceConc!28888)

(assert (=> b!4888574 (= res!2087777 (= (originalCharacters!8476 (_1!33495 (v!49953 err!4509))) (list!17701 (dynLambda!22591 (toChars!10907 (transformation!8161 (rule!11339 (_1!33495 (v!49953 err!4509))))) (value!261742 (_1!33495 (v!49953 err!4509)))))))))

(declare-fun b!4888575 () Bool)

(declare-fun size!37109 (List!56488) Int)

(assert (=> b!4888575 (= e!3056161 (= (size!37107 (_1!33495 (v!49953 err!4509))) (size!37109 (originalCharacters!8476 (_1!33495 (v!49953 err!4509))))))))

(assert (= (and d!1569888 res!2087776) b!4888574))

(assert (= (and b!4888574 res!2087777) b!4888575))

(declare-fun b_lambda!194027 () Bool)

(assert (=> (not b_lambda!194027) (not b!4888574)))

(declare-fun tb!258447 () Bool)

(declare-fun t!365145 () Bool)

(assert (=> (and b!4888407 (= (toChars!10907 (transformation!8161 (h!62814 rulesArg!165))) (toChars!10907 (transformation!8161 (rule!11339 (_1!33495 (v!49953 err!4509)))))) t!365145) tb!258447))

(declare-fun b!4888580 () Bool)

(declare-fun e!3056164 () Bool)

(declare-fun tp!1375923 () Bool)

(assert (=> b!4888580 (= e!3056164 (and (inv!72598 (c!830904 (dynLambda!22591 (toChars!10907 (transformation!8161 (rule!11339 (_1!33495 (v!49953 err!4509))))) (value!261742 (_1!33495 (v!49953 err!4509)))))) tp!1375923))))

(declare-fun result!321904 () Bool)

(assert (=> tb!258447 (= result!321904 (and (inv!72595 (dynLambda!22591 (toChars!10907 (transformation!8161 (rule!11339 (_1!33495 (v!49953 err!4509))))) (value!261742 (_1!33495 (v!49953 err!4509))))) e!3056164))))

(assert (= tb!258447 b!4888580))

(declare-fun m!5892202 () Bool)

(assert (=> b!4888580 m!5892202))

(declare-fun m!5892204 () Bool)

(assert (=> tb!258447 m!5892204))

(assert (=> b!4888574 t!365145))

(declare-fun b_and!344271 () Bool)

(assert (= b_and!344253 (and (=> t!365145 result!321904) b_and!344271)))

(declare-fun t!365147 () Bool)

(declare-fun tb!258449 () Bool)

(assert (=> (and b!4888406 (= (toChars!10907 (transformation!8161 (rule!11339 (_1!33495 (v!49953 err!4509))))) (toChars!10907 (transformation!8161 (rule!11339 (_1!33495 (v!49953 err!4509)))))) t!365147) tb!258449))

(declare-fun result!321908 () Bool)

(assert (= result!321908 result!321904))

(assert (=> b!4888574 t!365147))

(declare-fun b_and!344273 () Bool)

(assert (= b_and!344257 (and (=> t!365147 result!321908) b_and!344273)))

(declare-fun m!5892206 () Bool)

(assert (=> d!1569888 m!5892206))

(declare-fun m!5892208 () Bool)

(assert (=> b!4888574 m!5892208))

(assert (=> b!4888574 m!5892208))

(declare-fun m!5892210 () Bool)

(assert (=> b!4888574 m!5892210))

(declare-fun m!5892212 () Bool)

(assert (=> b!4888575 m!5892212))

(assert (=> b!4888399 d!1569888))

(declare-fun d!1569890 () Bool)

(assert (=> d!1569890 (= (inv!72595 (_2!33495 (v!49953 err!4509))) (isBalanced!4003 (c!830904 (_2!33495 (v!49953 err!4509)))))))

(declare-fun bs!1175685 () Bool)

(assert (= bs!1175685 d!1569890))

(declare-fun m!5892214 () Bool)

(assert (=> bs!1175685 m!5892214))

(assert (=> b!4888399 d!1569890))

(declare-fun d!1569892 () Bool)

(declare-fun isEmpty!30218 (Option!14003) Bool)

(assert (=> d!1569892 (= (isDefined!11016 (maxPrefix!4594 thiss!14805 rulesArg!165 lt!2003522)) (not (isEmpty!30218 (maxPrefix!4594 thiss!14805 rulesArg!165 lt!2003522))))))

(declare-fun bs!1175686 () Bool)

(assert (= bs!1175686 d!1569892))

(assert (=> bs!1175686 m!5892038))

(declare-fun m!5892216 () Bool)

(assert (=> bs!1175686 m!5892216))

(assert (=> b!4888401 d!1569892))

(declare-fun bm!339063 () Bool)

(declare-fun call!339068 () Option!14003)

(declare-fun maxPrefixOneRule!3520 (LexerInterface!7753 Rule!16122 List!56488) Option!14003)

(assert (=> bm!339063 (= call!339068 (maxPrefixOneRule!3520 thiss!14805 (h!62814 rulesArg!165) lt!2003522))))

(declare-fun b!4888599 () Bool)

(declare-fun res!2087794 () Bool)

(declare-fun e!3056171 () Bool)

(assert (=> b!4888599 (=> (not res!2087794) (not e!3056171))))

(declare-fun lt!2003586 () Option!14003)

(declare-fun ++!12236 (List!56488 List!56488) List!56488)

(declare-fun charsOf!5367 (Token!14890) BalanceConc!28888)

(assert (=> b!4888599 (= res!2087794 (= (++!12236 (list!17701 (charsOf!5367 (_1!33496 (get!19450 lt!2003586)))) (_2!33496 (get!19450 lt!2003586))) lt!2003522))))

(declare-fun b!4888600 () Bool)

(declare-fun contains!19430 (List!56490 Rule!16122) Bool)

(assert (=> b!4888600 (= e!3056171 (contains!19430 rulesArg!165 (rule!11339 (_1!33496 (get!19450 lt!2003586)))))))

(declare-fun b!4888602 () Bool)

(declare-fun res!2087795 () Bool)

(assert (=> b!4888602 (=> (not res!2087795) (not e!3056171))))

(assert (=> b!4888602 (= res!2087795 (< (size!37109 (_2!33496 (get!19450 lt!2003586))) (size!37109 lt!2003522)))))

(declare-fun b!4888603 () Bool)

(declare-fun e!3056172 () Option!14003)

(declare-fun lt!2003582 () Option!14003)

(declare-fun lt!2003583 () Option!14003)

(assert (=> b!4888603 (= e!3056172 (ite (and (is-None!14002 lt!2003582) (is-None!14002 lt!2003583)) None!14002 (ite (is-None!14002 lt!2003583) lt!2003582 (ite (is-None!14002 lt!2003582) lt!2003583 (ite (>= (size!37107 (_1!33496 (v!49952 lt!2003582))) (size!37107 (_1!33496 (v!49952 lt!2003583)))) lt!2003582 lt!2003583)))))))

(assert (=> b!4888603 (= lt!2003582 call!339068)))

(assert (=> b!4888603 (= lt!2003583 (maxPrefix!4594 thiss!14805 (t!365136 rulesArg!165) lt!2003522))))

(declare-fun b!4888604 () Bool)

(declare-fun res!2087798 () Bool)

(assert (=> b!4888604 (=> (not res!2087798) (not e!3056171))))

(declare-fun matchR!6521 (Regex!13236 List!56488) Bool)

(assert (=> b!4888604 (= res!2087798 (matchR!6521 (regex!8161 (rule!11339 (_1!33496 (get!19450 lt!2003586)))) (list!17701 (charsOf!5367 (_1!33496 (get!19450 lt!2003586))))))))

(declare-fun d!1569894 () Bool)

(declare-fun e!3056173 () Bool)

(assert (=> d!1569894 e!3056173))

(declare-fun res!2087797 () Bool)

(assert (=> d!1569894 (=> res!2087797 e!3056173)))

(assert (=> d!1569894 (= res!2087797 (isEmpty!30218 lt!2003586))))

(assert (=> d!1569894 (= lt!2003586 e!3056172)))

(declare-fun c!830933 () Bool)

(assert (=> d!1569894 (= c!830933 (and (is-Cons!56366 rulesArg!165) (is-Nil!56366 (t!365136 rulesArg!165))))))

(declare-fun lt!2003584 () Unit!146355)

(declare-fun lt!2003585 () Unit!146355)

(assert (=> d!1569894 (= lt!2003584 lt!2003585)))

(assert (=> d!1569894 (isPrefix!4883 lt!2003522 lt!2003522)))

(assert (=> d!1569894 (= lt!2003585 (lemmaIsPrefixRefl!3280 lt!2003522 lt!2003522))))

(assert (=> d!1569894 (rulesValidInductive!3140 thiss!14805 rulesArg!165)))

(assert (=> d!1569894 (= (maxPrefix!4594 thiss!14805 rulesArg!165 lt!2003522) lt!2003586)))

(declare-fun b!4888601 () Bool)

(declare-fun res!2087793 () Bool)

(assert (=> b!4888601 (=> (not res!2087793) (not e!3056171))))

(assert (=> b!4888601 (= res!2087793 (= (list!17701 (charsOf!5367 (_1!33496 (get!19450 lt!2003586)))) (originalCharacters!8476 (_1!33496 (get!19450 lt!2003586)))))))

(declare-fun b!4888605 () Bool)

(declare-fun res!2087792 () Bool)

(assert (=> b!4888605 (=> (not res!2087792) (not e!3056171))))

(declare-fun apply!13531 (TokenValueInjection!16250 BalanceConc!28888) TokenValue!8471)

(declare-fun seqFromList!5927 (List!56488) BalanceConc!28888)

(assert (=> b!4888605 (= res!2087792 (= (value!261742 (_1!33496 (get!19450 lt!2003586))) (apply!13531 (transformation!8161 (rule!11339 (_1!33496 (get!19450 lt!2003586)))) (seqFromList!5927 (originalCharacters!8476 (_1!33496 (get!19450 lt!2003586)))))))))

(declare-fun b!4888606 () Bool)

(assert (=> b!4888606 (= e!3056172 call!339068)))

(declare-fun b!4888607 () Bool)

(assert (=> b!4888607 (= e!3056173 e!3056171)))

(declare-fun res!2087796 () Bool)

(assert (=> b!4888607 (=> (not res!2087796) (not e!3056171))))

(assert (=> b!4888607 (= res!2087796 (isDefined!11016 lt!2003586))))

(assert (= (and d!1569894 c!830933) b!4888606))

(assert (= (and d!1569894 (not c!830933)) b!4888603))

(assert (= (or b!4888606 b!4888603) bm!339063))

(assert (= (and d!1569894 (not res!2087797)) b!4888607))

(assert (= (and b!4888607 res!2087796) b!4888601))

(assert (= (and b!4888601 res!2087793) b!4888602))

(assert (= (and b!4888602 res!2087795) b!4888599))

(assert (= (and b!4888599 res!2087794) b!4888605))

(assert (= (and b!4888605 res!2087792) b!4888604))

(assert (= (and b!4888604 res!2087798) b!4888600))

(declare-fun m!5892218 () Bool)

(assert (=> b!4888604 m!5892218))

(declare-fun m!5892220 () Bool)

(assert (=> b!4888604 m!5892220))

(assert (=> b!4888604 m!5892220))

(declare-fun m!5892222 () Bool)

(assert (=> b!4888604 m!5892222))

(assert (=> b!4888604 m!5892222))

(declare-fun m!5892224 () Bool)

(assert (=> b!4888604 m!5892224))

(declare-fun m!5892226 () Bool)

(assert (=> b!4888603 m!5892226))

(assert (=> b!4888601 m!5892218))

(assert (=> b!4888601 m!5892220))

(assert (=> b!4888601 m!5892220))

(assert (=> b!4888601 m!5892222))

(assert (=> b!4888600 m!5892218))

(declare-fun m!5892228 () Bool)

(assert (=> b!4888600 m!5892228))

(declare-fun m!5892230 () Bool)

(assert (=> b!4888607 m!5892230))

(declare-fun m!5892232 () Bool)

(assert (=> bm!339063 m!5892232))

(assert (=> b!4888605 m!5892218))

(declare-fun m!5892234 () Bool)

(assert (=> b!4888605 m!5892234))

(assert (=> b!4888605 m!5892234))

(declare-fun m!5892236 () Bool)

(assert (=> b!4888605 m!5892236))

(assert (=> b!4888599 m!5892218))

(assert (=> b!4888599 m!5892220))

(assert (=> b!4888599 m!5892220))

(assert (=> b!4888599 m!5892222))

(assert (=> b!4888599 m!5892222))

(declare-fun m!5892238 () Bool)

(assert (=> b!4888599 m!5892238))

(declare-fun m!5892240 () Bool)

(assert (=> d!1569894 m!5892240))

(assert (=> d!1569894 m!5892032))

(assert (=> d!1569894 m!5892034))

(assert (=> d!1569894 m!5892060))

(assert (=> b!4888602 m!5892218))

(declare-fun m!5892242 () Bool)

(assert (=> b!4888602 m!5892242))

(declare-fun m!5892244 () Bool)

(assert (=> b!4888602 m!5892244))

(assert (=> b!4888401 d!1569894))

(declare-fun d!1569896 () Bool)

(assert (=> d!1569896 (= (inv!72592 (tag!9025 (rule!11339 (_1!33495 (v!49953 err!4509))))) (= (mod (str.len (value!261741 (tag!9025 (rule!11339 (_1!33495 (v!49953 err!4509)))))) 2) 0))))

(assert (=> b!4888400 d!1569896))

(declare-fun d!1569898 () Bool)

(declare-fun res!2087799 () Bool)

(declare-fun e!3056174 () Bool)

(assert (=> d!1569898 (=> (not res!2087799) (not e!3056174))))

(assert (=> d!1569898 (= res!2087799 (semiInverseModEq!3576 (toChars!10907 (transformation!8161 (rule!11339 (_1!33495 (v!49953 err!4509))))) (toValue!11048 (transformation!8161 (rule!11339 (_1!33495 (v!49953 err!4509)))))))))

(assert (=> d!1569898 (= (inv!72596 (transformation!8161 (rule!11339 (_1!33495 (v!49953 err!4509))))) e!3056174)))

(declare-fun b!4888608 () Bool)

(assert (=> b!4888608 (= e!3056174 (equivClasses!3455 (toChars!10907 (transformation!8161 (rule!11339 (_1!33495 (v!49953 err!4509))))) (toValue!11048 (transformation!8161 (rule!11339 (_1!33495 (v!49953 err!4509)))))))))

(assert (= (and d!1569898 res!2087799) b!4888608))

(declare-fun m!5892246 () Bool)

(assert (=> d!1569898 m!5892246))

(declare-fun m!5892248 () Bool)

(assert (=> b!4888608 m!5892248))

(assert (=> b!4888400 d!1569898))

(declare-fun d!1569900 () Bool)

(assert (=> d!1569900 (= (isDefined!11016 lt!2003523) (not (isEmpty!30218 lt!2003523)))))

(declare-fun bs!1175687 () Bool)

(assert (= bs!1175687 d!1569900))

(declare-fun m!5892250 () Bool)

(assert (=> bs!1175687 m!5892250))

(assert (=> b!4888411 d!1569900))

(declare-fun d!1569902 () Bool)

(declare-fun isEmpty!30219 (Option!14004) Bool)

(assert (=> d!1569902 (= (isDefined!11017 lt!2003527) (not (isEmpty!30219 lt!2003527)))))

(declare-fun bs!1175688 () Bool)

(assert (= bs!1175688 d!1569902))

(declare-fun m!5892252 () Bool)

(assert (=> bs!1175688 m!5892252))

(assert (=> b!4888411 d!1569902))

(declare-fun lt!2003599 () Option!14003)

(declare-fun d!1569904 () Bool)

(assert (=> d!1569904 (= lt!2003599 (maxPrefix!4594 thiss!14805 rulesArg!165 lt!2003522))))

(declare-fun e!3056177 () Option!14003)

(assert (=> d!1569904 (= lt!2003599 e!3056177)))

(declare-fun c!830936 () Bool)

(assert (=> d!1569904 (= c!830936 (and (is-Cons!56366 rulesArg!165) (is-Nil!56366 (t!365136 rulesArg!165))))))

(declare-fun lt!2003597 () Unit!146355)

(declare-fun lt!2003601 () Unit!146355)

(assert (=> d!1569904 (= lt!2003597 lt!2003601)))

(assert (=> d!1569904 (isPrefix!4883 lt!2003522 lt!2003522)))

(assert (=> d!1569904 (= lt!2003601 (lemmaIsPrefixRefl!3280 lt!2003522 lt!2003522))))

(assert (=> d!1569904 (rulesValidInductive!3140 thiss!14805 rulesArg!165)))

(assert (=> d!1569904 (= (maxPrefixZipper!664 thiss!14805 rulesArg!165 lt!2003522) lt!2003599)))

(declare-fun bm!339066 () Bool)

(declare-fun call!339071 () Option!14003)

(declare-fun maxPrefixOneRuleZipper!251 (LexerInterface!7753 Rule!16122 List!56488) Option!14003)

(assert (=> bm!339066 (= call!339071 (maxPrefixOneRuleZipper!251 thiss!14805 (h!62814 rulesArg!165) lt!2003522))))

(declare-fun b!4888613 () Bool)

(assert (=> b!4888613 (= e!3056177 call!339071)))

(declare-fun b!4888614 () Bool)

(declare-fun lt!2003600 () Option!14003)

(declare-fun lt!2003598 () Option!14003)

(assert (=> b!4888614 (= e!3056177 (ite (and (is-None!14002 lt!2003600) (is-None!14002 lt!2003598)) None!14002 (ite (is-None!14002 lt!2003598) lt!2003600 (ite (is-None!14002 lt!2003600) lt!2003598 (ite (>= (size!37107 (_1!33496 (v!49952 lt!2003600))) (size!37107 (_1!33496 (v!49952 lt!2003598)))) lt!2003600 lt!2003598)))))))

(assert (=> b!4888614 (= lt!2003600 call!339071)))

(assert (=> b!4888614 (= lt!2003598 (maxPrefixZipper!664 thiss!14805 (t!365136 rulesArg!165) lt!2003522))))

(assert (= (and d!1569904 c!830936) b!4888613))

(assert (= (and d!1569904 (not c!830936)) b!4888614))

(assert (= (or b!4888613 b!4888614) bm!339066))

(assert (=> d!1569904 m!5892038))

(assert (=> d!1569904 m!5892032))

(assert (=> d!1569904 m!5892034))

(assert (=> d!1569904 m!5892060))

(declare-fun m!5892254 () Bool)

(assert (=> bm!339066 m!5892254))

(declare-fun m!5892256 () Bool)

(assert (=> b!4888614 m!5892256))

(assert (=> b!4888411 d!1569904))

(declare-fun d!1569906 () Bool)

(declare-fun c!830937 () Bool)

(assert (=> d!1569906 (= c!830937 (is-Node!14729 (c!830904 (_2!33495 (v!49953 err!4509)))))))

(declare-fun e!3056178 () Bool)

(assert (=> d!1569906 (= (inv!72598 (c!830904 (_2!33495 (v!49953 err!4509)))) e!3056178)))

(declare-fun b!4888615 () Bool)

(assert (=> b!4888615 (= e!3056178 (inv!72603 (c!830904 (_2!33495 (v!49953 err!4509)))))))

(declare-fun b!4888616 () Bool)

(declare-fun e!3056179 () Bool)

(assert (=> b!4888616 (= e!3056178 e!3056179)))

(declare-fun res!2087800 () Bool)

(assert (=> b!4888616 (= res!2087800 (not (is-Leaf!24527 (c!830904 (_2!33495 (v!49953 err!4509))))))))

(assert (=> b!4888616 (=> res!2087800 e!3056179)))

(declare-fun b!4888617 () Bool)

(assert (=> b!4888617 (= e!3056179 (inv!72604 (c!830904 (_2!33495 (v!49953 err!4509)))))))

(assert (= (and d!1569906 c!830937) b!4888615))

(assert (= (and d!1569906 (not c!830937)) b!4888616))

(assert (= (and b!4888616 (not res!2087800)) b!4888617))

(declare-fun m!5892258 () Bool)

(assert (=> b!4888615 m!5892258))

(declare-fun m!5892260 () Bool)

(assert (=> b!4888617 m!5892260))

(assert (=> b!4888402 d!1569906))

(declare-fun b!4888629 () Bool)

(declare-fun e!3056187 () Bool)

(assert (=> b!4888629 (= e!3056187 (>= (size!37109 lt!2003522) (size!37109 lt!2003522)))))

(declare-fun d!1569908 () Bool)

(assert (=> d!1569908 e!3056187))

(declare-fun res!2087809 () Bool)

(assert (=> d!1569908 (=> res!2087809 e!3056187)))

(declare-fun lt!2003604 () Bool)

(assert (=> d!1569908 (= res!2087809 (not lt!2003604))))

(declare-fun e!3056188 () Bool)

(assert (=> d!1569908 (= lt!2003604 e!3056188)))

(declare-fun res!2087811 () Bool)

(assert (=> d!1569908 (=> res!2087811 e!3056188)))

(assert (=> d!1569908 (= res!2087811 (is-Nil!56364 lt!2003522))))

(assert (=> d!1569908 (= (isPrefix!4883 lt!2003522 lt!2003522) lt!2003604)))

(declare-fun b!4888628 () Bool)

(declare-fun e!3056186 () Bool)

(declare-fun tail!9592 (List!56488) List!56488)

(assert (=> b!4888628 (= e!3056186 (isPrefix!4883 (tail!9592 lt!2003522) (tail!9592 lt!2003522)))))

(declare-fun b!4888626 () Bool)

(assert (=> b!4888626 (= e!3056188 e!3056186)))

(declare-fun res!2087812 () Bool)

(assert (=> b!4888626 (=> (not res!2087812) (not e!3056186))))

(assert (=> b!4888626 (= res!2087812 (not (is-Nil!56364 lt!2003522)))))

(declare-fun b!4888627 () Bool)

(declare-fun res!2087810 () Bool)

(assert (=> b!4888627 (=> (not res!2087810) (not e!3056186))))

(declare-fun head!10446 (List!56488) C!26670)

(assert (=> b!4888627 (= res!2087810 (= (head!10446 lt!2003522) (head!10446 lt!2003522)))))

(assert (= (and d!1569908 (not res!2087811)) b!4888626))

(assert (= (and b!4888626 res!2087812) b!4888627))

(assert (= (and b!4888627 res!2087810) b!4888628))

(assert (= (and d!1569908 (not res!2087809)) b!4888629))

(assert (=> b!4888629 m!5892244))

(assert (=> b!4888629 m!5892244))

(declare-fun m!5892262 () Bool)

(assert (=> b!4888628 m!5892262))

(assert (=> b!4888628 m!5892262))

(assert (=> b!4888628 m!5892262))

(assert (=> b!4888628 m!5892262))

(declare-fun m!5892264 () Bool)

(assert (=> b!4888628 m!5892264))

(declare-fun m!5892266 () Bool)

(assert (=> b!4888627 m!5892266))

(assert (=> b!4888627 m!5892266))

(assert (=> b!4888403 d!1569908))

(declare-fun d!1569910 () Bool)

(assert (=> d!1569910 (isPrefix!4883 lt!2003522 lt!2003522)))

(declare-fun lt!2003607 () Unit!146355)

(declare-fun choose!35684 (List!56488 List!56488) Unit!146355)

(assert (=> d!1569910 (= lt!2003607 (choose!35684 lt!2003522 lt!2003522))))

(assert (=> d!1569910 (= (lemmaIsPrefixRefl!3280 lt!2003522 lt!2003522) lt!2003607)))

(declare-fun bs!1175689 () Bool)

(assert (= bs!1175689 d!1569910))

(assert (=> bs!1175689 m!5892032))

(declare-fun m!5892268 () Bool)

(assert (=> bs!1175689 m!5892268))

(assert (=> b!4888403 d!1569910))

(declare-fun d!1569912 () Bool)

(assert (=> d!1569912 (= (list!17701 input!1236) (list!17703 (c!830904 input!1236)))))

(declare-fun bs!1175690 () Bool)

(assert (= bs!1175690 d!1569912))

(declare-fun m!5892270 () Bool)

(assert (=> bs!1175690 m!5892270))

(assert (=> b!4888403 d!1569912))

(declare-fun d!1569914 () Bool)

(assert (=> d!1569914 (= (get!19450 lt!2003523) (v!49952 lt!2003523))))

(assert (=> b!4888394 d!1569914))

(declare-fun d!1569916 () Bool)

(assert (=> d!1569916 (= (get!19451 lt!2003527) (v!49953 lt!2003527))))

(assert (=> b!4888394 d!1569916))

(declare-fun b!4888642 () Bool)

(declare-fun e!3056191 () Bool)

(declare-fun tp!1375937 () Bool)

(assert (=> b!4888642 (= e!3056191 tp!1375937)))

(declare-fun b!4888643 () Bool)

(declare-fun tp!1375935 () Bool)

(declare-fun tp!1375934 () Bool)

(assert (=> b!4888643 (= e!3056191 (and tp!1375935 tp!1375934))))

(declare-fun b!4888640 () Bool)

(declare-fun tp_is_empty!35757 () Bool)

(assert (=> b!4888640 (= e!3056191 tp_is_empty!35757)))

(declare-fun b!4888641 () Bool)

(declare-fun tp!1375938 () Bool)

(declare-fun tp!1375936 () Bool)

(assert (=> b!4888641 (= e!3056191 (and tp!1375938 tp!1375936))))

(assert (=> b!4888400 (= tp!1375881 e!3056191)))

(assert (= (and b!4888400 (is-ElementMatch!13236 (regex!8161 (rule!11339 (_1!33495 (v!49953 err!4509)))))) b!4888640))

(assert (= (and b!4888400 (is-Concat!21708 (regex!8161 (rule!11339 (_1!33495 (v!49953 err!4509)))))) b!4888641))

(assert (= (and b!4888400 (is-Star!13236 (regex!8161 (rule!11339 (_1!33495 (v!49953 err!4509)))))) b!4888642))

(assert (= (and b!4888400 (is-Union!13236 (regex!8161 (rule!11339 (_1!33495 (v!49953 err!4509)))))) b!4888643))

(declare-fun b!4888646 () Bool)

(declare-fun e!3056192 () Bool)

(declare-fun tp!1375942 () Bool)

(assert (=> b!4888646 (= e!3056192 tp!1375942)))

(declare-fun b!4888647 () Bool)

(declare-fun tp!1375940 () Bool)

(declare-fun tp!1375939 () Bool)

(assert (=> b!4888647 (= e!3056192 (and tp!1375940 tp!1375939))))

(declare-fun b!4888644 () Bool)

(assert (=> b!4888644 (= e!3056192 tp_is_empty!35757)))

(declare-fun b!4888645 () Bool)

(declare-fun tp!1375943 () Bool)

(declare-fun tp!1375941 () Bool)

(assert (=> b!4888645 (= e!3056192 (and tp!1375943 tp!1375941))))

(assert (=> b!4888395 (= tp!1375878 e!3056192)))

(assert (= (and b!4888395 (is-ElementMatch!13236 (regex!8161 (h!62814 rulesArg!165)))) b!4888644))

(assert (= (and b!4888395 (is-Concat!21708 (regex!8161 (h!62814 rulesArg!165)))) b!4888645))

(assert (= (and b!4888395 (is-Star!13236 (regex!8161 (h!62814 rulesArg!165)))) b!4888646))

(assert (= (and b!4888395 (is-Union!13236 (regex!8161 (h!62814 rulesArg!165)))) b!4888647))

(declare-fun b!4888656 () Bool)

(declare-fun tp!1375950 () Bool)

(declare-fun e!3056197 () Bool)

(declare-fun tp!1375951 () Bool)

(assert (=> b!4888656 (= e!3056197 (and (inv!72598 (left!40936 (c!830904 (_2!33495 (v!49953 err!4509))))) tp!1375950 (inv!72598 (right!41266 (c!830904 (_2!33495 (v!49953 err!4509))))) tp!1375951))))

(declare-fun b!4888658 () Bool)

(declare-fun e!3056198 () Bool)

(declare-fun tp!1375952 () Bool)

(assert (=> b!4888658 (= e!3056198 tp!1375952)))

(declare-fun b!4888657 () Bool)

(declare-fun inv!72605 (IArray!29519) Bool)

(assert (=> b!4888657 (= e!3056197 (and (inv!72605 (xs!18045 (c!830904 (_2!33495 (v!49953 err!4509))))) e!3056198))))

(assert (=> b!4888402 (= tp!1375880 (and (inv!72598 (c!830904 (_2!33495 (v!49953 err!4509)))) e!3056197))))

(assert (= (and b!4888402 (is-Node!14729 (c!830904 (_2!33495 (v!49953 err!4509))))) b!4888656))

(assert (= b!4888657 b!4888658))

(assert (= (and b!4888402 (is-Leaf!24527 (c!830904 (_2!33495 (v!49953 err!4509))))) b!4888657))

(declare-fun m!5892272 () Bool)

(assert (=> b!4888656 m!5892272))

(declare-fun m!5892274 () Bool)

(assert (=> b!4888656 m!5892274))

(declare-fun m!5892276 () Bool)

(assert (=> b!4888657 m!5892276))

(assert (=> b!4888402 m!5892030))

(declare-fun b!4888663 () Bool)

(declare-fun e!3056201 () Bool)

(declare-fun tp!1375955 () Bool)

(assert (=> b!4888663 (= e!3056201 (and tp_is_empty!35757 tp!1375955))))

(assert (=> b!4888396 (= tp!1375887 e!3056201)))

(assert (= (and b!4888396 (is-Cons!56364 (originalCharacters!8476 (_1!33495 (v!49953 err!4509))))) b!4888663))

(declare-fun tp!1375956 () Bool)

(declare-fun b!4888664 () Bool)

(declare-fun tp!1375957 () Bool)

(declare-fun e!3056202 () Bool)

(assert (=> b!4888664 (= e!3056202 (and (inv!72598 (left!40936 (c!830904 input!1236))) tp!1375956 (inv!72598 (right!41266 (c!830904 input!1236))) tp!1375957))))

(declare-fun b!4888666 () Bool)

(declare-fun e!3056203 () Bool)

(declare-fun tp!1375958 () Bool)

(assert (=> b!4888666 (= e!3056203 tp!1375958)))

(declare-fun b!4888665 () Bool)

(assert (=> b!4888665 (= e!3056202 (and (inv!72605 (xs!18045 (c!830904 input!1236))) e!3056203))))

(assert (=> b!4888408 (= tp!1375885 (and (inv!72598 (c!830904 input!1236)) e!3056202))))

(assert (= (and b!4888408 (is-Node!14729 (c!830904 input!1236))) b!4888664))

(assert (= b!4888665 b!4888666))

(assert (= (and b!4888408 (is-Leaf!24527 (c!830904 input!1236))) b!4888665))

(declare-fun m!5892278 () Bool)

(assert (=> b!4888664 m!5892278))

(declare-fun m!5892280 () Bool)

(assert (=> b!4888664 m!5892280))

(declare-fun m!5892282 () Bool)

(assert (=> b!4888665 m!5892282))

(assert (=> b!4888408 m!5892058))

(declare-fun b!4888677 () Bool)

(declare-fun b_free!131435 () Bool)

(declare-fun b_next!132225 () Bool)

(assert (=> b!4888677 (= b_free!131435 (not b_next!132225))))

(declare-fun tp!1375968 () Bool)

(declare-fun b_and!344275 () Bool)

(assert (=> b!4888677 (= tp!1375968 b_and!344275)))

(declare-fun b_free!131437 () Bool)

(declare-fun b_next!132227 () Bool)

(assert (=> b!4888677 (= b_free!131437 (not b_next!132227))))

(declare-fun t!365149 () Bool)

(declare-fun tb!258451 () Bool)

(assert (=> (and b!4888677 (= (toChars!10907 (transformation!8161 (h!62814 (t!365136 rulesArg!165)))) (toChars!10907 (transformation!8161 (rule!11339 (_1!33495 (v!49953 err!4509)))))) t!365149) tb!258451))

(declare-fun result!321918 () Bool)

(assert (= result!321918 result!321904))

(assert (=> b!4888574 t!365149))

(declare-fun tp!1375970 () Bool)

(declare-fun b_and!344277 () Bool)

(assert (=> b!4888677 (= tp!1375970 (and (=> t!365149 result!321918) b_and!344277))))

(declare-fun e!3056215 () Bool)

(assert (=> b!4888677 (= e!3056215 (and tp!1375968 tp!1375970))))

(declare-fun tp!1375967 () Bool)

(declare-fun b!4888676 () Bool)

(declare-fun e!3056213 () Bool)

(assert (=> b!4888676 (= e!3056213 (and tp!1375967 (inv!72592 (tag!9025 (h!62814 (t!365136 rulesArg!165)))) (inv!72596 (transformation!8161 (h!62814 (t!365136 rulesArg!165)))) e!3056215))))

(declare-fun b!4888675 () Bool)

(declare-fun e!3056212 () Bool)

(declare-fun tp!1375969 () Bool)

(assert (=> b!4888675 (= e!3056212 (and e!3056213 tp!1375969))))

(assert (=> b!4888405 (= tp!1375879 e!3056212)))

(assert (= b!4888676 b!4888677))

(assert (= b!4888675 b!4888676))

(assert (= (and b!4888405 (is-Cons!56366 (t!365136 rulesArg!165))) b!4888675))

(declare-fun m!5892284 () Bool)

(assert (=> b!4888676 m!5892284))

(declare-fun m!5892286 () Bool)

(assert (=> b!4888676 m!5892286))

(declare-fun b_lambda!194029 () Bool)

(assert (= b_lambda!194027 (or (and b!4888407 b_free!131421 (= (toChars!10907 (transformation!8161 (h!62814 rulesArg!165))) (toChars!10907 (transformation!8161 (rule!11339 (_1!33495 (v!49953 err!4509))))))) (and b!4888406 b_free!131425) (and b!4888677 b_free!131437 (= (toChars!10907 (transformation!8161 (h!62814 (t!365136 rulesArg!165)))) (toChars!10907 (transformation!8161 (rule!11339 (_1!33495 (v!49953 err!4509))))))) b_lambda!194029)))

(push 1)

(assert (not b!4888557))

(assert (not b!4888482))

(assert (not b!4888558))

(assert (not d!1569902))

(assert (not b!4888646))

(assert (not b!4888580))

(assert (not d!1569848))

(assert (not b!4888675))

(assert (not b_next!132211))

(assert (not b_next!132225))

(assert (not b!4888656))

(assert (not d!1569854))

(assert (not b!4888617))

(assert (not d!1569898))

(assert (not b!4888614))

(assert (not b!4888607))

(assert b_and!344255)

(assert (not b_next!132213))

(assert b_and!344273)

(assert b_and!344271)

(assert (not b!4888628))

(assert (not b!4888483))

(assert (not d!1569890))

(assert (not d!1569904))

(assert (not b!4888402))

(assert (not b!4888642))

(assert (not b!4888601))

(assert (not b!4888666))

(assert (not b!4888604))

(assert (not b!4888569))

(assert (not b!4888468))

(assert (not tb!258447))

(assert (not d!1569910))

(assert (not b_next!132209))

(assert (not b!4888665))

(assert (not b!4888676))

(assert (not b_next!132227))

(assert (not b!4888567))

(assert (not b!4888602))

(assert (not d!1569894))

(assert (not d!1569858))

(assert (not b!4888603))

(assert (not b!4888615))

(assert (not d!1569892))

(assert (not d!1569888))

(assert (not b!4888627))

(assert (not b!4888643))

(assert (not bm!339063))

(assert (not b_lambda!194029))

(assert (not b!4888575))

(assert b_and!344275)

(assert tp_is_empty!35757)

(assert (not b!4888647))

(assert b_and!344277)

(assert (not b!4888658))

(assert (not b!4888664))

(assert (not b!4888663))

(assert (not b!4888600))

(assert (not b!4888608))

(assert (not d!1569884))

(assert (not b!4888657))

(assert (not d!1569912))

(assert (not bm!339066))

(assert (not b!4888629))

(assert b_and!344251)

(assert (not b!4888408))

(assert (not b!4888641))

(assert (not b!4888645))

(assert (not b!4888574))

(assert (not b!4888480))

(assert (not b!4888599))

(assert (not d!1569900))

(assert (not b_next!132215))

(assert (not b!4888605))

(check-sat)

(pop 1)

(push 1)

(assert b_and!344271)

(assert (not b_next!132209))

(assert (not b_next!132227))

(assert b_and!344275)

(assert b_and!344277)

(assert b_and!344251)

(assert (not b_next!132215))

(assert (not b_next!132211))

(assert (not b_next!132225))

(assert b_and!344255)

(assert (not b_next!132213))

(assert b_and!344273)

(check-sat)

(pop 1)

