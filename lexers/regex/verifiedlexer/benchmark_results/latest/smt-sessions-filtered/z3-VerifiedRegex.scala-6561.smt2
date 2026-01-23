; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!347114 () Bool)

(assert start!347114)

(declare-fun b!3690009 () Bool)

(declare-fun b_free!97917 () Bool)

(declare-fun b_next!98621 () Bool)

(assert (=> b!3690009 (= b_free!97917 (not b_next!98621))))

(declare-fun tp!1121342 () Bool)

(declare-fun b_and!275671 () Bool)

(assert (=> b!3690009 (= tp!1121342 b_and!275671)))

(declare-fun b_free!97919 () Bool)

(declare-fun b_next!98623 () Bool)

(assert (=> b!3690009 (= b_free!97919 (not b_next!98623))))

(declare-fun tp!1121345 () Bool)

(declare-fun b_and!275673 () Bool)

(assert (=> b!3690009 (= tp!1121345 b_and!275673)))

(declare-fun e!2284998 () Bool)

(declare-fun b!3690006 () Bool)

(declare-fun e!2284994 () Bool)

(declare-datatypes ((List!39190 0))(
  ( (Nil!39066) (Cons!39066 (h!44486 (_ BitVec 16)) (t!301315 List!39190)) )
))
(declare-datatypes ((TokenValue!6132 0))(
  ( (FloatLiteralValue!12264 (text!43369 List!39190)) (TokenValueExt!6131 (__x!24481 Int)) (Broken!30660 (value!188641 List!39190)) (Object!6255) (End!6132) (Def!6132) (Underscore!6132) (Match!6132) (Else!6132) (Error!6132) (Case!6132) (If!6132) (Extends!6132) (Abstract!6132) (Class!6132) (Val!6132) (DelimiterValue!12264 (del!6192 List!39190)) (KeywordValue!6138 (value!188642 List!39190)) (CommentValue!12264 (value!188643 List!39190)) (WhitespaceValue!12264 (value!188644 List!39190)) (IndentationValue!6132 (value!188645 List!39190)) (String!43993) (Int32!6132) (Broken!30661 (value!188646 List!39190)) (Boolean!6133) (Unit!57113) (OperatorValue!6135 (op!6192 List!39190)) (IdentifierValue!12264 (value!188647 List!39190)) (IdentifierValue!12265 (value!188648 List!39190)) (WhitespaceValue!12265 (value!188649 List!39190)) (True!12264) (False!12264) (Broken!30662 (value!188650 List!39190)) (Broken!30663 (value!188651 List!39190)) (True!12265) (RightBrace!6132) (RightBracket!6132) (Colon!6132) (Null!6132) (Comma!6132) (LeftBracket!6132) (False!12265) (LeftBrace!6132) (ImaginaryLiteralValue!6132 (text!43370 List!39190)) (StringLiteralValue!18396 (value!188652 List!39190)) (EOFValue!6132 (value!188653 List!39190)) (IdentValue!6132 (value!188654 List!39190)) (DelimiterValue!12265 (value!188655 List!39190)) (DedentValue!6132 (value!188656 List!39190)) (NewLineValue!6132 (value!188657 List!39190)) (IntegerValue!18396 (value!188658 (_ BitVec 32)) (text!43371 List!39190)) (IntegerValue!18397 (value!188659 Int) (text!43372 List!39190)) (Times!6132) (Or!6132) (Equal!6132) (Minus!6132) (Broken!30664 (value!188660 List!39190)) (And!6132) (Div!6132) (LessEqual!6132) (Mod!6132) (Concat!16793) (Not!6132) (Plus!6132) (SpaceValue!6132 (value!188661 List!39190)) (IntegerValue!18398 (value!188662 Int) (text!43373 List!39190)) (StringLiteralValue!18397 (text!43374 List!39190)) (FloatLiteralValue!12265 (text!43375 List!39190)) (BytesLiteralValue!6132 (value!188663 List!39190)) (CommentValue!12265 (value!188664 List!39190)) (StringLiteralValue!18398 (value!188665 List!39190)) (ErrorTokenValue!6132 (msg!6193 List!39190)) )
))
(declare-datatypes ((C!21508 0))(
  ( (C!21509 (val!12802 Int)) )
))
(declare-datatypes ((List!39191 0))(
  ( (Nil!39067) (Cons!39067 (h!44487 C!21508) (t!301316 List!39191)) )
))
(declare-datatypes ((IArray!23993 0))(
  ( (IArray!23994 (innerList!12054 List!39191)) )
))
(declare-datatypes ((Regex!10661 0))(
  ( (ElementMatch!10661 (c!638199 C!21508)) (Concat!16794 (regOne!21834 Regex!10661) (regTwo!21834 Regex!10661)) (EmptyExpr!10661) (Star!10661 (reg!10990 Regex!10661)) (EmptyLang!10661) (Union!10661 (regOne!21835 Regex!10661) (regTwo!21835 Regex!10661)) )
))
(declare-datatypes ((Conc!11994 0))(
  ( (Node!11994 (left!30475 Conc!11994) (right!30805 Conc!11994) (csize!24218 Int) (cheight!12205 Int)) (Leaf!18556 (xs!15196 IArray!23993) (csize!24219 Int)) (Empty!11994) )
))
(declare-datatypes ((BalanceConc!23602 0))(
  ( (BalanceConc!23603 (c!638200 Conc!11994)) )
))
(declare-datatypes ((String!43994 0))(
  ( (String!43995 (value!188666 String)) )
))
(declare-datatypes ((TokenValueInjection!11692 0))(
  ( (TokenValueInjection!11693 (toValue!8222 Int) (toChars!8081 Int)) )
))
(declare-datatypes ((Rule!11604 0))(
  ( (Rule!11605 (regex!5902 Regex!10661) (tag!6718 String!43994) (isSeparator!5902 Bool) (transformation!5902 TokenValueInjection!11692)) )
))
(declare-datatypes ((List!39192 0))(
  ( (Nil!39068) (Cons!39068 (h!44488 Rule!11604) (t!301317 List!39192)) )
))
(declare-fun rules!3568 () List!39192)

(declare-fun tp!1121344 () Bool)

(declare-fun inv!52532 (String!43994) Bool)

(declare-fun inv!52534 (TokenValueInjection!11692) Bool)

(assert (=> b!3690006 (= e!2284998 (and tp!1121344 (inv!52532 (tag!6718 (h!44488 rules!3568))) (inv!52534 (transformation!5902 (h!44488 rules!3568))) e!2284994))))

(declare-fun res!1499819 () Bool)

(declare-fun e!2284992 () Bool)

(assert (=> start!347114 (=> (not res!1499819) (not e!2284992))))

(declare-datatypes ((LexerInterface!5491 0))(
  ( (LexerInterfaceExt!5488 (__x!24482 Int)) (Lexer!5489) )
))
(declare-fun thiss!25197 () LexerInterface!5491)

(get-info :version)

(assert (=> start!347114 (= res!1499819 ((_ is Lexer!5489) thiss!25197))))

(assert (=> start!347114 e!2284992))

(assert (=> start!347114 true))

(declare-fun e!2284990 () Bool)

(assert (=> start!347114 e!2284990))

(declare-fun e!2284997 () Bool)

(assert (=> start!347114 e!2284997))

(declare-fun e!2284996 () Bool)

(assert (=> start!347114 e!2284996))

(declare-fun b!3690007 () Bool)

(declare-fun e!2284999 () Bool)

(declare-datatypes ((Token!11170 0))(
  ( (Token!11171 (value!188667 TokenValue!6132) (rule!8750 Rule!11604) (size!29852 Int) (originalCharacters!6616 List!39191)) )
))
(declare-fun lt!1291988 () Token!11170)

(declare-fun lt!1291990 () Rule!11604)

(assert (=> b!3690007 (= e!2284999 (= (rule!8750 lt!1291988) lt!1291990))))

(declare-fun b!3690008 () Bool)

(declare-fun e!2284991 () Bool)

(declare-fun ruleValid!2136 (LexerInterface!5491 Rule!11604) Bool)

(assert (=> b!3690008 (= e!2284991 (ruleValid!2136 thiss!25197 (rule!8750 lt!1291988)))))

(declare-fun lt!1291992 () List!39191)

(declare-datatypes ((tuple2!38984 0))(
  ( (tuple2!38985 (_1!22626 Token!11170) (_2!22626 List!39191)) )
))
(declare-datatypes ((Option!8415 0))(
  ( (None!8414) (Some!8414 (v!38368 tuple2!38984)) )
))
(declare-fun isEmpty!23274 (Option!8415) Bool)

(declare-fun maxPrefixOneRule!2137 (LexerInterface!5491 Rule!11604 List!39191) Option!8415)

(assert (=> b!3690008 (isEmpty!23274 (maxPrefixOneRule!2137 thiss!25197 (rule!8750 lt!1291988) lt!1291992))))

(declare-datatypes ((Unit!57114 0))(
  ( (Unit!57115) )
))
(declare-fun lt!1291987 () Unit!57114)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!592 (LexerInterface!5491 Rule!11604 List!39192 List!39191) Unit!57114)

(assert (=> b!3690008 (= lt!1291987 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!592 thiss!25197 (rule!8750 lt!1291988) rules!3568 lt!1291992))))

(assert (=> b!3690009 (= e!2284994 (and tp!1121342 tp!1121345))))

(declare-fun b!3690010 () Bool)

(declare-fun tp_is_empty!18405 () Bool)

(declare-fun tp!1121341 () Bool)

(assert (=> b!3690010 (= e!2284996 (and tp_is_empty!18405 tp!1121341))))

(declare-fun b!3690011 () Bool)

(declare-fun res!1499813 () Bool)

(assert (=> b!3690011 (=> (not res!1499813) (not e!2284992))))

(declare-fun rulesInvariant!4888 (LexerInterface!5491 List!39192) Bool)

(assert (=> b!3690011 (= res!1499813 (rulesInvariant!4888 thiss!25197 rules!3568))))

(declare-fun b!3690012 () Bool)

(declare-fun e!2284995 () Bool)

(assert (=> b!3690012 (= e!2284995 (not e!2284991))))

(declare-fun res!1499817 () Bool)

(assert (=> b!3690012 (=> res!1499817 e!2284991)))

(declare-fun lt!1291996 () List!39191)

(declare-fun matchR!5216 (Regex!10661 List!39191) Bool)

(assert (=> b!3690012 (= res!1499817 (not (matchR!5216 (regex!5902 (rule!8750 lt!1291988)) lt!1291996)))))

(declare-fun e!2284993 () Bool)

(assert (=> b!3690012 e!2284993))

(declare-fun res!1499814 () Bool)

(assert (=> b!3690012 (=> (not res!1499814) (not e!2284993))))

(declare-datatypes ((Option!8416 0))(
  ( (None!8415) (Some!8415 (v!38369 Rule!11604)) )
))
(declare-fun lt!1291993 () Option!8416)

(declare-fun isDefined!6609 (Option!8416) Bool)

(assert (=> b!3690012 (= res!1499814 (isDefined!6609 lt!1291993))))

(declare-fun getRuleFromTag!1484 (LexerInterface!5491 List!39192 String!43994) Option!8416)

(assert (=> b!3690012 (= lt!1291993 (getRuleFromTag!1484 thiss!25197 rules!3568 (tag!6718 (rule!8750 lt!1291988))))))

(declare-fun lt!1291986 () Unit!57114)

(declare-fun input!3129 () List!39191)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1484 (LexerInterface!5491 List!39192 List!39191 Token!11170) Unit!57114)

(assert (=> b!3690012 (= lt!1291986 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1484 thiss!25197 rules!3568 input!3129 lt!1291988))))

(declare-fun isPrefix!3255 (List!39191 List!39191) Bool)

(assert (=> b!3690012 (isPrefix!3255 lt!1291996 lt!1291992)))

(declare-fun suffix!1448 () List!39191)

(declare-fun ++!9733 (List!39191 List!39191) List!39191)

(assert (=> b!3690012 (= lt!1291992 (++!9733 input!3129 suffix!1448))))

(declare-fun lt!1291995 () Unit!57114)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!584 (List!39191 List!39191 List!39191) Unit!57114)

(assert (=> b!3690012 (= lt!1291995 (lemmaPrefixStaysPrefixWhenAddingToSuffix!584 lt!1291996 input!3129 suffix!1448))))

(declare-fun lt!1291989 () tuple2!38984)

(assert (=> b!3690012 (isPrefix!3255 lt!1291996 (++!9733 lt!1291996 (_2!22626 lt!1291989)))))

(declare-fun lt!1291994 () Unit!57114)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2172 (List!39191 List!39191) Unit!57114)

(assert (=> b!3690012 (= lt!1291994 (lemmaConcatTwoListThenFirstIsPrefix!2172 lt!1291996 (_2!22626 lt!1291989)))))

(declare-fun get!12961 (Option!8415) tuple2!38984)

(declare-fun maxPrefix!3019 (LexerInterface!5491 List!39192 List!39191) Option!8415)

(assert (=> b!3690012 (= lt!1291989 (get!12961 (maxPrefix!3019 thiss!25197 rules!3568 input!3129)))))

(declare-fun list!14602 (BalanceConc!23602) List!39191)

(declare-fun charsOf!3913 (Token!11170) BalanceConc!23602)

(assert (=> b!3690012 (= lt!1291996 (list!14602 (charsOf!3913 lt!1291988)))))

(declare-datatypes ((List!39193 0))(
  ( (Nil!39069) (Cons!39069 (h!44489 Token!11170) (t!301318 List!39193)) )
))
(declare-datatypes ((IArray!23995 0))(
  ( (IArray!23996 (innerList!12055 List!39193)) )
))
(declare-datatypes ((Conc!11995 0))(
  ( (Node!11995 (left!30476 Conc!11995) (right!30806 Conc!11995) (csize!24220 Int) (cheight!12206 Int)) (Leaf!18557 (xs!15197 IArray!23995) (csize!24221 Int)) (Empty!11995) )
))
(declare-datatypes ((BalanceConc!23604 0))(
  ( (BalanceConc!23605 (c!638201 Conc!11995)) )
))
(declare-datatypes ((tuple2!38986 0))(
  ( (tuple2!38987 (_1!22627 BalanceConc!23604) (_2!22627 BalanceConc!23602)) )
))
(declare-fun lt!1291991 () tuple2!38986)

(declare-fun head!7972 (List!39193) Token!11170)

(declare-fun list!14603 (BalanceConc!23604) List!39193)

(assert (=> b!3690012 (= lt!1291988 (head!7972 (list!14603 (_1!22627 lt!1291991))))))

(declare-fun b!3690013 () Bool)

(declare-fun tp!1121343 () Bool)

(assert (=> b!3690013 (= e!2284990 (and e!2284998 tp!1121343))))

(declare-fun b!3690014 () Bool)

(declare-fun res!1499815 () Bool)

(assert (=> b!3690014 (=> (not res!1499815) (not e!2284992))))

(declare-fun isEmpty!23275 (List!39192) Bool)

(assert (=> b!3690014 (= res!1499815 (not (isEmpty!23275 rules!3568)))))

(declare-fun b!3690015 () Bool)

(assert (=> b!3690015 (= e!2284992 e!2284995)))

(declare-fun res!1499816 () Bool)

(assert (=> b!3690015 (=> (not res!1499816) (not e!2284995))))

(declare-fun isEmpty!23276 (BalanceConc!23604) Bool)

(assert (=> b!3690015 (= res!1499816 (not (isEmpty!23276 (_1!22627 lt!1291991))))))

(declare-fun lex!2632 (LexerInterface!5491 List!39192 BalanceConc!23602) tuple2!38986)

(declare-fun seqFromList!4451 (List!39191) BalanceConc!23602)

(assert (=> b!3690015 (= lt!1291991 (lex!2632 thiss!25197 rules!3568 (seqFromList!4451 input!3129)))))

(declare-fun b!3690016 () Bool)

(declare-fun tp!1121346 () Bool)

(assert (=> b!3690016 (= e!2284997 (and tp_is_empty!18405 tp!1121346))))

(declare-fun b!3690017 () Bool)

(declare-fun res!1499812 () Bool)

(assert (=> b!3690017 (=> res!1499812 e!2284991)))

(assert (=> b!3690017 (= res!1499812 (not (isEmpty!23274 (maxPrefix!3019 thiss!25197 rules!3568 lt!1291992))))))

(declare-fun b!3690018 () Bool)

(assert (=> b!3690018 (= e!2284993 e!2284999)))

(declare-fun res!1499818 () Bool)

(assert (=> b!3690018 (=> (not res!1499818) (not e!2284999))))

(assert (=> b!3690018 (= res!1499818 (matchR!5216 (regex!5902 lt!1291990) lt!1291996))))

(declare-fun get!12962 (Option!8416) Rule!11604)

(assert (=> b!3690018 (= lt!1291990 (get!12962 lt!1291993))))

(assert (= (and start!347114 res!1499819) b!3690014))

(assert (= (and b!3690014 res!1499815) b!3690011))

(assert (= (and b!3690011 res!1499813) b!3690015))

(assert (= (and b!3690015 res!1499816) b!3690012))

(assert (= (and b!3690012 res!1499814) b!3690018))

(assert (= (and b!3690018 res!1499818) b!3690007))

(assert (= (and b!3690012 (not res!1499817)) b!3690017))

(assert (= (and b!3690017 (not res!1499812)) b!3690008))

(assert (= b!3690006 b!3690009))

(assert (= b!3690013 b!3690006))

(assert (= (and start!347114 ((_ is Cons!39068) rules!3568)) b!3690013))

(assert (= (and start!347114 ((_ is Cons!39067) suffix!1448)) b!3690016))

(assert (= (and start!347114 ((_ is Cons!39067) input!3129)) b!3690010))

(declare-fun m!4202507 () Bool)

(assert (=> b!3690006 m!4202507))

(declare-fun m!4202509 () Bool)

(assert (=> b!3690006 m!4202509))

(declare-fun m!4202511 () Bool)

(assert (=> b!3690017 m!4202511))

(assert (=> b!3690017 m!4202511))

(declare-fun m!4202513 () Bool)

(assert (=> b!3690017 m!4202513))

(declare-fun m!4202515 () Bool)

(assert (=> b!3690011 m!4202515))

(declare-fun m!4202517 () Bool)

(assert (=> b!3690018 m!4202517))

(declare-fun m!4202519 () Bool)

(assert (=> b!3690018 m!4202519))

(declare-fun m!4202521 () Bool)

(assert (=> b!3690014 m!4202521))

(declare-fun m!4202523 () Bool)

(assert (=> b!3690012 m!4202523))

(assert (=> b!3690012 m!4202523))

(declare-fun m!4202525 () Bool)

(assert (=> b!3690012 m!4202525))

(declare-fun m!4202527 () Bool)

(assert (=> b!3690012 m!4202527))

(declare-fun m!4202529 () Bool)

(assert (=> b!3690012 m!4202529))

(declare-fun m!4202531 () Bool)

(assert (=> b!3690012 m!4202531))

(declare-fun m!4202533 () Bool)

(assert (=> b!3690012 m!4202533))

(declare-fun m!4202535 () Bool)

(assert (=> b!3690012 m!4202535))

(declare-fun m!4202537 () Bool)

(assert (=> b!3690012 m!4202537))

(declare-fun m!4202539 () Bool)

(assert (=> b!3690012 m!4202539))

(declare-fun m!4202541 () Bool)

(assert (=> b!3690012 m!4202541))

(declare-fun m!4202543 () Bool)

(assert (=> b!3690012 m!4202543))

(assert (=> b!3690012 m!4202529))

(declare-fun m!4202545 () Bool)

(assert (=> b!3690012 m!4202545))

(declare-fun m!4202547 () Bool)

(assert (=> b!3690012 m!4202547))

(assert (=> b!3690012 m!4202539))

(declare-fun m!4202549 () Bool)

(assert (=> b!3690012 m!4202549))

(assert (=> b!3690012 m!4202541))

(declare-fun m!4202551 () Bool)

(assert (=> b!3690012 m!4202551))

(declare-fun m!4202553 () Bool)

(assert (=> b!3690012 m!4202553))

(declare-fun m!4202555 () Bool)

(assert (=> b!3690008 m!4202555))

(declare-fun m!4202557 () Bool)

(assert (=> b!3690008 m!4202557))

(assert (=> b!3690008 m!4202557))

(declare-fun m!4202559 () Bool)

(assert (=> b!3690008 m!4202559))

(declare-fun m!4202561 () Bool)

(assert (=> b!3690008 m!4202561))

(declare-fun m!4202563 () Bool)

(assert (=> b!3690015 m!4202563))

(declare-fun m!4202565 () Bool)

(assert (=> b!3690015 m!4202565))

(assert (=> b!3690015 m!4202565))

(declare-fun m!4202567 () Bool)

(assert (=> b!3690015 m!4202567))

(check-sat tp_is_empty!18405 (not b!3690012) (not b!3690008) (not b!3690013) (not b!3690018) (not b!3690016) (not b!3690017) (not b!3690010) (not b!3690015) (not b!3690006) (not b_next!98621) (not b!3690011) (not b!3690014) b_and!275671 (not b_next!98623) b_and!275673)
(check-sat b_and!275671 b_and!275673 (not b_next!98623) (not b_next!98621))
(get-model)

(declare-fun d!1083008 () Bool)

(declare-fun e!2285050 () Bool)

(assert (=> d!1083008 e!2285050))

(declare-fun c!638218 () Bool)

(assert (=> d!1083008 (= c!638218 ((_ is EmptyExpr!10661) (regex!5902 lt!1291990)))))

(declare-fun lt!1292008 () Bool)

(declare-fun e!2285048 () Bool)

(assert (=> d!1083008 (= lt!1292008 e!2285048)))

(declare-fun c!638217 () Bool)

(declare-fun isEmpty!23279 (List!39191) Bool)

(assert (=> d!1083008 (= c!638217 (isEmpty!23279 lt!1291996))))

(declare-fun validRegex!4881 (Regex!10661) Bool)

(assert (=> d!1083008 (validRegex!4881 (regex!5902 lt!1291990))))

(assert (=> d!1083008 (= (matchR!5216 (regex!5902 lt!1291990) lt!1291996) lt!1292008)))

(declare-fun b!3690107 () Bool)

(declare-fun res!1499891 () Bool)

(declare-fun e!2285051 () Bool)

(assert (=> b!3690107 (=> (not res!1499891) (not e!2285051))))

(declare-fun call!266922 () Bool)

(assert (=> b!3690107 (= res!1499891 (not call!266922))))

(declare-fun b!3690108 () Bool)

(declare-fun derivativeStep!3265 (Regex!10661 C!21508) Regex!10661)

(declare-fun head!7974 (List!39191) C!21508)

(declare-fun tail!5715 (List!39191) List!39191)

(assert (=> b!3690108 (= e!2285048 (matchR!5216 (derivativeStep!3265 (regex!5902 lt!1291990) (head!7974 lt!1291996)) (tail!5715 lt!1291996)))))

(declare-fun b!3690109 () Bool)

(declare-fun e!2285049 () Bool)

(assert (=> b!3690109 (= e!2285049 (not (= (head!7974 lt!1291996) (c!638199 (regex!5902 lt!1291990)))))))

(declare-fun b!3690110 () Bool)

(declare-fun nullable!3719 (Regex!10661) Bool)

(assert (=> b!3690110 (= e!2285048 (nullable!3719 (regex!5902 lt!1291990)))))

(declare-fun b!3690111 () Bool)

(assert (=> b!3690111 (= e!2285051 (= (head!7974 lt!1291996) (c!638199 (regex!5902 lt!1291990))))))

(declare-fun b!3690112 () Bool)

(declare-fun e!2285052 () Bool)

(assert (=> b!3690112 (= e!2285050 e!2285052)))

(declare-fun c!638219 () Bool)

(assert (=> b!3690112 (= c!638219 ((_ is EmptyLang!10661) (regex!5902 lt!1291990)))))

(declare-fun b!3690113 () Bool)

(assert (=> b!3690113 (= e!2285052 (not lt!1292008))))

(declare-fun b!3690114 () Bool)

(declare-fun e!2285054 () Bool)

(assert (=> b!3690114 (= e!2285054 e!2285049)))

(declare-fun res!1499889 () Bool)

(assert (=> b!3690114 (=> res!1499889 e!2285049)))

(assert (=> b!3690114 (= res!1499889 call!266922)))

(declare-fun b!3690115 () Bool)

(declare-fun e!2285053 () Bool)

(assert (=> b!3690115 (= e!2285053 e!2285054)))

(declare-fun res!1499890 () Bool)

(assert (=> b!3690115 (=> (not res!1499890) (not e!2285054))))

(assert (=> b!3690115 (= res!1499890 (not lt!1292008))))

(declare-fun b!3690116 () Bool)

(declare-fun res!1499885 () Bool)

(assert (=> b!3690116 (=> res!1499885 e!2285049)))

(assert (=> b!3690116 (= res!1499885 (not (isEmpty!23279 (tail!5715 lt!1291996))))))

(declare-fun b!3690117 () Bool)

(declare-fun res!1499887 () Bool)

(assert (=> b!3690117 (=> res!1499887 e!2285053)))

(assert (=> b!3690117 (= res!1499887 (not ((_ is ElementMatch!10661) (regex!5902 lt!1291990))))))

(assert (=> b!3690117 (= e!2285052 e!2285053)))

(declare-fun bm!266917 () Bool)

(assert (=> bm!266917 (= call!266922 (isEmpty!23279 lt!1291996))))

(declare-fun b!3690118 () Bool)

(assert (=> b!3690118 (= e!2285050 (= lt!1292008 call!266922))))

(declare-fun b!3690119 () Bool)

(declare-fun res!1499892 () Bool)

(assert (=> b!3690119 (=> res!1499892 e!2285053)))

(assert (=> b!3690119 (= res!1499892 e!2285051)))

(declare-fun res!1499886 () Bool)

(assert (=> b!3690119 (=> (not res!1499886) (not e!2285051))))

(assert (=> b!3690119 (= res!1499886 lt!1292008)))

(declare-fun b!3690120 () Bool)

(declare-fun res!1499888 () Bool)

(assert (=> b!3690120 (=> (not res!1499888) (not e!2285051))))

(assert (=> b!3690120 (= res!1499888 (isEmpty!23279 (tail!5715 lt!1291996)))))

(assert (= (and d!1083008 c!638217) b!3690110))

(assert (= (and d!1083008 (not c!638217)) b!3690108))

(assert (= (and d!1083008 c!638218) b!3690118))

(assert (= (and d!1083008 (not c!638218)) b!3690112))

(assert (= (and b!3690112 c!638219) b!3690113))

(assert (= (and b!3690112 (not c!638219)) b!3690117))

(assert (= (and b!3690117 (not res!1499887)) b!3690119))

(assert (= (and b!3690119 res!1499886) b!3690107))

(assert (= (and b!3690107 res!1499891) b!3690120))

(assert (= (and b!3690120 res!1499888) b!3690111))

(assert (= (and b!3690119 (not res!1499892)) b!3690115))

(assert (= (and b!3690115 res!1499890) b!3690114))

(assert (= (and b!3690114 (not res!1499889)) b!3690116))

(assert (= (and b!3690116 (not res!1499885)) b!3690109))

(assert (= (or b!3690118 b!3690107 b!3690114) bm!266917))

(declare-fun m!4202603 () Bool)

(assert (=> d!1083008 m!4202603))

(declare-fun m!4202605 () Bool)

(assert (=> d!1083008 m!4202605))

(declare-fun m!4202607 () Bool)

(assert (=> b!3690109 m!4202607))

(declare-fun m!4202609 () Bool)

(assert (=> b!3690116 m!4202609))

(assert (=> b!3690116 m!4202609))

(declare-fun m!4202611 () Bool)

(assert (=> b!3690116 m!4202611))

(declare-fun m!4202613 () Bool)

(assert (=> b!3690110 m!4202613))

(assert (=> b!3690108 m!4202607))

(assert (=> b!3690108 m!4202607))

(declare-fun m!4202615 () Bool)

(assert (=> b!3690108 m!4202615))

(assert (=> b!3690108 m!4202609))

(assert (=> b!3690108 m!4202615))

(assert (=> b!3690108 m!4202609))

(declare-fun m!4202617 () Bool)

(assert (=> b!3690108 m!4202617))

(assert (=> bm!266917 m!4202603))

(assert (=> b!3690120 m!4202609))

(assert (=> b!3690120 m!4202609))

(assert (=> b!3690120 m!4202611))

(assert (=> b!3690111 m!4202607))

(assert (=> b!3690018 d!1083008))

(declare-fun d!1083020 () Bool)

(assert (=> d!1083020 (= (get!12962 lt!1291993) (v!38369 lt!1291993))))

(assert (=> b!3690018 d!1083020))

(declare-fun d!1083022 () Bool)

(declare-fun e!2285069 () Bool)

(assert (=> d!1083022 e!2285069))

(declare-fun res!1499915 () Bool)

(assert (=> d!1083022 (=> res!1499915 e!2285069)))

(declare-fun lt!1292021 () Bool)

(assert (=> d!1083022 (= res!1499915 (not lt!1292021))))

(declare-fun e!2285067 () Bool)

(assert (=> d!1083022 (= lt!1292021 e!2285067)))

(declare-fun res!1499917 () Bool)

(assert (=> d!1083022 (=> res!1499917 e!2285067)))

(assert (=> d!1083022 (= res!1499917 ((_ is Nil!39067) lt!1291996))))

(assert (=> d!1083022 (= (isPrefix!3255 lt!1291996 (++!9733 lt!1291996 (_2!22626 lt!1291989))) lt!1292021)))

(declare-fun b!3690149 () Bool)

(declare-fun e!2285068 () Bool)

(assert (=> b!3690149 (= e!2285068 (isPrefix!3255 (tail!5715 lt!1291996) (tail!5715 (++!9733 lt!1291996 (_2!22626 lt!1291989)))))))

(declare-fun b!3690147 () Bool)

(assert (=> b!3690147 (= e!2285067 e!2285068)))

(declare-fun res!1499918 () Bool)

(assert (=> b!3690147 (=> (not res!1499918) (not e!2285068))))

(assert (=> b!3690147 (= res!1499918 (not ((_ is Nil!39067) (++!9733 lt!1291996 (_2!22626 lt!1291989)))))))

(declare-fun b!3690148 () Bool)

(declare-fun res!1499916 () Bool)

(assert (=> b!3690148 (=> (not res!1499916) (not e!2285068))))

(assert (=> b!3690148 (= res!1499916 (= (head!7974 lt!1291996) (head!7974 (++!9733 lt!1291996 (_2!22626 lt!1291989)))))))

(declare-fun b!3690150 () Bool)

(declare-fun size!29855 (List!39191) Int)

(assert (=> b!3690150 (= e!2285069 (>= (size!29855 (++!9733 lt!1291996 (_2!22626 lt!1291989))) (size!29855 lt!1291996)))))

(assert (= (and d!1083022 (not res!1499917)) b!3690147))

(assert (= (and b!3690147 res!1499918) b!3690148))

(assert (= (and b!3690148 res!1499916) b!3690149))

(assert (= (and d!1083022 (not res!1499915)) b!3690150))

(assert (=> b!3690149 m!4202609))

(assert (=> b!3690149 m!4202541))

(declare-fun m!4202619 () Bool)

(assert (=> b!3690149 m!4202619))

(assert (=> b!3690149 m!4202609))

(assert (=> b!3690149 m!4202619))

(declare-fun m!4202621 () Bool)

(assert (=> b!3690149 m!4202621))

(assert (=> b!3690148 m!4202607))

(assert (=> b!3690148 m!4202541))

(declare-fun m!4202623 () Bool)

(assert (=> b!3690148 m!4202623))

(assert (=> b!3690150 m!4202541))

(declare-fun m!4202625 () Bool)

(assert (=> b!3690150 m!4202625))

(declare-fun m!4202627 () Bool)

(assert (=> b!3690150 m!4202627))

(assert (=> b!3690012 d!1083022))

(declare-fun d!1083024 () Bool)

(assert (=> d!1083024 (isPrefix!3255 lt!1291996 (++!9733 lt!1291996 (_2!22626 lt!1291989)))))

(declare-fun lt!1292032 () Unit!57114)

(declare-fun choose!22092 (List!39191 List!39191) Unit!57114)

(assert (=> d!1083024 (= lt!1292032 (choose!22092 lt!1291996 (_2!22626 lt!1291989)))))

(assert (=> d!1083024 (= (lemmaConcatTwoListThenFirstIsPrefix!2172 lt!1291996 (_2!22626 lt!1291989)) lt!1292032)))

(declare-fun bs!574061 () Bool)

(assert (= bs!574061 d!1083024))

(assert (=> bs!574061 m!4202541))

(assert (=> bs!574061 m!4202541))

(assert (=> bs!574061 m!4202543))

(declare-fun m!4202665 () Bool)

(assert (=> bs!574061 m!4202665))

(assert (=> b!3690012 d!1083024))

(declare-fun d!1083030 () Bool)

(declare-fun list!14606 (Conc!11995) List!39193)

(assert (=> d!1083030 (= (list!14603 (_1!22627 lt!1291991)) (list!14606 (c!638201 (_1!22627 lt!1291991))))))

(declare-fun bs!574062 () Bool)

(assert (= bs!574062 d!1083030))

(declare-fun m!4202667 () Bool)

(assert (=> bs!574062 m!4202667))

(assert (=> b!3690012 d!1083030))

(declare-fun e!2285090 () Bool)

(declare-fun b!3690189 () Bool)

(declare-fun lt!1292047 () List!39191)

(assert (=> b!3690189 (= e!2285090 (or (not (= (_2!22626 lt!1291989) Nil!39067)) (= lt!1292047 lt!1291996)))))

(declare-fun b!3690188 () Bool)

(declare-fun res!1499936 () Bool)

(assert (=> b!3690188 (=> (not res!1499936) (not e!2285090))))

(assert (=> b!3690188 (= res!1499936 (= (size!29855 lt!1292047) (+ (size!29855 lt!1291996) (size!29855 (_2!22626 lt!1291989)))))))

(declare-fun b!3690187 () Bool)

(declare-fun e!2285089 () List!39191)

(assert (=> b!3690187 (= e!2285089 (Cons!39067 (h!44487 lt!1291996) (++!9733 (t!301316 lt!1291996) (_2!22626 lt!1291989))))))

(declare-fun b!3690186 () Bool)

(assert (=> b!3690186 (= e!2285089 (_2!22626 lt!1291989))))

(declare-fun d!1083032 () Bool)

(assert (=> d!1083032 e!2285090))

(declare-fun res!1499937 () Bool)

(assert (=> d!1083032 (=> (not res!1499937) (not e!2285090))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5665 (List!39191) (InoxSet C!21508))

(assert (=> d!1083032 (= res!1499937 (= (content!5665 lt!1292047) ((_ map or) (content!5665 lt!1291996) (content!5665 (_2!22626 lt!1291989)))))))

(assert (=> d!1083032 (= lt!1292047 e!2285089)))

(declare-fun c!638231 () Bool)

(assert (=> d!1083032 (= c!638231 ((_ is Nil!39067) lt!1291996))))

(assert (=> d!1083032 (= (++!9733 lt!1291996 (_2!22626 lt!1291989)) lt!1292047)))

(assert (= (and d!1083032 c!638231) b!3690186))

(assert (= (and d!1083032 (not c!638231)) b!3690187))

(assert (= (and d!1083032 res!1499937) b!3690188))

(assert (= (and b!3690188 res!1499936) b!3690189))

(declare-fun m!4202693 () Bool)

(assert (=> b!3690188 m!4202693))

(assert (=> b!3690188 m!4202627))

(declare-fun m!4202695 () Bool)

(assert (=> b!3690188 m!4202695))

(declare-fun m!4202697 () Bool)

(assert (=> b!3690187 m!4202697))

(declare-fun m!4202699 () Bool)

(assert (=> d!1083032 m!4202699))

(declare-fun m!4202701 () Bool)

(assert (=> d!1083032 m!4202701))

(declare-fun m!4202703 () Bool)

(assert (=> d!1083032 m!4202703))

(assert (=> b!3690012 d!1083032))

(declare-fun d!1083046 () Bool)

(assert (=> d!1083046 (isPrefix!3255 lt!1291996 (++!9733 input!3129 suffix!1448))))

(declare-fun lt!1292055 () Unit!57114)

(declare-fun choose!22094 (List!39191 List!39191 List!39191) Unit!57114)

(assert (=> d!1083046 (= lt!1292055 (choose!22094 lt!1291996 input!3129 suffix!1448))))

(assert (=> d!1083046 (isPrefix!3255 lt!1291996 input!3129)))

(assert (=> d!1083046 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!584 lt!1291996 input!3129 suffix!1448) lt!1292055)))

(declare-fun bs!574067 () Bool)

(assert (= bs!574067 d!1083046))

(assert (=> bs!574067 m!4202527))

(assert (=> bs!574067 m!4202527))

(declare-fun m!4202713 () Bool)

(assert (=> bs!574067 m!4202713))

(declare-fun m!4202715 () Bool)

(assert (=> bs!574067 m!4202715))

(declare-fun m!4202717 () Bool)

(assert (=> bs!574067 m!4202717))

(assert (=> b!3690012 d!1083046))

(declare-fun b!3690280 () Bool)

(declare-fun res!1500005 () Bool)

(declare-fun e!2285133 () Bool)

(assert (=> b!3690280 (=> (not res!1500005) (not e!2285133))))

(declare-fun lt!1292088 () Option!8415)

(assert (=> b!3690280 (= res!1500005 (< (size!29855 (_2!22626 (get!12961 lt!1292088))) (size!29855 input!3129)))))

(declare-fun b!3690281 () Bool)

(declare-fun e!2285134 () Option!8415)

(declare-fun lt!1292087 () Option!8415)

(declare-fun lt!1292085 () Option!8415)

(assert (=> b!3690281 (= e!2285134 (ite (and ((_ is None!8414) lt!1292087) ((_ is None!8414) lt!1292085)) None!8414 (ite ((_ is None!8414) lt!1292085) lt!1292087 (ite ((_ is None!8414) lt!1292087) lt!1292085 (ite (>= (size!29852 (_1!22626 (v!38368 lt!1292087))) (size!29852 (_1!22626 (v!38368 lt!1292085)))) lt!1292087 lt!1292085)))))))

(declare-fun call!266929 () Option!8415)

(assert (=> b!3690281 (= lt!1292087 call!266929)))

(assert (=> b!3690281 (= lt!1292085 (maxPrefix!3019 thiss!25197 (t!301317 rules!3568) input!3129))))

(declare-fun bm!266924 () Bool)

(assert (=> bm!266924 (= call!266929 (maxPrefixOneRule!2137 thiss!25197 (h!44488 rules!3568) input!3129))))

(declare-fun b!3690282 () Bool)

(declare-fun res!1500002 () Bool)

(assert (=> b!3690282 (=> (not res!1500002) (not e!2285133))))

(assert (=> b!3690282 (= res!1500002 (matchR!5216 (regex!5902 (rule!8750 (_1!22626 (get!12961 lt!1292088)))) (list!14602 (charsOf!3913 (_1!22626 (get!12961 lt!1292088))))))))

(declare-fun b!3690283 () Bool)

(declare-fun res!1499999 () Bool)

(assert (=> b!3690283 (=> (not res!1499999) (not e!2285133))))

(assert (=> b!3690283 (= res!1499999 (= (++!9733 (list!14602 (charsOf!3913 (_1!22626 (get!12961 lt!1292088)))) (_2!22626 (get!12961 lt!1292088))) input!3129))))

(declare-fun b!3690284 () Bool)

(assert (=> b!3690284 (= e!2285134 call!266929)))

(declare-fun b!3690285 () Bool)

(declare-fun res!1500000 () Bool)

(assert (=> b!3690285 (=> (not res!1500000) (not e!2285133))))

(assert (=> b!3690285 (= res!1500000 (= (list!14602 (charsOf!3913 (_1!22626 (get!12961 lt!1292088)))) (originalCharacters!6616 (_1!22626 (get!12961 lt!1292088)))))))

(declare-fun d!1083050 () Bool)

(declare-fun e!2285135 () Bool)

(assert (=> d!1083050 e!2285135))

(declare-fun res!1500001 () Bool)

(assert (=> d!1083050 (=> res!1500001 e!2285135)))

(assert (=> d!1083050 (= res!1500001 (isEmpty!23274 lt!1292088))))

(assert (=> d!1083050 (= lt!1292088 e!2285134)))

(declare-fun c!638244 () Bool)

(assert (=> d!1083050 (= c!638244 (and ((_ is Cons!39068) rules!3568) ((_ is Nil!39068) (t!301317 rules!3568))))))

(declare-fun lt!1292089 () Unit!57114)

(declare-fun lt!1292086 () Unit!57114)

(assert (=> d!1083050 (= lt!1292089 lt!1292086)))

(assert (=> d!1083050 (isPrefix!3255 input!3129 input!3129)))

(declare-fun lemmaIsPrefixRefl!2040 (List!39191 List!39191) Unit!57114)

(assert (=> d!1083050 (= lt!1292086 (lemmaIsPrefixRefl!2040 input!3129 input!3129))))

(declare-fun rulesValidInductive!2114 (LexerInterface!5491 List!39192) Bool)

(assert (=> d!1083050 (rulesValidInductive!2114 thiss!25197 rules!3568)))

(assert (=> d!1083050 (= (maxPrefix!3019 thiss!25197 rules!3568 input!3129) lt!1292088)))

(declare-fun b!3690286 () Bool)

(assert (=> b!3690286 (= e!2285135 e!2285133)))

(declare-fun res!1500003 () Bool)

(assert (=> b!3690286 (=> (not res!1500003) (not e!2285133))))

(declare-fun isDefined!6611 (Option!8415) Bool)

(assert (=> b!3690286 (= res!1500003 (isDefined!6611 lt!1292088))))

(declare-fun b!3690287 () Bool)

(declare-fun contains!7801 (List!39192 Rule!11604) Bool)

(assert (=> b!3690287 (= e!2285133 (contains!7801 rules!3568 (rule!8750 (_1!22626 (get!12961 lt!1292088)))))))

(declare-fun b!3690288 () Bool)

(declare-fun res!1500004 () Bool)

(assert (=> b!3690288 (=> (not res!1500004) (not e!2285133))))

(declare-fun apply!9372 (TokenValueInjection!11692 BalanceConc!23602) TokenValue!6132)

(assert (=> b!3690288 (= res!1500004 (= (value!188667 (_1!22626 (get!12961 lt!1292088))) (apply!9372 (transformation!5902 (rule!8750 (_1!22626 (get!12961 lt!1292088)))) (seqFromList!4451 (originalCharacters!6616 (_1!22626 (get!12961 lt!1292088)))))))))

(assert (= (and d!1083050 c!638244) b!3690284))

(assert (= (and d!1083050 (not c!638244)) b!3690281))

(assert (= (or b!3690284 b!3690281) bm!266924))

(assert (= (and d!1083050 (not res!1500001)) b!3690286))

(assert (= (and b!3690286 res!1500003) b!3690285))

(assert (= (and b!3690285 res!1500000) b!3690280))

(assert (= (and b!3690280 res!1500005) b!3690283))

(assert (= (and b!3690283 res!1499999) b!3690288))

(assert (= (and b!3690288 res!1500004) b!3690282))

(assert (= (and b!3690282 res!1500002) b!3690287))

(declare-fun m!4202801 () Bool)

(assert (=> b!3690281 m!4202801))

(declare-fun m!4202803 () Bool)

(assert (=> b!3690287 m!4202803))

(declare-fun m!4202805 () Bool)

(assert (=> b!3690287 m!4202805))

(assert (=> b!3690288 m!4202803))

(declare-fun m!4202807 () Bool)

(assert (=> b!3690288 m!4202807))

(assert (=> b!3690288 m!4202807))

(declare-fun m!4202809 () Bool)

(assert (=> b!3690288 m!4202809))

(assert (=> b!3690283 m!4202803))

(declare-fun m!4202811 () Bool)

(assert (=> b!3690283 m!4202811))

(assert (=> b!3690283 m!4202811))

(declare-fun m!4202813 () Bool)

(assert (=> b!3690283 m!4202813))

(assert (=> b!3690283 m!4202813))

(declare-fun m!4202815 () Bool)

(assert (=> b!3690283 m!4202815))

(assert (=> b!3690280 m!4202803))

(declare-fun m!4202817 () Bool)

(assert (=> b!3690280 m!4202817))

(declare-fun m!4202819 () Bool)

(assert (=> b!3690280 m!4202819))

(declare-fun m!4202821 () Bool)

(assert (=> d!1083050 m!4202821))

(declare-fun m!4202823 () Bool)

(assert (=> d!1083050 m!4202823))

(declare-fun m!4202825 () Bool)

(assert (=> d!1083050 m!4202825))

(declare-fun m!4202827 () Bool)

(assert (=> d!1083050 m!4202827))

(declare-fun m!4202829 () Bool)

(assert (=> bm!266924 m!4202829))

(assert (=> b!3690285 m!4202803))

(assert (=> b!3690285 m!4202811))

(assert (=> b!3690285 m!4202811))

(assert (=> b!3690285 m!4202813))

(declare-fun m!4202831 () Bool)

(assert (=> b!3690286 m!4202831))

(assert (=> b!3690282 m!4202803))

(assert (=> b!3690282 m!4202811))

(assert (=> b!3690282 m!4202811))

(assert (=> b!3690282 m!4202813))

(assert (=> b!3690282 m!4202813))

(declare-fun m!4202833 () Bool)

(assert (=> b!3690282 m!4202833))

(assert (=> b!3690012 d!1083050))

(declare-fun d!1083066 () Bool)

(assert (=> d!1083066 (= (head!7972 (list!14603 (_1!22627 lt!1291991))) (h!44489 (list!14603 (_1!22627 lt!1291991))))))

(assert (=> b!3690012 d!1083066))

(declare-fun d!1083068 () Bool)

(declare-fun e!2285144 () Bool)

(assert (=> d!1083068 e!2285144))

(declare-fun res!1500020 () Bool)

(assert (=> d!1083068 (=> (not res!1500020) (not e!2285144))))

(assert (=> d!1083068 (= res!1500020 (isDefined!6609 (getRuleFromTag!1484 thiss!25197 rules!3568 (tag!6718 (rule!8750 lt!1291988)))))))

(declare-fun lt!1292103 () Unit!57114)

(declare-fun choose!22095 (LexerInterface!5491 List!39192 List!39191 Token!11170) Unit!57114)

(assert (=> d!1083068 (= lt!1292103 (choose!22095 thiss!25197 rules!3568 input!3129 lt!1291988))))

(assert (=> d!1083068 (rulesInvariant!4888 thiss!25197 rules!3568)))

(assert (=> d!1083068 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1484 thiss!25197 rules!3568 input!3129 lt!1291988) lt!1292103)))

(declare-fun b!3690305 () Bool)

(declare-fun res!1500021 () Bool)

(assert (=> b!3690305 (=> (not res!1500021) (not e!2285144))))

(assert (=> b!3690305 (= res!1500021 (matchR!5216 (regex!5902 (get!12962 (getRuleFromTag!1484 thiss!25197 rules!3568 (tag!6718 (rule!8750 lt!1291988))))) (list!14602 (charsOf!3913 lt!1291988))))))

(declare-fun b!3690306 () Bool)

(assert (=> b!3690306 (= e!2285144 (= (rule!8750 lt!1291988) (get!12962 (getRuleFromTag!1484 thiss!25197 rules!3568 (tag!6718 (rule!8750 lt!1291988))))))))

(assert (= (and d!1083068 res!1500020) b!3690305))

(assert (= (and b!3690305 res!1500021) b!3690306))

(assert (=> d!1083068 m!4202545))

(assert (=> d!1083068 m!4202545))

(declare-fun m!4202875 () Bool)

(assert (=> d!1083068 m!4202875))

(declare-fun m!4202877 () Bool)

(assert (=> d!1083068 m!4202877))

(assert (=> d!1083068 m!4202515))

(assert (=> b!3690305 m!4202539))

(assert (=> b!3690305 m!4202545))

(declare-fun m!4202879 () Bool)

(assert (=> b!3690305 m!4202879))

(assert (=> b!3690305 m!4202539))

(assert (=> b!3690305 m!4202549))

(assert (=> b!3690305 m!4202549))

(declare-fun m!4202881 () Bool)

(assert (=> b!3690305 m!4202881))

(assert (=> b!3690305 m!4202545))

(assert (=> b!3690306 m!4202545))

(assert (=> b!3690306 m!4202545))

(assert (=> b!3690306 m!4202879))

(assert (=> b!3690012 d!1083068))

(declare-fun d!1083082 () Bool)

(declare-fun e!2285147 () Bool)

(assert (=> d!1083082 e!2285147))

(declare-fun c!638247 () Bool)

(assert (=> d!1083082 (= c!638247 ((_ is EmptyExpr!10661) (regex!5902 (rule!8750 lt!1291988))))))

(declare-fun lt!1292104 () Bool)

(declare-fun e!2285145 () Bool)

(assert (=> d!1083082 (= lt!1292104 e!2285145)))

(declare-fun c!638246 () Bool)

(assert (=> d!1083082 (= c!638246 (isEmpty!23279 lt!1291996))))

(assert (=> d!1083082 (validRegex!4881 (regex!5902 (rule!8750 lt!1291988)))))

(assert (=> d!1083082 (= (matchR!5216 (regex!5902 (rule!8750 lt!1291988)) lt!1291996) lt!1292104)))

(declare-fun b!3690307 () Bool)

(declare-fun res!1500028 () Bool)

(declare-fun e!2285148 () Bool)

(assert (=> b!3690307 (=> (not res!1500028) (not e!2285148))))

(declare-fun call!266931 () Bool)

(assert (=> b!3690307 (= res!1500028 (not call!266931))))

(declare-fun b!3690308 () Bool)

(assert (=> b!3690308 (= e!2285145 (matchR!5216 (derivativeStep!3265 (regex!5902 (rule!8750 lt!1291988)) (head!7974 lt!1291996)) (tail!5715 lt!1291996)))))

(declare-fun b!3690309 () Bool)

(declare-fun e!2285146 () Bool)

(assert (=> b!3690309 (= e!2285146 (not (= (head!7974 lt!1291996) (c!638199 (regex!5902 (rule!8750 lt!1291988))))))))

(declare-fun b!3690310 () Bool)

(assert (=> b!3690310 (= e!2285145 (nullable!3719 (regex!5902 (rule!8750 lt!1291988))))))

(declare-fun b!3690311 () Bool)

(assert (=> b!3690311 (= e!2285148 (= (head!7974 lt!1291996) (c!638199 (regex!5902 (rule!8750 lt!1291988)))))))

(declare-fun b!3690312 () Bool)

(declare-fun e!2285149 () Bool)

(assert (=> b!3690312 (= e!2285147 e!2285149)))

(declare-fun c!638248 () Bool)

(assert (=> b!3690312 (= c!638248 ((_ is EmptyLang!10661) (regex!5902 (rule!8750 lt!1291988))))))

(declare-fun b!3690313 () Bool)

(assert (=> b!3690313 (= e!2285149 (not lt!1292104))))

(declare-fun b!3690314 () Bool)

(declare-fun e!2285151 () Bool)

(assert (=> b!3690314 (= e!2285151 e!2285146)))

(declare-fun res!1500026 () Bool)

(assert (=> b!3690314 (=> res!1500026 e!2285146)))

(assert (=> b!3690314 (= res!1500026 call!266931)))

(declare-fun b!3690315 () Bool)

(declare-fun e!2285150 () Bool)

(assert (=> b!3690315 (= e!2285150 e!2285151)))

(declare-fun res!1500027 () Bool)

(assert (=> b!3690315 (=> (not res!1500027) (not e!2285151))))

(assert (=> b!3690315 (= res!1500027 (not lt!1292104))))

(declare-fun b!3690316 () Bool)

(declare-fun res!1500022 () Bool)

(assert (=> b!3690316 (=> res!1500022 e!2285146)))

(assert (=> b!3690316 (= res!1500022 (not (isEmpty!23279 (tail!5715 lt!1291996))))))

(declare-fun b!3690317 () Bool)

(declare-fun res!1500024 () Bool)

(assert (=> b!3690317 (=> res!1500024 e!2285150)))

(assert (=> b!3690317 (= res!1500024 (not ((_ is ElementMatch!10661) (regex!5902 (rule!8750 lt!1291988)))))))

(assert (=> b!3690317 (= e!2285149 e!2285150)))

(declare-fun bm!266926 () Bool)

(assert (=> bm!266926 (= call!266931 (isEmpty!23279 lt!1291996))))

(declare-fun b!3690318 () Bool)

(assert (=> b!3690318 (= e!2285147 (= lt!1292104 call!266931))))

(declare-fun b!3690319 () Bool)

(declare-fun res!1500029 () Bool)

(assert (=> b!3690319 (=> res!1500029 e!2285150)))

(assert (=> b!3690319 (= res!1500029 e!2285148)))

(declare-fun res!1500023 () Bool)

(assert (=> b!3690319 (=> (not res!1500023) (not e!2285148))))

(assert (=> b!3690319 (= res!1500023 lt!1292104)))

(declare-fun b!3690320 () Bool)

(declare-fun res!1500025 () Bool)

(assert (=> b!3690320 (=> (not res!1500025) (not e!2285148))))

(assert (=> b!3690320 (= res!1500025 (isEmpty!23279 (tail!5715 lt!1291996)))))

(assert (= (and d!1083082 c!638246) b!3690310))

(assert (= (and d!1083082 (not c!638246)) b!3690308))

(assert (= (and d!1083082 c!638247) b!3690318))

(assert (= (and d!1083082 (not c!638247)) b!3690312))

(assert (= (and b!3690312 c!638248) b!3690313))

(assert (= (and b!3690312 (not c!638248)) b!3690317))

(assert (= (and b!3690317 (not res!1500024)) b!3690319))

(assert (= (and b!3690319 res!1500023) b!3690307))

(assert (= (and b!3690307 res!1500028) b!3690320))

(assert (= (and b!3690320 res!1500025) b!3690311))

(assert (= (and b!3690319 (not res!1500029)) b!3690315))

(assert (= (and b!3690315 res!1500027) b!3690314))

(assert (= (and b!3690314 (not res!1500026)) b!3690316))

(assert (= (and b!3690316 (not res!1500022)) b!3690309))

(assert (= (or b!3690318 b!3690307 b!3690314) bm!266926))

(assert (=> d!1083082 m!4202603))

(declare-fun m!4202883 () Bool)

(assert (=> d!1083082 m!4202883))

(assert (=> b!3690309 m!4202607))

(assert (=> b!3690316 m!4202609))

(assert (=> b!3690316 m!4202609))

(assert (=> b!3690316 m!4202611))

(declare-fun m!4202885 () Bool)

(assert (=> b!3690310 m!4202885))

(assert (=> b!3690308 m!4202607))

(assert (=> b!3690308 m!4202607))

(declare-fun m!4202887 () Bool)

(assert (=> b!3690308 m!4202887))

(assert (=> b!3690308 m!4202609))

(assert (=> b!3690308 m!4202887))

(assert (=> b!3690308 m!4202609))

(declare-fun m!4202889 () Bool)

(assert (=> b!3690308 m!4202889))

(assert (=> bm!266926 m!4202603))

(assert (=> b!3690320 m!4202609))

(assert (=> b!3690320 m!4202609))

(assert (=> b!3690320 m!4202611))

(assert (=> b!3690311 m!4202607))

(assert (=> b!3690012 d!1083082))

(declare-fun d!1083084 () Bool)

(declare-fun isEmpty!23282 (Option!8416) Bool)

(assert (=> d!1083084 (= (isDefined!6609 lt!1291993) (not (isEmpty!23282 lt!1291993)))))

(declare-fun bs!574070 () Bool)

(assert (= bs!574070 d!1083084))

(declare-fun m!4202891 () Bool)

(assert (=> bs!574070 m!4202891))

(assert (=> b!3690012 d!1083084))

(declare-fun b!3690333 () Bool)

(declare-fun e!2285161 () Option!8416)

(assert (=> b!3690333 (= e!2285161 None!8415)))

(declare-fun b!3690334 () Bool)

(declare-fun e!2285162 () Bool)

(declare-fun e!2285160 () Bool)

(assert (=> b!3690334 (= e!2285162 e!2285160)))

(declare-fun res!1500035 () Bool)

(assert (=> b!3690334 (=> (not res!1500035) (not e!2285160))))

(declare-fun lt!1292113 () Option!8416)

(assert (=> b!3690334 (= res!1500035 (contains!7801 rules!3568 (get!12962 lt!1292113)))))

(declare-fun b!3690335 () Bool)

(declare-fun e!2285163 () Option!8416)

(assert (=> b!3690335 (= e!2285163 (Some!8415 (h!44488 rules!3568)))))

(declare-fun b!3690336 () Bool)

(assert (=> b!3690336 (= e!2285163 e!2285161)))

(declare-fun c!638254 () Bool)

(assert (=> b!3690336 (= c!638254 (and ((_ is Cons!39068) rules!3568) (not (= (tag!6718 (h!44488 rules!3568)) (tag!6718 (rule!8750 lt!1291988))))))))

(declare-fun b!3690337 () Bool)

(declare-fun lt!1292111 () Unit!57114)

(declare-fun lt!1292112 () Unit!57114)

(assert (=> b!3690337 (= lt!1292111 lt!1292112)))

(assert (=> b!3690337 (rulesInvariant!4888 thiss!25197 (t!301317 rules!3568))))

(declare-fun lemmaInvariantOnRulesThenOnTail!639 (LexerInterface!5491 Rule!11604 List!39192) Unit!57114)

(assert (=> b!3690337 (= lt!1292112 (lemmaInvariantOnRulesThenOnTail!639 thiss!25197 (h!44488 rules!3568) (t!301317 rules!3568)))))

(assert (=> b!3690337 (= e!2285161 (getRuleFromTag!1484 thiss!25197 (t!301317 rules!3568) (tag!6718 (rule!8750 lt!1291988))))))

(declare-fun b!3690338 () Bool)

(assert (=> b!3690338 (= e!2285160 (= (tag!6718 (get!12962 lt!1292113)) (tag!6718 (rule!8750 lt!1291988))))))

(declare-fun d!1083086 () Bool)

(assert (=> d!1083086 e!2285162))

(declare-fun res!1500034 () Bool)

(assert (=> d!1083086 (=> res!1500034 e!2285162)))

(assert (=> d!1083086 (= res!1500034 (isEmpty!23282 lt!1292113))))

(assert (=> d!1083086 (= lt!1292113 e!2285163)))

(declare-fun c!638253 () Bool)

(assert (=> d!1083086 (= c!638253 (and ((_ is Cons!39068) rules!3568) (= (tag!6718 (h!44488 rules!3568)) (tag!6718 (rule!8750 lt!1291988)))))))

(assert (=> d!1083086 (rulesInvariant!4888 thiss!25197 rules!3568)))

(assert (=> d!1083086 (= (getRuleFromTag!1484 thiss!25197 rules!3568 (tag!6718 (rule!8750 lt!1291988))) lt!1292113)))

(assert (= (and d!1083086 c!638253) b!3690335))

(assert (= (and d!1083086 (not c!638253)) b!3690336))

(assert (= (and b!3690336 c!638254) b!3690337))

(assert (= (and b!3690336 (not c!638254)) b!3690333))

(assert (= (and d!1083086 (not res!1500034)) b!3690334))

(assert (= (and b!3690334 res!1500035) b!3690338))

(declare-fun m!4202893 () Bool)

(assert (=> b!3690334 m!4202893))

(assert (=> b!3690334 m!4202893))

(declare-fun m!4202895 () Bool)

(assert (=> b!3690334 m!4202895))

(declare-fun m!4202897 () Bool)

(assert (=> b!3690337 m!4202897))

(declare-fun m!4202899 () Bool)

(assert (=> b!3690337 m!4202899))

(declare-fun m!4202901 () Bool)

(assert (=> b!3690337 m!4202901))

(assert (=> b!3690338 m!4202893))

(declare-fun m!4202903 () Bool)

(assert (=> d!1083086 m!4202903))

(assert (=> d!1083086 m!4202515))

(assert (=> b!3690012 d!1083086))

(declare-fun d!1083088 () Bool)

(declare-fun lt!1292116 () BalanceConc!23602)

(assert (=> d!1083088 (= (list!14602 lt!1292116) (originalCharacters!6616 lt!1291988))))

(declare-fun dynLambda!17114 (Int TokenValue!6132) BalanceConc!23602)

(assert (=> d!1083088 (= lt!1292116 (dynLambda!17114 (toChars!8081 (transformation!5902 (rule!8750 lt!1291988))) (value!188667 lt!1291988)))))

(assert (=> d!1083088 (= (charsOf!3913 lt!1291988) lt!1292116)))

(declare-fun b_lambda!109505 () Bool)

(assert (=> (not b_lambda!109505) (not d!1083088)))

(declare-fun t!301322 () Bool)

(declare-fun tb!213847 () Bool)

(assert (=> (and b!3690009 (= (toChars!8081 (transformation!5902 (h!44488 rules!3568))) (toChars!8081 (transformation!5902 (rule!8750 lt!1291988)))) t!301322) tb!213847))

(declare-fun b!3690343 () Bool)

(declare-fun e!2285166 () Bool)

(declare-fun tp!1121352 () Bool)

(declare-fun inv!52537 (Conc!11994) Bool)

(assert (=> b!3690343 (= e!2285166 (and (inv!52537 (c!638200 (dynLambda!17114 (toChars!8081 (transformation!5902 (rule!8750 lt!1291988))) (value!188667 lt!1291988)))) tp!1121352))))

(declare-fun result!260342 () Bool)

(declare-fun inv!52538 (BalanceConc!23602) Bool)

(assert (=> tb!213847 (= result!260342 (and (inv!52538 (dynLambda!17114 (toChars!8081 (transformation!5902 (rule!8750 lt!1291988))) (value!188667 lt!1291988))) e!2285166))))

(assert (= tb!213847 b!3690343))

(declare-fun m!4202905 () Bool)

(assert (=> b!3690343 m!4202905))

(declare-fun m!4202907 () Bool)

(assert (=> tb!213847 m!4202907))

(assert (=> d!1083088 t!301322))

(declare-fun b_and!275677 () Bool)

(assert (= b_and!275673 (and (=> t!301322 result!260342) b_and!275677)))

(declare-fun m!4202909 () Bool)

(assert (=> d!1083088 m!4202909))

(declare-fun m!4202911 () Bool)

(assert (=> d!1083088 m!4202911))

(assert (=> b!3690012 d!1083088))

(declare-fun e!2285168 () Bool)

(declare-fun lt!1292117 () List!39191)

(declare-fun b!3690347 () Bool)

(assert (=> b!3690347 (= e!2285168 (or (not (= suffix!1448 Nil!39067)) (= lt!1292117 input!3129)))))

(declare-fun b!3690346 () Bool)

(declare-fun res!1500036 () Bool)

(assert (=> b!3690346 (=> (not res!1500036) (not e!2285168))))

(assert (=> b!3690346 (= res!1500036 (= (size!29855 lt!1292117) (+ (size!29855 input!3129) (size!29855 suffix!1448))))))

(declare-fun b!3690345 () Bool)

(declare-fun e!2285167 () List!39191)

(assert (=> b!3690345 (= e!2285167 (Cons!39067 (h!44487 input!3129) (++!9733 (t!301316 input!3129) suffix!1448)))))

(declare-fun b!3690344 () Bool)

(assert (=> b!3690344 (= e!2285167 suffix!1448)))

(declare-fun d!1083090 () Bool)

(assert (=> d!1083090 e!2285168))

(declare-fun res!1500037 () Bool)

(assert (=> d!1083090 (=> (not res!1500037) (not e!2285168))))

(assert (=> d!1083090 (= res!1500037 (= (content!5665 lt!1292117) ((_ map or) (content!5665 input!3129) (content!5665 suffix!1448))))))

(assert (=> d!1083090 (= lt!1292117 e!2285167)))

(declare-fun c!638255 () Bool)

(assert (=> d!1083090 (= c!638255 ((_ is Nil!39067) input!3129))))

(assert (=> d!1083090 (= (++!9733 input!3129 suffix!1448) lt!1292117)))

(assert (= (and d!1083090 c!638255) b!3690344))

(assert (= (and d!1083090 (not c!638255)) b!3690345))

(assert (= (and d!1083090 res!1500037) b!3690346))

(assert (= (and b!3690346 res!1500036) b!3690347))

(declare-fun m!4202913 () Bool)

(assert (=> b!3690346 m!4202913))

(assert (=> b!3690346 m!4202819))

(declare-fun m!4202915 () Bool)

(assert (=> b!3690346 m!4202915))

(declare-fun m!4202917 () Bool)

(assert (=> b!3690345 m!4202917))

(declare-fun m!4202919 () Bool)

(assert (=> d!1083090 m!4202919))

(declare-fun m!4202921 () Bool)

(assert (=> d!1083090 m!4202921))

(declare-fun m!4202923 () Bool)

(assert (=> d!1083090 m!4202923))

(assert (=> b!3690012 d!1083090))

(declare-fun d!1083092 () Bool)

(declare-fun e!2285171 () Bool)

(assert (=> d!1083092 e!2285171))

(declare-fun res!1500038 () Bool)

(assert (=> d!1083092 (=> res!1500038 e!2285171)))

(declare-fun lt!1292118 () Bool)

(assert (=> d!1083092 (= res!1500038 (not lt!1292118))))

(declare-fun e!2285169 () Bool)

(assert (=> d!1083092 (= lt!1292118 e!2285169)))

(declare-fun res!1500040 () Bool)

(assert (=> d!1083092 (=> res!1500040 e!2285169)))

(assert (=> d!1083092 (= res!1500040 ((_ is Nil!39067) lt!1291996))))

(assert (=> d!1083092 (= (isPrefix!3255 lt!1291996 lt!1291992) lt!1292118)))

(declare-fun b!3690350 () Bool)

(declare-fun e!2285170 () Bool)

(assert (=> b!3690350 (= e!2285170 (isPrefix!3255 (tail!5715 lt!1291996) (tail!5715 lt!1291992)))))

(declare-fun b!3690348 () Bool)

(assert (=> b!3690348 (= e!2285169 e!2285170)))

(declare-fun res!1500041 () Bool)

(assert (=> b!3690348 (=> (not res!1500041) (not e!2285170))))

(assert (=> b!3690348 (= res!1500041 (not ((_ is Nil!39067) lt!1291992)))))

(declare-fun b!3690349 () Bool)

(declare-fun res!1500039 () Bool)

(assert (=> b!3690349 (=> (not res!1500039) (not e!2285170))))

(assert (=> b!3690349 (= res!1500039 (= (head!7974 lt!1291996) (head!7974 lt!1291992)))))

(declare-fun b!3690351 () Bool)

(assert (=> b!3690351 (= e!2285171 (>= (size!29855 lt!1291992) (size!29855 lt!1291996)))))

(assert (= (and d!1083092 (not res!1500040)) b!3690348))

(assert (= (and b!3690348 res!1500041) b!3690349))

(assert (= (and b!3690349 res!1500039) b!3690350))

(assert (= (and d!1083092 (not res!1500038)) b!3690351))

(assert (=> b!3690350 m!4202609))

(declare-fun m!4202925 () Bool)

(assert (=> b!3690350 m!4202925))

(assert (=> b!3690350 m!4202609))

(assert (=> b!3690350 m!4202925))

(declare-fun m!4202927 () Bool)

(assert (=> b!3690350 m!4202927))

(assert (=> b!3690349 m!4202607))

(declare-fun m!4202929 () Bool)

(assert (=> b!3690349 m!4202929))

(declare-fun m!4202931 () Bool)

(assert (=> b!3690351 m!4202931))

(assert (=> b!3690351 m!4202627))

(assert (=> b!3690012 d!1083092))

(declare-fun d!1083094 () Bool)

(declare-fun list!14607 (Conc!11994) List!39191)

(assert (=> d!1083094 (= (list!14602 (charsOf!3913 lt!1291988)) (list!14607 (c!638200 (charsOf!3913 lt!1291988))))))

(declare-fun bs!574071 () Bool)

(assert (= bs!574071 d!1083094))

(declare-fun m!4202933 () Bool)

(assert (=> bs!574071 m!4202933))

(assert (=> b!3690012 d!1083094))

(declare-fun d!1083096 () Bool)

(assert (=> d!1083096 (= (get!12961 (maxPrefix!3019 thiss!25197 rules!3568 input!3129)) (v!38368 (maxPrefix!3019 thiss!25197 rules!3568 input!3129)))))

(assert (=> b!3690012 d!1083096))

(declare-fun d!1083098 () Bool)

(assert (=> d!1083098 (= (isEmpty!23275 rules!3568) ((_ is Nil!39068) rules!3568))))

(assert (=> b!3690014 d!1083098))

(declare-fun d!1083100 () Bool)

(declare-fun res!1500046 () Bool)

(declare-fun e!2285174 () Bool)

(assert (=> d!1083100 (=> (not res!1500046) (not e!2285174))))

(assert (=> d!1083100 (= res!1500046 (validRegex!4881 (regex!5902 (rule!8750 lt!1291988))))))

(assert (=> d!1083100 (= (ruleValid!2136 thiss!25197 (rule!8750 lt!1291988)) e!2285174)))

(declare-fun b!3690356 () Bool)

(declare-fun res!1500047 () Bool)

(assert (=> b!3690356 (=> (not res!1500047) (not e!2285174))))

(assert (=> b!3690356 (= res!1500047 (not (nullable!3719 (regex!5902 (rule!8750 lt!1291988)))))))

(declare-fun b!3690357 () Bool)

(assert (=> b!3690357 (= e!2285174 (not (= (tag!6718 (rule!8750 lt!1291988)) (String!43995 ""))))))

(assert (= (and d!1083100 res!1500046) b!3690356))

(assert (= (and b!3690356 res!1500047) b!3690357))

(assert (=> d!1083100 m!4202883))

(assert (=> b!3690356 m!4202885))

(assert (=> b!3690008 d!1083100))

(declare-fun d!1083102 () Bool)

(assert (=> d!1083102 (= (isEmpty!23274 (maxPrefixOneRule!2137 thiss!25197 (rule!8750 lt!1291988) lt!1291992)) (not ((_ is Some!8414) (maxPrefixOneRule!2137 thiss!25197 (rule!8750 lt!1291988) lt!1291992))))))

(assert (=> b!3690008 d!1083102))

(declare-fun b!3690425 () Bool)

(declare-fun res!1500074 () Bool)

(declare-fun e!2285215 () Bool)

(assert (=> b!3690425 (=> (not res!1500074) (not e!2285215))))

(declare-fun lt!1292135 () Option!8415)

(assert (=> b!3690425 (= res!1500074 (= (++!9733 (list!14602 (charsOf!3913 (_1!22626 (get!12961 lt!1292135)))) (_2!22626 (get!12961 lt!1292135))) lt!1291992))))

(declare-fun b!3690426 () Bool)

(declare-fun res!1500078 () Bool)

(assert (=> b!3690426 (=> (not res!1500078) (not e!2285215))))

(assert (=> b!3690426 (= res!1500078 (= (value!188667 (_1!22626 (get!12961 lt!1292135))) (apply!9372 (transformation!5902 (rule!8750 (_1!22626 (get!12961 lt!1292135)))) (seqFromList!4451 (originalCharacters!6616 (_1!22626 (get!12961 lt!1292135)))))))))

(declare-fun b!3690427 () Bool)

(declare-fun e!2285214 () Option!8415)

(assert (=> b!3690427 (= e!2285214 None!8414)))

(declare-fun b!3690428 () Bool)

(declare-fun res!1500079 () Bool)

(assert (=> b!3690428 (=> (not res!1500079) (not e!2285215))))

(assert (=> b!3690428 (= res!1500079 (< (size!29855 (_2!22626 (get!12961 lt!1292135))) (size!29855 lt!1291992)))))

(declare-fun b!3690429 () Bool)

(declare-fun res!1500077 () Bool)

(assert (=> b!3690429 (=> (not res!1500077) (not e!2285215))))

(assert (=> b!3690429 (= res!1500077 (= (rule!8750 (_1!22626 (get!12961 lt!1292135))) (rule!8750 lt!1291988)))))

(declare-fun b!3690430 () Bool)

(assert (=> b!3690430 (= e!2285215 (= (size!29852 (_1!22626 (get!12961 lt!1292135))) (size!29855 (originalCharacters!6616 (_1!22626 (get!12961 lt!1292135))))))))

(declare-fun b!3690431 () Bool)

(declare-fun e!2285217 () Bool)

(assert (=> b!3690431 (= e!2285217 e!2285215)))

(declare-fun res!1500076 () Bool)

(assert (=> b!3690431 (=> (not res!1500076) (not e!2285215))))

(assert (=> b!3690431 (= res!1500076 (matchR!5216 (regex!5902 (rule!8750 lt!1291988)) (list!14602 (charsOf!3913 (_1!22626 (get!12961 lt!1292135))))))))

(declare-fun b!3690432 () Bool)

(declare-fun e!2285216 () Bool)

(declare-datatypes ((tuple2!38992 0))(
  ( (tuple2!38993 (_1!22630 List!39191) (_2!22630 List!39191)) )
))
(declare-fun findLongestMatchInner!1103 (Regex!10661 List!39191 Int List!39191 List!39191 Int) tuple2!38992)

(assert (=> b!3690432 (= e!2285216 (matchR!5216 (regex!5902 (rule!8750 lt!1291988)) (_1!22630 (findLongestMatchInner!1103 (regex!5902 (rule!8750 lt!1291988)) Nil!39067 (size!29855 Nil!39067) lt!1291992 lt!1291992 (size!29855 lt!1291992)))))))

(declare-fun d!1083104 () Bool)

(assert (=> d!1083104 e!2285217))

(declare-fun res!1500075 () Bool)

(assert (=> d!1083104 (=> res!1500075 e!2285217)))

(assert (=> d!1083104 (= res!1500075 (isEmpty!23274 lt!1292135))))

(assert (=> d!1083104 (= lt!1292135 e!2285214)))

(declare-fun c!638261 () Bool)

(declare-fun lt!1292136 () tuple2!38992)

(assert (=> d!1083104 (= c!638261 (isEmpty!23279 (_1!22630 lt!1292136)))))

(declare-fun findLongestMatch!1018 (Regex!10661 List!39191) tuple2!38992)

(assert (=> d!1083104 (= lt!1292136 (findLongestMatch!1018 (regex!5902 (rule!8750 lt!1291988)) lt!1291992))))

(assert (=> d!1083104 (ruleValid!2136 thiss!25197 (rule!8750 lt!1291988))))

(assert (=> d!1083104 (= (maxPrefixOneRule!2137 thiss!25197 (rule!8750 lt!1291988) lt!1291992) lt!1292135)))

(declare-fun b!3690433 () Bool)

(declare-fun size!29857 (BalanceConc!23602) Int)

(assert (=> b!3690433 (= e!2285214 (Some!8414 (tuple2!38985 (Token!11171 (apply!9372 (transformation!5902 (rule!8750 lt!1291988)) (seqFromList!4451 (_1!22630 lt!1292136))) (rule!8750 lt!1291988) (size!29857 (seqFromList!4451 (_1!22630 lt!1292136))) (_1!22630 lt!1292136)) (_2!22630 lt!1292136))))))

(declare-fun lt!1292134 () Unit!57114)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1076 (Regex!10661 List!39191) Unit!57114)

(assert (=> b!3690433 (= lt!1292134 (longestMatchIsAcceptedByMatchOrIsEmpty!1076 (regex!5902 (rule!8750 lt!1291988)) lt!1291992))))

(declare-fun res!1500080 () Bool)

(assert (=> b!3690433 (= res!1500080 (isEmpty!23279 (_1!22630 (findLongestMatchInner!1103 (regex!5902 (rule!8750 lt!1291988)) Nil!39067 (size!29855 Nil!39067) lt!1291992 lt!1291992 (size!29855 lt!1291992)))))))

(assert (=> b!3690433 (=> res!1500080 e!2285216)))

(assert (=> b!3690433 e!2285216))

(declare-fun lt!1292133 () Unit!57114)

(assert (=> b!3690433 (= lt!1292133 lt!1292134)))

(declare-fun lt!1292132 () Unit!57114)

(declare-fun lemmaSemiInverse!1609 (TokenValueInjection!11692 BalanceConc!23602) Unit!57114)

(assert (=> b!3690433 (= lt!1292132 (lemmaSemiInverse!1609 (transformation!5902 (rule!8750 lt!1291988)) (seqFromList!4451 (_1!22630 lt!1292136))))))

(assert (= (and d!1083104 c!638261) b!3690427))

(assert (= (and d!1083104 (not c!638261)) b!3690433))

(assert (= (and b!3690433 (not res!1500080)) b!3690432))

(assert (= (and d!1083104 (not res!1500075)) b!3690431))

(assert (= (and b!3690431 res!1500076) b!3690425))

(assert (= (and b!3690425 res!1500074) b!3690428))

(assert (= (and b!3690428 res!1500079) b!3690429))

(assert (= (and b!3690429 res!1500077) b!3690426))

(assert (= (and b!3690426 res!1500078) b!3690430))

(declare-fun m!4202963 () Bool)

(assert (=> b!3690426 m!4202963))

(declare-fun m!4202965 () Bool)

(assert (=> b!3690426 m!4202965))

(assert (=> b!3690426 m!4202965))

(declare-fun m!4202967 () Bool)

(assert (=> b!3690426 m!4202967))

(assert (=> b!3690431 m!4202963))

(declare-fun m!4202969 () Bool)

(assert (=> b!3690431 m!4202969))

(assert (=> b!3690431 m!4202969))

(declare-fun m!4202971 () Bool)

(assert (=> b!3690431 m!4202971))

(assert (=> b!3690431 m!4202971))

(declare-fun m!4202973 () Bool)

(assert (=> b!3690431 m!4202973))

(assert (=> b!3690429 m!4202963))

(declare-fun m!4202975 () Bool)

(assert (=> d!1083104 m!4202975))

(declare-fun m!4202977 () Bool)

(assert (=> d!1083104 m!4202977))

(declare-fun m!4202979 () Bool)

(assert (=> d!1083104 m!4202979))

(assert (=> d!1083104 m!4202555))

(assert (=> b!3690428 m!4202963))

(declare-fun m!4202981 () Bool)

(assert (=> b!3690428 m!4202981))

(assert (=> b!3690428 m!4202931))

(assert (=> b!3690425 m!4202963))

(assert (=> b!3690425 m!4202969))

(assert (=> b!3690425 m!4202969))

(assert (=> b!3690425 m!4202971))

(assert (=> b!3690425 m!4202971))

(declare-fun m!4202983 () Bool)

(assert (=> b!3690425 m!4202983))

(declare-fun m!4202985 () Bool)

(assert (=> b!3690432 m!4202985))

(assert (=> b!3690432 m!4202931))

(assert (=> b!3690432 m!4202985))

(assert (=> b!3690432 m!4202931))

(declare-fun m!4202987 () Bool)

(assert (=> b!3690432 m!4202987))

(declare-fun m!4202989 () Bool)

(assert (=> b!3690432 m!4202989))

(assert (=> b!3690433 m!4202931))

(declare-fun m!4202991 () Bool)

(assert (=> b!3690433 m!4202991))

(declare-fun m!4202993 () Bool)

(assert (=> b!3690433 m!4202993))

(declare-fun m!4202995 () Bool)

(assert (=> b!3690433 m!4202995))

(declare-fun m!4202997 () Bool)

(assert (=> b!3690433 m!4202997))

(assert (=> b!3690433 m!4202985))

(assert (=> b!3690433 m!4202931))

(assert (=> b!3690433 m!4202987))

(assert (=> b!3690433 m!4202995))

(assert (=> b!3690433 m!4202985))

(assert (=> b!3690433 m!4202995))

(declare-fun m!4202999 () Bool)

(assert (=> b!3690433 m!4202999))

(assert (=> b!3690433 m!4202995))

(declare-fun m!4203001 () Bool)

(assert (=> b!3690433 m!4203001))

(assert (=> b!3690430 m!4202963))

(declare-fun m!4203003 () Bool)

(assert (=> b!3690430 m!4203003))

(assert (=> b!3690008 d!1083104))

(declare-fun d!1083110 () Bool)

(assert (=> d!1083110 (isEmpty!23274 (maxPrefixOneRule!2137 thiss!25197 (rule!8750 lt!1291988) lt!1291992))))

(declare-fun lt!1292139 () Unit!57114)

(declare-fun choose!22096 (LexerInterface!5491 Rule!11604 List!39192 List!39191) Unit!57114)

(assert (=> d!1083110 (= lt!1292139 (choose!22096 thiss!25197 (rule!8750 lt!1291988) rules!3568 lt!1291992))))

(assert (=> d!1083110 (not (isEmpty!23275 rules!3568))))

(assert (=> d!1083110 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!592 thiss!25197 (rule!8750 lt!1291988) rules!3568 lt!1291992) lt!1292139)))

(declare-fun bs!574073 () Bool)

(assert (= bs!574073 d!1083110))

(assert (=> bs!574073 m!4202557))

(assert (=> bs!574073 m!4202557))

(assert (=> bs!574073 m!4202559))

(declare-fun m!4203005 () Bool)

(assert (=> bs!574073 m!4203005))

(assert (=> bs!574073 m!4202521))

(assert (=> b!3690008 d!1083110))

(declare-fun d!1083112 () Bool)

(declare-fun lt!1292142 () Bool)

(declare-fun isEmpty!23283 (List!39193) Bool)

(assert (=> d!1083112 (= lt!1292142 (isEmpty!23283 (list!14603 (_1!22627 lt!1291991))))))

(declare-fun isEmpty!23284 (Conc!11995) Bool)

(assert (=> d!1083112 (= lt!1292142 (isEmpty!23284 (c!638201 (_1!22627 lt!1291991))))))

(assert (=> d!1083112 (= (isEmpty!23276 (_1!22627 lt!1291991)) lt!1292142)))

(declare-fun bs!574074 () Bool)

(assert (= bs!574074 d!1083112))

(assert (=> bs!574074 m!4202523))

(assert (=> bs!574074 m!4202523))

(declare-fun m!4203007 () Bool)

(assert (=> bs!574074 m!4203007))

(declare-fun m!4203009 () Bool)

(assert (=> bs!574074 m!4203009))

(assert (=> b!3690015 d!1083112))

(declare-fun e!2285225 () Bool)

(declare-fun b!3690444 () Bool)

(declare-fun lt!1292145 () tuple2!38986)

(declare-datatypes ((tuple2!38994 0))(
  ( (tuple2!38995 (_1!22631 List!39193) (_2!22631 List!39191)) )
))
(declare-fun lexList!1540 (LexerInterface!5491 List!39192 List!39191) tuple2!38994)

(assert (=> b!3690444 (= e!2285225 (= (list!14602 (_2!22627 lt!1292145)) (_2!22631 (lexList!1540 thiss!25197 rules!3568 (list!14602 (seqFromList!4451 input!3129))))))))

(declare-fun b!3690445 () Bool)

(declare-fun e!2285226 () Bool)

(assert (=> b!3690445 (= e!2285226 (not (isEmpty!23276 (_1!22627 lt!1292145))))))

(declare-fun b!3690446 () Bool)

(declare-fun res!1500087 () Bool)

(assert (=> b!3690446 (=> (not res!1500087) (not e!2285225))))

(assert (=> b!3690446 (= res!1500087 (= (list!14603 (_1!22627 lt!1292145)) (_1!22631 (lexList!1540 thiss!25197 rules!3568 (list!14602 (seqFromList!4451 input!3129))))))))

(declare-fun d!1083114 () Bool)

(assert (=> d!1083114 e!2285225))

(declare-fun res!1500088 () Bool)

(assert (=> d!1083114 (=> (not res!1500088) (not e!2285225))))

(declare-fun e!2285224 () Bool)

(assert (=> d!1083114 (= res!1500088 e!2285224)))

(declare-fun c!638264 () Bool)

(declare-fun size!29858 (BalanceConc!23604) Int)

(assert (=> d!1083114 (= c!638264 (> (size!29858 (_1!22627 lt!1292145)) 0))))

(declare-fun lexTailRecV2!1146 (LexerInterface!5491 List!39192 BalanceConc!23602 BalanceConc!23602 BalanceConc!23602 BalanceConc!23604) tuple2!38986)

(assert (=> d!1083114 (= lt!1292145 (lexTailRecV2!1146 thiss!25197 rules!3568 (seqFromList!4451 input!3129) (BalanceConc!23603 Empty!11994) (seqFromList!4451 input!3129) (BalanceConc!23605 Empty!11995)))))

(assert (=> d!1083114 (= (lex!2632 thiss!25197 rules!3568 (seqFromList!4451 input!3129)) lt!1292145)))

(declare-fun b!3690447 () Bool)

(assert (=> b!3690447 (= e!2285224 e!2285226)))

(declare-fun res!1500089 () Bool)

(assert (=> b!3690447 (= res!1500089 (< (size!29857 (_2!22627 lt!1292145)) (size!29857 (seqFromList!4451 input!3129))))))

(assert (=> b!3690447 (=> (not res!1500089) (not e!2285226))))

(declare-fun b!3690448 () Bool)

(assert (=> b!3690448 (= e!2285224 (= (_2!22627 lt!1292145) (seqFromList!4451 input!3129)))))

(assert (= (and d!1083114 c!638264) b!3690447))

(assert (= (and d!1083114 (not c!638264)) b!3690448))

(assert (= (and b!3690447 res!1500089) b!3690445))

(assert (= (and d!1083114 res!1500088) b!3690446))

(assert (= (and b!3690446 res!1500087) b!3690444))

(declare-fun m!4203011 () Bool)

(assert (=> d!1083114 m!4203011))

(assert (=> d!1083114 m!4202565))

(assert (=> d!1083114 m!4202565))

(declare-fun m!4203013 () Bool)

(assert (=> d!1083114 m!4203013))

(declare-fun m!4203015 () Bool)

(assert (=> b!3690444 m!4203015))

(assert (=> b!3690444 m!4202565))

(declare-fun m!4203017 () Bool)

(assert (=> b!3690444 m!4203017))

(assert (=> b!3690444 m!4203017))

(declare-fun m!4203019 () Bool)

(assert (=> b!3690444 m!4203019))

(declare-fun m!4203021 () Bool)

(assert (=> b!3690447 m!4203021))

(assert (=> b!3690447 m!4202565))

(declare-fun m!4203023 () Bool)

(assert (=> b!3690447 m!4203023))

(declare-fun m!4203025 () Bool)

(assert (=> b!3690445 m!4203025))

(declare-fun m!4203027 () Bool)

(assert (=> b!3690446 m!4203027))

(assert (=> b!3690446 m!4202565))

(assert (=> b!3690446 m!4203017))

(assert (=> b!3690446 m!4203017))

(assert (=> b!3690446 m!4203019))

(assert (=> b!3690015 d!1083114))

(declare-fun d!1083116 () Bool)

(declare-fun fromListB!2056 (List!39191) BalanceConc!23602)

(assert (=> d!1083116 (= (seqFromList!4451 input!3129) (fromListB!2056 input!3129))))

(declare-fun bs!574075 () Bool)

(assert (= bs!574075 d!1083116))

(declare-fun m!4203029 () Bool)

(assert (=> bs!574075 m!4203029))

(assert (=> b!3690015 d!1083116))

(declare-fun d!1083118 () Bool)

(assert (=> d!1083118 (= (isEmpty!23274 (maxPrefix!3019 thiss!25197 rules!3568 lt!1291992)) (not ((_ is Some!8414) (maxPrefix!3019 thiss!25197 rules!3568 lt!1291992))))))

(assert (=> b!3690017 d!1083118))

(declare-fun b!3690449 () Bool)

(declare-fun res!1500096 () Bool)

(declare-fun e!2285227 () Bool)

(assert (=> b!3690449 (=> (not res!1500096) (not e!2285227))))

(declare-fun lt!1292149 () Option!8415)

(assert (=> b!3690449 (= res!1500096 (< (size!29855 (_2!22626 (get!12961 lt!1292149))) (size!29855 lt!1291992)))))

(declare-fun b!3690450 () Bool)

(declare-fun e!2285228 () Option!8415)

(declare-fun lt!1292148 () Option!8415)

(declare-fun lt!1292146 () Option!8415)

(assert (=> b!3690450 (= e!2285228 (ite (and ((_ is None!8414) lt!1292148) ((_ is None!8414) lt!1292146)) None!8414 (ite ((_ is None!8414) lt!1292146) lt!1292148 (ite ((_ is None!8414) lt!1292148) lt!1292146 (ite (>= (size!29852 (_1!22626 (v!38368 lt!1292148))) (size!29852 (_1!22626 (v!38368 lt!1292146)))) lt!1292148 lt!1292146)))))))

(declare-fun call!266932 () Option!8415)

(assert (=> b!3690450 (= lt!1292148 call!266932)))

(assert (=> b!3690450 (= lt!1292146 (maxPrefix!3019 thiss!25197 (t!301317 rules!3568) lt!1291992))))

(declare-fun bm!266927 () Bool)

(assert (=> bm!266927 (= call!266932 (maxPrefixOneRule!2137 thiss!25197 (h!44488 rules!3568) lt!1291992))))

(declare-fun b!3690451 () Bool)

(declare-fun res!1500093 () Bool)

(assert (=> b!3690451 (=> (not res!1500093) (not e!2285227))))

(assert (=> b!3690451 (= res!1500093 (matchR!5216 (regex!5902 (rule!8750 (_1!22626 (get!12961 lt!1292149)))) (list!14602 (charsOf!3913 (_1!22626 (get!12961 lt!1292149))))))))

(declare-fun b!3690452 () Bool)

(declare-fun res!1500090 () Bool)

(assert (=> b!3690452 (=> (not res!1500090) (not e!2285227))))

(assert (=> b!3690452 (= res!1500090 (= (++!9733 (list!14602 (charsOf!3913 (_1!22626 (get!12961 lt!1292149)))) (_2!22626 (get!12961 lt!1292149))) lt!1291992))))

(declare-fun b!3690453 () Bool)

(assert (=> b!3690453 (= e!2285228 call!266932)))

(declare-fun b!3690454 () Bool)

(declare-fun res!1500091 () Bool)

(assert (=> b!3690454 (=> (not res!1500091) (not e!2285227))))

(assert (=> b!3690454 (= res!1500091 (= (list!14602 (charsOf!3913 (_1!22626 (get!12961 lt!1292149)))) (originalCharacters!6616 (_1!22626 (get!12961 lt!1292149)))))))

(declare-fun d!1083120 () Bool)

(declare-fun e!2285229 () Bool)

(assert (=> d!1083120 e!2285229))

(declare-fun res!1500092 () Bool)

(assert (=> d!1083120 (=> res!1500092 e!2285229)))

(assert (=> d!1083120 (= res!1500092 (isEmpty!23274 lt!1292149))))

(assert (=> d!1083120 (= lt!1292149 e!2285228)))

(declare-fun c!638265 () Bool)

(assert (=> d!1083120 (= c!638265 (and ((_ is Cons!39068) rules!3568) ((_ is Nil!39068) (t!301317 rules!3568))))))

(declare-fun lt!1292150 () Unit!57114)

(declare-fun lt!1292147 () Unit!57114)

(assert (=> d!1083120 (= lt!1292150 lt!1292147)))

(assert (=> d!1083120 (isPrefix!3255 lt!1291992 lt!1291992)))

(assert (=> d!1083120 (= lt!1292147 (lemmaIsPrefixRefl!2040 lt!1291992 lt!1291992))))

(assert (=> d!1083120 (rulesValidInductive!2114 thiss!25197 rules!3568)))

(assert (=> d!1083120 (= (maxPrefix!3019 thiss!25197 rules!3568 lt!1291992) lt!1292149)))

(declare-fun b!3690455 () Bool)

(assert (=> b!3690455 (= e!2285229 e!2285227)))

(declare-fun res!1500094 () Bool)

(assert (=> b!3690455 (=> (not res!1500094) (not e!2285227))))

(assert (=> b!3690455 (= res!1500094 (isDefined!6611 lt!1292149))))

(declare-fun b!3690456 () Bool)

(assert (=> b!3690456 (= e!2285227 (contains!7801 rules!3568 (rule!8750 (_1!22626 (get!12961 lt!1292149)))))))

(declare-fun b!3690457 () Bool)

(declare-fun res!1500095 () Bool)

(assert (=> b!3690457 (=> (not res!1500095) (not e!2285227))))

(assert (=> b!3690457 (= res!1500095 (= (value!188667 (_1!22626 (get!12961 lt!1292149))) (apply!9372 (transformation!5902 (rule!8750 (_1!22626 (get!12961 lt!1292149)))) (seqFromList!4451 (originalCharacters!6616 (_1!22626 (get!12961 lt!1292149)))))))))

(assert (= (and d!1083120 c!638265) b!3690453))

(assert (= (and d!1083120 (not c!638265)) b!3690450))

(assert (= (or b!3690453 b!3690450) bm!266927))

(assert (= (and d!1083120 (not res!1500092)) b!3690455))

(assert (= (and b!3690455 res!1500094) b!3690454))

(assert (= (and b!3690454 res!1500091) b!3690449))

(assert (= (and b!3690449 res!1500096) b!3690452))

(assert (= (and b!3690452 res!1500090) b!3690457))

(assert (= (and b!3690457 res!1500095) b!3690451))

(assert (= (and b!3690451 res!1500093) b!3690456))

(declare-fun m!4203031 () Bool)

(assert (=> b!3690450 m!4203031))

(declare-fun m!4203033 () Bool)

(assert (=> b!3690456 m!4203033))

(declare-fun m!4203035 () Bool)

(assert (=> b!3690456 m!4203035))

(assert (=> b!3690457 m!4203033))

(declare-fun m!4203037 () Bool)

(assert (=> b!3690457 m!4203037))

(assert (=> b!3690457 m!4203037))

(declare-fun m!4203039 () Bool)

(assert (=> b!3690457 m!4203039))

(assert (=> b!3690452 m!4203033))

(declare-fun m!4203041 () Bool)

(assert (=> b!3690452 m!4203041))

(assert (=> b!3690452 m!4203041))

(declare-fun m!4203043 () Bool)

(assert (=> b!3690452 m!4203043))

(assert (=> b!3690452 m!4203043))

(declare-fun m!4203045 () Bool)

(assert (=> b!3690452 m!4203045))

(assert (=> b!3690449 m!4203033))

(declare-fun m!4203047 () Bool)

(assert (=> b!3690449 m!4203047))

(assert (=> b!3690449 m!4202931))

(declare-fun m!4203049 () Bool)

(assert (=> d!1083120 m!4203049))

(declare-fun m!4203051 () Bool)

(assert (=> d!1083120 m!4203051))

(declare-fun m!4203053 () Bool)

(assert (=> d!1083120 m!4203053))

(assert (=> d!1083120 m!4202827))

(declare-fun m!4203055 () Bool)

(assert (=> bm!266927 m!4203055))

(assert (=> b!3690454 m!4203033))

(assert (=> b!3690454 m!4203041))

(assert (=> b!3690454 m!4203041))

(assert (=> b!3690454 m!4203043))

(declare-fun m!4203057 () Bool)

(assert (=> b!3690455 m!4203057))

(assert (=> b!3690451 m!4203033))

(assert (=> b!3690451 m!4203041))

(assert (=> b!3690451 m!4203041))

(assert (=> b!3690451 m!4203043))

(assert (=> b!3690451 m!4203043))

(declare-fun m!4203059 () Bool)

(assert (=> b!3690451 m!4203059))

(assert (=> b!3690017 d!1083120))

(declare-fun d!1083122 () Bool)

(assert (=> d!1083122 (= (inv!52532 (tag!6718 (h!44488 rules!3568))) (= (mod (str.len (value!188666 (tag!6718 (h!44488 rules!3568)))) 2) 0))))

(assert (=> b!3690006 d!1083122))

(declare-fun d!1083124 () Bool)

(declare-fun res!1500099 () Bool)

(declare-fun e!2285232 () Bool)

(assert (=> d!1083124 (=> (not res!1500099) (not e!2285232))))

(declare-fun semiInverseModEq!2521 (Int Int) Bool)

(assert (=> d!1083124 (= res!1500099 (semiInverseModEq!2521 (toChars!8081 (transformation!5902 (h!44488 rules!3568))) (toValue!8222 (transformation!5902 (h!44488 rules!3568)))))))

(assert (=> d!1083124 (= (inv!52534 (transformation!5902 (h!44488 rules!3568))) e!2285232)))

(declare-fun b!3690460 () Bool)

(declare-fun equivClasses!2420 (Int Int) Bool)

(assert (=> b!3690460 (= e!2285232 (equivClasses!2420 (toChars!8081 (transformation!5902 (h!44488 rules!3568))) (toValue!8222 (transformation!5902 (h!44488 rules!3568)))))))

(assert (= (and d!1083124 res!1500099) b!3690460))

(declare-fun m!4203061 () Bool)

(assert (=> d!1083124 m!4203061))

(declare-fun m!4203063 () Bool)

(assert (=> b!3690460 m!4203063))

(assert (=> b!3690006 d!1083124))

(declare-fun d!1083126 () Bool)

(declare-fun res!1500102 () Bool)

(declare-fun e!2285235 () Bool)

(assert (=> d!1083126 (=> (not res!1500102) (not e!2285235))))

(declare-fun rulesValid!2278 (LexerInterface!5491 List!39192) Bool)

(assert (=> d!1083126 (= res!1500102 (rulesValid!2278 thiss!25197 rules!3568))))

(assert (=> d!1083126 (= (rulesInvariant!4888 thiss!25197 rules!3568) e!2285235)))

(declare-fun b!3690463 () Bool)

(declare-datatypes ((List!39195 0))(
  ( (Nil!39071) (Cons!39071 (h!44491 String!43994) (t!301328 List!39195)) )
))
(declare-fun noDuplicateTag!2274 (LexerInterface!5491 List!39192 List!39195) Bool)

(assert (=> b!3690463 (= e!2285235 (noDuplicateTag!2274 thiss!25197 rules!3568 Nil!39071))))

(assert (= (and d!1083126 res!1500102) b!3690463))

(declare-fun m!4203065 () Bool)

(assert (=> d!1083126 m!4203065))

(declare-fun m!4203067 () Bool)

(assert (=> b!3690463 m!4203067))

(assert (=> b!3690011 d!1083126))

(declare-fun b!3690474 () Bool)

(declare-fun b_free!97925 () Bool)

(declare-fun b_next!98629 () Bool)

(assert (=> b!3690474 (= b_free!97925 (not b_next!98629))))

(declare-fun tp!1121392 () Bool)

(declare-fun b_and!275683 () Bool)

(assert (=> b!3690474 (= tp!1121392 b_and!275683)))

(declare-fun b_free!97927 () Bool)

(declare-fun b_next!98631 () Bool)

(assert (=> b!3690474 (= b_free!97927 (not b_next!98631))))

(declare-fun t!301326 () Bool)

(declare-fun tb!213851 () Bool)

(assert (=> (and b!3690474 (= (toChars!8081 (transformation!5902 (h!44488 (t!301317 rules!3568)))) (toChars!8081 (transformation!5902 (rule!8750 lt!1291988)))) t!301326) tb!213851))

(declare-fun result!260356 () Bool)

(assert (= result!260356 result!260342))

(assert (=> d!1083088 t!301326))

(declare-fun tp!1121393 () Bool)

(declare-fun b_and!275685 () Bool)

(assert (=> b!3690474 (= tp!1121393 (and (=> t!301326 result!260356) b_and!275685))))

(declare-fun e!2285246 () Bool)

(assert (=> b!3690474 (= e!2285246 (and tp!1121392 tp!1121393))))

(declare-fun b!3690473 () Bool)

(declare-fun e!2285247 () Bool)

(declare-fun tp!1121395 () Bool)

(assert (=> b!3690473 (= e!2285247 (and tp!1121395 (inv!52532 (tag!6718 (h!44488 (t!301317 rules!3568)))) (inv!52534 (transformation!5902 (h!44488 (t!301317 rules!3568)))) e!2285246))))

(declare-fun b!3690472 () Bool)

(declare-fun e!2285244 () Bool)

(declare-fun tp!1121394 () Bool)

(assert (=> b!3690472 (= e!2285244 (and e!2285247 tp!1121394))))

(assert (=> b!3690013 (= tp!1121343 e!2285244)))

(assert (= b!3690473 b!3690474))

(assert (= b!3690472 b!3690473))

(assert (= (and b!3690013 ((_ is Cons!39068) (t!301317 rules!3568))) b!3690472))

(declare-fun m!4203069 () Bool)

(assert (=> b!3690473 m!4203069))

(declare-fun m!4203071 () Bool)

(assert (=> b!3690473 m!4203071))

(declare-fun b!3690479 () Bool)

(declare-fun e!2285250 () Bool)

(declare-fun tp!1121398 () Bool)

(assert (=> b!3690479 (= e!2285250 (and tp_is_empty!18405 tp!1121398))))

(assert (=> b!3690010 (= tp!1121341 e!2285250)))

(assert (= (and b!3690010 ((_ is Cons!39067) (t!301316 input!3129))) b!3690479))

(declare-fun b!3690491 () Bool)

(declare-fun e!2285253 () Bool)

(declare-fun tp!1121409 () Bool)

(declare-fun tp!1121412 () Bool)

(assert (=> b!3690491 (= e!2285253 (and tp!1121409 tp!1121412))))

(assert (=> b!3690006 (= tp!1121344 e!2285253)))

(declare-fun b!3690492 () Bool)

(declare-fun tp!1121410 () Bool)

(assert (=> b!3690492 (= e!2285253 tp!1121410)))

(declare-fun b!3690493 () Bool)

(declare-fun tp!1121413 () Bool)

(declare-fun tp!1121411 () Bool)

(assert (=> b!3690493 (= e!2285253 (and tp!1121413 tp!1121411))))

(declare-fun b!3690490 () Bool)

(assert (=> b!3690490 (= e!2285253 tp_is_empty!18405)))

(assert (= (and b!3690006 ((_ is ElementMatch!10661) (regex!5902 (h!44488 rules!3568)))) b!3690490))

(assert (= (and b!3690006 ((_ is Concat!16794) (regex!5902 (h!44488 rules!3568)))) b!3690491))

(assert (= (and b!3690006 ((_ is Star!10661) (regex!5902 (h!44488 rules!3568)))) b!3690492))

(assert (= (and b!3690006 ((_ is Union!10661) (regex!5902 (h!44488 rules!3568)))) b!3690493))

(declare-fun b!3690494 () Bool)

(declare-fun e!2285254 () Bool)

(declare-fun tp!1121414 () Bool)

(assert (=> b!3690494 (= e!2285254 (and tp_is_empty!18405 tp!1121414))))

(assert (=> b!3690016 (= tp!1121346 e!2285254)))

(assert (= (and b!3690016 ((_ is Cons!39067) (t!301316 suffix!1448))) b!3690494))

(check-sat (not b!3690432) (not b!3690451) (not d!1083126) (not d!1083110) (not b!3690460) (not b!3690345) tp_is_empty!18405 (not b!3690445) (not tb!213847) (not b!3690116) b_and!275677 (not b!3690492) (not b!3690456) (not b!3690350) (not b!3690280) (not b!3690494) (not d!1083008) (not b!3690285) (not d!1083100) (not b!3690283) (not d!1083046) (not b!3690425) (not d!1083024) (not d!1083088) (not b!3690320) (not bm!266926) (not b!3690351) (not b!3690148) (not b!3690455) (not b!3690310) (not b!3690452) (not b_next!98623) (not d!1083086) (not b!3690450) (not b!3690187) (not b!3690311) (not b!3690346) (not b!3690120) (not b!3690428) (not b!3690356) (not bm!266924) (not d!1083090) (not d!1083050) (not b!3690306) b_and!275683 (not d!1083116) (not b!3690449) (not b!3690491) (not b!3690444) (not d!1083124) (not b!3690430) (not b!3690334) (not b!3690337) (not b!3690287) (not b!3690338) (not d!1083112) (not b!3690472) (not b_lambda!109505) (not b_next!98631) (not b!3690111) (not b!3690349) (not b!3690343) (not b!3690286) (not b!3690479) (not b!3690305) (not d!1083104) (not b!3690281) (not b!3690149) (not b!3690109) (not b_next!98629) (not b!3690429) (not b!3690309) (not b!3690110) (not b!3690108) (not b!3690457) (not b!3690188) (not d!1083030) (not d!1083084) (not b!3690447) (not bm!266917) (not d!1083068) (not b_next!98621) (not b!3690433) (not d!1083094) (not d!1083082) (not d!1083032) (not b!3690308) (not b!3690431) (not b!3690463) (not b!3690454) (not b!3690473) (not b!3690282) b_and!275671 (not b!3690446) (not b!3690288) (not bm!266927) (not b!3690493) (not d!1083114) (not d!1083120) (not b!3690150) (not b!3690316) b_and!275685 (not b!3690426))
(check-sat b_and!275677 (not b_next!98623) b_and!275683 (not b_next!98631) (not b_next!98629) (not b_next!98621) b_and!275671 b_and!275685)
