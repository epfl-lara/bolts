; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!152694 () Bool)

(assert start!152694)

(declare-fun b!1614856 () Bool)

(declare-fun b_free!43479 () Bool)

(declare-fun b_next!44183 () Bool)

(assert (=> b!1614856 (= b_free!43479 (not b_next!44183))))

(declare-fun tp!470853 () Bool)

(declare-fun b_and!114509 () Bool)

(assert (=> b!1614856 (= tp!470853 b_and!114509)))

(declare-fun b_free!43481 () Bool)

(declare-fun b_next!44185 () Bool)

(assert (=> b!1614856 (= b_free!43481 (not b_next!44185))))

(declare-fun tp!470850 () Bool)

(declare-fun b_and!114511 () Bool)

(assert (=> b!1614856 (= tp!470850 b_and!114511)))

(declare-fun b!1614858 () Bool)

(declare-fun b_free!43483 () Bool)

(declare-fun b_next!44187 () Bool)

(assert (=> b!1614858 (= b_free!43483 (not b_next!44187))))

(declare-fun tp!470849 () Bool)

(declare-fun b_and!114513 () Bool)

(assert (=> b!1614858 (= tp!470849 b_and!114513)))

(declare-fun b_free!43485 () Bool)

(declare-fun b_next!44189 () Bool)

(assert (=> b!1614858 (= b_free!43485 (not b_next!44189))))

(declare-fun tp!470847 () Bool)

(declare-fun b_and!114515 () Bool)

(assert (=> b!1614858 (= tp!470847 b_and!114515)))

(declare-fun b!1614839 () Bool)

(declare-fun e!1035788 () Bool)

(declare-fun e!1035785 () Bool)

(assert (=> b!1614839 (= e!1035788 e!1035785)))

(declare-fun res!720565 () Bool)

(assert (=> b!1614839 (=> res!720565 e!1035785)))

(declare-datatypes ((C!9052 0))(
  ( (C!9053 (val!5122 Int)) )
))
(declare-datatypes ((List!17733 0))(
  ( (Nil!17663) (Cons!17663 (h!23064 C!9052) (t!148206 List!17733)) )
))
(declare-datatypes ((IArray!11745 0))(
  ( (IArray!11746 (innerList!5930 List!17733)) )
))
(declare-datatypes ((Conc!5870 0))(
  ( (Node!5870 (left!14227 Conc!5870) (right!14557 Conc!5870) (csize!11970 Int) (cheight!6081 Int)) (Leaf!8646 (xs!8698 IArray!11745) (csize!11971 Int)) (Empty!5870) )
))
(declare-datatypes ((BalanceConc!11684 0))(
  ( (BalanceConc!11685 (c!263007 Conc!5870)) )
))
(declare-fun lt!578032 () BalanceConc!11684)

(declare-datatypes ((Regex!4439 0))(
  ( (ElementMatch!4439 (c!263008 C!9052)) (Concat!7640 (regOne!9390 Regex!4439) (regTwo!9390 Regex!4439)) (EmptyExpr!4439) (Star!4439 (reg!4768 Regex!4439)) (EmptyLang!4439) (Union!4439 (regOne!9391 Regex!4439) (regTwo!9391 Regex!4439)) )
))
(declare-fun lt!578037 () Regex!4439)

(declare-fun lt!578048 () BalanceConc!11684)

(declare-fun prefixMatchZipperSequence!483 (Regex!4439 BalanceConc!11684) Bool)

(declare-fun ++!4661 (BalanceConc!11684 BalanceConc!11684) BalanceConc!11684)

(assert (=> b!1614839 (= res!720565 (prefixMatchZipperSequence!483 lt!578037 (++!4661 lt!578032 lt!578048)))))

(declare-datatypes ((List!17734 0))(
  ( (Nil!17664) (Cons!17664 (h!23065 (_ BitVec 16)) (t!148207 List!17734)) )
))
(declare-datatypes ((TokenValue!3201 0))(
  ( (FloatLiteralValue!6402 (text!22852 List!17734)) (TokenValueExt!3200 (__x!11704 Int)) (Broken!16005 (value!98310 List!17734)) (Object!3270) (End!3201) (Def!3201) (Underscore!3201) (Match!3201) (Else!3201) (Error!3201) (Case!3201) (If!3201) (Extends!3201) (Abstract!3201) (Class!3201) (Val!3201) (DelimiterValue!6402 (del!3261 List!17734)) (KeywordValue!3207 (value!98311 List!17734)) (CommentValue!6402 (value!98312 List!17734)) (WhitespaceValue!6402 (value!98313 List!17734)) (IndentationValue!3201 (value!98314 List!17734)) (String!20336) (Int32!3201) (Broken!16006 (value!98315 List!17734)) (Boolean!3202) (Unit!28402) (OperatorValue!3204 (op!3261 List!17734)) (IdentifierValue!6402 (value!98316 List!17734)) (IdentifierValue!6403 (value!98317 List!17734)) (WhitespaceValue!6403 (value!98318 List!17734)) (True!6402) (False!6402) (Broken!16007 (value!98319 List!17734)) (Broken!16008 (value!98320 List!17734)) (True!6403) (RightBrace!3201) (RightBracket!3201) (Colon!3201) (Null!3201) (Comma!3201) (LeftBracket!3201) (False!6403) (LeftBrace!3201) (ImaginaryLiteralValue!3201 (text!22853 List!17734)) (StringLiteralValue!9603 (value!98321 List!17734)) (EOFValue!3201 (value!98322 List!17734)) (IdentValue!3201 (value!98323 List!17734)) (DelimiterValue!6403 (value!98324 List!17734)) (DedentValue!3201 (value!98325 List!17734)) (NewLineValue!3201 (value!98326 List!17734)) (IntegerValue!9603 (value!98327 (_ BitVec 32)) (text!22854 List!17734)) (IntegerValue!9604 (value!98328 Int) (text!22855 List!17734)) (Times!3201) (Or!3201) (Equal!3201) (Minus!3201) (Broken!16009 (value!98329 List!17734)) (And!3201) (Div!3201) (LessEqual!3201) (Mod!3201) (Concat!7641) (Not!3201) (Plus!3201) (SpaceValue!3201 (value!98330 List!17734)) (IntegerValue!9605 (value!98331 Int) (text!22856 List!17734)) (StringLiteralValue!9604 (text!22857 List!17734)) (FloatLiteralValue!6403 (text!22858 List!17734)) (BytesLiteralValue!3201 (value!98332 List!17734)) (CommentValue!6403 (value!98333 List!17734)) (StringLiteralValue!9605 (value!98334 List!17734)) (ErrorTokenValue!3201 (msg!3262 List!17734)) )
))
(declare-datatypes ((String!20337 0))(
  ( (String!20338 (value!98335 String)) )
))
(declare-datatypes ((TokenValueInjection!6062 0))(
  ( (TokenValueInjection!6063 (toValue!4534 Int) (toChars!4393 Int)) )
))
(declare-datatypes ((Rule!6022 0))(
  ( (Rule!6023 (regex!3111 Regex!4439) (tag!3387 String!20337) (isSeparator!3111 Bool) (transformation!3111 TokenValueInjection!6062)) )
))
(declare-datatypes ((Token!5788 0))(
  ( (Token!5789 (value!98336 TokenValue!3201) (rule!4931 Rule!6022) (size!14180 Int) (originalCharacters!3925 List!17733)) )
))
(declare-datatypes ((List!17735 0))(
  ( (Nil!17665) (Cons!17665 (h!23066 Token!5788) (t!148208 List!17735)) )
))
(declare-fun tokens!457 () List!17735)

(declare-fun singletonSeq!1500 (C!9052) BalanceConc!11684)

(declare-fun apply!4440 (BalanceConc!11684 Int) C!9052)

(declare-fun charsOf!1760 (Token!5788) BalanceConc!11684)

(assert (=> b!1614839 (= lt!578048 (singletonSeq!1500 (apply!4440 (charsOf!1760 (h!23066 (t!148208 tokens!457))) 0)))))

(declare-datatypes ((LexerInterface!2740 0))(
  ( (LexerInterfaceExt!2737 (__x!11705 Int)) (Lexer!2738) )
))
(declare-fun thiss!17113 () LexerInterface!2740)

(declare-datatypes ((List!17736 0))(
  ( (Nil!17666) (Cons!17666 (h!23067 Rule!6022) (t!148209 List!17736)) )
))
(declare-fun rules!1846 () List!17736)

(declare-fun rulesRegex!501 (LexerInterface!2740 List!17736) Regex!4439)

(assert (=> b!1614839 (= lt!578037 (rulesRegex!501 thiss!17113 rules!1846))))

(declare-fun b!1614840 () Bool)

(declare-fun e!1035791 () Bool)

(assert (=> b!1614840 (= e!1035791 true)))

(declare-fun lt!578047 () Bool)

(declare-fun rulesValidInductive!952 (LexerInterface!2740 List!17736) Bool)

(assert (=> b!1614840 (= lt!578047 (rulesValidInductive!952 thiss!17113 rules!1846))))

(declare-fun e!1035778 () Bool)

(assert (=> b!1614840 e!1035778))

(declare-fun res!720575 () Bool)

(assert (=> b!1614840 (=> (not res!720575) (not e!1035778))))

(declare-datatypes ((tuple2!17182 0))(
  ( (tuple2!17183 (_1!9993 Token!5788) (_2!9993 List!17733)) )
))
(declare-datatypes ((Option!3229 0))(
  ( (None!3228) (Some!3228 (v!24211 tuple2!17182)) )
))
(declare-fun isDefined!2596 (Option!3229) Bool)

(declare-fun maxPrefix!1304 (LexerInterface!2740 List!17736 List!17733) Option!3229)

(assert (=> b!1614840 (= res!720575 (isDefined!2596 (maxPrefix!1304 thiss!17113 rules!1846 (originalCharacters!3925 (h!23066 tokens!457)))))))

(declare-fun b!1614842 () Bool)

(declare-fun res!720577 () Bool)

(declare-fun e!1035781 () Bool)

(assert (=> b!1614842 (=> (not res!720577) (not e!1035781))))

(declare-fun lt!578040 () List!17733)

(declare-fun head!3342 (List!17733) C!9052)

(assert (=> b!1614842 (= res!720577 (= lt!578040 (Cons!17663 (head!3342 (originalCharacters!3925 (h!23066 (t!148208 tokens!457)))) Nil!17663)))))

(declare-fun b!1614843 () Bool)

(declare-fun lt!578033 () BalanceConc!11684)

(declare-fun head!3343 (BalanceConc!11684) C!9052)

(assert (=> b!1614843 (= e!1035781 (= lt!578040 (Cons!17663 (head!3343 lt!578033) Nil!17663)))))

(declare-fun b!1614844 () Bool)

(declare-fun e!1035790 () Bool)

(assert (=> b!1614844 (= e!1035790 e!1035788)))

(declare-fun res!720570 () Bool)

(assert (=> b!1614844 (=> res!720570 e!1035788)))

(declare-fun lt!578035 () Option!3229)

(assert (=> b!1614844 (= res!720570 (not (isDefined!2596 lt!578035)))))

(declare-fun lt!578046 () List!17733)

(declare-fun lt!578036 () List!17733)

(declare-datatypes ((Unit!28403 0))(
  ( (Unit!28404) )
))
(declare-fun lt!578030 () Unit!28403)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!314 (LexerInterface!2740 List!17736 List!17733 List!17733) Unit!28403)

(assert (=> b!1614844 (= lt!578030 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!314 thiss!17113 rules!1846 lt!578046 lt!578036))))

(declare-fun b!1614845 () Bool)

(declare-fun res!720580 () Bool)

(declare-fun e!1035780 () Bool)

(assert (=> b!1614845 (=> (not res!720580) (not e!1035780))))

(get-info :version)

(assert (=> b!1614845 (= res!720580 (and (not ((_ is Nil!17665) tokens!457)) (not ((_ is Nil!17665) (t!148208 tokens!457)))))))

(declare-fun b!1614846 () Bool)

(declare-fun res!720578 () Bool)

(declare-fun e!1035795 () Bool)

(assert (=> b!1614846 (=> res!720578 e!1035795)))

(declare-fun separableTokensPredicate!682 (LexerInterface!2740 Token!5788 Token!5788 List!17736) Bool)

(assert (=> b!1614846 (= res!720578 (not (separableTokensPredicate!682 thiss!17113 (h!23066 tokens!457) (h!23066 (t!148208 tokens!457)) rules!1846)))))

(declare-fun b!1614847 () Bool)

(declare-fun res!720581 () Bool)

(assert (=> b!1614847 (=> res!720581 e!1035790)))

(declare-datatypes ((IArray!11747 0))(
  ( (IArray!11748 (innerList!5931 List!17735)) )
))
(declare-datatypes ((Conc!5871 0))(
  ( (Node!5871 (left!14228 Conc!5871) (right!14558 Conc!5871) (csize!11972 Int) (cheight!6082 Int)) (Leaf!8647 (xs!8699 IArray!11747) (csize!11973 Int)) (Empty!5871) )
))
(declare-datatypes ((BalanceConc!11686 0))(
  ( (BalanceConc!11687 (c!263009 Conc!5871)) )
))
(declare-fun isEmpty!10684 (BalanceConc!11686) Bool)

(declare-datatypes ((tuple2!17184 0))(
  ( (tuple2!17185 (_1!9994 BalanceConc!11686) (_2!9994 BalanceConc!11684)) )
))
(declare-fun lex!1224 (LexerInterface!2740 List!17736 BalanceConc!11684) tuple2!17184)

(declare-fun seqFromList!1971 (List!17733) BalanceConc!11684)

(assert (=> b!1614847 (= res!720581 (isEmpty!10684 (_1!9994 (lex!1224 thiss!17113 rules!1846 (seqFromList!1971 lt!578046)))))))

(declare-fun b!1614848 () Bool)

(declare-fun res!720579 () Bool)

(assert (=> b!1614848 (=> (not res!720579) (not e!1035780))))

(declare-fun rulesProduceEachTokenIndividuallyList!942 (LexerInterface!2740 List!17736 List!17735) Bool)

(assert (=> b!1614848 (= res!720579 (rulesProduceEachTokenIndividuallyList!942 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1614849 () Bool)

(declare-fun e!1035794 () Bool)

(assert (=> b!1614849 (= e!1035794 e!1035795)))

(declare-fun res!720572 () Bool)

(assert (=> b!1614849 (=> res!720572 e!1035795)))

(declare-fun lt!578039 () List!17735)

(declare-fun lt!578054 () List!17735)

(declare-fun lt!578052 () List!17735)

(assert (=> b!1614849 (= res!720572 (or (not (= lt!578039 lt!578054)) (not (= lt!578054 lt!578052))))))

(declare-fun lt!578051 () BalanceConc!11686)

(declare-fun list!6903 (BalanceConc!11686) List!17735)

(assert (=> b!1614849 (= lt!578054 (list!6903 lt!578051))))

(assert (=> b!1614849 (= lt!578039 lt!578052)))

(declare-fun prepend!621 (BalanceConc!11686 Token!5788) BalanceConc!11686)

(declare-fun seqFromList!1972 (List!17735) BalanceConc!11686)

(assert (=> b!1614849 (= lt!578052 (list!6903 (prepend!621 (seqFromList!1972 (t!148208 (t!148208 tokens!457))) (h!23066 (t!148208 tokens!457)))))))

(declare-fun lt!578045 () Unit!28403)

(declare-fun lt!578034 () tuple2!17184)

(declare-fun seqFromListBHdTlConstructive!188 (Token!5788 List!17735 BalanceConc!11686) Unit!28403)

(assert (=> b!1614849 (= lt!578045 (seqFromListBHdTlConstructive!188 (h!23066 (t!148208 tokens!457)) (t!148208 (t!148208 tokens!457)) (_1!9994 lt!578034)))))

(declare-fun tp!470854 () Bool)

(declare-fun e!1035782 () Bool)

(declare-fun e!1035787 () Bool)

(declare-fun b!1614850 () Bool)

(declare-fun inv!23067 (Token!5788) Bool)

(assert (=> b!1614850 (= e!1035782 (and (inv!23067 (h!23066 tokens!457)) e!1035787 tp!470854))))

(declare-fun b!1614851 () Bool)

(declare-fun e!1035779 () Bool)

(assert (=> b!1614851 (= e!1035779 e!1035791)))

(declare-fun res!720576 () Bool)

(assert (=> b!1614851 (=> res!720576 e!1035791)))

(declare-datatypes ((tuple2!17186 0))(
  ( (tuple2!17187 (_1!9995 Token!5788) (_2!9995 BalanceConc!11684)) )
))
(declare-datatypes ((Option!3230 0))(
  ( (None!3229) (Some!3229 (v!24212 tuple2!17186)) )
))
(declare-fun isDefined!2597 (Option!3230) Bool)

(declare-fun maxPrefixZipperSequence!635 (LexerInterface!2740 List!17736 BalanceConc!11684) Option!3230)

(assert (=> b!1614851 (= res!720576 (not (isDefined!2597 (maxPrefixZipperSequence!635 thiss!17113 rules!1846 (seqFromList!1971 (originalCharacters!3925 (h!23066 tokens!457)))))))))

(assert (=> b!1614851 e!1035781))

(declare-fun res!720571 () Bool)

(assert (=> b!1614851 (=> (not res!720571) (not e!1035781))))

(assert (=> b!1614851 (= res!720571 (= lt!578046 (originalCharacters!3925 (h!23066 tokens!457))))))

(declare-fun e!1035776 () Bool)

(declare-fun tp!470848 () Bool)

(declare-fun b!1614852 () Bool)

(declare-fun e!1035796 () Bool)

(declare-fun inv!23064 (String!20337) Bool)

(declare-fun inv!23068 (TokenValueInjection!6062) Bool)

(assert (=> b!1614852 (= e!1035776 (and tp!470848 (inv!23064 (tag!3387 (rule!4931 (h!23066 tokens!457)))) (inv!23068 (transformation!3111 (rule!4931 (h!23066 tokens!457)))) e!1035796))))

(declare-fun b!1614853 () Bool)

(declare-fun e!1035784 () Bool)

(declare-fun e!1035793 () Bool)

(declare-fun tp!470846 () Bool)

(assert (=> b!1614853 (= e!1035784 (and e!1035793 tp!470846))))

(declare-fun b!1614854 () Bool)

(assert (=> b!1614854 (= e!1035785 e!1035779)))

(declare-fun res!720567 () Bool)

(assert (=> b!1614854 (=> res!720567 e!1035779)))

(declare-fun prefixMatch!374 (Regex!4439 List!17733) Bool)

(declare-fun ++!4662 (List!17733 List!17733) List!17733)

(assert (=> b!1614854 (= res!720567 (prefixMatch!374 lt!578037 (++!4662 lt!578046 lt!578040)))))

(declare-fun list!6904 (BalanceConc!11684) List!17733)

(assert (=> b!1614854 (= lt!578040 (list!6904 lt!578048))))

(declare-fun b!1614855 () Bool)

(declare-fun res!720563 () Bool)

(assert (=> b!1614855 (=> (not res!720563) (not e!1035780))))

(declare-fun rulesInvariant!2409 (LexerInterface!2740 List!17736) Bool)

(assert (=> b!1614855 (= res!720563 (rulesInvariant!2409 thiss!17113 rules!1846))))

(assert (=> b!1614856 (= e!1035796 (and tp!470853 tp!470850))))

(declare-fun b!1614857 () Bool)

(declare-fun e!1035786 () Bool)

(assert (=> b!1614857 (= e!1035780 e!1035786)))

(declare-fun res!720564 () Bool)

(assert (=> b!1614857 (=> (not res!720564) (not e!1035786))))

(declare-fun lt!578044 () List!17733)

(declare-fun lt!578043 () List!17733)

(assert (=> b!1614857 (= res!720564 (= lt!578044 lt!578043))))

(assert (=> b!1614857 (= lt!578043 (++!4662 lt!578046 lt!578036))))

(declare-fun lt!578050 () BalanceConc!11684)

(assert (=> b!1614857 (= lt!578044 (list!6904 lt!578050))))

(assert (=> b!1614857 (= lt!578036 (list!6904 lt!578033))))

(assert (=> b!1614857 (= lt!578046 (list!6904 lt!578032))))

(assert (=> b!1614857 (= lt!578032 (charsOf!1760 (h!23066 tokens!457)))))

(assert (=> b!1614857 (= lt!578034 (lex!1224 thiss!17113 rules!1846 lt!578033))))

(declare-fun print!1271 (LexerInterface!2740 BalanceConc!11686) BalanceConc!11684)

(assert (=> b!1614857 (= lt!578033 (print!1271 thiss!17113 lt!578051))))

(assert (=> b!1614857 (= lt!578051 (seqFromList!1972 (t!148208 tokens!457)))))

(assert (=> b!1614857 (= lt!578050 (print!1271 thiss!17113 (seqFromList!1972 tokens!457)))))

(declare-fun res!720574 () Bool)

(assert (=> start!152694 (=> (not res!720574) (not e!1035780))))

(assert (=> start!152694 (= res!720574 ((_ is Lexer!2738) thiss!17113))))

(assert (=> start!152694 e!1035780))

(assert (=> start!152694 true))

(assert (=> start!152694 e!1035784))

(assert (=> start!152694 e!1035782))

(declare-fun b!1614841 () Bool)

(assert (=> b!1614841 (= e!1035778 (isDefined!2596 (maxPrefix!1304 thiss!17113 rules!1846 lt!578046)))))

(declare-fun e!1035783 () Bool)

(assert (=> b!1614858 (= e!1035783 (and tp!470849 tp!470847))))

(declare-fun b!1614859 () Bool)

(declare-fun res!720583 () Bool)

(assert (=> b!1614859 (=> (not res!720583) (not e!1035780))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!433 (LexerInterface!2740 List!17735 List!17736) Bool)

(assert (=> b!1614859 (= res!720583 (tokensListTwoByTwoPredicateSeparableList!433 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1614860 () Bool)

(declare-fun res!720573 () Bool)

(assert (=> b!1614860 (=> (not res!720573) (not e!1035780))))

(declare-fun isEmpty!10685 (List!17736) Bool)

(assert (=> b!1614860 (= res!720573 (not (isEmpty!10685 rules!1846)))))

(declare-fun b!1614861 () Bool)

(assert (=> b!1614861 (= e!1035786 (not e!1035794))))

(declare-fun res!720568 () Bool)

(assert (=> b!1614861 (=> res!720568 e!1035794)))

(assert (=> b!1614861 (= res!720568 (not (= lt!578039 (t!148208 tokens!457))))))

(assert (=> b!1614861 (= lt!578039 (list!6903 (_1!9994 lt!578034)))))

(declare-fun lt!578038 () Unit!28403)

(declare-fun theoremInvertabilityWhenTokenListSeparable!185 (LexerInterface!2740 List!17736 List!17735) Unit!28403)

(assert (=> b!1614861 (= lt!578038 (theoremInvertabilityWhenTokenListSeparable!185 thiss!17113 rules!1846 (t!148208 tokens!457)))))

(declare-fun isPrefix!1371 (List!17733 List!17733) Bool)

(assert (=> b!1614861 (isPrefix!1371 lt!578046 lt!578043)))

(declare-fun lt!578041 () Unit!28403)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!896 (List!17733 List!17733) Unit!28403)

(assert (=> b!1614861 (= lt!578041 (lemmaConcatTwoListThenFirstIsPrefix!896 lt!578046 lt!578036))))

(declare-fun tp!470852 () Bool)

(declare-fun b!1614862 () Bool)

(declare-fun inv!21 (TokenValue!3201) Bool)

(assert (=> b!1614862 (= e!1035787 (and (inv!21 (value!98336 (h!23066 tokens!457))) e!1035776 tp!470852))))

(declare-fun b!1614863 () Bool)

(assert (=> b!1614863 (= e!1035795 e!1035790)))

(declare-fun res!720566 () Bool)

(assert (=> b!1614863 (=> res!720566 e!1035790)))

(declare-fun lt!578031 () List!17733)

(declare-fun lt!578049 () List!17733)

(assert (=> b!1614863 (= res!720566 (or (not (= lt!578031 lt!578049)) (not (= lt!578049 lt!578046)) (not (= lt!578031 lt!578046))))))

(declare-fun printList!855 (LexerInterface!2740 List!17735) List!17733)

(assert (=> b!1614863 (= lt!578049 (printList!855 thiss!17113 (Cons!17665 (h!23066 tokens!457) Nil!17665)))))

(declare-fun lt!578053 () BalanceConc!11684)

(assert (=> b!1614863 (= lt!578031 (list!6904 lt!578053))))

(declare-fun lt!578042 () BalanceConc!11686)

(declare-fun printTailRec!793 (LexerInterface!2740 BalanceConc!11686 Int BalanceConc!11684) BalanceConc!11684)

(assert (=> b!1614863 (= lt!578053 (printTailRec!793 thiss!17113 lt!578042 0 (BalanceConc!11685 Empty!5870)))))

(assert (=> b!1614863 (= lt!578053 (print!1271 thiss!17113 lt!578042))))

(declare-fun singletonSeq!1501 (Token!5788) BalanceConc!11686)

(assert (=> b!1614863 (= lt!578042 (singletonSeq!1501 (h!23066 tokens!457)))))

(assert (=> b!1614863 (= lt!578035 (maxPrefix!1304 thiss!17113 rules!1846 lt!578044))))

(declare-fun b!1614864 () Bool)

(declare-fun res!720582 () Bool)

(assert (=> b!1614864 (=> res!720582 e!1035790)))

(declare-fun rulesProduceIndividualToken!1392 (LexerInterface!2740 List!17736 Token!5788) Bool)

(assert (=> b!1614864 (= res!720582 (not (rulesProduceIndividualToken!1392 thiss!17113 rules!1846 (h!23066 tokens!457))))))

(declare-fun b!1614865 () Bool)

(declare-fun tp!470851 () Bool)

(assert (=> b!1614865 (= e!1035793 (and tp!470851 (inv!23064 (tag!3387 (h!23067 rules!1846))) (inv!23068 (transformation!3111 (h!23067 rules!1846))) e!1035783))))

(declare-fun b!1614866 () Bool)

(declare-fun res!720569 () Bool)

(assert (=> b!1614866 (=> (not res!720569) (not e!1035781))))

(assert (=> b!1614866 (= res!720569 (= lt!578040 (Cons!17663 (head!3342 lt!578036) Nil!17663)))))

(assert (= (and start!152694 res!720574) b!1614860))

(assert (= (and b!1614860 res!720573) b!1614855))

(assert (= (and b!1614855 res!720563) b!1614848))

(assert (= (and b!1614848 res!720579) b!1614859))

(assert (= (and b!1614859 res!720583) b!1614845))

(assert (= (and b!1614845 res!720580) b!1614857))

(assert (= (and b!1614857 res!720564) b!1614861))

(assert (= (and b!1614861 (not res!720568)) b!1614849))

(assert (= (and b!1614849 (not res!720572)) b!1614846))

(assert (= (and b!1614846 (not res!720578)) b!1614863))

(assert (= (and b!1614863 (not res!720566)) b!1614864))

(assert (= (and b!1614864 (not res!720582)) b!1614847))

(assert (= (and b!1614847 (not res!720581)) b!1614844))

(assert (= (and b!1614844 (not res!720570)) b!1614839))

(assert (= (and b!1614839 (not res!720565)) b!1614854))

(assert (= (and b!1614854 (not res!720567)) b!1614851))

(assert (= (and b!1614851 res!720571) b!1614842))

(assert (= (and b!1614842 res!720577) b!1614866))

(assert (= (and b!1614866 res!720569) b!1614843))

(assert (= (and b!1614851 (not res!720576)) b!1614840))

(assert (= (and b!1614840 res!720575) b!1614841))

(assert (= b!1614865 b!1614858))

(assert (= b!1614853 b!1614865))

(assert (= (and start!152694 ((_ is Cons!17666) rules!1846)) b!1614853))

(assert (= b!1614852 b!1614856))

(assert (= b!1614862 b!1614852))

(assert (= b!1614850 b!1614862))

(assert (= (and start!152694 ((_ is Cons!17665) tokens!457)) b!1614850))

(declare-fun m!1934221 () Bool)

(assert (=> b!1614847 m!1934221))

(assert (=> b!1614847 m!1934221))

(declare-fun m!1934223 () Bool)

(assert (=> b!1614847 m!1934223))

(declare-fun m!1934225 () Bool)

(assert (=> b!1614847 m!1934225))

(declare-fun m!1934227 () Bool)

(assert (=> b!1614860 m!1934227))

(declare-fun m!1934229 () Bool)

(assert (=> b!1614861 m!1934229))

(declare-fun m!1934231 () Bool)

(assert (=> b!1614861 m!1934231))

(declare-fun m!1934233 () Bool)

(assert (=> b!1614861 m!1934233))

(declare-fun m!1934235 () Bool)

(assert (=> b!1614861 m!1934235))

(declare-fun m!1934237 () Bool)

(assert (=> b!1614842 m!1934237))

(declare-fun m!1934239 () Bool)

(assert (=> b!1614859 m!1934239))

(declare-fun m!1934241 () Bool)

(assert (=> b!1614854 m!1934241))

(assert (=> b!1614854 m!1934241))

(declare-fun m!1934243 () Bool)

(assert (=> b!1614854 m!1934243))

(declare-fun m!1934245 () Bool)

(assert (=> b!1614854 m!1934245))

(declare-fun m!1934247 () Bool)

(assert (=> b!1614850 m!1934247))

(declare-fun m!1934249 () Bool)

(assert (=> b!1614840 m!1934249))

(declare-fun m!1934251 () Bool)

(assert (=> b!1614840 m!1934251))

(assert (=> b!1614840 m!1934251))

(declare-fun m!1934253 () Bool)

(assert (=> b!1614840 m!1934253))

(declare-fun m!1934255 () Bool)

(assert (=> b!1614844 m!1934255))

(declare-fun m!1934257 () Bool)

(assert (=> b!1614844 m!1934257))

(declare-fun m!1934259 () Bool)

(assert (=> b!1614864 m!1934259))

(declare-fun m!1934261 () Bool)

(assert (=> b!1614846 m!1934261))

(declare-fun m!1934263 () Bool)

(assert (=> b!1614865 m!1934263))

(declare-fun m!1934265 () Bool)

(assert (=> b!1614865 m!1934265))

(declare-fun m!1934267 () Bool)

(assert (=> b!1614852 m!1934267))

(declare-fun m!1934269 () Bool)

(assert (=> b!1614852 m!1934269))

(declare-fun m!1934271 () Bool)

(assert (=> b!1614866 m!1934271))

(declare-fun m!1934273 () Bool)

(assert (=> b!1614841 m!1934273))

(assert (=> b!1614841 m!1934273))

(declare-fun m!1934275 () Bool)

(assert (=> b!1614841 m!1934275))

(declare-fun m!1934277 () Bool)

(assert (=> b!1614849 m!1934277))

(declare-fun m!1934279 () Bool)

(assert (=> b!1614849 m!1934279))

(declare-fun m!1934281 () Bool)

(assert (=> b!1614849 m!1934281))

(declare-fun m!1934283 () Bool)

(assert (=> b!1614849 m!1934283))

(declare-fun m!1934285 () Bool)

(assert (=> b!1614849 m!1934285))

(assert (=> b!1614849 m!1934281))

(assert (=> b!1614849 m!1934283))

(declare-fun m!1934287 () Bool)

(assert (=> b!1614857 m!1934287))

(declare-fun m!1934289 () Bool)

(assert (=> b!1614857 m!1934289))

(declare-fun m!1934291 () Bool)

(assert (=> b!1614857 m!1934291))

(declare-fun m!1934293 () Bool)

(assert (=> b!1614857 m!1934293))

(declare-fun m!1934295 () Bool)

(assert (=> b!1614857 m!1934295))

(declare-fun m!1934297 () Bool)

(assert (=> b!1614857 m!1934297))

(declare-fun m!1934299 () Bool)

(assert (=> b!1614857 m!1934299))

(declare-fun m!1934301 () Bool)

(assert (=> b!1614857 m!1934301))

(declare-fun m!1934303 () Bool)

(assert (=> b!1614857 m!1934303))

(assert (=> b!1614857 m!1934291))

(declare-fun m!1934305 () Bool)

(assert (=> b!1614857 m!1934305))

(declare-fun m!1934307 () Bool)

(assert (=> b!1614851 m!1934307))

(assert (=> b!1614851 m!1934307))

(declare-fun m!1934309 () Bool)

(assert (=> b!1614851 m!1934309))

(assert (=> b!1614851 m!1934309))

(declare-fun m!1934311 () Bool)

(assert (=> b!1614851 m!1934311))

(declare-fun m!1934313 () Bool)

(assert (=> b!1614863 m!1934313))

(declare-fun m!1934315 () Bool)

(assert (=> b!1614863 m!1934315))

(declare-fun m!1934317 () Bool)

(assert (=> b!1614863 m!1934317))

(declare-fun m!1934319 () Bool)

(assert (=> b!1614863 m!1934319))

(declare-fun m!1934321 () Bool)

(assert (=> b!1614863 m!1934321))

(declare-fun m!1934323 () Bool)

(assert (=> b!1614863 m!1934323))

(declare-fun m!1934325 () Bool)

(assert (=> b!1614862 m!1934325))

(declare-fun m!1934327 () Bool)

(assert (=> b!1614839 m!1934327))

(declare-fun m!1934329 () Bool)

(assert (=> b!1614839 m!1934329))

(declare-fun m!1934331 () Bool)

(assert (=> b!1614839 m!1934331))

(declare-fun m!1934333 () Bool)

(assert (=> b!1614839 m!1934333))

(assert (=> b!1614839 m!1934329))

(declare-fun m!1934335 () Bool)

(assert (=> b!1614839 m!1934335))

(declare-fun m!1934337 () Bool)

(assert (=> b!1614839 m!1934337))

(assert (=> b!1614839 m!1934331))

(assert (=> b!1614839 m!1934337))

(declare-fun m!1934339 () Bool)

(assert (=> b!1614843 m!1934339))

(declare-fun m!1934341 () Bool)

(assert (=> b!1614848 m!1934341))

(declare-fun m!1934343 () Bool)

(assert (=> b!1614855 m!1934343))

(check-sat (not b!1614843) (not b!1614851) (not b!1614864) (not b!1614853) (not b!1614854) (not b!1614839) (not b!1614863) (not b!1614841) (not b_next!44189) (not b!1614844) (not b!1614855) (not b!1614865) (not b!1614842) (not b_next!44187) b_and!114511 (not b!1614846) (not b!1614840) (not b_next!44183) (not b!1614850) (not b!1614860) (not b!1614861) (not b!1614857) b_and!114509 (not b!1614849) b_and!114513 (not b!1614847) (not b!1614866) (not b!1614852) (not b_next!44185) (not b!1614848) (not b!1614862) (not b!1614859) b_and!114515)
(check-sat (not b_next!44189) (not b_next!44187) b_and!114509 b_and!114513 (not b_next!44185) b_and!114515 b_and!114511 (not b_next!44183))
