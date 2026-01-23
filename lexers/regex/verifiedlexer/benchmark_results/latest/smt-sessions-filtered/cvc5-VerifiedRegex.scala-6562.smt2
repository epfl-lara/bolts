; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!347220 () Bool)

(assert start!347220)

(declare-fun b!3690534 () Bool)

(declare-fun b_free!97929 () Bool)

(declare-fun b_next!98633 () Bool)

(assert (=> b!3690534 (= b_free!97929 (not b_next!98633))))

(declare-fun tp!1121428 () Bool)

(declare-fun b_and!275687 () Bool)

(assert (=> b!3690534 (= tp!1121428 b_and!275687)))

(declare-fun b_free!97931 () Bool)

(declare-fun b_next!98635 () Bool)

(assert (=> b!3690534 (= b_free!97931 (not b_next!98635))))

(declare-fun tp!1121427 () Bool)

(declare-fun b_and!275689 () Bool)

(assert (=> b!3690534 (= tp!1121427 b_and!275689)))

(declare-fun e!2285285 () Bool)

(declare-fun tp!1121432 () Bool)

(declare-fun e!2285281 () Bool)

(declare-datatypes ((List!39196 0))(
  ( (Nil!39072) (Cons!39072 (h!44492 (_ BitVec 16)) (t!301329 List!39196)) )
))
(declare-datatypes ((TokenValue!6133 0))(
  ( (FloatLiteralValue!12266 (text!43376 List!39196)) (TokenValueExt!6132 (__x!24483 Int)) (Broken!30665 (value!188671 List!39196)) (Object!6256) (End!6133) (Def!6133) (Underscore!6133) (Match!6133) (Else!6133) (Error!6133) (Case!6133) (If!6133) (Extends!6133) (Abstract!6133) (Class!6133) (Val!6133) (DelimiterValue!12266 (del!6193 List!39196)) (KeywordValue!6139 (value!188672 List!39196)) (CommentValue!12266 (value!188673 List!39196)) (WhitespaceValue!12266 (value!188674 List!39196)) (IndentationValue!6133 (value!188675 List!39196)) (String!44000) (Int32!6133) (Broken!30666 (value!188676 List!39196)) (Boolean!6134) (Unit!57116) (OperatorValue!6136 (op!6193 List!39196)) (IdentifierValue!12266 (value!188677 List!39196)) (IdentifierValue!12267 (value!188678 List!39196)) (WhitespaceValue!12267 (value!188679 List!39196)) (True!12266) (False!12266) (Broken!30667 (value!188680 List!39196)) (Broken!30668 (value!188681 List!39196)) (True!12267) (RightBrace!6133) (RightBracket!6133) (Colon!6133) (Null!6133) (Comma!6133) (LeftBracket!6133) (False!12267) (LeftBrace!6133) (ImaginaryLiteralValue!6133 (text!43377 List!39196)) (StringLiteralValue!18399 (value!188682 List!39196)) (EOFValue!6133 (value!188683 List!39196)) (IdentValue!6133 (value!188684 List!39196)) (DelimiterValue!12267 (value!188685 List!39196)) (DedentValue!6133 (value!188686 List!39196)) (NewLineValue!6133 (value!188687 List!39196)) (IntegerValue!18399 (value!188688 (_ BitVec 32)) (text!43378 List!39196)) (IntegerValue!18400 (value!188689 Int) (text!43379 List!39196)) (Times!6133) (Or!6133) (Equal!6133) (Minus!6133) (Broken!30669 (value!188690 List!39196)) (And!6133) (Div!6133) (LessEqual!6133) (Mod!6133) (Concat!16795) (Not!6133) (Plus!6133) (SpaceValue!6133 (value!188691 List!39196)) (IntegerValue!18401 (value!188692 Int) (text!43380 List!39196)) (StringLiteralValue!18400 (text!43381 List!39196)) (FloatLiteralValue!12267 (text!43382 List!39196)) (BytesLiteralValue!6133 (value!188693 List!39196)) (CommentValue!12267 (value!188694 List!39196)) (StringLiteralValue!18401 (value!188695 List!39196)) (ErrorTokenValue!6133 (msg!6194 List!39196)) )
))
(declare-datatypes ((C!21510 0))(
  ( (C!21511 (val!12803 Int)) )
))
(declare-datatypes ((List!39197 0))(
  ( (Nil!39073) (Cons!39073 (h!44493 C!21510) (t!301330 List!39197)) )
))
(declare-datatypes ((IArray!23997 0))(
  ( (IArray!23998 (innerList!12056 List!39197)) )
))
(declare-datatypes ((Regex!10662 0))(
  ( (ElementMatch!10662 (c!638267 C!21510)) (Concat!16796 (regOne!21836 Regex!10662) (regTwo!21836 Regex!10662)) (EmptyExpr!10662) (Star!10662 (reg!10991 Regex!10662)) (EmptyLang!10662) (Union!10662 (regOne!21837 Regex!10662) (regTwo!21837 Regex!10662)) )
))
(declare-datatypes ((Conc!11996 0))(
  ( (Node!11996 (left!30478 Conc!11996) (right!30808 Conc!11996) (csize!24222 Int) (cheight!12207 Int)) (Leaf!18559 (xs!15198 IArray!23997) (csize!24223 Int)) (Empty!11996) )
))
(declare-datatypes ((BalanceConc!23606 0))(
  ( (BalanceConc!23607 (c!638268 Conc!11996)) )
))
(declare-datatypes ((String!44001 0))(
  ( (String!44002 (value!188696 String)) )
))
(declare-datatypes ((TokenValueInjection!11694 0))(
  ( (TokenValueInjection!11695 (toValue!8223 Int) (toChars!8082 Int)) )
))
(declare-datatypes ((Rule!11606 0))(
  ( (Rule!11607 (regex!5903 Regex!10662) (tag!6721 String!44001) (isSeparator!5903 Bool) (transformation!5903 TokenValueInjection!11694)) )
))
(declare-datatypes ((List!39198 0))(
  ( (Nil!39074) (Cons!39074 (h!44494 Rule!11606) (t!301331 List!39198)) )
))
(declare-fun rules!3568 () List!39198)

(declare-fun b!3690523 () Bool)

(declare-fun inv!52539 (String!44001) Bool)

(declare-fun inv!52542 (TokenValueInjection!11694) Bool)

(assert (=> b!3690523 (= e!2285285 (and tp!1121432 (inv!52539 (tag!6721 (h!44494 rules!3568))) (inv!52542 (transformation!5903 (h!44494 rules!3568))) e!2285281))))

(declare-fun b!3690524 () Bool)

(declare-fun res!1500126 () Bool)

(declare-fun e!2285289 () Bool)

(assert (=> b!3690524 (=> (not res!1500126) (not e!2285289))))

(declare-fun isEmpty!23285 (List!39198) Bool)

(assert (=> b!3690524 (= res!1500126 (not (isEmpty!23285 rules!3568)))))

(declare-fun b!3690525 () Bool)

(declare-fun res!1500123 () Bool)

(assert (=> b!3690525 (=> (not res!1500123) (not e!2285289))))

(declare-datatypes ((LexerInterface!5492 0))(
  ( (LexerInterfaceExt!5489 (__x!24484 Int)) (Lexer!5490) )
))
(declare-fun thiss!25197 () LexerInterface!5492)

(declare-fun rulesInvariant!4889 (LexerInterface!5492 List!39198) Bool)

(assert (=> b!3690525 (= res!1500123 (rulesInvariant!4889 thiss!25197 rules!3568))))

(declare-fun res!1500125 () Bool)

(assert (=> start!347220 (=> (not res!1500125) (not e!2285289))))

(assert (=> start!347220 (= res!1500125 (is-Lexer!5490 thiss!25197))))

(assert (=> start!347220 e!2285289))

(assert (=> start!347220 true))

(declare-fun e!2285288 () Bool)

(assert (=> start!347220 e!2285288))

(declare-fun e!2285279 () Bool)

(assert (=> start!347220 e!2285279))

(declare-fun e!2285290 () Bool)

(assert (=> start!347220 e!2285290))

(declare-fun b!3690526 () Bool)

(declare-fun e!2285287 () Bool)

(declare-datatypes ((Token!11172 0))(
  ( (Token!11173 (value!188697 TokenValue!6133) (rule!8753 Rule!11606) (size!29859 Int) (originalCharacters!6617 List!39197)) )
))
(declare-datatypes ((tuple2!38996 0))(
  ( (tuple2!38997 (_1!22632 Token!11172) (_2!22632 List!39197)) )
))
(declare-datatypes ((Option!8417 0))(
  ( (None!8416) (Some!8416 (v!38370 tuple2!38996)) )
))
(declare-fun lt!1292184 () Option!8417)

(assert (=> b!3690526 (= e!2285287 (= lt!1292184 None!8416))))

(declare-fun b!3690527 () Bool)

(declare-fun e!2285280 () Bool)

(assert (=> b!3690527 (= e!2285289 e!2285280)))

(declare-fun res!1500128 () Bool)

(assert (=> b!3690527 (=> (not res!1500128) (not e!2285280))))

(declare-datatypes ((List!39199 0))(
  ( (Nil!39075) (Cons!39075 (h!44495 Token!11172) (t!301332 List!39199)) )
))
(declare-datatypes ((IArray!23999 0))(
  ( (IArray!24000 (innerList!12057 List!39199)) )
))
(declare-datatypes ((Conc!11997 0))(
  ( (Node!11997 (left!30479 Conc!11997) (right!30809 Conc!11997) (csize!24224 Int) (cheight!12208 Int)) (Leaf!18560 (xs!15199 IArray!23999) (csize!24225 Int)) (Empty!11997) )
))
(declare-datatypes ((BalanceConc!23608 0))(
  ( (BalanceConc!23609 (c!638269 Conc!11997)) )
))
(declare-datatypes ((tuple2!38998 0))(
  ( (tuple2!38999 (_1!22633 BalanceConc!23608) (_2!22633 BalanceConc!23606)) )
))
(declare-fun lt!1292177 () tuple2!38998)

(declare-fun isEmpty!23286 (BalanceConc!23608) Bool)

(assert (=> b!3690527 (= res!1500128 (not (isEmpty!23286 (_1!22633 lt!1292177))))))

(declare-fun input!3129 () List!39197)

(declare-fun lex!2633 (LexerInterface!5492 List!39198 BalanceConc!23606) tuple2!38998)

(declare-fun seqFromList!4452 (List!39197) BalanceConc!23606)

(assert (=> b!3690527 (= lt!1292177 (lex!2633 thiss!25197 rules!3568 (seqFromList!4452 input!3129)))))

(declare-fun b!3690528 () Bool)

(declare-fun tp_is_empty!18407 () Bool)

(declare-fun tp!1121430 () Bool)

(assert (=> b!3690528 (= e!2285290 (and tp_is_empty!18407 tp!1121430))))

(declare-fun b!3690529 () Bool)

(declare-fun tp!1121429 () Bool)

(assert (=> b!3690529 (= e!2285288 (and e!2285285 tp!1121429))))

(declare-fun b!3690530 () Bool)

(declare-fun e!2285283 () Bool)

(declare-fun e!2285284 () Bool)

(assert (=> b!3690530 (= e!2285283 e!2285284)))

(declare-fun res!1500121 () Bool)

(assert (=> b!3690530 (=> (not res!1500121) (not e!2285284))))

(declare-fun lt!1292185 () Rule!11606)

(declare-fun lt!1292175 () List!39197)

(declare-fun matchR!5217 (Regex!10662 List!39197) Bool)

(assert (=> b!3690530 (= res!1500121 (matchR!5217 (regex!5903 lt!1292185) lt!1292175))))

(declare-datatypes ((Option!8418 0))(
  ( (None!8417) (Some!8417 (v!38371 Rule!11606)) )
))
(declare-fun lt!1292186 () Option!8418)

(declare-fun get!12964 (Option!8418) Rule!11606)

(assert (=> b!3690530 (= lt!1292185 (get!12964 lt!1292186))))

(declare-fun b!3690531 () Bool)

(declare-fun res!1500127 () Bool)

(declare-fun e!2285282 () Bool)

(assert (=> b!3690531 (=> res!1500127 e!2285282)))

(declare-fun lt!1292181 () List!39197)

(declare-fun isEmpty!23287 (Option!8417) Bool)

(declare-fun maxPrefix!3020 (LexerInterface!5492 List!39198 List!39197) Option!8417)

(assert (=> b!3690531 (= res!1500127 (not (isEmpty!23287 (maxPrefix!3020 thiss!25197 rules!3568 lt!1292181))))))

(declare-fun b!3690532 () Bool)

(declare-fun lt!1292176 () Token!11172)

(assert (=> b!3690532 (= e!2285284 (= (rule!8753 lt!1292176) lt!1292185))))

(declare-fun b!3690533 () Bool)

(declare-fun tp!1121431 () Bool)

(assert (=> b!3690533 (= e!2285279 (and tp_is_empty!18407 tp!1121431))))

(assert (=> b!3690534 (= e!2285281 (and tp!1121428 tp!1121427))))

(declare-fun b!3690535 () Bool)

(assert (=> b!3690535 (= e!2285282 e!2285287)))

(declare-fun res!1500129 () Bool)

(assert (=> b!3690535 (=> res!1500129 e!2285287)))

(declare-fun ruleValid!2137 (LexerInterface!5492 Rule!11606) Bool)

(assert (=> b!3690535 (= res!1500129 (not (ruleValid!2137 thiss!25197 (rule!8753 lt!1292176))))))

(assert (=> b!3690535 (isEmpty!23287 lt!1292184)))

(declare-fun maxPrefixOneRule!2138 (LexerInterface!5492 Rule!11606 List!39197) Option!8417)

(assert (=> b!3690535 (= lt!1292184 (maxPrefixOneRule!2138 thiss!25197 (rule!8753 lt!1292176) lt!1292181))))

(declare-datatypes ((Unit!57117 0))(
  ( (Unit!57118) )
))
(declare-fun lt!1292183 () Unit!57117)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!593 (LexerInterface!5492 Rule!11606 List!39198 List!39197) Unit!57117)

(assert (=> b!3690535 (= lt!1292183 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!593 thiss!25197 (rule!8753 lt!1292176) rules!3568 lt!1292181))))

(declare-fun b!3690536 () Bool)

(assert (=> b!3690536 (= e!2285280 (not e!2285282))))

(declare-fun res!1500124 () Bool)

(assert (=> b!3690536 (=> res!1500124 e!2285282)))

(assert (=> b!3690536 (= res!1500124 (not (matchR!5217 (regex!5903 (rule!8753 lt!1292176)) lt!1292175)))))

(assert (=> b!3690536 e!2285283))

(declare-fun res!1500122 () Bool)

(assert (=> b!3690536 (=> (not res!1500122) (not e!2285283))))

(declare-fun isDefined!6612 (Option!8418) Bool)

(assert (=> b!3690536 (= res!1500122 (isDefined!6612 lt!1292186))))

(declare-fun getRuleFromTag!1485 (LexerInterface!5492 List!39198 String!44001) Option!8418)

(assert (=> b!3690536 (= lt!1292186 (getRuleFromTag!1485 thiss!25197 rules!3568 (tag!6721 (rule!8753 lt!1292176))))))

(declare-fun lt!1292180 () Unit!57117)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1485 (LexerInterface!5492 List!39198 List!39197 Token!11172) Unit!57117)

(assert (=> b!3690536 (= lt!1292180 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1485 thiss!25197 rules!3568 input!3129 lt!1292176))))

(declare-fun isPrefix!3256 (List!39197 List!39197) Bool)

(assert (=> b!3690536 (isPrefix!3256 lt!1292175 lt!1292181)))

(declare-fun suffix!1448 () List!39197)

(declare-fun ++!9734 (List!39197 List!39197) List!39197)

(assert (=> b!3690536 (= lt!1292181 (++!9734 input!3129 suffix!1448))))

(declare-fun lt!1292178 () Unit!57117)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!585 (List!39197 List!39197 List!39197) Unit!57117)

(assert (=> b!3690536 (= lt!1292178 (lemmaPrefixStaysPrefixWhenAddingToSuffix!585 lt!1292175 input!3129 suffix!1448))))

(declare-fun lt!1292182 () tuple2!38996)

(assert (=> b!3690536 (isPrefix!3256 lt!1292175 (++!9734 lt!1292175 (_2!22632 lt!1292182)))))

(declare-fun lt!1292179 () Unit!57117)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2173 (List!39197 List!39197) Unit!57117)

(assert (=> b!3690536 (= lt!1292179 (lemmaConcatTwoListThenFirstIsPrefix!2173 lt!1292175 (_2!22632 lt!1292182)))))

(declare-fun get!12965 (Option!8417) tuple2!38996)

(assert (=> b!3690536 (= lt!1292182 (get!12965 (maxPrefix!3020 thiss!25197 rules!3568 input!3129)))))

(declare-fun list!14608 (BalanceConc!23606) List!39197)

(declare-fun charsOf!3914 (Token!11172) BalanceConc!23606)

(assert (=> b!3690536 (= lt!1292175 (list!14608 (charsOf!3914 lt!1292176)))))

(declare-fun head!7975 (List!39199) Token!11172)

(declare-fun list!14609 (BalanceConc!23608) List!39199)

(assert (=> b!3690536 (= lt!1292176 (head!7975 (list!14609 (_1!22633 lt!1292177))))))

(assert (= (and start!347220 res!1500125) b!3690524))

(assert (= (and b!3690524 res!1500126) b!3690525))

(assert (= (and b!3690525 res!1500123) b!3690527))

(assert (= (and b!3690527 res!1500128) b!3690536))

(assert (= (and b!3690536 res!1500122) b!3690530))

(assert (= (and b!3690530 res!1500121) b!3690532))

(assert (= (and b!3690536 (not res!1500124)) b!3690531))

(assert (= (and b!3690531 (not res!1500127)) b!3690535))

(assert (= (and b!3690535 (not res!1500129)) b!3690526))

(assert (= b!3690523 b!3690534))

(assert (= b!3690529 b!3690523))

(assert (= (and start!347220 (is-Cons!39074 rules!3568)) b!3690529))

(assert (= (and start!347220 (is-Cons!39073 suffix!1448)) b!3690533))

(assert (= (and start!347220 (is-Cons!39073 input!3129)) b!3690528))

(declare-fun m!4203073 () Bool)

(assert (=> b!3690523 m!4203073))

(declare-fun m!4203075 () Bool)

(assert (=> b!3690523 m!4203075))

(declare-fun m!4203077 () Bool)

(assert (=> b!3690530 m!4203077))

(declare-fun m!4203079 () Bool)

(assert (=> b!3690530 m!4203079))

(declare-fun m!4203081 () Bool)

(assert (=> b!3690531 m!4203081))

(assert (=> b!3690531 m!4203081))

(declare-fun m!4203083 () Bool)

(assert (=> b!3690531 m!4203083))

(declare-fun m!4203085 () Bool)

(assert (=> b!3690524 m!4203085))

(declare-fun m!4203087 () Bool)

(assert (=> b!3690525 m!4203087))

(declare-fun m!4203089 () Bool)

(assert (=> b!3690536 m!4203089))

(declare-fun m!4203091 () Bool)

(assert (=> b!3690536 m!4203091))

(declare-fun m!4203093 () Bool)

(assert (=> b!3690536 m!4203093))

(declare-fun m!4203095 () Bool)

(assert (=> b!3690536 m!4203095))

(declare-fun m!4203097 () Bool)

(assert (=> b!3690536 m!4203097))

(declare-fun m!4203099 () Bool)

(assert (=> b!3690536 m!4203099))

(declare-fun m!4203101 () Bool)

(assert (=> b!3690536 m!4203101))

(declare-fun m!4203103 () Bool)

(assert (=> b!3690536 m!4203103))

(assert (=> b!3690536 m!4203095))

(declare-fun m!4203105 () Bool)

(assert (=> b!3690536 m!4203105))

(declare-fun m!4203107 () Bool)

(assert (=> b!3690536 m!4203107))

(assert (=> b!3690536 m!4203101))

(declare-fun m!4203109 () Bool)

(assert (=> b!3690536 m!4203109))

(declare-fun m!4203111 () Bool)

(assert (=> b!3690536 m!4203111))

(declare-fun m!4203113 () Bool)

(assert (=> b!3690536 m!4203113))

(declare-fun m!4203115 () Bool)

(assert (=> b!3690536 m!4203115))

(assert (=> b!3690536 m!4203107))

(declare-fun m!4203117 () Bool)

(assert (=> b!3690536 m!4203117))

(assert (=> b!3690536 m!4203091))

(declare-fun m!4203119 () Bool)

(assert (=> b!3690536 m!4203119))

(declare-fun m!4203121 () Bool)

(assert (=> b!3690535 m!4203121))

(declare-fun m!4203123 () Bool)

(assert (=> b!3690535 m!4203123))

(declare-fun m!4203125 () Bool)

(assert (=> b!3690535 m!4203125))

(declare-fun m!4203127 () Bool)

(assert (=> b!3690535 m!4203127))

(declare-fun m!4203129 () Bool)

(assert (=> b!3690527 m!4203129))

(declare-fun m!4203131 () Bool)

(assert (=> b!3690527 m!4203131))

(assert (=> b!3690527 m!4203131))

(declare-fun m!4203133 () Bool)

(assert (=> b!3690527 m!4203133))

(push 1)

(assert b_and!275687)

(assert (not b!3690533))

(assert (not b!3690527))

(assert (not b!3690536))

(assert (not b!3690523))

(assert (not b!3690529))

(assert (not b_next!98635))

(assert (not b!3690525))

(assert (not b!3690531))

(assert (not b!3690535))

(assert (not b!3690528))

(assert (not b!3690524))

(assert b_and!275689)

(assert tp_is_empty!18407)

(assert (not b!3690530))

(assert (not b_next!98633))

(check-sat)

(pop 1)

(push 1)

(assert b_and!275687)

(assert b_and!275689)

(assert (not b_next!98635))

(assert (not b_next!98633))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1083129 () Bool)

(assert (=> d!1083129 (= (inv!52539 (tag!6721 (h!44494 rules!3568))) (= (mod (str.len (value!188696 (tag!6721 (h!44494 rules!3568)))) 2) 0))))

(assert (=> b!3690523 d!1083129))

(declare-fun d!1083131 () Bool)

(declare-fun res!1500163 () Bool)

(declare-fun e!2285329 () Bool)

(assert (=> d!1083131 (=> (not res!1500163) (not e!2285329))))

(declare-fun semiInverseModEq!2522 (Int Int) Bool)

(assert (=> d!1083131 (= res!1500163 (semiInverseModEq!2522 (toChars!8082 (transformation!5903 (h!44494 rules!3568))) (toValue!8223 (transformation!5903 (h!44494 rules!3568)))))))

(assert (=> d!1083131 (= (inv!52542 (transformation!5903 (h!44494 rules!3568))) e!2285329)))

(declare-fun b!3690581 () Bool)

(declare-fun equivClasses!2421 (Int Int) Bool)

(assert (=> b!3690581 (= e!2285329 (equivClasses!2421 (toChars!8082 (transformation!5903 (h!44494 rules!3568))) (toValue!8223 (transformation!5903 (h!44494 rules!3568)))))))

(assert (= (and d!1083131 res!1500163) b!3690581))

(declare-fun m!4203197 () Bool)

(assert (=> d!1083131 m!4203197))

(declare-fun m!4203199 () Bool)

(assert (=> b!3690581 m!4203199))

(assert (=> b!3690523 d!1083131))

(declare-fun d!1083133 () Bool)

(assert (=> d!1083133 (= (isEmpty!23285 rules!3568) (is-Nil!39074 rules!3568))))

(assert (=> b!3690524 d!1083133))

(declare-fun d!1083135 () Bool)

(declare-fun res!1500171 () Bool)

(declare-fun e!2285332 () Bool)

(assert (=> d!1083135 (=> (not res!1500171) (not e!2285332))))

(declare-fun validRegex!4882 (Regex!10662) Bool)

(assert (=> d!1083135 (= res!1500171 (validRegex!4882 (regex!5903 (rule!8753 lt!1292176))))))

(assert (=> d!1083135 (= (ruleValid!2137 thiss!25197 (rule!8753 lt!1292176)) e!2285332)))

(declare-fun b!3690586 () Bool)

(declare-fun res!1500172 () Bool)

(assert (=> b!3690586 (=> (not res!1500172) (not e!2285332))))

(declare-fun nullable!3720 (Regex!10662) Bool)

(assert (=> b!3690586 (= res!1500172 (not (nullable!3720 (regex!5903 (rule!8753 lt!1292176)))))))

(declare-fun b!3690587 () Bool)

(assert (=> b!3690587 (= e!2285332 (not (= (tag!6721 (rule!8753 lt!1292176)) (String!44002 ""))))))

(assert (= (and d!1083135 res!1500171) b!3690586))

(assert (= (and b!3690586 res!1500172) b!3690587))

(declare-fun m!4203201 () Bool)

(assert (=> d!1083135 m!4203201))

(declare-fun m!4203203 () Bool)

(assert (=> b!3690586 m!4203203))

(assert (=> b!3690535 d!1083135))

(declare-fun d!1083137 () Bool)

(assert (=> d!1083137 (= (isEmpty!23287 lt!1292184) (not (is-Some!8416 lt!1292184)))))

(assert (=> b!3690535 d!1083137))

(declare-fun d!1083139 () Bool)

(declare-fun e!2285350 () Bool)

(assert (=> d!1083139 e!2285350))

(declare-fun res!1500194 () Bool)

(assert (=> d!1083139 (=> res!1500194 e!2285350)))

(declare-fun lt!1292241 () Option!8417)

(assert (=> d!1083139 (= res!1500194 (isEmpty!23287 lt!1292241))))

(declare-fun e!2285349 () Option!8417)

(assert (=> d!1083139 (= lt!1292241 e!2285349)))

(declare-fun c!638280 () Bool)

(declare-datatypes ((tuple2!39004 0))(
  ( (tuple2!39005 (_1!22636 List!39197) (_2!22636 List!39197)) )
))
(declare-fun lt!1292240 () tuple2!39004)

(declare-fun isEmpty!23291 (List!39197) Bool)

(assert (=> d!1083139 (= c!638280 (isEmpty!23291 (_1!22636 lt!1292240)))))

(declare-fun findLongestMatch!1019 (Regex!10662 List!39197) tuple2!39004)

(assert (=> d!1083139 (= lt!1292240 (findLongestMatch!1019 (regex!5903 (rule!8753 lt!1292176)) lt!1292181))))

(assert (=> d!1083139 (ruleValid!2137 thiss!25197 (rule!8753 lt!1292176))))

(assert (=> d!1083139 (= (maxPrefixOneRule!2138 thiss!25197 (rule!8753 lt!1292176) lt!1292181) lt!1292241)))

(declare-fun b!3690618 () Bool)

(declare-fun e!2285351 () Bool)

(assert (=> b!3690618 (= e!2285350 e!2285351)))

(declare-fun res!1500197 () Bool)

(assert (=> b!3690618 (=> (not res!1500197) (not e!2285351))))

(assert (=> b!3690618 (= res!1500197 (matchR!5217 (regex!5903 (rule!8753 lt!1292176)) (list!14608 (charsOf!3914 (_1!22632 (get!12965 lt!1292241))))))))

(declare-fun b!3690619 () Bool)

(declare-fun apply!9373 (TokenValueInjection!11694 BalanceConc!23606) TokenValue!6133)

(declare-fun size!29861 (BalanceConc!23606) Int)

(assert (=> b!3690619 (= e!2285349 (Some!8416 (tuple2!38997 (Token!11173 (apply!9373 (transformation!5903 (rule!8753 lt!1292176)) (seqFromList!4452 (_1!22636 lt!1292240))) (rule!8753 lt!1292176) (size!29861 (seqFromList!4452 (_1!22636 lt!1292240))) (_1!22636 lt!1292240)) (_2!22636 lt!1292240))))))

(declare-fun lt!1292243 () Unit!57117)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1077 (Regex!10662 List!39197) Unit!57117)

(assert (=> b!3690619 (= lt!1292243 (longestMatchIsAcceptedByMatchOrIsEmpty!1077 (regex!5903 (rule!8753 lt!1292176)) lt!1292181))))

(declare-fun res!1500193 () Bool)

(declare-fun findLongestMatchInner!1104 (Regex!10662 List!39197 Int List!39197 List!39197 Int) tuple2!39004)

(declare-fun size!29862 (List!39197) Int)

(assert (=> b!3690619 (= res!1500193 (isEmpty!23291 (_1!22636 (findLongestMatchInner!1104 (regex!5903 (rule!8753 lt!1292176)) Nil!39073 (size!29862 Nil!39073) lt!1292181 lt!1292181 (size!29862 lt!1292181)))))))

(declare-fun e!2285352 () Bool)

(assert (=> b!3690619 (=> res!1500193 e!2285352)))

(assert (=> b!3690619 e!2285352))

(declare-fun lt!1292242 () Unit!57117)

(assert (=> b!3690619 (= lt!1292242 lt!1292243)))

(declare-fun lt!1292239 () Unit!57117)

(declare-fun lemmaSemiInverse!1610 (TokenValueInjection!11694 BalanceConc!23606) Unit!57117)

(assert (=> b!3690619 (= lt!1292239 (lemmaSemiInverse!1610 (transformation!5903 (rule!8753 lt!1292176)) (seqFromList!4452 (_1!22636 lt!1292240))))))

(declare-fun b!3690620 () Bool)

(declare-fun res!1500195 () Bool)

(assert (=> b!3690620 (=> (not res!1500195) (not e!2285351))))

(assert (=> b!3690620 (= res!1500195 (= (rule!8753 (_1!22632 (get!12965 lt!1292241))) (rule!8753 lt!1292176)))))

(declare-fun b!3690621 () Bool)

(assert (=> b!3690621 (= e!2285351 (= (size!29859 (_1!22632 (get!12965 lt!1292241))) (size!29862 (originalCharacters!6617 (_1!22632 (get!12965 lt!1292241))))))))

(declare-fun b!3690622 () Bool)

(assert (=> b!3690622 (= e!2285352 (matchR!5217 (regex!5903 (rule!8753 lt!1292176)) (_1!22636 (findLongestMatchInner!1104 (regex!5903 (rule!8753 lt!1292176)) Nil!39073 (size!29862 Nil!39073) lt!1292181 lt!1292181 (size!29862 lt!1292181)))))))

(declare-fun b!3690623 () Bool)

(declare-fun res!1500198 () Bool)

(assert (=> b!3690623 (=> (not res!1500198) (not e!2285351))))

(assert (=> b!3690623 (= res!1500198 (= (value!188697 (_1!22632 (get!12965 lt!1292241))) (apply!9373 (transformation!5903 (rule!8753 (_1!22632 (get!12965 lt!1292241)))) (seqFromList!4452 (originalCharacters!6617 (_1!22632 (get!12965 lt!1292241)))))))))

(declare-fun b!3690624 () Bool)

(declare-fun res!1500196 () Bool)

(assert (=> b!3690624 (=> (not res!1500196) (not e!2285351))))

(assert (=> b!3690624 (= res!1500196 (< (size!29862 (_2!22632 (get!12965 lt!1292241))) (size!29862 lt!1292181)))))

(declare-fun b!3690625 () Bool)

(declare-fun res!1500192 () Bool)

(assert (=> b!3690625 (=> (not res!1500192) (not e!2285351))))

(assert (=> b!3690625 (= res!1500192 (= (++!9734 (list!14608 (charsOf!3914 (_1!22632 (get!12965 lt!1292241)))) (_2!22632 (get!12965 lt!1292241))) lt!1292181))))

(declare-fun b!3690626 () Bool)

(assert (=> b!3690626 (= e!2285349 None!8416)))

(assert (= (and d!1083139 c!638280) b!3690626))

(assert (= (and d!1083139 (not c!638280)) b!3690619))

(assert (= (and b!3690619 (not res!1500193)) b!3690622))

(assert (= (and d!1083139 (not res!1500194)) b!3690618))

(assert (= (and b!3690618 res!1500197) b!3690625))

(assert (= (and b!3690625 res!1500192) b!3690624))

(assert (= (and b!3690624 res!1500196) b!3690620))

(assert (= (and b!3690620 res!1500195) b!3690623))

(assert (= (and b!3690623 res!1500198) b!3690621))

(declare-fun m!4203205 () Bool)

(assert (=> b!3690624 m!4203205))

(declare-fun m!4203207 () Bool)

(assert (=> b!3690624 m!4203207))

(declare-fun m!4203209 () Bool)

(assert (=> b!3690624 m!4203209))

(assert (=> b!3690620 m!4203205))

(declare-fun m!4203211 () Bool)

(assert (=> b!3690619 m!4203211))

(declare-fun m!4203213 () Bool)

(assert (=> b!3690619 m!4203213))

(declare-fun m!4203215 () Bool)

(assert (=> b!3690619 m!4203215))

(assert (=> b!3690619 m!4203213))

(declare-fun m!4203217 () Bool)

(assert (=> b!3690619 m!4203217))

(assert (=> b!3690619 m!4203213))

(declare-fun m!4203219 () Bool)

(assert (=> b!3690619 m!4203219))

(assert (=> b!3690619 m!4203209))

(assert (=> b!3690619 m!4203213))

(declare-fun m!4203221 () Bool)

(assert (=> b!3690619 m!4203221))

(assert (=> b!3690619 m!4203209))

(declare-fun m!4203223 () Bool)

(assert (=> b!3690619 m!4203223))

(assert (=> b!3690619 m!4203221))

(declare-fun m!4203225 () Bool)

(assert (=> b!3690619 m!4203225))

(assert (=> b!3690623 m!4203205))

(declare-fun m!4203227 () Bool)

(assert (=> b!3690623 m!4203227))

(assert (=> b!3690623 m!4203227))

(declare-fun m!4203229 () Bool)

(assert (=> b!3690623 m!4203229))

(assert (=> b!3690618 m!4203205))

(declare-fun m!4203231 () Bool)

(assert (=> b!3690618 m!4203231))

(assert (=> b!3690618 m!4203231))

(declare-fun m!4203233 () Bool)

(assert (=> b!3690618 m!4203233))

(assert (=> b!3690618 m!4203233))

(declare-fun m!4203235 () Bool)

(assert (=> b!3690618 m!4203235))

(assert (=> b!3690622 m!4203221))

(assert (=> b!3690622 m!4203209))

(assert (=> b!3690622 m!4203221))

(assert (=> b!3690622 m!4203209))

(assert (=> b!3690622 m!4203223))

(declare-fun m!4203237 () Bool)

(assert (=> b!3690622 m!4203237))

(declare-fun m!4203239 () Bool)

(assert (=> d!1083139 m!4203239))

(declare-fun m!4203241 () Bool)

(assert (=> d!1083139 m!4203241))

(declare-fun m!4203243 () Bool)

(assert (=> d!1083139 m!4203243))

(assert (=> d!1083139 m!4203121))

(assert (=> b!3690621 m!4203205))

(declare-fun m!4203245 () Bool)

(assert (=> b!3690621 m!4203245))

(assert (=> b!3690625 m!4203205))

(assert (=> b!3690625 m!4203231))

(assert (=> b!3690625 m!4203231))

(assert (=> b!3690625 m!4203233))

(assert (=> b!3690625 m!4203233))

(declare-fun m!4203247 () Bool)

(assert (=> b!3690625 m!4203247))

(assert (=> b!3690535 d!1083139))

(declare-fun d!1083143 () Bool)

(assert (=> d!1083143 (isEmpty!23287 (maxPrefixOneRule!2138 thiss!25197 (rule!8753 lt!1292176) lt!1292181))))

(declare-fun lt!1292249 () Unit!57117)

(declare-fun choose!22097 (LexerInterface!5492 Rule!11606 List!39198 List!39197) Unit!57117)

(assert (=> d!1083143 (= lt!1292249 (choose!22097 thiss!25197 (rule!8753 lt!1292176) rules!3568 lt!1292181))))

(assert (=> d!1083143 (not (isEmpty!23285 rules!3568))))

(assert (=> d!1083143 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!593 thiss!25197 (rule!8753 lt!1292176) rules!3568 lt!1292181) lt!1292249)))

(declare-fun bs!574079 () Bool)

(assert (= bs!574079 d!1083143))

(assert (=> bs!574079 m!4203125))

(assert (=> bs!574079 m!4203125))

(declare-fun m!4203263 () Bool)

(assert (=> bs!574079 m!4203263))

(declare-fun m!4203265 () Bool)

(assert (=> bs!574079 m!4203265))

(assert (=> bs!574079 m!4203085))

(assert (=> b!3690535 d!1083143))

(declare-fun b!3690661 () Bool)

(declare-fun e!2285371 () Bool)

(declare-fun lt!1292252 () Bool)

(assert (=> b!3690661 (= e!2285371 (not lt!1292252))))

(declare-fun b!3690662 () Bool)

(declare-fun res!1500221 () Bool)

(declare-fun e!2285374 () Bool)

(assert (=> b!3690662 (=> (not res!1500221) (not e!2285374))))

(declare-fun tail!5716 (List!39197) List!39197)

(assert (=> b!3690662 (= res!1500221 (isEmpty!23291 (tail!5716 lt!1292175)))))

(declare-fun b!3690663 () Bool)

(declare-fun res!1500224 () Bool)

(declare-fun e!2285373 () Bool)

(assert (=> b!3690663 (=> res!1500224 e!2285373)))

(assert (=> b!3690663 (= res!1500224 e!2285374)))

(declare-fun res!1500220 () Bool)

(assert (=> b!3690663 (=> (not res!1500220) (not e!2285374))))

(assert (=> b!3690663 (= res!1500220 lt!1292252)))

(declare-fun b!3690664 () Bool)

(declare-fun res!1500217 () Bool)

(declare-fun e!2285376 () Bool)

(assert (=> b!3690664 (=> res!1500217 e!2285376)))

(assert (=> b!3690664 (= res!1500217 (not (isEmpty!23291 (tail!5716 lt!1292175))))))

(declare-fun b!3690665 () Bool)

(declare-fun e!2285372 () Bool)

(assert (=> b!3690665 (= e!2285372 (nullable!3720 (regex!5903 lt!1292185)))))

(declare-fun d!1083151 () Bool)

(declare-fun e!2285375 () Bool)

(assert (=> d!1083151 e!2285375))

(declare-fun c!638290 () Bool)

(assert (=> d!1083151 (= c!638290 (is-EmptyExpr!10662 (regex!5903 lt!1292185)))))

(assert (=> d!1083151 (= lt!1292252 e!2285372)))

(declare-fun c!638289 () Bool)

(assert (=> d!1083151 (= c!638289 (isEmpty!23291 lt!1292175))))

(assert (=> d!1083151 (validRegex!4882 (regex!5903 lt!1292185))))

(assert (=> d!1083151 (= (matchR!5217 (regex!5903 lt!1292185) lt!1292175) lt!1292252)))

(declare-fun b!3690666 () Bool)

(declare-fun derivativeStep!3266 (Regex!10662 C!21510) Regex!10662)

(declare-fun head!7977 (List!39197) C!21510)

(assert (=> b!3690666 (= e!2285372 (matchR!5217 (derivativeStep!3266 (regex!5903 lt!1292185) (head!7977 lt!1292175)) (tail!5716 lt!1292175)))))

(declare-fun b!3690667 () Bool)

(assert (=> b!3690667 (= e!2285374 (= (head!7977 lt!1292175) (c!638267 (regex!5903 lt!1292185))))))

(declare-fun b!3690668 () Bool)

(assert (=> b!3690668 (= e!2285375 e!2285371)))

(declare-fun c!638291 () Bool)

(assert (=> b!3690668 (= c!638291 (is-EmptyLang!10662 (regex!5903 lt!1292185)))))

(declare-fun bm!266930 () Bool)

(declare-fun call!266935 () Bool)

(assert (=> bm!266930 (= call!266935 (isEmpty!23291 lt!1292175))))

(declare-fun b!3690669 () Bool)

(declare-fun res!1500223 () Bool)

(assert (=> b!3690669 (=> (not res!1500223) (not e!2285374))))

(assert (=> b!3690669 (= res!1500223 (not call!266935))))

(declare-fun b!3690670 () Bool)

(assert (=> b!3690670 (= e!2285376 (not (= (head!7977 lt!1292175) (c!638267 (regex!5903 lt!1292185)))))))

(declare-fun b!3690671 () Bool)

(declare-fun res!1500219 () Bool)

(assert (=> b!3690671 (=> res!1500219 e!2285373)))

(assert (=> b!3690671 (= res!1500219 (not (is-ElementMatch!10662 (regex!5903 lt!1292185))))))

(assert (=> b!3690671 (= e!2285371 e!2285373)))

(declare-fun b!3690672 () Bool)

(assert (=> b!3690672 (= e!2285375 (= lt!1292252 call!266935))))

(declare-fun b!3690673 () Bool)

(declare-fun e!2285377 () Bool)

(assert (=> b!3690673 (= e!2285377 e!2285376)))

(declare-fun res!1500222 () Bool)

(assert (=> b!3690673 (=> res!1500222 e!2285376)))

(assert (=> b!3690673 (= res!1500222 call!266935)))

(declare-fun b!3690674 () Bool)

(assert (=> b!3690674 (= e!2285373 e!2285377)))

(declare-fun res!1500218 () Bool)

(assert (=> b!3690674 (=> (not res!1500218) (not e!2285377))))

(assert (=> b!3690674 (= res!1500218 (not lt!1292252))))

(assert (= (and d!1083151 c!638289) b!3690665))

(assert (= (and d!1083151 (not c!638289)) b!3690666))

(assert (= (and d!1083151 c!638290) b!3690672))

(assert (= (and d!1083151 (not c!638290)) b!3690668))

(assert (= (and b!3690668 c!638291) b!3690661))

(assert (= (and b!3690668 (not c!638291)) b!3690671))

(assert (= (and b!3690671 (not res!1500219)) b!3690663))

(assert (= (and b!3690663 res!1500220) b!3690669))

(assert (= (and b!3690669 res!1500223) b!3690662))

(assert (= (and b!3690662 res!1500221) b!3690667))

(assert (= (and b!3690663 (not res!1500224)) b!3690674))

(assert (= (and b!3690674 res!1500218) b!3690673))

(assert (= (and b!3690673 (not res!1500222)) b!3690664))

(assert (= (and b!3690664 (not res!1500217)) b!3690670))

(assert (= (or b!3690672 b!3690669 b!3690673) bm!266930))

(declare-fun m!4203267 () Bool)

(assert (=> d!1083151 m!4203267))

(declare-fun m!4203269 () Bool)

(assert (=> d!1083151 m!4203269))

(assert (=> bm!266930 m!4203267))

(declare-fun m!4203271 () Bool)

(assert (=> b!3690667 m!4203271))

(declare-fun m!4203273 () Bool)

(assert (=> b!3690664 m!4203273))

(assert (=> b!3690664 m!4203273))

(declare-fun m!4203275 () Bool)

(assert (=> b!3690664 m!4203275))

(assert (=> b!3690670 m!4203271))

(assert (=> b!3690662 m!4203273))

(assert (=> b!3690662 m!4203273))

(assert (=> b!3690662 m!4203275))

(assert (=> b!3690666 m!4203271))

(assert (=> b!3690666 m!4203271))

(declare-fun m!4203277 () Bool)

(assert (=> b!3690666 m!4203277))

(assert (=> b!3690666 m!4203273))

(assert (=> b!3690666 m!4203277))

(assert (=> b!3690666 m!4203273))

(declare-fun m!4203279 () Bool)

(assert (=> b!3690666 m!4203279))

(declare-fun m!4203281 () Bool)

(assert (=> b!3690665 m!4203281))

(assert (=> b!3690530 d!1083151))

(declare-fun d!1083153 () Bool)

(assert (=> d!1083153 (= (get!12964 lt!1292186) (v!38371 lt!1292186))))

(assert (=> b!3690530 d!1083153))

(declare-fun d!1083155 () Bool)

(declare-fun res!1500227 () Bool)

(declare-fun e!2285380 () Bool)

(assert (=> d!1083155 (=> (not res!1500227) (not e!2285380))))

(declare-fun rulesValid!2279 (LexerInterface!5492 List!39198) Bool)

(assert (=> d!1083155 (= res!1500227 (rulesValid!2279 thiss!25197 rules!3568))))

(assert (=> d!1083155 (= (rulesInvariant!4889 thiss!25197 rules!3568) e!2285380)))

(declare-fun b!3690677 () Bool)

(declare-datatypes ((List!39204 0))(
  ( (Nil!39080) (Cons!39080 (h!44500 String!44001) (t!301343 List!39204)) )
))
(declare-fun noDuplicateTag!2275 (LexerInterface!5492 List!39198 List!39204) Bool)

(assert (=> b!3690677 (= e!2285380 (noDuplicateTag!2275 thiss!25197 rules!3568 Nil!39080))))

(assert (= (and d!1083155 res!1500227) b!3690677))

(declare-fun m!4203283 () Bool)

(assert (=> d!1083155 m!4203283))

(declare-fun m!4203285 () Bool)

(assert (=> b!3690677 m!4203285))

(assert (=> b!3690525 d!1083155))

(declare-fun d!1083157 () Bool)

(assert (=> d!1083157 (= (get!12965 (maxPrefix!3020 thiss!25197 rules!3568 input!3129)) (v!38370 (maxPrefix!3020 thiss!25197 rules!3568 input!3129)))))

(assert (=> b!3690536 d!1083157))

(declare-fun d!1083159 () Bool)

(declare-fun lt!1292255 () BalanceConc!23606)

(assert (=> d!1083159 (= (list!14608 lt!1292255) (originalCharacters!6617 lt!1292176))))

(declare-fun dynLambda!17115 (Int TokenValue!6133) BalanceConc!23606)

(assert (=> d!1083159 (= lt!1292255 (dynLambda!17115 (toChars!8082 (transformation!5903 (rule!8753 lt!1292176))) (value!188697 lt!1292176)))))

(assert (=> d!1083159 (= (charsOf!3914 lt!1292176) lt!1292255)))

(declare-fun b_lambda!109507 () Bool)

(assert (=> (not b_lambda!109507) (not d!1083159)))

(declare-fun t!301338 () Bool)

(declare-fun tb!213853 () Bool)

(assert (=> (and b!3690534 (= (toChars!8082 (transformation!5903 (h!44494 rules!3568))) (toChars!8082 (transformation!5903 (rule!8753 lt!1292176)))) t!301338) tb!213853))

(declare-fun b!3690682 () Bool)

(declare-fun e!2285383 () Bool)

(declare-fun tp!1121453 () Bool)

(declare-fun inv!52544 (Conc!11996) Bool)

(assert (=> b!3690682 (= e!2285383 (and (inv!52544 (c!638268 (dynLambda!17115 (toChars!8082 (transformation!5903 (rule!8753 lt!1292176))) (value!188697 lt!1292176)))) tp!1121453))))

(declare-fun result!260362 () Bool)

(declare-fun inv!52545 (BalanceConc!23606) Bool)

(assert (=> tb!213853 (= result!260362 (and (inv!52545 (dynLambda!17115 (toChars!8082 (transformation!5903 (rule!8753 lt!1292176))) (value!188697 lt!1292176))) e!2285383))))

(assert (= tb!213853 b!3690682))

(declare-fun m!4203287 () Bool)

(assert (=> b!3690682 m!4203287))

(declare-fun m!4203289 () Bool)

(assert (=> tb!213853 m!4203289))

(assert (=> d!1083159 t!301338))

(declare-fun b_and!275695 () Bool)

(assert (= b_and!275689 (and (=> t!301338 result!260362) b_and!275695)))

(declare-fun m!4203291 () Bool)

(assert (=> d!1083159 m!4203291))

(declare-fun m!4203293 () Bool)

(assert (=> d!1083159 m!4203293))

(assert (=> b!3690536 d!1083159))

(declare-fun b!3690701 () Bool)

(declare-fun e!2285392 () Option!8417)

(declare-fun call!266938 () Option!8417)

(assert (=> b!3690701 (= e!2285392 call!266938)))

(declare-fun b!3690702 () Bool)

(declare-fun res!1500248 () Bool)

(declare-fun e!2285391 () Bool)

(assert (=> b!3690702 (=> (not res!1500248) (not e!2285391))))

(declare-fun lt!1292270 () Option!8417)

(assert (=> b!3690702 (= res!1500248 (matchR!5217 (regex!5903 (rule!8753 (_1!22632 (get!12965 lt!1292270)))) (list!14608 (charsOf!3914 (_1!22632 (get!12965 lt!1292270))))))))

(declare-fun b!3690703 () Bool)

(declare-fun lt!1292268 () Option!8417)

(declare-fun lt!1292266 () Option!8417)

(assert (=> b!3690703 (= e!2285392 (ite (and (is-None!8416 lt!1292268) (is-None!8416 lt!1292266)) None!8416 (ite (is-None!8416 lt!1292266) lt!1292268 (ite (is-None!8416 lt!1292268) lt!1292266 (ite (>= (size!29859 (_1!22632 (v!38370 lt!1292268))) (size!29859 (_1!22632 (v!38370 lt!1292266)))) lt!1292268 lt!1292266)))))))

(assert (=> b!3690703 (= lt!1292268 call!266938)))

(assert (=> b!3690703 (= lt!1292266 (maxPrefix!3020 thiss!25197 (t!301331 rules!3568) input!3129))))

(declare-fun b!3690704 () Bool)

(declare-fun res!1500242 () Bool)

(assert (=> b!3690704 (=> (not res!1500242) (not e!2285391))))

(assert (=> b!3690704 (= res!1500242 (= (value!188697 (_1!22632 (get!12965 lt!1292270))) (apply!9373 (transformation!5903 (rule!8753 (_1!22632 (get!12965 lt!1292270)))) (seqFromList!4452 (originalCharacters!6617 (_1!22632 (get!12965 lt!1292270)))))))))

(declare-fun b!3690705 () Bool)

(declare-fun res!1500247 () Bool)

(assert (=> b!3690705 (=> (not res!1500247) (not e!2285391))))

(assert (=> b!3690705 (= res!1500247 (< (size!29862 (_2!22632 (get!12965 lt!1292270))) (size!29862 input!3129)))))

(declare-fun b!3690706 () Bool)

(declare-fun contains!7802 (List!39198 Rule!11606) Bool)

(assert (=> b!3690706 (= e!2285391 (contains!7802 rules!3568 (rule!8753 (_1!22632 (get!12965 lt!1292270)))))))

(declare-fun d!1083161 () Bool)

(declare-fun e!2285390 () Bool)

(assert (=> d!1083161 e!2285390))

(declare-fun res!1500243 () Bool)

(assert (=> d!1083161 (=> res!1500243 e!2285390)))

(assert (=> d!1083161 (= res!1500243 (isEmpty!23287 lt!1292270))))

(assert (=> d!1083161 (= lt!1292270 e!2285392)))

(declare-fun c!638294 () Bool)

(assert (=> d!1083161 (= c!638294 (and (is-Cons!39074 rules!3568) (is-Nil!39074 (t!301331 rules!3568))))))

(declare-fun lt!1292269 () Unit!57117)

(declare-fun lt!1292267 () Unit!57117)

(assert (=> d!1083161 (= lt!1292269 lt!1292267)))

(assert (=> d!1083161 (isPrefix!3256 input!3129 input!3129)))

(declare-fun lemmaIsPrefixRefl!2041 (List!39197 List!39197) Unit!57117)

(assert (=> d!1083161 (= lt!1292267 (lemmaIsPrefixRefl!2041 input!3129 input!3129))))

(declare-fun rulesValidInductive!2115 (LexerInterface!5492 List!39198) Bool)

(assert (=> d!1083161 (rulesValidInductive!2115 thiss!25197 rules!3568)))

(assert (=> d!1083161 (= (maxPrefix!3020 thiss!25197 rules!3568 input!3129) lt!1292270)))

(declare-fun b!3690707 () Bool)

(assert (=> b!3690707 (= e!2285390 e!2285391)))

(declare-fun res!1500246 () Bool)

(assert (=> b!3690707 (=> (not res!1500246) (not e!2285391))))

(declare-fun isDefined!6614 (Option!8417) Bool)

(assert (=> b!3690707 (= res!1500246 (isDefined!6614 lt!1292270))))

(declare-fun b!3690708 () Bool)

(declare-fun res!1500244 () Bool)

(assert (=> b!3690708 (=> (not res!1500244) (not e!2285391))))

(assert (=> b!3690708 (= res!1500244 (= (++!9734 (list!14608 (charsOf!3914 (_1!22632 (get!12965 lt!1292270)))) (_2!22632 (get!12965 lt!1292270))) input!3129))))

(declare-fun bm!266933 () Bool)

(assert (=> bm!266933 (= call!266938 (maxPrefixOneRule!2138 thiss!25197 (h!44494 rules!3568) input!3129))))

(declare-fun b!3690709 () Bool)

(declare-fun res!1500245 () Bool)

(assert (=> b!3690709 (=> (not res!1500245) (not e!2285391))))

(assert (=> b!3690709 (= res!1500245 (= (list!14608 (charsOf!3914 (_1!22632 (get!12965 lt!1292270)))) (originalCharacters!6617 (_1!22632 (get!12965 lt!1292270)))))))

(assert (= (and d!1083161 c!638294) b!3690701))

(assert (= (and d!1083161 (not c!638294)) b!3690703))

(assert (= (or b!3690701 b!3690703) bm!266933))

(assert (= (and d!1083161 (not res!1500243)) b!3690707))

(assert (= (and b!3690707 res!1500246) b!3690709))

(assert (= (and b!3690709 res!1500245) b!3690705))

(assert (= (and b!3690705 res!1500247) b!3690708))

(assert (= (and b!3690708 res!1500244) b!3690704))

(assert (= (and b!3690704 res!1500242) b!3690702))

(assert (= (and b!3690702 res!1500248) b!3690706))

(declare-fun m!4203295 () Bool)

(assert (=> b!3690707 m!4203295))

(declare-fun m!4203297 () Bool)

(assert (=> b!3690708 m!4203297))

(declare-fun m!4203299 () Bool)

(assert (=> b!3690708 m!4203299))

(assert (=> b!3690708 m!4203299))

(declare-fun m!4203301 () Bool)

(assert (=> b!3690708 m!4203301))

(assert (=> b!3690708 m!4203301))

(declare-fun m!4203303 () Bool)

(assert (=> b!3690708 m!4203303))

(declare-fun m!4203305 () Bool)

(assert (=> d!1083161 m!4203305))

(declare-fun m!4203307 () Bool)

(assert (=> d!1083161 m!4203307))

(declare-fun m!4203309 () Bool)

(assert (=> d!1083161 m!4203309))

(declare-fun m!4203311 () Bool)

(assert (=> d!1083161 m!4203311))

(assert (=> b!3690705 m!4203297))

(declare-fun m!4203313 () Bool)

(assert (=> b!3690705 m!4203313))

(declare-fun m!4203315 () Bool)

(assert (=> b!3690705 m!4203315))

(assert (=> b!3690702 m!4203297))

(assert (=> b!3690702 m!4203299))

(assert (=> b!3690702 m!4203299))

(assert (=> b!3690702 m!4203301))

(assert (=> b!3690702 m!4203301))

(declare-fun m!4203317 () Bool)

(assert (=> b!3690702 m!4203317))

(declare-fun m!4203319 () Bool)

(assert (=> b!3690703 m!4203319))

(declare-fun m!4203321 () Bool)

(assert (=> bm!266933 m!4203321))

(assert (=> b!3690706 m!4203297))

(declare-fun m!4203323 () Bool)

(assert (=> b!3690706 m!4203323))

(assert (=> b!3690704 m!4203297))

(declare-fun m!4203325 () Bool)

(assert (=> b!3690704 m!4203325))

(assert (=> b!3690704 m!4203325))

(declare-fun m!4203327 () Bool)

(assert (=> b!3690704 m!4203327))

(assert (=> b!3690709 m!4203297))

(assert (=> b!3690709 m!4203299))

(assert (=> b!3690709 m!4203299))

(assert (=> b!3690709 m!4203301))

(assert (=> b!3690536 d!1083161))

(declare-fun b!3690722 () Bool)

(declare-fun e!2285402 () Bool)

(declare-fun e!2285403 () Bool)

(assert (=> b!3690722 (= e!2285402 e!2285403)))

(declare-fun res!1500258 () Bool)

(assert (=> b!3690722 (=> (not res!1500258) (not e!2285403))))

(assert (=> b!3690722 (= res!1500258 (not (is-Nil!39073 (++!9734 lt!1292175 (_2!22632 lt!1292182)))))))

(declare-fun b!3690725 () Bool)

(declare-fun e!2285401 () Bool)

(assert (=> b!3690725 (= e!2285401 (>= (size!29862 (++!9734 lt!1292175 (_2!22632 lt!1292182))) (size!29862 lt!1292175)))))

(declare-fun d!1083163 () Bool)

(assert (=> d!1083163 e!2285401))

(declare-fun res!1500260 () Bool)

(assert (=> d!1083163 (=> res!1500260 e!2285401)))

(declare-fun lt!1292279 () Bool)

(assert (=> d!1083163 (= res!1500260 (not lt!1292279))))

(assert (=> d!1083163 (= lt!1292279 e!2285402)))

(declare-fun res!1500257 () Bool)

(assert (=> d!1083163 (=> res!1500257 e!2285402)))

(assert (=> d!1083163 (= res!1500257 (is-Nil!39073 lt!1292175))))

(assert (=> d!1083163 (= (isPrefix!3256 lt!1292175 (++!9734 lt!1292175 (_2!22632 lt!1292182))) lt!1292279)))

(declare-fun b!3690723 () Bool)

(declare-fun res!1500259 () Bool)

(assert (=> b!3690723 (=> (not res!1500259) (not e!2285403))))

(assert (=> b!3690723 (= res!1500259 (= (head!7977 lt!1292175) (head!7977 (++!9734 lt!1292175 (_2!22632 lt!1292182)))))))

(declare-fun b!3690724 () Bool)

(assert (=> b!3690724 (= e!2285403 (isPrefix!3256 (tail!5716 lt!1292175) (tail!5716 (++!9734 lt!1292175 (_2!22632 lt!1292182)))))))

(assert (= (and d!1083163 (not res!1500257)) b!3690722))

(assert (= (and b!3690722 res!1500258) b!3690723))

(assert (= (and b!3690723 res!1500259) b!3690724))

(assert (= (and d!1083163 (not res!1500260)) b!3690725))

(assert (=> b!3690725 m!4203101))

(declare-fun m!4203329 () Bool)

(assert (=> b!3690725 m!4203329))

(declare-fun m!4203331 () Bool)

(assert (=> b!3690725 m!4203331))

(assert (=> b!3690723 m!4203271))

(assert (=> b!3690723 m!4203101))

(declare-fun m!4203333 () Bool)

(assert (=> b!3690723 m!4203333))

(assert (=> b!3690724 m!4203273))

(assert (=> b!3690724 m!4203101))

(declare-fun m!4203335 () Bool)

(assert (=> b!3690724 m!4203335))

(assert (=> b!3690724 m!4203273))

(assert (=> b!3690724 m!4203335))

(declare-fun m!4203337 () Bool)

(assert (=> b!3690724 m!4203337))

(assert (=> b!3690536 d!1083163))

(declare-fun d!1083165 () Bool)

(assert (=> d!1083165 (isPrefix!3256 lt!1292175 (++!9734 lt!1292175 (_2!22632 lt!1292182)))))

(declare-fun lt!1292286 () Unit!57117)

(declare-fun choose!22098 (List!39197 List!39197) Unit!57117)

(assert (=> d!1083165 (= lt!1292286 (choose!22098 lt!1292175 (_2!22632 lt!1292182)))))

(assert (=> d!1083165 (= (lemmaConcatTwoListThenFirstIsPrefix!2173 lt!1292175 (_2!22632 lt!1292182)) lt!1292286)))

(declare-fun bs!574080 () Bool)

(assert (= bs!574080 d!1083165))

(assert (=> bs!574080 m!4203101))

(assert (=> bs!574080 m!4203101))

(assert (=> bs!574080 m!4203109))

(declare-fun m!4203339 () Bool)

(assert (=> bs!574080 m!4203339))

(assert (=> b!3690536 d!1083165))

(declare-fun d!1083167 () Bool)

(declare-fun isEmpty!23292 (Option!8418) Bool)

(assert (=> d!1083167 (= (isDefined!6612 lt!1292186) (not (isEmpty!23292 lt!1292186)))))

(declare-fun bs!574081 () Bool)

(assert (= bs!574081 d!1083167))

(declare-fun m!4203341 () Bool)

(assert (=> bs!574081 m!4203341))

(assert (=> b!3690536 d!1083167))

(declare-fun b!3690734 () Bool)

(declare-fun e!2285409 () Bool)

(declare-fun e!2285410 () Bool)

(assert (=> b!3690734 (= e!2285409 e!2285410)))

(declare-fun res!1500270 () Bool)

(assert (=> b!3690734 (=> (not res!1500270) (not e!2285410))))

(assert (=> b!3690734 (= res!1500270 (not (is-Nil!39073 lt!1292181)))))

(declare-fun b!3690737 () Bool)

(declare-fun e!2285408 () Bool)

(assert (=> b!3690737 (= e!2285408 (>= (size!29862 lt!1292181) (size!29862 lt!1292175)))))

(declare-fun d!1083169 () Bool)

(assert (=> d!1083169 e!2285408))

(declare-fun res!1500272 () Bool)

(assert (=> d!1083169 (=> res!1500272 e!2285408)))

(declare-fun lt!1292287 () Bool)

(assert (=> d!1083169 (= res!1500272 (not lt!1292287))))

(assert (=> d!1083169 (= lt!1292287 e!2285409)))

(declare-fun res!1500269 () Bool)

(assert (=> d!1083169 (=> res!1500269 e!2285409)))

(assert (=> d!1083169 (= res!1500269 (is-Nil!39073 lt!1292175))))

(assert (=> d!1083169 (= (isPrefix!3256 lt!1292175 lt!1292181) lt!1292287)))

(declare-fun b!3690735 () Bool)

(declare-fun res!1500271 () Bool)

(assert (=> b!3690735 (=> (not res!1500271) (not e!2285410))))

(assert (=> b!3690735 (= res!1500271 (= (head!7977 lt!1292175) (head!7977 lt!1292181)))))

(declare-fun b!3690736 () Bool)

(assert (=> b!3690736 (= e!2285410 (isPrefix!3256 (tail!5716 lt!1292175) (tail!5716 lt!1292181)))))

(assert (= (and d!1083169 (not res!1500269)) b!3690734))

(assert (= (and b!3690734 res!1500270) b!3690735))

(assert (= (and b!3690735 res!1500271) b!3690736))

(assert (= (and d!1083169 (not res!1500272)) b!3690737))

(assert (=> b!3690737 m!4203209))

(assert (=> b!3690737 m!4203331))

(assert (=> b!3690735 m!4203271))

(declare-fun m!4203343 () Bool)

(assert (=> b!3690735 m!4203343))

(assert (=> b!3690736 m!4203273))

(declare-fun m!4203345 () Bool)

(assert (=> b!3690736 m!4203345))

(assert (=> b!3690736 m!4203273))

(assert (=> b!3690736 m!4203345))

(declare-fun m!4203347 () Bool)

(assert (=> b!3690736 m!4203347))

(assert (=> b!3690536 d!1083169))

(declare-fun d!1083171 () Bool)

(declare-fun e!2285413 () Bool)

(assert (=> d!1083171 e!2285413))

(declare-fun res!1500283 () Bool)

(assert (=> d!1083171 (=> (not res!1500283) (not e!2285413))))

(assert (=> d!1083171 (= res!1500283 (isDefined!6612 (getRuleFromTag!1485 thiss!25197 rules!3568 (tag!6721 (rule!8753 lt!1292176)))))))

(declare-fun lt!1292290 () Unit!57117)

(declare-fun choose!22099 (LexerInterface!5492 List!39198 List!39197 Token!11172) Unit!57117)

(assert (=> d!1083171 (= lt!1292290 (choose!22099 thiss!25197 rules!3568 input!3129 lt!1292176))))

(assert (=> d!1083171 (rulesInvariant!4889 thiss!25197 rules!3568)))

(assert (=> d!1083171 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1485 thiss!25197 rules!3568 input!3129 lt!1292176) lt!1292290)))

(declare-fun b!3690748 () Bool)

(declare-fun res!1500284 () Bool)

(assert (=> b!3690748 (=> (not res!1500284) (not e!2285413))))

(assert (=> b!3690748 (= res!1500284 (matchR!5217 (regex!5903 (get!12964 (getRuleFromTag!1485 thiss!25197 rules!3568 (tag!6721 (rule!8753 lt!1292176))))) (list!14608 (charsOf!3914 lt!1292176))))))

(declare-fun b!3690749 () Bool)

(assert (=> b!3690749 (= e!2285413 (= (rule!8753 lt!1292176) (get!12964 (getRuleFromTag!1485 thiss!25197 rules!3568 (tag!6721 (rule!8753 lt!1292176))))))))

(assert (= (and d!1083171 res!1500283) b!3690748))

(assert (= (and b!3690748 res!1500284) b!3690749))

(assert (=> d!1083171 m!4203089))

(assert (=> d!1083171 m!4203089))

(declare-fun m!4203349 () Bool)

(assert (=> d!1083171 m!4203349))

(declare-fun m!4203351 () Bool)

(assert (=> d!1083171 m!4203351))

(assert (=> d!1083171 m!4203087))

(assert (=> b!3690748 m!4203095))

(assert (=> b!3690748 m!4203105))

(assert (=> b!3690748 m!4203105))

(declare-fun m!4203353 () Bool)

(assert (=> b!3690748 m!4203353))

(assert (=> b!3690748 m!4203089))

(assert (=> b!3690748 m!4203089))

(declare-fun m!4203355 () Bool)

(assert (=> b!3690748 m!4203355))

(assert (=> b!3690748 m!4203095))

(assert (=> b!3690749 m!4203089))

(assert (=> b!3690749 m!4203089))

(assert (=> b!3690749 m!4203355))

(assert (=> b!3690536 d!1083171))

(declare-fun d!1083173 () Bool)

(assert (=> d!1083173 (isPrefix!3256 lt!1292175 (++!9734 input!3129 suffix!1448))))

(declare-fun lt!1292293 () Unit!57117)

(declare-fun choose!22100 (List!39197 List!39197 List!39197) Unit!57117)

(assert (=> d!1083173 (= lt!1292293 (choose!22100 lt!1292175 input!3129 suffix!1448))))

(assert (=> d!1083173 (isPrefix!3256 lt!1292175 input!3129)))

(assert (=> d!1083173 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!585 lt!1292175 input!3129 suffix!1448) lt!1292293)))

(declare-fun bs!574082 () Bool)

(assert (= bs!574082 d!1083173))

(assert (=> bs!574082 m!4203113))

(assert (=> bs!574082 m!4203113))

(declare-fun m!4203357 () Bool)

(assert (=> bs!574082 m!4203357))

(declare-fun m!4203359 () Bool)

(assert (=> bs!574082 m!4203359))

(declare-fun m!4203361 () Bool)

(assert (=> bs!574082 m!4203361))

(assert (=> b!3690536 d!1083173))

(declare-fun b!3690771 () Bool)

(declare-fun e!2285425 () Option!8418)

(assert (=> b!3690771 (= e!2285425 (Some!8417 (h!44494 rules!3568)))))

(declare-fun b!3690772 () Bool)

(declare-fun e!2285427 () Bool)

(declare-fun lt!1292307 () Option!8418)

(assert (=> b!3690772 (= e!2285427 (= (tag!6721 (get!12964 lt!1292307)) (tag!6721 (rule!8753 lt!1292176))))))

(declare-fun b!3690773 () Bool)

(declare-fun e!2285426 () Option!8418)

(assert (=> b!3690773 (= e!2285425 e!2285426)))

(declare-fun c!638303 () Bool)

(assert (=> b!3690773 (= c!638303 (and (is-Cons!39074 rules!3568) (not (= (tag!6721 (h!44494 rules!3568)) (tag!6721 (rule!8753 lt!1292176))))))))

(declare-fun b!3690774 () Bool)

(assert (=> b!3690774 (= e!2285426 None!8417)))

(declare-fun b!3690776 () Bool)

(declare-fun lt!1292306 () Unit!57117)

(declare-fun lt!1292305 () Unit!57117)

(assert (=> b!3690776 (= lt!1292306 lt!1292305)))

(assert (=> b!3690776 (rulesInvariant!4889 thiss!25197 (t!301331 rules!3568))))

(declare-fun lemmaInvariantOnRulesThenOnTail!640 (LexerInterface!5492 Rule!11606 List!39198) Unit!57117)

(assert (=> b!3690776 (= lt!1292305 (lemmaInvariantOnRulesThenOnTail!640 thiss!25197 (h!44494 rules!3568) (t!301331 rules!3568)))))

(assert (=> b!3690776 (= e!2285426 (getRuleFromTag!1485 thiss!25197 (t!301331 rules!3568) (tag!6721 (rule!8753 lt!1292176))))))

(declare-fun b!3690775 () Bool)

(declare-fun e!2285428 () Bool)

(assert (=> b!3690775 (= e!2285428 e!2285427)))

(declare-fun res!1500296 () Bool)

(assert (=> b!3690775 (=> (not res!1500296) (not e!2285427))))

(assert (=> b!3690775 (= res!1500296 (contains!7802 rules!3568 (get!12964 lt!1292307)))))

(declare-fun d!1083175 () Bool)

(assert (=> d!1083175 e!2285428))

(declare-fun res!1500297 () Bool)

(assert (=> d!1083175 (=> res!1500297 e!2285428)))

(assert (=> d!1083175 (= res!1500297 (isEmpty!23292 lt!1292307))))

(assert (=> d!1083175 (= lt!1292307 e!2285425)))

(declare-fun c!638302 () Bool)

(assert (=> d!1083175 (= c!638302 (and (is-Cons!39074 rules!3568) (= (tag!6721 (h!44494 rules!3568)) (tag!6721 (rule!8753 lt!1292176)))))))

(assert (=> d!1083175 (rulesInvariant!4889 thiss!25197 rules!3568)))

(assert (=> d!1083175 (= (getRuleFromTag!1485 thiss!25197 rules!3568 (tag!6721 (rule!8753 lt!1292176))) lt!1292307)))

(assert (= (and d!1083175 c!638302) b!3690771))

(assert (= (and d!1083175 (not c!638302)) b!3690773))

(assert (= (and b!3690773 c!638303) b!3690776))

(assert (= (and b!3690773 (not c!638303)) b!3690774))

(assert (= (and d!1083175 (not res!1500297)) b!3690775))

(assert (= (and b!3690775 res!1500296) b!3690772))

(declare-fun m!4203397 () Bool)

(assert (=> b!3690772 m!4203397))

(declare-fun m!4203399 () Bool)

(assert (=> b!3690776 m!4203399))

(declare-fun m!4203401 () Bool)

(assert (=> b!3690776 m!4203401))

(declare-fun m!4203403 () Bool)

(assert (=> b!3690776 m!4203403))

(assert (=> b!3690775 m!4203397))

(assert (=> b!3690775 m!4203397))

(declare-fun m!4203405 () Bool)

(assert (=> b!3690775 m!4203405))

(declare-fun m!4203407 () Bool)

(assert (=> d!1083175 m!4203407))

(assert (=> d!1083175 m!4203087))

(assert (=> b!3690536 d!1083175))

(declare-fun d!1083179 () Bool)

(assert (=> d!1083179 (= (head!7975 (list!14609 (_1!22633 lt!1292177))) (h!44495 (list!14609 (_1!22633 lt!1292177))))))

(assert (=> b!3690536 d!1083179))

(declare-fun b!3690792 () Bool)

(declare-fun res!1500302 () Bool)

(declare-fun e!2285437 () Bool)

(assert (=> b!3690792 (=> (not res!1500302) (not e!2285437))))

(declare-fun lt!1292313 () List!39197)

(assert (=> b!3690792 (= res!1500302 (= (size!29862 lt!1292313) (+ (size!29862 input!3129) (size!29862 suffix!1448))))))

(declare-fun d!1083181 () Bool)

(assert (=> d!1083181 e!2285437))

(declare-fun res!1500303 () Bool)

(assert (=> d!1083181 (=> (not res!1500303) (not e!2285437))))

(declare-fun content!5666 (List!39197) (Set C!21510))

(assert (=> d!1083181 (= res!1500303 (= (content!5666 lt!1292313) (set.union (content!5666 input!3129) (content!5666 suffix!1448))))))

(declare-fun e!2285436 () List!39197)

(assert (=> d!1083181 (= lt!1292313 e!2285436)))

(declare-fun c!638306 () Bool)

(assert (=> d!1083181 (= c!638306 (is-Nil!39073 input!3129))))

(assert (=> d!1083181 (= (++!9734 input!3129 suffix!1448) lt!1292313)))

(declare-fun b!3690790 () Bool)

(assert (=> b!3690790 (= e!2285436 suffix!1448)))

(declare-fun b!3690791 () Bool)

(assert (=> b!3690791 (= e!2285436 (Cons!39073 (h!44493 input!3129) (++!9734 (t!301330 input!3129) suffix!1448)))))

(declare-fun b!3690793 () Bool)

(assert (=> b!3690793 (= e!2285437 (or (not (= suffix!1448 Nil!39073)) (= lt!1292313 input!3129)))))

(assert (= (and d!1083181 c!638306) b!3690790))

(assert (= (and d!1083181 (not c!638306)) b!3690791))

(assert (= (and d!1083181 res!1500303) b!3690792))

(assert (= (and b!3690792 res!1500302) b!3690793))

(declare-fun m!4203417 () Bool)

(assert (=> b!3690792 m!4203417))

(assert (=> b!3690792 m!4203315))

(declare-fun m!4203419 () Bool)

(assert (=> b!3690792 m!4203419))

(declare-fun m!4203421 () Bool)

(assert (=> d!1083181 m!4203421))

(declare-fun m!4203423 () Bool)

(assert (=> d!1083181 m!4203423))

(declare-fun m!4203425 () Bool)

(assert (=> d!1083181 m!4203425))

(declare-fun m!4203427 () Bool)

(assert (=> b!3690791 m!4203427))

(assert (=> b!3690536 d!1083181))

(declare-fun d!1083185 () Bool)

(declare-fun list!14612 (Conc!11997) List!39199)

(assert (=> d!1083185 (= (list!14609 (_1!22633 lt!1292177)) (list!14612 (c!638269 (_1!22633 lt!1292177))))))

(declare-fun bs!574083 () Bool)

(assert (= bs!574083 d!1083185))

(declare-fun m!4203429 () Bool)

(assert (=> bs!574083 m!4203429))

(assert (=> b!3690536 d!1083185))

(declare-fun b!3690796 () Bool)

(declare-fun res!1500304 () Bool)

(declare-fun e!2285439 () Bool)

(assert (=> b!3690796 (=> (not res!1500304) (not e!2285439))))

(declare-fun lt!1292316 () List!39197)

(assert (=> b!3690796 (= res!1500304 (= (size!29862 lt!1292316) (+ (size!29862 lt!1292175) (size!29862 (_2!22632 lt!1292182)))))))

(declare-fun d!1083187 () Bool)

(assert (=> d!1083187 e!2285439))

(declare-fun res!1500305 () Bool)

(assert (=> d!1083187 (=> (not res!1500305) (not e!2285439))))

(assert (=> d!1083187 (= res!1500305 (= (content!5666 lt!1292316) (set.union (content!5666 lt!1292175) (content!5666 (_2!22632 lt!1292182)))))))

(declare-fun e!2285438 () List!39197)

(assert (=> d!1083187 (= lt!1292316 e!2285438)))

(declare-fun c!638307 () Bool)

(assert (=> d!1083187 (= c!638307 (is-Nil!39073 lt!1292175))))

(assert (=> d!1083187 (= (++!9734 lt!1292175 (_2!22632 lt!1292182)) lt!1292316)))

(declare-fun b!3690794 () Bool)

(assert (=> b!3690794 (= e!2285438 (_2!22632 lt!1292182))))

(declare-fun b!3690795 () Bool)

(assert (=> b!3690795 (= e!2285438 (Cons!39073 (h!44493 lt!1292175) (++!9734 (t!301330 lt!1292175) (_2!22632 lt!1292182))))))

(declare-fun b!3690797 () Bool)

(assert (=> b!3690797 (= e!2285439 (or (not (= (_2!22632 lt!1292182) Nil!39073)) (= lt!1292316 lt!1292175)))))

(assert (= (and d!1083187 c!638307) b!3690794))

(assert (= (and d!1083187 (not c!638307)) b!3690795))

(assert (= (and d!1083187 res!1500305) b!3690796))

(assert (= (and b!3690796 res!1500304) b!3690797))

(declare-fun m!4203431 () Bool)

(assert (=> b!3690796 m!4203431))

(assert (=> b!3690796 m!4203331))

(declare-fun m!4203433 () Bool)

(assert (=> b!3690796 m!4203433))

(declare-fun m!4203435 () Bool)

(assert (=> d!1083187 m!4203435))

(declare-fun m!4203437 () Bool)

(assert (=> d!1083187 m!4203437))

(declare-fun m!4203439 () Bool)

(assert (=> d!1083187 m!4203439))

(declare-fun m!4203441 () Bool)

(assert (=> b!3690795 m!4203441))

(assert (=> b!3690536 d!1083187))

(declare-fun d!1083189 () Bool)

(declare-fun list!14613 (Conc!11996) List!39197)

(assert (=> d!1083189 (= (list!14608 (charsOf!3914 lt!1292176)) (list!14613 (c!638268 (charsOf!3914 lt!1292176))))))

(declare-fun bs!574085 () Bool)

(assert (= bs!574085 d!1083189))

(declare-fun m!4203445 () Bool)

(assert (=> bs!574085 m!4203445))

(assert (=> b!3690536 d!1083189))

(declare-fun b!3690798 () Bool)

(declare-fun e!2285440 () Bool)

(declare-fun lt!1292318 () Bool)

(assert (=> b!3690798 (= e!2285440 (not lt!1292318))))

(declare-fun b!3690799 () Bool)

(declare-fun res!1500310 () Bool)

(declare-fun e!2285443 () Bool)

(assert (=> b!3690799 (=> (not res!1500310) (not e!2285443))))

(assert (=> b!3690799 (= res!1500310 (isEmpty!23291 (tail!5716 lt!1292175)))))

(declare-fun b!3690800 () Bool)

(declare-fun res!1500313 () Bool)

(declare-fun e!2285442 () Bool)

(assert (=> b!3690800 (=> res!1500313 e!2285442)))

(assert (=> b!3690800 (= res!1500313 e!2285443)))

(declare-fun res!1500309 () Bool)

(assert (=> b!3690800 (=> (not res!1500309) (not e!2285443))))

(assert (=> b!3690800 (= res!1500309 lt!1292318)))

(declare-fun b!3690801 () Bool)

(declare-fun res!1500306 () Bool)

(declare-fun e!2285445 () Bool)

(assert (=> b!3690801 (=> res!1500306 e!2285445)))

(assert (=> b!3690801 (= res!1500306 (not (isEmpty!23291 (tail!5716 lt!1292175))))))

(declare-fun b!3690802 () Bool)

(declare-fun e!2285441 () Bool)

(assert (=> b!3690802 (= e!2285441 (nullable!3720 (regex!5903 (rule!8753 lt!1292176))))))

(declare-fun d!1083193 () Bool)

(declare-fun e!2285444 () Bool)

(assert (=> d!1083193 e!2285444))

(declare-fun c!638309 () Bool)

(assert (=> d!1083193 (= c!638309 (is-EmptyExpr!10662 (regex!5903 (rule!8753 lt!1292176))))))

(assert (=> d!1083193 (= lt!1292318 e!2285441)))

(declare-fun c!638308 () Bool)

(assert (=> d!1083193 (= c!638308 (isEmpty!23291 lt!1292175))))

(assert (=> d!1083193 (validRegex!4882 (regex!5903 (rule!8753 lt!1292176)))))

(assert (=> d!1083193 (= (matchR!5217 (regex!5903 (rule!8753 lt!1292176)) lt!1292175) lt!1292318)))

(declare-fun b!3690803 () Bool)

(assert (=> b!3690803 (= e!2285441 (matchR!5217 (derivativeStep!3266 (regex!5903 (rule!8753 lt!1292176)) (head!7977 lt!1292175)) (tail!5716 lt!1292175)))))

(declare-fun b!3690804 () Bool)

(assert (=> b!3690804 (= e!2285443 (= (head!7977 lt!1292175) (c!638267 (regex!5903 (rule!8753 lt!1292176)))))))

(declare-fun b!3690805 () Bool)

(assert (=> b!3690805 (= e!2285444 e!2285440)))

(declare-fun c!638310 () Bool)

(assert (=> b!3690805 (= c!638310 (is-EmptyLang!10662 (regex!5903 (rule!8753 lt!1292176))))))

(declare-fun bm!266937 () Bool)

(declare-fun call!266942 () Bool)

(assert (=> bm!266937 (= call!266942 (isEmpty!23291 lt!1292175))))

(declare-fun b!3690806 () Bool)

(declare-fun res!1500312 () Bool)

(assert (=> b!3690806 (=> (not res!1500312) (not e!2285443))))

(assert (=> b!3690806 (= res!1500312 (not call!266942))))

(declare-fun b!3690807 () Bool)

(assert (=> b!3690807 (= e!2285445 (not (= (head!7977 lt!1292175) (c!638267 (regex!5903 (rule!8753 lt!1292176))))))))

(declare-fun b!3690808 () Bool)

(declare-fun res!1500308 () Bool)

(assert (=> b!3690808 (=> res!1500308 e!2285442)))

(assert (=> b!3690808 (= res!1500308 (not (is-ElementMatch!10662 (regex!5903 (rule!8753 lt!1292176)))))))

(assert (=> b!3690808 (= e!2285440 e!2285442)))

(declare-fun b!3690809 () Bool)

(assert (=> b!3690809 (= e!2285444 (= lt!1292318 call!266942))))

(declare-fun b!3690810 () Bool)

(declare-fun e!2285446 () Bool)

(assert (=> b!3690810 (= e!2285446 e!2285445)))

(declare-fun res!1500311 () Bool)

(assert (=> b!3690810 (=> res!1500311 e!2285445)))

(assert (=> b!3690810 (= res!1500311 call!266942)))

(declare-fun b!3690811 () Bool)

(assert (=> b!3690811 (= e!2285442 e!2285446)))

(declare-fun res!1500307 () Bool)

(assert (=> b!3690811 (=> (not res!1500307) (not e!2285446))))

(assert (=> b!3690811 (= res!1500307 (not lt!1292318))))

(assert (= (and d!1083193 c!638308) b!3690802))

(assert (= (and d!1083193 (not c!638308)) b!3690803))

(assert (= (and d!1083193 c!638309) b!3690809))

(assert (= (and d!1083193 (not c!638309)) b!3690805))

(assert (= (and b!3690805 c!638310) b!3690798))

(assert (= (and b!3690805 (not c!638310)) b!3690808))

(assert (= (and b!3690808 (not res!1500308)) b!3690800))

(assert (= (and b!3690800 res!1500309) b!3690806))

(assert (= (and b!3690806 res!1500312) b!3690799))

(assert (= (and b!3690799 res!1500310) b!3690804))

(assert (= (and b!3690800 (not res!1500313)) b!3690811))

(assert (= (and b!3690811 res!1500307) b!3690810))

(assert (= (and b!3690810 (not res!1500311)) b!3690801))

(assert (= (and b!3690801 (not res!1500306)) b!3690807))

(assert (= (or b!3690809 b!3690806 b!3690810) bm!266937))

(assert (=> d!1083193 m!4203267))

(assert (=> d!1083193 m!4203201))

(assert (=> bm!266937 m!4203267))

(assert (=> b!3690804 m!4203271))

(assert (=> b!3690801 m!4203273))

(assert (=> b!3690801 m!4203273))

(assert (=> b!3690801 m!4203275))

(assert (=> b!3690807 m!4203271))

(assert (=> b!3690799 m!4203273))

(assert (=> b!3690799 m!4203273))

(assert (=> b!3690799 m!4203275))

(assert (=> b!3690803 m!4203271))

(assert (=> b!3690803 m!4203271))

(declare-fun m!4203447 () Bool)

(assert (=> b!3690803 m!4203447))

(assert (=> b!3690803 m!4203273))

(assert (=> b!3690803 m!4203447))

(assert (=> b!3690803 m!4203273))

(declare-fun m!4203449 () Bool)

(assert (=> b!3690803 m!4203449))

(assert (=> b!3690802 m!4203203))

(assert (=> b!3690536 d!1083193))

(declare-fun d!1083195 () Bool)

(assert (=> d!1083195 (= (isEmpty!23287 (maxPrefix!3020 thiss!25197 rules!3568 lt!1292181)) (not (is-Some!8416 (maxPrefix!3020 thiss!25197 rules!3568 lt!1292181))))))

(assert (=> b!3690531 d!1083195))

(declare-fun b!3690812 () Bool)

(declare-fun e!2285449 () Option!8417)

(declare-fun call!266943 () Option!8417)

(assert (=> b!3690812 (= e!2285449 call!266943)))

(declare-fun b!3690813 () Bool)

(declare-fun res!1500320 () Bool)

(declare-fun e!2285448 () Bool)

(assert (=> b!3690813 (=> (not res!1500320) (not e!2285448))))

(declare-fun lt!1292323 () Option!8417)

(assert (=> b!3690813 (= res!1500320 (matchR!5217 (regex!5903 (rule!8753 (_1!22632 (get!12965 lt!1292323)))) (list!14608 (charsOf!3914 (_1!22632 (get!12965 lt!1292323))))))))

(declare-fun b!3690814 () Bool)

(declare-fun lt!1292321 () Option!8417)

(declare-fun lt!1292319 () Option!8417)

(assert (=> b!3690814 (= e!2285449 (ite (and (is-None!8416 lt!1292321) (is-None!8416 lt!1292319)) None!8416 (ite (is-None!8416 lt!1292319) lt!1292321 (ite (is-None!8416 lt!1292321) lt!1292319 (ite (>= (size!29859 (_1!22632 (v!38370 lt!1292321))) (size!29859 (_1!22632 (v!38370 lt!1292319)))) lt!1292321 lt!1292319)))))))

(assert (=> b!3690814 (= lt!1292321 call!266943)))

(assert (=> b!3690814 (= lt!1292319 (maxPrefix!3020 thiss!25197 (t!301331 rules!3568) lt!1292181))))

(declare-fun b!3690815 () Bool)

(declare-fun res!1500314 () Bool)

(assert (=> b!3690815 (=> (not res!1500314) (not e!2285448))))

(assert (=> b!3690815 (= res!1500314 (= (value!188697 (_1!22632 (get!12965 lt!1292323))) (apply!9373 (transformation!5903 (rule!8753 (_1!22632 (get!12965 lt!1292323)))) (seqFromList!4452 (originalCharacters!6617 (_1!22632 (get!12965 lt!1292323)))))))))

(declare-fun b!3690816 () Bool)

(declare-fun res!1500319 () Bool)

(assert (=> b!3690816 (=> (not res!1500319) (not e!2285448))))

(assert (=> b!3690816 (= res!1500319 (< (size!29862 (_2!22632 (get!12965 lt!1292323))) (size!29862 lt!1292181)))))

(declare-fun b!3690817 () Bool)

(assert (=> b!3690817 (= e!2285448 (contains!7802 rules!3568 (rule!8753 (_1!22632 (get!12965 lt!1292323)))))))

(declare-fun d!1083197 () Bool)

(declare-fun e!2285447 () Bool)

(assert (=> d!1083197 e!2285447))

(declare-fun res!1500315 () Bool)

(assert (=> d!1083197 (=> res!1500315 e!2285447)))

(assert (=> d!1083197 (= res!1500315 (isEmpty!23287 lt!1292323))))

(assert (=> d!1083197 (= lt!1292323 e!2285449)))

(declare-fun c!638311 () Bool)

(assert (=> d!1083197 (= c!638311 (and (is-Cons!39074 rules!3568) (is-Nil!39074 (t!301331 rules!3568))))))

(declare-fun lt!1292322 () Unit!57117)

(declare-fun lt!1292320 () Unit!57117)

(assert (=> d!1083197 (= lt!1292322 lt!1292320)))

(assert (=> d!1083197 (isPrefix!3256 lt!1292181 lt!1292181)))

(assert (=> d!1083197 (= lt!1292320 (lemmaIsPrefixRefl!2041 lt!1292181 lt!1292181))))

(assert (=> d!1083197 (rulesValidInductive!2115 thiss!25197 rules!3568)))

(assert (=> d!1083197 (= (maxPrefix!3020 thiss!25197 rules!3568 lt!1292181) lt!1292323)))

(declare-fun b!3690818 () Bool)

(assert (=> b!3690818 (= e!2285447 e!2285448)))

(declare-fun res!1500318 () Bool)

(assert (=> b!3690818 (=> (not res!1500318) (not e!2285448))))

(assert (=> b!3690818 (= res!1500318 (isDefined!6614 lt!1292323))))

(declare-fun b!3690819 () Bool)

(declare-fun res!1500316 () Bool)

(assert (=> b!3690819 (=> (not res!1500316) (not e!2285448))))

(assert (=> b!3690819 (= res!1500316 (= (++!9734 (list!14608 (charsOf!3914 (_1!22632 (get!12965 lt!1292323)))) (_2!22632 (get!12965 lt!1292323))) lt!1292181))))

(declare-fun bm!266938 () Bool)

(assert (=> bm!266938 (= call!266943 (maxPrefixOneRule!2138 thiss!25197 (h!44494 rules!3568) lt!1292181))))

(declare-fun b!3690820 () Bool)

(declare-fun res!1500317 () Bool)

(assert (=> b!3690820 (=> (not res!1500317) (not e!2285448))))

(assert (=> b!3690820 (= res!1500317 (= (list!14608 (charsOf!3914 (_1!22632 (get!12965 lt!1292323)))) (originalCharacters!6617 (_1!22632 (get!12965 lt!1292323)))))))

(assert (= (and d!1083197 c!638311) b!3690812))

(assert (= (and d!1083197 (not c!638311)) b!3690814))

(assert (= (or b!3690812 b!3690814) bm!266938))

(assert (= (and d!1083197 (not res!1500315)) b!3690818))

(assert (= (and b!3690818 res!1500318) b!3690820))

(assert (= (and b!3690820 res!1500317) b!3690816))

(assert (= (and b!3690816 res!1500319) b!3690819))

(assert (= (and b!3690819 res!1500316) b!3690815))

(assert (= (and b!3690815 res!1500314) b!3690813))

(assert (= (and b!3690813 res!1500320) b!3690817))

(declare-fun m!4203451 () Bool)

(assert (=> b!3690818 m!4203451))

(declare-fun m!4203453 () Bool)

(assert (=> b!3690819 m!4203453))

(declare-fun m!4203455 () Bool)

(assert (=> b!3690819 m!4203455))

(assert (=> b!3690819 m!4203455))

(declare-fun m!4203457 () Bool)

(assert (=> b!3690819 m!4203457))

(assert (=> b!3690819 m!4203457))

(declare-fun m!4203459 () Bool)

(assert (=> b!3690819 m!4203459))

(declare-fun m!4203461 () Bool)

(assert (=> d!1083197 m!4203461))

(declare-fun m!4203463 () Bool)

(assert (=> d!1083197 m!4203463))

(declare-fun m!4203465 () Bool)

(assert (=> d!1083197 m!4203465))

(assert (=> d!1083197 m!4203311))

(assert (=> b!3690816 m!4203453))

(declare-fun m!4203467 () Bool)

(assert (=> b!3690816 m!4203467))

(assert (=> b!3690816 m!4203209))

(assert (=> b!3690813 m!4203453))

(assert (=> b!3690813 m!4203455))

(assert (=> b!3690813 m!4203455))

(assert (=> b!3690813 m!4203457))

(assert (=> b!3690813 m!4203457))

(declare-fun m!4203469 () Bool)

(assert (=> b!3690813 m!4203469))

(declare-fun m!4203471 () Bool)

(assert (=> b!3690814 m!4203471))

(declare-fun m!4203473 () Bool)

(assert (=> bm!266938 m!4203473))

(assert (=> b!3690817 m!4203453))

(declare-fun m!4203475 () Bool)

(assert (=> b!3690817 m!4203475))

(assert (=> b!3690815 m!4203453))

(declare-fun m!4203477 () Bool)

(assert (=> b!3690815 m!4203477))

(assert (=> b!3690815 m!4203477))

(declare-fun m!4203479 () Bool)

(assert (=> b!3690815 m!4203479))

(assert (=> b!3690820 m!4203453))

(assert (=> b!3690820 m!4203455))

(assert (=> b!3690820 m!4203455))

(assert (=> b!3690820 m!4203457))

(assert (=> b!3690531 d!1083197))

(declare-fun d!1083199 () Bool)

(declare-fun lt!1292329 () Bool)

(declare-fun isEmpty!23293 (List!39199) Bool)

(assert (=> d!1083199 (= lt!1292329 (isEmpty!23293 (list!14609 (_1!22633 lt!1292177))))))

(declare-fun isEmpty!23294 (Conc!11997) Bool)

(assert (=> d!1083199 (= lt!1292329 (isEmpty!23294 (c!638269 (_1!22633 lt!1292177))))))

(assert (=> d!1083199 (= (isEmpty!23286 (_1!22633 lt!1292177)) lt!1292329)))

(declare-fun bs!574086 () Bool)

(assert (= bs!574086 d!1083199))

(assert (=> bs!574086 m!4203091))

(assert (=> bs!574086 m!4203091))

(declare-fun m!4203481 () Bool)

(assert (=> bs!574086 m!4203481))

(declare-fun m!4203483 () Bool)

(assert (=> bs!574086 m!4203483))

(assert (=> b!3690527 d!1083199))

(declare-fun e!2285501 () Bool)

(declare-fun lt!1292349 () tuple2!38998)

(declare-fun b!3690912 () Bool)

(declare-datatypes ((tuple2!39006 0))(
  ( (tuple2!39007 (_1!22637 List!39199) (_2!22637 List!39197)) )
))
(declare-fun lexList!1541 (LexerInterface!5492 List!39198 List!39197) tuple2!39006)

(assert (=> b!3690912 (= e!2285501 (= (list!14608 (_2!22633 lt!1292349)) (_2!22637 (lexList!1541 thiss!25197 rules!3568 (list!14608 (seqFromList!4452 input!3129))))))))

(declare-fun b!3690913 () Bool)

(declare-fun e!2285500 () Bool)

(assert (=> b!3690913 (= e!2285500 (= (_2!22633 lt!1292349) (seqFromList!4452 input!3129)))))

(declare-fun b!3690914 () Bool)

(declare-fun res!1500383 () Bool)

(assert (=> b!3690914 (=> (not res!1500383) (not e!2285501))))

(assert (=> b!3690914 (= res!1500383 (= (list!14609 (_1!22633 lt!1292349)) (_1!22637 (lexList!1541 thiss!25197 rules!3568 (list!14608 (seqFromList!4452 input!3129))))))))

(declare-fun b!3690915 () Bool)

(declare-fun e!2285502 () Bool)

(assert (=> b!3690915 (= e!2285500 e!2285502)))

(declare-fun res!1500382 () Bool)

(assert (=> b!3690915 (= res!1500382 (< (size!29861 (_2!22633 lt!1292349)) (size!29861 (seqFromList!4452 input!3129))))))

(assert (=> b!3690915 (=> (not res!1500382) (not e!2285502))))

(declare-fun d!1083201 () Bool)

(assert (=> d!1083201 e!2285501))

(declare-fun res!1500381 () Bool)

(assert (=> d!1083201 (=> (not res!1500381) (not e!2285501))))

(assert (=> d!1083201 (= res!1500381 e!2285500)))

(declare-fun c!638327 () Bool)

(declare-fun size!29863 (BalanceConc!23608) Int)

(assert (=> d!1083201 (= c!638327 (> (size!29863 (_1!22633 lt!1292349)) 0))))

(declare-fun lexTailRecV2!1147 (LexerInterface!5492 List!39198 BalanceConc!23606 BalanceConc!23606 BalanceConc!23606 BalanceConc!23608) tuple2!38998)

(assert (=> d!1083201 (= lt!1292349 (lexTailRecV2!1147 thiss!25197 rules!3568 (seqFromList!4452 input!3129) (BalanceConc!23607 Empty!11996) (seqFromList!4452 input!3129) (BalanceConc!23609 Empty!11997)))))

(assert (=> d!1083201 (= (lex!2633 thiss!25197 rules!3568 (seqFromList!4452 input!3129)) lt!1292349)))

(declare-fun b!3690911 () Bool)

(assert (=> b!3690911 (= e!2285502 (not (isEmpty!23286 (_1!22633 lt!1292349))))))

(assert (= (and d!1083201 c!638327) b!3690915))

(assert (= (and d!1083201 (not c!638327)) b!3690913))

(assert (= (and b!3690915 res!1500382) b!3690911))

(assert (= (and d!1083201 res!1500381) b!3690914))

(assert (= (and b!3690914 res!1500383) b!3690912))

(declare-fun m!4203565 () Bool)

(assert (=> b!3690914 m!4203565))

(assert (=> b!3690914 m!4203131))

(declare-fun m!4203567 () Bool)

(assert (=> b!3690914 m!4203567))

(assert (=> b!3690914 m!4203567))

(declare-fun m!4203569 () Bool)

(assert (=> b!3690914 m!4203569))

(declare-fun m!4203571 () Bool)

(assert (=> b!3690912 m!4203571))

(assert (=> b!3690912 m!4203131))

(assert (=> b!3690912 m!4203567))

(assert (=> b!3690912 m!4203567))

(assert (=> b!3690912 m!4203569))

(declare-fun m!4203573 () Bool)

(assert (=> d!1083201 m!4203573))

(assert (=> d!1083201 m!4203131))

(assert (=> d!1083201 m!4203131))

(declare-fun m!4203575 () Bool)

(assert (=> d!1083201 m!4203575))

(declare-fun m!4203577 () Bool)

(assert (=> b!3690911 m!4203577))

(declare-fun m!4203579 () Bool)

(assert (=> b!3690915 m!4203579))

(assert (=> b!3690915 m!4203131))

(declare-fun m!4203581 () Bool)

(assert (=> b!3690915 m!4203581))

(assert (=> b!3690527 d!1083201))

(declare-fun d!1083225 () Bool)

(declare-fun fromListB!2057 (List!39197) BalanceConc!23606)

(assert (=> d!1083225 (= (seqFromList!4452 input!3129) (fromListB!2057 input!3129))))

(declare-fun bs!574091 () Bool)

(assert (= bs!574091 d!1083225))

(declare-fun m!4203583 () Bool)

(assert (=> bs!574091 m!4203583))

(assert (=> b!3690527 d!1083225))

(declare-fun b!3690926 () Bool)

(declare-fun e!2285505 () Bool)

(assert (=> b!3690926 (= e!2285505 tp_is_empty!18407)))

(declare-fun b!3690928 () Bool)

(declare-fun tp!1121469 () Bool)

(assert (=> b!3690928 (= e!2285505 tp!1121469)))

(declare-fun b!3690929 () Bool)

(declare-fun tp!1121470 () Bool)

(declare-fun tp!1121468 () Bool)

(assert (=> b!3690929 (= e!2285505 (and tp!1121470 tp!1121468))))

(declare-fun b!3690927 () Bool)

(declare-fun tp!1121471 () Bool)

(declare-fun tp!1121467 () Bool)

(assert (=> b!3690927 (= e!2285505 (and tp!1121471 tp!1121467))))

(assert (=> b!3690523 (= tp!1121432 e!2285505)))

(assert (= (and b!3690523 (is-ElementMatch!10662 (regex!5903 (h!44494 rules!3568)))) b!3690926))

(assert (= (and b!3690523 (is-Concat!16796 (regex!5903 (h!44494 rules!3568)))) b!3690927))

(assert (= (and b!3690523 (is-Star!10662 (regex!5903 (h!44494 rules!3568)))) b!3690928))

(assert (= (and b!3690523 (is-Union!10662 (regex!5903 (h!44494 rules!3568)))) b!3690929))

(declare-fun b!3690940 () Bool)

(declare-fun b_free!97937 () Bool)

(declare-fun b_next!98641 () Bool)

(assert (=> b!3690940 (= b_free!97937 (not b_next!98641))))

(declare-fun tp!1121481 () Bool)

(declare-fun b_and!275699 () Bool)

(assert (=> b!3690940 (= tp!1121481 b_and!275699)))

(declare-fun b_free!97939 () Bool)

(declare-fun b_next!98643 () Bool)

(assert (=> b!3690940 (= b_free!97939 (not b_next!98643))))

(declare-fun tb!213857 () Bool)

(declare-fun t!301342 () Bool)

(assert (=> (and b!3690940 (= (toChars!8082 (transformation!5903 (h!44494 (t!301331 rules!3568)))) (toChars!8082 (transformation!5903 (rule!8753 lt!1292176)))) t!301342) tb!213857))

(declare-fun result!260374 () Bool)

(assert (= result!260374 result!260362))

(assert (=> d!1083159 t!301342))

(declare-fun tp!1121483 () Bool)

(declare-fun b_and!275701 () Bool)

(assert (=> b!3690940 (= tp!1121483 (and (=> t!301342 result!260374) b_and!275701))))

(declare-fun e!2285515 () Bool)

(assert (=> b!3690940 (= e!2285515 (and tp!1121481 tp!1121483))))

(declare-fun b!3690939 () Bool)

(declare-fun tp!1121482 () Bool)

(declare-fun e!2285514 () Bool)

(assert (=> b!3690939 (= e!2285514 (and tp!1121482 (inv!52539 (tag!6721 (h!44494 (t!301331 rules!3568)))) (inv!52542 (transformation!5903 (h!44494 (t!301331 rules!3568)))) e!2285515))))

(declare-fun b!3690938 () Bool)

(declare-fun e!2285517 () Bool)

(declare-fun tp!1121480 () Bool)

(assert (=> b!3690938 (= e!2285517 (and e!2285514 tp!1121480))))

(assert (=> b!3690529 (= tp!1121429 e!2285517)))

(assert (= b!3690939 b!3690940))

(assert (= b!3690938 b!3690939))

(assert (= (and b!3690529 (is-Cons!39074 (t!301331 rules!3568))) b!3690938))

(declare-fun m!4203585 () Bool)

(assert (=> b!3690939 m!4203585))

(declare-fun m!4203587 () Bool)

(assert (=> b!3690939 m!4203587))

(declare-fun b!3690945 () Bool)

(declare-fun e!2285520 () Bool)

(declare-fun tp!1121486 () Bool)

(assert (=> b!3690945 (= e!2285520 (and tp_is_empty!18407 tp!1121486))))

(assert (=> b!3690533 (= tp!1121431 e!2285520)))

(assert (= (and b!3690533 (is-Cons!39073 (t!301330 suffix!1448))) b!3690945))

(declare-fun b!3690946 () Bool)

(declare-fun e!2285521 () Bool)

(declare-fun tp!1121487 () Bool)

(assert (=> b!3690946 (= e!2285521 (and tp_is_empty!18407 tp!1121487))))

(assert (=> b!3690528 (= tp!1121430 e!2285521)))

(assert (= (and b!3690528 (is-Cons!39073 (t!301330 input!3129))) b!3690946))

(push 1)

(assert (not b!3690803))

(assert (not b!3690581))

(assert (not b!3690927))

(assert (not b!3690814))

(assert (not b!3690677))

(assert (not d!1083171))

(assert (not b!3690772))

(assert (not b!3690801))

(assert (not b!3690813))

(assert (not d!1083185))

(assert b_and!275687)

(assert (not b_lambda!109507))

(assert (not d!1083155))

(assert b_and!275699)

(assert (not b!3690704))

(assert (not d!1083131))

(assert (not b!3690939))

(assert (not b!3690804))

(assert (not b!3690802))

(assert (not b!3690725))

(assert (not b!3690791))

(assert (not d!1083175))

(assert (not b!3690624))

(assert (not b!3690735))

(assert (not b!3690664))

(assert (not b!3690775))

(assert (not b_next!98643))

(assert (not d!1083165))

(assert (not b!3690792))

(assert (not b!3690748))

(assert (not b!3690807))

(assert (not d!1083189))

(assert (not b!3690795))

(assert (not b!3690817))

(assert (not b!3690914))

(assert (not b!3690586))

(assert (not b!3690618))

(assert (not b!3690666))

(assert (not b!3690670))

(assert (not b!3690929))

(assert (not d!1083199))

(assert (not b!3690749))

(assert b_and!275701)

(assert (not d!1083187))

(assert (not d!1083135))

(assert (not b!3690928))

(assert (not b!3690820))

(assert (not b!3690705))

(assert (not b!3690709))

(assert (not b!3690682))

(assert (not d!1083139))

(assert (not d!1083197))

(assert (not d!1083143))

(assert (not tb!213853))

(assert (not bm!266938))

(assert (not b!3690815))

(assert (not bm!266930))

(assert (not b!3690625))

(assert (not b_next!98635))

(assert (not b!3690620))

(assert (not bm!266933))

(assert (not b!3690776))

(assert (not b!3690737))

(assert (not b!3690623))

(assert (not b!3690818))

(assert (not b!3690708))

(assert (not d!1083173))

(assert (not d!1083201))

(assert (not b!3690912))

(assert (not b_next!98641))

(assert (not b!3690946))

(assert (not b!3690662))

(assert (not d!1083159))

(assert (not d!1083193))

(assert b_and!275695)

(assert (not b!3690945))

(assert (not d!1083151))

(assert (not b!3690911))

(assert (not b!3690819))

(assert (not b!3690707))

(assert (not d!1083181))

(assert tp_is_empty!18407)

(assert (not b!3690724))

(assert (not b!3690816))

(assert (not b!3690665))

(assert (not b!3690619))

(assert (not d!1083225))

(assert (not b_next!98633))

(assert (not b!3690702))

(assert (not b!3690621))

(assert (not b!3690622))

(assert (not d!1083161))

(assert (not b!3690703))

(assert (not b!3690796))

(assert (not b!3690736))

(assert (not b!3690799))

(assert (not b!3690667))

(assert (not bm!266937))

(assert (not b!3690723))

(assert (not b!3690706))

(assert (not d!1083167))

(assert (not b!3690915))

(assert (not b!3690938))

(check-sat)

(pop 1)

(push 1)

(assert b_and!275687)

(assert b_and!275699)

(assert (not b_next!98643))

(assert b_and!275701)

(assert (not b_next!98635))

(assert (not b_next!98641))

(assert b_and!275695)

(assert (not b_next!98633))

(check-sat)

(pop 1)

