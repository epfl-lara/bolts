; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218964 () Bool)

(assert start!218964)

(declare-fun b!2245260 () Bool)

(declare-fun b_free!65421 () Bool)

(declare-fun b_next!66125 () Bool)

(assert (=> b!2245260 (= b_free!65421 (not b_next!66125))))

(declare-fun tp!708689 () Bool)

(declare-fun b_and!175561 () Bool)

(assert (=> b!2245260 (= tp!708689 b_and!175561)))

(declare-fun b_free!65423 () Bool)

(declare-fun b_next!66127 () Bool)

(assert (=> b!2245260 (= b_free!65423 (not b_next!66127))))

(declare-fun tp!708680 () Bool)

(declare-fun b_and!175563 () Bool)

(assert (=> b!2245260 (= tp!708680 b_and!175563)))

(declare-fun b!2245283 () Bool)

(declare-fun b_free!65425 () Bool)

(declare-fun b_next!66129 () Bool)

(assert (=> b!2245283 (= b_free!65425 (not b_next!66129))))

(declare-fun tp!708684 () Bool)

(declare-fun b_and!175565 () Bool)

(assert (=> b!2245283 (= tp!708684 b_and!175565)))

(declare-fun b_free!65427 () Bool)

(declare-fun b_next!66131 () Bool)

(assert (=> b!2245283 (= b_free!65427 (not b_next!66131))))

(declare-fun tp!708685 () Bool)

(declare-fun b_and!175567 () Bool)

(assert (=> b!2245283 (= tp!708685 b_and!175567)))

(declare-fun b!2245280 () Bool)

(declare-fun b_free!65429 () Bool)

(declare-fun b_next!66133 () Bool)

(assert (=> b!2245280 (= b_free!65429 (not b_next!66133))))

(declare-fun tp!708676 () Bool)

(declare-fun b_and!175569 () Bool)

(assert (=> b!2245280 (= tp!708676 b_and!175569)))

(declare-fun b_free!65431 () Bool)

(declare-fun b_next!66135 () Bool)

(assert (=> b!2245280 (= b_free!65431 (not b_next!66135))))

(declare-fun tp!708672 () Bool)

(declare-fun b_and!175571 () Bool)

(assert (=> b!2245280 (= tp!708672 b_and!175571)))

(declare-fun b!2245276 () Bool)

(declare-fun b_free!65433 () Bool)

(declare-fun b_next!66137 () Bool)

(assert (=> b!2245276 (= b_free!65433 (not b_next!66137))))

(declare-fun tp!708686 () Bool)

(declare-fun b_and!175573 () Bool)

(assert (=> b!2245276 (= tp!708686 b_and!175573)))

(declare-fun b_free!65435 () Bool)

(declare-fun b_next!66139 () Bool)

(assert (=> b!2245276 (= b_free!65435 (not b_next!66139))))

(declare-fun tp!708679 () Bool)

(declare-fun b_and!175575 () Bool)

(assert (=> b!2245276 (= tp!708679 b_and!175575)))

(declare-fun b!2245259 () Bool)

(declare-fun e!1436326 () Bool)

(declare-fun e!1436330 () Bool)

(assert (=> b!2245259 (= e!1436326 (not e!1436330))))

(declare-fun res!959294 () Bool)

(assert (=> b!2245259 (=> res!959294 e!1436330)))

(declare-fun e!1436333 () Bool)

(assert (=> b!2245259 (= res!959294 e!1436333)))

(declare-fun res!959296 () Bool)

(assert (=> b!2245259 (=> (not res!959296) (not e!1436333))))

(declare-fun lt!835250 () Bool)

(assert (=> b!2245259 (= res!959296 (not lt!835250))))

(declare-datatypes ((LexerInterface!3798 0))(
  ( (LexerInterfaceExt!3795 (__x!17786 Int)) (Lexer!3796) )
))
(declare-fun thiss!16613 () LexerInterface!3798)

(declare-datatypes ((List!26645 0))(
  ( (Nil!26551) (Cons!26551 (h!31952 (_ BitVec 16)) (t!200343 List!26645)) )
))
(declare-datatypes ((TokenValue!4363 0))(
  ( (FloatLiteralValue!8726 (text!30986 List!26645)) (TokenValueExt!4362 (__x!17787 Int)) (Broken!21815 (value!133522 List!26645)) (Object!4456) (End!4363) (Def!4363) (Underscore!4363) (Match!4363) (Else!4363) (Error!4363) (Case!4363) (If!4363) (Extends!4363) (Abstract!4363) (Class!4363) (Val!4363) (DelimiterValue!8726 (del!4423 List!26645)) (KeywordValue!4369 (value!133523 List!26645)) (CommentValue!8726 (value!133524 List!26645)) (WhitespaceValue!8726 (value!133525 List!26645)) (IndentationValue!4363 (value!133526 List!26645)) (String!28918) (Int32!4363) (Broken!21816 (value!133527 List!26645)) (Boolean!4364) (Unit!39519) (OperatorValue!4366 (op!4423 List!26645)) (IdentifierValue!8726 (value!133528 List!26645)) (IdentifierValue!8727 (value!133529 List!26645)) (WhitespaceValue!8727 (value!133530 List!26645)) (True!8726) (False!8726) (Broken!21817 (value!133531 List!26645)) (Broken!21818 (value!133532 List!26645)) (True!8727) (RightBrace!4363) (RightBracket!4363) (Colon!4363) (Null!4363) (Comma!4363) (LeftBracket!4363) (False!8727) (LeftBrace!4363) (ImaginaryLiteralValue!4363 (text!30987 List!26645)) (StringLiteralValue!13089 (value!133533 List!26645)) (EOFValue!4363 (value!133534 List!26645)) (IdentValue!4363 (value!133535 List!26645)) (DelimiterValue!8727 (value!133536 List!26645)) (DedentValue!4363 (value!133537 List!26645)) (NewLineValue!4363 (value!133538 List!26645)) (IntegerValue!13089 (value!133539 (_ BitVec 32)) (text!30988 List!26645)) (IntegerValue!13090 (value!133540 Int) (text!30989 List!26645)) (Times!4363) (Or!4363) (Equal!4363) (Minus!4363) (Broken!21819 (value!133541 List!26645)) (And!4363) (Div!4363) (LessEqual!4363) (Mod!4363) (Concat!10912) (Not!4363) (Plus!4363) (SpaceValue!4363 (value!133542 List!26645)) (IntegerValue!13091 (value!133543 Int) (text!30990 List!26645)) (StringLiteralValue!13090 (text!30991 List!26645)) (FloatLiteralValue!8727 (text!30992 List!26645)) (BytesLiteralValue!4363 (value!133544 List!26645)) (CommentValue!8727 (value!133545 List!26645)) (StringLiteralValue!13091 (value!133546 List!26645)) (ErrorTokenValue!4363 (msg!4424 List!26645)) )
))
(declare-datatypes ((C!13244 0))(
  ( (C!13245 (val!7670 Int)) )
))
(declare-datatypes ((List!26646 0))(
  ( (Nil!26552) (Cons!26552 (h!31953 C!13244) (t!200344 List!26646)) )
))
(declare-datatypes ((IArray!17105 0))(
  ( (IArray!17106 (innerList!8610 List!26646)) )
))
(declare-datatypes ((Conc!8550 0))(
  ( (Node!8550 (left!20183 Conc!8550) (right!20513 Conc!8550) (csize!17330 Int) (cheight!8761 Int)) (Leaf!12636 (xs!11492 IArray!17105) (csize!17331 Int)) (Empty!8550) )
))
(declare-datatypes ((BalanceConc!16828 0))(
  ( (BalanceConc!16829 (c!357310 Conc!8550)) )
))
(declare-datatypes ((String!28919 0))(
  ( (String!28920 (value!133547 String)) )
))
(declare-datatypes ((Regex!6549 0))(
  ( (ElementMatch!6549 (c!357311 C!13244)) (Concat!10913 (regOne!13610 Regex!6549) (regTwo!13610 Regex!6549)) (EmptyExpr!6549) (Star!6549 (reg!6878 Regex!6549)) (EmptyLang!6549) (Union!6549 (regOne!13611 Regex!6549) (regTwo!13611 Regex!6549)) )
))
(declare-datatypes ((TokenValueInjection!8266 0))(
  ( (TokenValueInjection!8267 (toValue!5931 Int) (toChars!5790 Int)) )
))
(declare-datatypes ((Rule!8202 0))(
  ( (Rule!8203 (regex!4201 Regex!6549) (tag!4691 String!28919) (isSeparator!4201 Bool) (transformation!4201 TokenValueInjection!8266)) )
))
(declare-fun r!2363 () Rule!8202)

(declare-fun ruleValid!1293 (LexerInterface!3798 Rule!8202) Bool)

(assert (=> b!2245259 (ruleValid!1293 thiss!16613 r!2363)))

(declare-datatypes ((Unit!39520 0))(
  ( (Unit!39521) )
))
(declare-fun lt!835249 () Unit!39520)

(declare-datatypes ((List!26647 0))(
  ( (Nil!26553) (Cons!26553 (h!31954 Rule!8202) (t!200345 List!26647)) )
))
(declare-fun rules!1750 () List!26647)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!700 (LexerInterface!3798 Rule!8202 List!26647) Unit!39520)

(assert (=> b!2245259 (= lt!835249 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!700 thiss!16613 r!2363 rules!1750))))

(declare-fun e!1436328 () Bool)

(assert (=> b!2245260 (= e!1436328 (and tp!708689 tp!708680))))

(declare-fun b!2245261 () Bool)

(declare-fun res!959289 () Bool)

(assert (=> b!2245261 (=> (not res!959289) (not e!1436326))))

(declare-fun e!1436346 () Bool)

(assert (=> b!2245261 (= res!959289 e!1436346)))

(declare-fun res!959297 () Bool)

(assert (=> b!2245261 (=> res!959297 e!1436346)))

(assert (=> b!2245261 (= res!959297 lt!835250)))

(declare-fun b!2245262 () Bool)

(declare-fun res!959292 () Bool)

(assert (=> b!2245262 (=> (not res!959292) (not e!1436326))))

(declare-fun otherP!12 () List!26646)

(declare-fun input!1722 () List!26646)

(declare-fun isPrefix!2191 (List!26646 List!26646) Bool)

(assert (=> b!2245262 (= res!959292 (isPrefix!2191 otherP!12 input!1722))))

(declare-fun b!2245263 () Bool)

(declare-fun e!1436340 () Bool)

(declare-fun tp_is_empty!10319 () Bool)

(declare-fun tp!708688 () Bool)

(assert (=> b!2245263 (= e!1436340 (and tp_is_empty!10319 tp!708688))))

(declare-fun b!2245264 () Bool)

(declare-fun e!1436343 () Bool)

(declare-fun tp!708687 () Bool)

(declare-fun e!1436350 () Bool)

(declare-datatypes ((Token!7880 0))(
  ( (Token!7881 (value!133548 TokenValue!4363) (rule!6499 Rule!8202) (size!20761 Int) (originalCharacters!4971 List!26646)) )
))
(declare-datatypes ((List!26648 0))(
  ( (Nil!26554) (Cons!26554 (h!31955 Token!7880) (t!200346 List!26648)) )
))
(declare-fun tokens!456 () List!26648)

(declare-fun inv!36082 (Token!7880) Bool)

(assert (=> b!2245264 (= e!1436350 (and (inv!36082 (h!31955 tokens!456)) e!1436343 tp!708687))))

(declare-fun b!2245265 () Bool)

(declare-fun matchR!2810 (Regex!6549 List!26646) Bool)

(declare-fun list!10158 (BalanceConc!16828) List!26646)

(declare-fun charsOf!2589 (Token!7880) BalanceConc!16828)

(declare-fun head!4760 (List!26648) Token!7880)

(assert (=> b!2245265 (= e!1436333 (not (matchR!2810 (regex!4201 r!2363) (list!10158 (charsOf!2589 (head!4760 tokens!456))))))))

(declare-fun b!2245266 () Bool)

(declare-fun res!959293 () Bool)

(declare-fun e!1436337 () Bool)

(assert (=> b!2245266 (=> (not res!959293) (not e!1436337))))

(declare-fun isEmpty!14951 (List!26647) Bool)

(assert (=> b!2245266 (= res!959293 (not (isEmpty!14951 rules!1750)))))

(declare-fun e!1436332 () Bool)

(declare-fun e!1436327 () Bool)

(declare-fun tp!708683 () Bool)

(declare-fun b!2245267 () Bool)

(declare-fun inv!36079 (String!28919) Bool)

(declare-fun inv!36083 (TokenValueInjection!8266) Bool)

(assert (=> b!2245267 (= e!1436327 (and tp!708683 (inv!36079 (tag!4691 (h!31954 rules!1750))) (inv!36083 (transformation!4201 (h!31954 rules!1750))) e!1436332))))

(declare-fun res!959301 () Bool)

(assert (=> start!218964 (=> (not res!959301) (not e!1436337))))

(get-info :version)

(assert (=> start!218964 (= res!959301 ((_ is Lexer!3796) thiss!16613))))

(assert (=> start!218964 e!1436337))

(assert (=> start!218964 true))

(declare-fun e!1436349 () Bool)

(assert (=> start!218964 e!1436349))

(declare-fun e!1436351 () Bool)

(assert (=> start!218964 e!1436351))

(declare-fun e!1436329 () Bool)

(assert (=> start!218964 e!1436329))

(assert (=> start!218964 e!1436340))

(declare-fun e!1436339 () Bool)

(assert (=> start!218964 e!1436339))

(declare-fun e!1436338 () Bool)

(assert (=> start!218964 e!1436338))

(assert (=> start!218964 e!1436350))

(declare-fun e!1436341 () Bool)

(declare-fun otherR!12 () Rule!8202)

(declare-fun b!2245268 () Bool)

(declare-fun tp!708681 () Bool)

(assert (=> b!2245268 (= e!1436351 (and tp!708681 (inv!36079 (tag!4691 otherR!12)) (inv!36083 (transformation!4201 otherR!12)) e!1436341))))

(declare-fun b!2245269 () Bool)

(declare-fun tp!708682 () Bool)

(assert (=> b!2245269 (= e!1436338 (and tp!708682 (inv!36079 (tag!4691 r!2363)) (inv!36083 (transformation!4201 r!2363)) e!1436328))))

(declare-fun b!2245270 () Bool)

(declare-fun e!1436345 () Bool)

(declare-fun size!20762 (BalanceConc!16828) Int)

(declare-fun size!20763 (List!26646) Int)

(assert (=> b!2245270 (= e!1436345 (<= (size!20762 (charsOf!2589 (head!4760 tokens!456))) (size!20763 otherP!12)))))

(declare-fun b!2245271 () Bool)

(declare-fun res!959298 () Bool)

(assert (=> b!2245271 (=> (not res!959298) (not e!1436337))))

(declare-fun contains!4548 (List!26647 Rule!8202) Bool)

(assert (=> b!2245271 (= res!959298 (contains!4548 rules!1750 otherR!12))))

(declare-fun b!2245272 () Bool)

(declare-fun e!1436335 () Bool)

(assert (=> b!2245272 (= e!1436335 e!1436326)))

(declare-fun res!959300 () Bool)

(assert (=> b!2245272 (=> (not res!959300) (not e!1436326))))

(assert (=> b!2245272 (= res!959300 e!1436345)))

(declare-fun res!959299 () Bool)

(assert (=> b!2245272 (=> res!959299 e!1436345)))

(assert (=> b!2245272 (= res!959299 lt!835250)))

(declare-fun isEmpty!14952 (List!26648) Bool)

(assert (=> b!2245272 (= lt!835250 (isEmpty!14952 tokens!456))))

(declare-fun e!1436334 () Bool)

(declare-fun tp!708673 () Bool)

(declare-fun b!2245273 () Bool)

(declare-fun inv!21 (TokenValue!4363) Bool)

(assert (=> b!2245273 (= e!1436343 (and (inv!21 (value!133548 (h!31955 tokens!456))) e!1436334 tp!708673))))

(declare-fun b!2245274 () Bool)

(assert (=> b!2245274 (= e!1436337 e!1436335)))

(declare-fun res!959295 () Bool)

(assert (=> b!2245274 (=> (not res!959295) (not e!1436335))))

(declare-fun suffix!886 () List!26646)

(declare-datatypes ((IArray!17107 0))(
  ( (IArray!17108 (innerList!8611 List!26648)) )
))
(declare-datatypes ((Conc!8551 0))(
  ( (Node!8551 (left!20184 Conc!8551) (right!20514 Conc!8551) (csize!17332 Int) (cheight!8762 Int)) (Leaf!12637 (xs!11493 IArray!17107) (csize!17333 Int)) (Empty!8551) )
))
(declare-datatypes ((BalanceConc!16830 0))(
  ( (BalanceConc!16831 (c!357312 Conc!8551)) )
))
(declare-datatypes ((tuple2!26008 0))(
  ( (tuple2!26009 (_1!15514 BalanceConc!16830) (_2!15514 BalanceConc!16828)) )
))
(declare-fun lt!835247 () tuple2!26008)

(declare-datatypes ((tuple2!26010 0))(
  ( (tuple2!26011 (_1!15515 List!26648) (_2!15515 List!26646)) )
))
(declare-fun list!10159 (BalanceConc!16830) List!26648)

(assert (=> b!2245274 (= res!959295 (= (tuple2!26011 (list!10159 (_1!15514 lt!835247)) (list!10158 (_2!15514 lt!835247))) (tuple2!26011 tokens!456 suffix!886)))))

(declare-fun lex!1637 (LexerInterface!3798 List!26647 BalanceConc!16828) tuple2!26008)

(declare-fun seqFromList!2905 (List!26646) BalanceConc!16828)

(assert (=> b!2245274 (= lt!835247 (lex!1637 thiss!16613 rules!1750 (seqFromList!2905 input!1722)))))

(declare-fun b!2245275 () Bool)

(declare-fun res!959290 () Bool)

(assert (=> b!2245275 (=> (not res!959290) (not e!1436337))))

(assert (=> b!2245275 (= res!959290 (contains!4548 rules!1750 r!2363))))

(assert (=> b!2245276 (= e!1436341 (and tp!708686 tp!708679))))

(declare-fun b!2245277 () Bool)

(declare-fun tp!708678 () Bool)

(assert (=> b!2245277 (= e!1436339 (and e!1436327 tp!708678))))

(declare-fun b!2245278 () Bool)

(declare-fun tp!708675 () Bool)

(declare-fun e!1436331 () Bool)

(assert (=> b!2245278 (= e!1436334 (and tp!708675 (inv!36079 (tag!4691 (rule!6499 (h!31955 tokens!456)))) (inv!36083 (transformation!4201 (rule!6499 (h!31955 tokens!456)))) e!1436331))))

(declare-fun b!2245279 () Bool)

(assert (=> b!2245279 (= e!1436330 true)))

(declare-fun lt!835248 () Bool)

(declare-fun rulesValidInductive!1465 (LexerInterface!3798 List!26647) Bool)

(assert (=> b!2245279 (= lt!835248 (rulesValidInductive!1465 thiss!16613 rules!1750))))

(assert (=> b!2245280 (= e!1436332 (and tp!708676 tp!708672))))

(declare-fun b!2245281 () Bool)

(declare-fun res!959291 () Bool)

(assert (=> b!2245281 (=> (not res!959291) (not e!1436337))))

(declare-fun rulesInvariant!3300 (LexerInterface!3798 List!26647) Bool)

(assert (=> b!2245281 (= res!959291 (rulesInvariant!3300 thiss!16613 rules!1750))))

(declare-fun b!2245282 () Bool)

(declare-fun tp!708677 () Bool)

(assert (=> b!2245282 (= e!1436349 (and tp_is_empty!10319 tp!708677))))

(assert (=> b!2245283 (= e!1436331 (and tp!708684 tp!708685))))

(declare-fun b!2245284 () Bool)

(declare-fun tp!708674 () Bool)

(assert (=> b!2245284 (= e!1436329 (and tp_is_empty!10319 tp!708674))))

(declare-fun b!2245285 () Bool)

(assert (=> b!2245285 (= e!1436346 (= (rule!6499 (head!4760 tokens!456)) r!2363))))

(declare-fun b!2245286 () Bool)

(declare-fun res!959288 () Bool)

(assert (=> b!2245286 (=> (not res!959288) (not e!1436326))))

(assert (=> b!2245286 (= res!959288 (not (= r!2363 otherR!12)))))

(assert (= (and start!218964 res!959301) b!2245266))

(assert (= (and b!2245266 res!959293) b!2245281))

(assert (= (and b!2245281 res!959291) b!2245275))

(assert (= (and b!2245275 res!959290) b!2245271))

(assert (= (and b!2245271 res!959298) b!2245274))

(assert (= (and b!2245274 res!959295) b!2245272))

(assert (= (and b!2245272 (not res!959299)) b!2245270))

(assert (= (and b!2245272 res!959300) b!2245261))

(assert (= (and b!2245261 (not res!959297)) b!2245285))

(assert (= (and b!2245261 res!959289) b!2245262))

(assert (= (and b!2245262 res!959292) b!2245286))

(assert (= (and b!2245286 res!959288) b!2245259))

(assert (= (and b!2245259 res!959296) b!2245265))

(assert (= (and b!2245259 (not res!959294)) b!2245279))

(assert (= (and start!218964 ((_ is Cons!26552) input!1722)) b!2245282))

(assert (= b!2245268 b!2245276))

(assert (= start!218964 b!2245268))

(assert (= (and start!218964 ((_ is Cons!26552) suffix!886)) b!2245284))

(assert (= (and start!218964 ((_ is Cons!26552) otherP!12)) b!2245263))

(assert (= b!2245267 b!2245280))

(assert (= b!2245277 b!2245267))

(assert (= (and start!218964 ((_ is Cons!26553) rules!1750)) b!2245277))

(assert (= b!2245269 b!2245260))

(assert (= start!218964 b!2245269))

(assert (= b!2245278 b!2245283))

(assert (= b!2245273 b!2245278))

(assert (= b!2245264 b!2245273))

(assert (= (and start!218964 ((_ is Cons!26554) tokens!456)) b!2245264))

(declare-fun m!2676957 () Bool)

(assert (=> b!2245270 m!2676957))

(assert (=> b!2245270 m!2676957))

(declare-fun m!2676959 () Bool)

(assert (=> b!2245270 m!2676959))

(assert (=> b!2245270 m!2676959))

(declare-fun m!2676961 () Bool)

(assert (=> b!2245270 m!2676961))

(declare-fun m!2676963 () Bool)

(assert (=> b!2245270 m!2676963))

(assert (=> b!2245285 m!2676957))

(declare-fun m!2676965 () Bool)

(assert (=> b!2245259 m!2676965))

(declare-fun m!2676967 () Bool)

(assert (=> b!2245259 m!2676967))

(declare-fun m!2676969 () Bool)

(assert (=> b!2245264 m!2676969))

(declare-fun m!2676971 () Bool)

(assert (=> b!2245278 m!2676971))

(declare-fun m!2676973 () Bool)

(assert (=> b!2245278 m!2676973))

(declare-fun m!2676975 () Bool)

(assert (=> b!2245273 m!2676975))

(declare-fun m!2676977 () Bool)

(assert (=> b!2245272 m!2676977))

(declare-fun m!2676979 () Bool)

(assert (=> b!2245281 m!2676979))

(declare-fun m!2676981 () Bool)

(assert (=> b!2245275 m!2676981))

(declare-fun m!2676983 () Bool)

(assert (=> b!2245268 m!2676983))

(declare-fun m!2676985 () Bool)

(assert (=> b!2245268 m!2676985))

(declare-fun m!2676987 () Bool)

(assert (=> b!2245267 m!2676987))

(declare-fun m!2676989 () Bool)

(assert (=> b!2245267 m!2676989))

(declare-fun m!2676991 () Bool)

(assert (=> b!2245274 m!2676991))

(declare-fun m!2676993 () Bool)

(assert (=> b!2245274 m!2676993))

(declare-fun m!2676995 () Bool)

(assert (=> b!2245274 m!2676995))

(assert (=> b!2245274 m!2676995))

(declare-fun m!2676997 () Bool)

(assert (=> b!2245274 m!2676997))

(declare-fun m!2676999 () Bool)

(assert (=> b!2245269 m!2676999))

(declare-fun m!2677001 () Bool)

(assert (=> b!2245269 m!2677001))

(declare-fun m!2677003 () Bool)

(assert (=> b!2245279 m!2677003))

(declare-fun m!2677005 () Bool)

(assert (=> b!2245271 m!2677005))

(declare-fun m!2677007 () Bool)

(assert (=> b!2245262 m!2677007))

(assert (=> b!2245265 m!2676957))

(assert (=> b!2245265 m!2676957))

(assert (=> b!2245265 m!2676959))

(assert (=> b!2245265 m!2676959))

(declare-fun m!2677009 () Bool)

(assert (=> b!2245265 m!2677009))

(assert (=> b!2245265 m!2677009))

(declare-fun m!2677011 () Bool)

(assert (=> b!2245265 m!2677011))

(declare-fun m!2677013 () Bool)

(assert (=> b!2245266 m!2677013))

(check-sat (not b_next!66135) (not b!2245264) (not b!2245263) (not b!2245267) (not b_next!66131) (not b!2245266) (not b!2245269) b_and!175567 (not b_next!66129) (not b!2245275) (not b!2245279) (not b!2245274) b_and!175575 (not b_next!66137) (not b!2245277) (not b!2245285) (not b!2245259) (not b_next!66127) b_and!175573 (not b!2245281) (not b!2245270) (not b!2245278) (not b!2245282) (not b!2245272) (not b!2245271) b_and!175563 (not b_next!66125) b_and!175565 (not b!2245262) (not b!2245273) tp_is_empty!10319 (not b!2245284) b_and!175571 b_and!175569 (not b_next!66133) (not b!2245268) (not b!2245265) b_and!175561 (not b_next!66139))
(check-sat (not b_next!66135) (not b_next!66131) b_and!175565 b_and!175571 b_and!175567 (not b_next!66129) b_and!175575 (not b_next!66137) (not b_next!66127) b_and!175573 b_and!175563 (not b_next!66125) b_and!175569 (not b_next!66133) b_and!175561 (not b_next!66139))
