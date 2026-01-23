; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218968 () Bool)

(assert start!218968)

(declare-fun b!2245431 () Bool)

(declare-fun b_free!65453 () Bool)

(declare-fun b_next!66157 () Bool)

(assert (=> b!2245431 (= b_free!65453 (not b_next!66157))))

(declare-fun tp!708796 () Bool)

(declare-fun b_and!175593 () Bool)

(assert (=> b!2245431 (= tp!708796 b_and!175593)))

(declare-fun b_free!65455 () Bool)

(declare-fun b_next!66159 () Bool)

(assert (=> b!2245431 (= b_free!65455 (not b_next!66159))))

(declare-fun tp!708787 () Bool)

(declare-fun b_and!175595 () Bool)

(assert (=> b!2245431 (= tp!708787 b_and!175595)))

(declare-fun b!2245428 () Bool)

(declare-fun b_free!65457 () Bool)

(declare-fun b_next!66161 () Bool)

(assert (=> b!2245428 (= b_free!65457 (not b_next!66161))))

(declare-fun tp!708793 () Bool)

(declare-fun b_and!175597 () Bool)

(assert (=> b!2245428 (= tp!708793 b_and!175597)))

(declare-fun b_free!65459 () Bool)

(declare-fun b_next!66163 () Bool)

(assert (=> b!2245428 (= b_free!65459 (not b_next!66163))))

(declare-fun tp!708782 () Bool)

(declare-fun b_and!175599 () Bool)

(assert (=> b!2245428 (= tp!708782 b_and!175599)))

(declare-fun b!2245439 () Bool)

(declare-fun b_free!65461 () Bool)

(declare-fun b_next!66165 () Bool)

(assert (=> b!2245439 (= b_free!65461 (not b_next!66165))))

(declare-fun tp!708780 () Bool)

(declare-fun b_and!175601 () Bool)

(assert (=> b!2245439 (= tp!708780 b_and!175601)))

(declare-fun b_free!65463 () Bool)

(declare-fun b_next!66167 () Bool)

(assert (=> b!2245439 (= b_free!65463 (not b_next!66167))))

(declare-fun tp!708790 () Bool)

(declare-fun b_and!175603 () Bool)

(assert (=> b!2245439 (= tp!708790 b_and!175603)))

(declare-fun b!2245430 () Bool)

(declare-fun b_free!65465 () Bool)

(declare-fun b_next!66169 () Bool)

(assert (=> b!2245430 (= b_free!65465 (not b_next!66169))))

(declare-fun tp!708794 () Bool)

(declare-fun b_and!175605 () Bool)

(assert (=> b!2245430 (= tp!708794 b_and!175605)))

(declare-fun b_free!65467 () Bool)

(declare-fun b_next!66171 () Bool)

(assert (=> b!2245430 (= b_free!65467 (not b_next!66171))))

(declare-fun tp!708781 () Bool)

(declare-fun b_and!175607 () Bool)

(assert (=> b!2245430 (= tp!708781 b_and!175607)))

(declare-fun b!2245427 () Bool)

(declare-fun e!1436485 () Bool)

(declare-fun tp_is_empty!10323 () Bool)

(declare-fun tp!708797 () Bool)

(assert (=> b!2245427 (= e!1436485 (and tp_is_empty!10323 tp!708797))))

(declare-fun e!1436503 () Bool)

(assert (=> b!2245428 (= e!1436503 (and tp!708793 tp!708782))))

(declare-fun res!959385 () Bool)

(declare-fun e!1436491 () Bool)

(assert (=> start!218968 (=> (not res!959385) (not e!1436491))))

(declare-datatypes ((LexerInterface!3800 0))(
  ( (LexerInterfaceExt!3797 (__x!17790 Int)) (Lexer!3798) )
))
(declare-fun thiss!16613 () LexerInterface!3800)

(get-info :version)

(assert (=> start!218968 (= res!959385 ((_ is Lexer!3798) thiss!16613))))

(assert (=> start!218968 e!1436491))

(assert (=> start!218968 true))

(declare-fun e!1436507 () Bool)

(assert (=> start!218968 e!1436507))

(declare-fun e!1436497 () Bool)

(assert (=> start!218968 e!1436497))

(declare-fun e!1436483 () Bool)

(assert (=> start!218968 e!1436483))

(assert (=> start!218968 e!1436485))

(declare-fun e!1436501 () Bool)

(assert (=> start!218968 e!1436501))

(declare-fun e!1436504 () Bool)

(assert (=> start!218968 e!1436504))

(declare-fun e!1436482 () Bool)

(assert (=> start!218968 e!1436482))

(declare-fun tp!708783 () Bool)

(declare-fun e!1436495 () Bool)

(declare-datatypes ((List!26653 0))(
  ( (Nil!26559) (Cons!26559 (h!31960 (_ BitVec 16)) (t!200351 List!26653)) )
))
(declare-datatypes ((TokenValue!4365 0))(
  ( (FloatLiteralValue!8730 (text!31000 List!26653)) (TokenValueExt!4364 (__x!17791 Int)) (Broken!21825 (value!133579 List!26653)) (Object!4458) (End!4365) (Def!4365) (Underscore!4365) (Match!4365) (Else!4365) (Error!4365) (Case!4365) (If!4365) (Extends!4365) (Abstract!4365) (Class!4365) (Val!4365) (DelimiterValue!8730 (del!4425 List!26653)) (KeywordValue!4371 (value!133580 List!26653)) (CommentValue!8730 (value!133581 List!26653)) (WhitespaceValue!8730 (value!133582 List!26653)) (IndentationValue!4365 (value!133583 List!26653)) (String!28928) (Int32!4365) (Broken!21826 (value!133584 List!26653)) (Boolean!4366) (Unit!39525) (OperatorValue!4368 (op!4425 List!26653)) (IdentifierValue!8730 (value!133585 List!26653)) (IdentifierValue!8731 (value!133586 List!26653)) (WhitespaceValue!8731 (value!133587 List!26653)) (True!8730) (False!8730) (Broken!21827 (value!133588 List!26653)) (Broken!21828 (value!133589 List!26653)) (True!8731) (RightBrace!4365) (RightBracket!4365) (Colon!4365) (Null!4365) (Comma!4365) (LeftBracket!4365) (False!8731) (LeftBrace!4365) (ImaginaryLiteralValue!4365 (text!31001 List!26653)) (StringLiteralValue!13095 (value!133590 List!26653)) (EOFValue!4365 (value!133591 List!26653)) (IdentValue!4365 (value!133592 List!26653)) (DelimiterValue!8731 (value!133593 List!26653)) (DedentValue!4365 (value!133594 List!26653)) (NewLineValue!4365 (value!133595 List!26653)) (IntegerValue!13095 (value!133596 (_ BitVec 32)) (text!31002 List!26653)) (IntegerValue!13096 (value!133597 Int) (text!31003 List!26653)) (Times!4365) (Or!4365) (Equal!4365) (Minus!4365) (Broken!21829 (value!133598 List!26653)) (And!4365) (Div!4365) (LessEqual!4365) (Mod!4365) (Concat!10916) (Not!4365) (Plus!4365) (SpaceValue!4365 (value!133599 List!26653)) (IntegerValue!13097 (value!133600 Int) (text!31004 List!26653)) (StringLiteralValue!13096 (text!31005 List!26653)) (FloatLiteralValue!8731 (text!31006 List!26653)) (BytesLiteralValue!4365 (value!133601 List!26653)) (CommentValue!8731 (value!133602 List!26653)) (StringLiteralValue!13097 (value!133603 List!26653)) (ErrorTokenValue!4365 (msg!4426 List!26653)) )
))
(declare-datatypes ((C!13248 0))(
  ( (C!13249 (val!7672 Int)) )
))
(declare-datatypes ((List!26654 0))(
  ( (Nil!26560) (Cons!26560 (h!31961 C!13248) (t!200352 List!26654)) )
))
(declare-datatypes ((IArray!17113 0))(
  ( (IArray!17114 (innerList!8614 List!26654)) )
))
(declare-datatypes ((Conc!8554 0))(
  ( (Node!8554 (left!20188 Conc!8554) (right!20518 Conc!8554) (csize!17338 Int) (cheight!8765 Int)) (Leaf!12641 (xs!11496 IArray!17113) (csize!17339 Int)) (Empty!8554) )
))
(declare-datatypes ((BalanceConc!16836 0))(
  ( (BalanceConc!16837 (c!357318 Conc!8554)) )
))
(declare-datatypes ((String!28929 0))(
  ( (String!28930 (value!133604 String)) )
))
(declare-datatypes ((Regex!6551 0))(
  ( (ElementMatch!6551 (c!357319 C!13248)) (Concat!10917 (regOne!13614 Regex!6551) (regTwo!13614 Regex!6551)) (EmptyExpr!6551) (Star!6551 (reg!6880 Regex!6551)) (EmptyLang!6551) (Union!6551 (regOne!13615 Regex!6551) (regTwo!13615 Regex!6551)) )
))
(declare-datatypes ((TokenValueInjection!8270 0))(
  ( (TokenValueInjection!8271 (toValue!5933 Int) (toChars!5792 Int)) )
))
(declare-datatypes ((Rule!8206 0))(
  ( (Rule!8207 (regex!4203 Regex!6551) (tag!4693 String!28929) (isSeparator!4203 Bool) (transformation!4203 TokenValueInjection!8270)) )
))
(declare-datatypes ((List!26655 0))(
  ( (Nil!26561) (Cons!26561 (h!31962 Rule!8206) (t!200353 List!26655)) )
))
(declare-fun rules!1750 () List!26655)

(declare-fun b!2245429 () Bool)

(declare-fun inv!36086 (String!28929) Bool)

(declare-fun inv!36089 (TokenValueInjection!8270) Bool)

(assert (=> b!2245429 (= e!1436495 (and tp!708783 (inv!36086 (tag!4693 (h!31962 rules!1750))) (inv!36089 (transformation!4203 (h!31962 rules!1750))) e!1436503))))

(declare-fun e!1436486 () Bool)

(assert (=> b!2245430 (= e!1436486 (and tp!708794 tp!708781))))

(declare-fun e!1436505 () Bool)

(assert (=> b!2245431 (= e!1436505 (and tp!708796 tp!708787))))

(declare-fun b!2245432 () Bool)

(declare-fun tp!708785 () Bool)

(assert (=> b!2245432 (= e!1436501 (and e!1436495 tp!708785))))

(declare-fun tp!708786 () Bool)

(declare-fun e!1436498 () Bool)

(declare-fun b!2245433 () Bool)

(declare-datatypes ((Token!7884 0))(
  ( (Token!7885 (value!133605 TokenValue!4365) (rule!6501 Rule!8206) (size!20767 Int) (originalCharacters!4973 List!26654)) )
))
(declare-datatypes ((List!26656 0))(
  ( (Nil!26562) (Cons!26562 (h!31963 Token!7884) (t!200354 List!26656)) )
))
(declare-fun tokens!456 () List!26656)

(declare-fun inv!36090 (Token!7884) Bool)

(assert (=> b!2245433 (= e!1436482 (and (inv!36090 (h!31963 tokens!456)) e!1436498 tp!708786))))

(declare-fun b!2245434 () Bool)

(declare-fun e!1436488 () Bool)

(declare-fun e!1436502 () Bool)

(assert (=> b!2245434 (= e!1436488 (not e!1436502))))

(declare-fun res!959379 () Bool)

(assert (=> b!2245434 (=> res!959379 e!1436502)))

(declare-fun e!1436499 () Bool)

(assert (=> b!2245434 (= res!959379 e!1436499)))

(declare-fun res!959377 () Bool)

(assert (=> b!2245434 (=> (not res!959377) (not e!1436499))))

(declare-fun lt!835273 () Bool)

(assert (=> b!2245434 (= res!959377 (not lt!835273))))

(declare-fun r!2363 () Rule!8206)

(declare-fun ruleValid!1295 (LexerInterface!3800 Rule!8206) Bool)

(assert (=> b!2245434 (ruleValid!1295 thiss!16613 r!2363)))

(declare-datatypes ((Unit!39526 0))(
  ( (Unit!39527) )
))
(declare-fun lt!835272 () Unit!39526)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!702 (LexerInterface!3800 Rule!8206 List!26655) Unit!39526)

(assert (=> b!2245434 (= lt!835272 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!702 thiss!16613 r!2363 rules!1750))))

(declare-fun e!1436506 () Bool)

(declare-fun tp!708788 () Bool)

(declare-fun b!2245435 () Bool)

(assert (=> b!2245435 (= e!1436504 (and tp!708788 (inv!36086 (tag!4693 r!2363)) (inv!36089 (transformation!4203 r!2363)) e!1436506))))

(declare-fun b!2245436 () Bool)

(declare-fun e!1436493 () Bool)

(declare-fun head!4762 (List!26656) Token!7884)

(assert (=> b!2245436 (= e!1436493 (= (rule!6501 (head!4762 tokens!456)) r!2363))))

(declare-fun tp!708784 () Bool)

(declare-fun otherR!12 () Rule!8206)

(declare-fun b!2245437 () Bool)

(assert (=> b!2245437 (= e!1436497 (and tp!708784 (inv!36086 (tag!4693 otherR!12)) (inv!36089 (transformation!4203 otherR!12)) e!1436486))))

(declare-fun e!1436496 () Bool)

(declare-fun tp!708789 () Bool)

(declare-fun b!2245438 () Bool)

(declare-fun inv!21 (TokenValue!4365) Bool)

(assert (=> b!2245438 (= e!1436498 (and (inv!21 (value!133605 (h!31963 tokens!456))) e!1436496 tp!708789))))

(assert (=> b!2245439 (= e!1436506 (and tp!708780 tp!708790))))

(declare-fun b!2245440 () Bool)

(declare-fun tp!708795 () Bool)

(assert (=> b!2245440 (= e!1436483 (and tp_is_empty!10323 tp!708795))))

(declare-fun b!2245441 () Bool)

(declare-fun res!959380 () Bool)

(assert (=> b!2245441 (=> (not res!959380) (not e!1436491))))

(declare-fun isEmpty!14955 (List!26655) Bool)

(assert (=> b!2245441 (= res!959380 (not (isEmpty!14955 rules!1750)))))

(declare-fun b!2245442 () Bool)

(declare-fun e!1436489 () Bool)

(assert (=> b!2245442 (= e!1436489 e!1436488)))

(declare-fun res!959383 () Bool)

(assert (=> b!2245442 (=> (not res!959383) (not e!1436488))))

(declare-fun e!1436484 () Bool)

(assert (=> b!2245442 (= res!959383 e!1436484)))

(declare-fun res!959382 () Bool)

(assert (=> b!2245442 (=> res!959382 e!1436484)))

(assert (=> b!2245442 (= res!959382 lt!835273)))

(declare-fun isEmpty!14956 (List!26656) Bool)

(assert (=> b!2245442 (= lt!835273 (isEmpty!14956 tokens!456))))

(declare-fun b!2245443 () Bool)

(declare-fun res!959378 () Bool)

(assert (=> b!2245443 (=> (not res!959378) (not e!1436491))))

(declare-fun contains!4550 (List!26655 Rule!8206) Bool)

(assert (=> b!2245443 (= res!959378 (contains!4550 rules!1750 r!2363))))

(declare-fun b!2245444 () Bool)

(declare-fun matchR!2812 (Regex!6551 List!26654) Bool)

(declare-fun list!10162 (BalanceConc!16836) List!26654)

(declare-fun charsOf!2591 (Token!7884) BalanceConc!16836)

(assert (=> b!2245444 (= e!1436499 (not (matchR!2812 (regex!4203 r!2363) (list!10162 (charsOf!2591 (head!4762 tokens!456))))))))

(declare-fun b!2245445 () Bool)

(declare-fun res!959381 () Bool)

(assert (=> b!2245445 (=> (not res!959381) (not e!1436488))))

(declare-fun otherP!12 () List!26654)

(declare-fun input!1722 () List!26654)

(declare-fun isPrefix!2193 (List!26654 List!26654) Bool)

(assert (=> b!2245445 (= res!959381 (isPrefix!2193 otherP!12 input!1722))))

(declare-fun b!2245446 () Bool)

(declare-fun res!959376 () Bool)

(assert (=> b!2245446 (=> (not res!959376) (not e!1436491))))

(declare-fun rulesInvariant!3302 (LexerInterface!3800 List!26655) Bool)

(assert (=> b!2245446 (= res!959376 (rulesInvariant!3302 thiss!16613 rules!1750))))

(declare-fun b!2245447 () Bool)

(declare-fun tp!708792 () Bool)

(assert (=> b!2245447 (= e!1436496 (and tp!708792 (inv!36086 (tag!4693 (rule!6501 (h!31963 tokens!456)))) (inv!36089 (transformation!4203 (rule!6501 (h!31963 tokens!456)))) e!1436505))))

(declare-fun b!2245448 () Bool)

(declare-fun res!959374 () Bool)

(assert (=> b!2245448 (=> (not res!959374) (not e!1436491))))

(assert (=> b!2245448 (= res!959374 (contains!4550 rules!1750 otherR!12))))

(declare-fun b!2245449 () Bool)

(declare-fun size!20768 (BalanceConc!16836) Int)

(declare-fun size!20769 (List!26654) Int)

(assert (=> b!2245449 (= e!1436484 (<= (size!20768 (charsOf!2591 (head!4762 tokens!456))) (size!20769 otherP!12)))))

(declare-fun b!2245450 () Bool)

(assert (=> b!2245450 (= e!1436502 true)))

(assert (=> b!2245450 (ruleValid!1295 thiss!16613 otherR!12)))

(declare-fun lt!835271 () Unit!39526)

(assert (=> b!2245450 (= lt!835271 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!702 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2245451 () Bool)

(declare-fun res!959384 () Bool)

(assert (=> b!2245451 (=> (not res!959384) (not e!1436488))))

(assert (=> b!2245451 (= res!959384 (not (= r!2363 otherR!12)))))

(declare-fun b!2245452 () Bool)

(declare-fun res!959372 () Bool)

(assert (=> b!2245452 (=> (not res!959372) (not e!1436488))))

(assert (=> b!2245452 (= res!959372 e!1436493)))

(declare-fun res!959373 () Bool)

(assert (=> b!2245452 (=> res!959373 e!1436493)))

(assert (=> b!2245452 (= res!959373 lt!835273)))

(declare-fun b!2245453 () Bool)

(declare-fun tp!708791 () Bool)

(assert (=> b!2245453 (= e!1436507 (and tp_is_empty!10323 tp!708791))))

(declare-fun b!2245454 () Bool)

(assert (=> b!2245454 (= e!1436491 e!1436489)))

(declare-fun res!959375 () Bool)

(assert (=> b!2245454 (=> (not res!959375) (not e!1436489))))

(declare-datatypes ((IArray!17115 0))(
  ( (IArray!17116 (innerList!8615 List!26656)) )
))
(declare-datatypes ((Conc!8555 0))(
  ( (Node!8555 (left!20189 Conc!8555) (right!20519 Conc!8555) (csize!17340 Int) (cheight!8766 Int)) (Leaf!12642 (xs!11497 IArray!17115) (csize!17341 Int)) (Empty!8555) )
))
(declare-datatypes ((BalanceConc!16838 0))(
  ( (BalanceConc!16839 (c!357320 Conc!8555)) )
))
(declare-datatypes ((tuple2!26016 0))(
  ( (tuple2!26017 (_1!15518 BalanceConc!16838) (_2!15518 BalanceConc!16836)) )
))
(declare-fun lt!835274 () tuple2!26016)

(declare-fun suffix!886 () List!26654)

(declare-datatypes ((tuple2!26018 0))(
  ( (tuple2!26019 (_1!15519 List!26656) (_2!15519 List!26654)) )
))
(declare-fun list!10163 (BalanceConc!16838) List!26656)

(assert (=> b!2245454 (= res!959375 (= (tuple2!26019 (list!10163 (_1!15518 lt!835274)) (list!10162 (_2!15518 lt!835274))) (tuple2!26019 tokens!456 suffix!886)))))

(declare-fun lex!1639 (LexerInterface!3800 List!26655 BalanceConc!16836) tuple2!26016)

(declare-fun seqFromList!2907 (List!26654) BalanceConc!16836)

(assert (=> b!2245454 (= lt!835274 (lex!1639 thiss!16613 rules!1750 (seqFromList!2907 input!1722)))))

(assert (= (and start!218968 res!959385) b!2245441))

(assert (= (and b!2245441 res!959380) b!2245446))

(assert (= (and b!2245446 res!959376) b!2245443))

(assert (= (and b!2245443 res!959378) b!2245448))

(assert (= (and b!2245448 res!959374) b!2245454))

(assert (= (and b!2245454 res!959375) b!2245442))

(assert (= (and b!2245442 (not res!959382)) b!2245449))

(assert (= (and b!2245442 res!959383) b!2245452))

(assert (= (and b!2245452 (not res!959373)) b!2245436))

(assert (= (and b!2245452 res!959372) b!2245445))

(assert (= (and b!2245445 res!959381) b!2245451))

(assert (= (and b!2245451 res!959384) b!2245434))

(assert (= (and b!2245434 res!959377) b!2245444))

(assert (= (and b!2245434 (not res!959379)) b!2245450))

(assert (= (and start!218968 ((_ is Cons!26560) input!1722)) b!2245453))

(assert (= b!2245437 b!2245430))

(assert (= start!218968 b!2245437))

(assert (= (and start!218968 ((_ is Cons!26560) suffix!886)) b!2245440))

(assert (= (and start!218968 ((_ is Cons!26560) otherP!12)) b!2245427))

(assert (= b!2245429 b!2245428))

(assert (= b!2245432 b!2245429))

(assert (= (and start!218968 ((_ is Cons!26561) rules!1750)) b!2245432))

(assert (= b!2245435 b!2245439))

(assert (= start!218968 b!2245435))

(assert (= b!2245447 b!2245431))

(assert (= b!2245438 b!2245447))

(assert (= b!2245433 b!2245438))

(assert (= (and start!218968 ((_ is Cons!26562) tokens!456)) b!2245433))

(declare-fun m!2677075 () Bool)

(assert (=> b!2245446 m!2677075))

(declare-fun m!2677077 () Bool)

(assert (=> b!2245443 m!2677077))

(declare-fun m!2677079 () Bool)

(assert (=> b!2245433 m!2677079))

(declare-fun m!2677081 () Bool)

(assert (=> b!2245442 m!2677081))

(declare-fun m!2677083 () Bool)

(assert (=> b!2245448 m!2677083))

(declare-fun m!2677085 () Bool)

(assert (=> b!2245450 m!2677085))

(declare-fun m!2677087 () Bool)

(assert (=> b!2245450 m!2677087))

(declare-fun m!2677089 () Bool)

(assert (=> b!2245447 m!2677089))

(declare-fun m!2677091 () Bool)

(assert (=> b!2245447 m!2677091))

(declare-fun m!2677093 () Bool)

(assert (=> b!2245444 m!2677093))

(assert (=> b!2245444 m!2677093))

(declare-fun m!2677095 () Bool)

(assert (=> b!2245444 m!2677095))

(assert (=> b!2245444 m!2677095))

(declare-fun m!2677097 () Bool)

(assert (=> b!2245444 m!2677097))

(assert (=> b!2245444 m!2677097))

(declare-fun m!2677099 () Bool)

(assert (=> b!2245444 m!2677099))

(declare-fun m!2677101 () Bool)

(assert (=> b!2245441 m!2677101))

(declare-fun m!2677103 () Bool)

(assert (=> b!2245454 m!2677103))

(declare-fun m!2677105 () Bool)

(assert (=> b!2245454 m!2677105))

(declare-fun m!2677107 () Bool)

(assert (=> b!2245454 m!2677107))

(assert (=> b!2245454 m!2677107))

(declare-fun m!2677109 () Bool)

(assert (=> b!2245454 m!2677109))

(declare-fun m!2677111 () Bool)

(assert (=> b!2245437 m!2677111))

(declare-fun m!2677113 () Bool)

(assert (=> b!2245437 m!2677113))

(declare-fun m!2677115 () Bool)

(assert (=> b!2245438 m!2677115))

(declare-fun m!2677117 () Bool)

(assert (=> b!2245429 m!2677117))

(declare-fun m!2677119 () Bool)

(assert (=> b!2245429 m!2677119))

(assert (=> b!2245436 m!2677093))

(declare-fun m!2677121 () Bool)

(assert (=> b!2245445 m!2677121))

(declare-fun m!2677123 () Bool)

(assert (=> b!2245434 m!2677123))

(declare-fun m!2677125 () Bool)

(assert (=> b!2245434 m!2677125))

(declare-fun m!2677127 () Bool)

(assert (=> b!2245435 m!2677127))

(declare-fun m!2677129 () Bool)

(assert (=> b!2245435 m!2677129))

(assert (=> b!2245449 m!2677093))

(assert (=> b!2245449 m!2677093))

(assert (=> b!2245449 m!2677095))

(assert (=> b!2245449 m!2677095))

(declare-fun m!2677131 () Bool)

(assert (=> b!2245449 m!2677131))

(declare-fun m!2677133 () Bool)

(assert (=> b!2245449 m!2677133))

(check-sat (not b!2245436) tp_is_empty!10323 (not b!2245450) b_and!175601 (not b!2245438) (not b!2245441) (not b!2245435) (not b!2245448) (not b_next!66161) (not b!2245445) (not b!2245443) (not b!2245440) (not b!2245446) (not b_next!66167) (not b_next!66163) (not b!2245454) (not b!2245427) b_and!175605 (not b!2245437) b_and!175595 (not b_next!66169) (not b!2245442) (not b!2245434) (not b!2245432) b_and!175597 b_and!175593 b_and!175603 (not b!2245449) (not b!2245453) b_and!175607 (not b!2245429) b_and!175599 (not b!2245444) (not b_next!66159) (not b!2245433) (not b_next!66157) (not b_next!66165) (not b_next!66171) (not b!2245447))
(check-sat (not b_next!66167) (not b_next!66163) b_and!175605 b_and!175601 b_and!175603 b_and!175607 (not b_next!66161) (not b_next!66171) b_and!175595 (not b_next!66169) b_and!175597 b_and!175593 b_and!175599 (not b_next!66159) (not b_next!66157) (not b_next!66165))
