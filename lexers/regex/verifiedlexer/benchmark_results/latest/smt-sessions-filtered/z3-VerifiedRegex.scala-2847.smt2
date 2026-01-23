; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!164166 () Bool)

(assert start!164166)

(declare-fun b!1686461 () Bool)

(declare-fun b_free!45655 () Bool)

(declare-fun b_next!46359 () Bool)

(assert (=> b!1686461 (= b_free!45655 (not b_next!46359))))

(declare-fun tp!484316 () Bool)

(declare-fun b_and!120533 () Bool)

(assert (=> b!1686461 (= tp!484316 b_and!120533)))

(declare-fun b_free!45657 () Bool)

(declare-fun b_next!46361 () Bool)

(assert (=> b!1686461 (= b_free!45657 (not b_next!46361))))

(declare-fun tp!484319 () Bool)

(declare-fun b_and!120535 () Bool)

(assert (=> b!1686461 (= tp!484319 b_and!120535)))

(declare-fun b!1686468 () Bool)

(declare-fun b_free!45659 () Bool)

(declare-fun b_next!46363 () Bool)

(assert (=> b!1686468 (= b_free!45659 (not b_next!46363))))

(declare-fun tp!484317 () Bool)

(declare-fun b_and!120537 () Bool)

(assert (=> b!1686468 (= tp!484317 b_and!120537)))

(declare-fun b_free!45661 () Bool)

(declare-fun b_next!46365 () Bool)

(assert (=> b!1686468 (= b_free!45661 (not b_next!46365))))

(declare-fun tp!484318 () Bool)

(declare-fun b_and!120539 () Bool)

(assert (=> b!1686468 (= tp!484318 b_and!120539)))

(declare-fun b!1686458 () Bool)

(declare-fun res!756094 () Bool)

(declare-fun e!1079704 () Bool)

(assert (=> b!1686458 (=> res!756094 e!1079704)))

(declare-datatypes ((C!9340 0))(
  ( (C!9341 (val!5266 Int)) )
))
(declare-datatypes ((List!18555 0))(
  ( (Nil!18485) (Cons!18485 (h!23886 C!9340) (t!154808 List!18555)) )
))
(declare-fun lt!640654 () List!18555)

(declare-datatypes ((LexerInterface!2884 0))(
  ( (LexerInterfaceExt!2881 (__x!11992 Int)) (Lexer!2882) )
))
(declare-fun thiss!17113 () LexerInterface!2884)

(declare-datatypes ((List!18556 0))(
  ( (Nil!18486) (Cons!18486 (h!23887 (_ BitVec 16)) (t!154809 List!18556)) )
))
(declare-datatypes ((TokenValue!3345 0))(
  ( (FloatLiteralValue!6690 (text!23860 List!18556)) (TokenValueExt!3344 (__x!11993 Int)) (Broken!16725 (value!102414 List!18556)) (Object!3414) (End!3345) (Def!3345) (Underscore!3345) (Match!3345) (Else!3345) (Error!3345) (Case!3345) (If!3345) (Extends!3345) (Abstract!3345) (Class!3345) (Val!3345) (DelimiterValue!6690 (del!3405 List!18556)) (KeywordValue!3351 (value!102415 List!18556)) (CommentValue!6690 (value!102416 List!18556)) (WhitespaceValue!6690 (value!102417 List!18556)) (IndentationValue!3345 (value!102418 List!18556)) (String!21056) (Int32!3345) (Broken!16726 (value!102419 List!18556)) (Boolean!3346) (Unit!31838) (OperatorValue!3348 (op!3405 List!18556)) (IdentifierValue!6690 (value!102420 List!18556)) (IdentifierValue!6691 (value!102421 List!18556)) (WhitespaceValue!6691 (value!102422 List!18556)) (True!6690) (False!6690) (Broken!16727 (value!102423 List!18556)) (Broken!16728 (value!102424 List!18556)) (True!6691) (RightBrace!3345) (RightBracket!3345) (Colon!3345) (Null!3345) (Comma!3345) (LeftBracket!3345) (False!6691) (LeftBrace!3345) (ImaginaryLiteralValue!3345 (text!23861 List!18556)) (StringLiteralValue!10035 (value!102425 List!18556)) (EOFValue!3345 (value!102426 List!18556)) (IdentValue!3345 (value!102427 List!18556)) (DelimiterValue!6691 (value!102428 List!18556)) (DedentValue!3345 (value!102429 List!18556)) (NewLineValue!3345 (value!102430 List!18556)) (IntegerValue!10035 (value!102431 (_ BitVec 32)) (text!23862 List!18556)) (IntegerValue!10036 (value!102432 Int) (text!23863 List!18556)) (Times!3345) (Or!3345) (Equal!3345) (Minus!3345) (Broken!16729 (value!102433 List!18556)) (And!3345) (Div!3345) (LessEqual!3345) (Mod!3345) (Concat!7928) (Not!3345) (Plus!3345) (SpaceValue!3345 (value!102434 List!18556)) (IntegerValue!10037 (value!102435 Int) (text!23864 List!18556)) (StringLiteralValue!10036 (text!23865 List!18556)) (FloatLiteralValue!6691 (text!23866 List!18556)) (BytesLiteralValue!3345 (value!102436 List!18556)) (CommentValue!6691 (value!102437 List!18556)) (StringLiteralValue!10037 (value!102438 List!18556)) (ErrorTokenValue!3345 (msg!3406 List!18556)) )
))
(declare-datatypes ((IArray!12321 0))(
  ( (IArray!12322 (innerList!6218 List!18555)) )
))
(declare-datatypes ((Conc!6158 0))(
  ( (Node!6158 (left!14775 Conc!6158) (right!15105 Conc!6158) (csize!12546 Int) (cheight!6369 Int)) (Leaf!9006 (xs!9018 IArray!12321) (csize!12547 Int)) (Empty!6158) )
))
(declare-datatypes ((BalanceConc!12260 0))(
  ( (BalanceConc!12261 (c!275419 Conc!6158)) )
))
(declare-datatypes ((Regex!4583 0))(
  ( (ElementMatch!4583 (c!275420 C!9340)) (Concat!7929 (regOne!9678 Regex!4583) (regTwo!9678 Regex!4583)) (EmptyExpr!4583) (Star!4583 (reg!4912 Regex!4583)) (EmptyLang!4583) (Union!4583 (regOne!9679 Regex!4583) (regTwo!9679 Regex!4583)) )
))
(declare-datatypes ((String!21057 0))(
  ( (String!21058 (value!102439 String)) )
))
(declare-datatypes ((TokenValueInjection!6350 0))(
  ( (TokenValueInjection!6351 (toValue!4734 Int) (toChars!4593 Int)) )
))
(declare-datatypes ((Rule!6310 0))(
  ( (Rule!6311 (regex!3255 Regex!4583) (tag!3545 String!21057) (isSeparator!3255 Bool) (transformation!3255 TokenValueInjection!6350)) )
))
(declare-datatypes ((List!18557 0))(
  ( (Nil!18487) (Cons!18487 (h!23888 Rule!6310) (t!154810 List!18557)) )
))
(declare-fun rules!1846 () List!18557)

(declare-datatypes ((Token!6076 0))(
  ( (Token!6077 (value!102440 TokenValue!3345) (rule!5161 Rule!6310) (size!14720 Int) (originalCharacters!4069 List!18555)) )
))
(declare-datatypes ((List!18558 0))(
  ( (Nil!18488) (Cons!18488 (h!23889 Token!6076) (t!154811 List!18558)) )
))
(declare-datatypes ((IArray!12323 0))(
  ( (IArray!12324 (innerList!6219 List!18558)) )
))
(declare-datatypes ((Conc!6159 0))(
  ( (Node!6159 (left!14776 Conc!6159) (right!15106 Conc!6159) (csize!12548 Int) (cheight!6370 Int)) (Leaf!9007 (xs!9019 IArray!12323) (csize!12549 Int)) (Empty!6159) )
))
(declare-datatypes ((BalanceConc!12262 0))(
  ( (BalanceConc!12263 (c!275421 Conc!6159)) )
))
(declare-fun isEmpty!11562 (BalanceConc!12262) Bool)

(declare-datatypes ((tuple2!18234 0))(
  ( (tuple2!18235 (_1!10519 BalanceConc!12262) (_2!10519 BalanceConc!12260)) )
))
(declare-fun lex!1368 (LexerInterface!2884 List!18557 BalanceConc!12260) tuple2!18234)

(declare-fun seqFromList!2247 (List!18555) BalanceConc!12260)

(assert (=> b!1686458 (= res!756094 (isEmpty!11562 (_1!10519 (lex!1368 thiss!17113 rules!1846 (seqFromList!2247 lt!640654)))))))

(declare-fun res!756104 () Bool)

(declare-fun e!1079705 () Bool)

(assert (=> start!164166 (=> (not res!756104) (not e!1079705))))

(get-info :version)

(assert (=> start!164166 (= res!756104 ((_ is Lexer!2882) thiss!17113))))

(assert (=> start!164166 e!1079705))

(assert (=> start!164166 true))

(declare-fun e!1079694 () Bool)

(assert (=> start!164166 e!1079694))

(declare-fun e!1079696 () Bool)

(assert (=> start!164166 e!1079696))

(declare-fun b!1686459 () Bool)

(declare-fun res!756088 () Bool)

(assert (=> b!1686459 (=> (not res!756088) (not e!1079705))))

(declare-fun tokens!457 () List!18558)

(assert (=> b!1686459 (= res!756088 (and (not ((_ is Nil!18488) tokens!457)) (not ((_ is Nil!18488) (t!154811 tokens!457)))))))

(declare-fun tp!484315 () Bool)

(declare-fun e!1079697 () Bool)

(declare-fun e!1079708 () Bool)

(declare-fun b!1686460 () Bool)

(declare-fun inv!21 (TokenValue!3345) Bool)

(assert (=> b!1686460 (= e!1079708 (and (inv!21 (value!102440 (h!23889 tokens!457))) e!1079697 tp!484315))))

(declare-fun e!1079701 () Bool)

(assert (=> b!1686461 (= e!1079701 (and tp!484316 tp!484319))))

(declare-fun b!1686462 () Bool)

(declare-fun res!756099 () Bool)

(assert (=> b!1686462 (=> res!756099 e!1079704)))

(declare-fun rulesProduceIndividualToken!1532 (LexerInterface!2884 List!18557 Token!6076) Bool)

(assert (=> b!1686462 (= res!756099 (not (rulesProduceIndividualToken!1532 thiss!17113 rules!1846 (h!23889 tokens!457))))))

(declare-fun b!1686463 () Bool)

(declare-fun e!1079699 () Bool)

(declare-fun e!1079698 () Bool)

(assert (=> b!1686463 (= e!1079699 e!1079698)))

(declare-fun res!756087 () Bool)

(assert (=> b!1686463 (=> res!756087 e!1079698)))

(declare-fun lt!640657 () List!18558)

(declare-fun lt!640641 () List!18558)

(declare-fun lt!640659 () List!18558)

(assert (=> b!1686463 (= res!756087 (or (not (= lt!640641 lt!640659)) (not (= lt!640659 lt!640657))))))

(declare-fun lt!640664 () BalanceConc!12262)

(declare-fun list!7431 (BalanceConc!12262) List!18558)

(assert (=> b!1686463 (= lt!640659 (list!7431 lt!640664))))

(assert (=> b!1686463 (= lt!640641 lt!640657)))

(declare-fun prepend!851 (BalanceConc!12262 Token!6076) BalanceConc!12262)

(declare-fun seqFromList!2248 (List!18558) BalanceConc!12262)

(assert (=> b!1686463 (= lt!640657 (list!7431 (prepend!851 (seqFromList!2248 (t!154811 (t!154811 tokens!457))) (h!23889 (t!154811 tokens!457)))))))

(declare-datatypes ((Unit!31839 0))(
  ( (Unit!31840) )
))
(declare-fun lt!640640 () Unit!31839)

(declare-fun lt!640653 () tuple2!18234)

(declare-fun seqFromListBHdTlConstructive!324 (Token!6076 List!18558 BalanceConc!12262) Unit!31839)

(assert (=> b!1686463 (= lt!640640 (seqFromListBHdTlConstructive!324 (h!23889 (t!154811 tokens!457)) (t!154811 (t!154811 tokens!457)) (_1!10519 lt!640653)))))

(declare-fun b!1686464 () Bool)

(declare-fun e!1079700 () Bool)

(declare-fun e!1079710 () Bool)

(assert (=> b!1686464 (= e!1079700 e!1079710)))

(declare-fun res!756097 () Bool)

(assert (=> b!1686464 (=> res!756097 e!1079710)))

(declare-fun lt!640647 () Regex!4583)

(declare-fun lt!640648 () List!18555)

(declare-fun prefixMatch!496 (Regex!4583 List!18555) Bool)

(declare-fun ++!5065 (List!18555 List!18555) List!18555)

(assert (=> b!1686464 (= res!756097 (prefixMatch!496 lt!640647 (++!5065 lt!640654 lt!640648)))))

(declare-fun lt!640642 () BalanceConc!12260)

(declare-fun list!7432 (BalanceConc!12260) List!18555)

(assert (=> b!1686464 (= lt!640648 (list!7432 lt!640642))))

(declare-fun b!1686465 () Bool)

(declare-fun e!1079709 () Bool)

(declare-fun lt!640656 () BalanceConc!12260)

(declare-fun head!3779 (BalanceConc!12260) C!9340)

(assert (=> b!1686465 (= e!1079709 (= lt!640648 (Cons!18485 (head!3779 lt!640656) Nil!18485)))))

(declare-fun b!1686466 () Bool)

(assert (=> b!1686466 (= e!1079698 e!1079704)))

(declare-fun res!756100 () Bool)

(assert (=> b!1686466 (=> res!756100 e!1079704)))

(declare-fun lt!640660 () List!18555)

(declare-fun lt!640651 () List!18555)

(assert (=> b!1686466 (= res!756100 (or (not (= lt!640651 lt!640660)) (not (= lt!640660 lt!640654)) (not (= lt!640651 lt!640654))))))

(declare-fun printList!997 (LexerInterface!2884 List!18558) List!18555)

(assert (=> b!1686466 (= lt!640660 (printList!997 thiss!17113 (Cons!18488 (h!23889 tokens!457) Nil!18488)))))

(declare-fun lt!640655 () BalanceConc!12260)

(assert (=> b!1686466 (= lt!640651 (list!7432 lt!640655))))

(declare-fun lt!640650 () BalanceConc!12262)

(declare-fun printTailRec!935 (LexerInterface!2884 BalanceConc!12262 Int BalanceConc!12260) BalanceConc!12260)

(assert (=> b!1686466 (= lt!640655 (printTailRec!935 thiss!17113 lt!640650 0 (BalanceConc!12261 Empty!6158)))))

(declare-fun print!1415 (LexerInterface!2884 BalanceConc!12262) BalanceConc!12260)

(assert (=> b!1686466 (= lt!640655 (print!1415 thiss!17113 lt!640650))))

(declare-fun singletonSeq!1778 (Token!6076) BalanceConc!12262)

(assert (=> b!1686466 (= lt!640650 (singletonSeq!1778 (h!23889 tokens!457)))))

(declare-datatypes ((tuple2!18236 0))(
  ( (tuple2!18237 (_1!10520 Token!6076) (_2!10520 List!18555)) )
))
(declare-datatypes ((Option!3568 0))(
  ( (None!3567) (Some!3567 (v!24888 tuple2!18236)) )
))
(declare-fun lt!640652 () Option!3568)

(declare-fun lt!640658 () List!18555)

(declare-fun maxPrefix!1444 (LexerInterface!2884 List!18557 List!18555) Option!3568)

(assert (=> b!1686466 (= lt!640652 (maxPrefix!1444 thiss!17113 rules!1846 lt!640658))))

(declare-fun b!1686467 () Bool)

(declare-fun res!756102 () Bool)

(assert (=> b!1686467 (=> res!756102 e!1079698)))

(declare-fun separableTokensPredicate!824 (LexerInterface!2884 Token!6076 Token!6076 List!18557) Bool)

(assert (=> b!1686467 (= res!756102 (not (separableTokensPredicate!824 thiss!17113 (h!23889 tokens!457) (h!23889 (t!154811 tokens!457)) rules!1846)))))

(declare-fun e!1079691 () Bool)

(assert (=> b!1686468 (= e!1079691 (and tp!484317 tp!484318))))

(declare-fun b!1686469 () Bool)

(declare-fun res!756095 () Bool)

(assert (=> b!1686469 (=> (not res!756095) (not e!1079709))))

(declare-fun head!3780 (List!18555) C!9340)

(assert (=> b!1686469 (= res!756095 (= lt!640648 (Cons!18485 (head!3780 (originalCharacters!4069 (h!23889 (t!154811 tokens!457)))) Nil!18485)))))

(declare-fun b!1686470 () Bool)

(declare-fun e!1079706 () Bool)

(assert (=> b!1686470 (= e!1079706 (not e!1079699))))

(declare-fun res!756098 () Bool)

(assert (=> b!1686470 (=> res!756098 e!1079699)))

(assert (=> b!1686470 (= res!756098 (not (= lt!640641 (t!154811 tokens!457))))))

(assert (=> b!1686470 (= lt!640641 (list!7431 (_1!10519 lt!640653)))))

(declare-fun lt!640643 () Unit!31839)

(declare-fun theoremInvertabilityWhenTokenListSeparable!321 (LexerInterface!2884 List!18557 List!18558) Unit!31839)

(assert (=> b!1686470 (= lt!640643 (theoremInvertabilityWhenTokenListSeparable!321 thiss!17113 rules!1846 (t!154811 tokens!457)))))

(declare-fun lt!640645 () List!18555)

(declare-fun isPrefix!1513 (List!18555 List!18555) Bool)

(assert (=> b!1686470 (isPrefix!1513 lt!640654 lt!640645)))

(declare-fun lt!640649 () Unit!31839)

(declare-fun lt!640662 () List!18555)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1034 (List!18555 List!18555) Unit!31839)

(assert (=> b!1686470 (= lt!640649 (lemmaConcatTwoListThenFirstIsPrefix!1034 lt!640654 lt!640662))))

(declare-fun b!1686471 () Bool)

(declare-fun res!756093 () Bool)

(assert (=> b!1686471 (=> (not res!756093) (not e!1079705))))

(declare-fun isEmpty!11563 (List!18557) Bool)

(assert (=> b!1686471 (= res!756093 (not (isEmpty!11563 rules!1846)))))

(declare-fun b!1686472 () Bool)

(declare-fun res!756091 () Bool)

(assert (=> b!1686472 (=> (not res!756091) (not e!1079705))))

(declare-fun rulesProduceEachTokenIndividuallyList!1086 (LexerInterface!2884 List!18557 List!18558) Bool)

(assert (=> b!1686472 (= res!756091 (rulesProduceEachTokenIndividuallyList!1086 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1686473 () Bool)

(declare-fun e!1079692 () Bool)

(declare-fun tp!484314 () Bool)

(assert (=> b!1686473 (= e!1079694 (and e!1079692 tp!484314))))

(declare-fun tp!484321 () Bool)

(declare-fun b!1686474 () Bool)

(declare-fun inv!23846 (String!21057) Bool)

(declare-fun inv!23849 (TokenValueInjection!6350) Bool)

(assert (=> b!1686474 (= e!1079692 (and tp!484321 (inv!23846 (tag!3545 (h!23888 rules!1846))) (inv!23849 (transformation!3255 (h!23888 rules!1846))) e!1079701))))

(declare-fun tp!484320 () Bool)

(declare-fun b!1686475 () Bool)

(assert (=> b!1686475 (= e!1079697 (and tp!484320 (inv!23846 (tag!3545 (rule!5161 (h!23889 tokens!457)))) (inv!23849 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) e!1079691))))

(declare-fun b!1686476 () Bool)

(declare-fun res!756092 () Bool)

(assert (=> b!1686476 (=> (not res!756092) (not e!1079709))))

(assert (=> b!1686476 (= res!756092 (= lt!640648 (Cons!18485 (head!3780 lt!640662) Nil!18485)))))

(declare-fun b!1686477 () Bool)

(assert (=> b!1686477 (= e!1079705 e!1079706)))

(declare-fun res!756089 () Bool)

(assert (=> b!1686477 (=> (not res!756089) (not e!1079706))))

(assert (=> b!1686477 (= res!756089 (= lt!640658 lt!640645))))

(assert (=> b!1686477 (= lt!640645 (++!5065 lt!640654 lt!640662))))

(declare-fun lt!640644 () BalanceConc!12260)

(assert (=> b!1686477 (= lt!640658 (list!7432 lt!640644))))

(assert (=> b!1686477 (= lt!640662 (list!7432 lt!640656))))

(declare-fun lt!640663 () BalanceConc!12260)

(assert (=> b!1686477 (= lt!640654 (list!7432 lt!640663))))

(declare-fun charsOf!1904 (Token!6076) BalanceConc!12260)

(assert (=> b!1686477 (= lt!640663 (charsOf!1904 (h!23889 tokens!457)))))

(assert (=> b!1686477 (= lt!640653 (lex!1368 thiss!17113 rules!1846 lt!640656))))

(assert (=> b!1686477 (= lt!640656 (print!1415 thiss!17113 lt!640664))))

(assert (=> b!1686477 (= lt!640664 (seqFromList!2248 (t!154811 tokens!457)))))

(assert (=> b!1686477 (= lt!640644 (print!1415 thiss!17113 (seqFromList!2248 tokens!457)))))

(declare-fun b!1686478 () Bool)

(declare-fun e!1079693 () Bool)

(assert (=> b!1686478 (= e!1079704 e!1079693)))

(declare-fun res!756101 () Bool)

(assert (=> b!1686478 (=> res!756101 e!1079693)))

(declare-fun isDefined!2917 (Option!3568) Bool)

(assert (=> b!1686478 (= res!756101 (not (isDefined!2917 lt!640652)))))

(declare-fun lt!640646 () Unit!31839)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!446 (LexerInterface!2884 List!18557 List!18555 List!18555) Unit!31839)

(assert (=> b!1686478 (= lt!640646 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!446 thiss!17113 rules!1846 lt!640654 lt!640662))))

(declare-fun b!1686479 () Bool)

(declare-fun res!756090 () Bool)

(assert (=> b!1686479 (=> (not res!756090) (not e!1079705))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!577 (LexerInterface!2884 List!18558 List!18557) Bool)

(assert (=> b!1686479 (= res!756090 (tokensListTwoByTwoPredicateSeparableList!577 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1686480 () Bool)

(assert (=> b!1686480 (= e!1079693 e!1079700)))

(declare-fun res!756085 () Bool)

(assert (=> b!1686480 (=> res!756085 e!1079700)))

(declare-fun prefixMatchZipperSequence!695 (Regex!4583 BalanceConc!12260) Bool)

(declare-fun ++!5066 (BalanceConc!12260 BalanceConc!12260) BalanceConc!12260)

(assert (=> b!1686480 (= res!756085 (prefixMatchZipperSequence!695 lt!640647 (++!5066 lt!640663 lt!640642)))))

(declare-fun singletonSeq!1779 (C!9340) BalanceConc!12260)

(declare-fun apply!5035 (BalanceConc!12260 Int) C!9340)

(assert (=> b!1686480 (= lt!640642 (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 tokens!457))) 0)))))

(declare-fun rulesRegex!637 (LexerInterface!2884 List!18557) Regex!4583)

(assert (=> b!1686480 (= lt!640647 (rulesRegex!637 thiss!17113 rules!1846))))

(declare-fun b!1686481 () Bool)

(declare-fun res!756086 () Bool)

(assert (=> b!1686481 (=> (not res!756086) (not e!1079705))))

(declare-fun rulesInvariant!2553 (LexerInterface!2884 List!18557) Bool)

(assert (=> b!1686481 (= res!756086 (rulesInvariant!2553 thiss!17113 rules!1846))))

(declare-fun b!1686482 () Bool)

(declare-fun e!1079703 () Bool)

(assert (=> b!1686482 (= e!1079710 e!1079703)))

(declare-fun res!756103 () Bool)

(assert (=> b!1686482 (=> res!756103 e!1079703)))

(declare-datatypes ((tuple2!18238 0))(
  ( (tuple2!18239 (_1!10521 Token!6076) (_2!10521 BalanceConc!12260)) )
))
(declare-datatypes ((Option!3569 0))(
  ( (None!3568) (Some!3568 (v!24889 tuple2!18238)) )
))
(declare-fun isDefined!2918 (Option!3569) Bool)

(declare-fun maxPrefixZipperSequence!755 (LexerInterface!2884 List!18557 BalanceConc!12260) Option!3569)

(assert (=> b!1686482 (= res!756103 (not (isDefined!2918 (maxPrefixZipperSequence!755 thiss!17113 rules!1846 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))))

(assert (=> b!1686482 e!1079709))

(declare-fun res!756096 () Bool)

(assert (=> b!1686482 (=> (not res!756096) (not e!1079709))))

(assert (=> b!1686482 (= res!756096 (= lt!640654 (originalCharacters!4069 (h!23889 tokens!457))))))

(declare-fun b!1686483 () Bool)

(declare-fun lt!640661 () Option!3568)

(declare-fun get!5420 (Option!3568) tuple2!18236)

(assert (=> b!1686483 (= e!1079703 (= (_1!10520 (get!5420 lt!640661)) (h!23889 tokens!457)))))

(assert (=> b!1686483 (isDefined!2917 lt!640661)))

(assert (=> b!1686483 (= lt!640661 (maxPrefix!1444 thiss!17113 rules!1846 lt!640654))))

(assert (=> b!1686483 (isDefined!2917 (maxPrefix!1444 thiss!17113 rules!1846 (originalCharacters!4069 (h!23889 tokens!457))))))

(declare-fun b!1686484 () Bool)

(declare-fun tp!484322 () Bool)

(declare-fun inv!23850 (Token!6076) Bool)

(assert (=> b!1686484 (= e!1079696 (and (inv!23850 (h!23889 tokens!457)) e!1079708 tp!484322))))

(assert (= (and start!164166 res!756104) b!1686471))

(assert (= (and b!1686471 res!756093) b!1686481))

(assert (= (and b!1686481 res!756086) b!1686472))

(assert (= (and b!1686472 res!756091) b!1686479))

(assert (= (and b!1686479 res!756090) b!1686459))

(assert (= (and b!1686459 res!756088) b!1686477))

(assert (= (and b!1686477 res!756089) b!1686470))

(assert (= (and b!1686470 (not res!756098)) b!1686463))

(assert (= (and b!1686463 (not res!756087)) b!1686467))

(assert (= (and b!1686467 (not res!756102)) b!1686466))

(assert (= (and b!1686466 (not res!756100)) b!1686462))

(assert (= (and b!1686462 (not res!756099)) b!1686458))

(assert (= (and b!1686458 (not res!756094)) b!1686478))

(assert (= (and b!1686478 (not res!756101)) b!1686480))

(assert (= (and b!1686480 (not res!756085)) b!1686464))

(assert (= (and b!1686464 (not res!756097)) b!1686482))

(assert (= (and b!1686482 res!756096) b!1686469))

(assert (= (and b!1686469 res!756095) b!1686476))

(assert (= (and b!1686476 res!756092) b!1686465))

(assert (= (and b!1686482 (not res!756103)) b!1686483))

(assert (= b!1686474 b!1686461))

(assert (= b!1686473 b!1686474))

(assert (= (and start!164166 ((_ is Cons!18487) rules!1846)) b!1686473))

(assert (= b!1686475 b!1686468))

(assert (= b!1686460 b!1686475))

(assert (= b!1686484 b!1686460))

(assert (= (and start!164166 ((_ is Cons!18488) tokens!457)) b!1686484))

(declare-fun m!2069725 () Bool)

(assert (=> b!1686481 m!2069725))

(declare-fun m!2069727 () Bool)

(assert (=> b!1686482 m!2069727))

(assert (=> b!1686482 m!2069727))

(declare-fun m!2069729 () Bool)

(assert (=> b!1686482 m!2069729))

(assert (=> b!1686482 m!2069729))

(declare-fun m!2069731 () Bool)

(assert (=> b!1686482 m!2069731))

(declare-fun m!2069733 () Bool)

(assert (=> b!1686471 m!2069733))

(declare-fun m!2069735 () Bool)

(assert (=> b!1686469 m!2069735))

(declare-fun m!2069737 () Bool)

(assert (=> b!1686477 m!2069737))

(declare-fun m!2069739 () Bool)

(assert (=> b!1686477 m!2069739))

(declare-fun m!2069741 () Bool)

(assert (=> b!1686477 m!2069741))

(declare-fun m!2069743 () Bool)

(assert (=> b!1686477 m!2069743))

(declare-fun m!2069745 () Bool)

(assert (=> b!1686477 m!2069745))

(declare-fun m!2069747 () Bool)

(assert (=> b!1686477 m!2069747))

(declare-fun m!2069749 () Bool)

(assert (=> b!1686477 m!2069749))

(declare-fun m!2069751 () Bool)

(assert (=> b!1686477 m!2069751))

(declare-fun m!2069753 () Bool)

(assert (=> b!1686477 m!2069753))

(declare-fun m!2069755 () Bool)

(assert (=> b!1686477 m!2069755))

(assert (=> b!1686477 m!2069739))

(declare-fun m!2069757 () Bool)

(assert (=> b!1686476 m!2069757))

(declare-fun m!2069759 () Bool)

(assert (=> b!1686458 m!2069759))

(assert (=> b!1686458 m!2069759))

(declare-fun m!2069761 () Bool)

(assert (=> b!1686458 m!2069761))

(declare-fun m!2069763 () Bool)

(assert (=> b!1686458 m!2069763))

(declare-fun m!2069765 () Bool)

(assert (=> b!1686484 m!2069765))

(declare-fun m!2069767 () Bool)

(assert (=> b!1686463 m!2069767))

(declare-fun m!2069769 () Bool)

(assert (=> b!1686463 m!2069769))

(declare-fun m!2069771 () Bool)

(assert (=> b!1686463 m!2069771))

(declare-fun m!2069773 () Bool)

(assert (=> b!1686463 m!2069773))

(declare-fun m!2069775 () Bool)

(assert (=> b!1686463 m!2069775))

(assert (=> b!1686463 m!2069771))

(assert (=> b!1686463 m!2069773))

(declare-fun m!2069777 () Bool)

(assert (=> b!1686479 m!2069777))

(declare-fun m!2069779 () Bool)

(assert (=> b!1686478 m!2069779))

(declare-fun m!2069781 () Bool)

(assert (=> b!1686478 m!2069781))

(declare-fun m!2069783 () Bool)

(assert (=> b!1686467 m!2069783))

(declare-fun m!2069785 () Bool)

(assert (=> b!1686462 m!2069785))

(declare-fun m!2069787 () Bool)

(assert (=> b!1686466 m!2069787))

(declare-fun m!2069789 () Bool)

(assert (=> b!1686466 m!2069789))

(declare-fun m!2069791 () Bool)

(assert (=> b!1686466 m!2069791))

(declare-fun m!2069793 () Bool)

(assert (=> b!1686466 m!2069793))

(declare-fun m!2069795 () Bool)

(assert (=> b!1686466 m!2069795))

(declare-fun m!2069797 () Bool)

(assert (=> b!1686466 m!2069797))

(declare-fun m!2069799 () Bool)

(assert (=> b!1686475 m!2069799))

(declare-fun m!2069801 () Bool)

(assert (=> b!1686475 m!2069801))

(declare-fun m!2069803 () Bool)

(assert (=> b!1686472 m!2069803))

(declare-fun m!2069805 () Bool)

(assert (=> b!1686464 m!2069805))

(assert (=> b!1686464 m!2069805))

(declare-fun m!2069807 () Bool)

(assert (=> b!1686464 m!2069807))

(declare-fun m!2069809 () Bool)

(assert (=> b!1686464 m!2069809))

(declare-fun m!2069811 () Bool)

(assert (=> b!1686474 m!2069811))

(declare-fun m!2069813 () Bool)

(assert (=> b!1686474 m!2069813))

(declare-fun m!2069815 () Bool)

(assert (=> b!1686460 m!2069815))

(declare-fun m!2069817 () Bool)

(assert (=> b!1686465 m!2069817))

(declare-fun m!2069819 () Bool)

(assert (=> b!1686470 m!2069819))

(declare-fun m!2069821 () Bool)

(assert (=> b!1686470 m!2069821))

(declare-fun m!2069823 () Bool)

(assert (=> b!1686470 m!2069823))

(declare-fun m!2069825 () Bool)

(assert (=> b!1686470 m!2069825))

(declare-fun m!2069827 () Bool)

(assert (=> b!1686480 m!2069827))

(declare-fun m!2069829 () Bool)

(assert (=> b!1686480 m!2069829))

(assert (=> b!1686480 m!2069829))

(declare-fun m!2069831 () Bool)

(assert (=> b!1686480 m!2069831))

(declare-fun m!2069833 () Bool)

(assert (=> b!1686480 m!2069833))

(declare-fun m!2069835 () Bool)

(assert (=> b!1686480 m!2069835))

(declare-fun m!2069837 () Bool)

(assert (=> b!1686480 m!2069837))

(assert (=> b!1686480 m!2069833))

(assert (=> b!1686480 m!2069837))

(declare-fun m!2069839 () Bool)

(assert (=> b!1686483 m!2069839))

(declare-fun m!2069841 () Bool)

(assert (=> b!1686483 m!2069841))

(declare-fun m!2069843 () Bool)

(assert (=> b!1686483 m!2069843))

(declare-fun m!2069845 () Bool)

(assert (=> b!1686483 m!2069845))

(declare-fun m!2069847 () Bool)

(assert (=> b!1686483 m!2069847))

(assert (=> b!1686483 m!2069841))

(check-sat (not b!1686465) (not b!1686477) (not b!1686472) b_and!120533 (not b!1686480) (not b!1686466) (not b!1686467) (not b_next!46361) (not b!1686484) (not b!1686482) b_and!120535 (not b!1686479) (not b!1686476) (not b!1686471) (not b!1686458) (not b!1686474) (not b!1686469) b_and!120537 (not b!1686483) (not b!1686462) (not b!1686464) (not b!1686463) (not b!1686470) (not b!1686475) (not b!1686473) b_and!120539 (not b_next!46359) (not b_next!46363) (not b!1686460) (not b!1686478) (not b_next!46365) (not b!1686481))
(check-sat b_and!120537 b_and!120533 (not b_next!46361) (not b_next!46363) b_and!120535 (not b_next!46365) b_and!120539 (not b_next!46359))
(get-model)

(declare-fun d!513518 () Bool)

(assert (=> d!513518 (= (isEmpty!11563 rules!1846) ((_ is Nil!18487) rules!1846))))

(assert (=> b!1686471 d!513518))

(declare-fun d!513520 () Bool)

(declare-fun isEmpty!11568 (Option!3569) Bool)

(assert (=> d!513520 (= (isDefined!2918 (maxPrefixZipperSequence!755 thiss!17113 rules!1846 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457))))) (not (isEmpty!11568 (maxPrefixZipperSequence!755 thiss!17113 rules!1846 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))))

(declare-fun bs!399609 () Bool)

(assert (= bs!399609 d!513520))

(assert (=> bs!399609 m!2069729))

(declare-fun m!2069931 () Bool)

(assert (=> bs!399609 m!2069931))

(assert (=> b!1686482 d!513520))

(declare-fun d!513522 () Bool)

(declare-fun e!1079794 () Bool)

(assert (=> d!513522 e!1079794))

(declare-fun res!756199 () Bool)

(assert (=> d!513522 (=> (not res!756199) (not e!1079794))))

(declare-fun lt!640755 () Option!3569)

(declare-fun maxPrefixZipper!370 (LexerInterface!2884 List!18557 List!18555) Option!3568)

(assert (=> d!513522 (= res!756199 (= (isDefined!2918 lt!640755) (isDefined!2917 (maxPrefixZipper!370 thiss!17113 rules!1846 (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457))))))))))

(declare-fun e!1079792 () Option!3569)

(assert (=> d!513522 (= lt!640755 e!1079792)))

(declare-fun c!275450 () Bool)

(assert (=> d!513522 (= c!275450 (and ((_ is Cons!18487) rules!1846) ((_ is Nil!18487) (t!154810 rules!1846))))))

(declare-fun lt!640761 () Unit!31839)

(declare-fun lt!640759 () Unit!31839)

(assert (=> d!513522 (= lt!640761 lt!640759)))

(declare-fun lt!640756 () List!18555)

(declare-fun lt!640758 () List!18555)

(assert (=> d!513522 (isPrefix!1513 lt!640756 lt!640758)))

(declare-fun lemmaIsPrefixRefl!1030 (List!18555 List!18555) Unit!31839)

(assert (=> d!513522 (= lt!640759 (lemmaIsPrefixRefl!1030 lt!640756 lt!640758))))

(assert (=> d!513522 (= lt!640758 (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))

(assert (=> d!513522 (= lt!640756 (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))

(declare-fun rulesValidInductive!1052 (LexerInterface!2884 List!18557) Bool)

(assert (=> d!513522 (rulesValidInductive!1052 thiss!17113 rules!1846)))

(assert (=> d!513522 (= (maxPrefixZipperSequence!755 thiss!17113 rules!1846 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))) lt!640755)))

(declare-fun bm!107798 () Bool)

(declare-fun call!107803 () Option!3569)

(declare-fun maxPrefixOneRuleZipperSequence!362 (LexerInterface!2884 Rule!6310 BalanceConc!12260) Option!3569)

(assert (=> bm!107798 (= call!107803 (maxPrefixOneRuleZipperSequence!362 thiss!17113 (h!23888 rules!1846) (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))

(declare-fun b!1686625 () Bool)

(assert (=> b!1686625 (= e!1079792 call!107803)))

(declare-fun b!1686626 () Bool)

(declare-fun e!1079793 () Bool)

(declare-fun e!1079795 () Bool)

(assert (=> b!1686626 (= e!1079793 e!1079795)))

(declare-fun res!756203 () Bool)

(assert (=> b!1686626 (=> (not res!756203) (not e!1079795))))

(declare-fun get!5422 (Option!3569) tuple2!18238)

(assert (=> b!1686626 (= res!756203 (= (_1!10521 (get!5422 lt!640755)) (_1!10520 (get!5420 (maxPrefixZipper!370 thiss!17113 rules!1846 (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))))))

(declare-fun b!1686627 () Bool)

(declare-fun e!1079791 () Bool)

(assert (=> b!1686627 (= e!1079794 e!1079791)))

(declare-fun res!756200 () Bool)

(assert (=> b!1686627 (=> res!756200 e!1079791)))

(assert (=> b!1686627 (= res!756200 (not (isDefined!2918 lt!640755)))))

(declare-fun b!1686628 () Bool)

(declare-fun e!1079790 () Bool)

(assert (=> b!1686628 (= e!1079791 e!1079790)))

(declare-fun res!756202 () Bool)

(assert (=> b!1686628 (=> (not res!756202) (not e!1079790))))

(assert (=> b!1686628 (= res!756202 (= (_1!10521 (get!5422 lt!640755)) (_1!10520 (get!5420 (maxPrefix!1444 thiss!17113 rules!1846 (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))))))

(declare-fun b!1686629 () Bool)

(declare-fun lt!640757 () Option!3569)

(declare-fun lt!640760 () Option!3569)

(assert (=> b!1686629 (= e!1079792 (ite (and ((_ is None!3568) lt!640757) ((_ is None!3568) lt!640760)) None!3568 (ite ((_ is None!3568) lt!640760) lt!640757 (ite ((_ is None!3568) lt!640757) lt!640760 (ite (>= (size!14720 (_1!10521 (v!24889 lt!640757))) (size!14720 (_1!10521 (v!24889 lt!640760)))) lt!640757 lt!640760)))))))

(assert (=> b!1686629 (= lt!640757 call!107803)))

(assert (=> b!1686629 (= lt!640760 (maxPrefixZipperSequence!755 thiss!17113 (t!154810 rules!1846) (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))

(declare-fun b!1686630 () Bool)

(assert (=> b!1686630 (= e!1079795 (= (list!7432 (_2!10521 (get!5422 lt!640755))) (_2!10520 (get!5420 (maxPrefixZipper!370 thiss!17113 rules!1846 (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))))))

(declare-fun b!1686631 () Bool)

(assert (=> b!1686631 (= e!1079790 (= (list!7432 (_2!10521 (get!5422 lt!640755))) (_2!10520 (get!5420 (maxPrefix!1444 thiss!17113 rules!1846 (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))))))

(declare-fun b!1686632 () Bool)

(declare-fun res!756201 () Bool)

(assert (=> b!1686632 (=> (not res!756201) (not e!1079794))))

(assert (=> b!1686632 (= res!756201 e!1079793)))

(declare-fun res!756198 () Bool)

(assert (=> b!1686632 (=> res!756198 e!1079793)))

(assert (=> b!1686632 (= res!756198 (not (isDefined!2918 lt!640755)))))

(assert (= (and d!513522 c!275450) b!1686625))

(assert (= (and d!513522 (not c!275450)) b!1686629))

(assert (= (or b!1686625 b!1686629) bm!107798))

(assert (= (and d!513522 res!756199) b!1686632))

(assert (= (and b!1686632 (not res!756198)) b!1686626))

(assert (= (and b!1686626 res!756203) b!1686630))

(assert (= (and b!1686632 res!756201) b!1686627))

(assert (= (and b!1686627 (not res!756200)) b!1686628))

(assert (= (and b!1686628 res!756202) b!1686631))

(declare-fun m!2070079 () Bool)

(assert (=> b!1686632 m!2070079))

(declare-fun m!2070081 () Bool)

(assert (=> b!1686628 m!2070081))

(assert (=> b!1686628 m!2069727))

(declare-fun m!2070083 () Bool)

(assert (=> b!1686628 m!2070083))

(assert (=> b!1686628 m!2070083))

(declare-fun m!2070085 () Bool)

(assert (=> b!1686628 m!2070085))

(assert (=> b!1686628 m!2070085))

(declare-fun m!2070087 () Bool)

(assert (=> b!1686628 m!2070087))

(assert (=> b!1686629 m!2069727))

(declare-fun m!2070089 () Bool)

(assert (=> b!1686629 m!2070089))

(assert (=> b!1686630 m!2070083))

(declare-fun m!2070091 () Bool)

(assert (=> b!1686630 m!2070091))

(declare-fun m!2070093 () Bool)

(assert (=> b!1686630 m!2070093))

(assert (=> b!1686630 m!2070091))

(declare-fun m!2070095 () Bool)

(assert (=> b!1686630 m!2070095))

(assert (=> b!1686630 m!2070081))

(assert (=> b!1686630 m!2069727))

(assert (=> b!1686630 m!2070083))

(assert (=> b!1686626 m!2070081))

(assert (=> b!1686626 m!2069727))

(assert (=> b!1686626 m!2070083))

(assert (=> b!1686626 m!2070083))

(assert (=> b!1686626 m!2070091))

(assert (=> b!1686626 m!2070091))

(assert (=> b!1686626 m!2070095))

(assert (=> d!513522 m!2070079))

(assert (=> d!513522 m!2070091))

(declare-fun m!2070097 () Bool)

(assert (=> d!513522 m!2070097))

(assert (=> d!513522 m!2070083))

(assert (=> d!513522 m!2070091))

(assert (=> d!513522 m!2069727))

(assert (=> d!513522 m!2070083))

(declare-fun m!2070099 () Bool)

(assert (=> d!513522 m!2070099))

(declare-fun m!2070101 () Bool)

(assert (=> d!513522 m!2070101))

(declare-fun m!2070103 () Bool)

(assert (=> d!513522 m!2070103))

(assert (=> b!1686627 m!2070079))

(assert (=> b!1686631 m!2070093))

(assert (=> b!1686631 m!2070085))

(assert (=> b!1686631 m!2070087))

(assert (=> b!1686631 m!2070083))

(assert (=> b!1686631 m!2070085))

(assert (=> b!1686631 m!2070081))

(assert (=> b!1686631 m!2069727))

(assert (=> b!1686631 m!2070083))

(assert (=> bm!107798 m!2069727))

(declare-fun m!2070105 () Bool)

(assert (=> bm!107798 m!2070105))

(assert (=> b!1686482 d!513522))

(declare-fun d!513552 () Bool)

(declare-fun fromListB!1029 (List!18555) BalanceConc!12260)

(assert (=> d!513552 (= (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457))) (fromListB!1029 (originalCharacters!4069 (h!23889 tokens!457))))))

(declare-fun bs!399614 () Bool)

(assert (= bs!399614 d!513552))

(declare-fun m!2070107 () Bool)

(assert (=> bs!399614 m!2070107))

(assert (=> b!1686482 d!513552))

(declare-fun b!1686694 () Bool)

(declare-fun e!1079839 () Bool)

(assert (=> b!1686694 (= e!1079839 true)))

(declare-fun b!1686693 () Bool)

(declare-fun e!1079838 () Bool)

(assert (=> b!1686693 (= e!1079838 e!1079839)))

(declare-fun b!1686692 () Bool)

(declare-fun e!1079837 () Bool)

(assert (=> b!1686692 (= e!1079837 e!1079838)))

(declare-fun d!513554 () Bool)

(assert (=> d!513554 e!1079837))

(assert (= b!1686693 b!1686694))

(assert (= b!1686692 b!1686693))

(assert (= (and d!513554 ((_ is Cons!18487) rules!1846)) b!1686692))

(declare-fun lambda!68335 () Int)

(declare-fun order!11147 () Int)

(declare-fun order!11145 () Int)

(declare-fun dynLambda!8379 (Int Int) Int)

(declare-fun dynLambda!8380 (Int Int) Int)

(assert (=> b!1686694 (< (dynLambda!8379 order!11145 (toValue!4734 (transformation!3255 (h!23888 rules!1846)))) (dynLambda!8380 order!11147 lambda!68335))))

(declare-fun order!11149 () Int)

(declare-fun dynLambda!8381 (Int Int) Int)

(assert (=> b!1686694 (< (dynLambda!8381 order!11149 (toChars!4593 (transformation!3255 (h!23888 rules!1846)))) (dynLambda!8380 order!11147 lambda!68335))))

(assert (=> d!513554 true))

(declare-fun lt!640800 () Bool)

(declare-fun forall!4209 (List!18558 Int) Bool)

(assert (=> d!513554 (= lt!640800 (forall!4209 tokens!457 lambda!68335))))

(declare-fun e!1079829 () Bool)

(assert (=> d!513554 (= lt!640800 e!1079829)))

(declare-fun res!756241 () Bool)

(assert (=> d!513554 (=> res!756241 e!1079829)))

(assert (=> d!513554 (= res!756241 (not ((_ is Cons!18488) tokens!457)))))

(assert (=> d!513554 (not (isEmpty!11563 rules!1846))))

(assert (=> d!513554 (= (rulesProduceEachTokenIndividuallyList!1086 thiss!17113 rules!1846 tokens!457) lt!640800)))

(declare-fun b!1686682 () Bool)

(declare-fun e!1079830 () Bool)

(assert (=> b!1686682 (= e!1079829 e!1079830)))

(declare-fun res!756240 () Bool)

(assert (=> b!1686682 (=> (not res!756240) (not e!1079830))))

(assert (=> b!1686682 (= res!756240 (rulesProduceIndividualToken!1532 thiss!17113 rules!1846 (h!23889 tokens!457)))))

(declare-fun b!1686683 () Bool)

(assert (=> b!1686683 (= e!1079830 (rulesProduceEachTokenIndividuallyList!1086 thiss!17113 rules!1846 (t!154811 tokens!457)))))

(assert (= (and d!513554 (not res!756241)) b!1686682))

(assert (= (and b!1686682 res!756240) b!1686683))

(declare-fun m!2070203 () Bool)

(assert (=> d!513554 m!2070203))

(assert (=> d!513554 m!2069733))

(assert (=> b!1686682 m!2069785))

(declare-fun m!2070205 () Bool)

(assert (=> b!1686683 m!2070205))

(assert (=> b!1686472 d!513554))

(declare-fun d!513588 () Bool)

(declare-fun list!7434 (Conc!6159) List!18558)

(assert (=> d!513588 (= (list!7431 (_1!10519 lt!640653)) (list!7434 (c!275421 (_1!10519 lt!640653))))))

(declare-fun bs!399624 () Bool)

(assert (= bs!399624 d!513588))

(declare-fun m!2070207 () Bool)

(assert (=> bs!399624 m!2070207))

(assert (=> b!1686470 d!513588))

(declare-fun d!513590 () Bool)

(declare-fun e!1079862 () Bool)

(assert (=> d!513590 e!1079862))

(declare-fun res!756262 () Bool)

(assert (=> d!513590 (=> (not res!756262) (not e!1079862))))

(assert (=> d!513590 (= res!756262 (= (list!7431 (_1!10519 (lex!1368 thiss!17113 rules!1846 (print!1415 thiss!17113 (seqFromList!2248 (t!154811 tokens!457)))))) (t!154811 tokens!457)))))

(declare-fun lt!640943 () Unit!31839)

(declare-fun e!1079863 () Unit!31839)

(assert (=> d!513590 (= lt!640943 e!1079863)))

(declare-fun c!275461 () Bool)

(assert (=> d!513590 (= c!275461 (or ((_ is Nil!18488) (t!154811 tokens!457)) ((_ is Nil!18488) (t!154811 (t!154811 tokens!457)))))))

(assert (=> d!513590 (not (isEmpty!11563 rules!1846))))

(assert (=> d!513590 (= (theoremInvertabilityWhenTokenListSeparable!321 thiss!17113 rules!1846 (t!154811 tokens!457)) lt!640943)))

(declare-fun b!1686729 () Bool)

(declare-fun Unit!31844 () Unit!31839)

(assert (=> b!1686729 (= e!1079863 Unit!31844)))

(declare-fun b!1686730 () Bool)

(declare-fun Unit!31845 () Unit!31839)

(assert (=> b!1686730 (= e!1079863 Unit!31845)))

(declare-fun lt!640956 () BalanceConc!12260)

(assert (=> b!1686730 (= lt!640956 (print!1415 thiss!17113 (seqFromList!2248 (t!154811 tokens!457))))))

(declare-fun lt!640941 () BalanceConc!12260)

(assert (=> b!1686730 (= lt!640941 (print!1415 thiss!17113 (seqFromList!2248 (t!154811 (t!154811 tokens!457)))))))

(declare-fun lt!640942 () tuple2!18234)

(assert (=> b!1686730 (= lt!640942 (lex!1368 thiss!17113 rules!1846 lt!640941))))

(declare-fun lt!640960 () List!18555)

(assert (=> b!1686730 (= lt!640960 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))))))

(declare-fun lt!640964 () List!18555)

(assert (=> b!1686730 (= lt!640964 (list!7432 lt!640941))))

(declare-fun lt!640950 () Unit!31839)

(assert (=> b!1686730 (= lt!640950 (lemmaConcatTwoListThenFirstIsPrefix!1034 lt!640960 lt!640964))))

(assert (=> b!1686730 (isPrefix!1513 lt!640960 (++!5065 lt!640960 lt!640964))))

(declare-fun lt!640955 () Unit!31839)

(assert (=> b!1686730 (= lt!640955 lt!640950)))

(declare-fun lt!640953 () Unit!31839)

(assert (=> b!1686730 (= lt!640953 (theoremInvertabilityWhenTokenListSeparable!321 thiss!17113 rules!1846 (t!154811 (t!154811 tokens!457))))))

(declare-fun lt!640965 () Unit!31839)

(assert (=> b!1686730 (= lt!640965 (seqFromListBHdTlConstructive!324 (h!23889 (t!154811 (t!154811 tokens!457))) (t!154811 (t!154811 (t!154811 tokens!457))) (_1!10519 lt!640942)))))

(assert (=> b!1686730 (= (list!7431 (_1!10519 lt!640942)) (list!7431 (prepend!851 (seqFromList!2248 (t!154811 (t!154811 (t!154811 tokens!457)))) (h!23889 (t!154811 (t!154811 tokens!457))))))))

(declare-fun lt!640957 () Unit!31839)

(assert (=> b!1686730 (= lt!640957 lt!640965)))

(declare-fun lt!640951 () Option!3568)

(assert (=> b!1686730 (= lt!640951 (maxPrefix!1444 thiss!17113 rules!1846 (list!7432 lt!640956)))))

(assert (=> b!1686730 (= (print!1415 thiss!17113 (singletonSeq!1778 (h!23889 (t!154811 tokens!457)))) (printTailRec!935 thiss!17113 (singletonSeq!1778 (h!23889 (t!154811 tokens!457))) 0 (BalanceConc!12261 Empty!6158)))))

(declare-fun lt!640958 () Unit!31839)

(declare-fun Unit!31846 () Unit!31839)

(assert (=> b!1686730 (= lt!640958 Unit!31846)))

(declare-fun lt!640954 () Unit!31839)

(assert (=> b!1686730 (= lt!640954 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!446 thiss!17113 rules!1846 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) (list!7432 lt!640941)))))

(assert (=> b!1686730 (= (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) (originalCharacters!4069 (h!23889 (t!154811 tokens!457))))))

(declare-fun lt!640947 () Unit!31839)

(declare-fun Unit!31847 () Unit!31839)

(assert (=> b!1686730 (= lt!640947 Unit!31847)))

(assert (=> b!1686730 (= (list!7432 (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 (t!154811 tokens!457)))) 0))) (Cons!18485 (head!3780 (originalCharacters!4069 (h!23889 (t!154811 (t!154811 tokens!457))))) Nil!18485))))

(declare-fun lt!640963 () Unit!31839)

(declare-fun Unit!31848 () Unit!31839)

(assert (=> b!1686730 (= lt!640963 Unit!31848)))

(assert (=> b!1686730 (= (list!7432 (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 (t!154811 tokens!457)))) 0))) (Cons!18485 (head!3780 (list!7432 lt!640941)) Nil!18485))))

(declare-fun lt!640962 () Unit!31839)

(declare-fun Unit!31849 () Unit!31839)

(assert (=> b!1686730 (= lt!640962 Unit!31849)))

(assert (=> b!1686730 (= (list!7432 (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 (t!154811 tokens!457)))) 0))) (Cons!18485 (head!3779 lt!640941) Nil!18485))))

(declare-fun lt!640959 () Unit!31839)

(declare-fun Unit!31850 () Unit!31839)

(assert (=> b!1686730 (= lt!640959 Unit!31850)))

(assert (=> b!1686730 (isDefined!2917 (maxPrefix!1444 thiss!17113 rules!1846 (originalCharacters!4069 (h!23889 (t!154811 tokens!457)))))))

(declare-fun lt!640944 () Unit!31839)

(declare-fun Unit!31851 () Unit!31839)

(assert (=> b!1686730 (= lt!640944 Unit!31851)))

(assert (=> b!1686730 (isDefined!2917 (maxPrefix!1444 thiss!17113 rules!1846 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457))))))))

(declare-fun lt!640948 () Unit!31839)

(declare-fun Unit!31852 () Unit!31839)

(assert (=> b!1686730 (= lt!640948 Unit!31852)))

(declare-fun lt!640946 () Unit!31839)

(declare-fun Unit!31853 () Unit!31839)

(assert (=> b!1686730 (= lt!640946 Unit!31853)))

(assert (=> b!1686730 (= (_1!10520 (get!5420 (maxPrefix!1444 thiss!17113 rules!1846 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457))))))) (h!23889 (t!154811 tokens!457)))))

(declare-fun lt!640961 () Unit!31839)

(declare-fun Unit!31854 () Unit!31839)

(assert (=> b!1686730 (= lt!640961 Unit!31854)))

(declare-fun isEmpty!11569 (List!18555) Bool)

(assert (=> b!1686730 (isEmpty!11569 (_2!10520 (get!5420 (maxPrefix!1444 thiss!17113 rules!1846 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457))))))))))

(declare-fun lt!640966 () Unit!31839)

(declare-fun Unit!31855 () Unit!31839)

(assert (=> b!1686730 (= lt!640966 Unit!31855)))

(declare-fun matchR!2072 (Regex!4583 List!18555) Bool)

(assert (=> b!1686730 (matchR!2072 (regex!3255 (rule!5161 (h!23889 (t!154811 tokens!457)))) (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))))))

(declare-fun lt!640949 () Unit!31839)

(declare-fun Unit!31856 () Unit!31839)

(assert (=> b!1686730 (= lt!640949 Unit!31856)))

(assert (=> b!1686730 (= (rule!5161 (h!23889 (t!154811 tokens!457))) (rule!5161 (h!23889 (t!154811 tokens!457))))))

(declare-fun lt!640945 () Unit!31839)

(declare-fun Unit!31857 () Unit!31839)

(assert (=> b!1686730 (= lt!640945 Unit!31857)))

(declare-fun lt!640952 () Unit!31839)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!200 (LexerInterface!2884 List!18557 Token!6076 Rule!6310 List!18555) Unit!31839)

(assert (=> b!1686730 (= lt!640952 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!200 thiss!17113 rules!1846 (h!23889 (t!154811 tokens!457)) (rule!5161 (h!23889 (t!154811 tokens!457))) (list!7432 lt!640941)))))

(declare-fun b!1686731 () Bool)

(declare-fun isEmpty!11570 (BalanceConc!12260) Bool)

(assert (=> b!1686731 (= e!1079862 (isEmpty!11570 (_2!10519 (lex!1368 thiss!17113 rules!1846 (print!1415 thiss!17113 (seqFromList!2248 (t!154811 tokens!457)))))))))

(assert (= (and d!513590 c!275461) b!1686729))

(assert (= (and d!513590 (not c!275461)) b!1686730))

(assert (= (and d!513590 res!756262) b!1686731))

(assert (=> d!513590 m!2069733))

(declare-fun m!2070329 () Bool)

(assert (=> d!513590 m!2070329))

(declare-fun m!2070331 () Bool)

(assert (=> d!513590 m!2070331))

(assert (=> d!513590 m!2069737))

(declare-fun m!2070333 () Bool)

(assert (=> d!513590 m!2070333))

(assert (=> d!513590 m!2069737))

(assert (=> d!513590 m!2070329))

(assert (=> b!1686730 m!2069771))

(assert (=> b!1686730 m!2069837))

(declare-fun m!2070335 () Bool)

(assert (=> b!1686730 m!2070335))

(declare-fun m!2070337 () Bool)

(assert (=> b!1686730 m!2070337))

(declare-fun m!2070339 () Bool)

(assert (=> b!1686730 m!2070339))

(declare-fun m!2070341 () Bool)

(assert (=> b!1686730 m!2070341))

(declare-fun m!2070343 () Bool)

(assert (=> b!1686730 m!2070343))

(assert (=> b!1686730 m!2070335))

(declare-fun m!2070345 () Bool)

(assert (=> b!1686730 m!2070345))

(declare-fun m!2070347 () Bool)

(assert (=> b!1686730 m!2070347))

(declare-fun m!2070349 () Bool)

(assert (=> b!1686730 m!2070349))

(declare-fun m!2070351 () Bool)

(assert (=> b!1686730 m!2070351))

(declare-fun m!2070353 () Bool)

(assert (=> b!1686730 m!2070353))

(declare-fun m!2070355 () Bool)

(assert (=> b!1686730 m!2070355))

(declare-fun m!2070357 () Bool)

(assert (=> b!1686730 m!2070357))

(declare-fun m!2070359 () Bool)

(assert (=> b!1686730 m!2070359))

(assert (=> b!1686730 m!2070341))

(declare-fun m!2070361 () Bool)

(assert (=> b!1686730 m!2070361))

(assert (=> b!1686730 m!2070349))

(declare-fun m!2070363 () Bool)

(assert (=> b!1686730 m!2070363))

(assert (=> b!1686730 m!2070335))

(assert (=> b!1686730 m!2070357))

(declare-fun m!2070365 () Bool)

(assert (=> b!1686730 m!2070365))

(declare-fun m!2070367 () Bool)

(assert (=> b!1686730 m!2070367))

(declare-fun m!2070369 () Bool)

(assert (=> b!1686730 m!2070369))

(assert (=> b!1686730 m!2070357))

(declare-fun m!2070371 () Bool)

(assert (=> b!1686730 m!2070371))

(assert (=> b!1686730 m!2070363))

(declare-fun m!2070373 () Bool)

(assert (=> b!1686730 m!2070373))

(declare-fun m!2070375 () Bool)

(assert (=> b!1686730 m!2070375))

(declare-fun m!2070377 () Bool)

(assert (=> b!1686730 m!2070377))

(assert (=> b!1686730 m!2070335))

(declare-fun m!2070379 () Bool)

(assert (=> b!1686730 m!2070379))

(assert (=> b!1686730 m!2070345))

(declare-fun m!2070381 () Bool)

(assert (=> b!1686730 m!2070381))

(assert (=> b!1686730 m!2069837))

(assert (=> b!1686730 m!2070345))

(declare-fun m!2070383 () Bool)

(assert (=> b!1686730 m!2070383))

(assert (=> b!1686730 m!2070345))

(assert (=> b!1686730 m!2070351))

(assert (=> b!1686730 m!2069737))

(assert (=> b!1686730 m!2070375))

(declare-fun m!2070385 () Bool)

(assert (=> b!1686730 m!2070385))

(declare-fun m!2070387 () Bool)

(assert (=> b!1686730 m!2070387))

(declare-fun m!2070389 () Bool)

(assert (=> b!1686730 m!2070389))

(declare-fun m!2070391 () Bool)

(assert (=> b!1686730 m!2070391))

(declare-fun m!2070393 () Bool)

(assert (=> b!1686730 m!2070393))

(declare-fun m!2070395 () Bool)

(assert (=> b!1686730 m!2070395))

(assert (=> b!1686730 m!2070361))

(declare-fun m!2070397 () Bool)

(assert (=> b!1686730 m!2070397))

(assert (=> b!1686730 m!2070351))

(declare-fun m!2070399 () Bool)

(assert (=> b!1686730 m!2070399))

(assert (=> b!1686730 m!2069771))

(declare-fun m!2070401 () Bool)

(assert (=> b!1686730 m!2070401))

(assert (=> b!1686730 m!2070365))

(assert (=> b!1686730 m!2069737))

(assert (=> b!1686730 m!2070329))

(assert (=> b!1686730 m!2070367))

(assert (=> b!1686730 m!2070391))

(assert (=> b!1686731 m!2069737))

(assert (=> b!1686731 m!2069737))

(assert (=> b!1686731 m!2070329))

(assert (=> b!1686731 m!2070329))

(assert (=> b!1686731 m!2070331))

(declare-fun m!2070403 () Bool)

(assert (=> b!1686731 m!2070403))

(assert (=> b!1686470 d!513590))

(declare-fun b!1686742 () Bool)

(declare-fun e!1079871 () Bool)

(declare-fun tail!2518 (List!18555) List!18555)

(assert (=> b!1686742 (= e!1079871 (isPrefix!1513 (tail!2518 lt!640654) (tail!2518 lt!640645)))))

(declare-fun b!1686740 () Bool)

(declare-fun e!1079872 () Bool)

(assert (=> b!1686740 (= e!1079872 e!1079871)))

(declare-fun res!756272 () Bool)

(assert (=> b!1686740 (=> (not res!756272) (not e!1079871))))

(assert (=> b!1686740 (= res!756272 (not ((_ is Nil!18485) lt!640645)))))

(declare-fun d!513606 () Bool)

(declare-fun e!1079870 () Bool)

(assert (=> d!513606 e!1079870))

(declare-fun res!756273 () Bool)

(assert (=> d!513606 (=> res!756273 e!1079870)))

(declare-fun lt!640969 () Bool)

(assert (=> d!513606 (= res!756273 (not lt!640969))))

(assert (=> d!513606 (= lt!640969 e!1079872)))

(declare-fun res!756274 () Bool)

(assert (=> d!513606 (=> res!756274 e!1079872)))

(assert (=> d!513606 (= res!756274 ((_ is Nil!18485) lt!640654))))

(assert (=> d!513606 (= (isPrefix!1513 lt!640654 lt!640645) lt!640969)))

(declare-fun b!1686741 () Bool)

(declare-fun res!756271 () Bool)

(assert (=> b!1686741 (=> (not res!756271) (not e!1079871))))

(assert (=> b!1686741 (= res!756271 (= (head!3780 lt!640654) (head!3780 lt!640645)))))

(declare-fun b!1686743 () Bool)

(declare-fun size!14724 (List!18555) Int)

(assert (=> b!1686743 (= e!1079870 (>= (size!14724 lt!640645) (size!14724 lt!640654)))))

(assert (= (and d!513606 (not res!756274)) b!1686740))

(assert (= (and b!1686740 res!756272) b!1686741))

(assert (= (and b!1686741 res!756271) b!1686742))

(assert (= (and d!513606 (not res!756273)) b!1686743))

(declare-fun m!2070405 () Bool)

(assert (=> b!1686742 m!2070405))

(declare-fun m!2070407 () Bool)

(assert (=> b!1686742 m!2070407))

(assert (=> b!1686742 m!2070405))

(assert (=> b!1686742 m!2070407))

(declare-fun m!2070409 () Bool)

(assert (=> b!1686742 m!2070409))

(declare-fun m!2070411 () Bool)

(assert (=> b!1686741 m!2070411))

(declare-fun m!2070413 () Bool)

(assert (=> b!1686741 m!2070413))

(declare-fun m!2070415 () Bool)

(assert (=> b!1686743 m!2070415))

(declare-fun m!2070417 () Bool)

(assert (=> b!1686743 m!2070417))

(assert (=> b!1686470 d!513606))

(declare-fun d!513608 () Bool)

(assert (=> d!513608 (isPrefix!1513 lt!640654 (++!5065 lt!640654 lt!640662))))

(declare-fun lt!640972 () Unit!31839)

(declare-fun choose!10199 (List!18555 List!18555) Unit!31839)

(assert (=> d!513608 (= lt!640972 (choose!10199 lt!640654 lt!640662))))

(assert (=> d!513608 (= (lemmaConcatTwoListThenFirstIsPrefix!1034 lt!640654 lt!640662) lt!640972)))

(declare-fun bs!399629 () Bool)

(assert (= bs!399629 d!513608))

(assert (=> bs!399629 m!2069749))

(assert (=> bs!399629 m!2069749))

(declare-fun m!2070419 () Bool)

(assert (=> bs!399629 m!2070419))

(declare-fun m!2070421 () Bool)

(assert (=> bs!399629 m!2070421))

(assert (=> b!1686470 d!513608))

(declare-fun d!513610 () Bool)

(declare-fun res!756277 () Bool)

(declare-fun e!1079875 () Bool)

(assert (=> d!513610 (=> (not res!756277) (not e!1079875))))

(declare-fun rulesValid!1205 (LexerInterface!2884 List!18557) Bool)

(assert (=> d!513610 (= res!756277 (rulesValid!1205 thiss!17113 rules!1846))))

(assert (=> d!513610 (= (rulesInvariant!2553 thiss!17113 rules!1846) e!1079875)))

(declare-fun b!1686746 () Bool)

(declare-datatypes ((List!18559 0))(
  ( (Nil!18489) (Cons!18489 (h!23890 String!21057) (t!154854 List!18559)) )
))
(declare-fun noDuplicateTag!1205 (LexerInterface!2884 List!18557 List!18559) Bool)

(assert (=> b!1686746 (= e!1079875 (noDuplicateTag!1205 thiss!17113 rules!1846 Nil!18489))))

(assert (= (and d!513610 res!756277) b!1686746))

(declare-fun m!2070423 () Bool)

(assert (=> d!513610 m!2070423))

(declare-fun m!2070425 () Bool)

(assert (=> b!1686746 m!2070425))

(assert (=> b!1686481 d!513610))

(declare-fun d!513612 () Bool)

(declare-fun c!275467 () Bool)

(assert (=> d!513612 (= c!275467 ((_ is IntegerValue!10035) (value!102440 (h!23889 tokens!457))))))

(declare-fun e!1079882 () Bool)

(assert (=> d!513612 (= (inv!21 (value!102440 (h!23889 tokens!457))) e!1079882)))

(declare-fun b!1686757 () Bool)

(declare-fun e!1079884 () Bool)

(declare-fun inv!17 (TokenValue!3345) Bool)

(assert (=> b!1686757 (= e!1079884 (inv!17 (value!102440 (h!23889 tokens!457))))))

(declare-fun b!1686758 () Bool)

(assert (=> b!1686758 (= e!1079882 e!1079884)))

(declare-fun c!275466 () Bool)

(assert (=> b!1686758 (= c!275466 ((_ is IntegerValue!10036) (value!102440 (h!23889 tokens!457))))))

(declare-fun b!1686759 () Bool)

(declare-fun inv!16 (TokenValue!3345) Bool)

(assert (=> b!1686759 (= e!1079882 (inv!16 (value!102440 (h!23889 tokens!457))))))

(declare-fun b!1686760 () Bool)

(declare-fun res!756280 () Bool)

(declare-fun e!1079883 () Bool)

(assert (=> b!1686760 (=> res!756280 e!1079883)))

(assert (=> b!1686760 (= res!756280 (not ((_ is IntegerValue!10037) (value!102440 (h!23889 tokens!457)))))))

(assert (=> b!1686760 (= e!1079884 e!1079883)))

(declare-fun b!1686761 () Bool)

(declare-fun inv!15 (TokenValue!3345) Bool)

(assert (=> b!1686761 (= e!1079883 (inv!15 (value!102440 (h!23889 tokens!457))))))

(assert (= (and d!513612 c!275467) b!1686759))

(assert (= (and d!513612 (not c!275467)) b!1686758))

(assert (= (and b!1686758 c!275466) b!1686757))

(assert (= (and b!1686758 (not c!275466)) b!1686760))

(assert (= (and b!1686760 (not res!756280)) b!1686761))

(declare-fun m!2070427 () Bool)

(assert (=> b!1686757 m!2070427))

(declare-fun m!2070429 () Bool)

(assert (=> b!1686759 m!2070429))

(declare-fun m!2070431 () Bool)

(assert (=> b!1686761 m!2070431))

(assert (=> b!1686460 d!513612))

(declare-fun d!513614 () Bool)

(declare-fun e!1079887 () Bool)

(assert (=> d!513614 e!1079887))

(declare-fun res!756283 () Bool)

(assert (=> d!513614 (=> (not res!756283) (not e!1079887))))

(declare-fun isBalanced!1928 (Conc!6159) Bool)

(declare-fun prepend!852 (Conc!6159 Token!6076) Conc!6159)

(assert (=> d!513614 (= res!756283 (isBalanced!1928 (prepend!852 (c!275421 (seqFromList!2248 (t!154811 (t!154811 tokens!457)))) (h!23889 (t!154811 tokens!457)))))))

(declare-fun lt!640975 () BalanceConc!12262)

(assert (=> d!513614 (= lt!640975 (BalanceConc!12263 (prepend!852 (c!275421 (seqFromList!2248 (t!154811 (t!154811 tokens!457)))) (h!23889 (t!154811 tokens!457)))))))

(assert (=> d!513614 (= (prepend!851 (seqFromList!2248 (t!154811 (t!154811 tokens!457))) (h!23889 (t!154811 tokens!457))) lt!640975)))

(declare-fun b!1686764 () Bool)

(assert (=> b!1686764 (= e!1079887 (= (list!7431 lt!640975) (Cons!18488 (h!23889 (t!154811 tokens!457)) (list!7431 (seqFromList!2248 (t!154811 (t!154811 tokens!457)))))))))

(assert (= (and d!513614 res!756283) b!1686764))

(declare-fun m!2070433 () Bool)

(assert (=> d!513614 m!2070433))

(assert (=> d!513614 m!2070433))

(declare-fun m!2070435 () Bool)

(assert (=> d!513614 m!2070435))

(declare-fun m!2070437 () Bool)

(assert (=> b!1686764 m!2070437))

(assert (=> b!1686764 m!2069771))

(declare-fun m!2070439 () Bool)

(assert (=> b!1686764 m!2070439))

(assert (=> b!1686463 d!513614))

(declare-fun d!513616 () Bool)

(assert (=> d!513616 (= (list!7431 (prepend!851 (seqFromList!2248 (t!154811 (t!154811 tokens!457))) (h!23889 (t!154811 tokens!457)))) (list!7434 (c!275421 (prepend!851 (seqFromList!2248 (t!154811 (t!154811 tokens!457))) (h!23889 (t!154811 tokens!457))))))))

(declare-fun bs!399630 () Bool)

(assert (= bs!399630 d!513616))

(declare-fun m!2070441 () Bool)

(assert (=> bs!399630 m!2070441))

(assert (=> b!1686463 d!513616))

(declare-fun d!513618 () Bool)

(assert (=> d!513618 (= (list!7431 lt!640664) (list!7434 (c!275421 lt!640664)))))

(declare-fun bs!399631 () Bool)

(assert (= bs!399631 d!513618))

(declare-fun m!2070443 () Bool)

(assert (=> bs!399631 m!2070443))

(assert (=> b!1686463 d!513618))

(declare-fun d!513620 () Bool)

(declare-fun fromListB!1031 (List!18558) BalanceConc!12262)

(assert (=> d!513620 (= (seqFromList!2248 (t!154811 (t!154811 tokens!457))) (fromListB!1031 (t!154811 (t!154811 tokens!457))))))

(declare-fun bs!399632 () Bool)

(assert (= bs!399632 d!513620))

(declare-fun m!2070445 () Bool)

(assert (=> bs!399632 m!2070445))

(assert (=> b!1686463 d!513620))

(declare-fun d!513622 () Bool)

(assert (=> d!513622 (= (list!7431 (_1!10519 lt!640653)) (list!7431 (prepend!851 (seqFromList!2248 (t!154811 (t!154811 tokens!457))) (h!23889 (t!154811 tokens!457)))))))

(declare-fun lt!640978 () Unit!31839)

(declare-fun choose!10200 (Token!6076 List!18558 BalanceConc!12262) Unit!31839)

(assert (=> d!513622 (= lt!640978 (choose!10200 (h!23889 (t!154811 tokens!457)) (t!154811 (t!154811 tokens!457)) (_1!10519 lt!640653)))))

(declare-fun $colon$colon!407 (List!18558 Token!6076) List!18558)

(assert (=> d!513622 (= (list!7431 (_1!10519 lt!640653)) (list!7431 (seqFromList!2248 ($colon$colon!407 (t!154811 (t!154811 tokens!457)) (h!23889 (t!154811 tokens!457))))))))

(assert (=> d!513622 (= (seqFromListBHdTlConstructive!324 (h!23889 (t!154811 tokens!457)) (t!154811 (t!154811 tokens!457)) (_1!10519 lt!640653)) lt!640978)))

(declare-fun bs!399633 () Bool)

(assert (= bs!399633 d!513622))

(declare-fun m!2070447 () Bool)

(assert (=> bs!399633 m!2070447))

(assert (=> bs!399633 m!2069771))

(assert (=> bs!399633 m!2069773))

(assert (=> bs!399633 m!2069771))

(declare-fun m!2070449 () Bool)

(assert (=> bs!399633 m!2070449))

(assert (=> bs!399633 m!2070447))

(declare-fun m!2070451 () Bool)

(assert (=> bs!399633 m!2070451))

(assert (=> bs!399633 m!2070451))

(declare-fun m!2070453 () Bool)

(assert (=> bs!399633 m!2070453))

(assert (=> bs!399633 m!2069819))

(assert (=> bs!399633 m!2069773))

(assert (=> bs!399633 m!2069775))

(assert (=> b!1686463 d!513622))

(declare-fun d!513624 () Bool)

(assert (=> d!513624 (= (inv!23846 (tag!3545 (h!23888 rules!1846))) (= (mod (str.len (value!102439 (tag!3545 (h!23888 rules!1846)))) 2) 0))))

(assert (=> b!1686474 d!513624))

(declare-fun d!513626 () Bool)

(declare-fun res!756286 () Bool)

(declare-fun e!1079890 () Bool)

(assert (=> d!513626 (=> (not res!756286) (not e!1079890))))

(declare-fun semiInverseModEq!1278 (Int Int) Bool)

(assert (=> d!513626 (= res!756286 (semiInverseModEq!1278 (toChars!4593 (transformation!3255 (h!23888 rules!1846))) (toValue!4734 (transformation!3255 (h!23888 rules!1846)))))))

(assert (=> d!513626 (= (inv!23849 (transformation!3255 (h!23888 rules!1846))) e!1079890)))

(declare-fun b!1686767 () Bool)

(declare-fun equivClasses!1219 (Int Int) Bool)

(assert (=> b!1686767 (= e!1079890 (equivClasses!1219 (toChars!4593 (transformation!3255 (h!23888 rules!1846))) (toValue!4734 (transformation!3255 (h!23888 rules!1846)))))))

(assert (= (and d!513626 res!756286) b!1686767))

(declare-fun m!2070455 () Bool)

(assert (=> d!513626 m!2070455))

(declare-fun m!2070457 () Bool)

(assert (=> b!1686767 m!2070457))

(assert (=> b!1686474 d!513626))

(declare-fun d!513628 () Bool)

(declare-fun c!275471 () Bool)

(assert (=> d!513628 (= c!275471 (isEmpty!11569 (++!5065 lt!640654 lt!640648)))))

(declare-fun e!1079893 () Bool)

(assert (=> d!513628 (= (prefixMatch!496 lt!640647 (++!5065 lt!640654 lt!640648)) e!1079893)))

(declare-fun b!1686772 () Bool)

(declare-fun lostCause!488 (Regex!4583) Bool)

(assert (=> b!1686772 (= e!1079893 (not (lostCause!488 lt!640647)))))

(declare-fun b!1686773 () Bool)

(declare-fun derivativeStep!1140 (Regex!4583 C!9340) Regex!4583)

(assert (=> b!1686773 (= e!1079893 (prefixMatch!496 (derivativeStep!1140 lt!640647 (head!3780 (++!5065 lt!640654 lt!640648))) (tail!2518 (++!5065 lt!640654 lt!640648))))))

(assert (= (and d!513628 c!275471) b!1686772))

(assert (= (and d!513628 (not c!275471)) b!1686773))

(assert (=> d!513628 m!2069805))

(declare-fun m!2070459 () Bool)

(assert (=> d!513628 m!2070459))

(declare-fun m!2070461 () Bool)

(assert (=> b!1686772 m!2070461))

(assert (=> b!1686773 m!2069805))

(declare-fun m!2070463 () Bool)

(assert (=> b!1686773 m!2070463))

(assert (=> b!1686773 m!2070463))

(declare-fun m!2070465 () Bool)

(assert (=> b!1686773 m!2070465))

(assert (=> b!1686773 m!2069805))

(declare-fun m!2070467 () Bool)

(assert (=> b!1686773 m!2070467))

(assert (=> b!1686773 m!2070465))

(assert (=> b!1686773 m!2070467))

(declare-fun m!2070469 () Bool)

(assert (=> b!1686773 m!2070469))

(assert (=> b!1686464 d!513628))

(declare-fun b!1686790 () Bool)

(declare-fun res!756296 () Bool)

(declare-fun e!1079900 () Bool)

(assert (=> b!1686790 (=> (not res!756296) (not e!1079900))))

(declare-fun lt!641003 () List!18555)

(assert (=> b!1686790 (= res!756296 (= (size!14724 lt!641003) (+ (size!14724 lt!640654) (size!14724 lt!640648))))))

(declare-fun d!513630 () Bool)

(assert (=> d!513630 e!1079900))

(declare-fun res!756295 () Bool)

(assert (=> d!513630 (=> (not res!756295) (not e!1079900))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2605 (List!18555) (InoxSet C!9340))

(assert (=> d!513630 (= res!756295 (= (content!2605 lt!641003) ((_ map or) (content!2605 lt!640654) (content!2605 lt!640648))))))

(declare-fun e!1079901 () List!18555)

(assert (=> d!513630 (= lt!641003 e!1079901)))

(declare-fun c!275474 () Bool)

(assert (=> d!513630 (= c!275474 ((_ is Nil!18485) lt!640654))))

(assert (=> d!513630 (= (++!5065 lt!640654 lt!640648) lt!641003)))

(declare-fun b!1686789 () Bool)

(assert (=> b!1686789 (= e!1079901 (Cons!18485 (h!23886 lt!640654) (++!5065 (t!154808 lt!640654) lt!640648)))))

(declare-fun b!1686791 () Bool)

(assert (=> b!1686791 (= e!1079900 (or (not (= lt!640648 Nil!18485)) (= lt!641003 lt!640654)))))

(declare-fun b!1686788 () Bool)

(assert (=> b!1686788 (= e!1079901 lt!640648)))

(assert (= (and d!513630 c!275474) b!1686788))

(assert (= (and d!513630 (not c!275474)) b!1686789))

(assert (= (and d!513630 res!756295) b!1686790))

(assert (= (and b!1686790 res!756296) b!1686791))

(declare-fun m!2070471 () Bool)

(assert (=> b!1686790 m!2070471))

(assert (=> b!1686790 m!2070417))

(declare-fun m!2070473 () Bool)

(assert (=> b!1686790 m!2070473))

(declare-fun m!2070475 () Bool)

(assert (=> d!513630 m!2070475))

(declare-fun m!2070477 () Bool)

(assert (=> d!513630 m!2070477))

(declare-fun m!2070479 () Bool)

(assert (=> d!513630 m!2070479))

(declare-fun m!2070481 () Bool)

(assert (=> b!1686789 m!2070481))

(assert (=> b!1686464 d!513630))

(declare-fun d!513632 () Bool)

(declare-fun list!7436 (Conc!6158) List!18555)

(assert (=> d!513632 (= (list!7432 lt!640642) (list!7436 (c!275419 lt!640642)))))

(declare-fun bs!399634 () Bool)

(assert (= bs!399634 d!513632))

(declare-fun m!2070483 () Bool)

(assert (=> bs!399634 m!2070483))

(assert (=> b!1686464 d!513632))

(declare-fun d!513634 () Bool)

(declare-fun e!1079923 () Bool)

(assert (=> d!513634 e!1079923))

(declare-fun res!756335 () Bool)

(assert (=> d!513634 (=> res!756335 e!1079923)))

(declare-fun lt!641052 () Option!3568)

(declare-fun isEmpty!11573 (Option!3568) Bool)

(assert (=> d!513634 (= res!756335 (isEmpty!11573 lt!641052))))

(declare-fun e!1079922 () Option!3568)

(assert (=> d!513634 (= lt!641052 e!1079922)))

(declare-fun c!275483 () Bool)

(assert (=> d!513634 (= c!275483 (and ((_ is Cons!18487) rules!1846) ((_ is Nil!18487) (t!154810 rules!1846))))))

(declare-fun lt!641051 () Unit!31839)

(declare-fun lt!641050 () Unit!31839)

(assert (=> d!513634 (= lt!641051 lt!641050)))

(assert (=> d!513634 (isPrefix!1513 (originalCharacters!4069 (h!23889 tokens!457)) (originalCharacters!4069 (h!23889 tokens!457)))))

(assert (=> d!513634 (= lt!641050 (lemmaIsPrefixRefl!1030 (originalCharacters!4069 (h!23889 tokens!457)) (originalCharacters!4069 (h!23889 tokens!457))))))

(assert (=> d!513634 (rulesValidInductive!1052 thiss!17113 rules!1846)))

(assert (=> d!513634 (= (maxPrefix!1444 thiss!17113 rules!1846 (originalCharacters!4069 (h!23889 tokens!457))) lt!641052)))

(declare-fun b!1686834 () Bool)

(declare-fun e!1079921 () Bool)

(assert (=> b!1686834 (= e!1079923 e!1079921)))

(declare-fun res!756336 () Bool)

(assert (=> b!1686834 (=> (not res!756336) (not e!1079921))))

(assert (=> b!1686834 (= res!756336 (isDefined!2917 lt!641052))))

(declare-fun b!1686835 () Bool)

(declare-fun call!107806 () Option!3568)

(assert (=> b!1686835 (= e!1079922 call!107806)))

(declare-fun b!1686836 () Bool)

(declare-fun contains!3250 (List!18557 Rule!6310) Bool)

(assert (=> b!1686836 (= e!1079921 (contains!3250 rules!1846 (rule!5161 (_1!10520 (get!5420 lt!641052)))))))

(declare-fun b!1686837 () Bool)

(declare-fun res!756332 () Bool)

(assert (=> b!1686837 (=> (not res!756332) (not e!1079921))))

(assert (=> b!1686837 (= res!756332 (< (size!14724 (_2!10520 (get!5420 lt!641052))) (size!14724 (originalCharacters!4069 (h!23889 tokens!457)))))))

(declare-fun b!1686838 () Bool)

(declare-fun res!756331 () Bool)

(assert (=> b!1686838 (=> (not res!756331) (not e!1079921))))

(declare-fun apply!5039 (TokenValueInjection!6350 BalanceConc!12260) TokenValue!3345)

(assert (=> b!1686838 (= res!756331 (= (value!102440 (_1!10520 (get!5420 lt!641052))) (apply!5039 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641052)))) (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!641052)))))))))

(declare-fun b!1686839 () Bool)

(declare-fun res!756333 () Bool)

(assert (=> b!1686839 (=> (not res!756333) (not e!1079921))))

(assert (=> b!1686839 (= res!756333 (matchR!2072 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641052)))) (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641052))))))))

(declare-fun bm!107801 () Bool)

(declare-fun maxPrefixOneRule!845 (LexerInterface!2884 Rule!6310 List!18555) Option!3568)

(assert (=> bm!107801 (= call!107806 (maxPrefixOneRule!845 thiss!17113 (h!23888 rules!1846) (originalCharacters!4069 (h!23889 tokens!457))))))

(declare-fun b!1686840 () Bool)

(declare-fun res!756334 () Bool)

(assert (=> b!1686840 (=> (not res!756334) (not e!1079921))))

(assert (=> b!1686840 (= res!756334 (= (++!5065 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641052)))) (_2!10520 (get!5420 lt!641052))) (originalCharacters!4069 (h!23889 tokens!457))))))

(declare-fun b!1686841 () Bool)

(declare-fun res!756337 () Bool)

(assert (=> b!1686841 (=> (not res!756337) (not e!1079921))))

(assert (=> b!1686841 (= res!756337 (= (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641052)))) (originalCharacters!4069 (_1!10520 (get!5420 lt!641052)))))))

(declare-fun b!1686842 () Bool)

(declare-fun lt!641049 () Option!3568)

(declare-fun lt!641053 () Option!3568)

(assert (=> b!1686842 (= e!1079922 (ite (and ((_ is None!3567) lt!641049) ((_ is None!3567) lt!641053)) None!3567 (ite ((_ is None!3567) lt!641053) lt!641049 (ite ((_ is None!3567) lt!641049) lt!641053 (ite (>= (size!14720 (_1!10520 (v!24888 lt!641049))) (size!14720 (_1!10520 (v!24888 lt!641053)))) lt!641049 lt!641053)))))))

(assert (=> b!1686842 (= lt!641049 call!107806)))

(assert (=> b!1686842 (= lt!641053 (maxPrefix!1444 thiss!17113 (t!154810 rules!1846) (originalCharacters!4069 (h!23889 tokens!457))))))

(assert (= (and d!513634 c!275483) b!1686835))

(assert (= (and d!513634 (not c!275483)) b!1686842))

(assert (= (or b!1686835 b!1686842) bm!107801))

(assert (= (and d!513634 (not res!756335)) b!1686834))

(assert (= (and b!1686834 res!756336) b!1686841))

(assert (= (and b!1686841 res!756337) b!1686837))

(assert (= (and b!1686837 res!756332) b!1686840))

(assert (= (and b!1686840 res!756334) b!1686838))

(assert (= (and b!1686838 res!756331) b!1686839))

(assert (= (and b!1686839 res!756333) b!1686836))

(declare-fun m!2070557 () Bool)

(assert (=> b!1686839 m!2070557))

(declare-fun m!2070559 () Bool)

(assert (=> b!1686839 m!2070559))

(assert (=> b!1686839 m!2070559))

(declare-fun m!2070561 () Bool)

(assert (=> b!1686839 m!2070561))

(assert (=> b!1686839 m!2070561))

(declare-fun m!2070563 () Bool)

(assert (=> b!1686839 m!2070563))

(assert (=> b!1686841 m!2070557))

(assert (=> b!1686841 m!2070559))

(assert (=> b!1686841 m!2070559))

(assert (=> b!1686841 m!2070561))

(assert (=> b!1686840 m!2070557))

(assert (=> b!1686840 m!2070559))

(assert (=> b!1686840 m!2070559))

(assert (=> b!1686840 m!2070561))

(assert (=> b!1686840 m!2070561))

(declare-fun m!2070565 () Bool)

(assert (=> b!1686840 m!2070565))

(declare-fun m!2070567 () Bool)

(assert (=> bm!107801 m!2070567))

(declare-fun m!2070569 () Bool)

(assert (=> b!1686834 m!2070569))

(assert (=> b!1686836 m!2070557))

(declare-fun m!2070571 () Bool)

(assert (=> b!1686836 m!2070571))

(assert (=> b!1686838 m!2070557))

(declare-fun m!2070573 () Bool)

(assert (=> b!1686838 m!2070573))

(assert (=> b!1686838 m!2070573))

(declare-fun m!2070575 () Bool)

(assert (=> b!1686838 m!2070575))

(assert (=> b!1686837 m!2070557))

(declare-fun m!2070577 () Bool)

(assert (=> b!1686837 m!2070577))

(declare-fun m!2070579 () Bool)

(assert (=> b!1686837 m!2070579))

(declare-fun m!2070581 () Bool)

(assert (=> b!1686842 m!2070581))

(declare-fun m!2070583 () Bool)

(assert (=> d!513634 m!2070583))

(declare-fun m!2070585 () Bool)

(assert (=> d!513634 m!2070585))

(declare-fun m!2070587 () Bool)

(assert (=> d!513634 m!2070587))

(assert (=> d!513634 m!2070101))

(assert (=> b!1686483 d!513634))

(declare-fun d!513644 () Bool)

(assert (=> d!513644 (= (isDefined!2917 (maxPrefix!1444 thiss!17113 rules!1846 (originalCharacters!4069 (h!23889 tokens!457)))) (not (isEmpty!11573 (maxPrefix!1444 thiss!17113 rules!1846 (originalCharacters!4069 (h!23889 tokens!457))))))))

(declare-fun bs!399635 () Bool)

(assert (= bs!399635 d!513644))

(assert (=> bs!399635 m!2069841))

(declare-fun m!2070589 () Bool)

(assert (=> bs!399635 m!2070589))

(assert (=> b!1686483 d!513644))

(declare-fun d!513646 () Bool)

(assert (=> d!513646 (= (isDefined!2917 lt!640661) (not (isEmpty!11573 lt!640661)))))

(declare-fun bs!399636 () Bool)

(assert (= bs!399636 d!513646))

(declare-fun m!2070591 () Bool)

(assert (=> bs!399636 m!2070591))

(assert (=> b!1686483 d!513646))

(declare-fun d!513648 () Bool)

(declare-fun e!1079926 () Bool)

(assert (=> d!513648 e!1079926))

(declare-fun res!756342 () Bool)

(assert (=> d!513648 (=> res!756342 e!1079926)))

(declare-fun lt!641057 () Option!3568)

(assert (=> d!513648 (= res!756342 (isEmpty!11573 lt!641057))))

(declare-fun e!1079925 () Option!3568)

(assert (=> d!513648 (= lt!641057 e!1079925)))

(declare-fun c!275484 () Bool)

(assert (=> d!513648 (= c!275484 (and ((_ is Cons!18487) rules!1846) ((_ is Nil!18487) (t!154810 rules!1846))))))

(declare-fun lt!641056 () Unit!31839)

(declare-fun lt!641055 () Unit!31839)

(assert (=> d!513648 (= lt!641056 lt!641055)))

(assert (=> d!513648 (isPrefix!1513 lt!640654 lt!640654)))

(assert (=> d!513648 (= lt!641055 (lemmaIsPrefixRefl!1030 lt!640654 lt!640654))))

(assert (=> d!513648 (rulesValidInductive!1052 thiss!17113 rules!1846)))

(assert (=> d!513648 (= (maxPrefix!1444 thiss!17113 rules!1846 lt!640654) lt!641057)))

(declare-fun b!1686843 () Bool)

(declare-fun e!1079924 () Bool)

(assert (=> b!1686843 (= e!1079926 e!1079924)))

(declare-fun res!756343 () Bool)

(assert (=> b!1686843 (=> (not res!756343) (not e!1079924))))

(assert (=> b!1686843 (= res!756343 (isDefined!2917 lt!641057))))

(declare-fun b!1686844 () Bool)

(declare-fun call!107807 () Option!3568)

(assert (=> b!1686844 (= e!1079925 call!107807)))

(declare-fun b!1686845 () Bool)

(assert (=> b!1686845 (= e!1079924 (contains!3250 rules!1846 (rule!5161 (_1!10520 (get!5420 lt!641057)))))))

(declare-fun b!1686846 () Bool)

(declare-fun res!756339 () Bool)

(assert (=> b!1686846 (=> (not res!756339) (not e!1079924))))

(assert (=> b!1686846 (= res!756339 (< (size!14724 (_2!10520 (get!5420 lt!641057))) (size!14724 lt!640654)))))

(declare-fun b!1686847 () Bool)

(declare-fun res!756338 () Bool)

(assert (=> b!1686847 (=> (not res!756338) (not e!1079924))))

(assert (=> b!1686847 (= res!756338 (= (value!102440 (_1!10520 (get!5420 lt!641057))) (apply!5039 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641057)))) (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!641057)))))))))

(declare-fun b!1686848 () Bool)

(declare-fun res!756340 () Bool)

(assert (=> b!1686848 (=> (not res!756340) (not e!1079924))))

(assert (=> b!1686848 (= res!756340 (matchR!2072 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641057)))) (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641057))))))))

(declare-fun bm!107802 () Bool)

(assert (=> bm!107802 (= call!107807 (maxPrefixOneRule!845 thiss!17113 (h!23888 rules!1846) lt!640654))))

(declare-fun b!1686849 () Bool)

(declare-fun res!756341 () Bool)

(assert (=> b!1686849 (=> (not res!756341) (not e!1079924))))

(assert (=> b!1686849 (= res!756341 (= (++!5065 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641057)))) (_2!10520 (get!5420 lt!641057))) lt!640654))))

(declare-fun b!1686850 () Bool)

(declare-fun res!756344 () Bool)

(assert (=> b!1686850 (=> (not res!756344) (not e!1079924))))

(assert (=> b!1686850 (= res!756344 (= (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641057)))) (originalCharacters!4069 (_1!10520 (get!5420 lt!641057)))))))

(declare-fun b!1686851 () Bool)

(declare-fun lt!641054 () Option!3568)

(declare-fun lt!641058 () Option!3568)

(assert (=> b!1686851 (= e!1079925 (ite (and ((_ is None!3567) lt!641054) ((_ is None!3567) lt!641058)) None!3567 (ite ((_ is None!3567) lt!641058) lt!641054 (ite ((_ is None!3567) lt!641054) lt!641058 (ite (>= (size!14720 (_1!10520 (v!24888 lt!641054))) (size!14720 (_1!10520 (v!24888 lt!641058)))) lt!641054 lt!641058)))))))

(assert (=> b!1686851 (= lt!641054 call!107807)))

(assert (=> b!1686851 (= lt!641058 (maxPrefix!1444 thiss!17113 (t!154810 rules!1846) lt!640654))))

(assert (= (and d!513648 c!275484) b!1686844))

(assert (= (and d!513648 (not c!275484)) b!1686851))

(assert (= (or b!1686844 b!1686851) bm!107802))

(assert (= (and d!513648 (not res!756342)) b!1686843))

(assert (= (and b!1686843 res!756343) b!1686850))

(assert (= (and b!1686850 res!756344) b!1686846))

(assert (= (and b!1686846 res!756339) b!1686849))

(assert (= (and b!1686849 res!756341) b!1686847))

(assert (= (and b!1686847 res!756338) b!1686848))

(assert (= (and b!1686848 res!756340) b!1686845))

(declare-fun m!2070593 () Bool)

(assert (=> b!1686848 m!2070593))

(declare-fun m!2070595 () Bool)

(assert (=> b!1686848 m!2070595))

(assert (=> b!1686848 m!2070595))

(declare-fun m!2070597 () Bool)

(assert (=> b!1686848 m!2070597))

(assert (=> b!1686848 m!2070597))

(declare-fun m!2070599 () Bool)

(assert (=> b!1686848 m!2070599))

(assert (=> b!1686850 m!2070593))

(assert (=> b!1686850 m!2070595))

(assert (=> b!1686850 m!2070595))

(assert (=> b!1686850 m!2070597))

(assert (=> b!1686849 m!2070593))

(assert (=> b!1686849 m!2070595))

(assert (=> b!1686849 m!2070595))

(assert (=> b!1686849 m!2070597))

(assert (=> b!1686849 m!2070597))

(declare-fun m!2070601 () Bool)

(assert (=> b!1686849 m!2070601))

(declare-fun m!2070603 () Bool)

(assert (=> bm!107802 m!2070603))

(declare-fun m!2070605 () Bool)

(assert (=> b!1686843 m!2070605))

(assert (=> b!1686845 m!2070593))

(declare-fun m!2070607 () Bool)

(assert (=> b!1686845 m!2070607))

(assert (=> b!1686847 m!2070593))

(declare-fun m!2070609 () Bool)

(assert (=> b!1686847 m!2070609))

(assert (=> b!1686847 m!2070609))

(declare-fun m!2070611 () Bool)

(assert (=> b!1686847 m!2070611))

(assert (=> b!1686846 m!2070593))

(declare-fun m!2070613 () Bool)

(assert (=> b!1686846 m!2070613))

(assert (=> b!1686846 m!2070417))

(declare-fun m!2070615 () Bool)

(assert (=> b!1686851 m!2070615))

(declare-fun m!2070617 () Bool)

(assert (=> d!513648 m!2070617))

(declare-fun m!2070619 () Bool)

(assert (=> d!513648 m!2070619))

(declare-fun m!2070621 () Bool)

(assert (=> d!513648 m!2070621))

(assert (=> d!513648 m!2070101))

(assert (=> b!1686483 d!513648))

(declare-fun d!513650 () Bool)

(assert (=> d!513650 (= (get!5420 lt!640661) (v!24888 lt!640661))))

(assert (=> b!1686483 d!513650))

(declare-fun d!513652 () Bool)

(declare-fun lt!641100 () Bool)

(declare-fun e!1079935 () Bool)

(assert (=> d!513652 (= lt!641100 e!1079935)))

(declare-fun res!756355 () Bool)

(assert (=> d!513652 (=> (not res!756355) (not e!1079935))))

(assert (=> d!513652 (= res!756355 (= (list!7431 (_1!10519 (lex!1368 thiss!17113 rules!1846 (print!1415 thiss!17113 (singletonSeq!1778 (h!23889 tokens!457)))))) (list!7431 (singletonSeq!1778 (h!23889 tokens!457)))))))

(declare-fun e!1079936 () Bool)

(assert (=> d!513652 (= lt!641100 e!1079936)))

(declare-fun res!756354 () Bool)

(assert (=> d!513652 (=> (not res!756354) (not e!1079936))))

(declare-fun lt!641101 () tuple2!18234)

(declare-fun size!14725 (BalanceConc!12262) Int)

(assert (=> d!513652 (= res!756354 (= (size!14725 (_1!10519 lt!641101)) 1))))

(assert (=> d!513652 (= lt!641101 (lex!1368 thiss!17113 rules!1846 (print!1415 thiss!17113 (singletonSeq!1778 (h!23889 tokens!457)))))))

(assert (=> d!513652 (not (isEmpty!11563 rules!1846))))

(assert (=> d!513652 (= (rulesProduceIndividualToken!1532 thiss!17113 rules!1846 (h!23889 tokens!457)) lt!641100)))

(declare-fun b!1686862 () Bool)

(declare-fun res!756356 () Bool)

(assert (=> b!1686862 (=> (not res!756356) (not e!1079936))))

(declare-fun apply!5040 (BalanceConc!12262 Int) Token!6076)

(assert (=> b!1686862 (= res!756356 (= (apply!5040 (_1!10519 lt!641101) 0) (h!23889 tokens!457)))))

(declare-fun b!1686863 () Bool)

(assert (=> b!1686863 (= e!1079936 (isEmpty!11570 (_2!10519 lt!641101)))))

(declare-fun b!1686864 () Bool)

(assert (=> b!1686864 (= e!1079935 (isEmpty!11570 (_2!10519 (lex!1368 thiss!17113 rules!1846 (print!1415 thiss!17113 (singletonSeq!1778 (h!23889 tokens!457)))))))))

(assert (= (and d!513652 res!756354) b!1686862))

(assert (= (and b!1686862 res!756356) b!1686863))

(assert (= (and d!513652 res!756355) b!1686864))

(declare-fun m!2070667 () Bool)

(assert (=> d!513652 m!2070667))

(assert (=> d!513652 m!2069791))

(declare-fun m!2070669 () Bool)

(assert (=> d!513652 m!2070669))

(assert (=> d!513652 m!2069733))

(declare-fun m!2070671 () Bool)

(assert (=> d!513652 m!2070671))

(assert (=> d!513652 m!2069791))

(declare-fun m!2070673 () Bool)

(assert (=> d!513652 m!2070673))

(declare-fun m!2070675 () Bool)

(assert (=> d!513652 m!2070675))

(assert (=> d!513652 m!2069791))

(assert (=> d!513652 m!2070673))

(declare-fun m!2070677 () Bool)

(assert (=> b!1686862 m!2070677))

(declare-fun m!2070679 () Bool)

(assert (=> b!1686863 m!2070679))

(assert (=> b!1686864 m!2069791))

(assert (=> b!1686864 m!2069791))

(assert (=> b!1686864 m!2070673))

(assert (=> b!1686864 m!2070673))

(assert (=> b!1686864 m!2070675))

(declare-fun m!2070681 () Bool)

(assert (=> b!1686864 m!2070681))

(assert (=> b!1686462 d!513652))

(declare-fun d!513662 () Bool)

(declare-fun res!756361 () Bool)

(declare-fun e!1079939 () Bool)

(assert (=> d!513662 (=> (not res!756361) (not e!1079939))))

(assert (=> d!513662 (= res!756361 (not (isEmpty!11569 (originalCharacters!4069 (h!23889 tokens!457)))))))

(assert (=> d!513662 (= (inv!23850 (h!23889 tokens!457)) e!1079939)))

(declare-fun b!1686869 () Bool)

(declare-fun res!756362 () Bool)

(assert (=> b!1686869 (=> (not res!756362) (not e!1079939))))

(declare-fun dynLambda!8382 (Int TokenValue!3345) BalanceConc!12260)

(assert (=> b!1686869 (= res!756362 (= (originalCharacters!4069 (h!23889 tokens!457)) (list!7432 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (value!102440 (h!23889 tokens!457))))))))

(declare-fun b!1686870 () Bool)

(assert (=> b!1686870 (= e!1079939 (= (size!14720 (h!23889 tokens!457)) (size!14724 (originalCharacters!4069 (h!23889 tokens!457)))))))

(assert (= (and d!513662 res!756361) b!1686869))

(assert (= (and b!1686869 res!756362) b!1686870))

(declare-fun b_lambda!53039 () Bool)

(assert (=> (not b_lambda!53039) (not b!1686869)))

(declare-fun t!154827 () Bool)

(declare-fun tb!97847 () Bool)

(assert (=> (and b!1686461 (= (toChars!4593 (transformation!3255 (h!23888 rules!1846))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457))))) t!154827) tb!97847))

(declare-fun b!1686875 () Bool)

(declare-fun e!1079942 () Bool)

(declare-fun tp!484329 () Bool)

(declare-fun inv!23853 (Conc!6158) Bool)

(assert (=> b!1686875 (= e!1079942 (and (inv!23853 (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (value!102440 (h!23889 tokens!457))))) tp!484329))))

(declare-fun result!117932 () Bool)

(declare-fun inv!23854 (BalanceConc!12260) Bool)

(assert (=> tb!97847 (= result!117932 (and (inv!23854 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (value!102440 (h!23889 tokens!457)))) e!1079942))))

(assert (= tb!97847 b!1686875))

(declare-fun m!2070683 () Bool)

(assert (=> b!1686875 m!2070683))

(declare-fun m!2070685 () Bool)

(assert (=> tb!97847 m!2070685))

(assert (=> b!1686869 t!154827))

(declare-fun b_and!120553 () Bool)

(assert (= b_and!120535 (and (=> t!154827 result!117932) b_and!120553)))

(declare-fun t!154829 () Bool)

(declare-fun tb!97849 () Bool)

(assert (=> (and b!1686468 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457))))) t!154829) tb!97849))

(declare-fun result!117936 () Bool)

(assert (= result!117936 result!117932))

(assert (=> b!1686869 t!154829))

(declare-fun b_and!120555 () Bool)

(assert (= b_and!120539 (and (=> t!154829 result!117936) b_and!120555)))

(declare-fun m!2070687 () Bool)

(assert (=> d!513662 m!2070687))

(declare-fun m!2070689 () Bool)

(assert (=> b!1686869 m!2070689))

(assert (=> b!1686869 m!2070689))

(declare-fun m!2070691 () Bool)

(assert (=> b!1686869 m!2070691))

(assert (=> b!1686870 m!2070579))

(assert (=> b!1686484 d!513662))

(declare-fun d!513664 () Bool)

(declare-fun e!1079945 () Bool)

(assert (=> d!513664 e!1079945))

(declare-fun res!756367 () Bool)

(assert (=> d!513664 (=> res!756367 e!1079945)))

(declare-fun lt!641105 () Option!3568)

(assert (=> d!513664 (= res!756367 (isEmpty!11573 lt!641105))))

(declare-fun e!1079944 () Option!3568)

(assert (=> d!513664 (= lt!641105 e!1079944)))

(declare-fun c!275485 () Bool)

(assert (=> d!513664 (= c!275485 (and ((_ is Cons!18487) rules!1846) ((_ is Nil!18487) (t!154810 rules!1846))))))

(declare-fun lt!641104 () Unit!31839)

(declare-fun lt!641103 () Unit!31839)

(assert (=> d!513664 (= lt!641104 lt!641103)))

(assert (=> d!513664 (isPrefix!1513 lt!640658 lt!640658)))

(assert (=> d!513664 (= lt!641103 (lemmaIsPrefixRefl!1030 lt!640658 lt!640658))))

(assert (=> d!513664 (rulesValidInductive!1052 thiss!17113 rules!1846)))

(assert (=> d!513664 (= (maxPrefix!1444 thiss!17113 rules!1846 lt!640658) lt!641105)))

(declare-fun b!1686876 () Bool)

(declare-fun e!1079943 () Bool)

(assert (=> b!1686876 (= e!1079945 e!1079943)))

(declare-fun res!756368 () Bool)

(assert (=> b!1686876 (=> (not res!756368) (not e!1079943))))

(assert (=> b!1686876 (= res!756368 (isDefined!2917 lt!641105))))

(declare-fun b!1686877 () Bool)

(declare-fun call!107808 () Option!3568)

(assert (=> b!1686877 (= e!1079944 call!107808)))

(declare-fun b!1686878 () Bool)

(assert (=> b!1686878 (= e!1079943 (contains!3250 rules!1846 (rule!5161 (_1!10520 (get!5420 lt!641105)))))))

(declare-fun b!1686879 () Bool)

(declare-fun res!756364 () Bool)

(assert (=> b!1686879 (=> (not res!756364) (not e!1079943))))

(assert (=> b!1686879 (= res!756364 (< (size!14724 (_2!10520 (get!5420 lt!641105))) (size!14724 lt!640658)))))

(declare-fun b!1686880 () Bool)

(declare-fun res!756363 () Bool)

(assert (=> b!1686880 (=> (not res!756363) (not e!1079943))))

(assert (=> b!1686880 (= res!756363 (= (value!102440 (_1!10520 (get!5420 lt!641105))) (apply!5039 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641105)))) (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!641105)))))))))

(declare-fun b!1686881 () Bool)

(declare-fun res!756365 () Bool)

(assert (=> b!1686881 (=> (not res!756365) (not e!1079943))))

(assert (=> b!1686881 (= res!756365 (matchR!2072 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641105)))) (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641105))))))))

(declare-fun bm!107803 () Bool)

(assert (=> bm!107803 (= call!107808 (maxPrefixOneRule!845 thiss!17113 (h!23888 rules!1846) lt!640658))))

(declare-fun b!1686882 () Bool)

(declare-fun res!756366 () Bool)

(assert (=> b!1686882 (=> (not res!756366) (not e!1079943))))

(assert (=> b!1686882 (= res!756366 (= (++!5065 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641105)))) (_2!10520 (get!5420 lt!641105))) lt!640658))))

(declare-fun b!1686883 () Bool)

(declare-fun res!756369 () Bool)

(assert (=> b!1686883 (=> (not res!756369) (not e!1079943))))

(assert (=> b!1686883 (= res!756369 (= (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641105)))) (originalCharacters!4069 (_1!10520 (get!5420 lt!641105)))))))

(declare-fun b!1686884 () Bool)

(declare-fun lt!641102 () Option!3568)

(declare-fun lt!641106 () Option!3568)

(assert (=> b!1686884 (= e!1079944 (ite (and ((_ is None!3567) lt!641102) ((_ is None!3567) lt!641106)) None!3567 (ite ((_ is None!3567) lt!641106) lt!641102 (ite ((_ is None!3567) lt!641102) lt!641106 (ite (>= (size!14720 (_1!10520 (v!24888 lt!641102))) (size!14720 (_1!10520 (v!24888 lt!641106)))) lt!641102 lt!641106)))))))

(assert (=> b!1686884 (= lt!641102 call!107808)))

(assert (=> b!1686884 (= lt!641106 (maxPrefix!1444 thiss!17113 (t!154810 rules!1846) lt!640658))))

(assert (= (and d!513664 c!275485) b!1686877))

(assert (= (and d!513664 (not c!275485)) b!1686884))

(assert (= (or b!1686877 b!1686884) bm!107803))

(assert (= (and d!513664 (not res!756367)) b!1686876))

(assert (= (and b!1686876 res!756368) b!1686883))

(assert (= (and b!1686883 res!756369) b!1686879))

(assert (= (and b!1686879 res!756364) b!1686882))

(assert (= (and b!1686882 res!756366) b!1686880))

(assert (= (and b!1686880 res!756363) b!1686881))

(assert (= (and b!1686881 res!756365) b!1686878))

(declare-fun m!2070693 () Bool)

(assert (=> b!1686881 m!2070693))

(declare-fun m!2070695 () Bool)

(assert (=> b!1686881 m!2070695))

(assert (=> b!1686881 m!2070695))

(declare-fun m!2070697 () Bool)

(assert (=> b!1686881 m!2070697))

(assert (=> b!1686881 m!2070697))

(declare-fun m!2070699 () Bool)

(assert (=> b!1686881 m!2070699))

(assert (=> b!1686883 m!2070693))

(assert (=> b!1686883 m!2070695))

(assert (=> b!1686883 m!2070695))

(assert (=> b!1686883 m!2070697))

(assert (=> b!1686882 m!2070693))

(assert (=> b!1686882 m!2070695))

(assert (=> b!1686882 m!2070695))

(assert (=> b!1686882 m!2070697))

(assert (=> b!1686882 m!2070697))

(declare-fun m!2070701 () Bool)

(assert (=> b!1686882 m!2070701))

(declare-fun m!2070703 () Bool)

(assert (=> bm!107803 m!2070703))

(declare-fun m!2070705 () Bool)

(assert (=> b!1686876 m!2070705))

(assert (=> b!1686878 m!2070693))

(declare-fun m!2070707 () Bool)

(assert (=> b!1686878 m!2070707))

(assert (=> b!1686880 m!2070693))

(declare-fun m!2070709 () Bool)

(assert (=> b!1686880 m!2070709))

(assert (=> b!1686880 m!2070709))

(declare-fun m!2070711 () Bool)

(assert (=> b!1686880 m!2070711))

(assert (=> b!1686879 m!2070693))

(declare-fun m!2070713 () Bool)

(assert (=> b!1686879 m!2070713))

(declare-fun m!2070715 () Bool)

(assert (=> b!1686879 m!2070715))

(declare-fun m!2070717 () Bool)

(assert (=> b!1686884 m!2070717))

(declare-fun m!2070719 () Bool)

(assert (=> d!513664 m!2070719))

(declare-fun m!2070721 () Bool)

(assert (=> d!513664 m!2070721))

(declare-fun m!2070723 () Bool)

(assert (=> d!513664 m!2070723))

(assert (=> d!513664 m!2070101))

(assert (=> b!1686466 d!513664))

(declare-fun d!513666 () Bool)

(assert (=> d!513666 (= (list!7432 lt!640655) (list!7436 (c!275419 lt!640655)))))

(declare-fun bs!399639 () Bool)

(assert (= bs!399639 d!513666))

(declare-fun m!2070725 () Bool)

(assert (=> bs!399639 m!2070725))

(assert (=> b!1686466 d!513666))

(declare-fun d!513668 () Bool)

(declare-fun lt!641127 () BalanceConc!12260)

(declare-fun printListTailRec!426 (LexerInterface!2884 List!18558 List!18555) List!18555)

(declare-fun dropList!738 (BalanceConc!12262 Int) List!18558)

(assert (=> d!513668 (= (list!7432 lt!641127) (printListTailRec!426 thiss!17113 (dropList!738 lt!640650 0) (list!7432 (BalanceConc!12261 Empty!6158))))))

(declare-fun e!1079954 () BalanceConc!12260)

(assert (=> d!513668 (= lt!641127 e!1079954)))

(declare-fun c!275488 () Bool)

(assert (=> d!513668 (= c!275488 (>= 0 (size!14725 lt!640650)))))

(declare-fun e!1079955 () Bool)

(assert (=> d!513668 e!1079955))

(declare-fun res!756376 () Bool)

(assert (=> d!513668 (=> (not res!756376) (not e!1079955))))

(assert (=> d!513668 (= res!756376 (>= 0 0))))

(assert (=> d!513668 (= (printTailRec!935 thiss!17113 lt!640650 0 (BalanceConc!12261 Empty!6158)) lt!641127)))

(declare-fun b!1686895 () Bool)

(assert (=> b!1686895 (= e!1079955 (<= 0 (size!14725 lt!640650)))))

(declare-fun b!1686896 () Bool)

(assert (=> b!1686896 (= e!1079954 (BalanceConc!12261 Empty!6158))))

(declare-fun b!1686897 () Bool)

(assert (=> b!1686897 (= e!1079954 (printTailRec!935 thiss!17113 lt!640650 (+ 0 1) (++!5066 (BalanceConc!12261 Empty!6158) (charsOf!1904 (apply!5040 lt!640650 0)))))))

(declare-fun lt!641128 () List!18558)

(assert (=> b!1686897 (= lt!641128 (list!7431 lt!640650))))

(declare-fun lt!641126 () Unit!31839)

(declare-fun lemmaDropApply!633 (List!18558 Int) Unit!31839)

(assert (=> b!1686897 (= lt!641126 (lemmaDropApply!633 lt!641128 0))))

(declare-fun head!3782 (List!18558) Token!6076)

(declare-fun drop!959 (List!18558 Int) List!18558)

(declare-fun apply!5043 (List!18558 Int) Token!6076)

(assert (=> b!1686897 (= (head!3782 (drop!959 lt!641128 0)) (apply!5043 lt!641128 0))))

(declare-fun lt!641124 () Unit!31839)

(assert (=> b!1686897 (= lt!641124 lt!641126)))

(declare-fun lt!641129 () List!18558)

(assert (=> b!1686897 (= lt!641129 (list!7431 lt!640650))))

(declare-fun lt!641123 () Unit!31839)

(declare-fun lemmaDropTail!613 (List!18558 Int) Unit!31839)

(assert (=> b!1686897 (= lt!641123 (lemmaDropTail!613 lt!641129 0))))

(declare-fun tail!2519 (List!18558) List!18558)

(assert (=> b!1686897 (= (tail!2519 (drop!959 lt!641129 0)) (drop!959 lt!641129 (+ 0 1)))))

(declare-fun lt!641125 () Unit!31839)

(assert (=> b!1686897 (= lt!641125 lt!641123)))

(assert (= (and d!513668 res!756376) b!1686895))

(assert (= (and d!513668 c!275488) b!1686896))

(assert (= (and d!513668 (not c!275488)) b!1686897))

(declare-fun m!2070727 () Bool)

(assert (=> d!513668 m!2070727))

(declare-fun m!2070729 () Bool)

(assert (=> d!513668 m!2070729))

(declare-fun m!2070731 () Bool)

(assert (=> d!513668 m!2070731))

(declare-fun m!2070733 () Bool)

(assert (=> d!513668 m!2070733))

(assert (=> d!513668 m!2070731))

(assert (=> d!513668 m!2070729))

(declare-fun m!2070735 () Bool)

(assert (=> d!513668 m!2070735))

(assert (=> b!1686895 m!2070735))

(declare-fun m!2070737 () Bool)

(assert (=> b!1686897 m!2070737))

(declare-fun m!2070739 () Bool)

(assert (=> b!1686897 m!2070739))

(declare-fun m!2070741 () Bool)

(assert (=> b!1686897 m!2070741))

(declare-fun m!2070743 () Bool)

(assert (=> b!1686897 m!2070743))

(declare-fun m!2070745 () Bool)

(assert (=> b!1686897 m!2070745))

(declare-fun m!2070747 () Bool)

(assert (=> b!1686897 m!2070747))

(declare-fun m!2070749 () Bool)

(assert (=> b!1686897 m!2070749))

(declare-fun m!2070751 () Bool)

(assert (=> b!1686897 m!2070751))

(assert (=> b!1686897 m!2070745))

(assert (=> b!1686897 m!2070741))

(declare-fun m!2070753 () Bool)

(assert (=> b!1686897 m!2070753))

(assert (=> b!1686897 m!2070749))

(declare-fun m!2070755 () Bool)

(assert (=> b!1686897 m!2070755))

(assert (=> b!1686897 m!2070743))

(declare-fun m!2070757 () Bool)

(assert (=> b!1686897 m!2070757))

(declare-fun m!2070759 () Bool)

(assert (=> b!1686897 m!2070759))

(assert (=> b!1686897 m!2070747))

(declare-fun m!2070761 () Bool)

(assert (=> b!1686897 m!2070761))

(assert (=> b!1686466 d!513668))

(declare-fun d!513670 () Bool)

(declare-fun c!275491 () Bool)

(assert (=> d!513670 (= c!275491 ((_ is Cons!18488) (Cons!18488 (h!23889 tokens!457) Nil!18488)))))

(declare-fun e!1079958 () List!18555)

(assert (=> d!513670 (= (printList!997 thiss!17113 (Cons!18488 (h!23889 tokens!457) Nil!18488)) e!1079958)))

(declare-fun b!1686902 () Bool)

(assert (=> b!1686902 (= e!1079958 (++!5065 (list!7432 (charsOf!1904 (h!23889 (Cons!18488 (h!23889 tokens!457) Nil!18488)))) (printList!997 thiss!17113 (t!154811 (Cons!18488 (h!23889 tokens!457) Nil!18488)))))))

(declare-fun b!1686903 () Bool)

(assert (=> b!1686903 (= e!1079958 Nil!18485)))

(assert (= (and d!513670 c!275491) b!1686902))

(assert (= (and d!513670 (not c!275491)) b!1686903))

(declare-fun m!2070763 () Bool)

(assert (=> b!1686902 m!2070763))

(assert (=> b!1686902 m!2070763))

(declare-fun m!2070765 () Bool)

(assert (=> b!1686902 m!2070765))

(declare-fun m!2070767 () Bool)

(assert (=> b!1686902 m!2070767))

(assert (=> b!1686902 m!2070765))

(assert (=> b!1686902 m!2070767))

(declare-fun m!2070769 () Bool)

(assert (=> b!1686902 m!2070769))

(assert (=> b!1686466 d!513670))

(declare-fun d!513672 () Bool)

(declare-fun e!1079961 () Bool)

(assert (=> d!513672 e!1079961))

(declare-fun res!756379 () Bool)

(assert (=> d!513672 (=> (not res!756379) (not e!1079961))))

(declare-fun lt!641132 () BalanceConc!12262)

(assert (=> d!513672 (= res!756379 (= (list!7431 lt!641132) (Cons!18488 (h!23889 tokens!457) Nil!18488)))))

(declare-fun singleton!802 (Token!6076) BalanceConc!12262)

(assert (=> d!513672 (= lt!641132 (singleton!802 (h!23889 tokens!457)))))

(assert (=> d!513672 (= (singletonSeq!1778 (h!23889 tokens!457)) lt!641132)))

(declare-fun b!1686906 () Bool)

(assert (=> b!1686906 (= e!1079961 (isBalanced!1928 (c!275421 lt!641132)))))

(assert (= (and d!513672 res!756379) b!1686906))

(declare-fun m!2070771 () Bool)

(assert (=> d!513672 m!2070771))

(declare-fun m!2070773 () Bool)

(assert (=> d!513672 m!2070773))

(declare-fun m!2070775 () Bool)

(assert (=> b!1686906 m!2070775))

(assert (=> b!1686466 d!513672))

(declare-fun d!513674 () Bool)

(declare-fun lt!641135 () BalanceConc!12260)

(assert (=> d!513674 (= (list!7432 lt!641135) (printList!997 thiss!17113 (list!7431 lt!640650)))))

(assert (=> d!513674 (= lt!641135 (printTailRec!935 thiss!17113 lt!640650 0 (BalanceConc!12261 Empty!6158)))))

(assert (=> d!513674 (= (print!1415 thiss!17113 lt!640650) lt!641135)))

(declare-fun bs!399640 () Bool)

(assert (= bs!399640 d!513674))

(declare-fun m!2070777 () Bool)

(assert (=> bs!399640 m!2070777))

(assert (=> bs!399640 m!2070759))

(assert (=> bs!399640 m!2070759))

(declare-fun m!2070779 () Bool)

(assert (=> bs!399640 m!2070779))

(assert (=> bs!399640 m!2069787))

(assert (=> b!1686466 d!513674))

(declare-fun d!513676 () Bool)

(declare-fun lt!641136 () BalanceConc!12260)

(assert (=> d!513676 (= (list!7432 lt!641136) (printList!997 thiss!17113 (list!7431 (seqFromList!2248 tokens!457))))))

(assert (=> d!513676 (= lt!641136 (printTailRec!935 thiss!17113 (seqFromList!2248 tokens!457) 0 (BalanceConc!12261 Empty!6158)))))

(assert (=> d!513676 (= (print!1415 thiss!17113 (seqFromList!2248 tokens!457)) lt!641136)))

(declare-fun bs!399641 () Bool)

(assert (= bs!399641 d!513676))

(declare-fun m!2070781 () Bool)

(assert (=> bs!399641 m!2070781))

(assert (=> bs!399641 m!2069739))

(declare-fun m!2070783 () Bool)

(assert (=> bs!399641 m!2070783))

(assert (=> bs!399641 m!2070783))

(declare-fun m!2070785 () Bool)

(assert (=> bs!399641 m!2070785))

(assert (=> bs!399641 m!2069739))

(declare-fun m!2070787 () Bool)

(assert (=> bs!399641 m!2070787))

(assert (=> b!1686477 d!513676))

(declare-fun d!513678 () Bool)

(declare-fun e!1079968 () Bool)

(assert (=> d!513678 e!1079968))

(declare-fun res!756387 () Bool)

(assert (=> d!513678 (=> (not res!756387) (not e!1079968))))

(declare-fun e!1079970 () Bool)

(assert (=> d!513678 (= res!756387 e!1079970)))

(declare-fun c!275494 () Bool)

(declare-fun lt!641139 () tuple2!18234)

(assert (=> d!513678 (= c!275494 (> (size!14725 (_1!10519 lt!641139)) 0))))

(declare-fun lexTailRecV2!630 (LexerInterface!2884 List!18557 BalanceConc!12260 BalanceConc!12260 BalanceConc!12260 BalanceConc!12262) tuple2!18234)

(assert (=> d!513678 (= lt!641139 (lexTailRecV2!630 thiss!17113 rules!1846 lt!640656 (BalanceConc!12261 Empty!6158) lt!640656 (BalanceConc!12263 Empty!6159)))))

(assert (=> d!513678 (= (lex!1368 thiss!17113 rules!1846 lt!640656) lt!641139)))

(declare-fun b!1686917 () Bool)

(declare-fun res!756388 () Bool)

(assert (=> b!1686917 (=> (not res!756388) (not e!1079968))))

(declare-datatypes ((tuple2!18242 0))(
  ( (tuple2!18243 (_1!10523 List!18558) (_2!10523 List!18555)) )
))
(declare-fun lexList!907 (LexerInterface!2884 List!18557 List!18555) tuple2!18242)

(assert (=> b!1686917 (= res!756388 (= (list!7431 (_1!10519 lt!641139)) (_1!10523 (lexList!907 thiss!17113 rules!1846 (list!7432 lt!640656)))))))

(declare-fun b!1686918 () Bool)

(assert (=> b!1686918 (= e!1079968 (= (list!7432 (_2!10519 lt!641139)) (_2!10523 (lexList!907 thiss!17113 rules!1846 (list!7432 lt!640656)))))))

(declare-fun b!1686919 () Bool)

(declare-fun e!1079969 () Bool)

(assert (=> b!1686919 (= e!1079969 (not (isEmpty!11562 (_1!10519 lt!641139))))))

(declare-fun b!1686920 () Bool)

(assert (=> b!1686920 (= e!1079970 (= (_2!10519 lt!641139) lt!640656))))

(declare-fun b!1686921 () Bool)

(assert (=> b!1686921 (= e!1079970 e!1079969)))

(declare-fun res!756386 () Bool)

(declare-fun size!14726 (BalanceConc!12260) Int)

(assert (=> b!1686921 (= res!756386 (< (size!14726 (_2!10519 lt!641139)) (size!14726 lt!640656)))))

(assert (=> b!1686921 (=> (not res!756386) (not e!1079969))))

(assert (= (and d!513678 c!275494) b!1686921))

(assert (= (and d!513678 (not c!275494)) b!1686920))

(assert (= (and b!1686921 res!756386) b!1686919))

(assert (= (and d!513678 res!756387) b!1686917))

(assert (= (and b!1686917 res!756388) b!1686918))

(declare-fun m!2070789 () Bool)

(assert (=> b!1686918 m!2070789))

(assert (=> b!1686918 m!2069747))

(assert (=> b!1686918 m!2069747))

(declare-fun m!2070791 () Bool)

(assert (=> b!1686918 m!2070791))

(declare-fun m!2070793 () Bool)

(assert (=> b!1686917 m!2070793))

(assert (=> b!1686917 m!2069747))

(assert (=> b!1686917 m!2069747))

(assert (=> b!1686917 m!2070791))

(declare-fun m!2070795 () Bool)

(assert (=> d!513678 m!2070795))

(declare-fun m!2070797 () Bool)

(assert (=> d!513678 m!2070797))

(declare-fun m!2070799 () Bool)

(assert (=> b!1686919 m!2070799))

(declare-fun m!2070801 () Bool)

(assert (=> b!1686921 m!2070801))

(declare-fun m!2070803 () Bool)

(assert (=> b!1686921 m!2070803))

(assert (=> b!1686477 d!513678))

(declare-fun d!513680 () Bool)

(assert (=> d!513680 (= (list!7432 lt!640656) (list!7436 (c!275419 lt!640656)))))

(declare-fun bs!399642 () Bool)

(assert (= bs!399642 d!513680))

(declare-fun m!2070805 () Bool)

(assert (=> bs!399642 m!2070805))

(assert (=> b!1686477 d!513680))

(declare-fun d!513682 () Bool)

(assert (=> d!513682 (= (seqFromList!2248 tokens!457) (fromListB!1031 tokens!457))))

(declare-fun bs!399643 () Bool)

(assert (= bs!399643 d!513682))

(declare-fun m!2070807 () Bool)

(assert (=> bs!399643 m!2070807))

(assert (=> b!1686477 d!513682))

(declare-fun d!513684 () Bool)

(assert (=> d!513684 (= (list!7432 lt!640644) (list!7436 (c!275419 lt!640644)))))

(declare-fun bs!399644 () Bool)

(assert (= bs!399644 d!513684))

(declare-fun m!2070809 () Bool)

(assert (=> bs!399644 m!2070809))

(assert (=> b!1686477 d!513684))

(declare-fun d!513686 () Bool)

(declare-fun lt!641142 () BalanceConc!12260)

(assert (=> d!513686 (= (list!7432 lt!641142) (originalCharacters!4069 (h!23889 tokens!457)))))

(assert (=> d!513686 (= lt!641142 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (value!102440 (h!23889 tokens!457))))))

(assert (=> d!513686 (= (charsOf!1904 (h!23889 tokens!457)) lt!641142)))

(declare-fun b_lambda!53041 () Bool)

(assert (=> (not b_lambda!53041) (not d!513686)))

(assert (=> d!513686 t!154827))

(declare-fun b_and!120557 () Bool)

(assert (= b_and!120553 (and (=> t!154827 result!117932) b_and!120557)))

(assert (=> d!513686 t!154829))

(declare-fun b_and!120559 () Bool)

(assert (= b_and!120555 (and (=> t!154829 result!117936) b_and!120559)))

(declare-fun m!2070811 () Bool)

(assert (=> d!513686 m!2070811))

(assert (=> d!513686 m!2070689))

(assert (=> b!1686477 d!513686))

(declare-fun b!1686924 () Bool)

(declare-fun res!756390 () Bool)

(declare-fun e!1079971 () Bool)

(assert (=> b!1686924 (=> (not res!756390) (not e!1079971))))

(declare-fun lt!641143 () List!18555)

(assert (=> b!1686924 (= res!756390 (= (size!14724 lt!641143) (+ (size!14724 lt!640654) (size!14724 lt!640662))))))

(declare-fun d!513688 () Bool)

(assert (=> d!513688 e!1079971))

(declare-fun res!756389 () Bool)

(assert (=> d!513688 (=> (not res!756389) (not e!1079971))))

(assert (=> d!513688 (= res!756389 (= (content!2605 lt!641143) ((_ map or) (content!2605 lt!640654) (content!2605 lt!640662))))))

(declare-fun e!1079972 () List!18555)

(assert (=> d!513688 (= lt!641143 e!1079972)))

(declare-fun c!275495 () Bool)

(assert (=> d!513688 (= c!275495 ((_ is Nil!18485) lt!640654))))

(assert (=> d!513688 (= (++!5065 lt!640654 lt!640662) lt!641143)))

(declare-fun b!1686923 () Bool)

(assert (=> b!1686923 (= e!1079972 (Cons!18485 (h!23886 lt!640654) (++!5065 (t!154808 lt!640654) lt!640662)))))

(declare-fun b!1686925 () Bool)

(assert (=> b!1686925 (= e!1079971 (or (not (= lt!640662 Nil!18485)) (= lt!641143 lt!640654)))))

(declare-fun b!1686922 () Bool)

(assert (=> b!1686922 (= e!1079972 lt!640662)))

(assert (= (and d!513688 c!275495) b!1686922))

(assert (= (and d!513688 (not c!275495)) b!1686923))

(assert (= (and d!513688 res!756389) b!1686924))

(assert (= (and b!1686924 res!756390) b!1686925))

(declare-fun m!2070813 () Bool)

(assert (=> b!1686924 m!2070813))

(assert (=> b!1686924 m!2070417))

(declare-fun m!2070815 () Bool)

(assert (=> b!1686924 m!2070815))

(declare-fun m!2070817 () Bool)

(assert (=> d!513688 m!2070817))

(assert (=> d!513688 m!2070477))

(declare-fun m!2070819 () Bool)

(assert (=> d!513688 m!2070819))

(declare-fun m!2070821 () Bool)

(assert (=> b!1686923 m!2070821))

(assert (=> b!1686477 d!513688))

(declare-fun d!513690 () Bool)

(declare-fun lt!641144 () BalanceConc!12260)

(assert (=> d!513690 (= (list!7432 lt!641144) (printList!997 thiss!17113 (list!7431 lt!640664)))))

(assert (=> d!513690 (= lt!641144 (printTailRec!935 thiss!17113 lt!640664 0 (BalanceConc!12261 Empty!6158)))))

(assert (=> d!513690 (= (print!1415 thiss!17113 lt!640664) lt!641144)))

(declare-fun bs!399645 () Bool)

(assert (= bs!399645 d!513690))

(declare-fun m!2070823 () Bool)

(assert (=> bs!399645 m!2070823))

(assert (=> bs!399645 m!2069769))

(assert (=> bs!399645 m!2069769))

(declare-fun m!2070825 () Bool)

(assert (=> bs!399645 m!2070825))

(declare-fun m!2070827 () Bool)

(assert (=> bs!399645 m!2070827))

(assert (=> b!1686477 d!513690))

(declare-fun d!513692 () Bool)

(assert (=> d!513692 (= (seqFromList!2248 (t!154811 tokens!457)) (fromListB!1031 (t!154811 tokens!457)))))

(declare-fun bs!399646 () Bool)

(assert (= bs!399646 d!513692))

(declare-fun m!2070829 () Bool)

(assert (=> bs!399646 m!2070829))

(assert (=> b!1686477 d!513692))

(declare-fun d!513694 () Bool)

(assert (=> d!513694 (= (list!7432 lt!640663) (list!7436 (c!275419 lt!640663)))))

(declare-fun bs!399647 () Bool)

(assert (= bs!399647 d!513694))

(declare-fun m!2070831 () Bool)

(assert (=> bs!399647 m!2070831))

(assert (=> b!1686477 d!513694))

(declare-fun d!513696 () Bool)

(assert (=> d!513696 (= (inv!23846 (tag!3545 (rule!5161 (h!23889 tokens!457)))) (= (mod (str.len (value!102439 (tag!3545 (rule!5161 (h!23889 tokens!457))))) 2) 0))))

(assert (=> b!1686475 d!513696))

(declare-fun d!513698 () Bool)

(declare-fun res!756391 () Bool)

(declare-fun e!1079973 () Bool)

(assert (=> d!513698 (=> (not res!756391) (not e!1079973))))

(assert (=> d!513698 (= res!756391 (semiInverseModEq!1278 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (toValue!4734 (transformation!3255 (rule!5161 (h!23889 tokens!457))))))))

(assert (=> d!513698 (= (inv!23849 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) e!1079973)))

(declare-fun b!1686926 () Bool)

(assert (=> b!1686926 (= e!1079973 (equivClasses!1219 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (toValue!4734 (transformation!3255 (rule!5161 (h!23889 tokens!457))))))))

(assert (= (and d!513698 res!756391) b!1686926))

(declare-fun m!2070833 () Bool)

(assert (=> d!513698 m!2070833))

(declare-fun m!2070835 () Bool)

(assert (=> b!1686926 m!2070835))

(assert (=> b!1686475 d!513698))

(declare-fun d!513700 () Bool)

(declare-fun lt!641147 () C!9340)

(assert (=> d!513700 (= lt!641147 (head!3780 (list!7432 lt!640656)))))

(declare-fun head!3784 (Conc!6158) C!9340)

(assert (=> d!513700 (= lt!641147 (head!3784 (c!275419 lt!640656)))))

(assert (=> d!513700 (not (isEmpty!11570 lt!640656))))

(assert (=> d!513700 (= (head!3779 lt!640656) lt!641147)))

(declare-fun bs!399648 () Bool)

(assert (= bs!399648 d!513700))

(assert (=> bs!399648 m!2069747))

(assert (=> bs!399648 m!2069747))

(declare-fun m!2070837 () Bool)

(assert (=> bs!399648 m!2070837))

(declare-fun m!2070839 () Bool)

(assert (=> bs!399648 m!2070839))

(declare-fun m!2070841 () Bool)

(assert (=> bs!399648 m!2070841))

(assert (=> b!1686465 d!513700))

(declare-fun d!513702 () Bool)

(assert (=> d!513702 (= (head!3780 lt!640662) (h!23886 lt!640662))))

(assert (=> b!1686476 d!513702))

(declare-fun d!513704 () Bool)

(declare-fun res!756396 () Bool)

(declare-fun e!1079979 () Bool)

(assert (=> d!513704 (=> res!756396 e!1079979)))

(assert (=> d!513704 (= res!756396 (or (not ((_ is Cons!18488) tokens!457)) (not ((_ is Cons!18488) (t!154811 tokens!457)))))))

(assert (=> d!513704 (= (tokensListTwoByTwoPredicateSeparableList!577 thiss!17113 tokens!457 rules!1846) e!1079979)))

(declare-fun b!1686931 () Bool)

(declare-fun e!1079978 () Bool)

(assert (=> b!1686931 (= e!1079979 e!1079978)))

(declare-fun res!756397 () Bool)

(assert (=> b!1686931 (=> (not res!756397) (not e!1079978))))

(assert (=> b!1686931 (= res!756397 (separableTokensPredicate!824 thiss!17113 (h!23889 tokens!457) (h!23889 (t!154811 tokens!457)) rules!1846))))

(declare-fun lt!641166 () Unit!31839)

(declare-fun Unit!31874 () Unit!31839)

(assert (=> b!1686931 (= lt!641166 Unit!31874)))

(assert (=> b!1686931 (> (size!14726 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) 0)))

(declare-fun lt!641162 () Unit!31839)

(declare-fun Unit!31875 () Unit!31839)

(assert (=> b!1686931 (= lt!641162 Unit!31875)))

(assert (=> b!1686931 (rulesProduceIndividualToken!1532 thiss!17113 rules!1846 (h!23889 (t!154811 tokens!457)))))

(declare-fun lt!641164 () Unit!31839)

(declare-fun Unit!31876 () Unit!31839)

(assert (=> b!1686931 (= lt!641164 Unit!31876)))

(assert (=> b!1686931 (rulesProduceIndividualToken!1532 thiss!17113 rules!1846 (h!23889 tokens!457))))

(declare-fun lt!641165 () Unit!31839)

(declare-fun lt!641167 () Unit!31839)

(assert (=> b!1686931 (= lt!641165 lt!641167)))

(assert (=> b!1686931 (rulesProduceIndividualToken!1532 thiss!17113 rules!1846 (h!23889 (t!154811 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!642 (LexerInterface!2884 List!18557 List!18558 Token!6076) Unit!31839)

(assert (=> b!1686931 (= lt!641167 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!642 thiss!17113 rules!1846 tokens!457 (h!23889 (t!154811 tokens!457))))))

(declare-fun lt!641163 () Unit!31839)

(declare-fun lt!641168 () Unit!31839)

(assert (=> b!1686931 (= lt!641163 lt!641168)))

(assert (=> b!1686931 (rulesProduceIndividualToken!1532 thiss!17113 rules!1846 (h!23889 tokens!457))))

(assert (=> b!1686931 (= lt!641168 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!642 thiss!17113 rules!1846 tokens!457 (h!23889 tokens!457)))))

(declare-fun b!1686932 () Bool)

(assert (=> b!1686932 (= e!1079978 (tokensListTwoByTwoPredicateSeparableList!577 thiss!17113 (Cons!18488 (h!23889 (t!154811 tokens!457)) (t!154811 (t!154811 tokens!457))) rules!1846))))

(assert (= (and d!513704 (not res!756396)) b!1686931))

(assert (= (and b!1686931 res!756397) b!1686932))

(assert (=> b!1686931 m!2069785))

(assert (=> b!1686931 m!2069783))

(declare-fun m!2070843 () Bool)

(assert (=> b!1686931 m!2070843))

(assert (=> b!1686931 m!2069837))

(declare-fun m!2070845 () Bool)

(assert (=> b!1686931 m!2070845))

(declare-fun m!2070847 () Bool)

(assert (=> b!1686931 m!2070847))

(assert (=> b!1686931 m!2069837))

(declare-fun m!2070849 () Bool)

(assert (=> b!1686931 m!2070849))

(declare-fun m!2070851 () Bool)

(assert (=> b!1686932 m!2070851))

(assert (=> b!1686479 d!513704))

(declare-fun d!513706 () Bool)

(declare-fun lt!641171 () Bool)

(declare-fun isEmpty!11574 (List!18558) Bool)

(assert (=> d!513706 (= lt!641171 (isEmpty!11574 (list!7431 (_1!10519 (lex!1368 thiss!17113 rules!1846 (seqFromList!2247 lt!640654))))))))

(declare-fun isEmpty!11575 (Conc!6159) Bool)

(assert (=> d!513706 (= lt!641171 (isEmpty!11575 (c!275421 (_1!10519 (lex!1368 thiss!17113 rules!1846 (seqFromList!2247 lt!640654))))))))

(assert (=> d!513706 (= (isEmpty!11562 (_1!10519 (lex!1368 thiss!17113 rules!1846 (seqFromList!2247 lt!640654)))) lt!641171)))

(declare-fun bs!399649 () Bool)

(assert (= bs!399649 d!513706))

(declare-fun m!2070853 () Bool)

(assert (=> bs!399649 m!2070853))

(assert (=> bs!399649 m!2070853))

(declare-fun m!2070855 () Bool)

(assert (=> bs!399649 m!2070855))

(declare-fun m!2070857 () Bool)

(assert (=> bs!399649 m!2070857))

(assert (=> b!1686458 d!513706))

(declare-fun d!513708 () Bool)

(declare-fun e!1079980 () Bool)

(assert (=> d!513708 e!1079980))

(declare-fun res!756399 () Bool)

(assert (=> d!513708 (=> (not res!756399) (not e!1079980))))

(declare-fun e!1079982 () Bool)

(assert (=> d!513708 (= res!756399 e!1079982)))

(declare-fun c!275496 () Bool)

(declare-fun lt!641172 () tuple2!18234)

(assert (=> d!513708 (= c!275496 (> (size!14725 (_1!10519 lt!641172)) 0))))

(assert (=> d!513708 (= lt!641172 (lexTailRecV2!630 thiss!17113 rules!1846 (seqFromList!2247 lt!640654) (BalanceConc!12261 Empty!6158) (seqFromList!2247 lt!640654) (BalanceConc!12263 Empty!6159)))))

(assert (=> d!513708 (= (lex!1368 thiss!17113 rules!1846 (seqFromList!2247 lt!640654)) lt!641172)))

(declare-fun b!1686933 () Bool)

(declare-fun res!756400 () Bool)

(assert (=> b!1686933 (=> (not res!756400) (not e!1079980))))

(assert (=> b!1686933 (= res!756400 (= (list!7431 (_1!10519 lt!641172)) (_1!10523 (lexList!907 thiss!17113 rules!1846 (list!7432 (seqFromList!2247 lt!640654))))))))

(declare-fun b!1686934 () Bool)

(assert (=> b!1686934 (= e!1079980 (= (list!7432 (_2!10519 lt!641172)) (_2!10523 (lexList!907 thiss!17113 rules!1846 (list!7432 (seqFromList!2247 lt!640654))))))))

(declare-fun b!1686935 () Bool)

(declare-fun e!1079981 () Bool)

(assert (=> b!1686935 (= e!1079981 (not (isEmpty!11562 (_1!10519 lt!641172))))))

(declare-fun b!1686936 () Bool)

(assert (=> b!1686936 (= e!1079982 (= (_2!10519 lt!641172) (seqFromList!2247 lt!640654)))))

(declare-fun b!1686937 () Bool)

(assert (=> b!1686937 (= e!1079982 e!1079981)))

(declare-fun res!756398 () Bool)

(assert (=> b!1686937 (= res!756398 (< (size!14726 (_2!10519 lt!641172)) (size!14726 (seqFromList!2247 lt!640654))))))

(assert (=> b!1686937 (=> (not res!756398) (not e!1079981))))

(assert (= (and d!513708 c!275496) b!1686937))

(assert (= (and d!513708 (not c!275496)) b!1686936))

(assert (= (and b!1686937 res!756398) b!1686935))

(assert (= (and d!513708 res!756399) b!1686933))

(assert (= (and b!1686933 res!756400) b!1686934))

(declare-fun m!2070859 () Bool)

(assert (=> b!1686934 m!2070859))

(assert (=> b!1686934 m!2069759))

(declare-fun m!2070861 () Bool)

(assert (=> b!1686934 m!2070861))

(assert (=> b!1686934 m!2070861))

(declare-fun m!2070863 () Bool)

(assert (=> b!1686934 m!2070863))

(declare-fun m!2070865 () Bool)

(assert (=> b!1686933 m!2070865))

(assert (=> b!1686933 m!2069759))

(assert (=> b!1686933 m!2070861))

(assert (=> b!1686933 m!2070861))

(assert (=> b!1686933 m!2070863))

(declare-fun m!2070867 () Bool)

(assert (=> d!513708 m!2070867))

(assert (=> d!513708 m!2069759))

(assert (=> d!513708 m!2069759))

(declare-fun m!2070869 () Bool)

(assert (=> d!513708 m!2070869))

(declare-fun m!2070871 () Bool)

(assert (=> b!1686935 m!2070871))

(declare-fun m!2070873 () Bool)

(assert (=> b!1686937 m!2070873))

(assert (=> b!1686937 m!2069759))

(declare-fun m!2070875 () Bool)

(assert (=> b!1686937 m!2070875))

(assert (=> b!1686458 d!513708))

(declare-fun d!513710 () Bool)

(assert (=> d!513710 (= (seqFromList!2247 lt!640654) (fromListB!1029 lt!640654))))

(declare-fun bs!399650 () Bool)

(assert (= bs!399650 d!513710))

(declare-fun m!2070877 () Bool)

(assert (=> bs!399650 m!2070877))

(assert (=> b!1686458 d!513710))

(declare-fun d!513712 () Bool)

(assert (=> d!513712 (= (head!3780 (originalCharacters!4069 (h!23889 (t!154811 tokens!457)))) (h!23886 (originalCharacters!4069 (h!23889 (t!154811 tokens!457)))))))

(assert (=> b!1686469 d!513712))

(declare-fun d!513714 () Bool)

(declare-fun e!1079985 () Bool)

(assert (=> d!513714 e!1079985))

(declare-fun res!756403 () Bool)

(assert (=> d!513714 (=> (not res!756403) (not e!1079985))))

(declare-fun lt!641175 () BalanceConc!12260)

(assert (=> d!513714 (= res!756403 (= (list!7432 lt!641175) (Cons!18485 (apply!5035 (charsOf!1904 (h!23889 (t!154811 tokens!457))) 0) Nil!18485)))))

(declare-fun singleton!803 (C!9340) BalanceConc!12260)

(assert (=> d!513714 (= lt!641175 (singleton!803 (apply!5035 (charsOf!1904 (h!23889 (t!154811 tokens!457))) 0)))))

(assert (=> d!513714 (= (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 tokens!457))) 0)) lt!641175)))

(declare-fun b!1686940 () Bool)

(declare-fun isBalanced!1930 (Conc!6158) Bool)

(assert (=> b!1686940 (= e!1079985 (isBalanced!1930 (c!275419 lt!641175)))))

(assert (= (and d!513714 res!756403) b!1686940))

(declare-fun m!2070879 () Bool)

(assert (=> d!513714 m!2070879))

(assert (=> d!513714 m!2069833))

(declare-fun m!2070881 () Bool)

(assert (=> d!513714 m!2070881))

(declare-fun m!2070883 () Bool)

(assert (=> b!1686940 m!2070883))

(assert (=> b!1686480 d!513714))

(declare-fun d!513716 () Bool)

(declare-fun lt!641210 () Bool)

(assert (=> d!513716 (= lt!641210 (prefixMatch!496 lt!640647 (list!7432 (++!5066 lt!640663 lt!640642))))))

(declare-datatypes ((List!18563 0))(
  ( (Nil!18493) (Cons!18493 (h!23894 Regex!4583) (t!154858 List!18563)) )
))
(declare-datatypes ((Context!1854 0))(
  ( (Context!1855 (exprs!1427 List!18563)) )
))
(declare-fun prefixMatchZipperSequence!697 ((InoxSet Context!1854) BalanceConc!12260 Int) Bool)

(declare-fun focus!233 (Regex!4583) (InoxSet Context!1854))

(assert (=> d!513716 (= lt!641210 (prefixMatchZipperSequence!697 (focus!233 lt!640647) (++!5066 lt!640663 lt!640642) 0))))

(declare-fun lt!641208 () Unit!31839)

(declare-fun lt!641205 () Unit!31839)

(assert (=> d!513716 (= lt!641208 lt!641205)))

(declare-fun lt!641213 () List!18555)

(declare-fun lt!641211 () (InoxSet Context!1854))

(declare-fun prefixMatchZipper!212 ((InoxSet Context!1854) List!18555) Bool)

(assert (=> d!513716 (= (prefixMatch!496 lt!640647 lt!641213) (prefixMatchZipper!212 lt!641211 lt!641213))))

(declare-datatypes ((List!18564 0))(
  ( (Nil!18494) (Cons!18494 (h!23895 Context!1854) (t!154859 List!18564)) )
))
(declare-fun lt!641209 () List!18564)

(declare-fun prefixMatchZipperRegexEquiv!212 ((InoxSet Context!1854) List!18564 Regex!4583 List!18555) Unit!31839)

(assert (=> d!513716 (= lt!641205 (prefixMatchZipperRegexEquiv!212 lt!641211 lt!641209 lt!640647 lt!641213))))

(assert (=> d!513716 (= lt!641213 (list!7432 (++!5066 lt!640663 lt!640642)))))

(declare-fun toList!973 ((InoxSet Context!1854)) List!18564)

(assert (=> d!513716 (= lt!641209 (toList!973 (focus!233 lt!640647)))))

(assert (=> d!513716 (= lt!641211 (focus!233 lt!640647))))

(declare-fun lt!641214 () Unit!31839)

(declare-fun lt!641207 () Unit!31839)

(assert (=> d!513716 (= lt!641214 lt!641207)))

(declare-fun lt!641212 () Int)

(declare-fun lt!641206 () (InoxSet Context!1854))

(declare-fun dropList!739 (BalanceConc!12260 Int) List!18555)

(assert (=> d!513716 (= (prefixMatchZipper!212 lt!641206 (dropList!739 (++!5066 lt!640663 lt!640642) lt!641212)) (prefixMatchZipperSequence!697 lt!641206 (++!5066 lt!640663 lt!640642) lt!641212))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!212 ((InoxSet Context!1854) BalanceConc!12260 Int) Unit!31839)

(assert (=> d!513716 (= lt!641207 (lemmaprefixMatchZipperSequenceEquivalent!212 lt!641206 (++!5066 lt!640663 lt!640642) lt!641212))))

(assert (=> d!513716 (= lt!641212 0)))

(assert (=> d!513716 (= lt!641206 (focus!233 lt!640647))))

(declare-fun validRegex!1842 (Regex!4583) Bool)

(assert (=> d!513716 (validRegex!1842 lt!640647)))

(assert (=> d!513716 (= (prefixMatchZipperSequence!695 lt!640647 (++!5066 lt!640663 lt!640642)) lt!641210)))

(declare-fun bs!399653 () Bool)

(assert (= bs!399653 d!513716))

(declare-fun m!2070905 () Bool)

(assert (=> bs!399653 m!2070905))

(declare-fun m!2070907 () Bool)

(assert (=> bs!399653 m!2070907))

(declare-fun m!2070909 () Bool)

(assert (=> bs!399653 m!2070909))

(declare-fun m!2070911 () Bool)

(assert (=> bs!399653 m!2070911))

(declare-fun m!2070913 () Bool)

(assert (=> bs!399653 m!2070913))

(assert (=> bs!399653 m!2070909))

(declare-fun m!2070915 () Bool)

(assert (=> bs!399653 m!2070915))

(assert (=> bs!399653 m!2069829))

(assert (=> bs!399653 m!2070905))

(assert (=> bs!399653 m!2070909))

(assert (=> bs!399653 m!2069829))

(declare-fun m!2070917 () Bool)

(assert (=> bs!399653 m!2070917))

(assert (=> bs!399653 m!2069829))

(declare-fun m!2070919 () Bool)

(assert (=> bs!399653 m!2070919))

(declare-fun m!2070923 () Bool)

(assert (=> bs!399653 m!2070923))

(declare-fun m!2070925 () Bool)

(assert (=> bs!399653 m!2070925))

(declare-fun m!2070929 () Bool)

(assert (=> bs!399653 m!2070929))

(declare-fun m!2070933 () Bool)

(assert (=> bs!399653 m!2070933))

(assert (=> bs!399653 m!2069829))

(assert (=> bs!399653 m!2070929))

(assert (=> bs!399653 m!2069829))

(declare-fun m!2070935 () Bool)

(assert (=> bs!399653 m!2070935))

(assert (=> b!1686480 d!513716))

(declare-fun d!513728 () Bool)

(declare-fun lt!641218 () C!9340)

(declare-fun apply!5044 (List!18555 Int) C!9340)

(assert (=> d!513728 (= lt!641218 (apply!5044 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) 0))))

(declare-fun apply!5045 (Conc!6158 Int) C!9340)

(assert (=> d!513728 (= lt!641218 (apply!5045 (c!275419 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) 0))))

(declare-fun e!1080019 () Bool)

(assert (=> d!513728 e!1080019))

(declare-fun res!756411 () Bool)

(assert (=> d!513728 (=> (not res!756411) (not e!1080019))))

(assert (=> d!513728 (= res!756411 (<= 0 0))))

(assert (=> d!513728 (= (apply!5035 (charsOf!1904 (h!23889 (t!154811 tokens!457))) 0) lt!641218)))

(declare-fun b!1686987 () Bool)

(assert (=> b!1686987 (= e!1080019 (< 0 (size!14726 (charsOf!1904 (h!23889 (t!154811 tokens!457))))))))

(assert (= (and d!513728 res!756411) b!1686987))

(assert (=> d!513728 m!2069837))

(assert (=> d!513728 m!2070335))

(assert (=> d!513728 m!2070335))

(declare-fun m!2070947 () Bool)

(assert (=> d!513728 m!2070947))

(declare-fun m!2070949 () Bool)

(assert (=> d!513728 m!2070949))

(assert (=> b!1686987 m!2069837))

(assert (=> b!1686987 m!2070845))

(assert (=> b!1686480 d!513728))

(declare-fun b!1687019 () Bool)

(declare-fun res!756423 () Bool)

(declare-fun e!1080042 () Bool)

(assert (=> b!1687019 (=> (not res!756423) (not e!1080042))))

(declare-fun height!987 (Conc!6158) Int)

(declare-fun ++!5068 (Conc!6158 Conc!6158) Conc!6158)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1687019 (= res!756423 (<= (height!987 (++!5068 (c!275419 lt!640663) (c!275419 lt!640642))) (+ (max!0 (height!987 (c!275419 lt!640663)) (height!987 (c!275419 lt!640642))) 1)))))

(declare-fun b!1687018 () Bool)

(declare-fun res!756420 () Bool)

(assert (=> b!1687018 (=> (not res!756420) (not e!1080042))))

(assert (=> b!1687018 (= res!756420 (isBalanced!1930 (++!5068 (c!275419 lt!640663) (c!275419 lt!640642))))))

(declare-fun b!1687021 () Bool)

(declare-fun lt!641221 () BalanceConc!12260)

(assert (=> b!1687021 (= e!1080042 (= (list!7432 lt!641221) (++!5065 (list!7432 lt!640663) (list!7432 lt!640642))))))

(declare-fun d!513734 () Bool)

(assert (=> d!513734 e!1080042))

(declare-fun res!756421 () Bool)

(assert (=> d!513734 (=> (not res!756421) (not e!1080042))))

(declare-fun appendAssocInst!497 (Conc!6158 Conc!6158) Bool)

(assert (=> d!513734 (= res!756421 (appendAssocInst!497 (c!275419 lt!640663) (c!275419 lt!640642)))))

(assert (=> d!513734 (= lt!641221 (BalanceConc!12261 (++!5068 (c!275419 lt!640663) (c!275419 lt!640642))))))

(assert (=> d!513734 (= (++!5066 lt!640663 lt!640642) lt!641221)))

(declare-fun b!1687020 () Bool)

(declare-fun res!756422 () Bool)

(assert (=> b!1687020 (=> (not res!756422) (not e!1080042))))

(assert (=> b!1687020 (= res!756422 (>= (height!987 (++!5068 (c!275419 lt!640663) (c!275419 lt!640642))) (max!0 (height!987 (c!275419 lt!640663)) (height!987 (c!275419 lt!640642)))))))

(assert (= (and d!513734 res!756421) b!1687018))

(assert (= (and b!1687018 res!756420) b!1687019))

(assert (= (and b!1687019 res!756423) b!1687020))

(assert (= (and b!1687020 res!756422) b!1687021))

(declare-fun m!2070959 () Bool)

(assert (=> b!1687019 m!2070959))

(declare-fun m!2070961 () Bool)

(assert (=> b!1687019 m!2070961))

(declare-fun m!2070963 () Bool)

(assert (=> b!1687019 m!2070963))

(assert (=> b!1687019 m!2070959))

(declare-fun m!2070965 () Bool)

(assert (=> b!1687019 m!2070965))

(assert (=> b!1687019 m!2070963))

(assert (=> b!1687019 m!2070961))

(declare-fun m!2070967 () Bool)

(assert (=> b!1687019 m!2070967))

(assert (=> b!1687020 m!2070959))

(assert (=> b!1687020 m!2070961))

(assert (=> b!1687020 m!2070963))

(assert (=> b!1687020 m!2070959))

(assert (=> b!1687020 m!2070965))

(assert (=> b!1687020 m!2070963))

(assert (=> b!1687020 m!2070961))

(assert (=> b!1687020 m!2070967))

(assert (=> b!1687018 m!2070959))

(assert (=> b!1687018 m!2070959))

(declare-fun m!2070969 () Bool)

(assert (=> b!1687018 m!2070969))

(declare-fun m!2070971 () Bool)

(assert (=> d!513734 m!2070971))

(assert (=> d!513734 m!2070959))

(declare-fun m!2070973 () Bool)

(assert (=> b!1687021 m!2070973))

(assert (=> b!1687021 m!2069753))

(assert (=> b!1687021 m!2069809))

(assert (=> b!1687021 m!2069753))

(assert (=> b!1687021 m!2069809))

(declare-fun m!2070975 () Bool)

(assert (=> b!1687021 m!2070975))

(assert (=> b!1686480 d!513734))

(declare-fun d!513736 () Bool)

(declare-fun lt!641224 () Unit!31839)

(declare-fun lemma!298 (List!18557 LexerInterface!2884 List!18557) Unit!31839)

(assert (=> d!513736 (= lt!641224 (lemma!298 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!68344 () Int)

(declare-fun generalisedUnion!306 (List!18563) Regex!4583)

(declare-fun map!3805 (List!18557 Int) List!18563)

(assert (=> d!513736 (= (rulesRegex!637 thiss!17113 rules!1846) (generalisedUnion!306 (map!3805 rules!1846 lambda!68344)))))

(declare-fun bs!399657 () Bool)

(assert (= bs!399657 d!513736))

(declare-fun m!2070977 () Bool)

(assert (=> bs!399657 m!2070977))

(declare-fun m!2070979 () Bool)

(assert (=> bs!399657 m!2070979))

(assert (=> bs!399657 m!2070979))

(declare-fun m!2070981 () Bool)

(assert (=> bs!399657 m!2070981))

(assert (=> b!1686480 d!513736))

(declare-fun d!513738 () Bool)

(declare-fun lt!641225 () BalanceConc!12260)

(assert (=> d!513738 (= (list!7432 lt!641225) (originalCharacters!4069 (h!23889 (t!154811 tokens!457))))))

(assert (=> d!513738 (= lt!641225 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (value!102440 (h!23889 (t!154811 tokens!457)))))))

(assert (=> d!513738 (= (charsOf!1904 (h!23889 (t!154811 tokens!457))) lt!641225)))

(declare-fun b_lambda!53049 () Bool)

(assert (=> (not b_lambda!53049) (not d!513738)))

(declare-fun tb!97859 () Bool)

(declare-fun t!154843 () Bool)

(assert (=> (and b!1686461 (= (toChars!4593 (transformation!3255 (h!23888 rules!1846))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457)))))) t!154843) tb!97859))

(declare-fun b!1687022 () Bool)

(declare-fun e!1080043 () Bool)

(declare-fun tp!484380 () Bool)

(assert (=> b!1687022 (= e!1080043 (and (inv!23853 (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (value!102440 (h!23889 (t!154811 tokens!457)))))) tp!484380))))

(declare-fun result!117954 () Bool)

(assert (=> tb!97859 (= result!117954 (and (inv!23854 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (value!102440 (h!23889 (t!154811 tokens!457))))) e!1080043))))

(assert (= tb!97859 b!1687022))

(declare-fun m!2070983 () Bool)

(assert (=> b!1687022 m!2070983))

(declare-fun m!2070985 () Bool)

(assert (=> tb!97859 m!2070985))

(assert (=> d!513738 t!154843))

(declare-fun b_and!120569 () Bool)

(assert (= b_and!120557 (and (=> t!154843 result!117954) b_and!120569)))

(declare-fun t!154845 () Bool)

(declare-fun tb!97861 () Bool)

(assert (=> (and b!1686468 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457)))))) t!154845) tb!97861))

(declare-fun result!117956 () Bool)

(assert (= result!117956 result!117954))

(assert (=> d!513738 t!154845))

(declare-fun b_and!120571 () Bool)

(assert (= b_and!120559 (and (=> t!154845 result!117956) b_and!120571)))

(declare-fun m!2070987 () Bool)

(assert (=> d!513738 m!2070987))

(declare-fun m!2070989 () Bool)

(assert (=> d!513738 m!2070989))

(assert (=> b!1686480 d!513738))

(declare-fun d!513740 () Bool)

(assert (=> d!513740 (= (separableTokensPredicate!824 thiss!17113 (h!23889 tokens!457) (h!23889 (t!154811 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!695 (rulesRegex!637 thiss!17113 rules!1846) (++!5066 (charsOf!1904 (h!23889 tokens!457)) (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 tokens!457))) 0))))))))

(declare-fun bs!399658 () Bool)

(assert (= bs!399658 d!513740))

(assert (=> bs!399658 m!2069827))

(assert (=> bs!399658 m!2069837))

(assert (=> bs!399658 m!2069751))

(assert (=> bs!399658 m!2069835))

(declare-fun m!2070991 () Bool)

(assert (=> bs!399658 m!2070991))

(assert (=> bs!399658 m!2069751))

(assert (=> bs!399658 m!2069837))

(assert (=> bs!399658 m!2069833))

(assert (=> bs!399658 m!2069833))

(assert (=> bs!399658 m!2069835))

(assert (=> bs!399658 m!2069827))

(assert (=> bs!399658 m!2070991))

(declare-fun m!2070993 () Bool)

(assert (=> bs!399658 m!2070993))

(assert (=> b!1686467 d!513740))

(declare-fun d!513742 () Bool)

(assert (=> d!513742 (= (isDefined!2917 lt!640652) (not (isEmpty!11573 lt!640652)))))

(declare-fun bs!399659 () Bool)

(assert (= bs!399659 d!513742))

(declare-fun m!2070995 () Bool)

(assert (=> bs!399659 m!2070995))

(assert (=> b!1686478 d!513742))

(declare-fun b!1687031 () Bool)

(declare-fun res!756429 () Bool)

(declare-fun e!1080048 () Bool)

(assert (=> b!1687031 (=> (not res!756429) (not e!1080048))))

(declare-fun lt!641264 () Token!6076)

(declare-datatypes ((Option!3571 0))(
  ( (None!3570) (Some!3570 (v!24897 Rule!6310)) )
))
(declare-fun get!5424 (Option!3571) Rule!6310)

(declare-fun getRuleFromTag!345 (LexerInterface!2884 List!18557 String!21057) Option!3571)

(assert (=> b!1687031 (= res!756429 (matchR!2072 (regex!3255 (get!5424 (getRuleFromTag!345 thiss!17113 rules!1846 (tag!3545 (rule!5161 lt!641264))))) (list!7432 (charsOf!1904 lt!641264))))))

(declare-fun b!1687034 () Bool)

(declare-fun e!1080049 () Unit!31839)

(declare-fun Unit!31877 () Unit!31839)

(assert (=> b!1687034 (= e!1080049 Unit!31877)))

(declare-fun b!1687033 () Bool)

(declare-fun Unit!31878 () Unit!31839)

(assert (=> b!1687033 (= e!1080049 Unit!31878)))

(declare-fun lt!641271 () List!18555)

(assert (=> b!1687033 (= lt!641271 (++!5065 lt!640654 lt!640662))))

(declare-fun lt!641272 () Unit!31839)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!239 (LexerInterface!2884 Rule!6310 List!18557 List!18555) Unit!31839)

(assert (=> b!1687033 (= lt!641272 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!239 thiss!17113 (rule!5161 lt!641264) rules!1846 lt!641271))))

(assert (=> b!1687033 (isEmpty!11573 (maxPrefixOneRule!845 thiss!17113 (rule!5161 lt!641264) lt!641271))))

(declare-fun lt!641274 () Unit!31839)

(assert (=> b!1687033 (= lt!641274 lt!641272)))

(declare-fun lt!641265 () List!18555)

(assert (=> b!1687033 (= lt!641265 (list!7432 (charsOf!1904 lt!641264)))))

(declare-fun lt!641273 () Unit!31839)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!235 (LexerInterface!2884 Rule!6310 List!18555 List!18555) Unit!31839)

(assert (=> b!1687033 (= lt!641273 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!235 thiss!17113 (rule!5161 lt!641264) lt!641265 (++!5065 lt!640654 lt!640662)))))

(assert (=> b!1687033 (not (matchR!2072 (regex!3255 (rule!5161 lt!641264)) lt!641265))))

(declare-fun lt!641263 () Unit!31839)

(assert (=> b!1687033 (= lt!641263 lt!641273)))

(assert (=> b!1687033 false))

(declare-fun b!1687032 () Bool)

(assert (=> b!1687032 (= e!1080048 (= (rule!5161 lt!641264) (get!5424 (getRuleFromTag!345 thiss!17113 rules!1846 (tag!3545 (rule!5161 lt!641264))))))))

(declare-fun d!513744 () Bool)

(assert (=> d!513744 (isDefined!2917 (maxPrefix!1444 thiss!17113 rules!1846 (++!5065 lt!640654 lt!640662)))))

(declare-fun lt!641260 () Unit!31839)

(assert (=> d!513744 (= lt!641260 e!1080049)))

(declare-fun c!275503 () Bool)

(assert (=> d!513744 (= c!275503 (isEmpty!11573 (maxPrefix!1444 thiss!17113 rules!1846 (++!5065 lt!640654 lt!640662))))))

(declare-fun lt!641266 () Unit!31839)

(declare-fun lt!641270 () Unit!31839)

(assert (=> d!513744 (= lt!641266 lt!641270)))

(assert (=> d!513744 e!1080048))

(declare-fun res!756428 () Bool)

(assert (=> d!513744 (=> (not res!756428) (not e!1080048))))

(declare-fun isDefined!2920 (Option!3571) Bool)

(assert (=> d!513744 (= res!756428 (isDefined!2920 (getRuleFromTag!345 thiss!17113 rules!1846 (tag!3545 (rule!5161 lt!641264)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!345 (LexerInterface!2884 List!18557 List!18555 Token!6076) Unit!31839)

(assert (=> d!513744 (= lt!641270 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!345 thiss!17113 rules!1846 lt!640654 lt!641264))))

(declare-fun lt!641267 () Unit!31839)

(declare-fun lt!641269 () Unit!31839)

(assert (=> d!513744 (= lt!641267 lt!641269)))

(declare-fun lt!641261 () List!18555)

(assert (=> d!513744 (isPrefix!1513 lt!641261 (++!5065 lt!640654 lt!640662))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!231 (List!18555 List!18555 List!18555) Unit!31839)

(assert (=> d!513744 (= lt!641269 (lemmaPrefixStaysPrefixWhenAddingToSuffix!231 lt!641261 lt!640654 lt!640662))))

(assert (=> d!513744 (= lt!641261 (list!7432 (charsOf!1904 lt!641264)))))

(declare-fun lt!641276 () Unit!31839)

(declare-fun lt!641275 () Unit!31839)

(assert (=> d!513744 (= lt!641276 lt!641275)))

(declare-fun lt!641268 () List!18555)

(declare-fun lt!641262 () List!18555)

(assert (=> d!513744 (isPrefix!1513 lt!641268 (++!5065 lt!641268 lt!641262))))

(assert (=> d!513744 (= lt!641275 (lemmaConcatTwoListThenFirstIsPrefix!1034 lt!641268 lt!641262))))

(assert (=> d!513744 (= lt!641262 (_2!10520 (get!5420 (maxPrefix!1444 thiss!17113 rules!1846 lt!640654))))))

(assert (=> d!513744 (= lt!641268 (list!7432 (charsOf!1904 lt!641264)))))

(assert (=> d!513744 (= lt!641264 (head!3782 (list!7431 (_1!10519 (lex!1368 thiss!17113 rules!1846 (seqFromList!2247 lt!640654))))))))

(assert (=> d!513744 (not (isEmpty!11563 rules!1846))))

(assert (=> d!513744 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!446 thiss!17113 rules!1846 lt!640654 lt!640662) lt!641260)))

(assert (= (and d!513744 res!756428) b!1687031))

(assert (= (and b!1687031 res!756429) b!1687032))

(assert (= (and d!513744 c!275503) b!1687033))

(assert (= (and d!513744 (not c!275503)) b!1687034))

(declare-fun m!2070997 () Bool)

(assert (=> b!1687031 m!2070997))

(declare-fun m!2070999 () Bool)

(assert (=> b!1687031 m!2070999))

(declare-fun m!2071001 () Bool)

(assert (=> b!1687031 m!2071001))

(declare-fun m!2071003 () Bool)

(assert (=> b!1687031 m!2071003))

(assert (=> b!1687031 m!2071001))

(declare-fun m!2071005 () Bool)

(assert (=> b!1687031 m!2071005))

(assert (=> b!1687031 m!2070997))

(assert (=> b!1687031 m!2071005))

(declare-fun m!2071007 () Bool)

(assert (=> b!1687033 m!2071007))

(declare-fun m!2071009 () Bool)

(assert (=> b!1687033 m!2071009))

(assert (=> b!1687033 m!2069749))

(assert (=> b!1687033 m!2069749))

(declare-fun m!2071011 () Bool)

(assert (=> b!1687033 m!2071011))

(declare-fun m!2071013 () Bool)

(assert (=> b!1687033 m!2071013))

(assert (=> b!1687033 m!2071005))

(assert (=> b!1687033 m!2070997))

(assert (=> b!1687033 m!2071005))

(assert (=> b!1687033 m!2071009))

(declare-fun m!2071015 () Bool)

(assert (=> b!1687033 m!2071015))

(assert (=> b!1687032 m!2071001))

(assert (=> b!1687032 m!2071001))

(assert (=> b!1687032 m!2071003))

(assert (=> d!513744 m!2069749))

(declare-fun m!2071017 () Bool)

(assert (=> d!513744 m!2071017))

(declare-fun m!2071019 () Bool)

(assert (=> d!513744 m!2071019))

(assert (=> d!513744 m!2071001))

(declare-fun m!2071021 () Bool)

(assert (=> d!513744 m!2071021))

(declare-fun m!2071023 () Bool)

(assert (=> d!513744 m!2071023))

(assert (=> d!513744 m!2069749))

(assert (=> d!513744 m!2069847))

(assert (=> d!513744 m!2071017))

(declare-fun m!2071025 () Bool)

(assert (=> d!513744 m!2071025))

(assert (=> d!513744 m!2069759))

(assert (=> d!513744 m!2069761))

(declare-fun m!2071027 () Bool)

(assert (=> d!513744 m!2071027))

(assert (=> d!513744 m!2069749))

(declare-fun m!2071029 () Bool)

(assert (=> d!513744 m!2071029))

(assert (=> d!513744 m!2069733))

(assert (=> d!513744 m!2069847))

(declare-fun m!2071031 () Bool)

(assert (=> d!513744 m!2071031))

(declare-fun m!2071033 () Bool)

(assert (=> d!513744 m!2071033))

(assert (=> d!513744 m!2069759))

(assert (=> d!513744 m!2070853))

(declare-fun m!2071035 () Bool)

(assert (=> d!513744 m!2071035))

(assert (=> d!513744 m!2070853))

(assert (=> d!513744 m!2071017))

(declare-fun m!2071037 () Bool)

(assert (=> d!513744 m!2071037))

(assert (=> d!513744 m!2071001))

(assert (=> d!513744 m!2071005))

(assert (=> d!513744 m!2070997))

(assert (=> d!513744 m!2071005))

(assert (=> d!513744 m!2071033))

(declare-fun m!2071039 () Bool)

(assert (=> d!513744 m!2071039))

(assert (=> b!1686478 d!513744))

(declare-fun b!1687046 () Bool)

(declare-fun e!1080052 () Bool)

(declare-fun tp!484394 () Bool)

(declare-fun tp!484393 () Bool)

(assert (=> b!1687046 (= e!1080052 (and tp!484394 tp!484393))))

(declare-fun b!1687047 () Bool)

(declare-fun tp!484391 () Bool)

(assert (=> b!1687047 (= e!1080052 tp!484391)))

(declare-fun b!1687045 () Bool)

(declare-fun tp_is_empty!7437 () Bool)

(assert (=> b!1687045 (= e!1080052 tp_is_empty!7437)))

(assert (=> b!1686475 (= tp!484320 e!1080052)))

(declare-fun b!1687048 () Bool)

(declare-fun tp!484392 () Bool)

(declare-fun tp!484395 () Bool)

(assert (=> b!1687048 (= e!1080052 (and tp!484392 tp!484395))))

(assert (= (and b!1686475 ((_ is ElementMatch!4583) (regex!3255 (rule!5161 (h!23889 tokens!457))))) b!1687045))

(assert (= (and b!1686475 ((_ is Concat!7929) (regex!3255 (rule!5161 (h!23889 tokens!457))))) b!1687046))

(assert (= (and b!1686475 ((_ is Star!4583) (regex!3255 (rule!5161 (h!23889 tokens!457))))) b!1687047))

(assert (= (and b!1686475 ((_ is Union!4583) (regex!3255 (rule!5161 (h!23889 tokens!457))))) b!1687048))

(declare-fun b!1687053 () Bool)

(declare-fun e!1080055 () Bool)

(declare-fun tp!484398 () Bool)

(assert (=> b!1687053 (= e!1080055 (and tp_is_empty!7437 tp!484398))))

(assert (=> b!1686460 (= tp!484315 e!1080055)))

(assert (= (and b!1686460 ((_ is Cons!18485) (originalCharacters!4069 (h!23889 tokens!457)))) b!1687053))

(declare-fun b!1687055 () Bool)

(declare-fun e!1080056 () Bool)

(declare-fun tp!484402 () Bool)

(declare-fun tp!484401 () Bool)

(assert (=> b!1687055 (= e!1080056 (and tp!484402 tp!484401))))

(declare-fun b!1687056 () Bool)

(declare-fun tp!484399 () Bool)

(assert (=> b!1687056 (= e!1080056 tp!484399)))

(declare-fun b!1687054 () Bool)

(assert (=> b!1687054 (= e!1080056 tp_is_empty!7437)))

(assert (=> b!1686474 (= tp!484321 e!1080056)))

(declare-fun b!1687057 () Bool)

(declare-fun tp!484400 () Bool)

(declare-fun tp!484403 () Bool)

(assert (=> b!1687057 (= e!1080056 (and tp!484400 tp!484403))))

(assert (= (and b!1686474 ((_ is ElementMatch!4583) (regex!3255 (h!23888 rules!1846)))) b!1687054))

(assert (= (and b!1686474 ((_ is Concat!7929) (regex!3255 (h!23888 rules!1846)))) b!1687055))

(assert (= (and b!1686474 ((_ is Star!4583) (regex!3255 (h!23888 rules!1846)))) b!1687056))

(assert (= (and b!1686474 ((_ is Union!4583) (regex!3255 (h!23888 rules!1846)))) b!1687057))

(declare-fun b!1687068 () Bool)

(declare-fun b_free!45671 () Bool)

(declare-fun b_next!46375 () Bool)

(assert (=> b!1687068 (= b_free!45671 (not b_next!46375))))

(declare-fun tp!484413 () Bool)

(declare-fun b_and!120573 () Bool)

(assert (=> b!1687068 (= tp!484413 b_and!120573)))

(declare-fun b_free!45673 () Bool)

(declare-fun b_next!46377 () Bool)

(assert (=> b!1687068 (= b_free!45673 (not b_next!46377))))

(declare-fun t!154847 () Bool)

(declare-fun tb!97863 () Bool)

(assert (=> (and b!1687068 (= (toChars!4593 (transformation!3255 (h!23888 (t!154810 rules!1846)))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457))))) t!154847) tb!97863))

(declare-fun result!117964 () Bool)

(assert (= result!117964 result!117932))

(assert (=> b!1686869 t!154847))

(assert (=> d!513686 t!154847))

(declare-fun t!154849 () Bool)

(declare-fun tb!97865 () Bool)

(assert (=> (and b!1687068 (= (toChars!4593 (transformation!3255 (h!23888 (t!154810 rules!1846)))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457)))))) t!154849) tb!97865))

(declare-fun result!117966 () Bool)

(assert (= result!117966 result!117954))

(assert (=> d!513738 t!154849))

(declare-fun tp!484412 () Bool)

(declare-fun b_and!120575 () Bool)

(assert (=> b!1687068 (= tp!484412 (and (=> t!154847 result!117964) (=> t!154849 result!117966) b_and!120575))))

(declare-fun e!1080067 () Bool)

(assert (=> b!1687068 (= e!1080067 (and tp!484413 tp!484412))))

(declare-fun tp!484414 () Bool)

(declare-fun b!1687067 () Bool)

(declare-fun e!1080066 () Bool)

(assert (=> b!1687067 (= e!1080066 (and tp!484414 (inv!23846 (tag!3545 (h!23888 (t!154810 rules!1846)))) (inv!23849 (transformation!3255 (h!23888 (t!154810 rules!1846)))) e!1080067))))

(declare-fun b!1687066 () Bool)

(declare-fun e!1080065 () Bool)

(declare-fun tp!484415 () Bool)

(assert (=> b!1687066 (= e!1080065 (and e!1080066 tp!484415))))

(assert (=> b!1686473 (= tp!484314 e!1080065)))

(assert (= b!1687067 b!1687068))

(assert (= b!1687066 b!1687067))

(assert (= (and b!1686473 ((_ is Cons!18487) (t!154810 rules!1846))) b!1687066))

(declare-fun m!2071041 () Bool)

(assert (=> b!1687067 m!2071041))

(declare-fun m!2071043 () Bool)

(assert (=> b!1687067 m!2071043))

(declare-fun b!1687082 () Bool)

(declare-fun b_free!45675 () Bool)

(declare-fun b_next!46379 () Bool)

(assert (=> b!1687082 (= b_free!45675 (not b_next!46379))))

(declare-fun tp!484428 () Bool)

(declare-fun b_and!120577 () Bool)

(assert (=> b!1687082 (= tp!484428 b_and!120577)))

(declare-fun b_free!45677 () Bool)

(declare-fun b_next!46381 () Bool)

(assert (=> b!1687082 (= b_free!45677 (not b_next!46381))))

(declare-fun t!154851 () Bool)

(declare-fun tb!97867 () Bool)

(assert (=> (and b!1687082 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457))))) t!154851) tb!97867))

(declare-fun result!117970 () Bool)

(assert (= result!117970 result!117932))

(assert (=> b!1686869 t!154851))

(assert (=> d!513686 t!154851))

(declare-fun t!154853 () Bool)

(declare-fun tb!97869 () Bool)

(assert (=> (and b!1687082 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457)))))) t!154853) tb!97869))

(declare-fun result!117972 () Bool)

(assert (= result!117972 result!117954))

(assert (=> d!513738 t!154853))

(declare-fun tp!484427 () Bool)

(declare-fun b_and!120579 () Bool)

(assert (=> b!1687082 (= tp!484427 (and (=> t!154851 result!117970) (=> t!154853 result!117972) b_and!120579))))

(declare-fun e!1080081 () Bool)

(declare-fun b!1687081 () Bool)

(declare-fun tp!484430 () Bool)

(declare-fun e!1080086 () Bool)

(assert (=> b!1687081 (= e!1080086 (and tp!484430 (inv!23846 (tag!3545 (rule!5161 (h!23889 (t!154811 tokens!457))))) (inv!23849 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) e!1080081))))

(assert (=> b!1687082 (= e!1080081 (and tp!484428 tp!484427))))

(declare-fun e!1080083 () Bool)

(declare-fun tp!484429 () Bool)

(declare-fun b!1687080 () Bool)

(assert (=> b!1687080 (= e!1080083 (and (inv!21 (value!102440 (h!23889 (t!154811 tokens!457)))) e!1080086 tp!484429))))

(declare-fun e!1080085 () Bool)

(assert (=> b!1686484 (= tp!484322 e!1080085)))

(declare-fun tp!484426 () Bool)

(declare-fun b!1687079 () Bool)

(assert (=> b!1687079 (= e!1080085 (and (inv!23850 (h!23889 (t!154811 tokens!457))) e!1080083 tp!484426))))

(assert (= b!1687081 b!1687082))

(assert (= b!1687080 b!1687081))

(assert (= b!1687079 b!1687080))

(assert (= (and b!1686484 ((_ is Cons!18488) (t!154811 tokens!457))) b!1687079))

(declare-fun m!2071045 () Bool)

(assert (=> b!1687081 m!2071045))

(declare-fun m!2071047 () Bool)

(assert (=> b!1687081 m!2071047))

(declare-fun m!2071049 () Bool)

(assert (=> b!1687080 m!2071049))

(declare-fun m!2071051 () Bool)

(assert (=> b!1687079 m!2071051))

(declare-fun b_lambda!53051 () Bool)

(assert (= b_lambda!53039 (or (and b!1686461 b_free!45657 (= (toChars!4593 (transformation!3255 (h!23888 rules!1846))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))))) (and b!1686468 b_free!45661) (and b!1687068 b_free!45673 (= (toChars!4593 (transformation!3255 (h!23888 (t!154810 rules!1846)))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))))) (and b!1687082 b_free!45677 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))))) b_lambda!53051)))

(declare-fun b_lambda!53053 () Bool)

(assert (= b_lambda!53041 (or (and b!1686461 b_free!45657 (= (toChars!4593 (transformation!3255 (h!23888 rules!1846))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))))) (and b!1686468 b_free!45661) (and b!1687068 b_free!45673 (= (toChars!4593 (transformation!3255 (h!23888 (t!154810 rules!1846)))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))))) (and b!1687082 b_free!45677 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))))) b_lambda!53053)))

(declare-fun b_lambda!53055 () Bool)

(assert (= b_lambda!53049 (or (and b!1686461 b_free!45657 (= (toChars!4593 (transformation!3255 (h!23888 rules!1846))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))))) (and b!1686468 b_free!45661 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))))) (and b!1687068 b_free!45673 (= (toChars!4593 (transformation!3255 (h!23888 (t!154810 rules!1846)))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))))) (and b!1687082 b_free!45677) b_lambda!53055)))

(check-sat (not b!1686931) (not b!1686883) (not d!513716) (not d!513632) (not d!513610) (not d!513706) (not b!1686863) b_and!120573 tp_is_empty!7437 (not d!513728) b_and!120571 (not d!513630) (not b!1686632) (not d!513736) (not d!513590) (not b!1686836) (not bm!107801) (not d!513554) (not b!1686834) (not d!513708) (not d!513522) (not b!1686933) (not b!1686746) (not d!513744) (not b!1686921) (not b!1687066) (not b!1686682) (not b!1686843) (not d!513672) (not d!513662) (not d!513686) (not b!1687055) (not b!1686937) (not b_next!46381) (not d!513620) b_and!120537 (not tb!97847) (not d!513698) (not b!1686897) (not b!1686870) (not b!1686761) (not d!513690) (not b!1687057) (not d!513734) (not b!1687032) (not d!513646) (not b!1686869) (not b!1687019) (not b!1686882) b_and!120533 (not b!1687046) (not d!513622) (not b!1686742) (not b!1686630) (not b!1686923) (not b!1686932) (not d!513652) (not d!513666) (not b!1686881) (not b!1687080) (not b!1687048) (not d!513714) (not d!513740) b_and!120577 (not b!1686626) (not b!1686838) (not b!1687053) (not d!513680) (not b!1686917) (not b!1686767) (not b!1686851) (not d!513634) (not b!1686743) (not bm!107803) (not b!1686790) (not d!513674) (not d!513688) (not b!1686934) (not d!513678) (not b!1686683) (not b!1686987) (not b!1686840) (not b!1686880) (not b!1686773) (not d!513626) (not d!513614) (not d!513676) (not b!1686845) (not b_next!46361) (not b!1686884) (not d!513648) (not b!1686731) (not b!1686875) b_and!120569 (not b!1686924) (not b!1686902) (not b!1686757) (not d!513520) (not b!1686730) (not d!513552) (not d!513700) (not b!1686631) (not b!1686935) (not b!1686841) (not d!513692) (not b!1687021) (not b!1686878) (not b!1687018) (not b_next!46377) (not b!1686842) (not b!1686772) (not d!513616) (not b!1686764) (not b!1686895) (not b_lambda!53053) b_and!120575 (not b!1687033) (not b!1686918) (not d!513682) (not b!1686862) (not d!513684) (not d!513608) (not d!513694) (not b!1686876) (not b_lambda!53055) (not b!1687081) (not b!1686759) (not b_next!46359) (not b!1686879) (not b!1687047) (not b!1686837) (not b_next!46363) (not b!1686906) (not b!1686926) (not b!1686864) (not d!513668) (not d!513738) (not b!1686789) (not b!1686850) (not b!1687031) (not b_lambda!53051) (not b!1686849) (not tb!97859) (not b!1686919) (not b!1687079) (not b!1686940) (not d!513742) (not b!1686846) (not b!1687067) (not d!513664) (not d!513644) (not b!1687020) (not bm!107802) (not d!513628) (not b!1686629) (not b!1686692) (not b!1686848) (not b!1686627) (not d!513588) (not b!1686741) (not d!513710) (not bm!107798) (not d!513618) (not b_next!46375) (not b!1686847) (not b_next!46365) (not b!1686839) (not b!1686628) b_and!120579 (not b!1687056) (not b!1687022) (not b_next!46379))
(check-sat b_and!120573 b_and!120571 b_and!120533 b_and!120577 (not b_next!46361) b_and!120569 (not b_next!46377) b_and!120575 (not b_next!46359) (not b_next!46363) (not b_next!46375) (not b_next!46365) (not b_next!46381) b_and!120537 b_and!120579 (not b_next!46379))
(get-model)

(declare-fun b!1687416 () Bool)

(declare-fun res!756583 () Bool)

(declare-fun e!1080276 () Bool)

(assert (=> b!1687416 (=> (not res!756583) (not e!1080276))))

(declare-fun lt!641398 () Option!3568)

(assert (=> b!1687416 (= res!756583 (= (value!102440 (_1!10520 (get!5420 lt!641398))) (apply!5039 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641398)))) (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!641398)))))))))

(declare-fun b!1687417 () Bool)

(declare-fun e!1080275 () Bool)

(declare-datatypes ((tuple2!18244 0))(
  ( (tuple2!18245 (_1!10524 List!18555) (_2!10524 List!18555)) )
))
(declare-fun findLongestMatchInner!376 (Regex!4583 List!18555 Int List!18555 List!18555 Int) tuple2!18244)

(assert (=> b!1687417 (= e!1080275 (matchR!2072 (regex!3255 (h!23888 rules!1846)) (_1!10524 (findLongestMatchInner!376 (regex!3255 (h!23888 rules!1846)) Nil!18485 (size!14724 Nil!18485) lt!640658 lt!640658 (size!14724 lt!640658)))))))

(declare-fun b!1687418 () Bool)

(declare-fun e!1080274 () Bool)

(assert (=> b!1687418 (= e!1080274 e!1080276)))

(declare-fun res!756584 () Bool)

(assert (=> b!1687418 (=> (not res!756584) (not e!1080276))))

(assert (=> b!1687418 (= res!756584 (matchR!2072 (regex!3255 (h!23888 rules!1846)) (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641398))))))))

(declare-fun b!1687419 () Bool)

(declare-fun res!756585 () Bool)

(assert (=> b!1687419 (=> (not res!756585) (not e!1080276))))

(assert (=> b!1687419 (= res!756585 (< (size!14724 (_2!10520 (get!5420 lt!641398))) (size!14724 lt!640658)))))

(declare-fun b!1687420 () Bool)

(assert (=> b!1687420 (= e!1080276 (= (size!14720 (_1!10520 (get!5420 lt!641398))) (size!14724 (originalCharacters!4069 (_1!10520 (get!5420 lt!641398))))))))

(declare-fun b!1687421 () Bool)

(declare-fun e!1080277 () Option!3568)

(declare-fun lt!641400 () tuple2!18244)

(assert (=> b!1687421 (= e!1080277 (Some!3567 (tuple2!18237 (Token!6077 (apply!5039 (transformation!3255 (h!23888 rules!1846)) (seqFromList!2247 (_1!10524 lt!641400))) (h!23888 rules!1846) (size!14726 (seqFromList!2247 (_1!10524 lt!641400))) (_1!10524 lt!641400)) (_2!10524 lt!641400))))))

(declare-fun lt!641401 () Unit!31839)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!360 (Regex!4583 List!18555) Unit!31839)

(assert (=> b!1687421 (= lt!641401 (longestMatchIsAcceptedByMatchOrIsEmpty!360 (regex!3255 (h!23888 rules!1846)) lt!640658))))

(declare-fun res!756579 () Bool)

(assert (=> b!1687421 (= res!756579 (isEmpty!11569 (_1!10524 (findLongestMatchInner!376 (regex!3255 (h!23888 rules!1846)) Nil!18485 (size!14724 Nil!18485) lt!640658 lt!640658 (size!14724 lt!640658)))))))

(assert (=> b!1687421 (=> res!756579 e!1080275)))

(assert (=> b!1687421 e!1080275))

(declare-fun lt!641399 () Unit!31839)

(assert (=> b!1687421 (= lt!641399 lt!641401)))

(declare-fun lt!641397 () Unit!31839)

(declare-fun lemmaSemiInverse!442 (TokenValueInjection!6350 BalanceConc!12260) Unit!31839)

(assert (=> b!1687421 (= lt!641397 (lemmaSemiInverse!442 (transformation!3255 (h!23888 rules!1846)) (seqFromList!2247 (_1!10524 lt!641400))))))

(declare-fun b!1687422 () Bool)

(declare-fun res!756582 () Bool)

(assert (=> b!1687422 (=> (not res!756582) (not e!1080276))))

(assert (=> b!1687422 (= res!756582 (= (rule!5161 (_1!10520 (get!5420 lt!641398))) (h!23888 rules!1846)))))

(declare-fun b!1687423 () Bool)

(declare-fun res!756581 () Bool)

(assert (=> b!1687423 (=> (not res!756581) (not e!1080276))))

(assert (=> b!1687423 (= res!756581 (= (++!5065 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641398)))) (_2!10520 (get!5420 lt!641398))) lt!640658))))

(declare-fun b!1687424 () Bool)

(assert (=> b!1687424 (= e!1080277 None!3567)))

(declare-fun d!513900 () Bool)

(assert (=> d!513900 e!1080274))

(declare-fun res!756580 () Bool)

(assert (=> d!513900 (=> res!756580 e!1080274)))

(assert (=> d!513900 (= res!756580 (isEmpty!11573 lt!641398))))

(assert (=> d!513900 (= lt!641398 e!1080277)))

(declare-fun c!275600 () Bool)

(assert (=> d!513900 (= c!275600 (isEmpty!11569 (_1!10524 lt!641400)))))

(declare-fun findLongestMatch!303 (Regex!4583 List!18555) tuple2!18244)

(assert (=> d!513900 (= lt!641400 (findLongestMatch!303 (regex!3255 (h!23888 rules!1846)) lt!640658))))

(declare-fun ruleValid!768 (LexerInterface!2884 Rule!6310) Bool)

(assert (=> d!513900 (ruleValid!768 thiss!17113 (h!23888 rules!1846))))

(assert (=> d!513900 (= (maxPrefixOneRule!845 thiss!17113 (h!23888 rules!1846) lt!640658) lt!641398)))

(assert (= (and d!513900 c!275600) b!1687424))

(assert (= (and d!513900 (not c!275600)) b!1687421))

(assert (= (and b!1687421 (not res!756579)) b!1687417))

(assert (= (and d!513900 (not res!756580)) b!1687418))

(assert (= (and b!1687418 res!756584) b!1687423))

(assert (= (and b!1687423 res!756581) b!1687419))

(assert (= (and b!1687419 res!756585) b!1687422))

(assert (= (and b!1687422 res!756582) b!1687416))

(assert (= (and b!1687416 res!756583) b!1687420))

(declare-fun m!2071635 () Bool)

(assert (=> b!1687417 m!2071635))

(assert (=> b!1687417 m!2070715))

(assert (=> b!1687417 m!2071635))

(assert (=> b!1687417 m!2070715))

(declare-fun m!2071637 () Bool)

(assert (=> b!1687417 m!2071637))

(declare-fun m!2071639 () Bool)

(assert (=> b!1687417 m!2071639))

(declare-fun m!2071641 () Bool)

(assert (=> b!1687420 m!2071641))

(declare-fun m!2071643 () Bool)

(assert (=> b!1687420 m!2071643))

(assert (=> b!1687421 m!2070715))

(declare-fun m!2071645 () Bool)

(assert (=> b!1687421 m!2071645))

(assert (=> b!1687421 m!2071635))

(declare-fun m!2071647 () Bool)

(assert (=> b!1687421 m!2071647))

(declare-fun m!2071649 () Bool)

(assert (=> b!1687421 m!2071649))

(assert (=> b!1687421 m!2071635))

(assert (=> b!1687421 m!2070715))

(assert (=> b!1687421 m!2071637))

(assert (=> b!1687421 m!2071647))

(declare-fun m!2071651 () Bool)

(assert (=> b!1687421 m!2071651))

(assert (=> b!1687421 m!2071647))

(declare-fun m!2071653 () Bool)

(assert (=> b!1687421 m!2071653))

(assert (=> b!1687421 m!2071647))

(declare-fun m!2071655 () Bool)

(assert (=> b!1687421 m!2071655))

(assert (=> b!1687419 m!2071641))

(declare-fun m!2071657 () Bool)

(assert (=> b!1687419 m!2071657))

(assert (=> b!1687419 m!2070715))

(assert (=> b!1687418 m!2071641))

(declare-fun m!2071659 () Bool)

(assert (=> b!1687418 m!2071659))

(assert (=> b!1687418 m!2071659))

(declare-fun m!2071661 () Bool)

(assert (=> b!1687418 m!2071661))

(assert (=> b!1687418 m!2071661))

(declare-fun m!2071663 () Bool)

(assert (=> b!1687418 m!2071663))

(assert (=> b!1687423 m!2071641))

(assert (=> b!1687423 m!2071659))

(assert (=> b!1687423 m!2071659))

(assert (=> b!1687423 m!2071661))

(assert (=> b!1687423 m!2071661))

(declare-fun m!2071665 () Bool)

(assert (=> b!1687423 m!2071665))

(declare-fun m!2071667 () Bool)

(assert (=> d!513900 m!2071667))

(declare-fun m!2071669 () Bool)

(assert (=> d!513900 m!2071669))

(declare-fun m!2071671 () Bool)

(assert (=> d!513900 m!2071671))

(declare-fun m!2071673 () Bool)

(assert (=> d!513900 m!2071673))

(assert (=> b!1687422 m!2071641))

(assert (=> b!1687416 m!2071641))

(declare-fun m!2071675 () Bool)

(assert (=> b!1687416 m!2071675))

(assert (=> b!1687416 m!2071675))

(declare-fun m!2071677 () Bool)

(assert (=> b!1687416 m!2071677))

(assert (=> bm!107803 d!513900))

(declare-fun d!513916 () Bool)

(declare-fun e!1080281 () Bool)

(assert (=> d!513916 e!1080281))

(declare-fun res!756590 () Bool)

(assert (=> d!513916 (=> res!756590 e!1080281)))

(declare-fun lt!641406 () Option!3568)

(assert (=> d!513916 (= res!756590 (isEmpty!11573 lt!641406))))

(declare-fun e!1080280 () Option!3568)

(assert (=> d!513916 (= lt!641406 e!1080280)))

(declare-fun c!275601 () Bool)

(assert (=> d!513916 (= c!275601 (and ((_ is Cons!18487) (t!154810 rules!1846)) ((_ is Nil!18487) (t!154810 (t!154810 rules!1846)))))))

(declare-fun lt!641405 () Unit!31839)

(declare-fun lt!641404 () Unit!31839)

(assert (=> d!513916 (= lt!641405 lt!641404)))

(assert (=> d!513916 (isPrefix!1513 lt!640654 lt!640654)))

(assert (=> d!513916 (= lt!641404 (lemmaIsPrefixRefl!1030 lt!640654 lt!640654))))

(assert (=> d!513916 (rulesValidInductive!1052 thiss!17113 (t!154810 rules!1846))))

(assert (=> d!513916 (= (maxPrefix!1444 thiss!17113 (t!154810 rules!1846) lt!640654) lt!641406)))

(declare-fun b!1687426 () Bool)

(declare-fun e!1080279 () Bool)

(assert (=> b!1687426 (= e!1080281 e!1080279)))

(declare-fun res!756591 () Bool)

(assert (=> b!1687426 (=> (not res!756591) (not e!1080279))))

(assert (=> b!1687426 (= res!756591 (isDefined!2917 lt!641406))))

(declare-fun b!1687427 () Bool)

(declare-fun call!107875 () Option!3568)

(assert (=> b!1687427 (= e!1080280 call!107875)))

(declare-fun b!1687428 () Bool)

(assert (=> b!1687428 (= e!1080279 (contains!3250 (t!154810 rules!1846) (rule!5161 (_1!10520 (get!5420 lt!641406)))))))

(declare-fun b!1687429 () Bool)

(declare-fun res!756587 () Bool)

(assert (=> b!1687429 (=> (not res!756587) (not e!1080279))))

(assert (=> b!1687429 (= res!756587 (< (size!14724 (_2!10520 (get!5420 lt!641406))) (size!14724 lt!640654)))))

(declare-fun b!1687430 () Bool)

(declare-fun res!756586 () Bool)

(assert (=> b!1687430 (=> (not res!756586) (not e!1080279))))

(assert (=> b!1687430 (= res!756586 (= (value!102440 (_1!10520 (get!5420 lt!641406))) (apply!5039 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641406)))) (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!641406)))))))))

(declare-fun b!1687431 () Bool)

(declare-fun res!756588 () Bool)

(assert (=> b!1687431 (=> (not res!756588) (not e!1080279))))

(assert (=> b!1687431 (= res!756588 (matchR!2072 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641406)))) (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641406))))))))

(declare-fun bm!107870 () Bool)

(assert (=> bm!107870 (= call!107875 (maxPrefixOneRule!845 thiss!17113 (h!23888 (t!154810 rules!1846)) lt!640654))))

(declare-fun b!1687432 () Bool)

(declare-fun res!756589 () Bool)

(assert (=> b!1687432 (=> (not res!756589) (not e!1080279))))

(assert (=> b!1687432 (= res!756589 (= (++!5065 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641406)))) (_2!10520 (get!5420 lt!641406))) lt!640654))))

(declare-fun b!1687433 () Bool)

(declare-fun res!756592 () Bool)

(assert (=> b!1687433 (=> (not res!756592) (not e!1080279))))

(assert (=> b!1687433 (= res!756592 (= (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641406)))) (originalCharacters!4069 (_1!10520 (get!5420 lt!641406)))))))

(declare-fun b!1687434 () Bool)

(declare-fun lt!641403 () Option!3568)

(declare-fun lt!641407 () Option!3568)

(assert (=> b!1687434 (= e!1080280 (ite (and ((_ is None!3567) lt!641403) ((_ is None!3567) lt!641407)) None!3567 (ite ((_ is None!3567) lt!641407) lt!641403 (ite ((_ is None!3567) lt!641403) lt!641407 (ite (>= (size!14720 (_1!10520 (v!24888 lt!641403))) (size!14720 (_1!10520 (v!24888 lt!641407)))) lt!641403 lt!641407)))))))

(assert (=> b!1687434 (= lt!641403 call!107875)))

(assert (=> b!1687434 (= lt!641407 (maxPrefix!1444 thiss!17113 (t!154810 (t!154810 rules!1846)) lt!640654))))

(assert (= (and d!513916 c!275601) b!1687427))

(assert (= (and d!513916 (not c!275601)) b!1687434))

(assert (= (or b!1687427 b!1687434) bm!107870))

(assert (= (and d!513916 (not res!756590)) b!1687426))

(assert (= (and b!1687426 res!756591) b!1687433))

(assert (= (and b!1687433 res!756592) b!1687429))

(assert (= (and b!1687429 res!756587) b!1687432))

(assert (= (and b!1687432 res!756589) b!1687430))

(assert (= (and b!1687430 res!756586) b!1687431))

(assert (= (and b!1687431 res!756588) b!1687428))

(declare-fun m!2071685 () Bool)

(assert (=> b!1687431 m!2071685))

(declare-fun m!2071687 () Bool)

(assert (=> b!1687431 m!2071687))

(assert (=> b!1687431 m!2071687))

(declare-fun m!2071689 () Bool)

(assert (=> b!1687431 m!2071689))

(assert (=> b!1687431 m!2071689))

(declare-fun m!2071691 () Bool)

(assert (=> b!1687431 m!2071691))

(assert (=> b!1687433 m!2071685))

(assert (=> b!1687433 m!2071687))

(assert (=> b!1687433 m!2071687))

(assert (=> b!1687433 m!2071689))

(assert (=> b!1687432 m!2071685))

(assert (=> b!1687432 m!2071687))

(assert (=> b!1687432 m!2071687))

(assert (=> b!1687432 m!2071689))

(assert (=> b!1687432 m!2071689))

(declare-fun m!2071693 () Bool)

(assert (=> b!1687432 m!2071693))

(declare-fun m!2071695 () Bool)

(assert (=> bm!107870 m!2071695))

(declare-fun m!2071697 () Bool)

(assert (=> b!1687426 m!2071697))

(assert (=> b!1687428 m!2071685))

(declare-fun m!2071699 () Bool)

(assert (=> b!1687428 m!2071699))

(assert (=> b!1687430 m!2071685))

(declare-fun m!2071701 () Bool)

(assert (=> b!1687430 m!2071701))

(assert (=> b!1687430 m!2071701))

(declare-fun m!2071703 () Bool)

(assert (=> b!1687430 m!2071703))

(assert (=> b!1687429 m!2071685))

(declare-fun m!2071705 () Bool)

(assert (=> b!1687429 m!2071705))

(assert (=> b!1687429 m!2070417))

(declare-fun m!2071707 () Bool)

(assert (=> b!1687434 m!2071707))

(declare-fun m!2071709 () Bool)

(assert (=> d!513916 m!2071709))

(assert (=> d!513916 m!2070619))

(assert (=> d!513916 m!2070621))

(declare-fun m!2071711 () Bool)

(assert (=> d!513916 m!2071711))

(assert (=> b!1686851 d!513916))

(declare-fun d!513920 () Bool)

(assert (=> d!513920 (= (inv!23854 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (value!102440 (h!23889 tokens!457)))) (isBalanced!1930 (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (value!102440 (h!23889 tokens!457))))))))

(declare-fun bs!399690 () Bool)

(assert (= bs!399690 d!513920))

(declare-fun m!2071725 () Bool)

(assert (=> bs!399690 m!2071725))

(assert (=> tb!97847 d!513920))

(declare-fun d!513924 () Bool)

(declare-fun lt!641421 () Bool)

(assert (=> d!513924 (= lt!641421 (isEmpty!11569 (list!7432 (_2!10519 (lex!1368 thiss!17113 rules!1846 (print!1415 thiss!17113 (singletonSeq!1778 (h!23889 tokens!457))))))))))

(declare-fun isEmpty!11577 (Conc!6158) Bool)

(assert (=> d!513924 (= lt!641421 (isEmpty!11577 (c!275419 (_2!10519 (lex!1368 thiss!17113 rules!1846 (print!1415 thiss!17113 (singletonSeq!1778 (h!23889 tokens!457))))))))))

(assert (=> d!513924 (= (isEmpty!11570 (_2!10519 (lex!1368 thiss!17113 rules!1846 (print!1415 thiss!17113 (singletonSeq!1778 (h!23889 tokens!457)))))) lt!641421)))

(declare-fun bs!399693 () Bool)

(assert (= bs!399693 d!513924))

(declare-fun m!2071741 () Bool)

(assert (=> bs!399693 m!2071741))

(assert (=> bs!399693 m!2071741))

(declare-fun m!2071743 () Bool)

(assert (=> bs!399693 m!2071743))

(declare-fun m!2071745 () Bool)

(assert (=> bs!399693 m!2071745))

(assert (=> b!1686864 d!513924))

(declare-fun d!513932 () Bool)

(declare-fun e!1080287 () Bool)

(assert (=> d!513932 e!1080287))

(declare-fun res!756599 () Bool)

(assert (=> d!513932 (=> (not res!756599) (not e!1080287))))

(declare-fun e!1080289 () Bool)

(assert (=> d!513932 (= res!756599 e!1080289)))

(declare-fun c!275602 () Bool)

(declare-fun lt!641422 () tuple2!18234)

(assert (=> d!513932 (= c!275602 (> (size!14725 (_1!10519 lt!641422)) 0))))

(assert (=> d!513932 (= lt!641422 (lexTailRecV2!630 thiss!17113 rules!1846 (print!1415 thiss!17113 (singletonSeq!1778 (h!23889 tokens!457))) (BalanceConc!12261 Empty!6158) (print!1415 thiss!17113 (singletonSeq!1778 (h!23889 tokens!457))) (BalanceConc!12263 Empty!6159)))))

(assert (=> d!513932 (= (lex!1368 thiss!17113 rules!1846 (print!1415 thiss!17113 (singletonSeq!1778 (h!23889 tokens!457)))) lt!641422)))

(declare-fun b!1687440 () Bool)

(declare-fun res!756600 () Bool)

(assert (=> b!1687440 (=> (not res!756600) (not e!1080287))))

(assert (=> b!1687440 (= res!756600 (= (list!7431 (_1!10519 lt!641422)) (_1!10523 (lexList!907 thiss!17113 rules!1846 (list!7432 (print!1415 thiss!17113 (singletonSeq!1778 (h!23889 tokens!457))))))))))

(declare-fun b!1687441 () Bool)

(assert (=> b!1687441 (= e!1080287 (= (list!7432 (_2!10519 lt!641422)) (_2!10523 (lexList!907 thiss!17113 rules!1846 (list!7432 (print!1415 thiss!17113 (singletonSeq!1778 (h!23889 tokens!457))))))))))

(declare-fun b!1687442 () Bool)

(declare-fun e!1080288 () Bool)

(assert (=> b!1687442 (= e!1080288 (not (isEmpty!11562 (_1!10519 lt!641422))))))

(declare-fun b!1687443 () Bool)

(assert (=> b!1687443 (= e!1080289 (= (_2!10519 lt!641422) (print!1415 thiss!17113 (singletonSeq!1778 (h!23889 tokens!457)))))))

(declare-fun b!1687444 () Bool)

(assert (=> b!1687444 (= e!1080289 e!1080288)))

(declare-fun res!756598 () Bool)

(assert (=> b!1687444 (= res!756598 (< (size!14726 (_2!10519 lt!641422)) (size!14726 (print!1415 thiss!17113 (singletonSeq!1778 (h!23889 tokens!457))))))))

(assert (=> b!1687444 (=> (not res!756598) (not e!1080288))))

(assert (= (and d!513932 c!275602) b!1687444))

(assert (= (and d!513932 (not c!275602)) b!1687443))

(assert (= (and b!1687444 res!756598) b!1687442))

(assert (= (and d!513932 res!756599) b!1687440))

(assert (= (and b!1687440 res!756600) b!1687441))

(declare-fun m!2071747 () Bool)

(assert (=> b!1687441 m!2071747))

(assert (=> b!1687441 m!2070673))

(declare-fun m!2071749 () Bool)

(assert (=> b!1687441 m!2071749))

(assert (=> b!1687441 m!2071749))

(declare-fun m!2071751 () Bool)

(assert (=> b!1687441 m!2071751))

(declare-fun m!2071753 () Bool)

(assert (=> b!1687440 m!2071753))

(assert (=> b!1687440 m!2070673))

(assert (=> b!1687440 m!2071749))

(assert (=> b!1687440 m!2071749))

(assert (=> b!1687440 m!2071751))

(declare-fun m!2071755 () Bool)

(assert (=> d!513932 m!2071755))

(assert (=> d!513932 m!2070673))

(assert (=> d!513932 m!2070673))

(declare-fun m!2071757 () Bool)

(assert (=> d!513932 m!2071757))

(declare-fun m!2071759 () Bool)

(assert (=> b!1687442 m!2071759))

(declare-fun m!2071761 () Bool)

(assert (=> b!1687444 m!2071761))

(assert (=> b!1687444 m!2070673))

(declare-fun m!2071763 () Bool)

(assert (=> b!1687444 m!2071763))

(assert (=> b!1686864 d!513932))

(declare-fun d!513934 () Bool)

(declare-fun lt!641423 () BalanceConc!12260)

(assert (=> d!513934 (= (list!7432 lt!641423) (printList!997 thiss!17113 (list!7431 (singletonSeq!1778 (h!23889 tokens!457)))))))

(assert (=> d!513934 (= lt!641423 (printTailRec!935 thiss!17113 (singletonSeq!1778 (h!23889 tokens!457)) 0 (BalanceConc!12261 Empty!6158)))))

(assert (=> d!513934 (= (print!1415 thiss!17113 (singletonSeq!1778 (h!23889 tokens!457))) lt!641423)))

(declare-fun bs!399694 () Bool)

(assert (= bs!399694 d!513934))

(declare-fun m!2071765 () Bool)

(assert (=> bs!399694 m!2071765))

(assert (=> bs!399694 m!2069791))

(assert (=> bs!399694 m!2070669))

(assert (=> bs!399694 m!2070669))

(declare-fun m!2071767 () Bool)

(assert (=> bs!399694 m!2071767))

(assert (=> bs!399694 m!2069791))

(declare-fun m!2071769 () Bool)

(assert (=> bs!399694 m!2071769))

(assert (=> b!1686864 d!513934))

(assert (=> b!1686864 d!513672))

(declare-fun d!513936 () Bool)

(declare-fun c!275605 () Bool)

(assert (=> d!513936 (= c!275605 ((_ is Nil!18485) lt!641003))))

(declare-fun e!1080292 () (InoxSet C!9340))

(assert (=> d!513936 (= (content!2605 lt!641003) e!1080292)))

(declare-fun b!1687449 () Bool)

(assert (=> b!1687449 (= e!1080292 ((as const (Array C!9340 Bool)) false))))

(declare-fun b!1687450 () Bool)

(assert (=> b!1687450 (= e!1080292 ((_ map or) (store ((as const (Array C!9340 Bool)) false) (h!23886 lt!641003) true) (content!2605 (t!154808 lt!641003))))))

(assert (= (and d!513936 c!275605) b!1687449))

(assert (= (and d!513936 (not c!275605)) b!1687450))

(declare-fun m!2071771 () Bool)

(assert (=> b!1687450 m!2071771))

(declare-fun m!2071773 () Bool)

(assert (=> b!1687450 m!2071773))

(assert (=> d!513630 d!513936))

(declare-fun d!513938 () Bool)

(declare-fun c!275606 () Bool)

(assert (=> d!513938 (= c!275606 ((_ is Nil!18485) lt!640654))))

(declare-fun e!1080293 () (InoxSet C!9340))

(assert (=> d!513938 (= (content!2605 lt!640654) e!1080293)))

(declare-fun b!1687451 () Bool)

(assert (=> b!1687451 (= e!1080293 ((as const (Array C!9340 Bool)) false))))

(declare-fun b!1687452 () Bool)

(assert (=> b!1687452 (= e!1080293 ((_ map or) (store ((as const (Array C!9340 Bool)) false) (h!23886 lt!640654) true) (content!2605 (t!154808 lt!640654))))))

(assert (= (and d!513938 c!275606) b!1687451))

(assert (= (and d!513938 (not c!275606)) b!1687452))

(declare-fun m!2071775 () Bool)

(assert (=> b!1687452 m!2071775))

(declare-fun m!2071777 () Bool)

(assert (=> b!1687452 m!2071777))

(assert (=> d!513630 d!513938))

(declare-fun d!513940 () Bool)

(declare-fun c!275607 () Bool)

(assert (=> d!513940 (= c!275607 ((_ is Nil!18485) lt!640648))))

(declare-fun e!1080294 () (InoxSet C!9340))

(assert (=> d!513940 (= (content!2605 lt!640648) e!1080294)))

(declare-fun b!1687453 () Bool)

(assert (=> b!1687453 (= e!1080294 ((as const (Array C!9340 Bool)) false))))

(declare-fun b!1687454 () Bool)

(assert (=> b!1687454 (= e!1080294 ((_ map or) (store ((as const (Array C!9340 Bool)) false) (h!23886 lt!640648) true) (content!2605 (t!154808 lt!640648))))))

(assert (= (and d!513940 c!275607) b!1687453))

(assert (= (and d!513940 (not c!275607)) b!1687454))

(declare-fun m!2071779 () Bool)

(assert (=> b!1687454 m!2071779))

(declare-fun m!2071781 () Bool)

(assert (=> b!1687454 m!2071781))

(assert (=> d!513630 d!513940))

(declare-fun b!1687473 () Bool)

(declare-fun e!1080306 () List!18558)

(assert (=> b!1687473 (= e!1080306 Nil!18488)))

(declare-fun b!1687474 () Bool)

(declare-fun e!1080305 () List!18558)

(assert (=> b!1687474 (= e!1080305 lt!641128)))

(declare-fun b!1687475 () Bool)

(assert (=> b!1687475 (= e!1080306 e!1080305)))

(declare-fun c!275616 () Bool)

(assert (=> b!1687475 (= c!275616 (<= 0 0))))

(declare-fun d!513942 () Bool)

(declare-fun e!1080308 () Bool)

(assert (=> d!513942 e!1080308))

(declare-fun res!756603 () Bool)

(assert (=> d!513942 (=> (not res!756603) (not e!1080308))))

(declare-fun lt!641426 () List!18558)

(declare-fun content!2607 (List!18558) (InoxSet Token!6076))

(assert (=> d!513942 (= res!756603 (= ((_ map implies) (content!2607 lt!641426) (content!2607 lt!641128)) ((as const (InoxSet Token!6076)) true)))))

(assert (=> d!513942 (= lt!641426 e!1080306)))

(declare-fun c!275617 () Bool)

(assert (=> d!513942 (= c!275617 ((_ is Nil!18488) lt!641128))))

(assert (=> d!513942 (= (drop!959 lt!641128 0) lt!641426)))

(declare-fun b!1687476 () Bool)

(declare-fun e!1080307 () Int)

(declare-fun call!107878 () Int)

(assert (=> b!1687476 (= e!1080307 (- call!107878 0))))

(declare-fun b!1687477 () Bool)

(declare-fun e!1080309 () Int)

(declare-fun size!14729 (List!18558) Int)

(assert (=> b!1687477 (= e!1080308 (= (size!14729 lt!641426) e!1080309))))

(declare-fun c!275618 () Bool)

(assert (=> b!1687477 (= c!275618 (<= 0 0))))

(declare-fun b!1687478 () Bool)

(assert (=> b!1687478 (= e!1080309 call!107878)))

(declare-fun bm!107873 () Bool)

(assert (=> bm!107873 (= call!107878 (size!14729 lt!641128))))

(declare-fun b!1687479 () Bool)

(assert (=> b!1687479 (= e!1080305 (drop!959 (t!154811 lt!641128) (- 0 1)))))

(declare-fun b!1687480 () Bool)

(assert (=> b!1687480 (= e!1080307 0)))

(declare-fun b!1687481 () Bool)

(assert (=> b!1687481 (= e!1080309 e!1080307)))

(declare-fun c!275619 () Bool)

(assert (=> b!1687481 (= c!275619 (>= 0 call!107878))))

(assert (= (and d!513942 c!275617) b!1687473))

(assert (= (and d!513942 (not c!275617)) b!1687475))

(assert (= (and b!1687475 c!275616) b!1687474))

(assert (= (and b!1687475 (not c!275616)) b!1687479))

(assert (= (and d!513942 res!756603) b!1687477))

(assert (= (and b!1687477 c!275618) b!1687478))

(assert (= (and b!1687477 (not c!275618)) b!1687481))

(assert (= (and b!1687481 c!275619) b!1687480))

(assert (= (and b!1687481 (not c!275619)) b!1687476))

(assert (= (or b!1687478 b!1687481 b!1687476) bm!107873))

(declare-fun m!2071783 () Bool)

(assert (=> d!513942 m!2071783))

(declare-fun m!2071785 () Bool)

(assert (=> d!513942 m!2071785))

(declare-fun m!2071787 () Bool)

(assert (=> b!1687477 m!2071787))

(declare-fun m!2071789 () Bool)

(assert (=> bm!107873 m!2071789))

(declare-fun m!2071791 () Bool)

(assert (=> b!1687479 m!2071791))

(assert (=> b!1686897 d!513942))

(declare-fun d!513944 () Bool)

(declare-fun lt!641438 () Token!6076)

(assert (=> d!513944 (= lt!641438 (apply!5043 (list!7431 lt!640650) 0))))

(declare-fun apply!5047 (Conc!6159 Int) Token!6076)

(assert (=> d!513944 (= lt!641438 (apply!5047 (c!275421 lt!640650) 0))))

(declare-fun e!1080321 () Bool)

(assert (=> d!513944 e!1080321))

(declare-fun res!756609 () Bool)

(assert (=> d!513944 (=> (not res!756609) (not e!1080321))))

(assert (=> d!513944 (= res!756609 (<= 0 0))))

(assert (=> d!513944 (= (apply!5040 lt!640650 0) lt!641438)))

(declare-fun b!1687499 () Bool)

(assert (=> b!1687499 (= e!1080321 (< 0 (size!14725 lt!640650)))))

(assert (= (and d!513944 res!756609) b!1687499))

(assert (=> d!513944 m!2070759))

(assert (=> d!513944 m!2070759))

(declare-fun m!2071793 () Bool)

(assert (=> d!513944 m!2071793))

(declare-fun m!2071797 () Bool)

(assert (=> d!513944 m!2071797))

(assert (=> b!1687499 m!2070735))

(assert (=> b!1686897 d!513944))

(declare-fun d!513946 () Bool)

(assert (=> d!513946 (= (list!7431 lt!640650) (list!7434 (c!275421 lt!640650)))))

(declare-fun bs!399695 () Bool)

(assert (= bs!399695 d!513946))

(declare-fun m!2071807 () Bool)

(assert (=> bs!399695 m!2071807))

(assert (=> b!1686897 d!513946))

(declare-fun d!513948 () Bool)

(assert (=> d!513948 (= (tail!2519 (drop!959 lt!641129 0)) (drop!959 lt!641129 (+ 0 1)))))

(declare-fun lt!641444 () Unit!31839)

(declare-fun choose!10206 (List!18558 Int) Unit!31839)

(assert (=> d!513948 (= lt!641444 (choose!10206 lt!641129 0))))

(declare-fun e!1080331 () Bool)

(assert (=> d!513948 e!1080331))

(declare-fun res!756619 () Bool)

(assert (=> d!513948 (=> (not res!756619) (not e!1080331))))

(assert (=> d!513948 (= res!756619 (>= 0 0))))

(assert (=> d!513948 (= (lemmaDropTail!613 lt!641129 0) lt!641444)))

(declare-fun b!1687511 () Bool)

(assert (=> b!1687511 (= e!1080331 (< 0 (size!14729 lt!641129)))))

(assert (= (and d!513948 res!756619) b!1687511))

(assert (=> d!513948 m!2070747))

(assert (=> d!513948 m!2070747))

(assert (=> d!513948 m!2070761))

(assert (=> d!513948 m!2070739))

(declare-fun m!2071835 () Bool)

(assert (=> d!513948 m!2071835))

(declare-fun m!2071837 () Bool)

(assert (=> b!1687511 m!2071837))

(assert (=> b!1686897 d!513948))

(declare-fun d!513964 () Bool)

(declare-fun lt!641445 () BalanceConc!12260)

(assert (=> d!513964 (= (list!7432 lt!641445) (originalCharacters!4069 (apply!5040 lt!640650 0)))))

(assert (=> d!513964 (= lt!641445 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (apply!5040 lt!640650 0)))) (value!102440 (apply!5040 lt!640650 0))))))

(assert (=> d!513964 (= (charsOf!1904 (apply!5040 lt!640650 0)) lt!641445)))

(declare-fun b_lambda!53069 () Bool)

(assert (=> (not b_lambda!53069) (not d!513964)))

(declare-fun t!154915 () Bool)

(declare-fun tb!97919 () Bool)

(assert (=> (and b!1686461 (= (toChars!4593 (transformation!3255 (h!23888 rules!1846))) (toChars!4593 (transformation!3255 (rule!5161 (apply!5040 lt!640650 0))))) t!154915) tb!97919))

(declare-fun b!1687520 () Bool)

(declare-fun e!1080336 () Bool)

(declare-fun tp!484435 () Bool)

(assert (=> b!1687520 (= e!1080336 (and (inv!23853 (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (apply!5040 lt!640650 0)))) (value!102440 (apply!5040 lt!640650 0))))) tp!484435))))

(declare-fun result!118024 () Bool)

(assert (=> tb!97919 (= result!118024 (and (inv!23854 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (apply!5040 lt!640650 0)))) (value!102440 (apply!5040 lt!640650 0)))) e!1080336))))

(assert (= tb!97919 b!1687520))

(declare-fun m!2071839 () Bool)

(assert (=> b!1687520 m!2071839))

(declare-fun m!2071841 () Bool)

(assert (=> tb!97919 m!2071841))

(assert (=> d!513964 t!154915))

(declare-fun b_and!120629 () Bool)

(assert (= b_and!120569 (and (=> t!154915 result!118024) b_and!120629)))

(declare-fun tb!97921 () Bool)

(declare-fun t!154917 () Bool)

(assert (=> (and b!1686468 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (toChars!4593 (transformation!3255 (rule!5161 (apply!5040 lt!640650 0))))) t!154917) tb!97921))

(declare-fun result!118026 () Bool)

(assert (= result!118026 result!118024))

(assert (=> d!513964 t!154917))

(declare-fun b_and!120631 () Bool)

(assert (= b_and!120571 (and (=> t!154917 result!118026) b_and!120631)))

(declare-fun t!154919 () Bool)

(declare-fun tb!97923 () Bool)

(assert (=> (and b!1687068 (= (toChars!4593 (transformation!3255 (h!23888 (t!154810 rules!1846)))) (toChars!4593 (transformation!3255 (rule!5161 (apply!5040 lt!640650 0))))) t!154919) tb!97923))

(declare-fun result!118028 () Bool)

(assert (= result!118028 result!118024))

(assert (=> d!513964 t!154919))

(declare-fun b_and!120633 () Bool)

(assert (= b_and!120575 (and (=> t!154919 result!118028) b_and!120633)))

(declare-fun t!154921 () Bool)

(declare-fun tb!97925 () Bool)

(assert (=> (and b!1687082 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (toChars!4593 (transformation!3255 (rule!5161 (apply!5040 lt!640650 0))))) t!154921) tb!97925))

(declare-fun result!118030 () Bool)

(assert (= result!118030 result!118024))

(assert (=> d!513964 t!154921))

(declare-fun b_and!120635 () Bool)

(assert (= b_and!120579 (and (=> t!154921 result!118030) b_and!120635)))

(declare-fun m!2071843 () Bool)

(assert (=> d!513964 m!2071843))

(declare-fun m!2071845 () Bool)

(assert (=> d!513964 m!2071845))

(assert (=> b!1686897 d!513964))

(declare-fun d!513966 () Bool)

(declare-fun lt!641450 () BalanceConc!12260)

(assert (=> d!513966 (= (list!7432 lt!641450) (printListTailRec!426 thiss!17113 (dropList!738 lt!640650 (+ 0 1)) (list!7432 (++!5066 (BalanceConc!12261 Empty!6158) (charsOf!1904 (apply!5040 lt!640650 0))))))))

(declare-fun e!1080337 () BalanceConc!12260)

(assert (=> d!513966 (= lt!641450 e!1080337)))

(declare-fun c!275631 () Bool)

(assert (=> d!513966 (= c!275631 (>= (+ 0 1) (size!14725 lt!640650)))))

(declare-fun e!1080338 () Bool)

(assert (=> d!513966 e!1080338))

(declare-fun res!756620 () Bool)

(assert (=> d!513966 (=> (not res!756620) (not e!1080338))))

(assert (=> d!513966 (= res!756620 (>= (+ 0 1) 0))))

(assert (=> d!513966 (= (printTailRec!935 thiss!17113 lt!640650 (+ 0 1) (++!5066 (BalanceConc!12261 Empty!6158) (charsOf!1904 (apply!5040 lt!640650 0)))) lt!641450)))

(declare-fun b!1687521 () Bool)

(assert (=> b!1687521 (= e!1080338 (<= (+ 0 1) (size!14725 lt!640650)))))

(declare-fun b!1687522 () Bool)

(assert (=> b!1687522 (= e!1080337 (++!5066 (BalanceConc!12261 Empty!6158) (charsOf!1904 (apply!5040 lt!640650 0))))))

(declare-fun b!1687523 () Bool)

(assert (=> b!1687523 (= e!1080337 (printTailRec!935 thiss!17113 lt!640650 (+ 0 1 1) (++!5066 (++!5066 (BalanceConc!12261 Empty!6158) (charsOf!1904 (apply!5040 lt!640650 0))) (charsOf!1904 (apply!5040 lt!640650 (+ 0 1))))))))

(declare-fun lt!641451 () List!18558)

(assert (=> b!1687523 (= lt!641451 (list!7431 lt!640650))))

(declare-fun lt!641449 () Unit!31839)

(assert (=> b!1687523 (= lt!641449 (lemmaDropApply!633 lt!641451 (+ 0 1)))))

(assert (=> b!1687523 (= (head!3782 (drop!959 lt!641451 (+ 0 1))) (apply!5043 lt!641451 (+ 0 1)))))

(declare-fun lt!641447 () Unit!31839)

(assert (=> b!1687523 (= lt!641447 lt!641449)))

(declare-fun lt!641452 () List!18558)

(assert (=> b!1687523 (= lt!641452 (list!7431 lt!640650))))

(declare-fun lt!641446 () Unit!31839)

(assert (=> b!1687523 (= lt!641446 (lemmaDropTail!613 lt!641452 (+ 0 1)))))

(assert (=> b!1687523 (= (tail!2519 (drop!959 lt!641452 (+ 0 1))) (drop!959 lt!641452 (+ 0 1 1)))))

(declare-fun lt!641448 () Unit!31839)

(assert (=> b!1687523 (= lt!641448 lt!641446)))

(assert (= (and d!513966 res!756620) b!1687521))

(assert (= (and d!513966 c!275631) b!1687522))

(assert (= (and d!513966 (not c!275631)) b!1687523))

(declare-fun m!2071855 () Bool)

(assert (=> d!513966 m!2071855))

(declare-fun m!2071857 () Bool)

(assert (=> d!513966 m!2071857))

(declare-fun m!2071859 () Bool)

(assert (=> d!513966 m!2071859))

(declare-fun m!2071861 () Bool)

(assert (=> d!513966 m!2071861))

(assert (=> d!513966 m!2070743))

(assert (=> d!513966 m!2071859))

(assert (=> d!513966 m!2071857))

(assert (=> d!513966 m!2070735))

(assert (=> b!1687521 m!2070735))

(declare-fun m!2071863 () Bool)

(assert (=> b!1687523 m!2071863))

(declare-fun m!2071865 () Bool)

(assert (=> b!1687523 m!2071865))

(assert (=> b!1687523 m!2070743))

(declare-fun m!2071867 () Bool)

(assert (=> b!1687523 m!2071867))

(declare-fun m!2071869 () Bool)

(assert (=> b!1687523 m!2071869))

(declare-fun m!2071871 () Bool)

(assert (=> b!1687523 m!2071871))

(declare-fun m!2071873 () Bool)

(assert (=> b!1687523 m!2071873))

(declare-fun m!2071875 () Bool)

(assert (=> b!1687523 m!2071875))

(declare-fun m!2071877 () Bool)

(assert (=> b!1687523 m!2071877))

(assert (=> b!1687523 m!2071871))

(assert (=> b!1687523 m!2071867))

(declare-fun m!2071879 () Bool)

(assert (=> b!1687523 m!2071879))

(assert (=> b!1687523 m!2071875))

(declare-fun m!2071881 () Bool)

(assert (=> b!1687523 m!2071881))

(assert (=> b!1687523 m!2071869))

(declare-fun m!2071883 () Bool)

(assert (=> b!1687523 m!2071883))

(assert (=> b!1687523 m!2070759))

(assert (=> b!1687523 m!2071873))

(declare-fun m!2071885 () Bool)

(assert (=> b!1687523 m!2071885))

(assert (=> b!1686897 d!513966))

(declare-fun b!1687528 () Bool)

(declare-fun e!1080342 () List!18558)

(assert (=> b!1687528 (= e!1080342 Nil!18488)))

(declare-fun b!1687529 () Bool)

(declare-fun e!1080341 () List!18558)

(assert (=> b!1687529 (= e!1080341 lt!641129)))

(declare-fun b!1687530 () Bool)

(assert (=> b!1687530 (= e!1080342 e!1080341)))

(declare-fun c!275634 () Bool)

(assert (=> b!1687530 (= c!275634 (<= 0 0))))

(declare-fun d!513970 () Bool)

(declare-fun e!1080344 () Bool)

(assert (=> d!513970 e!1080344))

(declare-fun res!756621 () Bool)

(assert (=> d!513970 (=> (not res!756621) (not e!1080344))))

(declare-fun lt!641453 () List!18558)

(assert (=> d!513970 (= res!756621 (= ((_ map implies) (content!2607 lt!641453) (content!2607 lt!641129)) ((as const (InoxSet Token!6076)) true)))))

(assert (=> d!513970 (= lt!641453 e!1080342)))

(declare-fun c!275635 () Bool)

(assert (=> d!513970 (= c!275635 ((_ is Nil!18488) lt!641129))))

(assert (=> d!513970 (= (drop!959 lt!641129 0) lt!641453)))

(declare-fun b!1687531 () Bool)

(declare-fun e!1080343 () Int)

(declare-fun call!107879 () Int)

(assert (=> b!1687531 (= e!1080343 (- call!107879 0))))

(declare-fun b!1687532 () Bool)

(declare-fun e!1080345 () Int)

(assert (=> b!1687532 (= e!1080344 (= (size!14729 lt!641453) e!1080345))))

(declare-fun c!275636 () Bool)

(assert (=> b!1687532 (= c!275636 (<= 0 0))))

(declare-fun b!1687533 () Bool)

(assert (=> b!1687533 (= e!1080345 call!107879)))

(declare-fun bm!107874 () Bool)

(assert (=> bm!107874 (= call!107879 (size!14729 lt!641129))))

(declare-fun b!1687534 () Bool)

(assert (=> b!1687534 (= e!1080341 (drop!959 (t!154811 lt!641129) (- 0 1)))))

(declare-fun b!1687535 () Bool)

(assert (=> b!1687535 (= e!1080343 0)))

(declare-fun b!1687536 () Bool)

(assert (=> b!1687536 (= e!1080345 e!1080343)))

(declare-fun c!275637 () Bool)

(assert (=> b!1687536 (= c!275637 (>= 0 call!107879))))

(assert (= (and d!513970 c!275635) b!1687528))

(assert (= (and d!513970 (not c!275635)) b!1687530))

(assert (= (and b!1687530 c!275634) b!1687529))

(assert (= (and b!1687530 (not c!275634)) b!1687534))

(assert (= (and d!513970 res!756621) b!1687532))

(assert (= (and b!1687532 c!275636) b!1687533))

(assert (= (and b!1687532 (not c!275636)) b!1687536))

(assert (= (and b!1687536 c!275637) b!1687535))

(assert (= (and b!1687536 (not c!275637)) b!1687531))

(assert (= (or b!1687533 b!1687536 b!1687531) bm!107874))

(declare-fun m!2071887 () Bool)

(assert (=> d!513970 m!2071887))

(declare-fun m!2071889 () Bool)

(assert (=> d!513970 m!2071889))

(declare-fun m!2071891 () Bool)

(assert (=> b!1687532 m!2071891))

(assert (=> bm!107874 m!2071837))

(declare-fun m!2071893 () Bool)

(assert (=> b!1687534 m!2071893))

(assert (=> b!1686897 d!513970))

(declare-fun d!513972 () Bool)

(assert (=> d!513972 (= (tail!2519 (drop!959 lt!641129 0)) (t!154811 (drop!959 lt!641129 0)))))

(assert (=> b!1686897 d!513972))

(declare-fun d!513974 () Bool)

(assert (=> d!513974 (= (head!3782 (drop!959 lt!641128 0)) (h!23889 (drop!959 lt!641128 0)))))

(assert (=> b!1686897 d!513974))

(declare-fun b!1687537 () Bool)

(declare-fun e!1080347 () List!18558)

(assert (=> b!1687537 (= e!1080347 Nil!18488)))

(declare-fun b!1687538 () Bool)

(declare-fun e!1080346 () List!18558)

(assert (=> b!1687538 (= e!1080346 lt!641129)))

(declare-fun b!1687539 () Bool)

(assert (=> b!1687539 (= e!1080347 e!1080346)))

(declare-fun c!275638 () Bool)

(assert (=> b!1687539 (= c!275638 (<= (+ 0 1) 0))))

(declare-fun d!513976 () Bool)

(declare-fun e!1080349 () Bool)

(assert (=> d!513976 e!1080349))

(declare-fun res!756622 () Bool)

(assert (=> d!513976 (=> (not res!756622) (not e!1080349))))

(declare-fun lt!641454 () List!18558)

(assert (=> d!513976 (= res!756622 (= ((_ map implies) (content!2607 lt!641454) (content!2607 lt!641129)) ((as const (InoxSet Token!6076)) true)))))

(assert (=> d!513976 (= lt!641454 e!1080347)))

(declare-fun c!275639 () Bool)

(assert (=> d!513976 (= c!275639 ((_ is Nil!18488) lt!641129))))

(assert (=> d!513976 (= (drop!959 lt!641129 (+ 0 1)) lt!641454)))

(declare-fun b!1687540 () Bool)

(declare-fun e!1080348 () Int)

(declare-fun call!107880 () Int)

(assert (=> b!1687540 (= e!1080348 (- call!107880 (+ 0 1)))))

(declare-fun b!1687541 () Bool)

(declare-fun e!1080350 () Int)

(assert (=> b!1687541 (= e!1080349 (= (size!14729 lt!641454) e!1080350))))

(declare-fun c!275640 () Bool)

(assert (=> b!1687541 (= c!275640 (<= (+ 0 1) 0))))

(declare-fun b!1687542 () Bool)

(assert (=> b!1687542 (= e!1080350 call!107880)))

(declare-fun bm!107875 () Bool)

(assert (=> bm!107875 (= call!107880 (size!14729 lt!641129))))

(declare-fun b!1687543 () Bool)

(assert (=> b!1687543 (= e!1080346 (drop!959 (t!154811 lt!641129) (- (+ 0 1) 1)))))

(declare-fun b!1687544 () Bool)

(assert (=> b!1687544 (= e!1080348 0)))

(declare-fun b!1687545 () Bool)

(assert (=> b!1687545 (= e!1080350 e!1080348)))

(declare-fun c!275641 () Bool)

(assert (=> b!1687545 (= c!275641 (>= (+ 0 1) call!107880))))

(assert (= (and d!513976 c!275639) b!1687537))

(assert (= (and d!513976 (not c!275639)) b!1687539))

(assert (= (and b!1687539 c!275638) b!1687538))

(assert (= (and b!1687539 (not c!275638)) b!1687543))

(assert (= (and d!513976 res!756622) b!1687541))

(assert (= (and b!1687541 c!275640) b!1687542))

(assert (= (and b!1687541 (not c!275640)) b!1687545))

(assert (= (and b!1687545 c!275641) b!1687544))

(assert (= (and b!1687545 (not c!275641)) b!1687540))

(assert (= (or b!1687542 b!1687545 b!1687540) bm!107875))

(declare-fun m!2071895 () Bool)

(assert (=> d!513976 m!2071895))

(assert (=> d!513976 m!2071889))

(declare-fun m!2071897 () Bool)

(assert (=> b!1687541 m!2071897))

(assert (=> bm!107875 m!2071837))

(declare-fun m!2071899 () Bool)

(assert (=> b!1687543 m!2071899))

(assert (=> b!1686897 d!513976))

(declare-fun d!513978 () Bool)

(assert (=> d!513978 (= (head!3782 (drop!959 lt!641128 0)) (apply!5043 lt!641128 0))))

(declare-fun lt!641460 () Unit!31839)

(declare-fun choose!10207 (List!18558 Int) Unit!31839)

(assert (=> d!513978 (= lt!641460 (choose!10207 lt!641128 0))))

(declare-fun e!1080356 () Bool)

(assert (=> d!513978 e!1080356))

(declare-fun res!756626 () Bool)

(assert (=> d!513978 (=> (not res!756626) (not e!1080356))))

(assert (=> d!513978 (= res!756626 (>= 0 0))))

(assert (=> d!513978 (= (lemmaDropApply!633 lt!641128 0) lt!641460)))

(declare-fun b!1687557 () Bool)

(assert (=> b!1687557 (= e!1080356 (< 0 (size!14729 lt!641128)))))

(assert (= (and d!513978 res!756626) b!1687557))

(assert (=> d!513978 m!2070749))

(assert (=> d!513978 m!2070749))

(assert (=> d!513978 m!2070751))

(assert (=> d!513978 m!2070755))

(declare-fun m!2071919 () Bool)

(assert (=> d!513978 m!2071919))

(assert (=> b!1687557 m!2071789))

(assert (=> b!1686897 d!513978))

(declare-fun b!1687559 () Bool)

(declare-fun res!756630 () Bool)

(declare-fun e!1080357 () Bool)

(assert (=> b!1687559 (=> (not res!756630) (not e!1080357))))

(assert (=> b!1687559 (= res!756630 (<= (height!987 (++!5068 (c!275419 (BalanceConc!12261 Empty!6158)) (c!275419 (charsOf!1904 (apply!5040 lt!640650 0))))) (+ (max!0 (height!987 (c!275419 (BalanceConc!12261 Empty!6158))) (height!987 (c!275419 (charsOf!1904 (apply!5040 lt!640650 0))))) 1)))))

(declare-fun b!1687558 () Bool)

(declare-fun res!756627 () Bool)

(assert (=> b!1687558 (=> (not res!756627) (not e!1080357))))

(assert (=> b!1687558 (= res!756627 (isBalanced!1930 (++!5068 (c!275419 (BalanceConc!12261 Empty!6158)) (c!275419 (charsOf!1904 (apply!5040 lt!640650 0))))))))

(declare-fun b!1687561 () Bool)

(declare-fun lt!641461 () BalanceConc!12260)

(assert (=> b!1687561 (= e!1080357 (= (list!7432 lt!641461) (++!5065 (list!7432 (BalanceConc!12261 Empty!6158)) (list!7432 (charsOf!1904 (apply!5040 lt!640650 0))))))))

(declare-fun d!513988 () Bool)

(assert (=> d!513988 e!1080357))

(declare-fun res!756628 () Bool)

(assert (=> d!513988 (=> (not res!756628) (not e!1080357))))

(assert (=> d!513988 (= res!756628 (appendAssocInst!497 (c!275419 (BalanceConc!12261 Empty!6158)) (c!275419 (charsOf!1904 (apply!5040 lt!640650 0)))))))

(assert (=> d!513988 (= lt!641461 (BalanceConc!12261 (++!5068 (c!275419 (BalanceConc!12261 Empty!6158)) (c!275419 (charsOf!1904 (apply!5040 lt!640650 0))))))))

(assert (=> d!513988 (= (++!5066 (BalanceConc!12261 Empty!6158) (charsOf!1904 (apply!5040 lt!640650 0))) lt!641461)))

(declare-fun b!1687560 () Bool)

(declare-fun res!756629 () Bool)

(assert (=> b!1687560 (=> (not res!756629) (not e!1080357))))

(assert (=> b!1687560 (= res!756629 (>= (height!987 (++!5068 (c!275419 (BalanceConc!12261 Empty!6158)) (c!275419 (charsOf!1904 (apply!5040 lt!640650 0))))) (max!0 (height!987 (c!275419 (BalanceConc!12261 Empty!6158))) (height!987 (c!275419 (charsOf!1904 (apply!5040 lt!640650 0)))))))))

(assert (= (and d!513988 res!756628) b!1687558))

(assert (= (and b!1687558 res!756627) b!1687559))

(assert (= (and b!1687559 res!756630) b!1687560))

(assert (= (and b!1687560 res!756629) b!1687561))

(declare-fun m!2071921 () Bool)

(assert (=> b!1687559 m!2071921))

(declare-fun m!2071923 () Bool)

(assert (=> b!1687559 m!2071923))

(declare-fun m!2071925 () Bool)

(assert (=> b!1687559 m!2071925))

(assert (=> b!1687559 m!2071921))

(declare-fun m!2071927 () Bool)

(assert (=> b!1687559 m!2071927))

(assert (=> b!1687559 m!2071925))

(assert (=> b!1687559 m!2071923))

(declare-fun m!2071929 () Bool)

(assert (=> b!1687559 m!2071929))

(assert (=> b!1687560 m!2071921))

(assert (=> b!1687560 m!2071923))

(assert (=> b!1687560 m!2071925))

(assert (=> b!1687560 m!2071921))

(assert (=> b!1687560 m!2071927))

(assert (=> b!1687560 m!2071925))

(assert (=> b!1687560 m!2071923))

(assert (=> b!1687560 m!2071929))

(assert (=> b!1687558 m!2071921))

(assert (=> b!1687558 m!2071921))

(declare-fun m!2071937 () Bool)

(assert (=> b!1687558 m!2071937))

(declare-fun m!2071939 () Bool)

(assert (=> d!513988 m!2071939))

(assert (=> d!513988 m!2071921))

(declare-fun m!2071941 () Bool)

(assert (=> b!1687561 m!2071941))

(assert (=> b!1687561 m!2070731))

(assert (=> b!1687561 m!2070741))

(declare-fun m!2071943 () Bool)

(assert (=> b!1687561 m!2071943))

(assert (=> b!1687561 m!2070731))

(assert (=> b!1687561 m!2071943))

(declare-fun m!2071947 () Bool)

(assert (=> b!1687561 m!2071947))

(assert (=> b!1686897 d!513988))

(declare-fun d!513994 () Bool)

(declare-fun lt!641467 () Token!6076)

(declare-fun contains!3251 (List!18558 Token!6076) Bool)

(assert (=> d!513994 (contains!3251 lt!641128 lt!641467)))

(declare-fun e!1080369 () Token!6076)

(assert (=> d!513994 (= lt!641467 e!1080369)))

(declare-fun c!275650 () Bool)

(assert (=> d!513994 (= c!275650 (= 0 0))))

(declare-fun e!1080370 () Bool)

(assert (=> d!513994 e!1080370))

(declare-fun res!756637 () Bool)

(assert (=> d!513994 (=> (not res!756637) (not e!1080370))))

(assert (=> d!513994 (= res!756637 (<= 0 0))))

(assert (=> d!513994 (= (apply!5043 lt!641128 0) lt!641467)))

(declare-fun b!1687578 () Bool)

(assert (=> b!1687578 (= e!1080370 (< 0 (size!14729 lt!641128)))))

(declare-fun b!1687579 () Bool)

(assert (=> b!1687579 (= e!1080369 (head!3782 lt!641128))))

(declare-fun b!1687580 () Bool)

(assert (=> b!1687580 (= e!1080369 (apply!5043 (tail!2519 lt!641128) (- 0 1)))))

(assert (= (and d!513994 res!756637) b!1687578))

(assert (= (and d!513994 c!275650) b!1687579))

(assert (= (and d!513994 (not c!275650)) b!1687580))

(declare-fun m!2071971 () Bool)

(assert (=> d!513994 m!2071971))

(assert (=> b!1687578 m!2071789))

(declare-fun m!2071973 () Bool)

(assert (=> b!1687579 m!2071973))

(declare-fun m!2071975 () Bool)

(assert (=> b!1687580 m!2071975))

(assert (=> b!1687580 m!2071975))

(declare-fun m!2071977 () Bool)

(assert (=> b!1687580 m!2071977))

(assert (=> b!1686897 d!513994))

(declare-fun d!514004 () Bool)

(assert (=> d!514004 true))

(declare-fun order!11161 () Int)

(declare-fun lambda!68354 () Int)

(declare-fun dynLambda!8388 (Int Int) Int)

(assert (=> d!514004 (< (dynLambda!8381 order!11149 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457))))) (dynLambda!8388 order!11161 lambda!68354))))

(assert (=> d!514004 true))

(assert (=> d!514004 (< (dynLambda!8379 order!11145 (toValue!4734 (transformation!3255 (rule!5161 (h!23889 tokens!457))))) (dynLambda!8388 order!11161 lambda!68354))))

(declare-fun Forall!669 (Int) Bool)

(assert (=> d!514004 (= (semiInverseModEq!1278 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (toValue!4734 (transformation!3255 (rule!5161 (h!23889 tokens!457))))) (Forall!669 lambda!68354))))

(declare-fun bs!399700 () Bool)

(assert (= bs!399700 d!514004))

(declare-fun m!2071979 () Bool)

(assert (=> bs!399700 m!2071979))

(assert (=> d!513698 d!514004))

(declare-fun b!1687637 () Bool)

(declare-fun e!1080414 () Bool)

(declare-fun e!1080407 () Bool)

(assert (=> b!1687637 (= e!1080414 e!1080407)))

(declare-fun res!756662 () Bool)

(assert (=> b!1687637 (=> (not res!756662) (not e!1080407))))

(declare-fun appendAssoc!119 (List!18555 List!18555 List!18555) Bool)

(assert (=> b!1687637 (= res!756662 (appendAssoc!119 (list!7436 (left!14775 (right!15105 (c!275419 lt!640663)))) (list!7436 (right!15105 (right!15105 (c!275419 lt!640663)))) (list!7436 (c!275419 lt!640642))))))

(declare-fun b!1687638 () Bool)

(declare-fun e!1080409 () Bool)

(declare-fun e!1080413 () Bool)

(assert (=> b!1687638 (= e!1080409 e!1080413)))

(declare-fun res!756664 () Bool)

(assert (=> b!1687638 (=> res!756664 e!1080413)))

(assert (=> b!1687638 (= res!756664 (not ((_ is Node!6158) (c!275419 lt!640642))))))

(declare-fun d!514006 () Bool)

(assert (=> d!514006 e!1080409))

(declare-fun res!756660 () Bool)

(assert (=> d!514006 (=> (not res!756660) (not e!1080409))))

(declare-fun e!1080411 () Bool)

(assert (=> d!514006 (= res!756660 e!1080411)))

(declare-fun res!756659 () Bool)

(assert (=> d!514006 (=> res!756659 e!1080411)))

(assert (=> d!514006 (= res!756659 (not ((_ is Node!6158) (c!275419 lt!640663))))))

(assert (=> d!514006 (= (appendAssocInst!497 (c!275419 lt!640663) (c!275419 lt!640642)) true)))

(declare-fun b!1687639 () Bool)

(declare-fun e!1080410 () Bool)

(assert (=> b!1687639 (= e!1080410 e!1080414)))

(declare-fun res!756661 () Bool)

(assert (=> b!1687639 (=> res!756661 e!1080414)))

(assert (=> b!1687639 (= res!756661 (not ((_ is Node!6158) (right!15105 (c!275419 lt!640663)))))))

(declare-fun b!1687640 () Bool)

(declare-fun e!1080412 () Bool)

(assert (=> b!1687640 (= e!1080412 (appendAssoc!119 (++!5065 (list!7436 (c!275419 lt!640663)) (list!7436 (left!14775 (left!14775 (c!275419 lt!640642))))) (list!7436 (right!15105 (left!14775 (c!275419 lt!640642)))) (list!7436 (right!15105 (c!275419 lt!640642)))))))

(declare-fun b!1687641 () Bool)

(declare-fun e!1080408 () Bool)

(assert (=> b!1687641 (= e!1080413 e!1080408)))

(declare-fun res!756656 () Bool)

(assert (=> b!1687641 (=> (not res!756656) (not e!1080408))))

(assert (=> b!1687641 (= res!756656 (appendAssoc!119 (list!7436 (c!275419 lt!640663)) (list!7436 (left!14775 (c!275419 lt!640642))) (list!7436 (right!15105 (c!275419 lt!640642)))))))

(declare-fun b!1687642 () Bool)

(assert (=> b!1687642 (= e!1080407 (appendAssoc!119 (list!7436 (left!14775 (c!275419 lt!640663))) (list!7436 (left!14775 (right!15105 (c!275419 lt!640663)))) (++!5065 (list!7436 (right!15105 (right!15105 (c!275419 lt!640663)))) (list!7436 (c!275419 lt!640642)))))))

(declare-fun b!1687643 () Bool)

(declare-fun e!1080406 () Bool)

(assert (=> b!1687643 (= e!1080408 e!1080406)))

(declare-fun res!756658 () Bool)

(assert (=> b!1687643 (=> res!756658 e!1080406)))

(assert (=> b!1687643 (= res!756658 (not ((_ is Node!6158) (left!14775 (c!275419 lt!640642)))))))

(declare-fun b!1687644 () Bool)

(assert (=> b!1687644 (= e!1080411 e!1080410)))

(declare-fun res!756663 () Bool)

(assert (=> b!1687644 (=> (not res!756663) (not e!1080410))))

(assert (=> b!1687644 (= res!756663 (appendAssoc!119 (list!7436 (left!14775 (c!275419 lt!640663))) (list!7436 (right!15105 (c!275419 lt!640663))) (list!7436 (c!275419 lt!640642))))))

(declare-fun b!1687645 () Bool)

(assert (=> b!1687645 (= e!1080406 e!1080412)))

(declare-fun res!756657 () Bool)

(assert (=> b!1687645 (=> (not res!756657) (not e!1080412))))

(assert (=> b!1687645 (= res!756657 (appendAssoc!119 (list!7436 (c!275419 lt!640663)) (list!7436 (left!14775 (left!14775 (c!275419 lt!640642)))) (list!7436 (right!15105 (left!14775 (c!275419 lt!640642))))))))

(assert (= (and d!514006 (not res!756659)) b!1687644))

(assert (= (and b!1687644 res!756663) b!1687639))

(assert (= (and b!1687639 (not res!756661)) b!1687637))

(assert (= (and b!1687637 res!756662) b!1687642))

(assert (= (and d!514006 res!756660) b!1687638))

(assert (= (and b!1687638 (not res!756664)) b!1687641))

(assert (= (and b!1687641 res!756656) b!1687643))

(assert (= (and b!1687643 (not res!756658)) b!1687645))

(assert (= (and b!1687645 res!756657) b!1687640))

(assert (=> b!1687645 m!2070831))

(declare-fun m!2071997 () Bool)

(assert (=> b!1687645 m!2071997))

(declare-fun m!2071999 () Bool)

(assert (=> b!1687645 m!2071999))

(assert (=> b!1687645 m!2070831))

(assert (=> b!1687645 m!2071997))

(assert (=> b!1687645 m!2071999))

(declare-fun m!2072001 () Bool)

(assert (=> b!1687645 m!2072001))

(declare-fun m!2072003 () Bool)

(assert (=> b!1687642 m!2072003))

(declare-fun m!2072005 () Bool)

(assert (=> b!1687642 m!2072005))

(declare-fun m!2072007 () Bool)

(assert (=> b!1687642 m!2072007))

(assert (=> b!1687642 m!2070483))

(declare-fun m!2072009 () Bool)

(assert (=> b!1687642 m!2072009))

(assert (=> b!1687642 m!2072003))

(assert (=> b!1687642 m!2072005))

(assert (=> b!1687642 m!2072009))

(declare-fun m!2072011 () Bool)

(assert (=> b!1687642 m!2072011))

(assert (=> b!1687642 m!2072007))

(assert (=> b!1687642 m!2070483))

(assert (=> b!1687637 m!2072005))

(assert (=> b!1687637 m!2072007))

(assert (=> b!1687637 m!2070483))

(assert (=> b!1687637 m!2072005))

(assert (=> b!1687637 m!2072007))

(assert (=> b!1687637 m!2070483))

(declare-fun m!2072013 () Bool)

(assert (=> b!1687637 m!2072013))

(declare-fun m!2072015 () Bool)

(assert (=> b!1687640 m!2072015))

(assert (=> b!1687640 m!2071999))

(declare-fun m!2072017 () Bool)

(assert (=> b!1687640 m!2072017))

(declare-fun m!2072019 () Bool)

(assert (=> b!1687640 m!2072019))

(assert (=> b!1687640 m!2072017))

(assert (=> b!1687640 m!2070831))

(assert (=> b!1687640 m!2071997))

(assert (=> b!1687640 m!2072015))

(assert (=> b!1687640 m!2071999))

(assert (=> b!1687640 m!2071997))

(assert (=> b!1687640 m!2070831))

(assert (=> b!1687641 m!2070831))

(declare-fun m!2072021 () Bool)

(assert (=> b!1687641 m!2072021))

(assert (=> b!1687641 m!2072017))

(assert (=> b!1687641 m!2070831))

(assert (=> b!1687641 m!2072021))

(assert (=> b!1687641 m!2072017))

(declare-fun m!2072023 () Bool)

(assert (=> b!1687641 m!2072023))

(assert (=> b!1687644 m!2072003))

(declare-fun m!2072025 () Bool)

(assert (=> b!1687644 m!2072025))

(assert (=> b!1687644 m!2070483))

(assert (=> b!1687644 m!2072003))

(assert (=> b!1687644 m!2072025))

(assert (=> b!1687644 m!2070483))

(declare-fun m!2072027 () Bool)

(assert (=> b!1687644 m!2072027))

(assert (=> d!513734 d!514006))

(declare-fun call!107933 () Int)

(declare-fun bm!107924 () Bool)

(declare-fun c!275702 () Bool)

(assert (=> bm!107924 (= call!107933 (height!987 (ite c!275702 (c!275419 lt!640663) (left!14775 (c!275419 lt!640642)))))))

(declare-fun c!275697 () Bool)

(declare-fun bm!107925 () Bool)

(declare-fun c!275699 () Bool)

(declare-fun c!275703 () Bool)

(declare-fun call!107942 () Conc!6158)

(declare-fun call!107943 () Conc!6158)

(declare-fun c!275698 () Bool)

(declare-fun call!107939 () Conc!6158)

(declare-fun lt!641496 () Conc!6158)

(declare-fun lt!641497 () Conc!6158)

(declare-fun call!107935 () Conc!6158)

(declare-fun <>!153 (Conc!6158 Conc!6158) Conc!6158)

(assert (=> bm!107925 (= call!107939 (<>!153 (ite c!275698 (c!275419 lt!640663) (ite c!275702 (ite (or c!275699 c!275697) (left!14775 (c!275419 lt!640663)) call!107943) (ite c!275703 call!107935 lt!641497))) (ite c!275698 (c!275419 lt!640642) (ite c!275702 (ite c!275699 call!107942 (ite c!275697 call!107943 lt!641496)) (ite c!275703 (right!15105 (c!275419 lt!640642)) call!107935)))))))

(declare-fun b!1687778 () Bool)

(declare-fun e!1080482 () Conc!6158)

(declare-fun call!107937 () Conc!6158)

(assert (=> b!1687778 (= e!1080482 call!107937)))

(declare-fun b!1687779 () Bool)

(declare-fun e!1080488 () Conc!6158)

(declare-fun e!1080480 () Conc!6158)

(assert (=> b!1687779 (= e!1080488 e!1080480)))

(declare-fun call!107931 () Conc!6158)

(assert (=> b!1687779 (= lt!641497 call!107931)))

(declare-fun call!107940 () Int)

(declare-fun call!107941 () Int)

(assert (=> b!1687779 (= c!275703 (= call!107940 (- call!107941 3)))))

(declare-fun b!1687780 () Bool)

(declare-fun call!107932 () Conc!6158)

(assert (=> b!1687780 (= e!1080480 call!107932)))

(declare-fun b!1687781 () Bool)

(declare-fun res!756739 () Bool)

(declare-fun e!1080484 () Bool)

(assert (=> b!1687781 (=> (not res!756739) (not e!1080484))))

(declare-fun lt!641498 () Conc!6158)

(assert (=> b!1687781 (= res!756739 (>= (height!987 lt!641498) (max!0 (height!987 (c!275419 lt!640663)) (height!987 (c!275419 lt!640642)))))))

(declare-fun bm!107926 () Bool)

(declare-fun call!107944 () Conc!6158)

(assert (=> bm!107926 (= call!107931 call!107944)))

(declare-fun b!1687782 () Bool)

(declare-fun e!1080483 () Conc!6158)

(declare-fun e!1080486 () Conc!6158)

(assert (=> b!1687782 (= e!1080483 e!1080486)))

(declare-fun c!275704 () Bool)

(assert (=> b!1687782 (= c!275704 (= (c!275419 lt!640642) Empty!6158))))

(declare-fun b!1687783 () Bool)

(declare-fun e!1080481 () Bool)

(assert (=> b!1687783 (= e!1080481 (isBalanced!1930 (c!275419 lt!640642)))))

(declare-fun b!1687784 () Bool)

(declare-fun e!1080487 () Conc!6158)

(declare-fun call!107934 () Conc!6158)

(assert (=> b!1687784 (= e!1080487 call!107934)))

(declare-fun b!1687785 () Bool)

(declare-fun e!1080489 () Conc!6158)

(assert (=> b!1687785 (= e!1080489 call!107939)))

(declare-fun bm!107927 () Bool)

(declare-fun call!107930 () Conc!6158)

(assert (=> bm!107927 (= call!107935 call!107930)))

(declare-fun d!514016 () Bool)

(assert (=> d!514016 e!1080484))

(declare-fun res!756741 () Bool)

(assert (=> d!514016 (=> (not res!756741) (not e!1080484))))

(assert (=> d!514016 (= res!756741 (appendAssocInst!497 (c!275419 lt!640663) (c!275419 lt!640642)))))

(assert (=> d!514016 (= lt!641498 e!1080483)))

(declare-fun c!275700 () Bool)

(assert (=> d!514016 (= c!275700 (= (c!275419 lt!640663) Empty!6158))))

(assert (=> d!514016 e!1080481))

(declare-fun res!756738 () Bool)

(assert (=> d!514016 (=> (not res!756738) (not e!1080481))))

(assert (=> d!514016 (= res!756738 (isBalanced!1930 (c!275419 lt!640663)))))

(assert (=> d!514016 (= (++!5068 (c!275419 lt!640663) (c!275419 lt!640642)) lt!641498)))

(declare-fun bm!107928 () Bool)

(declare-fun call!107936 () Conc!6158)

(assert (=> bm!107928 (= call!107936 call!107939)))

(declare-fun b!1687786 () Bool)

(declare-fun lt!641495 () Int)

(assert (=> b!1687786 (= c!275698 (and (<= (- 1) lt!641495) (<= lt!641495 1)))))

(assert (=> b!1687786 (= lt!641495 (- (height!987 (c!275419 lt!640642)) (height!987 (c!275419 lt!640663))))))

(assert (=> b!1687786 (= e!1080486 e!1080489)))

(declare-fun bm!107929 () Bool)

(declare-fun call!107938 () Conc!6158)

(assert (=> bm!107929 (= call!107930 call!107938)))

(declare-fun bm!107930 () Bool)

(assert (=> bm!107930 (= call!107942 call!107944)))

(declare-fun b!1687787 () Bool)

(declare-fun call!107929 () Int)

(assert (=> b!1687787 (= c!275699 (>= call!107929 call!107941))))

(declare-fun e!1080485 () Conc!6158)

(assert (=> b!1687787 (= e!1080485 e!1080487)))

(declare-fun b!1687788 () Bool)

(declare-fun res!756737 () Bool)

(assert (=> b!1687788 (=> (not res!756737) (not e!1080484))))

(assert (=> b!1687788 (= res!756737 (isBalanced!1930 lt!641498))))

(declare-fun b!1687789 () Bool)

(assert (=> b!1687789 (= e!1080480 call!107932)))

(declare-fun b!1687790 () Bool)

(assert (=> b!1687790 (= e!1080489 e!1080485)))

(assert (=> b!1687790 (= c!275702 (< lt!641495 (- 1)))))

(declare-fun b!1687791 () Bool)

(assert (=> b!1687791 (= e!1080487 e!1080482)))

(assert (=> b!1687791 (= lt!641496 call!107942)))

(assert (=> b!1687791 (= c!275697 (= call!107940 (- call!107933 3)))))

(declare-fun b!1687792 () Bool)

(assert (=> b!1687792 (= e!1080483 (c!275419 lt!640642))))

(declare-fun c!275701 () Bool)

(declare-fun bm!107931 () Bool)

(assert (=> bm!107931 (= call!107938 (<>!153 (ite c!275702 (ite c!275697 (left!14775 (right!15105 (c!275419 lt!640663))) (left!14775 (c!275419 lt!640663))) (ite c!275701 call!107931 (ite c!275703 lt!641497 (right!15105 (left!14775 (c!275419 lt!640642)))))) (ite c!275702 (ite c!275697 lt!641496 (left!14775 (right!15105 (c!275419 lt!640663)))) (ite c!275701 (right!15105 (c!275419 lt!640642)) (ite c!275703 (right!15105 (left!14775 (c!275419 lt!640642))) (right!15105 (c!275419 lt!640642)))))))))

(declare-fun b!1687793 () Bool)

(declare-fun res!756740 () Bool)

(assert (=> b!1687793 (=> (not res!756740) (not e!1080484))))

(assert (=> b!1687793 (= res!756740 (<= (height!987 lt!641498) (+ (max!0 (height!987 (c!275419 lt!640663)) (height!987 (c!275419 lt!640642))) 1)))))

(declare-fun bm!107932 () Bool)

(assert (=> bm!107932 (= call!107940 (height!987 (ite c!275702 lt!641496 lt!641497)))))

(declare-fun bm!107933 () Bool)

(assert (=> bm!107933 (= call!107932 call!107936)))

(declare-fun b!1687794 () Bool)

(assert (=> b!1687794 (= e!1080486 (c!275419 lt!640663))))

(declare-fun b!1687795 () Bool)

(assert (=> b!1687795 (= c!275701 (>= call!107929 call!107933))))

(assert (=> b!1687795 (= e!1080485 e!1080488)))

(declare-fun b!1687796 () Bool)

(assert (=> b!1687796 (= e!1080488 call!107930)))

(declare-fun bm!107934 () Bool)

(assert (=> bm!107934 (= call!107929 (height!987 (ite c!275702 (left!14775 (c!275419 lt!640663)) (right!15105 (c!275419 lt!640642)))))))

(declare-fun bm!107935 () Bool)

(assert (=> bm!107935 (= call!107944 (++!5068 (ite c!275702 (ite c!275699 (right!15105 (c!275419 lt!640663)) (right!15105 (right!15105 (c!275419 lt!640663)))) (c!275419 lt!640663)) (ite c!275702 (c!275419 lt!640642) (ite c!275701 (left!14775 (c!275419 lt!640642)) (left!14775 (left!14775 (c!275419 lt!640642)))))))))

(declare-fun bm!107936 () Bool)

(assert (=> bm!107936 (= call!107941 (height!987 (ite c!275702 (right!15105 (c!275419 lt!640663)) (c!275419 lt!640642))))))

(declare-fun b!1687797 () Bool)

(assert (=> b!1687797 (= e!1080484 (= (list!7436 lt!641498) (++!5065 (list!7436 (c!275419 lt!640663)) (list!7436 (c!275419 lt!640642)))))))

(declare-fun b!1687798 () Bool)

(assert (=> b!1687798 (= e!1080482 call!107937)))

(declare-fun bm!107937 () Bool)

(assert (=> bm!107937 (= call!107937 call!107934)))

(declare-fun bm!107938 () Bool)

(assert (=> bm!107938 (= call!107934 call!107936)))

(declare-fun bm!107939 () Bool)

(assert (=> bm!107939 (= call!107943 call!107938)))

(assert (= (and d!514016 res!756738) b!1687783))

(assert (= (and d!514016 c!275700) b!1687792))

(assert (= (and d!514016 (not c!275700)) b!1687782))

(assert (= (and b!1687782 c!275704) b!1687794))

(assert (= (and b!1687782 (not c!275704)) b!1687786))

(assert (= (and b!1687786 c!275698) b!1687785))

(assert (= (and b!1687786 (not c!275698)) b!1687790))

(assert (= (and b!1687790 c!275702) b!1687787))

(assert (= (and b!1687790 (not c!275702)) b!1687795))

(assert (= (and b!1687787 c!275699) b!1687784))

(assert (= (and b!1687787 (not c!275699)) b!1687791))

(assert (= (and b!1687791 c!275697) b!1687798))

(assert (= (and b!1687791 (not c!275697)) b!1687778))

(assert (= (or b!1687798 b!1687778) bm!107939))

(assert (= (or b!1687798 b!1687778) bm!107937))

(assert (= (or b!1687784 b!1687791) bm!107930))

(assert (= (or b!1687784 bm!107937) bm!107938))

(assert (= (and b!1687795 c!275701) b!1687796))

(assert (= (and b!1687795 (not c!275701)) b!1687779))

(assert (= (and b!1687779 c!275703) b!1687789))

(assert (= (and b!1687779 (not c!275703)) b!1687780))

(assert (= (or b!1687789 b!1687780) bm!107927))

(assert (= (or b!1687789 b!1687780) bm!107933))

(assert (= (or b!1687796 b!1687779) bm!107926))

(assert (= (or b!1687796 bm!107927) bm!107929))

(assert (= (or bm!107938 bm!107933) bm!107928))

(assert (= (or b!1687787 b!1687795) bm!107934))

(assert (= (or b!1687791 b!1687795) bm!107924))

(assert (= (or b!1687791 b!1687779) bm!107932))

(assert (= (or bm!107939 bm!107929) bm!107931))

(assert (= (or bm!107930 bm!107926) bm!107935))

(assert (= (or b!1687787 b!1687779) bm!107936))

(assert (= (or b!1687785 bm!107928) bm!107925))

(assert (= (and d!514016 res!756741) b!1687788))

(assert (= (and b!1687788 res!756737) b!1687793))

(assert (= (and b!1687793 res!756740) b!1687781))

(assert (= (and b!1687781 res!756739) b!1687797))

(assert (=> d!514016 m!2070971))

(declare-fun m!2072099 () Bool)

(assert (=> d!514016 m!2072099))

(declare-fun m!2072101 () Bool)

(assert (=> bm!107934 m!2072101))

(declare-fun m!2072103 () Bool)

(assert (=> bm!107932 m!2072103))

(declare-fun m!2072105 () Bool)

(assert (=> bm!107924 m!2072105))

(declare-fun m!2072107 () Bool)

(assert (=> bm!107925 m!2072107))

(declare-fun m!2072109 () Bool)

(assert (=> bm!107935 m!2072109))

(declare-fun m!2072111 () Bool)

(assert (=> b!1687793 m!2072111))

(assert (=> b!1687793 m!2070963))

(assert (=> b!1687793 m!2070961))

(assert (=> b!1687793 m!2070963))

(assert (=> b!1687793 m!2070961))

(assert (=> b!1687793 m!2070967))

(declare-fun m!2072113 () Bool)

(assert (=> bm!107936 m!2072113))

(declare-fun m!2072115 () Bool)

(assert (=> b!1687783 m!2072115))

(declare-fun m!2072117 () Bool)

(assert (=> bm!107931 m!2072117))

(declare-fun m!2072119 () Bool)

(assert (=> b!1687788 m!2072119))

(assert (=> b!1687781 m!2072111))

(assert (=> b!1687781 m!2070963))

(assert (=> b!1687781 m!2070961))

(assert (=> b!1687781 m!2070963))

(assert (=> b!1687781 m!2070961))

(assert (=> b!1687781 m!2070967))

(declare-fun m!2072121 () Bool)

(assert (=> b!1687797 m!2072121))

(assert (=> b!1687797 m!2070831))

(assert (=> b!1687797 m!2070483))

(assert (=> b!1687797 m!2070831))

(assert (=> b!1687797 m!2070483))

(declare-fun m!2072123 () Bool)

(assert (=> b!1687797 m!2072123))

(assert (=> b!1687786 m!2070961))

(assert (=> b!1687786 m!2070963))

(assert (=> d!513734 d!514016))

(declare-fun d!514042 () Bool)

(declare-fun e!1080494 () Bool)

(assert (=> d!514042 e!1080494))

(declare-fun res!756743 () Bool)

(assert (=> d!514042 (=> (not res!756743) (not e!1080494))))

(declare-fun lt!641499 () Option!3569)

(assert (=> d!514042 (= res!756743 (= (isDefined!2918 lt!641499) (isDefined!2917 (maxPrefixZipper!370 thiss!17113 (t!154810 rules!1846) (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457))))))))))

(declare-fun e!1080492 () Option!3569)

(assert (=> d!514042 (= lt!641499 e!1080492)))

(declare-fun c!275705 () Bool)

(assert (=> d!514042 (= c!275705 (and ((_ is Cons!18487) (t!154810 rules!1846)) ((_ is Nil!18487) (t!154810 (t!154810 rules!1846)))))))

(declare-fun lt!641505 () Unit!31839)

(declare-fun lt!641503 () Unit!31839)

(assert (=> d!514042 (= lt!641505 lt!641503)))

(declare-fun lt!641500 () List!18555)

(declare-fun lt!641502 () List!18555)

(assert (=> d!514042 (isPrefix!1513 lt!641500 lt!641502)))

(assert (=> d!514042 (= lt!641503 (lemmaIsPrefixRefl!1030 lt!641500 lt!641502))))

(assert (=> d!514042 (= lt!641502 (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))

(assert (=> d!514042 (= lt!641500 (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))

(assert (=> d!514042 (rulesValidInductive!1052 thiss!17113 (t!154810 rules!1846))))

(assert (=> d!514042 (= (maxPrefixZipperSequence!755 thiss!17113 (t!154810 rules!1846) (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))) lt!641499)))

(declare-fun call!107945 () Option!3569)

(declare-fun bm!107940 () Bool)

(assert (=> bm!107940 (= call!107945 (maxPrefixOneRuleZipperSequence!362 thiss!17113 (h!23888 (t!154810 rules!1846)) (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))

(declare-fun b!1687799 () Bool)

(assert (=> b!1687799 (= e!1080492 call!107945)))

(declare-fun b!1687800 () Bool)

(declare-fun e!1080493 () Bool)

(declare-fun e!1080495 () Bool)

(assert (=> b!1687800 (= e!1080493 e!1080495)))

(declare-fun res!756747 () Bool)

(assert (=> b!1687800 (=> (not res!756747) (not e!1080495))))

(assert (=> b!1687800 (= res!756747 (= (_1!10521 (get!5422 lt!641499)) (_1!10520 (get!5420 (maxPrefixZipper!370 thiss!17113 (t!154810 rules!1846) (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))))))

(declare-fun b!1687801 () Bool)

(declare-fun e!1080491 () Bool)

(assert (=> b!1687801 (= e!1080494 e!1080491)))

(declare-fun res!756744 () Bool)

(assert (=> b!1687801 (=> res!756744 e!1080491)))

(assert (=> b!1687801 (= res!756744 (not (isDefined!2918 lt!641499)))))

(declare-fun b!1687802 () Bool)

(declare-fun e!1080490 () Bool)

(assert (=> b!1687802 (= e!1080491 e!1080490)))

(declare-fun res!756746 () Bool)

(assert (=> b!1687802 (=> (not res!756746) (not e!1080490))))

(assert (=> b!1687802 (= res!756746 (= (_1!10521 (get!5422 lt!641499)) (_1!10520 (get!5420 (maxPrefix!1444 thiss!17113 (t!154810 rules!1846) (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))))))

(declare-fun b!1687803 () Bool)

(declare-fun lt!641501 () Option!3569)

(declare-fun lt!641504 () Option!3569)

(assert (=> b!1687803 (= e!1080492 (ite (and ((_ is None!3568) lt!641501) ((_ is None!3568) lt!641504)) None!3568 (ite ((_ is None!3568) lt!641504) lt!641501 (ite ((_ is None!3568) lt!641501) lt!641504 (ite (>= (size!14720 (_1!10521 (v!24889 lt!641501))) (size!14720 (_1!10521 (v!24889 lt!641504)))) lt!641501 lt!641504)))))))

(assert (=> b!1687803 (= lt!641501 call!107945)))

(assert (=> b!1687803 (= lt!641504 (maxPrefixZipperSequence!755 thiss!17113 (t!154810 (t!154810 rules!1846)) (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))

(declare-fun b!1687804 () Bool)

(assert (=> b!1687804 (= e!1080495 (= (list!7432 (_2!10521 (get!5422 lt!641499))) (_2!10520 (get!5420 (maxPrefixZipper!370 thiss!17113 (t!154810 rules!1846) (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))))))

(declare-fun b!1687805 () Bool)

(assert (=> b!1687805 (= e!1080490 (= (list!7432 (_2!10521 (get!5422 lt!641499))) (_2!10520 (get!5420 (maxPrefix!1444 thiss!17113 (t!154810 rules!1846) (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))))))

(declare-fun b!1687806 () Bool)

(declare-fun res!756745 () Bool)

(assert (=> b!1687806 (=> (not res!756745) (not e!1080494))))

(assert (=> b!1687806 (= res!756745 e!1080493)))

(declare-fun res!756742 () Bool)

(assert (=> b!1687806 (=> res!756742 e!1080493)))

(assert (=> b!1687806 (= res!756742 (not (isDefined!2918 lt!641499)))))

(assert (= (and d!514042 c!275705) b!1687799))

(assert (= (and d!514042 (not c!275705)) b!1687803))

(assert (= (or b!1687799 b!1687803) bm!107940))

(assert (= (and d!514042 res!756743) b!1687806))

(assert (= (and b!1687806 (not res!756742)) b!1687800))

(assert (= (and b!1687800 res!756747) b!1687804))

(assert (= (and b!1687806 res!756745) b!1687801))

(assert (= (and b!1687801 (not res!756744)) b!1687802))

(assert (= (and b!1687802 res!756746) b!1687805))

(declare-fun m!2072125 () Bool)

(assert (=> b!1687806 m!2072125))

(declare-fun m!2072127 () Bool)

(assert (=> b!1687802 m!2072127))

(assert (=> b!1687802 m!2069727))

(assert (=> b!1687802 m!2070083))

(assert (=> b!1687802 m!2070083))

(declare-fun m!2072129 () Bool)

(assert (=> b!1687802 m!2072129))

(assert (=> b!1687802 m!2072129))

(declare-fun m!2072131 () Bool)

(assert (=> b!1687802 m!2072131))

(assert (=> b!1687803 m!2069727))

(declare-fun m!2072133 () Bool)

(assert (=> b!1687803 m!2072133))

(assert (=> b!1687804 m!2070083))

(declare-fun m!2072135 () Bool)

(assert (=> b!1687804 m!2072135))

(declare-fun m!2072137 () Bool)

(assert (=> b!1687804 m!2072137))

(assert (=> b!1687804 m!2072135))

(declare-fun m!2072139 () Bool)

(assert (=> b!1687804 m!2072139))

(assert (=> b!1687804 m!2072127))

(assert (=> b!1687804 m!2069727))

(assert (=> b!1687804 m!2070083))

(assert (=> b!1687800 m!2072127))

(assert (=> b!1687800 m!2069727))

(assert (=> b!1687800 m!2070083))

(assert (=> b!1687800 m!2070083))

(assert (=> b!1687800 m!2072135))

(assert (=> b!1687800 m!2072135))

(assert (=> b!1687800 m!2072139))

(assert (=> d!514042 m!2072125))

(assert (=> d!514042 m!2072135))

(declare-fun m!2072141 () Bool)

(assert (=> d!514042 m!2072141))

(assert (=> d!514042 m!2070083))

(assert (=> d!514042 m!2072135))

(assert (=> d!514042 m!2069727))

(assert (=> d!514042 m!2070083))

(declare-fun m!2072143 () Bool)

(assert (=> d!514042 m!2072143))

(assert (=> d!514042 m!2071711))

(declare-fun m!2072145 () Bool)

(assert (=> d!514042 m!2072145))

(assert (=> b!1687801 m!2072125))

(assert (=> b!1687805 m!2072137))

(assert (=> b!1687805 m!2072129))

(assert (=> b!1687805 m!2072131))

(assert (=> b!1687805 m!2070083))

(assert (=> b!1687805 m!2072129))

(assert (=> b!1687805 m!2072127))

(assert (=> b!1687805 m!2069727))

(assert (=> b!1687805 m!2070083))

(assert (=> bm!107940 m!2069727))

(declare-fun m!2072147 () Bool)

(assert (=> bm!107940 m!2072147))

(assert (=> b!1686629 d!514042))

(declare-fun d!514044 () Bool)

(declare-fun lt!641508 () Int)

(assert (=> d!514044 (>= lt!641508 0)))

(declare-fun e!1080498 () Int)

(assert (=> d!514044 (= lt!641508 e!1080498)))

(declare-fun c!275708 () Bool)

(assert (=> d!514044 (= c!275708 ((_ is Nil!18485) (_2!10520 (get!5420 lt!641052))))))

(assert (=> d!514044 (= (size!14724 (_2!10520 (get!5420 lt!641052))) lt!641508)))

(declare-fun b!1687811 () Bool)

(assert (=> b!1687811 (= e!1080498 0)))

(declare-fun b!1687812 () Bool)

(assert (=> b!1687812 (= e!1080498 (+ 1 (size!14724 (t!154808 (_2!10520 (get!5420 lt!641052))))))))

(assert (= (and d!514044 c!275708) b!1687811))

(assert (= (and d!514044 (not c!275708)) b!1687812))

(declare-fun m!2072149 () Bool)

(assert (=> b!1687812 m!2072149))

(assert (=> b!1686837 d!514044))

(declare-fun d!514046 () Bool)

(assert (=> d!514046 (= (get!5420 lt!641052) (v!24888 lt!641052))))

(assert (=> b!1686837 d!514046))

(declare-fun d!514048 () Bool)

(declare-fun lt!641509 () Int)

(assert (=> d!514048 (>= lt!641509 0)))

(declare-fun e!1080499 () Int)

(assert (=> d!514048 (= lt!641509 e!1080499)))

(declare-fun c!275709 () Bool)

(assert (=> d!514048 (= c!275709 ((_ is Nil!18485) (originalCharacters!4069 (h!23889 tokens!457))))))

(assert (=> d!514048 (= (size!14724 (originalCharacters!4069 (h!23889 tokens!457))) lt!641509)))

(declare-fun b!1687813 () Bool)

(assert (=> b!1687813 (= e!1080499 0)))

(declare-fun b!1687814 () Bool)

(assert (=> b!1687814 (= e!1080499 (+ 1 (size!14724 (t!154808 (originalCharacters!4069 (h!23889 tokens!457))))))))

(assert (= (and d!514048 c!275709) b!1687813))

(assert (= (and d!514048 (not c!275709)) b!1687814))

(declare-fun m!2072151 () Bool)

(assert (=> b!1687814 m!2072151))

(assert (=> b!1686837 d!514048))

(declare-fun d!514050 () Bool)

(declare-fun lt!641510 () Int)

(assert (=> d!514050 (>= lt!641510 0)))

(declare-fun e!1080500 () Int)

(assert (=> d!514050 (= lt!641510 e!1080500)))

(declare-fun c!275710 () Bool)

(assert (=> d!514050 (= c!275710 ((_ is Nil!18485) lt!640645))))

(assert (=> d!514050 (= (size!14724 lt!640645) lt!641510)))

(declare-fun b!1687815 () Bool)

(assert (=> b!1687815 (= e!1080500 0)))

(declare-fun b!1687816 () Bool)

(assert (=> b!1687816 (= e!1080500 (+ 1 (size!14724 (t!154808 lt!640645))))))

(assert (= (and d!514050 c!275710) b!1687815))

(assert (= (and d!514050 (not c!275710)) b!1687816))

(declare-fun m!2072153 () Bool)

(assert (=> b!1687816 m!2072153))

(assert (=> b!1686743 d!514050))

(declare-fun d!514052 () Bool)

(declare-fun lt!641511 () Int)

(assert (=> d!514052 (>= lt!641511 0)))

(declare-fun e!1080501 () Int)

(assert (=> d!514052 (= lt!641511 e!1080501)))

(declare-fun c!275711 () Bool)

(assert (=> d!514052 (= c!275711 ((_ is Nil!18485) lt!640654))))

(assert (=> d!514052 (= (size!14724 lt!640654) lt!641511)))

(declare-fun b!1687817 () Bool)

(assert (=> b!1687817 (= e!1080501 0)))

(declare-fun b!1687818 () Bool)

(assert (=> b!1687818 (= e!1080501 (+ 1 (size!14724 (t!154808 lt!640654))))))

(assert (= (and d!514052 c!275711) b!1687817))

(assert (= (and d!514052 (not c!275711)) b!1687818))

(declare-fun m!2072155 () Bool)

(assert (=> b!1687818 m!2072155))

(assert (=> b!1686743 d!514052))

(assert (=> b!1686682 d!513652))

(declare-fun d!514054 () Bool)

(assert (=> d!514054 (= (list!7431 (_1!10519 lt!641172)) (list!7434 (c!275421 (_1!10519 lt!641172))))))

(declare-fun bs!399705 () Bool)

(assert (= bs!399705 d!514054))

(declare-fun m!2072157 () Bool)

(assert (=> bs!399705 m!2072157))

(assert (=> b!1686933 d!514054))

(declare-fun d!514056 () Bool)

(declare-fun e!1080508 () Bool)

(assert (=> d!514056 e!1080508))

(declare-fun c!275716 () Bool)

(declare-fun lt!641518 () tuple2!18242)

(assert (=> d!514056 (= c!275716 (> (size!14729 (_1!10523 lt!641518)) 0))))

(declare-fun e!1080509 () tuple2!18242)

(assert (=> d!514056 (= lt!641518 e!1080509)))

(declare-fun c!275717 () Bool)

(declare-fun lt!641519 () Option!3568)

(assert (=> d!514056 (= c!275717 ((_ is Some!3567) lt!641519))))

(assert (=> d!514056 (= lt!641519 (maxPrefix!1444 thiss!17113 rules!1846 (list!7432 (seqFromList!2247 lt!640654))))))

(assert (=> d!514056 (= (lexList!907 thiss!17113 rules!1846 (list!7432 (seqFromList!2247 lt!640654))) lt!641518)))

(declare-fun b!1687829 () Bool)

(assert (=> b!1687829 (= e!1080508 (= (_2!10523 lt!641518) (list!7432 (seqFromList!2247 lt!640654))))))

(declare-fun b!1687830 () Bool)

(declare-fun e!1080510 () Bool)

(assert (=> b!1687830 (= e!1080510 (not (isEmpty!11574 (_1!10523 lt!641518))))))

(declare-fun b!1687831 () Bool)

(declare-fun lt!641520 () tuple2!18242)

(assert (=> b!1687831 (= e!1080509 (tuple2!18243 (Cons!18488 (_1!10520 (v!24888 lt!641519)) (_1!10523 lt!641520)) (_2!10523 lt!641520)))))

(assert (=> b!1687831 (= lt!641520 (lexList!907 thiss!17113 rules!1846 (_2!10520 (v!24888 lt!641519))))))

(declare-fun b!1687832 () Bool)

(assert (=> b!1687832 (= e!1080508 e!1080510)))

(declare-fun res!756750 () Bool)

(assert (=> b!1687832 (= res!756750 (< (size!14724 (_2!10523 lt!641518)) (size!14724 (list!7432 (seqFromList!2247 lt!640654)))))))

(assert (=> b!1687832 (=> (not res!756750) (not e!1080510))))

(declare-fun b!1687833 () Bool)

(assert (=> b!1687833 (= e!1080509 (tuple2!18243 Nil!18488 (list!7432 (seqFromList!2247 lt!640654))))))

(assert (= (and d!514056 c!275717) b!1687831))

(assert (= (and d!514056 (not c!275717)) b!1687833))

(assert (= (and d!514056 c!275716) b!1687832))

(assert (= (and d!514056 (not c!275716)) b!1687829))

(assert (= (and b!1687832 res!756750) b!1687830))

(declare-fun m!2072159 () Bool)

(assert (=> d!514056 m!2072159))

(assert (=> d!514056 m!2070861))

(declare-fun m!2072161 () Bool)

(assert (=> d!514056 m!2072161))

(declare-fun m!2072163 () Bool)

(assert (=> b!1687830 m!2072163))

(declare-fun m!2072165 () Bool)

(assert (=> b!1687831 m!2072165))

(declare-fun m!2072167 () Bool)

(assert (=> b!1687832 m!2072167))

(assert (=> b!1687832 m!2070861))

(declare-fun m!2072169 () Bool)

(assert (=> b!1687832 m!2072169))

(assert (=> b!1686933 d!514056))

(declare-fun d!514058 () Bool)

(assert (=> d!514058 (= (list!7432 (seqFromList!2247 lt!640654)) (list!7436 (c!275419 (seqFromList!2247 lt!640654))))))

(declare-fun bs!399706 () Bool)

(assert (= bs!399706 d!514058))

(declare-fun m!2072171 () Bool)

(assert (=> bs!399706 m!2072171))

(assert (=> b!1686933 d!514058))

(declare-fun d!514060 () Bool)

(declare-fun e!1080513 () Bool)

(assert (=> d!514060 e!1080513))

(declare-fun res!756753 () Bool)

(assert (=> d!514060 (=> (not res!756753) (not e!1080513))))

(declare-fun lt!641523 () BalanceConc!12262)

(assert (=> d!514060 (= res!756753 (= (list!7431 lt!641523) (t!154811 (t!154811 tokens!457))))))

(declare-fun fromList!423 (List!18558) Conc!6159)

(assert (=> d!514060 (= lt!641523 (BalanceConc!12263 (fromList!423 (t!154811 (t!154811 tokens!457)))))))

(assert (=> d!514060 (= (fromListB!1031 (t!154811 (t!154811 tokens!457))) lt!641523)))

(declare-fun b!1687836 () Bool)

(assert (=> b!1687836 (= e!1080513 (isBalanced!1928 (fromList!423 (t!154811 (t!154811 tokens!457)))))))

(assert (= (and d!514060 res!756753) b!1687836))

(declare-fun m!2072173 () Bool)

(assert (=> d!514060 m!2072173))

(declare-fun m!2072175 () Bool)

(assert (=> d!514060 m!2072175))

(assert (=> b!1687836 m!2072175))

(assert (=> b!1687836 m!2072175))

(declare-fun m!2072177 () Bool)

(assert (=> b!1687836 m!2072177))

(assert (=> d!513620 d!514060))

(declare-fun b!1687883 () Bool)

(declare-fun e!1080539 () Bool)

(declare-fun e!1080538 () Bool)

(assert (=> b!1687883 (= e!1080539 e!1080538)))

(declare-fun c!275728 () Bool)

(assert (=> b!1687883 (= c!275728 ((_ is EmptyLang!4583) (regex!3255 (rule!5161 lt!641264))))))

(declare-fun b!1687884 () Bool)

(declare-fun e!1080542 () Bool)

(declare-fun e!1080540 () Bool)

(assert (=> b!1687884 (= e!1080542 e!1080540)))

(declare-fun res!756784 () Bool)

(assert (=> b!1687884 (=> (not res!756784) (not e!1080540))))

(declare-fun lt!641536 () Bool)

(assert (=> b!1687884 (= res!756784 (not lt!641536))))

(declare-fun b!1687885 () Bool)

(declare-fun call!107948 () Bool)

(assert (=> b!1687885 (= e!1080539 (= lt!641536 call!107948))))

(declare-fun b!1687886 () Bool)

(declare-fun e!1080541 () Bool)

(assert (=> b!1687886 (= e!1080541 (not (= (head!3780 lt!641265) (c!275420 (regex!3255 (rule!5161 lt!641264))))))))

(declare-fun b!1687887 () Bool)

(declare-fun res!756788 () Bool)

(declare-fun e!1080537 () Bool)

(assert (=> b!1687887 (=> (not res!756788) (not e!1080537))))

(assert (=> b!1687887 (= res!756788 (isEmpty!11569 (tail!2518 lt!641265)))))

(declare-fun b!1687888 () Bool)

(declare-fun res!756789 () Bool)

(assert (=> b!1687888 (=> res!756789 e!1080542)))

(assert (=> b!1687888 (= res!756789 (not ((_ is ElementMatch!4583) (regex!3255 (rule!5161 lt!641264)))))))

(assert (=> b!1687888 (= e!1080538 e!1080542)))

(declare-fun b!1687889 () Bool)

(assert (=> b!1687889 (= e!1080540 e!1080541)))

(declare-fun res!756786 () Bool)

(assert (=> b!1687889 (=> res!756786 e!1080541)))

(assert (=> b!1687889 (= res!756786 call!107948)))

(declare-fun b!1687890 () Bool)

(assert (=> b!1687890 (= e!1080537 (= (head!3780 lt!641265) (c!275420 (regex!3255 (rule!5161 lt!641264)))))))

(declare-fun b!1687891 () Bool)

(declare-fun res!756785 () Bool)

(assert (=> b!1687891 (=> res!756785 e!1080541)))

(assert (=> b!1687891 (= res!756785 (not (isEmpty!11569 (tail!2518 lt!641265))))))

(declare-fun d!514062 () Bool)

(assert (=> d!514062 e!1080539))

(declare-fun c!275727 () Bool)

(assert (=> d!514062 (= c!275727 ((_ is EmptyExpr!4583) (regex!3255 (rule!5161 lt!641264))))))

(declare-fun e!1080536 () Bool)

(assert (=> d!514062 (= lt!641536 e!1080536)))

(declare-fun c!275729 () Bool)

(assert (=> d!514062 (= c!275729 (isEmpty!11569 lt!641265))))

(assert (=> d!514062 (validRegex!1842 (regex!3255 (rule!5161 lt!641264)))))

(assert (=> d!514062 (= (matchR!2072 (regex!3255 (rule!5161 lt!641264)) lt!641265) lt!641536)))

(declare-fun b!1687892 () Bool)

(assert (=> b!1687892 (= e!1080536 (matchR!2072 (derivativeStep!1140 (regex!3255 (rule!5161 lt!641264)) (head!3780 lt!641265)) (tail!2518 lt!641265)))))

(declare-fun b!1687893 () Bool)

(declare-fun res!756790 () Bool)

(assert (=> b!1687893 (=> res!756790 e!1080542)))

(assert (=> b!1687893 (= res!756790 e!1080537)))

(declare-fun res!756787 () Bool)

(assert (=> b!1687893 (=> (not res!756787) (not e!1080537))))

(assert (=> b!1687893 (= res!756787 lt!641536)))

(declare-fun bm!107943 () Bool)

(assert (=> bm!107943 (= call!107948 (isEmpty!11569 lt!641265))))

(declare-fun b!1687894 () Bool)

(declare-fun res!756791 () Bool)

(assert (=> b!1687894 (=> (not res!756791) (not e!1080537))))

(assert (=> b!1687894 (= res!756791 (not call!107948))))

(declare-fun b!1687895 () Bool)

(assert (=> b!1687895 (= e!1080538 (not lt!641536))))

(declare-fun b!1687896 () Bool)

(declare-fun nullable!1369 (Regex!4583) Bool)

(assert (=> b!1687896 (= e!1080536 (nullable!1369 (regex!3255 (rule!5161 lt!641264))))))

(assert (= (and d!514062 c!275729) b!1687896))

(assert (= (and d!514062 (not c!275729)) b!1687892))

(assert (= (and d!514062 c!275727) b!1687885))

(assert (= (and d!514062 (not c!275727)) b!1687883))

(assert (= (and b!1687883 c!275728) b!1687895))

(assert (= (and b!1687883 (not c!275728)) b!1687888))

(assert (= (and b!1687888 (not res!756789)) b!1687893))

(assert (= (and b!1687893 res!756787) b!1687894))

(assert (= (and b!1687894 res!756791) b!1687887))

(assert (= (and b!1687887 res!756788) b!1687890))

(assert (= (and b!1687893 (not res!756790)) b!1687884))

(assert (= (and b!1687884 res!756784) b!1687889))

(assert (= (and b!1687889 (not res!756786)) b!1687891))

(assert (= (and b!1687891 (not res!756785)) b!1687886))

(assert (= (or b!1687885 b!1687894 b!1687889) bm!107943))

(declare-fun m!2072179 () Bool)

(assert (=> b!1687891 m!2072179))

(assert (=> b!1687891 m!2072179))

(declare-fun m!2072181 () Bool)

(assert (=> b!1687891 m!2072181))

(assert (=> b!1687887 m!2072179))

(assert (=> b!1687887 m!2072179))

(assert (=> b!1687887 m!2072181))

(declare-fun m!2072183 () Bool)

(assert (=> b!1687886 m!2072183))

(declare-fun m!2072185 () Bool)

(assert (=> b!1687896 m!2072185))

(declare-fun m!2072187 () Bool)

(assert (=> d!514062 m!2072187))

(declare-fun m!2072189 () Bool)

(assert (=> d!514062 m!2072189))

(assert (=> b!1687890 m!2072183))

(assert (=> bm!107943 m!2072187))

(assert (=> b!1687892 m!2072183))

(assert (=> b!1687892 m!2072183))

(declare-fun m!2072191 () Bool)

(assert (=> b!1687892 m!2072191))

(assert (=> b!1687892 m!2072179))

(assert (=> b!1687892 m!2072191))

(assert (=> b!1687892 m!2072179))

(declare-fun m!2072193 () Bool)

(assert (=> b!1687892 m!2072193))

(assert (=> b!1687033 d!514062))

(assert (=> b!1687033 d!513688))

(declare-fun d!514064 () Bool)

(assert (=> d!514064 (= (isEmpty!11573 (maxPrefixOneRule!845 thiss!17113 (rule!5161 lt!641264) lt!641271)) (not ((_ is Some!3567) (maxPrefixOneRule!845 thiss!17113 (rule!5161 lt!641264) lt!641271))))))

(assert (=> b!1687033 d!514064))

(declare-fun d!514066 () Bool)

(assert (=> d!514066 (isEmpty!11573 (maxPrefixOneRule!845 thiss!17113 (rule!5161 lt!641264) lt!641271))))

(declare-fun lt!641548 () Unit!31839)

(declare-fun choose!10208 (LexerInterface!2884 Rule!6310 List!18557 List!18555) Unit!31839)

(assert (=> d!514066 (= lt!641548 (choose!10208 thiss!17113 (rule!5161 lt!641264) rules!1846 lt!641271))))

(assert (=> d!514066 (not (isEmpty!11563 rules!1846))))

(assert (=> d!514066 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!239 thiss!17113 (rule!5161 lt!641264) rules!1846 lt!641271) lt!641548)))

(declare-fun bs!399711 () Bool)

(assert (= bs!399711 d!514066))

(assert (=> bs!399711 m!2071009))

(assert (=> bs!399711 m!2071009))

(assert (=> bs!399711 m!2071015))

(declare-fun m!2072257 () Bool)

(assert (=> bs!399711 m!2072257))

(assert (=> bs!399711 m!2069733))

(assert (=> b!1687033 d!514066))

(declare-fun d!514088 () Bool)

(assert (=> d!514088 (= (list!7432 (charsOf!1904 lt!641264)) (list!7436 (c!275419 (charsOf!1904 lt!641264))))))

(declare-fun bs!399712 () Bool)

(assert (= bs!399712 d!514088))

(declare-fun m!2072259 () Bool)

(assert (=> bs!399712 m!2072259))

(assert (=> b!1687033 d!514088))

(declare-fun b!1687907 () Bool)

(declare-fun res!756803 () Bool)

(declare-fun e!1080550 () Bool)

(assert (=> b!1687907 (=> (not res!756803) (not e!1080550))))

(declare-fun lt!641550 () Option!3568)

(assert (=> b!1687907 (= res!756803 (= (value!102440 (_1!10520 (get!5420 lt!641550))) (apply!5039 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641550)))) (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!641550)))))))))

(declare-fun b!1687908 () Bool)

(declare-fun e!1080549 () Bool)

(assert (=> b!1687908 (= e!1080549 (matchR!2072 (regex!3255 (rule!5161 lt!641264)) (_1!10524 (findLongestMatchInner!376 (regex!3255 (rule!5161 lt!641264)) Nil!18485 (size!14724 Nil!18485) lt!641271 lt!641271 (size!14724 lt!641271)))))))

(declare-fun b!1687909 () Bool)

(declare-fun e!1080548 () Bool)

(assert (=> b!1687909 (= e!1080548 e!1080550)))

(declare-fun res!756804 () Bool)

(assert (=> b!1687909 (=> (not res!756804) (not e!1080550))))

(assert (=> b!1687909 (= res!756804 (matchR!2072 (regex!3255 (rule!5161 lt!641264)) (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641550))))))))

(declare-fun b!1687910 () Bool)

(declare-fun res!756805 () Bool)

(assert (=> b!1687910 (=> (not res!756805) (not e!1080550))))

(assert (=> b!1687910 (= res!756805 (< (size!14724 (_2!10520 (get!5420 lt!641550))) (size!14724 lt!641271)))))

(declare-fun b!1687911 () Bool)

(assert (=> b!1687911 (= e!1080550 (= (size!14720 (_1!10520 (get!5420 lt!641550))) (size!14724 (originalCharacters!4069 (_1!10520 (get!5420 lt!641550))))))))

(declare-fun b!1687912 () Bool)

(declare-fun e!1080551 () Option!3568)

(declare-fun lt!641552 () tuple2!18244)

(assert (=> b!1687912 (= e!1080551 (Some!3567 (tuple2!18237 (Token!6077 (apply!5039 (transformation!3255 (rule!5161 lt!641264)) (seqFromList!2247 (_1!10524 lt!641552))) (rule!5161 lt!641264) (size!14726 (seqFromList!2247 (_1!10524 lt!641552))) (_1!10524 lt!641552)) (_2!10524 lt!641552))))))

(declare-fun lt!641553 () Unit!31839)

(assert (=> b!1687912 (= lt!641553 (longestMatchIsAcceptedByMatchOrIsEmpty!360 (regex!3255 (rule!5161 lt!641264)) lt!641271))))

(declare-fun res!756799 () Bool)

(assert (=> b!1687912 (= res!756799 (isEmpty!11569 (_1!10524 (findLongestMatchInner!376 (regex!3255 (rule!5161 lt!641264)) Nil!18485 (size!14724 Nil!18485) lt!641271 lt!641271 (size!14724 lt!641271)))))))

(assert (=> b!1687912 (=> res!756799 e!1080549)))

(assert (=> b!1687912 e!1080549))

(declare-fun lt!641551 () Unit!31839)

(assert (=> b!1687912 (= lt!641551 lt!641553)))

(declare-fun lt!641549 () Unit!31839)

(assert (=> b!1687912 (= lt!641549 (lemmaSemiInverse!442 (transformation!3255 (rule!5161 lt!641264)) (seqFromList!2247 (_1!10524 lt!641552))))))

(declare-fun b!1687913 () Bool)

(declare-fun res!756802 () Bool)

(assert (=> b!1687913 (=> (not res!756802) (not e!1080550))))

(assert (=> b!1687913 (= res!756802 (= (rule!5161 (_1!10520 (get!5420 lt!641550))) (rule!5161 lt!641264)))))

(declare-fun b!1687914 () Bool)

(declare-fun res!756801 () Bool)

(assert (=> b!1687914 (=> (not res!756801) (not e!1080550))))

(assert (=> b!1687914 (= res!756801 (= (++!5065 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641550)))) (_2!10520 (get!5420 lt!641550))) lt!641271))))

(declare-fun b!1687915 () Bool)

(assert (=> b!1687915 (= e!1080551 None!3567)))

(declare-fun d!514090 () Bool)

(assert (=> d!514090 e!1080548))

(declare-fun res!756800 () Bool)

(assert (=> d!514090 (=> res!756800 e!1080548)))

(assert (=> d!514090 (= res!756800 (isEmpty!11573 lt!641550))))

(assert (=> d!514090 (= lt!641550 e!1080551)))

(declare-fun c!275731 () Bool)

(assert (=> d!514090 (= c!275731 (isEmpty!11569 (_1!10524 lt!641552)))))

(assert (=> d!514090 (= lt!641552 (findLongestMatch!303 (regex!3255 (rule!5161 lt!641264)) lt!641271))))

(assert (=> d!514090 (ruleValid!768 thiss!17113 (rule!5161 lt!641264))))

(assert (=> d!514090 (= (maxPrefixOneRule!845 thiss!17113 (rule!5161 lt!641264) lt!641271) lt!641550)))

(assert (= (and d!514090 c!275731) b!1687915))

(assert (= (and d!514090 (not c!275731)) b!1687912))

(assert (= (and b!1687912 (not res!756799)) b!1687908))

(assert (= (and d!514090 (not res!756800)) b!1687909))

(assert (= (and b!1687909 res!756804) b!1687914))

(assert (= (and b!1687914 res!756801) b!1687910))

(assert (= (and b!1687910 res!756805) b!1687913))

(assert (= (and b!1687913 res!756802) b!1687907))

(assert (= (and b!1687907 res!756803) b!1687911))

(assert (=> b!1687908 m!2071635))

(declare-fun m!2072261 () Bool)

(assert (=> b!1687908 m!2072261))

(assert (=> b!1687908 m!2071635))

(assert (=> b!1687908 m!2072261))

(declare-fun m!2072263 () Bool)

(assert (=> b!1687908 m!2072263))

(declare-fun m!2072265 () Bool)

(assert (=> b!1687908 m!2072265))

(declare-fun m!2072267 () Bool)

(assert (=> b!1687911 m!2072267))

(declare-fun m!2072269 () Bool)

(assert (=> b!1687911 m!2072269))

(assert (=> b!1687912 m!2072261))

(declare-fun m!2072271 () Bool)

(assert (=> b!1687912 m!2072271))

(assert (=> b!1687912 m!2071635))

(declare-fun m!2072273 () Bool)

(assert (=> b!1687912 m!2072273))

(declare-fun m!2072275 () Bool)

(assert (=> b!1687912 m!2072275))

(assert (=> b!1687912 m!2071635))

(assert (=> b!1687912 m!2072261))

(assert (=> b!1687912 m!2072263))

(assert (=> b!1687912 m!2072273))

(declare-fun m!2072277 () Bool)

(assert (=> b!1687912 m!2072277))

(assert (=> b!1687912 m!2072273))

(declare-fun m!2072279 () Bool)

(assert (=> b!1687912 m!2072279))

(assert (=> b!1687912 m!2072273))

(declare-fun m!2072281 () Bool)

(assert (=> b!1687912 m!2072281))

(assert (=> b!1687910 m!2072267))

(declare-fun m!2072283 () Bool)

(assert (=> b!1687910 m!2072283))

(assert (=> b!1687910 m!2072261))

(assert (=> b!1687909 m!2072267))

(declare-fun m!2072285 () Bool)

(assert (=> b!1687909 m!2072285))

(assert (=> b!1687909 m!2072285))

(declare-fun m!2072287 () Bool)

(assert (=> b!1687909 m!2072287))

(assert (=> b!1687909 m!2072287))

(declare-fun m!2072289 () Bool)

(assert (=> b!1687909 m!2072289))

(assert (=> b!1687914 m!2072267))

(assert (=> b!1687914 m!2072285))

(assert (=> b!1687914 m!2072285))

(assert (=> b!1687914 m!2072287))

(assert (=> b!1687914 m!2072287))

(declare-fun m!2072291 () Bool)

(assert (=> b!1687914 m!2072291))

(declare-fun m!2072293 () Bool)

(assert (=> d!514090 m!2072293))

(declare-fun m!2072295 () Bool)

(assert (=> d!514090 m!2072295))

(declare-fun m!2072297 () Bool)

(assert (=> d!514090 m!2072297))

(declare-fun m!2072299 () Bool)

(assert (=> d!514090 m!2072299))

(assert (=> b!1687913 m!2072267))

(assert (=> b!1687907 m!2072267))

(declare-fun m!2072301 () Bool)

(assert (=> b!1687907 m!2072301))

(assert (=> b!1687907 m!2072301))

(declare-fun m!2072303 () Bool)

(assert (=> b!1687907 m!2072303))

(assert (=> b!1687033 d!514090))

(declare-fun d!514092 () Bool)

(assert (=> d!514092 (not (matchR!2072 (regex!3255 (rule!5161 lt!641264)) lt!641265))))

(declare-fun lt!641562 () Unit!31839)

(declare-fun choose!10210 (LexerInterface!2884 Rule!6310 List!18555 List!18555) Unit!31839)

(assert (=> d!514092 (= lt!641562 (choose!10210 thiss!17113 (rule!5161 lt!641264) lt!641265 (++!5065 lt!640654 lt!640662)))))

(assert (=> d!514092 (isPrefix!1513 lt!641265 (++!5065 lt!640654 lt!640662))))

(assert (=> d!514092 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!235 thiss!17113 (rule!5161 lt!641264) lt!641265 (++!5065 lt!640654 lt!640662)) lt!641562)))

(declare-fun bs!399714 () Bool)

(assert (= bs!399714 d!514092))

(assert (=> bs!399714 m!2071007))

(assert (=> bs!399714 m!2069749))

(declare-fun m!2072311 () Bool)

(assert (=> bs!399714 m!2072311))

(assert (=> bs!399714 m!2069749))

(declare-fun m!2072313 () Bool)

(assert (=> bs!399714 m!2072313))

(assert (=> b!1687033 d!514092))

(declare-fun d!514096 () Bool)

(declare-fun lt!641563 () BalanceConc!12260)

(assert (=> d!514096 (= (list!7432 lt!641563) (originalCharacters!4069 lt!641264))))

(assert (=> d!514096 (= lt!641563 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 lt!641264))) (value!102440 lt!641264)))))

(assert (=> d!514096 (= (charsOf!1904 lt!641264) lt!641563)))

(declare-fun b_lambda!53073 () Bool)

(assert (=> (not b_lambda!53073) (not d!514096)))

(declare-fun t!154933 () Bool)

(declare-fun tb!97935 () Bool)

(assert (=> (and b!1686461 (= (toChars!4593 (transformation!3255 (h!23888 rules!1846))) (toChars!4593 (transformation!3255 (rule!5161 lt!641264)))) t!154933) tb!97935))

(declare-fun b!1687922 () Bool)

(declare-fun e!1080555 () Bool)

(declare-fun tp!484437 () Bool)

(assert (=> b!1687922 (= e!1080555 (and (inv!23853 (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 lt!641264))) (value!102440 lt!641264)))) tp!484437))))

(declare-fun result!118040 () Bool)

(assert (=> tb!97935 (= result!118040 (and (inv!23854 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 lt!641264))) (value!102440 lt!641264))) e!1080555))))

(assert (= tb!97935 b!1687922))

(declare-fun m!2072315 () Bool)

(assert (=> b!1687922 m!2072315))

(declare-fun m!2072317 () Bool)

(assert (=> tb!97935 m!2072317))

(assert (=> d!514096 t!154933))

(declare-fun b_and!120645 () Bool)

(assert (= b_and!120629 (and (=> t!154933 result!118040) b_and!120645)))

(declare-fun t!154935 () Bool)

(declare-fun tb!97937 () Bool)

(assert (=> (and b!1686468 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (toChars!4593 (transformation!3255 (rule!5161 lt!641264)))) t!154935) tb!97937))

(declare-fun result!118042 () Bool)

(assert (= result!118042 result!118040))

(assert (=> d!514096 t!154935))

(declare-fun b_and!120647 () Bool)

(assert (= b_and!120631 (and (=> t!154935 result!118042) b_and!120647)))

(declare-fun t!154937 () Bool)

(declare-fun tb!97939 () Bool)

(assert (=> (and b!1687068 (= (toChars!4593 (transformation!3255 (h!23888 (t!154810 rules!1846)))) (toChars!4593 (transformation!3255 (rule!5161 lt!641264)))) t!154937) tb!97939))

(declare-fun result!118044 () Bool)

(assert (= result!118044 result!118040))

(assert (=> d!514096 t!154937))

(declare-fun b_and!120649 () Bool)

(assert (= b_and!120633 (and (=> t!154937 result!118044) b_and!120649)))

(declare-fun t!154939 () Bool)

(declare-fun tb!97941 () Bool)

(assert (=> (and b!1687082 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (toChars!4593 (transformation!3255 (rule!5161 lt!641264)))) t!154939) tb!97941))

(declare-fun result!118046 () Bool)

(assert (= result!118046 result!118040))

(assert (=> d!514096 t!154939))

(declare-fun b_and!120651 () Bool)

(assert (= b_and!120635 (and (=> t!154939 result!118046) b_and!120651)))

(declare-fun m!2072319 () Bool)

(assert (=> d!514096 m!2072319))

(declare-fun m!2072321 () Bool)

(assert (=> d!514096 m!2072321))

(assert (=> b!1687033 d!514096))

(declare-fun b!1687925 () Bool)

(declare-fun res!756807 () Bool)

(declare-fun e!1080556 () Bool)

(assert (=> b!1687925 (=> (not res!756807) (not e!1080556))))

(declare-fun lt!641564 () List!18555)

(assert (=> b!1687925 (= res!756807 (= (size!14724 lt!641564) (+ (size!14724 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641052))))) (size!14724 (_2!10520 (get!5420 lt!641052))))))))

(declare-fun d!514098 () Bool)

(assert (=> d!514098 e!1080556))

(declare-fun res!756806 () Bool)

(assert (=> d!514098 (=> (not res!756806) (not e!1080556))))

(assert (=> d!514098 (= res!756806 (= (content!2605 lt!641564) ((_ map or) (content!2605 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641052))))) (content!2605 (_2!10520 (get!5420 lt!641052))))))))

(declare-fun e!1080557 () List!18555)

(assert (=> d!514098 (= lt!641564 e!1080557)))

(declare-fun c!275735 () Bool)

(assert (=> d!514098 (= c!275735 ((_ is Nil!18485) (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641052))))))))

(assert (=> d!514098 (= (++!5065 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641052)))) (_2!10520 (get!5420 lt!641052))) lt!641564)))

(declare-fun b!1687924 () Bool)

(assert (=> b!1687924 (= e!1080557 (Cons!18485 (h!23886 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641052))))) (++!5065 (t!154808 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641052))))) (_2!10520 (get!5420 lt!641052)))))))

(declare-fun b!1687926 () Bool)

(assert (=> b!1687926 (= e!1080556 (or (not (= (_2!10520 (get!5420 lt!641052)) Nil!18485)) (= lt!641564 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641052)))))))))

(declare-fun b!1687923 () Bool)

(assert (=> b!1687923 (= e!1080557 (_2!10520 (get!5420 lt!641052)))))

(assert (= (and d!514098 c!275735) b!1687923))

(assert (= (and d!514098 (not c!275735)) b!1687924))

(assert (= (and d!514098 res!756806) b!1687925))

(assert (= (and b!1687925 res!756807) b!1687926))

(declare-fun m!2072323 () Bool)

(assert (=> b!1687925 m!2072323))

(assert (=> b!1687925 m!2070561))

(declare-fun m!2072325 () Bool)

(assert (=> b!1687925 m!2072325))

(assert (=> b!1687925 m!2070577))

(declare-fun m!2072327 () Bool)

(assert (=> d!514098 m!2072327))

(assert (=> d!514098 m!2070561))

(declare-fun m!2072329 () Bool)

(assert (=> d!514098 m!2072329))

(declare-fun m!2072331 () Bool)

(assert (=> d!514098 m!2072331))

(declare-fun m!2072333 () Bool)

(assert (=> b!1687924 m!2072333))

(assert (=> b!1686840 d!514098))

(declare-fun d!514100 () Bool)

(assert (=> d!514100 (= (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641052)))) (list!7436 (c!275419 (charsOf!1904 (_1!10520 (get!5420 lt!641052))))))))

(declare-fun bs!399715 () Bool)

(assert (= bs!399715 d!514100))

(declare-fun m!2072335 () Bool)

(assert (=> bs!399715 m!2072335))

(assert (=> b!1686840 d!514100))

(declare-fun d!514102 () Bool)

(declare-fun lt!641565 () BalanceConc!12260)

(assert (=> d!514102 (= (list!7432 lt!641565) (originalCharacters!4069 (_1!10520 (get!5420 lt!641052))))))

(assert (=> d!514102 (= lt!641565 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641052))))) (value!102440 (_1!10520 (get!5420 lt!641052)))))))

(assert (=> d!514102 (= (charsOf!1904 (_1!10520 (get!5420 lt!641052))) lt!641565)))

(declare-fun b_lambda!53075 () Bool)

(assert (=> (not b_lambda!53075) (not d!514102)))

(declare-fun tb!97943 () Bool)

(declare-fun t!154941 () Bool)

(assert (=> (and b!1686461 (= (toChars!4593 (transformation!3255 (h!23888 rules!1846))) (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641052)))))) t!154941) tb!97943))

(declare-fun b!1687927 () Bool)

(declare-fun e!1080558 () Bool)

(declare-fun tp!484438 () Bool)

(assert (=> b!1687927 (= e!1080558 (and (inv!23853 (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641052))))) (value!102440 (_1!10520 (get!5420 lt!641052)))))) tp!484438))))

(declare-fun result!118048 () Bool)

(assert (=> tb!97943 (= result!118048 (and (inv!23854 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641052))))) (value!102440 (_1!10520 (get!5420 lt!641052))))) e!1080558))))

(assert (= tb!97943 b!1687927))

(declare-fun m!2072337 () Bool)

(assert (=> b!1687927 m!2072337))

(declare-fun m!2072339 () Bool)

(assert (=> tb!97943 m!2072339))

(assert (=> d!514102 t!154941))

(declare-fun b_and!120653 () Bool)

(assert (= b_and!120645 (and (=> t!154941 result!118048) b_and!120653)))

(declare-fun t!154943 () Bool)

(declare-fun tb!97945 () Bool)

(assert (=> (and b!1686468 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641052)))))) t!154943) tb!97945))

(declare-fun result!118050 () Bool)

(assert (= result!118050 result!118048))

(assert (=> d!514102 t!154943))

(declare-fun b_and!120655 () Bool)

(assert (= b_and!120647 (and (=> t!154943 result!118050) b_and!120655)))

(declare-fun t!154945 () Bool)

(declare-fun tb!97947 () Bool)

(assert (=> (and b!1687068 (= (toChars!4593 (transformation!3255 (h!23888 (t!154810 rules!1846)))) (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641052)))))) t!154945) tb!97947))

(declare-fun result!118052 () Bool)

(assert (= result!118052 result!118048))

(assert (=> d!514102 t!154945))

(declare-fun b_and!120657 () Bool)

(assert (= b_and!120649 (and (=> t!154945 result!118052) b_and!120657)))

(declare-fun tb!97949 () Bool)

(declare-fun t!154947 () Bool)

(assert (=> (and b!1687082 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641052)))))) t!154947) tb!97949))

(declare-fun result!118054 () Bool)

(assert (= result!118054 result!118048))

(assert (=> d!514102 t!154947))

(declare-fun b_and!120659 () Bool)

(assert (= b_and!120651 (and (=> t!154947 result!118054) b_and!120659)))

(declare-fun m!2072341 () Bool)

(assert (=> d!514102 m!2072341))

(declare-fun m!2072343 () Bool)

(assert (=> d!514102 m!2072343))

(assert (=> b!1686840 d!514102))

(assert (=> b!1686840 d!514046))

(declare-fun b!1687971 () Bool)

(declare-fun res!756831 () Bool)

(declare-fun e!1080581 () Bool)

(assert (=> b!1687971 (=> (not res!756831) (not e!1080581))))

(assert (=> b!1687971 (= res!756831 (isBalanced!1930 (left!14775 (c!275419 lt!641175))))))

(declare-fun b!1687972 () Bool)

(declare-fun res!756829 () Bool)

(assert (=> b!1687972 (=> (not res!756829) (not e!1080581))))

(assert (=> b!1687972 (= res!756829 (<= (- (height!987 (left!14775 (c!275419 lt!641175))) (height!987 (right!15105 (c!275419 lt!641175)))) 1))))

(declare-fun b!1687973 () Bool)

(assert (=> b!1687973 (= e!1080581 (not (isEmpty!11577 (right!15105 (c!275419 lt!641175)))))))

(declare-fun b!1687974 () Bool)

(declare-fun e!1080582 () Bool)

(assert (=> b!1687974 (= e!1080582 e!1080581)))

(declare-fun res!756830 () Bool)

(assert (=> b!1687974 (=> (not res!756830) (not e!1080581))))

(assert (=> b!1687974 (= res!756830 (<= (- 1) (- (height!987 (left!14775 (c!275419 lt!641175))) (height!987 (right!15105 (c!275419 lt!641175))))))))

(declare-fun b!1687975 () Bool)

(declare-fun res!756827 () Bool)

(assert (=> b!1687975 (=> (not res!756827) (not e!1080581))))

(assert (=> b!1687975 (= res!756827 (isBalanced!1930 (right!15105 (c!275419 lt!641175))))))

(declare-fun b!1687970 () Bool)

(declare-fun res!756826 () Bool)

(assert (=> b!1687970 (=> (not res!756826) (not e!1080581))))

(assert (=> b!1687970 (= res!756826 (not (isEmpty!11577 (left!14775 (c!275419 lt!641175)))))))

(declare-fun d!514104 () Bool)

(declare-fun res!756828 () Bool)

(assert (=> d!514104 (=> res!756828 e!1080582)))

(assert (=> d!514104 (= res!756828 (not ((_ is Node!6158) (c!275419 lt!641175))))))

(assert (=> d!514104 (= (isBalanced!1930 (c!275419 lt!641175)) e!1080582)))

(assert (= (and d!514104 (not res!756828)) b!1687974))

(assert (= (and b!1687974 res!756830) b!1687972))

(assert (= (and b!1687972 res!756829) b!1687971))

(assert (= (and b!1687971 res!756831) b!1687975))

(assert (= (and b!1687975 res!756827) b!1687970))

(assert (= (and b!1687970 res!756826) b!1687973))

(declare-fun m!2072365 () Bool)

(assert (=> b!1687970 m!2072365))

(declare-fun m!2072367 () Bool)

(assert (=> b!1687975 m!2072367))

(declare-fun m!2072369 () Bool)

(assert (=> b!1687971 m!2072369))

(declare-fun m!2072371 () Bool)

(assert (=> b!1687973 m!2072371))

(declare-fun m!2072373 () Bool)

(assert (=> b!1687972 m!2072373))

(declare-fun m!2072375 () Bool)

(assert (=> b!1687972 m!2072375))

(assert (=> b!1687974 m!2072373))

(assert (=> b!1687974 m!2072375))

(assert (=> b!1686940 d!514104))

(declare-fun d!514108 () Bool)

(assert (=> d!514108 (= (height!987 (++!5068 (c!275419 lt!640663) (c!275419 lt!640642))) (ite ((_ is Empty!6158) (++!5068 (c!275419 lt!640663) (c!275419 lt!640642))) 0 (ite ((_ is Leaf!9006) (++!5068 (c!275419 lt!640663) (c!275419 lt!640642))) 1 (cheight!6369 (++!5068 (c!275419 lt!640663) (c!275419 lt!640642))))))))

(assert (=> b!1687019 d!514108))

(declare-fun d!514110 () Bool)

(assert (=> d!514110 (= (max!0 (height!987 (c!275419 lt!640663)) (height!987 (c!275419 lt!640642))) (ite (< (height!987 (c!275419 lt!640663)) (height!987 (c!275419 lt!640642))) (height!987 (c!275419 lt!640642)) (height!987 (c!275419 lt!640663))))))

(assert (=> b!1687019 d!514110))

(declare-fun d!514112 () Bool)

(assert (=> d!514112 (= (height!987 (c!275419 lt!640642)) (ite ((_ is Empty!6158) (c!275419 lt!640642)) 0 (ite ((_ is Leaf!9006) (c!275419 lt!640642)) 1 (cheight!6369 (c!275419 lt!640642)))))))

(assert (=> b!1687019 d!514112))

(assert (=> b!1687019 d!514016))

(declare-fun d!514114 () Bool)

(assert (=> d!514114 (= (height!987 (c!275419 lt!640663)) (ite ((_ is Empty!6158) (c!275419 lt!640663)) 0 (ite ((_ is Leaf!9006) (c!275419 lt!640663)) 1 (cheight!6369 (c!275419 lt!640663)))))))

(assert (=> b!1687019 d!514114))

(assert (=> d!513740 d!513714))

(declare-fun d!514116 () Bool)

(declare-fun lt!641576 () Bool)

(assert (=> d!514116 (= lt!641576 (prefixMatch!496 (rulesRegex!637 thiss!17113 rules!1846) (list!7432 (++!5066 (charsOf!1904 (h!23889 tokens!457)) (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 tokens!457))) 0))))))))

(assert (=> d!514116 (= lt!641576 (prefixMatchZipperSequence!697 (focus!233 (rulesRegex!637 thiss!17113 rules!1846)) (++!5066 (charsOf!1904 (h!23889 tokens!457)) (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 tokens!457))) 0))) 0))))

(declare-fun lt!641574 () Unit!31839)

(declare-fun lt!641571 () Unit!31839)

(assert (=> d!514116 (= lt!641574 lt!641571)))

(declare-fun lt!641579 () List!18555)

(declare-fun lt!641577 () (InoxSet Context!1854))

(assert (=> d!514116 (= (prefixMatch!496 (rulesRegex!637 thiss!17113 rules!1846) lt!641579) (prefixMatchZipper!212 lt!641577 lt!641579))))

(declare-fun lt!641575 () List!18564)

(assert (=> d!514116 (= lt!641571 (prefixMatchZipperRegexEquiv!212 lt!641577 lt!641575 (rulesRegex!637 thiss!17113 rules!1846) lt!641579))))

(assert (=> d!514116 (= lt!641579 (list!7432 (++!5066 (charsOf!1904 (h!23889 tokens!457)) (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 tokens!457))) 0)))))))

(assert (=> d!514116 (= lt!641575 (toList!973 (focus!233 (rulesRegex!637 thiss!17113 rules!1846))))))

(assert (=> d!514116 (= lt!641577 (focus!233 (rulesRegex!637 thiss!17113 rules!1846)))))

(declare-fun lt!641580 () Unit!31839)

(declare-fun lt!641573 () Unit!31839)

(assert (=> d!514116 (= lt!641580 lt!641573)))

(declare-fun lt!641572 () (InoxSet Context!1854))

(declare-fun lt!641578 () Int)

(assert (=> d!514116 (= (prefixMatchZipper!212 lt!641572 (dropList!739 (++!5066 (charsOf!1904 (h!23889 tokens!457)) (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 tokens!457))) 0))) lt!641578)) (prefixMatchZipperSequence!697 lt!641572 (++!5066 (charsOf!1904 (h!23889 tokens!457)) (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 tokens!457))) 0))) lt!641578))))

(assert (=> d!514116 (= lt!641573 (lemmaprefixMatchZipperSequenceEquivalent!212 lt!641572 (++!5066 (charsOf!1904 (h!23889 tokens!457)) (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 tokens!457))) 0))) lt!641578))))

(assert (=> d!514116 (= lt!641578 0)))

(assert (=> d!514116 (= lt!641572 (focus!233 (rulesRegex!637 thiss!17113 rules!1846)))))

(assert (=> d!514116 (validRegex!1842 (rulesRegex!637 thiss!17113 rules!1846))))

(assert (=> d!514116 (= (prefixMatchZipperSequence!695 (rulesRegex!637 thiss!17113 rules!1846) (++!5066 (charsOf!1904 (h!23889 tokens!457)) (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 tokens!457))) 0)))) lt!641576)))

(declare-fun bs!399717 () Bool)

(assert (= bs!399717 d!514116))

(declare-fun m!2072377 () Bool)

(assert (=> bs!399717 m!2072377))

(declare-fun m!2072379 () Bool)

(assert (=> bs!399717 m!2072379))

(declare-fun m!2072381 () Bool)

(assert (=> bs!399717 m!2072381))

(declare-fun m!2072383 () Bool)

(assert (=> bs!399717 m!2072383))

(assert (=> bs!399717 m!2069827))

(declare-fun m!2072385 () Bool)

(assert (=> bs!399717 m!2072385))

(assert (=> bs!399717 m!2069827))

(assert (=> bs!399717 m!2072381))

(assert (=> bs!399717 m!2069827))

(declare-fun m!2072387 () Bool)

(assert (=> bs!399717 m!2072387))

(assert (=> bs!399717 m!2070991))

(assert (=> bs!399717 m!2072377))

(assert (=> bs!399717 m!2072381))

(assert (=> bs!399717 m!2070991))

(declare-fun m!2072389 () Bool)

(assert (=> bs!399717 m!2072389))

(assert (=> bs!399717 m!2070991))

(declare-fun m!2072393 () Bool)

(assert (=> bs!399717 m!2072393))

(assert (=> bs!399717 m!2069827))

(declare-fun m!2072399 () Bool)

(assert (=> bs!399717 m!2072399))

(declare-fun m!2072403 () Bool)

(assert (=> bs!399717 m!2072403))

(assert (=> bs!399717 m!2069827))

(declare-fun m!2072405 () Bool)

(assert (=> bs!399717 m!2072405))

(declare-fun m!2072409 () Bool)

(assert (=> bs!399717 m!2072409))

(assert (=> bs!399717 m!2070991))

(assert (=> bs!399717 m!2072405))

(assert (=> bs!399717 m!2070991))

(declare-fun m!2072411 () Bool)

(assert (=> bs!399717 m!2072411))

(assert (=> d!513740 d!514116))

(declare-fun b!1687983 () Bool)

(declare-fun res!756835 () Bool)

(declare-fun e!1080586 () Bool)

(assert (=> b!1687983 (=> (not res!756835) (not e!1080586))))

(assert (=> b!1687983 (= res!756835 (<= (height!987 (++!5068 (c!275419 (charsOf!1904 (h!23889 tokens!457))) (c!275419 (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 tokens!457))) 0))))) (+ (max!0 (height!987 (c!275419 (charsOf!1904 (h!23889 tokens!457)))) (height!987 (c!275419 (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 tokens!457))) 0))))) 1)))))

(declare-fun b!1687982 () Bool)

(declare-fun res!756832 () Bool)

(assert (=> b!1687982 (=> (not res!756832) (not e!1080586))))

(assert (=> b!1687982 (= res!756832 (isBalanced!1930 (++!5068 (c!275419 (charsOf!1904 (h!23889 tokens!457))) (c!275419 (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 tokens!457))) 0))))))))

(declare-fun b!1687985 () Bool)

(declare-fun lt!641582 () BalanceConc!12260)

(assert (=> b!1687985 (= e!1080586 (= (list!7432 lt!641582) (++!5065 (list!7432 (charsOf!1904 (h!23889 tokens!457))) (list!7432 (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 tokens!457))) 0))))))))

(declare-fun d!514120 () Bool)

(assert (=> d!514120 e!1080586))

(declare-fun res!756833 () Bool)

(assert (=> d!514120 (=> (not res!756833) (not e!1080586))))

(assert (=> d!514120 (= res!756833 (appendAssocInst!497 (c!275419 (charsOf!1904 (h!23889 tokens!457))) (c!275419 (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 tokens!457))) 0)))))))

(assert (=> d!514120 (= lt!641582 (BalanceConc!12261 (++!5068 (c!275419 (charsOf!1904 (h!23889 tokens!457))) (c!275419 (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 tokens!457))) 0))))))))

(assert (=> d!514120 (= (++!5066 (charsOf!1904 (h!23889 tokens!457)) (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 tokens!457))) 0))) lt!641582)))

(declare-fun b!1687984 () Bool)

(declare-fun res!756834 () Bool)

(assert (=> b!1687984 (=> (not res!756834) (not e!1080586))))

(assert (=> b!1687984 (= res!756834 (>= (height!987 (++!5068 (c!275419 (charsOf!1904 (h!23889 tokens!457))) (c!275419 (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 tokens!457))) 0))))) (max!0 (height!987 (c!275419 (charsOf!1904 (h!23889 tokens!457)))) (height!987 (c!275419 (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 tokens!457))) 0)))))))))

(assert (= (and d!514120 res!756833) b!1687982))

(assert (= (and b!1687982 res!756832) b!1687983))

(assert (= (and b!1687983 res!756835) b!1687984))

(assert (= (and b!1687984 res!756834) b!1687985))

(declare-fun m!2072427 () Bool)

(assert (=> b!1687983 m!2072427))

(declare-fun m!2072431 () Bool)

(assert (=> b!1687983 m!2072431))

(declare-fun m!2072435 () Bool)

(assert (=> b!1687983 m!2072435))

(assert (=> b!1687983 m!2072427))

(declare-fun m!2072439 () Bool)

(assert (=> b!1687983 m!2072439))

(assert (=> b!1687983 m!2072435))

(assert (=> b!1687983 m!2072431))

(declare-fun m!2072441 () Bool)

(assert (=> b!1687983 m!2072441))

(assert (=> b!1687984 m!2072427))

(assert (=> b!1687984 m!2072431))

(assert (=> b!1687984 m!2072435))

(assert (=> b!1687984 m!2072427))

(assert (=> b!1687984 m!2072439))

(assert (=> b!1687984 m!2072435))

(assert (=> b!1687984 m!2072431))

(assert (=> b!1687984 m!2072441))

(assert (=> b!1687982 m!2072427))

(assert (=> b!1687982 m!2072427))

(declare-fun m!2072445 () Bool)

(assert (=> b!1687982 m!2072445))

(declare-fun m!2072447 () Bool)

(assert (=> d!514120 m!2072447))

(assert (=> d!514120 m!2072427))

(declare-fun m!2072449 () Bool)

(assert (=> b!1687985 m!2072449))

(assert (=> b!1687985 m!2069751))

(declare-fun m!2072451 () Bool)

(assert (=> b!1687985 m!2072451))

(assert (=> b!1687985 m!2069835))

(declare-fun m!2072453 () Bool)

(assert (=> b!1687985 m!2072453))

(assert (=> b!1687985 m!2072451))

(assert (=> b!1687985 m!2072453))

(declare-fun m!2072457 () Bool)

(assert (=> b!1687985 m!2072457))

(assert (=> d!513740 d!514120))

(assert (=> d!513740 d!513686))

(assert (=> d!513740 d!513728))

(assert (=> d!513740 d!513736))

(assert (=> d!513740 d!513738))

(declare-fun d!514134 () Bool)

(declare-fun lt!641590 () Int)

(assert (=> d!514134 (= lt!641590 (size!14724 (list!7432 (_2!10519 lt!641172))))))

(declare-fun size!14731 (Conc!6158) Int)

(assert (=> d!514134 (= lt!641590 (size!14731 (c!275419 (_2!10519 lt!641172))))))

(assert (=> d!514134 (= (size!14726 (_2!10519 lt!641172)) lt!641590)))

(declare-fun bs!399722 () Bool)

(assert (= bs!399722 d!514134))

(assert (=> bs!399722 m!2070859))

(assert (=> bs!399722 m!2070859))

(declare-fun m!2072463 () Bool)

(assert (=> bs!399722 m!2072463))

(declare-fun m!2072465 () Bool)

(assert (=> bs!399722 m!2072465))

(assert (=> b!1686937 d!514134))

(declare-fun d!514138 () Bool)

(declare-fun lt!641591 () Int)

(assert (=> d!514138 (= lt!641591 (size!14724 (list!7432 (seqFromList!2247 lt!640654))))))

(assert (=> d!514138 (= lt!641591 (size!14731 (c!275419 (seqFromList!2247 lt!640654))))))

(assert (=> d!514138 (= (size!14726 (seqFromList!2247 lt!640654)) lt!641591)))

(declare-fun bs!399723 () Bool)

(assert (= bs!399723 d!514138))

(assert (=> bs!399723 m!2069759))

(assert (=> bs!399723 m!2070861))

(assert (=> bs!399723 m!2070861))

(assert (=> bs!399723 m!2072169))

(declare-fun m!2072467 () Bool)

(assert (=> bs!399723 m!2072467))

(assert (=> b!1686937 d!514138))

(declare-fun d!514140 () Bool)

(assert (=> d!514140 (= (isEmpty!11573 lt!640652) (not ((_ is Some!3567) lt!640652)))))

(assert (=> d!513742 d!514140))

(declare-fun d!514142 () Bool)

(assert (=> d!514142 (= (isDefined!2917 lt!641057) (not (isEmpty!11573 lt!641057)))))

(declare-fun bs!399724 () Bool)

(assert (= bs!399724 d!514142))

(assert (=> bs!399724 m!2070617))

(assert (=> b!1686843 d!514142))

(declare-fun b!1688011 () Bool)

(declare-fun e!1080601 () List!18555)

(assert (=> b!1688011 (= e!1080601 Nil!18485)))

(declare-fun d!514144 () Bool)

(declare-fun c!275758 () Bool)

(assert (=> d!514144 (= c!275758 ((_ is Empty!6158) (c!275419 lt!640655)))))

(assert (=> d!514144 (= (list!7436 (c!275419 lt!640655)) e!1080601)))

(declare-fun b!1688014 () Bool)

(declare-fun e!1080602 () List!18555)

(assert (=> b!1688014 (= e!1080602 (++!5065 (list!7436 (left!14775 (c!275419 lt!640655))) (list!7436 (right!15105 (c!275419 lt!640655)))))))

(declare-fun b!1688012 () Bool)

(assert (=> b!1688012 (= e!1080601 e!1080602)))

(declare-fun c!275759 () Bool)

(assert (=> b!1688012 (= c!275759 ((_ is Leaf!9006) (c!275419 lt!640655)))))

(declare-fun b!1688013 () Bool)

(declare-fun list!7439 (IArray!12321) List!18555)

(assert (=> b!1688013 (= e!1080602 (list!7439 (xs!9018 (c!275419 lt!640655))))))

(assert (= (and d!514144 c!275758) b!1688011))

(assert (= (and d!514144 (not c!275758)) b!1688012))

(assert (= (and b!1688012 c!275759) b!1688013))

(assert (= (and b!1688012 (not c!275759)) b!1688014))

(declare-fun m!2072489 () Bool)

(assert (=> b!1688014 m!2072489))

(declare-fun m!2072491 () Bool)

(assert (=> b!1688014 m!2072491))

(assert (=> b!1688014 m!2072489))

(assert (=> b!1688014 m!2072491))

(declare-fun m!2072493 () Bool)

(assert (=> b!1688014 m!2072493))

(declare-fun m!2072495 () Bool)

(assert (=> b!1688013 m!2072495))

(assert (=> d!513666 d!514144))

(declare-fun d!514152 () Bool)

(assert (=> d!514152 (= (list!7431 (_1!10519 lt!641139)) (list!7434 (c!275421 (_1!10519 lt!641139))))))

(declare-fun bs!399726 () Bool)

(assert (= bs!399726 d!514152))

(declare-fun m!2072497 () Bool)

(assert (=> bs!399726 m!2072497))

(assert (=> b!1686917 d!514152))

(declare-fun d!514154 () Bool)

(declare-fun e!1080603 () Bool)

(assert (=> d!514154 e!1080603))

(declare-fun c!275760 () Bool)

(declare-fun lt!641595 () tuple2!18242)

(assert (=> d!514154 (= c!275760 (> (size!14729 (_1!10523 lt!641595)) 0))))

(declare-fun e!1080604 () tuple2!18242)

(assert (=> d!514154 (= lt!641595 e!1080604)))

(declare-fun c!275761 () Bool)

(declare-fun lt!641596 () Option!3568)

(assert (=> d!514154 (= c!275761 ((_ is Some!3567) lt!641596))))

(assert (=> d!514154 (= lt!641596 (maxPrefix!1444 thiss!17113 rules!1846 (list!7432 lt!640656)))))

(assert (=> d!514154 (= (lexList!907 thiss!17113 rules!1846 (list!7432 lt!640656)) lt!641595)))

(declare-fun b!1688015 () Bool)

(assert (=> b!1688015 (= e!1080603 (= (_2!10523 lt!641595) (list!7432 lt!640656)))))

(declare-fun b!1688016 () Bool)

(declare-fun e!1080605 () Bool)

(assert (=> b!1688016 (= e!1080605 (not (isEmpty!11574 (_1!10523 lt!641595))))))

(declare-fun b!1688017 () Bool)

(declare-fun lt!641597 () tuple2!18242)

(assert (=> b!1688017 (= e!1080604 (tuple2!18243 (Cons!18488 (_1!10520 (v!24888 lt!641596)) (_1!10523 lt!641597)) (_2!10523 lt!641597)))))

(assert (=> b!1688017 (= lt!641597 (lexList!907 thiss!17113 rules!1846 (_2!10520 (v!24888 lt!641596))))))

(declare-fun b!1688018 () Bool)

(assert (=> b!1688018 (= e!1080603 e!1080605)))

(declare-fun res!756849 () Bool)

(assert (=> b!1688018 (= res!756849 (< (size!14724 (_2!10523 lt!641595)) (size!14724 (list!7432 lt!640656))))))

(assert (=> b!1688018 (=> (not res!756849) (not e!1080605))))

(declare-fun b!1688019 () Bool)

(assert (=> b!1688019 (= e!1080604 (tuple2!18243 Nil!18488 (list!7432 lt!640656)))))

(assert (= (and d!514154 c!275761) b!1688017))

(assert (= (and d!514154 (not c!275761)) b!1688019))

(assert (= (and d!514154 c!275760) b!1688018))

(assert (= (and d!514154 (not c!275760)) b!1688015))

(assert (= (and b!1688018 res!756849) b!1688016))

(declare-fun m!2072499 () Bool)

(assert (=> d!514154 m!2072499))

(assert (=> d!514154 m!2069747))

(declare-fun m!2072501 () Bool)

(assert (=> d!514154 m!2072501))

(declare-fun m!2072503 () Bool)

(assert (=> b!1688016 m!2072503))

(declare-fun m!2072505 () Bool)

(assert (=> b!1688017 m!2072505))

(declare-fun m!2072507 () Bool)

(assert (=> b!1688018 m!2072507))

(assert (=> b!1688018 m!2069747))

(declare-fun m!2072509 () Bool)

(assert (=> b!1688018 m!2072509))

(assert (=> b!1686917 d!514154))

(assert (=> b!1686917 d!513680))

(declare-fun d!514156 () Bool)

(assert (=> d!514156 (= (isEmpty!11569 (++!5065 lt!640654 lt!640648)) ((_ is Nil!18485) (++!5065 lt!640654 lt!640648)))))

(assert (=> d!513628 d!514156))

(assert (=> d!513652 d!513934))

(assert (=> d!513652 d!513518))

(assert (=> d!513652 d!513932))

(declare-fun d!514158 () Bool)

(declare-fun lt!641602 () Int)

(assert (=> d!514158 (= lt!641602 (size!14729 (list!7431 (_1!10519 lt!641101))))))

(declare-fun size!14732 (Conc!6159) Int)

(assert (=> d!514158 (= lt!641602 (size!14732 (c!275421 (_1!10519 lt!641101))))))

(assert (=> d!514158 (= (size!14725 (_1!10519 lt!641101)) lt!641602)))

(declare-fun bs!399727 () Bool)

(assert (= bs!399727 d!514158))

(declare-fun m!2072511 () Bool)

(assert (=> bs!399727 m!2072511))

(assert (=> bs!399727 m!2072511))

(declare-fun m!2072513 () Bool)

(assert (=> bs!399727 m!2072513))

(declare-fun m!2072515 () Bool)

(assert (=> bs!399727 m!2072515))

(assert (=> d!513652 d!514158))

(declare-fun d!514160 () Bool)

(assert (=> d!514160 (= (list!7431 (_1!10519 (lex!1368 thiss!17113 rules!1846 (print!1415 thiss!17113 (singletonSeq!1778 (h!23889 tokens!457)))))) (list!7434 (c!275421 (_1!10519 (lex!1368 thiss!17113 rules!1846 (print!1415 thiss!17113 (singletonSeq!1778 (h!23889 tokens!457))))))))))

(declare-fun bs!399728 () Bool)

(assert (= bs!399728 d!514160))

(declare-fun m!2072517 () Bool)

(assert (=> bs!399728 m!2072517))

(assert (=> d!513652 d!514160))

(declare-fun d!514162 () Bool)

(assert (=> d!514162 (= (list!7431 (singletonSeq!1778 (h!23889 tokens!457))) (list!7434 (c!275421 (singletonSeq!1778 (h!23889 tokens!457)))))))

(declare-fun bs!399729 () Bool)

(assert (= bs!399729 d!514162))

(declare-fun m!2072519 () Bool)

(assert (=> bs!399729 m!2072519))

(assert (=> d!513652 d!514162))

(assert (=> d!513652 d!513672))

(declare-fun d!514164 () Bool)

(assert (=> d!514164 (= (list!7431 (_1!10519 lt!640653)) (list!7431 (prepend!851 (seqFromList!2248 (t!154811 (t!154811 tokens!457))) (h!23889 (t!154811 tokens!457)))))))

(assert (=> d!514164 true))

(declare-fun _$1!10081 () Unit!31839)

(assert (=> d!514164 (= (choose!10200 (h!23889 (t!154811 tokens!457)) (t!154811 (t!154811 tokens!457)) (_1!10519 lt!640653)) _$1!10081)))

(declare-fun bs!399732 () Bool)

(assert (= bs!399732 d!514164))

(assert (=> bs!399732 m!2069819))

(assert (=> bs!399732 m!2069771))

(assert (=> bs!399732 m!2069771))

(assert (=> bs!399732 m!2069773))

(assert (=> bs!399732 m!2069773))

(assert (=> bs!399732 m!2069775))

(assert (=> d!513622 d!514164))

(assert (=> d!513622 d!513614))

(assert (=> d!513622 d!513616))

(declare-fun d!514172 () Bool)

(assert (=> d!514172 (= (list!7431 (seqFromList!2248 ($colon$colon!407 (t!154811 (t!154811 tokens!457)) (h!23889 (t!154811 tokens!457))))) (list!7434 (c!275421 (seqFromList!2248 ($colon$colon!407 (t!154811 (t!154811 tokens!457)) (h!23889 (t!154811 tokens!457)))))))))

(declare-fun bs!399733 () Bool)

(assert (= bs!399733 d!514172))

(declare-fun m!2072537 () Bool)

(assert (=> bs!399733 m!2072537))

(assert (=> d!513622 d!514172))

(assert (=> d!513622 d!513620))

(declare-fun d!514174 () Bool)

(assert (=> d!514174 (= ($colon$colon!407 (t!154811 (t!154811 tokens!457)) (h!23889 (t!154811 tokens!457))) (Cons!18488 (h!23889 (t!154811 tokens!457)) (t!154811 (t!154811 tokens!457))))))

(assert (=> d!513622 d!514174))

(assert (=> d!513622 d!513588))

(declare-fun d!514176 () Bool)

(assert (=> d!514176 (= (seqFromList!2248 ($colon$colon!407 (t!154811 (t!154811 tokens!457)) (h!23889 (t!154811 tokens!457)))) (fromListB!1031 ($colon$colon!407 (t!154811 (t!154811 tokens!457)) (h!23889 (t!154811 tokens!457)))))))

(declare-fun bs!399734 () Bool)

(assert (= bs!399734 d!514176))

(assert (=> bs!399734 m!2070447))

(declare-fun m!2072539 () Bool)

(assert (=> bs!399734 m!2072539))

(assert (=> d!513622 d!514176))

(declare-fun d!514178 () Bool)

(assert (=> d!514178 (= (get!5420 lt!641057) (v!24888 lt!641057))))

(assert (=> b!1686847 d!514178))

(declare-fun d!514180 () Bool)

(declare-fun dynLambda!8390 (Int BalanceConc!12260) TokenValue!3345)

(assert (=> d!514180 (= (apply!5039 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641057)))) (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!641057))))) (dynLambda!8390 (toValue!4734 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641057))))) (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!641057))))))))

(declare-fun b_lambda!53079 () Bool)

(assert (=> (not b_lambda!53079) (not d!514180)))

(declare-fun tb!97951 () Bool)

(declare-fun t!154954 () Bool)

(assert (=> (and b!1686461 (= (toValue!4734 (transformation!3255 (h!23888 rules!1846))) (toValue!4734 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641057)))))) t!154954) tb!97951))

(declare-fun result!118056 () Bool)

(assert (=> tb!97951 (= result!118056 (inv!21 (dynLambda!8390 (toValue!4734 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641057))))) (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!641057)))))))))

(declare-fun m!2072541 () Bool)

(assert (=> tb!97951 m!2072541))

(assert (=> d!514180 t!154954))

(declare-fun b_and!120661 () Bool)

(assert (= b_and!120533 (and (=> t!154954 result!118056) b_and!120661)))

(declare-fun tb!97953 () Bool)

(declare-fun t!154956 () Bool)

(assert (=> (and b!1686468 (= (toValue!4734 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (toValue!4734 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641057)))))) t!154956) tb!97953))

(declare-fun result!118060 () Bool)

(assert (= result!118060 result!118056))

(assert (=> d!514180 t!154956))

(declare-fun b_and!120663 () Bool)

(assert (= b_and!120537 (and (=> t!154956 result!118060) b_and!120663)))

(declare-fun tb!97955 () Bool)

(declare-fun t!154958 () Bool)

(assert (=> (and b!1687068 (= (toValue!4734 (transformation!3255 (h!23888 (t!154810 rules!1846)))) (toValue!4734 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641057)))))) t!154958) tb!97955))

(declare-fun result!118062 () Bool)

(assert (= result!118062 result!118056))

(assert (=> d!514180 t!154958))

(declare-fun b_and!120665 () Bool)

(assert (= b_and!120573 (and (=> t!154958 result!118062) b_and!120665)))

(declare-fun tb!97957 () Bool)

(declare-fun t!154960 () Bool)

(assert (=> (and b!1687082 (= (toValue!4734 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (toValue!4734 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641057)))))) t!154960) tb!97957))

(declare-fun result!118064 () Bool)

(assert (= result!118064 result!118056))

(assert (=> d!514180 t!154960))

(declare-fun b_and!120667 () Bool)

(assert (= b_and!120577 (and (=> t!154960 result!118064) b_and!120667)))

(assert (=> d!514180 m!2070609))

(declare-fun m!2072543 () Bool)

(assert (=> d!514180 m!2072543))

(assert (=> b!1686847 d!514180))

(declare-fun d!514182 () Bool)

(assert (=> d!514182 (= (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!641057)))) (fromListB!1029 (originalCharacters!4069 (_1!10520 (get!5420 lt!641057)))))))

(declare-fun bs!399735 () Bool)

(assert (= bs!399735 d!514182))

(declare-fun m!2072545 () Bool)

(assert (=> bs!399735 m!2072545))

(assert (=> b!1686847 d!514182))

(declare-fun d!514184 () Bool)

(declare-fun lt!641608 () Bool)

(assert (=> d!514184 (= lt!641608 (isEmpty!11569 (list!7432 (_2!10519 (lex!1368 thiss!17113 rules!1846 (print!1415 thiss!17113 (seqFromList!2248 (t!154811 tokens!457))))))))))

(assert (=> d!514184 (= lt!641608 (isEmpty!11577 (c!275419 (_2!10519 (lex!1368 thiss!17113 rules!1846 (print!1415 thiss!17113 (seqFromList!2248 (t!154811 tokens!457))))))))))

(assert (=> d!514184 (= (isEmpty!11570 (_2!10519 (lex!1368 thiss!17113 rules!1846 (print!1415 thiss!17113 (seqFromList!2248 (t!154811 tokens!457)))))) lt!641608)))

(declare-fun bs!399736 () Bool)

(assert (= bs!399736 d!514184))

(declare-fun m!2072547 () Bool)

(assert (=> bs!399736 m!2072547))

(assert (=> bs!399736 m!2072547))

(declare-fun m!2072549 () Bool)

(assert (=> bs!399736 m!2072549))

(declare-fun m!2072551 () Bool)

(assert (=> bs!399736 m!2072551))

(assert (=> b!1686731 d!514184))

(declare-fun d!514186 () Bool)

(declare-fun e!1080612 () Bool)

(assert (=> d!514186 e!1080612))

(declare-fun res!756854 () Bool)

(assert (=> d!514186 (=> (not res!756854) (not e!1080612))))

(declare-fun e!1080614 () Bool)

(assert (=> d!514186 (= res!756854 e!1080614)))

(declare-fun c!275762 () Bool)

(declare-fun lt!641609 () tuple2!18234)

(assert (=> d!514186 (= c!275762 (> (size!14725 (_1!10519 lt!641609)) 0))))

(assert (=> d!514186 (= lt!641609 (lexTailRecV2!630 thiss!17113 rules!1846 (print!1415 thiss!17113 (seqFromList!2248 (t!154811 tokens!457))) (BalanceConc!12261 Empty!6158) (print!1415 thiss!17113 (seqFromList!2248 (t!154811 tokens!457))) (BalanceConc!12263 Empty!6159)))))

(assert (=> d!514186 (= (lex!1368 thiss!17113 rules!1846 (print!1415 thiss!17113 (seqFromList!2248 (t!154811 tokens!457)))) lt!641609)))

(declare-fun b!1688025 () Bool)

(declare-fun res!756855 () Bool)

(assert (=> b!1688025 (=> (not res!756855) (not e!1080612))))

(assert (=> b!1688025 (= res!756855 (= (list!7431 (_1!10519 lt!641609)) (_1!10523 (lexList!907 thiss!17113 rules!1846 (list!7432 (print!1415 thiss!17113 (seqFromList!2248 (t!154811 tokens!457))))))))))

(declare-fun b!1688026 () Bool)

(assert (=> b!1688026 (= e!1080612 (= (list!7432 (_2!10519 lt!641609)) (_2!10523 (lexList!907 thiss!17113 rules!1846 (list!7432 (print!1415 thiss!17113 (seqFromList!2248 (t!154811 tokens!457))))))))))

(declare-fun b!1688027 () Bool)

(declare-fun e!1080613 () Bool)

(assert (=> b!1688027 (= e!1080613 (not (isEmpty!11562 (_1!10519 lt!641609))))))

(declare-fun b!1688028 () Bool)

(assert (=> b!1688028 (= e!1080614 (= (_2!10519 lt!641609) (print!1415 thiss!17113 (seqFromList!2248 (t!154811 tokens!457)))))))

(declare-fun b!1688029 () Bool)

(assert (=> b!1688029 (= e!1080614 e!1080613)))

(declare-fun res!756853 () Bool)

(assert (=> b!1688029 (= res!756853 (< (size!14726 (_2!10519 lt!641609)) (size!14726 (print!1415 thiss!17113 (seqFromList!2248 (t!154811 tokens!457))))))))

(assert (=> b!1688029 (=> (not res!756853) (not e!1080613))))

(assert (= (and d!514186 c!275762) b!1688029))

(assert (= (and d!514186 (not c!275762)) b!1688028))

(assert (= (and b!1688029 res!756853) b!1688027))

(assert (= (and d!514186 res!756854) b!1688025))

(assert (= (and b!1688025 res!756855) b!1688026))

(declare-fun m!2072553 () Bool)

(assert (=> b!1688026 m!2072553))

(assert (=> b!1688026 m!2070329))

(declare-fun m!2072555 () Bool)

(assert (=> b!1688026 m!2072555))

(assert (=> b!1688026 m!2072555))

(declare-fun m!2072557 () Bool)

(assert (=> b!1688026 m!2072557))

(declare-fun m!2072559 () Bool)

(assert (=> b!1688025 m!2072559))

(assert (=> b!1688025 m!2070329))

(assert (=> b!1688025 m!2072555))

(assert (=> b!1688025 m!2072555))

(assert (=> b!1688025 m!2072557))

(declare-fun m!2072561 () Bool)

(assert (=> d!514186 m!2072561))

(assert (=> d!514186 m!2070329))

(assert (=> d!514186 m!2070329))

(declare-fun m!2072563 () Bool)

(assert (=> d!514186 m!2072563))

(declare-fun m!2072565 () Bool)

(assert (=> b!1688027 m!2072565))

(declare-fun m!2072567 () Bool)

(assert (=> b!1688029 m!2072567))

(assert (=> b!1688029 m!2070329))

(declare-fun m!2072569 () Bool)

(assert (=> b!1688029 m!2072569))

(assert (=> b!1686731 d!514186))

(declare-fun d!514188 () Bool)

(declare-fun lt!641610 () BalanceConc!12260)

(assert (=> d!514188 (= (list!7432 lt!641610) (printList!997 thiss!17113 (list!7431 (seqFromList!2248 (t!154811 tokens!457)))))))

(assert (=> d!514188 (= lt!641610 (printTailRec!935 thiss!17113 (seqFromList!2248 (t!154811 tokens!457)) 0 (BalanceConc!12261 Empty!6158)))))

(assert (=> d!514188 (= (print!1415 thiss!17113 (seqFromList!2248 (t!154811 tokens!457))) lt!641610)))

(declare-fun bs!399737 () Bool)

(assert (= bs!399737 d!514188))

(declare-fun m!2072571 () Bool)

(assert (=> bs!399737 m!2072571))

(assert (=> bs!399737 m!2069737))

(declare-fun m!2072573 () Bool)

(assert (=> bs!399737 m!2072573))

(assert (=> bs!399737 m!2072573))

(declare-fun m!2072575 () Bool)

(assert (=> bs!399737 m!2072575))

(assert (=> bs!399737 m!2069737))

(declare-fun m!2072577 () Bool)

(assert (=> bs!399737 m!2072577))

(assert (=> b!1686731 d!514188))

(assert (=> b!1686731 d!513692))

(declare-fun d!514190 () Bool)

(declare-fun c!275764 () Bool)

(assert (=> d!514190 (= c!275764 ((_ is IntegerValue!10035) (value!102440 (h!23889 (t!154811 tokens!457)))))))

(declare-fun e!1080615 () Bool)

(assert (=> d!514190 (= (inv!21 (value!102440 (h!23889 (t!154811 tokens!457)))) e!1080615)))

(declare-fun b!1688030 () Bool)

(declare-fun e!1080617 () Bool)

(assert (=> b!1688030 (= e!1080617 (inv!17 (value!102440 (h!23889 (t!154811 tokens!457)))))))

(declare-fun b!1688031 () Bool)

(assert (=> b!1688031 (= e!1080615 e!1080617)))

(declare-fun c!275763 () Bool)

(assert (=> b!1688031 (= c!275763 ((_ is IntegerValue!10036) (value!102440 (h!23889 (t!154811 tokens!457)))))))

(declare-fun b!1688032 () Bool)

(assert (=> b!1688032 (= e!1080615 (inv!16 (value!102440 (h!23889 (t!154811 tokens!457)))))))

(declare-fun b!1688033 () Bool)

(declare-fun res!756856 () Bool)

(declare-fun e!1080616 () Bool)

(assert (=> b!1688033 (=> res!756856 e!1080616)))

(assert (=> b!1688033 (= res!756856 (not ((_ is IntegerValue!10037) (value!102440 (h!23889 (t!154811 tokens!457))))))))

(assert (=> b!1688033 (= e!1080617 e!1080616)))

(declare-fun b!1688034 () Bool)

(assert (=> b!1688034 (= e!1080616 (inv!15 (value!102440 (h!23889 (t!154811 tokens!457)))))))

(assert (= (and d!514190 c!275764) b!1688032))

(assert (= (and d!514190 (not c!275764)) b!1688031))

(assert (= (and b!1688031 c!275763) b!1688030))

(assert (= (and b!1688031 (not c!275763)) b!1688033))

(assert (= (and b!1688033 (not res!756856)) b!1688034))

(declare-fun m!2072579 () Bool)

(assert (=> b!1688030 m!2072579))

(declare-fun m!2072581 () Bool)

(assert (=> b!1688032 m!2072581))

(declare-fun m!2072583 () Bool)

(assert (=> b!1688034 m!2072583))

(assert (=> b!1687080 d!514190))

(declare-fun d!514192 () Bool)

(declare-fun e!1080620 () Bool)

(assert (=> d!514192 e!1080620))

(declare-fun res!756859 () Bool)

(assert (=> d!514192 (=> (not res!756859) (not e!1080620))))

(declare-fun lt!641613 () BalanceConc!12260)

(assert (=> d!514192 (= res!756859 (= (list!7432 lt!641613) (originalCharacters!4069 (h!23889 tokens!457))))))

(declare-fun fromList!425 (List!18555) Conc!6158)

(assert (=> d!514192 (= lt!641613 (BalanceConc!12261 (fromList!425 (originalCharacters!4069 (h!23889 tokens!457)))))))

(assert (=> d!514192 (= (fromListB!1029 (originalCharacters!4069 (h!23889 tokens!457))) lt!641613)))

(declare-fun b!1688037 () Bool)

(assert (=> b!1688037 (= e!1080620 (isBalanced!1930 (fromList!425 (originalCharacters!4069 (h!23889 tokens!457)))))))

(assert (= (and d!514192 res!756859) b!1688037))

(declare-fun m!2072585 () Bool)

(assert (=> d!514192 m!2072585))

(declare-fun m!2072587 () Bool)

(assert (=> d!514192 m!2072587))

(assert (=> b!1688037 m!2072587))

(assert (=> b!1688037 m!2072587))

(declare-fun m!2072589 () Bool)

(assert (=> b!1688037 m!2072589))

(assert (=> d!513552 d!514192))

(declare-fun d!514194 () Bool)

(declare-fun lt!641614 () Int)

(assert (=> d!514194 (= lt!641614 (size!14724 (list!7432 (_2!10519 lt!641139))))))

(assert (=> d!514194 (= lt!641614 (size!14731 (c!275419 (_2!10519 lt!641139))))))

(assert (=> d!514194 (= (size!14726 (_2!10519 lt!641139)) lt!641614)))

(declare-fun bs!399738 () Bool)

(assert (= bs!399738 d!514194))

(assert (=> bs!399738 m!2070789))

(assert (=> bs!399738 m!2070789))

(declare-fun m!2072591 () Bool)

(assert (=> bs!399738 m!2072591))

(declare-fun m!2072593 () Bool)

(assert (=> bs!399738 m!2072593))

(assert (=> b!1686921 d!514194))

(declare-fun d!514196 () Bool)

(declare-fun lt!641615 () Int)

(assert (=> d!514196 (= lt!641615 (size!14724 (list!7432 lt!640656)))))

(assert (=> d!514196 (= lt!641615 (size!14731 (c!275419 lt!640656)))))

(assert (=> d!514196 (= (size!14726 lt!640656) lt!641615)))

(declare-fun bs!399739 () Bool)

(assert (= bs!399739 d!514196))

(assert (=> bs!399739 m!2069747))

(assert (=> bs!399739 m!2069747))

(assert (=> bs!399739 m!2072509))

(declare-fun m!2072595 () Bool)

(assert (=> bs!399739 m!2072595))

(assert (=> b!1686921 d!514196))

(declare-fun d!514198 () Bool)

(declare-fun c!275768 () Bool)

(assert (=> d!514198 (= c!275768 (= 0 (size!14726 (++!5066 lt!640663 lt!640642))))))

(declare-fun e!1080623 () Bool)

(assert (=> d!514198 (= (prefixMatchZipperSequence!697 (focus!233 lt!640647) (++!5066 lt!640663 lt!640642) 0) e!1080623)))

(declare-fun b!1688042 () Bool)

(declare-fun lostCauseZipper!45 ((InoxSet Context!1854)) Bool)

(assert (=> b!1688042 (= e!1080623 (not (lostCauseZipper!45 (focus!233 lt!640647))))))

(declare-fun b!1688043 () Bool)

(declare-fun derivationStepZipper!69 ((InoxSet Context!1854) C!9340) (InoxSet Context!1854))

(assert (=> b!1688043 (= e!1080623 (prefixMatchZipperSequence!697 (derivationStepZipper!69 (focus!233 lt!640647) (apply!5035 (++!5066 lt!640663 lt!640642) 0)) (++!5066 lt!640663 lt!640642) (+ 0 1)))))

(assert (= (and d!514198 c!275768) b!1688042))

(assert (= (and d!514198 (not c!275768)) b!1688043))

(assert (=> d!514198 m!2069829))

(declare-fun m!2072597 () Bool)

(assert (=> d!514198 m!2072597))

(assert (=> b!1688042 m!2070909))

(declare-fun m!2072599 () Bool)

(assert (=> b!1688042 m!2072599))

(assert (=> b!1688043 m!2069829))

(declare-fun m!2072601 () Bool)

(assert (=> b!1688043 m!2072601))

(assert (=> b!1688043 m!2070909))

(assert (=> b!1688043 m!2072601))

(declare-fun m!2072603 () Bool)

(assert (=> b!1688043 m!2072603))

(assert (=> b!1688043 m!2072603))

(assert (=> b!1688043 m!2069829))

(declare-fun m!2072605 () Bool)

(assert (=> b!1688043 m!2072605))

(assert (=> d!513716 d!514198))

(declare-fun d!514200 () Bool)

(declare-fun e!1080626 () Bool)

(assert (=> d!514200 e!1080626))

(declare-fun res!756863 () Bool)

(assert (=> d!514200 (=> (not res!756863) (not e!1080626))))

(assert (=> d!514200 (= res!756863 (validRegex!1842 lt!640647))))

(assert (=> d!514200 (= (focus!233 lt!640647) (store ((as const (Array Context!1854 Bool)) false) (Context!1855 (Cons!18493 lt!640647 Nil!18493)) true))))

(declare-fun b!1688046 () Bool)

(declare-fun unfocusZipper!45 (List!18564) Regex!4583)

(assert (=> b!1688046 (= e!1080626 (= (unfocusZipper!45 (toList!973 (store ((as const (Array Context!1854 Bool)) false) (Context!1855 (Cons!18493 lt!640647 Nil!18493)) true))) lt!640647))))

(assert (= (and d!514200 res!756863) b!1688046))

(assert (=> d!514200 m!2070913))

(declare-fun m!2072607 () Bool)

(assert (=> d!514200 m!2072607))

(assert (=> b!1688046 m!2072607))

(assert (=> b!1688046 m!2072607))

(declare-fun m!2072609 () Bool)

(assert (=> b!1688046 m!2072609))

(assert (=> b!1688046 m!2072609))

(declare-fun m!2072611 () Bool)

(assert (=> b!1688046 m!2072611))

(assert (=> d!513716 d!514200))

(declare-fun d!514202 () Bool)

(assert (=> d!514202 (= (list!7432 (++!5066 lt!640663 lt!640642)) (list!7436 (c!275419 (++!5066 lt!640663 lt!640642))))))

(declare-fun bs!399740 () Bool)

(assert (= bs!399740 d!514202))

(declare-fun m!2072613 () Bool)

(assert (=> bs!399740 m!2072613))

(assert (=> d!513716 d!514202))

(declare-fun d!514204 () Bool)

(declare-fun c!275769 () Bool)

(assert (=> d!514204 (= c!275769 (= lt!641212 (size!14726 (++!5066 lt!640663 lt!640642))))))

(declare-fun e!1080627 () Bool)

(assert (=> d!514204 (= (prefixMatchZipperSequence!697 lt!641206 (++!5066 lt!640663 lt!640642) lt!641212) e!1080627)))

(declare-fun b!1688047 () Bool)

(assert (=> b!1688047 (= e!1080627 (not (lostCauseZipper!45 lt!641206)))))

(declare-fun b!1688048 () Bool)

(assert (=> b!1688048 (= e!1080627 (prefixMatchZipperSequence!697 (derivationStepZipper!69 lt!641206 (apply!5035 (++!5066 lt!640663 lt!640642) lt!641212)) (++!5066 lt!640663 lt!640642) (+ lt!641212 1)))))

(assert (= (and d!514204 c!275769) b!1688047))

(assert (= (and d!514204 (not c!275769)) b!1688048))

(assert (=> d!514204 m!2069829))

(assert (=> d!514204 m!2072597))

(declare-fun m!2072615 () Bool)

(assert (=> b!1688047 m!2072615))

(assert (=> b!1688048 m!2069829))

(declare-fun m!2072617 () Bool)

(assert (=> b!1688048 m!2072617))

(assert (=> b!1688048 m!2072617))

(declare-fun m!2072619 () Bool)

(assert (=> b!1688048 m!2072619))

(assert (=> b!1688048 m!2072619))

(assert (=> b!1688048 m!2069829))

(declare-fun m!2072621 () Bool)

(assert (=> b!1688048 m!2072621))

(assert (=> d!513716 d!514204))

(declare-fun d!514206 () Bool)

(declare-fun e!1080630 () Bool)

(assert (=> d!514206 e!1080630))

(declare-fun res!756866 () Bool)

(assert (=> d!514206 (=> (not res!756866) (not e!1080630))))

(declare-fun lt!641618 () List!18564)

(declare-fun noDuplicate!264 (List!18564) Bool)

(assert (=> d!514206 (= res!756866 (noDuplicate!264 lt!641618))))

(declare-fun choose!10211 ((InoxSet Context!1854)) List!18564)

(assert (=> d!514206 (= lt!641618 (choose!10211 (focus!233 lt!640647)))))

(assert (=> d!514206 (= (toList!973 (focus!233 lt!640647)) lt!641618)))

(declare-fun b!1688051 () Bool)

(declare-fun content!2609 (List!18564) (InoxSet Context!1854))

(assert (=> b!1688051 (= e!1080630 (= (content!2609 lt!641618) (focus!233 lt!640647)))))

(assert (= (and d!514206 res!756866) b!1688051))

(declare-fun m!2072623 () Bool)

(assert (=> d!514206 m!2072623))

(assert (=> d!514206 m!2070909))

(declare-fun m!2072625 () Bool)

(assert (=> d!514206 m!2072625))

(declare-fun m!2072627 () Bool)

(assert (=> b!1688051 m!2072627))

(assert (=> d!513716 d!514206))

(declare-fun d!514208 () Bool)

(declare-fun c!275774 () Bool)

(assert (=> d!514208 (= c!275774 (isEmpty!11569 lt!641213))))

(declare-fun e!1080637 () Bool)

(assert (=> d!514208 (= (prefixMatchZipper!212 lt!641211 lt!641213) e!1080637)))

(declare-fun b!1688062 () Bool)

(assert (=> b!1688062 (= e!1080637 (not (lostCauseZipper!45 lt!641211)))))

(declare-fun b!1688063 () Bool)

(assert (=> b!1688063 (= e!1080637 (prefixMatchZipper!212 (derivationStepZipper!69 lt!641211 (head!3780 lt!641213)) (tail!2518 lt!641213)))))

(assert (= (and d!514208 c!275774) b!1688062))

(assert (= (and d!514208 (not c!275774)) b!1688063))

(declare-fun m!2072629 () Bool)

(assert (=> d!514208 m!2072629))

(declare-fun m!2072631 () Bool)

(assert (=> b!1688062 m!2072631))

(declare-fun m!2072633 () Bool)

(assert (=> b!1688063 m!2072633))

(assert (=> b!1688063 m!2072633))

(declare-fun m!2072635 () Bool)

(assert (=> b!1688063 m!2072635))

(declare-fun m!2072637 () Bool)

(assert (=> b!1688063 m!2072637))

(assert (=> b!1688063 m!2072635))

(assert (=> b!1688063 m!2072637))

(declare-fun m!2072639 () Bool)

(assert (=> b!1688063 m!2072639))

(assert (=> d!513716 d!514208))

(declare-fun d!514210 () Bool)

(declare-fun c!275775 () Bool)

(assert (=> d!514210 (= c!275775 (isEmpty!11569 (dropList!739 (++!5066 lt!640663 lt!640642) lt!641212)))))

(declare-fun e!1080638 () Bool)

(assert (=> d!514210 (= (prefixMatchZipper!212 lt!641206 (dropList!739 (++!5066 lt!640663 lt!640642) lt!641212)) e!1080638)))

(declare-fun b!1688064 () Bool)

(assert (=> b!1688064 (= e!1080638 (not (lostCauseZipper!45 lt!641206)))))

(declare-fun b!1688065 () Bool)

(assert (=> b!1688065 (= e!1080638 (prefixMatchZipper!212 (derivationStepZipper!69 lt!641206 (head!3780 (dropList!739 (++!5066 lt!640663 lt!640642) lt!641212))) (tail!2518 (dropList!739 (++!5066 lt!640663 lt!640642) lt!641212))))))

(assert (= (and d!514210 c!275775) b!1688064))

(assert (= (and d!514210 (not c!275775)) b!1688065))

(assert (=> d!514210 m!2070905))

(declare-fun m!2072641 () Bool)

(assert (=> d!514210 m!2072641))

(assert (=> b!1688064 m!2072615))

(assert (=> b!1688065 m!2070905))

(declare-fun m!2072643 () Bool)

(assert (=> b!1688065 m!2072643))

(assert (=> b!1688065 m!2072643))

(declare-fun m!2072645 () Bool)

(assert (=> b!1688065 m!2072645))

(assert (=> b!1688065 m!2070905))

(declare-fun m!2072647 () Bool)

(assert (=> b!1688065 m!2072647))

(assert (=> b!1688065 m!2072645))

(assert (=> b!1688065 m!2072647))

(declare-fun m!2072649 () Bool)

(assert (=> b!1688065 m!2072649))

(assert (=> d!513716 d!514210))

(declare-fun d!514212 () Bool)

(assert (=> d!514212 (= (prefixMatchZipper!212 lt!641206 (dropList!739 (++!5066 lt!640663 lt!640642) lt!641212)) (prefixMatchZipperSequence!697 lt!641206 (++!5066 lt!640663 lt!640642) lt!641212))))

(declare-fun lt!641651 () Unit!31839)

(declare-fun choose!10212 ((InoxSet Context!1854) BalanceConc!12260 Int) Unit!31839)

(assert (=> d!514212 (= lt!641651 (choose!10212 lt!641206 (++!5066 lt!640663 lt!640642) lt!641212))))

(declare-fun e!1080652 () Bool)

(assert (=> d!514212 e!1080652))

(declare-fun res!756881 () Bool)

(assert (=> d!514212 (=> (not res!756881) (not e!1080652))))

(assert (=> d!514212 (= res!756881 (>= lt!641212 0))))

(assert (=> d!514212 (= (lemmaprefixMatchZipperSequenceEquivalent!212 lt!641206 (++!5066 lt!640663 lt!640642) lt!641212) lt!641651)))

(declare-fun b!1688080 () Bool)

(assert (=> b!1688080 (= e!1080652 (<= lt!641212 (size!14726 (++!5066 lt!640663 lt!640642))))))

(assert (= (and d!514212 res!756881) b!1688080))

(assert (=> d!514212 m!2069829))

(assert (=> d!514212 m!2070905))

(assert (=> d!514212 m!2070905))

(assert (=> d!514212 m!2070907))

(assert (=> d!514212 m!2069829))

(assert (=> d!514212 m!2070935))

(assert (=> d!514212 m!2069829))

(declare-fun m!2072651 () Bool)

(assert (=> d!514212 m!2072651))

(assert (=> b!1688080 m!2069829))

(assert (=> b!1688080 m!2072597))

(assert (=> d!513716 d!514212))

(declare-fun d!514214 () Bool)

(declare-fun drop!961 (List!18555 Int) List!18555)

(assert (=> d!514214 (= (dropList!739 (++!5066 lt!640663 lt!640642) lt!641212) (drop!961 (list!7436 (c!275419 (++!5066 lt!640663 lt!640642))) lt!641212))))

(declare-fun bs!399742 () Bool)

(assert (= bs!399742 d!514214))

(assert (=> bs!399742 m!2072613))

(assert (=> bs!399742 m!2072613))

(declare-fun m!2072653 () Bool)

(assert (=> bs!399742 m!2072653))

(assert (=> d!513716 d!514214))

(declare-fun d!514216 () Bool)

(declare-fun c!275777 () Bool)

(assert (=> d!514216 (= c!275777 (isEmpty!11569 lt!641213))))

(declare-fun e!1080659 () Bool)

(assert (=> d!514216 (= (prefixMatch!496 lt!640647 lt!641213) e!1080659)))

(declare-fun b!1688089 () Bool)

(assert (=> b!1688089 (= e!1080659 (not (lostCause!488 lt!640647)))))

(declare-fun b!1688090 () Bool)

(assert (=> b!1688090 (= e!1080659 (prefixMatch!496 (derivativeStep!1140 lt!640647 (head!3780 lt!641213)) (tail!2518 lt!641213)))))

(assert (= (and d!514216 c!275777) b!1688089))

(assert (= (and d!514216 (not c!275777)) b!1688090))

(assert (=> d!514216 m!2072629))

(assert (=> b!1688089 m!2070461))

(assert (=> b!1688090 m!2072633))

(assert (=> b!1688090 m!2072633))

(declare-fun m!2072655 () Bool)

(assert (=> b!1688090 m!2072655))

(assert (=> b!1688090 m!2072637))

(assert (=> b!1688090 m!2072655))

(assert (=> b!1688090 m!2072637))

(declare-fun m!2072657 () Bool)

(assert (=> b!1688090 m!2072657))

(assert (=> d!513716 d!514216))

(declare-fun d!514218 () Bool)

(assert (=> d!514218 (= (prefixMatch!496 lt!640647 lt!641213) (prefixMatchZipper!212 lt!641211 lt!641213))))

(declare-fun lt!641655 () Unit!31839)

(declare-fun choose!10214 ((InoxSet Context!1854) List!18564 Regex!4583 List!18555) Unit!31839)

(assert (=> d!514218 (= lt!641655 (choose!10214 lt!641211 lt!641209 lt!640647 lt!641213))))

(assert (=> d!514218 (validRegex!1842 lt!640647)))

(assert (=> d!514218 (= (prefixMatchZipperRegexEquiv!212 lt!641211 lt!641209 lt!640647 lt!641213) lt!641655)))

(declare-fun bs!399744 () Bool)

(assert (= bs!399744 d!514218))

(assert (=> bs!399744 m!2070923))

(assert (=> bs!399744 m!2070925))

(declare-fun m!2072723 () Bool)

(assert (=> bs!399744 m!2072723))

(assert (=> bs!399744 m!2070913))

(assert (=> d!513716 d!514218))

(declare-fun d!514230 () Bool)

(declare-fun c!275786 () Bool)

(assert (=> d!514230 (= c!275786 (isEmpty!11569 (list!7432 (++!5066 lt!640663 lt!640642))))))

(declare-fun e!1080672 () Bool)

(assert (=> d!514230 (= (prefixMatch!496 lt!640647 (list!7432 (++!5066 lt!640663 lt!640642))) e!1080672)))

(declare-fun b!1688115 () Bool)

(assert (=> b!1688115 (= e!1080672 (not (lostCause!488 lt!640647)))))

(declare-fun b!1688116 () Bool)

(assert (=> b!1688116 (= e!1080672 (prefixMatch!496 (derivativeStep!1140 lt!640647 (head!3780 (list!7432 (++!5066 lt!640663 lt!640642)))) (tail!2518 (list!7432 (++!5066 lt!640663 lt!640642)))))))

(assert (= (and d!514230 c!275786) b!1688115))

(assert (= (and d!514230 (not c!275786)) b!1688116))

(assert (=> d!514230 m!2070929))

(declare-fun m!2072731 () Bool)

(assert (=> d!514230 m!2072731))

(assert (=> b!1688115 m!2070461))

(assert (=> b!1688116 m!2070929))

(declare-fun m!2072733 () Bool)

(assert (=> b!1688116 m!2072733))

(assert (=> b!1688116 m!2072733))

(declare-fun m!2072735 () Bool)

(assert (=> b!1688116 m!2072735))

(assert (=> b!1688116 m!2070929))

(declare-fun m!2072737 () Bool)

(assert (=> b!1688116 m!2072737))

(assert (=> b!1688116 m!2072735))

(assert (=> b!1688116 m!2072737))

(declare-fun m!2072741 () Bool)

(assert (=> b!1688116 m!2072741))

(assert (=> d!513716 d!514230))

(declare-fun bm!107952 () Bool)

(declare-fun call!107957 () Bool)

(declare-fun c!275800 () Bool)

(assert (=> bm!107952 (= call!107957 (validRegex!1842 (ite c!275800 (regOne!9679 lt!640647) (regTwo!9678 lt!640647))))))

(declare-fun b!1688169 () Bool)

(declare-fun e!1080707 () Bool)

(declare-fun call!107959 () Bool)

(assert (=> b!1688169 (= e!1080707 call!107959)))

(declare-fun b!1688170 () Bool)

(declare-fun res!756918 () Bool)

(assert (=> b!1688170 (=> (not res!756918) (not e!1080707))))

(assert (=> b!1688170 (= res!756918 call!107957)))

(declare-fun e!1080709 () Bool)

(assert (=> b!1688170 (= e!1080709 e!1080707)))

(declare-fun bm!107953 () Bool)

(declare-fun call!107958 () Bool)

(assert (=> bm!107953 (= call!107959 call!107958)))

(declare-fun b!1688172 () Bool)

(declare-fun e!1080711 () Bool)

(declare-fun e!1080713 () Bool)

(assert (=> b!1688172 (= e!1080711 e!1080713)))

(declare-fun res!756922 () Bool)

(assert (=> b!1688172 (= res!756922 (not (nullable!1369 (reg!4912 lt!640647))))))

(assert (=> b!1688172 (=> (not res!756922) (not e!1080713))))

(declare-fun b!1688173 () Bool)

(declare-fun e!1080710 () Bool)

(assert (=> b!1688173 (= e!1080710 e!1080711)))

(declare-fun c!275799 () Bool)

(assert (=> b!1688173 (= c!275799 ((_ is Star!4583) lt!640647))))

(declare-fun b!1688174 () Bool)

(assert (=> b!1688174 (= e!1080713 call!107958)))

(declare-fun b!1688175 () Bool)

(declare-fun e!1080712 () Bool)

(assert (=> b!1688175 (= e!1080712 call!107957)))

(declare-fun bm!107954 () Bool)

(assert (=> bm!107954 (= call!107958 (validRegex!1842 (ite c!275799 (reg!4912 lt!640647) (ite c!275800 (regTwo!9679 lt!640647) (regOne!9678 lt!640647)))))))

(declare-fun b!1688171 () Bool)

(declare-fun e!1080708 () Bool)

(assert (=> b!1688171 (= e!1080708 e!1080712)))

(declare-fun res!756919 () Bool)

(assert (=> b!1688171 (=> (not res!756919) (not e!1080712))))

(assert (=> b!1688171 (= res!756919 call!107959)))

(declare-fun d!514240 () Bool)

(declare-fun res!756920 () Bool)

(assert (=> d!514240 (=> res!756920 e!1080710)))

(assert (=> d!514240 (= res!756920 ((_ is ElementMatch!4583) lt!640647))))

(assert (=> d!514240 (= (validRegex!1842 lt!640647) e!1080710)))

(declare-fun b!1688176 () Bool)

(assert (=> b!1688176 (= e!1080711 e!1080709)))

(assert (=> b!1688176 (= c!275800 ((_ is Union!4583) lt!640647))))

(declare-fun b!1688177 () Bool)

(declare-fun res!756921 () Bool)

(assert (=> b!1688177 (=> res!756921 e!1080708)))

(assert (=> b!1688177 (= res!756921 (not ((_ is Concat!7929) lt!640647)))))

(assert (=> b!1688177 (= e!1080709 e!1080708)))

(assert (= (and d!514240 (not res!756920)) b!1688173))

(assert (= (and b!1688173 c!275799) b!1688172))

(assert (= (and b!1688173 (not c!275799)) b!1688176))

(assert (= (and b!1688172 res!756922) b!1688174))

(assert (= (and b!1688176 c!275800) b!1688170))

(assert (= (and b!1688176 (not c!275800)) b!1688177))

(assert (= (and b!1688170 res!756918) b!1688169))

(assert (= (and b!1688177 (not res!756921)) b!1688171))

(assert (= (and b!1688171 res!756919) b!1688175))

(assert (= (or b!1688169 b!1688171) bm!107953))

(assert (= (or b!1688170 b!1688175) bm!107952))

(assert (= (or b!1688174 bm!107953) bm!107954))

(declare-fun m!2072791 () Bool)

(assert (=> bm!107952 m!2072791))

(declare-fun m!2072793 () Bool)

(assert (=> b!1688172 m!2072793))

(declare-fun m!2072795 () Bool)

(assert (=> bm!107954 m!2072795))

(assert (=> d!513716 d!514240))

(declare-fun b!1688199 () Bool)

(declare-fun e!1080723 () List!18558)

(declare-fun ++!5070 (List!18558 List!18558) List!18558)

(assert (=> b!1688199 (= e!1080723 (++!5070 (list!7434 (left!14776 (c!275421 (_1!10519 lt!640653)))) (list!7434 (right!15106 (c!275421 (_1!10519 lt!640653))))))))

(declare-fun b!1688196 () Bool)

(declare-fun e!1080722 () List!18558)

(assert (=> b!1688196 (= e!1080722 Nil!18488)))

(declare-fun b!1688197 () Bool)

(assert (=> b!1688197 (= e!1080722 e!1080723)))

(declare-fun c!275808 () Bool)

(assert (=> b!1688197 (= c!275808 ((_ is Leaf!9007) (c!275421 (_1!10519 lt!640653))))))

(declare-fun d!514270 () Bool)

(declare-fun c!275807 () Bool)

(assert (=> d!514270 (= c!275807 ((_ is Empty!6159) (c!275421 (_1!10519 lt!640653))))))

(assert (=> d!514270 (= (list!7434 (c!275421 (_1!10519 lt!640653))) e!1080722)))

(declare-fun b!1688198 () Bool)

(declare-fun list!7440 (IArray!12323) List!18558)

(assert (=> b!1688198 (= e!1080723 (list!7440 (xs!9019 (c!275421 (_1!10519 lt!640653)))))))

(assert (= (and d!514270 c!275807) b!1688196))

(assert (= (and d!514270 (not c!275807)) b!1688197))

(assert (= (and b!1688197 c!275808) b!1688198))

(assert (= (and b!1688197 (not c!275808)) b!1688199))

(declare-fun m!2072819 () Bool)

(assert (=> b!1688199 m!2072819))

(declare-fun m!2072821 () Bool)

(assert (=> b!1688199 m!2072821))

(assert (=> b!1688199 m!2072819))

(assert (=> b!1688199 m!2072821))

(declare-fun m!2072823 () Bool)

(assert (=> b!1688199 m!2072823))

(declare-fun m!2072825 () Bool)

(assert (=> b!1688198 m!2072825))

(assert (=> d!513588 d!514270))

(declare-fun b!1688200 () Bool)

(declare-fun e!1080727 () Bool)

(declare-fun e!1080726 () Bool)

(assert (=> b!1688200 (= e!1080727 e!1080726)))

(declare-fun c!275810 () Bool)

(assert (=> b!1688200 (= c!275810 ((_ is EmptyLang!4583) (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641105))))))))

(declare-fun b!1688201 () Bool)

(declare-fun e!1080730 () Bool)

(declare-fun e!1080728 () Bool)

(assert (=> b!1688201 (= e!1080730 e!1080728)))

(declare-fun res!756929 () Bool)

(assert (=> b!1688201 (=> (not res!756929) (not e!1080728))))

(declare-fun lt!641666 () Bool)

(assert (=> b!1688201 (= res!756929 (not lt!641666))))

(declare-fun b!1688202 () Bool)

(declare-fun call!107960 () Bool)

(assert (=> b!1688202 (= e!1080727 (= lt!641666 call!107960))))

(declare-fun b!1688203 () Bool)

(declare-fun e!1080729 () Bool)

(assert (=> b!1688203 (= e!1080729 (not (= (head!3780 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641105))))) (c!275420 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641105))))))))))

(declare-fun b!1688204 () Bool)

(declare-fun res!756933 () Bool)

(declare-fun e!1080725 () Bool)

(assert (=> b!1688204 (=> (not res!756933) (not e!1080725))))

(assert (=> b!1688204 (= res!756933 (isEmpty!11569 (tail!2518 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641105)))))))))

(declare-fun b!1688205 () Bool)

(declare-fun res!756934 () Bool)

(assert (=> b!1688205 (=> res!756934 e!1080730)))

(assert (=> b!1688205 (= res!756934 (not ((_ is ElementMatch!4583) (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641105)))))))))

(assert (=> b!1688205 (= e!1080726 e!1080730)))

(declare-fun b!1688206 () Bool)

(assert (=> b!1688206 (= e!1080728 e!1080729)))

(declare-fun res!756931 () Bool)

(assert (=> b!1688206 (=> res!756931 e!1080729)))

(assert (=> b!1688206 (= res!756931 call!107960)))

(declare-fun b!1688207 () Bool)

(assert (=> b!1688207 (= e!1080725 (= (head!3780 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641105))))) (c!275420 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641105)))))))))

(declare-fun b!1688208 () Bool)

(declare-fun res!756930 () Bool)

(assert (=> b!1688208 (=> res!756930 e!1080729)))

(assert (=> b!1688208 (= res!756930 (not (isEmpty!11569 (tail!2518 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641105))))))))))

(declare-fun d!514278 () Bool)

(assert (=> d!514278 e!1080727))

(declare-fun c!275809 () Bool)

(assert (=> d!514278 (= c!275809 ((_ is EmptyExpr!4583) (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641105))))))))

(declare-fun e!1080724 () Bool)

(assert (=> d!514278 (= lt!641666 e!1080724)))

(declare-fun c!275811 () Bool)

(assert (=> d!514278 (= c!275811 (isEmpty!11569 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641105))))))))

(assert (=> d!514278 (validRegex!1842 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641105)))))))

(assert (=> d!514278 (= (matchR!2072 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641105)))) (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641105))))) lt!641666)))

(declare-fun b!1688209 () Bool)

(assert (=> b!1688209 (= e!1080724 (matchR!2072 (derivativeStep!1140 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641105)))) (head!3780 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641105)))))) (tail!2518 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641105)))))))))

(declare-fun b!1688210 () Bool)

(declare-fun res!756935 () Bool)

(assert (=> b!1688210 (=> res!756935 e!1080730)))

(assert (=> b!1688210 (= res!756935 e!1080725)))

(declare-fun res!756932 () Bool)

(assert (=> b!1688210 (=> (not res!756932) (not e!1080725))))

(assert (=> b!1688210 (= res!756932 lt!641666)))

(declare-fun bm!107955 () Bool)

(assert (=> bm!107955 (= call!107960 (isEmpty!11569 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641105))))))))

(declare-fun b!1688211 () Bool)

(declare-fun res!756936 () Bool)

(assert (=> b!1688211 (=> (not res!756936) (not e!1080725))))

(assert (=> b!1688211 (= res!756936 (not call!107960))))

(declare-fun b!1688212 () Bool)

(assert (=> b!1688212 (= e!1080726 (not lt!641666))))

(declare-fun b!1688213 () Bool)

(assert (=> b!1688213 (= e!1080724 (nullable!1369 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641105))))))))

(assert (= (and d!514278 c!275811) b!1688213))

(assert (= (and d!514278 (not c!275811)) b!1688209))

(assert (= (and d!514278 c!275809) b!1688202))

(assert (= (and d!514278 (not c!275809)) b!1688200))

(assert (= (and b!1688200 c!275810) b!1688212))

(assert (= (and b!1688200 (not c!275810)) b!1688205))

(assert (= (and b!1688205 (not res!756934)) b!1688210))

(assert (= (and b!1688210 res!756932) b!1688211))

(assert (= (and b!1688211 res!756936) b!1688204))

(assert (= (and b!1688204 res!756933) b!1688207))

(assert (= (and b!1688210 (not res!756935)) b!1688201))

(assert (= (and b!1688201 res!756929) b!1688206))

(assert (= (and b!1688206 (not res!756931)) b!1688208))

(assert (= (and b!1688208 (not res!756930)) b!1688203))

(assert (= (or b!1688202 b!1688211 b!1688206) bm!107955))

(assert (=> b!1688208 m!2070697))

(declare-fun m!2072827 () Bool)

(assert (=> b!1688208 m!2072827))

(assert (=> b!1688208 m!2072827))

(declare-fun m!2072829 () Bool)

(assert (=> b!1688208 m!2072829))

(assert (=> b!1688204 m!2070697))

(assert (=> b!1688204 m!2072827))

(assert (=> b!1688204 m!2072827))

(assert (=> b!1688204 m!2072829))

(assert (=> b!1688203 m!2070697))

(declare-fun m!2072831 () Bool)

(assert (=> b!1688203 m!2072831))

(declare-fun m!2072833 () Bool)

(assert (=> b!1688213 m!2072833))

(assert (=> d!514278 m!2070697))

(declare-fun m!2072835 () Bool)

(assert (=> d!514278 m!2072835))

(declare-fun m!2072837 () Bool)

(assert (=> d!514278 m!2072837))

(assert (=> b!1688207 m!2070697))

(assert (=> b!1688207 m!2072831))

(assert (=> bm!107955 m!2070697))

(assert (=> bm!107955 m!2072835))

(assert (=> b!1688209 m!2070697))

(assert (=> b!1688209 m!2072831))

(assert (=> b!1688209 m!2072831))

(declare-fun m!2072839 () Bool)

(assert (=> b!1688209 m!2072839))

(assert (=> b!1688209 m!2070697))

(assert (=> b!1688209 m!2072827))

(assert (=> b!1688209 m!2072839))

(assert (=> b!1688209 m!2072827))

(declare-fun m!2072843 () Bool)

(assert (=> b!1688209 m!2072843))

(assert (=> b!1686881 d!514278))

(declare-fun d!514280 () Bool)

(assert (=> d!514280 (= (get!5420 lt!641105) (v!24888 lt!641105))))

(assert (=> b!1686881 d!514280))

(declare-fun d!514284 () Bool)

(assert (=> d!514284 (= (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641105)))) (list!7436 (c!275419 (charsOf!1904 (_1!10520 (get!5420 lt!641105))))))))

(declare-fun bs!399752 () Bool)

(assert (= bs!399752 d!514284))

(declare-fun m!2072847 () Bool)

(assert (=> bs!399752 m!2072847))

(assert (=> b!1686881 d!514284))

(declare-fun d!514288 () Bool)

(declare-fun lt!641668 () BalanceConc!12260)

(assert (=> d!514288 (= (list!7432 lt!641668) (originalCharacters!4069 (_1!10520 (get!5420 lt!641105))))))

(assert (=> d!514288 (= lt!641668 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641105))))) (value!102440 (_1!10520 (get!5420 lt!641105)))))))

(assert (=> d!514288 (= (charsOf!1904 (_1!10520 (get!5420 lt!641105))) lt!641668)))

(declare-fun b_lambda!53081 () Bool)

(assert (=> (not b_lambda!53081) (not d!514288)))

(declare-fun tb!97959 () Bool)

(declare-fun t!154963 () Bool)

(assert (=> (and b!1686461 (= (toChars!4593 (transformation!3255 (h!23888 rules!1846))) (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641105)))))) t!154963) tb!97959))

(declare-fun b!1688225 () Bool)

(declare-fun e!1080742 () Bool)

(declare-fun tp!484439 () Bool)

(assert (=> b!1688225 (= e!1080742 (and (inv!23853 (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641105))))) (value!102440 (_1!10520 (get!5420 lt!641105)))))) tp!484439))))

(declare-fun result!118066 () Bool)

(assert (=> tb!97959 (= result!118066 (and (inv!23854 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641105))))) (value!102440 (_1!10520 (get!5420 lt!641105))))) e!1080742))))

(assert (= tb!97959 b!1688225))

(declare-fun m!2072849 () Bool)

(assert (=> b!1688225 m!2072849))

(declare-fun m!2072851 () Bool)

(assert (=> tb!97959 m!2072851))

(assert (=> d!514288 t!154963))

(declare-fun b_and!120669 () Bool)

(assert (= b_and!120653 (and (=> t!154963 result!118066) b_and!120669)))

(declare-fun t!154965 () Bool)

(declare-fun tb!97961 () Bool)

(assert (=> (and b!1686468 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641105)))))) t!154965) tb!97961))

(declare-fun result!118068 () Bool)

(assert (= result!118068 result!118066))

(assert (=> d!514288 t!154965))

(declare-fun b_and!120671 () Bool)

(assert (= b_and!120655 (and (=> t!154965 result!118068) b_and!120671)))

(declare-fun tb!97963 () Bool)

(declare-fun t!154967 () Bool)

(assert (=> (and b!1687068 (= (toChars!4593 (transformation!3255 (h!23888 (t!154810 rules!1846)))) (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641105)))))) t!154967) tb!97963))

(declare-fun result!118070 () Bool)

(assert (= result!118070 result!118066))

(assert (=> d!514288 t!154967))

(declare-fun b_and!120673 () Bool)

(assert (= b_and!120657 (and (=> t!154967 result!118070) b_and!120673)))

(declare-fun tb!97965 () Bool)

(declare-fun t!154969 () Bool)

(assert (=> (and b!1687082 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641105)))))) t!154969) tb!97965))

(declare-fun result!118072 () Bool)

(assert (= result!118072 result!118066))

(assert (=> d!514288 t!154969))

(declare-fun b_and!120675 () Bool)

(assert (= b_and!120659 (and (=> t!154969 result!118072) b_and!120675)))

(declare-fun m!2072853 () Bool)

(assert (=> d!514288 m!2072853))

(declare-fun m!2072857 () Bool)

(assert (=> d!514288 m!2072857))

(assert (=> b!1686881 d!514288))

(declare-fun d!514290 () Bool)

(declare-fun e!1080743 () Bool)

(assert (=> d!514290 e!1080743))

(declare-fun res!756945 () Bool)

(assert (=> d!514290 (=> (not res!756945) (not e!1080743))))

(declare-fun lt!641669 () BalanceConc!12262)

(assert (=> d!514290 (= res!756945 (= (list!7431 lt!641669) tokens!457))))

(assert (=> d!514290 (= lt!641669 (BalanceConc!12263 (fromList!423 tokens!457)))))

(assert (=> d!514290 (= (fromListB!1031 tokens!457) lt!641669)))

(declare-fun b!1688226 () Bool)

(assert (=> b!1688226 (= e!1080743 (isBalanced!1928 (fromList!423 tokens!457)))))

(assert (= (and d!514290 res!756945) b!1688226))

(declare-fun m!2072861 () Bool)

(assert (=> d!514290 m!2072861))

(declare-fun m!2072863 () Bool)

(assert (=> d!514290 m!2072863))

(assert (=> b!1688226 m!2072863))

(assert (=> b!1688226 m!2072863))

(declare-fun m!2072865 () Bool)

(assert (=> b!1688226 m!2072865))

(assert (=> d!513682 d!514290))

(declare-fun b!1688233 () Bool)

(declare-fun res!756951 () Bool)

(declare-fun e!1080747 () Bool)

(assert (=> b!1688233 (=> (not res!756951) (not e!1080747))))

(declare-fun lt!641671 () List!18555)

(assert (=> b!1688233 (= res!756951 (= (size!14724 lt!641671) (+ (size!14724 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641105))))) (size!14724 (_2!10520 (get!5420 lt!641105))))))))

(declare-fun d!514296 () Bool)

(assert (=> d!514296 e!1080747))

(declare-fun res!756950 () Bool)

(assert (=> d!514296 (=> (not res!756950) (not e!1080747))))

(assert (=> d!514296 (= res!756950 (= (content!2605 lt!641671) ((_ map or) (content!2605 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641105))))) (content!2605 (_2!10520 (get!5420 lt!641105))))))))

(declare-fun e!1080748 () List!18555)

(assert (=> d!514296 (= lt!641671 e!1080748)))

(declare-fun c!275812 () Bool)

(assert (=> d!514296 (= c!275812 ((_ is Nil!18485) (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641105))))))))

(assert (=> d!514296 (= (++!5065 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641105)))) (_2!10520 (get!5420 lt!641105))) lt!641671)))

(declare-fun b!1688232 () Bool)

(assert (=> b!1688232 (= e!1080748 (Cons!18485 (h!23886 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641105))))) (++!5065 (t!154808 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641105))))) (_2!10520 (get!5420 lt!641105)))))))

(declare-fun b!1688234 () Bool)

(assert (=> b!1688234 (= e!1080747 (or (not (= (_2!10520 (get!5420 lt!641105)) Nil!18485)) (= lt!641671 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641105)))))))))

(declare-fun b!1688231 () Bool)

(assert (=> b!1688231 (= e!1080748 (_2!10520 (get!5420 lt!641105)))))

(assert (= (and d!514296 c!275812) b!1688231))

(assert (= (and d!514296 (not c!275812)) b!1688232))

(assert (= (and d!514296 res!756950) b!1688233))

(assert (= (and b!1688233 res!756951) b!1688234))

(declare-fun m!2072875 () Bool)

(assert (=> b!1688233 m!2072875))

(assert (=> b!1688233 m!2070697))

(declare-fun m!2072877 () Bool)

(assert (=> b!1688233 m!2072877))

(assert (=> b!1688233 m!2070713))

(declare-fun m!2072879 () Bool)

(assert (=> d!514296 m!2072879))

(assert (=> d!514296 m!2070697))

(declare-fun m!2072881 () Bool)

(assert (=> d!514296 m!2072881))

(declare-fun m!2072883 () Bool)

(assert (=> d!514296 m!2072883))

(declare-fun m!2072885 () Bool)

(assert (=> b!1688232 m!2072885))

(assert (=> b!1686882 d!514296))

(assert (=> b!1686882 d!514284))

(assert (=> b!1686882 d!514288))

(assert (=> b!1686882 d!514280))

(declare-fun b!1688239 () Bool)

(declare-fun e!1080751 () List!18555)

(assert (=> b!1688239 (= e!1080751 Nil!18485)))

(declare-fun d!514304 () Bool)

(declare-fun c!275815 () Bool)

(assert (=> d!514304 (= c!275815 ((_ is Empty!6158) (c!275419 lt!640642)))))

(assert (=> d!514304 (= (list!7436 (c!275419 lt!640642)) e!1080751)))

(declare-fun b!1688242 () Bool)

(declare-fun e!1080752 () List!18555)

(assert (=> b!1688242 (= e!1080752 (++!5065 (list!7436 (left!14775 (c!275419 lt!640642))) (list!7436 (right!15105 (c!275419 lt!640642)))))))

(declare-fun b!1688240 () Bool)

(assert (=> b!1688240 (= e!1080751 e!1080752)))

(declare-fun c!275816 () Bool)

(assert (=> b!1688240 (= c!275816 ((_ is Leaf!9006) (c!275419 lt!640642)))))

(declare-fun b!1688241 () Bool)

(assert (=> b!1688241 (= e!1080752 (list!7439 (xs!9018 (c!275419 lt!640642))))))

(assert (= (and d!514304 c!275815) b!1688239))

(assert (= (and d!514304 (not c!275815)) b!1688240))

(assert (= (and b!1688240 c!275816) b!1688241))

(assert (= (and b!1688240 (not c!275816)) b!1688242))

(assert (=> b!1688242 m!2072021))

(assert (=> b!1688242 m!2072017))

(assert (=> b!1688242 m!2072021))

(assert (=> b!1688242 m!2072017))

(declare-fun m!2072895 () Bool)

(assert (=> b!1688242 m!2072895))

(declare-fun m!2072897 () Bool)

(assert (=> b!1688241 m!2072897))

(assert (=> d!513632 d!514304))

(declare-fun d!514310 () Bool)

(assert (=> d!514310 (= (isDefined!2917 lt!641052) (not (isEmpty!11573 lt!641052)))))

(declare-fun bs!399755 () Bool)

(assert (= bs!399755 d!514310))

(assert (=> bs!399755 m!2070583))

(assert (=> b!1686834 d!514310))

(declare-fun d!514312 () Bool)

(declare-fun charsToBigInt!1 (List!18556) Int)

(assert (=> d!514312 (= (inv!17 (value!102440 (h!23889 tokens!457))) (= (charsToBigInt!1 (text!23863 (value!102440 (h!23889 tokens!457)))) (value!102432 (value!102440 (h!23889 tokens!457)))))))

(declare-fun bs!399757 () Bool)

(assert (= bs!399757 d!514312))

(declare-fun m!2072907 () Bool)

(assert (=> bs!399757 m!2072907))

(assert (=> b!1686757 d!514312))

(declare-fun d!514320 () Bool)

(assert (=> d!514320 (= (get!5422 lt!640755) (v!24889 lt!640755))))

(assert (=> b!1686626 d!514320))

(declare-fun d!514322 () Bool)

(assert (=> d!514322 (= (get!5420 (maxPrefixZipper!370 thiss!17113 rules!1846 (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))) (v!24888 (maxPrefixZipper!370 thiss!17113 rules!1846 (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))))

(assert (=> b!1686626 d!514322))

(declare-fun d!514324 () Bool)

(declare-fun lt!641690 () Option!3568)

(assert (=> d!514324 (= lt!641690 (maxPrefix!1444 thiss!17113 rules!1846 (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457))))))))

(declare-fun e!1080757 () Option!3568)

(assert (=> d!514324 (= lt!641690 e!1080757)))

(declare-fun c!275821 () Bool)

(assert (=> d!514324 (= c!275821 (and ((_ is Cons!18487) rules!1846) ((_ is Nil!18487) (t!154810 rules!1846))))))

(declare-fun lt!641687 () Unit!31839)

(declare-fun lt!641689 () Unit!31839)

(assert (=> d!514324 (= lt!641687 lt!641689)))

(assert (=> d!514324 (isPrefix!1513 (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))) (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))

(assert (=> d!514324 (= lt!641689 (lemmaIsPrefixRefl!1030 (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))) (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457))))))))

(assert (=> d!514324 (rulesValidInductive!1052 thiss!17113 rules!1846)))

(assert (=> d!514324 (= (maxPrefixZipper!370 thiss!17113 rules!1846 (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457))))) lt!641690)))

(declare-fun call!107963 () Option!3568)

(declare-fun bm!107958 () Bool)

(declare-fun maxPrefixOneRuleZipper!139 (LexerInterface!2884 Rule!6310 List!18555) Option!3568)

(assert (=> bm!107958 (= call!107963 (maxPrefixOneRuleZipper!139 thiss!17113 (h!23888 rules!1846) (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457))))))))

(declare-fun b!1688251 () Bool)

(assert (=> b!1688251 (= e!1080757 call!107963)))

(declare-fun b!1688252 () Bool)

(declare-fun lt!641688 () Option!3568)

(declare-fun lt!641686 () Option!3568)

(assert (=> b!1688252 (= e!1080757 (ite (and ((_ is None!3567) lt!641688) ((_ is None!3567) lt!641686)) None!3567 (ite ((_ is None!3567) lt!641686) lt!641688 (ite ((_ is None!3567) lt!641688) lt!641686 (ite (>= (size!14720 (_1!10520 (v!24888 lt!641688))) (size!14720 (_1!10520 (v!24888 lt!641686)))) lt!641688 lt!641686)))))))

(assert (=> b!1688252 (= lt!641688 call!107963)))

(assert (=> b!1688252 (= lt!641686 (maxPrefixZipper!370 thiss!17113 (t!154810 rules!1846) (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457))))))))

(assert (= (and d!514324 c!275821) b!1688251))

(assert (= (and d!514324 (not c!275821)) b!1688252))

(assert (= (or b!1688251 b!1688252) bm!107958))

(assert (=> d!514324 m!2070083))

(assert (=> d!514324 m!2070085))

(assert (=> d!514324 m!2070083))

(assert (=> d!514324 m!2070083))

(declare-fun m!2072909 () Bool)

(assert (=> d!514324 m!2072909))

(assert (=> d!514324 m!2070083))

(assert (=> d!514324 m!2070083))

(declare-fun m!2072911 () Bool)

(assert (=> d!514324 m!2072911))

(assert (=> d!514324 m!2070101))

(assert (=> bm!107958 m!2070083))

(declare-fun m!2072913 () Bool)

(assert (=> bm!107958 m!2072913))

(assert (=> b!1688252 m!2070083))

(assert (=> b!1688252 m!2072135))

(assert (=> b!1686626 d!514324))

(declare-fun d!514326 () Bool)

(assert (=> d!514326 (= (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))) (list!7436 (c!275419 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457))))))))

(declare-fun bs!399758 () Bool)

(assert (= bs!399758 d!514326))

(declare-fun m!2072915 () Bool)

(assert (=> bs!399758 m!2072915))

(assert (=> b!1686626 d!514326))

(declare-fun d!514328 () Bool)

(assert (=> d!514328 (= (inv!23854 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (value!102440 (h!23889 (t!154811 tokens!457))))) (isBalanced!1930 (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (value!102440 (h!23889 (t!154811 tokens!457)))))))))

(declare-fun bs!399759 () Bool)

(assert (= bs!399759 d!514328))

(declare-fun m!2072917 () Bool)

(assert (=> bs!399759 m!2072917))

(assert (=> tb!97859 d!514328))

(declare-fun d!514330 () Bool)

(assert (=> d!514330 (= (isEmpty!11574 (list!7431 (_1!10519 (lex!1368 thiss!17113 rules!1846 (seqFromList!2247 lt!640654))))) ((_ is Nil!18488) (list!7431 (_1!10519 (lex!1368 thiss!17113 rules!1846 (seqFromList!2247 lt!640654))))))))

(assert (=> d!513706 d!514330))

(declare-fun d!514332 () Bool)

(assert (=> d!514332 (= (list!7431 (_1!10519 (lex!1368 thiss!17113 rules!1846 (seqFromList!2247 lt!640654)))) (list!7434 (c!275421 (_1!10519 (lex!1368 thiss!17113 rules!1846 (seqFromList!2247 lt!640654))))))))

(declare-fun bs!399760 () Bool)

(assert (= bs!399760 d!514332))

(declare-fun m!2072919 () Bool)

(assert (=> bs!399760 m!2072919))

(assert (=> d!513706 d!514332))

(declare-fun lt!641693 () Bool)

(declare-fun d!514334 () Bool)

(assert (=> d!514334 (= lt!641693 (isEmpty!11574 (list!7434 (c!275421 (_1!10519 (lex!1368 thiss!17113 rules!1846 (seqFromList!2247 lt!640654)))))))))

(assert (=> d!514334 (= lt!641693 (= (size!14732 (c!275421 (_1!10519 (lex!1368 thiss!17113 rules!1846 (seqFromList!2247 lt!640654))))) 0))))

(assert (=> d!514334 (= (isEmpty!11575 (c!275421 (_1!10519 (lex!1368 thiss!17113 rules!1846 (seqFromList!2247 lt!640654))))) lt!641693)))

(declare-fun bs!399761 () Bool)

(assert (= bs!399761 d!514334))

(assert (=> bs!399761 m!2072919))

(assert (=> bs!399761 m!2072919))

(declare-fun m!2072921 () Bool)

(assert (=> bs!399761 m!2072921))

(declare-fun m!2072923 () Bool)

(assert (=> bs!399761 m!2072923))

(assert (=> d!513706 d!514334))

(declare-fun d!514336 () Bool)

(assert (=> d!514336 (= (list!7431 lt!641132) (list!7434 (c!275421 lt!641132)))))

(declare-fun bs!399762 () Bool)

(assert (= bs!399762 d!514336))

(declare-fun m!2072925 () Bool)

(assert (=> bs!399762 m!2072925))

(assert (=> d!513672 d!514336))

(declare-fun d!514338 () Bool)

(declare-fun e!1080760 () Bool)

(assert (=> d!514338 e!1080760))

(declare-fun res!756954 () Bool)

(assert (=> d!514338 (=> (not res!756954) (not e!1080760))))

(declare-fun lt!641696 () BalanceConc!12262)

(assert (=> d!514338 (= res!756954 (= (list!7431 lt!641696) (Cons!18488 (h!23889 tokens!457) Nil!18488)))))

(declare-fun choose!10217 (Token!6076) BalanceConc!12262)

(assert (=> d!514338 (= lt!641696 (choose!10217 (h!23889 tokens!457)))))

(assert (=> d!514338 (= (singleton!802 (h!23889 tokens!457)) lt!641696)))

(declare-fun b!1688255 () Bool)

(assert (=> b!1688255 (= e!1080760 (isBalanced!1928 (c!275421 lt!641696)))))

(assert (= (and d!514338 res!756954) b!1688255))

(declare-fun m!2072927 () Bool)

(assert (=> d!514338 m!2072927))

(declare-fun m!2072929 () Bool)

(assert (=> d!514338 m!2072929))

(declare-fun m!2072931 () Bool)

(assert (=> b!1688255 m!2072931))

(assert (=> d!513672 d!514338))

(assert (=> b!1686838 d!514046))

(declare-fun d!514340 () Bool)

(assert (=> d!514340 (= (apply!5039 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641052)))) (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!641052))))) (dynLambda!8390 (toValue!4734 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641052))))) (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!641052))))))))

(declare-fun b_lambda!53083 () Bool)

(assert (=> (not b_lambda!53083) (not d!514340)))

(declare-fun tb!97967 () Bool)

(declare-fun t!154973 () Bool)

(assert (=> (and b!1686461 (= (toValue!4734 (transformation!3255 (h!23888 rules!1846))) (toValue!4734 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641052)))))) t!154973) tb!97967))

(declare-fun result!118074 () Bool)

(assert (=> tb!97967 (= result!118074 (inv!21 (dynLambda!8390 (toValue!4734 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641052))))) (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!641052)))))))))

(declare-fun m!2072933 () Bool)

(assert (=> tb!97967 m!2072933))

(assert (=> d!514340 t!154973))

(declare-fun b_and!120677 () Bool)

(assert (= b_and!120661 (and (=> t!154973 result!118074) b_and!120677)))

(declare-fun t!154975 () Bool)

(declare-fun tb!97969 () Bool)

(assert (=> (and b!1686468 (= (toValue!4734 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (toValue!4734 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641052)))))) t!154975) tb!97969))

(declare-fun result!118076 () Bool)

(assert (= result!118076 result!118074))

(assert (=> d!514340 t!154975))

(declare-fun b_and!120679 () Bool)

(assert (= b_and!120663 (and (=> t!154975 result!118076) b_and!120679)))

(declare-fun t!154977 () Bool)

(declare-fun tb!97971 () Bool)

(assert (=> (and b!1687068 (= (toValue!4734 (transformation!3255 (h!23888 (t!154810 rules!1846)))) (toValue!4734 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641052)))))) t!154977) tb!97971))

(declare-fun result!118078 () Bool)

(assert (= result!118078 result!118074))

(assert (=> d!514340 t!154977))

(declare-fun b_and!120681 () Bool)

(assert (= b_and!120665 (and (=> t!154977 result!118078) b_and!120681)))

(declare-fun tb!97973 () Bool)

(declare-fun t!154979 () Bool)

(assert (=> (and b!1687082 (= (toValue!4734 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (toValue!4734 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641052)))))) t!154979) tb!97973))

(declare-fun result!118080 () Bool)

(assert (= result!118080 result!118074))

(assert (=> d!514340 t!154979))

(declare-fun b_and!120683 () Bool)

(assert (= b_and!120667 (and (=> t!154979 result!118080) b_and!120683)))

(assert (=> d!514340 m!2070573))

(declare-fun m!2072935 () Bool)

(assert (=> d!514340 m!2072935))

(assert (=> b!1686838 d!514340))

(declare-fun d!514342 () Bool)

(assert (=> d!514342 (= (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!641052)))) (fromListB!1029 (originalCharacters!4069 (_1!10520 (get!5420 lt!641052)))))))

(declare-fun bs!399763 () Bool)

(assert (= bs!399763 d!514342))

(declare-fun m!2072937 () Bool)

(assert (=> bs!399763 m!2072937))

(assert (=> b!1686838 d!514342))

(declare-fun d!514344 () Bool)

(declare-fun charsToBigInt!0 (List!18556 Int) Int)

(assert (=> d!514344 (= (inv!15 (value!102440 (h!23889 tokens!457))) (= (charsToBigInt!0 (text!23864 (value!102440 (h!23889 tokens!457))) 0) (value!102435 (value!102440 (h!23889 tokens!457)))))))

(declare-fun bs!399764 () Bool)

(assert (= bs!399764 d!514344))

(declare-fun m!2072939 () Bool)

(assert (=> bs!399764 m!2072939))

(assert (=> b!1686761 d!514344))

(assert (=> b!1686630 d!514320))

(assert (=> b!1686630 d!514324))

(assert (=> b!1686630 d!514322))

(declare-fun d!514346 () Bool)

(assert (=> d!514346 (= (list!7432 (_2!10521 (get!5422 lt!640755))) (list!7436 (c!275419 (_2!10521 (get!5422 lt!640755)))))))

(declare-fun bs!399765 () Bool)

(assert (= bs!399765 d!514346))

(declare-fun m!2072941 () Bool)

(assert (=> bs!399765 m!2072941))

(assert (=> b!1686630 d!514346))

(assert (=> b!1686630 d!514326))

(declare-fun d!514348 () Bool)

(declare-fun res!756959 () Bool)

(declare-fun e!1080766 () Bool)

(assert (=> d!514348 (=> res!756959 e!1080766)))

(assert (=> d!514348 (= res!756959 ((_ is Nil!18487) rules!1846))))

(assert (=> d!514348 (= (noDuplicateTag!1205 thiss!17113 rules!1846 Nil!18489) e!1080766)))

(declare-fun b!1688260 () Bool)

(declare-fun e!1080767 () Bool)

(assert (=> b!1688260 (= e!1080766 e!1080767)))

(declare-fun res!756960 () Bool)

(assert (=> b!1688260 (=> (not res!756960) (not e!1080767))))

(declare-fun contains!3253 (List!18559 String!21057) Bool)

(assert (=> b!1688260 (= res!756960 (not (contains!3253 Nil!18489 (tag!3545 (h!23888 rules!1846)))))))

(declare-fun b!1688261 () Bool)

(assert (=> b!1688261 (= e!1080767 (noDuplicateTag!1205 thiss!17113 (t!154810 rules!1846) (Cons!18489 (tag!3545 (h!23888 rules!1846)) Nil!18489)))))

(assert (= (and d!514348 (not res!756959)) b!1688260))

(assert (= (and b!1688260 res!756960) b!1688261))

(declare-fun m!2072943 () Bool)

(assert (=> b!1688260 m!2072943))

(declare-fun m!2072945 () Bool)

(assert (=> b!1688261 m!2072945))

(assert (=> b!1686746 d!514348))

(declare-fun bs!399766 () Bool)

(declare-fun d!514350 () Bool)

(assert (= bs!399766 (and d!514350 d!513554)))

(declare-fun lambda!68373 () Int)

(assert (=> bs!399766 (= lambda!68373 lambda!68335)))

(declare-fun b!1688266 () Bool)

(declare-fun e!1080772 () Bool)

(assert (=> b!1688266 (= e!1080772 true)))

(declare-fun b!1688265 () Bool)

(declare-fun e!1080771 () Bool)

(assert (=> b!1688265 (= e!1080771 e!1080772)))

(declare-fun b!1688264 () Bool)

(declare-fun e!1080770 () Bool)

(assert (=> b!1688264 (= e!1080770 e!1080771)))

(assert (=> d!514350 e!1080770))

(assert (= b!1688265 b!1688266))

(assert (= b!1688264 b!1688265))

(assert (= (and d!514350 ((_ is Cons!18487) rules!1846)) b!1688264))

(assert (=> b!1688266 (< (dynLambda!8379 order!11145 (toValue!4734 (transformation!3255 (h!23888 rules!1846)))) (dynLambda!8380 order!11147 lambda!68373))))

(assert (=> b!1688266 (< (dynLambda!8381 order!11149 (toChars!4593 (transformation!3255 (h!23888 rules!1846)))) (dynLambda!8380 order!11147 lambda!68373))))

(assert (=> d!514350 true))

(declare-fun lt!641697 () Bool)

(assert (=> d!514350 (= lt!641697 (forall!4209 (t!154811 tokens!457) lambda!68373))))

(declare-fun e!1080768 () Bool)

(assert (=> d!514350 (= lt!641697 e!1080768)))

(declare-fun res!756962 () Bool)

(assert (=> d!514350 (=> res!756962 e!1080768)))

(assert (=> d!514350 (= res!756962 (not ((_ is Cons!18488) (t!154811 tokens!457))))))

(assert (=> d!514350 (not (isEmpty!11563 rules!1846))))

(assert (=> d!514350 (= (rulesProduceEachTokenIndividuallyList!1086 thiss!17113 rules!1846 (t!154811 tokens!457)) lt!641697)))

(declare-fun b!1688262 () Bool)

(declare-fun e!1080769 () Bool)

(assert (=> b!1688262 (= e!1080768 e!1080769)))

(declare-fun res!756961 () Bool)

(assert (=> b!1688262 (=> (not res!756961) (not e!1080769))))

(assert (=> b!1688262 (= res!756961 (rulesProduceIndividualToken!1532 thiss!17113 rules!1846 (h!23889 (t!154811 tokens!457))))))

(declare-fun b!1688263 () Bool)

(assert (=> b!1688263 (= e!1080769 (rulesProduceEachTokenIndividuallyList!1086 thiss!17113 rules!1846 (t!154811 (t!154811 tokens!457))))))

(assert (= (and d!514350 (not res!756962)) b!1688262))

(assert (= (and b!1688262 res!756961) b!1688263))

(declare-fun m!2072947 () Bool)

(assert (=> d!514350 m!2072947))

(assert (=> d!514350 m!2069733))

(assert (=> b!1688262 m!2070843))

(declare-fun m!2072949 () Bool)

(assert (=> b!1688263 m!2072949))

(assert (=> b!1686683 d!514350))

(declare-fun d!514352 () Bool)

(assert (=> d!514352 (= (list!7432 (_2!10519 lt!641172)) (list!7436 (c!275419 (_2!10519 lt!641172))))))

(declare-fun bs!399767 () Bool)

(assert (= bs!399767 d!514352))

(declare-fun m!2072951 () Bool)

(assert (=> bs!399767 m!2072951))

(assert (=> b!1686934 d!514352))

(assert (=> b!1686934 d!514056))

(assert (=> b!1686934 d!514058))

(declare-fun d!514354 () Bool)

(assert (=> d!514354 (= (list!7431 lt!640975) (list!7434 (c!275421 lt!640975)))))

(declare-fun bs!399768 () Bool)

(assert (= bs!399768 d!514354))

(declare-fun m!2072953 () Bool)

(assert (=> bs!399768 m!2072953))

(assert (=> b!1686764 d!514354))

(declare-fun d!514356 () Bool)

(assert (=> d!514356 (= (list!7431 (seqFromList!2248 (t!154811 (t!154811 tokens!457)))) (list!7434 (c!275421 (seqFromList!2248 (t!154811 (t!154811 tokens!457))))))))

(declare-fun bs!399769 () Bool)

(assert (= bs!399769 d!514356))

(declare-fun m!2072955 () Bool)

(assert (=> bs!399769 m!2072955))

(assert (=> b!1686764 d!514356))

(declare-fun d!514358 () Bool)

(assert (=> d!514358 (= (isEmpty!11573 lt!641052) (not ((_ is Some!3567) lt!641052)))))

(assert (=> d!513634 d!514358))

(declare-fun b!1688269 () Bool)

(declare-fun e!1080774 () Bool)

(assert (=> b!1688269 (= e!1080774 (isPrefix!1513 (tail!2518 (originalCharacters!4069 (h!23889 tokens!457))) (tail!2518 (originalCharacters!4069 (h!23889 tokens!457)))))))

(declare-fun b!1688267 () Bool)

(declare-fun e!1080775 () Bool)

(assert (=> b!1688267 (= e!1080775 e!1080774)))

(declare-fun res!756964 () Bool)

(assert (=> b!1688267 (=> (not res!756964) (not e!1080774))))

(assert (=> b!1688267 (= res!756964 (not ((_ is Nil!18485) (originalCharacters!4069 (h!23889 tokens!457)))))))

(declare-fun d!514360 () Bool)

(declare-fun e!1080773 () Bool)

(assert (=> d!514360 e!1080773))

(declare-fun res!756965 () Bool)

(assert (=> d!514360 (=> res!756965 e!1080773)))

(declare-fun lt!641698 () Bool)

(assert (=> d!514360 (= res!756965 (not lt!641698))))

(assert (=> d!514360 (= lt!641698 e!1080775)))

(declare-fun res!756966 () Bool)

(assert (=> d!514360 (=> res!756966 e!1080775)))

(assert (=> d!514360 (= res!756966 ((_ is Nil!18485) (originalCharacters!4069 (h!23889 tokens!457))))))

(assert (=> d!514360 (= (isPrefix!1513 (originalCharacters!4069 (h!23889 tokens!457)) (originalCharacters!4069 (h!23889 tokens!457))) lt!641698)))

(declare-fun b!1688268 () Bool)

(declare-fun res!756963 () Bool)

(assert (=> b!1688268 (=> (not res!756963) (not e!1080774))))

(assert (=> b!1688268 (= res!756963 (= (head!3780 (originalCharacters!4069 (h!23889 tokens!457))) (head!3780 (originalCharacters!4069 (h!23889 tokens!457)))))))

(declare-fun b!1688270 () Bool)

(assert (=> b!1688270 (= e!1080773 (>= (size!14724 (originalCharacters!4069 (h!23889 tokens!457))) (size!14724 (originalCharacters!4069 (h!23889 tokens!457)))))))

(assert (= (and d!514360 (not res!756966)) b!1688267))

(assert (= (and b!1688267 res!756964) b!1688268))

(assert (= (and b!1688268 res!756963) b!1688269))

(assert (= (and d!514360 (not res!756965)) b!1688270))

(declare-fun m!2072957 () Bool)

(assert (=> b!1688269 m!2072957))

(assert (=> b!1688269 m!2072957))

(assert (=> b!1688269 m!2072957))

(assert (=> b!1688269 m!2072957))

(declare-fun m!2072959 () Bool)

(assert (=> b!1688269 m!2072959))

(declare-fun m!2072961 () Bool)

(assert (=> b!1688268 m!2072961))

(assert (=> b!1688268 m!2072961))

(assert (=> b!1688270 m!2070579))

(assert (=> b!1688270 m!2070579))

(assert (=> d!513634 d!514360))

(declare-fun d!514362 () Bool)

(assert (=> d!514362 (isPrefix!1513 (originalCharacters!4069 (h!23889 tokens!457)) (originalCharacters!4069 (h!23889 tokens!457)))))

(declare-fun lt!641701 () Unit!31839)

(declare-fun choose!10218 (List!18555 List!18555) Unit!31839)

(assert (=> d!514362 (= lt!641701 (choose!10218 (originalCharacters!4069 (h!23889 tokens!457)) (originalCharacters!4069 (h!23889 tokens!457))))))

(assert (=> d!514362 (= (lemmaIsPrefixRefl!1030 (originalCharacters!4069 (h!23889 tokens!457)) (originalCharacters!4069 (h!23889 tokens!457))) lt!641701)))

(declare-fun bs!399770 () Bool)

(assert (= bs!399770 d!514362))

(assert (=> bs!399770 m!2070585))

(declare-fun m!2072963 () Bool)

(assert (=> bs!399770 m!2072963))

(assert (=> d!513634 d!514362))

(declare-fun d!514364 () Bool)

(assert (=> d!514364 true))

(declare-fun lt!641704 () Bool)

(declare-fun lambda!68376 () Int)

(declare-fun forall!4213 (List!18557 Int) Bool)

(assert (=> d!514364 (= lt!641704 (forall!4213 rules!1846 lambda!68376))))

(declare-fun e!1080781 () Bool)

(assert (=> d!514364 (= lt!641704 e!1080781)))

(declare-fun res!756971 () Bool)

(assert (=> d!514364 (=> res!756971 e!1080781)))

(assert (=> d!514364 (= res!756971 (not ((_ is Cons!18487) rules!1846)))))

(assert (=> d!514364 (= (rulesValidInductive!1052 thiss!17113 rules!1846) lt!641704)))

(declare-fun b!1688275 () Bool)

(declare-fun e!1080780 () Bool)

(assert (=> b!1688275 (= e!1080781 e!1080780)))

(declare-fun res!756972 () Bool)

(assert (=> b!1688275 (=> (not res!756972) (not e!1080780))))

(assert (=> b!1688275 (= res!756972 (ruleValid!768 thiss!17113 (h!23888 rules!1846)))))

(declare-fun b!1688276 () Bool)

(assert (=> b!1688276 (= e!1080780 (rulesValidInductive!1052 thiss!17113 (t!154810 rules!1846)))))

(assert (= (and d!514364 (not res!756971)) b!1688275))

(assert (= (and b!1688275 res!756972) b!1688276))

(declare-fun m!2072965 () Bool)

(assert (=> d!514364 m!2072965))

(assert (=> b!1688275 m!2071673))

(assert (=> b!1688276 m!2071711))

(assert (=> d!513634 d!514364))

(assert (=> b!1686841 d!514100))

(assert (=> b!1686841 d!514102))

(assert (=> b!1686841 d!514046))

(declare-fun d!514366 () Bool)

(assert (=> d!514366 (= (get!5424 (getRuleFromTag!345 thiss!17113 rules!1846 (tag!3545 (rule!5161 lt!641264)))) (v!24897 (getRuleFromTag!345 thiss!17113 rules!1846 (tag!3545 (rule!5161 lt!641264)))))))

(assert (=> b!1687032 d!514366))

(declare-fun b!1688291 () Bool)

(declare-fun e!1080793 () Option!3571)

(assert (=> b!1688291 (= e!1080793 None!3570)))

(declare-fun b!1688292 () Bool)

(declare-fun e!1080790 () Bool)

(declare-fun e!1080791 () Bool)

(assert (=> b!1688292 (= e!1080790 e!1080791)))

(declare-fun res!756977 () Bool)

(assert (=> b!1688292 (=> (not res!756977) (not e!1080791))))

(declare-fun lt!641713 () Option!3571)

(assert (=> b!1688292 (= res!756977 (contains!3250 rules!1846 (get!5424 lt!641713)))))

(declare-fun b!1688293 () Bool)

(assert (=> b!1688293 (= e!1080791 (= (tag!3545 (get!5424 lt!641713)) (tag!3545 (rule!5161 lt!641264))))))

(declare-fun b!1688294 () Bool)

(declare-fun e!1080792 () Option!3571)

(assert (=> b!1688294 (= e!1080792 e!1080793)))

(declare-fun c!275827 () Bool)

(assert (=> b!1688294 (= c!275827 (and ((_ is Cons!18487) rules!1846) (not (= (tag!3545 (h!23888 rules!1846)) (tag!3545 (rule!5161 lt!641264))))))))

(declare-fun d!514368 () Bool)

(assert (=> d!514368 e!1080790))

(declare-fun res!756978 () Bool)

(assert (=> d!514368 (=> res!756978 e!1080790)))

(declare-fun isEmpty!11580 (Option!3571) Bool)

(assert (=> d!514368 (= res!756978 (isEmpty!11580 lt!641713))))

(assert (=> d!514368 (= lt!641713 e!1080792)))

(declare-fun c!275826 () Bool)

(assert (=> d!514368 (= c!275826 (and ((_ is Cons!18487) rules!1846) (= (tag!3545 (h!23888 rules!1846)) (tag!3545 (rule!5161 lt!641264)))))))

(assert (=> d!514368 (rulesInvariant!2553 thiss!17113 rules!1846)))

(assert (=> d!514368 (= (getRuleFromTag!345 thiss!17113 rules!1846 (tag!3545 (rule!5161 lt!641264))) lt!641713)))

(declare-fun b!1688295 () Bool)

(assert (=> b!1688295 (= e!1080792 (Some!3570 (h!23888 rules!1846)))))

(declare-fun b!1688296 () Bool)

(declare-fun lt!641711 () Unit!31839)

(declare-fun lt!641712 () Unit!31839)

(assert (=> b!1688296 (= lt!641711 lt!641712)))

(assert (=> b!1688296 (rulesInvariant!2553 thiss!17113 (t!154810 rules!1846))))

(declare-fun lemmaInvariantOnRulesThenOnTail!114 (LexerInterface!2884 Rule!6310 List!18557) Unit!31839)

(assert (=> b!1688296 (= lt!641712 (lemmaInvariantOnRulesThenOnTail!114 thiss!17113 (h!23888 rules!1846) (t!154810 rules!1846)))))

(assert (=> b!1688296 (= e!1080793 (getRuleFromTag!345 thiss!17113 (t!154810 rules!1846) (tag!3545 (rule!5161 lt!641264))))))

(assert (= (and d!514368 c!275826) b!1688295))

(assert (= (and d!514368 (not c!275826)) b!1688294))

(assert (= (and b!1688294 c!275827) b!1688296))

(assert (= (and b!1688294 (not c!275827)) b!1688291))

(assert (= (and d!514368 (not res!756978)) b!1688292))

(assert (= (and b!1688292 res!756977) b!1688293))

(declare-fun m!2072967 () Bool)

(assert (=> b!1688292 m!2072967))

(assert (=> b!1688292 m!2072967))

(declare-fun m!2072969 () Bool)

(assert (=> b!1688292 m!2072969))

(assert (=> b!1688293 m!2072967))

(declare-fun m!2072971 () Bool)

(assert (=> d!514368 m!2072971))

(assert (=> d!514368 m!2069725))

(declare-fun m!2072973 () Bool)

(assert (=> b!1688296 m!2072973))

(declare-fun m!2072975 () Bool)

(assert (=> b!1688296 m!2072975))

(declare-fun m!2072977 () Bool)

(assert (=> b!1688296 m!2072977))

(assert (=> b!1687032 d!514368))

(declare-fun b!1688299 () Bool)

(declare-fun res!756980 () Bool)

(declare-fun e!1080794 () Bool)

(assert (=> b!1688299 (=> (not res!756980) (not e!1080794))))

(declare-fun lt!641714 () List!18555)

(assert (=> b!1688299 (= res!756980 (= (size!14724 lt!641714) (+ (size!14724 (t!154808 lt!640654)) (size!14724 lt!640648))))))

(declare-fun d!514370 () Bool)

(assert (=> d!514370 e!1080794))

(declare-fun res!756979 () Bool)

(assert (=> d!514370 (=> (not res!756979) (not e!1080794))))

(assert (=> d!514370 (= res!756979 (= (content!2605 lt!641714) ((_ map or) (content!2605 (t!154808 lt!640654)) (content!2605 lt!640648))))))

(declare-fun e!1080795 () List!18555)

(assert (=> d!514370 (= lt!641714 e!1080795)))

(declare-fun c!275828 () Bool)

(assert (=> d!514370 (= c!275828 ((_ is Nil!18485) (t!154808 lt!640654)))))

(assert (=> d!514370 (= (++!5065 (t!154808 lt!640654) lt!640648) lt!641714)))

(declare-fun b!1688298 () Bool)

(assert (=> b!1688298 (= e!1080795 (Cons!18485 (h!23886 (t!154808 lt!640654)) (++!5065 (t!154808 (t!154808 lt!640654)) lt!640648)))))

(declare-fun b!1688300 () Bool)

(assert (=> b!1688300 (= e!1080794 (or (not (= lt!640648 Nil!18485)) (= lt!641714 (t!154808 lt!640654))))))

(declare-fun b!1688297 () Bool)

(assert (=> b!1688297 (= e!1080795 lt!640648)))

(assert (= (and d!514370 c!275828) b!1688297))

(assert (= (and d!514370 (not c!275828)) b!1688298))

(assert (= (and d!514370 res!756979) b!1688299))

(assert (= (and b!1688299 res!756980) b!1688300))

(declare-fun m!2072979 () Bool)

(assert (=> b!1688299 m!2072979))

(assert (=> b!1688299 m!2072155))

(assert (=> b!1688299 m!2070473))

(declare-fun m!2072981 () Bool)

(assert (=> d!514370 m!2072981))

(assert (=> d!514370 m!2071777))

(assert (=> d!514370 m!2070479))

(declare-fun m!2072983 () Bool)

(assert (=> b!1688298 m!2072983))

(assert (=> b!1686789 d!514370))

(declare-fun d!514372 () Bool)

(declare-fun lt!641715 () Int)

(assert (=> d!514372 (= lt!641715 (size!14724 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457))))))))

(assert (=> d!514372 (= lt!641715 (size!14731 (c!275419 (charsOf!1904 (h!23889 (t!154811 tokens!457))))))))

(assert (=> d!514372 (= (size!14726 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) lt!641715)))

(declare-fun bs!399771 () Bool)

(assert (= bs!399771 d!514372))

(assert (=> bs!399771 m!2069837))

(assert (=> bs!399771 m!2070335))

(assert (=> bs!399771 m!2070335))

(declare-fun m!2072985 () Bool)

(assert (=> bs!399771 m!2072985))

(declare-fun m!2072987 () Bool)

(assert (=> bs!399771 m!2072987))

(assert (=> b!1686987 d!514372))

(declare-fun bs!399772 () Bool)

(declare-fun d!514374 () Bool)

(assert (= bs!399772 (and d!514374 d!513736)))

(declare-fun lambda!68381 () Int)

(assert (=> bs!399772 (= lambda!68381 lambda!68344)))

(declare-fun lambda!68382 () Int)

(declare-fun forall!4214 (List!18563 Int) Bool)

(assert (=> d!514374 (forall!4214 (map!3805 rules!1846 lambda!68381) lambda!68382)))

(declare-fun lt!641720 () Unit!31839)

(declare-fun e!1080798 () Unit!31839)

(assert (=> d!514374 (= lt!641720 e!1080798)))

(declare-fun c!275831 () Bool)

(assert (=> d!514374 (= c!275831 ((_ is Nil!18487) rules!1846))))

(assert (=> d!514374 (rulesValidInductive!1052 thiss!17113 rules!1846)))

(assert (=> d!514374 (= (lemma!298 rules!1846 thiss!17113 rules!1846) lt!641720)))

(declare-fun b!1688305 () Bool)

(declare-fun Unit!31884 () Unit!31839)

(assert (=> b!1688305 (= e!1080798 Unit!31884)))

(declare-fun b!1688306 () Bool)

(declare-fun Unit!31885 () Unit!31839)

(assert (=> b!1688306 (= e!1080798 Unit!31885)))

(declare-fun lt!641721 () Unit!31839)

(assert (=> b!1688306 (= lt!641721 (lemma!298 rules!1846 thiss!17113 (t!154810 rules!1846)))))

(assert (= (and d!514374 c!275831) b!1688305))

(assert (= (and d!514374 (not c!275831)) b!1688306))

(declare-fun m!2072989 () Bool)

(assert (=> d!514374 m!2072989))

(assert (=> d!514374 m!2072989))

(declare-fun m!2072991 () Bool)

(assert (=> d!514374 m!2072991))

(assert (=> d!514374 m!2070101))

(declare-fun m!2072993 () Bool)

(assert (=> b!1688306 m!2072993))

(assert (=> d!513736 d!514374))

(declare-fun bs!399773 () Bool)

(declare-fun d!514376 () Bool)

(assert (= bs!399773 (and d!514376 d!514374)))

(declare-fun lambda!68385 () Int)

(assert (=> bs!399773 (= lambda!68385 lambda!68382)))

(declare-fun b!1688327 () Bool)

(declare-fun e!1080812 () Bool)

(declare-fun isEmpty!11581 (List!18563) Bool)

(assert (=> b!1688327 (= e!1080812 (isEmpty!11581 (t!154858 (map!3805 rules!1846 lambda!68344))))))

(declare-fun b!1688328 () Bool)

(declare-fun e!1080811 () Bool)

(declare-fun lt!641724 () Regex!4583)

(declare-fun isUnion!85 (Regex!4583) Bool)

(assert (=> b!1688328 (= e!1080811 (isUnion!85 lt!641724))))

(declare-fun b!1688329 () Bool)

(declare-fun e!1080814 () Regex!4583)

(declare-fun e!1080813 () Regex!4583)

(assert (=> b!1688329 (= e!1080814 e!1080813)))

(declare-fun c!275843 () Bool)

(assert (=> b!1688329 (= c!275843 ((_ is Cons!18493) (map!3805 rules!1846 lambda!68344)))))

(declare-fun b!1688330 () Bool)

(declare-fun e!1080815 () Bool)

(declare-fun e!1080816 () Bool)

(assert (=> b!1688330 (= e!1080815 e!1080816)))

(declare-fun c!275841 () Bool)

(assert (=> b!1688330 (= c!275841 (isEmpty!11581 (map!3805 rules!1846 lambda!68344)))))

(declare-fun b!1688331 () Bool)

(assert (=> b!1688331 (= e!1080814 (h!23894 (map!3805 rules!1846 lambda!68344)))))

(declare-fun b!1688332 () Bool)

(declare-fun isEmptyLang!85 (Regex!4583) Bool)

(assert (=> b!1688332 (= e!1080816 (isEmptyLang!85 lt!641724))))

(declare-fun b!1688333 () Bool)

(assert (=> b!1688333 (= e!1080813 EmptyLang!4583)))

(declare-fun b!1688334 () Bool)

(declare-fun head!3786 (List!18563) Regex!4583)

(assert (=> b!1688334 (= e!1080811 (= lt!641724 (head!3786 (map!3805 rules!1846 lambda!68344))))))

(declare-fun b!1688335 () Bool)

(assert (=> b!1688335 (= e!1080816 e!1080811)))

(declare-fun c!275842 () Bool)

(declare-fun tail!2521 (List!18563) List!18563)

(assert (=> b!1688335 (= c!275842 (isEmpty!11581 (tail!2521 (map!3805 rules!1846 lambda!68344))))))

(declare-fun b!1688336 () Bool)

(assert (=> b!1688336 (= e!1080813 (Union!4583 (h!23894 (map!3805 rules!1846 lambda!68344)) (generalisedUnion!306 (t!154858 (map!3805 rules!1846 lambda!68344)))))))

(assert (=> d!514376 e!1080815))

(declare-fun res!756986 () Bool)

(assert (=> d!514376 (=> (not res!756986) (not e!1080815))))

(assert (=> d!514376 (= res!756986 (validRegex!1842 lt!641724))))

(assert (=> d!514376 (= lt!641724 e!1080814)))

(declare-fun c!275840 () Bool)

(assert (=> d!514376 (= c!275840 e!1080812)))

(declare-fun res!756985 () Bool)

(assert (=> d!514376 (=> (not res!756985) (not e!1080812))))

(assert (=> d!514376 (= res!756985 ((_ is Cons!18493) (map!3805 rules!1846 lambda!68344)))))

(assert (=> d!514376 (forall!4214 (map!3805 rules!1846 lambda!68344) lambda!68385)))

(assert (=> d!514376 (= (generalisedUnion!306 (map!3805 rules!1846 lambda!68344)) lt!641724)))

(assert (= (and d!514376 res!756985) b!1688327))

(assert (= (and d!514376 c!275840) b!1688331))

(assert (= (and d!514376 (not c!275840)) b!1688329))

(assert (= (and b!1688329 c!275843) b!1688336))

(assert (= (and b!1688329 (not c!275843)) b!1688333))

(assert (= (and d!514376 res!756986) b!1688330))

(assert (= (and b!1688330 c!275841) b!1688332))

(assert (= (and b!1688330 (not c!275841)) b!1688335))

(assert (= (and b!1688335 c!275842) b!1688334))

(assert (= (and b!1688335 (not c!275842)) b!1688328))

(declare-fun m!2072995 () Bool)

(assert (=> b!1688328 m!2072995))

(assert (=> b!1688334 m!2070979))

(declare-fun m!2072997 () Bool)

(assert (=> b!1688334 m!2072997))

(declare-fun m!2072999 () Bool)

(assert (=> b!1688327 m!2072999))

(assert (=> b!1688335 m!2070979))

(declare-fun m!2073001 () Bool)

(assert (=> b!1688335 m!2073001))

(assert (=> b!1688335 m!2073001))

(declare-fun m!2073003 () Bool)

(assert (=> b!1688335 m!2073003))

(assert (=> b!1688330 m!2070979))

(declare-fun m!2073005 () Bool)

(assert (=> b!1688330 m!2073005))

(declare-fun m!2073007 () Bool)

(assert (=> d!514376 m!2073007))

(assert (=> d!514376 m!2070979))

(declare-fun m!2073009 () Bool)

(assert (=> d!514376 m!2073009))

(declare-fun m!2073011 () Bool)

(assert (=> b!1688336 m!2073011))

(declare-fun m!2073013 () Bool)

(assert (=> b!1688332 m!2073013))

(assert (=> d!513736 d!514376))

(declare-fun d!514378 () Bool)

(declare-fun lt!641727 () List!18563)

(declare-fun size!14735 (List!18563) Int)

(declare-fun size!14736 (List!18557) Int)

(assert (=> d!514378 (= (size!14735 lt!641727) (size!14736 rules!1846))))

(declare-fun e!1080819 () List!18563)

(assert (=> d!514378 (= lt!641727 e!1080819)))

(declare-fun c!275846 () Bool)

(assert (=> d!514378 (= c!275846 ((_ is Nil!18487) rules!1846))))

(assert (=> d!514378 (= (map!3805 rules!1846 lambda!68344) lt!641727)))

(declare-fun b!1688341 () Bool)

(assert (=> b!1688341 (= e!1080819 Nil!18493)))

(declare-fun b!1688342 () Bool)

(declare-fun $colon$colon!410 (List!18563 Regex!4583) List!18563)

(declare-fun dynLambda!8392 (Int Rule!6310) Regex!4583)

(assert (=> b!1688342 (= e!1080819 ($colon$colon!410 (map!3805 (t!154810 rules!1846) lambda!68344) (dynLambda!8392 lambda!68344 (h!23888 rules!1846))))))

(assert (= (and d!514378 c!275846) b!1688341))

(assert (= (and d!514378 (not c!275846)) b!1688342))

(declare-fun b_lambda!53085 () Bool)

(assert (=> (not b_lambda!53085) (not b!1688342)))

(declare-fun m!2073015 () Bool)

(assert (=> d!514378 m!2073015))

(declare-fun m!2073017 () Bool)

(assert (=> d!514378 m!2073017))

(declare-fun m!2073019 () Bool)

(assert (=> b!1688342 m!2073019))

(declare-fun m!2073021 () Bool)

(assert (=> b!1688342 m!2073021))

(assert (=> b!1688342 m!2073019))

(assert (=> b!1688342 m!2073021))

(declare-fun m!2073023 () Bool)

(assert (=> b!1688342 m!2073023))

(assert (=> d!513736 d!514378))

(assert (=> b!1687020 d!514108))

(assert (=> b!1687020 d!514110))

(assert (=> b!1687020 d!514112))

(assert (=> b!1687020 d!514016))

(assert (=> b!1687020 d!514114))

(assert (=> b!1686931 d!513652))

(assert (=> b!1686931 d!513740))

(assert (=> b!1686931 d!514372))

(declare-fun d!514380 () Bool)

(assert (=> d!514380 (rulesProduceIndividualToken!1532 thiss!17113 rules!1846 (h!23889 tokens!457))))

(declare-fun lt!641878 () Unit!31839)

(declare-fun choose!10219 (LexerInterface!2884 List!18557 List!18558 Token!6076) Unit!31839)

(assert (=> d!514380 (= lt!641878 (choose!10219 thiss!17113 rules!1846 tokens!457 (h!23889 tokens!457)))))

(assert (=> d!514380 (not (isEmpty!11563 rules!1846))))

(assert (=> d!514380 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!642 thiss!17113 rules!1846 tokens!457 (h!23889 tokens!457)) lt!641878)))

(declare-fun bs!399778 () Bool)

(assert (= bs!399778 d!514380))

(assert (=> bs!399778 m!2069785))

(declare-fun m!2073291 () Bool)

(assert (=> bs!399778 m!2073291))

(assert (=> bs!399778 m!2069733))

(assert (=> b!1686931 d!514380))

(assert (=> b!1686931 d!513738))

(declare-fun d!514404 () Bool)

(declare-fun lt!641880 () Bool)

(declare-fun e!1080871 () Bool)

(assert (=> d!514404 (= lt!641880 e!1080871)))

(declare-fun res!757029 () Bool)

(assert (=> d!514404 (=> (not res!757029) (not e!1080871))))

(assert (=> d!514404 (= res!757029 (= (list!7431 (_1!10519 (lex!1368 thiss!17113 rules!1846 (print!1415 thiss!17113 (singletonSeq!1778 (h!23889 (t!154811 tokens!457))))))) (list!7431 (singletonSeq!1778 (h!23889 (t!154811 tokens!457))))))))

(declare-fun e!1080872 () Bool)

(assert (=> d!514404 (= lt!641880 e!1080872)))

(declare-fun res!757028 () Bool)

(assert (=> d!514404 (=> (not res!757028) (not e!1080872))))

(declare-fun lt!641881 () tuple2!18234)

(assert (=> d!514404 (= res!757028 (= (size!14725 (_1!10519 lt!641881)) 1))))

(assert (=> d!514404 (= lt!641881 (lex!1368 thiss!17113 rules!1846 (print!1415 thiss!17113 (singletonSeq!1778 (h!23889 (t!154811 tokens!457))))))))

(assert (=> d!514404 (not (isEmpty!11563 rules!1846))))

(assert (=> d!514404 (= (rulesProduceIndividualToken!1532 thiss!17113 rules!1846 (h!23889 (t!154811 tokens!457))) lt!641880)))

(declare-fun b!1688414 () Bool)

(declare-fun res!757030 () Bool)

(assert (=> b!1688414 (=> (not res!757030) (not e!1080872))))

(assert (=> b!1688414 (= res!757030 (= (apply!5040 (_1!10519 lt!641881) 0) (h!23889 (t!154811 tokens!457))))))

(declare-fun b!1688416 () Bool)

(assert (=> b!1688416 (= e!1080872 (isEmpty!11570 (_2!10519 lt!641881)))))

(declare-fun b!1688418 () Bool)

(assert (=> b!1688418 (= e!1080871 (isEmpty!11570 (_2!10519 (lex!1368 thiss!17113 rules!1846 (print!1415 thiss!17113 (singletonSeq!1778 (h!23889 (t!154811 tokens!457))))))))))

(assert (= (and d!514404 res!757028) b!1688414))

(assert (= (and b!1688414 res!757030) b!1688416))

(assert (= (and d!514404 res!757029) b!1688418))

(declare-fun m!2073301 () Bool)

(assert (=> d!514404 m!2073301))

(assert (=> d!514404 m!2070351))

(declare-fun m!2073303 () Bool)

(assert (=> d!514404 m!2073303))

(assert (=> d!514404 m!2069733))

(declare-fun m!2073305 () Bool)

(assert (=> d!514404 m!2073305))

(assert (=> d!514404 m!2070351))

(assert (=> d!514404 m!2070353))

(declare-fun m!2073307 () Bool)

(assert (=> d!514404 m!2073307))

(assert (=> d!514404 m!2070351))

(assert (=> d!514404 m!2070353))

(declare-fun m!2073309 () Bool)

(assert (=> b!1688414 m!2073309))

(declare-fun m!2073311 () Bool)

(assert (=> b!1688416 m!2073311))

(assert (=> b!1688418 m!2070351))

(assert (=> b!1688418 m!2070351))

(assert (=> b!1688418 m!2070353))

(assert (=> b!1688418 m!2070353))

(assert (=> b!1688418 m!2073307))

(declare-fun m!2073313 () Bool)

(assert (=> b!1688418 m!2073313))

(assert (=> b!1686931 d!514404))

(declare-fun d!514412 () Bool)

(assert (=> d!514412 (rulesProduceIndividualToken!1532 thiss!17113 rules!1846 (h!23889 (t!154811 tokens!457)))))

(declare-fun lt!641882 () Unit!31839)

(assert (=> d!514412 (= lt!641882 (choose!10219 thiss!17113 rules!1846 tokens!457 (h!23889 (t!154811 tokens!457))))))

(assert (=> d!514412 (not (isEmpty!11563 rules!1846))))

(assert (=> d!514412 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!642 thiss!17113 rules!1846 tokens!457 (h!23889 (t!154811 tokens!457))) lt!641882)))

(declare-fun bs!399781 () Bool)

(assert (= bs!399781 d!514412))

(assert (=> bs!399781 m!2070843))

(declare-fun m!2073317 () Bool)

(assert (=> bs!399781 m!2073317))

(assert (=> bs!399781 m!2069733))

(assert (=> b!1686931 d!514412))

(declare-fun b!1688455 () Bool)

(declare-fun res!757060 () Bool)

(declare-fun e!1080893 () Bool)

(assert (=> b!1688455 (=> (not res!757060) (not e!1080893))))

(assert (=> b!1688455 (= res!757060 (isBalanced!1928 (left!14776 (prepend!852 (c!275421 (seqFromList!2248 (t!154811 (t!154811 tokens!457)))) (h!23889 (t!154811 tokens!457))))))))

(declare-fun b!1688456 () Bool)

(assert (=> b!1688456 (= e!1080893 (not (isEmpty!11575 (right!15106 (prepend!852 (c!275421 (seqFromList!2248 (t!154811 (t!154811 tokens!457)))) (h!23889 (t!154811 tokens!457)))))))))

(declare-fun d!514416 () Bool)

(declare-fun res!757058 () Bool)

(declare-fun e!1080892 () Bool)

(assert (=> d!514416 (=> res!757058 e!1080892)))

(assert (=> d!514416 (= res!757058 (not ((_ is Node!6159) (prepend!852 (c!275421 (seqFromList!2248 (t!154811 (t!154811 tokens!457)))) (h!23889 (t!154811 tokens!457))))))))

(assert (=> d!514416 (= (isBalanced!1928 (prepend!852 (c!275421 (seqFromList!2248 (t!154811 (t!154811 tokens!457)))) (h!23889 (t!154811 tokens!457)))) e!1080892)))

(declare-fun b!1688457 () Bool)

(assert (=> b!1688457 (= e!1080892 e!1080893)))

(declare-fun res!757061 () Bool)

(assert (=> b!1688457 (=> (not res!757061) (not e!1080893))))

(declare-fun height!989 (Conc!6159) Int)

(assert (=> b!1688457 (= res!757061 (<= (- 1) (- (height!989 (left!14776 (prepend!852 (c!275421 (seqFromList!2248 (t!154811 (t!154811 tokens!457)))) (h!23889 (t!154811 tokens!457))))) (height!989 (right!15106 (prepend!852 (c!275421 (seqFromList!2248 (t!154811 (t!154811 tokens!457)))) (h!23889 (t!154811 tokens!457))))))))))

(declare-fun b!1688458 () Bool)

(declare-fun res!757057 () Bool)

(assert (=> b!1688458 (=> (not res!757057) (not e!1080893))))

(assert (=> b!1688458 (= res!757057 (isBalanced!1928 (right!15106 (prepend!852 (c!275421 (seqFromList!2248 (t!154811 (t!154811 tokens!457)))) (h!23889 (t!154811 tokens!457))))))))

(declare-fun b!1688459 () Bool)

(declare-fun res!757062 () Bool)

(assert (=> b!1688459 (=> (not res!757062) (not e!1080893))))

(assert (=> b!1688459 (= res!757062 (not (isEmpty!11575 (left!14776 (prepend!852 (c!275421 (seqFromList!2248 (t!154811 (t!154811 tokens!457)))) (h!23889 (t!154811 tokens!457)))))))))

(declare-fun b!1688460 () Bool)

(declare-fun res!757059 () Bool)

(assert (=> b!1688460 (=> (not res!757059) (not e!1080893))))

(assert (=> b!1688460 (= res!757059 (<= (- (height!989 (left!14776 (prepend!852 (c!275421 (seqFromList!2248 (t!154811 (t!154811 tokens!457)))) (h!23889 (t!154811 tokens!457))))) (height!989 (right!15106 (prepend!852 (c!275421 (seqFromList!2248 (t!154811 (t!154811 tokens!457)))) (h!23889 (t!154811 tokens!457)))))) 1))))

(assert (= (and d!514416 (not res!757058)) b!1688457))

(assert (= (and b!1688457 res!757061) b!1688460))

(assert (= (and b!1688460 res!757059) b!1688455))

(assert (= (and b!1688455 res!757060) b!1688458))

(assert (= (and b!1688458 res!757057) b!1688459))

(assert (= (and b!1688459 res!757062) b!1688456))

(declare-fun m!2073353 () Bool)

(assert (=> b!1688455 m!2073353))

(declare-fun m!2073357 () Bool)

(assert (=> b!1688457 m!2073357))

(declare-fun m!2073359 () Bool)

(assert (=> b!1688457 m!2073359))

(declare-fun m!2073361 () Bool)

(assert (=> b!1688458 m!2073361))

(declare-fun m!2073365 () Bool)

(assert (=> b!1688459 m!2073365))

(declare-fun m!2073367 () Bool)

(assert (=> b!1688456 m!2073367))

(assert (=> b!1688460 m!2073357))

(assert (=> b!1688460 m!2073359))

(assert (=> d!513614 d!514416))

(declare-fun d!514426 () Bool)

(declare-fun e!1080905 () Bool)

(assert (=> d!514426 e!1080905))

(declare-fun res!757074 () Bool)

(assert (=> d!514426 (=> (not res!757074) (not e!1080905))))

(declare-fun lt!641904 () Conc!6159)

(assert (=> d!514426 (= res!757074 (isBalanced!1928 lt!641904))))

(declare-fun ++!5072 (Conc!6159 Conc!6159) Conc!6159)

(declare-fun fill!118 (Int Token!6076) IArray!12323)

(assert (=> d!514426 (= lt!641904 (++!5072 (Leaf!9007 (fill!118 1 (h!23889 (t!154811 tokens!457))) 1) (c!275421 (seqFromList!2248 (t!154811 (t!154811 tokens!457))))))))

(assert (=> d!514426 (isBalanced!1928 (c!275421 (seqFromList!2248 (t!154811 (t!154811 tokens!457)))))))

(assert (=> d!514426 (= (prepend!852 (c!275421 (seqFromList!2248 (t!154811 (t!154811 tokens!457)))) (h!23889 (t!154811 tokens!457))) lt!641904)))

(declare-fun b!1688475 () Bool)

(assert (=> b!1688475 (= e!1080905 (= (list!7434 lt!641904) (Cons!18488 (h!23889 (t!154811 tokens!457)) (list!7434 (c!275421 (seqFromList!2248 (t!154811 (t!154811 tokens!457))))))))))

(assert (= (and d!514426 res!757074) b!1688475))

(declare-fun m!2073437 () Bool)

(assert (=> d!514426 m!2073437))

(declare-fun m!2073441 () Bool)

(assert (=> d!514426 m!2073441))

(declare-fun m!2073445 () Bool)

(assert (=> d!514426 m!2073445))

(declare-fun m!2073449 () Bool)

(assert (=> d!514426 m!2073449))

(declare-fun m!2073451 () Bool)

(assert (=> b!1688475 m!2073451))

(assert (=> b!1688475 m!2072955))

(assert (=> d!513614 d!514426))

(declare-fun d!514452 () Bool)

(assert (=> d!514452 (= (head!3780 (list!7432 lt!640656)) (h!23886 (list!7432 lt!640656)))))

(assert (=> d!513700 d!514452))

(assert (=> d!513700 d!513680))

(declare-fun d!514454 () Bool)

(declare-fun lt!641907 () C!9340)

(assert (=> d!514454 (= lt!641907 (head!3780 (list!7436 (c!275419 lt!640656))))))

(declare-fun e!1080908 () C!9340)

(assert (=> d!514454 (= lt!641907 e!1080908)))

(declare-fun c!275871 () Bool)

(assert (=> d!514454 (= c!275871 ((_ is Leaf!9006) (c!275419 lt!640656)))))

(assert (=> d!514454 (isBalanced!1930 (c!275419 lt!640656))))

(assert (=> d!514454 (= (head!3784 (c!275419 lt!640656)) lt!641907)))

(declare-fun b!1688480 () Bool)

(declare-fun apply!5048 (IArray!12321 Int) C!9340)

(assert (=> b!1688480 (= e!1080908 (apply!5048 (xs!9018 (c!275419 lt!640656)) 0))))

(declare-fun b!1688481 () Bool)

(assert (=> b!1688481 (= e!1080908 (head!3784 (left!14775 (c!275419 lt!640656))))))

(assert (= (and d!514454 c!275871) b!1688480))

(assert (= (and d!514454 (not c!275871)) b!1688481))

(assert (=> d!514454 m!2070805))

(assert (=> d!514454 m!2070805))

(declare-fun m!2073453 () Bool)

(assert (=> d!514454 m!2073453))

(declare-fun m!2073455 () Bool)

(assert (=> d!514454 m!2073455))

(declare-fun m!2073457 () Bool)

(assert (=> b!1688480 m!2073457))

(declare-fun m!2073459 () Bool)

(assert (=> b!1688481 m!2073459))

(assert (=> d!513700 d!514454))

(declare-fun d!514456 () Bool)

(declare-fun lt!641908 () Bool)

(assert (=> d!514456 (= lt!641908 (isEmpty!11569 (list!7432 lt!640656)))))

(assert (=> d!514456 (= lt!641908 (isEmpty!11577 (c!275419 lt!640656)))))

(assert (=> d!514456 (= (isEmpty!11570 lt!640656) lt!641908)))

(declare-fun bs!399788 () Bool)

(assert (= bs!399788 d!514456))

(assert (=> bs!399788 m!2069747))

(assert (=> bs!399788 m!2069747))

(declare-fun m!2073461 () Bool)

(assert (=> bs!399788 m!2073461))

(declare-fun m!2073463 () Bool)

(assert (=> bs!399788 m!2073463))

(assert (=> d!513700 d!514456))

(declare-fun bs!399789 () Bool)

(declare-fun d!514458 () Bool)

(assert (= bs!399789 (and d!514458 d!514364)))

(declare-fun lambda!68391 () Int)

(assert (=> bs!399789 (= lambda!68391 lambda!68376)))

(assert (=> d!514458 true))

(declare-fun lt!641911 () Bool)

(assert (=> d!514458 (= lt!641911 (rulesValidInductive!1052 thiss!17113 rules!1846))))

(assert (=> d!514458 (= lt!641911 (forall!4213 rules!1846 lambda!68391))))

(assert (=> d!514458 (= (rulesValid!1205 thiss!17113 rules!1846) lt!641911)))

(declare-fun bs!399790 () Bool)

(assert (= bs!399790 d!514458))

(assert (=> bs!399790 m!2070101))

(declare-fun m!2073465 () Bool)

(assert (=> bs!399790 m!2073465))

(assert (=> d!513610 d!514458))

(declare-fun d!514460 () Bool)

(declare-fun e!1080909 () Bool)

(assert (=> d!514460 e!1080909))

(declare-fun res!757075 () Bool)

(assert (=> d!514460 (=> (not res!757075) (not e!1080909))))

(declare-fun lt!641912 () BalanceConc!12262)

(assert (=> d!514460 (= res!757075 (= (list!7431 lt!641912) (t!154811 tokens!457)))))

(assert (=> d!514460 (= lt!641912 (BalanceConc!12263 (fromList!423 (t!154811 tokens!457))))))

(assert (=> d!514460 (= (fromListB!1031 (t!154811 tokens!457)) lt!641912)))

(declare-fun b!1688482 () Bool)

(assert (=> b!1688482 (= e!1080909 (isBalanced!1928 (fromList!423 (t!154811 tokens!457))))))

(assert (= (and d!514460 res!757075) b!1688482))

(declare-fun m!2073467 () Bool)

(assert (=> d!514460 m!2073467))

(declare-fun m!2073469 () Bool)

(assert (=> d!514460 m!2073469))

(assert (=> b!1688482 m!2073469))

(assert (=> b!1688482 m!2073469))

(declare-fun m!2073471 () Bool)

(assert (=> b!1688482 m!2073471))

(assert (=> d!513692 d!514460))

(declare-fun b!1688483 () Bool)

(declare-fun e!1080910 () List!18555)

(assert (=> b!1688483 (= e!1080910 Nil!18485)))

(declare-fun d!514462 () Bool)

(declare-fun c!275872 () Bool)

(assert (=> d!514462 (= c!275872 ((_ is Empty!6158) (c!275419 lt!640656)))))

(assert (=> d!514462 (= (list!7436 (c!275419 lt!640656)) e!1080910)))

(declare-fun b!1688486 () Bool)

(declare-fun e!1080911 () List!18555)

(assert (=> b!1688486 (= e!1080911 (++!5065 (list!7436 (left!14775 (c!275419 lt!640656))) (list!7436 (right!15105 (c!275419 lt!640656)))))))

(declare-fun b!1688484 () Bool)

(assert (=> b!1688484 (= e!1080910 e!1080911)))

(declare-fun c!275873 () Bool)

(assert (=> b!1688484 (= c!275873 ((_ is Leaf!9006) (c!275419 lt!640656)))))

(declare-fun b!1688485 () Bool)

(assert (=> b!1688485 (= e!1080911 (list!7439 (xs!9018 (c!275419 lt!640656))))))

(assert (= (and d!514462 c!275872) b!1688483))

(assert (= (and d!514462 (not c!275872)) b!1688484))

(assert (= (and b!1688484 c!275873) b!1688485))

(assert (= (and b!1688484 (not c!275873)) b!1688486))

(declare-fun m!2073473 () Bool)

(assert (=> b!1688486 m!2073473))

(declare-fun m!2073475 () Bool)

(assert (=> b!1688486 m!2073475))

(assert (=> b!1688486 m!2073473))

(assert (=> b!1688486 m!2073475))

(declare-fun m!2073477 () Bool)

(assert (=> b!1688486 m!2073477))

(declare-fun m!2073479 () Bool)

(assert (=> b!1688485 m!2073479))

(assert (=> d!513680 d!514462))

(declare-fun d!514464 () Bool)

(declare-fun lt!641915 () Bool)

(declare-fun content!2610 (List!18557) (InoxSet Rule!6310))

(assert (=> d!514464 (= lt!641915 (select (content!2610 rules!1846) (rule!5161 (_1!10520 (get!5420 lt!641105)))))))

(declare-fun e!1080916 () Bool)

(assert (=> d!514464 (= lt!641915 e!1080916)))

(declare-fun res!757080 () Bool)

(assert (=> d!514464 (=> (not res!757080) (not e!1080916))))

(assert (=> d!514464 (= res!757080 ((_ is Cons!18487) rules!1846))))

(assert (=> d!514464 (= (contains!3250 rules!1846 (rule!5161 (_1!10520 (get!5420 lt!641105)))) lt!641915)))

(declare-fun b!1688491 () Bool)

(declare-fun e!1080917 () Bool)

(assert (=> b!1688491 (= e!1080916 e!1080917)))

(declare-fun res!757081 () Bool)

(assert (=> b!1688491 (=> res!757081 e!1080917)))

(assert (=> b!1688491 (= res!757081 (= (h!23888 rules!1846) (rule!5161 (_1!10520 (get!5420 lt!641105)))))))

(declare-fun b!1688492 () Bool)

(assert (=> b!1688492 (= e!1080917 (contains!3250 (t!154810 rules!1846) (rule!5161 (_1!10520 (get!5420 lt!641105)))))))

(assert (= (and d!514464 res!757080) b!1688491))

(assert (= (and b!1688491 (not res!757081)) b!1688492))

(declare-fun m!2073481 () Bool)

(assert (=> d!514464 m!2073481))

(declare-fun m!2073483 () Bool)

(assert (=> d!514464 m!2073483))

(declare-fun m!2073485 () Bool)

(assert (=> b!1688492 m!2073485))

(assert (=> b!1686878 d!514464))

(assert (=> b!1686878 d!514280))

(declare-fun d!514466 () Bool)

(assert (=> d!514466 (= (list!7432 (_2!10519 lt!641139)) (list!7436 (c!275419 (_2!10519 lt!641139))))))

(declare-fun bs!399791 () Bool)

(assert (= bs!399791 d!514466))

(declare-fun m!2073487 () Bool)

(assert (=> bs!399791 m!2073487))

(assert (=> b!1686918 d!514466))

(assert (=> b!1686918 d!514154))

(assert (=> b!1686918 d!513680))

(declare-fun d!514468 () Bool)

(declare-fun c!275876 () Bool)

(assert (=> d!514468 (= c!275876 ((_ is Node!6158) (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (value!102440 (h!23889 tokens!457))))))))

(declare-fun e!1080922 () Bool)

(assert (=> d!514468 (= (inv!23853 (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (value!102440 (h!23889 tokens!457))))) e!1080922)))

(declare-fun b!1688499 () Bool)

(declare-fun inv!23857 (Conc!6158) Bool)

(assert (=> b!1688499 (= e!1080922 (inv!23857 (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (value!102440 (h!23889 tokens!457))))))))

(declare-fun b!1688500 () Bool)

(declare-fun e!1080923 () Bool)

(assert (=> b!1688500 (= e!1080922 e!1080923)))

(declare-fun res!757084 () Bool)

(assert (=> b!1688500 (= res!757084 (not ((_ is Leaf!9006) (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (value!102440 (h!23889 tokens!457)))))))))

(assert (=> b!1688500 (=> res!757084 e!1080923)))

(declare-fun b!1688501 () Bool)

(declare-fun inv!23858 (Conc!6158) Bool)

(assert (=> b!1688501 (= e!1080923 (inv!23858 (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (value!102440 (h!23889 tokens!457))))))))

(assert (= (and d!514468 c!275876) b!1688499))

(assert (= (and d!514468 (not c!275876)) b!1688500))

(assert (= (and b!1688500 (not res!757084)) b!1688501))

(declare-fun m!2073489 () Bool)

(assert (=> b!1688499 m!2073489))

(declare-fun m!2073491 () Bool)

(assert (=> b!1688501 m!2073491))

(assert (=> b!1686875 d!514468))

(declare-fun b!1688502 () Bool)

(declare-fun e!1080927 () Bool)

(declare-fun e!1080926 () Bool)

(assert (=> b!1688502 (= e!1080927 e!1080926)))

(declare-fun c!275878 () Bool)

(assert (=> b!1688502 (= c!275878 ((_ is EmptyLang!4583) (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641057))))))))

(declare-fun b!1688503 () Bool)

(declare-fun e!1080930 () Bool)

(declare-fun e!1080928 () Bool)

(assert (=> b!1688503 (= e!1080930 e!1080928)))

(declare-fun res!757085 () Bool)

(assert (=> b!1688503 (=> (not res!757085) (not e!1080928))))

(declare-fun lt!641916 () Bool)

(assert (=> b!1688503 (= res!757085 (not lt!641916))))

(declare-fun b!1688504 () Bool)

(declare-fun call!107966 () Bool)

(assert (=> b!1688504 (= e!1080927 (= lt!641916 call!107966))))

(declare-fun b!1688505 () Bool)

(declare-fun e!1080929 () Bool)

(assert (=> b!1688505 (= e!1080929 (not (= (head!3780 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641057))))) (c!275420 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641057))))))))))

(declare-fun b!1688506 () Bool)

(declare-fun res!757089 () Bool)

(declare-fun e!1080925 () Bool)

(assert (=> b!1688506 (=> (not res!757089) (not e!1080925))))

(assert (=> b!1688506 (= res!757089 (isEmpty!11569 (tail!2518 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641057)))))))))

(declare-fun b!1688507 () Bool)

(declare-fun res!757090 () Bool)

(assert (=> b!1688507 (=> res!757090 e!1080930)))

(assert (=> b!1688507 (= res!757090 (not ((_ is ElementMatch!4583) (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641057)))))))))

(assert (=> b!1688507 (= e!1080926 e!1080930)))

(declare-fun b!1688508 () Bool)

(assert (=> b!1688508 (= e!1080928 e!1080929)))

(declare-fun res!757087 () Bool)

(assert (=> b!1688508 (=> res!757087 e!1080929)))

(assert (=> b!1688508 (= res!757087 call!107966)))

(declare-fun b!1688509 () Bool)

(assert (=> b!1688509 (= e!1080925 (= (head!3780 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641057))))) (c!275420 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641057)))))))))

(declare-fun b!1688510 () Bool)

(declare-fun res!757086 () Bool)

(assert (=> b!1688510 (=> res!757086 e!1080929)))

(assert (=> b!1688510 (= res!757086 (not (isEmpty!11569 (tail!2518 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641057))))))))))

(declare-fun d!514470 () Bool)

(assert (=> d!514470 e!1080927))

(declare-fun c!275877 () Bool)

(assert (=> d!514470 (= c!275877 ((_ is EmptyExpr!4583) (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641057))))))))

(declare-fun e!1080924 () Bool)

(assert (=> d!514470 (= lt!641916 e!1080924)))

(declare-fun c!275879 () Bool)

(assert (=> d!514470 (= c!275879 (isEmpty!11569 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641057))))))))

(assert (=> d!514470 (validRegex!1842 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641057)))))))

(assert (=> d!514470 (= (matchR!2072 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641057)))) (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641057))))) lt!641916)))

(declare-fun b!1688511 () Bool)

(assert (=> b!1688511 (= e!1080924 (matchR!2072 (derivativeStep!1140 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641057)))) (head!3780 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641057)))))) (tail!2518 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641057)))))))))

(declare-fun b!1688512 () Bool)

(declare-fun res!757091 () Bool)

(assert (=> b!1688512 (=> res!757091 e!1080930)))

(assert (=> b!1688512 (= res!757091 e!1080925)))

(declare-fun res!757088 () Bool)

(assert (=> b!1688512 (=> (not res!757088) (not e!1080925))))

(assert (=> b!1688512 (= res!757088 lt!641916)))

(declare-fun bm!107961 () Bool)

(assert (=> bm!107961 (= call!107966 (isEmpty!11569 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641057))))))))

(declare-fun b!1688513 () Bool)

(declare-fun res!757092 () Bool)

(assert (=> b!1688513 (=> (not res!757092) (not e!1080925))))

(assert (=> b!1688513 (= res!757092 (not call!107966))))

(declare-fun b!1688514 () Bool)

(assert (=> b!1688514 (= e!1080926 (not lt!641916))))

(declare-fun b!1688515 () Bool)

(assert (=> b!1688515 (= e!1080924 (nullable!1369 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641057))))))))

(assert (= (and d!514470 c!275879) b!1688515))

(assert (= (and d!514470 (not c!275879)) b!1688511))

(assert (= (and d!514470 c!275877) b!1688504))

(assert (= (and d!514470 (not c!275877)) b!1688502))

(assert (= (and b!1688502 c!275878) b!1688514))

(assert (= (and b!1688502 (not c!275878)) b!1688507))

(assert (= (and b!1688507 (not res!757090)) b!1688512))

(assert (= (and b!1688512 res!757088) b!1688513))

(assert (= (and b!1688513 res!757092) b!1688506))

(assert (= (and b!1688506 res!757089) b!1688509))

(assert (= (and b!1688512 (not res!757091)) b!1688503))

(assert (= (and b!1688503 res!757085) b!1688508))

(assert (= (and b!1688508 (not res!757087)) b!1688510))

(assert (= (and b!1688510 (not res!757086)) b!1688505))

(assert (= (or b!1688504 b!1688513 b!1688508) bm!107961))

(assert (=> b!1688510 m!2070597))

(declare-fun m!2073493 () Bool)

(assert (=> b!1688510 m!2073493))

(assert (=> b!1688510 m!2073493))

(declare-fun m!2073495 () Bool)

(assert (=> b!1688510 m!2073495))

(assert (=> b!1688506 m!2070597))

(assert (=> b!1688506 m!2073493))

(assert (=> b!1688506 m!2073493))

(assert (=> b!1688506 m!2073495))

(assert (=> b!1688505 m!2070597))

(declare-fun m!2073497 () Bool)

(assert (=> b!1688505 m!2073497))

(declare-fun m!2073499 () Bool)

(assert (=> b!1688515 m!2073499))

(assert (=> d!514470 m!2070597))

(declare-fun m!2073501 () Bool)

(assert (=> d!514470 m!2073501))

(declare-fun m!2073503 () Bool)

(assert (=> d!514470 m!2073503))

(assert (=> b!1688509 m!2070597))

(assert (=> b!1688509 m!2073497))

(assert (=> bm!107961 m!2070597))

(assert (=> bm!107961 m!2073501))

(assert (=> b!1688511 m!2070597))

(assert (=> b!1688511 m!2073497))

(assert (=> b!1688511 m!2073497))

(declare-fun m!2073505 () Bool)

(assert (=> b!1688511 m!2073505))

(assert (=> b!1688511 m!2070597))

(assert (=> b!1688511 m!2073493))

(assert (=> b!1688511 m!2073505))

(assert (=> b!1688511 m!2073493))

(declare-fun m!2073507 () Bool)

(assert (=> b!1688511 m!2073507))

(assert (=> b!1686848 d!514470))

(assert (=> b!1686848 d!514178))

(declare-fun d!514472 () Bool)

(assert (=> d!514472 (= (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641057)))) (list!7436 (c!275419 (charsOf!1904 (_1!10520 (get!5420 lt!641057))))))))

(declare-fun bs!399792 () Bool)

(assert (= bs!399792 d!514472))

(declare-fun m!2073509 () Bool)

(assert (=> bs!399792 m!2073509))

(assert (=> b!1686848 d!514472))

(declare-fun d!514474 () Bool)

(declare-fun lt!641917 () BalanceConc!12260)

(assert (=> d!514474 (= (list!7432 lt!641917) (originalCharacters!4069 (_1!10520 (get!5420 lt!641057))))))

(assert (=> d!514474 (= lt!641917 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641057))))) (value!102440 (_1!10520 (get!5420 lt!641057)))))))

(assert (=> d!514474 (= (charsOf!1904 (_1!10520 (get!5420 lt!641057))) lt!641917)))

(declare-fun b_lambda!53091 () Bool)

(assert (=> (not b_lambda!53091) (not d!514474)))

(declare-fun t!154994 () Bool)

(declare-fun tb!97983 () Bool)

(assert (=> (and b!1686461 (= (toChars!4593 (transformation!3255 (h!23888 rules!1846))) (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641057)))))) t!154994) tb!97983))

(declare-fun b!1688516 () Bool)

(declare-fun e!1080931 () Bool)

(declare-fun tp!484441 () Bool)

(assert (=> b!1688516 (= e!1080931 (and (inv!23853 (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641057))))) (value!102440 (_1!10520 (get!5420 lt!641057)))))) tp!484441))))

(declare-fun result!118090 () Bool)

(assert (=> tb!97983 (= result!118090 (and (inv!23854 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641057))))) (value!102440 (_1!10520 (get!5420 lt!641057))))) e!1080931))))

(assert (= tb!97983 b!1688516))

(declare-fun m!2073511 () Bool)

(assert (=> b!1688516 m!2073511))

(declare-fun m!2073513 () Bool)

(assert (=> tb!97983 m!2073513))

(assert (=> d!514474 t!154994))

(declare-fun b_and!120701 () Bool)

(assert (= b_and!120669 (and (=> t!154994 result!118090) b_and!120701)))

(declare-fun tb!97985 () Bool)

(declare-fun t!154996 () Bool)

(assert (=> (and b!1686468 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641057)))))) t!154996) tb!97985))

(declare-fun result!118092 () Bool)

(assert (= result!118092 result!118090))

(assert (=> d!514474 t!154996))

(declare-fun b_and!120703 () Bool)

(assert (= b_and!120671 (and (=> t!154996 result!118092) b_and!120703)))

(declare-fun tb!97987 () Bool)

(declare-fun t!154998 () Bool)

(assert (=> (and b!1687068 (= (toChars!4593 (transformation!3255 (h!23888 (t!154810 rules!1846)))) (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641057)))))) t!154998) tb!97987))

(declare-fun result!118094 () Bool)

(assert (= result!118094 result!118090))

(assert (=> d!514474 t!154998))

(declare-fun b_and!120705 () Bool)

(assert (= b_and!120673 (and (=> t!154998 result!118094) b_and!120705)))

(declare-fun t!155000 () Bool)

(declare-fun tb!97989 () Bool)

(assert (=> (and b!1687082 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641057)))))) t!155000) tb!97989))

(declare-fun result!118096 () Bool)

(assert (= result!118096 result!118090))

(assert (=> d!514474 t!155000))

(declare-fun b_and!120707 () Bool)

(assert (= b_and!120675 (and (=> t!155000 result!118096) b_and!120707)))

(declare-fun m!2073515 () Bool)

(assert (=> d!514474 m!2073515))

(declare-fun m!2073517 () Bool)

(assert (=> d!514474 m!2073517))

(assert (=> b!1686848 d!514474))

(declare-fun d!514476 () Bool)

(declare-fun res!757093 () Bool)

(declare-fun e!1080932 () Bool)

(assert (=> d!514476 (=> (not res!757093) (not e!1080932))))

(assert (=> d!514476 (= res!757093 (not (isEmpty!11569 (originalCharacters!4069 (h!23889 (t!154811 tokens!457))))))))

(assert (=> d!514476 (= (inv!23850 (h!23889 (t!154811 tokens!457))) e!1080932)))

(declare-fun b!1688517 () Bool)

(declare-fun res!757094 () Bool)

(assert (=> b!1688517 (=> (not res!757094) (not e!1080932))))

(assert (=> b!1688517 (= res!757094 (= (originalCharacters!4069 (h!23889 (t!154811 tokens!457))) (list!7432 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (value!102440 (h!23889 (t!154811 tokens!457)))))))))

(declare-fun b!1688518 () Bool)

(assert (=> b!1688518 (= e!1080932 (= (size!14720 (h!23889 (t!154811 tokens!457))) (size!14724 (originalCharacters!4069 (h!23889 (t!154811 tokens!457))))))))

(assert (= (and d!514476 res!757093) b!1688517))

(assert (= (and b!1688517 res!757094) b!1688518))

(declare-fun b_lambda!53093 () Bool)

(assert (=> (not b_lambda!53093) (not b!1688517)))

(assert (=> b!1688517 t!154843))

(declare-fun b_and!120709 () Bool)

(assert (= b_and!120701 (and (=> t!154843 result!117954) b_and!120709)))

(assert (=> b!1688517 t!154845))

(declare-fun b_and!120711 () Bool)

(assert (= b_and!120703 (and (=> t!154845 result!117956) b_and!120711)))

(assert (=> b!1688517 t!154849))

(declare-fun b_and!120713 () Bool)

(assert (= b_and!120705 (and (=> t!154849 result!117966) b_and!120713)))

(assert (=> b!1688517 t!154853))

(declare-fun b_and!120715 () Bool)

(assert (= b_and!120707 (and (=> t!154853 result!117972) b_and!120715)))

(declare-fun m!2073519 () Bool)

(assert (=> d!514476 m!2073519))

(assert (=> b!1688517 m!2070989))

(assert (=> b!1688517 m!2070989))

(declare-fun m!2073521 () Bool)

(assert (=> b!1688517 m!2073521))

(declare-fun m!2073523 () Bool)

(assert (=> b!1688518 m!2073523))

(assert (=> b!1687079 d!514476))

(declare-fun d!514478 () Bool)

(assert (=> d!514478 (= (dropList!738 lt!640650 0) (drop!959 (list!7434 (c!275421 lt!640650)) 0))))

(declare-fun bs!399793 () Bool)

(assert (= bs!399793 d!514478))

(assert (=> bs!399793 m!2071807))

(assert (=> bs!399793 m!2071807))

(declare-fun m!2073525 () Bool)

(assert (=> bs!399793 m!2073525))

(assert (=> d!513668 d!514478))

(declare-fun d!514480 () Bool)

(declare-fun lt!641930 () List!18555)

(assert (=> d!514480 (= lt!641930 (++!5065 (list!7432 (BalanceConc!12261 Empty!6158)) (printList!997 thiss!17113 (dropList!738 lt!640650 0))))))

(declare-fun e!1080935 () List!18555)

(assert (=> d!514480 (= lt!641930 e!1080935)))

(declare-fun c!275882 () Bool)

(assert (=> d!514480 (= c!275882 ((_ is Cons!18488) (dropList!738 lt!640650 0)))))

(assert (=> d!514480 (= (printListTailRec!426 thiss!17113 (dropList!738 lt!640650 0) (list!7432 (BalanceConc!12261 Empty!6158))) lt!641930)))

(declare-fun b!1688523 () Bool)

(assert (=> b!1688523 (= e!1080935 (printListTailRec!426 thiss!17113 (t!154811 (dropList!738 lt!640650 0)) (++!5065 (list!7432 (BalanceConc!12261 Empty!6158)) (list!7432 (charsOf!1904 (h!23889 (dropList!738 lt!640650 0)))))))))

(declare-fun lt!641929 () List!18555)

(assert (=> b!1688523 (= lt!641929 (list!7432 (charsOf!1904 (h!23889 (dropList!738 lt!640650 0)))))))

(declare-fun lt!641932 () List!18555)

(assert (=> b!1688523 (= lt!641932 (printList!997 thiss!17113 (t!154811 (dropList!738 lt!640650 0))))))

(declare-fun lt!641931 () Unit!31839)

(declare-fun lemmaConcatAssociativity!1056 (List!18555 List!18555 List!18555) Unit!31839)

(assert (=> b!1688523 (= lt!641931 (lemmaConcatAssociativity!1056 (list!7432 (BalanceConc!12261 Empty!6158)) lt!641929 lt!641932))))

(assert (=> b!1688523 (= (++!5065 (++!5065 (list!7432 (BalanceConc!12261 Empty!6158)) lt!641929) lt!641932) (++!5065 (list!7432 (BalanceConc!12261 Empty!6158)) (++!5065 lt!641929 lt!641932)))))

(declare-fun lt!641928 () Unit!31839)

(assert (=> b!1688523 (= lt!641928 lt!641931)))

(declare-fun b!1688524 () Bool)

(assert (=> b!1688524 (= e!1080935 (list!7432 (BalanceConc!12261 Empty!6158)))))

(assert (= (and d!514480 c!275882) b!1688523))

(assert (= (and d!514480 (not c!275882)) b!1688524))

(assert (=> d!514480 m!2070729))

(declare-fun m!2073527 () Bool)

(assert (=> d!514480 m!2073527))

(assert (=> d!514480 m!2070731))

(assert (=> d!514480 m!2073527))

(declare-fun m!2073529 () Bool)

(assert (=> d!514480 m!2073529))

(declare-fun m!2073531 () Bool)

(assert (=> b!1688523 m!2073531))

(declare-fun m!2073533 () Bool)

(assert (=> b!1688523 m!2073533))

(declare-fun m!2073535 () Bool)

(assert (=> b!1688523 m!2073535))

(declare-fun m!2073537 () Bool)

(assert (=> b!1688523 m!2073537))

(assert (=> b!1688523 m!2070731))

(declare-fun m!2073539 () Bool)

(assert (=> b!1688523 m!2073539))

(declare-fun m!2073541 () Bool)

(assert (=> b!1688523 m!2073541))

(declare-fun m!2073543 () Bool)

(assert (=> b!1688523 m!2073543))

(assert (=> b!1688523 m!2073537))

(assert (=> b!1688523 m!2073539))

(assert (=> b!1688523 m!2073541))

(declare-fun m!2073545 () Bool)

(assert (=> b!1688523 m!2073545))

(assert (=> b!1688523 m!2070731))

(declare-fun m!2073547 () Bool)

(assert (=> b!1688523 m!2073547))

(assert (=> b!1688523 m!2070731))

(assert (=> b!1688523 m!2073543))

(declare-fun m!2073549 () Bool)

(assert (=> b!1688523 m!2073549))

(assert (=> b!1688523 m!2070731))

(assert (=> b!1688523 m!2073531))

(assert (=> d!513668 d!514480))

(declare-fun d!514482 () Bool)

(assert (=> d!514482 (= (list!7432 lt!641127) (list!7436 (c!275419 lt!641127)))))

(declare-fun bs!399794 () Bool)

(assert (= bs!399794 d!514482))

(declare-fun m!2073551 () Bool)

(assert (=> bs!399794 m!2073551))

(assert (=> d!513668 d!514482))

(declare-fun d!514484 () Bool)

(assert (=> d!514484 (= (list!7432 (BalanceConc!12261 Empty!6158)) (list!7436 (c!275419 (BalanceConc!12261 Empty!6158))))))

(declare-fun bs!399795 () Bool)

(assert (= bs!399795 d!514484))

(declare-fun m!2073553 () Bool)

(assert (=> bs!399795 m!2073553))

(assert (=> d!513668 d!514484))

(declare-fun d!514486 () Bool)

(declare-fun lt!641933 () Int)

(assert (=> d!514486 (= lt!641933 (size!14729 (list!7431 lt!640650)))))

(assert (=> d!514486 (= lt!641933 (size!14732 (c!275421 lt!640650)))))

(assert (=> d!514486 (= (size!14725 lt!640650) lt!641933)))

(declare-fun bs!399796 () Bool)

(assert (= bs!399796 d!514486))

(assert (=> bs!399796 m!2070759))

(assert (=> bs!399796 m!2070759))

(declare-fun m!2073555 () Bool)

(assert (=> bs!399796 m!2073555))

(declare-fun m!2073557 () Bool)

(assert (=> bs!399796 m!2073557))

(assert (=> d!513668 d!514486))

(declare-fun d!514488 () Bool)

(declare-fun lt!641934 () Token!6076)

(assert (=> d!514488 (= lt!641934 (apply!5043 (list!7431 (_1!10519 lt!641101)) 0))))

(assert (=> d!514488 (= lt!641934 (apply!5047 (c!275421 (_1!10519 lt!641101)) 0))))

(declare-fun e!1080936 () Bool)

(assert (=> d!514488 e!1080936))

(declare-fun res!757095 () Bool)

(assert (=> d!514488 (=> (not res!757095) (not e!1080936))))

(assert (=> d!514488 (= res!757095 (<= 0 0))))

(assert (=> d!514488 (= (apply!5040 (_1!10519 lt!641101) 0) lt!641934)))

(declare-fun b!1688525 () Bool)

(assert (=> b!1688525 (= e!1080936 (< 0 (size!14725 (_1!10519 lt!641101))))))

(assert (= (and d!514488 res!757095) b!1688525))

(assert (=> d!514488 m!2072511))

(assert (=> d!514488 m!2072511))

(declare-fun m!2073559 () Bool)

(assert (=> d!514488 m!2073559))

(declare-fun m!2073561 () Bool)

(assert (=> d!514488 m!2073561))

(assert (=> b!1688525 m!2070667))

(assert (=> b!1686862 d!514488))

(assert (=> b!1686883 d!514284))

(assert (=> b!1686883 d!514288))

(assert (=> b!1686883 d!514280))

(declare-fun d!514490 () Bool)

(assert (=> d!514490 (= (list!7432 lt!641136) (list!7436 (c!275419 lt!641136)))))

(declare-fun bs!399797 () Bool)

(assert (= bs!399797 d!514490))

(declare-fun m!2073563 () Bool)

(assert (=> bs!399797 m!2073563))

(assert (=> d!513676 d!514490))

(declare-fun d!514492 () Bool)

(declare-fun c!275883 () Bool)

(assert (=> d!514492 (= c!275883 ((_ is Cons!18488) (list!7431 (seqFromList!2248 tokens!457))))))

(declare-fun e!1080937 () List!18555)

(assert (=> d!514492 (= (printList!997 thiss!17113 (list!7431 (seqFromList!2248 tokens!457))) e!1080937)))

(declare-fun b!1688526 () Bool)

(assert (=> b!1688526 (= e!1080937 (++!5065 (list!7432 (charsOf!1904 (h!23889 (list!7431 (seqFromList!2248 tokens!457))))) (printList!997 thiss!17113 (t!154811 (list!7431 (seqFromList!2248 tokens!457))))))))

(declare-fun b!1688527 () Bool)

(assert (=> b!1688527 (= e!1080937 Nil!18485)))

(assert (= (and d!514492 c!275883) b!1688526))

(assert (= (and d!514492 (not c!275883)) b!1688527))

(declare-fun m!2073565 () Bool)

(assert (=> b!1688526 m!2073565))

(assert (=> b!1688526 m!2073565))

(declare-fun m!2073567 () Bool)

(assert (=> b!1688526 m!2073567))

(declare-fun m!2073569 () Bool)

(assert (=> b!1688526 m!2073569))

(assert (=> b!1688526 m!2073567))

(assert (=> b!1688526 m!2073569))

(declare-fun m!2073571 () Bool)

(assert (=> b!1688526 m!2073571))

(assert (=> d!513676 d!514492))

(declare-fun d!514494 () Bool)

(assert (=> d!514494 (= (list!7431 (seqFromList!2248 tokens!457)) (list!7434 (c!275421 (seqFromList!2248 tokens!457))))))

(declare-fun bs!399798 () Bool)

(assert (= bs!399798 d!514494))

(declare-fun m!2073573 () Bool)

(assert (=> bs!399798 m!2073573))

(assert (=> d!513676 d!514494))

(declare-fun d!514496 () Bool)

(declare-fun lt!641939 () BalanceConc!12260)

(assert (=> d!514496 (= (list!7432 lt!641939) (printListTailRec!426 thiss!17113 (dropList!738 (seqFromList!2248 tokens!457) 0) (list!7432 (BalanceConc!12261 Empty!6158))))))

(declare-fun e!1080938 () BalanceConc!12260)

(assert (=> d!514496 (= lt!641939 e!1080938)))

(declare-fun c!275884 () Bool)

(assert (=> d!514496 (= c!275884 (>= 0 (size!14725 (seqFromList!2248 tokens!457))))))

(declare-fun e!1080939 () Bool)

(assert (=> d!514496 e!1080939))

(declare-fun res!757096 () Bool)

(assert (=> d!514496 (=> (not res!757096) (not e!1080939))))

(assert (=> d!514496 (= res!757096 (>= 0 0))))

(assert (=> d!514496 (= (printTailRec!935 thiss!17113 (seqFromList!2248 tokens!457) 0 (BalanceConc!12261 Empty!6158)) lt!641939)))

(declare-fun b!1688528 () Bool)

(assert (=> b!1688528 (= e!1080939 (<= 0 (size!14725 (seqFromList!2248 tokens!457))))))

(declare-fun b!1688529 () Bool)

(assert (=> b!1688529 (= e!1080938 (BalanceConc!12261 Empty!6158))))

(declare-fun b!1688530 () Bool)

(assert (=> b!1688530 (= e!1080938 (printTailRec!935 thiss!17113 (seqFromList!2248 tokens!457) (+ 0 1) (++!5066 (BalanceConc!12261 Empty!6158) (charsOf!1904 (apply!5040 (seqFromList!2248 tokens!457) 0)))))))

(declare-fun lt!641940 () List!18558)

(assert (=> b!1688530 (= lt!641940 (list!7431 (seqFromList!2248 tokens!457)))))

(declare-fun lt!641938 () Unit!31839)

(assert (=> b!1688530 (= lt!641938 (lemmaDropApply!633 lt!641940 0))))

(assert (=> b!1688530 (= (head!3782 (drop!959 lt!641940 0)) (apply!5043 lt!641940 0))))

(declare-fun lt!641936 () Unit!31839)

(assert (=> b!1688530 (= lt!641936 lt!641938)))

(declare-fun lt!641941 () List!18558)

(assert (=> b!1688530 (= lt!641941 (list!7431 (seqFromList!2248 tokens!457)))))

(declare-fun lt!641935 () Unit!31839)

(assert (=> b!1688530 (= lt!641935 (lemmaDropTail!613 lt!641941 0))))

(assert (=> b!1688530 (= (tail!2519 (drop!959 lt!641941 0)) (drop!959 lt!641941 (+ 0 1)))))

(declare-fun lt!641937 () Unit!31839)

(assert (=> b!1688530 (= lt!641937 lt!641935)))

(assert (= (and d!514496 res!757096) b!1688528))

(assert (= (and d!514496 c!275884) b!1688529))

(assert (= (and d!514496 (not c!275884)) b!1688530))

(declare-fun m!2073575 () Bool)

(assert (=> d!514496 m!2073575))

(declare-fun m!2073577 () Bool)

(assert (=> d!514496 m!2073577))

(assert (=> d!514496 m!2070731))

(declare-fun m!2073579 () Bool)

(assert (=> d!514496 m!2073579))

(assert (=> d!514496 m!2070731))

(assert (=> d!514496 m!2069739))

(assert (=> d!514496 m!2073577))

(assert (=> d!514496 m!2069739))

(declare-fun m!2073581 () Bool)

(assert (=> d!514496 m!2073581))

(assert (=> b!1688528 m!2069739))

(assert (=> b!1688528 m!2073581))

(declare-fun m!2073583 () Bool)

(assert (=> b!1688530 m!2073583))

(declare-fun m!2073585 () Bool)

(assert (=> b!1688530 m!2073585))

(declare-fun m!2073587 () Bool)

(assert (=> b!1688530 m!2073587))

(declare-fun m!2073589 () Bool)

(assert (=> b!1688530 m!2073589))

(assert (=> b!1688530 m!2069739))

(declare-fun m!2073591 () Bool)

(assert (=> b!1688530 m!2073591))

(declare-fun m!2073593 () Bool)

(assert (=> b!1688530 m!2073593))

(declare-fun m!2073595 () Bool)

(assert (=> b!1688530 m!2073595))

(declare-fun m!2073597 () Bool)

(assert (=> b!1688530 m!2073597))

(assert (=> b!1688530 m!2073591))

(assert (=> b!1688530 m!2073587))

(declare-fun m!2073599 () Bool)

(assert (=> b!1688530 m!2073599))

(assert (=> b!1688530 m!2073595))

(declare-fun m!2073601 () Bool)

(assert (=> b!1688530 m!2073601))

(assert (=> b!1688530 m!2069739))

(assert (=> b!1688530 m!2073589))

(declare-fun m!2073603 () Bool)

(assert (=> b!1688530 m!2073603))

(assert (=> b!1688530 m!2069739))

(assert (=> b!1688530 m!2070783))

(assert (=> b!1688530 m!2073593))

(declare-fun m!2073605 () Bool)

(assert (=> b!1688530 m!2073605))

(assert (=> d!513676 d!514496))

(declare-fun d!514498 () Bool)

(assert (=> d!514498 (= (isEmpty!11573 (maxPrefix!1444 thiss!17113 rules!1846 (originalCharacters!4069 (h!23889 tokens!457)))) (not ((_ is Some!3567) (maxPrefix!1444 thiss!17113 rules!1846 (originalCharacters!4069 (h!23889 tokens!457))))))))

(assert (=> d!513644 d!514498))

(assert (=> b!1686895 d!514486))

(declare-fun d!514500 () Bool)

(assert (=> d!514500 (= (head!3780 lt!640654) (h!23886 lt!640654))))

(assert (=> b!1686741 d!514500))

(declare-fun d!514502 () Bool)

(assert (=> d!514502 (= (head!3780 lt!640645) (h!23886 lt!640645))))

(assert (=> b!1686741 d!514502))

(declare-fun d!514504 () Bool)

(declare-fun c!275885 () Bool)

(assert (=> d!514504 (= c!275885 ((_ is Nil!18485) lt!641143))))

(declare-fun e!1080940 () (InoxSet C!9340))

(assert (=> d!514504 (= (content!2605 lt!641143) e!1080940)))

(declare-fun b!1688531 () Bool)

(assert (=> b!1688531 (= e!1080940 ((as const (Array C!9340 Bool)) false))))

(declare-fun b!1688532 () Bool)

(assert (=> b!1688532 (= e!1080940 ((_ map or) (store ((as const (Array C!9340 Bool)) false) (h!23886 lt!641143) true) (content!2605 (t!154808 lt!641143))))))

(assert (= (and d!514504 c!275885) b!1688531))

(assert (= (and d!514504 (not c!275885)) b!1688532))

(declare-fun m!2073607 () Bool)

(assert (=> b!1688532 m!2073607))

(declare-fun m!2073609 () Bool)

(assert (=> b!1688532 m!2073609))

(assert (=> d!513688 d!514504))

(assert (=> d!513688 d!513938))

(declare-fun d!514506 () Bool)

(declare-fun c!275886 () Bool)

(assert (=> d!514506 (= c!275886 ((_ is Nil!18485) lt!640662))))

(declare-fun e!1080941 () (InoxSet C!9340))

(assert (=> d!514506 (= (content!2605 lt!640662) e!1080941)))

(declare-fun b!1688533 () Bool)

(assert (=> b!1688533 (= e!1080941 ((as const (Array C!9340 Bool)) false))))

(declare-fun b!1688534 () Bool)

(assert (=> b!1688534 (= e!1080941 ((_ map or) (store ((as const (Array C!9340 Bool)) false) (h!23886 lt!640662) true) (content!2605 (t!154808 lt!640662))))))

(assert (= (and d!514506 c!275886) b!1688533))

(assert (= (and d!514506 (not c!275886)) b!1688534))

(declare-fun m!2073611 () Bool)

(assert (=> b!1688534 m!2073611))

(declare-fun m!2073613 () Bool)

(assert (=> b!1688534 m!2073613))

(assert (=> d!513688 d!514506))

(declare-fun b!1688535 () Bool)

(declare-fun e!1080942 () List!18555)

(assert (=> b!1688535 (= e!1080942 Nil!18485)))

(declare-fun d!514508 () Bool)

(declare-fun c!275887 () Bool)

(assert (=> d!514508 (= c!275887 ((_ is Empty!6158) (c!275419 lt!640644)))))

(assert (=> d!514508 (= (list!7436 (c!275419 lt!640644)) e!1080942)))

(declare-fun b!1688538 () Bool)

(declare-fun e!1080943 () List!18555)

(assert (=> b!1688538 (= e!1080943 (++!5065 (list!7436 (left!14775 (c!275419 lt!640644))) (list!7436 (right!15105 (c!275419 lt!640644)))))))

(declare-fun b!1688536 () Bool)

(assert (=> b!1688536 (= e!1080942 e!1080943)))

(declare-fun c!275888 () Bool)

(assert (=> b!1688536 (= c!275888 ((_ is Leaf!9006) (c!275419 lt!640644)))))

(declare-fun b!1688537 () Bool)

(assert (=> b!1688537 (= e!1080943 (list!7439 (xs!9018 (c!275419 lt!640644))))))

(assert (= (and d!514508 c!275887) b!1688535))

(assert (= (and d!514508 (not c!275887)) b!1688536))

(assert (= (and b!1688536 c!275888) b!1688537))

(assert (= (and b!1688536 (not c!275888)) b!1688538))

(declare-fun m!2073615 () Bool)

(assert (=> b!1688538 m!2073615))

(declare-fun m!2073617 () Bool)

(assert (=> b!1688538 m!2073617))

(assert (=> b!1688538 m!2073615))

(assert (=> b!1688538 m!2073617))

(declare-fun m!2073619 () Bool)

(assert (=> b!1688538 m!2073619))

(declare-fun m!2073621 () Bool)

(assert (=> b!1688537 m!2073621))

(assert (=> d!513684 d!514508))

(declare-fun d!514510 () Bool)

(assert (=> d!514510 (= (isDefined!2918 lt!640755) (not (isEmpty!11568 lt!640755)))))

(declare-fun bs!399799 () Bool)

(assert (= bs!399799 d!514510))

(declare-fun m!2073623 () Bool)

(assert (=> bs!399799 m!2073623))

(assert (=> b!1686627 d!514510))

(declare-fun b!1688539 () Bool)

(declare-fun e!1080947 () Bool)

(declare-fun e!1080946 () Bool)

(assert (=> b!1688539 (= e!1080947 e!1080946)))

(declare-fun c!275890 () Bool)

(assert (=> b!1688539 (= c!275890 ((_ is EmptyLang!4583) (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641052))))))))

(declare-fun b!1688540 () Bool)

(declare-fun e!1080950 () Bool)

(declare-fun e!1080948 () Bool)

(assert (=> b!1688540 (= e!1080950 e!1080948)))

(declare-fun res!757097 () Bool)

(assert (=> b!1688540 (=> (not res!757097) (not e!1080948))))

(declare-fun lt!641942 () Bool)

(assert (=> b!1688540 (= res!757097 (not lt!641942))))

(declare-fun b!1688541 () Bool)

(declare-fun call!107967 () Bool)

(assert (=> b!1688541 (= e!1080947 (= lt!641942 call!107967))))

(declare-fun b!1688542 () Bool)

(declare-fun e!1080949 () Bool)

(assert (=> b!1688542 (= e!1080949 (not (= (head!3780 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641052))))) (c!275420 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641052))))))))))

(declare-fun b!1688543 () Bool)

(declare-fun res!757101 () Bool)

(declare-fun e!1080945 () Bool)

(assert (=> b!1688543 (=> (not res!757101) (not e!1080945))))

(assert (=> b!1688543 (= res!757101 (isEmpty!11569 (tail!2518 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641052)))))))))

(declare-fun b!1688544 () Bool)

(declare-fun res!757102 () Bool)

(assert (=> b!1688544 (=> res!757102 e!1080950)))

(assert (=> b!1688544 (= res!757102 (not ((_ is ElementMatch!4583) (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641052)))))))))

(assert (=> b!1688544 (= e!1080946 e!1080950)))

(declare-fun b!1688545 () Bool)

(assert (=> b!1688545 (= e!1080948 e!1080949)))

(declare-fun res!757099 () Bool)

(assert (=> b!1688545 (=> res!757099 e!1080949)))

(assert (=> b!1688545 (= res!757099 call!107967)))

(declare-fun b!1688546 () Bool)

(assert (=> b!1688546 (= e!1080945 (= (head!3780 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641052))))) (c!275420 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641052)))))))))

(declare-fun b!1688547 () Bool)

(declare-fun res!757098 () Bool)

(assert (=> b!1688547 (=> res!757098 e!1080949)))

(assert (=> b!1688547 (= res!757098 (not (isEmpty!11569 (tail!2518 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641052))))))))))

(declare-fun d!514512 () Bool)

(assert (=> d!514512 e!1080947))

(declare-fun c!275889 () Bool)

(assert (=> d!514512 (= c!275889 ((_ is EmptyExpr!4583) (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641052))))))))

(declare-fun e!1080944 () Bool)

(assert (=> d!514512 (= lt!641942 e!1080944)))

(declare-fun c!275891 () Bool)

(assert (=> d!514512 (= c!275891 (isEmpty!11569 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641052))))))))

(assert (=> d!514512 (validRegex!1842 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641052)))))))

(assert (=> d!514512 (= (matchR!2072 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641052)))) (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641052))))) lt!641942)))

(declare-fun b!1688548 () Bool)

(assert (=> b!1688548 (= e!1080944 (matchR!2072 (derivativeStep!1140 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641052)))) (head!3780 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641052)))))) (tail!2518 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641052)))))))))

(declare-fun b!1688549 () Bool)

(declare-fun res!757103 () Bool)

(assert (=> b!1688549 (=> res!757103 e!1080950)))

(assert (=> b!1688549 (= res!757103 e!1080945)))

(declare-fun res!757100 () Bool)

(assert (=> b!1688549 (=> (not res!757100) (not e!1080945))))

(assert (=> b!1688549 (= res!757100 lt!641942)))

(declare-fun bm!107962 () Bool)

(assert (=> bm!107962 (= call!107967 (isEmpty!11569 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641052))))))))

(declare-fun b!1688550 () Bool)

(declare-fun res!757104 () Bool)

(assert (=> b!1688550 (=> (not res!757104) (not e!1080945))))

(assert (=> b!1688550 (= res!757104 (not call!107967))))

(declare-fun b!1688551 () Bool)

(assert (=> b!1688551 (= e!1080946 (not lt!641942))))

(declare-fun b!1688552 () Bool)

(assert (=> b!1688552 (= e!1080944 (nullable!1369 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641052))))))))

(assert (= (and d!514512 c!275891) b!1688552))

(assert (= (and d!514512 (not c!275891)) b!1688548))

(assert (= (and d!514512 c!275889) b!1688541))

(assert (= (and d!514512 (not c!275889)) b!1688539))

(assert (= (and b!1688539 c!275890) b!1688551))

(assert (= (and b!1688539 (not c!275890)) b!1688544))

(assert (= (and b!1688544 (not res!757102)) b!1688549))

(assert (= (and b!1688549 res!757100) b!1688550))

(assert (= (and b!1688550 res!757104) b!1688543))

(assert (= (and b!1688543 res!757101) b!1688546))

(assert (= (and b!1688549 (not res!757103)) b!1688540))

(assert (= (and b!1688540 res!757097) b!1688545))

(assert (= (and b!1688545 (not res!757099)) b!1688547))

(assert (= (and b!1688547 (not res!757098)) b!1688542))

(assert (= (or b!1688541 b!1688550 b!1688545) bm!107962))

(assert (=> b!1688547 m!2070561))

(declare-fun m!2073625 () Bool)

(assert (=> b!1688547 m!2073625))

(assert (=> b!1688547 m!2073625))

(declare-fun m!2073627 () Bool)

(assert (=> b!1688547 m!2073627))

(assert (=> b!1688543 m!2070561))

(assert (=> b!1688543 m!2073625))

(assert (=> b!1688543 m!2073625))

(assert (=> b!1688543 m!2073627))

(assert (=> b!1688542 m!2070561))

(declare-fun m!2073629 () Bool)

(assert (=> b!1688542 m!2073629))

(declare-fun m!2073631 () Bool)

(assert (=> b!1688552 m!2073631))

(assert (=> d!514512 m!2070561))

(declare-fun m!2073633 () Bool)

(assert (=> d!514512 m!2073633))

(declare-fun m!2073635 () Bool)

(assert (=> d!514512 m!2073635))

(assert (=> b!1688546 m!2070561))

(assert (=> b!1688546 m!2073629))

(assert (=> bm!107962 m!2070561))

(assert (=> bm!107962 m!2073633))

(assert (=> b!1688548 m!2070561))

(assert (=> b!1688548 m!2073629))

(assert (=> b!1688548 m!2073629))

(declare-fun m!2073637 () Bool)

(assert (=> b!1688548 m!2073637))

(assert (=> b!1688548 m!2070561))

(assert (=> b!1688548 m!2073625))

(assert (=> b!1688548 m!2073637))

(assert (=> b!1688548 m!2073625))

(declare-fun m!2073639 () Bool)

(assert (=> b!1688548 m!2073639))

(assert (=> b!1686839 d!514512))

(assert (=> b!1686839 d!514046))

(assert (=> b!1686839 d!514100))

(assert (=> b!1686839 d!514102))

(declare-fun d!514514 () Bool)

(assert (=> d!514514 (= (isEmpty!11568 (maxPrefixZipperSequence!755 thiss!17113 rules!1846 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457))))) (not ((_ is Some!3568) (maxPrefixZipperSequence!755 thiss!17113 rules!1846 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))))

(assert (=> d!513520 d!514514))

(declare-fun d!514516 () Bool)

(declare-fun c!275892 () Bool)

(assert (=> d!514516 (= c!275892 ((_ is Node!6158) (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (value!102440 (h!23889 (t!154811 tokens!457)))))))))

(declare-fun e!1080951 () Bool)

(assert (=> d!514516 (= (inv!23853 (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (value!102440 (h!23889 (t!154811 tokens!457)))))) e!1080951)))

(declare-fun b!1688553 () Bool)

(assert (=> b!1688553 (= e!1080951 (inv!23857 (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (value!102440 (h!23889 (t!154811 tokens!457)))))))))

(declare-fun b!1688554 () Bool)

(declare-fun e!1080952 () Bool)

(assert (=> b!1688554 (= e!1080951 e!1080952)))

(declare-fun res!757105 () Bool)

(assert (=> b!1688554 (= res!757105 (not ((_ is Leaf!9006) (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (value!102440 (h!23889 (t!154811 tokens!457))))))))))

(assert (=> b!1688554 (=> res!757105 e!1080952)))

(declare-fun b!1688555 () Bool)

(assert (=> b!1688555 (= e!1080952 (inv!23858 (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (value!102440 (h!23889 (t!154811 tokens!457)))))))))

(assert (= (and d!514516 c!275892) b!1688553))

(assert (= (and d!514516 (not c!275892)) b!1688554))

(assert (= (and b!1688554 (not res!757105)) b!1688555))

(declare-fun m!2073641 () Bool)

(assert (=> b!1688553 m!2073641))

(declare-fun m!2073643 () Bool)

(assert (=> b!1688555 m!2073643))

(assert (=> b!1687022 d!514516))

(assert (=> b!1686631 d!514320))

(declare-fun d!514518 () Bool)

(assert (=> d!514518 (= (get!5420 (maxPrefix!1444 thiss!17113 rules!1846 (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))) (v!24888 (maxPrefix!1444 thiss!17113 rules!1846 (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))))

(assert (=> b!1686631 d!514518))

(assert (=> b!1686631 d!514346))

(assert (=> b!1686631 d!514326))

(declare-fun d!514520 () Bool)

(declare-fun e!1080955 () Bool)

(assert (=> d!514520 e!1080955))

(declare-fun res!757110 () Bool)

(assert (=> d!514520 (=> res!757110 e!1080955)))

(declare-fun lt!641946 () Option!3568)

(assert (=> d!514520 (= res!757110 (isEmpty!11573 lt!641946))))

(declare-fun e!1080954 () Option!3568)

(assert (=> d!514520 (= lt!641946 e!1080954)))

(declare-fun c!275893 () Bool)

(assert (=> d!514520 (= c!275893 (and ((_ is Cons!18487) rules!1846) ((_ is Nil!18487) (t!154810 rules!1846))))))

(declare-fun lt!641945 () Unit!31839)

(declare-fun lt!641944 () Unit!31839)

(assert (=> d!514520 (= lt!641945 lt!641944)))

(assert (=> d!514520 (isPrefix!1513 (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))) (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))

(assert (=> d!514520 (= lt!641944 (lemmaIsPrefixRefl!1030 (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))) (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457))))))))

(assert (=> d!514520 (rulesValidInductive!1052 thiss!17113 rules!1846)))

(assert (=> d!514520 (= (maxPrefix!1444 thiss!17113 rules!1846 (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457))))) lt!641946)))

(declare-fun b!1688556 () Bool)

(declare-fun e!1080953 () Bool)

(assert (=> b!1688556 (= e!1080955 e!1080953)))

(declare-fun res!757111 () Bool)

(assert (=> b!1688556 (=> (not res!757111) (not e!1080953))))

(assert (=> b!1688556 (= res!757111 (isDefined!2917 lt!641946))))

(declare-fun b!1688557 () Bool)

(declare-fun call!107968 () Option!3568)

(assert (=> b!1688557 (= e!1080954 call!107968)))

(declare-fun b!1688558 () Bool)

(assert (=> b!1688558 (= e!1080953 (contains!3250 rules!1846 (rule!5161 (_1!10520 (get!5420 lt!641946)))))))

(declare-fun b!1688559 () Bool)

(declare-fun res!757107 () Bool)

(assert (=> b!1688559 (=> (not res!757107) (not e!1080953))))

(assert (=> b!1688559 (= res!757107 (< (size!14724 (_2!10520 (get!5420 lt!641946))) (size!14724 (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))))

(declare-fun b!1688560 () Bool)

(declare-fun res!757106 () Bool)

(assert (=> b!1688560 (=> (not res!757106) (not e!1080953))))

(assert (=> b!1688560 (= res!757106 (= (value!102440 (_1!10520 (get!5420 lt!641946))) (apply!5039 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641946)))) (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!641946)))))))))

(declare-fun b!1688561 () Bool)

(declare-fun res!757108 () Bool)

(assert (=> b!1688561 (=> (not res!757108) (not e!1080953))))

(assert (=> b!1688561 (= res!757108 (matchR!2072 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641946)))) (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641946))))))))

(declare-fun bm!107963 () Bool)

(assert (=> bm!107963 (= call!107968 (maxPrefixOneRule!845 thiss!17113 (h!23888 rules!1846) (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457))))))))

(declare-fun b!1688562 () Bool)

(declare-fun res!757109 () Bool)

(assert (=> b!1688562 (=> (not res!757109) (not e!1080953))))

(assert (=> b!1688562 (= res!757109 (= (++!5065 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641946)))) (_2!10520 (get!5420 lt!641946))) (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457))))))))

(declare-fun b!1688563 () Bool)

(declare-fun res!757112 () Bool)

(assert (=> b!1688563 (=> (not res!757112) (not e!1080953))))

(assert (=> b!1688563 (= res!757112 (= (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641946)))) (originalCharacters!4069 (_1!10520 (get!5420 lt!641946)))))))

(declare-fun b!1688564 () Bool)

(declare-fun lt!641943 () Option!3568)

(declare-fun lt!641947 () Option!3568)

(assert (=> b!1688564 (= e!1080954 (ite (and ((_ is None!3567) lt!641943) ((_ is None!3567) lt!641947)) None!3567 (ite ((_ is None!3567) lt!641947) lt!641943 (ite ((_ is None!3567) lt!641943) lt!641947 (ite (>= (size!14720 (_1!10520 (v!24888 lt!641943))) (size!14720 (_1!10520 (v!24888 lt!641947)))) lt!641943 lt!641947)))))))

(assert (=> b!1688564 (= lt!641943 call!107968)))

(assert (=> b!1688564 (= lt!641947 (maxPrefix!1444 thiss!17113 (t!154810 rules!1846) (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457))))))))

(assert (= (and d!514520 c!275893) b!1688557))

(assert (= (and d!514520 (not c!275893)) b!1688564))

(assert (= (or b!1688557 b!1688564) bm!107963))

(assert (= (and d!514520 (not res!757110)) b!1688556))

(assert (= (and b!1688556 res!757111) b!1688563))

(assert (= (and b!1688563 res!757112) b!1688559))

(assert (= (and b!1688559 res!757107) b!1688562))

(assert (= (and b!1688562 res!757109) b!1688560))

(assert (= (and b!1688560 res!757106) b!1688561))

(assert (= (and b!1688561 res!757108) b!1688558))

(declare-fun m!2073645 () Bool)

(assert (=> b!1688561 m!2073645))

(declare-fun m!2073647 () Bool)

(assert (=> b!1688561 m!2073647))

(assert (=> b!1688561 m!2073647))

(declare-fun m!2073649 () Bool)

(assert (=> b!1688561 m!2073649))

(assert (=> b!1688561 m!2073649))

(declare-fun m!2073651 () Bool)

(assert (=> b!1688561 m!2073651))

(assert (=> b!1688563 m!2073645))

(assert (=> b!1688563 m!2073647))

(assert (=> b!1688563 m!2073647))

(assert (=> b!1688563 m!2073649))

(assert (=> b!1688562 m!2073645))

(assert (=> b!1688562 m!2073647))

(assert (=> b!1688562 m!2073647))

(assert (=> b!1688562 m!2073649))

(assert (=> b!1688562 m!2073649))

(declare-fun m!2073653 () Bool)

(assert (=> b!1688562 m!2073653))

(assert (=> bm!107963 m!2070083))

(declare-fun m!2073655 () Bool)

(assert (=> bm!107963 m!2073655))

(declare-fun m!2073657 () Bool)

(assert (=> b!1688556 m!2073657))

(assert (=> b!1688558 m!2073645))

(declare-fun m!2073659 () Bool)

(assert (=> b!1688558 m!2073659))

(assert (=> b!1688560 m!2073645))

(declare-fun m!2073661 () Bool)

(assert (=> b!1688560 m!2073661))

(assert (=> b!1688560 m!2073661))

(declare-fun m!2073663 () Bool)

(assert (=> b!1688560 m!2073663))

(assert (=> b!1688559 m!2073645))

(declare-fun m!2073665 () Bool)

(assert (=> b!1688559 m!2073665))

(assert (=> b!1688559 m!2070083))

(declare-fun m!2073667 () Bool)

(assert (=> b!1688559 m!2073667))

(assert (=> b!1688564 m!2070083))

(assert (=> b!1688564 m!2072129))

(declare-fun m!2073669 () Bool)

(assert (=> d!514520 m!2073669))

(assert (=> d!514520 m!2070083))

(assert (=> d!514520 m!2070083))

(assert (=> d!514520 m!2072909))

(assert (=> d!514520 m!2070083))

(assert (=> d!514520 m!2070083))

(assert (=> d!514520 m!2072911))

(assert (=> d!514520 m!2070101))

(assert (=> b!1686631 d!514520))

(declare-fun d!514522 () Bool)

(assert (=> d!514522 true))

(declare-fun order!11163 () Int)

(declare-fun lambda!68394 () Int)

(declare-fun dynLambda!8393 (Int Int) Int)

(assert (=> d!514522 (< (dynLambda!8379 order!11145 (toValue!4734 (transformation!3255 (h!23888 rules!1846)))) (dynLambda!8393 order!11163 lambda!68394))))

(declare-fun Forall2!541 (Int) Bool)

(assert (=> d!514522 (= (equivClasses!1219 (toChars!4593 (transformation!3255 (h!23888 rules!1846))) (toValue!4734 (transformation!3255 (h!23888 rules!1846)))) (Forall2!541 lambda!68394))))

(declare-fun bs!399800 () Bool)

(assert (= bs!399800 d!514522))

(declare-fun m!2073671 () Bool)

(assert (=> bs!399800 m!2073671))

(assert (=> b!1686767 d!514522))

(declare-fun d!514524 () Bool)

(declare-fun lostCauseFct!173 (Regex!4583) Bool)

(assert (=> d!514524 (= (lostCause!488 lt!640647) (lostCauseFct!173 lt!640647))))

(declare-fun bs!399801 () Bool)

(assert (= bs!399801 d!514524))

(declare-fun m!2073673 () Bool)

(assert (=> bs!399801 m!2073673))

(assert (=> b!1686772 d!514524))

(declare-fun d!514526 () Bool)

(declare-fun lt!641948 () Bool)

(assert (=> d!514526 (= lt!641948 (isEmpty!11574 (list!7431 (_1!10519 lt!641172))))))

(assert (=> d!514526 (= lt!641948 (isEmpty!11575 (c!275421 (_1!10519 lt!641172))))))

(assert (=> d!514526 (= (isEmpty!11562 (_1!10519 lt!641172)) lt!641948)))

(declare-fun bs!399802 () Bool)

(assert (= bs!399802 d!514526))

(assert (=> bs!399802 m!2070865))

(assert (=> bs!399802 m!2070865))

(declare-fun m!2073675 () Bool)

(assert (=> bs!399802 m!2073675))

(declare-fun m!2073677 () Bool)

(assert (=> bs!399802 m!2073677))

(assert (=> b!1686935 d!514526))

(declare-fun d!514528 () Bool)

(assert (=> d!514528 (= (isEmpty!11573 lt!640661) (not ((_ is Some!3567) lt!640661)))))

(assert (=> d!513646 d!514528))

(assert (=> b!1687031 d!514366))

(assert (=> b!1687031 d!514096))

(declare-fun b!1688569 () Bool)

(declare-fun e!1080961 () Bool)

(declare-fun e!1080960 () Bool)

(assert (=> b!1688569 (= e!1080961 e!1080960)))

(declare-fun c!275895 () Bool)

(assert (=> b!1688569 (= c!275895 ((_ is EmptyLang!4583) (regex!3255 (get!5424 (getRuleFromTag!345 thiss!17113 rules!1846 (tag!3545 (rule!5161 lt!641264)))))))))

(declare-fun b!1688570 () Bool)

(declare-fun e!1080964 () Bool)

(declare-fun e!1080962 () Bool)

(assert (=> b!1688570 (= e!1080964 e!1080962)))

(declare-fun res!757115 () Bool)

(assert (=> b!1688570 (=> (not res!757115) (not e!1080962))))

(declare-fun lt!641949 () Bool)

(assert (=> b!1688570 (= res!757115 (not lt!641949))))

(declare-fun b!1688571 () Bool)

(declare-fun call!107969 () Bool)

(assert (=> b!1688571 (= e!1080961 (= lt!641949 call!107969))))

(declare-fun e!1080963 () Bool)

(declare-fun b!1688572 () Bool)

(assert (=> b!1688572 (= e!1080963 (not (= (head!3780 (list!7432 (charsOf!1904 lt!641264))) (c!275420 (regex!3255 (get!5424 (getRuleFromTag!345 thiss!17113 rules!1846 (tag!3545 (rule!5161 lt!641264)))))))))))

(declare-fun b!1688573 () Bool)

(declare-fun res!757119 () Bool)

(declare-fun e!1080959 () Bool)

(assert (=> b!1688573 (=> (not res!757119) (not e!1080959))))

(assert (=> b!1688573 (= res!757119 (isEmpty!11569 (tail!2518 (list!7432 (charsOf!1904 lt!641264)))))))

(declare-fun b!1688574 () Bool)

(declare-fun res!757120 () Bool)

(assert (=> b!1688574 (=> res!757120 e!1080964)))

(assert (=> b!1688574 (= res!757120 (not ((_ is ElementMatch!4583) (regex!3255 (get!5424 (getRuleFromTag!345 thiss!17113 rules!1846 (tag!3545 (rule!5161 lt!641264))))))))))

(assert (=> b!1688574 (= e!1080960 e!1080964)))

(declare-fun b!1688575 () Bool)

(assert (=> b!1688575 (= e!1080962 e!1080963)))

(declare-fun res!757117 () Bool)

(assert (=> b!1688575 (=> res!757117 e!1080963)))

(assert (=> b!1688575 (= res!757117 call!107969)))

(declare-fun b!1688576 () Bool)

(assert (=> b!1688576 (= e!1080959 (= (head!3780 (list!7432 (charsOf!1904 lt!641264))) (c!275420 (regex!3255 (get!5424 (getRuleFromTag!345 thiss!17113 rules!1846 (tag!3545 (rule!5161 lt!641264))))))))))

(declare-fun b!1688577 () Bool)

(declare-fun res!757116 () Bool)

(assert (=> b!1688577 (=> res!757116 e!1080963)))

(assert (=> b!1688577 (= res!757116 (not (isEmpty!11569 (tail!2518 (list!7432 (charsOf!1904 lt!641264))))))))

(declare-fun d!514530 () Bool)

(assert (=> d!514530 e!1080961))

(declare-fun c!275894 () Bool)

(assert (=> d!514530 (= c!275894 ((_ is EmptyExpr!4583) (regex!3255 (get!5424 (getRuleFromTag!345 thiss!17113 rules!1846 (tag!3545 (rule!5161 lt!641264)))))))))

(declare-fun e!1080958 () Bool)

(assert (=> d!514530 (= lt!641949 e!1080958)))

(declare-fun c!275896 () Bool)

(assert (=> d!514530 (= c!275896 (isEmpty!11569 (list!7432 (charsOf!1904 lt!641264))))))

(assert (=> d!514530 (validRegex!1842 (regex!3255 (get!5424 (getRuleFromTag!345 thiss!17113 rules!1846 (tag!3545 (rule!5161 lt!641264))))))))

(assert (=> d!514530 (= (matchR!2072 (regex!3255 (get!5424 (getRuleFromTag!345 thiss!17113 rules!1846 (tag!3545 (rule!5161 lt!641264))))) (list!7432 (charsOf!1904 lt!641264))) lt!641949)))

(declare-fun b!1688578 () Bool)

(assert (=> b!1688578 (= e!1080958 (matchR!2072 (derivativeStep!1140 (regex!3255 (get!5424 (getRuleFromTag!345 thiss!17113 rules!1846 (tag!3545 (rule!5161 lt!641264))))) (head!3780 (list!7432 (charsOf!1904 lt!641264)))) (tail!2518 (list!7432 (charsOf!1904 lt!641264)))))))

(declare-fun b!1688579 () Bool)

(declare-fun res!757121 () Bool)

(assert (=> b!1688579 (=> res!757121 e!1080964)))

(assert (=> b!1688579 (= res!757121 e!1080959)))

(declare-fun res!757118 () Bool)

(assert (=> b!1688579 (=> (not res!757118) (not e!1080959))))

(assert (=> b!1688579 (= res!757118 lt!641949)))

(declare-fun bm!107964 () Bool)

(assert (=> bm!107964 (= call!107969 (isEmpty!11569 (list!7432 (charsOf!1904 lt!641264))))))

(declare-fun b!1688580 () Bool)

(declare-fun res!757122 () Bool)

(assert (=> b!1688580 (=> (not res!757122) (not e!1080959))))

(assert (=> b!1688580 (= res!757122 (not call!107969))))

(declare-fun b!1688581 () Bool)

(assert (=> b!1688581 (= e!1080960 (not lt!641949))))

(declare-fun b!1688582 () Bool)

(assert (=> b!1688582 (= e!1080958 (nullable!1369 (regex!3255 (get!5424 (getRuleFromTag!345 thiss!17113 rules!1846 (tag!3545 (rule!5161 lt!641264)))))))))

(assert (= (and d!514530 c!275896) b!1688582))

(assert (= (and d!514530 (not c!275896)) b!1688578))

(assert (= (and d!514530 c!275894) b!1688571))

(assert (= (and d!514530 (not c!275894)) b!1688569))

(assert (= (and b!1688569 c!275895) b!1688581))

(assert (= (and b!1688569 (not c!275895)) b!1688574))

(assert (= (and b!1688574 (not res!757120)) b!1688579))

(assert (= (and b!1688579 res!757118) b!1688580))

(assert (= (and b!1688580 res!757122) b!1688573))

(assert (= (and b!1688573 res!757119) b!1688576))

(assert (= (and b!1688579 (not res!757121)) b!1688570))

(assert (= (and b!1688570 res!757115) b!1688575))

(assert (= (and b!1688575 (not res!757117)) b!1688577))

(assert (= (and b!1688577 (not res!757116)) b!1688572))

(assert (= (or b!1688571 b!1688580 b!1688575) bm!107964))

(assert (=> b!1688577 m!2070997))

(declare-fun m!2073679 () Bool)

(assert (=> b!1688577 m!2073679))

(assert (=> b!1688577 m!2073679))

(declare-fun m!2073681 () Bool)

(assert (=> b!1688577 m!2073681))

(assert (=> b!1688573 m!2070997))

(assert (=> b!1688573 m!2073679))

(assert (=> b!1688573 m!2073679))

(assert (=> b!1688573 m!2073681))

(assert (=> b!1688572 m!2070997))

(declare-fun m!2073683 () Bool)

(assert (=> b!1688572 m!2073683))

(declare-fun m!2073685 () Bool)

(assert (=> b!1688582 m!2073685))

(assert (=> d!514530 m!2070997))

(declare-fun m!2073687 () Bool)

(assert (=> d!514530 m!2073687))

(declare-fun m!2073689 () Bool)

(assert (=> d!514530 m!2073689))

(assert (=> b!1688576 m!2070997))

(assert (=> b!1688576 m!2073683))

(assert (=> bm!107964 m!2070997))

(assert (=> bm!107964 m!2073687))

(assert (=> b!1688578 m!2070997))

(assert (=> b!1688578 m!2073683))

(assert (=> b!1688578 m!2073683))

(declare-fun m!2073691 () Bool)

(assert (=> b!1688578 m!2073691))

(assert (=> b!1688578 m!2070997))

(assert (=> b!1688578 m!2073679))

(assert (=> b!1688578 m!2073691))

(assert (=> b!1688578 m!2073679))

(declare-fun m!2073693 () Bool)

(assert (=> b!1688578 m!2073693))

(assert (=> b!1687031 d!514530))

(assert (=> b!1687031 d!514088))

(assert (=> b!1687031 d!514368))

(declare-fun d!514532 () Bool)

(declare-fun e!1080967 () Bool)

(assert (=> d!514532 e!1080967))

(declare-fun res!757127 () Bool)

(assert (=> d!514532 (=> res!757127 e!1080967)))

(declare-fun lt!641953 () Option!3568)

(assert (=> d!514532 (= res!757127 (isEmpty!11573 lt!641953))))

(declare-fun e!1080966 () Option!3568)

(assert (=> d!514532 (= lt!641953 e!1080966)))

(declare-fun c!275897 () Bool)

(assert (=> d!514532 (= c!275897 (and ((_ is Cons!18487) (t!154810 rules!1846)) ((_ is Nil!18487) (t!154810 (t!154810 rules!1846)))))))

(declare-fun lt!641952 () Unit!31839)

(declare-fun lt!641951 () Unit!31839)

(assert (=> d!514532 (= lt!641952 lt!641951)))

(assert (=> d!514532 (isPrefix!1513 (originalCharacters!4069 (h!23889 tokens!457)) (originalCharacters!4069 (h!23889 tokens!457)))))

(assert (=> d!514532 (= lt!641951 (lemmaIsPrefixRefl!1030 (originalCharacters!4069 (h!23889 tokens!457)) (originalCharacters!4069 (h!23889 tokens!457))))))

(assert (=> d!514532 (rulesValidInductive!1052 thiss!17113 (t!154810 rules!1846))))

(assert (=> d!514532 (= (maxPrefix!1444 thiss!17113 (t!154810 rules!1846) (originalCharacters!4069 (h!23889 tokens!457))) lt!641953)))

(declare-fun b!1688583 () Bool)

(declare-fun e!1080965 () Bool)

(assert (=> b!1688583 (= e!1080967 e!1080965)))

(declare-fun res!757128 () Bool)

(assert (=> b!1688583 (=> (not res!757128) (not e!1080965))))

(assert (=> b!1688583 (= res!757128 (isDefined!2917 lt!641953))))

(declare-fun b!1688584 () Bool)

(declare-fun call!107970 () Option!3568)

(assert (=> b!1688584 (= e!1080966 call!107970)))

(declare-fun b!1688585 () Bool)

(assert (=> b!1688585 (= e!1080965 (contains!3250 (t!154810 rules!1846) (rule!5161 (_1!10520 (get!5420 lt!641953)))))))

(declare-fun b!1688586 () Bool)

(declare-fun res!757124 () Bool)

(assert (=> b!1688586 (=> (not res!757124) (not e!1080965))))

(assert (=> b!1688586 (= res!757124 (< (size!14724 (_2!10520 (get!5420 lt!641953))) (size!14724 (originalCharacters!4069 (h!23889 tokens!457)))))))

(declare-fun b!1688587 () Bool)

(declare-fun res!757123 () Bool)

(assert (=> b!1688587 (=> (not res!757123) (not e!1080965))))

(assert (=> b!1688587 (= res!757123 (= (value!102440 (_1!10520 (get!5420 lt!641953))) (apply!5039 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641953)))) (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!641953)))))))))

(declare-fun b!1688588 () Bool)

(declare-fun res!757125 () Bool)

(assert (=> b!1688588 (=> (not res!757125) (not e!1080965))))

(assert (=> b!1688588 (= res!757125 (matchR!2072 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!641953)))) (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641953))))))))

(declare-fun bm!107965 () Bool)

(assert (=> bm!107965 (= call!107970 (maxPrefixOneRule!845 thiss!17113 (h!23888 (t!154810 rules!1846)) (originalCharacters!4069 (h!23889 tokens!457))))))

(declare-fun b!1688589 () Bool)

(declare-fun res!757126 () Bool)

(assert (=> b!1688589 (=> (not res!757126) (not e!1080965))))

(assert (=> b!1688589 (= res!757126 (= (++!5065 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641953)))) (_2!10520 (get!5420 lt!641953))) (originalCharacters!4069 (h!23889 tokens!457))))))

(declare-fun b!1688590 () Bool)

(declare-fun res!757129 () Bool)

(assert (=> b!1688590 (=> (not res!757129) (not e!1080965))))

(assert (=> b!1688590 (= res!757129 (= (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641953)))) (originalCharacters!4069 (_1!10520 (get!5420 lt!641953)))))))

(declare-fun b!1688591 () Bool)

(declare-fun lt!641950 () Option!3568)

(declare-fun lt!641954 () Option!3568)

(assert (=> b!1688591 (= e!1080966 (ite (and ((_ is None!3567) lt!641950) ((_ is None!3567) lt!641954)) None!3567 (ite ((_ is None!3567) lt!641954) lt!641950 (ite ((_ is None!3567) lt!641950) lt!641954 (ite (>= (size!14720 (_1!10520 (v!24888 lt!641950))) (size!14720 (_1!10520 (v!24888 lt!641954)))) lt!641950 lt!641954)))))))

(assert (=> b!1688591 (= lt!641950 call!107970)))

(assert (=> b!1688591 (= lt!641954 (maxPrefix!1444 thiss!17113 (t!154810 (t!154810 rules!1846)) (originalCharacters!4069 (h!23889 tokens!457))))))

(assert (= (and d!514532 c!275897) b!1688584))

(assert (= (and d!514532 (not c!275897)) b!1688591))

(assert (= (or b!1688584 b!1688591) bm!107965))

(assert (= (and d!514532 (not res!757127)) b!1688583))

(assert (= (and b!1688583 res!757128) b!1688590))

(assert (= (and b!1688590 res!757129) b!1688586))

(assert (= (and b!1688586 res!757124) b!1688589))

(assert (= (and b!1688589 res!757126) b!1688587))

(assert (= (and b!1688587 res!757123) b!1688588))

(assert (= (and b!1688588 res!757125) b!1688585))

(declare-fun m!2073695 () Bool)

(assert (=> b!1688588 m!2073695))

(declare-fun m!2073697 () Bool)

(assert (=> b!1688588 m!2073697))

(assert (=> b!1688588 m!2073697))

(declare-fun m!2073699 () Bool)

(assert (=> b!1688588 m!2073699))

(assert (=> b!1688588 m!2073699))

(declare-fun m!2073701 () Bool)

(assert (=> b!1688588 m!2073701))

(assert (=> b!1688590 m!2073695))

(assert (=> b!1688590 m!2073697))

(assert (=> b!1688590 m!2073697))

(assert (=> b!1688590 m!2073699))

(assert (=> b!1688589 m!2073695))

(assert (=> b!1688589 m!2073697))

(assert (=> b!1688589 m!2073697))

(assert (=> b!1688589 m!2073699))

(assert (=> b!1688589 m!2073699))

(declare-fun m!2073703 () Bool)

(assert (=> b!1688589 m!2073703))

(declare-fun m!2073705 () Bool)

(assert (=> bm!107965 m!2073705))

(declare-fun m!2073707 () Bool)

(assert (=> b!1688583 m!2073707))

(assert (=> b!1688585 m!2073695))

(declare-fun m!2073709 () Bool)

(assert (=> b!1688585 m!2073709))

(assert (=> b!1688587 m!2073695))

(declare-fun m!2073711 () Bool)

(assert (=> b!1688587 m!2073711))

(assert (=> b!1688587 m!2073711))

(declare-fun m!2073713 () Bool)

(assert (=> b!1688587 m!2073713))

(assert (=> b!1688586 m!2073695))

(declare-fun m!2073715 () Bool)

(assert (=> b!1688586 m!2073715))

(assert (=> b!1688586 m!2070579))

(declare-fun m!2073717 () Bool)

(assert (=> b!1688591 m!2073717))

(declare-fun m!2073719 () Bool)

(assert (=> d!514532 m!2073719))

(assert (=> d!514532 m!2070585))

(assert (=> d!514532 m!2070587))

(assert (=> d!514532 m!2071711))

(assert (=> b!1686842 d!514532))

(declare-fun b!1688594 () Bool)

(declare-fun res!757131 () Bool)

(declare-fun e!1080968 () Bool)

(assert (=> b!1688594 (=> (not res!757131) (not e!1080968))))

(declare-fun lt!641955 () List!18555)

(assert (=> b!1688594 (= res!757131 (= (size!14724 lt!641955) (+ (size!14724 (t!154808 lt!640654)) (size!14724 lt!640662))))))

(declare-fun d!514534 () Bool)

(assert (=> d!514534 e!1080968))

(declare-fun res!757130 () Bool)

(assert (=> d!514534 (=> (not res!757130) (not e!1080968))))

(assert (=> d!514534 (= res!757130 (= (content!2605 lt!641955) ((_ map or) (content!2605 (t!154808 lt!640654)) (content!2605 lt!640662))))))

(declare-fun e!1080969 () List!18555)

(assert (=> d!514534 (= lt!641955 e!1080969)))

(declare-fun c!275898 () Bool)

(assert (=> d!514534 (= c!275898 ((_ is Nil!18485) (t!154808 lt!640654)))))

(assert (=> d!514534 (= (++!5065 (t!154808 lt!640654) lt!640662) lt!641955)))

(declare-fun b!1688593 () Bool)

(assert (=> b!1688593 (= e!1080969 (Cons!18485 (h!23886 (t!154808 lt!640654)) (++!5065 (t!154808 (t!154808 lt!640654)) lt!640662)))))

(declare-fun b!1688595 () Bool)

(assert (=> b!1688595 (= e!1080968 (or (not (= lt!640662 Nil!18485)) (= lt!641955 (t!154808 lt!640654))))))

(declare-fun b!1688592 () Bool)

(assert (=> b!1688592 (= e!1080969 lt!640662)))

(assert (= (and d!514534 c!275898) b!1688592))

(assert (= (and d!514534 (not c!275898)) b!1688593))

(assert (= (and d!514534 res!757130) b!1688594))

(assert (= (and b!1688594 res!757131) b!1688595))

(declare-fun m!2073721 () Bool)

(assert (=> b!1688594 m!2073721))

(assert (=> b!1688594 m!2072155))

(assert (=> b!1688594 m!2070815))

(declare-fun m!2073723 () Bool)

(assert (=> d!514534 m!2073723))

(assert (=> d!514534 m!2071777))

(assert (=> d!514534 m!2070819))

(declare-fun m!2073725 () Bool)

(assert (=> b!1688593 m!2073725))

(assert (=> b!1686923 d!514534))

(declare-fun d!514536 () Bool)

(declare-fun lt!641956 () Int)

(assert (=> d!514536 (>= lt!641956 0)))

(declare-fun e!1080970 () Int)

(assert (=> d!514536 (= lt!641956 e!1080970)))

(declare-fun c!275899 () Bool)

(assert (=> d!514536 (= c!275899 ((_ is Nil!18485) lt!641003))))

(assert (=> d!514536 (= (size!14724 lt!641003) lt!641956)))

(declare-fun b!1688596 () Bool)

(assert (=> b!1688596 (= e!1080970 0)))

(declare-fun b!1688597 () Bool)

(assert (=> b!1688597 (= e!1080970 (+ 1 (size!14724 (t!154808 lt!641003))))))

(assert (= (and d!514536 c!275899) b!1688596))

(assert (= (and d!514536 (not c!275899)) b!1688597))

(declare-fun m!2073727 () Bool)

(assert (=> b!1688597 m!2073727))

(assert (=> b!1686790 d!514536))

(assert (=> b!1686790 d!514052))

(declare-fun d!514538 () Bool)

(declare-fun lt!641957 () Int)

(assert (=> d!514538 (>= lt!641957 0)))

(declare-fun e!1080971 () Int)

(assert (=> d!514538 (= lt!641957 e!1080971)))

(declare-fun c!275900 () Bool)

(assert (=> d!514538 (= c!275900 ((_ is Nil!18485) lt!640648))))

(assert (=> d!514538 (= (size!14724 lt!640648) lt!641957)))

(declare-fun b!1688598 () Bool)

(assert (=> b!1688598 (= e!1080971 0)))

(declare-fun b!1688599 () Bool)

(assert (=> b!1688599 (= e!1080971 (+ 1 (size!14724 (t!154808 lt!640648))))))

(assert (= (and d!514538 c!275900) b!1688598))

(assert (= (and d!514538 (not c!275900)) b!1688599))

(declare-fun m!2073729 () Bool)

(assert (=> b!1688599 m!2073729))

(assert (=> b!1686790 d!514538))

(declare-fun d!514540 () Bool)

(assert (=> d!514540 (= (list!7432 lt!641221) (list!7436 (c!275419 lt!641221)))))

(declare-fun bs!399803 () Bool)

(assert (= bs!399803 d!514540))

(declare-fun m!2073731 () Bool)

(assert (=> bs!399803 m!2073731))

(assert (=> b!1687021 d!514540))

(declare-fun b!1688602 () Bool)

(declare-fun res!757133 () Bool)

(declare-fun e!1080972 () Bool)

(assert (=> b!1688602 (=> (not res!757133) (not e!1080972))))

(declare-fun lt!641958 () List!18555)

(assert (=> b!1688602 (= res!757133 (= (size!14724 lt!641958) (+ (size!14724 (list!7432 lt!640663)) (size!14724 (list!7432 lt!640642)))))))

(declare-fun d!514542 () Bool)

(assert (=> d!514542 e!1080972))

(declare-fun res!757132 () Bool)

(assert (=> d!514542 (=> (not res!757132) (not e!1080972))))

(assert (=> d!514542 (= res!757132 (= (content!2605 lt!641958) ((_ map or) (content!2605 (list!7432 lt!640663)) (content!2605 (list!7432 lt!640642)))))))

(declare-fun e!1080973 () List!18555)

(assert (=> d!514542 (= lt!641958 e!1080973)))

(declare-fun c!275901 () Bool)

(assert (=> d!514542 (= c!275901 ((_ is Nil!18485) (list!7432 lt!640663)))))

(assert (=> d!514542 (= (++!5065 (list!7432 lt!640663) (list!7432 lt!640642)) lt!641958)))

(declare-fun b!1688601 () Bool)

(assert (=> b!1688601 (= e!1080973 (Cons!18485 (h!23886 (list!7432 lt!640663)) (++!5065 (t!154808 (list!7432 lt!640663)) (list!7432 lt!640642))))))

(declare-fun b!1688603 () Bool)

(assert (=> b!1688603 (= e!1080972 (or (not (= (list!7432 lt!640642) Nil!18485)) (= lt!641958 (list!7432 lt!640663))))))

(declare-fun b!1688600 () Bool)

(assert (=> b!1688600 (= e!1080973 (list!7432 lt!640642))))

(assert (= (and d!514542 c!275901) b!1688600))

(assert (= (and d!514542 (not c!275901)) b!1688601))

(assert (= (and d!514542 res!757132) b!1688602))

(assert (= (and b!1688602 res!757133) b!1688603))

(declare-fun m!2073733 () Bool)

(assert (=> b!1688602 m!2073733))

(assert (=> b!1688602 m!2069753))

(declare-fun m!2073735 () Bool)

(assert (=> b!1688602 m!2073735))

(assert (=> b!1688602 m!2069809))

(declare-fun m!2073737 () Bool)

(assert (=> b!1688602 m!2073737))

(declare-fun m!2073739 () Bool)

(assert (=> d!514542 m!2073739))

(assert (=> d!514542 m!2069753))

(declare-fun m!2073741 () Bool)

(assert (=> d!514542 m!2073741))

(assert (=> d!514542 m!2069809))

(declare-fun m!2073743 () Bool)

(assert (=> d!514542 m!2073743))

(assert (=> b!1688601 m!2069809))

(declare-fun m!2073745 () Bool)

(assert (=> b!1688601 m!2073745))

(assert (=> b!1687021 d!514542))

(assert (=> b!1687021 d!513694))

(assert (=> b!1687021 d!513632))

(declare-fun d!514544 () Bool)

(declare-fun lt!641959 () Int)

(assert (=> d!514544 (= lt!641959 (size!14729 (list!7431 (_1!10519 lt!641139))))))

(assert (=> d!514544 (= lt!641959 (size!14732 (c!275421 (_1!10519 lt!641139))))))

(assert (=> d!514544 (= (size!14725 (_1!10519 lt!641139)) lt!641959)))

(declare-fun bs!399804 () Bool)

(assert (= bs!399804 d!514544))

(assert (=> bs!399804 m!2070793))

(assert (=> bs!399804 m!2070793))

(declare-fun m!2073747 () Bool)

(assert (=> bs!399804 m!2073747))

(declare-fun m!2073749 () Bool)

(assert (=> bs!399804 m!2073749))

(assert (=> d!513678 d!514544))

(declare-fun d!514546 () Bool)

(declare-fun e!1080985 () Bool)

(assert (=> d!514546 e!1080985))

(declare-fun res!757136 () Bool)

(assert (=> d!514546 (=> (not res!757136) (not e!1080985))))

(declare-fun lt!642052 () tuple2!18234)

(declare-fun lexRec!391 (LexerInterface!2884 List!18557 BalanceConc!12260) tuple2!18234)

(assert (=> d!514546 (= res!757136 (= (list!7431 (_1!10519 lt!642052)) (list!7431 (_1!10519 (lexRec!391 thiss!17113 rules!1846 lt!640656)))))))

(declare-fun e!1080983 () tuple2!18234)

(assert (=> d!514546 (= lt!642052 e!1080983)))

(declare-fun c!275908 () Bool)

(declare-fun lt!642030 () Option!3569)

(assert (=> d!514546 (= c!275908 ((_ is Some!3568) lt!642030))))

(declare-fun maxPrefixZipperSequenceV2!286 (LexerInterface!2884 List!18557 BalanceConc!12260 BalanceConc!12260) Option!3569)

(assert (=> d!514546 (= lt!642030 (maxPrefixZipperSequenceV2!286 thiss!17113 rules!1846 lt!640656 lt!640656))))

(declare-fun lt!642056 () Unit!31839)

(declare-fun lt!642032 () Unit!31839)

(assert (=> d!514546 (= lt!642056 lt!642032)))

(declare-fun lt!642045 () List!18555)

(declare-fun lt!642057 () List!18555)

(declare-fun isSuffix!437 (List!18555 List!18555) Bool)

(assert (=> d!514546 (isSuffix!437 lt!642045 (++!5065 lt!642057 lt!642045))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!338 (List!18555 List!18555) Unit!31839)

(assert (=> d!514546 (= lt!642032 (lemmaConcatTwoListThenFSndIsSuffix!338 lt!642057 lt!642045))))

(assert (=> d!514546 (= lt!642045 (list!7432 lt!640656))))

(assert (=> d!514546 (= lt!642057 (list!7432 (BalanceConc!12261 Empty!6158)))))

(assert (=> d!514546 (= (lexTailRecV2!630 thiss!17113 rules!1846 lt!640656 (BalanceConc!12261 Empty!6158) lt!640656 (BalanceConc!12263 Empty!6159)) lt!642052)))

(declare-fun b!1688618 () Bool)

(assert (=> b!1688618 (= e!1080983 (tuple2!18235 (BalanceConc!12263 Empty!6159) lt!640656))))

(declare-fun b!1688619 () Bool)

(declare-fun e!1080982 () tuple2!18234)

(assert (=> b!1688619 (= e!1080982 (tuple2!18235 (BalanceConc!12263 Empty!6159) lt!640656))))

(declare-fun b!1688620 () Bool)

(declare-fun lt!642046 () BalanceConc!12260)

(declare-fun append!580 (BalanceConc!12262 Token!6076) BalanceConc!12262)

(assert (=> b!1688620 (= e!1080983 (lexTailRecV2!630 thiss!17113 rules!1846 lt!640656 lt!642046 (_2!10521 (v!24889 lt!642030)) (append!580 (BalanceConc!12263 Empty!6159) (_1!10521 (v!24889 lt!642030)))))))

(declare-fun lt!642060 () tuple2!18234)

(assert (=> b!1688620 (= lt!642060 (lexRec!391 thiss!17113 rules!1846 (_2!10521 (v!24889 lt!642030))))))

(declare-fun lt!642034 () List!18555)

(assert (=> b!1688620 (= lt!642034 (list!7432 (BalanceConc!12261 Empty!6158)))))

(declare-fun lt!642055 () List!18555)

(assert (=> b!1688620 (= lt!642055 (list!7432 (charsOf!1904 (_1!10521 (v!24889 lt!642030)))))))

(declare-fun lt!642051 () List!18555)

(assert (=> b!1688620 (= lt!642051 (list!7432 (_2!10521 (v!24889 lt!642030))))))

(declare-fun lt!642042 () Unit!31839)

(assert (=> b!1688620 (= lt!642042 (lemmaConcatAssociativity!1056 lt!642034 lt!642055 lt!642051))))

(assert (=> b!1688620 (= (++!5065 (++!5065 lt!642034 lt!642055) lt!642051) (++!5065 lt!642034 (++!5065 lt!642055 lt!642051)))))

(declare-fun lt!642029 () Unit!31839)

(assert (=> b!1688620 (= lt!642029 lt!642042)))

(declare-fun lt!642054 () Option!3569)

(assert (=> b!1688620 (= lt!642054 (maxPrefixZipperSequence!755 thiss!17113 rules!1846 lt!640656))))

(declare-fun c!275909 () Bool)

(assert (=> b!1688620 (= c!275909 ((_ is Some!3568) lt!642054))))

(assert (=> b!1688620 (= (lexRec!391 thiss!17113 rules!1846 lt!640656) e!1080982)))

(declare-fun lt!642047 () Unit!31839)

(declare-fun Unit!31890 () Unit!31839)

(assert (=> b!1688620 (= lt!642047 Unit!31890)))

(declare-fun lt!642041 () List!18558)

(assert (=> b!1688620 (= lt!642041 (list!7431 (BalanceConc!12263 Empty!6159)))))

(declare-fun lt!642043 () List!18558)

(assert (=> b!1688620 (= lt!642043 (Cons!18488 (_1!10521 (v!24889 lt!642030)) Nil!18488))))

(declare-fun lt!642039 () List!18558)

(assert (=> b!1688620 (= lt!642039 (list!7431 (_1!10519 lt!642060)))))

(declare-fun lt!642036 () Unit!31839)

(declare-fun lemmaConcatAssociativity!1059 (List!18558 List!18558 List!18558) Unit!31839)

(assert (=> b!1688620 (= lt!642036 (lemmaConcatAssociativity!1059 lt!642041 lt!642043 lt!642039))))

(assert (=> b!1688620 (= (++!5070 (++!5070 lt!642041 lt!642043) lt!642039) (++!5070 lt!642041 (++!5070 lt!642043 lt!642039)))))

(declare-fun lt!642031 () Unit!31839)

(assert (=> b!1688620 (= lt!642031 lt!642036)))

(declare-fun lt!642033 () List!18555)

(assert (=> b!1688620 (= lt!642033 (++!5065 (list!7432 (BalanceConc!12261 Empty!6158)) (list!7432 (charsOf!1904 (_1!10521 (v!24889 lt!642030))))))))

(declare-fun lt!642053 () List!18555)

(assert (=> b!1688620 (= lt!642053 (list!7432 (_2!10521 (v!24889 lt!642030))))))

(declare-fun lt!642044 () List!18558)

(assert (=> b!1688620 (= lt!642044 (list!7431 (append!580 (BalanceConc!12263 Empty!6159) (_1!10521 (v!24889 lt!642030)))))))

(declare-fun lt!642049 () Unit!31839)

(declare-fun lemmaLexThenLexPrefix!279 (LexerInterface!2884 List!18557 List!18555 List!18555 List!18558 List!18558 List!18555) Unit!31839)

(assert (=> b!1688620 (= lt!642049 (lemmaLexThenLexPrefix!279 thiss!17113 rules!1846 lt!642033 lt!642053 lt!642044 (list!7431 (_1!10519 lt!642060)) (list!7432 (_2!10519 lt!642060))))))

(assert (=> b!1688620 (= (lexList!907 thiss!17113 rules!1846 lt!642033) (tuple2!18243 lt!642044 Nil!18485))))

(declare-fun lt!642048 () Unit!31839)

(assert (=> b!1688620 (= lt!642048 lt!642049)))

(declare-fun lt!642040 () BalanceConc!12260)

(assert (=> b!1688620 (= lt!642040 (++!5066 (BalanceConc!12261 Empty!6158) (charsOf!1904 (_1!10521 (v!24889 lt!642030)))))))

(declare-fun lt!642035 () Option!3569)

(assert (=> b!1688620 (= lt!642035 (maxPrefixZipperSequence!755 thiss!17113 rules!1846 lt!642040))))

(declare-fun c!275910 () Bool)

(assert (=> b!1688620 (= c!275910 ((_ is Some!3568) lt!642035))))

(declare-fun e!1080984 () tuple2!18234)

(assert (=> b!1688620 (= (lexRec!391 thiss!17113 rules!1846 (++!5066 (BalanceConc!12261 Empty!6158) (charsOf!1904 (_1!10521 (v!24889 lt!642030))))) e!1080984)))

(declare-fun lt!642028 () Unit!31839)

(declare-fun Unit!31891 () Unit!31839)

(assert (=> b!1688620 (= lt!642028 Unit!31891)))

(assert (=> b!1688620 (= lt!642046 (++!5066 (BalanceConc!12261 Empty!6158) (charsOf!1904 (_1!10521 (v!24889 lt!642030)))))))

(declare-fun lt!642038 () List!18555)

(assert (=> b!1688620 (= lt!642038 (list!7432 lt!642046))))

(declare-fun lt!642059 () List!18555)

(assert (=> b!1688620 (= lt!642059 (list!7432 (_2!10521 (v!24889 lt!642030))))))

(declare-fun lt!642037 () Unit!31839)

(assert (=> b!1688620 (= lt!642037 (lemmaConcatTwoListThenFSndIsSuffix!338 lt!642038 lt!642059))))

(assert (=> b!1688620 (isSuffix!437 lt!642059 (++!5065 lt!642038 lt!642059))))

(declare-fun lt!642061 () Unit!31839)

(assert (=> b!1688620 (= lt!642061 lt!642037)))

(declare-fun b!1688621 () Bool)

(assert (=> b!1688621 (= e!1080984 (tuple2!18235 (BalanceConc!12263 Empty!6159) lt!642040))))

(declare-fun b!1688622 () Bool)

(assert (=> b!1688622 (= e!1080985 (= (list!7432 (_2!10519 lt!642052)) (list!7432 (_2!10519 (lexRec!391 thiss!17113 rules!1846 lt!640656)))))))

(declare-fun b!1688623 () Bool)

(declare-fun lt!642050 () tuple2!18234)

(assert (=> b!1688623 (= lt!642050 (lexRec!391 thiss!17113 rules!1846 (_2!10521 (v!24889 lt!642054))))))

(assert (=> b!1688623 (= e!1080982 (tuple2!18235 (prepend!851 (_1!10519 lt!642050) (_1!10521 (v!24889 lt!642054))) (_2!10519 lt!642050)))))

(declare-fun lt!642058 () tuple2!18234)

(declare-fun b!1688624 () Bool)

(assert (=> b!1688624 (= lt!642058 (lexRec!391 thiss!17113 rules!1846 (_2!10521 (v!24889 lt!642035))))))

(assert (=> b!1688624 (= e!1080984 (tuple2!18235 (prepend!851 (_1!10519 lt!642058) (_1!10521 (v!24889 lt!642035))) (_2!10519 lt!642058)))))

(assert (= (and d!514546 c!275908) b!1688620))

(assert (= (and d!514546 (not c!275908)) b!1688618))

(assert (= (and b!1688620 c!275909) b!1688623))

(assert (= (and b!1688620 (not c!275909)) b!1688619))

(assert (= (and b!1688620 c!275910) b!1688624))

(assert (= (and b!1688620 (not c!275910)) b!1688621))

(assert (= (and d!514546 res!757136) b!1688622))

(declare-fun m!2073751 () Bool)

(assert (=> b!1688624 m!2073751))

(declare-fun m!2073753 () Bool)

(assert (=> b!1688624 m!2073753))

(declare-fun m!2073755 () Bool)

(assert (=> b!1688623 m!2073755))

(declare-fun m!2073757 () Bool)

(assert (=> b!1688623 m!2073757))

(declare-fun m!2073759 () Bool)

(assert (=> b!1688622 m!2073759))

(declare-fun m!2073761 () Bool)

(assert (=> b!1688622 m!2073761))

(declare-fun m!2073763 () Bool)

(assert (=> b!1688622 m!2073763))

(declare-fun m!2073765 () Bool)

(assert (=> b!1688620 m!2073765))

(declare-fun m!2073767 () Bool)

(assert (=> b!1688620 m!2073767))

(assert (=> b!1688620 m!2073765))

(declare-fun m!2073769 () Bool)

(assert (=> b!1688620 m!2073769))

(declare-fun m!2073771 () Bool)

(assert (=> b!1688620 m!2073771))

(declare-fun m!2073773 () Bool)

(assert (=> b!1688620 m!2073773))

(declare-fun m!2073775 () Bool)

(assert (=> b!1688620 m!2073775))

(assert (=> b!1688620 m!2073773))

(declare-fun m!2073777 () Bool)

(assert (=> b!1688620 m!2073777))

(declare-fun m!2073779 () Bool)

(assert (=> b!1688620 m!2073779))

(declare-fun m!2073781 () Bool)

(assert (=> b!1688620 m!2073781))

(declare-fun m!2073783 () Bool)

(assert (=> b!1688620 m!2073783))

(declare-fun m!2073785 () Bool)

(assert (=> b!1688620 m!2073785))

(assert (=> b!1688620 m!2073779))

(declare-fun m!2073787 () Bool)

(assert (=> b!1688620 m!2073787))

(declare-fun m!2073789 () Bool)

(assert (=> b!1688620 m!2073789))

(declare-fun m!2073791 () Bool)

(assert (=> b!1688620 m!2073791))

(declare-fun m!2073793 () Bool)

(assert (=> b!1688620 m!2073793))

(declare-fun m!2073795 () Bool)

(assert (=> b!1688620 m!2073795))

(assert (=> b!1688620 m!2073765))

(declare-fun m!2073797 () Bool)

(assert (=> b!1688620 m!2073797))

(assert (=> b!1688620 m!2073785))

(assert (=> b!1688620 m!2073791))

(declare-fun m!2073799 () Bool)

(assert (=> b!1688620 m!2073799))

(assert (=> b!1688620 m!2073767))

(declare-fun m!2073801 () Bool)

(assert (=> b!1688620 m!2073801))

(declare-fun m!2073803 () Bool)

(assert (=> b!1688620 m!2073803))

(declare-fun m!2073805 () Bool)

(assert (=> b!1688620 m!2073805))

(assert (=> b!1688620 m!2070731))

(declare-fun m!2073807 () Bool)

(assert (=> b!1688620 m!2073807))

(declare-fun m!2073809 () Bool)

(assert (=> b!1688620 m!2073809))

(assert (=> b!1688620 m!2073783))

(declare-fun m!2073811 () Bool)

(assert (=> b!1688620 m!2073811))

(assert (=> b!1688620 m!2073805))

(declare-fun m!2073813 () Bool)

(assert (=> b!1688620 m!2073813))

(declare-fun m!2073815 () Bool)

(assert (=> b!1688620 m!2073815))

(declare-fun m!2073817 () Bool)

(assert (=> b!1688620 m!2073817))

(assert (=> b!1688620 m!2070731))

(declare-fun m!2073819 () Bool)

(assert (=> b!1688620 m!2073819))

(declare-fun m!2073821 () Bool)

(assert (=> b!1688620 m!2073821))

(declare-fun m!2073823 () Bool)

(assert (=> b!1688620 m!2073823))

(assert (=> b!1688620 m!2073815))

(assert (=> b!1688620 m!2073803))

(assert (=> b!1688620 m!2073807))

(assert (=> b!1688620 m!2073803))

(assert (=> b!1688620 m!2073761))

(declare-fun m!2073825 () Bool)

(assert (=> b!1688620 m!2073825))

(assert (=> d!514546 m!2073761))

(declare-fun m!2073827 () Bool)

(assert (=> d!514546 m!2073827))

(declare-fun m!2073829 () Bool)

(assert (=> d!514546 m!2073829))

(assert (=> d!514546 m!2070731))

(declare-fun m!2073831 () Bool)

(assert (=> d!514546 m!2073831))

(assert (=> d!514546 m!2073831))

(declare-fun m!2073833 () Bool)

(assert (=> d!514546 m!2073833))

(declare-fun m!2073835 () Bool)

(assert (=> d!514546 m!2073835))

(declare-fun m!2073837 () Bool)

(assert (=> d!514546 m!2073837))

(assert (=> d!514546 m!2069747))

(assert (=> d!513678 d!514546))

(declare-fun d!514548 () Bool)

(declare-fun lt!642062 () Bool)

(assert (=> d!514548 (= lt!642062 (select (content!2610 rules!1846) (rule!5161 (_1!10520 (get!5420 lt!641057)))))))

(declare-fun e!1080986 () Bool)

(assert (=> d!514548 (= lt!642062 e!1080986)))

(declare-fun res!757137 () Bool)

(assert (=> d!514548 (=> (not res!757137) (not e!1080986))))

(assert (=> d!514548 (= res!757137 ((_ is Cons!18487) rules!1846))))

(assert (=> d!514548 (= (contains!3250 rules!1846 (rule!5161 (_1!10520 (get!5420 lt!641057)))) lt!642062)))

(declare-fun b!1688625 () Bool)

(declare-fun e!1080987 () Bool)

(assert (=> b!1688625 (= e!1080986 e!1080987)))

(declare-fun res!757138 () Bool)

(assert (=> b!1688625 (=> res!757138 e!1080987)))

(assert (=> b!1688625 (= res!757138 (= (h!23888 rules!1846) (rule!5161 (_1!10520 (get!5420 lt!641057)))))))

(declare-fun b!1688626 () Bool)

(assert (=> b!1688626 (= e!1080987 (contains!3250 (t!154810 rules!1846) (rule!5161 (_1!10520 (get!5420 lt!641057)))))))

(assert (= (and d!514548 res!757137) b!1688625))

(assert (= (and b!1688625 (not res!757138)) b!1688626))

(assert (=> d!514548 m!2073481))

(declare-fun m!2073839 () Bool)

(assert (=> d!514548 m!2073839))

(declare-fun m!2073841 () Bool)

(assert (=> b!1688626 m!2073841))

(assert (=> b!1686845 d!514548))

(assert (=> b!1686845 d!514178))

(declare-fun d!514550 () Bool)

(assert (=> d!514550 (= (list!7432 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (value!102440 (h!23889 tokens!457)))) (list!7436 (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (value!102440 (h!23889 tokens!457))))))))

(declare-fun bs!399805 () Bool)

(assert (= bs!399805 d!514550))

(declare-fun m!2073843 () Bool)

(assert (=> bs!399805 m!2073843))

(assert (=> b!1686869 d!514550))

(declare-fun d!514552 () Bool)

(declare-fun res!757139 () Bool)

(declare-fun e!1080989 () Bool)

(assert (=> d!514552 (=> res!757139 e!1080989)))

(assert (=> d!514552 (= res!757139 (or (not ((_ is Cons!18488) (Cons!18488 (h!23889 (t!154811 tokens!457)) (t!154811 (t!154811 tokens!457))))) (not ((_ is Cons!18488) (t!154811 (Cons!18488 (h!23889 (t!154811 tokens!457)) (t!154811 (t!154811 tokens!457))))))))))

(assert (=> d!514552 (= (tokensListTwoByTwoPredicateSeparableList!577 thiss!17113 (Cons!18488 (h!23889 (t!154811 tokens!457)) (t!154811 (t!154811 tokens!457))) rules!1846) e!1080989)))

(declare-fun b!1688627 () Bool)

(declare-fun e!1080988 () Bool)

(assert (=> b!1688627 (= e!1080989 e!1080988)))

(declare-fun res!757140 () Bool)

(assert (=> b!1688627 (=> (not res!757140) (not e!1080988))))

(assert (=> b!1688627 (= res!757140 (separableTokensPredicate!824 thiss!17113 (h!23889 (Cons!18488 (h!23889 (t!154811 tokens!457)) (t!154811 (t!154811 tokens!457)))) (h!23889 (t!154811 (Cons!18488 (h!23889 (t!154811 tokens!457)) (t!154811 (t!154811 tokens!457))))) rules!1846))))

(declare-fun lt!642067 () Unit!31839)

(declare-fun Unit!31892 () Unit!31839)

(assert (=> b!1688627 (= lt!642067 Unit!31892)))

(assert (=> b!1688627 (> (size!14726 (charsOf!1904 (h!23889 (t!154811 (Cons!18488 (h!23889 (t!154811 tokens!457)) (t!154811 (t!154811 tokens!457))))))) 0)))

(declare-fun lt!642063 () Unit!31839)

(declare-fun Unit!31893 () Unit!31839)

(assert (=> b!1688627 (= lt!642063 Unit!31893)))

(assert (=> b!1688627 (rulesProduceIndividualToken!1532 thiss!17113 rules!1846 (h!23889 (t!154811 (Cons!18488 (h!23889 (t!154811 tokens!457)) (t!154811 (t!154811 tokens!457))))))))

(declare-fun lt!642065 () Unit!31839)

(declare-fun Unit!31894 () Unit!31839)

(assert (=> b!1688627 (= lt!642065 Unit!31894)))

(assert (=> b!1688627 (rulesProduceIndividualToken!1532 thiss!17113 rules!1846 (h!23889 (Cons!18488 (h!23889 (t!154811 tokens!457)) (t!154811 (t!154811 tokens!457)))))))

(declare-fun lt!642066 () Unit!31839)

(declare-fun lt!642068 () Unit!31839)

(assert (=> b!1688627 (= lt!642066 lt!642068)))

(assert (=> b!1688627 (rulesProduceIndividualToken!1532 thiss!17113 rules!1846 (h!23889 (t!154811 (Cons!18488 (h!23889 (t!154811 tokens!457)) (t!154811 (t!154811 tokens!457))))))))

(assert (=> b!1688627 (= lt!642068 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!642 thiss!17113 rules!1846 (Cons!18488 (h!23889 (t!154811 tokens!457)) (t!154811 (t!154811 tokens!457))) (h!23889 (t!154811 (Cons!18488 (h!23889 (t!154811 tokens!457)) (t!154811 (t!154811 tokens!457)))))))))

(declare-fun lt!642064 () Unit!31839)

(declare-fun lt!642069 () Unit!31839)

(assert (=> b!1688627 (= lt!642064 lt!642069)))

(assert (=> b!1688627 (rulesProduceIndividualToken!1532 thiss!17113 rules!1846 (h!23889 (Cons!18488 (h!23889 (t!154811 tokens!457)) (t!154811 (t!154811 tokens!457)))))))

(assert (=> b!1688627 (= lt!642069 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!642 thiss!17113 rules!1846 (Cons!18488 (h!23889 (t!154811 tokens!457)) (t!154811 (t!154811 tokens!457))) (h!23889 (Cons!18488 (h!23889 (t!154811 tokens!457)) (t!154811 (t!154811 tokens!457))))))))

(declare-fun b!1688628 () Bool)

(assert (=> b!1688628 (= e!1080988 (tokensListTwoByTwoPredicateSeparableList!577 thiss!17113 (Cons!18488 (h!23889 (t!154811 (Cons!18488 (h!23889 (t!154811 tokens!457)) (t!154811 (t!154811 tokens!457))))) (t!154811 (t!154811 (Cons!18488 (h!23889 (t!154811 tokens!457)) (t!154811 (t!154811 tokens!457)))))) rules!1846))))

(assert (= (and d!514552 (not res!757139)) b!1688627))

(assert (= (and b!1688627 res!757140) b!1688628))

(declare-fun m!2073845 () Bool)

(assert (=> b!1688627 m!2073845))

(declare-fun m!2073847 () Bool)

(assert (=> b!1688627 m!2073847))

(declare-fun m!2073849 () Bool)

(assert (=> b!1688627 m!2073849))

(declare-fun m!2073851 () Bool)

(assert (=> b!1688627 m!2073851))

(declare-fun m!2073853 () Bool)

(assert (=> b!1688627 m!2073853))

(declare-fun m!2073855 () Bool)

(assert (=> b!1688627 m!2073855))

(assert (=> b!1688627 m!2073851))

(declare-fun m!2073857 () Bool)

(assert (=> b!1688627 m!2073857))

(declare-fun m!2073859 () Bool)

(assert (=> b!1688628 m!2073859))

(assert (=> b!1686932 d!514552))

(declare-fun d!514554 () Bool)

(assert (=> d!514554 (= (isDefined!2917 (maxPrefixZipper!370 thiss!17113 rules!1846 (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))) (not (isEmpty!11573 (maxPrefixZipper!370 thiss!17113 rules!1846 (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457))))))))))

(declare-fun bs!399806 () Bool)

(assert (= bs!399806 d!514554))

(assert (=> bs!399806 m!2070091))

(declare-fun m!2073861 () Bool)

(assert (=> bs!399806 m!2073861))

(assert (=> d!513522 d!514554))

(assert (=> d!513522 d!514324))

(declare-fun d!514556 () Bool)

(assert (=> d!514556 (isPrefix!1513 lt!640756 lt!640758)))

(declare-fun lt!642070 () Unit!31839)

(assert (=> d!514556 (= lt!642070 (choose!10218 lt!640756 lt!640758))))

(assert (=> d!514556 (= (lemmaIsPrefixRefl!1030 lt!640756 lt!640758) lt!642070)))

(declare-fun bs!399807 () Bool)

(assert (= bs!399807 d!514556))

(assert (=> bs!399807 m!2070099))

(declare-fun m!2073863 () Bool)

(assert (=> bs!399807 m!2073863))

(assert (=> d!513522 d!514556))

(assert (=> d!513522 d!514510))

(declare-fun b!1688631 () Bool)

(declare-fun e!1080991 () Bool)

(assert (=> b!1688631 (= e!1080991 (isPrefix!1513 (tail!2518 lt!640756) (tail!2518 lt!640758)))))

(declare-fun b!1688629 () Bool)

(declare-fun e!1080992 () Bool)

(assert (=> b!1688629 (= e!1080992 e!1080991)))

(declare-fun res!757142 () Bool)

(assert (=> b!1688629 (=> (not res!757142) (not e!1080991))))

(assert (=> b!1688629 (= res!757142 (not ((_ is Nil!18485) lt!640758)))))

(declare-fun d!514558 () Bool)

(declare-fun e!1080990 () Bool)

(assert (=> d!514558 e!1080990))

(declare-fun res!757143 () Bool)

(assert (=> d!514558 (=> res!757143 e!1080990)))

(declare-fun lt!642071 () Bool)

(assert (=> d!514558 (= res!757143 (not lt!642071))))

(assert (=> d!514558 (= lt!642071 e!1080992)))

(declare-fun res!757144 () Bool)

(assert (=> d!514558 (=> res!757144 e!1080992)))

(assert (=> d!514558 (= res!757144 ((_ is Nil!18485) lt!640756))))

(assert (=> d!514558 (= (isPrefix!1513 lt!640756 lt!640758) lt!642071)))

(declare-fun b!1688630 () Bool)

(declare-fun res!757141 () Bool)

(assert (=> b!1688630 (=> (not res!757141) (not e!1080991))))

(assert (=> b!1688630 (= res!757141 (= (head!3780 lt!640756) (head!3780 lt!640758)))))

(declare-fun b!1688632 () Bool)

(assert (=> b!1688632 (= e!1080990 (>= (size!14724 lt!640758) (size!14724 lt!640756)))))

(assert (= (and d!514558 (not res!757144)) b!1688629))

(assert (= (and b!1688629 res!757142) b!1688630))

(assert (= (and b!1688630 res!757141) b!1688631))

(assert (= (and d!514558 (not res!757143)) b!1688632))

(declare-fun m!2073865 () Bool)

(assert (=> b!1688631 m!2073865))

(declare-fun m!2073867 () Bool)

(assert (=> b!1688631 m!2073867))

(assert (=> b!1688631 m!2073865))

(assert (=> b!1688631 m!2073867))

(declare-fun m!2073869 () Bool)

(assert (=> b!1688631 m!2073869))

(declare-fun m!2073871 () Bool)

(assert (=> b!1688630 m!2073871))

(declare-fun m!2073873 () Bool)

(assert (=> b!1688630 m!2073873))

(declare-fun m!2073875 () Bool)

(assert (=> b!1688632 m!2073875))

(declare-fun m!2073877 () Bool)

(assert (=> b!1688632 m!2073877))

(assert (=> d!513522 d!514558))

(assert (=> d!513522 d!514364))

(assert (=> d!513522 d!514326))

(declare-fun d!514560 () Bool)

(declare-fun lt!642072 () Bool)

(assert (=> d!514560 (= lt!642072 (isEmpty!11574 (list!7431 (_1!10519 lt!641139))))))

(assert (=> d!514560 (= lt!642072 (isEmpty!11575 (c!275421 (_1!10519 lt!641139))))))

(assert (=> d!514560 (= (isEmpty!11562 (_1!10519 lt!641139)) lt!642072)))

(declare-fun bs!399808 () Bool)

(assert (= bs!399808 d!514560))

(assert (=> bs!399808 m!2070793))

(assert (=> bs!399808 m!2070793))

(declare-fun m!2073879 () Bool)

(assert (=> bs!399808 m!2073879))

(declare-fun m!2073881 () Bool)

(assert (=> bs!399808 m!2073881))

(assert (=> b!1686919 d!514560))

(declare-fun d!514562 () Bool)

(assert (=> d!514562 (= (isEmpty!11573 lt!641105) (not ((_ is Some!3567) lt!641105)))))

(assert (=> d!513664 d!514562))

(declare-fun b!1688635 () Bool)

(declare-fun e!1080994 () Bool)

(assert (=> b!1688635 (= e!1080994 (isPrefix!1513 (tail!2518 lt!640658) (tail!2518 lt!640658)))))

(declare-fun b!1688633 () Bool)

(declare-fun e!1080995 () Bool)

(assert (=> b!1688633 (= e!1080995 e!1080994)))

(declare-fun res!757146 () Bool)

(assert (=> b!1688633 (=> (not res!757146) (not e!1080994))))

(assert (=> b!1688633 (= res!757146 (not ((_ is Nil!18485) lt!640658)))))

(declare-fun d!514564 () Bool)

(declare-fun e!1080993 () Bool)

(assert (=> d!514564 e!1080993))

(declare-fun res!757147 () Bool)

(assert (=> d!514564 (=> res!757147 e!1080993)))

(declare-fun lt!642073 () Bool)

(assert (=> d!514564 (= res!757147 (not lt!642073))))

(assert (=> d!514564 (= lt!642073 e!1080995)))

(declare-fun res!757148 () Bool)

(assert (=> d!514564 (=> res!757148 e!1080995)))

(assert (=> d!514564 (= res!757148 ((_ is Nil!18485) lt!640658))))

(assert (=> d!514564 (= (isPrefix!1513 lt!640658 lt!640658) lt!642073)))

(declare-fun b!1688634 () Bool)

(declare-fun res!757145 () Bool)

(assert (=> b!1688634 (=> (not res!757145) (not e!1080994))))

(assert (=> b!1688634 (= res!757145 (= (head!3780 lt!640658) (head!3780 lt!640658)))))

(declare-fun b!1688636 () Bool)

(assert (=> b!1688636 (= e!1080993 (>= (size!14724 lt!640658) (size!14724 lt!640658)))))

(assert (= (and d!514564 (not res!757148)) b!1688633))

(assert (= (and b!1688633 res!757146) b!1688634))

(assert (= (and b!1688634 res!757145) b!1688635))

(assert (= (and d!514564 (not res!757147)) b!1688636))

(declare-fun m!2073883 () Bool)

(assert (=> b!1688635 m!2073883))

(assert (=> b!1688635 m!2073883))

(assert (=> b!1688635 m!2073883))

(assert (=> b!1688635 m!2073883))

(declare-fun m!2073885 () Bool)

(assert (=> b!1688635 m!2073885))

(declare-fun m!2073887 () Bool)

(assert (=> b!1688634 m!2073887))

(assert (=> b!1688634 m!2073887))

(assert (=> b!1688636 m!2070715))

(assert (=> b!1688636 m!2070715))

(assert (=> d!513664 d!514564))

(declare-fun d!514566 () Bool)

(assert (=> d!514566 (isPrefix!1513 lt!640658 lt!640658)))

(declare-fun lt!642074 () Unit!31839)

(assert (=> d!514566 (= lt!642074 (choose!10218 lt!640658 lt!640658))))

(assert (=> d!514566 (= (lemmaIsPrefixRefl!1030 lt!640658 lt!640658) lt!642074)))

(declare-fun bs!399809 () Bool)

(assert (= bs!399809 d!514566))

(assert (=> bs!399809 m!2070721))

(declare-fun m!2073889 () Bool)

(assert (=> bs!399809 m!2073889))

(assert (=> d!513664 d!514566))

(assert (=> d!513664 d!514364))

(declare-fun d!514568 () Bool)

(assert (=> d!514568 (= (list!7432 lt!641175) (list!7436 (c!275419 lt!641175)))))

(declare-fun bs!399810 () Bool)

(assert (= bs!399810 d!514568))

(declare-fun m!2073891 () Bool)

(assert (=> bs!399810 m!2073891))

(assert (=> d!513714 d!514568))

(declare-fun d!514570 () Bool)

(declare-fun e!1080998 () Bool)

(assert (=> d!514570 e!1080998))

(declare-fun res!757151 () Bool)

(assert (=> d!514570 (=> (not res!757151) (not e!1080998))))

(declare-fun lt!642077 () BalanceConc!12260)

(assert (=> d!514570 (= res!757151 (= (list!7432 lt!642077) (Cons!18485 (apply!5035 (charsOf!1904 (h!23889 (t!154811 tokens!457))) 0) Nil!18485)))))

(declare-fun choose!10220 (C!9340) BalanceConc!12260)

(assert (=> d!514570 (= lt!642077 (choose!10220 (apply!5035 (charsOf!1904 (h!23889 (t!154811 tokens!457))) 0)))))

(assert (=> d!514570 (= (singleton!803 (apply!5035 (charsOf!1904 (h!23889 (t!154811 tokens!457))) 0)) lt!642077)))

(declare-fun b!1688639 () Bool)

(assert (=> b!1688639 (= e!1080998 (isBalanced!1930 (c!275419 lt!642077)))))

(assert (= (and d!514570 res!757151) b!1688639))

(declare-fun m!2073893 () Bool)

(assert (=> d!514570 m!2073893))

(assert (=> d!514570 m!2069833))

(declare-fun m!2073895 () Bool)

(assert (=> d!514570 m!2073895))

(declare-fun m!2073897 () Bool)

(assert (=> b!1688639 m!2073897))

(assert (=> d!513714 d!514570))

(declare-fun d!514572 () Bool)

(declare-fun lt!642078 () Int)

(assert (=> d!514572 (>= lt!642078 0)))

(declare-fun e!1080999 () Int)

(assert (=> d!514572 (= lt!642078 e!1080999)))

(declare-fun c!275911 () Bool)

(assert (=> d!514572 (= c!275911 ((_ is Nil!18485) (_2!10520 (get!5420 lt!641105))))))

(assert (=> d!514572 (= (size!14724 (_2!10520 (get!5420 lt!641105))) lt!642078)))

(declare-fun b!1688640 () Bool)

(assert (=> b!1688640 (= e!1080999 0)))

(declare-fun b!1688641 () Bool)

(assert (=> b!1688641 (= e!1080999 (+ 1 (size!14724 (t!154808 (_2!10520 (get!5420 lt!641105))))))))

(assert (= (and d!514572 c!275911) b!1688640))

(assert (= (and d!514572 (not c!275911)) b!1688641))

(declare-fun m!2073899 () Bool)

(assert (=> b!1688641 m!2073899))

(assert (=> b!1686879 d!514572))

(assert (=> b!1686879 d!514280))

(declare-fun d!514574 () Bool)

(declare-fun lt!642079 () Int)

(assert (=> d!514574 (>= lt!642079 0)))

(declare-fun e!1081000 () Int)

(assert (=> d!514574 (= lt!642079 e!1081000)))

(declare-fun c!275912 () Bool)

(assert (=> d!514574 (= c!275912 ((_ is Nil!18485) lt!640658))))

(assert (=> d!514574 (= (size!14724 lt!640658) lt!642079)))

(declare-fun b!1688642 () Bool)

(assert (=> b!1688642 (= e!1081000 0)))

(declare-fun b!1688643 () Bool)

(assert (=> b!1688643 (= e!1081000 (+ 1 (size!14724 (t!154808 lt!640658))))))

(assert (= (and d!514574 c!275912) b!1688642))

(assert (= (and d!514574 (not c!275912)) b!1688643))

(declare-fun m!2073901 () Bool)

(assert (=> b!1688643 m!2073901))

(assert (=> b!1686879 d!514574))

(declare-fun b!1688644 () Bool)

(declare-fun res!757156 () Bool)

(declare-fun e!1081003 () Bool)

(assert (=> b!1688644 (=> (not res!757156) (not e!1081003))))

(declare-fun lt!642081 () Option!3568)

(assert (=> b!1688644 (= res!757156 (= (value!102440 (_1!10520 (get!5420 lt!642081))) (apply!5039 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!642081)))) (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!642081)))))))))

(declare-fun b!1688645 () Bool)

(declare-fun e!1081002 () Bool)

(assert (=> b!1688645 (= e!1081002 (matchR!2072 (regex!3255 (h!23888 rules!1846)) (_1!10524 (findLongestMatchInner!376 (regex!3255 (h!23888 rules!1846)) Nil!18485 (size!14724 Nil!18485) lt!640654 lt!640654 (size!14724 lt!640654)))))))

(declare-fun b!1688646 () Bool)

(declare-fun e!1081001 () Bool)

(assert (=> b!1688646 (= e!1081001 e!1081003)))

(declare-fun res!757157 () Bool)

(assert (=> b!1688646 (=> (not res!757157) (not e!1081003))))

(assert (=> b!1688646 (= res!757157 (matchR!2072 (regex!3255 (h!23888 rules!1846)) (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!642081))))))))

(declare-fun b!1688647 () Bool)

(declare-fun res!757158 () Bool)

(assert (=> b!1688647 (=> (not res!757158) (not e!1081003))))

(assert (=> b!1688647 (= res!757158 (< (size!14724 (_2!10520 (get!5420 lt!642081))) (size!14724 lt!640654)))))

(declare-fun b!1688648 () Bool)

(assert (=> b!1688648 (= e!1081003 (= (size!14720 (_1!10520 (get!5420 lt!642081))) (size!14724 (originalCharacters!4069 (_1!10520 (get!5420 lt!642081))))))))

(declare-fun b!1688649 () Bool)

(declare-fun e!1081004 () Option!3568)

(declare-fun lt!642083 () tuple2!18244)

(assert (=> b!1688649 (= e!1081004 (Some!3567 (tuple2!18237 (Token!6077 (apply!5039 (transformation!3255 (h!23888 rules!1846)) (seqFromList!2247 (_1!10524 lt!642083))) (h!23888 rules!1846) (size!14726 (seqFromList!2247 (_1!10524 lt!642083))) (_1!10524 lt!642083)) (_2!10524 lt!642083))))))

(declare-fun lt!642084 () Unit!31839)

(assert (=> b!1688649 (= lt!642084 (longestMatchIsAcceptedByMatchOrIsEmpty!360 (regex!3255 (h!23888 rules!1846)) lt!640654))))

(declare-fun res!757152 () Bool)

(assert (=> b!1688649 (= res!757152 (isEmpty!11569 (_1!10524 (findLongestMatchInner!376 (regex!3255 (h!23888 rules!1846)) Nil!18485 (size!14724 Nil!18485) lt!640654 lt!640654 (size!14724 lt!640654)))))))

(assert (=> b!1688649 (=> res!757152 e!1081002)))

(assert (=> b!1688649 e!1081002))

(declare-fun lt!642082 () Unit!31839)

(assert (=> b!1688649 (= lt!642082 lt!642084)))

(declare-fun lt!642080 () Unit!31839)

(assert (=> b!1688649 (= lt!642080 (lemmaSemiInverse!442 (transformation!3255 (h!23888 rules!1846)) (seqFromList!2247 (_1!10524 lt!642083))))))

(declare-fun b!1688650 () Bool)

(declare-fun res!757155 () Bool)

(assert (=> b!1688650 (=> (not res!757155) (not e!1081003))))

(assert (=> b!1688650 (= res!757155 (= (rule!5161 (_1!10520 (get!5420 lt!642081))) (h!23888 rules!1846)))))

(declare-fun b!1688651 () Bool)

(declare-fun res!757154 () Bool)

(assert (=> b!1688651 (=> (not res!757154) (not e!1081003))))

(assert (=> b!1688651 (= res!757154 (= (++!5065 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!642081)))) (_2!10520 (get!5420 lt!642081))) lt!640654))))

(declare-fun b!1688652 () Bool)

(assert (=> b!1688652 (= e!1081004 None!3567)))

(declare-fun d!514576 () Bool)

(assert (=> d!514576 e!1081001))

(declare-fun res!757153 () Bool)

(assert (=> d!514576 (=> res!757153 e!1081001)))

(assert (=> d!514576 (= res!757153 (isEmpty!11573 lt!642081))))

(assert (=> d!514576 (= lt!642081 e!1081004)))

(declare-fun c!275913 () Bool)

(assert (=> d!514576 (= c!275913 (isEmpty!11569 (_1!10524 lt!642083)))))

(assert (=> d!514576 (= lt!642083 (findLongestMatch!303 (regex!3255 (h!23888 rules!1846)) lt!640654))))

(assert (=> d!514576 (ruleValid!768 thiss!17113 (h!23888 rules!1846))))

(assert (=> d!514576 (= (maxPrefixOneRule!845 thiss!17113 (h!23888 rules!1846) lt!640654) lt!642081)))

(assert (= (and d!514576 c!275913) b!1688652))

(assert (= (and d!514576 (not c!275913)) b!1688649))

(assert (= (and b!1688649 (not res!757152)) b!1688645))

(assert (= (and d!514576 (not res!757153)) b!1688646))

(assert (= (and b!1688646 res!757157) b!1688651))

(assert (= (and b!1688651 res!757154) b!1688647))

(assert (= (and b!1688647 res!757158) b!1688650))

(assert (= (and b!1688650 res!757155) b!1688644))

(assert (= (and b!1688644 res!757156) b!1688648))

(assert (=> b!1688645 m!2071635))

(assert (=> b!1688645 m!2070417))

(assert (=> b!1688645 m!2071635))

(assert (=> b!1688645 m!2070417))

(declare-fun m!2073903 () Bool)

(assert (=> b!1688645 m!2073903))

(declare-fun m!2073905 () Bool)

(assert (=> b!1688645 m!2073905))

(declare-fun m!2073907 () Bool)

(assert (=> b!1688648 m!2073907))

(declare-fun m!2073909 () Bool)

(assert (=> b!1688648 m!2073909))

(assert (=> b!1688649 m!2070417))

(declare-fun m!2073911 () Bool)

(assert (=> b!1688649 m!2073911))

(assert (=> b!1688649 m!2071635))

(declare-fun m!2073913 () Bool)

(assert (=> b!1688649 m!2073913))

(declare-fun m!2073915 () Bool)

(assert (=> b!1688649 m!2073915))

(assert (=> b!1688649 m!2071635))

(assert (=> b!1688649 m!2070417))

(assert (=> b!1688649 m!2073903))

(assert (=> b!1688649 m!2073913))

(declare-fun m!2073917 () Bool)

(assert (=> b!1688649 m!2073917))

(assert (=> b!1688649 m!2073913))

(declare-fun m!2073919 () Bool)

(assert (=> b!1688649 m!2073919))

(assert (=> b!1688649 m!2073913))

(declare-fun m!2073921 () Bool)

(assert (=> b!1688649 m!2073921))

(assert (=> b!1688647 m!2073907))

(declare-fun m!2073923 () Bool)

(assert (=> b!1688647 m!2073923))

(assert (=> b!1688647 m!2070417))

(assert (=> b!1688646 m!2073907))

(declare-fun m!2073925 () Bool)

(assert (=> b!1688646 m!2073925))

(assert (=> b!1688646 m!2073925))

(declare-fun m!2073927 () Bool)

(assert (=> b!1688646 m!2073927))

(assert (=> b!1688646 m!2073927))

(declare-fun m!2073929 () Bool)

(assert (=> b!1688646 m!2073929))

(assert (=> b!1688651 m!2073907))

(assert (=> b!1688651 m!2073925))

(assert (=> b!1688651 m!2073925))

(assert (=> b!1688651 m!2073927))

(assert (=> b!1688651 m!2073927))

(declare-fun m!2073931 () Bool)

(assert (=> b!1688651 m!2073931))

(declare-fun m!2073933 () Bool)

(assert (=> d!514576 m!2073933))

(declare-fun m!2073935 () Bool)

(assert (=> d!514576 m!2073935))

(declare-fun m!2073937 () Bool)

(assert (=> d!514576 m!2073937))

(assert (=> d!514576 m!2071673))

(assert (=> b!1688650 m!2073907))

(assert (=> b!1688644 m!2073907))

(declare-fun m!2073939 () Bool)

(assert (=> b!1688644 m!2073939))

(assert (=> b!1688644 m!2073939))

(declare-fun m!2073941 () Bool)

(assert (=> b!1688644 m!2073941))

(assert (=> bm!107802 d!514576))

(declare-fun d!514578 () Bool)

(assert (=> d!514578 (= (isEmpty!11569 (originalCharacters!4069 (h!23889 tokens!457))) ((_ is Nil!18485) (originalCharacters!4069 (h!23889 tokens!457))))))

(assert (=> d!513662 d!514578))

(declare-fun b!1688653 () Bool)

(declare-fun e!1081005 () List!18555)

(assert (=> b!1688653 (= e!1081005 Nil!18485)))

(declare-fun d!514580 () Bool)

(declare-fun c!275914 () Bool)

(assert (=> d!514580 (= c!275914 ((_ is Empty!6158) (c!275419 lt!640663)))))

(assert (=> d!514580 (= (list!7436 (c!275419 lt!640663)) e!1081005)))

(declare-fun b!1688656 () Bool)

(declare-fun e!1081006 () List!18555)

(assert (=> b!1688656 (= e!1081006 (++!5065 (list!7436 (left!14775 (c!275419 lt!640663))) (list!7436 (right!15105 (c!275419 lt!640663)))))))

(declare-fun b!1688654 () Bool)

(assert (=> b!1688654 (= e!1081005 e!1081006)))

(declare-fun c!275915 () Bool)

(assert (=> b!1688654 (= c!275915 ((_ is Leaf!9006) (c!275419 lt!640663)))))

(declare-fun b!1688655 () Bool)

(assert (=> b!1688655 (= e!1081006 (list!7439 (xs!9018 (c!275419 lt!640663))))))

(assert (= (and d!514580 c!275914) b!1688653))

(assert (= (and d!514580 (not c!275914)) b!1688654))

(assert (= (and b!1688654 c!275915) b!1688655))

(assert (= (and b!1688654 (not c!275915)) b!1688656))

(assert (=> b!1688656 m!2072003))

(assert (=> b!1688656 m!2072025))

(assert (=> b!1688656 m!2072003))

(assert (=> b!1688656 m!2072025))

(declare-fun m!2073943 () Bool)

(assert (=> b!1688656 m!2073943))

(declare-fun m!2073945 () Bool)

(assert (=> b!1688655 m!2073945))

(assert (=> d!513694 d!514580))

(assert (=> b!1686850 d!514472))

(assert (=> b!1686850 d!514474))

(assert (=> b!1686850 d!514178))

(declare-fun d!514582 () Bool)

(declare-fun lt!642085 () Int)

(assert (=> d!514582 (= lt!642085 (size!14729 (list!7431 (_1!10519 lt!641172))))))

(assert (=> d!514582 (= lt!642085 (size!14732 (c!275421 (_1!10519 lt!641172))))))

(assert (=> d!514582 (= (size!14725 (_1!10519 lt!641172)) lt!642085)))

(declare-fun bs!399811 () Bool)

(assert (= bs!399811 d!514582))

(assert (=> bs!399811 m!2070865))

(assert (=> bs!399811 m!2070865))

(declare-fun m!2073947 () Bool)

(assert (=> bs!399811 m!2073947))

(declare-fun m!2073949 () Bool)

(assert (=> bs!399811 m!2073949))

(assert (=> d!513708 d!514582))

(declare-fun d!514584 () Bool)

(declare-fun e!1081010 () Bool)

(assert (=> d!514584 e!1081010))

(declare-fun res!757159 () Bool)

(assert (=> d!514584 (=> (not res!757159) (not e!1081010))))

(declare-fun lt!642110 () tuple2!18234)

(assert (=> d!514584 (= res!757159 (= (list!7431 (_1!10519 lt!642110)) (list!7431 (_1!10519 (lexRec!391 thiss!17113 rules!1846 (seqFromList!2247 lt!640654))))))))

(declare-fun e!1081008 () tuple2!18234)

(assert (=> d!514584 (= lt!642110 e!1081008)))

(declare-fun c!275916 () Bool)

(declare-fun lt!642088 () Option!3569)

(assert (=> d!514584 (= c!275916 ((_ is Some!3568) lt!642088))))

(assert (=> d!514584 (= lt!642088 (maxPrefixZipperSequenceV2!286 thiss!17113 rules!1846 (seqFromList!2247 lt!640654) (seqFromList!2247 lt!640654)))))

(declare-fun lt!642114 () Unit!31839)

(declare-fun lt!642090 () Unit!31839)

(assert (=> d!514584 (= lt!642114 lt!642090)))

(declare-fun lt!642103 () List!18555)

(declare-fun lt!642115 () List!18555)

(assert (=> d!514584 (isSuffix!437 lt!642103 (++!5065 lt!642115 lt!642103))))

(assert (=> d!514584 (= lt!642090 (lemmaConcatTwoListThenFSndIsSuffix!338 lt!642115 lt!642103))))

(assert (=> d!514584 (= lt!642103 (list!7432 (seqFromList!2247 lt!640654)))))

(assert (=> d!514584 (= lt!642115 (list!7432 (BalanceConc!12261 Empty!6158)))))

(assert (=> d!514584 (= (lexTailRecV2!630 thiss!17113 rules!1846 (seqFromList!2247 lt!640654) (BalanceConc!12261 Empty!6158) (seqFromList!2247 lt!640654) (BalanceConc!12263 Empty!6159)) lt!642110)))

(declare-fun b!1688657 () Bool)

(assert (=> b!1688657 (= e!1081008 (tuple2!18235 (BalanceConc!12263 Empty!6159) (seqFromList!2247 lt!640654)))))

(declare-fun b!1688658 () Bool)

(declare-fun e!1081007 () tuple2!18234)

(assert (=> b!1688658 (= e!1081007 (tuple2!18235 (BalanceConc!12263 Empty!6159) (seqFromList!2247 lt!640654)))))

(declare-fun lt!642104 () BalanceConc!12260)

(declare-fun b!1688659 () Bool)

(assert (=> b!1688659 (= e!1081008 (lexTailRecV2!630 thiss!17113 rules!1846 (seqFromList!2247 lt!640654) lt!642104 (_2!10521 (v!24889 lt!642088)) (append!580 (BalanceConc!12263 Empty!6159) (_1!10521 (v!24889 lt!642088)))))))

(declare-fun lt!642118 () tuple2!18234)

(assert (=> b!1688659 (= lt!642118 (lexRec!391 thiss!17113 rules!1846 (_2!10521 (v!24889 lt!642088))))))

(declare-fun lt!642092 () List!18555)

(assert (=> b!1688659 (= lt!642092 (list!7432 (BalanceConc!12261 Empty!6158)))))

(declare-fun lt!642113 () List!18555)

(assert (=> b!1688659 (= lt!642113 (list!7432 (charsOf!1904 (_1!10521 (v!24889 lt!642088)))))))

(declare-fun lt!642109 () List!18555)

(assert (=> b!1688659 (= lt!642109 (list!7432 (_2!10521 (v!24889 lt!642088))))))

(declare-fun lt!642100 () Unit!31839)

(assert (=> b!1688659 (= lt!642100 (lemmaConcatAssociativity!1056 lt!642092 lt!642113 lt!642109))))

(assert (=> b!1688659 (= (++!5065 (++!5065 lt!642092 lt!642113) lt!642109) (++!5065 lt!642092 (++!5065 lt!642113 lt!642109)))))

(declare-fun lt!642087 () Unit!31839)

(assert (=> b!1688659 (= lt!642087 lt!642100)))

(declare-fun lt!642112 () Option!3569)

(assert (=> b!1688659 (= lt!642112 (maxPrefixZipperSequence!755 thiss!17113 rules!1846 (seqFromList!2247 lt!640654)))))

(declare-fun c!275917 () Bool)

(assert (=> b!1688659 (= c!275917 ((_ is Some!3568) lt!642112))))

(assert (=> b!1688659 (= (lexRec!391 thiss!17113 rules!1846 (seqFromList!2247 lt!640654)) e!1081007)))

(declare-fun lt!642105 () Unit!31839)

(declare-fun Unit!31895 () Unit!31839)

(assert (=> b!1688659 (= lt!642105 Unit!31895)))

(declare-fun lt!642099 () List!18558)

(assert (=> b!1688659 (= lt!642099 (list!7431 (BalanceConc!12263 Empty!6159)))))

(declare-fun lt!642101 () List!18558)

(assert (=> b!1688659 (= lt!642101 (Cons!18488 (_1!10521 (v!24889 lt!642088)) Nil!18488))))

(declare-fun lt!642097 () List!18558)

(assert (=> b!1688659 (= lt!642097 (list!7431 (_1!10519 lt!642118)))))

(declare-fun lt!642094 () Unit!31839)

(assert (=> b!1688659 (= lt!642094 (lemmaConcatAssociativity!1059 lt!642099 lt!642101 lt!642097))))

(assert (=> b!1688659 (= (++!5070 (++!5070 lt!642099 lt!642101) lt!642097) (++!5070 lt!642099 (++!5070 lt!642101 lt!642097)))))

(declare-fun lt!642089 () Unit!31839)

(assert (=> b!1688659 (= lt!642089 lt!642094)))

(declare-fun lt!642091 () List!18555)

(assert (=> b!1688659 (= lt!642091 (++!5065 (list!7432 (BalanceConc!12261 Empty!6158)) (list!7432 (charsOf!1904 (_1!10521 (v!24889 lt!642088))))))))

(declare-fun lt!642111 () List!18555)

(assert (=> b!1688659 (= lt!642111 (list!7432 (_2!10521 (v!24889 lt!642088))))))

(declare-fun lt!642102 () List!18558)

(assert (=> b!1688659 (= lt!642102 (list!7431 (append!580 (BalanceConc!12263 Empty!6159) (_1!10521 (v!24889 lt!642088)))))))

(declare-fun lt!642107 () Unit!31839)

(assert (=> b!1688659 (= lt!642107 (lemmaLexThenLexPrefix!279 thiss!17113 rules!1846 lt!642091 lt!642111 lt!642102 (list!7431 (_1!10519 lt!642118)) (list!7432 (_2!10519 lt!642118))))))

(assert (=> b!1688659 (= (lexList!907 thiss!17113 rules!1846 lt!642091) (tuple2!18243 lt!642102 Nil!18485))))

(declare-fun lt!642106 () Unit!31839)

(assert (=> b!1688659 (= lt!642106 lt!642107)))

(declare-fun lt!642098 () BalanceConc!12260)

(assert (=> b!1688659 (= lt!642098 (++!5066 (BalanceConc!12261 Empty!6158) (charsOf!1904 (_1!10521 (v!24889 lt!642088)))))))

(declare-fun lt!642093 () Option!3569)

(assert (=> b!1688659 (= lt!642093 (maxPrefixZipperSequence!755 thiss!17113 rules!1846 lt!642098))))

(declare-fun c!275918 () Bool)

(assert (=> b!1688659 (= c!275918 ((_ is Some!3568) lt!642093))))

(declare-fun e!1081009 () tuple2!18234)

(assert (=> b!1688659 (= (lexRec!391 thiss!17113 rules!1846 (++!5066 (BalanceConc!12261 Empty!6158) (charsOf!1904 (_1!10521 (v!24889 lt!642088))))) e!1081009)))

(declare-fun lt!642086 () Unit!31839)

(declare-fun Unit!31896 () Unit!31839)

(assert (=> b!1688659 (= lt!642086 Unit!31896)))

(assert (=> b!1688659 (= lt!642104 (++!5066 (BalanceConc!12261 Empty!6158) (charsOf!1904 (_1!10521 (v!24889 lt!642088)))))))

(declare-fun lt!642096 () List!18555)

(assert (=> b!1688659 (= lt!642096 (list!7432 lt!642104))))

(declare-fun lt!642117 () List!18555)

(assert (=> b!1688659 (= lt!642117 (list!7432 (_2!10521 (v!24889 lt!642088))))))

(declare-fun lt!642095 () Unit!31839)

(assert (=> b!1688659 (= lt!642095 (lemmaConcatTwoListThenFSndIsSuffix!338 lt!642096 lt!642117))))

(assert (=> b!1688659 (isSuffix!437 lt!642117 (++!5065 lt!642096 lt!642117))))

(declare-fun lt!642119 () Unit!31839)

(assert (=> b!1688659 (= lt!642119 lt!642095)))

(declare-fun b!1688660 () Bool)

(assert (=> b!1688660 (= e!1081009 (tuple2!18235 (BalanceConc!12263 Empty!6159) lt!642098))))

(declare-fun b!1688661 () Bool)

(assert (=> b!1688661 (= e!1081010 (= (list!7432 (_2!10519 lt!642110)) (list!7432 (_2!10519 (lexRec!391 thiss!17113 rules!1846 (seqFromList!2247 lt!640654))))))))

(declare-fun b!1688662 () Bool)

(declare-fun lt!642108 () tuple2!18234)

(assert (=> b!1688662 (= lt!642108 (lexRec!391 thiss!17113 rules!1846 (_2!10521 (v!24889 lt!642112))))))

(assert (=> b!1688662 (= e!1081007 (tuple2!18235 (prepend!851 (_1!10519 lt!642108) (_1!10521 (v!24889 lt!642112))) (_2!10519 lt!642108)))))

(declare-fun lt!642116 () tuple2!18234)

(declare-fun b!1688663 () Bool)

(assert (=> b!1688663 (= lt!642116 (lexRec!391 thiss!17113 rules!1846 (_2!10521 (v!24889 lt!642093))))))

(assert (=> b!1688663 (= e!1081009 (tuple2!18235 (prepend!851 (_1!10519 lt!642116) (_1!10521 (v!24889 lt!642093))) (_2!10519 lt!642116)))))

(assert (= (and d!514584 c!275916) b!1688659))

(assert (= (and d!514584 (not c!275916)) b!1688657))

(assert (= (and b!1688659 c!275917) b!1688662))

(assert (= (and b!1688659 (not c!275917)) b!1688658))

(assert (= (and b!1688659 c!275918) b!1688663))

(assert (= (and b!1688659 (not c!275918)) b!1688660))

(assert (= (and d!514584 res!757159) b!1688661))

(declare-fun m!2073951 () Bool)

(assert (=> b!1688663 m!2073951))

(declare-fun m!2073953 () Bool)

(assert (=> b!1688663 m!2073953))

(declare-fun m!2073955 () Bool)

(assert (=> b!1688662 m!2073955))

(declare-fun m!2073957 () Bool)

(assert (=> b!1688662 m!2073957))

(declare-fun m!2073959 () Bool)

(assert (=> b!1688661 m!2073959))

(assert (=> b!1688661 m!2069759))

(declare-fun m!2073961 () Bool)

(assert (=> b!1688661 m!2073961))

(declare-fun m!2073963 () Bool)

(assert (=> b!1688661 m!2073963))

(declare-fun m!2073965 () Bool)

(assert (=> b!1688659 m!2073965))

(declare-fun m!2073967 () Bool)

(assert (=> b!1688659 m!2073967))

(assert (=> b!1688659 m!2073965))

(declare-fun m!2073969 () Bool)

(assert (=> b!1688659 m!2073969))

(declare-fun m!2073971 () Bool)

(assert (=> b!1688659 m!2073971))

(declare-fun m!2073973 () Bool)

(assert (=> b!1688659 m!2073973))

(declare-fun m!2073975 () Bool)

(assert (=> b!1688659 m!2073975))

(assert (=> b!1688659 m!2073973))

(declare-fun m!2073977 () Bool)

(assert (=> b!1688659 m!2073977))

(declare-fun m!2073979 () Bool)

(assert (=> b!1688659 m!2073979))

(declare-fun m!2073981 () Bool)

(assert (=> b!1688659 m!2073981))

(declare-fun m!2073983 () Bool)

(assert (=> b!1688659 m!2073983))

(declare-fun m!2073985 () Bool)

(assert (=> b!1688659 m!2073985))

(assert (=> b!1688659 m!2073979))

(declare-fun m!2073987 () Bool)

(assert (=> b!1688659 m!2073987))

(declare-fun m!2073989 () Bool)

(assert (=> b!1688659 m!2073989))

(declare-fun m!2073991 () Bool)

(assert (=> b!1688659 m!2073991))

(declare-fun m!2073993 () Bool)

(assert (=> b!1688659 m!2073993))

(declare-fun m!2073995 () Bool)

(assert (=> b!1688659 m!2073995))

(assert (=> b!1688659 m!2069759))

(assert (=> b!1688659 m!2073965))

(declare-fun m!2073997 () Bool)

(assert (=> b!1688659 m!2073997))

(assert (=> b!1688659 m!2073985))

(assert (=> b!1688659 m!2073991))

(declare-fun m!2073999 () Bool)

(assert (=> b!1688659 m!2073999))

(assert (=> b!1688659 m!2073967))

(declare-fun m!2074001 () Bool)

(assert (=> b!1688659 m!2074001))

(declare-fun m!2074003 () Bool)

(assert (=> b!1688659 m!2074003))

(declare-fun m!2074005 () Bool)

(assert (=> b!1688659 m!2074005))

(assert (=> b!1688659 m!2070731))

(declare-fun m!2074007 () Bool)

(assert (=> b!1688659 m!2074007))

(declare-fun m!2074009 () Bool)

(assert (=> b!1688659 m!2074009))

(assert (=> b!1688659 m!2073983))

(declare-fun m!2074011 () Bool)

(assert (=> b!1688659 m!2074011))

(assert (=> b!1688659 m!2074005))

(declare-fun m!2074013 () Bool)

(assert (=> b!1688659 m!2074013))

(declare-fun m!2074015 () Bool)

(assert (=> b!1688659 m!2074015))

(declare-fun m!2074017 () Bool)

(assert (=> b!1688659 m!2074017))

(assert (=> b!1688659 m!2070731))

(assert (=> b!1688659 m!2073819))

(assert (=> b!1688659 m!2069759))

(declare-fun m!2074019 () Bool)

(assert (=> b!1688659 m!2074019))

(declare-fun m!2074021 () Bool)

(assert (=> b!1688659 m!2074021))

(assert (=> b!1688659 m!2074015))

(assert (=> b!1688659 m!2074003))

(assert (=> b!1688659 m!2074007))

(assert (=> b!1688659 m!2074003))

(assert (=> b!1688659 m!2069759))

(assert (=> b!1688659 m!2073961))

(declare-fun m!2074023 () Bool)

(assert (=> b!1688659 m!2074023))

(assert (=> d!514584 m!2069759))

(assert (=> d!514584 m!2073961))

(assert (=> d!514584 m!2069759))

(assert (=> d!514584 m!2069759))

(declare-fun m!2074025 () Bool)

(assert (=> d!514584 m!2074025))

(declare-fun m!2074027 () Bool)

(assert (=> d!514584 m!2074027))

(assert (=> d!514584 m!2070731))

(declare-fun m!2074029 () Bool)

(assert (=> d!514584 m!2074029))

(assert (=> d!514584 m!2074029))

(declare-fun m!2074031 () Bool)

(assert (=> d!514584 m!2074031))

(declare-fun m!2074033 () Bool)

(assert (=> d!514584 m!2074033))

(declare-fun m!2074035 () Bool)

(assert (=> d!514584 m!2074035))

(assert (=> d!514584 m!2069759))

(assert (=> d!514584 m!2070861))

(assert (=> d!513708 d!514584))

(declare-fun b!1688664 () Bool)

(declare-fun res!757163 () Bool)

(declare-fun e!1081012 () Bool)

(assert (=> b!1688664 (=> (not res!757163) (not e!1081012))))

(assert (=> b!1688664 (= res!757163 (isBalanced!1928 (left!14776 (c!275421 lt!641132))))))

(declare-fun b!1688665 () Bool)

(assert (=> b!1688665 (= e!1081012 (not (isEmpty!11575 (right!15106 (c!275421 lt!641132)))))))

(declare-fun d!514586 () Bool)

(declare-fun res!757161 () Bool)

(declare-fun e!1081011 () Bool)

(assert (=> d!514586 (=> res!757161 e!1081011)))

(assert (=> d!514586 (= res!757161 (not ((_ is Node!6159) (c!275421 lt!641132))))))

(assert (=> d!514586 (= (isBalanced!1928 (c!275421 lt!641132)) e!1081011)))

(declare-fun b!1688666 () Bool)

(assert (=> b!1688666 (= e!1081011 e!1081012)))

(declare-fun res!757164 () Bool)

(assert (=> b!1688666 (=> (not res!757164) (not e!1081012))))

(assert (=> b!1688666 (= res!757164 (<= (- 1) (- (height!989 (left!14776 (c!275421 lt!641132))) (height!989 (right!15106 (c!275421 lt!641132))))))))

(declare-fun b!1688667 () Bool)

(declare-fun res!757160 () Bool)

(assert (=> b!1688667 (=> (not res!757160) (not e!1081012))))

(assert (=> b!1688667 (= res!757160 (isBalanced!1928 (right!15106 (c!275421 lt!641132))))))

(declare-fun b!1688668 () Bool)

(declare-fun res!757165 () Bool)

(assert (=> b!1688668 (=> (not res!757165) (not e!1081012))))

(assert (=> b!1688668 (= res!757165 (not (isEmpty!11575 (left!14776 (c!275421 lt!641132)))))))

(declare-fun b!1688669 () Bool)

(declare-fun res!757162 () Bool)

(assert (=> b!1688669 (=> (not res!757162) (not e!1081012))))

(assert (=> b!1688669 (= res!757162 (<= (- (height!989 (left!14776 (c!275421 lt!641132))) (height!989 (right!15106 (c!275421 lt!641132)))) 1))))

(assert (= (and d!514586 (not res!757161)) b!1688666))

(assert (= (and b!1688666 res!757164) b!1688669))

(assert (= (and b!1688669 res!757162) b!1688664))

(assert (= (and b!1688664 res!757163) b!1688667))

(assert (= (and b!1688667 res!757160) b!1688668))

(assert (= (and b!1688668 res!757165) b!1688665))

(declare-fun m!2074037 () Bool)

(assert (=> b!1688664 m!2074037))

(declare-fun m!2074039 () Bool)

(assert (=> b!1688666 m!2074039))

(declare-fun m!2074041 () Bool)

(assert (=> b!1688666 m!2074041))

(declare-fun m!2074043 () Bool)

(assert (=> b!1688667 m!2074043))

(declare-fun m!2074045 () Bool)

(assert (=> b!1688668 m!2074045))

(declare-fun m!2074047 () Bool)

(assert (=> b!1688665 m!2074047))

(assert (=> b!1688669 m!2074039))

(assert (=> b!1688669 m!2074041))

(assert (=> b!1686906 d!514586))

(declare-fun d!514588 () Bool)

(declare-fun lt!642120 () Bool)

(assert (=> d!514588 (= lt!642120 (isEmpty!11569 (list!7432 (_2!10519 lt!641101))))))

(assert (=> d!514588 (= lt!642120 (isEmpty!11577 (c!275419 (_2!10519 lt!641101))))))

(assert (=> d!514588 (= (isEmpty!11570 (_2!10519 lt!641101)) lt!642120)))

(declare-fun bs!399812 () Bool)

(assert (= bs!399812 d!514588))

(declare-fun m!2074049 () Bool)

(assert (=> bs!399812 m!2074049))

(assert (=> bs!399812 m!2074049))

(declare-fun m!2074051 () Bool)

(assert (=> bs!399812 m!2074051))

(declare-fun m!2074053 () Bool)

(assert (=> bs!399812 m!2074053))

(assert (=> b!1686863 d!514588))

(declare-fun b!1688672 () Bool)

(declare-fun e!1081014 () Bool)

(assert (=> b!1688672 (= e!1081014 (isPrefix!1513 (tail!2518 lt!640654) (tail!2518 (++!5065 lt!640654 lt!640662))))))

(declare-fun b!1688670 () Bool)

(declare-fun e!1081015 () Bool)

(assert (=> b!1688670 (= e!1081015 e!1081014)))

(declare-fun res!757167 () Bool)

(assert (=> b!1688670 (=> (not res!757167) (not e!1081014))))

(assert (=> b!1688670 (= res!757167 (not ((_ is Nil!18485) (++!5065 lt!640654 lt!640662))))))

(declare-fun d!514590 () Bool)

(declare-fun e!1081013 () Bool)

(assert (=> d!514590 e!1081013))

(declare-fun res!757168 () Bool)

(assert (=> d!514590 (=> res!757168 e!1081013)))

(declare-fun lt!642121 () Bool)

(assert (=> d!514590 (= res!757168 (not lt!642121))))

(assert (=> d!514590 (= lt!642121 e!1081015)))

(declare-fun res!757169 () Bool)

(assert (=> d!514590 (=> res!757169 e!1081015)))

(assert (=> d!514590 (= res!757169 ((_ is Nil!18485) lt!640654))))

(assert (=> d!514590 (= (isPrefix!1513 lt!640654 (++!5065 lt!640654 lt!640662)) lt!642121)))

(declare-fun b!1688671 () Bool)

(declare-fun res!757166 () Bool)

(assert (=> b!1688671 (=> (not res!757166) (not e!1081014))))

(assert (=> b!1688671 (= res!757166 (= (head!3780 lt!640654) (head!3780 (++!5065 lt!640654 lt!640662))))))

(declare-fun b!1688673 () Bool)

(assert (=> b!1688673 (= e!1081013 (>= (size!14724 (++!5065 lt!640654 lt!640662)) (size!14724 lt!640654)))))

(assert (= (and d!514590 (not res!757169)) b!1688670))

(assert (= (and b!1688670 res!757167) b!1688671))

(assert (= (and b!1688671 res!757166) b!1688672))

(assert (= (and d!514590 (not res!757168)) b!1688673))

(assert (=> b!1688672 m!2070405))

(assert (=> b!1688672 m!2069749))

(declare-fun m!2074055 () Bool)

(assert (=> b!1688672 m!2074055))

(assert (=> b!1688672 m!2070405))

(assert (=> b!1688672 m!2074055))

(declare-fun m!2074057 () Bool)

(assert (=> b!1688672 m!2074057))

(assert (=> b!1688671 m!2070411))

(assert (=> b!1688671 m!2069749))

(declare-fun m!2074059 () Bool)

(assert (=> b!1688671 m!2074059))

(assert (=> b!1688673 m!2069749))

(declare-fun m!2074061 () Bool)

(assert (=> b!1688673 m!2074061))

(assert (=> b!1688673 m!2070417))

(assert (=> d!513608 d!514590))

(assert (=> d!513608 d!513688))

(declare-fun d!514592 () Bool)

(assert (=> d!514592 (isPrefix!1513 lt!640654 (++!5065 lt!640654 lt!640662))))

(assert (=> d!514592 true))

(declare-fun _$46!1155 () Unit!31839)

(assert (=> d!514592 (= (choose!10199 lt!640654 lt!640662) _$46!1155)))

(declare-fun bs!399813 () Bool)

(assert (= bs!399813 d!514592))

(assert (=> bs!399813 m!2069749))

(assert (=> bs!399813 m!2069749))

(assert (=> bs!399813 m!2070419))

(assert (=> d!513608 d!514592))

(declare-fun bs!399814 () Bool)

(declare-fun b!1688687 () Bool)

(assert (= bs!399814 (and b!1688687 d!514004)))

(declare-fun lambda!68399 () Int)

(assert (=> bs!399814 (= (and (= (toChars!4593 (transformation!3255 (h!23888 rules!1846))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457))))) (= (toValue!4734 (transformation!3255 (h!23888 rules!1846))) (toValue!4734 (transformation!3255 (rule!5161 (h!23889 tokens!457)))))) (= lambda!68399 lambda!68354))))

(declare-fun b!1688699 () Bool)

(declare-fun e!1081036 () Bool)

(assert (=> b!1688699 (= e!1081036 true)))

(declare-fun b!1688698 () Bool)

(declare-fun e!1081035 () Bool)

(assert (=> b!1688698 (= e!1081035 e!1081036)))

(assert (=> b!1688687 e!1081035))

(assert (= b!1688698 b!1688699))

(assert (= b!1688687 b!1688698))

(assert (=> b!1688699 (< (dynLambda!8379 order!11145 (toValue!4734 (transformation!3255 (h!23888 rules!1846)))) (dynLambda!8388 order!11161 lambda!68399))))

(assert (=> b!1688699 (< (dynLambda!8381 order!11149 (toChars!4593 (transformation!3255 (h!23888 rules!1846)))) (dynLambda!8388 order!11161 lambda!68399))))

(declare-fun b!1688686 () Bool)

(declare-fun e!1081027 () Bool)

(declare-fun lt!642151 () List!18555)

(assert (=> b!1688686 (= e!1081027 (matchR!2072 (regex!3255 (h!23888 rules!1846)) (_1!10524 (findLongestMatchInner!376 (regex!3255 (h!23888 rules!1846)) Nil!18485 (size!14724 Nil!18485) lt!642151 lt!642151 (size!14724 lt!642151)))))))

(declare-fun e!1081030 () Option!3569)

(declare-datatypes ((tuple2!18250 0))(
  ( (tuple2!18251 (_1!10527 BalanceConc!12260) (_2!10527 BalanceConc!12260)) )
))
(declare-fun lt!642150 () tuple2!18250)

(assert (=> b!1688687 (= e!1081030 (Some!3568 (tuple2!18239 (Token!6077 (apply!5039 (transformation!3255 (h!23888 rules!1846)) (_1!10527 lt!642150)) (h!23888 rules!1846) (size!14726 (_1!10527 lt!642150)) (list!7432 (_1!10527 lt!642150))) (_2!10527 lt!642150))))))

(assert (=> b!1688687 (= lt!642151 (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))

(declare-fun lt!642148 () Unit!31839)

(assert (=> b!1688687 (= lt!642148 (longestMatchIsAcceptedByMatchOrIsEmpty!360 (regex!3255 (h!23888 rules!1846)) lt!642151))))

(declare-fun res!757178 () Bool)

(assert (=> b!1688687 (= res!757178 (isEmpty!11569 (_1!10524 (findLongestMatchInner!376 (regex!3255 (h!23888 rules!1846)) Nil!18485 (size!14724 Nil!18485) lt!642151 lt!642151 (size!14724 lt!642151)))))))

(assert (=> b!1688687 (=> res!757178 e!1081027)))

(assert (=> b!1688687 e!1081027))

(declare-fun lt!642149 () Unit!31839)

(assert (=> b!1688687 (= lt!642149 lt!642148)))

(declare-fun lt!642142 () Unit!31839)

(declare-fun lemmaInv!508 (TokenValueInjection!6350) Unit!31839)

(assert (=> b!1688687 (= lt!642142 (lemmaInv!508 (transformation!3255 (h!23888 rules!1846))))))

(declare-fun lt!642144 () Unit!31839)

(declare-fun ForallOf!244 (Int BalanceConc!12260) Unit!31839)

(assert (=> b!1688687 (= lt!642144 (ForallOf!244 lambda!68399 (_1!10527 lt!642150)))))

(declare-fun lt!642143 () Unit!31839)

(assert (=> b!1688687 (= lt!642143 (ForallOf!244 lambda!68399 (seqFromList!2247 (list!7432 (_1!10527 lt!642150)))))))

(declare-fun lt!642147 () Option!3569)

(assert (=> b!1688687 (= lt!642147 (Some!3568 (tuple2!18239 (Token!6077 (apply!5039 (transformation!3255 (h!23888 rules!1846)) (_1!10527 lt!642150)) (h!23888 rules!1846) (size!14726 (_1!10527 lt!642150)) (list!7432 (_1!10527 lt!642150))) (_2!10527 lt!642150))))))

(declare-fun lt!642146 () Unit!31839)

(declare-fun lemmaEqSameImage!228 (TokenValueInjection!6350 BalanceConc!12260 BalanceConc!12260) Unit!31839)

(assert (=> b!1688687 (= lt!642146 (lemmaEqSameImage!228 (transformation!3255 (h!23888 rules!1846)) (_1!10527 lt!642150) (seqFromList!2247 (list!7432 (_1!10527 lt!642150)))))))

(declare-fun b!1688688 () Bool)

(declare-fun e!1081029 () Bool)

(declare-fun e!1081026 () Bool)

(assert (=> b!1688688 (= e!1081029 e!1081026)))

(declare-fun res!757181 () Bool)

(assert (=> b!1688688 (=> res!757181 e!1081026)))

(declare-fun lt!642145 () Option!3569)

(assert (=> b!1688688 (= res!757181 (not (isDefined!2918 lt!642145)))))

(declare-fun e!1081028 () Bool)

(declare-fun b!1688689 () Bool)

(assert (=> b!1688689 (= e!1081028 (= (list!7432 (_2!10521 (get!5422 lt!642145))) (_2!10520 (get!5420 (maxPrefixOneRule!845 thiss!17113 (h!23888 rules!1846) (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))))))

(declare-fun b!1688690 () Bool)

(assert (=> b!1688690 (= e!1081030 None!3568)))

(declare-fun d!514594 () Bool)

(assert (=> d!514594 e!1081029))

(declare-fun res!757179 () Bool)

(assert (=> d!514594 (=> (not res!757179) (not e!1081029))))

(assert (=> d!514594 (= res!757179 (= (isDefined!2918 lt!642145) (isDefined!2917 (maxPrefixOneRule!845 thiss!17113 (h!23888 rules!1846) (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457))))))))))

(assert (=> d!514594 (= lt!642145 e!1081030)))

(declare-fun c!275921 () Bool)

(assert (=> d!514594 (= c!275921 (isEmpty!11570 (_1!10527 lt!642150)))))

(declare-fun findLongestMatchWithZipperSequence!127 (Regex!4583 BalanceConc!12260) tuple2!18250)

(assert (=> d!514594 (= lt!642150 (findLongestMatchWithZipperSequence!127 (regex!3255 (h!23888 rules!1846)) (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))

(assert (=> d!514594 (ruleValid!768 thiss!17113 (h!23888 rules!1846))))

(assert (=> d!514594 (= (maxPrefixOneRuleZipperSequence!362 thiss!17113 (h!23888 rules!1846) (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))) lt!642145)))

(declare-fun b!1688691 () Bool)

(assert (=> b!1688691 (= e!1081026 e!1081028)))

(declare-fun res!757180 () Bool)

(assert (=> b!1688691 (=> (not res!757180) (not e!1081028))))

(assert (=> b!1688691 (= res!757180 (= (_1!10521 (get!5422 lt!642145)) (_1!10520 (get!5420 (maxPrefixOneRule!845 thiss!17113 (h!23888 rules!1846) (list!7432 (seqFromList!2247 (originalCharacters!4069 (h!23889 tokens!457)))))))))))

(assert (= (and d!514594 c!275921) b!1688690))

(assert (= (and d!514594 (not c!275921)) b!1688687))

(assert (= (and b!1688687 (not res!757178)) b!1688686))

(assert (= (and d!514594 res!757179) b!1688688))

(assert (= (and b!1688688 (not res!757181)) b!1688691))

(assert (= (and b!1688691 res!757180) b!1688689))

(declare-fun m!2074063 () Bool)

(assert (=> b!1688689 m!2074063))

(declare-fun m!2074065 () Bool)

(assert (=> b!1688689 m!2074065))

(assert (=> b!1688689 m!2070083))

(assert (=> b!1688689 m!2073655))

(assert (=> b!1688689 m!2073655))

(declare-fun m!2074067 () Bool)

(assert (=> b!1688689 m!2074067))

(assert (=> b!1688689 m!2069727))

(assert (=> b!1688689 m!2070083))

(declare-fun m!2074069 () Bool)

(assert (=> b!1688688 m!2074069))

(assert (=> b!1688686 m!2071635))

(declare-fun m!2074071 () Bool)

(assert (=> b!1688686 m!2074071))

(assert (=> b!1688686 m!2071635))

(assert (=> b!1688686 m!2074071))

(declare-fun m!2074073 () Bool)

(assert (=> b!1688686 m!2074073))

(declare-fun m!2074075 () Bool)

(assert (=> b!1688686 m!2074075))

(declare-fun m!2074077 () Bool)

(assert (=> b!1688687 m!2074077))

(declare-fun m!2074079 () Bool)

(assert (=> b!1688687 m!2074079))

(declare-fun m!2074081 () Bool)

(assert (=> b!1688687 m!2074081))

(declare-fun m!2074083 () Bool)

(assert (=> b!1688687 m!2074083))

(assert (=> b!1688687 m!2074081))

(declare-fun m!2074085 () Bool)

(assert (=> b!1688687 m!2074085))

(assert (=> b!1688687 m!2071635))

(assert (=> b!1688687 m!2074071))

(assert (=> b!1688687 m!2074073))

(declare-fun m!2074087 () Bool)

(assert (=> b!1688687 m!2074087))

(assert (=> b!1688687 m!2074071))

(declare-fun m!2074089 () Bool)

(assert (=> b!1688687 m!2074089))

(declare-fun m!2074091 () Bool)

(assert (=> b!1688687 m!2074091))

(declare-fun m!2074093 () Bool)

(assert (=> b!1688687 m!2074093))

(assert (=> b!1688687 m!2071635))

(assert (=> b!1688687 m!2074091))

(assert (=> b!1688687 m!2074081))

(declare-fun m!2074095 () Bool)

(assert (=> b!1688687 m!2074095))

(assert (=> b!1688687 m!2069727))

(assert (=> b!1688687 m!2070083))

(assert (=> b!1688691 m!2074065))

(assert (=> b!1688691 m!2069727))

(assert (=> b!1688691 m!2070083))

(assert (=> b!1688691 m!2070083))

(assert (=> b!1688691 m!2073655))

(assert (=> b!1688691 m!2073655))

(assert (=> b!1688691 m!2074067))

(assert (=> d!514594 m!2074069))

(assert (=> d!514594 m!2071673))

(assert (=> d!514594 m!2070083))

(assert (=> d!514594 m!2073655))

(assert (=> d!514594 m!2073655))

(declare-fun m!2074097 () Bool)

(assert (=> d!514594 m!2074097))

(declare-fun m!2074099 () Bool)

(assert (=> d!514594 m!2074099))

(assert (=> d!514594 m!2069727))

(declare-fun m!2074101 () Bool)

(assert (=> d!514594 m!2074101))

(assert (=> d!514594 m!2069727))

(assert (=> d!514594 m!2070083))

(assert (=> bm!107798 d!514594))

(declare-fun d!514596 () Bool)

(declare-fun e!1081039 () Bool)

(assert (=> d!514596 e!1081039))

(declare-fun res!757186 () Bool)

(assert (=> d!514596 (=> res!757186 e!1081039)))

(declare-fun lt!642155 () Option!3568)

(assert (=> d!514596 (= res!757186 (isEmpty!11573 lt!642155))))

(declare-fun e!1081038 () Option!3568)

(assert (=> d!514596 (= lt!642155 e!1081038)))

(declare-fun c!275922 () Bool)

(assert (=> d!514596 (= c!275922 (and ((_ is Cons!18487) (t!154810 rules!1846)) ((_ is Nil!18487) (t!154810 (t!154810 rules!1846)))))))

(declare-fun lt!642154 () Unit!31839)

(declare-fun lt!642153 () Unit!31839)

(assert (=> d!514596 (= lt!642154 lt!642153)))

(assert (=> d!514596 (isPrefix!1513 lt!640658 lt!640658)))

(assert (=> d!514596 (= lt!642153 (lemmaIsPrefixRefl!1030 lt!640658 lt!640658))))

(assert (=> d!514596 (rulesValidInductive!1052 thiss!17113 (t!154810 rules!1846))))

(assert (=> d!514596 (= (maxPrefix!1444 thiss!17113 (t!154810 rules!1846) lt!640658) lt!642155)))

(declare-fun b!1688700 () Bool)

(declare-fun e!1081037 () Bool)

(assert (=> b!1688700 (= e!1081039 e!1081037)))

(declare-fun res!757187 () Bool)

(assert (=> b!1688700 (=> (not res!757187) (not e!1081037))))

(assert (=> b!1688700 (= res!757187 (isDefined!2917 lt!642155))))

(declare-fun b!1688701 () Bool)

(declare-fun call!107971 () Option!3568)

(assert (=> b!1688701 (= e!1081038 call!107971)))

(declare-fun b!1688702 () Bool)

(assert (=> b!1688702 (= e!1081037 (contains!3250 (t!154810 rules!1846) (rule!5161 (_1!10520 (get!5420 lt!642155)))))))

(declare-fun b!1688703 () Bool)

(declare-fun res!757183 () Bool)

(assert (=> b!1688703 (=> (not res!757183) (not e!1081037))))

(assert (=> b!1688703 (= res!757183 (< (size!14724 (_2!10520 (get!5420 lt!642155))) (size!14724 lt!640658)))))

(declare-fun b!1688704 () Bool)

(declare-fun res!757182 () Bool)

(assert (=> b!1688704 (=> (not res!757182) (not e!1081037))))

(assert (=> b!1688704 (= res!757182 (= (value!102440 (_1!10520 (get!5420 lt!642155))) (apply!5039 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!642155)))) (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!642155)))))))))

(declare-fun b!1688705 () Bool)

(declare-fun res!757184 () Bool)

(assert (=> b!1688705 (=> (not res!757184) (not e!1081037))))

(assert (=> b!1688705 (= res!757184 (matchR!2072 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!642155)))) (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!642155))))))))

(declare-fun bm!107966 () Bool)

(assert (=> bm!107966 (= call!107971 (maxPrefixOneRule!845 thiss!17113 (h!23888 (t!154810 rules!1846)) lt!640658))))

(declare-fun b!1688706 () Bool)

(declare-fun res!757185 () Bool)

(assert (=> b!1688706 (=> (not res!757185) (not e!1081037))))

(assert (=> b!1688706 (= res!757185 (= (++!5065 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!642155)))) (_2!10520 (get!5420 lt!642155))) lt!640658))))

(declare-fun b!1688707 () Bool)

(declare-fun res!757188 () Bool)

(assert (=> b!1688707 (=> (not res!757188) (not e!1081037))))

(assert (=> b!1688707 (= res!757188 (= (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!642155)))) (originalCharacters!4069 (_1!10520 (get!5420 lt!642155)))))))

(declare-fun b!1688708 () Bool)

(declare-fun lt!642152 () Option!3568)

(declare-fun lt!642156 () Option!3568)

(assert (=> b!1688708 (= e!1081038 (ite (and ((_ is None!3567) lt!642152) ((_ is None!3567) lt!642156)) None!3567 (ite ((_ is None!3567) lt!642156) lt!642152 (ite ((_ is None!3567) lt!642152) lt!642156 (ite (>= (size!14720 (_1!10520 (v!24888 lt!642152))) (size!14720 (_1!10520 (v!24888 lt!642156)))) lt!642152 lt!642156)))))))

(assert (=> b!1688708 (= lt!642152 call!107971)))

(assert (=> b!1688708 (= lt!642156 (maxPrefix!1444 thiss!17113 (t!154810 (t!154810 rules!1846)) lt!640658))))

(assert (= (and d!514596 c!275922) b!1688701))

(assert (= (and d!514596 (not c!275922)) b!1688708))

(assert (= (or b!1688701 b!1688708) bm!107966))

(assert (= (and d!514596 (not res!757186)) b!1688700))

(assert (= (and b!1688700 res!757187) b!1688707))

(assert (= (and b!1688707 res!757188) b!1688703))

(assert (= (and b!1688703 res!757183) b!1688706))

(assert (= (and b!1688706 res!757185) b!1688704))

(assert (= (and b!1688704 res!757182) b!1688705))

(assert (= (and b!1688705 res!757184) b!1688702))

(declare-fun m!2074103 () Bool)

(assert (=> b!1688705 m!2074103))

(declare-fun m!2074105 () Bool)

(assert (=> b!1688705 m!2074105))

(assert (=> b!1688705 m!2074105))

(declare-fun m!2074107 () Bool)

(assert (=> b!1688705 m!2074107))

(assert (=> b!1688705 m!2074107))

(declare-fun m!2074109 () Bool)

(assert (=> b!1688705 m!2074109))

(assert (=> b!1688707 m!2074103))

(assert (=> b!1688707 m!2074105))

(assert (=> b!1688707 m!2074105))

(assert (=> b!1688707 m!2074107))

(assert (=> b!1688706 m!2074103))

(assert (=> b!1688706 m!2074105))

(assert (=> b!1688706 m!2074105))

(assert (=> b!1688706 m!2074107))

(assert (=> b!1688706 m!2074107))

(declare-fun m!2074111 () Bool)

(assert (=> b!1688706 m!2074111))

(declare-fun m!2074113 () Bool)

(assert (=> bm!107966 m!2074113))

(declare-fun m!2074115 () Bool)

(assert (=> b!1688700 m!2074115))

(assert (=> b!1688702 m!2074103))

(declare-fun m!2074117 () Bool)

(assert (=> b!1688702 m!2074117))

(assert (=> b!1688704 m!2074103))

(declare-fun m!2074119 () Bool)

(assert (=> b!1688704 m!2074119))

(assert (=> b!1688704 m!2074119))

(declare-fun m!2074121 () Bool)

(assert (=> b!1688704 m!2074121))

(assert (=> b!1688703 m!2074103))

(declare-fun m!2074123 () Bool)

(assert (=> b!1688703 m!2074123))

(assert (=> b!1688703 m!2070715))

(declare-fun m!2074125 () Bool)

(assert (=> b!1688708 m!2074125))

(declare-fun m!2074127 () Bool)

(assert (=> d!514596 m!2074127))

(assert (=> d!514596 m!2070721))

(assert (=> d!514596 m!2070723))

(assert (=> d!514596 m!2071711))

(assert (=> b!1686884 d!514596))

(declare-fun d!514598 () Bool)

(declare-fun lt!642159 () C!9340)

(declare-fun contains!3255 (List!18555 C!9340) Bool)

(assert (=> d!514598 (contains!3255 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) lt!642159)))

(declare-fun e!1081045 () C!9340)

(assert (=> d!514598 (= lt!642159 e!1081045)))

(declare-fun c!275925 () Bool)

(assert (=> d!514598 (= c!275925 (= 0 0))))

(declare-fun e!1081044 () Bool)

(assert (=> d!514598 e!1081044))

(declare-fun res!757191 () Bool)

(assert (=> d!514598 (=> (not res!757191) (not e!1081044))))

(assert (=> d!514598 (= res!757191 (<= 0 0))))

(assert (=> d!514598 (= (apply!5044 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) 0) lt!642159)))

(declare-fun b!1688715 () Bool)

(assert (=> b!1688715 (= e!1081044 (< 0 (size!14724 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))))))))

(declare-fun b!1688716 () Bool)

(assert (=> b!1688716 (= e!1081045 (head!3780 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457))))))))

(declare-fun b!1688717 () Bool)

(assert (=> b!1688717 (= e!1081045 (apply!5044 (tail!2518 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457))))) (- 0 1)))))

(assert (= (and d!514598 res!757191) b!1688715))

(assert (= (and d!514598 c!275925) b!1688716))

(assert (= (and d!514598 (not c!275925)) b!1688717))

(assert (=> d!514598 m!2070335))

(declare-fun m!2074129 () Bool)

(assert (=> d!514598 m!2074129))

(assert (=> b!1688715 m!2070335))

(assert (=> b!1688715 m!2072985))

(assert (=> b!1688716 m!2070335))

(declare-fun m!2074131 () Bool)

(assert (=> b!1688716 m!2074131))

(assert (=> b!1688717 m!2070335))

(declare-fun m!2074133 () Bool)

(assert (=> b!1688717 m!2074133))

(assert (=> b!1688717 m!2074133))

(declare-fun m!2074135 () Bool)

(assert (=> b!1688717 m!2074135))

(assert (=> d!513728 d!514598))

(declare-fun d!514600 () Bool)

(assert (=> d!514600 (= (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) (list!7436 (c!275419 (charsOf!1904 (h!23889 (t!154811 tokens!457))))))))

(declare-fun bs!399815 () Bool)

(assert (= bs!399815 d!514600))

(declare-fun m!2074137 () Bool)

(assert (=> bs!399815 m!2074137))

(assert (=> d!513728 d!514600))

(declare-fun d!514602 () Bool)

(declare-fun lt!642165 () C!9340)

(assert (=> d!514602 (= lt!642165 (apply!5044 (list!7436 (c!275419 (charsOf!1904 (h!23889 (t!154811 tokens!457))))) 0))))

(declare-fun e!1081054 () C!9340)

(assert (=> d!514602 (= lt!642165 e!1081054)))

(declare-fun c!275933 () Bool)

(assert (=> d!514602 (= c!275933 ((_ is Leaf!9006) (c!275419 (charsOf!1904 (h!23889 (t!154811 tokens!457))))))))

(declare-fun e!1081055 () Bool)

(assert (=> d!514602 e!1081055))

(declare-fun res!757194 () Bool)

(assert (=> d!514602 (=> (not res!757194) (not e!1081055))))

(assert (=> d!514602 (= res!757194 (<= 0 0))))

(assert (=> d!514602 (= (apply!5045 (c!275419 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) 0) lt!642165)))

(declare-fun b!1688732 () Bool)

(declare-fun e!1081056 () Int)

(assert (=> b!1688732 (= e!1081056 0)))

(declare-fun bm!107969 () Bool)

(declare-fun c!275932 () Bool)

(declare-fun c!275934 () Bool)

(assert (=> bm!107969 (= c!275932 c!275934)))

(declare-fun call!107974 () C!9340)

(assert (=> bm!107969 (= call!107974 (apply!5045 (ite c!275934 (left!14775 (c!275419 (charsOf!1904 (h!23889 (t!154811 tokens!457))))) (right!15105 (c!275419 (charsOf!1904 (h!23889 (t!154811 tokens!457)))))) e!1081056))))

(declare-fun b!1688733 () Bool)

(assert (=> b!1688733 (= e!1081055 (< 0 (size!14731 (c!275419 (charsOf!1904 (h!23889 (t!154811 tokens!457)))))))))

(declare-fun b!1688734 () Bool)

(declare-fun e!1081057 () C!9340)

(assert (=> b!1688734 (= e!1081057 call!107974)))

(declare-fun b!1688735 () Bool)

(assert (=> b!1688735 (= e!1081056 (- 0 (size!14731 (left!14775 (c!275419 (charsOf!1904 (h!23889 (t!154811 tokens!457))))))))))

(declare-fun b!1688736 () Bool)

(assert (=> b!1688736 (= e!1081054 (apply!5048 (xs!9018 (c!275419 (charsOf!1904 (h!23889 (t!154811 tokens!457))))) 0))))

(declare-fun b!1688737 () Bool)

(assert (=> b!1688737 (= e!1081054 e!1081057)))

(declare-fun lt!642164 () Bool)

(declare-fun appendIndex!225 (List!18555 List!18555 Int) Bool)

(assert (=> b!1688737 (= lt!642164 (appendIndex!225 (list!7436 (left!14775 (c!275419 (charsOf!1904 (h!23889 (t!154811 tokens!457)))))) (list!7436 (right!15105 (c!275419 (charsOf!1904 (h!23889 (t!154811 tokens!457)))))) 0))))

(assert (=> b!1688737 (= c!275934 (< 0 (size!14731 (left!14775 (c!275419 (charsOf!1904 (h!23889 (t!154811 tokens!457))))))))))

(declare-fun b!1688738 () Bool)

(assert (=> b!1688738 (= e!1081057 call!107974)))

(assert (= (and d!514602 res!757194) b!1688733))

(assert (= (and d!514602 c!275933) b!1688736))

(assert (= (and d!514602 (not c!275933)) b!1688737))

(assert (= (and b!1688737 c!275934) b!1688738))

(assert (= (and b!1688737 (not c!275934)) b!1688734))

(assert (= (or b!1688738 b!1688734) bm!107969))

(assert (= (and bm!107969 c!275932) b!1688732))

(assert (= (and bm!107969 (not c!275932)) b!1688735))

(assert (=> d!514602 m!2074137))

(assert (=> d!514602 m!2074137))

(declare-fun m!2074139 () Bool)

(assert (=> d!514602 m!2074139))

(declare-fun m!2074141 () Bool)

(assert (=> b!1688736 m!2074141))

(declare-fun m!2074143 () Bool)

(assert (=> bm!107969 m!2074143))

(declare-fun m!2074145 () Bool)

(assert (=> b!1688737 m!2074145))

(declare-fun m!2074147 () Bool)

(assert (=> b!1688737 m!2074147))

(assert (=> b!1688737 m!2074145))

(assert (=> b!1688737 m!2074147))

(declare-fun m!2074149 () Bool)

(assert (=> b!1688737 m!2074149))

(declare-fun m!2074151 () Bool)

(assert (=> b!1688737 m!2074151))

(assert (=> b!1688733 m!2072987))

(assert (=> b!1688735 m!2074151))

(assert (=> d!513728 d!514602))

(declare-fun b!1688742 () Bool)

(declare-fun e!1081059 () List!18558)

(assert (=> b!1688742 (= e!1081059 (++!5070 (list!7434 (left!14776 (c!275421 lt!640664))) (list!7434 (right!15106 (c!275421 lt!640664)))))))

(declare-fun b!1688739 () Bool)

(declare-fun e!1081058 () List!18558)

(assert (=> b!1688739 (= e!1081058 Nil!18488)))

(declare-fun b!1688740 () Bool)

(assert (=> b!1688740 (= e!1081058 e!1081059)))

(declare-fun c!275936 () Bool)

(assert (=> b!1688740 (= c!275936 ((_ is Leaf!9007) (c!275421 lt!640664)))))

(declare-fun d!514604 () Bool)

(declare-fun c!275935 () Bool)

(assert (=> d!514604 (= c!275935 ((_ is Empty!6159) (c!275421 lt!640664)))))

(assert (=> d!514604 (= (list!7434 (c!275421 lt!640664)) e!1081058)))

(declare-fun b!1688741 () Bool)

(assert (=> b!1688741 (= e!1081059 (list!7440 (xs!9019 (c!275421 lt!640664))))))

(assert (= (and d!514604 c!275935) b!1688739))

(assert (= (and d!514604 (not c!275935)) b!1688740))

(assert (= (and b!1688740 c!275936) b!1688741))

(assert (= (and b!1688740 (not c!275936)) b!1688742))

(declare-fun m!2074153 () Bool)

(assert (=> b!1688742 m!2074153))

(declare-fun m!2074155 () Bool)

(assert (=> b!1688742 m!2074155))

(assert (=> b!1688742 m!2074153))

(assert (=> b!1688742 m!2074155))

(declare-fun m!2074157 () Bool)

(assert (=> b!1688742 m!2074157))

(declare-fun m!2074159 () Bool)

(assert (=> b!1688741 m!2074159))

(assert (=> d!513618 d!514604))

(declare-fun d!514606 () Bool)

(declare-fun res!757199 () Bool)

(declare-fun e!1081064 () Bool)

(assert (=> d!514606 (=> res!757199 e!1081064)))

(assert (=> d!514606 (= res!757199 ((_ is Nil!18488) tokens!457))))

(assert (=> d!514606 (= (forall!4209 tokens!457 lambda!68335) e!1081064)))

(declare-fun b!1688747 () Bool)

(declare-fun e!1081065 () Bool)

(assert (=> b!1688747 (= e!1081064 e!1081065)))

(declare-fun res!757200 () Bool)

(assert (=> b!1688747 (=> (not res!757200) (not e!1081065))))

(declare-fun dynLambda!8394 (Int Token!6076) Bool)

(assert (=> b!1688747 (= res!757200 (dynLambda!8394 lambda!68335 (h!23889 tokens!457)))))

(declare-fun b!1688748 () Bool)

(assert (=> b!1688748 (= e!1081065 (forall!4209 (t!154811 tokens!457) lambda!68335))))

(assert (= (and d!514606 (not res!757199)) b!1688747))

(assert (= (and b!1688747 res!757200) b!1688748))

(declare-fun b_lambda!53095 () Bool)

(assert (=> (not b_lambda!53095) (not b!1688747)))

(declare-fun m!2074161 () Bool)

(assert (=> b!1688747 m!2074161))

(declare-fun m!2074163 () Bool)

(assert (=> b!1688748 m!2074163))

(assert (=> d!513554 d!514606))

(assert (=> d!513554 d!513518))

(declare-fun d!514608 () Bool)

(declare-fun lt!642166 () Bool)

(assert (=> d!514608 (= lt!642166 (select (content!2610 rules!1846) (rule!5161 (_1!10520 (get!5420 lt!641052)))))))

(declare-fun e!1081066 () Bool)

(assert (=> d!514608 (= lt!642166 e!1081066)))

(declare-fun res!757201 () Bool)

(assert (=> d!514608 (=> (not res!757201) (not e!1081066))))

(assert (=> d!514608 (= res!757201 ((_ is Cons!18487) rules!1846))))

(assert (=> d!514608 (= (contains!3250 rules!1846 (rule!5161 (_1!10520 (get!5420 lt!641052)))) lt!642166)))

(declare-fun b!1688749 () Bool)

(declare-fun e!1081067 () Bool)

(assert (=> b!1688749 (= e!1081066 e!1081067)))

(declare-fun res!757202 () Bool)

(assert (=> b!1688749 (=> res!757202 e!1081067)))

(assert (=> b!1688749 (= res!757202 (= (h!23888 rules!1846) (rule!5161 (_1!10520 (get!5420 lt!641052)))))))

(declare-fun b!1688750 () Bool)

(assert (=> b!1688750 (= e!1081067 (contains!3250 (t!154810 rules!1846) (rule!5161 (_1!10520 (get!5420 lt!641052)))))))

(assert (= (and d!514608 res!757201) b!1688749))

(assert (= (and b!1688749 (not res!757202)) b!1688750))

(assert (=> d!514608 m!2073481))

(declare-fun m!2074165 () Bool)

(assert (=> d!514608 m!2074165))

(declare-fun m!2074167 () Bool)

(assert (=> b!1688750 m!2074167))

(assert (=> b!1686836 d!514608))

(assert (=> b!1686836 d!514046))

(declare-fun d!514610 () Bool)

(declare-fun charsToInt!0 (List!18556) (_ BitVec 32))

(assert (=> d!514610 (= (inv!16 (value!102440 (h!23889 tokens!457))) (= (charsToInt!0 (text!23862 (value!102440 (h!23889 tokens!457)))) (value!102431 (value!102440 (h!23889 tokens!457)))))))

(declare-fun bs!399816 () Bool)

(assert (= bs!399816 d!514610))

(declare-fun m!2074169 () Bool)

(assert (=> bs!399816 m!2074169))

(assert (=> b!1686759 d!514610))

(declare-fun d!514612 () Bool)

(assert (=> d!514612 (= (list!7432 lt!641144) (list!7436 (c!275419 lt!641144)))))

(declare-fun bs!399817 () Bool)

(assert (= bs!399817 d!514612))

(declare-fun m!2074171 () Bool)

(assert (=> bs!399817 m!2074171))

(assert (=> d!513690 d!514612))

(declare-fun d!514614 () Bool)

(declare-fun c!275937 () Bool)

(assert (=> d!514614 (= c!275937 ((_ is Cons!18488) (list!7431 lt!640664)))))

(declare-fun e!1081068 () List!18555)

(assert (=> d!514614 (= (printList!997 thiss!17113 (list!7431 lt!640664)) e!1081068)))

(declare-fun b!1688751 () Bool)

(assert (=> b!1688751 (= e!1081068 (++!5065 (list!7432 (charsOf!1904 (h!23889 (list!7431 lt!640664)))) (printList!997 thiss!17113 (t!154811 (list!7431 lt!640664)))))))

(declare-fun b!1688752 () Bool)

(assert (=> b!1688752 (= e!1081068 Nil!18485)))

(assert (= (and d!514614 c!275937) b!1688751))

(assert (= (and d!514614 (not c!275937)) b!1688752))

(declare-fun m!2074173 () Bool)

(assert (=> b!1688751 m!2074173))

(assert (=> b!1688751 m!2074173))

(declare-fun m!2074175 () Bool)

(assert (=> b!1688751 m!2074175))

(declare-fun m!2074177 () Bool)

(assert (=> b!1688751 m!2074177))

(assert (=> b!1688751 m!2074175))

(assert (=> b!1688751 m!2074177))

(declare-fun m!2074179 () Bool)

(assert (=> b!1688751 m!2074179))

(assert (=> d!513690 d!514614))

(assert (=> d!513690 d!513618))

(declare-fun d!514616 () Bool)

(declare-fun lt!642171 () BalanceConc!12260)

(assert (=> d!514616 (= (list!7432 lt!642171) (printListTailRec!426 thiss!17113 (dropList!738 lt!640664 0) (list!7432 (BalanceConc!12261 Empty!6158))))))

(declare-fun e!1081069 () BalanceConc!12260)

(assert (=> d!514616 (= lt!642171 e!1081069)))

(declare-fun c!275938 () Bool)

(assert (=> d!514616 (= c!275938 (>= 0 (size!14725 lt!640664)))))

(declare-fun e!1081070 () Bool)

(assert (=> d!514616 e!1081070))

(declare-fun res!757203 () Bool)

(assert (=> d!514616 (=> (not res!757203) (not e!1081070))))

(assert (=> d!514616 (= res!757203 (>= 0 0))))

(assert (=> d!514616 (= (printTailRec!935 thiss!17113 lt!640664 0 (BalanceConc!12261 Empty!6158)) lt!642171)))

(declare-fun b!1688753 () Bool)

(assert (=> b!1688753 (= e!1081070 (<= 0 (size!14725 lt!640664)))))

(declare-fun b!1688754 () Bool)

(assert (=> b!1688754 (= e!1081069 (BalanceConc!12261 Empty!6158))))

(declare-fun b!1688755 () Bool)

(assert (=> b!1688755 (= e!1081069 (printTailRec!935 thiss!17113 lt!640664 (+ 0 1) (++!5066 (BalanceConc!12261 Empty!6158) (charsOf!1904 (apply!5040 lt!640664 0)))))))

(declare-fun lt!642172 () List!18558)

(assert (=> b!1688755 (= lt!642172 (list!7431 lt!640664))))

(declare-fun lt!642170 () Unit!31839)

(assert (=> b!1688755 (= lt!642170 (lemmaDropApply!633 lt!642172 0))))

(assert (=> b!1688755 (= (head!3782 (drop!959 lt!642172 0)) (apply!5043 lt!642172 0))))

(declare-fun lt!642168 () Unit!31839)

(assert (=> b!1688755 (= lt!642168 lt!642170)))

(declare-fun lt!642173 () List!18558)

(assert (=> b!1688755 (= lt!642173 (list!7431 lt!640664))))

(declare-fun lt!642167 () Unit!31839)

(assert (=> b!1688755 (= lt!642167 (lemmaDropTail!613 lt!642173 0))))

(assert (=> b!1688755 (= (tail!2519 (drop!959 lt!642173 0)) (drop!959 lt!642173 (+ 0 1)))))

(declare-fun lt!642169 () Unit!31839)

(assert (=> b!1688755 (= lt!642169 lt!642167)))

(assert (= (and d!514616 res!757203) b!1688753))

(assert (= (and d!514616 c!275938) b!1688754))

(assert (= (and d!514616 (not c!275938)) b!1688755))

(declare-fun m!2074181 () Bool)

(assert (=> d!514616 m!2074181))

(declare-fun m!2074183 () Bool)

(assert (=> d!514616 m!2074183))

(assert (=> d!514616 m!2070731))

(declare-fun m!2074185 () Bool)

(assert (=> d!514616 m!2074185))

(assert (=> d!514616 m!2070731))

(assert (=> d!514616 m!2074183))

(declare-fun m!2074187 () Bool)

(assert (=> d!514616 m!2074187))

(assert (=> b!1688753 m!2074187))

(declare-fun m!2074189 () Bool)

(assert (=> b!1688755 m!2074189))

(declare-fun m!2074191 () Bool)

(assert (=> b!1688755 m!2074191))

(declare-fun m!2074193 () Bool)

(assert (=> b!1688755 m!2074193))

(declare-fun m!2074195 () Bool)

(assert (=> b!1688755 m!2074195))

(declare-fun m!2074197 () Bool)

(assert (=> b!1688755 m!2074197))

(declare-fun m!2074199 () Bool)

(assert (=> b!1688755 m!2074199))

(declare-fun m!2074201 () Bool)

(assert (=> b!1688755 m!2074201))

(declare-fun m!2074203 () Bool)

(assert (=> b!1688755 m!2074203))

(assert (=> b!1688755 m!2074197))

(assert (=> b!1688755 m!2074193))

(declare-fun m!2074205 () Bool)

(assert (=> b!1688755 m!2074205))

(assert (=> b!1688755 m!2074201))

(declare-fun m!2074207 () Bool)

(assert (=> b!1688755 m!2074207))

(assert (=> b!1688755 m!2074195))

(declare-fun m!2074209 () Bool)

(assert (=> b!1688755 m!2074209))

(assert (=> b!1688755 m!2069769))

(assert (=> b!1688755 m!2074199))

(declare-fun m!2074211 () Bool)

(assert (=> b!1688755 m!2074211))

(assert (=> d!513690 d!514616))

(declare-fun b!1688758 () Bool)

(declare-fun e!1081072 () Bool)

(assert (=> b!1688758 (= e!1081072 (isPrefix!1513 (tail!2518 (tail!2518 lt!640654)) (tail!2518 (tail!2518 lt!640645))))))

(declare-fun b!1688756 () Bool)

(declare-fun e!1081073 () Bool)

(assert (=> b!1688756 (= e!1081073 e!1081072)))

(declare-fun res!757205 () Bool)

(assert (=> b!1688756 (=> (not res!757205) (not e!1081072))))

(assert (=> b!1688756 (= res!757205 (not ((_ is Nil!18485) (tail!2518 lt!640645))))))

(declare-fun d!514618 () Bool)

(declare-fun e!1081071 () Bool)

(assert (=> d!514618 e!1081071))

(declare-fun res!757206 () Bool)

(assert (=> d!514618 (=> res!757206 e!1081071)))

(declare-fun lt!642174 () Bool)

(assert (=> d!514618 (= res!757206 (not lt!642174))))

(assert (=> d!514618 (= lt!642174 e!1081073)))

(declare-fun res!757207 () Bool)

(assert (=> d!514618 (=> res!757207 e!1081073)))

(assert (=> d!514618 (= res!757207 ((_ is Nil!18485) (tail!2518 lt!640654)))))

(assert (=> d!514618 (= (isPrefix!1513 (tail!2518 lt!640654) (tail!2518 lt!640645)) lt!642174)))

(declare-fun b!1688757 () Bool)

(declare-fun res!757204 () Bool)

(assert (=> b!1688757 (=> (not res!757204) (not e!1081072))))

(assert (=> b!1688757 (= res!757204 (= (head!3780 (tail!2518 lt!640654)) (head!3780 (tail!2518 lt!640645))))))

(declare-fun b!1688759 () Bool)

(assert (=> b!1688759 (= e!1081071 (>= (size!14724 (tail!2518 lt!640645)) (size!14724 (tail!2518 lt!640654))))))

(assert (= (and d!514618 (not res!757207)) b!1688756))

(assert (= (and b!1688756 res!757205) b!1688757))

(assert (= (and b!1688757 res!757204) b!1688758))

(assert (= (and d!514618 (not res!757206)) b!1688759))

(assert (=> b!1688758 m!2070405))

(declare-fun m!2074213 () Bool)

(assert (=> b!1688758 m!2074213))

(assert (=> b!1688758 m!2070407))

(declare-fun m!2074215 () Bool)

(assert (=> b!1688758 m!2074215))

(assert (=> b!1688758 m!2074213))

(assert (=> b!1688758 m!2074215))

(declare-fun m!2074217 () Bool)

(assert (=> b!1688758 m!2074217))

(assert (=> b!1688757 m!2070405))

(declare-fun m!2074219 () Bool)

(assert (=> b!1688757 m!2074219))

(assert (=> b!1688757 m!2070407))

(declare-fun m!2074221 () Bool)

(assert (=> b!1688757 m!2074221))

(assert (=> b!1688759 m!2070407))

(declare-fun m!2074223 () Bool)

(assert (=> b!1688759 m!2074223))

(assert (=> b!1688759 m!2070405))

(declare-fun m!2074225 () Bool)

(assert (=> b!1688759 m!2074225))

(assert (=> b!1686742 d!514618))

(declare-fun d!514620 () Bool)

(assert (=> d!514620 (= (tail!2518 lt!640654) (t!154808 lt!640654))))

(assert (=> b!1686742 d!514620))

(declare-fun d!514622 () Bool)

(assert (=> d!514622 (= (tail!2518 lt!640645) (t!154808 lt!640645))))

(assert (=> b!1686742 d!514622))

(assert (=> b!1686628 d!514320))

(assert (=> b!1686628 d!514518))

(assert (=> b!1686628 d!514520))

(assert (=> b!1686628 d!514326))

(assert (=> d!513590 d!513518))

(assert (=> d!513590 d!514186))

(assert (=> d!513590 d!514188))

(assert (=> d!513590 d!513692))

(declare-fun d!514624 () Bool)

(assert (=> d!514624 (= (list!7431 (_1!10519 (lex!1368 thiss!17113 rules!1846 (print!1415 thiss!17113 (seqFromList!2248 (t!154811 tokens!457)))))) (list!7434 (c!275421 (_1!10519 (lex!1368 thiss!17113 rules!1846 (print!1415 thiss!17113 (seqFromList!2248 (t!154811 tokens!457))))))))))

(declare-fun bs!399818 () Bool)

(assert (= bs!399818 d!514624))

(declare-fun m!2074227 () Bool)

(assert (=> bs!399818 m!2074227))

(assert (=> d!513590 d!514624))

(declare-fun d!514626 () Bool)

(declare-fun e!1081076 () Bool)

(assert (=> d!514626 e!1081076))

(declare-fun res!757212 () Bool)

(assert (=> d!514626 (=> (not res!757212) (not e!1081076))))

(assert (=> d!514626 (= res!757212 (isDefined!2920 (getRuleFromTag!345 thiss!17113 rules!1846 (tag!3545 (rule!5161 lt!641264)))))))

(declare-fun lt!642177 () Unit!31839)

(declare-fun choose!10221 (LexerInterface!2884 List!18557 List!18555 Token!6076) Unit!31839)

(assert (=> d!514626 (= lt!642177 (choose!10221 thiss!17113 rules!1846 lt!640654 lt!641264))))

(assert (=> d!514626 (rulesInvariant!2553 thiss!17113 rules!1846)))

(assert (=> d!514626 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!345 thiss!17113 rules!1846 lt!640654 lt!641264) lt!642177)))

(declare-fun b!1688764 () Bool)

(declare-fun res!757213 () Bool)

(assert (=> b!1688764 (=> (not res!757213) (not e!1081076))))

(assert (=> b!1688764 (= res!757213 (matchR!2072 (regex!3255 (get!5424 (getRuleFromTag!345 thiss!17113 rules!1846 (tag!3545 (rule!5161 lt!641264))))) (list!7432 (charsOf!1904 lt!641264))))))

(declare-fun b!1688765 () Bool)

(assert (=> b!1688765 (= e!1081076 (= (rule!5161 lt!641264) (get!5424 (getRuleFromTag!345 thiss!17113 rules!1846 (tag!3545 (rule!5161 lt!641264))))))))

(assert (= (and d!514626 res!757212) b!1688764))

(assert (= (and b!1688764 res!757213) b!1688765))

(assert (=> d!514626 m!2071001))

(assert (=> d!514626 m!2071001))

(assert (=> d!514626 m!2071021))

(declare-fun m!2074229 () Bool)

(assert (=> d!514626 m!2074229))

(assert (=> d!514626 m!2069725))

(assert (=> b!1688764 m!2071001))

(assert (=> b!1688764 m!2071003))

(assert (=> b!1688764 m!2071001))

(assert (=> b!1688764 m!2071005))

(assert (=> b!1688764 m!2070997))

(assert (=> b!1688764 m!2070999))

(assert (=> b!1688764 m!2071005))

(assert (=> b!1688764 m!2070997))

(assert (=> b!1688765 m!2071001))

(assert (=> b!1688765 m!2071001))

(assert (=> b!1688765 m!2071003))

(assert (=> d!513744 d!514626))

(declare-fun d!514628 () Bool)

(assert (=> d!514628 (= (head!3782 (list!7431 (_1!10519 (lex!1368 thiss!17113 rules!1846 (seqFromList!2247 lt!640654))))) (h!23889 (list!7431 (_1!10519 (lex!1368 thiss!17113 rules!1846 (seqFromList!2247 lt!640654))))))))

(assert (=> d!513744 d!514628))

(declare-fun d!514630 () Bool)

(assert (=> d!514630 (= (isDefined!2920 (getRuleFromTag!345 thiss!17113 rules!1846 (tag!3545 (rule!5161 lt!641264)))) (not (isEmpty!11580 (getRuleFromTag!345 thiss!17113 rules!1846 (tag!3545 (rule!5161 lt!641264))))))))

(declare-fun bs!399819 () Bool)

(assert (= bs!399819 d!514630))

(assert (=> bs!399819 m!2071001))

(declare-fun m!2074231 () Bool)

(assert (=> bs!399819 m!2074231))

(assert (=> d!513744 d!514630))

(assert (=> d!513744 d!513688))

(assert (=> d!513744 d!513648))

(declare-fun d!514632 () Bool)

(assert (=> d!514632 (isPrefix!1513 lt!641261 (++!5065 lt!640654 lt!640662))))

(declare-fun lt!642180 () Unit!31839)

(declare-fun choose!10222 (List!18555 List!18555 List!18555) Unit!31839)

(assert (=> d!514632 (= lt!642180 (choose!10222 lt!641261 lt!640654 lt!640662))))

(assert (=> d!514632 (isPrefix!1513 lt!641261 lt!640654)))

(assert (=> d!514632 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!231 lt!641261 lt!640654 lt!640662) lt!642180)))

(declare-fun bs!399820 () Bool)

(assert (= bs!399820 d!514632))

(assert (=> bs!399820 m!2069749))

(assert (=> bs!399820 m!2069749))

(assert (=> bs!399820 m!2071029))

(declare-fun m!2074233 () Bool)

(assert (=> bs!399820 m!2074233))

(declare-fun m!2074235 () Bool)

(assert (=> bs!399820 m!2074235))

(assert (=> d!513744 d!514632))

(assert (=> d!513744 d!514096))

(assert (=> d!513744 d!513708))

(declare-fun d!514634 () Bool)

(assert (=> d!514634 (isPrefix!1513 lt!641268 (++!5065 lt!641268 lt!641262))))

(declare-fun lt!642181 () Unit!31839)

(assert (=> d!514634 (= lt!642181 (choose!10199 lt!641268 lt!641262))))

(assert (=> d!514634 (= (lemmaConcatTwoListThenFirstIsPrefix!1034 lt!641268 lt!641262) lt!642181)))

(declare-fun bs!399821 () Bool)

(assert (= bs!399821 d!514634))

(assert (=> bs!399821 m!2071033))

(assert (=> bs!399821 m!2071033))

(assert (=> bs!399821 m!2071039))

(declare-fun m!2074237 () Bool)

(assert (=> bs!399821 m!2074237))

(assert (=> d!513744 d!514634))

(declare-fun b!1688768 () Bool)

(declare-fun res!757215 () Bool)

(declare-fun e!1081077 () Bool)

(assert (=> b!1688768 (=> (not res!757215) (not e!1081077))))

(declare-fun lt!642182 () List!18555)

(assert (=> b!1688768 (= res!757215 (= (size!14724 lt!642182) (+ (size!14724 lt!641268) (size!14724 lt!641262))))))

(declare-fun d!514636 () Bool)

(assert (=> d!514636 e!1081077))

(declare-fun res!757214 () Bool)

(assert (=> d!514636 (=> (not res!757214) (not e!1081077))))

(assert (=> d!514636 (= res!757214 (= (content!2605 lt!642182) ((_ map or) (content!2605 lt!641268) (content!2605 lt!641262))))))

(declare-fun e!1081078 () List!18555)

(assert (=> d!514636 (= lt!642182 e!1081078)))

(declare-fun c!275939 () Bool)

(assert (=> d!514636 (= c!275939 ((_ is Nil!18485) lt!641268))))

(assert (=> d!514636 (= (++!5065 lt!641268 lt!641262) lt!642182)))

(declare-fun b!1688767 () Bool)

(assert (=> b!1688767 (= e!1081078 (Cons!18485 (h!23886 lt!641268) (++!5065 (t!154808 lt!641268) lt!641262)))))

(declare-fun b!1688769 () Bool)

(assert (=> b!1688769 (= e!1081077 (or (not (= lt!641262 Nil!18485)) (= lt!642182 lt!641268)))))

(declare-fun b!1688766 () Bool)

(assert (=> b!1688766 (= e!1081078 lt!641262)))

(assert (= (and d!514636 c!275939) b!1688766))

(assert (= (and d!514636 (not c!275939)) b!1688767))

(assert (= (and d!514636 res!757214) b!1688768))

(assert (= (and b!1688768 res!757215) b!1688769))

(declare-fun m!2074239 () Bool)

(assert (=> b!1688768 m!2074239))

(declare-fun m!2074241 () Bool)

(assert (=> b!1688768 m!2074241))

(declare-fun m!2074243 () Bool)

(assert (=> b!1688768 m!2074243))

(declare-fun m!2074245 () Bool)

(assert (=> d!514636 m!2074245))

(declare-fun m!2074247 () Bool)

(assert (=> d!514636 m!2074247))

(declare-fun m!2074249 () Bool)

(assert (=> d!514636 m!2074249))

(declare-fun m!2074251 () Bool)

(assert (=> b!1688767 m!2074251))

(assert (=> d!513744 d!514636))

(declare-fun d!514638 () Bool)

(declare-fun e!1081081 () Bool)

(assert (=> d!514638 e!1081081))

(declare-fun res!757220 () Bool)

(assert (=> d!514638 (=> res!757220 e!1081081)))

(declare-fun lt!642186 () Option!3568)

(assert (=> d!514638 (= res!757220 (isEmpty!11573 lt!642186))))

(declare-fun e!1081080 () Option!3568)

(assert (=> d!514638 (= lt!642186 e!1081080)))

(declare-fun c!275940 () Bool)

(assert (=> d!514638 (= c!275940 (and ((_ is Cons!18487) rules!1846) ((_ is Nil!18487) (t!154810 rules!1846))))))

(declare-fun lt!642185 () Unit!31839)

(declare-fun lt!642184 () Unit!31839)

(assert (=> d!514638 (= lt!642185 lt!642184)))

(assert (=> d!514638 (isPrefix!1513 (++!5065 lt!640654 lt!640662) (++!5065 lt!640654 lt!640662))))

(assert (=> d!514638 (= lt!642184 (lemmaIsPrefixRefl!1030 (++!5065 lt!640654 lt!640662) (++!5065 lt!640654 lt!640662)))))

(assert (=> d!514638 (rulesValidInductive!1052 thiss!17113 rules!1846)))

(assert (=> d!514638 (= (maxPrefix!1444 thiss!17113 rules!1846 (++!5065 lt!640654 lt!640662)) lt!642186)))

(declare-fun b!1688770 () Bool)

(declare-fun e!1081079 () Bool)

(assert (=> b!1688770 (= e!1081081 e!1081079)))

(declare-fun res!757221 () Bool)

(assert (=> b!1688770 (=> (not res!757221) (not e!1081079))))

(assert (=> b!1688770 (= res!757221 (isDefined!2917 lt!642186))))

(declare-fun b!1688771 () Bool)

(declare-fun call!107975 () Option!3568)

(assert (=> b!1688771 (= e!1081080 call!107975)))

(declare-fun b!1688772 () Bool)

(assert (=> b!1688772 (= e!1081079 (contains!3250 rules!1846 (rule!5161 (_1!10520 (get!5420 lt!642186)))))))

(declare-fun b!1688773 () Bool)

(declare-fun res!757217 () Bool)

(assert (=> b!1688773 (=> (not res!757217) (not e!1081079))))

(assert (=> b!1688773 (= res!757217 (< (size!14724 (_2!10520 (get!5420 lt!642186))) (size!14724 (++!5065 lt!640654 lt!640662))))))

(declare-fun b!1688774 () Bool)

(declare-fun res!757216 () Bool)

(assert (=> b!1688774 (=> (not res!757216) (not e!1081079))))

(assert (=> b!1688774 (= res!757216 (= (value!102440 (_1!10520 (get!5420 lt!642186))) (apply!5039 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!642186)))) (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!642186)))))))))

(declare-fun b!1688775 () Bool)

(declare-fun res!757218 () Bool)

(assert (=> b!1688775 (=> (not res!757218) (not e!1081079))))

(assert (=> b!1688775 (= res!757218 (matchR!2072 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!642186)))) (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!642186))))))))

(declare-fun bm!107970 () Bool)

(assert (=> bm!107970 (= call!107975 (maxPrefixOneRule!845 thiss!17113 (h!23888 rules!1846) (++!5065 lt!640654 lt!640662)))))

(declare-fun b!1688776 () Bool)

(declare-fun res!757219 () Bool)

(assert (=> b!1688776 (=> (not res!757219) (not e!1081079))))

(assert (=> b!1688776 (= res!757219 (= (++!5065 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!642186)))) (_2!10520 (get!5420 lt!642186))) (++!5065 lt!640654 lt!640662)))))

(declare-fun b!1688777 () Bool)

(declare-fun res!757222 () Bool)

(assert (=> b!1688777 (=> (not res!757222) (not e!1081079))))

(assert (=> b!1688777 (= res!757222 (= (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!642186)))) (originalCharacters!4069 (_1!10520 (get!5420 lt!642186)))))))

(declare-fun b!1688778 () Bool)

(declare-fun lt!642183 () Option!3568)

(declare-fun lt!642187 () Option!3568)

(assert (=> b!1688778 (= e!1081080 (ite (and ((_ is None!3567) lt!642183) ((_ is None!3567) lt!642187)) None!3567 (ite ((_ is None!3567) lt!642187) lt!642183 (ite ((_ is None!3567) lt!642183) lt!642187 (ite (>= (size!14720 (_1!10520 (v!24888 lt!642183))) (size!14720 (_1!10520 (v!24888 lt!642187)))) lt!642183 lt!642187)))))))

(assert (=> b!1688778 (= lt!642183 call!107975)))

(assert (=> b!1688778 (= lt!642187 (maxPrefix!1444 thiss!17113 (t!154810 rules!1846) (++!5065 lt!640654 lt!640662)))))

(assert (= (and d!514638 c!275940) b!1688771))

(assert (= (and d!514638 (not c!275940)) b!1688778))

(assert (= (or b!1688771 b!1688778) bm!107970))

(assert (= (and d!514638 (not res!757220)) b!1688770))

(assert (= (and b!1688770 res!757221) b!1688777))

(assert (= (and b!1688777 res!757222) b!1688773))

(assert (= (and b!1688773 res!757217) b!1688776))

(assert (= (and b!1688776 res!757219) b!1688774))

(assert (= (and b!1688774 res!757216) b!1688775))

(assert (= (and b!1688775 res!757218) b!1688772))

(declare-fun m!2074253 () Bool)

(assert (=> b!1688775 m!2074253))

(declare-fun m!2074255 () Bool)

(assert (=> b!1688775 m!2074255))

(assert (=> b!1688775 m!2074255))

(declare-fun m!2074257 () Bool)

(assert (=> b!1688775 m!2074257))

(assert (=> b!1688775 m!2074257))

(declare-fun m!2074259 () Bool)

(assert (=> b!1688775 m!2074259))

(assert (=> b!1688777 m!2074253))

(assert (=> b!1688777 m!2074255))

(assert (=> b!1688777 m!2074255))

(assert (=> b!1688777 m!2074257))

(assert (=> b!1688776 m!2074253))

(assert (=> b!1688776 m!2074255))

(assert (=> b!1688776 m!2074255))

(assert (=> b!1688776 m!2074257))

(assert (=> b!1688776 m!2074257))

(declare-fun m!2074261 () Bool)

(assert (=> b!1688776 m!2074261))

(assert (=> bm!107970 m!2069749))

(declare-fun m!2074263 () Bool)

(assert (=> bm!107970 m!2074263))

(declare-fun m!2074265 () Bool)

(assert (=> b!1688770 m!2074265))

(assert (=> b!1688772 m!2074253))

(declare-fun m!2074267 () Bool)

(assert (=> b!1688772 m!2074267))

(assert (=> b!1688774 m!2074253))

(declare-fun m!2074269 () Bool)

(assert (=> b!1688774 m!2074269))

(assert (=> b!1688774 m!2074269))

(declare-fun m!2074271 () Bool)

(assert (=> b!1688774 m!2074271))

(assert (=> b!1688773 m!2074253))

(declare-fun m!2074273 () Bool)

(assert (=> b!1688773 m!2074273))

(assert (=> b!1688773 m!2069749))

(assert (=> b!1688773 m!2074061))

(assert (=> b!1688778 m!2069749))

(declare-fun m!2074275 () Bool)

(assert (=> b!1688778 m!2074275))

(declare-fun m!2074277 () Bool)

(assert (=> d!514638 m!2074277))

(assert (=> d!514638 m!2069749))

(assert (=> d!514638 m!2069749))

(declare-fun m!2074279 () Bool)

(assert (=> d!514638 m!2074279))

(assert (=> d!514638 m!2069749))

(assert (=> d!514638 m!2069749))

(declare-fun m!2074281 () Bool)

(assert (=> d!514638 m!2074281))

(assert (=> d!514638 m!2070101))

(assert (=> d!513744 d!514638))

(declare-fun d!514640 () Bool)

(assert (=> d!514640 (= (isDefined!2917 (maxPrefix!1444 thiss!17113 rules!1846 (++!5065 lt!640654 lt!640662))) (not (isEmpty!11573 (maxPrefix!1444 thiss!17113 rules!1846 (++!5065 lt!640654 lt!640662)))))))

(declare-fun bs!399822 () Bool)

(assert (= bs!399822 d!514640))

(assert (=> bs!399822 m!2071017))

(assert (=> bs!399822 m!2071025))

(assert (=> d!513744 d!514640))

(declare-fun d!514642 () Bool)

(assert (=> d!514642 (= (get!5420 (maxPrefix!1444 thiss!17113 rules!1846 lt!640654)) (v!24888 (maxPrefix!1444 thiss!17113 rules!1846 lt!640654)))))

(assert (=> d!513744 d!514642))

(declare-fun b!1688781 () Bool)

(declare-fun e!1081083 () Bool)

(assert (=> b!1688781 (= e!1081083 (isPrefix!1513 (tail!2518 lt!641261) (tail!2518 (++!5065 lt!640654 lt!640662))))))

(declare-fun b!1688779 () Bool)

(declare-fun e!1081084 () Bool)

(assert (=> b!1688779 (= e!1081084 e!1081083)))

(declare-fun res!757224 () Bool)

(assert (=> b!1688779 (=> (not res!757224) (not e!1081083))))

(assert (=> b!1688779 (= res!757224 (not ((_ is Nil!18485) (++!5065 lt!640654 lt!640662))))))

(declare-fun d!514644 () Bool)

(declare-fun e!1081082 () Bool)

(assert (=> d!514644 e!1081082))

(declare-fun res!757225 () Bool)

(assert (=> d!514644 (=> res!757225 e!1081082)))

(declare-fun lt!642188 () Bool)

(assert (=> d!514644 (= res!757225 (not lt!642188))))

(assert (=> d!514644 (= lt!642188 e!1081084)))

(declare-fun res!757226 () Bool)

(assert (=> d!514644 (=> res!757226 e!1081084)))

(assert (=> d!514644 (= res!757226 ((_ is Nil!18485) lt!641261))))

(assert (=> d!514644 (= (isPrefix!1513 lt!641261 (++!5065 lt!640654 lt!640662)) lt!642188)))

(declare-fun b!1688780 () Bool)

(declare-fun res!757223 () Bool)

(assert (=> b!1688780 (=> (not res!757223) (not e!1081083))))

(assert (=> b!1688780 (= res!757223 (= (head!3780 lt!641261) (head!3780 (++!5065 lt!640654 lt!640662))))))

(declare-fun b!1688782 () Bool)

(assert (=> b!1688782 (= e!1081082 (>= (size!14724 (++!5065 lt!640654 lt!640662)) (size!14724 lt!641261)))))

(assert (= (and d!514644 (not res!757226)) b!1688779))

(assert (= (and b!1688779 res!757224) b!1688780))

(assert (= (and b!1688780 res!757223) b!1688781))

(assert (= (and d!514644 (not res!757225)) b!1688782))

(declare-fun m!2074283 () Bool)

(assert (=> b!1688781 m!2074283))

(assert (=> b!1688781 m!2069749))

(assert (=> b!1688781 m!2074055))

(assert (=> b!1688781 m!2074283))

(assert (=> b!1688781 m!2074055))

(declare-fun m!2074285 () Bool)

(assert (=> b!1688781 m!2074285))

(declare-fun m!2074287 () Bool)

(assert (=> b!1688780 m!2074287))

(assert (=> b!1688780 m!2069749))

(assert (=> b!1688780 m!2074059))

(assert (=> b!1688782 m!2069749))

(assert (=> b!1688782 m!2074061))

(declare-fun m!2074289 () Bool)

(assert (=> b!1688782 m!2074289))

(assert (=> d!513744 d!514644))

(assert (=> d!513744 d!513518))

(declare-fun d!514646 () Bool)

(assert (=> d!514646 (= (isEmpty!11573 (maxPrefix!1444 thiss!17113 rules!1846 (++!5065 lt!640654 lt!640662))) (not ((_ is Some!3567) (maxPrefix!1444 thiss!17113 rules!1846 (++!5065 lt!640654 lt!640662)))))))

(assert (=> d!513744 d!514646))

(assert (=> d!513744 d!514332))

(assert (=> d!513744 d!513710))

(assert (=> d!513744 d!514088))

(assert (=> d!513744 d!514368))

(declare-fun b!1688785 () Bool)

(declare-fun e!1081086 () Bool)

(assert (=> b!1688785 (= e!1081086 (isPrefix!1513 (tail!2518 lt!641268) (tail!2518 (++!5065 lt!641268 lt!641262))))))

(declare-fun b!1688783 () Bool)

(declare-fun e!1081087 () Bool)

(assert (=> b!1688783 (= e!1081087 e!1081086)))

(declare-fun res!757228 () Bool)

(assert (=> b!1688783 (=> (not res!757228) (not e!1081086))))

(assert (=> b!1688783 (= res!757228 (not ((_ is Nil!18485) (++!5065 lt!641268 lt!641262))))))

(declare-fun d!514648 () Bool)

(declare-fun e!1081085 () Bool)

(assert (=> d!514648 e!1081085))

(declare-fun res!757229 () Bool)

(assert (=> d!514648 (=> res!757229 e!1081085)))

(declare-fun lt!642189 () Bool)

(assert (=> d!514648 (= res!757229 (not lt!642189))))

(assert (=> d!514648 (= lt!642189 e!1081087)))

(declare-fun res!757230 () Bool)

(assert (=> d!514648 (=> res!757230 e!1081087)))

(assert (=> d!514648 (= res!757230 ((_ is Nil!18485) lt!641268))))

(assert (=> d!514648 (= (isPrefix!1513 lt!641268 (++!5065 lt!641268 lt!641262)) lt!642189)))

(declare-fun b!1688784 () Bool)

(declare-fun res!757227 () Bool)

(assert (=> b!1688784 (=> (not res!757227) (not e!1081086))))

(assert (=> b!1688784 (= res!757227 (= (head!3780 lt!641268) (head!3780 (++!5065 lt!641268 lt!641262))))))

(declare-fun b!1688786 () Bool)

(assert (=> b!1688786 (= e!1081085 (>= (size!14724 (++!5065 lt!641268 lt!641262)) (size!14724 lt!641268)))))

(assert (= (and d!514648 (not res!757230)) b!1688783))

(assert (= (and b!1688783 res!757228) b!1688784))

(assert (= (and b!1688784 res!757227) b!1688785))

(assert (= (and d!514648 (not res!757229)) b!1688786))

(declare-fun m!2074291 () Bool)

(assert (=> b!1688785 m!2074291))

(assert (=> b!1688785 m!2071033))

(declare-fun m!2074293 () Bool)

(assert (=> b!1688785 m!2074293))

(assert (=> b!1688785 m!2074291))

(assert (=> b!1688785 m!2074293))

(declare-fun m!2074295 () Bool)

(assert (=> b!1688785 m!2074295))

(declare-fun m!2074297 () Bool)

(assert (=> b!1688784 m!2074297))

(assert (=> b!1688784 m!2071033))

(declare-fun m!2074299 () Bool)

(assert (=> b!1688784 m!2074299))

(assert (=> b!1688786 m!2071033))

(declare-fun m!2074301 () Bool)

(assert (=> b!1688786 m!2074301))

(assert (=> b!1688786 m!2074241))

(assert (=> d!513744 d!514648))

(declare-fun d!514650 () Bool)

(assert (=> d!514650 (= (list!7432 lt!641135) (list!7436 (c!275419 lt!641135)))))

(declare-fun bs!399823 () Bool)

(assert (= bs!399823 d!514650))

(declare-fun m!2074303 () Bool)

(assert (=> bs!399823 m!2074303))

(assert (=> d!513674 d!514650))

(declare-fun d!514652 () Bool)

(declare-fun c!275941 () Bool)

(assert (=> d!514652 (= c!275941 ((_ is Cons!18488) (list!7431 lt!640650)))))

(declare-fun e!1081088 () List!18555)

(assert (=> d!514652 (= (printList!997 thiss!17113 (list!7431 lt!640650)) e!1081088)))

(declare-fun b!1688787 () Bool)

(assert (=> b!1688787 (= e!1081088 (++!5065 (list!7432 (charsOf!1904 (h!23889 (list!7431 lt!640650)))) (printList!997 thiss!17113 (t!154811 (list!7431 lt!640650)))))))

(declare-fun b!1688788 () Bool)

(assert (=> b!1688788 (= e!1081088 Nil!18485)))

(assert (= (and d!514652 c!275941) b!1688787))

(assert (= (and d!514652 (not c!275941)) b!1688788))

(declare-fun m!2074305 () Bool)

(assert (=> b!1688787 m!2074305))

(assert (=> b!1688787 m!2074305))

(declare-fun m!2074307 () Bool)

(assert (=> b!1688787 m!2074307))

(declare-fun m!2074309 () Bool)

(assert (=> b!1688787 m!2074309))

(assert (=> b!1688787 m!2074307))

(assert (=> b!1688787 m!2074309))

(declare-fun m!2074311 () Bool)

(assert (=> b!1688787 m!2074311))

(assert (=> d!513674 d!514652))

(assert (=> d!513674 d!513946))

(assert (=> d!513674 d!513668))

(declare-fun b!1688789 () Bool)

(declare-fun res!757235 () Bool)

(declare-fun e!1081091 () Bool)

(assert (=> b!1688789 (=> (not res!757235) (not e!1081091))))

(declare-fun lt!642191 () Option!3568)

(assert (=> b!1688789 (= res!757235 (= (value!102440 (_1!10520 (get!5420 lt!642191))) (apply!5039 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!642191)))) (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!642191)))))))))

(declare-fun b!1688790 () Bool)

(declare-fun e!1081090 () Bool)

(assert (=> b!1688790 (= e!1081090 (matchR!2072 (regex!3255 (h!23888 rules!1846)) (_1!10524 (findLongestMatchInner!376 (regex!3255 (h!23888 rules!1846)) Nil!18485 (size!14724 Nil!18485) (originalCharacters!4069 (h!23889 tokens!457)) (originalCharacters!4069 (h!23889 tokens!457)) (size!14724 (originalCharacters!4069 (h!23889 tokens!457)))))))))

(declare-fun b!1688791 () Bool)

(declare-fun e!1081089 () Bool)

(assert (=> b!1688791 (= e!1081089 e!1081091)))

(declare-fun res!757236 () Bool)

(assert (=> b!1688791 (=> (not res!757236) (not e!1081091))))

(assert (=> b!1688791 (= res!757236 (matchR!2072 (regex!3255 (h!23888 rules!1846)) (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!642191))))))))

(declare-fun b!1688792 () Bool)

(declare-fun res!757237 () Bool)

(assert (=> b!1688792 (=> (not res!757237) (not e!1081091))))

(assert (=> b!1688792 (= res!757237 (< (size!14724 (_2!10520 (get!5420 lt!642191))) (size!14724 (originalCharacters!4069 (h!23889 tokens!457)))))))

(declare-fun b!1688793 () Bool)

(assert (=> b!1688793 (= e!1081091 (= (size!14720 (_1!10520 (get!5420 lt!642191))) (size!14724 (originalCharacters!4069 (_1!10520 (get!5420 lt!642191))))))))

(declare-fun b!1688794 () Bool)

(declare-fun e!1081092 () Option!3568)

(declare-fun lt!642193 () tuple2!18244)

(assert (=> b!1688794 (= e!1081092 (Some!3567 (tuple2!18237 (Token!6077 (apply!5039 (transformation!3255 (h!23888 rules!1846)) (seqFromList!2247 (_1!10524 lt!642193))) (h!23888 rules!1846) (size!14726 (seqFromList!2247 (_1!10524 lt!642193))) (_1!10524 lt!642193)) (_2!10524 lt!642193))))))

(declare-fun lt!642194 () Unit!31839)

(assert (=> b!1688794 (= lt!642194 (longestMatchIsAcceptedByMatchOrIsEmpty!360 (regex!3255 (h!23888 rules!1846)) (originalCharacters!4069 (h!23889 tokens!457))))))

(declare-fun res!757231 () Bool)

(assert (=> b!1688794 (= res!757231 (isEmpty!11569 (_1!10524 (findLongestMatchInner!376 (regex!3255 (h!23888 rules!1846)) Nil!18485 (size!14724 Nil!18485) (originalCharacters!4069 (h!23889 tokens!457)) (originalCharacters!4069 (h!23889 tokens!457)) (size!14724 (originalCharacters!4069 (h!23889 tokens!457)))))))))

(assert (=> b!1688794 (=> res!757231 e!1081090)))

(assert (=> b!1688794 e!1081090))

(declare-fun lt!642192 () Unit!31839)

(assert (=> b!1688794 (= lt!642192 lt!642194)))

(declare-fun lt!642190 () Unit!31839)

(assert (=> b!1688794 (= lt!642190 (lemmaSemiInverse!442 (transformation!3255 (h!23888 rules!1846)) (seqFromList!2247 (_1!10524 lt!642193))))))

(declare-fun b!1688795 () Bool)

(declare-fun res!757234 () Bool)

(assert (=> b!1688795 (=> (not res!757234) (not e!1081091))))

(assert (=> b!1688795 (= res!757234 (= (rule!5161 (_1!10520 (get!5420 lt!642191))) (h!23888 rules!1846)))))

(declare-fun b!1688796 () Bool)

(declare-fun res!757233 () Bool)

(assert (=> b!1688796 (=> (not res!757233) (not e!1081091))))

(assert (=> b!1688796 (= res!757233 (= (++!5065 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!642191)))) (_2!10520 (get!5420 lt!642191))) (originalCharacters!4069 (h!23889 tokens!457))))))

(declare-fun b!1688797 () Bool)

(assert (=> b!1688797 (= e!1081092 None!3567)))

(declare-fun d!514654 () Bool)

(assert (=> d!514654 e!1081089))

(declare-fun res!757232 () Bool)

(assert (=> d!514654 (=> res!757232 e!1081089)))

(assert (=> d!514654 (= res!757232 (isEmpty!11573 lt!642191))))

(assert (=> d!514654 (= lt!642191 e!1081092)))

(declare-fun c!275942 () Bool)

(assert (=> d!514654 (= c!275942 (isEmpty!11569 (_1!10524 lt!642193)))))

(assert (=> d!514654 (= lt!642193 (findLongestMatch!303 (regex!3255 (h!23888 rules!1846)) (originalCharacters!4069 (h!23889 tokens!457))))))

(assert (=> d!514654 (ruleValid!768 thiss!17113 (h!23888 rules!1846))))

(assert (=> d!514654 (= (maxPrefixOneRule!845 thiss!17113 (h!23888 rules!1846) (originalCharacters!4069 (h!23889 tokens!457))) lt!642191)))

(assert (= (and d!514654 c!275942) b!1688797))

(assert (= (and d!514654 (not c!275942)) b!1688794))

(assert (= (and b!1688794 (not res!757231)) b!1688790))

(assert (= (and d!514654 (not res!757232)) b!1688791))

(assert (= (and b!1688791 res!757236) b!1688796))

(assert (= (and b!1688796 res!757233) b!1688792))

(assert (= (and b!1688792 res!757237) b!1688795))

(assert (= (and b!1688795 res!757234) b!1688789))

(assert (= (and b!1688789 res!757235) b!1688793))

(assert (=> b!1688790 m!2071635))

(assert (=> b!1688790 m!2070579))

(assert (=> b!1688790 m!2071635))

(assert (=> b!1688790 m!2070579))

(declare-fun m!2074313 () Bool)

(assert (=> b!1688790 m!2074313))

(declare-fun m!2074315 () Bool)

(assert (=> b!1688790 m!2074315))

(declare-fun m!2074317 () Bool)

(assert (=> b!1688793 m!2074317))

(declare-fun m!2074319 () Bool)

(assert (=> b!1688793 m!2074319))

(assert (=> b!1688794 m!2070579))

(declare-fun m!2074321 () Bool)

(assert (=> b!1688794 m!2074321))

(assert (=> b!1688794 m!2071635))

(declare-fun m!2074323 () Bool)

(assert (=> b!1688794 m!2074323))

(declare-fun m!2074325 () Bool)

(assert (=> b!1688794 m!2074325))

(assert (=> b!1688794 m!2071635))

(assert (=> b!1688794 m!2070579))

(assert (=> b!1688794 m!2074313))

(assert (=> b!1688794 m!2074323))

(declare-fun m!2074327 () Bool)

(assert (=> b!1688794 m!2074327))

(assert (=> b!1688794 m!2074323))

(declare-fun m!2074329 () Bool)

(assert (=> b!1688794 m!2074329))

(assert (=> b!1688794 m!2074323))

(declare-fun m!2074331 () Bool)

(assert (=> b!1688794 m!2074331))

(assert (=> b!1688792 m!2074317))

(declare-fun m!2074333 () Bool)

(assert (=> b!1688792 m!2074333))

(assert (=> b!1688792 m!2070579))

(assert (=> b!1688791 m!2074317))

(declare-fun m!2074335 () Bool)

(assert (=> b!1688791 m!2074335))

(assert (=> b!1688791 m!2074335))

(declare-fun m!2074337 () Bool)

(assert (=> b!1688791 m!2074337))

(assert (=> b!1688791 m!2074337))

(declare-fun m!2074339 () Bool)

(assert (=> b!1688791 m!2074339))

(assert (=> b!1688796 m!2074317))

(assert (=> b!1688796 m!2074335))

(assert (=> b!1688796 m!2074335))

(assert (=> b!1688796 m!2074337))

(assert (=> b!1688796 m!2074337))

(declare-fun m!2074341 () Bool)

(assert (=> b!1688796 m!2074341))

(declare-fun m!2074343 () Bool)

(assert (=> d!514654 m!2074343))

(declare-fun m!2074345 () Bool)

(assert (=> d!514654 m!2074345))

(declare-fun m!2074347 () Bool)

(assert (=> d!514654 m!2074347))

(assert (=> d!514654 m!2071673))

(assert (=> b!1688795 m!2074317))

(assert (=> b!1688789 m!2074317))

(declare-fun m!2074349 () Bool)

(assert (=> b!1688789 m!2074349))

(assert (=> b!1688789 m!2074349))

(declare-fun m!2074351 () Bool)

(assert (=> b!1688789 m!2074351))

(assert (=> bm!107801 d!514654))

(declare-fun bs!399824 () Bool)

(declare-fun d!514656 () Bool)

(assert (= bs!399824 (and d!514656 d!514522)))

(declare-fun lambda!68400 () Int)

(assert (=> bs!399824 (= (= (toValue!4734 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (toValue!4734 (transformation!3255 (h!23888 rules!1846)))) (= lambda!68400 lambda!68394))))

(assert (=> d!514656 true))

(assert (=> d!514656 (< (dynLambda!8379 order!11145 (toValue!4734 (transformation!3255 (rule!5161 (h!23889 tokens!457))))) (dynLambda!8393 order!11163 lambda!68400))))

(assert (=> d!514656 (= (equivClasses!1219 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (toValue!4734 (transformation!3255 (rule!5161 (h!23889 tokens!457))))) (Forall2!541 lambda!68400))))

(declare-fun bs!399825 () Bool)

(assert (= bs!399825 d!514656))

(declare-fun m!2074353 () Bool)

(assert (=> bs!399825 m!2074353))

(assert (=> b!1686926 d!514656))

(declare-fun d!514658 () Bool)

(assert (=> d!514658 (= (list!7432 lt!641142) (list!7436 (c!275419 lt!641142)))))

(declare-fun bs!399826 () Bool)

(assert (= bs!399826 d!514658))

(declare-fun m!2074355 () Bool)

(assert (=> bs!399826 m!2074355))

(assert (=> d!513686 d!514658))

(assert (=> b!1686632 d!514510))

(declare-fun d!514660 () Bool)

(declare-fun c!275943 () Bool)

(assert (=> d!514660 (= c!275943 (isEmpty!11569 (tail!2518 (++!5065 lt!640654 lt!640648))))))

(declare-fun e!1081093 () Bool)

(assert (=> d!514660 (= (prefixMatch!496 (derivativeStep!1140 lt!640647 (head!3780 (++!5065 lt!640654 lt!640648))) (tail!2518 (++!5065 lt!640654 lt!640648))) e!1081093)))

(declare-fun b!1688798 () Bool)

(assert (=> b!1688798 (= e!1081093 (not (lostCause!488 (derivativeStep!1140 lt!640647 (head!3780 (++!5065 lt!640654 lt!640648))))))))

(declare-fun b!1688799 () Bool)

(assert (=> b!1688799 (= e!1081093 (prefixMatch!496 (derivativeStep!1140 (derivativeStep!1140 lt!640647 (head!3780 (++!5065 lt!640654 lt!640648))) (head!3780 (tail!2518 (++!5065 lt!640654 lt!640648)))) (tail!2518 (tail!2518 (++!5065 lt!640654 lt!640648)))))))

(assert (= (and d!514660 c!275943) b!1688798))

(assert (= (and d!514660 (not c!275943)) b!1688799))

(assert (=> d!514660 m!2070467))

(declare-fun m!2074357 () Bool)

(assert (=> d!514660 m!2074357))

(assert (=> b!1688798 m!2070465))

(declare-fun m!2074359 () Bool)

(assert (=> b!1688798 m!2074359))

(assert (=> b!1688799 m!2070467))

(declare-fun m!2074361 () Bool)

(assert (=> b!1688799 m!2074361))

(assert (=> b!1688799 m!2070465))

(assert (=> b!1688799 m!2074361))

(declare-fun m!2074363 () Bool)

(assert (=> b!1688799 m!2074363))

(assert (=> b!1688799 m!2070467))

(declare-fun m!2074365 () Bool)

(assert (=> b!1688799 m!2074365))

(assert (=> b!1688799 m!2074363))

(assert (=> b!1688799 m!2074365))

(declare-fun m!2074367 () Bool)

(assert (=> b!1688799 m!2074367))

(assert (=> b!1686773 d!514660))

(declare-fun bm!107979 () Bool)

(declare-fun call!107985 () Regex!4583)

(declare-fun call!107987 () Regex!4583)

(assert (=> bm!107979 (= call!107985 call!107987)))

(declare-fun bm!107980 () Bool)

(declare-fun c!275956 () Bool)

(declare-fun c!275954 () Bool)

(assert (=> bm!107980 (= call!107987 (derivativeStep!1140 (ite c!275956 (regTwo!9679 lt!640647) (ite c!275954 (regTwo!9678 lt!640647) (regOne!9678 lt!640647))) (head!3780 (++!5065 lt!640654 lt!640648))))))

(declare-fun b!1688820 () Bool)

(declare-fun e!1081108 () Regex!4583)

(assert (=> b!1688820 (= e!1081108 (Union!4583 (Concat!7929 call!107985 (regTwo!9678 lt!640647)) EmptyLang!4583))))

(declare-fun b!1688821 () Bool)

(declare-fun e!1081107 () Regex!4583)

(declare-fun e!1081106 () Regex!4583)

(assert (=> b!1688821 (= e!1081107 e!1081106)))

(declare-fun c!275955 () Bool)

(assert (=> b!1688821 (= c!275955 ((_ is ElementMatch!4583) lt!640647))))

(declare-fun d!514662 () Bool)

(declare-fun lt!642197 () Regex!4583)

(assert (=> d!514662 (validRegex!1842 lt!642197)))

(assert (=> d!514662 (= lt!642197 e!1081107)))

(declare-fun c!275957 () Bool)

(assert (=> d!514662 (= c!275957 (or ((_ is EmptyExpr!4583) lt!640647) ((_ is EmptyLang!4583) lt!640647)))))

(assert (=> d!514662 (validRegex!1842 lt!640647)))

(assert (=> d!514662 (= (derivativeStep!1140 lt!640647 (head!3780 (++!5065 lt!640654 lt!640648))) lt!642197)))

(declare-fun b!1688822 () Bool)

(assert (=> b!1688822 (= e!1081106 (ite (= (head!3780 (++!5065 lt!640654 lt!640648)) (c!275420 lt!640647)) EmptyExpr!4583 EmptyLang!4583))))

(declare-fun b!1688823 () Bool)

(assert (=> b!1688823 (= c!275954 (nullable!1369 (regOne!9678 lt!640647)))))

(declare-fun e!1081105 () Regex!4583)

(assert (=> b!1688823 (= e!1081105 e!1081108)))

(declare-fun b!1688824 () Bool)

(declare-fun e!1081104 () Regex!4583)

(declare-fun call!107984 () Regex!4583)

(assert (=> b!1688824 (= e!1081104 (Union!4583 call!107984 call!107987))))

(declare-fun b!1688825 () Bool)

(assert (=> b!1688825 (= e!1081104 e!1081105)))

(declare-fun c!275958 () Bool)

(assert (=> b!1688825 (= c!275958 ((_ is Star!4583) lt!640647))))

(declare-fun bm!107981 () Bool)

(assert (=> bm!107981 (= call!107984 (derivativeStep!1140 (ite c!275956 (regOne!9679 lt!640647) (ite c!275958 (reg!4912 lt!640647) (regOne!9678 lt!640647))) (head!3780 (++!5065 lt!640654 lt!640648))))))

(declare-fun b!1688826 () Bool)

(assert (=> b!1688826 (= c!275956 ((_ is Union!4583) lt!640647))))

(assert (=> b!1688826 (= e!1081106 e!1081104)))

(declare-fun b!1688827 () Bool)

(declare-fun call!107986 () Regex!4583)

(assert (=> b!1688827 (= e!1081108 (Union!4583 (Concat!7929 call!107986 (regTwo!9678 lt!640647)) call!107985))))

(declare-fun b!1688828 () Bool)

(assert (=> b!1688828 (= e!1081105 (Concat!7929 call!107986 lt!640647))))

(declare-fun bm!107982 () Bool)

(assert (=> bm!107982 (= call!107986 call!107984)))

(declare-fun b!1688829 () Bool)

(assert (=> b!1688829 (= e!1081107 EmptyLang!4583)))

(assert (= (and d!514662 c!275957) b!1688829))

(assert (= (and d!514662 (not c!275957)) b!1688821))

(assert (= (and b!1688821 c!275955) b!1688822))

(assert (= (and b!1688821 (not c!275955)) b!1688826))

(assert (= (and b!1688826 c!275956) b!1688824))

(assert (= (and b!1688826 (not c!275956)) b!1688825))

(assert (= (and b!1688825 c!275958) b!1688828))

(assert (= (and b!1688825 (not c!275958)) b!1688823))

(assert (= (and b!1688823 c!275954) b!1688827))

(assert (= (and b!1688823 (not c!275954)) b!1688820))

(assert (= (or b!1688827 b!1688820) bm!107979))

(assert (= (or b!1688828 b!1688827) bm!107982))

(assert (= (or b!1688824 bm!107982) bm!107981))

(assert (= (or b!1688824 bm!107979) bm!107980))

(assert (=> bm!107980 m!2070463))

(declare-fun m!2074369 () Bool)

(assert (=> bm!107980 m!2074369))

(declare-fun m!2074371 () Bool)

(assert (=> d!514662 m!2074371))

(assert (=> d!514662 m!2070913))

(declare-fun m!2074373 () Bool)

(assert (=> b!1688823 m!2074373))

(assert (=> bm!107981 m!2070463))

(declare-fun m!2074375 () Bool)

(assert (=> bm!107981 m!2074375))

(assert (=> b!1686773 d!514662))

(declare-fun d!514664 () Bool)

(assert (=> d!514664 (= (head!3780 (++!5065 lt!640654 lt!640648)) (h!23886 (++!5065 lt!640654 lt!640648)))))

(assert (=> b!1686773 d!514664))

(declare-fun d!514666 () Bool)

(assert (=> d!514666 (= (tail!2518 (++!5065 lt!640654 lt!640648)) (t!154808 (++!5065 lt!640654 lt!640648)))))

(assert (=> b!1686773 d!514666))

(declare-fun d!514668 () Bool)

(declare-fun e!1081109 () Bool)

(assert (=> d!514668 e!1081109))

(declare-fun res!757238 () Bool)

(assert (=> d!514668 (=> (not res!757238) (not e!1081109))))

(declare-fun lt!642198 () BalanceConc!12260)

(assert (=> d!514668 (= res!757238 (= (list!7432 lt!642198) lt!640654))))

(assert (=> d!514668 (= lt!642198 (BalanceConc!12261 (fromList!425 lt!640654)))))

(assert (=> d!514668 (= (fromListB!1029 lt!640654) lt!642198)))

(declare-fun b!1688830 () Bool)

(assert (=> b!1688830 (= e!1081109 (isBalanced!1930 (fromList!425 lt!640654)))))

(assert (= (and d!514668 res!757238) b!1688830))

(declare-fun m!2074377 () Bool)

(assert (=> d!514668 m!2074377))

(declare-fun m!2074379 () Bool)

(assert (=> d!514668 m!2074379))

(assert (=> b!1688830 m!2074379))

(assert (=> b!1688830 m!2074379))

(declare-fun m!2074381 () Bool)

(assert (=> b!1688830 m!2074381))

(assert (=> d!513710 d!514668))

(declare-fun b!1688832 () Bool)

(declare-fun res!757244 () Bool)

(declare-fun e!1081110 () Bool)

(assert (=> b!1688832 (=> (not res!757244) (not e!1081110))))

(assert (=> b!1688832 (= res!757244 (isBalanced!1930 (left!14775 (++!5068 (c!275419 lt!640663) (c!275419 lt!640642)))))))

(declare-fun b!1688833 () Bool)

(declare-fun res!757242 () Bool)

(assert (=> b!1688833 (=> (not res!757242) (not e!1081110))))

(assert (=> b!1688833 (= res!757242 (<= (- (height!987 (left!14775 (++!5068 (c!275419 lt!640663) (c!275419 lt!640642)))) (height!987 (right!15105 (++!5068 (c!275419 lt!640663) (c!275419 lt!640642))))) 1))))

(declare-fun b!1688834 () Bool)

(assert (=> b!1688834 (= e!1081110 (not (isEmpty!11577 (right!15105 (++!5068 (c!275419 lt!640663) (c!275419 lt!640642))))))))

(declare-fun b!1688835 () Bool)

(declare-fun e!1081111 () Bool)

(assert (=> b!1688835 (= e!1081111 e!1081110)))

(declare-fun res!757243 () Bool)

(assert (=> b!1688835 (=> (not res!757243) (not e!1081110))))

(assert (=> b!1688835 (= res!757243 (<= (- 1) (- (height!987 (left!14775 (++!5068 (c!275419 lt!640663) (c!275419 lt!640642)))) (height!987 (right!15105 (++!5068 (c!275419 lt!640663) (c!275419 lt!640642)))))))))

(declare-fun b!1688836 () Bool)

(declare-fun res!757240 () Bool)

(assert (=> b!1688836 (=> (not res!757240) (not e!1081110))))

(assert (=> b!1688836 (= res!757240 (isBalanced!1930 (right!15105 (++!5068 (c!275419 lt!640663) (c!275419 lt!640642)))))))

(declare-fun b!1688831 () Bool)

(declare-fun res!757239 () Bool)

(assert (=> b!1688831 (=> (not res!757239) (not e!1081110))))

(assert (=> b!1688831 (= res!757239 (not (isEmpty!11577 (left!14775 (++!5068 (c!275419 lt!640663) (c!275419 lt!640642))))))))

(declare-fun d!514670 () Bool)

(declare-fun res!757241 () Bool)

(assert (=> d!514670 (=> res!757241 e!1081111)))

(assert (=> d!514670 (= res!757241 (not ((_ is Node!6158) (++!5068 (c!275419 lt!640663) (c!275419 lt!640642)))))))

(assert (=> d!514670 (= (isBalanced!1930 (++!5068 (c!275419 lt!640663) (c!275419 lt!640642))) e!1081111)))

(assert (= (and d!514670 (not res!757241)) b!1688835))

(assert (= (and b!1688835 res!757243) b!1688833))

(assert (= (and b!1688833 res!757242) b!1688832))

(assert (= (and b!1688832 res!757244) b!1688836))

(assert (= (and b!1688836 res!757240) b!1688831))

(assert (= (and b!1688831 res!757239) b!1688834))

(declare-fun m!2074383 () Bool)

(assert (=> b!1688831 m!2074383))

(declare-fun m!2074385 () Bool)

(assert (=> b!1688836 m!2074385))

(declare-fun m!2074387 () Bool)

(assert (=> b!1688832 m!2074387))

(declare-fun m!2074389 () Bool)

(assert (=> b!1688834 m!2074389))

(declare-fun m!2074391 () Bool)

(assert (=> b!1688833 m!2074391))

(declare-fun m!2074393 () Bool)

(assert (=> b!1688833 m!2074393))

(assert (=> b!1688835 m!2074391))

(assert (=> b!1688835 m!2074393))

(assert (=> b!1687018 d!514670))

(assert (=> b!1687018 d!514016))

(declare-fun d!514672 () Bool)

(assert (=> d!514672 (= (inv!23846 (tag!3545 (h!23888 (t!154810 rules!1846)))) (= (mod (str.len (value!102439 (tag!3545 (h!23888 (t!154810 rules!1846))))) 2) 0))))

(assert (=> b!1687067 d!514672))

(declare-fun d!514674 () Bool)

(declare-fun res!757245 () Bool)

(declare-fun e!1081112 () Bool)

(assert (=> d!514674 (=> (not res!757245) (not e!1081112))))

(assert (=> d!514674 (= res!757245 (semiInverseModEq!1278 (toChars!4593 (transformation!3255 (h!23888 (t!154810 rules!1846)))) (toValue!4734 (transformation!3255 (h!23888 (t!154810 rules!1846))))))))

(assert (=> d!514674 (= (inv!23849 (transformation!3255 (h!23888 (t!154810 rules!1846)))) e!1081112)))

(declare-fun b!1688837 () Bool)

(assert (=> b!1688837 (= e!1081112 (equivClasses!1219 (toChars!4593 (transformation!3255 (h!23888 (t!154810 rules!1846)))) (toValue!4734 (transformation!3255 (h!23888 (t!154810 rules!1846))))))))

(assert (= (and d!514674 res!757245) b!1688837))

(declare-fun m!2074395 () Bool)

(assert (=> d!514674 m!2074395))

(declare-fun m!2074397 () Bool)

(assert (=> b!1688837 m!2074397))

(assert (=> b!1687067 d!514674))

(declare-fun d!514676 () Bool)

(declare-fun lt!642199 () Int)

(assert (=> d!514676 (>= lt!642199 0)))

(declare-fun e!1081113 () Int)

(assert (=> d!514676 (= lt!642199 e!1081113)))

(declare-fun c!275959 () Bool)

(assert (=> d!514676 (= c!275959 ((_ is Nil!18485) lt!641143))))

(assert (=> d!514676 (= (size!14724 lt!641143) lt!642199)))

(declare-fun b!1688838 () Bool)

(assert (=> b!1688838 (= e!1081113 0)))

(declare-fun b!1688839 () Bool)

(assert (=> b!1688839 (= e!1081113 (+ 1 (size!14724 (t!154808 lt!641143))))))

(assert (= (and d!514676 c!275959) b!1688838))

(assert (= (and d!514676 (not c!275959)) b!1688839))

(declare-fun m!2074399 () Bool)

(assert (=> b!1688839 m!2074399))

(assert (=> b!1686924 d!514676))

(assert (=> b!1686924 d!514052))

(declare-fun d!514678 () Bool)

(declare-fun lt!642200 () Int)

(assert (=> d!514678 (>= lt!642200 0)))

(declare-fun e!1081114 () Int)

(assert (=> d!514678 (= lt!642200 e!1081114)))

(declare-fun c!275960 () Bool)

(assert (=> d!514678 (= c!275960 ((_ is Nil!18485) lt!640662))))

(assert (=> d!514678 (= (size!14724 lt!640662) lt!642200)))

(declare-fun b!1688840 () Bool)

(assert (=> b!1688840 (= e!1081114 0)))

(declare-fun b!1688841 () Bool)

(assert (=> b!1688841 (= e!1081114 (+ 1 (size!14724 (t!154808 lt!640662))))))

(assert (= (and d!514678 c!275960) b!1688840))

(assert (= (and d!514678 (not c!275960)) b!1688841))

(declare-fun m!2074401 () Bool)

(assert (=> b!1688841 m!2074401))

(assert (=> b!1686924 d!514678))

(declare-fun d!514680 () Bool)

(assert (=> d!514680 (= (isDefined!2917 lt!641105) (not (isEmpty!11573 lt!641105)))))

(declare-fun bs!399827 () Bool)

(assert (= bs!399827 d!514680))

(assert (=> bs!399827 m!2070719))

(assert (=> b!1686876 d!514680))

(declare-fun d!514682 () Bool)

(assert (=> d!514682 (= (list!7431 (_1!10519 lt!640942)) (list!7434 (c!275421 (_1!10519 lt!640942))))))

(declare-fun bs!399828 () Bool)

(assert (= bs!399828 d!514682))

(declare-fun m!2074403 () Bool)

(assert (=> bs!399828 m!2074403))

(assert (=> b!1686730 d!514682))

(declare-fun d!514684 () Bool)

(assert (=> d!514684 (= (isDefined!2917 (maxPrefix!1444 thiss!17113 rules!1846 (originalCharacters!4069 (h!23889 (t!154811 tokens!457))))) (not (isEmpty!11573 (maxPrefix!1444 thiss!17113 rules!1846 (originalCharacters!4069 (h!23889 (t!154811 tokens!457)))))))))

(declare-fun bs!399829 () Bool)

(assert (= bs!399829 d!514684))

(assert (=> bs!399829 m!2070341))

(declare-fun m!2074405 () Bool)

(assert (=> bs!399829 m!2074405))

(assert (=> b!1686730 d!514684))

(declare-fun b!1688842 () Bool)

(declare-fun e!1081118 () Bool)

(declare-fun e!1081117 () Bool)

(assert (=> b!1688842 (= e!1081118 e!1081117)))

(declare-fun c!275962 () Bool)

(assert (=> b!1688842 (= c!275962 ((_ is EmptyLang!4583) (regex!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))))))

(declare-fun b!1688843 () Bool)

(declare-fun e!1081121 () Bool)

(declare-fun e!1081119 () Bool)

(assert (=> b!1688843 (= e!1081121 e!1081119)))

(declare-fun res!757246 () Bool)

(assert (=> b!1688843 (=> (not res!757246) (not e!1081119))))

(declare-fun lt!642201 () Bool)

(assert (=> b!1688843 (= res!757246 (not lt!642201))))

(declare-fun b!1688844 () Bool)

(declare-fun call!107988 () Bool)

(assert (=> b!1688844 (= e!1081118 (= lt!642201 call!107988))))

(declare-fun b!1688845 () Bool)

(declare-fun e!1081120 () Bool)

(assert (=> b!1688845 (= e!1081120 (not (= (head!3780 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457))))) (c!275420 (regex!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))))))))

(declare-fun b!1688846 () Bool)

(declare-fun res!757250 () Bool)

(declare-fun e!1081116 () Bool)

(assert (=> b!1688846 (=> (not res!757250) (not e!1081116))))

(assert (=> b!1688846 (= res!757250 (isEmpty!11569 (tail!2518 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))))))))

(declare-fun b!1688847 () Bool)

(declare-fun res!757251 () Bool)

(assert (=> b!1688847 (=> res!757251 e!1081121)))

(assert (=> b!1688847 (= res!757251 (not ((_ is ElementMatch!4583) (regex!3255 (rule!5161 (h!23889 (t!154811 tokens!457)))))))))

(assert (=> b!1688847 (= e!1081117 e!1081121)))

(declare-fun b!1688848 () Bool)

(assert (=> b!1688848 (= e!1081119 e!1081120)))

(declare-fun res!757248 () Bool)

(assert (=> b!1688848 (=> res!757248 e!1081120)))

(assert (=> b!1688848 (= res!757248 call!107988)))

(declare-fun b!1688849 () Bool)

(assert (=> b!1688849 (= e!1081116 (= (head!3780 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457))))) (c!275420 (regex!3255 (rule!5161 (h!23889 (t!154811 tokens!457)))))))))

(declare-fun b!1688850 () Bool)

(declare-fun res!757247 () Bool)

(assert (=> b!1688850 (=> res!757247 e!1081120)))

(assert (=> b!1688850 (= res!757247 (not (isEmpty!11569 (tail!2518 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457))))))))))

(declare-fun d!514686 () Bool)

(assert (=> d!514686 e!1081118))

(declare-fun c!275961 () Bool)

(assert (=> d!514686 (= c!275961 ((_ is EmptyExpr!4583) (regex!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))))))

(declare-fun e!1081115 () Bool)

(assert (=> d!514686 (= lt!642201 e!1081115)))

(declare-fun c!275963 () Bool)

(assert (=> d!514686 (= c!275963 (isEmpty!11569 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457))))))))

(assert (=> d!514686 (validRegex!1842 (regex!3255 (rule!5161 (h!23889 (t!154811 tokens!457)))))))

(assert (=> d!514686 (= (matchR!2072 (regex!3255 (rule!5161 (h!23889 (t!154811 tokens!457)))) (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457))))) lt!642201)))

(declare-fun b!1688851 () Bool)

(assert (=> b!1688851 (= e!1081115 (matchR!2072 (derivativeStep!1140 (regex!3255 (rule!5161 (h!23889 (t!154811 tokens!457)))) (head!3780 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))))) (tail!2518 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))))))))

(declare-fun b!1688852 () Bool)

(declare-fun res!757252 () Bool)

(assert (=> b!1688852 (=> res!757252 e!1081121)))

(assert (=> b!1688852 (= res!757252 e!1081116)))

(declare-fun res!757249 () Bool)

(assert (=> b!1688852 (=> (not res!757249) (not e!1081116))))

(assert (=> b!1688852 (= res!757249 lt!642201)))

(declare-fun bm!107983 () Bool)

(assert (=> bm!107983 (= call!107988 (isEmpty!11569 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457))))))))

(declare-fun b!1688853 () Bool)

(declare-fun res!757253 () Bool)

(assert (=> b!1688853 (=> (not res!757253) (not e!1081116))))

(assert (=> b!1688853 (= res!757253 (not call!107988))))

(declare-fun b!1688854 () Bool)

(assert (=> b!1688854 (= e!1081117 (not lt!642201))))

(declare-fun b!1688855 () Bool)

(assert (=> b!1688855 (= e!1081115 (nullable!1369 (regex!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))))))

(assert (= (and d!514686 c!275963) b!1688855))

(assert (= (and d!514686 (not c!275963)) b!1688851))

(assert (= (and d!514686 c!275961) b!1688844))

(assert (= (and d!514686 (not c!275961)) b!1688842))

(assert (= (and b!1688842 c!275962) b!1688854))

(assert (= (and b!1688842 (not c!275962)) b!1688847))

(assert (= (and b!1688847 (not res!757251)) b!1688852))

(assert (= (and b!1688852 res!757249) b!1688853))

(assert (= (and b!1688853 res!757253) b!1688846))

(assert (= (and b!1688846 res!757250) b!1688849))

(assert (= (and b!1688852 (not res!757252)) b!1688843))

(assert (= (and b!1688843 res!757246) b!1688848))

(assert (= (and b!1688848 (not res!757248)) b!1688850))

(assert (= (and b!1688850 (not res!757247)) b!1688845))

(assert (= (or b!1688844 b!1688853 b!1688848) bm!107983))

(assert (=> b!1688850 m!2070335))

(assert (=> b!1688850 m!2074133))

(assert (=> b!1688850 m!2074133))

(declare-fun m!2074407 () Bool)

(assert (=> b!1688850 m!2074407))

(assert (=> b!1688846 m!2070335))

(assert (=> b!1688846 m!2074133))

(assert (=> b!1688846 m!2074133))

(assert (=> b!1688846 m!2074407))

(assert (=> b!1688845 m!2070335))

(assert (=> b!1688845 m!2074131))

(declare-fun m!2074409 () Bool)

(assert (=> b!1688855 m!2074409))

(assert (=> d!514686 m!2070335))

(declare-fun m!2074411 () Bool)

(assert (=> d!514686 m!2074411))

(declare-fun m!2074413 () Bool)

(assert (=> d!514686 m!2074413))

(assert (=> b!1688849 m!2070335))

(assert (=> b!1688849 m!2074131))

(assert (=> bm!107983 m!2070335))

(assert (=> bm!107983 m!2074411))

(assert (=> b!1688851 m!2070335))

(assert (=> b!1688851 m!2074131))

(assert (=> b!1688851 m!2074131))

(declare-fun m!2074415 () Bool)

(assert (=> b!1688851 m!2074415))

(assert (=> b!1688851 m!2070335))

(assert (=> b!1688851 m!2074133))

(assert (=> b!1688851 m!2074415))

(assert (=> b!1688851 m!2074133))

(declare-fun m!2074417 () Bool)

(assert (=> b!1688851 m!2074417))

(assert (=> b!1686730 d!514686))

(declare-fun d!514688 () Bool)

(declare-fun lt!642202 () C!9340)

(assert (=> d!514688 (= lt!642202 (head!3780 (list!7432 lt!640941)))))

(assert (=> d!514688 (= lt!642202 (head!3784 (c!275419 lt!640941)))))

(assert (=> d!514688 (not (isEmpty!11570 lt!640941))))

(assert (=> d!514688 (= (head!3779 lt!640941) lt!642202)))

(declare-fun bs!399830 () Bool)

(assert (= bs!399830 d!514688))

(assert (=> bs!399830 m!2070345))

(assert (=> bs!399830 m!2070345))

(assert (=> bs!399830 m!2070381))

(declare-fun m!2074419 () Bool)

(assert (=> bs!399830 m!2074419))

(declare-fun m!2074421 () Bool)

(assert (=> bs!399830 m!2074421))

(assert (=> b!1686730 d!514688))

(declare-fun b!1688858 () Bool)

(declare-fun res!757255 () Bool)

(declare-fun e!1081122 () Bool)

(assert (=> b!1688858 (=> (not res!757255) (not e!1081122))))

(declare-fun lt!642203 () List!18555)

(assert (=> b!1688858 (= res!757255 (= (size!14724 lt!642203) (+ (size!14724 lt!640960) (size!14724 lt!640964))))))

(declare-fun d!514690 () Bool)

(assert (=> d!514690 e!1081122))

(declare-fun res!757254 () Bool)

(assert (=> d!514690 (=> (not res!757254) (not e!1081122))))

(assert (=> d!514690 (= res!757254 (= (content!2605 lt!642203) ((_ map or) (content!2605 lt!640960) (content!2605 lt!640964))))))

(declare-fun e!1081123 () List!18555)

(assert (=> d!514690 (= lt!642203 e!1081123)))

(declare-fun c!275964 () Bool)

(assert (=> d!514690 (= c!275964 ((_ is Nil!18485) lt!640960))))

(assert (=> d!514690 (= (++!5065 lt!640960 lt!640964) lt!642203)))

(declare-fun b!1688857 () Bool)

(assert (=> b!1688857 (= e!1081123 (Cons!18485 (h!23886 lt!640960) (++!5065 (t!154808 lt!640960) lt!640964)))))

(declare-fun b!1688859 () Bool)

(assert (=> b!1688859 (= e!1081122 (or (not (= lt!640964 Nil!18485)) (= lt!642203 lt!640960)))))

(declare-fun b!1688856 () Bool)

(assert (=> b!1688856 (= e!1081123 lt!640964)))

(assert (= (and d!514690 c!275964) b!1688856))

(assert (= (and d!514690 (not c!275964)) b!1688857))

(assert (= (and d!514690 res!757254) b!1688858))

(assert (= (and b!1688858 res!757255) b!1688859))

(declare-fun m!2074423 () Bool)

(assert (=> b!1688858 m!2074423))

(declare-fun m!2074425 () Bool)

(assert (=> b!1688858 m!2074425))

(declare-fun m!2074427 () Bool)

(assert (=> b!1688858 m!2074427))

(declare-fun m!2074429 () Bool)

(assert (=> d!514690 m!2074429))

(declare-fun m!2074431 () Bool)

(assert (=> d!514690 m!2074431))

(declare-fun m!2074433 () Bool)

(assert (=> d!514690 m!2074433))

(declare-fun m!2074435 () Bool)

(assert (=> b!1688857 m!2074435))

(assert (=> b!1686730 d!514690))

(declare-fun d!514692 () Bool)

(declare-fun e!1081126 () Bool)

(assert (=> d!514692 e!1081126))

(declare-fun res!757260 () Bool)

(assert (=> d!514692 (=> res!757260 e!1081126)))

(declare-fun lt!642207 () Option!3568)

(assert (=> d!514692 (= res!757260 (isEmpty!11573 lt!642207))))

(declare-fun e!1081125 () Option!3568)

(assert (=> d!514692 (= lt!642207 e!1081125)))

(declare-fun c!275965 () Bool)

(assert (=> d!514692 (= c!275965 (and ((_ is Cons!18487) rules!1846) ((_ is Nil!18487) (t!154810 rules!1846))))))

(declare-fun lt!642206 () Unit!31839)

(declare-fun lt!642205 () Unit!31839)

(assert (=> d!514692 (= lt!642206 lt!642205)))

(assert (=> d!514692 (isPrefix!1513 (list!7432 lt!640956) (list!7432 lt!640956))))

(assert (=> d!514692 (= lt!642205 (lemmaIsPrefixRefl!1030 (list!7432 lt!640956) (list!7432 lt!640956)))))

(assert (=> d!514692 (rulesValidInductive!1052 thiss!17113 rules!1846)))

(assert (=> d!514692 (= (maxPrefix!1444 thiss!17113 rules!1846 (list!7432 lt!640956)) lt!642207)))

(declare-fun b!1688860 () Bool)

(declare-fun e!1081124 () Bool)

(assert (=> b!1688860 (= e!1081126 e!1081124)))

(declare-fun res!757261 () Bool)

(assert (=> b!1688860 (=> (not res!757261) (not e!1081124))))

(assert (=> b!1688860 (= res!757261 (isDefined!2917 lt!642207))))

(declare-fun b!1688861 () Bool)

(declare-fun call!107989 () Option!3568)

(assert (=> b!1688861 (= e!1081125 call!107989)))

(declare-fun b!1688862 () Bool)

(assert (=> b!1688862 (= e!1081124 (contains!3250 rules!1846 (rule!5161 (_1!10520 (get!5420 lt!642207)))))))

(declare-fun b!1688863 () Bool)

(declare-fun res!757257 () Bool)

(assert (=> b!1688863 (=> (not res!757257) (not e!1081124))))

(assert (=> b!1688863 (= res!757257 (< (size!14724 (_2!10520 (get!5420 lt!642207))) (size!14724 (list!7432 lt!640956))))))

(declare-fun b!1688864 () Bool)

(declare-fun res!757256 () Bool)

(assert (=> b!1688864 (=> (not res!757256) (not e!1081124))))

(assert (=> b!1688864 (= res!757256 (= (value!102440 (_1!10520 (get!5420 lt!642207))) (apply!5039 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!642207)))) (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!642207)))))))))

(declare-fun b!1688865 () Bool)

(declare-fun res!757258 () Bool)

(assert (=> b!1688865 (=> (not res!757258) (not e!1081124))))

(assert (=> b!1688865 (= res!757258 (matchR!2072 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!642207)))) (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!642207))))))))

(declare-fun bm!107984 () Bool)

(assert (=> bm!107984 (= call!107989 (maxPrefixOneRule!845 thiss!17113 (h!23888 rules!1846) (list!7432 lt!640956)))))

(declare-fun b!1688866 () Bool)

(declare-fun res!757259 () Bool)

(assert (=> b!1688866 (=> (not res!757259) (not e!1081124))))

(assert (=> b!1688866 (= res!757259 (= (++!5065 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!642207)))) (_2!10520 (get!5420 lt!642207))) (list!7432 lt!640956)))))

(declare-fun b!1688867 () Bool)

(declare-fun res!757262 () Bool)

(assert (=> b!1688867 (=> (not res!757262) (not e!1081124))))

(assert (=> b!1688867 (= res!757262 (= (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!642207)))) (originalCharacters!4069 (_1!10520 (get!5420 lt!642207)))))))

(declare-fun b!1688868 () Bool)

(declare-fun lt!642204 () Option!3568)

(declare-fun lt!642208 () Option!3568)

(assert (=> b!1688868 (= e!1081125 (ite (and ((_ is None!3567) lt!642204) ((_ is None!3567) lt!642208)) None!3567 (ite ((_ is None!3567) lt!642208) lt!642204 (ite ((_ is None!3567) lt!642204) lt!642208 (ite (>= (size!14720 (_1!10520 (v!24888 lt!642204))) (size!14720 (_1!10520 (v!24888 lt!642208)))) lt!642204 lt!642208)))))))

(assert (=> b!1688868 (= lt!642204 call!107989)))

(assert (=> b!1688868 (= lt!642208 (maxPrefix!1444 thiss!17113 (t!154810 rules!1846) (list!7432 lt!640956)))))

(assert (= (and d!514692 c!275965) b!1688861))

(assert (= (and d!514692 (not c!275965)) b!1688868))

(assert (= (or b!1688861 b!1688868) bm!107984))

(assert (= (and d!514692 (not res!757260)) b!1688860))

(assert (= (and b!1688860 res!757261) b!1688867))

(assert (= (and b!1688867 res!757262) b!1688863))

(assert (= (and b!1688863 res!757257) b!1688866))

(assert (= (and b!1688866 res!757259) b!1688864))

(assert (= (and b!1688864 res!757256) b!1688865))

(assert (= (and b!1688865 res!757258) b!1688862))

(declare-fun m!2074437 () Bool)

(assert (=> b!1688865 m!2074437))

(declare-fun m!2074439 () Bool)

(assert (=> b!1688865 m!2074439))

(assert (=> b!1688865 m!2074439))

(declare-fun m!2074441 () Bool)

(assert (=> b!1688865 m!2074441))

(assert (=> b!1688865 m!2074441))

(declare-fun m!2074443 () Bool)

(assert (=> b!1688865 m!2074443))

(assert (=> b!1688867 m!2074437))

(assert (=> b!1688867 m!2074439))

(assert (=> b!1688867 m!2074439))

(assert (=> b!1688867 m!2074441))

(assert (=> b!1688866 m!2074437))

(assert (=> b!1688866 m!2074439))

(assert (=> b!1688866 m!2074439))

(assert (=> b!1688866 m!2074441))

(assert (=> b!1688866 m!2074441))

(declare-fun m!2074445 () Bool)

(assert (=> b!1688866 m!2074445))

(assert (=> bm!107984 m!2070375))

(declare-fun m!2074447 () Bool)

(assert (=> bm!107984 m!2074447))

(declare-fun m!2074449 () Bool)

(assert (=> b!1688860 m!2074449))

(assert (=> b!1688862 m!2074437))

(declare-fun m!2074451 () Bool)

(assert (=> b!1688862 m!2074451))

(assert (=> b!1688864 m!2074437))

(declare-fun m!2074453 () Bool)

(assert (=> b!1688864 m!2074453))

(assert (=> b!1688864 m!2074453))

(declare-fun m!2074455 () Bool)

(assert (=> b!1688864 m!2074455))

(assert (=> b!1688863 m!2074437))

(declare-fun m!2074457 () Bool)

(assert (=> b!1688863 m!2074457))

(assert (=> b!1688863 m!2070375))

(declare-fun m!2074459 () Bool)

(assert (=> b!1688863 m!2074459))

(assert (=> b!1688868 m!2070375))

(declare-fun m!2074461 () Bool)

(assert (=> b!1688868 m!2074461))

(declare-fun m!2074463 () Bool)

(assert (=> d!514692 m!2074463))

(assert (=> d!514692 m!2070375))

(assert (=> d!514692 m!2070375))

(declare-fun m!2074465 () Bool)

(assert (=> d!514692 m!2074465))

(assert (=> d!514692 m!2070375))

(assert (=> d!514692 m!2070375))

(declare-fun m!2074467 () Bool)

(assert (=> d!514692 m!2074467))

(assert (=> d!514692 m!2070101))

(assert (=> b!1686730 d!514692))

(declare-fun d!514694 () Bool)

(assert (=> d!514694 (= (head!3780 (originalCharacters!4069 (h!23889 (t!154811 (t!154811 tokens!457))))) (h!23886 (originalCharacters!4069 (h!23889 (t!154811 (t!154811 tokens!457))))))))

(assert (=> b!1686730 d!514694))

(assert (=> b!1686730 d!513620))

(assert (=> b!1686730 d!514600))

(declare-fun d!514696 () Bool)

(assert (=> d!514696 (= (seqFromList!2248 (t!154811 (t!154811 (t!154811 tokens!457)))) (fromListB!1031 (t!154811 (t!154811 (t!154811 tokens!457)))))))

(declare-fun bs!399831 () Bool)

(assert (= bs!399831 d!514696))

(declare-fun m!2074469 () Bool)

(assert (=> bs!399831 m!2074469))

(assert (=> b!1686730 d!514696))

(declare-fun d!514698 () Bool)

(assert (=> d!514698 (= (list!7431 (_1!10519 lt!640942)) (list!7431 (prepend!851 (seqFromList!2248 (t!154811 (t!154811 (t!154811 tokens!457)))) (h!23889 (t!154811 (t!154811 tokens!457))))))))

(declare-fun lt!642209 () Unit!31839)

(assert (=> d!514698 (= lt!642209 (choose!10200 (h!23889 (t!154811 (t!154811 tokens!457))) (t!154811 (t!154811 (t!154811 tokens!457))) (_1!10519 lt!640942)))))

(assert (=> d!514698 (= (list!7431 (_1!10519 lt!640942)) (list!7431 (seqFromList!2248 ($colon$colon!407 (t!154811 (t!154811 (t!154811 tokens!457))) (h!23889 (t!154811 (t!154811 tokens!457)))))))))

(assert (=> d!514698 (= (seqFromListBHdTlConstructive!324 (h!23889 (t!154811 (t!154811 tokens!457))) (t!154811 (t!154811 (t!154811 tokens!457))) (_1!10519 lt!640942)) lt!642209)))

(declare-fun bs!399832 () Bool)

(assert (= bs!399832 d!514698))

(declare-fun m!2074471 () Bool)

(assert (=> bs!399832 m!2074471))

(assert (=> bs!399832 m!2070349))

(assert (=> bs!399832 m!2070363))

(assert (=> bs!399832 m!2070349))

(declare-fun m!2074473 () Bool)

(assert (=> bs!399832 m!2074473))

(assert (=> bs!399832 m!2074471))

(declare-fun m!2074475 () Bool)

(assert (=> bs!399832 m!2074475))

(assert (=> bs!399832 m!2074475))

(declare-fun m!2074477 () Bool)

(assert (=> bs!399832 m!2074477))

(assert (=> bs!399832 m!2070395))

(assert (=> bs!399832 m!2070363))

(assert (=> bs!399832 m!2070373))

(assert (=> b!1686730 d!514698))

(declare-fun d!514700 () Bool)

(declare-fun lt!642210 () C!9340)

(assert (=> d!514700 (= lt!642210 (apply!5044 (list!7432 (charsOf!1904 (h!23889 (t!154811 (t!154811 tokens!457))))) 0))))

(assert (=> d!514700 (= lt!642210 (apply!5045 (c!275419 (charsOf!1904 (h!23889 (t!154811 (t!154811 tokens!457))))) 0))))

(declare-fun e!1081127 () Bool)

(assert (=> d!514700 e!1081127))

(declare-fun res!757263 () Bool)

(assert (=> d!514700 (=> (not res!757263) (not e!1081127))))

(assert (=> d!514700 (= res!757263 (<= 0 0))))

(assert (=> d!514700 (= (apply!5035 (charsOf!1904 (h!23889 (t!154811 (t!154811 tokens!457)))) 0) lt!642210)))

(declare-fun b!1688869 () Bool)

(assert (=> b!1688869 (= e!1081127 (< 0 (size!14726 (charsOf!1904 (h!23889 (t!154811 (t!154811 tokens!457)))))))))

(assert (= (and d!514700 res!757263) b!1688869))

(assert (=> d!514700 m!2070365))

(declare-fun m!2074479 () Bool)

(assert (=> d!514700 m!2074479))

(assert (=> d!514700 m!2074479))

(declare-fun m!2074481 () Bool)

(assert (=> d!514700 m!2074481))

(declare-fun m!2074483 () Bool)

(assert (=> d!514700 m!2074483))

(assert (=> b!1688869 m!2070365))

(declare-fun m!2074485 () Bool)

(assert (=> b!1688869 m!2074485))

(assert (=> b!1686730 d!514700))

(declare-fun b!1688872 () Bool)

(declare-fun e!1081129 () Bool)

(assert (=> b!1688872 (= e!1081129 (isPrefix!1513 (tail!2518 lt!640960) (tail!2518 (++!5065 lt!640960 lt!640964))))))

(declare-fun b!1688870 () Bool)

(declare-fun e!1081130 () Bool)

(assert (=> b!1688870 (= e!1081130 e!1081129)))

(declare-fun res!757265 () Bool)

(assert (=> b!1688870 (=> (not res!757265) (not e!1081129))))

(assert (=> b!1688870 (= res!757265 (not ((_ is Nil!18485) (++!5065 lt!640960 lt!640964))))))

(declare-fun d!514702 () Bool)

(declare-fun e!1081128 () Bool)

(assert (=> d!514702 e!1081128))

(declare-fun res!757266 () Bool)

(assert (=> d!514702 (=> res!757266 e!1081128)))

(declare-fun lt!642211 () Bool)

(assert (=> d!514702 (= res!757266 (not lt!642211))))

(assert (=> d!514702 (= lt!642211 e!1081130)))

(declare-fun res!757267 () Bool)

(assert (=> d!514702 (=> res!757267 e!1081130)))

(assert (=> d!514702 (= res!757267 ((_ is Nil!18485) lt!640960))))

(assert (=> d!514702 (= (isPrefix!1513 lt!640960 (++!5065 lt!640960 lt!640964)) lt!642211)))

(declare-fun b!1688871 () Bool)

(declare-fun res!757264 () Bool)

(assert (=> b!1688871 (=> (not res!757264) (not e!1081129))))

(assert (=> b!1688871 (= res!757264 (= (head!3780 lt!640960) (head!3780 (++!5065 lt!640960 lt!640964))))))

(declare-fun b!1688873 () Bool)

(assert (=> b!1688873 (= e!1081128 (>= (size!14724 (++!5065 lt!640960 lt!640964)) (size!14724 lt!640960)))))

(assert (= (and d!514702 (not res!757267)) b!1688870))

(assert (= (and b!1688870 res!757265) b!1688871))

(assert (= (and b!1688871 res!757264) b!1688872))

(assert (= (and d!514702 (not res!757266)) b!1688873))

(declare-fun m!2074487 () Bool)

(assert (=> b!1688872 m!2074487))

(assert (=> b!1688872 m!2070361))

(declare-fun m!2074489 () Bool)

(assert (=> b!1688872 m!2074489))

(assert (=> b!1688872 m!2074487))

(assert (=> b!1688872 m!2074489))

(declare-fun m!2074491 () Bool)

(assert (=> b!1688872 m!2074491))

(declare-fun m!2074493 () Bool)

(assert (=> b!1688871 m!2074493))

(assert (=> b!1688871 m!2070361))

(declare-fun m!2074495 () Bool)

(assert (=> b!1688871 m!2074495))

(assert (=> b!1688873 m!2070361))

(declare-fun m!2074497 () Bool)

(assert (=> b!1688873 m!2074497))

(assert (=> b!1688873 m!2074425))

(assert (=> b!1686730 d!514702))

(assert (=> b!1686730 d!513738))

(declare-fun d!514704 () Bool)

(assert (=> d!514704 (= (list!7432 lt!640941) (list!7436 (c!275419 lt!640941)))))

(declare-fun bs!399833 () Bool)

(assert (= bs!399833 d!514704))

(declare-fun m!2074499 () Bool)

(assert (=> bs!399833 m!2074499))

(assert (=> b!1686730 d!514704))

(declare-fun d!514706 () Bool)

(assert (=> d!514706 (= (get!5420 (maxPrefix!1444 thiss!17113 rules!1846 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))))) (v!24888 (maxPrefix!1444 thiss!17113 rules!1846 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))))))))

(assert (=> b!1686730 d!514706))

(assert (=> b!1686730 d!513692))

(declare-fun d!514708 () Bool)

(assert (=> d!514708 (= (isEmpty!11569 (_2!10520 (get!5420 (maxPrefix!1444 thiss!17113 rules!1846 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))))))) ((_ is Nil!18485) (_2!10520 (get!5420 (maxPrefix!1444 thiss!17113 rules!1846 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))))))))))

(assert (=> b!1686730 d!514708))

(declare-fun d!514710 () Bool)

(declare-fun e!1081131 () Bool)

(assert (=> d!514710 e!1081131))

(declare-fun res!757269 () Bool)

(assert (=> d!514710 (=> (not res!757269) (not e!1081131))))

(declare-fun e!1081133 () Bool)

(assert (=> d!514710 (= res!757269 e!1081133)))

(declare-fun c!275966 () Bool)

(declare-fun lt!642212 () tuple2!18234)

(assert (=> d!514710 (= c!275966 (> (size!14725 (_1!10519 lt!642212)) 0))))

(assert (=> d!514710 (= lt!642212 (lexTailRecV2!630 thiss!17113 rules!1846 lt!640941 (BalanceConc!12261 Empty!6158) lt!640941 (BalanceConc!12263 Empty!6159)))))

(assert (=> d!514710 (= (lex!1368 thiss!17113 rules!1846 lt!640941) lt!642212)))

(declare-fun b!1688874 () Bool)

(declare-fun res!757270 () Bool)

(assert (=> b!1688874 (=> (not res!757270) (not e!1081131))))

(assert (=> b!1688874 (= res!757270 (= (list!7431 (_1!10519 lt!642212)) (_1!10523 (lexList!907 thiss!17113 rules!1846 (list!7432 lt!640941)))))))

(declare-fun b!1688875 () Bool)

(assert (=> b!1688875 (= e!1081131 (= (list!7432 (_2!10519 lt!642212)) (_2!10523 (lexList!907 thiss!17113 rules!1846 (list!7432 lt!640941)))))))

(declare-fun b!1688876 () Bool)

(declare-fun e!1081132 () Bool)

(assert (=> b!1688876 (= e!1081132 (not (isEmpty!11562 (_1!10519 lt!642212))))))

(declare-fun b!1688877 () Bool)

(assert (=> b!1688877 (= e!1081133 (= (_2!10519 lt!642212) lt!640941))))

(declare-fun b!1688878 () Bool)

(assert (=> b!1688878 (= e!1081133 e!1081132)))

(declare-fun res!757268 () Bool)

(assert (=> b!1688878 (= res!757268 (< (size!14726 (_2!10519 lt!642212)) (size!14726 lt!640941)))))

(assert (=> b!1688878 (=> (not res!757268) (not e!1081132))))

(assert (= (and d!514710 c!275966) b!1688878))

(assert (= (and d!514710 (not c!275966)) b!1688877))

(assert (= (and b!1688878 res!757268) b!1688876))

(assert (= (and d!514710 res!757269) b!1688874))

(assert (= (and b!1688874 res!757270) b!1688875))

(declare-fun m!2074501 () Bool)

(assert (=> b!1688875 m!2074501))

(assert (=> b!1688875 m!2070345))

(assert (=> b!1688875 m!2070345))

(declare-fun m!2074503 () Bool)

(assert (=> b!1688875 m!2074503))

(declare-fun m!2074505 () Bool)

(assert (=> b!1688874 m!2074505))

(assert (=> b!1688874 m!2070345))

(assert (=> b!1688874 m!2070345))

(assert (=> b!1688874 m!2074503))

(declare-fun m!2074507 () Bool)

(assert (=> d!514710 m!2074507))

(declare-fun m!2074509 () Bool)

(assert (=> d!514710 m!2074509))

(declare-fun m!2074511 () Bool)

(assert (=> b!1688876 m!2074511))

(declare-fun m!2074513 () Bool)

(assert (=> b!1688878 m!2074513))

(declare-fun m!2074515 () Bool)

(assert (=> b!1688878 m!2074515))

(assert (=> b!1686730 d!514710))

(declare-fun d!514712 () Bool)

(assert (=> d!514712 (= (list!7432 (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 (t!154811 tokens!457)))) 0))) (list!7436 (c!275419 (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 (t!154811 tokens!457)))) 0)))))))

(declare-fun bs!399834 () Bool)

(assert (= bs!399834 d!514712))

(declare-fun m!2074517 () Bool)

(assert (=> bs!399834 m!2074517))

(assert (=> b!1686730 d!514712))

(declare-fun d!514714 () Bool)

(declare-fun lt!642213 () BalanceConc!12260)

(assert (=> d!514714 (= (list!7432 lt!642213) (printList!997 thiss!17113 (list!7431 (seqFromList!2248 (t!154811 (t!154811 tokens!457))))))))

(assert (=> d!514714 (= lt!642213 (printTailRec!935 thiss!17113 (seqFromList!2248 (t!154811 (t!154811 tokens!457))) 0 (BalanceConc!12261 Empty!6158)))))

(assert (=> d!514714 (= (print!1415 thiss!17113 (seqFromList!2248 (t!154811 (t!154811 tokens!457)))) lt!642213)))

(declare-fun bs!399835 () Bool)

(assert (= bs!399835 d!514714))

(declare-fun m!2074519 () Bool)

(assert (=> bs!399835 m!2074519))

(assert (=> bs!399835 m!2069771))

(assert (=> bs!399835 m!2070439))

(assert (=> bs!399835 m!2070439))

(declare-fun m!2074521 () Bool)

(assert (=> bs!399835 m!2074521))

(assert (=> bs!399835 m!2069771))

(declare-fun m!2074523 () Bool)

(assert (=> bs!399835 m!2074523))

(assert (=> b!1686730 d!514714))

(declare-fun d!514716 () Bool)

(assert (=> d!514716 (isPrefix!1513 lt!640960 (++!5065 lt!640960 lt!640964))))

(declare-fun lt!642214 () Unit!31839)

(assert (=> d!514716 (= lt!642214 (choose!10199 lt!640960 lt!640964))))

(assert (=> d!514716 (= (lemmaConcatTwoListThenFirstIsPrefix!1034 lt!640960 lt!640964) lt!642214)))

(declare-fun bs!399836 () Bool)

(assert (= bs!399836 d!514716))

(assert (=> bs!399836 m!2070361))

(assert (=> bs!399836 m!2070361))

(assert (=> bs!399836 m!2070397))

(declare-fun m!2074525 () Bool)

(assert (=> bs!399836 m!2074525))

(assert (=> b!1686730 d!514716))

(declare-fun d!514718 () Bool)

(declare-fun e!1081134 () Bool)

(assert (=> d!514718 e!1081134))

(declare-fun res!757271 () Bool)

(assert (=> d!514718 (=> (not res!757271) (not e!1081134))))

(declare-fun lt!642215 () BalanceConc!12262)

(assert (=> d!514718 (= res!757271 (= (list!7431 lt!642215) (Cons!18488 (h!23889 (t!154811 tokens!457)) Nil!18488)))))

(assert (=> d!514718 (= lt!642215 (singleton!802 (h!23889 (t!154811 tokens!457))))))

(assert (=> d!514718 (= (singletonSeq!1778 (h!23889 (t!154811 tokens!457))) lt!642215)))

(declare-fun b!1688879 () Bool)

(assert (=> b!1688879 (= e!1081134 (isBalanced!1928 (c!275421 lt!642215)))))

(assert (= (and d!514718 res!757271) b!1688879))

(declare-fun m!2074527 () Bool)

(assert (=> d!514718 m!2074527))

(declare-fun m!2074529 () Bool)

(assert (=> d!514718 m!2074529))

(declare-fun m!2074531 () Bool)

(assert (=> b!1688879 m!2074531))

(assert (=> b!1686730 d!514718))

(declare-fun d!514720 () Bool)

(declare-fun lt!642216 () BalanceConc!12260)

(assert (=> d!514720 (= (list!7432 lt!642216) (printList!997 thiss!17113 (list!7431 (singletonSeq!1778 (h!23889 (t!154811 tokens!457))))))))

(assert (=> d!514720 (= lt!642216 (printTailRec!935 thiss!17113 (singletonSeq!1778 (h!23889 (t!154811 tokens!457))) 0 (BalanceConc!12261 Empty!6158)))))

(assert (=> d!514720 (= (print!1415 thiss!17113 (singletonSeq!1778 (h!23889 (t!154811 tokens!457)))) lt!642216)))

(declare-fun bs!399837 () Bool)

(assert (= bs!399837 d!514720))

(declare-fun m!2074533 () Bool)

(assert (=> bs!399837 m!2074533))

(assert (=> bs!399837 m!2070351))

(assert (=> bs!399837 m!2073303))

(assert (=> bs!399837 m!2073303))

(declare-fun m!2074535 () Bool)

(assert (=> bs!399837 m!2074535))

(assert (=> bs!399837 m!2070351))

(assert (=> bs!399837 m!2070399))

(assert (=> b!1686730 d!514720))

(declare-fun d!514722 () Bool)

(declare-fun lt!642217 () BalanceConc!12260)

(assert (=> d!514722 (= (list!7432 lt!642217) (originalCharacters!4069 (h!23889 (t!154811 (t!154811 tokens!457)))))))

(assert (=> d!514722 (= lt!642217 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457)))))) (value!102440 (h!23889 (t!154811 (t!154811 tokens!457))))))))

(assert (=> d!514722 (= (charsOf!1904 (h!23889 (t!154811 (t!154811 tokens!457)))) lt!642217)))

(declare-fun b_lambda!53097 () Bool)

(assert (=> (not b_lambda!53097) (not d!514722)))

(declare-fun t!155004 () Bool)

(declare-fun tb!97991 () Bool)

(assert (=> (and b!1686461 (= (toChars!4593 (transformation!3255 (h!23888 rules!1846))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457))))))) t!155004) tb!97991))

(declare-fun b!1688880 () Bool)

(declare-fun e!1081135 () Bool)

(declare-fun tp!484442 () Bool)

(assert (=> b!1688880 (= e!1081135 (and (inv!23853 (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457)))))) (value!102440 (h!23889 (t!154811 (t!154811 tokens!457))))))) tp!484442))))

(declare-fun result!118098 () Bool)

(assert (=> tb!97991 (= result!118098 (and (inv!23854 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457)))))) (value!102440 (h!23889 (t!154811 (t!154811 tokens!457)))))) e!1081135))))

(assert (= tb!97991 b!1688880))

(declare-fun m!2074537 () Bool)

(assert (=> b!1688880 m!2074537))

(declare-fun m!2074539 () Bool)

(assert (=> tb!97991 m!2074539))

(assert (=> d!514722 t!155004))

(declare-fun b_and!120717 () Bool)

(assert (= b_and!120709 (and (=> t!155004 result!118098) b_and!120717)))

(declare-fun t!155006 () Bool)

(declare-fun tb!97993 () Bool)

(assert (=> (and b!1686468 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457))))))) t!155006) tb!97993))

(declare-fun result!118100 () Bool)

(assert (= result!118100 result!118098))

(assert (=> d!514722 t!155006))

(declare-fun b_and!120719 () Bool)

(assert (= b_and!120711 (and (=> t!155006 result!118100) b_and!120719)))

(declare-fun t!155008 () Bool)

(declare-fun tb!97995 () Bool)

(assert (=> (and b!1687068 (= (toChars!4593 (transformation!3255 (h!23888 (t!154810 rules!1846)))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457))))))) t!155008) tb!97995))

(declare-fun result!118102 () Bool)

(assert (= result!118102 result!118098))

(assert (=> d!514722 t!155008))

(declare-fun b_and!120721 () Bool)

(assert (= b_and!120713 (and (=> t!155008 result!118102) b_and!120721)))

(declare-fun t!155010 () Bool)

(declare-fun tb!97997 () Bool)

(assert (=> (and b!1687082 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457))))))) t!155010) tb!97997))

(declare-fun result!118104 () Bool)

(assert (= result!118104 result!118098))

(assert (=> d!514722 t!155010))

(declare-fun b_and!120723 () Bool)

(assert (= b_and!120715 (and (=> t!155010 result!118104) b_and!120723)))

(declare-fun m!2074541 () Bool)

(assert (=> d!514722 m!2074541))

(declare-fun m!2074543 () Bool)

(assert (=> d!514722 m!2074543))

(assert (=> b!1686730 d!514722))

(declare-fun d!514724 () Bool)

(assert (=> d!514724 (= (list!7432 lt!640956) (list!7436 (c!275419 lt!640956)))))

(declare-fun bs!399838 () Bool)

(assert (= bs!399838 d!514724))

(declare-fun m!2074545 () Bool)

(assert (=> bs!399838 m!2074545))

(assert (=> b!1686730 d!514724))

(declare-fun d!514726 () Bool)

(declare-fun e!1081136 () Bool)

(assert (=> d!514726 e!1081136))

(declare-fun res!757272 () Bool)

(assert (=> d!514726 (=> (not res!757272) (not e!1081136))))

(assert (=> d!514726 (= res!757272 (isBalanced!1928 (prepend!852 (c!275421 (seqFromList!2248 (t!154811 (t!154811 (t!154811 tokens!457))))) (h!23889 (t!154811 (t!154811 tokens!457))))))))

(declare-fun lt!642218 () BalanceConc!12262)

(assert (=> d!514726 (= lt!642218 (BalanceConc!12263 (prepend!852 (c!275421 (seqFromList!2248 (t!154811 (t!154811 (t!154811 tokens!457))))) (h!23889 (t!154811 (t!154811 tokens!457))))))))

(assert (=> d!514726 (= (prepend!851 (seqFromList!2248 (t!154811 (t!154811 (t!154811 tokens!457)))) (h!23889 (t!154811 (t!154811 tokens!457)))) lt!642218)))

(declare-fun b!1688881 () Bool)

(assert (=> b!1688881 (= e!1081136 (= (list!7431 lt!642218) (Cons!18488 (h!23889 (t!154811 (t!154811 tokens!457))) (list!7431 (seqFromList!2248 (t!154811 (t!154811 (t!154811 tokens!457))))))))))

(assert (= (and d!514726 res!757272) b!1688881))

(declare-fun m!2074547 () Bool)

(assert (=> d!514726 m!2074547))

(assert (=> d!514726 m!2074547))

(declare-fun m!2074549 () Bool)

(assert (=> d!514726 m!2074549))

(declare-fun m!2074551 () Bool)

(assert (=> b!1688881 m!2074551))

(assert (=> b!1688881 m!2070349))

(declare-fun m!2074553 () Bool)

(assert (=> b!1688881 m!2074553))

(assert (=> b!1686730 d!514726))

(declare-fun d!514728 () Bool)

(assert (=> d!514728 (= (isDefined!2917 (maxPrefix!1444 thiss!17113 rules!1846 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))))) (not (isEmpty!11573 (maxPrefix!1444 thiss!17113 rules!1846 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457))))))))))

(declare-fun bs!399839 () Bool)

(assert (= bs!399839 d!514728))

(assert (=> bs!399839 m!2070357))

(declare-fun m!2074555 () Bool)

(assert (=> bs!399839 m!2074555))

(assert (=> b!1686730 d!514728))

(declare-fun d!514730 () Bool)

(declare-fun e!1081137 () Bool)

(assert (=> d!514730 e!1081137))

(declare-fun res!757273 () Bool)

(assert (=> d!514730 (=> (not res!757273) (not e!1081137))))

(assert (=> d!514730 (= res!757273 (= (list!7431 (_1!10519 (lex!1368 thiss!17113 rules!1846 (print!1415 thiss!17113 (seqFromList!2248 (t!154811 (t!154811 tokens!457))))))) (t!154811 (t!154811 tokens!457))))))

(declare-fun lt!642221 () Unit!31839)

(declare-fun e!1081138 () Unit!31839)

(assert (=> d!514730 (= lt!642221 e!1081138)))

(declare-fun c!275967 () Bool)

(assert (=> d!514730 (= c!275967 (or ((_ is Nil!18488) (t!154811 (t!154811 tokens!457))) ((_ is Nil!18488) (t!154811 (t!154811 (t!154811 tokens!457))))))))

(assert (=> d!514730 (not (isEmpty!11563 rules!1846))))

(assert (=> d!514730 (= (theoremInvertabilityWhenTokenListSeparable!321 thiss!17113 rules!1846 (t!154811 (t!154811 tokens!457))) lt!642221)))

(declare-fun b!1688882 () Bool)

(declare-fun Unit!31926 () Unit!31839)

(assert (=> b!1688882 (= e!1081138 Unit!31926)))

(declare-fun b!1688883 () Bool)

(declare-fun Unit!31927 () Unit!31839)

(assert (=> b!1688883 (= e!1081138 Unit!31927)))

(declare-fun lt!642234 () BalanceConc!12260)

(assert (=> b!1688883 (= lt!642234 (print!1415 thiss!17113 (seqFromList!2248 (t!154811 (t!154811 tokens!457)))))))

(declare-fun lt!642219 () BalanceConc!12260)

(assert (=> b!1688883 (= lt!642219 (print!1415 thiss!17113 (seqFromList!2248 (t!154811 (t!154811 (t!154811 tokens!457))))))))

(declare-fun lt!642220 () tuple2!18234)

(assert (=> b!1688883 (= lt!642220 (lex!1368 thiss!17113 rules!1846 lt!642219))))

(declare-fun lt!642238 () List!18555)

(assert (=> b!1688883 (= lt!642238 (list!7432 (charsOf!1904 (h!23889 (t!154811 (t!154811 tokens!457))))))))

(declare-fun lt!642242 () List!18555)

(assert (=> b!1688883 (= lt!642242 (list!7432 lt!642219))))

(declare-fun lt!642228 () Unit!31839)

(assert (=> b!1688883 (= lt!642228 (lemmaConcatTwoListThenFirstIsPrefix!1034 lt!642238 lt!642242))))

(assert (=> b!1688883 (isPrefix!1513 lt!642238 (++!5065 lt!642238 lt!642242))))

(declare-fun lt!642233 () Unit!31839)

(assert (=> b!1688883 (= lt!642233 lt!642228)))

(declare-fun lt!642231 () Unit!31839)

(assert (=> b!1688883 (= lt!642231 (theoremInvertabilityWhenTokenListSeparable!321 thiss!17113 rules!1846 (t!154811 (t!154811 (t!154811 tokens!457)))))))

(declare-fun lt!642243 () Unit!31839)

(assert (=> b!1688883 (= lt!642243 (seqFromListBHdTlConstructive!324 (h!23889 (t!154811 (t!154811 (t!154811 tokens!457)))) (t!154811 (t!154811 (t!154811 (t!154811 tokens!457)))) (_1!10519 lt!642220)))))

(assert (=> b!1688883 (= (list!7431 (_1!10519 lt!642220)) (list!7431 (prepend!851 (seqFromList!2248 (t!154811 (t!154811 (t!154811 (t!154811 tokens!457))))) (h!23889 (t!154811 (t!154811 (t!154811 tokens!457)))))))))

(declare-fun lt!642235 () Unit!31839)

(assert (=> b!1688883 (= lt!642235 lt!642243)))

(declare-fun lt!642229 () Option!3568)

(assert (=> b!1688883 (= lt!642229 (maxPrefix!1444 thiss!17113 rules!1846 (list!7432 lt!642234)))))

(assert (=> b!1688883 (= (print!1415 thiss!17113 (singletonSeq!1778 (h!23889 (t!154811 (t!154811 tokens!457))))) (printTailRec!935 thiss!17113 (singletonSeq!1778 (h!23889 (t!154811 (t!154811 tokens!457)))) 0 (BalanceConc!12261 Empty!6158)))))

(declare-fun lt!642236 () Unit!31839)

(declare-fun Unit!31928 () Unit!31839)

(assert (=> b!1688883 (= lt!642236 Unit!31928)))

(declare-fun lt!642232 () Unit!31839)

(assert (=> b!1688883 (= lt!642232 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!446 thiss!17113 rules!1846 (list!7432 (charsOf!1904 (h!23889 (t!154811 (t!154811 tokens!457))))) (list!7432 lt!642219)))))

(assert (=> b!1688883 (= (list!7432 (charsOf!1904 (h!23889 (t!154811 (t!154811 tokens!457))))) (originalCharacters!4069 (h!23889 (t!154811 (t!154811 tokens!457)))))))

(declare-fun lt!642225 () Unit!31839)

(declare-fun Unit!31929 () Unit!31839)

(assert (=> b!1688883 (= lt!642225 Unit!31929)))

(assert (=> b!1688883 (= (list!7432 (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 (t!154811 (t!154811 tokens!457))))) 0))) (Cons!18485 (head!3780 (originalCharacters!4069 (h!23889 (t!154811 (t!154811 (t!154811 tokens!457)))))) Nil!18485))))

(declare-fun lt!642241 () Unit!31839)

(declare-fun Unit!31930 () Unit!31839)

(assert (=> b!1688883 (= lt!642241 Unit!31930)))

(assert (=> b!1688883 (= (list!7432 (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 (t!154811 (t!154811 tokens!457))))) 0))) (Cons!18485 (head!3780 (list!7432 lt!642219)) Nil!18485))))

(declare-fun lt!642240 () Unit!31839)

(declare-fun Unit!31931 () Unit!31839)

(assert (=> b!1688883 (= lt!642240 Unit!31931)))

(assert (=> b!1688883 (= (list!7432 (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 (t!154811 (t!154811 tokens!457))))) 0))) (Cons!18485 (head!3779 lt!642219) Nil!18485))))

(declare-fun lt!642237 () Unit!31839)

(declare-fun Unit!31932 () Unit!31839)

(assert (=> b!1688883 (= lt!642237 Unit!31932)))

(assert (=> b!1688883 (isDefined!2917 (maxPrefix!1444 thiss!17113 rules!1846 (originalCharacters!4069 (h!23889 (t!154811 (t!154811 tokens!457))))))))

(declare-fun lt!642222 () Unit!31839)

(declare-fun Unit!31933 () Unit!31839)

(assert (=> b!1688883 (= lt!642222 Unit!31933)))

(assert (=> b!1688883 (isDefined!2917 (maxPrefix!1444 thiss!17113 rules!1846 (list!7432 (charsOf!1904 (h!23889 (t!154811 (t!154811 tokens!457)))))))))

(declare-fun lt!642226 () Unit!31839)

(declare-fun Unit!31934 () Unit!31839)

(assert (=> b!1688883 (= lt!642226 Unit!31934)))

(declare-fun lt!642224 () Unit!31839)

(declare-fun Unit!31935 () Unit!31839)

(assert (=> b!1688883 (= lt!642224 Unit!31935)))

(assert (=> b!1688883 (= (_1!10520 (get!5420 (maxPrefix!1444 thiss!17113 rules!1846 (list!7432 (charsOf!1904 (h!23889 (t!154811 (t!154811 tokens!457)))))))) (h!23889 (t!154811 (t!154811 tokens!457))))))

(declare-fun lt!642239 () Unit!31839)

(declare-fun Unit!31936 () Unit!31839)

(assert (=> b!1688883 (= lt!642239 Unit!31936)))

(assert (=> b!1688883 (isEmpty!11569 (_2!10520 (get!5420 (maxPrefix!1444 thiss!17113 rules!1846 (list!7432 (charsOf!1904 (h!23889 (t!154811 (t!154811 tokens!457)))))))))))

(declare-fun lt!642244 () Unit!31839)

(declare-fun Unit!31937 () Unit!31839)

(assert (=> b!1688883 (= lt!642244 Unit!31937)))

(assert (=> b!1688883 (matchR!2072 (regex!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457))))) (list!7432 (charsOf!1904 (h!23889 (t!154811 (t!154811 tokens!457))))))))

(declare-fun lt!642227 () Unit!31839)

(declare-fun Unit!31938 () Unit!31839)

(assert (=> b!1688883 (= lt!642227 Unit!31938)))

(assert (=> b!1688883 (= (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457)))) (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457)))))))

(declare-fun lt!642223 () Unit!31839)

(declare-fun Unit!31939 () Unit!31839)

(assert (=> b!1688883 (= lt!642223 Unit!31939)))

(declare-fun lt!642230 () Unit!31839)

(assert (=> b!1688883 (= lt!642230 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!200 thiss!17113 rules!1846 (h!23889 (t!154811 (t!154811 tokens!457))) (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457)))) (list!7432 lt!642219)))))

(declare-fun b!1688884 () Bool)

(assert (=> b!1688884 (= e!1081137 (isEmpty!11570 (_2!10519 (lex!1368 thiss!17113 rules!1846 (print!1415 thiss!17113 (seqFromList!2248 (t!154811 (t!154811 tokens!457))))))))))

(assert (= (and d!514730 c!275967) b!1688882))

(assert (= (and d!514730 (not c!275967)) b!1688883))

(assert (= (and d!514730 res!757273) b!1688884))

(assert (=> d!514730 m!2069733))

(assert (=> d!514730 m!2070401))

(declare-fun m!2074557 () Bool)

(assert (=> d!514730 m!2074557))

(assert (=> d!514730 m!2069771))

(declare-fun m!2074559 () Bool)

(assert (=> d!514730 m!2074559))

(assert (=> d!514730 m!2069771))

(assert (=> d!514730 m!2070401))

(assert (=> b!1688883 m!2070349))

(assert (=> b!1688883 m!2070365))

(assert (=> b!1688883 m!2074479))

(declare-fun m!2074561 () Bool)

(assert (=> b!1688883 m!2074561))

(declare-fun m!2074563 () Bool)

(assert (=> b!1688883 m!2074563))

(declare-fun m!2074565 () Bool)

(assert (=> b!1688883 m!2074565))

(declare-fun m!2074567 () Bool)

(assert (=> b!1688883 m!2074567))

(assert (=> b!1688883 m!2074479))

(declare-fun m!2074569 () Bool)

(assert (=> b!1688883 m!2074569))

(declare-fun m!2074571 () Bool)

(assert (=> b!1688883 m!2074571))

(declare-fun m!2074573 () Bool)

(assert (=> b!1688883 m!2074573))

(declare-fun m!2074575 () Bool)

(assert (=> b!1688883 m!2074575))

(declare-fun m!2074577 () Bool)

(assert (=> b!1688883 m!2074577))

(declare-fun m!2074579 () Bool)

(assert (=> b!1688883 m!2074579))

(declare-fun m!2074581 () Bool)

(assert (=> b!1688883 m!2074581))

(declare-fun m!2074583 () Bool)

(assert (=> b!1688883 m!2074583))

(assert (=> b!1688883 m!2074565))

(declare-fun m!2074585 () Bool)

(assert (=> b!1688883 m!2074585))

(assert (=> b!1688883 m!2074573))

(declare-fun m!2074587 () Bool)

(assert (=> b!1688883 m!2074587))

(assert (=> b!1688883 m!2074479))

(assert (=> b!1688883 m!2074581))

(declare-fun m!2074589 () Bool)

(assert (=> b!1688883 m!2074589))

(declare-fun m!2074591 () Bool)

(assert (=> b!1688883 m!2074591))

(declare-fun m!2074593 () Bool)

(assert (=> b!1688883 m!2074593))

(assert (=> b!1688883 m!2074581))

(declare-fun m!2074595 () Bool)

(assert (=> b!1688883 m!2074595))

(assert (=> b!1688883 m!2074587))

(declare-fun m!2074597 () Bool)

(assert (=> b!1688883 m!2074597))

(declare-fun m!2074599 () Bool)

(assert (=> b!1688883 m!2074599))

(declare-fun m!2074601 () Bool)

(assert (=> b!1688883 m!2074601))

(assert (=> b!1688883 m!2074479))

(declare-fun m!2074603 () Bool)

(assert (=> b!1688883 m!2074603))

(assert (=> b!1688883 m!2074569))

(declare-fun m!2074605 () Bool)

(assert (=> b!1688883 m!2074605))

(assert (=> b!1688883 m!2070365))

(assert (=> b!1688883 m!2074569))

(declare-fun m!2074607 () Bool)

(assert (=> b!1688883 m!2074607))

(assert (=> b!1688883 m!2074569))

(assert (=> b!1688883 m!2074575))

(assert (=> b!1688883 m!2069771))

(assert (=> b!1688883 m!2074599))

(declare-fun m!2074609 () Bool)

(assert (=> b!1688883 m!2074609))

(declare-fun m!2074611 () Bool)

(assert (=> b!1688883 m!2074611))

(declare-fun m!2074613 () Bool)

(assert (=> b!1688883 m!2074613))

(declare-fun m!2074615 () Bool)

(assert (=> b!1688883 m!2074615))

(declare-fun m!2074617 () Bool)

(assert (=> b!1688883 m!2074617))

(declare-fun m!2074619 () Bool)

(assert (=> b!1688883 m!2074619))

(assert (=> b!1688883 m!2074585))

(declare-fun m!2074621 () Bool)

(assert (=> b!1688883 m!2074621))

(assert (=> b!1688883 m!2074575))

(declare-fun m!2074623 () Bool)

(assert (=> b!1688883 m!2074623))

(assert (=> b!1688883 m!2070349))

(declare-fun m!2074625 () Bool)

(assert (=> b!1688883 m!2074625))

(assert (=> b!1688883 m!2074589))

(assert (=> b!1688883 m!2069771))

(assert (=> b!1688883 m!2070401))

(assert (=> b!1688883 m!2074591))

(assert (=> b!1688883 m!2074615))

(assert (=> b!1688884 m!2069771))

(assert (=> b!1688884 m!2069771))

(assert (=> b!1688884 m!2070401))

(assert (=> b!1688884 m!2070401))

(assert (=> b!1688884 m!2074557))

(declare-fun m!2074627 () Bool)

(assert (=> b!1688884 m!2074627))

(assert (=> b!1686730 d!514730))

(declare-fun d!514732 () Bool)

(declare-fun e!1081141 () Bool)

(assert (=> d!514732 e!1081141))

(declare-fun res!757278 () Bool)

(assert (=> d!514732 (=> res!757278 e!1081141)))

(declare-fun lt!642248 () Option!3568)

(assert (=> d!514732 (= res!757278 (isEmpty!11573 lt!642248))))

(declare-fun e!1081140 () Option!3568)

(assert (=> d!514732 (= lt!642248 e!1081140)))

(declare-fun c!275968 () Bool)

(assert (=> d!514732 (= c!275968 (and ((_ is Cons!18487) rules!1846) ((_ is Nil!18487) (t!154810 rules!1846))))))

(declare-fun lt!642247 () Unit!31839)

(declare-fun lt!642246 () Unit!31839)

(assert (=> d!514732 (= lt!642247 lt!642246)))

(assert (=> d!514732 (isPrefix!1513 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))))))

(assert (=> d!514732 (= lt!642246 (lemmaIsPrefixRefl!1030 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457))))))))

(assert (=> d!514732 (rulesValidInductive!1052 thiss!17113 rules!1846)))

(assert (=> d!514732 (= (maxPrefix!1444 thiss!17113 rules!1846 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457))))) lt!642248)))

(declare-fun b!1688885 () Bool)

(declare-fun e!1081139 () Bool)

(assert (=> b!1688885 (= e!1081141 e!1081139)))

(declare-fun res!757279 () Bool)

(assert (=> b!1688885 (=> (not res!757279) (not e!1081139))))

(assert (=> b!1688885 (= res!757279 (isDefined!2917 lt!642248))))

(declare-fun b!1688886 () Bool)

(declare-fun call!107990 () Option!3568)

(assert (=> b!1688886 (= e!1081140 call!107990)))

(declare-fun b!1688887 () Bool)

(assert (=> b!1688887 (= e!1081139 (contains!3250 rules!1846 (rule!5161 (_1!10520 (get!5420 lt!642248)))))))

(declare-fun b!1688888 () Bool)

(declare-fun res!757275 () Bool)

(assert (=> b!1688888 (=> (not res!757275) (not e!1081139))))

(assert (=> b!1688888 (= res!757275 (< (size!14724 (_2!10520 (get!5420 lt!642248))) (size!14724 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))))))))

(declare-fun b!1688889 () Bool)

(declare-fun res!757274 () Bool)

(assert (=> b!1688889 (=> (not res!757274) (not e!1081139))))

(assert (=> b!1688889 (= res!757274 (= (value!102440 (_1!10520 (get!5420 lt!642248))) (apply!5039 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!642248)))) (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!642248)))))))))

(declare-fun b!1688890 () Bool)

(declare-fun res!757276 () Bool)

(assert (=> b!1688890 (=> (not res!757276) (not e!1081139))))

(assert (=> b!1688890 (= res!757276 (matchR!2072 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!642248)))) (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!642248))))))))

(declare-fun bm!107985 () Bool)

(assert (=> bm!107985 (= call!107990 (maxPrefixOneRule!845 thiss!17113 (h!23888 rules!1846) (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457))))))))

(declare-fun b!1688891 () Bool)

(declare-fun res!757277 () Bool)

(assert (=> b!1688891 (=> (not res!757277) (not e!1081139))))

(assert (=> b!1688891 (= res!757277 (= (++!5065 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!642248)))) (_2!10520 (get!5420 lt!642248))) (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457))))))))

(declare-fun b!1688892 () Bool)

(declare-fun res!757280 () Bool)

(assert (=> b!1688892 (=> (not res!757280) (not e!1081139))))

(assert (=> b!1688892 (= res!757280 (= (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!642248)))) (originalCharacters!4069 (_1!10520 (get!5420 lt!642248)))))))

(declare-fun b!1688893 () Bool)

(declare-fun lt!642245 () Option!3568)

(declare-fun lt!642249 () Option!3568)

(assert (=> b!1688893 (= e!1081140 (ite (and ((_ is None!3567) lt!642245) ((_ is None!3567) lt!642249)) None!3567 (ite ((_ is None!3567) lt!642249) lt!642245 (ite ((_ is None!3567) lt!642245) lt!642249 (ite (>= (size!14720 (_1!10520 (v!24888 lt!642245))) (size!14720 (_1!10520 (v!24888 lt!642249)))) lt!642245 lt!642249)))))))

(assert (=> b!1688893 (= lt!642245 call!107990)))

(assert (=> b!1688893 (= lt!642249 (maxPrefix!1444 thiss!17113 (t!154810 rules!1846) (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457))))))))

(assert (= (and d!514732 c!275968) b!1688886))

(assert (= (and d!514732 (not c!275968)) b!1688893))

(assert (= (or b!1688886 b!1688893) bm!107985))

(assert (= (and d!514732 (not res!757278)) b!1688885))

(assert (= (and b!1688885 res!757279) b!1688892))

(assert (= (and b!1688892 res!757280) b!1688888))

(assert (= (and b!1688888 res!757275) b!1688891))

(assert (= (and b!1688891 res!757277) b!1688889))

(assert (= (and b!1688889 res!757274) b!1688890))

(assert (= (and b!1688890 res!757276) b!1688887))

(declare-fun m!2074629 () Bool)

(assert (=> b!1688890 m!2074629))

(declare-fun m!2074631 () Bool)

(assert (=> b!1688890 m!2074631))

(assert (=> b!1688890 m!2074631))

(declare-fun m!2074633 () Bool)

(assert (=> b!1688890 m!2074633))

(assert (=> b!1688890 m!2074633))

(declare-fun m!2074635 () Bool)

(assert (=> b!1688890 m!2074635))

(assert (=> b!1688892 m!2074629))

(assert (=> b!1688892 m!2074631))

(assert (=> b!1688892 m!2074631))

(assert (=> b!1688892 m!2074633))

(assert (=> b!1688891 m!2074629))

(assert (=> b!1688891 m!2074631))

(assert (=> b!1688891 m!2074631))

(assert (=> b!1688891 m!2074633))

(assert (=> b!1688891 m!2074633))

(declare-fun m!2074637 () Bool)

(assert (=> b!1688891 m!2074637))

(assert (=> bm!107985 m!2070335))

(declare-fun m!2074639 () Bool)

(assert (=> bm!107985 m!2074639))

(declare-fun m!2074641 () Bool)

(assert (=> b!1688885 m!2074641))

(assert (=> b!1688887 m!2074629))

(declare-fun m!2074643 () Bool)

(assert (=> b!1688887 m!2074643))

(assert (=> b!1688889 m!2074629))

(declare-fun m!2074645 () Bool)

(assert (=> b!1688889 m!2074645))

(assert (=> b!1688889 m!2074645))

(declare-fun m!2074647 () Bool)

(assert (=> b!1688889 m!2074647))

(assert (=> b!1688888 m!2074629))

(declare-fun m!2074649 () Bool)

(assert (=> b!1688888 m!2074649))

(assert (=> b!1688888 m!2070335))

(assert (=> b!1688888 m!2072985))

(assert (=> b!1688893 m!2070335))

(declare-fun m!2074651 () Bool)

(assert (=> b!1688893 m!2074651))

(declare-fun m!2074653 () Bool)

(assert (=> d!514732 m!2074653))

(assert (=> d!514732 m!2070335))

(assert (=> d!514732 m!2070335))

(declare-fun m!2074655 () Bool)

(assert (=> d!514732 m!2074655))

(assert (=> d!514732 m!2070335))

(assert (=> d!514732 m!2070335))

(declare-fun m!2074657 () Bool)

(assert (=> d!514732 m!2074657))

(assert (=> d!514732 m!2070101))

(assert (=> b!1686730 d!514732))

(declare-fun d!514734 () Bool)

(assert (=> d!514734 (= (head!3780 (list!7432 lt!640941)) (h!23886 (list!7432 lt!640941)))))

(assert (=> b!1686730 d!514734))

(declare-fun d!514736 () Bool)

(declare-fun lt!642254 () BalanceConc!12260)

(assert (=> d!514736 (= (list!7432 lt!642254) (printListTailRec!426 thiss!17113 (dropList!738 (singletonSeq!1778 (h!23889 (t!154811 tokens!457))) 0) (list!7432 (BalanceConc!12261 Empty!6158))))))

(declare-fun e!1081142 () BalanceConc!12260)

(assert (=> d!514736 (= lt!642254 e!1081142)))

(declare-fun c!275969 () Bool)

(assert (=> d!514736 (= c!275969 (>= 0 (size!14725 (singletonSeq!1778 (h!23889 (t!154811 tokens!457))))))))

(declare-fun e!1081143 () Bool)

(assert (=> d!514736 e!1081143))

(declare-fun res!757281 () Bool)

(assert (=> d!514736 (=> (not res!757281) (not e!1081143))))

(assert (=> d!514736 (= res!757281 (>= 0 0))))

(assert (=> d!514736 (= (printTailRec!935 thiss!17113 (singletonSeq!1778 (h!23889 (t!154811 tokens!457))) 0 (BalanceConc!12261 Empty!6158)) lt!642254)))

(declare-fun b!1688894 () Bool)

(assert (=> b!1688894 (= e!1081143 (<= 0 (size!14725 (singletonSeq!1778 (h!23889 (t!154811 tokens!457))))))))

(declare-fun b!1688895 () Bool)

(assert (=> b!1688895 (= e!1081142 (BalanceConc!12261 Empty!6158))))

(declare-fun b!1688896 () Bool)

(assert (=> b!1688896 (= e!1081142 (printTailRec!935 thiss!17113 (singletonSeq!1778 (h!23889 (t!154811 tokens!457))) (+ 0 1) (++!5066 (BalanceConc!12261 Empty!6158) (charsOf!1904 (apply!5040 (singletonSeq!1778 (h!23889 (t!154811 tokens!457))) 0)))))))

(declare-fun lt!642255 () List!18558)

(assert (=> b!1688896 (= lt!642255 (list!7431 (singletonSeq!1778 (h!23889 (t!154811 tokens!457)))))))

(declare-fun lt!642253 () Unit!31839)

(assert (=> b!1688896 (= lt!642253 (lemmaDropApply!633 lt!642255 0))))

(assert (=> b!1688896 (= (head!3782 (drop!959 lt!642255 0)) (apply!5043 lt!642255 0))))

(declare-fun lt!642251 () Unit!31839)

(assert (=> b!1688896 (= lt!642251 lt!642253)))

(declare-fun lt!642256 () List!18558)

(assert (=> b!1688896 (= lt!642256 (list!7431 (singletonSeq!1778 (h!23889 (t!154811 tokens!457)))))))

(declare-fun lt!642250 () Unit!31839)

(assert (=> b!1688896 (= lt!642250 (lemmaDropTail!613 lt!642256 0))))

(assert (=> b!1688896 (= (tail!2519 (drop!959 lt!642256 0)) (drop!959 lt!642256 (+ 0 1)))))

(declare-fun lt!642252 () Unit!31839)

(assert (=> b!1688896 (= lt!642252 lt!642250)))

(assert (= (and d!514736 res!757281) b!1688894))

(assert (= (and d!514736 c!275969) b!1688895))

(assert (= (and d!514736 (not c!275969)) b!1688896))

(declare-fun m!2074659 () Bool)

(assert (=> d!514736 m!2074659))

(declare-fun m!2074661 () Bool)

(assert (=> d!514736 m!2074661))

(assert (=> d!514736 m!2070731))

(declare-fun m!2074663 () Bool)

(assert (=> d!514736 m!2074663))

(assert (=> d!514736 m!2070731))

(assert (=> d!514736 m!2070351))

(assert (=> d!514736 m!2074661))

(assert (=> d!514736 m!2070351))

(declare-fun m!2074665 () Bool)

(assert (=> d!514736 m!2074665))

(assert (=> b!1688894 m!2070351))

(assert (=> b!1688894 m!2074665))

(declare-fun m!2074667 () Bool)

(assert (=> b!1688896 m!2074667))

(declare-fun m!2074669 () Bool)

(assert (=> b!1688896 m!2074669))

(declare-fun m!2074671 () Bool)

(assert (=> b!1688896 m!2074671))

(declare-fun m!2074673 () Bool)

(assert (=> b!1688896 m!2074673))

(assert (=> b!1688896 m!2070351))

(declare-fun m!2074675 () Bool)

(assert (=> b!1688896 m!2074675))

(declare-fun m!2074677 () Bool)

(assert (=> b!1688896 m!2074677))

(declare-fun m!2074679 () Bool)

(assert (=> b!1688896 m!2074679))

(declare-fun m!2074681 () Bool)

(assert (=> b!1688896 m!2074681))

(assert (=> b!1688896 m!2074675))

(assert (=> b!1688896 m!2074671))

(declare-fun m!2074683 () Bool)

(assert (=> b!1688896 m!2074683))

(assert (=> b!1688896 m!2074679))

(declare-fun m!2074685 () Bool)

(assert (=> b!1688896 m!2074685))

(assert (=> b!1688896 m!2070351))

(assert (=> b!1688896 m!2074673))

(declare-fun m!2074687 () Bool)

(assert (=> b!1688896 m!2074687))

(assert (=> b!1688896 m!2070351))

(assert (=> b!1688896 m!2073303))

(assert (=> b!1688896 m!2074677))

(declare-fun m!2074689 () Bool)

(assert (=> b!1688896 m!2074689))

(assert (=> b!1686730 d!514736))

(assert (=> b!1686730 d!514188))

(declare-fun b!1689259 () Bool)

(declare-fun e!1081335 () Unit!31839)

(declare-fun Unit!31940 () Unit!31839)

(assert (=> b!1689259 (= e!1081335 Unit!31940)))

(declare-fun b!1689260 () Bool)

(declare-fun e!1081338 () Unit!31839)

(declare-fun Unit!31941 () Unit!31839)

(assert (=> b!1689260 (= e!1081338 Unit!31941)))

(declare-fun b!1689261 () Bool)

(declare-fun Unit!31942 () Unit!31839)

(assert (=> b!1689261 (= e!1081338 Unit!31942)))

(declare-fun c!276047 () Bool)

(declare-fun lt!642832 () Token!6076)

(declare-fun getIndex!148 (List!18557 Rule!6310) Int)

(assert (=> b!1689261 (= c!276047 (< (getIndex!148 rules!1846 (rule!5161 (h!23889 (t!154811 tokens!457)))) (getIndex!148 rules!1846 (rule!5161 lt!642832))))))

(declare-fun lt!642812 () Unit!31839)

(declare-fun e!1081339 () Unit!31839)

(assert (=> b!1689261 (= lt!642812 e!1081339)))

(declare-fun c!276050 () Bool)

(assert (=> b!1689261 (= c!276050 (< (getIndex!148 rules!1846 (rule!5161 lt!642832)) (getIndex!148 rules!1846 (rule!5161 (h!23889 (t!154811 tokens!457))))))))

(declare-fun lt!642840 () Unit!31839)

(declare-fun e!1081337 () Unit!31839)

(assert (=> b!1689261 (= lt!642840 e!1081337)))

(declare-fun c!276048 () Bool)

(assert (=> b!1689261 (= c!276048 (= (getIndex!148 rules!1846 (rule!5161 lt!642832)) (getIndex!148 rules!1846 (rule!5161 (h!23889 (t!154811 tokens!457))))))))

(declare-fun lt!642821 () Unit!31839)

(declare-fun e!1081334 () Unit!31839)

(assert (=> b!1689261 (= lt!642821 e!1081334)))

(assert (=> b!1689261 false))

(declare-fun b!1689262 () Bool)

(declare-fun Unit!31943 () Unit!31839)

(assert (=> b!1689262 (= e!1081337 Unit!31943)))

(declare-fun b!1689263 () Bool)

(assert (=> b!1689263 false))

(declare-fun lt!642781 () Unit!31839)

(declare-fun lt!642802 () Unit!31839)

(assert (=> b!1689263 (= lt!642781 lt!642802)))

(assert (=> b!1689263 (= (rule!5161 lt!642832) (rule!5161 (h!23889 (t!154811 tokens!457))))))

(declare-fun lemmaSameIndexThenSameElement!96 (List!18557 Rule!6310 Rule!6310) Unit!31839)

(assert (=> b!1689263 (= lt!642802 (lemmaSameIndexThenSameElement!96 rules!1846 (rule!5161 lt!642832) (rule!5161 (h!23889 (t!154811 tokens!457)))))))

(declare-fun Unit!31944 () Unit!31839)

(assert (=> b!1689263 (= e!1081334 Unit!31944)))

(declare-fun b!1689264 () Bool)

(declare-fun res!757417 () Bool)

(declare-fun e!1081336 () Bool)

(assert (=> b!1689264 (=> (not res!757417) (not e!1081336))))

(assert (=> b!1689264 (= res!757417 (matchR!2072 (regex!3255 (get!5424 (getRuleFromTag!345 thiss!17113 rules!1846 (tag!3545 (rule!5161 lt!642832))))) (list!7432 (charsOf!1904 lt!642832))))))

(declare-fun b!1689265 () Bool)

(declare-fun e!1081333 () Unit!31839)

(declare-fun Unit!31945 () Unit!31839)

(assert (=> b!1689265 (= e!1081333 Unit!31945)))

(declare-fun b!1689266 () Bool)

(declare-fun Unit!31946 () Unit!31839)

(assert (=> b!1689266 (= e!1081333 Unit!31946)))

(declare-fun lt!642795 () List!18555)

(declare-fun lt!642818 () List!18555)

(declare-fun lt!642817 () Unit!31839)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!80 (LexerInterface!2884 List!18557 List!18555 Token!6076 Rule!6310 List!18555) Unit!31839)

(assert (=> b!1689266 (= lt!642817 (lemmaMaxPrefixThenMatchesRulesRegex!80 thiss!17113 rules!1846 lt!642795 lt!642832 (rule!5161 lt!642832) lt!642818))))

(assert (=> b!1689266 (matchR!2072 (rulesRegex!637 thiss!17113 rules!1846) (list!7432 (charsOf!1904 lt!642832)))))

(declare-fun lt!642789 () Unit!31839)

(assert (=> b!1689266 (= lt!642789 lt!642817)))

(declare-fun lt!642798 () List!18555)

(assert (=> b!1689266 (= lt!642798 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))))))

(declare-fun lt!642815 () List!18555)

(assert (=> b!1689266 (= lt!642815 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))))))

(declare-fun lt!642837 () List!18555)

(declare-fun getSuffix!750 (List!18555 List!18555) List!18555)

(assert (=> b!1689266 (= lt!642837 (getSuffix!750 lt!642795 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457))))))))

(declare-fun lt!642850 () Unit!31839)

(declare-fun lemmaSamePrefixThenSameSuffix!702 (List!18555 List!18555 List!18555 List!18555 List!18555) Unit!31839)

(assert (=> b!1689266 (= lt!642850 (lemmaSamePrefixThenSameSuffix!702 lt!642798 (list!7432 lt!640941) lt!642815 lt!642837 lt!642795))))

(assert (=> b!1689266 (= (list!7432 lt!640941) lt!642837)))

(declare-fun lt!642807 () Unit!31839)

(assert (=> b!1689266 (= lt!642807 lt!642850)))

(declare-fun lt!642830 () List!18555)

(assert (=> b!1689266 (= lt!642830 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))))))

(declare-fun lt!642816 () Unit!31839)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!193 (List!18555 List!18555) Unit!31839)

(assert (=> b!1689266 (= lt!642816 (lemmaAddHeadSuffixToPrefixStillPrefix!193 lt!642830 lt!642795))))

(assert (=> b!1689266 (isPrefix!1513 (++!5065 lt!642830 (Cons!18485 (head!3780 (getSuffix!750 lt!642795 lt!642830)) Nil!18485)) lt!642795)))

(declare-fun lt!642822 () Unit!31839)

(assert (=> b!1689266 (= lt!642822 lt!642816)))

(declare-fun lt!642801 () List!18555)

(assert (=> b!1689266 (= lt!642801 (list!7432 (charsOf!1904 lt!642832)))))

(declare-fun lt!642825 () List!18555)

(assert (=> b!1689266 (= lt!642825 (++!5065 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) (Cons!18485 (head!3780 (list!7432 lt!640941)) Nil!18485)))))

(declare-fun lt!642845 () Unit!31839)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!79 (List!18555 List!18555 List!18555) Unit!31839)

(assert (=> b!1689266 (= lt!642845 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!79 lt!642801 lt!642825 lt!642795))))

(assert (=> b!1689266 (isPrefix!1513 lt!642825 lt!642801)))

(declare-fun lt!642849 () Unit!31839)

(assert (=> b!1689266 (= lt!642849 lt!642845)))

(declare-fun lt!642826 () Regex!4583)

(assert (=> b!1689266 (= lt!642826 (rulesRegex!637 thiss!17113 rules!1846))))

(declare-fun lt!642813 () List!18555)

(assert (=> b!1689266 (= lt!642813 (++!5065 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) (Cons!18485 (head!3780 (list!7432 lt!640941)) Nil!18485)))))

(declare-fun lt!642819 () List!18555)

(assert (=> b!1689266 (= lt!642819 (list!7432 (charsOf!1904 lt!642832)))))

(declare-fun lt!642828 () Unit!31839)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!80 (Regex!4583 List!18555 List!18555) Unit!31839)

(assert (=> b!1689266 (= lt!642828 (lemmaNotPrefixMatchThenCannotMatchLonger!80 lt!642826 lt!642813 lt!642819))))

(assert (=> b!1689266 (not (matchR!2072 lt!642826 lt!642819))))

(declare-fun lt!642836 () Unit!31839)

(assert (=> b!1689266 (= lt!642836 lt!642828)))

(assert (=> b!1689266 false))

(declare-fun d!514738 () Bool)

(assert (=> d!514738 (= (maxPrefix!1444 thiss!17113 rules!1846 (++!5065 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) (list!7432 lt!640941))) (Some!3567 (tuple2!18237 (h!23889 (t!154811 tokens!457)) (list!7432 lt!640941))))))

(declare-fun lt!642784 () Unit!31839)

(declare-fun Unit!31947 () Unit!31839)

(assert (=> d!514738 (= lt!642784 Unit!31947)))

(declare-fun lt!642838 () Unit!31839)

(assert (=> d!514738 (= lt!642838 e!1081338)))

(declare-fun c!276051 () Bool)

(assert (=> d!514738 (= c!276051 (not (= (rule!5161 lt!642832) (rule!5161 (h!23889 (t!154811 tokens!457))))))))

(declare-fun lt!642794 () Unit!31839)

(declare-fun lt!642851 () Unit!31839)

(assert (=> d!514738 (= lt!642794 lt!642851)))

(assert (=> d!514738 (= (list!7432 lt!640941) lt!642818)))

(assert (=> d!514738 (= lt!642851 (lemmaSamePrefixThenSameSuffix!702 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) (list!7432 lt!640941) (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) lt!642818 lt!642795))))

(declare-fun lt!642799 () Unit!31839)

(declare-fun lt!642810 () Unit!31839)

(assert (=> d!514738 (= lt!642799 lt!642810)))

(declare-fun lt!642842 () List!18555)

(declare-fun lt!642793 () List!18555)

(assert (=> d!514738 (= lt!642842 lt!642793)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!203 (List!18555 List!18555 List!18555) Unit!31839)

(assert (=> d!514738 (= lt!642810 (lemmaIsPrefixSameLengthThenSameList!203 lt!642842 lt!642793 lt!642795))))

(assert (=> d!514738 (= lt!642793 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))))))

(assert (=> d!514738 (= lt!642842 (list!7432 (charsOf!1904 lt!642832)))))

(declare-fun lt!642823 () Unit!31839)

(assert (=> d!514738 (= lt!642823 e!1081335)))

(declare-fun c!276046 () Bool)

(assert (=> d!514738 (= c!276046 (< (size!14726 (charsOf!1904 lt!642832)) (size!14726 (charsOf!1904 (h!23889 (t!154811 tokens!457))))))))

(declare-fun lt!642835 () Unit!31839)

(assert (=> d!514738 (= lt!642835 e!1081333)))

(declare-fun c!276049 () Bool)

(assert (=> d!514738 (= c!276049 (> (size!14726 (charsOf!1904 lt!642832)) (size!14726 (charsOf!1904 (h!23889 (t!154811 tokens!457))))))))

(declare-fun lt!642783 () Unit!31839)

(declare-fun lt!642792 () Unit!31839)

(assert (=> d!514738 (= lt!642783 lt!642792)))

(assert (=> d!514738 (matchR!2072 (rulesRegex!637 thiss!17113 rules!1846) (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))))))

(assert (=> d!514738 (= lt!642792 (lemmaMaxPrefixThenMatchesRulesRegex!80 thiss!17113 rules!1846 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) (h!23889 (t!154811 tokens!457)) (rule!5161 (h!23889 (t!154811 tokens!457))) Nil!18485))))

(declare-fun lt!642829 () Unit!31839)

(declare-fun lt!642788 () Unit!31839)

(assert (=> d!514738 (= lt!642829 lt!642788)))

(declare-fun lt!642839 () List!18555)

(assert (=> d!514738 (= lt!642818 lt!642839)))

(declare-fun lt!642806 () List!18555)

(declare-fun lt!642846 () List!18555)

(assert (=> d!514738 (= lt!642788 (lemmaSamePrefixThenSameSuffix!702 lt!642846 lt!642818 lt!642806 lt!642839 lt!642795))))

(assert (=> d!514738 (= lt!642839 (getSuffix!750 lt!642795 (list!7432 (charsOf!1904 lt!642832))))))

(assert (=> d!514738 (= lt!642806 (list!7432 (charsOf!1904 lt!642832)))))

(assert (=> d!514738 (= lt!642846 (list!7432 (charsOf!1904 lt!642832)))))

(declare-fun lt!642797 () Unit!31839)

(declare-fun lt!642787 () Unit!31839)

(assert (=> d!514738 (= lt!642797 lt!642787)))

(declare-fun lt!642824 () List!18555)

(assert (=> d!514738 (= (maxPrefixOneRule!845 thiss!17113 (rule!5161 lt!642832) lt!642795) (Some!3567 (tuple2!18237 (Token!6077 (apply!5039 (transformation!3255 (rule!5161 lt!642832)) (seqFromList!2247 lt!642824)) (rule!5161 lt!642832) (size!14724 lt!642824) lt!642824) lt!642818)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!269 (LexerInterface!2884 List!18557 List!18555 List!18555 List!18555 Rule!6310) Unit!31839)

(assert (=> d!514738 (= lt!642787 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!269 thiss!17113 rules!1846 lt!642824 lt!642795 lt!642818 (rule!5161 lt!642832)))))

(assert (=> d!514738 (= lt!642824 (list!7432 (charsOf!1904 lt!642832)))))

(declare-fun lt!642831 () Unit!31839)

(declare-fun lemmaCharactersSize!375 (Token!6076) Unit!31839)

(assert (=> d!514738 (= lt!642831 (lemmaCharactersSize!375 lt!642832))))

(declare-fun lt!642785 () Unit!31839)

(assert (=> d!514738 (= lt!642785 (lemmaEqSameImage!228 (transformation!3255 (rule!5161 lt!642832)) (charsOf!1904 lt!642832) (seqFromList!2247 (originalCharacters!4069 lt!642832))))))

(declare-fun lt!642841 () Unit!31839)

(assert (=> d!514738 (= lt!642841 (lemmaSemiInverse!442 (transformation!3255 (rule!5161 lt!642832)) (charsOf!1904 lt!642832)))))

(declare-fun lt!642844 () Unit!31839)

(assert (=> d!514738 (= lt!642844 (lemmaInv!508 (transformation!3255 (rule!5161 lt!642832))))))

(declare-fun lt!642814 () Unit!31839)

(declare-fun lt!642808 () Unit!31839)

(assert (=> d!514738 (= lt!642814 lt!642808)))

(declare-fun lt!642805 () List!18555)

(assert (=> d!514738 (isPrefix!1513 lt!642805 (++!5065 lt!642805 lt!642818))))

(assert (=> d!514738 (= lt!642808 (lemmaConcatTwoListThenFirstIsPrefix!1034 lt!642805 lt!642818))))

(assert (=> d!514738 (= lt!642805 (list!7432 (charsOf!1904 lt!642832)))))

(declare-fun lt!642803 () Unit!31839)

(declare-fun lt!642791 () Unit!31839)

(assert (=> d!514738 (= lt!642803 lt!642791)))

(assert (=> d!514738 e!1081336))

(declare-fun res!757418 () Bool)

(assert (=> d!514738 (=> (not res!757418) (not e!1081336))))

(assert (=> d!514738 (= res!757418 (isDefined!2920 (getRuleFromTag!345 thiss!17113 rules!1846 (tag!3545 (rule!5161 lt!642832)))))))

(assert (=> d!514738 (= lt!642791 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!345 thiss!17113 rules!1846 lt!642795 lt!642832))))

(declare-fun lt!642782 () Option!3568)

(assert (=> d!514738 (= lt!642818 (_2!10520 (get!5420 lt!642782)))))

(assert (=> d!514738 (= lt!642832 (_1!10520 (get!5420 lt!642782)))))

(declare-fun lt!642800 () Unit!31839)

(assert (=> d!514738 (= lt!642800 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!446 thiss!17113 rules!1846 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) (list!7432 lt!640941)))))

(assert (=> d!514738 (= lt!642782 (maxPrefix!1444 thiss!17113 rules!1846 lt!642795))))

(declare-fun lt!642804 () Unit!31839)

(declare-fun lt!642809 () Unit!31839)

(assert (=> d!514738 (= lt!642804 lt!642809)))

(declare-fun lt!642811 () List!18555)

(assert (=> d!514738 (isPrefix!1513 lt!642811 (++!5065 lt!642811 (list!7432 lt!640941)))))

(assert (=> d!514738 (= lt!642809 (lemmaConcatTwoListThenFirstIsPrefix!1034 lt!642811 (list!7432 lt!640941)))))

(assert (=> d!514738 (= lt!642811 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))))))

(assert (=> d!514738 (= lt!642795 (++!5065 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) (list!7432 lt!640941)))))

(assert (=> d!514738 (not (isEmpty!11563 rules!1846))))

(assert (=> d!514738 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!200 thiss!17113 rules!1846 (h!23889 (t!154811 tokens!457)) (rule!5161 (h!23889 (t!154811 tokens!457))) (list!7432 lt!640941)) lt!642784)))

(declare-fun b!1689267 () Bool)

(assert (=> b!1689267 (= e!1081336 (= (rule!5161 lt!642832) (get!5424 (getRuleFromTag!345 thiss!17113 rules!1846 (tag!3545 (rule!5161 lt!642832))))))))

(declare-fun b!1689268 () Bool)

(declare-fun Unit!31948 () Unit!31839)

(assert (=> b!1689268 (= e!1081334 Unit!31948)))

(declare-fun b!1689269 () Bool)

(declare-fun Unit!31949 () Unit!31839)

(assert (=> b!1689269 (= e!1081335 Unit!31949)))

(declare-fun lt!642848 () List!18555)

(assert (=> b!1689269 (= lt!642848 (list!7432 (charsOf!1904 lt!642832)))))

(declare-fun lt!642786 () List!18555)

(assert (=> b!1689269 (= lt!642786 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))))))

(declare-fun lt!642834 () Unit!31839)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!170 (LexerInterface!2884 List!18557 Rule!6310 List!18555 List!18555 List!18555 Rule!6310) Unit!31839)

(assert (=> b!1689269 (= lt!642834 (lemmaMaxPrefixOutputsMaxPrefix!170 thiss!17113 rules!1846 (rule!5161 lt!642832) lt!642848 lt!642795 lt!642786 (rule!5161 (h!23889 (t!154811 tokens!457)))))))

(assert (=> b!1689269 (not (matchR!2072 (regex!3255 (rule!5161 (h!23889 (t!154811 tokens!457)))) lt!642786))))

(declare-fun lt!642790 () Unit!31839)

(assert (=> b!1689269 (= lt!642790 lt!642834)))

(assert (=> b!1689269 false))

(declare-fun b!1689270 () Bool)

(assert (=> b!1689270 false))

(declare-fun lt!642820 () Unit!31839)

(declare-fun lt!642833 () Unit!31839)

(assert (=> b!1689270 (= lt!642820 lt!642833)))

(declare-fun lt!642843 () List!18555)

(assert (=> b!1689270 (not (matchR!2072 (regex!3255 (rule!5161 lt!642832)) lt!642843))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!120 (LexerInterface!2884 List!18557 Rule!6310 List!18555 List!18555 Rule!6310) Unit!31839)

(assert (=> b!1689270 (= lt!642833 (lemmaMaxPrefNoSmallerRuleMatches!120 thiss!17113 rules!1846 (rule!5161 (h!23889 (t!154811 tokens!457))) lt!642843 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) (rule!5161 lt!642832)))))

(assert (=> b!1689270 (= lt!642843 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))))))

(declare-fun Unit!31950 () Unit!31839)

(assert (=> b!1689270 (= e!1081337 Unit!31950)))

(declare-fun b!1689271 () Bool)

(declare-fun Unit!31951 () Unit!31839)

(assert (=> b!1689271 (= e!1081339 Unit!31951)))

(declare-fun b!1689272 () Bool)

(assert (=> b!1689272 false))

(declare-fun lt!642796 () Unit!31839)

(declare-fun lt!642827 () Unit!31839)

(assert (=> b!1689272 (= lt!642796 lt!642827)))

(declare-fun lt!642847 () List!18555)

(assert (=> b!1689272 (not (matchR!2072 (regex!3255 (rule!5161 (h!23889 (t!154811 tokens!457)))) lt!642847))))

(assert (=> b!1689272 (= lt!642827 (lemmaMaxPrefNoSmallerRuleMatches!120 thiss!17113 rules!1846 (rule!5161 lt!642832) lt!642847 lt!642795 (rule!5161 (h!23889 (t!154811 tokens!457)))))))

(assert (=> b!1689272 (= lt!642847 (list!7432 (charsOf!1904 lt!642832)))))

(declare-fun Unit!31952 () Unit!31839)

(assert (=> b!1689272 (= e!1081339 Unit!31952)))

(assert (= (and d!514738 res!757418) b!1689264))

(assert (= (and b!1689264 res!757417) b!1689267))

(assert (= (and d!514738 c!276049) b!1689266))

(assert (= (and d!514738 (not c!276049)) b!1689265))

(assert (= (and d!514738 c!276046) b!1689269))

(assert (= (and d!514738 (not c!276046)) b!1689259))

(assert (= (and d!514738 c!276051) b!1689261))

(assert (= (and d!514738 (not c!276051)) b!1689260))

(assert (= (and b!1689261 c!276047) b!1689272))

(assert (= (and b!1689261 (not c!276047)) b!1689271))

(assert (= (and b!1689261 c!276050) b!1689270))

(assert (= (and b!1689261 (not c!276050)) b!1689262))

(assert (= (and b!1689261 c!276048) b!1689263))

(assert (= (and b!1689261 (not c!276048)) b!1689268))

(declare-fun m!2075591 () Bool)

(assert (=> b!1689272 m!2075591))

(declare-fun m!2075593 () Bool)

(assert (=> b!1689272 m!2075593))

(declare-fun m!2075595 () Bool)

(assert (=> b!1689272 m!2075595))

(assert (=> b!1689272 m!2075595))

(declare-fun m!2075597 () Bool)

(assert (=> b!1689272 m!2075597))

(declare-fun m!2075599 () Bool)

(assert (=> b!1689267 m!2075599))

(assert (=> b!1689267 m!2075599))

(declare-fun m!2075601 () Bool)

(assert (=> b!1689267 m!2075601))

(assert (=> d!514738 m!2075599))

(assert (=> d!514738 m!2075595))

(assert (=> d!514738 m!2075597))

(assert (=> d!514738 m!2070335))

(assert (=> d!514738 m!2070345))

(assert (=> d!514738 m!2070347))

(assert (=> d!514738 m!2069837))

(assert (=> d!514738 m!2075599))

(declare-fun m!2075603 () Bool)

(assert (=> d!514738 m!2075603))

(assert (=> d!514738 m!2070345))

(declare-fun m!2075605 () Bool)

(assert (=> d!514738 m!2075605))

(declare-fun m!2075607 () Bool)

(assert (=> d!514738 m!2075607))

(assert (=> d!514738 m!2069837))

(assert (=> d!514738 m!2070845))

(declare-fun m!2075609 () Bool)

(assert (=> d!514738 m!2075609))

(declare-fun m!2075611 () Bool)

(assert (=> d!514738 m!2075611))

(declare-fun m!2075613 () Bool)

(assert (=> d!514738 m!2075613))

(assert (=> d!514738 m!2070335))

(assert (=> d!514738 m!2070345))

(assert (=> d!514738 m!2070335))

(declare-fun m!2075615 () Bool)

(assert (=> d!514738 m!2075615))

(assert (=> d!514738 m!2075595))

(declare-fun m!2075617 () Bool)

(assert (=> d!514738 m!2075617))

(assert (=> d!514738 m!2075613))

(declare-fun m!2075619 () Bool)

(assert (=> d!514738 m!2075619))

(assert (=> d!514738 m!2069733))

(declare-fun m!2075621 () Bool)

(assert (=> d!514738 m!2075621))

(assert (=> d!514738 m!2075595))

(declare-fun m!2075623 () Bool)

(assert (=> d!514738 m!2075623))

(assert (=> d!514738 m!2070335))

(declare-fun m!2075625 () Bool)

(assert (=> d!514738 m!2075625))

(declare-fun m!2075627 () Bool)

(assert (=> d!514738 m!2075627))

(assert (=> d!514738 m!2070335))

(assert (=> d!514738 m!2070345))

(declare-fun m!2075629 () Bool)

(assert (=> d!514738 m!2075629))

(assert (=> d!514738 m!2069827))

(assert (=> d!514738 m!2069837))

(assert (=> d!514738 m!2070335))

(declare-fun m!2075631 () Bool)

(assert (=> d!514738 m!2075631))

(declare-fun m!2075633 () Bool)

(assert (=> d!514738 m!2075633))

(assert (=> d!514738 m!2075595))

(declare-fun m!2075635 () Bool)

(assert (=> d!514738 m!2075635))

(assert (=> d!514738 m!2075597))

(declare-fun m!2075637 () Bool)

(assert (=> d!514738 m!2075637))

(declare-fun m!2075639 () Bool)

(assert (=> d!514738 m!2075639))

(assert (=> d!514738 m!2075629))

(declare-fun m!2075641 () Bool)

(assert (=> d!514738 m!2075641))

(assert (=> d!514738 m!2075609))

(declare-fun m!2075643 () Bool)

(assert (=> d!514738 m!2075643))

(declare-fun m!2075645 () Bool)

(assert (=> d!514738 m!2075645))

(declare-fun m!2075647 () Bool)

(assert (=> d!514738 m!2075647))

(assert (=> d!514738 m!2070345))

(declare-fun m!2075649 () Bool)

(assert (=> d!514738 m!2075649))

(assert (=> d!514738 m!2069827))

(assert (=> d!514738 m!2070335))

(declare-fun m!2075651 () Bool)

(assert (=> d!514738 m!2075651))

(assert (=> d!514738 m!2075595))

(assert (=> d!514738 m!2075621))

(declare-fun m!2075653 () Bool)

(assert (=> d!514738 m!2075653))

(declare-fun m!2075655 () Bool)

(assert (=> d!514738 m!2075655))

(assert (=> d!514738 m!2075605))

(declare-fun m!2075657 () Bool)

(assert (=> d!514738 m!2075657))

(declare-fun m!2075659 () Bool)

(assert (=> d!514738 m!2075659))

(assert (=> b!1689264 m!2075595))

(assert (=> b!1689264 m!2075599))

(assert (=> b!1689264 m!2075595))

(assert (=> b!1689264 m!2075597))

(assert (=> b!1689264 m!2075597))

(declare-fun m!2075661 () Bool)

(assert (=> b!1689264 m!2075661))

(assert (=> b!1689264 m!2075599))

(assert (=> b!1689264 m!2075601))

(assert (=> b!1689266 m!2075595))

(declare-fun m!2075663 () Bool)

(assert (=> b!1689266 m!2075663))

(assert (=> b!1689266 m!2070345))

(declare-fun m!2075665 () Bool)

(assert (=> b!1689266 m!2075665))

(declare-fun m!2075667 () Bool)

(assert (=> b!1689266 m!2075667))

(assert (=> b!1689266 m!2069837))

(assert (=> b!1689266 m!2070335))

(declare-fun m!2075669 () Bool)

(assert (=> b!1689266 m!2075669))

(declare-fun m!2075671 () Bool)

(assert (=> b!1689266 m!2075671))

(declare-fun m!2075673 () Bool)

(assert (=> b!1689266 m!2075673))

(declare-fun m!2075675 () Bool)

(assert (=> b!1689266 m!2075675))

(declare-fun m!2075677 () Bool)

(assert (=> b!1689266 m!2075677))

(declare-fun m!2075679 () Bool)

(assert (=> b!1689266 m!2075679))

(declare-fun m!2075681 () Bool)

(assert (=> b!1689266 m!2075681))

(assert (=> b!1689266 m!2075671))

(declare-fun m!2075683 () Bool)

(assert (=> b!1689266 m!2075683))

(assert (=> b!1689266 m!2069827))

(assert (=> b!1689266 m!2075597))

(declare-fun m!2075685 () Bool)

(assert (=> b!1689266 m!2075685))

(assert (=> b!1689266 m!2075667))

(declare-fun m!2075687 () Bool)

(assert (=> b!1689266 m!2075687))

(assert (=> b!1689266 m!2070335))

(declare-fun m!2075689 () Bool)

(assert (=> b!1689266 m!2075689))

(assert (=> b!1689266 m!2075595))

(assert (=> b!1689266 m!2075597))

(assert (=> b!1689266 m!2070345))

(assert (=> b!1689266 m!2070381))

(assert (=> b!1689266 m!2069827))

(assert (=> b!1689266 m!2069837))

(assert (=> b!1689266 m!2070335))

(declare-fun m!2075691 () Bool)

(assert (=> b!1689270 m!2075691))

(assert (=> b!1689270 m!2069837))

(assert (=> b!1689270 m!2069837))

(assert (=> b!1689270 m!2070335))

(assert (=> b!1689270 m!2070335))

(declare-fun m!2075693 () Bool)

(assert (=> b!1689270 m!2075693))

(declare-fun m!2075695 () Bool)

(assert (=> b!1689263 m!2075695))

(declare-fun m!2075697 () Bool)

(assert (=> b!1689261 m!2075697))

(declare-fun m!2075699 () Bool)

(assert (=> b!1689261 m!2075699))

(assert (=> b!1689269 m!2075595))

(assert (=> b!1689269 m!2075595))

(assert (=> b!1689269 m!2075597))

(assert (=> b!1689269 m!2069837))

(assert (=> b!1689269 m!2069837))

(assert (=> b!1689269 m!2070335))

(declare-fun m!2075701 () Bool)

(assert (=> b!1689269 m!2075701))

(declare-fun m!2075703 () Bool)

(assert (=> b!1689269 m!2075703))

(assert (=> b!1686730 d!514738))

(declare-fun d!514906 () Bool)

(declare-fun e!1081342 () Bool)

(assert (=> d!514906 e!1081342))

(declare-fun res!757423 () Bool)

(assert (=> d!514906 (=> res!757423 e!1081342)))

(declare-fun lt!642855 () Option!3568)

(assert (=> d!514906 (= res!757423 (isEmpty!11573 lt!642855))))

(declare-fun e!1081341 () Option!3568)

(assert (=> d!514906 (= lt!642855 e!1081341)))

(declare-fun c!276052 () Bool)

(assert (=> d!514906 (= c!276052 (and ((_ is Cons!18487) rules!1846) ((_ is Nil!18487) (t!154810 rules!1846))))))

(declare-fun lt!642854 () Unit!31839)

(declare-fun lt!642853 () Unit!31839)

(assert (=> d!514906 (= lt!642854 lt!642853)))

(assert (=> d!514906 (isPrefix!1513 (originalCharacters!4069 (h!23889 (t!154811 tokens!457))) (originalCharacters!4069 (h!23889 (t!154811 tokens!457))))))

(assert (=> d!514906 (= lt!642853 (lemmaIsPrefixRefl!1030 (originalCharacters!4069 (h!23889 (t!154811 tokens!457))) (originalCharacters!4069 (h!23889 (t!154811 tokens!457)))))))

(assert (=> d!514906 (rulesValidInductive!1052 thiss!17113 rules!1846)))

(assert (=> d!514906 (= (maxPrefix!1444 thiss!17113 rules!1846 (originalCharacters!4069 (h!23889 (t!154811 tokens!457)))) lt!642855)))

(declare-fun b!1689273 () Bool)

(declare-fun e!1081340 () Bool)

(assert (=> b!1689273 (= e!1081342 e!1081340)))

(declare-fun res!757424 () Bool)

(assert (=> b!1689273 (=> (not res!757424) (not e!1081340))))

(assert (=> b!1689273 (= res!757424 (isDefined!2917 lt!642855))))

(declare-fun b!1689274 () Bool)

(declare-fun call!108002 () Option!3568)

(assert (=> b!1689274 (= e!1081341 call!108002)))

(declare-fun b!1689275 () Bool)

(assert (=> b!1689275 (= e!1081340 (contains!3250 rules!1846 (rule!5161 (_1!10520 (get!5420 lt!642855)))))))

(declare-fun b!1689276 () Bool)

(declare-fun res!757420 () Bool)

(assert (=> b!1689276 (=> (not res!757420) (not e!1081340))))

(assert (=> b!1689276 (= res!757420 (< (size!14724 (_2!10520 (get!5420 lt!642855))) (size!14724 (originalCharacters!4069 (h!23889 (t!154811 tokens!457))))))))

(declare-fun b!1689277 () Bool)

(declare-fun res!757419 () Bool)

(assert (=> b!1689277 (=> (not res!757419) (not e!1081340))))

(assert (=> b!1689277 (= res!757419 (= (value!102440 (_1!10520 (get!5420 lt!642855))) (apply!5039 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!642855)))) (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!642855)))))))))

(declare-fun b!1689278 () Bool)

(declare-fun res!757421 () Bool)

(assert (=> b!1689278 (=> (not res!757421) (not e!1081340))))

(assert (=> b!1689278 (= res!757421 (matchR!2072 (regex!3255 (rule!5161 (_1!10520 (get!5420 lt!642855)))) (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!642855))))))))

(declare-fun bm!107997 () Bool)

(assert (=> bm!107997 (= call!108002 (maxPrefixOneRule!845 thiss!17113 (h!23888 rules!1846) (originalCharacters!4069 (h!23889 (t!154811 tokens!457)))))))

(declare-fun b!1689279 () Bool)

(declare-fun res!757422 () Bool)

(assert (=> b!1689279 (=> (not res!757422) (not e!1081340))))

(assert (=> b!1689279 (= res!757422 (= (++!5065 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!642855)))) (_2!10520 (get!5420 lt!642855))) (originalCharacters!4069 (h!23889 (t!154811 tokens!457)))))))

(declare-fun b!1689280 () Bool)

(declare-fun res!757425 () Bool)

(assert (=> b!1689280 (=> (not res!757425) (not e!1081340))))

(assert (=> b!1689280 (= res!757425 (= (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!642855)))) (originalCharacters!4069 (_1!10520 (get!5420 lt!642855)))))))

(declare-fun b!1689281 () Bool)

(declare-fun lt!642852 () Option!3568)

(declare-fun lt!642856 () Option!3568)

(assert (=> b!1689281 (= e!1081341 (ite (and ((_ is None!3567) lt!642852) ((_ is None!3567) lt!642856)) None!3567 (ite ((_ is None!3567) lt!642856) lt!642852 (ite ((_ is None!3567) lt!642852) lt!642856 (ite (>= (size!14720 (_1!10520 (v!24888 lt!642852))) (size!14720 (_1!10520 (v!24888 lt!642856)))) lt!642852 lt!642856)))))))

(assert (=> b!1689281 (= lt!642852 call!108002)))

(assert (=> b!1689281 (= lt!642856 (maxPrefix!1444 thiss!17113 (t!154810 rules!1846) (originalCharacters!4069 (h!23889 (t!154811 tokens!457)))))))

(assert (= (and d!514906 c!276052) b!1689274))

(assert (= (and d!514906 (not c!276052)) b!1689281))

(assert (= (or b!1689274 b!1689281) bm!107997))

(assert (= (and d!514906 (not res!757423)) b!1689273))

(assert (= (and b!1689273 res!757424) b!1689280))

(assert (= (and b!1689280 res!757425) b!1689276))

(assert (= (and b!1689276 res!757420) b!1689279))

(assert (= (and b!1689279 res!757422) b!1689277))

(assert (= (and b!1689277 res!757419) b!1689278))

(assert (= (and b!1689278 res!757421) b!1689275))

(declare-fun m!2075705 () Bool)

(assert (=> b!1689278 m!2075705))

(declare-fun m!2075707 () Bool)

(assert (=> b!1689278 m!2075707))

(assert (=> b!1689278 m!2075707))

(declare-fun m!2075709 () Bool)

(assert (=> b!1689278 m!2075709))

(assert (=> b!1689278 m!2075709))

(declare-fun m!2075711 () Bool)

(assert (=> b!1689278 m!2075711))

(assert (=> b!1689280 m!2075705))

(assert (=> b!1689280 m!2075707))

(assert (=> b!1689280 m!2075707))

(assert (=> b!1689280 m!2075709))

(assert (=> b!1689279 m!2075705))

(assert (=> b!1689279 m!2075707))

(assert (=> b!1689279 m!2075707))

(assert (=> b!1689279 m!2075709))

(assert (=> b!1689279 m!2075709))

(declare-fun m!2075713 () Bool)

(assert (=> b!1689279 m!2075713))

(declare-fun m!2075715 () Bool)

(assert (=> bm!107997 m!2075715))

(declare-fun m!2075717 () Bool)

(assert (=> b!1689273 m!2075717))

(assert (=> b!1689275 m!2075705))

(declare-fun m!2075719 () Bool)

(assert (=> b!1689275 m!2075719))

(assert (=> b!1689277 m!2075705))

(declare-fun m!2075721 () Bool)

(assert (=> b!1689277 m!2075721))

(assert (=> b!1689277 m!2075721))

(declare-fun m!2075723 () Bool)

(assert (=> b!1689277 m!2075723))

(assert (=> b!1689276 m!2075705))

(declare-fun m!2075725 () Bool)

(assert (=> b!1689276 m!2075725))

(assert (=> b!1689276 m!2073523))

(declare-fun m!2075727 () Bool)

(assert (=> b!1689281 m!2075727))

(declare-fun m!2075729 () Bool)

(assert (=> d!514906 m!2075729))

(declare-fun m!2075731 () Bool)

(assert (=> d!514906 m!2075731))

(declare-fun m!2075733 () Bool)

(assert (=> d!514906 m!2075733))

(assert (=> d!514906 m!2070101))

(assert (=> b!1686730 d!514906))

(declare-fun b!1689282 () Bool)

(declare-fun res!757427 () Bool)

(declare-fun e!1081343 () Bool)

(assert (=> b!1689282 (=> (not res!757427) (not e!1081343))))

(declare-fun lt!642861 () Token!6076)

(assert (=> b!1689282 (= res!757427 (matchR!2072 (regex!3255 (get!5424 (getRuleFromTag!345 thiss!17113 rules!1846 (tag!3545 (rule!5161 lt!642861))))) (list!7432 (charsOf!1904 lt!642861))))))

(declare-fun b!1689285 () Bool)

(declare-fun e!1081344 () Unit!31839)

(declare-fun Unit!31953 () Unit!31839)

(assert (=> b!1689285 (= e!1081344 Unit!31953)))

(declare-fun b!1689284 () Bool)

(declare-fun Unit!31954 () Unit!31839)

(assert (=> b!1689284 (= e!1081344 Unit!31954)))

(declare-fun lt!642868 () List!18555)

(assert (=> b!1689284 (= lt!642868 (++!5065 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) (list!7432 lt!640941)))))

(declare-fun lt!642869 () Unit!31839)

(assert (=> b!1689284 (= lt!642869 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!239 thiss!17113 (rule!5161 lt!642861) rules!1846 lt!642868))))

(assert (=> b!1689284 (isEmpty!11573 (maxPrefixOneRule!845 thiss!17113 (rule!5161 lt!642861) lt!642868))))

(declare-fun lt!642871 () Unit!31839)

(assert (=> b!1689284 (= lt!642871 lt!642869)))

(declare-fun lt!642862 () List!18555)

(assert (=> b!1689284 (= lt!642862 (list!7432 (charsOf!1904 lt!642861)))))

(declare-fun lt!642870 () Unit!31839)

(assert (=> b!1689284 (= lt!642870 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!235 thiss!17113 (rule!5161 lt!642861) lt!642862 (++!5065 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) (list!7432 lt!640941))))))

(assert (=> b!1689284 (not (matchR!2072 (regex!3255 (rule!5161 lt!642861)) lt!642862))))

(declare-fun lt!642860 () Unit!31839)

(assert (=> b!1689284 (= lt!642860 lt!642870)))

(assert (=> b!1689284 false))

(declare-fun b!1689283 () Bool)

(assert (=> b!1689283 (= e!1081343 (= (rule!5161 lt!642861) (get!5424 (getRuleFromTag!345 thiss!17113 rules!1846 (tag!3545 (rule!5161 lt!642861))))))))

(declare-fun d!514908 () Bool)

(assert (=> d!514908 (isDefined!2917 (maxPrefix!1444 thiss!17113 rules!1846 (++!5065 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) (list!7432 lt!640941))))))

(declare-fun lt!642857 () Unit!31839)

(assert (=> d!514908 (= lt!642857 e!1081344)))

(declare-fun c!276053 () Bool)

(assert (=> d!514908 (= c!276053 (isEmpty!11573 (maxPrefix!1444 thiss!17113 rules!1846 (++!5065 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) (list!7432 lt!640941)))))))

(declare-fun lt!642863 () Unit!31839)

(declare-fun lt!642867 () Unit!31839)

(assert (=> d!514908 (= lt!642863 lt!642867)))

(assert (=> d!514908 e!1081343))

(declare-fun res!757426 () Bool)

(assert (=> d!514908 (=> (not res!757426) (not e!1081343))))

(assert (=> d!514908 (= res!757426 (isDefined!2920 (getRuleFromTag!345 thiss!17113 rules!1846 (tag!3545 (rule!5161 lt!642861)))))))

(assert (=> d!514908 (= lt!642867 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!345 thiss!17113 rules!1846 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) lt!642861))))

(declare-fun lt!642864 () Unit!31839)

(declare-fun lt!642866 () Unit!31839)

(assert (=> d!514908 (= lt!642864 lt!642866)))

(declare-fun lt!642858 () List!18555)

(assert (=> d!514908 (isPrefix!1513 lt!642858 (++!5065 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) (list!7432 lt!640941)))))

(assert (=> d!514908 (= lt!642866 (lemmaPrefixStaysPrefixWhenAddingToSuffix!231 lt!642858 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) (list!7432 lt!640941)))))

(assert (=> d!514908 (= lt!642858 (list!7432 (charsOf!1904 lt!642861)))))

(declare-fun lt!642873 () Unit!31839)

(declare-fun lt!642872 () Unit!31839)

(assert (=> d!514908 (= lt!642873 lt!642872)))

(declare-fun lt!642865 () List!18555)

(declare-fun lt!642859 () List!18555)

(assert (=> d!514908 (isPrefix!1513 lt!642865 (++!5065 lt!642865 lt!642859))))

(assert (=> d!514908 (= lt!642872 (lemmaConcatTwoListThenFirstIsPrefix!1034 lt!642865 lt!642859))))

(assert (=> d!514908 (= lt!642859 (_2!10520 (get!5420 (maxPrefix!1444 thiss!17113 rules!1846 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457))))))))))

(assert (=> d!514908 (= lt!642865 (list!7432 (charsOf!1904 lt!642861)))))

(assert (=> d!514908 (= lt!642861 (head!3782 (list!7431 (_1!10519 (lex!1368 thiss!17113 rules!1846 (seqFromList!2247 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457))))))))))))

(assert (=> d!514908 (not (isEmpty!11563 rules!1846))))

(assert (=> d!514908 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!446 thiss!17113 rules!1846 (list!7432 (charsOf!1904 (h!23889 (t!154811 tokens!457)))) (list!7432 lt!640941)) lt!642857)))

(assert (= (and d!514908 res!757426) b!1689282))

(assert (= (and b!1689282 res!757427) b!1689283))

(assert (= (and d!514908 c!276053) b!1689284))

(assert (= (and d!514908 (not c!276053)) b!1689285))

(declare-fun m!2075735 () Bool)

(assert (=> b!1689282 m!2075735))

(declare-fun m!2075737 () Bool)

(assert (=> b!1689282 m!2075737))

(declare-fun m!2075739 () Bool)

(assert (=> b!1689282 m!2075739))

(declare-fun m!2075741 () Bool)

(assert (=> b!1689282 m!2075741))

(assert (=> b!1689282 m!2075739))

(declare-fun m!2075743 () Bool)

(assert (=> b!1689282 m!2075743))

(assert (=> b!1689282 m!2075735))

(assert (=> b!1689282 m!2075743))

(declare-fun m!2075745 () Bool)

(assert (=> b!1689284 m!2075745))

(declare-fun m!2075747 () Bool)

(assert (=> b!1689284 m!2075747))

(assert (=> b!1689284 m!2070335))

(assert (=> b!1689284 m!2070345))

(assert (=> b!1689284 m!2075629))

(assert (=> b!1689284 m!2075629))

(declare-fun m!2075749 () Bool)

(assert (=> b!1689284 m!2075749))

(declare-fun m!2075751 () Bool)

(assert (=> b!1689284 m!2075751))

(assert (=> b!1689284 m!2075743))

(assert (=> b!1689284 m!2075735))

(assert (=> b!1689284 m!2075743))

(assert (=> b!1689284 m!2075747))

(declare-fun m!2075753 () Bool)

(assert (=> b!1689284 m!2075753))

(assert (=> b!1689283 m!2075739))

(assert (=> b!1689283 m!2075739))

(assert (=> b!1689283 m!2075741))

(assert (=> d!514908 m!2075629))

(assert (=> d!514908 m!2075641))

(assert (=> d!514908 m!2070335))

(assert (=> d!514908 m!2070345))

(declare-fun m!2075755 () Bool)

(assert (=> d!514908 m!2075755))

(assert (=> d!514908 m!2075739))

(declare-fun m!2075757 () Bool)

(assert (=> d!514908 m!2075757))

(declare-fun m!2075759 () Bool)

(assert (=> d!514908 m!2075759))

(assert (=> d!514908 m!2070335))

(assert (=> d!514908 m!2070345))

(assert (=> d!514908 m!2075629))

(assert (=> d!514908 m!2070335))

(assert (=> d!514908 m!2070357))

(assert (=> d!514908 m!2075641))

(declare-fun m!2075761 () Bool)

(assert (=> d!514908 m!2075761))

(declare-fun m!2075763 () Bool)

(assert (=> d!514908 m!2075763))

(declare-fun m!2075765 () Bool)

(assert (=> d!514908 m!2075765))

(assert (=> d!514908 m!2070335))

(declare-fun m!2075767 () Bool)

(assert (=> d!514908 m!2075767))

(assert (=> d!514908 m!2075629))

(declare-fun m!2075769 () Bool)

(assert (=> d!514908 m!2075769))

(assert (=> d!514908 m!2069733))

(assert (=> d!514908 m!2070357))

(assert (=> d!514908 m!2070359))

(declare-fun m!2075771 () Bool)

(assert (=> d!514908 m!2075771))

(assert (=> d!514908 m!2070335))

(assert (=> d!514908 m!2075763))

(declare-fun m!2075773 () Bool)

(assert (=> d!514908 m!2075773))

(declare-fun m!2075775 () Bool)

(assert (=> d!514908 m!2075775))

(assert (=> d!514908 m!2075773))

(assert (=> d!514908 m!2075641))

(declare-fun m!2075777 () Bool)

(assert (=> d!514908 m!2075777))

(assert (=> d!514908 m!2075739))

(assert (=> d!514908 m!2075743))

(assert (=> d!514908 m!2075735))

(assert (=> d!514908 m!2075743))

(assert (=> d!514908 m!2075771))

(declare-fun m!2075779 () Bool)

(assert (=> d!514908 m!2075779))

(assert (=> b!1686730 d!514908))

(declare-fun d!514910 () Bool)

(assert (=> d!514910 (= (list!7431 (prepend!851 (seqFromList!2248 (t!154811 (t!154811 (t!154811 tokens!457)))) (h!23889 (t!154811 (t!154811 tokens!457))))) (list!7434 (c!275421 (prepend!851 (seqFromList!2248 (t!154811 (t!154811 (t!154811 tokens!457)))) (h!23889 (t!154811 (t!154811 tokens!457)))))))))

(declare-fun bs!399876 () Bool)

(assert (= bs!399876 d!514910))

(declare-fun m!2075781 () Bool)

(assert (=> bs!399876 m!2075781))

(assert (=> b!1686730 d!514910))

(declare-fun d!514912 () Bool)

(declare-fun e!1081345 () Bool)

(assert (=> d!514912 e!1081345))

(declare-fun res!757428 () Bool)

(assert (=> d!514912 (=> (not res!757428) (not e!1081345))))

(declare-fun lt!642874 () BalanceConc!12260)

(assert (=> d!514912 (= res!757428 (= (list!7432 lt!642874) (Cons!18485 (apply!5035 (charsOf!1904 (h!23889 (t!154811 (t!154811 tokens!457)))) 0) Nil!18485)))))

(assert (=> d!514912 (= lt!642874 (singleton!803 (apply!5035 (charsOf!1904 (h!23889 (t!154811 (t!154811 tokens!457)))) 0)))))

(assert (=> d!514912 (= (singletonSeq!1779 (apply!5035 (charsOf!1904 (h!23889 (t!154811 (t!154811 tokens!457)))) 0)) lt!642874)))

(declare-fun b!1689286 () Bool)

(assert (=> b!1689286 (= e!1081345 (isBalanced!1930 (c!275419 lt!642874)))))

(assert (= (and d!514912 res!757428) b!1689286))

(declare-fun m!2075783 () Bool)

(assert (=> d!514912 m!2075783))

(assert (=> d!514912 m!2070367))

(declare-fun m!2075785 () Bool)

(assert (=> d!514912 m!2075785))

(declare-fun m!2075787 () Bool)

(assert (=> b!1689286 m!2075787))

(assert (=> b!1686730 d!514912))

(declare-fun d!514914 () Bool)

(assert (=> d!514914 (= (isEmpty!11573 lt!641057) (not ((_ is Some!3567) lt!641057)))))

(assert (=> d!513648 d!514914))

(declare-fun b!1689289 () Bool)

(declare-fun e!1081347 () Bool)

(assert (=> b!1689289 (= e!1081347 (isPrefix!1513 (tail!2518 lt!640654) (tail!2518 lt!640654)))))

(declare-fun b!1689287 () Bool)

(declare-fun e!1081348 () Bool)

(assert (=> b!1689287 (= e!1081348 e!1081347)))

(declare-fun res!757430 () Bool)

(assert (=> b!1689287 (=> (not res!757430) (not e!1081347))))

(assert (=> b!1689287 (= res!757430 (not ((_ is Nil!18485) lt!640654)))))

(declare-fun d!514916 () Bool)

(declare-fun e!1081346 () Bool)

(assert (=> d!514916 e!1081346))

(declare-fun res!757431 () Bool)

(assert (=> d!514916 (=> res!757431 e!1081346)))

(declare-fun lt!642875 () Bool)

(assert (=> d!514916 (= res!757431 (not lt!642875))))

(assert (=> d!514916 (= lt!642875 e!1081348)))

(declare-fun res!757432 () Bool)

(assert (=> d!514916 (=> res!757432 e!1081348)))

(assert (=> d!514916 (= res!757432 ((_ is Nil!18485) lt!640654))))

(assert (=> d!514916 (= (isPrefix!1513 lt!640654 lt!640654) lt!642875)))

(declare-fun b!1689288 () Bool)

(declare-fun res!757429 () Bool)

(assert (=> b!1689288 (=> (not res!757429) (not e!1081347))))

(assert (=> b!1689288 (= res!757429 (= (head!3780 lt!640654) (head!3780 lt!640654)))))

(declare-fun b!1689290 () Bool)

(assert (=> b!1689290 (= e!1081346 (>= (size!14724 lt!640654) (size!14724 lt!640654)))))

(assert (= (and d!514916 (not res!757432)) b!1689287))

(assert (= (and b!1689287 res!757430) b!1689288))

(assert (= (and b!1689288 res!757429) b!1689289))

(assert (= (and d!514916 (not res!757431)) b!1689290))

(assert (=> b!1689289 m!2070405))

(assert (=> b!1689289 m!2070405))

(assert (=> b!1689289 m!2070405))

(assert (=> b!1689289 m!2070405))

(declare-fun m!2075789 () Bool)

(assert (=> b!1689289 m!2075789))

(assert (=> b!1689288 m!2070411))

(assert (=> b!1689288 m!2070411))

(assert (=> b!1689290 m!2070417))

(assert (=> b!1689290 m!2070417))

(assert (=> d!513648 d!514916))

(declare-fun d!514918 () Bool)

(assert (=> d!514918 (isPrefix!1513 lt!640654 lt!640654)))

(declare-fun lt!642876 () Unit!31839)

(assert (=> d!514918 (= lt!642876 (choose!10218 lt!640654 lt!640654))))

(assert (=> d!514918 (= (lemmaIsPrefixRefl!1030 lt!640654 lt!640654) lt!642876)))

(declare-fun bs!399877 () Bool)

(assert (= bs!399877 d!514918))

(assert (=> bs!399877 m!2070619))

(declare-fun m!2075791 () Bool)

(assert (=> bs!399877 m!2075791))

(assert (=> d!513648 d!514918))

(assert (=> d!513648 d!514364))

(declare-fun d!514920 () Bool)

(declare-fun lt!642877 () Int)

(assert (=> d!514920 (>= lt!642877 0)))

(declare-fun e!1081349 () Int)

(assert (=> d!514920 (= lt!642877 e!1081349)))

(declare-fun c!276054 () Bool)

(assert (=> d!514920 (= c!276054 ((_ is Nil!18485) (_2!10520 (get!5420 lt!641057))))))

(assert (=> d!514920 (= (size!14724 (_2!10520 (get!5420 lt!641057))) lt!642877)))

(declare-fun b!1689291 () Bool)

(assert (=> b!1689291 (= e!1081349 0)))

(declare-fun b!1689292 () Bool)

(assert (=> b!1689292 (= e!1081349 (+ 1 (size!14724 (t!154808 (_2!10520 (get!5420 lt!641057))))))))

(assert (= (and d!514920 c!276054) b!1689291))

(assert (= (and d!514920 (not c!276054)) b!1689292))

(declare-fun m!2075793 () Bool)

(assert (=> b!1689292 m!2075793))

(assert (=> b!1686846 d!514920))

(assert (=> b!1686846 d!514178))

(assert (=> b!1686846 d!514052))

(assert (=> b!1686870 d!514048))

(declare-fun b!1689295 () Bool)

(declare-fun res!757434 () Bool)

(declare-fun e!1081350 () Bool)

(assert (=> b!1689295 (=> (not res!757434) (not e!1081350))))

(declare-fun lt!642878 () List!18555)

(assert (=> b!1689295 (= res!757434 (= (size!14724 lt!642878) (+ (size!14724 (list!7432 (charsOf!1904 (h!23889 (Cons!18488 (h!23889 tokens!457) Nil!18488))))) (size!14724 (printList!997 thiss!17113 (t!154811 (Cons!18488 (h!23889 tokens!457) Nil!18488)))))))))

(declare-fun d!514922 () Bool)

(assert (=> d!514922 e!1081350))

(declare-fun res!757433 () Bool)

(assert (=> d!514922 (=> (not res!757433) (not e!1081350))))

(assert (=> d!514922 (= res!757433 (= (content!2605 lt!642878) ((_ map or) (content!2605 (list!7432 (charsOf!1904 (h!23889 (Cons!18488 (h!23889 tokens!457) Nil!18488))))) (content!2605 (printList!997 thiss!17113 (t!154811 (Cons!18488 (h!23889 tokens!457) Nil!18488)))))))))

(declare-fun e!1081351 () List!18555)

(assert (=> d!514922 (= lt!642878 e!1081351)))

(declare-fun c!276055 () Bool)

(assert (=> d!514922 (= c!276055 ((_ is Nil!18485) (list!7432 (charsOf!1904 (h!23889 (Cons!18488 (h!23889 tokens!457) Nil!18488))))))))

(assert (=> d!514922 (= (++!5065 (list!7432 (charsOf!1904 (h!23889 (Cons!18488 (h!23889 tokens!457) Nil!18488)))) (printList!997 thiss!17113 (t!154811 (Cons!18488 (h!23889 tokens!457) Nil!18488)))) lt!642878)))

(declare-fun b!1689294 () Bool)

(assert (=> b!1689294 (= e!1081351 (Cons!18485 (h!23886 (list!7432 (charsOf!1904 (h!23889 (Cons!18488 (h!23889 tokens!457) Nil!18488))))) (++!5065 (t!154808 (list!7432 (charsOf!1904 (h!23889 (Cons!18488 (h!23889 tokens!457) Nil!18488))))) (printList!997 thiss!17113 (t!154811 (Cons!18488 (h!23889 tokens!457) Nil!18488))))))))

(declare-fun b!1689296 () Bool)

(assert (=> b!1689296 (= e!1081350 (or (not (= (printList!997 thiss!17113 (t!154811 (Cons!18488 (h!23889 tokens!457) Nil!18488))) Nil!18485)) (= lt!642878 (list!7432 (charsOf!1904 (h!23889 (Cons!18488 (h!23889 tokens!457) Nil!18488)))))))))

(declare-fun b!1689293 () Bool)

(assert (=> b!1689293 (= e!1081351 (printList!997 thiss!17113 (t!154811 (Cons!18488 (h!23889 tokens!457) Nil!18488))))))

(assert (= (and d!514922 c!276055) b!1689293))

(assert (= (and d!514922 (not c!276055)) b!1689294))

(assert (= (and d!514922 res!757433) b!1689295))

(assert (= (and b!1689295 res!757434) b!1689296))

(declare-fun m!2075795 () Bool)

(assert (=> b!1689295 m!2075795))

(assert (=> b!1689295 m!2070765))

(declare-fun m!2075797 () Bool)

(assert (=> b!1689295 m!2075797))

(assert (=> b!1689295 m!2070767))

(declare-fun m!2075799 () Bool)

(assert (=> b!1689295 m!2075799))

(declare-fun m!2075801 () Bool)

(assert (=> d!514922 m!2075801))

(assert (=> d!514922 m!2070765))

(declare-fun m!2075803 () Bool)

(assert (=> d!514922 m!2075803))

(assert (=> d!514922 m!2070767))

(declare-fun m!2075805 () Bool)

(assert (=> d!514922 m!2075805))

(assert (=> b!1689294 m!2070767))

(declare-fun m!2075807 () Bool)

(assert (=> b!1689294 m!2075807))

(assert (=> b!1686902 d!514922))

(declare-fun d!514924 () Bool)

(assert (=> d!514924 (= (list!7432 (charsOf!1904 (h!23889 (Cons!18488 (h!23889 tokens!457) Nil!18488)))) (list!7436 (c!275419 (charsOf!1904 (h!23889 (Cons!18488 (h!23889 tokens!457) Nil!18488))))))))

(declare-fun bs!399878 () Bool)

(assert (= bs!399878 d!514924))

(declare-fun m!2075809 () Bool)

(assert (=> bs!399878 m!2075809))

(assert (=> b!1686902 d!514924))

(declare-fun d!514926 () Bool)

(declare-fun lt!642879 () BalanceConc!12260)

(assert (=> d!514926 (= (list!7432 lt!642879) (originalCharacters!4069 (h!23889 (Cons!18488 (h!23889 tokens!457) Nil!18488))))))

(assert (=> d!514926 (= lt!642879 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (Cons!18488 (h!23889 tokens!457) Nil!18488))))) (value!102440 (h!23889 (Cons!18488 (h!23889 tokens!457) Nil!18488)))))))

(assert (=> d!514926 (= (charsOf!1904 (h!23889 (Cons!18488 (h!23889 tokens!457) Nil!18488))) lt!642879)))

(declare-fun b_lambda!53113 () Bool)

(assert (=> (not b_lambda!53113) (not d!514926)))

(declare-fun t!155079 () Bool)

(declare-fun tb!98063 () Bool)

(assert (=> (and b!1686461 (= (toChars!4593 (transformation!3255 (h!23888 rules!1846))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (Cons!18488 (h!23889 tokens!457) Nil!18488)))))) t!155079) tb!98063))

(declare-fun b!1689297 () Bool)

(declare-fun e!1081352 () Bool)

(declare-fun tp!484527 () Bool)

(assert (=> b!1689297 (= e!1081352 (and (inv!23853 (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (Cons!18488 (h!23889 tokens!457) Nil!18488))))) (value!102440 (h!23889 (Cons!18488 (h!23889 tokens!457) Nil!18488)))))) tp!484527))))

(declare-fun result!118172 () Bool)

(assert (=> tb!98063 (= result!118172 (and (inv!23854 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (Cons!18488 (h!23889 tokens!457) Nil!18488))))) (value!102440 (h!23889 (Cons!18488 (h!23889 tokens!457) Nil!18488))))) e!1081352))))

(assert (= tb!98063 b!1689297))

(declare-fun m!2075811 () Bool)

(assert (=> b!1689297 m!2075811))

(declare-fun m!2075813 () Bool)

(assert (=> tb!98063 m!2075813))

(assert (=> d!514926 t!155079))

(declare-fun b_and!120749 () Bool)

(assert (= b_and!120717 (and (=> t!155079 result!118172) b_and!120749)))

(declare-fun t!155081 () Bool)

(declare-fun tb!98065 () Bool)

(assert (=> (and b!1686468 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (Cons!18488 (h!23889 tokens!457) Nil!18488)))))) t!155081) tb!98065))

(declare-fun result!118174 () Bool)

(assert (= result!118174 result!118172))

(assert (=> d!514926 t!155081))

(declare-fun b_and!120751 () Bool)

(assert (= b_and!120719 (and (=> t!155081 result!118174) b_and!120751)))

(declare-fun t!155083 () Bool)

(declare-fun tb!98067 () Bool)

(assert (=> (and b!1687068 (= (toChars!4593 (transformation!3255 (h!23888 (t!154810 rules!1846)))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (Cons!18488 (h!23889 tokens!457) Nil!18488)))))) t!155083) tb!98067))

(declare-fun result!118176 () Bool)

(assert (= result!118176 result!118172))

(assert (=> d!514926 t!155083))

(declare-fun b_and!120753 () Bool)

(assert (= b_and!120721 (and (=> t!155083 result!118176) b_and!120753)))

(declare-fun t!155085 () Bool)

(declare-fun tb!98069 () Bool)

(assert (=> (and b!1687082 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (Cons!18488 (h!23889 tokens!457) Nil!18488)))))) t!155085) tb!98069))

(declare-fun result!118178 () Bool)

(assert (= result!118178 result!118172))

(assert (=> d!514926 t!155085))

(declare-fun b_and!120755 () Bool)

(assert (= b_and!120723 (and (=> t!155085 result!118178) b_and!120755)))

(declare-fun m!2075815 () Bool)

(assert (=> d!514926 m!2075815))

(declare-fun m!2075817 () Bool)

(assert (=> d!514926 m!2075817))

(assert (=> b!1686902 d!514926))

(declare-fun d!514928 () Bool)

(declare-fun c!276056 () Bool)

(assert (=> d!514928 (= c!276056 ((_ is Cons!18488) (t!154811 (Cons!18488 (h!23889 tokens!457) Nil!18488))))))

(declare-fun e!1081353 () List!18555)

(assert (=> d!514928 (= (printList!997 thiss!17113 (t!154811 (Cons!18488 (h!23889 tokens!457) Nil!18488))) e!1081353)))

(declare-fun b!1689298 () Bool)

(assert (=> b!1689298 (= e!1081353 (++!5065 (list!7432 (charsOf!1904 (h!23889 (t!154811 (Cons!18488 (h!23889 tokens!457) Nil!18488))))) (printList!997 thiss!17113 (t!154811 (t!154811 (Cons!18488 (h!23889 tokens!457) Nil!18488))))))))

(declare-fun b!1689299 () Bool)

(assert (=> b!1689299 (= e!1081353 Nil!18485)))

(assert (= (and d!514928 c!276056) b!1689298))

(assert (= (and d!514928 (not c!276056)) b!1689299))

(declare-fun m!2075819 () Bool)

(assert (=> b!1689298 m!2075819))

(assert (=> b!1689298 m!2075819))

(declare-fun m!2075821 () Bool)

(assert (=> b!1689298 m!2075821))

(declare-fun m!2075823 () Bool)

(assert (=> b!1689298 m!2075823))

(assert (=> b!1689298 m!2075821))

(assert (=> b!1689298 m!2075823))

(declare-fun m!2075825 () Bool)

(assert (=> b!1689298 m!2075825))

(assert (=> b!1686902 d!514928))

(declare-fun d!514930 () Bool)

(assert (=> d!514930 (= (inv!23846 (tag!3545 (rule!5161 (h!23889 (t!154811 tokens!457))))) (= (mod (str.len (value!102439 (tag!3545 (rule!5161 (h!23889 (t!154811 tokens!457)))))) 2) 0))))

(assert (=> b!1687081 d!514930))

(declare-fun d!514932 () Bool)

(declare-fun res!757435 () Bool)

(declare-fun e!1081354 () Bool)

(assert (=> d!514932 (=> (not res!757435) (not e!1081354))))

(assert (=> d!514932 (= res!757435 (semiInverseModEq!1278 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (toValue!4734 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457)))))))))

(assert (=> d!514932 (= (inv!23849 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) e!1081354)))

(declare-fun b!1689300 () Bool)

(assert (=> b!1689300 (= e!1081354 (equivClasses!1219 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (toValue!4734 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457)))))))))

(assert (= (and d!514932 res!757435) b!1689300))

(declare-fun m!2075827 () Bool)

(assert (=> d!514932 m!2075827))

(declare-fun m!2075829 () Bool)

(assert (=> b!1689300 m!2075829))

(assert (=> b!1687081 d!514932))

(declare-fun d!514934 () Bool)

(assert (=> d!514934 (= (list!7432 lt!641225) (list!7436 (c!275419 lt!641225)))))

(declare-fun bs!399879 () Bool)

(assert (= bs!399879 d!514934))

(declare-fun m!2075831 () Bool)

(assert (=> bs!399879 m!2075831))

(assert (=> d!513738 d!514934))

(assert (=> b!1686880 d!514280))

(declare-fun d!514936 () Bool)

(assert (=> d!514936 (= (apply!5039 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641105)))) (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!641105))))) (dynLambda!8390 (toValue!4734 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641105))))) (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!641105))))))))

(declare-fun b_lambda!53115 () Bool)

(assert (=> (not b_lambda!53115) (not d!514936)))

(declare-fun tb!98071 () Bool)

(declare-fun t!155087 () Bool)

(assert (=> (and b!1686461 (= (toValue!4734 (transformation!3255 (h!23888 rules!1846))) (toValue!4734 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641105)))))) t!155087) tb!98071))

(declare-fun result!118180 () Bool)

(assert (=> tb!98071 (= result!118180 (inv!21 (dynLambda!8390 (toValue!4734 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641105))))) (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!641105)))))))))

(declare-fun m!2075833 () Bool)

(assert (=> tb!98071 m!2075833))

(assert (=> d!514936 t!155087))

(declare-fun b_and!120757 () Bool)

(assert (= b_and!120677 (and (=> t!155087 result!118180) b_and!120757)))

(declare-fun tb!98073 () Bool)

(declare-fun t!155089 () Bool)

(assert (=> (and b!1686468 (= (toValue!4734 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (toValue!4734 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641105)))))) t!155089) tb!98073))

(declare-fun result!118182 () Bool)

(assert (= result!118182 result!118180))

(assert (=> d!514936 t!155089))

(declare-fun b_and!120759 () Bool)

(assert (= b_and!120679 (and (=> t!155089 result!118182) b_and!120759)))

(declare-fun t!155091 () Bool)

(declare-fun tb!98075 () Bool)

(assert (=> (and b!1687068 (= (toValue!4734 (transformation!3255 (h!23888 (t!154810 rules!1846)))) (toValue!4734 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641105)))))) t!155091) tb!98075))

(declare-fun result!118184 () Bool)

(assert (= result!118184 result!118180))

(assert (=> d!514936 t!155091))

(declare-fun b_and!120761 () Bool)

(assert (= b_and!120681 (and (=> t!155091 result!118184) b_and!120761)))

(declare-fun t!155093 () Bool)

(declare-fun tb!98077 () Bool)

(assert (=> (and b!1687082 (= (toValue!4734 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (toValue!4734 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641105)))))) t!155093) tb!98077))

(declare-fun result!118186 () Bool)

(assert (= result!118186 result!118180))

(assert (=> d!514936 t!155093))

(declare-fun b_and!120763 () Bool)

(assert (= b_and!120683 (and (=> t!155093 result!118186) b_and!120763)))

(assert (=> d!514936 m!2070709))

(declare-fun m!2075835 () Bool)

(assert (=> d!514936 m!2075835))

(assert (=> b!1686880 d!514936))

(declare-fun d!514938 () Bool)

(assert (=> d!514938 (= (seqFromList!2247 (originalCharacters!4069 (_1!10520 (get!5420 lt!641105)))) (fromListB!1029 (originalCharacters!4069 (_1!10520 (get!5420 lt!641105)))))))

(declare-fun bs!399880 () Bool)

(assert (= bs!399880 d!514938))

(declare-fun m!2075837 () Bool)

(assert (=> bs!399880 m!2075837))

(assert (=> b!1686880 d!514938))

(declare-fun bs!399881 () Bool)

(declare-fun d!514940 () Bool)

(assert (= bs!399881 (and d!514940 d!514004)))

(declare-fun lambda!68402 () Int)

(assert (=> bs!399881 (= (and (= (toChars!4593 (transformation!3255 (h!23888 rules!1846))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457))))) (= (toValue!4734 (transformation!3255 (h!23888 rules!1846))) (toValue!4734 (transformation!3255 (rule!5161 (h!23889 tokens!457)))))) (= lambda!68402 lambda!68354))))

(declare-fun bs!399882 () Bool)

(assert (= bs!399882 (and d!514940 b!1688687)))

(assert (=> bs!399882 (= lambda!68402 lambda!68399)))

(assert (=> d!514940 true))

(assert (=> d!514940 (< (dynLambda!8381 order!11149 (toChars!4593 (transformation!3255 (h!23888 rules!1846)))) (dynLambda!8388 order!11161 lambda!68402))))

(assert (=> d!514940 true))

(assert (=> d!514940 (< (dynLambda!8379 order!11145 (toValue!4734 (transformation!3255 (h!23888 rules!1846)))) (dynLambda!8388 order!11161 lambda!68402))))

(assert (=> d!514940 (= (semiInverseModEq!1278 (toChars!4593 (transformation!3255 (h!23888 rules!1846))) (toValue!4734 (transformation!3255 (h!23888 rules!1846)))) (Forall!669 lambda!68402))))

(declare-fun bs!399883 () Bool)

(assert (= bs!399883 d!514940))

(declare-fun m!2075839 () Bool)

(assert (=> bs!399883 m!2075839))

(assert (=> d!513626 d!514940))

(declare-fun b!1689304 () Bool)

(declare-fun e!1081357 () List!18558)

(assert (=> b!1689304 (= e!1081357 (++!5070 (list!7434 (left!14776 (c!275421 (prepend!851 (seqFromList!2248 (t!154811 (t!154811 tokens!457))) (h!23889 (t!154811 tokens!457)))))) (list!7434 (right!15106 (c!275421 (prepend!851 (seqFromList!2248 (t!154811 (t!154811 tokens!457))) (h!23889 (t!154811 tokens!457))))))))))

(declare-fun b!1689301 () Bool)

(declare-fun e!1081356 () List!18558)

(assert (=> b!1689301 (= e!1081356 Nil!18488)))

(declare-fun b!1689302 () Bool)

(assert (=> b!1689302 (= e!1081356 e!1081357)))

(declare-fun c!276058 () Bool)

(assert (=> b!1689302 (= c!276058 ((_ is Leaf!9007) (c!275421 (prepend!851 (seqFromList!2248 (t!154811 (t!154811 tokens!457))) (h!23889 (t!154811 tokens!457))))))))

(declare-fun d!514942 () Bool)

(declare-fun c!276057 () Bool)

(assert (=> d!514942 (= c!276057 ((_ is Empty!6159) (c!275421 (prepend!851 (seqFromList!2248 (t!154811 (t!154811 tokens!457))) (h!23889 (t!154811 tokens!457))))))))

(assert (=> d!514942 (= (list!7434 (c!275421 (prepend!851 (seqFromList!2248 (t!154811 (t!154811 tokens!457))) (h!23889 (t!154811 tokens!457))))) e!1081356)))

(declare-fun b!1689303 () Bool)

(assert (=> b!1689303 (= e!1081357 (list!7440 (xs!9019 (c!275421 (prepend!851 (seqFromList!2248 (t!154811 (t!154811 tokens!457))) (h!23889 (t!154811 tokens!457)))))))))

(assert (= (and d!514942 c!276057) b!1689301))

(assert (= (and d!514942 (not c!276057)) b!1689302))

(assert (= (and b!1689302 c!276058) b!1689303))

(assert (= (and b!1689302 (not c!276058)) b!1689304))

(declare-fun m!2075841 () Bool)

(assert (=> b!1689304 m!2075841))

(declare-fun m!2075843 () Bool)

(assert (=> b!1689304 m!2075843))

(assert (=> b!1689304 m!2075841))

(assert (=> b!1689304 m!2075843))

(declare-fun m!2075845 () Bool)

(assert (=> b!1689304 m!2075845))

(declare-fun m!2075847 () Bool)

(assert (=> b!1689303 m!2075847))

(assert (=> d!513616 d!514942))

(declare-fun b!1689307 () Bool)

(declare-fun res!757437 () Bool)

(declare-fun e!1081358 () Bool)

(assert (=> b!1689307 (=> (not res!757437) (not e!1081358))))

(declare-fun lt!642880 () List!18555)

(assert (=> b!1689307 (= res!757437 (= (size!14724 lt!642880) (+ (size!14724 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641057))))) (size!14724 (_2!10520 (get!5420 lt!641057))))))))

(declare-fun d!514944 () Bool)

(assert (=> d!514944 e!1081358))

(declare-fun res!757436 () Bool)

(assert (=> d!514944 (=> (not res!757436) (not e!1081358))))

(assert (=> d!514944 (= res!757436 (= (content!2605 lt!642880) ((_ map or) (content!2605 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641057))))) (content!2605 (_2!10520 (get!5420 lt!641057))))))))

(declare-fun e!1081359 () List!18555)

(assert (=> d!514944 (= lt!642880 e!1081359)))

(declare-fun c!276059 () Bool)

(assert (=> d!514944 (= c!276059 ((_ is Nil!18485) (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641057))))))))

(assert (=> d!514944 (= (++!5065 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641057)))) (_2!10520 (get!5420 lt!641057))) lt!642880)))

(declare-fun b!1689306 () Bool)

(assert (=> b!1689306 (= e!1081359 (Cons!18485 (h!23886 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641057))))) (++!5065 (t!154808 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641057))))) (_2!10520 (get!5420 lt!641057)))))))

(declare-fun b!1689308 () Bool)

(assert (=> b!1689308 (= e!1081358 (or (not (= (_2!10520 (get!5420 lt!641057)) Nil!18485)) (= lt!642880 (list!7432 (charsOf!1904 (_1!10520 (get!5420 lt!641057)))))))))

(declare-fun b!1689305 () Bool)

(assert (=> b!1689305 (= e!1081359 (_2!10520 (get!5420 lt!641057)))))

(assert (= (and d!514944 c!276059) b!1689305))

(assert (= (and d!514944 (not c!276059)) b!1689306))

(assert (= (and d!514944 res!757436) b!1689307))

(assert (= (and b!1689307 res!757437) b!1689308))

(declare-fun m!2075849 () Bool)

(assert (=> b!1689307 m!2075849))

(assert (=> b!1689307 m!2070597))

(declare-fun m!2075851 () Bool)

(assert (=> b!1689307 m!2075851))

(assert (=> b!1689307 m!2070613))

(declare-fun m!2075853 () Bool)

(assert (=> d!514944 m!2075853))

(assert (=> d!514944 m!2070597))

(declare-fun m!2075855 () Bool)

(assert (=> d!514944 m!2075855))

(declare-fun m!2075857 () Bool)

(assert (=> d!514944 m!2075857))

(declare-fun m!2075859 () Bool)

(assert (=> b!1689306 m!2075859))

(assert (=> b!1686849 d!514944))

(assert (=> b!1686849 d!514472))

(assert (=> b!1686849 d!514474))

(assert (=> b!1686849 d!514178))

(declare-fun b!1689310 () Bool)

(declare-fun e!1081360 () Bool)

(declare-fun tp!484531 () Bool)

(declare-fun tp!484530 () Bool)

(assert (=> b!1689310 (= e!1081360 (and tp!484531 tp!484530))))

(declare-fun b!1689311 () Bool)

(declare-fun tp!484528 () Bool)

(assert (=> b!1689311 (= e!1081360 tp!484528)))

(declare-fun b!1689309 () Bool)

(assert (=> b!1689309 (= e!1081360 tp_is_empty!7437)))

(assert (=> b!1687048 (= tp!484392 e!1081360)))

(declare-fun b!1689312 () Bool)

(declare-fun tp!484529 () Bool)

(declare-fun tp!484532 () Bool)

(assert (=> b!1689312 (= e!1081360 (and tp!484529 tp!484532))))

(assert (= (and b!1687048 ((_ is ElementMatch!4583) (regOne!9679 (regex!3255 (rule!5161 (h!23889 tokens!457)))))) b!1689309))

(assert (= (and b!1687048 ((_ is Concat!7929) (regOne!9679 (regex!3255 (rule!5161 (h!23889 tokens!457)))))) b!1689310))

(assert (= (and b!1687048 ((_ is Star!4583) (regOne!9679 (regex!3255 (rule!5161 (h!23889 tokens!457)))))) b!1689311))

(assert (= (and b!1687048 ((_ is Union!4583) (regOne!9679 (regex!3255 (rule!5161 (h!23889 tokens!457)))))) b!1689312))

(declare-fun b!1689314 () Bool)

(declare-fun e!1081361 () Bool)

(declare-fun tp!484536 () Bool)

(declare-fun tp!484535 () Bool)

(assert (=> b!1689314 (= e!1081361 (and tp!484536 tp!484535))))

(declare-fun b!1689315 () Bool)

(declare-fun tp!484533 () Bool)

(assert (=> b!1689315 (= e!1081361 tp!484533)))

(declare-fun b!1689313 () Bool)

(assert (=> b!1689313 (= e!1081361 tp_is_empty!7437)))

(assert (=> b!1687048 (= tp!484395 e!1081361)))

(declare-fun b!1689316 () Bool)

(declare-fun tp!484534 () Bool)

(declare-fun tp!484537 () Bool)

(assert (=> b!1689316 (= e!1081361 (and tp!484534 tp!484537))))

(assert (= (and b!1687048 ((_ is ElementMatch!4583) (regTwo!9679 (regex!3255 (rule!5161 (h!23889 tokens!457)))))) b!1689313))

(assert (= (and b!1687048 ((_ is Concat!7929) (regTwo!9679 (regex!3255 (rule!5161 (h!23889 tokens!457)))))) b!1689314))

(assert (= (and b!1687048 ((_ is Star!4583) (regTwo!9679 (regex!3255 (rule!5161 (h!23889 tokens!457)))))) b!1689315))

(assert (= (and b!1687048 ((_ is Union!4583) (regTwo!9679 (regex!3255 (rule!5161 (h!23889 tokens!457)))))) b!1689316))

(declare-fun b!1689318 () Bool)

(declare-fun e!1081362 () Bool)

(declare-fun tp!484541 () Bool)

(declare-fun tp!484540 () Bool)

(assert (=> b!1689318 (= e!1081362 (and tp!484541 tp!484540))))

(declare-fun b!1689319 () Bool)

(declare-fun tp!484538 () Bool)

(assert (=> b!1689319 (= e!1081362 tp!484538)))

(declare-fun b!1689317 () Bool)

(assert (=> b!1689317 (= e!1081362 tp_is_empty!7437)))

(assert (=> b!1687047 (= tp!484391 e!1081362)))

(declare-fun b!1689320 () Bool)

(declare-fun tp!484539 () Bool)

(declare-fun tp!484542 () Bool)

(assert (=> b!1689320 (= e!1081362 (and tp!484539 tp!484542))))

(assert (= (and b!1687047 ((_ is ElementMatch!4583) (reg!4912 (regex!3255 (rule!5161 (h!23889 tokens!457)))))) b!1689317))

(assert (= (and b!1687047 ((_ is Concat!7929) (reg!4912 (regex!3255 (rule!5161 (h!23889 tokens!457)))))) b!1689318))

(assert (= (and b!1687047 ((_ is Star!4583) (reg!4912 (regex!3255 (rule!5161 (h!23889 tokens!457)))))) b!1689319))

(assert (= (and b!1687047 ((_ is Union!4583) (reg!4912 (regex!3255 (rule!5161 (h!23889 tokens!457)))))) b!1689320))

(declare-fun b!1689322 () Bool)

(declare-fun e!1081363 () Bool)

(declare-fun tp!484546 () Bool)

(declare-fun tp!484545 () Bool)

(assert (=> b!1689322 (= e!1081363 (and tp!484546 tp!484545))))

(declare-fun b!1689323 () Bool)

(declare-fun tp!484543 () Bool)

(assert (=> b!1689323 (= e!1081363 tp!484543)))

(declare-fun b!1689321 () Bool)

(assert (=> b!1689321 (= e!1081363 tp_is_empty!7437)))

(assert (=> b!1687067 (= tp!484414 e!1081363)))

(declare-fun b!1689324 () Bool)

(declare-fun tp!484544 () Bool)

(declare-fun tp!484547 () Bool)

(assert (=> b!1689324 (= e!1081363 (and tp!484544 tp!484547))))

(assert (= (and b!1687067 ((_ is ElementMatch!4583) (regex!3255 (h!23888 (t!154810 rules!1846))))) b!1689321))

(assert (= (and b!1687067 ((_ is Concat!7929) (regex!3255 (h!23888 (t!154810 rules!1846))))) b!1689322))

(assert (= (and b!1687067 ((_ is Star!4583) (regex!3255 (h!23888 (t!154810 rules!1846))))) b!1689323))

(assert (= (and b!1687067 ((_ is Union!4583) (regex!3255 (h!23888 (t!154810 rules!1846))))) b!1689324))

(declare-fun b!1689326 () Bool)

(declare-fun e!1081364 () Bool)

(declare-fun tp!484551 () Bool)

(declare-fun tp!484550 () Bool)

(assert (=> b!1689326 (= e!1081364 (and tp!484551 tp!484550))))

(declare-fun b!1689327 () Bool)

(declare-fun tp!484548 () Bool)

(assert (=> b!1689327 (= e!1081364 tp!484548)))

(declare-fun b!1689325 () Bool)

(assert (=> b!1689325 (= e!1081364 tp_is_empty!7437)))

(assert (=> b!1687046 (= tp!484394 e!1081364)))

(declare-fun b!1689328 () Bool)

(declare-fun tp!484549 () Bool)

(declare-fun tp!484552 () Bool)

(assert (=> b!1689328 (= e!1081364 (and tp!484549 tp!484552))))

(assert (= (and b!1687046 ((_ is ElementMatch!4583) (regOne!9678 (regex!3255 (rule!5161 (h!23889 tokens!457)))))) b!1689325))

(assert (= (and b!1687046 ((_ is Concat!7929) (regOne!9678 (regex!3255 (rule!5161 (h!23889 tokens!457)))))) b!1689326))

(assert (= (and b!1687046 ((_ is Star!4583) (regOne!9678 (regex!3255 (rule!5161 (h!23889 tokens!457)))))) b!1689327))

(assert (= (and b!1687046 ((_ is Union!4583) (regOne!9678 (regex!3255 (rule!5161 (h!23889 tokens!457)))))) b!1689328))

(declare-fun b!1689330 () Bool)

(declare-fun e!1081365 () Bool)

(declare-fun tp!484556 () Bool)

(declare-fun tp!484555 () Bool)

(assert (=> b!1689330 (= e!1081365 (and tp!484556 tp!484555))))

(declare-fun b!1689331 () Bool)

(declare-fun tp!484553 () Bool)

(assert (=> b!1689331 (= e!1081365 tp!484553)))

(declare-fun b!1689329 () Bool)

(assert (=> b!1689329 (= e!1081365 tp_is_empty!7437)))

(assert (=> b!1687046 (= tp!484393 e!1081365)))

(declare-fun b!1689332 () Bool)

(declare-fun tp!484554 () Bool)

(declare-fun tp!484557 () Bool)

(assert (=> b!1689332 (= e!1081365 (and tp!484554 tp!484557))))

(assert (= (and b!1687046 ((_ is ElementMatch!4583) (regTwo!9678 (regex!3255 (rule!5161 (h!23889 tokens!457)))))) b!1689329))

(assert (= (and b!1687046 ((_ is Concat!7929) (regTwo!9678 (regex!3255 (rule!5161 (h!23889 tokens!457)))))) b!1689330))

(assert (= (and b!1687046 ((_ is Star!4583) (regTwo!9678 (regex!3255 (rule!5161 (h!23889 tokens!457)))))) b!1689331))

(assert (= (and b!1687046 ((_ is Union!4583) (regTwo!9678 (regex!3255 (rule!5161 (h!23889 tokens!457)))))) b!1689332))

(declare-fun b!1689335 () Bool)

(declare-fun b_free!45687 () Bool)

(declare-fun b_next!46391 () Bool)

(assert (=> b!1689335 (= b_free!45687 (not b_next!46391))))

(declare-fun tb!98079 () Bool)

(declare-fun t!155095 () Bool)

(assert (=> (and b!1689335 (= (toValue!4734 (transformation!3255 (h!23888 (t!154810 (t!154810 rules!1846))))) (toValue!4734 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641057)))))) t!155095) tb!98079))

(declare-fun result!118188 () Bool)

(assert (= result!118188 result!118056))

(assert (=> d!514180 t!155095))

(declare-fun tb!98081 () Bool)

(declare-fun t!155097 () Bool)

(assert (=> (and b!1689335 (= (toValue!4734 (transformation!3255 (h!23888 (t!154810 (t!154810 rules!1846))))) (toValue!4734 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641052)))))) t!155097) tb!98081))

(declare-fun result!118190 () Bool)

(assert (= result!118190 result!118074))

(assert (=> d!514340 t!155097))

(declare-fun tb!98083 () Bool)

(declare-fun t!155099 () Bool)

(assert (=> (and b!1689335 (= (toValue!4734 (transformation!3255 (h!23888 (t!154810 (t!154810 rules!1846))))) (toValue!4734 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641105)))))) t!155099) tb!98083))

(declare-fun result!118192 () Bool)

(assert (= result!118192 result!118180))

(assert (=> d!514936 t!155099))

(declare-fun b_and!120765 () Bool)

(declare-fun tp!484559 () Bool)

(assert (=> b!1689335 (= tp!484559 (and (=> t!155095 result!118188) (=> t!155097 result!118190) (=> t!155099 result!118192) b_and!120765))))

(declare-fun b_free!45689 () Bool)

(declare-fun b_next!46393 () Bool)

(assert (=> b!1689335 (= b_free!45689 (not b_next!46393))))

(declare-fun t!155101 () Bool)

(declare-fun tb!98085 () Bool)

(assert (=> (and b!1689335 (= (toChars!4593 (transformation!3255 (h!23888 (t!154810 (t!154810 rules!1846))))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (Cons!18488 (h!23889 tokens!457) Nil!18488)))))) t!155101) tb!98085))

(declare-fun result!118194 () Bool)

(assert (= result!118194 result!118172))

(assert (=> d!514926 t!155101))

(declare-fun tb!98087 () Bool)

(declare-fun t!155103 () Bool)

(assert (=> (and b!1689335 (= (toChars!4593 (transformation!3255 (h!23888 (t!154810 (t!154810 rules!1846))))) (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641052)))))) t!155103) tb!98087))

(declare-fun result!118196 () Bool)

(assert (= result!118196 result!118048))

(assert (=> d!514102 t!155103))

(declare-fun t!155105 () Bool)

(declare-fun tb!98089 () Bool)

(assert (=> (and b!1689335 (= (toChars!4593 (transformation!3255 (h!23888 (t!154810 (t!154810 rules!1846))))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457)))))) t!155105) tb!98089))

(declare-fun result!118198 () Bool)

(assert (= result!118198 result!117954))

(assert (=> b!1688517 t!155105))

(assert (=> d!513738 t!155105))

(declare-fun t!155107 () Bool)

(declare-fun tb!98091 () Bool)

(assert (=> (and b!1689335 (= (toChars!4593 (transformation!3255 (h!23888 (t!154810 (t!154810 rules!1846))))) (toChars!4593 (transformation!3255 (rule!5161 (apply!5040 lt!640650 0))))) t!155107) tb!98091))

(declare-fun result!118200 () Bool)

(assert (= result!118200 result!118024))

(assert (=> d!513964 t!155107))

(declare-fun tb!98093 () Bool)

(declare-fun t!155109 () Bool)

(assert (=> (and b!1689335 (= (toChars!4593 (transformation!3255 (h!23888 (t!154810 (t!154810 rules!1846))))) (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641057)))))) t!155109) tb!98093))

(declare-fun result!118202 () Bool)

(assert (= result!118202 result!118090))

(assert (=> d!514474 t!155109))

(declare-fun tb!98095 () Bool)

(declare-fun t!155111 () Bool)

(assert (=> (and b!1689335 (= (toChars!4593 (transformation!3255 (h!23888 (t!154810 (t!154810 rules!1846))))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457))))) t!155111) tb!98095))

(declare-fun result!118204 () Bool)

(assert (= result!118204 result!117932))

(assert (=> d!513686 t!155111))

(declare-fun t!155113 () Bool)

(declare-fun tb!98097 () Bool)

(assert (=> (and b!1689335 (= (toChars!4593 (transformation!3255 (h!23888 (t!154810 (t!154810 rules!1846))))) (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641105)))))) t!155113) tb!98097))

(declare-fun result!118206 () Bool)

(assert (= result!118206 result!118066))

(assert (=> d!514288 t!155113))

(assert (=> b!1686869 t!155111))

(declare-fun tb!98099 () Bool)

(declare-fun t!155115 () Bool)

(assert (=> (and b!1689335 (= (toChars!4593 (transformation!3255 (h!23888 (t!154810 (t!154810 rules!1846))))) (toChars!4593 (transformation!3255 (rule!5161 lt!641264)))) t!155115) tb!98099))

(declare-fun result!118208 () Bool)

(assert (= result!118208 result!118040))

(assert (=> d!514096 t!155115))

(declare-fun tb!98101 () Bool)

(declare-fun t!155117 () Bool)

(assert (=> (and b!1689335 (= (toChars!4593 (transformation!3255 (h!23888 (t!154810 (t!154810 rules!1846))))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457))))))) t!155117) tb!98101))

(declare-fun result!118210 () Bool)

(assert (= result!118210 result!118098))

(assert (=> d!514722 t!155117))

(declare-fun b_and!120767 () Bool)

(declare-fun tp!484558 () Bool)

(assert (=> b!1689335 (= tp!484558 (and (=> t!155109 result!118202) (=> t!155115 result!118208) (=> t!155117 result!118210) (=> t!155105 result!118198) (=> t!155101 result!118194) (=> t!155103 result!118196) (=> t!155107 result!118200) (=> t!155113 result!118206) (=> t!155111 result!118204) b_and!120767))))

(declare-fun e!1081368 () Bool)

(assert (=> b!1689335 (= e!1081368 (and tp!484559 tp!484558))))

(declare-fun tp!484560 () Bool)

(declare-fun b!1689334 () Bool)

(declare-fun e!1081367 () Bool)

(assert (=> b!1689334 (= e!1081367 (and tp!484560 (inv!23846 (tag!3545 (h!23888 (t!154810 (t!154810 rules!1846))))) (inv!23849 (transformation!3255 (h!23888 (t!154810 (t!154810 rules!1846))))) e!1081368))))

(declare-fun b!1689333 () Bool)

(declare-fun e!1081366 () Bool)

(declare-fun tp!484561 () Bool)

(assert (=> b!1689333 (= e!1081366 (and e!1081367 tp!484561))))

(assert (=> b!1687066 (= tp!484415 e!1081366)))

(assert (= b!1689334 b!1689335))

(assert (= b!1689333 b!1689334))

(assert (= (and b!1687066 ((_ is Cons!18487) (t!154810 (t!154810 rules!1846)))) b!1689333))

(declare-fun m!2075861 () Bool)

(assert (=> b!1689334 m!2075861))

(declare-fun m!2075863 () Bool)

(assert (=> b!1689334 m!2075863))

(declare-fun b!1689338 () Bool)

(declare-fun e!1081372 () Bool)

(assert (=> b!1689338 (= e!1081372 true)))

(declare-fun b!1689337 () Bool)

(declare-fun e!1081371 () Bool)

(assert (=> b!1689337 (= e!1081371 e!1081372)))

(declare-fun b!1689336 () Bool)

(declare-fun e!1081370 () Bool)

(assert (=> b!1689336 (= e!1081370 e!1081371)))

(assert (=> b!1686692 e!1081370))

(assert (= b!1689337 b!1689338))

(assert (= b!1689336 b!1689337))

(assert (= (and b!1686692 ((_ is Cons!18487) (t!154810 rules!1846))) b!1689336))

(assert (=> b!1689338 (< (dynLambda!8379 order!11145 (toValue!4734 (transformation!3255 (h!23888 (t!154810 rules!1846))))) (dynLambda!8380 order!11147 lambda!68335))))

(assert (=> b!1689338 (< (dynLambda!8381 order!11149 (toChars!4593 (transformation!3255 (h!23888 (t!154810 rules!1846))))) (dynLambda!8380 order!11147 lambda!68335))))

(declare-fun b!1689339 () Bool)

(declare-fun e!1081373 () Bool)

(declare-fun tp!484562 () Bool)

(assert (=> b!1689339 (= e!1081373 (and tp_is_empty!7437 tp!484562))))

(assert (=> b!1687053 (= tp!484398 e!1081373)))

(assert (= (and b!1687053 ((_ is Cons!18485) (t!154808 (originalCharacters!4069 (h!23889 tokens!457))))) b!1689339))

(declare-fun b!1689341 () Bool)

(declare-fun e!1081374 () Bool)

(declare-fun tp!484566 () Bool)

(declare-fun tp!484565 () Bool)

(assert (=> b!1689341 (= e!1081374 (and tp!484566 tp!484565))))

(declare-fun b!1689342 () Bool)

(declare-fun tp!484563 () Bool)

(assert (=> b!1689342 (= e!1081374 tp!484563)))

(declare-fun b!1689340 () Bool)

(assert (=> b!1689340 (= e!1081374 tp_is_empty!7437)))

(assert (=> b!1687081 (= tp!484430 e!1081374)))

(declare-fun b!1689343 () Bool)

(declare-fun tp!484564 () Bool)

(declare-fun tp!484567 () Bool)

(assert (=> b!1689343 (= e!1081374 (and tp!484564 tp!484567))))

(assert (= (and b!1687081 ((_ is ElementMatch!4583) (regex!3255 (rule!5161 (h!23889 (t!154811 tokens!457)))))) b!1689340))

(assert (= (and b!1687081 ((_ is Concat!7929) (regex!3255 (rule!5161 (h!23889 (t!154811 tokens!457)))))) b!1689341))

(assert (= (and b!1687081 ((_ is Star!4583) (regex!3255 (rule!5161 (h!23889 (t!154811 tokens!457)))))) b!1689342))

(assert (= (and b!1687081 ((_ is Union!4583) (regex!3255 (rule!5161 (h!23889 (t!154811 tokens!457)))))) b!1689343))

(declare-fun e!1081380 () Bool)

(declare-fun tp!484576 () Bool)

(declare-fun b!1689352 () Bool)

(declare-fun tp!484574 () Bool)

(assert (=> b!1689352 (= e!1081380 (and (inv!23853 (left!14775 (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (value!102440 (h!23889 tokens!457)))))) tp!484574 (inv!23853 (right!15105 (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (value!102440 (h!23889 tokens!457)))))) tp!484576))))

(declare-fun b!1689354 () Bool)

(declare-fun e!1081379 () Bool)

(declare-fun tp!484575 () Bool)

(assert (=> b!1689354 (= e!1081379 tp!484575)))

(declare-fun b!1689353 () Bool)

(declare-fun inv!23860 (IArray!12321) Bool)

(assert (=> b!1689353 (= e!1081380 (and (inv!23860 (xs!9018 (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (value!102440 (h!23889 tokens!457)))))) e!1081379))))

(assert (=> b!1686875 (= tp!484329 (and (inv!23853 (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (value!102440 (h!23889 tokens!457))))) e!1081380))))

(assert (= (and b!1686875 ((_ is Node!6158) (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (value!102440 (h!23889 tokens!457)))))) b!1689352))

(assert (= b!1689353 b!1689354))

(assert (= (and b!1686875 ((_ is Leaf!9006) (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (value!102440 (h!23889 tokens!457)))))) b!1689353))

(declare-fun m!2075865 () Bool)

(assert (=> b!1689352 m!2075865))

(declare-fun m!2075867 () Bool)

(assert (=> b!1689352 m!2075867))

(declare-fun m!2075869 () Bool)

(assert (=> b!1689353 m!2075869))

(assert (=> b!1686875 m!2070683))

(declare-fun b!1689356 () Bool)

(declare-fun e!1081381 () Bool)

(declare-fun tp!484580 () Bool)

(declare-fun tp!484579 () Bool)

(assert (=> b!1689356 (= e!1081381 (and tp!484580 tp!484579))))

(declare-fun b!1689357 () Bool)

(declare-fun tp!484577 () Bool)

(assert (=> b!1689357 (= e!1081381 tp!484577)))

(declare-fun b!1689355 () Bool)

(assert (=> b!1689355 (= e!1081381 tp_is_empty!7437)))

(assert (=> b!1687057 (= tp!484400 e!1081381)))

(declare-fun b!1689358 () Bool)

(declare-fun tp!484578 () Bool)

(declare-fun tp!484581 () Bool)

(assert (=> b!1689358 (= e!1081381 (and tp!484578 tp!484581))))

(assert (= (and b!1687057 ((_ is ElementMatch!4583) (regOne!9679 (regex!3255 (h!23888 rules!1846))))) b!1689355))

(assert (= (and b!1687057 ((_ is Concat!7929) (regOne!9679 (regex!3255 (h!23888 rules!1846))))) b!1689356))

(assert (= (and b!1687057 ((_ is Star!4583) (regOne!9679 (regex!3255 (h!23888 rules!1846))))) b!1689357))

(assert (= (and b!1687057 ((_ is Union!4583) (regOne!9679 (regex!3255 (h!23888 rules!1846))))) b!1689358))

(declare-fun b!1689360 () Bool)

(declare-fun e!1081382 () Bool)

(declare-fun tp!484585 () Bool)

(declare-fun tp!484584 () Bool)

(assert (=> b!1689360 (= e!1081382 (and tp!484585 tp!484584))))

(declare-fun b!1689361 () Bool)

(declare-fun tp!484582 () Bool)

(assert (=> b!1689361 (= e!1081382 tp!484582)))

(declare-fun b!1689359 () Bool)

(assert (=> b!1689359 (= e!1081382 tp_is_empty!7437)))

(assert (=> b!1687057 (= tp!484403 e!1081382)))

(declare-fun b!1689362 () Bool)

(declare-fun tp!484583 () Bool)

(declare-fun tp!484586 () Bool)

(assert (=> b!1689362 (= e!1081382 (and tp!484583 tp!484586))))

(assert (= (and b!1687057 ((_ is ElementMatch!4583) (regTwo!9679 (regex!3255 (h!23888 rules!1846))))) b!1689359))

(assert (= (and b!1687057 ((_ is Concat!7929) (regTwo!9679 (regex!3255 (h!23888 rules!1846))))) b!1689360))

(assert (= (and b!1687057 ((_ is Star!4583) (regTwo!9679 (regex!3255 (h!23888 rules!1846))))) b!1689361))

(assert (= (and b!1687057 ((_ is Union!4583) (regTwo!9679 (regex!3255 (h!23888 rules!1846))))) b!1689362))

(declare-fun b!1689363 () Bool)

(declare-fun e!1081383 () Bool)

(declare-fun tp!484587 () Bool)

(assert (=> b!1689363 (= e!1081383 (and tp_is_empty!7437 tp!484587))))

(assert (=> b!1687080 (= tp!484429 e!1081383)))

(assert (= (and b!1687080 ((_ is Cons!18485) (originalCharacters!4069 (h!23889 (t!154811 tokens!457))))) b!1689363))

(declare-fun b!1689365 () Bool)

(declare-fun e!1081384 () Bool)

(declare-fun tp!484591 () Bool)

(declare-fun tp!484590 () Bool)

(assert (=> b!1689365 (= e!1081384 (and tp!484591 tp!484590))))

(declare-fun b!1689366 () Bool)

(declare-fun tp!484588 () Bool)

(assert (=> b!1689366 (= e!1081384 tp!484588)))

(declare-fun b!1689364 () Bool)

(assert (=> b!1689364 (= e!1081384 tp_is_empty!7437)))

(assert (=> b!1687056 (= tp!484399 e!1081384)))

(declare-fun b!1689367 () Bool)

(declare-fun tp!484589 () Bool)

(declare-fun tp!484592 () Bool)

(assert (=> b!1689367 (= e!1081384 (and tp!484589 tp!484592))))

(assert (= (and b!1687056 ((_ is ElementMatch!4583) (reg!4912 (regex!3255 (h!23888 rules!1846))))) b!1689364))

(assert (= (and b!1687056 ((_ is Concat!7929) (reg!4912 (regex!3255 (h!23888 rules!1846))))) b!1689365))

(assert (= (and b!1687056 ((_ is Star!4583) (reg!4912 (regex!3255 (h!23888 rules!1846))))) b!1689366))

(assert (= (and b!1687056 ((_ is Union!4583) (reg!4912 (regex!3255 (h!23888 rules!1846))))) b!1689367))

(declare-fun b!1689371 () Bool)

(declare-fun b_free!45691 () Bool)

(declare-fun b_next!46395 () Bool)

(assert (=> b!1689371 (= b_free!45691 (not b_next!46395))))

(declare-fun t!155119 () Bool)

(declare-fun tb!98103 () Bool)

(assert (=> (and b!1689371 (= (toValue!4734 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457)))))) (toValue!4734 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641057)))))) t!155119) tb!98103))

(declare-fun result!118214 () Bool)

(assert (= result!118214 result!118056))

(assert (=> d!514180 t!155119))

(declare-fun t!155121 () Bool)

(declare-fun tb!98105 () Bool)

(assert (=> (and b!1689371 (= (toValue!4734 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457)))))) (toValue!4734 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641052)))))) t!155121) tb!98105))

(declare-fun result!118216 () Bool)

(assert (= result!118216 result!118074))

(assert (=> d!514340 t!155121))

(declare-fun tb!98107 () Bool)

(declare-fun t!155123 () Bool)

(assert (=> (and b!1689371 (= (toValue!4734 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457)))))) (toValue!4734 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641105)))))) t!155123) tb!98107))

(declare-fun result!118218 () Bool)

(assert (= result!118218 result!118180))

(assert (=> d!514936 t!155123))

(declare-fun b_and!120769 () Bool)

(declare-fun tp!484595 () Bool)

(assert (=> b!1689371 (= tp!484595 (and (=> t!155119 result!118214) (=> t!155121 result!118216) (=> t!155123 result!118218) b_and!120769))))

(declare-fun b_free!45693 () Bool)

(declare-fun b_next!46397 () Bool)

(assert (=> b!1689371 (= b_free!45693 (not b_next!46397))))

(declare-fun t!155125 () Bool)

(declare-fun tb!98109 () Bool)

(assert (=> (and b!1689371 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457)))))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (Cons!18488 (h!23889 tokens!457) Nil!18488)))))) t!155125) tb!98109))

(declare-fun result!118220 () Bool)

(assert (= result!118220 result!118172))

(assert (=> d!514926 t!155125))

(declare-fun t!155127 () Bool)

(declare-fun tb!98111 () Bool)

(assert (=> (and b!1689371 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457)))))) (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641052)))))) t!155127) tb!98111))

(declare-fun result!118222 () Bool)

(assert (= result!118222 result!118048))

(assert (=> d!514102 t!155127))

(declare-fun t!155129 () Bool)

(declare-fun tb!98113 () Bool)

(assert (=> (and b!1689371 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457)))))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457)))))) t!155129) tb!98113))

(declare-fun result!118224 () Bool)

(assert (= result!118224 result!117954))

(assert (=> b!1688517 t!155129))

(assert (=> d!513738 t!155129))

(declare-fun tb!98115 () Bool)

(declare-fun t!155131 () Bool)

(assert (=> (and b!1689371 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457)))))) (toChars!4593 (transformation!3255 (rule!5161 (apply!5040 lt!640650 0))))) t!155131) tb!98115))

(declare-fun result!118226 () Bool)

(assert (= result!118226 result!118024))

(assert (=> d!513964 t!155131))

(declare-fun t!155133 () Bool)

(declare-fun tb!98117 () Bool)

(assert (=> (and b!1689371 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457)))))) (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641057)))))) t!155133) tb!98117))

(declare-fun result!118228 () Bool)

(assert (= result!118228 result!118090))

(assert (=> d!514474 t!155133))

(declare-fun t!155135 () Bool)

(declare-fun tb!98119 () Bool)

(assert (=> (and b!1689371 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457)))))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457))))) t!155135) tb!98119))

(declare-fun result!118230 () Bool)

(assert (= result!118230 result!117932))

(assert (=> d!513686 t!155135))

(declare-fun t!155137 () Bool)

(declare-fun tb!98121 () Bool)

(assert (=> (and b!1689371 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457)))))) (toChars!4593 (transformation!3255 (rule!5161 (_1!10520 (get!5420 lt!641105)))))) t!155137) tb!98121))

(declare-fun result!118232 () Bool)

(assert (= result!118232 result!118066))

(assert (=> d!514288 t!155137))

(assert (=> b!1686869 t!155135))

(declare-fun tb!98123 () Bool)

(declare-fun t!155139 () Bool)

(assert (=> (and b!1689371 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457)))))) (toChars!4593 (transformation!3255 (rule!5161 lt!641264)))) t!155139) tb!98123))

(declare-fun result!118234 () Bool)

(assert (= result!118234 result!118040))

(assert (=> d!514096 t!155139))

(declare-fun t!155141 () Bool)

(declare-fun tb!98125 () Bool)

(assert (=> (and b!1689371 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457)))))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457))))))) t!155141) tb!98125))

(declare-fun result!118236 () Bool)

(assert (= result!118236 result!118098))

(assert (=> d!514722 t!155141))

(declare-fun b_and!120771 () Bool)

(declare-fun tp!484594 () Bool)

(assert (=> b!1689371 (= tp!484594 (and (=> t!155129 result!118224) (=> t!155137 result!118232) (=> t!155141 result!118236) (=> t!155127 result!118222) (=> t!155131 result!118226) (=> t!155125 result!118220) (=> t!155139 result!118234) (=> t!155133 result!118228) (=> t!155135 result!118230) b_and!120771))))

(declare-fun e!1081390 () Bool)

(declare-fun e!1081385 () Bool)

(declare-fun tp!484597 () Bool)

(declare-fun b!1689370 () Bool)

(assert (=> b!1689370 (= e!1081390 (and tp!484597 (inv!23846 (tag!3545 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457)))))) (inv!23849 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457)))))) e!1081385))))

(assert (=> b!1689371 (= e!1081385 (and tp!484595 tp!484594))))

(declare-fun tp!484596 () Bool)

(declare-fun b!1689369 () Bool)

(declare-fun e!1081387 () Bool)

(assert (=> b!1689369 (= e!1081387 (and (inv!21 (value!102440 (h!23889 (t!154811 (t!154811 tokens!457))))) e!1081390 tp!484596))))

(declare-fun e!1081389 () Bool)

(assert (=> b!1687079 (= tp!484426 e!1081389)))

(declare-fun b!1689368 () Bool)

(declare-fun tp!484593 () Bool)

(assert (=> b!1689368 (= e!1081389 (and (inv!23850 (h!23889 (t!154811 (t!154811 tokens!457)))) e!1081387 tp!484593))))

(assert (= b!1689370 b!1689371))

(assert (= b!1689369 b!1689370))

(assert (= b!1689368 b!1689369))

(assert (= (and b!1687079 ((_ is Cons!18488) (t!154811 (t!154811 tokens!457)))) b!1689368))

(declare-fun m!2075871 () Bool)

(assert (=> b!1689370 m!2075871))

(declare-fun m!2075873 () Bool)

(assert (=> b!1689370 m!2075873))

(declare-fun m!2075875 () Bool)

(assert (=> b!1689369 m!2075875))

(declare-fun m!2075877 () Bool)

(assert (=> b!1689368 m!2075877))

(declare-fun b!1689373 () Bool)

(declare-fun e!1081391 () Bool)

(declare-fun tp!484601 () Bool)

(declare-fun tp!484600 () Bool)

(assert (=> b!1689373 (= e!1081391 (and tp!484601 tp!484600))))

(declare-fun b!1689374 () Bool)

(declare-fun tp!484598 () Bool)

(assert (=> b!1689374 (= e!1081391 tp!484598)))

(declare-fun b!1689372 () Bool)

(assert (=> b!1689372 (= e!1081391 tp_is_empty!7437)))

(assert (=> b!1687055 (= tp!484402 e!1081391)))

(declare-fun b!1689375 () Bool)

(declare-fun tp!484599 () Bool)

(declare-fun tp!484602 () Bool)

(assert (=> b!1689375 (= e!1081391 (and tp!484599 tp!484602))))

(assert (= (and b!1687055 ((_ is ElementMatch!4583) (regOne!9678 (regex!3255 (h!23888 rules!1846))))) b!1689372))

(assert (= (and b!1687055 ((_ is Concat!7929) (regOne!9678 (regex!3255 (h!23888 rules!1846))))) b!1689373))

(assert (= (and b!1687055 ((_ is Star!4583) (regOne!9678 (regex!3255 (h!23888 rules!1846))))) b!1689374))

(assert (= (and b!1687055 ((_ is Union!4583) (regOne!9678 (regex!3255 (h!23888 rules!1846))))) b!1689375))

(declare-fun b!1689377 () Bool)

(declare-fun e!1081392 () Bool)

(declare-fun tp!484606 () Bool)

(declare-fun tp!484605 () Bool)

(assert (=> b!1689377 (= e!1081392 (and tp!484606 tp!484605))))

(declare-fun b!1689378 () Bool)

(declare-fun tp!484603 () Bool)

(assert (=> b!1689378 (= e!1081392 tp!484603)))

(declare-fun b!1689376 () Bool)

(assert (=> b!1689376 (= e!1081392 tp_is_empty!7437)))

(assert (=> b!1687055 (= tp!484401 e!1081392)))

(declare-fun b!1689379 () Bool)

(declare-fun tp!484604 () Bool)

(declare-fun tp!484607 () Bool)

(assert (=> b!1689379 (= e!1081392 (and tp!484604 tp!484607))))

(assert (= (and b!1687055 ((_ is ElementMatch!4583) (regTwo!9678 (regex!3255 (h!23888 rules!1846))))) b!1689376))

(assert (= (and b!1687055 ((_ is Concat!7929) (regTwo!9678 (regex!3255 (h!23888 rules!1846))))) b!1689377))

(assert (= (and b!1687055 ((_ is Star!4583) (regTwo!9678 (regex!3255 (h!23888 rules!1846))))) b!1689378))

(assert (= (and b!1687055 ((_ is Union!4583) (regTwo!9678 (regex!3255 (h!23888 rules!1846))))) b!1689379))

(declare-fun tp!484608 () Bool)

(declare-fun e!1081394 () Bool)

(declare-fun tp!484610 () Bool)

(declare-fun b!1689380 () Bool)

(assert (=> b!1689380 (= e!1081394 (and (inv!23853 (left!14775 (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (value!102440 (h!23889 (t!154811 tokens!457))))))) tp!484608 (inv!23853 (right!15105 (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (value!102440 (h!23889 (t!154811 tokens!457))))))) tp!484610))))

(declare-fun b!1689382 () Bool)

(declare-fun e!1081393 () Bool)

(declare-fun tp!484609 () Bool)

(assert (=> b!1689382 (= e!1081393 tp!484609)))

(declare-fun b!1689381 () Bool)

(assert (=> b!1689381 (= e!1081394 (and (inv!23860 (xs!9018 (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (value!102440 (h!23889 (t!154811 tokens!457))))))) e!1081393))))

(assert (=> b!1687022 (= tp!484380 (and (inv!23853 (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (value!102440 (h!23889 (t!154811 tokens!457)))))) e!1081394))))

(assert (= (and b!1687022 ((_ is Node!6158) (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (value!102440 (h!23889 (t!154811 tokens!457))))))) b!1689380))

(assert (= b!1689381 b!1689382))

(assert (= (and b!1687022 ((_ is Leaf!9006) (c!275419 (dynLambda!8382 (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (value!102440 (h!23889 (t!154811 tokens!457))))))) b!1689381))

(declare-fun m!2075879 () Bool)

(assert (=> b!1689380 m!2075879))

(declare-fun m!2075881 () Bool)

(assert (=> b!1689380 m!2075881))

(declare-fun m!2075883 () Bool)

(assert (=> b!1689381 m!2075883))

(assert (=> b!1687022 m!2070983))

(declare-fun b_lambda!53117 () Bool)

(assert (= b_lambda!53095 (or d!513554 b_lambda!53117)))

(declare-fun bs!399884 () Bool)

(declare-fun d!514946 () Bool)

(assert (= bs!399884 (and d!514946 d!513554)))

(assert (=> bs!399884 (= (dynLambda!8394 lambda!68335 (h!23889 tokens!457)) (rulesProduceIndividualToken!1532 thiss!17113 rules!1846 (h!23889 tokens!457)))))

(assert (=> bs!399884 m!2069785))

(assert (=> b!1688747 d!514946))

(declare-fun b_lambda!53119 () Bool)

(assert (= b_lambda!53085 (or d!513736 b_lambda!53119)))

(declare-fun bs!399885 () Bool)

(declare-fun d!514948 () Bool)

(assert (= bs!399885 (and d!514948 d!513736)))

(assert (=> bs!399885 (= (dynLambda!8392 lambda!68344 (h!23888 rules!1846)) (regex!3255 (h!23888 rules!1846)))))

(assert (=> b!1688342 d!514948))

(declare-fun b_lambda!53121 () Bool)

(assert (= b_lambda!53097 (or (and b!1687068 b_free!45673 (= (toChars!4593 (transformation!3255 (h!23888 (t!154810 rules!1846)))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457)))))))) (and b!1689371 b_free!45693) (and b!1687082 b_free!45677 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457)))))))) (and b!1686461 b_free!45657 (= (toChars!4593 (transformation!3255 (h!23888 rules!1846))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457)))))))) (and b!1686468 b_free!45661 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457)))))))) (and b!1689335 b_free!45689 (= (toChars!4593 (transformation!3255 (h!23888 (t!154810 (t!154810 rules!1846))))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457)))))))) b_lambda!53121)))

(declare-fun b_lambda!53123 () Bool)

(assert (= b_lambda!53093 (or (and b!1687068 b_free!45673 (= (toChars!4593 (transformation!3255 (h!23888 (t!154810 rules!1846)))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))))) (and b!1689371 b_free!45693 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 (t!154811 tokens!457)))))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))))) (and b!1689335 b_free!45689 (= (toChars!4593 (transformation!3255 (h!23888 (t!154810 (t!154810 rules!1846))))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))))) (and b!1686468 b_free!45661 (= (toChars!4593 (transformation!3255 (rule!5161 (h!23889 tokens!457)))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))))) (and b!1687082 b_free!45677) (and b!1686461 b_free!45657 (= (toChars!4593 (transformation!3255 (h!23888 rules!1846))) (toChars!4593 (transformation!3255 (rule!5161 (h!23889 (t!154811 tokens!457))))))) b_lambda!53123)))

(check-sat (not d!514926) (not b!1688630) (not b!1688275) (not d!514494) (not tb!97951) (not b!1689382) (not b!1688029) (not b!1688327) (not b!1688784) (not b!1688649) (not d!514592) (not d!514204) (not b!1688601) (not b!1687431) (not b!1687911) (not bm!107954) (not b_next!46397) (not b_lambda!53121) (not d!513970) (not bm!107925) (not b!1688018) (not b!1687417) (not d!514654) (not b!1688867) (not b!1688027) (not d!514352) (not b!1689333) (not d!514350) (not d!514154) (not d!514634) (not b_lambda!53069) (not d!514312) (not d!514632) (not d!514062) (not b!1688703) (not b!1688716) (not d!514288) (not b!1688643) (not d!514600) (not b!1689363) (not b!1687912) tp_is_empty!7437 (not d!514910) (not b!1687511) (not b!1687428) (not d!513964) (not b!1688269) (not b!1688891) (not d!513966) (not b!1688198) (not b!1688172) (not b!1688857) (not d!514556) (not b!1688700) (not d!514370) (not bm!107963) (not d!514710) (not d!514192) (not b!1689374) (not b!1688655) (not b!1688790) (not b!1688547) (not b!1689373) (not b!1689279) (not b!1688860) (not b!1689365) (not d!514464) (not b!1688546) (not b!1687913) (not b!1687922) (not b!1688456) (not b!1688260) (not b!1688455) (not b!1688116) (not d!514640) (not b!1688750) (not b!1687642) (not b!1688062) (not b!1688664) (not b!1688793) (not d!514660) (not b!1688594) (not b!1688833) (not b!1688634) (not b!1689281) (not b!1688562) (not b!1687441) (not b!1688669) (not d!514092) (not b!1688862) (not b!1688865) (not b!1688582) (not d!514364) (not b!1688892) (not b!1688666) (not bs!399884) (not bm!107980) (not d!514426) (not b!1687429) (not d!514096) (not b!1688506) (not d!513946) (not d!514732) (not b!1688888) (not d!514456) (not b!1688492) (not b!1688528) (not d!514454) (not b!1687560) (not bm!107931) (not b!1688063) (not b!1687450) (not b!1688459) (not b!1687910) b_and!120759 (not b!1688651) (not d!514332) (not d!514526) (not d!513934) (not b!1687801) (not bm!107970) (not b!1689357) (not d!514484) (not d!514650) (not bm!107964) (not d!514212) (not b!1689314) (not b!1689375) (not d!514210) (not b!1688623) (not b!1688622) (not b!1688418) (not d!514598) (not b!1687802) (not b!1688089) (not b!1688765) (not b!1688564) (not tb!97959) (not b!1689322) (not b!1688878) (not d!514200) (not bm!107965) (not d!514714) (not b!1688647) (not tb!98071) (not b!1688624) (not d!514206) (not d!514608) (not b!1688659) (not b!1688578) (not d!514164) (not d!514374) (not d!514728) (not b!1688773) (not d!514686) (not b!1688706) (not b!1687908) (not d!514336) (not b!1689326) (not b!1688599) (not d!514328) (not d!514554) (not b!1688872) (not b!1689316) (not b!1688299) (not d!514932) (not b!1688047) (not bm!107924) (not b!1688543) (not b!1687914) (not b!1688505) (not d!514362) (not b!1688705) (not b!1687645) (not d!514066) (not b!1688881) (not d!513988) (not b!1689339) (not b!1688832) (not d!514596) (not b!1687812) (not b!1689341) (not b!1689277) (not b_next!46381) (not b!1687970) (not b!1688051) (not b!1688460) (not d!514690) (not b!1687558) (not b!1688846) (not b!1689354) (not b!1689306) (not b!1688213) (not d!513900) (not d!514704) (not b!1687786) (not d!514466) (not b!1688016) (not b!1688777) (not b_lambda!53079) (not b!1688632) (not b_lambda!53117) (not b!1687541) (not b!1688741) (not b!1688849) (not b!1688276) (not b!1689324) (not b!1688774) (not bm!107997) (not b!1687434) (not d!514368) (not b!1688626) (not b!1689369) (not b!1688782) (not b!1688668) (not b!1689342) (not b!1688558) (not b!1687423) (not b!1689269) (not b!1688764) (not b!1688839) (not d!514194) (not d!514582) (not b!1688656) (not b_next!46391) (not bm!107873) (not b!1687892) (not d!514906) (not d!514354) (not b!1688893) (not b_lambda!53083) (not b!1688631) (not b!1689343) (not b!1687830) (not b!1688883) (not d!514918) (not d!514058) (not d!514938) (not bm!107961) (not b!1688850) (not b!1688735) (not b!1688704) (not b!1687499) (not b!1687432) (not b!1688875) (not tb!98063) (not d!514196) (not d!514594) (not d!514172) (not d!514334) (not b!1688048) (not b!1688864) (not b!1689286) (not b!1689295) (not b!1688776) (not b!1687557) (not tb!97943) (not b!1689266) (not b!1688662) (not b!1688515) (not b!1688628) (not d!514054) (not b!1687532) (not b!1689284) (not b!1687523) (not b!1687890) (not d!514488) (not b!1687418) (not b!1688789) (not b!1687831) (not b!1687907) (not b!1688263) (not b!1688306) (not b!1688208) (not b_lambda!53119) (not b!1689290) (not b!1688542) (not b!1688686) (not b!1688786) (not b!1689353) (not b!1688751) (not d!514718) (not b!1689263) (not b!1687637) (not bm!107874) (not b!1689283) (not b!1688242) (not d!514004) (not d!514716) (not b!1688767) (not d!514476) (not b_lambda!53075) (not b!1688034) (not b!1688794) (not d!514102) (not b!1687985) (not b!1688646) (not b!1688799) (not b!1688556) (not b!1688671) (not b!1688255) (not b!1688836) (not b!1687534) (not b!1688583) (not b!1688845) (not bm!107969) (not b!1688644) b_and!120751 (not b!1689367) (not b!1688885) (not d!514736) (not b!1689377) (not b!1689334) (not b!1689272) (not bm!107932) (not b!1687788) (not b!1688823) (not b!1687641) (not b!1688894) (not b!1688876) (not b!1688837) (not b!1688204) (not b!1689292) (not b!1687521) (not d!514540) (not b!1688834) (not b!1688026) (not b!1688707) (not bm!107875) (not b!1688755) (not b!1688485) (not b!1688518) (not d!514380) (not d!514566) (not d!514730) (not d!514188) (not b!1688863) (not b!1688209) (not b!1688759) (not d!514230) (not b!1688233) (not b!1688509) (not b!1688858) (not b!1688268) (not d!514576) (not b!1688778) (not b!1688335) (not b!1689294) (not d!514470) (not b!1688785) (not b_next!46395) (not b!1689379) (not b!1688516) (not d!514176) (not b!1688890) (not b!1687804) (not b!1688639) (not b!1687832) (not d!514712) (not d!513920) (not d!514160) (not d!514182) (not b!1688264) (not d!514016) (not d!514912) (not b!1687419) (not b!1689332) (not b!1689381) (not b!1687925) (not b!1689288) b_and!120757 (not d!513976) (not b!1688270) (not d!514638) (not d!514208) (not b!1688636) (not b!1689320) (not b!1688798) (not b!1688576) (not bm!107934) (not b!1687806) (not b!1687440) (not b!1688627) (not b!1688207) (not d!514688) (not b!1688648) (not b!1688475) (not d!514522) (not bm!107870) (not b!1688733) (not d!514120) (not d!514378) (not d!513994) (not d!514184) (not b!1687454) (not bm!107943) (not d!514696) (not d!514162) (not b!1688555) (not b!1688869) (not b_next!46361) (not b!1688013) (not d!514698) (not d!513924) (not b!1689307) (not b!1688563) (not b!1688261) (not d!514100) (not b!1688537) (not b!1686875) (not b!1688620) (not b!1689270) (not b!1688753) (not b_lambda!53091) (not b!1688758) (not b!1688225) (not b!1688457) (not b!1689273) (not b!1688780) (not b!1687422) (not b!1687972) (not d!514372) (not b!1688742) (not b!1688025) (not b!1689304) (not b!1689356) (not b!1688586) (not bm!107936) (not b_lambda!53081) b_and!120767 (not d!514158) (not b!1687982) (not d!514198) (not b!1689358) (not bm!107966) (not d!514088) (not b!1688635) (not d!514152) (not b!1688588) (not d!514738) (not b!1688781) (not b!1688748) (not b!1688252) (not d!514060) (not b!1689352) (not b!1689267) (not b!1688065) (not b!1687803) (not b!1688884) (not b!1687426) (not d!514668) (not b!1689303) (not b!1688791) (not d!514662) (not d!514560) (not b!1687559) (not b!1689298) (not b!1687416) (not tb!97983) (not b!1688880) (not b!1687814) (not b!1688661) (not d!514344) (not b!1688414) (not b!1687579) (not b!1687927) (not tb!97935) (not bm!107983) (not tb!97967) (not b!1687430) (not b!1687909) (not d!514056) (not b!1688577) (not d!514524) (not b!1688572) (not b!1688526) (not d!514724) (not b!1688736) (not b_next!46377) (not d!514482) (not b!1688831) (not b!1688772) (not b!1688525) b_and!120769 (not b!1688298) (not b!1688046) (not b!1688672) (not d!514326) (not b!1687836) (not b!1689328) (not b!1687640) (not b_lambda!53053) (not bm!107935) (not d!514338) (not b!1688874) (not bm!107985) (not d!514186) (not b!1689336) (not b!1688334) (not d!514310) (not d!514098) (not b!1688336) (not bm!107981) (not b!1687444) (not b!1688548) (not b!1687974) (not b!1689331) (not d!514490) (not b!1688871) (not d!514550) (not d!513916) (not d!514908) (not b!1688293) (not b!1688458) (not b!1688042) (not b!1689300) (not b!1688687) (not b!1688665) (not b!1687580) (not b!1687561) (not b!1688043) (not d!514510) (not d!514922) (not b!1687805) (not b!1687887) b_and!120765 (not b!1688241) (not b!1688115) (not d!514480) (not b!1688573) (not d!514530) (not b!1687520) (not b!1688589) (not b!1688667) (not d!514404) (not d!514496) (not b!1688014) (not d!514346) (not b_lambda!53055) (not b!1688080) (not b!1689276) (not d!514546) (not b!1688296) (not b_lambda!53113) (not d!514940) (not d!513942) (not b!1688481) (not b!1687783) (not b!1687983) (not d!514934) (not d!513932) (not b!1688770) b_and!120763 (not b!1688855) (not d!514534) (not b!1689318) b_and!120771 (not b!1689289) (not d!514682) (not b!1688873) (not b_next!46359) (not b!1688851) (not b!1688199) (not b!1688896) (not b!1688501) (not b!1689361) (not d!513944) (not b_next!46363) (not b!1688663) (not b!1688787) (not d!514532) (not b!1688032) (not b!1689311) (not b!1688887) (not d!514720) (not b!1689319) (not d!514474) (not b!1688090) (not b!1688645) (not b!1688499) (not b!1689323) (not d!513948) (not d!514658) (not b!1688673) (not b!1688532) (not b!1688702) (not b!1689360) (not b!1688796) b_and!120753 (not b!1688591) (not b!1689378) (not d!514680) (not d!514944) (not b!1688708) (not b!1688650) (not b!1688523) (not b!1688757) (not b!1688561) (not b!1688559) (not b!1688203) (not d!514138) (not b!1689282) (not d!514202) (not b!1689312) (not d!514142) (not d!514284) (not d!514624) (not b!1689264) (not d!514472) (not b!1687816) (not d!514548) (not b_lambda!53123) (not d!514542) (not b!1688889) (not b!1687818) (not d!514610) (not b!1688552) b_and!120749 (not b!1688688) (not b!1688587) (not b!1689315) (not b!1687477) (not b!1687578) (not b!1687442) (not b!1688416) (not d!514568) (not b!1688866) (not b!1687644) (not d!514700) (not d!514458) (not b_lambda!53051) (not b!1689362) (not b!1688792) (not b!1688553) (not b!1689366) (not b!1687479) (not d!514616) b_and!120761 b_and!120755 (not d!514636) (not b!1687891) (not d!514090) (not b!1688717) (not d!514478) (not b!1689380) (not d!514342) (not d!514278) (not d!514486) (not d!514684) (not b_lambda!53115) (not b!1687973) (not b!1688511) (not d!514612) (not b!1688534) (not d!514726) (not d!514722) (not b_lambda!53073) (not b!1688530) (not b!1688795) (not d!513978) (not d!514296) (not d!514290) (not b!1688262) (not b!1688342) (not b!1689275) (not tb!97919) (not bm!107958) (not b!1688841) (not b!1687433) (not b!1688868) (not d!514626) (not b!1689368) (not b!1687797) (not tb!97991) (not d!514674) (not d!514630) (not b!1687896) (not d!514584) (not d!514116) (not b_next!46393) (not b!1688560) (not b!1687543) (not b!1688510) (not b_next!46375) (not b!1688715) (not bm!107955) (not b!1688030) (not d!514214) (not b!1688517) (not b!1688641) (not bm!107940) (not d!514924) (not d!514412) (not bm!107952) (not b!1688602) (not b!1688292) (not bm!107962) (not b!1687975) (not b!1688480) (not b!1689261) (not b!1688486) (not d!514134) (not b!1688538) (not b_next!46365) (not b!1689370) (not b!1689297) (not d!514218) (not b!1688037) (not b!1688737) (not b!1688332) (not b!1687420) (not b!1687924) (not b!1688017) (not b!1688835) (not b!1689278) (not d!514570) (not b!1687793) (not b!1688232) (not b!1688768) (not d!514512) (not b!1688064) (not d!514602) (not b!1689310) (not b!1687886) (not d!514460) (not d!514656) (not b!1688597) (not b!1688590) (not b!1687800) (not b!1688482) (not b!1688585) (not b!1687781) (not b!1687022) (not b!1689280) (not d!514692) (not b!1687452) (not d!514042) (not b!1689330) (not b!1688775) (not b!1688689) (not d!514520) (not b!1688830) (not b!1687984) (not b!1687971) (not b!1688593) (not d!514324) (not b!1688330) (not b!1688226) (not d!514356) (not b!1687421) (not d!514216) (not bm!107984) (not d!514544) (not b!1688328) (not b!1688691) (not d!514588) (not b_next!46379) (not b!1689327) (not b!1688879) (not d!514376))
(check-sat (not b_next!46397) b_and!120759 (not b_next!46381) (not b_next!46391) b_and!120751 (not b_next!46395) b_and!120757 (not b_next!46361) b_and!120767 (not b_next!46377) b_and!120769 b_and!120765 (not b_next!46363) b_and!120753 b_and!120749 (not b_next!46393) (not b_next!46375) (not b_next!46365) (not b_next!46379) b_and!120771 (not b_next!46359) b_and!120763 b_and!120761 b_and!120755)
