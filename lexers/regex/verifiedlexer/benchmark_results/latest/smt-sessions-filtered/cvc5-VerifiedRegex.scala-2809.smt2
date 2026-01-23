; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!156520 () Bool)

(assert start!156520)

(declare-fun b!1638432 () Bool)

(declare-fun b_free!44319 () Bool)

(declare-fun b_next!45023 () Bool)

(assert (=> b!1638432 (= b_free!44319 (not b_next!45023))))

(declare-fun tp!474852 () Bool)

(declare-fun b_and!116109 () Bool)

(assert (=> b!1638432 (= tp!474852 b_and!116109)))

(declare-fun b_free!44321 () Bool)

(declare-fun b_next!45025 () Bool)

(assert (=> b!1638432 (= b_free!44321 (not b_next!45025))))

(declare-fun tp!474854 () Bool)

(declare-fun b_and!116111 () Bool)

(assert (=> b!1638432 (= tp!474854 b_and!116111)))

(declare-fun b!1638431 () Bool)

(declare-fun b_free!44323 () Bool)

(declare-fun b_next!45027 () Bool)

(assert (=> b!1638431 (= b_free!44323 (not b_next!45027))))

(declare-fun tp!474858 () Bool)

(declare-fun b_and!116113 () Bool)

(assert (=> b!1638431 (= tp!474858 b_and!116113)))

(declare-fun b_free!44325 () Bool)

(declare-fun b_next!45029 () Bool)

(assert (=> b!1638431 (= b_free!44325 (not b_next!45029))))

(declare-fun tp!474856 () Bool)

(declare-fun b_and!116115 () Bool)

(assert (=> b!1638431 (= tp!474856 b_and!116115)))

(declare-fun b!1638409 () Bool)

(declare-fun e!1050718 () Bool)

(declare-fun e!1050709 () Bool)

(assert (=> b!1638409 (= e!1050718 e!1050709)))

(declare-fun res!733983 () Bool)

(assert (=> b!1638409 (=> res!733983 e!1050709)))

(declare-datatypes ((List!18103 0))(
  ( (Nil!18033) (Cons!18033 (h!23434 (_ BitVec 16)) (t!149854 List!18103)) )
))
(declare-datatypes ((TokenValue!3268 0))(
  ( (FloatLiteralValue!6536 (text!23321 List!18103)) (TokenValueExt!3267 (__x!11838 Int)) (Broken!16340 (value!100221 List!18103)) (Object!3337) (End!3268) (Def!3268) (Underscore!3268) (Match!3268) (Else!3268) (Error!3268) (Case!3268) (If!3268) (Extends!3268) (Abstract!3268) (Class!3268) (Val!3268) (DelimiterValue!6536 (del!3328 List!18103)) (KeywordValue!3274 (value!100222 List!18103)) (CommentValue!6536 (value!100223 List!18103)) (WhitespaceValue!6536 (value!100224 List!18103)) (IndentationValue!3268 (value!100225 List!18103)) (String!20673) (Int32!3268) (Broken!16341 (value!100226 List!18103)) (Boolean!3269) (Unit!29578) (OperatorValue!3271 (op!3328 List!18103)) (IdentifierValue!6536 (value!100227 List!18103)) (IdentifierValue!6537 (value!100228 List!18103)) (WhitespaceValue!6537 (value!100229 List!18103)) (True!6536) (False!6536) (Broken!16342 (value!100230 List!18103)) (Broken!16343 (value!100231 List!18103)) (True!6537) (RightBrace!3268) (RightBracket!3268) (Colon!3268) (Null!3268) (Comma!3268) (LeftBracket!3268) (False!6537) (LeftBrace!3268) (ImaginaryLiteralValue!3268 (text!23322 List!18103)) (StringLiteralValue!9804 (value!100232 List!18103)) (EOFValue!3268 (value!100233 List!18103)) (IdentValue!3268 (value!100234 List!18103)) (DelimiterValue!6537 (value!100235 List!18103)) (DedentValue!3268 (value!100236 List!18103)) (NewLineValue!3268 (value!100237 List!18103)) (IntegerValue!9804 (value!100238 (_ BitVec 32)) (text!23323 List!18103)) (IntegerValue!9805 (value!100239 Int) (text!23324 List!18103)) (Times!3268) (Or!3268) (Equal!3268) (Minus!3268) (Broken!16344 (value!100240 List!18103)) (And!3268) (Div!3268) (LessEqual!3268) (Mod!3268) (Concat!7774) (Not!3268) (Plus!3268) (SpaceValue!3268 (value!100241 List!18103)) (IntegerValue!9806 (value!100242 Int) (text!23325 List!18103)) (StringLiteralValue!9805 (text!23326 List!18103)) (FloatLiteralValue!6537 (text!23327 List!18103)) (BytesLiteralValue!3268 (value!100243 List!18103)) (CommentValue!6537 (value!100244 List!18103)) (StringLiteralValue!9806 (value!100245 List!18103)) (ErrorTokenValue!3268 (msg!3329 List!18103)) )
))
(declare-datatypes ((C!9186 0))(
  ( (C!9187 (val!5189 Int)) )
))
(declare-datatypes ((List!18104 0))(
  ( (Nil!18034) (Cons!18034 (h!23435 C!9186) (t!149855 List!18104)) )
))
(declare-datatypes ((IArray!12013 0))(
  ( (IArray!12014 (innerList!6064 List!18104)) )
))
(declare-datatypes ((Conc!6004 0))(
  ( (Node!6004 (left!14463 Conc!6004) (right!14793 Conc!6004) (csize!12238 Int) (cheight!6215 Int)) (Leaf!8814 (xs!8840 IArray!12013) (csize!12239 Int)) (Empty!6004) )
))
(declare-datatypes ((BalanceConc!11952 0))(
  ( (BalanceConc!11953 (c!266527 Conc!6004)) )
))
(declare-datatypes ((Regex!4506 0))(
  ( (ElementMatch!4506 (c!266528 C!9186)) (Concat!7775 (regOne!9524 Regex!4506) (regTwo!9524 Regex!4506)) (EmptyExpr!4506) (Star!4506 (reg!4835 Regex!4506)) (EmptyLang!4506) (Union!4506 (regOne!9525 Regex!4506) (regTwo!9525 Regex!4506)) )
))
(declare-datatypes ((String!20674 0))(
  ( (String!20675 (value!100246 String)) )
))
(declare-datatypes ((TokenValueInjection!6196 0))(
  ( (TokenValueInjection!6197 (toValue!4609 Int) (toChars!4468 Int)) )
))
(declare-datatypes ((Rule!6156 0))(
  ( (Rule!6157 (regex!3178 Regex!4506) (tag!3458 String!20674) (isSeparator!3178 Bool) (transformation!3178 TokenValueInjection!6196)) )
))
(declare-datatypes ((Token!5922 0))(
  ( (Token!5923 (value!100247 TokenValue!3268) (rule!5024 Rule!6156) (size!14369 Int) (originalCharacters!3992 List!18104)) )
))
(declare-datatypes ((List!18105 0))(
  ( (Nil!18035) (Cons!18035 (h!23436 Token!5922) (t!149856 List!18105)) )
))
(declare-fun tokens!457 () List!18105)

(declare-datatypes ((tuple2!17668 0))(
  ( (tuple2!17669 (_1!10236 Token!5922) (_2!10236 BalanceConc!11952)) )
))
(declare-fun lt!600772 () tuple2!17668)

(assert (=> b!1638409 (= res!733983 (not (= (h!23436 tokens!457) (_1!10236 lt!600772))))))

(declare-datatypes ((Option!3397 0))(
  ( (None!3396) (Some!3396 (v!24491 tuple2!17668)) )
))
(declare-fun lt!600782 () Option!3397)

(declare-fun get!5238 (Option!3397) tuple2!17668)

(assert (=> b!1638409 (= lt!600772 (get!5238 lt!600782))))

(declare-datatypes ((List!18106 0))(
  ( (Nil!18036) (Cons!18036 (h!23437 Rule!6156) (t!149857 List!18106)) )
))
(declare-fun rules!1846 () List!18106)

(declare-datatypes ((LexerInterface!2807 0))(
  ( (LexerInterfaceExt!2804 (__x!11839 Int)) (Lexer!2805) )
))
(declare-fun thiss!17113 () LexerInterface!2807)

(declare-fun lt!600759 () BalanceConc!11952)

(declare-fun maxPrefixZipperSequence!702 (LexerInterface!2807 List!18106 BalanceConc!11952) Option!3397)

(assert (=> b!1638409 (= lt!600782 (maxPrefixZipperSequence!702 thiss!17113 rules!1846 lt!600759))))

(declare-fun b!1638410 () Bool)

(declare-fun e!1050716 () Bool)

(declare-fun e!1050732 () Bool)

(assert (=> b!1638410 (= e!1050716 (not e!1050732))))

(declare-fun res!734005 () Bool)

(assert (=> b!1638410 (=> res!734005 e!1050732)))

(declare-fun lt!600761 () List!18105)

(assert (=> b!1638410 (= res!734005 (not (= lt!600761 (t!149856 tokens!457))))))

(declare-datatypes ((IArray!12015 0))(
  ( (IArray!12016 (innerList!6065 List!18105)) )
))
(declare-datatypes ((Conc!6005 0))(
  ( (Node!6005 (left!14464 Conc!6005) (right!14794 Conc!6005) (csize!12240 Int) (cheight!6216 Int)) (Leaf!8815 (xs!8841 IArray!12015) (csize!12241 Int)) (Empty!6005) )
))
(declare-datatypes ((BalanceConc!11954 0))(
  ( (BalanceConc!11955 (c!266529 Conc!6005)) )
))
(declare-datatypes ((tuple2!17670 0))(
  ( (tuple2!17671 (_1!10237 BalanceConc!11954) (_2!10237 BalanceConc!11952)) )
))
(declare-fun lt!600773 () tuple2!17670)

(declare-fun list!7113 (BalanceConc!11954) List!18105)

(assert (=> b!1638410 (= lt!600761 (list!7113 (_1!10237 lt!600773)))))

(declare-datatypes ((Unit!29579 0))(
  ( (Unit!29580) )
))
(declare-fun lt!600777 () Unit!29579)

(declare-fun theoremInvertabilityWhenTokenListSeparable!252 (LexerInterface!2807 List!18106 List!18105) Unit!29579)

(assert (=> b!1638410 (= lt!600777 (theoremInvertabilityWhenTokenListSeparable!252 thiss!17113 rules!1846 (t!149856 tokens!457)))))

(declare-fun lt!600769 () List!18104)

(declare-fun lt!600767 () List!18104)

(declare-fun isPrefix!1438 (List!18104 List!18104) Bool)

(assert (=> b!1638410 (isPrefix!1438 lt!600769 lt!600767)))

(declare-fun lt!600783 () Unit!29579)

(declare-fun lt!600778 () List!18104)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!963 (List!18104 List!18104) Unit!29579)

(assert (=> b!1638410 (= lt!600783 (lemmaConcatTwoListThenFirstIsPrefix!963 lt!600769 lt!600778))))

(declare-fun b!1638411 () Bool)

(declare-fun e!1050717 () Bool)

(declare-fun e!1050715 () Bool)

(assert (=> b!1638411 (= e!1050717 e!1050715)))

(declare-fun res!733997 () Bool)

(assert (=> b!1638411 (=> res!733997 e!1050715)))

(declare-datatypes ((tuple2!17672 0))(
  ( (tuple2!17673 (_1!10238 Token!5922) (_2!10238 List!18104)) )
))
(declare-datatypes ((Option!3398 0))(
  ( (None!3397) (Some!3397 (v!24492 tuple2!17672)) )
))
(declare-fun lt!600760 () Option!3398)

(declare-fun isDefined!2764 (Option!3398) Bool)

(assert (=> b!1638411 (= res!733997 (not (isDefined!2764 lt!600760)))))

(declare-fun lt!600762 () Unit!29579)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!381 (LexerInterface!2807 List!18106 List!18104 List!18104) Unit!29579)

(assert (=> b!1638411 (= lt!600762 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!381 thiss!17113 rules!1846 lt!600769 lt!600778))))

(declare-fun b!1638412 () Bool)

(declare-fun res!733992 () Bool)

(assert (=> b!1638412 (=> res!733992 e!1050717)))

(declare-fun isEmpty!11066 (BalanceConc!11954) Bool)

(declare-fun lex!1291 (LexerInterface!2807 List!18106 BalanceConc!11952) tuple2!17670)

(declare-fun seqFromList!2105 (List!18104) BalanceConc!11952)

(assert (=> b!1638412 (= res!733992 (isEmpty!11066 (_1!10237 (lex!1291 thiss!17113 rules!1846 (seqFromList!2105 lt!600769)))))))

(declare-fun b!1638413 () Bool)

(declare-fun res!733999 () Bool)

(assert (=> b!1638413 (=> res!733999 e!1050718)))

(declare-fun lt!600756 () List!18104)

(declare-fun get!5239 (Option!3398) tuple2!17672)

(declare-fun maxPrefixZipper!335 (LexerInterface!2807 List!18106 List!18104) Option!3398)

(assert (=> b!1638413 (= res!733999 (not (= (h!23436 tokens!457) (_1!10238 (get!5239 (maxPrefixZipper!335 thiss!17113 rules!1846 lt!600756))))))))

(declare-fun b!1638414 () Bool)

(declare-fun res!733984 () Bool)

(declare-fun e!1050720 () Bool)

(assert (=> b!1638414 (=> res!733984 e!1050720)))

(declare-fun separableTokensPredicate!749 (LexerInterface!2807 Token!5922 Token!5922 List!18106) Bool)

(assert (=> b!1638414 (= res!733984 (not (separableTokensPredicate!749 thiss!17113 (h!23436 tokens!457) (h!23436 (t!149856 tokens!457)) rules!1846)))))

(declare-fun b!1638415 () Bool)

(declare-fun res!734000 () Bool)

(declare-fun e!1050728 () Bool)

(assert (=> b!1638415 (=> (not res!734000) (not e!1050728))))

(declare-fun rulesProduceEachTokenIndividuallyList!1009 (LexerInterface!2807 List!18106 List!18105) Bool)

(assert (=> b!1638415 (= res!734000 (rulesProduceEachTokenIndividuallyList!1009 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1638416 () Bool)

(declare-fun e!1050710 () Bool)

(declare-fun lt!600770 () List!18104)

(declare-fun head!3548 (List!18104) C!9186)

(assert (=> b!1638416 (= e!1050710 (= lt!600770 (Cons!18034 (head!3548 lt!600778) Nil!18034)))))

(declare-fun b!1638417 () Bool)

(declare-fun res!733991 () Bool)

(assert (=> b!1638417 (=> (not res!733991) (not e!1050710))))

(assert (=> b!1638417 (= res!733991 (= lt!600770 (Cons!18034 (head!3548 (originalCharacters!3992 (h!23436 (t!149856 tokens!457)))) Nil!18034)))))

(declare-fun b!1638418 () Bool)

(declare-fun e!1050712 () Bool)

(declare-fun e!1050713 () Bool)

(declare-fun tp!474857 () Bool)

(assert (=> b!1638418 (= e!1050712 (and e!1050713 tp!474857))))

(declare-fun b!1638419 () Bool)

(declare-fun res!733988 () Bool)

(declare-fun e!1050711 () Bool)

(assert (=> b!1638419 (=> res!733988 e!1050711)))

(declare-fun lt!600768 () List!18104)

(declare-fun lt!600781 () Regex!4506)

(declare-fun prefixMatch!441 (Regex!4506 List!18104) Bool)

(declare-fun ++!4837 (List!18104 List!18104) List!18104)

(assert (=> b!1638419 (= res!733988 (prefixMatch!441 lt!600781 (++!4837 lt!600769 lt!600768)))))

(declare-fun b!1638420 () Bool)

(declare-fun res!733989 () Bool)

(assert (=> b!1638420 (=> (not res!733989) (not e!1050728))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!500 (LexerInterface!2807 List!18105 List!18106) Bool)

(assert (=> b!1638420 (= res!733989 (tokensListTwoByTwoPredicateSeparableList!500 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1638422 () Bool)

(assert (=> b!1638422 (= e!1050732 e!1050720)))

(declare-fun res!733980 () Bool)

(assert (=> b!1638422 (=> res!733980 e!1050720)))

(declare-fun lt!600753 () List!18105)

(declare-fun lt!600780 () List!18105)

(assert (=> b!1638422 (= res!733980 (or (not (= lt!600761 lt!600753)) (not (= lt!600753 lt!600780))))))

(declare-fun lt!600775 () BalanceConc!11954)

(assert (=> b!1638422 (= lt!600753 (list!7113 lt!600775))))

(assert (=> b!1638422 (= lt!600761 lt!600780)))

(declare-fun prepend!722 (BalanceConc!11954 Token!5922) BalanceConc!11954)

(declare-fun seqFromList!2106 (List!18105) BalanceConc!11954)

(assert (=> b!1638422 (= lt!600780 (list!7113 (prepend!722 (seqFromList!2106 (t!149856 (t!149856 tokens!457))) (h!23436 (t!149856 tokens!457)))))))

(declare-fun lt!600754 () Unit!29579)

(declare-fun seqFromListBHdTlConstructive!255 (Token!5922 List!18105 BalanceConc!11954) Unit!29579)

(assert (=> b!1638422 (= lt!600754 (seqFromListBHdTlConstructive!255 (h!23436 (t!149856 tokens!457)) (t!149856 (t!149856 tokens!457)) (_1!10237 lt!600773)))))

(declare-fun b!1638423 () Bool)

(declare-fun e!1050722 () Bool)

(assert (=> b!1638423 (= e!1050715 e!1050722)))

(declare-fun res!733987 () Bool)

(assert (=> b!1638423 (=> res!733987 e!1050722)))

(declare-fun lt!600765 () BalanceConc!11952)

(declare-fun lt!600763 () BalanceConc!11952)

(declare-fun prefixMatchZipperSequence!584 (Regex!4506 BalanceConc!11952) Bool)

(declare-fun ++!4838 (BalanceConc!11952 BalanceConc!11952) BalanceConc!11952)

(assert (=> b!1638423 (= res!733987 (prefixMatchZipperSequence!584 lt!600781 (++!4838 lt!600765 lt!600763)))))

(declare-fun singletonSeq!1634 (C!9186) BalanceConc!11952)

(declare-fun apply!4683 (BalanceConc!11952 Int) C!9186)

(declare-fun charsOf!1827 (Token!5922) BalanceConc!11952)

(assert (=> b!1638423 (= lt!600763 (singletonSeq!1634 (apply!4683 (charsOf!1827 (h!23436 (t!149856 tokens!457))) 0)))))

(declare-fun rulesRegex!568 (LexerInterface!2807 List!18106) Regex!4506)

(assert (=> b!1638423 (= lt!600781 (rulesRegex!568 thiss!17113 rules!1846))))

(declare-fun b!1638424 () Bool)

(declare-fun res!734002 () Bool)

(assert (=> b!1638424 (=> res!734002 e!1050717)))

(declare-fun rulesProduceIndividualToken!1459 (LexerInterface!2807 List!18106 Token!5922) Bool)

(assert (=> b!1638424 (= res!734002 (not (rulesProduceIndividualToken!1459 thiss!17113 rules!1846 (h!23436 tokens!457))))))

(declare-fun b!1638425 () Bool)

(declare-fun res!734004 () Bool)

(declare-fun e!1050727 () Bool)

(assert (=> b!1638425 (=> (not res!734004) (not e!1050727))))

(declare-fun lt!600755 () tuple2!17672)

(declare-fun isEmpty!11067 (List!18104) Bool)

(assert (=> b!1638425 (= res!734004 (isEmpty!11067 (_2!10238 lt!600755)))))

(declare-fun tp!474859 () Bool)

(declare-fun b!1638426 () Bool)

(declare-fun e!1050714 () Bool)

(declare-fun inv!23380 (String!20674) Bool)

(declare-fun inv!23383 (TokenValueInjection!6196) Bool)

(assert (=> b!1638426 (= e!1050713 (and tp!474859 (inv!23380 (tag!3458 (h!23437 rules!1846))) (inv!23383 (transformation!3178 (h!23437 rules!1846))) e!1050714))))

(declare-fun b!1638427 () Bool)

(declare-fun matchR!2005 (Regex!4506 List!18104) Bool)

(assert (=> b!1638427 (= e!1050727 (matchR!2005 (regex!3178 (rule!5024 (h!23436 tokens!457))) lt!600769))))

(declare-fun b!1638428 () Bool)

(declare-fun res!733994 () Bool)

(assert (=> b!1638428 (=> (not res!733994) (not e!1050728))))

(declare-fun rulesInvariant!2476 (LexerInterface!2807 List!18106) Bool)

(assert (=> b!1638428 (= res!733994 (rulesInvariant!2476 thiss!17113 rules!1846))))

(declare-fun b!1638429 () Bool)

(declare-fun res!733986 () Bool)

(assert (=> b!1638429 (=> (not res!733986) (not e!1050728))))

(assert (=> b!1638429 (= res!733986 (and (not (is-Nil!18035 tokens!457)) (not (is-Nil!18035 (t!149856 tokens!457)))))))

(declare-fun b!1638430 () Bool)

(declare-fun res!733993 () Bool)

(assert (=> b!1638430 (=> res!733993 e!1050709)))

(declare-fun lt!600776 () tuple2!17672)

(declare-fun list!7114 (BalanceConc!11952) List!18104)

(assert (=> b!1638430 (= res!733993 (not (= (_2!10238 lt!600776) (list!7114 (_2!10236 lt!600772)))))))

(declare-fun e!1050730 () Bool)

(assert (=> b!1638431 (= e!1050730 (and tp!474858 tp!474856))))

(assert (=> b!1638432 (= e!1050714 (and tp!474852 tp!474854))))

(declare-fun tp!474851 () Bool)

(declare-fun e!1050725 () Bool)

(declare-fun e!1050729 () Bool)

(declare-fun b!1638433 () Bool)

(declare-fun inv!23384 (Token!5922) Bool)

(assert (=> b!1638433 (= e!1050725 (and (inv!23384 (h!23436 tokens!457)) e!1050729 tp!474851))))

(declare-fun b!1638434 () Bool)

(declare-fun e!1050724 () Bool)

(declare-fun e!1050723 () Bool)

(assert (=> b!1638434 (= e!1050724 e!1050723)))

(declare-fun res!734006 () Bool)

(assert (=> b!1638434 (=> res!734006 e!1050723)))

(declare-fun isDefined!2765 (Option!3397) Bool)

(assert (=> b!1638434 (= res!734006 (not (isDefined!2765 (maxPrefixZipperSequence!702 thiss!17113 rules!1846 (seqFromList!2105 (originalCharacters!3992 (h!23436 tokens!457)))))))))

(assert (=> b!1638434 (= lt!600770 lt!600768)))

(declare-fun lt!600758 () BalanceConc!11952)

(declare-fun head!3549 (BalanceConc!11952) C!9186)

(assert (=> b!1638434 (= lt!600768 (Cons!18034 (head!3549 lt!600758) Nil!18034))))

(assert (=> b!1638434 e!1050710))

(declare-fun res!733995 () Bool)

(assert (=> b!1638434 (=> (not res!733995) (not e!1050710))))

(assert (=> b!1638434 (= res!733995 (= lt!600769 (originalCharacters!3992 (h!23436 tokens!457))))))

(declare-fun b!1638435 () Bool)

(assert (=> b!1638435 (= e!1050720 e!1050717)))

(declare-fun res!734001 () Bool)

(assert (=> b!1638435 (=> res!734001 e!1050717)))

(declare-fun lt!600766 () List!18104)

(declare-fun lt!600779 () List!18104)

(assert (=> b!1638435 (= res!734001 (or (not (= lt!600779 lt!600766)) (not (= lt!600766 lt!600769)) (not (= lt!600779 lt!600769))))))

(declare-fun printList!922 (LexerInterface!2807 List!18105) List!18104)

(assert (=> b!1638435 (= lt!600766 (printList!922 thiss!17113 (Cons!18035 (h!23436 tokens!457) Nil!18035)))))

(declare-fun lt!600757 () BalanceConc!11952)

(assert (=> b!1638435 (= lt!600779 (list!7114 lt!600757))))

(declare-fun lt!600774 () BalanceConc!11954)

(declare-fun printTailRec!860 (LexerInterface!2807 BalanceConc!11954 Int BalanceConc!11952) BalanceConc!11952)

(assert (=> b!1638435 (= lt!600757 (printTailRec!860 thiss!17113 lt!600774 0 (BalanceConc!11953 Empty!6004)))))

(declare-fun print!1338 (LexerInterface!2807 BalanceConc!11954) BalanceConc!11952)

(assert (=> b!1638435 (= lt!600757 (print!1338 thiss!17113 lt!600774))))

(declare-fun singletonSeq!1635 (Token!5922) BalanceConc!11954)

(assert (=> b!1638435 (= lt!600774 (singletonSeq!1635 (h!23436 tokens!457)))))

(declare-fun maxPrefix!1371 (LexerInterface!2807 List!18106 List!18104) Option!3398)

(assert (=> b!1638435 (= lt!600760 (maxPrefix!1371 thiss!17113 rules!1846 lt!600756))))

(declare-fun tp!474855 () Bool)

(declare-fun b!1638436 () Bool)

(declare-fun e!1050731 () Bool)

(assert (=> b!1638436 (= e!1050731 (and tp!474855 (inv!23380 (tag!3458 (rule!5024 (h!23436 tokens!457)))) (inv!23383 (transformation!3178 (rule!5024 (h!23436 tokens!457)))) e!1050730))))

(declare-fun b!1638437 () Bool)

(declare-fun res!733981 () Bool)

(assert (=> b!1638437 (=> (not res!733981) (not e!1050728))))

(declare-fun isEmpty!11068 (List!18106) Bool)

(assert (=> b!1638437 (= res!733981 (not (isEmpty!11068 rules!1846)))))

(declare-fun b!1638421 () Bool)

(assert (=> b!1638421 (= e!1050722 e!1050724)))

(declare-fun res!734003 () Bool)

(assert (=> b!1638421 (=> res!734003 e!1050724)))

(assert (=> b!1638421 (= res!734003 (prefixMatch!441 lt!600781 (++!4837 lt!600769 lt!600770)))))

(assert (=> b!1638421 (= lt!600770 (list!7114 lt!600763))))

(declare-fun res!733985 () Bool)

(assert (=> start!156520 (=> (not res!733985) (not e!1050728))))

(assert (=> start!156520 (= res!733985 (is-Lexer!2805 thiss!17113))))

(assert (=> start!156520 e!1050728))

(assert (=> start!156520 true))

(assert (=> start!156520 e!1050712))

(assert (=> start!156520 e!1050725))

(declare-fun b!1638438 () Bool)

(assert (=> b!1638438 (= e!1050728 e!1050716)))

(declare-fun res!733998 () Bool)

(assert (=> b!1638438 (=> (not res!733998) (not e!1050716))))

(assert (=> b!1638438 (= res!733998 (= lt!600756 lt!600767))))

(assert (=> b!1638438 (= lt!600767 (++!4837 lt!600769 lt!600778))))

(assert (=> b!1638438 (= lt!600756 (list!7114 lt!600759))))

(assert (=> b!1638438 (= lt!600778 (list!7114 lt!600758))))

(assert (=> b!1638438 (= lt!600769 (list!7114 lt!600765))))

(assert (=> b!1638438 (= lt!600765 (charsOf!1827 (h!23436 tokens!457)))))

(assert (=> b!1638438 (= lt!600773 (lex!1291 thiss!17113 rules!1846 lt!600758))))

(assert (=> b!1638438 (= lt!600758 (print!1338 thiss!17113 lt!600775))))

(assert (=> b!1638438 (= lt!600775 (seqFromList!2106 (t!149856 tokens!457)))))

(assert (=> b!1638438 (= lt!600759 (print!1338 thiss!17113 (seqFromList!2106 tokens!457)))))

(declare-fun b!1638439 () Bool)

(assert (=> b!1638439 (= e!1050709 (isDefined!2765 lt!600782))))

(declare-fun b!1638440 () Bool)

(assert (=> b!1638440 (= e!1050723 e!1050711)))

(declare-fun res!733990 () Bool)

(assert (=> b!1638440 (=> res!733990 e!1050711)))

(assert (=> b!1638440 (= res!733990 (prefixMatch!441 lt!600781 (++!4837 (originalCharacters!3992 (h!23436 tokens!457)) lt!600768)))))

(assert (=> b!1638440 e!1050727))

(declare-fun res!733996 () Bool)

(assert (=> b!1638440 (=> (not res!733996) (not e!1050727))))

(assert (=> b!1638440 (= res!733996 (= (_1!10238 lt!600755) (h!23436 tokens!457)))))

(declare-fun lt!600771 () Option!3398)

(assert (=> b!1638440 (= lt!600755 (get!5239 lt!600771))))

(assert (=> b!1638440 (isDefined!2764 lt!600771)))

(assert (=> b!1638440 (= lt!600771 (maxPrefix!1371 thiss!17113 rules!1846 lt!600769))))

(assert (=> b!1638440 (isDefined!2764 (maxPrefix!1371 thiss!17113 rules!1846 (originalCharacters!3992 (h!23436 tokens!457))))))

(declare-fun b!1638441 () Bool)

(assert (=> b!1638441 (= e!1050711 e!1050718)))

(declare-fun res!733982 () Bool)

(assert (=> b!1638441 (=> res!733982 e!1050718)))

(assert (=> b!1638441 (= res!733982 (or (not (= (_1!10238 lt!600776) (h!23436 tokens!457))) (not (= (_2!10238 lt!600776) lt!600778))))))

(assert (=> b!1638441 (= lt!600776 (get!5239 lt!600760))))

(declare-fun lt!600764 () Unit!29579)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!143 (LexerInterface!2807 List!18106 Token!5922 Rule!6156 List!18104) Unit!29579)

(assert (=> b!1638441 (= lt!600764 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!143 thiss!17113 rules!1846 (h!23436 tokens!457) (rule!5024 (h!23436 tokens!457)) lt!600778))))

(declare-fun b!1638442 () Bool)

(declare-fun tp!474853 () Bool)

(declare-fun inv!21 (TokenValue!3268) Bool)

(assert (=> b!1638442 (= e!1050729 (and (inv!21 (value!100247 (h!23436 tokens!457))) e!1050731 tp!474853))))

(assert (= (and start!156520 res!733985) b!1638437))

(assert (= (and b!1638437 res!733981) b!1638428))

(assert (= (and b!1638428 res!733994) b!1638415))

(assert (= (and b!1638415 res!734000) b!1638420))

(assert (= (and b!1638420 res!733989) b!1638429))

(assert (= (and b!1638429 res!733986) b!1638438))

(assert (= (and b!1638438 res!733998) b!1638410))

(assert (= (and b!1638410 (not res!734005)) b!1638422))

(assert (= (and b!1638422 (not res!733980)) b!1638414))

(assert (= (and b!1638414 (not res!733984)) b!1638435))

(assert (= (and b!1638435 (not res!734001)) b!1638424))

(assert (= (and b!1638424 (not res!734002)) b!1638412))

(assert (= (and b!1638412 (not res!733992)) b!1638411))

(assert (= (and b!1638411 (not res!733997)) b!1638423))

(assert (= (and b!1638423 (not res!733987)) b!1638421))

(assert (= (and b!1638421 (not res!734003)) b!1638434))

(assert (= (and b!1638434 res!733995) b!1638417))

(assert (= (and b!1638417 res!733991) b!1638416))

(assert (= (and b!1638434 (not res!734006)) b!1638440))

(assert (= (and b!1638440 res!733996) b!1638425))

(assert (= (and b!1638425 res!734004) b!1638427))

(assert (= (and b!1638440 (not res!733990)) b!1638419))

(assert (= (and b!1638419 (not res!733988)) b!1638441))

(assert (= (and b!1638441 (not res!733982)) b!1638413))

(assert (= (and b!1638413 (not res!733999)) b!1638409))

(assert (= (and b!1638409 (not res!733983)) b!1638430))

(assert (= (and b!1638430 (not res!733993)) b!1638439))

(assert (= b!1638426 b!1638432))

(assert (= b!1638418 b!1638426))

(assert (= (and start!156520 (is-Cons!18036 rules!1846)) b!1638418))

(assert (= b!1638436 b!1638431))

(assert (= b!1638442 b!1638436))

(assert (= b!1638433 b!1638442))

(assert (= (and start!156520 (is-Cons!18035 tokens!457)) b!1638433))

(declare-fun m!1977185 () Bool)

(assert (=> b!1638409 m!1977185))

(declare-fun m!1977187 () Bool)

(assert (=> b!1638409 m!1977187))

(declare-fun m!1977189 () Bool)

(assert (=> b!1638437 m!1977189))

(declare-fun m!1977191 () Bool)

(assert (=> b!1638438 m!1977191))

(declare-fun m!1977193 () Bool)

(assert (=> b!1638438 m!1977193))

(declare-fun m!1977195 () Bool)

(assert (=> b!1638438 m!1977195))

(declare-fun m!1977197 () Bool)

(assert (=> b!1638438 m!1977197))

(declare-fun m!1977199 () Bool)

(assert (=> b!1638438 m!1977199))

(assert (=> b!1638438 m!1977193))

(declare-fun m!1977201 () Bool)

(assert (=> b!1638438 m!1977201))

(declare-fun m!1977203 () Bool)

(assert (=> b!1638438 m!1977203))

(declare-fun m!1977205 () Bool)

(assert (=> b!1638438 m!1977205))

(declare-fun m!1977207 () Bool)

(assert (=> b!1638438 m!1977207))

(declare-fun m!1977209 () Bool)

(assert (=> b!1638438 m!1977209))

(declare-fun m!1977211 () Bool)

(assert (=> b!1638441 m!1977211))

(declare-fun m!1977213 () Bool)

(assert (=> b!1638441 m!1977213))

(declare-fun m!1977215 () Bool)

(assert (=> b!1638412 m!1977215))

(assert (=> b!1638412 m!1977215))

(declare-fun m!1977217 () Bool)

(assert (=> b!1638412 m!1977217))

(declare-fun m!1977219 () Bool)

(assert (=> b!1638412 m!1977219))

(declare-fun m!1977221 () Bool)

(assert (=> b!1638427 m!1977221))

(declare-fun m!1977223 () Bool)

(assert (=> b!1638433 m!1977223))

(declare-fun m!1977225 () Bool)

(assert (=> b!1638428 m!1977225))

(declare-fun m!1977227 () Bool)

(assert (=> b!1638411 m!1977227))

(declare-fun m!1977229 () Bool)

(assert (=> b!1638411 m!1977229))

(declare-fun m!1977231 () Bool)

(assert (=> b!1638424 m!1977231))

(declare-fun m!1977233 () Bool)

(assert (=> b!1638423 m!1977233))

(declare-fun m!1977235 () Bool)

(assert (=> b!1638423 m!1977235))

(declare-fun m!1977237 () Bool)

(assert (=> b!1638423 m!1977237))

(declare-fun m!1977239 () Bool)

(assert (=> b!1638423 m!1977239))

(declare-fun m!1977241 () Bool)

(assert (=> b!1638423 m!1977241))

(assert (=> b!1638423 m!1977239))

(declare-fun m!1977243 () Bool)

(assert (=> b!1638423 m!1977243))

(assert (=> b!1638423 m!1977235))

(assert (=> b!1638423 m!1977243))

(declare-fun m!1977245 () Bool)

(assert (=> b!1638439 m!1977245))

(declare-fun m!1977247 () Bool)

(assert (=> b!1638425 m!1977247))

(declare-fun m!1977249 () Bool)

(assert (=> b!1638434 m!1977249))

(assert (=> b!1638434 m!1977249))

(declare-fun m!1977251 () Bool)

(assert (=> b!1638434 m!1977251))

(assert (=> b!1638434 m!1977251))

(declare-fun m!1977253 () Bool)

(assert (=> b!1638434 m!1977253))

(declare-fun m!1977255 () Bool)

(assert (=> b!1638434 m!1977255))

(declare-fun m!1977257 () Bool)

(assert (=> b!1638416 m!1977257))

(declare-fun m!1977259 () Bool)

(assert (=> b!1638417 m!1977259))

(declare-fun m!1977261 () Bool)

(assert (=> b!1638422 m!1977261))

(declare-fun m!1977263 () Bool)

(assert (=> b!1638422 m!1977263))

(declare-fun m!1977265 () Bool)

(assert (=> b!1638422 m!1977265))

(declare-fun m!1977267 () Bool)

(assert (=> b!1638422 m!1977267))

(declare-fun m!1977269 () Bool)

(assert (=> b!1638422 m!1977269))

(assert (=> b!1638422 m!1977265))

(assert (=> b!1638422 m!1977267))

(declare-fun m!1977271 () Bool)

(assert (=> b!1638414 m!1977271))

(declare-fun m!1977273 () Bool)

(assert (=> b!1638415 m!1977273))

(declare-fun m!1977275 () Bool)

(assert (=> b!1638435 m!1977275))

(declare-fun m!1977277 () Bool)

(assert (=> b!1638435 m!1977277))

(declare-fun m!1977279 () Bool)

(assert (=> b!1638435 m!1977279))

(declare-fun m!1977281 () Bool)

(assert (=> b!1638435 m!1977281))

(declare-fun m!1977283 () Bool)

(assert (=> b!1638435 m!1977283))

(declare-fun m!1977285 () Bool)

(assert (=> b!1638435 m!1977285))

(declare-fun m!1977287 () Bool)

(assert (=> b!1638410 m!1977287))

(declare-fun m!1977289 () Bool)

(assert (=> b!1638410 m!1977289))

(declare-fun m!1977291 () Bool)

(assert (=> b!1638410 m!1977291))

(declare-fun m!1977293 () Bool)

(assert (=> b!1638410 m!1977293))

(declare-fun m!1977295 () Bool)

(assert (=> b!1638430 m!1977295))

(declare-fun m!1977297 () Bool)

(assert (=> b!1638426 m!1977297))

(declare-fun m!1977299 () Bool)

(assert (=> b!1638426 m!1977299))

(declare-fun m!1977301 () Bool)

(assert (=> b!1638442 m!1977301))

(declare-fun m!1977303 () Bool)

(assert (=> b!1638413 m!1977303))

(assert (=> b!1638413 m!1977303))

(declare-fun m!1977305 () Bool)

(assert (=> b!1638413 m!1977305))

(declare-fun m!1977307 () Bool)

(assert (=> b!1638436 m!1977307))

(declare-fun m!1977309 () Bool)

(assert (=> b!1638436 m!1977309))

(declare-fun m!1977311 () Bool)

(assert (=> b!1638421 m!1977311))

(assert (=> b!1638421 m!1977311))

(declare-fun m!1977313 () Bool)

(assert (=> b!1638421 m!1977313))

(declare-fun m!1977315 () Bool)

(assert (=> b!1638421 m!1977315))

(declare-fun m!1977317 () Bool)

(assert (=> b!1638419 m!1977317))

(assert (=> b!1638419 m!1977317))

(declare-fun m!1977319 () Bool)

(assert (=> b!1638419 m!1977319))

(declare-fun m!1977321 () Bool)

(assert (=> b!1638440 m!1977321))

(declare-fun m!1977323 () Bool)

(assert (=> b!1638440 m!1977323))

(declare-fun m!1977325 () Bool)

(assert (=> b!1638440 m!1977325))

(declare-fun m!1977327 () Bool)

(assert (=> b!1638440 m!1977327))

(declare-fun m!1977329 () Bool)

(assert (=> b!1638440 m!1977329))

(declare-fun m!1977331 () Bool)

(assert (=> b!1638440 m!1977331))

(declare-fun m!1977333 () Bool)

(assert (=> b!1638440 m!1977333))

(assert (=> b!1638440 m!1977327))

(assert (=> b!1638440 m!1977331))

(declare-fun m!1977335 () Bool)

(assert (=> b!1638420 m!1977335))

(push 1)

(assert (not b!1638424))

(assert (not b!1638412))

(assert (not b!1638413))

(assert (not b!1638427))

(assert (not b!1638439))

(assert (not b!1638438))

(assert (not b!1638440))

(assert b_and!116115)

(assert (not b!1638422))

(assert (not b!1638442))

(assert (not b!1638433))

(assert (not b!1638428))

(assert (not b!1638414))

(assert (not b_next!45023))

(assert (not b!1638441))

(assert (not b_next!45025))

(assert (not b!1638410))

(assert b_and!116111)

(assert (not b!1638430))

(assert (not b!1638419))

(assert (not b!1638423))

(assert (not b!1638436))

(assert (not b!1638421))

(assert (not b!1638416))

(assert (not b!1638425))

(assert (not b!1638437))

(assert (not b!1638417))

(assert b_and!116113)

(assert (not b!1638415))

(assert b_and!116109)

(assert (not b!1638420))

(assert (not b!1638426))

(assert (not b!1638434))

(assert (not b!1638435))

(assert (not b_next!45029))

(assert (not b!1638409))

(assert (not b_next!45027))

(assert (not b!1638411))

(assert (not b!1638418))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!45025))

(assert b_and!116111)

(assert b_and!116115)

(assert b_and!116113)

(assert b_and!116109)

(assert (not b_next!45029))

(assert (not b_next!45027))

(assert (not b_next!45023))

(check-sat)

(get-model)

(pop 1)

(declare-fun lt!600879 () Bool)

(declare-fun d!493216 () Bool)

(declare-fun isEmpty!11072 (List!18105) Bool)

(assert (=> d!493216 (= lt!600879 (isEmpty!11072 (list!7113 (_1!10237 (lex!1291 thiss!17113 rules!1846 (seqFromList!2105 lt!600769))))))))

(declare-fun isEmpty!11073 (Conc!6005) Bool)

(assert (=> d!493216 (= lt!600879 (isEmpty!11073 (c!266529 (_1!10237 (lex!1291 thiss!17113 rules!1846 (seqFromList!2105 lt!600769))))))))

(assert (=> d!493216 (= (isEmpty!11066 (_1!10237 (lex!1291 thiss!17113 rules!1846 (seqFromList!2105 lt!600769)))) lt!600879)))

(declare-fun bs!395508 () Bool)

(assert (= bs!395508 d!493216))

(declare-fun m!1977489 () Bool)

(assert (=> bs!395508 m!1977489))

(assert (=> bs!395508 m!1977489))

(declare-fun m!1977491 () Bool)

(assert (=> bs!395508 m!1977491))

(declare-fun m!1977493 () Bool)

(assert (=> bs!395508 m!1977493))

(assert (=> b!1638412 d!493216))

(declare-fun e!1050813 () Bool)

(declare-fun lt!600882 () tuple2!17670)

(declare-fun b!1638555 () Bool)

(declare-datatypes ((tuple2!17680 0))(
  ( (tuple2!17681 (_1!10242 List!18105) (_2!10242 List!18104)) )
))
(declare-fun lexList!846 (LexerInterface!2807 List!18106 List!18104) tuple2!17680)

(assert (=> b!1638555 (= e!1050813 (= (list!7114 (_2!10237 lt!600882)) (_2!10242 (lexList!846 thiss!17113 rules!1846 (list!7114 (seqFromList!2105 lt!600769))))))))

(declare-fun b!1638556 () Bool)

(declare-fun e!1050811 () Bool)

(assert (=> b!1638556 (= e!1050811 (not (isEmpty!11066 (_1!10237 lt!600882))))))

(declare-fun b!1638557 () Bool)

(declare-fun e!1050812 () Bool)

(assert (=> b!1638557 (= e!1050812 e!1050811)))

(declare-fun res!734103 () Bool)

(declare-fun size!14371 (BalanceConc!11952) Int)

(assert (=> b!1638557 (= res!734103 (< (size!14371 (_2!10237 lt!600882)) (size!14371 (seqFromList!2105 lt!600769))))))

(assert (=> b!1638557 (=> (not res!734103) (not e!1050811))))

(declare-fun b!1638558 () Bool)

(declare-fun res!734105 () Bool)

(assert (=> b!1638558 (=> (not res!734105) (not e!1050813))))

(assert (=> b!1638558 (= res!734105 (= (list!7113 (_1!10237 lt!600882)) (_1!10242 (lexList!846 thiss!17113 rules!1846 (list!7114 (seqFromList!2105 lt!600769))))))))

(declare-fun d!493218 () Bool)

(assert (=> d!493218 e!1050813))

(declare-fun res!734104 () Bool)

(assert (=> d!493218 (=> (not res!734104) (not e!1050813))))

(assert (=> d!493218 (= res!734104 e!1050812)))

(declare-fun c!266536 () Bool)

(declare-fun size!14372 (BalanceConc!11954) Int)

(assert (=> d!493218 (= c!266536 (> (size!14372 (_1!10237 lt!600882)) 0))))

(declare-fun lexTailRecV2!569 (LexerInterface!2807 List!18106 BalanceConc!11952 BalanceConc!11952 BalanceConc!11952 BalanceConc!11954) tuple2!17670)

(assert (=> d!493218 (= lt!600882 (lexTailRecV2!569 thiss!17113 rules!1846 (seqFromList!2105 lt!600769) (BalanceConc!11953 Empty!6004) (seqFromList!2105 lt!600769) (BalanceConc!11955 Empty!6005)))))

(assert (=> d!493218 (= (lex!1291 thiss!17113 rules!1846 (seqFromList!2105 lt!600769)) lt!600882)))

(declare-fun b!1638559 () Bool)

(assert (=> b!1638559 (= e!1050812 (= (_2!10237 lt!600882) (seqFromList!2105 lt!600769)))))

(assert (= (and d!493218 c!266536) b!1638557))

(assert (= (and d!493218 (not c!266536)) b!1638559))

(assert (= (and b!1638557 res!734103) b!1638556))

(assert (= (and d!493218 res!734104) b!1638558))

(assert (= (and b!1638558 res!734105) b!1638555))

(declare-fun m!1977495 () Bool)

(assert (=> b!1638556 m!1977495))

(declare-fun m!1977497 () Bool)

(assert (=> d!493218 m!1977497))

(assert (=> d!493218 m!1977215))

(assert (=> d!493218 m!1977215))

(declare-fun m!1977499 () Bool)

(assert (=> d!493218 m!1977499))

(declare-fun m!1977501 () Bool)

(assert (=> b!1638555 m!1977501))

(assert (=> b!1638555 m!1977215))

(declare-fun m!1977503 () Bool)

(assert (=> b!1638555 m!1977503))

(assert (=> b!1638555 m!1977503))

(declare-fun m!1977505 () Bool)

(assert (=> b!1638555 m!1977505))

(declare-fun m!1977507 () Bool)

(assert (=> b!1638558 m!1977507))

(assert (=> b!1638558 m!1977215))

(assert (=> b!1638558 m!1977503))

(assert (=> b!1638558 m!1977503))

(assert (=> b!1638558 m!1977505))

(declare-fun m!1977509 () Bool)

(assert (=> b!1638557 m!1977509))

(assert (=> b!1638557 m!1977215))

(declare-fun m!1977511 () Bool)

(assert (=> b!1638557 m!1977511))

(assert (=> b!1638412 d!493218))

(declare-fun d!493220 () Bool)

(declare-fun fromListB!928 (List!18104) BalanceConc!11952)

(assert (=> d!493220 (= (seqFromList!2105 lt!600769) (fromListB!928 lt!600769))))

(declare-fun bs!395509 () Bool)

(assert (= bs!395509 d!493220))

(declare-fun m!1977513 () Bool)

(assert (=> bs!395509 m!1977513))

(assert (=> b!1638412 d!493220))

(declare-fun d!493224 () Bool)

(declare-fun res!734110 () Bool)

(declare-fun e!1050816 () Bool)

(assert (=> d!493224 (=> (not res!734110) (not e!1050816))))

(assert (=> d!493224 (= res!734110 (not (isEmpty!11067 (originalCharacters!3992 (h!23436 tokens!457)))))))

(assert (=> d!493224 (= (inv!23384 (h!23436 tokens!457)) e!1050816)))

(declare-fun b!1638564 () Bool)

(declare-fun res!734111 () Bool)

(assert (=> b!1638564 (=> (not res!734111) (not e!1050816))))

(declare-fun dynLambda!8034 (Int TokenValue!3268) BalanceConc!11952)

(assert (=> b!1638564 (= res!734111 (= (originalCharacters!3992 (h!23436 tokens!457)) (list!7114 (dynLambda!8034 (toChars!4468 (transformation!3178 (rule!5024 (h!23436 tokens!457)))) (value!100247 (h!23436 tokens!457))))))))

(declare-fun b!1638565 () Bool)

(declare-fun size!14373 (List!18104) Int)

(assert (=> b!1638565 (= e!1050816 (= (size!14369 (h!23436 tokens!457)) (size!14373 (originalCharacters!3992 (h!23436 tokens!457)))))))

(assert (= (and d!493224 res!734110) b!1638564))

(assert (= (and b!1638564 res!734111) b!1638565))

(declare-fun b_lambda!51485 () Bool)

(assert (=> (not b_lambda!51485) (not b!1638564)))

(declare-fun tb!93847 () Bool)

(declare-fun t!149863 () Bool)

(assert (=> (and b!1638432 (= (toChars!4468 (transformation!3178 (h!23437 rules!1846))) (toChars!4468 (transformation!3178 (rule!5024 (h!23436 tokens!457))))) t!149863) tb!93847))

(declare-fun b!1638570 () Bool)

(declare-fun e!1050819 () Bool)

(declare-fun tp!474889 () Bool)

(declare-fun inv!23387 (Conc!6004) Bool)

(assert (=> b!1638570 (= e!1050819 (and (inv!23387 (c!266527 (dynLambda!8034 (toChars!4468 (transformation!3178 (rule!5024 (h!23436 tokens!457)))) (value!100247 (h!23436 tokens!457))))) tp!474889))))

(declare-fun result!113254 () Bool)

(declare-fun inv!23388 (BalanceConc!11952) Bool)

(assert (=> tb!93847 (= result!113254 (and (inv!23388 (dynLambda!8034 (toChars!4468 (transformation!3178 (rule!5024 (h!23436 tokens!457)))) (value!100247 (h!23436 tokens!457)))) e!1050819))))

(assert (= tb!93847 b!1638570))

(declare-fun m!1977515 () Bool)

(assert (=> b!1638570 m!1977515))

(declare-fun m!1977517 () Bool)

(assert (=> tb!93847 m!1977517))

(assert (=> b!1638564 t!149863))

(declare-fun b_and!116125 () Bool)

(assert (= b_and!116111 (and (=> t!149863 result!113254) b_and!116125)))

(declare-fun t!149865 () Bool)

(declare-fun tb!93849 () Bool)

(assert (=> (and b!1638431 (= (toChars!4468 (transformation!3178 (rule!5024 (h!23436 tokens!457)))) (toChars!4468 (transformation!3178 (rule!5024 (h!23436 tokens!457))))) t!149865) tb!93849))

(declare-fun result!113258 () Bool)

(assert (= result!113258 result!113254))

(assert (=> b!1638564 t!149865))

(declare-fun b_and!116127 () Bool)

(assert (= b_and!116115 (and (=> t!149865 result!113258) b_and!116127)))

(declare-fun m!1977519 () Bool)

(assert (=> d!493224 m!1977519))

(declare-fun m!1977521 () Bool)

(assert (=> b!1638564 m!1977521))

(assert (=> b!1638564 m!1977521))

(declare-fun m!1977523 () Bool)

(assert (=> b!1638564 m!1977523))

(declare-fun m!1977525 () Bool)

(assert (=> b!1638565 m!1977525))

(assert (=> b!1638433 d!493224))

(declare-fun d!493230 () Bool)

(declare-fun isEmpty!11074 (Option!3397) Bool)

(assert (=> d!493230 (= (isDefined!2765 (maxPrefixZipperSequence!702 thiss!17113 rules!1846 (seqFromList!2105 (originalCharacters!3992 (h!23436 tokens!457))))) (not (isEmpty!11074 (maxPrefixZipperSequence!702 thiss!17113 rules!1846 (seqFromList!2105 (originalCharacters!3992 (h!23436 tokens!457)))))))))

(declare-fun bs!395510 () Bool)

(assert (= bs!395510 d!493230))

(assert (=> bs!395510 m!1977251))

(declare-fun m!1977527 () Bool)

(assert (=> bs!395510 m!1977527))

(assert (=> b!1638434 d!493230))

(declare-fun b!1638590 () Bool)

(declare-fun e!1050840 () Option!3397)

(declare-fun call!105699 () Option!3397)

(assert (=> b!1638590 (= e!1050840 call!105699)))

(declare-fun b!1638591 () Bool)

(declare-fun e!1050836 () Bool)

(declare-fun e!1050837 () Bool)

(assert (=> b!1638591 (= e!1050836 e!1050837)))

(declare-fun res!734130 () Bool)

(assert (=> b!1638591 (=> (not res!734130) (not e!1050837))))

(declare-fun lt!600900 () Option!3397)

(assert (=> b!1638591 (= res!734130 (= (_1!10236 (get!5238 lt!600900)) (_1!10238 (get!5239 (maxPrefixZipper!335 thiss!17113 rules!1846 (list!7114 (seqFromList!2105 (originalCharacters!3992 (h!23436 tokens!457)))))))))))

(declare-fun b!1638592 () Bool)

(declare-fun res!734129 () Bool)

(declare-fun e!1050835 () Bool)

(assert (=> b!1638592 (=> (not res!734129) (not e!1050835))))

(assert (=> b!1638592 (= res!734129 e!1050836)))

(declare-fun res!734128 () Bool)

(assert (=> b!1638592 (=> res!734128 e!1050836)))

(assert (=> b!1638592 (= res!734128 (not (isDefined!2765 lt!600900)))))

(declare-fun b!1638593 () Bool)

(declare-fun lt!600898 () Option!3397)

(declare-fun lt!600903 () Option!3397)

(assert (=> b!1638593 (= e!1050840 (ite (and (is-None!3396 lt!600898) (is-None!3396 lt!600903)) None!3396 (ite (is-None!3396 lt!600903) lt!600898 (ite (is-None!3396 lt!600898) lt!600903 (ite (>= (size!14369 (_1!10236 (v!24491 lt!600898))) (size!14369 (_1!10236 (v!24491 lt!600903)))) lt!600898 lt!600903)))))))

(assert (=> b!1638593 (= lt!600898 call!105699)))

(assert (=> b!1638593 (= lt!600903 (maxPrefixZipperSequence!702 thiss!17113 (t!149857 rules!1846) (seqFromList!2105 (originalCharacters!3992 (h!23436 tokens!457)))))))

(declare-fun bm!105694 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!333 (LexerInterface!2807 Rule!6156 BalanceConc!11952) Option!3397)

(assert (=> bm!105694 (= call!105699 (maxPrefixOneRuleZipperSequence!333 thiss!17113 (h!23437 rules!1846) (seqFromList!2105 (originalCharacters!3992 (h!23436 tokens!457)))))))

(declare-fun b!1638595 () Bool)

(assert (=> b!1638595 (= e!1050837 (= (list!7114 (_2!10236 (get!5238 lt!600900))) (_2!10238 (get!5239 (maxPrefixZipper!335 thiss!17113 rules!1846 (list!7114 (seqFromList!2105 (originalCharacters!3992 (h!23436 tokens!457)))))))))))

(declare-fun b!1638596 () Bool)

(declare-fun e!1050838 () Bool)

(assert (=> b!1638596 (= e!1050835 e!1050838)))

(declare-fun res!734131 () Bool)

(assert (=> b!1638596 (=> res!734131 e!1050838)))

(assert (=> b!1638596 (= res!734131 (not (isDefined!2765 lt!600900)))))

(declare-fun e!1050839 () Bool)

(declare-fun b!1638597 () Bool)

(assert (=> b!1638597 (= e!1050839 (= (list!7114 (_2!10236 (get!5238 lt!600900))) (_2!10238 (get!5239 (maxPrefix!1371 thiss!17113 rules!1846 (list!7114 (seqFromList!2105 (originalCharacters!3992 (h!23436 tokens!457)))))))))))

(declare-fun b!1638594 () Bool)

(assert (=> b!1638594 (= e!1050838 e!1050839)))

(declare-fun res!734132 () Bool)

(assert (=> b!1638594 (=> (not res!734132) (not e!1050839))))

(assert (=> b!1638594 (= res!734132 (= (_1!10236 (get!5238 lt!600900)) (_1!10238 (get!5239 (maxPrefix!1371 thiss!17113 rules!1846 (list!7114 (seqFromList!2105 (originalCharacters!3992 (h!23436 tokens!457)))))))))))

(declare-fun d!493232 () Bool)

(assert (=> d!493232 e!1050835))

(declare-fun res!734127 () Bool)

(assert (=> d!493232 (=> (not res!734127) (not e!1050835))))

(assert (=> d!493232 (= res!734127 (= (isDefined!2765 lt!600900) (isDefined!2764 (maxPrefixZipper!335 thiss!17113 rules!1846 (list!7114 (seqFromList!2105 (originalCharacters!3992 (h!23436 tokens!457))))))))))

(assert (=> d!493232 (= lt!600900 e!1050840)))

(declare-fun c!266539 () Bool)

(assert (=> d!493232 (= c!266539 (and (is-Cons!18036 rules!1846) (is-Nil!18036 (t!149857 rules!1846))))))

(declare-fun lt!600897 () Unit!29579)

(declare-fun lt!600901 () Unit!29579)

(assert (=> d!493232 (= lt!600897 lt!600901)))

(declare-fun lt!600899 () List!18104)

(declare-fun lt!600902 () List!18104)

(assert (=> d!493232 (isPrefix!1438 lt!600899 lt!600902)))

(declare-fun lemmaIsPrefixRefl!977 (List!18104 List!18104) Unit!29579)

(assert (=> d!493232 (= lt!600901 (lemmaIsPrefixRefl!977 lt!600899 lt!600902))))

(assert (=> d!493232 (= lt!600902 (list!7114 (seqFromList!2105 (originalCharacters!3992 (h!23436 tokens!457)))))))

(assert (=> d!493232 (= lt!600899 (list!7114 (seqFromList!2105 (originalCharacters!3992 (h!23436 tokens!457)))))))

(declare-fun rulesValidInductive!997 (LexerInterface!2807 List!18106) Bool)

(assert (=> d!493232 (rulesValidInductive!997 thiss!17113 rules!1846)))

(assert (=> d!493232 (= (maxPrefixZipperSequence!702 thiss!17113 rules!1846 (seqFromList!2105 (originalCharacters!3992 (h!23436 tokens!457)))) lt!600900)))

(assert (= (and d!493232 c!266539) b!1638590))

(assert (= (and d!493232 (not c!266539)) b!1638593))

(assert (= (or b!1638590 b!1638593) bm!105694))

(assert (= (and d!493232 res!734127) b!1638592))

(assert (= (and b!1638592 (not res!734128)) b!1638591))

(assert (= (and b!1638591 res!734130) b!1638595))

(assert (= (and b!1638592 res!734129) b!1638596))

(assert (= (and b!1638596 (not res!734131)) b!1638594))

(assert (= (and b!1638594 res!734132) b!1638597))

(declare-fun m!1977533 () Bool)

(assert (=> b!1638595 m!1977533))

(declare-fun m!1977535 () Bool)

(assert (=> b!1638595 m!1977535))

(assert (=> b!1638595 m!1977535))

(declare-fun m!1977537 () Bool)

(assert (=> b!1638595 m!1977537))

(assert (=> b!1638595 m!1977249))

(assert (=> b!1638595 m!1977533))

(declare-fun m!1977539 () Bool)

(assert (=> b!1638595 m!1977539))

(declare-fun m!1977541 () Bool)

(assert (=> b!1638595 m!1977541))

(assert (=> d!493232 m!1977535))

(declare-fun m!1977543 () Bool)

(assert (=> d!493232 m!1977543))

(declare-fun m!1977545 () Bool)

(assert (=> d!493232 m!1977545))

(assert (=> d!493232 m!1977249))

(assert (=> d!493232 m!1977533))

(declare-fun m!1977547 () Bool)

(assert (=> d!493232 m!1977547))

(declare-fun m!1977549 () Bool)

(assert (=> d!493232 m!1977549))

(declare-fun m!1977551 () Bool)

(assert (=> d!493232 m!1977551))

(assert (=> d!493232 m!1977533))

(assert (=> d!493232 m!1977535))

(assert (=> b!1638597 m!1977533))

(declare-fun m!1977553 () Bool)

(assert (=> b!1638597 m!1977553))

(assert (=> b!1638597 m!1977249))

(assert (=> b!1638597 m!1977533))

(assert (=> b!1638597 m!1977553))

(declare-fun m!1977555 () Bool)

(assert (=> b!1638597 m!1977555))

(assert (=> b!1638597 m!1977539))

(assert (=> b!1638597 m!1977541))

(assert (=> b!1638592 m!1977547))

(assert (=> b!1638594 m!1977539))

(assert (=> b!1638594 m!1977249))

(assert (=> b!1638594 m!1977533))

(assert (=> b!1638594 m!1977533))

(assert (=> b!1638594 m!1977553))

(assert (=> b!1638594 m!1977553))

(assert (=> b!1638594 m!1977555))

(assert (=> bm!105694 m!1977249))

(declare-fun m!1977557 () Bool)

(assert (=> bm!105694 m!1977557))

(assert (=> b!1638596 m!1977547))

(assert (=> b!1638591 m!1977539))

(assert (=> b!1638591 m!1977249))

(assert (=> b!1638591 m!1977533))

(assert (=> b!1638591 m!1977533))

(assert (=> b!1638591 m!1977535))

(assert (=> b!1638591 m!1977535))

(assert (=> b!1638591 m!1977537))

(assert (=> b!1638593 m!1977249))

(declare-fun m!1977559 () Bool)

(assert (=> b!1638593 m!1977559))

(assert (=> b!1638434 d!493232))

(declare-fun d!493238 () Bool)

(assert (=> d!493238 (= (seqFromList!2105 (originalCharacters!3992 (h!23436 tokens!457))) (fromListB!928 (originalCharacters!3992 (h!23436 tokens!457))))))

(declare-fun bs!395511 () Bool)

(assert (= bs!395511 d!493238))

(declare-fun m!1977561 () Bool)

(assert (=> bs!395511 m!1977561))

(assert (=> b!1638434 d!493238))

(declare-fun d!493240 () Bool)

(declare-fun lt!600906 () C!9186)

(assert (=> d!493240 (= lt!600906 (head!3548 (list!7114 lt!600758)))))

(declare-fun head!3552 (Conc!6004) C!9186)

(assert (=> d!493240 (= lt!600906 (head!3552 (c!266527 lt!600758)))))

(declare-fun isEmpty!11075 (BalanceConc!11952) Bool)

(assert (=> d!493240 (not (isEmpty!11075 lt!600758))))

(assert (=> d!493240 (= (head!3549 lt!600758) lt!600906)))

(declare-fun bs!395512 () Bool)

(assert (= bs!395512 d!493240))

(assert (=> bs!395512 m!1977201))

(assert (=> bs!395512 m!1977201))

(declare-fun m!1977563 () Bool)

(assert (=> bs!395512 m!1977563))

(declare-fun m!1977565 () Bool)

(assert (=> bs!395512 m!1977565))

(declare-fun m!1977567 () Bool)

(assert (=> bs!395512 m!1977567))

(assert (=> b!1638434 d!493240))

(declare-fun d!493242 () Bool)

(declare-fun isEmpty!11076 (Option!3398) Bool)

(assert (=> d!493242 (= (isDefined!2764 lt!600760) (not (isEmpty!11076 lt!600760)))))

(declare-fun bs!395513 () Bool)

(assert (= bs!395513 d!493242))

(declare-fun m!1977569 () Bool)

(assert (=> bs!395513 m!1977569))

(assert (=> b!1638411 d!493242))

(declare-fun b!1638617 () Bool)

(declare-fun e!1050851 () Unit!29579)

(declare-fun Unit!29584 () Unit!29579)

(assert (=> b!1638617 (= e!1050851 Unit!29584)))

(declare-fun lt!600980 () List!18104)

(assert (=> b!1638617 (= lt!600980 (++!4837 lt!600769 lt!600778))))

(declare-fun lt!600981 () Token!5922)

(declare-fun lt!600976 () Unit!29579)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!195 (LexerInterface!2807 Rule!6156 List!18106 List!18104) Unit!29579)

(assert (=> b!1638617 (= lt!600976 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!195 thiss!17113 (rule!5024 lt!600981) rules!1846 lt!600980))))

(declare-fun maxPrefixOneRule!792 (LexerInterface!2807 Rule!6156 List!18104) Option!3398)

(assert (=> b!1638617 (isEmpty!11076 (maxPrefixOneRule!792 thiss!17113 (rule!5024 lt!600981) lt!600980))))

(declare-fun lt!600965 () Unit!29579)

(assert (=> b!1638617 (= lt!600965 lt!600976)))

(declare-fun lt!600967 () List!18104)

(assert (=> b!1638617 (= lt!600967 (list!7114 (charsOf!1827 lt!600981)))))

(declare-fun lt!600973 () Unit!29579)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!191 (LexerInterface!2807 Rule!6156 List!18104 List!18104) Unit!29579)

(assert (=> b!1638617 (= lt!600973 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!191 thiss!17113 (rule!5024 lt!600981) lt!600967 (++!4837 lt!600769 lt!600778)))))

(assert (=> b!1638617 (not (matchR!2005 (regex!3178 (rule!5024 lt!600981)) lt!600967))))

(declare-fun lt!600974 () Unit!29579)

(assert (=> b!1638617 (= lt!600974 lt!600973)))

(assert (=> b!1638617 false))

(declare-fun b!1638615 () Bool)

(declare-fun res!734140 () Bool)

(declare-fun e!1050852 () Bool)

(assert (=> b!1638615 (=> (not res!734140) (not e!1050852))))

(declare-datatypes ((Option!3401 0))(
  ( (None!3400) (Some!3400 (v!24501 Rule!6156)) )
))
(declare-fun get!5242 (Option!3401) Rule!6156)

(declare-fun getRuleFromTag!301 (LexerInterface!2807 List!18106 String!20674) Option!3401)

(assert (=> b!1638615 (= res!734140 (matchR!2005 (regex!3178 (get!5242 (getRuleFromTag!301 thiss!17113 rules!1846 (tag!3458 (rule!5024 lt!600981))))) (list!7114 (charsOf!1827 lt!600981))))))

(declare-fun d!493244 () Bool)

(assert (=> d!493244 (isDefined!2764 (maxPrefix!1371 thiss!17113 rules!1846 (++!4837 lt!600769 lt!600778)))))

(declare-fun lt!600966 () Unit!29579)

(assert (=> d!493244 (= lt!600966 e!1050851)))

(declare-fun c!266546 () Bool)

(assert (=> d!493244 (= c!266546 (isEmpty!11076 (maxPrefix!1371 thiss!17113 rules!1846 (++!4837 lt!600769 lt!600778))))))

(declare-fun lt!600977 () Unit!29579)

(declare-fun lt!600972 () Unit!29579)

(assert (=> d!493244 (= lt!600977 lt!600972)))

(assert (=> d!493244 e!1050852))

(declare-fun res!734141 () Bool)

(assert (=> d!493244 (=> (not res!734141) (not e!1050852))))

(declare-fun isDefined!2768 (Option!3401) Bool)

(assert (=> d!493244 (= res!734141 (isDefined!2768 (getRuleFromTag!301 thiss!17113 rules!1846 (tag!3458 (rule!5024 lt!600981)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!301 (LexerInterface!2807 List!18106 List!18104 Token!5922) Unit!29579)

(assert (=> d!493244 (= lt!600972 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!301 thiss!17113 rules!1846 lt!600769 lt!600981))))

(declare-fun lt!600969 () Unit!29579)

(declare-fun lt!600970 () Unit!29579)

(assert (=> d!493244 (= lt!600969 lt!600970)))

(declare-fun lt!600968 () List!18104)

(assert (=> d!493244 (isPrefix!1438 lt!600968 (++!4837 lt!600769 lt!600778))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!187 (List!18104 List!18104 List!18104) Unit!29579)

(assert (=> d!493244 (= lt!600970 (lemmaPrefixStaysPrefixWhenAddingToSuffix!187 lt!600968 lt!600769 lt!600778))))

(assert (=> d!493244 (= lt!600968 (list!7114 (charsOf!1827 lt!600981)))))

(declare-fun lt!600971 () Unit!29579)

(declare-fun lt!600978 () Unit!29579)

(assert (=> d!493244 (= lt!600971 lt!600978)))

(declare-fun lt!600975 () List!18104)

(declare-fun lt!600979 () List!18104)

(assert (=> d!493244 (isPrefix!1438 lt!600975 (++!4837 lt!600975 lt!600979))))

(assert (=> d!493244 (= lt!600978 (lemmaConcatTwoListThenFirstIsPrefix!963 lt!600975 lt!600979))))

(assert (=> d!493244 (= lt!600979 (_2!10238 (get!5239 (maxPrefix!1371 thiss!17113 rules!1846 lt!600769))))))

(assert (=> d!493244 (= lt!600975 (list!7114 (charsOf!1827 lt!600981)))))

(declare-fun head!3553 (List!18105) Token!5922)

(assert (=> d!493244 (= lt!600981 (head!3553 (list!7113 (_1!10237 (lex!1291 thiss!17113 rules!1846 (seqFromList!2105 lt!600769))))))))

(assert (=> d!493244 (not (isEmpty!11068 rules!1846))))

(assert (=> d!493244 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!381 thiss!17113 rules!1846 lt!600769 lt!600778) lt!600966)))

(declare-fun b!1638616 () Bool)

(assert (=> b!1638616 (= e!1050852 (= (rule!5024 lt!600981) (get!5242 (getRuleFromTag!301 thiss!17113 rules!1846 (tag!3458 (rule!5024 lt!600981))))))))

(declare-fun b!1638618 () Bool)

(declare-fun Unit!29585 () Unit!29579)

(assert (=> b!1638618 (= e!1050851 Unit!29585)))

(assert (= (and d!493244 res!734141) b!1638615))

(assert (= (and b!1638615 res!734140) b!1638616))

(assert (= (and d!493244 c!266546) b!1638617))

(assert (= (and d!493244 (not c!266546)) b!1638618))

(assert (=> b!1638617 m!1977209))

(declare-fun m!1977609 () Bool)

(assert (=> b!1638617 m!1977609))

(assert (=> b!1638617 m!1977209))

(declare-fun m!1977611 () Bool)

(assert (=> b!1638617 m!1977611))

(declare-fun m!1977613 () Bool)

(assert (=> b!1638617 m!1977613))

(assert (=> b!1638617 m!1977609))

(declare-fun m!1977615 () Bool)

(assert (=> b!1638617 m!1977615))

(declare-fun m!1977617 () Bool)

(assert (=> b!1638617 m!1977617))

(assert (=> b!1638617 m!1977613))

(declare-fun m!1977619 () Bool)

(assert (=> b!1638617 m!1977619))

(declare-fun m!1977621 () Bool)

(assert (=> b!1638617 m!1977621))

(assert (=> b!1638615 m!1977619))

(declare-fun m!1977623 () Bool)

(assert (=> b!1638615 m!1977623))

(declare-fun m!1977625 () Bool)

(assert (=> b!1638615 m!1977625))

(assert (=> b!1638615 m!1977625))

(declare-fun m!1977627 () Bool)

(assert (=> b!1638615 m!1977627))

(assert (=> b!1638615 m!1977613))

(assert (=> b!1638615 m!1977613))

(assert (=> b!1638615 m!1977619))

(assert (=> d!493244 m!1977209))

(declare-fun m!1977629 () Bool)

(assert (=> d!493244 m!1977629))

(assert (=> d!493244 m!1977215))

(assert (=> d!493244 m!1977625))

(declare-fun m!1977631 () Bool)

(assert (=> d!493244 m!1977631))

(declare-fun m!1977633 () Bool)

(assert (=> d!493244 m!1977633))

(declare-fun m!1977635 () Bool)

(assert (=> d!493244 m!1977635))

(assert (=> d!493244 m!1977625))

(declare-fun m!1977637 () Bool)

(assert (=> d!493244 m!1977637))

(assert (=> d!493244 m!1977209))

(assert (=> d!493244 m!1977633))

(assert (=> d!493244 m!1977215))

(assert (=> d!493244 m!1977217))

(assert (=> d!493244 m!1977613))

(assert (=> d!493244 m!1977619))

(assert (=> d!493244 m!1977637))

(declare-fun m!1977639 () Bool)

(assert (=> d!493244 m!1977639))

(assert (=> d!493244 m!1977633))

(declare-fun m!1977641 () Bool)

(assert (=> d!493244 m!1977641))

(assert (=> d!493244 m!1977489))

(declare-fun m!1977643 () Bool)

(assert (=> d!493244 m!1977643))

(assert (=> d!493244 m!1977325))

(assert (=> d!493244 m!1977613))

(assert (=> d!493244 m!1977325))

(declare-fun m!1977645 () Bool)

(assert (=> d!493244 m!1977645))

(declare-fun m!1977647 () Bool)

(assert (=> d!493244 m!1977647))

(declare-fun m!1977649 () Bool)

(assert (=> d!493244 m!1977649))

(assert (=> d!493244 m!1977189))

(assert (=> d!493244 m!1977209))

(declare-fun m!1977651 () Bool)

(assert (=> d!493244 m!1977651))

(assert (=> d!493244 m!1977489))

(assert (=> b!1638616 m!1977625))

(assert (=> b!1638616 m!1977625))

(assert (=> b!1638616 m!1977627))

(assert (=> b!1638411 d!493244))

(declare-fun d!493262 () Bool)

(assert (=> d!493262 (= (inv!23380 (tag!3458 (rule!5024 (h!23436 tokens!457)))) (= (mod (str.len (value!100246 (tag!3458 (rule!5024 (h!23436 tokens!457))))) 2) 0))))

(assert (=> b!1638436 d!493262))

(declare-fun d!493264 () Bool)

(declare-fun res!734144 () Bool)

(declare-fun e!1050855 () Bool)

(assert (=> d!493264 (=> (not res!734144) (not e!1050855))))

(declare-fun semiInverseModEq!1217 (Int Int) Bool)

(assert (=> d!493264 (= res!734144 (semiInverseModEq!1217 (toChars!4468 (transformation!3178 (rule!5024 (h!23436 tokens!457)))) (toValue!4609 (transformation!3178 (rule!5024 (h!23436 tokens!457))))))))

(assert (=> d!493264 (= (inv!23383 (transformation!3178 (rule!5024 (h!23436 tokens!457)))) e!1050855)))

(declare-fun b!1638621 () Bool)

(declare-fun equivClasses!1158 (Int Int) Bool)

(assert (=> b!1638621 (= e!1050855 (equivClasses!1158 (toChars!4468 (transformation!3178 (rule!5024 (h!23436 tokens!457)))) (toValue!4609 (transformation!3178 (rule!5024 (h!23436 tokens!457))))))))

(assert (= (and d!493264 res!734144) b!1638621))

(declare-fun m!1977653 () Bool)

(assert (=> d!493264 m!1977653))

(declare-fun m!1977655 () Bool)

(assert (=> b!1638621 m!1977655))

(assert (=> b!1638436 d!493264))

(declare-fun b!1638717 () Bool)

(declare-fun e!1050921 () Bool)

(assert (=> b!1638717 (= e!1050921 true)))

(declare-fun b!1638716 () Bool)

(declare-fun e!1050920 () Bool)

(assert (=> b!1638716 (= e!1050920 e!1050921)))

(declare-fun b!1638715 () Bool)

(declare-fun e!1050919 () Bool)

(assert (=> b!1638715 (= e!1050919 e!1050920)))

(declare-fun d!493266 () Bool)

(assert (=> d!493266 e!1050919))

(assert (= b!1638716 b!1638717))

(assert (= b!1638715 b!1638716))

(assert (= (and d!493266 (is-Cons!18036 rules!1846)) b!1638715))

(declare-fun lambda!67445 () Int)

(declare-fun order!10691 () Int)

(declare-fun order!10689 () Int)

(declare-fun dynLambda!8035 (Int Int) Int)

(declare-fun dynLambda!8036 (Int Int) Int)

(assert (=> b!1638717 (< (dynLambda!8035 order!10689 (toValue!4609 (transformation!3178 (h!23437 rules!1846)))) (dynLambda!8036 order!10691 lambda!67445))))

(declare-fun order!10693 () Int)

(declare-fun dynLambda!8037 (Int Int) Int)

(assert (=> b!1638717 (< (dynLambda!8037 order!10693 (toChars!4468 (transformation!3178 (h!23437 rules!1846)))) (dynLambda!8036 order!10691 lambda!67445))))

(assert (=> d!493266 true))

(declare-fun lt!601028 () Bool)

(declare-fun forall!4113 (List!18105 Int) Bool)

(assert (=> d!493266 (= lt!601028 (forall!4113 tokens!457 lambda!67445))))

(declare-fun e!1050912 () Bool)

(assert (=> d!493266 (= lt!601028 e!1050912)))

(declare-fun res!734204 () Bool)

(assert (=> d!493266 (=> res!734204 e!1050912)))

(assert (=> d!493266 (= res!734204 (not (is-Cons!18035 tokens!457)))))

(assert (=> d!493266 (not (isEmpty!11068 rules!1846))))

(assert (=> d!493266 (= (rulesProduceEachTokenIndividuallyList!1009 thiss!17113 rules!1846 tokens!457) lt!601028)))

(declare-fun b!1638705 () Bool)

(declare-fun e!1050911 () Bool)

(assert (=> b!1638705 (= e!1050912 e!1050911)))

(declare-fun res!734203 () Bool)

(assert (=> b!1638705 (=> (not res!734203) (not e!1050911))))

(assert (=> b!1638705 (= res!734203 (rulesProduceIndividualToken!1459 thiss!17113 rules!1846 (h!23436 tokens!457)))))

(declare-fun b!1638706 () Bool)

(assert (=> b!1638706 (= e!1050911 (rulesProduceEachTokenIndividuallyList!1009 thiss!17113 rules!1846 (t!149856 tokens!457)))))

(assert (= (and d!493266 (not res!734204)) b!1638705))

(assert (= (and b!1638705 res!734203) b!1638706))

(declare-fun m!1977803 () Bool)

(assert (=> d!493266 m!1977803))

(assert (=> d!493266 m!1977189))

(assert (=> b!1638705 m!1977231))

(declare-fun m!1977805 () Bool)

(assert (=> b!1638706 m!1977805))

(assert (=> b!1638415 d!493266))

(declare-fun d!493312 () Bool)

(assert (=> d!493312 (= (get!5239 (maxPrefixZipper!335 thiss!17113 rules!1846 lt!600756)) (v!24492 (maxPrefixZipper!335 thiss!17113 rules!1846 lt!600756)))))

(assert (=> b!1638413 d!493312))

(declare-fun lt!601096 () Option!3398)

(declare-fun d!493314 () Bool)

(assert (=> d!493314 (= lt!601096 (maxPrefix!1371 thiss!17113 rules!1846 lt!600756))))

(declare-fun e!1050942 () Option!3398)

(assert (=> d!493314 (= lt!601096 e!1050942)))

(declare-fun c!266568 () Bool)

(assert (=> d!493314 (= c!266568 (and (is-Cons!18036 rules!1846) (is-Nil!18036 (t!149857 rules!1846))))))

(declare-fun lt!601093 () Unit!29579)

(declare-fun lt!601097 () Unit!29579)

(assert (=> d!493314 (= lt!601093 lt!601097)))

(assert (=> d!493314 (isPrefix!1438 lt!600756 lt!600756)))

(assert (=> d!493314 (= lt!601097 (lemmaIsPrefixRefl!977 lt!600756 lt!600756))))

(assert (=> d!493314 (rulesValidInductive!997 thiss!17113 rules!1846)))

(assert (=> d!493314 (= (maxPrefixZipper!335 thiss!17113 rules!1846 lt!600756) lt!601096)))

(declare-fun call!105708 () Option!3398)

(declare-fun bm!105703 () Bool)

(declare-fun maxPrefixOneRuleZipper!120 (LexerInterface!2807 Rule!6156 List!18104) Option!3398)

(assert (=> bm!105703 (= call!105708 (maxPrefixOneRuleZipper!120 thiss!17113 (h!23437 rules!1846) lt!600756))))

(declare-fun b!1638754 () Bool)

(assert (=> b!1638754 (= e!1050942 call!105708)))

(declare-fun b!1638755 () Bool)

(declare-fun lt!601095 () Option!3398)

(declare-fun lt!601094 () Option!3398)

(assert (=> b!1638755 (= e!1050942 (ite (and (is-None!3397 lt!601095) (is-None!3397 lt!601094)) None!3397 (ite (is-None!3397 lt!601094) lt!601095 (ite (is-None!3397 lt!601095) lt!601094 (ite (>= (size!14369 (_1!10238 (v!24492 lt!601095))) (size!14369 (_1!10238 (v!24492 lt!601094)))) lt!601095 lt!601094)))))))

(assert (=> b!1638755 (= lt!601095 call!105708)))

(assert (=> b!1638755 (= lt!601094 (maxPrefixZipper!335 thiss!17113 (t!149857 rules!1846) lt!600756))))

(assert (= (and d!493314 c!266568) b!1638754))

(assert (= (and d!493314 (not c!266568)) b!1638755))

(assert (= (or b!1638754 b!1638755) bm!105703))

(assert (=> d!493314 m!1977281))

(declare-fun m!1977863 () Bool)

(assert (=> d!493314 m!1977863))

(declare-fun m!1977865 () Bool)

(assert (=> d!493314 m!1977865))

(assert (=> d!493314 m!1977545))

(declare-fun m!1977867 () Bool)

(assert (=> bm!105703 m!1977867))

(declare-fun m!1977869 () Bool)

(assert (=> b!1638755 m!1977869))

(assert (=> b!1638413 d!493314))

(declare-fun d!493322 () Bool)

(assert (=> d!493322 (= (separableTokensPredicate!749 thiss!17113 (h!23436 tokens!457) (h!23436 (t!149856 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!584 (rulesRegex!568 thiss!17113 rules!1846) (++!4838 (charsOf!1827 (h!23436 tokens!457)) (singletonSeq!1634 (apply!4683 (charsOf!1827 (h!23436 (t!149856 tokens!457))) 0))))))))

(declare-fun bs!395532 () Bool)

(assert (= bs!395532 d!493322))

(assert (=> bs!395532 m!1977233))

(assert (=> bs!395532 m!1977191))

(assert (=> bs!395532 m!1977233))

(declare-fun m!1977897 () Bool)

(assert (=> bs!395532 m!1977897))

(declare-fun m!1977899 () Bool)

(assert (=> bs!395532 m!1977899))

(assert (=> bs!395532 m!1977191))

(assert (=> bs!395532 m!1977237))

(assert (=> bs!395532 m!1977897))

(assert (=> bs!395532 m!1977235))

(assert (=> bs!395532 m!1977237))

(assert (=> bs!395532 m!1977243))

(assert (=> bs!395532 m!1977235))

(assert (=> bs!395532 m!1977243))

(assert (=> b!1638414 d!493322))

(declare-fun b!1638799 () Bool)

(declare-fun res!734253 () Bool)

(declare-fun e!1050963 () Bool)

(assert (=> b!1638799 (=> (not res!734253) (not e!1050963))))

(declare-fun lt!601159 () Option!3398)

(declare-fun apply!4685 (TokenValueInjection!6196 BalanceConc!11952) TokenValue!3268)

(assert (=> b!1638799 (= res!734253 (= (value!100247 (_1!10238 (get!5239 lt!601159))) (apply!4685 (transformation!3178 (rule!5024 (_1!10238 (get!5239 lt!601159)))) (seqFromList!2105 (originalCharacters!3992 (_1!10238 (get!5239 lt!601159)))))))))

(declare-fun d!493326 () Bool)

(declare-fun e!1050964 () Bool)

(assert (=> d!493326 e!1050964))

(declare-fun res!734255 () Bool)

(assert (=> d!493326 (=> res!734255 e!1050964)))

(assert (=> d!493326 (= res!734255 (isEmpty!11076 lt!601159))))

(declare-fun e!1050965 () Option!3398)

(assert (=> d!493326 (= lt!601159 e!1050965)))

(declare-fun c!266575 () Bool)

(assert (=> d!493326 (= c!266575 (and (is-Cons!18036 rules!1846) (is-Nil!18036 (t!149857 rules!1846))))))

(declare-fun lt!601158 () Unit!29579)

(declare-fun lt!601155 () Unit!29579)

(assert (=> d!493326 (= lt!601158 lt!601155)))

(assert (=> d!493326 (isPrefix!1438 lt!600756 lt!600756)))

(assert (=> d!493326 (= lt!601155 (lemmaIsPrefixRefl!977 lt!600756 lt!600756))))

(assert (=> d!493326 (rulesValidInductive!997 thiss!17113 rules!1846)))

(assert (=> d!493326 (= (maxPrefix!1371 thiss!17113 rules!1846 lt!600756) lt!601159)))

(declare-fun b!1638800 () Bool)

(declare-fun lt!601157 () Option!3398)

(declare-fun lt!601156 () Option!3398)

(assert (=> b!1638800 (= e!1050965 (ite (and (is-None!3397 lt!601157) (is-None!3397 lt!601156)) None!3397 (ite (is-None!3397 lt!601156) lt!601157 (ite (is-None!3397 lt!601157) lt!601156 (ite (>= (size!14369 (_1!10238 (v!24492 lt!601157))) (size!14369 (_1!10238 (v!24492 lt!601156)))) lt!601157 lt!601156)))))))

(declare-fun call!105712 () Option!3398)

(assert (=> b!1638800 (= lt!601157 call!105712)))

(assert (=> b!1638800 (= lt!601156 (maxPrefix!1371 thiss!17113 (t!149857 rules!1846) lt!600756))))

(declare-fun b!1638801 () Bool)

(declare-fun res!734254 () Bool)

(assert (=> b!1638801 (=> (not res!734254) (not e!1050963))))

(assert (=> b!1638801 (= res!734254 (= (++!4837 (list!7114 (charsOf!1827 (_1!10238 (get!5239 lt!601159)))) (_2!10238 (get!5239 lt!601159))) lt!600756))))

(declare-fun b!1638802 () Bool)

(declare-fun res!734257 () Bool)

(assert (=> b!1638802 (=> (not res!734257) (not e!1050963))))

(assert (=> b!1638802 (= res!734257 (= (list!7114 (charsOf!1827 (_1!10238 (get!5239 lt!601159)))) (originalCharacters!3992 (_1!10238 (get!5239 lt!601159)))))))

(declare-fun b!1638803 () Bool)

(assert (=> b!1638803 (= e!1050965 call!105712)))

(declare-fun b!1638804 () Bool)

(declare-fun res!734256 () Bool)

(assert (=> b!1638804 (=> (not res!734256) (not e!1050963))))

(assert (=> b!1638804 (= res!734256 (< (size!14373 (_2!10238 (get!5239 lt!601159))) (size!14373 lt!600756)))))

(declare-fun b!1638805 () Bool)

(declare-fun contains!3143 (List!18106 Rule!6156) Bool)

(assert (=> b!1638805 (= e!1050963 (contains!3143 rules!1846 (rule!5024 (_1!10238 (get!5239 lt!601159)))))))

(declare-fun bm!105707 () Bool)

(assert (=> bm!105707 (= call!105712 (maxPrefixOneRule!792 thiss!17113 (h!23437 rules!1846) lt!600756))))

(declare-fun b!1638806 () Bool)

(assert (=> b!1638806 (= e!1050964 e!1050963)))

(declare-fun res!734258 () Bool)

(assert (=> b!1638806 (=> (not res!734258) (not e!1050963))))

(assert (=> b!1638806 (= res!734258 (isDefined!2764 lt!601159))))

(declare-fun b!1638807 () Bool)

(declare-fun res!734259 () Bool)

(assert (=> b!1638807 (=> (not res!734259) (not e!1050963))))

(assert (=> b!1638807 (= res!734259 (matchR!2005 (regex!3178 (rule!5024 (_1!10238 (get!5239 lt!601159)))) (list!7114 (charsOf!1827 (_1!10238 (get!5239 lt!601159))))))))

(assert (= (and d!493326 c!266575) b!1638803))

(assert (= (and d!493326 (not c!266575)) b!1638800))

(assert (= (or b!1638803 b!1638800) bm!105707))

(assert (= (and d!493326 (not res!734255)) b!1638806))

(assert (= (and b!1638806 res!734258) b!1638802))

(assert (= (and b!1638802 res!734257) b!1638804))

(assert (= (and b!1638804 res!734256) b!1638801))

(assert (= (and b!1638801 res!734254) b!1638799))

(assert (= (and b!1638799 res!734253) b!1638807))

(assert (= (and b!1638807 res!734259) b!1638805))

(declare-fun m!1977973 () Bool)

(assert (=> b!1638804 m!1977973))

(declare-fun m!1977975 () Bool)

(assert (=> b!1638804 m!1977975))

(declare-fun m!1977977 () Bool)

(assert (=> b!1638804 m!1977977))

(assert (=> b!1638802 m!1977973))

(declare-fun m!1977979 () Bool)

(assert (=> b!1638802 m!1977979))

(assert (=> b!1638802 m!1977979))

(declare-fun m!1977981 () Bool)

(assert (=> b!1638802 m!1977981))

(declare-fun m!1977983 () Bool)

(assert (=> d!493326 m!1977983))

(assert (=> d!493326 m!1977863))

(assert (=> d!493326 m!1977865))

(assert (=> d!493326 m!1977545))

(assert (=> b!1638799 m!1977973))

(declare-fun m!1977985 () Bool)

(assert (=> b!1638799 m!1977985))

(assert (=> b!1638799 m!1977985))

(declare-fun m!1977987 () Bool)

(assert (=> b!1638799 m!1977987))

(declare-fun m!1977989 () Bool)

(assert (=> b!1638800 m!1977989))

(assert (=> b!1638807 m!1977973))

(assert (=> b!1638807 m!1977979))

(assert (=> b!1638807 m!1977979))

(assert (=> b!1638807 m!1977981))

(assert (=> b!1638807 m!1977981))

(declare-fun m!1977991 () Bool)

(assert (=> b!1638807 m!1977991))

(declare-fun m!1977993 () Bool)

(assert (=> b!1638806 m!1977993))

(assert (=> b!1638805 m!1977973))

(declare-fun m!1977995 () Bool)

(assert (=> b!1638805 m!1977995))

(declare-fun m!1977997 () Bool)

(assert (=> bm!105707 m!1977997))

(assert (=> b!1638801 m!1977973))

(assert (=> b!1638801 m!1977979))

(assert (=> b!1638801 m!1977979))

(assert (=> b!1638801 m!1977981))

(assert (=> b!1638801 m!1977981))

(declare-fun m!1977999 () Bool)

(assert (=> b!1638801 m!1977999))

(assert (=> b!1638435 d!493326))

(declare-fun d!493348 () Bool)

(declare-fun lt!601176 () BalanceConc!11952)

(assert (=> d!493348 (= (list!7114 lt!601176) (printList!922 thiss!17113 (list!7113 lt!600774)))))

(assert (=> d!493348 (= lt!601176 (printTailRec!860 thiss!17113 lt!600774 0 (BalanceConc!11953 Empty!6004)))))

(assert (=> d!493348 (= (print!1338 thiss!17113 lt!600774) lt!601176)))

(declare-fun bs!395536 () Bool)

(assert (= bs!395536 d!493348))

(declare-fun m!1978001 () Bool)

(assert (=> bs!395536 m!1978001))

(declare-fun m!1978003 () Bool)

(assert (=> bs!395536 m!1978003))

(assert (=> bs!395536 m!1978003))

(declare-fun m!1978005 () Bool)

(assert (=> bs!395536 m!1978005))

(assert (=> bs!395536 m!1977279))

(assert (=> b!1638435 d!493348))

(declare-fun d!493350 () Bool)

(declare-fun list!7117 (Conc!6004) List!18104)

(assert (=> d!493350 (= (list!7114 lt!600757) (list!7117 (c!266527 lt!600757)))))

(declare-fun bs!395537 () Bool)

(assert (= bs!395537 d!493350))

(declare-fun m!1978007 () Bool)

(assert (=> bs!395537 m!1978007))

(assert (=> b!1638435 d!493350))

(declare-fun d!493352 () Bool)

(declare-fun lt!601207 () BalanceConc!11952)

(declare-fun printListTailRec!372 (LexerInterface!2807 List!18105 List!18104) List!18104)

(declare-fun dropList!641 (BalanceConc!11954 Int) List!18105)

(assert (=> d!493352 (= (list!7114 lt!601207) (printListTailRec!372 thiss!17113 (dropList!641 lt!600774 0) (list!7114 (BalanceConc!11953 Empty!6004))))))

(declare-fun e!1050982 () BalanceConc!11952)

(assert (=> d!493352 (= lt!601207 e!1050982)))

(declare-fun c!266584 () Bool)

(assert (=> d!493352 (= c!266584 (>= 0 (size!14372 lt!600774)))))

(declare-fun e!1050983 () Bool)

(assert (=> d!493352 e!1050983))

(declare-fun res!734268 () Bool)

(assert (=> d!493352 (=> (not res!734268) (not e!1050983))))

(assert (=> d!493352 (= res!734268 (>= 0 0))))

(assert (=> d!493352 (= (printTailRec!860 thiss!17113 lt!600774 0 (BalanceConc!11953 Empty!6004)) lt!601207)))

(declare-fun b!1638832 () Bool)

(assert (=> b!1638832 (= e!1050983 (<= 0 (size!14372 lt!600774)))))

(declare-fun b!1638833 () Bool)

(assert (=> b!1638833 (= e!1050982 (BalanceConc!11953 Empty!6004))))

(declare-fun b!1638834 () Bool)

(declare-fun apply!4686 (BalanceConc!11954 Int) Token!5922)

(assert (=> b!1638834 (= e!1050982 (printTailRec!860 thiss!17113 lt!600774 (+ 0 1) (++!4838 (BalanceConc!11953 Empty!6004) (charsOf!1827 (apply!4686 lt!600774 0)))))))

(declare-fun lt!601202 () List!18105)

(assert (=> b!1638834 (= lt!601202 (list!7113 lt!600774))))

(declare-fun lt!601204 () Unit!29579)

(declare-fun lemmaDropApply!579 (List!18105 Int) Unit!29579)

(assert (=> b!1638834 (= lt!601204 (lemmaDropApply!579 lt!601202 0))))

(declare-fun drop!891 (List!18105 Int) List!18105)

(declare-fun apply!4687 (List!18105 Int) Token!5922)

(assert (=> b!1638834 (= (head!3553 (drop!891 lt!601202 0)) (apply!4687 lt!601202 0))))

(declare-fun lt!601208 () Unit!29579)

(assert (=> b!1638834 (= lt!601208 lt!601204)))

(declare-fun lt!601205 () List!18105)

(assert (=> b!1638834 (= lt!601205 (list!7113 lt!600774))))

(declare-fun lt!601206 () Unit!29579)

(declare-fun lemmaDropTail!559 (List!18105 Int) Unit!29579)

(assert (=> b!1638834 (= lt!601206 (lemmaDropTail!559 lt!601205 0))))

(declare-fun tail!2399 (List!18105) List!18105)

(assert (=> b!1638834 (= (tail!2399 (drop!891 lt!601205 0)) (drop!891 lt!601205 (+ 0 1)))))

(declare-fun lt!601203 () Unit!29579)

(assert (=> b!1638834 (= lt!601203 lt!601206)))

(assert (= (and d!493352 res!734268) b!1638832))

(assert (= (and d!493352 c!266584) b!1638833))

(assert (= (and d!493352 (not c!266584)) b!1638834))

(declare-fun m!1978063 () Bool)

(assert (=> d!493352 m!1978063))

(declare-fun m!1978065 () Bool)

(assert (=> d!493352 m!1978065))

(declare-fun m!1978067 () Bool)

(assert (=> d!493352 m!1978067))

(declare-fun m!1978069 () Bool)

(assert (=> d!493352 m!1978069))

(declare-fun m!1978071 () Bool)

(assert (=> d!493352 m!1978071))

(assert (=> d!493352 m!1978067))

(assert (=> d!493352 m!1978069))

(assert (=> b!1638832 m!1978065))

(declare-fun m!1978073 () Bool)

(assert (=> b!1638834 m!1978073))

(declare-fun m!1978075 () Bool)

(assert (=> b!1638834 m!1978075))

(declare-fun m!1978077 () Bool)

(assert (=> b!1638834 m!1978077))

(declare-fun m!1978079 () Bool)

(assert (=> b!1638834 m!1978079))

(declare-fun m!1978081 () Bool)

(assert (=> b!1638834 m!1978081))

(declare-fun m!1978083 () Bool)

(assert (=> b!1638834 m!1978083))

(assert (=> b!1638834 m!1978081))

(declare-fun m!1978085 () Bool)

(assert (=> b!1638834 m!1978085))

(assert (=> b!1638834 m!1978003))

(declare-fun m!1978087 () Bool)

(assert (=> b!1638834 m!1978087))

(assert (=> b!1638834 m!1978079))

(assert (=> b!1638834 m!1978073))

(assert (=> b!1638834 m!1978087))

(declare-fun m!1978089 () Bool)

(assert (=> b!1638834 m!1978089))

(declare-fun m!1978091 () Bool)

(assert (=> b!1638834 m!1978091))

(assert (=> b!1638834 m!1978077))

(declare-fun m!1978093 () Bool)

(assert (=> b!1638834 m!1978093))

(declare-fun m!1978095 () Bool)

(assert (=> b!1638834 m!1978095))

(assert (=> b!1638435 d!493352))

(declare-fun d!493362 () Bool)

(declare-fun c!266587 () Bool)

(assert (=> d!493362 (= c!266587 (is-Cons!18035 (Cons!18035 (h!23436 tokens!457) Nil!18035)))))

(declare-fun e!1050986 () List!18104)

(assert (=> d!493362 (= (printList!922 thiss!17113 (Cons!18035 (h!23436 tokens!457) Nil!18035)) e!1050986)))

(declare-fun b!1638839 () Bool)

(assert (=> b!1638839 (= e!1050986 (++!4837 (list!7114 (charsOf!1827 (h!23436 (Cons!18035 (h!23436 tokens!457) Nil!18035)))) (printList!922 thiss!17113 (t!149856 (Cons!18035 (h!23436 tokens!457) Nil!18035)))))))

(declare-fun b!1638840 () Bool)

(assert (=> b!1638840 (= e!1050986 Nil!18034)))

(assert (= (and d!493362 c!266587) b!1638839))

(assert (= (and d!493362 (not c!266587)) b!1638840))

(declare-fun m!1978097 () Bool)

(assert (=> b!1638839 m!1978097))

(assert (=> b!1638839 m!1978097))

(declare-fun m!1978099 () Bool)

(assert (=> b!1638839 m!1978099))

(declare-fun m!1978101 () Bool)

(assert (=> b!1638839 m!1978101))

(assert (=> b!1638839 m!1978099))

(assert (=> b!1638839 m!1978101))

(declare-fun m!1978103 () Bool)

(assert (=> b!1638839 m!1978103))

(assert (=> b!1638435 d!493362))

(declare-fun d!493364 () Bool)

(declare-fun e!1050989 () Bool)

(assert (=> d!493364 e!1050989))

(declare-fun res!734271 () Bool)

(assert (=> d!493364 (=> (not res!734271) (not e!1050989))))

(declare-fun lt!601211 () BalanceConc!11954)

(assert (=> d!493364 (= res!734271 (= (list!7113 lt!601211) (Cons!18035 (h!23436 tokens!457) Nil!18035)))))

(declare-fun singleton!703 (Token!5922) BalanceConc!11954)

(assert (=> d!493364 (= lt!601211 (singleton!703 (h!23436 tokens!457)))))

(assert (=> d!493364 (= (singletonSeq!1635 (h!23436 tokens!457)) lt!601211)))

(declare-fun b!1638843 () Bool)

(declare-fun isBalanced!1823 (Conc!6005) Bool)

(assert (=> b!1638843 (= e!1050989 (isBalanced!1823 (c!266529 lt!601211)))))

(assert (= (and d!493364 res!734271) b!1638843))

(declare-fun m!1978105 () Bool)

(assert (=> d!493364 m!1978105))

(declare-fun m!1978107 () Bool)

(assert (=> d!493364 m!1978107))

(declare-fun m!1978109 () Bool)

(assert (=> b!1638843 m!1978109))

(assert (=> b!1638435 d!493364))

(declare-fun d!493366 () Bool)

(declare-fun res!734274 () Bool)

(declare-fun e!1050992 () Bool)

(assert (=> d!493366 (=> (not res!734274) (not e!1050992))))

(declare-fun rulesValid!1145 (LexerInterface!2807 List!18106) Bool)

(assert (=> d!493366 (= res!734274 (rulesValid!1145 thiss!17113 rules!1846))))

(assert (=> d!493366 (= (rulesInvariant!2476 thiss!17113 rules!1846) e!1050992)))

(declare-fun b!1638846 () Bool)

(declare-datatypes ((List!18111 0))(
  ( (Nil!18041) (Cons!18041 (h!23442 String!20674) (t!149896 List!18111)) )
))
(declare-fun noDuplicateTag!1145 (LexerInterface!2807 List!18106 List!18111) Bool)

(assert (=> b!1638846 (= e!1050992 (noDuplicateTag!1145 thiss!17113 rules!1846 Nil!18041))))

(assert (= (and d!493366 res!734274) b!1638846))

(declare-fun m!1978111 () Bool)

(assert (=> d!493366 m!1978111))

(declare-fun m!1978113 () Bool)

(assert (=> b!1638846 m!1978113))

(assert (=> b!1638428 d!493366))

(declare-fun b!1638902 () Bool)

(declare-fun e!1051020 () Bool)

(declare-fun derivativeStep!1099 (Regex!4506 C!9186) Regex!4506)

(declare-fun tail!2400 (List!18104) List!18104)

(assert (=> b!1638902 (= e!1051020 (matchR!2005 (derivativeStep!1099 (regex!3178 (rule!5024 (h!23436 tokens!457))) (head!3548 lt!600769)) (tail!2400 lt!600769)))))

(declare-fun b!1638903 () Bool)

(declare-fun res!734312 () Bool)

(declare-fun e!1051022 () Bool)

(assert (=> b!1638903 (=> (not res!734312) (not e!1051022))))

(declare-fun call!105718 () Bool)

(assert (=> b!1638903 (= res!734312 (not call!105718))))

(declare-fun b!1638904 () Bool)

(declare-fun e!1051021 () Bool)

(declare-fun e!1051019 () Bool)

(assert (=> b!1638904 (= e!1051021 e!1051019)))

(declare-fun c!266597 () Bool)

(assert (=> b!1638904 (= c!266597 (is-EmptyLang!4506 (regex!3178 (rule!5024 (h!23436 tokens!457)))))))

(declare-fun bm!105713 () Bool)

(assert (=> bm!105713 (= call!105718 (isEmpty!11067 lt!600769))))

(declare-fun b!1638905 () Bool)

(declare-fun res!734318 () Bool)

(declare-fun e!1051016 () Bool)

(assert (=> b!1638905 (=> res!734318 e!1051016)))

(assert (=> b!1638905 (= res!734318 (not (is-ElementMatch!4506 (regex!3178 (rule!5024 (h!23436 tokens!457))))))))

(assert (=> b!1638905 (= e!1051019 e!1051016)))

(declare-fun b!1638906 () Bool)

(declare-fun res!734319 () Bool)

(assert (=> b!1638906 (=> (not res!734319) (not e!1051022))))

(assert (=> b!1638906 (= res!734319 (isEmpty!11067 (tail!2400 lt!600769)))))

(declare-fun b!1638907 () Bool)

(declare-fun res!734313 () Bool)

(declare-fun e!1051017 () Bool)

(assert (=> b!1638907 (=> res!734313 e!1051017)))

(assert (=> b!1638907 (= res!734313 (not (isEmpty!11067 (tail!2400 lt!600769))))))

(declare-fun b!1638908 () Bool)

(assert (=> b!1638908 (= e!1051022 (= (head!3548 lt!600769) (c!266528 (regex!3178 (rule!5024 (h!23436 tokens!457))))))))

(declare-fun b!1638909 () Bool)

(declare-fun res!734317 () Bool)

(assert (=> b!1638909 (=> res!734317 e!1051016)))

(assert (=> b!1638909 (= res!734317 e!1051022)))

(declare-fun res!734314 () Bool)

(assert (=> b!1638909 (=> (not res!734314) (not e!1051022))))

(declare-fun lt!601229 () Bool)

(assert (=> b!1638909 (= res!734314 lt!601229)))

(declare-fun d!493368 () Bool)

(assert (=> d!493368 e!1051021))

(declare-fun c!266599 () Bool)

(assert (=> d!493368 (= c!266599 (is-EmptyExpr!4506 (regex!3178 (rule!5024 (h!23436 tokens!457)))))))

(assert (=> d!493368 (= lt!601229 e!1051020)))

(declare-fun c!266598 () Bool)

(assert (=> d!493368 (= c!266598 (isEmpty!11067 lt!600769))))

(declare-fun validRegex!1795 (Regex!4506) Bool)

(assert (=> d!493368 (validRegex!1795 (regex!3178 (rule!5024 (h!23436 tokens!457))))))

(assert (=> d!493368 (= (matchR!2005 (regex!3178 (rule!5024 (h!23436 tokens!457))) lt!600769) lt!601229)))

(declare-fun b!1638910 () Bool)

(declare-fun nullable!1334 (Regex!4506) Bool)

(assert (=> b!1638910 (= e!1051020 (nullable!1334 (regex!3178 (rule!5024 (h!23436 tokens!457)))))))

(declare-fun b!1638911 () Bool)

(assert (=> b!1638911 (= e!1051017 (not (= (head!3548 lt!600769) (c!266528 (regex!3178 (rule!5024 (h!23436 tokens!457)))))))))

(declare-fun b!1638912 () Bool)

(assert (=> b!1638912 (= e!1051021 (= lt!601229 call!105718))))

(declare-fun b!1638913 () Bool)

(assert (=> b!1638913 (= e!1051019 (not lt!601229))))

(declare-fun b!1638914 () Bool)

(declare-fun e!1051018 () Bool)

(assert (=> b!1638914 (= e!1051018 e!1051017)))

(declare-fun res!734315 () Bool)

(assert (=> b!1638914 (=> res!734315 e!1051017)))

(assert (=> b!1638914 (= res!734315 call!105718)))

(declare-fun b!1638915 () Bool)

(assert (=> b!1638915 (= e!1051016 e!1051018)))

(declare-fun res!734316 () Bool)

(assert (=> b!1638915 (=> (not res!734316) (not e!1051018))))

(assert (=> b!1638915 (= res!734316 (not lt!601229))))

(assert (= (and d!493368 c!266598) b!1638910))

(assert (= (and d!493368 (not c!266598)) b!1638902))

(assert (= (and d!493368 c!266599) b!1638912))

(assert (= (and d!493368 (not c!266599)) b!1638904))

(assert (= (and b!1638904 c!266597) b!1638913))

(assert (= (and b!1638904 (not c!266597)) b!1638905))

(assert (= (and b!1638905 (not res!734318)) b!1638909))

(assert (= (and b!1638909 res!734314) b!1638903))

(assert (= (and b!1638903 res!734312) b!1638906))

(assert (= (and b!1638906 res!734319) b!1638908))

(assert (= (and b!1638909 (not res!734317)) b!1638915))

(assert (= (and b!1638915 res!734316) b!1638914))

(assert (= (and b!1638914 (not res!734315)) b!1638907))

(assert (= (and b!1638907 (not res!734313)) b!1638911))

(assert (= (or b!1638912 b!1638903 b!1638914) bm!105713))

(declare-fun m!1978143 () Bool)

(assert (=> d!493368 m!1978143))

(declare-fun m!1978145 () Bool)

(assert (=> d!493368 m!1978145))

(declare-fun m!1978147 () Bool)

(assert (=> b!1638910 m!1978147))

(assert (=> bm!105713 m!1978143))

(declare-fun m!1978149 () Bool)

(assert (=> b!1638902 m!1978149))

(assert (=> b!1638902 m!1978149))

(declare-fun m!1978151 () Bool)

(assert (=> b!1638902 m!1978151))

(declare-fun m!1978153 () Bool)

(assert (=> b!1638902 m!1978153))

(assert (=> b!1638902 m!1978151))

(assert (=> b!1638902 m!1978153))

(declare-fun m!1978155 () Bool)

(assert (=> b!1638902 m!1978155))

(assert (=> b!1638911 m!1978149))

(assert (=> b!1638906 m!1978153))

(assert (=> b!1638906 m!1978153))

(declare-fun m!1978157 () Bool)

(assert (=> b!1638906 m!1978157))

(assert (=> b!1638908 m!1978149))

(assert (=> b!1638907 m!1978153))

(assert (=> b!1638907 m!1978153))

(assert (=> b!1638907 m!1978157))

(assert (=> b!1638427 d!493368))

(declare-fun d!493372 () Bool)

(assert (=> d!493372 (= (get!5238 lt!600782) (v!24491 lt!600782))))

(assert (=> b!1638409 d!493372))

(declare-fun b!1638916 () Bool)

(declare-fun e!1051028 () Option!3397)

(declare-fun call!105719 () Option!3397)

(assert (=> b!1638916 (= e!1051028 call!105719)))

(declare-fun b!1638917 () Bool)

(declare-fun e!1051024 () Bool)

(declare-fun e!1051025 () Bool)

(assert (=> b!1638917 (= e!1051024 e!1051025)))

(declare-fun res!734323 () Bool)

(assert (=> b!1638917 (=> (not res!734323) (not e!1051025))))

(declare-fun lt!601233 () Option!3397)

(assert (=> b!1638917 (= res!734323 (= (_1!10236 (get!5238 lt!601233)) (_1!10238 (get!5239 (maxPrefixZipper!335 thiss!17113 rules!1846 (list!7114 lt!600759))))))))

(declare-fun b!1638918 () Bool)

(declare-fun res!734322 () Bool)

(declare-fun e!1051023 () Bool)

(assert (=> b!1638918 (=> (not res!734322) (not e!1051023))))

(assert (=> b!1638918 (= res!734322 e!1051024)))

(declare-fun res!734321 () Bool)

(assert (=> b!1638918 (=> res!734321 e!1051024)))

(assert (=> b!1638918 (= res!734321 (not (isDefined!2765 lt!601233)))))

(declare-fun b!1638919 () Bool)

(declare-fun lt!601231 () Option!3397)

(declare-fun lt!601236 () Option!3397)

(assert (=> b!1638919 (= e!1051028 (ite (and (is-None!3396 lt!601231) (is-None!3396 lt!601236)) None!3396 (ite (is-None!3396 lt!601236) lt!601231 (ite (is-None!3396 lt!601231) lt!601236 (ite (>= (size!14369 (_1!10236 (v!24491 lt!601231))) (size!14369 (_1!10236 (v!24491 lt!601236)))) lt!601231 lt!601236)))))))

(assert (=> b!1638919 (= lt!601231 call!105719)))

(assert (=> b!1638919 (= lt!601236 (maxPrefixZipperSequence!702 thiss!17113 (t!149857 rules!1846) lt!600759))))

(declare-fun bm!105714 () Bool)

(assert (=> bm!105714 (= call!105719 (maxPrefixOneRuleZipperSequence!333 thiss!17113 (h!23437 rules!1846) lt!600759))))

(declare-fun b!1638921 () Bool)

(assert (=> b!1638921 (= e!1051025 (= (list!7114 (_2!10236 (get!5238 lt!601233))) (_2!10238 (get!5239 (maxPrefixZipper!335 thiss!17113 rules!1846 (list!7114 lt!600759))))))))

(declare-fun b!1638922 () Bool)

(declare-fun e!1051026 () Bool)

(assert (=> b!1638922 (= e!1051023 e!1051026)))

(declare-fun res!734324 () Bool)

(assert (=> b!1638922 (=> res!734324 e!1051026)))

(assert (=> b!1638922 (= res!734324 (not (isDefined!2765 lt!601233)))))

(declare-fun b!1638923 () Bool)

(declare-fun e!1051027 () Bool)

(assert (=> b!1638923 (= e!1051027 (= (list!7114 (_2!10236 (get!5238 lt!601233))) (_2!10238 (get!5239 (maxPrefix!1371 thiss!17113 rules!1846 (list!7114 lt!600759))))))))

(declare-fun b!1638920 () Bool)

(assert (=> b!1638920 (= e!1051026 e!1051027)))

(declare-fun res!734325 () Bool)

(assert (=> b!1638920 (=> (not res!734325) (not e!1051027))))

(assert (=> b!1638920 (= res!734325 (= (_1!10236 (get!5238 lt!601233)) (_1!10238 (get!5239 (maxPrefix!1371 thiss!17113 rules!1846 (list!7114 lt!600759))))))))

(declare-fun d!493374 () Bool)

(assert (=> d!493374 e!1051023))

(declare-fun res!734320 () Bool)

(assert (=> d!493374 (=> (not res!734320) (not e!1051023))))

(assert (=> d!493374 (= res!734320 (= (isDefined!2765 lt!601233) (isDefined!2764 (maxPrefixZipper!335 thiss!17113 rules!1846 (list!7114 lt!600759)))))))

(assert (=> d!493374 (= lt!601233 e!1051028)))

(declare-fun c!266600 () Bool)

(assert (=> d!493374 (= c!266600 (and (is-Cons!18036 rules!1846) (is-Nil!18036 (t!149857 rules!1846))))))

(declare-fun lt!601230 () Unit!29579)

(declare-fun lt!601234 () Unit!29579)

(assert (=> d!493374 (= lt!601230 lt!601234)))

(declare-fun lt!601232 () List!18104)

(declare-fun lt!601235 () List!18104)

(assert (=> d!493374 (isPrefix!1438 lt!601232 lt!601235)))

(assert (=> d!493374 (= lt!601234 (lemmaIsPrefixRefl!977 lt!601232 lt!601235))))

(assert (=> d!493374 (= lt!601235 (list!7114 lt!600759))))

(assert (=> d!493374 (= lt!601232 (list!7114 lt!600759))))

(assert (=> d!493374 (rulesValidInductive!997 thiss!17113 rules!1846)))

(assert (=> d!493374 (= (maxPrefixZipperSequence!702 thiss!17113 rules!1846 lt!600759) lt!601233)))

(assert (= (and d!493374 c!266600) b!1638916))

(assert (= (and d!493374 (not c!266600)) b!1638919))

(assert (= (or b!1638916 b!1638919) bm!105714))

(assert (= (and d!493374 res!734320) b!1638918))

(assert (= (and b!1638918 (not res!734321)) b!1638917))

(assert (= (and b!1638917 res!734323) b!1638921))

(assert (= (and b!1638918 res!734322) b!1638922))

(assert (= (and b!1638922 (not res!734324)) b!1638920))

(assert (= (and b!1638920 res!734325) b!1638923))

(assert (=> b!1638921 m!1977205))

(declare-fun m!1978159 () Bool)

(assert (=> b!1638921 m!1978159))

(assert (=> b!1638921 m!1978159))

(declare-fun m!1978161 () Bool)

(assert (=> b!1638921 m!1978161))

(assert (=> b!1638921 m!1977205))

(declare-fun m!1978163 () Bool)

(assert (=> b!1638921 m!1978163))

(declare-fun m!1978165 () Bool)

(assert (=> b!1638921 m!1978165))

(assert (=> d!493374 m!1978159))

(declare-fun m!1978167 () Bool)

(assert (=> d!493374 m!1978167))

(assert (=> d!493374 m!1977545))

(assert (=> d!493374 m!1977205))

(declare-fun m!1978169 () Bool)

(assert (=> d!493374 m!1978169))

(declare-fun m!1978171 () Bool)

(assert (=> d!493374 m!1978171))

(declare-fun m!1978173 () Bool)

(assert (=> d!493374 m!1978173))

(assert (=> d!493374 m!1977205))

(assert (=> d!493374 m!1978159))

(assert (=> b!1638923 m!1977205))

(declare-fun m!1978175 () Bool)

(assert (=> b!1638923 m!1978175))

(assert (=> b!1638923 m!1977205))

(assert (=> b!1638923 m!1978175))

(declare-fun m!1978177 () Bool)

(assert (=> b!1638923 m!1978177))

(assert (=> b!1638923 m!1978163))

(assert (=> b!1638923 m!1978165))

(assert (=> b!1638918 m!1978169))

(assert (=> b!1638920 m!1978163))

(assert (=> b!1638920 m!1977205))

(assert (=> b!1638920 m!1977205))

(assert (=> b!1638920 m!1978175))

(assert (=> b!1638920 m!1978175))

(assert (=> b!1638920 m!1978177))

(declare-fun m!1978179 () Bool)

(assert (=> bm!105714 m!1978179))

(assert (=> b!1638922 m!1978169))

(assert (=> b!1638917 m!1978163))

(assert (=> b!1638917 m!1977205))

(assert (=> b!1638917 m!1977205))

(assert (=> b!1638917 m!1978159))

(assert (=> b!1638917 m!1978159))

(assert (=> b!1638917 m!1978161))

(declare-fun m!1978181 () Bool)

(assert (=> b!1638919 m!1978181))

(assert (=> b!1638409 d!493374))

(declare-fun d!493376 () Bool)

(declare-fun list!7119 (Conc!6005) List!18105)

(assert (=> d!493376 (= (list!7113 (_1!10237 lt!600773)) (list!7119 (c!266529 (_1!10237 lt!600773))))))

(declare-fun bs!395539 () Bool)

(assert (= bs!395539 d!493376))

(declare-fun m!1978183 () Bool)

(assert (=> bs!395539 m!1978183))

(assert (=> b!1638410 d!493376))

(declare-fun d!493378 () Bool)

(declare-fun e!1051037 () Bool)

(assert (=> d!493378 e!1051037))

(declare-fun res!734332 () Bool)

(assert (=> d!493378 (=> (not res!734332) (not e!1051037))))

(assert (=> d!493378 (= res!734332 (= (list!7113 (_1!10237 (lex!1291 thiss!17113 rules!1846 (print!1338 thiss!17113 (seqFromList!2106 (t!149856 tokens!457)))))) (t!149856 tokens!457)))))

(declare-fun lt!601294 () Unit!29579)

(declare-fun e!1051038 () Unit!29579)

(assert (=> d!493378 (= lt!601294 e!1051038)))

(declare-fun c!266603 () Bool)

(assert (=> d!493378 (= c!266603 (or (is-Nil!18035 (t!149856 tokens!457)) (is-Nil!18035 (t!149856 (t!149856 tokens!457)))))))

(assert (=> d!493378 (not (isEmpty!11068 rules!1846))))

(assert (=> d!493378 (= (theoremInvertabilityWhenTokenListSeparable!252 thiss!17113 rules!1846 (t!149856 tokens!457)) lt!601294)))

(declare-fun b!1638934 () Bool)

(declare-fun Unit!29586 () Unit!29579)

(assert (=> b!1638934 (= e!1051038 Unit!29586)))

(declare-fun b!1638935 () Bool)

(declare-fun Unit!29587 () Unit!29579)

(assert (=> b!1638935 (= e!1051038 Unit!29587)))

(declare-fun lt!601293 () BalanceConc!11952)

(assert (=> b!1638935 (= lt!601293 (print!1338 thiss!17113 (seqFromList!2106 (t!149856 tokens!457))))))

(declare-fun lt!601300 () BalanceConc!11952)

(assert (=> b!1638935 (= lt!601300 (print!1338 thiss!17113 (seqFromList!2106 (t!149856 (t!149856 tokens!457)))))))

(declare-fun lt!601308 () tuple2!17670)

(assert (=> b!1638935 (= lt!601308 (lex!1291 thiss!17113 rules!1846 lt!601300))))

(declare-fun lt!601312 () List!18104)

(assert (=> b!1638935 (= lt!601312 (list!7114 (charsOf!1827 (h!23436 (t!149856 tokens!457)))))))

(declare-fun lt!601314 () List!18104)

(assert (=> b!1638935 (= lt!601314 (list!7114 lt!601300))))

(declare-fun lt!601310 () Unit!29579)

(assert (=> b!1638935 (= lt!601310 (lemmaConcatTwoListThenFirstIsPrefix!963 lt!601312 lt!601314))))

(assert (=> b!1638935 (isPrefix!1438 lt!601312 (++!4837 lt!601312 lt!601314))))

(declare-fun lt!601296 () Unit!29579)

(assert (=> b!1638935 (= lt!601296 lt!601310)))

(declare-fun lt!601316 () Unit!29579)

(assert (=> b!1638935 (= lt!601316 (theoremInvertabilityWhenTokenListSeparable!252 thiss!17113 rules!1846 (t!149856 (t!149856 tokens!457))))))

(declare-fun lt!601306 () Unit!29579)

(assert (=> b!1638935 (= lt!601306 (seqFromListBHdTlConstructive!255 (h!23436 (t!149856 (t!149856 tokens!457))) (t!149856 (t!149856 (t!149856 tokens!457))) (_1!10237 lt!601308)))))

(assert (=> b!1638935 (= (list!7113 (_1!10237 lt!601308)) (list!7113 (prepend!722 (seqFromList!2106 (t!149856 (t!149856 (t!149856 tokens!457)))) (h!23436 (t!149856 (t!149856 tokens!457))))))))

(declare-fun lt!601292 () Unit!29579)

(assert (=> b!1638935 (= lt!601292 lt!601306)))

(declare-fun lt!601313 () Option!3398)

(assert (=> b!1638935 (= lt!601313 (maxPrefix!1371 thiss!17113 rules!1846 (list!7114 lt!601293)))))

(assert (=> b!1638935 (= (print!1338 thiss!17113 (singletonSeq!1635 (h!23436 (t!149856 tokens!457)))) (printTailRec!860 thiss!17113 (singletonSeq!1635 (h!23436 (t!149856 tokens!457))) 0 (BalanceConc!11953 Empty!6004)))))

(declare-fun lt!601315 () Unit!29579)

(declare-fun Unit!29588 () Unit!29579)

(assert (=> b!1638935 (= lt!601315 Unit!29588)))

(declare-fun lt!601301 () Unit!29579)

(assert (=> b!1638935 (= lt!601301 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!381 thiss!17113 rules!1846 (list!7114 (charsOf!1827 (h!23436 (t!149856 tokens!457)))) (list!7114 lt!601300)))))

(assert (=> b!1638935 (= (list!7114 (charsOf!1827 (h!23436 (t!149856 tokens!457)))) (originalCharacters!3992 (h!23436 (t!149856 tokens!457))))))

(declare-fun lt!601291 () Unit!29579)

(declare-fun Unit!29589 () Unit!29579)

(assert (=> b!1638935 (= lt!601291 Unit!29589)))

(assert (=> b!1638935 (= (list!7114 (singletonSeq!1634 (apply!4683 (charsOf!1827 (h!23436 (t!149856 (t!149856 tokens!457)))) 0))) (Cons!18034 (head!3548 (originalCharacters!3992 (h!23436 (t!149856 (t!149856 tokens!457))))) Nil!18034))))

(declare-fun lt!601305 () Unit!29579)

(declare-fun Unit!29590 () Unit!29579)

(assert (=> b!1638935 (= lt!601305 Unit!29590)))

(assert (=> b!1638935 (= (list!7114 (singletonSeq!1634 (apply!4683 (charsOf!1827 (h!23436 (t!149856 (t!149856 tokens!457)))) 0))) (Cons!18034 (head!3548 (list!7114 lt!601300)) Nil!18034))))

(declare-fun lt!601303 () Unit!29579)

(declare-fun Unit!29591 () Unit!29579)

(assert (=> b!1638935 (= lt!601303 Unit!29591)))

(assert (=> b!1638935 (= (list!7114 (singletonSeq!1634 (apply!4683 (charsOf!1827 (h!23436 (t!149856 (t!149856 tokens!457)))) 0))) (Cons!18034 (head!3549 lt!601300) Nil!18034))))

(declare-fun lt!601299 () Unit!29579)

(declare-fun Unit!29592 () Unit!29579)

(assert (=> b!1638935 (= lt!601299 Unit!29592)))

(assert (=> b!1638935 (isDefined!2764 (maxPrefix!1371 thiss!17113 rules!1846 (originalCharacters!3992 (h!23436 (t!149856 tokens!457)))))))

(declare-fun lt!601311 () Unit!29579)

(declare-fun Unit!29593 () Unit!29579)

(assert (=> b!1638935 (= lt!601311 Unit!29593)))

(assert (=> b!1638935 (isDefined!2764 (maxPrefix!1371 thiss!17113 rules!1846 (list!7114 (charsOf!1827 (h!23436 (t!149856 tokens!457))))))))

(declare-fun lt!601309 () Unit!29579)

(declare-fun Unit!29594 () Unit!29579)

(assert (=> b!1638935 (= lt!601309 Unit!29594)))

(declare-fun lt!601297 () Unit!29579)

(declare-fun Unit!29595 () Unit!29579)

(assert (=> b!1638935 (= lt!601297 Unit!29595)))

(assert (=> b!1638935 (= (_1!10238 (get!5239 (maxPrefix!1371 thiss!17113 rules!1846 (list!7114 (charsOf!1827 (h!23436 (t!149856 tokens!457))))))) (h!23436 (t!149856 tokens!457)))))

(declare-fun lt!601307 () Unit!29579)

(declare-fun Unit!29596 () Unit!29579)

(assert (=> b!1638935 (= lt!601307 Unit!29596)))

(assert (=> b!1638935 (isEmpty!11067 (_2!10238 (get!5239 (maxPrefix!1371 thiss!17113 rules!1846 (list!7114 (charsOf!1827 (h!23436 (t!149856 tokens!457))))))))))

(declare-fun lt!601298 () Unit!29579)

(declare-fun Unit!29597 () Unit!29579)

(assert (=> b!1638935 (= lt!601298 Unit!29597)))

(assert (=> b!1638935 (matchR!2005 (regex!3178 (rule!5024 (h!23436 (t!149856 tokens!457)))) (list!7114 (charsOf!1827 (h!23436 (t!149856 tokens!457)))))))

(declare-fun lt!601304 () Unit!29579)

(declare-fun Unit!29598 () Unit!29579)

(assert (=> b!1638935 (= lt!601304 Unit!29598)))

(assert (=> b!1638935 (= (rule!5024 (h!23436 (t!149856 tokens!457))) (rule!5024 (h!23436 (t!149856 tokens!457))))))

(declare-fun lt!601295 () Unit!29579)

(declare-fun Unit!29599 () Unit!29579)

(assert (=> b!1638935 (= lt!601295 Unit!29599)))

(declare-fun lt!601302 () Unit!29579)

(assert (=> b!1638935 (= lt!601302 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!143 thiss!17113 rules!1846 (h!23436 (t!149856 tokens!457)) (rule!5024 (h!23436 (t!149856 tokens!457))) (list!7114 lt!601300)))))

(declare-fun b!1638936 () Bool)

(assert (=> b!1638936 (= e!1051037 (isEmpty!11075 (_2!10237 (lex!1291 thiss!17113 rules!1846 (print!1338 thiss!17113 (seqFromList!2106 (t!149856 tokens!457)))))))))

(assert (= (and d!493378 c!266603) b!1638934))

(assert (= (and d!493378 (not c!266603)) b!1638935))

(assert (= (and d!493378 res!734332) b!1638936))

(assert (=> d!493378 m!1977203))

(declare-fun m!1978185 () Bool)

(assert (=> d!493378 m!1978185))

(declare-fun m!1978187 () Bool)

(assert (=> d!493378 m!1978187))

(assert (=> d!493378 m!1977203))

(assert (=> d!493378 m!1978185))

(declare-fun m!1978189 () Bool)

(assert (=> d!493378 m!1978189))

(assert (=> d!493378 m!1977189))

(declare-fun m!1978191 () Bool)

(assert (=> b!1638935 m!1978191))

(declare-fun m!1978193 () Bool)

(assert (=> b!1638935 m!1978193))

(declare-fun m!1978195 () Bool)

(assert (=> b!1638935 m!1978195))

(declare-fun m!1978197 () Bool)

(assert (=> b!1638935 m!1978197))

(declare-fun m!1978199 () Bool)

(assert (=> b!1638935 m!1978199))

(declare-fun m!1978201 () Bool)

(assert (=> b!1638935 m!1978201))

(declare-fun m!1978203 () Bool)

(assert (=> b!1638935 m!1978203))

(declare-fun m!1978205 () Bool)

(assert (=> b!1638935 m!1978205))

(declare-fun m!1978207 () Bool)

(assert (=> b!1638935 m!1978207))

(declare-fun m!1978209 () Bool)

(assert (=> b!1638935 m!1978209))

(assert (=> b!1638935 m!1978195))

(assert (=> b!1638935 m!1978195))

(declare-fun m!1978211 () Bool)

(assert (=> b!1638935 m!1978211))

(assert (=> b!1638935 m!1977243))

(assert (=> b!1638935 m!1978191))

(assert (=> b!1638935 m!1978191))

(declare-fun m!1978213 () Bool)

(assert (=> b!1638935 m!1978213))

(declare-fun m!1978215 () Bool)

(assert (=> b!1638935 m!1978215))

(declare-fun m!1978217 () Bool)

(assert (=> b!1638935 m!1978217))

(declare-fun m!1978219 () Bool)

(assert (=> b!1638935 m!1978219))

(assert (=> b!1638935 m!1978215))

(declare-fun m!1978221 () Bool)

(assert (=> b!1638935 m!1978221))

(declare-fun m!1978223 () Bool)

(assert (=> b!1638935 m!1978223))

(declare-fun m!1978225 () Bool)

(assert (=> b!1638935 m!1978225))

(declare-fun m!1978227 () Bool)

(assert (=> b!1638935 m!1978227))

(assert (=> b!1638935 m!1977265))

(assert (=> b!1638935 m!1978215))

(declare-fun m!1978229 () Bool)

(assert (=> b!1638935 m!1978229))

(declare-fun m!1978231 () Bool)

(assert (=> b!1638935 m!1978231))

(declare-fun m!1978233 () Bool)

(assert (=> b!1638935 m!1978233))

(assert (=> b!1638935 m!1978219))

(assert (=> b!1638935 m!1978191))

(declare-fun m!1978235 () Bool)

(assert (=> b!1638935 m!1978235))

(declare-fun m!1978237 () Bool)

(assert (=> b!1638935 m!1978237))

(declare-fun m!1978239 () Bool)

(assert (=> b!1638935 m!1978239))

(assert (=> b!1638935 m!1977203))

(assert (=> b!1638935 m!1978185))

(assert (=> b!1638935 m!1977265))

(declare-fun m!1978241 () Bool)

(assert (=> b!1638935 m!1978241))

(assert (=> b!1638935 m!1978231))

(assert (=> b!1638935 m!1978203))

(declare-fun m!1978243 () Bool)

(assert (=> b!1638935 m!1978243))

(assert (=> b!1638935 m!1977203))

(declare-fun m!1978245 () Bool)

(assert (=> b!1638935 m!1978245))

(assert (=> b!1638935 m!1978209))

(declare-fun m!1978247 () Bool)

(assert (=> b!1638935 m!1978247))

(declare-fun m!1978249 () Bool)

(assert (=> b!1638935 m!1978249))

(declare-fun m!1978251 () Bool)

(assert (=> b!1638935 m!1978251))

(assert (=> b!1638935 m!1978237))

(assert (=> b!1638935 m!1978199))

(assert (=> b!1638935 m!1978207))

(declare-fun m!1978253 () Bool)

(assert (=> b!1638935 m!1978253))

(assert (=> b!1638935 m!1978251))

(assert (=> b!1638935 m!1978219))

(declare-fun m!1978255 () Bool)

(assert (=> b!1638935 m!1978255))

(declare-fun m!1978257 () Bool)

(assert (=> b!1638935 m!1978257))

(assert (=> b!1638935 m!1978225))

(assert (=> b!1638935 m!1977243))

(assert (=> b!1638935 m!1978219))

(assert (=> b!1638936 m!1977203))

(assert (=> b!1638936 m!1977203))

(assert (=> b!1638936 m!1978185))

(assert (=> b!1638936 m!1978185))

(assert (=> b!1638936 m!1978189))

(declare-fun m!1978259 () Bool)

(assert (=> b!1638936 m!1978259))

(assert (=> b!1638410 d!493378))

(declare-fun b!1638948 () Bool)

(declare-fun e!1051047 () Bool)

(assert (=> b!1638948 (= e!1051047 (>= (size!14373 lt!600767) (size!14373 lt!600769)))))

(declare-fun b!1638945 () Bool)

(declare-fun e!1051045 () Bool)

(declare-fun e!1051046 () Bool)

(assert (=> b!1638945 (= e!1051045 e!1051046)))

(declare-fun res!734343 () Bool)

(assert (=> b!1638945 (=> (not res!734343) (not e!1051046))))

(assert (=> b!1638945 (= res!734343 (not (is-Nil!18034 lt!600767)))))

(declare-fun b!1638946 () Bool)

(declare-fun res!734344 () Bool)

(assert (=> b!1638946 (=> (not res!734344) (not e!1051046))))

(assert (=> b!1638946 (= res!734344 (= (head!3548 lt!600769) (head!3548 lt!600767)))))

(declare-fun d!493380 () Bool)

(assert (=> d!493380 e!1051047))

(declare-fun res!734341 () Bool)

(assert (=> d!493380 (=> res!734341 e!1051047)))

(declare-fun lt!601319 () Bool)

(assert (=> d!493380 (= res!734341 (not lt!601319))))

(assert (=> d!493380 (= lt!601319 e!1051045)))

(declare-fun res!734342 () Bool)

(assert (=> d!493380 (=> res!734342 e!1051045)))

(assert (=> d!493380 (= res!734342 (is-Nil!18034 lt!600769))))

(assert (=> d!493380 (= (isPrefix!1438 lt!600769 lt!600767) lt!601319)))

(declare-fun b!1638947 () Bool)

(assert (=> b!1638947 (= e!1051046 (isPrefix!1438 (tail!2400 lt!600769) (tail!2400 lt!600767)))))

(assert (= (and d!493380 (not res!734342)) b!1638945))

(assert (= (and b!1638945 res!734343) b!1638946))

(assert (= (and b!1638946 res!734344) b!1638947))

(assert (= (and d!493380 (not res!734341)) b!1638948))

(declare-fun m!1978261 () Bool)

(assert (=> b!1638948 m!1978261))

(declare-fun m!1978263 () Bool)

(assert (=> b!1638948 m!1978263))

(assert (=> b!1638946 m!1978149))

(declare-fun m!1978265 () Bool)

(assert (=> b!1638946 m!1978265))

(assert (=> b!1638947 m!1978153))

(declare-fun m!1978267 () Bool)

(assert (=> b!1638947 m!1978267))

(assert (=> b!1638947 m!1978153))

(assert (=> b!1638947 m!1978267))

(declare-fun m!1978269 () Bool)

(assert (=> b!1638947 m!1978269))

(assert (=> b!1638410 d!493380))

(declare-fun d!493382 () Bool)

(assert (=> d!493382 (isPrefix!1438 lt!600769 (++!4837 lt!600769 lt!600778))))

(declare-fun lt!601322 () Unit!29579)

(declare-fun choose!9838 (List!18104 List!18104) Unit!29579)

(assert (=> d!493382 (= lt!601322 (choose!9838 lt!600769 lt!600778))))

(assert (=> d!493382 (= (lemmaConcatTwoListThenFirstIsPrefix!963 lt!600769 lt!600778) lt!601322)))

(declare-fun bs!395540 () Bool)

(assert (= bs!395540 d!493382))

(assert (=> bs!395540 m!1977209))

(assert (=> bs!395540 m!1977209))

(declare-fun m!1978271 () Bool)

(assert (=> bs!395540 m!1978271))

(declare-fun m!1978273 () Bool)

(assert (=> bs!395540 m!1978273))

(assert (=> b!1638410 d!493382))

(declare-fun d!493384 () Bool)

(assert (=> d!493384 (= (list!7114 (_2!10236 lt!600772)) (list!7117 (c!266527 (_2!10236 lt!600772))))))

(declare-fun bs!395541 () Bool)

(assert (= bs!395541 d!493384))

(declare-fun m!1978275 () Bool)

(assert (=> bs!395541 m!1978275))

(assert (=> b!1638430 d!493384))

(declare-fun d!493386 () Bool)

(declare-fun e!1051050 () Bool)

(assert (=> d!493386 e!1051050))

(declare-fun res!734347 () Bool)

(assert (=> d!493386 (=> (not res!734347) (not e!1051050))))

(declare-fun lt!601325 () BalanceConc!11952)

(assert (=> d!493386 (= res!734347 (= (list!7114 lt!601325) (Cons!18034 (apply!4683 (charsOf!1827 (h!23436 (t!149856 tokens!457))) 0) Nil!18034)))))

(declare-fun singleton!704 (C!9186) BalanceConc!11952)

(assert (=> d!493386 (= lt!601325 (singleton!704 (apply!4683 (charsOf!1827 (h!23436 (t!149856 tokens!457))) 0)))))

(assert (=> d!493386 (= (singletonSeq!1634 (apply!4683 (charsOf!1827 (h!23436 (t!149856 tokens!457))) 0)) lt!601325)))

(declare-fun b!1638951 () Bool)

(declare-fun isBalanced!1825 (Conc!6004) Bool)

(assert (=> b!1638951 (= e!1051050 (isBalanced!1825 (c!266527 lt!601325)))))

(assert (= (and d!493386 res!734347) b!1638951))

(declare-fun m!1978277 () Bool)

(assert (=> d!493386 m!1978277))

(assert (=> d!493386 m!1977235))

(declare-fun m!1978279 () Bool)

(assert (=> d!493386 m!1978279))

(declare-fun m!1978281 () Bool)

(assert (=> b!1638951 m!1978281))

(assert (=> b!1638423 d!493386))

(declare-fun d!493388 () Bool)

(declare-fun lt!601346 () Bool)

(assert (=> d!493388 (= lt!601346 (prefixMatch!441 lt!600781 (list!7114 (++!4838 lt!600765 lt!600763))))))

(declare-datatypes ((List!18112 0))(
  ( (Nil!18042) (Cons!18042 (h!23443 Regex!4506) (t!149905 List!18112)) )
))
(declare-datatypes ((Context!1768 0))(
  ( (Context!1769 (exprs!1384 List!18112)) )
))
(declare-fun prefixMatchZipperSequence!586 ((Set Context!1768) BalanceConc!11952 Int) Bool)

(declare-fun focus!190 (Regex!4506) (Set Context!1768))

(assert (=> d!493388 (= lt!601346 (prefixMatchZipperSequence!586 (focus!190 lt!600781) (++!4838 lt!600765 lt!600763) 0))))

(declare-fun lt!601350 () Unit!29579)

(declare-fun lt!601354 () Unit!29579)

(assert (=> d!493388 (= lt!601350 lt!601354)))

(declare-fun lt!601355 () List!18104)

(declare-fun lt!601347 () (Set Context!1768))

(declare-fun prefixMatchZipper!169 ((Set Context!1768) List!18104) Bool)

(assert (=> d!493388 (= (prefixMatch!441 lt!600781 lt!601355) (prefixMatchZipper!169 lt!601347 lt!601355))))

(declare-datatypes ((List!18113 0))(
  ( (Nil!18043) (Cons!18043 (h!23444 Context!1768) (t!149906 List!18113)) )
))
(declare-fun lt!601348 () List!18113)

(declare-fun prefixMatchZipperRegexEquiv!169 ((Set Context!1768) List!18113 Regex!4506 List!18104) Unit!29579)

(assert (=> d!493388 (= lt!601354 (prefixMatchZipperRegexEquiv!169 lt!601347 lt!601348 lt!600781 lt!601355))))

(assert (=> d!493388 (= lt!601355 (list!7114 (++!4838 lt!600765 lt!600763)))))

(declare-fun toList!930 ((Set Context!1768)) List!18113)

(assert (=> d!493388 (= lt!601348 (toList!930 (focus!190 lt!600781)))))

(assert (=> d!493388 (= lt!601347 (focus!190 lt!600781))))

(declare-fun lt!601353 () Unit!29579)

(declare-fun lt!601351 () Unit!29579)

(assert (=> d!493388 (= lt!601353 lt!601351)))

(declare-fun lt!601349 () (Set Context!1768))

(declare-fun lt!601352 () Int)

(declare-fun dropList!642 (BalanceConc!11952 Int) List!18104)

(assert (=> d!493388 (= (prefixMatchZipper!169 lt!601349 (dropList!642 (++!4838 lt!600765 lt!600763) lt!601352)) (prefixMatchZipperSequence!586 lt!601349 (++!4838 lt!600765 lt!600763) lt!601352))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!169 ((Set Context!1768) BalanceConc!11952 Int) Unit!29579)

(assert (=> d!493388 (= lt!601351 (lemmaprefixMatchZipperSequenceEquivalent!169 lt!601349 (++!4838 lt!600765 lt!600763) lt!601352))))

(assert (=> d!493388 (= lt!601352 0)))

(assert (=> d!493388 (= lt!601349 (focus!190 lt!600781))))

(assert (=> d!493388 (validRegex!1795 lt!600781)))

(assert (=> d!493388 (= (prefixMatchZipperSequence!584 lt!600781 (++!4838 lt!600765 lt!600763)) lt!601346)))

(declare-fun bs!395542 () Bool)

(assert (= bs!395542 d!493388))

(declare-fun m!1978283 () Bool)

(assert (=> bs!395542 m!1978283))

(declare-fun m!1978285 () Bool)

(assert (=> bs!395542 m!1978285))

(declare-fun m!1978287 () Bool)

(assert (=> bs!395542 m!1978287))

(assert (=> bs!395542 m!1977239))

(declare-fun m!1978289 () Bool)

(assert (=> bs!395542 m!1978289))

(declare-fun m!1978291 () Bool)

(assert (=> bs!395542 m!1978291))

(assert (=> bs!395542 m!1977239))

(declare-fun m!1978293 () Bool)

(assert (=> bs!395542 m!1978293))

(declare-fun m!1978295 () Bool)

(assert (=> bs!395542 m!1978295))

(assert (=> bs!395542 m!1977239))

(declare-fun m!1978297 () Bool)

(assert (=> bs!395542 m!1978297))

(assert (=> bs!395542 m!1978287))

(assert (=> bs!395542 m!1977239))

(declare-fun m!1978299 () Bool)

(assert (=> bs!395542 m!1978299))

(assert (=> bs!395542 m!1978287))

(declare-fun m!1978301 () Bool)

(assert (=> bs!395542 m!1978301))

(assert (=> bs!395542 m!1978297))

(declare-fun m!1978303 () Bool)

(assert (=> bs!395542 m!1978303))

(assert (=> bs!395542 m!1978293))

(declare-fun m!1978305 () Bool)

(assert (=> bs!395542 m!1978305))

(assert (=> bs!395542 m!1977239))

(declare-fun m!1978307 () Bool)

(assert (=> bs!395542 m!1978307))

(assert (=> b!1638423 d!493388))

(declare-fun d!493390 () Bool)

(declare-fun lt!601358 () Unit!29579)

(declare-fun lemma!255 (List!18106 LexerInterface!2807 List!18106) Unit!29579)

(assert (=> d!493390 (= lt!601358 (lemma!255 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67451 () Int)

(declare-fun generalisedUnion!263 (List!18112) Regex!4506)

(declare-fun map!3724 (List!18106 Int) List!18112)

(assert (=> d!493390 (= (rulesRegex!568 thiss!17113 rules!1846) (generalisedUnion!263 (map!3724 rules!1846 lambda!67451)))))

(declare-fun bs!395543 () Bool)

(assert (= bs!395543 d!493390))

(declare-fun m!1978309 () Bool)

(assert (=> bs!395543 m!1978309))

(declare-fun m!1978311 () Bool)

(assert (=> bs!395543 m!1978311))

(assert (=> bs!395543 m!1978311))

(declare-fun m!1978313 () Bool)

(assert (=> bs!395543 m!1978313))

(assert (=> b!1638423 d!493390))

(declare-fun d!493392 () Bool)

(declare-fun lt!601361 () BalanceConc!11952)

(assert (=> d!493392 (= (list!7114 lt!601361) (originalCharacters!3992 (h!23436 (t!149856 tokens!457))))))

(assert (=> d!493392 (= lt!601361 (dynLambda!8034 (toChars!4468 (transformation!3178 (rule!5024 (h!23436 (t!149856 tokens!457))))) (value!100247 (h!23436 (t!149856 tokens!457)))))))

(assert (=> d!493392 (= (charsOf!1827 (h!23436 (t!149856 tokens!457))) lt!601361)))

(declare-fun b_lambda!51493 () Bool)

(assert (=> (not b_lambda!51493) (not d!493392)))

(declare-fun t!149884 () Bool)

(declare-fun tb!93859 () Bool)

(assert (=> (and b!1638432 (= (toChars!4468 (transformation!3178 (h!23437 rules!1846))) (toChars!4468 (transformation!3178 (rule!5024 (h!23436 (t!149856 tokens!457)))))) t!149884) tb!93859))

(declare-fun b!1638952 () Bool)

(declare-fun e!1051051 () Bool)

(declare-fun tp!474894 () Bool)

(assert (=> b!1638952 (= e!1051051 (and (inv!23387 (c!266527 (dynLambda!8034 (toChars!4468 (transformation!3178 (rule!5024 (h!23436 (t!149856 tokens!457))))) (value!100247 (h!23436 (t!149856 tokens!457)))))) tp!474894))))

(declare-fun result!113270 () Bool)

(assert (=> tb!93859 (= result!113270 (and (inv!23388 (dynLambda!8034 (toChars!4468 (transformation!3178 (rule!5024 (h!23436 (t!149856 tokens!457))))) (value!100247 (h!23436 (t!149856 tokens!457))))) e!1051051))))

(assert (= tb!93859 b!1638952))

(declare-fun m!1978315 () Bool)

(assert (=> b!1638952 m!1978315))

(declare-fun m!1978317 () Bool)

(assert (=> tb!93859 m!1978317))

(assert (=> d!493392 t!149884))

(declare-fun b_and!116141 () Bool)

(assert (= b_and!116125 (and (=> t!149884 result!113270) b_and!116141)))

(declare-fun t!149886 () Bool)

(declare-fun tb!93861 () Bool)

(assert (=> (and b!1638431 (= (toChars!4468 (transformation!3178 (rule!5024 (h!23436 tokens!457)))) (toChars!4468 (transformation!3178 (rule!5024 (h!23436 (t!149856 tokens!457)))))) t!149886) tb!93861))

(declare-fun result!113272 () Bool)

(assert (= result!113272 result!113270))

(assert (=> d!493392 t!149886))

(declare-fun b_and!116143 () Bool)

(assert (= b_and!116127 (and (=> t!149886 result!113272) b_and!116143)))

(declare-fun m!1978319 () Bool)

(assert (=> d!493392 m!1978319))

(declare-fun m!1978321 () Bool)

(assert (=> d!493392 m!1978321))

(assert (=> b!1638423 d!493392))

(declare-fun d!493394 () Bool)

(declare-fun lt!601364 () C!9186)

(declare-fun apply!4688 (List!18104 Int) C!9186)

(assert (=> d!493394 (= lt!601364 (apply!4688 (list!7114 (charsOf!1827 (h!23436 (t!149856 tokens!457)))) 0))))

(declare-fun apply!4689 (Conc!6004 Int) C!9186)

(assert (=> d!493394 (= lt!601364 (apply!4689 (c!266527 (charsOf!1827 (h!23436 (t!149856 tokens!457)))) 0))))

(declare-fun e!1051054 () Bool)

(assert (=> d!493394 e!1051054))

(declare-fun res!734350 () Bool)

(assert (=> d!493394 (=> (not res!734350) (not e!1051054))))

(assert (=> d!493394 (= res!734350 (<= 0 0))))

(assert (=> d!493394 (= (apply!4683 (charsOf!1827 (h!23436 (t!149856 tokens!457))) 0) lt!601364)))

(declare-fun b!1638955 () Bool)

(assert (=> b!1638955 (= e!1051054 (< 0 (size!14371 (charsOf!1827 (h!23436 (t!149856 tokens!457))))))))

(assert (= (and d!493394 res!734350) b!1638955))

(assert (=> d!493394 m!1977243))

(assert (=> d!493394 m!1978219))

(assert (=> d!493394 m!1978219))

(declare-fun m!1978323 () Bool)

(assert (=> d!493394 m!1978323))

(declare-fun m!1978325 () Bool)

(assert (=> d!493394 m!1978325))

(assert (=> b!1638955 m!1977243))

(declare-fun m!1978327 () Bool)

(assert (=> b!1638955 m!1978327))

(assert (=> b!1638423 d!493394))

(declare-fun b!1638981 () Bool)

(declare-fun res!734361 () Bool)

(declare-fun e!1051068 () Bool)

(assert (=> b!1638981 (=> (not res!734361) (not e!1051068))))

(declare-fun height!924 (Conc!6004) Int)

(declare-fun ++!4841 (Conc!6004 Conc!6004) Conc!6004)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1638981 (= res!734361 (>= (height!924 (++!4841 (c!266527 lt!600765) (c!266527 lt!600763))) (max!0 (height!924 (c!266527 lt!600765)) (height!924 (c!266527 lt!600763)))))))

(declare-fun b!1638982 () Bool)

(declare-fun lt!601368 () BalanceConc!11952)

(assert (=> b!1638982 (= e!1051068 (= (list!7114 lt!601368) (++!4837 (list!7114 lt!600765) (list!7114 lt!600763))))))

(declare-fun d!493396 () Bool)

(assert (=> d!493396 e!1051068))

(declare-fun res!734363 () Bool)

(assert (=> d!493396 (=> (not res!734363) (not e!1051068))))

(declare-fun appendAssocInst!452 (Conc!6004 Conc!6004) Bool)

(assert (=> d!493396 (= res!734363 (appendAssocInst!452 (c!266527 lt!600765) (c!266527 lt!600763)))))

(assert (=> d!493396 (= lt!601368 (BalanceConc!11953 (++!4841 (c!266527 lt!600765) (c!266527 lt!600763))))))

(assert (=> d!493396 (= (++!4838 lt!600765 lt!600763) lt!601368)))

(declare-fun b!1638979 () Bool)

(declare-fun res!734364 () Bool)

(assert (=> b!1638979 (=> (not res!734364) (not e!1051068))))

(assert (=> b!1638979 (= res!734364 (isBalanced!1825 (++!4841 (c!266527 lt!600765) (c!266527 lt!600763))))))

(declare-fun b!1638980 () Bool)

(declare-fun res!734362 () Bool)

(assert (=> b!1638980 (=> (not res!734362) (not e!1051068))))

(assert (=> b!1638980 (= res!734362 (<= (height!924 (++!4841 (c!266527 lt!600765) (c!266527 lt!600763))) (+ (max!0 (height!924 (c!266527 lt!600765)) (height!924 (c!266527 lt!600763))) 1)))))

(assert (= (and d!493396 res!734363) b!1638979))

(assert (= (and b!1638979 res!734364) b!1638980))

(assert (= (and b!1638980 res!734362) b!1638981))

(assert (= (and b!1638981 res!734361) b!1638982))

(declare-fun m!1978333 () Bool)

(assert (=> b!1638979 m!1978333))

(assert (=> b!1638979 m!1978333))

(declare-fun m!1978335 () Bool)

(assert (=> b!1638979 m!1978335))

(declare-fun m!1978337 () Bool)

(assert (=> d!493396 m!1978337))

(assert (=> d!493396 m!1978333))

(declare-fun m!1978339 () Bool)

(assert (=> b!1638981 m!1978339))

(declare-fun m!1978341 () Bool)

(assert (=> b!1638981 m!1978341))

(declare-fun m!1978343 () Bool)

(assert (=> b!1638981 m!1978343))

(assert (=> b!1638981 m!1978339))

(assert (=> b!1638981 m!1978333))

(declare-fun m!1978345 () Bool)

(assert (=> b!1638981 m!1978345))

(assert (=> b!1638981 m!1978333))

(assert (=> b!1638981 m!1978341))

(assert (=> b!1638980 m!1978339))

(assert (=> b!1638980 m!1978341))

(assert (=> b!1638980 m!1978343))

(assert (=> b!1638980 m!1978339))

(assert (=> b!1638980 m!1978333))

(assert (=> b!1638980 m!1978345))

(assert (=> b!1638980 m!1978333))

(assert (=> b!1638980 m!1978341))

(declare-fun m!1978347 () Bool)

(assert (=> b!1638982 m!1978347))

(assert (=> b!1638982 m!1977197))

(assert (=> b!1638982 m!1977315))

(assert (=> b!1638982 m!1977197))

(assert (=> b!1638982 m!1977315))

(declare-fun m!1978349 () Bool)

(assert (=> b!1638982 m!1978349))

(assert (=> b!1638423 d!493396))

(declare-fun d!493400 () Bool)

(declare-fun c!266613 () Bool)

(assert (=> d!493400 (= c!266613 (isEmpty!11067 (++!4837 lt!600769 lt!600770)))))

(declare-fun e!1051076 () Bool)

(assert (=> d!493400 (= (prefixMatch!441 lt!600781 (++!4837 lt!600769 lt!600770)) e!1051076)))

(declare-fun b!1638997 () Bool)

(declare-fun lostCause!455 (Regex!4506) Bool)

(assert (=> b!1638997 (= e!1051076 (not (lostCause!455 lt!600781)))))

(declare-fun b!1638998 () Bool)

(assert (=> b!1638998 (= e!1051076 (prefixMatch!441 (derivativeStep!1099 lt!600781 (head!3548 (++!4837 lt!600769 lt!600770))) (tail!2400 (++!4837 lt!600769 lt!600770))))))

(assert (= (and d!493400 c!266613) b!1638997))

(assert (= (and d!493400 (not c!266613)) b!1638998))

(assert (=> d!493400 m!1977311))

(declare-fun m!1978375 () Bool)

(assert (=> d!493400 m!1978375))

(declare-fun m!1978377 () Bool)

(assert (=> b!1638997 m!1978377))

(assert (=> b!1638998 m!1977311))

(declare-fun m!1978379 () Bool)

(assert (=> b!1638998 m!1978379))

(assert (=> b!1638998 m!1978379))

(declare-fun m!1978381 () Bool)

(assert (=> b!1638998 m!1978381))

(assert (=> b!1638998 m!1977311))

(declare-fun m!1978383 () Bool)

(assert (=> b!1638998 m!1978383))

(assert (=> b!1638998 m!1978381))

(assert (=> b!1638998 m!1978383))

(declare-fun m!1978385 () Bool)

(assert (=> b!1638998 m!1978385))

(assert (=> b!1638421 d!493400))

(declare-fun b!1639009 () Bool)

(declare-fun res!734371 () Bool)

(declare-fun e!1051081 () Bool)

(assert (=> b!1639009 (=> (not res!734371) (not e!1051081))))

(declare-fun lt!601372 () List!18104)

(assert (=> b!1639009 (= res!734371 (= (size!14373 lt!601372) (+ (size!14373 lt!600769) (size!14373 lt!600770))))))

(declare-fun b!1639008 () Bool)

(declare-fun e!1051082 () List!18104)

(assert (=> b!1639008 (= e!1051082 (Cons!18034 (h!23435 lt!600769) (++!4837 (t!149855 lt!600769) lt!600770)))))

(declare-fun d!493408 () Bool)

(assert (=> d!493408 e!1051081))

(declare-fun res!734372 () Bool)

(assert (=> d!493408 (=> (not res!734372) (not e!1051081))))

(declare-fun content!2497 (List!18104) (Set C!9186))

(assert (=> d!493408 (= res!734372 (= (content!2497 lt!601372) (set.union (content!2497 lt!600769) (content!2497 lt!600770))))))

(assert (=> d!493408 (= lt!601372 e!1051082)))

(declare-fun c!266616 () Bool)

(assert (=> d!493408 (= c!266616 (is-Nil!18034 lt!600769))))

(assert (=> d!493408 (= (++!4837 lt!600769 lt!600770) lt!601372)))

(declare-fun b!1639007 () Bool)

(assert (=> b!1639007 (= e!1051082 lt!600770)))

(declare-fun b!1639010 () Bool)

(assert (=> b!1639010 (= e!1051081 (or (not (= lt!600770 Nil!18034)) (= lt!601372 lt!600769)))))

(assert (= (and d!493408 c!266616) b!1639007))

(assert (= (and d!493408 (not c!266616)) b!1639008))

(assert (= (and d!493408 res!734372) b!1639009))

(assert (= (and b!1639009 res!734371) b!1639010))

(declare-fun m!1978387 () Bool)

(assert (=> b!1639009 m!1978387))

(assert (=> b!1639009 m!1978263))

(declare-fun m!1978389 () Bool)

(assert (=> b!1639009 m!1978389))

(declare-fun m!1978391 () Bool)

(assert (=> b!1639008 m!1978391))

(declare-fun m!1978393 () Bool)

(assert (=> d!493408 m!1978393))

(declare-fun m!1978395 () Bool)

(assert (=> d!493408 m!1978395))

(declare-fun m!1978397 () Bool)

(assert (=> d!493408 m!1978397))

(assert (=> b!1638421 d!493408))

(declare-fun d!493410 () Bool)

(assert (=> d!493410 (= (list!7114 lt!600763) (list!7117 (c!266527 lt!600763)))))

(declare-fun bs!395545 () Bool)

(assert (= bs!395545 d!493410))

(declare-fun m!1978399 () Bool)

(assert (=> bs!395545 m!1978399))

(assert (=> b!1638421 d!493410))

(declare-fun d!493412 () Bool)

(declare-fun e!1051085 () Bool)

(assert (=> d!493412 e!1051085))

(declare-fun res!734375 () Bool)

(assert (=> d!493412 (=> (not res!734375) (not e!1051085))))

(declare-fun prepend!725 (Conc!6005 Token!5922) Conc!6005)

(assert (=> d!493412 (= res!734375 (isBalanced!1823 (prepend!725 (c!266529 (seqFromList!2106 (t!149856 (t!149856 tokens!457)))) (h!23436 (t!149856 tokens!457)))))))

(declare-fun lt!601375 () BalanceConc!11954)

(assert (=> d!493412 (= lt!601375 (BalanceConc!11955 (prepend!725 (c!266529 (seqFromList!2106 (t!149856 (t!149856 tokens!457)))) (h!23436 (t!149856 tokens!457)))))))

(assert (=> d!493412 (= (prepend!722 (seqFromList!2106 (t!149856 (t!149856 tokens!457))) (h!23436 (t!149856 tokens!457))) lt!601375)))

(declare-fun b!1639013 () Bool)

(assert (=> b!1639013 (= e!1051085 (= (list!7113 lt!601375) (Cons!18035 (h!23436 (t!149856 tokens!457)) (list!7113 (seqFromList!2106 (t!149856 (t!149856 tokens!457)))))))))

(assert (= (and d!493412 res!734375) b!1639013))

(declare-fun m!1978401 () Bool)

(assert (=> d!493412 m!1978401))

(assert (=> d!493412 m!1978401))

(declare-fun m!1978403 () Bool)

(assert (=> d!493412 m!1978403))

(declare-fun m!1978405 () Bool)

(assert (=> b!1639013 m!1978405))

(assert (=> b!1639013 m!1977265))

(declare-fun m!1978407 () Bool)

(assert (=> b!1639013 m!1978407))

(assert (=> b!1638422 d!493412))

(declare-fun d!493414 () Bool)

(assert (=> d!493414 (= (list!7113 (prepend!722 (seqFromList!2106 (t!149856 (t!149856 tokens!457))) (h!23436 (t!149856 tokens!457)))) (list!7119 (c!266529 (prepend!722 (seqFromList!2106 (t!149856 (t!149856 tokens!457))) (h!23436 (t!149856 tokens!457))))))))

(declare-fun bs!395546 () Bool)

(assert (= bs!395546 d!493414))

(declare-fun m!1978409 () Bool)

(assert (=> bs!395546 m!1978409))

(assert (=> b!1638422 d!493414))

(declare-fun d!493416 () Bool)

(assert (=> d!493416 (= (list!7113 (_1!10237 lt!600773)) (list!7113 (prepend!722 (seqFromList!2106 (t!149856 (t!149856 tokens!457))) (h!23436 (t!149856 tokens!457)))))))

(declare-fun lt!601378 () Unit!29579)

(declare-fun choose!9839 (Token!5922 List!18105 BalanceConc!11954) Unit!29579)

(assert (=> d!493416 (= lt!601378 (choose!9839 (h!23436 (t!149856 tokens!457)) (t!149856 (t!149856 tokens!457)) (_1!10237 lt!600773)))))

(declare-fun $colon$colon!349 (List!18105 Token!5922) List!18105)

(assert (=> d!493416 (= (list!7113 (_1!10237 lt!600773)) (list!7113 (seqFromList!2106 ($colon$colon!349 (t!149856 (t!149856 tokens!457)) (h!23436 (t!149856 tokens!457))))))))

(assert (=> d!493416 (= (seqFromListBHdTlConstructive!255 (h!23436 (t!149856 tokens!457)) (t!149856 (t!149856 tokens!457)) (_1!10237 lt!600773)) lt!601378)))

(declare-fun bs!395547 () Bool)

(assert (= bs!395547 d!493416))

(assert (=> bs!395547 m!1977267))

(assert (=> bs!395547 m!1977269))

(assert (=> bs!395547 m!1977265))

(assert (=> bs!395547 m!1977267))

(declare-fun m!1978411 () Bool)

(assert (=> bs!395547 m!1978411))

(declare-fun m!1978413 () Bool)

(assert (=> bs!395547 m!1978413))

(assert (=> bs!395547 m!1977287))

(declare-fun m!1978415 () Bool)

(assert (=> bs!395547 m!1978415))

(assert (=> bs!395547 m!1978411))

(declare-fun m!1978417 () Bool)

(assert (=> bs!395547 m!1978417))

(assert (=> bs!395547 m!1978415))

(assert (=> bs!395547 m!1977265))

(assert (=> b!1638422 d!493416))

(declare-fun d!493418 () Bool)

(assert (=> d!493418 (= (list!7113 lt!600775) (list!7119 (c!266529 lt!600775)))))

(declare-fun bs!395548 () Bool)

(assert (= bs!395548 d!493418))

(declare-fun m!1978419 () Bool)

(assert (=> bs!395548 m!1978419))

(assert (=> b!1638422 d!493418))

(declare-fun d!493420 () Bool)

(declare-fun fromListB!931 (List!18105) BalanceConc!11954)

(assert (=> d!493420 (= (seqFromList!2106 (t!149856 (t!149856 tokens!457))) (fromListB!931 (t!149856 (t!149856 tokens!457))))))

(declare-fun bs!395549 () Bool)

(assert (= bs!395549 d!493420))

(declare-fun m!1978421 () Bool)

(assert (=> bs!395549 m!1978421))

(assert (=> b!1638422 d!493420))

(declare-fun d!493422 () Bool)

(assert (=> d!493422 (= (isEmpty!11067 (_2!10238 lt!600755)) (is-Nil!18034 (_2!10238 lt!600755)))))

(assert (=> b!1638425 d!493422))

(declare-fun d!493424 () Bool)

(assert (=> d!493424 (= (inv!23380 (tag!3458 (h!23437 rules!1846))) (= (mod (str.len (value!100246 (tag!3458 (h!23437 rules!1846)))) 2) 0))))

(assert (=> b!1638426 d!493424))

(declare-fun d!493426 () Bool)

(declare-fun res!734376 () Bool)

(declare-fun e!1051086 () Bool)

(assert (=> d!493426 (=> (not res!734376) (not e!1051086))))

(assert (=> d!493426 (= res!734376 (semiInverseModEq!1217 (toChars!4468 (transformation!3178 (h!23437 rules!1846))) (toValue!4609 (transformation!3178 (h!23437 rules!1846)))))))

(assert (=> d!493426 (= (inv!23383 (transformation!3178 (h!23437 rules!1846))) e!1051086)))

(declare-fun b!1639014 () Bool)

(assert (=> b!1639014 (= e!1051086 (equivClasses!1158 (toChars!4468 (transformation!3178 (h!23437 rules!1846))) (toValue!4609 (transformation!3178 (h!23437 rules!1846)))))))

(assert (= (and d!493426 res!734376) b!1639014))

(declare-fun m!1978423 () Bool)

(assert (=> d!493426 m!1978423))

(declare-fun m!1978425 () Bool)

(assert (=> b!1639014 m!1978425))

(assert (=> b!1638426 d!493426))

(declare-fun d!493428 () Bool)

(declare-fun lt!601404 () Bool)

(declare-fun e!1051098 () Bool)

(assert (=> d!493428 (= lt!601404 e!1051098)))

(declare-fun res!734391 () Bool)

(assert (=> d!493428 (=> (not res!734391) (not e!1051098))))

(assert (=> d!493428 (= res!734391 (= (list!7113 (_1!10237 (lex!1291 thiss!17113 rules!1846 (print!1338 thiss!17113 (singletonSeq!1635 (h!23436 tokens!457)))))) (list!7113 (singletonSeq!1635 (h!23436 tokens!457)))))))

(declare-fun e!1051097 () Bool)

(assert (=> d!493428 (= lt!601404 e!1051097)))

(declare-fun res!734389 () Bool)

(assert (=> d!493428 (=> (not res!734389) (not e!1051097))))

(declare-fun lt!601405 () tuple2!17670)

(assert (=> d!493428 (= res!734389 (= (size!14372 (_1!10237 lt!601405)) 1))))

(assert (=> d!493428 (= lt!601405 (lex!1291 thiss!17113 rules!1846 (print!1338 thiss!17113 (singletonSeq!1635 (h!23436 tokens!457)))))))

(assert (=> d!493428 (not (isEmpty!11068 rules!1846))))

(assert (=> d!493428 (= (rulesProduceIndividualToken!1459 thiss!17113 rules!1846 (h!23436 tokens!457)) lt!601404)))

(declare-fun b!1639027 () Bool)

(declare-fun res!734390 () Bool)

(assert (=> b!1639027 (=> (not res!734390) (not e!1051097))))

(assert (=> b!1639027 (= res!734390 (= (apply!4686 (_1!10237 lt!601405) 0) (h!23436 tokens!457)))))

(declare-fun b!1639028 () Bool)

(assert (=> b!1639028 (= e!1051097 (isEmpty!11075 (_2!10237 lt!601405)))))

(declare-fun b!1639029 () Bool)

(assert (=> b!1639029 (= e!1051098 (isEmpty!11075 (_2!10237 (lex!1291 thiss!17113 rules!1846 (print!1338 thiss!17113 (singletonSeq!1635 (h!23436 tokens!457)))))))))

(assert (= (and d!493428 res!734389) b!1639027))

(assert (= (and b!1639027 res!734390) b!1639028))

(assert (= (and d!493428 res!734391) b!1639029))

(assert (=> d!493428 m!1977189))

(assert (=> d!493428 m!1977283))

(declare-fun m!1978435 () Bool)

(assert (=> d!493428 m!1978435))

(declare-fun m!1978437 () Bool)

(assert (=> d!493428 m!1978437))

(declare-fun m!1978439 () Bool)

(assert (=> d!493428 m!1978439))

(declare-fun m!1978441 () Bool)

(assert (=> d!493428 m!1978441))

(assert (=> d!493428 m!1977283))

(assert (=> d!493428 m!1978437))

(declare-fun m!1978443 () Bool)

(assert (=> d!493428 m!1978443))

(assert (=> d!493428 m!1977283))

(declare-fun m!1978445 () Bool)

(assert (=> b!1639027 m!1978445))

(declare-fun m!1978447 () Bool)

(assert (=> b!1639028 m!1978447))

(assert (=> b!1639029 m!1977283))

(assert (=> b!1639029 m!1977283))

(assert (=> b!1639029 m!1978437))

(assert (=> b!1639029 m!1978437))

(assert (=> b!1639029 m!1978439))

(declare-fun m!1978449 () Bool)

(assert (=> b!1639029 m!1978449))

(assert (=> b!1638424 d!493428))

(declare-fun d!493432 () Bool)

(assert (=> d!493432 (= (head!3548 (originalCharacters!3992 (h!23436 (t!149856 tokens!457)))) (h!23435 (originalCharacters!3992 (h!23436 (t!149856 tokens!457)))))))

(assert (=> b!1638417 d!493432))

(declare-fun d!493434 () Bool)

(assert (=> d!493434 (= (isDefined!2765 lt!600782) (not (isEmpty!11074 lt!600782)))))

(declare-fun bs!395550 () Bool)

(assert (= bs!395550 d!493434))

(declare-fun m!1978451 () Bool)

(assert (=> bs!395550 m!1978451))

(assert (=> b!1638439 d!493434))

(declare-fun d!493436 () Bool)

(assert (=> d!493436 (= (head!3548 lt!600778) (h!23435 lt!600778))))

(assert (=> b!1638416 d!493436))

(declare-fun d!493438 () Bool)

(assert (=> d!493438 (= (isEmpty!11068 rules!1846) (is-Nil!18036 rules!1846))))

(assert (=> b!1638437 d!493438))

(declare-fun d!493440 () Bool)

(declare-fun lt!601406 () BalanceConc!11952)

(assert (=> d!493440 (= (list!7114 lt!601406) (printList!922 thiss!17113 (list!7113 lt!600775)))))

(assert (=> d!493440 (= lt!601406 (printTailRec!860 thiss!17113 lt!600775 0 (BalanceConc!11953 Empty!6004)))))

(assert (=> d!493440 (= (print!1338 thiss!17113 lt!600775) lt!601406)))

(declare-fun bs!395551 () Bool)

(assert (= bs!395551 d!493440))

(declare-fun m!1978453 () Bool)

(assert (=> bs!395551 m!1978453))

(assert (=> bs!395551 m!1977261))

(assert (=> bs!395551 m!1977261))

(declare-fun m!1978455 () Bool)

(assert (=> bs!395551 m!1978455))

(declare-fun m!1978457 () Bool)

(assert (=> bs!395551 m!1978457))

(assert (=> b!1638438 d!493440))

(declare-fun d!493442 () Bool)

(assert (=> d!493442 (= (list!7114 lt!600765) (list!7117 (c!266527 lt!600765)))))

(declare-fun bs!395552 () Bool)

(assert (= bs!395552 d!493442))

(declare-fun m!1978459 () Bool)

(assert (=> bs!395552 m!1978459))

(assert (=> b!1638438 d!493442))

(declare-fun b!1639032 () Bool)

(declare-fun res!734392 () Bool)

(declare-fun e!1051099 () Bool)

(assert (=> b!1639032 (=> (not res!734392) (not e!1051099))))

(declare-fun lt!601407 () List!18104)

(assert (=> b!1639032 (= res!734392 (= (size!14373 lt!601407) (+ (size!14373 lt!600769) (size!14373 lt!600778))))))

(declare-fun b!1639031 () Bool)

(declare-fun e!1051100 () List!18104)

(assert (=> b!1639031 (= e!1051100 (Cons!18034 (h!23435 lt!600769) (++!4837 (t!149855 lt!600769) lt!600778)))))

(declare-fun d!493444 () Bool)

(assert (=> d!493444 e!1051099))

(declare-fun res!734393 () Bool)

(assert (=> d!493444 (=> (not res!734393) (not e!1051099))))

(assert (=> d!493444 (= res!734393 (= (content!2497 lt!601407) (set.union (content!2497 lt!600769) (content!2497 lt!600778))))))

(assert (=> d!493444 (= lt!601407 e!1051100)))

(declare-fun c!266618 () Bool)

(assert (=> d!493444 (= c!266618 (is-Nil!18034 lt!600769))))

(assert (=> d!493444 (= (++!4837 lt!600769 lt!600778) lt!601407)))

(declare-fun b!1639030 () Bool)

(assert (=> b!1639030 (= e!1051100 lt!600778)))

(declare-fun b!1639033 () Bool)

(assert (=> b!1639033 (= e!1051099 (or (not (= lt!600778 Nil!18034)) (= lt!601407 lt!600769)))))

(assert (= (and d!493444 c!266618) b!1639030))

(assert (= (and d!493444 (not c!266618)) b!1639031))

(assert (= (and d!493444 res!734393) b!1639032))

(assert (= (and b!1639032 res!734392) b!1639033))

(declare-fun m!1978461 () Bool)

(assert (=> b!1639032 m!1978461))

(assert (=> b!1639032 m!1978263))

(declare-fun m!1978463 () Bool)

(assert (=> b!1639032 m!1978463))

(declare-fun m!1978465 () Bool)

(assert (=> b!1639031 m!1978465))

(declare-fun m!1978467 () Bool)

(assert (=> d!493444 m!1978467))

(assert (=> d!493444 m!1978395))

(declare-fun m!1978469 () Bool)

(assert (=> d!493444 m!1978469))

(assert (=> b!1638438 d!493444))

(declare-fun d!493446 () Bool)

(assert (=> d!493446 (= (seqFromList!2106 tokens!457) (fromListB!931 tokens!457))))

(declare-fun bs!395553 () Bool)

(assert (= bs!395553 d!493446))

(declare-fun m!1978471 () Bool)

(assert (=> bs!395553 m!1978471))

(assert (=> b!1638438 d!493446))

(declare-fun d!493448 () Bool)

(declare-fun lt!601408 () BalanceConc!11952)

(assert (=> d!493448 (= (list!7114 lt!601408) (originalCharacters!3992 (h!23436 tokens!457)))))

(assert (=> d!493448 (= lt!601408 (dynLambda!8034 (toChars!4468 (transformation!3178 (rule!5024 (h!23436 tokens!457)))) (value!100247 (h!23436 tokens!457))))))

(assert (=> d!493448 (= (charsOf!1827 (h!23436 tokens!457)) lt!601408)))

(declare-fun b_lambda!51495 () Bool)

(assert (=> (not b_lambda!51495) (not d!493448)))

(assert (=> d!493448 t!149863))

(declare-fun b_and!116145 () Bool)

(assert (= b_and!116141 (and (=> t!149863 result!113254) b_and!116145)))

(assert (=> d!493448 t!149865))

(declare-fun b_and!116147 () Bool)

(assert (= b_and!116143 (and (=> t!149865 result!113258) b_and!116147)))

(declare-fun m!1978473 () Bool)

(assert (=> d!493448 m!1978473))

(assert (=> d!493448 m!1977521))

(assert (=> b!1638438 d!493448))

(declare-fun d!493450 () Bool)

(assert (=> d!493450 (= (seqFromList!2106 (t!149856 tokens!457)) (fromListB!931 (t!149856 tokens!457)))))

(declare-fun bs!395554 () Bool)

(assert (= bs!395554 d!493450))

(declare-fun m!1978475 () Bool)

(assert (=> bs!395554 m!1978475))

(assert (=> b!1638438 d!493450))

(declare-fun b!1639034 () Bool)

(declare-fun lt!601409 () tuple2!17670)

(declare-fun e!1051103 () Bool)

(assert (=> b!1639034 (= e!1051103 (= (list!7114 (_2!10237 lt!601409)) (_2!10242 (lexList!846 thiss!17113 rules!1846 (list!7114 lt!600758)))))))

(declare-fun b!1639035 () Bool)

(declare-fun e!1051101 () Bool)

(assert (=> b!1639035 (= e!1051101 (not (isEmpty!11066 (_1!10237 lt!601409))))))

(declare-fun b!1639036 () Bool)

(declare-fun e!1051102 () Bool)

(assert (=> b!1639036 (= e!1051102 e!1051101)))

(declare-fun res!734394 () Bool)

(assert (=> b!1639036 (= res!734394 (< (size!14371 (_2!10237 lt!601409)) (size!14371 lt!600758)))))

(assert (=> b!1639036 (=> (not res!734394) (not e!1051101))))

(declare-fun b!1639037 () Bool)

(declare-fun res!734396 () Bool)

(assert (=> b!1639037 (=> (not res!734396) (not e!1051103))))

(assert (=> b!1639037 (= res!734396 (= (list!7113 (_1!10237 lt!601409)) (_1!10242 (lexList!846 thiss!17113 rules!1846 (list!7114 lt!600758)))))))

(declare-fun d!493452 () Bool)

(assert (=> d!493452 e!1051103))

(declare-fun res!734395 () Bool)

(assert (=> d!493452 (=> (not res!734395) (not e!1051103))))

(assert (=> d!493452 (= res!734395 e!1051102)))

(declare-fun c!266619 () Bool)

(assert (=> d!493452 (= c!266619 (> (size!14372 (_1!10237 lt!601409)) 0))))

(assert (=> d!493452 (= lt!601409 (lexTailRecV2!569 thiss!17113 rules!1846 lt!600758 (BalanceConc!11953 Empty!6004) lt!600758 (BalanceConc!11955 Empty!6005)))))

(assert (=> d!493452 (= (lex!1291 thiss!17113 rules!1846 lt!600758) lt!601409)))

(declare-fun b!1639038 () Bool)

(assert (=> b!1639038 (= e!1051102 (= (_2!10237 lt!601409) lt!600758))))

(assert (= (and d!493452 c!266619) b!1639036))

(assert (= (and d!493452 (not c!266619)) b!1639038))

(assert (= (and b!1639036 res!734394) b!1639035))

(assert (= (and d!493452 res!734395) b!1639037))

(assert (= (and b!1639037 res!734396) b!1639034))

(declare-fun m!1978477 () Bool)

(assert (=> b!1639035 m!1978477))

(declare-fun m!1978479 () Bool)

(assert (=> d!493452 m!1978479))

(declare-fun m!1978481 () Bool)

(assert (=> d!493452 m!1978481))

(declare-fun m!1978483 () Bool)

(assert (=> b!1639034 m!1978483))

(assert (=> b!1639034 m!1977201))

(assert (=> b!1639034 m!1977201))

(declare-fun m!1978485 () Bool)

(assert (=> b!1639034 m!1978485))

(declare-fun m!1978487 () Bool)

(assert (=> b!1639037 m!1978487))

(assert (=> b!1639037 m!1977201))

(assert (=> b!1639037 m!1977201))

(assert (=> b!1639037 m!1978485))

(declare-fun m!1978489 () Bool)

(assert (=> b!1639036 m!1978489))

(declare-fun m!1978491 () Bool)

(assert (=> b!1639036 m!1978491))

(assert (=> b!1638438 d!493452))

(declare-fun d!493454 () Bool)

(assert (=> d!493454 (= (list!7114 lt!600758) (list!7117 (c!266527 lt!600758)))))

(declare-fun bs!395555 () Bool)

(assert (= bs!395555 d!493454))

(declare-fun m!1978493 () Bool)

(assert (=> bs!395555 m!1978493))

(assert (=> b!1638438 d!493454))

(declare-fun d!493456 () Bool)

(declare-fun lt!601410 () BalanceConc!11952)

(assert (=> d!493456 (= (list!7114 lt!601410) (printList!922 thiss!17113 (list!7113 (seqFromList!2106 tokens!457))))))

(assert (=> d!493456 (= lt!601410 (printTailRec!860 thiss!17113 (seqFromList!2106 tokens!457) 0 (BalanceConc!11953 Empty!6004)))))

(assert (=> d!493456 (= (print!1338 thiss!17113 (seqFromList!2106 tokens!457)) lt!601410)))

(declare-fun bs!395556 () Bool)

(assert (= bs!395556 d!493456))

(declare-fun m!1978495 () Bool)

(assert (=> bs!395556 m!1978495))

(assert (=> bs!395556 m!1977193))

(declare-fun m!1978497 () Bool)

(assert (=> bs!395556 m!1978497))

(assert (=> bs!395556 m!1978497))

(declare-fun m!1978499 () Bool)

(assert (=> bs!395556 m!1978499))

(assert (=> bs!395556 m!1977193))

(declare-fun m!1978501 () Bool)

(assert (=> bs!395556 m!1978501))

(assert (=> b!1638438 d!493456))

(declare-fun d!493458 () Bool)

(assert (=> d!493458 (= (list!7114 lt!600759) (list!7117 (c!266527 lt!600759)))))

(declare-fun bs!395557 () Bool)

(assert (= bs!395557 d!493458))

(declare-fun m!1978503 () Bool)

(assert (=> bs!395557 m!1978503))

(assert (=> b!1638438 d!493458))

(declare-fun d!493460 () Bool)

(declare-fun res!734402 () Bool)

(declare-fun e!1051108 () Bool)

(assert (=> d!493460 (=> res!734402 e!1051108)))

(assert (=> d!493460 (= res!734402 (or (not (is-Cons!18035 tokens!457)) (not (is-Cons!18035 (t!149856 tokens!457)))))))

(assert (=> d!493460 (= (tokensListTwoByTwoPredicateSeparableList!500 thiss!17113 tokens!457 rules!1846) e!1051108)))

(declare-fun b!1639043 () Bool)

(declare-fun e!1051109 () Bool)

(assert (=> b!1639043 (= e!1051108 e!1051109)))

(declare-fun res!734401 () Bool)

(assert (=> b!1639043 (=> (not res!734401) (not e!1051109))))

(assert (=> b!1639043 (= res!734401 (separableTokensPredicate!749 thiss!17113 (h!23436 tokens!457) (h!23436 (t!149856 tokens!457)) rules!1846))))

(declare-fun lt!601426 () Unit!29579)

(declare-fun Unit!29602 () Unit!29579)

(assert (=> b!1639043 (= lt!601426 Unit!29602)))

(assert (=> b!1639043 (> (size!14371 (charsOf!1827 (h!23436 (t!149856 tokens!457)))) 0)))

(declare-fun lt!601428 () Unit!29579)

(declare-fun Unit!29603 () Unit!29579)

(assert (=> b!1639043 (= lt!601428 Unit!29603)))

(assert (=> b!1639043 (rulesProduceIndividualToken!1459 thiss!17113 rules!1846 (h!23436 (t!149856 tokens!457)))))

(declare-fun lt!601430 () Unit!29579)

(declare-fun Unit!29604 () Unit!29579)

(assert (=> b!1639043 (= lt!601430 Unit!29604)))

(assert (=> b!1639043 (rulesProduceIndividualToken!1459 thiss!17113 rules!1846 (h!23436 tokens!457))))

(declare-fun lt!601429 () Unit!29579)

(declare-fun lt!601425 () Unit!29579)

(assert (=> b!1639043 (= lt!601429 lt!601425)))

(assert (=> b!1639043 (rulesProduceIndividualToken!1459 thiss!17113 rules!1846 (h!23436 (t!149856 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!582 (LexerInterface!2807 List!18106 List!18105 Token!5922) Unit!29579)

(assert (=> b!1639043 (= lt!601425 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!582 thiss!17113 rules!1846 tokens!457 (h!23436 (t!149856 tokens!457))))))

(declare-fun lt!601431 () Unit!29579)

(declare-fun lt!601427 () Unit!29579)

(assert (=> b!1639043 (= lt!601431 lt!601427)))

(assert (=> b!1639043 (rulesProduceIndividualToken!1459 thiss!17113 rules!1846 (h!23436 tokens!457))))

(assert (=> b!1639043 (= lt!601427 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!582 thiss!17113 rules!1846 tokens!457 (h!23436 tokens!457)))))

(declare-fun b!1639044 () Bool)

(assert (=> b!1639044 (= e!1051109 (tokensListTwoByTwoPredicateSeparableList!500 thiss!17113 (Cons!18035 (h!23436 (t!149856 tokens!457)) (t!149856 (t!149856 tokens!457))) rules!1846))))

(assert (= (and d!493460 (not res!734402)) b!1639043))

(assert (= (and b!1639043 res!734401) b!1639044))

(assert (=> b!1639043 m!1977243))

(assert (=> b!1639043 m!1978327))

(assert (=> b!1639043 m!1977231))

(declare-fun m!1978513 () Bool)

(assert (=> b!1639043 m!1978513))

(assert (=> b!1639043 m!1977271))

(declare-fun m!1978515 () Bool)

(assert (=> b!1639043 m!1978515))

(assert (=> b!1639043 m!1977243))

(declare-fun m!1978517 () Bool)

(assert (=> b!1639043 m!1978517))

(declare-fun m!1978519 () Bool)

(assert (=> b!1639044 m!1978519))

(assert (=> b!1638420 d!493460))

(declare-fun d!493468 () Bool)

(assert (=> d!493468 (= (get!5239 lt!600760) (v!24492 lt!600760))))

(assert (=> b!1638441 d!493468))

(declare-fun lt!601722 () Token!5922)

(declare-fun e!1051170 () Bool)

(declare-fun b!1639160 () Bool)

(assert (=> b!1639160 (= e!1051170 (= (rule!5024 lt!601722) (get!5242 (getRuleFromTag!301 thiss!17113 rules!1846 (tag!3458 (rule!5024 lt!601722))))))))

(declare-fun b!1639161 () Bool)

(assert (=> b!1639161 false))

(declare-fun lt!601702 () Unit!29579)

(declare-fun lt!601672 () Unit!29579)

(assert (=> b!1639161 (= lt!601702 lt!601672)))

(declare-fun lt!601714 () List!18104)

(assert (=> b!1639161 (not (matchR!2005 (regex!3178 (rule!5024 lt!601722)) lt!601714))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!85 (LexerInterface!2807 List!18106 Rule!6156 List!18104 List!18104 Rule!6156) Unit!29579)

(assert (=> b!1639161 (= lt!601672 (lemmaMaxPrefNoSmallerRuleMatches!85 thiss!17113 rules!1846 (rule!5024 (h!23436 tokens!457)) lt!601714 (list!7114 (charsOf!1827 (h!23436 tokens!457))) (rule!5024 lt!601722)))))

(assert (=> b!1639161 (= lt!601714 (list!7114 (charsOf!1827 (h!23436 tokens!457))))))

(declare-fun e!1051173 () Unit!29579)

(declare-fun Unit!29605 () Unit!29579)

(assert (=> b!1639161 (= e!1051173 Unit!29605)))

(declare-fun b!1639162 () Bool)

(assert (=> b!1639162 false))

(declare-fun lt!601691 () Unit!29579)

(declare-fun lt!601727 () Unit!29579)

(assert (=> b!1639162 (= lt!601691 lt!601727)))

(assert (=> b!1639162 (= (rule!5024 lt!601722) (rule!5024 (h!23436 tokens!457)))))

(declare-fun lemmaSameIndexThenSameElement!61 (List!18106 Rule!6156 Rule!6156) Unit!29579)

(assert (=> b!1639162 (= lt!601727 (lemmaSameIndexThenSameElement!61 rules!1846 (rule!5024 lt!601722) (rule!5024 (h!23436 tokens!457))))))

(declare-fun e!1051174 () Unit!29579)

(declare-fun Unit!29606 () Unit!29579)

(assert (=> b!1639162 (= e!1051174 Unit!29606)))

(declare-fun b!1639163 () Bool)

(declare-fun e!1051171 () Unit!29579)

(declare-fun Unit!29607 () Unit!29579)

(assert (=> b!1639163 (= e!1051171 Unit!29607)))

(declare-fun c!266653 () Bool)

(declare-fun getIndex!113 (List!18106 Rule!6156) Int)

(assert (=> b!1639163 (= c!266653 (< (getIndex!113 rules!1846 (rule!5024 (h!23436 tokens!457))) (getIndex!113 rules!1846 (rule!5024 lt!601722))))))

(declare-fun lt!601674 () Unit!29579)

(declare-fun e!1051175 () Unit!29579)

(assert (=> b!1639163 (= lt!601674 e!1051175)))

(declare-fun c!266652 () Bool)

(assert (=> b!1639163 (= c!266652 (< (getIndex!113 rules!1846 (rule!5024 lt!601722)) (getIndex!113 rules!1846 (rule!5024 (h!23436 tokens!457)))))))

(declare-fun lt!601689 () Unit!29579)

(assert (=> b!1639163 (= lt!601689 e!1051173)))

(declare-fun c!266650 () Bool)

(assert (=> b!1639163 (= c!266650 (= (getIndex!113 rules!1846 (rule!5024 lt!601722)) (getIndex!113 rules!1846 (rule!5024 (h!23436 tokens!457)))))))

(declare-fun lt!601710 () Unit!29579)

(assert (=> b!1639163 (= lt!601710 e!1051174)))

(assert (=> b!1639163 false))

(declare-fun b!1639164 () Bool)

(assert (=> b!1639164 false))

(declare-fun lt!601712 () Unit!29579)

(declare-fun lt!601705 () Unit!29579)

(assert (=> b!1639164 (= lt!601712 lt!601705)))

(declare-fun lt!601699 () List!18104)

(assert (=> b!1639164 (not (matchR!2005 (regex!3178 (rule!5024 (h!23436 tokens!457))) lt!601699))))

(declare-fun lt!601696 () List!18104)

(assert (=> b!1639164 (= lt!601705 (lemmaMaxPrefNoSmallerRuleMatches!85 thiss!17113 rules!1846 (rule!5024 lt!601722) lt!601699 lt!601696 (rule!5024 (h!23436 tokens!457))))))

(assert (=> b!1639164 (= lt!601699 (list!7114 (charsOf!1827 lt!601722)))))

(declare-fun Unit!29608 () Unit!29579)

(assert (=> b!1639164 (= e!1051175 Unit!29608)))

(declare-fun b!1639165 () Bool)

(declare-fun e!1051169 () Unit!29579)

(declare-fun Unit!29609 () Unit!29579)

(assert (=> b!1639165 (= e!1051169 Unit!29609)))

(declare-fun lt!601719 () List!18104)

(assert (=> b!1639165 (= lt!601719 (list!7114 (charsOf!1827 lt!601722)))))

(declare-fun lt!601695 () List!18104)

(assert (=> b!1639165 (= lt!601695 (list!7114 (charsOf!1827 (h!23436 tokens!457))))))

(declare-fun lt!601687 () Unit!29579)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!135 (LexerInterface!2807 List!18106 Rule!6156 List!18104 List!18104 List!18104 Rule!6156) Unit!29579)

(assert (=> b!1639165 (= lt!601687 (lemmaMaxPrefixOutputsMaxPrefix!135 thiss!17113 rules!1846 (rule!5024 lt!601722) lt!601719 lt!601696 lt!601695 (rule!5024 (h!23436 tokens!457))))))

(assert (=> b!1639165 (not (matchR!2005 (regex!3178 (rule!5024 (h!23436 tokens!457))) lt!601695))))

(declare-fun lt!601685 () Unit!29579)

(assert (=> b!1639165 (= lt!601685 lt!601687)))

(assert (=> b!1639165 false))

(declare-fun b!1639166 () Bool)

(declare-fun Unit!29610 () Unit!29579)

(assert (=> b!1639166 (= e!1051169 Unit!29610)))

(declare-fun b!1639168 () Bool)

(declare-fun Unit!29611 () Unit!29579)

(assert (=> b!1639168 (= e!1051174 Unit!29611)))

(declare-fun b!1639169 () Bool)

(declare-fun Unit!29612 () Unit!29579)

(assert (=> b!1639169 (= e!1051173 Unit!29612)))

(declare-fun b!1639170 () Bool)

(declare-fun e!1051172 () Unit!29579)

(declare-fun Unit!29613 () Unit!29579)

(assert (=> b!1639170 (= e!1051172 Unit!29613)))

(declare-fun lt!601701 () List!18104)

(declare-fun lt!601678 () Unit!29579)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!45 (LexerInterface!2807 List!18106 List!18104 Token!5922 Rule!6156 List!18104) Unit!29579)

(assert (=> b!1639170 (= lt!601678 (lemmaMaxPrefixThenMatchesRulesRegex!45 thiss!17113 rules!1846 lt!601696 lt!601722 (rule!5024 lt!601722) lt!601701))))

(assert (=> b!1639170 (matchR!2005 (rulesRegex!568 thiss!17113 rules!1846) (list!7114 (charsOf!1827 lt!601722)))))

(declare-fun lt!601741 () Unit!29579)

(assert (=> b!1639170 (= lt!601741 lt!601678)))

(declare-fun lt!601692 () List!18104)

(assert (=> b!1639170 (= lt!601692 (list!7114 (charsOf!1827 (h!23436 tokens!457))))))

(declare-fun lt!601716 () List!18104)

(assert (=> b!1639170 (= lt!601716 (list!7114 (charsOf!1827 (h!23436 tokens!457))))))

(declare-fun lt!601679 () List!18104)

(declare-fun getSuffix!715 (List!18104 List!18104) List!18104)

(assert (=> b!1639170 (= lt!601679 (getSuffix!715 lt!601696 (list!7114 (charsOf!1827 (h!23436 tokens!457)))))))

(declare-fun lt!601718 () Unit!29579)

(declare-fun lemmaSamePrefixThenSameSuffix!667 (List!18104 List!18104 List!18104 List!18104 List!18104) Unit!29579)

(assert (=> b!1639170 (= lt!601718 (lemmaSamePrefixThenSameSuffix!667 lt!601692 lt!600778 lt!601716 lt!601679 lt!601696))))

(assert (=> b!1639170 (= lt!600778 lt!601679)))

(declare-fun lt!601704 () Unit!29579)

(assert (=> b!1639170 (= lt!601704 lt!601718)))

(declare-fun lt!601721 () List!18104)

(assert (=> b!1639170 (= lt!601721 (list!7114 (charsOf!1827 (h!23436 tokens!457))))))

(declare-fun lt!601724 () Unit!29579)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!158 (List!18104 List!18104) Unit!29579)

(assert (=> b!1639170 (= lt!601724 (lemmaAddHeadSuffixToPrefixStillPrefix!158 lt!601721 lt!601696))))

(assert (=> b!1639170 (isPrefix!1438 (++!4837 lt!601721 (Cons!18034 (head!3548 (getSuffix!715 lt!601696 lt!601721)) Nil!18034)) lt!601696)))

(declare-fun lt!601739 () Unit!29579)

(assert (=> b!1639170 (= lt!601739 lt!601724)))

(declare-fun lt!601732 () List!18104)

(assert (=> b!1639170 (= lt!601732 (list!7114 (charsOf!1827 lt!601722)))))

(declare-fun lt!601725 () List!18104)

(assert (=> b!1639170 (= lt!601725 (++!4837 (list!7114 (charsOf!1827 (h!23436 tokens!457))) (Cons!18034 (head!3548 lt!600778) Nil!18034)))))

(declare-fun lt!601734 () Unit!29579)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!44 (List!18104 List!18104 List!18104) Unit!29579)

(assert (=> b!1639170 (= lt!601734 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!44 lt!601732 lt!601725 lt!601696))))

(assert (=> b!1639170 (isPrefix!1438 lt!601725 lt!601732)))

(declare-fun lt!601730 () Unit!29579)

(assert (=> b!1639170 (= lt!601730 lt!601734)))

(declare-fun lt!601673 () Regex!4506)

(assert (=> b!1639170 (= lt!601673 (rulesRegex!568 thiss!17113 rules!1846))))

(declare-fun lt!601690 () List!18104)

(assert (=> b!1639170 (= lt!601690 (++!4837 (list!7114 (charsOf!1827 (h!23436 tokens!457))) (Cons!18034 (head!3548 lt!600778) Nil!18034)))))

(declare-fun lt!601676 () List!18104)

(assert (=> b!1639170 (= lt!601676 (list!7114 (charsOf!1827 lt!601722)))))

(declare-fun lt!601694 () Unit!29579)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!45 (Regex!4506 List!18104 List!18104) Unit!29579)

(assert (=> b!1639170 (= lt!601694 (lemmaNotPrefixMatchThenCannotMatchLonger!45 lt!601673 lt!601690 lt!601676))))

(assert (=> b!1639170 (not (matchR!2005 lt!601673 lt!601676))))

(declare-fun lt!601688 () Unit!29579)

(assert (=> b!1639170 (= lt!601688 lt!601694)))

(assert (=> b!1639170 false))

(declare-fun b!1639171 () Bool)

(declare-fun res!734462 () Bool)

(assert (=> b!1639171 (=> (not res!734462) (not e!1051170))))

(assert (=> b!1639171 (= res!734462 (matchR!2005 (regex!3178 (get!5242 (getRuleFromTag!301 thiss!17113 rules!1846 (tag!3458 (rule!5024 lt!601722))))) (list!7114 (charsOf!1827 lt!601722))))))

(declare-fun b!1639172 () Bool)

(declare-fun Unit!29614 () Unit!29579)

(assert (=> b!1639172 (= e!1051171 Unit!29614)))

(declare-fun b!1639173 () Bool)

(declare-fun Unit!29615 () Unit!29579)

(assert (=> b!1639173 (= e!1051172 Unit!29615)))

(declare-fun b!1639167 () Bool)

(declare-fun Unit!29616 () Unit!29579)

(assert (=> b!1639167 (= e!1051175 Unit!29616)))

(declare-fun d!493470 () Bool)

(assert (=> d!493470 (= (maxPrefix!1371 thiss!17113 rules!1846 (++!4837 (list!7114 (charsOf!1827 (h!23436 tokens!457))) lt!600778)) (Some!3397 (tuple2!17673 (h!23436 tokens!457) lt!600778)))))

(declare-fun lt!601729 () Unit!29579)

(declare-fun Unit!29617 () Unit!29579)

(assert (=> d!493470 (= lt!601729 Unit!29617)))

(declare-fun lt!601680 () Unit!29579)

(assert (=> d!493470 (= lt!601680 e!1051171)))

(declare-fun c!266648 () Bool)

(assert (=> d!493470 (= c!266648 (not (= (rule!5024 lt!601722) (rule!5024 (h!23436 tokens!457)))))))

(declare-fun lt!601681 () Unit!29579)

(declare-fun lt!601731 () Unit!29579)

(assert (=> d!493470 (= lt!601681 lt!601731)))

(assert (=> d!493470 (= lt!600778 lt!601701)))

(assert (=> d!493470 (= lt!601731 (lemmaSamePrefixThenSameSuffix!667 (list!7114 (charsOf!1827 (h!23436 tokens!457))) lt!600778 (list!7114 (charsOf!1827 (h!23436 tokens!457))) lt!601701 lt!601696))))

(declare-fun lt!601706 () Unit!29579)

(declare-fun lt!601733 () Unit!29579)

(assert (=> d!493470 (= lt!601706 lt!601733)))

(declare-fun lt!601736 () List!18104)

(declare-fun lt!601738 () List!18104)

(assert (=> d!493470 (= lt!601736 lt!601738)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!168 (List!18104 List!18104 List!18104) Unit!29579)

(assert (=> d!493470 (= lt!601733 (lemmaIsPrefixSameLengthThenSameList!168 lt!601736 lt!601738 lt!601696))))

(assert (=> d!493470 (= lt!601738 (list!7114 (charsOf!1827 (h!23436 tokens!457))))))

(assert (=> d!493470 (= lt!601736 (list!7114 (charsOf!1827 lt!601722)))))

(declare-fun lt!601713 () Unit!29579)

(assert (=> d!493470 (= lt!601713 e!1051169)))

(declare-fun c!266649 () Bool)

(assert (=> d!493470 (= c!266649 (< (size!14371 (charsOf!1827 lt!601722)) (size!14371 (charsOf!1827 (h!23436 tokens!457)))))))

(declare-fun lt!601683 () Unit!29579)

(assert (=> d!493470 (= lt!601683 e!1051172)))

(declare-fun c!266651 () Bool)

(assert (=> d!493470 (= c!266651 (> (size!14371 (charsOf!1827 lt!601722)) (size!14371 (charsOf!1827 (h!23436 tokens!457)))))))

(declare-fun lt!601742 () Unit!29579)

(declare-fun lt!601698 () Unit!29579)

(assert (=> d!493470 (= lt!601742 lt!601698)))

(assert (=> d!493470 (matchR!2005 (rulesRegex!568 thiss!17113 rules!1846) (list!7114 (charsOf!1827 (h!23436 tokens!457))))))

(assert (=> d!493470 (= lt!601698 (lemmaMaxPrefixThenMatchesRulesRegex!45 thiss!17113 rules!1846 (list!7114 (charsOf!1827 (h!23436 tokens!457))) (h!23436 tokens!457) (rule!5024 (h!23436 tokens!457)) Nil!18034))))

(declare-fun lt!601717 () Unit!29579)

(declare-fun lt!601735 () Unit!29579)

(assert (=> d!493470 (= lt!601717 lt!601735)))

(declare-fun lt!601711 () List!18104)

(assert (=> d!493470 (= lt!601701 lt!601711)))

(declare-fun lt!601726 () List!18104)

(declare-fun lt!601677 () List!18104)

(assert (=> d!493470 (= lt!601735 (lemmaSamePrefixThenSameSuffix!667 lt!601677 lt!601701 lt!601726 lt!601711 lt!601696))))

(assert (=> d!493470 (= lt!601711 (getSuffix!715 lt!601696 (list!7114 (charsOf!1827 lt!601722))))))

(assert (=> d!493470 (= lt!601726 (list!7114 (charsOf!1827 lt!601722)))))

(assert (=> d!493470 (= lt!601677 (list!7114 (charsOf!1827 lt!601722)))))

(declare-fun lt!601720 () Unit!29579)

(declare-fun lt!601684 () Unit!29579)

(assert (=> d!493470 (= lt!601720 lt!601684)))

(declare-fun lt!601709 () List!18104)

(assert (=> d!493470 (= (maxPrefixOneRule!792 thiss!17113 (rule!5024 lt!601722) lt!601696) (Some!3397 (tuple2!17673 (Token!5923 (apply!4685 (transformation!3178 (rule!5024 lt!601722)) (seqFromList!2105 lt!601709)) (rule!5024 lt!601722) (size!14373 lt!601709) lt!601709) lt!601701)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!234 (LexerInterface!2807 List!18106 List!18104 List!18104 List!18104 Rule!6156) Unit!29579)

(assert (=> d!493470 (= lt!601684 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!234 thiss!17113 rules!1846 lt!601709 lt!601696 lt!601701 (rule!5024 lt!601722)))))

(assert (=> d!493470 (= lt!601709 (list!7114 (charsOf!1827 lt!601722)))))

(declare-fun lt!601700 () Unit!29579)

(declare-fun lemmaCharactersSize!340 (Token!5922) Unit!29579)

(assert (=> d!493470 (= lt!601700 (lemmaCharactersSize!340 lt!601722))))

(declare-fun lt!601703 () Unit!29579)

(declare-fun lemmaEqSameImage!193 (TokenValueInjection!6196 BalanceConc!11952 BalanceConc!11952) Unit!29579)

(assert (=> d!493470 (= lt!601703 (lemmaEqSameImage!193 (transformation!3178 (rule!5024 lt!601722)) (charsOf!1827 lt!601722) (seqFromList!2105 (originalCharacters!3992 lt!601722))))))

(declare-fun lt!601707 () Unit!29579)

(declare-fun lemmaSemiInverse!408 (TokenValueInjection!6196 BalanceConc!11952) Unit!29579)

(assert (=> d!493470 (= lt!601707 (lemmaSemiInverse!408 (transformation!3178 (rule!5024 lt!601722)) (charsOf!1827 lt!601722)))))

(declare-fun lt!601697 () Unit!29579)

(declare-fun lemmaInv!473 (TokenValueInjection!6196) Unit!29579)

(assert (=> d!493470 (= lt!601697 (lemmaInv!473 (transformation!3178 (rule!5024 lt!601722))))))

(declare-fun lt!601715 () Unit!29579)

(declare-fun lt!601737 () Unit!29579)

(assert (=> d!493470 (= lt!601715 lt!601737)))

(declare-fun lt!601686 () List!18104)

(assert (=> d!493470 (isPrefix!1438 lt!601686 (++!4837 lt!601686 lt!601701))))

(assert (=> d!493470 (= lt!601737 (lemmaConcatTwoListThenFirstIsPrefix!963 lt!601686 lt!601701))))

(assert (=> d!493470 (= lt!601686 (list!7114 (charsOf!1827 lt!601722)))))

(declare-fun lt!601693 () Unit!29579)

(declare-fun lt!601708 () Unit!29579)

(assert (=> d!493470 (= lt!601693 lt!601708)))

(assert (=> d!493470 e!1051170))

(declare-fun res!734463 () Bool)

(assert (=> d!493470 (=> (not res!734463) (not e!1051170))))

(assert (=> d!493470 (= res!734463 (isDefined!2768 (getRuleFromTag!301 thiss!17113 rules!1846 (tag!3458 (rule!5024 lt!601722)))))))

(assert (=> d!493470 (= lt!601708 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!301 thiss!17113 rules!1846 lt!601696 lt!601722))))

(declare-fun lt!601728 () Option!3398)

(assert (=> d!493470 (= lt!601701 (_2!10238 (get!5239 lt!601728)))))

(assert (=> d!493470 (= lt!601722 (_1!10238 (get!5239 lt!601728)))))

(declare-fun lt!601675 () Unit!29579)

(assert (=> d!493470 (= lt!601675 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!381 thiss!17113 rules!1846 (list!7114 (charsOf!1827 (h!23436 tokens!457))) lt!600778))))

(assert (=> d!493470 (= lt!601728 (maxPrefix!1371 thiss!17113 rules!1846 lt!601696))))

(declare-fun lt!601682 () Unit!29579)

(declare-fun lt!601723 () Unit!29579)

(assert (=> d!493470 (= lt!601682 lt!601723)))

(declare-fun lt!601740 () List!18104)

(assert (=> d!493470 (isPrefix!1438 lt!601740 (++!4837 lt!601740 lt!600778))))

(assert (=> d!493470 (= lt!601723 (lemmaConcatTwoListThenFirstIsPrefix!963 lt!601740 lt!600778))))

(assert (=> d!493470 (= lt!601740 (list!7114 (charsOf!1827 (h!23436 tokens!457))))))

(assert (=> d!493470 (= lt!601696 (++!4837 (list!7114 (charsOf!1827 (h!23436 tokens!457))) lt!600778))))

(assert (=> d!493470 (not (isEmpty!11068 rules!1846))))

(assert (=> d!493470 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!143 thiss!17113 rules!1846 (h!23436 tokens!457) (rule!5024 (h!23436 tokens!457)) lt!600778) lt!601729)))

(assert (= (and d!493470 res!734463) b!1639171))

(assert (= (and b!1639171 res!734462) b!1639160))

(assert (= (and d!493470 c!266651) b!1639170))

(assert (= (and d!493470 (not c!266651)) b!1639173))

(assert (= (and d!493470 c!266649) b!1639165))

(assert (= (and d!493470 (not c!266649)) b!1639166))

(assert (= (and d!493470 c!266648) b!1639163))

(assert (= (and d!493470 (not c!266648)) b!1639172))

(assert (= (and b!1639163 c!266653) b!1639164))

(assert (= (and b!1639163 (not c!266653)) b!1639167))

(assert (= (and b!1639163 c!266652) b!1639161))

(assert (= (and b!1639163 (not c!266652)) b!1639169))

(assert (= (and b!1639163 c!266650) b!1639162))

(assert (= (and b!1639163 (not c!266650)) b!1639168))

(declare-fun m!1978709 () Bool)

(assert (=> b!1639161 m!1978709))

(assert (=> b!1639161 m!1977191))

(assert (=> b!1639161 m!1977191))

(declare-fun m!1978711 () Bool)

(assert (=> b!1639161 m!1978711))

(assert (=> b!1639161 m!1978711))

(declare-fun m!1978713 () Bool)

(assert (=> b!1639161 m!1978713))

(assert (=> b!1639165 m!1977191))

(assert (=> b!1639165 m!1978711))

(declare-fun m!1978715 () Bool)

(assert (=> b!1639165 m!1978715))

(declare-fun m!1978717 () Bool)

(assert (=> b!1639165 m!1978717))

(declare-fun m!1978719 () Bool)

(assert (=> b!1639165 m!1978719))

(assert (=> b!1639165 m!1977191))

(declare-fun m!1978721 () Bool)

(assert (=> b!1639165 m!1978721))

(assert (=> b!1639165 m!1978717))

(assert (=> b!1639171 m!1978717))

(assert (=> b!1639171 m!1978719))

(declare-fun m!1978723 () Bool)

(assert (=> b!1639171 m!1978723))

(declare-fun m!1978725 () Bool)

(assert (=> b!1639171 m!1978725))

(assert (=> b!1639171 m!1978717))

(assert (=> b!1639171 m!1978723))

(assert (=> b!1639171 m!1978719))

(declare-fun m!1978727 () Bool)

(assert (=> b!1639171 m!1978727))

(declare-fun m!1978729 () Bool)

(assert (=> b!1639164 m!1978729))

(declare-fun m!1978731 () Bool)

(assert (=> b!1639164 m!1978731))

(assert (=> b!1639164 m!1978717))

(assert (=> b!1639164 m!1978717))

(assert (=> b!1639164 m!1978719))

(assert (=> d!493470 m!1977233))

(assert (=> d!493470 m!1977191))

(assert (=> d!493470 m!1978711))

(declare-fun m!1978733 () Bool)

(assert (=> d!493470 m!1978733))

(declare-fun m!1978735 () Bool)

(assert (=> d!493470 m!1978735))

(declare-fun m!1978737 () Bool)

(assert (=> d!493470 m!1978737))

(declare-fun m!1978739 () Bool)

(assert (=> d!493470 m!1978739))

(declare-fun m!1978741 () Bool)

(assert (=> d!493470 m!1978741))

(assert (=> d!493470 m!1978711))

(declare-fun m!1978743 () Bool)

(assert (=> d!493470 m!1978743))

(assert (=> d!493470 m!1977191))

(assert (=> d!493470 m!1978719))

(declare-fun m!1978745 () Bool)

(assert (=> d!493470 m!1978745))

(declare-fun m!1978747 () Bool)

(assert (=> d!493470 m!1978747))

(assert (=> d!493470 m!1978723))

(declare-fun m!1978749 () Bool)

(assert (=> d!493470 m!1978749))

(declare-fun m!1978751 () Bool)

(assert (=> d!493470 m!1978751))

(assert (=> d!493470 m!1978735))

(declare-fun m!1978753 () Bool)

(assert (=> d!493470 m!1978753))

(assert (=> d!493470 m!1977233))

(assert (=> d!493470 m!1978711))

(declare-fun m!1978755 () Bool)

(assert (=> d!493470 m!1978755))

(declare-fun m!1978757 () Bool)

(assert (=> d!493470 m!1978757))

(assert (=> d!493470 m!1978717))

(assert (=> d!493470 m!1978719))

(assert (=> d!493470 m!1978739))

(assert (=> d!493470 m!1977189))

(declare-fun m!1978759 () Bool)

(assert (=> d!493470 m!1978759))

(assert (=> d!493470 m!1978723))

(declare-fun m!1978761 () Bool)

(assert (=> d!493470 m!1978761))

(declare-fun m!1978763 () Bool)

(assert (=> d!493470 m!1978763))

(assert (=> d!493470 m!1978711))

(declare-fun m!1978765 () Bool)

(assert (=> d!493470 m!1978765))

(declare-fun m!1978767 () Bool)

(assert (=> d!493470 m!1978767))

(assert (=> d!493470 m!1978711))

(declare-fun m!1978769 () Bool)

(assert (=> d!493470 m!1978769))

(assert (=> d!493470 m!1978717))

(declare-fun m!1978771 () Bool)

(assert (=> d!493470 m!1978771))

(declare-fun m!1978773 () Bool)

(assert (=> d!493470 m!1978773))

(declare-fun m!1978775 () Bool)

(assert (=> d!493470 m!1978775))

(declare-fun m!1978777 () Bool)

(assert (=> d!493470 m!1978777))

(assert (=> d!493470 m!1978717))

(declare-fun m!1978779 () Bool)

(assert (=> d!493470 m!1978779))

(assert (=> d!493470 m!1978767))

(declare-fun m!1978781 () Bool)

(assert (=> d!493470 m!1978781))

(assert (=> d!493470 m!1978711))

(assert (=> d!493470 m!1978711))

(declare-fun m!1978783 () Bool)

(assert (=> d!493470 m!1978783))

(declare-fun m!1978785 () Bool)

(assert (=> d!493470 m!1978785))

(assert (=> d!493470 m!1978717))

(declare-fun m!1978787 () Bool)

(assert (=> d!493470 m!1978787))

(declare-fun m!1978789 () Bool)

(assert (=> d!493470 m!1978789))

(assert (=> d!493470 m!1978787))

(assert (=> d!493470 m!1978717))

(assert (=> d!493470 m!1977191))

(declare-fun m!1978791 () Bool)

(assert (=> d!493470 m!1978791))

(assert (=> d!493470 m!1978765))

(declare-fun m!1978793 () Bool)

(assert (=> d!493470 m!1978793))

(assert (=> b!1639160 m!1978723))

(assert (=> b!1639160 m!1978723))

(assert (=> b!1639160 m!1978725))

(declare-fun m!1978795 () Bool)

(assert (=> b!1639162 m!1978795))

(assert (=> b!1639170 m!1977233))

(assert (=> b!1639170 m!1977191))

(assert (=> b!1639170 m!1978711))

(declare-fun m!1978797 () Bool)

(assert (=> b!1639170 m!1978797))

(declare-fun m!1978799 () Bool)

(assert (=> b!1639170 m!1978799))

(assert (=> b!1639170 m!1977257))

(declare-fun m!1978801 () Bool)

(assert (=> b!1639170 m!1978801))

(assert (=> b!1639170 m!1978717))

(assert (=> b!1639170 m!1978719))

(assert (=> b!1639170 m!1977233))

(assert (=> b!1639170 m!1978719))

(declare-fun m!1978803 () Bool)

(assert (=> b!1639170 m!1978803))

(assert (=> b!1639170 m!1978801))

(declare-fun m!1978805 () Bool)

(assert (=> b!1639170 m!1978805))

(assert (=> b!1639170 m!1977191))

(assert (=> b!1639170 m!1978711))

(declare-fun m!1978807 () Bool)

(assert (=> b!1639170 m!1978807))

(declare-fun m!1978809 () Bool)

(assert (=> b!1639170 m!1978809))

(declare-fun m!1978811 () Bool)

(assert (=> b!1639170 m!1978811))

(assert (=> b!1639170 m!1978797))

(declare-fun m!1978813 () Bool)

(assert (=> b!1639170 m!1978813))

(declare-fun m!1978815 () Bool)

(assert (=> b!1639170 m!1978815))

(declare-fun m!1978817 () Bool)

(assert (=> b!1639170 m!1978817))

(declare-fun m!1978819 () Bool)

(assert (=> b!1639170 m!1978819))

(declare-fun m!1978821 () Bool)

(assert (=> b!1639170 m!1978821))

(assert (=> b!1639170 m!1978717))

(assert (=> b!1639170 m!1978711))

(declare-fun m!1978823 () Bool)

(assert (=> b!1639170 m!1978823))

(declare-fun m!1978825 () Bool)

(assert (=> b!1639163 m!1978825))

(declare-fun m!1978827 () Bool)

(assert (=> b!1639163 m!1978827))

(assert (=> b!1638441 d!493470))

(declare-fun b!1639184 () Bool)

(declare-fun e!1051183 () Bool)

(declare-fun inv!15 (TokenValue!3268) Bool)

(assert (=> b!1639184 (= e!1051183 (inv!15 (value!100247 (h!23436 tokens!457))))))

(declare-fun b!1639185 () Bool)

(declare-fun e!1051184 () Bool)

(declare-fun e!1051182 () Bool)

(assert (=> b!1639185 (= e!1051184 e!1051182)))

(declare-fun c!266659 () Bool)

(assert (=> b!1639185 (= c!266659 (is-IntegerValue!9805 (value!100247 (h!23436 tokens!457))))))

(declare-fun b!1639187 () Bool)

(declare-fun inv!17 (TokenValue!3268) Bool)

(assert (=> b!1639187 (= e!1051182 (inv!17 (value!100247 (h!23436 tokens!457))))))

(declare-fun b!1639188 () Bool)

(declare-fun res!734466 () Bool)

(assert (=> b!1639188 (=> res!734466 e!1051183)))

(assert (=> b!1639188 (= res!734466 (not (is-IntegerValue!9806 (value!100247 (h!23436 tokens!457)))))))

(assert (=> b!1639188 (= e!1051182 e!1051183)))

(declare-fun d!493496 () Bool)

(declare-fun c!266658 () Bool)

(assert (=> d!493496 (= c!266658 (is-IntegerValue!9804 (value!100247 (h!23436 tokens!457))))))

(assert (=> d!493496 (= (inv!21 (value!100247 (h!23436 tokens!457))) e!1051184)))

(declare-fun b!1639186 () Bool)

(declare-fun inv!16 (TokenValue!3268) Bool)

(assert (=> b!1639186 (= e!1051184 (inv!16 (value!100247 (h!23436 tokens!457))))))

(assert (= (and d!493496 c!266658) b!1639186))

(assert (= (and d!493496 (not c!266658)) b!1639185))

(assert (= (and b!1639185 c!266659) b!1639187))

(assert (= (and b!1639185 (not c!266659)) b!1639188))

(assert (= (and b!1639188 (not res!734466)) b!1639184))

(declare-fun m!1978829 () Bool)

(assert (=> b!1639184 m!1978829))

(declare-fun m!1978831 () Bool)

(assert (=> b!1639187 m!1978831))

(declare-fun m!1978833 () Bool)

(assert (=> b!1639186 m!1978833))

(assert (=> b!1638442 d!493496))

(declare-fun b!1639189 () Bool)

(declare-fun res!734467 () Bool)

(declare-fun e!1051185 () Bool)

(assert (=> b!1639189 (=> (not res!734467) (not e!1051185))))

(declare-fun lt!601747 () Option!3398)

(assert (=> b!1639189 (= res!734467 (= (value!100247 (_1!10238 (get!5239 lt!601747))) (apply!4685 (transformation!3178 (rule!5024 (_1!10238 (get!5239 lt!601747)))) (seqFromList!2105 (originalCharacters!3992 (_1!10238 (get!5239 lt!601747)))))))))

(declare-fun d!493498 () Bool)

(declare-fun e!1051186 () Bool)

(assert (=> d!493498 e!1051186))

(declare-fun res!734469 () Bool)

(assert (=> d!493498 (=> res!734469 e!1051186)))

(assert (=> d!493498 (= res!734469 (isEmpty!11076 lt!601747))))

(declare-fun e!1051187 () Option!3398)

(assert (=> d!493498 (= lt!601747 e!1051187)))

(declare-fun c!266660 () Bool)

(assert (=> d!493498 (= c!266660 (and (is-Cons!18036 rules!1846) (is-Nil!18036 (t!149857 rules!1846))))))

(declare-fun lt!601746 () Unit!29579)

(declare-fun lt!601743 () Unit!29579)

(assert (=> d!493498 (= lt!601746 lt!601743)))

(assert (=> d!493498 (isPrefix!1438 (originalCharacters!3992 (h!23436 tokens!457)) (originalCharacters!3992 (h!23436 tokens!457)))))

(assert (=> d!493498 (= lt!601743 (lemmaIsPrefixRefl!977 (originalCharacters!3992 (h!23436 tokens!457)) (originalCharacters!3992 (h!23436 tokens!457))))))

(assert (=> d!493498 (rulesValidInductive!997 thiss!17113 rules!1846)))

(assert (=> d!493498 (= (maxPrefix!1371 thiss!17113 rules!1846 (originalCharacters!3992 (h!23436 tokens!457))) lt!601747)))

(declare-fun b!1639190 () Bool)

(declare-fun lt!601745 () Option!3398)

(declare-fun lt!601744 () Option!3398)

(assert (=> b!1639190 (= e!1051187 (ite (and (is-None!3397 lt!601745) (is-None!3397 lt!601744)) None!3397 (ite (is-None!3397 lt!601744) lt!601745 (ite (is-None!3397 lt!601745) lt!601744 (ite (>= (size!14369 (_1!10238 (v!24492 lt!601745))) (size!14369 (_1!10238 (v!24492 lt!601744)))) lt!601745 lt!601744)))))))

(declare-fun call!105725 () Option!3398)

(assert (=> b!1639190 (= lt!601745 call!105725)))

(assert (=> b!1639190 (= lt!601744 (maxPrefix!1371 thiss!17113 (t!149857 rules!1846) (originalCharacters!3992 (h!23436 tokens!457))))))

(declare-fun b!1639191 () Bool)

(declare-fun res!734468 () Bool)

(assert (=> b!1639191 (=> (not res!734468) (not e!1051185))))

(assert (=> b!1639191 (= res!734468 (= (++!4837 (list!7114 (charsOf!1827 (_1!10238 (get!5239 lt!601747)))) (_2!10238 (get!5239 lt!601747))) (originalCharacters!3992 (h!23436 tokens!457))))))

(declare-fun b!1639192 () Bool)

(declare-fun res!734471 () Bool)

(assert (=> b!1639192 (=> (not res!734471) (not e!1051185))))

(assert (=> b!1639192 (= res!734471 (= (list!7114 (charsOf!1827 (_1!10238 (get!5239 lt!601747)))) (originalCharacters!3992 (_1!10238 (get!5239 lt!601747)))))))

(declare-fun b!1639193 () Bool)

(assert (=> b!1639193 (= e!1051187 call!105725)))

(declare-fun b!1639194 () Bool)

(declare-fun res!734470 () Bool)

(assert (=> b!1639194 (=> (not res!734470) (not e!1051185))))

(assert (=> b!1639194 (= res!734470 (< (size!14373 (_2!10238 (get!5239 lt!601747))) (size!14373 (originalCharacters!3992 (h!23436 tokens!457)))))))

(declare-fun b!1639195 () Bool)

(assert (=> b!1639195 (= e!1051185 (contains!3143 rules!1846 (rule!5024 (_1!10238 (get!5239 lt!601747)))))))

(declare-fun bm!105720 () Bool)

(assert (=> bm!105720 (= call!105725 (maxPrefixOneRule!792 thiss!17113 (h!23437 rules!1846) (originalCharacters!3992 (h!23436 tokens!457))))))

(declare-fun b!1639196 () Bool)

(assert (=> b!1639196 (= e!1051186 e!1051185)))

(declare-fun res!734472 () Bool)

(assert (=> b!1639196 (=> (not res!734472) (not e!1051185))))

(assert (=> b!1639196 (= res!734472 (isDefined!2764 lt!601747))))

(declare-fun b!1639197 () Bool)

(declare-fun res!734473 () Bool)

(assert (=> b!1639197 (=> (not res!734473) (not e!1051185))))

(assert (=> b!1639197 (= res!734473 (matchR!2005 (regex!3178 (rule!5024 (_1!10238 (get!5239 lt!601747)))) (list!7114 (charsOf!1827 (_1!10238 (get!5239 lt!601747))))))))

(assert (= (and d!493498 c!266660) b!1639193))

(assert (= (and d!493498 (not c!266660)) b!1639190))

(assert (= (or b!1639193 b!1639190) bm!105720))

(assert (= (and d!493498 (not res!734469)) b!1639196))

(assert (= (and b!1639196 res!734472) b!1639192))

(assert (= (and b!1639192 res!734471) b!1639194))

(assert (= (and b!1639194 res!734470) b!1639191))

(assert (= (and b!1639191 res!734468) b!1639189))

(assert (= (and b!1639189 res!734467) b!1639197))

(assert (= (and b!1639197 res!734473) b!1639195))

(declare-fun m!1978835 () Bool)

(assert (=> b!1639194 m!1978835))

(declare-fun m!1978837 () Bool)

(assert (=> b!1639194 m!1978837))

(assert (=> b!1639194 m!1977525))

(assert (=> b!1639192 m!1978835))

(declare-fun m!1978839 () Bool)

(assert (=> b!1639192 m!1978839))

(assert (=> b!1639192 m!1978839))

(declare-fun m!1978841 () Bool)

(assert (=> b!1639192 m!1978841))

(declare-fun m!1978843 () Bool)

(assert (=> d!493498 m!1978843))

(declare-fun m!1978845 () Bool)

(assert (=> d!493498 m!1978845))

(declare-fun m!1978847 () Bool)

(assert (=> d!493498 m!1978847))

(assert (=> d!493498 m!1977545))

(assert (=> b!1639189 m!1978835))

(declare-fun m!1978849 () Bool)

(assert (=> b!1639189 m!1978849))

(assert (=> b!1639189 m!1978849))

(declare-fun m!1978851 () Bool)

(assert (=> b!1639189 m!1978851))

(declare-fun m!1978853 () Bool)

(assert (=> b!1639190 m!1978853))

(assert (=> b!1639197 m!1978835))

(assert (=> b!1639197 m!1978839))

(assert (=> b!1639197 m!1978839))

(assert (=> b!1639197 m!1978841))

(assert (=> b!1639197 m!1978841))

(declare-fun m!1978855 () Bool)

(assert (=> b!1639197 m!1978855))

(declare-fun m!1978857 () Bool)

(assert (=> b!1639196 m!1978857))

(assert (=> b!1639195 m!1978835))

(declare-fun m!1978859 () Bool)

(assert (=> b!1639195 m!1978859))

(declare-fun m!1978861 () Bool)

(assert (=> bm!105720 m!1978861))

(assert (=> b!1639191 m!1978835))

(assert (=> b!1639191 m!1978839))

(assert (=> b!1639191 m!1978839))

(assert (=> b!1639191 m!1978841))

(assert (=> b!1639191 m!1978841))

(declare-fun m!1978863 () Bool)

(assert (=> b!1639191 m!1978863))

(assert (=> b!1638440 d!493498))

(declare-fun d!493500 () Bool)

(declare-fun c!266661 () Bool)

(assert (=> d!493500 (= c!266661 (isEmpty!11067 (++!4837 (originalCharacters!3992 (h!23436 tokens!457)) lt!600768)))))

(declare-fun e!1051188 () Bool)

(assert (=> d!493500 (= (prefixMatch!441 lt!600781 (++!4837 (originalCharacters!3992 (h!23436 tokens!457)) lt!600768)) e!1051188)))

(declare-fun b!1639198 () Bool)

(assert (=> b!1639198 (= e!1051188 (not (lostCause!455 lt!600781)))))

(declare-fun b!1639199 () Bool)

(assert (=> b!1639199 (= e!1051188 (prefixMatch!441 (derivativeStep!1099 lt!600781 (head!3548 (++!4837 (originalCharacters!3992 (h!23436 tokens!457)) lt!600768))) (tail!2400 (++!4837 (originalCharacters!3992 (h!23436 tokens!457)) lt!600768))))))

(assert (= (and d!493500 c!266661) b!1639198))

(assert (= (and d!493500 (not c!266661)) b!1639199))

(assert (=> d!493500 m!1977331))

(declare-fun m!1978865 () Bool)

(assert (=> d!493500 m!1978865))

(assert (=> b!1639198 m!1978377))

(assert (=> b!1639199 m!1977331))

(declare-fun m!1978867 () Bool)

(assert (=> b!1639199 m!1978867))

(assert (=> b!1639199 m!1978867))

(declare-fun m!1978869 () Bool)

(assert (=> b!1639199 m!1978869))

(assert (=> b!1639199 m!1977331))

(declare-fun m!1978871 () Bool)

(assert (=> b!1639199 m!1978871))

(assert (=> b!1639199 m!1978869))

(assert (=> b!1639199 m!1978871))

(declare-fun m!1978873 () Bool)

(assert (=> b!1639199 m!1978873))

(assert (=> b!1638440 d!493500))

(declare-fun d!493502 () Bool)

(assert (=> d!493502 (= (isDefined!2764 (maxPrefix!1371 thiss!17113 rules!1846 (originalCharacters!3992 (h!23436 tokens!457)))) (not (isEmpty!11076 (maxPrefix!1371 thiss!17113 rules!1846 (originalCharacters!3992 (h!23436 tokens!457))))))))

(declare-fun bs!395564 () Bool)

(assert (= bs!395564 d!493502))

(assert (=> bs!395564 m!1977327))

(declare-fun m!1978875 () Bool)

(assert (=> bs!395564 m!1978875))

(assert (=> b!1638440 d!493502))

(declare-fun b!1639202 () Bool)

(declare-fun res!734474 () Bool)

(declare-fun e!1051189 () Bool)

(assert (=> b!1639202 (=> (not res!734474) (not e!1051189))))

(declare-fun lt!601748 () List!18104)

(assert (=> b!1639202 (= res!734474 (= (size!14373 lt!601748) (+ (size!14373 (originalCharacters!3992 (h!23436 tokens!457))) (size!14373 lt!600768))))))

(declare-fun b!1639201 () Bool)

(declare-fun e!1051190 () List!18104)

(assert (=> b!1639201 (= e!1051190 (Cons!18034 (h!23435 (originalCharacters!3992 (h!23436 tokens!457))) (++!4837 (t!149855 (originalCharacters!3992 (h!23436 tokens!457))) lt!600768)))))

(declare-fun d!493504 () Bool)

(assert (=> d!493504 e!1051189))

(declare-fun res!734475 () Bool)

(assert (=> d!493504 (=> (not res!734475) (not e!1051189))))

(assert (=> d!493504 (= res!734475 (= (content!2497 lt!601748) (set.union (content!2497 (originalCharacters!3992 (h!23436 tokens!457))) (content!2497 lt!600768))))))

(assert (=> d!493504 (= lt!601748 e!1051190)))

(declare-fun c!266662 () Bool)

(assert (=> d!493504 (= c!266662 (is-Nil!18034 (originalCharacters!3992 (h!23436 tokens!457))))))

(assert (=> d!493504 (= (++!4837 (originalCharacters!3992 (h!23436 tokens!457)) lt!600768) lt!601748)))

(declare-fun b!1639200 () Bool)

(assert (=> b!1639200 (= e!1051190 lt!600768)))

(declare-fun b!1639203 () Bool)

(assert (=> b!1639203 (= e!1051189 (or (not (= lt!600768 Nil!18034)) (= lt!601748 (originalCharacters!3992 (h!23436 tokens!457)))))))

(assert (= (and d!493504 c!266662) b!1639200))

(assert (= (and d!493504 (not c!266662)) b!1639201))

(assert (= (and d!493504 res!734475) b!1639202))

(assert (= (and b!1639202 res!734474) b!1639203))

(declare-fun m!1978877 () Bool)

(assert (=> b!1639202 m!1978877))

(assert (=> b!1639202 m!1977525))

(declare-fun m!1978879 () Bool)

(assert (=> b!1639202 m!1978879))

(declare-fun m!1978881 () Bool)

(assert (=> b!1639201 m!1978881))

(declare-fun m!1978883 () Bool)

(assert (=> d!493504 m!1978883))

(declare-fun m!1978885 () Bool)

(assert (=> d!493504 m!1978885))

(declare-fun m!1978887 () Bool)

(assert (=> d!493504 m!1978887))

(assert (=> b!1638440 d!493504))

(declare-fun d!493506 () Bool)

(assert (=> d!493506 (= (get!5239 lt!600771) (v!24492 lt!600771))))

(assert (=> b!1638440 d!493506))

(declare-fun b!1639204 () Bool)

(declare-fun res!734476 () Bool)

(declare-fun e!1051191 () Bool)

(assert (=> b!1639204 (=> (not res!734476) (not e!1051191))))

(declare-fun lt!601753 () Option!3398)

(assert (=> b!1639204 (= res!734476 (= (value!100247 (_1!10238 (get!5239 lt!601753))) (apply!4685 (transformation!3178 (rule!5024 (_1!10238 (get!5239 lt!601753)))) (seqFromList!2105 (originalCharacters!3992 (_1!10238 (get!5239 lt!601753)))))))))

(declare-fun d!493508 () Bool)

(declare-fun e!1051192 () Bool)

(assert (=> d!493508 e!1051192))

(declare-fun res!734478 () Bool)

(assert (=> d!493508 (=> res!734478 e!1051192)))

(assert (=> d!493508 (= res!734478 (isEmpty!11076 lt!601753))))

(declare-fun e!1051193 () Option!3398)

(assert (=> d!493508 (= lt!601753 e!1051193)))

(declare-fun c!266663 () Bool)

(assert (=> d!493508 (= c!266663 (and (is-Cons!18036 rules!1846) (is-Nil!18036 (t!149857 rules!1846))))))

(declare-fun lt!601752 () Unit!29579)

(declare-fun lt!601749 () Unit!29579)

(assert (=> d!493508 (= lt!601752 lt!601749)))

(assert (=> d!493508 (isPrefix!1438 lt!600769 lt!600769)))

(assert (=> d!493508 (= lt!601749 (lemmaIsPrefixRefl!977 lt!600769 lt!600769))))

(assert (=> d!493508 (rulesValidInductive!997 thiss!17113 rules!1846)))

(assert (=> d!493508 (= (maxPrefix!1371 thiss!17113 rules!1846 lt!600769) lt!601753)))

(declare-fun b!1639205 () Bool)

(declare-fun lt!601751 () Option!3398)

(declare-fun lt!601750 () Option!3398)

(assert (=> b!1639205 (= e!1051193 (ite (and (is-None!3397 lt!601751) (is-None!3397 lt!601750)) None!3397 (ite (is-None!3397 lt!601750) lt!601751 (ite (is-None!3397 lt!601751) lt!601750 (ite (>= (size!14369 (_1!10238 (v!24492 lt!601751))) (size!14369 (_1!10238 (v!24492 lt!601750)))) lt!601751 lt!601750)))))))

(declare-fun call!105726 () Option!3398)

(assert (=> b!1639205 (= lt!601751 call!105726)))

(assert (=> b!1639205 (= lt!601750 (maxPrefix!1371 thiss!17113 (t!149857 rules!1846) lt!600769))))

(declare-fun b!1639206 () Bool)

(declare-fun res!734477 () Bool)

(assert (=> b!1639206 (=> (not res!734477) (not e!1051191))))

(assert (=> b!1639206 (= res!734477 (= (++!4837 (list!7114 (charsOf!1827 (_1!10238 (get!5239 lt!601753)))) (_2!10238 (get!5239 lt!601753))) lt!600769))))

(declare-fun b!1639207 () Bool)

(declare-fun res!734480 () Bool)

(assert (=> b!1639207 (=> (not res!734480) (not e!1051191))))

(assert (=> b!1639207 (= res!734480 (= (list!7114 (charsOf!1827 (_1!10238 (get!5239 lt!601753)))) (originalCharacters!3992 (_1!10238 (get!5239 lt!601753)))))))

(declare-fun b!1639208 () Bool)

(assert (=> b!1639208 (= e!1051193 call!105726)))

(declare-fun b!1639209 () Bool)

(declare-fun res!734479 () Bool)

(assert (=> b!1639209 (=> (not res!734479) (not e!1051191))))

(assert (=> b!1639209 (= res!734479 (< (size!14373 (_2!10238 (get!5239 lt!601753))) (size!14373 lt!600769)))))

(declare-fun b!1639210 () Bool)

(assert (=> b!1639210 (= e!1051191 (contains!3143 rules!1846 (rule!5024 (_1!10238 (get!5239 lt!601753)))))))

(declare-fun bm!105721 () Bool)

(assert (=> bm!105721 (= call!105726 (maxPrefixOneRule!792 thiss!17113 (h!23437 rules!1846) lt!600769))))

(declare-fun b!1639211 () Bool)

(assert (=> b!1639211 (= e!1051192 e!1051191)))

(declare-fun res!734481 () Bool)

(assert (=> b!1639211 (=> (not res!734481) (not e!1051191))))

(assert (=> b!1639211 (= res!734481 (isDefined!2764 lt!601753))))

(declare-fun b!1639212 () Bool)

(declare-fun res!734482 () Bool)

(assert (=> b!1639212 (=> (not res!734482) (not e!1051191))))

(assert (=> b!1639212 (= res!734482 (matchR!2005 (regex!3178 (rule!5024 (_1!10238 (get!5239 lt!601753)))) (list!7114 (charsOf!1827 (_1!10238 (get!5239 lt!601753))))))))

(assert (= (and d!493508 c!266663) b!1639208))

(assert (= (and d!493508 (not c!266663)) b!1639205))

(assert (= (or b!1639208 b!1639205) bm!105721))

(assert (= (and d!493508 (not res!734478)) b!1639211))

(assert (= (and b!1639211 res!734481) b!1639207))

(assert (= (and b!1639207 res!734480) b!1639209))

(assert (= (and b!1639209 res!734479) b!1639206))

(assert (= (and b!1639206 res!734477) b!1639204))

(assert (= (and b!1639204 res!734476) b!1639212))

(assert (= (and b!1639212 res!734482) b!1639210))

(declare-fun m!1978889 () Bool)

(assert (=> b!1639209 m!1978889))

(declare-fun m!1978891 () Bool)

(assert (=> b!1639209 m!1978891))

(assert (=> b!1639209 m!1978263))

(assert (=> b!1639207 m!1978889))

(declare-fun m!1978893 () Bool)

(assert (=> b!1639207 m!1978893))

(assert (=> b!1639207 m!1978893))

(declare-fun m!1978895 () Bool)

(assert (=> b!1639207 m!1978895))

(declare-fun m!1978897 () Bool)

(assert (=> d!493508 m!1978897))

(declare-fun m!1978899 () Bool)

(assert (=> d!493508 m!1978899))

(declare-fun m!1978901 () Bool)

(assert (=> d!493508 m!1978901))

(assert (=> d!493508 m!1977545))

(assert (=> b!1639204 m!1978889))

(declare-fun m!1978903 () Bool)

(assert (=> b!1639204 m!1978903))

(assert (=> b!1639204 m!1978903))

(declare-fun m!1978905 () Bool)

(assert (=> b!1639204 m!1978905))

(declare-fun m!1978907 () Bool)

(assert (=> b!1639205 m!1978907))

(assert (=> b!1639212 m!1978889))

(assert (=> b!1639212 m!1978893))

(assert (=> b!1639212 m!1978893))

(assert (=> b!1639212 m!1978895))

(assert (=> b!1639212 m!1978895))

(declare-fun m!1978909 () Bool)

(assert (=> b!1639212 m!1978909))

(declare-fun m!1978911 () Bool)

(assert (=> b!1639211 m!1978911))

(assert (=> b!1639210 m!1978889))

(declare-fun m!1978913 () Bool)

(assert (=> b!1639210 m!1978913))

(declare-fun m!1978915 () Bool)

(assert (=> bm!105721 m!1978915))

(assert (=> b!1639206 m!1978889))

(assert (=> b!1639206 m!1978893))

(assert (=> b!1639206 m!1978893))

(assert (=> b!1639206 m!1978895))

(assert (=> b!1639206 m!1978895))

(declare-fun m!1978917 () Bool)

(assert (=> b!1639206 m!1978917))

(assert (=> b!1638440 d!493508))

(declare-fun d!493510 () Bool)

(assert (=> d!493510 (= (isDefined!2764 lt!600771) (not (isEmpty!11076 lt!600771)))))

(declare-fun bs!395565 () Bool)

(assert (= bs!395565 d!493510))

(declare-fun m!1978919 () Bool)

(assert (=> bs!395565 m!1978919))

(assert (=> b!1638440 d!493510))

(declare-fun d!493512 () Bool)

(declare-fun c!266664 () Bool)

(assert (=> d!493512 (= c!266664 (isEmpty!11067 (++!4837 lt!600769 lt!600768)))))

(declare-fun e!1051194 () Bool)

(assert (=> d!493512 (= (prefixMatch!441 lt!600781 (++!4837 lt!600769 lt!600768)) e!1051194)))

(declare-fun b!1639213 () Bool)

(assert (=> b!1639213 (= e!1051194 (not (lostCause!455 lt!600781)))))

(declare-fun b!1639214 () Bool)

(assert (=> b!1639214 (= e!1051194 (prefixMatch!441 (derivativeStep!1099 lt!600781 (head!3548 (++!4837 lt!600769 lt!600768))) (tail!2400 (++!4837 lt!600769 lt!600768))))))

(assert (= (and d!493512 c!266664) b!1639213))

(assert (= (and d!493512 (not c!266664)) b!1639214))

(assert (=> d!493512 m!1977317))

(declare-fun m!1978921 () Bool)

(assert (=> d!493512 m!1978921))

(assert (=> b!1639213 m!1978377))

(assert (=> b!1639214 m!1977317))

(declare-fun m!1978923 () Bool)

(assert (=> b!1639214 m!1978923))

(assert (=> b!1639214 m!1978923))

(declare-fun m!1978925 () Bool)

(assert (=> b!1639214 m!1978925))

(assert (=> b!1639214 m!1977317))

(declare-fun m!1978927 () Bool)

(assert (=> b!1639214 m!1978927))

(assert (=> b!1639214 m!1978925))

(assert (=> b!1639214 m!1978927))

(declare-fun m!1978929 () Bool)

(assert (=> b!1639214 m!1978929))

(assert (=> b!1638419 d!493512))

(declare-fun b!1639217 () Bool)

(declare-fun res!734483 () Bool)

(declare-fun e!1051195 () Bool)

(assert (=> b!1639217 (=> (not res!734483) (not e!1051195))))

(declare-fun lt!601754 () List!18104)

(assert (=> b!1639217 (= res!734483 (= (size!14373 lt!601754) (+ (size!14373 lt!600769) (size!14373 lt!600768))))))

(declare-fun b!1639216 () Bool)

(declare-fun e!1051196 () List!18104)

(assert (=> b!1639216 (= e!1051196 (Cons!18034 (h!23435 lt!600769) (++!4837 (t!149855 lt!600769) lt!600768)))))

(declare-fun d!493514 () Bool)

(assert (=> d!493514 e!1051195))

(declare-fun res!734484 () Bool)

(assert (=> d!493514 (=> (not res!734484) (not e!1051195))))

(assert (=> d!493514 (= res!734484 (= (content!2497 lt!601754) (set.union (content!2497 lt!600769) (content!2497 lt!600768))))))

(assert (=> d!493514 (= lt!601754 e!1051196)))

(declare-fun c!266665 () Bool)

(assert (=> d!493514 (= c!266665 (is-Nil!18034 lt!600769))))

(assert (=> d!493514 (= (++!4837 lt!600769 lt!600768) lt!601754)))

(declare-fun b!1639215 () Bool)

(assert (=> b!1639215 (= e!1051196 lt!600768)))

(declare-fun b!1639218 () Bool)

(assert (=> b!1639218 (= e!1051195 (or (not (= lt!600768 Nil!18034)) (= lt!601754 lt!600769)))))

(assert (= (and d!493514 c!266665) b!1639215))

(assert (= (and d!493514 (not c!266665)) b!1639216))

(assert (= (and d!493514 res!734484) b!1639217))

(assert (= (and b!1639217 res!734483) b!1639218))

(declare-fun m!1978931 () Bool)

(assert (=> b!1639217 m!1978931))

(assert (=> b!1639217 m!1978263))

(assert (=> b!1639217 m!1978879))

(declare-fun m!1978933 () Bool)

(assert (=> b!1639216 m!1978933))

(declare-fun m!1978935 () Bool)

(assert (=> d!493514 m!1978935))

(assert (=> d!493514 m!1978395))

(assert (=> d!493514 m!1978887))

(assert (=> b!1638419 d!493514))

(declare-fun b!1639232 () Bool)

(declare-fun b_free!44335 () Bool)

(declare-fun b_next!45039 () Bool)

(assert (=> b!1639232 (= b_free!44335 (not b_next!45039))))

(declare-fun tp!474908 () Bool)

(declare-fun b_and!116149 () Bool)

(assert (=> b!1639232 (= tp!474908 b_and!116149)))

(declare-fun b_free!44337 () Bool)

(declare-fun b_next!45041 () Bool)

(assert (=> b!1639232 (= b_free!44337 (not b_next!45041))))

(declare-fun t!149889 () Bool)

(declare-fun tb!93863 () Bool)

(assert (=> (and b!1639232 (= (toChars!4468 (transformation!3178 (rule!5024 (h!23436 (t!149856 tokens!457))))) (toChars!4468 (transformation!3178 (rule!5024 (h!23436 tokens!457))))) t!149889) tb!93863))

(declare-fun result!113276 () Bool)

(assert (= result!113276 result!113254))

(assert (=> b!1638564 t!149889))

(declare-fun t!149891 () Bool)

(declare-fun tb!93865 () Bool)

(assert (=> (and b!1639232 (= (toChars!4468 (transformation!3178 (rule!5024 (h!23436 (t!149856 tokens!457))))) (toChars!4468 (transformation!3178 (rule!5024 (h!23436 (t!149856 tokens!457)))))) t!149891) tb!93865))

(declare-fun result!113278 () Bool)

(assert (= result!113278 result!113270))

(assert (=> d!493392 t!149891))

(assert (=> d!493448 t!149889))

(declare-fun b_and!116151 () Bool)

(declare-fun tp!474906 () Bool)

(assert (=> b!1639232 (= tp!474906 (and (=> t!149889 result!113276) (=> t!149891 result!113278) b_and!116151))))

(declare-fun e!1051209 () Bool)

(assert (=> b!1639232 (= e!1051209 (and tp!474908 tp!474906))))

(declare-fun e!1051212 () Bool)

(declare-fun tp!474907 () Bool)

(declare-fun b!1639229 () Bool)

(declare-fun e!1051214 () Bool)

(assert (=> b!1639229 (= e!1051214 (and (inv!23384 (h!23436 (t!149856 tokens!457))) e!1051212 tp!474907))))

(declare-fun e!1051213 () Bool)

(declare-fun tp!474905 () Bool)

(declare-fun b!1639230 () Bool)

(assert (=> b!1639230 (= e!1051212 (and (inv!21 (value!100247 (h!23436 (t!149856 tokens!457)))) e!1051213 tp!474905))))

(assert (=> b!1638433 (= tp!474851 e!1051214)))

(declare-fun tp!474909 () Bool)

(declare-fun b!1639231 () Bool)

(assert (=> b!1639231 (= e!1051213 (and tp!474909 (inv!23380 (tag!3458 (rule!5024 (h!23436 (t!149856 tokens!457))))) (inv!23383 (transformation!3178 (rule!5024 (h!23436 (t!149856 tokens!457))))) e!1051209))))

(assert (= b!1639231 b!1639232))

(assert (= b!1639230 b!1639231))

(assert (= b!1639229 b!1639230))

(assert (= (and b!1638433 (is-Cons!18035 (t!149856 tokens!457))) b!1639229))

(declare-fun m!1978937 () Bool)

(assert (=> b!1639229 m!1978937))

(declare-fun m!1978939 () Bool)

(assert (=> b!1639230 m!1978939))

(declare-fun m!1978941 () Bool)

(assert (=> b!1639231 m!1978941))

(declare-fun m!1978943 () Bool)

(assert (=> b!1639231 m!1978943))

(declare-fun b!1639243 () Bool)

(declare-fun b_free!44339 () Bool)

(declare-fun b_next!45043 () Bool)

(assert (=> b!1639243 (= b_free!44339 (not b_next!45043))))

(declare-fun tp!474920 () Bool)

(declare-fun b_and!116153 () Bool)

(assert (=> b!1639243 (= tp!474920 b_and!116153)))

(declare-fun b_free!44341 () Bool)

(declare-fun b_next!45045 () Bool)

(assert (=> b!1639243 (= b_free!44341 (not b_next!45045))))

(declare-fun tb!93867 () Bool)

(declare-fun t!149893 () Bool)

(assert (=> (and b!1639243 (= (toChars!4468 (transformation!3178 (h!23437 (t!149857 rules!1846)))) (toChars!4468 (transformation!3178 (rule!5024 (h!23436 tokens!457))))) t!149893) tb!93867))

(declare-fun result!113282 () Bool)

(assert (= result!113282 result!113254))

(assert (=> b!1638564 t!149893))

(declare-fun t!149895 () Bool)

(declare-fun tb!93869 () Bool)

(assert (=> (and b!1639243 (= (toChars!4468 (transformation!3178 (h!23437 (t!149857 rules!1846)))) (toChars!4468 (transformation!3178 (rule!5024 (h!23436 (t!149856 tokens!457)))))) t!149895) tb!93869))

(declare-fun result!113284 () Bool)

(assert (= result!113284 result!113270))

(assert (=> d!493392 t!149895))

(assert (=> d!493448 t!149893))

(declare-fun tp!474919 () Bool)

(declare-fun b_and!116155 () Bool)

(assert (=> b!1639243 (= tp!474919 (and (=> t!149893 result!113282) (=> t!149895 result!113284) b_and!116155))))

(declare-fun e!1051225 () Bool)

(assert (=> b!1639243 (= e!1051225 (and tp!474920 tp!474919))))

(declare-fun e!1051223 () Bool)

(declare-fun b!1639242 () Bool)

(declare-fun tp!474918 () Bool)

(assert (=> b!1639242 (= e!1051223 (and tp!474918 (inv!23380 (tag!3458 (h!23437 (t!149857 rules!1846)))) (inv!23383 (transformation!3178 (h!23437 (t!149857 rules!1846)))) e!1051225))))

(declare-fun b!1639241 () Bool)

(declare-fun e!1051224 () Bool)

(declare-fun tp!474921 () Bool)

(assert (=> b!1639241 (= e!1051224 (and e!1051223 tp!474921))))

(assert (=> b!1638418 (= tp!474857 e!1051224)))

(assert (= b!1639242 b!1639243))

(assert (= b!1639241 b!1639242))

(assert (= (and b!1638418 (is-Cons!18036 (t!149857 rules!1846))) b!1639241))

(declare-fun m!1978945 () Bool)

(assert (=> b!1639242 m!1978945))

(declare-fun m!1978947 () Bool)

(assert (=> b!1639242 m!1978947))

(declare-fun b!1639254 () Bool)

(declare-fun e!1051229 () Bool)

(declare-fun tp_is_empty!7315 () Bool)

(assert (=> b!1639254 (= e!1051229 tp_is_empty!7315)))

(assert (=> b!1638436 (= tp!474855 e!1051229)))

(declare-fun b!1639255 () Bool)

(declare-fun tp!474934 () Bool)

(declare-fun tp!474935 () Bool)

(assert (=> b!1639255 (= e!1051229 (and tp!474934 tp!474935))))

(declare-fun b!1639257 () Bool)

(declare-fun tp!474936 () Bool)

(declare-fun tp!474932 () Bool)

(assert (=> b!1639257 (= e!1051229 (and tp!474936 tp!474932))))

(declare-fun b!1639256 () Bool)

(declare-fun tp!474933 () Bool)

(assert (=> b!1639256 (= e!1051229 tp!474933)))

(assert (= (and b!1638436 (is-ElementMatch!4506 (regex!3178 (rule!5024 (h!23436 tokens!457))))) b!1639254))

(assert (= (and b!1638436 (is-Concat!7775 (regex!3178 (rule!5024 (h!23436 tokens!457))))) b!1639255))

(assert (= (and b!1638436 (is-Star!4506 (regex!3178 (rule!5024 (h!23436 tokens!457))))) b!1639256))

(assert (= (and b!1638436 (is-Union!4506 (regex!3178 (rule!5024 (h!23436 tokens!457))))) b!1639257))

(declare-fun b!1639258 () Bool)

(declare-fun e!1051230 () Bool)

(assert (=> b!1639258 (= e!1051230 tp_is_empty!7315)))

(assert (=> b!1638426 (= tp!474859 e!1051230)))

(declare-fun b!1639259 () Bool)

(declare-fun tp!474939 () Bool)

(declare-fun tp!474940 () Bool)

(assert (=> b!1639259 (= e!1051230 (and tp!474939 tp!474940))))

(declare-fun b!1639261 () Bool)

(declare-fun tp!474941 () Bool)

(declare-fun tp!474937 () Bool)

(assert (=> b!1639261 (= e!1051230 (and tp!474941 tp!474937))))

(declare-fun b!1639260 () Bool)

(declare-fun tp!474938 () Bool)

(assert (=> b!1639260 (= e!1051230 tp!474938)))

(assert (= (and b!1638426 (is-ElementMatch!4506 (regex!3178 (h!23437 rules!1846)))) b!1639258))

(assert (= (and b!1638426 (is-Concat!7775 (regex!3178 (h!23437 rules!1846)))) b!1639259))

(assert (= (and b!1638426 (is-Star!4506 (regex!3178 (h!23437 rules!1846)))) b!1639260))

(assert (= (and b!1638426 (is-Union!4506 (regex!3178 (h!23437 rules!1846)))) b!1639261))

(declare-fun b!1639266 () Bool)

(declare-fun e!1051233 () Bool)

(declare-fun tp!474944 () Bool)

(assert (=> b!1639266 (= e!1051233 (and tp_is_empty!7315 tp!474944))))

(assert (=> b!1638442 (= tp!474853 e!1051233)))

(assert (= (and b!1638442 (is-Cons!18034 (originalCharacters!3992 (h!23436 tokens!457)))) b!1639266))

(declare-fun b_lambda!51497 () Bool)

(assert (= b_lambda!51495 (or (and b!1638432 b_free!44321 (= (toChars!4468 (transformation!3178 (h!23437 rules!1846))) (toChars!4468 (transformation!3178 (rule!5024 (h!23436 tokens!457)))))) (and b!1638431 b_free!44325) (and b!1639232 b_free!44337 (= (toChars!4468 (transformation!3178 (rule!5024 (h!23436 (t!149856 tokens!457))))) (toChars!4468 (transformation!3178 (rule!5024 (h!23436 tokens!457)))))) (and b!1639243 b_free!44341 (= (toChars!4468 (transformation!3178 (h!23437 (t!149857 rules!1846)))) (toChars!4468 (transformation!3178 (rule!5024 (h!23436 tokens!457)))))) b_lambda!51497)))

(declare-fun b_lambda!51499 () Bool)

(assert (= b_lambda!51493 (or (and b!1638432 b_free!44321 (= (toChars!4468 (transformation!3178 (h!23437 rules!1846))) (toChars!4468 (transformation!3178 (rule!5024 (h!23436 (t!149856 tokens!457))))))) (and b!1638431 b_free!44325 (= (toChars!4468 (transformation!3178 (rule!5024 (h!23436 tokens!457)))) (toChars!4468 (transformation!3178 (rule!5024 (h!23436 (t!149856 tokens!457))))))) (and b!1639232 b_free!44337) (and b!1639243 b_free!44341 (= (toChars!4468 (transformation!3178 (h!23437 (t!149857 rules!1846)))) (toChars!4468 (transformation!3178 (rule!5024 (h!23436 (t!149856 tokens!457))))))) b_lambda!51499)))

(declare-fun b_lambda!51501 () Bool)

(assert (= b_lambda!51485 (or (and b!1638432 b_free!44321 (= (toChars!4468 (transformation!3178 (h!23437 rules!1846))) (toChars!4468 (transformation!3178 (rule!5024 (h!23436 tokens!457)))))) (and b!1638431 b_free!44325) (and b!1639232 b_free!44337 (= (toChars!4468 (transformation!3178 (rule!5024 (h!23436 (t!149856 tokens!457))))) (toChars!4468 (transformation!3178 (rule!5024 (h!23436 tokens!457)))))) (and b!1639243 b_free!44341 (= (toChars!4468 (transformation!3178 (h!23437 (t!149857 rules!1846)))) (toChars!4468 (transformation!3178 (rule!5024 (h!23436 tokens!457)))))) b_lambda!51501)))

(push 1)

(assert (not b!1639184))

(assert (not d!493408))

(assert b_and!116151)

(assert (not b_next!45039))

(assert (not b!1639195))

(assert (not d!493220))

(assert (not b!1638555))

(assert (not d!493378))

(assert (not b!1639162))

(assert (not d!493412))

(assert (not d!493448))

(assert (not b!1639201))

(assert (not b!1639216))

(assert (not d!493384))

(assert (not d!493390))

(assert (not d!493454))

(assert (not b!1639205))

(assert (not b!1638843))

(assert (not b!1639256))

(assert (not b!1639266))

(assert (not d!493352))

(assert (not d!493264))

(assert (not b!1638565))

(assert (not b!1639209))

(assert (not tb!93859))

(assert (not b!1639211))

(assert (not b!1638800))

(assert (not d!493322))

(assert (not d!493426))

(assert (not b!1639013))

(assert (not b!1639164))

(assert (not b!1639008))

(assert (not b!1638805))

(assert (not b!1638596))

(assert (not d!493502))

(assert (not d!493500))

(assert (not b!1638952))

(assert (not b!1638918))

(assert (not d!493400))

(assert (not b!1639198))

(assert (not b_next!45041))

(assert (not b_next!45025))

(assert (not b!1639027))

(assert (not b!1639031))

(assert (not b!1638936))

(assert (not d!493374))

(assert (not b!1639044))

(assert (not b!1639217))

(assert (not d!493238))

(assert (not b!1639197))

(assert (not b!1638946))

(assert (not d!493240))

(assert (not b!1639037))

(assert (not d!493326))

(assert (not b!1639261))

(assert (not b!1638705))

(assert b_and!116149)

(assert (not d!493230))

(assert (not bm!105713))

(assert (not b!1638591))

(assert (not b!1638801))

(assert (not bm!105694))

(assert (not b_lambda!51499))

(assert (not b!1639160))

(assert (not b!1639189))

(assert (not b!1639190))

(assert (not b!1639032))

(assert (not b!1638615))

(assert tp_is_empty!7315)

(assert (not bm!105721))

(assert (not b!1638557))

(assert (not b!1639202))

(assert (not b!1638616))

(assert (not d!493348))

(assert (not d!493444))

(assert (not b!1638595))

(assert (not d!493452))

(assert (not b_next!45043))

(assert (not b!1639192))

(assert (not b!1639204))

(assert (not b!1638902))

(assert (not b!1638839))

(assert (not b!1638923))

(assert (not b!1638920))

(assert (not d!493458))

(assert (not d!493510))

(assert (not b!1638917))

(assert (not b!1638980))

(assert (not b!1638947))

(assert (not b!1639207))

(assert (not b!1638846))

(assert (not b!1638593))

(assert (not b!1638806))

(assert (not b!1639231))

(assert b_and!116155)

(assert (not b!1638907))

(assert (not b!1638556))

(assert (not d!493392))

(assert (not d!493314))

(assert (not b!1638755))

(assert (not b!1638981))

(assert (not d!493366))

(assert (not b!1638921))

(assert (not b!1638948))

(assert (not b!1638997))

(assert (not d!493394))

(assert (not b!1639260))

(assert b_and!116113)

(assert (not d!493428))

(assert (not b!1639230))

(assert (not b!1638951))

(assert (not b!1638802))

(assert b_and!116109)

(assert (not b!1639035))

(assert (not b!1638979))

(assert (not bm!105720))

(assert (not d!493382))

(assert (not b!1638911))

(assert (not d!493442))

(assert (not d!493216))

(assert (not d!493266))

(assert (not b!1638558))

(assert (not b!1638982))

(assert (not d!493434))

(assert (not b!1638804))

(assert (not b!1639212))

(assert (not d!493364))

(assert (not b!1639170))

(assert (not b!1639206))

(assert (not b!1638807))

(assert (not b!1639009))

(assert (not d!493376))

(assert (not b!1638998))

(assert (not b!1638617))

(assert (not b!1638799))

(assert (not b!1638570))

(assert (not b!1638564))

(assert (not b!1638706))

(assert (not b!1639171))

(assert (not d!493416))

(assert (not d!493498))

(assert (not b!1639194))

(assert (not b!1639191))

(assert (not b!1639196))

(assert (not b_lambda!51497))

(assert (not d!493396))

(assert (not b!1639257))

(assert (not b!1638594))

(assert (not d!493514))

(assert (not d!493420))

(assert (not b!1638919))

(assert (not b!1638834))

(assert (not b!1639229))

(assert (not b!1639242))

(assert (not d!493410))

(assert (not tb!93847))

(assert (not b!1638597))

(assert (not b_next!45029))

(assert (not d!493388))

(assert (not b!1639028))

(assert (not b!1639163))

(assert (not b!1639259))

(assert (not bm!105714))

(assert (not b!1639036))

(assert (not d!493350))

(assert (not b!1639214))

(assert (not bm!105703))

(assert (not b_next!45027))

(assert (not b!1639165))

(assert (not d!493450))

(assert (not d!493512))

(assert (not d!493446))

(assert (not d!493418))

(assert (not d!493470))

(assert b_and!116145)

(assert (not b!1639187))

(assert (not b!1639241))

(assert (not d!493504))

(assert (not b!1639213))

(assert (not d!493440))

(assert (not b!1639255))

(assert (not d!493508))

(assert (not b!1638621))

(assert (not b!1639199))

(assert (not b!1638922))

(assert (not b!1638906))

(assert b_and!116153)

(assert (not b_next!45045))

(assert (not b!1639014))

(assert (not d!493244))

(assert (not b!1639210))

(assert (not d!493218))

(assert (not d!493242))

(assert (not b!1638715))

(assert (not d!493456))

(assert (not d!493386))

(assert (not d!493368))

(assert (not d!493414))

(assert (not b!1638955))

(assert (not b!1639043))

(assert (not b!1638592))

(assert (not b!1639034))

(assert (not b!1638908))

(assert (not b_lambda!51501))

(assert (not b!1639029))

(assert b_and!116147)

(assert (not b!1639161))

(assert (not b!1638935))

(assert (not b!1638910))

(assert (not b!1639186))

(assert (not d!493232))

(assert (not d!493224))

(assert (not bm!105707))

(assert (not b!1638832))

(assert (not b_next!45023))

(check-sat)

(pop 1)

(push 1)

(assert b_and!116149)

(assert (not b_next!45043))

(assert b_and!116155)

(assert b_and!116113)

(assert b_and!116109)

(assert (not b_next!45029))

(assert (not b_next!45027))

(assert b_and!116145)

(assert b_and!116147)

(assert (not b_next!45023))

(assert b_and!116151)

(assert (not b_next!45039))

(assert (not b_next!45041))

(assert (not b_next!45025))

(assert b_and!116153)

(assert (not b_next!45045))

(check-sat)

(pop 1)

