; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!155178 () Bool)

(assert start!155178)

(declare-fun b!1629881 () Bool)

(declare-fun b_free!43975 () Bool)

(declare-fun b_next!44679 () Bool)

(assert (=> b!1629881 (= b_free!43975 (not b_next!44679))))

(declare-fun tp!473314 () Bool)

(declare-fun b_and!115597 () Bool)

(assert (=> b!1629881 (= tp!473314 b_and!115597)))

(declare-fun b_free!43977 () Bool)

(declare-fun b_next!44681 () Bool)

(assert (=> b!1629881 (= b_free!43977 (not b_next!44681))))

(declare-fun tp!473318 () Bool)

(declare-fun b_and!115599 () Bool)

(assert (=> b!1629881 (= tp!473318 b_and!115599)))

(declare-fun b!1629872 () Bool)

(declare-fun b_free!43979 () Bool)

(declare-fun b_next!44683 () Bool)

(assert (=> b!1629872 (= b_free!43979 (not b_next!44683))))

(declare-fun tp!473316 () Bool)

(declare-fun b_and!115601 () Bool)

(assert (=> b!1629872 (= tp!473316 b_and!115601)))

(declare-fun b_free!43981 () Bool)

(declare-fun b_next!44685 () Bool)

(assert (=> b!1629872 (= b_free!43981 (not b_next!44685))))

(declare-fun tp!473315 () Bool)

(declare-fun b_and!115603 () Bool)

(assert (=> b!1629872 (= tp!473315 b_and!115603)))

(declare-fun b!1629869 () Bool)

(declare-fun e!1045264 () Bool)

(declare-fun e!1045260 () Bool)

(declare-fun tp!473319 () Bool)

(assert (=> b!1629869 (= e!1045264 (and e!1045260 tp!473319))))

(declare-fun b!1629870 () Bool)

(declare-fun e!1045251 () Bool)

(declare-fun e!1045266 () Bool)

(assert (=> b!1629870 (= e!1045251 e!1045266)))

(declare-fun res!728939 () Bool)

(assert (=> b!1629870 (=> res!728939 e!1045266)))

(declare-datatypes ((List!17945 0))(
  ( (Nil!17875) (Cons!17875 (h!23276 (_ BitVec 16)) (t!149402 List!17945)) )
))
(declare-datatypes ((TokenValue!3239 0))(
  ( (FloatLiteralValue!6478 (text!23118 List!17945)) (TokenValueExt!3238 (__x!11780 Int)) (Broken!16195 (value!99393 List!17945)) (Object!3308) (End!3239) (Def!3239) (Underscore!3239) (Match!3239) (Else!3239) (Error!3239) (Case!3239) (If!3239) (Extends!3239) (Abstract!3239) (Class!3239) (Val!3239) (DelimiterValue!6478 (del!3299 List!17945)) (KeywordValue!3245 (value!99394 List!17945)) (CommentValue!6478 (value!99395 List!17945)) (WhitespaceValue!6478 (value!99396 List!17945)) (IndentationValue!3239 (value!99397 List!17945)) (String!20526) (Int32!3239) (Broken!16196 (value!99398 List!17945)) (Boolean!3240) (Unit!29048) (OperatorValue!3242 (op!3299 List!17945)) (IdentifierValue!6478 (value!99399 List!17945)) (IdentifierValue!6479 (value!99400 List!17945)) (WhitespaceValue!6479 (value!99401 List!17945)) (True!6478) (False!6478) (Broken!16197 (value!99402 List!17945)) (Broken!16198 (value!99403 List!17945)) (True!6479) (RightBrace!3239) (RightBracket!3239) (Colon!3239) (Null!3239) (Comma!3239) (LeftBracket!3239) (False!6479) (LeftBrace!3239) (ImaginaryLiteralValue!3239 (text!23119 List!17945)) (StringLiteralValue!9717 (value!99404 List!17945)) (EOFValue!3239 (value!99405 List!17945)) (IdentValue!3239 (value!99406 List!17945)) (DelimiterValue!6479 (value!99407 List!17945)) (DedentValue!3239 (value!99408 List!17945)) (NewLineValue!3239 (value!99409 List!17945)) (IntegerValue!9717 (value!99410 (_ BitVec 32)) (text!23120 List!17945)) (IntegerValue!9718 (value!99411 Int) (text!23121 List!17945)) (Times!3239) (Or!3239) (Equal!3239) (Minus!3239) (Broken!16199 (value!99412 List!17945)) (And!3239) (Div!3239) (LessEqual!3239) (Mod!3239) (Concat!7716) (Not!3239) (Plus!3239) (SpaceValue!3239 (value!99413 List!17945)) (IntegerValue!9719 (value!99414 Int) (text!23122 List!17945)) (StringLiteralValue!9718 (text!23123 List!17945)) (FloatLiteralValue!6479 (text!23124 List!17945)) (BytesLiteralValue!3239 (value!99415 List!17945)) (CommentValue!6479 (value!99416 List!17945)) (StringLiteralValue!9719 (value!99417 List!17945)) (ErrorTokenValue!3239 (msg!3300 List!17945)) )
))
(declare-datatypes ((C!9128 0))(
  ( (C!9129 (val!5160 Int)) )
))
(declare-datatypes ((List!17946 0))(
  ( (Nil!17876) (Cons!17876 (h!23277 C!9128) (t!149403 List!17946)) )
))
(declare-datatypes ((IArray!11897 0))(
  ( (IArray!11898 (innerList!6006 List!17946)) )
))
(declare-datatypes ((Conc!5946 0))(
  ( (Node!5946 (left!14362 Conc!5946) (right!14692 Conc!5946) (csize!12122 Int) (cheight!6157 Int)) (Leaf!8741 (xs!8782 IArray!11897) (csize!12123 Int)) (Empty!5946) )
))
(declare-datatypes ((BalanceConc!11836 0))(
  ( (BalanceConc!11837 (c!265359 Conc!5946)) )
))
(declare-datatypes ((Regex!4477 0))(
  ( (ElementMatch!4477 (c!265360 C!9128)) (Concat!7717 (regOne!9466 Regex!4477) (regTwo!9466 Regex!4477)) (EmptyExpr!4477) (Star!4477 (reg!4806 Regex!4477)) (EmptyLang!4477) (Union!4477 (regOne!9467 Regex!4477) (regTwo!9467 Regex!4477)) )
))
(declare-datatypes ((String!20527 0))(
  ( (String!20528 (value!99418 String)) )
))
(declare-datatypes ((TokenValueInjection!6138 0))(
  ( (TokenValueInjection!6139 (toValue!4580 Int) (toChars!4439 Int)) )
))
(declare-datatypes ((Rule!6098 0))(
  ( (Rule!6099 (regex!3149 Regex!4477) (tag!3429 String!20527) (isSeparator!3149 Bool) (transformation!3149 TokenValueInjection!6138)) )
))
(declare-datatypes ((Token!5864 0))(
  ( (Token!5865 (value!99419 TokenValue!3239) (rule!4981 Rule!6098) (size!14298 Int) (originalCharacters!3963 List!17946)) )
))
(declare-datatypes ((tuple2!17466 0))(
  ( (tuple2!17467 (_1!10135 Token!5864) (_2!10135 List!17946)) )
))
(declare-datatypes ((Option!3325 0))(
  ( (None!3324) (Some!3324 (v!24377 tuple2!17466)) )
))
(declare-fun lt!590576 () Option!3325)

(declare-fun isDefined!2692 (Option!3325) Bool)

(assert (=> b!1629870 (= res!728939 (not (isDefined!2692 lt!590576)))))

(declare-datatypes ((Unit!29049 0))(
  ( (Unit!29050) )
))
(declare-fun lt!590584 () Unit!29049)

(declare-fun lt!590590 () List!17946)

(declare-datatypes ((List!17947 0))(
  ( (Nil!17877) (Cons!17877 (h!23278 Rule!6098) (t!149404 List!17947)) )
))
(declare-fun rules!1846 () List!17947)

(declare-fun lt!590589 () List!17946)

(declare-datatypes ((LexerInterface!2778 0))(
  ( (LexerInterfaceExt!2775 (__x!11781 Int)) (Lexer!2776) )
))
(declare-fun thiss!17113 () LexerInterface!2778)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!352 (LexerInterface!2778 List!17947 List!17946 List!17946) Unit!29049)

(assert (=> b!1629870 (= lt!590584 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!352 thiss!17113 rules!1846 lt!590590 lt!590589))))

(declare-fun b!1629871 () Bool)

(declare-fun e!1045265 () Bool)

(declare-fun lt!590579 () List!17946)

(declare-fun head!3462 (List!17946) C!9128)

(assert (=> b!1629871 (= e!1045265 (= lt!590579 (Cons!17876 (head!3462 lt!590589) Nil!17876)))))

(declare-fun e!1045250 () Bool)

(assert (=> b!1629872 (= e!1045250 (and tp!473316 tp!473315))))

(declare-fun res!728937 () Bool)

(declare-fun e!1045255 () Bool)

(assert (=> start!155178 (=> (not res!728937) (not e!1045255))))

(get-info :version)

(assert (=> start!155178 (= res!728937 ((_ is Lexer!2776) thiss!17113))))

(assert (=> start!155178 e!1045255))

(assert (=> start!155178 true))

(assert (=> start!155178 e!1045264))

(declare-fun e!1045248 () Bool)

(assert (=> start!155178 e!1045248))

(declare-fun b!1629873 () Bool)

(declare-fun e!1045252 () Bool)

(assert (=> b!1629873 (= e!1045266 e!1045252)))

(declare-fun res!728953 () Bool)

(assert (=> b!1629873 (=> res!728953 e!1045252)))

(declare-fun lt!590571 () BalanceConc!11836)

(declare-fun lt!590585 () BalanceConc!11836)

(declare-fun lt!590574 () Regex!4477)

(declare-fun prefixMatchZipperSequence!541 (Regex!4477 BalanceConc!11836) Bool)

(declare-fun ++!4765 (BalanceConc!11836 BalanceConc!11836) BalanceConc!11836)

(assert (=> b!1629873 (= res!728953 (prefixMatchZipperSequence!541 lt!590574 (++!4765 lt!590585 lt!590571)))))

(declare-datatypes ((List!17948 0))(
  ( (Nil!17878) (Cons!17878 (h!23279 Token!5864) (t!149405 List!17948)) )
))
(declare-fun tokens!457 () List!17948)

(declare-fun singletonSeq!1576 (C!9128) BalanceConc!11836)

(declare-fun apply!4586 (BalanceConc!11836 Int) C!9128)

(declare-fun charsOf!1798 (Token!5864) BalanceConc!11836)

(assert (=> b!1629873 (= lt!590571 (singletonSeq!1576 (apply!4586 (charsOf!1798 (h!23279 (t!149405 tokens!457))) 0)))))

(declare-fun rulesRegex!539 (LexerInterface!2778 List!17947) Regex!4477)

(assert (=> b!1629873 (= lt!590574 (rulesRegex!539 thiss!17113 rules!1846))))

(declare-fun b!1629874 () Bool)

(declare-fun res!728951 () Bool)

(declare-fun e!1045261 () Bool)

(assert (=> b!1629874 (=> (not res!728951) (not e!1045261))))

(declare-fun lt!590591 () tuple2!17466)

(declare-fun isEmpty!10909 (List!17946) Bool)

(assert (=> b!1629874 (= res!728951 (isEmpty!10909 (_2!10135 lt!590591)))))

(declare-fun tp!473317 () Bool)

(declare-fun b!1629875 () Bool)

(declare-fun e!1045267 () Bool)

(declare-fun inv!23252 (Token!5864) Bool)

(assert (=> b!1629875 (= e!1045248 (and (inv!23252 (h!23279 tokens!457)) e!1045267 tp!473317))))

(declare-fun b!1629876 () Bool)

(declare-fun res!728948 () Bool)

(assert (=> b!1629876 (=> res!728948 e!1045251)))

(declare-datatypes ((IArray!11899 0))(
  ( (IArray!11900 (innerList!6007 List!17948)) )
))
(declare-datatypes ((Conc!5947 0))(
  ( (Node!5947 (left!14363 Conc!5947) (right!14693 Conc!5947) (csize!12124 Int) (cheight!6158 Int)) (Leaf!8742 (xs!8783 IArray!11899) (csize!12125 Int)) (Empty!5947) )
))
(declare-datatypes ((BalanceConc!11838 0))(
  ( (BalanceConc!11839 (c!265361 Conc!5947)) )
))
(declare-fun isEmpty!10910 (BalanceConc!11838) Bool)

(declare-datatypes ((tuple2!17468 0))(
  ( (tuple2!17469 (_1!10136 BalanceConc!11838) (_2!10136 BalanceConc!11836)) )
))
(declare-fun lex!1262 (LexerInterface!2778 List!17947 BalanceConc!11836) tuple2!17468)

(declare-fun seqFromList!2047 (List!17946) BalanceConc!11836)

(assert (=> b!1629876 (= res!728948 (isEmpty!10910 (_1!10136 (lex!1262 thiss!17113 rules!1846 (seqFromList!2047 lt!590590)))))))

(declare-fun b!1629877 () Bool)

(declare-fun res!728943 () Bool)

(assert (=> b!1629877 (=> (not res!728943) (not e!1045265))))

(assert (=> b!1629877 (= res!728943 (= lt!590579 (Cons!17876 (head!3462 (originalCharacters!3963 (h!23279 (t!149405 tokens!457)))) Nil!17876)))))

(declare-fun b!1629878 () Bool)

(declare-fun res!728949 () Bool)

(assert (=> b!1629878 (=> (not res!728949) (not e!1045255))))

(declare-fun isEmpty!10911 (List!17947) Bool)

(assert (=> b!1629878 (= res!728949 (not (isEmpty!10911 rules!1846)))))

(declare-fun e!1045263 () Bool)

(declare-fun b!1629879 () Bool)

(declare-fun tp!473312 () Bool)

(declare-fun inv!21 (TokenValue!3239) Bool)

(assert (=> b!1629879 (= e!1045267 (and (inv!21 (value!99419 (h!23279 tokens!457))) e!1045263 tp!473312))))

(declare-fun b!1629880 () Bool)

(declare-fun res!728954 () Bool)

(assert (=> b!1629880 (=> res!728954 e!1045251)))

(declare-fun rulesProduceIndividualToken!1430 (LexerInterface!2778 List!17947 Token!5864) Bool)

(assert (=> b!1629880 (= res!728954 (not (rulesProduceIndividualToken!1430 thiss!17113 rules!1846 (h!23279 tokens!457))))))

(declare-fun e!1045258 () Bool)

(assert (=> b!1629881 (= e!1045258 (and tp!473314 tp!473318))))

(declare-fun b!1629882 () Bool)

(declare-fun tp!473320 () Bool)

(declare-fun inv!23249 (String!20527) Bool)

(declare-fun inv!23253 (TokenValueInjection!6138) Bool)

(assert (=> b!1629882 (= e!1045260 (and tp!473320 (inv!23249 (tag!3429 (h!23278 rules!1846))) (inv!23253 (transformation!3149 (h!23278 rules!1846))) e!1045250))))

(declare-fun b!1629883 () Bool)

(declare-fun res!728946 () Bool)

(assert (=> b!1629883 (=> (not res!728946) (not e!1045255))))

(declare-fun rulesInvariant!2447 (LexerInterface!2778 List!17947) Bool)

(assert (=> b!1629883 (= res!728946 (rulesInvariant!2447 thiss!17113 rules!1846))))

(declare-fun b!1629884 () Bool)

(declare-fun res!728955 () Bool)

(assert (=> b!1629884 (=> (not res!728955) (not e!1045255))))

(declare-fun rulesProduceEachTokenIndividuallyList!980 (LexerInterface!2778 List!17947 List!17948) Bool)

(assert (=> b!1629884 (= res!728955 (rulesProduceEachTokenIndividuallyList!980 thiss!17113 rules!1846 tokens!457))))

(declare-fun tp!473313 () Bool)

(declare-fun b!1629885 () Bool)

(assert (=> b!1629885 (= e!1045263 (and tp!473313 (inv!23249 (tag!3429 (rule!4981 (h!23279 tokens!457)))) (inv!23253 (transformation!3149 (rule!4981 (h!23279 tokens!457)))) e!1045258))))

(declare-fun b!1629886 () Bool)

(declare-fun e!1045256 () Bool)

(declare-fun e!1045268 () Bool)

(assert (=> b!1629886 (= e!1045256 e!1045268)))

(declare-fun res!728936 () Bool)

(assert (=> b!1629886 (=> res!728936 e!1045268)))

(declare-fun lt!590568 () List!17948)

(declare-fun lt!590573 () List!17948)

(declare-fun lt!590588 () List!17948)

(assert (=> b!1629886 (= res!728936 (or (not (= lt!590568 lt!590588)) (not (= lt!590588 lt!590573))))))

(declare-fun lt!590581 () BalanceConc!11838)

(declare-fun list!7027 (BalanceConc!11838) List!17948)

(assert (=> b!1629886 (= lt!590588 (list!7027 lt!590581))))

(assert (=> b!1629886 (= lt!590568 lt!590573)))

(declare-fun prepend!679 (BalanceConc!11838 Token!5864) BalanceConc!11838)

(declare-fun seqFromList!2048 (List!17948) BalanceConc!11838)

(assert (=> b!1629886 (= lt!590573 (list!7027 (prepend!679 (seqFromList!2048 (t!149405 (t!149405 tokens!457))) (h!23279 (t!149405 tokens!457)))))))

(declare-fun lt!590587 () Unit!29049)

(declare-fun lt!590570 () tuple2!17468)

(declare-fun seqFromListBHdTlConstructive!226 (Token!5864 List!17948 BalanceConc!11838) Unit!29049)

(assert (=> b!1629886 (= lt!590587 (seqFromListBHdTlConstructive!226 (h!23279 (t!149405 tokens!457)) (t!149405 (t!149405 tokens!457)) (_1!10136 lt!590570)))))

(declare-fun b!1629887 () Bool)

(declare-fun e!1045257 () Bool)

(assert (=> b!1629887 (= e!1045257 (not e!1045256))))

(declare-fun res!728947 () Bool)

(assert (=> b!1629887 (=> res!728947 e!1045256)))

(assert (=> b!1629887 (= res!728947 (not (= lt!590568 (t!149405 tokens!457))))))

(assert (=> b!1629887 (= lt!590568 (list!7027 (_1!10136 lt!590570)))))

(declare-fun lt!590565 () Unit!29049)

(declare-fun theoremInvertabilityWhenTokenListSeparable!223 (LexerInterface!2778 List!17947 List!17948) Unit!29049)

(assert (=> b!1629887 (= lt!590565 (theoremInvertabilityWhenTokenListSeparable!223 thiss!17113 rules!1846 (t!149405 tokens!457)))))

(declare-fun lt!590580 () List!17946)

(declare-fun isPrefix!1409 (List!17946 List!17946) Bool)

(assert (=> b!1629887 (isPrefix!1409 lt!590590 lt!590580)))

(declare-fun lt!590582 () Unit!29049)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!934 (List!17946 List!17946) Unit!29049)

(assert (=> b!1629887 (= lt!590582 (lemmaConcatTwoListThenFirstIsPrefix!934 lt!590590 lt!590589))))

(declare-fun b!1629888 () Bool)

(declare-fun res!728935 () Bool)

(assert (=> b!1629888 (=> (not res!728935) (not e!1045255))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!471 (LexerInterface!2778 List!17948 List!17947) Bool)

(assert (=> b!1629888 (= res!728935 (tokensListTwoByTwoPredicateSeparableList!471 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1629889 () Bool)

(declare-fun e!1045247 () Bool)

(declare-fun e!1045259 () Bool)

(assert (=> b!1629889 (= e!1045247 e!1045259)))

(declare-fun res!728952 () Bool)

(assert (=> b!1629889 (=> res!728952 e!1045259)))

(declare-datatypes ((tuple2!17470 0))(
  ( (tuple2!17471 (_1!10137 Token!5864) (_2!10137 BalanceConc!11836)) )
))
(declare-datatypes ((Option!3326 0))(
  ( (None!3325) (Some!3325 (v!24378 tuple2!17470)) )
))
(declare-fun isDefined!2693 (Option!3326) Bool)

(declare-fun maxPrefixZipperSequence!673 (LexerInterface!2778 List!17947 BalanceConc!11836) Option!3326)

(assert (=> b!1629889 (= res!728952 (not (isDefined!2693 (maxPrefixZipperSequence!673 thiss!17113 rules!1846 (seqFromList!2047 (originalCharacters!3963 (h!23279 tokens!457)))))))))

(declare-fun lt!590569 () List!17946)

(assert (=> b!1629889 (= lt!590579 lt!590569)))

(declare-fun lt!590572 () BalanceConc!11836)

(declare-fun head!3463 (BalanceConc!11836) C!9128)

(assert (=> b!1629889 (= lt!590569 (Cons!17876 (head!3463 lt!590572) Nil!17876))))

(assert (=> b!1629889 e!1045265))

(declare-fun res!728942 () Bool)

(assert (=> b!1629889 (=> (not res!728942) (not e!1045265))))

(assert (=> b!1629889 (= res!728942 (= lt!590590 (originalCharacters!3963 (h!23279 tokens!457))))))

(declare-fun b!1629890 () Bool)

(declare-fun matchR!1976 (Regex!4477 List!17946) Bool)

(assert (=> b!1629890 (= e!1045261 (matchR!1976 (regex!3149 (rule!4981 (h!23279 tokens!457))) lt!590590))))

(declare-fun b!1629891 () Bool)

(assert (=> b!1629891 (= e!1045252 e!1045247)))

(declare-fun res!728940 () Bool)

(assert (=> b!1629891 (=> res!728940 e!1045247)))

(declare-fun prefixMatch!412 (Regex!4477 List!17946) Bool)

(declare-fun ++!4766 (List!17946 List!17946) List!17946)

(assert (=> b!1629891 (= res!728940 (prefixMatch!412 lt!590574 (++!4766 lt!590590 lt!590579)))))

(declare-fun list!7028 (BalanceConc!11836) List!17946)

(assert (=> b!1629891 (= lt!590579 (list!7028 lt!590571))))

(declare-fun b!1629892 () Bool)

(assert (=> b!1629892 (= e!1045255 e!1045257)))

(declare-fun res!728956 () Bool)

(assert (=> b!1629892 (=> (not res!728956) (not e!1045257))))

(declare-fun lt!590592 () List!17946)

(assert (=> b!1629892 (= res!728956 (= lt!590592 lt!590580))))

(assert (=> b!1629892 (= lt!590580 (++!4766 lt!590590 lt!590589))))

(declare-fun lt!590566 () BalanceConc!11836)

(assert (=> b!1629892 (= lt!590592 (list!7028 lt!590566))))

(assert (=> b!1629892 (= lt!590589 (list!7028 lt!590572))))

(assert (=> b!1629892 (= lt!590590 (list!7028 lt!590585))))

(assert (=> b!1629892 (= lt!590585 (charsOf!1798 (h!23279 tokens!457)))))

(assert (=> b!1629892 (= lt!590570 (lex!1262 thiss!17113 rules!1846 lt!590572))))

(declare-fun print!1309 (LexerInterface!2778 BalanceConc!11838) BalanceConc!11836)

(assert (=> b!1629892 (= lt!590572 (print!1309 thiss!17113 lt!590581))))

(assert (=> b!1629892 (= lt!590581 (seqFromList!2048 (t!149405 tokens!457)))))

(assert (=> b!1629892 (= lt!590566 (print!1309 thiss!17113 (seqFromList!2048 tokens!457)))))

(declare-fun b!1629893 () Bool)

(assert (=> b!1629893 (= e!1045268 e!1045251)))

(declare-fun res!728934 () Bool)

(assert (=> b!1629893 (=> res!728934 e!1045251)))

(declare-fun lt!590578 () List!17946)

(declare-fun lt!590583 () List!17946)

(assert (=> b!1629893 (= res!728934 (or (not (= lt!590583 lt!590578)) (not (= lt!590578 lt!590590)) (not (= lt!590583 lt!590590))))))

(declare-fun printList!893 (LexerInterface!2778 List!17948) List!17946)

(assert (=> b!1629893 (= lt!590578 (printList!893 thiss!17113 (Cons!17878 (h!23279 tokens!457) Nil!17878)))))

(declare-fun lt!590567 () BalanceConc!11836)

(assert (=> b!1629893 (= lt!590583 (list!7028 lt!590567))))

(declare-fun lt!590586 () BalanceConc!11838)

(declare-fun printTailRec!831 (LexerInterface!2778 BalanceConc!11838 Int BalanceConc!11836) BalanceConc!11836)

(assert (=> b!1629893 (= lt!590567 (printTailRec!831 thiss!17113 lt!590586 0 (BalanceConc!11837 Empty!5946)))))

(assert (=> b!1629893 (= lt!590567 (print!1309 thiss!17113 lt!590586))))

(declare-fun singletonSeq!1577 (Token!5864) BalanceConc!11838)

(assert (=> b!1629893 (= lt!590586 (singletonSeq!1577 (h!23279 tokens!457)))))

(declare-fun maxPrefix!1342 (LexerInterface!2778 List!17947 List!17946) Option!3325)

(assert (=> b!1629893 (= lt!590576 (maxPrefix!1342 thiss!17113 rules!1846 lt!590592))))

(declare-fun b!1629894 () Bool)

(declare-fun res!728938 () Bool)

(assert (=> b!1629894 (=> (not res!728938) (not e!1045255))))

(assert (=> b!1629894 (= res!728938 (and (not ((_ is Nil!17878) tokens!457)) (not ((_ is Nil!17878) (t!149405 tokens!457)))))))

(declare-fun b!1629895 () Bool)

(declare-fun e!1045249 () Bool)

(assert (=> b!1629895 (= e!1045259 e!1045249)))

(declare-fun res!728941 () Bool)

(assert (=> b!1629895 (=> res!728941 e!1045249)))

(assert (=> b!1629895 (= res!728941 (prefixMatch!412 lt!590574 (++!4766 (originalCharacters!3963 (h!23279 tokens!457)) lt!590569)))))

(assert (=> b!1629895 e!1045261))

(declare-fun res!728944 () Bool)

(assert (=> b!1629895 (=> (not res!728944) (not e!1045261))))

(assert (=> b!1629895 (= res!728944 (= (_1!10135 lt!590591) (h!23279 tokens!457)))))

(declare-fun lt!590577 () Option!3325)

(declare-fun get!5160 (Option!3325) tuple2!17466)

(assert (=> b!1629895 (= lt!590591 (get!5160 lt!590577))))

(assert (=> b!1629895 (isDefined!2692 lt!590577)))

(assert (=> b!1629895 (= lt!590577 (maxPrefix!1342 thiss!17113 rules!1846 lt!590590))))

(assert (=> b!1629895 (isDefined!2692 (maxPrefix!1342 thiss!17113 rules!1846 (originalCharacters!3963 (h!23279 tokens!457))))))

(declare-fun b!1629896 () Bool)

(declare-fun res!728950 () Bool)

(assert (=> b!1629896 (=> res!728950 e!1045249)))

(assert (=> b!1629896 (= res!728950 (prefixMatch!412 lt!590574 (++!4766 lt!590590 lt!590569)))))

(declare-fun b!1629897 () Bool)

(declare-fun res!728945 () Bool)

(assert (=> b!1629897 (=> res!728945 e!1045268)))

(declare-fun separableTokensPredicate!720 (LexerInterface!2778 Token!5864 Token!5864 List!17947) Bool)

(assert (=> b!1629897 (= res!728945 (not (separableTokensPredicate!720 thiss!17113 (h!23279 tokens!457) (h!23279 (t!149405 tokens!457)) rules!1846)))))

(declare-fun b!1629898 () Bool)

(assert (=> b!1629898 (= e!1045249 true)))

(declare-fun lt!590575 () Unit!29049)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!114 (LexerInterface!2778 List!17947 Token!5864 Rule!6098 List!17946) Unit!29049)

(assert (=> b!1629898 (= lt!590575 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!114 thiss!17113 rules!1846 (h!23279 tokens!457) (rule!4981 (h!23279 tokens!457)) lt!590589))))

(assert (= (and start!155178 res!728937) b!1629878))

(assert (= (and b!1629878 res!728949) b!1629883))

(assert (= (and b!1629883 res!728946) b!1629884))

(assert (= (and b!1629884 res!728955) b!1629888))

(assert (= (and b!1629888 res!728935) b!1629894))

(assert (= (and b!1629894 res!728938) b!1629892))

(assert (= (and b!1629892 res!728956) b!1629887))

(assert (= (and b!1629887 (not res!728947)) b!1629886))

(assert (= (and b!1629886 (not res!728936)) b!1629897))

(assert (= (and b!1629897 (not res!728945)) b!1629893))

(assert (= (and b!1629893 (not res!728934)) b!1629880))

(assert (= (and b!1629880 (not res!728954)) b!1629876))

(assert (= (and b!1629876 (not res!728948)) b!1629870))

(assert (= (and b!1629870 (not res!728939)) b!1629873))

(assert (= (and b!1629873 (not res!728953)) b!1629891))

(assert (= (and b!1629891 (not res!728940)) b!1629889))

(assert (= (and b!1629889 res!728942) b!1629877))

(assert (= (and b!1629877 res!728943) b!1629871))

(assert (= (and b!1629889 (not res!728952)) b!1629895))

(assert (= (and b!1629895 res!728944) b!1629874))

(assert (= (and b!1629874 res!728951) b!1629890))

(assert (= (and b!1629895 (not res!728941)) b!1629896))

(assert (= (and b!1629896 (not res!728950)) b!1629898))

(assert (= b!1629882 b!1629872))

(assert (= b!1629869 b!1629882))

(assert (= (and start!155178 ((_ is Cons!17877) rules!1846)) b!1629869))

(assert (= b!1629885 b!1629881))

(assert (= b!1629879 b!1629885))

(assert (= b!1629875 b!1629879))

(assert (= (and start!155178 ((_ is Cons!17878) tokens!457)) b!1629875))

(declare-fun m!1961831 () Bool)

(assert (=> b!1629890 m!1961831))

(declare-fun m!1961833 () Bool)

(assert (=> b!1629897 m!1961833))

(declare-fun m!1961835 () Bool)

(assert (=> b!1629889 m!1961835))

(assert (=> b!1629889 m!1961835))

(declare-fun m!1961837 () Bool)

(assert (=> b!1629889 m!1961837))

(assert (=> b!1629889 m!1961837))

(declare-fun m!1961839 () Bool)

(assert (=> b!1629889 m!1961839))

(declare-fun m!1961841 () Bool)

(assert (=> b!1629889 m!1961841))

(declare-fun m!1961843 () Bool)

(assert (=> b!1629884 m!1961843))

(declare-fun m!1961845 () Bool)

(assert (=> b!1629880 m!1961845))

(declare-fun m!1961847 () Bool)

(assert (=> b!1629883 m!1961847))

(declare-fun m!1961849 () Bool)

(assert (=> b!1629873 m!1961849))

(declare-fun m!1961851 () Bool)

(assert (=> b!1629873 m!1961851))

(declare-fun m!1961853 () Bool)

(assert (=> b!1629873 m!1961853))

(declare-fun m!1961855 () Bool)

(assert (=> b!1629873 m!1961855))

(declare-fun m!1961857 () Bool)

(assert (=> b!1629873 m!1961857))

(assert (=> b!1629873 m!1961855))

(declare-fun m!1961859 () Bool)

(assert (=> b!1629873 m!1961859))

(assert (=> b!1629873 m!1961851))

(assert (=> b!1629873 m!1961859))

(declare-fun m!1961861 () Bool)

(assert (=> b!1629878 m!1961861))

(declare-fun m!1961863 () Bool)

(assert (=> b!1629896 m!1961863))

(assert (=> b!1629896 m!1961863))

(declare-fun m!1961865 () Bool)

(assert (=> b!1629896 m!1961865))

(declare-fun m!1961867 () Bool)

(assert (=> b!1629888 m!1961867))

(declare-fun m!1961869 () Bool)

(assert (=> b!1629870 m!1961869))

(declare-fun m!1961871 () Bool)

(assert (=> b!1629870 m!1961871))

(declare-fun m!1961873 () Bool)

(assert (=> b!1629874 m!1961873))

(declare-fun m!1961875 () Bool)

(assert (=> b!1629891 m!1961875))

(assert (=> b!1629891 m!1961875))

(declare-fun m!1961877 () Bool)

(assert (=> b!1629891 m!1961877))

(declare-fun m!1961879 () Bool)

(assert (=> b!1629891 m!1961879))

(declare-fun m!1961881 () Bool)

(assert (=> b!1629882 m!1961881))

(declare-fun m!1961883 () Bool)

(assert (=> b!1629882 m!1961883))

(declare-fun m!1961885 () Bool)

(assert (=> b!1629875 m!1961885))

(declare-fun m!1961887 () Bool)

(assert (=> b!1629892 m!1961887))

(declare-fun m!1961889 () Bool)

(assert (=> b!1629892 m!1961889))

(declare-fun m!1961891 () Bool)

(assert (=> b!1629892 m!1961891))

(declare-fun m!1961893 () Bool)

(assert (=> b!1629892 m!1961893))

(declare-fun m!1961895 () Bool)

(assert (=> b!1629892 m!1961895))

(declare-fun m!1961897 () Bool)

(assert (=> b!1629892 m!1961897))

(assert (=> b!1629892 m!1961895))

(declare-fun m!1961899 () Bool)

(assert (=> b!1629892 m!1961899))

(declare-fun m!1961901 () Bool)

(assert (=> b!1629892 m!1961901))

(declare-fun m!1961903 () Bool)

(assert (=> b!1629892 m!1961903))

(declare-fun m!1961905 () Bool)

(assert (=> b!1629892 m!1961905))

(declare-fun m!1961907 () Bool)

(assert (=> b!1629877 m!1961907))

(declare-fun m!1961909 () Bool)

(assert (=> b!1629879 m!1961909))

(declare-fun m!1961911 () Bool)

(assert (=> b!1629898 m!1961911))

(declare-fun m!1961913 () Bool)

(assert (=> b!1629895 m!1961913))

(declare-fun m!1961915 () Bool)

(assert (=> b!1629895 m!1961915))

(declare-fun m!1961917 () Bool)

(assert (=> b!1629895 m!1961917))

(declare-fun m!1961919 () Bool)

(assert (=> b!1629895 m!1961919))

(declare-fun m!1961921 () Bool)

(assert (=> b!1629895 m!1961921))

(assert (=> b!1629895 m!1961919))

(declare-fun m!1961923 () Bool)

(assert (=> b!1629895 m!1961923))

(declare-fun m!1961925 () Bool)

(assert (=> b!1629895 m!1961925))

(assert (=> b!1629895 m!1961915))

(declare-fun m!1961927 () Bool)

(assert (=> b!1629876 m!1961927))

(assert (=> b!1629876 m!1961927))

(declare-fun m!1961929 () Bool)

(assert (=> b!1629876 m!1961929))

(declare-fun m!1961931 () Bool)

(assert (=> b!1629876 m!1961931))

(declare-fun m!1961933 () Bool)

(assert (=> b!1629871 m!1961933))

(declare-fun m!1961935 () Bool)

(assert (=> b!1629886 m!1961935))

(declare-fun m!1961937 () Bool)

(assert (=> b!1629886 m!1961937))

(declare-fun m!1961939 () Bool)

(assert (=> b!1629886 m!1961939))

(declare-fun m!1961941 () Bool)

(assert (=> b!1629886 m!1961941))

(declare-fun m!1961943 () Bool)

(assert (=> b!1629886 m!1961943))

(assert (=> b!1629886 m!1961939))

(assert (=> b!1629886 m!1961941))

(declare-fun m!1961945 () Bool)

(assert (=> b!1629893 m!1961945))

(declare-fun m!1961947 () Bool)

(assert (=> b!1629893 m!1961947))

(declare-fun m!1961949 () Bool)

(assert (=> b!1629893 m!1961949))

(declare-fun m!1961951 () Bool)

(assert (=> b!1629893 m!1961951))

(declare-fun m!1961953 () Bool)

(assert (=> b!1629893 m!1961953))

(declare-fun m!1961955 () Bool)

(assert (=> b!1629893 m!1961955))

(declare-fun m!1961957 () Bool)

(assert (=> b!1629885 m!1961957))

(declare-fun m!1961959 () Bool)

(assert (=> b!1629885 m!1961959))

(declare-fun m!1961961 () Bool)

(assert (=> b!1629887 m!1961961))

(declare-fun m!1961963 () Bool)

(assert (=> b!1629887 m!1961963))

(declare-fun m!1961965 () Bool)

(assert (=> b!1629887 m!1961965))

(declare-fun m!1961967 () Bool)

(assert (=> b!1629887 m!1961967))

(check-sat (not b!1629892) (not b!1629873) (not b!1629878) (not b!1629895) (not b!1629893) b_and!115597 (not b_next!44679) (not b!1629889) (not b!1629879) (not b!1629871) (not b!1629888) (not b!1629870) (not b!1629880) (not b!1629891) (not b!1629890) (not b!1629898) b_and!115601 (not b!1629885) (not b!1629874) (not b_next!44685) (not b_next!44681) (not b!1629882) (not b!1629876) b_and!115603 (not b!1629884) (not b!1629877) (not b!1629897) (not b!1629869) (not b!1629896) (not b!1629887) (not b!1629886) (not b!1629875) (not b_next!44683) (not b!1629883) b_and!115599)
(check-sat b_and!115601 b_and!115603 b_and!115597 (not b_next!44679) (not b_next!44685) (not b_next!44681) (not b_next!44683) b_and!115599)
