; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!382018 () Bool)

(assert start!382018)

(declare-fun b!4050453 () Bool)

(declare-fun b_free!112721 () Bool)

(declare-fun b_next!113425 () Bool)

(assert (=> b!4050453 (= b_free!112721 (not b_next!113425))))

(declare-fun tp!1228396 () Bool)

(declare-fun b_and!311467 () Bool)

(assert (=> b!4050453 (= tp!1228396 b_and!311467)))

(declare-fun b_free!112723 () Bool)

(declare-fun b_next!113427 () Bool)

(assert (=> b!4050453 (= b_free!112723 (not b_next!113427))))

(declare-fun tp!1228403 () Bool)

(declare-fun b_and!311469 () Bool)

(assert (=> b!4050453 (= tp!1228403 b_and!311469)))

(declare-fun b!4050449 () Bool)

(declare-fun b_free!112725 () Bool)

(declare-fun b_next!113429 () Bool)

(assert (=> b!4050449 (= b_free!112725 (not b_next!113429))))

(declare-fun tp!1228398 () Bool)

(declare-fun b_and!311471 () Bool)

(assert (=> b!4050449 (= tp!1228398 b_and!311471)))

(declare-fun b_free!112727 () Bool)

(declare-fun b_next!113431 () Bool)

(assert (=> b!4050449 (= b_free!112727 (not b_next!113431))))

(declare-fun tp!1228401 () Bool)

(declare-fun b_and!311473 () Bool)

(assert (=> b!4050449 (= tp!1228401 b_and!311473)))

(declare-fun b!4050427 () Bool)

(declare-fun e!2513199 () Bool)

(declare-fun e!2513213 () Bool)

(assert (=> b!4050427 (= e!2513199 e!2513213)))

(declare-fun res!1650648 () Bool)

(assert (=> b!4050427 (=> res!1650648 e!2513213)))

(declare-datatypes ((C!23874 0))(
  ( (C!23875 (val!14031 Int)) )
))
(declare-datatypes ((List!43426 0))(
  ( (Nil!43302) (Cons!43302 (h!48722 C!23874) (t!335877 List!43426)) )
))
(declare-fun lt!1443622 () List!43426)

(declare-fun lt!1443629 () List!43426)

(declare-fun isPrefix!4026 (List!43426 List!43426) Bool)

(assert (=> b!4050427 (= res!1650648 (not (isPrefix!4026 lt!1443622 lt!1443629)))))

(declare-fun prefix!494 () List!43426)

(assert (=> b!4050427 (isPrefix!4026 prefix!494 lt!1443629)))

(declare-datatypes ((Unit!62585 0))(
  ( (Unit!62586) )
))
(declare-fun lt!1443613 () Unit!62585)

(declare-fun suffix!1299 () List!43426)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2861 (List!43426 List!43426) Unit!62585)

(assert (=> b!4050427 (= lt!1443613 (lemmaConcatTwoListThenFirstIsPrefix!2861 prefix!494 suffix!1299))))

(declare-fun lt!1443637 () List!43426)

(assert (=> b!4050427 (isPrefix!4026 lt!1443622 lt!1443637)))

(declare-fun lt!1443597 () Unit!62585)

(declare-fun suffixResult!105 () List!43426)

(assert (=> b!4050427 (= lt!1443597 (lemmaConcatTwoListThenFirstIsPrefix!2861 lt!1443622 suffixResult!105))))

(declare-fun b!4050428 () Bool)

(declare-fun e!2513229 () Bool)

(assert (=> b!4050428 (= e!2513229 false)))

(declare-fun b!4050429 () Bool)

(declare-fun e!2513209 () Bool)

(declare-fun e!2513216 () Bool)

(assert (=> b!4050429 (= e!2513209 e!2513216)))

(declare-fun res!1650666 () Bool)

(assert (=> b!4050429 (=> (not res!1650666) (not e!2513216))))

(declare-fun lt!1443612 () Int)

(declare-fun lt!1443645 () Int)

(assert (=> b!4050429 (= res!1650666 (>= lt!1443612 lt!1443645))))

(declare-fun size!32375 (List!43426) Int)

(assert (=> b!4050429 (= lt!1443645 (size!32375 lt!1443622))))

(assert (=> b!4050429 (= lt!1443612 (size!32375 prefix!494))))

(declare-datatypes ((IArray!26305 0))(
  ( (IArray!26306 (innerList!13210 List!43426)) )
))
(declare-datatypes ((Conc!13150 0))(
  ( (Node!13150 (left!32606 Conc!13150) (right!32936 Conc!13150) (csize!26530 Int) (cheight!13361 Int)) (Leaf!20327 (xs!16456 IArray!26305) (csize!26531 Int)) (Empty!13150) )
))
(declare-datatypes ((BalanceConc!25894 0))(
  ( (BalanceConc!25895 (c!699688 Conc!13150)) )
))
(declare-datatypes ((List!43427 0))(
  ( (Nil!43303) (Cons!43303 (h!48723 (_ BitVec 16)) (t!335878 List!43427)) )
))
(declare-datatypes ((TokenValue!7169 0))(
  ( (FloatLiteralValue!14338 (text!50628 List!43427)) (TokenValueExt!7168 (__x!26555 Int)) (Broken!35845 (value!218371 List!43427)) (Object!7292) (End!7169) (Def!7169) (Underscore!7169) (Match!7169) (Else!7169) (Error!7169) (Case!7169) (If!7169) (Extends!7169) (Abstract!7169) (Class!7169) (Val!7169) (DelimiterValue!14338 (del!7229 List!43427)) (KeywordValue!7175 (value!218372 List!43427)) (CommentValue!14338 (value!218373 List!43427)) (WhitespaceValue!14338 (value!218374 List!43427)) (IndentationValue!7169 (value!218375 List!43427)) (String!49564) (Int32!7169) (Broken!35846 (value!218376 List!43427)) (Boolean!7170) (Unit!62587) (OperatorValue!7172 (op!7229 List!43427)) (IdentifierValue!14338 (value!218377 List!43427)) (IdentifierValue!14339 (value!218378 List!43427)) (WhitespaceValue!14339 (value!218379 List!43427)) (True!14338) (False!14338) (Broken!35847 (value!218380 List!43427)) (Broken!35848 (value!218381 List!43427)) (True!14339) (RightBrace!7169) (RightBracket!7169) (Colon!7169) (Null!7169) (Comma!7169) (LeftBracket!7169) (False!14339) (LeftBrace!7169) (ImaginaryLiteralValue!7169 (text!50629 List!43427)) (StringLiteralValue!21507 (value!218382 List!43427)) (EOFValue!7169 (value!218383 List!43427)) (IdentValue!7169 (value!218384 List!43427)) (DelimiterValue!14339 (value!218385 List!43427)) (DedentValue!7169 (value!218386 List!43427)) (NewLineValue!7169 (value!218387 List!43427)) (IntegerValue!21507 (value!218388 (_ BitVec 32)) (text!50630 List!43427)) (IntegerValue!21508 (value!218389 Int) (text!50631 List!43427)) (Times!7169) (Or!7169) (Equal!7169) (Minus!7169) (Broken!35849 (value!218390 List!43427)) (And!7169) (Div!7169) (LessEqual!7169) (Mod!7169) (Concat!19013) (Not!7169) (Plus!7169) (SpaceValue!7169 (value!218391 List!43427)) (IntegerValue!21509 (value!218392 Int) (text!50632 List!43427)) (StringLiteralValue!21508 (text!50633 List!43427)) (FloatLiteralValue!14339 (text!50634 List!43427)) (BytesLiteralValue!7169 (value!218393 List!43427)) (CommentValue!14339 (value!218394 List!43427)) (StringLiteralValue!21509 (value!218395 List!43427)) (ErrorTokenValue!7169 (msg!7230 List!43427)) )
))
(declare-datatypes ((Regex!11844 0))(
  ( (ElementMatch!11844 (c!699689 C!23874)) (Concat!19014 (regOne!24200 Regex!11844) (regTwo!24200 Regex!11844)) (EmptyExpr!11844) (Star!11844 (reg!12173 Regex!11844)) (EmptyLang!11844) (Union!11844 (regOne!24201 Regex!11844) (regTwo!24201 Regex!11844)) )
))
(declare-datatypes ((String!49565 0))(
  ( (String!49566 (value!218396 String)) )
))
(declare-datatypes ((TokenValueInjection!13766 0))(
  ( (TokenValueInjection!13767 (toValue!9491 Int) (toChars!9350 Int)) )
))
(declare-datatypes ((Rule!13678 0))(
  ( (Rule!13679 (regex!6939 Regex!11844) (tag!7799 String!49565) (isSeparator!6939 Bool) (transformation!6939 TokenValueInjection!13766)) )
))
(declare-datatypes ((Token!13016 0))(
  ( (Token!13017 (value!218397 TokenValue!7169) (rule!10021 Rule!13678) (size!32376 Int) (originalCharacters!7539 List!43426)) )
))
(declare-fun token!484 () Token!13016)

(declare-fun list!16133 (BalanceConc!25894) List!43426)

(declare-fun charsOf!4755 (Token!13016) BalanceConc!25894)

(assert (=> b!4050429 (= lt!1443622 (list!16133 (charsOf!4755 token!484)))))

(declare-fun b!4050430 () Bool)

(declare-fun res!1650655 () Bool)

(assert (=> b!4050430 (=> (not res!1650655) (not e!2513209))))

(declare-datatypes ((List!43428 0))(
  ( (Nil!43304) (Cons!43304 (h!48724 Rule!13678) (t!335879 List!43428)) )
))
(declare-fun rules!2999 () List!43428)

(declare-fun isEmpty!25844 (List!43428) Bool)

(assert (=> b!4050430 (= res!1650655 (not (isEmpty!25844 rules!2999)))))

(declare-fun b!4050431 () Bool)

(declare-fun e!2513227 () Bool)

(declare-fun e!2513232 () Bool)

(assert (=> b!4050431 (= e!2513227 e!2513232)))

(declare-fun res!1650659 () Bool)

(assert (=> b!4050431 (=> (not res!1650659) (not e!2513232))))

(declare-datatypes ((LexerInterface!6528 0))(
  ( (LexerInterfaceExt!6525 (__x!26556 Int)) (Lexer!6526) )
))
(declare-fun thiss!21717 () LexerInterface!6528)

(declare-datatypes ((tuple2!42376 0))(
  ( (tuple2!42377 (_1!24322 Token!13016) (_2!24322 List!43426)) )
))
(declare-datatypes ((Option!9353 0))(
  ( (None!9352) (Some!9352 (v!39762 tuple2!42376)) )
))
(declare-fun lt!1443647 () Option!9353)

(declare-fun maxPrefix!3826 (LexerInterface!6528 List!43428 List!43426) Option!9353)

(assert (=> b!4050431 (= res!1650659 (= (maxPrefix!3826 thiss!21717 rules!2999 lt!1443629) lt!1443647))))

(declare-fun lt!1443601 () tuple2!42376)

(assert (=> b!4050431 (= lt!1443647 (Some!9352 lt!1443601))))

(assert (=> b!4050431 (= lt!1443601 (tuple2!42377 token!484 suffixResult!105))))

(declare-fun ++!11341 (List!43426 List!43426) List!43426)

(assert (=> b!4050431 (= lt!1443629 (++!11341 prefix!494 suffix!1299))))

(declare-fun b!4050432 () Bool)

(declare-fun e!2513228 () Bool)

(declare-fun tp_is_empty!20659 () Bool)

(declare-fun tp!1228392 () Bool)

(assert (=> b!4050432 (= e!2513228 (and tp_is_empty!20659 tp!1228392))))

(declare-fun b!4050433 () Bool)

(declare-fun res!1650649 () Bool)

(declare-fun e!2513231 () Bool)

(assert (=> b!4050433 (=> res!1650649 e!2513231)))

(declare-fun lt!1443644 () Option!9353)

(declare-fun contains!8611 (List!43428 Rule!13678) Bool)

(assert (=> b!4050433 (= res!1650649 (not (contains!8611 rules!2999 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))

(declare-fun b!4050434 () Bool)

(declare-fun e!2513204 () Bool)

(declare-fun e!2513208 () Bool)

(assert (=> b!4050434 (= e!2513204 e!2513208)))

(declare-fun res!1650640 () Bool)

(assert (=> b!4050434 (=> res!1650640 e!2513208)))

(declare-fun lt!1443600 () List!43426)

(declare-fun lt!1443605 () List!43426)

(assert (=> b!4050434 (= res!1650640 (not (= lt!1443600 lt!1443605)))))

(declare-fun lt!1443625 () List!43426)

(declare-fun lt!1443602 () List!43426)

(assert (=> b!4050434 (= lt!1443600 (++!11341 lt!1443625 lt!1443602))))

(declare-fun getSuffix!2443 (List!43426 List!43426) List!43426)

(assert (=> b!4050434 (= lt!1443602 (getSuffix!2443 lt!1443605 lt!1443625))))

(declare-fun b!4050435 () Bool)

(declare-fun res!1650662 () Bool)

(assert (=> b!4050435 (=> res!1650662 e!2513204)))

(declare-fun lt!1443617 () List!43426)

(assert (=> b!4050435 (= res!1650662 (not (= lt!1443617 lt!1443605)))))

(declare-fun b!4050436 () Bool)

(declare-fun e!2513210 () Bool)

(declare-fun tp!1228400 () Bool)

(assert (=> b!4050436 (= e!2513210 (and tp_is_empty!20659 tp!1228400))))

(declare-fun res!1650667 () Bool)

(assert (=> start!382018 (=> (not res!1650667) (not e!2513209))))

(assert (=> start!382018 (= res!1650667 (is-Lexer!6526 thiss!21717))))

(assert (=> start!382018 e!2513209))

(declare-fun e!2513230 () Bool)

(assert (=> start!382018 e!2513230))

(declare-fun e!2513214 () Bool)

(declare-fun inv!57887 (Token!13016) Bool)

(assert (=> start!382018 (and (inv!57887 token!484) e!2513214)))

(assert (=> start!382018 e!2513210))

(declare-fun e!2513205 () Bool)

(assert (=> start!382018 e!2513205))

(assert (=> start!382018 e!2513228))

(assert (=> start!382018 true))

(declare-fun e!2513203 () Bool)

(assert (=> start!382018 e!2513203))

(declare-fun e!2513221 () Bool)

(assert (=> start!382018 e!2513221))

(declare-fun b!4050437 () Bool)

(declare-fun e!2513218 () Bool)

(declare-fun tp!1228393 () Bool)

(assert (=> b!4050437 (= e!2513203 (and e!2513218 tp!1228393))))

(declare-fun b!4050438 () Bool)

(declare-fun res!1650658 () Bool)

(assert (=> b!4050438 (=> (not res!1650658) (not e!2513209))))

(declare-fun newSuffix!27 () List!43426)

(assert (=> b!4050438 (= res!1650658 (isPrefix!4026 newSuffix!27 suffix!1299))))

(declare-fun b!4050439 () Bool)

(declare-fun e!2513200 () Bool)

(declare-fun e!2513223 () Bool)

(assert (=> b!4050439 (= e!2513200 e!2513223)))

(declare-fun res!1650668 () Bool)

(assert (=> b!4050439 (=> res!1650668 e!2513223)))

(declare-fun lt!1443640 () Option!9353)

(assert (=> b!4050439 (= res!1650668 (not (= lt!1443640 (Some!9352 (v!39762 lt!1443644)))))))

(declare-fun newSuffixResult!27 () List!43426)

(assert (=> b!4050439 (isPrefix!4026 lt!1443625 (++!11341 lt!1443625 newSuffixResult!27))))

(declare-fun lt!1443641 () Unit!62585)

(assert (=> b!4050439 (= lt!1443641 (lemmaConcatTwoListThenFirstIsPrefix!2861 lt!1443625 newSuffixResult!27))))

(assert (=> b!4050439 (isPrefix!4026 lt!1443625 lt!1443617)))

(assert (=> b!4050439 (= lt!1443617 (++!11341 lt!1443625 (_2!24322 (v!39762 lt!1443644))))))

(declare-fun lt!1443646 () Unit!62585)

(assert (=> b!4050439 (= lt!1443646 (lemmaConcatTwoListThenFirstIsPrefix!2861 lt!1443625 (_2!24322 (v!39762 lt!1443644))))))

(declare-fun lt!1443618 () Int)

(declare-fun lt!1443599 () TokenValue!7169)

(assert (=> b!4050439 (= lt!1443640 (Some!9352 (tuple2!42377 (Token!13017 lt!1443599 (rule!10021 (_1!24322 (v!39762 lt!1443644))) lt!1443618 lt!1443625) (_2!24322 (v!39762 lt!1443644)))))))

(declare-fun maxPrefixOneRule!2838 (LexerInterface!6528 Rule!13678 List!43426) Option!9353)

(assert (=> b!4050439 (= lt!1443640 (maxPrefixOneRule!2838 thiss!21717 (rule!10021 (_1!24322 (v!39762 lt!1443644))) lt!1443605))))

(assert (=> b!4050439 (= lt!1443618 (size!32375 lt!1443625))))

(declare-fun apply!10128 (TokenValueInjection!13766 BalanceConc!25894) TokenValue!7169)

(declare-fun seqFromList!5156 (List!43426) BalanceConc!25894)

(assert (=> b!4050439 (= lt!1443599 (apply!10128 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (seqFromList!5156 lt!1443625)))))

(declare-fun lt!1443626 () Unit!62585)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1644 (LexerInterface!6528 List!43428 List!43426 List!43426 List!43426 Rule!13678) Unit!62585)

(assert (=> b!4050439 (= lt!1443626 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1644 thiss!21717 rules!2999 lt!1443625 lt!1443605 (_2!24322 (v!39762 lt!1443644)) (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))

(assert (=> b!4050439 (= lt!1443625 (list!16133 (charsOf!4755 (_1!24322 (v!39762 lt!1443644)))))))

(declare-fun lt!1443594 () Unit!62585)

(declare-fun lemmaInv!1148 (TokenValueInjection!13766) Unit!62585)

(assert (=> b!4050439 (= lt!1443594 (lemmaInv!1148 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))

(declare-fun ruleValid!2869 (LexerInterface!6528 Rule!13678) Bool)

(assert (=> b!4050439 (ruleValid!2869 thiss!21717 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))

(declare-fun lt!1443593 () Unit!62585)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1939 (LexerInterface!6528 Rule!13678 List!43428) Unit!62585)

(assert (=> b!4050439 (= lt!1443593 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1939 thiss!21717 (rule!10021 (_1!24322 (v!39762 lt!1443644))) rules!2999))))

(declare-fun lt!1443598 () Unit!62585)

(declare-fun lemmaCharactersSize!1458 (Token!13016) Unit!62585)

(assert (=> b!4050439 (= lt!1443598 (lemmaCharactersSize!1458 token!484))))

(declare-fun lt!1443635 () Unit!62585)

(assert (=> b!4050439 (= lt!1443635 (lemmaCharactersSize!1458 (_1!24322 (v!39762 lt!1443644))))))

(declare-fun b!4050440 () Bool)

(declare-fun e!2513212 () Bool)

(declare-fun e!2513226 () Bool)

(assert (=> b!4050440 (= e!2513212 e!2513226)))

(declare-fun res!1650654 () Bool)

(assert (=> b!4050440 (=> res!1650654 e!2513226)))

(declare-fun lt!1443624 () Option!9353)

(assert (=> b!4050440 (= res!1650654 (not (= lt!1443624 lt!1443647)))))

(declare-fun lt!1443630 () Token!13016)

(assert (=> b!4050440 (= lt!1443624 (Some!9352 (tuple2!42377 lt!1443630 suffixResult!105)))))

(assert (=> b!4050440 (= lt!1443624 (maxPrefixOneRule!2838 thiss!21717 (rule!10021 token!484) lt!1443629))))

(declare-fun lt!1443592 () TokenValue!7169)

(assert (=> b!4050440 (= lt!1443630 (Token!13017 lt!1443592 (rule!10021 token!484) lt!1443645 lt!1443622))))

(assert (=> b!4050440 (= lt!1443592 (apply!10128 (transformation!6939 (rule!10021 token!484)) (seqFromList!5156 lt!1443622)))))

(declare-fun lt!1443615 () Unit!62585)

(assert (=> b!4050440 (= lt!1443615 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1644 thiss!21717 rules!2999 lt!1443622 lt!1443629 suffixResult!105 (rule!10021 token!484)))))

(declare-fun lt!1443648 () List!43426)

(assert (=> b!4050440 (= lt!1443648 suffixResult!105)))

(declare-fun lt!1443621 () Unit!62585)

(declare-fun lemmaSamePrefixThenSameSuffix!2187 (List!43426 List!43426 List!43426 List!43426 List!43426) Unit!62585)

(assert (=> b!4050440 (= lt!1443621 (lemmaSamePrefixThenSameSuffix!2187 lt!1443622 lt!1443648 lt!1443622 suffixResult!105 lt!1443629))))

(declare-fun lt!1443614 () List!43426)

(assert (=> b!4050440 (isPrefix!4026 lt!1443622 lt!1443614)))

(declare-fun lt!1443608 () Unit!62585)

(assert (=> b!4050440 (= lt!1443608 (lemmaConcatTwoListThenFirstIsPrefix!2861 lt!1443622 lt!1443648))))

(declare-fun b!4050441 () Bool)

(declare-fun tp!1228399 () Bool)

(assert (=> b!4050441 (= e!2513221 (and tp_is_empty!20659 tp!1228399))))

(declare-fun b!4050442 () Bool)

(declare-fun e!2513202 () Bool)

(declare-fun e!2513225 () Bool)

(assert (=> b!4050442 (= e!2513202 e!2513225)))

(declare-fun res!1650664 () Bool)

(assert (=> b!4050442 (=> res!1650664 e!2513225)))

(declare-fun lt!1443643 () List!43426)

(assert (=> b!4050442 (= res!1650664 (not (= lt!1443643 lt!1443629)))))

(declare-fun lt!1443609 () List!43426)

(assert (=> b!4050442 (= lt!1443643 (++!11341 prefix!494 lt!1443609))))

(declare-fun lt!1443636 () List!43426)

(assert (=> b!4050442 (= lt!1443643 (++!11341 lt!1443605 lt!1443636))))

(declare-fun lt!1443603 () Unit!62585)

(declare-fun lemmaConcatAssociativity!2643 (List!43426 List!43426 List!43426) Unit!62585)

(assert (=> b!4050442 (= lt!1443603 (lemmaConcatAssociativity!2643 prefix!494 newSuffix!27 lt!1443636))))

(declare-fun b!4050443 () Bool)

(declare-fun res!1650652 () Bool)

(declare-fun e!2513211 () Bool)

(assert (=> b!4050443 (=> (not res!1650652) (not e!2513211))))

(assert (=> b!4050443 (= res!1650652 (= (size!32376 token!484) (size!32375 (originalCharacters!7539 token!484))))))

(declare-fun b!4050444 () Bool)

(declare-fun res!1650650 () Bool)

(assert (=> b!4050444 (=> (not res!1650650) (not e!2513209))))

(declare-fun rulesInvariant!5871 (LexerInterface!6528 List!43428) Bool)

(assert (=> b!4050444 (= res!1650650 (rulesInvariant!5871 thiss!21717 rules!2999))))

(declare-fun b!4050445 () Bool)

(declare-fun e!2513206 () Unit!62585)

(declare-fun Unit!62588 () Unit!62585)

(assert (=> b!4050445 (= e!2513206 Unit!62588)))

(declare-fun b!4050446 () Bool)

(declare-fun res!1650660 () Bool)

(assert (=> b!4050446 (=> res!1650660 e!2513231)))

(assert (=> b!4050446 (= res!1650660 (not (contains!8611 rules!2999 (rule!10021 token!484))))))

(declare-fun b!4050447 () Bool)

(declare-fun res!1650644 () Bool)

(assert (=> b!4050447 (=> (not res!1650644) (not e!2513209))))

(assert (=> b!4050447 (= res!1650644 (>= (size!32375 suffix!1299) (size!32375 newSuffix!27)))))

(declare-fun b!4050448 () Bool)

(assert (=> b!4050448 (= e!2513211 (and (= (size!32376 token!484) lt!1443645) (= (originalCharacters!7539 token!484) lt!1443622)))))

(declare-fun e!2513217 () Bool)

(assert (=> b!4050449 (= e!2513217 (and tp!1228398 tp!1228401))))

(declare-fun b!4050450 () Bool)

(declare-fun matchR!5797 (Regex!11844 List!43426) Bool)

(assert (=> b!4050450 (= e!2513231 (matchR!5797 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) lt!1443625))))

(declare-fun b!4050451 () Bool)

(assert (=> b!4050451 (= e!2513216 e!2513227)))

(declare-fun res!1650653 () Bool)

(assert (=> b!4050451 (=> (not res!1650653) (not e!2513227))))

(declare-fun lt!1443642 () List!43426)

(assert (=> b!4050451 (= res!1650653 (= lt!1443642 lt!1443605))))

(assert (=> b!4050451 (= lt!1443605 (++!11341 prefix!494 newSuffix!27))))

(assert (=> b!4050451 (= lt!1443642 (++!11341 lt!1443622 newSuffixResult!27))))

(declare-fun tp!1228391 () Bool)

(declare-fun b!4050452 () Bool)

(declare-fun inv!57884 (String!49565) Bool)

(declare-fun inv!57888 (TokenValueInjection!13766) Bool)

(assert (=> b!4050452 (= e!2513218 (and tp!1228391 (inv!57884 (tag!7799 (h!48724 rules!2999))) (inv!57888 (transformation!6939 (h!48724 rules!2999))) e!2513217))))

(declare-fun e!2513201 () Bool)

(assert (=> b!4050453 (= e!2513201 (and tp!1228396 tp!1228403))))

(declare-fun e!2513207 () Bool)

(declare-fun tp!1228397 () Bool)

(declare-fun b!4050454 () Bool)

(declare-fun inv!21 (TokenValue!7169) Bool)

(assert (=> b!4050454 (= e!2513214 (and (inv!21 (value!218397 token!484)) e!2513207 tp!1228397))))

(declare-fun b!4050455 () Bool)

(declare-fun tp!1228394 () Bool)

(assert (=> b!4050455 (= e!2513205 (and tp_is_empty!20659 tp!1228394))))

(declare-fun b!4050456 () Bool)

(assert (=> b!4050456 (= e!2513223 e!2513202)))

(declare-fun res!1650669 () Bool)

(assert (=> b!4050456 (=> res!1650669 e!2513202)))

(assert (=> b!4050456 (= res!1650669 (not (= lt!1443609 suffix!1299)))))

(assert (=> b!4050456 (= lt!1443609 (++!11341 newSuffix!27 lt!1443636))))

(assert (=> b!4050456 (= lt!1443636 (getSuffix!2443 suffix!1299 newSuffix!27))))

(declare-fun b!4050457 () Bool)

(declare-fun res!1650663 () Bool)

(assert (=> b!4050457 (=> res!1650663 e!2513231)))

(assert (=> b!4050457 (= res!1650663 (not (isPrefix!4026 lt!1443625 lt!1443605)))))

(declare-fun b!4050458 () Bool)

(declare-fun e!2513233 () Bool)

(declare-fun e!2513219 () Bool)

(assert (=> b!4050458 (= e!2513233 e!2513219)))

(declare-fun res!1650656 () Bool)

(assert (=> b!4050458 (=> res!1650656 e!2513219)))

(declare-fun lt!1443623 () List!43426)

(assert (=> b!4050458 (= res!1650656 (not (= lt!1443623 lt!1443629)))))

(declare-fun lt!1443628 () List!43426)

(assert (=> b!4050458 (= lt!1443623 (++!11341 lt!1443622 lt!1443628))))

(assert (=> b!4050458 (= lt!1443628 (getSuffix!2443 lt!1443629 lt!1443622))))

(assert (=> b!4050458 e!2513211))

(declare-fun res!1650643 () Bool)

(assert (=> b!4050458 (=> (not res!1650643) (not e!2513211))))

(assert (=> b!4050458 (= res!1650643 (isPrefix!4026 lt!1443629 lt!1443629))))

(declare-fun lt!1443596 () Unit!62585)

(declare-fun lemmaIsPrefixRefl!2593 (List!43426 List!43426) Unit!62585)

(assert (=> b!4050458 (= lt!1443596 (lemmaIsPrefixRefl!2593 lt!1443629 lt!1443629))))

(declare-fun tp!1228402 () Bool)

(declare-fun b!4050459 () Bool)

(assert (=> b!4050459 (= e!2513207 (and tp!1228402 (inv!57884 (tag!7799 (rule!10021 token!484))) (inv!57888 (transformation!6939 (rule!10021 token!484))) e!2513201))))

(declare-fun b!4050460 () Bool)

(declare-fun Unit!62589 () Unit!62585)

(assert (=> b!4050460 (= e!2513206 Unit!62589)))

(declare-fun lt!1443604 () Unit!62585)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!465 (LexerInterface!6528 List!43428 Rule!13678 List!43426 List!43426 List!43426 Rule!13678) Unit!62585)

(assert (=> b!4050460 (= lt!1443604 (lemmaMaxPrefixOutputsMaxPrefix!465 thiss!21717 rules!2999 (rule!10021 token!484) lt!1443622 lt!1443629 lt!1443625 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))

(declare-fun res!1650646 () Bool)

(assert (=> b!4050460 (= res!1650646 (not (matchR!5797 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) lt!1443625)))))

(assert (=> b!4050460 (=> (not res!1650646) (not e!2513229))))

(assert (=> b!4050460 e!2513229))

(declare-fun b!4050461 () Bool)

(assert (=> b!4050461 (= e!2513232 (not e!2513199))))

(declare-fun res!1650657 () Bool)

(assert (=> b!4050461 (=> res!1650657 e!2513199)))

(assert (=> b!4050461 (= res!1650657 (not (= lt!1443637 lt!1443629)))))

(assert (=> b!4050461 (= lt!1443637 (++!11341 lt!1443622 suffixResult!105))))

(declare-fun lt!1443633 () Unit!62585)

(assert (=> b!4050461 (= lt!1443633 (lemmaInv!1148 (transformation!6939 (rule!10021 token!484))))))

(assert (=> b!4050461 (ruleValid!2869 thiss!21717 (rule!10021 token!484))))

(declare-fun lt!1443634 () Unit!62585)

(assert (=> b!4050461 (= lt!1443634 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1939 thiss!21717 (rule!10021 token!484) rules!2999))))

(declare-fun b!4050462 () Bool)

(declare-fun res!1650642 () Bool)

(assert (=> b!4050462 (=> (not res!1650642) (not e!2513211))))

(assert (=> b!4050462 (= res!1650642 (= (value!218397 token!484) lt!1443592))))

(declare-fun b!4050463 () Bool)

(assert (=> b!4050463 (= e!2513208 e!2513231)))

(declare-fun res!1650647 () Bool)

(assert (=> b!4050463 (=> res!1650647 e!2513231)))

(assert (=> b!4050463 (= res!1650647 (>= lt!1443618 lt!1443645))))

(declare-fun lt!1443611 () Unit!62585)

(assert (=> b!4050463 (= lt!1443611 e!2513206)))

(declare-fun c!699687 () Bool)

(assert (=> b!4050463 (= c!699687 (> lt!1443618 lt!1443645))))

(assert (=> b!4050463 (= (_2!24322 (v!39762 lt!1443644)) lt!1443602)))

(declare-fun lt!1443638 () Unit!62585)

(assert (=> b!4050463 (= lt!1443638 (lemmaSamePrefixThenSameSuffix!2187 lt!1443625 (_2!24322 (v!39762 lt!1443644)) lt!1443625 lt!1443602 lt!1443605))))

(assert (=> b!4050463 (isPrefix!4026 lt!1443625 lt!1443600)))

(declare-fun lt!1443620 () Unit!62585)

(assert (=> b!4050463 (= lt!1443620 (lemmaConcatTwoListThenFirstIsPrefix!2861 lt!1443625 lt!1443602))))

(declare-fun b!4050464 () Bool)

(assert (=> b!4050464 (= e!2513226 e!2513233)))

(declare-fun res!1650645 () Bool)

(assert (=> b!4050464 (=> res!1650645 e!2513233)))

(assert (=> b!4050464 (= res!1650645 (not (matchR!5797 (regex!6939 (rule!10021 token!484)) lt!1443622)))))

(assert (=> b!4050464 (isPrefix!4026 lt!1443622 lt!1443605)))

(declare-fun lt!1443627 () Unit!62585)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!819 (List!43426 List!43426 List!43426) Unit!62585)

(assert (=> b!4050464 (= lt!1443627 (lemmaPrefixStaysPrefixWhenAddingToSuffix!819 lt!1443622 prefix!494 newSuffix!27))))

(declare-fun lt!1443631 () Unit!62585)

(assert (=> b!4050464 (= lt!1443631 (lemmaPrefixStaysPrefixWhenAddingToSuffix!819 lt!1443622 prefix!494 suffix!1299))))

(declare-fun b!4050465 () Bool)

(assert (=> b!4050465 (= e!2513225 e!2513204)))

(declare-fun res!1650661 () Bool)

(assert (=> b!4050465 (=> res!1650661 e!2513204)))

(assert (=> b!4050465 (= res!1650661 (not (isPrefix!4026 lt!1443625 lt!1443629)))))

(assert (=> b!4050465 (isPrefix!4026 lt!1443625 lt!1443643)))

(declare-fun lt!1443616 () Unit!62585)

(assert (=> b!4050465 (= lt!1443616 (lemmaPrefixStaysPrefixWhenAddingToSuffix!819 lt!1443625 lt!1443605 lt!1443636))))

(declare-fun b!4050466 () Bool)

(assert (=> b!4050466 (= e!2513219 e!2513200)))

(declare-fun res!1650641 () Bool)

(assert (=> b!4050466 (=> res!1650641 e!2513200)))

(assert (=> b!4050466 (= res!1650641 (not (is-Some!9352 lt!1443644)))))

(assert (=> b!4050466 (= lt!1443644 (maxPrefix!3826 thiss!21717 rules!2999 lt!1443605))))

(assert (=> b!4050466 (and (= suffixResult!105 lt!1443628) (= lt!1443601 (tuple2!42377 lt!1443630 lt!1443628)))))

(declare-fun lt!1443639 () Unit!62585)

(assert (=> b!4050466 (= lt!1443639 (lemmaSamePrefixThenSameSuffix!2187 lt!1443622 suffixResult!105 lt!1443622 lt!1443628 lt!1443629))))

(assert (=> b!4050466 (isPrefix!4026 lt!1443622 lt!1443623)))

(declare-fun lt!1443632 () Unit!62585)

(assert (=> b!4050466 (= lt!1443632 (lemmaConcatTwoListThenFirstIsPrefix!2861 lt!1443622 lt!1443628))))

(declare-fun b!4050467 () Bool)

(declare-fun tp!1228395 () Bool)

(assert (=> b!4050467 (= e!2513230 (and tp_is_empty!20659 tp!1228395))))

(declare-fun b!4050468 () Bool)

(declare-fun e!2513224 () Bool)

(assert (=> b!4050468 (= e!2513213 e!2513224)))

(declare-fun res!1650651 () Bool)

(assert (=> b!4050468 (=> res!1650651 e!2513224)))

(declare-fun lt!1443610 () List!43426)

(assert (=> b!4050468 (= res!1650651 (not (= lt!1443610 prefix!494)))))

(declare-fun lt!1443595 () List!43426)

(assert (=> b!4050468 (= lt!1443610 (++!11341 lt!1443622 lt!1443595))))

(assert (=> b!4050468 (= lt!1443595 (getSuffix!2443 prefix!494 lt!1443622))))

(assert (=> b!4050468 (isPrefix!4026 lt!1443622 prefix!494)))

(declare-fun lt!1443606 () Unit!62585)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!590 (List!43426 List!43426 List!43426) Unit!62585)

(assert (=> b!4050468 (= lt!1443606 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!590 prefix!494 lt!1443622 lt!1443629))))

(declare-fun b!4050469 () Bool)

(assert (=> b!4050469 (= e!2513224 e!2513212)))

(declare-fun res!1650665 () Bool)

(assert (=> b!4050469 (=> res!1650665 e!2513212)))

(declare-fun lt!1443619 () List!43426)

(assert (=> b!4050469 (= res!1650665 (or (not (= lt!1443629 lt!1443619)) (not (= lt!1443629 lt!1443614))))))

(assert (=> b!4050469 (= lt!1443619 lt!1443614)))

(assert (=> b!4050469 (= lt!1443614 (++!11341 lt!1443622 lt!1443648))))

(assert (=> b!4050469 (= lt!1443619 (++!11341 lt!1443610 suffix!1299))))

(assert (=> b!4050469 (= lt!1443648 (++!11341 lt!1443595 suffix!1299))))

(declare-fun lt!1443607 () Unit!62585)

(assert (=> b!4050469 (= lt!1443607 (lemmaConcatAssociativity!2643 lt!1443622 lt!1443595 suffix!1299))))

(assert (= (and start!382018 res!1650667) b!4050430))

(assert (= (and b!4050430 res!1650655) b!4050444))

(assert (= (and b!4050444 res!1650650) b!4050447))

(assert (= (and b!4050447 res!1650644) b!4050438))

(assert (= (and b!4050438 res!1650658) b!4050429))

(assert (= (and b!4050429 res!1650666) b!4050451))

(assert (= (and b!4050451 res!1650653) b!4050431))

(assert (= (and b!4050431 res!1650659) b!4050461))

(assert (= (and b!4050461 (not res!1650657)) b!4050427))

(assert (= (and b!4050427 (not res!1650648)) b!4050468))

(assert (= (and b!4050468 (not res!1650651)) b!4050469))

(assert (= (and b!4050469 (not res!1650665)) b!4050440))

(assert (= (and b!4050440 (not res!1650654)) b!4050464))

(assert (= (and b!4050464 (not res!1650645)) b!4050458))

(assert (= (and b!4050458 res!1650643) b!4050462))

(assert (= (and b!4050462 res!1650642) b!4050443))

(assert (= (and b!4050443 res!1650652) b!4050448))

(assert (= (and b!4050458 (not res!1650656)) b!4050466))

(assert (= (and b!4050466 (not res!1650641)) b!4050439))

(assert (= (and b!4050439 (not res!1650668)) b!4050456))

(assert (= (and b!4050456 (not res!1650669)) b!4050442))

(assert (= (and b!4050442 (not res!1650664)) b!4050465))

(assert (= (and b!4050465 (not res!1650661)) b!4050435))

(assert (= (and b!4050435 (not res!1650662)) b!4050434))

(assert (= (and b!4050434 (not res!1650640)) b!4050463))

(assert (= (and b!4050463 c!699687) b!4050460))

(assert (= (and b!4050463 (not c!699687)) b!4050445))

(assert (= (and b!4050460 res!1650646) b!4050428))

(assert (= (and b!4050463 (not res!1650647)) b!4050457))

(assert (= (and b!4050457 (not res!1650663)) b!4050433))

(assert (= (and b!4050433 (not res!1650649)) b!4050446))

(assert (= (and b!4050446 (not res!1650660)) b!4050450))

(assert (= (and start!382018 (is-Cons!43302 prefix!494)) b!4050467))

(assert (= b!4050459 b!4050453))

(assert (= b!4050454 b!4050459))

(assert (= start!382018 b!4050454))

(assert (= (and start!382018 (is-Cons!43302 suffixResult!105)) b!4050436))

(assert (= (and start!382018 (is-Cons!43302 suffix!1299)) b!4050455))

(assert (= (and start!382018 (is-Cons!43302 newSuffix!27)) b!4050432))

(assert (= b!4050452 b!4050449))

(assert (= b!4050437 b!4050452))

(assert (= (and start!382018 (is-Cons!43304 rules!2999)) b!4050437))

(assert (= (and start!382018 (is-Cons!43302 newSuffixResult!27)) b!4050441))

(declare-fun m!4651229 () Bool)

(assert (=> b!4050450 m!4651229))

(declare-fun m!4651231 () Bool)

(assert (=> b!4050430 m!4651231))

(declare-fun m!4651233 () Bool)

(assert (=> b!4050434 m!4651233))

(declare-fun m!4651235 () Bool)

(assert (=> b!4050434 m!4651235))

(declare-fun m!4651237 () Bool)

(assert (=> b!4050447 m!4651237))

(declare-fun m!4651239 () Bool)

(assert (=> b!4050447 m!4651239))

(declare-fun m!4651241 () Bool)

(assert (=> b!4050443 m!4651241))

(declare-fun m!4651243 () Bool)

(assert (=> b!4050454 m!4651243))

(declare-fun m!4651245 () Bool)

(assert (=> b!4050458 m!4651245))

(declare-fun m!4651247 () Bool)

(assert (=> b!4050458 m!4651247))

(declare-fun m!4651249 () Bool)

(assert (=> b!4050458 m!4651249))

(declare-fun m!4651251 () Bool)

(assert (=> b!4050458 m!4651251))

(declare-fun m!4651253 () Bool)

(assert (=> b!4050464 m!4651253))

(declare-fun m!4651255 () Bool)

(assert (=> b!4050464 m!4651255))

(declare-fun m!4651257 () Bool)

(assert (=> b!4050464 m!4651257))

(declare-fun m!4651259 () Bool)

(assert (=> b!4050464 m!4651259))

(declare-fun m!4651261 () Bool)

(assert (=> b!4050446 m!4651261))

(declare-fun m!4651263 () Bool)

(assert (=> start!382018 m!4651263))

(declare-fun m!4651265 () Bool)

(assert (=> b!4050466 m!4651265))

(declare-fun m!4651267 () Bool)

(assert (=> b!4050466 m!4651267))

(declare-fun m!4651269 () Bool)

(assert (=> b!4050466 m!4651269))

(declare-fun m!4651271 () Bool)

(assert (=> b!4050466 m!4651271))

(declare-fun m!4651273 () Bool)

(assert (=> b!4050427 m!4651273))

(declare-fun m!4651275 () Bool)

(assert (=> b!4050427 m!4651275))

(declare-fun m!4651277 () Bool)

(assert (=> b!4050427 m!4651277))

(declare-fun m!4651279 () Bool)

(assert (=> b!4050427 m!4651279))

(declare-fun m!4651281 () Bool)

(assert (=> b!4050427 m!4651281))

(declare-fun m!4651283 () Bool)

(assert (=> b!4050431 m!4651283))

(declare-fun m!4651285 () Bool)

(assert (=> b!4050431 m!4651285))

(declare-fun m!4651287 () Bool)

(assert (=> b!4050463 m!4651287))

(declare-fun m!4651289 () Bool)

(assert (=> b!4050463 m!4651289))

(declare-fun m!4651291 () Bool)

(assert (=> b!4050463 m!4651291))

(declare-fun m!4651293 () Bool)

(assert (=> b!4050456 m!4651293))

(declare-fun m!4651295 () Bool)

(assert (=> b!4050456 m!4651295))

(declare-fun m!4651297 () Bool)

(assert (=> b!4050429 m!4651297))

(declare-fun m!4651299 () Bool)

(assert (=> b!4050429 m!4651299))

(declare-fun m!4651301 () Bool)

(assert (=> b!4050429 m!4651301))

(assert (=> b!4050429 m!4651301))

(declare-fun m!4651303 () Bool)

(assert (=> b!4050429 m!4651303))

(declare-fun m!4651305 () Bool)

(assert (=> b!4050461 m!4651305))

(declare-fun m!4651307 () Bool)

(assert (=> b!4050461 m!4651307))

(declare-fun m!4651309 () Bool)

(assert (=> b!4050461 m!4651309))

(declare-fun m!4651311 () Bool)

(assert (=> b!4050461 m!4651311))

(declare-fun m!4651313 () Bool)

(assert (=> b!4050457 m!4651313))

(declare-fun m!4651315 () Bool)

(assert (=> b!4050439 m!4651315))

(declare-fun m!4651317 () Bool)

(assert (=> b!4050439 m!4651317))

(declare-fun m!4651319 () Bool)

(assert (=> b!4050439 m!4651319))

(declare-fun m!4651321 () Bool)

(assert (=> b!4050439 m!4651321))

(declare-fun m!4651323 () Bool)

(assert (=> b!4050439 m!4651323))

(declare-fun m!4651325 () Bool)

(assert (=> b!4050439 m!4651325))

(declare-fun m!4651327 () Bool)

(assert (=> b!4050439 m!4651327))

(declare-fun m!4651329 () Bool)

(assert (=> b!4050439 m!4651329))

(declare-fun m!4651331 () Bool)

(assert (=> b!4050439 m!4651331))

(declare-fun m!4651333 () Bool)

(assert (=> b!4050439 m!4651333))

(declare-fun m!4651335 () Bool)

(assert (=> b!4050439 m!4651335))

(declare-fun m!4651337 () Bool)

(assert (=> b!4050439 m!4651337))

(declare-fun m!4651339 () Bool)

(assert (=> b!4050439 m!4651339))

(declare-fun m!4651341 () Bool)

(assert (=> b!4050439 m!4651341))

(declare-fun m!4651343 () Bool)

(assert (=> b!4050439 m!4651343))

(assert (=> b!4050439 m!4651323))

(declare-fun m!4651345 () Bool)

(assert (=> b!4050439 m!4651345))

(declare-fun m!4651347 () Bool)

(assert (=> b!4050439 m!4651347))

(declare-fun m!4651349 () Bool)

(assert (=> b!4050439 m!4651349))

(assert (=> b!4050439 m!4651331))

(assert (=> b!4050439 m!4651317))

(declare-fun m!4651351 () Bool)

(assert (=> b!4050459 m!4651351))

(declare-fun m!4651353 () Bool)

(assert (=> b!4050459 m!4651353))

(declare-fun m!4651355 () Bool)

(assert (=> b!4050465 m!4651355))

(declare-fun m!4651357 () Bool)

(assert (=> b!4050465 m!4651357))

(declare-fun m!4651359 () Bool)

(assert (=> b!4050465 m!4651359))

(declare-fun m!4651361 () Bool)

(assert (=> b!4050460 m!4651361))

(assert (=> b!4050460 m!4651229))

(declare-fun m!4651363 () Bool)

(assert (=> b!4050469 m!4651363))

(declare-fun m!4651365 () Bool)

(assert (=> b!4050469 m!4651365))

(declare-fun m!4651367 () Bool)

(assert (=> b!4050469 m!4651367))

(declare-fun m!4651369 () Bool)

(assert (=> b!4050469 m!4651369))

(declare-fun m!4651371 () Bool)

(assert (=> b!4050433 m!4651371))

(declare-fun m!4651373 () Bool)

(assert (=> b!4050468 m!4651373))

(declare-fun m!4651375 () Bool)

(assert (=> b!4050468 m!4651375))

(declare-fun m!4651377 () Bool)

(assert (=> b!4050468 m!4651377))

(declare-fun m!4651379 () Bool)

(assert (=> b!4050468 m!4651379))

(declare-fun m!4651381 () Bool)

(assert (=> b!4050440 m!4651381))

(declare-fun m!4651383 () Bool)

(assert (=> b!4050440 m!4651383))

(declare-fun m!4651385 () Bool)

(assert (=> b!4050440 m!4651385))

(assert (=> b!4050440 m!4651385))

(declare-fun m!4651387 () Bool)

(assert (=> b!4050440 m!4651387))

(declare-fun m!4651389 () Bool)

(assert (=> b!4050440 m!4651389))

(declare-fun m!4651391 () Bool)

(assert (=> b!4050440 m!4651391))

(declare-fun m!4651393 () Bool)

(assert (=> b!4050440 m!4651393))

(declare-fun m!4651395 () Bool)

(assert (=> b!4050438 m!4651395))

(declare-fun m!4651397 () Bool)

(assert (=> b!4050444 m!4651397))

(declare-fun m!4651399 () Bool)

(assert (=> b!4050442 m!4651399))

(declare-fun m!4651401 () Bool)

(assert (=> b!4050442 m!4651401))

(declare-fun m!4651403 () Bool)

(assert (=> b!4050442 m!4651403))

(declare-fun m!4651405 () Bool)

(assert (=> b!4050451 m!4651405))

(declare-fun m!4651407 () Bool)

(assert (=> b!4050451 m!4651407))

(declare-fun m!4651409 () Bool)

(assert (=> b!4050452 m!4651409))

(declare-fun m!4651411 () Bool)

(assert (=> b!4050452 m!4651411))

(push 1)

(assert (not b!4050459))

(assert (not b!4050438))

(assert (not b!4050441))

(assert (not start!382018))

(assert (not b!4050454))

(assert (not b!4050442))

(assert (not b!4050444))

(assert (not b!4050465))

(assert (not b!4050436))

(assert (not b!4050437))

(assert (not b!4050460))

(assert (not b!4050429))

(assert (not b!4050458))

(assert (not b!4050447))

(assert (not b!4050457))

(assert (not b!4050432))

(assert b_and!311473)

(assert (not b!4050440))

(assert (not b!4050450))

(assert b_and!311467)

(assert (not b!4050467))

(assert (not b!4050430))

(assert (not b!4050461))

(assert b_and!311471)

(assert (not b!4050469))

(assert (not b_next!113429))

(assert (not b!4050443))

(assert (not b!4050468))

(assert b_and!311469)

(assert (not b!4050446))

(assert (not b!4050452))

(assert (not b_next!113425))

(assert (not b!4050464))

(assert (not b!4050463))

(assert (not b_next!113427))

(assert (not b!4050439))

(assert (not b!4050456))

(assert tp_is_empty!20659)

(assert (not b!4050427))

(assert (not b!4050433))

(assert (not b!4050431))

(assert (not b!4050455))

(assert (not b!4050451))

(assert (not b!4050434))

(assert (not b_next!113431))

(assert (not b!4050466))

(check-sat)

(pop 1)

(push 1)

(assert b_and!311473)

(assert b_and!311467)

(assert b_and!311471)

(assert (not b_next!113429))

(assert b_and!311469)

(assert (not b_next!113425))

(assert (not b_next!113427))

(assert (not b_next!113431))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1202917 () Bool)

(assert (=> d!1202917 (= (inv!57884 (tag!7799 (rule!10021 token!484))) (= (mod (str.len (value!218396 (tag!7799 (rule!10021 token!484)))) 2) 0))))

(assert (=> b!4050459 d!1202917))

(declare-fun d!1202919 () Bool)

(declare-fun res!1650768 () Bool)

(declare-fun e!2513341 () Bool)

(assert (=> d!1202919 (=> (not res!1650768) (not e!2513341))))

(declare-fun semiInverseModEq!2967 (Int Int) Bool)

(assert (=> d!1202919 (= res!1650768 (semiInverseModEq!2967 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (toValue!9491 (transformation!6939 (rule!10021 token!484)))))))

(assert (=> d!1202919 (= (inv!57888 (transformation!6939 (rule!10021 token!484))) e!2513341)))

(declare-fun b!4050601 () Bool)

(declare-fun equivClasses!2866 (Int Int) Bool)

(assert (=> b!4050601 (= e!2513341 (equivClasses!2866 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (toValue!9491 (transformation!6939 (rule!10021 token!484)))))))

(assert (= (and d!1202919 res!1650768) b!4050601))

(declare-fun m!4651597 () Bool)

(assert (=> d!1202919 m!4651597))

(declare-fun m!4651599 () Bool)

(assert (=> b!4050601 m!4651599))

(assert (=> b!4050459 d!1202919))

(declare-fun d!1202921 () Bool)

(declare-fun e!2513349 () Bool)

(assert (=> d!1202921 e!2513349))

(declare-fun res!1650782 () Bool)

(assert (=> d!1202921 (=> res!1650782 e!2513349)))

(declare-fun lt!1443822 () Bool)

(assert (=> d!1202921 (= res!1650782 (not lt!1443822))))

(declare-fun e!2513348 () Bool)

(assert (=> d!1202921 (= lt!1443822 e!2513348)))

(declare-fun res!1650780 () Bool)

(assert (=> d!1202921 (=> res!1650780 e!2513348)))

(assert (=> d!1202921 (= res!1650780 (is-Nil!43302 newSuffix!27))))

(assert (=> d!1202921 (= (isPrefix!4026 newSuffix!27 suffix!1299) lt!1443822)))

(declare-fun b!4050612 () Bool)

(declare-fun e!2513350 () Bool)

(declare-fun tail!6294 (List!43426) List!43426)

(assert (=> b!4050612 (= e!2513350 (isPrefix!4026 (tail!6294 newSuffix!27) (tail!6294 suffix!1299)))))

(declare-fun b!4050611 () Bool)

(declare-fun res!1650779 () Bool)

(assert (=> b!4050611 (=> (not res!1650779) (not e!2513350))))

(declare-fun head!8562 (List!43426) C!23874)

(assert (=> b!4050611 (= res!1650779 (= (head!8562 newSuffix!27) (head!8562 suffix!1299)))))

(declare-fun b!4050610 () Bool)

(assert (=> b!4050610 (= e!2513348 e!2513350)))

(declare-fun res!1650781 () Bool)

(assert (=> b!4050610 (=> (not res!1650781) (not e!2513350))))

(assert (=> b!4050610 (= res!1650781 (not (is-Nil!43302 suffix!1299)))))

(declare-fun b!4050613 () Bool)

(assert (=> b!4050613 (= e!2513349 (>= (size!32375 suffix!1299) (size!32375 newSuffix!27)))))

(assert (= (and d!1202921 (not res!1650780)) b!4050610))

(assert (= (and b!4050610 res!1650781) b!4050611))

(assert (= (and b!4050611 res!1650779) b!4050612))

(assert (= (and d!1202921 (not res!1650782)) b!4050613))

(declare-fun m!4651601 () Bool)

(assert (=> b!4050612 m!4651601))

(declare-fun m!4651603 () Bool)

(assert (=> b!4050612 m!4651603))

(assert (=> b!4050612 m!4651601))

(assert (=> b!4050612 m!4651603))

(declare-fun m!4651605 () Bool)

(assert (=> b!4050612 m!4651605))

(declare-fun m!4651607 () Bool)

(assert (=> b!4050611 m!4651607))

(declare-fun m!4651609 () Bool)

(assert (=> b!4050611 m!4651609))

(assert (=> b!4050613 m!4651237))

(assert (=> b!4050613 m!4651239))

(assert (=> b!4050438 d!1202921))

(declare-fun b!4050623 () Bool)

(declare-fun e!2513356 () List!43426)

(assert (=> b!4050623 (= e!2513356 (Cons!43302 (h!48722 lt!1443622) (++!11341 (t!335877 lt!1443622) lt!1443628)))))

(declare-fun b!4050622 () Bool)

(assert (=> b!4050622 (= e!2513356 lt!1443628)))

(declare-fun d!1202923 () Bool)

(declare-fun e!2513355 () Bool)

(assert (=> d!1202923 e!2513355))

(declare-fun res!1650788 () Bool)

(assert (=> d!1202923 (=> (not res!1650788) (not e!2513355))))

(declare-fun lt!1443825 () List!43426)

(declare-fun content!6596 (List!43426) (Set C!23874))

(assert (=> d!1202923 (= res!1650788 (= (content!6596 lt!1443825) (set.union (content!6596 lt!1443622) (content!6596 lt!1443628))))))

(assert (=> d!1202923 (= lt!1443825 e!2513356)))

(declare-fun c!699698 () Bool)

(assert (=> d!1202923 (= c!699698 (is-Nil!43302 lt!1443622))))

(assert (=> d!1202923 (= (++!11341 lt!1443622 lt!1443628) lt!1443825)))

(declare-fun b!4050624 () Bool)

(declare-fun res!1650787 () Bool)

(assert (=> b!4050624 (=> (not res!1650787) (not e!2513355))))

(assert (=> b!4050624 (= res!1650787 (= (size!32375 lt!1443825) (+ (size!32375 lt!1443622) (size!32375 lt!1443628))))))

(declare-fun b!4050625 () Bool)

(assert (=> b!4050625 (= e!2513355 (or (not (= lt!1443628 Nil!43302)) (= lt!1443825 lt!1443622)))))

(assert (= (and d!1202923 c!699698) b!4050622))

(assert (= (and d!1202923 (not c!699698)) b!4050623))

(assert (= (and d!1202923 res!1650788) b!4050624))

(assert (= (and b!4050624 res!1650787) b!4050625))

(declare-fun m!4651611 () Bool)

(assert (=> b!4050623 m!4651611))

(declare-fun m!4651613 () Bool)

(assert (=> d!1202923 m!4651613))

(declare-fun m!4651615 () Bool)

(assert (=> d!1202923 m!4651615))

(declare-fun m!4651617 () Bool)

(assert (=> d!1202923 m!4651617))

(declare-fun m!4651619 () Bool)

(assert (=> b!4050624 m!4651619))

(assert (=> b!4050624 m!4651297))

(declare-fun m!4651621 () Bool)

(assert (=> b!4050624 m!4651621))

(assert (=> b!4050458 d!1202923))

(declare-fun d!1202925 () Bool)

(declare-fun lt!1443828 () List!43426)

(assert (=> d!1202925 (= (++!11341 lt!1443622 lt!1443828) lt!1443629)))

(declare-fun e!2513359 () List!43426)

(assert (=> d!1202925 (= lt!1443828 e!2513359)))

(declare-fun c!699701 () Bool)

(assert (=> d!1202925 (= c!699701 (is-Cons!43302 lt!1443622))))

(assert (=> d!1202925 (>= (size!32375 lt!1443629) (size!32375 lt!1443622))))

(assert (=> d!1202925 (= (getSuffix!2443 lt!1443629 lt!1443622) lt!1443828)))

(declare-fun b!4050630 () Bool)

(assert (=> b!4050630 (= e!2513359 (getSuffix!2443 (tail!6294 lt!1443629) (t!335877 lt!1443622)))))

(declare-fun b!4050631 () Bool)

(assert (=> b!4050631 (= e!2513359 lt!1443629)))

(assert (= (and d!1202925 c!699701) b!4050630))

(assert (= (and d!1202925 (not c!699701)) b!4050631))

(declare-fun m!4651623 () Bool)

(assert (=> d!1202925 m!4651623))

(declare-fun m!4651625 () Bool)

(assert (=> d!1202925 m!4651625))

(assert (=> d!1202925 m!4651297))

(declare-fun m!4651627 () Bool)

(assert (=> b!4050630 m!4651627))

(assert (=> b!4050630 m!4651627))

(declare-fun m!4651629 () Bool)

(assert (=> b!4050630 m!4651629))

(assert (=> b!4050458 d!1202925))

(declare-fun d!1202927 () Bool)

(declare-fun e!2513361 () Bool)

(assert (=> d!1202927 e!2513361))

(declare-fun res!1650792 () Bool)

(assert (=> d!1202927 (=> res!1650792 e!2513361)))

(declare-fun lt!1443829 () Bool)

(assert (=> d!1202927 (= res!1650792 (not lt!1443829))))

(declare-fun e!2513360 () Bool)

(assert (=> d!1202927 (= lt!1443829 e!2513360)))

(declare-fun res!1650790 () Bool)

(assert (=> d!1202927 (=> res!1650790 e!2513360)))

(assert (=> d!1202927 (= res!1650790 (is-Nil!43302 lt!1443629))))

(assert (=> d!1202927 (= (isPrefix!4026 lt!1443629 lt!1443629) lt!1443829)))

(declare-fun b!4050634 () Bool)

(declare-fun e!2513362 () Bool)

(assert (=> b!4050634 (= e!2513362 (isPrefix!4026 (tail!6294 lt!1443629) (tail!6294 lt!1443629)))))

(declare-fun b!4050633 () Bool)

(declare-fun res!1650789 () Bool)

(assert (=> b!4050633 (=> (not res!1650789) (not e!2513362))))

(assert (=> b!4050633 (= res!1650789 (= (head!8562 lt!1443629) (head!8562 lt!1443629)))))

(declare-fun b!4050632 () Bool)

(assert (=> b!4050632 (= e!2513360 e!2513362)))

(declare-fun res!1650791 () Bool)

(assert (=> b!4050632 (=> (not res!1650791) (not e!2513362))))

(assert (=> b!4050632 (= res!1650791 (not (is-Nil!43302 lt!1443629)))))

(declare-fun b!4050635 () Bool)

(assert (=> b!4050635 (= e!2513361 (>= (size!32375 lt!1443629) (size!32375 lt!1443629)))))

(assert (= (and d!1202927 (not res!1650790)) b!4050632))

(assert (= (and b!4050632 res!1650791) b!4050633))

(assert (= (and b!4050633 res!1650789) b!4050634))

(assert (= (and d!1202927 (not res!1650792)) b!4050635))

(assert (=> b!4050634 m!4651627))

(assert (=> b!4050634 m!4651627))

(assert (=> b!4050634 m!4651627))

(assert (=> b!4050634 m!4651627))

(declare-fun m!4651631 () Bool)

(assert (=> b!4050634 m!4651631))

(declare-fun m!4651633 () Bool)

(assert (=> b!4050633 m!4651633))

(assert (=> b!4050633 m!4651633))

(assert (=> b!4050635 m!4651625))

(assert (=> b!4050635 m!4651625))

(assert (=> b!4050458 d!1202927))

(declare-fun d!1202929 () Bool)

(assert (=> d!1202929 (isPrefix!4026 lt!1443629 lt!1443629)))

(declare-fun lt!1443832 () Unit!62585)

(declare-fun choose!24573 (List!43426 List!43426) Unit!62585)

(assert (=> d!1202929 (= lt!1443832 (choose!24573 lt!1443629 lt!1443629))))

(assert (=> d!1202929 (= (lemmaIsPrefixRefl!2593 lt!1443629 lt!1443629) lt!1443832)))

(declare-fun bs!591509 () Bool)

(assert (= bs!591509 d!1202929))

(assert (=> bs!591509 m!4651249))

(declare-fun m!4651635 () Bool)

(assert (=> bs!591509 m!4651635))

(assert (=> b!4050458 d!1202929))

(declare-fun d!1202931 () Bool)

(assert (=> d!1202931 (= lt!1443648 suffixResult!105)))

(declare-fun lt!1443835 () Unit!62585)

(declare-fun choose!24574 (List!43426 List!43426 List!43426 List!43426 List!43426) Unit!62585)

(assert (=> d!1202931 (= lt!1443835 (choose!24574 lt!1443622 lt!1443648 lt!1443622 suffixResult!105 lt!1443629))))

(assert (=> d!1202931 (isPrefix!4026 lt!1443622 lt!1443629)))

(assert (=> d!1202931 (= (lemmaSamePrefixThenSameSuffix!2187 lt!1443622 lt!1443648 lt!1443622 suffixResult!105 lt!1443629) lt!1443835)))

(declare-fun bs!591510 () Bool)

(assert (= bs!591510 d!1202931))

(declare-fun m!4651637 () Bool)

(assert (=> bs!591510 m!4651637))

(assert (=> bs!591510 m!4651279))

(assert (=> b!4050440 d!1202931))

(declare-fun d!1202933 () Bool)

(declare-fun e!2513364 () Bool)

(assert (=> d!1202933 e!2513364))

(declare-fun res!1650796 () Bool)

(assert (=> d!1202933 (=> res!1650796 e!2513364)))

(declare-fun lt!1443836 () Bool)

(assert (=> d!1202933 (= res!1650796 (not lt!1443836))))

(declare-fun e!2513363 () Bool)

(assert (=> d!1202933 (= lt!1443836 e!2513363)))

(declare-fun res!1650794 () Bool)

(assert (=> d!1202933 (=> res!1650794 e!2513363)))

(assert (=> d!1202933 (= res!1650794 (is-Nil!43302 lt!1443622))))

(assert (=> d!1202933 (= (isPrefix!4026 lt!1443622 lt!1443614) lt!1443836)))

(declare-fun b!4050638 () Bool)

(declare-fun e!2513365 () Bool)

(assert (=> b!4050638 (= e!2513365 (isPrefix!4026 (tail!6294 lt!1443622) (tail!6294 lt!1443614)))))

(declare-fun b!4050637 () Bool)

(declare-fun res!1650793 () Bool)

(assert (=> b!4050637 (=> (not res!1650793) (not e!2513365))))

(assert (=> b!4050637 (= res!1650793 (= (head!8562 lt!1443622) (head!8562 lt!1443614)))))

(declare-fun b!4050636 () Bool)

(assert (=> b!4050636 (= e!2513363 e!2513365)))

(declare-fun res!1650795 () Bool)

(assert (=> b!4050636 (=> (not res!1650795) (not e!2513365))))

(assert (=> b!4050636 (= res!1650795 (not (is-Nil!43302 lt!1443614)))))

(declare-fun b!4050639 () Bool)

(assert (=> b!4050639 (= e!2513364 (>= (size!32375 lt!1443614) (size!32375 lt!1443622)))))

(assert (= (and d!1202933 (not res!1650794)) b!4050636))

(assert (= (and b!4050636 res!1650795) b!4050637))

(assert (= (and b!4050637 res!1650793) b!4050638))

(assert (= (and d!1202933 (not res!1650796)) b!4050639))

(declare-fun m!4651639 () Bool)

(assert (=> b!4050638 m!4651639))

(declare-fun m!4651641 () Bool)

(assert (=> b!4050638 m!4651641))

(assert (=> b!4050638 m!4651639))

(assert (=> b!4050638 m!4651641))

(declare-fun m!4651643 () Bool)

(assert (=> b!4050638 m!4651643))

(declare-fun m!4651645 () Bool)

(assert (=> b!4050637 m!4651645))

(declare-fun m!4651647 () Bool)

(assert (=> b!4050637 m!4651647))

(declare-fun m!4651649 () Bool)

(assert (=> b!4050639 m!4651649))

(assert (=> b!4050639 m!4651297))

(assert (=> b!4050440 d!1202933))

(declare-fun d!1202935 () Bool)

(declare-fun dynLambda!18399 (Int BalanceConc!25894) TokenValue!7169)

(assert (=> d!1202935 (= (apply!10128 (transformation!6939 (rule!10021 token!484)) (seqFromList!5156 lt!1443622)) (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 token!484))) (seqFromList!5156 lt!1443622)))))

(declare-fun b_lambda!118367 () Bool)

(assert (=> (not b_lambda!118367) (not d!1202935)))

(declare-fun t!335884 () Bool)

(declare-fun tb!243681 () Bool)

(assert (=> (and b!4050453 (= (toValue!9491 (transformation!6939 (rule!10021 token!484))) (toValue!9491 (transformation!6939 (rule!10021 token!484)))) t!335884) tb!243681))

(declare-fun result!295290 () Bool)

(assert (=> tb!243681 (= result!295290 (inv!21 (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 token!484))) (seqFromList!5156 lt!1443622))))))

(declare-fun m!4651651 () Bool)

(assert (=> tb!243681 m!4651651))

(assert (=> d!1202935 t!335884))

(declare-fun b_and!311483 () Bool)

(assert (= b_and!311467 (and (=> t!335884 result!295290) b_and!311483)))

(declare-fun tb!243683 () Bool)

(declare-fun t!335886 () Bool)

(assert (=> (and b!4050449 (= (toValue!9491 (transformation!6939 (h!48724 rules!2999))) (toValue!9491 (transformation!6939 (rule!10021 token!484)))) t!335886) tb!243683))

(declare-fun result!295294 () Bool)

(assert (= result!295294 result!295290))

(assert (=> d!1202935 t!335886))

(declare-fun b_and!311485 () Bool)

(assert (= b_and!311471 (and (=> t!335886 result!295294) b_and!311485)))

(assert (=> d!1202935 m!4651385))

(declare-fun m!4651653 () Bool)

(assert (=> d!1202935 m!4651653))

(assert (=> b!4050440 d!1202935))

(declare-fun d!1202937 () Bool)

(assert (=> d!1202937 (isPrefix!4026 lt!1443622 (++!11341 lt!1443622 lt!1443648))))

(declare-fun lt!1443839 () Unit!62585)

(declare-fun choose!24575 (List!43426 List!43426) Unit!62585)

(assert (=> d!1202937 (= lt!1443839 (choose!24575 lt!1443622 lt!1443648))))

(assert (=> d!1202937 (= (lemmaConcatTwoListThenFirstIsPrefix!2861 lt!1443622 lt!1443648) lt!1443839)))

(declare-fun bs!591511 () Bool)

(assert (= bs!591511 d!1202937))

(assert (=> bs!591511 m!4651363))

(assert (=> bs!591511 m!4651363))

(declare-fun m!4651655 () Bool)

(assert (=> bs!591511 m!4651655))

(declare-fun m!4651657 () Bool)

(assert (=> bs!591511 m!4651657))

(assert (=> b!4050440 d!1202937))

(declare-fun d!1202939 () Bool)

(assert (=> d!1202939 (= (maxPrefixOneRule!2838 thiss!21717 (rule!10021 token!484) lt!1443629) (Some!9352 (tuple2!42377 (Token!13017 (apply!10128 (transformation!6939 (rule!10021 token!484)) (seqFromList!5156 lt!1443622)) (rule!10021 token!484) (size!32375 lt!1443622) lt!1443622) suffixResult!105)))))

(declare-fun lt!1443842 () Unit!62585)

(declare-fun choose!24576 (LexerInterface!6528 List!43428 List!43426 List!43426 List!43426 Rule!13678) Unit!62585)

(assert (=> d!1202939 (= lt!1443842 (choose!24576 thiss!21717 rules!2999 lt!1443622 lt!1443629 suffixResult!105 (rule!10021 token!484)))))

(assert (=> d!1202939 (not (isEmpty!25844 rules!2999))))

(assert (=> d!1202939 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1644 thiss!21717 rules!2999 lt!1443622 lt!1443629 suffixResult!105 (rule!10021 token!484)) lt!1443842)))

(declare-fun bs!591512 () Bool)

(assert (= bs!591512 d!1202939))

(assert (=> bs!591512 m!4651231))

(assert (=> bs!591512 m!4651385))

(assert (=> bs!591512 m!4651389))

(assert (=> bs!591512 m!4651297))

(assert (=> bs!591512 m!4651385))

(assert (=> bs!591512 m!4651387))

(declare-fun m!4651659 () Bool)

(assert (=> bs!591512 m!4651659))

(assert (=> b!4050440 d!1202939))

(declare-fun d!1202941 () Bool)

(declare-fun fromListB!2353 (List!43426) BalanceConc!25894)

(assert (=> d!1202941 (= (seqFromList!5156 lt!1443622) (fromListB!2353 lt!1443622))))

(declare-fun bs!591513 () Bool)

(assert (= bs!591513 d!1202941))

(declare-fun m!4651661 () Bool)

(assert (=> bs!591513 m!4651661))

(assert (=> b!4050440 d!1202941))

(declare-fun b!4050694 () Bool)

(declare-fun e!2513397 () Option!9353)

(declare-datatypes ((tuple2!42380 0))(
  ( (tuple2!42381 (_1!24324 List!43426) (_2!24324 List!43426)) )
))
(declare-fun lt!1443860 () tuple2!42380)

(declare-fun size!32379 (BalanceConc!25894) Int)

(assert (=> b!4050694 (= e!2513397 (Some!9352 (tuple2!42377 (Token!13017 (apply!10128 (transformation!6939 (rule!10021 token!484)) (seqFromList!5156 (_1!24324 lt!1443860))) (rule!10021 token!484) (size!32379 (seqFromList!5156 (_1!24324 lt!1443860))) (_1!24324 lt!1443860)) (_2!24324 lt!1443860))))))

(declare-fun lt!1443858 () Unit!62585)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1369 (Regex!11844 List!43426) Unit!62585)

(assert (=> b!4050694 (= lt!1443858 (longestMatchIsAcceptedByMatchOrIsEmpty!1369 (regex!6939 (rule!10021 token!484)) lt!1443629))))

(declare-fun res!1650838 () Bool)

(declare-fun isEmpty!25846 (List!43426) Bool)

(declare-fun findLongestMatchInner!1396 (Regex!11844 List!43426 Int List!43426 List!43426 Int) tuple2!42380)

(assert (=> b!4050694 (= res!1650838 (isEmpty!25846 (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 token!484)) Nil!43302 (size!32375 Nil!43302) lt!1443629 lt!1443629 (size!32375 lt!1443629)))))))

(declare-fun e!2513398 () Bool)

(assert (=> b!4050694 (=> res!1650838 e!2513398)))

(assert (=> b!4050694 e!2513398))

(declare-fun lt!1443861 () Unit!62585)

(assert (=> b!4050694 (= lt!1443861 lt!1443858)))

(declare-fun lt!1443862 () Unit!62585)

(declare-fun lemmaSemiInverse!1918 (TokenValueInjection!13766 BalanceConc!25894) Unit!62585)

(assert (=> b!4050694 (= lt!1443862 (lemmaSemiInverse!1918 (transformation!6939 (rule!10021 token!484)) (seqFromList!5156 (_1!24324 lt!1443860))))))

(declare-fun b!4050695 () Bool)

(declare-fun res!1650833 () Bool)

(declare-fun e!2513400 () Bool)

(assert (=> b!4050695 (=> (not res!1650833) (not e!2513400))))

(declare-fun lt!1443859 () Option!9353)

(declare-fun get!14207 (Option!9353) tuple2!42376)

(assert (=> b!4050695 (= res!1650833 (= (rule!10021 (_1!24322 (get!14207 lt!1443859))) (rule!10021 token!484)))))

(declare-fun b!4050696 () Bool)

(declare-fun e!2513399 () Bool)

(assert (=> b!4050696 (= e!2513399 e!2513400)))

(declare-fun res!1650837 () Bool)

(assert (=> b!4050696 (=> (not res!1650837) (not e!2513400))))

(assert (=> b!4050696 (= res!1650837 (matchR!5797 (regex!6939 (rule!10021 token!484)) (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443859))))))))

(declare-fun d!1202943 () Bool)

(assert (=> d!1202943 e!2513399))

(declare-fun res!1650839 () Bool)

(assert (=> d!1202943 (=> res!1650839 e!2513399)))

(declare-fun isEmpty!25847 (Option!9353) Bool)

(assert (=> d!1202943 (= res!1650839 (isEmpty!25847 lt!1443859))))

(assert (=> d!1202943 (= lt!1443859 e!2513397)))

(declare-fun c!699710 () Bool)

(assert (=> d!1202943 (= c!699710 (isEmpty!25846 (_1!24324 lt!1443860)))))

(declare-fun findLongestMatch!1309 (Regex!11844 List!43426) tuple2!42380)

(assert (=> d!1202943 (= lt!1443860 (findLongestMatch!1309 (regex!6939 (rule!10021 token!484)) lt!1443629))))

(assert (=> d!1202943 (ruleValid!2869 thiss!21717 (rule!10021 token!484))))

(assert (=> d!1202943 (= (maxPrefixOneRule!2838 thiss!21717 (rule!10021 token!484) lt!1443629) lt!1443859)))

(declare-fun b!4050697 () Bool)

(assert (=> b!4050697 (= e!2513397 None!9352)))

(declare-fun b!4050698 () Bool)

(declare-fun res!1650835 () Bool)

(assert (=> b!4050698 (=> (not res!1650835) (not e!2513400))))

(assert (=> b!4050698 (= res!1650835 (< (size!32375 (_2!24322 (get!14207 lt!1443859))) (size!32375 lt!1443629)))))

(declare-fun b!4050699 () Bool)

(declare-fun res!1650834 () Bool)

(assert (=> b!4050699 (=> (not res!1650834) (not e!2513400))))

(assert (=> b!4050699 (= res!1650834 (= (value!218397 (_1!24322 (get!14207 lt!1443859))) (apply!10128 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443859)))) (seqFromList!5156 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443859)))))))))

(declare-fun b!4050700 () Bool)

(declare-fun res!1650836 () Bool)

(assert (=> b!4050700 (=> (not res!1650836) (not e!2513400))))

(assert (=> b!4050700 (= res!1650836 (= (++!11341 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443859)))) (_2!24322 (get!14207 lt!1443859))) lt!1443629))))

(declare-fun b!4050701 () Bool)

(assert (=> b!4050701 (= e!2513400 (= (size!32376 (_1!24322 (get!14207 lt!1443859))) (size!32375 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443859))))))))

(declare-fun b!4050702 () Bool)

(assert (=> b!4050702 (= e!2513398 (matchR!5797 (regex!6939 (rule!10021 token!484)) (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 token!484)) Nil!43302 (size!32375 Nil!43302) lt!1443629 lt!1443629 (size!32375 lt!1443629)))))))

(assert (= (and d!1202943 c!699710) b!4050697))

(assert (= (and d!1202943 (not c!699710)) b!4050694))

(assert (= (and b!4050694 (not res!1650838)) b!4050702))

(assert (= (and d!1202943 (not res!1650839)) b!4050696))

(assert (= (and b!4050696 res!1650837) b!4050700))

(assert (= (and b!4050700 res!1650836) b!4050698))

(assert (= (and b!4050698 res!1650835) b!4050695))

(assert (= (and b!4050695 res!1650833) b!4050699))

(assert (= (and b!4050699 res!1650834) b!4050701))

(declare-fun m!4651669 () Bool)

(assert (=> b!4050696 m!4651669))

(declare-fun m!4651671 () Bool)

(assert (=> b!4050696 m!4651671))

(assert (=> b!4050696 m!4651671))

(declare-fun m!4651673 () Bool)

(assert (=> b!4050696 m!4651673))

(assert (=> b!4050696 m!4651673))

(declare-fun m!4651675 () Bool)

(assert (=> b!4050696 m!4651675))

(declare-fun m!4651677 () Bool)

(assert (=> d!1202943 m!4651677))

(declare-fun m!4651679 () Bool)

(assert (=> d!1202943 m!4651679))

(declare-fun m!4651681 () Bool)

(assert (=> d!1202943 m!4651681))

(assert (=> d!1202943 m!4651309))

(declare-fun m!4651683 () Bool)

(assert (=> b!4050694 m!4651683))

(assert (=> b!4050694 m!4651625))

(declare-fun m!4651685 () Bool)

(assert (=> b!4050694 m!4651685))

(declare-fun m!4651687 () Bool)

(assert (=> b!4050694 m!4651687))

(declare-fun m!4651689 () Bool)

(assert (=> b!4050694 m!4651689))

(assert (=> b!4050694 m!4651687))

(assert (=> b!4050694 m!4651687))

(declare-fun m!4651691 () Bool)

(assert (=> b!4050694 m!4651691))

(declare-fun m!4651693 () Bool)

(assert (=> b!4050694 m!4651693))

(assert (=> b!4050694 m!4651687))

(declare-fun m!4651695 () Bool)

(assert (=> b!4050694 m!4651695))

(assert (=> b!4050694 m!4651625))

(declare-fun m!4651697 () Bool)

(assert (=> b!4050694 m!4651697))

(assert (=> b!4050694 m!4651683))

(assert (=> b!4050695 m!4651669))

(assert (=> b!4050702 m!4651683))

(assert (=> b!4050702 m!4651625))

(assert (=> b!4050702 m!4651683))

(assert (=> b!4050702 m!4651625))

(assert (=> b!4050702 m!4651685))

(declare-fun m!4651699 () Bool)

(assert (=> b!4050702 m!4651699))

(assert (=> b!4050698 m!4651669))

(declare-fun m!4651701 () Bool)

(assert (=> b!4050698 m!4651701))

(assert (=> b!4050698 m!4651625))

(assert (=> b!4050701 m!4651669))

(declare-fun m!4651703 () Bool)

(assert (=> b!4050701 m!4651703))

(assert (=> b!4050699 m!4651669))

(declare-fun m!4651705 () Bool)

(assert (=> b!4050699 m!4651705))

(assert (=> b!4050699 m!4651705))

(declare-fun m!4651707 () Bool)

(assert (=> b!4050699 m!4651707))

(assert (=> b!4050700 m!4651669))

(assert (=> b!4050700 m!4651671))

(assert (=> b!4050700 m!4651671))

(assert (=> b!4050700 m!4651673))

(assert (=> b!4050700 m!4651673))

(declare-fun m!4651709 () Bool)

(assert (=> b!4050700 m!4651709))

(assert (=> b!4050440 d!1202943))

(declare-fun d!1202949 () Bool)

(declare-fun res!1650852 () Bool)

(declare-fun e!2513410 () Bool)

(assert (=> d!1202949 (=> (not res!1650852) (not e!2513410))))

(assert (=> d!1202949 (= res!1650852 (not (isEmpty!25846 (originalCharacters!7539 token!484))))))

(assert (=> d!1202949 (= (inv!57887 token!484) e!2513410)))

(declare-fun b!4050721 () Bool)

(declare-fun res!1650853 () Bool)

(assert (=> b!4050721 (=> (not res!1650853) (not e!2513410))))

(declare-fun dynLambda!18400 (Int TokenValue!7169) BalanceConc!25894)

(assert (=> b!4050721 (= res!1650853 (= (originalCharacters!7539 token!484) (list!16133 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (value!218397 token!484)))))))

(declare-fun b!4050722 () Bool)

(assert (=> b!4050722 (= e!2513410 (= (size!32376 token!484) (size!32375 (originalCharacters!7539 token!484))))))

(assert (= (and d!1202949 res!1650852) b!4050721))

(assert (= (and b!4050721 res!1650853) b!4050722))

(declare-fun b_lambda!118369 () Bool)

(assert (=> (not b_lambda!118369) (not b!4050721)))

(declare-fun t!335888 () Bool)

(declare-fun tb!243685 () Bool)

(assert (=> (and b!4050453 (= (toChars!9350 (transformation!6939 (rule!10021 token!484))) (toChars!9350 (transformation!6939 (rule!10021 token!484)))) t!335888) tb!243685))

(declare-fun b!4050727 () Bool)

(declare-fun e!2513413 () Bool)

(declare-fun tp!1228445 () Bool)

(declare-fun inv!57891 (Conc!13150) Bool)

(assert (=> b!4050727 (= e!2513413 (and (inv!57891 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (value!218397 token!484)))) tp!1228445))))

(declare-fun result!295296 () Bool)

(declare-fun inv!57892 (BalanceConc!25894) Bool)

(assert (=> tb!243685 (= result!295296 (and (inv!57892 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (value!218397 token!484))) e!2513413))))

(assert (= tb!243685 b!4050727))

(declare-fun m!4651727 () Bool)

(assert (=> b!4050727 m!4651727))

(declare-fun m!4651729 () Bool)

(assert (=> tb!243685 m!4651729))

(assert (=> b!4050721 t!335888))

(declare-fun b_and!311487 () Bool)

(assert (= b_and!311469 (and (=> t!335888 result!295296) b_and!311487)))

(declare-fun t!335890 () Bool)

(declare-fun tb!243687 () Bool)

(assert (=> (and b!4050449 (= (toChars!9350 (transformation!6939 (h!48724 rules!2999))) (toChars!9350 (transformation!6939 (rule!10021 token!484)))) t!335890) tb!243687))

(declare-fun result!295300 () Bool)

(assert (= result!295300 result!295296))

(assert (=> b!4050721 t!335890))

(declare-fun b_and!311489 () Bool)

(assert (= b_and!311473 (and (=> t!335890 result!295300) b_and!311489)))

(declare-fun m!4651731 () Bool)

(assert (=> d!1202949 m!4651731))

(declare-fun m!4651733 () Bool)

(assert (=> b!4050721 m!4651733))

(assert (=> b!4050721 m!4651733))

(declare-fun m!4651735 () Bool)

(assert (=> b!4050721 m!4651735))

(assert (=> b!4050722 m!4651241))

(assert (=> start!382018 d!1202949))

(declare-fun d!1202953 () Bool)

(assert (=> d!1202953 (not (matchR!5797 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) lt!1443625))))

(declare-fun lt!1443869 () Unit!62585)

(declare-fun choose!24577 (LexerInterface!6528 List!43428 Rule!13678 List!43426 List!43426 List!43426 Rule!13678) Unit!62585)

(assert (=> d!1202953 (= lt!1443869 (choose!24577 thiss!21717 rules!2999 (rule!10021 token!484) lt!1443622 lt!1443629 lt!1443625 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))

(assert (=> d!1202953 (isPrefix!4026 lt!1443622 lt!1443629)))

(assert (=> d!1202953 (= (lemmaMaxPrefixOutputsMaxPrefix!465 thiss!21717 rules!2999 (rule!10021 token!484) lt!1443622 lt!1443629 lt!1443625 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) lt!1443869)))

(declare-fun bs!591514 () Bool)

(assert (= bs!591514 d!1202953))

(assert (=> bs!591514 m!4651229))

(declare-fun m!4651739 () Bool)

(assert (=> bs!591514 m!4651739))

(assert (=> bs!591514 m!4651279))

(assert (=> b!4050460 d!1202953))

(declare-fun bm!287847 () Bool)

(declare-fun call!287852 () Bool)

(assert (=> bm!287847 (= call!287852 (isEmpty!25846 lt!1443625))))

(declare-fun b!4050774 () Bool)

(declare-fun e!2513440 () Bool)

(declare-fun e!2513438 () Bool)

(assert (=> b!4050774 (= e!2513440 e!2513438)))

(declare-fun res!1650881 () Bool)

(assert (=> b!4050774 (=> (not res!1650881) (not e!2513438))))

(declare-fun lt!1443875 () Bool)

(assert (=> b!4050774 (= res!1650881 (not lt!1443875))))

(declare-fun b!4050775 () Bool)

(declare-fun res!1650882 () Bool)

(declare-fun e!2513443 () Bool)

(assert (=> b!4050775 (=> res!1650882 e!2513443)))

(assert (=> b!4050775 (= res!1650882 (not (isEmpty!25846 (tail!6294 lt!1443625))))))

(declare-fun d!1202957 () Bool)

(declare-fun e!2513439 () Bool)

(assert (=> d!1202957 e!2513439))

(declare-fun c!699727 () Bool)

(assert (=> d!1202957 (= c!699727 (is-EmptyExpr!11844 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))

(declare-fun e!2513441 () Bool)

(assert (=> d!1202957 (= lt!1443875 e!2513441)))

(declare-fun c!699726 () Bool)

(assert (=> d!1202957 (= c!699726 (isEmpty!25846 lt!1443625))))

(declare-fun validRegex!5359 (Regex!11844) Bool)

(assert (=> d!1202957 (validRegex!5359 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))

(assert (=> d!1202957 (= (matchR!5797 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) lt!1443625) lt!1443875)))

(declare-fun b!4050776 () Bool)

(declare-fun res!1650878 () Bool)

(declare-fun e!2513437 () Bool)

(assert (=> b!4050776 (=> (not res!1650878) (not e!2513437))))

(assert (=> b!4050776 (= res!1650878 (isEmpty!25846 (tail!6294 lt!1443625)))))

(declare-fun b!4050777 () Bool)

(declare-fun e!2513442 () Bool)

(assert (=> b!4050777 (= e!2513442 (not lt!1443875))))

(declare-fun b!4050778 () Bool)

(declare-fun derivativeStep!3564 (Regex!11844 C!23874) Regex!11844)

(assert (=> b!4050778 (= e!2513441 (matchR!5797 (derivativeStep!3564 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (head!8562 lt!1443625)) (tail!6294 lt!1443625)))))

(declare-fun b!4050779 () Bool)

(declare-fun res!1650877 () Bool)

(assert (=> b!4050779 (=> res!1650877 e!2513440)))

(assert (=> b!4050779 (= res!1650877 e!2513437)))

(declare-fun res!1650879 () Bool)

(assert (=> b!4050779 (=> (not res!1650879) (not e!2513437))))

(assert (=> b!4050779 (= res!1650879 lt!1443875)))

(declare-fun b!4050780 () Bool)

(assert (=> b!4050780 (= e!2513439 (= lt!1443875 call!287852))))

(declare-fun b!4050781 () Bool)

(assert (=> b!4050781 (= e!2513437 (= (head!8562 lt!1443625) (c!699689 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))))

(declare-fun b!4050782 () Bool)

(assert (=> b!4050782 (= e!2513443 (not (= (head!8562 lt!1443625) (c!699689 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))))

(declare-fun b!4050783 () Bool)

(declare-fun res!1650876 () Bool)

(assert (=> b!4050783 (=> res!1650876 e!2513440)))

(assert (=> b!4050783 (= res!1650876 (not (is-ElementMatch!11844 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))))

(assert (=> b!4050783 (= e!2513442 e!2513440)))

(declare-fun b!4050784 () Bool)

(assert (=> b!4050784 (= e!2513438 e!2513443)))

(declare-fun res!1650883 () Bool)

(assert (=> b!4050784 (=> res!1650883 e!2513443)))

(assert (=> b!4050784 (= res!1650883 call!287852)))

(declare-fun b!4050785 () Bool)

(assert (=> b!4050785 (= e!2513439 e!2513442)))

(declare-fun c!699728 () Bool)

(assert (=> b!4050785 (= c!699728 (is-EmptyLang!11844 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))

(declare-fun b!4050786 () Bool)

(declare-fun nullable!4159 (Regex!11844) Bool)

(assert (=> b!4050786 (= e!2513441 (nullable!4159 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))

(declare-fun b!4050787 () Bool)

(declare-fun res!1650880 () Bool)

(assert (=> b!4050787 (=> (not res!1650880) (not e!2513437))))

(assert (=> b!4050787 (= res!1650880 (not call!287852))))

(assert (= (and d!1202957 c!699726) b!4050786))

(assert (= (and d!1202957 (not c!699726)) b!4050778))

(assert (= (and d!1202957 c!699727) b!4050780))

(assert (= (and d!1202957 (not c!699727)) b!4050785))

(assert (= (and b!4050785 c!699728) b!4050777))

(assert (= (and b!4050785 (not c!699728)) b!4050783))

(assert (= (and b!4050783 (not res!1650876)) b!4050779))

(assert (= (and b!4050779 res!1650879) b!4050787))

(assert (= (and b!4050787 res!1650880) b!4050776))

(assert (= (and b!4050776 res!1650878) b!4050781))

(assert (= (and b!4050779 (not res!1650877)) b!4050774))

(assert (= (and b!4050774 res!1650881) b!4050784))

(assert (= (and b!4050784 (not res!1650883)) b!4050775))

(assert (= (and b!4050775 (not res!1650882)) b!4050782))

(assert (= (or b!4050780 b!4050787 b!4050784) bm!287847))

(declare-fun m!4651753 () Bool)

(assert (=> b!4050781 m!4651753))

(declare-fun m!4651755 () Bool)

(assert (=> d!1202957 m!4651755))

(declare-fun m!4651757 () Bool)

(assert (=> d!1202957 m!4651757))

(assert (=> b!4050778 m!4651753))

(assert (=> b!4050778 m!4651753))

(declare-fun m!4651759 () Bool)

(assert (=> b!4050778 m!4651759))

(declare-fun m!4651761 () Bool)

(assert (=> b!4050778 m!4651761))

(assert (=> b!4050778 m!4651759))

(assert (=> b!4050778 m!4651761))

(declare-fun m!4651763 () Bool)

(assert (=> b!4050778 m!4651763))

(assert (=> bm!287847 m!4651755))

(assert (=> b!4050782 m!4651753))

(assert (=> b!4050775 m!4651761))

(assert (=> b!4050775 m!4651761))

(declare-fun m!4651765 () Bool)

(assert (=> b!4050775 m!4651765))

(assert (=> b!4050776 m!4651761))

(assert (=> b!4050776 m!4651761))

(assert (=> b!4050776 m!4651765))

(declare-fun m!4651767 () Bool)

(assert (=> b!4050786 m!4651767))

(assert (=> b!4050460 d!1202957))

(declare-fun d!1202961 () Bool)

(declare-fun e!2513450 () Bool)

(assert (=> d!1202961 e!2513450))

(declare-fun res!1650890 () Bool)

(assert (=> d!1202961 (=> (not res!1650890) (not e!2513450))))

(assert (=> d!1202961 (= res!1650890 (semiInverseModEq!2967 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))))

(declare-fun Unit!62595 () Unit!62585)

(assert (=> d!1202961 (= (lemmaInv!1148 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) Unit!62595)))

(declare-fun b!4050798 () Bool)

(assert (=> b!4050798 (= e!2513450 (equivClasses!2866 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))))

(assert (= (and d!1202961 res!1650890) b!4050798))

(declare-fun m!4651791 () Bool)

(assert (=> d!1202961 m!4651791))

(declare-fun m!4651793 () Bool)

(assert (=> b!4050798 m!4651793))

(assert (=> b!4050439 d!1202961))

(declare-fun d!1202967 () Bool)

(assert (=> d!1202967 (= (apply!10128 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (seqFromList!5156 lt!1443625)) (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (seqFromList!5156 lt!1443625)))))

(declare-fun b_lambda!118371 () Bool)

(assert (=> (not b_lambda!118371) (not d!1202967)))

(declare-fun t!335892 () Bool)

(declare-fun tb!243689 () Bool)

(assert (=> (and b!4050453 (= (toValue!9491 (transformation!6939 (rule!10021 token!484))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) t!335892) tb!243689))

(declare-fun result!295302 () Bool)

(assert (=> tb!243689 (= result!295302 (inv!21 (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (seqFromList!5156 lt!1443625))))))

(declare-fun m!4651795 () Bool)

(assert (=> tb!243689 m!4651795))

(assert (=> d!1202967 t!335892))

(declare-fun b_and!311491 () Bool)

(assert (= b_and!311483 (and (=> t!335892 result!295302) b_and!311491)))

(declare-fun t!335894 () Bool)

(declare-fun tb!243691 () Bool)

(assert (=> (and b!4050449 (= (toValue!9491 (transformation!6939 (h!48724 rules!2999))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) t!335894) tb!243691))

(declare-fun result!295304 () Bool)

(assert (= result!295304 result!295302))

(assert (=> d!1202967 t!335894))

(declare-fun b_and!311493 () Bool)

(assert (= b_and!311485 (and (=> t!335894 result!295304) b_and!311493)))

(assert (=> d!1202967 m!4651317))

(declare-fun m!4651797 () Bool)

(assert (=> d!1202967 m!4651797))

(assert (=> b!4050439 d!1202967))

(declare-fun d!1202969 () Bool)

(declare-fun list!16135 (Conc!13150) List!43426)

(assert (=> d!1202969 (= (list!16133 (charsOf!4755 (_1!24322 (v!39762 lt!1443644)))) (list!16135 (c!699688 (charsOf!4755 (_1!24322 (v!39762 lt!1443644))))))))

(declare-fun bs!591515 () Bool)

(assert (= bs!591515 d!1202969))

(declare-fun m!4651799 () Bool)

(assert (=> bs!591515 m!4651799))

(assert (=> b!4050439 d!1202969))

(declare-fun d!1202971 () Bool)

(declare-fun lt!1443882 () BalanceConc!25894)

(assert (=> d!1202971 (= (list!16133 lt!1443882) (originalCharacters!7539 (_1!24322 (v!39762 lt!1443644))))))

(assert (=> d!1202971 (= lt!1443882 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (value!218397 (_1!24322 (v!39762 lt!1443644)))))))

(assert (=> d!1202971 (= (charsOf!4755 (_1!24322 (v!39762 lt!1443644))) lt!1443882)))

(declare-fun b_lambda!118373 () Bool)

(assert (=> (not b_lambda!118373) (not d!1202971)))

(declare-fun tb!243693 () Bool)

(declare-fun t!335896 () Bool)

(assert (=> (and b!4050453 (= (toChars!9350 (transformation!6939 (rule!10021 token!484))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) t!335896) tb!243693))

(declare-fun b!4050799 () Bool)

(declare-fun e!2513452 () Bool)

(declare-fun tp!1228446 () Bool)

(assert (=> b!4050799 (= e!2513452 (and (inv!57891 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (value!218397 (_1!24322 (v!39762 lt!1443644)))))) tp!1228446))))

(declare-fun result!295306 () Bool)

(assert (=> tb!243693 (= result!295306 (and (inv!57892 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (value!218397 (_1!24322 (v!39762 lt!1443644))))) e!2513452))))

(assert (= tb!243693 b!4050799))

(declare-fun m!4651801 () Bool)

(assert (=> b!4050799 m!4651801))

(declare-fun m!4651803 () Bool)

(assert (=> tb!243693 m!4651803))

(assert (=> d!1202971 t!335896))

(declare-fun b_and!311495 () Bool)

(assert (= b_and!311487 (and (=> t!335896 result!295306) b_and!311495)))

(declare-fun tb!243695 () Bool)

(declare-fun t!335898 () Bool)

(assert (=> (and b!4050449 (= (toChars!9350 (transformation!6939 (h!48724 rules!2999))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) t!335898) tb!243695))

(declare-fun result!295308 () Bool)

(assert (= result!295308 result!295306))

(assert (=> d!1202971 t!335898))

(declare-fun b_and!311497 () Bool)

(assert (= b_and!311489 (and (=> t!335898 result!295308) b_and!311497)))

(declare-fun m!4651807 () Bool)

(assert (=> d!1202971 m!4651807))

(declare-fun m!4651809 () Bool)

(assert (=> d!1202971 m!4651809))

(assert (=> b!4050439 d!1202971))

(declare-fun d!1202973 () Bool)

(declare-fun e!2513454 () Bool)

(assert (=> d!1202973 e!2513454))

(declare-fun res!1650894 () Bool)

(assert (=> d!1202973 (=> res!1650894 e!2513454)))

(declare-fun lt!1443884 () Bool)

(assert (=> d!1202973 (= res!1650894 (not lt!1443884))))

(declare-fun e!2513453 () Bool)

(assert (=> d!1202973 (= lt!1443884 e!2513453)))

(declare-fun res!1650892 () Bool)

(assert (=> d!1202973 (=> res!1650892 e!2513453)))

(assert (=> d!1202973 (= res!1650892 (is-Nil!43302 lt!1443625))))

(assert (=> d!1202973 (= (isPrefix!4026 lt!1443625 lt!1443617) lt!1443884)))

(declare-fun b!4050802 () Bool)

(declare-fun e!2513455 () Bool)

(assert (=> b!4050802 (= e!2513455 (isPrefix!4026 (tail!6294 lt!1443625) (tail!6294 lt!1443617)))))

(declare-fun b!4050801 () Bool)

(declare-fun res!1650891 () Bool)

(assert (=> b!4050801 (=> (not res!1650891) (not e!2513455))))

(assert (=> b!4050801 (= res!1650891 (= (head!8562 lt!1443625) (head!8562 lt!1443617)))))

(declare-fun b!4050800 () Bool)

(assert (=> b!4050800 (= e!2513453 e!2513455)))

(declare-fun res!1650893 () Bool)

(assert (=> b!4050800 (=> (not res!1650893) (not e!2513455))))

(assert (=> b!4050800 (= res!1650893 (not (is-Nil!43302 lt!1443617)))))

(declare-fun b!4050803 () Bool)

(assert (=> b!4050803 (= e!2513454 (>= (size!32375 lt!1443617) (size!32375 lt!1443625)))))

(assert (= (and d!1202973 (not res!1650892)) b!4050800))

(assert (= (and b!4050800 res!1650893) b!4050801))

(assert (= (and b!4050801 res!1650891) b!4050802))

(assert (= (and d!1202973 (not res!1650894)) b!4050803))

(assert (=> b!4050802 m!4651761))

(declare-fun m!4651815 () Bool)

(assert (=> b!4050802 m!4651815))

(assert (=> b!4050802 m!4651761))

(assert (=> b!4050802 m!4651815))

(declare-fun m!4651817 () Bool)

(assert (=> b!4050802 m!4651817))

(assert (=> b!4050801 m!4651753))

(declare-fun m!4651819 () Bool)

(assert (=> b!4050801 m!4651819))

(declare-fun m!4651821 () Bool)

(assert (=> b!4050803 m!4651821))

(assert (=> b!4050803 m!4651321))

(assert (=> b!4050439 d!1202973))

(declare-fun d!1202977 () Bool)

(assert (=> d!1202977 (= (maxPrefixOneRule!2838 thiss!21717 (rule!10021 (_1!24322 (v!39762 lt!1443644))) lt!1443605) (Some!9352 (tuple2!42377 (Token!13017 (apply!10128 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (seqFromList!5156 lt!1443625)) (rule!10021 (_1!24322 (v!39762 lt!1443644))) (size!32375 lt!1443625) lt!1443625) (_2!24322 (v!39762 lt!1443644)))))))

(declare-fun lt!1443886 () Unit!62585)

(assert (=> d!1202977 (= lt!1443886 (choose!24576 thiss!21717 rules!2999 lt!1443625 lt!1443605 (_2!24322 (v!39762 lt!1443644)) (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))

(assert (=> d!1202977 (not (isEmpty!25844 rules!2999))))

(assert (=> d!1202977 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1644 thiss!21717 rules!2999 lt!1443625 lt!1443605 (_2!24322 (v!39762 lt!1443644)) (rule!10021 (_1!24322 (v!39762 lt!1443644)))) lt!1443886)))

(declare-fun bs!591517 () Bool)

(assert (= bs!591517 d!1202977))

(assert (=> bs!591517 m!4651231))

(assert (=> bs!591517 m!4651317))

(assert (=> bs!591517 m!4651343))

(assert (=> bs!591517 m!4651321))

(assert (=> bs!591517 m!4651317))

(assert (=> bs!591517 m!4651319))

(declare-fun m!4651825 () Bool)

(assert (=> bs!591517 m!4651825))

(assert (=> b!4050439 d!1202977))

(declare-fun b!4050809 () Bool)

(declare-fun e!2513459 () List!43426)

(assert (=> b!4050809 (= e!2513459 (Cons!43302 (h!48722 lt!1443625) (++!11341 (t!335877 lt!1443625) (_2!24322 (v!39762 lt!1443644)))))))

(declare-fun b!4050808 () Bool)

(assert (=> b!4050808 (= e!2513459 (_2!24322 (v!39762 lt!1443644)))))

(declare-fun d!1202981 () Bool)

(declare-fun e!2513458 () Bool)

(assert (=> d!1202981 e!2513458))

(declare-fun res!1650896 () Bool)

(assert (=> d!1202981 (=> (not res!1650896) (not e!2513458))))

(declare-fun lt!1443888 () List!43426)

(assert (=> d!1202981 (= res!1650896 (= (content!6596 lt!1443888) (set.union (content!6596 lt!1443625) (content!6596 (_2!24322 (v!39762 lt!1443644))))))))

(assert (=> d!1202981 (= lt!1443888 e!2513459)))

(declare-fun c!699733 () Bool)

(assert (=> d!1202981 (= c!699733 (is-Nil!43302 lt!1443625))))

(assert (=> d!1202981 (= (++!11341 lt!1443625 (_2!24322 (v!39762 lt!1443644))) lt!1443888)))

(declare-fun b!4050810 () Bool)

(declare-fun res!1650895 () Bool)

(assert (=> b!4050810 (=> (not res!1650895) (not e!2513458))))

(assert (=> b!4050810 (= res!1650895 (= (size!32375 lt!1443888) (+ (size!32375 lt!1443625) (size!32375 (_2!24322 (v!39762 lt!1443644))))))))

(declare-fun b!4050811 () Bool)

(assert (=> b!4050811 (= e!2513458 (or (not (= (_2!24322 (v!39762 lt!1443644)) Nil!43302)) (= lt!1443888 lt!1443625)))))

(assert (= (and d!1202981 c!699733) b!4050808))

(assert (= (and d!1202981 (not c!699733)) b!4050809))

(assert (= (and d!1202981 res!1650896) b!4050810))

(assert (= (and b!4050810 res!1650895) b!4050811))

(declare-fun m!4651829 () Bool)

(assert (=> b!4050809 m!4651829))

(declare-fun m!4651831 () Bool)

(assert (=> d!1202981 m!4651831))

(declare-fun m!4651833 () Bool)

(assert (=> d!1202981 m!4651833))

(declare-fun m!4651835 () Bool)

(assert (=> d!1202981 m!4651835))

(declare-fun m!4651837 () Bool)

(assert (=> b!4050810 m!4651837))

(assert (=> b!4050810 m!4651321))

(declare-fun m!4651839 () Bool)

(assert (=> b!4050810 m!4651839))

(assert (=> b!4050439 d!1202981))

(declare-fun d!1202985 () Bool)

(assert (=> d!1202985 (ruleValid!2869 thiss!21717 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))

(declare-fun lt!1443892 () Unit!62585)

(declare-fun choose!24578 (LexerInterface!6528 Rule!13678 List!43428) Unit!62585)

(assert (=> d!1202985 (= lt!1443892 (choose!24578 thiss!21717 (rule!10021 (_1!24322 (v!39762 lt!1443644))) rules!2999))))

(assert (=> d!1202985 (contains!8611 rules!2999 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))

(assert (=> d!1202985 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1939 thiss!21717 (rule!10021 (_1!24322 (v!39762 lt!1443644))) rules!2999) lt!1443892)))

(declare-fun bs!591518 () Bool)

(assert (= bs!591518 d!1202985))

(assert (=> bs!591518 m!4651315))

(declare-fun m!4651853 () Bool)

(assert (=> bs!591518 m!4651853))

(assert (=> bs!591518 m!4651371))

(assert (=> b!4050439 d!1202985))

(declare-fun d!1202991 () Bool)

(assert (=> d!1202991 (isPrefix!4026 lt!1443625 (++!11341 lt!1443625 newSuffixResult!27))))

(declare-fun lt!1443893 () Unit!62585)

(assert (=> d!1202991 (= lt!1443893 (choose!24575 lt!1443625 newSuffixResult!27))))

(assert (=> d!1202991 (= (lemmaConcatTwoListThenFirstIsPrefix!2861 lt!1443625 newSuffixResult!27) lt!1443893)))

(declare-fun bs!591519 () Bool)

(assert (= bs!591519 d!1202991))

(assert (=> bs!591519 m!4651323))

(assert (=> bs!591519 m!4651323))

(assert (=> bs!591519 m!4651325))

(declare-fun m!4651855 () Bool)

(assert (=> bs!591519 m!4651855))

(assert (=> b!4050439 d!1202991))

(declare-fun d!1202993 () Bool)

(declare-fun lt!1443896 () Int)

(assert (=> d!1202993 (>= lt!1443896 0)))

(declare-fun e!2513464 () Int)

(assert (=> d!1202993 (= lt!1443896 e!2513464)))

(declare-fun c!699737 () Bool)

(assert (=> d!1202993 (= c!699737 (is-Nil!43302 lt!1443625))))

(assert (=> d!1202993 (= (size!32375 lt!1443625) lt!1443896)))

(declare-fun b!4050820 () Bool)

(assert (=> b!4050820 (= e!2513464 0)))

(declare-fun b!4050821 () Bool)

(assert (=> b!4050821 (= e!2513464 (+ 1 (size!32375 (t!335877 lt!1443625))))))

(assert (= (and d!1202993 c!699737) b!4050820))

(assert (= (and d!1202993 (not c!699737)) b!4050821))

(declare-fun m!4651857 () Bool)

(assert (=> b!4050821 m!4651857))

(assert (=> b!4050439 d!1202993))

(declare-fun b!4050823 () Bool)

(declare-fun e!2513466 () List!43426)

(assert (=> b!4050823 (= e!2513466 (Cons!43302 (h!48722 lt!1443625) (++!11341 (t!335877 lt!1443625) newSuffixResult!27)))))

(declare-fun b!4050822 () Bool)

(assert (=> b!4050822 (= e!2513466 newSuffixResult!27)))

(declare-fun d!1202995 () Bool)

(declare-fun e!2513465 () Bool)

(assert (=> d!1202995 e!2513465))

(declare-fun res!1650900 () Bool)

(assert (=> d!1202995 (=> (not res!1650900) (not e!2513465))))

(declare-fun lt!1443897 () List!43426)

(assert (=> d!1202995 (= res!1650900 (= (content!6596 lt!1443897) (set.union (content!6596 lt!1443625) (content!6596 newSuffixResult!27))))))

(assert (=> d!1202995 (= lt!1443897 e!2513466)))

(declare-fun c!699738 () Bool)

(assert (=> d!1202995 (= c!699738 (is-Nil!43302 lt!1443625))))

(assert (=> d!1202995 (= (++!11341 lt!1443625 newSuffixResult!27) lt!1443897)))

(declare-fun b!4050824 () Bool)

(declare-fun res!1650899 () Bool)

(assert (=> b!4050824 (=> (not res!1650899) (not e!2513465))))

(assert (=> b!4050824 (= res!1650899 (= (size!32375 lt!1443897) (+ (size!32375 lt!1443625) (size!32375 newSuffixResult!27))))))

(declare-fun b!4050825 () Bool)

(assert (=> b!4050825 (= e!2513465 (or (not (= newSuffixResult!27 Nil!43302)) (= lt!1443897 lt!1443625)))))

(assert (= (and d!1202995 c!699738) b!4050822))

(assert (= (and d!1202995 (not c!699738)) b!4050823))

(assert (= (and d!1202995 res!1650900) b!4050824))

(assert (= (and b!4050824 res!1650899) b!4050825))

(declare-fun m!4651859 () Bool)

(assert (=> b!4050823 m!4651859))

(declare-fun m!4651861 () Bool)

(assert (=> d!1202995 m!4651861))

(assert (=> d!1202995 m!4651833))

(declare-fun m!4651863 () Bool)

(assert (=> d!1202995 m!4651863))

(declare-fun m!4651865 () Bool)

(assert (=> b!4050824 m!4651865))

(assert (=> b!4050824 m!4651321))

(declare-fun m!4651867 () Bool)

(assert (=> b!4050824 m!4651867))

(assert (=> b!4050439 d!1202995))

(declare-fun d!1202997 () Bool)

(assert (=> d!1202997 (= (size!32376 token!484) (size!32375 (originalCharacters!7539 token!484)))))

(declare-fun Unit!62596 () Unit!62585)

(assert (=> d!1202997 (= (lemmaCharactersSize!1458 token!484) Unit!62596)))

(declare-fun bs!591520 () Bool)

(assert (= bs!591520 d!1202997))

(assert (=> bs!591520 m!4651241))

(assert (=> b!4050439 d!1202997))

(declare-fun d!1202999 () Bool)

(assert (=> d!1202999 (isPrefix!4026 lt!1443625 (++!11341 lt!1443625 (_2!24322 (v!39762 lt!1443644))))))

(declare-fun lt!1443898 () Unit!62585)

(assert (=> d!1202999 (= lt!1443898 (choose!24575 lt!1443625 (_2!24322 (v!39762 lt!1443644))))))

(assert (=> d!1202999 (= (lemmaConcatTwoListThenFirstIsPrefix!2861 lt!1443625 (_2!24322 (v!39762 lt!1443644))) lt!1443898)))

(declare-fun bs!591521 () Bool)

(assert (= bs!591521 d!1202999))

(assert (=> bs!591521 m!4651335))

(assert (=> bs!591521 m!4651335))

(declare-fun m!4651869 () Bool)

(assert (=> bs!591521 m!4651869))

(declare-fun m!4651871 () Bool)

(assert (=> bs!591521 m!4651871))

(assert (=> b!4050439 d!1202999))

(declare-fun d!1203001 () Bool)

(declare-fun e!2513468 () Bool)

(assert (=> d!1203001 e!2513468))

(declare-fun res!1650904 () Bool)

(assert (=> d!1203001 (=> res!1650904 e!2513468)))

(declare-fun lt!1443899 () Bool)

(assert (=> d!1203001 (= res!1650904 (not lt!1443899))))

(declare-fun e!2513467 () Bool)

(assert (=> d!1203001 (= lt!1443899 e!2513467)))

(declare-fun res!1650902 () Bool)

(assert (=> d!1203001 (=> res!1650902 e!2513467)))

(assert (=> d!1203001 (= res!1650902 (is-Nil!43302 lt!1443625))))

(assert (=> d!1203001 (= (isPrefix!4026 lt!1443625 (++!11341 lt!1443625 newSuffixResult!27)) lt!1443899)))

(declare-fun b!4050828 () Bool)

(declare-fun e!2513469 () Bool)

(assert (=> b!4050828 (= e!2513469 (isPrefix!4026 (tail!6294 lt!1443625) (tail!6294 (++!11341 lt!1443625 newSuffixResult!27))))))

(declare-fun b!4050827 () Bool)

(declare-fun res!1650901 () Bool)

(assert (=> b!4050827 (=> (not res!1650901) (not e!2513469))))

(assert (=> b!4050827 (= res!1650901 (= (head!8562 lt!1443625) (head!8562 (++!11341 lt!1443625 newSuffixResult!27))))))

(declare-fun b!4050826 () Bool)

(assert (=> b!4050826 (= e!2513467 e!2513469)))

(declare-fun res!1650903 () Bool)

(assert (=> b!4050826 (=> (not res!1650903) (not e!2513469))))

(assert (=> b!4050826 (= res!1650903 (not (is-Nil!43302 (++!11341 lt!1443625 newSuffixResult!27))))))

(declare-fun b!4050829 () Bool)

(assert (=> b!4050829 (= e!2513468 (>= (size!32375 (++!11341 lt!1443625 newSuffixResult!27)) (size!32375 lt!1443625)))))

(assert (= (and d!1203001 (not res!1650902)) b!4050826))

(assert (= (and b!4050826 res!1650903) b!4050827))

(assert (= (and b!4050827 res!1650901) b!4050828))

(assert (= (and d!1203001 (not res!1650904)) b!4050829))

(assert (=> b!4050828 m!4651761))

(assert (=> b!4050828 m!4651323))

(declare-fun m!4651873 () Bool)

(assert (=> b!4050828 m!4651873))

(assert (=> b!4050828 m!4651761))

(assert (=> b!4050828 m!4651873))

(declare-fun m!4651875 () Bool)

(assert (=> b!4050828 m!4651875))

(assert (=> b!4050827 m!4651753))

(assert (=> b!4050827 m!4651323))

(declare-fun m!4651877 () Bool)

(assert (=> b!4050827 m!4651877))

(assert (=> b!4050829 m!4651323))

(declare-fun m!4651879 () Bool)

(assert (=> b!4050829 m!4651879))

(assert (=> b!4050829 m!4651321))

(assert (=> b!4050439 d!1203001))

(declare-fun d!1203003 () Bool)

(assert (=> d!1203003 (= (seqFromList!5156 lt!1443625) (fromListB!2353 lt!1443625))))

(declare-fun bs!591522 () Bool)

(assert (= bs!591522 d!1203003))

(declare-fun m!4651881 () Bool)

(assert (=> bs!591522 m!4651881))

(assert (=> b!4050439 d!1203003))

(declare-fun b!4050834 () Bool)

(declare-fun e!2513472 () Option!9353)

(declare-fun lt!1443904 () tuple2!42380)

(assert (=> b!4050834 (= e!2513472 (Some!9352 (tuple2!42377 (Token!13017 (apply!10128 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (seqFromList!5156 (_1!24324 lt!1443904))) (rule!10021 (_1!24322 (v!39762 lt!1443644))) (size!32379 (seqFromList!5156 (_1!24324 lt!1443904))) (_1!24324 lt!1443904)) (_2!24324 lt!1443904))))))

(declare-fun lt!1443902 () Unit!62585)

(assert (=> b!4050834 (= lt!1443902 (longestMatchIsAcceptedByMatchOrIsEmpty!1369 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) lt!1443605))))

(declare-fun res!1650910 () Bool)

(assert (=> b!4050834 (= res!1650910 (isEmpty!25846 (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) Nil!43302 (size!32375 Nil!43302) lt!1443605 lt!1443605 (size!32375 lt!1443605)))))))

(declare-fun e!2513473 () Bool)

(assert (=> b!4050834 (=> res!1650910 e!2513473)))

(assert (=> b!4050834 e!2513473))

(declare-fun lt!1443905 () Unit!62585)

(assert (=> b!4050834 (= lt!1443905 lt!1443902)))

(declare-fun lt!1443906 () Unit!62585)

(assert (=> b!4050834 (= lt!1443906 (lemmaSemiInverse!1918 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (seqFromList!5156 (_1!24324 lt!1443904))))))

(declare-fun b!4050835 () Bool)

(declare-fun res!1650905 () Bool)

(declare-fun e!2513475 () Bool)

(assert (=> b!4050835 (=> (not res!1650905) (not e!2513475))))

(declare-fun lt!1443903 () Option!9353)

(assert (=> b!4050835 (= res!1650905 (= (rule!10021 (_1!24322 (get!14207 lt!1443903))) (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))

(declare-fun b!4050836 () Bool)

(declare-fun e!2513474 () Bool)

(assert (=> b!4050836 (= e!2513474 e!2513475)))

(declare-fun res!1650909 () Bool)

(assert (=> b!4050836 (=> (not res!1650909) (not e!2513475))))

(assert (=> b!4050836 (= res!1650909 (matchR!5797 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443903))))))))

(declare-fun d!1203005 () Bool)

(assert (=> d!1203005 e!2513474))

(declare-fun res!1650911 () Bool)

(assert (=> d!1203005 (=> res!1650911 e!2513474)))

(assert (=> d!1203005 (= res!1650911 (isEmpty!25847 lt!1443903))))

(assert (=> d!1203005 (= lt!1443903 e!2513472)))

(declare-fun c!699741 () Bool)

(assert (=> d!1203005 (= c!699741 (isEmpty!25846 (_1!24324 lt!1443904)))))

(assert (=> d!1203005 (= lt!1443904 (findLongestMatch!1309 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) lt!1443605))))

(assert (=> d!1203005 (ruleValid!2869 thiss!21717 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))

(assert (=> d!1203005 (= (maxPrefixOneRule!2838 thiss!21717 (rule!10021 (_1!24322 (v!39762 lt!1443644))) lt!1443605) lt!1443903)))

(declare-fun b!4050837 () Bool)

(assert (=> b!4050837 (= e!2513472 None!9352)))

(declare-fun b!4050838 () Bool)

(declare-fun res!1650907 () Bool)

(assert (=> b!4050838 (=> (not res!1650907) (not e!2513475))))

(assert (=> b!4050838 (= res!1650907 (< (size!32375 (_2!24322 (get!14207 lt!1443903))) (size!32375 lt!1443605)))))

(declare-fun b!4050839 () Bool)

(declare-fun res!1650906 () Bool)

(assert (=> b!4050839 (=> (not res!1650906) (not e!2513475))))

(assert (=> b!4050839 (= res!1650906 (= (value!218397 (_1!24322 (get!14207 lt!1443903))) (apply!10128 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443903)))) (seqFromList!5156 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443903)))))))))

(declare-fun b!4050840 () Bool)

(declare-fun res!1650908 () Bool)

(assert (=> b!4050840 (=> (not res!1650908) (not e!2513475))))

(assert (=> b!4050840 (= res!1650908 (= (++!11341 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443903)))) (_2!24322 (get!14207 lt!1443903))) lt!1443605))))

(declare-fun b!4050841 () Bool)

(assert (=> b!4050841 (= e!2513475 (= (size!32376 (_1!24322 (get!14207 lt!1443903))) (size!32375 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443903))))))))

(declare-fun b!4050842 () Bool)

(assert (=> b!4050842 (= e!2513473 (matchR!5797 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) Nil!43302 (size!32375 Nil!43302) lt!1443605 lt!1443605 (size!32375 lt!1443605)))))))

(assert (= (and d!1203005 c!699741) b!4050837))

(assert (= (and d!1203005 (not c!699741)) b!4050834))

(assert (= (and b!4050834 (not res!1650910)) b!4050842))

(assert (= (and d!1203005 (not res!1650911)) b!4050836))

(assert (= (and b!4050836 res!1650909) b!4050840))

(assert (= (and b!4050840 res!1650908) b!4050838))

(assert (= (and b!4050838 res!1650907) b!4050835))

(assert (= (and b!4050835 res!1650905) b!4050839))

(assert (= (and b!4050839 res!1650906) b!4050841))

(declare-fun m!4651883 () Bool)

(assert (=> b!4050836 m!4651883))

(declare-fun m!4651885 () Bool)

(assert (=> b!4050836 m!4651885))

(assert (=> b!4050836 m!4651885))

(declare-fun m!4651887 () Bool)

(assert (=> b!4050836 m!4651887))

(assert (=> b!4050836 m!4651887))

(declare-fun m!4651889 () Bool)

(assert (=> b!4050836 m!4651889))

(declare-fun m!4651891 () Bool)

(assert (=> d!1203005 m!4651891))

(declare-fun m!4651893 () Bool)

(assert (=> d!1203005 m!4651893))

(declare-fun m!4651895 () Bool)

(assert (=> d!1203005 m!4651895))

(assert (=> d!1203005 m!4651315))

(assert (=> b!4050834 m!4651683))

(declare-fun m!4651897 () Bool)

(assert (=> b!4050834 m!4651897))

(declare-fun m!4651899 () Bool)

(assert (=> b!4050834 m!4651899))

(declare-fun m!4651901 () Bool)

(assert (=> b!4050834 m!4651901))

(declare-fun m!4651903 () Bool)

(assert (=> b!4050834 m!4651903))

(assert (=> b!4050834 m!4651901))

(assert (=> b!4050834 m!4651901))

(declare-fun m!4651905 () Bool)

(assert (=> b!4050834 m!4651905))

(declare-fun m!4651907 () Bool)

(assert (=> b!4050834 m!4651907))

(assert (=> b!4050834 m!4651901))

(declare-fun m!4651909 () Bool)

(assert (=> b!4050834 m!4651909))

(assert (=> b!4050834 m!4651897))

(declare-fun m!4651911 () Bool)

(assert (=> b!4050834 m!4651911))

(assert (=> b!4050834 m!4651683))

(assert (=> b!4050835 m!4651883))

(assert (=> b!4050842 m!4651683))

(assert (=> b!4050842 m!4651897))

(assert (=> b!4050842 m!4651683))

(assert (=> b!4050842 m!4651897))

(assert (=> b!4050842 m!4651899))

(declare-fun m!4651913 () Bool)

(assert (=> b!4050842 m!4651913))

(assert (=> b!4050838 m!4651883))

(declare-fun m!4651915 () Bool)

(assert (=> b!4050838 m!4651915))

(assert (=> b!4050838 m!4651897))

(assert (=> b!4050841 m!4651883))

(declare-fun m!4651917 () Bool)

(assert (=> b!4050841 m!4651917))

(assert (=> b!4050839 m!4651883))

(declare-fun m!4651919 () Bool)

(assert (=> b!4050839 m!4651919))

(assert (=> b!4050839 m!4651919))

(declare-fun m!4651921 () Bool)

(assert (=> b!4050839 m!4651921))

(assert (=> b!4050840 m!4651883))

(assert (=> b!4050840 m!4651885))

(assert (=> b!4050840 m!4651885))

(assert (=> b!4050840 m!4651887))

(assert (=> b!4050840 m!4651887))

(declare-fun m!4651923 () Bool)

(assert (=> b!4050840 m!4651923))

(assert (=> b!4050439 d!1203005))

(declare-fun d!1203007 () Bool)

(declare-fun res!1650916 () Bool)

(declare-fun e!2513479 () Bool)

(assert (=> d!1203007 (=> (not res!1650916) (not e!2513479))))

(assert (=> d!1203007 (= res!1650916 (validRegex!5359 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))

(assert (=> d!1203007 (= (ruleValid!2869 thiss!21717 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) e!2513479)))

(declare-fun b!4050849 () Bool)

(declare-fun res!1650917 () Bool)

(assert (=> b!4050849 (=> (not res!1650917) (not e!2513479))))

(assert (=> b!4050849 (= res!1650917 (not (nullable!4159 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))))

(declare-fun b!4050850 () Bool)

(assert (=> b!4050850 (= e!2513479 (not (= (tag!7799 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (String!49566 ""))))))

(assert (= (and d!1203007 res!1650916) b!4050849))

(assert (= (and b!4050849 res!1650917) b!4050850))

(assert (=> d!1203007 m!4651757))

(assert (=> b!4050849 m!4651767))

(assert (=> b!4050439 d!1203007))

(declare-fun d!1203011 () Bool)

(assert (=> d!1203011 (= (size!32376 (_1!24322 (v!39762 lt!1443644))) (size!32375 (originalCharacters!7539 (_1!24322 (v!39762 lt!1443644)))))))

(declare-fun Unit!62597 () Unit!62585)

(assert (=> d!1203011 (= (lemmaCharactersSize!1458 (_1!24322 (v!39762 lt!1443644))) Unit!62597)))

(declare-fun bs!591523 () Bool)

(assert (= bs!591523 d!1203011))

(declare-fun m!4651933 () Bool)

(assert (=> bs!591523 m!4651933))

(assert (=> b!4050439 d!1203011))

(declare-fun b!4050852 () Bool)

(declare-fun e!2513481 () List!43426)

(assert (=> b!4050852 (= e!2513481 (Cons!43302 (h!48722 lt!1443622) (++!11341 (t!335877 lt!1443622) suffixResult!105)))))

(declare-fun b!4050851 () Bool)

(assert (=> b!4050851 (= e!2513481 suffixResult!105)))

(declare-fun d!1203013 () Bool)

(declare-fun e!2513480 () Bool)

(assert (=> d!1203013 e!2513480))

(declare-fun res!1650919 () Bool)

(assert (=> d!1203013 (=> (not res!1650919) (not e!2513480))))

(declare-fun lt!1443908 () List!43426)

(assert (=> d!1203013 (= res!1650919 (= (content!6596 lt!1443908) (set.union (content!6596 lt!1443622) (content!6596 suffixResult!105))))))

(assert (=> d!1203013 (= lt!1443908 e!2513481)))

(declare-fun c!699743 () Bool)

(assert (=> d!1203013 (= c!699743 (is-Nil!43302 lt!1443622))))

(assert (=> d!1203013 (= (++!11341 lt!1443622 suffixResult!105) lt!1443908)))

(declare-fun b!4050853 () Bool)

(declare-fun res!1650918 () Bool)

(assert (=> b!4050853 (=> (not res!1650918) (not e!2513480))))

(assert (=> b!4050853 (= res!1650918 (= (size!32375 lt!1443908) (+ (size!32375 lt!1443622) (size!32375 suffixResult!105))))))

(declare-fun b!4050854 () Bool)

(assert (=> b!4050854 (= e!2513480 (or (not (= suffixResult!105 Nil!43302)) (= lt!1443908 lt!1443622)))))

(assert (= (and d!1203013 c!699743) b!4050851))

(assert (= (and d!1203013 (not c!699743)) b!4050852))

(assert (= (and d!1203013 res!1650919) b!4050853))

(assert (= (and b!4050853 res!1650918) b!4050854))

(declare-fun m!4651935 () Bool)

(assert (=> b!4050852 m!4651935))

(declare-fun m!4651937 () Bool)

(assert (=> d!1203013 m!4651937))

(assert (=> d!1203013 m!4651615))

(declare-fun m!4651939 () Bool)

(assert (=> d!1203013 m!4651939))

(declare-fun m!4651941 () Bool)

(assert (=> b!4050853 m!4651941))

(assert (=> b!4050853 m!4651297))

(declare-fun m!4651943 () Bool)

(assert (=> b!4050853 m!4651943))

(assert (=> b!4050461 d!1203013))

(declare-fun d!1203015 () Bool)

(declare-fun e!2513482 () Bool)

(assert (=> d!1203015 e!2513482))

(declare-fun res!1650920 () Bool)

(assert (=> d!1203015 (=> (not res!1650920) (not e!2513482))))

(assert (=> d!1203015 (= res!1650920 (semiInverseModEq!2967 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (toValue!9491 (transformation!6939 (rule!10021 token!484)))))))

(declare-fun Unit!62598 () Unit!62585)

(assert (=> d!1203015 (= (lemmaInv!1148 (transformation!6939 (rule!10021 token!484))) Unit!62598)))

(declare-fun b!4050855 () Bool)

(assert (=> b!4050855 (= e!2513482 (equivClasses!2866 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (toValue!9491 (transformation!6939 (rule!10021 token!484)))))))

(assert (= (and d!1203015 res!1650920) b!4050855))

(assert (=> d!1203015 m!4651597))

(assert (=> b!4050855 m!4651599))

(assert (=> b!4050461 d!1203015))

(declare-fun d!1203017 () Bool)

(declare-fun res!1650921 () Bool)

(declare-fun e!2513483 () Bool)

(assert (=> d!1203017 (=> (not res!1650921) (not e!2513483))))

(assert (=> d!1203017 (= res!1650921 (validRegex!5359 (regex!6939 (rule!10021 token!484))))))

(assert (=> d!1203017 (= (ruleValid!2869 thiss!21717 (rule!10021 token!484)) e!2513483)))

(declare-fun b!4050856 () Bool)

(declare-fun res!1650922 () Bool)

(assert (=> b!4050856 (=> (not res!1650922) (not e!2513483))))

(assert (=> b!4050856 (= res!1650922 (not (nullable!4159 (regex!6939 (rule!10021 token!484)))))))

(declare-fun b!4050857 () Bool)

(assert (=> b!4050857 (= e!2513483 (not (= (tag!7799 (rule!10021 token!484)) (String!49566 ""))))))

(assert (= (and d!1203017 res!1650921) b!4050856))

(assert (= (and b!4050856 res!1650922) b!4050857))

(declare-fun m!4651945 () Bool)

(assert (=> d!1203017 m!4651945))

(declare-fun m!4651947 () Bool)

(assert (=> b!4050856 m!4651947))

(assert (=> b!4050461 d!1203017))

(declare-fun d!1203019 () Bool)

(assert (=> d!1203019 (ruleValid!2869 thiss!21717 (rule!10021 token!484))))

(declare-fun lt!1443909 () Unit!62585)

(assert (=> d!1203019 (= lt!1443909 (choose!24578 thiss!21717 (rule!10021 token!484) rules!2999))))

(assert (=> d!1203019 (contains!8611 rules!2999 (rule!10021 token!484))))

(assert (=> d!1203019 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1939 thiss!21717 (rule!10021 token!484) rules!2999) lt!1443909)))

(declare-fun bs!591524 () Bool)

(assert (= bs!591524 d!1203019))

(assert (=> bs!591524 m!4651309))

(declare-fun m!4651949 () Bool)

(assert (=> bs!591524 m!4651949))

(assert (=> bs!591524 m!4651261))

(assert (=> b!4050461 d!1203019))

(declare-fun b!4050876 () Bool)

(declare-fun e!2513497 () Bool)

(declare-fun e!2513496 () Bool)

(assert (=> b!4050876 (= e!2513497 e!2513496)))

(declare-fun c!699749 () Bool)

(assert (=> b!4050876 (= c!699749 (is-IntegerValue!21508 (value!218397 token!484)))))

(declare-fun b!4050877 () Bool)

(declare-fun e!2513498 () Bool)

(declare-fun inv!15 (TokenValue!7169) Bool)

(assert (=> b!4050877 (= e!2513498 (inv!15 (value!218397 token!484)))))

(declare-fun b!4050878 () Bool)

(declare-fun res!1650933 () Bool)

(assert (=> b!4050878 (=> res!1650933 e!2513498)))

(assert (=> b!4050878 (= res!1650933 (not (is-IntegerValue!21509 (value!218397 token!484))))))

(assert (=> b!4050878 (= e!2513496 e!2513498)))

(declare-fun d!1203021 () Bool)

(declare-fun c!699748 () Bool)

(assert (=> d!1203021 (= c!699748 (is-IntegerValue!21507 (value!218397 token!484)))))

(assert (=> d!1203021 (= (inv!21 (value!218397 token!484)) e!2513497)))

(declare-fun b!4050879 () Bool)

(declare-fun inv!17 (TokenValue!7169) Bool)

(assert (=> b!4050879 (= e!2513496 (inv!17 (value!218397 token!484)))))

(declare-fun b!4050880 () Bool)

(declare-fun inv!16 (TokenValue!7169) Bool)

(assert (=> b!4050880 (= e!2513497 (inv!16 (value!218397 token!484)))))

(assert (= (and d!1203021 c!699748) b!4050880))

(assert (= (and d!1203021 (not c!699748)) b!4050876))

(assert (= (and b!4050876 c!699749) b!4050879))

(assert (= (and b!4050876 (not c!699749)) b!4050878))

(assert (= (and b!4050878 (not res!1650933)) b!4050877))

(declare-fun m!4651951 () Bool)

(assert (=> b!4050877 m!4651951))

(declare-fun m!4651953 () Bool)

(assert (=> b!4050879 m!4651953))

(declare-fun m!4651955 () Bool)

(assert (=> b!4050880 m!4651955))

(assert (=> b!4050454 d!1203021))

(declare-fun d!1203023 () Bool)

(declare-fun lt!1443914 () Bool)

(declare-fun content!6598 (List!43428) (Set Rule!13678))

(assert (=> d!1203023 (= lt!1443914 (set.member (rule!10021 (_1!24322 (v!39762 lt!1443644))) (content!6598 rules!2999)))))

(declare-fun e!2513504 () Bool)

(assert (=> d!1203023 (= lt!1443914 e!2513504)))

(declare-fun res!1650938 () Bool)

(assert (=> d!1203023 (=> (not res!1650938) (not e!2513504))))

(assert (=> d!1203023 (= res!1650938 (is-Cons!43304 rules!2999))))

(assert (=> d!1203023 (= (contains!8611 rules!2999 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) lt!1443914)))

(declare-fun b!4050885 () Bool)

(declare-fun e!2513503 () Bool)

(assert (=> b!4050885 (= e!2513504 e!2513503)))

(declare-fun res!1650939 () Bool)

(assert (=> b!4050885 (=> res!1650939 e!2513503)))

(assert (=> b!4050885 (= res!1650939 (= (h!48724 rules!2999) (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))

(declare-fun b!4050886 () Bool)

(assert (=> b!4050886 (= e!2513503 (contains!8611 (t!335879 rules!2999) (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))

(assert (= (and d!1203023 res!1650938) b!4050885))

(assert (= (and b!4050885 (not res!1650939)) b!4050886))

(declare-fun m!4651957 () Bool)

(assert (=> d!1203023 m!4651957))

(declare-fun m!4651959 () Bool)

(assert (=> d!1203023 m!4651959))

(declare-fun m!4651961 () Bool)

(assert (=> b!4050886 m!4651961))

(assert (=> b!4050433 d!1203023))

(declare-fun d!1203025 () Bool)

(assert (=> d!1203025 (= (inv!57884 (tag!7799 (h!48724 rules!2999))) (= (mod (str.len (value!218396 (tag!7799 (h!48724 rules!2999)))) 2) 0))))

(assert (=> b!4050452 d!1203025))

(declare-fun d!1203027 () Bool)

(declare-fun res!1650944 () Bool)

(declare-fun e!2513508 () Bool)

(assert (=> d!1203027 (=> (not res!1650944) (not e!2513508))))

(assert (=> d!1203027 (= res!1650944 (semiInverseModEq!2967 (toChars!9350 (transformation!6939 (h!48724 rules!2999))) (toValue!9491 (transformation!6939 (h!48724 rules!2999)))))))

(assert (=> d!1203027 (= (inv!57888 (transformation!6939 (h!48724 rules!2999))) e!2513508)))

(declare-fun b!4050891 () Bool)

(assert (=> b!4050891 (= e!2513508 (equivClasses!2866 (toChars!9350 (transformation!6939 (h!48724 rules!2999))) (toValue!9491 (transformation!6939 (h!48724 rules!2999)))))))

(assert (= (and d!1203027 res!1650944) b!4050891))

(declare-fun m!4651963 () Bool)

(assert (=> d!1203027 m!4651963))

(declare-fun m!4651965 () Bool)

(assert (=> b!4050891 m!4651965))

(assert (=> b!4050452 d!1203027))

(declare-fun b!4050962 () Bool)

(declare-fun e!2513549 () Option!9353)

(declare-fun lt!1443943 () Option!9353)

(declare-fun lt!1443942 () Option!9353)

(assert (=> b!4050962 (= e!2513549 (ite (and (is-None!9352 lt!1443943) (is-None!9352 lt!1443942)) None!9352 (ite (is-None!9352 lt!1443942) lt!1443943 (ite (is-None!9352 lt!1443943) lt!1443942 (ite (>= (size!32376 (_1!24322 (v!39762 lt!1443943))) (size!32376 (_1!24322 (v!39762 lt!1443942)))) lt!1443943 lt!1443942)))))))

(declare-fun call!287855 () Option!9353)

(assert (=> b!4050962 (= lt!1443943 call!287855)))

(assert (=> b!4050962 (= lt!1443942 (maxPrefix!3826 thiss!21717 (t!335879 rules!2999) lt!1443629))))

(declare-fun b!4050963 () Bool)

(declare-fun res!1650992 () Bool)

(declare-fun e!2513548 () Bool)

(assert (=> b!4050963 (=> (not res!1650992) (not e!2513548))))

(declare-fun lt!1443941 () Option!9353)

(assert (=> b!4050963 (= res!1650992 (matchR!5797 (regex!6939 (rule!10021 (_1!24322 (get!14207 lt!1443941)))) (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443941))))))))

(declare-fun b!4050964 () Bool)

(assert (=> b!4050964 (= e!2513548 (contains!8611 rules!2999 (rule!10021 (_1!24322 (get!14207 lt!1443941)))))))

(declare-fun b!4050965 () Bool)

(declare-fun e!2513547 () Bool)

(assert (=> b!4050965 (= e!2513547 e!2513548)))

(declare-fun res!1650989 () Bool)

(assert (=> b!4050965 (=> (not res!1650989) (not e!2513548))))

(declare-fun isDefined!7113 (Option!9353) Bool)

(assert (=> b!4050965 (= res!1650989 (isDefined!7113 lt!1443941))))

(declare-fun b!4050966 () Bool)

(declare-fun res!1650993 () Bool)

(assert (=> b!4050966 (=> (not res!1650993) (not e!2513548))))

(assert (=> b!4050966 (= res!1650993 (= (++!11341 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443941)))) (_2!24322 (get!14207 lt!1443941))) lt!1443629))))

(declare-fun b!4050968 () Bool)

(declare-fun res!1650990 () Bool)

(assert (=> b!4050968 (=> (not res!1650990) (not e!2513548))))

(assert (=> b!4050968 (= res!1650990 (< (size!32375 (_2!24322 (get!14207 lt!1443941))) (size!32375 lt!1443629)))))

(declare-fun bm!287850 () Bool)

(assert (=> bm!287850 (= call!287855 (maxPrefixOneRule!2838 thiss!21717 (h!48724 rules!2999) lt!1443629))))

(declare-fun b!4050969 () Bool)

(assert (=> b!4050969 (= e!2513549 call!287855)))

(declare-fun b!4050970 () Bool)

(declare-fun res!1650994 () Bool)

(assert (=> b!4050970 (=> (not res!1650994) (not e!2513548))))

(assert (=> b!4050970 (= res!1650994 (= (value!218397 (_1!24322 (get!14207 lt!1443941))) (apply!10128 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443941)))) (seqFromList!5156 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443941)))))))))

(declare-fun b!4050967 () Bool)

(declare-fun res!1650988 () Bool)

(assert (=> b!4050967 (=> (not res!1650988) (not e!2513548))))

(assert (=> b!4050967 (= res!1650988 (= (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443941)))) (originalCharacters!7539 (_1!24322 (get!14207 lt!1443941)))))))

(declare-fun d!1203029 () Bool)

(assert (=> d!1203029 e!2513547))

(declare-fun res!1650991 () Bool)

(assert (=> d!1203029 (=> res!1650991 e!2513547)))

(assert (=> d!1203029 (= res!1650991 (isEmpty!25847 lt!1443941))))

(assert (=> d!1203029 (= lt!1443941 e!2513549)))

(declare-fun c!699761 () Bool)

(assert (=> d!1203029 (= c!699761 (and (is-Cons!43304 rules!2999) (is-Nil!43304 (t!335879 rules!2999))))))

(declare-fun lt!1443945 () Unit!62585)

(declare-fun lt!1443944 () Unit!62585)

(assert (=> d!1203029 (= lt!1443945 lt!1443944)))

(assert (=> d!1203029 (isPrefix!4026 lt!1443629 lt!1443629)))

(assert (=> d!1203029 (= lt!1443944 (lemmaIsPrefixRefl!2593 lt!1443629 lt!1443629))))

(declare-fun rulesValidInductive!2534 (LexerInterface!6528 List!43428) Bool)

(assert (=> d!1203029 (rulesValidInductive!2534 thiss!21717 rules!2999)))

(assert (=> d!1203029 (= (maxPrefix!3826 thiss!21717 rules!2999 lt!1443629) lt!1443941)))

(assert (= (and d!1203029 c!699761) b!4050969))

(assert (= (and d!1203029 (not c!699761)) b!4050962))

(assert (= (or b!4050969 b!4050962) bm!287850))

(assert (= (and d!1203029 (not res!1650991)) b!4050965))

(assert (= (and b!4050965 res!1650989) b!4050967))

(assert (= (and b!4050967 res!1650988) b!4050968))

(assert (= (and b!4050968 res!1650990) b!4050966))

(assert (= (and b!4050966 res!1650993) b!4050970))

(assert (= (and b!4050970 res!1650994) b!4050963))

(assert (= (and b!4050963 res!1650992) b!4050964))

(declare-fun m!4652059 () Bool)

(assert (=> b!4050963 m!4652059))

(declare-fun m!4652061 () Bool)

(assert (=> b!4050963 m!4652061))

(assert (=> b!4050963 m!4652061))

(declare-fun m!4652063 () Bool)

(assert (=> b!4050963 m!4652063))

(assert (=> b!4050963 m!4652063))

(declare-fun m!4652065 () Bool)

(assert (=> b!4050963 m!4652065))

(assert (=> b!4050968 m!4652059))

(declare-fun m!4652067 () Bool)

(assert (=> b!4050968 m!4652067))

(assert (=> b!4050968 m!4651625))

(assert (=> b!4050966 m!4652059))

(assert (=> b!4050966 m!4652061))

(assert (=> b!4050966 m!4652061))

(assert (=> b!4050966 m!4652063))

(assert (=> b!4050966 m!4652063))

(declare-fun m!4652069 () Bool)

(assert (=> b!4050966 m!4652069))

(assert (=> b!4050970 m!4652059))

(declare-fun m!4652071 () Bool)

(assert (=> b!4050970 m!4652071))

(assert (=> b!4050970 m!4652071))

(declare-fun m!4652073 () Bool)

(assert (=> b!4050970 m!4652073))

(declare-fun m!4652075 () Bool)

(assert (=> d!1203029 m!4652075))

(assert (=> d!1203029 m!4651249))

(assert (=> d!1203029 m!4651251))

(declare-fun m!4652077 () Bool)

(assert (=> d!1203029 m!4652077))

(declare-fun m!4652079 () Bool)

(assert (=> bm!287850 m!4652079))

(declare-fun m!4652081 () Bool)

(assert (=> b!4050965 m!4652081))

(assert (=> b!4050967 m!4652059))

(assert (=> b!4050967 m!4652061))

(assert (=> b!4050967 m!4652061))

(assert (=> b!4050967 m!4652063))

(declare-fun m!4652083 () Bool)

(assert (=> b!4050962 m!4652083))

(assert (=> b!4050964 m!4652059))

(declare-fun m!4652085 () Bool)

(assert (=> b!4050964 m!4652085))

(assert (=> b!4050431 d!1203029))

(declare-fun b!4050972 () Bool)

(declare-fun e!2513551 () List!43426)

(assert (=> b!4050972 (= e!2513551 (Cons!43302 (h!48722 prefix!494) (++!11341 (t!335877 prefix!494) suffix!1299)))))

(declare-fun b!4050971 () Bool)

(assert (=> b!4050971 (= e!2513551 suffix!1299)))

(declare-fun d!1203061 () Bool)

(declare-fun e!2513550 () Bool)

(assert (=> d!1203061 e!2513550))

(declare-fun res!1650996 () Bool)

(assert (=> d!1203061 (=> (not res!1650996) (not e!2513550))))

(declare-fun lt!1443948 () List!43426)

(assert (=> d!1203061 (= res!1650996 (= (content!6596 lt!1443948) (set.union (content!6596 prefix!494) (content!6596 suffix!1299))))))

(assert (=> d!1203061 (= lt!1443948 e!2513551)))

(declare-fun c!699762 () Bool)

(assert (=> d!1203061 (= c!699762 (is-Nil!43302 prefix!494))))

(assert (=> d!1203061 (= (++!11341 prefix!494 suffix!1299) lt!1443948)))

(declare-fun b!4050973 () Bool)

(declare-fun res!1650995 () Bool)

(assert (=> b!4050973 (=> (not res!1650995) (not e!2513550))))

(assert (=> b!4050973 (= res!1650995 (= (size!32375 lt!1443948) (+ (size!32375 prefix!494) (size!32375 suffix!1299))))))

(declare-fun b!4050974 () Bool)

(assert (=> b!4050974 (= e!2513550 (or (not (= suffix!1299 Nil!43302)) (= lt!1443948 prefix!494)))))

(assert (= (and d!1203061 c!699762) b!4050971))

(assert (= (and d!1203061 (not c!699762)) b!4050972))

(assert (= (and d!1203061 res!1650996) b!4050973))

(assert (= (and b!4050973 res!1650995) b!4050974))

(declare-fun m!4652087 () Bool)

(assert (=> b!4050972 m!4652087))

(declare-fun m!4652089 () Bool)

(assert (=> d!1203061 m!4652089))

(declare-fun m!4652091 () Bool)

(assert (=> d!1203061 m!4652091))

(declare-fun m!4652093 () Bool)

(assert (=> d!1203061 m!4652093))

(declare-fun m!4652095 () Bool)

(assert (=> b!4050973 m!4652095))

(assert (=> b!4050973 m!4651299))

(assert (=> b!4050973 m!4651237))

(assert (=> b!4050431 d!1203061))

(declare-fun b!4050976 () Bool)

(declare-fun e!2513553 () List!43426)

(assert (=> b!4050976 (= e!2513553 (Cons!43302 (h!48722 newSuffix!27) (++!11341 (t!335877 newSuffix!27) lt!1443636)))))

(declare-fun b!4050975 () Bool)

(assert (=> b!4050975 (= e!2513553 lt!1443636)))

(declare-fun d!1203063 () Bool)

(declare-fun e!2513552 () Bool)

(assert (=> d!1203063 e!2513552))

(declare-fun res!1650998 () Bool)

(assert (=> d!1203063 (=> (not res!1650998) (not e!2513552))))

(declare-fun lt!1443949 () List!43426)

(assert (=> d!1203063 (= res!1650998 (= (content!6596 lt!1443949) (set.union (content!6596 newSuffix!27) (content!6596 lt!1443636))))))

(assert (=> d!1203063 (= lt!1443949 e!2513553)))

(declare-fun c!699763 () Bool)

(assert (=> d!1203063 (= c!699763 (is-Nil!43302 newSuffix!27))))

(assert (=> d!1203063 (= (++!11341 newSuffix!27 lt!1443636) lt!1443949)))

(declare-fun b!4050977 () Bool)

(declare-fun res!1650997 () Bool)

(assert (=> b!4050977 (=> (not res!1650997) (not e!2513552))))

(assert (=> b!4050977 (= res!1650997 (= (size!32375 lt!1443949) (+ (size!32375 newSuffix!27) (size!32375 lt!1443636))))))

(declare-fun b!4050978 () Bool)

(assert (=> b!4050978 (= e!2513552 (or (not (= lt!1443636 Nil!43302)) (= lt!1443949 newSuffix!27)))))

(assert (= (and d!1203063 c!699763) b!4050975))

(assert (= (and d!1203063 (not c!699763)) b!4050976))

(assert (= (and d!1203063 res!1650998) b!4050977))

(assert (= (and b!4050977 res!1650997) b!4050978))

(declare-fun m!4652097 () Bool)

(assert (=> b!4050976 m!4652097))

(declare-fun m!4652099 () Bool)

(assert (=> d!1203063 m!4652099))

(declare-fun m!4652101 () Bool)

(assert (=> d!1203063 m!4652101))

(declare-fun m!4652103 () Bool)

(assert (=> d!1203063 m!4652103))

(declare-fun m!4652105 () Bool)

(assert (=> b!4050977 m!4652105))

(assert (=> b!4050977 m!4651239))

(declare-fun m!4652107 () Bool)

(assert (=> b!4050977 m!4652107))

(assert (=> b!4050456 d!1203063))

(declare-fun d!1203065 () Bool)

(declare-fun lt!1443951 () List!43426)

(assert (=> d!1203065 (= (++!11341 newSuffix!27 lt!1443951) suffix!1299)))

(declare-fun e!2513554 () List!43426)

(assert (=> d!1203065 (= lt!1443951 e!2513554)))

(declare-fun c!699764 () Bool)

(assert (=> d!1203065 (= c!699764 (is-Cons!43302 newSuffix!27))))

(assert (=> d!1203065 (>= (size!32375 suffix!1299) (size!32375 newSuffix!27))))

(assert (=> d!1203065 (= (getSuffix!2443 suffix!1299 newSuffix!27) lt!1443951)))

(declare-fun b!4050979 () Bool)

(assert (=> b!4050979 (= e!2513554 (getSuffix!2443 (tail!6294 suffix!1299) (t!335877 newSuffix!27)))))

(declare-fun b!4050980 () Bool)

(assert (=> b!4050980 (= e!2513554 suffix!1299)))

(assert (= (and d!1203065 c!699764) b!4050979))

(assert (= (and d!1203065 (not c!699764)) b!4050980))

(declare-fun m!4652111 () Bool)

(assert (=> d!1203065 m!4652111))

(assert (=> d!1203065 m!4651237))

(assert (=> d!1203065 m!4651239))

(assert (=> b!4050979 m!4651603))

(assert (=> b!4050979 m!4651603))

(declare-fun m!4652113 () Bool)

(assert (=> b!4050979 m!4652113))

(assert (=> b!4050456 d!1203065))

(declare-fun d!1203069 () Bool)

(declare-fun e!2513556 () Bool)

(assert (=> d!1203069 e!2513556))

(declare-fun res!1651002 () Bool)

(assert (=> d!1203069 (=> res!1651002 e!2513556)))

(declare-fun lt!1443952 () Bool)

(assert (=> d!1203069 (= res!1651002 (not lt!1443952))))

(declare-fun e!2513555 () Bool)

(assert (=> d!1203069 (= lt!1443952 e!2513555)))

(declare-fun res!1651000 () Bool)

(assert (=> d!1203069 (=> res!1651000 e!2513555)))

(assert (=> d!1203069 (= res!1651000 (is-Nil!43302 lt!1443625))))

(assert (=> d!1203069 (= (isPrefix!4026 lt!1443625 lt!1443605) lt!1443952)))

(declare-fun b!4050983 () Bool)

(declare-fun e!2513557 () Bool)

(assert (=> b!4050983 (= e!2513557 (isPrefix!4026 (tail!6294 lt!1443625) (tail!6294 lt!1443605)))))

(declare-fun b!4050982 () Bool)

(declare-fun res!1650999 () Bool)

(assert (=> b!4050982 (=> (not res!1650999) (not e!2513557))))

(assert (=> b!4050982 (= res!1650999 (= (head!8562 lt!1443625) (head!8562 lt!1443605)))))

(declare-fun b!4050981 () Bool)

(assert (=> b!4050981 (= e!2513555 e!2513557)))

(declare-fun res!1651001 () Bool)

(assert (=> b!4050981 (=> (not res!1651001) (not e!2513557))))

(assert (=> b!4050981 (= res!1651001 (not (is-Nil!43302 lt!1443605)))))

(declare-fun b!4050984 () Bool)

(assert (=> b!4050984 (= e!2513556 (>= (size!32375 lt!1443605) (size!32375 lt!1443625)))))

(assert (= (and d!1203069 (not res!1651000)) b!4050981))

(assert (= (and b!4050981 res!1651001) b!4050982))

(assert (= (and b!4050982 res!1650999) b!4050983))

(assert (= (and d!1203069 (not res!1651002)) b!4050984))

(assert (=> b!4050983 m!4651761))

(declare-fun m!4652115 () Bool)

(assert (=> b!4050983 m!4652115))

(assert (=> b!4050983 m!4651761))

(assert (=> b!4050983 m!4652115))

(declare-fun m!4652117 () Bool)

(assert (=> b!4050983 m!4652117))

(assert (=> b!4050982 m!4651753))

(declare-fun m!4652119 () Bool)

(assert (=> b!4050982 m!4652119))

(assert (=> b!4050984 m!4651897))

(assert (=> b!4050984 m!4651321))

(assert (=> b!4050457 d!1203069))

(declare-fun b!4050986 () Bool)

(declare-fun e!2513559 () List!43426)

(assert (=> b!4050986 (= e!2513559 (Cons!43302 (h!48722 lt!1443625) (++!11341 (t!335877 lt!1443625) lt!1443602)))))

(declare-fun b!4050985 () Bool)

(assert (=> b!4050985 (= e!2513559 lt!1443602)))

(declare-fun d!1203071 () Bool)

(declare-fun e!2513558 () Bool)

(assert (=> d!1203071 e!2513558))

(declare-fun res!1651004 () Bool)

(assert (=> d!1203071 (=> (not res!1651004) (not e!2513558))))

(declare-fun lt!1443953 () List!43426)

(assert (=> d!1203071 (= res!1651004 (= (content!6596 lt!1443953) (set.union (content!6596 lt!1443625) (content!6596 lt!1443602))))))

(assert (=> d!1203071 (= lt!1443953 e!2513559)))

(declare-fun c!699765 () Bool)

(assert (=> d!1203071 (= c!699765 (is-Nil!43302 lt!1443625))))

(assert (=> d!1203071 (= (++!11341 lt!1443625 lt!1443602) lt!1443953)))

(declare-fun b!4050987 () Bool)

(declare-fun res!1651003 () Bool)

(assert (=> b!4050987 (=> (not res!1651003) (not e!2513558))))

(assert (=> b!4050987 (= res!1651003 (= (size!32375 lt!1443953) (+ (size!32375 lt!1443625) (size!32375 lt!1443602))))))

(declare-fun b!4050988 () Bool)

(assert (=> b!4050988 (= e!2513558 (or (not (= lt!1443602 Nil!43302)) (= lt!1443953 lt!1443625)))))

(assert (= (and d!1203071 c!699765) b!4050985))

(assert (= (and d!1203071 (not c!699765)) b!4050986))

(assert (= (and d!1203071 res!1651004) b!4050987))

(assert (= (and b!4050987 res!1651003) b!4050988))

(declare-fun m!4652121 () Bool)

(assert (=> b!4050986 m!4652121))

(declare-fun m!4652123 () Bool)

(assert (=> d!1203071 m!4652123))

(assert (=> d!1203071 m!4651833))

(declare-fun m!4652125 () Bool)

(assert (=> d!1203071 m!4652125))

(declare-fun m!4652127 () Bool)

(assert (=> b!4050987 m!4652127))

(assert (=> b!4050987 m!4651321))

(declare-fun m!4652129 () Bool)

(assert (=> b!4050987 m!4652129))

(assert (=> b!4050434 d!1203071))

(declare-fun d!1203073 () Bool)

(declare-fun lt!1443954 () List!43426)

(assert (=> d!1203073 (= (++!11341 lt!1443625 lt!1443954) lt!1443605)))

(declare-fun e!2513560 () List!43426)

(assert (=> d!1203073 (= lt!1443954 e!2513560)))

(declare-fun c!699766 () Bool)

(assert (=> d!1203073 (= c!699766 (is-Cons!43302 lt!1443625))))

(assert (=> d!1203073 (>= (size!32375 lt!1443605) (size!32375 lt!1443625))))

(assert (=> d!1203073 (= (getSuffix!2443 lt!1443605 lt!1443625) lt!1443954)))

(declare-fun b!4050989 () Bool)

(assert (=> b!4050989 (= e!2513560 (getSuffix!2443 (tail!6294 lt!1443605) (t!335877 lt!1443625)))))

(declare-fun b!4050990 () Bool)

(assert (=> b!4050990 (= e!2513560 lt!1443605)))

(assert (= (and d!1203073 c!699766) b!4050989))

(assert (= (and d!1203073 (not c!699766)) b!4050990))

(declare-fun m!4652131 () Bool)

(assert (=> d!1203073 m!4652131))

(assert (=> d!1203073 m!4651897))

(assert (=> d!1203073 m!4651321))

(assert (=> b!4050989 m!4652115))

(assert (=> b!4050989 m!4652115))

(declare-fun m!4652133 () Bool)

(assert (=> b!4050989 m!4652133))

(assert (=> b!4050434 d!1203073))

(declare-fun d!1203075 () Bool)

(assert (=> d!1203075 (isPrefix!4026 lt!1443622 (++!11341 lt!1443622 suffixResult!105))))

(declare-fun lt!1443955 () Unit!62585)

(assert (=> d!1203075 (= lt!1443955 (choose!24575 lt!1443622 suffixResult!105))))

(assert (=> d!1203075 (= (lemmaConcatTwoListThenFirstIsPrefix!2861 lt!1443622 suffixResult!105) lt!1443955)))

(declare-fun bs!591530 () Bool)

(assert (= bs!591530 d!1203075))

(assert (=> bs!591530 m!4651305))

(assert (=> bs!591530 m!4651305))

(declare-fun m!4652135 () Bool)

(assert (=> bs!591530 m!4652135))

(declare-fun m!4652137 () Bool)

(assert (=> bs!591530 m!4652137))

(assert (=> b!4050427 d!1203075))

(declare-fun d!1203077 () Bool)

(declare-fun e!2513562 () Bool)

(assert (=> d!1203077 e!2513562))

(declare-fun res!1651008 () Bool)

(assert (=> d!1203077 (=> res!1651008 e!2513562)))

(declare-fun lt!1443956 () Bool)

(assert (=> d!1203077 (= res!1651008 (not lt!1443956))))

(declare-fun e!2513561 () Bool)

(assert (=> d!1203077 (= lt!1443956 e!2513561)))

(declare-fun res!1651006 () Bool)

(assert (=> d!1203077 (=> res!1651006 e!2513561)))

(assert (=> d!1203077 (= res!1651006 (is-Nil!43302 prefix!494))))

(assert (=> d!1203077 (= (isPrefix!4026 prefix!494 lt!1443629) lt!1443956)))

(declare-fun b!4050993 () Bool)

(declare-fun e!2513563 () Bool)

(assert (=> b!4050993 (= e!2513563 (isPrefix!4026 (tail!6294 prefix!494) (tail!6294 lt!1443629)))))

(declare-fun b!4050992 () Bool)

(declare-fun res!1651005 () Bool)

(assert (=> b!4050992 (=> (not res!1651005) (not e!2513563))))

(assert (=> b!4050992 (= res!1651005 (= (head!8562 prefix!494) (head!8562 lt!1443629)))))

(declare-fun b!4050991 () Bool)

(assert (=> b!4050991 (= e!2513561 e!2513563)))

(declare-fun res!1651007 () Bool)

(assert (=> b!4050991 (=> (not res!1651007) (not e!2513563))))

(assert (=> b!4050991 (= res!1651007 (not (is-Nil!43302 lt!1443629)))))

(declare-fun b!4050994 () Bool)

(assert (=> b!4050994 (= e!2513562 (>= (size!32375 lt!1443629) (size!32375 prefix!494)))))

(assert (= (and d!1203077 (not res!1651006)) b!4050991))

(assert (= (and b!4050991 res!1651007) b!4050992))

(assert (= (and b!4050992 res!1651005) b!4050993))

(assert (= (and d!1203077 (not res!1651008)) b!4050994))

(declare-fun m!4652141 () Bool)

(assert (=> b!4050993 m!4652141))

(assert (=> b!4050993 m!4651627))

(assert (=> b!4050993 m!4652141))

(assert (=> b!4050993 m!4651627))

(declare-fun m!4652143 () Bool)

(assert (=> b!4050993 m!4652143))

(declare-fun m!4652145 () Bool)

(assert (=> b!4050992 m!4652145))

(assert (=> b!4050992 m!4651633))

(assert (=> b!4050994 m!4651625))

(assert (=> b!4050994 m!4651299))

(assert (=> b!4050427 d!1203077))

(declare-fun d!1203081 () Bool)

(assert (=> d!1203081 (isPrefix!4026 prefix!494 (++!11341 prefix!494 suffix!1299))))

(declare-fun lt!1443957 () Unit!62585)

(assert (=> d!1203081 (= lt!1443957 (choose!24575 prefix!494 suffix!1299))))

(assert (=> d!1203081 (= (lemmaConcatTwoListThenFirstIsPrefix!2861 prefix!494 suffix!1299) lt!1443957)))

(declare-fun bs!591532 () Bool)

(assert (= bs!591532 d!1203081))

(assert (=> bs!591532 m!4651285))

(assert (=> bs!591532 m!4651285))

(declare-fun m!4652147 () Bool)

(assert (=> bs!591532 m!4652147))

(declare-fun m!4652149 () Bool)

(assert (=> bs!591532 m!4652149))

(assert (=> b!4050427 d!1203081))

(declare-fun d!1203083 () Bool)

(declare-fun e!2513565 () Bool)

(assert (=> d!1203083 e!2513565))

(declare-fun res!1651012 () Bool)

(assert (=> d!1203083 (=> res!1651012 e!2513565)))

(declare-fun lt!1443958 () Bool)

(assert (=> d!1203083 (= res!1651012 (not lt!1443958))))

(declare-fun e!2513564 () Bool)

(assert (=> d!1203083 (= lt!1443958 e!2513564)))

(declare-fun res!1651010 () Bool)

(assert (=> d!1203083 (=> res!1651010 e!2513564)))

(assert (=> d!1203083 (= res!1651010 (is-Nil!43302 lt!1443622))))

(assert (=> d!1203083 (= (isPrefix!4026 lt!1443622 lt!1443637) lt!1443958)))

(declare-fun b!4050997 () Bool)

(declare-fun e!2513566 () Bool)

(assert (=> b!4050997 (= e!2513566 (isPrefix!4026 (tail!6294 lt!1443622) (tail!6294 lt!1443637)))))

(declare-fun b!4050996 () Bool)

(declare-fun res!1651009 () Bool)

(assert (=> b!4050996 (=> (not res!1651009) (not e!2513566))))

(assert (=> b!4050996 (= res!1651009 (= (head!8562 lt!1443622) (head!8562 lt!1443637)))))

(declare-fun b!4050995 () Bool)

(assert (=> b!4050995 (= e!2513564 e!2513566)))

(declare-fun res!1651011 () Bool)

(assert (=> b!4050995 (=> (not res!1651011) (not e!2513566))))

(assert (=> b!4050995 (= res!1651011 (not (is-Nil!43302 lt!1443637)))))

(declare-fun b!4050998 () Bool)

(assert (=> b!4050998 (= e!2513565 (>= (size!32375 lt!1443637) (size!32375 lt!1443622)))))

(assert (= (and d!1203083 (not res!1651010)) b!4050995))

(assert (= (and b!4050995 res!1651011) b!4050996))

(assert (= (and b!4050996 res!1651009) b!4050997))

(assert (= (and d!1203083 (not res!1651012)) b!4050998))

(assert (=> b!4050997 m!4651639))

(declare-fun m!4652151 () Bool)

(assert (=> b!4050997 m!4652151))

(assert (=> b!4050997 m!4651639))

(assert (=> b!4050997 m!4652151))

(declare-fun m!4652153 () Bool)

(assert (=> b!4050997 m!4652153))

(assert (=> b!4050996 m!4651645))

(declare-fun m!4652155 () Bool)

(assert (=> b!4050996 m!4652155))

(declare-fun m!4652157 () Bool)

(assert (=> b!4050998 m!4652157))

(assert (=> b!4050998 m!4651297))

(assert (=> b!4050427 d!1203083))

(declare-fun d!1203085 () Bool)

(declare-fun e!2513568 () Bool)

(assert (=> d!1203085 e!2513568))

(declare-fun res!1651016 () Bool)

(assert (=> d!1203085 (=> res!1651016 e!2513568)))

(declare-fun lt!1443959 () Bool)

(assert (=> d!1203085 (= res!1651016 (not lt!1443959))))

(declare-fun e!2513567 () Bool)

(assert (=> d!1203085 (= lt!1443959 e!2513567)))

(declare-fun res!1651014 () Bool)

(assert (=> d!1203085 (=> res!1651014 e!2513567)))

(assert (=> d!1203085 (= res!1651014 (is-Nil!43302 lt!1443622))))

(assert (=> d!1203085 (= (isPrefix!4026 lt!1443622 lt!1443629) lt!1443959)))

(declare-fun b!4051001 () Bool)

(declare-fun e!2513569 () Bool)

(assert (=> b!4051001 (= e!2513569 (isPrefix!4026 (tail!6294 lt!1443622) (tail!6294 lt!1443629)))))

(declare-fun b!4051000 () Bool)

(declare-fun res!1651013 () Bool)

(assert (=> b!4051000 (=> (not res!1651013) (not e!2513569))))

(assert (=> b!4051000 (= res!1651013 (= (head!8562 lt!1443622) (head!8562 lt!1443629)))))

(declare-fun b!4050999 () Bool)

(assert (=> b!4050999 (= e!2513567 e!2513569)))

(declare-fun res!1651015 () Bool)

(assert (=> b!4050999 (=> (not res!1651015) (not e!2513569))))

(assert (=> b!4050999 (= res!1651015 (not (is-Nil!43302 lt!1443629)))))

(declare-fun b!4051002 () Bool)

(assert (=> b!4051002 (= e!2513568 (>= (size!32375 lt!1443629) (size!32375 lt!1443622)))))

(assert (= (and d!1203085 (not res!1651014)) b!4050999))

(assert (= (and b!4050999 res!1651015) b!4051000))

(assert (= (and b!4051000 res!1651013) b!4051001))

(assert (= (and d!1203085 (not res!1651016)) b!4051002))

(assert (=> b!4051001 m!4651639))

(assert (=> b!4051001 m!4651627))

(assert (=> b!4051001 m!4651639))

(assert (=> b!4051001 m!4651627))

(declare-fun m!4652159 () Bool)

(assert (=> b!4051001 m!4652159))

(assert (=> b!4051000 m!4651645))

(assert (=> b!4051000 m!4651633))

(assert (=> b!4051002 m!4651625))

(assert (=> b!4051002 m!4651297))

(assert (=> b!4050427 d!1203085))

(declare-fun b!4051004 () Bool)

(declare-fun e!2513571 () List!43426)

(assert (=> b!4051004 (= e!2513571 (Cons!43302 (h!48722 lt!1443622) (++!11341 (t!335877 lt!1443622) lt!1443595)))))

(declare-fun b!4051003 () Bool)

(assert (=> b!4051003 (= e!2513571 lt!1443595)))

(declare-fun d!1203087 () Bool)

(declare-fun e!2513570 () Bool)

(assert (=> d!1203087 e!2513570))

(declare-fun res!1651018 () Bool)

(assert (=> d!1203087 (=> (not res!1651018) (not e!2513570))))

(declare-fun lt!1443960 () List!43426)

(assert (=> d!1203087 (= res!1651018 (= (content!6596 lt!1443960) (set.union (content!6596 lt!1443622) (content!6596 lt!1443595))))))

(assert (=> d!1203087 (= lt!1443960 e!2513571)))

(declare-fun c!699767 () Bool)

(assert (=> d!1203087 (= c!699767 (is-Nil!43302 lt!1443622))))

(assert (=> d!1203087 (= (++!11341 lt!1443622 lt!1443595) lt!1443960)))

(declare-fun b!4051005 () Bool)

(declare-fun res!1651017 () Bool)

(assert (=> b!4051005 (=> (not res!1651017) (not e!2513570))))

(assert (=> b!4051005 (= res!1651017 (= (size!32375 lt!1443960) (+ (size!32375 lt!1443622) (size!32375 lt!1443595))))))

(declare-fun b!4051006 () Bool)

(assert (=> b!4051006 (= e!2513570 (or (not (= lt!1443595 Nil!43302)) (= lt!1443960 lt!1443622)))))

(assert (= (and d!1203087 c!699767) b!4051003))

(assert (= (and d!1203087 (not c!699767)) b!4051004))

(assert (= (and d!1203087 res!1651018) b!4051005))

(assert (= (and b!4051005 res!1651017) b!4051006))

(declare-fun m!4652161 () Bool)

(assert (=> b!4051004 m!4652161))

(declare-fun m!4652163 () Bool)

(assert (=> d!1203087 m!4652163))

(assert (=> d!1203087 m!4651615))

(declare-fun m!4652165 () Bool)

(assert (=> d!1203087 m!4652165))

(declare-fun m!4652167 () Bool)

(assert (=> b!4051005 m!4652167))

(assert (=> b!4051005 m!4651297))

(declare-fun m!4652169 () Bool)

(assert (=> b!4051005 m!4652169))

(assert (=> b!4050468 d!1203087))

(declare-fun d!1203089 () Bool)

(declare-fun lt!1443961 () List!43426)

(assert (=> d!1203089 (= (++!11341 lt!1443622 lt!1443961) prefix!494)))

(declare-fun e!2513572 () List!43426)

(assert (=> d!1203089 (= lt!1443961 e!2513572)))

(declare-fun c!699768 () Bool)

(assert (=> d!1203089 (= c!699768 (is-Cons!43302 lt!1443622))))

(assert (=> d!1203089 (>= (size!32375 prefix!494) (size!32375 lt!1443622))))

(assert (=> d!1203089 (= (getSuffix!2443 prefix!494 lt!1443622) lt!1443961)))

(declare-fun b!4051007 () Bool)

(assert (=> b!4051007 (= e!2513572 (getSuffix!2443 (tail!6294 prefix!494) (t!335877 lt!1443622)))))

(declare-fun b!4051008 () Bool)

(assert (=> b!4051008 (= e!2513572 prefix!494)))

(assert (= (and d!1203089 c!699768) b!4051007))

(assert (= (and d!1203089 (not c!699768)) b!4051008))

(declare-fun m!4652171 () Bool)

(assert (=> d!1203089 m!4652171))

(assert (=> d!1203089 m!4651299))

(assert (=> d!1203089 m!4651297))

(assert (=> b!4051007 m!4652141))

(assert (=> b!4051007 m!4652141))

(declare-fun m!4652173 () Bool)

(assert (=> b!4051007 m!4652173))

(assert (=> b!4050468 d!1203089))

(declare-fun d!1203091 () Bool)

(declare-fun e!2513574 () Bool)

(assert (=> d!1203091 e!2513574))

(declare-fun res!1651022 () Bool)

(assert (=> d!1203091 (=> res!1651022 e!2513574)))

(declare-fun lt!1443962 () Bool)

(assert (=> d!1203091 (= res!1651022 (not lt!1443962))))

(declare-fun e!2513573 () Bool)

(assert (=> d!1203091 (= lt!1443962 e!2513573)))

(declare-fun res!1651020 () Bool)

(assert (=> d!1203091 (=> res!1651020 e!2513573)))

(assert (=> d!1203091 (= res!1651020 (is-Nil!43302 lt!1443622))))

(assert (=> d!1203091 (= (isPrefix!4026 lt!1443622 prefix!494) lt!1443962)))

(declare-fun b!4051011 () Bool)

(declare-fun e!2513575 () Bool)

(assert (=> b!4051011 (= e!2513575 (isPrefix!4026 (tail!6294 lt!1443622) (tail!6294 prefix!494)))))

(declare-fun b!4051010 () Bool)

(declare-fun res!1651019 () Bool)

(assert (=> b!4051010 (=> (not res!1651019) (not e!2513575))))

(assert (=> b!4051010 (= res!1651019 (= (head!8562 lt!1443622) (head!8562 prefix!494)))))

(declare-fun b!4051009 () Bool)

(assert (=> b!4051009 (= e!2513573 e!2513575)))

(declare-fun res!1651021 () Bool)

(assert (=> b!4051009 (=> (not res!1651021) (not e!2513575))))

(assert (=> b!4051009 (= res!1651021 (not (is-Nil!43302 prefix!494)))))

(declare-fun b!4051012 () Bool)

(assert (=> b!4051012 (= e!2513574 (>= (size!32375 prefix!494) (size!32375 lt!1443622)))))

(assert (= (and d!1203091 (not res!1651020)) b!4051009))

(assert (= (and b!4051009 res!1651021) b!4051010))

(assert (= (and b!4051010 res!1651019) b!4051011))

(assert (= (and d!1203091 (not res!1651022)) b!4051012))

(assert (=> b!4051011 m!4651639))

(assert (=> b!4051011 m!4652141))

(assert (=> b!4051011 m!4651639))

(assert (=> b!4051011 m!4652141))

(declare-fun m!4652175 () Bool)

(assert (=> b!4051011 m!4652175))

(assert (=> b!4051010 m!4651645))

(assert (=> b!4051010 m!4652145))

(assert (=> b!4051012 m!4651299))

(assert (=> b!4051012 m!4651297))

(assert (=> b!4050468 d!1203091))

(declare-fun d!1203093 () Bool)

(assert (=> d!1203093 (isPrefix!4026 lt!1443622 prefix!494)))

(declare-fun lt!1443965 () Unit!62585)

(declare-fun choose!24581 (List!43426 List!43426 List!43426) Unit!62585)

(assert (=> d!1203093 (= lt!1443965 (choose!24581 prefix!494 lt!1443622 lt!1443629))))

(assert (=> d!1203093 (isPrefix!4026 prefix!494 lt!1443629)))

(assert (=> d!1203093 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!590 prefix!494 lt!1443622 lt!1443629) lt!1443965)))

(declare-fun bs!591534 () Bool)

(assert (= bs!591534 d!1203093))

(assert (=> bs!591534 m!4651377))

(declare-fun m!4652179 () Bool)

(assert (=> bs!591534 m!4652179))

(assert (=> bs!591534 m!4651277))

(assert (=> b!4050468 d!1203093))

(declare-fun d!1203097 () Bool)

(declare-fun lt!1443966 () Int)

(assert (=> d!1203097 (>= lt!1443966 0)))

(declare-fun e!2513576 () Int)

(assert (=> d!1203097 (= lt!1443966 e!2513576)))

(declare-fun c!699769 () Bool)

(assert (=> d!1203097 (= c!699769 (is-Nil!43302 suffix!1299))))

(assert (=> d!1203097 (= (size!32375 suffix!1299) lt!1443966)))

(declare-fun b!4051013 () Bool)

(assert (=> b!4051013 (= e!2513576 0)))

(declare-fun b!4051014 () Bool)

(assert (=> b!4051014 (= e!2513576 (+ 1 (size!32375 (t!335877 suffix!1299))))))

(assert (= (and d!1203097 c!699769) b!4051013))

(assert (= (and d!1203097 (not c!699769)) b!4051014))

(declare-fun m!4652181 () Bool)

(assert (=> b!4051014 m!4652181))

(assert (=> b!4050447 d!1203097))

(declare-fun d!1203099 () Bool)

(declare-fun lt!1443967 () Int)

(assert (=> d!1203099 (>= lt!1443967 0)))

(declare-fun e!2513577 () Int)

(assert (=> d!1203099 (= lt!1443967 e!2513577)))

(declare-fun c!699770 () Bool)

(assert (=> d!1203099 (= c!699770 (is-Nil!43302 newSuffix!27))))

(assert (=> d!1203099 (= (size!32375 newSuffix!27) lt!1443967)))

(declare-fun b!4051015 () Bool)

(assert (=> b!4051015 (= e!2513577 0)))

(declare-fun b!4051016 () Bool)

(assert (=> b!4051016 (= e!2513577 (+ 1 (size!32375 (t!335877 newSuffix!27))))))

(assert (= (and d!1203099 c!699770) b!4051015))

(assert (= (and d!1203099 (not c!699770)) b!4051016))

(declare-fun m!4652183 () Bool)

(assert (=> b!4051016 m!4652183))

(assert (=> b!4050447 d!1203099))

(declare-fun b!4051018 () Bool)

(declare-fun e!2513579 () List!43426)

(assert (=> b!4051018 (= e!2513579 (Cons!43302 (h!48722 lt!1443622) (++!11341 (t!335877 lt!1443622) lt!1443648)))))

(declare-fun b!4051017 () Bool)

(assert (=> b!4051017 (= e!2513579 lt!1443648)))

(declare-fun d!1203101 () Bool)

(declare-fun e!2513578 () Bool)

(assert (=> d!1203101 e!2513578))

(declare-fun res!1651024 () Bool)

(assert (=> d!1203101 (=> (not res!1651024) (not e!2513578))))

(declare-fun lt!1443968 () List!43426)

(assert (=> d!1203101 (= res!1651024 (= (content!6596 lt!1443968) (set.union (content!6596 lt!1443622) (content!6596 lt!1443648))))))

(assert (=> d!1203101 (= lt!1443968 e!2513579)))

(declare-fun c!699771 () Bool)

(assert (=> d!1203101 (= c!699771 (is-Nil!43302 lt!1443622))))

(assert (=> d!1203101 (= (++!11341 lt!1443622 lt!1443648) lt!1443968)))

(declare-fun b!4051019 () Bool)

(declare-fun res!1651023 () Bool)

(assert (=> b!4051019 (=> (not res!1651023) (not e!2513578))))

(assert (=> b!4051019 (= res!1651023 (= (size!32375 lt!1443968) (+ (size!32375 lt!1443622) (size!32375 lt!1443648))))))

(declare-fun b!4051020 () Bool)

(assert (=> b!4051020 (= e!2513578 (or (not (= lt!1443648 Nil!43302)) (= lt!1443968 lt!1443622)))))

(assert (= (and d!1203101 c!699771) b!4051017))

(assert (= (and d!1203101 (not c!699771)) b!4051018))

(assert (= (and d!1203101 res!1651024) b!4051019))

(assert (= (and b!4051019 res!1651023) b!4051020))

(declare-fun m!4652185 () Bool)

(assert (=> b!4051018 m!4652185))

(declare-fun m!4652187 () Bool)

(assert (=> d!1203101 m!4652187))

(assert (=> d!1203101 m!4651615))

(declare-fun m!4652189 () Bool)

(assert (=> d!1203101 m!4652189))

(declare-fun m!4652191 () Bool)

(assert (=> b!4051019 m!4652191))

(assert (=> b!4051019 m!4651297))

(declare-fun m!4652193 () Bool)

(assert (=> b!4051019 m!4652193))

(assert (=> b!4050469 d!1203101))

(declare-fun b!4051022 () Bool)

(declare-fun e!2513581 () List!43426)

(assert (=> b!4051022 (= e!2513581 (Cons!43302 (h!48722 lt!1443610) (++!11341 (t!335877 lt!1443610) suffix!1299)))))

(declare-fun b!4051021 () Bool)

(assert (=> b!4051021 (= e!2513581 suffix!1299)))

(declare-fun d!1203103 () Bool)

(declare-fun e!2513580 () Bool)

(assert (=> d!1203103 e!2513580))

(declare-fun res!1651026 () Bool)

(assert (=> d!1203103 (=> (not res!1651026) (not e!2513580))))

(declare-fun lt!1443969 () List!43426)

(assert (=> d!1203103 (= res!1651026 (= (content!6596 lt!1443969) (set.union (content!6596 lt!1443610) (content!6596 suffix!1299))))))

(assert (=> d!1203103 (= lt!1443969 e!2513581)))

(declare-fun c!699772 () Bool)

(assert (=> d!1203103 (= c!699772 (is-Nil!43302 lt!1443610))))

(assert (=> d!1203103 (= (++!11341 lt!1443610 suffix!1299) lt!1443969)))

(declare-fun b!4051023 () Bool)

(declare-fun res!1651025 () Bool)

(assert (=> b!4051023 (=> (not res!1651025) (not e!2513580))))

(assert (=> b!4051023 (= res!1651025 (= (size!32375 lt!1443969) (+ (size!32375 lt!1443610) (size!32375 suffix!1299))))))

(declare-fun b!4051024 () Bool)

(assert (=> b!4051024 (= e!2513580 (or (not (= suffix!1299 Nil!43302)) (= lt!1443969 lt!1443610)))))

(assert (= (and d!1203103 c!699772) b!4051021))

(assert (= (and d!1203103 (not c!699772)) b!4051022))

(assert (= (and d!1203103 res!1651026) b!4051023))

(assert (= (and b!4051023 res!1651025) b!4051024))

(declare-fun m!4652195 () Bool)

(assert (=> b!4051022 m!4652195))

(declare-fun m!4652197 () Bool)

(assert (=> d!1203103 m!4652197))

(declare-fun m!4652199 () Bool)

(assert (=> d!1203103 m!4652199))

(assert (=> d!1203103 m!4652093))

(declare-fun m!4652201 () Bool)

(assert (=> b!4051023 m!4652201))

(declare-fun m!4652203 () Bool)

(assert (=> b!4051023 m!4652203))

(assert (=> b!4051023 m!4651237))

(assert (=> b!4050469 d!1203103))

(declare-fun b!4051026 () Bool)

(declare-fun e!2513583 () List!43426)

(assert (=> b!4051026 (= e!2513583 (Cons!43302 (h!48722 lt!1443595) (++!11341 (t!335877 lt!1443595) suffix!1299)))))

(declare-fun b!4051025 () Bool)

(assert (=> b!4051025 (= e!2513583 suffix!1299)))

(declare-fun d!1203105 () Bool)

(declare-fun e!2513582 () Bool)

(assert (=> d!1203105 e!2513582))

(declare-fun res!1651028 () Bool)

(assert (=> d!1203105 (=> (not res!1651028) (not e!2513582))))

(declare-fun lt!1443970 () List!43426)

(assert (=> d!1203105 (= res!1651028 (= (content!6596 lt!1443970) (set.union (content!6596 lt!1443595) (content!6596 suffix!1299))))))

(assert (=> d!1203105 (= lt!1443970 e!2513583)))

(declare-fun c!699773 () Bool)

(assert (=> d!1203105 (= c!699773 (is-Nil!43302 lt!1443595))))

(assert (=> d!1203105 (= (++!11341 lt!1443595 suffix!1299) lt!1443970)))

(declare-fun b!4051027 () Bool)

(declare-fun res!1651027 () Bool)

(assert (=> b!4051027 (=> (not res!1651027) (not e!2513582))))

(assert (=> b!4051027 (= res!1651027 (= (size!32375 lt!1443970) (+ (size!32375 lt!1443595) (size!32375 suffix!1299))))))

(declare-fun b!4051028 () Bool)

(assert (=> b!4051028 (= e!2513582 (or (not (= suffix!1299 Nil!43302)) (= lt!1443970 lt!1443595)))))

(assert (= (and d!1203105 c!699773) b!4051025))

(assert (= (and d!1203105 (not c!699773)) b!4051026))

(assert (= (and d!1203105 res!1651028) b!4051027))

(assert (= (and b!4051027 res!1651027) b!4051028))

(declare-fun m!4652205 () Bool)

(assert (=> b!4051026 m!4652205))

(declare-fun m!4652207 () Bool)

(assert (=> d!1203105 m!4652207))

(assert (=> d!1203105 m!4652165))

(assert (=> d!1203105 m!4652093))

(declare-fun m!4652209 () Bool)

(assert (=> b!4051027 m!4652209))

(assert (=> b!4051027 m!4652169))

(assert (=> b!4051027 m!4651237))

(assert (=> b!4050469 d!1203105))

(declare-fun d!1203107 () Bool)

(assert (=> d!1203107 (= (++!11341 (++!11341 lt!1443622 lt!1443595) suffix!1299) (++!11341 lt!1443622 (++!11341 lt!1443595 suffix!1299)))))

(declare-fun lt!1443973 () Unit!62585)

(declare-fun choose!24582 (List!43426 List!43426 List!43426) Unit!62585)

(assert (=> d!1203107 (= lt!1443973 (choose!24582 lt!1443622 lt!1443595 suffix!1299))))

(assert (=> d!1203107 (= (lemmaConcatAssociativity!2643 lt!1443622 lt!1443595 suffix!1299) lt!1443973)))

(declare-fun bs!591535 () Bool)

(assert (= bs!591535 d!1203107))

(assert (=> bs!591535 m!4651373))

(declare-fun m!4652211 () Bool)

(assert (=> bs!591535 m!4652211))

(assert (=> bs!591535 m!4651373))

(declare-fun m!4652213 () Bool)

(assert (=> bs!591535 m!4652213))

(assert (=> bs!591535 m!4651367))

(declare-fun m!4652215 () Bool)

(assert (=> bs!591535 m!4652215))

(assert (=> bs!591535 m!4651367))

(assert (=> b!4050469 d!1203107))

(declare-fun b!4051030 () Bool)

(declare-fun e!2513585 () List!43426)

(assert (=> b!4051030 (= e!2513585 (Cons!43302 (h!48722 prefix!494) (++!11341 (t!335877 prefix!494) newSuffix!27)))))

(declare-fun b!4051029 () Bool)

(assert (=> b!4051029 (= e!2513585 newSuffix!27)))

(declare-fun d!1203109 () Bool)

(declare-fun e!2513584 () Bool)

(assert (=> d!1203109 e!2513584))

(declare-fun res!1651030 () Bool)

(assert (=> d!1203109 (=> (not res!1651030) (not e!2513584))))

(declare-fun lt!1443974 () List!43426)

(assert (=> d!1203109 (= res!1651030 (= (content!6596 lt!1443974) (set.union (content!6596 prefix!494) (content!6596 newSuffix!27))))))

(assert (=> d!1203109 (= lt!1443974 e!2513585)))

(declare-fun c!699774 () Bool)

(assert (=> d!1203109 (= c!699774 (is-Nil!43302 prefix!494))))

(assert (=> d!1203109 (= (++!11341 prefix!494 newSuffix!27) lt!1443974)))

(declare-fun b!4051031 () Bool)

(declare-fun res!1651029 () Bool)

(assert (=> b!4051031 (=> (not res!1651029) (not e!2513584))))

(assert (=> b!4051031 (= res!1651029 (= (size!32375 lt!1443974) (+ (size!32375 prefix!494) (size!32375 newSuffix!27))))))

(declare-fun b!4051032 () Bool)

(assert (=> b!4051032 (= e!2513584 (or (not (= newSuffix!27 Nil!43302)) (= lt!1443974 prefix!494)))))

(assert (= (and d!1203109 c!699774) b!4051029))

(assert (= (and d!1203109 (not c!699774)) b!4051030))

(assert (= (and d!1203109 res!1651030) b!4051031))

(assert (= (and b!4051031 res!1651029) b!4051032))

(declare-fun m!4652217 () Bool)

(assert (=> b!4051030 m!4652217))

(declare-fun m!4652219 () Bool)

(assert (=> d!1203109 m!4652219))

(assert (=> d!1203109 m!4652091))

(assert (=> d!1203109 m!4652101))

(declare-fun m!4652221 () Bool)

(assert (=> b!4051031 m!4652221))

(assert (=> b!4051031 m!4651299))

(assert (=> b!4051031 m!4651239))

(assert (=> b!4050451 d!1203109))

(declare-fun b!4051034 () Bool)

(declare-fun e!2513587 () List!43426)

(assert (=> b!4051034 (= e!2513587 (Cons!43302 (h!48722 lt!1443622) (++!11341 (t!335877 lt!1443622) newSuffixResult!27)))))

(declare-fun b!4051033 () Bool)

(assert (=> b!4051033 (= e!2513587 newSuffixResult!27)))

(declare-fun d!1203111 () Bool)

(declare-fun e!2513586 () Bool)

(assert (=> d!1203111 e!2513586))

(declare-fun res!1651032 () Bool)

(assert (=> d!1203111 (=> (not res!1651032) (not e!2513586))))

(declare-fun lt!1443975 () List!43426)

(assert (=> d!1203111 (= res!1651032 (= (content!6596 lt!1443975) (set.union (content!6596 lt!1443622) (content!6596 newSuffixResult!27))))))

(assert (=> d!1203111 (= lt!1443975 e!2513587)))

(declare-fun c!699775 () Bool)

(assert (=> d!1203111 (= c!699775 (is-Nil!43302 lt!1443622))))

(assert (=> d!1203111 (= (++!11341 lt!1443622 newSuffixResult!27) lt!1443975)))

(declare-fun b!4051035 () Bool)

(declare-fun res!1651031 () Bool)

(assert (=> b!4051035 (=> (not res!1651031) (not e!2513586))))

(assert (=> b!4051035 (= res!1651031 (= (size!32375 lt!1443975) (+ (size!32375 lt!1443622) (size!32375 newSuffixResult!27))))))

(declare-fun b!4051036 () Bool)

(assert (=> b!4051036 (= e!2513586 (or (not (= newSuffixResult!27 Nil!43302)) (= lt!1443975 lt!1443622)))))

(assert (= (and d!1203111 c!699775) b!4051033))

(assert (= (and d!1203111 (not c!699775)) b!4051034))

(assert (= (and d!1203111 res!1651032) b!4051035))

(assert (= (and b!4051035 res!1651031) b!4051036))

(declare-fun m!4652223 () Bool)

(assert (=> b!4051034 m!4652223))

(declare-fun m!4652225 () Bool)

(assert (=> d!1203111 m!4652225))

(assert (=> d!1203111 m!4651615))

(assert (=> d!1203111 m!4651863))

(declare-fun m!4652227 () Bool)

(assert (=> b!4051035 m!4652227))

(assert (=> b!4051035 m!4651297))

(assert (=> b!4051035 m!4651867))

(assert (=> b!4050451 d!1203111))

(declare-fun d!1203113 () Bool)

(assert (=> d!1203113 (= (isEmpty!25844 rules!2999) (is-Nil!43304 rules!2999))))

(assert (=> b!4050430 d!1203113))

(assert (=> b!4050450 d!1202957))

(declare-fun d!1203115 () Bool)

(declare-fun lt!1443976 () Int)

(assert (=> d!1203115 (>= lt!1443976 0)))

(declare-fun e!2513588 () Int)

(assert (=> d!1203115 (= lt!1443976 e!2513588)))

(declare-fun c!699776 () Bool)

(assert (=> d!1203115 (= c!699776 (is-Nil!43302 lt!1443622))))

(assert (=> d!1203115 (= (size!32375 lt!1443622) lt!1443976)))

(declare-fun b!4051037 () Bool)

(assert (=> b!4051037 (= e!2513588 0)))

(declare-fun b!4051038 () Bool)

(assert (=> b!4051038 (= e!2513588 (+ 1 (size!32375 (t!335877 lt!1443622))))))

(assert (= (and d!1203115 c!699776) b!4051037))

(assert (= (and d!1203115 (not c!699776)) b!4051038))

(declare-fun m!4652229 () Bool)

(assert (=> b!4051038 m!4652229))

(assert (=> b!4050429 d!1203115))

(declare-fun d!1203117 () Bool)

(declare-fun lt!1443977 () Int)

(assert (=> d!1203117 (>= lt!1443977 0)))

(declare-fun e!2513589 () Int)

(assert (=> d!1203117 (= lt!1443977 e!2513589)))

(declare-fun c!699777 () Bool)

(assert (=> d!1203117 (= c!699777 (is-Nil!43302 prefix!494))))

(assert (=> d!1203117 (= (size!32375 prefix!494) lt!1443977)))

(declare-fun b!4051039 () Bool)

(assert (=> b!4051039 (= e!2513589 0)))

(declare-fun b!4051040 () Bool)

(assert (=> b!4051040 (= e!2513589 (+ 1 (size!32375 (t!335877 prefix!494))))))

(assert (= (and d!1203117 c!699777) b!4051039))

(assert (= (and d!1203117 (not c!699777)) b!4051040))

(declare-fun m!4652231 () Bool)

(assert (=> b!4051040 m!4652231))

(assert (=> b!4050429 d!1203117))

(declare-fun d!1203119 () Bool)

(assert (=> d!1203119 (= (list!16133 (charsOf!4755 token!484)) (list!16135 (c!699688 (charsOf!4755 token!484))))))

(declare-fun bs!591536 () Bool)

(assert (= bs!591536 d!1203119))

(declare-fun m!4652233 () Bool)

(assert (=> bs!591536 m!4652233))

(assert (=> b!4050429 d!1203119))

(declare-fun d!1203121 () Bool)

(declare-fun lt!1443978 () BalanceConc!25894)

(assert (=> d!1203121 (= (list!16133 lt!1443978) (originalCharacters!7539 token!484))))

(assert (=> d!1203121 (= lt!1443978 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (value!218397 token!484)))))

(assert (=> d!1203121 (= (charsOf!4755 token!484) lt!1443978)))

(declare-fun b_lambda!118377 () Bool)

(assert (=> (not b_lambda!118377) (not d!1203121)))

(assert (=> d!1203121 t!335888))

(declare-fun b_and!311503 () Bool)

(assert (= b_and!311495 (and (=> t!335888 result!295296) b_and!311503)))

(assert (=> d!1203121 t!335890))

(declare-fun b_and!311505 () Bool)

(assert (= b_and!311497 (and (=> t!335890 result!295300) b_and!311505)))

(declare-fun m!4652235 () Bool)

(assert (=> d!1203121 m!4652235))

(assert (=> d!1203121 m!4651733))

(assert (=> b!4050429 d!1203121))

(declare-fun bm!287851 () Bool)

(declare-fun call!287856 () Bool)

(assert (=> bm!287851 (= call!287856 (isEmpty!25846 lt!1443622))))

(declare-fun b!4051041 () Bool)

(declare-fun e!2513593 () Bool)

(declare-fun e!2513591 () Bool)

(assert (=> b!4051041 (= e!2513593 e!2513591)))

(declare-fun res!1651038 () Bool)

(assert (=> b!4051041 (=> (not res!1651038) (not e!2513591))))

(declare-fun lt!1443979 () Bool)

(assert (=> b!4051041 (= res!1651038 (not lt!1443979))))

(declare-fun b!4051042 () Bool)

(declare-fun res!1651039 () Bool)

(declare-fun e!2513596 () Bool)

(assert (=> b!4051042 (=> res!1651039 e!2513596)))

(assert (=> b!4051042 (= res!1651039 (not (isEmpty!25846 (tail!6294 lt!1443622))))))

(declare-fun d!1203123 () Bool)

(declare-fun e!2513592 () Bool)

(assert (=> d!1203123 e!2513592))

(declare-fun c!699779 () Bool)

(assert (=> d!1203123 (= c!699779 (is-EmptyExpr!11844 (regex!6939 (rule!10021 token!484))))))

(declare-fun e!2513594 () Bool)

(assert (=> d!1203123 (= lt!1443979 e!2513594)))

(declare-fun c!699778 () Bool)

(assert (=> d!1203123 (= c!699778 (isEmpty!25846 lt!1443622))))

(assert (=> d!1203123 (validRegex!5359 (regex!6939 (rule!10021 token!484)))))

(assert (=> d!1203123 (= (matchR!5797 (regex!6939 (rule!10021 token!484)) lt!1443622) lt!1443979)))

(declare-fun b!4051043 () Bool)

(declare-fun res!1651035 () Bool)

(declare-fun e!2513590 () Bool)

(assert (=> b!4051043 (=> (not res!1651035) (not e!2513590))))

(assert (=> b!4051043 (= res!1651035 (isEmpty!25846 (tail!6294 lt!1443622)))))

(declare-fun b!4051044 () Bool)

(declare-fun e!2513595 () Bool)

(assert (=> b!4051044 (= e!2513595 (not lt!1443979))))

(declare-fun b!4051045 () Bool)

(assert (=> b!4051045 (= e!2513594 (matchR!5797 (derivativeStep!3564 (regex!6939 (rule!10021 token!484)) (head!8562 lt!1443622)) (tail!6294 lt!1443622)))))

(declare-fun b!4051046 () Bool)

(declare-fun res!1651034 () Bool)

(assert (=> b!4051046 (=> res!1651034 e!2513593)))

(assert (=> b!4051046 (= res!1651034 e!2513590)))

(declare-fun res!1651036 () Bool)

(assert (=> b!4051046 (=> (not res!1651036) (not e!2513590))))

(assert (=> b!4051046 (= res!1651036 lt!1443979)))

(declare-fun b!4051047 () Bool)

(assert (=> b!4051047 (= e!2513592 (= lt!1443979 call!287856))))

(declare-fun b!4051048 () Bool)

(assert (=> b!4051048 (= e!2513590 (= (head!8562 lt!1443622) (c!699689 (regex!6939 (rule!10021 token!484)))))))

(declare-fun b!4051049 () Bool)

(assert (=> b!4051049 (= e!2513596 (not (= (head!8562 lt!1443622) (c!699689 (regex!6939 (rule!10021 token!484))))))))

(declare-fun b!4051050 () Bool)

(declare-fun res!1651033 () Bool)

(assert (=> b!4051050 (=> res!1651033 e!2513593)))

(assert (=> b!4051050 (= res!1651033 (not (is-ElementMatch!11844 (regex!6939 (rule!10021 token!484)))))))

(assert (=> b!4051050 (= e!2513595 e!2513593)))

(declare-fun b!4051051 () Bool)

(assert (=> b!4051051 (= e!2513591 e!2513596)))

(declare-fun res!1651040 () Bool)

(assert (=> b!4051051 (=> res!1651040 e!2513596)))

(assert (=> b!4051051 (= res!1651040 call!287856)))

(declare-fun b!4051052 () Bool)

(assert (=> b!4051052 (= e!2513592 e!2513595)))

(declare-fun c!699780 () Bool)

(assert (=> b!4051052 (= c!699780 (is-EmptyLang!11844 (regex!6939 (rule!10021 token!484))))))

(declare-fun b!4051053 () Bool)

(assert (=> b!4051053 (= e!2513594 (nullable!4159 (regex!6939 (rule!10021 token!484))))))

(declare-fun b!4051054 () Bool)

(declare-fun res!1651037 () Bool)

(assert (=> b!4051054 (=> (not res!1651037) (not e!2513590))))

(assert (=> b!4051054 (= res!1651037 (not call!287856))))

(assert (= (and d!1203123 c!699778) b!4051053))

(assert (= (and d!1203123 (not c!699778)) b!4051045))

(assert (= (and d!1203123 c!699779) b!4051047))

(assert (= (and d!1203123 (not c!699779)) b!4051052))

(assert (= (and b!4051052 c!699780) b!4051044))

(assert (= (and b!4051052 (not c!699780)) b!4051050))

(assert (= (and b!4051050 (not res!1651033)) b!4051046))

(assert (= (and b!4051046 res!1651036) b!4051054))

(assert (= (and b!4051054 res!1651037) b!4051043))

(assert (= (and b!4051043 res!1651035) b!4051048))

(assert (= (and b!4051046 (not res!1651034)) b!4051041))

(assert (= (and b!4051041 res!1651038) b!4051051))

(assert (= (and b!4051051 (not res!1651040)) b!4051042))

(assert (= (and b!4051042 (not res!1651039)) b!4051049))

(assert (= (or b!4051047 b!4051054 b!4051051) bm!287851))

(assert (=> b!4051048 m!4651645))

(declare-fun m!4652237 () Bool)

(assert (=> d!1203123 m!4652237))

(assert (=> d!1203123 m!4651945))

(assert (=> b!4051045 m!4651645))

(assert (=> b!4051045 m!4651645))

(declare-fun m!4652239 () Bool)

(assert (=> b!4051045 m!4652239))

(assert (=> b!4051045 m!4651639))

(assert (=> b!4051045 m!4652239))

(assert (=> b!4051045 m!4651639))

(declare-fun m!4652241 () Bool)

(assert (=> b!4051045 m!4652241))

(assert (=> bm!287851 m!4652237))

(assert (=> b!4051049 m!4651645))

(assert (=> b!4051042 m!4651639))

(assert (=> b!4051042 m!4651639))

(declare-fun m!4652243 () Bool)

(assert (=> b!4051042 m!4652243))

(assert (=> b!4051043 m!4651639))

(assert (=> b!4051043 m!4651639))

(assert (=> b!4051043 m!4652243))

(assert (=> b!4051053 m!4651947))

(assert (=> b!4050464 d!1203123))

(declare-fun d!1203125 () Bool)

(declare-fun e!2513598 () Bool)

(assert (=> d!1203125 e!2513598))

(declare-fun res!1651044 () Bool)

(assert (=> d!1203125 (=> res!1651044 e!2513598)))

(declare-fun lt!1443980 () Bool)

(assert (=> d!1203125 (= res!1651044 (not lt!1443980))))

(declare-fun e!2513597 () Bool)

(assert (=> d!1203125 (= lt!1443980 e!2513597)))

(declare-fun res!1651042 () Bool)

(assert (=> d!1203125 (=> res!1651042 e!2513597)))

(assert (=> d!1203125 (= res!1651042 (is-Nil!43302 lt!1443622))))

(assert (=> d!1203125 (= (isPrefix!4026 lt!1443622 lt!1443605) lt!1443980)))

(declare-fun b!4051057 () Bool)

(declare-fun e!2513599 () Bool)

(assert (=> b!4051057 (= e!2513599 (isPrefix!4026 (tail!6294 lt!1443622) (tail!6294 lt!1443605)))))

(declare-fun b!4051056 () Bool)

(declare-fun res!1651041 () Bool)

(assert (=> b!4051056 (=> (not res!1651041) (not e!2513599))))

(assert (=> b!4051056 (= res!1651041 (= (head!8562 lt!1443622) (head!8562 lt!1443605)))))

(declare-fun b!4051055 () Bool)

(assert (=> b!4051055 (= e!2513597 e!2513599)))

(declare-fun res!1651043 () Bool)

(assert (=> b!4051055 (=> (not res!1651043) (not e!2513599))))

(assert (=> b!4051055 (= res!1651043 (not (is-Nil!43302 lt!1443605)))))

(declare-fun b!4051058 () Bool)

(assert (=> b!4051058 (= e!2513598 (>= (size!32375 lt!1443605) (size!32375 lt!1443622)))))

(assert (= (and d!1203125 (not res!1651042)) b!4051055))

(assert (= (and b!4051055 res!1651043) b!4051056))

(assert (= (and b!4051056 res!1651041) b!4051057))

(assert (= (and d!1203125 (not res!1651044)) b!4051058))

(assert (=> b!4051057 m!4651639))

(assert (=> b!4051057 m!4652115))

(assert (=> b!4051057 m!4651639))

(assert (=> b!4051057 m!4652115))

(declare-fun m!4652245 () Bool)

(assert (=> b!4051057 m!4652245))

(assert (=> b!4051056 m!4651645))

(assert (=> b!4051056 m!4652119))

(assert (=> b!4051058 m!4651897))

(assert (=> b!4051058 m!4651297))

(assert (=> b!4050464 d!1203125))

(declare-fun d!1203127 () Bool)

(assert (=> d!1203127 (isPrefix!4026 lt!1443622 (++!11341 prefix!494 newSuffix!27))))

(declare-fun lt!1443983 () Unit!62585)

(declare-fun choose!24584 (List!43426 List!43426 List!43426) Unit!62585)

(assert (=> d!1203127 (= lt!1443983 (choose!24584 lt!1443622 prefix!494 newSuffix!27))))

(assert (=> d!1203127 (isPrefix!4026 lt!1443622 prefix!494)))

(assert (=> d!1203127 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!819 lt!1443622 prefix!494 newSuffix!27) lt!1443983)))

(declare-fun bs!591537 () Bool)

(assert (= bs!591537 d!1203127))

(assert (=> bs!591537 m!4651405))

(assert (=> bs!591537 m!4651405))

(declare-fun m!4652247 () Bool)

(assert (=> bs!591537 m!4652247))

(declare-fun m!4652249 () Bool)

(assert (=> bs!591537 m!4652249))

(assert (=> bs!591537 m!4651377))

(assert (=> b!4050464 d!1203127))

(declare-fun d!1203129 () Bool)

(assert (=> d!1203129 (isPrefix!4026 lt!1443622 (++!11341 prefix!494 suffix!1299))))

(declare-fun lt!1443984 () Unit!62585)

(assert (=> d!1203129 (= lt!1443984 (choose!24584 lt!1443622 prefix!494 suffix!1299))))

(assert (=> d!1203129 (isPrefix!4026 lt!1443622 prefix!494)))

(assert (=> d!1203129 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!819 lt!1443622 prefix!494 suffix!1299) lt!1443984)))

(declare-fun bs!591538 () Bool)

(assert (= bs!591538 d!1203129))

(assert (=> bs!591538 m!4651285))

(assert (=> bs!591538 m!4651285))

(declare-fun m!4652251 () Bool)

(assert (=> bs!591538 m!4652251))

(declare-fun m!4652253 () Bool)

(assert (=> bs!591538 m!4652253))

(assert (=> bs!591538 m!4651377))

(assert (=> b!4050464 d!1203129))

(declare-fun d!1203131 () Bool)

(declare-fun lt!1443985 () Int)

(assert (=> d!1203131 (>= lt!1443985 0)))

(declare-fun e!2513600 () Int)

(assert (=> d!1203131 (= lt!1443985 e!2513600)))

(declare-fun c!699781 () Bool)

(assert (=> d!1203131 (= c!699781 (is-Nil!43302 (originalCharacters!7539 token!484)))))

(assert (=> d!1203131 (= (size!32375 (originalCharacters!7539 token!484)) lt!1443985)))

(declare-fun b!4051059 () Bool)

(assert (=> b!4051059 (= e!2513600 0)))

(declare-fun b!4051060 () Bool)

(assert (=> b!4051060 (= e!2513600 (+ 1 (size!32375 (t!335877 (originalCharacters!7539 token!484)))))))

(assert (= (and d!1203131 c!699781) b!4051059))

(assert (= (and d!1203131 (not c!699781)) b!4051060))

(declare-fun m!4652255 () Bool)

(assert (=> b!4051060 m!4652255))

(assert (=> b!4050443 d!1203131))

(declare-fun d!1203133 () Bool)

(declare-fun e!2513602 () Bool)

(assert (=> d!1203133 e!2513602))

(declare-fun res!1651048 () Bool)

(assert (=> d!1203133 (=> res!1651048 e!2513602)))

(declare-fun lt!1443986 () Bool)

(assert (=> d!1203133 (= res!1651048 (not lt!1443986))))

(declare-fun e!2513601 () Bool)

(assert (=> d!1203133 (= lt!1443986 e!2513601)))

(declare-fun res!1651046 () Bool)

(assert (=> d!1203133 (=> res!1651046 e!2513601)))

(assert (=> d!1203133 (= res!1651046 (is-Nil!43302 lt!1443625))))

(assert (=> d!1203133 (= (isPrefix!4026 lt!1443625 lt!1443629) lt!1443986)))

(declare-fun b!4051063 () Bool)

(declare-fun e!2513603 () Bool)

(assert (=> b!4051063 (= e!2513603 (isPrefix!4026 (tail!6294 lt!1443625) (tail!6294 lt!1443629)))))

(declare-fun b!4051062 () Bool)

(declare-fun res!1651045 () Bool)

(assert (=> b!4051062 (=> (not res!1651045) (not e!2513603))))

(assert (=> b!4051062 (= res!1651045 (= (head!8562 lt!1443625) (head!8562 lt!1443629)))))

(declare-fun b!4051061 () Bool)

(assert (=> b!4051061 (= e!2513601 e!2513603)))

(declare-fun res!1651047 () Bool)

(assert (=> b!4051061 (=> (not res!1651047) (not e!2513603))))

(assert (=> b!4051061 (= res!1651047 (not (is-Nil!43302 lt!1443629)))))

(declare-fun b!4051064 () Bool)

(assert (=> b!4051064 (= e!2513602 (>= (size!32375 lt!1443629) (size!32375 lt!1443625)))))

(assert (= (and d!1203133 (not res!1651046)) b!4051061))

(assert (= (and b!4051061 res!1651047) b!4051062))

(assert (= (and b!4051062 res!1651045) b!4051063))

(assert (= (and d!1203133 (not res!1651048)) b!4051064))

(assert (=> b!4051063 m!4651761))

(assert (=> b!4051063 m!4651627))

(assert (=> b!4051063 m!4651761))

(assert (=> b!4051063 m!4651627))

(declare-fun m!4652257 () Bool)

(assert (=> b!4051063 m!4652257))

(assert (=> b!4051062 m!4651753))

(assert (=> b!4051062 m!4651633))

(assert (=> b!4051064 m!4651625))

(assert (=> b!4051064 m!4651321))

(assert (=> b!4050465 d!1203133))

(declare-fun d!1203135 () Bool)

(declare-fun e!2513605 () Bool)

(assert (=> d!1203135 e!2513605))

(declare-fun res!1651052 () Bool)

(assert (=> d!1203135 (=> res!1651052 e!2513605)))

(declare-fun lt!1443987 () Bool)

(assert (=> d!1203135 (= res!1651052 (not lt!1443987))))

(declare-fun e!2513604 () Bool)

(assert (=> d!1203135 (= lt!1443987 e!2513604)))

(declare-fun res!1651050 () Bool)

(assert (=> d!1203135 (=> res!1651050 e!2513604)))

(assert (=> d!1203135 (= res!1651050 (is-Nil!43302 lt!1443625))))

(assert (=> d!1203135 (= (isPrefix!4026 lt!1443625 lt!1443643) lt!1443987)))

(declare-fun b!4051067 () Bool)

(declare-fun e!2513606 () Bool)

(assert (=> b!4051067 (= e!2513606 (isPrefix!4026 (tail!6294 lt!1443625) (tail!6294 lt!1443643)))))

(declare-fun b!4051066 () Bool)

(declare-fun res!1651049 () Bool)

(assert (=> b!4051066 (=> (not res!1651049) (not e!2513606))))

(assert (=> b!4051066 (= res!1651049 (= (head!8562 lt!1443625) (head!8562 lt!1443643)))))

(declare-fun b!4051065 () Bool)

(assert (=> b!4051065 (= e!2513604 e!2513606)))

(declare-fun res!1651051 () Bool)

(assert (=> b!4051065 (=> (not res!1651051) (not e!2513606))))

(assert (=> b!4051065 (= res!1651051 (not (is-Nil!43302 lt!1443643)))))

(declare-fun b!4051068 () Bool)

(assert (=> b!4051068 (= e!2513605 (>= (size!32375 lt!1443643) (size!32375 lt!1443625)))))

(assert (= (and d!1203135 (not res!1651050)) b!4051065))

(assert (= (and b!4051065 res!1651051) b!4051066))

(assert (= (and b!4051066 res!1651049) b!4051067))

(assert (= (and d!1203135 (not res!1651052)) b!4051068))

(assert (=> b!4051067 m!4651761))

(declare-fun m!4652259 () Bool)

(assert (=> b!4051067 m!4652259))

(assert (=> b!4051067 m!4651761))

(assert (=> b!4051067 m!4652259))

(declare-fun m!4652261 () Bool)

(assert (=> b!4051067 m!4652261))

(assert (=> b!4051066 m!4651753))

(declare-fun m!4652263 () Bool)

(assert (=> b!4051066 m!4652263))

(declare-fun m!4652265 () Bool)

(assert (=> b!4051068 m!4652265))

(assert (=> b!4051068 m!4651321))

(assert (=> b!4050465 d!1203135))

(declare-fun d!1203137 () Bool)

(assert (=> d!1203137 (isPrefix!4026 lt!1443625 (++!11341 lt!1443605 lt!1443636))))

(declare-fun lt!1443988 () Unit!62585)

(assert (=> d!1203137 (= lt!1443988 (choose!24584 lt!1443625 lt!1443605 lt!1443636))))

(assert (=> d!1203137 (isPrefix!4026 lt!1443625 lt!1443605)))

(assert (=> d!1203137 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!819 lt!1443625 lt!1443605 lt!1443636) lt!1443988)))

(declare-fun bs!591539 () Bool)

(assert (= bs!591539 d!1203137))

(assert (=> bs!591539 m!4651401))

(assert (=> bs!591539 m!4651401))

(declare-fun m!4652267 () Bool)

(assert (=> bs!591539 m!4652267))

(declare-fun m!4652269 () Bool)

(assert (=> bs!591539 m!4652269))

(assert (=> bs!591539 m!4651313))

(assert (=> b!4050465 d!1203137))

(declare-fun d!1203139 () Bool)

(assert (=> d!1203139 (= (_2!24322 (v!39762 lt!1443644)) lt!1443602)))

(declare-fun lt!1443989 () Unit!62585)

(assert (=> d!1203139 (= lt!1443989 (choose!24574 lt!1443625 (_2!24322 (v!39762 lt!1443644)) lt!1443625 lt!1443602 lt!1443605))))

(assert (=> d!1203139 (isPrefix!4026 lt!1443625 lt!1443605)))

(assert (=> d!1203139 (= (lemmaSamePrefixThenSameSuffix!2187 lt!1443625 (_2!24322 (v!39762 lt!1443644)) lt!1443625 lt!1443602 lt!1443605) lt!1443989)))

(declare-fun bs!591540 () Bool)

(assert (= bs!591540 d!1203139))

(declare-fun m!4652271 () Bool)

(assert (=> bs!591540 m!4652271))

(assert (=> bs!591540 m!4651313))

(assert (=> b!4050463 d!1203139))

(declare-fun d!1203141 () Bool)

(declare-fun e!2513608 () Bool)

(assert (=> d!1203141 e!2513608))

(declare-fun res!1651056 () Bool)

(assert (=> d!1203141 (=> res!1651056 e!2513608)))

(declare-fun lt!1443990 () Bool)

(assert (=> d!1203141 (= res!1651056 (not lt!1443990))))

(declare-fun e!2513607 () Bool)

(assert (=> d!1203141 (= lt!1443990 e!2513607)))

(declare-fun res!1651054 () Bool)

(assert (=> d!1203141 (=> res!1651054 e!2513607)))

(assert (=> d!1203141 (= res!1651054 (is-Nil!43302 lt!1443625))))

(assert (=> d!1203141 (= (isPrefix!4026 lt!1443625 lt!1443600) lt!1443990)))

(declare-fun b!4051071 () Bool)

(declare-fun e!2513609 () Bool)

(assert (=> b!4051071 (= e!2513609 (isPrefix!4026 (tail!6294 lt!1443625) (tail!6294 lt!1443600)))))

(declare-fun b!4051070 () Bool)

(declare-fun res!1651053 () Bool)

(assert (=> b!4051070 (=> (not res!1651053) (not e!2513609))))

(assert (=> b!4051070 (= res!1651053 (= (head!8562 lt!1443625) (head!8562 lt!1443600)))))

(declare-fun b!4051069 () Bool)

(assert (=> b!4051069 (= e!2513607 e!2513609)))

(declare-fun res!1651055 () Bool)

(assert (=> b!4051069 (=> (not res!1651055) (not e!2513609))))

(assert (=> b!4051069 (= res!1651055 (not (is-Nil!43302 lt!1443600)))))

(declare-fun b!4051072 () Bool)

(assert (=> b!4051072 (= e!2513608 (>= (size!32375 lt!1443600) (size!32375 lt!1443625)))))

(assert (= (and d!1203141 (not res!1651054)) b!4051069))

(assert (= (and b!4051069 res!1651055) b!4051070))

(assert (= (and b!4051070 res!1651053) b!4051071))

(assert (= (and d!1203141 (not res!1651056)) b!4051072))

(assert (=> b!4051071 m!4651761))

(declare-fun m!4652273 () Bool)

(assert (=> b!4051071 m!4652273))

(assert (=> b!4051071 m!4651761))

(assert (=> b!4051071 m!4652273))

(declare-fun m!4652275 () Bool)

(assert (=> b!4051071 m!4652275))

(assert (=> b!4051070 m!4651753))

(declare-fun m!4652277 () Bool)

(assert (=> b!4051070 m!4652277))

(declare-fun m!4652279 () Bool)

(assert (=> b!4051072 m!4652279))

(assert (=> b!4051072 m!4651321))

(assert (=> b!4050463 d!1203141))

(declare-fun d!1203143 () Bool)

(assert (=> d!1203143 (isPrefix!4026 lt!1443625 (++!11341 lt!1443625 lt!1443602))))

(declare-fun lt!1443991 () Unit!62585)

(assert (=> d!1203143 (= lt!1443991 (choose!24575 lt!1443625 lt!1443602))))

(assert (=> d!1203143 (= (lemmaConcatTwoListThenFirstIsPrefix!2861 lt!1443625 lt!1443602) lt!1443991)))

(declare-fun bs!591541 () Bool)

(assert (= bs!591541 d!1203143))

(assert (=> bs!591541 m!4651233))

(assert (=> bs!591541 m!4651233))

(declare-fun m!4652281 () Bool)

(assert (=> bs!591541 m!4652281))

(declare-fun m!4652283 () Bool)

(assert (=> bs!591541 m!4652283))

(assert (=> b!4050463 d!1203143))

(declare-fun b!4051074 () Bool)

(declare-fun e!2513611 () List!43426)

(assert (=> b!4051074 (= e!2513611 (Cons!43302 (h!48722 prefix!494) (++!11341 (t!335877 prefix!494) lt!1443609)))))

(declare-fun b!4051073 () Bool)

(assert (=> b!4051073 (= e!2513611 lt!1443609)))

(declare-fun d!1203145 () Bool)

(declare-fun e!2513610 () Bool)

(assert (=> d!1203145 e!2513610))

(declare-fun res!1651058 () Bool)

(assert (=> d!1203145 (=> (not res!1651058) (not e!2513610))))

(declare-fun lt!1443992 () List!43426)

(assert (=> d!1203145 (= res!1651058 (= (content!6596 lt!1443992) (set.union (content!6596 prefix!494) (content!6596 lt!1443609))))))

(assert (=> d!1203145 (= lt!1443992 e!2513611)))

(declare-fun c!699782 () Bool)

(assert (=> d!1203145 (= c!699782 (is-Nil!43302 prefix!494))))

(assert (=> d!1203145 (= (++!11341 prefix!494 lt!1443609) lt!1443992)))

(declare-fun b!4051075 () Bool)

(declare-fun res!1651057 () Bool)

(assert (=> b!4051075 (=> (not res!1651057) (not e!2513610))))

(assert (=> b!4051075 (= res!1651057 (= (size!32375 lt!1443992) (+ (size!32375 prefix!494) (size!32375 lt!1443609))))))

(declare-fun b!4051076 () Bool)

(assert (=> b!4051076 (= e!2513610 (or (not (= lt!1443609 Nil!43302)) (= lt!1443992 prefix!494)))))

(assert (= (and d!1203145 c!699782) b!4051073))

(assert (= (and d!1203145 (not c!699782)) b!4051074))

(assert (= (and d!1203145 res!1651058) b!4051075))

(assert (= (and b!4051075 res!1651057) b!4051076))

(declare-fun m!4652285 () Bool)

(assert (=> b!4051074 m!4652285))

(declare-fun m!4652287 () Bool)

(assert (=> d!1203145 m!4652287))

(assert (=> d!1203145 m!4652091))

(declare-fun m!4652289 () Bool)

(assert (=> d!1203145 m!4652289))

(declare-fun m!4652291 () Bool)

(assert (=> b!4051075 m!4652291))

(assert (=> b!4051075 m!4651299))

(declare-fun m!4652293 () Bool)

(assert (=> b!4051075 m!4652293))

(assert (=> b!4050442 d!1203145))

(declare-fun b!4051078 () Bool)

(declare-fun e!2513613 () List!43426)

(assert (=> b!4051078 (= e!2513613 (Cons!43302 (h!48722 lt!1443605) (++!11341 (t!335877 lt!1443605) lt!1443636)))))

(declare-fun b!4051077 () Bool)

(assert (=> b!4051077 (= e!2513613 lt!1443636)))

(declare-fun d!1203147 () Bool)

(declare-fun e!2513612 () Bool)

(assert (=> d!1203147 e!2513612))

(declare-fun res!1651060 () Bool)

(assert (=> d!1203147 (=> (not res!1651060) (not e!2513612))))

(declare-fun lt!1443993 () List!43426)

(assert (=> d!1203147 (= res!1651060 (= (content!6596 lt!1443993) (set.union (content!6596 lt!1443605) (content!6596 lt!1443636))))))

(assert (=> d!1203147 (= lt!1443993 e!2513613)))

(declare-fun c!699783 () Bool)

(assert (=> d!1203147 (= c!699783 (is-Nil!43302 lt!1443605))))

(assert (=> d!1203147 (= (++!11341 lt!1443605 lt!1443636) lt!1443993)))

(declare-fun b!4051079 () Bool)

(declare-fun res!1651059 () Bool)

(assert (=> b!4051079 (=> (not res!1651059) (not e!2513612))))

(assert (=> b!4051079 (= res!1651059 (= (size!32375 lt!1443993) (+ (size!32375 lt!1443605) (size!32375 lt!1443636))))))

(declare-fun b!4051080 () Bool)

(assert (=> b!4051080 (= e!2513612 (or (not (= lt!1443636 Nil!43302)) (= lt!1443993 lt!1443605)))))

(assert (= (and d!1203147 c!699783) b!4051077))

(assert (= (and d!1203147 (not c!699783)) b!4051078))

(assert (= (and d!1203147 res!1651060) b!4051079))

(assert (= (and b!4051079 res!1651059) b!4051080))

(declare-fun m!4652295 () Bool)

(assert (=> b!4051078 m!4652295))

(declare-fun m!4652297 () Bool)

(assert (=> d!1203147 m!4652297))

(declare-fun m!4652299 () Bool)

(assert (=> d!1203147 m!4652299))

(assert (=> d!1203147 m!4652103))

(declare-fun m!4652301 () Bool)

(assert (=> b!4051079 m!4652301))

(assert (=> b!4051079 m!4651897))

(assert (=> b!4051079 m!4652107))

(assert (=> b!4050442 d!1203147))

(declare-fun d!1203149 () Bool)

(assert (=> d!1203149 (= (++!11341 (++!11341 prefix!494 newSuffix!27) lt!1443636) (++!11341 prefix!494 (++!11341 newSuffix!27 lt!1443636)))))

(declare-fun lt!1443994 () Unit!62585)

(assert (=> d!1203149 (= lt!1443994 (choose!24582 prefix!494 newSuffix!27 lt!1443636))))

(assert (=> d!1203149 (= (lemmaConcatAssociativity!2643 prefix!494 newSuffix!27 lt!1443636) lt!1443994)))

(declare-fun bs!591542 () Bool)

(assert (= bs!591542 d!1203149))

(assert (=> bs!591542 m!4651405))

(declare-fun m!4652303 () Bool)

(assert (=> bs!591542 m!4652303))

(assert (=> bs!591542 m!4651405))

(declare-fun m!4652305 () Bool)

(assert (=> bs!591542 m!4652305))

(assert (=> bs!591542 m!4651293))

(declare-fun m!4652307 () Bool)

(assert (=> bs!591542 m!4652307))

(assert (=> bs!591542 m!4651293))

(assert (=> b!4050442 d!1203149))

(declare-fun d!1203151 () Bool)

(declare-fun lt!1443995 () Bool)

(assert (=> d!1203151 (= lt!1443995 (set.member (rule!10021 token!484) (content!6598 rules!2999)))))

(declare-fun e!2513615 () Bool)

(assert (=> d!1203151 (= lt!1443995 e!2513615)))

(declare-fun res!1651061 () Bool)

(assert (=> d!1203151 (=> (not res!1651061) (not e!2513615))))

(assert (=> d!1203151 (= res!1651061 (is-Cons!43304 rules!2999))))

(assert (=> d!1203151 (= (contains!8611 rules!2999 (rule!10021 token!484)) lt!1443995)))

(declare-fun b!4051081 () Bool)

(declare-fun e!2513614 () Bool)

(assert (=> b!4051081 (= e!2513615 e!2513614)))

(declare-fun res!1651062 () Bool)

(assert (=> b!4051081 (=> res!1651062 e!2513614)))

(assert (=> b!4051081 (= res!1651062 (= (h!48724 rules!2999) (rule!10021 token!484)))))

(declare-fun b!4051082 () Bool)

(assert (=> b!4051082 (= e!2513614 (contains!8611 (t!335879 rules!2999) (rule!10021 token!484)))))

(assert (= (and d!1203151 res!1651061) b!4051081))

(assert (= (and b!4051081 (not res!1651062)) b!4051082))

(assert (=> d!1203151 m!4651957))

(declare-fun m!4652309 () Bool)

(assert (=> d!1203151 m!4652309))

(declare-fun m!4652311 () Bool)

(assert (=> b!4051082 m!4652311))

(assert (=> b!4050446 d!1203151))

(declare-fun d!1203153 () Bool)

(declare-fun res!1651065 () Bool)

(declare-fun e!2513618 () Bool)

(assert (=> d!1203153 (=> (not res!1651065) (not e!2513618))))

(declare-fun rulesValid!2701 (LexerInterface!6528 List!43428) Bool)

(assert (=> d!1203153 (= res!1651065 (rulesValid!2701 thiss!21717 rules!2999))))

(assert (=> d!1203153 (= (rulesInvariant!5871 thiss!21717 rules!2999) e!2513618)))

(declare-fun b!4051085 () Bool)

(declare-datatypes ((List!43432 0))(
  ( (Nil!43308) (Cons!43308 (h!48728 String!49565) (t!335931 List!43432)) )
))
(declare-fun noDuplicateTag!2702 (LexerInterface!6528 List!43428 List!43432) Bool)

(assert (=> b!4051085 (= e!2513618 (noDuplicateTag!2702 thiss!21717 rules!2999 Nil!43308))))

(assert (= (and d!1203153 res!1651065) b!4051085))

(declare-fun m!4652313 () Bool)

(assert (=> d!1203153 m!4652313))

(declare-fun m!4652315 () Bool)

(assert (=> b!4051085 m!4652315))

(assert (=> b!4050444 d!1203153))

(declare-fun b!4051086 () Bool)

(declare-fun e!2513621 () Option!9353)

(declare-fun lt!1443998 () Option!9353)

(declare-fun lt!1443997 () Option!9353)

(assert (=> b!4051086 (= e!2513621 (ite (and (is-None!9352 lt!1443998) (is-None!9352 lt!1443997)) None!9352 (ite (is-None!9352 lt!1443997) lt!1443998 (ite (is-None!9352 lt!1443998) lt!1443997 (ite (>= (size!32376 (_1!24322 (v!39762 lt!1443998))) (size!32376 (_1!24322 (v!39762 lt!1443997)))) lt!1443998 lt!1443997)))))))

(declare-fun call!287857 () Option!9353)

(assert (=> b!4051086 (= lt!1443998 call!287857)))

(assert (=> b!4051086 (= lt!1443997 (maxPrefix!3826 thiss!21717 (t!335879 rules!2999) lt!1443605))))

(declare-fun b!4051087 () Bool)

(declare-fun res!1651070 () Bool)

(declare-fun e!2513620 () Bool)

(assert (=> b!4051087 (=> (not res!1651070) (not e!2513620))))

(declare-fun lt!1443996 () Option!9353)

(assert (=> b!4051087 (= res!1651070 (matchR!5797 (regex!6939 (rule!10021 (_1!24322 (get!14207 lt!1443996)))) (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443996))))))))

(declare-fun b!4051088 () Bool)

(assert (=> b!4051088 (= e!2513620 (contains!8611 rules!2999 (rule!10021 (_1!24322 (get!14207 lt!1443996)))))))

(declare-fun b!4051089 () Bool)

(declare-fun e!2513619 () Bool)

(assert (=> b!4051089 (= e!2513619 e!2513620)))

(declare-fun res!1651067 () Bool)

(assert (=> b!4051089 (=> (not res!1651067) (not e!2513620))))

(assert (=> b!4051089 (= res!1651067 (isDefined!7113 lt!1443996))))

(declare-fun b!4051090 () Bool)

(declare-fun res!1651071 () Bool)

(assert (=> b!4051090 (=> (not res!1651071) (not e!2513620))))

(assert (=> b!4051090 (= res!1651071 (= (++!11341 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443996)))) (_2!24322 (get!14207 lt!1443996))) lt!1443605))))

(declare-fun b!4051092 () Bool)

(declare-fun res!1651068 () Bool)

(assert (=> b!4051092 (=> (not res!1651068) (not e!2513620))))

(assert (=> b!4051092 (= res!1651068 (< (size!32375 (_2!24322 (get!14207 lt!1443996))) (size!32375 lt!1443605)))))

(declare-fun bm!287852 () Bool)

(assert (=> bm!287852 (= call!287857 (maxPrefixOneRule!2838 thiss!21717 (h!48724 rules!2999) lt!1443605))))

(declare-fun b!4051093 () Bool)

(assert (=> b!4051093 (= e!2513621 call!287857)))

(declare-fun b!4051094 () Bool)

(declare-fun res!1651072 () Bool)

(assert (=> b!4051094 (=> (not res!1651072) (not e!2513620))))

(assert (=> b!4051094 (= res!1651072 (= (value!218397 (_1!24322 (get!14207 lt!1443996))) (apply!10128 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443996)))) (seqFromList!5156 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443996)))))))))

(declare-fun b!4051091 () Bool)

(declare-fun res!1651066 () Bool)

(assert (=> b!4051091 (=> (not res!1651066) (not e!2513620))))

(assert (=> b!4051091 (= res!1651066 (= (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443996)))) (originalCharacters!7539 (_1!24322 (get!14207 lt!1443996)))))))

(declare-fun d!1203155 () Bool)

(assert (=> d!1203155 e!2513619))

(declare-fun res!1651069 () Bool)

(assert (=> d!1203155 (=> res!1651069 e!2513619)))

(assert (=> d!1203155 (= res!1651069 (isEmpty!25847 lt!1443996))))

(assert (=> d!1203155 (= lt!1443996 e!2513621)))

(declare-fun c!699784 () Bool)

(assert (=> d!1203155 (= c!699784 (and (is-Cons!43304 rules!2999) (is-Nil!43304 (t!335879 rules!2999))))))

(declare-fun lt!1444000 () Unit!62585)

(declare-fun lt!1443999 () Unit!62585)

(assert (=> d!1203155 (= lt!1444000 lt!1443999)))

(assert (=> d!1203155 (isPrefix!4026 lt!1443605 lt!1443605)))

(assert (=> d!1203155 (= lt!1443999 (lemmaIsPrefixRefl!2593 lt!1443605 lt!1443605))))

(assert (=> d!1203155 (rulesValidInductive!2534 thiss!21717 rules!2999)))

(assert (=> d!1203155 (= (maxPrefix!3826 thiss!21717 rules!2999 lt!1443605) lt!1443996)))

(assert (= (and d!1203155 c!699784) b!4051093))

(assert (= (and d!1203155 (not c!699784)) b!4051086))

(assert (= (or b!4051093 b!4051086) bm!287852))

(assert (= (and d!1203155 (not res!1651069)) b!4051089))

(assert (= (and b!4051089 res!1651067) b!4051091))

(assert (= (and b!4051091 res!1651066) b!4051092))

(assert (= (and b!4051092 res!1651068) b!4051090))

(assert (= (and b!4051090 res!1651071) b!4051094))

(assert (= (and b!4051094 res!1651072) b!4051087))

(assert (= (and b!4051087 res!1651070) b!4051088))

(declare-fun m!4652317 () Bool)

(assert (=> b!4051087 m!4652317))

(declare-fun m!4652319 () Bool)

(assert (=> b!4051087 m!4652319))

(assert (=> b!4051087 m!4652319))

(declare-fun m!4652321 () Bool)

(assert (=> b!4051087 m!4652321))

(assert (=> b!4051087 m!4652321))

(declare-fun m!4652323 () Bool)

(assert (=> b!4051087 m!4652323))

(assert (=> b!4051092 m!4652317))

(declare-fun m!4652325 () Bool)

(assert (=> b!4051092 m!4652325))

(assert (=> b!4051092 m!4651897))

(assert (=> b!4051090 m!4652317))

(assert (=> b!4051090 m!4652319))

(assert (=> b!4051090 m!4652319))

(assert (=> b!4051090 m!4652321))

(assert (=> b!4051090 m!4652321))

(declare-fun m!4652327 () Bool)

(assert (=> b!4051090 m!4652327))

(assert (=> b!4051094 m!4652317))

(declare-fun m!4652329 () Bool)

(assert (=> b!4051094 m!4652329))

(assert (=> b!4051094 m!4652329))

(declare-fun m!4652331 () Bool)

(assert (=> b!4051094 m!4652331))

(declare-fun m!4652333 () Bool)

(assert (=> d!1203155 m!4652333))

(declare-fun m!4652335 () Bool)

(assert (=> d!1203155 m!4652335))

(declare-fun m!4652337 () Bool)

(assert (=> d!1203155 m!4652337))

(assert (=> d!1203155 m!4652077))

(declare-fun m!4652339 () Bool)

(assert (=> bm!287852 m!4652339))

(declare-fun m!4652341 () Bool)

(assert (=> b!4051089 m!4652341))

(assert (=> b!4051091 m!4652317))

(assert (=> b!4051091 m!4652319))

(assert (=> b!4051091 m!4652319))

(assert (=> b!4051091 m!4652321))

(declare-fun m!4652343 () Bool)

(assert (=> b!4051086 m!4652343))

(assert (=> b!4051088 m!4652317))

(declare-fun m!4652345 () Bool)

(assert (=> b!4051088 m!4652345))

(assert (=> b!4050466 d!1203155))

(declare-fun d!1203157 () Bool)

(assert (=> d!1203157 (= suffixResult!105 lt!1443628)))

(declare-fun lt!1444001 () Unit!62585)

(assert (=> d!1203157 (= lt!1444001 (choose!24574 lt!1443622 suffixResult!105 lt!1443622 lt!1443628 lt!1443629))))

(assert (=> d!1203157 (isPrefix!4026 lt!1443622 lt!1443629)))

(assert (=> d!1203157 (= (lemmaSamePrefixThenSameSuffix!2187 lt!1443622 suffixResult!105 lt!1443622 lt!1443628 lt!1443629) lt!1444001)))

(declare-fun bs!591543 () Bool)

(assert (= bs!591543 d!1203157))

(declare-fun m!4652347 () Bool)

(assert (=> bs!591543 m!4652347))

(assert (=> bs!591543 m!4651279))

(assert (=> b!4050466 d!1203157))

(declare-fun d!1203159 () Bool)

(declare-fun e!2513623 () Bool)

(assert (=> d!1203159 e!2513623))

(declare-fun res!1651076 () Bool)

(assert (=> d!1203159 (=> res!1651076 e!2513623)))

(declare-fun lt!1444002 () Bool)

(assert (=> d!1203159 (= res!1651076 (not lt!1444002))))

(declare-fun e!2513622 () Bool)

(assert (=> d!1203159 (= lt!1444002 e!2513622)))

(declare-fun res!1651074 () Bool)

(assert (=> d!1203159 (=> res!1651074 e!2513622)))

(assert (=> d!1203159 (= res!1651074 (is-Nil!43302 lt!1443622))))

(assert (=> d!1203159 (= (isPrefix!4026 lt!1443622 lt!1443623) lt!1444002)))

(declare-fun b!4051097 () Bool)

(declare-fun e!2513624 () Bool)

(assert (=> b!4051097 (= e!2513624 (isPrefix!4026 (tail!6294 lt!1443622) (tail!6294 lt!1443623)))))

(declare-fun b!4051096 () Bool)

(declare-fun res!1651073 () Bool)

(assert (=> b!4051096 (=> (not res!1651073) (not e!2513624))))

(assert (=> b!4051096 (= res!1651073 (= (head!8562 lt!1443622) (head!8562 lt!1443623)))))

(declare-fun b!4051095 () Bool)

(assert (=> b!4051095 (= e!2513622 e!2513624)))

(declare-fun res!1651075 () Bool)

(assert (=> b!4051095 (=> (not res!1651075) (not e!2513624))))

(assert (=> b!4051095 (= res!1651075 (not (is-Nil!43302 lt!1443623)))))

(declare-fun b!4051098 () Bool)

(assert (=> b!4051098 (= e!2513623 (>= (size!32375 lt!1443623) (size!32375 lt!1443622)))))

(assert (= (and d!1203159 (not res!1651074)) b!4051095))

(assert (= (and b!4051095 res!1651075) b!4051096))

(assert (= (and b!4051096 res!1651073) b!4051097))

(assert (= (and d!1203159 (not res!1651076)) b!4051098))

(assert (=> b!4051097 m!4651639))

(declare-fun m!4652349 () Bool)

(assert (=> b!4051097 m!4652349))

(assert (=> b!4051097 m!4651639))

(assert (=> b!4051097 m!4652349))

(declare-fun m!4652351 () Bool)

(assert (=> b!4051097 m!4652351))

(assert (=> b!4051096 m!4651645))

(declare-fun m!4652353 () Bool)

(assert (=> b!4051096 m!4652353))

(declare-fun m!4652355 () Bool)

(assert (=> b!4051098 m!4652355))

(assert (=> b!4051098 m!4651297))

(assert (=> b!4050466 d!1203159))

(declare-fun d!1203161 () Bool)

(assert (=> d!1203161 (isPrefix!4026 lt!1443622 (++!11341 lt!1443622 lt!1443628))))

(declare-fun lt!1444003 () Unit!62585)

(assert (=> d!1203161 (= lt!1444003 (choose!24575 lt!1443622 lt!1443628))))

(assert (=> d!1203161 (= (lemmaConcatTwoListThenFirstIsPrefix!2861 lt!1443622 lt!1443628) lt!1444003)))

(declare-fun bs!591544 () Bool)

(assert (= bs!591544 d!1203161))

(assert (=> bs!591544 m!4651245))

(assert (=> bs!591544 m!4651245))

(declare-fun m!4652357 () Bool)

(assert (=> bs!591544 m!4652357))

(declare-fun m!4652359 () Bool)

(assert (=> bs!591544 m!4652359))

(assert (=> b!4050466 d!1203161))

(declare-fun b!4051103 () Bool)

(declare-fun e!2513627 () Bool)

(declare-fun tp!1228452 () Bool)

(assert (=> b!4051103 (= e!2513627 (and tp_is_empty!20659 tp!1228452))))

(assert (=> b!4050432 (= tp!1228392 e!2513627)))

(assert (= (and b!4050432 (is-Cons!43302 (t!335877 newSuffix!27))) b!4051103))

(declare-fun b!4051117 () Bool)

(declare-fun e!2513630 () Bool)

(declare-fun tp!1228467 () Bool)

(declare-fun tp!1228463 () Bool)

(assert (=> b!4051117 (= e!2513630 (and tp!1228467 tp!1228463))))

(assert (=> b!4050459 (= tp!1228402 e!2513630)))

(declare-fun b!4051114 () Bool)

(assert (=> b!4051114 (= e!2513630 tp_is_empty!20659)))

(declare-fun b!4051116 () Bool)

(declare-fun tp!1228465 () Bool)

(assert (=> b!4051116 (= e!2513630 tp!1228465)))

(declare-fun b!4051115 () Bool)

(declare-fun tp!1228464 () Bool)

(declare-fun tp!1228466 () Bool)

(assert (=> b!4051115 (= e!2513630 (and tp!1228464 tp!1228466))))

(assert (= (and b!4050459 (is-ElementMatch!11844 (regex!6939 (rule!10021 token!484)))) b!4051114))

(assert (= (and b!4050459 (is-Concat!19014 (regex!6939 (rule!10021 token!484)))) b!4051115))

(assert (= (and b!4050459 (is-Star!11844 (regex!6939 (rule!10021 token!484)))) b!4051116))

(assert (= (and b!4050459 (is-Union!11844 (regex!6939 (rule!10021 token!484)))) b!4051117))

(declare-fun b!4051118 () Bool)

(declare-fun e!2513631 () Bool)

(declare-fun tp!1228468 () Bool)

(assert (=> b!4051118 (= e!2513631 (and tp_is_empty!20659 tp!1228468))))

(assert (=> b!4050454 (= tp!1228397 e!2513631)))

(assert (= (and b!4050454 (is-Cons!43302 (originalCharacters!7539 token!484))) b!4051118))

(declare-fun b!4051122 () Bool)

(declare-fun e!2513632 () Bool)

(declare-fun tp!1228473 () Bool)

(declare-fun tp!1228469 () Bool)

(assert (=> b!4051122 (= e!2513632 (and tp!1228473 tp!1228469))))

(assert (=> b!4050452 (= tp!1228391 e!2513632)))

(declare-fun b!4051119 () Bool)

(assert (=> b!4051119 (= e!2513632 tp_is_empty!20659)))

(declare-fun b!4051121 () Bool)

(declare-fun tp!1228471 () Bool)

(assert (=> b!4051121 (= e!2513632 tp!1228471)))

(declare-fun b!4051120 () Bool)

(declare-fun tp!1228470 () Bool)

(declare-fun tp!1228472 () Bool)

(assert (=> b!4051120 (= e!2513632 (and tp!1228470 tp!1228472))))

(assert (= (and b!4050452 (is-ElementMatch!11844 (regex!6939 (h!48724 rules!2999)))) b!4051119))

(assert (= (and b!4050452 (is-Concat!19014 (regex!6939 (h!48724 rules!2999)))) b!4051120))

(assert (= (and b!4050452 (is-Star!11844 (regex!6939 (h!48724 rules!2999)))) b!4051121))

(assert (= (and b!4050452 (is-Union!11844 (regex!6939 (h!48724 rules!2999)))) b!4051122))

(declare-fun b!4051123 () Bool)

(declare-fun e!2513633 () Bool)

(declare-fun tp!1228474 () Bool)

(assert (=> b!4051123 (= e!2513633 (and tp_is_empty!20659 tp!1228474))))

(assert (=> b!4050436 (= tp!1228400 e!2513633)))

(assert (= (and b!4050436 (is-Cons!43302 (t!335877 suffixResult!105))) b!4051123))

(declare-fun b!4051134 () Bool)

(declare-fun b_free!112737 () Bool)

(declare-fun b_next!113441 () Bool)

(assert (=> b!4051134 (= b_free!112737 (not b_next!113441))))

(declare-fun t!335904 () Bool)

(declare-fun tb!243701 () Bool)

(assert (=> (and b!4051134 (= (toValue!9491 (transformation!6939 (h!48724 (t!335879 rules!2999)))) (toValue!9491 (transformation!6939 (rule!10021 token!484)))) t!335904) tb!243701))

(declare-fun result!295322 () Bool)

(assert (= result!295322 result!295290))

(assert (=> d!1202935 t!335904))

(declare-fun tb!243703 () Bool)

(declare-fun t!335906 () Bool)

(assert (=> (and b!4051134 (= (toValue!9491 (transformation!6939 (h!48724 (t!335879 rules!2999)))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) t!335906) tb!243703))

(declare-fun result!295324 () Bool)

(assert (= result!295324 result!295302))

(assert (=> d!1202967 t!335906))

(declare-fun tp!1228486 () Bool)

(declare-fun b_and!311507 () Bool)

(assert (=> b!4051134 (= tp!1228486 (and (=> t!335904 result!295322) (=> t!335906 result!295324) b_and!311507))))

(declare-fun b_free!112739 () Bool)

(declare-fun b_next!113443 () Bool)

(assert (=> b!4051134 (= b_free!112739 (not b_next!113443))))

(declare-fun t!335908 () Bool)

(declare-fun tb!243705 () Bool)

(assert (=> (and b!4051134 (= (toChars!9350 (transformation!6939 (h!48724 (t!335879 rules!2999)))) (toChars!9350 (transformation!6939 (rule!10021 token!484)))) t!335908) tb!243705))

(declare-fun result!295326 () Bool)

(assert (= result!295326 result!295296))

(assert (=> b!4050721 t!335908))

(declare-fun t!335910 () Bool)

(declare-fun tb!243707 () Bool)

(assert (=> (and b!4051134 (= (toChars!9350 (transformation!6939 (h!48724 (t!335879 rules!2999)))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) t!335910) tb!243707))

(declare-fun result!295328 () Bool)

(assert (= result!295328 result!295306))

(assert (=> d!1202971 t!335910))

(assert (=> d!1203121 t!335908))

(declare-fun b_and!311509 () Bool)

(declare-fun tp!1228484 () Bool)

(assert (=> b!4051134 (= tp!1228484 (and (=> t!335908 result!295326) (=> t!335910 result!295328) b_and!311509))))

(declare-fun e!2513645 () Bool)

(assert (=> b!4051134 (= e!2513645 (and tp!1228486 tp!1228484))))

(declare-fun b!4051133 () Bool)

(declare-fun tp!1228485 () Bool)

(declare-fun e!2513642 () Bool)

(assert (=> b!4051133 (= e!2513642 (and tp!1228485 (inv!57884 (tag!7799 (h!48724 (t!335879 rules!2999)))) (inv!57888 (transformation!6939 (h!48724 (t!335879 rules!2999)))) e!2513645))))

(declare-fun b!4051132 () Bool)

(declare-fun e!2513644 () Bool)

(declare-fun tp!1228483 () Bool)

(assert (=> b!4051132 (= e!2513644 (and e!2513642 tp!1228483))))

(assert (=> b!4050437 (= tp!1228393 e!2513644)))

(assert (= b!4051133 b!4051134))

(assert (= b!4051132 b!4051133))

(assert (= (and b!4050437 (is-Cons!43304 (t!335879 rules!2999))) b!4051132))

(declare-fun m!4652361 () Bool)

(assert (=> b!4051133 m!4652361))

(declare-fun m!4652363 () Bool)

(assert (=> b!4051133 m!4652363))

(declare-fun b!4051135 () Bool)

(declare-fun e!2513646 () Bool)

(declare-fun tp!1228487 () Bool)

(assert (=> b!4051135 (= e!2513646 (and tp_is_empty!20659 tp!1228487))))

(assert (=> b!4050467 (= tp!1228395 e!2513646)))

(assert (= (and b!4050467 (is-Cons!43302 (t!335877 prefix!494))) b!4051135))

(declare-fun b!4051136 () Bool)

(declare-fun e!2513647 () Bool)

(declare-fun tp!1228488 () Bool)

(assert (=> b!4051136 (= e!2513647 (and tp_is_empty!20659 tp!1228488))))

(assert (=> b!4050441 (= tp!1228399 e!2513647)))

(assert (= (and b!4050441 (is-Cons!43302 (t!335877 newSuffixResult!27))) b!4051136))

(declare-fun b!4051137 () Bool)

(declare-fun e!2513648 () Bool)

(declare-fun tp!1228489 () Bool)

(assert (=> b!4051137 (= e!2513648 (and tp_is_empty!20659 tp!1228489))))

(assert (=> b!4050455 (= tp!1228394 e!2513648)))

(assert (= (and b!4050455 (is-Cons!43302 (t!335877 suffix!1299))) b!4051137))

(declare-fun b_lambda!118379 () Bool)

(assert (= b_lambda!118369 (or (and b!4050453 b_free!112723) (and b!4050449 b_free!112727 (= (toChars!9350 (transformation!6939 (h!48724 rules!2999))) (toChars!9350 (transformation!6939 (rule!10021 token!484))))) (and b!4051134 b_free!112739 (= (toChars!9350 (transformation!6939 (h!48724 (t!335879 rules!2999)))) (toChars!9350 (transformation!6939 (rule!10021 token!484))))) b_lambda!118379)))

(declare-fun b_lambda!118381 () Bool)

(assert (= b_lambda!118367 (or (and b!4050453 b_free!112721) (and b!4050449 b_free!112725 (= (toValue!9491 (transformation!6939 (h!48724 rules!2999))) (toValue!9491 (transformation!6939 (rule!10021 token!484))))) (and b!4051134 b_free!112737 (= (toValue!9491 (transformation!6939 (h!48724 (t!335879 rules!2999)))) (toValue!9491 (transformation!6939 (rule!10021 token!484))))) b_lambda!118381)))

(declare-fun b_lambda!118383 () Bool)

(assert (= b_lambda!118377 (or (and b!4050453 b_free!112723) (and b!4050449 b_free!112727 (= (toChars!9350 (transformation!6939 (h!48724 rules!2999))) (toChars!9350 (transformation!6939 (rule!10021 token!484))))) (and b!4051134 b_free!112739 (= (toChars!9350 (transformation!6939 (h!48724 (t!335879 rules!2999)))) (toChars!9350 (transformation!6939 (rule!10021 token!484))))) b_lambda!118383)))

(push 1)

(assert (not tb!243693))

(assert (not b_lambda!118379))

(assert (not b!4051085))

(assert (not b!4051120))

(assert (not tb!243681))

(assert (not b!4051040))

(assert (not b!4051053))

(assert (not b!4051016))

(assert (not b!4051048))

(assert (not b!4050992))

(assert (not b!4051133))

(assert (not b!4051058))

(assert (not b!4050855))

(assert (not b!4050877))

(assert (not b!4051136))

(assert (not b!4051123))

(assert (not b!4051011))

(assert (not b!4051067))

(assert (not b!4051066))

(assert (not b!4051103))

(assert (not d!1203011))

(assert (not b!4051135))

(assert (not b!4051038))

(assert (not d!1202969))

(assert (not b!4051122))

(assert (not d!1203145))

(assert (not b!4050836))

(assert (not b!4050835))

(assert (not d!1203103))

(assert (not b!4050801))

(assert (not b!4050891))

(assert (not b!4050786))

(assert (not b!4051000))

(assert (not b!4050997))

(assert (not d!1202991))

(assert (not b!4050778))

(assert (not d!1203029))

(assert (not b!4051094))

(assert (not d!1203129))

(assert (not d!1202949))

(assert (not b!4050994))

(assert (not d!1203087))

(assert (not b!4050829))

(assert (not b!4050839))

(assert (not b!4051097))

(assert (not d!1203157))

(assert (not b!4050696))

(assert (not b!4051034))

(assert (not b_next!113441))

(assert (not d!1203151))

(assert (not b!4050965))

(assert (not d!1203139))

(assert (not d!1203027))

(assert (not b!4051072))

(assert (not b!4051068))

(assert (not b!4050781))

(assert (not d!1203081))

(assert (not b!4050970))

(assert (not b!4050613))

(assert (not b!4050624))

(assert (not bm!287850))

(assert (not b!4051091))

(assert (not b!4050695))

(assert (not b!4051079))

(assert (not b!4051071))

(assert (not b!4050701))

(assert (not d!1202919))

(assert (not b!4050828))

(assert (not b!4050700))

(assert (not d!1203007))

(assert (not d!1202961))

(assert (not b!4050853))

(assert b_and!311507)

(assert (not b!4051132))

(assert (not b!4050973))

(assert (not b!4050856))

(assert (not b!4050611))

(assert (not b!4050824))

(assert (not d!1203123))

(assert (not b!4051018))

(assert (not b!4050977))

(assert (not d!1203137))

(assert b_and!311491)

(assert (not b!4050967))

(assert (not b!4051116))

(assert (not b!4050702))

(assert (not d!1203119))

(assert (not d!1203073))

(assert (not b!4050964))

(assert (not b!4051088))

(assert (not b!4050803))

(assert (not bm!287852))

(assert (not b!4050634))

(assert (not b!4050799))

(assert (not b_lambda!118373))

(assert (not b!4051062))

(assert (not d!1203005))

(assert (not b!4051086))

(assert (not b!4051121))

(assert (not b!4050823))

(assert (not b!4050639))

(assert (not d!1203161))

(assert (not b!4050983))

(assert (not d!1203153))

(assert (not d!1203065))

(assert (not b!4051002))

(assert (not d!1203143))

(assert (not b!4051087))

(assert (not d!1203149))

(assert (not d!1203071))

(assert (not b!4050982))

(assert (not b!4050989))

(assert (not b!4051022))

(assert (not b!4050986))

(assert (not b!4050810))

(assert (not b!4050972))

(assert (not b!4050852))

(assert (not d!1202941))

(assert (not b_next!113429))

(assert (not b!4050630))

(assert (not b!4050963))

(assert (not tb!243685))

(assert (not b!4050840))

(assert (not b!4051075))

(assert (not b!4051023))

(assert (not b!4051117))

(assert (not b_lambda!118381))

(assert (not d!1202929))

(assert (not b!4050809))

(assert (not b!4050694))

(assert (not b!4050601))

(assert (not d!1203093))

(assert (not b!4051057))

(assert (not b!4051005))

(assert (not b!4050841))

(assert b_and!311493)

(assert (not d!1203019))

(assert (not b!4051045))

(assert (not b!4051042))

(assert (not b!4050996))

(assert (not d!1202939))

(assert (not b!4051063))

(assert (not d!1202995))

(assert (not d!1203121))

(assert (not b!4050782))

(assert (not d!1202971))

(assert (not b!4050842))

(assert (not d!1202977))

(assert (not d!1203015))

(assert (not b!4050775))

(assert (not b_next!113443))

(assert (not b!4051090))

(assert (not b!4051060))

(assert (not b!4051026))

(assert (not d!1202999))

(assert (not b!4051115))

(assert (not d!1202943))

(assert (not b!4050998))

(assert (not b!4050880))

(assert (not d!1202953))

(assert (not d!1202957))

(assert (not d!1203111))

(assert (not b!4051070))

(assert (not d!1203109))

(assert (not b!4050879))

(assert (not d!1203089))

(assert (not b!4050984))

(assert (not b_lambda!118371))

(assert (not d!1203155))

(assert (not b_next!113425))

(assert (not b!4050637))

(assert (not d!1203063))

(assert (not b!4050727))

(assert (not b!4050827))

(assert (not b!4050798))

(assert (not b!4050821))

(assert (not d!1202985))

(assert (not b!4051043))

(assert (not b!4050962))

(assert (not b!4051098))

(assert (not b_next!113427))

(assert b_and!311503)

(assert b_and!311509)

(assert (not b!4051089))

(assert b_and!311505)

(assert (not b!4050698))

(assert (not bm!287851))

(assert (not d!1203127))

(assert (not b!4050976))

(assert (not b!4051004))

(assert (not b!4050968))

(assert tp_is_empty!20659)

(assert (not b!4050802))

(assert (not b!4050633))

(assert (not b!4051064))

(assert (not bm!287847))

(assert (not b!4050834))

(assert (not b!4051137))

(assert (not b!4051035))

(assert (not b!4051118))

(assert (not d!1203003))

(assert (not b!4051078))

(assert (not d!1202937))

(assert (not b!4051056))

(assert (not b!4050638))

(assert (not b!4051007))

(assert (not b!4050722))

(assert (not b!4050987))

(assert (not d!1202923))

(assert (not d!1203017))

(assert (not b!4051001))

(assert (not b!4051082))

(assert (not b!4051096))

(assert (not d!1203013))

(assert (not d!1203105))

(assert (not tb!243689))

(assert (not b!4051027))

(assert (not b!4050623))

(assert (not d!1203147))

(assert (not b!4050979))

(assert (not b!4051030))

(assert (not d!1202981))

(assert (not b!4050838))

(assert (not d!1203075))

(assert (not b!4051019))

(assert (not d!1203061))

(assert (not d!1202997))

(assert (not b!4050886))

(assert (not b!4050612))

(assert (not b!4051074))

(assert (not b!4050699))

(assert (not d!1203101))

(assert (not d!1203107))

(assert (not b!4051092))

(assert (not b!4051049))

(assert (not d!1202925))

(assert (not b!4051031))

(assert (not b!4050849))

(assert (not b!4050993))

(assert (not b!4051014))

(assert (not b!4050776))

(assert (not b_next!113431))

(assert (not b!4050635))

(assert (not b!4051012))

(assert (not b!4050966))

(assert (not b_lambda!118383))

(assert (not d!1203023))

(assert (not b!4051010))

(assert (not b!4050721))

(assert (not d!1202931))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!113441))

(assert b_and!311507)

(assert b_and!311491)

(assert (not b_next!113429))

(assert b_and!311493)

(assert (not b_next!113443))

(assert (not b_next!113425))

(assert b_and!311505)

(assert (not b_next!113431))

(assert (not b_next!113427))

(assert b_and!311503)

(assert b_and!311509)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1203285 () Bool)

(assert (=> d!1203285 (= (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443941)))) (list!16135 (c!699688 (charsOf!4755 (_1!24322 (get!14207 lt!1443941))))))))

(declare-fun bs!591565 () Bool)

(assert (= bs!591565 d!1203285))

(declare-fun m!4652761 () Bool)

(assert (=> bs!591565 m!4652761))

(assert (=> b!4050967 d!1203285))

(declare-fun d!1203287 () Bool)

(declare-fun lt!1444100 () BalanceConc!25894)

(assert (=> d!1203287 (= (list!16133 lt!1444100) (originalCharacters!7539 (_1!24322 (get!14207 lt!1443941))))))

(assert (=> d!1203287 (= lt!1444100 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443941))))) (value!218397 (_1!24322 (get!14207 lt!1443941)))))))

(assert (=> d!1203287 (= (charsOf!4755 (_1!24322 (get!14207 lt!1443941))) lt!1444100)))

(declare-fun b_lambda!118399 () Bool)

(assert (=> (not b_lambda!118399) (not d!1203287)))

(declare-fun t!335934 () Bool)

(declare-fun tb!243729 () Bool)

(assert (=> (and b!4050453 (= (toChars!9350 (transformation!6939 (rule!10021 token!484))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443941)))))) t!335934) tb!243729))

(declare-fun b!4051373 () Bool)

(declare-fun e!2513783 () Bool)

(declare-fun tp!1228531 () Bool)

(assert (=> b!4051373 (= e!2513783 (and (inv!57891 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443941))))) (value!218397 (_1!24322 (get!14207 lt!1443941)))))) tp!1228531))))

(declare-fun result!295358 () Bool)

(assert (=> tb!243729 (= result!295358 (and (inv!57892 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443941))))) (value!218397 (_1!24322 (get!14207 lt!1443941))))) e!2513783))))

(assert (= tb!243729 b!4051373))

(declare-fun m!4652763 () Bool)

(assert (=> b!4051373 m!4652763))

(declare-fun m!4652765 () Bool)

(assert (=> tb!243729 m!4652765))

(assert (=> d!1203287 t!335934))

(declare-fun b_and!311531 () Bool)

(assert (= b_and!311503 (and (=> t!335934 result!295358) b_and!311531)))

(declare-fun t!335936 () Bool)

(declare-fun tb!243731 () Bool)

(assert (=> (and b!4050449 (= (toChars!9350 (transformation!6939 (h!48724 rules!2999))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443941)))))) t!335936) tb!243731))

(declare-fun result!295360 () Bool)

(assert (= result!295360 result!295358))

(assert (=> d!1203287 t!335936))

(declare-fun b_and!311533 () Bool)

(assert (= b_and!311505 (and (=> t!335936 result!295360) b_and!311533)))

(declare-fun t!335938 () Bool)

(declare-fun tb!243733 () Bool)

(assert (=> (and b!4051134 (= (toChars!9350 (transformation!6939 (h!48724 (t!335879 rules!2999)))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443941)))))) t!335938) tb!243733))

(declare-fun result!295362 () Bool)

(assert (= result!295362 result!295358))

(assert (=> d!1203287 t!335938))

(declare-fun b_and!311535 () Bool)

(assert (= b_and!311509 (and (=> t!335938 result!295362) b_and!311535)))

(declare-fun m!4652767 () Bool)

(assert (=> d!1203287 m!4652767))

(declare-fun m!4652769 () Bool)

(assert (=> d!1203287 m!4652769))

(assert (=> b!4050967 d!1203287))

(declare-fun d!1203289 () Bool)

(assert (=> d!1203289 (= (get!14207 lt!1443941) (v!39762 lt!1443941))))

(assert (=> b!4050967 d!1203289))

(declare-fun d!1203291 () Bool)

(assert (=> d!1203291 (= (head!8562 lt!1443622) (h!48722 lt!1443622))))

(assert (=> b!4051048 d!1203291))

(assert (=> b!4051000 d!1203291))

(declare-fun d!1203293 () Bool)

(assert (=> d!1203293 (= (head!8562 lt!1443629) (h!48722 lt!1443629))))

(assert (=> b!4051000 d!1203293))

(declare-fun d!1203295 () Bool)

(assert (=> d!1203295 (= (inv!57884 (tag!7799 (h!48724 (t!335879 rules!2999)))) (= (mod (str.len (value!218396 (tag!7799 (h!48724 (t!335879 rules!2999))))) 2) 0))))

(assert (=> b!4051133 d!1203295))

(declare-fun d!1203297 () Bool)

(declare-fun res!1651220 () Bool)

(declare-fun e!2513784 () Bool)

(assert (=> d!1203297 (=> (not res!1651220) (not e!2513784))))

(assert (=> d!1203297 (= res!1651220 (semiInverseModEq!2967 (toChars!9350 (transformation!6939 (h!48724 (t!335879 rules!2999)))) (toValue!9491 (transformation!6939 (h!48724 (t!335879 rules!2999))))))))

(assert (=> d!1203297 (= (inv!57888 (transformation!6939 (h!48724 (t!335879 rules!2999)))) e!2513784)))

(declare-fun b!4051374 () Bool)

(assert (=> b!4051374 (= e!2513784 (equivClasses!2866 (toChars!9350 (transformation!6939 (h!48724 (t!335879 rules!2999)))) (toValue!9491 (transformation!6939 (h!48724 (t!335879 rules!2999))))))))

(assert (= (and d!1203297 res!1651220) b!4051374))

(declare-fun m!4652771 () Bool)

(assert (=> d!1203297 m!4652771))

(declare-fun m!4652773 () Bool)

(assert (=> b!4051374 m!4652773))

(assert (=> b!4051133 d!1203297))

(declare-fun d!1203299 () Bool)

(declare-fun e!2513786 () Bool)

(assert (=> d!1203299 e!2513786))

(declare-fun res!1651224 () Bool)

(assert (=> d!1203299 (=> res!1651224 e!2513786)))

(declare-fun lt!1444101 () Bool)

(assert (=> d!1203299 (= res!1651224 (not lt!1444101))))

(declare-fun e!2513785 () Bool)

(assert (=> d!1203299 (= lt!1444101 e!2513785)))

(declare-fun res!1651222 () Bool)

(assert (=> d!1203299 (=> res!1651222 e!2513785)))

(assert (=> d!1203299 (= res!1651222 (is-Nil!43302 (tail!6294 lt!1443622)))))

(assert (=> d!1203299 (= (isPrefix!4026 (tail!6294 lt!1443622) (tail!6294 lt!1443614)) lt!1444101)))

(declare-fun b!4051377 () Bool)

(declare-fun e!2513787 () Bool)

(assert (=> b!4051377 (= e!2513787 (isPrefix!4026 (tail!6294 (tail!6294 lt!1443622)) (tail!6294 (tail!6294 lt!1443614))))))

(declare-fun b!4051376 () Bool)

(declare-fun res!1651221 () Bool)

(assert (=> b!4051376 (=> (not res!1651221) (not e!2513787))))

(assert (=> b!4051376 (= res!1651221 (= (head!8562 (tail!6294 lt!1443622)) (head!8562 (tail!6294 lt!1443614))))))

(declare-fun b!4051375 () Bool)

(assert (=> b!4051375 (= e!2513785 e!2513787)))

(declare-fun res!1651223 () Bool)

(assert (=> b!4051375 (=> (not res!1651223) (not e!2513787))))

(assert (=> b!4051375 (= res!1651223 (not (is-Nil!43302 (tail!6294 lt!1443614))))))

(declare-fun b!4051378 () Bool)

(assert (=> b!4051378 (= e!2513786 (>= (size!32375 (tail!6294 lt!1443614)) (size!32375 (tail!6294 lt!1443622))))))

(assert (= (and d!1203299 (not res!1651222)) b!4051375))

(assert (= (and b!4051375 res!1651223) b!4051376))

(assert (= (and b!4051376 res!1651221) b!4051377))

(assert (= (and d!1203299 (not res!1651224)) b!4051378))

(assert (=> b!4051377 m!4651639))

(declare-fun m!4652775 () Bool)

(assert (=> b!4051377 m!4652775))

(assert (=> b!4051377 m!4651641))

(declare-fun m!4652777 () Bool)

(assert (=> b!4051377 m!4652777))

(assert (=> b!4051377 m!4652775))

(assert (=> b!4051377 m!4652777))

(declare-fun m!4652779 () Bool)

(assert (=> b!4051377 m!4652779))

(assert (=> b!4051376 m!4651639))

(declare-fun m!4652781 () Bool)

(assert (=> b!4051376 m!4652781))

(assert (=> b!4051376 m!4651641))

(declare-fun m!4652783 () Bool)

(assert (=> b!4051376 m!4652783))

(assert (=> b!4051378 m!4651641))

(declare-fun m!4652785 () Bool)

(assert (=> b!4051378 m!4652785))

(assert (=> b!4051378 m!4651639))

(declare-fun m!4652787 () Bool)

(assert (=> b!4051378 m!4652787))

(assert (=> b!4050638 d!1203299))

(declare-fun d!1203301 () Bool)

(assert (=> d!1203301 (= (tail!6294 lt!1443622) (t!335877 lt!1443622))))

(assert (=> b!4050638 d!1203301))

(declare-fun d!1203303 () Bool)

(assert (=> d!1203303 (= (tail!6294 lt!1443614) (t!335877 lt!1443614))))

(assert (=> b!4050638 d!1203303))

(declare-fun b!4051380 () Bool)

(declare-fun e!2513789 () List!43426)

(assert (=> b!4051380 (= e!2513789 (Cons!43302 (h!48722 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443996))))) (++!11341 (t!335877 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443996))))) (_2!24322 (get!14207 lt!1443996)))))))

(declare-fun b!4051379 () Bool)

(assert (=> b!4051379 (= e!2513789 (_2!24322 (get!14207 lt!1443996)))))

(declare-fun d!1203305 () Bool)

(declare-fun e!2513788 () Bool)

(assert (=> d!1203305 e!2513788))

(declare-fun res!1651226 () Bool)

(assert (=> d!1203305 (=> (not res!1651226) (not e!2513788))))

(declare-fun lt!1444102 () List!43426)

(assert (=> d!1203305 (= res!1651226 (= (content!6596 lt!1444102) (set.union (content!6596 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443996))))) (content!6596 (_2!24322 (get!14207 lt!1443996))))))))

(assert (=> d!1203305 (= lt!1444102 e!2513789)))

(declare-fun c!699810 () Bool)

(assert (=> d!1203305 (= c!699810 (is-Nil!43302 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443996))))))))

(assert (=> d!1203305 (= (++!11341 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443996)))) (_2!24322 (get!14207 lt!1443996))) lt!1444102)))

(declare-fun b!4051381 () Bool)

(declare-fun res!1651225 () Bool)

(assert (=> b!4051381 (=> (not res!1651225) (not e!2513788))))

(assert (=> b!4051381 (= res!1651225 (= (size!32375 lt!1444102) (+ (size!32375 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443996))))) (size!32375 (_2!24322 (get!14207 lt!1443996))))))))

(declare-fun b!4051382 () Bool)

(assert (=> b!4051382 (= e!2513788 (or (not (= (_2!24322 (get!14207 lt!1443996)) Nil!43302)) (= lt!1444102 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443996)))))))))

(assert (= (and d!1203305 c!699810) b!4051379))

(assert (= (and d!1203305 (not c!699810)) b!4051380))

(assert (= (and d!1203305 res!1651226) b!4051381))

(assert (= (and b!4051381 res!1651225) b!4051382))

(declare-fun m!4652789 () Bool)

(assert (=> b!4051380 m!4652789))

(declare-fun m!4652791 () Bool)

(assert (=> d!1203305 m!4652791))

(assert (=> d!1203305 m!4652321))

(declare-fun m!4652793 () Bool)

(assert (=> d!1203305 m!4652793))

(declare-fun m!4652795 () Bool)

(assert (=> d!1203305 m!4652795))

(declare-fun m!4652797 () Bool)

(assert (=> b!4051381 m!4652797))

(assert (=> b!4051381 m!4652321))

(declare-fun m!4652799 () Bool)

(assert (=> b!4051381 m!4652799))

(assert (=> b!4051381 m!4652325))

(assert (=> b!4051090 d!1203305))

(declare-fun d!1203307 () Bool)

(assert (=> d!1203307 (= (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443996)))) (list!16135 (c!699688 (charsOf!4755 (_1!24322 (get!14207 lt!1443996))))))))

(declare-fun bs!591566 () Bool)

(assert (= bs!591566 d!1203307))

(declare-fun m!4652801 () Bool)

(assert (=> bs!591566 m!4652801))

(assert (=> b!4051090 d!1203307))

(declare-fun d!1203309 () Bool)

(declare-fun lt!1444103 () BalanceConc!25894)

(assert (=> d!1203309 (= (list!16133 lt!1444103) (originalCharacters!7539 (_1!24322 (get!14207 lt!1443996))))))

(assert (=> d!1203309 (= lt!1444103 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443996))))) (value!218397 (_1!24322 (get!14207 lt!1443996)))))))

(assert (=> d!1203309 (= (charsOf!4755 (_1!24322 (get!14207 lt!1443996))) lt!1444103)))

(declare-fun b_lambda!118401 () Bool)

(assert (=> (not b_lambda!118401) (not d!1203309)))

(declare-fun tb!243735 () Bool)

(declare-fun t!335940 () Bool)

(assert (=> (and b!4050453 (= (toChars!9350 (transformation!6939 (rule!10021 token!484))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443996)))))) t!335940) tb!243735))

(declare-fun b!4051383 () Bool)

(declare-fun e!2513790 () Bool)

(declare-fun tp!1228532 () Bool)

(assert (=> b!4051383 (= e!2513790 (and (inv!57891 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443996))))) (value!218397 (_1!24322 (get!14207 lt!1443996)))))) tp!1228532))))

(declare-fun result!295364 () Bool)

(assert (=> tb!243735 (= result!295364 (and (inv!57892 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443996))))) (value!218397 (_1!24322 (get!14207 lt!1443996))))) e!2513790))))

(assert (= tb!243735 b!4051383))

(declare-fun m!4652803 () Bool)

(assert (=> b!4051383 m!4652803))

(declare-fun m!4652805 () Bool)

(assert (=> tb!243735 m!4652805))

(assert (=> d!1203309 t!335940))

(declare-fun b_and!311537 () Bool)

(assert (= b_and!311531 (and (=> t!335940 result!295364) b_and!311537)))

(declare-fun t!335942 () Bool)

(declare-fun tb!243737 () Bool)

(assert (=> (and b!4050449 (= (toChars!9350 (transformation!6939 (h!48724 rules!2999))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443996)))))) t!335942) tb!243737))

(declare-fun result!295366 () Bool)

(assert (= result!295366 result!295364))

(assert (=> d!1203309 t!335942))

(declare-fun b_and!311539 () Bool)

(assert (= b_and!311533 (and (=> t!335942 result!295366) b_and!311539)))

(declare-fun tb!243739 () Bool)

(declare-fun t!335944 () Bool)

(assert (=> (and b!4051134 (= (toChars!9350 (transformation!6939 (h!48724 (t!335879 rules!2999)))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443996)))))) t!335944) tb!243739))

(declare-fun result!295368 () Bool)

(assert (= result!295368 result!295364))

(assert (=> d!1203309 t!335944))

(declare-fun b_and!311541 () Bool)

(assert (= b_and!311535 (and (=> t!335944 result!295368) b_and!311541)))

(declare-fun m!4652807 () Bool)

(assert (=> d!1203309 m!4652807))

(declare-fun m!4652809 () Bool)

(assert (=> d!1203309 m!4652809))

(assert (=> b!4051090 d!1203309))

(declare-fun d!1203311 () Bool)

(assert (=> d!1203311 (= (get!14207 lt!1443996) (v!39762 lt!1443996))))

(assert (=> b!4051090 d!1203311))

(declare-fun bm!287858 () Bool)

(declare-fun call!287863 () Bool)

(assert (=> bm!287858 (= call!287863 (isEmpty!25846 (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 token!484)) Nil!43302 (size!32375 Nil!43302) lt!1443629 lt!1443629 (size!32375 lt!1443629)))))))

(declare-fun b!4051384 () Bool)

(declare-fun e!2513794 () Bool)

(declare-fun e!2513792 () Bool)

(assert (=> b!4051384 (= e!2513794 e!2513792)))

(declare-fun res!1651232 () Bool)

(assert (=> b!4051384 (=> (not res!1651232) (not e!2513792))))

(declare-fun lt!1444104 () Bool)

(assert (=> b!4051384 (= res!1651232 (not lt!1444104))))

(declare-fun b!4051385 () Bool)

(declare-fun res!1651233 () Bool)

(declare-fun e!2513797 () Bool)

(assert (=> b!4051385 (=> res!1651233 e!2513797)))

(assert (=> b!4051385 (= res!1651233 (not (isEmpty!25846 (tail!6294 (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 token!484)) Nil!43302 (size!32375 Nil!43302) lt!1443629 lt!1443629 (size!32375 lt!1443629)))))))))

(declare-fun d!1203313 () Bool)

(declare-fun e!2513793 () Bool)

(assert (=> d!1203313 e!2513793))

(declare-fun c!699812 () Bool)

(assert (=> d!1203313 (= c!699812 (is-EmptyExpr!11844 (regex!6939 (rule!10021 token!484))))))

(declare-fun e!2513795 () Bool)

(assert (=> d!1203313 (= lt!1444104 e!2513795)))

(declare-fun c!699811 () Bool)

(assert (=> d!1203313 (= c!699811 (isEmpty!25846 (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 token!484)) Nil!43302 (size!32375 Nil!43302) lt!1443629 lt!1443629 (size!32375 lt!1443629)))))))

(assert (=> d!1203313 (validRegex!5359 (regex!6939 (rule!10021 token!484)))))

(assert (=> d!1203313 (= (matchR!5797 (regex!6939 (rule!10021 token!484)) (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 token!484)) Nil!43302 (size!32375 Nil!43302) lt!1443629 lt!1443629 (size!32375 lt!1443629)))) lt!1444104)))

(declare-fun b!4051386 () Bool)

(declare-fun res!1651229 () Bool)

(declare-fun e!2513791 () Bool)

(assert (=> b!4051386 (=> (not res!1651229) (not e!2513791))))

(assert (=> b!4051386 (= res!1651229 (isEmpty!25846 (tail!6294 (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 token!484)) Nil!43302 (size!32375 Nil!43302) lt!1443629 lt!1443629 (size!32375 lt!1443629))))))))

(declare-fun b!4051387 () Bool)

(declare-fun e!2513796 () Bool)

(assert (=> b!4051387 (= e!2513796 (not lt!1444104))))

(declare-fun b!4051388 () Bool)

(assert (=> b!4051388 (= e!2513795 (matchR!5797 (derivativeStep!3564 (regex!6939 (rule!10021 token!484)) (head!8562 (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 token!484)) Nil!43302 (size!32375 Nil!43302) lt!1443629 lt!1443629 (size!32375 lt!1443629))))) (tail!6294 (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 token!484)) Nil!43302 (size!32375 Nil!43302) lt!1443629 lt!1443629 (size!32375 lt!1443629))))))))

(declare-fun b!4051389 () Bool)

(declare-fun res!1651228 () Bool)

(assert (=> b!4051389 (=> res!1651228 e!2513794)))

(assert (=> b!4051389 (= res!1651228 e!2513791)))

(declare-fun res!1651230 () Bool)

(assert (=> b!4051389 (=> (not res!1651230) (not e!2513791))))

(assert (=> b!4051389 (= res!1651230 lt!1444104)))

(declare-fun b!4051390 () Bool)

(assert (=> b!4051390 (= e!2513793 (= lt!1444104 call!287863))))

(declare-fun b!4051391 () Bool)

(assert (=> b!4051391 (= e!2513791 (= (head!8562 (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 token!484)) Nil!43302 (size!32375 Nil!43302) lt!1443629 lt!1443629 (size!32375 lt!1443629)))) (c!699689 (regex!6939 (rule!10021 token!484)))))))

(declare-fun b!4051392 () Bool)

(assert (=> b!4051392 (= e!2513797 (not (= (head!8562 (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 token!484)) Nil!43302 (size!32375 Nil!43302) lt!1443629 lt!1443629 (size!32375 lt!1443629)))) (c!699689 (regex!6939 (rule!10021 token!484))))))))

(declare-fun b!4051393 () Bool)

(declare-fun res!1651227 () Bool)

(assert (=> b!4051393 (=> res!1651227 e!2513794)))

(assert (=> b!4051393 (= res!1651227 (not (is-ElementMatch!11844 (regex!6939 (rule!10021 token!484)))))))

(assert (=> b!4051393 (= e!2513796 e!2513794)))

(declare-fun b!4051394 () Bool)

(assert (=> b!4051394 (= e!2513792 e!2513797)))

(declare-fun res!1651234 () Bool)

(assert (=> b!4051394 (=> res!1651234 e!2513797)))

(assert (=> b!4051394 (= res!1651234 call!287863)))

(declare-fun b!4051395 () Bool)

(assert (=> b!4051395 (= e!2513793 e!2513796)))

(declare-fun c!699813 () Bool)

(assert (=> b!4051395 (= c!699813 (is-EmptyLang!11844 (regex!6939 (rule!10021 token!484))))))

(declare-fun b!4051396 () Bool)

(assert (=> b!4051396 (= e!2513795 (nullable!4159 (regex!6939 (rule!10021 token!484))))))

(declare-fun b!4051397 () Bool)

(declare-fun res!1651231 () Bool)

(assert (=> b!4051397 (=> (not res!1651231) (not e!2513791))))

(assert (=> b!4051397 (= res!1651231 (not call!287863))))

(assert (= (and d!1203313 c!699811) b!4051396))

(assert (= (and d!1203313 (not c!699811)) b!4051388))

(assert (= (and d!1203313 c!699812) b!4051390))

(assert (= (and d!1203313 (not c!699812)) b!4051395))

(assert (= (and b!4051395 c!699813) b!4051387))

(assert (= (and b!4051395 (not c!699813)) b!4051393))

(assert (= (and b!4051393 (not res!1651227)) b!4051389))

(assert (= (and b!4051389 res!1651230) b!4051397))

(assert (= (and b!4051397 res!1651231) b!4051386))

(assert (= (and b!4051386 res!1651229) b!4051391))

(assert (= (and b!4051389 (not res!1651228)) b!4051384))

(assert (= (and b!4051384 res!1651232) b!4051394))

(assert (= (and b!4051394 (not res!1651234)) b!4051385))

(assert (= (and b!4051385 (not res!1651233)) b!4051392))

(assert (= (or b!4051390 b!4051397 b!4051394) bm!287858))

(declare-fun m!4652811 () Bool)

(assert (=> b!4051391 m!4652811))

(assert (=> d!1203313 m!4651697))

(assert (=> d!1203313 m!4651945))

(assert (=> b!4051388 m!4652811))

(assert (=> b!4051388 m!4652811))

(declare-fun m!4652813 () Bool)

(assert (=> b!4051388 m!4652813))

(declare-fun m!4652815 () Bool)

(assert (=> b!4051388 m!4652815))

(assert (=> b!4051388 m!4652813))

(assert (=> b!4051388 m!4652815))

(declare-fun m!4652817 () Bool)

(assert (=> b!4051388 m!4652817))

(assert (=> bm!287858 m!4651697))

(assert (=> b!4051392 m!4652811))

(assert (=> b!4051385 m!4652815))

(assert (=> b!4051385 m!4652815))

(declare-fun m!4652819 () Bool)

(assert (=> b!4051385 m!4652819))

(assert (=> b!4051386 m!4652815))

(assert (=> b!4051386 m!4652815))

(assert (=> b!4051386 m!4652819))

(assert (=> b!4051396 m!4651947))

(assert (=> b!4050702 d!1203313))

(declare-fun b!4051426 () Bool)

(declare-fun e!2513818 () tuple2!42380)

(declare-fun call!287886 () tuple2!42380)

(assert (=> b!4051426 (= e!2513818 call!287886)))

(declare-fun b!4051427 () Bool)

(declare-fun c!699828 () Bool)

(declare-fun call!287883 () Bool)

(assert (=> b!4051427 (= c!699828 call!287883)))

(declare-fun lt!1444173 () Unit!62585)

(declare-fun lt!1444163 () Unit!62585)

(assert (=> b!4051427 (= lt!1444173 lt!1444163)))

(declare-fun lt!1444167 () C!23874)

(declare-fun lt!1444183 () List!43426)

(assert (=> b!4051427 (= (++!11341 (++!11341 Nil!43302 (Cons!43302 lt!1444167 Nil!43302)) lt!1444183) lt!1443629)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1260 (List!43426 C!23874 List!43426 List!43426) Unit!62585)

(assert (=> b!4051427 (= lt!1444163 (lemmaMoveElementToOtherListKeepsConcatEq!1260 Nil!43302 lt!1444167 lt!1444183 lt!1443629))))

(assert (=> b!4051427 (= lt!1444183 (tail!6294 lt!1443629))))

(assert (=> b!4051427 (= lt!1444167 (head!8562 lt!1443629))))

(declare-fun lt!1444162 () Unit!62585)

(declare-fun lt!1444184 () Unit!62585)

(assert (=> b!4051427 (= lt!1444162 lt!1444184)))

(assert (=> b!4051427 (isPrefix!4026 (++!11341 Nil!43302 (Cons!43302 (head!8562 (getSuffix!2443 lt!1443629 Nil!43302)) Nil!43302)) lt!1443629)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!642 (List!43426 List!43426) Unit!62585)

(assert (=> b!4051427 (= lt!1444184 (lemmaAddHeadSuffixToPrefixStillPrefix!642 Nil!43302 lt!1443629))))

(declare-fun lt!1444179 () Unit!62585)

(declare-fun lt!1444169 () Unit!62585)

(assert (=> b!4051427 (= lt!1444179 lt!1444169)))

(assert (=> b!4051427 (= lt!1444169 (lemmaAddHeadSuffixToPrefixStillPrefix!642 Nil!43302 lt!1443629))))

(declare-fun lt!1444170 () List!43426)

(assert (=> b!4051427 (= lt!1444170 (++!11341 Nil!43302 (Cons!43302 (head!8562 lt!1443629) Nil!43302)))))

(declare-fun lt!1444164 () Unit!62585)

(declare-fun e!2513814 () Unit!62585)

(assert (=> b!4051427 (= lt!1444164 e!2513814)))

(declare-fun c!699826 () Bool)

(assert (=> b!4051427 (= c!699826 (= (size!32375 Nil!43302) (size!32375 lt!1443629)))))

(declare-fun lt!1444171 () Unit!62585)

(declare-fun lt!1444182 () Unit!62585)

(assert (=> b!4051427 (= lt!1444171 lt!1444182)))

(assert (=> b!4051427 (<= (size!32375 Nil!43302) (size!32375 lt!1443629))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!450 (List!43426 List!43426) Unit!62585)

(assert (=> b!4051427 (= lt!1444182 (lemmaIsPrefixThenSmallerEqSize!450 Nil!43302 lt!1443629))))

(declare-fun e!2513819 () tuple2!42380)

(assert (=> b!4051427 (= e!2513819 e!2513818)))

(declare-fun d!1203315 () Bool)

(declare-fun e!2513816 () Bool)

(assert (=> d!1203315 e!2513816))

(declare-fun res!1651239 () Bool)

(assert (=> d!1203315 (=> (not res!1651239) (not e!2513816))))

(declare-fun lt!1444180 () tuple2!42380)

(assert (=> d!1203315 (= res!1651239 (= (++!11341 (_1!24324 lt!1444180) (_2!24324 lt!1444180)) lt!1443629))))

(declare-fun e!2513821 () tuple2!42380)

(assert (=> d!1203315 (= lt!1444180 e!2513821)))

(declare-fun c!699830 () Bool)

(declare-fun lostCause!1016 (Regex!11844) Bool)

(assert (=> d!1203315 (= c!699830 (lostCause!1016 (regex!6939 (rule!10021 token!484))))))

(declare-fun lt!1444178 () Unit!62585)

(declare-fun Unit!62603 () Unit!62585)

(assert (=> d!1203315 (= lt!1444178 Unit!62603)))

(assert (=> d!1203315 (= (getSuffix!2443 lt!1443629 Nil!43302) lt!1443629)))

(declare-fun lt!1444187 () Unit!62585)

(declare-fun lt!1444168 () Unit!62585)

(assert (=> d!1203315 (= lt!1444187 lt!1444168)))

(declare-fun lt!1444175 () List!43426)

(assert (=> d!1203315 (= lt!1443629 lt!1444175)))

(assert (=> d!1203315 (= lt!1444168 (lemmaSamePrefixThenSameSuffix!2187 Nil!43302 lt!1443629 Nil!43302 lt!1444175 lt!1443629))))

(assert (=> d!1203315 (= lt!1444175 (getSuffix!2443 lt!1443629 Nil!43302))))

(declare-fun lt!1444166 () Unit!62585)

(declare-fun lt!1444188 () Unit!62585)

(assert (=> d!1203315 (= lt!1444166 lt!1444188)))

(assert (=> d!1203315 (isPrefix!4026 Nil!43302 (++!11341 Nil!43302 lt!1443629))))

(assert (=> d!1203315 (= lt!1444188 (lemmaConcatTwoListThenFirstIsPrefix!2861 Nil!43302 lt!1443629))))

(assert (=> d!1203315 (validRegex!5359 (regex!6939 (rule!10021 token!484)))))

(assert (=> d!1203315 (= (findLongestMatchInner!1396 (regex!6939 (rule!10021 token!484)) Nil!43302 (size!32375 Nil!43302) lt!1443629 lt!1443629 (size!32375 lt!1443629)) lt!1444180)))

(declare-fun call!287882 () Regex!11844)

(declare-fun bm!287875 () Bool)

(declare-fun call!287885 () List!43426)

(assert (=> bm!287875 (= call!287886 (findLongestMatchInner!1396 call!287882 lt!1444170 (+ (size!32375 Nil!43302) 1) call!287885 lt!1443629 (size!32375 lt!1443629)))))

(declare-fun b!4051428 () Bool)

(declare-fun c!699831 () Bool)

(assert (=> b!4051428 (= c!699831 call!287883)))

(declare-fun lt!1444177 () Unit!62585)

(declare-fun lt!1444185 () Unit!62585)

(assert (=> b!4051428 (= lt!1444177 lt!1444185)))

(assert (=> b!4051428 (= lt!1443629 Nil!43302)))

(declare-fun call!287884 () Unit!62585)

(assert (=> b!4051428 (= lt!1444185 call!287884)))

(declare-fun lt!1444174 () Unit!62585)

(declare-fun lt!1444181 () Unit!62585)

(assert (=> b!4051428 (= lt!1444174 lt!1444181)))

(declare-fun call!287887 () Bool)

(assert (=> b!4051428 call!287887))

(declare-fun call!287880 () Unit!62585)

(assert (=> b!4051428 (= lt!1444181 call!287880)))

(declare-fun e!2513820 () tuple2!42380)

(assert (=> b!4051428 (= e!2513819 e!2513820)))

(declare-fun bm!287876 () Bool)

(assert (=> bm!287876 (= call!287883 (nullable!4159 (regex!6939 (rule!10021 token!484))))))

(declare-fun b!4051429 () Bool)

(declare-fun Unit!62604 () Unit!62585)

(assert (=> b!4051429 (= e!2513814 Unit!62604)))

(declare-fun bm!287877 () Bool)

(assert (=> bm!287877 (= call!287885 (tail!6294 lt!1443629))))

(declare-fun b!4051430 () Bool)

(declare-fun e!2513815 () tuple2!42380)

(declare-fun lt!1444172 () tuple2!42380)

(assert (=> b!4051430 (= e!2513815 lt!1444172)))

(declare-fun b!4051431 () Bool)

(assert (=> b!4051431 (= e!2513821 (tuple2!42381 Nil!43302 lt!1443629))))

(declare-fun b!4051432 () Bool)

(assert (=> b!4051432 (= e!2513821 e!2513819)))

(declare-fun c!699829 () Bool)

(assert (=> b!4051432 (= c!699829 (= (size!32375 Nil!43302) (size!32375 lt!1443629)))))

(declare-fun bm!287878 () Bool)

(assert (=> bm!287878 (= call!287887 (isPrefix!4026 lt!1443629 lt!1443629))))

(declare-fun b!4051433 () Bool)

(declare-fun Unit!62605 () Unit!62585)

(assert (=> b!4051433 (= e!2513814 Unit!62605)))

(declare-fun lt!1444176 () Unit!62585)

(assert (=> b!4051433 (= lt!1444176 call!287880)))

(assert (=> b!4051433 call!287887))

(declare-fun lt!1444165 () Unit!62585)

(assert (=> b!4051433 (= lt!1444165 lt!1444176)))

(declare-fun lt!1444161 () Unit!62585)

(assert (=> b!4051433 (= lt!1444161 call!287884)))

(assert (=> b!4051433 (= lt!1443629 Nil!43302)))

(declare-fun lt!1444186 () Unit!62585)

(assert (=> b!4051433 (= lt!1444186 lt!1444161)))

(assert (=> b!4051433 false))

(declare-fun b!4051434 () Bool)

(assert (=> b!4051434 (= e!2513820 (tuple2!42381 Nil!43302 lt!1443629))))

(declare-fun b!4051435 () Bool)

(assert (=> b!4051435 (= e!2513818 e!2513815)))

(assert (=> b!4051435 (= lt!1444172 call!287886)))

(declare-fun c!699827 () Bool)

(assert (=> b!4051435 (= c!699827 (isEmpty!25846 (_1!24324 lt!1444172)))))

(declare-fun b!4051436 () Bool)

(declare-fun e!2513817 () Bool)

(assert (=> b!4051436 (= e!2513817 (>= (size!32375 (_1!24324 lt!1444180)) (size!32375 Nil!43302)))))

(declare-fun bm!287879 () Bool)

(declare-fun call!287881 () C!23874)

(assert (=> bm!287879 (= call!287881 (head!8562 lt!1443629))))

(declare-fun b!4051437 () Bool)

(assert (=> b!4051437 (= e!2513820 (tuple2!42381 Nil!43302 Nil!43302))))

(declare-fun b!4051438 () Bool)

(assert (=> b!4051438 (= e!2513816 e!2513817)))

(declare-fun res!1651240 () Bool)

(assert (=> b!4051438 (=> res!1651240 e!2513817)))

(assert (=> b!4051438 (= res!1651240 (isEmpty!25846 (_1!24324 lt!1444180)))))

(declare-fun bm!287880 () Bool)

(assert (=> bm!287880 (= call!287880 (lemmaIsPrefixRefl!2593 lt!1443629 lt!1443629))))

(declare-fun bm!287881 () Bool)

(assert (=> bm!287881 (= call!287882 (derivativeStep!3564 (regex!6939 (rule!10021 token!484)) call!287881))))

(declare-fun bm!287882 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!926 (List!43426 List!43426 List!43426) Unit!62585)

(assert (=> bm!287882 (= call!287884 (lemmaIsPrefixSameLengthThenSameList!926 lt!1443629 Nil!43302 lt!1443629))))

(declare-fun b!4051439 () Bool)

(assert (=> b!4051439 (= e!2513815 (tuple2!42381 Nil!43302 lt!1443629))))

(assert (= (and d!1203315 c!699830) b!4051431))

(assert (= (and d!1203315 (not c!699830)) b!4051432))

(assert (= (and b!4051432 c!699829) b!4051428))

(assert (= (and b!4051432 (not c!699829)) b!4051427))

(assert (= (and b!4051428 c!699831) b!4051437))

(assert (= (and b!4051428 (not c!699831)) b!4051434))

(assert (= (and b!4051427 c!699826) b!4051433))

(assert (= (and b!4051427 (not c!699826)) b!4051429))

(assert (= (and b!4051427 c!699828) b!4051435))

(assert (= (and b!4051427 (not c!699828)) b!4051426))

(assert (= (and b!4051435 c!699827) b!4051439))

(assert (= (and b!4051435 (not c!699827)) b!4051430))

(assert (= (or b!4051435 b!4051426) bm!287879))

(assert (= (or b!4051435 b!4051426) bm!287877))

(assert (= (or b!4051435 b!4051426) bm!287881))

(assert (= (or b!4051435 b!4051426) bm!287875))

(assert (= (or b!4051428 b!4051433) bm!287878))

(assert (= (or b!4051428 b!4051427) bm!287876))

(assert (= (or b!4051428 b!4051433) bm!287882))

(assert (= (or b!4051428 b!4051433) bm!287880))

(assert (= (and d!1203315 res!1651239) b!4051438))

(assert (= (and b!4051438 (not res!1651240)) b!4051436))

(declare-fun m!4652821 () Bool)

(assert (=> b!4051436 m!4652821))

(assert (=> b!4051436 m!4651683))

(declare-fun m!4652823 () Bool)

(assert (=> d!1203315 m!4652823))

(declare-fun m!4652825 () Bool)

(assert (=> d!1203315 m!4652825))

(declare-fun m!4652827 () Bool)

(assert (=> d!1203315 m!4652827))

(declare-fun m!4652829 () Bool)

(assert (=> d!1203315 m!4652829))

(assert (=> d!1203315 m!4651945))

(declare-fun m!4652831 () Bool)

(assert (=> d!1203315 m!4652831))

(declare-fun m!4652833 () Bool)

(assert (=> d!1203315 m!4652833))

(assert (=> d!1203315 m!4652827))

(declare-fun m!4652835 () Bool)

(assert (=> d!1203315 m!4652835))

(declare-fun m!4652837 () Bool)

(assert (=> b!4051438 m!4652837))

(assert (=> bm!287878 m!4651249))

(assert (=> b!4051427 m!4652825))

(declare-fun m!4652839 () Bool)

(assert (=> b!4051427 m!4652839))

(declare-fun m!4652841 () Bool)

(assert (=> b!4051427 m!4652841))

(assert (=> b!4051427 m!4651683))

(assert (=> b!4051427 m!4651627))

(assert (=> b!4051427 m!4651633))

(declare-fun m!4652843 () Bool)

(assert (=> b!4051427 m!4652843))

(declare-fun m!4652845 () Bool)

(assert (=> b!4051427 m!4652845))

(declare-fun m!4652847 () Bool)

(assert (=> b!4051427 m!4652847))

(declare-fun m!4652849 () Bool)

(assert (=> b!4051427 m!4652849))

(assert (=> b!4051427 m!4652843))

(declare-fun m!4652851 () Bool)

(assert (=> b!4051427 m!4652851))

(declare-fun m!4652853 () Bool)

(assert (=> b!4051427 m!4652853))

(assert (=> b!4051427 m!4652825))

(assert (=> b!4051427 m!4652847))

(declare-fun m!4652855 () Bool)

(assert (=> b!4051427 m!4652855))

(assert (=> b!4051427 m!4651625))

(assert (=> bm!287876 m!4651947))

(declare-fun m!4652857 () Bool)

(assert (=> bm!287881 m!4652857))

(assert (=> bm!287879 m!4651633))

(assert (=> bm!287877 m!4651627))

(declare-fun m!4652859 () Bool)

(assert (=> bm!287882 m!4652859))

(assert (=> bm!287875 m!4651625))

(declare-fun m!4652861 () Bool)

(assert (=> bm!287875 m!4652861))

(declare-fun m!4652863 () Bool)

(assert (=> b!4051435 m!4652863))

(assert (=> bm!287880 m!4651251))

(assert (=> b!4050702 d!1203315))

(declare-fun d!1203317 () Bool)

(declare-fun lt!1444189 () Int)

(assert (=> d!1203317 (>= lt!1444189 0)))

(declare-fun e!2513822 () Int)

(assert (=> d!1203317 (= lt!1444189 e!2513822)))

(declare-fun c!699832 () Bool)

(assert (=> d!1203317 (= c!699832 (is-Nil!43302 Nil!43302))))

(assert (=> d!1203317 (= (size!32375 Nil!43302) lt!1444189)))

(declare-fun b!4051440 () Bool)

(assert (=> b!4051440 (= e!2513822 0)))

(declare-fun b!4051441 () Bool)

(assert (=> b!4051441 (= e!2513822 (+ 1 (size!32375 (t!335877 Nil!43302))))))

(assert (= (and d!1203317 c!699832) b!4051440))

(assert (= (and d!1203317 (not c!699832)) b!4051441))

(declare-fun m!4652865 () Bool)

(assert (=> b!4051441 m!4652865))

(assert (=> b!4050702 d!1203317))

(declare-fun d!1203319 () Bool)

(declare-fun lt!1444190 () Int)

(assert (=> d!1203319 (>= lt!1444190 0)))

(declare-fun e!2513823 () Int)

(assert (=> d!1203319 (= lt!1444190 e!2513823)))

(declare-fun c!699833 () Bool)

(assert (=> d!1203319 (= c!699833 (is-Nil!43302 lt!1443629))))

(assert (=> d!1203319 (= (size!32375 lt!1443629) lt!1444190)))

(declare-fun b!4051442 () Bool)

(assert (=> b!4051442 (= e!2513823 0)))

(declare-fun b!4051443 () Bool)

(assert (=> b!4051443 (= e!2513823 (+ 1 (size!32375 (t!335877 lt!1443629))))))

(assert (= (and d!1203319 c!699833) b!4051442))

(assert (= (and d!1203319 (not c!699833)) b!4051443))

(declare-fun m!4652867 () Bool)

(assert (=> b!4051443 m!4652867))

(assert (=> b!4050702 d!1203319))

(declare-fun d!1203321 () Bool)

(declare-fun c!699836 () Bool)

(assert (=> d!1203321 (= c!699836 (is-Nil!43302 lt!1443993))))

(declare-fun e!2513826 () (Set C!23874))

(assert (=> d!1203321 (= (content!6596 lt!1443993) e!2513826)))

(declare-fun b!4051448 () Bool)

(assert (=> b!4051448 (= e!2513826 (as set.empty (Set C!23874)))))

(declare-fun b!4051449 () Bool)

(assert (=> b!4051449 (= e!2513826 (set.union (set.insert (h!48722 lt!1443993) (as set.empty (Set C!23874))) (content!6596 (t!335877 lt!1443993))))))

(assert (= (and d!1203321 c!699836) b!4051448))

(assert (= (and d!1203321 (not c!699836)) b!4051449))

(declare-fun m!4652869 () Bool)

(assert (=> b!4051449 m!4652869))

(declare-fun m!4652871 () Bool)

(assert (=> b!4051449 m!4652871))

(assert (=> d!1203147 d!1203321))

(declare-fun d!1203323 () Bool)

(declare-fun c!699837 () Bool)

(assert (=> d!1203323 (= c!699837 (is-Nil!43302 lt!1443605))))

(declare-fun e!2513827 () (Set C!23874))

(assert (=> d!1203323 (= (content!6596 lt!1443605) e!2513827)))

(declare-fun b!4051450 () Bool)

(assert (=> b!4051450 (= e!2513827 (as set.empty (Set C!23874)))))

(declare-fun b!4051451 () Bool)

(assert (=> b!4051451 (= e!2513827 (set.union (set.insert (h!48722 lt!1443605) (as set.empty (Set C!23874))) (content!6596 (t!335877 lt!1443605))))))

(assert (= (and d!1203323 c!699837) b!4051450))

(assert (= (and d!1203323 (not c!699837)) b!4051451))

(declare-fun m!4652873 () Bool)

(assert (=> b!4051451 m!4652873))

(declare-fun m!4652875 () Bool)

(assert (=> b!4051451 m!4652875))

(assert (=> d!1203147 d!1203323))

(declare-fun d!1203325 () Bool)

(declare-fun c!699838 () Bool)

(assert (=> d!1203325 (= c!699838 (is-Nil!43302 lt!1443636))))

(declare-fun e!2513828 () (Set C!23874))

(assert (=> d!1203325 (= (content!6596 lt!1443636) e!2513828)))

(declare-fun b!4051452 () Bool)

(assert (=> b!4051452 (= e!2513828 (as set.empty (Set C!23874)))))

(declare-fun b!4051453 () Bool)

(assert (=> b!4051453 (= e!2513828 (set.union (set.insert (h!48722 lt!1443636) (as set.empty (Set C!23874))) (content!6596 (t!335877 lt!1443636))))))

(assert (= (and d!1203325 c!699838) b!4051452))

(assert (= (and d!1203325 (not c!699838)) b!4051453))

(declare-fun m!4652877 () Bool)

(assert (=> b!4051453 m!4652877))

(declare-fun m!4652879 () Bool)

(assert (=> b!4051453 m!4652879))

(assert (=> d!1203147 d!1203325))

(declare-fun d!1203327 () Bool)

(declare-fun c!699839 () Bool)

(assert (=> d!1203327 (= c!699839 (is-Nil!43302 lt!1443953))))

(declare-fun e!2513829 () (Set C!23874))

(assert (=> d!1203327 (= (content!6596 lt!1443953) e!2513829)))

(declare-fun b!4051454 () Bool)

(assert (=> b!4051454 (= e!2513829 (as set.empty (Set C!23874)))))

(declare-fun b!4051455 () Bool)

(assert (=> b!4051455 (= e!2513829 (set.union (set.insert (h!48722 lt!1443953) (as set.empty (Set C!23874))) (content!6596 (t!335877 lt!1443953))))))

(assert (= (and d!1203327 c!699839) b!4051454))

(assert (= (and d!1203327 (not c!699839)) b!4051455))

(declare-fun m!4652881 () Bool)

(assert (=> b!4051455 m!4652881))

(declare-fun m!4652883 () Bool)

(assert (=> b!4051455 m!4652883))

(assert (=> d!1203071 d!1203327))

(declare-fun d!1203329 () Bool)

(declare-fun c!699840 () Bool)

(assert (=> d!1203329 (= c!699840 (is-Nil!43302 lt!1443625))))

(declare-fun e!2513830 () (Set C!23874))

(assert (=> d!1203329 (= (content!6596 lt!1443625) e!2513830)))

(declare-fun b!4051456 () Bool)

(assert (=> b!4051456 (= e!2513830 (as set.empty (Set C!23874)))))

(declare-fun b!4051457 () Bool)

(assert (=> b!4051457 (= e!2513830 (set.union (set.insert (h!48722 lt!1443625) (as set.empty (Set C!23874))) (content!6596 (t!335877 lt!1443625))))))

(assert (= (and d!1203329 c!699840) b!4051456))

(assert (= (and d!1203329 (not c!699840)) b!4051457))

(declare-fun m!4652885 () Bool)

(assert (=> b!4051457 m!4652885))

(declare-fun m!4652887 () Bool)

(assert (=> b!4051457 m!4652887))

(assert (=> d!1203071 d!1203329))

(declare-fun d!1203331 () Bool)

(declare-fun c!699841 () Bool)

(assert (=> d!1203331 (= c!699841 (is-Nil!43302 lt!1443602))))

(declare-fun e!2513831 () (Set C!23874))

(assert (=> d!1203331 (= (content!6596 lt!1443602) e!2513831)))

(declare-fun b!4051458 () Bool)

(assert (=> b!4051458 (= e!2513831 (as set.empty (Set C!23874)))))

(declare-fun b!4051459 () Bool)

(assert (=> b!4051459 (= e!2513831 (set.union (set.insert (h!48722 lt!1443602) (as set.empty (Set C!23874))) (content!6596 (t!335877 lt!1443602))))))

(assert (= (and d!1203331 c!699841) b!4051458))

(assert (= (and d!1203331 (not c!699841)) b!4051459))

(declare-fun m!4652889 () Bool)

(assert (=> b!4051459 m!4652889))

(declare-fun m!4652891 () Bool)

(assert (=> b!4051459 m!4652891))

(assert (=> d!1203071 d!1203331))

(declare-fun d!1203333 () Bool)

(assert (=> d!1203333 (= (head!8562 lt!1443625) (h!48722 lt!1443625))))

(assert (=> b!4051070 d!1203333))

(declare-fun d!1203335 () Bool)

(assert (=> d!1203335 (= (head!8562 lt!1443600) (h!48722 lt!1443600))))

(assert (=> b!4051070 d!1203335))

(declare-fun d!1203337 () Bool)

(assert (=> d!1203337 (= (apply!10128 (transformation!6939 (rule!10021 token!484)) (seqFromList!5156 (_1!24324 lt!1443860))) (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 token!484))) (seqFromList!5156 (_1!24324 lt!1443860))))))

(declare-fun b_lambda!118403 () Bool)

(assert (=> (not b_lambda!118403) (not d!1203337)))

(declare-fun t!335946 () Bool)

(declare-fun tb!243741 () Bool)

(assert (=> (and b!4050453 (= (toValue!9491 (transformation!6939 (rule!10021 token!484))) (toValue!9491 (transformation!6939 (rule!10021 token!484)))) t!335946) tb!243741))

(declare-fun result!295370 () Bool)

(assert (=> tb!243741 (= result!295370 (inv!21 (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 token!484))) (seqFromList!5156 (_1!24324 lt!1443860)))))))

(declare-fun m!4652893 () Bool)

(assert (=> tb!243741 m!4652893))

(assert (=> d!1203337 t!335946))

(declare-fun b_and!311543 () Bool)

(assert (= b_and!311491 (and (=> t!335946 result!295370) b_and!311543)))

(declare-fun tb!243743 () Bool)

(declare-fun t!335948 () Bool)

(assert (=> (and b!4050449 (= (toValue!9491 (transformation!6939 (h!48724 rules!2999))) (toValue!9491 (transformation!6939 (rule!10021 token!484)))) t!335948) tb!243743))

(declare-fun result!295372 () Bool)

(assert (= result!295372 result!295370))

(assert (=> d!1203337 t!335948))

(declare-fun b_and!311545 () Bool)

(assert (= b_and!311493 (and (=> t!335948 result!295372) b_and!311545)))

(declare-fun tb!243745 () Bool)

(declare-fun t!335950 () Bool)

(assert (=> (and b!4051134 (= (toValue!9491 (transformation!6939 (h!48724 (t!335879 rules!2999)))) (toValue!9491 (transformation!6939 (rule!10021 token!484)))) t!335950) tb!243745))

(declare-fun result!295374 () Bool)

(assert (= result!295374 result!295370))

(assert (=> d!1203337 t!335950))

(declare-fun b_and!311547 () Bool)

(assert (= b_and!311507 (and (=> t!335950 result!295374) b_and!311547)))

(assert (=> d!1203337 m!4651687))

(declare-fun m!4652895 () Bool)

(assert (=> d!1203337 m!4652895))

(assert (=> b!4050694 d!1203337))

(declare-fun d!1203339 () Bool)

(declare-fun lt!1444193 () Int)

(assert (=> d!1203339 (= lt!1444193 (size!32375 (list!16133 (seqFromList!5156 (_1!24324 lt!1443860)))))))

(declare-fun size!32381 (Conc!13150) Int)

(assert (=> d!1203339 (= lt!1444193 (size!32381 (c!699688 (seqFromList!5156 (_1!24324 lt!1443860)))))))

(assert (=> d!1203339 (= (size!32379 (seqFromList!5156 (_1!24324 lt!1443860))) lt!1444193)))

(declare-fun bs!591567 () Bool)

(assert (= bs!591567 d!1203339))

(assert (=> bs!591567 m!4651687))

(declare-fun m!4652897 () Bool)

(assert (=> bs!591567 m!4652897))

(assert (=> bs!591567 m!4652897))

(declare-fun m!4652899 () Bool)

(assert (=> bs!591567 m!4652899))

(declare-fun m!4652901 () Bool)

(assert (=> bs!591567 m!4652901))

(assert (=> b!4050694 d!1203339))

(declare-fun d!1203341 () Bool)

(assert (=> d!1203341 (= (seqFromList!5156 (_1!24324 lt!1443860)) (fromListB!2353 (_1!24324 lt!1443860)))))

(declare-fun bs!591568 () Bool)

(assert (= bs!591568 d!1203341))

(declare-fun m!4652903 () Bool)

(assert (=> bs!591568 m!4652903))

(assert (=> b!4050694 d!1203341))

(assert (=> b!4050694 d!1203319))

(assert (=> b!4050694 d!1203317))

(assert (=> b!4050694 d!1203315))

(declare-fun d!1203343 () Bool)

(assert (=> d!1203343 (= (isEmpty!25846 (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 token!484)) Nil!43302 (size!32375 Nil!43302) lt!1443629 lt!1443629 (size!32375 lt!1443629)))) (is-Nil!43302 (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 token!484)) Nil!43302 (size!32375 Nil!43302) lt!1443629 lt!1443629 (size!32375 lt!1443629)))))))

(assert (=> b!4050694 d!1203343))

(declare-fun d!1203345 () Bool)

(declare-fun e!2513835 () Bool)

(assert (=> d!1203345 e!2513835))

(declare-fun res!1651243 () Bool)

(assert (=> d!1203345 (=> res!1651243 e!2513835)))

(assert (=> d!1203345 (= res!1651243 (isEmpty!25846 (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 token!484)) Nil!43302 (size!32375 Nil!43302) lt!1443629 lt!1443629 (size!32375 lt!1443629)))))))

(declare-fun lt!1444196 () Unit!62585)

(declare-fun choose!24591 (Regex!11844 List!43426) Unit!62585)

(assert (=> d!1203345 (= lt!1444196 (choose!24591 (regex!6939 (rule!10021 token!484)) lt!1443629))))

(assert (=> d!1203345 (validRegex!5359 (regex!6939 (rule!10021 token!484)))))

(assert (=> d!1203345 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1369 (regex!6939 (rule!10021 token!484)) lt!1443629) lt!1444196)))

(declare-fun b!4051462 () Bool)

(assert (=> b!4051462 (= e!2513835 (matchR!5797 (regex!6939 (rule!10021 token!484)) (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 token!484)) Nil!43302 (size!32375 Nil!43302) lt!1443629 lt!1443629 (size!32375 lt!1443629)))))))

(assert (= (and d!1203345 (not res!1651243)) b!4051462))

(assert (=> d!1203345 m!4651625))

(assert (=> d!1203345 m!4651697))

(assert (=> d!1203345 m!4651683))

(assert (=> d!1203345 m!4651625))

(assert (=> d!1203345 m!4651685))

(assert (=> d!1203345 m!4651683))

(declare-fun m!4652905 () Bool)

(assert (=> d!1203345 m!4652905))

(assert (=> d!1203345 m!4651945))

(assert (=> b!4051462 m!4651683))

(assert (=> b!4051462 m!4651625))

(assert (=> b!4051462 m!4651683))

(assert (=> b!4051462 m!4651625))

(assert (=> b!4051462 m!4651685))

(assert (=> b!4051462 m!4651699))

(assert (=> b!4050694 d!1203345))

(declare-fun b!4051467 () Bool)

(declare-fun e!2513838 () Bool)

(assert (=> b!4051467 (= e!2513838 true)))

(declare-fun d!1203347 () Bool)

(assert (=> d!1203347 e!2513838))

(assert (= d!1203347 b!4051467))

(declare-fun lambda!127502 () Int)

(declare-fun order!22689 () Int)

(declare-fun order!22687 () Int)

(declare-fun dynLambda!18403 (Int Int) Int)

(declare-fun dynLambda!18404 (Int Int) Int)

(assert (=> b!4051467 (< (dynLambda!18403 order!22687 (toValue!9491 (transformation!6939 (rule!10021 token!484)))) (dynLambda!18404 order!22689 lambda!127502))))

(declare-fun order!22691 () Int)

(declare-fun dynLambda!18405 (Int Int) Int)

(assert (=> b!4051467 (< (dynLambda!18405 order!22691 (toChars!9350 (transformation!6939 (rule!10021 token!484)))) (dynLambda!18404 order!22689 lambda!127502))))

(assert (=> d!1203347 (= (list!16133 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 token!484))) (seqFromList!5156 (_1!24324 lt!1443860))))) (list!16133 (seqFromList!5156 (_1!24324 lt!1443860))))))

(declare-fun lt!1444199 () Unit!62585)

(declare-fun ForallOf!830 (Int BalanceConc!25894) Unit!62585)

(assert (=> d!1203347 (= lt!1444199 (ForallOf!830 lambda!127502 (seqFromList!5156 (_1!24324 lt!1443860))))))

(assert (=> d!1203347 (= (lemmaSemiInverse!1918 (transformation!6939 (rule!10021 token!484)) (seqFromList!5156 (_1!24324 lt!1443860))) lt!1444199)))

(declare-fun b_lambda!118405 () Bool)

(assert (=> (not b_lambda!118405) (not d!1203347)))

(declare-fun t!335952 () Bool)

(declare-fun tb!243747 () Bool)

(assert (=> (and b!4050453 (= (toChars!9350 (transformation!6939 (rule!10021 token!484))) (toChars!9350 (transformation!6939 (rule!10021 token!484)))) t!335952) tb!243747))

(declare-fun e!2513839 () Bool)

(declare-fun tp!1228533 () Bool)

(declare-fun b!4051468 () Bool)

(assert (=> b!4051468 (= e!2513839 (and (inv!57891 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 token!484))) (seqFromList!5156 (_1!24324 lt!1443860)))))) tp!1228533))))

(declare-fun result!295376 () Bool)

(assert (=> tb!243747 (= result!295376 (and (inv!57892 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 token!484))) (seqFromList!5156 (_1!24324 lt!1443860))))) e!2513839))))

(assert (= tb!243747 b!4051468))

(declare-fun m!4652907 () Bool)

(assert (=> b!4051468 m!4652907))

(declare-fun m!4652909 () Bool)

(assert (=> tb!243747 m!4652909))

(assert (=> d!1203347 t!335952))

(declare-fun b_and!311549 () Bool)

(assert (= b_and!311537 (and (=> t!335952 result!295376) b_and!311549)))

(declare-fun t!335954 () Bool)

(declare-fun tb!243749 () Bool)

(assert (=> (and b!4050449 (= (toChars!9350 (transformation!6939 (h!48724 rules!2999))) (toChars!9350 (transformation!6939 (rule!10021 token!484)))) t!335954) tb!243749))

(declare-fun result!295378 () Bool)

(assert (= result!295378 result!295376))

(assert (=> d!1203347 t!335954))

(declare-fun b_and!311551 () Bool)

(assert (= b_and!311539 (and (=> t!335954 result!295378) b_and!311551)))

(declare-fun t!335956 () Bool)

(declare-fun tb!243751 () Bool)

(assert (=> (and b!4051134 (= (toChars!9350 (transformation!6939 (h!48724 (t!335879 rules!2999)))) (toChars!9350 (transformation!6939 (rule!10021 token!484)))) t!335956) tb!243751))

(declare-fun result!295380 () Bool)

(assert (= result!295380 result!295376))

(assert (=> d!1203347 t!335956))

(declare-fun b_and!311553 () Bool)

(assert (= b_and!311541 (and (=> t!335956 result!295380) b_and!311553)))

(declare-fun b_lambda!118407 () Bool)

(assert (=> (not b_lambda!118407) (not d!1203347)))

(assert (=> d!1203347 t!335946))

(declare-fun b_and!311555 () Bool)

(assert (= b_and!311543 (and (=> t!335946 result!295370) b_and!311555)))

(assert (=> d!1203347 t!335948))

(declare-fun b_and!311557 () Bool)

(assert (= b_and!311545 (and (=> t!335948 result!295372) b_and!311557)))

(assert (=> d!1203347 t!335950))

(declare-fun b_and!311559 () Bool)

(assert (= b_and!311547 (and (=> t!335950 result!295374) b_and!311559)))

(assert (=> d!1203347 m!4651687))

(assert (=> d!1203347 m!4652895))

(assert (=> d!1203347 m!4652895))

(declare-fun m!4652911 () Bool)

(assert (=> d!1203347 m!4652911))

(assert (=> d!1203347 m!4651687))

(declare-fun m!4652913 () Bool)

(assert (=> d!1203347 m!4652913))

(assert (=> d!1203347 m!4652911))

(declare-fun m!4652915 () Bool)

(assert (=> d!1203347 m!4652915))

(assert (=> d!1203347 m!4651687))

(assert (=> d!1203347 m!4652897))

(assert (=> b!4050694 d!1203347))

(declare-fun bs!591569 () Bool)

(declare-fun d!1203349 () Bool)

(assert (= bs!591569 (and d!1203349 d!1203347)))

(declare-fun lambda!127505 () Int)

(assert (=> bs!591569 (= (and (= (toChars!9350 (transformation!6939 (h!48724 rules!2999))) (toChars!9350 (transformation!6939 (rule!10021 token!484)))) (= (toValue!9491 (transformation!6939 (h!48724 rules!2999))) (toValue!9491 (transformation!6939 (rule!10021 token!484))))) (= lambda!127505 lambda!127502))))

(assert (=> d!1203349 true))

(assert (=> d!1203349 (< (dynLambda!18405 order!22691 (toChars!9350 (transformation!6939 (h!48724 rules!2999)))) (dynLambda!18404 order!22689 lambda!127505))))

(assert (=> d!1203349 true))

(assert (=> d!1203349 (< (dynLambda!18403 order!22687 (toValue!9491 (transformation!6939 (h!48724 rules!2999)))) (dynLambda!18404 order!22689 lambda!127505))))

(declare-fun Forall!1496 (Int) Bool)

(assert (=> d!1203349 (= (semiInverseModEq!2967 (toChars!9350 (transformation!6939 (h!48724 rules!2999))) (toValue!9491 (transformation!6939 (h!48724 rules!2999)))) (Forall!1496 lambda!127505))))

(declare-fun bs!591570 () Bool)

(assert (= bs!591570 d!1203349))

(declare-fun m!4652923 () Bool)

(assert (=> bs!591570 m!4652923))

(assert (=> d!1203027 d!1203349))

(declare-fun d!1203361 () Bool)

(declare-fun lt!1444204 () Int)

(assert (=> d!1203361 (>= lt!1444204 0)))

(declare-fun e!2513846 () Int)

(assert (=> d!1203361 (= lt!1444204 e!2513846)))

(declare-fun c!699846 () Bool)

(assert (=> d!1203361 (= c!699846 (is-Nil!43302 lt!1443605))))

(assert (=> d!1203361 (= (size!32375 lt!1443605) lt!1444204)))

(declare-fun b!4051483 () Bool)

(assert (=> b!4051483 (= e!2513846 0)))

(declare-fun b!4051484 () Bool)

(assert (=> b!4051484 (= e!2513846 (+ 1 (size!32375 (t!335877 lt!1443605))))))

(assert (= (and d!1203361 c!699846) b!4051483))

(assert (= (and d!1203361 (not c!699846)) b!4051484))

(declare-fun m!4652935 () Bool)

(assert (=> b!4051484 m!4652935))

(assert (=> b!4050984 d!1203361))

(assert (=> b!4050984 d!1202993))

(assert (=> b!4051064 d!1203319))

(assert (=> b!4051064 d!1202993))

(declare-fun d!1203363 () Bool)

(assert (=> d!1203363 (= (isEmpty!25846 lt!1443622) (is-Nil!43302 lt!1443622))))

(assert (=> bm!287851 d!1203363))

(assert (=> b!4050781 d!1203333))

(declare-fun d!1203367 () Bool)

(declare-fun lt!1444205 () Int)

(assert (=> d!1203367 (>= lt!1444205 0)))

(declare-fun e!2513847 () Int)

(assert (=> d!1203367 (= lt!1444205 e!2513847)))

(declare-fun c!699847 () Bool)

(assert (=> d!1203367 (= c!699847 (is-Nil!43302 (originalCharacters!7539 (_1!24322 (v!39762 lt!1443644)))))))

(assert (=> d!1203367 (= (size!32375 (originalCharacters!7539 (_1!24322 (v!39762 lt!1443644)))) lt!1444205)))

(declare-fun b!4051485 () Bool)

(assert (=> b!4051485 (= e!2513847 0)))

(declare-fun b!4051486 () Bool)

(assert (=> b!4051486 (= e!2513847 (+ 1 (size!32375 (t!335877 (originalCharacters!7539 (_1!24322 (v!39762 lt!1443644)))))))))

(assert (= (and d!1203367 c!699847) b!4051485))

(assert (= (and d!1203367 (not c!699847)) b!4051486))

(declare-fun m!4652941 () Bool)

(assert (=> b!4051486 m!4652941))

(assert (=> d!1203011 d!1203367))

(assert (=> b!4050801 d!1203333))

(declare-fun d!1203369 () Bool)

(assert (=> d!1203369 (= (head!8562 lt!1443617) (h!48722 lt!1443617))))

(assert (=> b!4050801 d!1203369))

(declare-fun d!1203371 () Bool)

(declare-fun lt!1444206 () Int)

(assert (=> d!1203371 (>= lt!1444206 0)))

(declare-fun e!2513848 () Int)

(assert (=> d!1203371 (= lt!1444206 e!2513848)))

(declare-fun c!699848 () Bool)

(assert (=> d!1203371 (= c!699848 (is-Nil!43302 (_2!24322 (get!14207 lt!1443903))))))

(assert (=> d!1203371 (= (size!32375 (_2!24322 (get!14207 lt!1443903))) lt!1444206)))

(declare-fun b!4051487 () Bool)

(assert (=> b!4051487 (= e!2513848 0)))

(declare-fun b!4051488 () Bool)

(assert (=> b!4051488 (= e!2513848 (+ 1 (size!32375 (t!335877 (_2!24322 (get!14207 lt!1443903))))))))

(assert (= (and d!1203371 c!699848) b!4051487))

(assert (= (and d!1203371 (not c!699848)) b!4051488))

(declare-fun m!4652943 () Bool)

(assert (=> b!4051488 m!4652943))

(assert (=> b!4050838 d!1203371))

(declare-fun d!1203377 () Bool)

(assert (=> d!1203377 (= (get!14207 lt!1443903) (v!39762 lt!1443903))))

(assert (=> b!4050838 d!1203377))

(assert (=> b!4050838 d!1203361))

(declare-fun d!1203379 () Bool)

(assert (=> d!1203379 (= (isEmpty!25846 lt!1443625) (is-Nil!43302 lt!1443625))))

(assert (=> bm!287847 d!1203379))

(declare-fun d!1203381 () Bool)

(declare-fun lt!1444207 () Int)

(assert (=> d!1203381 (>= lt!1444207 0)))

(declare-fun e!2513849 () Int)

(assert (=> d!1203381 (= lt!1444207 e!2513849)))

(declare-fun c!699849 () Bool)

(assert (=> d!1203381 (= c!699849 (is-Nil!43302 (t!335877 lt!1443622)))))

(assert (=> d!1203381 (= (size!32375 (t!335877 lt!1443622)) lt!1444207)))

(declare-fun b!4051489 () Bool)

(assert (=> b!4051489 (= e!2513849 0)))

(declare-fun b!4051490 () Bool)

(assert (=> b!4051490 (= e!2513849 (+ 1 (size!32375 (t!335877 (t!335877 lt!1443622)))))))

(assert (= (and d!1203381 c!699849) b!4051489))

(assert (= (and d!1203381 (not c!699849)) b!4051490))

(declare-fun m!4652945 () Bool)

(assert (=> b!4051490 m!4652945))

(assert (=> b!4051038 d!1203381))

(declare-fun d!1203387 () Bool)

(declare-fun lt!1444208 () Int)

(assert (=> d!1203387 (>= lt!1444208 0)))

(declare-fun e!2513850 () Int)

(assert (=> d!1203387 (= lt!1444208 e!2513850)))

(declare-fun c!699850 () Bool)

(assert (=> d!1203387 (= c!699850 (is-Nil!43302 lt!1443993))))

(assert (=> d!1203387 (= (size!32375 lt!1443993) lt!1444208)))

(declare-fun b!4051491 () Bool)

(assert (=> b!4051491 (= e!2513850 0)))

(declare-fun b!4051492 () Bool)

(assert (=> b!4051492 (= e!2513850 (+ 1 (size!32375 (t!335877 lt!1443993))))))

(assert (= (and d!1203387 c!699850) b!4051491))

(assert (= (and d!1203387 (not c!699850)) b!4051492))

(declare-fun m!4652947 () Bool)

(assert (=> b!4051492 m!4652947))

(assert (=> b!4051079 d!1203387))

(assert (=> b!4051079 d!1203361))

(declare-fun d!1203389 () Bool)

(declare-fun lt!1444209 () Int)

(assert (=> d!1203389 (>= lt!1444209 0)))

(declare-fun e!2513851 () Int)

(assert (=> d!1203389 (= lt!1444209 e!2513851)))

(declare-fun c!699851 () Bool)

(assert (=> d!1203389 (= c!699851 (is-Nil!43302 lt!1443636))))

(assert (=> d!1203389 (= (size!32375 lt!1443636) lt!1444209)))

(declare-fun b!4051493 () Bool)

(assert (=> b!4051493 (= e!2513851 0)))

(declare-fun b!4051494 () Bool)

(assert (=> b!4051494 (= e!2513851 (+ 1 (size!32375 (t!335877 lt!1443636))))))

(assert (= (and d!1203389 c!699851) b!4051493))

(assert (= (and d!1203389 (not c!699851)) b!4051494))

(declare-fun m!4652949 () Bool)

(assert (=> b!4051494 m!4652949))

(assert (=> b!4051079 d!1203389))

(declare-fun d!1203391 () Bool)

(declare-fun lt!1444210 () Int)

(assert (=> d!1203391 (>= lt!1444210 0)))

(declare-fun e!2513852 () Int)

(assert (=> d!1203391 (= lt!1444210 e!2513852)))

(declare-fun c!699852 () Bool)

(assert (=> d!1203391 (= c!699852 (is-Nil!43302 lt!1443953))))

(assert (=> d!1203391 (= (size!32375 lt!1443953) lt!1444210)))

(declare-fun b!4051495 () Bool)

(assert (=> b!4051495 (= e!2513852 0)))

(declare-fun b!4051496 () Bool)

(assert (=> b!4051496 (= e!2513852 (+ 1 (size!32375 (t!335877 lt!1443953))))))

(assert (= (and d!1203391 c!699852) b!4051495))

(assert (= (and d!1203391 (not c!699852)) b!4051496))

(declare-fun m!4652951 () Bool)

(assert (=> b!4051496 m!4652951))

(assert (=> b!4050987 d!1203391))

(assert (=> b!4050987 d!1202993))

(declare-fun d!1203393 () Bool)

(declare-fun lt!1444211 () Int)

(assert (=> d!1203393 (>= lt!1444211 0)))

(declare-fun e!2513853 () Int)

(assert (=> d!1203393 (= lt!1444211 e!2513853)))

(declare-fun c!699853 () Bool)

(assert (=> d!1203393 (= c!699853 (is-Nil!43302 lt!1443602))))

(assert (=> d!1203393 (= (size!32375 lt!1443602) lt!1444211)))

(declare-fun b!4051497 () Bool)

(assert (=> b!4051497 (= e!2513853 0)))

(declare-fun b!4051498 () Bool)

(assert (=> b!4051498 (= e!2513853 (+ 1 (size!32375 (t!335877 lt!1443602))))))

(assert (= (and d!1203393 c!699853) b!4051497))

(assert (= (and d!1203393 (not c!699853)) b!4051498))

(declare-fun m!4652953 () Bool)

(assert (=> b!4051498 m!4652953))

(assert (=> b!4050987 d!1203393))

(assert (=> b!4051012 d!1203117))

(assert (=> b!4051012 d!1203115))

(declare-fun b!4051504 () Bool)

(declare-fun e!2513857 () List!43426)

(assert (=> b!4051504 (= e!2513857 (Cons!43302 (h!48722 (t!335877 prefix!494)) (++!11341 (t!335877 (t!335877 prefix!494)) suffix!1299)))))

(declare-fun b!4051503 () Bool)

(assert (=> b!4051503 (= e!2513857 suffix!1299)))

(declare-fun d!1203395 () Bool)

(declare-fun e!2513856 () Bool)

(assert (=> d!1203395 e!2513856))

(declare-fun res!1651249 () Bool)

(assert (=> d!1203395 (=> (not res!1651249) (not e!2513856))))

(declare-fun lt!1444212 () List!43426)

(assert (=> d!1203395 (= res!1651249 (= (content!6596 lt!1444212) (set.union (content!6596 (t!335877 prefix!494)) (content!6596 suffix!1299))))))

(assert (=> d!1203395 (= lt!1444212 e!2513857)))

(declare-fun c!699856 () Bool)

(assert (=> d!1203395 (= c!699856 (is-Nil!43302 (t!335877 prefix!494)))))

(assert (=> d!1203395 (= (++!11341 (t!335877 prefix!494) suffix!1299) lt!1444212)))

(declare-fun b!4051505 () Bool)

(declare-fun res!1651248 () Bool)

(assert (=> b!4051505 (=> (not res!1651248) (not e!2513856))))

(assert (=> b!4051505 (= res!1651248 (= (size!32375 lt!1444212) (+ (size!32375 (t!335877 prefix!494)) (size!32375 suffix!1299))))))

(declare-fun b!4051506 () Bool)

(assert (=> b!4051506 (= e!2513856 (or (not (= suffix!1299 Nil!43302)) (= lt!1444212 (t!335877 prefix!494))))))

(assert (= (and d!1203395 c!699856) b!4051503))

(assert (= (and d!1203395 (not c!699856)) b!4051504))

(assert (= (and d!1203395 res!1651249) b!4051505))

(assert (= (and b!4051505 res!1651248) b!4051506))

(declare-fun m!4652955 () Bool)

(assert (=> b!4051504 m!4652955))

(declare-fun m!4652957 () Bool)

(assert (=> d!1203395 m!4652957))

(declare-fun m!4652959 () Bool)

(assert (=> d!1203395 m!4652959))

(assert (=> d!1203395 m!4652093))

(declare-fun m!4652961 () Bool)

(assert (=> b!4051505 m!4652961))

(assert (=> b!4051505 m!4652231))

(assert (=> b!4051505 m!4651237))

(assert (=> b!4050972 d!1203395))

(declare-fun d!1203397 () Bool)

(assert (=> d!1203397 (= (list!16133 lt!1443882) (list!16135 (c!699688 lt!1443882)))))

(declare-fun bs!591571 () Bool)

(assert (= bs!591571 d!1203397))

(declare-fun m!4652963 () Bool)

(assert (=> bs!591571 m!4652963))

(assert (=> d!1202971 d!1203397))

(declare-fun d!1203399 () Bool)

(declare-fun c!699857 () Bool)

(assert (=> d!1203399 (= c!699857 (is-Nil!43302 lt!1443948))))

(declare-fun e!2513858 () (Set C!23874))

(assert (=> d!1203399 (= (content!6596 lt!1443948) e!2513858)))

(declare-fun b!4051507 () Bool)

(assert (=> b!4051507 (= e!2513858 (as set.empty (Set C!23874)))))

(declare-fun b!4051508 () Bool)

(assert (=> b!4051508 (= e!2513858 (set.union (set.insert (h!48722 lt!1443948) (as set.empty (Set C!23874))) (content!6596 (t!335877 lt!1443948))))))

(assert (= (and d!1203399 c!699857) b!4051507))

(assert (= (and d!1203399 (not c!699857)) b!4051508))

(declare-fun m!4652965 () Bool)

(assert (=> b!4051508 m!4652965))

(declare-fun m!4652967 () Bool)

(assert (=> b!4051508 m!4652967))

(assert (=> d!1203061 d!1203399))

(declare-fun d!1203401 () Bool)

(declare-fun c!699859 () Bool)

(assert (=> d!1203401 (= c!699859 (is-Nil!43302 prefix!494))))

(declare-fun e!2513860 () (Set C!23874))

(assert (=> d!1203401 (= (content!6596 prefix!494) e!2513860)))

(declare-fun b!4051511 () Bool)

(assert (=> b!4051511 (= e!2513860 (as set.empty (Set C!23874)))))

(declare-fun b!4051512 () Bool)

(assert (=> b!4051512 (= e!2513860 (set.union (set.insert (h!48722 prefix!494) (as set.empty (Set C!23874))) (content!6596 (t!335877 prefix!494))))))

(assert (= (and d!1203401 c!699859) b!4051511))

(assert (= (and d!1203401 (not c!699859)) b!4051512))

(declare-fun m!4652971 () Bool)

(assert (=> b!4051512 m!4652971))

(assert (=> b!4051512 m!4652959))

(assert (=> d!1203061 d!1203401))

(declare-fun d!1203403 () Bool)

(declare-fun c!699860 () Bool)

(assert (=> d!1203403 (= c!699860 (is-Nil!43302 suffix!1299))))

(declare-fun e!2513861 () (Set C!23874))

(assert (=> d!1203403 (= (content!6596 suffix!1299) e!2513861)))

(declare-fun b!4051513 () Bool)

(assert (=> b!4051513 (= e!2513861 (as set.empty (Set C!23874)))))

(declare-fun b!4051514 () Bool)

(assert (=> b!4051514 (= e!2513861 (set.union (set.insert (h!48722 suffix!1299) (as set.empty (Set C!23874))) (content!6596 (t!335877 suffix!1299))))))

(assert (= (and d!1203403 c!699860) b!4051513))

(assert (= (and d!1203403 (not c!699860)) b!4051514))

(declare-fun m!4652975 () Bool)

(assert (=> b!4051514 m!4652975))

(declare-fun m!4652977 () Bool)

(assert (=> b!4051514 m!4652977))

(assert (=> d!1203061 d!1203403))

(declare-fun d!1203407 () Bool)

(declare-fun e!2513865 () Bool)

(assert (=> d!1203407 e!2513865))

(declare-fun res!1651253 () Bool)

(assert (=> d!1203407 (=> res!1651253 e!2513865)))

(declare-fun lt!1444213 () Bool)

(assert (=> d!1203407 (= res!1651253 (not lt!1444213))))

(declare-fun e!2513864 () Bool)

(assert (=> d!1203407 (= lt!1444213 e!2513864)))

(declare-fun res!1651251 () Bool)

(assert (=> d!1203407 (=> res!1651251 e!2513864)))

(assert (=> d!1203407 (= res!1651251 (is-Nil!43302 (tail!6294 lt!1443622)))))

(assert (=> d!1203407 (= (isPrefix!4026 (tail!6294 lt!1443622) (tail!6294 lt!1443629)) lt!1444213)))

(declare-fun b!4051521 () Bool)

(declare-fun e!2513866 () Bool)

(assert (=> b!4051521 (= e!2513866 (isPrefix!4026 (tail!6294 (tail!6294 lt!1443622)) (tail!6294 (tail!6294 lt!1443629))))))

(declare-fun b!4051520 () Bool)

(declare-fun res!1651250 () Bool)

(assert (=> b!4051520 (=> (not res!1651250) (not e!2513866))))

(assert (=> b!4051520 (= res!1651250 (= (head!8562 (tail!6294 lt!1443622)) (head!8562 (tail!6294 lt!1443629))))))

(declare-fun b!4051519 () Bool)

(assert (=> b!4051519 (= e!2513864 e!2513866)))

(declare-fun res!1651252 () Bool)

(assert (=> b!4051519 (=> (not res!1651252) (not e!2513866))))

(assert (=> b!4051519 (= res!1651252 (not (is-Nil!43302 (tail!6294 lt!1443629))))))

(declare-fun b!4051522 () Bool)

(assert (=> b!4051522 (= e!2513865 (>= (size!32375 (tail!6294 lt!1443629)) (size!32375 (tail!6294 lt!1443622))))))

(assert (= (and d!1203407 (not res!1651251)) b!4051519))

(assert (= (and b!4051519 res!1651252) b!4051520))

(assert (= (and b!4051520 res!1651250) b!4051521))

(assert (= (and d!1203407 (not res!1651253)) b!4051522))

(assert (=> b!4051521 m!4651639))

(assert (=> b!4051521 m!4652775))

(assert (=> b!4051521 m!4651627))

(declare-fun m!4652987 () Bool)

(assert (=> b!4051521 m!4652987))

(assert (=> b!4051521 m!4652775))

(assert (=> b!4051521 m!4652987))

(declare-fun m!4652991 () Bool)

(assert (=> b!4051521 m!4652991))

(assert (=> b!4051520 m!4651639))

(assert (=> b!4051520 m!4652781))

(assert (=> b!4051520 m!4651627))

(declare-fun m!4652993 () Bool)

(assert (=> b!4051520 m!4652993))

(assert (=> b!4051522 m!4651627))

(declare-fun m!4652997 () Bool)

(assert (=> b!4051522 m!4652997))

(assert (=> b!4051522 m!4651639))

(assert (=> b!4051522 m!4652787))

(assert (=> b!4051001 d!1203407))

(assert (=> b!4051001 d!1203301))

(declare-fun d!1203413 () Bool)

(assert (=> d!1203413 (= (tail!6294 lt!1443629) (t!335877 lt!1443629))))

(assert (=> b!4051001 d!1203413))

(declare-fun d!1203415 () Bool)

(declare-fun lt!1444215 () Int)

(assert (=> d!1203415 (>= lt!1444215 0)))

(declare-fun e!2513870 () Int)

(assert (=> d!1203415 (= lt!1444215 e!2513870)))

(declare-fun c!699863 () Bool)

(assert (=> d!1203415 (= c!699863 (is-Nil!43302 (_2!24322 (get!14207 lt!1443941))))))

(assert (=> d!1203415 (= (size!32375 (_2!24322 (get!14207 lt!1443941))) lt!1444215)))

(declare-fun b!4051527 () Bool)

(assert (=> b!4051527 (= e!2513870 0)))

(declare-fun b!4051528 () Bool)

(assert (=> b!4051528 (= e!2513870 (+ 1 (size!32375 (t!335877 (_2!24322 (get!14207 lt!1443941))))))))

(assert (= (and d!1203415 c!699863) b!4051527))

(assert (= (and d!1203415 (not c!699863)) b!4051528))

(declare-fun m!4653003 () Bool)

(assert (=> b!4051528 m!4653003))

(assert (=> b!4050968 d!1203415))

(assert (=> b!4050968 d!1203289))

(assert (=> b!4050968 d!1203319))

(assert (=> b!4051049 d!1203291))

(declare-fun d!1203421 () Bool)

(declare-fun lt!1444217 () List!43426)

(assert (=> d!1203421 (= (++!11341 (t!335877 lt!1443625) lt!1444217) (tail!6294 lt!1443605))))

(declare-fun e!2513873 () List!43426)

(assert (=> d!1203421 (= lt!1444217 e!2513873)))

(declare-fun c!699865 () Bool)

(assert (=> d!1203421 (= c!699865 (is-Cons!43302 (t!335877 lt!1443625)))))

(assert (=> d!1203421 (>= (size!32375 (tail!6294 lt!1443605)) (size!32375 (t!335877 lt!1443625)))))

(assert (=> d!1203421 (= (getSuffix!2443 (tail!6294 lt!1443605) (t!335877 lt!1443625)) lt!1444217)))

(declare-fun b!4051533 () Bool)

(assert (=> b!4051533 (= e!2513873 (getSuffix!2443 (tail!6294 (tail!6294 lt!1443605)) (t!335877 (t!335877 lt!1443625))))))

(declare-fun b!4051534 () Bool)

(assert (=> b!4051534 (= e!2513873 (tail!6294 lt!1443605))))

(assert (= (and d!1203421 c!699865) b!4051533))

(assert (= (and d!1203421 (not c!699865)) b!4051534))

(declare-fun m!4653009 () Bool)

(assert (=> d!1203421 m!4653009))

(assert (=> d!1203421 m!4652115))

(declare-fun m!4653011 () Bool)

(assert (=> d!1203421 m!4653011))

(assert (=> d!1203421 m!4651857))

(assert (=> b!4051533 m!4652115))

(declare-fun m!4653015 () Bool)

(assert (=> b!4051533 m!4653015))

(assert (=> b!4051533 m!4653015))

(declare-fun m!4653017 () Bool)

(assert (=> b!4051533 m!4653017))

(assert (=> b!4050989 d!1203421))

(declare-fun d!1203425 () Bool)

(assert (=> d!1203425 (= (tail!6294 lt!1443605) (t!335877 lt!1443605))))

(assert (=> b!4050989 d!1203425))

(declare-fun d!1203427 () Bool)

(declare-fun c!699869 () Bool)

(assert (=> d!1203427 (= c!699869 (is-Node!13150 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (value!218397 (_1!24322 (v!39762 lt!1443644)))))))))

(declare-fun e!2513879 () Bool)

(assert (=> d!1203427 (= (inv!57891 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (value!218397 (_1!24322 (v!39762 lt!1443644)))))) e!2513879)))

(declare-fun b!4051543 () Bool)

(declare-fun inv!57895 (Conc!13150) Bool)

(assert (=> b!4051543 (= e!2513879 (inv!57895 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (value!218397 (_1!24322 (v!39762 lt!1443644)))))))))

(declare-fun b!4051544 () Bool)

(declare-fun e!2513880 () Bool)

(assert (=> b!4051544 (= e!2513879 e!2513880)))

(declare-fun res!1651262 () Bool)

(assert (=> b!4051544 (= res!1651262 (not (is-Leaf!20327 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (value!218397 (_1!24322 (v!39762 lt!1443644))))))))))

(assert (=> b!4051544 (=> res!1651262 e!2513880)))

(declare-fun b!4051545 () Bool)

(declare-fun inv!57896 (Conc!13150) Bool)

(assert (=> b!4051545 (= e!2513880 (inv!57896 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (value!218397 (_1!24322 (v!39762 lt!1443644)))))))))

(assert (= (and d!1203427 c!699869) b!4051543))

(assert (= (and d!1203427 (not c!699869)) b!4051544))

(assert (= (and b!4051544 (not res!1651262)) b!4051545))

(declare-fun m!4653021 () Bool)

(assert (=> b!4051543 m!4653021))

(declare-fun m!4653023 () Bool)

(assert (=> b!4051545 m!4653023))

(assert (=> b!4050799 d!1203427))

(declare-fun d!1203431 () Bool)

(assert (=> d!1203431 (= (_2!24322 (v!39762 lt!1443644)) lt!1443602)))

(assert (=> d!1203431 true))

(declare-fun _$63!1138 () Unit!62585)

(assert (=> d!1203431 (= (choose!24574 lt!1443625 (_2!24322 (v!39762 lt!1443644)) lt!1443625 lt!1443602 lt!1443605) _$63!1138)))

(assert (=> d!1203139 d!1203431))

(assert (=> d!1203139 d!1203069))

(declare-fun d!1203433 () Bool)

(declare-fun lt!1444219 () Int)

(assert (=> d!1203433 (>= lt!1444219 0)))

(declare-fun e!2513881 () Int)

(assert (=> d!1203433 (= lt!1444219 e!2513881)))

(declare-fun c!699870 () Bool)

(assert (=> d!1203433 (= c!699870 (is-Nil!43302 lt!1443614))))

(assert (=> d!1203433 (= (size!32375 lt!1443614) lt!1444219)))

(declare-fun b!4051546 () Bool)

(assert (=> b!4051546 (= e!2513881 0)))

(declare-fun b!4051547 () Bool)

(assert (=> b!4051547 (= e!2513881 (+ 1 (size!32375 (t!335877 lt!1443614))))))

(assert (= (and d!1203433 c!699870) b!4051546))

(assert (= (and d!1203433 (not c!699870)) b!4051547))

(declare-fun m!4653025 () Bool)

(assert (=> b!4051547 m!4653025))

(assert (=> b!4050639 d!1203433))

(assert (=> b!4050639 d!1203115))

(assert (=> b!4051056 d!1203291))

(declare-fun d!1203435 () Bool)

(assert (=> d!1203435 (= (head!8562 lt!1443605) (h!48722 lt!1443605))))

(assert (=> b!4051056 d!1203435))

(assert (=> b!4050839 d!1203377))

(declare-fun d!1203437 () Bool)

(assert (=> d!1203437 (= (apply!10128 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443903)))) (seqFromList!5156 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443903))))) (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443903))))) (seqFromList!5156 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443903))))))))

(declare-fun b_lambda!118409 () Bool)

(assert (=> (not b_lambda!118409) (not d!1203437)))

(declare-fun tb!243753 () Bool)

(declare-fun t!335958 () Bool)

(assert (=> (and b!4050453 (= (toValue!9491 (transformation!6939 (rule!10021 token!484))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443903)))))) t!335958) tb!243753))

(declare-fun result!295382 () Bool)

(assert (=> tb!243753 (= result!295382 (inv!21 (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443903))))) (seqFromList!5156 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443903)))))))))

(declare-fun m!4653027 () Bool)

(assert (=> tb!243753 m!4653027))

(assert (=> d!1203437 t!335958))

(declare-fun b_and!311561 () Bool)

(assert (= b_and!311555 (and (=> t!335958 result!295382) b_and!311561)))

(declare-fun t!335960 () Bool)

(declare-fun tb!243755 () Bool)

(assert (=> (and b!4050449 (= (toValue!9491 (transformation!6939 (h!48724 rules!2999))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443903)))))) t!335960) tb!243755))

(declare-fun result!295384 () Bool)

(assert (= result!295384 result!295382))

(assert (=> d!1203437 t!335960))

(declare-fun b_and!311563 () Bool)

(assert (= b_and!311557 (and (=> t!335960 result!295384) b_and!311563)))

(declare-fun t!335962 () Bool)

(declare-fun tb!243757 () Bool)

(assert (=> (and b!4051134 (= (toValue!9491 (transformation!6939 (h!48724 (t!335879 rules!2999)))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443903)))))) t!335962) tb!243757))

(declare-fun result!295386 () Bool)

(assert (= result!295386 result!295382))

(assert (=> d!1203437 t!335962))

(declare-fun b_and!311565 () Bool)

(assert (= b_and!311559 (and (=> t!335962 result!295386) b_and!311565)))

(assert (=> d!1203437 m!4651919))

(declare-fun m!4653029 () Bool)

(assert (=> d!1203437 m!4653029))

(assert (=> b!4050839 d!1203437))

(declare-fun d!1203439 () Bool)

(assert (=> d!1203439 (= (seqFromList!5156 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443903)))) (fromListB!2353 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443903)))))))

(declare-fun bs!591572 () Bool)

(assert (= bs!591572 d!1203439))

(declare-fun m!4653031 () Bool)

(assert (=> bs!591572 m!4653031))

(assert (=> b!4050839 d!1203439))

(declare-fun d!1203441 () Bool)

(declare-fun e!2513884 () Bool)

(assert (=> d!1203441 e!2513884))

(declare-fun res!1651266 () Bool)

(assert (=> d!1203441 (=> res!1651266 e!2513884)))

(declare-fun lt!1444220 () Bool)

(assert (=> d!1203441 (= res!1651266 (not lt!1444220))))

(declare-fun e!2513883 () Bool)

(assert (=> d!1203441 (= lt!1444220 e!2513883)))

(declare-fun res!1651264 () Bool)

(assert (=> d!1203441 (=> res!1651264 e!2513883)))

(assert (=> d!1203441 (= res!1651264 (is-Nil!43302 (tail!6294 lt!1443625)))))

(assert (=> d!1203441 (= (isPrefix!4026 (tail!6294 lt!1443625) (tail!6294 lt!1443617)) lt!1444220)))

(declare-fun b!4051550 () Bool)

(declare-fun e!2513885 () Bool)

(assert (=> b!4051550 (= e!2513885 (isPrefix!4026 (tail!6294 (tail!6294 lt!1443625)) (tail!6294 (tail!6294 lt!1443617))))))

(declare-fun b!4051549 () Bool)

(declare-fun res!1651263 () Bool)

(assert (=> b!4051549 (=> (not res!1651263) (not e!2513885))))

(assert (=> b!4051549 (= res!1651263 (= (head!8562 (tail!6294 lt!1443625)) (head!8562 (tail!6294 lt!1443617))))))

(declare-fun b!4051548 () Bool)

(assert (=> b!4051548 (= e!2513883 e!2513885)))

(declare-fun res!1651265 () Bool)

(assert (=> b!4051548 (=> (not res!1651265) (not e!2513885))))

(assert (=> b!4051548 (= res!1651265 (not (is-Nil!43302 (tail!6294 lt!1443617))))))

(declare-fun b!4051551 () Bool)

(assert (=> b!4051551 (= e!2513884 (>= (size!32375 (tail!6294 lt!1443617)) (size!32375 (tail!6294 lt!1443625))))))

(assert (= (and d!1203441 (not res!1651264)) b!4051548))

(assert (= (and b!4051548 res!1651265) b!4051549))

(assert (= (and b!4051549 res!1651263) b!4051550))

(assert (= (and d!1203441 (not res!1651266)) b!4051551))

(assert (=> b!4051550 m!4651761))

(declare-fun m!4653033 () Bool)

(assert (=> b!4051550 m!4653033))

(assert (=> b!4051550 m!4651815))

(declare-fun m!4653035 () Bool)

(assert (=> b!4051550 m!4653035))

(assert (=> b!4051550 m!4653033))

(assert (=> b!4051550 m!4653035))

(declare-fun m!4653037 () Bool)

(assert (=> b!4051550 m!4653037))

(assert (=> b!4051549 m!4651761))

(declare-fun m!4653039 () Bool)

(assert (=> b!4051549 m!4653039))

(assert (=> b!4051549 m!4651815))

(declare-fun m!4653041 () Bool)

(assert (=> b!4051549 m!4653041))

(assert (=> b!4051551 m!4651815))

(declare-fun m!4653043 () Bool)

(assert (=> b!4051551 m!4653043))

(assert (=> b!4051551 m!4651761))

(declare-fun m!4653045 () Bool)

(assert (=> b!4051551 m!4653045))

(assert (=> b!4050802 d!1203441))

(declare-fun d!1203443 () Bool)

(assert (=> d!1203443 (= (tail!6294 lt!1443625) (t!335877 lt!1443625))))

(assert (=> b!4050802 d!1203443))

(declare-fun d!1203445 () Bool)

(assert (=> d!1203445 (= (tail!6294 lt!1443617) (t!335877 lt!1443617))))

(assert (=> b!4050802 d!1203445))

(declare-fun d!1203447 () Bool)

(declare-fun e!2513887 () Bool)

(assert (=> d!1203447 e!2513887))

(declare-fun res!1651270 () Bool)

(assert (=> d!1203447 (=> res!1651270 e!2513887)))

(declare-fun lt!1444221 () Bool)

(assert (=> d!1203447 (= res!1651270 (not lt!1444221))))

(declare-fun e!2513886 () Bool)

(assert (=> d!1203447 (= lt!1444221 e!2513886)))

(declare-fun res!1651268 () Bool)

(assert (=> d!1203447 (=> res!1651268 e!2513886)))

(assert (=> d!1203447 (= res!1651268 (is-Nil!43302 lt!1443625))))

(assert (=> d!1203447 (= (isPrefix!4026 lt!1443625 (++!11341 lt!1443605 lt!1443636)) lt!1444221)))

(declare-fun b!4051554 () Bool)

(declare-fun e!2513888 () Bool)

(assert (=> b!4051554 (= e!2513888 (isPrefix!4026 (tail!6294 lt!1443625) (tail!6294 (++!11341 lt!1443605 lt!1443636))))))

(declare-fun b!4051553 () Bool)

(declare-fun res!1651267 () Bool)

(assert (=> b!4051553 (=> (not res!1651267) (not e!2513888))))

(assert (=> b!4051553 (= res!1651267 (= (head!8562 lt!1443625) (head!8562 (++!11341 lt!1443605 lt!1443636))))))

(declare-fun b!4051552 () Bool)

(assert (=> b!4051552 (= e!2513886 e!2513888)))

(declare-fun res!1651269 () Bool)

(assert (=> b!4051552 (=> (not res!1651269) (not e!2513888))))

(assert (=> b!4051552 (= res!1651269 (not (is-Nil!43302 (++!11341 lt!1443605 lt!1443636))))))

(declare-fun b!4051555 () Bool)

(assert (=> b!4051555 (= e!2513887 (>= (size!32375 (++!11341 lt!1443605 lt!1443636)) (size!32375 lt!1443625)))))

(assert (= (and d!1203447 (not res!1651268)) b!4051552))

(assert (= (and b!4051552 res!1651269) b!4051553))

(assert (= (and b!4051553 res!1651267) b!4051554))

(assert (= (and d!1203447 (not res!1651270)) b!4051555))

(assert (=> b!4051554 m!4651761))

(assert (=> b!4051554 m!4651401))

(declare-fun m!4653047 () Bool)

(assert (=> b!4051554 m!4653047))

(assert (=> b!4051554 m!4651761))

(assert (=> b!4051554 m!4653047))

(declare-fun m!4653049 () Bool)

(assert (=> b!4051554 m!4653049))

(assert (=> b!4051553 m!4651753))

(assert (=> b!4051553 m!4651401))

(declare-fun m!4653051 () Bool)

(assert (=> b!4051553 m!4653051))

(assert (=> b!4051555 m!4651401))

(declare-fun m!4653053 () Bool)

(assert (=> b!4051555 m!4653053))

(assert (=> b!4051555 m!4651321))

(assert (=> d!1203137 d!1203447))

(assert (=> d!1203137 d!1203147))

(declare-fun d!1203449 () Bool)

(assert (=> d!1203449 (isPrefix!4026 lt!1443625 (++!11341 lt!1443605 lt!1443636))))

(assert (=> d!1203449 true))

(declare-fun _$58!611 () Unit!62585)

(assert (=> d!1203449 (= (choose!24584 lt!1443625 lt!1443605 lt!1443636) _$58!611)))

(declare-fun bs!591573 () Bool)

(assert (= bs!591573 d!1203449))

(assert (=> bs!591573 m!4651401))

(assert (=> bs!591573 m!4651401))

(assert (=> bs!591573 m!4652267))

(assert (=> d!1203137 d!1203449))

(assert (=> d!1203137 d!1203069))

(declare-fun d!1203451 () Bool)

(declare-fun charsToBigInt!0 (List!43427 Int) Int)

(assert (=> d!1203451 (= (inv!15 (value!218397 token!484)) (= (charsToBigInt!0 (text!50632 (value!218397 token!484)) 0) (value!218392 (value!218397 token!484))))))

(declare-fun bs!591575 () Bool)

(assert (= bs!591575 d!1203451))

(declare-fun m!4653059 () Bool)

(assert (=> bs!591575 m!4653059))

(assert (=> b!4050877 d!1203451))

(declare-fun d!1203457 () Bool)

(declare-fun lt!1444225 () Int)

(assert (=> d!1203457 (>= lt!1444225 0)))

(declare-fun e!2513892 () Int)

(assert (=> d!1203457 (= lt!1444225 e!2513892)))

(declare-fun c!699871 () Bool)

(assert (=> d!1203457 (= c!699871 (is-Nil!43302 (t!335877 (originalCharacters!7539 token!484))))))

(assert (=> d!1203457 (= (size!32375 (t!335877 (originalCharacters!7539 token!484))) lt!1444225)))

(declare-fun b!4051559 () Bool)

(assert (=> b!4051559 (= e!2513892 0)))

(declare-fun b!4051560 () Bool)

(assert (=> b!4051560 (= e!2513892 (+ 1 (size!32375 (t!335877 (t!335877 (originalCharacters!7539 token!484))))))))

(assert (= (and d!1203457 c!699871) b!4051559))

(assert (= (and d!1203457 (not c!699871)) b!4051560))

(declare-fun m!4653061 () Bool)

(assert (=> b!4051560 m!4653061))

(assert (=> b!4051060 d!1203457))

(declare-fun b!4051562 () Bool)

(declare-fun e!2513894 () List!43426)

(assert (=> b!4051562 (= e!2513894 (Cons!43302 (h!48722 (t!335877 lt!1443622)) (++!11341 (t!335877 (t!335877 lt!1443622)) lt!1443648)))))

(declare-fun b!4051561 () Bool)

(assert (=> b!4051561 (= e!2513894 lt!1443648)))

(declare-fun d!1203459 () Bool)

(declare-fun e!2513893 () Bool)

(assert (=> d!1203459 e!2513893))

(declare-fun res!1651275 () Bool)

(assert (=> d!1203459 (=> (not res!1651275) (not e!2513893))))

(declare-fun lt!1444226 () List!43426)

(assert (=> d!1203459 (= res!1651275 (= (content!6596 lt!1444226) (set.union (content!6596 (t!335877 lt!1443622)) (content!6596 lt!1443648))))))

(assert (=> d!1203459 (= lt!1444226 e!2513894)))

(declare-fun c!699872 () Bool)

(assert (=> d!1203459 (= c!699872 (is-Nil!43302 (t!335877 lt!1443622)))))

(assert (=> d!1203459 (= (++!11341 (t!335877 lt!1443622) lt!1443648) lt!1444226)))

(declare-fun b!4051563 () Bool)

(declare-fun res!1651274 () Bool)

(assert (=> b!4051563 (=> (not res!1651274) (not e!2513893))))

(assert (=> b!4051563 (= res!1651274 (= (size!32375 lt!1444226) (+ (size!32375 (t!335877 lt!1443622)) (size!32375 lt!1443648))))))

(declare-fun b!4051564 () Bool)

(assert (=> b!4051564 (= e!2513893 (or (not (= lt!1443648 Nil!43302)) (= lt!1444226 (t!335877 lt!1443622))))))

(assert (= (and d!1203459 c!699872) b!4051561))

(assert (= (and d!1203459 (not c!699872)) b!4051562))

(assert (= (and d!1203459 res!1651275) b!4051563))

(assert (= (and b!4051563 res!1651274) b!4051564))

(declare-fun m!4653063 () Bool)

(assert (=> b!4051562 m!4653063))

(declare-fun m!4653065 () Bool)

(assert (=> d!1203459 m!4653065))

(declare-fun m!4653067 () Bool)

(assert (=> d!1203459 m!4653067))

(assert (=> d!1203459 m!4652189))

(declare-fun m!4653069 () Bool)

(assert (=> b!4051563 m!4653069))

(assert (=> b!4051563 m!4652229))

(assert (=> b!4051563 m!4652193))

(assert (=> b!4051018 d!1203459))

(assert (=> b!4051091 d!1203307))

(assert (=> b!4051091 d!1203309))

(assert (=> b!4051091 d!1203311))

(declare-fun d!1203461 () Bool)

(assert (=> d!1203461 true))

(declare-fun lt!1444231 () Bool)

(assert (=> d!1203461 (= lt!1444231 (rulesValidInductive!2534 thiss!21717 rules!2999))))

(declare-fun lambda!127508 () Int)

(declare-fun forall!8379 (List!43428 Int) Bool)

(assert (=> d!1203461 (= lt!1444231 (forall!8379 rules!2999 lambda!127508))))

(assert (=> d!1203461 (= (rulesValid!2701 thiss!21717 rules!2999) lt!1444231)))

(declare-fun bs!591576 () Bool)

(assert (= bs!591576 d!1203461))

(assert (=> bs!591576 m!4652077))

(declare-fun m!4653071 () Bool)

(assert (=> bs!591576 m!4653071))

(assert (=> d!1203153 d!1203461))

(declare-fun d!1203463 () Bool)

(declare-fun e!2513896 () Bool)

(assert (=> d!1203463 e!2513896))

(declare-fun res!1651279 () Bool)

(assert (=> d!1203463 (=> res!1651279 e!2513896)))

(declare-fun lt!1444232 () Bool)

(assert (=> d!1203463 (= res!1651279 (not lt!1444232))))

(declare-fun e!2513895 () Bool)

(assert (=> d!1203463 (= lt!1444232 e!2513895)))

(declare-fun res!1651277 () Bool)

(assert (=> d!1203463 (=> res!1651277 e!2513895)))

(assert (=> d!1203463 (= res!1651277 (is-Nil!43302 (tail!6294 lt!1443625)))))

(assert (=> d!1203463 (= (isPrefix!4026 (tail!6294 lt!1443625) (tail!6294 lt!1443600)) lt!1444232)))

(declare-fun b!4051569 () Bool)

(declare-fun e!2513897 () Bool)

(assert (=> b!4051569 (= e!2513897 (isPrefix!4026 (tail!6294 (tail!6294 lt!1443625)) (tail!6294 (tail!6294 lt!1443600))))))

(declare-fun b!4051568 () Bool)

(declare-fun res!1651276 () Bool)

(assert (=> b!4051568 (=> (not res!1651276) (not e!2513897))))

(assert (=> b!4051568 (= res!1651276 (= (head!8562 (tail!6294 lt!1443625)) (head!8562 (tail!6294 lt!1443600))))))

(declare-fun b!4051567 () Bool)

(assert (=> b!4051567 (= e!2513895 e!2513897)))

(declare-fun res!1651278 () Bool)

(assert (=> b!4051567 (=> (not res!1651278) (not e!2513897))))

(assert (=> b!4051567 (= res!1651278 (not (is-Nil!43302 (tail!6294 lt!1443600))))))

(declare-fun b!4051570 () Bool)

(assert (=> b!4051570 (= e!2513896 (>= (size!32375 (tail!6294 lt!1443600)) (size!32375 (tail!6294 lt!1443625))))))

(assert (= (and d!1203463 (not res!1651277)) b!4051567))

(assert (= (and b!4051567 res!1651278) b!4051568))

(assert (= (and b!4051568 res!1651276) b!4051569))

(assert (= (and d!1203463 (not res!1651279)) b!4051570))

(assert (=> b!4051569 m!4651761))

(assert (=> b!4051569 m!4653033))

(assert (=> b!4051569 m!4652273))

(declare-fun m!4653073 () Bool)

(assert (=> b!4051569 m!4653073))

(assert (=> b!4051569 m!4653033))

(assert (=> b!4051569 m!4653073))

(declare-fun m!4653075 () Bool)

(assert (=> b!4051569 m!4653075))

(assert (=> b!4051568 m!4651761))

(assert (=> b!4051568 m!4653039))

(assert (=> b!4051568 m!4652273))

(declare-fun m!4653077 () Bool)

(assert (=> b!4051568 m!4653077))

(assert (=> b!4051570 m!4652273))

(declare-fun m!4653079 () Bool)

(assert (=> b!4051570 m!4653079))

(assert (=> b!4051570 m!4651761))

(assert (=> b!4051570 m!4653045))

(assert (=> b!4051071 d!1203463))

(assert (=> b!4051071 d!1203443))

(declare-fun d!1203465 () Bool)

(assert (=> d!1203465 (= (tail!6294 lt!1443600) (t!335877 lt!1443600))))

(assert (=> b!4051071 d!1203465))

(declare-fun d!1203467 () Bool)

(assert (=> d!1203467 (= (isEmpty!25847 lt!1443941) (not (is-Some!9352 lt!1443941)))))

(assert (=> d!1203029 d!1203467))

(assert (=> d!1203029 d!1202927))

(assert (=> d!1203029 d!1202929))

(declare-fun bs!591577 () Bool)

(declare-fun d!1203469 () Bool)

(assert (= bs!591577 (and d!1203469 d!1203461)))

(declare-fun lambda!127511 () Int)

(assert (=> bs!591577 (= lambda!127511 lambda!127508)))

(assert (=> d!1203469 true))

(declare-fun lt!1444235 () Bool)

(assert (=> d!1203469 (= lt!1444235 (forall!8379 rules!2999 lambda!127511))))

(declare-fun e!2513903 () Bool)

(assert (=> d!1203469 (= lt!1444235 e!2513903)))

(declare-fun res!1651284 () Bool)

(assert (=> d!1203469 (=> res!1651284 e!2513903)))

(assert (=> d!1203469 (= res!1651284 (not (is-Cons!43304 rules!2999)))))

(assert (=> d!1203469 (= (rulesValidInductive!2534 thiss!21717 rules!2999) lt!1444235)))

(declare-fun b!4051575 () Bool)

(declare-fun e!2513902 () Bool)

(assert (=> b!4051575 (= e!2513903 e!2513902)))

(declare-fun res!1651285 () Bool)

(assert (=> b!4051575 (=> (not res!1651285) (not e!2513902))))

(assert (=> b!4051575 (= res!1651285 (ruleValid!2869 thiss!21717 (h!48724 rules!2999)))))

(declare-fun b!4051576 () Bool)

(assert (=> b!4051576 (= e!2513902 (rulesValidInductive!2534 thiss!21717 (t!335879 rules!2999)))))

(assert (= (and d!1203469 (not res!1651284)) b!4051575))

(assert (= (and b!4051575 res!1651285) b!4051576))

(declare-fun m!4653081 () Bool)

(assert (=> d!1203469 m!4653081))

(declare-fun m!4653083 () Bool)

(assert (=> b!4051575 m!4653083))

(declare-fun m!4653085 () Bool)

(assert (=> b!4051576 m!4653085))

(assert (=> d!1203029 d!1203469))

(declare-fun d!1203471 () Bool)

(assert (=> d!1203471 (= (get!14207 lt!1443859) (v!39762 lt!1443859))))

(assert (=> b!4050695 d!1203471))

(declare-fun b!4051586 () Bool)

(declare-fun e!2513908 () List!43426)

(declare-fun e!2513909 () List!43426)

(assert (=> b!4051586 (= e!2513908 e!2513909)))

(declare-fun c!699879 () Bool)

(assert (=> b!4051586 (= c!699879 (is-Leaf!20327 (c!699688 (charsOf!4755 (_1!24322 (v!39762 lt!1443644))))))))

(declare-fun b!4051587 () Bool)

(declare-fun list!16137 (IArray!26305) List!43426)

(assert (=> b!4051587 (= e!2513909 (list!16137 (xs!16456 (c!699688 (charsOf!4755 (_1!24322 (v!39762 lt!1443644)))))))))

(declare-fun b!4051588 () Bool)

(assert (=> b!4051588 (= e!2513909 (++!11341 (list!16135 (left!32606 (c!699688 (charsOf!4755 (_1!24322 (v!39762 lt!1443644)))))) (list!16135 (right!32936 (c!699688 (charsOf!4755 (_1!24322 (v!39762 lt!1443644))))))))))

(declare-fun b!4051585 () Bool)

(assert (=> b!4051585 (= e!2513908 Nil!43302)))

(declare-fun d!1203473 () Bool)

(declare-fun c!699878 () Bool)

(assert (=> d!1203473 (= c!699878 (is-Empty!13150 (c!699688 (charsOf!4755 (_1!24322 (v!39762 lt!1443644))))))))

(assert (=> d!1203473 (= (list!16135 (c!699688 (charsOf!4755 (_1!24322 (v!39762 lt!1443644))))) e!2513908)))

(assert (= (and d!1203473 c!699878) b!4051585))

(assert (= (and d!1203473 (not c!699878)) b!4051586))

(assert (= (and b!4051586 c!699879) b!4051587))

(assert (= (and b!4051586 (not c!699879)) b!4051588))

(declare-fun m!4653087 () Bool)

(assert (=> b!4051587 m!4653087))

(declare-fun m!4653089 () Bool)

(assert (=> b!4051588 m!4653089))

(declare-fun m!4653091 () Bool)

(assert (=> b!4051588 m!4653091))

(assert (=> b!4051588 m!4653089))

(assert (=> b!4051588 m!4653091))

(declare-fun m!4653093 () Bool)

(assert (=> b!4051588 m!4653093))

(assert (=> d!1202969 d!1203473))

(assert (=> b!4050782 d!1203333))

(assert (=> d!1203019 d!1203017))

(declare-fun d!1203475 () Bool)

(assert (=> d!1203475 (ruleValid!2869 thiss!21717 (rule!10021 token!484))))

(assert (=> d!1203475 true))

(declare-fun _$65!1527 () Unit!62585)

(assert (=> d!1203475 (= (choose!24578 thiss!21717 (rule!10021 token!484) rules!2999) _$65!1527)))

(declare-fun bs!591578 () Bool)

(assert (= bs!591578 d!1203475))

(assert (=> bs!591578 m!4651309))

(assert (=> d!1203019 d!1203475))

(assert (=> d!1203019 d!1203151))

(declare-fun d!1203477 () Bool)

(declare-fun lt!1444236 () Int)

(assert (=> d!1203477 (>= lt!1444236 0)))

(declare-fun e!2513910 () Int)

(assert (=> d!1203477 (= lt!1444236 e!2513910)))

(declare-fun c!699880 () Bool)

(assert (=> d!1203477 (= c!699880 (is-Nil!43302 (t!335877 prefix!494)))))

(assert (=> d!1203477 (= (size!32375 (t!335877 prefix!494)) lt!1444236)))

(declare-fun b!4051589 () Bool)

(assert (=> b!4051589 (= e!2513910 0)))

(declare-fun b!4051590 () Bool)

(assert (=> b!4051590 (= e!2513910 (+ 1 (size!32375 (t!335877 (t!335877 prefix!494)))))))

(assert (= (and d!1203477 c!699880) b!4051589))

(assert (= (and d!1203477 (not c!699880)) b!4051590))

(declare-fun m!4653095 () Bool)

(assert (=> b!4051590 m!4653095))

(assert (=> b!4051040 d!1203477))

(assert (=> d!1202929 d!1202927))

(declare-fun d!1203479 () Bool)

(assert (=> d!1203479 (isPrefix!4026 lt!1443629 lt!1443629)))

(assert (=> d!1203479 true))

(declare-fun _$45!2006 () Unit!62585)

(assert (=> d!1203479 (= (choose!24573 lt!1443629 lt!1443629) _$45!2006)))

(declare-fun bs!591579 () Bool)

(assert (= bs!591579 d!1203479))

(assert (=> bs!591579 m!4651249))

(assert (=> d!1202929 d!1203479))

(declare-fun d!1203481 () Bool)

(declare-fun e!2513912 () Bool)

(assert (=> d!1203481 e!2513912))

(declare-fun res!1651289 () Bool)

(assert (=> d!1203481 (=> res!1651289 e!2513912)))

(declare-fun lt!1444237 () Bool)

(assert (=> d!1203481 (= res!1651289 (not lt!1444237))))

(declare-fun e!2513911 () Bool)

(assert (=> d!1203481 (= lt!1444237 e!2513911)))

(declare-fun res!1651287 () Bool)

(assert (=> d!1203481 (=> res!1651287 e!2513911)))

(assert (=> d!1203481 (= res!1651287 (is-Nil!43302 (tail!6294 lt!1443622)))))

(assert (=> d!1203481 (= (isPrefix!4026 (tail!6294 lt!1443622) (tail!6294 lt!1443605)) lt!1444237)))

(declare-fun b!4051593 () Bool)

(declare-fun e!2513913 () Bool)

(assert (=> b!4051593 (= e!2513913 (isPrefix!4026 (tail!6294 (tail!6294 lt!1443622)) (tail!6294 (tail!6294 lt!1443605))))))

(declare-fun b!4051592 () Bool)

(declare-fun res!1651286 () Bool)

(assert (=> b!4051592 (=> (not res!1651286) (not e!2513913))))

(assert (=> b!4051592 (= res!1651286 (= (head!8562 (tail!6294 lt!1443622)) (head!8562 (tail!6294 lt!1443605))))))

(declare-fun b!4051591 () Bool)

(assert (=> b!4051591 (= e!2513911 e!2513913)))

(declare-fun res!1651288 () Bool)

(assert (=> b!4051591 (=> (not res!1651288) (not e!2513913))))

(assert (=> b!4051591 (= res!1651288 (not (is-Nil!43302 (tail!6294 lt!1443605))))))

(declare-fun b!4051594 () Bool)

(assert (=> b!4051594 (= e!2513912 (>= (size!32375 (tail!6294 lt!1443605)) (size!32375 (tail!6294 lt!1443622))))))

(assert (= (and d!1203481 (not res!1651287)) b!4051591))

(assert (= (and b!4051591 res!1651288) b!4051592))

(assert (= (and b!4051592 res!1651286) b!4051593))

(assert (= (and d!1203481 (not res!1651289)) b!4051594))

(assert (=> b!4051593 m!4651639))

(assert (=> b!4051593 m!4652775))

(assert (=> b!4051593 m!4652115))

(assert (=> b!4051593 m!4653015))

(assert (=> b!4051593 m!4652775))

(assert (=> b!4051593 m!4653015))

(declare-fun m!4653097 () Bool)

(assert (=> b!4051593 m!4653097))

(assert (=> b!4051592 m!4651639))

(assert (=> b!4051592 m!4652781))

(assert (=> b!4051592 m!4652115))

(declare-fun m!4653099 () Bool)

(assert (=> b!4051592 m!4653099))

(assert (=> b!4051594 m!4652115))

(assert (=> b!4051594 m!4653011))

(assert (=> b!4051594 m!4651639))

(assert (=> b!4051594 m!4652787))

(assert (=> b!4051057 d!1203481))

(assert (=> b!4051057 d!1203301))

(assert (=> b!4051057 d!1203425))

(declare-fun b!4051596 () Bool)

(declare-fun e!2513915 () List!43426)

(assert (=> b!4051596 (= e!2513915 (Cons!43302 (h!48722 (t!335877 lt!1443625)) (++!11341 (t!335877 (t!335877 lt!1443625)) newSuffixResult!27)))))

(declare-fun b!4051595 () Bool)

(assert (=> b!4051595 (= e!2513915 newSuffixResult!27)))

(declare-fun d!1203483 () Bool)

(declare-fun e!2513914 () Bool)

(assert (=> d!1203483 e!2513914))

(declare-fun res!1651291 () Bool)

(assert (=> d!1203483 (=> (not res!1651291) (not e!2513914))))

(declare-fun lt!1444238 () List!43426)

(assert (=> d!1203483 (= res!1651291 (= (content!6596 lt!1444238) (set.union (content!6596 (t!335877 lt!1443625)) (content!6596 newSuffixResult!27))))))

(assert (=> d!1203483 (= lt!1444238 e!2513915)))

(declare-fun c!699881 () Bool)

(assert (=> d!1203483 (= c!699881 (is-Nil!43302 (t!335877 lt!1443625)))))

(assert (=> d!1203483 (= (++!11341 (t!335877 lt!1443625) newSuffixResult!27) lt!1444238)))

(declare-fun b!4051597 () Bool)

(declare-fun res!1651290 () Bool)

(assert (=> b!4051597 (=> (not res!1651290) (not e!2513914))))

(assert (=> b!4051597 (= res!1651290 (= (size!32375 lt!1444238) (+ (size!32375 (t!335877 lt!1443625)) (size!32375 newSuffixResult!27))))))

(declare-fun b!4051598 () Bool)

(assert (=> b!4051598 (= e!2513914 (or (not (= newSuffixResult!27 Nil!43302)) (= lt!1444238 (t!335877 lt!1443625))))))

(assert (= (and d!1203483 c!699881) b!4051595))

(assert (= (and d!1203483 (not c!699881)) b!4051596))

(assert (= (and d!1203483 res!1651291) b!4051597))

(assert (= (and b!4051597 res!1651290) b!4051598))

(declare-fun m!4653101 () Bool)

(assert (=> b!4051596 m!4653101))

(declare-fun m!4653103 () Bool)

(assert (=> d!1203483 m!4653103))

(assert (=> d!1203483 m!4652887))

(assert (=> d!1203483 m!4651863))

(declare-fun m!4653105 () Bool)

(assert (=> b!4051597 m!4653105))

(assert (=> b!4051597 m!4651857))

(assert (=> b!4051597 m!4651867))

(assert (=> b!4050823 d!1203483))

(declare-fun d!1203485 () Bool)

(declare-fun lt!1444239 () Int)

(assert (=> d!1203485 (>= lt!1444239 0)))

(declare-fun e!2513916 () Int)

(assert (=> d!1203485 (= lt!1444239 e!2513916)))

(declare-fun c!699882 () Bool)

(assert (=> d!1203485 (= c!699882 (is-Nil!43302 lt!1443948))))

(assert (=> d!1203485 (= (size!32375 lt!1443948) lt!1444239)))

(declare-fun b!4051599 () Bool)

(assert (=> b!4051599 (= e!2513916 0)))

(declare-fun b!4051600 () Bool)

(assert (=> b!4051600 (= e!2513916 (+ 1 (size!32375 (t!335877 lt!1443948))))))

(assert (= (and d!1203485 c!699882) b!4051599))

(assert (= (and d!1203485 (not c!699882)) b!4051600))

(declare-fun m!4653107 () Bool)

(assert (=> b!4051600 m!4653107))

(assert (=> b!4050973 d!1203485))

(assert (=> b!4050973 d!1203117))

(assert (=> b!4050973 d!1203097))

(declare-fun d!1203487 () Bool)

(declare-fun c!699883 () Bool)

(assert (=> d!1203487 (= c!699883 (is-Nil!43302 lt!1443968))))

(declare-fun e!2513917 () (Set C!23874))

(assert (=> d!1203487 (= (content!6596 lt!1443968) e!2513917)))

(declare-fun b!4051601 () Bool)

(assert (=> b!4051601 (= e!2513917 (as set.empty (Set C!23874)))))

(declare-fun b!4051602 () Bool)

(assert (=> b!4051602 (= e!2513917 (set.union (set.insert (h!48722 lt!1443968) (as set.empty (Set C!23874))) (content!6596 (t!335877 lt!1443968))))))

(assert (= (and d!1203487 c!699883) b!4051601))

(assert (= (and d!1203487 (not c!699883)) b!4051602))

(declare-fun m!4653109 () Bool)

(assert (=> b!4051602 m!4653109))

(declare-fun m!4653111 () Bool)

(assert (=> b!4051602 m!4653111))

(assert (=> d!1203101 d!1203487))

(declare-fun d!1203489 () Bool)

(declare-fun c!699884 () Bool)

(assert (=> d!1203489 (= c!699884 (is-Nil!43302 lt!1443622))))

(declare-fun e!2513918 () (Set C!23874))

(assert (=> d!1203489 (= (content!6596 lt!1443622) e!2513918)))

(declare-fun b!4051603 () Bool)

(assert (=> b!4051603 (= e!2513918 (as set.empty (Set C!23874)))))

(declare-fun b!4051604 () Bool)

(assert (=> b!4051604 (= e!2513918 (set.union (set.insert (h!48722 lt!1443622) (as set.empty (Set C!23874))) (content!6596 (t!335877 lt!1443622))))))

(assert (= (and d!1203489 c!699884) b!4051603))

(assert (= (and d!1203489 (not c!699884)) b!4051604))

(declare-fun m!4653113 () Bool)

(assert (=> b!4051604 m!4653113))

(assert (=> b!4051604 m!4653067))

(assert (=> d!1203101 d!1203489))

(declare-fun d!1203491 () Bool)

(declare-fun c!699885 () Bool)

(assert (=> d!1203491 (= c!699885 (is-Nil!43302 lt!1443648))))

(declare-fun e!2513919 () (Set C!23874))

(assert (=> d!1203491 (= (content!6596 lt!1443648) e!2513919)))

(declare-fun b!4051605 () Bool)

(assert (=> b!4051605 (= e!2513919 (as set.empty (Set C!23874)))))

(declare-fun b!4051606 () Bool)

(assert (=> b!4051606 (= e!2513919 (set.union (set.insert (h!48722 lt!1443648) (as set.empty (Set C!23874))) (content!6596 (t!335877 lt!1443648))))))

(assert (= (and d!1203491 c!699885) b!4051605))

(assert (= (and d!1203491 (not c!699885)) b!4051606))

(declare-fun m!4653115 () Bool)

(assert (=> b!4051606 m!4653115))

(declare-fun m!4653117 () Bool)

(assert (=> b!4051606 m!4653117))

(assert (=> d!1203101 d!1203491))

(declare-fun b!4051607 () Bool)

(declare-fun e!2513921 () Bool)

(declare-fun e!2513920 () Bool)

(assert (=> b!4051607 (= e!2513921 e!2513920)))

(declare-fun c!699887 () Bool)

(assert (=> b!4051607 (= c!699887 (is-IntegerValue!21508 (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 token!484))) (seqFromList!5156 lt!1443622))))))

(declare-fun b!4051608 () Bool)

(declare-fun e!2513922 () Bool)

(assert (=> b!4051608 (= e!2513922 (inv!15 (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 token!484))) (seqFromList!5156 lt!1443622))))))

(declare-fun b!4051609 () Bool)

(declare-fun res!1651292 () Bool)

(assert (=> b!4051609 (=> res!1651292 e!2513922)))

(assert (=> b!4051609 (= res!1651292 (not (is-IntegerValue!21509 (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 token!484))) (seqFromList!5156 lt!1443622)))))))

(assert (=> b!4051609 (= e!2513920 e!2513922)))

(declare-fun d!1203493 () Bool)

(declare-fun c!699886 () Bool)

(assert (=> d!1203493 (= c!699886 (is-IntegerValue!21507 (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 token!484))) (seqFromList!5156 lt!1443622))))))

(assert (=> d!1203493 (= (inv!21 (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 token!484))) (seqFromList!5156 lt!1443622))) e!2513921)))

(declare-fun b!4051610 () Bool)

(assert (=> b!4051610 (= e!2513920 (inv!17 (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 token!484))) (seqFromList!5156 lt!1443622))))))

(declare-fun b!4051611 () Bool)

(assert (=> b!4051611 (= e!2513921 (inv!16 (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 token!484))) (seqFromList!5156 lt!1443622))))))

(assert (= (and d!1203493 c!699886) b!4051611))

(assert (= (and d!1203493 (not c!699886)) b!4051607))

(assert (= (and b!4051607 c!699887) b!4051610))

(assert (= (and b!4051607 (not c!699887)) b!4051609))

(assert (= (and b!4051609 (not res!1651292)) b!4051608))

(declare-fun m!4653119 () Bool)

(assert (=> b!4051608 m!4653119))

(declare-fun m!4653121 () Bool)

(assert (=> b!4051610 m!4653121))

(declare-fun m!4653123 () Bool)

(assert (=> b!4051611 m!4653123))

(assert (=> tb!243681 d!1203493))

(declare-fun d!1203495 () Bool)

(declare-fun c!699888 () Bool)

(assert (=> d!1203495 (= c!699888 (is-Nil!43302 lt!1443949))))

(declare-fun e!2513923 () (Set C!23874))

(assert (=> d!1203495 (= (content!6596 lt!1443949) e!2513923)))

(declare-fun b!4051612 () Bool)

(assert (=> b!4051612 (= e!2513923 (as set.empty (Set C!23874)))))

(declare-fun b!4051613 () Bool)

(assert (=> b!4051613 (= e!2513923 (set.union (set.insert (h!48722 lt!1443949) (as set.empty (Set C!23874))) (content!6596 (t!335877 lt!1443949))))))

(assert (= (and d!1203495 c!699888) b!4051612))

(assert (= (and d!1203495 (not c!699888)) b!4051613))

(declare-fun m!4653125 () Bool)

(assert (=> b!4051613 m!4653125))

(declare-fun m!4653127 () Bool)

(assert (=> b!4051613 m!4653127))

(assert (=> d!1203063 d!1203495))

(declare-fun d!1203497 () Bool)

(declare-fun c!699889 () Bool)

(assert (=> d!1203497 (= c!699889 (is-Nil!43302 newSuffix!27))))

(declare-fun e!2513924 () (Set C!23874))

(assert (=> d!1203497 (= (content!6596 newSuffix!27) e!2513924)))

(declare-fun b!4051614 () Bool)

(assert (=> b!4051614 (= e!2513924 (as set.empty (Set C!23874)))))

(declare-fun b!4051615 () Bool)

(assert (=> b!4051615 (= e!2513924 (set.union (set.insert (h!48722 newSuffix!27) (as set.empty (Set C!23874))) (content!6596 (t!335877 newSuffix!27))))))

(assert (= (and d!1203497 c!699889) b!4051614))

(assert (= (and d!1203497 (not c!699889)) b!4051615))

(declare-fun m!4653129 () Bool)

(assert (=> b!4051615 m!4653129))

(declare-fun m!4653131 () Bool)

(assert (=> b!4051615 m!4653131))

(assert (=> d!1203063 d!1203497))

(assert (=> d!1203063 d!1203325))

(declare-fun b!4051617 () Bool)

(declare-fun e!2513926 () List!43426)

(assert (=> b!4051617 (= e!2513926 (Cons!43302 (h!48722 newSuffix!27) (++!11341 (t!335877 newSuffix!27) lt!1443951)))))

(declare-fun b!4051616 () Bool)

(assert (=> b!4051616 (= e!2513926 lt!1443951)))

(declare-fun d!1203499 () Bool)

(declare-fun e!2513925 () Bool)

(assert (=> d!1203499 e!2513925))

(declare-fun res!1651294 () Bool)

(assert (=> d!1203499 (=> (not res!1651294) (not e!2513925))))

(declare-fun lt!1444240 () List!43426)

(assert (=> d!1203499 (= res!1651294 (= (content!6596 lt!1444240) (set.union (content!6596 newSuffix!27) (content!6596 lt!1443951))))))

(assert (=> d!1203499 (= lt!1444240 e!2513926)))

(declare-fun c!699890 () Bool)

(assert (=> d!1203499 (= c!699890 (is-Nil!43302 newSuffix!27))))

(assert (=> d!1203499 (= (++!11341 newSuffix!27 lt!1443951) lt!1444240)))

(declare-fun b!4051618 () Bool)

(declare-fun res!1651293 () Bool)

(assert (=> b!4051618 (=> (not res!1651293) (not e!2513925))))

(assert (=> b!4051618 (= res!1651293 (= (size!32375 lt!1444240) (+ (size!32375 newSuffix!27) (size!32375 lt!1443951))))))

(declare-fun b!4051619 () Bool)

(assert (=> b!4051619 (= e!2513925 (or (not (= lt!1443951 Nil!43302)) (= lt!1444240 newSuffix!27)))))

(assert (= (and d!1203499 c!699890) b!4051616))

(assert (= (and d!1203499 (not c!699890)) b!4051617))

(assert (= (and d!1203499 res!1651294) b!4051618))

(assert (= (and b!4051618 res!1651293) b!4051619))

(declare-fun m!4653133 () Bool)

(assert (=> b!4051617 m!4653133))

(declare-fun m!4653135 () Bool)

(assert (=> d!1203499 m!4653135))

(assert (=> d!1203499 m!4652101))

(declare-fun m!4653137 () Bool)

(assert (=> d!1203499 m!4653137))

(declare-fun m!4653139 () Bool)

(assert (=> b!4051618 m!4653139))

(assert (=> b!4051618 m!4651239))

(declare-fun m!4653141 () Bool)

(assert (=> b!4051618 m!4653141))

(assert (=> d!1203065 d!1203499))

(assert (=> d!1203065 d!1203097))

(assert (=> d!1203065 d!1203099))

(assert (=> b!4051066 d!1203333))

(declare-fun d!1203501 () Bool)

(assert (=> d!1203501 (= (head!8562 lt!1443643) (h!48722 lt!1443643))))

(assert (=> b!4051066 d!1203501))

(assert (=> d!1202977 d!1202993))

(assert (=> d!1202977 d!1202967))

(assert (=> d!1202977 d!1203113))

(declare-fun d!1203503 () Bool)

(assert (=> d!1203503 (= (maxPrefixOneRule!2838 thiss!21717 (rule!10021 (_1!24322 (v!39762 lt!1443644))) lt!1443605) (Some!9352 (tuple2!42377 (Token!13017 (apply!10128 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (seqFromList!5156 lt!1443625)) (rule!10021 (_1!24322 (v!39762 lt!1443644))) (size!32375 lt!1443625) lt!1443625) (_2!24322 (v!39762 lt!1443644)))))))

(assert (=> d!1203503 true))

(declare-fun _$59!714 () Unit!62585)

(assert (=> d!1203503 (= (choose!24576 thiss!21717 rules!2999 lt!1443625 lt!1443605 (_2!24322 (v!39762 lt!1443644)) (rule!10021 (_1!24322 (v!39762 lt!1443644)))) _$59!714)))

(declare-fun bs!591580 () Bool)

(assert (= bs!591580 d!1203503))

(assert (=> bs!591580 m!4651343))

(assert (=> bs!591580 m!4651317))

(assert (=> bs!591580 m!4651317))

(assert (=> bs!591580 m!4651319))

(assert (=> bs!591580 m!4651321))

(assert (=> d!1202977 d!1203503))

(assert (=> d!1202977 d!1203003))

(assert (=> d!1202977 d!1203005))

(declare-fun b!4051621 () Bool)

(declare-fun e!2513928 () List!43426)

(assert (=> b!4051621 (= e!2513928 (Cons!43302 (h!48722 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443859))))) (++!11341 (t!335877 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443859))))) (_2!24322 (get!14207 lt!1443859)))))))

(declare-fun b!4051620 () Bool)

(assert (=> b!4051620 (= e!2513928 (_2!24322 (get!14207 lt!1443859)))))

(declare-fun d!1203505 () Bool)

(declare-fun e!2513927 () Bool)

(assert (=> d!1203505 e!2513927))

(declare-fun res!1651296 () Bool)

(assert (=> d!1203505 (=> (not res!1651296) (not e!2513927))))

(declare-fun lt!1444241 () List!43426)

(assert (=> d!1203505 (= res!1651296 (= (content!6596 lt!1444241) (set.union (content!6596 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443859))))) (content!6596 (_2!24322 (get!14207 lt!1443859))))))))

(assert (=> d!1203505 (= lt!1444241 e!2513928)))

(declare-fun c!699891 () Bool)

(assert (=> d!1203505 (= c!699891 (is-Nil!43302 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443859))))))))

(assert (=> d!1203505 (= (++!11341 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443859)))) (_2!24322 (get!14207 lt!1443859))) lt!1444241)))

(declare-fun b!4051622 () Bool)

(declare-fun res!1651295 () Bool)

(assert (=> b!4051622 (=> (not res!1651295) (not e!2513927))))

(assert (=> b!4051622 (= res!1651295 (= (size!32375 lt!1444241) (+ (size!32375 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443859))))) (size!32375 (_2!24322 (get!14207 lt!1443859))))))))

(declare-fun b!4051623 () Bool)

(assert (=> b!4051623 (= e!2513927 (or (not (= (_2!24322 (get!14207 lt!1443859)) Nil!43302)) (= lt!1444241 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443859)))))))))

(assert (= (and d!1203505 c!699891) b!4051620))

(assert (= (and d!1203505 (not c!699891)) b!4051621))

(assert (= (and d!1203505 res!1651296) b!4051622))

(assert (= (and b!4051622 res!1651295) b!4051623))

(declare-fun m!4653143 () Bool)

(assert (=> b!4051621 m!4653143))

(declare-fun m!4653145 () Bool)

(assert (=> d!1203505 m!4653145))

(assert (=> d!1203505 m!4651673))

(declare-fun m!4653147 () Bool)

(assert (=> d!1203505 m!4653147))

(declare-fun m!4653149 () Bool)

(assert (=> d!1203505 m!4653149))

(declare-fun m!4653151 () Bool)

(assert (=> b!4051622 m!4653151))

(assert (=> b!4051622 m!4651673))

(declare-fun m!4653153 () Bool)

(assert (=> b!4051622 m!4653153))

(assert (=> b!4051622 m!4651701))

(assert (=> b!4050700 d!1203505))

(declare-fun d!1203507 () Bool)

(assert (=> d!1203507 (= (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443859)))) (list!16135 (c!699688 (charsOf!4755 (_1!24322 (get!14207 lt!1443859))))))))

(declare-fun bs!591581 () Bool)

(assert (= bs!591581 d!1203507))

(declare-fun m!4653155 () Bool)

(assert (=> bs!591581 m!4653155))

(assert (=> b!4050700 d!1203507))

(declare-fun d!1203509 () Bool)

(declare-fun lt!1444242 () BalanceConc!25894)

(assert (=> d!1203509 (= (list!16133 lt!1444242) (originalCharacters!7539 (_1!24322 (get!14207 lt!1443859))))))

(assert (=> d!1203509 (= lt!1444242 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443859))))) (value!218397 (_1!24322 (get!14207 lt!1443859)))))))

(assert (=> d!1203509 (= (charsOf!4755 (_1!24322 (get!14207 lt!1443859))) lt!1444242)))

(declare-fun b_lambda!118411 () Bool)

(assert (=> (not b_lambda!118411) (not d!1203509)))

(declare-fun tb!243759 () Bool)

(declare-fun t!335965 () Bool)

(assert (=> (and b!4050453 (= (toChars!9350 (transformation!6939 (rule!10021 token!484))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443859)))))) t!335965) tb!243759))

(declare-fun b!4051624 () Bool)

(declare-fun e!2513929 () Bool)

(declare-fun tp!1228534 () Bool)

(assert (=> b!4051624 (= e!2513929 (and (inv!57891 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443859))))) (value!218397 (_1!24322 (get!14207 lt!1443859)))))) tp!1228534))))

(declare-fun result!295388 () Bool)

(assert (=> tb!243759 (= result!295388 (and (inv!57892 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443859))))) (value!218397 (_1!24322 (get!14207 lt!1443859))))) e!2513929))))

(assert (= tb!243759 b!4051624))

(declare-fun m!4653157 () Bool)

(assert (=> b!4051624 m!4653157))

(declare-fun m!4653159 () Bool)

(assert (=> tb!243759 m!4653159))

(assert (=> d!1203509 t!335965))

(declare-fun b_and!311567 () Bool)

(assert (= b_and!311549 (and (=> t!335965 result!295388) b_and!311567)))

(declare-fun tb!243761 () Bool)

(declare-fun t!335967 () Bool)

(assert (=> (and b!4050449 (= (toChars!9350 (transformation!6939 (h!48724 rules!2999))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443859)))))) t!335967) tb!243761))

(declare-fun result!295390 () Bool)

(assert (= result!295390 result!295388))

(assert (=> d!1203509 t!335967))

(declare-fun b_and!311569 () Bool)

(assert (= b_and!311551 (and (=> t!335967 result!295390) b_and!311569)))

(declare-fun tb!243763 () Bool)

(declare-fun t!335969 () Bool)

(assert (=> (and b!4051134 (= (toChars!9350 (transformation!6939 (h!48724 (t!335879 rules!2999)))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443859)))))) t!335969) tb!243763))

(declare-fun result!295392 () Bool)

(assert (= result!295392 result!295388))

(assert (=> d!1203509 t!335969))

(declare-fun b_and!311571 () Bool)

(assert (= b_and!311553 (and (=> t!335969 result!295392) b_and!311571)))

(declare-fun m!4653161 () Bool)

(assert (=> d!1203509 m!4653161))

(declare-fun m!4653163 () Bool)

(assert (=> d!1203509 m!4653163))

(assert (=> b!4050700 d!1203509))

(assert (=> b!4050700 d!1203471))

(declare-fun b!4051626 () Bool)

(declare-fun e!2513931 () List!43426)

(assert (=> b!4051626 (= e!2513931 (Cons!43302 (h!48722 (t!335877 lt!1443610)) (++!11341 (t!335877 (t!335877 lt!1443610)) suffix!1299)))))

(declare-fun b!4051625 () Bool)

(assert (=> b!4051625 (= e!2513931 suffix!1299)))

(declare-fun d!1203511 () Bool)

(declare-fun e!2513930 () Bool)

(assert (=> d!1203511 e!2513930))

(declare-fun res!1651298 () Bool)

(assert (=> d!1203511 (=> (not res!1651298) (not e!2513930))))

(declare-fun lt!1444243 () List!43426)

(assert (=> d!1203511 (= res!1651298 (= (content!6596 lt!1444243) (set.union (content!6596 (t!335877 lt!1443610)) (content!6596 suffix!1299))))))

(assert (=> d!1203511 (= lt!1444243 e!2513931)))

(declare-fun c!699892 () Bool)

(assert (=> d!1203511 (= c!699892 (is-Nil!43302 (t!335877 lt!1443610)))))

(assert (=> d!1203511 (= (++!11341 (t!335877 lt!1443610) suffix!1299) lt!1444243)))

(declare-fun b!4051627 () Bool)

(declare-fun res!1651297 () Bool)

(assert (=> b!4051627 (=> (not res!1651297) (not e!2513930))))

(assert (=> b!4051627 (= res!1651297 (= (size!32375 lt!1444243) (+ (size!32375 (t!335877 lt!1443610)) (size!32375 suffix!1299))))))

(declare-fun b!4051628 () Bool)

(assert (=> b!4051628 (= e!2513930 (or (not (= suffix!1299 Nil!43302)) (= lt!1444243 (t!335877 lt!1443610))))))

(assert (= (and d!1203511 c!699892) b!4051625))

(assert (= (and d!1203511 (not c!699892)) b!4051626))

(assert (= (and d!1203511 res!1651298) b!4051627))

(assert (= (and b!4051627 res!1651297) b!4051628))

(declare-fun m!4653165 () Bool)

(assert (=> b!4051626 m!4653165))

(declare-fun m!4653167 () Bool)

(assert (=> d!1203511 m!4653167))

(declare-fun m!4653169 () Bool)

(assert (=> d!1203511 m!4653169))

(assert (=> d!1203511 m!4652093))

(declare-fun m!4653171 () Bool)

(assert (=> b!4051627 m!4653171))

(declare-fun m!4653173 () Bool)

(assert (=> b!4051627 m!4653173))

(assert (=> b!4051627 m!4651237))

(assert (=> b!4051022 d!1203511))

(declare-fun d!1203513 () Bool)

(declare-fun lt!1444244 () Int)

(assert (=> d!1203513 (>= lt!1444244 0)))

(declare-fun e!2513932 () Int)

(assert (=> d!1203513 (= lt!1444244 e!2513932)))

(declare-fun c!699893 () Bool)

(assert (=> d!1203513 (= c!699893 (is-Nil!43302 (t!335877 lt!1443625)))))

(assert (=> d!1203513 (= (size!32375 (t!335877 lt!1443625)) lt!1444244)))

(declare-fun b!4051629 () Bool)

(assert (=> b!4051629 (= e!2513932 0)))

(declare-fun b!4051630 () Bool)

(assert (=> b!4051630 (= e!2513932 (+ 1 (size!32375 (t!335877 (t!335877 lt!1443625)))))))

(assert (= (and d!1203513 c!699893) b!4051629))

(assert (= (and d!1203513 (not c!699893)) b!4051630))

(declare-fun m!4653175 () Bool)

(assert (=> b!4051630 m!4653175))

(assert (=> b!4050821 d!1203513))

(declare-fun d!1203515 () Bool)

(declare-fun e!2513934 () Bool)

(assert (=> d!1203515 e!2513934))

(declare-fun res!1651302 () Bool)

(assert (=> d!1203515 (=> res!1651302 e!2513934)))

(declare-fun lt!1444245 () Bool)

(assert (=> d!1203515 (= res!1651302 (not lt!1444245))))

(declare-fun e!2513933 () Bool)

(assert (=> d!1203515 (= lt!1444245 e!2513933)))

(declare-fun res!1651300 () Bool)

(assert (=> d!1203515 (=> res!1651300 e!2513933)))

(assert (=> d!1203515 (= res!1651300 (is-Nil!43302 lt!1443622))))

(assert (=> d!1203515 (= (isPrefix!4026 lt!1443622 (++!11341 lt!1443622 lt!1443628)) lt!1444245)))

(declare-fun b!4051633 () Bool)

(declare-fun e!2513935 () Bool)

(assert (=> b!4051633 (= e!2513935 (isPrefix!4026 (tail!6294 lt!1443622) (tail!6294 (++!11341 lt!1443622 lt!1443628))))))

(declare-fun b!4051632 () Bool)

(declare-fun res!1651299 () Bool)

(assert (=> b!4051632 (=> (not res!1651299) (not e!2513935))))

(assert (=> b!4051632 (= res!1651299 (= (head!8562 lt!1443622) (head!8562 (++!11341 lt!1443622 lt!1443628))))))

(declare-fun b!4051631 () Bool)

(assert (=> b!4051631 (= e!2513933 e!2513935)))

(declare-fun res!1651301 () Bool)

(assert (=> b!4051631 (=> (not res!1651301) (not e!2513935))))

(assert (=> b!4051631 (= res!1651301 (not (is-Nil!43302 (++!11341 lt!1443622 lt!1443628))))))

(declare-fun b!4051634 () Bool)

(assert (=> b!4051634 (= e!2513934 (>= (size!32375 (++!11341 lt!1443622 lt!1443628)) (size!32375 lt!1443622)))))

(assert (= (and d!1203515 (not res!1651300)) b!4051631))

(assert (= (and b!4051631 res!1651301) b!4051632))

(assert (= (and b!4051632 res!1651299) b!4051633))

(assert (= (and d!1203515 (not res!1651302)) b!4051634))

(assert (=> b!4051633 m!4651639))

(assert (=> b!4051633 m!4651245))

(declare-fun m!4653177 () Bool)

(assert (=> b!4051633 m!4653177))

(assert (=> b!4051633 m!4651639))

(assert (=> b!4051633 m!4653177))

(declare-fun m!4653179 () Bool)

(assert (=> b!4051633 m!4653179))

(assert (=> b!4051632 m!4651645))

(assert (=> b!4051632 m!4651245))

(declare-fun m!4653181 () Bool)

(assert (=> b!4051632 m!4653181))

(assert (=> b!4051634 m!4651245))

(declare-fun m!4653183 () Bool)

(assert (=> b!4051634 m!4653183))

(assert (=> b!4051634 m!4651297))

(assert (=> d!1203161 d!1203515))

(assert (=> d!1203161 d!1202923))

(declare-fun d!1203517 () Bool)

(assert (=> d!1203517 (isPrefix!4026 lt!1443622 (++!11341 lt!1443622 lt!1443628))))

(assert (=> d!1203517 true))

(declare-fun _$46!1808 () Unit!62585)

(assert (=> d!1203517 (= (choose!24575 lt!1443622 lt!1443628) _$46!1808)))

(declare-fun bs!591582 () Bool)

(assert (= bs!591582 d!1203517))

(assert (=> bs!591582 m!4651245))

(assert (=> bs!591582 m!4651245))

(assert (=> bs!591582 m!4652357))

(assert (=> d!1203161 d!1203517))

(declare-fun bs!591583 () Bool)

(declare-fun d!1203519 () Bool)

(assert (= bs!591583 (and d!1203519 d!1203347)))

(declare-fun lambda!127512 () Int)

(assert (=> bs!591583 (= (and (= (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (toChars!9350 (transformation!6939 (rule!10021 token!484)))) (= (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (toValue!9491 (transformation!6939 (rule!10021 token!484))))) (= lambda!127512 lambda!127502))))

(declare-fun bs!591584 () Bool)

(assert (= bs!591584 (and d!1203519 d!1203349)))

(assert (=> bs!591584 (= (and (= (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (toChars!9350 (transformation!6939 (h!48724 rules!2999)))) (= (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (toValue!9491 (transformation!6939 (h!48724 rules!2999))))) (= lambda!127512 lambda!127505))))

(assert (=> d!1203519 true))

(assert (=> d!1203519 (< (dynLambda!18405 order!22691 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) (dynLambda!18404 order!22689 lambda!127512))))

(assert (=> d!1203519 true))

(assert (=> d!1203519 (< (dynLambda!18403 order!22687 (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) (dynLambda!18404 order!22689 lambda!127512))))

(assert (=> d!1203519 (= (semiInverseModEq!2967 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) (Forall!1496 lambda!127512))))

(declare-fun bs!591585 () Bool)

(assert (= bs!591585 d!1203519))

(declare-fun m!4653185 () Bool)

(assert (=> bs!591585 m!4653185))

(assert (=> d!1202961 d!1203519))

(declare-fun d!1203521 () Bool)

(assert (=> d!1203521 (= (isDefined!7113 lt!1443941) (not (isEmpty!25847 lt!1443941)))))

(declare-fun bs!591586 () Bool)

(assert (= bs!591586 d!1203521))

(assert (=> bs!591586 m!4652075))

(assert (=> b!4050965 d!1203521))

(declare-fun d!1203523 () Bool)

(declare-fun c!699894 () Bool)

(assert (=> d!1203523 (= c!699894 (is-Nil!43302 lt!1443975))))

(declare-fun e!2513936 () (Set C!23874))

(assert (=> d!1203523 (= (content!6596 lt!1443975) e!2513936)))

(declare-fun b!4051635 () Bool)

(assert (=> b!4051635 (= e!2513936 (as set.empty (Set C!23874)))))

(declare-fun b!4051636 () Bool)

(assert (=> b!4051636 (= e!2513936 (set.union (set.insert (h!48722 lt!1443975) (as set.empty (Set C!23874))) (content!6596 (t!335877 lt!1443975))))))

(assert (= (and d!1203523 c!699894) b!4051635))

(assert (= (and d!1203523 (not c!699894)) b!4051636))

(declare-fun m!4653187 () Bool)

(assert (=> b!4051636 m!4653187))

(declare-fun m!4653189 () Bool)

(assert (=> b!4051636 m!4653189))

(assert (=> d!1203111 d!1203523))

(assert (=> d!1203111 d!1203489))

(declare-fun d!1203525 () Bool)

(declare-fun c!699895 () Bool)

(assert (=> d!1203525 (= c!699895 (is-Nil!43302 newSuffixResult!27))))

(declare-fun e!2513937 () (Set C!23874))

(assert (=> d!1203525 (= (content!6596 newSuffixResult!27) e!2513937)))

(declare-fun b!4051637 () Bool)

(assert (=> b!4051637 (= e!2513937 (as set.empty (Set C!23874)))))

(declare-fun b!4051638 () Bool)

(assert (=> b!4051638 (= e!2513937 (set.union (set.insert (h!48722 newSuffixResult!27) (as set.empty (Set C!23874))) (content!6596 (t!335877 newSuffixResult!27))))))

(assert (= (and d!1203525 c!699895) b!4051637))

(assert (= (and d!1203525 (not c!699895)) b!4051638))

(declare-fun m!4653191 () Bool)

(assert (=> b!4051638 m!4653191))

(declare-fun m!4653193 () Bool)

(assert (=> b!4051638 m!4653193))

(assert (=> d!1203111 d!1203525))

(declare-fun d!1203527 () Bool)

(declare-fun lt!1444246 () List!43426)

(assert (=> d!1203527 (= (++!11341 (t!335877 lt!1443622) lt!1444246) (tail!6294 lt!1443629))))

(declare-fun e!2513938 () List!43426)

(assert (=> d!1203527 (= lt!1444246 e!2513938)))

(declare-fun c!699896 () Bool)

(assert (=> d!1203527 (= c!699896 (is-Cons!43302 (t!335877 lt!1443622)))))

(assert (=> d!1203527 (>= (size!32375 (tail!6294 lt!1443629)) (size!32375 (t!335877 lt!1443622)))))

(assert (=> d!1203527 (= (getSuffix!2443 (tail!6294 lt!1443629) (t!335877 lt!1443622)) lt!1444246)))

(declare-fun b!4051639 () Bool)

(assert (=> b!4051639 (= e!2513938 (getSuffix!2443 (tail!6294 (tail!6294 lt!1443629)) (t!335877 (t!335877 lt!1443622))))))

(declare-fun b!4051640 () Bool)

(assert (=> b!4051640 (= e!2513938 (tail!6294 lt!1443629))))

(assert (= (and d!1203527 c!699896) b!4051639))

(assert (= (and d!1203527 (not c!699896)) b!4051640))

(declare-fun m!4653195 () Bool)

(assert (=> d!1203527 m!4653195))

(assert (=> d!1203527 m!4651627))

(assert (=> d!1203527 m!4652997))

(assert (=> d!1203527 m!4652229))

(assert (=> b!4051639 m!4651627))

(assert (=> b!4051639 m!4652987))

(assert (=> b!4051639 m!4652987))

(declare-fun m!4653197 () Bool)

(assert (=> b!4051639 m!4653197))

(assert (=> b!4050630 d!1203527))

(assert (=> b!4050630 d!1203413))

(declare-fun d!1203529 () Bool)

(declare-fun e!2513940 () Bool)

(assert (=> d!1203529 e!2513940))

(declare-fun res!1651306 () Bool)

(assert (=> d!1203529 (=> res!1651306 e!2513940)))

(declare-fun lt!1444247 () Bool)

(assert (=> d!1203529 (= res!1651306 (not lt!1444247))))

(declare-fun e!2513939 () Bool)

(assert (=> d!1203529 (= lt!1444247 e!2513939)))

(declare-fun res!1651304 () Bool)

(assert (=> d!1203529 (=> res!1651304 e!2513939)))

(assert (=> d!1203529 (= res!1651304 (is-Nil!43302 lt!1443622))))

(assert (=> d!1203529 (= (isPrefix!4026 lt!1443622 (++!11341 prefix!494 newSuffix!27)) lt!1444247)))

(declare-fun e!2513941 () Bool)

(declare-fun b!4051643 () Bool)

(assert (=> b!4051643 (= e!2513941 (isPrefix!4026 (tail!6294 lt!1443622) (tail!6294 (++!11341 prefix!494 newSuffix!27))))))

(declare-fun b!4051642 () Bool)

(declare-fun res!1651303 () Bool)

(assert (=> b!4051642 (=> (not res!1651303) (not e!2513941))))

(assert (=> b!4051642 (= res!1651303 (= (head!8562 lt!1443622) (head!8562 (++!11341 prefix!494 newSuffix!27))))))

(declare-fun b!4051641 () Bool)

(assert (=> b!4051641 (= e!2513939 e!2513941)))

(declare-fun res!1651305 () Bool)

(assert (=> b!4051641 (=> (not res!1651305) (not e!2513941))))

(assert (=> b!4051641 (= res!1651305 (not (is-Nil!43302 (++!11341 prefix!494 newSuffix!27))))))

(declare-fun b!4051644 () Bool)

(assert (=> b!4051644 (= e!2513940 (>= (size!32375 (++!11341 prefix!494 newSuffix!27)) (size!32375 lt!1443622)))))

(assert (= (and d!1203529 (not res!1651304)) b!4051641))

(assert (= (and b!4051641 res!1651305) b!4051642))

(assert (= (and b!4051642 res!1651303) b!4051643))

(assert (= (and d!1203529 (not res!1651306)) b!4051644))

(assert (=> b!4051643 m!4651639))

(assert (=> b!4051643 m!4651405))

(declare-fun m!4653199 () Bool)

(assert (=> b!4051643 m!4653199))

(assert (=> b!4051643 m!4651639))

(assert (=> b!4051643 m!4653199))

(declare-fun m!4653201 () Bool)

(assert (=> b!4051643 m!4653201))

(assert (=> b!4051642 m!4651645))

(assert (=> b!4051642 m!4651405))

(declare-fun m!4653203 () Bool)

(assert (=> b!4051642 m!4653203))

(assert (=> b!4051644 m!4651405))

(declare-fun m!4653205 () Bool)

(assert (=> b!4051644 m!4653205))

(assert (=> b!4051644 m!4651297))

(assert (=> d!1203127 d!1203529))

(assert (=> d!1203127 d!1203109))

(declare-fun d!1203531 () Bool)

(assert (=> d!1203531 (isPrefix!4026 lt!1443622 (++!11341 prefix!494 newSuffix!27))))

(assert (=> d!1203531 true))

(declare-fun _$58!612 () Unit!62585)

(assert (=> d!1203531 (= (choose!24584 lt!1443622 prefix!494 newSuffix!27) _$58!612)))

(declare-fun bs!591587 () Bool)

(assert (= bs!591587 d!1203531))

(assert (=> bs!591587 m!4651405))

(assert (=> bs!591587 m!4651405))

(assert (=> bs!591587 m!4652247))

(assert (=> d!1203127 d!1203531))

(assert (=> d!1203127 d!1203091))

(declare-fun d!1203533 () Bool)

(declare-fun lt!1444248 () List!43426)

(assert (=> d!1203533 (= (++!11341 (t!335877 lt!1443622) lt!1444248) (tail!6294 prefix!494))))

(declare-fun e!2513942 () List!43426)

(assert (=> d!1203533 (= lt!1444248 e!2513942)))

(declare-fun c!699897 () Bool)

(assert (=> d!1203533 (= c!699897 (is-Cons!43302 (t!335877 lt!1443622)))))

(assert (=> d!1203533 (>= (size!32375 (tail!6294 prefix!494)) (size!32375 (t!335877 lt!1443622)))))

(assert (=> d!1203533 (= (getSuffix!2443 (tail!6294 prefix!494) (t!335877 lt!1443622)) lt!1444248)))

(declare-fun b!4051645 () Bool)

(assert (=> b!4051645 (= e!2513942 (getSuffix!2443 (tail!6294 (tail!6294 prefix!494)) (t!335877 (t!335877 lt!1443622))))))

(declare-fun b!4051646 () Bool)

(assert (=> b!4051646 (= e!2513942 (tail!6294 prefix!494))))

(assert (= (and d!1203533 c!699897) b!4051645))

(assert (= (and d!1203533 (not c!699897)) b!4051646))

(declare-fun m!4653207 () Bool)

(assert (=> d!1203533 m!4653207))

(assert (=> d!1203533 m!4652141))

(declare-fun m!4653209 () Bool)

(assert (=> d!1203533 m!4653209))

(assert (=> d!1203533 m!4652229))

(assert (=> b!4051645 m!4652141))

(declare-fun m!4653211 () Bool)

(assert (=> b!4051645 m!4653211))

(assert (=> b!4051645 m!4653211))

(declare-fun m!4653213 () Bool)

(assert (=> b!4051645 m!4653213))

(assert (=> b!4051007 d!1203533))

(declare-fun d!1203535 () Bool)

(assert (=> d!1203535 (= (tail!6294 prefix!494) (t!335877 prefix!494))))

(assert (=> b!4051007 d!1203535))

(assert (=> d!1202939 d!1203115))

(declare-fun d!1203537 () Bool)

(assert (=> d!1203537 (= (maxPrefixOneRule!2838 thiss!21717 (rule!10021 token!484) lt!1443629) (Some!9352 (tuple2!42377 (Token!13017 (apply!10128 (transformation!6939 (rule!10021 token!484)) (seqFromList!5156 lt!1443622)) (rule!10021 token!484) (size!32375 lt!1443622) lt!1443622) suffixResult!105)))))

(assert (=> d!1203537 true))

(declare-fun _$59!715 () Unit!62585)

(assert (=> d!1203537 (= (choose!24576 thiss!21717 rules!2999 lt!1443622 lt!1443629 suffixResult!105 (rule!10021 token!484)) _$59!715)))

(declare-fun bs!591588 () Bool)

(assert (= bs!591588 d!1203537))

(assert (=> bs!591588 m!4651389))

(assert (=> bs!591588 m!4651385))

(assert (=> bs!591588 m!4651385))

(assert (=> bs!591588 m!4651387))

(assert (=> bs!591588 m!4651297))

(assert (=> d!1202939 d!1203537))

(assert (=> d!1202939 d!1202941))

(assert (=> d!1202939 d!1202943))

(assert (=> d!1202939 d!1203113))

(assert (=> d!1202939 d!1202935))

(declare-fun bm!287883 () Bool)

(declare-fun call!287888 () Bool)

(assert (=> bm!287883 (= call!287888 (isEmpty!25846 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443903))))))))

(declare-fun b!4051647 () Bool)

(declare-fun e!2513946 () Bool)

(declare-fun e!2513944 () Bool)

(assert (=> b!4051647 (= e!2513946 e!2513944)))

(declare-fun res!1651312 () Bool)

(assert (=> b!4051647 (=> (not res!1651312) (not e!2513944))))

(declare-fun lt!1444249 () Bool)

(assert (=> b!4051647 (= res!1651312 (not lt!1444249))))

(declare-fun b!4051648 () Bool)

(declare-fun res!1651313 () Bool)

(declare-fun e!2513949 () Bool)

(assert (=> b!4051648 (=> res!1651313 e!2513949)))

(assert (=> b!4051648 (= res!1651313 (not (isEmpty!25846 (tail!6294 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443903))))))))))

(declare-fun d!1203539 () Bool)

(declare-fun e!2513945 () Bool)

(assert (=> d!1203539 e!2513945))

(declare-fun c!699899 () Bool)

(assert (=> d!1203539 (= c!699899 (is-EmptyExpr!11844 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))

(declare-fun e!2513947 () Bool)

(assert (=> d!1203539 (= lt!1444249 e!2513947)))

(declare-fun c!699898 () Bool)

(assert (=> d!1203539 (= c!699898 (isEmpty!25846 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443903))))))))

(assert (=> d!1203539 (validRegex!5359 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))

(assert (=> d!1203539 (= (matchR!5797 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443903))))) lt!1444249)))

(declare-fun b!4051649 () Bool)

(declare-fun res!1651309 () Bool)

(declare-fun e!2513943 () Bool)

(assert (=> b!4051649 (=> (not res!1651309) (not e!2513943))))

(assert (=> b!4051649 (= res!1651309 (isEmpty!25846 (tail!6294 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443903)))))))))

(declare-fun b!4051650 () Bool)

(declare-fun e!2513948 () Bool)

(assert (=> b!4051650 (= e!2513948 (not lt!1444249))))

(declare-fun b!4051651 () Bool)

(assert (=> b!4051651 (= e!2513947 (matchR!5797 (derivativeStep!3564 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (head!8562 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443903)))))) (tail!6294 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443903)))))))))

(declare-fun b!4051652 () Bool)

(declare-fun res!1651308 () Bool)

(assert (=> b!4051652 (=> res!1651308 e!2513946)))

(assert (=> b!4051652 (= res!1651308 e!2513943)))

(declare-fun res!1651310 () Bool)

(assert (=> b!4051652 (=> (not res!1651310) (not e!2513943))))

(assert (=> b!4051652 (= res!1651310 lt!1444249)))

(declare-fun b!4051653 () Bool)

(assert (=> b!4051653 (= e!2513945 (= lt!1444249 call!287888))))

(declare-fun b!4051654 () Bool)

(assert (=> b!4051654 (= e!2513943 (= (head!8562 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443903))))) (c!699689 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))))

(declare-fun b!4051655 () Bool)

(assert (=> b!4051655 (= e!2513949 (not (= (head!8562 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443903))))) (c!699689 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))))

(declare-fun b!4051656 () Bool)

(declare-fun res!1651307 () Bool)

(assert (=> b!4051656 (=> res!1651307 e!2513946)))

(assert (=> b!4051656 (= res!1651307 (not (is-ElementMatch!11844 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))))

(assert (=> b!4051656 (= e!2513948 e!2513946)))

(declare-fun b!4051657 () Bool)

(assert (=> b!4051657 (= e!2513944 e!2513949)))

(declare-fun res!1651314 () Bool)

(assert (=> b!4051657 (=> res!1651314 e!2513949)))

(assert (=> b!4051657 (= res!1651314 call!287888)))

(declare-fun b!4051658 () Bool)

(assert (=> b!4051658 (= e!2513945 e!2513948)))

(declare-fun c!699900 () Bool)

(assert (=> b!4051658 (= c!699900 (is-EmptyLang!11844 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))

(declare-fun b!4051659 () Bool)

(assert (=> b!4051659 (= e!2513947 (nullable!4159 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))

(declare-fun b!4051660 () Bool)

(declare-fun res!1651311 () Bool)

(assert (=> b!4051660 (=> (not res!1651311) (not e!2513943))))

(assert (=> b!4051660 (= res!1651311 (not call!287888))))

(assert (= (and d!1203539 c!699898) b!4051659))

(assert (= (and d!1203539 (not c!699898)) b!4051651))

(assert (= (and d!1203539 c!699899) b!4051653))

(assert (= (and d!1203539 (not c!699899)) b!4051658))

(assert (= (and b!4051658 c!699900) b!4051650))

(assert (= (and b!4051658 (not c!699900)) b!4051656))

(assert (= (and b!4051656 (not res!1651307)) b!4051652))

(assert (= (and b!4051652 res!1651310) b!4051660))

(assert (= (and b!4051660 res!1651311) b!4051649))

(assert (= (and b!4051649 res!1651309) b!4051654))

(assert (= (and b!4051652 (not res!1651308)) b!4051647))

(assert (= (and b!4051647 res!1651312) b!4051657))

(assert (= (and b!4051657 (not res!1651314)) b!4051648))

(assert (= (and b!4051648 (not res!1651313)) b!4051655))

(assert (= (or b!4051653 b!4051660 b!4051657) bm!287883))

(assert (=> b!4051654 m!4651887))

(declare-fun m!4653215 () Bool)

(assert (=> b!4051654 m!4653215))

(assert (=> d!1203539 m!4651887))

(declare-fun m!4653217 () Bool)

(assert (=> d!1203539 m!4653217))

(assert (=> d!1203539 m!4651757))

(assert (=> b!4051651 m!4651887))

(assert (=> b!4051651 m!4653215))

(assert (=> b!4051651 m!4653215))

(declare-fun m!4653219 () Bool)

(assert (=> b!4051651 m!4653219))

(assert (=> b!4051651 m!4651887))

(declare-fun m!4653221 () Bool)

(assert (=> b!4051651 m!4653221))

(assert (=> b!4051651 m!4653219))

(assert (=> b!4051651 m!4653221))

(declare-fun m!4653223 () Bool)

(assert (=> b!4051651 m!4653223))

(assert (=> bm!287883 m!4651887))

(assert (=> bm!287883 m!4653217))

(assert (=> b!4051655 m!4651887))

(assert (=> b!4051655 m!4653215))

(assert (=> b!4051648 m!4651887))

(assert (=> b!4051648 m!4653221))

(assert (=> b!4051648 m!4653221))

(declare-fun m!4653225 () Bool)

(assert (=> b!4051648 m!4653225))

(assert (=> b!4051649 m!4651887))

(assert (=> b!4051649 m!4653221))

(assert (=> b!4051649 m!4653221))

(assert (=> b!4051649 m!4653225))

(assert (=> b!4051659 m!4651767))

(assert (=> b!4050836 d!1203539))

(declare-fun d!1203541 () Bool)

(assert (=> d!1203541 (= (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443903)))) (list!16135 (c!699688 (charsOf!4755 (_1!24322 (get!14207 lt!1443903))))))))

(declare-fun bs!591589 () Bool)

(assert (= bs!591589 d!1203541))

(declare-fun m!4653227 () Bool)

(assert (=> bs!591589 m!4653227))

(assert (=> b!4050836 d!1203541))

(declare-fun d!1203543 () Bool)

(declare-fun lt!1444250 () BalanceConc!25894)

(assert (=> d!1203543 (= (list!16133 lt!1444250) (originalCharacters!7539 (_1!24322 (get!14207 lt!1443903))))))

(assert (=> d!1203543 (= lt!1444250 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443903))))) (value!218397 (_1!24322 (get!14207 lt!1443903)))))))

(assert (=> d!1203543 (= (charsOf!4755 (_1!24322 (get!14207 lt!1443903))) lt!1444250)))

(declare-fun b_lambda!118413 () Bool)

(assert (=> (not b_lambda!118413) (not d!1203543)))

(declare-fun t!335971 () Bool)

(declare-fun tb!243765 () Bool)

(assert (=> (and b!4050453 (= (toChars!9350 (transformation!6939 (rule!10021 token!484))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443903)))))) t!335971) tb!243765))

(declare-fun b!4051661 () Bool)

(declare-fun e!2513950 () Bool)

(declare-fun tp!1228535 () Bool)

(assert (=> b!4051661 (= e!2513950 (and (inv!57891 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443903))))) (value!218397 (_1!24322 (get!14207 lt!1443903)))))) tp!1228535))))

(declare-fun result!295394 () Bool)

(assert (=> tb!243765 (= result!295394 (and (inv!57892 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443903))))) (value!218397 (_1!24322 (get!14207 lt!1443903))))) e!2513950))))

(assert (= tb!243765 b!4051661))

(declare-fun m!4653229 () Bool)

(assert (=> b!4051661 m!4653229))

(declare-fun m!4653231 () Bool)

(assert (=> tb!243765 m!4653231))

(assert (=> d!1203543 t!335971))

(declare-fun b_and!311573 () Bool)

(assert (= b_and!311567 (and (=> t!335971 result!295394) b_and!311573)))

(declare-fun tb!243767 () Bool)

(declare-fun t!335973 () Bool)

(assert (=> (and b!4050449 (= (toChars!9350 (transformation!6939 (h!48724 rules!2999))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443903)))))) t!335973) tb!243767))

(declare-fun result!295396 () Bool)

(assert (= result!295396 result!295394))

(assert (=> d!1203543 t!335973))

(declare-fun b_and!311575 () Bool)

(assert (= b_and!311569 (and (=> t!335973 result!295396) b_and!311575)))

(declare-fun tb!243769 () Bool)

(declare-fun t!335975 () Bool)

(assert (=> (and b!4051134 (= (toChars!9350 (transformation!6939 (h!48724 (t!335879 rules!2999)))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443903)))))) t!335975) tb!243769))

(declare-fun result!295398 () Bool)

(assert (= result!295398 result!295394))

(assert (=> d!1203543 t!335975))

(declare-fun b_and!311577 () Bool)

(assert (= b_and!311571 (and (=> t!335975 result!295398) b_and!311577)))

(declare-fun m!4653233 () Bool)

(assert (=> d!1203543 m!4653233))

(declare-fun m!4653235 () Bool)

(assert (=> d!1203543 m!4653235))

(assert (=> b!4050836 d!1203543))

(assert (=> b!4050836 d!1203377))

(declare-fun d!1203545 () Bool)

(declare-fun lt!1444251 () Int)

(assert (=> d!1203545 (>= lt!1444251 0)))

(declare-fun e!2513951 () Int)

(assert (=> d!1203545 (= lt!1444251 e!2513951)))

(declare-fun c!699901 () Bool)

(assert (=> d!1203545 (= c!699901 (is-Nil!43302 lt!1443960))))

(assert (=> d!1203545 (= (size!32375 lt!1443960) lt!1444251)))

(declare-fun b!4051662 () Bool)

(assert (=> b!4051662 (= e!2513951 0)))

(declare-fun b!4051663 () Bool)

(assert (=> b!4051663 (= e!2513951 (+ 1 (size!32375 (t!335877 lt!1443960))))))

(assert (= (and d!1203545 c!699901) b!4051662))

(assert (= (and d!1203545 (not c!699901)) b!4051663))

(declare-fun m!4653237 () Bool)

(assert (=> b!4051663 m!4653237))

(assert (=> b!4051005 d!1203545))

(assert (=> b!4051005 d!1203115))

(declare-fun d!1203547 () Bool)

(declare-fun lt!1444252 () Int)

(assert (=> d!1203547 (>= lt!1444252 0)))

(declare-fun e!2513952 () Int)

(assert (=> d!1203547 (= lt!1444252 e!2513952)))

(declare-fun c!699902 () Bool)

(assert (=> d!1203547 (= c!699902 (is-Nil!43302 lt!1443595))))

(assert (=> d!1203547 (= (size!32375 lt!1443595) lt!1444252)))

(declare-fun b!4051664 () Bool)

(assert (=> b!4051664 (= e!2513952 0)))

(declare-fun b!4051665 () Bool)

(assert (=> b!4051665 (= e!2513952 (+ 1 (size!32375 (t!335877 lt!1443595))))))

(assert (= (and d!1203547 c!699902) b!4051664))

(assert (= (and d!1203547 (not c!699902)) b!4051665))

(declare-fun m!4653239 () Bool)

(assert (=> b!4051665 m!4653239))

(assert (=> b!4051005 d!1203547))

(declare-fun d!1203549 () Bool)

(declare-fun lt!1444253 () Bool)

(assert (=> d!1203549 (= lt!1444253 (set.member (rule!10021 (_1!24322 (get!14207 lt!1443996))) (content!6598 rules!2999)))))

(declare-fun e!2513954 () Bool)

(assert (=> d!1203549 (= lt!1444253 e!2513954)))

(declare-fun res!1651315 () Bool)

(assert (=> d!1203549 (=> (not res!1651315) (not e!2513954))))

(assert (=> d!1203549 (= res!1651315 (is-Cons!43304 rules!2999))))

(assert (=> d!1203549 (= (contains!8611 rules!2999 (rule!10021 (_1!24322 (get!14207 lt!1443996)))) lt!1444253)))

(declare-fun b!4051666 () Bool)

(declare-fun e!2513953 () Bool)

(assert (=> b!4051666 (= e!2513954 e!2513953)))

(declare-fun res!1651316 () Bool)

(assert (=> b!4051666 (=> res!1651316 e!2513953)))

(assert (=> b!4051666 (= res!1651316 (= (h!48724 rules!2999) (rule!10021 (_1!24322 (get!14207 lt!1443996)))))))

(declare-fun b!4051667 () Bool)

(assert (=> b!4051667 (= e!2513953 (contains!8611 (t!335879 rules!2999) (rule!10021 (_1!24322 (get!14207 lt!1443996)))))))

(assert (= (and d!1203549 res!1651315) b!4051666))

(assert (= (and b!4051666 (not res!1651316)) b!4051667))

(assert (=> d!1203549 m!4651957))

(declare-fun m!4653241 () Bool)

(assert (=> d!1203549 m!4653241))

(declare-fun m!4653243 () Bool)

(assert (=> b!4051667 m!4653243))

(assert (=> b!4051088 d!1203549))

(assert (=> b!4051088 d!1203311))

(declare-fun d!1203551 () Bool)

(declare-fun e!2513956 () Bool)

(assert (=> d!1203551 e!2513956))

(declare-fun res!1651320 () Bool)

(assert (=> d!1203551 (=> res!1651320 e!2513956)))

(declare-fun lt!1444254 () Bool)

(assert (=> d!1203551 (= res!1651320 (not lt!1444254))))

(declare-fun e!2513955 () Bool)

(assert (=> d!1203551 (= lt!1444254 e!2513955)))

(declare-fun res!1651318 () Bool)

(assert (=> d!1203551 (=> res!1651318 e!2513955)))

(assert (=> d!1203551 (= res!1651318 (is-Nil!43302 (tail!6294 lt!1443625)))))

(assert (=> d!1203551 (= (isPrefix!4026 (tail!6294 lt!1443625) (tail!6294 (++!11341 lt!1443625 newSuffixResult!27))) lt!1444254)))

(declare-fun b!4051670 () Bool)

(declare-fun e!2513957 () Bool)

(assert (=> b!4051670 (= e!2513957 (isPrefix!4026 (tail!6294 (tail!6294 lt!1443625)) (tail!6294 (tail!6294 (++!11341 lt!1443625 newSuffixResult!27)))))))

(declare-fun b!4051669 () Bool)

(declare-fun res!1651317 () Bool)

(assert (=> b!4051669 (=> (not res!1651317) (not e!2513957))))

(assert (=> b!4051669 (= res!1651317 (= (head!8562 (tail!6294 lt!1443625)) (head!8562 (tail!6294 (++!11341 lt!1443625 newSuffixResult!27)))))))

(declare-fun b!4051668 () Bool)

(assert (=> b!4051668 (= e!2513955 e!2513957)))

(declare-fun res!1651319 () Bool)

(assert (=> b!4051668 (=> (not res!1651319) (not e!2513957))))

(assert (=> b!4051668 (= res!1651319 (not (is-Nil!43302 (tail!6294 (++!11341 lt!1443625 newSuffixResult!27)))))))

(declare-fun b!4051671 () Bool)

(assert (=> b!4051671 (= e!2513956 (>= (size!32375 (tail!6294 (++!11341 lt!1443625 newSuffixResult!27))) (size!32375 (tail!6294 lt!1443625))))))

(assert (= (and d!1203551 (not res!1651318)) b!4051668))

(assert (= (and b!4051668 res!1651319) b!4051669))

(assert (= (and b!4051669 res!1651317) b!4051670))

(assert (= (and d!1203551 (not res!1651320)) b!4051671))

(assert (=> b!4051670 m!4651761))

(assert (=> b!4051670 m!4653033))

(assert (=> b!4051670 m!4651873))

(declare-fun m!4653245 () Bool)

(assert (=> b!4051670 m!4653245))

(assert (=> b!4051670 m!4653033))

(assert (=> b!4051670 m!4653245))

(declare-fun m!4653247 () Bool)

(assert (=> b!4051670 m!4653247))

(assert (=> b!4051669 m!4651761))

(assert (=> b!4051669 m!4653039))

(assert (=> b!4051669 m!4651873))

(declare-fun m!4653249 () Bool)

(assert (=> b!4051669 m!4653249))

(assert (=> b!4051671 m!4651873))

(declare-fun m!4653251 () Bool)

(assert (=> b!4051671 m!4653251))

(assert (=> b!4051671 m!4651761))

(assert (=> b!4051671 m!4653045))

(assert (=> b!4050828 d!1203551))

(assert (=> b!4050828 d!1203443))

(declare-fun d!1203553 () Bool)

(assert (=> d!1203553 (= (tail!6294 (++!11341 lt!1443625 newSuffixResult!27)) (t!335877 (++!11341 lt!1443625 newSuffixResult!27)))))

(assert (=> b!4050828 d!1203553))

(declare-fun d!1203555 () Bool)

(declare-fun e!2513959 () Bool)

(assert (=> d!1203555 e!2513959))

(declare-fun res!1651324 () Bool)

(assert (=> d!1203555 (=> res!1651324 e!2513959)))

(declare-fun lt!1444255 () Bool)

(assert (=> d!1203555 (= res!1651324 (not lt!1444255))))

(declare-fun e!2513958 () Bool)

(assert (=> d!1203555 (= lt!1444255 e!2513958)))

(declare-fun res!1651322 () Bool)

(assert (=> d!1203555 (=> res!1651322 e!2513958)))

(assert (=> d!1203555 (= res!1651322 (is-Nil!43302 (tail!6294 lt!1443625)))))

(assert (=> d!1203555 (= (isPrefix!4026 (tail!6294 lt!1443625) (tail!6294 lt!1443643)) lt!1444255)))

(declare-fun b!4051674 () Bool)

(declare-fun e!2513960 () Bool)

(assert (=> b!4051674 (= e!2513960 (isPrefix!4026 (tail!6294 (tail!6294 lt!1443625)) (tail!6294 (tail!6294 lt!1443643))))))

(declare-fun b!4051673 () Bool)

(declare-fun res!1651321 () Bool)

(assert (=> b!4051673 (=> (not res!1651321) (not e!2513960))))

(assert (=> b!4051673 (= res!1651321 (= (head!8562 (tail!6294 lt!1443625)) (head!8562 (tail!6294 lt!1443643))))))

(declare-fun b!4051672 () Bool)

(assert (=> b!4051672 (= e!2513958 e!2513960)))

(declare-fun res!1651323 () Bool)

(assert (=> b!4051672 (=> (not res!1651323) (not e!2513960))))

(assert (=> b!4051672 (= res!1651323 (not (is-Nil!43302 (tail!6294 lt!1443643))))))

(declare-fun b!4051675 () Bool)

(assert (=> b!4051675 (= e!2513959 (>= (size!32375 (tail!6294 lt!1443643)) (size!32375 (tail!6294 lt!1443625))))))

(assert (= (and d!1203555 (not res!1651322)) b!4051672))

(assert (= (and b!4051672 res!1651323) b!4051673))

(assert (= (and b!4051673 res!1651321) b!4051674))

(assert (= (and d!1203555 (not res!1651324)) b!4051675))

(assert (=> b!4051674 m!4651761))

(assert (=> b!4051674 m!4653033))

(assert (=> b!4051674 m!4652259))

(declare-fun m!4653253 () Bool)

(assert (=> b!4051674 m!4653253))

(assert (=> b!4051674 m!4653033))

(assert (=> b!4051674 m!4653253))

(declare-fun m!4653255 () Bool)

(assert (=> b!4051674 m!4653255))

(assert (=> b!4051673 m!4651761))

(assert (=> b!4051673 m!4653039))

(assert (=> b!4051673 m!4652259))

(declare-fun m!4653257 () Bool)

(assert (=> b!4051673 m!4653257))

(assert (=> b!4051675 m!4652259))

(declare-fun m!4653259 () Bool)

(assert (=> b!4051675 m!4653259))

(assert (=> b!4051675 m!4651761))

(assert (=> b!4051675 m!4653045))

(assert (=> b!4051067 d!1203555))

(assert (=> b!4051067 d!1203443))

(declare-fun d!1203557 () Bool)

(assert (=> d!1203557 (= (tail!6294 lt!1443643) (t!335877 lt!1443643))))

(assert (=> b!4051067 d!1203557))

(assert (=> b!4051010 d!1203291))

(declare-fun d!1203559 () Bool)

(assert (=> d!1203559 (= (head!8562 prefix!494) (h!48722 prefix!494))))

(assert (=> b!4051010 d!1203559))

(declare-fun d!1203561 () Bool)

(declare-fun lt!1444256 () Int)

(assert (=> d!1203561 (>= lt!1444256 0)))

(declare-fun e!2513961 () Int)

(assert (=> d!1203561 (= lt!1444256 e!2513961)))

(declare-fun c!699903 () Bool)

(assert (=> d!1203561 (= c!699903 (is-Nil!43302 lt!1443825))))

(assert (=> d!1203561 (= (size!32375 lt!1443825) lt!1444256)))

(declare-fun b!4051676 () Bool)

(assert (=> b!4051676 (= e!2513961 0)))

(declare-fun b!4051677 () Bool)

(assert (=> b!4051677 (= e!2513961 (+ 1 (size!32375 (t!335877 lt!1443825))))))

(assert (= (and d!1203561 c!699903) b!4051676))

(assert (= (and d!1203561 (not c!699903)) b!4051677))

(declare-fun m!4653261 () Bool)

(assert (=> b!4051677 m!4653261))

(assert (=> b!4050624 d!1203561))

(assert (=> b!4050624 d!1203115))

(declare-fun d!1203563 () Bool)

(declare-fun lt!1444257 () Int)

(assert (=> d!1203563 (>= lt!1444257 0)))

(declare-fun e!2513962 () Int)

(assert (=> d!1203563 (= lt!1444257 e!2513962)))

(declare-fun c!699904 () Bool)

(assert (=> d!1203563 (= c!699904 (is-Nil!43302 lt!1443628))))

(assert (=> d!1203563 (= (size!32375 lt!1443628) lt!1444257)))

(declare-fun b!4051678 () Bool)

(assert (=> b!4051678 (= e!2513962 0)))

(declare-fun b!4051679 () Bool)

(assert (=> b!4051679 (= e!2513962 (+ 1 (size!32375 (t!335877 lt!1443628))))))

(assert (= (and d!1203563 c!699904) b!4051678))

(assert (= (and d!1203563 (not c!699904)) b!4051679))

(declare-fun m!4653263 () Bool)

(assert (=> b!4051679 m!4653263))

(assert (=> b!4050624 d!1203563))

(declare-fun d!1203565 () Bool)

(declare-fun lt!1444258 () Int)

(assert (=> d!1203565 (>= lt!1444258 0)))

(declare-fun e!2513963 () Int)

(assert (=> d!1203565 (= lt!1444258 e!2513963)))

(declare-fun c!699905 () Bool)

(assert (=> d!1203565 (= c!699905 (is-Nil!43302 lt!1443975))))

(assert (=> d!1203565 (= (size!32375 lt!1443975) lt!1444258)))

(declare-fun b!4051680 () Bool)

(assert (=> b!4051680 (= e!2513963 0)))

(declare-fun b!4051681 () Bool)

(assert (=> b!4051681 (= e!2513963 (+ 1 (size!32375 (t!335877 lt!1443975))))))

(assert (= (and d!1203565 c!699905) b!4051680))

(assert (= (and d!1203565 (not c!699905)) b!4051681))

(declare-fun m!4653265 () Bool)

(assert (=> b!4051681 m!4653265))

(assert (=> b!4051035 d!1203565))

(assert (=> b!4051035 d!1203115))

(declare-fun d!1203567 () Bool)

(declare-fun lt!1444259 () Int)

(assert (=> d!1203567 (>= lt!1444259 0)))

(declare-fun e!2513964 () Int)

(assert (=> d!1203567 (= lt!1444259 e!2513964)))

(declare-fun c!699906 () Bool)

(assert (=> d!1203567 (= c!699906 (is-Nil!43302 newSuffixResult!27))))

(assert (=> d!1203567 (= (size!32375 newSuffixResult!27) lt!1444259)))

(declare-fun b!4051682 () Bool)

(assert (=> b!4051682 (= e!2513964 0)))

(declare-fun b!4051683 () Bool)

(assert (=> b!4051683 (= e!2513964 (+ 1 (size!32375 (t!335877 newSuffixResult!27))))))

(assert (= (and d!1203567 c!699906) b!4051682))

(assert (= (and d!1203567 (not c!699906)) b!4051683))

(declare-fun m!4653267 () Bool)

(assert (=> b!4051683 m!4653267))

(assert (=> b!4051035 d!1203567))

(declare-fun d!1203569 () Bool)

(declare-fun e!2513967 () Bool)

(assert (=> d!1203569 e!2513967))

(declare-fun res!1651327 () Bool)

(assert (=> d!1203569 (=> (not res!1651327) (not e!2513967))))

(declare-fun lt!1444262 () BalanceConc!25894)

(assert (=> d!1203569 (= res!1651327 (= (list!16133 lt!1444262) lt!1443625))))

(declare-fun fromList!866 (List!43426) Conc!13150)

(assert (=> d!1203569 (= lt!1444262 (BalanceConc!25895 (fromList!866 lt!1443625)))))

(assert (=> d!1203569 (= (fromListB!2353 lt!1443625) lt!1444262)))

(declare-fun b!4051686 () Bool)

(declare-fun isBalanced!3686 (Conc!13150) Bool)

(assert (=> b!4051686 (= e!2513967 (isBalanced!3686 (fromList!866 lt!1443625)))))

(assert (= (and d!1203569 res!1651327) b!4051686))

(declare-fun m!4653269 () Bool)

(assert (=> d!1203569 m!4653269))

(declare-fun m!4653271 () Bool)

(assert (=> d!1203569 m!4653271))

(assert (=> b!4051686 m!4653271))

(assert (=> b!4051686 m!4653271))

(declare-fun m!4653273 () Bool)

(assert (=> b!4051686 m!4653273))

(assert (=> d!1203003 d!1203569))

(assert (=> b!4050982 d!1203333))

(assert (=> b!4050982 d!1203435))

(declare-fun d!1203571 () Bool)

(declare-fun lt!1444263 () Int)

(assert (=> d!1203571 (>= lt!1444263 0)))

(declare-fun e!2513968 () Int)

(assert (=> d!1203571 (= lt!1444263 e!2513968)))

(declare-fun c!699908 () Bool)

(assert (=> d!1203571 (= c!699908 (is-Nil!43302 lt!1443949))))

(assert (=> d!1203571 (= (size!32375 lt!1443949) lt!1444263)))

(declare-fun b!4051687 () Bool)

(assert (=> b!4051687 (= e!2513968 0)))

(declare-fun b!4051688 () Bool)

(assert (=> b!4051688 (= e!2513968 (+ 1 (size!32375 (t!335877 lt!1443949))))))

(assert (= (and d!1203571 c!699908) b!4051687))

(assert (= (and d!1203571 (not c!699908)) b!4051688))

(declare-fun m!4653275 () Bool)

(assert (=> b!4051688 m!4653275))

(assert (=> b!4050977 d!1203571))

(assert (=> b!4050977 d!1203099))

(assert (=> b!4050977 d!1203389))

(declare-fun d!1203573 () Bool)

(declare-fun c!699909 () Bool)

(assert (=> d!1203573 (= c!699909 (is-Nil!43302 lt!1443969))))

(declare-fun e!2513969 () (Set C!23874))

(assert (=> d!1203573 (= (content!6596 lt!1443969) e!2513969)))

(declare-fun b!4051689 () Bool)

(assert (=> b!4051689 (= e!2513969 (as set.empty (Set C!23874)))))

(declare-fun b!4051690 () Bool)

(assert (=> b!4051690 (= e!2513969 (set.union (set.insert (h!48722 lt!1443969) (as set.empty (Set C!23874))) (content!6596 (t!335877 lt!1443969))))))

(assert (= (and d!1203573 c!699909) b!4051689))

(assert (= (and d!1203573 (not c!699909)) b!4051690))

(declare-fun m!4653277 () Bool)

(assert (=> b!4051690 m!4653277))

(declare-fun m!4653279 () Bool)

(assert (=> b!4051690 m!4653279))

(assert (=> d!1203103 d!1203573))

(declare-fun d!1203575 () Bool)

(declare-fun c!699910 () Bool)

(assert (=> d!1203575 (= c!699910 (is-Nil!43302 lt!1443610))))

(declare-fun e!2513970 () (Set C!23874))

(assert (=> d!1203575 (= (content!6596 lt!1443610) e!2513970)))

(declare-fun b!4051691 () Bool)

(assert (=> b!4051691 (= e!2513970 (as set.empty (Set C!23874)))))

(declare-fun b!4051692 () Bool)

(assert (=> b!4051692 (= e!2513970 (set.union (set.insert (h!48722 lt!1443610) (as set.empty (Set C!23874))) (content!6596 (t!335877 lt!1443610))))))

(assert (= (and d!1203575 c!699910) b!4051691))

(assert (= (and d!1203575 (not c!699910)) b!4051692))

(declare-fun m!4653281 () Bool)

(assert (=> b!4051692 m!4653281))

(assert (=> b!4051692 m!4653169))

(assert (=> d!1203103 d!1203575))

(assert (=> d!1203103 d!1203403))

(assert (=> b!4051062 d!1203333))

(assert (=> b!4051062 d!1203293))

(declare-fun b!4051711 () Bool)

(declare-fun e!2513985 () Bool)

(declare-fun e!2513986 () Bool)

(assert (=> b!4051711 (= e!2513985 e!2513986)))

(declare-fun c!699916 () Bool)

(assert (=> b!4051711 (= c!699916 (is-Union!11844 (regex!6939 (rule!10021 token!484))))))

(declare-fun b!4051712 () Bool)

(declare-fun e!2513989 () Bool)

(declare-fun call!287897 () Bool)

(assert (=> b!4051712 (= e!2513989 call!287897)))

(declare-fun b!4051713 () Bool)

(assert (=> b!4051713 (= e!2513985 e!2513989)))

(declare-fun res!1651342 () Bool)

(assert (=> b!4051713 (= res!1651342 (not (nullable!4159 (reg!12173 (regex!6939 (rule!10021 token!484))))))))

(assert (=> b!4051713 (=> (not res!1651342) (not e!2513989))))

(declare-fun bm!287890 () Bool)

(declare-fun call!287895 () Bool)

(assert (=> bm!287890 (= call!287895 (validRegex!5359 (ite c!699916 (regTwo!24201 (regex!6939 (rule!10021 token!484))) (regTwo!24200 (regex!6939 (rule!10021 token!484))))))))

(declare-fun b!4051714 () Bool)

(declare-fun e!2513991 () Bool)

(assert (=> b!4051714 (= e!2513991 call!287895)))

(declare-fun b!4051715 () Bool)

(declare-fun res!1651338 () Bool)

(assert (=> b!4051715 (=> (not res!1651338) (not e!2513991))))

(declare-fun call!287896 () Bool)

(assert (=> b!4051715 (= res!1651338 call!287896)))

(assert (=> b!4051715 (= e!2513986 e!2513991)))

(declare-fun b!4051716 () Bool)

(declare-fun e!2513988 () Bool)

(assert (=> b!4051716 (= e!2513988 call!287895)))

(declare-fun b!4051717 () Bool)

(declare-fun e!2513990 () Bool)

(assert (=> b!4051717 (= e!2513990 e!2513988)))

(declare-fun res!1651341 () Bool)

(assert (=> b!4051717 (=> (not res!1651341) (not e!2513988))))

(assert (=> b!4051717 (= res!1651341 call!287896)))

(declare-fun bm!287892 () Bool)

(assert (=> bm!287892 (= call!287896 call!287897)))

(declare-fun c!699915 () Bool)

(declare-fun bm!287891 () Bool)

(assert (=> bm!287891 (= call!287897 (validRegex!5359 (ite c!699915 (reg!12173 (regex!6939 (rule!10021 token!484))) (ite c!699916 (regOne!24201 (regex!6939 (rule!10021 token!484))) (regOne!24200 (regex!6939 (rule!10021 token!484)))))))))

(declare-fun d!1203577 () Bool)

(declare-fun res!1651339 () Bool)

(declare-fun e!2513987 () Bool)

(assert (=> d!1203577 (=> res!1651339 e!2513987)))

(assert (=> d!1203577 (= res!1651339 (is-ElementMatch!11844 (regex!6939 (rule!10021 token!484))))))

(assert (=> d!1203577 (= (validRegex!5359 (regex!6939 (rule!10021 token!484))) e!2513987)))

(declare-fun b!4051718 () Bool)

(declare-fun res!1651340 () Bool)

(assert (=> b!4051718 (=> res!1651340 e!2513990)))

(assert (=> b!4051718 (= res!1651340 (not (is-Concat!19014 (regex!6939 (rule!10021 token!484)))))))

(assert (=> b!4051718 (= e!2513986 e!2513990)))

(declare-fun b!4051719 () Bool)

(assert (=> b!4051719 (= e!2513987 e!2513985)))

(assert (=> b!4051719 (= c!699915 (is-Star!11844 (regex!6939 (rule!10021 token!484))))))

(assert (= (and d!1203577 (not res!1651339)) b!4051719))

(assert (= (and b!4051719 c!699915) b!4051713))

(assert (= (and b!4051719 (not c!699915)) b!4051711))

(assert (= (and b!4051713 res!1651342) b!4051712))

(assert (= (and b!4051711 c!699916) b!4051715))

(assert (= (and b!4051711 (not c!699916)) b!4051718))

(assert (= (and b!4051715 res!1651338) b!4051714))

(assert (= (and b!4051718 (not res!1651340)) b!4051717))

(assert (= (and b!4051717 res!1651341) b!4051716))

(assert (= (or b!4051714 b!4051716) bm!287890))

(assert (= (or b!4051715 b!4051717) bm!287892))

(assert (= (or b!4051712 bm!287892) bm!287891))

(declare-fun m!4653283 () Bool)

(assert (=> b!4051713 m!4653283))

(declare-fun m!4653285 () Bool)

(assert (=> bm!287890 m!4653285))

(declare-fun m!4653287 () Bool)

(assert (=> bm!287891 m!4653287))

(assert (=> d!1203017 d!1203577))

(assert (=> d!1202997 d!1203131))

(assert (=> b!4050637 d!1203291))

(declare-fun d!1203579 () Bool)

(assert (=> d!1203579 (= (head!8562 lt!1443614) (h!48722 lt!1443614))))

(assert (=> b!4050637 d!1203579))

(assert (=> d!1202991 d!1203001))

(assert (=> d!1202991 d!1202995))

(declare-fun d!1203581 () Bool)

(assert (=> d!1203581 (isPrefix!4026 lt!1443625 (++!11341 lt!1443625 newSuffixResult!27))))

(assert (=> d!1203581 true))

(declare-fun _$46!1809 () Unit!62585)

(assert (=> d!1203581 (= (choose!24575 lt!1443625 newSuffixResult!27) _$46!1809)))

(declare-fun bs!591590 () Bool)

(assert (= bs!591590 d!1203581))

(assert (=> bs!591590 m!4651323))

(assert (=> bs!591590 m!4651323))

(assert (=> bs!591590 m!4651325))

(assert (=> d!1202991 d!1203581))

(declare-fun d!1203583 () Bool)

(assert (=> d!1203583 (= (isDefined!7113 lt!1443996) (not (isEmpty!25847 lt!1443996)))))

(declare-fun bs!591591 () Bool)

(assert (= bs!591591 d!1203583))

(assert (=> bs!591591 m!4652333))

(assert (=> b!4051089 d!1203583))

(declare-fun d!1203585 () Bool)

(declare-fun c!699917 () Bool)

(assert (=> d!1203585 (= c!699917 (is-Nil!43302 lt!1443825))))

(declare-fun e!2513992 () (Set C!23874))

(assert (=> d!1203585 (= (content!6596 lt!1443825) e!2513992)))

(declare-fun b!4051720 () Bool)

(assert (=> b!4051720 (= e!2513992 (as set.empty (Set C!23874)))))

(declare-fun b!4051721 () Bool)

(assert (=> b!4051721 (= e!2513992 (set.union (set.insert (h!48722 lt!1443825) (as set.empty (Set C!23874))) (content!6596 (t!335877 lt!1443825))))))

(assert (= (and d!1203585 c!699917) b!4051720))

(assert (= (and d!1203585 (not c!699917)) b!4051721))

(declare-fun m!4653289 () Bool)

(assert (=> b!4051721 m!4653289))

(declare-fun m!4653291 () Bool)

(assert (=> b!4051721 m!4653291))

(assert (=> d!1202923 d!1203585))

(assert (=> d!1202923 d!1203489))

(declare-fun d!1203587 () Bool)

(declare-fun c!699918 () Bool)

(assert (=> d!1203587 (= c!699918 (is-Nil!43302 lt!1443628))))

(declare-fun e!2513993 () (Set C!23874))

(assert (=> d!1203587 (= (content!6596 lt!1443628) e!2513993)))

(declare-fun b!4051722 () Bool)

(assert (=> b!4051722 (= e!2513993 (as set.empty (Set C!23874)))))

(declare-fun b!4051723 () Bool)

(assert (=> b!4051723 (= e!2513993 (set.union (set.insert (h!48722 lt!1443628) (as set.empty (Set C!23874))) (content!6596 (t!335877 lt!1443628))))))

(assert (= (and d!1203587 c!699918) b!4051722))

(assert (= (and d!1203587 (not c!699918)) b!4051723))

(declare-fun m!4653293 () Bool)

(assert (=> b!4051723 m!4653293))

(declare-fun m!4653295 () Bool)

(assert (=> b!4051723 m!4653295))

(assert (=> d!1202923 d!1203587))

(assert (=> d!1202985 d!1203007))

(declare-fun d!1203589 () Bool)

(assert (=> d!1203589 (ruleValid!2869 thiss!21717 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))

(assert (=> d!1203589 true))

(declare-fun _$65!1528 () Unit!62585)

(assert (=> d!1203589 (= (choose!24578 thiss!21717 (rule!10021 (_1!24322 (v!39762 lt!1443644))) rules!2999) _$65!1528)))

(declare-fun bs!591592 () Bool)

(assert (= bs!591592 d!1203589))

(assert (=> bs!591592 m!4651315))

(assert (=> d!1202985 d!1203589))

(assert (=> d!1202985 d!1203023))

(declare-fun d!1203591 () Bool)

(declare-fun lt!1444264 () Int)

(assert (=> d!1203591 (>= lt!1444264 0)))

(declare-fun e!2513994 () Int)

(assert (=> d!1203591 (= lt!1444264 e!2513994)))

(declare-fun c!699919 () Bool)

(assert (=> d!1203591 (= c!699919 (is-Nil!43302 lt!1443969))))

(assert (=> d!1203591 (= (size!32375 lt!1443969) lt!1444264)))

(declare-fun b!4051724 () Bool)

(assert (=> b!4051724 (= e!2513994 0)))

(declare-fun b!4051725 () Bool)

(assert (=> b!4051725 (= e!2513994 (+ 1 (size!32375 (t!335877 lt!1443969))))))

(assert (= (and d!1203591 c!699919) b!4051724))

(assert (= (and d!1203591 (not c!699919)) b!4051725))

(declare-fun m!4653297 () Bool)

(assert (=> b!4051725 m!4653297))

(assert (=> b!4051023 d!1203591))

(declare-fun d!1203593 () Bool)

(declare-fun lt!1444265 () Int)

(assert (=> d!1203593 (>= lt!1444265 0)))

(declare-fun e!2513995 () Int)

(assert (=> d!1203593 (= lt!1444265 e!2513995)))

(declare-fun c!699920 () Bool)

(assert (=> d!1203593 (= c!699920 (is-Nil!43302 lt!1443610))))

(assert (=> d!1203593 (= (size!32375 lt!1443610) lt!1444265)))

(declare-fun b!4051726 () Bool)

(assert (=> b!4051726 (= e!2513995 0)))

(declare-fun b!4051727 () Bool)

(assert (=> b!4051727 (= e!2513995 (+ 1 (size!32375 (t!335877 lt!1443610))))))

(assert (= (and d!1203593 c!699920) b!4051726))

(assert (= (and d!1203593 (not c!699920)) b!4051727))

(assert (=> b!4051727 m!4653173))

(assert (=> b!4051023 d!1203593))

(assert (=> b!4051023 d!1203097))

(declare-fun d!1203595 () Bool)

(declare-fun e!2513997 () Bool)

(assert (=> d!1203595 e!2513997))

(declare-fun res!1651346 () Bool)

(assert (=> d!1203595 (=> res!1651346 e!2513997)))

(declare-fun lt!1444266 () Bool)

(assert (=> d!1203595 (= res!1651346 (not lt!1444266))))

(declare-fun e!2513996 () Bool)

(assert (=> d!1203595 (= lt!1444266 e!2513996)))

(declare-fun res!1651344 () Bool)

(assert (=> d!1203595 (=> res!1651344 e!2513996)))

(assert (=> d!1203595 (= res!1651344 (is-Nil!43302 lt!1443622))))

(assert (=> d!1203595 (= (isPrefix!4026 lt!1443622 (++!11341 lt!1443622 lt!1443648)) lt!1444266)))

(declare-fun b!4051730 () Bool)

(declare-fun e!2513998 () Bool)

(assert (=> b!4051730 (= e!2513998 (isPrefix!4026 (tail!6294 lt!1443622) (tail!6294 (++!11341 lt!1443622 lt!1443648))))))

(declare-fun b!4051729 () Bool)

(declare-fun res!1651343 () Bool)

(assert (=> b!4051729 (=> (not res!1651343) (not e!2513998))))

(assert (=> b!4051729 (= res!1651343 (= (head!8562 lt!1443622) (head!8562 (++!11341 lt!1443622 lt!1443648))))))

(declare-fun b!4051728 () Bool)

(assert (=> b!4051728 (= e!2513996 e!2513998)))

(declare-fun res!1651345 () Bool)

(assert (=> b!4051728 (=> (not res!1651345) (not e!2513998))))

(assert (=> b!4051728 (= res!1651345 (not (is-Nil!43302 (++!11341 lt!1443622 lt!1443648))))))

(declare-fun b!4051731 () Bool)

(assert (=> b!4051731 (= e!2513997 (>= (size!32375 (++!11341 lt!1443622 lt!1443648)) (size!32375 lt!1443622)))))

(assert (= (and d!1203595 (not res!1651344)) b!4051728))

(assert (= (and b!4051728 res!1651345) b!4051729))

(assert (= (and b!4051729 res!1651343) b!4051730))

(assert (= (and d!1203595 (not res!1651346)) b!4051731))

(assert (=> b!4051730 m!4651639))

(assert (=> b!4051730 m!4651363))

(declare-fun m!4653299 () Bool)

(assert (=> b!4051730 m!4653299))

(assert (=> b!4051730 m!4651639))

(assert (=> b!4051730 m!4653299))

(declare-fun m!4653301 () Bool)

(assert (=> b!4051730 m!4653301))

(assert (=> b!4051729 m!4651645))

(assert (=> b!4051729 m!4651363))

(declare-fun m!4653303 () Bool)

(assert (=> b!4051729 m!4653303))

(assert (=> b!4051731 m!4651363))

(declare-fun m!4653305 () Bool)

(assert (=> b!4051731 m!4653305))

(assert (=> b!4051731 m!4651297))

(assert (=> d!1202937 d!1203595))

(assert (=> d!1202937 d!1203101))

(declare-fun d!1203597 () Bool)

(assert (=> d!1203597 (isPrefix!4026 lt!1443622 (++!11341 lt!1443622 lt!1443648))))

(assert (=> d!1203597 true))

(declare-fun _$46!1810 () Unit!62585)

(assert (=> d!1203597 (= (choose!24575 lt!1443622 lt!1443648) _$46!1810)))

(declare-fun bs!591593 () Bool)

(assert (= bs!591593 d!1203597))

(assert (=> bs!591593 m!4651363))

(assert (=> bs!591593 m!4651363))

(assert (=> bs!591593 m!4651655))

(assert (=> d!1202937 d!1203597))

(assert (=> b!4050701 d!1203471))

(declare-fun d!1203599 () Bool)

(declare-fun lt!1444267 () Int)

(assert (=> d!1203599 (>= lt!1444267 0)))

(declare-fun e!2513999 () Int)

(assert (=> d!1203599 (= lt!1444267 e!2513999)))

(declare-fun c!699921 () Bool)

(assert (=> d!1203599 (= c!699921 (is-Nil!43302 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443859)))))))

(assert (=> d!1203599 (= (size!32375 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443859)))) lt!1444267)))

(declare-fun b!4051732 () Bool)

(assert (=> b!4051732 (= e!2513999 0)))

(declare-fun b!4051733 () Bool)

(assert (=> b!4051733 (= e!2513999 (+ 1 (size!32375 (t!335877 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443859)))))))))

(assert (= (and d!1203599 c!699921) b!4051732))

(assert (= (and d!1203599 (not c!699921)) b!4051733))

(declare-fun m!4653307 () Bool)

(assert (=> b!4051733 m!4653307))

(assert (=> b!4050701 d!1203599))

(declare-fun b!4051735 () Bool)

(declare-fun e!2514001 () List!43426)

(assert (=> b!4051735 (= e!2514001 (Cons!43302 (h!48722 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443941))))) (++!11341 (t!335877 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443941))))) (_2!24322 (get!14207 lt!1443941)))))))

(declare-fun b!4051734 () Bool)

(assert (=> b!4051734 (= e!2514001 (_2!24322 (get!14207 lt!1443941)))))

(declare-fun d!1203601 () Bool)

(declare-fun e!2514000 () Bool)

(assert (=> d!1203601 e!2514000))

(declare-fun res!1651348 () Bool)

(assert (=> d!1203601 (=> (not res!1651348) (not e!2514000))))

(declare-fun lt!1444268 () List!43426)

(assert (=> d!1203601 (= res!1651348 (= (content!6596 lt!1444268) (set.union (content!6596 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443941))))) (content!6596 (_2!24322 (get!14207 lt!1443941))))))))

(assert (=> d!1203601 (= lt!1444268 e!2514001)))

(declare-fun c!699922 () Bool)

(assert (=> d!1203601 (= c!699922 (is-Nil!43302 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443941))))))))

(assert (=> d!1203601 (= (++!11341 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443941)))) (_2!24322 (get!14207 lt!1443941))) lt!1444268)))

(declare-fun b!4051736 () Bool)

(declare-fun res!1651347 () Bool)

(assert (=> b!4051736 (=> (not res!1651347) (not e!2514000))))

(assert (=> b!4051736 (= res!1651347 (= (size!32375 lt!1444268) (+ (size!32375 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443941))))) (size!32375 (_2!24322 (get!14207 lt!1443941))))))))

(declare-fun b!4051737 () Bool)

(assert (=> b!4051737 (= e!2514000 (or (not (= (_2!24322 (get!14207 lt!1443941)) Nil!43302)) (= lt!1444268 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443941)))))))))

(assert (= (and d!1203601 c!699922) b!4051734))

(assert (= (and d!1203601 (not c!699922)) b!4051735))

(assert (= (and d!1203601 res!1651348) b!4051736))

(assert (= (and b!4051736 res!1651347) b!4051737))

(declare-fun m!4653309 () Bool)

(assert (=> b!4051735 m!4653309))

(declare-fun m!4653311 () Bool)

(assert (=> d!1203601 m!4653311))

(assert (=> d!1203601 m!4652063))

(declare-fun m!4653313 () Bool)

(assert (=> d!1203601 m!4653313))

(declare-fun m!4653315 () Bool)

(assert (=> d!1203601 m!4653315))

(declare-fun m!4653317 () Bool)

(assert (=> b!4051736 m!4653317))

(assert (=> b!4051736 m!4652063))

(declare-fun m!4653319 () Bool)

(assert (=> b!4051736 m!4653319))

(assert (=> b!4051736 m!4652067))

(assert (=> b!4050966 d!1203601))

(assert (=> b!4050966 d!1203285))

(assert (=> b!4050966 d!1203287))

(assert (=> b!4050966 d!1203289))

(declare-fun d!1203603 () Bool)

(declare-fun e!2514003 () Bool)

(assert (=> d!1203603 e!2514003))

(declare-fun res!1651352 () Bool)

(assert (=> d!1203603 (=> res!1651352 e!2514003)))

(declare-fun lt!1444269 () Bool)

(assert (=> d!1203603 (= res!1651352 (not lt!1444269))))

(declare-fun e!2514002 () Bool)

(assert (=> d!1203603 (= lt!1444269 e!2514002)))

(declare-fun res!1651350 () Bool)

(assert (=> d!1203603 (=> res!1651350 e!2514002)))

(assert (=> d!1203603 (= res!1651350 (is-Nil!43302 (tail!6294 lt!1443625)))))

(assert (=> d!1203603 (= (isPrefix!4026 (tail!6294 lt!1443625) (tail!6294 lt!1443605)) lt!1444269)))

(declare-fun b!4051740 () Bool)

(declare-fun e!2514004 () Bool)

(assert (=> b!4051740 (= e!2514004 (isPrefix!4026 (tail!6294 (tail!6294 lt!1443625)) (tail!6294 (tail!6294 lt!1443605))))))

(declare-fun b!4051739 () Bool)

(declare-fun res!1651349 () Bool)

(assert (=> b!4051739 (=> (not res!1651349) (not e!2514004))))

(assert (=> b!4051739 (= res!1651349 (= (head!8562 (tail!6294 lt!1443625)) (head!8562 (tail!6294 lt!1443605))))))

(declare-fun b!4051738 () Bool)

(assert (=> b!4051738 (= e!2514002 e!2514004)))

(declare-fun res!1651351 () Bool)

(assert (=> b!4051738 (=> (not res!1651351) (not e!2514004))))

(assert (=> b!4051738 (= res!1651351 (not (is-Nil!43302 (tail!6294 lt!1443605))))))

(declare-fun b!4051741 () Bool)

(assert (=> b!4051741 (= e!2514003 (>= (size!32375 (tail!6294 lt!1443605)) (size!32375 (tail!6294 lt!1443625))))))

(assert (= (and d!1203603 (not res!1651350)) b!4051738))

(assert (= (and b!4051738 res!1651351) b!4051739))

(assert (= (and b!4051739 res!1651349) b!4051740))

(assert (= (and d!1203603 (not res!1651352)) b!4051741))

(assert (=> b!4051740 m!4651761))

(assert (=> b!4051740 m!4653033))

(assert (=> b!4051740 m!4652115))

(assert (=> b!4051740 m!4653015))

(assert (=> b!4051740 m!4653033))

(assert (=> b!4051740 m!4653015))

(declare-fun m!4653321 () Bool)

(assert (=> b!4051740 m!4653321))

(assert (=> b!4051739 m!4651761))

(assert (=> b!4051739 m!4653039))

(assert (=> b!4051739 m!4652115))

(assert (=> b!4051739 m!4653099))

(assert (=> b!4051741 m!4652115))

(assert (=> b!4051741 m!4653011))

(assert (=> b!4051741 m!4651761))

(assert (=> b!4051741 m!4653045))

(assert (=> b!4050983 d!1203603))

(assert (=> b!4050983 d!1203443))

(assert (=> b!4050983 d!1203425))

(declare-fun d!1203605 () Bool)

(declare-fun e!2514006 () Bool)

(assert (=> d!1203605 e!2514006))

(declare-fun res!1651356 () Bool)

(assert (=> d!1203605 (=> res!1651356 e!2514006)))

(declare-fun lt!1444270 () Bool)

(assert (=> d!1203605 (= res!1651356 (not lt!1444270))))

(declare-fun e!2514005 () Bool)

(assert (=> d!1203605 (= lt!1444270 e!2514005)))

(declare-fun res!1651354 () Bool)

(assert (=> d!1203605 (=> res!1651354 e!2514005)))

(assert (=> d!1203605 (= res!1651354 (is-Nil!43302 (tail!6294 lt!1443625)))))

(assert (=> d!1203605 (= (isPrefix!4026 (tail!6294 lt!1443625) (tail!6294 lt!1443629)) lt!1444270)))

(declare-fun b!4051744 () Bool)

(declare-fun e!2514007 () Bool)

(assert (=> b!4051744 (= e!2514007 (isPrefix!4026 (tail!6294 (tail!6294 lt!1443625)) (tail!6294 (tail!6294 lt!1443629))))))

(declare-fun b!4051743 () Bool)

(declare-fun res!1651353 () Bool)

(assert (=> b!4051743 (=> (not res!1651353) (not e!2514007))))

(assert (=> b!4051743 (= res!1651353 (= (head!8562 (tail!6294 lt!1443625)) (head!8562 (tail!6294 lt!1443629))))))

(declare-fun b!4051742 () Bool)

(assert (=> b!4051742 (= e!2514005 e!2514007)))

(declare-fun res!1651355 () Bool)

(assert (=> b!4051742 (=> (not res!1651355) (not e!2514007))))

(assert (=> b!4051742 (= res!1651355 (not (is-Nil!43302 (tail!6294 lt!1443629))))))

(declare-fun b!4051745 () Bool)

(assert (=> b!4051745 (= e!2514006 (>= (size!32375 (tail!6294 lt!1443629)) (size!32375 (tail!6294 lt!1443625))))))

(assert (= (and d!1203605 (not res!1651354)) b!4051742))

(assert (= (and b!4051742 res!1651355) b!4051743))

(assert (= (and b!4051743 res!1651353) b!4051744))

(assert (= (and d!1203605 (not res!1651356)) b!4051745))

(assert (=> b!4051744 m!4651761))

(assert (=> b!4051744 m!4653033))

(assert (=> b!4051744 m!4651627))

(assert (=> b!4051744 m!4652987))

(assert (=> b!4051744 m!4653033))

(assert (=> b!4051744 m!4652987))

(declare-fun m!4653323 () Bool)

(assert (=> b!4051744 m!4653323))

(assert (=> b!4051743 m!4651761))

(assert (=> b!4051743 m!4653039))

(assert (=> b!4051743 m!4651627))

(assert (=> b!4051743 m!4652993))

(assert (=> b!4051745 m!4651627))

(assert (=> b!4051745 m!4652997))

(assert (=> b!4051745 m!4651761))

(assert (=> b!4051745 m!4653045))

(assert (=> b!4051063 d!1203605))

(assert (=> b!4051063 d!1203443))

(assert (=> b!4051063 d!1203413))

(declare-fun b!4051746 () Bool)

(declare-fun e!2514009 () Bool)

(declare-fun e!2514008 () Bool)

(assert (=> b!4051746 (= e!2514009 e!2514008)))

(declare-fun c!699924 () Bool)

(assert (=> b!4051746 (= c!699924 (is-IntegerValue!21508 (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (seqFromList!5156 lt!1443625))))))

(declare-fun b!4051747 () Bool)

(declare-fun e!2514010 () Bool)

(assert (=> b!4051747 (= e!2514010 (inv!15 (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (seqFromList!5156 lt!1443625))))))

(declare-fun b!4051748 () Bool)

(declare-fun res!1651357 () Bool)

(assert (=> b!4051748 (=> res!1651357 e!2514010)))

(assert (=> b!4051748 (= res!1651357 (not (is-IntegerValue!21509 (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (seqFromList!5156 lt!1443625)))))))

(assert (=> b!4051748 (= e!2514008 e!2514010)))

(declare-fun d!1203607 () Bool)

(declare-fun c!699923 () Bool)

(assert (=> d!1203607 (= c!699923 (is-IntegerValue!21507 (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (seqFromList!5156 lt!1443625))))))

(assert (=> d!1203607 (= (inv!21 (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (seqFromList!5156 lt!1443625))) e!2514009)))

(declare-fun b!4051749 () Bool)

(assert (=> b!4051749 (= e!2514008 (inv!17 (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (seqFromList!5156 lt!1443625))))))

(declare-fun b!4051750 () Bool)

(assert (=> b!4051750 (= e!2514009 (inv!16 (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (seqFromList!5156 lt!1443625))))))

(assert (= (and d!1203607 c!699923) b!4051750))

(assert (= (and d!1203607 (not c!699923)) b!4051746))

(assert (= (and b!4051746 c!699924) b!4051749))

(assert (= (and b!4051746 (not c!699924)) b!4051748))

(assert (= (and b!4051748 (not res!1651357)) b!4051747))

(declare-fun m!4653325 () Bool)

(assert (=> b!4051747 m!4653325))

(declare-fun m!4653327 () Bool)

(assert (=> b!4051749 m!4653327))

(declare-fun m!4653329 () Bool)

(assert (=> b!4051750 m!4653329))

(assert (=> tb!243689 d!1203607))

(declare-fun b!4051752 () Bool)

(declare-fun e!2514012 () List!43426)

(assert (=> b!4051752 (= e!2514012 (Cons!43302 (h!48722 (t!335877 lt!1443605)) (++!11341 (t!335877 (t!335877 lt!1443605)) lt!1443636)))))

(declare-fun b!4051751 () Bool)

(assert (=> b!4051751 (= e!2514012 lt!1443636)))

(declare-fun d!1203609 () Bool)

(declare-fun e!2514011 () Bool)

(assert (=> d!1203609 e!2514011))

(declare-fun res!1651359 () Bool)

(assert (=> d!1203609 (=> (not res!1651359) (not e!2514011))))

(declare-fun lt!1444271 () List!43426)

(assert (=> d!1203609 (= res!1651359 (= (content!6596 lt!1444271) (set.union (content!6596 (t!335877 lt!1443605)) (content!6596 lt!1443636))))))

(assert (=> d!1203609 (= lt!1444271 e!2514012)))

(declare-fun c!699925 () Bool)

(assert (=> d!1203609 (= c!699925 (is-Nil!43302 (t!335877 lt!1443605)))))

(assert (=> d!1203609 (= (++!11341 (t!335877 lt!1443605) lt!1443636) lt!1444271)))

(declare-fun b!4051753 () Bool)

(declare-fun res!1651358 () Bool)

(assert (=> b!4051753 (=> (not res!1651358) (not e!2514011))))

(assert (=> b!4051753 (= res!1651358 (= (size!32375 lt!1444271) (+ (size!32375 (t!335877 lt!1443605)) (size!32375 lt!1443636))))))

(declare-fun b!4051754 () Bool)

(assert (=> b!4051754 (= e!2514011 (or (not (= lt!1443636 Nil!43302)) (= lt!1444271 (t!335877 lt!1443605))))))

(assert (= (and d!1203609 c!699925) b!4051751))

(assert (= (and d!1203609 (not c!699925)) b!4051752))

(assert (= (and d!1203609 res!1651359) b!4051753))

(assert (= (and b!4051753 res!1651358) b!4051754))

(declare-fun m!4653331 () Bool)

(assert (=> b!4051752 m!4653331))

(declare-fun m!4653333 () Bool)

(assert (=> d!1203609 m!4653333))

(assert (=> d!1203609 m!4652875))

(assert (=> d!1203609 m!4652103))

(declare-fun m!4653335 () Bool)

(assert (=> b!4051753 m!4653335))

(assert (=> b!4051753 m!4652935))

(assert (=> b!4051753 m!4652107))

(assert (=> b!4051078 d!1203609))

(declare-fun b!4051756 () Bool)

(declare-fun e!2514014 () List!43426)

(assert (=> b!4051756 (= e!2514014 (Cons!43302 (h!48722 (t!335877 lt!1443625)) (++!11341 (t!335877 (t!335877 lt!1443625)) lt!1443602)))))

(declare-fun b!4051755 () Bool)

(assert (=> b!4051755 (= e!2514014 lt!1443602)))

(declare-fun d!1203611 () Bool)

(declare-fun e!2514013 () Bool)

(assert (=> d!1203611 e!2514013))

(declare-fun res!1651361 () Bool)

(assert (=> d!1203611 (=> (not res!1651361) (not e!2514013))))

(declare-fun lt!1444272 () List!43426)

(assert (=> d!1203611 (= res!1651361 (= (content!6596 lt!1444272) (set.union (content!6596 (t!335877 lt!1443625)) (content!6596 lt!1443602))))))

(assert (=> d!1203611 (= lt!1444272 e!2514014)))

(declare-fun c!699926 () Bool)

(assert (=> d!1203611 (= c!699926 (is-Nil!43302 (t!335877 lt!1443625)))))

(assert (=> d!1203611 (= (++!11341 (t!335877 lt!1443625) lt!1443602) lt!1444272)))

(declare-fun b!4051757 () Bool)

(declare-fun res!1651360 () Bool)

(assert (=> b!4051757 (=> (not res!1651360) (not e!2514013))))

(assert (=> b!4051757 (= res!1651360 (= (size!32375 lt!1444272) (+ (size!32375 (t!335877 lt!1443625)) (size!32375 lt!1443602))))))

(declare-fun b!4051758 () Bool)

(assert (=> b!4051758 (= e!2514013 (or (not (= lt!1443602 Nil!43302)) (= lt!1444272 (t!335877 lt!1443625))))))

(assert (= (and d!1203611 c!699926) b!4051755))

(assert (= (and d!1203611 (not c!699926)) b!4051756))

(assert (= (and d!1203611 res!1651361) b!4051757))

(assert (= (and b!4051757 res!1651360) b!4051758))

(declare-fun m!4653337 () Bool)

(assert (=> b!4051756 m!4653337))

(declare-fun m!4653339 () Bool)

(assert (=> d!1203611 m!4653339))

(assert (=> d!1203611 m!4652887))

(assert (=> d!1203611 m!4652125))

(declare-fun m!4653341 () Bool)

(assert (=> b!4051757 m!4653341))

(assert (=> b!4051757 m!4651857))

(assert (=> b!4051757 m!4652129))

(assert (=> b!4050986 d!1203611))

(declare-fun d!1203613 () Bool)

(declare-fun lt!1444273 () Int)

(assert (=> d!1203613 (>= lt!1444273 0)))

(declare-fun e!2514015 () Int)

(assert (=> d!1203613 (= lt!1444273 e!2514015)))

(declare-fun c!699927 () Bool)

(assert (=> d!1203613 (= c!699927 (is-Nil!43302 (++!11341 lt!1443625 newSuffixResult!27)))))

(assert (=> d!1203613 (= (size!32375 (++!11341 lt!1443625 newSuffixResult!27)) lt!1444273)))

(declare-fun b!4051759 () Bool)

(assert (=> b!4051759 (= e!2514015 0)))

(declare-fun b!4051760 () Bool)

(assert (=> b!4051760 (= e!2514015 (+ 1 (size!32375 (t!335877 (++!11341 lt!1443625 newSuffixResult!27)))))))

(assert (= (and d!1203613 c!699927) b!4051759))

(assert (= (and d!1203613 (not c!699927)) b!4051760))

(declare-fun m!4653343 () Bool)

(assert (=> b!4051760 m!4653343))

(assert (=> b!4050829 d!1203613))

(assert (=> b!4050829 d!1202993))

(declare-fun d!1203615 () Bool)

(declare-fun lt!1444274 () Int)

(assert (=> d!1203615 (>= lt!1444274 0)))

(declare-fun e!2514016 () Int)

(assert (=> d!1203615 (= lt!1444274 e!2514016)))

(declare-fun c!699928 () Bool)

(assert (=> d!1203615 (= c!699928 (is-Nil!43302 lt!1443643))))

(assert (=> d!1203615 (= (size!32375 lt!1443643) lt!1444274)))

(declare-fun b!4051761 () Bool)

(assert (=> b!4051761 (= e!2514016 0)))

(declare-fun b!4051762 () Bool)

(assert (=> b!4051762 (= e!2514016 (+ 1 (size!32375 (t!335877 lt!1443643))))))

(assert (= (and d!1203615 c!699928) b!4051761))

(assert (= (and d!1203615 (not c!699928)) b!4051762))

(declare-fun m!4653345 () Bool)

(assert (=> b!4051762 m!4653345))

(assert (=> b!4051068 d!1203615))

(assert (=> b!4051068 d!1202993))

(declare-fun d!1203617 () Bool)

(declare-fun e!2514018 () Bool)

(assert (=> d!1203617 e!2514018))

(declare-fun res!1651365 () Bool)

(assert (=> d!1203617 (=> res!1651365 e!2514018)))

(declare-fun lt!1444275 () Bool)

(assert (=> d!1203617 (= res!1651365 (not lt!1444275))))

(declare-fun e!2514017 () Bool)

(assert (=> d!1203617 (= lt!1444275 e!2514017)))

(declare-fun res!1651363 () Bool)

(assert (=> d!1203617 (=> res!1651363 e!2514017)))

(assert (=> d!1203617 (= res!1651363 (is-Nil!43302 (tail!6294 lt!1443622)))))

(assert (=> d!1203617 (= (isPrefix!4026 (tail!6294 lt!1443622) (tail!6294 prefix!494)) lt!1444275)))

(declare-fun b!4051765 () Bool)

(declare-fun e!2514019 () Bool)

(assert (=> b!4051765 (= e!2514019 (isPrefix!4026 (tail!6294 (tail!6294 lt!1443622)) (tail!6294 (tail!6294 prefix!494))))))

(declare-fun b!4051764 () Bool)

(declare-fun res!1651362 () Bool)

(assert (=> b!4051764 (=> (not res!1651362) (not e!2514019))))

(assert (=> b!4051764 (= res!1651362 (= (head!8562 (tail!6294 lt!1443622)) (head!8562 (tail!6294 prefix!494))))))

(declare-fun b!4051763 () Bool)

(assert (=> b!4051763 (= e!2514017 e!2514019)))

(declare-fun res!1651364 () Bool)

(assert (=> b!4051763 (=> (not res!1651364) (not e!2514019))))

(assert (=> b!4051763 (= res!1651364 (not (is-Nil!43302 (tail!6294 prefix!494))))))

(declare-fun b!4051766 () Bool)

(assert (=> b!4051766 (= e!2514018 (>= (size!32375 (tail!6294 prefix!494)) (size!32375 (tail!6294 lt!1443622))))))

(assert (= (and d!1203617 (not res!1651363)) b!4051763))

(assert (= (and b!4051763 res!1651364) b!4051764))

(assert (= (and b!4051764 res!1651362) b!4051765))

(assert (= (and d!1203617 (not res!1651365)) b!4051766))

(assert (=> b!4051765 m!4651639))

(assert (=> b!4051765 m!4652775))

(assert (=> b!4051765 m!4652141))

(assert (=> b!4051765 m!4653211))

(assert (=> b!4051765 m!4652775))

(assert (=> b!4051765 m!4653211))

(declare-fun m!4653347 () Bool)

(assert (=> b!4051765 m!4653347))

(assert (=> b!4051764 m!4651639))

(assert (=> b!4051764 m!4652781))

(assert (=> b!4051764 m!4652141))

(declare-fun m!4653349 () Bool)

(assert (=> b!4051764 m!4653349))

(assert (=> b!4051766 m!4652141))

(assert (=> b!4051766 m!4653209))

(assert (=> b!4051766 m!4651639))

(assert (=> b!4051766 m!4652787))

(assert (=> b!4051011 d!1203617))

(assert (=> b!4051011 d!1203301))

(assert (=> b!4051011 d!1203535))

(assert (=> b!4050635 d!1203319))

(declare-fun d!1203619 () Bool)

(declare-fun e!2514021 () Bool)

(assert (=> d!1203619 e!2514021))

(declare-fun res!1651369 () Bool)

(assert (=> d!1203619 (=> res!1651369 e!2514021)))

(declare-fun lt!1444276 () Bool)

(assert (=> d!1203619 (= res!1651369 (not lt!1444276))))

(declare-fun e!2514020 () Bool)

(assert (=> d!1203619 (= lt!1444276 e!2514020)))

(declare-fun res!1651367 () Bool)

(assert (=> d!1203619 (=> res!1651367 e!2514020)))

(assert (=> d!1203619 (= res!1651367 (is-Nil!43302 (tail!6294 lt!1443622)))))

(assert (=> d!1203619 (= (isPrefix!4026 (tail!6294 lt!1443622) (tail!6294 lt!1443637)) lt!1444276)))

(declare-fun b!4051769 () Bool)

(declare-fun e!2514022 () Bool)

(assert (=> b!4051769 (= e!2514022 (isPrefix!4026 (tail!6294 (tail!6294 lt!1443622)) (tail!6294 (tail!6294 lt!1443637))))))

(declare-fun b!4051768 () Bool)

(declare-fun res!1651366 () Bool)

(assert (=> b!4051768 (=> (not res!1651366) (not e!2514022))))

(assert (=> b!4051768 (= res!1651366 (= (head!8562 (tail!6294 lt!1443622)) (head!8562 (tail!6294 lt!1443637))))))

(declare-fun b!4051767 () Bool)

(assert (=> b!4051767 (= e!2514020 e!2514022)))

(declare-fun res!1651368 () Bool)

(assert (=> b!4051767 (=> (not res!1651368) (not e!2514022))))

(assert (=> b!4051767 (= res!1651368 (not (is-Nil!43302 (tail!6294 lt!1443637))))))

(declare-fun b!4051770 () Bool)

(assert (=> b!4051770 (= e!2514021 (>= (size!32375 (tail!6294 lt!1443637)) (size!32375 (tail!6294 lt!1443622))))))

(assert (= (and d!1203619 (not res!1651367)) b!4051767))

(assert (= (and b!4051767 res!1651368) b!4051768))

(assert (= (and b!4051768 res!1651366) b!4051769))

(assert (= (and d!1203619 (not res!1651369)) b!4051770))

(assert (=> b!4051769 m!4651639))

(assert (=> b!4051769 m!4652775))

(assert (=> b!4051769 m!4652151))

(declare-fun m!4653351 () Bool)

(assert (=> b!4051769 m!4653351))

(assert (=> b!4051769 m!4652775))

(assert (=> b!4051769 m!4653351))

(declare-fun m!4653353 () Bool)

(assert (=> b!4051769 m!4653353))

(assert (=> b!4051768 m!4651639))

(assert (=> b!4051768 m!4652781))

(assert (=> b!4051768 m!4652151))

(declare-fun m!4653355 () Bool)

(assert (=> b!4051768 m!4653355))

(assert (=> b!4051770 m!4652151))

(declare-fun m!4653357 () Bool)

(assert (=> b!4051770 m!4653357))

(assert (=> b!4051770 m!4651639))

(assert (=> b!4051770 m!4652787))

(assert (=> b!4050997 d!1203619))

(assert (=> b!4050997 d!1203301))

(declare-fun d!1203621 () Bool)

(assert (=> d!1203621 (= (tail!6294 lt!1443637) (t!335877 lt!1443637))))

(assert (=> b!4050997 d!1203621))

(declare-fun d!1203623 () Bool)

(assert (=> d!1203623 true))

(declare-fun order!22693 () Int)

(declare-fun lambda!127515 () Int)

(declare-fun dynLambda!18409 (Int Int) Int)

(assert (=> d!1203623 (< (dynLambda!18403 order!22687 (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) (dynLambda!18409 order!22693 lambda!127515))))

(declare-fun Forall2!1096 (Int) Bool)

(assert (=> d!1203623 (= (equivClasses!2866 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) (Forall2!1096 lambda!127515))))

(declare-fun bs!591594 () Bool)

(assert (= bs!591594 d!1203623))

(declare-fun m!4653359 () Bool)

(assert (=> bs!591594 m!4653359))

(assert (=> b!4050798 d!1203623))

(assert (=> b!4050970 d!1203289))

(declare-fun d!1203625 () Bool)

(assert (=> d!1203625 (= (apply!10128 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443941)))) (seqFromList!5156 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443941))))) (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443941))))) (seqFromList!5156 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443941))))))))

(declare-fun b_lambda!118415 () Bool)

(assert (=> (not b_lambda!118415) (not d!1203625)))

(declare-fun tb!243771 () Bool)

(declare-fun t!335977 () Bool)

(assert (=> (and b!4050453 (= (toValue!9491 (transformation!6939 (rule!10021 token!484))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443941)))))) t!335977) tb!243771))

(declare-fun result!295400 () Bool)

(assert (=> tb!243771 (= result!295400 (inv!21 (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443941))))) (seqFromList!5156 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443941)))))))))

(declare-fun m!4653361 () Bool)

(assert (=> tb!243771 m!4653361))

(assert (=> d!1203625 t!335977))

(declare-fun b_and!311579 () Bool)

(assert (= b_and!311561 (and (=> t!335977 result!295400) b_and!311579)))

(declare-fun t!335979 () Bool)

(declare-fun tb!243773 () Bool)

(assert (=> (and b!4050449 (= (toValue!9491 (transformation!6939 (h!48724 rules!2999))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443941)))))) t!335979) tb!243773))

(declare-fun result!295402 () Bool)

(assert (= result!295402 result!295400))

(assert (=> d!1203625 t!335979))

(declare-fun b_and!311581 () Bool)

(assert (= b_and!311563 (and (=> t!335979 result!295402) b_and!311581)))

(declare-fun tb!243775 () Bool)

(declare-fun t!335981 () Bool)

(assert (=> (and b!4051134 (= (toValue!9491 (transformation!6939 (h!48724 (t!335879 rules!2999)))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443941)))))) t!335981) tb!243775))

(declare-fun result!295404 () Bool)

(assert (= result!295404 result!295400))

(assert (=> d!1203625 t!335981))

(declare-fun b_and!311583 () Bool)

(assert (= b_and!311565 (and (=> t!335981 result!295404) b_and!311583)))

(assert (=> d!1203625 m!4652071))

(declare-fun m!4653363 () Bool)

(assert (=> d!1203625 m!4653363))

(assert (=> b!4050970 d!1203625))

(declare-fun d!1203627 () Bool)

(assert (=> d!1203627 (= (seqFromList!5156 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443941)))) (fromListB!2353 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443941)))))))

(declare-fun bs!591595 () Bool)

(assert (= bs!591595 d!1203627))

(declare-fun m!4653365 () Bool)

(assert (=> bs!591595 m!4653365))

(assert (=> b!4050970 d!1203627))

(declare-fun bs!591596 () Bool)

(declare-fun d!1203629 () Bool)

(assert (= bs!591596 (and d!1203629 d!1203347)))

(declare-fun lambda!127516 () Int)

(assert (=> bs!591596 (= lambda!127516 lambda!127502)))

(declare-fun bs!591597 () Bool)

(assert (= bs!591597 (and d!1203629 d!1203349)))

(assert (=> bs!591597 (= (and (= (toChars!9350 (transformation!6939 (rule!10021 token!484))) (toChars!9350 (transformation!6939 (h!48724 rules!2999)))) (= (toValue!9491 (transformation!6939 (rule!10021 token!484))) (toValue!9491 (transformation!6939 (h!48724 rules!2999))))) (= lambda!127516 lambda!127505))))

(declare-fun bs!591598 () Bool)

(assert (= bs!591598 (and d!1203629 d!1203519)))

(assert (=> bs!591598 (= (and (= (toChars!9350 (transformation!6939 (rule!10021 token!484))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) (= (toValue!9491 (transformation!6939 (rule!10021 token!484))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))) (= lambda!127516 lambda!127512))))

(assert (=> d!1203629 true))

(assert (=> d!1203629 (< (dynLambda!18405 order!22691 (toChars!9350 (transformation!6939 (rule!10021 token!484)))) (dynLambda!18404 order!22689 lambda!127516))))

(assert (=> d!1203629 true))

(assert (=> d!1203629 (< (dynLambda!18403 order!22687 (toValue!9491 (transformation!6939 (rule!10021 token!484)))) (dynLambda!18404 order!22689 lambda!127516))))

(assert (=> d!1203629 (= (semiInverseModEq!2967 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (toValue!9491 (transformation!6939 (rule!10021 token!484)))) (Forall!1496 lambda!127516))))

(declare-fun bs!591599 () Bool)

(assert (= bs!591599 d!1203629))

(declare-fun m!4653367 () Bool)

(assert (=> bs!591599 m!4653367))

(assert (=> d!1202919 d!1203629))

(declare-fun bm!287893 () Bool)

(declare-fun call!287898 () Bool)

(assert (=> bm!287893 (= call!287898 (isEmpty!25846 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443941))))))))

(declare-fun b!4051775 () Bool)

(declare-fun e!2514029 () Bool)

(declare-fun e!2514027 () Bool)

(assert (=> b!4051775 (= e!2514029 e!2514027)))

(declare-fun res!1651377 () Bool)

(assert (=> b!4051775 (=> (not res!1651377) (not e!2514027))))

(declare-fun lt!1444277 () Bool)

(assert (=> b!4051775 (= res!1651377 (not lt!1444277))))

(declare-fun b!4051776 () Bool)

(declare-fun res!1651378 () Bool)

(declare-fun e!2514032 () Bool)

(assert (=> b!4051776 (=> res!1651378 e!2514032)))

(assert (=> b!4051776 (= res!1651378 (not (isEmpty!25846 (tail!6294 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443941))))))))))

(declare-fun d!1203631 () Bool)

(declare-fun e!2514028 () Bool)

(assert (=> d!1203631 e!2514028))

(declare-fun c!699930 () Bool)

(assert (=> d!1203631 (= c!699930 (is-EmptyExpr!11844 (regex!6939 (rule!10021 (_1!24322 (get!14207 lt!1443941))))))))

(declare-fun e!2514030 () Bool)

(assert (=> d!1203631 (= lt!1444277 e!2514030)))

(declare-fun c!699929 () Bool)

(assert (=> d!1203631 (= c!699929 (isEmpty!25846 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443941))))))))

(assert (=> d!1203631 (validRegex!5359 (regex!6939 (rule!10021 (_1!24322 (get!14207 lt!1443941)))))))

(assert (=> d!1203631 (= (matchR!5797 (regex!6939 (rule!10021 (_1!24322 (get!14207 lt!1443941)))) (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443941))))) lt!1444277)))

(declare-fun b!4051777 () Bool)

(declare-fun res!1651374 () Bool)

(declare-fun e!2514026 () Bool)

(assert (=> b!4051777 (=> (not res!1651374) (not e!2514026))))

(assert (=> b!4051777 (= res!1651374 (isEmpty!25846 (tail!6294 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443941)))))))))

(declare-fun b!4051778 () Bool)

(declare-fun e!2514031 () Bool)

(assert (=> b!4051778 (= e!2514031 (not lt!1444277))))

(declare-fun b!4051779 () Bool)

(assert (=> b!4051779 (= e!2514030 (matchR!5797 (derivativeStep!3564 (regex!6939 (rule!10021 (_1!24322 (get!14207 lt!1443941)))) (head!8562 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443941)))))) (tail!6294 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443941)))))))))

(declare-fun b!4051780 () Bool)

(declare-fun res!1651373 () Bool)

(assert (=> b!4051780 (=> res!1651373 e!2514029)))

(assert (=> b!4051780 (= res!1651373 e!2514026)))

(declare-fun res!1651375 () Bool)

(assert (=> b!4051780 (=> (not res!1651375) (not e!2514026))))

(assert (=> b!4051780 (= res!1651375 lt!1444277)))

(declare-fun b!4051781 () Bool)

(assert (=> b!4051781 (= e!2514028 (= lt!1444277 call!287898))))

(declare-fun b!4051782 () Bool)

(assert (=> b!4051782 (= e!2514026 (= (head!8562 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443941))))) (c!699689 (regex!6939 (rule!10021 (_1!24322 (get!14207 lt!1443941)))))))))

(declare-fun b!4051783 () Bool)

(assert (=> b!4051783 (= e!2514032 (not (= (head!8562 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443941))))) (c!699689 (regex!6939 (rule!10021 (_1!24322 (get!14207 lt!1443941))))))))))

(declare-fun b!4051784 () Bool)

(declare-fun res!1651372 () Bool)

(assert (=> b!4051784 (=> res!1651372 e!2514029)))

(assert (=> b!4051784 (= res!1651372 (not (is-ElementMatch!11844 (regex!6939 (rule!10021 (_1!24322 (get!14207 lt!1443941)))))))))

(assert (=> b!4051784 (= e!2514031 e!2514029)))

(declare-fun b!4051785 () Bool)

(assert (=> b!4051785 (= e!2514027 e!2514032)))

(declare-fun res!1651379 () Bool)

(assert (=> b!4051785 (=> res!1651379 e!2514032)))

(assert (=> b!4051785 (= res!1651379 call!287898)))

(declare-fun b!4051786 () Bool)

(assert (=> b!4051786 (= e!2514028 e!2514031)))

(declare-fun c!699931 () Bool)

(assert (=> b!4051786 (= c!699931 (is-EmptyLang!11844 (regex!6939 (rule!10021 (_1!24322 (get!14207 lt!1443941))))))))

(declare-fun b!4051787 () Bool)

(assert (=> b!4051787 (= e!2514030 (nullable!4159 (regex!6939 (rule!10021 (_1!24322 (get!14207 lt!1443941))))))))

(declare-fun b!4051788 () Bool)

(declare-fun res!1651376 () Bool)

(assert (=> b!4051788 (=> (not res!1651376) (not e!2514026))))

(assert (=> b!4051788 (= res!1651376 (not call!287898))))

(assert (= (and d!1203631 c!699929) b!4051787))

(assert (= (and d!1203631 (not c!699929)) b!4051779))

(assert (= (and d!1203631 c!699930) b!4051781))

(assert (= (and d!1203631 (not c!699930)) b!4051786))

(assert (= (and b!4051786 c!699931) b!4051778))

(assert (= (and b!4051786 (not c!699931)) b!4051784))

(assert (= (and b!4051784 (not res!1651372)) b!4051780))

(assert (= (and b!4051780 res!1651375) b!4051788))

(assert (= (and b!4051788 res!1651376) b!4051777))

(assert (= (and b!4051777 res!1651374) b!4051782))

(assert (= (and b!4051780 (not res!1651373)) b!4051775))

(assert (= (and b!4051775 res!1651377) b!4051785))

(assert (= (and b!4051785 (not res!1651379)) b!4051776))

(assert (= (and b!4051776 (not res!1651378)) b!4051783))

(assert (= (or b!4051781 b!4051788 b!4051785) bm!287893))

(assert (=> b!4051782 m!4652063))

(declare-fun m!4653369 () Bool)

(assert (=> b!4051782 m!4653369))

(assert (=> d!1203631 m!4652063))

(declare-fun m!4653371 () Bool)

(assert (=> d!1203631 m!4653371))

(declare-fun m!4653373 () Bool)

(assert (=> d!1203631 m!4653373))

(assert (=> b!4051779 m!4652063))

(assert (=> b!4051779 m!4653369))

(assert (=> b!4051779 m!4653369))

(declare-fun m!4653375 () Bool)

(assert (=> b!4051779 m!4653375))

(assert (=> b!4051779 m!4652063))

(declare-fun m!4653377 () Bool)

(assert (=> b!4051779 m!4653377))

(assert (=> b!4051779 m!4653375))

(assert (=> b!4051779 m!4653377))

(declare-fun m!4653379 () Bool)

(assert (=> b!4051779 m!4653379))

(assert (=> bm!287893 m!4652063))

(assert (=> bm!287893 m!4653371))

(assert (=> b!4051783 m!4652063))

(assert (=> b!4051783 m!4653369))

(assert (=> b!4051776 m!4652063))

(assert (=> b!4051776 m!4653377))

(assert (=> b!4051776 m!4653377))

(declare-fun m!4653381 () Bool)

(assert (=> b!4051776 m!4653381))

(assert (=> b!4051777 m!4652063))

(assert (=> b!4051777 m!4653377))

(assert (=> b!4051777 m!4653377))

(assert (=> b!4051777 m!4653381))

(declare-fun m!4653383 () Bool)

(assert (=> b!4051787 m!4653383))

(assert (=> b!4050963 d!1203631))

(assert (=> b!4050963 d!1203289))

(assert (=> b!4050963 d!1203285))

(assert (=> b!4050963 d!1203287))

(declare-fun bm!287894 () Bool)

(declare-fun call!287899 () Bool)

(assert (=> bm!287894 (= call!287899 (isEmpty!25846 (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) Nil!43302 (size!32375 Nil!43302) lt!1443605 lt!1443605 (size!32375 lt!1443605)))))))

(declare-fun b!4051789 () Bool)

(declare-fun e!2514036 () Bool)

(declare-fun e!2514034 () Bool)

(assert (=> b!4051789 (= e!2514036 e!2514034)))

(declare-fun res!1651385 () Bool)

(assert (=> b!4051789 (=> (not res!1651385) (not e!2514034))))

(declare-fun lt!1444278 () Bool)

(assert (=> b!4051789 (= res!1651385 (not lt!1444278))))

(declare-fun b!4051790 () Bool)

(declare-fun res!1651386 () Bool)

(declare-fun e!2514039 () Bool)

(assert (=> b!4051790 (=> res!1651386 e!2514039)))

(assert (=> b!4051790 (= res!1651386 (not (isEmpty!25846 (tail!6294 (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) Nil!43302 (size!32375 Nil!43302) lt!1443605 lt!1443605 (size!32375 lt!1443605)))))))))

(declare-fun d!1203633 () Bool)

(declare-fun e!2514035 () Bool)

(assert (=> d!1203633 e!2514035))

(declare-fun c!699933 () Bool)

(assert (=> d!1203633 (= c!699933 (is-EmptyExpr!11844 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))

(declare-fun e!2514037 () Bool)

(assert (=> d!1203633 (= lt!1444278 e!2514037)))

(declare-fun c!699932 () Bool)

(assert (=> d!1203633 (= c!699932 (isEmpty!25846 (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) Nil!43302 (size!32375 Nil!43302) lt!1443605 lt!1443605 (size!32375 lt!1443605)))))))

(assert (=> d!1203633 (validRegex!5359 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))

(assert (=> d!1203633 (= (matchR!5797 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) Nil!43302 (size!32375 Nil!43302) lt!1443605 lt!1443605 (size!32375 lt!1443605)))) lt!1444278)))

(declare-fun b!4051791 () Bool)

(declare-fun res!1651382 () Bool)

(declare-fun e!2514033 () Bool)

(assert (=> b!4051791 (=> (not res!1651382) (not e!2514033))))

(assert (=> b!4051791 (= res!1651382 (isEmpty!25846 (tail!6294 (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) Nil!43302 (size!32375 Nil!43302) lt!1443605 lt!1443605 (size!32375 lt!1443605))))))))

(declare-fun b!4051792 () Bool)

(declare-fun e!2514038 () Bool)

(assert (=> b!4051792 (= e!2514038 (not lt!1444278))))

(declare-fun b!4051793 () Bool)

(assert (=> b!4051793 (= e!2514037 (matchR!5797 (derivativeStep!3564 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (head!8562 (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) Nil!43302 (size!32375 Nil!43302) lt!1443605 lt!1443605 (size!32375 lt!1443605))))) (tail!6294 (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) Nil!43302 (size!32375 Nil!43302) lt!1443605 lt!1443605 (size!32375 lt!1443605))))))))

(declare-fun b!4051794 () Bool)

(declare-fun res!1651381 () Bool)

(assert (=> b!4051794 (=> res!1651381 e!2514036)))

(assert (=> b!4051794 (= res!1651381 e!2514033)))

(declare-fun res!1651383 () Bool)

(assert (=> b!4051794 (=> (not res!1651383) (not e!2514033))))

(assert (=> b!4051794 (= res!1651383 lt!1444278)))

(declare-fun b!4051795 () Bool)

(assert (=> b!4051795 (= e!2514035 (= lt!1444278 call!287899))))

(declare-fun b!4051796 () Bool)

(assert (=> b!4051796 (= e!2514033 (= (head!8562 (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) Nil!43302 (size!32375 Nil!43302) lt!1443605 lt!1443605 (size!32375 lt!1443605)))) (c!699689 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))))

(declare-fun b!4051797 () Bool)

(assert (=> b!4051797 (= e!2514039 (not (= (head!8562 (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) Nil!43302 (size!32375 Nil!43302) lt!1443605 lt!1443605 (size!32375 lt!1443605)))) (c!699689 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))))

(declare-fun b!4051798 () Bool)

(declare-fun res!1651380 () Bool)

(assert (=> b!4051798 (=> res!1651380 e!2514036)))

(assert (=> b!4051798 (= res!1651380 (not (is-ElementMatch!11844 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))))

(assert (=> b!4051798 (= e!2514038 e!2514036)))

(declare-fun b!4051799 () Bool)

(assert (=> b!4051799 (= e!2514034 e!2514039)))

(declare-fun res!1651387 () Bool)

(assert (=> b!4051799 (=> res!1651387 e!2514039)))

(assert (=> b!4051799 (= res!1651387 call!287899)))

(declare-fun b!4051800 () Bool)

(assert (=> b!4051800 (= e!2514035 e!2514038)))

(declare-fun c!699934 () Bool)

(assert (=> b!4051800 (= c!699934 (is-EmptyLang!11844 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))

(declare-fun b!4051801 () Bool)

(assert (=> b!4051801 (= e!2514037 (nullable!4159 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))

(declare-fun b!4051802 () Bool)

(declare-fun res!1651384 () Bool)

(assert (=> b!4051802 (=> (not res!1651384) (not e!2514033))))

(assert (=> b!4051802 (= res!1651384 (not call!287899))))

(assert (= (and d!1203633 c!699932) b!4051801))

(assert (= (and d!1203633 (not c!699932)) b!4051793))

(assert (= (and d!1203633 c!699933) b!4051795))

(assert (= (and d!1203633 (not c!699933)) b!4051800))

(assert (= (and b!4051800 c!699934) b!4051792))

(assert (= (and b!4051800 (not c!699934)) b!4051798))

(assert (= (and b!4051798 (not res!1651380)) b!4051794))

(assert (= (and b!4051794 res!1651383) b!4051802))

(assert (= (and b!4051802 res!1651384) b!4051791))

(assert (= (and b!4051791 res!1651382) b!4051796))

(assert (= (and b!4051794 (not res!1651381)) b!4051789))

(assert (= (and b!4051789 res!1651385) b!4051799))

(assert (= (and b!4051799 (not res!1651387)) b!4051790))

(assert (= (and b!4051790 (not res!1651386)) b!4051797))

(assert (= (or b!4051795 b!4051802 b!4051799) bm!287894))

(declare-fun m!4653385 () Bool)

(assert (=> b!4051796 m!4653385))

(assert (=> d!1203633 m!4651911))

(assert (=> d!1203633 m!4651757))

(assert (=> b!4051793 m!4653385))

(assert (=> b!4051793 m!4653385))

(declare-fun m!4653387 () Bool)

(assert (=> b!4051793 m!4653387))

(declare-fun m!4653389 () Bool)

(assert (=> b!4051793 m!4653389))

(assert (=> b!4051793 m!4653387))

(assert (=> b!4051793 m!4653389))

(declare-fun m!4653391 () Bool)

(assert (=> b!4051793 m!4653391))

(assert (=> bm!287894 m!4651911))

(assert (=> b!4051797 m!4653385))

(assert (=> b!4051790 m!4653389))

(assert (=> b!4051790 m!4653389))

(declare-fun m!4653393 () Bool)

(assert (=> b!4051790 m!4653393))

(assert (=> b!4051791 m!4653389))

(assert (=> b!4051791 m!4653389))

(assert (=> b!4051791 m!4653393))

(assert (=> b!4051801 m!4651767))

(assert (=> b!4050842 d!1203633))

(declare-fun b!4051803 () Bool)

(declare-fun e!2514044 () tuple2!42380)

(declare-fun call!287906 () tuple2!42380)

(assert (=> b!4051803 (= e!2514044 call!287906)))

(declare-fun b!4051804 () Bool)

(declare-fun c!699937 () Bool)

(declare-fun call!287903 () Bool)

(assert (=> b!4051804 (= c!699937 call!287903)))

(declare-fun lt!1444291 () Unit!62585)

(declare-fun lt!1444281 () Unit!62585)

(assert (=> b!4051804 (= lt!1444291 lt!1444281)))

(declare-fun lt!1444285 () C!23874)

(declare-fun lt!1444301 () List!43426)

(assert (=> b!4051804 (= (++!11341 (++!11341 Nil!43302 (Cons!43302 lt!1444285 Nil!43302)) lt!1444301) lt!1443605)))

(assert (=> b!4051804 (= lt!1444281 (lemmaMoveElementToOtherListKeepsConcatEq!1260 Nil!43302 lt!1444285 lt!1444301 lt!1443605))))

(assert (=> b!4051804 (= lt!1444301 (tail!6294 lt!1443605))))

(assert (=> b!4051804 (= lt!1444285 (head!8562 lt!1443605))))

(declare-fun lt!1444280 () Unit!62585)

(declare-fun lt!1444302 () Unit!62585)

(assert (=> b!4051804 (= lt!1444280 lt!1444302)))

(assert (=> b!4051804 (isPrefix!4026 (++!11341 Nil!43302 (Cons!43302 (head!8562 (getSuffix!2443 lt!1443605 Nil!43302)) Nil!43302)) lt!1443605)))

(assert (=> b!4051804 (= lt!1444302 (lemmaAddHeadSuffixToPrefixStillPrefix!642 Nil!43302 lt!1443605))))

(declare-fun lt!1444297 () Unit!62585)

(declare-fun lt!1444287 () Unit!62585)

(assert (=> b!4051804 (= lt!1444297 lt!1444287)))

(assert (=> b!4051804 (= lt!1444287 (lemmaAddHeadSuffixToPrefixStillPrefix!642 Nil!43302 lt!1443605))))

(declare-fun lt!1444288 () List!43426)

(assert (=> b!4051804 (= lt!1444288 (++!11341 Nil!43302 (Cons!43302 (head!8562 lt!1443605) Nil!43302)))))

(declare-fun lt!1444282 () Unit!62585)

(declare-fun e!2514040 () Unit!62585)

(assert (=> b!4051804 (= lt!1444282 e!2514040)))

(declare-fun c!699935 () Bool)

(assert (=> b!4051804 (= c!699935 (= (size!32375 Nil!43302) (size!32375 lt!1443605)))))

(declare-fun lt!1444289 () Unit!62585)

(declare-fun lt!1444300 () Unit!62585)

(assert (=> b!4051804 (= lt!1444289 lt!1444300)))

(assert (=> b!4051804 (<= (size!32375 Nil!43302) (size!32375 lt!1443605))))

(assert (=> b!4051804 (= lt!1444300 (lemmaIsPrefixThenSmallerEqSize!450 Nil!43302 lt!1443605))))

(declare-fun e!2514045 () tuple2!42380)

(assert (=> b!4051804 (= e!2514045 e!2514044)))

(declare-fun d!1203635 () Bool)

(declare-fun e!2514042 () Bool)

(assert (=> d!1203635 e!2514042))

(declare-fun res!1651388 () Bool)

(assert (=> d!1203635 (=> (not res!1651388) (not e!2514042))))

(declare-fun lt!1444298 () tuple2!42380)

(assert (=> d!1203635 (= res!1651388 (= (++!11341 (_1!24324 lt!1444298) (_2!24324 lt!1444298)) lt!1443605))))

(declare-fun e!2514047 () tuple2!42380)

(assert (=> d!1203635 (= lt!1444298 e!2514047)))

(declare-fun c!699939 () Bool)

(assert (=> d!1203635 (= c!699939 (lostCause!1016 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))

(declare-fun lt!1444296 () Unit!62585)

(declare-fun Unit!62610 () Unit!62585)

(assert (=> d!1203635 (= lt!1444296 Unit!62610)))

(assert (=> d!1203635 (= (getSuffix!2443 lt!1443605 Nil!43302) lt!1443605)))

(declare-fun lt!1444305 () Unit!62585)

(declare-fun lt!1444286 () Unit!62585)

(assert (=> d!1203635 (= lt!1444305 lt!1444286)))

(declare-fun lt!1444293 () List!43426)

(assert (=> d!1203635 (= lt!1443605 lt!1444293)))

(assert (=> d!1203635 (= lt!1444286 (lemmaSamePrefixThenSameSuffix!2187 Nil!43302 lt!1443605 Nil!43302 lt!1444293 lt!1443605))))

(assert (=> d!1203635 (= lt!1444293 (getSuffix!2443 lt!1443605 Nil!43302))))

(declare-fun lt!1444284 () Unit!62585)

(declare-fun lt!1444306 () Unit!62585)

(assert (=> d!1203635 (= lt!1444284 lt!1444306)))

(assert (=> d!1203635 (isPrefix!4026 Nil!43302 (++!11341 Nil!43302 lt!1443605))))

(assert (=> d!1203635 (= lt!1444306 (lemmaConcatTwoListThenFirstIsPrefix!2861 Nil!43302 lt!1443605))))

(assert (=> d!1203635 (validRegex!5359 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))

(assert (=> d!1203635 (= (findLongestMatchInner!1396 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) Nil!43302 (size!32375 Nil!43302) lt!1443605 lt!1443605 (size!32375 lt!1443605)) lt!1444298)))

(declare-fun bm!287895 () Bool)

(declare-fun call!287902 () Regex!11844)

(declare-fun call!287905 () List!43426)

(assert (=> bm!287895 (= call!287906 (findLongestMatchInner!1396 call!287902 lt!1444288 (+ (size!32375 Nil!43302) 1) call!287905 lt!1443605 (size!32375 lt!1443605)))))

(declare-fun b!4051805 () Bool)

(declare-fun c!699940 () Bool)

(assert (=> b!4051805 (= c!699940 call!287903)))

(declare-fun lt!1444295 () Unit!62585)

(declare-fun lt!1444303 () Unit!62585)

(assert (=> b!4051805 (= lt!1444295 lt!1444303)))

(assert (=> b!4051805 (= lt!1443605 Nil!43302)))

(declare-fun call!287904 () Unit!62585)

(assert (=> b!4051805 (= lt!1444303 call!287904)))

(declare-fun lt!1444292 () Unit!62585)

(declare-fun lt!1444299 () Unit!62585)

(assert (=> b!4051805 (= lt!1444292 lt!1444299)))

(declare-fun call!287907 () Bool)

(assert (=> b!4051805 call!287907))

(declare-fun call!287900 () Unit!62585)

(assert (=> b!4051805 (= lt!1444299 call!287900)))

(declare-fun e!2514046 () tuple2!42380)

(assert (=> b!4051805 (= e!2514045 e!2514046)))

(declare-fun bm!287896 () Bool)

(assert (=> bm!287896 (= call!287903 (nullable!4159 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))

(declare-fun b!4051806 () Bool)

(declare-fun Unit!62612 () Unit!62585)

(assert (=> b!4051806 (= e!2514040 Unit!62612)))

(declare-fun bm!287897 () Bool)

(assert (=> bm!287897 (= call!287905 (tail!6294 lt!1443605))))

(declare-fun b!4051807 () Bool)

(declare-fun e!2514041 () tuple2!42380)

(declare-fun lt!1444290 () tuple2!42380)

(assert (=> b!4051807 (= e!2514041 lt!1444290)))

(declare-fun b!4051808 () Bool)

(assert (=> b!4051808 (= e!2514047 (tuple2!42381 Nil!43302 lt!1443605))))

(declare-fun b!4051809 () Bool)

(assert (=> b!4051809 (= e!2514047 e!2514045)))

(declare-fun c!699938 () Bool)

(assert (=> b!4051809 (= c!699938 (= (size!32375 Nil!43302) (size!32375 lt!1443605)))))

(declare-fun bm!287898 () Bool)

(assert (=> bm!287898 (= call!287907 (isPrefix!4026 lt!1443605 lt!1443605))))

(declare-fun b!4051810 () Bool)

(declare-fun Unit!62613 () Unit!62585)

(assert (=> b!4051810 (= e!2514040 Unit!62613)))

(declare-fun lt!1444294 () Unit!62585)

(assert (=> b!4051810 (= lt!1444294 call!287900)))

(assert (=> b!4051810 call!287907))

(declare-fun lt!1444283 () Unit!62585)

(assert (=> b!4051810 (= lt!1444283 lt!1444294)))

(declare-fun lt!1444279 () Unit!62585)

(assert (=> b!4051810 (= lt!1444279 call!287904)))

(assert (=> b!4051810 (= lt!1443605 Nil!43302)))

(declare-fun lt!1444304 () Unit!62585)

(assert (=> b!4051810 (= lt!1444304 lt!1444279)))

(assert (=> b!4051810 false))

(declare-fun b!4051811 () Bool)

(assert (=> b!4051811 (= e!2514046 (tuple2!42381 Nil!43302 lt!1443605))))

(declare-fun b!4051812 () Bool)

(assert (=> b!4051812 (= e!2514044 e!2514041)))

(assert (=> b!4051812 (= lt!1444290 call!287906)))

(declare-fun c!699936 () Bool)

(assert (=> b!4051812 (= c!699936 (isEmpty!25846 (_1!24324 lt!1444290)))))

(declare-fun b!4051813 () Bool)

(declare-fun e!2514043 () Bool)

(assert (=> b!4051813 (= e!2514043 (>= (size!32375 (_1!24324 lt!1444298)) (size!32375 Nil!43302)))))

(declare-fun bm!287899 () Bool)

(declare-fun call!287901 () C!23874)

(assert (=> bm!287899 (= call!287901 (head!8562 lt!1443605))))

(declare-fun b!4051814 () Bool)

(assert (=> b!4051814 (= e!2514046 (tuple2!42381 Nil!43302 Nil!43302))))

(declare-fun b!4051815 () Bool)

(assert (=> b!4051815 (= e!2514042 e!2514043)))

(declare-fun res!1651389 () Bool)

(assert (=> b!4051815 (=> res!1651389 e!2514043)))

(assert (=> b!4051815 (= res!1651389 (isEmpty!25846 (_1!24324 lt!1444298)))))

(declare-fun bm!287900 () Bool)

(assert (=> bm!287900 (= call!287900 (lemmaIsPrefixRefl!2593 lt!1443605 lt!1443605))))

(declare-fun bm!287901 () Bool)

(assert (=> bm!287901 (= call!287902 (derivativeStep!3564 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) call!287901))))

(declare-fun bm!287902 () Bool)

(assert (=> bm!287902 (= call!287904 (lemmaIsPrefixSameLengthThenSameList!926 lt!1443605 Nil!43302 lt!1443605))))

(declare-fun b!4051816 () Bool)

(assert (=> b!4051816 (= e!2514041 (tuple2!42381 Nil!43302 lt!1443605))))

(assert (= (and d!1203635 c!699939) b!4051808))

(assert (= (and d!1203635 (not c!699939)) b!4051809))

(assert (= (and b!4051809 c!699938) b!4051805))

(assert (= (and b!4051809 (not c!699938)) b!4051804))

(assert (= (and b!4051805 c!699940) b!4051814))

(assert (= (and b!4051805 (not c!699940)) b!4051811))

(assert (= (and b!4051804 c!699935) b!4051810))

(assert (= (and b!4051804 (not c!699935)) b!4051806))

(assert (= (and b!4051804 c!699937) b!4051812))

(assert (= (and b!4051804 (not c!699937)) b!4051803))

(assert (= (and b!4051812 c!699936) b!4051816))

(assert (= (and b!4051812 (not c!699936)) b!4051807))

(assert (= (or b!4051812 b!4051803) bm!287899))

(assert (= (or b!4051812 b!4051803) bm!287897))

(assert (= (or b!4051812 b!4051803) bm!287901))

(assert (= (or b!4051812 b!4051803) bm!287895))

(assert (= (or b!4051805 b!4051810) bm!287898))

(assert (= (or b!4051805 b!4051804) bm!287896))

(assert (= (or b!4051805 b!4051810) bm!287902))

(assert (= (or b!4051805 b!4051810) bm!287900))

(assert (= (and d!1203635 res!1651388) b!4051815))

(assert (= (and b!4051815 (not res!1651389)) b!4051813))

(declare-fun m!4653395 () Bool)

(assert (=> b!4051813 m!4653395))

(assert (=> b!4051813 m!4651683))

(declare-fun m!4653397 () Bool)

(assert (=> d!1203635 m!4653397))

(declare-fun m!4653399 () Bool)

(assert (=> d!1203635 m!4653399))

(declare-fun m!4653401 () Bool)

(assert (=> d!1203635 m!4653401))

(declare-fun m!4653403 () Bool)

(assert (=> d!1203635 m!4653403))

(assert (=> d!1203635 m!4651757))

(declare-fun m!4653405 () Bool)

(assert (=> d!1203635 m!4653405))

(declare-fun m!4653407 () Bool)

(assert (=> d!1203635 m!4653407))

(assert (=> d!1203635 m!4653401))

(declare-fun m!4653409 () Bool)

(assert (=> d!1203635 m!4653409))

(declare-fun m!4653411 () Bool)

(assert (=> b!4051815 m!4653411))

(assert (=> bm!287898 m!4652335))

(assert (=> b!4051804 m!4653399))

(declare-fun m!4653413 () Bool)

(assert (=> b!4051804 m!4653413))

(declare-fun m!4653415 () Bool)

(assert (=> b!4051804 m!4653415))

(assert (=> b!4051804 m!4651683))

(assert (=> b!4051804 m!4652115))

(assert (=> b!4051804 m!4652119))

(declare-fun m!4653417 () Bool)

(assert (=> b!4051804 m!4653417))

(declare-fun m!4653419 () Bool)

(assert (=> b!4051804 m!4653419))

(declare-fun m!4653421 () Bool)

(assert (=> b!4051804 m!4653421))

(declare-fun m!4653423 () Bool)

(assert (=> b!4051804 m!4653423))

(assert (=> b!4051804 m!4653417))

(declare-fun m!4653425 () Bool)

(assert (=> b!4051804 m!4653425))

(declare-fun m!4653427 () Bool)

(assert (=> b!4051804 m!4653427))

(assert (=> b!4051804 m!4653399))

(assert (=> b!4051804 m!4653421))

(declare-fun m!4653429 () Bool)

(assert (=> b!4051804 m!4653429))

(assert (=> b!4051804 m!4651897))

(assert (=> bm!287896 m!4651767))

(declare-fun m!4653431 () Bool)

(assert (=> bm!287901 m!4653431))

(assert (=> bm!287899 m!4652119))

(assert (=> bm!287897 m!4652115))

(declare-fun m!4653433 () Bool)

(assert (=> bm!287902 m!4653433))

(assert (=> bm!287895 m!4651897))

(declare-fun m!4653435 () Bool)

(assert (=> bm!287895 m!4653435))

(declare-fun m!4653437 () Bool)

(assert (=> b!4051812 m!4653437))

(assert (=> bm!287900 m!4652337))

(assert (=> b!4050842 d!1203635))

(assert (=> b!4050842 d!1203317))

(assert (=> b!4050842 d!1203361))

(declare-fun b!4051818 () Bool)

(declare-fun e!2514049 () List!43426)

(assert (=> b!4051818 (= e!2514049 (Cons!43302 (h!48722 (t!335877 lt!1443625)) (++!11341 (t!335877 (t!335877 lt!1443625)) (_2!24322 (v!39762 lt!1443644)))))))

(declare-fun b!4051817 () Bool)

(assert (=> b!4051817 (= e!2514049 (_2!24322 (v!39762 lt!1443644)))))

(declare-fun d!1203637 () Bool)

(declare-fun e!2514048 () Bool)

(assert (=> d!1203637 e!2514048))

(declare-fun res!1651391 () Bool)

(assert (=> d!1203637 (=> (not res!1651391) (not e!2514048))))

(declare-fun lt!1444307 () List!43426)

(assert (=> d!1203637 (= res!1651391 (= (content!6596 lt!1444307) (set.union (content!6596 (t!335877 lt!1443625)) (content!6596 (_2!24322 (v!39762 lt!1443644))))))))

(assert (=> d!1203637 (= lt!1444307 e!2514049)))

(declare-fun c!699941 () Bool)

(assert (=> d!1203637 (= c!699941 (is-Nil!43302 (t!335877 lt!1443625)))))

(assert (=> d!1203637 (= (++!11341 (t!335877 lt!1443625) (_2!24322 (v!39762 lt!1443644))) lt!1444307)))

(declare-fun b!4051819 () Bool)

(declare-fun res!1651390 () Bool)

(assert (=> b!4051819 (=> (not res!1651390) (not e!2514048))))

(assert (=> b!4051819 (= res!1651390 (= (size!32375 lt!1444307) (+ (size!32375 (t!335877 lt!1443625)) (size!32375 (_2!24322 (v!39762 lt!1443644))))))))

(declare-fun b!4051820 () Bool)

(assert (=> b!4051820 (= e!2514048 (or (not (= (_2!24322 (v!39762 lt!1443644)) Nil!43302)) (= lt!1444307 (t!335877 lt!1443625))))))

(assert (= (and d!1203637 c!699941) b!4051817))

(assert (= (and d!1203637 (not c!699941)) b!4051818))

(assert (= (and d!1203637 res!1651391) b!4051819))

(assert (= (and b!4051819 res!1651390) b!4051820))

(declare-fun m!4653439 () Bool)

(assert (=> b!4051818 m!4653439))

(declare-fun m!4653441 () Bool)

(assert (=> d!1203637 m!4653441))

(assert (=> d!1203637 m!4652887))

(assert (=> d!1203637 m!4651835))

(declare-fun m!4653443 () Bool)

(assert (=> b!4051819 m!4653443))

(assert (=> b!4051819 m!4651857))

(assert (=> b!4051819 m!4651839))

(assert (=> b!4050809 d!1203637))

(declare-fun d!1203639 () Bool)

(declare-fun lt!1444308 () Int)

(assert (=> d!1203639 (>= lt!1444308 0)))

(declare-fun e!2514050 () Int)

(assert (=> d!1203639 (= lt!1444308 e!2514050)))

(declare-fun c!699942 () Bool)

(assert (=> d!1203639 (= c!699942 (is-Nil!43302 lt!1443970))))

(assert (=> d!1203639 (= (size!32375 lt!1443970) lt!1444308)))

(declare-fun b!4051821 () Bool)

(assert (=> b!4051821 (= e!2514050 0)))

(declare-fun b!4051822 () Bool)

(assert (=> b!4051822 (= e!2514050 (+ 1 (size!32375 (t!335877 lt!1443970))))))

(assert (= (and d!1203639 c!699942) b!4051821))

(assert (= (and d!1203639 (not c!699942)) b!4051822))

(declare-fun m!4653445 () Bool)

(assert (=> b!4051822 m!4653445))

(assert (=> b!4051027 d!1203639))

(assert (=> b!4051027 d!1203547))

(assert (=> b!4051027 d!1203097))

(declare-fun d!1203641 () Bool)

(assert (=> d!1203641 (= (inv!57892 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (value!218397 (_1!24322 (v!39762 lt!1443644))))) (isBalanced!3686 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (value!218397 (_1!24322 (v!39762 lt!1443644)))))))))

(declare-fun bs!591600 () Bool)

(assert (= bs!591600 d!1203641))

(declare-fun m!4653447 () Bool)

(assert (=> bs!591600 m!4653447))

(assert (=> tb!243693 d!1203641))

(declare-fun d!1203643 () Bool)

(declare-fun charsToInt!0 (List!43427) (_ BitVec 32))

(assert (=> d!1203643 (= (inv!16 (value!218397 token!484)) (= (charsToInt!0 (text!50630 (value!218397 token!484))) (value!218388 (value!218397 token!484))))))

(declare-fun bs!591601 () Bool)

(assert (= bs!591601 d!1203643))

(declare-fun m!4653449 () Bool)

(assert (=> bs!591601 m!4653449))

(assert (=> b!4050880 d!1203643))

(declare-fun b!4051824 () Bool)

(declare-fun e!2514052 () List!43426)

(assert (=> b!4051824 (= e!2514052 (Cons!43302 (h!48722 (t!335877 prefix!494)) (++!11341 (t!335877 (t!335877 prefix!494)) newSuffix!27)))))

(declare-fun b!4051823 () Bool)

(assert (=> b!4051823 (= e!2514052 newSuffix!27)))

(declare-fun d!1203645 () Bool)

(declare-fun e!2514051 () Bool)

(assert (=> d!1203645 e!2514051))

(declare-fun res!1651393 () Bool)

(assert (=> d!1203645 (=> (not res!1651393) (not e!2514051))))

(declare-fun lt!1444309 () List!43426)

(assert (=> d!1203645 (= res!1651393 (= (content!6596 lt!1444309) (set.union (content!6596 (t!335877 prefix!494)) (content!6596 newSuffix!27))))))

(assert (=> d!1203645 (= lt!1444309 e!2514052)))

(declare-fun c!699943 () Bool)

(assert (=> d!1203645 (= c!699943 (is-Nil!43302 (t!335877 prefix!494)))))

(assert (=> d!1203645 (= (++!11341 (t!335877 prefix!494) newSuffix!27) lt!1444309)))

(declare-fun b!4051825 () Bool)

(declare-fun res!1651392 () Bool)

(assert (=> b!4051825 (=> (not res!1651392) (not e!2514051))))

(assert (=> b!4051825 (= res!1651392 (= (size!32375 lt!1444309) (+ (size!32375 (t!335877 prefix!494)) (size!32375 newSuffix!27))))))

(declare-fun b!4051826 () Bool)

(assert (=> b!4051826 (= e!2514051 (or (not (= newSuffix!27 Nil!43302)) (= lt!1444309 (t!335877 prefix!494))))))

(assert (= (and d!1203645 c!699943) b!4051823))

(assert (= (and d!1203645 (not c!699943)) b!4051824))

(assert (= (and d!1203645 res!1651393) b!4051825))

(assert (= (and b!4051825 res!1651392) b!4051826))

(declare-fun m!4653451 () Bool)

(assert (=> b!4051824 m!4653451))

(declare-fun m!4653453 () Bool)

(assert (=> d!1203645 m!4653453))

(assert (=> d!1203645 m!4652959))

(assert (=> d!1203645 m!4652101))

(declare-fun m!4653455 () Bool)

(assert (=> b!4051825 m!4653455))

(assert (=> b!4051825 m!4652231))

(assert (=> b!4051825 m!4651239))

(assert (=> b!4051030 d!1203645))

(declare-fun d!1203647 () Bool)

(assert (=> d!1203647 (= (isEmpty!25846 (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) Nil!43302 (size!32375 Nil!43302) lt!1443605 lt!1443605 (size!32375 lt!1443605)))) (is-Nil!43302 (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) Nil!43302 (size!32375 Nil!43302) lt!1443605 lt!1443605 (size!32375 lt!1443605)))))))

(assert (=> b!4050834 d!1203647))

(declare-fun d!1203649 () Bool)

(assert (=> d!1203649 (= (apply!10128 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (seqFromList!5156 (_1!24324 lt!1443904))) (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (seqFromList!5156 (_1!24324 lt!1443904))))))

(declare-fun b_lambda!118417 () Bool)

(assert (=> (not b_lambda!118417) (not d!1203649)))

(declare-fun t!335983 () Bool)

(declare-fun tb!243777 () Bool)

(assert (=> (and b!4050453 (= (toValue!9491 (transformation!6939 (rule!10021 token!484))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) t!335983) tb!243777))

(declare-fun result!295406 () Bool)

(assert (=> tb!243777 (= result!295406 (inv!21 (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (seqFromList!5156 (_1!24324 lt!1443904)))))))

(declare-fun m!4653457 () Bool)

(assert (=> tb!243777 m!4653457))

(assert (=> d!1203649 t!335983))

(declare-fun b_and!311585 () Bool)

(assert (= b_and!311579 (and (=> t!335983 result!295406) b_and!311585)))

(declare-fun tb!243779 () Bool)

(declare-fun t!335985 () Bool)

(assert (=> (and b!4050449 (= (toValue!9491 (transformation!6939 (h!48724 rules!2999))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) t!335985) tb!243779))

(declare-fun result!295408 () Bool)

(assert (= result!295408 result!295406))

(assert (=> d!1203649 t!335985))

(declare-fun b_and!311587 () Bool)

(assert (= b_and!311581 (and (=> t!335985 result!295408) b_and!311587)))

(declare-fun t!335987 () Bool)

(declare-fun tb!243781 () Bool)

(assert (=> (and b!4051134 (= (toValue!9491 (transformation!6939 (h!48724 (t!335879 rules!2999)))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) t!335987) tb!243781))

(declare-fun result!295410 () Bool)

(assert (= result!295410 result!295406))

(assert (=> d!1203649 t!335987))

(declare-fun b_and!311589 () Bool)

(assert (= b_and!311583 (and (=> t!335987 result!295410) b_and!311589)))

(assert (=> d!1203649 m!4651901))

(declare-fun m!4653459 () Bool)

(assert (=> d!1203649 m!4653459))

(assert (=> b!4050834 d!1203649))

(declare-fun d!1203651 () Bool)

(declare-fun lt!1444310 () Int)

(assert (=> d!1203651 (= lt!1444310 (size!32375 (list!16133 (seqFromList!5156 (_1!24324 lt!1443904)))))))

(assert (=> d!1203651 (= lt!1444310 (size!32381 (c!699688 (seqFromList!5156 (_1!24324 lt!1443904)))))))

(assert (=> d!1203651 (= (size!32379 (seqFromList!5156 (_1!24324 lt!1443904))) lt!1444310)))

(declare-fun bs!591602 () Bool)

(assert (= bs!591602 d!1203651))

(assert (=> bs!591602 m!4651901))

(declare-fun m!4653461 () Bool)

(assert (=> bs!591602 m!4653461))

(assert (=> bs!591602 m!4653461))

(declare-fun m!4653463 () Bool)

(assert (=> bs!591602 m!4653463))

(declare-fun m!4653465 () Bool)

(assert (=> bs!591602 m!4653465))

(assert (=> b!4050834 d!1203651))

(assert (=> b!4050834 d!1203635))

(declare-fun bs!591603 () Bool)

(declare-fun d!1203653 () Bool)

(assert (= bs!591603 (and d!1203653 d!1203347)))

(declare-fun lambda!127517 () Int)

(assert (=> bs!591603 (= (and (= (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (toChars!9350 (transformation!6939 (rule!10021 token!484)))) (= (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (toValue!9491 (transformation!6939 (rule!10021 token!484))))) (= lambda!127517 lambda!127502))))

(declare-fun bs!591604 () Bool)

(assert (= bs!591604 (and d!1203653 d!1203349)))

(assert (=> bs!591604 (= (and (= (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (toChars!9350 (transformation!6939 (h!48724 rules!2999)))) (= (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (toValue!9491 (transformation!6939 (h!48724 rules!2999))))) (= lambda!127517 lambda!127505))))

(declare-fun bs!591605 () Bool)

(assert (= bs!591605 (and d!1203653 d!1203519)))

(assert (=> bs!591605 (= lambda!127517 lambda!127512)))

(declare-fun bs!591606 () Bool)

(assert (= bs!591606 (and d!1203653 d!1203629)))

(assert (=> bs!591606 (= (and (= (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (toChars!9350 (transformation!6939 (rule!10021 token!484)))) (= (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (toValue!9491 (transformation!6939 (rule!10021 token!484))))) (= lambda!127517 lambda!127516))))

(declare-fun b!4051827 () Bool)

(declare-fun e!2514054 () Bool)

(assert (=> b!4051827 (= e!2514054 true)))

(assert (=> d!1203653 e!2514054))

(assert (= d!1203653 b!4051827))

(assert (=> b!4051827 (< (dynLambda!18403 order!22687 (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) (dynLambda!18404 order!22689 lambda!127517))))

(assert (=> b!4051827 (< (dynLambda!18405 order!22691 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) (dynLambda!18404 order!22689 lambda!127517))))

(assert (=> d!1203653 (= (list!16133 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (seqFromList!5156 (_1!24324 lt!1443904))))) (list!16133 (seqFromList!5156 (_1!24324 lt!1443904))))))

(declare-fun lt!1444311 () Unit!62585)

(assert (=> d!1203653 (= lt!1444311 (ForallOf!830 lambda!127517 (seqFromList!5156 (_1!24324 lt!1443904))))))

(assert (=> d!1203653 (= (lemmaSemiInverse!1918 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (seqFromList!5156 (_1!24324 lt!1443904))) lt!1444311)))

(declare-fun b_lambda!118419 () Bool)

(assert (=> (not b_lambda!118419) (not d!1203653)))

(declare-fun t!335989 () Bool)

(declare-fun tb!243783 () Bool)

(assert (=> (and b!4050453 (= (toChars!9350 (transformation!6939 (rule!10021 token!484))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) t!335989) tb!243783))

(declare-fun tp!1228536 () Bool)

(declare-fun e!2514055 () Bool)

(declare-fun b!4051828 () Bool)

(assert (=> b!4051828 (= e!2514055 (and (inv!57891 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (seqFromList!5156 (_1!24324 lt!1443904)))))) tp!1228536))))

(declare-fun result!295412 () Bool)

(assert (=> tb!243783 (= result!295412 (and (inv!57892 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (seqFromList!5156 (_1!24324 lt!1443904))))) e!2514055))))

(assert (= tb!243783 b!4051828))

(declare-fun m!4653467 () Bool)

(assert (=> b!4051828 m!4653467))

(declare-fun m!4653469 () Bool)

(assert (=> tb!243783 m!4653469))

(assert (=> d!1203653 t!335989))

(declare-fun b_and!311591 () Bool)

(assert (= b_and!311573 (and (=> t!335989 result!295412) b_and!311591)))

(declare-fun t!335991 () Bool)

(declare-fun tb!243785 () Bool)

(assert (=> (and b!4050449 (= (toChars!9350 (transformation!6939 (h!48724 rules!2999))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) t!335991) tb!243785))

(declare-fun result!295414 () Bool)

(assert (= result!295414 result!295412))

(assert (=> d!1203653 t!335991))

(declare-fun b_and!311593 () Bool)

(assert (= b_and!311575 (and (=> t!335991 result!295414) b_and!311593)))

(declare-fun tb!243787 () Bool)

(declare-fun t!335993 () Bool)

(assert (=> (and b!4051134 (= (toChars!9350 (transformation!6939 (h!48724 (t!335879 rules!2999)))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) t!335993) tb!243787))

(declare-fun result!295416 () Bool)

(assert (= result!295416 result!295412))

(assert (=> d!1203653 t!335993))

(declare-fun b_and!311595 () Bool)

(assert (= b_and!311577 (and (=> t!335993 result!295416) b_and!311595)))

(declare-fun b_lambda!118421 () Bool)

(assert (=> (not b_lambda!118421) (not d!1203653)))

(assert (=> d!1203653 t!335983))

(declare-fun b_and!311597 () Bool)

(assert (= b_and!311585 (and (=> t!335983 result!295406) b_and!311597)))

(assert (=> d!1203653 t!335985))

(declare-fun b_and!311599 () Bool)

(assert (= b_and!311587 (and (=> t!335985 result!295408) b_and!311599)))

(assert (=> d!1203653 t!335987))

(declare-fun b_and!311601 () Bool)

(assert (= b_and!311589 (and (=> t!335987 result!295410) b_and!311601)))

(assert (=> d!1203653 m!4651901))

(assert (=> d!1203653 m!4653459))

(assert (=> d!1203653 m!4653459))

(declare-fun m!4653471 () Bool)

(assert (=> d!1203653 m!4653471))

(assert (=> d!1203653 m!4651901))

(declare-fun m!4653473 () Bool)

(assert (=> d!1203653 m!4653473))

(assert (=> d!1203653 m!4653471))

(declare-fun m!4653475 () Bool)

(assert (=> d!1203653 m!4653475))

(assert (=> d!1203653 m!4651901))

(assert (=> d!1203653 m!4653461))

(assert (=> b!4050834 d!1203653))

(assert (=> b!4050834 d!1203361))

(declare-fun d!1203655 () Bool)

(assert (=> d!1203655 (= (seqFromList!5156 (_1!24324 lt!1443904)) (fromListB!2353 (_1!24324 lt!1443904)))))

(declare-fun bs!591607 () Bool)

(assert (= bs!591607 d!1203655))

(declare-fun m!4653477 () Bool)

(assert (=> bs!591607 m!4653477))

(assert (=> b!4050834 d!1203655))

(assert (=> b!4050834 d!1203317))

(declare-fun d!1203657 () Bool)

(declare-fun e!2514056 () Bool)

(assert (=> d!1203657 e!2514056))

(declare-fun res!1651394 () Bool)

(assert (=> d!1203657 (=> res!1651394 e!2514056)))

(assert (=> d!1203657 (= res!1651394 (isEmpty!25846 (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) Nil!43302 (size!32375 Nil!43302) lt!1443605 lt!1443605 (size!32375 lt!1443605)))))))

(declare-fun lt!1444312 () Unit!62585)

(assert (=> d!1203657 (= lt!1444312 (choose!24591 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) lt!1443605))))

(assert (=> d!1203657 (validRegex!5359 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))

(assert (=> d!1203657 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1369 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) lt!1443605) lt!1444312)))

(declare-fun b!4051829 () Bool)

(assert (=> b!4051829 (= e!2514056 (matchR!5797 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (_1!24324 (findLongestMatchInner!1396 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) Nil!43302 (size!32375 Nil!43302) lt!1443605 lt!1443605 (size!32375 lt!1443605)))))))

(assert (= (and d!1203657 (not res!1651394)) b!4051829))

(assert (=> d!1203657 m!4651897))

(assert (=> d!1203657 m!4651911))

(assert (=> d!1203657 m!4651683))

(assert (=> d!1203657 m!4651897))

(assert (=> d!1203657 m!4651899))

(assert (=> d!1203657 m!4651683))

(declare-fun m!4653479 () Bool)

(assert (=> d!1203657 m!4653479))

(assert (=> d!1203657 m!4651757))

(assert (=> b!4051829 m!4651683))

(assert (=> b!4051829 m!4651897))

(assert (=> b!4051829 m!4651683))

(assert (=> b!4051829 m!4651897))

(assert (=> b!4051829 m!4651899))

(assert (=> b!4051829 m!4651913))

(assert (=> b!4050834 d!1203657))

(declare-fun d!1203659 () Bool)

(declare-fun e!2514058 () Bool)

(assert (=> d!1203659 e!2514058))

(declare-fun res!1651398 () Bool)

(assert (=> d!1203659 (=> res!1651398 e!2514058)))

(declare-fun lt!1444313 () Bool)

(assert (=> d!1203659 (= res!1651398 (not lt!1444313))))

(declare-fun e!2514057 () Bool)

(assert (=> d!1203659 (= lt!1444313 e!2514057)))

(declare-fun res!1651396 () Bool)

(assert (=> d!1203659 (=> res!1651396 e!2514057)))

(assert (=> d!1203659 (= res!1651396 (is-Nil!43302 (tail!6294 prefix!494)))))

(assert (=> d!1203659 (= (isPrefix!4026 (tail!6294 prefix!494) (tail!6294 lt!1443629)) lt!1444313)))

(declare-fun b!4051832 () Bool)

(declare-fun e!2514059 () Bool)

(assert (=> b!4051832 (= e!2514059 (isPrefix!4026 (tail!6294 (tail!6294 prefix!494)) (tail!6294 (tail!6294 lt!1443629))))))

(declare-fun b!4051831 () Bool)

(declare-fun res!1651395 () Bool)

(assert (=> b!4051831 (=> (not res!1651395) (not e!2514059))))

(assert (=> b!4051831 (= res!1651395 (= (head!8562 (tail!6294 prefix!494)) (head!8562 (tail!6294 lt!1443629))))))

(declare-fun b!4051830 () Bool)

(assert (=> b!4051830 (= e!2514057 e!2514059)))

(declare-fun res!1651397 () Bool)

(assert (=> b!4051830 (=> (not res!1651397) (not e!2514059))))

(assert (=> b!4051830 (= res!1651397 (not (is-Nil!43302 (tail!6294 lt!1443629))))))

(declare-fun b!4051833 () Bool)

(assert (=> b!4051833 (= e!2514058 (>= (size!32375 (tail!6294 lt!1443629)) (size!32375 (tail!6294 prefix!494))))))

(assert (= (and d!1203659 (not res!1651396)) b!4051830))

(assert (= (and b!4051830 res!1651397) b!4051831))

(assert (= (and b!4051831 res!1651395) b!4051832))

(assert (= (and d!1203659 (not res!1651398)) b!4051833))

(assert (=> b!4051832 m!4652141))

(assert (=> b!4051832 m!4653211))

(assert (=> b!4051832 m!4651627))

(assert (=> b!4051832 m!4652987))

(assert (=> b!4051832 m!4653211))

(assert (=> b!4051832 m!4652987))

(declare-fun m!4653481 () Bool)

(assert (=> b!4051832 m!4653481))

(assert (=> b!4051831 m!4652141))

(assert (=> b!4051831 m!4653349))

(assert (=> b!4051831 m!4651627))

(assert (=> b!4051831 m!4652993))

(assert (=> b!4051833 m!4651627))

(assert (=> b!4051833 m!4652997))

(assert (=> b!4051833 m!4652141))

(assert (=> b!4051833 m!4653209))

(assert (=> b!4050993 d!1203659))

(assert (=> b!4050993 d!1203535))

(assert (=> b!4050993 d!1203413))

(declare-fun d!1203661 () Bool)

(declare-fun c!699944 () Bool)

(assert (=> d!1203661 (= c!699944 (is-Nil!43302 lt!1443888))))

(declare-fun e!2514060 () (Set C!23874))

(assert (=> d!1203661 (= (content!6596 lt!1443888) e!2514060)))

(declare-fun b!4051834 () Bool)

(assert (=> b!4051834 (= e!2514060 (as set.empty (Set C!23874)))))

(declare-fun b!4051835 () Bool)

(assert (=> b!4051835 (= e!2514060 (set.union (set.insert (h!48722 lt!1443888) (as set.empty (Set C!23874))) (content!6596 (t!335877 lt!1443888))))))

(assert (= (and d!1203661 c!699944) b!4051834))

(assert (= (and d!1203661 (not c!699944)) b!4051835))

(declare-fun m!4653483 () Bool)

(assert (=> b!4051835 m!4653483))

(declare-fun m!4653485 () Bool)

(assert (=> b!4051835 m!4653485))

(assert (=> d!1202981 d!1203661))

(assert (=> d!1202981 d!1203329))

(declare-fun d!1203663 () Bool)

(declare-fun c!699945 () Bool)

(assert (=> d!1203663 (= c!699945 (is-Nil!43302 (_2!24322 (v!39762 lt!1443644))))))

(declare-fun e!2514061 () (Set C!23874))

(assert (=> d!1203663 (= (content!6596 (_2!24322 (v!39762 lt!1443644))) e!2514061)))

(declare-fun b!4051836 () Bool)

(assert (=> b!4051836 (= e!2514061 (as set.empty (Set C!23874)))))

(declare-fun b!4051837 () Bool)

(assert (=> b!4051837 (= e!2514061 (set.union (set.insert (h!48722 (_2!24322 (v!39762 lt!1443644))) (as set.empty (Set C!23874))) (content!6596 (t!335877 (_2!24322 (v!39762 lt!1443644))))))))

(assert (= (and d!1203663 c!699945) b!4051836))

(assert (= (and d!1203663 (not c!699945)) b!4051837))

(declare-fun m!4653487 () Bool)

(assert (=> b!4051837 m!4653487))

(declare-fun m!4653489 () Bool)

(assert (=> b!4051837 m!4653489))

(assert (=> d!1202981 d!1203663))

(assert (=> d!1203093 d!1203091))

(declare-fun d!1203665 () Bool)

(assert (=> d!1203665 (isPrefix!4026 lt!1443622 prefix!494)))

(assert (=> d!1203665 true))

(declare-fun _$69!307 () Unit!62585)

(assert (=> d!1203665 (= (choose!24581 prefix!494 lt!1443622 lt!1443629) _$69!307)))

(declare-fun bs!591608 () Bool)

(assert (= bs!591608 d!1203665))

(assert (=> bs!591608 m!4651377))

(assert (=> d!1203093 d!1203665))

(assert (=> d!1203093 d!1203077))

(declare-fun bs!591609 () Bool)

(declare-fun d!1203667 () Bool)

(assert (= bs!591609 (and d!1203667 d!1203623)))

(declare-fun lambda!127518 () Int)

(assert (=> bs!591609 (= (= (toValue!9491 (transformation!6939 (rule!10021 token!484))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) (= lambda!127518 lambda!127515))))

(assert (=> d!1203667 true))

(assert (=> d!1203667 (< (dynLambda!18403 order!22687 (toValue!9491 (transformation!6939 (rule!10021 token!484)))) (dynLambda!18409 order!22693 lambda!127518))))

(assert (=> d!1203667 (= (equivClasses!2866 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (toValue!9491 (transformation!6939 (rule!10021 token!484)))) (Forall2!1096 lambda!127518))))

(declare-fun bs!591610 () Bool)

(assert (= bs!591610 d!1203667))

(declare-fun m!4653491 () Bool)

(assert (=> bs!591610 m!4653491))

(assert (=> b!4050601 d!1203667))

(declare-fun b!4051838 () Bool)

(declare-fun e!2514064 () Option!9353)

(declare-fun lt!1444316 () Option!9353)

(declare-fun lt!1444315 () Option!9353)

(assert (=> b!4051838 (= e!2514064 (ite (and (is-None!9352 lt!1444316) (is-None!9352 lt!1444315)) None!9352 (ite (is-None!9352 lt!1444315) lt!1444316 (ite (is-None!9352 lt!1444316) lt!1444315 (ite (>= (size!32376 (_1!24322 (v!39762 lt!1444316))) (size!32376 (_1!24322 (v!39762 lt!1444315)))) lt!1444316 lt!1444315)))))))

(declare-fun call!287908 () Option!9353)

(assert (=> b!4051838 (= lt!1444316 call!287908)))

(assert (=> b!4051838 (= lt!1444315 (maxPrefix!3826 thiss!21717 (t!335879 (t!335879 rules!2999)) lt!1443605))))

(declare-fun b!4051839 () Bool)

(declare-fun res!1651403 () Bool)

(declare-fun e!2514063 () Bool)

(assert (=> b!4051839 (=> (not res!1651403) (not e!2514063))))

(declare-fun lt!1444314 () Option!9353)

(assert (=> b!4051839 (= res!1651403 (matchR!5797 (regex!6939 (rule!10021 (_1!24322 (get!14207 lt!1444314)))) (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1444314))))))))

(declare-fun b!4051840 () Bool)

(assert (=> b!4051840 (= e!2514063 (contains!8611 (t!335879 rules!2999) (rule!10021 (_1!24322 (get!14207 lt!1444314)))))))

(declare-fun b!4051841 () Bool)

(declare-fun e!2514062 () Bool)

(assert (=> b!4051841 (= e!2514062 e!2514063)))

(declare-fun res!1651400 () Bool)

(assert (=> b!4051841 (=> (not res!1651400) (not e!2514063))))

(assert (=> b!4051841 (= res!1651400 (isDefined!7113 lt!1444314))))

(declare-fun b!4051842 () Bool)

(declare-fun res!1651404 () Bool)

(assert (=> b!4051842 (=> (not res!1651404) (not e!2514063))))

(assert (=> b!4051842 (= res!1651404 (= (++!11341 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1444314)))) (_2!24322 (get!14207 lt!1444314))) lt!1443605))))

(declare-fun b!4051844 () Bool)

(declare-fun res!1651401 () Bool)

(assert (=> b!4051844 (=> (not res!1651401) (not e!2514063))))

(assert (=> b!4051844 (= res!1651401 (< (size!32375 (_2!24322 (get!14207 lt!1444314))) (size!32375 lt!1443605)))))

(declare-fun bm!287903 () Bool)

(assert (=> bm!287903 (= call!287908 (maxPrefixOneRule!2838 thiss!21717 (h!48724 (t!335879 rules!2999)) lt!1443605))))

(declare-fun b!4051845 () Bool)

(assert (=> b!4051845 (= e!2514064 call!287908)))

(declare-fun b!4051846 () Bool)

(declare-fun res!1651405 () Bool)

(assert (=> b!4051846 (=> (not res!1651405) (not e!2514063))))

(assert (=> b!4051846 (= res!1651405 (= (value!218397 (_1!24322 (get!14207 lt!1444314))) (apply!10128 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1444314)))) (seqFromList!5156 (originalCharacters!7539 (_1!24322 (get!14207 lt!1444314)))))))))

(declare-fun b!4051843 () Bool)

(declare-fun res!1651399 () Bool)

(assert (=> b!4051843 (=> (not res!1651399) (not e!2514063))))

(assert (=> b!4051843 (= res!1651399 (= (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1444314)))) (originalCharacters!7539 (_1!24322 (get!14207 lt!1444314)))))))

(declare-fun d!1203669 () Bool)

(assert (=> d!1203669 e!2514062))

(declare-fun res!1651402 () Bool)

(assert (=> d!1203669 (=> res!1651402 e!2514062)))

(assert (=> d!1203669 (= res!1651402 (isEmpty!25847 lt!1444314))))

(assert (=> d!1203669 (= lt!1444314 e!2514064)))

(declare-fun c!699946 () Bool)

(assert (=> d!1203669 (= c!699946 (and (is-Cons!43304 (t!335879 rules!2999)) (is-Nil!43304 (t!335879 (t!335879 rules!2999)))))))

(declare-fun lt!1444318 () Unit!62585)

(declare-fun lt!1444317 () Unit!62585)

(assert (=> d!1203669 (= lt!1444318 lt!1444317)))

(assert (=> d!1203669 (isPrefix!4026 lt!1443605 lt!1443605)))

(assert (=> d!1203669 (= lt!1444317 (lemmaIsPrefixRefl!2593 lt!1443605 lt!1443605))))

(assert (=> d!1203669 (rulesValidInductive!2534 thiss!21717 (t!335879 rules!2999))))

(assert (=> d!1203669 (= (maxPrefix!3826 thiss!21717 (t!335879 rules!2999) lt!1443605) lt!1444314)))

(assert (= (and d!1203669 c!699946) b!4051845))

(assert (= (and d!1203669 (not c!699946)) b!4051838))

(assert (= (or b!4051845 b!4051838) bm!287903))

(assert (= (and d!1203669 (not res!1651402)) b!4051841))

(assert (= (and b!4051841 res!1651400) b!4051843))

(assert (= (and b!4051843 res!1651399) b!4051844))

(assert (= (and b!4051844 res!1651401) b!4051842))

(assert (= (and b!4051842 res!1651404) b!4051846))

(assert (= (and b!4051846 res!1651405) b!4051839))

(assert (= (and b!4051839 res!1651403) b!4051840))

(declare-fun m!4653493 () Bool)

(assert (=> b!4051839 m!4653493))

(declare-fun m!4653495 () Bool)

(assert (=> b!4051839 m!4653495))

(assert (=> b!4051839 m!4653495))

(declare-fun m!4653497 () Bool)

(assert (=> b!4051839 m!4653497))

(assert (=> b!4051839 m!4653497))

(declare-fun m!4653499 () Bool)

(assert (=> b!4051839 m!4653499))

(assert (=> b!4051844 m!4653493))

(declare-fun m!4653501 () Bool)

(assert (=> b!4051844 m!4653501))

(assert (=> b!4051844 m!4651897))

(assert (=> b!4051842 m!4653493))

(assert (=> b!4051842 m!4653495))

(assert (=> b!4051842 m!4653495))

(assert (=> b!4051842 m!4653497))

(assert (=> b!4051842 m!4653497))

(declare-fun m!4653503 () Bool)

(assert (=> b!4051842 m!4653503))

(assert (=> b!4051846 m!4653493))

(declare-fun m!4653505 () Bool)

(assert (=> b!4051846 m!4653505))

(assert (=> b!4051846 m!4653505))

(declare-fun m!4653507 () Bool)

(assert (=> b!4051846 m!4653507))

(declare-fun m!4653509 () Bool)

(assert (=> d!1203669 m!4653509))

(assert (=> d!1203669 m!4652335))

(assert (=> d!1203669 m!4652337))

(assert (=> d!1203669 m!4653085))

(declare-fun m!4653511 () Bool)

(assert (=> bm!287903 m!4653511))

(declare-fun m!4653513 () Bool)

(assert (=> b!4051841 m!4653513))

(assert (=> b!4051843 m!4653493))

(assert (=> b!4051843 m!4653495))

(assert (=> b!4051843 m!4653495))

(assert (=> b!4051843 m!4653497))

(declare-fun m!4653515 () Bool)

(assert (=> b!4051838 m!4653515))

(assert (=> b!4051840 m!4653493))

(declare-fun m!4653517 () Bool)

(assert (=> b!4051840 m!4653517))

(assert (=> b!4051086 d!1203669))

(assert (=> d!1203123 d!1203363))

(assert (=> d!1203123 d!1203577))

(declare-fun d!1203671 () Bool)

(declare-fun lt!1444319 () Int)

(assert (=> d!1203671 (>= lt!1444319 0)))

(declare-fun e!2514065 () Int)

(assert (=> d!1203671 (= lt!1444319 e!2514065)))

(declare-fun c!699947 () Bool)

(assert (=> d!1203671 (= c!699947 (is-Nil!43302 (_2!24322 (get!14207 lt!1443859))))))

(assert (=> d!1203671 (= (size!32375 (_2!24322 (get!14207 lt!1443859))) lt!1444319)))

(declare-fun b!4051847 () Bool)

(assert (=> b!4051847 (= e!2514065 0)))

(declare-fun b!4051848 () Bool)

(assert (=> b!4051848 (= e!2514065 (+ 1 (size!32375 (t!335877 (_2!24322 (get!14207 lt!1443859))))))))

(assert (= (and d!1203671 c!699947) b!4051847))

(assert (= (and d!1203671 (not c!699947)) b!4051848))

(declare-fun m!4653519 () Bool)

(assert (=> b!4051848 m!4653519))

(assert (=> b!4050698 d!1203671))

(assert (=> b!4050698 d!1203471))

(assert (=> b!4050698 d!1203319))

(declare-fun b!4051850 () Bool)

(declare-fun e!2514067 () List!43426)

(assert (=> b!4051850 (= e!2514067 (Cons!43302 (h!48722 (t!335877 lt!1443622)) (++!11341 (t!335877 (t!335877 lt!1443622)) suffixResult!105)))))

(declare-fun b!4051849 () Bool)

(assert (=> b!4051849 (= e!2514067 suffixResult!105)))

(declare-fun d!1203673 () Bool)

(declare-fun e!2514066 () Bool)

(assert (=> d!1203673 e!2514066))

(declare-fun res!1651407 () Bool)

(assert (=> d!1203673 (=> (not res!1651407) (not e!2514066))))

(declare-fun lt!1444320 () List!43426)

(assert (=> d!1203673 (= res!1651407 (= (content!6596 lt!1444320) (set.union (content!6596 (t!335877 lt!1443622)) (content!6596 suffixResult!105))))))

(assert (=> d!1203673 (= lt!1444320 e!2514067)))

(declare-fun c!699948 () Bool)

(assert (=> d!1203673 (= c!699948 (is-Nil!43302 (t!335877 lt!1443622)))))

(assert (=> d!1203673 (= (++!11341 (t!335877 lt!1443622) suffixResult!105) lt!1444320)))

(declare-fun b!4051851 () Bool)

(declare-fun res!1651406 () Bool)

(assert (=> b!4051851 (=> (not res!1651406) (not e!2514066))))

(assert (=> b!4051851 (= res!1651406 (= (size!32375 lt!1444320) (+ (size!32375 (t!335877 lt!1443622)) (size!32375 suffixResult!105))))))

(declare-fun b!4051852 () Bool)

(assert (=> b!4051852 (= e!2514066 (or (not (= suffixResult!105 Nil!43302)) (= lt!1444320 (t!335877 lt!1443622))))))

(assert (= (and d!1203673 c!699948) b!4051849))

(assert (= (and d!1203673 (not c!699948)) b!4051850))

(assert (= (and d!1203673 res!1651407) b!4051851))

(assert (= (and b!4051851 res!1651406) b!4051852))

(declare-fun m!4653521 () Bool)

(assert (=> b!4051850 m!4653521))

(declare-fun m!4653523 () Bool)

(assert (=> d!1203673 m!4653523))

(assert (=> d!1203673 m!4653067))

(assert (=> d!1203673 m!4651939))

(declare-fun m!4653525 () Bool)

(assert (=> b!4051851 m!4653525))

(assert (=> b!4051851 m!4652229))

(assert (=> b!4051851 m!4651943))

(assert (=> b!4050852 d!1203673))

(declare-fun d!1203675 () Bool)

(declare-fun nullableFct!1172 (Regex!11844) Bool)

(assert (=> d!1203675 (= (nullable!4159 (regex!6939 (rule!10021 token!484))) (nullableFct!1172 (regex!6939 (rule!10021 token!484))))))

(declare-fun bs!591611 () Bool)

(assert (= bs!591611 d!1203675))

(declare-fun m!4653527 () Bool)

(assert (=> bs!591611 m!4653527))

(assert (=> b!4051053 d!1203675))

(declare-fun d!1203677 () Bool)

(assert (=> d!1203677 (= (list!16133 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (value!218397 token!484))) (list!16135 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (value!218397 token!484)))))))

(declare-fun bs!591612 () Bool)

(assert (= bs!591612 d!1203677))

(declare-fun m!4653529 () Bool)

(assert (=> bs!591612 m!4653529))

(assert (=> b!4050721 d!1203677))

(declare-fun d!1203679 () Bool)

(declare-fun c!699951 () Bool)

(assert (=> d!1203679 (= c!699951 (is-Nil!43304 rules!2999))))

(declare-fun e!2514070 () (Set Rule!13678))

(assert (=> d!1203679 (= (content!6598 rules!2999) e!2514070)))

(declare-fun b!4051857 () Bool)

(assert (=> b!4051857 (= e!2514070 (as set.empty (Set Rule!13678)))))

(declare-fun b!4051858 () Bool)

(assert (=> b!4051858 (= e!2514070 (set.union (set.insert (h!48724 rules!2999) (as set.empty (Set Rule!13678))) (content!6598 (t!335879 rules!2999))))))

(assert (= (and d!1203679 c!699951) b!4051857))

(assert (= (and d!1203679 (not c!699951)) b!4051858))

(declare-fun m!4653531 () Bool)

(assert (=> b!4051858 m!4653531))

(declare-fun m!4653533 () Bool)

(assert (=> b!4051858 m!4653533))

(assert (=> d!1203151 d!1203679))

(declare-fun d!1203681 () Bool)

(assert (=> d!1203681 (= (++!11341 (++!11341 lt!1443622 lt!1443595) suffix!1299) (++!11341 lt!1443622 (++!11341 lt!1443595 suffix!1299)))))

(assert (=> d!1203681 true))

(declare-fun _$52!2335 () Unit!62585)

(assert (=> d!1203681 (= (choose!24582 lt!1443622 lt!1443595 suffix!1299) _$52!2335)))

(declare-fun bs!591613 () Bool)

(assert (= bs!591613 d!1203681))

(assert (=> bs!591613 m!4651373))

(assert (=> bs!591613 m!4651373))

(assert (=> bs!591613 m!4652211))

(assert (=> bs!591613 m!4651367))

(assert (=> bs!591613 m!4651367))

(assert (=> bs!591613 m!4652215))

(assert (=> d!1203107 d!1203681))

(declare-fun b!4051860 () Bool)

(declare-fun e!2514072 () List!43426)

(assert (=> b!4051860 (= e!2514072 (Cons!43302 (h!48722 lt!1443622) (++!11341 (t!335877 lt!1443622) (++!11341 lt!1443595 suffix!1299))))))

(declare-fun b!4051859 () Bool)

(assert (=> b!4051859 (= e!2514072 (++!11341 lt!1443595 suffix!1299))))

(declare-fun d!1203683 () Bool)

(declare-fun e!2514071 () Bool)

(assert (=> d!1203683 e!2514071))

(declare-fun res!1651409 () Bool)

(assert (=> d!1203683 (=> (not res!1651409) (not e!2514071))))

(declare-fun lt!1444321 () List!43426)

(assert (=> d!1203683 (= res!1651409 (= (content!6596 lt!1444321) (set.union (content!6596 lt!1443622) (content!6596 (++!11341 lt!1443595 suffix!1299)))))))

(assert (=> d!1203683 (= lt!1444321 e!2514072)))

(declare-fun c!699952 () Bool)

(assert (=> d!1203683 (= c!699952 (is-Nil!43302 lt!1443622))))

(assert (=> d!1203683 (= (++!11341 lt!1443622 (++!11341 lt!1443595 suffix!1299)) lt!1444321)))

(declare-fun b!4051861 () Bool)

(declare-fun res!1651408 () Bool)

(assert (=> b!4051861 (=> (not res!1651408) (not e!2514071))))

(assert (=> b!4051861 (= res!1651408 (= (size!32375 lt!1444321) (+ (size!32375 lt!1443622) (size!32375 (++!11341 lt!1443595 suffix!1299)))))))

(declare-fun b!4051862 () Bool)

(assert (=> b!4051862 (= e!2514071 (or (not (= (++!11341 lt!1443595 suffix!1299) Nil!43302)) (= lt!1444321 lt!1443622)))))

(assert (= (and d!1203683 c!699952) b!4051859))

(assert (= (and d!1203683 (not c!699952)) b!4051860))

(assert (= (and d!1203683 res!1651409) b!4051861))

(assert (= (and b!4051861 res!1651408) b!4051862))

(assert (=> b!4051860 m!4651367))

(declare-fun m!4653535 () Bool)

(assert (=> b!4051860 m!4653535))

(declare-fun m!4653537 () Bool)

(assert (=> d!1203683 m!4653537))

(assert (=> d!1203683 m!4651615))

(assert (=> d!1203683 m!4651367))

(declare-fun m!4653539 () Bool)

(assert (=> d!1203683 m!4653539))

(declare-fun m!4653541 () Bool)

(assert (=> b!4051861 m!4653541))

(assert (=> b!4051861 m!4651297))

(assert (=> b!4051861 m!4651367))

(declare-fun m!4653543 () Bool)

(assert (=> b!4051861 m!4653543))

(assert (=> d!1203107 d!1203683))

(declare-fun e!2514074 () List!43426)

(declare-fun b!4051864 () Bool)

(assert (=> b!4051864 (= e!2514074 (Cons!43302 (h!48722 (++!11341 lt!1443622 lt!1443595)) (++!11341 (t!335877 (++!11341 lt!1443622 lt!1443595)) suffix!1299)))))

(declare-fun b!4051863 () Bool)

(assert (=> b!4051863 (= e!2514074 suffix!1299)))

(declare-fun d!1203685 () Bool)

(declare-fun e!2514073 () Bool)

(assert (=> d!1203685 e!2514073))

(declare-fun res!1651411 () Bool)

(assert (=> d!1203685 (=> (not res!1651411) (not e!2514073))))

(declare-fun lt!1444322 () List!43426)

(assert (=> d!1203685 (= res!1651411 (= (content!6596 lt!1444322) (set.union (content!6596 (++!11341 lt!1443622 lt!1443595)) (content!6596 suffix!1299))))))

(assert (=> d!1203685 (= lt!1444322 e!2514074)))

(declare-fun c!699953 () Bool)

(assert (=> d!1203685 (= c!699953 (is-Nil!43302 (++!11341 lt!1443622 lt!1443595)))))

(assert (=> d!1203685 (= (++!11341 (++!11341 lt!1443622 lt!1443595) suffix!1299) lt!1444322)))

(declare-fun b!4051865 () Bool)

(declare-fun res!1651410 () Bool)

(assert (=> b!4051865 (=> (not res!1651410) (not e!2514073))))

(assert (=> b!4051865 (= res!1651410 (= (size!32375 lt!1444322) (+ (size!32375 (++!11341 lt!1443622 lt!1443595)) (size!32375 suffix!1299))))))

(declare-fun b!4051866 () Bool)

(assert (=> b!4051866 (= e!2514073 (or (not (= suffix!1299 Nil!43302)) (= lt!1444322 (++!11341 lt!1443622 lt!1443595))))))

(assert (= (and d!1203685 c!699953) b!4051863))

(assert (= (and d!1203685 (not c!699953)) b!4051864))

(assert (= (and d!1203685 res!1651411) b!4051865))

(assert (= (and b!4051865 res!1651410) b!4051866))

(declare-fun m!4653545 () Bool)

(assert (=> b!4051864 m!4653545))

(declare-fun m!4653547 () Bool)

(assert (=> d!1203685 m!4653547))

(assert (=> d!1203685 m!4651373))

(declare-fun m!4653549 () Bool)

(assert (=> d!1203685 m!4653549))

(assert (=> d!1203685 m!4652093))

(declare-fun m!4653551 () Bool)

(assert (=> b!4051865 m!4653551))

(assert (=> b!4051865 m!4651373))

(declare-fun m!4653553 () Bool)

(assert (=> b!4051865 m!4653553))

(assert (=> b!4051865 m!4651237))

(assert (=> d!1203107 d!1203685))

(assert (=> d!1203107 d!1203087))

(assert (=> d!1203107 d!1203105))

(declare-fun d!1203687 () Bool)

(declare-fun e!2514076 () Bool)

(assert (=> d!1203687 e!2514076))

(declare-fun res!1651415 () Bool)

(assert (=> d!1203687 (=> res!1651415 e!2514076)))

(declare-fun lt!1444323 () Bool)

(assert (=> d!1203687 (= res!1651415 (not lt!1444323))))

(declare-fun e!2514075 () Bool)

(assert (=> d!1203687 (= lt!1444323 e!2514075)))

(declare-fun res!1651413 () Bool)

(assert (=> d!1203687 (=> res!1651413 e!2514075)))

(assert (=> d!1203687 (= res!1651413 (is-Nil!43302 lt!1443625))))

(assert (=> d!1203687 (= (isPrefix!4026 lt!1443625 (++!11341 lt!1443625 (_2!24322 (v!39762 lt!1443644)))) lt!1444323)))

(declare-fun b!4051869 () Bool)

(declare-fun e!2514077 () Bool)

(assert (=> b!4051869 (= e!2514077 (isPrefix!4026 (tail!6294 lt!1443625) (tail!6294 (++!11341 lt!1443625 (_2!24322 (v!39762 lt!1443644))))))))

(declare-fun b!4051868 () Bool)

(declare-fun res!1651412 () Bool)

(assert (=> b!4051868 (=> (not res!1651412) (not e!2514077))))

(assert (=> b!4051868 (= res!1651412 (= (head!8562 lt!1443625) (head!8562 (++!11341 lt!1443625 (_2!24322 (v!39762 lt!1443644))))))))

(declare-fun b!4051867 () Bool)

(assert (=> b!4051867 (= e!2514075 e!2514077)))

(declare-fun res!1651414 () Bool)

(assert (=> b!4051867 (=> (not res!1651414) (not e!2514077))))

(assert (=> b!4051867 (= res!1651414 (not (is-Nil!43302 (++!11341 lt!1443625 (_2!24322 (v!39762 lt!1443644))))))))

(declare-fun b!4051870 () Bool)

(assert (=> b!4051870 (= e!2514076 (>= (size!32375 (++!11341 lt!1443625 (_2!24322 (v!39762 lt!1443644)))) (size!32375 lt!1443625)))))

(assert (= (and d!1203687 (not res!1651413)) b!4051867))

(assert (= (and b!4051867 res!1651414) b!4051868))

(assert (= (and b!4051868 res!1651412) b!4051869))

(assert (= (and d!1203687 (not res!1651415)) b!4051870))

(assert (=> b!4051869 m!4651761))

(assert (=> b!4051869 m!4651335))

(declare-fun m!4653555 () Bool)

(assert (=> b!4051869 m!4653555))

(assert (=> b!4051869 m!4651761))

(assert (=> b!4051869 m!4653555))

(declare-fun m!4653557 () Bool)

(assert (=> b!4051869 m!4653557))

(assert (=> b!4051868 m!4651753))

(assert (=> b!4051868 m!4651335))

(declare-fun m!4653559 () Bool)

(assert (=> b!4051868 m!4653559))

(assert (=> b!4051870 m!4651335))

(declare-fun m!4653561 () Bool)

(assert (=> b!4051870 m!4653561))

(assert (=> b!4051870 m!4651321))

(assert (=> d!1202999 d!1203687))

(assert (=> d!1202999 d!1202981))

(declare-fun d!1203689 () Bool)

(assert (=> d!1203689 (isPrefix!4026 lt!1443625 (++!11341 lt!1443625 (_2!24322 (v!39762 lt!1443644))))))

(assert (=> d!1203689 true))

(declare-fun _$46!1811 () Unit!62585)

(assert (=> d!1203689 (= (choose!24575 lt!1443625 (_2!24322 (v!39762 lt!1443644))) _$46!1811)))

(declare-fun bs!591614 () Bool)

(assert (= bs!591614 d!1203689))

(assert (=> bs!591614 m!4651335))

(assert (=> bs!591614 m!4651335))

(assert (=> bs!591614 m!4651869))

(assert (=> d!1202999 d!1203689))

(declare-fun d!1203691 () Bool)

(declare-fun lt!1444324 () Int)

(assert (=> d!1203691 (>= lt!1444324 0)))

(declare-fun e!2514078 () Int)

(assert (=> d!1203691 (= lt!1444324 e!2514078)))

(declare-fun c!699954 () Bool)

(assert (=> d!1203691 (= c!699954 (is-Nil!43302 lt!1443623))))

(assert (=> d!1203691 (= (size!32375 lt!1443623) lt!1444324)))

(declare-fun b!4051871 () Bool)

(assert (=> b!4051871 (= e!2514078 0)))

(declare-fun b!4051872 () Bool)

(assert (=> b!4051872 (= e!2514078 (+ 1 (size!32375 (t!335877 lt!1443623))))))

(assert (= (and d!1203691 c!699954) b!4051871))

(assert (= (and d!1203691 (not c!699954)) b!4051872))

(declare-fun m!4653563 () Bool)

(assert (=> b!4051872 m!4653563))

(assert (=> b!4051098 d!1203691))

(assert (=> b!4051098 d!1203115))

(assert (=> d!1202953 d!1202957))

(declare-fun d!1203693 () Bool)

(assert (=> d!1203693 (not (matchR!5797 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) lt!1443625))))

(assert (=> d!1203693 true))

(declare-fun _$57!126 () Unit!62585)

(assert (=> d!1203693 (= (choose!24577 thiss!21717 rules!2999 (rule!10021 token!484) lt!1443622 lt!1443629 lt!1443625 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) _$57!126)))

(declare-fun bs!591615 () Bool)

(assert (= bs!591615 d!1203693))

(assert (=> bs!591615 m!4651229))

(assert (=> d!1202953 d!1203693))

(assert (=> d!1202953 d!1203085))

(assert (=> b!4051094 d!1203311))

(declare-fun d!1203695 () Bool)

(assert (=> d!1203695 (= (apply!10128 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443996)))) (seqFromList!5156 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443996))))) (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443996))))) (seqFromList!5156 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443996))))))))

(declare-fun b_lambda!118423 () Bool)

(assert (=> (not b_lambda!118423) (not d!1203695)))

(declare-fun t!335995 () Bool)

(declare-fun tb!243789 () Bool)

(assert (=> (and b!4050453 (= (toValue!9491 (transformation!6939 (rule!10021 token!484))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443996)))))) t!335995) tb!243789))

(declare-fun result!295418 () Bool)

(assert (=> tb!243789 (= result!295418 (inv!21 (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443996))))) (seqFromList!5156 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443996)))))))))

(declare-fun m!4653565 () Bool)

(assert (=> tb!243789 m!4653565))

(assert (=> d!1203695 t!335995))

(declare-fun b_and!311603 () Bool)

(assert (= b_and!311597 (and (=> t!335995 result!295418) b_and!311603)))

(declare-fun tb!243791 () Bool)

(declare-fun t!335997 () Bool)

(assert (=> (and b!4050449 (= (toValue!9491 (transformation!6939 (h!48724 rules!2999))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443996)))))) t!335997) tb!243791))

(declare-fun result!295420 () Bool)

(assert (= result!295420 result!295418))

(assert (=> d!1203695 t!335997))

(declare-fun b_and!311605 () Bool)

(assert (= b_and!311599 (and (=> t!335997 result!295420) b_and!311605)))

(declare-fun tb!243793 () Bool)

(declare-fun t!335999 () Bool)

(assert (=> (and b!4051134 (= (toValue!9491 (transformation!6939 (h!48724 (t!335879 rules!2999)))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443996)))))) t!335999) tb!243793))

(declare-fun result!295422 () Bool)

(assert (= result!295422 result!295418))

(assert (=> d!1203695 t!335999))

(declare-fun b_and!311607 () Bool)

(assert (= b_and!311601 (and (=> t!335999 result!295422) b_and!311607)))

(assert (=> d!1203695 m!4652329))

(declare-fun m!4653567 () Bool)

(assert (=> d!1203695 m!4653567))

(assert (=> b!4051094 d!1203695))

(declare-fun d!1203697 () Bool)

(assert (=> d!1203697 (= (seqFromList!5156 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443996)))) (fromListB!2353 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443996)))))))

(declare-fun bs!591616 () Bool)

(assert (= bs!591616 d!1203697))

(declare-fun m!4653569 () Bool)

(assert (=> bs!591616 m!4653569))

(assert (=> b!4051094 d!1203697))

(declare-fun b!4051874 () Bool)

(declare-fun e!2514081 () List!43426)

(assert (=> b!4051874 (= e!2514081 (Cons!43302 (h!48722 lt!1443622) (++!11341 (t!335877 lt!1443622) lt!1443828)))))

(declare-fun b!4051873 () Bool)

(assert (=> b!4051873 (= e!2514081 lt!1443828)))

(declare-fun d!1203699 () Bool)

(declare-fun e!2514080 () Bool)

(assert (=> d!1203699 e!2514080))

(declare-fun res!1651417 () Bool)

(assert (=> d!1203699 (=> (not res!1651417) (not e!2514080))))

(declare-fun lt!1444325 () List!43426)

(assert (=> d!1203699 (= res!1651417 (= (content!6596 lt!1444325) (set.union (content!6596 lt!1443622) (content!6596 lt!1443828))))))

(assert (=> d!1203699 (= lt!1444325 e!2514081)))

(declare-fun c!699955 () Bool)

(assert (=> d!1203699 (= c!699955 (is-Nil!43302 lt!1443622))))

(assert (=> d!1203699 (= (++!11341 lt!1443622 lt!1443828) lt!1444325)))

(declare-fun b!4051875 () Bool)

(declare-fun res!1651416 () Bool)

(assert (=> b!4051875 (=> (not res!1651416) (not e!2514080))))

(assert (=> b!4051875 (= res!1651416 (= (size!32375 lt!1444325) (+ (size!32375 lt!1443622) (size!32375 lt!1443828))))))

(declare-fun b!4051876 () Bool)

(assert (=> b!4051876 (= e!2514080 (or (not (= lt!1443828 Nil!43302)) (= lt!1444325 lt!1443622)))))

(assert (= (and d!1203699 c!699955) b!4051873))

(assert (= (and d!1203699 (not c!699955)) b!4051874))

(assert (= (and d!1203699 res!1651417) b!4051875))

(assert (= (and b!4051875 res!1651416) b!4051876))

(declare-fun m!4653571 () Bool)

(assert (=> b!4051874 m!4653571))

(declare-fun m!4653573 () Bool)

(assert (=> d!1203699 m!4653573))

(assert (=> d!1203699 m!4651615))

(declare-fun m!4653575 () Bool)

(assert (=> d!1203699 m!4653575))

(declare-fun m!4653577 () Bool)

(assert (=> b!4051875 m!4653577))

(assert (=> b!4051875 m!4651297))

(declare-fun m!4653579 () Bool)

(assert (=> b!4051875 m!4653579))

(assert (=> d!1202925 d!1203699))

(assert (=> d!1202925 d!1203319))

(assert (=> d!1202925 d!1203115))

(assert (=> b!4050855 d!1203667))

(declare-fun d!1203701 () Bool)

(declare-fun lt!1444326 () Int)

(assert (=> d!1203701 (>= lt!1444326 0)))

(declare-fun e!2514082 () Int)

(assert (=> d!1203701 (= lt!1444326 e!2514082)))

(declare-fun c!699956 () Bool)

(assert (=> d!1203701 (= c!699956 (is-Nil!43302 lt!1443637))))

(assert (=> d!1203701 (= (size!32375 lt!1443637) lt!1444326)))

(declare-fun b!4051877 () Bool)

(assert (=> b!4051877 (= e!2514082 0)))

(declare-fun b!4051878 () Bool)

(assert (=> b!4051878 (= e!2514082 (+ 1 (size!32375 (t!335877 lt!1443637))))))

(assert (= (and d!1203701 c!699956) b!4051877))

(assert (= (and d!1203701 (not c!699956)) b!4051878))

(declare-fun m!4653581 () Bool)

(assert (=> b!4051878 m!4653581))

(assert (=> b!4050998 d!1203701))

(assert (=> b!4050998 d!1203115))

(declare-fun d!1203703 () Bool)

(declare-fun c!699957 () Bool)

(assert (=> d!1203703 (= c!699957 (is-Nil!43302 lt!1443974))))

(declare-fun e!2514083 () (Set C!23874))

(assert (=> d!1203703 (= (content!6596 lt!1443974) e!2514083)))

(declare-fun b!4051879 () Bool)

(assert (=> b!4051879 (= e!2514083 (as set.empty (Set C!23874)))))

(declare-fun b!4051880 () Bool)

(assert (=> b!4051880 (= e!2514083 (set.union (set.insert (h!48722 lt!1443974) (as set.empty (Set C!23874))) (content!6596 (t!335877 lt!1443974))))))

(assert (= (and d!1203703 c!699957) b!4051879))

(assert (= (and d!1203703 (not c!699957)) b!4051880))

(declare-fun m!4653583 () Bool)

(assert (=> b!4051880 m!4653583))

(declare-fun m!4653585 () Bool)

(assert (=> b!4051880 m!4653585))

(assert (=> d!1203109 d!1203703))

(assert (=> d!1203109 d!1203401))

(assert (=> d!1203109 d!1203497))

(declare-fun d!1203705 () Bool)

(declare-fun e!2514085 () Bool)

(assert (=> d!1203705 e!2514085))

(declare-fun res!1651421 () Bool)

(assert (=> d!1203705 (=> res!1651421 e!2514085)))

(declare-fun lt!1444327 () Bool)

(assert (=> d!1203705 (= res!1651421 (not lt!1444327))))

(declare-fun e!2514084 () Bool)

(assert (=> d!1203705 (= lt!1444327 e!2514084)))

(declare-fun res!1651419 () Bool)

(assert (=> d!1203705 (=> res!1651419 e!2514084)))

(assert (=> d!1203705 (= res!1651419 (is-Nil!43302 lt!1443622))))

(assert (=> d!1203705 (= (isPrefix!4026 lt!1443622 (++!11341 prefix!494 suffix!1299)) lt!1444327)))

(declare-fun b!4051883 () Bool)

(declare-fun e!2514086 () Bool)

(assert (=> b!4051883 (= e!2514086 (isPrefix!4026 (tail!6294 lt!1443622) (tail!6294 (++!11341 prefix!494 suffix!1299))))))

(declare-fun b!4051882 () Bool)

(declare-fun res!1651418 () Bool)

(assert (=> b!4051882 (=> (not res!1651418) (not e!2514086))))

(assert (=> b!4051882 (= res!1651418 (= (head!8562 lt!1443622) (head!8562 (++!11341 prefix!494 suffix!1299))))))

(declare-fun b!4051881 () Bool)

(assert (=> b!4051881 (= e!2514084 e!2514086)))

(declare-fun res!1651420 () Bool)

(assert (=> b!4051881 (=> (not res!1651420) (not e!2514086))))

(assert (=> b!4051881 (= res!1651420 (not (is-Nil!43302 (++!11341 prefix!494 suffix!1299))))))

(declare-fun b!4051884 () Bool)

(assert (=> b!4051884 (= e!2514085 (>= (size!32375 (++!11341 prefix!494 suffix!1299)) (size!32375 lt!1443622)))))

(assert (= (and d!1203705 (not res!1651419)) b!4051881))

(assert (= (and b!4051881 res!1651420) b!4051882))

(assert (= (and b!4051882 res!1651418) b!4051883))

(assert (= (and d!1203705 (not res!1651421)) b!4051884))

(assert (=> b!4051883 m!4651639))

(assert (=> b!4051883 m!4651285))

(declare-fun m!4653587 () Bool)

(assert (=> b!4051883 m!4653587))

(assert (=> b!4051883 m!4651639))

(assert (=> b!4051883 m!4653587))

(declare-fun m!4653589 () Bool)

(assert (=> b!4051883 m!4653589))

(assert (=> b!4051882 m!4651645))

(assert (=> b!4051882 m!4651285))

(declare-fun m!4653591 () Bool)

(assert (=> b!4051882 m!4653591))

(assert (=> b!4051884 m!4651285))

(declare-fun m!4653593 () Bool)

(assert (=> b!4051884 m!4653593))

(assert (=> b!4051884 m!4651297))

(assert (=> d!1203129 d!1203705))

(assert (=> d!1203129 d!1203061))

(declare-fun d!1203707 () Bool)

(assert (=> d!1203707 (isPrefix!4026 lt!1443622 (++!11341 prefix!494 suffix!1299))))

(assert (=> d!1203707 true))

(declare-fun _$58!613 () Unit!62585)

(assert (=> d!1203707 (= (choose!24584 lt!1443622 prefix!494 suffix!1299) _$58!613)))

(declare-fun bs!591617 () Bool)

(assert (= bs!591617 d!1203707))

(assert (=> bs!591617 m!4651285))

(assert (=> bs!591617 m!4651285))

(assert (=> bs!591617 m!4652251))

(assert (=> d!1203129 d!1203707))

(assert (=> d!1203129 d!1203091))

(assert (=> b!4050699 d!1203471))

(declare-fun d!1203709 () Bool)

(assert (=> d!1203709 (= (apply!10128 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443859)))) (seqFromList!5156 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443859))))) (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443859))))) (seqFromList!5156 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443859))))))))

(declare-fun b_lambda!118425 () Bool)

(assert (=> (not b_lambda!118425) (not d!1203709)))

(declare-fun tb!243795 () Bool)

(declare-fun t!336001 () Bool)

(assert (=> (and b!4050453 (= (toValue!9491 (transformation!6939 (rule!10021 token!484))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443859)))))) t!336001) tb!243795))

(declare-fun result!295424 () Bool)

(assert (=> tb!243795 (= result!295424 (inv!21 (dynLambda!18399 (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443859))))) (seqFromList!5156 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443859)))))))))

(declare-fun m!4653595 () Bool)

(assert (=> tb!243795 m!4653595))

(assert (=> d!1203709 t!336001))

(declare-fun b_and!311609 () Bool)

(assert (= b_and!311603 (and (=> t!336001 result!295424) b_and!311609)))

(declare-fun t!336003 () Bool)

(declare-fun tb!243797 () Bool)

(assert (=> (and b!4050449 (= (toValue!9491 (transformation!6939 (h!48724 rules!2999))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443859)))))) t!336003) tb!243797))

(declare-fun result!295426 () Bool)

(assert (= result!295426 result!295424))

(assert (=> d!1203709 t!336003))

(declare-fun b_and!311611 () Bool)

(assert (= b_and!311605 (and (=> t!336003 result!295426) b_and!311611)))

(declare-fun t!336005 () Bool)

(declare-fun tb!243799 () Bool)

(assert (=> (and b!4051134 (= (toValue!9491 (transformation!6939 (h!48724 (t!335879 rules!2999)))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443859)))))) t!336005) tb!243799))

(declare-fun result!295428 () Bool)

(assert (= result!295428 result!295424))

(assert (=> d!1203709 t!336005))

(declare-fun b_and!311613 () Bool)

(assert (= b_and!311607 (and (=> t!336005 result!295428) b_and!311613)))

(assert (=> d!1203709 m!4651705))

(declare-fun m!4653597 () Bool)

(assert (=> d!1203709 m!4653597))

(assert (=> b!4050699 d!1203709))

(declare-fun d!1203711 () Bool)

(assert (=> d!1203711 (= (seqFromList!5156 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443859)))) (fromListB!2353 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443859)))))))

(declare-fun bs!591618 () Bool)

(assert (= bs!591618 d!1203711))

(declare-fun m!4653599 () Bool)

(assert (=> bs!591618 m!4653599))

(assert (=> b!4050699 d!1203711))

(declare-fun d!1203713 () Bool)

(assert (=> d!1203713 (= lt!1443648 suffixResult!105)))

(assert (=> d!1203713 true))

(declare-fun _$63!1139 () Unit!62585)

(assert (=> d!1203713 (= (choose!24574 lt!1443622 lt!1443648 lt!1443622 suffixResult!105 lt!1443629) _$63!1139)))

(assert (=> d!1202931 d!1203713))

(assert (=> d!1202931 d!1203085))

(declare-fun d!1203715 () Bool)

(declare-fun lt!1444328 () Int)

(assert (=> d!1203715 (>= lt!1444328 0)))

(declare-fun e!2514088 () Int)

(assert (=> d!1203715 (= lt!1444328 e!2514088)))

(declare-fun c!699958 () Bool)

(assert (=> d!1203715 (= c!699958 (is-Nil!43302 (t!335877 suffix!1299)))))

(assert (=> d!1203715 (= (size!32375 (t!335877 suffix!1299)) lt!1444328)))

(declare-fun b!4051885 () Bool)

(assert (=> b!4051885 (= e!2514088 0)))

(declare-fun b!4051886 () Bool)

(assert (=> b!4051886 (= e!2514088 (+ 1 (size!32375 (t!335877 (t!335877 suffix!1299)))))))

(assert (= (and d!1203715 c!699958) b!4051885))

(assert (= (and d!1203715 (not c!699958)) b!4051886))

(declare-fun m!4653601 () Bool)

(assert (=> b!4051886 m!4653601))

(assert (=> b!4051014 d!1203715))

(declare-fun d!1203717 () Bool)

(assert (=> d!1203717 (= (nullable!4159 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (nullableFct!1172 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))

(declare-fun bs!591619 () Bool)

(assert (= bs!591619 d!1203717))

(declare-fun m!4653603 () Bool)

(assert (=> bs!591619 m!4653603))

(assert (=> b!4050786 d!1203717))

(declare-fun d!1203719 () Bool)

(declare-fun c!699959 () Bool)

(assert (=> d!1203719 (= c!699959 (is-Nil!43302 lt!1443908))))

(declare-fun e!2514089 () (Set C!23874))

(assert (=> d!1203719 (= (content!6596 lt!1443908) e!2514089)))

(declare-fun b!4051887 () Bool)

(assert (=> b!4051887 (= e!2514089 (as set.empty (Set C!23874)))))

(declare-fun b!4051888 () Bool)

(assert (=> b!4051888 (= e!2514089 (set.union (set.insert (h!48722 lt!1443908) (as set.empty (Set C!23874))) (content!6596 (t!335877 lt!1443908))))))

(assert (= (and d!1203719 c!699959) b!4051887))

(assert (= (and d!1203719 (not c!699959)) b!4051888))

(declare-fun m!4653605 () Bool)

(assert (=> b!4051888 m!4653605))

(declare-fun m!4653607 () Bool)

(assert (=> b!4051888 m!4653607))

(assert (=> d!1203013 d!1203719))

(assert (=> d!1203013 d!1203489))

(declare-fun d!1203721 () Bool)

(declare-fun c!699960 () Bool)

(assert (=> d!1203721 (= c!699960 (is-Nil!43302 suffixResult!105))))

(declare-fun e!2514090 () (Set C!23874))

(assert (=> d!1203721 (= (content!6596 suffixResult!105) e!2514090)))

(declare-fun b!4051889 () Bool)

(assert (=> b!4051889 (= e!2514090 (as set.empty (Set C!23874)))))

(declare-fun b!4051890 () Bool)

(assert (=> b!4051890 (= e!2514090 (set.union (set.insert (h!48722 suffixResult!105) (as set.empty (Set C!23874))) (content!6596 (t!335877 suffixResult!105))))))

(assert (= (and d!1203721 c!699960) b!4051889))

(assert (= (and d!1203721 (not c!699960)) b!4051890))

(declare-fun m!4653609 () Bool)

(assert (=> b!4051890 m!4653609))

(declare-fun m!4653611 () Bool)

(assert (=> b!4051890 m!4653611))

(assert (=> d!1203013 d!1203721))

(declare-fun d!1203723 () Bool)

(declare-fun lt!1444329 () Int)

(assert (=> d!1203723 (>= lt!1444329 0)))

(declare-fun e!2514091 () Int)

(assert (=> d!1203723 (= lt!1444329 e!2514091)))

(declare-fun c!699961 () Bool)

(assert (=> d!1203723 (= c!699961 (is-Nil!43302 lt!1443888))))

(assert (=> d!1203723 (= (size!32375 lt!1443888) lt!1444329)))

(declare-fun b!4051891 () Bool)

(assert (=> b!4051891 (= e!2514091 0)))

(declare-fun b!4051892 () Bool)

(assert (=> b!4051892 (= e!2514091 (+ 1 (size!32375 (t!335877 lt!1443888))))))

(assert (= (and d!1203723 c!699961) b!4051891))

(assert (= (and d!1203723 (not c!699961)) b!4051892))

(declare-fun m!4653613 () Bool)

(assert (=> b!4051892 m!4653613))

(assert (=> b!4050810 d!1203723))

(assert (=> b!4050810 d!1202993))

(declare-fun d!1203725 () Bool)

(declare-fun lt!1444330 () Int)

(assert (=> d!1203725 (>= lt!1444330 0)))

(declare-fun e!2514092 () Int)

(assert (=> d!1203725 (= lt!1444330 e!2514092)))

(declare-fun c!699962 () Bool)

(assert (=> d!1203725 (= c!699962 (is-Nil!43302 (_2!24322 (v!39762 lt!1443644))))))

(assert (=> d!1203725 (= (size!32375 (_2!24322 (v!39762 lt!1443644))) lt!1444330)))

(declare-fun b!4051893 () Bool)

(assert (=> b!4051893 (= e!2514092 0)))

(declare-fun b!4051894 () Bool)

(assert (=> b!4051894 (= e!2514092 (+ 1 (size!32375 (t!335877 (_2!24322 (v!39762 lt!1443644))))))))

(assert (= (and d!1203725 c!699962) b!4051893))

(assert (= (and d!1203725 (not c!699962)) b!4051894))

(declare-fun m!4653615 () Bool)

(assert (=> b!4051894 m!4653615))

(assert (=> b!4050810 d!1203725))

(declare-fun d!1203727 () Bool)

(declare-fun lt!1444331 () Bool)

(assert (=> d!1203727 (= lt!1444331 (set.member (rule!10021 (_1!24322 (get!14207 lt!1443941))) (content!6598 rules!2999)))))

(declare-fun e!2514094 () Bool)

(assert (=> d!1203727 (= lt!1444331 e!2514094)))

(declare-fun res!1651422 () Bool)

(assert (=> d!1203727 (=> (not res!1651422) (not e!2514094))))

(assert (=> d!1203727 (= res!1651422 (is-Cons!43304 rules!2999))))

(assert (=> d!1203727 (= (contains!8611 rules!2999 (rule!10021 (_1!24322 (get!14207 lt!1443941)))) lt!1444331)))

(declare-fun b!4051895 () Bool)

(declare-fun e!2514093 () Bool)

(assert (=> b!4051895 (= e!2514094 e!2514093)))

(declare-fun res!1651423 () Bool)

(assert (=> b!4051895 (=> res!1651423 e!2514093)))

(assert (=> b!4051895 (= res!1651423 (= (h!48724 rules!2999) (rule!10021 (_1!24322 (get!14207 lt!1443941)))))))

(declare-fun b!4051896 () Bool)

(assert (=> b!4051896 (= e!2514093 (contains!8611 (t!335879 rules!2999) (rule!10021 (_1!24322 (get!14207 lt!1443941)))))))

(assert (= (and d!1203727 res!1651422) b!4051895))

(assert (= (and b!4051895 (not res!1651423)) b!4051896))

(assert (=> d!1203727 m!4651957))

(declare-fun m!4653617 () Bool)

(assert (=> d!1203727 m!4653617))

(declare-fun m!4653619 () Bool)

(assert (=> b!4051896 m!4653619))

(assert (=> b!4050964 d!1203727))

(assert (=> b!4050964 d!1203289))

(declare-fun bm!287904 () Bool)

(declare-fun call!287909 () Bool)

(assert (=> bm!287904 (= call!287909 (isEmpty!25846 (tail!6294 lt!1443622)))))

(declare-fun b!4051897 () Bool)

(declare-fun e!2514098 () Bool)

(declare-fun e!2514096 () Bool)

(assert (=> b!4051897 (= e!2514098 e!2514096)))

(declare-fun res!1651429 () Bool)

(assert (=> b!4051897 (=> (not res!1651429) (not e!2514096))))

(declare-fun lt!1444332 () Bool)

(assert (=> b!4051897 (= res!1651429 (not lt!1444332))))

(declare-fun b!4051898 () Bool)

(declare-fun res!1651430 () Bool)

(declare-fun e!2514101 () Bool)

(assert (=> b!4051898 (=> res!1651430 e!2514101)))

(assert (=> b!4051898 (= res!1651430 (not (isEmpty!25846 (tail!6294 (tail!6294 lt!1443622)))))))

(declare-fun d!1203729 () Bool)

(declare-fun e!2514097 () Bool)

(assert (=> d!1203729 e!2514097))

(declare-fun c!699964 () Bool)

(assert (=> d!1203729 (= c!699964 (is-EmptyExpr!11844 (derivativeStep!3564 (regex!6939 (rule!10021 token!484)) (head!8562 lt!1443622))))))

(declare-fun e!2514099 () Bool)

(assert (=> d!1203729 (= lt!1444332 e!2514099)))

(declare-fun c!699963 () Bool)

(assert (=> d!1203729 (= c!699963 (isEmpty!25846 (tail!6294 lt!1443622)))))

(assert (=> d!1203729 (validRegex!5359 (derivativeStep!3564 (regex!6939 (rule!10021 token!484)) (head!8562 lt!1443622)))))

(assert (=> d!1203729 (= (matchR!5797 (derivativeStep!3564 (regex!6939 (rule!10021 token!484)) (head!8562 lt!1443622)) (tail!6294 lt!1443622)) lt!1444332)))

(declare-fun b!4051899 () Bool)

(declare-fun res!1651426 () Bool)

(declare-fun e!2514095 () Bool)

(assert (=> b!4051899 (=> (not res!1651426) (not e!2514095))))

(assert (=> b!4051899 (= res!1651426 (isEmpty!25846 (tail!6294 (tail!6294 lt!1443622))))))

(declare-fun b!4051900 () Bool)

(declare-fun e!2514100 () Bool)

(assert (=> b!4051900 (= e!2514100 (not lt!1444332))))

(declare-fun b!4051901 () Bool)

(assert (=> b!4051901 (= e!2514099 (matchR!5797 (derivativeStep!3564 (derivativeStep!3564 (regex!6939 (rule!10021 token!484)) (head!8562 lt!1443622)) (head!8562 (tail!6294 lt!1443622))) (tail!6294 (tail!6294 lt!1443622))))))

(declare-fun b!4051902 () Bool)

(declare-fun res!1651425 () Bool)

(assert (=> b!4051902 (=> res!1651425 e!2514098)))

(assert (=> b!4051902 (= res!1651425 e!2514095)))

(declare-fun res!1651427 () Bool)

(assert (=> b!4051902 (=> (not res!1651427) (not e!2514095))))

(assert (=> b!4051902 (= res!1651427 lt!1444332)))

(declare-fun b!4051903 () Bool)

(assert (=> b!4051903 (= e!2514097 (= lt!1444332 call!287909))))

(declare-fun b!4051904 () Bool)

(assert (=> b!4051904 (= e!2514095 (= (head!8562 (tail!6294 lt!1443622)) (c!699689 (derivativeStep!3564 (regex!6939 (rule!10021 token!484)) (head!8562 lt!1443622)))))))

(declare-fun b!4051905 () Bool)

(assert (=> b!4051905 (= e!2514101 (not (= (head!8562 (tail!6294 lt!1443622)) (c!699689 (derivativeStep!3564 (regex!6939 (rule!10021 token!484)) (head!8562 lt!1443622))))))))

(declare-fun b!4051906 () Bool)

(declare-fun res!1651424 () Bool)

(assert (=> b!4051906 (=> res!1651424 e!2514098)))

(assert (=> b!4051906 (= res!1651424 (not (is-ElementMatch!11844 (derivativeStep!3564 (regex!6939 (rule!10021 token!484)) (head!8562 lt!1443622)))))))

(assert (=> b!4051906 (= e!2514100 e!2514098)))

(declare-fun b!4051907 () Bool)

(assert (=> b!4051907 (= e!2514096 e!2514101)))

(declare-fun res!1651431 () Bool)

(assert (=> b!4051907 (=> res!1651431 e!2514101)))

(assert (=> b!4051907 (= res!1651431 call!287909)))

(declare-fun b!4051908 () Bool)

(assert (=> b!4051908 (= e!2514097 e!2514100)))

(declare-fun c!699965 () Bool)

(assert (=> b!4051908 (= c!699965 (is-EmptyLang!11844 (derivativeStep!3564 (regex!6939 (rule!10021 token!484)) (head!8562 lt!1443622))))))

(declare-fun b!4051909 () Bool)

(assert (=> b!4051909 (= e!2514099 (nullable!4159 (derivativeStep!3564 (regex!6939 (rule!10021 token!484)) (head!8562 lt!1443622))))))

(declare-fun b!4051910 () Bool)

(declare-fun res!1651428 () Bool)

(assert (=> b!4051910 (=> (not res!1651428) (not e!2514095))))

(assert (=> b!4051910 (= res!1651428 (not call!287909))))

(assert (= (and d!1203729 c!699963) b!4051909))

(assert (= (and d!1203729 (not c!699963)) b!4051901))

(assert (= (and d!1203729 c!699964) b!4051903))

(assert (= (and d!1203729 (not c!699964)) b!4051908))

(assert (= (and b!4051908 c!699965) b!4051900))

(assert (= (and b!4051908 (not c!699965)) b!4051906))

(assert (= (and b!4051906 (not res!1651424)) b!4051902))

(assert (= (and b!4051902 res!1651427) b!4051910))

(assert (= (and b!4051910 res!1651428) b!4051899))

(assert (= (and b!4051899 res!1651426) b!4051904))

(assert (= (and b!4051902 (not res!1651425)) b!4051897))

(assert (= (and b!4051897 res!1651429) b!4051907))

(assert (= (and b!4051907 (not res!1651431)) b!4051898))

(assert (= (and b!4051898 (not res!1651430)) b!4051905))

(assert (= (or b!4051903 b!4051910 b!4051907) bm!287904))

(assert (=> b!4051904 m!4651639))

(assert (=> b!4051904 m!4652781))

(assert (=> d!1203729 m!4651639))

(assert (=> d!1203729 m!4652243))

(assert (=> d!1203729 m!4652239))

(declare-fun m!4653621 () Bool)

(assert (=> d!1203729 m!4653621))

(assert (=> b!4051901 m!4651639))

(assert (=> b!4051901 m!4652781))

(assert (=> b!4051901 m!4652239))

(assert (=> b!4051901 m!4652781))

(declare-fun m!4653623 () Bool)

(assert (=> b!4051901 m!4653623))

(assert (=> b!4051901 m!4651639))

(assert (=> b!4051901 m!4652775))

(assert (=> b!4051901 m!4653623))

(assert (=> b!4051901 m!4652775))

(declare-fun m!4653625 () Bool)

(assert (=> b!4051901 m!4653625))

(assert (=> bm!287904 m!4651639))

(assert (=> bm!287904 m!4652243))

(assert (=> b!4051905 m!4651639))

(assert (=> b!4051905 m!4652781))

(assert (=> b!4051898 m!4651639))

(assert (=> b!4051898 m!4652775))

(assert (=> b!4051898 m!4652775))

(declare-fun m!4653627 () Bool)

(assert (=> b!4051898 m!4653627))

(assert (=> b!4051899 m!4651639))

(assert (=> b!4051899 m!4652775))

(assert (=> b!4051899 m!4652775))

(assert (=> b!4051899 m!4653627))

(assert (=> b!4051909 m!4652239))

(declare-fun m!4653629 () Bool)

(assert (=> b!4051909 m!4653629))

(assert (=> b!4051045 d!1203729))

(declare-fun b!4051931 () Bool)

(declare-fun e!2514113 () Regex!11844)

(assert (=> b!4051931 (= e!2514113 (ite (= (head!8562 lt!1443622) (c!699689 (regex!6939 (rule!10021 token!484)))) EmptyExpr!11844 EmptyLang!11844))))

(declare-fun bm!287913 () Bool)

(declare-fun call!287918 () Regex!11844)

(declare-fun c!699977 () Bool)

(assert (=> bm!287913 (= call!287918 (derivativeStep!3564 (ite c!699977 (regTwo!24201 (regex!6939 (rule!10021 token!484))) (regTwo!24200 (regex!6939 (rule!10021 token!484)))) (head!8562 lt!1443622)))))

(declare-fun bm!287914 () Bool)

(declare-fun call!287919 () Regex!11844)

(declare-fun call!287920 () Regex!11844)

(assert (=> bm!287914 (= call!287919 call!287920)))

(declare-fun b!4051932 () Bool)

(declare-fun e!2514112 () Regex!11844)

(assert (=> b!4051932 (= e!2514112 e!2514113)))

(declare-fun c!699976 () Bool)

(assert (=> b!4051932 (= c!699976 (is-ElementMatch!11844 (regex!6939 (rule!10021 token!484))))))

(declare-fun bm!287915 () Bool)

(declare-fun call!287921 () Regex!11844)

(assert (=> bm!287915 (= call!287921 call!287919)))

(declare-fun b!4051933 () Bool)

(declare-fun e!2514116 () Regex!11844)

(assert (=> b!4051933 (= e!2514116 (Union!11844 call!287920 call!287918))))

(declare-fun b!4051934 () Bool)

(declare-fun e!2514114 () Regex!11844)

(assert (=> b!4051934 (= e!2514114 (Union!11844 (Concat!19014 call!287921 (regTwo!24200 (regex!6939 (rule!10021 token!484)))) EmptyLang!11844))))

(declare-fun b!4051935 () Bool)

(assert (=> b!4051935 (= c!699977 (is-Union!11844 (regex!6939 (rule!10021 token!484))))))

(assert (=> b!4051935 (= e!2514113 e!2514116)))

(declare-fun b!4051936 () Bool)

(declare-fun c!699978 () Bool)

(assert (=> b!4051936 (= c!699978 (nullable!4159 (regOne!24200 (regex!6939 (rule!10021 token!484)))))))

(declare-fun e!2514115 () Regex!11844)

(assert (=> b!4051936 (= e!2514115 e!2514114)))

(declare-fun b!4051937 () Bool)

(assert (=> b!4051937 (= e!2514112 EmptyLang!11844)))

(declare-fun b!4051938 () Bool)

(assert (=> b!4051938 (= e!2514114 (Union!11844 (Concat!19014 call!287921 (regTwo!24200 (regex!6939 (rule!10021 token!484)))) call!287918))))

(declare-fun b!4051939 () Bool)

(assert (=> b!4051939 (= e!2514115 (Concat!19014 call!287919 (regex!6939 (rule!10021 token!484))))))

(declare-fun b!4051940 () Bool)

(assert (=> b!4051940 (= e!2514116 e!2514115)))

(declare-fun c!699980 () Bool)

(assert (=> b!4051940 (= c!699980 (is-Star!11844 (regex!6939 (rule!10021 token!484))))))

(declare-fun bm!287916 () Bool)

(assert (=> bm!287916 (= call!287920 (derivativeStep!3564 (ite c!699977 (regOne!24201 (regex!6939 (rule!10021 token!484))) (ite c!699980 (reg!12173 (regex!6939 (rule!10021 token!484))) (regOne!24200 (regex!6939 (rule!10021 token!484))))) (head!8562 lt!1443622)))))

(declare-fun d!1203731 () Bool)

(declare-fun lt!1444335 () Regex!11844)

(assert (=> d!1203731 (validRegex!5359 lt!1444335)))

(assert (=> d!1203731 (= lt!1444335 e!2514112)))

(declare-fun c!699979 () Bool)

(assert (=> d!1203731 (= c!699979 (or (is-EmptyExpr!11844 (regex!6939 (rule!10021 token!484))) (is-EmptyLang!11844 (regex!6939 (rule!10021 token!484)))))))

(assert (=> d!1203731 (validRegex!5359 (regex!6939 (rule!10021 token!484)))))

(assert (=> d!1203731 (= (derivativeStep!3564 (regex!6939 (rule!10021 token!484)) (head!8562 lt!1443622)) lt!1444335)))

(assert (= (and d!1203731 c!699979) b!4051937))

(assert (= (and d!1203731 (not c!699979)) b!4051932))

(assert (= (and b!4051932 c!699976) b!4051931))

(assert (= (and b!4051932 (not c!699976)) b!4051935))

(assert (= (and b!4051935 c!699977) b!4051933))

(assert (= (and b!4051935 (not c!699977)) b!4051940))

(assert (= (and b!4051940 c!699980) b!4051939))

(assert (= (and b!4051940 (not c!699980)) b!4051936))

(assert (= (and b!4051936 c!699978) b!4051938))

(assert (= (and b!4051936 (not c!699978)) b!4051934))

(assert (= (or b!4051938 b!4051934) bm!287915))

(assert (= (or b!4051939 bm!287915) bm!287914))

(assert (= (or b!4051933 bm!287914) bm!287916))

(assert (= (or b!4051933 b!4051938) bm!287913))

(assert (=> bm!287913 m!4651645))

(declare-fun m!4653631 () Bool)

(assert (=> bm!287913 m!4653631))

(declare-fun m!4653633 () Bool)

(assert (=> b!4051936 m!4653633))

(assert (=> bm!287916 m!4651645))

(declare-fun m!4653635 () Bool)

(assert (=> bm!287916 m!4653635))

(declare-fun m!4653637 () Bool)

(assert (=> d!1203731 m!4653637))

(assert (=> d!1203731 m!4651945))

(assert (=> b!4051045 d!1203731))

(assert (=> b!4051045 d!1203291))

(assert (=> b!4051045 d!1203301))

(declare-fun b!4051942 () Bool)

(declare-fun e!2514117 () List!43426)

(declare-fun e!2514118 () List!43426)

(assert (=> b!4051942 (= e!2514117 e!2514118)))

(declare-fun c!699982 () Bool)

(assert (=> b!4051942 (= c!699982 (is-Leaf!20327 (c!699688 (charsOf!4755 token!484))))))

(declare-fun b!4051943 () Bool)

(assert (=> b!4051943 (= e!2514118 (list!16137 (xs!16456 (c!699688 (charsOf!4755 token!484)))))))

(declare-fun b!4051944 () Bool)

(assert (=> b!4051944 (= e!2514118 (++!11341 (list!16135 (left!32606 (c!699688 (charsOf!4755 token!484)))) (list!16135 (right!32936 (c!699688 (charsOf!4755 token!484))))))))

(declare-fun b!4051941 () Bool)

(assert (=> b!4051941 (= e!2514117 Nil!43302)))

(declare-fun d!1203733 () Bool)

(declare-fun c!699981 () Bool)

(assert (=> d!1203733 (= c!699981 (is-Empty!13150 (c!699688 (charsOf!4755 token!484))))))

(assert (=> d!1203733 (= (list!16135 (c!699688 (charsOf!4755 token!484))) e!2514117)))

(assert (= (and d!1203733 c!699981) b!4051941))

(assert (= (and d!1203733 (not c!699981)) b!4051942))

(assert (= (and b!4051942 c!699982) b!4051943))

(assert (= (and b!4051942 (not c!699982)) b!4051944))

(declare-fun m!4653639 () Bool)

(assert (=> b!4051943 m!4653639))

(declare-fun m!4653641 () Bool)

(assert (=> b!4051944 m!4653641))

(declare-fun m!4653643 () Bool)

(assert (=> b!4051944 m!4653643))

(assert (=> b!4051944 m!4653641))

(assert (=> b!4051944 m!4653643))

(declare-fun m!4653645 () Bool)

(assert (=> b!4051944 m!4653645))

(assert (=> d!1203119 d!1203733))

(declare-fun b!4051946 () Bool)

(declare-fun e!2514120 () List!43426)

(assert (=> b!4051946 (= e!2514120 (Cons!43302 (h!48722 lt!1443625) (++!11341 (t!335877 lt!1443625) lt!1443954)))))

(declare-fun b!4051945 () Bool)

(assert (=> b!4051945 (= e!2514120 lt!1443954)))

(declare-fun d!1203735 () Bool)

(declare-fun e!2514119 () Bool)

(assert (=> d!1203735 e!2514119))

(declare-fun res!1651433 () Bool)

(assert (=> d!1203735 (=> (not res!1651433) (not e!2514119))))

(declare-fun lt!1444336 () List!43426)

(assert (=> d!1203735 (= res!1651433 (= (content!6596 lt!1444336) (set.union (content!6596 lt!1443625) (content!6596 lt!1443954))))))

(assert (=> d!1203735 (= lt!1444336 e!2514120)))

(declare-fun c!699983 () Bool)

(assert (=> d!1203735 (= c!699983 (is-Nil!43302 lt!1443625))))

(assert (=> d!1203735 (= (++!11341 lt!1443625 lt!1443954) lt!1444336)))

(declare-fun b!4051947 () Bool)

(declare-fun res!1651432 () Bool)

(assert (=> b!4051947 (=> (not res!1651432) (not e!2514119))))

(assert (=> b!4051947 (= res!1651432 (= (size!32375 lt!1444336) (+ (size!32375 lt!1443625) (size!32375 lt!1443954))))))

(declare-fun b!4051948 () Bool)

(assert (=> b!4051948 (= e!2514119 (or (not (= lt!1443954 Nil!43302)) (= lt!1444336 lt!1443625)))))

(assert (= (and d!1203735 c!699983) b!4051945))

(assert (= (and d!1203735 (not c!699983)) b!4051946))

(assert (= (and d!1203735 res!1651433) b!4051947))

(assert (= (and b!4051947 res!1651432) b!4051948))

(declare-fun m!4653647 () Bool)

(assert (=> b!4051946 m!4653647))

(declare-fun m!4653649 () Bool)

(assert (=> d!1203735 m!4653649))

(assert (=> d!1203735 m!4651833))

(declare-fun m!4653651 () Bool)

(assert (=> d!1203735 m!4653651))

(declare-fun m!4653653 () Bool)

(assert (=> b!4051947 m!4653653))

(assert (=> b!4051947 m!4651321))

(declare-fun m!4653655 () Bool)

(assert (=> b!4051947 m!4653655))

(assert (=> d!1203073 d!1203735))

(assert (=> d!1203073 d!1203361))

(assert (=> d!1203073 d!1202993))

(declare-fun d!1203737 () Bool)

(assert (=> d!1203737 (= (isEmpty!25847 lt!1443859) (not (is-Some!9352 lt!1443859)))))

(assert (=> d!1202943 d!1203737))

(declare-fun d!1203739 () Bool)

(assert (=> d!1203739 (= (isEmpty!25846 (_1!24324 lt!1443860)) (is-Nil!43302 (_1!24324 lt!1443860)))))

(assert (=> d!1202943 d!1203739))

(declare-fun d!1203741 () Bool)

(declare-fun lt!1444359 () tuple2!42380)

(assert (=> d!1203741 (= (++!11341 (_1!24324 lt!1444359) (_2!24324 lt!1444359)) lt!1443629)))

(declare-fun sizeTr!279 (List!43426 Int) Int)

(assert (=> d!1203741 (= lt!1444359 (findLongestMatchInner!1396 (regex!6939 (rule!10021 token!484)) Nil!43302 0 lt!1443629 lt!1443629 (sizeTr!279 lt!1443629 0)))))

(declare-fun lt!1444358 () Unit!62585)

(declare-fun lt!1444357 () Unit!62585)

(assert (=> d!1203741 (= lt!1444358 lt!1444357)))

(declare-fun lt!1444353 () List!43426)

(declare-fun lt!1444354 () Int)

(assert (=> d!1203741 (= (sizeTr!279 lt!1444353 lt!1444354) (+ (size!32375 lt!1444353) lt!1444354))))

(declare-fun lemmaSizeTrEqualsSize!278 (List!43426 Int) Unit!62585)

(assert (=> d!1203741 (= lt!1444357 (lemmaSizeTrEqualsSize!278 lt!1444353 lt!1444354))))

(assert (=> d!1203741 (= lt!1444354 0)))

(assert (=> d!1203741 (= lt!1444353 Nil!43302)))

(declare-fun lt!1444355 () Unit!62585)

(declare-fun lt!1444356 () Unit!62585)

(assert (=> d!1203741 (= lt!1444355 lt!1444356)))

(declare-fun lt!1444360 () Int)

(assert (=> d!1203741 (= (sizeTr!279 lt!1443629 lt!1444360) (+ (size!32375 lt!1443629) lt!1444360))))

(assert (=> d!1203741 (= lt!1444356 (lemmaSizeTrEqualsSize!278 lt!1443629 lt!1444360))))

(assert (=> d!1203741 (= lt!1444360 0)))

(assert (=> d!1203741 (validRegex!5359 (regex!6939 (rule!10021 token!484)))))

(assert (=> d!1203741 (= (findLongestMatch!1309 (regex!6939 (rule!10021 token!484)) lt!1443629) lt!1444359)))

(declare-fun bs!591620 () Bool)

(assert (= bs!591620 d!1203741))

(declare-fun m!4653657 () Bool)

(assert (=> bs!591620 m!4653657))

(declare-fun m!4653659 () Bool)

(assert (=> bs!591620 m!4653659))

(assert (=> bs!591620 m!4651945))

(declare-fun m!4653661 () Bool)

(assert (=> bs!591620 m!4653661))

(declare-fun m!4653663 () Bool)

(assert (=> bs!591620 m!4653663))

(declare-fun m!4653665 () Bool)

(assert (=> bs!591620 m!4653665))

(assert (=> bs!591620 m!4653661))

(declare-fun m!4653667 () Bool)

(assert (=> bs!591620 m!4653667))

(declare-fun m!4653669 () Bool)

(assert (=> bs!591620 m!4653669))

(declare-fun m!4653671 () Bool)

(assert (=> bs!591620 m!4653671))

(assert (=> bs!591620 m!4651625))

(assert (=> d!1202943 d!1203741))

(assert (=> d!1202943 d!1203017))

(declare-fun bm!287917 () Bool)

(declare-fun call!287922 () Bool)

(assert (=> bm!287917 (= call!287922 (isEmpty!25846 (tail!6294 lt!1443625)))))

(declare-fun b!4051949 () Bool)

(declare-fun e!2514124 () Bool)

(declare-fun e!2514122 () Bool)

(assert (=> b!4051949 (= e!2514124 e!2514122)))

(declare-fun res!1651439 () Bool)

(assert (=> b!4051949 (=> (not res!1651439) (not e!2514122))))

(declare-fun lt!1444361 () Bool)

(assert (=> b!4051949 (= res!1651439 (not lt!1444361))))

(declare-fun b!4051950 () Bool)

(declare-fun res!1651440 () Bool)

(declare-fun e!2514127 () Bool)

(assert (=> b!4051950 (=> res!1651440 e!2514127)))

(assert (=> b!4051950 (= res!1651440 (not (isEmpty!25846 (tail!6294 (tail!6294 lt!1443625)))))))

(declare-fun d!1203743 () Bool)

(declare-fun e!2514123 () Bool)

(assert (=> d!1203743 e!2514123))

(declare-fun c!699985 () Bool)

(assert (=> d!1203743 (= c!699985 (is-EmptyExpr!11844 (derivativeStep!3564 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (head!8562 lt!1443625))))))

(declare-fun e!2514125 () Bool)

(assert (=> d!1203743 (= lt!1444361 e!2514125)))

(declare-fun c!699984 () Bool)

(assert (=> d!1203743 (= c!699984 (isEmpty!25846 (tail!6294 lt!1443625)))))

(assert (=> d!1203743 (validRegex!5359 (derivativeStep!3564 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (head!8562 lt!1443625)))))

(assert (=> d!1203743 (= (matchR!5797 (derivativeStep!3564 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (head!8562 lt!1443625)) (tail!6294 lt!1443625)) lt!1444361)))

(declare-fun b!4051951 () Bool)

(declare-fun res!1651436 () Bool)

(declare-fun e!2514121 () Bool)

(assert (=> b!4051951 (=> (not res!1651436) (not e!2514121))))

(assert (=> b!4051951 (= res!1651436 (isEmpty!25846 (tail!6294 (tail!6294 lt!1443625))))))

(declare-fun b!4051952 () Bool)

(declare-fun e!2514126 () Bool)

(assert (=> b!4051952 (= e!2514126 (not lt!1444361))))

(declare-fun b!4051953 () Bool)

(assert (=> b!4051953 (= e!2514125 (matchR!5797 (derivativeStep!3564 (derivativeStep!3564 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (head!8562 lt!1443625)) (head!8562 (tail!6294 lt!1443625))) (tail!6294 (tail!6294 lt!1443625))))))

(declare-fun b!4051954 () Bool)

(declare-fun res!1651435 () Bool)

(assert (=> b!4051954 (=> res!1651435 e!2514124)))

(assert (=> b!4051954 (= res!1651435 e!2514121)))

(declare-fun res!1651437 () Bool)

(assert (=> b!4051954 (=> (not res!1651437) (not e!2514121))))

(assert (=> b!4051954 (= res!1651437 lt!1444361)))

(declare-fun b!4051955 () Bool)

(assert (=> b!4051955 (= e!2514123 (= lt!1444361 call!287922))))

(declare-fun b!4051956 () Bool)

(assert (=> b!4051956 (= e!2514121 (= (head!8562 (tail!6294 lt!1443625)) (c!699689 (derivativeStep!3564 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (head!8562 lt!1443625)))))))

(declare-fun b!4051957 () Bool)

(assert (=> b!4051957 (= e!2514127 (not (= (head!8562 (tail!6294 lt!1443625)) (c!699689 (derivativeStep!3564 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (head!8562 lt!1443625))))))))

(declare-fun b!4051958 () Bool)

(declare-fun res!1651434 () Bool)

(assert (=> b!4051958 (=> res!1651434 e!2514124)))

(assert (=> b!4051958 (= res!1651434 (not (is-ElementMatch!11844 (derivativeStep!3564 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (head!8562 lt!1443625)))))))

(assert (=> b!4051958 (= e!2514126 e!2514124)))

(declare-fun b!4051959 () Bool)

(assert (=> b!4051959 (= e!2514122 e!2514127)))

(declare-fun res!1651441 () Bool)

(assert (=> b!4051959 (=> res!1651441 e!2514127)))

(assert (=> b!4051959 (= res!1651441 call!287922)))

(declare-fun b!4051960 () Bool)

(assert (=> b!4051960 (= e!2514123 e!2514126)))

(declare-fun c!699986 () Bool)

(assert (=> b!4051960 (= c!699986 (is-EmptyLang!11844 (derivativeStep!3564 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (head!8562 lt!1443625))))))

(declare-fun b!4051961 () Bool)

(assert (=> b!4051961 (= e!2514125 (nullable!4159 (derivativeStep!3564 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (head!8562 lt!1443625))))))

(declare-fun b!4051962 () Bool)

(declare-fun res!1651438 () Bool)

(assert (=> b!4051962 (=> (not res!1651438) (not e!2514121))))

(assert (=> b!4051962 (= res!1651438 (not call!287922))))

(assert (= (and d!1203743 c!699984) b!4051961))

(assert (= (and d!1203743 (not c!699984)) b!4051953))

(assert (= (and d!1203743 c!699985) b!4051955))

(assert (= (and d!1203743 (not c!699985)) b!4051960))

(assert (= (and b!4051960 c!699986) b!4051952))

(assert (= (and b!4051960 (not c!699986)) b!4051958))

(assert (= (and b!4051958 (not res!1651434)) b!4051954))

(assert (= (and b!4051954 res!1651437) b!4051962))

(assert (= (and b!4051962 res!1651438) b!4051951))

(assert (= (and b!4051951 res!1651436) b!4051956))

(assert (= (and b!4051954 (not res!1651435)) b!4051949))

(assert (= (and b!4051949 res!1651439) b!4051959))

(assert (= (and b!4051959 (not res!1651441)) b!4051950))

(assert (= (and b!4051950 (not res!1651440)) b!4051957))

(assert (= (or b!4051955 b!4051962 b!4051959) bm!287917))

(assert (=> b!4051956 m!4651761))

(assert (=> b!4051956 m!4653039))

(assert (=> d!1203743 m!4651761))

(assert (=> d!1203743 m!4651765))

(assert (=> d!1203743 m!4651759))

(declare-fun m!4653673 () Bool)

(assert (=> d!1203743 m!4653673))

(assert (=> b!4051953 m!4651761))

(assert (=> b!4051953 m!4653039))

(assert (=> b!4051953 m!4651759))

(assert (=> b!4051953 m!4653039))

(declare-fun m!4653675 () Bool)

(assert (=> b!4051953 m!4653675))

(assert (=> b!4051953 m!4651761))

(assert (=> b!4051953 m!4653033))

(assert (=> b!4051953 m!4653675))

(assert (=> b!4051953 m!4653033))

(declare-fun m!4653677 () Bool)

(assert (=> b!4051953 m!4653677))

(assert (=> bm!287917 m!4651761))

(assert (=> bm!287917 m!4651765))

(assert (=> b!4051957 m!4651761))

(assert (=> b!4051957 m!4653039))

(assert (=> b!4051950 m!4651761))

(assert (=> b!4051950 m!4653033))

(assert (=> b!4051950 m!4653033))

(declare-fun m!4653679 () Bool)

(assert (=> b!4051950 m!4653679))

(assert (=> b!4051951 m!4651761))

(assert (=> b!4051951 m!4653033))

(assert (=> b!4051951 m!4653033))

(assert (=> b!4051951 m!4653679))

(assert (=> b!4051961 m!4651759))

(declare-fun m!4653681 () Bool)

(assert (=> b!4051961 m!4653681))

(assert (=> b!4050778 d!1203743))

(declare-fun b!4051963 () Bool)

(declare-fun e!2514129 () Regex!11844)

(assert (=> b!4051963 (= e!2514129 (ite (= (head!8562 lt!1443625) (c!699689 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) EmptyExpr!11844 EmptyLang!11844))))

(declare-fun bm!287918 () Bool)

(declare-fun c!699988 () Bool)

(declare-fun call!287923 () Regex!11844)

(assert (=> bm!287918 (= call!287923 (derivativeStep!3564 (ite c!699988 (regTwo!24201 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (regTwo!24200 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) (head!8562 lt!1443625)))))

(declare-fun bm!287919 () Bool)

(declare-fun call!287924 () Regex!11844)

(declare-fun call!287925 () Regex!11844)

(assert (=> bm!287919 (= call!287924 call!287925)))

(declare-fun b!4051964 () Bool)

(declare-fun e!2514128 () Regex!11844)

(assert (=> b!4051964 (= e!2514128 e!2514129)))

(declare-fun c!699987 () Bool)

(assert (=> b!4051964 (= c!699987 (is-ElementMatch!11844 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))

(declare-fun bm!287920 () Bool)

(declare-fun call!287926 () Regex!11844)

(assert (=> bm!287920 (= call!287926 call!287924)))

(declare-fun b!4051965 () Bool)

(declare-fun e!2514132 () Regex!11844)

(assert (=> b!4051965 (= e!2514132 (Union!11844 call!287925 call!287923))))

(declare-fun b!4051966 () Bool)

(declare-fun e!2514130 () Regex!11844)

(assert (=> b!4051966 (= e!2514130 (Union!11844 (Concat!19014 call!287926 (regTwo!24200 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) EmptyLang!11844))))

(declare-fun b!4051967 () Bool)

(assert (=> b!4051967 (= c!699988 (is-Union!11844 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))

(assert (=> b!4051967 (= e!2514129 e!2514132)))

(declare-fun b!4051968 () Bool)

(declare-fun c!699989 () Bool)

(assert (=> b!4051968 (= c!699989 (nullable!4159 (regOne!24200 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))))

(declare-fun e!2514131 () Regex!11844)

(assert (=> b!4051968 (= e!2514131 e!2514130)))

(declare-fun b!4051969 () Bool)

(assert (=> b!4051969 (= e!2514128 EmptyLang!11844)))

(declare-fun b!4051970 () Bool)

(assert (=> b!4051970 (= e!2514130 (Union!11844 (Concat!19014 call!287926 (regTwo!24200 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) call!287923))))

(declare-fun b!4051971 () Bool)

(assert (=> b!4051971 (= e!2514131 (Concat!19014 call!287924 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))

(declare-fun b!4051972 () Bool)

(assert (=> b!4051972 (= e!2514132 e!2514131)))

(declare-fun c!699991 () Bool)

(assert (=> b!4051972 (= c!699991 (is-Star!11844 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))

(declare-fun bm!287921 () Bool)

(assert (=> bm!287921 (= call!287925 (derivativeStep!3564 (ite c!699988 (regOne!24201 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (ite c!699991 (reg!12173 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (regOne!24200 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))) (head!8562 lt!1443625)))))

(declare-fun d!1203745 () Bool)

(declare-fun lt!1444362 () Regex!11844)

(assert (=> d!1203745 (validRegex!5359 lt!1444362)))

(assert (=> d!1203745 (= lt!1444362 e!2514128)))

(declare-fun c!699990 () Bool)

(assert (=> d!1203745 (= c!699990 (or (is-EmptyExpr!11844 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (is-EmptyLang!11844 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))))

(assert (=> d!1203745 (validRegex!5359 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))

(assert (=> d!1203745 (= (derivativeStep!3564 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) (head!8562 lt!1443625)) lt!1444362)))

(assert (= (and d!1203745 c!699990) b!4051969))

(assert (= (and d!1203745 (not c!699990)) b!4051964))

(assert (= (and b!4051964 c!699987) b!4051963))

(assert (= (and b!4051964 (not c!699987)) b!4051967))

(assert (= (and b!4051967 c!699988) b!4051965))

(assert (= (and b!4051967 (not c!699988)) b!4051972))

(assert (= (and b!4051972 c!699991) b!4051971))

(assert (= (and b!4051972 (not c!699991)) b!4051968))

(assert (= (and b!4051968 c!699989) b!4051970))

(assert (= (and b!4051968 (not c!699989)) b!4051966))

(assert (= (or b!4051970 b!4051966) bm!287920))

(assert (= (or b!4051971 bm!287920) bm!287919))

(assert (= (or b!4051965 bm!287919) bm!287921))

(assert (= (or b!4051965 b!4051970) bm!287918))

(assert (=> bm!287918 m!4651753))

(declare-fun m!4653683 () Bool)

(assert (=> bm!287918 m!4653683))

(declare-fun m!4653685 () Bool)

(assert (=> b!4051968 m!4653685))

(assert (=> bm!287921 m!4651753))

(declare-fun m!4653687 () Bool)

(assert (=> bm!287921 m!4653687))

(declare-fun m!4653689 () Bool)

(assert (=> d!1203745 m!4653689))

(assert (=> d!1203745 m!4651757))

(assert (=> b!4050778 d!1203745))

(assert (=> b!4050778 d!1203333))

(assert (=> b!4050778 d!1203443))

(assert (=> b!4050849 d!1203717))

(declare-fun d!1203747 () Bool)

(declare-fun res!1651446 () Bool)

(declare-fun e!2514137 () Bool)

(assert (=> d!1203747 (=> res!1651446 e!2514137)))

(assert (=> d!1203747 (= res!1651446 (is-Nil!43304 rules!2999))))

(assert (=> d!1203747 (= (noDuplicateTag!2702 thiss!21717 rules!2999 Nil!43308) e!2514137)))

(declare-fun b!4051977 () Bool)

(declare-fun e!2514138 () Bool)

(assert (=> b!4051977 (= e!2514137 e!2514138)))

(declare-fun res!1651447 () Bool)

(assert (=> b!4051977 (=> (not res!1651447) (not e!2514138))))

(declare-fun contains!8613 (List!43432 String!49565) Bool)

(assert (=> b!4051977 (= res!1651447 (not (contains!8613 Nil!43308 (tag!7799 (h!48724 rules!2999)))))))

(declare-fun b!4051978 () Bool)

(assert (=> b!4051978 (= e!2514138 (noDuplicateTag!2702 thiss!21717 (t!335879 rules!2999) (Cons!43308 (tag!7799 (h!48724 rules!2999)) Nil!43308)))))

(assert (= (and d!1203747 (not res!1651446)) b!4051977))

(assert (= (and b!4051977 res!1651447) b!4051978))

(declare-fun m!4653691 () Bool)

(assert (=> b!4051977 m!4653691))

(declare-fun m!4653693 () Bool)

(assert (=> b!4051978 m!4653693))

(assert (=> b!4051085 d!1203747))

(assert (=> b!4050994 d!1203319))

(assert (=> b!4050994 d!1203117))

(assert (=> b!4050835 d!1203377))

(declare-fun d!1203749 () Bool)

(declare-fun lt!1444363 () Int)

(assert (=> d!1203749 (>= lt!1444363 0)))

(declare-fun e!2514139 () Int)

(assert (=> d!1203749 (= lt!1444363 e!2514139)))

(declare-fun c!699992 () Bool)

(assert (=> d!1203749 (= c!699992 (is-Nil!43302 lt!1443974))))

(assert (=> d!1203749 (= (size!32375 lt!1443974) lt!1444363)))

(declare-fun b!4051979 () Bool)

(assert (=> b!4051979 (= e!2514139 0)))

(declare-fun b!4051980 () Bool)

(assert (=> b!4051980 (= e!2514139 (+ 1 (size!32375 (t!335877 lt!1443974))))))

(assert (= (and d!1203749 c!699992) b!4051979))

(assert (= (and d!1203749 (not c!699992)) b!4051980))

(declare-fun m!4653695 () Bool)

(assert (=> b!4051980 m!4653695))

(assert (=> b!4051031 d!1203749))

(assert (=> b!4051031 d!1203117))

(assert (=> b!4051031 d!1203099))

(declare-fun bm!287922 () Bool)

(declare-fun call!287927 () Bool)

(assert (=> bm!287922 (= call!287927 (isEmpty!25846 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443996))))))))

(declare-fun b!4051981 () Bool)

(declare-fun e!2514143 () Bool)

(declare-fun e!2514141 () Bool)

(assert (=> b!4051981 (= e!2514143 e!2514141)))

(declare-fun res!1651453 () Bool)

(assert (=> b!4051981 (=> (not res!1651453) (not e!2514141))))

(declare-fun lt!1444364 () Bool)

(assert (=> b!4051981 (= res!1651453 (not lt!1444364))))

(declare-fun b!4051982 () Bool)

(declare-fun res!1651454 () Bool)

(declare-fun e!2514146 () Bool)

(assert (=> b!4051982 (=> res!1651454 e!2514146)))

(assert (=> b!4051982 (= res!1651454 (not (isEmpty!25846 (tail!6294 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443996))))))))))

(declare-fun d!1203751 () Bool)

(declare-fun e!2514142 () Bool)

(assert (=> d!1203751 e!2514142))

(declare-fun c!699994 () Bool)

(assert (=> d!1203751 (= c!699994 (is-EmptyExpr!11844 (regex!6939 (rule!10021 (_1!24322 (get!14207 lt!1443996))))))))

(declare-fun e!2514144 () Bool)

(assert (=> d!1203751 (= lt!1444364 e!2514144)))

(declare-fun c!699993 () Bool)

(assert (=> d!1203751 (= c!699993 (isEmpty!25846 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443996))))))))

(assert (=> d!1203751 (validRegex!5359 (regex!6939 (rule!10021 (_1!24322 (get!14207 lt!1443996)))))))

(assert (=> d!1203751 (= (matchR!5797 (regex!6939 (rule!10021 (_1!24322 (get!14207 lt!1443996)))) (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443996))))) lt!1444364)))

(declare-fun b!4051983 () Bool)

(declare-fun res!1651450 () Bool)

(declare-fun e!2514140 () Bool)

(assert (=> b!4051983 (=> (not res!1651450) (not e!2514140))))

(assert (=> b!4051983 (= res!1651450 (isEmpty!25846 (tail!6294 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443996)))))))))

(declare-fun b!4051984 () Bool)

(declare-fun e!2514145 () Bool)

(assert (=> b!4051984 (= e!2514145 (not lt!1444364))))

(declare-fun b!4051985 () Bool)

(assert (=> b!4051985 (= e!2514144 (matchR!5797 (derivativeStep!3564 (regex!6939 (rule!10021 (_1!24322 (get!14207 lt!1443996)))) (head!8562 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443996)))))) (tail!6294 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443996)))))))))

(declare-fun b!4051986 () Bool)

(declare-fun res!1651449 () Bool)

(assert (=> b!4051986 (=> res!1651449 e!2514143)))

(assert (=> b!4051986 (= res!1651449 e!2514140)))

(declare-fun res!1651451 () Bool)

(assert (=> b!4051986 (=> (not res!1651451) (not e!2514140))))

(assert (=> b!4051986 (= res!1651451 lt!1444364)))

(declare-fun b!4051987 () Bool)

(assert (=> b!4051987 (= e!2514142 (= lt!1444364 call!287927))))

(declare-fun b!4051988 () Bool)

(assert (=> b!4051988 (= e!2514140 (= (head!8562 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443996))))) (c!699689 (regex!6939 (rule!10021 (_1!24322 (get!14207 lt!1443996)))))))))

(declare-fun b!4051989 () Bool)

(assert (=> b!4051989 (= e!2514146 (not (= (head!8562 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443996))))) (c!699689 (regex!6939 (rule!10021 (_1!24322 (get!14207 lt!1443996))))))))))

(declare-fun b!4051990 () Bool)

(declare-fun res!1651448 () Bool)

(assert (=> b!4051990 (=> res!1651448 e!2514143)))

(assert (=> b!4051990 (= res!1651448 (not (is-ElementMatch!11844 (regex!6939 (rule!10021 (_1!24322 (get!14207 lt!1443996)))))))))

(assert (=> b!4051990 (= e!2514145 e!2514143)))

(declare-fun b!4051991 () Bool)

(assert (=> b!4051991 (= e!2514141 e!2514146)))

(declare-fun res!1651455 () Bool)

(assert (=> b!4051991 (=> res!1651455 e!2514146)))

(assert (=> b!4051991 (= res!1651455 call!287927)))

(declare-fun b!4051992 () Bool)

(assert (=> b!4051992 (= e!2514142 e!2514145)))

(declare-fun c!699995 () Bool)

(assert (=> b!4051992 (= c!699995 (is-EmptyLang!11844 (regex!6939 (rule!10021 (_1!24322 (get!14207 lt!1443996))))))))

(declare-fun b!4051993 () Bool)

(assert (=> b!4051993 (= e!2514144 (nullable!4159 (regex!6939 (rule!10021 (_1!24322 (get!14207 lt!1443996))))))))

(declare-fun b!4051994 () Bool)

(declare-fun res!1651452 () Bool)

(assert (=> b!4051994 (=> (not res!1651452) (not e!2514140))))

(assert (=> b!4051994 (= res!1651452 (not call!287927))))

(assert (= (and d!1203751 c!699993) b!4051993))

(assert (= (and d!1203751 (not c!699993)) b!4051985))

(assert (= (and d!1203751 c!699994) b!4051987))

(assert (= (and d!1203751 (not c!699994)) b!4051992))

(assert (= (and b!4051992 c!699995) b!4051984))

(assert (= (and b!4051992 (not c!699995)) b!4051990))

(assert (= (and b!4051990 (not res!1651448)) b!4051986))

(assert (= (and b!4051986 res!1651451) b!4051994))

(assert (= (and b!4051994 res!1651452) b!4051983))

(assert (= (and b!4051983 res!1651450) b!4051988))

(assert (= (and b!4051986 (not res!1651449)) b!4051981))

(assert (= (and b!4051981 res!1651453) b!4051991))

(assert (= (and b!4051991 (not res!1651455)) b!4051982))

(assert (= (and b!4051982 (not res!1651454)) b!4051989))

(assert (= (or b!4051987 b!4051994 b!4051991) bm!287922))

(assert (=> b!4051988 m!4652321))

(declare-fun m!4653697 () Bool)

(assert (=> b!4051988 m!4653697))

(assert (=> d!1203751 m!4652321))

(declare-fun m!4653699 () Bool)

(assert (=> d!1203751 m!4653699))

(declare-fun m!4653701 () Bool)

(assert (=> d!1203751 m!4653701))

(assert (=> b!4051985 m!4652321))

(assert (=> b!4051985 m!4653697))

(assert (=> b!4051985 m!4653697))

(declare-fun m!4653703 () Bool)

(assert (=> b!4051985 m!4653703))

(assert (=> b!4051985 m!4652321))

(declare-fun m!4653705 () Bool)

(assert (=> b!4051985 m!4653705))

(assert (=> b!4051985 m!4653703))

(assert (=> b!4051985 m!4653705))

(declare-fun m!4653707 () Bool)

(assert (=> b!4051985 m!4653707))

(assert (=> bm!287922 m!4652321))

(assert (=> bm!287922 m!4653699))

(assert (=> b!4051989 m!4652321))

(assert (=> b!4051989 m!4653697))

(assert (=> b!4051982 m!4652321))

(assert (=> b!4051982 m!4653705))

(assert (=> b!4051982 m!4653705))

(declare-fun m!4653709 () Bool)

(assert (=> b!4051982 m!4653709))

(assert (=> b!4051983 m!4652321))

(assert (=> b!4051983 m!4653705))

(assert (=> b!4051983 m!4653705))

(assert (=> b!4051983 m!4653709))

(declare-fun m!4653711 () Bool)

(assert (=> b!4051993 m!4653711))

(assert (=> b!4051087 d!1203751))

(assert (=> b!4051087 d!1203311))

(assert (=> b!4051087 d!1203307))

(assert (=> b!4051087 d!1203309))

(declare-fun b!4051996 () Bool)

(declare-fun e!2514148 () List!43426)

(assert (=> b!4051996 (= e!2514148 (Cons!43302 (h!48722 (t!335877 lt!1443622)) (++!11341 (t!335877 (t!335877 lt!1443622)) lt!1443595)))))

(declare-fun b!4051995 () Bool)

(assert (=> b!4051995 (= e!2514148 lt!1443595)))

(declare-fun d!1203753 () Bool)

(declare-fun e!2514147 () Bool)

(assert (=> d!1203753 e!2514147))

(declare-fun res!1651457 () Bool)

(assert (=> d!1203753 (=> (not res!1651457) (not e!2514147))))

(declare-fun lt!1444365 () List!43426)

(assert (=> d!1203753 (= res!1651457 (= (content!6596 lt!1444365) (set.union (content!6596 (t!335877 lt!1443622)) (content!6596 lt!1443595))))))

(assert (=> d!1203753 (= lt!1444365 e!2514148)))

(declare-fun c!699996 () Bool)

(assert (=> d!1203753 (= c!699996 (is-Nil!43302 (t!335877 lt!1443622)))))

(assert (=> d!1203753 (= (++!11341 (t!335877 lt!1443622) lt!1443595) lt!1444365)))

(declare-fun b!4051997 () Bool)

(declare-fun res!1651456 () Bool)

(assert (=> b!4051997 (=> (not res!1651456) (not e!2514147))))

(assert (=> b!4051997 (= res!1651456 (= (size!32375 lt!1444365) (+ (size!32375 (t!335877 lt!1443622)) (size!32375 lt!1443595))))))

(declare-fun b!4051998 () Bool)

(assert (=> b!4051998 (= e!2514147 (or (not (= lt!1443595 Nil!43302)) (= lt!1444365 (t!335877 lt!1443622))))))

(assert (= (and d!1203753 c!699996) b!4051995))

(assert (= (and d!1203753 (not c!699996)) b!4051996))

(assert (= (and d!1203753 res!1651457) b!4051997))

(assert (= (and b!4051997 res!1651456) b!4051998))

(declare-fun m!4653713 () Bool)

(assert (=> b!4051996 m!4653713))

(declare-fun m!4653715 () Bool)

(assert (=> d!1203753 m!4653715))

(assert (=> d!1203753 m!4653067))

(assert (=> d!1203753 m!4652165))

(declare-fun m!4653717 () Bool)

(assert (=> b!4051997 m!4653717))

(assert (=> b!4051997 m!4652229))

(assert (=> b!4051997 m!4652169))

(assert (=> b!4051004 d!1203753))

(declare-fun d!1203755 () Bool)

(declare-fun lt!1444366 () Int)

(assert (=> d!1203755 (>= lt!1444366 0)))

(declare-fun e!2514149 () Int)

(assert (=> d!1203755 (= lt!1444366 e!2514149)))

(declare-fun c!699997 () Bool)

(assert (=> d!1203755 (= c!699997 (is-Nil!43302 (t!335877 newSuffix!27)))))

(assert (=> d!1203755 (= (size!32375 (t!335877 newSuffix!27)) lt!1444366)))

(declare-fun b!4051999 () Bool)

(assert (=> b!4051999 (= e!2514149 0)))

(declare-fun b!4052000 () Bool)

(assert (=> b!4052000 (= e!2514149 (+ 1 (size!32375 (t!335877 (t!335877 newSuffix!27)))))))

(assert (= (and d!1203755 c!699997) b!4051999))

(assert (= (and d!1203755 (not c!699997)) b!4052000))

(declare-fun m!4653719 () Bool)

(assert (=> b!4052000 m!4653719))

(assert (=> b!4051016 d!1203755))

(assert (=> d!1202957 d!1203379))

(declare-fun b!4052001 () Bool)

(declare-fun e!2514150 () Bool)

(declare-fun e!2514151 () Bool)

(assert (=> b!4052001 (= e!2514150 e!2514151)))

(declare-fun c!699999 () Bool)

(assert (=> b!4052001 (= c!699999 (is-Union!11844 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))

(declare-fun b!4052002 () Bool)

(declare-fun e!2514154 () Bool)

(declare-fun call!287930 () Bool)

(assert (=> b!4052002 (= e!2514154 call!287930)))

(declare-fun b!4052003 () Bool)

(assert (=> b!4052003 (= e!2514150 e!2514154)))

(declare-fun res!1651462 () Bool)

(assert (=> b!4052003 (= res!1651462 (not (nullable!4159 (reg!12173 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))))

(assert (=> b!4052003 (=> (not res!1651462) (not e!2514154))))

(declare-fun bm!287923 () Bool)

(declare-fun call!287928 () Bool)

(assert (=> bm!287923 (= call!287928 (validRegex!5359 (ite c!699999 (regTwo!24201 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (regTwo!24200 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))))

(declare-fun b!4052004 () Bool)

(declare-fun e!2514156 () Bool)

(assert (=> b!4052004 (= e!2514156 call!287928)))

(declare-fun b!4052005 () Bool)

(declare-fun res!1651458 () Bool)

(assert (=> b!4052005 (=> (not res!1651458) (not e!2514156))))

(declare-fun call!287929 () Bool)

(assert (=> b!4052005 (= res!1651458 call!287929)))

(assert (=> b!4052005 (= e!2514151 e!2514156)))

(declare-fun b!4052006 () Bool)

(declare-fun e!2514153 () Bool)

(assert (=> b!4052006 (= e!2514153 call!287928)))

(declare-fun b!4052007 () Bool)

(declare-fun e!2514155 () Bool)

(assert (=> b!4052007 (= e!2514155 e!2514153)))

(declare-fun res!1651461 () Bool)

(assert (=> b!4052007 (=> (not res!1651461) (not e!2514153))))

(assert (=> b!4052007 (= res!1651461 call!287929)))

(declare-fun bm!287925 () Bool)

(assert (=> bm!287925 (= call!287929 call!287930)))

(declare-fun c!699998 () Bool)

(declare-fun bm!287924 () Bool)

(assert (=> bm!287924 (= call!287930 (validRegex!5359 (ite c!699998 (reg!12173 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (ite c!699999 (regOne!24201 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (regOne!24200 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))))))

(declare-fun d!1203757 () Bool)

(declare-fun res!1651459 () Bool)

(declare-fun e!2514152 () Bool)

(assert (=> d!1203757 (=> res!1651459 e!2514152)))

(assert (=> d!1203757 (= res!1651459 (is-ElementMatch!11844 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))

(assert (=> d!1203757 (= (validRegex!5359 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) e!2514152)))

(declare-fun b!4052008 () Bool)

(declare-fun res!1651460 () Bool)

(assert (=> b!4052008 (=> res!1651460 e!2514155)))

(assert (=> b!4052008 (= res!1651460 (not (is-Concat!19014 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))))

(assert (=> b!4052008 (= e!2514151 e!2514155)))

(declare-fun b!4052009 () Bool)

(assert (=> b!4052009 (= e!2514152 e!2514150)))

(assert (=> b!4052009 (= c!699998 (is-Star!11844 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))))

(assert (= (and d!1203757 (not res!1651459)) b!4052009))

(assert (= (and b!4052009 c!699998) b!4052003))

(assert (= (and b!4052009 (not c!699998)) b!4052001))

(assert (= (and b!4052003 res!1651462) b!4052002))

(assert (= (and b!4052001 c!699999) b!4052005))

(assert (= (and b!4052001 (not c!699999)) b!4052008))

(assert (= (and b!4052005 res!1651458) b!4052004))

(assert (= (and b!4052008 (not res!1651460)) b!4052007))

(assert (= (and b!4052007 res!1651461) b!4052006))

(assert (= (or b!4052004 b!4052006) bm!287923))

(assert (= (or b!4052005 b!4052007) bm!287925))

(assert (= (or b!4052002 bm!287925) bm!287924))

(declare-fun m!4653721 () Bool)

(assert (=> b!4052003 m!4653721))

(declare-fun m!4653723 () Bool)

(assert (=> bm!287923 m!4653723))

(declare-fun m!4653725 () Bool)

(assert (=> bm!287924 m!4653725))

(assert (=> d!1202957 d!1203757))

(assert (=> b!4050827 d!1203333))

(declare-fun d!1203759 () Bool)

(assert (=> d!1203759 (= (head!8562 (++!11341 lt!1443625 newSuffixResult!27)) (h!48722 (++!11341 lt!1443625 newSuffixResult!27)))))

(assert (=> b!4050827 d!1203759))

(declare-fun b!4052011 () Bool)

(declare-fun e!2514158 () List!43426)

(assert (=> b!4052011 (= e!2514158 (Cons!43302 (h!48722 (t!335877 lt!1443622)) (++!11341 (t!335877 (t!335877 lt!1443622)) lt!1443628)))))

(declare-fun b!4052010 () Bool)

(assert (=> b!4052010 (= e!2514158 lt!1443628)))

(declare-fun d!1203761 () Bool)

(declare-fun e!2514157 () Bool)

(assert (=> d!1203761 e!2514157))

(declare-fun res!1651464 () Bool)

(assert (=> d!1203761 (=> (not res!1651464) (not e!2514157))))

(declare-fun lt!1444367 () List!43426)

(assert (=> d!1203761 (= res!1651464 (= (content!6596 lt!1444367) (set.union (content!6596 (t!335877 lt!1443622)) (content!6596 lt!1443628))))))

(assert (=> d!1203761 (= lt!1444367 e!2514158)))

(declare-fun c!700000 () Bool)

(assert (=> d!1203761 (= c!700000 (is-Nil!43302 (t!335877 lt!1443622)))))

(assert (=> d!1203761 (= (++!11341 (t!335877 lt!1443622) lt!1443628) lt!1444367)))

(declare-fun b!4052012 () Bool)

(declare-fun res!1651463 () Bool)

(assert (=> b!4052012 (=> (not res!1651463) (not e!2514157))))

(assert (=> b!4052012 (= res!1651463 (= (size!32375 lt!1444367) (+ (size!32375 (t!335877 lt!1443622)) (size!32375 lt!1443628))))))

(declare-fun b!4052013 () Bool)

(assert (=> b!4052013 (= e!2514157 (or (not (= lt!1443628 Nil!43302)) (= lt!1444367 (t!335877 lt!1443622))))))

(assert (= (and d!1203761 c!700000) b!4052010))

(assert (= (and d!1203761 (not c!700000)) b!4052011))

(assert (= (and d!1203761 res!1651464) b!4052012))

(assert (= (and b!4052012 res!1651463) b!4052013))

(declare-fun m!4653727 () Bool)

(assert (=> b!4052011 m!4653727))

(declare-fun m!4653729 () Bool)

(assert (=> d!1203761 m!4653729))

(assert (=> d!1203761 m!4653067))

(assert (=> d!1203761 m!4651617))

(declare-fun m!4653731 () Bool)

(assert (=> b!4052012 m!4653731))

(assert (=> b!4052012 m!4652229))

(assert (=> b!4052012 m!4651621))

(assert (=> b!4050623 d!1203761))

(declare-fun d!1203763 () Bool)

(declare-fun c!700001 () Bool)

(assert (=> d!1203763 (= c!700001 (is-Nil!43302 lt!1443960))))

(declare-fun e!2514159 () (Set C!23874))

(assert (=> d!1203763 (= (content!6596 lt!1443960) e!2514159)))

(declare-fun b!4052014 () Bool)

(assert (=> b!4052014 (= e!2514159 (as set.empty (Set C!23874)))))

(declare-fun b!4052015 () Bool)

(assert (=> b!4052015 (= e!2514159 (set.union (set.insert (h!48722 lt!1443960) (as set.empty (Set C!23874))) (content!6596 (t!335877 lt!1443960))))))

(assert (= (and d!1203763 c!700001) b!4052014))

(assert (= (and d!1203763 (not c!700001)) b!4052015))

(declare-fun m!4653733 () Bool)

(assert (=> b!4052015 m!4653733))

(declare-fun m!4653735 () Bool)

(assert (=> b!4052015 m!4653735))

(assert (=> d!1203087 d!1203763))

(assert (=> d!1203087 d!1203489))

(declare-fun d!1203765 () Bool)

(declare-fun c!700002 () Bool)

(assert (=> d!1203765 (= c!700002 (is-Nil!43302 lt!1443595))))

(declare-fun e!2514160 () (Set C!23874))

(assert (=> d!1203765 (= (content!6596 lt!1443595) e!2514160)))

(declare-fun b!4052016 () Bool)

(assert (=> b!4052016 (= e!2514160 (as set.empty (Set C!23874)))))

(declare-fun b!4052017 () Bool)

(assert (=> b!4052017 (= e!2514160 (set.union (set.insert (h!48722 lt!1443595) (as set.empty (Set C!23874))) (content!6596 (t!335877 lt!1443595))))))

(assert (= (and d!1203765 c!700002) b!4052016))

(assert (= (and d!1203765 (not c!700002)) b!4052017))

(declare-fun m!4653737 () Bool)

(assert (=> b!4052017 m!4653737))

(declare-fun m!4653739 () Bool)

(assert (=> b!4052017 m!4653739))

(assert (=> d!1203087 d!1203765))

(assert (=> b!4050722 d!1203131))

(declare-fun b!4052019 () Bool)

(declare-fun e!2514162 () List!43426)

(assert (=> b!4052019 (= e!2514162 (Cons!43302 (h!48722 (t!335877 lt!1443622)) (++!11341 (t!335877 (t!335877 lt!1443622)) newSuffixResult!27)))))

(declare-fun b!4052018 () Bool)

(assert (=> b!4052018 (= e!2514162 newSuffixResult!27)))

(declare-fun d!1203767 () Bool)

(declare-fun e!2514161 () Bool)

(assert (=> d!1203767 e!2514161))

(declare-fun res!1651466 () Bool)

(assert (=> d!1203767 (=> (not res!1651466) (not e!2514161))))

(declare-fun lt!1444368 () List!43426)

(assert (=> d!1203767 (= res!1651466 (= (content!6596 lt!1444368) (set.union (content!6596 (t!335877 lt!1443622)) (content!6596 newSuffixResult!27))))))

(assert (=> d!1203767 (= lt!1444368 e!2514162)))

(declare-fun c!700003 () Bool)

(assert (=> d!1203767 (= c!700003 (is-Nil!43302 (t!335877 lt!1443622)))))

(assert (=> d!1203767 (= (++!11341 (t!335877 lt!1443622) newSuffixResult!27) lt!1444368)))

(declare-fun b!4052020 () Bool)

(declare-fun res!1651465 () Bool)

(assert (=> b!4052020 (=> (not res!1651465) (not e!2514161))))

(assert (=> b!4052020 (= res!1651465 (= (size!32375 lt!1444368) (+ (size!32375 (t!335877 lt!1443622)) (size!32375 newSuffixResult!27))))))

(declare-fun b!4052021 () Bool)

(assert (=> b!4052021 (= e!2514161 (or (not (= newSuffixResult!27 Nil!43302)) (= lt!1444368 (t!335877 lt!1443622))))))

(assert (= (and d!1203767 c!700003) b!4052018))

(assert (= (and d!1203767 (not c!700003)) b!4052019))

(assert (= (and d!1203767 res!1651466) b!4052020))

(assert (= (and b!4052020 res!1651465) b!4052021))

(declare-fun m!4653741 () Bool)

(assert (=> b!4052019 m!4653741))

(declare-fun m!4653743 () Bool)

(assert (=> d!1203767 m!4653743))

(assert (=> d!1203767 m!4653067))

(assert (=> d!1203767 m!4651863))

(declare-fun m!4653745 () Bool)

(assert (=> b!4052020 m!4653745))

(assert (=> b!4052020 m!4652229))

(assert (=> b!4052020 m!4651867))

(assert (=> b!4051034 d!1203767))

(declare-fun d!1203769 () Bool)

(declare-fun lt!1444369 () Int)

(assert (=> d!1203769 (>= lt!1444369 0)))

(declare-fun e!2514163 () Int)

(assert (=> d!1203769 (= lt!1444369 e!2514163)))

(declare-fun c!700004 () Bool)

(assert (=> d!1203769 (= c!700004 (is-Nil!43302 lt!1443908))))

(assert (=> d!1203769 (= (size!32375 lt!1443908) lt!1444369)))

(declare-fun b!4052022 () Bool)

(assert (=> b!4052022 (= e!2514163 0)))

(declare-fun b!4052023 () Bool)

(assert (=> b!4052023 (= e!2514163 (+ 1 (size!32375 (t!335877 lt!1443908))))))

(assert (= (and d!1203769 c!700004) b!4052022))

(assert (= (and d!1203769 (not c!700004)) b!4052023))

(declare-fun m!4653747 () Bool)

(assert (=> b!4052023 m!4653747))

(assert (=> b!4050853 d!1203769))

(assert (=> b!4050853 d!1203115))

(declare-fun d!1203771 () Bool)

(declare-fun lt!1444370 () Int)

(assert (=> d!1203771 (>= lt!1444370 0)))

(declare-fun e!2514164 () Int)

(assert (=> d!1203771 (= lt!1444370 e!2514164)))

(declare-fun c!700005 () Bool)

(assert (=> d!1203771 (= c!700005 (is-Nil!43302 suffixResult!105))))

(assert (=> d!1203771 (= (size!32375 suffixResult!105) lt!1444370)))

(declare-fun b!4052024 () Bool)

(assert (=> b!4052024 (= e!2514164 0)))

(declare-fun b!4052025 () Bool)

(assert (=> b!4052025 (= e!2514164 (+ 1 (size!32375 (t!335877 suffixResult!105))))))

(assert (= (and d!1203771 c!700005) b!4052024))

(assert (= (and d!1203771 (not c!700005)) b!4052025))

(declare-fun m!4653749 () Bool)

(assert (=> b!4052025 m!4653749))

(assert (=> b!4050853 d!1203771))

(declare-fun b!4052027 () Bool)

(declare-fun e!2514166 () List!43426)

(assert (=> b!4052027 (= e!2514166 (Cons!43302 (h!48722 (t!335877 newSuffix!27)) (++!11341 (t!335877 (t!335877 newSuffix!27)) lt!1443636)))))

(declare-fun b!4052026 () Bool)

(assert (=> b!4052026 (= e!2514166 lt!1443636)))

(declare-fun d!1203773 () Bool)

(declare-fun e!2514165 () Bool)

(assert (=> d!1203773 e!2514165))

(declare-fun res!1651468 () Bool)

(assert (=> d!1203773 (=> (not res!1651468) (not e!2514165))))

(declare-fun lt!1444371 () List!43426)

(assert (=> d!1203773 (= res!1651468 (= (content!6596 lt!1444371) (set.union (content!6596 (t!335877 newSuffix!27)) (content!6596 lt!1443636))))))

(assert (=> d!1203773 (= lt!1444371 e!2514166)))

(declare-fun c!700006 () Bool)

(assert (=> d!1203773 (= c!700006 (is-Nil!43302 (t!335877 newSuffix!27)))))

(assert (=> d!1203773 (= (++!11341 (t!335877 newSuffix!27) lt!1443636) lt!1444371)))

(declare-fun b!4052028 () Bool)

(declare-fun res!1651467 () Bool)

(assert (=> b!4052028 (=> (not res!1651467) (not e!2514165))))

(assert (=> b!4052028 (= res!1651467 (= (size!32375 lt!1444371) (+ (size!32375 (t!335877 newSuffix!27)) (size!32375 lt!1443636))))))

(declare-fun b!4052029 () Bool)

(assert (=> b!4052029 (= e!2514165 (or (not (= lt!1443636 Nil!43302)) (= lt!1444371 (t!335877 newSuffix!27))))))

(assert (= (and d!1203773 c!700006) b!4052026))

(assert (= (and d!1203773 (not c!700006)) b!4052027))

(assert (= (and d!1203773 res!1651468) b!4052028))

(assert (= (and b!4052028 res!1651467) b!4052029))

(declare-fun m!4653751 () Bool)

(assert (=> b!4052027 m!4653751))

(declare-fun m!4653753 () Bool)

(assert (=> d!1203773 m!4653753))

(assert (=> d!1203773 m!4653131))

(assert (=> d!1203773 m!4652103))

(declare-fun m!4653755 () Bool)

(assert (=> b!4052028 m!4653755))

(assert (=> b!4052028 m!4652183))

(assert (=> b!4052028 m!4652107))

(assert (=> b!4050976 d!1203773))

(declare-fun d!1203775 () Bool)

(declare-fun lt!1444372 () Int)

(assert (=> d!1203775 (>= lt!1444372 0)))

(declare-fun e!2514167 () Int)

(assert (=> d!1203775 (= lt!1444372 e!2514167)))

(declare-fun c!700007 () Bool)

(assert (=> d!1203775 (= c!700007 (is-Nil!43302 lt!1443600))))

(assert (=> d!1203775 (= (size!32375 lt!1443600) lt!1444372)))

(declare-fun b!4052030 () Bool)

(assert (=> b!4052030 (= e!2514167 0)))

(declare-fun b!4052031 () Bool)

(assert (=> b!4052031 (= e!2514167 (+ 1 (size!32375 (t!335877 lt!1443600))))))

(assert (= (and d!1203775 c!700007) b!4052030))

(assert (= (and d!1203775 (not c!700007)) b!4052031))

(declare-fun m!4653757 () Bool)

(assert (=> b!4052031 m!4653757))

(assert (=> b!4051072 d!1203775))

(assert (=> b!4051072 d!1202993))

(declare-fun d!1203777 () Bool)

(declare-fun c!700008 () Bool)

(assert (=> d!1203777 (= c!700008 (is-Nil!43302 lt!1443897))))

(declare-fun e!2514168 () (Set C!23874))

(assert (=> d!1203777 (= (content!6596 lt!1443897) e!2514168)))

(declare-fun b!4052032 () Bool)

(assert (=> b!4052032 (= e!2514168 (as set.empty (Set C!23874)))))

(declare-fun b!4052033 () Bool)

(assert (=> b!4052033 (= e!2514168 (set.union (set.insert (h!48722 lt!1443897) (as set.empty (Set C!23874))) (content!6596 (t!335877 lt!1443897))))))

(assert (= (and d!1203777 c!700008) b!4052032))

(assert (= (and d!1203777 (not c!700008)) b!4052033))

(declare-fun m!4653759 () Bool)

(assert (=> b!4052033 m!4653759))

(declare-fun m!4653761 () Bool)

(assert (=> b!4052033 m!4653761))

(assert (=> d!1202995 d!1203777))

(assert (=> d!1202995 d!1203329))

(assert (=> d!1202995 d!1203525))

(declare-fun b!4052034 () Bool)

(declare-fun e!2514169 () Option!9353)

(declare-fun lt!1444375 () tuple2!42380)

(assert (=> b!4052034 (= e!2514169 (Some!9352 (tuple2!42377 (Token!13017 (apply!10128 (transformation!6939 (h!48724 rules!2999)) (seqFromList!5156 (_1!24324 lt!1444375))) (h!48724 rules!2999) (size!32379 (seqFromList!5156 (_1!24324 lt!1444375))) (_1!24324 lt!1444375)) (_2!24324 lt!1444375))))))

(declare-fun lt!1444373 () Unit!62585)

(assert (=> b!4052034 (= lt!1444373 (longestMatchIsAcceptedByMatchOrIsEmpty!1369 (regex!6939 (h!48724 rules!2999)) lt!1443629))))

(declare-fun res!1651474 () Bool)

(assert (=> b!4052034 (= res!1651474 (isEmpty!25846 (_1!24324 (findLongestMatchInner!1396 (regex!6939 (h!48724 rules!2999)) Nil!43302 (size!32375 Nil!43302) lt!1443629 lt!1443629 (size!32375 lt!1443629)))))))

(declare-fun e!2514170 () Bool)

(assert (=> b!4052034 (=> res!1651474 e!2514170)))

(assert (=> b!4052034 e!2514170))

(declare-fun lt!1444376 () Unit!62585)

(assert (=> b!4052034 (= lt!1444376 lt!1444373)))

(declare-fun lt!1444377 () Unit!62585)

(assert (=> b!4052034 (= lt!1444377 (lemmaSemiInverse!1918 (transformation!6939 (h!48724 rules!2999)) (seqFromList!5156 (_1!24324 lt!1444375))))))

(declare-fun b!4052035 () Bool)

(declare-fun res!1651469 () Bool)

(declare-fun e!2514172 () Bool)

(assert (=> b!4052035 (=> (not res!1651469) (not e!2514172))))

(declare-fun lt!1444374 () Option!9353)

(assert (=> b!4052035 (= res!1651469 (= (rule!10021 (_1!24322 (get!14207 lt!1444374))) (h!48724 rules!2999)))))

(declare-fun b!4052036 () Bool)

(declare-fun e!2514171 () Bool)

(assert (=> b!4052036 (= e!2514171 e!2514172)))

(declare-fun res!1651473 () Bool)

(assert (=> b!4052036 (=> (not res!1651473) (not e!2514172))))

(assert (=> b!4052036 (= res!1651473 (matchR!5797 (regex!6939 (h!48724 rules!2999)) (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1444374))))))))

(declare-fun d!1203779 () Bool)

(assert (=> d!1203779 e!2514171))

(declare-fun res!1651475 () Bool)

(assert (=> d!1203779 (=> res!1651475 e!2514171)))

(assert (=> d!1203779 (= res!1651475 (isEmpty!25847 lt!1444374))))

(assert (=> d!1203779 (= lt!1444374 e!2514169)))

(declare-fun c!700009 () Bool)

(assert (=> d!1203779 (= c!700009 (isEmpty!25846 (_1!24324 lt!1444375)))))

(assert (=> d!1203779 (= lt!1444375 (findLongestMatch!1309 (regex!6939 (h!48724 rules!2999)) lt!1443629))))

(assert (=> d!1203779 (ruleValid!2869 thiss!21717 (h!48724 rules!2999))))

(assert (=> d!1203779 (= (maxPrefixOneRule!2838 thiss!21717 (h!48724 rules!2999) lt!1443629) lt!1444374)))

(declare-fun b!4052037 () Bool)

(assert (=> b!4052037 (= e!2514169 None!9352)))

(declare-fun b!4052038 () Bool)

(declare-fun res!1651471 () Bool)

(assert (=> b!4052038 (=> (not res!1651471) (not e!2514172))))

(assert (=> b!4052038 (= res!1651471 (< (size!32375 (_2!24322 (get!14207 lt!1444374))) (size!32375 lt!1443629)))))

(declare-fun b!4052039 () Bool)

(declare-fun res!1651470 () Bool)

(assert (=> b!4052039 (=> (not res!1651470) (not e!2514172))))

(assert (=> b!4052039 (= res!1651470 (= (value!218397 (_1!24322 (get!14207 lt!1444374))) (apply!10128 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1444374)))) (seqFromList!5156 (originalCharacters!7539 (_1!24322 (get!14207 lt!1444374)))))))))

(declare-fun b!4052040 () Bool)

(declare-fun res!1651472 () Bool)

(assert (=> b!4052040 (=> (not res!1651472) (not e!2514172))))

(assert (=> b!4052040 (= res!1651472 (= (++!11341 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1444374)))) (_2!24322 (get!14207 lt!1444374))) lt!1443629))))

(declare-fun b!4052041 () Bool)

(assert (=> b!4052041 (= e!2514172 (= (size!32376 (_1!24322 (get!14207 lt!1444374))) (size!32375 (originalCharacters!7539 (_1!24322 (get!14207 lt!1444374))))))))

(declare-fun b!4052042 () Bool)

(assert (=> b!4052042 (= e!2514170 (matchR!5797 (regex!6939 (h!48724 rules!2999)) (_1!24324 (findLongestMatchInner!1396 (regex!6939 (h!48724 rules!2999)) Nil!43302 (size!32375 Nil!43302) lt!1443629 lt!1443629 (size!32375 lt!1443629)))))))

(assert (= (and d!1203779 c!700009) b!4052037))

(assert (= (and d!1203779 (not c!700009)) b!4052034))

(assert (= (and b!4052034 (not res!1651474)) b!4052042))

(assert (= (and d!1203779 (not res!1651475)) b!4052036))

(assert (= (and b!4052036 res!1651473) b!4052040))

(assert (= (and b!4052040 res!1651472) b!4052038))

(assert (= (and b!4052038 res!1651471) b!4052035))

(assert (= (and b!4052035 res!1651469) b!4052039))

(assert (= (and b!4052039 res!1651470) b!4052041))

(declare-fun m!4653763 () Bool)

(assert (=> b!4052036 m!4653763))

(declare-fun m!4653765 () Bool)

(assert (=> b!4052036 m!4653765))

(assert (=> b!4052036 m!4653765))

(declare-fun m!4653767 () Bool)

(assert (=> b!4052036 m!4653767))

(assert (=> b!4052036 m!4653767))

(declare-fun m!4653769 () Bool)

(assert (=> b!4052036 m!4653769))

(declare-fun m!4653771 () Bool)

(assert (=> d!1203779 m!4653771))

(declare-fun m!4653773 () Bool)

(assert (=> d!1203779 m!4653773))

(declare-fun m!4653775 () Bool)

(assert (=> d!1203779 m!4653775))

(assert (=> d!1203779 m!4653083))

(assert (=> b!4052034 m!4651683))

(assert (=> b!4052034 m!4651625))

(declare-fun m!4653777 () Bool)

(assert (=> b!4052034 m!4653777))

(declare-fun m!4653779 () Bool)

(assert (=> b!4052034 m!4653779))

(declare-fun m!4653781 () Bool)

(assert (=> b!4052034 m!4653781))

(assert (=> b!4052034 m!4653779))

(assert (=> b!4052034 m!4653779))

(declare-fun m!4653783 () Bool)

(assert (=> b!4052034 m!4653783))

(declare-fun m!4653785 () Bool)

(assert (=> b!4052034 m!4653785))

(assert (=> b!4052034 m!4653779))

(declare-fun m!4653787 () Bool)

(assert (=> b!4052034 m!4653787))

(assert (=> b!4052034 m!4651625))

(declare-fun m!4653789 () Bool)

(assert (=> b!4052034 m!4653789))

(assert (=> b!4052034 m!4651683))

(assert (=> b!4052035 m!4653763))

(assert (=> b!4052042 m!4651683))

(assert (=> b!4052042 m!4651625))

(assert (=> b!4052042 m!4651683))

(assert (=> b!4052042 m!4651625))

(assert (=> b!4052042 m!4653777))

(declare-fun m!4653791 () Bool)

(assert (=> b!4052042 m!4653791))

(assert (=> b!4052038 m!4653763))

(declare-fun m!4653793 () Bool)

(assert (=> b!4052038 m!4653793))

(assert (=> b!4052038 m!4651625))

(assert (=> b!4052041 m!4653763))

(declare-fun m!4653795 () Bool)

(assert (=> b!4052041 m!4653795))

(assert (=> b!4052039 m!4653763))

(declare-fun m!4653797 () Bool)

(assert (=> b!4052039 m!4653797))

(assert (=> b!4052039 m!4653797))

(declare-fun m!4653799 () Bool)

(assert (=> b!4052039 m!4653799))

(assert (=> b!4052040 m!4653763))

(assert (=> b!4052040 m!4653765))

(assert (=> b!4052040 m!4653765))

(assert (=> b!4052040 m!4653767))

(assert (=> b!4052040 m!4653767))

(declare-fun m!4653801 () Bool)

(assert (=> b!4052040 m!4653801))

(assert (=> bm!287850 d!1203779))

(declare-fun d!1203781 () Bool)

(assert (=> d!1203781 (= (list!16133 lt!1443978) (list!16135 (c!699688 lt!1443978)))))

(declare-fun bs!591621 () Bool)

(assert (= bs!591621 d!1203781))

(declare-fun m!4653803 () Bool)

(assert (=> bs!591621 m!4653803))

(assert (=> d!1203121 d!1203781))

(assert (=> b!4051002 d!1203319))

(assert (=> b!4051002 d!1203115))

(declare-fun d!1203783 () Bool)

(declare-fun e!2514174 () Bool)

(assert (=> d!1203783 e!2514174))

(declare-fun res!1651479 () Bool)

(assert (=> d!1203783 (=> res!1651479 e!2514174)))

(declare-fun lt!1444378 () Bool)

(assert (=> d!1203783 (= res!1651479 (not lt!1444378))))

(declare-fun e!2514173 () Bool)

(assert (=> d!1203783 (= lt!1444378 e!2514173)))

(declare-fun res!1651477 () Bool)

(assert (=> d!1203783 (=> res!1651477 e!2514173)))

(assert (=> d!1203783 (= res!1651477 (is-Nil!43302 prefix!494))))

(assert (=> d!1203783 (= (isPrefix!4026 prefix!494 (++!11341 prefix!494 suffix!1299)) lt!1444378)))

(declare-fun b!4052045 () Bool)

(declare-fun e!2514175 () Bool)

(assert (=> b!4052045 (= e!2514175 (isPrefix!4026 (tail!6294 prefix!494) (tail!6294 (++!11341 prefix!494 suffix!1299))))))

(declare-fun b!4052044 () Bool)

(declare-fun res!1651476 () Bool)

(assert (=> b!4052044 (=> (not res!1651476) (not e!2514175))))

(assert (=> b!4052044 (= res!1651476 (= (head!8562 prefix!494) (head!8562 (++!11341 prefix!494 suffix!1299))))))

(declare-fun b!4052043 () Bool)

(assert (=> b!4052043 (= e!2514173 e!2514175)))

(declare-fun res!1651478 () Bool)

(assert (=> b!4052043 (=> (not res!1651478) (not e!2514175))))

(assert (=> b!4052043 (= res!1651478 (not (is-Nil!43302 (++!11341 prefix!494 suffix!1299))))))

(declare-fun b!4052046 () Bool)

(assert (=> b!4052046 (= e!2514174 (>= (size!32375 (++!11341 prefix!494 suffix!1299)) (size!32375 prefix!494)))))

(assert (= (and d!1203783 (not res!1651477)) b!4052043))

(assert (= (and b!4052043 res!1651478) b!4052044))

(assert (= (and b!4052044 res!1651476) b!4052045))

(assert (= (and d!1203783 (not res!1651479)) b!4052046))

(assert (=> b!4052045 m!4652141))

(assert (=> b!4052045 m!4651285))

(assert (=> b!4052045 m!4653587))

(assert (=> b!4052045 m!4652141))

(assert (=> b!4052045 m!4653587))

(declare-fun m!4653805 () Bool)

(assert (=> b!4052045 m!4653805))

(assert (=> b!4052044 m!4652145))

(assert (=> b!4052044 m!4651285))

(assert (=> b!4052044 m!4653591))

(assert (=> b!4052046 m!4651285))

(assert (=> b!4052046 m!4653593))

(assert (=> b!4052046 m!4651299))

(assert (=> d!1203081 d!1203783))

(assert (=> d!1203081 d!1203061))

(declare-fun d!1203785 () Bool)

(assert (=> d!1203785 (isPrefix!4026 prefix!494 (++!11341 prefix!494 suffix!1299))))

(assert (=> d!1203785 true))

(declare-fun _$46!1812 () Unit!62585)

(assert (=> d!1203785 (= (choose!24575 prefix!494 suffix!1299) _$46!1812)))

(declare-fun bs!591622 () Bool)

(assert (= bs!591622 d!1203785))

(assert (=> bs!591622 m!4651285))

(assert (=> bs!591622 m!4651285))

(assert (=> bs!591622 m!4652147))

(assert (=> d!1203081 d!1203785))

(declare-fun d!1203787 () Bool)

(assert (=> d!1203787 (= (head!8562 newSuffix!27) (h!48722 newSuffix!27))))

(assert (=> b!4050611 d!1203787))

(declare-fun d!1203789 () Bool)

(assert (=> d!1203789 (= (head!8562 suffix!1299) (h!48722 suffix!1299))))

(assert (=> b!4050611 d!1203789))

(declare-fun d!1203791 () Bool)

(declare-fun lt!1444379 () Int)

(assert (=> d!1203791 (>= lt!1444379 0)))

(declare-fun e!2514176 () Int)

(assert (=> d!1203791 (= lt!1444379 e!2514176)))

(declare-fun c!700010 () Bool)

(assert (=> d!1203791 (= c!700010 (is-Nil!43302 lt!1443617))))

(assert (=> d!1203791 (= (size!32375 lt!1443617) lt!1444379)))

(declare-fun b!4052047 () Bool)

(assert (=> b!4052047 (= e!2514176 0)))

(declare-fun b!4052048 () Bool)

(assert (=> b!4052048 (= e!2514176 (+ 1 (size!32375 (t!335877 lt!1443617))))))

(assert (= (and d!1203791 c!700010) b!4052047))

(assert (= (and d!1203791 (not c!700010)) b!4052048))

(declare-fun m!4653807 () Bool)

(assert (=> b!4052048 m!4653807))

(assert (=> b!4050803 d!1203791))

(assert (=> b!4050803 d!1202993))

(declare-fun d!1203793 () Bool)

(declare-fun lt!1444380 () Int)

(assert (=> d!1203793 (>= lt!1444380 0)))

(declare-fun e!2514177 () Int)

(assert (=> d!1203793 (= lt!1444380 e!2514177)))

(declare-fun c!700011 () Bool)

(assert (=> d!1203793 (= c!700011 (is-Nil!43302 lt!1443968))))

(assert (=> d!1203793 (= (size!32375 lt!1443968) lt!1444380)))

(declare-fun b!4052049 () Bool)

(assert (=> b!4052049 (= e!2514177 0)))

(declare-fun b!4052050 () Bool)

(assert (=> b!4052050 (= e!2514177 (+ 1 (size!32375 (t!335877 lt!1443968))))))

(assert (= (and d!1203793 c!700011) b!4052049))

(assert (= (and d!1203793 (not c!700011)) b!4052050))

(declare-fun m!4653809 () Bool)

(assert (=> b!4052050 m!4653809))

(assert (=> b!4051019 d!1203793))

(assert (=> b!4051019 d!1203115))

(declare-fun d!1203795 () Bool)

(declare-fun lt!1444381 () Int)

(assert (=> d!1203795 (>= lt!1444381 0)))

(declare-fun e!2514178 () Int)

(assert (=> d!1203795 (= lt!1444381 e!2514178)))

(declare-fun c!700012 () Bool)

(assert (=> d!1203795 (= c!700012 (is-Nil!43302 lt!1443648))))

(assert (=> d!1203795 (= (size!32375 lt!1443648) lt!1444381)))

(declare-fun b!4052051 () Bool)

(assert (=> b!4052051 (= e!2514178 0)))

(declare-fun b!4052052 () Bool)

(assert (=> b!4052052 (= e!2514178 (+ 1 (size!32375 (t!335877 lt!1443648))))))

(assert (= (and d!1203795 c!700012) b!4052051))

(assert (= (and d!1203795 (not c!700012)) b!4052052))

(declare-fun m!4653811 () Bool)

(assert (=> b!4052052 m!4653811))

(assert (=> b!4051019 d!1203795))

(declare-fun b!4052054 () Bool)

(declare-fun e!2514180 () List!43426)

(assert (=> b!4052054 (= e!2514180 (Cons!43302 (h!48722 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443903))))) (++!11341 (t!335877 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443903))))) (_2!24322 (get!14207 lt!1443903)))))))

(declare-fun b!4052053 () Bool)

(assert (=> b!4052053 (= e!2514180 (_2!24322 (get!14207 lt!1443903)))))

(declare-fun d!1203797 () Bool)

(declare-fun e!2514179 () Bool)

(assert (=> d!1203797 e!2514179))

(declare-fun res!1651481 () Bool)

(assert (=> d!1203797 (=> (not res!1651481) (not e!2514179))))

(declare-fun lt!1444382 () List!43426)

(assert (=> d!1203797 (= res!1651481 (= (content!6596 lt!1444382) (set.union (content!6596 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443903))))) (content!6596 (_2!24322 (get!14207 lt!1443903))))))))

(assert (=> d!1203797 (= lt!1444382 e!2514180)))

(declare-fun c!700013 () Bool)

(assert (=> d!1203797 (= c!700013 (is-Nil!43302 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443903))))))))

(assert (=> d!1203797 (= (++!11341 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443903)))) (_2!24322 (get!14207 lt!1443903))) lt!1444382)))

(declare-fun b!4052055 () Bool)

(declare-fun res!1651480 () Bool)

(assert (=> b!4052055 (=> (not res!1651480) (not e!2514179))))

(assert (=> b!4052055 (= res!1651480 (= (size!32375 lt!1444382) (+ (size!32375 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443903))))) (size!32375 (_2!24322 (get!14207 lt!1443903))))))))

(declare-fun b!4052056 () Bool)

(assert (=> b!4052056 (= e!2514179 (or (not (= (_2!24322 (get!14207 lt!1443903)) Nil!43302)) (= lt!1444382 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443903)))))))))

(assert (= (and d!1203797 c!700013) b!4052053))

(assert (= (and d!1203797 (not c!700013)) b!4052054))

(assert (= (and d!1203797 res!1651481) b!4052055))

(assert (= (and b!4052055 res!1651480) b!4052056))

(declare-fun m!4653813 () Bool)

(assert (=> b!4052054 m!4653813))

(declare-fun m!4653815 () Bool)

(assert (=> d!1203797 m!4653815))

(assert (=> d!1203797 m!4651887))

(declare-fun m!4653817 () Bool)

(assert (=> d!1203797 m!4653817))

(declare-fun m!4653819 () Bool)

(assert (=> d!1203797 m!4653819))

(declare-fun m!4653821 () Bool)

(assert (=> b!4052055 m!4653821))

(assert (=> b!4052055 m!4651887))

(declare-fun m!4653823 () Bool)

(assert (=> b!4052055 m!4653823))

(assert (=> b!4052055 m!4651915))

(assert (=> b!4050840 d!1203797))

(assert (=> b!4050840 d!1203541))

(assert (=> b!4050840 d!1203543))

(assert (=> b!4050840 d!1203377))

(assert (=> b!4050633 d!1203293))

(declare-fun d!1203799 () Bool)

(declare-fun lt!1444383 () Int)

(assert (=> d!1203799 (>= lt!1444383 0)))

(declare-fun e!2514181 () Int)

(assert (=> d!1203799 (= lt!1444383 e!2514181)))

(declare-fun c!700014 () Bool)

(assert (=> d!1203799 (= c!700014 (is-Nil!43302 (_2!24322 (get!14207 lt!1443996))))))

(assert (=> d!1203799 (= (size!32375 (_2!24322 (get!14207 lt!1443996))) lt!1444383)))

(declare-fun b!4052057 () Bool)

(assert (=> b!4052057 (= e!2514181 0)))

(declare-fun b!4052058 () Bool)

(assert (=> b!4052058 (= e!2514181 (+ 1 (size!32375 (t!335877 (_2!24322 (get!14207 lt!1443996))))))))

(assert (= (and d!1203799 c!700014) b!4052057))

(assert (= (and d!1203799 (not c!700014)) b!4052058))

(declare-fun m!4653825 () Bool)

(assert (=> b!4052058 m!4653825))

(assert (=> b!4051092 d!1203799))

(assert (=> b!4051092 d!1203311))

(assert (=> b!4051092 d!1203361))

(assert (=> d!1203015 d!1203629))

(declare-fun d!1203801 () Bool)

(declare-fun lt!1444384 () Int)

(assert (=> d!1203801 (>= lt!1444384 0)))

(declare-fun e!2514182 () Int)

(assert (=> d!1203801 (= lt!1444384 e!2514182)))

(declare-fun c!700015 () Bool)

(assert (=> d!1203801 (= c!700015 (is-Nil!43302 lt!1443897))))

(assert (=> d!1203801 (= (size!32375 lt!1443897) lt!1444384)))

(declare-fun b!4052059 () Bool)

(assert (=> b!4052059 (= e!2514182 0)))

(declare-fun b!4052060 () Bool)

(assert (=> b!4052060 (= e!2514182 (+ 1 (size!32375 (t!335877 lt!1443897))))))

(assert (= (and d!1203801 c!700015) b!4052059))

(assert (= (and d!1203801 (not c!700015)) b!4052060))

(declare-fun m!4653827 () Bool)

(assert (=> b!4052060 m!4653827))

(assert (=> b!4050824 d!1203801))

(assert (=> b!4050824 d!1202993))

(assert (=> b!4050824 d!1203567))

(declare-fun d!1203803 () Bool)

(declare-fun e!2514184 () Bool)

(assert (=> d!1203803 e!2514184))

(declare-fun res!1651485 () Bool)

(assert (=> d!1203803 (=> res!1651485 e!2514184)))

(declare-fun lt!1444385 () Bool)

(assert (=> d!1203803 (= res!1651485 (not lt!1444385))))

(declare-fun e!2514183 () Bool)

(assert (=> d!1203803 (= lt!1444385 e!2514183)))

(declare-fun res!1651483 () Bool)

(assert (=> d!1203803 (=> res!1651483 e!2514183)))

(assert (=> d!1203803 (= res!1651483 (is-Nil!43302 lt!1443622))))

(assert (=> d!1203803 (= (isPrefix!4026 lt!1443622 (++!11341 lt!1443622 suffixResult!105)) lt!1444385)))

(declare-fun b!4052063 () Bool)

(declare-fun e!2514185 () Bool)

(assert (=> b!4052063 (= e!2514185 (isPrefix!4026 (tail!6294 lt!1443622) (tail!6294 (++!11341 lt!1443622 suffixResult!105))))))

(declare-fun b!4052062 () Bool)

(declare-fun res!1651482 () Bool)

(assert (=> b!4052062 (=> (not res!1651482) (not e!2514185))))

(assert (=> b!4052062 (= res!1651482 (= (head!8562 lt!1443622) (head!8562 (++!11341 lt!1443622 suffixResult!105))))))

(declare-fun b!4052061 () Bool)

(assert (=> b!4052061 (= e!2514183 e!2514185)))

(declare-fun res!1651484 () Bool)

(assert (=> b!4052061 (=> (not res!1651484) (not e!2514185))))

(assert (=> b!4052061 (= res!1651484 (not (is-Nil!43302 (++!11341 lt!1443622 suffixResult!105))))))

(declare-fun b!4052064 () Bool)

(assert (=> b!4052064 (= e!2514184 (>= (size!32375 (++!11341 lt!1443622 suffixResult!105)) (size!32375 lt!1443622)))))

(assert (= (and d!1203803 (not res!1651483)) b!4052061))

(assert (= (and b!4052061 res!1651484) b!4052062))

(assert (= (and b!4052062 res!1651482) b!4052063))

(assert (= (and d!1203803 (not res!1651485)) b!4052064))

(assert (=> b!4052063 m!4651639))

(assert (=> b!4052063 m!4651305))

(declare-fun m!4653829 () Bool)

(assert (=> b!4052063 m!4653829))

(assert (=> b!4052063 m!4651639))

(assert (=> b!4052063 m!4653829))

(declare-fun m!4653831 () Bool)

(assert (=> b!4052063 m!4653831))

(assert (=> b!4052062 m!4651645))

(assert (=> b!4052062 m!4651305))

(declare-fun m!4653833 () Bool)

(assert (=> b!4052062 m!4653833))

(assert (=> b!4052064 m!4651305))

(declare-fun m!4653835 () Bool)

(assert (=> b!4052064 m!4653835))

(assert (=> b!4052064 m!4651297))

(assert (=> d!1203075 d!1203803))

(assert (=> d!1203075 d!1203013))

(declare-fun d!1203805 () Bool)

(assert (=> d!1203805 (isPrefix!4026 lt!1443622 (++!11341 lt!1443622 suffixResult!105))))

(assert (=> d!1203805 true))

(declare-fun _$46!1813 () Unit!62585)

(assert (=> d!1203805 (= (choose!24575 lt!1443622 suffixResult!105) _$46!1813)))

(declare-fun bs!591623 () Bool)

(assert (= bs!591623 d!1203805))

(assert (=> bs!591623 m!4651305))

(assert (=> bs!591623 m!4651305))

(assert (=> bs!591623 m!4652135))

(assert (=> d!1203075 d!1203805))

(declare-fun bm!287926 () Bool)

(declare-fun call!287931 () Bool)

(assert (=> bm!287926 (= call!287931 (isEmpty!25846 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443859))))))))

(declare-fun b!4052065 () Bool)

(declare-fun e!2514189 () Bool)

(declare-fun e!2514187 () Bool)

(assert (=> b!4052065 (= e!2514189 e!2514187)))

(declare-fun res!1651491 () Bool)

(assert (=> b!4052065 (=> (not res!1651491) (not e!2514187))))

(declare-fun lt!1444386 () Bool)

(assert (=> b!4052065 (= res!1651491 (not lt!1444386))))

(declare-fun b!4052066 () Bool)

(declare-fun res!1651492 () Bool)

(declare-fun e!2514192 () Bool)

(assert (=> b!4052066 (=> res!1651492 e!2514192)))

(assert (=> b!4052066 (= res!1651492 (not (isEmpty!25846 (tail!6294 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443859))))))))))

(declare-fun d!1203807 () Bool)

(declare-fun e!2514188 () Bool)

(assert (=> d!1203807 e!2514188))

(declare-fun c!700017 () Bool)

(assert (=> d!1203807 (= c!700017 (is-EmptyExpr!11844 (regex!6939 (rule!10021 token!484))))))

(declare-fun e!2514190 () Bool)

(assert (=> d!1203807 (= lt!1444386 e!2514190)))

(declare-fun c!700016 () Bool)

(assert (=> d!1203807 (= c!700016 (isEmpty!25846 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443859))))))))

(assert (=> d!1203807 (validRegex!5359 (regex!6939 (rule!10021 token!484)))))

(assert (=> d!1203807 (= (matchR!5797 (regex!6939 (rule!10021 token!484)) (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443859))))) lt!1444386)))

(declare-fun b!4052067 () Bool)

(declare-fun res!1651488 () Bool)

(declare-fun e!2514186 () Bool)

(assert (=> b!4052067 (=> (not res!1651488) (not e!2514186))))

(assert (=> b!4052067 (= res!1651488 (isEmpty!25846 (tail!6294 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443859)))))))))

(declare-fun b!4052068 () Bool)

(declare-fun e!2514191 () Bool)

(assert (=> b!4052068 (= e!2514191 (not lt!1444386))))

(declare-fun b!4052069 () Bool)

(assert (=> b!4052069 (= e!2514190 (matchR!5797 (derivativeStep!3564 (regex!6939 (rule!10021 token!484)) (head!8562 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443859)))))) (tail!6294 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443859)))))))))

(declare-fun b!4052070 () Bool)

(declare-fun res!1651487 () Bool)

(assert (=> b!4052070 (=> res!1651487 e!2514189)))

(assert (=> b!4052070 (= res!1651487 e!2514186)))

(declare-fun res!1651489 () Bool)

(assert (=> b!4052070 (=> (not res!1651489) (not e!2514186))))

(assert (=> b!4052070 (= res!1651489 lt!1444386)))

(declare-fun b!4052071 () Bool)

(assert (=> b!4052071 (= e!2514188 (= lt!1444386 call!287931))))

(declare-fun b!4052072 () Bool)

(assert (=> b!4052072 (= e!2514186 (= (head!8562 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443859))))) (c!699689 (regex!6939 (rule!10021 token!484)))))))

(declare-fun b!4052073 () Bool)

(assert (=> b!4052073 (= e!2514192 (not (= (head!8562 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1443859))))) (c!699689 (regex!6939 (rule!10021 token!484))))))))

(declare-fun b!4052074 () Bool)

(declare-fun res!1651486 () Bool)

(assert (=> b!4052074 (=> res!1651486 e!2514189)))

(assert (=> b!4052074 (= res!1651486 (not (is-ElementMatch!11844 (regex!6939 (rule!10021 token!484)))))))

(assert (=> b!4052074 (= e!2514191 e!2514189)))

(declare-fun b!4052075 () Bool)

(assert (=> b!4052075 (= e!2514187 e!2514192)))

(declare-fun res!1651493 () Bool)

(assert (=> b!4052075 (=> res!1651493 e!2514192)))

(assert (=> b!4052075 (= res!1651493 call!287931)))

(declare-fun b!4052076 () Bool)

(assert (=> b!4052076 (= e!2514188 e!2514191)))

(declare-fun c!700018 () Bool)

(assert (=> b!4052076 (= c!700018 (is-EmptyLang!11844 (regex!6939 (rule!10021 token!484))))))

(declare-fun b!4052077 () Bool)

(assert (=> b!4052077 (= e!2514190 (nullable!4159 (regex!6939 (rule!10021 token!484))))))

(declare-fun b!4052078 () Bool)

(declare-fun res!1651490 () Bool)

(assert (=> b!4052078 (=> (not res!1651490) (not e!2514186))))

(assert (=> b!4052078 (= res!1651490 (not call!287931))))

(assert (= (and d!1203807 c!700016) b!4052077))

(assert (= (and d!1203807 (not c!700016)) b!4052069))

(assert (= (and d!1203807 c!700017) b!4052071))

(assert (= (and d!1203807 (not c!700017)) b!4052076))

(assert (= (and b!4052076 c!700018) b!4052068))

(assert (= (and b!4052076 (not c!700018)) b!4052074))

(assert (= (and b!4052074 (not res!1651486)) b!4052070))

(assert (= (and b!4052070 res!1651489) b!4052078))

(assert (= (and b!4052078 res!1651490) b!4052067))

(assert (= (and b!4052067 res!1651488) b!4052072))

(assert (= (and b!4052070 (not res!1651487)) b!4052065))

(assert (= (and b!4052065 res!1651491) b!4052075))

(assert (= (and b!4052075 (not res!1651493)) b!4052066))

(assert (= (and b!4052066 (not res!1651492)) b!4052073))

(assert (= (or b!4052071 b!4052078 b!4052075) bm!287926))

(assert (=> b!4052072 m!4651673))

(declare-fun m!4653837 () Bool)

(assert (=> b!4052072 m!4653837))

(assert (=> d!1203807 m!4651673))

(declare-fun m!4653839 () Bool)

(assert (=> d!1203807 m!4653839))

(assert (=> d!1203807 m!4651945))

(assert (=> b!4052069 m!4651673))

(assert (=> b!4052069 m!4653837))

(assert (=> b!4052069 m!4653837))

(declare-fun m!4653841 () Bool)

(assert (=> b!4052069 m!4653841))

(assert (=> b!4052069 m!4651673))

(declare-fun m!4653843 () Bool)

(assert (=> b!4052069 m!4653843))

(assert (=> b!4052069 m!4653841))

(assert (=> b!4052069 m!4653843))

(declare-fun m!4653845 () Bool)

(assert (=> b!4052069 m!4653845))

(assert (=> bm!287926 m!4651673))

(assert (=> bm!287926 m!4653839))

(assert (=> b!4052073 m!4651673))

(assert (=> b!4052073 m!4653837))

(assert (=> b!4052066 m!4651673))

(assert (=> b!4052066 m!4653843))

(assert (=> b!4052066 m!4653843))

(declare-fun m!4653847 () Bool)

(assert (=> b!4052066 m!4653847))

(assert (=> b!4052067 m!4651673))

(assert (=> b!4052067 m!4653843))

(assert (=> b!4052067 m!4653843))

(assert (=> b!4052067 m!4653847))

(assert (=> b!4052077 m!4651947))

(assert (=> b!4050696 d!1203807))

(assert (=> b!4050696 d!1203507))

(assert (=> b!4050696 d!1203509))

(assert (=> b!4050696 d!1203471))

(declare-fun d!1203809 () Bool)

(assert (=> d!1203809 (= (isEmpty!25846 (tail!6294 lt!1443622)) (is-Nil!43302 (tail!6294 lt!1443622)))))

(assert (=> b!4051042 d!1203809))

(assert (=> b!4051042 d!1203301))

(assert (=> b!4051058 d!1203361))

(assert (=> b!4051058 d!1203115))

(assert (=> b!4051096 d!1203291))

(declare-fun d!1203811 () Bool)

(assert (=> d!1203811 (= (head!8562 lt!1443623) (h!48722 lt!1443623))))

(assert (=> b!4051096 d!1203811))

(assert (=> b!4050856 d!1203675))

(declare-fun b!4052080 () Bool)

(declare-fun e!2514194 () List!43426)

(assert (=> b!4052080 (= e!2514194 (Cons!43302 (h!48722 lt!1443622) (++!11341 (t!335877 lt!1443622) lt!1443961)))))

(declare-fun b!4052079 () Bool)

(assert (=> b!4052079 (= e!2514194 lt!1443961)))

(declare-fun d!1203813 () Bool)

(declare-fun e!2514193 () Bool)

(assert (=> d!1203813 e!2514193))

(declare-fun res!1651495 () Bool)

(assert (=> d!1203813 (=> (not res!1651495) (not e!2514193))))

(declare-fun lt!1444387 () List!43426)

(assert (=> d!1203813 (= res!1651495 (= (content!6596 lt!1444387) (set.union (content!6596 lt!1443622) (content!6596 lt!1443961))))))

(assert (=> d!1203813 (= lt!1444387 e!2514194)))

(declare-fun c!700019 () Bool)

(assert (=> d!1203813 (= c!700019 (is-Nil!43302 lt!1443622))))

(assert (=> d!1203813 (= (++!11341 lt!1443622 lt!1443961) lt!1444387)))

(declare-fun b!4052081 () Bool)

(declare-fun res!1651494 () Bool)

(assert (=> b!4052081 (=> (not res!1651494) (not e!2514193))))

(assert (=> b!4052081 (= res!1651494 (= (size!32375 lt!1444387) (+ (size!32375 lt!1443622) (size!32375 lt!1443961))))))

(declare-fun b!4052082 () Bool)

(assert (=> b!4052082 (= e!2514193 (or (not (= lt!1443961 Nil!43302)) (= lt!1444387 lt!1443622)))))

(assert (= (and d!1203813 c!700019) b!4052079))

(assert (= (and d!1203813 (not c!700019)) b!4052080))

(assert (= (and d!1203813 res!1651495) b!4052081))

(assert (= (and b!4052081 res!1651494) b!4052082))

(declare-fun m!4653849 () Bool)

(assert (=> b!4052080 m!4653849))

(declare-fun m!4653851 () Bool)

(assert (=> d!1203813 m!4653851))

(assert (=> d!1203813 m!4651615))

(declare-fun m!4653853 () Bool)

(assert (=> d!1203813 m!4653853))

(declare-fun m!4653855 () Bool)

(assert (=> b!4052081 m!4653855))

(assert (=> b!4052081 m!4651297))

(declare-fun m!4653857 () Bool)

(assert (=> b!4052081 m!4653857))

(assert (=> d!1203089 d!1203813))

(assert (=> d!1203089 d!1203117))

(assert (=> d!1203089 d!1203115))

(declare-fun d!1203815 () Bool)

(declare-fun e!2514195 () Bool)

(assert (=> d!1203815 e!2514195))

(declare-fun res!1651496 () Bool)

(assert (=> d!1203815 (=> (not res!1651496) (not e!2514195))))

(declare-fun lt!1444388 () BalanceConc!25894)

(assert (=> d!1203815 (= res!1651496 (= (list!16133 lt!1444388) lt!1443622))))

(assert (=> d!1203815 (= lt!1444388 (BalanceConc!25895 (fromList!866 lt!1443622)))))

(assert (=> d!1203815 (= (fromListB!2353 lt!1443622) lt!1444388)))

(declare-fun b!4052083 () Bool)

(assert (=> b!4052083 (= e!2514195 (isBalanced!3686 (fromList!866 lt!1443622)))))

(assert (= (and d!1203815 res!1651496) b!4052083))

(declare-fun m!4653859 () Bool)

(assert (=> d!1203815 m!4653859))

(declare-fun m!4653861 () Bool)

(assert (=> d!1203815 m!4653861))

(assert (=> b!4052083 m!4653861))

(assert (=> b!4052083 m!4653861))

(declare-fun m!4653863 () Bool)

(assert (=> b!4052083 m!4653863))

(assert (=> d!1202941 d!1203815))

(declare-fun d!1203817 () Bool)

(assert (=> d!1203817 (= (isEmpty!25846 (tail!6294 lt!1443625)) (is-Nil!43302 (tail!6294 lt!1443625)))))

(assert (=> b!4050775 d!1203817))

(assert (=> b!4050775 d!1203443))

(declare-fun d!1203819 () Bool)

(declare-fun lt!1444389 () List!43426)

(assert (=> d!1203819 (= (++!11341 (t!335877 newSuffix!27) lt!1444389) (tail!6294 suffix!1299))))

(declare-fun e!2514196 () List!43426)

(assert (=> d!1203819 (= lt!1444389 e!2514196)))

(declare-fun c!700020 () Bool)

(assert (=> d!1203819 (= c!700020 (is-Cons!43302 (t!335877 newSuffix!27)))))

(assert (=> d!1203819 (>= (size!32375 (tail!6294 suffix!1299)) (size!32375 (t!335877 newSuffix!27)))))

(assert (=> d!1203819 (= (getSuffix!2443 (tail!6294 suffix!1299) (t!335877 newSuffix!27)) lt!1444389)))

(declare-fun b!4052084 () Bool)

(assert (=> b!4052084 (= e!2514196 (getSuffix!2443 (tail!6294 (tail!6294 suffix!1299)) (t!335877 (t!335877 newSuffix!27))))))

(declare-fun b!4052085 () Bool)

(assert (=> b!4052085 (= e!2514196 (tail!6294 suffix!1299))))

(assert (= (and d!1203819 c!700020) b!4052084))

(assert (= (and d!1203819 (not c!700020)) b!4052085))

(declare-fun m!4653865 () Bool)

(assert (=> d!1203819 m!4653865))

(assert (=> d!1203819 m!4651603))

(declare-fun m!4653867 () Bool)

(assert (=> d!1203819 m!4653867))

(assert (=> d!1203819 m!4652183))

(assert (=> b!4052084 m!4651603))

(declare-fun m!4653869 () Bool)

(assert (=> b!4052084 m!4653869))

(assert (=> b!4052084 m!4653869))

(declare-fun m!4653871 () Bool)

(assert (=> b!4052084 m!4653871))

(assert (=> b!4050979 d!1203819))

(declare-fun d!1203821 () Bool)

(assert (=> d!1203821 (= (tail!6294 suffix!1299) (t!335877 suffix!1299))))

(assert (=> b!4050979 d!1203821))

(assert (=> b!4050996 d!1203291))

(declare-fun d!1203823 () Bool)

(assert (=> d!1203823 (= (head!8562 lt!1443637) (h!48722 lt!1443637))))

(assert (=> b!4050996 d!1203823))

(declare-fun d!1203825 () Bool)

(declare-fun e!2514198 () Bool)

(assert (=> d!1203825 e!2514198))

(declare-fun res!1651500 () Bool)

(assert (=> d!1203825 (=> res!1651500 e!2514198)))

(declare-fun lt!1444390 () Bool)

(assert (=> d!1203825 (= res!1651500 (not lt!1444390))))

(declare-fun e!2514197 () Bool)

(assert (=> d!1203825 (= lt!1444390 e!2514197)))

(declare-fun res!1651498 () Bool)

(assert (=> d!1203825 (=> res!1651498 e!2514197)))

(assert (=> d!1203825 (= res!1651498 (is-Nil!43302 (tail!6294 newSuffix!27)))))

(assert (=> d!1203825 (= (isPrefix!4026 (tail!6294 newSuffix!27) (tail!6294 suffix!1299)) lt!1444390)))

(declare-fun b!4052088 () Bool)

(declare-fun e!2514199 () Bool)

(assert (=> b!4052088 (= e!2514199 (isPrefix!4026 (tail!6294 (tail!6294 newSuffix!27)) (tail!6294 (tail!6294 suffix!1299))))))

(declare-fun b!4052087 () Bool)

(declare-fun res!1651497 () Bool)

(assert (=> b!4052087 (=> (not res!1651497) (not e!2514199))))

(assert (=> b!4052087 (= res!1651497 (= (head!8562 (tail!6294 newSuffix!27)) (head!8562 (tail!6294 suffix!1299))))))

(declare-fun b!4052086 () Bool)

(assert (=> b!4052086 (= e!2514197 e!2514199)))

(declare-fun res!1651499 () Bool)

(assert (=> b!4052086 (=> (not res!1651499) (not e!2514199))))

(assert (=> b!4052086 (= res!1651499 (not (is-Nil!43302 (tail!6294 suffix!1299))))))

(declare-fun b!4052089 () Bool)

(assert (=> b!4052089 (= e!2514198 (>= (size!32375 (tail!6294 suffix!1299)) (size!32375 (tail!6294 newSuffix!27))))))

(assert (= (and d!1203825 (not res!1651498)) b!4052086))

(assert (= (and b!4052086 res!1651499) b!4052087))

(assert (= (and b!4052087 res!1651497) b!4052088))

(assert (= (and d!1203825 (not res!1651500)) b!4052089))

(assert (=> b!4052088 m!4651601))

(declare-fun m!4653873 () Bool)

(assert (=> b!4052088 m!4653873))

(assert (=> b!4052088 m!4651603))

(assert (=> b!4052088 m!4653869))

(assert (=> b!4052088 m!4653873))

(assert (=> b!4052088 m!4653869))

(declare-fun m!4653875 () Bool)

(assert (=> b!4052088 m!4653875))

(assert (=> b!4052087 m!4651601))

(declare-fun m!4653877 () Bool)

(assert (=> b!4052087 m!4653877))

(assert (=> b!4052087 m!4651603))

(declare-fun m!4653879 () Bool)

(assert (=> b!4052087 m!4653879))

(assert (=> b!4052089 m!4651603))

(assert (=> b!4052089 m!4653867))

(assert (=> b!4052089 m!4651601))

(declare-fun m!4653881 () Bool)

(assert (=> b!4052089 m!4653881))

(assert (=> b!4050612 d!1203825))

(declare-fun d!1203827 () Bool)

(assert (=> d!1203827 (= (tail!6294 newSuffix!27) (t!335877 newSuffix!27))))

(assert (=> b!4050612 d!1203827))

(assert (=> b!4050612 d!1203821))

(assert (=> d!1203007 d!1203757))

(declare-fun b!4052091 () Bool)

(declare-fun e!2514201 () List!43426)

(assert (=> b!4052091 (= e!2514201 (Cons!43302 (h!48722 (t!335877 prefix!494)) (++!11341 (t!335877 (t!335877 prefix!494)) lt!1443609)))))

(declare-fun b!4052090 () Bool)

(assert (=> b!4052090 (= e!2514201 lt!1443609)))

(declare-fun d!1203829 () Bool)

(declare-fun e!2514200 () Bool)

(assert (=> d!1203829 e!2514200))

(declare-fun res!1651502 () Bool)

(assert (=> d!1203829 (=> (not res!1651502) (not e!2514200))))

(declare-fun lt!1444391 () List!43426)

(assert (=> d!1203829 (= res!1651502 (= (content!6596 lt!1444391) (set.union (content!6596 (t!335877 prefix!494)) (content!6596 lt!1443609))))))

(assert (=> d!1203829 (= lt!1444391 e!2514201)))

(declare-fun c!700021 () Bool)

(assert (=> d!1203829 (= c!700021 (is-Nil!43302 (t!335877 prefix!494)))))

(assert (=> d!1203829 (= (++!11341 (t!335877 prefix!494) lt!1443609) lt!1444391)))

(declare-fun b!4052092 () Bool)

(declare-fun res!1651501 () Bool)

(assert (=> b!4052092 (=> (not res!1651501) (not e!2514200))))

(assert (=> b!4052092 (= res!1651501 (= (size!32375 lt!1444391) (+ (size!32375 (t!335877 prefix!494)) (size!32375 lt!1443609))))))

(declare-fun b!4052093 () Bool)

(assert (=> b!4052093 (= e!2514200 (or (not (= lt!1443609 Nil!43302)) (= lt!1444391 (t!335877 prefix!494))))))

(assert (= (and d!1203829 c!700021) b!4052090))

(assert (= (and d!1203829 (not c!700021)) b!4052091))

(assert (= (and d!1203829 res!1651502) b!4052092))

(assert (= (and b!4052092 res!1651501) b!4052093))

(declare-fun m!4653883 () Bool)

(assert (=> b!4052091 m!4653883))

(declare-fun m!4653885 () Bool)

(assert (=> d!1203829 m!4653885))

(assert (=> d!1203829 m!4652959))

(assert (=> d!1203829 m!4652289))

(declare-fun m!4653887 () Bool)

(assert (=> b!4052092 m!4653887))

(assert (=> b!4052092 m!4652231))

(assert (=> b!4052092 m!4652293))

(assert (=> b!4051074 d!1203829))

(declare-fun b!4052094 () Bool)

(declare-fun e!2514204 () Option!9353)

(declare-fun lt!1444394 () Option!9353)

(declare-fun lt!1444393 () Option!9353)

(assert (=> b!4052094 (= e!2514204 (ite (and (is-None!9352 lt!1444394) (is-None!9352 lt!1444393)) None!9352 (ite (is-None!9352 lt!1444393) lt!1444394 (ite (is-None!9352 lt!1444394) lt!1444393 (ite (>= (size!32376 (_1!24322 (v!39762 lt!1444394))) (size!32376 (_1!24322 (v!39762 lt!1444393)))) lt!1444394 lt!1444393)))))))

(declare-fun call!287932 () Option!9353)

(assert (=> b!4052094 (= lt!1444394 call!287932)))

(assert (=> b!4052094 (= lt!1444393 (maxPrefix!3826 thiss!21717 (t!335879 (t!335879 rules!2999)) lt!1443629))))

(declare-fun b!4052095 () Bool)

(declare-fun res!1651507 () Bool)

(declare-fun e!2514203 () Bool)

(assert (=> b!4052095 (=> (not res!1651507) (not e!2514203))))

(declare-fun lt!1444392 () Option!9353)

(assert (=> b!4052095 (= res!1651507 (matchR!5797 (regex!6939 (rule!10021 (_1!24322 (get!14207 lt!1444392)))) (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1444392))))))))

(declare-fun b!4052096 () Bool)

(assert (=> b!4052096 (= e!2514203 (contains!8611 (t!335879 rules!2999) (rule!10021 (_1!24322 (get!14207 lt!1444392)))))))

(declare-fun b!4052097 () Bool)

(declare-fun e!2514202 () Bool)

(assert (=> b!4052097 (= e!2514202 e!2514203)))

(declare-fun res!1651504 () Bool)

(assert (=> b!4052097 (=> (not res!1651504) (not e!2514203))))

(assert (=> b!4052097 (= res!1651504 (isDefined!7113 lt!1444392))))

(declare-fun b!4052098 () Bool)

(declare-fun res!1651508 () Bool)

(assert (=> b!4052098 (=> (not res!1651508) (not e!2514203))))

(assert (=> b!4052098 (= res!1651508 (= (++!11341 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1444392)))) (_2!24322 (get!14207 lt!1444392))) lt!1443629))))

(declare-fun b!4052100 () Bool)

(declare-fun res!1651505 () Bool)

(assert (=> b!4052100 (=> (not res!1651505) (not e!2514203))))

(assert (=> b!4052100 (= res!1651505 (< (size!32375 (_2!24322 (get!14207 lt!1444392))) (size!32375 lt!1443629)))))

(declare-fun bm!287927 () Bool)

(assert (=> bm!287927 (= call!287932 (maxPrefixOneRule!2838 thiss!21717 (h!48724 (t!335879 rules!2999)) lt!1443629))))

(declare-fun b!4052101 () Bool)

(assert (=> b!4052101 (= e!2514204 call!287932)))

(declare-fun b!4052102 () Bool)

(declare-fun res!1651509 () Bool)

(assert (=> b!4052102 (=> (not res!1651509) (not e!2514203))))

(assert (=> b!4052102 (= res!1651509 (= (value!218397 (_1!24322 (get!14207 lt!1444392))) (apply!10128 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1444392)))) (seqFromList!5156 (originalCharacters!7539 (_1!24322 (get!14207 lt!1444392)))))))))

(declare-fun b!4052099 () Bool)

(declare-fun res!1651503 () Bool)

(assert (=> b!4052099 (=> (not res!1651503) (not e!2514203))))

(assert (=> b!4052099 (= res!1651503 (= (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1444392)))) (originalCharacters!7539 (_1!24322 (get!14207 lt!1444392)))))))

(declare-fun d!1203831 () Bool)

(assert (=> d!1203831 e!2514202))

(declare-fun res!1651506 () Bool)

(assert (=> d!1203831 (=> res!1651506 e!2514202)))

(assert (=> d!1203831 (= res!1651506 (isEmpty!25847 lt!1444392))))

(assert (=> d!1203831 (= lt!1444392 e!2514204)))

(declare-fun c!700022 () Bool)

(assert (=> d!1203831 (= c!700022 (and (is-Cons!43304 (t!335879 rules!2999)) (is-Nil!43304 (t!335879 (t!335879 rules!2999)))))))

(declare-fun lt!1444396 () Unit!62585)

(declare-fun lt!1444395 () Unit!62585)

(assert (=> d!1203831 (= lt!1444396 lt!1444395)))

(assert (=> d!1203831 (isPrefix!4026 lt!1443629 lt!1443629)))

(assert (=> d!1203831 (= lt!1444395 (lemmaIsPrefixRefl!2593 lt!1443629 lt!1443629))))

(assert (=> d!1203831 (rulesValidInductive!2534 thiss!21717 (t!335879 rules!2999))))

(assert (=> d!1203831 (= (maxPrefix!3826 thiss!21717 (t!335879 rules!2999) lt!1443629) lt!1444392)))

(assert (= (and d!1203831 c!700022) b!4052101))

(assert (= (and d!1203831 (not c!700022)) b!4052094))

(assert (= (or b!4052101 b!4052094) bm!287927))

(assert (= (and d!1203831 (not res!1651506)) b!4052097))

(assert (= (and b!4052097 res!1651504) b!4052099))

(assert (= (and b!4052099 res!1651503) b!4052100))

(assert (= (and b!4052100 res!1651505) b!4052098))

(assert (= (and b!4052098 res!1651508) b!4052102))

(assert (= (and b!4052102 res!1651509) b!4052095))

(assert (= (and b!4052095 res!1651507) b!4052096))

(declare-fun m!4653889 () Bool)

(assert (=> b!4052095 m!4653889))

(declare-fun m!4653891 () Bool)

(assert (=> b!4052095 m!4653891))

(assert (=> b!4052095 m!4653891))

(declare-fun m!4653893 () Bool)

(assert (=> b!4052095 m!4653893))

(assert (=> b!4052095 m!4653893))

(declare-fun m!4653895 () Bool)

(assert (=> b!4052095 m!4653895))

(assert (=> b!4052100 m!4653889))

(declare-fun m!4653897 () Bool)

(assert (=> b!4052100 m!4653897))

(assert (=> b!4052100 m!4651625))

(assert (=> b!4052098 m!4653889))

(assert (=> b!4052098 m!4653891))

(assert (=> b!4052098 m!4653891))

(assert (=> b!4052098 m!4653893))

(assert (=> b!4052098 m!4653893))

(declare-fun m!4653899 () Bool)

(assert (=> b!4052098 m!4653899))

(assert (=> b!4052102 m!4653889))

(declare-fun m!4653901 () Bool)

(assert (=> b!4052102 m!4653901))

(assert (=> b!4052102 m!4653901))

(declare-fun m!4653903 () Bool)

(assert (=> b!4052102 m!4653903))

(declare-fun m!4653905 () Bool)

(assert (=> d!1203831 m!4653905))

(assert (=> d!1203831 m!4651249))

(assert (=> d!1203831 m!4651251))

(assert (=> d!1203831 m!4653085))

(declare-fun m!4653907 () Bool)

(assert (=> bm!287927 m!4653907))

(declare-fun m!4653909 () Bool)

(assert (=> b!4052097 m!4653909))

(assert (=> b!4052099 m!4653889))

(assert (=> b!4052099 m!4653891))

(assert (=> b!4052099 m!4653891))

(assert (=> b!4052099 m!4653893))

(declare-fun m!4653911 () Bool)

(assert (=> b!4052094 m!4653911))

(assert (=> b!4052096 m!4653889))

(declare-fun m!4653913 () Bool)

(assert (=> b!4052096 m!4653913))

(assert (=> b!4050962 d!1203831))

(assert (=> b!4051043 d!1203809))

(assert (=> b!4051043 d!1203301))

(declare-fun d!1203833 () Bool)

(assert (=> d!1203833 (= (isEmpty!25847 lt!1443996) (not (is-Some!9352 lt!1443996)))))

(assert (=> d!1203155 d!1203833))

(declare-fun d!1203835 () Bool)

(declare-fun e!2514206 () Bool)

(assert (=> d!1203835 e!2514206))

(declare-fun res!1651513 () Bool)

(assert (=> d!1203835 (=> res!1651513 e!2514206)))

(declare-fun lt!1444397 () Bool)

(assert (=> d!1203835 (= res!1651513 (not lt!1444397))))

(declare-fun e!2514205 () Bool)

(assert (=> d!1203835 (= lt!1444397 e!2514205)))

(declare-fun res!1651511 () Bool)

(assert (=> d!1203835 (=> res!1651511 e!2514205)))

(assert (=> d!1203835 (= res!1651511 (is-Nil!43302 lt!1443605))))

(assert (=> d!1203835 (= (isPrefix!4026 lt!1443605 lt!1443605) lt!1444397)))

(declare-fun b!4052105 () Bool)

(declare-fun e!2514207 () Bool)

(assert (=> b!4052105 (= e!2514207 (isPrefix!4026 (tail!6294 lt!1443605) (tail!6294 lt!1443605)))))

(declare-fun b!4052104 () Bool)

(declare-fun res!1651510 () Bool)

(assert (=> b!4052104 (=> (not res!1651510) (not e!2514207))))

(assert (=> b!4052104 (= res!1651510 (= (head!8562 lt!1443605) (head!8562 lt!1443605)))))

(declare-fun b!4052103 () Bool)

(assert (=> b!4052103 (= e!2514205 e!2514207)))

(declare-fun res!1651512 () Bool)

(assert (=> b!4052103 (=> (not res!1651512) (not e!2514207))))

(assert (=> b!4052103 (= res!1651512 (not (is-Nil!43302 lt!1443605)))))

(declare-fun b!4052106 () Bool)

(assert (=> b!4052106 (= e!2514206 (>= (size!32375 lt!1443605) (size!32375 lt!1443605)))))

(assert (= (and d!1203835 (not res!1651511)) b!4052103))

(assert (= (and b!4052103 res!1651512) b!4052104))

(assert (= (and b!4052104 res!1651510) b!4052105))

(assert (= (and d!1203835 (not res!1651513)) b!4052106))

(assert (=> b!4052105 m!4652115))

(assert (=> b!4052105 m!4652115))

(assert (=> b!4052105 m!4652115))

(assert (=> b!4052105 m!4652115))

(declare-fun m!4653915 () Bool)

(assert (=> b!4052105 m!4653915))

(assert (=> b!4052104 m!4652119))

(assert (=> b!4052104 m!4652119))

(assert (=> b!4052106 m!4651897))

(assert (=> b!4052106 m!4651897))

(assert (=> d!1203155 d!1203835))

(declare-fun d!1203837 () Bool)

(assert (=> d!1203837 (isPrefix!4026 lt!1443605 lt!1443605)))

(declare-fun lt!1444398 () Unit!62585)

(assert (=> d!1203837 (= lt!1444398 (choose!24573 lt!1443605 lt!1443605))))

(assert (=> d!1203837 (= (lemmaIsPrefixRefl!2593 lt!1443605 lt!1443605) lt!1444398)))

(declare-fun bs!591624 () Bool)

(assert (= bs!591624 d!1203837))

(assert (=> bs!591624 m!4652335))

(declare-fun m!4653917 () Bool)

(assert (=> bs!591624 m!4653917))

(assert (=> d!1203155 d!1203837))

(assert (=> d!1203155 d!1203469))

(declare-fun b!4052108 () Bool)

(declare-fun e!2514209 () List!43426)

(assert (=> b!4052108 (= e!2514209 (Cons!43302 (h!48722 prefix!494) (++!11341 (t!335877 prefix!494) (++!11341 newSuffix!27 lt!1443636))))))

(declare-fun b!4052107 () Bool)

(assert (=> b!4052107 (= e!2514209 (++!11341 newSuffix!27 lt!1443636))))

(declare-fun d!1203839 () Bool)

(declare-fun e!2514208 () Bool)

(assert (=> d!1203839 e!2514208))

(declare-fun res!1651515 () Bool)

(assert (=> d!1203839 (=> (not res!1651515) (not e!2514208))))

(declare-fun lt!1444399 () List!43426)

(assert (=> d!1203839 (= res!1651515 (= (content!6596 lt!1444399) (set.union (content!6596 prefix!494) (content!6596 (++!11341 newSuffix!27 lt!1443636)))))))

(assert (=> d!1203839 (= lt!1444399 e!2514209)))

(declare-fun c!700023 () Bool)

(assert (=> d!1203839 (= c!700023 (is-Nil!43302 prefix!494))))

(assert (=> d!1203839 (= (++!11341 prefix!494 (++!11341 newSuffix!27 lt!1443636)) lt!1444399)))

(declare-fun b!4052109 () Bool)

(declare-fun res!1651514 () Bool)

(assert (=> b!4052109 (=> (not res!1651514) (not e!2514208))))

(assert (=> b!4052109 (= res!1651514 (= (size!32375 lt!1444399) (+ (size!32375 prefix!494) (size!32375 (++!11341 newSuffix!27 lt!1443636)))))))

(declare-fun b!4052110 () Bool)

(assert (=> b!4052110 (= e!2514208 (or (not (= (++!11341 newSuffix!27 lt!1443636) Nil!43302)) (= lt!1444399 prefix!494)))))

(assert (= (and d!1203839 c!700023) b!4052107))

(assert (= (and d!1203839 (not c!700023)) b!4052108))

(assert (= (and d!1203839 res!1651515) b!4052109))

(assert (= (and b!4052109 res!1651514) b!4052110))

(assert (=> b!4052108 m!4651293))

(declare-fun m!4653919 () Bool)

(assert (=> b!4052108 m!4653919))

(declare-fun m!4653921 () Bool)

(assert (=> d!1203839 m!4653921))

(assert (=> d!1203839 m!4652091))

(assert (=> d!1203839 m!4651293))

(declare-fun m!4653923 () Bool)

(assert (=> d!1203839 m!4653923))

(declare-fun m!4653925 () Bool)

(assert (=> b!4052109 m!4653925))

(assert (=> b!4052109 m!4651299))

(assert (=> b!4052109 m!4651293))

(declare-fun m!4653927 () Bool)

(assert (=> b!4052109 m!4653927))

(assert (=> d!1203149 d!1203839))

(declare-fun d!1203841 () Bool)

(assert (=> d!1203841 (= (++!11341 (++!11341 prefix!494 newSuffix!27) lt!1443636) (++!11341 prefix!494 (++!11341 newSuffix!27 lt!1443636)))))

(assert (=> d!1203841 true))

(declare-fun _$52!2336 () Unit!62585)

(assert (=> d!1203841 (= (choose!24582 prefix!494 newSuffix!27 lt!1443636) _$52!2336)))

(declare-fun bs!591625 () Bool)

(assert (= bs!591625 d!1203841))

(assert (=> bs!591625 m!4651405))

(assert (=> bs!591625 m!4651405))

(assert (=> bs!591625 m!4652303))

(assert (=> bs!591625 m!4651293))

(assert (=> bs!591625 m!4651293))

(assert (=> bs!591625 m!4652307))

(assert (=> d!1203149 d!1203841))

(declare-fun b!4052112 () Bool)

(declare-fun e!2514211 () List!43426)

(assert (=> b!4052112 (= e!2514211 (Cons!43302 (h!48722 (++!11341 prefix!494 newSuffix!27)) (++!11341 (t!335877 (++!11341 prefix!494 newSuffix!27)) lt!1443636)))))

(declare-fun b!4052111 () Bool)

(assert (=> b!4052111 (= e!2514211 lt!1443636)))

(declare-fun d!1203843 () Bool)

(declare-fun e!2514210 () Bool)

(assert (=> d!1203843 e!2514210))

(declare-fun res!1651517 () Bool)

(assert (=> d!1203843 (=> (not res!1651517) (not e!2514210))))

(declare-fun lt!1444400 () List!43426)

(assert (=> d!1203843 (= res!1651517 (= (content!6596 lt!1444400) (set.union (content!6596 (++!11341 prefix!494 newSuffix!27)) (content!6596 lt!1443636))))))

(assert (=> d!1203843 (= lt!1444400 e!2514211)))

(declare-fun c!700024 () Bool)

(assert (=> d!1203843 (= c!700024 (is-Nil!43302 (++!11341 prefix!494 newSuffix!27)))))

(assert (=> d!1203843 (= (++!11341 (++!11341 prefix!494 newSuffix!27) lt!1443636) lt!1444400)))

(declare-fun b!4052113 () Bool)

(declare-fun res!1651516 () Bool)

(assert (=> b!4052113 (=> (not res!1651516) (not e!2514210))))

(assert (=> b!4052113 (= res!1651516 (= (size!32375 lt!1444400) (+ (size!32375 (++!11341 prefix!494 newSuffix!27)) (size!32375 lt!1443636))))))

(declare-fun b!4052114 () Bool)

(assert (=> b!4052114 (= e!2514210 (or (not (= lt!1443636 Nil!43302)) (= lt!1444400 (++!11341 prefix!494 newSuffix!27))))))

(assert (= (and d!1203843 c!700024) b!4052111))

(assert (= (and d!1203843 (not c!700024)) b!4052112))

(assert (= (and d!1203843 res!1651517) b!4052113))

(assert (= (and b!4052113 res!1651516) b!4052114))

(declare-fun m!4653929 () Bool)

(assert (=> b!4052112 m!4653929))

(declare-fun m!4653931 () Bool)

(assert (=> d!1203843 m!4653931))

(assert (=> d!1203843 m!4651405))

(declare-fun m!4653933 () Bool)

(assert (=> d!1203843 m!4653933))

(assert (=> d!1203843 m!4652103))

(declare-fun m!4653935 () Bool)

(assert (=> b!4052113 m!4653935))

(assert (=> b!4052113 m!4651405))

(assert (=> b!4052113 m!4653205))

(assert (=> b!4052113 m!4652107))

(assert (=> d!1203149 d!1203843))

(assert (=> d!1203149 d!1203063))

(assert (=> d!1203149 d!1203109))

(declare-fun d!1203845 () Bool)

(declare-fun c!700025 () Bool)

(assert (=> d!1203845 (= c!700025 (is-Nil!43302 lt!1443992))))

(declare-fun e!2514212 () (Set C!23874))

(assert (=> d!1203845 (= (content!6596 lt!1443992) e!2514212)))

(declare-fun b!4052115 () Bool)

(assert (=> b!4052115 (= e!2514212 (as set.empty (Set C!23874)))))

(declare-fun b!4052116 () Bool)

(assert (=> b!4052116 (= e!2514212 (set.union (set.insert (h!48722 lt!1443992) (as set.empty (Set C!23874))) (content!6596 (t!335877 lt!1443992))))))

(assert (= (and d!1203845 c!700025) b!4052115))

(assert (= (and d!1203845 (not c!700025)) b!4052116))

(declare-fun m!4653937 () Bool)

(assert (=> b!4052116 m!4653937))

(declare-fun m!4653939 () Bool)

(assert (=> b!4052116 m!4653939))

(assert (=> d!1203145 d!1203845))

(assert (=> d!1203145 d!1203401))

(declare-fun d!1203847 () Bool)

(declare-fun c!700026 () Bool)

(assert (=> d!1203847 (= c!700026 (is-Nil!43302 lt!1443609))))

(declare-fun e!2514213 () (Set C!23874))

(assert (=> d!1203847 (= (content!6596 lt!1443609) e!2514213)))

(declare-fun b!4052117 () Bool)

(assert (=> b!4052117 (= e!2514213 (as set.empty (Set C!23874)))))

(declare-fun b!4052118 () Bool)

(assert (=> b!4052118 (= e!2514213 (set.union (set.insert (h!48722 lt!1443609) (as set.empty (Set C!23874))) (content!6596 (t!335877 lt!1443609))))))

(assert (= (and d!1203847 c!700026) b!4052117))

(assert (= (and d!1203847 (not c!700026)) b!4052118))

(declare-fun m!4653941 () Bool)

(assert (=> b!4052118 m!4653941))

(declare-fun m!4653943 () Bool)

(assert (=> b!4052118 m!4653943))

(assert (=> d!1203145 d!1203847))

(declare-fun b!4052120 () Bool)

(declare-fun e!2514215 () List!43426)

(assert (=> b!4052120 (= e!2514215 (Cons!43302 (h!48722 (t!335877 lt!1443595)) (++!11341 (t!335877 (t!335877 lt!1443595)) suffix!1299)))))

(declare-fun b!4052119 () Bool)

(assert (=> b!4052119 (= e!2514215 suffix!1299)))

(declare-fun d!1203849 () Bool)

(declare-fun e!2514214 () Bool)

(assert (=> d!1203849 e!2514214))

(declare-fun res!1651519 () Bool)

(assert (=> d!1203849 (=> (not res!1651519) (not e!2514214))))

(declare-fun lt!1444401 () List!43426)

(assert (=> d!1203849 (= res!1651519 (= (content!6596 lt!1444401) (set.union (content!6596 (t!335877 lt!1443595)) (content!6596 suffix!1299))))))

(assert (=> d!1203849 (= lt!1444401 e!2514215)))

(declare-fun c!700027 () Bool)

(assert (=> d!1203849 (= c!700027 (is-Nil!43302 (t!335877 lt!1443595)))))

(assert (=> d!1203849 (= (++!11341 (t!335877 lt!1443595) suffix!1299) lt!1444401)))

(declare-fun b!4052121 () Bool)

(declare-fun res!1651518 () Bool)

(assert (=> b!4052121 (=> (not res!1651518) (not e!2514214))))

(assert (=> b!4052121 (= res!1651518 (= (size!32375 lt!1444401) (+ (size!32375 (t!335877 lt!1443595)) (size!32375 suffix!1299))))))

(declare-fun b!4052122 () Bool)

(assert (=> b!4052122 (= e!2514214 (or (not (= suffix!1299 Nil!43302)) (= lt!1444401 (t!335877 lt!1443595))))))

(assert (= (and d!1203849 c!700027) b!4052119))

(assert (= (and d!1203849 (not c!700027)) b!4052120))

(assert (= (and d!1203849 res!1651519) b!4052121))

(assert (= (and b!4052121 res!1651518) b!4052122))

(declare-fun m!4653945 () Bool)

(assert (=> b!4052120 m!4653945))

(declare-fun m!4653947 () Bool)

(assert (=> d!1203849 m!4653947))

(assert (=> d!1203849 m!4653739))

(assert (=> d!1203849 m!4652093))

(declare-fun m!4653949 () Bool)

(assert (=> b!4052121 m!4653949))

(assert (=> b!4052121 m!4653239))

(assert (=> b!4052121 m!4651237))

(assert (=> b!4051026 d!1203849))

(assert (=> b!4050841 d!1203377))

(declare-fun d!1203851 () Bool)

(declare-fun lt!1444402 () Int)

(assert (=> d!1203851 (>= lt!1444402 0)))

(declare-fun e!2514216 () Int)

(assert (=> d!1203851 (= lt!1444402 e!2514216)))

(declare-fun c!700028 () Bool)

(assert (=> d!1203851 (= c!700028 (is-Nil!43302 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443903)))))))

(assert (=> d!1203851 (= (size!32375 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443903)))) lt!1444402)))

(declare-fun b!4052123 () Bool)

(assert (=> b!4052123 (= e!2514216 0)))

(declare-fun b!4052124 () Bool)

(assert (=> b!4052124 (= e!2514216 (+ 1 (size!32375 (t!335877 (originalCharacters!7539 (_1!24322 (get!14207 lt!1443903)))))))))

(assert (= (and d!1203851 c!700028) b!4052123))

(assert (= (and d!1203851 (not c!700028)) b!4052124))

(declare-fun m!4653951 () Bool)

(assert (=> b!4052124 m!4653951))

(assert (=> b!4050841 d!1203851))

(declare-fun d!1203853 () Bool)

(declare-fun charsToBigInt!1 (List!43427) Int)

(assert (=> d!1203853 (= (inv!17 (value!218397 token!484)) (= (charsToBigInt!1 (text!50631 (value!218397 token!484))) (value!218389 (value!218397 token!484))))))

(declare-fun bs!591626 () Bool)

(assert (= bs!591626 d!1203853))

(declare-fun m!4653953 () Bool)

(assert (=> bs!591626 m!4653953))

(assert (=> b!4050879 d!1203853))

(declare-fun d!1203855 () Bool)

(declare-fun e!2514218 () Bool)

(assert (=> d!1203855 e!2514218))

(declare-fun res!1651523 () Bool)

(assert (=> d!1203855 (=> res!1651523 e!2514218)))

(declare-fun lt!1444403 () Bool)

(assert (=> d!1203855 (= res!1651523 (not lt!1444403))))

(declare-fun e!2514217 () Bool)

(assert (=> d!1203855 (= lt!1444403 e!2514217)))

(declare-fun res!1651521 () Bool)

(assert (=> d!1203855 (=> res!1651521 e!2514217)))

(assert (=> d!1203855 (= res!1651521 (is-Nil!43302 (tail!6294 lt!1443629)))))

(assert (=> d!1203855 (= (isPrefix!4026 (tail!6294 lt!1443629) (tail!6294 lt!1443629)) lt!1444403)))

(declare-fun b!4052127 () Bool)

(declare-fun e!2514219 () Bool)

(assert (=> b!4052127 (= e!2514219 (isPrefix!4026 (tail!6294 (tail!6294 lt!1443629)) (tail!6294 (tail!6294 lt!1443629))))))

(declare-fun b!4052126 () Bool)

(declare-fun res!1651520 () Bool)

(assert (=> b!4052126 (=> (not res!1651520) (not e!2514219))))

(assert (=> b!4052126 (= res!1651520 (= (head!8562 (tail!6294 lt!1443629)) (head!8562 (tail!6294 lt!1443629))))))

(declare-fun b!4052125 () Bool)

(assert (=> b!4052125 (= e!2514217 e!2514219)))

(declare-fun res!1651522 () Bool)

(assert (=> b!4052125 (=> (not res!1651522) (not e!2514219))))

(assert (=> b!4052125 (= res!1651522 (not (is-Nil!43302 (tail!6294 lt!1443629))))))

(declare-fun b!4052128 () Bool)

(assert (=> b!4052128 (= e!2514218 (>= (size!32375 (tail!6294 lt!1443629)) (size!32375 (tail!6294 lt!1443629))))))

(assert (= (and d!1203855 (not res!1651521)) b!4052125))

(assert (= (and b!4052125 res!1651522) b!4052126))

(assert (= (and b!4052126 res!1651520) b!4052127))

(assert (= (and d!1203855 (not res!1651523)) b!4052128))

(assert (=> b!4052127 m!4651627))

(assert (=> b!4052127 m!4652987))

(assert (=> b!4052127 m!4651627))

(assert (=> b!4052127 m!4652987))

(assert (=> b!4052127 m!4652987))

(assert (=> b!4052127 m!4652987))

(declare-fun m!4653955 () Bool)

(assert (=> b!4052127 m!4653955))

(assert (=> b!4052126 m!4651627))

(assert (=> b!4052126 m!4652993))

(assert (=> b!4052126 m!4651627))

(assert (=> b!4052126 m!4652993))

(assert (=> b!4052128 m!4651627))

(assert (=> b!4052128 m!4652997))

(assert (=> b!4052128 m!4651627))

(assert (=> b!4052128 m!4652997))

(assert (=> b!4050634 d!1203855))

(assert (=> b!4050634 d!1203413))

(declare-fun b!4052129 () Bool)

(declare-fun e!2514220 () Option!9353)

(declare-fun lt!1444406 () tuple2!42380)

(assert (=> b!4052129 (= e!2514220 (Some!9352 (tuple2!42377 (Token!13017 (apply!10128 (transformation!6939 (h!48724 rules!2999)) (seqFromList!5156 (_1!24324 lt!1444406))) (h!48724 rules!2999) (size!32379 (seqFromList!5156 (_1!24324 lt!1444406))) (_1!24324 lt!1444406)) (_2!24324 lt!1444406))))))

(declare-fun lt!1444404 () Unit!62585)

(assert (=> b!4052129 (= lt!1444404 (longestMatchIsAcceptedByMatchOrIsEmpty!1369 (regex!6939 (h!48724 rules!2999)) lt!1443605))))

(declare-fun res!1651529 () Bool)

(assert (=> b!4052129 (= res!1651529 (isEmpty!25846 (_1!24324 (findLongestMatchInner!1396 (regex!6939 (h!48724 rules!2999)) Nil!43302 (size!32375 Nil!43302) lt!1443605 lt!1443605 (size!32375 lt!1443605)))))))

(declare-fun e!2514221 () Bool)

(assert (=> b!4052129 (=> res!1651529 e!2514221)))

(assert (=> b!4052129 e!2514221))

(declare-fun lt!1444407 () Unit!62585)

(assert (=> b!4052129 (= lt!1444407 lt!1444404)))

(declare-fun lt!1444408 () Unit!62585)

(assert (=> b!4052129 (= lt!1444408 (lemmaSemiInverse!1918 (transformation!6939 (h!48724 rules!2999)) (seqFromList!5156 (_1!24324 lt!1444406))))))

(declare-fun b!4052130 () Bool)

(declare-fun res!1651524 () Bool)

(declare-fun e!2514223 () Bool)

(assert (=> b!4052130 (=> (not res!1651524) (not e!2514223))))

(declare-fun lt!1444405 () Option!9353)

(assert (=> b!4052130 (= res!1651524 (= (rule!10021 (_1!24322 (get!14207 lt!1444405))) (h!48724 rules!2999)))))

(declare-fun b!4052131 () Bool)

(declare-fun e!2514222 () Bool)

(assert (=> b!4052131 (= e!2514222 e!2514223)))

(declare-fun res!1651528 () Bool)

(assert (=> b!4052131 (=> (not res!1651528) (not e!2514223))))

(assert (=> b!4052131 (= res!1651528 (matchR!5797 (regex!6939 (h!48724 rules!2999)) (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1444405))))))))

(declare-fun d!1203857 () Bool)

(assert (=> d!1203857 e!2514222))

(declare-fun res!1651530 () Bool)

(assert (=> d!1203857 (=> res!1651530 e!2514222)))

(assert (=> d!1203857 (= res!1651530 (isEmpty!25847 lt!1444405))))

(assert (=> d!1203857 (= lt!1444405 e!2514220)))

(declare-fun c!700029 () Bool)

(assert (=> d!1203857 (= c!700029 (isEmpty!25846 (_1!24324 lt!1444406)))))

(assert (=> d!1203857 (= lt!1444406 (findLongestMatch!1309 (regex!6939 (h!48724 rules!2999)) lt!1443605))))

(assert (=> d!1203857 (ruleValid!2869 thiss!21717 (h!48724 rules!2999))))

(assert (=> d!1203857 (= (maxPrefixOneRule!2838 thiss!21717 (h!48724 rules!2999) lt!1443605) lt!1444405)))

(declare-fun b!4052132 () Bool)

(assert (=> b!4052132 (= e!2514220 None!9352)))

(declare-fun b!4052133 () Bool)

(declare-fun res!1651526 () Bool)

(assert (=> b!4052133 (=> (not res!1651526) (not e!2514223))))

(assert (=> b!4052133 (= res!1651526 (< (size!32375 (_2!24322 (get!14207 lt!1444405))) (size!32375 lt!1443605)))))

(declare-fun b!4052134 () Bool)

(declare-fun res!1651525 () Bool)

(assert (=> b!4052134 (=> (not res!1651525) (not e!2514223))))

(assert (=> b!4052134 (= res!1651525 (= (value!218397 (_1!24322 (get!14207 lt!1444405))) (apply!10128 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1444405)))) (seqFromList!5156 (originalCharacters!7539 (_1!24322 (get!14207 lt!1444405)))))))))

(declare-fun b!4052135 () Bool)

(declare-fun res!1651527 () Bool)

(assert (=> b!4052135 (=> (not res!1651527) (not e!2514223))))

(assert (=> b!4052135 (= res!1651527 (= (++!11341 (list!16133 (charsOf!4755 (_1!24322 (get!14207 lt!1444405)))) (_2!24322 (get!14207 lt!1444405))) lt!1443605))))

(declare-fun b!4052136 () Bool)

(assert (=> b!4052136 (= e!2514223 (= (size!32376 (_1!24322 (get!14207 lt!1444405))) (size!32375 (originalCharacters!7539 (_1!24322 (get!14207 lt!1444405))))))))

(declare-fun b!4052137 () Bool)

(assert (=> b!4052137 (= e!2514221 (matchR!5797 (regex!6939 (h!48724 rules!2999)) (_1!24324 (findLongestMatchInner!1396 (regex!6939 (h!48724 rules!2999)) Nil!43302 (size!32375 Nil!43302) lt!1443605 lt!1443605 (size!32375 lt!1443605)))))))

(assert (= (and d!1203857 c!700029) b!4052132))

(assert (= (and d!1203857 (not c!700029)) b!4052129))

(assert (= (and b!4052129 (not res!1651529)) b!4052137))

(assert (= (and d!1203857 (not res!1651530)) b!4052131))

(assert (= (and b!4052131 res!1651528) b!4052135))

(assert (= (and b!4052135 res!1651527) b!4052133))

(assert (= (and b!4052133 res!1651526) b!4052130))

(assert (= (and b!4052130 res!1651524) b!4052134))

(assert (= (and b!4052134 res!1651525) b!4052136))

(declare-fun m!4653957 () Bool)

(assert (=> b!4052131 m!4653957))

(declare-fun m!4653959 () Bool)

(assert (=> b!4052131 m!4653959))

(assert (=> b!4052131 m!4653959))

(declare-fun m!4653961 () Bool)

(assert (=> b!4052131 m!4653961))

(assert (=> b!4052131 m!4653961))

(declare-fun m!4653963 () Bool)

(assert (=> b!4052131 m!4653963))

(declare-fun m!4653965 () Bool)

(assert (=> d!1203857 m!4653965))

(declare-fun m!4653967 () Bool)

(assert (=> d!1203857 m!4653967))

(declare-fun m!4653969 () Bool)

(assert (=> d!1203857 m!4653969))

(assert (=> d!1203857 m!4653083))

(assert (=> b!4052129 m!4651683))

(assert (=> b!4052129 m!4651897))

(declare-fun m!4653971 () Bool)

(assert (=> b!4052129 m!4653971))

(declare-fun m!4653973 () Bool)

(assert (=> b!4052129 m!4653973))

(declare-fun m!4653975 () Bool)

(assert (=> b!4052129 m!4653975))

(assert (=> b!4052129 m!4653973))

(assert (=> b!4052129 m!4653973))

(declare-fun m!4653977 () Bool)

(assert (=> b!4052129 m!4653977))

(declare-fun m!4653979 () Bool)

(assert (=> b!4052129 m!4653979))

(assert (=> b!4052129 m!4653973))

(declare-fun m!4653981 () Bool)

(assert (=> b!4052129 m!4653981))

(assert (=> b!4052129 m!4651897))

(declare-fun m!4653983 () Bool)

(assert (=> b!4052129 m!4653983))

(assert (=> b!4052129 m!4651683))

(assert (=> b!4052130 m!4653957))

(assert (=> b!4052137 m!4651683))

(assert (=> b!4052137 m!4651897))

(assert (=> b!4052137 m!4651683))

(assert (=> b!4052137 m!4651897))

(assert (=> b!4052137 m!4653971))

(declare-fun m!4653985 () Bool)

(assert (=> b!4052137 m!4653985))

(assert (=> b!4052133 m!4653957))

(declare-fun m!4653987 () Bool)

(assert (=> b!4052133 m!4653987))

(assert (=> b!4052133 m!4651897))

(assert (=> b!4052136 m!4653957))

(declare-fun m!4653989 () Bool)

(assert (=> b!4052136 m!4653989))

(assert (=> b!4052134 m!4653957))

(declare-fun m!4653991 () Bool)

(assert (=> b!4052134 m!4653991))

(assert (=> b!4052134 m!4653991))

(declare-fun m!4653993 () Bool)

(assert (=> b!4052134 m!4653993))

(assert (=> b!4052135 m!4653957))

(assert (=> b!4052135 m!4653959))

(assert (=> b!4052135 m!4653959))

(assert (=> b!4052135 m!4653961))

(assert (=> b!4052135 m!4653961))

(declare-fun m!4653995 () Bool)

(assert (=> b!4052135 m!4653995))

(assert (=> bm!287852 d!1203857))

(declare-fun d!1203859 () Bool)

(declare-fun lt!1444409 () Bool)

(assert (=> d!1203859 (= lt!1444409 (set.member (rule!10021 (_1!24322 (v!39762 lt!1443644))) (content!6598 (t!335879 rules!2999))))))

(declare-fun e!2514225 () Bool)

(assert (=> d!1203859 (= lt!1444409 e!2514225)))

(declare-fun res!1651531 () Bool)

(assert (=> d!1203859 (=> (not res!1651531) (not e!2514225))))

(assert (=> d!1203859 (= res!1651531 (is-Cons!43304 (t!335879 rules!2999)))))

(assert (=> d!1203859 (= (contains!8611 (t!335879 rules!2999) (rule!10021 (_1!24322 (v!39762 lt!1443644)))) lt!1444409)))

(declare-fun b!4052138 () Bool)

(declare-fun e!2514224 () Bool)

(assert (=> b!4052138 (= e!2514225 e!2514224)))

(declare-fun res!1651532 () Bool)

(assert (=> b!4052138 (=> res!1651532 e!2514224)))

(assert (=> b!4052138 (= res!1651532 (= (h!48724 (t!335879 rules!2999)) (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))

(declare-fun b!4052139 () Bool)

(assert (=> b!4052139 (= e!2514224 (contains!8611 (t!335879 (t!335879 rules!2999)) (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))

(assert (= (and d!1203859 res!1651531) b!4052138))

(assert (= (and b!4052138 (not res!1651532)) b!4052139))

(assert (=> d!1203859 m!4653533))

(declare-fun m!4653997 () Bool)

(assert (=> d!1203859 m!4653997))

(declare-fun m!4653999 () Bool)

(assert (=> b!4052139 m!4653999))

(assert (=> b!4050886 d!1203859))

(declare-fun d!1203861 () Bool)

(declare-fun c!700030 () Bool)

(assert (=> d!1203861 (= c!700030 (is-Nil!43302 lt!1443970))))

(declare-fun e!2514226 () (Set C!23874))

(assert (=> d!1203861 (= (content!6596 lt!1443970) e!2514226)))

(declare-fun b!4052140 () Bool)

(assert (=> b!4052140 (= e!2514226 (as set.empty (Set C!23874)))))

(declare-fun b!4052141 () Bool)

(assert (=> b!4052141 (= e!2514226 (set.union (set.insert (h!48722 lt!1443970) (as set.empty (Set C!23874))) (content!6596 (t!335877 lt!1443970))))))

(assert (= (and d!1203861 c!700030) b!4052140))

(assert (= (and d!1203861 (not c!700030)) b!4052141))

(declare-fun m!4654001 () Bool)

(assert (=> b!4052141 m!4654001))

(declare-fun m!4654003 () Bool)

(assert (=> b!4052141 m!4654003))

(assert (=> d!1203105 d!1203861))

(assert (=> d!1203105 d!1203765))

(assert (=> d!1203105 d!1203403))

(declare-fun d!1203863 () Bool)

(assert (=> d!1203863 (= (inv!57892 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (value!218397 token!484))) (isBalanced!3686 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (value!218397 token!484)))))))

(declare-fun bs!591627 () Bool)

(assert (= bs!591627 d!1203863))

(declare-fun m!4654005 () Bool)

(assert (=> bs!591627 m!4654005))

(assert (=> tb!243685 d!1203863))

(declare-fun d!1203865 () Bool)

(assert (=> d!1203865 (= suffixResult!105 lt!1443628)))

(assert (=> d!1203865 true))

(declare-fun _$63!1140 () Unit!62585)

(assert (=> d!1203865 (= (choose!24574 lt!1443622 suffixResult!105 lt!1443622 lt!1443628 lt!1443629) _$63!1140)))

(assert (=> d!1203157 d!1203865))

(assert (=> d!1203157 d!1203085))

(declare-fun d!1203867 () Bool)

(declare-fun lt!1444410 () Bool)

(assert (=> d!1203867 (= lt!1444410 (set.member (rule!10021 token!484) (content!6598 (t!335879 rules!2999))))))

(declare-fun e!2514228 () Bool)

(assert (=> d!1203867 (= lt!1444410 e!2514228)))

(declare-fun res!1651533 () Bool)

(assert (=> d!1203867 (=> (not res!1651533) (not e!2514228))))

(assert (=> d!1203867 (= res!1651533 (is-Cons!43304 (t!335879 rules!2999)))))

(assert (=> d!1203867 (= (contains!8611 (t!335879 rules!2999) (rule!10021 token!484)) lt!1444410)))

(declare-fun b!4052142 () Bool)

(declare-fun e!2514227 () Bool)

(assert (=> b!4052142 (= e!2514228 e!2514227)))

(declare-fun res!1651534 () Bool)

(assert (=> b!4052142 (=> res!1651534 e!2514227)))

(assert (=> b!4052142 (= res!1651534 (= (h!48724 (t!335879 rules!2999)) (rule!10021 token!484)))))

(declare-fun b!4052143 () Bool)

(assert (=> b!4052143 (= e!2514227 (contains!8611 (t!335879 (t!335879 rules!2999)) (rule!10021 token!484)))))

(assert (= (and d!1203867 res!1651533) b!4052142))

(assert (= (and b!4052142 (not res!1651534)) b!4052143))

(assert (=> d!1203867 m!4653533))

(declare-fun m!4654007 () Bool)

(assert (=> d!1203867 m!4654007))

(declare-fun m!4654009 () Bool)

(assert (=> b!4052143 m!4654009))

(assert (=> b!4051082 d!1203867))

(declare-fun d!1203869 () Bool)

(assert (=> d!1203869 (= (isEmpty!25846 (originalCharacters!7539 token!484)) (is-Nil!43302 (originalCharacters!7539 token!484)))))

(assert (=> d!1202949 d!1203869))

(declare-fun bs!591628 () Bool)

(declare-fun d!1203871 () Bool)

(assert (= bs!591628 (and d!1203871 d!1203623)))

(declare-fun lambda!127519 () Int)

(assert (=> bs!591628 (= (= (toValue!9491 (transformation!6939 (h!48724 rules!2999))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) (= lambda!127519 lambda!127515))))

(declare-fun bs!591629 () Bool)

(assert (= bs!591629 (and d!1203871 d!1203667)))

(assert (=> bs!591629 (= (= (toValue!9491 (transformation!6939 (h!48724 rules!2999))) (toValue!9491 (transformation!6939 (rule!10021 token!484)))) (= lambda!127519 lambda!127518))))

(assert (=> d!1203871 true))

(assert (=> d!1203871 (< (dynLambda!18403 order!22687 (toValue!9491 (transformation!6939 (h!48724 rules!2999)))) (dynLambda!18409 order!22693 lambda!127519))))

(assert (=> d!1203871 (= (equivClasses!2866 (toChars!9350 (transformation!6939 (h!48724 rules!2999))) (toValue!9491 (transformation!6939 (h!48724 rules!2999)))) (Forall2!1096 lambda!127519))))

(declare-fun bs!591630 () Bool)

(assert (= bs!591630 d!1203871))

(declare-fun m!4654011 () Bool)

(assert (=> bs!591630 m!4654011))

(assert (=> b!4050891 d!1203871))

(declare-fun d!1203873 () Bool)

(assert (=> d!1203873 (= (isEmpty!25847 lt!1443903) (not (is-Some!9352 lt!1443903)))))

(assert (=> d!1203005 d!1203873))

(declare-fun d!1203875 () Bool)

(assert (=> d!1203875 (= (isEmpty!25846 (_1!24324 lt!1443904)) (is-Nil!43302 (_1!24324 lt!1443904)))))

(assert (=> d!1203005 d!1203875))

(declare-fun d!1203877 () Bool)

(declare-fun lt!1444417 () tuple2!42380)

(assert (=> d!1203877 (= (++!11341 (_1!24324 lt!1444417) (_2!24324 lt!1444417)) lt!1443605)))

(assert (=> d!1203877 (= lt!1444417 (findLongestMatchInner!1396 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) Nil!43302 0 lt!1443605 lt!1443605 (sizeTr!279 lt!1443605 0)))))

(declare-fun lt!1444416 () Unit!62585)

(declare-fun lt!1444415 () Unit!62585)

(assert (=> d!1203877 (= lt!1444416 lt!1444415)))

(declare-fun lt!1444411 () List!43426)

(declare-fun lt!1444412 () Int)

(assert (=> d!1203877 (= (sizeTr!279 lt!1444411 lt!1444412) (+ (size!32375 lt!1444411) lt!1444412))))

(assert (=> d!1203877 (= lt!1444415 (lemmaSizeTrEqualsSize!278 lt!1444411 lt!1444412))))

(assert (=> d!1203877 (= lt!1444412 0)))

(assert (=> d!1203877 (= lt!1444411 Nil!43302)))

(declare-fun lt!1444413 () Unit!62585)

(declare-fun lt!1444414 () Unit!62585)

(assert (=> d!1203877 (= lt!1444413 lt!1444414)))

(declare-fun lt!1444418 () Int)

(assert (=> d!1203877 (= (sizeTr!279 lt!1443605 lt!1444418) (+ (size!32375 lt!1443605) lt!1444418))))

(assert (=> d!1203877 (= lt!1444414 (lemmaSizeTrEqualsSize!278 lt!1443605 lt!1444418))))

(assert (=> d!1203877 (= lt!1444418 0)))

(assert (=> d!1203877 (validRegex!5359 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))))

(assert (=> d!1203877 (= (findLongestMatch!1309 (regex!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))) lt!1443605) lt!1444417)))

(declare-fun bs!591631 () Bool)

(assert (= bs!591631 d!1203877))

(declare-fun m!4654013 () Bool)

(assert (=> bs!591631 m!4654013))

(declare-fun m!4654015 () Bool)

(assert (=> bs!591631 m!4654015))

(assert (=> bs!591631 m!4651757))

(declare-fun m!4654017 () Bool)

(assert (=> bs!591631 m!4654017))

(declare-fun m!4654019 () Bool)

(assert (=> bs!591631 m!4654019))

(declare-fun m!4654021 () Bool)

(assert (=> bs!591631 m!4654021))

(assert (=> bs!591631 m!4654017))

(declare-fun m!4654023 () Bool)

(assert (=> bs!591631 m!4654023))

(declare-fun m!4654025 () Bool)

(assert (=> bs!591631 m!4654025))

(declare-fun m!4654027 () Bool)

(assert (=> bs!591631 m!4654027))

(assert (=> bs!591631 m!4651897))

(assert (=> d!1203005 d!1203877))

(assert (=> d!1203005 d!1203007))

(assert (=> b!4050613 d!1203097))

(assert (=> b!4050613 d!1203099))

(declare-fun d!1203879 () Bool)

(declare-fun lt!1444419 () Int)

(assert (=> d!1203879 (>= lt!1444419 0)))

(declare-fun e!2514229 () Int)

(assert (=> d!1203879 (= lt!1444419 e!2514229)))

(declare-fun c!700031 () Bool)

(assert (=> d!1203879 (= c!700031 (is-Nil!43302 lt!1443992))))

(assert (=> d!1203879 (= (size!32375 lt!1443992) lt!1444419)))

(declare-fun b!4052144 () Bool)

(assert (=> b!4052144 (= e!2514229 0)))

(declare-fun b!4052145 () Bool)

(assert (=> b!4052145 (= e!2514229 (+ 1 (size!32375 (t!335877 lt!1443992))))))

(assert (= (and d!1203879 c!700031) b!4052144))

(assert (= (and d!1203879 (not c!700031)) b!4052145))

(declare-fun m!4654029 () Bool)

(assert (=> b!4052145 m!4654029))

(assert (=> b!4051075 d!1203879))

(assert (=> b!4051075 d!1203117))

(declare-fun d!1203881 () Bool)

(declare-fun lt!1444420 () Int)

(assert (=> d!1203881 (>= lt!1444420 0)))

(declare-fun e!2514230 () Int)

(assert (=> d!1203881 (= lt!1444420 e!2514230)))

(declare-fun c!700032 () Bool)

(assert (=> d!1203881 (= c!700032 (is-Nil!43302 lt!1443609))))

(assert (=> d!1203881 (= (size!32375 lt!1443609) lt!1444420)))

(declare-fun b!4052146 () Bool)

(assert (=> b!4052146 (= e!2514230 0)))

(declare-fun b!4052147 () Bool)

(assert (=> b!4052147 (= e!2514230 (+ 1 (size!32375 (t!335877 lt!1443609))))))

(assert (= (and d!1203881 c!700032) b!4052146))

(assert (= (and d!1203881 (not c!700032)) b!4052147))

(declare-fun m!4654031 () Bool)

(assert (=> b!4052147 m!4654031))

(assert (=> b!4051075 d!1203881))

(assert (=> d!1203023 d!1203679))

(declare-fun d!1203883 () Bool)

(declare-fun e!2514232 () Bool)

(assert (=> d!1203883 e!2514232))

(declare-fun res!1651538 () Bool)

(assert (=> d!1203883 (=> res!1651538 e!2514232)))

(declare-fun lt!1444421 () Bool)

(assert (=> d!1203883 (= res!1651538 (not lt!1444421))))

(declare-fun e!2514231 () Bool)

(assert (=> d!1203883 (= lt!1444421 e!2514231)))

(declare-fun res!1651536 () Bool)

(assert (=> d!1203883 (=> res!1651536 e!2514231)))

(assert (=> d!1203883 (= res!1651536 (is-Nil!43302 (tail!6294 lt!1443622)))))

(assert (=> d!1203883 (= (isPrefix!4026 (tail!6294 lt!1443622) (tail!6294 lt!1443623)) lt!1444421)))

(declare-fun b!4052150 () Bool)

(declare-fun e!2514233 () Bool)

(assert (=> b!4052150 (= e!2514233 (isPrefix!4026 (tail!6294 (tail!6294 lt!1443622)) (tail!6294 (tail!6294 lt!1443623))))))

(declare-fun b!4052149 () Bool)

(declare-fun res!1651535 () Bool)

(assert (=> b!4052149 (=> (not res!1651535) (not e!2514233))))

(assert (=> b!4052149 (= res!1651535 (= (head!8562 (tail!6294 lt!1443622)) (head!8562 (tail!6294 lt!1443623))))))

(declare-fun b!4052148 () Bool)

(assert (=> b!4052148 (= e!2514231 e!2514233)))

(declare-fun res!1651537 () Bool)

(assert (=> b!4052148 (=> (not res!1651537) (not e!2514233))))

(assert (=> b!4052148 (= res!1651537 (not (is-Nil!43302 (tail!6294 lt!1443623))))))

(declare-fun b!4052151 () Bool)

(assert (=> b!4052151 (= e!2514232 (>= (size!32375 (tail!6294 lt!1443623)) (size!32375 (tail!6294 lt!1443622))))))

(assert (= (and d!1203883 (not res!1651536)) b!4052148))

(assert (= (and b!4052148 res!1651537) b!4052149))

(assert (= (and b!4052149 res!1651535) b!4052150))

(assert (= (and d!1203883 (not res!1651538)) b!4052151))

(assert (=> b!4052150 m!4651639))

(assert (=> b!4052150 m!4652775))

(assert (=> b!4052150 m!4652349))

(declare-fun m!4654033 () Bool)

(assert (=> b!4052150 m!4654033))

(assert (=> b!4052150 m!4652775))

(assert (=> b!4052150 m!4654033))

(declare-fun m!4654035 () Bool)

(assert (=> b!4052150 m!4654035))

(assert (=> b!4052149 m!4651639))

(assert (=> b!4052149 m!4652781))

(assert (=> b!4052149 m!4652349))

(declare-fun m!4654037 () Bool)

(assert (=> b!4052149 m!4654037))

(assert (=> b!4052151 m!4652349))

(declare-fun m!4654039 () Bool)

(assert (=> b!4052151 m!4654039))

(assert (=> b!4052151 m!4651639))

(assert (=> b!4052151 m!4652787))

(assert (=> b!4051097 d!1203883))

(assert (=> b!4051097 d!1203301))

(declare-fun d!1203885 () Bool)

(assert (=> d!1203885 (= (tail!6294 lt!1443623) (t!335877 lt!1443623))))

(assert (=> b!4051097 d!1203885))

(declare-fun d!1203887 () Bool)

(declare-fun c!700033 () Bool)

(assert (=> d!1203887 (= c!700033 (is-Node!13150 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (value!218397 token!484)))))))

(declare-fun e!2514234 () Bool)

(assert (=> d!1203887 (= (inv!57891 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (value!218397 token!484)))) e!2514234)))

(declare-fun b!4052152 () Bool)

(assert (=> b!4052152 (= e!2514234 (inv!57895 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (value!218397 token!484)))))))

(declare-fun b!4052153 () Bool)

(declare-fun e!2514235 () Bool)

(assert (=> b!4052153 (= e!2514234 e!2514235)))

(declare-fun res!1651539 () Bool)

(assert (=> b!4052153 (= res!1651539 (not (is-Leaf!20327 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (value!218397 token!484))))))))

(assert (=> b!4052153 (=> res!1651539 e!2514235)))

(declare-fun b!4052154 () Bool)

(assert (=> b!4052154 (= e!2514235 (inv!57896 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (value!218397 token!484)))))))

(assert (= (and d!1203887 c!700033) b!4052152))

(assert (= (and d!1203887 (not c!700033)) b!4052153))

(assert (= (and b!4052153 (not res!1651539)) b!4052154))

(declare-fun m!4654041 () Bool)

(assert (=> b!4052152 m!4654041))

(declare-fun m!4654043 () Bool)

(assert (=> b!4052154 m!4654043))

(assert (=> b!4050727 d!1203887))

(assert (=> b!4050992 d!1203559))

(assert (=> b!4050992 d!1203293))

(assert (=> b!4050776 d!1203817))

(assert (=> b!4050776 d!1203443))

(declare-fun d!1203889 () Bool)

(declare-fun e!2514237 () Bool)

(assert (=> d!1203889 e!2514237))

(declare-fun res!1651543 () Bool)

(assert (=> d!1203889 (=> res!1651543 e!2514237)))

(declare-fun lt!1444422 () Bool)

(assert (=> d!1203889 (= res!1651543 (not lt!1444422))))

(declare-fun e!2514236 () Bool)

(assert (=> d!1203889 (= lt!1444422 e!2514236)))

(declare-fun res!1651541 () Bool)

(assert (=> d!1203889 (=> res!1651541 e!2514236)))

(assert (=> d!1203889 (= res!1651541 (is-Nil!43302 lt!1443625))))

(assert (=> d!1203889 (= (isPrefix!4026 lt!1443625 (++!11341 lt!1443625 lt!1443602)) lt!1444422)))

(declare-fun b!4052157 () Bool)

(declare-fun e!2514238 () Bool)

(assert (=> b!4052157 (= e!2514238 (isPrefix!4026 (tail!6294 lt!1443625) (tail!6294 (++!11341 lt!1443625 lt!1443602))))))

(declare-fun b!4052156 () Bool)

(declare-fun res!1651540 () Bool)

(assert (=> b!4052156 (=> (not res!1651540) (not e!2514238))))

(assert (=> b!4052156 (= res!1651540 (= (head!8562 lt!1443625) (head!8562 (++!11341 lt!1443625 lt!1443602))))))

(declare-fun b!4052155 () Bool)

(assert (=> b!4052155 (= e!2514236 e!2514238)))

(declare-fun res!1651542 () Bool)

(assert (=> b!4052155 (=> (not res!1651542) (not e!2514238))))

(assert (=> b!4052155 (= res!1651542 (not (is-Nil!43302 (++!11341 lt!1443625 lt!1443602))))))

(declare-fun b!4052158 () Bool)

(assert (=> b!4052158 (= e!2514237 (>= (size!32375 (++!11341 lt!1443625 lt!1443602)) (size!32375 lt!1443625)))))

(assert (= (and d!1203889 (not res!1651541)) b!4052155))

(assert (= (and b!4052155 res!1651542) b!4052156))

(assert (= (and b!4052156 res!1651540) b!4052157))

(assert (= (and d!1203889 (not res!1651543)) b!4052158))

(assert (=> b!4052157 m!4651761))

(assert (=> b!4052157 m!4651233))

(declare-fun m!4654045 () Bool)

(assert (=> b!4052157 m!4654045))

(assert (=> b!4052157 m!4651761))

(assert (=> b!4052157 m!4654045))

(declare-fun m!4654047 () Bool)

(assert (=> b!4052157 m!4654047))

(assert (=> b!4052156 m!4651753))

(assert (=> b!4052156 m!4651233))

(declare-fun m!4654049 () Bool)

(assert (=> b!4052156 m!4654049))

(assert (=> b!4052158 m!4651233))

(declare-fun m!4654051 () Bool)

(assert (=> b!4052158 m!4654051))

(assert (=> b!4052158 m!4651321))

(assert (=> d!1203143 d!1203889))

(assert (=> d!1203143 d!1203071))

(declare-fun d!1203891 () Bool)

(assert (=> d!1203891 (isPrefix!4026 lt!1443625 (++!11341 lt!1443625 lt!1443602))))

(assert (=> d!1203891 true))

(declare-fun _$46!1814 () Unit!62585)

(assert (=> d!1203891 (= (choose!24575 lt!1443625 lt!1443602) _$46!1814)))

(declare-fun bs!591632 () Bool)

(assert (= bs!591632 d!1203891))

(assert (=> bs!591632 m!4651233))

(assert (=> bs!591632 m!4651233))

(assert (=> bs!591632 m!4652281))

(assert (=> d!1203143 d!1203891))

(declare-fun b!4052164 () Bool)

(declare-fun e!2514239 () Bool)

(declare-fun tp!1228541 () Bool)

(declare-fun tp!1228537 () Bool)

(assert (=> b!4052164 (= e!2514239 (and tp!1228541 tp!1228537))))

(assert (=> b!4051116 (= tp!1228465 e!2514239)))

(declare-fun b!4052161 () Bool)

(assert (=> b!4052161 (= e!2514239 tp_is_empty!20659)))

(declare-fun b!4052163 () Bool)

(declare-fun tp!1228539 () Bool)

(assert (=> b!4052163 (= e!2514239 tp!1228539)))

(declare-fun b!4052162 () Bool)

(declare-fun tp!1228538 () Bool)

(declare-fun tp!1228540 () Bool)

(assert (=> b!4052162 (= e!2514239 (and tp!1228538 tp!1228540))))

(assert (= (and b!4051116 (is-ElementMatch!11844 (reg!12173 (regex!6939 (rule!10021 token!484))))) b!4052161))

(assert (= (and b!4051116 (is-Concat!19014 (reg!12173 (regex!6939 (rule!10021 token!484))))) b!4052162))

(assert (= (and b!4051116 (is-Star!11844 (reg!12173 (regex!6939 (rule!10021 token!484))))) b!4052163))

(assert (= (and b!4051116 (is-Union!11844 (reg!12173 (regex!6939 (rule!10021 token!484))))) b!4052164))

(declare-fun b!4052169 () Bool)

(declare-fun b_free!112745 () Bool)

(declare-fun b_next!113449 () Bool)

(assert (=> b!4052169 (= b_free!112745 (not b_next!113449))))

(declare-fun tb!243801 () Bool)

(declare-fun t!336007 () Bool)

(assert (=> (and b!4052169 (= (toValue!9491 (transformation!6939 (h!48724 (t!335879 (t!335879 rules!2999))))) (toValue!9491 (transformation!6939 (rule!10021 token!484)))) t!336007) tb!243801))

(declare-fun result!295430 () Bool)

(assert (= result!295430 result!295370))

(assert (=> d!1203337 t!336007))

(declare-fun tb!243803 () Bool)

(declare-fun t!336009 () Bool)

(assert (=> (and b!4052169 (= (toValue!9491 (transformation!6939 (h!48724 (t!335879 (t!335879 rules!2999))))) (toValue!9491 (transformation!6939 (rule!10021 token!484)))) t!336009) tb!243803))

(declare-fun result!295432 () Bool)

(assert (= result!295432 result!295290))

(assert (=> d!1202935 t!336009))

(declare-fun tb!243805 () Bool)

(declare-fun t!336011 () Bool)

(assert (=> (and b!4052169 (= (toValue!9491 (transformation!6939 (h!48724 (t!335879 (t!335879 rules!2999))))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443859)))))) t!336011) tb!243805))

(declare-fun result!295434 () Bool)

(assert (= result!295434 result!295424))

(assert (=> d!1203709 t!336011))

(declare-fun tb!243807 () Bool)

(declare-fun t!336013 () Bool)

(assert (=> (and b!4052169 (= (toValue!9491 (transformation!6939 (h!48724 (t!335879 (t!335879 rules!2999))))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) t!336013) tb!243807))

(declare-fun result!295436 () Bool)

(assert (= result!295436 result!295406))

(assert (=> d!1203653 t!336013))

(assert (=> d!1203649 t!336013))

(declare-fun t!336015 () Bool)

(declare-fun tb!243809 () Bool)

(assert (=> (and b!4052169 (= (toValue!9491 (transformation!6939 (h!48724 (t!335879 (t!335879 rules!2999))))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443941)))))) t!336015) tb!243809))

(declare-fun result!295438 () Bool)

(assert (= result!295438 result!295400))

(assert (=> d!1203625 t!336015))

(assert (=> d!1203347 t!336007))

(declare-fun t!336017 () Bool)

(declare-fun tb!243811 () Bool)

(assert (=> (and b!4052169 (= (toValue!9491 (transformation!6939 (h!48724 (t!335879 (t!335879 rules!2999))))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443996)))))) t!336017) tb!243811))

(declare-fun result!295440 () Bool)

(assert (= result!295440 result!295418))

(assert (=> d!1203695 t!336017))

(declare-fun t!336021 () Bool)

(declare-fun tb!243815 () Bool)

(assert (=> (and b!4052169 (= (toValue!9491 (transformation!6939 (h!48724 (t!335879 (t!335879 rules!2999))))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443903)))))) t!336021) tb!243815))

(declare-fun result!295442 () Bool)

(assert (= result!295442 result!295382))

(assert (=> d!1203437 t!336021))

(declare-fun tb!243817 () Bool)

(declare-fun t!336023 () Bool)

(assert (=> (and b!4052169 (= (toValue!9491 (transformation!6939 (h!48724 (t!335879 (t!335879 rules!2999))))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) t!336023) tb!243817))

(declare-fun result!295446 () Bool)

(assert (= result!295446 result!295302))

(assert (=> d!1202967 t!336023))

(declare-fun tp!1228545 () Bool)

(declare-fun b_and!311615 () Bool)

(assert (=> b!4052169 (= tp!1228545 (and (=> t!336015 result!295438) (=> t!336021 result!295442) (=> t!336007 result!295430) (=> t!336017 result!295440) (=> t!336009 result!295432) (=> t!336011 result!295434) (=> t!336013 result!295436) (=> t!336023 result!295446) b_and!311615))))

(declare-fun b_free!112747 () Bool)

(declare-fun b_next!113451 () Bool)

(assert (=> b!4052169 (= b_free!112747 (not b_next!113451))))

(declare-fun tb!243823 () Bool)

(declare-fun t!336029 () Bool)

(assert (=> (and b!4052169 (= (toChars!9350 (transformation!6939 (h!48724 (t!335879 (t!335879 rules!2999))))) (toChars!9350 (transformation!6939 (rule!10021 token!484)))) t!336029) tb!243823))

(declare-fun result!295452 () Bool)

(assert (= result!295452 result!295296))

(assert (=> b!4050721 t!336029))

(declare-fun t!336031 () Bool)

(declare-fun tb!243825 () Bool)

(assert (=> (and b!4052169 (= (toChars!9350 (transformation!6939 (h!48724 (t!335879 (t!335879 rules!2999))))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443996)))))) t!336031) tb!243825))

(declare-fun result!295454 () Bool)

(assert (= result!295454 result!295364))

(assert (=> d!1203309 t!336031))

(declare-fun tb!243827 () Bool)

(declare-fun t!336033 () Bool)

(assert (=> (and b!4052169 (= (toChars!9350 (transformation!6939 (h!48724 (t!335879 (t!335879 rules!2999))))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443859)))))) t!336033) tb!243827))

(declare-fun result!295456 () Bool)

(assert (= result!295456 result!295388))

(assert (=> d!1203509 t!336033))

(declare-fun t!336037 () Bool)

(declare-fun tb!243831 () Bool)

(assert (=> (and b!4052169 (= (toChars!9350 (transformation!6939 (h!48724 (t!335879 (t!335879 rules!2999))))) (toChars!9350 (transformation!6939 (rule!10021 token!484)))) t!336037) tb!243831))

(declare-fun result!295460 () Bool)

(assert (= result!295460 result!295376))

(assert (=> d!1203347 t!336037))

(declare-fun tb!243833 () Bool)

(declare-fun t!336039 () Bool)

(assert (=> (and b!4052169 (= (toChars!9350 (transformation!6939 (h!48724 (t!335879 (t!335879 rules!2999))))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443941)))))) t!336039) tb!243833))

(declare-fun result!295462 () Bool)

(assert (= result!295462 result!295358))

(assert (=> d!1203287 t!336039))

(declare-fun tb!243835 () Bool)

(declare-fun t!336041 () Bool)

(assert (=> (and b!4052169 (= (toChars!9350 (transformation!6939 (h!48724 (t!335879 (t!335879 rules!2999))))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) t!336041) tb!243835))

(declare-fun result!295464 () Bool)

(assert (= result!295464 result!295412))

(assert (=> d!1203653 t!336041))

(declare-fun t!336043 () Bool)

(declare-fun tb!243837 () Bool)

(assert (=> (and b!4052169 (= (toChars!9350 (transformation!6939 (h!48724 (t!335879 (t!335879 rules!2999))))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (get!14207 lt!1443903)))))) t!336043) tb!243837))

(declare-fun result!295466 () Bool)

(assert (= result!295466 result!295394))

(assert (=> d!1203543 t!336043))

(assert (=> d!1203121 t!336029))

(declare-fun t!336047 () Bool)

(declare-fun tb!243839 () Bool)

(assert (=> (and b!4052169 (= (toChars!9350 (transformation!6939 (h!48724 (t!335879 (t!335879 rules!2999))))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644)))))) t!336047) tb!243839))

(declare-fun result!295468 () Bool)

(assert (= result!295468 result!295306))

(assert (=> d!1202971 t!336047))

(declare-fun tp!1228543 () Bool)

(declare-fun b_and!311621 () Bool)

(assert (=> b!4052169 (= tp!1228543 (and (=> t!336033 result!295456) (=> t!336037 result!295460) (=> t!336031 result!295454) (=> t!336039 result!295462) (=> t!336029 result!295452) (=> t!336041 result!295464) (=> t!336047 result!295468) (=> t!336043 result!295466) b_and!311621))))

(declare-fun e!2514245 () Bool)

(assert (=> b!4052169 (= e!2514245 (and tp!1228545 tp!1228543))))

(declare-fun b!4052168 () Bool)

(declare-fun e!2514242 () Bool)

(declare-fun tp!1228544 () Bool)

(assert (=> b!4052168 (= e!2514242 (and tp!1228544 (inv!57884 (tag!7799 (h!48724 (t!335879 (t!335879 rules!2999))))) (inv!57888 (transformation!6939 (h!48724 (t!335879 (t!335879 rules!2999))))) e!2514245))))

(declare-fun b!4052167 () Bool)

(declare-fun e!2514244 () Bool)

(declare-fun tp!1228542 () Bool)

(assert (=> b!4052167 (= e!2514244 (and e!2514242 tp!1228542))))

(assert (=> b!4051132 (= tp!1228483 e!2514244)))

(assert (= b!4052168 b!4052169))

(assert (= b!4052167 b!4052168))

(assert (= (and b!4051132 (is-Cons!43304 (t!335879 (t!335879 rules!2999)))) b!4052167))

(declare-fun m!4654065 () Bool)

(assert (=> b!4052168 m!4654065))

(declare-fun m!4654067 () Bool)

(assert (=> b!4052168 m!4654067))

(declare-fun b!4052175 () Bool)

(declare-fun e!2514249 () Bool)

(declare-fun tp!1228551 () Bool)

(declare-fun tp!1228547 () Bool)

(assert (=> b!4052175 (= e!2514249 (and tp!1228551 tp!1228547))))

(assert (=> b!4051117 (= tp!1228467 e!2514249)))

(declare-fun b!4052172 () Bool)

(assert (=> b!4052172 (= e!2514249 tp_is_empty!20659)))

(declare-fun b!4052174 () Bool)

(declare-fun tp!1228549 () Bool)

(assert (=> b!4052174 (= e!2514249 tp!1228549)))

(declare-fun b!4052173 () Bool)

(declare-fun tp!1228548 () Bool)

(declare-fun tp!1228550 () Bool)

(assert (=> b!4052173 (= e!2514249 (and tp!1228548 tp!1228550))))

(assert (= (and b!4051117 (is-ElementMatch!11844 (regOne!24201 (regex!6939 (rule!10021 token!484))))) b!4052172))

(assert (= (and b!4051117 (is-Concat!19014 (regOne!24201 (regex!6939 (rule!10021 token!484))))) b!4052173))

(assert (= (and b!4051117 (is-Star!11844 (regOne!24201 (regex!6939 (rule!10021 token!484))))) b!4052174))

(assert (= (and b!4051117 (is-Union!11844 (regOne!24201 (regex!6939 (rule!10021 token!484))))) b!4052175))

(declare-fun b!4052179 () Bool)

(declare-fun e!2514250 () Bool)

(declare-fun tp!1228556 () Bool)

(declare-fun tp!1228552 () Bool)

(assert (=> b!4052179 (= e!2514250 (and tp!1228556 tp!1228552))))

(assert (=> b!4051117 (= tp!1228463 e!2514250)))

(declare-fun b!4052176 () Bool)

(assert (=> b!4052176 (= e!2514250 tp_is_empty!20659)))

(declare-fun b!4052178 () Bool)

(declare-fun tp!1228554 () Bool)

(assert (=> b!4052178 (= e!2514250 tp!1228554)))

(declare-fun b!4052177 () Bool)

(declare-fun tp!1228553 () Bool)

(declare-fun tp!1228555 () Bool)

(assert (=> b!4052177 (= e!2514250 (and tp!1228553 tp!1228555))))

(assert (= (and b!4051117 (is-ElementMatch!11844 (regTwo!24201 (regex!6939 (rule!10021 token!484))))) b!4052176))

(assert (= (and b!4051117 (is-Concat!19014 (regTwo!24201 (regex!6939 (rule!10021 token!484))))) b!4052177))

(assert (= (and b!4051117 (is-Star!11844 (regTwo!24201 (regex!6939 (rule!10021 token!484))))) b!4052178))

(assert (= (and b!4051117 (is-Union!11844 (regTwo!24201 (regex!6939 (rule!10021 token!484))))) b!4052179))

(declare-fun b!4052183 () Bool)

(declare-fun e!2514251 () Bool)

(declare-fun tp!1228561 () Bool)

(declare-fun tp!1228557 () Bool)

(assert (=> b!4052183 (= e!2514251 (and tp!1228561 tp!1228557))))

(assert (=> b!4051120 (= tp!1228470 e!2514251)))

(declare-fun b!4052180 () Bool)

(assert (=> b!4052180 (= e!2514251 tp_is_empty!20659)))

(declare-fun b!4052182 () Bool)

(declare-fun tp!1228559 () Bool)

(assert (=> b!4052182 (= e!2514251 tp!1228559)))

(declare-fun b!4052181 () Bool)

(declare-fun tp!1228558 () Bool)

(declare-fun tp!1228560 () Bool)

(assert (=> b!4052181 (= e!2514251 (and tp!1228558 tp!1228560))))

(assert (= (and b!4051120 (is-ElementMatch!11844 (regOne!24200 (regex!6939 (h!48724 rules!2999))))) b!4052180))

(assert (= (and b!4051120 (is-Concat!19014 (regOne!24200 (regex!6939 (h!48724 rules!2999))))) b!4052181))

(assert (= (and b!4051120 (is-Star!11844 (regOne!24200 (regex!6939 (h!48724 rules!2999))))) b!4052182))

(assert (= (and b!4051120 (is-Union!11844 (regOne!24200 (regex!6939 (h!48724 rules!2999))))) b!4052183))

(declare-fun b!4052187 () Bool)

(declare-fun e!2514252 () Bool)

(declare-fun tp!1228566 () Bool)

(declare-fun tp!1228562 () Bool)

(assert (=> b!4052187 (= e!2514252 (and tp!1228566 tp!1228562))))

(assert (=> b!4051120 (= tp!1228472 e!2514252)))

(declare-fun b!4052184 () Bool)

(assert (=> b!4052184 (= e!2514252 tp_is_empty!20659)))

(declare-fun b!4052186 () Bool)

(declare-fun tp!1228564 () Bool)

(assert (=> b!4052186 (= e!2514252 tp!1228564)))

(declare-fun b!4052185 () Bool)

(declare-fun tp!1228563 () Bool)

(declare-fun tp!1228565 () Bool)

(assert (=> b!4052185 (= e!2514252 (and tp!1228563 tp!1228565))))

(assert (= (and b!4051120 (is-ElementMatch!11844 (regTwo!24200 (regex!6939 (h!48724 rules!2999))))) b!4052184))

(assert (= (and b!4051120 (is-Concat!19014 (regTwo!24200 (regex!6939 (h!48724 rules!2999))))) b!4052185))

(assert (= (and b!4051120 (is-Star!11844 (regTwo!24200 (regex!6939 (h!48724 rules!2999))))) b!4052186))

(assert (= (and b!4051120 (is-Union!11844 (regTwo!24200 (regex!6939 (h!48724 rules!2999))))) b!4052187))

(declare-fun b!4052191 () Bool)

(declare-fun e!2514253 () Bool)

(declare-fun tp!1228571 () Bool)

(declare-fun tp!1228567 () Bool)

(assert (=> b!4052191 (= e!2514253 (and tp!1228571 tp!1228567))))

(assert (=> b!4051133 (= tp!1228485 e!2514253)))

(declare-fun b!4052188 () Bool)

(assert (=> b!4052188 (= e!2514253 tp_is_empty!20659)))

(declare-fun b!4052190 () Bool)

(declare-fun tp!1228569 () Bool)

(assert (=> b!4052190 (= e!2514253 tp!1228569)))

(declare-fun b!4052189 () Bool)

(declare-fun tp!1228568 () Bool)

(declare-fun tp!1228570 () Bool)

(assert (=> b!4052189 (= e!2514253 (and tp!1228568 tp!1228570))))

(assert (= (and b!4051133 (is-ElementMatch!11844 (regex!6939 (h!48724 (t!335879 rules!2999))))) b!4052188))

(assert (= (and b!4051133 (is-Concat!19014 (regex!6939 (h!48724 (t!335879 rules!2999))))) b!4052189))

(assert (= (and b!4051133 (is-Star!11844 (regex!6939 (h!48724 (t!335879 rules!2999))))) b!4052190))

(assert (= (and b!4051133 (is-Union!11844 (regex!6939 (h!48724 (t!335879 rules!2999))))) b!4052191))

(declare-fun b!4052195 () Bool)

(declare-fun e!2514254 () Bool)

(declare-fun tp!1228576 () Bool)

(declare-fun tp!1228572 () Bool)

(assert (=> b!4052195 (= e!2514254 (and tp!1228576 tp!1228572))))

(assert (=> b!4051121 (= tp!1228471 e!2514254)))

(declare-fun b!4052192 () Bool)

(assert (=> b!4052192 (= e!2514254 tp_is_empty!20659)))

(declare-fun b!4052194 () Bool)

(declare-fun tp!1228574 () Bool)

(assert (=> b!4052194 (= e!2514254 tp!1228574)))

(declare-fun b!4052193 () Bool)

(declare-fun tp!1228573 () Bool)

(declare-fun tp!1228575 () Bool)

(assert (=> b!4052193 (= e!2514254 (and tp!1228573 tp!1228575))))

(assert (= (and b!4051121 (is-ElementMatch!11844 (reg!12173 (regex!6939 (h!48724 rules!2999))))) b!4052192))

(assert (= (and b!4051121 (is-Concat!19014 (reg!12173 (regex!6939 (h!48724 rules!2999))))) b!4052193))

(assert (= (and b!4051121 (is-Star!11844 (reg!12173 (regex!6939 (h!48724 rules!2999))))) b!4052194))

(assert (= (and b!4051121 (is-Union!11844 (reg!12173 (regex!6939 (h!48724 rules!2999))))) b!4052195))

(declare-fun b!4052204 () Bool)

(declare-fun tp!1228583 () Bool)

(declare-fun e!2514259 () Bool)

(declare-fun tp!1228584 () Bool)

(assert (=> b!4052204 (= e!2514259 (and (inv!57891 (left!32606 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (value!218397 (_1!24322 (v!39762 lt!1443644))))))) tp!1228584 (inv!57891 (right!32936 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (value!218397 (_1!24322 (v!39762 lt!1443644))))))) tp!1228583))))

(declare-fun b!4052206 () Bool)

(declare-fun e!2514260 () Bool)

(declare-fun tp!1228585 () Bool)

(assert (=> b!4052206 (= e!2514260 tp!1228585)))

(declare-fun b!4052205 () Bool)

(declare-fun inv!57899 (IArray!26305) Bool)

(assert (=> b!4052205 (= e!2514259 (and (inv!57899 (xs!16456 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (value!218397 (_1!24322 (v!39762 lt!1443644))))))) e!2514260))))

(assert (=> b!4050799 (= tp!1228446 (and (inv!57891 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (value!218397 (_1!24322 (v!39762 lt!1443644)))))) e!2514259))))

(assert (= (and b!4050799 (is-Node!13150 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (value!218397 (_1!24322 (v!39762 lt!1443644))))))) b!4052204))

(assert (= b!4052205 b!4052206))

(assert (= (and b!4050799 (is-Leaf!20327 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))) (value!218397 (_1!24322 (v!39762 lt!1443644))))))) b!4052205))

(declare-fun m!4654077 () Bool)

(assert (=> b!4052204 m!4654077))

(declare-fun m!4654079 () Bool)

(assert (=> b!4052204 m!4654079))

(declare-fun m!4654081 () Bool)

(assert (=> b!4052205 m!4654081))

(assert (=> b!4050799 m!4651801))

(declare-fun b!4052209 () Bool)

(declare-fun e!2514262 () Bool)

(declare-fun tp!1228586 () Bool)

(assert (=> b!4052209 (= e!2514262 (and tp_is_empty!20659 tp!1228586))))

(assert (=> b!4051135 (= tp!1228487 e!2514262)))

(assert (= (and b!4051135 (is-Cons!43302 (t!335877 (t!335877 prefix!494)))) b!4052209))

(declare-fun b!4052213 () Bool)

(declare-fun e!2514263 () Bool)

(declare-fun tp!1228591 () Bool)

(declare-fun tp!1228587 () Bool)

(assert (=> b!4052213 (= e!2514263 (and tp!1228591 tp!1228587))))

(assert (=> b!4051122 (= tp!1228473 e!2514263)))

(declare-fun b!4052210 () Bool)

(assert (=> b!4052210 (= e!2514263 tp_is_empty!20659)))

(declare-fun b!4052212 () Bool)

(declare-fun tp!1228589 () Bool)

(assert (=> b!4052212 (= e!2514263 tp!1228589)))

(declare-fun b!4052211 () Bool)

(declare-fun tp!1228588 () Bool)

(declare-fun tp!1228590 () Bool)

(assert (=> b!4052211 (= e!2514263 (and tp!1228588 tp!1228590))))

(assert (= (and b!4051122 (is-ElementMatch!11844 (regOne!24201 (regex!6939 (h!48724 rules!2999))))) b!4052210))

(assert (= (and b!4051122 (is-Concat!19014 (regOne!24201 (regex!6939 (h!48724 rules!2999))))) b!4052211))

(assert (= (and b!4051122 (is-Star!11844 (regOne!24201 (regex!6939 (h!48724 rules!2999))))) b!4052212))

(assert (= (and b!4051122 (is-Union!11844 (regOne!24201 (regex!6939 (h!48724 rules!2999))))) b!4052213))

(declare-fun b!4052217 () Bool)

(declare-fun e!2514264 () Bool)

(declare-fun tp!1228596 () Bool)

(declare-fun tp!1228592 () Bool)

(assert (=> b!4052217 (= e!2514264 (and tp!1228596 tp!1228592))))

(assert (=> b!4051122 (= tp!1228469 e!2514264)))

(declare-fun b!4052214 () Bool)

(assert (=> b!4052214 (= e!2514264 tp_is_empty!20659)))

(declare-fun b!4052216 () Bool)

(declare-fun tp!1228594 () Bool)

(assert (=> b!4052216 (= e!2514264 tp!1228594)))

(declare-fun b!4052215 () Bool)

(declare-fun tp!1228593 () Bool)

(declare-fun tp!1228595 () Bool)

(assert (=> b!4052215 (= e!2514264 (and tp!1228593 tp!1228595))))

(assert (= (and b!4051122 (is-ElementMatch!11844 (regTwo!24201 (regex!6939 (h!48724 rules!2999))))) b!4052214))

(assert (= (and b!4051122 (is-Concat!19014 (regTwo!24201 (regex!6939 (h!48724 rules!2999))))) b!4052215))

(assert (= (and b!4051122 (is-Star!11844 (regTwo!24201 (regex!6939 (h!48724 rules!2999))))) b!4052216))

(assert (= (and b!4051122 (is-Union!11844 (regTwo!24201 (regex!6939 (h!48724 rules!2999))))) b!4052217))

(declare-fun b!4052218 () Bool)

(declare-fun e!2514265 () Bool)

(declare-fun tp!1228597 () Bool)

(assert (=> b!4052218 (= e!2514265 (and tp_is_empty!20659 tp!1228597))))

(assert (=> b!4051118 (= tp!1228468 e!2514265)))

(assert (= (and b!4051118 (is-Cons!43302 (t!335877 (originalCharacters!7539 token!484)))) b!4052218))

(declare-fun b!4052219 () Bool)

(declare-fun e!2514266 () Bool)

(declare-fun tp!1228598 () Bool)

(assert (=> b!4052219 (= e!2514266 (and tp_is_empty!20659 tp!1228598))))

(assert (=> b!4051136 (= tp!1228488 e!2514266)))

(assert (= (and b!4051136 (is-Cons!43302 (t!335877 (t!335877 newSuffixResult!27)))) b!4052219))

(declare-fun b!4052220 () Bool)

(declare-fun e!2514267 () Bool)

(declare-fun tp!1228599 () Bool)

(assert (=> b!4052220 (= e!2514267 (and tp_is_empty!20659 tp!1228599))))

(assert (=> b!4051123 (= tp!1228474 e!2514267)))

(assert (= (and b!4051123 (is-Cons!43302 (t!335877 (t!335877 suffixResult!105)))) b!4052220))

(declare-fun b!4052221 () Bool)

(declare-fun e!2514268 () Bool)

(declare-fun tp!1228600 () Bool)

(assert (=> b!4052221 (= e!2514268 (and tp_is_empty!20659 tp!1228600))))

(assert (=> b!4051103 (= tp!1228452 e!2514268)))

(assert (= (and b!4051103 (is-Cons!43302 (t!335877 (t!335877 newSuffix!27)))) b!4052221))

(declare-fun b!4052222 () Bool)

(declare-fun tp!1228602 () Bool)

(declare-fun e!2514269 () Bool)

(declare-fun tp!1228601 () Bool)

(assert (=> b!4052222 (= e!2514269 (and (inv!57891 (left!32606 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (value!218397 token!484))))) tp!1228602 (inv!57891 (right!32936 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (value!218397 token!484))))) tp!1228601))))

(declare-fun b!4052224 () Bool)

(declare-fun e!2514270 () Bool)

(declare-fun tp!1228603 () Bool)

(assert (=> b!4052224 (= e!2514270 tp!1228603)))

(declare-fun b!4052223 () Bool)

(assert (=> b!4052223 (= e!2514269 (and (inv!57899 (xs!16456 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (value!218397 token!484))))) e!2514270))))

(assert (=> b!4050727 (= tp!1228445 (and (inv!57891 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (value!218397 token!484)))) e!2514269))))

(assert (= (and b!4050727 (is-Node!13150 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (value!218397 token!484))))) b!4052222))

(assert (= b!4052223 b!4052224))

(assert (= (and b!4050727 (is-Leaf!20327 (c!699688 (dynLambda!18400 (toChars!9350 (transformation!6939 (rule!10021 token!484))) (value!218397 token!484))))) b!4052223))

(declare-fun m!4654085 () Bool)

(assert (=> b!4052222 m!4654085))

(declare-fun m!4654087 () Bool)

(assert (=> b!4052222 m!4654087))

(declare-fun m!4654089 () Bool)

(assert (=> b!4052223 m!4654089))

(assert (=> b!4050727 m!4651727))

(declare-fun b!4052225 () Bool)

(declare-fun e!2514271 () Bool)

(declare-fun tp!1228604 () Bool)

(assert (=> b!4052225 (= e!2514271 (and tp_is_empty!20659 tp!1228604))))

(assert (=> b!4051137 (= tp!1228489 e!2514271)))

(assert (= (and b!4051137 (is-Cons!43302 (t!335877 (t!335877 suffix!1299)))) b!4052225))

(declare-fun b!4052229 () Bool)

(declare-fun e!2514272 () Bool)

(declare-fun tp!1228609 () Bool)

(declare-fun tp!1228605 () Bool)

(assert (=> b!4052229 (= e!2514272 (and tp!1228609 tp!1228605))))

(assert (=> b!4051115 (= tp!1228464 e!2514272)))

(declare-fun b!4052226 () Bool)

(assert (=> b!4052226 (= e!2514272 tp_is_empty!20659)))

(declare-fun b!4052228 () Bool)

(declare-fun tp!1228607 () Bool)

(assert (=> b!4052228 (= e!2514272 tp!1228607)))

(declare-fun b!4052227 () Bool)

(declare-fun tp!1228606 () Bool)

(declare-fun tp!1228608 () Bool)

(assert (=> b!4052227 (= e!2514272 (and tp!1228606 tp!1228608))))

(assert (= (and b!4051115 (is-ElementMatch!11844 (regOne!24200 (regex!6939 (rule!10021 token!484))))) b!4052226))

(assert (= (and b!4051115 (is-Concat!19014 (regOne!24200 (regex!6939 (rule!10021 token!484))))) b!4052227))

(assert (= (and b!4051115 (is-Star!11844 (regOne!24200 (regex!6939 (rule!10021 token!484))))) b!4052228))

(assert (= (and b!4051115 (is-Union!11844 (regOne!24200 (regex!6939 (rule!10021 token!484))))) b!4052229))

(declare-fun b!4052233 () Bool)

(declare-fun e!2514273 () Bool)

(declare-fun tp!1228614 () Bool)

(declare-fun tp!1228610 () Bool)

(assert (=> b!4052233 (= e!2514273 (and tp!1228614 tp!1228610))))

(assert (=> b!4051115 (= tp!1228466 e!2514273)))

(declare-fun b!4052230 () Bool)

(assert (=> b!4052230 (= e!2514273 tp_is_empty!20659)))

(declare-fun b!4052232 () Bool)

(declare-fun tp!1228612 () Bool)

(assert (=> b!4052232 (= e!2514273 tp!1228612)))

(declare-fun b!4052231 () Bool)

(declare-fun tp!1228611 () Bool)

(declare-fun tp!1228613 () Bool)

(assert (=> b!4052231 (= e!2514273 (and tp!1228611 tp!1228613))))

(assert (= (and b!4051115 (is-ElementMatch!11844 (regTwo!24200 (regex!6939 (rule!10021 token!484))))) b!4052230))

(assert (= (and b!4051115 (is-Concat!19014 (regTwo!24200 (regex!6939 (rule!10021 token!484))))) b!4052231))

(assert (= (and b!4051115 (is-Star!11844 (regTwo!24200 (regex!6939 (rule!10021 token!484))))) b!4052232))

(assert (= (and b!4051115 (is-Union!11844 (regTwo!24200 (regex!6939 (rule!10021 token!484))))) b!4052233))

(declare-fun b_lambda!118433 () Bool)

(assert (= b_lambda!118371 (or (and b!4050453 b_free!112721 (= (toValue!9491 (transformation!6939 (rule!10021 token!484))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))) (and b!4050449 b_free!112725 (= (toValue!9491 (transformation!6939 (h!48724 rules!2999))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))) (and b!4051134 b_free!112737 (= (toValue!9491 (transformation!6939 (h!48724 (t!335879 rules!2999)))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))) (and b!4052169 b_free!112745 (= (toValue!9491 (transformation!6939 (h!48724 (t!335879 (t!335879 rules!2999))))) (toValue!9491 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))) b_lambda!118433)))

(declare-fun b_lambda!118435 () Bool)

(assert (= b_lambda!118407 (or (and b!4050453 b_free!112721) (and b!4050449 b_free!112725 (= (toValue!9491 (transformation!6939 (h!48724 rules!2999))) (toValue!9491 (transformation!6939 (rule!10021 token!484))))) (and b!4051134 b_free!112737 (= (toValue!9491 (transformation!6939 (h!48724 (t!335879 rules!2999)))) (toValue!9491 (transformation!6939 (rule!10021 token!484))))) (and b!4052169 b_free!112745 (= (toValue!9491 (transformation!6939 (h!48724 (t!335879 (t!335879 rules!2999))))) (toValue!9491 (transformation!6939 (rule!10021 token!484))))) b_lambda!118435)))

(declare-fun b_lambda!118437 () Bool)

(assert (= b_lambda!118373 (or (and b!4050453 b_free!112723 (= (toChars!9350 (transformation!6939 (rule!10021 token!484))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))) (and b!4050449 b_free!112727 (= (toChars!9350 (transformation!6939 (h!48724 rules!2999))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))) (and b!4051134 b_free!112739 (= (toChars!9350 (transformation!6939 (h!48724 (t!335879 rules!2999)))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))) (and b!4052169 b_free!112747 (= (toChars!9350 (transformation!6939 (h!48724 (t!335879 (t!335879 rules!2999))))) (toChars!9350 (transformation!6939 (rule!10021 (_1!24322 (v!39762 lt!1443644))))))) b_lambda!118437)))

(declare-fun b_lambda!118439 () Bool)

(assert (= b_lambda!118405 (or (and b!4050453 b_free!112723) (and b!4050449 b_free!112727 (= (toChars!9350 (transformation!6939 (h!48724 rules!2999))) (toChars!9350 (transformation!6939 (rule!10021 token!484))))) (and b!4051134 b_free!112739 (= (toChars!9350 (transformation!6939 (h!48724 (t!335879 rules!2999)))) (toChars!9350 (transformation!6939 (rule!10021 token!484))))) (and b!4052169 b_free!112747 (= (toChars!9350 (transformation!6939 (h!48724 (t!335879 (t!335879 rules!2999))))) (toChars!9350 (transformation!6939 (rule!10021 token!484))))) b_lambda!118439)))

(declare-fun b_lambda!118441 () Bool)

(assert (= b_lambda!118403 (or (and b!4050453 b_free!112721) (and b!4050449 b_free!112725 (= (toValue!9491 (transformation!6939 (h!48724 rules!2999))) (toValue!9491 (transformation!6939 (rule!10021 token!484))))) (and b!4051134 b_free!112737 (= (toValue!9491 (transformation!6939 (h!48724 (t!335879 rules!2999)))) (toValue!9491 (transformation!6939 (rule!10021 token!484))))) (and b!4052169 b_free!112745 (= (toValue!9491 (transformation!6939 (h!48724 (t!335879 (t!335879 rules!2999))))) (toValue!9491 (transformation!6939 (rule!10021 token!484))))) b_lambda!118441)))

(push 1)

(assert (not d!1203531))

(assert (not b!4052124))

(assert (not bm!287900))

(assert (not d!1203711))

(assert (not b!4052218))

(assert (not b_lambda!118379))

(assert (not d!1203549))

(assert (not b!4052077))

(assert (not b!4051386))

(assert (not b!4051864))

(assert (not d!1203657))

(assert (not bm!287882))

(assert (not b!4051838))

(assert (not b!4052133))

(assert (not d!1203693))

(assert (not b!4051968))

(assert (not b!4052190))

(assert (not b!4051553))

(assert (not b!4051610))

(assert (not b!4052224))

(assert (not b!4051455))

(assert (not b!4051752))

(assert (not b!4051983))

(assert (not b!4051498))

(assert (not b!4051673))

(assert (not d!1203627))

(assert (not d!1203773))

(assert (not b!4052228))

(assert (not b!4051681))

(assert (not d!1203569))

(assert (not b!4052220))

(assert (not b!4051551))

(assert (not b!4052120))

(assert (not b!4052052))

(assert (not b_lambda!118417))

(assert (not bm!287926))

(assert (not b!4052181))

(assert (not b!4051988))

(assert (not d!1203745))

(assert (not b!4051745))

(assert (not bm!287895))

(assert (not b!4052036))

(assert (not d!1203345))

(assert (not b!4051747))

(assert (not d!1203727))

(assert (not b!4051563))

(assert (not b!4052025))

(assert (not b!4051381))

(assert (not d!1203743))

(assert (not b!4051790))

(assert (not b!4051633))

(assert (not b!4051533))

(assert (not b!4051951))

(assert b_and!311591)

(assert (not tb!243765))

(assert (not d!1203521))

(assert (not b!4051764))

(assert (not b!4052092))

(assert (not b!4052129))

(assert (not b!4051861))

(assert (not b!4051587))

(assert (not b!4052179))

(assert (not b!4051812))

(assert (not b_lambda!118411))

(assert (not b!4052219))

(assert (not b!4051956))

(assert (not d!1203741))

(assert (not b!4051743))

(assert (not b!4052206))

(assert (not d!1203611))

(assert (not b!4051721))

(assert (not b!4051770))

(assert (not b!4051600))

(assert (not b!4051492))

(assert (not b!4052136))

(assert (not b!4051822))

(assert (not b!4051671))

(assert (not d!1203589))

(assert (not bm!287902))

(assert (not d!1203539))

(assert (not b!4051839))

(assert (not b!4052039))

(assert (not b!4051904))

(assert (not b!4051883))

(assert (not b!4051427))

(assert (not d!1203853))

(assert (not b!4052177))

(assert (not b!4052163))

(assert (not d!1203645))

(assert (not b!4051679))

(assert (not d!1203483))

(assert (not d!1203805))

(assert (not d!1203439))

(assert (not b!4052154))

(assert (not b!4051496))

(assert (not d!1203507))

(assert (not bm!287896))

(assert (not b!4052108))

(assert (not b_lambda!118439))

(assert (not b!4051484))

(assert (not bm!287903))

(assert (not b!4051645))

(assert (not b!4051374))

(assert (not b!4051392))

(assert (not bm!287927))

(assert (not b!4052185))

(assert (not bm!287923))

(assert (not bm!287924))

(assert (not b!4051396))

(assert (not d!1203297))

(assert (not b!4051451))

(assert (not b!4052023))

(assert (not b!4052217))

(assert (not b!4052175))

(assert (not b!4052040))

(assert (not b!4051829))

(assert (not b!4052221))

(assert (not d!1203753))

(assert (not d!1203655))

(assert (not b!4052091))

(assert (not b_next!113449))

(assert (not d!1203629))

(assert (not b!4051592))

(assert (not b!4051490))

(assert (not tb!243759))

(assert (not b!4052003))

(assert (not b_lambda!118425))

(assert (not b!4051850))

(assert (not b!4051846))

(assert (not d!1203449))

(assert (not b!4051438))

(assert (not b_next!113441))

(assert (not b!4051634))

(assert (not b!4051377))

(assert (not d!1203479))

(assert (not b!4051744))

(assert (not bm!287893))

(assert (not d!1203669))

(assert (not b!4051596))

(assert (not d!1203309))

(assert (not b!4052105))

(assert (not b!4051741))

(assert (not b!4052141))

(assert (not b!4051380))

(assert (not b!4051880))

(assert (not b!4052139))

(assert (not b!4052015))

(assert (not b!4052088))

(assert (not b!4051643))

(assert (not b!4051522))

(assert (not d!1203313))

(assert (not b!4052050))

(assert (not b!4052033))

(assert (not b!4052067))

(assert (not d!1203857))

(assert (not b!4052064))

(assert (not b!4051669))

(assert (not b!4051997))

(assert (not b_lambda!118413))

(assert (not b!4051947))

(assert (not bm!287904))

(assert (not b!4051683))

(assert (not b!4051828))

(assert (not b_lambda!118409))

(assert b_and!311609)

(assert (not d!1203849))

(assert (not b!4051667))

(assert (not d!1203653))

(assert (not b!4052145))

(assert (not b!4052062))

(assert (not b!4051594))

(assert (not d!1203859))

(assert (not b!4051815))

(assert (not b!4051391))

(assert (not bm!287890))

(assert (not tb!243741))

(assert (not d!1203635))

(assert (not d!1203543))

(assert (not b!4051886))

(assert (not b!4051543))

(assert (not bm!287875))

(assert (not d!1203461))

(assert (not b!4052149))

(assert (not b!4052151))

(assert (not b!4051674))

(assert (not b!4052038))

(assert b_and!311621)

(assert (not d!1203839))

(assert (not b!4051547))

(assert (not b!4051441))

(assert (not b_lambda!118423))

(assert (not b!4051760))

(assert (not d!1203609))

(assert (not b!4051568))

(assert (not b!4051549))

(assert (not b!4051818))

(assert (not b_lambda!118415))

(assert (not b!4051639))

(assert (not d!1203537))

(assert (not d!1203697))

(assert (not b!4052205))

(assert (not d!1203807))

(assert (not b!4051848))

(assert (not d!1203287))

(assert (not d!1203347))

(assert (not d!1203785))

(assert (not b!4051874))

(assert (not b!4052229))

(assert (not b!4052063))

(assert (not b!4052069))

(assert (not b!4051642))

(assert (not b!4051617))

(assert b_and!311613)

(assert (not d!1203761))

(assert (not b!4051627))

(assert (not b!4051593))

(assert (not b!4052012))

(assert (not b!4052231))

(assert (not b!4052089))

(assert (not d!1203681))

(assert (not d!1203505))

(assert (not d!1203541))

(assert (not b!4051757))

(assert (not b!4051665))

(assert (not bm!287891))

(assert (not b!4052156))

(assert (not b!4052213))

(assert (not b!4051793))

(assert (not d!1203729))

(assert (not b!4052225))

(assert (not d!1203509))

(assert (not b!4052126))

(assert (not b!4051659))

(assert (not b!4051860))

(assert (not d!1203527))

(assert (not b!4051514))

(assert (not d!1203699))

(assert (not b!4051944))

(assert (not d!1203517))

(assert (not b!4051494))

(assert (not b_lambda!118435))

(assert (not b!4052121))

(assert (not b!4051978))

(assert (not b!4051457))

(assert (not d!1203779))

(assert (not b!4051520))

(assert (not b!4052100))

(assert (not tb!243747))

(assert (not b!4050799))

(assert (not b!4051690))

(assert (not b!4052216))

(assert (not bm!287921))

(assert (not b!4052066))

(assert (not bm!287922))

(assert (not b!4052211))

(assert (not b!4052147))

(assert (not b!4052027))

(assert (not b!4051841))

(assert (not b!4051723))

(assert (not b!4052109))

(assert (not b!4051436))

(assert (not b!4051655))

(assert (not b!4051613))

(assert (not b!4052031))

(assert (not b!4051486))

(assert (not d!1203689))

(assert (not b!4052227))

(assert (not b!4051888))

(assert (not b!4051575))

(assert (not b!4051555))

(assert (not b!4052193))

(assert (not d!1203519))

(assert (not b!4052130))

(assert (not bm!287917))

(assert (not d!1203643))

(assert (not d!1203829))

(assert (not b!4052186))

(assert (not b!4051868))

(assert (not b!4051835))

(assert (not b!4052106))

(assert (not b!4052116))

(assert (not b!4051488))

(assert (not b!4051443))

(assert (not bm!287877))

(assert (not b!4051373))

(assert (not tb!243729))

(assert (not d!1203683))

(assert (not b!4052046))

(assert (not b_lambda!118433))

(assert (not b_next!113451))

(assert (not d!1203685))

(assert (not b!4051550))

(assert (not b!4052158))

(assert (not b!4052017))

(assert (not b!4052118))

(assert (not b!4051797))

(assert (not b_lambda!118399))

(assert (not b!4052168))

(assert (not b_lambda!118401))

(assert (not b!4051750))

(assert (not b!4052113))

(assert (not tb!243777))

(assert (not b!4051554))

(assert (not b!4052096))

(assert (not b!4051901))

(assert (not bm!287916))

(assert (not d!1203841))

(assert (not bm!287879))

(assert (not b!4051777))

(assert (not b!4051782))

(assert (not b!4051765))

(assert (not b_next!113429))

(assert (not b!4052042))

(assert (not b!4051791))

(assert (not b!4051832))

(assert (not b!4051512))

(assert (not b!4052162))

(assert (not b!4051982))

(assert (not d!1203631))

(assert (not d!1203837))

(assert (not bm!287913))

(assert (not b!4051980))

(assert (not b!4051713))

(assert (not b!4051597))

(assert (not b!4052164))

(assert (not b!4051661))

(assert (not b!4051837))

(assert (not b!4051796))

(assert (not bm!287899))

(assert (not b!4051383))

(assert (not b!4051953))

(assert (not b!4051787))

(assert (not b_lambda!118381))

(assert (not b!4051905))

(assert (not bm!287858))

(assert (not b!4052183))

(assert (not b!4051630))

(assert (not b!4051730))

(assert (not b!4051459))

(assert (not b!4051833))

(assert (not b!4052222))

(assert (not b!4051508))

(assert (not d!1203751))

(assert (not b!4051783))

(assert (not b!4051624))

(assert (not b!4051449))

(assert (not d!1203731))

(assert (not bm!287876))

(assert (not d!1203707))

(assert (not b!4052189))

(assert (not b!4052041))

(assert (not b!4051985))

(assert (not b!4051766))

(assert (not b!4052020))

(assert (not b!4052011))

(assert (not b!4051946))

(assert (not d!1203813))

(assert (not b!4052143))

(assert (not b!4051468))

(assert (not b!4051663))

(assert (not b!4051615))

(assert (not d!1203623))

(assert (not d!1203735))

(assert (not b!4052191))

(assert (not b!4051670))

(assert (not b!4052028))

(assert (not b!4052019))

(assert (not b!4051385))

(assert (not b!4051590))

(assert (not b!4051649))

(assert (not b!4052152))

(assert (not b_next!113443))

(assert (not b!4052080))

(assert (not b!4051749))

(assert (not b!4051636))

(assert (not b!4052194))

(assert (not b!4052187))

(assert (not b!4052134))

(assert (not bm!287901))

(assert (not b!4051644))

(assert (not b!4051376))

(assert (not b!4051801))

(assert (not b!4051957))

(assert (not b!4051562))

(assert (not b!4051602))

(assert (not b!4052135))

(assert (not d!1203339))

(assert (not b!4051977))

(assert (not b!4051729))

(assert (not d!1203781))

(assert (not d!1203819))

(assert (not b!4052212))

(assert (not tb!243753))

(assert (not d!1203797))

(assert (not b!4052209))

(assert (not tb!243783))

(assert (not bm!287881))

(assert (not b!4051735))

(assert (not b!4051865))

(assert (not b!4051844))

(assert (not b!4051453))

(assert (not d!1203717))

(assert (not b!4052094))

(assert (not b!4051611))

(assert (not b!4051570))

(assert (not d!1203877))

(assert (not d!1203285))

(assert (not d!1203665))

(assert (not tb!243735))

(assert (not b!4051608))

(assert b_and!311593)

(assert (not b!4051626))

(assert (not b!4052060))

(assert (not b_next!113425))

(assert (not d!1203511))

(assert (not d!1203597))

(assert (not b!4051560))

(assert (not b!4052112))

(assert (not d!1203307))

(assert (not d!1203349))

(assert (not b_lambda!118421))

(assert (not b!4051842))

(assert (not b!4051882))

(assert (not d!1203581))

(assert (not b!4051762))

(assert (not b!4052058))

(assert (not b!4051756))

(assert (not b!4051851))

(assert (not d!1203499))

(assert (not tb!243795))

(assert (not b!4051804))

(assert (not b!4050727))

(assert (not d!1203651))

(assert (not b!4052232))

(assert (not bm!287883))

(assert (not b!4051622))

(assert (not b!4052131))

(assert (not b_next!113427))

(assert (not b!4052204))

(assert (not b!4051677))

(assert (not b!4051753))

(assert (not b!4051651))

(assert (not b!4051725))

(assert (not d!1203341))

(assert (not b!4051896))

(assert (not b!4051739))

(assert (not b!4052102))

(assert (not b!4051731))

(assert (not tb!243789))

(assert (not b!4052098))

(assert (not b!4052157))

(assert (not bm!287918))

(assert (not b!4052035))

(assert (not d!1203583))

(assert (not b!4051740))

(assert (not b!4051831))

(assert (not b!4052055))

(assert (not b!4051588))

(assert (not b!4052054))

(assert (not b!4052150))

(assert (not b!4052137))

(assert (not b!4052081))

(assert (not b!4051528))

(assert (not d!1203867))

(assert (not b!4051654))

(assert (not b!4052128))

(assert (not b!4052034))

(assert (not b!4051692))

(assert (not b!4051843))

(assert (not d!1203891))

(assert (not b!4052215))

(assert (not b!4052083))

(assert (not b!4052195))

(assert (not bm!287897))

(assert (not b!4052072))

(assert (not d!1203395))

(assert tp_is_empty!20659)

(assert (not b!4051388))

(assert (not d!1203533))

(assert (not bm!287878))

(assert (not b!4052097))

(assert (not b!4051504))

(assert (not b!4052178))

(assert (not d!1203667))

(assert (not b!4051819))

(assert (not b!4051825))

(assert (not bm!287894))

(assert (not d!1203843))

(assert (not d!1203641))

(assert (not b!4051733))

(assert (not b!4051878))

(assert (not b!4051569))

(assert (not b!4051648))

(assert b_and!311595)

(assert (not d!1203421))

(assert (not b!4051545))

(assert (not b!4051989))

(assert (not b!4051686))

(assert (not b!4051776))

(assert (not b!4051894))

(assert (not b!4051606))

(assert (not b!4051604))

(assert (not b!4052127))

(assert (not b!4051909))

(assert (not d!1203633))

(assert (not d!1203863))

(assert (not b!4051872))

(assert (not b!4052173))

(assert (not b!4052167))

(assert (not b!4052095))

(assert b_and!311615)

(assert (not bm!287880))

(assert (not d!1203459))

(assert (not b!4051621))

(assert (not b!4052000))

(assert (not b!4051943))

(assert (not d!1203675))

(assert (not d!1203469))

(assert (not b!4051779))

(assert (not b!4051638))

(assert (not b!4051875))

(assert (not d!1203451))

(assert b_and!311611)

(assert (not b!4051824))

(assert (not b!4052233))

(assert (not b!4051993))

(assert (not b!4052044))

(assert (not tb!243771))

(assert (not b!4051435))

(assert (not b!4051869))

(assert (not d!1203677))

(assert (not b!4051936))

(assert (not b!4051892))

(assert (not bm!287898))

(assert (not b_lambda!118419))

(assert (not d!1203871))

(assert (not b!4051675))

(assert (not d!1203305))

(assert (not b!4051632))

(assert (not b!4051813))

(assert (not b!4052223))

(assert (not d!1203601))

(assert (not b!4051736))

(assert (not d!1203831))

(assert (not b!4051462))

(assert (not b!4051870))

(assert (not b!4051505))

(assert (not d!1203475))

(assert (not b!4051618))

(assert (not b!4051899))

(assert (not b!4051950))

(assert (not b!4051688))

(assert (not d!1203637))

(assert (not d!1203673))

(assert (not b!4051768))

(assert (not b!4052099))

(assert (not b!4052045))

(assert (not b!4051890))

(assert (not b!4052084))

(assert (not b!4051840))

(assert (not b!4051521))

(assert (not b!4052174))

(assert (not b!4051996))

(assert (not b!4051961))

(assert (not d!1203815))

(assert (not d!1203315))

(assert (not b!4051378))

(assert (not d!1203397))

(assert (not b!4051898))

(assert (not d!1203503))

(assert (not b_next!113431))

(assert (not b!4052087))

(assert (not b!4051884))

(assert (not d!1203767))

(assert (not b_lambda!118383))

(assert (not b_lambda!118441))

(assert (not b!4051769))

(assert (not b!4051576))

(assert (not b!4052073))

(assert (not b!4052104))

(assert (not b!4052048))

(assert (not b_lambda!118437))

(assert (not b!4051727))

(assert (not b!4051858))

(assert (not b!4052182))

(check-sat)

(pop 1)

(push 1)

(assert b_and!311591)

(assert b_and!311609)

(assert (not b_next!113451))

(assert (not b_next!113429))

(assert (not b_next!113443))

(assert (not b_next!113427))

(assert b_and!311595)

(assert b_and!311615)

(assert b_and!311611)

(assert (not b_next!113431))

(assert (not b_next!113441))

(assert (not b_next!113449))

(assert b_and!311621)

(assert b_and!311613)

(assert b_and!311593)

(assert (not b_next!113425))

(check-sat)

(pop 1)

