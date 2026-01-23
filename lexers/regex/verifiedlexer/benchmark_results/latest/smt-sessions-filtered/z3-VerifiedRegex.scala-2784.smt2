; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!153922 () Bool)

(assert start!153922)

(declare-fun b!1622059 () Bool)

(declare-fun b_free!43719 () Bool)

(declare-fun b_next!44423 () Bool)

(assert (=> b!1622059 (= b_free!43719 (not b_next!44423))))

(declare-fun tp!472052 () Bool)

(declare-fun b_and!115045 () Bool)

(assert (=> b!1622059 (= tp!472052 b_and!115045)))

(declare-fun b_free!43721 () Bool)

(declare-fun b_next!44425 () Bool)

(assert (=> b!1622059 (= b_free!43721 (not b_next!44425))))

(declare-fun tp!472057 () Bool)

(declare-fun b_and!115047 () Bool)

(assert (=> b!1622059 (= tp!472057 b_and!115047)))

(declare-fun b!1622069 () Bool)

(declare-fun b_free!43723 () Bool)

(declare-fun b_next!44427 () Bool)

(assert (=> b!1622069 (= b_free!43723 (not b_next!44427))))

(declare-fun tp!472058 () Bool)

(declare-fun b_and!115049 () Bool)

(assert (=> b!1622069 (= tp!472058 b_and!115049)))

(declare-fun b_free!43725 () Bool)

(declare-fun b_next!44429 () Bool)

(assert (=> b!1622069 (= b_free!43725 (not b_next!44429))))

(declare-fun tp!472053 () Bool)

(declare-fun b_and!115051 () Bool)

(assert (=> b!1622069 (= tp!472053 b_and!115051)))

(declare-fun e!1040348 () Bool)

(assert (=> b!1622059 (= e!1040348 (and tp!472052 tp!472057))))

(declare-fun b!1622060 () Bool)

(declare-fun res!724583 () Bool)

(declare-fun e!1040337 () Bool)

(assert (=> b!1622060 (=> (not res!724583) (not e!1040337))))

(declare-datatypes ((List!17835 0))(
  ( (Nil!17765) (Cons!17765 (h!23166 (_ BitVec 16)) (t!148800 List!17835)) )
))
(declare-datatypes ((TokenValue!3219 0))(
  ( (FloatLiteralValue!6438 (text!22978 List!17835)) (TokenValueExt!3218 (__x!11740 Int)) (Broken!16095 (value!98823 List!17835)) (Object!3288) (End!3219) (Def!3219) (Underscore!3219) (Match!3219) (Else!3219) (Error!3219) (Case!3219) (If!3219) (Extends!3219) (Abstract!3219) (Class!3219) (Val!3219) (DelimiterValue!6438 (del!3279 List!17835)) (KeywordValue!3225 (value!98824 List!17835)) (CommentValue!6438 (value!98825 List!17835)) (WhitespaceValue!6438 (value!98826 List!17835)) (IndentationValue!3219 (value!98827 List!17835)) (String!20426) (Int32!3219) (Broken!16096 (value!98828 List!17835)) (Boolean!3220) (Unit!28722) (OperatorValue!3222 (op!3279 List!17835)) (IdentifierValue!6438 (value!98829 List!17835)) (IdentifierValue!6439 (value!98830 List!17835)) (WhitespaceValue!6439 (value!98831 List!17835)) (True!6438) (False!6438) (Broken!16097 (value!98832 List!17835)) (Broken!16098 (value!98833 List!17835)) (True!6439) (RightBrace!3219) (RightBracket!3219) (Colon!3219) (Null!3219) (Comma!3219) (LeftBracket!3219) (False!6439) (LeftBrace!3219) (ImaginaryLiteralValue!3219 (text!22979 List!17835)) (StringLiteralValue!9657 (value!98834 List!17835)) (EOFValue!3219 (value!98835 List!17835)) (IdentValue!3219 (value!98836 List!17835)) (DelimiterValue!6439 (value!98837 List!17835)) (DedentValue!3219 (value!98838 List!17835)) (NewLineValue!3219 (value!98839 List!17835)) (IntegerValue!9657 (value!98840 (_ BitVec 32)) (text!22980 List!17835)) (IntegerValue!9658 (value!98841 Int) (text!22981 List!17835)) (Times!3219) (Or!3219) (Equal!3219) (Minus!3219) (Broken!16099 (value!98842 List!17835)) (And!3219) (Div!3219) (LessEqual!3219) (Mod!3219) (Concat!7676) (Not!3219) (Plus!3219) (SpaceValue!3219 (value!98843 List!17835)) (IntegerValue!9659 (value!98844 Int) (text!22982 List!17835)) (StringLiteralValue!9658 (text!22983 List!17835)) (FloatLiteralValue!6439 (text!22984 List!17835)) (BytesLiteralValue!3219 (value!98845 List!17835)) (CommentValue!6439 (value!98846 List!17835)) (StringLiteralValue!9659 (value!98847 List!17835)) (ErrorTokenValue!3219 (msg!3280 List!17835)) )
))
(declare-datatypes ((C!9088 0))(
  ( (C!9089 (val!5140 Int)) )
))
(declare-datatypes ((List!17836 0))(
  ( (Nil!17766) (Cons!17766 (h!23167 C!9088) (t!148801 List!17836)) )
))
(declare-datatypes ((IArray!11817 0))(
  ( (IArray!11818 (innerList!5966 List!17836)) )
))
(declare-datatypes ((Conc!5906 0))(
  ( (Node!5906 (left!14292 Conc!5906) (right!14622 Conc!5906) (csize!12042 Int) (cheight!6117 Int)) (Leaf!8691 (xs!8738 IArray!11817) (csize!12043 Int)) (Empty!5906) )
))
(declare-datatypes ((BalanceConc!11756 0))(
  ( (BalanceConc!11757 (c!264125 Conc!5906)) )
))
(declare-datatypes ((Regex!4457 0))(
  ( (ElementMatch!4457 (c!264126 C!9088)) (Concat!7677 (regOne!9426 Regex!4457) (regTwo!9426 Regex!4457)) (EmptyExpr!4457) (Star!4457 (reg!4786 Regex!4457)) (EmptyLang!4457) (Union!4457 (regOne!9427 Regex!4457) (regTwo!9427 Regex!4457)) )
))
(declare-datatypes ((String!20427 0))(
  ( (String!20428 (value!98848 String)) )
))
(declare-datatypes ((TokenValueInjection!6098 0))(
  ( (TokenValueInjection!6099 (toValue!4556 Int) (toChars!4415 Int)) )
))
(declare-datatypes ((Rule!6058 0))(
  ( (Rule!6059 (regex!3129 Regex!4457) (tag!3407 String!20427) (isSeparator!3129 Bool) (transformation!3129 TokenValueInjection!6098)) )
))
(declare-datatypes ((Token!5824 0))(
  ( (Token!5825 (value!98849 TokenValue!3219) (rule!4955 Rule!6058) (size!14238 Int) (originalCharacters!3943 List!17836)) )
))
(declare-datatypes ((List!17837 0))(
  ( (Nil!17767) (Cons!17767 (h!23168 Token!5824) (t!148802 List!17837)) )
))
(declare-fun tokens!457 () List!17837)

(get-info :version)

(assert (=> b!1622060 (= res!724583 (and (not ((_ is Nil!17767) tokens!457)) (not ((_ is Nil!17767) (t!148802 tokens!457)))))))

(declare-fun b!1622061 () Bool)

(declare-fun e!1040344 () Bool)

(declare-fun e!1040351 () Bool)

(assert (=> b!1622061 (= e!1040344 e!1040351)))

(declare-fun res!724588 () Bool)

(assert (=> b!1622061 (=> res!724588 e!1040351)))

(declare-fun lt!584162 () List!17836)

(declare-fun lt!584166 () Regex!4457)

(declare-fun lt!584169 () List!17836)

(declare-fun prefixMatch!392 (Regex!4457 List!17836) Bool)

(declare-fun ++!4711 (List!17836 List!17836) List!17836)

(assert (=> b!1622061 (= res!724588 (prefixMatch!392 lt!584166 (++!4711 lt!584169 lt!584162)))))

(declare-fun lt!584161 () BalanceConc!11756)

(declare-fun list!6963 (BalanceConc!11756) List!17836)

(assert (=> b!1622061 (= lt!584162 (list!6963 lt!584161))))

(declare-fun b!1622062 () Bool)

(declare-fun res!724593 () Bool)

(declare-fun e!1040347 () Bool)

(assert (=> b!1622062 (=> (not res!724593) (not e!1040347))))

(declare-datatypes ((tuple2!17318 0))(
  ( (tuple2!17319 (_1!10061 Token!5824) (_2!10061 List!17836)) )
))
(declare-fun lt!584155 () tuple2!17318)

(declare-fun isEmpty!10791 (List!17836) Bool)

(assert (=> b!1622062 (= res!724593 (isEmpty!10791 (_2!10061 lt!584155)))))

(declare-fun e!1040342 () Bool)

(declare-fun b!1622063 () Bool)

(declare-fun tp!472060 () Bool)

(declare-fun e!1040338 () Bool)

(declare-fun inv!23156 (Token!5824) Bool)

(assert (=> b!1622063 (= e!1040338 (and (inv!23156 (h!23168 tokens!457)) e!1040342 tp!472060))))

(declare-fun b!1622064 () Bool)

(declare-fun e!1040355 () Bool)

(declare-fun lt!584167 () List!17836)

(declare-fun head!3400 (List!17836) C!9088)

(assert (=> b!1622064 (= e!1040355 (= lt!584162 (Cons!17766 (head!3400 lt!584167) Nil!17766)))))

(declare-fun b!1622065 () Bool)

(declare-fun matchR!1956 (Regex!4457 List!17836) Bool)

(assert (=> b!1622065 (= e!1040347 (matchR!1956 (regex!3129 (rule!4955 (h!23168 tokens!457))) lt!584169))))

(declare-fun b!1622066 () Bool)

(declare-fun e!1040346 () Bool)

(declare-fun e!1040352 () Bool)

(assert (=> b!1622066 (= e!1040346 (not e!1040352))))

(declare-fun res!724584 () Bool)

(assert (=> b!1622066 (=> res!724584 e!1040352)))

(declare-fun lt!584156 () List!17837)

(assert (=> b!1622066 (= res!724584 (not (= lt!584156 (t!148802 tokens!457))))))

(declare-datatypes ((IArray!11819 0))(
  ( (IArray!11820 (innerList!5967 List!17837)) )
))
(declare-datatypes ((Conc!5907 0))(
  ( (Node!5907 (left!14293 Conc!5907) (right!14623 Conc!5907) (csize!12044 Int) (cheight!6118 Int)) (Leaf!8692 (xs!8739 IArray!11819) (csize!12045 Int)) (Empty!5907) )
))
(declare-datatypes ((BalanceConc!11758 0))(
  ( (BalanceConc!11759 (c!264127 Conc!5907)) )
))
(declare-datatypes ((tuple2!17320 0))(
  ( (tuple2!17321 (_1!10062 BalanceConc!11758) (_2!10062 BalanceConc!11756)) )
))
(declare-fun lt!584153 () tuple2!17320)

(declare-fun list!6964 (BalanceConc!11758) List!17837)

(assert (=> b!1622066 (= lt!584156 (list!6964 (_1!10062 lt!584153)))))

(declare-datatypes ((List!17838 0))(
  ( (Nil!17768) (Cons!17768 (h!23169 Rule!6058) (t!148803 List!17838)) )
))
(declare-fun rules!1846 () List!17838)

(declare-datatypes ((LexerInterface!2758 0))(
  ( (LexerInterfaceExt!2755 (__x!11741 Int)) (Lexer!2756) )
))
(declare-fun thiss!17113 () LexerInterface!2758)

(declare-datatypes ((Unit!28723 0))(
  ( (Unit!28724) )
))
(declare-fun lt!584159 () Unit!28723)

(declare-fun theoremInvertabilityWhenTokenListSeparable!203 (LexerInterface!2758 List!17838 List!17837) Unit!28723)

(assert (=> b!1622066 (= lt!584159 (theoremInvertabilityWhenTokenListSeparable!203 thiss!17113 rules!1846 (t!148802 tokens!457)))))

(declare-fun lt!584157 () List!17836)

(declare-fun isPrefix!1389 (List!17836 List!17836) Bool)

(assert (=> b!1622066 (isPrefix!1389 lt!584169 lt!584157)))

(declare-fun lt!584148 () Unit!28723)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!914 (List!17836 List!17836) Unit!28723)

(assert (=> b!1622066 (= lt!584148 (lemmaConcatTwoListThenFirstIsPrefix!914 lt!584169 lt!584167))))

(declare-fun e!1040339 () Bool)

(declare-fun tp!472055 () Bool)

(declare-fun b!1622067 () Bool)

(declare-fun e!1040341 () Bool)

(declare-fun inv!23153 (String!20427) Bool)

(declare-fun inv!23157 (TokenValueInjection!6098) Bool)

(assert (=> b!1622067 (= e!1040339 (and tp!472055 (inv!23153 (tag!3407 (rule!4955 (h!23168 tokens!457)))) (inv!23157 (transformation!3129 (rule!4955 (h!23168 tokens!457)))) e!1040341))))

(declare-fun b!1622068 () Bool)

(declare-fun e!1040353 () Bool)

(declare-fun e!1040350 () Bool)

(assert (=> b!1622068 (= e!1040353 e!1040350)))

(declare-fun res!724585 () Bool)

(assert (=> b!1622068 (=> res!724585 e!1040350)))

(declare-datatypes ((Option!3275 0))(
  ( (None!3274) (Some!3274 (v!24291 tuple2!17318)) )
))
(declare-fun lt!584145 () Option!3275)

(declare-fun isDefined!2642 (Option!3275) Bool)

(assert (=> b!1622068 (= res!724585 (not (isDefined!2642 lt!584145)))))

(declare-fun lt!584168 () Unit!28723)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!332 (LexerInterface!2758 List!17838 List!17836 List!17836) Unit!28723)

(assert (=> b!1622068 (= lt!584168 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!332 thiss!17113 rules!1846 lt!584169 lt!584167))))

(assert (=> b!1622069 (= e!1040341 (and tp!472058 tp!472053))))

(declare-fun tp!472059 () Bool)

(declare-fun b!1622070 () Bool)

(declare-fun inv!21 (TokenValue!3219) Bool)

(assert (=> b!1622070 (= e!1040342 (and (inv!21 (value!98849 (h!23168 tokens!457))) e!1040339 tp!472059))))

(declare-fun b!1622071 () Bool)

(declare-fun res!724601 () Bool)

(declare-fun e!1040340 () Bool)

(assert (=> b!1622071 (=> res!724601 e!1040340)))

(declare-fun separableTokensPredicate!700 (LexerInterface!2758 Token!5824 Token!5824 List!17838) Bool)

(assert (=> b!1622071 (= res!724601 (not (separableTokensPredicate!700 thiss!17113 (h!23168 tokens!457) (h!23168 (t!148802 tokens!457)) rules!1846)))))

(declare-fun b!1622072 () Bool)

(declare-fun res!724598 () Bool)

(assert (=> b!1622072 (=> (not res!724598) (not e!1040337))))

(declare-fun rulesProduceEachTokenIndividuallyList!960 (LexerInterface!2758 List!17838 List!17837) Bool)

(assert (=> b!1622072 (= res!724598 (rulesProduceEachTokenIndividuallyList!960 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1622073 () Bool)

(declare-fun res!724582 () Bool)

(assert (=> b!1622073 (=> res!724582 e!1040353)))

(declare-fun isEmpty!10792 (BalanceConc!11758) Bool)

(declare-fun lex!1242 (LexerInterface!2758 List!17838 BalanceConc!11756) tuple2!17320)

(declare-fun seqFromList!2007 (List!17836) BalanceConc!11756)

(assert (=> b!1622073 (= res!724582 (isEmpty!10792 (_1!10062 (lex!1242 thiss!17113 rules!1846 (seqFromList!2007 lt!584169)))))))

(declare-fun b!1622075 () Bool)

(declare-fun e!1040336 () Bool)

(assert (=> b!1622075 (= e!1040336 true)))

(declare-fun lt!584170 () Bool)

(declare-fun lt!584164 () List!17836)

(assert (=> b!1622075 (= lt!584170 (prefixMatch!392 lt!584166 (++!4711 (originalCharacters!3943 (h!23168 tokens!457)) lt!584164)))))

(assert (=> b!1622075 e!1040347))

(declare-fun res!724586 () Bool)

(assert (=> b!1622075 (=> (not res!724586) (not e!1040347))))

(assert (=> b!1622075 (= res!724586 (= (_1!10061 lt!584155) (h!23168 tokens!457)))))

(declare-fun lt!584165 () Option!3275)

(declare-fun get!5110 (Option!3275) tuple2!17318)

(assert (=> b!1622075 (= lt!584155 (get!5110 lt!584165))))

(assert (=> b!1622075 (isDefined!2642 lt!584165)))

(declare-fun maxPrefix!1322 (LexerInterface!2758 List!17838 List!17836) Option!3275)

(assert (=> b!1622075 (= lt!584165 (maxPrefix!1322 thiss!17113 rules!1846 lt!584169))))

(assert (=> b!1622075 (isDefined!2642 (maxPrefix!1322 thiss!17113 rules!1846 (originalCharacters!3943 (h!23168 tokens!457))))))

(declare-fun b!1622074 () Bool)

(assert (=> b!1622074 (= e!1040350 e!1040344)))

(declare-fun res!724600 () Bool)

(assert (=> b!1622074 (=> res!724600 e!1040344)))

(declare-fun lt!584160 () BalanceConc!11756)

(declare-fun prefixMatchZipperSequence!511 (Regex!4457 BalanceConc!11756) Bool)

(declare-fun ++!4712 (BalanceConc!11756 BalanceConc!11756) BalanceConc!11756)

(assert (=> b!1622074 (= res!724600 (prefixMatchZipperSequence!511 lt!584166 (++!4712 lt!584160 lt!584161)))))

(declare-fun singletonSeq!1536 (C!9088) BalanceConc!11756)

(declare-fun apply!4512 (BalanceConc!11756 Int) C!9088)

(declare-fun charsOf!1778 (Token!5824) BalanceConc!11756)

(assert (=> b!1622074 (= lt!584161 (singletonSeq!1536 (apply!4512 (charsOf!1778 (h!23168 (t!148802 tokens!457))) 0)))))

(declare-fun rulesRegex!519 (LexerInterface!2758 List!17838) Regex!4457)

(assert (=> b!1622074 (= lt!584166 (rulesRegex!519 thiss!17113 rules!1846))))

(declare-fun res!724595 () Bool)

(assert (=> start!153922 (=> (not res!724595) (not e!1040337))))

(assert (=> start!153922 (= res!724595 ((_ is Lexer!2756) thiss!17113))))

(assert (=> start!153922 e!1040337))

(assert (=> start!153922 true))

(declare-fun e!1040343 () Bool)

(assert (=> start!153922 e!1040343))

(assert (=> start!153922 e!1040338))

(declare-fun b!1622076 () Bool)

(assert (=> b!1622076 (= e!1040352 e!1040340)))

(declare-fun res!724597 () Bool)

(assert (=> b!1622076 (=> res!724597 e!1040340)))

(declare-fun lt!584163 () List!17837)

(declare-fun lt!584154 () List!17837)

(assert (=> b!1622076 (= res!724597 (or (not (= lt!584156 lt!584154)) (not (= lt!584154 lt!584163))))))

(declare-fun lt!584158 () BalanceConc!11758)

(assert (=> b!1622076 (= lt!584154 (list!6964 lt!584158))))

(assert (=> b!1622076 (= lt!584156 lt!584163)))

(declare-fun prepend!649 (BalanceConc!11758 Token!5824) BalanceConc!11758)

(declare-fun seqFromList!2008 (List!17837) BalanceConc!11758)

(assert (=> b!1622076 (= lt!584163 (list!6964 (prepend!649 (seqFromList!2008 (t!148802 (t!148802 tokens!457))) (h!23168 (t!148802 tokens!457)))))))

(declare-fun lt!584151 () Unit!28723)

(declare-fun seqFromListBHdTlConstructive!206 (Token!5824 List!17837 BalanceConc!11758) Unit!28723)

(assert (=> b!1622076 (= lt!584151 (seqFromListBHdTlConstructive!206 (h!23168 (t!148802 tokens!457)) (t!148802 (t!148802 tokens!457)) (_1!10062 lt!584153)))))

(declare-fun b!1622077 () Bool)

(declare-fun res!724602 () Bool)

(assert (=> b!1622077 (=> (not res!724602) (not e!1040337))))

(declare-fun isEmpty!10793 (List!17838) Bool)

(assert (=> b!1622077 (= res!724602 (not (isEmpty!10793 rules!1846)))))

(declare-fun b!1622078 () Bool)

(assert (=> b!1622078 (= e!1040351 e!1040336)))

(declare-fun res!724587 () Bool)

(assert (=> b!1622078 (=> res!724587 e!1040336)))

(declare-datatypes ((tuple2!17322 0))(
  ( (tuple2!17323 (_1!10063 Token!5824) (_2!10063 BalanceConc!11756)) )
))
(declare-datatypes ((Option!3276 0))(
  ( (None!3275) (Some!3275 (v!24292 tuple2!17322)) )
))
(declare-fun isDefined!2643 (Option!3276) Bool)

(declare-fun maxPrefixZipperSequence!653 (LexerInterface!2758 List!17838 BalanceConc!11756) Option!3276)

(assert (=> b!1622078 (= res!724587 (not (isDefined!2643 (maxPrefixZipperSequence!653 thiss!17113 rules!1846 (seqFromList!2007 (originalCharacters!3943 (h!23168 tokens!457)))))))))

(assert (=> b!1622078 (= lt!584162 lt!584164)))

(declare-fun lt!584149 () BalanceConc!11756)

(declare-fun head!3401 (BalanceConc!11756) C!9088)

(assert (=> b!1622078 (= lt!584164 (Cons!17766 (head!3401 lt!584149) Nil!17766))))

(assert (=> b!1622078 e!1040355))

(declare-fun res!724590 () Bool)

(assert (=> b!1622078 (=> (not res!724590) (not e!1040355))))

(assert (=> b!1622078 (= res!724590 (= lt!584169 (originalCharacters!3943 (h!23168 tokens!457))))))

(declare-fun b!1622079 () Bool)

(assert (=> b!1622079 (= e!1040337 e!1040346)))

(declare-fun res!724589 () Bool)

(assert (=> b!1622079 (=> (not res!724589) (not e!1040346))))

(declare-fun lt!584171 () List!17836)

(assert (=> b!1622079 (= res!724589 (= lt!584171 lt!584157))))

(assert (=> b!1622079 (= lt!584157 (++!4711 lt!584169 lt!584167))))

(declare-fun lt!584147 () BalanceConc!11756)

(assert (=> b!1622079 (= lt!584171 (list!6963 lt!584147))))

(assert (=> b!1622079 (= lt!584167 (list!6963 lt!584149))))

(assert (=> b!1622079 (= lt!584169 (list!6963 lt!584160))))

(assert (=> b!1622079 (= lt!584160 (charsOf!1778 (h!23168 tokens!457)))))

(assert (=> b!1622079 (= lt!584153 (lex!1242 thiss!17113 rules!1846 lt!584149))))

(declare-fun print!1289 (LexerInterface!2758 BalanceConc!11758) BalanceConc!11756)

(assert (=> b!1622079 (= lt!584149 (print!1289 thiss!17113 lt!584158))))

(assert (=> b!1622079 (= lt!584158 (seqFromList!2008 (t!148802 tokens!457)))))

(assert (=> b!1622079 (= lt!584147 (print!1289 thiss!17113 (seqFromList!2008 tokens!457)))))

(declare-fun b!1622080 () Bool)

(declare-fun res!724592 () Bool)

(assert (=> b!1622080 (=> (not res!724592) (not e!1040337))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!451 (LexerInterface!2758 List!17837 List!17838) Bool)

(assert (=> b!1622080 (= res!724592 (tokensListTwoByTwoPredicateSeparableList!451 thiss!17113 tokens!457 rules!1846))))

(declare-fun tp!472054 () Bool)

(declare-fun b!1622081 () Bool)

(declare-fun e!1040349 () Bool)

(assert (=> b!1622081 (= e!1040349 (and tp!472054 (inv!23153 (tag!3407 (h!23169 rules!1846))) (inv!23157 (transformation!3129 (h!23169 rules!1846))) e!1040348))))

(declare-fun b!1622082 () Bool)

(declare-fun res!724596 () Bool)

(assert (=> b!1622082 (=> (not res!724596) (not e!1040355))))

(assert (=> b!1622082 (= res!724596 (= lt!584162 (Cons!17766 (head!3400 (originalCharacters!3943 (h!23168 (t!148802 tokens!457)))) Nil!17766)))))

(declare-fun b!1622083 () Bool)

(declare-fun res!724594 () Bool)

(assert (=> b!1622083 (=> res!724594 e!1040353)))

(declare-fun rulesProduceIndividualToken!1410 (LexerInterface!2758 List!17838 Token!5824) Bool)

(assert (=> b!1622083 (= res!724594 (not (rulesProduceIndividualToken!1410 thiss!17113 rules!1846 (h!23168 tokens!457))))))

(declare-fun b!1622084 () Bool)

(declare-fun tp!472056 () Bool)

(assert (=> b!1622084 (= e!1040343 (and e!1040349 tp!472056))))

(declare-fun b!1622085 () Bool)

(assert (=> b!1622085 (= e!1040340 e!1040353)))

(declare-fun res!724599 () Bool)

(assert (=> b!1622085 (=> res!724599 e!1040353)))

(declare-fun lt!584152 () List!17836)

(declare-fun lt!584146 () List!17836)

(assert (=> b!1622085 (= res!724599 (or (not (= lt!584146 lt!584152)) (not (= lt!584152 lt!584169)) (not (= lt!584146 lt!584169))))))

(declare-fun printList!873 (LexerInterface!2758 List!17837) List!17836)

(assert (=> b!1622085 (= lt!584152 (printList!873 thiss!17113 (Cons!17767 (h!23168 tokens!457) Nil!17767)))))

(declare-fun lt!584172 () BalanceConc!11756)

(assert (=> b!1622085 (= lt!584146 (list!6963 lt!584172))))

(declare-fun lt!584150 () BalanceConc!11758)

(declare-fun printTailRec!811 (LexerInterface!2758 BalanceConc!11758 Int BalanceConc!11756) BalanceConc!11756)

(assert (=> b!1622085 (= lt!584172 (printTailRec!811 thiss!17113 lt!584150 0 (BalanceConc!11757 Empty!5906)))))

(assert (=> b!1622085 (= lt!584172 (print!1289 thiss!17113 lt!584150))))

(declare-fun singletonSeq!1537 (Token!5824) BalanceConc!11758)

(assert (=> b!1622085 (= lt!584150 (singletonSeq!1537 (h!23168 tokens!457)))))

(assert (=> b!1622085 (= lt!584145 (maxPrefix!1322 thiss!17113 rules!1846 lt!584171))))

(declare-fun b!1622086 () Bool)

(declare-fun res!724591 () Bool)

(assert (=> b!1622086 (=> (not res!724591) (not e!1040337))))

(declare-fun rulesInvariant!2427 (LexerInterface!2758 List!17838) Bool)

(assert (=> b!1622086 (= res!724591 (rulesInvariant!2427 thiss!17113 rules!1846))))

(assert (= (and start!153922 res!724595) b!1622077))

(assert (= (and b!1622077 res!724602) b!1622086))

(assert (= (and b!1622086 res!724591) b!1622072))

(assert (= (and b!1622072 res!724598) b!1622080))

(assert (= (and b!1622080 res!724592) b!1622060))

(assert (= (and b!1622060 res!724583) b!1622079))

(assert (= (and b!1622079 res!724589) b!1622066))

(assert (= (and b!1622066 (not res!724584)) b!1622076))

(assert (= (and b!1622076 (not res!724597)) b!1622071))

(assert (= (and b!1622071 (not res!724601)) b!1622085))

(assert (= (and b!1622085 (not res!724599)) b!1622083))

(assert (= (and b!1622083 (not res!724594)) b!1622073))

(assert (= (and b!1622073 (not res!724582)) b!1622068))

(assert (= (and b!1622068 (not res!724585)) b!1622074))

(assert (= (and b!1622074 (not res!724600)) b!1622061))

(assert (= (and b!1622061 (not res!724588)) b!1622078))

(assert (= (and b!1622078 res!724590) b!1622082))

(assert (= (and b!1622082 res!724596) b!1622064))

(assert (= (and b!1622078 (not res!724587)) b!1622075))

(assert (= (and b!1622075 res!724586) b!1622062))

(assert (= (and b!1622062 res!724593) b!1622065))

(assert (= b!1622081 b!1622059))

(assert (= b!1622084 b!1622081))

(assert (= (and start!153922 ((_ is Cons!17768) rules!1846)) b!1622084))

(assert (= b!1622067 b!1622069))

(assert (= b!1622070 b!1622067))

(assert (= b!1622063 b!1622070))

(assert (= (and start!153922 ((_ is Cons!17767) tokens!457)) b!1622063))

(declare-fun m!1947541 () Bool)

(assert (=> b!1622068 m!1947541))

(declare-fun m!1947543 () Bool)

(assert (=> b!1622068 m!1947543))

(declare-fun m!1947545 () Bool)

(assert (=> b!1622083 m!1947545))

(declare-fun m!1947547 () Bool)

(assert (=> b!1622077 m!1947547))

(declare-fun m!1947549 () Bool)

(assert (=> b!1622065 m!1947549))

(declare-fun m!1947551 () Bool)

(assert (=> b!1622080 m!1947551))

(declare-fun m!1947553 () Bool)

(assert (=> b!1622072 m!1947553))

(declare-fun m!1947555 () Bool)

(assert (=> b!1622074 m!1947555))

(declare-fun m!1947557 () Bool)

(assert (=> b!1622074 m!1947557))

(assert (=> b!1622074 m!1947557))

(declare-fun m!1947559 () Bool)

(assert (=> b!1622074 m!1947559))

(declare-fun m!1947561 () Bool)

(assert (=> b!1622074 m!1947561))

(declare-fun m!1947563 () Bool)

(assert (=> b!1622074 m!1947563))

(declare-fun m!1947565 () Bool)

(assert (=> b!1622074 m!1947565))

(assert (=> b!1622074 m!1947561))

(assert (=> b!1622074 m!1947565))

(declare-fun m!1947567 () Bool)

(assert (=> b!1622081 m!1947567))

(declare-fun m!1947569 () Bool)

(assert (=> b!1622081 m!1947569))

(declare-fun m!1947571 () Bool)

(assert (=> b!1622064 m!1947571))

(declare-fun m!1947573 () Bool)

(assert (=> b!1622067 m!1947573))

(declare-fun m!1947575 () Bool)

(assert (=> b!1622067 m!1947575))

(declare-fun m!1947577 () Bool)

(assert (=> b!1622085 m!1947577))

(declare-fun m!1947579 () Bool)

(assert (=> b!1622085 m!1947579))

(declare-fun m!1947581 () Bool)

(assert (=> b!1622085 m!1947581))

(declare-fun m!1947583 () Bool)

(assert (=> b!1622085 m!1947583))

(declare-fun m!1947585 () Bool)

(assert (=> b!1622085 m!1947585))

(declare-fun m!1947587 () Bool)

(assert (=> b!1622085 m!1947587))

(declare-fun m!1947589 () Bool)

(assert (=> b!1622062 m!1947589))

(declare-fun m!1947591 () Bool)

(assert (=> b!1622076 m!1947591))

(declare-fun m!1947593 () Bool)

(assert (=> b!1622076 m!1947593))

(declare-fun m!1947595 () Bool)

(assert (=> b!1622076 m!1947595))

(declare-fun m!1947597 () Bool)

(assert (=> b!1622076 m!1947597))

(assert (=> b!1622076 m!1947593))

(declare-fun m!1947599 () Bool)

(assert (=> b!1622076 m!1947599))

(assert (=> b!1622076 m!1947597))

(declare-fun m!1947601 () Bool)

(assert (=> b!1622070 m!1947601))

(declare-fun m!1947603 () Bool)

(assert (=> b!1622073 m!1947603))

(assert (=> b!1622073 m!1947603))

(declare-fun m!1947605 () Bool)

(assert (=> b!1622073 m!1947605))

(declare-fun m!1947607 () Bool)

(assert (=> b!1622073 m!1947607))

(declare-fun m!1947609 () Bool)

(assert (=> b!1622086 m!1947609))

(declare-fun m!1947611 () Bool)

(assert (=> b!1622063 m!1947611))

(declare-fun m!1947613 () Bool)

(assert (=> b!1622075 m!1947613))

(declare-fun m!1947615 () Bool)

(assert (=> b!1622075 m!1947615))

(declare-fun m!1947617 () Bool)

(assert (=> b!1622075 m!1947617))

(declare-fun m!1947619 () Bool)

(assert (=> b!1622075 m!1947619))

(assert (=> b!1622075 m!1947617))

(declare-fun m!1947621 () Bool)

(assert (=> b!1622075 m!1947621))

(declare-fun m!1947623 () Bool)

(assert (=> b!1622075 m!1947623))

(assert (=> b!1622075 m!1947621))

(declare-fun m!1947625 () Bool)

(assert (=> b!1622075 m!1947625))

(declare-fun m!1947627 () Bool)

(assert (=> b!1622079 m!1947627))

(declare-fun m!1947629 () Bool)

(assert (=> b!1622079 m!1947629))

(declare-fun m!1947631 () Bool)

(assert (=> b!1622079 m!1947631))

(declare-fun m!1947633 () Bool)

(assert (=> b!1622079 m!1947633))

(declare-fun m!1947635 () Bool)

(assert (=> b!1622079 m!1947635))

(declare-fun m!1947637 () Bool)

(assert (=> b!1622079 m!1947637))

(declare-fun m!1947639 () Bool)

(assert (=> b!1622079 m!1947639))

(declare-fun m!1947641 () Bool)

(assert (=> b!1622079 m!1947641))

(declare-fun m!1947643 () Bool)

(assert (=> b!1622079 m!1947643))

(assert (=> b!1622079 m!1947639))

(declare-fun m!1947645 () Bool)

(assert (=> b!1622079 m!1947645))

(declare-fun m!1947647 () Bool)

(assert (=> b!1622082 m!1947647))

(declare-fun m!1947649 () Bool)

(assert (=> b!1622066 m!1947649))

(declare-fun m!1947651 () Bool)

(assert (=> b!1622066 m!1947651))

(declare-fun m!1947653 () Bool)

(assert (=> b!1622066 m!1947653))

(declare-fun m!1947655 () Bool)

(assert (=> b!1622066 m!1947655))

(declare-fun m!1947657 () Bool)

(assert (=> b!1622071 m!1947657))

(declare-fun m!1947659 () Bool)

(assert (=> b!1622061 m!1947659))

(assert (=> b!1622061 m!1947659))

(declare-fun m!1947661 () Bool)

(assert (=> b!1622061 m!1947661))

(declare-fun m!1947663 () Bool)

(assert (=> b!1622061 m!1947663))

(declare-fun m!1947665 () Bool)

(assert (=> b!1622078 m!1947665))

(assert (=> b!1622078 m!1947665))

(declare-fun m!1947667 () Bool)

(assert (=> b!1622078 m!1947667))

(assert (=> b!1622078 m!1947667))

(declare-fun m!1947669 () Bool)

(assert (=> b!1622078 m!1947669))

(declare-fun m!1947671 () Bool)

(assert (=> b!1622078 m!1947671))

(check-sat b_and!115047 (not b!1622070) (not b!1622082) (not b!1622072) (not b!1622085) (not b!1622073) (not b!1622081) (not b!1622079) (not b!1622074) (not b_next!44429) b_and!115049 (not b!1622063) (not b!1622078) (not b!1622064) b_and!115051 (not b!1622076) (not b!1622083) (not b!1622084) (not b_next!44423) (not b!1622086) (not b!1622065) (not b!1622080) (not b!1622068) (not b!1622067) (not b!1622066) (not b_next!44425) (not b!1622075) b_and!115045 (not b!1622061) (not b_next!44427) (not b!1622062) (not b!1622071) (not b!1622077))
(check-sat b_and!115047 (not b_next!44429) b_and!115049 (not b_next!44427) b_and!115051 (not b_next!44423) (not b_next!44425) b_and!115045)
