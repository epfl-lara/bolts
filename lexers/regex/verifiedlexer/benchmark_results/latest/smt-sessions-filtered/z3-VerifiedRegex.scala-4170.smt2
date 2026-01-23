; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!225180 () Bool)

(assert start!225180)

(declare-fun b!2293359 () Bool)

(declare-fun b_free!68973 () Bool)

(declare-fun b_next!69677 () Bool)

(assert (=> b!2293359 (= b_free!68973 (not b_next!69677))))

(declare-fun tp!727124 () Bool)

(declare-fun b_and!182345 () Bool)

(assert (=> b!2293359 (= tp!727124 b_and!182345)))

(declare-fun b_free!68975 () Bool)

(declare-fun b_next!69679 () Bool)

(assert (=> b!2293359 (= b_free!68975 (not b_next!69679))))

(declare-fun tp!727129 () Bool)

(declare-fun b_and!182347 () Bool)

(assert (=> b!2293359 (= tp!727129 b_and!182347)))

(declare-fun b!2293345 () Bool)

(declare-fun b_free!68977 () Bool)

(declare-fun b_next!69681 () Bool)

(assert (=> b!2293345 (= b_free!68977 (not b_next!69681))))

(declare-fun tp!727135 () Bool)

(declare-fun b_and!182349 () Bool)

(assert (=> b!2293345 (= tp!727135 b_and!182349)))

(declare-fun b_free!68979 () Bool)

(declare-fun b_next!69683 () Bool)

(assert (=> b!2293345 (= b_free!68979 (not b_next!69683))))

(declare-fun tp!727127 () Bool)

(declare-fun b_and!182351 () Bool)

(assert (=> b!2293345 (= tp!727127 b_and!182351)))

(declare-fun b!2293354 () Bool)

(declare-fun b_free!68981 () Bool)

(declare-fun b_next!69685 () Bool)

(assert (=> b!2293354 (= b_free!68981 (not b_next!69685))))

(declare-fun tp!727134 () Bool)

(declare-fun b_and!182353 () Bool)

(assert (=> b!2293354 (= tp!727134 b_and!182353)))

(declare-fun b_free!68983 () Bool)

(declare-fun b_next!69687 () Bool)

(assert (=> b!2293354 (= b_free!68983 (not b_next!69687))))

(declare-fun tp!727130 () Bool)

(declare-fun b_and!182355 () Bool)

(assert (=> b!2293354 (= tp!727130 b_and!182355)))

(declare-fun b!2293349 () Bool)

(declare-fun b_free!68985 () Bool)

(declare-fun b_next!69689 () Bool)

(assert (=> b!2293349 (= b_free!68985 (not b_next!69689))))

(declare-fun tp!727136 () Bool)

(declare-fun b_and!182357 () Bool)

(assert (=> b!2293349 (= tp!727136 b_and!182357)))

(declare-fun b_free!68987 () Bool)

(declare-fun b_next!69691 () Bool)

(assert (=> b!2293349 (= b_free!68987 (not b_next!69691))))

(declare-fun tp!727123 () Bool)

(declare-fun b_and!182359 () Bool)

(assert (=> b!2293349 (= tp!727123 b_and!182359)))

(declare-fun b!2293340 () Bool)

(declare-fun e!1469537 () Bool)

(declare-datatypes ((List!27397 0))(
  ( (Nil!27303) (Cons!27303 (h!32704 (_ BitVec 16)) (t!205079 List!27397)) )
))
(declare-datatypes ((TokenValue!4533 0))(
  ( (FloatLiteralValue!9066 (text!32176 List!27397)) (TokenValueExt!4532 (__x!18126 Int)) (Broken!22665 (value!138367 List!27397)) (Object!4626) (End!4533) (Def!4533) (Underscore!4533) (Match!4533) (Else!4533) (Error!4533) (Case!4533) (If!4533) (Extends!4533) (Abstract!4533) (Class!4533) (Val!4533) (DelimiterValue!9066 (del!4593 List!27397)) (KeywordValue!4539 (value!138368 List!27397)) (CommentValue!9066 (value!138369 List!27397)) (WhitespaceValue!9066 (value!138370 List!27397)) (IndentationValue!4533 (value!138371 List!27397)) (String!29768) (Int32!4533) (Broken!22666 (value!138372 List!27397)) (Boolean!4534) (Unit!40185) (OperatorValue!4536 (op!4593 List!27397)) (IdentifierValue!9066 (value!138373 List!27397)) (IdentifierValue!9067 (value!138374 List!27397)) (WhitespaceValue!9067 (value!138375 List!27397)) (True!9066) (False!9066) (Broken!22667 (value!138376 List!27397)) (Broken!22668 (value!138377 List!27397)) (True!9067) (RightBrace!4533) (RightBracket!4533) (Colon!4533) (Null!4533) (Comma!4533) (LeftBracket!4533) (False!9067) (LeftBrace!4533) (ImaginaryLiteralValue!4533 (text!32177 List!27397)) (StringLiteralValue!13599 (value!138378 List!27397)) (EOFValue!4533 (value!138379 List!27397)) (IdentValue!4533 (value!138380 List!27397)) (DelimiterValue!9067 (value!138381 List!27397)) (DedentValue!4533 (value!138382 List!27397)) (NewLineValue!4533 (value!138383 List!27397)) (IntegerValue!13599 (value!138384 (_ BitVec 32)) (text!32178 List!27397)) (IntegerValue!13600 (value!138385 Int) (text!32179 List!27397)) (Times!4533) (Or!4533) (Equal!4533) (Minus!4533) (Broken!22669 (value!138386 List!27397)) (And!4533) (Div!4533) (LessEqual!4533) (Mod!4533) (Concat!11252) (Not!4533) (Plus!4533) (SpaceValue!4533 (value!138387 List!27397)) (IntegerValue!13601 (value!138388 Int) (text!32180 List!27397)) (StringLiteralValue!13600 (text!32181 List!27397)) (FloatLiteralValue!9067 (text!32182 List!27397)) (BytesLiteralValue!4533 (value!138389 List!27397)) (CommentValue!9067 (value!138390 List!27397)) (StringLiteralValue!13601 (value!138391 List!27397)) (ErrorTokenValue!4533 (msg!4594 List!27397)) )
))
(declare-datatypes ((C!13584 0))(
  ( (C!13585 (val!7840 Int)) )
))
(declare-datatypes ((List!27398 0))(
  ( (Nil!27304) (Cons!27304 (h!32705 C!13584) (t!205080 List!27398)) )
))
(declare-datatypes ((IArray!17785 0))(
  ( (IArray!17786 (innerList!8950 List!27398)) )
))
(declare-datatypes ((Conc!8890 0))(
  ( (Node!8890 (left!20696 Conc!8890) (right!21026 Conc!8890) (csize!18010 Int) (cheight!9101 Int)) (Leaf!13061 (xs!11832 IArray!17785) (csize!18011 Int)) (Empty!8890) )
))
(declare-datatypes ((BalanceConc!17508 0))(
  ( (BalanceConc!17509 (c!363636 Conc!8890)) )
))
(declare-datatypes ((String!29769 0))(
  ( (String!29770 (value!138392 String)) )
))
(declare-datatypes ((Regex!6719 0))(
  ( (ElementMatch!6719 (c!363637 C!13584)) (Concat!11253 (regOne!13950 Regex!6719) (regTwo!13950 Regex!6719)) (EmptyExpr!6719) (Star!6719 (reg!7048 Regex!6719)) (EmptyLang!6719) (Union!6719 (regOne!13951 Regex!6719) (regTwo!13951 Regex!6719)) )
))
(declare-datatypes ((TokenValueInjection!8606 0))(
  ( (TokenValueInjection!8607 (toValue!6165 Int) (toChars!6024 Int)) )
))
(declare-datatypes ((Rule!8542 0))(
  ( (Rule!8543 (regex!4371 Regex!6719) (tag!4861 String!29769) (isSeparator!4371 Bool) (transformation!4371 TokenValueInjection!8606)) )
))
(declare-datatypes ((Token!8220 0))(
  ( (Token!8221 (value!138393 TokenValue!4533) (rule!6709 Rule!8542) (size!21502 Int) (originalCharacters!5141 List!27398)) )
))
(declare-datatypes ((List!27399 0))(
  ( (Nil!27305) (Cons!27305 (h!32706 Token!8220) (t!205081 List!27399)) )
))
(declare-fun tokens!456 () List!27399)

(declare-fun r!2363 () Rule!8542)

(declare-fun head!5002 (List!27399) Token!8220)

(assert (=> b!2293340 (= e!1469537 (= (rule!6709 (head!5002 tokens!456)) r!2363))))

(declare-fun b!2293341 () Bool)

(declare-fun e!1469547 () Bool)

(declare-fun e!1469532 () Bool)

(assert (=> b!2293341 (= e!1469547 (not e!1469532))))

(declare-fun res!980663 () Bool)

(assert (=> b!2293341 (=> res!980663 e!1469532)))

(declare-fun e!1469549 () Bool)

(assert (=> b!2293341 (= res!980663 e!1469549)))

(declare-fun res!980672 () Bool)

(assert (=> b!2293341 (=> (not res!980672) (not e!1469549))))

(declare-fun lt!851014 () Bool)

(assert (=> b!2293341 (= res!980672 (not lt!851014))))

(declare-datatypes ((LexerInterface!3968 0))(
  ( (LexerInterfaceExt!3965 (__x!18127 Int)) (Lexer!3966) )
))
(declare-fun thiss!16613 () LexerInterface!3968)

(declare-fun ruleValid!1461 (LexerInterface!3968 Rule!8542) Bool)

(assert (=> b!2293341 (ruleValid!1461 thiss!16613 r!2363)))

(declare-datatypes ((Unit!40186 0))(
  ( (Unit!40187) )
))
(declare-fun lt!851013 () Unit!40186)

(declare-datatypes ((List!27400 0))(
  ( (Nil!27306) (Cons!27306 (h!32707 Rule!8542) (t!205082 List!27400)) )
))
(declare-fun rules!1750 () List!27400)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!866 (LexerInterface!3968 Rule!8542 List!27400) Unit!40186)

(assert (=> b!2293341 (= lt!851013 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!866 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2293342 () Bool)

(declare-fun e!1469545 () Bool)

(assert (=> b!2293342 (= e!1469545 e!1469547)))

(declare-fun res!980673 () Bool)

(assert (=> b!2293342 (=> (not res!980673) (not e!1469547))))

(declare-fun e!1469548 () Bool)

(assert (=> b!2293342 (= res!980673 e!1469548)))

(declare-fun res!980674 () Bool)

(assert (=> b!2293342 (=> res!980674 e!1469548)))

(assert (=> b!2293342 (= res!980674 lt!851014)))

(declare-fun isEmpty!15555 (List!27399) Bool)

(assert (=> b!2293342 (= lt!851014 (isEmpty!15555 tokens!456))))

(declare-fun b!2293343 () Bool)

(declare-fun e!1469538 () Bool)

(declare-fun tp_is_empty!10659 () Bool)

(declare-fun tp!727132 () Bool)

(assert (=> b!2293343 (= e!1469538 (and tp_is_empty!10659 tp!727132))))

(declare-fun b!2293344 () Bool)

(declare-fun e!1469533 () Bool)

(assert (=> b!2293344 (= e!1469533 e!1469545)))

(declare-fun res!980675 () Bool)

(assert (=> b!2293344 (=> (not res!980675) (not e!1469545))))

(declare-datatypes ((IArray!17787 0))(
  ( (IArray!17788 (innerList!8951 List!27399)) )
))
(declare-datatypes ((Conc!8891 0))(
  ( (Node!8891 (left!20697 Conc!8891) (right!21027 Conc!8891) (csize!18012 Int) (cheight!9102 Int)) (Leaf!13062 (xs!11833 IArray!17787) (csize!18013 Int)) (Empty!8891) )
))
(declare-datatypes ((BalanceConc!17510 0))(
  ( (BalanceConc!17511 (c!363638 Conc!8891)) )
))
(declare-datatypes ((tuple2!27132 0))(
  ( (tuple2!27133 (_1!16076 BalanceConc!17510) (_2!16076 BalanceConc!17508)) )
))
(declare-fun lt!851011 () tuple2!27132)

(declare-fun suffix!886 () List!27398)

(declare-datatypes ((tuple2!27134 0))(
  ( (tuple2!27135 (_1!16077 List!27399) (_2!16077 List!27398)) )
))
(declare-fun list!10704 (BalanceConc!17510) List!27399)

(declare-fun list!10705 (BalanceConc!17508) List!27398)

(assert (=> b!2293344 (= res!980675 (= (tuple2!27135 (list!10704 (_1!16076 lt!851011)) (list!10705 (_2!16076 lt!851011))) (tuple2!27135 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!27398)

(declare-fun lex!1807 (LexerInterface!3968 List!27400 BalanceConc!17508) tuple2!27132)

(declare-fun seqFromList!3075 (List!27398) BalanceConc!17508)

(assert (=> b!2293344 (= lt!851011 (lex!1807 thiss!16613 rules!1750 (seqFromList!3075 input!1722)))))

(declare-fun e!1469544 () Bool)

(assert (=> b!2293345 (= e!1469544 (and tp!727135 tp!727127))))

(declare-fun tp!727138 () Bool)

(declare-fun e!1469540 () Bool)

(declare-fun otherR!12 () Rule!8542)

(declare-fun e!1469530 () Bool)

(declare-fun b!2293346 () Bool)

(declare-fun inv!36906 (String!29769) Bool)

(declare-fun inv!36909 (TokenValueInjection!8606) Bool)

(assert (=> b!2293346 (= e!1469540 (and tp!727138 (inv!36906 (tag!4861 otherR!12)) (inv!36909 (transformation!4371 otherR!12)) e!1469530))))

(declare-fun tp!727133 () Bool)

(declare-fun b!2293347 () Bool)

(declare-fun e!1469535 () Bool)

(declare-fun e!1469542 () Bool)

(declare-fun inv!36910 (Token!8220) Bool)

(assert (=> b!2293347 (= e!1469535 (and (inv!36910 (h!32706 tokens!456)) e!1469542 tp!727133))))

(assert (=> b!2293349 (= e!1469530 (and tp!727136 tp!727123))))

(declare-fun b!2293350 () Bool)

(declare-fun e!1469534 () Bool)

(assert (=> b!2293350 (= e!1469534 true)))

(assert (=> b!2293350 false))

(declare-fun lt!851012 () Unit!40186)

(declare-fun lemmaSameIndexThenSameElement!164 (List!27400 Rule!8542 Rule!8542) Unit!40186)

(assert (=> b!2293350 (= lt!851012 (lemmaSameIndexThenSameElement!164 rules!1750 r!2363 otherR!12))))

(declare-fun b!2293351 () Bool)

(declare-fun res!980662 () Bool)

(assert (=> b!2293351 (=> (not res!980662) (not e!1469533))))

(declare-fun contains!4749 (List!27400 Rule!8542) Bool)

(assert (=> b!2293351 (= res!980662 (contains!4749 rules!1750 r!2363))))

(declare-fun b!2293352 () Bool)

(declare-fun e!1469550 () Bool)

(declare-fun tp!727131 () Bool)

(assert (=> b!2293352 (= e!1469550 (and tp_is_empty!10659 tp!727131))))

(declare-fun b!2293353 () Bool)

(declare-fun e!1469555 () Bool)

(declare-fun tp!727139 () Bool)

(assert (=> b!2293353 (= e!1469555 (and tp_is_empty!10659 tp!727139))))

(declare-fun e!1469551 () Bool)

(assert (=> b!2293354 (= e!1469551 (and tp!727134 tp!727130))))

(declare-fun e!1469552 () Bool)

(declare-fun b!2293355 () Bool)

(declare-fun tp!727122 () Bool)

(assert (=> b!2293355 (= e!1469552 (and tp!727122 (inv!36906 (tag!4861 (rule!6709 (h!32706 tokens!456)))) (inv!36909 (transformation!4371 (rule!6709 (h!32706 tokens!456)))) e!1469544))))

(declare-fun b!2293356 () Bool)

(assert (=> b!2293356 (= e!1469532 e!1469534)))

(declare-fun res!980669 () Bool)

(assert (=> b!2293356 (=> res!980669 e!1469534)))

(declare-fun lt!851010 () Int)

(declare-fun lt!851016 () Int)

(assert (=> b!2293356 (= res!980669 (or (> lt!851010 lt!851016) (not (= lt!851010 lt!851016))))))

(declare-fun getIndex!384 (List!27400 Rule!8542) Int)

(assert (=> b!2293356 (= lt!851016 (getIndex!384 rules!1750 otherR!12))))

(assert (=> b!2293356 (= lt!851010 (getIndex!384 rules!1750 r!2363))))

(assert (=> b!2293356 (ruleValid!1461 thiss!16613 otherR!12)))

(declare-fun lt!851015 () Unit!40186)

(assert (=> b!2293356 (= lt!851015 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!866 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2293357 () Bool)

(declare-fun res!980667 () Bool)

(assert (=> b!2293357 (=> (not res!980667) (not e!1469547))))

(assert (=> b!2293357 (= res!980667 (not (= r!2363 otherR!12)))))

(declare-fun b!2293358 () Bool)

(declare-fun res!980670 () Bool)

(assert (=> b!2293358 (=> (not res!980670) (not e!1469533))))

(assert (=> b!2293358 (= res!980670 (contains!4749 rules!1750 otherR!12))))

(declare-fun e!1469543 () Bool)

(assert (=> b!2293359 (= e!1469543 (and tp!727124 tp!727129))))

(declare-fun b!2293360 () Bool)

(declare-fun matchR!2976 (Regex!6719 List!27398) Bool)

(declare-fun charsOf!2759 (Token!8220) BalanceConc!17508)

(assert (=> b!2293360 (= e!1469549 (not (matchR!2976 (regex!4371 r!2363) (list!10705 (charsOf!2759 (head!5002 tokens!456))))))))

(declare-fun b!2293361 () Bool)

(declare-fun res!980671 () Bool)

(assert (=> b!2293361 (=> (not res!980671) (not e!1469533))))

(declare-fun rulesInvariant!3470 (LexerInterface!3968 List!27400) Bool)

(assert (=> b!2293361 (= res!980671 (rulesInvariant!3470 thiss!16613 rules!1750))))

(declare-fun e!1469529 () Bool)

(declare-fun b!2293362 () Bool)

(declare-fun tp!727128 () Bool)

(assert (=> b!2293362 (= e!1469529 (and tp!727128 (inv!36906 (tag!4861 r!2363)) (inv!36909 (transformation!4371 r!2363)) e!1469551))))

(declare-fun b!2293363 () Bool)

(declare-fun e!1469531 () Bool)

(declare-fun e!1469553 () Bool)

(declare-fun tp!727125 () Bool)

(assert (=> b!2293363 (= e!1469531 (and e!1469553 tp!727125))))

(declare-fun b!2293364 () Bool)

(declare-fun res!980666 () Bool)

(assert (=> b!2293364 (=> (not res!980666) (not e!1469547))))

(assert (=> b!2293364 (= res!980666 e!1469537)))

(declare-fun res!980664 () Bool)

(assert (=> b!2293364 (=> res!980664 e!1469537)))

(assert (=> b!2293364 (= res!980664 lt!851014)))

(declare-fun b!2293365 () Bool)

(declare-fun tp!727137 () Bool)

(declare-fun inv!21 (TokenValue!4533) Bool)

(assert (=> b!2293365 (= e!1469542 (and (inv!21 (value!138393 (h!32706 tokens!456))) e!1469552 tp!727137))))

(declare-fun b!2293366 () Bool)

(declare-fun res!980668 () Bool)

(assert (=> b!2293366 (=> (not res!980668) (not e!1469533))))

(declare-fun isEmpty!15556 (List!27400) Bool)

(assert (=> b!2293366 (= res!980668 (not (isEmpty!15556 rules!1750)))))

(declare-fun tp!727126 () Bool)

(declare-fun b!2293367 () Bool)

(assert (=> b!2293367 (= e!1469553 (and tp!727126 (inv!36906 (tag!4861 (h!32707 rules!1750))) (inv!36909 (transformation!4371 (h!32707 rules!1750))) e!1469543))))

(declare-fun b!2293368 () Bool)

(declare-fun res!980665 () Bool)

(assert (=> b!2293368 (=> (not res!980665) (not e!1469547))))

(declare-fun otherP!12 () List!27398)

(declare-fun isPrefix!2361 (List!27398 List!27398) Bool)

(assert (=> b!2293368 (= res!980665 (isPrefix!2361 otherP!12 input!1722))))

(declare-fun b!2293348 () Bool)

(declare-fun size!21503 (BalanceConc!17508) Int)

(declare-fun size!21504 (List!27398) Int)

(assert (=> b!2293348 (= e!1469548 (<= (size!21503 (charsOf!2759 (head!5002 tokens!456))) (size!21504 otherP!12)))))

(declare-fun res!980661 () Bool)

(assert (=> start!225180 (=> (not res!980661) (not e!1469533))))

(get-info :version)

(assert (=> start!225180 (= res!980661 ((_ is Lexer!3966) thiss!16613))))

(assert (=> start!225180 e!1469533))

(assert (=> start!225180 true))

(assert (=> start!225180 e!1469555))

(assert (=> start!225180 e!1469540))

(assert (=> start!225180 e!1469550))

(assert (=> start!225180 e!1469538))

(assert (=> start!225180 e!1469531))

(assert (=> start!225180 e!1469529))

(assert (=> start!225180 e!1469535))

(assert (= (and start!225180 res!980661) b!2293366))

(assert (= (and b!2293366 res!980668) b!2293361))

(assert (= (and b!2293361 res!980671) b!2293351))

(assert (= (and b!2293351 res!980662) b!2293358))

(assert (= (and b!2293358 res!980670) b!2293344))

(assert (= (and b!2293344 res!980675) b!2293342))

(assert (= (and b!2293342 (not res!980674)) b!2293348))

(assert (= (and b!2293342 res!980673) b!2293364))

(assert (= (and b!2293364 (not res!980664)) b!2293340))

(assert (= (and b!2293364 res!980666) b!2293368))

(assert (= (and b!2293368 res!980665) b!2293357))

(assert (= (and b!2293357 res!980667) b!2293341))

(assert (= (and b!2293341 res!980672) b!2293360))

(assert (= (and b!2293341 (not res!980663)) b!2293356))

(assert (= (and b!2293356 (not res!980669)) b!2293350))

(assert (= (and start!225180 ((_ is Cons!27304) input!1722)) b!2293353))

(assert (= b!2293346 b!2293349))

(assert (= start!225180 b!2293346))

(assert (= (and start!225180 ((_ is Cons!27304) suffix!886)) b!2293352))

(assert (= (and start!225180 ((_ is Cons!27304) otherP!12)) b!2293343))

(assert (= b!2293367 b!2293359))

(assert (= b!2293363 b!2293367))

(assert (= (and start!225180 ((_ is Cons!27306) rules!1750)) b!2293363))

(assert (= b!2293362 b!2293354))

(assert (= start!225180 b!2293362))

(assert (= b!2293355 b!2293345))

(assert (= b!2293365 b!2293355))

(assert (= b!2293347 b!2293365))

(assert (= (and start!225180 ((_ is Cons!27305) tokens!456)) b!2293347))

(declare-fun m!2721173 () Bool)

(assert (=> b!2293366 m!2721173))

(declare-fun m!2721175 () Bool)

(assert (=> b!2293361 m!2721175))

(declare-fun m!2721177 () Bool)

(assert (=> b!2293351 m!2721177))

(declare-fun m!2721179 () Bool)

(assert (=> b!2293348 m!2721179))

(assert (=> b!2293348 m!2721179))

(declare-fun m!2721181 () Bool)

(assert (=> b!2293348 m!2721181))

(assert (=> b!2293348 m!2721181))

(declare-fun m!2721183 () Bool)

(assert (=> b!2293348 m!2721183))

(declare-fun m!2721185 () Bool)

(assert (=> b!2293348 m!2721185))

(declare-fun m!2721187 () Bool)

(assert (=> b!2293341 m!2721187))

(declare-fun m!2721189 () Bool)

(assert (=> b!2293341 m!2721189))

(declare-fun m!2721191 () Bool)

(assert (=> b!2293344 m!2721191))

(declare-fun m!2721193 () Bool)

(assert (=> b!2293344 m!2721193))

(declare-fun m!2721195 () Bool)

(assert (=> b!2293344 m!2721195))

(assert (=> b!2293344 m!2721195))

(declare-fun m!2721197 () Bool)

(assert (=> b!2293344 m!2721197))

(assert (=> b!2293340 m!2721179))

(declare-fun m!2721199 () Bool)

(assert (=> b!2293362 m!2721199))

(declare-fun m!2721201 () Bool)

(assert (=> b!2293362 m!2721201))

(declare-fun m!2721203 () Bool)

(assert (=> b!2293358 m!2721203))

(declare-fun m!2721205 () Bool)

(assert (=> b!2293355 m!2721205))

(declare-fun m!2721207 () Bool)

(assert (=> b!2293355 m!2721207))

(assert (=> b!2293360 m!2721179))

(assert (=> b!2293360 m!2721179))

(assert (=> b!2293360 m!2721181))

(assert (=> b!2293360 m!2721181))

(declare-fun m!2721209 () Bool)

(assert (=> b!2293360 m!2721209))

(assert (=> b!2293360 m!2721209))

(declare-fun m!2721211 () Bool)

(assert (=> b!2293360 m!2721211))

(declare-fun m!2721213 () Bool)

(assert (=> b!2293350 m!2721213))

(declare-fun m!2721215 () Bool)

(assert (=> b!2293367 m!2721215))

(declare-fun m!2721217 () Bool)

(assert (=> b!2293367 m!2721217))

(declare-fun m!2721219 () Bool)

(assert (=> b!2293368 m!2721219))

(declare-fun m!2721221 () Bool)

(assert (=> b!2293347 m!2721221))

(declare-fun m!2721223 () Bool)

(assert (=> b!2293365 m!2721223))

(declare-fun m!2721225 () Bool)

(assert (=> b!2293342 m!2721225))

(declare-fun m!2721227 () Bool)

(assert (=> b!2293346 m!2721227))

(declare-fun m!2721229 () Bool)

(assert (=> b!2293346 m!2721229))

(declare-fun m!2721231 () Bool)

(assert (=> b!2293356 m!2721231))

(declare-fun m!2721233 () Bool)

(assert (=> b!2293356 m!2721233))

(declare-fun m!2721235 () Bool)

(assert (=> b!2293356 m!2721235))

(declare-fun m!2721237 () Bool)

(assert (=> b!2293356 m!2721237))

(check-sat (not b!2293353) (not b!2293344) (not b!2293346) (not b!2293367) b_and!182347 (not b!2293343) (not b!2293368) (not b!2293350) (not b!2293341) b_and!182349 b_and!182353 (not b!2293355) (not b_next!69679) (not b!2293356) (not b!2293362) (not b!2293358) (not b!2293360) (not b!2293352) (not b!2293361) (not b!2293351) (not b!2293340) (not b!2293342) b_and!182345 (not b_next!69677) (not b!2293366) (not b!2293347) (not b_next!69681) (not b_next!69687) (not b_next!69685) b_and!182351 (not b!2293348) (not b_next!69691) b_and!182359 (not b_next!69683) b_and!182355 (not b!2293365) b_and!182357 tp_is_empty!10659 (not b_next!69689) (not b!2293363))
(check-sat (not b_next!69679) b_and!182347 b_and!182357 b_and!182349 (not b_next!69689) b_and!182353 b_and!182345 (not b_next!69677) (not b_next!69681) (not b_next!69687) (not b_next!69685) b_and!182351 (not b_next!69691) b_and!182359 (not b_next!69683) b_and!182355)
