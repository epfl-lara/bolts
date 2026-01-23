; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!155554 () Bool)

(assert start!155554)

(declare-fun b!1632248 () Bool)

(declare-fun b_free!44071 () Bool)

(declare-fun b_next!44775 () Bool)

(assert (=> b!1632248 (= b_free!44071 (not b_next!44775))))

(declare-fun tp!473745 () Bool)

(declare-fun b_and!115741 () Bool)

(assert (=> b!1632248 (= tp!473745 b_and!115741)))

(declare-fun b_free!44073 () Bool)

(declare-fun b_next!44777 () Bool)

(assert (=> b!1632248 (= b_free!44073 (not b_next!44777))))

(declare-fun tp!473750 () Bool)

(declare-fun b_and!115743 () Bool)

(assert (=> b!1632248 (= tp!473750 b_and!115743)))

(declare-fun b!1632246 () Bool)

(declare-fun b_free!44075 () Bool)

(declare-fun b_next!44779 () Bool)

(assert (=> b!1632246 (= b_free!44075 (not b_next!44779))))

(declare-fun tp!473748 () Bool)

(declare-fun b_and!115745 () Bool)

(assert (=> b!1632246 (= tp!473748 b_and!115745)))

(declare-fun b_free!44077 () Bool)

(declare-fun b_next!44781 () Bool)

(assert (=> b!1632246 (= b_free!44077 (not b_next!44781))))

(declare-fun tp!473744 () Bool)

(declare-fun b_and!115747 () Bool)

(assert (=> b!1632246 (= tp!473744 b_and!115747)))

(declare-fun b!1632220 () Bool)

(declare-fun e!1046764 () Bool)

(declare-fun e!1046761 () Bool)

(assert (=> b!1632220 (= e!1046764 e!1046761)))

(declare-fun res!730308 () Bool)

(assert (=> b!1632220 (=> res!730308 e!1046761)))

(declare-datatypes ((C!9144 0))(
  ( (C!9145 (val!5168 Int)) )
))
(declare-datatypes ((List!17989 0))(
  ( (Nil!17919) (Cons!17919 (h!23320 C!9144) (t!149530 List!17989)) )
))
(declare-datatypes ((IArray!11929 0))(
  ( (IArray!11930 (innerList!6022 List!17989)) )
))
(declare-datatypes ((Conc!5962 0))(
  ( (Node!5962 (left!14390 Conc!5962) (right!14720 Conc!5962) (csize!12154 Int) (cheight!6173 Int)) (Leaf!8761 (xs!8798 IArray!11929) (csize!12155 Int)) (Empty!5962) )
))
(declare-datatypes ((BalanceConc!11868 0))(
  ( (BalanceConc!11869 (c!265685 Conc!5962)) )
))
(declare-fun lt!593427 () BalanceConc!11868)

(declare-datatypes ((Regex!4485 0))(
  ( (ElementMatch!4485 (c!265686 C!9144)) (Concat!7732 (regOne!9482 Regex!4485) (regTwo!9482 Regex!4485)) (EmptyExpr!4485) (Star!4485 (reg!4814 Regex!4485)) (EmptyLang!4485) (Union!4485 (regOne!9483 Regex!4485) (regTwo!9483 Regex!4485)) )
))
(declare-fun lt!593405 () Regex!4485)

(declare-fun lt!593411 () BalanceConc!11868)

(declare-fun prefixMatchZipperSequence!553 (Regex!4485 BalanceConc!11868) Bool)

(declare-fun ++!4785 (BalanceConc!11868 BalanceConc!11868) BalanceConc!11868)

(assert (=> b!1632220 (= res!730308 (prefixMatchZipperSequence!553 lt!593405 (++!4785 lt!593427 lt!593411)))))

(declare-datatypes ((List!17990 0))(
  ( (Nil!17920) (Cons!17920 (h!23321 (_ BitVec 16)) (t!149531 List!17990)) )
))
(declare-datatypes ((TokenValue!3247 0))(
  ( (FloatLiteralValue!6494 (text!23174 List!17990)) (TokenValueExt!3246 (__x!11796 Int)) (Broken!16235 (value!99621 List!17990)) (Object!3316) (End!3247) (Def!3247) (Underscore!3247) (Match!3247) (Else!3247) (Error!3247) (Case!3247) (If!3247) (Extends!3247) (Abstract!3247) (Class!3247) (Val!3247) (DelimiterValue!6494 (del!3307 List!17990)) (KeywordValue!3253 (value!99622 List!17990)) (CommentValue!6494 (value!99623 List!17990)) (WhitespaceValue!6494 (value!99624 List!17990)) (IndentationValue!3247 (value!99625 List!17990)) (String!20566) (Int32!3247) (Broken!16236 (value!99626 List!17990)) (Boolean!3248) (Unit!29195) (OperatorValue!3250 (op!3307 List!17990)) (IdentifierValue!6494 (value!99627 List!17990)) (IdentifierValue!6495 (value!99628 List!17990)) (WhitespaceValue!6495 (value!99629 List!17990)) (True!6494) (False!6494) (Broken!16237 (value!99630 List!17990)) (Broken!16238 (value!99631 List!17990)) (True!6495) (RightBrace!3247) (RightBracket!3247) (Colon!3247) (Null!3247) (Comma!3247) (LeftBracket!3247) (False!6495) (LeftBrace!3247) (ImaginaryLiteralValue!3247 (text!23175 List!17990)) (StringLiteralValue!9741 (value!99632 List!17990)) (EOFValue!3247 (value!99633 List!17990)) (IdentValue!3247 (value!99634 List!17990)) (DelimiterValue!6495 (value!99635 List!17990)) (DedentValue!3247 (value!99636 List!17990)) (NewLineValue!3247 (value!99637 List!17990)) (IntegerValue!9741 (value!99638 (_ BitVec 32)) (text!23176 List!17990)) (IntegerValue!9742 (value!99639 Int) (text!23177 List!17990)) (Times!3247) (Or!3247) (Equal!3247) (Minus!3247) (Broken!16239 (value!99640 List!17990)) (And!3247) (Div!3247) (LessEqual!3247) (Mod!3247) (Concat!7733) (Not!3247) (Plus!3247) (SpaceValue!3247 (value!99641 List!17990)) (IntegerValue!9743 (value!99642 Int) (text!23178 List!17990)) (StringLiteralValue!9742 (text!23179 List!17990)) (FloatLiteralValue!6495 (text!23180 List!17990)) (BytesLiteralValue!3247 (value!99643 List!17990)) (CommentValue!6495 (value!99644 List!17990)) (StringLiteralValue!9743 (value!99645 List!17990)) (ErrorTokenValue!3247 (msg!3308 List!17990)) )
))
(declare-datatypes ((String!20567 0))(
  ( (String!20568 (value!99646 String)) )
))
(declare-datatypes ((TokenValueInjection!6154 0))(
  ( (TokenValueInjection!6155 (toValue!4588 Int) (toChars!4447 Int)) )
))
(declare-datatypes ((Rule!6114 0))(
  ( (Rule!6115 (regex!3157 Regex!4485) (tag!3437 String!20567) (isSeparator!3157 Bool) (transformation!3157 TokenValueInjection!6154)) )
))
(declare-datatypes ((Token!5880 0))(
  ( (Token!5881 (value!99647 TokenValue!3247) (rule!4993 Rule!6114) (size!14318 Int) (originalCharacters!3971 List!17989)) )
))
(declare-datatypes ((List!17991 0))(
  ( (Nil!17921) (Cons!17921 (h!23322 Token!5880) (t!149532 List!17991)) )
))
(declare-fun tokens!457 () List!17991)

(declare-fun singletonSeq!1592 (C!9144) BalanceConc!11868)

(declare-fun apply!4614 (BalanceConc!11868 Int) C!9144)

(declare-fun charsOf!1806 (Token!5880) BalanceConc!11868)

(assert (=> b!1632220 (= lt!593411 (singletonSeq!1592 (apply!4614 (charsOf!1806 (h!23322 (t!149532 tokens!457))) 0)))))

(declare-datatypes ((LexerInterface!2786 0))(
  ( (LexerInterfaceExt!2783 (__x!11797 Int)) (Lexer!2784) )
))
(declare-fun thiss!17113 () LexerInterface!2786)

(declare-datatypes ((List!17992 0))(
  ( (Nil!17922) (Cons!17922 (h!23323 Rule!6114) (t!149533 List!17992)) )
))
(declare-fun rules!1846 () List!17992)

(declare-fun rulesRegex!547 (LexerInterface!2786 List!17992) Regex!4485)

(assert (=> b!1632220 (= lt!593405 (rulesRegex!547 thiss!17113 rules!1846))))

(declare-fun b!1632221 () Bool)

(declare-fun e!1046767 () Bool)

(assert (=> b!1632221 (= e!1046767 e!1046764)))

(declare-fun res!730326 () Bool)

(assert (=> b!1632221 (=> res!730326 e!1046764)))

(declare-datatypes ((tuple2!17522 0))(
  ( (tuple2!17523 (_1!10163 Token!5880) (_2!10163 List!17989)) )
))
(declare-datatypes ((Option!3345 0))(
  ( (None!3344) (Some!3344 (v!24409 tuple2!17522)) )
))
(declare-fun lt!593420 () Option!3345)

(declare-fun isDefined!2712 (Option!3345) Bool)

(assert (=> b!1632221 (= res!730326 (not (isDefined!2712 lt!593420)))))

(declare-datatypes ((Unit!29196 0))(
  ( (Unit!29197) )
))
(declare-fun lt!593404 () Unit!29196)

(declare-fun lt!593417 () List!17989)

(declare-fun lt!593423 () List!17989)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!360 (LexerInterface!2786 List!17992 List!17989 List!17989) Unit!29196)

(assert (=> b!1632221 (= lt!593404 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!360 thiss!17113 rules!1846 lt!593417 lt!593423))))

(declare-fun b!1632222 () Bool)

(declare-fun res!730325 () Bool)

(assert (=> b!1632222 (=> res!730325 e!1046767)))

(declare-fun rulesProduceIndividualToken!1438 (LexerInterface!2786 List!17992 Token!5880) Bool)

(assert (=> b!1632222 (= res!730325 (not (rulesProduceIndividualToken!1438 thiss!17113 rules!1846 (h!23322 tokens!457))))))

(declare-fun b!1632223 () Bool)

(declare-fun res!730312 () Bool)

(declare-fun e!1046780 () Bool)

(assert (=> b!1632223 (=> (not res!730312) (not e!1046780))))

(declare-fun lt!593428 () List!17989)

(declare-fun head!3486 (List!17989) C!9144)

(assert (=> b!1632223 (= res!730312 (= lt!593428 (Cons!17919 (head!3486 (originalCharacters!3971 (h!23322 (t!149532 tokens!457)))) Nil!17919)))))

(declare-fun b!1632224 () Bool)

(declare-fun e!1046765 () Bool)

(declare-fun e!1046760 () Bool)

(assert (=> b!1632224 (= e!1046765 e!1046760)))

(declare-fun res!730324 () Bool)

(assert (=> b!1632224 (=> res!730324 e!1046760)))

(declare-fun lt!593410 () List!17991)

(declare-fun lt!593430 () List!17991)

(declare-fun lt!593419 () List!17991)

(assert (=> b!1632224 (= res!730324 (or (not (= lt!593410 lt!593419)) (not (= lt!593419 lt!593430))))))

(declare-datatypes ((IArray!11931 0))(
  ( (IArray!11932 (innerList!6023 List!17991)) )
))
(declare-datatypes ((Conc!5963 0))(
  ( (Node!5963 (left!14391 Conc!5963) (right!14721 Conc!5963) (csize!12156 Int) (cheight!6174 Int)) (Leaf!8762 (xs!8799 IArray!11931) (csize!12157 Int)) (Empty!5963) )
))
(declare-datatypes ((BalanceConc!11870 0))(
  ( (BalanceConc!11871 (c!265687 Conc!5963)) )
))
(declare-fun lt!593416 () BalanceConc!11870)

(declare-fun list!7051 (BalanceConc!11870) List!17991)

(assert (=> b!1632224 (= lt!593419 (list!7051 lt!593416))))

(assert (=> b!1632224 (= lt!593410 lt!593430)))

(declare-fun prepend!691 (BalanceConc!11870 Token!5880) BalanceConc!11870)

(declare-fun seqFromList!2063 (List!17991) BalanceConc!11870)

(assert (=> b!1632224 (= lt!593430 (list!7051 (prepend!691 (seqFromList!2063 (t!149532 (t!149532 tokens!457))) (h!23322 (t!149532 tokens!457)))))))

(declare-fun lt!593424 () Unit!29196)

(declare-datatypes ((tuple2!17524 0))(
  ( (tuple2!17525 (_1!10164 BalanceConc!11870) (_2!10164 BalanceConc!11868)) )
))
(declare-fun lt!593415 () tuple2!17524)

(declare-fun seqFromListBHdTlConstructive!234 (Token!5880 List!17991 BalanceConc!11870) Unit!29196)

(assert (=> b!1632224 (= lt!593424 (seqFromListBHdTlConstructive!234 (h!23322 (t!149532 tokens!457)) (t!149532 (t!149532 tokens!457)) (_1!10164 lt!593415)))))

(declare-fun b!1632225 () Bool)

(declare-fun res!730321 () Bool)

(declare-fun e!1046777 () Bool)

(assert (=> b!1632225 (=> (not res!730321) (not e!1046777))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!479 (LexerInterface!2786 List!17991 List!17992) Bool)

(assert (=> b!1632225 (= res!730321 (tokensListTwoByTwoPredicateSeparableList!479 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1632226 () Bool)

(declare-fun e!1046779 () Bool)

(declare-fun e!1046772 () Bool)

(assert (=> b!1632226 (= e!1046779 e!1046772)))

(declare-fun res!730323 () Bool)

(assert (=> b!1632226 (=> res!730323 e!1046772)))

(declare-fun lt!593409 () tuple2!17522)

(assert (=> b!1632226 (= res!730323 (or (not (= (_1!10163 lt!593409) (h!23322 tokens!457))) (not (= (_2!10163 lt!593409) lt!593423))))))

(declare-fun get!5180 (Option!3345) tuple2!17522)

(assert (=> b!1632226 (= lt!593409 (get!5180 lt!593420))))

(declare-fun lt!593414 () Unit!29196)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!122 (LexerInterface!2786 List!17992 Token!5880 Rule!6114 List!17989) Unit!29196)

(assert (=> b!1632226 (= lt!593414 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!122 thiss!17113 rules!1846 (h!23322 tokens!457) (rule!4993 (h!23322 tokens!457)) lt!593423))))

(declare-fun res!730311 () Bool)

(assert (=> start!155554 (=> (not res!730311) (not e!1046777))))

(get-info :version)

(assert (=> start!155554 (= res!730311 ((_ is Lexer!2784) thiss!17113))))

(assert (=> start!155554 e!1046777))

(assert (=> start!155554 true))

(declare-fun e!1046762 () Bool)

(assert (=> start!155554 e!1046762))

(declare-fun e!1046769 () Bool)

(assert (=> start!155554 e!1046769))

(declare-fun b!1632227 () Bool)

(declare-fun e!1046778 () Bool)

(declare-fun matchR!1984 (Regex!4485 List!17989) Bool)

(assert (=> b!1632227 (= e!1046778 (matchR!1984 (regex!3157 (rule!4993 (h!23322 tokens!457))) lt!593417))))

(declare-fun b!1632228 () Bool)

(declare-fun res!730317 () Bool)

(assert (=> b!1632228 (=> res!730317 e!1046760)))

(declare-fun separableTokensPredicate!728 (LexerInterface!2786 Token!5880 Token!5880 List!17992) Bool)

(assert (=> b!1632228 (= res!730317 (not (separableTokensPredicate!728 thiss!17113 (h!23322 tokens!457) (h!23322 (t!149532 tokens!457)) rules!1846)))))

(declare-fun b!1632229 () Bool)

(declare-fun e!1046774 () Bool)

(declare-fun tp!473747 () Bool)

(assert (=> b!1632229 (= e!1046762 (and e!1046774 tp!473747))))

(declare-fun tp!473746 () Bool)

(declare-fun e!1046763 () Bool)

(declare-fun b!1632230 () Bool)

(declare-fun e!1046782 () Bool)

(declare-fun inv!21 (TokenValue!3247) Bool)

(assert (=> b!1632230 (= e!1046763 (and (inv!21 (value!99647 (h!23322 tokens!457))) e!1046782 tp!473746))))

(declare-fun b!1632231 () Bool)

(declare-fun e!1046766 () Bool)

(assert (=> b!1632231 (= e!1046766 (not e!1046765))))

(declare-fun res!730318 () Bool)

(assert (=> b!1632231 (=> res!730318 e!1046765)))

(assert (=> b!1632231 (= res!730318 (not (= lt!593410 (t!149532 tokens!457))))))

(assert (=> b!1632231 (= lt!593410 (list!7051 (_1!10164 lt!593415)))))

(declare-fun lt!593412 () Unit!29196)

(declare-fun theoremInvertabilityWhenTokenListSeparable!231 (LexerInterface!2786 List!17992 List!17991) Unit!29196)

(assert (=> b!1632231 (= lt!593412 (theoremInvertabilityWhenTokenListSeparable!231 thiss!17113 rules!1846 (t!149532 tokens!457)))))

(declare-fun lt!593407 () List!17989)

(declare-fun isPrefix!1417 (List!17989 List!17989) Bool)

(assert (=> b!1632231 (isPrefix!1417 lt!593417 lt!593407)))

(declare-fun lt!593425 () Unit!29196)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!942 (List!17989 List!17989) Unit!29196)

(assert (=> b!1632231 (= lt!593425 (lemmaConcatTwoListThenFirstIsPrefix!942 lt!593417 lt!593423))))

(declare-fun b!1632232 () Bool)

(declare-fun e!1046781 () Bool)

(declare-fun e!1046771 () Bool)

(assert (=> b!1632232 (= e!1046781 e!1046771)))

(declare-fun res!730316 () Bool)

(assert (=> b!1632232 (=> res!730316 e!1046771)))

(declare-datatypes ((tuple2!17526 0))(
  ( (tuple2!17527 (_1!10165 Token!5880) (_2!10165 BalanceConc!11868)) )
))
(declare-datatypes ((Option!3346 0))(
  ( (None!3345) (Some!3345 (v!24410 tuple2!17526)) )
))
(declare-fun isDefined!2713 (Option!3346) Bool)

(declare-fun maxPrefixZipperSequence!681 (LexerInterface!2786 List!17992 BalanceConc!11868) Option!3346)

(declare-fun seqFromList!2064 (List!17989) BalanceConc!11868)

(assert (=> b!1632232 (= res!730316 (not (isDefined!2713 (maxPrefixZipperSequence!681 thiss!17113 rules!1846 (seqFromList!2064 (originalCharacters!3971 (h!23322 tokens!457)))))))))

(declare-fun lt!593403 () List!17989)

(assert (=> b!1632232 (= lt!593428 lt!593403)))

(declare-fun lt!593431 () BalanceConc!11868)

(declare-fun head!3487 (BalanceConc!11868) C!9144)

(assert (=> b!1632232 (= lt!593403 (Cons!17919 (head!3487 lt!593431) Nil!17919))))

(assert (=> b!1632232 e!1046780))

(declare-fun res!730328 () Bool)

(assert (=> b!1632232 (=> (not res!730328) (not e!1046780))))

(assert (=> b!1632232 (= res!730328 (= lt!593417 (originalCharacters!3971 (h!23322 tokens!457))))))

(declare-fun b!1632233 () Bool)

(declare-fun res!730313 () Bool)

(assert (=> b!1632233 (=> res!730313 e!1046779)))

(declare-fun prefixMatch!420 (Regex!4485 List!17989) Bool)

(declare-fun ++!4786 (List!17989 List!17989) List!17989)

(assert (=> b!1632233 (= res!730313 (prefixMatch!420 lt!593405 (++!4786 lt!593417 lt!593403)))))

(declare-fun b!1632234 () Bool)

(declare-fun tp!473751 () Bool)

(declare-fun inv!23288 (Token!5880) Bool)

(assert (=> b!1632234 (= e!1046769 (and (inv!23288 (h!23322 tokens!457)) e!1046763 tp!473751))))

(declare-fun e!1046770 () Bool)

(declare-fun tp!473749 () Bool)

(declare-fun b!1632235 () Bool)

(declare-fun inv!23285 (String!20567) Bool)

(declare-fun inv!23289 (TokenValueInjection!6154) Bool)

(assert (=> b!1632235 (= e!1046774 (and tp!473749 (inv!23285 (tag!3437 (h!23323 rules!1846))) (inv!23289 (transformation!3157 (h!23323 rules!1846))) e!1046770))))

(declare-fun b!1632236 () Bool)

(assert (=> b!1632236 (= e!1046761 e!1046781)))

(declare-fun res!730306 () Bool)

(assert (=> b!1632236 (=> res!730306 e!1046781)))

(assert (=> b!1632236 (= res!730306 (prefixMatch!420 lt!593405 (++!4786 lt!593417 lt!593428)))))

(declare-fun list!7052 (BalanceConc!11868) List!17989)

(assert (=> b!1632236 (= lt!593428 (list!7052 lt!593411))))

(declare-fun b!1632237 () Bool)

(assert (=> b!1632237 (= e!1046777 e!1046766)))

(declare-fun res!730314 () Bool)

(assert (=> b!1632237 (=> (not res!730314) (not e!1046766))))

(declare-fun lt!593426 () List!17989)

(assert (=> b!1632237 (= res!730314 (= lt!593426 lt!593407))))

(assert (=> b!1632237 (= lt!593407 (++!4786 lt!593417 lt!593423))))

(declare-fun lt!593413 () BalanceConc!11868)

(assert (=> b!1632237 (= lt!593426 (list!7052 lt!593413))))

(assert (=> b!1632237 (= lt!593423 (list!7052 lt!593431))))

(assert (=> b!1632237 (= lt!593417 (list!7052 lt!593427))))

(assert (=> b!1632237 (= lt!593427 (charsOf!1806 (h!23322 tokens!457)))))

(declare-fun lex!1270 (LexerInterface!2786 List!17992 BalanceConc!11868) tuple2!17524)

(assert (=> b!1632237 (= lt!593415 (lex!1270 thiss!17113 rules!1846 lt!593431))))

(declare-fun print!1317 (LexerInterface!2786 BalanceConc!11870) BalanceConc!11868)

(assert (=> b!1632237 (= lt!593431 (print!1317 thiss!17113 lt!593416))))

(assert (=> b!1632237 (= lt!593416 (seqFromList!2063 (t!149532 tokens!457)))))

(assert (=> b!1632237 (= lt!593413 (print!1317 thiss!17113 (seqFromList!2063 tokens!457)))))

(declare-fun b!1632238 () Bool)

(assert (=> b!1632238 (= e!1046760 e!1046767)))

(declare-fun res!730319 () Bool)

(assert (=> b!1632238 (=> res!730319 e!1046767)))

(declare-fun lt!593421 () List!17989)

(declare-fun lt!593432 () List!17989)

(assert (=> b!1632238 (= res!730319 (or (not (= lt!593421 lt!593432)) (not (= lt!593432 lt!593417)) (not (= lt!593421 lt!593417))))))

(declare-fun printList!901 (LexerInterface!2786 List!17991) List!17989)

(assert (=> b!1632238 (= lt!593432 (printList!901 thiss!17113 (Cons!17921 (h!23322 tokens!457) Nil!17921)))))

(declare-fun lt!593408 () BalanceConc!11868)

(assert (=> b!1632238 (= lt!593421 (list!7052 lt!593408))))

(declare-fun lt!593418 () BalanceConc!11870)

(declare-fun printTailRec!839 (LexerInterface!2786 BalanceConc!11870 Int BalanceConc!11868) BalanceConc!11868)

(assert (=> b!1632238 (= lt!593408 (printTailRec!839 thiss!17113 lt!593418 0 (BalanceConc!11869 Empty!5962)))))

(assert (=> b!1632238 (= lt!593408 (print!1317 thiss!17113 lt!593418))))

(declare-fun singletonSeq!1593 (Token!5880) BalanceConc!11870)

(assert (=> b!1632238 (= lt!593418 (singletonSeq!1593 (h!23322 tokens!457)))))

(declare-fun maxPrefix!1350 (LexerInterface!2786 List!17992 List!17989) Option!3345)

(assert (=> b!1632238 (= lt!593420 (maxPrefix!1350 thiss!17113 rules!1846 lt!593426))))

(declare-fun b!1632239 () Bool)

(assert (=> b!1632239 (= e!1046772 true)))

(declare-fun lt!593422 () Option!3345)

(declare-fun maxPrefixZipper!314 (LexerInterface!2786 List!17992 List!17989) Option!3345)

(assert (=> b!1632239 (= lt!593422 (maxPrefixZipper!314 thiss!17113 rules!1846 lt!593426))))

(declare-fun b!1632240 () Bool)

(assert (=> b!1632240 (= e!1046771 e!1046779)))

(declare-fun res!730310 () Bool)

(assert (=> b!1632240 (=> res!730310 e!1046779)))

(assert (=> b!1632240 (= res!730310 (prefixMatch!420 lt!593405 (++!4786 (originalCharacters!3971 (h!23322 tokens!457)) lt!593403)))))

(assert (=> b!1632240 e!1046778))

(declare-fun res!730315 () Bool)

(assert (=> b!1632240 (=> (not res!730315) (not e!1046778))))

(declare-fun lt!593406 () tuple2!17522)

(assert (=> b!1632240 (= res!730315 (= (_1!10163 lt!593406) (h!23322 tokens!457)))))

(declare-fun lt!593429 () Option!3345)

(assert (=> b!1632240 (= lt!593406 (get!5180 lt!593429))))

(assert (=> b!1632240 (isDefined!2712 lt!593429)))

(assert (=> b!1632240 (= lt!593429 (maxPrefix!1350 thiss!17113 rules!1846 lt!593417))))

(assert (=> b!1632240 (isDefined!2712 (maxPrefix!1350 thiss!17113 rules!1846 (originalCharacters!3971 (h!23322 tokens!457))))))

(declare-fun b!1632241 () Bool)

(declare-fun res!730322 () Bool)

(assert (=> b!1632241 (=> (not res!730322) (not e!1046777))))

(declare-fun isEmpty!10953 (List!17992) Bool)

(assert (=> b!1632241 (= res!730322 (not (isEmpty!10953 rules!1846)))))

(declare-fun tp!473752 () Bool)

(declare-fun b!1632242 () Bool)

(declare-fun e!1046768 () Bool)

(assert (=> b!1632242 (= e!1046782 (and tp!473752 (inv!23285 (tag!3437 (rule!4993 (h!23322 tokens!457)))) (inv!23289 (transformation!3157 (rule!4993 (h!23322 tokens!457)))) e!1046768))))

(declare-fun b!1632243 () Bool)

(declare-fun res!730309 () Bool)

(assert (=> b!1632243 (=> (not res!730309) (not e!1046777))))

(assert (=> b!1632243 (= res!730309 (and (not ((_ is Nil!17921) tokens!457)) (not ((_ is Nil!17921) (t!149532 tokens!457)))))))

(declare-fun b!1632244 () Bool)

(assert (=> b!1632244 (= e!1046780 (= lt!593428 (Cons!17919 (head!3486 lt!593423) Nil!17919)))))

(declare-fun b!1632245 () Bool)

(declare-fun res!730327 () Bool)

(assert (=> b!1632245 (=> (not res!730327) (not e!1046777))))

(declare-fun rulesInvariant!2455 (LexerInterface!2786 List!17992) Bool)

(assert (=> b!1632245 (= res!730327 (rulesInvariant!2455 thiss!17113 rules!1846))))

(assert (=> b!1632246 (= e!1046770 (and tp!473748 tp!473744))))

(declare-fun b!1632247 () Bool)

(declare-fun res!730307 () Bool)

(assert (=> b!1632247 (=> (not res!730307) (not e!1046777))))

(declare-fun rulesProduceEachTokenIndividuallyList!988 (LexerInterface!2786 List!17992 List!17991) Bool)

(assert (=> b!1632247 (= res!730307 (rulesProduceEachTokenIndividuallyList!988 thiss!17113 rules!1846 tokens!457))))

(assert (=> b!1632248 (= e!1046768 (and tp!473745 tp!473750))))

(declare-fun b!1632249 () Bool)

(declare-fun res!730320 () Bool)

(assert (=> b!1632249 (=> (not res!730320) (not e!1046778))))

(declare-fun isEmpty!10954 (List!17989) Bool)

(assert (=> b!1632249 (= res!730320 (isEmpty!10954 (_2!10163 lt!593406)))))

(declare-fun b!1632250 () Bool)

(declare-fun res!730329 () Bool)

(assert (=> b!1632250 (=> res!730329 e!1046767)))

(declare-fun isEmpty!10955 (BalanceConc!11870) Bool)

(assert (=> b!1632250 (= res!730329 (isEmpty!10955 (_1!10164 (lex!1270 thiss!17113 rules!1846 (seqFromList!2064 lt!593417)))))))

(assert (= (and start!155554 res!730311) b!1632241))

(assert (= (and b!1632241 res!730322) b!1632245))

(assert (= (and b!1632245 res!730327) b!1632247))

(assert (= (and b!1632247 res!730307) b!1632225))

(assert (= (and b!1632225 res!730321) b!1632243))

(assert (= (and b!1632243 res!730309) b!1632237))

(assert (= (and b!1632237 res!730314) b!1632231))

(assert (= (and b!1632231 (not res!730318)) b!1632224))

(assert (= (and b!1632224 (not res!730324)) b!1632228))

(assert (= (and b!1632228 (not res!730317)) b!1632238))

(assert (= (and b!1632238 (not res!730319)) b!1632222))

(assert (= (and b!1632222 (not res!730325)) b!1632250))

(assert (= (and b!1632250 (not res!730329)) b!1632221))

(assert (= (and b!1632221 (not res!730326)) b!1632220))

(assert (= (and b!1632220 (not res!730308)) b!1632236))

(assert (= (and b!1632236 (not res!730306)) b!1632232))

(assert (= (and b!1632232 res!730328) b!1632223))

(assert (= (and b!1632223 res!730312) b!1632244))

(assert (= (and b!1632232 (not res!730316)) b!1632240))

(assert (= (and b!1632240 res!730315) b!1632249))

(assert (= (and b!1632249 res!730320) b!1632227))

(assert (= (and b!1632240 (not res!730310)) b!1632233))

(assert (= (and b!1632233 (not res!730313)) b!1632226))

(assert (= (and b!1632226 (not res!730323)) b!1632239))

(assert (= b!1632235 b!1632246))

(assert (= b!1632229 b!1632235))

(assert (= (and start!155554 ((_ is Cons!17922) rules!1846)) b!1632229))

(assert (= b!1632242 b!1632248))

(assert (= b!1632230 b!1632242))

(assert (= b!1632234 b!1632230))

(assert (= (and start!155554 ((_ is Cons!17921) tokens!457)) b!1632234))

(declare-fun m!1966075 () Bool)

(assert (=> b!1632231 m!1966075))

(declare-fun m!1966077 () Bool)

(assert (=> b!1632231 m!1966077))

(declare-fun m!1966079 () Bool)

(assert (=> b!1632231 m!1966079))

(declare-fun m!1966081 () Bool)

(assert (=> b!1632231 m!1966081))

(declare-fun m!1966083 () Bool)

(assert (=> b!1632230 m!1966083))

(declare-fun m!1966085 () Bool)

(assert (=> b!1632223 m!1966085))

(declare-fun m!1966087 () Bool)

(assert (=> b!1632222 m!1966087))

(declare-fun m!1966089 () Bool)

(assert (=> b!1632228 m!1966089))

(declare-fun m!1966091 () Bool)

(assert (=> b!1632224 m!1966091))

(declare-fun m!1966093 () Bool)

(assert (=> b!1632224 m!1966093))

(declare-fun m!1966095 () Bool)

(assert (=> b!1632224 m!1966095))

(declare-fun m!1966097 () Bool)

(assert (=> b!1632224 m!1966097))

(declare-fun m!1966099 () Bool)

(assert (=> b!1632224 m!1966099))

(assert (=> b!1632224 m!1966095))

(assert (=> b!1632224 m!1966097))

(declare-fun m!1966101 () Bool)

(assert (=> b!1632247 m!1966101))

(declare-fun m!1966103 () Bool)

(assert (=> b!1632250 m!1966103))

(assert (=> b!1632250 m!1966103))

(declare-fun m!1966105 () Bool)

(assert (=> b!1632250 m!1966105))

(declare-fun m!1966107 () Bool)

(assert (=> b!1632250 m!1966107))

(declare-fun m!1966109 () Bool)

(assert (=> b!1632245 m!1966109))

(declare-fun m!1966111 () Bool)

(assert (=> b!1632240 m!1966111))

(declare-fun m!1966113 () Bool)

(assert (=> b!1632240 m!1966113))

(declare-fun m!1966115 () Bool)

(assert (=> b!1632240 m!1966115))

(assert (=> b!1632240 m!1966113))

(declare-fun m!1966117 () Bool)

(assert (=> b!1632240 m!1966117))

(declare-fun m!1966119 () Bool)

(assert (=> b!1632240 m!1966119))

(declare-fun m!1966121 () Bool)

(assert (=> b!1632240 m!1966121))

(assert (=> b!1632240 m!1966119))

(declare-fun m!1966123 () Bool)

(assert (=> b!1632240 m!1966123))

(declare-fun m!1966125 () Bool)

(assert (=> b!1632220 m!1966125))

(declare-fun m!1966127 () Bool)

(assert (=> b!1632220 m!1966127))

(declare-fun m!1966129 () Bool)

(assert (=> b!1632220 m!1966129))

(declare-fun m!1966131 () Bool)

(assert (=> b!1632220 m!1966131))

(assert (=> b!1632220 m!1966127))

(declare-fun m!1966133 () Bool)

(assert (=> b!1632220 m!1966133))

(declare-fun m!1966135 () Bool)

(assert (=> b!1632220 m!1966135))

(assert (=> b!1632220 m!1966129))

(assert (=> b!1632220 m!1966135))

(declare-fun m!1966137 () Bool)

(assert (=> b!1632239 m!1966137))

(declare-fun m!1966139 () Bool)

(assert (=> b!1632242 m!1966139))

(declare-fun m!1966141 () Bool)

(assert (=> b!1632242 m!1966141))

(declare-fun m!1966143 () Bool)

(assert (=> b!1632244 m!1966143))

(declare-fun m!1966145 () Bool)

(assert (=> b!1632241 m!1966145))

(declare-fun m!1966147 () Bool)

(assert (=> b!1632237 m!1966147))

(declare-fun m!1966149 () Bool)

(assert (=> b!1632237 m!1966149))

(declare-fun m!1966151 () Bool)

(assert (=> b!1632237 m!1966151))

(declare-fun m!1966153 () Bool)

(assert (=> b!1632237 m!1966153))

(declare-fun m!1966155 () Bool)

(assert (=> b!1632237 m!1966155))

(declare-fun m!1966157 () Bool)

(assert (=> b!1632237 m!1966157))

(declare-fun m!1966159 () Bool)

(assert (=> b!1632237 m!1966159))

(assert (=> b!1632237 m!1966153))

(declare-fun m!1966161 () Bool)

(assert (=> b!1632237 m!1966161))

(declare-fun m!1966163 () Bool)

(assert (=> b!1632237 m!1966163))

(declare-fun m!1966165 () Bool)

(assert (=> b!1632237 m!1966165))

(declare-fun m!1966167 () Bool)

(assert (=> b!1632249 m!1966167))

(declare-fun m!1966169 () Bool)

(assert (=> b!1632233 m!1966169))

(assert (=> b!1632233 m!1966169))

(declare-fun m!1966171 () Bool)

(assert (=> b!1632233 m!1966171))

(declare-fun m!1966173 () Bool)

(assert (=> b!1632226 m!1966173))

(declare-fun m!1966175 () Bool)

(assert (=> b!1632226 m!1966175))

(declare-fun m!1966177 () Bool)

(assert (=> b!1632232 m!1966177))

(assert (=> b!1632232 m!1966177))

(declare-fun m!1966179 () Bool)

(assert (=> b!1632232 m!1966179))

(assert (=> b!1632232 m!1966179))

(declare-fun m!1966181 () Bool)

(assert (=> b!1632232 m!1966181))

(declare-fun m!1966183 () Bool)

(assert (=> b!1632232 m!1966183))

(declare-fun m!1966185 () Bool)

(assert (=> b!1632227 m!1966185))

(declare-fun m!1966187 () Bool)

(assert (=> b!1632236 m!1966187))

(assert (=> b!1632236 m!1966187))

(declare-fun m!1966189 () Bool)

(assert (=> b!1632236 m!1966189))

(declare-fun m!1966191 () Bool)

(assert (=> b!1632236 m!1966191))

(declare-fun m!1966193 () Bool)

(assert (=> b!1632225 m!1966193))

(declare-fun m!1966195 () Bool)

(assert (=> b!1632221 m!1966195))

(declare-fun m!1966197 () Bool)

(assert (=> b!1632221 m!1966197))

(declare-fun m!1966199 () Bool)

(assert (=> b!1632235 m!1966199))

(declare-fun m!1966201 () Bool)

(assert (=> b!1632235 m!1966201))

(declare-fun m!1966203 () Bool)

(assert (=> b!1632234 m!1966203))

(declare-fun m!1966205 () Bool)

(assert (=> b!1632238 m!1966205))

(declare-fun m!1966207 () Bool)

(assert (=> b!1632238 m!1966207))

(declare-fun m!1966209 () Bool)

(assert (=> b!1632238 m!1966209))

(declare-fun m!1966211 () Bool)

(assert (=> b!1632238 m!1966211))

(declare-fun m!1966213 () Bool)

(assert (=> b!1632238 m!1966213))

(declare-fun m!1966215 () Bool)

(assert (=> b!1632238 m!1966215))

(check-sat (not b_next!44775) (not b!1632221) (not b!1632220) (not b!1632225) (not b!1632240) (not b_next!44777) (not b!1632238) (not b!1632249) (not b!1632231) (not b!1632247) (not b!1632237) (not b!1632226) (not b!1632223) (not b!1632235) (not b!1632232) (not b!1632233) (not b!1632242) (not b!1632222) (not b_next!44781) b_and!115741 (not b!1632230) (not b!1632236) (not b!1632234) (not b!1632244) (not b!1632250) b_and!115745 (not b!1632239) (not b!1632228) (not b!1632245) (not b_next!44779) (not b!1632227) b_and!115747 (not b!1632229) (not b!1632241) (not b!1632224) b_and!115743)
(check-sat (not b_next!44775) (not b_next!44777) b_and!115745 (not b_next!44779) b_and!115747 b_and!115743 (not b_next!44781) b_and!115741)
