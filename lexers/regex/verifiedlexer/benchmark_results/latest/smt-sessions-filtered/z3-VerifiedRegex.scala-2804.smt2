; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!156130 () Bool)

(assert start!156130)

(declare-fun b!1635857 () Bool)

(declare-fun b_free!44215 () Bool)

(declare-fun b_next!44919 () Bool)

(assert (=> b!1635857 (= b_free!44215 (not b_next!44919))))

(declare-fun tp!474392 () Bool)

(declare-fun b_and!115957 () Bool)

(assert (=> b!1635857 (= tp!474392 b_and!115957)))

(declare-fun b_free!44217 () Bool)

(declare-fun b_next!44921 () Bool)

(assert (=> b!1635857 (= b_free!44217 (not b_next!44921))))

(declare-fun tp!474393 () Bool)

(declare-fun b_and!115959 () Bool)

(assert (=> b!1635857 (= tp!474393 b_and!115959)))

(declare-fun b!1635861 () Bool)

(declare-fun b_free!44219 () Bool)

(declare-fun b_next!44923 () Bool)

(assert (=> b!1635861 (= b_free!44219 (not b_next!44923))))

(declare-fun tp!474397 () Bool)

(declare-fun b_and!115961 () Bool)

(assert (=> b!1635861 (= tp!474397 b_and!115961)))

(declare-fun b_free!44221 () Bool)

(declare-fun b_next!44925 () Bool)

(assert (=> b!1635861 (= b_free!44221 (not b_next!44925))))

(declare-fun tp!474395 () Bool)

(declare-fun b_and!115963 () Bool)

(assert (=> b!1635861 (= tp!474395 b_and!115963)))

(declare-fun b!1635852 () Bool)

(declare-fun e!1049083 () Bool)

(declare-fun e!1049078 () Bool)

(assert (=> b!1635852 (= e!1049083 e!1049078)))

(declare-fun res!732446 () Bool)

(assert (=> b!1635852 (=> res!732446 e!1049078)))

(declare-datatypes ((C!9168 0))(
  ( (C!9169 (val!5180 Int)) )
))
(declare-datatypes ((List!18055 0))(
  ( (Nil!17985) (Cons!17985 (h!23386 C!9168) (t!149722 List!18055)) )
))
(declare-fun lt!597765 () List!18055)

(declare-datatypes ((Regex!4497 0))(
  ( (ElementMatch!4497 (c!266187 C!9168)) (Concat!7756 (regOne!9506 Regex!4497) (regTwo!9506 Regex!4497)) (EmptyExpr!4497) (Star!4497 (reg!4826 Regex!4497)) (EmptyLang!4497) (Union!4497 (regOne!9507 Regex!4497) (regTwo!9507 Regex!4497)) )
))
(declare-fun lt!597758 () Regex!4497)

(declare-datatypes ((List!18056 0))(
  ( (Nil!17986) (Cons!17986 (h!23387 (_ BitVec 16)) (t!149723 List!18056)) )
))
(declare-datatypes ((TokenValue!3259 0))(
  ( (FloatLiteralValue!6518 (text!23258 List!18056)) (TokenValueExt!3258 (__x!11820 Int)) (Broken!16295 (value!99963 List!18056)) (Object!3328) (End!3259) (Def!3259) (Underscore!3259) (Match!3259) (Else!3259) (Error!3259) (Case!3259) (If!3259) (Extends!3259) (Abstract!3259) (Class!3259) (Val!3259) (DelimiterValue!6518 (del!3319 List!18056)) (KeywordValue!3265 (value!99964 List!18056)) (CommentValue!6518 (value!99965 List!18056)) (WhitespaceValue!6518 (value!99966 List!18056)) (IndentationValue!3259 (value!99967 List!18056)) (String!20626) (Int32!3259) (Broken!16296 (value!99968 List!18056)) (Boolean!3260) (Unit!29423) (OperatorValue!3262 (op!3319 List!18056)) (IdentifierValue!6518 (value!99969 List!18056)) (IdentifierValue!6519 (value!99970 List!18056)) (WhitespaceValue!6519 (value!99971 List!18056)) (True!6518) (False!6518) (Broken!16297 (value!99972 List!18056)) (Broken!16298 (value!99973 List!18056)) (True!6519) (RightBrace!3259) (RightBracket!3259) (Colon!3259) (Null!3259) (Comma!3259) (LeftBracket!3259) (False!6519) (LeftBrace!3259) (ImaginaryLiteralValue!3259 (text!23259 List!18056)) (StringLiteralValue!9777 (value!99974 List!18056)) (EOFValue!3259 (value!99975 List!18056)) (IdentValue!3259 (value!99976 List!18056)) (DelimiterValue!6519 (value!99977 List!18056)) (DedentValue!3259 (value!99978 List!18056)) (NewLineValue!3259 (value!99979 List!18056)) (IntegerValue!9777 (value!99980 (_ BitVec 32)) (text!23260 List!18056)) (IntegerValue!9778 (value!99981 Int) (text!23261 List!18056)) (Times!3259) (Or!3259) (Equal!3259) (Minus!3259) (Broken!16299 (value!99982 List!18056)) (And!3259) (Div!3259) (LessEqual!3259) (Mod!3259) (Concat!7757) (Not!3259) (Plus!3259) (SpaceValue!3259 (value!99983 List!18056)) (IntegerValue!9779 (value!99984 Int) (text!23262 List!18056)) (StringLiteralValue!9778 (text!23263 List!18056)) (FloatLiteralValue!6519 (text!23264 List!18056)) (BytesLiteralValue!3259 (value!99985 List!18056)) (CommentValue!6519 (value!99986 List!18056)) (StringLiteralValue!9779 (value!99987 List!18056)) (ErrorTokenValue!3259 (msg!3320 List!18056)) )
))
(declare-datatypes ((IArray!11977 0))(
  ( (IArray!11978 (innerList!6046 List!18055)) )
))
(declare-datatypes ((Conc!5986 0))(
  ( (Node!5986 (left!14432 Conc!5986) (right!14762 Conc!5986) (csize!12202 Int) (cheight!6197 Int)) (Leaf!8791 (xs!8822 IArray!11977) (csize!12203 Int)) (Empty!5986) )
))
(declare-datatypes ((BalanceConc!11916 0))(
  ( (BalanceConc!11917 (c!266188 Conc!5986)) )
))
(declare-datatypes ((String!20627 0))(
  ( (String!20628 (value!99988 String)) )
))
(declare-datatypes ((TokenValueInjection!6178 0))(
  ( (TokenValueInjection!6179 (toValue!4600 Int) (toChars!4459 Int)) )
))
(declare-datatypes ((Rule!6138 0))(
  ( (Rule!6139 (regex!3169 Regex!4497) (tag!3449 String!20627) (isSeparator!3169 Bool) (transformation!3169 TokenValueInjection!6178)) )
))
(declare-datatypes ((Token!5904 0))(
  ( (Token!5905 (value!99989 TokenValue!3259) (rule!5011 Rule!6138) (size!14348 Int) (originalCharacters!3983 List!18055)) )
))
(declare-datatypes ((List!18057 0))(
  ( (Nil!17987) (Cons!17987 (h!23388 Token!5904) (t!149724 List!18057)) )
))
(declare-fun tokens!457 () List!18057)

(declare-fun prefixMatch!432 (Regex!4497 List!18055) Bool)

(declare-fun ++!4815 (List!18055 List!18055) List!18055)

(assert (=> b!1635852 (= res!732446 (prefixMatch!432 lt!597758 (++!4815 (originalCharacters!3983 (h!23388 tokens!457)) lt!597765)))))

(declare-fun e!1049075 () Bool)

(assert (=> b!1635852 e!1049075))

(declare-fun res!732457 () Bool)

(assert (=> b!1635852 (=> (not res!732457) (not e!1049075))))

(declare-datatypes ((tuple2!17606 0))(
  ( (tuple2!17607 (_1!10205 Token!5904) (_2!10205 List!18055)) )
))
(declare-fun lt!597763 () tuple2!17606)

(assert (=> b!1635852 (= res!732457 (= (_1!10205 lt!597763) (h!23388 tokens!457)))))

(declare-datatypes ((Option!3375 0))(
  ( (None!3374) (Some!3374 (v!24457 tuple2!17606)) )
))
(declare-fun lt!597749 () Option!3375)

(declare-fun get!5211 (Option!3375) tuple2!17606)

(assert (=> b!1635852 (= lt!597763 (get!5211 lt!597749))))

(declare-fun isDefined!2742 (Option!3375) Bool)

(assert (=> b!1635852 (isDefined!2742 lt!597749)))

(declare-fun lt!597748 () List!18055)

(declare-datatypes ((List!18058 0))(
  ( (Nil!17988) (Cons!17988 (h!23389 Rule!6138) (t!149725 List!18058)) )
))
(declare-fun rules!1846 () List!18058)

(declare-datatypes ((LexerInterface!2798 0))(
  ( (LexerInterfaceExt!2795 (__x!11821 Int)) (Lexer!2796) )
))
(declare-fun thiss!17113 () LexerInterface!2798)

(declare-fun maxPrefix!1362 (LexerInterface!2798 List!18058 List!18055) Option!3375)

(assert (=> b!1635852 (= lt!597749 (maxPrefix!1362 thiss!17113 rules!1846 lt!597748))))

(assert (=> b!1635852 (isDefined!2742 (maxPrefix!1362 thiss!17113 rules!1846 (originalCharacters!3983 (h!23388 tokens!457))))))

(declare-fun b!1635853 () Bool)

(declare-fun res!732458 () Bool)

(declare-fun e!1049090 () Bool)

(assert (=> b!1635853 (=> res!732458 e!1049090)))

(declare-fun lt!597752 () List!18055)

(declare-fun maxPrefixZipper!326 (LexerInterface!2798 List!18058 List!18055) Option!3375)

(assert (=> b!1635853 (= res!732458 (not (= (h!23388 tokens!457) (_1!10205 (get!5211 (maxPrefixZipper!326 thiss!17113 rules!1846 lt!597752))))))))

(declare-fun b!1635854 () Bool)

(declare-fun res!732447 () Bool)

(declare-fun e!1049091 () Bool)

(assert (=> b!1635854 (=> (not res!732447) (not e!1049091))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!491 (LexerInterface!2798 List!18057 List!18058) Bool)

(assert (=> b!1635854 (= res!732447 (tokensListTwoByTwoPredicateSeparableList!491 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1635855 () Bool)

(assert (=> b!1635855 (= e!1049078 e!1049090)))

(declare-fun res!732459 () Bool)

(assert (=> b!1635855 (=> res!732459 e!1049090)))

(declare-fun lt!597751 () List!18055)

(declare-fun lt!597759 () tuple2!17606)

(assert (=> b!1635855 (= res!732459 (or (not (= (_1!10205 lt!597759) (h!23388 tokens!457))) (not (= (_2!10205 lt!597759) lt!597751))))))

(declare-fun lt!597764 () Option!3375)

(assert (=> b!1635855 (= lt!597759 (get!5211 lt!597764))))

(declare-datatypes ((Unit!29424 0))(
  ( (Unit!29425) )
))
(declare-fun lt!597767 () Unit!29424)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!134 (LexerInterface!2798 List!18058 Token!5904 Rule!6138 List!18055) Unit!29424)

(assert (=> b!1635855 (= lt!597767 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!134 thiss!17113 rules!1846 (h!23388 tokens!457) (rule!5011 (h!23388 tokens!457)) lt!597751))))

(declare-fun b!1635856 () Bool)

(declare-fun res!732452 () Bool)

(assert (=> b!1635856 (=> (not res!732452) (not e!1049075))))

(declare-fun isEmpty!11019 (List!18055) Bool)

(assert (=> b!1635856 (= res!732452 (isEmpty!11019 (_2!10205 lt!597763)))))

(declare-fun e!1049072 () Bool)

(assert (=> b!1635857 (= e!1049072 (and tp!474392 tp!474393))))

(declare-fun b!1635858 () Bool)

(declare-fun res!732443 () Bool)

(assert (=> b!1635858 (=> res!732443 e!1049078)))

(assert (=> b!1635858 (= res!732443 (prefixMatch!432 lt!597758 (++!4815 lt!597748 lt!597765)))))

(declare-fun e!1049084 () Bool)

(declare-fun b!1635859 () Bool)

(declare-fun e!1049085 () Bool)

(declare-fun tp!474399 () Bool)

(declare-fun inv!21 (TokenValue!3259) Bool)

(assert (=> b!1635859 (= e!1049085 (and (inv!21 (value!99989 (h!23388 tokens!457))) e!1049084 tp!474399))))

(declare-fun b!1635860 () Bool)

(declare-fun res!732444 () Bool)

(assert (=> b!1635860 (=> (not res!732444) (not e!1049091))))

(declare-fun rulesInvariant!2467 (LexerInterface!2798 List!18058) Bool)

(assert (=> b!1635860 (= res!732444 (rulesInvariant!2467 thiss!17113 rules!1846))))

(declare-fun e!1049087 () Bool)

(assert (=> b!1635861 (= e!1049087 (and tp!474397 tp!474395))))

(declare-fun b!1635862 () Bool)

(declare-fun res!732449 () Bool)

(assert (=> b!1635862 (=> (not res!732449) (not e!1049091))))

(declare-fun isEmpty!11020 (List!18058) Bool)

(assert (=> b!1635862 (= res!732449 (not (isEmpty!11020 rules!1846)))))

(declare-fun b!1635863 () Bool)

(assert (=> b!1635863 (= e!1049090 true)))

(declare-fun lt!597757 () Bool)

(declare-fun rulesValidInductive!990 (LexerInterface!2798 List!18058) Bool)

(assert (=> b!1635863 (= lt!597757 (rulesValidInductive!990 thiss!17113 rules!1846))))

(declare-fun res!732453 () Bool)

(assert (=> start!156130 (=> (not res!732453) (not e!1049091))))

(get-info :version)

(assert (=> start!156130 (= res!732453 ((_ is Lexer!2796) thiss!17113))))

(assert (=> start!156130 e!1049091))

(assert (=> start!156130 true))

(declare-fun e!1049086 () Bool)

(assert (=> start!156130 e!1049086))

(declare-fun e!1049080 () Bool)

(assert (=> start!156130 e!1049080))

(declare-fun b!1635864 () Bool)

(declare-fun e!1049092 () Bool)

(declare-fun e!1049077 () Bool)

(assert (=> b!1635864 (= e!1049092 e!1049077)))

(declare-fun res!732448 () Bool)

(assert (=> b!1635864 (=> res!732448 e!1049077)))

(declare-fun lt!597746 () List!18055)

(declare-fun lt!597755 () List!18055)

(assert (=> b!1635864 (= res!732448 (or (not (= lt!597755 lt!597746)) (not (= lt!597746 lt!597748)) (not (= lt!597755 lt!597748))))))

(declare-fun printList!913 (LexerInterface!2798 List!18057) List!18055)

(assert (=> b!1635864 (= lt!597746 (printList!913 thiss!17113 (Cons!17987 (h!23388 tokens!457) Nil!17987)))))

(declare-fun lt!597756 () BalanceConc!11916)

(declare-fun list!7087 (BalanceConc!11916) List!18055)

(assert (=> b!1635864 (= lt!597755 (list!7087 lt!597756))))

(declare-datatypes ((IArray!11979 0))(
  ( (IArray!11980 (innerList!6047 List!18057)) )
))
(declare-datatypes ((Conc!5987 0))(
  ( (Node!5987 (left!14433 Conc!5987) (right!14763 Conc!5987) (csize!12204 Int) (cheight!6198 Int)) (Leaf!8792 (xs!8823 IArray!11979) (csize!12205 Int)) (Empty!5987) )
))
(declare-datatypes ((BalanceConc!11918 0))(
  ( (BalanceConc!11919 (c!266189 Conc!5987)) )
))
(declare-fun lt!597741 () BalanceConc!11918)

(declare-fun printTailRec!851 (LexerInterface!2798 BalanceConc!11918 Int BalanceConc!11916) BalanceConc!11916)

(assert (=> b!1635864 (= lt!597756 (printTailRec!851 thiss!17113 lt!597741 0 (BalanceConc!11917 Empty!5986)))))

(declare-fun print!1329 (LexerInterface!2798 BalanceConc!11918) BalanceConc!11916)

(assert (=> b!1635864 (= lt!597756 (print!1329 thiss!17113 lt!597741))))

(declare-fun singletonSeq!1616 (Token!5904) BalanceConc!11918)

(assert (=> b!1635864 (= lt!597741 (singletonSeq!1616 (h!23388 tokens!457)))))

(assert (=> b!1635864 (= lt!597764 (maxPrefix!1362 thiss!17113 rules!1846 lt!597752))))

(declare-fun b!1635865 () Bool)

(declare-fun res!732461 () Bool)

(declare-fun e!1049079 () Bool)

(assert (=> b!1635865 (=> (not res!732461) (not e!1049079))))

(declare-fun lt!597761 () List!18055)

(declare-fun head!3522 (List!18055) C!9168)

(assert (=> b!1635865 (= res!732461 (= lt!597761 (Cons!17985 (head!3522 (originalCharacters!3983 (h!23388 (t!149724 tokens!457)))) Nil!17985)))))

(declare-fun b!1635866 () Bool)

(declare-fun res!732442 () Bool)

(assert (=> b!1635866 (=> (not res!732442) (not e!1049091))))

(declare-fun rulesProduceEachTokenIndividuallyList!1000 (LexerInterface!2798 List!18058 List!18057) Bool)

(assert (=> b!1635866 (= res!732442 (rulesProduceEachTokenIndividuallyList!1000 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1635867 () Bool)

(declare-fun e!1049073 () Bool)

(assert (=> b!1635867 (= e!1049077 e!1049073)))

(declare-fun res!732456 () Bool)

(assert (=> b!1635867 (=> res!732456 e!1049073)))

(assert (=> b!1635867 (= res!732456 (not (isDefined!2742 lt!597764)))))

(declare-fun lt!597753 () Unit!29424)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!372 (LexerInterface!2798 List!18058 List!18055 List!18055) Unit!29424)

(assert (=> b!1635867 (= lt!597753 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!372 thiss!17113 rules!1846 lt!597748 lt!597751))))

(declare-fun b!1635868 () Bool)

(declare-fun res!732464 () Bool)

(assert (=> b!1635868 (=> res!732464 e!1049077)))

(declare-fun isEmpty!11021 (BalanceConc!11918) Bool)

(declare-datatypes ((tuple2!17608 0))(
  ( (tuple2!17609 (_1!10206 BalanceConc!11918) (_2!10206 BalanceConc!11916)) )
))
(declare-fun lex!1282 (LexerInterface!2798 List!18058 BalanceConc!11916) tuple2!17608)

(declare-fun seqFromList!2087 (List!18055) BalanceConc!11916)

(assert (=> b!1635868 (= res!732464 (isEmpty!11021 (_1!10206 (lex!1282 thiss!17113 rules!1846 (seqFromList!2087 lt!597748)))))))

(declare-fun e!1049089 () Bool)

(declare-fun tp!474396 () Bool)

(declare-fun b!1635869 () Bool)

(declare-fun inv!23339 (String!20627) Bool)

(declare-fun inv!23342 (TokenValueInjection!6178) Bool)

(assert (=> b!1635869 (= e!1049089 (and tp!474396 (inv!23339 (tag!3449 (h!23389 rules!1846))) (inv!23342 (transformation!3169 (h!23389 rules!1846))) e!1049087))))

(declare-fun b!1635870 () Bool)

(declare-fun tp!474394 () Bool)

(assert (=> b!1635870 (= e!1049086 (and e!1049089 tp!474394))))

(declare-fun b!1635871 () Bool)

(declare-fun res!732450 () Bool)

(assert (=> b!1635871 (=> (not res!732450) (not e!1049091))))

(assert (=> b!1635871 (= res!732450 (and (not ((_ is Nil!17987) tokens!457)) (not ((_ is Nil!17987) (t!149724 tokens!457)))))))

(declare-fun b!1635872 () Bool)

(declare-fun e!1049088 () Bool)

(declare-fun e!1049082 () Bool)

(assert (=> b!1635872 (= e!1049088 e!1049082)))

(declare-fun res!732467 () Bool)

(assert (=> b!1635872 (=> res!732467 e!1049082)))

(assert (=> b!1635872 (= res!732467 (prefixMatch!432 lt!597758 (++!4815 lt!597748 lt!597761)))))

(declare-fun lt!597747 () BalanceConc!11916)

(assert (=> b!1635872 (= lt!597761 (list!7087 lt!597747))))

(declare-fun b!1635873 () Bool)

(declare-fun e!1049074 () Bool)

(assert (=> b!1635873 (= e!1049091 e!1049074)))

(declare-fun res!732463 () Bool)

(assert (=> b!1635873 (=> (not res!732463) (not e!1049074))))

(declare-fun lt!597742 () List!18055)

(assert (=> b!1635873 (= res!732463 (= lt!597752 lt!597742))))

(assert (=> b!1635873 (= lt!597742 (++!4815 lt!597748 lt!597751))))

(declare-fun lt!597743 () BalanceConc!11916)

(assert (=> b!1635873 (= lt!597752 (list!7087 lt!597743))))

(declare-fun lt!597739 () BalanceConc!11916)

(assert (=> b!1635873 (= lt!597751 (list!7087 lt!597739))))

(declare-fun lt!597768 () BalanceConc!11916)

(assert (=> b!1635873 (= lt!597748 (list!7087 lt!597768))))

(declare-fun charsOf!1818 (Token!5904) BalanceConc!11916)

(assert (=> b!1635873 (= lt!597768 (charsOf!1818 (h!23388 tokens!457)))))

(declare-fun lt!597745 () tuple2!17608)

(assert (=> b!1635873 (= lt!597745 (lex!1282 thiss!17113 rules!1846 lt!597739))))

(declare-fun lt!597766 () BalanceConc!11918)

(assert (=> b!1635873 (= lt!597739 (print!1329 thiss!17113 lt!597766))))

(declare-fun seqFromList!2088 (List!18057) BalanceConc!11918)

(assert (=> b!1635873 (= lt!597766 (seqFromList!2088 (t!149724 tokens!457)))))

(assert (=> b!1635873 (= lt!597743 (print!1329 thiss!17113 (seqFromList!2088 tokens!457)))))

(declare-fun b!1635874 () Bool)

(declare-fun tp!474398 () Bool)

(assert (=> b!1635874 (= e!1049084 (and tp!474398 (inv!23339 (tag!3449 (rule!5011 (h!23388 tokens!457)))) (inv!23342 (transformation!3169 (rule!5011 (h!23388 tokens!457)))) e!1049072))))

(declare-fun b!1635875 () Bool)

(declare-fun tp!474400 () Bool)

(declare-fun inv!23343 (Token!5904) Bool)

(assert (=> b!1635875 (= e!1049080 (and (inv!23343 (h!23388 tokens!457)) e!1049085 tp!474400))))

(declare-fun b!1635876 () Bool)

(declare-fun e!1049081 () Bool)

(assert (=> b!1635876 (= e!1049081 e!1049092)))

(declare-fun res!732466 () Bool)

(assert (=> b!1635876 (=> res!732466 e!1049092)))

(declare-fun lt!597750 () List!18057)

(declare-fun lt!597760 () List!18057)

(declare-fun lt!597762 () List!18057)

(assert (=> b!1635876 (= res!732466 (or (not (= lt!597760 lt!597750)) (not (= lt!597750 lt!597762))))))

(declare-fun list!7088 (BalanceConc!11918) List!18057)

(assert (=> b!1635876 (= lt!597750 (list!7088 lt!597766))))

(assert (=> b!1635876 (= lt!597760 lt!597762)))

(declare-fun prepend!709 (BalanceConc!11918 Token!5904) BalanceConc!11918)

(assert (=> b!1635876 (= lt!597762 (list!7088 (prepend!709 (seqFromList!2088 (t!149724 (t!149724 tokens!457))) (h!23388 (t!149724 tokens!457)))))))

(declare-fun lt!597754 () Unit!29424)

(declare-fun seqFromListBHdTlConstructive!246 (Token!5904 List!18057 BalanceConc!11918) Unit!29424)

(assert (=> b!1635876 (= lt!597754 (seqFromListBHdTlConstructive!246 (h!23388 (t!149724 tokens!457)) (t!149724 (t!149724 tokens!457)) (_1!10206 lt!597745)))))

(declare-fun b!1635877 () Bool)

(declare-fun matchR!1996 (Regex!4497 List!18055) Bool)

(assert (=> b!1635877 (= e!1049075 (matchR!1996 (regex!3169 (rule!5011 (h!23388 tokens!457))) lt!597748))))

(declare-fun b!1635878 () Bool)

(declare-fun res!732454 () Bool)

(assert (=> b!1635878 (=> res!732454 e!1049090)))

(declare-datatypes ((tuple2!17610 0))(
  ( (tuple2!17611 (_1!10207 Token!5904) (_2!10207 BalanceConc!11916)) )
))
(declare-datatypes ((Option!3376 0))(
  ( (None!3375) (Some!3375 (v!24458 tuple2!17610)) )
))
(declare-fun get!5212 (Option!3376) tuple2!17610)

(declare-fun maxPrefixZipperSequence!693 (LexerInterface!2798 List!18058 BalanceConc!11916) Option!3376)

(assert (=> b!1635878 (= res!732454 (not (= (h!23388 tokens!457) (_1!10207 (get!5212 (maxPrefixZipperSequence!693 thiss!17113 rules!1846 lt!597743))))))))

(declare-fun b!1635879 () Bool)

(assert (=> b!1635879 (= e!1049079 (= lt!597761 (Cons!17985 (head!3522 lt!597751) Nil!17985)))))

(declare-fun b!1635880 () Bool)

(assert (=> b!1635880 (= e!1049082 e!1049083)))

(declare-fun res!732460 () Bool)

(assert (=> b!1635880 (=> res!732460 e!1049083)))

(declare-fun isDefined!2743 (Option!3376) Bool)

(assert (=> b!1635880 (= res!732460 (not (isDefined!2743 (maxPrefixZipperSequence!693 thiss!17113 rules!1846 (seqFromList!2087 (originalCharacters!3983 (h!23388 tokens!457)))))))))

(assert (=> b!1635880 (= lt!597761 lt!597765)))

(declare-fun head!3523 (BalanceConc!11916) C!9168)

(assert (=> b!1635880 (= lt!597765 (Cons!17985 (head!3523 lt!597739) Nil!17985))))

(assert (=> b!1635880 e!1049079))

(declare-fun res!732462 () Bool)

(assert (=> b!1635880 (=> (not res!732462) (not e!1049079))))

(assert (=> b!1635880 (= res!732462 (= lt!597748 (originalCharacters!3983 (h!23388 tokens!457))))))

(declare-fun b!1635881 () Bool)

(declare-fun res!732455 () Bool)

(assert (=> b!1635881 (=> res!732455 e!1049077)))

(declare-fun rulesProduceIndividualToken!1450 (LexerInterface!2798 List!18058 Token!5904) Bool)

(assert (=> b!1635881 (= res!732455 (not (rulesProduceIndividualToken!1450 thiss!17113 rules!1846 (h!23388 tokens!457))))))

(declare-fun b!1635882 () Bool)

(assert (=> b!1635882 (= e!1049073 e!1049088)))

(declare-fun res!732465 () Bool)

(assert (=> b!1635882 (=> res!732465 e!1049088)))

(declare-fun prefixMatchZipperSequence!571 (Regex!4497 BalanceConc!11916) Bool)

(declare-fun ++!4816 (BalanceConc!11916 BalanceConc!11916) BalanceConc!11916)

(assert (=> b!1635882 (= res!732465 (prefixMatchZipperSequence!571 lt!597758 (++!4816 lt!597768 lt!597747)))))

(declare-fun singletonSeq!1617 (C!9168) BalanceConc!11916)

(declare-fun apply!4654 (BalanceConc!11916 Int) C!9168)

(assert (=> b!1635882 (= lt!597747 (singletonSeq!1617 (apply!4654 (charsOf!1818 (h!23388 (t!149724 tokens!457))) 0)))))

(declare-fun rulesRegex!559 (LexerInterface!2798 List!18058) Regex!4497)

(assert (=> b!1635882 (= lt!597758 (rulesRegex!559 thiss!17113 rules!1846))))

(declare-fun b!1635883 () Bool)

(assert (=> b!1635883 (= e!1049074 (not e!1049081))))

(declare-fun res!732451 () Bool)

(assert (=> b!1635883 (=> res!732451 e!1049081)))

(assert (=> b!1635883 (= res!732451 (not (= lt!597760 (t!149724 tokens!457))))))

(assert (=> b!1635883 (= lt!597760 (list!7088 (_1!10206 lt!597745)))))

(declare-fun lt!597744 () Unit!29424)

(declare-fun theoremInvertabilityWhenTokenListSeparable!243 (LexerInterface!2798 List!18058 List!18057) Unit!29424)

(assert (=> b!1635883 (= lt!597744 (theoremInvertabilityWhenTokenListSeparable!243 thiss!17113 rules!1846 (t!149724 tokens!457)))))

(declare-fun isPrefix!1429 (List!18055 List!18055) Bool)

(assert (=> b!1635883 (isPrefix!1429 lt!597748 lt!597742)))

(declare-fun lt!597740 () Unit!29424)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!954 (List!18055 List!18055) Unit!29424)

(assert (=> b!1635883 (= lt!597740 (lemmaConcatTwoListThenFirstIsPrefix!954 lt!597748 lt!597751))))

(declare-fun b!1635884 () Bool)

(declare-fun res!732445 () Bool)

(assert (=> b!1635884 (=> res!732445 e!1049092)))

(declare-fun separableTokensPredicate!740 (LexerInterface!2798 Token!5904 Token!5904 List!18058) Bool)

(assert (=> b!1635884 (= res!732445 (not (separableTokensPredicate!740 thiss!17113 (h!23388 tokens!457) (h!23388 (t!149724 tokens!457)) rules!1846)))))

(assert (= (and start!156130 res!732453) b!1635862))

(assert (= (and b!1635862 res!732449) b!1635860))

(assert (= (and b!1635860 res!732444) b!1635866))

(assert (= (and b!1635866 res!732442) b!1635854))

(assert (= (and b!1635854 res!732447) b!1635871))

(assert (= (and b!1635871 res!732450) b!1635873))

(assert (= (and b!1635873 res!732463) b!1635883))

(assert (= (and b!1635883 (not res!732451)) b!1635876))

(assert (= (and b!1635876 (not res!732466)) b!1635884))

(assert (= (and b!1635884 (not res!732445)) b!1635864))

(assert (= (and b!1635864 (not res!732448)) b!1635881))

(assert (= (and b!1635881 (not res!732455)) b!1635868))

(assert (= (and b!1635868 (not res!732464)) b!1635867))

(assert (= (and b!1635867 (not res!732456)) b!1635882))

(assert (= (and b!1635882 (not res!732465)) b!1635872))

(assert (= (and b!1635872 (not res!732467)) b!1635880))

(assert (= (and b!1635880 res!732462) b!1635865))

(assert (= (and b!1635865 res!732461) b!1635879))

(assert (= (and b!1635880 (not res!732460)) b!1635852))

(assert (= (and b!1635852 res!732457) b!1635856))

(assert (= (and b!1635856 res!732452) b!1635877))

(assert (= (and b!1635852 (not res!732446)) b!1635858))

(assert (= (and b!1635858 (not res!732443)) b!1635855))

(assert (= (and b!1635855 (not res!732459)) b!1635853))

(assert (= (and b!1635853 (not res!732458)) b!1635878))

(assert (= (and b!1635878 (not res!732454)) b!1635863))

(assert (= b!1635869 b!1635861))

(assert (= b!1635870 b!1635869))

(assert (= (and start!156130 ((_ is Cons!17988) rules!1846)) b!1635870))

(assert (= b!1635874 b!1635857))

(assert (= b!1635859 b!1635874))

(assert (= b!1635875 b!1635859))

(assert (= (and start!156130 ((_ is Cons!17987) tokens!457)) b!1635875))

(declare-fun m!1972611 () Bool)

(assert (=> b!1635859 m!1972611))

(declare-fun m!1972613 () Bool)

(assert (=> b!1635855 m!1972613))

(declare-fun m!1972615 () Bool)

(assert (=> b!1635855 m!1972615))

(declare-fun m!1972617 () Bool)

(assert (=> b!1635877 m!1972617))

(declare-fun m!1972619 () Bool)

(assert (=> b!1635875 m!1972619))

(declare-fun m!1972621 () Bool)

(assert (=> b!1635863 m!1972621))

(declare-fun m!1972623 () Bool)

(assert (=> b!1635884 m!1972623))

(declare-fun m!1972625 () Bool)

(assert (=> b!1635853 m!1972625))

(assert (=> b!1635853 m!1972625))

(declare-fun m!1972627 () Bool)

(assert (=> b!1635853 m!1972627))

(declare-fun m!1972629 () Bool)

(assert (=> b!1635873 m!1972629))

(declare-fun m!1972631 () Bool)

(assert (=> b!1635873 m!1972631))

(declare-fun m!1972633 () Bool)

(assert (=> b!1635873 m!1972633))

(declare-fun m!1972635 () Bool)

(assert (=> b!1635873 m!1972635))

(declare-fun m!1972637 () Bool)

(assert (=> b!1635873 m!1972637))

(declare-fun m!1972639 () Bool)

(assert (=> b!1635873 m!1972639))

(declare-fun m!1972641 () Bool)

(assert (=> b!1635873 m!1972641))

(declare-fun m!1972643 () Bool)

(assert (=> b!1635873 m!1972643))

(declare-fun m!1972645 () Bool)

(assert (=> b!1635873 m!1972645))

(assert (=> b!1635873 m!1972637))

(declare-fun m!1972647 () Bool)

(assert (=> b!1635873 m!1972647))

(declare-fun m!1972649 () Bool)

(assert (=> b!1635880 m!1972649))

(assert (=> b!1635880 m!1972649))

(declare-fun m!1972651 () Bool)

(assert (=> b!1635880 m!1972651))

(assert (=> b!1635880 m!1972651))

(declare-fun m!1972653 () Bool)

(assert (=> b!1635880 m!1972653))

(declare-fun m!1972655 () Bool)

(assert (=> b!1635880 m!1972655))

(declare-fun m!1972657 () Bool)

(assert (=> b!1635881 m!1972657))

(declare-fun m!1972659 () Bool)

(assert (=> b!1635864 m!1972659))

(declare-fun m!1972661 () Bool)

(assert (=> b!1635864 m!1972661))

(declare-fun m!1972663 () Bool)

(assert (=> b!1635864 m!1972663))

(declare-fun m!1972665 () Bool)

(assert (=> b!1635864 m!1972665))

(declare-fun m!1972667 () Bool)

(assert (=> b!1635864 m!1972667))

(declare-fun m!1972669 () Bool)

(assert (=> b!1635864 m!1972669))

(declare-fun m!1972671 () Bool)

(assert (=> b!1635872 m!1972671))

(assert (=> b!1635872 m!1972671))

(declare-fun m!1972673 () Bool)

(assert (=> b!1635872 m!1972673))

(declare-fun m!1972675 () Bool)

(assert (=> b!1635872 m!1972675))

(declare-fun m!1972677 () Bool)

(assert (=> b!1635876 m!1972677))

(declare-fun m!1972679 () Bool)

(assert (=> b!1635876 m!1972679))

(declare-fun m!1972681 () Bool)

(assert (=> b!1635876 m!1972681))

(declare-fun m!1972683 () Bool)

(assert (=> b!1635876 m!1972683))

(declare-fun m!1972685 () Bool)

(assert (=> b!1635876 m!1972685))

(assert (=> b!1635876 m!1972681))

(assert (=> b!1635876 m!1972683))

(declare-fun m!1972687 () Bool)

(assert (=> b!1635866 m!1972687))

(declare-fun m!1972689 () Bool)

(assert (=> b!1635879 m!1972689))

(declare-fun m!1972691 () Bool)

(assert (=> b!1635865 m!1972691))

(declare-fun m!1972693 () Bool)

(assert (=> b!1635874 m!1972693))

(declare-fun m!1972695 () Bool)

(assert (=> b!1635874 m!1972695))

(declare-fun m!1972697 () Bool)

(assert (=> b!1635882 m!1972697))

(declare-fun m!1972699 () Bool)

(assert (=> b!1635882 m!1972699))

(declare-fun m!1972701 () Bool)

(assert (=> b!1635882 m!1972701))

(declare-fun m!1972703 () Bool)

(assert (=> b!1635882 m!1972703))

(assert (=> b!1635882 m!1972701))

(assert (=> b!1635882 m!1972699))

(declare-fun m!1972705 () Bool)

(assert (=> b!1635882 m!1972705))

(assert (=> b!1635882 m!1972703))

(declare-fun m!1972707 () Bool)

(assert (=> b!1635882 m!1972707))

(declare-fun m!1972709 () Bool)

(assert (=> b!1635868 m!1972709))

(assert (=> b!1635868 m!1972709))

(declare-fun m!1972711 () Bool)

(assert (=> b!1635868 m!1972711))

(declare-fun m!1972713 () Bool)

(assert (=> b!1635868 m!1972713))

(declare-fun m!1972715 () Bool)

(assert (=> b!1635854 m!1972715))

(declare-fun m!1972717 () Bool)

(assert (=> b!1635862 m!1972717))

(declare-fun m!1972719 () Bool)

(assert (=> b!1635878 m!1972719))

(assert (=> b!1635878 m!1972719))

(declare-fun m!1972721 () Bool)

(assert (=> b!1635878 m!1972721))

(declare-fun m!1972723 () Bool)

(assert (=> b!1635869 m!1972723))

(declare-fun m!1972725 () Bool)

(assert (=> b!1635869 m!1972725))

(declare-fun m!1972727 () Bool)

(assert (=> b!1635856 m!1972727))

(declare-fun m!1972729 () Bool)

(assert (=> b!1635867 m!1972729))

(declare-fun m!1972731 () Bool)

(assert (=> b!1635867 m!1972731))

(declare-fun m!1972733 () Bool)

(assert (=> b!1635883 m!1972733))

(declare-fun m!1972735 () Bool)

(assert (=> b!1635883 m!1972735))

(declare-fun m!1972737 () Bool)

(assert (=> b!1635883 m!1972737))

(declare-fun m!1972739 () Bool)

(assert (=> b!1635883 m!1972739))

(declare-fun m!1972741 () Bool)

(assert (=> b!1635858 m!1972741))

(assert (=> b!1635858 m!1972741))

(declare-fun m!1972743 () Bool)

(assert (=> b!1635858 m!1972743))

(declare-fun m!1972745 () Bool)

(assert (=> b!1635852 m!1972745))

(declare-fun m!1972747 () Bool)

(assert (=> b!1635852 m!1972747))

(declare-fun m!1972749 () Bool)

(assert (=> b!1635852 m!1972749))

(declare-fun m!1972751 () Bool)

(assert (=> b!1635852 m!1972751))

(declare-fun m!1972753 () Bool)

(assert (=> b!1635852 m!1972753))

(declare-fun m!1972755 () Bool)

(assert (=> b!1635852 m!1972755))

(declare-fun m!1972757 () Bool)

(assert (=> b!1635852 m!1972757))

(assert (=> b!1635852 m!1972749))

(assert (=> b!1635852 m!1972745))

(declare-fun m!1972759 () Bool)

(assert (=> b!1635860 m!1972759))

(check-sat (not b!1635878) (not b_next!44925) b_and!115957 (not b!1635882) (not b!1635877) (not b!1635881) b_and!115959 (not b_next!44923) (not b!1635852) (not b!1635880) (not b!1635865) b_and!115961 (not b!1635860) (not b!1635866) (not b!1635858) (not b!1635872) (not b_next!44919) (not b!1635864) (not b!1635869) (not b!1635884) (not b!1635867) (not b!1635870) (not b!1635874) (not b!1635873) (not b!1635853) b_and!115963 (not b!1635854) (not b!1635875) (not b!1635856) (not b!1635863) (not b!1635855) (not b!1635876) (not b!1635862) (not b_next!44921) (not b!1635859) (not b!1635868) (not b!1635879) (not b!1635883))
(check-sat b_and!115961 (not b_next!44919) (not b_next!44925) b_and!115963 b_and!115957 (not b_next!44921) b_and!115959 (not b_next!44923))
