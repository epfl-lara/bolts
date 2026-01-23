; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!156518 () Bool)

(assert start!156518)

(declare-fun b!1638321 () Bool)

(declare-fun b_free!44311 () Bool)

(declare-fun b_next!45015 () Bool)

(assert (=> b!1638321 (= b_free!44311 (not b_next!45015))))

(declare-fun tp!474824 () Bool)

(declare-fun b_and!116101 () Bool)

(assert (=> b!1638321 (= tp!474824 b_and!116101)))

(declare-fun b_free!44313 () Bool)

(declare-fun b_next!45017 () Bool)

(assert (=> b!1638321 (= b_free!44313 (not b_next!45017))))

(declare-fun tp!474830 () Bool)

(declare-fun b_and!116103 () Bool)

(assert (=> b!1638321 (= tp!474830 b_and!116103)))

(declare-fun b!1638311 () Bool)

(declare-fun b_free!44315 () Bool)

(declare-fun b_next!45019 () Bool)

(assert (=> b!1638311 (= b_free!44315 (not b_next!45019))))

(declare-fun tp!474826 () Bool)

(declare-fun b_and!116105 () Bool)

(assert (=> b!1638311 (= tp!474826 b_and!116105)))

(declare-fun b_free!44317 () Bool)

(declare-fun b_next!45021 () Bool)

(assert (=> b!1638311 (= b_free!44317 (not b_next!45021))))

(declare-fun tp!474827 () Bool)

(declare-fun b_and!116107 () Bool)

(assert (=> b!1638311 (= tp!474827 b_and!116107)))

(declare-fun tp!474831 () Bool)

(declare-fun e!1050650 () Bool)

(declare-fun b!1638307 () Bool)

(declare-datatypes ((List!18099 0))(
  ( (Nil!18029) (Cons!18029 (h!23430 (_ BitVec 16)) (t!149850 List!18099)) )
))
(declare-datatypes ((TokenValue!3267 0))(
  ( (FloatLiteralValue!6534 (text!23314 List!18099)) (TokenValueExt!3266 (__x!11836 Int)) (Broken!16335 (value!100191 List!18099)) (Object!3336) (End!3267) (Def!3267) (Underscore!3267) (Match!3267) (Else!3267) (Error!3267) (Case!3267) (If!3267) (Extends!3267) (Abstract!3267) (Class!3267) (Val!3267) (DelimiterValue!6534 (del!3327 List!18099)) (KeywordValue!3273 (value!100192 List!18099)) (CommentValue!6534 (value!100193 List!18099)) (WhitespaceValue!6534 (value!100194 List!18099)) (IndentationValue!3267 (value!100195 List!18099)) (String!20666) (Int32!3267) (Broken!16336 (value!100196 List!18099)) (Boolean!3268) (Unit!29575) (OperatorValue!3270 (op!3327 List!18099)) (IdentifierValue!6534 (value!100197 List!18099)) (IdentifierValue!6535 (value!100198 List!18099)) (WhitespaceValue!6535 (value!100199 List!18099)) (True!6534) (False!6534) (Broken!16337 (value!100200 List!18099)) (Broken!16338 (value!100201 List!18099)) (True!6535) (RightBrace!3267) (RightBracket!3267) (Colon!3267) (Null!3267) (Comma!3267) (LeftBracket!3267) (False!6535) (LeftBrace!3267) (ImaginaryLiteralValue!3267 (text!23315 List!18099)) (StringLiteralValue!9801 (value!100202 List!18099)) (EOFValue!3267 (value!100203 List!18099)) (IdentValue!3267 (value!100204 List!18099)) (DelimiterValue!6535 (value!100205 List!18099)) (DedentValue!3267 (value!100206 List!18099)) (NewLineValue!3267 (value!100207 List!18099)) (IntegerValue!9801 (value!100208 (_ BitVec 32)) (text!23316 List!18099)) (IntegerValue!9802 (value!100209 Int) (text!23317 List!18099)) (Times!3267) (Or!3267) (Equal!3267) (Minus!3267) (Broken!16339 (value!100210 List!18099)) (And!3267) (Div!3267) (LessEqual!3267) (Mod!3267) (Concat!7772) (Not!3267) (Plus!3267) (SpaceValue!3267 (value!100211 List!18099)) (IntegerValue!9803 (value!100212 Int) (text!23318 List!18099)) (StringLiteralValue!9802 (text!23319 List!18099)) (FloatLiteralValue!6535 (text!23320 List!18099)) (BytesLiteralValue!3267 (value!100213 List!18099)) (CommentValue!6535 (value!100214 List!18099)) (StringLiteralValue!9803 (value!100215 List!18099)) (ErrorTokenValue!3267 (msg!3328 List!18099)) )
))
(declare-datatypes ((C!9184 0))(
  ( (C!9185 (val!5188 Int)) )
))
(declare-datatypes ((List!18100 0))(
  ( (Nil!18030) (Cons!18030 (h!23431 C!9184) (t!149851 List!18100)) )
))
(declare-datatypes ((IArray!12009 0))(
  ( (IArray!12010 (innerList!6062 List!18100)) )
))
(declare-datatypes ((Conc!6002 0))(
  ( (Node!6002 (left!14460 Conc!6002) (right!14790 Conc!6002) (csize!12234 Int) (cheight!6213 Int)) (Leaf!8811 (xs!8838 IArray!12009) (csize!12235 Int)) (Empty!6002) )
))
(declare-datatypes ((BalanceConc!11948 0))(
  ( (BalanceConc!11949 (c!266523 Conc!6002)) )
))
(declare-datatypes ((Regex!4505 0))(
  ( (ElementMatch!4505 (c!266524 C!9184)) (Concat!7773 (regOne!9522 Regex!4505) (regTwo!9522 Regex!4505)) (EmptyExpr!4505) (Star!4505 (reg!4834 Regex!4505)) (EmptyLang!4505) (Union!4505 (regOne!9523 Regex!4505) (regTwo!9523 Regex!4505)) )
))
(declare-datatypes ((String!20667 0))(
  ( (String!20668 (value!100216 String)) )
))
(declare-datatypes ((TokenValueInjection!6194 0))(
  ( (TokenValueInjection!6195 (toValue!4608 Int) (toChars!4467 Int)) )
))
(declare-datatypes ((Rule!6154 0))(
  ( (Rule!6155 (regex!3177 Regex!4505) (tag!3457 String!20667) (isSeparator!3177 Bool) (transformation!3177 TokenValueInjection!6194)) )
))
(declare-datatypes ((Token!5920 0))(
  ( (Token!5921 (value!100217 TokenValue!3267) (rule!5023 Rule!6154) (size!14368 Int) (originalCharacters!3991 List!18100)) )
))
(declare-datatypes ((List!18101 0))(
  ( (Nil!18031) (Cons!18031 (h!23432 Token!5920) (t!149852 List!18101)) )
))
(declare-fun tokens!457 () List!18101)

(declare-fun e!1050653 () Bool)

(declare-fun inv!23378 (Token!5920) Bool)

(assert (=> b!1638307 (= e!1050653 (and (inv!23378 (h!23432 tokens!457)) e!1050650 tp!474831))))

(declare-fun b!1638308 () Bool)

(declare-fun res!733915 () Bool)

(declare-fun e!1050639 () Bool)

(assert (=> b!1638308 (=> (not res!733915) (not e!1050639))))

(declare-datatypes ((tuple2!17662 0))(
  ( (tuple2!17663 (_1!10233 Token!5920) (_2!10233 List!18100)) )
))
(declare-fun lt!600662 () tuple2!17662)

(declare-fun isEmpty!11063 (List!18100) Bool)

(assert (=> b!1638308 (= res!733915 (isEmpty!11063 (_2!10233 lt!600662)))))

(declare-fun b!1638309 () Bool)

(declare-fun res!733924 () Bool)

(declare-fun e!1050644 () Bool)

(assert (=> b!1638309 (=> (not res!733924) (not e!1050644))))

(declare-fun lt!600669 () List!18100)

(declare-fun head!3546 (List!18100) C!9184)

(assert (=> b!1638309 (= res!733924 (= lt!600669 (Cons!18030 (head!3546 (originalCharacters!3991 (h!23432 (t!149852 tokens!457)))) Nil!18030)))))

(declare-fun b!1638310 () Bool)

(declare-fun res!733920 () Bool)

(declare-fun e!1050656 () Bool)

(assert (=> b!1638310 (=> res!733920 e!1050656)))

(declare-fun lt!600682 () List!18100)

(declare-datatypes ((List!18102 0))(
  ( (Nil!18032) (Cons!18032 (h!23433 Rule!6154) (t!149853 List!18102)) )
))
(declare-fun rules!1846 () List!18102)

(declare-datatypes ((LexerInterface!2806 0))(
  ( (LexerInterfaceExt!2803 (__x!11837 Int)) (Lexer!2804) )
))
(declare-fun thiss!17113 () LexerInterface!2806)

(declare-datatypes ((IArray!12011 0))(
  ( (IArray!12012 (innerList!6063 List!18101)) )
))
(declare-datatypes ((Conc!6003 0))(
  ( (Node!6003 (left!14461 Conc!6003) (right!14791 Conc!6003) (csize!12236 Int) (cheight!6214 Int)) (Leaf!8812 (xs!8839 IArray!12011) (csize!12237 Int)) (Empty!6003) )
))
(declare-datatypes ((BalanceConc!11950 0))(
  ( (BalanceConc!11951 (c!266525 Conc!6003)) )
))
(declare-fun isEmpty!11064 (BalanceConc!11950) Bool)

(declare-datatypes ((tuple2!17664 0))(
  ( (tuple2!17665 (_1!10234 BalanceConc!11950) (_2!10234 BalanceConc!11948)) )
))
(declare-fun lex!1290 (LexerInterface!2806 List!18102 BalanceConc!11948) tuple2!17664)

(declare-fun seqFromList!2103 (List!18100) BalanceConc!11948)

(assert (=> b!1638310 (= res!733920 (isEmpty!11064 (_1!10234 (lex!1290 thiss!17113 rules!1846 (seqFromList!2103 lt!600682)))))))

(declare-fun e!1050658 () Bool)

(assert (=> b!1638311 (= e!1050658 (and tp!474826 tp!474827))))

(declare-fun b!1638313 () Bool)

(declare-fun res!733903 () Bool)

(declare-fun e!1050659 () Bool)

(assert (=> b!1638313 (=> (not res!733903) (not e!1050659))))

(declare-fun rulesProduceEachTokenIndividuallyList!1008 (LexerInterface!2806 List!18102 List!18101) Bool)

(assert (=> b!1638313 (= res!733903 (rulesProduceEachTokenIndividuallyList!1008 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1638314 () Bool)

(declare-fun e!1050651 () Bool)

(declare-fun e!1050660 () Bool)

(assert (=> b!1638314 (= e!1050651 e!1050660)))

(declare-fun res!733901 () Bool)

(assert (=> b!1638314 (=> res!733901 e!1050660)))

(declare-fun lt!600660 () BalanceConc!11948)

(declare-fun lt!600666 () BalanceConc!11948)

(declare-fun lt!600679 () Regex!4505)

(declare-fun prefixMatchZipperSequence!583 (Regex!4505 BalanceConc!11948) Bool)

(declare-fun ++!4835 (BalanceConc!11948 BalanceConc!11948) BalanceConc!11948)

(assert (=> b!1638314 (= res!733901 (prefixMatchZipperSequence!583 lt!600679 (++!4835 lt!600666 lt!600660)))))

(declare-fun singletonSeq!1632 (C!9184) BalanceConc!11948)

(declare-fun apply!4682 (BalanceConc!11948 Int) C!9184)

(declare-fun charsOf!1826 (Token!5920) BalanceConc!11948)

(assert (=> b!1638314 (= lt!600660 (singletonSeq!1632 (apply!4682 (charsOf!1826 (h!23432 (t!149852 tokens!457))) 0)))))

(declare-fun rulesRegex!567 (LexerInterface!2806 List!18102) Regex!4505)

(assert (=> b!1638314 (= lt!600679 (rulesRegex!567 thiss!17113 rules!1846))))

(declare-fun b!1638315 () Bool)

(declare-fun e!1050645 () Bool)

(declare-fun e!1050643 () Bool)

(declare-fun tp!474825 () Bool)

(assert (=> b!1638315 (= e!1050645 (and e!1050643 tp!474825))))

(declare-fun b!1638316 () Bool)

(declare-fun res!733913 () Bool)

(assert (=> b!1638316 (=> (not res!733913) (not e!1050659))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!499 (LexerInterface!2806 List!18101 List!18102) Bool)

(assert (=> b!1638316 (= res!733913 (tokensListTwoByTwoPredicateSeparableList!499 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1638317 () Bool)

(declare-fun e!1050646 () Bool)

(declare-fun e!1050647 () Bool)

(assert (=> b!1638317 (= e!1050646 e!1050647)))

(declare-fun res!733919 () Bool)

(assert (=> b!1638317 (=> res!733919 e!1050647)))

(declare-fun lt!600672 () List!18100)

(declare-fun prefixMatch!440 (Regex!4505 List!18100) Bool)

(declare-fun ++!4836 (List!18100 List!18100) List!18100)

(assert (=> b!1638317 (= res!733919 (prefixMatch!440 lt!600679 (++!4836 (originalCharacters!3991 (h!23432 tokens!457)) lt!600672)))))

(assert (=> b!1638317 e!1050639))

(declare-fun res!733925 () Bool)

(assert (=> b!1638317 (=> (not res!733925) (not e!1050639))))

(assert (=> b!1638317 (= res!733925 (= (_1!10233 lt!600662) (h!23432 tokens!457)))))

(declare-datatypes ((Option!3395 0))(
  ( (None!3394) (Some!3394 (v!24489 tuple2!17662)) )
))
(declare-fun lt!600674 () Option!3395)

(declare-fun get!5235 (Option!3395) tuple2!17662)

(assert (=> b!1638317 (= lt!600662 (get!5235 lt!600674))))

(declare-fun isDefined!2762 (Option!3395) Bool)

(assert (=> b!1638317 (isDefined!2762 lt!600674)))

(declare-fun maxPrefix!1370 (LexerInterface!2806 List!18102 List!18100) Option!3395)

(assert (=> b!1638317 (= lt!600674 (maxPrefix!1370 thiss!17113 rules!1846 lt!600682))))

(assert (=> b!1638317 (isDefined!2762 (maxPrefix!1370 thiss!17113 rules!1846 (originalCharacters!3991 (h!23432 tokens!457))))))

(declare-fun b!1638318 () Bool)

(declare-fun e!1050654 () Bool)

(declare-fun e!1050652 () Bool)

(assert (=> b!1638318 (= e!1050654 e!1050652)))

(declare-fun res!733917 () Bool)

(assert (=> b!1638318 (=> res!733917 e!1050652)))

(declare-datatypes ((tuple2!17666 0))(
  ( (tuple2!17667 (_1!10235 Token!5920) (_2!10235 BalanceConc!11948)) )
))
(declare-fun lt!600686 () tuple2!17666)

(assert (=> b!1638318 (= res!733917 (not (= (h!23432 tokens!457) (_1!10235 lt!600686))))))

(declare-fun lt!600689 () BalanceConc!11948)

(declare-datatypes ((Option!3396 0))(
  ( (None!3395) (Some!3395 (v!24490 tuple2!17666)) )
))
(declare-fun get!5236 (Option!3396) tuple2!17666)

(declare-fun maxPrefixZipperSequence!701 (LexerInterface!2806 List!18102 BalanceConc!11948) Option!3396)

(assert (=> b!1638318 (= lt!600686 (get!5236 (maxPrefixZipperSequence!701 thiss!17113 rules!1846 lt!600689)))))

(declare-fun b!1638319 () Bool)

(declare-fun e!1050637 () Bool)

(assert (=> b!1638319 (= e!1050660 e!1050637)))

(declare-fun res!733909 () Bool)

(assert (=> b!1638319 (=> res!733909 e!1050637)))

(assert (=> b!1638319 (= res!733909 (prefixMatch!440 lt!600679 (++!4836 lt!600682 lt!600669)))))

(declare-fun list!7111 (BalanceConc!11948) List!18100)

(assert (=> b!1638319 (= lt!600669 (list!7111 lt!600660))))

(declare-fun b!1638320 () Bool)

(declare-fun res!733899 () Bool)

(assert (=> b!1638320 (=> (not res!733899) (not e!1050659))))

(get-info :version)

(assert (=> b!1638320 (= res!733899 (and (not ((_ is Nil!18031) tokens!457)) (not ((_ is Nil!18031) (t!149852 tokens!457)))))))

(declare-fun e!1050640 () Bool)

(assert (=> b!1638321 (= e!1050640 (and tp!474824 tp!474830))))

(declare-fun b!1638322 () Bool)

(declare-fun res!733918 () Bool)

(assert (=> b!1638322 (=> res!733918 e!1050647)))

(assert (=> b!1638322 (= res!733918 (prefixMatch!440 lt!600679 (++!4836 lt!600682 lt!600672)))))

(declare-fun b!1638323 () Bool)

(declare-fun res!733922 () Bool)

(assert (=> b!1638323 (=> (not res!733922) (not e!1050659))))

(declare-fun rulesInvariant!2475 (LexerInterface!2806 List!18102) Bool)

(assert (=> b!1638323 (= res!733922 (rulesInvariant!2475 thiss!17113 rules!1846))))

(declare-fun b!1638324 () Bool)

(assert (=> b!1638324 (= e!1050647 e!1050654)))

(declare-fun res!733902 () Bool)

(assert (=> b!1638324 (=> res!733902 e!1050654)))

(declare-fun lt!600677 () tuple2!17662)

(declare-fun lt!600671 () List!18100)

(assert (=> b!1638324 (= res!733902 (or (not (= (_1!10233 lt!600677) (h!23432 tokens!457))) (not (= (_2!10233 lt!600677) lt!600671))))))

(declare-fun lt!600684 () Option!3395)

(assert (=> b!1638324 (= lt!600677 (get!5235 lt!600684))))

(declare-datatypes ((Unit!29576 0))(
  ( (Unit!29577) )
))
(declare-fun lt!600670 () Unit!29576)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!142 (LexerInterface!2806 List!18102 Token!5920 Rule!6154 List!18100) Unit!29576)

(assert (=> b!1638324 (= lt!600670 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!142 thiss!17113 rules!1846 (h!23432 tokens!457) (rule!5023 (h!23432 tokens!457)) lt!600671))))

(declare-fun b!1638325 () Bool)

(assert (=> b!1638325 (= e!1050644 (= lt!600669 (Cons!18030 (head!3546 lt!600671) Nil!18030)))))

(declare-fun b!1638326 () Bool)

(declare-fun tp!474828 () Bool)

(declare-fun inv!23375 (String!20667) Bool)

(declare-fun inv!23379 (TokenValueInjection!6194) Bool)

(assert (=> b!1638326 (= e!1050643 (and tp!474828 (inv!23375 (tag!3457 (h!23433 rules!1846))) (inv!23379 (transformation!3177 (h!23433 rules!1846))) e!1050640))))

(declare-fun b!1638327 () Bool)

(assert (=> b!1638327 (= e!1050637 e!1050646)))

(declare-fun res!733911 () Bool)

(assert (=> b!1638327 (=> res!733911 e!1050646)))

(declare-fun isDefined!2763 (Option!3396) Bool)

(assert (=> b!1638327 (= res!733911 (not (isDefined!2763 (maxPrefixZipperSequence!701 thiss!17113 rules!1846 (seqFromList!2103 (originalCharacters!3991 (h!23432 tokens!457)))))))))

(assert (=> b!1638327 (= lt!600669 lt!600672)))

(declare-fun lt!600680 () BalanceConc!11948)

(declare-fun head!3547 (BalanceConc!11948) C!9184)

(assert (=> b!1638327 (= lt!600672 (Cons!18030 (head!3547 lt!600680) Nil!18030))))

(assert (=> b!1638327 e!1050644))

(declare-fun res!733914 () Bool)

(assert (=> b!1638327 (=> (not res!733914) (not e!1050644))))

(assert (=> b!1638327 (= res!733914 (= lt!600682 (originalCharacters!3991 (h!23432 tokens!457))))))

(declare-fun b!1638328 () Bool)

(assert (=> b!1638328 (= e!1050656 e!1050651)))

(declare-fun res!733923 () Bool)

(assert (=> b!1638328 (=> res!733923 e!1050651)))

(assert (=> b!1638328 (= res!733923 (not (isDefined!2762 lt!600684)))))

(declare-fun lt!600683 () Unit!29576)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!380 (LexerInterface!2806 List!18102 List!18100 List!18100) Unit!29576)

(assert (=> b!1638328 (= lt!600683 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!380 thiss!17113 rules!1846 lt!600682 lt!600671))))

(declare-fun b!1638329 () Bool)

(declare-fun e!1050655 () Bool)

(assert (=> b!1638329 (= e!1050655 e!1050656)))

(declare-fun res!733904 () Bool)

(assert (=> b!1638329 (=> res!733904 e!1050656)))

(declare-fun lt!600664 () List!18100)

(declare-fun lt!600675 () List!18100)

(assert (=> b!1638329 (= res!733904 (or (not (= lt!600675 lt!600664)) (not (= lt!600664 lt!600682)) (not (= lt!600675 lt!600682))))))

(declare-fun printList!921 (LexerInterface!2806 List!18101) List!18100)

(assert (=> b!1638329 (= lt!600664 (printList!921 thiss!17113 (Cons!18031 (h!23432 tokens!457) Nil!18031)))))

(declare-fun lt!600685 () BalanceConc!11948)

(assert (=> b!1638329 (= lt!600675 (list!7111 lt!600685))))

(declare-fun lt!600665 () BalanceConc!11950)

(declare-fun printTailRec!859 (LexerInterface!2806 BalanceConc!11950 Int BalanceConc!11948) BalanceConc!11948)

(assert (=> b!1638329 (= lt!600685 (printTailRec!859 thiss!17113 lt!600665 0 (BalanceConc!11949 Empty!6002)))))

(declare-fun print!1337 (LexerInterface!2806 BalanceConc!11950) BalanceConc!11948)

(assert (=> b!1638329 (= lt!600685 (print!1337 thiss!17113 lt!600665))))

(declare-fun singletonSeq!1633 (Token!5920) BalanceConc!11950)

(assert (=> b!1638329 (= lt!600665 (singletonSeq!1633 (h!23432 tokens!457)))))

(declare-fun lt!600673 () List!18100)

(assert (=> b!1638329 (= lt!600684 (maxPrefix!1370 thiss!17113 rules!1846 lt!600673))))

(declare-fun b!1638330 () Bool)

(declare-fun res!733908 () Bool)

(assert (=> b!1638330 (=> res!733908 e!1050654)))

(declare-fun maxPrefixZipper!334 (LexerInterface!2806 List!18102 List!18100) Option!3395)

(assert (=> b!1638330 (= res!733908 (not (= (h!23432 tokens!457) (_1!10233 (get!5235 (maxPrefixZipper!334 thiss!17113 rules!1846 lt!600673))))))))

(declare-fun b!1638331 () Bool)

(declare-fun e!1050657 () Bool)

(assert (=> b!1638331 (= e!1050657 e!1050655)))

(declare-fun res!733921 () Bool)

(assert (=> b!1638331 (=> res!733921 e!1050655)))

(declare-fun lt!600690 () List!18101)

(declare-fun lt!600663 () List!18101)

(declare-fun lt!600676 () List!18101)

(assert (=> b!1638331 (= res!733921 (or (not (= lt!600690 lt!600676)) (not (= lt!600676 lt!600663))))))

(declare-fun lt!600667 () BalanceConc!11950)

(declare-fun list!7112 (BalanceConc!11950) List!18101)

(assert (=> b!1638331 (= lt!600676 (list!7112 lt!600667))))

(assert (=> b!1638331 (= lt!600690 lt!600663)))

(declare-fun prepend!721 (BalanceConc!11950 Token!5920) BalanceConc!11950)

(declare-fun seqFromList!2104 (List!18101) BalanceConc!11950)

(assert (=> b!1638331 (= lt!600663 (list!7112 (prepend!721 (seqFromList!2104 (t!149852 (t!149852 tokens!457))) (h!23432 (t!149852 tokens!457)))))))

(declare-fun lt!600688 () Unit!29576)

(declare-fun lt!600668 () tuple2!17664)

(declare-fun seqFromListBHdTlConstructive!254 (Token!5920 List!18101 BalanceConc!11950) Unit!29576)

(assert (=> b!1638331 (= lt!600688 (seqFromListBHdTlConstructive!254 (h!23432 (t!149852 tokens!457)) (t!149852 (t!149852 tokens!457)) (_1!10234 lt!600668)))))

(declare-fun b!1638332 () Bool)

(declare-fun res!733905 () Bool)

(assert (=> b!1638332 (=> res!733905 e!1050655)))

(declare-fun separableTokensPredicate!748 (LexerInterface!2806 Token!5920 Token!5920 List!18102) Bool)

(assert (=> b!1638332 (= res!733905 (not (separableTokensPredicate!748 thiss!17113 (h!23432 tokens!457) (h!23432 (t!149852 tokens!457)) rules!1846)))))

(declare-fun b!1638333 () Bool)

(declare-fun e!1050638 () Bool)

(assert (=> b!1638333 (= e!1050659 e!1050638)))

(declare-fun res!733916 () Bool)

(assert (=> b!1638333 (=> (not res!733916) (not e!1050638))))

(declare-fun lt!600681 () List!18100)

(assert (=> b!1638333 (= res!733916 (= lt!600673 lt!600681))))

(assert (=> b!1638333 (= lt!600681 (++!4836 lt!600682 lt!600671))))

(assert (=> b!1638333 (= lt!600673 (list!7111 lt!600689))))

(assert (=> b!1638333 (= lt!600671 (list!7111 lt!600680))))

(assert (=> b!1638333 (= lt!600682 (list!7111 lt!600666))))

(assert (=> b!1638333 (= lt!600666 (charsOf!1826 (h!23432 tokens!457)))))

(assert (=> b!1638333 (= lt!600668 (lex!1290 thiss!17113 rules!1846 lt!600680))))

(assert (=> b!1638333 (= lt!600680 (print!1337 thiss!17113 lt!600667))))

(assert (=> b!1638333 (= lt!600667 (seqFromList!2104 (t!149852 tokens!457)))))

(assert (=> b!1638333 (= lt!600689 (print!1337 thiss!17113 (seqFromList!2104 tokens!457)))))

(declare-fun b!1638334 () Bool)

(declare-fun res!733912 () Bool)

(assert (=> b!1638334 (=> res!733912 e!1050656)))

(declare-fun rulesProduceIndividualToken!1458 (LexerInterface!2806 List!18102 Token!5920) Bool)

(assert (=> b!1638334 (= res!733912 (not (rulesProduceIndividualToken!1458 thiss!17113 rules!1846 (h!23432 tokens!457))))))

(declare-fun b!1638335 () Bool)

(declare-fun matchR!2004 (Regex!4505 List!18100) Bool)

(assert (=> b!1638335 (= e!1050639 (matchR!2004 (regex!3177 (rule!5023 (h!23432 tokens!457))) lt!600682))))

(declare-fun res!733910 () Bool)

(assert (=> start!156518 (=> (not res!733910) (not e!1050659))))

(assert (=> start!156518 (= res!733910 ((_ is Lexer!2804) thiss!17113))))

(assert (=> start!156518 e!1050659))

(assert (=> start!156518 true))

(assert (=> start!156518 e!1050645))

(assert (=> start!156518 e!1050653))

(declare-fun b!1638312 () Bool)

(assert (=> b!1638312 (= e!1050652 true)))

(declare-fun lt!600661 () Bool)

(declare-fun rulesValidInductive!996 (LexerInterface!2806 List!18102) Bool)

(assert (=> b!1638312 (= lt!600661 (rulesValidInductive!996 thiss!17113 rules!1846))))

(declare-fun tp!474829 () Bool)

(declare-fun b!1638336 () Bool)

(declare-fun e!1050641 () Bool)

(declare-fun inv!21 (TokenValue!3267) Bool)

(assert (=> b!1638336 (= e!1050650 (and (inv!21 (value!100217 (h!23432 tokens!457))) e!1050641 tp!474829))))

(declare-fun tp!474832 () Bool)

(declare-fun b!1638337 () Bool)

(assert (=> b!1638337 (= e!1050641 (and tp!474832 (inv!23375 (tag!3457 (rule!5023 (h!23432 tokens!457)))) (inv!23379 (transformation!3177 (rule!5023 (h!23432 tokens!457)))) e!1050658))))

(declare-fun b!1638338 () Bool)

(declare-fun res!733906 () Bool)

(assert (=> b!1638338 (=> (not res!733906) (not e!1050659))))

(declare-fun isEmpty!11065 (List!18102) Bool)

(assert (=> b!1638338 (= res!733906 (not (isEmpty!11065 rules!1846)))))

(declare-fun b!1638339 () Bool)

(assert (=> b!1638339 (= e!1050638 (not e!1050657))))

(declare-fun res!733900 () Bool)

(assert (=> b!1638339 (=> res!733900 e!1050657)))

(assert (=> b!1638339 (= res!733900 (not (= lt!600690 (t!149852 tokens!457))))))

(assert (=> b!1638339 (= lt!600690 (list!7112 (_1!10234 lt!600668)))))

(declare-fun lt!600678 () Unit!29576)

(declare-fun theoremInvertabilityWhenTokenListSeparable!251 (LexerInterface!2806 List!18102 List!18101) Unit!29576)

(assert (=> b!1638339 (= lt!600678 (theoremInvertabilityWhenTokenListSeparable!251 thiss!17113 rules!1846 (t!149852 tokens!457)))))

(declare-fun isPrefix!1437 (List!18100 List!18100) Bool)

(assert (=> b!1638339 (isPrefix!1437 lt!600682 lt!600681)))

(declare-fun lt!600687 () Unit!29576)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!962 (List!18100 List!18100) Unit!29576)

(assert (=> b!1638339 (= lt!600687 (lemmaConcatTwoListThenFirstIsPrefix!962 lt!600682 lt!600671))))

(declare-fun b!1638340 () Bool)

(declare-fun res!733907 () Bool)

(assert (=> b!1638340 (=> res!733907 e!1050652)))

(assert (=> b!1638340 (= res!733907 (not (= (_2!10233 lt!600677) (list!7111 (_2!10235 lt!600686)))))))

(assert (= (and start!156518 res!733910) b!1638338))

(assert (= (and b!1638338 res!733906) b!1638323))

(assert (= (and b!1638323 res!733922) b!1638313))

(assert (= (and b!1638313 res!733903) b!1638316))

(assert (= (and b!1638316 res!733913) b!1638320))

(assert (= (and b!1638320 res!733899) b!1638333))

(assert (= (and b!1638333 res!733916) b!1638339))

(assert (= (and b!1638339 (not res!733900)) b!1638331))

(assert (= (and b!1638331 (not res!733921)) b!1638332))

(assert (= (and b!1638332 (not res!733905)) b!1638329))

(assert (= (and b!1638329 (not res!733904)) b!1638334))

(assert (= (and b!1638334 (not res!733912)) b!1638310))

(assert (= (and b!1638310 (not res!733920)) b!1638328))

(assert (= (and b!1638328 (not res!733923)) b!1638314))

(assert (= (and b!1638314 (not res!733901)) b!1638319))

(assert (= (and b!1638319 (not res!733909)) b!1638327))

(assert (= (and b!1638327 res!733914) b!1638309))

(assert (= (and b!1638309 res!733924) b!1638325))

(assert (= (and b!1638327 (not res!733911)) b!1638317))

(assert (= (and b!1638317 res!733925) b!1638308))

(assert (= (and b!1638308 res!733915) b!1638335))

(assert (= (and b!1638317 (not res!733919)) b!1638322))

(assert (= (and b!1638322 (not res!733918)) b!1638324))

(assert (= (and b!1638324 (not res!733902)) b!1638330))

(assert (= (and b!1638330 (not res!733908)) b!1638318))

(assert (= (and b!1638318 (not res!733917)) b!1638340))

(assert (= (and b!1638340 (not res!733907)) b!1638312))

(assert (= b!1638326 b!1638321))

(assert (= b!1638315 b!1638326))

(assert (= (and start!156518 ((_ is Cons!18032) rules!1846)) b!1638315))

(assert (= b!1638337 b!1638311))

(assert (= b!1638336 b!1638337))

(assert (= b!1638307 b!1638336))

(assert (= (and start!156518 ((_ is Cons!18031) tokens!457)) b!1638307))

(declare-fun m!1977033 () Bool)

(assert (=> b!1638326 m!1977033))

(declare-fun m!1977035 () Bool)

(assert (=> b!1638326 m!1977035))

(declare-fun m!1977037 () Bool)

(assert (=> b!1638327 m!1977037))

(assert (=> b!1638327 m!1977037))

(declare-fun m!1977039 () Bool)

(assert (=> b!1638327 m!1977039))

(assert (=> b!1638327 m!1977039))

(declare-fun m!1977041 () Bool)

(assert (=> b!1638327 m!1977041))

(declare-fun m!1977043 () Bool)

(assert (=> b!1638327 m!1977043))

(declare-fun m!1977045 () Bool)

(assert (=> b!1638314 m!1977045))

(declare-fun m!1977047 () Bool)

(assert (=> b!1638314 m!1977047))

(declare-fun m!1977049 () Bool)

(assert (=> b!1638314 m!1977049))

(declare-fun m!1977051 () Bool)

(assert (=> b!1638314 m!1977051))

(declare-fun m!1977053 () Bool)

(assert (=> b!1638314 m!1977053))

(assert (=> b!1638314 m!1977047))

(declare-fun m!1977055 () Bool)

(assert (=> b!1638314 m!1977055))

(assert (=> b!1638314 m!1977051))

(assert (=> b!1638314 m!1977055))

(declare-fun m!1977057 () Bool)

(assert (=> b!1638330 m!1977057))

(assert (=> b!1638330 m!1977057))

(declare-fun m!1977059 () Bool)

(assert (=> b!1638330 m!1977059))

(declare-fun m!1977061 () Bool)

(assert (=> b!1638337 m!1977061))

(declare-fun m!1977063 () Bool)

(assert (=> b!1638337 m!1977063))

(declare-fun m!1977065 () Bool)

(assert (=> b!1638316 m!1977065))

(declare-fun m!1977067 () Bool)

(assert (=> b!1638339 m!1977067))

(declare-fun m!1977069 () Bool)

(assert (=> b!1638339 m!1977069))

(declare-fun m!1977071 () Bool)

(assert (=> b!1638339 m!1977071))

(declare-fun m!1977073 () Bool)

(assert (=> b!1638339 m!1977073))

(declare-fun m!1977075 () Bool)

(assert (=> b!1638309 m!1977075))

(declare-fun m!1977077 () Bool)

(assert (=> b!1638331 m!1977077))

(declare-fun m!1977079 () Bool)

(assert (=> b!1638331 m!1977079))

(declare-fun m!1977081 () Bool)

(assert (=> b!1638331 m!1977081))

(assert (=> b!1638331 m!1977077))

(assert (=> b!1638331 m!1977079))

(declare-fun m!1977083 () Bool)

(assert (=> b!1638331 m!1977083))

(declare-fun m!1977085 () Bool)

(assert (=> b!1638331 m!1977085))

(declare-fun m!1977087 () Bool)

(assert (=> b!1638312 m!1977087))

(declare-fun m!1977089 () Bool)

(assert (=> b!1638322 m!1977089))

(assert (=> b!1638322 m!1977089))

(declare-fun m!1977091 () Bool)

(assert (=> b!1638322 m!1977091))

(declare-fun m!1977093 () Bool)

(assert (=> b!1638313 m!1977093))

(declare-fun m!1977095 () Bool)

(assert (=> b!1638307 m!1977095))

(declare-fun m!1977097 () Bool)

(assert (=> b!1638318 m!1977097))

(assert (=> b!1638318 m!1977097))

(declare-fun m!1977099 () Bool)

(assert (=> b!1638318 m!1977099))

(declare-fun m!1977101 () Bool)

(assert (=> b!1638329 m!1977101))

(declare-fun m!1977103 () Bool)

(assert (=> b!1638329 m!1977103))

(declare-fun m!1977105 () Bool)

(assert (=> b!1638329 m!1977105))

(declare-fun m!1977107 () Bool)

(assert (=> b!1638329 m!1977107))

(declare-fun m!1977109 () Bool)

(assert (=> b!1638329 m!1977109))

(declare-fun m!1977111 () Bool)

(assert (=> b!1638329 m!1977111))

(declare-fun m!1977113 () Bool)

(assert (=> b!1638324 m!1977113))

(declare-fun m!1977115 () Bool)

(assert (=> b!1638324 m!1977115))

(declare-fun m!1977117 () Bool)

(assert (=> b!1638335 m!1977117))

(declare-fun m!1977119 () Bool)

(assert (=> b!1638317 m!1977119))

(declare-fun m!1977121 () Bool)

(assert (=> b!1638317 m!1977121))

(assert (=> b!1638317 m!1977119))

(declare-fun m!1977123 () Bool)

(assert (=> b!1638317 m!1977123))

(declare-fun m!1977125 () Bool)

(assert (=> b!1638317 m!1977125))

(declare-fun m!1977127 () Bool)

(assert (=> b!1638317 m!1977127))

(declare-fun m!1977129 () Bool)

(assert (=> b!1638317 m!1977129))

(declare-fun m!1977131 () Bool)

(assert (=> b!1638317 m!1977131))

(assert (=> b!1638317 m!1977125))

(declare-fun m!1977133 () Bool)

(assert (=> b!1638338 m!1977133))

(declare-fun m!1977135 () Bool)

(assert (=> b!1638310 m!1977135))

(assert (=> b!1638310 m!1977135))

(declare-fun m!1977137 () Bool)

(assert (=> b!1638310 m!1977137))

(declare-fun m!1977139 () Bool)

(assert (=> b!1638310 m!1977139))

(declare-fun m!1977141 () Bool)

(assert (=> b!1638332 m!1977141))

(declare-fun m!1977143 () Bool)

(assert (=> b!1638323 m!1977143))

(declare-fun m!1977145 () Bool)

(assert (=> b!1638308 m!1977145))

(declare-fun m!1977147 () Bool)

(assert (=> b!1638334 m!1977147))

(declare-fun m!1977149 () Bool)

(assert (=> b!1638319 m!1977149))

(assert (=> b!1638319 m!1977149))

(declare-fun m!1977151 () Bool)

(assert (=> b!1638319 m!1977151))

(declare-fun m!1977153 () Bool)

(assert (=> b!1638319 m!1977153))

(declare-fun m!1977155 () Bool)

(assert (=> b!1638333 m!1977155))

(declare-fun m!1977157 () Bool)

(assert (=> b!1638333 m!1977157))

(declare-fun m!1977159 () Bool)

(assert (=> b!1638333 m!1977159))

(declare-fun m!1977161 () Bool)

(assert (=> b!1638333 m!1977161))

(declare-fun m!1977163 () Bool)

(assert (=> b!1638333 m!1977163))

(declare-fun m!1977165 () Bool)

(assert (=> b!1638333 m!1977165))

(declare-fun m!1977167 () Bool)

(assert (=> b!1638333 m!1977167))

(declare-fun m!1977169 () Bool)

(assert (=> b!1638333 m!1977169))

(declare-fun m!1977171 () Bool)

(assert (=> b!1638333 m!1977171))

(assert (=> b!1638333 m!1977169))

(declare-fun m!1977173 () Bool)

(assert (=> b!1638333 m!1977173))

(declare-fun m!1977175 () Bool)

(assert (=> b!1638340 m!1977175))

(declare-fun m!1977177 () Bool)

(assert (=> b!1638336 m!1977177))

(declare-fun m!1977179 () Bool)

(assert (=> b!1638328 m!1977179))

(declare-fun m!1977181 () Bool)

(assert (=> b!1638328 m!1977181))

(declare-fun m!1977183 () Bool)

(assert (=> b!1638325 m!1977183))

(check-sat (not b!1638309) (not b!1638307) (not b!1638336) (not b!1638339) (not b!1638337) (not b!1638328) (not b!1638331) (not b!1638324) (not b!1638333) (not b!1638334) (not b!1638318) (not b!1638327) (not b!1638326) (not b!1638313) (not b!1638314) (not b!1638340) (not b_next!45021) (not b_next!45019) (not b!1638323) (not b!1638322) b_and!116105 (not b!1638325) (not b!1638330) (not b!1638338) (not b!1638335) (not b!1638315) (not b_next!45017) (not b!1638316) b_and!116101 (not b!1638312) (not b!1638308) (not b!1638310) b_and!116107 (not b!1638329) (not b!1638317) b_and!116103 (not b!1638332) (not b_next!45015) (not b!1638319))
(check-sat b_and!116105 (not b_next!45017) b_and!116101 b_and!116107 b_and!116103 (not b_next!45015) (not b_next!45021) (not b_next!45019))
