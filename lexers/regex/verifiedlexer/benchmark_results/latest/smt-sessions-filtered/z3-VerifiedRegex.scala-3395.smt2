; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!192208 () Bool)

(assert start!192208)

(declare-fun b!1916527 () Bool)

(declare-fun b_free!54289 () Bool)

(declare-fun b_next!54993 () Bool)

(assert (=> b!1916527 (= b_free!54289 (not b_next!54993))))

(declare-fun tp!546836 () Bool)

(declare-fun b_and!149495 () Bool)

(assert (=> b!1916527 (= tp!546836 b_and!149495)))

(declare-fun b_free!54291 () Bool)

(declare-fun b_next!54995 () Bool)

(assert (=> b!1916527 (= b_free!54291 (not b_next!54995))))

(declare-fun tp!546840 () Bool)

(declare-fun b_and!149497 () Bool)

(assert (=> b!1916527 (= tp!546840 b_and!149497)))

(declare-fun b!1916517 () Bool)

(declare-fun b_free!54293 () Bool)

(declare-fun b_next!54997 () Bool)

(assert (=> b!1916517 (= b_free!54293 (not b_next!54997))))

(declare-fun tp!546838 () Bool)

(declare-fun b_and!149499 () Bool)

(assert (=> b!1916517 (= tp!546838 b_and!149499)))

(declare-fun b_free!54295 () Bool)

(declare-fun b_next!54999 () Bool)

(assert (=> b!1916517 (= b_free!54295 (not b_next!54999))))

(declare-fun tp!546832 () Bool)

(declare-fun b_and!149501 () Bool)

(assert (=> b!1916517 (= tp!546832 b_and!149501)))

(declare-fun b!1916516 () Bool)

(declare-fun b_free!54297 () Bool)

(declare-fun b_next!55001 () Bool)

(assert (=> b!1916516 (= b_free!54297 (not b_next!55001))))

(declare-fun tp!546829 () Bool)

(declare-fun b_and!149503 () Bool)

(assert (=> b!1916516 (= tp!546829 b_and!149503)))

(declare-fun b_free!54299 () Bool)

(declare-fun b_next!55003 () Bool)

(assert (=> b!1916516 (= b_free!54299 (not b_next!55003))))

(declare-fun tp!546833 () Bool)

(declare-fun b_and!149505 () Bool)

(assert (=> b!1916516 (= tp!546833 b_and!149505)))

(declare-fun b!1916507 () Bool)

(declare-fun res!856546 () Bool)

(declare-fun e!1224375 () Bool)

(assert (=> b!1916507 (=> res!856546 e!1224375)))

(declare-datatypes ((List!21732 0))(
  ( (Nil!21650) (Cons!21650 (h!27051 (_ BitVec 16)) (t!178525 List!21732)) )
))
(declare-datatypes ((TokenValue!4002 0))(
  ( (FloatLiteralValue!8004 (text!28459 List!21732)) (TokenValueExt!4001 (__x!13502 Int)) (Broken!20010 (value!121746 List!21732)) (Object!4083) (End!4002) (Def!4002) (Underscore!4002) (Match!4002) (Else!4002) (Error!4002) (Case!4002) (If!4002) (Extends!4002) (Abstract!4002) (Class!4002) (Val!4002) (DelimiterValue!8004 (del!4062 List!21732)) (KeywordValue!4008 (value!121747 List!21732)) (CommentValue!8004 (value!121748 List!21732)) (WhitespaceValue!8004 (value!121749 List!21732)) (IndentationValue!4002 (value!121750 List!21732)) (String!25127) (Int32!4002) (Broken!20011 (value!121751 List!21732)) (Boolean!4003) (Unit!36051) (OperatorValue!4005 (op!4062 List!21732)) (IdentifierValue!8004 (value!121752 List!21732)) (IdentifierValue!8005 (value!121753 List!21732)) (WhitespaceValue!8005 (value!121754 List!21732)) (True!8004) (False!8004) (Broken!20012 (value!121755 List!21732)) (Broken!20013 (value!121756 List!21732)) (True!8005) (RightBrace!4002) (RightBracket!4002) (Colon!4002) (Null!4002) (Comma!4002) (LeftBracket!4002) (False!8005) (LeftBrace!4002) (ImaginaryLiteralValue!4002 (text!28460 List!21732)) (StringLiteralValue!12006 (value!121757 List!21732)) (EOFValue!4002 (value!121758 List!21732)) (IdentValue!4002 (value!121759 List!21732)) (DelimiterValue!8005 (value!121760 List!21732)) (DedentValue!4002 (value!121761 List!21732)) (NewLineValue!4002 (value!121762 List!21732)) (IntegerValue!12006 (value!121763 (_ BitVec 32)) (text!28461 List!21732)) (IntegerValue!12007 (value!121764 Int) (text!28462 List!21732)) (Times!4002) (Or!4002) (Equal!4002) (Minus!4002) (Broken!20014 (value!121765 List!21732)) (And!4002) (Div!4002) (LessEqual!4002) (Mod!4002) (Concat!9293) (Not!4002) (Plus!4002) (SpaceValue!4002 (value!121766 List!21732)) (IntegerValue!12008 (value!121767 Int) (text!28463 List!21732)) (StringLiteralValue!12007 (text!28464 List!21732)) (FloatLiteralValue!8005 (text!28465 List!21732)) (BytesLiteralValue!4002 (value!121768 List!21732)) (CommentValue!8005 (value!121769 List!21732)) (StringLiteralValue!12008 (value!121770 List!21732)) (ErrorTokenValue!4002 (msg!4063 List!21732)) )
))
(declare-datatypes ((C!10728 0))(
  ( (C!10729 (val!6316 Int)) )
))
(declare-datatypes ((List!21733 0))(
  ( (Nil!21651) (Cons!21651 (h!27052 C!10728) (t!178526 List!21733)) )
))
(declare-datatypes ((IArray!14453 0))(
  ( (IArray!14454 (innerList!7284 List!21733)) )
))
(declare-datatypes ((Conc!7224 0))(
  ( (Node!7224 (left!17291 Conc!7224) (right!17621 Conc!7224) (csize!14678 Int) (cheight!7435 Int)) (Leaf!10620 (xs!10118 IArray!14453) (csize!14679 Int)) (Empty!7224) )
))
(declare-datatypes ((BalanceConc!14264 0))(
  ( (BalanceConc!14265 (c!312002 Conc!7224)) )
))
(declare-datatypes ((TokenValueInjection!7588 0))(
  ( (TokenValueInjection!7589 (toValue!5495 Int) (toChars!5354 Int)) )
))
(declare-datatypes ((String!25128 0))(
  ( (String!25129 (value!121771 String)) )
))
(declare-datatypes ((Regex!5291 0))(
  ( (ElementMatch!5291 (c!312003 C!10728)) (Concat!9294 (regOne!11094 Regex!5291) (regTwo!11094 Regex!5291)) (EmptyExpr!5291) (Star!5291 (reg!5620 Regex!5291)) (EmptyLang!5291) (Union!5291 (regOne!11095 Regex!5291) (regTwo!11095 Regex!5291)) )
))
(declare-datatypes ((Rule!7532 0))(
  ( (Rule!7533 (regex!3866 Regex!5291) (tag!4306 String!25128) (isSeparator!3866 Bool) (transformation!3866 TokenValueInjection!7588)) )
))
(declare-datatypes ((List!21734 0))(
  ( (Nil!21652) (Cons!21652 (h!27053 Rule!7532) (t!178527 List!21734)) )
))
(declare-fun rules!3198 () List!21734)

(declare-datatypes ((Token!7284 0))(
  ( (Token!7285 (value!121772 TokenValue!4002) (rule!6069 Rule!7532) (size!17012 Int) (originalCharacters!4673 List!21733)) )
))
(declare-datatypes ((List!21735 0))(
  ( (Nil!21653) (Cons!21653 (h!27054 Token!7284) (t!178528 List!21735)) )
))
(declare-fun tokens!598 () List!21735)

(declare-fun contains!3936 (List!21734 Rule!7532) Bool)

(assert (=> b!1916507 (= res!856546 (not (contains!3936 rules!3198 (rule!6069 (h!27054 tokens!598)))))))

(declare-fun b!1916508 () Bool)

(declare-fun res!856565 () Bool)

(assert (=> b!1916508 (=> res!856565 e!1224375)))

(declare-datatypes ((LexerInterface!3479 0))(
  ( (LexerInterfaceExt!3476 (__x!13503 Int)) (Lexer!3477) )
))
(declare-fun thiss!23328 () LexerInterface!3479)

(declare-fun rulesProduceIndividualToken!1651 (LexerInterface!3479 List!21734 Token!7284) Bool)

(assert (=> b!1916508 (= res!856565 (not (rulesProduceIndividualToken!1651 thiss!23328 rules!3198 (h!27054 tokens!598))))))

(declare-fun b!1916509 () Bool)

(declare-fun res!856572 () Bool)

(assert (=> b!1916509 (=> res!856572 e!1224375)))

(assert (=> b!1916509 (= res!856572 (isSeparator!3866 (rule!6069 (h!27054 tokens!598))))))

(declare-fun b!1916510 () Bool)

(declare-fun res!856567 () Bool)

(declare-fun e!1224357 () Bool)

(assert (=> b!1916510 (=> (not res!856567) (not e!1224357))))

(declare-fun separatorToken!354 () Token!7284)

(assert (=> b!1916510 (= res!856567 (rulesProduceIndividualToken!1651 thiss!23328 rules!3198 separatorToken!354))))

(declare-fun b!1916511 () Bool)

(declare-fun e!1224365 () Bool)

(declare-fun e!1224351 () Bool)

(declare-fun tp!546835 () Bool)

(declare-fun inv!21 (TokenValue!4002) Bool)

(assert (=> b!1916511 (= e!1224351 (and (inv!21 (value!121772 (h!27054 tokens!598))) e!1224365 tp!546835))))

(declare-fun b!1916512 () Bool)

(declare-fun e!1224360 () Bool)

(assert (=> b!1916512 (= e!1224360 e!1224375)))

(declare-fun res!856548 () Bool)

(assert (=> b!1916512 (=> res!856548 e!1224375)))

(declare-fun lt!734442 () List!21733)

(declare-fun lt!734441 () List!21733)

(declare-fun lt!734458 () List!21733)

(assert (=> b!1916512 (= res!856548 (or (not (= lt!734442 lt!734458)) (not (= lt!734458 lt!734441)) (not (= lt!734442 lt!734441))))))

(declare-fun printList!1062 (LexerInterface!3479 List!21735) List!21733)

(assert (=> b!1916512 (= lt!734458 (printList!1062 thiss!23328 (Cons!21653 (h!27054 tokens!598) Nil!21653)))))

(declare-fun lt!734449 () BalanceConc!14264)

(declare-fun list!8798 (BalanceConc!14264) List!21733)

(assert (=> b!1916512 (= lt!734442 (list!8798 lt!734449))))

(declare-datatypes ((IArray!14455 0))(
  ( (IArray!14456 (innerList!7285 List!21735)) )
))
(declare-datatypes ((Conc!7225 0))(
  ( (Node!7225 (left!17292 Conc!7225) (right!17622 Conc!7225) (csize!14680 Int) (cheight!7436 Int)) (Leaf!10621 (xs!10119 IArray!14455) (csize!14681 Int)) (Empty!7225) )
))
(declare-datatypes ((BalanceConc!14266 0))(
  ( (BalanceConc!14267 (c!312004 Conc!7225)) )
))
(declare-fun lt!734457 () BalanceConc!14266)

(declare-fun printTailRec!996 (LexerInterface!3479 BalanceConc!14266 Int BalanceConc!14264) BalanceConc!14264)

(assert (=> b!1916512 (= lt!734449 (printTailRec!996 thiss!23328 lt!734457 0 (BalanceConc!14265 Empty!7224)))))

(declare-fun print!1489 (LexerInterface!3479 BalanceConc!14266) BalanceConc!14264)

(assert (=> b!1916512 (= lt!734449 (print!1489 thiss!23328 lt!734457))))

(declare-fun singletonSeq!1889 (Token!7284) BalanceConc!14266)

(assert (=> b!1916512 (= lt!734457 (singletonSeq!1889 (h!27054 tokens!598)))))

(declare-fun lt!734460 () List!21733)

(declare-fun lt!734459 () C!10728)

(declare-fun contains!3937 (List!21733 C!10728) Bool)

(assert (=> b!1916512 (not (contains!3937 lt!734460 lt!734459))))

(declare-fun usedCharacters!374 (Regex!5291) List!21733)

(assert (=> b!1916512 (= lt!734460 (usedCharacters!374 (regex!3866 (rule!6069 (h!27054 tokens!598)))))))

(declare-datatypes ((Unit!36052 0))(
  ( (Unit!36053) )
))
(declare-fun lt!734466 () Unit!36052)

(declare-fun lemmaNonSepRuleNotContainsCharContainedInASepRule!70 (LexerInterface!3479 List!21734 List!21734 Rule!7532 Rule!7532 C!10728) Unit!36052)

(assert (=> b!1916512 (= lt!734466 (lemmaNonSepRuleNotContainsCharContainedInASepRule!70 thiss!23328 rules!3198 rules!3198 (rule!6069 (h!27054 tokens!598)) (rule!6069 separatorToken!354) lt!734459))))

(declare-fun lt!734452 () Unit!36052)

(declare-fun e!1224376 () Unit!36052)

(assert (=> b!1916512 (= lt!734452 e!1224376)))

(declare-fun c!312001 () Bool)

(declare-fun lt!734471 () List!21733)

(assert (=> b!1916512 (= c!312001 (not (contains!3937 lt!734471 lt!734459)))))

(declare-fun lt!734469 () List!21733)

(declare-fun head!4476 (List!21733) C!10728)

(assert (=> b!1916512 (= lt!734459 (head!4476 lt!734469))))

(assert (=> b!1916512 (= lt!734471 (usedCharacters!374 (regex!3866 (rule!6069 separatorToken!354))))))

(declare-fun lt!734440 () List!21733)

(declare-fun lt!734467 () List!21733)

(assert (=> b!1916512 (= lt!734440 lt!734467)))

(declare-fun lt!734461 () List!21733)

(declare-fun ++!5821 (List!21733 List!21733) List!21733)

(assert (=> b!1916512 (= lt!734467 (++!5821 lt!734441 lt!734461))))

(declare-fun lt!734450 () List!21733)

(declare-fun lt!734472 () List!21733)

(assert (=> b!1916512 (= lt!734440 (++!5821 lt!734450 lt!734472))))

(assert (=> b!1916512 (= lt!734461 (++!5821 lt!734469 lt!734472))))

(assert (=> b!1916512 (= lt!734450 (++!5821 lt!734441 lt!734469))))

(declare-fun lt!734470 () Unit!36052)

(declare-fun lemmaConcatAssociativity!1181 (List!21733 List!21733 List!21733) Unit!36052)

(assert (=> b!1916512 (= lt!734470 (lemmaConcatAssociativity!1181 lt!734441 lt!734469 lt!734472))))

(declare-fun b!1916513 () Bool)

(declare-fun e!1224353 () Bool)

(declare-fun lt!734444 () Rule!7532)

(assert (=> b!1916513 (= e!1224353 (= (rule!6069 separatorToken!354) lt!734444))))

(declare-fun b!1916514 () Bool)

(declare-fun res!856553 () Bool)

(declare-fun e!1224350 () Bool)

(assert (=> b!1916514 (=> res!856553 e!1224350)))

(declare-fun lt!734443 () C!10728)

(assert (=> b!1916514 (= res!856553 (not (contains!3937 lt!734471 lt!734443)))))

(declare-fun b!1916515 () Bool)

(declare-fun res!856563 () Bool)

(assert (=> b!1916515 (=> res!856563 e!1224375)))

(declare-fun isEmpty!13341 (BalanceConc!14266) Bool)

(declare-datatypes ((tuple2!20382 0))(
  ( (tuple2!20383 (_1!11660 BalanceConc!14266) (_2!11660 BalanceConc!14264)) )
))
(declare-fun lex!1554 (LexerInterface!3479 List!21734 BalanceConc!14264) tuple2!20382)

(declare-fun seqFromList!2738 (List!21733) BalanceConc!14264)

(assert (=> b!1916515 (= res!856563 (isEmpty!13341 (_1!11660 (lex!1554 thiss!23328 rules!3198 (seqFromList!2738 lt!734441)))))))

(declare-fun e!1224370 () Bool)

(assert (=> b!1916516 (= e!1224370 (and tp!546829 tp!546833))))

(declare-fun e!1224358 () Bool)

(assert (=> b!1916517 (= e!1224358 (and tp!546838 tp!546832))))

(declare-fun b!1916518 () Bool)

(declare-fun res!856561 () Bool)

(assert (=> b!1916518 (=> (not res!856561) (not e!1224357))))

(assert (=> b!1916518 (= res!856561 (isSeparator!3866 (rule!6069 separatorToken!354)))))

(declare-fun res!856571 () Bool)

(assert (=> start!192208 (=> (not res!856571) (not e!1224357))))

(get-info :version)

(assert (=> start!192208 (= res!856571 ((_ is Lexer!3477) thiss!23328))))

(assert (=> start!192208 e!1224357))

(assert (=> start!192208 true))

(declare-fun e!1224362 () Bool)

(assert (=> start!192208 e!1224362))

(declare-fun e!1224373 () Bool)

(assert (=> start!192208 e!1224373))

(declare-fun e!1224359 () Bool)

(declare-fun inv!28749 (Token!7284) Bool)

(assert (=> start!192208 (and (inv!28749 separatorToken!354) e!1224359)))

(declare-fun b!1916519 () Bool)

(declare-fun res!856555 () Bool)

(assert (=> b!1916519 (=> (not res!856555) (not e!1224357))))

(declare-fun isEmpty!13342 (List!21734) Bool)

(assert (=> b!1916519 (= res!856555 (not (isEmpty!13342 rules!3198)))))

(declare-fun b!1916520 () Bool)

(declare-fun res!856564 () Bool)

(declare-fun e!1224369 () Bool)

(assert (=> b!1916520 (=> res!856564 e!1224369)))

(declare-fun isEmpty!13343 (List!21733) Bool)

(assert (=> b!1916520 (= res!856564 (isEmpty!13343 lt!734461))))

(declare-fun e!1224361 () Bool)

(declare-fun b!1916521 () Bool)

(declare-fun e!1224356 () Bool)

(declare-fun tp!546837 () Bool)

(declare-fun inv!28746 (String!25128) Bool)

(declare-fun inv!28750 (TokenValueInjection!7588) Bool)

(assert (=> b!1916521 (= e!1224356 (and tp!546837 (inv!28746 (tag!4306 (rule!6069 separatorToken!354))) (inv!28750 (transformation!3866 (rule!6069 separatorToken!354))) e!1224361))))

(declare-fun b!1916522 () Bool)

(declare-fun tp!546828 () Bool)

(assert (=> b!1916522 (= e!1224373 (and (inv!28749 (h!27054 tokens!598)) e!1224351 tp!546828))))

(declare-fun b!1916523 () Bool)

(declare-fun res!856566 () Bool)

(assert (=> b!1916523 (=> (not res!856566) (not e!1224357))))

(declare-fun sepAndNonSepRulesDisjointChars!964 (List!21734 List!21734) Bool)

(assert (=> b!1916523 (= res!856566 (sepAndNonSepRulesDisjointChars!964 rules!3198 rules!3198))))

(declare-fun b!1916524 () Bool)

(declare-fun e!1224354 () Bool)

(assert (=> b!1916524 (= e!1224354 false)))

(declare-fun b!1916525 () Bool)

(declare-fun e!1224355 () Bool)

(assert (=> b!1916525 (= e!1224355 e!1224353)))

(declare-fun res!856550 () Bool)

(assert (=> b!1916525 (=> (not res!856550) (not e!1224353))))

(declare-fun matchR!2577 (Regex!5291 List!21733) Bool)

(assert (=> b!1916525 (= res!856550 (matchR!2577 (regex!3866 lt!734444) lt!734469))))

(declare-datatypes ((Option!4437 0))(
  ( (None!4436) (Some!4436 (v!26509 Rule!7532)) )
))
(declare-fun lt!734462 () Option!4437)

(declare-fun get!6777 (Option!4437) Rule!7532)

(assert (=> b!1916525 (= lt!734444 (get!6777 lt!734462))))

(declare-fun b!1916526 () Bool)

(declare-fun e!1224371 () Bool)

(declare-fun e!1224363 () Bool)

(assert (=> b!1916526 (= e!1224371 e!1224363)))

(declare-fun res!856570 () Bool)

(assert (=> b!1916526 (=> (not res!856570) (not e!1224363))))

(declare-fun lt!734465 () Rule!7532)

(assert (=> b!1916526 (= res!856570 (matchR!2577 (regex!3866 lt!734465) lt!734441))))

(declare-fun lt!734454 () Option!4437)

(assert (=> b!1916526 (= lt!734465 (get!6777 lt!734454))))

(assert (=> b!1916527 (= e!1224361 (and tp!546836 tp!546840))))

(declare-fun b!1916528 () Bool)

(declare-fun e!1224364 () Bool)

(declare-fun tp!546830 () Bool)

(assert (=> b!1916528 (= e!1224362 (and e!1224364 tp!546830))))

(declare-fun b!1916529 () Bool)

(declare-fun Unit!36054 () Unit!36052)

(assert (=> b!1916529 (= e!1224376 Unit!36054)))

(declare-fun tp!546831 () Bool)

(declare-fun b!1916530 () Bool)

(assert (=> b!1916530 (= e!1224365 (and tp!546831 (inv!28746 (tag!4306 (rule!6069 (h!27054 tokens!598)))) (inv!28750 (transformation!3866 (rule!6069 (h!27054 tokens!598)))) e!1224370))))

(declare-fun b!1916531 () Bool)

(declare-fun res!856549 () Bool)

(declare-fun e!1224374 () Bool)

(assert (=> b!1916531 (=> res!856549 e!1224374)))

(declare-datatypes ((tuple2!20384 0))(
  ( (tuple2!20385 (_1!11661 Token!7284) (_2!11661 List!21733)) )
))
(declare-datatypes ((Option!4438 0))(
  ( (None!4437) (Some!4437 (v!26510 tuple2!20384)) )
))
(declare-fun isDefined!3735 (Option!4438) Bool)

(declare-fun maxPrefix!1925 (LexerInterface!3479 List!21734 List!21733) Option!4438)

(declare-fun printWithSeparatorTokenWhenNeededList!522 (LexerInterface!3479 List!21734 List!21735 Token!7284) List!21733)

(assert (=> b!1916531 (= res!856549 (not (isDefined!3735 (maxPrefix!1925 thiss!23328 rules!3198 (printWithSeparatorTokenWhenNeededList!522 thiss!23328 rules!3198 tokens!598 separatorToken!354)))))))

(declare-fun b!1916532 () Bool)

(assert (=> b!1916532 (= e!1224375 e!1224369)))

(declare-fun res!856559 () Bool)

(assert (=> b!1916532 (=> res!856559 e!1224369)))

(assert (=> b!1916532 (= res!856559 (not (matchR!2577 (regex!3866 (rule!6069 (h!27054 tokens!598))) lt!734441)))))

(declare-fun ruleValid!1185 (LexerInterface!3479 Rule!7532) Bool)

(assert (=> b!1916532 (ruleValid!1185 thiss!23328 (rule!6069 (h!27054 tokens!598)))))

(declare-fun lt!734468 () Unit!36052)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!682 (LexerInterface!3479 Rule!7532 List!21734) Unit!36052)

(assert (=> b!1916532 (= lt!734468 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!682 thiss!23328 (rule!6069 (h!27054 tokens!598)) rules!3198))))

(declare-fun b!1916533 () Bool)

(declare-fun res!856551 () Bool)

(assert (=> b!1916533 (=> res!856551 e!1224375)))

(declare-fun lt!734453 () tuple2!20384)

(assert (=> b!1916533 (= res!856551 (not (isEmpty!13343 (_2!11661 lt!734453))))))

(declare-fun b!1916534 () Bool)

(assert (=> b!1916534 (= e!1224350 e!1224374)))

(declare-fun res!856547 () Bool)

(assert (=> b!1916534 (=> res!856547 e!1224374)))

(declare-fun isEmpty!13344 (List!21735) Bool)

(assert (=> b!1916534 (= res!856547 (isEmpty!13344 tokens!598))))

(assert (=> b!1916534 (= (maxPrefix!1925 thiss!23328 rules!3198 lt!734467) (Some!4437 (tuple2!20385 (h!27054 tokens!598) lt!734461)))))

(declare-fun lt!734445 () Unit!36052)

(declare-fun lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!102 (LexerInterface!3479 List!21734 Token!7284 Rule!7532 List!21733 Rule!7532) Unit!36052)

(assert (=> b!1916534 (= lt!734445 (lemmaMaxPrefWithOtherTypeUsedCharAtStartOfSuffixReturnSame!102 thiss!23328 rules!3198 (h!27054 tokens!598) (rule!6069 (h!27054 tokens!598)) lt!734461 (rule!6069 separatorToken!354)))))

(declare-fun b!1916535 () Bool)

(declare-fun res!856554 () Bool)

(assert (=> b!1916535 (=> res!856554 e!1224375)))

(assert (=> b!1916535 (= res!856554 (not (contains!3936 rules!3198 (rule!6069 separatorToken!354))))))

(declare-fun b!1916536 () Bool)

(declare-fun res!856556 () Bool)

(assert (=> b!1916536 (=> (not res!856556) (not e!1224357))))

(declare-fun lambda!74797 () Int)

(declare-fun forall!4562 (List!21735 Int) Bool)

(assert (=> b!1916536 (= res!856556 (forall!4562 tokens!598 lambda!74797))))

(declare-fun b!1916537 () Bool)

(declare-fun res!856560 () Bool)

(assert (=> b!1916537 (=> (not res!856560) (not e!1224357))))

(declare-fun rulesProduceEachTokenIndividuallyList!1210 (LexerInterface!3479 List!21734 List!21735) Bool)

(assert (=> b!1916537 (= res!856560 (rulesProduceEachTokenIndividuallyList!1210 thiss!23328 rules!3198 tokens!598))))

(declare-fun b!1916538 () Bool)

(assert (=> b!1916538 (= e!1224357 (not e!1224360))))

(declare-fun res!856558 () Bool)

(assert (=> b!1916538 (=> res!856558 e!1224360)))

(declare-fun lt!734439 () Option!4438)

(declare-fun lt!734438 () Bool)

(assert (=> b!1916538 (= res!856558 (or (and (not lt!734438) (= (_1!11661 (v!26510 lt!734439)) (h!27054 tokens!598))) lt!734438 (= (_1!11661 (v!26510 lt!734439)) (h!27054 tokens!598))))))

(assert (=> b!1916538 (= lt!734438 (not ((_ is Some!4437) lt!734439)))))

(assert (=> b!1916538 (= lt!734439 (maxPrefix!1925 thiss!23328 rules!3198 (++!5821 lt!734441 lt!734472)))))

(assert (=> b!1916538 (= lt!734472 (printWithSeparatorTokenWhenNeededList!522 thiss!23328 rules!3198 (t!178528 tokens!598) separatorToken!354))))

(assert (=> b!1916538 e!1224371))

(declare-fun res!856569 () Bool)

(assert (=> b!1916538 (=> (not res!856569) (not e!1224371))))

(declare-fun isDefined!3736 (Option!4437) Bool)

(assert (=> b!1916538 (= res!856569 (isDefined!3736 lt!734454))))

(declare-fun getRuleFromTag!709 (LexerInterface!3479 List!21734 String!25128) Option!4437)

(assert (=> b!1916538 (= lt!734454 (getRuleFromTag!709 thiss!23328 rules!3198 (tag!4306 (rule!6069 (h!27054 tokens!598)))))))

(declare-fun lt!734448 () Unit!36052)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!709 (LexerInterface!3479 List!21734 List!21733 Token!7284) Unit!36052)

(assert (=> b!1916538 (= lt!734448 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!709 thiss!23328 rules!3198 lt!734441 (h!27054 tokens!598)))))

(assert (=> b!1916538 (= (_1!11661 lt!734453) (h!27054 tokens!598))))

(declare-fun lt!734447 () Option!4438)

(declare-fun get!6778 (Option!4438) tuple2!20384)

(assert (=> b!1916538 (= lt!734453 (get!6778 lt!734447))))

(assert (=> b!1916538 (isDefined!3735 lt!734447)))

(assert (=> b!1916538 (= lt!734447 (maxPrefix!1925 thiss!23328 rules!3198 lt!734441))))

(declare-fun lt!734455 () BalanceConc!14264)

(assert (=> b!1916538 (= lt!734441 (list!8798 lt!734455))))

(assert (=> b!1916538 e!1224355))

(declare-fun res!856552 () Bool)

(assert (=> b!1916538 (=> (not res!856552) (not e!1224355))))

(assert (=> b!1916538 (= res!856552 (isDefined!3736 lt!734462))))

(assert (=> b!1916538 (= lt!734462 (getRuleFromTag!709 thiss!23328 rules!3198 (tag!4306 (rule!6069 separatorToken!354))))))

(declare-fun lt!734446 () Unit!36052)

(assert (=> b!1916538 (= lt!734446 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!709 thiss!23328 rules!3198 lt!734469 separatorToken!354))))

(declare-fun charsOf!2422 (Token!7284) BalanceConc!14264)

(assert (=> b!1916538 (= lt!734469 (list!8798 (charsOf!2422 separatorToken!354)))))

(declare-fun lt!734456 () Unit!36052)

(declare-fun lemmaEqSameImage!574 (TokenValueInjection!7588 BalanceConc!14264 BalanceConc!14264) Unit!36052)

(assert (=> b!1916538 (= lt!734456 (lemmaEqSameImage!574 (transformation!3866 (rule!6069 (h!27054 tokens!598))) lt!734455 (seqFromList!2738 (originalCharacters!4673 (h!27054 tokens!598)))))))

(declare-fun lt!734464 () Unit!36052)

(declare-fun lemmaSemiInverse!845 (TokenValueInjection!7588 BalanceConc!14264) Unit!36052)

(assert (=> b!1916538 (= lt!734464 (lemmaSemiInverse!845 (transformation!3866 (rule!6069 (h!27054 tokens!598))) lt!734455))))

(assert (=> b!1916538 (= lt!734455 (charsOf!2422 (h!27054 tokens!598)))))

(declare-fun b!1916539 () Bool)

(assert (=> b!1916539 (= e!1224369 e!1224350)))

(declare-fun res!856568 () Bool)

(assert (=> b!1916539 (=> res!856568 e!1224350)))

(assert (=> b!1916539 (= res!856568 (contains!3937 lt!734460 lt!734443))))

(assert (=> b!1916539 (= lt!734443 (head!4476 lt!734461))))

(declare-fun tp!546834 () Bool)

(declare-fun b!1916540 () Bool)

(assert (=> b!1916540 (= e!1224359 (and (inv!21 (value!121772 separatorToken!354)) e!1224356 tp!546834))))

(declare-fun b!1916541 () Bool)

(declare-fun res!856562 () Bool)

(assert (=> b!1916541 (=> (not res!856562) (not e!1224357))))

(declare-fun rulesInvariant!3086 (LexerInterface!3479 List!21734) Bool)

(assert (=> b!1916541 (= res!856562 (rulesInvariant!3086 thiss!23328 rules!3198))))

(declare-fun b!1916542 () Bool)

(assert (=> b!1916542 (= e!1224363 (= (rule!6069 (h!27054 tokens!598)) lt!734465))))

(declare-fun tp!546839 () Bool)

(declare-fun b!1916543 () Bool)

(assert (=> b!1916543 (= e!1224364 (and tp!546839 (inv!28746 (tag!4306 (h!27053 rules!3198))) (inv!28750 (transformation!3866 (h!27053 rules!3198))) e!1224358))))

(declare-fun b!1916544 () Bool)

(declare-fun res!856545 () Bool)

(assert (=> b!1916544 (=> (not res!856545) (not e!1224357))))

(assert (=> b!1916544 (= res!856545 ((_ is Cons!21653) tokens!598))))

(declare-fun b!1916545 () Bool)

(declare-fun Unit!36055 () Unit!36052)

(assert (=> b!1916545 (= e!1224376 Unit!36055)))

(declare-fun lt!734451 () Unit!36052)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!274 (Regex!5291 List!21733 C!10728) Unit!36052)

(assert (=> b!1916545 (= lt!734451 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!274 (regex!3866 (rule!6069 separatorToken!354)) lt!734469 lt!734459))))

(declare-fun res!856557 () Bool)

(assert (=> b!1916545 (= res!856557 (not (matchR!2577 (regex!3866 (rule!6069 separatorToken!354)) lt!734469)))))

(assert (=> b!1916545 (=> (not res!856557) (not e!1224354))))

(assert (=> b!1916545 e!1224354))

(declare-fun b!1916546 () Bool)

(assert (=> b!1916546 (= e!1224374 true)))

(declare-fun lt!734463 () Bool)

(declare-fun rulesValidInductive!1314 (LexerInterface!3479 List!21734) Bool)

(assert (=> b!1916546 (= lt!734463 (rulesValidInductive!1314 thiss!23328 rules!3198))))

(assert (= (and start!192208 res!856571) b!1916519))

(assert (= (and b!1916519 res!856555) b!1916541))

(assert (= (and b!1916541 res!856562) b!1916537))

(assert (= (and b!1916537 res!856560) b!1916510))

(assert (= (and b!1916510 res!856567) b!1916518))

(assert (= (and b!1916518 res!856561) b!1916536))

(assert (= (and b!1916536 res!856556) b!1916523))

(assert (= (and b!1916523 res!856566) b!1916544))

(assert (= (and b!1916544 res!856545) b!1916538))

(assert (= (and b!1916538 res!856552) b!1916525))

(assert (= (and b!1916525 res!856550) b!1916513))

(assert (= (and b!1916538 res!856569) b!1916526))

(assert (= (and b!1916526 res!856570) b!1916542))

(assert (= (and b!1916538 (not res!856558)) b!1916512))

(assert (= (and b!1916512 c!312001) b!1916545))

(assert (= (and b!1916512 (not c!312001)) b!1916529))

(assert (= (and b!1916545 res!856557) b!1916524))

(assert (= (and b!1916512 (not res!856548)) b!1916508))

(assert (= (and b!1916508 (not res!856565)) b!1916515))

(assert (= (and b!1916515 (not res!856563)) b!1916507))

(assert (= (and b!1916507 (not res!856546)) b!1916535))

(assert (= (and b!1916535 (not res!856554)) b!1916509))

(assert (= (and b!1916509 (not res!856572)) b!1916533))

(assert (= (and b!1916533 (not res!856551)) b!1916532))

(assert (= (and b!1916532 (not res!856559)) b!1916520))

(assert (= (and b!1916520 (not res!856564)) b!1916539))

(assert (= (and b!1916539 (not res!856568)) b!1916514))

(assert (= (and b!1916514 (not res!856553)) b!1916534))

(assert (= (and b!1916534 (not res!856547)) b!1916531))

(assert (= (and b!1916531 (not res!856549)) b!1916546))

(assert (= b!1916543 b!1916517))

(assert (= b!1916528 b!1916543))

(assert (= (and start!192208 ((_ is Cons!21652) rules!3198)) b!1916528))

(assert (= b!1916530 b!1916516))

(assert (= b!1916511 b!1916530))

(assert (= b!1916522 b!1916511))

(assert (= (and start!192208 ((_ is Cons!21653) tokens!598)) b!1916522))

(assert (= b!1916521 b!1916527))

(assert (= b!1916540 b!1916521))

(assert (= start!192208 b!1916540))

(declare-fun m!2351599 () Bool)

(assert (=> b!1916515 m!2351599))

(assert (=> b!1916515 m!2351599))

(declare-fun m!2351601 () Bool)

(assert (=> b!1916515 m!2351601))

(declare-fun m!2351603 () Bool)

(assert (=> b!1916515 m!2351603))

(declare-fun m!2351605 () Bool)

(assert (=> start!192208 m!2351605))

(declare-fun m!2351607 () Bool)

(assert (=> b!1916520 m!2351607))

(declare-fun m!2351609 () Bool)

(assert (=> b!1916519 m!2351609))

(declare-fun m!2351611 () Bool)

(assert (=> b!1916534 m!2351611))

(declare-fun m!2351613 () Bool)

(assert (=> b!1916534 m!2351613))

(declare-fun m!2351615 () Bool)

(assert (=> b!1916534 m!2351615))

(declare-fun m!2351617 () Bool)

(assert (=> b!1916511 m!2351617))

(declare-fun m!2351619 () Bool)

(assert (=> b!1916521 m!2351619))

(declare-fun m!2351621 () Bool)

(assert (=> b!1916521 m!2351621))

(declare-fun m!2351623 () Bool)

(assert (=> b!1916508 m!2351623))

(declare-fun m!2351625 () Bool)

(assert (=> b!1916522 m!2351625))

(declare-fun m!2351627 () Bool)

(assert (=> b!1916530 m!2351627))

(declare-fun m!2351629 () Bool)

(assert (=> b!1916530 m!2351629))

(declare-fun m!2351631 () Bool)

(assert (=> b!1916540 m!2351631))

(declare-fun m!2351633 () Bool)

(assert (=> b!1916514 m!2351633))

(declare-fun m!2351635 () Bool)

(assert (=> b!1916523 m!2351635))

(declare-fun m!2351637 () Bool)

(assert (=> b!1916538 m!2351637))

(declare-fun m!2351639 () Bool)

(assert (=> b!1916538 m!2351639))

(declare-fun m!2351641 () Bool)

(assert (=> b!1916538 m!2351641))

(assert (=> b!1916538 m!2351637))

(declare-fun m!2351643 () Bool)

(assert (=> b!1916538 m!2351643))

(declare-fun m!2351645 () Bool)

(assert (=> b!1916538 m!2351645))

(declare-fun m!2351647 () Bool)

(assert (=> b!1916538 m!2351647))

(declare-fun m!2351649 () Bool)

(assert (=> b!1916538 m!2351649))

(declare-fun m!2351651 () Bool)

(assert (=> b!1916538 m!2351651))

(declare-fun m!2351653 () Bool)

(assert (=> b!1916538 m!2351653))

(declare-fun m!2351655 () Bool)

(assert (=> b!1916538 m!2351655))

(declare-fun m!2351657 () Bool)

(assert (=> b!1916538 m!2351657))

(declare-fun m!2351659 () Bool)

(assert (=> b!1916538 m!2351659))

(declare-fun m!2351661 () Bool)

(assert (=> b!1916538 m!2351661))

(declare-fun m!2351663 () Bool)

(assert (=> b!1916538 m!2351663))

(declare-fun m!2351665 () Bool)

(assert (=> b!1916538 m!2351665))

(declare-fun m!2351667 () Bool)

(assert (=> b!1916538 m!2351667))

(declare-fun m!2351669 () Bool)

(assert (=> b!1916538 m!2351669))

(assert (=> b!1916538 m!2351645))

(declare-fun m!2351671 () Bool)

(assert (=> b!1916538 m!2351671))

(assert (=> b!1916538 m!2351653))

(declare-fun m!2351673 () Bool)

(assert (=> b!1916538 m!2351673))

(declare-fun m!2351675 () Bool)

(assert (=> b!1916535 m!2351675))

(declare-fun m!2351677 () Bool)

(assert (=> b!1916536 m!2351677))

(declare-fun m!2351679 () Bool)

(assert (=> b!1916533 m!2351679))

(declare-fun m!2351681 () Bool)

(assert (=> b!1916507 m!2351681))

(declare-fun m!2351683 () Bool)

(assert (=> b!1916543 m!2351683))

(declare-fun m!2351685 () Bool)

(assert (=> b!1916543 m!2351685))

(declare-fun m!2351687 () Bool)

(assert (=> b!1916512 m!2351687))

(declare-fun m!2351689 () Bool)

(assert (=> b!1916512 m!2351689))

(declare-fun m!2351691 () Bool)

(assert (=> b!1916512 m!2351691))

(declare-fun m!2351693 () Bool)

(assert (=> b!1916512 m!2351693))

(declare-fun m!2351695 () Bool)

(assert (=> b!1916512 m!2351695))

(declare-fun m!2351697 () Bool)

(assert (=> b!1916512 m!2351697))

(declare-fun m!2351699 () Bool)

(assert (=> b!1916512 m!2351699))

(declare-fun m!2351701 () Bool)

(assert (=> b!1916512 m!2351701))

(declare-fun m!2351703 () Bool)

(assert (=> b!1916512 m!2351703))

(declare-fun m!2351705 () Bool)

(assert (=> b!1916512 m!2351705))

(declare-fun m!2351707 () Bool)

(assert (=> b!1916512 m!2351707))

(declare-fun m!2351709 () Bool)

(assert (=> b!1916512 m!2351709))

(declare-fun m!2351711 () Bool)

(assert (=> b!1916512 m!2351711))

(declare-fun m!2351713 () Bool)

(assert (=> b!1916512 m!2351713))

(declare-fun m!2351715 () Bool)

(assert (=> b!1916512 m!2351715))

(declare-fun m!2351717 () Bool)

(assert (=> b!1916512 m!2351717))

(declare-fun m!2351719 () Bool)

(assert (=> b!1916537 m!2351719))

(declare-fun m!2351721 () Bool)

(assert (=> b!1916532 m!2351721))

(declare-fun m!2351723 () Bool)

(assert (=> b!1916532 m!2351723))

(declare-fun m!2351725 () Bool)

(assert (=> b!1916532 m!2351725))

(declare-fun m!2351727 () Bool)

(assert (=> b!1916531 m!2351727))

(assert (=> b!1916531 m!2351727))

(declare-fun m!2351729 () Bool)

(assert (=> b!1916531 m!2351729))

(assert (=> b!1916531 m!2351729))

(declare-fun m!2351731 () Bool)

(assert (=> b!1916531 m!2351731))

(declare-fun m!2351733 () Bool)

(assert (=> b!1916545 m!2351733))

(declare-fun m!2351735 () Bool)

(assert (=> b!1916545 m!2351735))

(declare-fun m!2351737 () Bool)

(assert (=> b!1916525 m!2351737))

(declare-fun m!2351739 () Bool)

(assert (=> b!1916525 m!2351739))

(declare-fun m!2351741 () Bool)

(assert (=> b!1916539 m!2351741))

(declare-fun m!2351743 () Bool)

(assert (=> b!1916539 m!2351743))

(declare-fun m!2351745 () Bool)

(assert (=> b!1916510 m!2351745))

(declare-fun m!2351747 () Bool)

(assert (=> b!1916546 m!2351747))

(declare-fun m!2351749 () Bool)

(assert (=> b!1916541 m!2351749))

(declare-fun m!2351751 () Bool)

(assert (=> b!1916526 m!2351751))

(declare-fun m!2351753 () Bool)

(assert (=> b!1916526 m!2351753))

(check-sat (not b!1916522) (not b!1916545) (not b!1916535) b_and!149505 (not b!1916528) (not b!1916510) (not b!1916521) (not b_next!54997) (not b_next!55003) (not b!1916540) (not b!1916526) (not b!1916525) (not b!1916530) (not b!1916514) b_and!149501 b_and!149495 (not b!1916543) (not b!1916546) b_and!149497 (not b!1916519) (not b_next!55001) (not b!1916515) (not b!1916536) (not b!1916523) (not b!1916541) (not b!1916507) (not b!1916533) (not b_next!54999) (not b_next!54993) (not b_next!54995) b_and!149503 (not b!1916512) b_and!149499 (not b!1916538) (not b!1916537) (not b!1916539) (not b!1916531) (not start!192208) (not b!1916511) (not b!1916520) (not b!1916508) (not b!1916534) (not b!1916532))
(check-sat b_and!149497 (not b_next!55001) (not b_next!54999) b_and!149505 (not b_next!54997) (not b_next!55003) b_and!149501 b_and!149495 (not b_next!54993) (not b_next!54995) b_and!149503 b_and!149499)
