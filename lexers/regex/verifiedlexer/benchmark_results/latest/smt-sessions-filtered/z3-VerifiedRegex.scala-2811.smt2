; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!156714 () Bool)

(assert start!156714)

(declare-fun b!1639750 () Bool)

(declare-fun b_free!44375 () Bool)

(declare-fun b_next!45079 () Bool)

(assert (=> b!1639750 (= b_free!44375 (not b_next!45079))))

(declare-fun tp!475096 () Bool)

(declare-fun b_and!116189 () Bool)

(assert (=> b!1639750 (= tp!475096 b_and!116189)))

(declare-fun b_free!44377 () Bool)

(declare-fun b_next!45081 () Bool)

(assert (=> b!1639750 (= b_free!44377 (not b_next!45081))))

(declare-fun tp!475098 () Bool)

(declare-fun b_and!116191 () Bool)

(assert (=> b!1639750 (= tp!475098 b_and!116191)))

(declare-fun b!1639758 () Bool)

(declare-fun b_free!44379 () Bool)

(declare-fun b_next!45083 () Bool)

(assert (=> b!1639758 (= b_free!44379 (not b_next!45083))))

(declare-fun tp!475102 () Bool)

(declare-fun b_and!116193 () Bool)

(assert (=> b!1639758 (= tp!475102 b_and!116193)))

(declare-fun b_free!44381 () Bool)

(declare-fun b_next!45085 () Bool)

(assert (=> b!1639758 (= b_free!44381 (not b_next!45085))))

(declare-fun tp!475100 () Bool)

(declare-fun b_and!116195 () Bool)

(assert (=> b!1639758 (= tp!475100 b_and!116195)))

(declare-fun b!1639742 () Bool)

(declare-fun e!1051582 () Bool)

(declare-fun e!1051585 () Bool)

(assert (=> b!1639742 (= e!1051582 e!1051585)))

(declare-fun res!734796 () Bool)

(assert (=> b!1639742 (=> res!734796 e!1051585)))

(declare-datatypes ((List!18129 0))(
  ( (Nil!18059) (Cons!18059 (h!23460 (_ BitVec 16)) (t!149922 List!18129)) )
))
(declare-datatypes ((TokenValue!3273 0))(
  ( (FloatLiteralValue!6546 (text!23356 List!18129)) (TokenValueExt!3272 (__x!11848 Int)) (Broken!16365 (value!100362 List!18129)) (Object!3342) (End!3273) (Def!3273) (Underscore!3273) (Match!3273) (Else!3273) (Error!3273) (Case!3273) (If!3273) (Extends!3273) (Abstract!3273) (Class!3273) (Val!3273) (DelimiterValue!6546 (del!3333 List!18129)) (KeywordValue!3279 (value!100363 List!18129)) (CommentValue!6546 (value!100364 List!18129)) (WhitespaceValue!6546 (value!100365 List!18129)) (IndentationValue!3273 (value!100366 List!18129)) (String!20696) (Int32!3273) (Broken!16366 (value!100367 List!18129)) (Boolean!3274) (Unit!29657) (OperatorValue!3276 (op!3333 List!18129)) (IdentifierValue!6546 (value!100368 List!18129)) (IdentifierValue!6547 (value!100369 List!18129)) (WhitespaceValue!6547 (value!100370 List!18129)) (True!6546) (False!6546) (Broken!16367 (value!100371 List!18129)) (Broken!16368 (value!100372 List!18129)) (True!6547) (RightBrace!3273) (RightBracket!3273) (Colon!3273) (Null!3273) (Comma!3273) (LeftBracket!3273) (False!6547) (LeftBrace!3273) (ImaginaryLiteralValue!3273 (text!23357 List!18129)) (StringLiteralValue!9819 (value!100373 List!18129)) (EOFValue!3273 (value!100374 List!18129)) (IdentValue!3273 (value!100375 List!18129)) (DelimiterValue!6547 (value!100376 List!18129)) (DedentValue!3273 (value!100377 List!18129)) (NewLineValue!3273 (value!100378 List!18129)) (IntegerValue!9819 (value!100379 (_ BitVec 32)) (text!23358 List!18129)) (IntegerValue!9820 (value!100380 Int) (text!23359 List!18129)) (Times!3273) (Or!3273) (Equal!3273) (Minus!3273) (Broken!16369 (value!100381 List!18129)) (And!3273) (Div!3273) (LessEqual!3273) (Mod!3273) (Concat!7784) (Not!3273) (Plus!3273) (SpaceValue!3273 (value!100382 List!18129)) (IntegerValue!9821 (value!100383 Int) (text!23360 List!18129)) (StringLiteralValue!9820 (text!23361 List!18129)) (FloatLiteralValue!6547 (text!23362 List!18129)) (BytesLiteralValue!3273 (value!100384 List!18129)) (CommentValue!6547 (value!100385 List!18129)) (StringLiteralValue!9821 (value!100386 List!18129)) (ErrorTokenValue!3273 (msg!3334 List!18129)) )
))
(declare-datatypes ((C!9196 0))(
  ( (C!9197 (val!5194 Int)) )
))
(declare-datatypes ((List!18130 0))(
  ( (Nil!18060) (Cons!18060 (h!23461 C!9196) (t!149923 List!18130)) )
))
(declare-datatypes ((IArray!12033 0))(
  ( (IArray!12034 (innerList!6074 List!18130)) )
))
(declare-datatypes ((Conc!6014 0))(
  ( (Node!6014 (left!14479 Conc!6014) (right!14809 Conc!6014) (csize!12258 Int) (cheight!6225 Int)) (Leaf!8826 (xs!8850 IArray!12033) (csize!12259 Int)) (Empty!6014) )
))
(declare-datatypes ((BalanceConc!11972 0))(
  ( (BalanceConc!11973 (c!266699 Conc!6014)) )
))
(declare-datatypes ((Regex!4511 0))(
  ( (ElementMatch!4511 (c!266700 C!9196)) (Concat!7785 (regOne!9534 Regex!4511) (regTwo!9534 Regex!4511)) (EmptyExpr!4511) (Star!4511 (reg!4840 Regex!4511)) (EmptyLang!4511) (Union!4511 (regOne!9535 Regex!4511) (regTwo!9535 Regex!4511)) )
))
(declare-datatypes ((String!20697 0))(
  ( (String!20698 (value!100387 String)) )
))
(declare-datatypes ((TokenValueInjection!6206 0))(
  ( (TokenValueInjection!6207 (toValue!4614 Int) (toChars!4473 Int)) )
))
(declare-datatypes ((Rule!6166 0))(
  ( (Rule!6167 (regex!3183 Regex!4511) (tag!3463 String!20697) (isSeparator!3183 Bool) (transformation!3183 TokenValueInjection!6206)) )
))
(declare-datatypes ((Token!5932 0))(
  ( (Token!5933 (value!100388 TokenValue!3273) (rule!5031 Rule!6166) (size!14380 Int) (originalCharacters!3997 List!18130)) )
))
(declare-datatypes ((tuple2!17702 0))(
  ( (tuple2!17703 (_1!10253 Token!5932) (_2!10253 List!18130)) )
))
(declare-datatypes ((Option!3409 0))(
  ( (None!3408) (Some!3408 (v!24509 tuple2!17702)) )
))
(declare-fun lt!602356 () Option!3409)

(declare-fun isDefined!2776 (Option!3409) Bool)

(assert (=> b!1639742 (= res!734796 (not (isDefined!2776 lt!602356)))))

(declare-fun lt!602376 () List!18130)

(declare-fun lt!602369 () List!18130)

(declare-datatypes ((List!18131 0))(
  ( (Nil!18061) (Cons!18061 (h!23462 Rule!6166) (t!149924 List!18131)) )
))
(declare-fun rules!1846 () List!18131)

(declare-datatypes ((LexerInterface!2812 0))(
  ( (LexerInterfaceExt!2809 (__x!11849 Int)) (Lexer!2810) )
))
(declare-fun thiss!17113 () LexerInterface!2812)

(declare-datatypes ((Unit!29658 0))(
  ( (Unit!29659) )
))
(declare-fun lt!602346 () Unit!29658)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!386 (LexerInterface!2812 List!18131 List!18130 List!18130) Unit!29658)

(assert (=> b!1639742 (= lt!602346 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!386 thiss!17113 rules!1846 lt!602376 lt!602369))))

(declare-fun b!1639743 () Bool)

(declare-fun res!734800 () Bool)

(declare-fun e!1051591 () Bool)

(assert (=> b!1639743 (=> (not res!734800) (not e!1051591))))

(declare-fun lt!602348 () tuple2!17702)

(declare-fun isEmpty!11091 (List!18130) Bool)

(assert (=> b!1639743 (= res!734800 (isEmpty!11091 (_2!10253 lt!602348)))))

(declare-fun b!1639744 () Bool)

(declare-fun res!734797 () Bool)

(assert (=> b!1639744 (=> res!734797 e!1051582)))

(declare-datatypes ((List!18132 0))(
  ( (Nil!18062) (Cons!18062 (h!23463 Token!5932) (t!149925 List!18132)) )
))
(declare-datatypes ((IArray!12035 0))(
  ( (IArray!12036 (innerList!6075 List!18132)) )
))
(declare-datatypes ((Conc!6015 0))(
  ( (Node!6015 (left!14480 Conc!6015) (right!14810 Conc!6015) (csize!12260 Int) (cheight!6226 Int)) (Leaf!8827 (xs!8851 IArray!12035) (csize!12261 Int)) (Empty!6015) )
))
(declare-datatypes ((BalanceConc!11974 0))(
  ( (BalanceConc!11975 (c!266701 Conc!6015)) )
))
(declare-fun isEmpty!11092 (BalanceConc!11974) Bool)

(declare-datatypes ((tuple2!17704 0))(
  ( (tuple2!17705 (_1!10254 BalanceConc!11974) (_2!10254 BalanceConc!11972)) )
))
(declare-fun lex!1296 (LexerInterface!2812 List!18131 BalanceConc!11972) tuple2!17704)

(declare-fun seqFromList!2115 (List!18130) BalanceConc!11972)

(assert (=> b!1639744 (= res!734797 (isEmpty!11092 (_1!10254 (lex!1296 thiss!17113 rules!1846 (seqFromList!2115 lt!602376)))))))

(declare-fun b!1639745 () Bool)

(declare-fun res!734811 () Bool)

(declare-fun e!1051592 () Bool)

(assert (=> b!1639745 (=> res!734811 e!1051592)))

(declare-fun tokens!457 () List!18132)

(declare-fun separableTokensPredicate!754 (LexerInterface!2812 Token!5932 Token!5932 List!18131) Bool)

(assert (=> b!1639745 (= res!734811 (not (separableTokensPredicate!754 thiss!17113 (h!23463 tokens!457) (h!23463 (t!149925 tokens!457)) rules!1846)))))

(declare-fun b!1639746 () Bool)

(declare-fun e!1051589 () Bool)

(declare-fun e!1051575 () Bool)

(assert (=> b!1639746 (= e!1051589 e!1051575)))

(declare-fun res!734801 () Bool)

(assert (=> b!1639746 (=> res!734801 e!1051575)))

(declare-fun lt!602347 () tuple2!17702)

(declare-fun lt!602357 () List!18130)

(assert (=> b!1639746 (= res!734801 (or (not (= (_2!10253 lt!602347) lt!602357)) (not (= lt!602369 lt!602357))))))

(declare-datatypes ((tuple2!17706 0))(
  ( (tuple2!17707 (_1!10255 Token!5932) (_2!10255 BalanceConc!11972)) )
))
(declare-fun lt!602355 () tuple2!17706)

(declare-fun list!7127 (BalanceConc!11972) List!18130)

(assert (=> b!1639746 (= lt!602357 (list!7127 (_2!10255 lt!602355)))))

(declare-fun b!1639747 () Bool)

(declare-fun res!734817 () Bool)

(declare-fun e!1051590 () Bool)

(assert (=> b!1639747 (=> (not res!734817) (not e!1051590))))

(declare-fun rulesProduceEachTokenIndividuallyList!1014 (LexerInterface!2812 List!18131 List!18132) Bool)

(assert (=> b!1639747 (= res!734817 (rulesProduceEachTokenIndividuallyList!1014 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1639748 () Bool)

(declare-fun e!1051583 () Bool)

(declare-fun e!1051574 () Bool)

(assert (=> b!1639748 (= e!1051583 e!1051574)))

(declare-fun res!734795 () Bool)

(assert (=> b!1639748 (=> res!734795 e!1051574)))

(assert (=> b!1639748 (= res!734795 (or (not (= (_1!10253 lt!602347) (h!23463 tokens!457))) (not (= (_2!10253 lt!602347) lt!602369))))))

(declare-fun get!5252 (Option!3409) tuple2!17702)

(assert (=> b!1639748 (= lt!602347 (get!5252 lt!602356))))

(declare-fun lt!602375 () Unit!29658)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!148 (LexerInterface!2812 List!18131 Token!5932 Rule!6166 List!18130) Unit!29658)

(assert (=> b!1639748 (= lt!602375 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!148 thiss!17113 rules!1846 (h!23463 tokens!457) (rule!5031 (h!23463 tokens!457)) lt!602369))))

(declare-fun b!1639749 () Bool)

(declare-fun e!1051587 () Bool)

(declare-fun e!1051580 () Bool)

(assert (=> b!1639749 (= e!1051587 (not e!1051580))))

(declare-fun res!734806 () Bool)

(assert (=> b!1639749 (=> res!734806 e!1051580)))

(declare-fun lt!602364 () List!18132)

(assert (=> b!1639749 (= res!734806 (not (= lt!602364 (t!149925 tokens!457))))))

(declare-fun lt!602349 () tuple2!17704)

(declare-fun list!7128 (BalanceConc!11974) List!18132)

(assert (=> b!1639749 (= lt!602364 (list!7128 (_1!10254 lt!602349)))))

(declare-fun lt!602354 () Unit!29658)

(declare-fun theoremInvertabilityWhenTokenListSeparable!257 (LexerInterface!2812 List!18131 List!18132) Unit!29658)

(assert (=> b!1639749 (= lt!602354 (theoremInvertabilityWhenTokenListSeparable!257 thiss!17113 rules!1846 (t!149925 tokens!457)))))

(declare-fun lt!602359 () List!18130)

(declare-fun isPrefix!1443 (List!18130 List!18130) Bool)

(assert (=> b!1639749 (isPrefix!1443 lt!602376 lt!602359)))

(declare-fun lt!602368 () Unit!29658)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!968 (List!18130 List!18130) Unit!29658)

(assert (=> b!1639749 (= lt!602368 (lemmaConcatTwoListThenFirstIsPrefix!968 lt!602376 lt!602369))))

(declare-fun e!1051586 () Bool)

(assert (=> b!1639750 (= e!1051586 (and tp!475096 tp!475098))))

(declare-fun b!1639751 () Bool)

(declare-fun e!1051581 () Bool)

(declare-fun e!1051576 () Bool)

(assert (=> b!1639751 (= e!1051581 e!1051576)))

(declare-fun res!734807 () Bool)

(assert (=> b!1639751 (=> res!734807 e!1051576)))

(declare-datatypes ((Option!3410 0))(
  ( (None!3409) (Some!3409 (v!24510 tuple2!17706)) )
))
(declare-fun isDefined!2777 (Option!3410) Bool)

(declare-fun maxPrefixZipperSequence!707 (LexerInterface!2812 List!18131 BalanceConc!11972) Option!3410)

(assert (=> b!1639751 (= res!734807 (not (isDefined!2777 (maxPrefixZipperSequence!707 thiss!17113 rules!1846 (seqFromList!2115 (originalCharacters!3997 (h!23463 tokens!457)))))))))

(declare-fun lt!602367 () List!18130)

(declare-fun lt!602344 () List!18130)

(assert (=> b!1639751 (= lt!602367 lt!602344)))

(declare-fun lt!602366 () BalanceConc!11972)

(declare-fun head!3562 (BalanceConc!11972) C!9196)

(assert (=> b!1639751 (= lt!602344 (Cons!18060 (head!3562 lt!602366) Nil!18060))))

(declare-fun e!1051577 () Bool)

(assert (=> b!1639751 e!1051577))

(declare-fun res!734805 () Bool)

(assert (=> b!1639751 (=> (not res!734805) (not e!1051577))))

(assert (=> b!1639751 (= res!734805 (= lt!602376 (originalCharacters!3997 (h!23463 tokens!457))))))

(declare-fun b!1639752 () Bool)

(assert (=> b!1639752 (= e!1051575 true)))

(declare-fun lt!602371 () List!18132)

(declare-fun lt!602362 () BalanceConc!11974)

(declare-fun prepend!729 (BalanceConc!11974 Token!5932) BalanceConc!11974)

(assert (=> b!1639752 (= lt!602371 (list!7128 (prepend!729 lt!602362 (h!23463 tokens!457))))))

(declare-fun b!1639753 () Bool)

(declare-fun res!734815 () Bool)

(assert (=> b!1639753 (=> res!734815 e!1051583)))

(declare-fun lt!602360 () Regex!4511)

(declare-fun prefixMatch!446 (Regex!4511 List!18130) Bool)

(declare-fun ++!4849 (List!18130 List!18130) List!18130)

(assert (=> b!1639753 (= res!734815 (prefixMatch!446 lt!602360 (++!4849 lt!602376 lt!602344)))))

(declare-fun b!1639754 () Bool)

(declare-fun res!734820 () Bool)

(assert (=> b!1639754 (=> res!734820 e!1051582)))

(declare-fun rulesProduceIndividualToken!1464 (LexerInterface!2812 List!18131 Token!5932) Bool)

(assert (=> b!1639754 (= res!734820 (not (rulesProduceIndividualToken!1464 thiss!17113 rules!1846 (h!23463 tokens!457))))))

(declare-fun b!1639755 () Bool)

(declare-fun e!1051572 () Bool)

(assert (=> b!1639755 (= e!1051572 e!1051581)))

(declare-fun res!734818 () Bool)

(assert (=> b!1639755 (=> res!734818 e!1051581)))

(assert (=> b!1639755 (= res!734818 (prefixMatch!446 lt!602360 (++!4849 lt!602376 lt!602367)))))

(declare-fun lt!602373 () BalanceConc!11972)

(assert (=> b!1639755 (= lt!602367 (list!7127 lt!602373))))

(declare-fun e!1051570 () Bool)

(declare-fun b!1639756 () Bool)

(declare-fun e!1051571 () Bool)

(declare-fun tp!475095 () Bool)

(declare-fun inv!21 (TokenValue!3273) Bool)

(assert (=> b!1639756 (= e!1051571 (and (inv!21 (value!100388 (h!23463 tokens!457))) e!1051570 tp!475095))))

(declare-fun b!1639757 () Bool)

(assert (=> b!1639757 (= e!1051592 e!1051582)))

(declare-fun res!734816 () Bool)

(assert (=> b!1639757 (=> res!734816 e!1051582)))

(declare-fun lt!602351 () List!18130)

(declare-fun lt!602350 () List!18130)

(assert (=> b!1639757 (= res!734816 (or (not (= lt!602350 lt!602351)) (not (= lt!602351 lt!602376)) (not (= lt!602350 lt!602376))))))

(declare-fun printList!927 (LexerInterface!2812 List!18132) List!18130)

(assert (=> b!1639757 (= lt!602351 (printList!927 thiss!17113 (Cons!18062 (h!23463 tokens!457) Nil!18062)))))

(declare-fun lt!602352 () BalanceConc!11972)

(assert (=> b!1639757 (= lt!602350 (list!7127 lt!602352))))

(declare-fun lt!602361 () BalanceConc!11974)

(declare-fun printTailRec!865 (LexerInterface!2812 BalanceConc!11974 Int BalanceConc!11972) BalanceConc!11972)

(assert (=> b!1639757 (= lt!602352 (printTailRec!865 thiss!17113 lt!602361 0 (BalanceConc!11973 Empty!6014)))))

(declare-fun print!1343 (LexerInterface!2812 BalanceConc!11974) BalanceConc!11972)

(assert (=> b!1639757 (= lt!602352 (print!1343 thiss!17113 lt!602361))))

(declare-fun singletonSeq!1644 (Token!5932) BalanceConc!11974)

(assert (=> b!1639757 (= lt!602361 (singletonSeq!1644 (h!23463 tokens!457)))))

(declare-fun lt!602345 () List!18130)

(declare-fun maxPrefix!1376 (LexerInterface!2812 List!18131 List!18130) Option!3409)

(assert (=> b!1639757 (= lt!602356 (maxPrefix!1376 thiss!17113 rules!1846 lt!602345))))

(declare-fun e!1051579 () Bool)

(assert (=> b!1639758 (= e!1051579 (and tp!475102 tp!475100))))

(declare-fun b!1639759 () Bool)

(declare-fun res!734819 () Bool)

(assert (=> b!1639759 (=> (not res!734819) (not e!1051577))))

(declare-fun head!3563 (List!18130) C!9196)

(assert (=> b!1639759 (= res!734819 (= lt!602367 (Cons!18060 (head!3563 (originalCharacters!3997 (h!23463 (t!149925 tokens!457)))) Nil!18060)))))

(declare-fun b!1639760 () Bool)

(declare-fun res!734810 () Bool)

(assert (=> b!1639760 (=> res!734810 e!1051574)))

(declare-fun maxPrefixZipper!340 (LexerInterface!2812 List!18131 List!18130) Option!3409)

(assert (=> b!1639760 (= res!734810 (not (= (h!23463 tokens!457) (_1!10253 (get!5252 (maxPrefixZipper!340 thiss!17113 rules!1846 lt!602345))))))))

(declare-fun b!1639761 () Bool)

(declare-fun res!734799 () Bool)

(assert (=> b!1639761 (=> (not res!734799) (not e!1051590))))

(get-info :version)

(assert (=> b!1639761 (= res!734799 (and (not ((_ is Nil!18062) tokens!457)) (not ((_ is Nil!18062) (t!149925 tokens!457)))))))

(declare-fun b!1639762 () Bool)

(assert (=> b!1639762 (= e!1051585 e!1051572)))

(declare-fun res!734803 () Bool)

(assert (=> b!1639762 (=> res!734803 e!1051572)))

(declare-fun lt!602353 () BalanceConc!11972)

(declare-fun prefixMatchZipperSequence!591 (Regex!4511 BalanceConc!11972) Bool)

(declare-fun ++!4850 (BalanceConc!11972 BalanceConc!11972) BalanceConc!11972)

(assert (=> b!1639762 (= res!734803 (prefixMatchZipperSequence!591 lt!602360 (++!4850 lt!602353 lt!602373)))))

(declare-fun singletonSeq!1645 (C!9196) BalanceConc!11972)

(declare-fun apply!4698 (BalanceConc!11972 Int) C!9196)

(declare-fun charsOf!1832 (Token!5932) BalanceConc!11972)

(assert (=> b!1639762 (= lt!602373 (singletonSeq!1645 (apply!4698 (charsOf!1832 (h!23463 (t!149925 tokens!457))) 0)))))

(declare-fun rulesRegex!573 (LexerInterface!2812 List!18131) Regex!4511)

(assert (=> b!1639762 (= lt!602360 (rulesRegex!573 thiss!17113 rules!1846))))

(declare-fun b!1639763 () Bool)

(declare-fun res!734813 () Bool)

(assert (=> b!1639763 (=> res!734813 e!1051575)))

(declare-fun lt!602363 () BalanceConc!11972)

(assert (=> b!1639763 (= res!734813 (not (= (list!7128 (_1!10254 (lex!1296 thiss!17113 rules!1846 lt!602363))) (list!7128 (prepend!729 (_1!10254 lt!602349) (h!23463 tokens!457))))))))

(declare-fun res!734822 () Bool)

(assert (=> start!156714 (=> (not res!734822) (not e!1051590))))

(assert (=> start!156714 (= res!734822 ((_ is Lexer!2810) thiss!17113))))

(assert (=> start!156714 e!1051590))

(assert (=> start!156714 true))

(declare-fun e!1051594 () Bool)

(assert (=> start!156714 e!1051594))

(declare-fun e!1051593 () Bool)

(assert (=> start!156714 e!1051593))

(declare-fun b!1639764 () Bool)

(declare-fun tp!475101 () Bool)

(declare-fun e!1051578 () Bool)

(declare-fun inv!23400 (String!20697) Bool)

(declare-fun inv!23403 (TokenValueInjection!6206) Bool)

(assert (=> b!1639764 (= e!1051578 (and tp!475101 (inv!23400 (tag!3463 (h!23462 rules!1846))) (inv!23403 (transformation!3183 (h!23462 rules!1846))) e!1051579))))

(declare-fun b!1639765 () Bool)

(assert (=> b!1639765 (= e!1051580 e!1051592)))

(declare-fun res!734802 () Bool)

(assert (=> b!1639765 (=> res!734802 e!1051592)))

(declare-fun lt!602365 () List!18132)

(declare-fun lt!602374 () List!18132)

(assert (=> b!1639765 (= res!734802 (or (not (= lt!602364 lt!602374)) (not (= lt!602374 lt!602365))))))

(declare-fun lt!602358 () BalanceConc!11974)

(assert (=> b!1639765 (= lt!602374 (list!7128 lt!602358))))

(assert (=> b!1639765 (= lt!602364 lt!602365)))

(assert (=> b!1639765 (= lt!602365 (list!7128 lt!602362))))

(declare-fun seqFromList!2116 (List!18132) BalanceConc!11974)

(assert (=> b!1639765 (= lt!602362 (prepend!729 (seqFromList!2116 (t!149925 (t!149925 tokens!457))) (h!23463 (t!149925 tokens!457))))))

(declare-fun lt!602372 () Unit!29658)

(declare-fun seqFromListBHdTlConstructive!260 (Token!5932 List!18132 BalanceConc!11974) Unit!29658)

(assert (=> b!1639765 (= lt!602372 (seqFromListBHdTlConstructive!260 (h!23463 (t!149925 tokens!457)) (t!149925 (t!149925 tokens!457)) (_1!10254 lt!602349)))))

(declare-fun b!1639766 () Bool)

(declare-fun res!734804 () Bool)

(assert (=> b!1639766 (=> (not res!734804) (not e!1051590))))

(declare-fun rulesInvariant!2481 (LexerInterface!2812 List!18131) Bool)

(assert (=> b!1639766 (= res!734804 (rulesInvariant!2481 thiss!17113 rules!1846))))

(declare-fun b!1639767 () Bool)

(assert (=> b!1639767 (= e!1051577 (= lt!602367 (Cons!18060 (head!3563 lt!602369) Nil!18060)))))

(declare-fun b!1639768 () Bool)

(declare-fun tp!475099 () Bool)

(assert (=> b!1639768 (= e!1051570 (and tp!475099 (inv!23400 (tag!3463 (rule!5031 (h!23463 tokens!457)))) (inv!23403 (transformation!3183 (rule!5031 (h!23463 tokens!457)))) e!1051586))))

(declare-fun b!1639769 () Bool)

(declare-fun tp!475097 () Bool)

(declare-fun inv!23404 (Token!5932) Bool)

(assert (=> b!1639769 (= e!1051593 (and (inv!23404 (h!23463 tokens!457)) e!1051571 tp!475097))))

(declare-fun b!1639770 () Bool)

(declare-fun res!734809 () Bool)

(assert (=> b!1639770 (=> (not res!734809) (not e!1051590))))

(declare-fun isEmpty!11093 (List!18131) Bool)

(assert (=> b!1639770 (= res!734809 (not (isEmpty!11093 rules!1846)))))

(declare-fun b!1639771 () Bool)

(assert (=> b!1639771 (= e!1051590 e!1051587)))

(declare-fun res!734821 () Bool)

(assert (=> b!1639771 (=> (not res!734821) (not e!1051587))))

(assert (=> b!1639771 (= res!734821 (= lt!602345 lt!602359))))

(assert (=> b!1639771 (= lt!602359 (++!4849 lt!602376 lt!602369))))

(assert (=> b!1639771 (= lt!602345 (list!7127 lt!602363))))

(assert (=> b!1639771 (= lt!602369 (list!7127 lt!602366))))

(assert (=> b!1639771 (= lt!602376 (list!7127 lt!602353))))

(assert (=> b!1639771 (= lt!602353 (charsOf!1832 (h!23463 tokens!457)))))

(assert (=> b!1639771 (= lt!602349 (lex!1296 thiss!17113 rules!1846 lt!602366))))

(assert (=> b!1639771 (= lt!602366 (print!1343 thiss!17113 lt!602358))))

(assert (=> b!1639771 (= lt!602358 (seqFromList!2116 (t!149925 tokens!457)))))

(assert (=> b!1639771 (= lt!602363 (print!1343 thiss!17113 (seqFromList!2116 tokens!457)))))

(declare-fun b!1639772 () Bool)

(declare-fun res!734808 () Bool)

(assert (=> b!1639772 (=> (not res!734808) (not e!1051590))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!505 (LexerInterface!2812 List!18132 List!18131) Bool)

(assert (=> b!1639772 (= res!734808 (tokensListTwoByTwoPredicateSeparableList!505 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1639773 () Bool)

(assert (=> b!1639773 (= e!1051574 e!1051589)))

(declare-fun res!734798 () Bool)

(assert (=> b!1639773 (=> res!734798 e!1051589)))

(assert (=> b!1639773 (= res!734798 (not (= (h!23463 tokens!457) (_1!10255 lt!602355))))))

(declare-fun get!5253 (Option!3410) tuple2!17706)

(assert (=> b!1639773 (= lt!602355 (get!5253 (maxPrefixZipperSequence!707 thiss!17113 rules!1846 lt!602363)))))

(declare-fun b!1639774 () Bool)

(declare-fun tp!475094 () Bool)

(assert (=> b!1639774 (= e!1051594 (and e!1051578 tp!475094))))

(declare-fun b!1639775 () Bool)

(declare-fun matchR!2010 (Regex!4511 List!18130) Bool)

(assert (=> b!1639775 (= e!1051591 (matchR!2010 (regex!3183 (rule!5031 (h!23463 tokens!457))) lt!602376))))

(declare-fun b!1639776 () Bool)

(assert (=> b!1639776 (= e!1051576 e!1051583)))

(declare-fun res!734814 () Bool)

(assert (=> b!1639776 (=> res!734814 e!1051583)))

(assert (=> b!1639776 (= res!734814 (prefixMatch!446 lt!602360 (++!4849 (originalCharacters!3997 (h!23463 tokens!457)) lt!602344)))))

(assert (=> b!1639776 e!1051591))

(declare-fun res!734812 () Bool)

(assert (=> b!1639776 (=> (not res!734812) (not e!1051591))))

(assert (=> b!1639776 (= res!734812 (= (_1!10253 lt!602348) (h!23463 tokens!457)))))

(declare-fun lt!602370 () Option!3409)

(assert (=> b!1639776 (= lt!602348 (get!5252 lt!602370))))

(assert (=> b!1639776 (isDefined!2776 lt!602370)))

(assert (=> b!1639776 (= lt!602370 (maxPrefix!1376 thiss!17113 rules!1846 lt!602376))))

(assert (=> b!1639776 (isDefined!2776 (maxPrefix!1376 thiss!17113 rules!1846 (originalCharacters!3997 (h!23463 tokens!457))))))

(assert (= (and start!156714 res!734822) b!1639770))

(assert (= (and b!1639770 res!734809) b!1639766))

(assert (= (and b!1639766 res!734804) b!1639747))

(assert (= (and b!1639747 res!734817) b!1639772))

(assert (= (and b!1639772 res!734808) b!1639761))

(assert (= (and b!1639761 res!734799) b!1639771))

(assert (= (and b!1639771 res!734821) b!1639749))

(assert (= (and b!1639749 (not res!734806)) b!1639765))

(assert (= (and b!1639765 (not res!734802)) b!1639745))

(assert (= (and b!1639745 (not res!734811)) b!1639757))

(assert (= (and b!1639757 (not res!734816)) b!1639754))

(assert (= (and b!1639754 (not res!734820)) b!1639744))

(assert (= (and b!1639744 (not res!734797)) b!1639742))

(assert (= (and b!1639742 (not res!734796)) b!1639762))

(assert (= (and b!1639762 (not res!734803)) b!1639755))

(assert (= (and b!1639755 (not res!734818)) b!1639751))

(assert (= (and b!1639751 res!734805) b!1639759))

(assert (= (and b!1639759 res!734819) b!1639767))

(assert (= (and b!1639751 (not res!734807)) b!1639776))

(assert (= (and b!1639776 res!734812) b!1639743))

(assert (= (and b!1639743 res!734800) b!1639775))

(assert (= (and b!1639776 (not res!734814)) b!1639753))

(assert (= (and b!1639753 (not res!734815)) b!1639748))

(assert (= (and b!1639748 (not res!734795)) b!1639760))

(assert (= (and b!1639760 (not res!734810)) b!1639773))

(assert (= (and b!1639773 (not res!734798)) b!1639746))

(assert (= (and b!1639746 (not res!734801)) b!1639763))

(assert (= (and b!1639763 (not res!734813)) b!1639752))

(assert (= b!1639764 b!1639758))

(assert (= b!1639774 b!1639764))

(assert (= (and start!156714 ((_ is Cons!18061) rules!1846)) b!1639774))

(assert (= b!1639768 b!1639750))

(assert (= b!1639756 b!1639768))

(assert (= b!1639769 b!1639756))

(assert (= (and start!156714 ((_ is Cons!18062) tokens!457)) b!1639769))

(declare-fun m!1979575 () Bool)

(assert (=> b!1639743 m!1979575))

(declare-fun m!1979577 () Bool)

(assert (=> b!1639748 m!1979577))

(declare-fun m!1979579 () Bool)

(assert (=> b!1639748 m!1979579))

(declare-fun m!1979581 () Bool)

(assert (=> b!1639762 m!1979581))

(declare-fun m!1979583 () Bool)

(assert (=> b!1639762 m!1979583))

(declare-fun m!1979585 () Bool)

(assert (=> b!1639762 m!1979585))

(declare-fun m!1979587 () Bool)

(assert (=> b!1639762 m!1979587))

(assert (=> b!1639762 m!1979583))

(declare-fun m!1979589 () Bool)

(assert (=> b!1639762 m!1979589))

(declare-fun m!1979591 () Bool)

(assert (=> b!1639762 m!1979591))

(assert (=> b!1639762 m!1979585))

(assert (=> b!1639762 m!1979591))

(declare-fun m!1979593 () Bool)

(assert (=> b!1639771 m!1979593))

(declare-fun m!1979595 () Bool)

(assert (=> b!1639771 m!1979595))

(declare-fun m!1979597 () Bool)

(assert (=> b!1639771 m!1979597))

(declare-fun m!1979599 () Bool)

(assert (=> b!1639771 m!1979599))

(declare-fun m!1979601 () Bool)

(assert (=> b!1639771 m!1979601))

(declare-fun m!1979603 () Bool)

(assert (=> b!1639771 m!1979603))

(declare-fun m!1979605 () Bool)

(assert (=> b!1639771 m!1979605))

(declare-fun m!1979607 () Bool)

(assert (=> b!1639771 m!1979607))

(declare-fun m!1979609 () Bool)

(assert (=> b!1639771 m!1979609))

(declare-fun m!1979611 () Bool)

(assert (=> b!1639771 m!1979611))

(assert (=> b!1639771 m!1979595))

(declare-fun m!1979613 () Bool)

(assert (=> b!1639764 m!1979613))

(declare-fun m!1979615 () Bool)

(assert (=> b!1639764 m!1979615))

(declare-fun m!1979617 () Bool)

(assert (=> b!1639768 m!1979617))

(declare-fun m!1979619 () Bool)

(assert (=> b!1639768 m!1979619))

(declare-fun m!1979621 () Bool)

(assert (=> b!1639770 m!1979621))

(declare-fun m!1979623 () Bool)

(assert (=> b!1639776 m!1979623))

(declare-fun m!1979625 () Bool)

(assert (=> b!1639776 m!1979625))

(declare-fun m!1979627 () Bool)

(assert (=> b!1639776 m!1979627))

(declare-fun m!1979629 () Bool)

(assert (=> b!1639776 m!1979629))

(declare-fun m!1979631 () Bool)

(assert (=> b!1639776 m!1979631))

(assert (=> b!1639776 m!1979625))

(declare-fun m!1979633 () Bool)

(assert (=> b!1639776 m!1979633))

(declare-fun m!1979635 () Bool)

(assert (=> b!1639776 m!1979635))

(assert (=> b!1639776 m!1979629))

(declare-fun m!1979637 () Bool)

(assert (=> b!1639773 m!1979637))

(assert (=> b!1639773 m!1979637))

(declare-fun m!1979639 () Bool)

(assert (=> b!1639773 m!1979639))

(declare-fun m!1979641 () Bool)

(assert (=> b!1639756 m!1979641))

(declare-fun m!1979643 () Bool)

(assert (=> b!1639744 m!1979643))

(assert (=> b!1639744 m!1979643))

(declare-fun m!1979645 () Bool)

(assert (=> b!1639744 m!1979645))

(declare-fun m!1979647 () Bool)

(assert (=> b!1639744 m!1979647))

(declare-fun m!1979649 () Bool)

(assert (=> b!1639766 m!1979649))

(declare-fun m!1979651 () Bool)

(assert (=> b!1639760 m!1979651))

(assert (=> b!1639760 m!1979651))

(declare-fun m!1979653 () Bool)

(assert (=> b!1639760 m!1979653))

(declare-fun m!1979655 () Bool)

(assert (=> b!1639775 m!1979655))

(declare-fun m!1979657 () Bool)

(assert (=> b!1639759 m!1979657))

(declare-fun m!1979659 () Bool)

(assert (=> b!1639746 m!1979659))

(declare-fun m!1979661 () Bool)

(assert (=> b!1639751 m!1979661))

(assert (=> b!1639751 m!1979661))

(declare-fun m!1979663 () Bool)

(assert (=> b!1639751 m!1979663))

(assert (=> b!1639751 m!1979663))

(declare-fun m!1979665 () Bool)

(assert (=> b!1639751 m!1979665))

(declare-fun m!1979667 () Bool)

(assert (=> b!1639751 m!1979667))

(declare-fun m!1979669 () Bool)

(assert (=> b!1639745 m!1979669))

(declare-fun m!1979671 () Bool)

(assert (=> b!1639747 m!1979671))

(declare-fun m!1979673 () Bool)

(assert (=> b!1639749 m!1979673))

(declare-fun m!1979675 () Bool)

(assert (=> b!1639749 m!1979675))

(declare-fun m!1979677 () Bool)

(assert (=> b!1639749 m!1979677))

(declare-fun m!1979679 () Bool)

(assert (=> b!1639749 m!1979679))

(declare-fun m!1979681 () Bool)

(assert (=> b!1639757 m!1979681))

(declare-fun m!1979683 () Bool)

(assert (=> b!1639757 m!1979683))

(declare-fun m!1979685 () Bool)

(assert (=> b!1639757 m!1979685))

(declare-fun m!1979687 () Bool)

(assert (=> b!1639757 m!1979687))

(declare-fun m!1979689 () Bool)

(assert (=> b!1639757 m!1979689))

(declare-fun m!1979691 () Bool)

(assert (=> b!1639757 m!1979691))

(declare-fun m!1979693 () Bool)

(assert (=> b!1639753 m!1979693))

(assert (=> b!1639753 m!1979693))

(declare-fun m!1979695 () Bool)

(assert (=> b!1639753 m!1979695))

(declare-fun m!1979697 () Bool)

(assert (=> b!1639763 m!1979697))

(declare-fun m!1979699 () Bool)

(assert (=> b!1639763 m!1979699))

(declare-fun m!1979701 () Bool)

(assert (=> b!1639763 m!1979701))

(assert (=> b!1639763 m!1979701))

(declare-fun m!1979703 () Bool)

(assert (=> b!1639763 m!1979703))

(declare-fun m!1979705 () Bool)

(assert (=> b!1639754 m!1979705))

(declare-fun m!1979707 () Bool)

(assert (=> b!1639755 m!1979707))

(assert (=> b!1639755 m!1979707))

(declare-fun m!1979709 () Bool)

(assert (=> b!1639755 m!1979709))

(declare-fun m!1979711 () Bool)

(assert (=> b!1639755 m!1979711))

(declare-fun m!1979713 () Bool)

(assert (=> b!1639767 m!1979713))

(declare-fun m!1979715 () Bool)

(assert (=> b!1639769 m!1979715))

(declare-fun m!1979717 () Bool)

(assert (=> b!1639765 m!1979717))

(declare-fun m!1979719 () Bool)

(assert (=> b!1639765 m!1979719))

(declare-fun m!1979721 () Bool)

(assert (=> b!1639765 m!1979721))

(declare-fun m!1979723 () Bool)

(assert (=> b!1639765 m!1979723))

(declare-fun m!1979725 () Bool)

(assert (=> b!1639765 m!1979725))

(assert (=> b!1639765 m!1979719))

(declare-fun m!1979727 () Bool)

(assert (=> b!1639742 m!1979727))

(declare-fun m!1979729 () Bool)

(assert (=> b!1639742 m!1979729))

(declare-fun m!1979731 () Bool)

(assert (=> b!1639772 m!1979731))

(declare-fun m!1979733 () Bool)

(assert (=> b!1639752 m!1979733))

(assert (=> b!1639752 m!1979733))

(declare-fun m!1979735 () Bool)

(assert (=> b!1639752 m!1979735))

(check-sat (not b!1639765) (not b!1639776) b_and!116195 (not b!1639767) (not b!1639768) b_and!116189 (not b!1639748) (not b!1639774) b_and!116191 (not b!1639756) (not b!1639751) (not b!1639743) (not b!1639769) (not b!1639753) (not b!1639747) (not b!1639773) (not b!1639764) (not b!1639771) (not b!1639755) (not b!1639772) (not b!1639752) (not b_next!45081) (not b!1639775) (not b!1639759) (not b!1639754) (not b!1639745) (not b!1639757) (not b!1639762) (not b!1639766) (not b!1639763) b_and!116193 (not b!1639760) (not b!1639770) (not b!1639744) (not b!1639749) (not b!1639742) (not b_next!45083) (not b_next!45079) (not b!1639746) (not b_next!45085))
(check-sat b_and!116195 (not b_next!45081) b_and!116189 b_and!116193 b_and!116191 (not b_next!45083) (not b_next!45079) (not b_next!45085))
