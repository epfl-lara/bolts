; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!255618 () Bool)

(assert start!255618)

(declare-fun b!2628670 () Bool)

(declare-fun b_free!73981 () Bool)

(declare-fun b_next!74685 () Bool)

(assert (=> b!2628670 (= b_free!73981 (not b_next!74685))))

(declare-fun tp!833410 () Bool)

(declare-fun b_and!192539 () Bool)

(assert (=> b!2628670 (= tp!833410 b_and!192539)))

(declare-fun b_free!73983 () Bool)

(declare-fun b_next!74687 () Bool)

(assert (=> b!2628670 (= b_free!73983 (not b_next!74687))))

(declare-fun tp!833408 () Bool)

(declare-fun b_and!192541 () Bool)

(assert (=> b!2628670 (= tp!833408 b_and!192541)))

(declare-fun b!2628654 () Bool)

(declare-fun b_free!73985 () Bool)

(declare-fun b_next!74689 () Bool)

(assert (=> b!2628654 (= b_free!73985 (not b_next!74689))))

(declare-fun tp!833402 () Bool)

(declare-fun b_and!192543 () Bool)

(assert (=> b!2628654 (= tp!833402 b_and!192543)))

(declare-fun b_free!73987 () Bool)

(declare-fun b_next!74691 () Bool)

(assert (=> b!2628654 (= b_free!73987 (not b_next!74691))))

(declare-fun tp!833407 () Bool)

(declare-fun b_and!192545 () Bool)

(assert (=> b!2628654 (= tp!833407 b_and!192545)))

(declare-fun bs!475665 () Bool)

(declare-fun b!2628662 () Bool)

(declare-fun b!2628651 () Bool)

(assert (= bs!475665 (and b!2628662 b!2628651)))

(declare-fun lambda!98494 () Int)

(declare-fun lambda!98493 () Int)

(assert (=> bs!475665 (not (= lambda!98494 lambda!98493))))

(declare-fun b!2628682 () Bool)

(declare-fun e!1658420 () Bool)

(assert (=> b!2628682 (= e!1658420 true)))

(declare-fun b!2628681 () Bool)

(declare-fun e!1658419 () Bool)

(assert (=> b!2628681 (= e!1658419 e!1658420)))

(declare-fun b!2628680 () Bool)

(declare-fun e!1658418 () Bool)

(assert (=> b!2628680 (= e!1658418 e!1658419)))

(assert (=> b!2628662 e!1658418))

(assert (= b!2628681 b!2628682))

(assert (= b!2628680 b!2628681))

(declare-datatypes ((List!30481 0))(
  ( (Nil!30381) (Cons!30381 (h!35801 (_ BitVec 16)) (t!216162 List!30481)) )
))
(declare-datatypes ((C!15668 0))(
  ( (C!15669 (val!9768 Int)) )
))
(declare-datatypes ((Regex!7755 0))(
  ( (ElementMatch!7755 (c!422784 C!15668)) (Concat!12588 (regOne!16022 Regex!7755) (regTwo!16022 Regex!7755)) (EmptyExpr!7755) (Star!7755 (reg!8084 Regex!7755)) (EmptyLang!7755) (Union!7755 (regOne!16023 Regex!7755) (regTwo!16023 Regex!7755)) )
))
(declare-datatypes ((TokenValue!4833 0))(
  ( (FloatLiteralValue!9666 (text!34276 List!30481)) (TokenValueExt!4832 (__x!19499 Int)) (Broken!24165 (value!148992 List!30481)) (Object!4932) (End!4833) (Def!4833) (Underscore!4833) (Match!4833) (Else!4833) (Error!4833) (Case!4833) (If!4833) (Extends!4833) (Abstract!4833) (Class!4833) (Val!4833) (DelimiterValue!9666 (del!4893 List!30481)) (KeywordValue!4839 (value!148993 List!30481)) (CommentValue!9666 (value!148994 List!30481)) (WhitespaceValue!9666 (value!148995 List!30481)) (IndentationValue!4833 (value!148996 List!30481)) (String!34048) (Int32!4833) (Broken!24166 (value!148997 List!30481)) (Boolean!4834) (Unit!44418) (OperatorValue!4836 (op!4893 List!30481)) (IdentifierValue!9666 (value!148998 List!30481)) (IdentifierValue!9667 (value!148999 List!30481)) (WhitespaceValue!9667 (value!149000 List!30481)) (True!9666) (False!9666) (Broken!24167 (value!149001 List!30481)) (Broken!24168 (value!149002 List!30481)) (True!9667) (RightBrace!4833) (RightBracket!4833) (Colon!4833) (Null!4833) (Comma!4833) (LeftBracket!4833) (False!9667) (LeftBrace!4833) (ImaginaryLiteralValue!4833 (text!34277 List!30481)) (StringLiteralValue!14499 (value!149003 List!30481)) (EOFValue!4833 (value!149004 List!30481)) (IdentValue!4833 (value!149005 List!30481)) (DelimiterValue!9667 (value!149006 List!30481)) (DedentValue!4833 (value!149007 List!30481)) (NewLineValue!4833 (value!149008 List!30481)) (IntegerValue!14499 (value!149009 (_ BitVec 32)) (text!34278 List!30481)) (IntegerValue!14500 (value!149010 Int) (text!34279 List!30481)) (Times!4833) (Or!4833) (Equal!4833) (Minus!4833) (Broken!24169 (value!149011 List!30481)) (And!4833) (Div!4833) (LessEqual!4833) (Mod!4833) (Concat!12589) (Not!4833) (Plus!4833) (SpaceValue!4833 (value!149012 List!30481)) (IntegerValue!14501 (value!149013 Int) (text!34280 List!30481)) (StringLiteralValue!14500 (text!34281 List!30481)) (FloatLiteralValue!9667 (text!34282 List!30481)) (BytesLiteralValue!4833 (value!149014 List!30481)) (CommentValue!9667 (value!149015 List!30481)) (StringLiteralValue!14501 (value!149016 List!30481)) (ErrorTokenValue!4833 (msg!4894 List!30481)) )
))
(declare-datatypes ((List!30482 0))(
  ( (Nil!30382) (Cons!30382 (h!35802 C!15668) (t!216163 List!30482)) )
))
(declare-datatypes ((IArray!18933 0))(
  ( (IArray!18934 (innerList!9524 List!30482)) )
))
(declare-datatypes ((Conc!9464 0))(
  ( (Node!9464 (left!23437 Conc!9464) (right!23767 Conc!9464) (csize!19158 Int) (cheight!9675 Int)) (Leaf!14510 (xs!12464 IArray!18933) (csize!19159 Int)) (Empty!9464) )
))
(declare-datatypes ((BalanceConc!18542 0))(
  ( (BalanceConc!18543 (c!422785 Conc!9464)) )
))
(declare-datatypes ((TokenValueInjection!9106 0))(
  ( (TokenValueInjection!9107 (toValue!6525 Int) (toChars!6384 Int)) )
))
(declare-datatypes ((String!34049 0))(
  ( (String!34050 (value!149017 String)) )
))
(declare-datatypes ((Rule!9022 0))(
  ( (Rule!9023 (regex!4611 Regex!7755) (tag!5105 String!34049) (isSeparator!4611 Bool) (transformation!4611 TokenValueInjection!9106)) )
))
(declare-datatypes ((List!30483 0))(
  ( (Nil!30383) (Cons!30383 (h!35803 Rule!9022) (t!216164 List!30483)) )
))
(declare-fun rules!1726 () List!30483)

(get-info :version)

(assert (= (and b!2628662 ((_ is Cons!30383) rules!1726)) b!2628680))

(declare-fun order!16369 () Int)

(declare-fun order!16367 () Int)

(declare-fun dynLambda!12975 (Int Int) Int)

(declare-fun dynLambda!12976 (Int Int) Int)

(assert (=> b!2628682 (< (dynLambda!12975 order!16367 (toValue!6525 (transformation!4611 (h!35803 rules!1726)))) (dynLambda!12976 order!16369 lambda!98494))))

(declare-fun order!16371 () Int)

(declare-fun dynLambda!12977 (Int Int) Int)

(assert (=> b!2628682 (< (dynLambda!12977 order!16371 (toChars!6384 (transformation!4611 (h!35803 rules!1726)))) (dynLambda!12976 order!16369 lambda!98494))))

(assert (=> b!2628662 true))

(declare-fun b!2628650 () Bool)

(declare-fun e!1658400 () Bool)

(declare-fun tp!833404 () Bool)

(declare-datatypes ((Token!8692 0))(
  ( (Token!8693 (value!149018 TokenValue!4833) (rule!6993 Rule!9022) (size!23504 Int) (originalCharacters!5377 List!30482)) )
))
(declare-fun separatorToken!156 () Token!8692)

(declare-fun e!1658410 () Bool)

(declare-fun inv!41170 (String!34049) Bool)

(declare-fun inv!41175 (TokenValueInjection!9106) Bool)

(assert (=> b!2628650 (= e!1658410 (and tp!833404 (inv!41170 (tag!5105 (rule!6993 separatorToken!156))) (inv!41175 (transformation!4611 (rule!6993 separatorToken!156))) e!1658400))))

(declare-fun res!1106525 () Bool)

(declare-fun e!1658406 () Bool)

(assert (=> b!2628651 (=> (not res!1106525) (not e!1658406))))

(declare-datatypes ((List!30484 0))(
  ( (Nil!30384) (Cons!30384 (h!35804 Token!8692) (t!216165 List!30484)) )
))
(declare-datatypes ((IArray!18935 0))(
  ( (IArray!18936 (innerList!9525 List!30484)) )
))
(declare-datatypes ((Conc!9465 0))(
  ( (Node!9465 (left!23438 Conc!9465) (right!23768 Conc!9465) (csize!19160 Int) (cheight!9676 Int)) (Leaf!14511 (xs!12465 IArray!18935) (csize!19161 Int)) (Empty!9465) )
))
(declare-datatypes ((BalanceConc!18544 0))(
  ( (BalanceConc!18545 (c!422786 Conc!9465)) )
))
(declare-fun v!6381 () BalanceConc!18544)

(declare-fun forall!6343 (BalanceConc!18544 Int) Bool)

(assert (=> b!2628651 (= res!1106525 (forall!6343 v!6381 lambda!98493))))

(declare-fun b!2628653 () Bool)

(declare-fun res!1106522 () Bool)

(assert (=> b!2628653 (=> (not res!1106522) (not e!1658406))))

(assert (=> b!2628653 (= res!1106522 (isSeparator!4611 (rule!6993 separatorToken!156)))))

(assert (=> b!2628654 (= e!1658400 (and tp!833402 tp!833407))))

(declare-fun b!2628655 () Bool)

(declare-fun e!1658411 () Bool)

(assert (=> b!2628655 (= e!1658411 e!1658406)))

(declare-fun res!1106527 () Bool)

(assert (=> b!2628655 (=> (not res!1106527) (not e!1658406))))

(declare-fun from!862 () Int)

(declare-fun lt!924659 () Int)

(assert (=> b!2628655 (= res!1106527 (<= from!862 lt!924659))))

(declare-fun size!23505 (BalanceConc!18544) Int)

(assert (=> b!2628655 (= lt!924659 (size!23505 v!6381))))

(declare-fun b!2628656 () Bool)

(declare-fun res!1106520 () Bool)

(assert (=> b!2628656 (=> (not res!1106520) (not e!1658406))))

(declare-datatypes ((LexerInterface!4208 0))(
  ( (LexerInterfaceExt!4205 (__x!19500 Int)) (Lexer!4206) )
))
(declare-fun thiss!14197 () LexerInterface!4208)

(declare-fun rulesProduceIndividualToken!1920 (LexerInterface!4208 List!30483 Token!8692) Bool)

(assert (=> b!2628656 (= res!1106520 (rulesProduceIndividualToken!1920 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2628657 () Bool)

(declare-fun e!1658397 () Bool)

(declare-fun e!1658404 () Bool)

(assert (=> b!2628657 (= e!1658397 (not e!1658404))))

(declare-fun res!1106524 () Bool)

(assert (=> b!2628657 (=> res!1106524 e!1658404)))

(declare-fun lt!924655 () Token!8692)

(declare-fun contains!5724 (BalanceConc!18544 Token!8692) Bool)

(assert (=> b!2628657 (= res!1106524 (not (contains!5724 v!6381 lt!924655)))))

(declare-fun apply!7204 (BalanceConc!18544 Int) Token!8692)

(assert (=> b!2628657 (= lt!924655 (apply!7204 v!6381 from!862))))

(declare-fun lt!924649 () List!30484)

(declare-fun lt!924647 () List!30484)

(declare-fun tail!4248 (List!30484) List!30484)

(declare-fun drop!1607 (List!30484 Int) List!30484)

(assert (=> b!2628657 (= (tail!4248 lt!924649) (drop!1607 lt!924647 (+ 1 from!862)))))

(declare-datatypes ((Unit!44419 0))(
  ( (Unit!44420) )
))
(declare-fun lt!924648 () Unit!44419)

(declare-fun lemmaDropTail!796 (List!30484 Int) Unit!44419)

(assert (=> b!2628657 (= lt!924648 (lemmaDropTail!796 lt!924647 from!862))))

(declare-fun head!6010 (List!30484) Token!8692)

(declare-fun apply!7205 (List!30484 Int) Token!8692)

(assert (=> b!2628657 (= (head!6010 lt!924649) (apply!7205 lt!924647 from!862))))

(assert (=> b!2628657 (= lt!924649 (drop!1607 lt!924647 from!862))))

(declare-fun lt!924651 () Unit!44419)

(declare-fun lemmaDropApply!822 (List!30484 Int) Unit!44419)

(assert (=> b!2628657 (= lt!924651 (lemmaDropApply!822 lt!924647 from!862))))

(declare-fun b!2628658 () Bool)

(declare-fun res!1106531 () Bool)

(assert (=> b!2628658 (=> (not res!1106531) (not e!1658406))))

(declare-fun rulesInvariant!3708 (LexerInterface!4208 List!30483) Bool)

(assert (=> b!2628658 (= res!1106531 (rulesInvariant!3708 thiss!14197 rules!1726))))

(declare-fun b!2628659 () Bool)

(declare-fun e!1658409 () Bool)

(declare-fun e!1658408 () Bool)

(assert (=> b!2628659 (= e!1658409 e!1658408)))

(declare-fun res!1106517 () Bool)

(assert (=> b!2628659 (=> res!1106517 e!1658408)))

(declare-fun lt!924661 () List!30482)

(declare-fun lt!924646 () List!30482)

(assert (=> b!2628659 (= res!1106517 (not (= lt!924661 lt!924646)))))

(declare-fun printList!1148 (LexerInterface!4208 List!30484) List!30482)

(assert (=> b!2628659 (= lt!924646 (printList!1148 thiss!14197 (Cons!30384 lt!924655 Nil!30384)))))

(declare-fun lt!924656 () BalanceConc!18542)

(declare-fun list!11414 (BalanceConc!18542) List!30482)

(assert (=> b!2628659 (= lt!924661 (list!11414 lt!924656))))

(declare-fun lt!924660 () BalanceConc!18544)

(declare-fun printTailRec!1107 (LexerInterface!4208 BalanceConc!18544 Int BalanceConc!18542) BalanceConc!18542)

(assert (=> b!2628659 (= lt!924656 (printTailRec!1107 thiss!14197 lt!924660 0 (BalanceConc!18543 Empty!9464)))))

(declare-fun print!1618 (LexerInterface!4208 BalanceConc!18544) BalanceConc!18542)

(assert (=> b!2628659 (= lt!924656 (print!1618 thiss!14197 lt!924660))))

(declare-fun singletonSeq!2037 (Token!8692) BalanceConc!18544)

(assert (=> b!2628659 (= lt!924660 (singletonSeq!2037 lt!924655))))

(declare-fun b!2628660 () Bool)

(assert (=> b!2628660 (= e!1658406 e!1658397)))

(declare-fun res!1106530 () Bool)

(assert (=> b!2628660 (=> (not res!1106530) (not e!1658397))))

(assert (=> b!2628660 (= res!1106530 (< from!862 lt!924659))))

(declare-fun lt!924654 () Unit!44419)

(declare-fun lemmaContentSubsetPreservesForall!280 (List!30484 List!30484 Int) Unit!44419)

(declare-fun dropList!914 (BalanceConc!18544 Int) List!30484)

(assert (=> b!2628660 (= lt!924654 (lemmaContentSubsetPreservesForall!280 lt!924647 (dropList!914 v!6381 from!862) lambda!98493))))

(declare-fun list!11415 (BalanceConc!18544) List!30484)

(assert (=> b!2628660 (= lt!924647 (list!11415 v!6381))))

(declare-fun b!2628661 () Bool)

(declare-fun tp!833405 () Bool)

(declare-fun e!1658402 () Bool)

(declare-fun inv!21 (TokenValue!4833) Bool)

(assert (=> b!2628661 (= e!1658402 (and (inv!21 (value!149018 separatorToken!156)) e!1658410 tp!833405))))

(assert (=> b!2628662 (= e!1658404 e!1658409)))

(declare-fun res!1106523 () Bool)

(assert (=> b!2628662 (=> res!1106523 e!1658409)))

(declare-fun lt!924653 () Bool)

(declare-datatypes ((tuple2!29916 0))(
  ( (tuple2!29917 (_1!17500 Token!8692) (_2!17500 BalanceConc!18542)) )
))
(declare-datatypes ((Option!6002 0))(
  ( (None!6001) (Some!6001 (v!32388 tuple2!29916)) )
))
(declare-fun lt!924658 () Option!6002)

(assert (=> b!2628662 (= res!1106523 (or (and (not lt!924653) (= (_1!17500 (v!32388 lt!924658)) lt!924655)) (and (not lt!924653) (not (= (_1!17500 (v!32388 lt!924658)) lt!924655))) (not ((_ is None!6001) lt!924658))))))

(assert (=> b!2628662 (= lt!924653 (not ((_ is Some!6001) lt!924658)))))

(declare-fun lt!924657 () BalanceConc!18542)

(declare-fun lt!924652 () BalanceConc!18542)

(declare-fun maxPrefixZipperSequence!938 (LexerInterface!4208 List!30483 BalanceConc!18542) Option!6002)

(declare-fun ++!7397 (BalanceConc!18542 BalanceConc!18542) BalanceConc!18542)

(assert (=> b!2628662 (= lt!924658 (maxPrefixZipperSequence!938 thiss!14197 rules!1726 (++!7397 lt!924657 lt!924652)))))

(declare-fun charsOf!2902 (Token!8692) BalanceConc!18542)

(assert (=> b!2628662 (= lt!924657 (charsOf!2902 lt!924655))))

(declare-fun printWithSeparatorTokenWhenNeededRec!486 (LexerInterface!4208 List!30483 BalanceConc!18544 Token!8692 Int) BalanceConc!18542)

(assert (=> b!2628662 (= lt!924652 (printWithSeparatorTokenWhenNeededRec!486 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))

(declare-fun lt!924650 () Unit!44419)

(declare-fun forallContained!967 (List!30484 Int Token!8692) Unit!44419)

(assert (=> b!2628662 (= lt!924650 (forallContained!967 lt!924647 lambda!98494 lt!924655))))

(declare-fun b!2628663 () Bool)

(declare-fun res!1106521 () Bool)

(assert (=> b!2628663 (=> (not res!1106521) (not e!1658406))))

(declare-fun rulesProduceEachTokenIndividually!1028 (LexerInterface!4208 List!30483 BalanceConc!18544) Bool)

(assert (=> b!2628663 (= res!1106521 (rulesProduceEachTokenIndividually!1028 thiss!14197 rules!1726 v!6381))))

(declare-fun b!2628664 () Bool)

(declare-fun res!1106518 () Bool)

(assert (=> b!2628664 (=> (not res!1106518) (not e!1658406))))

(declare-fun sepAndNonSepRulesDisjointChars!1184 (List!30483 List!30483) Bool)

(assert (=> b!2628664 (= res!1106518 (sepAndNonSepRulesDisjointChars!1184 rules!1726 rules!1726))))

(declare-fun b!2628665 () Bool)

(declare-fun res!1106528 () Bool)

(assert (=> b!2628665 (=> res!1106528 e!1658408)))

(assert (=> b!2628665 (= res!1106528 (not (= lt!924646 (list!11414 lt!924657))))))

(declare-fun b!2628666 () Bool)

(declare-fun e!1658407 () Bool)

(declare-fun e!1658405 () Bool)

(declare-fun tp!833409 () Bool)

(assert (=> b!2628666 (= e!1658407 (and e!1658405 tp!833409))))

(declare-fun b!2628667 () Bool)

(declare-fun e!1658399 () Bool)

(declare-fun tp!833406 () Bool)

(assert (=> b!2628667 (= e!1658405 (and tp!833406 (inv!41170 (tag!5105 (h!35803 rules!1726))) (inv!41175 (transformation!4611 (h!35803 rules!1726))) e!1658399))))

(declare-fun b!2628668 () Bool)

(assert (=> b!2628668 (= e!1658408 (<= 0 from!862))))

(declare-fun b!2628669 () Bool)

(declare-fun e!1658401 () Bool)

(declare-fun tp!833403 () Bool)

(declare-fun inv!41176 (Conc!9465) Bool)

(assert (=> b!2628669 (= e!1658401 (and (inv!41176 (c!422786 v!6381)) tp!833403))))

(declare-fun res!1106529 () Bool)

(assert (=> start!255618 (=> (not res!1106529) (not e!1658411))))

(assert (=> start!255618 (= res!1106529 (and ((_ is Lexer!4206) thiss!14197) (>= from!862 0)))))

(assert (=> start!255618 e!1658411))

(assert (=> start!255618 true))

(assert (=> start!255618 e!1658407))

(declare-fun inv!41177 (Token!8692) Bool)

(assert (=> start!255618 (and (inv!41177 separatorToken!156) e!1658402)))

(declare-fun inv!41178 (BalanceConc!18544) Bool)

(assert (=> start!255618 (and (inv!41178 v!6381) e!1658401)))

(declare-fun b!2628652 () Bool)

(declare-fun res!1106519 () Bool)

(assert (=> b!2628652 (=> (not res!1106519) (not e!1658406))))

(declare-fun isEmpty!17344 (List!30483) Bool)

(assert (=> b!2628652 (= res!1106519 (not (isEmpty!17344 rules!1726)))))

(assert (=> b!2628670 (= e!1658399 (and tp!833410 tp!833408))))

(declare-fun b!2628671 () Bool)

(declare-fun res!1106526 () Bool)

(assert (=> b!2628671 (=> res!1106526 e!1658404)))

(declare-fun contains!5725 (List!30484 Token!8692) Bool)

(assert (=> b!2628671 (= res!1106526 (not (contains!5725 lt!924647 lt!924655)))))

(assert (= (and start!255618 res!1106529) b!2628655))

(assert (= (and b!2628655 res!1106527) b!2628652))

(assert (= (and b!2628652 res!1106519) b!2628658))

(assert (= (and b!2628658 res!1106531) b!2628663))

(assert (= (and b!2628663 res!1106521) b!2628656))

(assert (= (and b!2628656 res!1106520) b!2628653))

(assert (= (and b!2628653 res!1106522) b!2628651))

(assert (= (and b!2628651 res!1106525) b!2628664))

(assert (= (and b!2628664 res!1106518) b!2628660))

(assert (= (and b!2628660 res!1106530) b!2628657))

(assert (= (and b!2628657 (not res!1106524)) b!2628671))

(assert (= (and b!2628671 (not res!1106526)) b!2628662))

(assert (= (and b!2628662 (not res!1106523)) b!2628659))

(assert (= (and b!2628659 (not res!1106517)) b!2628665))

(assert (= (and b!2628665 (not res!1106528)) b!2628668))

(assert (= b!2628667 b!2628670))

(assert (= b!2628666 b!2628667))

(assert (= (and start!255618 ((_ is Cons!30383) rules!1726)) b!2628666))

(assert (= b!2628650 b!2628654))

(assert (= b!2628661 b!2628650))

(assert (= start!255618 b!2628661))

(assert (= start!255618 b!2628669))

(declare-fun m!2971731 () Bool)

(assert (=> b!2628671 m!2971731))

(declare-fun m!2971733 () Bool)

(assert (=> b!2628663 m!2971733))

(declare-fun m!2971735 () Bool)

(assert (=> b!2628658 m!2971735))

(declare-fun m!2971737 () Bool)

(assert (=> b!2628657 m!2971737))

(declare-fun m!2971739 () Bool)

(assert (=> b!2628657 m!2971739))

(declare-fun m!2971741 () Bool)

(assert (=> b!2628657 m!2971741))

(declare-fun m!2971743 () Bool)

(assert (=> b!2628657 m!2971743))

(declare-fun m!2971745 () Bool)

(assert (=> b!2628657 m!2971745))

(declare-fun m!2971747 () Bool)

(assert (=> b!2628657 m!2971747))

(declare-fun m!2971749 () Bool)

(assert (=> b!2628657 m!2971749))

(declare-fun m!2971751 () Bool)

(assert (=> b!2628657 m!2971751))

(declare-fun m!2971753 () Bool)

(assert (=> b!2628657 m!2971753))

(declare-fun m!2971755 () Bool)

(assert (=> b!2628665 m!2971755))

(declare-fun m!2971757 () Bool)

(assert (=> b!2628656 m!2971757))

(declare-fun m!2971759 () Bool)

(assert (=> b!2628669 m!2971759))

(declare-fun m!2971761 () Bool)

(assert (=> b!2628664 m!2971761))

(declare-fun m!2971763 () Bool)

(assert (=> b!2628655 m!2971763))

(declare-fun m!2971765 () Bool)

(assert (=> b!2628652 m!2971765))

(declare-fun m!2971767 () Bool)

(assert (=> b!2628659 m!2971767))

(declare-fun m!2971769 () Bool)

(assert (=> b!2628659 m!2971769))

(declare-fun m!2971771 () Bool)

(assert (=> b!2628659 m!2971771))

(declare-fun m!2971773 () Bool)

(assert (=> b!2628659 m!2971773))

(declare-fun m!2971775 () Bool)

(assert (=> b!2628659 m!2971775))

(declare-fun m!2971777 () Bool)

(assert (=> b!2628651 m!2971777))

(declare-fun m!2971779 () Bool)

(assert (=> b!2628667 m!2971779))

(declare-fun m!2971781 () Bool)

(assert (=> b!2628667 m!2971781))

(declare-fun m!2971783 () Bool)

(assert (=> b!2628660 m!2971783))

(assert (=> b!2628660 m!2971783))

(declare-fun m!2971785 () Bool)

(assert (=> b!2628660 m!2971785))

(declare-fun m!2971787 () Bool)

(assert (=> b!2628660 m!2971787))

(declare-fun m!2971789 () Bool)

(assert (=> start!255618 m!2971789))

(declare-fun m!2971791 () Bool)

(assert (=> start!255618 m!2971791))

(declare-fun m!2971793 () Bool)

(assert (=> b!2628661 m!2971793))

(declare-fun m!2971795 () Bool)

(assert (=> b!2628650 m!2971795))

(declare-fun m!2971797 () Bool)

(assert (=> b!2628650 m!2971797))

(declare-fun m!2971799 () Bool)

(assert (=> b!2628662 m!2971799))

(declare-fun m!2971801 () Bool)

(assert (=> b!2628662 m!2971801))

(declare-fun m!2971803 () Bool)

(assert (=> b!2628662 m!2971803))

(declare-fun m!2971805 () Bool)

(assert (=> b!2628662 m!2971805))

(declare-fun m!2971807 () Bool)

(assert (=> b!2628662 m!2971807))

(assert (=> b!2628662 m!2971803))

(check-sat b_and!192543 (not b!2628657) (not b!2628663) b_and!192541 (not b!2628660) (not b!2628667) (not b_next!74687) (not b!2628662) (not b!2628650) (not start!255618) (not b!2628658) (not b!2628652) (not b!2628656) (not b_next!74685) (not b!2628664) (not b_next!74691) (not b!2628669) b_and!192545 (not b!2628671) (not b_next!74689) (not b!2628680) (not b!2628659) (not b!2628651) (not b!2628655) (not b!2628661) b_and!192539 (not b!2628665) (not b!2628666))
(check-sat b_and!192543 (not b_next!74685) (not b_next!74691) b_and!192545 b_and!192541 (not b_next!74689) b_and!192539 (not b_next!74687))
