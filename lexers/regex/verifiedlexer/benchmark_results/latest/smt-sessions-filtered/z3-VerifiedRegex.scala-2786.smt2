; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!154106 () Bool)

(assert start!154106)

(declare-fun b!1623136 () Bool)

(declare-fun b_free!43767 () Bool)

(declare-fun b_next!44471 () Bool)

(assert (=> b!1623136 (= b_free!43767 (not b_next!44471))))

(declare-fun tp!472269 () Bool)

(declare-fun b_and!115117 () Bool)

(assert (=> b!1623136 (= tp!472269 b_and!115117)))

(declare-fun b_free!43769 () Bool)

(declare-fun b_next!44473 () Bool)

(assert (=> b!1623136 (= b_free!43769 (not b_next!44473))))

(declare-fun tp!472275 () Bool)

(declare-fun b_and!115119 () Bool)

(assert (=> b!1623136 (= tp!472275 b_and!115119)))

(declare-fun b!1623143 () Bool)

(declare-fun b_free!43771 () Bool)

(declare-fun b_next!44475 () Bool)

(assert (=> b!1623143 (= b_free!43771 (not b_next!44475))))

(declare-fun tp!472268 () Bool)

(declare-fun b_and!115121 () Bool)

(assert (=> b!1623143 (= tp!472268 b_and!115121)))

(declare-fun b_free!43773 () Bool)

(declare-fun b_next!44477 () Bool)

(assert (=> b!1623143 (= b_free!43773 (not b_next!44477))))

(declare-fun tp!472272 () Bool)

(declare-fun b_and!115123 () Bool)

(assert (=> b!1623143 (= tp!472272 b_and!115123)))

(declare-fun b!1623116 () Bool)

(declare-fun res!725242 () Bool)

(declare-fun e!1041047 () Bool)

(assert (=> b!1623116 (=> res!725242 e!1041047)))

(declare-datatypes ((C!9096 0))(
  ( (C!9097 (val!5144 Int)) )
))
(declare-datatypes ((List!17857 0))(
  ( (Nil!17787) (Cons!17787 (h!23188 C!9096) (t!148864 List!17857)) )
))
(declare-fun lt!585118 () List!17857)

(declare-datatypes ((List!17858 0))(
  ( (Nil!17788) (Cons!17788 (h!23189 (_ BitVec 16)) (t!148865 List!17858)) )
))
(declare-datatypes ((TokenValue!3223 0))(
  ( (FloatLiteralValue!6446 (text!23006 List!17858)) (TokenValueExt!3222 (__x!11748 Int)) (Broken!16115 (value!98937 List!17858)) (Object!3292) (End!3223) (Def!3223) (Underscore!3223) (Match!3223) (Else!3223) (Error!3223) (Case!3223) (If!3223) (Extends!3223) (Abstract!3223) (Class!3223) (Val!3223) (DelimiterValue!6446 (del!3283 List!17858)) (KeywordValue!3229 (value!98938 List!17858)) (CommentValue!6446 (value!98939 List!17858)) (WhitespaceValue!6446 (value!98940 List!17858)) (IndentationValue!3223 (value!98941 List!17858)) (String!20446) (Int32!3223) (Broken!16116 (value!98942 List!17858)) (Boolean!3224) (Unit!28772) (OperatorValue!3226 (op!3283 List!17858)) (IdentifierValue!6446 (value!98943 List!17858)) (IdentifierValue!6447 (value!98944 List!17858)) (WhitespaceValue!6447 (value!98945 List!17858)) (True!6446) (False!6446) (Broken!16117 (value!98946 List!17858)) (Broken!16118 (value!98947 List!17858)) (True!6447) (RightBrace!3223) (RightBracket!3223) (Colon!3223) (Null!3223) (Comma!3223) (LeftBracket!3223) (False!6447) (LeftBrace!3223) (ImaginaryLiteralValue!3223 (text!23007 List!17858)) (StringLiteralValue!9669 (value!98948 List!17858)) (EOFValue!3223 (value!98949 List!17858)) (IdentValue!3223 (value!98950 List!17858)) (DelimiterValue!6447 (value!98951 List!17858)) (DedentValue!3223 (value!98952 List!17858)) (NewLineValue!3223 (value!98953 List!17858)) (IntegerValue!9669 (value!98954 (_ BitVec 32)) (text!23008 List!17858)) (IntegerValue!9670 (value!98955 Int) (text!23009 List!17858)) (Times!3223) (Or!3223) (Equal!3223) (Minus!3223) (Broken!16119 (value!98956 List!17858)) (And!3223) (Div!3223) (LessEqual!3223) (Mod!3223) (Concat!7684) (Not!3223) (Plus!3223) (SpaceValue!3223 (value!98957 List!17858)) (IntegerValue!9671 (value!98958 Int) (text!23010 List!17858)) (StringLiteralValue!9670 (text!23011 List!17858)) (FloatLiteralValue!6447 (text!23012 List!17858)) (BytesLiteralValue!3223 (value!98959 List!17858)) (CommentValue!6447 (value!98960 List!17858)) (StringLiteralValue!9671 (value!98961 List!17858)) (ErrorTokenValue!3223 (msg!3284 List!17858)) )
))
(declare-datatypes ((IArray!11833 0))(
  ( (IArray!11834 (innerList!5974 List!17857)) )
))
(declare-datatypes ((Conc!5914 0))(
  ( (Node!5914 (left!14306 Conc!5914) (right!14636 Conc!5914) (csize!12058 Int) (cheight!6125 Int)) (Leaf!8701 (xs!8746 IArray!11833) (csize!12059 Int)) (Empty!5914) )
))
(declare-datatypes ((BalanceConc!11772 0))(
  ( (BalanceConc!11773 (c!264245 Conc!5914)) )
))
(declare-datatypes ((Regex!4461 0))(
  ( (ElementMatch!4461 (c!264246 C!9096)) (Concat!7685 (regOne!9434 Regex!4461) (regTwo!9434 Regex!4461)) (EmptyExpr!4461) (Star!4461 (reg!4790 Regex!4461)) (EmptyLang!4461) (Union!4461 (regOne!9435 Regex!4461) (regTwo!9435 Regex!4461)) )
))
(declare-datatypes ((String!20447 0))(
  ( (String!20448 (value!98962 String)) )
))
(declare-datatypes ((TokenValueInjection!6106 0))(
  ( (TokenValueInjection!6107 (toValue!4560 Int) (toChars!4419 Int)) )
))
(declare-datatypes ((Rule!6066 0))(
  ( (Rule!6067 (regex!3133 Regex!4461) (tag!3411 String!20447) (isSeparator!3133 Bool) (transformation!3133 TokenValueInjection!6106)) )
))
(declare-datatypes ((List!17859 0))(
  ( (Nil!17789) (Cons!17789 (h!23190 Rule!6066) (t!148866 List!17859)) )
))
(declare-fun rules!1846 () List!17859)

(declare-datatypes ((LexerInterface!2762 0))(
  ( (LexerInterfaceExt!2759 (__x!11749 Int)) (Lexer!2760) )
))
(declare-fun thiss!17113 () LexerInterface!2762)

(declare-datatypes ((Token!5832 0))(
  ( (Token!5833 (value!98963 TokenValue!3223) (rule!4959 Rule!6066) (size!14248 Int) (originalCharacters!3947 List!17857)) )
))
(declare-datatypes ((List!17860 0))(
  ( (Nil!17790) (Cons!17790 (h!23191 Token!5832) (t!148867 List!17860)) )
))
(declare-datatypes ((IArray!11835 0))(
  ( (IArray!11836 (innerList!5975 List!17860)) )
))
(declare-datatypes ((Conc!5915 0))(
  ( (Node!5915 (left!14307 Conc!5915) (right!14637 Conc!5915) (csize!12060 Int) (cheight!6126 Int)) (Leaf!8702 (xs!8747 IArray!11835) (csize!12061 Int)) (Empty!5915) )
))
(declare-datatypes ((BalanceConc!11774 0))(
  ( (BalanceConc!11775 (c!264247 Conc!5915)) )
))
(declare-fun isEmpty!10814 (BalanceConc!11774) Bool)

(declare-datatypes ((tuple2!17346 0))(
  ( (tuple2!17347 (_1!10075 BalanceConc!11774) (_2!10075 BalanceConc!11772)) )
))
(declare-fun lex!1246 (LexerInterface!2762 List!17859 BalanceConc!11772) tuple2!17346)

(declare-fun seqFromList!2015 (List!17857) BalanceConc!11772)

(assert (=> b!1623116 (= res!725242 (isEmpty!10814 (_1!10075 (lex!1246 thiss!17113 rules!1846 (seqFromList!2015 lt!585118)))))))

(declare-fun b!1623117 () Bool)

(declare-fun e!1041050 () Bool)

(declare-fun e!1041046 () Bool)

(assert (=> b!1623117 (= e!1041050 e!1041046)))

(declare-fun res!725251 () Bool)

(assert (=> b!1623117 (=> (not res!725251) (not e!1041046))))

(declare-fun lt!585101 () List!17857)

(declare-fun lt!585113 () List!17857)

(assert (=> b!1623117 (= res!725251 (= lt!585101 lt!585113))))

(declare-fun lt!585102 () List!17857)

(declare-fun ++!4721 (List!17857 List!17857) List!17857)

(assert (=> b!1623117 (= lt!585113 (++!4721 lt!585118 lt!585102))))

(declare-fun lt!585098 () BalanceConc!11772)

(declare-fun list!6975 (BalanceConc!11772) List!17857)

(assert (=> b!1623117 (= lt!585101 (list!6975 lt!585098))))

(declare-fun lt!585117 () BalanceConc!11772)

(assert (=> b!1623117 (= lt!585102 (list!6975 lt!585117))))

(declare-fun lt!585100 () BalanceConc!11772)

(assert (=> b!1623117 (= lt!585118 (list!6975 lt!585100))))

(declare-fun tokens!457 () List!17860)

(declare-fun charsOf!1782 (Token!5832) BalanceConc!11772)

(assert (=> b!1623117 (= lt!585100 (charsOf!1782 (h!23191 tokens!457)))))

(declare-fun lt!585107 () tuple2!17346)

(assert (=> b!1623117 (= lt!585107 (lex!1246 thiss!17113 rules!1846 lt!585117))))

(declare-fun lt!585106 () BalanceConc!11774)

(declare-fun print!1293 (LexerInterface!2762 BalanceConc!11774) BalanceConc!11772)

(assert (=> b!1623117 (= lt!585117 (print!1293 thiss!17113 lt!585106))))

(declare-fun seqFromList!2016 (List!17860) BalanceConc!11774)

(assert (=> b!1623117 (= lt!585106 (seqFromList!2016 (t!148867 tokens!457)))))

(assert (=> b!1623117 (= lt!585098 (print!1293 thiss!17113 (seqFromList!2016 tokens!457)))))

(declare-fun b!1623118 () Bool)

(declare-fun e!1041042 () Bool)

(declare-fun e!1041048 () Bool)

(assert (=> b!1623118 (= e!1041042 e!1041048)))

(declare-fun res!725233 () Bool)

(assert (=> b!1623118 (=> res!725233 e!1041048)))

(declare-fun lt!585096 () BalanceConc!11772)

(declare-fun lt!585104 () Regex!4461)

(declare-fun prefixMatchZipperSequence!517 (Regex!4461 BalanceConc!11772) Bool)

(declare-fun ++!4722 (BalanceConc!11772 BalanceConc!11772) BalanceConc!11772)

(assert (=> b!1623118 (= res!725233 (prefixMatchZipperSequence!517 lt!585104 (++!4722 lt!585100 lt!585096)))))

(declare-fun singletonSeq!1544 (C!9096) BalanceConc!11772)

(declare-fun apply!4526 (BalanceConc!11772 Int) C!9096)

(assert (=> b!1623118 (= lt!585096 (singletonSeq!1544 (apply!4526 (charsOf!1782 (h!23191 (t!148867 tokens!457))) 0)))))

(declare-fun rulesRegex!523 (LexerInterface!2762 List!17859) Regex!4461)

(assert (=> b!1623118 (= lt!585104 (rulesRegex!523 thiss!17113 rules!1846))))

(declare-fun b!1623119 () Bool)

(declare-fun e!1041044 () Bool)

(declare-fun e!1041041 () Bool)

(assert (=> b!1623119 (= e!1041044 e!1041041)))

(declare-fun res!725246 () Bool)

(assert (=> b!1623119 (=> res!725246 e!1041041)))

(declare-datatypes ((tuple2!17348 0))(
  ( (tuple2!17349 (_1!10076 Token!5832) (_2!10076 BalanceConc!11772)) )
))
(declare-datatypes ((Option!3285 0))(
  ( (None!3284) (Some!3284 (v!24307 tuple2!17348)) )
))
(declare-fun isDefined!2652 (Option!3285) Bool)

(declare-fun maxPrefixZipperSequence!657 (LexerInterface!2762 List!17859 BalanceConc!11772) Option!3285)

(assert (=> b!1623119 (= res!725246 (not (isDefined!2652 (maxPrefixZipperSequence!657 thiss!17113 rules!1846 (seqFromList!2015 (originalCharacters!3947 (h!23191 tokens!457)))))))))

(declare-fun lt!585109 () List!17857)

(declare-fun lt!585115 () List!17857)

(assert (=> b!1623119 (= lt!585109 lt!585115)))

(declare-fun head!3412 (BalanceConc!11772) C!9096)

(assert (=> b!1623119 (= lt!585115 (Cons!17787 (head!3412 lt!585117) Nil!17787))))

(declare-fun e!1041055 () Bool)

(assert (=> b!1623119 e!1041055))

(declare-fun res!725234 () Bool)

(assert (=> b!1623119 (=> (not res!725234) (not e!1041055))))

(assert (=> b!1623119 (= res!725234 (= lt!585118 (originalCharacters!3947 (h!23191 tokens!457))))))

(declare-fun b!1623120 () Bool)

(declare-fun res!725236 () Bool)

(declare-fun e!1041051 () Bool)

(assert (=> b!1623120 (=> res!725236 e!1041051)))

(declare-fun separableTokensPredicate!704 (LexerInterface!2762 Token!5832 Token!5832 List!17859) Bool)

(assert (=> b!1623120 (= res!725236 (not (separableTokensPredicate!704 thiss!17113 (h!23191 tokens!457) (h!23191 (t!148867 tokens!457)) rules!1846)))))

(declare-fun b!1623121 () Bool)

(declare-fun res!725247 () Bool)

(assert (=> b!1623121 (=> (not res!725247) (not e!1041050))))

(get-info :version)

(assert (=> b!1623121 (= res!725247 (and (not ((_ is Nil!17790) tokens!457)) (not ((_ is Nil!17790) (t!148867 tokens!457)))))))

(declare-fun res!725241 () Bool)

(assert (=> start!154106 (=> (not res!725241) (not e!1041050))))

(assert (=> start!154106 (= res!725241 ((_ is Lexer!2760) thiss!17113))))

(assert (=> start!154106 e!1041050))

(assert (=> start!154106 true))

(declare-fun e!1041039 () Bool)

(assert (=> start!154106 e!1041039))

(declare-fun e!1041036 () Bool)

(assert (=> start!154106 e!1041036))

(declare-fun b!1623122 () Bool)

(assert (=> b!1623122 (= e!1041047 e!1041042)))

(declare-fun res!725250 () Bool)

(assert (=> b!1623122 (=> res!725250 e!1041042)))

(declare-datatypes ((tuple2!17350 0))(
  ( (tuple2!17351 (_1!10077 Token!5832) (_2!10077 List!17857)) )
))
(declare-datatypes ((Option!3286 0))(
  ( (None!3285) (Some!3285 (v!24308 tuple2!17350)) )
))
(declare-fun lt!585112 () Option!3286)

(declare-fun isDefined!2653 (Option!3286) Bool)

(assert (=> b!1623122 (= res!725250 (not (isDefined!2653 lt!585112)))))

(declare-datatypes ((Unit!28773 0))(
  ( (Unit!28774) )
))
(declare-fun lt!585111 () Unit!28773)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!336 (LexerInterface!2762 List!17859 List!17857 List!17857) Unit!28773)

(assert (=> b!1623122 (= lt!585111 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!336 thiss!17113 rules!1846 lt!585118 lt!585102))))

(declare-fun b!1623123 () Bool)

(declare-fun e!1041052 () Bool)

(declare-fun tp!472271 () Bool)

(declare-fun inv!23174 (Token!5832) Bool)

(assert (=> b!1623123 (= e!1041036 (and (inv!23174 (h!23191 tokens!457)) e!1041052 tp!472271))))

(declare-fun e!1041038 () Bool)

(declare-fun tp!472270 () Bool)

(declare-fun b!1623124 () Bool)

(declare-fun inv!21 (TokenValue!3223) Bool)

(assert (=> b!1623124 (= e!1041052 (and (inv!21 (value!98963 (h!23191 tokens!457))) e!1041038 tp!472270))))

(declare-fun b!1623125 () Bool)

(declare-fun e!1041043 () Bool)

(declare-fun tp!472276 () Bool)

(assert (=> b!1623125 (= e!1041039 (and e!1041043 tp!472276))))

(declare-fun b!1623126 () Bool)

(assert (=> b!1623126 (= e!1041048 e!1041044)))

(declare-fun res!725237 () Bool)

(assert (=> b!1623126 (=> res!725237 e!1041044)))

(declare-fun prefixMatch!396 (Regex!4461 List!17857) Bool)

(assert (=> b!1623126 (= res!725237 (prefixMatch!396 lt!585104 (++!4721 lt!585118 lt!585109)))))

(assert (=> b!1623126 (= lt!585109 (list!6975 lt!585096))))

(declare-fun b!1623127 () Bool)

(declare-fun res!725240 () Bool)

(assert (=> b!1623127 (=> (not res!725240) (not e!1041055))))

(declare-fun head!3413 (List!17857) C!9096)

(assert (=> b!1623127 (= res!725240 (= lt!585109 (Cons!17787 (head!3413 (originalCharacters!3947 (h!23191 (t!148867 tokens!457)))) Nil!17787)))))

(declare-fun b!1623128 () Bool)

(declare-fun e!1041056 () Bool)

(assert (=> b!1623128 (= e!1041041 e!1041056)))

(declare-fun res!725235 () Bool)

(assert (=> b!1623128 (=> res!725235 e!1041056)))

(assert (=> b!1623128 (= res!725235 (prefixMatch!396 lt!585104 (++!4721 (originalCharacters!3947 (h!23191 tokens!457)) lt!585115)))))

(declare-fun e!1041049 () Bool)

(assert (=> b!1623128 e!1041049))

(declare-fun res!725245 () Bool)

(assert (=> b!1623128 (=> (not res!725245) (not e!1041049))))

(declare-fun lt!585114 () tuple2!17350)

(assert (=> b!1623128 (= res!725245 (= (_1!10077 lt!585114) (h!23191 tokens!457)))))

(declare-fun lt!585116 () Option!3286)

(declare-fun get!5120 (Option!3286) tuple2!17350)

(assert (=> b!1623128 (= lt!585114 (get!5120 lt!585116))))

(assert (=> b!1623128 (isDefined!2653 lt!585116)))

(declare-fun maxPrefix!1326 (LexerInterface!2762 List!17859 List!17857) Option!3286)

(assert (=> b!1623128 (= lt!585116 (maxPrefix!1326 thiss!17113 rules!1846 lt!585118))))

(assert (=> b!1623128 (isDefined!2653 (maxPrefix!1326 thiss!17113 rules!1846 (originalCharacters!3947 (h!23191 tokens!457))))))

(declare-fun b!1623129 () Bool)

(declare-fun res!725254 () Bool)

(assert (=> b!1623129 (=> (not res!725254) (not e!1041050))))

(declare-fun rulesProduceEachTokenIndividuallyList!964 (LexerInterface!2762 List!17859 List!17860) Bool)

(assert (=> b!1623129 (= res!725254 (rulesProduceEachTokenIndividuallyList!964 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1623130 () Bool)

(declare-fun isEmpty!10815 (BalanceConc!11772) Bool)

(assert (=> b!1623130 (= e!1041056 (not (isEmpty!10815 lt!585117)))))

(declare-fun e!1041035 () Bool)

(declare-fun tp!472274 () Bool)

(declare-fun b!1623131 () Bool)

(declare-fun inv!23171 (String!20447) Bool)

(declare-fun inv!23175 (TokenValueInjection!6106) Bool)

(assert (=> b!1623131 (= e!1041043 (and tp!472274 (inv!23171 (tag!3411 (h!23190 rules!1846))) (inv!23175 (transformation!3133 (h!23190 rules!1846))) e!1041035))))

(declare-fun b!1623132 () Bool)

(declare-fun tp!472273 () Bool)

(declare-fun e!1041054 () Bool)

(assert (=> b!1623132 (= e!1041038 (and tp!472273 (inv!23171 (tag!3411 (rule!4959 (h!23191 tokens!457)))) (inv!23175 (transformation!3133 (rule!4959 (h!23191 tokens!457)))) e!1041054))))

(declare-fun b!1623133 () Bool)

(declare-fun res!725239 () Bool)

(assert (=> b!1623133 (=> (not res!725239) (not e!1041050))))

(declare-fun rulesInvariant!2431 (LexerInterface!2762 List!17859) Bool)

(assert (=> b!1623133 (= res!725239 (rulesInvariant!2431 thiss!17113 rules!1846))))

(declare-fun b!1623134 () Bool)

(declare-fun e!1041037 () Bool)

(assert (=> b!1623134 (= e!1041046 (not e!1041037))))

(declare-fun res!725249 () Bool)

(assert (=> b!1623134 (=> res!725249 e!1041037)))

(declare-fun lt!585120 () List!17860)

(assert (=> b!1623134 (= res!725249 (not (= lt!585120 (t!148867 tokens!457))))))

(declare-fun list!6976 (BalanceConc!11774) List!17860)

(assert (=> b!1623134 (= lt!585120 (list!6976 (_1!10075 lt!585107)))))

(declare-fun lt!585121 () Unit!28773)

(declare-fun theoremInvertabilityWhenTokenListSeparable!207 (LexerInterface!2762 List!17859 List!17860) Unit!28773)

(assert (=> b!1623134 (= lt!585121 (theoremInvertabilityWhenTokenListSeparable!207 thiss!17113 rules!1846 (t!148867 tokens!457)))))

(declare-fun isPrefix!1393 (List!17857 List!17857) Bool)

(assert (=> b!1623134 (isPrefix!1393 lt!585118 lt!585113)))

(declare-fun lt!585122 () Unit!28773)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!918 (List!17857 List!17857) Unit!28773)

(assert (=> b!1623134 (= lt!585122 (lemmaConcatTwoListThenFirstIsPrefix!918 lt!585118 lt!585102))))

(declare-fun b!1623135 () Bool)

(declare-fun matchR!1960 (Regex!4461 List!17857) Bool)

(assert (=> b!1623135 (= e!1041049 (matchR!1960 (regex!3133 (rule!4959 (h!23191 tokens!457))) lt!585118))))

(assert (=> b!1623136 (= e!1041054 (and tp!472269 tp!472275))))

(declare-fun b!1623137 () Bool)

(declare-fun res!725253 () Bool)

(assert (=> b!1623137 (=> (not res!725253) (not e!1041050))))

(declare-fun isEmpty!10816 (List!17859) Bool)

(assert (=> b!1623137 (= res!725253 (not (isEmpty!10816 rules!1846)))))

(declare-fun b!1623138 () Bool)

(declare-fun res!725243 () Bool)

(assert (=> b!1623138 (=> (not res!725243) (not e!1041050))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!455 (LexerInterface!2762 List!17860 List!17859) Bool)

(assert (=> b!1623138 (= res!725243 (tokensListTwoByTwoPredicateSeparableList!455 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1623139 () Bool)

(assert (=> b!1623139 (= e!1041055 (= lt!585109 (Cons!17787 (head!3413 lt!585102) Nil!17787)))))

(declare-fun b!1623140 () Bool)

(declare-fun res!725244 () Bool)

(assert (=> b!1623140 (=> res!725244 e!1041047)))

(declare-fun rulesProduceIndividualToken!1414 (LexerInterface!2762 List!17859 Token!5832) Bool)

(assert (=> b!1623140 (= res!725244 (not (rulesProduceIndividualToken!1414 thiss!17113 rules!1846 (h!23191 tokens!457))))))

(declare-fun b!1623141 () Bool)

(assert (=> b!1623141 (= e!1041051 e!1041047)))

(declare-fun res!725252 () Bool)

(assert (=> b!1623141 (=> res!725252 e!1041047)))

(declare-fun lt!585105 () List!17857)

(declare-fun lt!585110 () List!17857)

(assert (=> b!1623141 (= res!725252 (or (not (= lt!585110 lt!585105)) (not (= lt!585105 lt!585118)) (not (= lt!585110 lt!585118))))))

(declare-fun printList!877 (LexerInterface!2762 List!17860) List!17857)

(assert (=> b!1623141 (= lt!585105 (printList!877 thiss!17113 (Cons!17790 (h!23191 tokens!457) Nil!17790)))))

(declare-fun lt!585099 () BalanceConc!11772)

(assert (=> b!1623141 (= lt!585110 (list!6975 lt!585099))))

(declare-fun lt!585119 () BalanceConc!11774)

(declare-fun printTailRec!815 (LexerInterface!2762 BalanceConc!11774 Int BalanceConc!11772) BalanceConc!11772)

(assert (=> b!1623141 (= lt!585099 (printTailRec!815 thiss!17113 lt!585119 0 (BalanceConc!11773 Empty!5914)))))

(assert (=> b!1623141 (= lt!585099 (print!1293 thiss!17113 lt!585119))))

(declare-fun singletonSeq!1545 (Token!5832) BalanceConc!11774)

(assert (=> b!1623141 (= lt!585119 (singletonSeq!1545 (h!23191 tokens!457)))))

(assert (=> b!1623141 (= lt!585112 (maxPrefix!1326 thiss!17113 rules!1846 lt!585101))))

(declare-fun b!1623142 () Bool)

(declare-fun res!725238 () Bool)

(assert (=> b!1623142 (=> (not res!725238) (not e!1041049))))

(declare-fun isEmpty!10817 (List!17857) Bool)

(assert (=> b!1623142 (= res!725238 (isEmpty!10817 (_2!10077 lt!585114)))))

(assert (=> b!1623143 (= e!1041035 (and tp!472268 tp!472272))))

(declare-fun b!1623144 () Bool)

(assert (=> b!1623144 (= e!1041037 e!1041051)))

(declare-fun res!725248 () Bool)

(assert (=> b!1623144 (=> res!725248 e!1041051)))

(declare-fun lt!585103 () List!17860)

(declare-fun lt!585097 () List!17860)

(assert (=> b!1623144 (= res!725248 (or (not (= lt!585120 lt!585103)) (not (= lt!585103 lt!585097))))))

(assert (=> b!1623144 (= lt!585103 (list!6976 lt!585106))))

(assert (=> b!1623144 (= lt!585120 lt!585097)))

(declare-fun prepend!655 (BalanceConc!11774 Token!5832) BalanceConc!11774)

(assert (=> b!1623144 (= lt!585097 (list!6976 (prepend!655 (seqFromList!2016 (t!148867 (t!148867 tokens!457))) (h!23191 (t!148867 tokens!457)))))))

(declare-fun lt!585108 () Unit!28773)

(declare-fun seqFromListBHdTlConstructive!210 (Token!5832 List!17860 BalanceConc!11774) Unit!28773)

(assert (=> b!1623144 (= lt!585108 (seqFromListBHdTlConstructive!210 (h!23191 (t!148867 tokens!457)) (t!148867 (t!148867 tokens!457)) (_1!10075 lt!585107)))))

(assert (= (and start!154106 res!725241) b!1623137))

(assert (= (and b!1623137 res!725253) b!1623133))

(assert (= (and b!1623133 res!725239) b!1623129))

(assert (= (and b!1623129 res!725254) b!1623138))

(assert (= (and b!1623138 res!725243) b!1623121))

(assert (= (and b!1623121 res!725247) b!1623117))

(assert (= (and b!1623117 res!725251) b!1623134))

(assert (= (and b!1623134 (not res!725249)) b!1623144))

(assert (= (and b!1623144 (not res!725248)) b!1623120))

(assert (= (and b!1623120 (not res!725236)) b!1623141))

(assert (= (and b!1623141 (not res!725252)) b!1623140))

(assert (= (and b!1623140 (not res!725244)) b!1623116))

(assert (= (and b!1623116 (not res!725242)) b!1623122))

(assert (= (and b!1623122 (not res!725250)) b!1623118))

(assert (= (and b!1623118 (not res!725233)) b!1623126))

(assert (= (and b!1623126 (not res!725237)) b!1623119))

(assert (= (and b!1623119 res!725234) b!1623127))

(assert (= (and b!1623127 res!725240) b!1623139))

(assert (= (and b!1623119 (not res!725246)) b!1623128))

(assert (= (and b!1623128 res!725245) b!1623142))

(assert (= (and b!1623142 res!725238) b!1623135))

(assert (= (and b!1623128 (not res!725235)) b!1623130))

(assert (= b!1623131 b!1623143))

(assert (= b!1623125 b!1623131))

(assert (= (and start!154106 ((_ is Cons!17789) rules!1846)) b!1623125))

(assert (= b!1623132 b!1623136))

(assert (= b!1623124 b!1623132))

(assert (= b!1623123 b!1623124))

(assert (= (and start!154106 ((_ is Cons!17790) tokens!457)) b!1623123))

(declare-fun m!1949355 () Bool)

(assert (=> b!1623128 m!1949355))

(declare-fun m!1949357 () Bool)

(assert (=> b!1623128 m!1949357))

(declare-fun m!1949359 () Bool)

(assert (=> b!1623128 m!1949359))

(declare-fun m!1949361 () Bool)

(assert (=> b!1623128 m!1949361))

(declare-fun m!1949363 () Bool)

(assert (=> b!1623128 m!1949363))

(declare-fun m!1949365 () Bool)

(assert (=> b!1623128 m!1949365))

(declare-fun m!1949367 () Bool)

(assert (=> b!1623128 m!1949367))

(assert (=> b!1623128 m!1949365))

(assert (=> b!1623128 m!1949355))

(declare-fun m!1949369 () Bool)

(assert (=> b!1623142 m!1949369))

(declare-fun m!1949371 () Bool)

(assert (=> b!1623126 m!1949371))

(assert (=> b!1623126 m!1949371))

(declare-fun m!1949373 () Bool)

(assert (=> b!1623126 m!1949373))

(declare-fun m!1949375 () Bool)

(assert (=> b!1623126 m!1949375))

(declare-fun m!1949377 () Bool)

(assert (=> b!1623129 m!1949377))

(declare-fun m!1949379 () Bool)

(assert (=> b!1623116 m!1949379))

(assert (=> b!1623116 m!1949379))

(declare-fun m!1949381 () Bool)

(assert (=> b!1623116 m!1949381))

(declare-fun m!1949383 () Bool)

(assert (=> b!1623116 m!1949383))

(declare-fun m!1949385 () Bool)

(assert (=> b!1623117 m!1949385))

(declare-fun m!1949387 () Bool)

(assert (=> b!1623117 m!1949387))

(declare-fun m!1949389 () Bool)

(assert (=> b!1623117 m!1949389))

(declare-fun m!1949391 () Bool)

(assert (=> b!1623117 m!1949391))

(declare-fun m!1949393 () Bool)

(assert (=> b!1623117 m!1949393))

(declare-fun m!1949395 () Bool)

(assert (=> b!1623117 m!1949395))

(declare-fun m!1949397 () Bool)

(assert (=> b!1623117 m!1949397))

(assert (=> b!1623117 m!1949391))

(declare-fun m!1949399 () Bool)

(assert (=> b!1623117 m!1949399))

(declare-fun m!1949401 () Bool)

(assert (=> b!1623117 m!1949401))

(declare-fun m!1949403 () Bool)

(assert (=> b!1623117 m!1949403))

(declare-fun m!1949405 () Bool)

(assert (=> b!1623118 m!1949405))

(declare-fun m!1949407 () Bool)

(assert (=> b!1623118 m!1949407))

(declare-fun m!1949409 () Bool)

(assert (=> b!1623118 m!1949409))

(assert (=> b!1623118 m!1949407))

(declare-fun m!1949411 () Bool)

(assert (=> b!1623118 m!1949411))

(declare-fun m!1949413 () Bool)

(assert (=> b!1623118 m!1949413))

(declare-fun m!1949415 () Bool)

(assert (=> b!1623118 m!1949415))

(assert (=> b!1623118 m!1949411))

(assert (=> b!1623118 m!1949415))

(declare-fun m!1949417 () Bool)

(assert (=> b!1623119 m!1949417))

(assert (=> b!1623119 m!1949417))

(declare-fun m!1949419 () Bool)

(assert (=> b!1623119 m!1949419))

(assert (=> b!1623119 m!1949419))

(declare-fun m!1949421 () Bool)

(assert (=> b!1623119 m!1949421))

(declare-fun m!1949423 () Bool)

(assert (=> b!1623119 m!1949423))

(declare-fun m!1949425 () Bool)

(assert (=> b!1623131 m!1949425))

(declare-fun m!1949427 () Bool)

(assert (=> b!1623131 m!1949427))

(declare-fun m!1949429 () Bool)

(assert (=> b!1623135 m!1949429))

(declare-fun m!1949431 () Bool)

(assert (=> b!1623140 m!1949431))

(declare-fun m!1949433 () Bool)

(assert (=> b!1623130 m!1949433))

(declare-fun m!1949435 () Bool)

(assert (=> b!1623144 m!1949435))

(declare-fun m!1949437 () Bool)

(assert (=> b!1623144 m!1949437))

(declare-fun m!1949439 () Bool)

(assert (=> b!1623144 m!1949439))

(declare-fun m!1949441 () Bool)

(assert (=> b!1623144 m!1949441))

(assert (=> b!1623144 m!1949437))

(assert (=> b!1623144 m!1949441))

(declare-fun m!1949443 () Bool)

(assert (=> b!1623144 m!1949443))

(declare-fun m!1949445 () Bool)

(assert (=> b!1623133 m!1949445))

(declare-fun m!1949447 () Bool)

(assert (=> b!1623127 m!1949447))

(declare-fun m!1949449 () Bool)

(assert (=> b!1623120 m!1949449))

(declare-fun m!1949451 () Bool)

(assert (=> b!1623123 m!1949451))

(declare-fun m!1949453 () Bool)

(assert (=> b!1623132 m!1949453))

(declare-fun m!1949455 () Bool)

(assert (=> b!1623132 m!1949455))

(declare-fun m!1949457 () Bool)

(assert (=> b!1623138 m!1949457))

(declare-fun m!1949459 () Bool)

(assert (=> b!1623134 m!1949459))

(declare-fun m!1949461 () Bool)

(assert (=> b!1623134 m!1949461))

(declare-fun m!1949463 () Bool)

(assert (=> b!1623134 m!1949463))

(declare-fun m!1949465 () Bool)

(assert (=> b!1623134 m!1949465))

(declare-fun m!1949467 () Bool)

(assert (=> b!1623141 m!1949467))

(declare-fun m!1949469 () Bool)

(assert (=> b!1623141 m!1949469))

(declare-fun m!1949471 () Bool)

(assert (=> b!1623141 m!1949471))

(declare-fun m!1949473 () Bool)

(assert (=> b!1623141 m!1949473))

(declare-fun m!1949475 () Bool)

(assert (=> b!1623141 m!1949475))

(declare-fun m!1949477 () Bool)

(assert (=> b!1623141 m!1949477))

(declare-fun m!1949479 () Bool)

(assert (=> b!1623124 m!1949479))

(declare-fun m!1949481 () Bool)

(assert (=> b!1623122 m!1949481))

(declare-fun m!1949483 () Bool)

(assert (=> b!1623122 m!1949483))

(declare-fun m!1949485 () Bool)

(assert (=> b!1623139 m!1949485))

(declare-fun m!1949487 () Bool)

(assert (=> b!1623137 m!1949487))

(check-sat b_and!115121 (not b!1623128) (not b_next!44471) (not b!1623144) (not b!1623127) (not b!1623125) (not b!1623116) (not b!1623119) (not b!1623118) (not b!1623134) b_and!115119 (not b!1623133) (not b!1623139) (not b_next!44477) (not b!1623137) (not b!1623129) (not b!1623124) b_and!115117 (not b!1623123) (not b!1623131) (not b!1623132) b_and!115123 (not b_next!44475) (not b!1623142) (not b!1623135) (not b!1623140) (not b!1623126) (not b!1623120) (not b!1623138) (not b!1623141) (not b_next!44473) (not b!1623122) (not b!1623117) (not b!1623130))
(check-sat b_and!115119 (not b_next!44477) b_and!115121 (not b_next!44471) b_and!115117 (not b_next!44473) b_and!115123 (not b_next!44475))
(get-model)

(declare-fun b!1623326 () Bool)

(declare-fun e!1041158 () Bool)

(assert (=> b!1623326 (= e!1041158 true)))

(declare-fun b!1623325 () Bool)

(declare-fun e!1041157 () Bool)

(assert (=> b!1623325 (= e!1041157 e!1041158)))

(declare-fun b!1623324 () Bool)

(declare-fun e!1041156 () Bool)

(assert (=> b!1623324 (= e!1041156 e!1041157)))

(declare-fun d!488713 () Bool)

(assert (=> d!488713 e!1041156))

(assert (= b!1623325 b!1623326))

(assert (= b!1623324 b!1623325))

(assert (= (and d!488713 ((_ is Cons!17789) rules!1846)) b!1623324))

(declare-fun lambda!67231 () Int)

(declare-fun order!10551 () Int)

(declare-fun order!10549 () Int)

(declare-fun dynLambda!7936 (Int Int) Int)

(declare-fun dynLambda!7937 (Int Int) Int)

(assert (=> b!1623326 (< (dynLambda!7936 order!10549 (toValue!4560 (transformation!3133 (h!23190 rules!1846)))) (dynLambda!7937 order!10551 lambda!67231))))

(declare-fun order!10553 () Int)

(declare-fun dynLambda!7938 (Int Int) Int)

(assert (=> b!1623326 (< (dynLambda!7938 order!10553 (toChars!4419 (transformation!3133 (h!23190 rules!1846)))) (dynLambda!7937 order!10551 lambda!67231))))

(assert (=> d!488713 true))

(declare-fun lt!585219 () Bool)

(declare-fun forall!4079 (List!17860 Int) Bool)

(assert (=> d!488713 (= lt!585219 (forall!4079 tokens!457 lambda!67231))))

(declare-fun e!1041148 () Bool)

(assert (=> d!488713 (= lt!585219 e!1041148)))

(declare-fun res!725367 () Bool)

(assert (=> d!488713 (=> res!725367 e!1041148)))

(assert (=> d!488713 (= res!725367 (not ((_ is Cons!17790) tokens!457)))))

(assert (=> d!488713 (not (isEmpty!10816 rules!1846))))

(assert (=> d!488713 (= (rulesProduceEachTokenIndividuallyList!964 thiss!17113 rules!1846 tokens!457) lt!585219)))

(declare-fun b!1623314 () Bool)

(declare-fun e!1041149 () Bool)

(assert (=> b!1623314 (= e!1041148 e!1041149)))

(declare-fun res!725366 () Bool)

(assert (=> b!1623314 (=> (not res!725366) (not e!1041149))))

(assert (=> b!1623314 (= res!725366 (rulesProduceIndividualToken!1414 thiss!17113 rules!1846 (h!23191 tokens!457)))))

(declare-fun b!1623315 () Bool)

(assert (=> b!1623315 (= e!1041149 (rulesProduceEachTokenIndividuallyList!964 thiss!17113 rules!1846 (t!148867 tokens!457)))))

(assert (= (and d!488713 (not res!725367)) b!1623314))

(assert (= (and b!1623314 res!725366) b!1623315))

(declare-fun m!1949787 () Bool)

(assert (=> d!488713 m!1949787))

(assert (=> d!488713 m!1949487))

(assert (=> b!1623314 m!1949431))

(declare-fun m!1949789 () Bool)

(assert (=> b!1623315 m!1949789))

(assert (=> b!1623129 d!488713))

(declare-fun d!488773 () Bool)

(assert (=> d!488773 (= (head!3413 (originalCharacters!3947 (h!23191 (t!148867 tokens!457)))) (h!23188 (originalCharacters!3947 (h!23191 (t!148867 tokens!457)))))))

(assert (=> b!1623127 d!488773))

(declare-fun b!1623347 () Bool)

(declare-fun res!725382 () Bool)

(declare-fun e!1041165 () Bool)

(assert (=> b!1623347 (=> (not res!725382) (not e!1041165))))

(declare-fun lt!585230 () Option!3286)

(assert (=> b!1623347 (= res!725382 (matchR!1960 (regex!3133 (rule!4959 (_1!10077 (get!5120 lt!585230)))) (list!6975 (charsOf!1782 (_1!10077 (get!5120 lt!585230))))))))

(declare-fun b!1623348 () Bool)

(declare-fun res!725387 () Bool)

(assert (=> b!1623348 (=> (not res!725387) (not e!1041165))))

(declare-fun size!14252 (List!17857) Int)

(assert (=> b!1623348 (= res!725387 (< (size!14252 (_2!10077 (get!5120 lt!585230))) (size!14252 (originalCharacters!3947 (h!23191 tokens!457)))))))

(declare-fun b!1623349 () Bool)

(declare-fun res!725388 () Bool)

(assert (=> b!1623349 (=> (not res!725388) (not e!1041165))))

(assert (=> b!1623349 (= res!725388 (= (list!6975 (charsOf!1782 (_1!10077 (get!5120 lt!585230)))) (originalCharacters!3947 (_1!10077 (get!5120 lt!585230)))))))

(declare-fun b!1623350 () Bool)

(declare-fun res!725385 () Bool)

(assert (=> b!1623350 (=> (not res!725385) (not e!1041165))))

(declare-fun apply!4528 (TokenValueInjection!6106 BalanceConc!11772) TokenValue!3223)

(assert (=> b!1623350 (= res!725385 (= (value!98963 (_1!10077 (get!5120 lt!585230))) (apply!4528 (transformation!3133 (rule!4959 (_1!10077 (get!5120 lt!585230)))) (seqFromList!2015 (originalCharacters!3947 (_1!10077 (get!5120 lt!585230)))))))))

(declare-fun b!1623351 () Bool)

(declare-fun contains!3110 (List!17859 Rule!6066) Bool)

(assert (=> b!1623351 (= e!1041165 (contains!3110 rules!1846 (rule!4959 (_1!10077 (get!5120 lt!585230)))))))

(declare-fun call!105181 () Option!3286)

(declare-fun bm!105176 () Bool)

(declare-fun maxPrefixOneRule!771 (LexerInterface!2762 Rule!6066 List!17857) Option!3286)

(assert (=> bm!105176 (= call!105181 (maxPrefixOneRule!771 thiss!17113 (h!23190 rules!1846) (originalCharacters!3947 (h!23191 tokens!457))))))

(declare-fun b!1623352 () Bool)

(declare-fun res!725384 () Bool)

(assert (=> b!1623352 (=> (not res!725384) (not e!1041165))))

(assert (=> b!1623352 (= res!725384 (= (++!4721 (list!6975 (charsOf!1782 (_1!10077 (get!5120 lt!585230)))) (_2!10077 (get!5120 lt!585230))) (originalCharacters!3947 (h!23191 tokens!457))))))

(declare-fun b!1623353 () Bool)

(declare-fun e!1041166 () Bool)

(assert (=> b!1623353 (= e!1041166 e!1041165)))

(declare-fun res!725386 () Bool)

(assert (=> b!1623353 (=> (not res!725386) (not e!1041165))))

(assert (=> b!1623353 (= res!725386 (isDefined!2653 lt!585230))))

(declare-fun b!1623354 () Bool)

(declare-fun e!1041167 () Option!3286)

(declare-fun lt!585233 () Option!3286)

(declare-fun lt!585234 () Option!3286)

(assert (=> b!1623354 (= e!1041167 (ite (and ((_ is None!3285) lt!585233) ((_ is None!3285) lt!585234)) None!3285 (ite ((_ is None!3285) lt!585234) lt!585233 (ite ((_ is None!3285) lt!585233) lt!585234 (ite (>= (size!14248 (_1!10077 (v!24308 lt!585233))) (size!14248 (_1!10077 (v!24308 lt!585234)))) lt!585233 lt!585234)))))))

(assert (=> b!1623354 (= lt!585233 call!105181)))

(assert (=> b!1623354 (= lt!585234 (maxPrefix!1326 thiss!17113 (t!148866 rules!1846) (originalCharacters!3947 (h!23191 tokens!457))))))

(declare-fun b!1623355 () Bool)

(assert (=> b!1623355 (= e!1041167 call!105181)))

(declare-fun d!488775 () Bool)

(assert (=> d!488775 e!1041166))

(declare-fun res!725383 () Bool)

(assert (=> d!488775 (=> res!725383 e!1041166)))

(declare-fun isEmpty!10821 (Option!3286) Bool)

(assert (=> d!488775 (= res!725383 (isEmpty!10821 lt!585230))))

(assert (=> d!488775 (= lt!585230 e!1041167)))

(declare-fun c!264281 () Bool)

(assert (=> d!488775 (= c!264281 (and ((_ is Cons!17789) rules!1846) ((_ is Nil!17789) (t!148866 rules!1846))))))

(declare-fun lt!585232 () Unit!28773)

(declare-fun lt!585231 () Unit!28773)

(assert (=> d!488775 (= lt!585232 lt!585231)))

(assert (=> d!488775 (isPrefix!1393 (originalCharacters!3947 (h!23191 tokens!457)) (originalCharacters!3947 (h!23191 tokens!457)))))

(declare-fun lemmaIsPrefixRefl!956 (List!17857 List!17857) Unit!28773)

(assert (=> d!488775 (= lt!585231 (lemmaIsPrefixRefl!956 (originalCharacters!3947 (h!23191 tokens!457)) (originalCharacters!3947 (h!23191 tokens!457))))))

(declare-fun rulesValidInductive!968 (LexerInterface!2762 List!17859) Bool)

(assert (=> d!488775 (rulesValidInductive!968 thiss!17113 rules!1846)))

(assert (=> d!488775 (= (maxPrefix!1326 thiss!17113 rules!1846 (originalCharacters!3947 (h!23191 tokens!457))) lt!585230)))

(assert (= (and d!488775 c!264281) b!1623355))

(assert (= (and d!488775 (not c!264281)) b!1623354))

(assert (= (or b!1623355 b!1623354) bm!105176))

(assert (= (and d!488775 (not res!725383)) b!1623353))

(assert (= (and b!1623353 res!725386) b!1623349))

(assert (= (and b!1623349 res!725388) b!1623348))

(assert (= (and b!1623348 res!725387) b!1623352))

(assert (= (and b!1623352 res!725384) b!1623350))

(assert (= (and b!1623350 res!725385) b!1623347))

(assert (= (and b!1623347 res!725382) b!1623351))

(declare-fun m!1949791 () Bool)

(assert (=> b!1623348 m!1949791))

(declare-fun m!1949793 () Bool)

(assert (=> b!1623348 m!1949793))

(declare-fun m!1949795 () Bool)

(assert (=> b!1623348 m!1949795))

(assert (=> b!1623351 m!1949791))

(declare-fun m!1949797 () Bool)

(assert (=> b!1623351 m!1949797))

(assert (=> b!1623347 m!1949791))

(declare-fun m!1949799 () Bool)

(assert (=> b!1623347 m!1949799))

(assert (=> b!1623347 m!1949799))

(declare-fun m!1949801 () Bool)

(assert (=> b!1623347 m!1949801))

(assert (=> b!1623347 m!1949801))

(declare-fun m!1949803 () Bool)

(assert (=> b!1623347 m!1949803))

(declare-fun m!1949805 () Bool)

(assert (=> b!1623354 m!1949805))

(declare-fun m!1949807 () Bool)

(assert (=> b!1623353 m!1949807))

(assert (=> b!1623350 m!1949791))

(declare-fun m!1949809 () Bool)

(assert (=> b!1623350 m!1949809))

(assert (=> b!1623350 m!1949809))

(declare-fun m!1949811 () Bool)

(assert (=> b!1623350 m!1949811))

(declare-fun m!1949813 () Bool)

(assert (=> d!488775 m!1949813))

(declare-fun m!1949815 () Bool)

(assert (=> d!488775 m!1949815))

(declare-fun m!1949817 () Bool)

(assert (=> d!488775 m!1949817))

(declare-fun m!1949819 () Bool)

(assert (=> d!488775 m!1949819))

(assert (=> b!1623352 m!1949791))

(assert (=> b!1623352 m!1949799))

(assert (=> b!1623352 m!1949799))

(assert (=> b!1623352 m!1949801))

(assert (=> b!1623352 m!1949801))

(declare-fun m!1949821 () Bool)

(assert (=> b!1623352 m!1949821))

(assert (=> b!1623349 m!1949791))

(assert (=> b!1623349 m!1949799))

(assert (=> b!1623349 m!1949799))

(assert (=> b!1623349 m!1949801))

(declare-fun m!1949823 () Bool)

(assert (=> bm!105176 m!1949823))

(assert (=> b!1623128 d!488775))

(declare-fun b!1623356 () Bool)

(declare-fun res!725389 () Bool)

(declare-fun e!1041168 () Bool)

(assert (=> b!1623356 (=> (not res!725389) (not e!1041168))))

(declare-fun lt!585235 () Option!3286)

(assert (=> b!1623356 (= res!725389 (matchR!1960 (regex!3133 (rule!4959 (_1!10077 (get!5120 lt!585235)))) (list!6975 (charsOf!1782 (_1!10077 (get!5120 lt!585235))))))))

(declare-fun b!1623357 () Bool)

(declare-fun res!725394 () Bool)

(assert (=> b!1623357 (=> (not res!725394) (not e!1041168))))

(assert (=> b!1623357 (= res!725394 (< (size!14252 (_2!10077 (get!5120 lt!585235))) (size!14252 lt!585118)))))

(declare-fun b!1623358 () Bool)

(declare-fun res!725395 () Bool)

(assert (=> b!1623358 (=> (not res!725395) (not e!1041168))))

(assert (=> b!1623358 (= res!725395 (= (list!6975 (charsOf!1782 (_1!10077 (get!5120 lt!585235)))) (originalCharacters!3947 (_1!10077 (get!5120 lt!585235)))))))

(declare-fun b!1623359 () Bool)

(declare-fun res!725392 () Bool)

(assert (=> b!1623359 (=> (not res!725392) (not e!1041168))))

(assert (=> b!1623359 (= res!725392 (= (value!98963 (_1!10077 (get!5120 lt!585235))) (apply!4528 (transformation!3133 (rule!4959 (_1!10077 (get!5120 lt!585235)))) (seqFromList!2015 (originalCharacters!3947 (_1!10077 (get!5120 lt!585235)))))))))

(declare-fun b!1623360 () Bool)

(assert (=> b!1623360 (= e!1041168 (contains!3110 rules!1846 (rule!4959 (_1!10077 (get!5120 lt!585235)))))))

(declare-fun call!105182 () Option!3286)

(declare-fun bm!105177 () Bool)

(assert (=> bm!105177 (= call!105182 (maxPrefixOneRule!771 thiss!17113 (h!23190 rules!1846) lt!585118))))

(declare-fun b!1623361 () Bool)

(declare-fun res!725391 () Bool)

(assert (=> b!1623361 (=> (not res!725391) (not e!1041168))))

(assert (=> b!1623361 (= res!725391 (= (++!4721 (list!6975 (charsOf!1782 (_1!10077 (get!5120 lt!585235)))) (_2!10077 (get!5120 lt!585235))) lt!585118))))

(declare-fun b!1623362 () Bool)

(declare-fun e!1041169 () Bool)

(assert (=> b!1623362 (= e!1041169 e!1041168)))

(declare-fun res!725393 () Bool)

(assert (=> b!1623362 (=> (not res!725393) (not e!1041168))))

(assert (=> b!1623362 (= res!725393 (isDefined!2653 lt!585235))))

(declare-fun b!1623363 () Bool)

(declare-fun e!1041170 () Option!3286)

(declare-fun lt!585238 () Option!3286)

(declare-fun lt!585239 () Option!3286)

(assert (=> b!1623363 (= e!1041170 (ite (and ((_ is None!3285) lt!585238) ((_ is None!3285) lt!585239)) None!3285 (ite ((_ is None!3285) lt!585239) lt!585238 (ite ((_ is None!3285) lt!585238) lt!585239 (ite (>= (size!14248 (_1!10077 (v!24308 lt!585238))) (size!14248 (_1!10077 (v!24308 lt!585239)))) lt!585238 lt!585239)))))))

(assert (=> b!1623363 (= lt!585238 call!105182)))

(assert (=> b!1623363 (= lt!585239 (maxPrefix!1326 thiss!17113 (t!148866 rules!1846) lt!585118))))

(declare-fun b!1623364 () Bool)

(assert (=> b!1623364 (= e!1041170 call!105182)))

(declare-fun d!488777 () Bool)

(assert (=> d!488777 e!1041169))

(declare-fun res!725390 () Bool)

(assert (=> d!488777 (=> res!725390 e!1041169)))

(assert (=> d!488777 (= res!725390 (isEmpty!10821 lt!585235))))

(assert (=> d!488777 (= lt!585235 e!1041170)))

(declare-fun c!264282 () Bool)

(assert (=> d!488777 (= c!264282 (and ((_ is Cons!17789) rules!1846) ((_ is Nil!17789) (t!148866 rules!1846))))))

(declare-fun lt!585237 () Unit!28773)

(declare-fun lt!585236 () Unit!28773)

(assert (=> d!488777 (= lt!585237 lt!585236)))

(assert (=> d!488777 (isPrefix!1393 lt!585118 lt!585118)))

(assert (=> d!488777 (= lt!585236 (lemmaIsPrefixRefl!956 lt!585118 lt!585118))))

(assert (=> d!488777 (rulesValidInductive!968 thiss!17113 rules!1846)))

(assert (=> d!488777 (= (maxPrefix!1326 thiss!17113 rules!1846 lt!585118) lt!585235)))

(assert (= (and d!488777 c!264282) b!1623364))

(assert (= (and d!488777 (not c!264282)) b!1623363))

(assert (= (or b!1623364 b!1623363) bm!105177))

(assert (= (and d!488777 (not res!725390)) b!1623362))

(assert (= (and b!1623362 res!725393) b!1623358))

(assert (= (and b!1623358 res!725395) b!1623357))

(assert (= (and b!1623357 res!725394) b!1623361))

(assert (= (and b!1623361 res!725391) b!1623359))

(assert (= (and b!1623359 res!725392) b!1623356))

(assert (= (and b!1623356 res!725389) b!1623360))

(declare-fun m!1949825 () Bool)

(assert (=> b!1623357 m!1949825))

(declare-fun m!1949827 () Bool)

(assert (=> b!1623357 m!1949827))

(declare-fun m!1949829 () Bool)

(assert (=> b!1623357 m!1949829))

(assert (=> b!1623360 m!1949825))

(declare-fun m!1949831 () Bool)

(assert (=> b!1623360 m!1949831))

(assert (=> b!1623356 m!1949825))

(declare-fun m!1949833 () Bool)

(assert (=> b!1623356 m!1949833))

(assert (=> b!1623356 m!1949833))

(declare-fun m!1949835 () Bool)

(assert (=> b!1623356 m!1949835))

(assert (=> b!1623356 m!1949835))

(declare-fun m!1949837 () Bool)

(assert (=> b!1623356 m!1949837))

(declare-fun m!1949839 () Bool)

(assert (=> b!1623363 m!1949839))

(declare-fun m!1949841 () Bool)

(assert (=> b!1623362 m!1949841))

(assert (=> b!1623359 m!1949825))

(declare-fun m!1949843 () Bool)

(assert (=> b!1623359 m!1949843))

(assert (=> b!1623359 m!1949843))

(declare-fun m!1949845 () Bool)

(assert (=> b!1623359 m!1949845))

(declare-fun m!1949847 () Bool)

(assert (=> d!488777 m!1949847))

(declare-fun m!1949849 () Bool)

(assert (=> d!488777 m!1949849))

(declare-fun m!1949851 () Bool)

(assert (=> d!488777 m!1949851))

(assert (=> d!488777 m!1949819))

(assert (=> b!1623361 m!1949825))

(assert (=> b!1623361 m!1949833))

(assert (=> b!1623361 m!1949833))

(assert (=> b!1623361 m!1949835))

(assert (=> b!1623361 m!1949835))

(declare-fun m!1949853 () Bool)

(assert (=> b!1623361 m!1949853))

(assert (=> b!1623358 m!1949825))

(assert (=> b!1623358 m!1949833))

(assert (=> b!1623358 m!1949833))

(assert (=> b!1623358 m!1949835))

(declare-fun m!1949855 () Bool)

(assert (=> bm!105177 m!1949855))

(assert (=> b!1623128 d!488777))

(declare-fun d!488779 () Bool)

(assert (=> d!488779 (= (isDefined!2653 (maxPrefix!1326 thiss!17113 rules!1846 (originalCharacters!3947 (h!23191 tokens!457)))) (not (isEmpty!10821 (maxPrefix!1326 thiss!17113 rules!1846 (originalCharacters!3947 (h!23191 tokens!457))))))))

(declare-fun bs!394639 () Bool)

(assert (= bs!394639 d!488779))

(assert (=> bs!394639 m!1949355))

(declare-fun m!1949857 () Bool)

(assert (=> bs!394639 m!1949857))

(assert (=> b!1623128 d!488779))

(declare-fun b!1623375 () Bool)

(declare-fun res!725401 () Bool)

(declare-fun e!1041176 () Bool)

(assert (=> b!1623375 (=> (not res!725401) (not e!1041176))))

(declare-fun lt!585242 () List!17857)

(assert (=> b!1623375 (= res!725401 (= (size!14252 lt!585242) (+ (size!14252 (originalCharacters!3947 (h!23191 tokens!457))) (size!14252 lt!585115))))))

(declare-fun b!1623373 () Bool)

(declare-fun e!1041175 () List!17857)

(assert (=> b!1623373 (= e!1041175 lt!585115)))

(declare-fun b!1623376 () Bool)

(assert (=> b!1623376 (= e!1041176 (or (not (= lt!585115 Nil!17787)) (= lt!585242 (originalCharacters!3947 (h!23191 tokens!457)))))))

(declare-fun b!1623374 () Bool)

(assert (=> b!1623374 (= e!1041175 (Cons!17787 (h!23188 (originalCharacters!3947 (h!23191 tokens!457))) (++!4721 (t!148864 (originalCharacters!3947 (h!23191 tokens!457))) lt!585115)))))

(declare-fun d!488781 () Bool)

(assert (=> d!488781 e!1041176))

(declare-fun res!725400 () Bool)

(assert (=> d!488781 (=> (not res!725400) (not e!1041176))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2467 (List!17857) (InoxSet C!9096))

(assert (=> d!488781 (= res!725400 (= (content!2467 lt!585242) ((_ map or) (content!2467 (originalCharacters!3947 (h!23191 tokens!457))) (content!2467 lt!585115))))))

(assert (=> d!488781 (= lt!585242 e!1041175)))

(declare-fun c!264285 () Bool)

(assert (=> d!488781 (= c!264285 ((_ is Nil!17787) (originalCharacters!3947 (h!23191 tokens!457))))))

(assert (=> d!488781 (= (++!4721 (originalCharacters!3947 (h!23191 tokens!457)) lt!585115) lt!585242)))

(assert (= (and d!488781 c!264285) b!1623373))

(assert (= (and d!488781 (not c!264285)) b!1623374))

(assert (= (and d!488781 res!725400) b!1623375))

(assert (= (and b!1623375 res!725401) b!1623376))

(declare-fun m!1949859 () Bool)

(assert (=> b!1623375 m!1949859))

(assert (=> b!1623375 m!1949795))

(declare-fun m!1949861 () Bool)

(assert (=> b!1623375 m!1949861))

(declare-fun m!1949863 () Bool)

(assert (=> b!1623374 m!1949863))

(declare-fun m!1949865 () Bool)

(assert (=> d!488781 m!1949865))

(declare-fun m!1949867 () Bool)

(assert (=> d!488781 m!1949867))

(declare-fun m!1949869 () Bool)

(assert (=> d!488781 m!1949869))

(assert (=> b!1623128 d!488781))

(declare-fun d!488783 () Bool)

(assert (=> d!488783 (= (isDefined!2653 lt!585116) (not (isEmpty!10821 lt!585116)))))

(declare-fun bs!394640 () Bool)

(assert (= bs!394640 d!488783))

(declare-fun m!1949871 () Bool)

(assert (=> bs!394640 m!1949871))

(assert (=> b!1623128 d!488783))

(declare-fun d!488785 () Bool)

(declare-fun c!264288 () Bool)

(assert (=> d!488785 (= c!264288 (isEmpty!10817 (++!4721 (originalCharacters!3947 (h!23191 tokens!457)) lt!585115)))))

(declare-fun e!1041179 () Bool)

(assert (=> d!488785 (= (prefixMatch!396 lt!585104 (++!4721 (originalCharacters!3947 (h!23191 tokens!457)) lt!585115)) e!1041179)))

(declare-fun b!1623381 () Bool)

(declare-fun lostCause!434 (Regex!4461) Bool)

(assert (=> b!1623381 (= e!1041179 (not (lostCause!434 lt!585104)))))

(declare-fun b!1623382 () Bool)

(declare-fun derivativeStep!1078 (Regex!4461 C!9096) Regex!4461)

(declare-fun tail!2354 (List!17857) List!17857)

(assert (=> b!1623382 (= e!1041179 (prefixMatch!396 (derivativeStep!1078 lt!585104 (head!3413 (++!4721 (originalCharacters!3947 (h!23191 tokens!457)) lt!585115))) (tail!2354 (++!4721 (originalCharacters!3947 (h!23191 tokens!457)) lt!585115))))))

(assert (= (and d!488785 c!264288) b!1623381))

(assert (= (and d!488785 (not c!264288)) b!1623382))

(assert (=> d!488785 m!1949365))

(declare-fun m!1949873 () Bool)

(assert (=> d!488785 m!1949873))

(declare-fun m!1949875 () Bool)

(assert (=> b!1623381 m!1949875))

(assert (=> b!1623382 m!1949365))

(declare-fun m!1949877 () Bool)

(assert (=> b!1623382 m!1949877))

(assert (=> b!1623382 m!1949877))

(declare-fun m!1949879 () Bool)

(assert (=> b!1623382 m!1949879))

(assert (=> b!1623382 m!1949365))

(declare-fun m!1949881 () Bool)

(assert (=> b!1623382 m!1949881))

(assert (=> b!1623382 m!1949879))

(assert (=> b!1623382 m!1949881))

(declare-fun m!1949883 () Bool)

(assert (=> b!1623382 m!1949883))

(assert (=> b!1623128 d!488785))

(declare-fun d!488787 () Bool)

(assert (=> d!488787 (= (get!5120 lt!585116) (v!24308 lt!585116))))

(assert (=> b!1623128 d!488787))

(declare-fun d!488789 () Bool)

(assert (=> d!488789 (= (inv!23171 (tag!3411 (h!23190 rules!1846))) (= (mod (str.len (value!98962 (tag!3411 (h!23190 rules!1846)))) 2) 0))))

(assert (=> b!1623131 d!488789))

(declare-fun d!488791 () Bool)

(declare-fun res!725404 () Bool)

(declare-fun e!1041182 () Bool)

(assert (=> d!488791 (=> (not res!725404) (not e!1041182))))

(declare-fun semiInverseModEq!1195 (Int Int) Bool)

(assert (=> d!488791 (= res!725404 (semiInverseModEq!1195 (toChars!4419 (transformation!3133 (h!23190 rules!1846))) (toValue!4560 (transformation!3133 (h!23190 rules!1846)))))))

(assert (=> d!488791 (= (inv!23175 (transformation!3133 (h!23190 rules!1846))) e!1041182)))

(declare-fun b!1623385 () Bool)

(declare-fun equivClasses!1136 (Int Int) Bool)

(assert (=> b!1623385 (= e!1041182 (equivClasses!1136 (toChars!4419 (transformation!3133 (h!23190 rules!1846))) (toValue!4560 (transformation!3133 (h!23190 rules!1846)))))))

(assert (= (and d!488791 res!725404) b!1623385))

(declare-fun m!1949885 () Bool)

(assert (=> d!488791 m!1949885))

(declare-fun m!1949887 () Bool)

(assert (=> b!1623385 m!1949887))

(assert (=> b!1623131 d!488791))

(declare-fun d!488793 () Bool)

(assert (=> d!488793 (= (inv!23171 (tag!3411 (rule!4959 (h!23191 tokens!457)))) (= (mod (str.len (value!98962 (tag!3411 (rule!4959 (h!23191 tokens!457))))) 2) 0))))

(assert (=> b!1623132 d!488793))

(declare-fun d!488795 () Bool)

(declare-fun res!725405 () Bool)

(declare-fun e!1041183 () Bool)

(assert (=> d!488795 (=> (not res!725405) (not e!1041183))))

(assert (=> d!488795 (= res!725405 (semiInverseModEq!1195 (toChars!4419 (transformation!3133 (rule!4959 (h!23191 tokens!457)))) (toValue!4560 (transformation!3133 (rule!4959 (h!23191 tokens!457))))))))

(assert (=> d!488795 (= (inv!23175 (transformation!3133 (rule!4959 (h!23191 tokens!457)))) e!1041183)))

(declare-fun b!1623386 () Bool)

(assert (=> b!1623386 (= e!1041183 (equivClasses!1136 (toChars!4419 (transformation!3133 (rule!4959 (h!23191 tokens!457)))) (toValue!4560 (transformation!3133 (rule!4959 (h!23191 tokens!457))))))))

(assert (= (and d!488795 res!725405) b!1623386))

(declare-fun m!1949889 () Bool)

(assert (=> d!488795 m!1949889))

(declare-fun m!1949891 () Bool)

(assert (=> b!1623386 m!1949891))

(assert (=> b!1623132 d!488795))

(declare-fun d!488797 () Bool)

(declare-fun lt!585245 () Bool)

(assert (=> d!488797 (= lt!585245 (isEmpty!10817 (list!6975 lt!585117)))))

(declare-fun isEmpty!10822 (Conc!5914) Bool)

(assert (=> d!488797 (= lt!585245 (isEmpty!10822 (c!264245 lt!585117)))))

(assert (=> d!488797 (= (isEmpty!10815 lt!585117) lt!585245)))

(declare-fun bs!394641 () Bool)

(assert (= bs!394641 d!488797))

(assert (=> bs!394641 m!1949385))

(assert (=> bs!394641 m!1949385))

(declare-fun m!1949893 () Bool)

(assert (=> bs!394641 m!1949893))

(declare-fun m!1949895 () Bool)

(assert (=> bs!394641 m!1949895))

(assert (=> b!1623130 d!488797))

(declare-fun d!488799 () Bool)

(declare-fun list!6978 (Conc!5915) List!17860)

(assert (=> d!488799 (= (list!6976 (_1!10075 lt!585107)) (list!6978 (c!264247 (_1!10075 lt!585107))))))

(declare-fun bs!394642 () Bool)

(assert (= bs!394642 d!488799))

(declare-fun m!1949897 () Bool)

(assert (=> bs!394642 m!1949897))

(assert (=> b!1623134 d!488799))

(declare-fun d!488801 () Bool)

(declare-fun e!1041214 () Bool)

(assert (=> d!488801 e!1041214))

(declare-fun res!725419 () Bool)

(assert (=> d!488801 (=> (not res!725419) (not e!1041214))))

(assert (=> d!488801 (= res!725419 (= (list!6976 (_1!10075 (lex!1246 thiss!17113 rules!1846 (print!1293 thiss!17113 (seqFromList!2016 (t!148867 tokens!457)))))) (t!148867 tokens!457)))))

(declare-fun lt!585321 () Unit!28773)

(declare-fun e!1041215 () Unit!28773)

(assert (=> d!488801 (= lt!585321 e!1041215)))

(declare-fun c!264298 () Bool)

(assert (=> d!488801 (= c!264298 (or ((_ is Nil!17790) (t!148867 tokens!457)) ((_ is Nil!17790) (t!148867 (t!148867 tokens!457)))))))

(assert (=> d!488801 (not (isEmpty!10816 rules!1846))))

(assert (=> d!488801 (= (theoremInvertabilityWhenTokenListSeparable!207 thiss!17113 rules!1846 (t!148867 tokens!457)) lt!585321)))

(declare-fun b!1623429 () Bool)

(declare-fun Unit!28778 () Unit!28773)

(assert (=> b!1623429 (= e!1041215 Unit!28778)))

(declare-fun b!1623430 () Bool)

(declare-fun Unit!28779 () Unit!28773)

(assert (=> b!1623430 (= e!1041215 Unit!28779)))

(declare-fun lt!585315 () BalanceConc!11772)

(assert (=> b!1623430 (= lt!585315 (print!1293 thiss!17113 (seqFromList!2016 (t!148867 tokens!457))))))

(declare-fun lt!585327 () BalanceConc!11772)

(assert (=> b!1623430 (= lt!585327 (print!1293 thiss!17113 (seqFromList!2016 (t!148867 (t!148867 tokens!457)))))))

(declare-fun lt!585326 () tuple2!17346)

(assert (=> b!1623430 (= lt!585326 (lex!1246 thiss!17113 rules!1846 lt!585327))))

(declare-fun lt!585313 () List!17857)

(assert (=> b!1623430 (= lt!585313 (list!6975 (charsOf!1782 (h!23191 (t!148867 tokens!457)))))))

(declare-fun lt!585318 () List!17857)

(assert (=> b!1623430 (= lt!585318 (list!6975 lt!585327))))

(declare-fun lt!585322 () Unit!28773)

(assert (=> b!1623430 (= lt!585322 (lemmaConcatTwoListThenFirstIsPrefix!918 lt!585313 lt!585318))))

(assert (=> b!1623430 (isPrefix!1393 lt!585313 (++!4721 lt!585313 lt!585318))))

(declare-fun lt!585308 () Unit!28773)

(assert (=> b!1623430 (= lt!585308 lt!585322)))

(declare-fun lt!585310 () Unit!28773)

(assert (=> b!1623430 (= lt!585310 (theoremInvertabilityWhenTokenListSeparable!207 thiss!17113 rules!1846 (t!148867 (t!148867 tokens!457))))))

(declare-fun lt!585306 () Unit!28773)

(assert (=> b!1623430 (= lt!585306 (seqFromListBHdTlConstructive!210 (h!23191 (t!148867 (t!148867 tokens!457))) (t!148867 (t!148867 (t!148867 tokens!457))) (_1!10075 lt!585326)))))

(assert (=> b!1623430 (= (list!6976 (_1!10075 lt!585326)) (list!6976 (prepend!655 (seqFromList!2016 (t!148867 (t!148867 (t!148867 tokens!457)))) (h!23191 (t!148867 (t!148867 tokens!457))))))))

(declare-fun lt!585309 () Unit!28773)

(assert (=> b!1623430 (= lt!585309 lt!585306)))

(declare-fun lt!585320 () Option!3286)

(assert (=> b!1623430 (= lt!585320 (maxPrefix!1326 thiss!17113 rules!1846 (list!6975 lt!585315)))))

(assert (=> b!1623430 (= (print!1293 thiss!17113 (singletonSeq!1545 (h!23191 (t!148867 tokens!457)))) (printTailRec!815 thiss!17113 (singletonSeq!1545 (h!23191 (t!148867 tokens!457))) 0 (BalanceConc!11773 Empty!5914)))))

(declare-fun lt!585312 () Unit!28773)

(declare-fun Unit!28780 () Unit!28773)

(assert (=> b!1623430 (= lt!585312 Unit!28780)))

(declare-fun lt!585317 () Unit!28773)

(assert (=> b!1623430 (= lt!585317 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!336 thiss!17113 rules!1846 (list!6975 (charsOf!1782 (h!23191 (t!148867 tokens!457)))) (list!6975 lt!585327)))))

(assert (=> b!1623430 (= (list!6975 (charsOf!1782 (h!23191 (t!148867 tokens!457)))) (originalCharacters!3947 (h!23191 (t!148867 tokens!457))))))

(declare-fun lt!585316 () Unit!28773)

(declare-fun Unit!28781 () Unit!28773)

(assert (=> b!1623430 (= lt!585316 Unit!28781)))

(assert (=> b!1623430 (= (list!6975 (singletonSeq!1544 (apply!4526 (charsOf!1782 (h!23191 (t!148867 (t!148867 tokens!457)))) 0))) (Cons!17787 (head!3413 (originalCharacters!3947 (h!23191 (t!148867 (t!148867 tokens!457))))) Nil!17787))))

(declare-fun lt!585325 () Unit!28773)

(declare-fun Unit!28782 () Unit!28773)

(assert (=> b!1623430 (= lt!585325 Unit!28782)))

(assert (=> b!1623430 (= (list!6975 (singletonSeq!1544 (apply!4526 (charsOf!1782 (h!23191 (t!148867 (t!148867 tokens!457)))) 0))) (Cons!17787 (head!3413 (list!6975 lt!585327)) Nil!17787))))

(declare-fun lt!585319 () Unit!28773)

(declare-fun Unit!28783 () Unit!28773)

(assert (=> b!1623430 (= lt!585319 Unit!28783)))

(assert (=> b!1623430 (= (list!6975 (singletonSeq!1544 (apply!4526 (charsOf!1782 (h!23191 (t!148867 (t!148867 tokens!457)))) 0))) (Cons!17787 (head!3412 lt!585327) Nil!17787))))

(declare-fun lt!585314 () Unit!28773)

(declare-fun Unit!28784 () Unit!28773)

(assert (=> b!1623430 (= lt!585314 Unit!28784)))

(assert (=> b!1623430 (isDefined!2653 (maxPrefix!1326 thiss!17113 rules!1846 (originalCharacters!3947 (h!23191 (t!148867 tokens!457)))))))

(declare-fun lt!585323 () Unit!28773)

(declare-fun Unit!28785 () Unit!28773)

(assert (=> b!1623430 (= lt!585323 Unit!28785)))

(assert (=> b!1623430 (isDefined!2653 (maxPrefix!1326 thiss!17113 rules!1846 (list!6975 (charsOf!1782 (h!23191 (t!148867 tokens!457))))))))

(declare-fun lt!585328 () Unit!28773)

(declare-fun Unit!28786 () Unit!28773)

(assert (=> b!1623430 (= lt!585328 Unit!28786)))

(declare-fun lt!585307 () Unit!28773)

(declare-fun Unit!28787 () Unit!28773)

(assert (=> b!1623430 (= lt!585307 Unit!28787)))

(assert (=> b!1623430 (= (_1!10077 (get!5120 (maxPrefix!1326 thiss!17113 rules!1846 (list!6975 (charsOf!1782 (h!23191 (t!148867 tokens!457))))))) (h!23191 (t!148867 tokens!457)))))

(declare-fun lt!585329 () Unit!28773)

(declare-fun Unit!28788 () Unit!28773)

(assert (=> b!1623430 (= lt!585329 Unit!28788)))

(assert (=> b!1623430 (isEmpty!10817 (_2!10077 (get!5120 (maxPrefix!1326 thiss!17113 rules!1846 (list!6975 (charsOf!1782 (h!23191 (t!148867 tokens!457))))))))))

(declare-fun lt!585324 () Unit!28773)

(declare-fun Unit!28789 () Unit!28773)

(assert (=> b!1623430 (= lt!585324 Unit!28789)))

(assert (=> b!1623430 (matchR!1960 (regex!3133 (rule!4959 (h!23191 (t!148867 tokens!457)))) (list!6975 (charsOf!1782 (h!23191 (t!148867 tokens!457)))))))

(declare-fun lt!585305 () Unit!28773)

(declare-fun Unit!28790 () Unit!28773)

(assert (=> b!1623430 (= lt!585305 Unit!28790)))

(assert (=> b!1623430 (= (rule!4959 (h!23191 (t!148867 tokens!457))) (rule!4959 (h!23191 (t!148867 tokens!457))))))

(declare-fun lt!585330 () Unit!28773)

(declare-fun Unit!28791 () Unit!28773)

(assert (=> b!1623430 (= lt!585330 Unit!28791)))

(declare-fun lt!585311 () Unit!28773)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!105 (LexerInterface!2762 List!17859 Token!5832 Rule!6066 List!17857) Unit!28773)

(assert (=> b!1623430 (= lt!585311 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!105 thiss!17113 rules!1846 (h!23191 (t!148867 tokens!457)) (rule!4959 (h!23191 (t!148867 tokens!457))) (list!6975 lt!585327)))))

(declare-fun b!1623431 () Bool)

(assert (=> b!1623431 (= e!1041214 (isEmpty!10815 (_2!10075 (lex!1246 thiss!17113 rules!1846 (print!1293 thiss!17113 (seqFromList!2016 (t!148867 tokens!457)))))))))

(assert (= (and d!488801 c!264298) b!1623429))

(assert (= (and d!488801 (not c!264298)) b!1623430))

(assert (= (and d!488801 res!725419) b!1623431))

(assert (=> d!488801 m!1949389))

(declare-fun m!1949937 () Bool)

(assert (=> d!488801 m!1949937))

(assert (=> d!488801 m!1949937))

(declare-fun m!1949939 () Bool)

(assert (=> d!488801 m!1949939))

(assert (=> d!488801 m!1949487))

(declare-fun m!1949941 () Bool)

(assert (=> d!488801 m!1949941))

(assert (=> d!488801 m!1949389))

(declare-fun m!1949943 () Bool)

(assert (=> b!1623430 m!1949943))

(declare-fun m!1949945 () Bool)

(assert (=> b!1623430 m!1949945))

(declare-fun m!1949947 () Bool)

(assert (=> b!1623430 m!1949947))

(declare-fun m!1949949 () Bool)

(assert (=> b!1623430 m!1949949))

(declare-fun m!1949951 () Bool)

(assert (=> b!1623430 m!1949951))

(declare-fun m!1949953 () Bool)

(assert (=> b!1623430 m!1949953))

(declare-fun m!1949955 () Bool)

(assert (=> b!1623430 m!1949955))

(declare-fun m!1949957 () Bool)

(assert (=> b!1623430 m!1949957))

(declare-fun m!1949959 () Bool)

(assert (=> b!1623430 m!1949959))

(declare-fun m!1949961 () Bool)

(assert (=> b!1623430 m!1949961))

(declare-fun m!1949963 () Bool)

(assert (=> b!1623430 m!1949963))

(declare-fun m!1949965 () Bool)

(assert (=> b!1623430 m!1949965))

(declare-fun m!1949967 () Bool)

(assert (=> b!1623430 m!1949967))

(declare-fun m!1949969 () Bool)

(assert (=> b!1623430 m!1949969))

(declare-fun m!1949971 () Bool)

(assert (=> b!1623430 m!1949971))

(assert (=> b!1623430 m!1949955))

(declare-fun m!1949973 () Bool)

(assert (=> b!1623430 m!1949973))

(declare-fun m!1949975 () Bool)

(assert (=> b!1623430 m!1949975))

(declare-fun m!1949977 () Bool)

(assert (=> b!1623430 m!1949977))

(declare-fun m!1949979 () Bool)

(assert (=> b!1623430 m!1949979))

(assert (=> b!1623430 m!1949389))

(declare-fun m!1949981 () Bool)

(assert (=> b!1623430 m!1949981))

(declare-fun m!1949983 () Bool)

(assert (=> b!1623430 m!1949983))

(assert (=> b!1623430 m!1949953))

(declare-fun m!1949985 () Bool)

(assert (=> b!1623430 m!1949985))

(assert (=> b!1623430 m!1949959))

(assert (=> b!1623430 m!1949441))

(assert (=> b!1623430 m!1949955))

(declare-fun m!1949987 () Bool)

(assert (=> b!1623430 m!1949987))

(assert (=> b!1623430 m!1949943))

(assert (=> b!1623430 m!1949975))

(declare-fun m!1949989 () Bool)

(assert (=> b!1623430 m!1949989))

(assert (=> b!1623430 m!1949989))

(declare-fun m!1949991 () Bool)

(assert (=> b!1623430 m!1949991))

(declare-fun m!1949993 () Bool)

(assert (=> b!1623430 m!1949993))

(assert (=> b!1623430 m!1949963))

(assert (=> b!1623430 m!1949389))

(assert (=> b!1623430 m!1949937))

(assert (=> b!1623430 m!1949981))

(assert (=> b!1623430 m!1949983))

(declare-fun m!1949995 () Bool)

(assert (=> b!1623430 m!1949995))

(assert (=> b!1623430 m!1949989))

(declare-fun m!1949997 () Bool)

(assert (=> b!1623430 m!1949997))

(assert (=> b!1623430 m!1949441))

(declare-fun m!1949999 () Bool)

(assert (=> b!1623430 m!1949999))

(assert (=> b!1623430 m!1949963))

(declare-fun m!1950001 () Bool)

(assert (=> b!1623430 m!1950001))

(assert (=> b!1623430 m!1949977))

(assert (=> b!1623430 m!1949949))

(assert (=> b!1623430 m!1949953))

(assert (=> b!1623430 m!1949963))

(declare-fun m!1950003 () Bool)

(assert (=> b!1623430 m!1950003))

(assert (=> b!1623430 m!1949967))

(assert (=> b!1623430 m!1949415))

(declare-fun m!1950005 () Bool)

(assert (=> b!1623430 m!1950005))

(declare-fun m!1950007 () Bool)

(assert (=> b!1623430 m!1950007))

(declare-fun m!1950009 () Bool)

(assert (=> b!1623430 m!1950009))

(assert (=> b!1623430 m!1949415))

(assert (=> b!1623430 m!1949953))

(assert (=> b!1623431 m!1949389))

(assert (=> b!1623431 m!1949389))

(assert (=> b!1623431 m!1949937))

(assert (=> b!1623431 m!1949937))

(assert (=> b!1623431 m!1949939))

(declare-fun m!1950011 () Bool)

(assert (=> b!1623431 m!1950011))

(assert (=> b!1623134 d!488801))

(declare-fun b!1623443 () Bool)

(declare-fun e!1041222 () Bool)

(assert (=> b!1623443 (= e!1041222 (>= (size!14252 lt!585113) (size!14252 lt!585118)))))

(declare-fun b!1623440 () Bool)

(declare-fun e!1041223 () Bool)

(declare-fun e!1041224 () Bool)

(assert (=> b!1623440 (= e!1041223 e!1041224)))

(declare-fun res!725429 () Bool)

(assert (=> b!1623440 (=> (not res!725429) (not e!1041224))))

(assert (=> b!1623440 (= res!725429 (not ((_ is Nil!17787) lt!585113)))))

(declare-fun b!1623442 () Bool)

(assert (=> b!1623442 (= e!1041224 (isPrefix!1393 (tail!2354 lt!585118) (tail!2354 lt!585113)))))

(declare-fun d!488821 () Bool)

(assert (=> d!488821 e!1041222))

(declare-fun res!725428 () Bool)

(assert (=> d!488821 (=> res!725428 e!1041222)))

(declare-fun lt!585333 () Bool)

(assert (=> d!488821 (= res!725428 (not lt!585333))))

(assert (=> d!488821 (= lt!585333 e!1041223)))

(declare-fun res!725430 () Bool)

(assert (=> d!488821 (=> res!725430 e!1041223)))

(assert (=> d!488821 (= res!725430 ((_ is Nil!17787) lt!585118))))

(assert (=> d!488821 (= (isPrefix!1393 lt!585118 lt!585113) lt!585333)))

(declare-fun b!1623441 () Bool)

(declare-fun res!725431 () Bool)

(assert (=> b!1623441 (=> (not res!725431) (not e!1041224))))

(assert (=> b!1623441 (= res!725431 (= (head!3413 lt!585118) (head!3413 lt!585113)))))

(assert (= (and d!488821 (not res!725430)) b!1623440))

(assert (= (and b!1623440 res!725429) b!1623441))

(assert (= (and b!1623441 res!725431) b!1623442))

(assert (= (and d!488821 (not res!725428)) b!1623443))

(declare-fun m!1950013 () Bool)

(assert (=> b!1623443 m!1950013))

(assert (=> b!1623443 m!1949829))

(declare-fun m!1950015 () Bool)

(assert (=> b!1623442 m!1950015))

(declare-fun m!1950017 () Bool)

(assert (=> b!1623442 m!1950017))

(assert (=> b!1623442 m!1950015))

(assert (=> b!1623442 m!1950017))

(declare-fun m!1950019 () Bool)

(assert (=> b!1623442 m!1950019))

(declare-fun m!1950021 () Bool)

(assert (=> b!1623441 m!1950021))

(declare-fun m!1950023 () Bool)

(assert (=> b!1623441 m!1950023))

(assert (=> b!1623134 d!488821))

(declare-fun d!488823 () Bool)

(assert (=> d!488823 (isPrefix!1393 lt!585118 (++!4721 lt!585118 lt!585102))))

(declare-fun lt!585336 () Unit!28773)

(declare-fun choose!9765 (List!17857 List!17857) Unit!28773)

(assert (=> d!488823 (= lt!585336 (choose!9765 lt!585118 lt!585102))))

(assert (=> d!488823 (= (lemmaConcatTwoListThenFirstIsPrefix!918 lt!585118 lt!585102) lt!585336)))

(declare-fun bs!394648 () Bool)

(assert (= bs!394648 d!488823))

(assert (=> bs!394648 m!1949399))

(assert (=> bs!394648 m!1949399))

(declare-fun m!1950025 () Bool)

(assert (=> bs!394648 m!1950025))

(declare-fun m!1950027 () Bool)

(assert (=> bs!394648 m!1950027))

(assert (=> b!1623134 d!488823))

(declare-fun d!488825 () Bool)

(declare-fun res!725434 () Bool)

(declare-fun e!1041227 () Bool)

(assert (=> d!488825 (=> (not res!725434) (not e!1041227))))

(declare-fun rulesValid!1123 (LexerInterface!2762 List!17859) Bool)

(assert (=> d!488825 (= res!725434 (rulesValid!1123 thiss!17113 rules!1846))))

(assert (=> d!488825 (= (rulesInvariant!2431 thiss!17113 rules!1846) e!1041227)))

(declare-fun b!1623446 () Bool)

(declare-datatypes ((List!17861 0))(
  ( (Nil!17791) (Cons!17791 (h!23192 String!20447) (t!148910 List!17861)) )
))
(declare-fun noDuplicateTag!1123 (LexerInterface!2762 List!17859 List!17861) Bool)

(assert (=> b!1623446 (= e!1041227 (noDuplicateTag!1123 thiss!17113 rules!1846 Nil!17791))))

(assert (= (and d!488825 res!725434) b!1623446))

(declare-fun m!1950029 () Bool)

(assert (=> d!488825 m!1950029))

(declare-fun m!1950031 () Bool)

(assert (=> b!1623446 m!1950031))

(assert (=> b!1623133 d!488825))

(declare-fun d!488827 () Bool)

(assert (=> d!488827 (= (isEmpty!10816 rules!1846) ((_ is Nil!17789) rules!1846))))

(assert (=> b!1623137 d!488827))

(declare-fun lt!585339 () Bool)

(declare-fun d!488829 () Bool)

(declare-fun isEmpty!10823 (List!17860) Bool)

(assert (=> d!488829 (= lt!585339 (isEmpty!10823 (list!6976 (_1!10075 (lex!1246 thiss!17113 rules!1846 (seqFromList!2015 lt!585118))))))))

(declare-fun isEmpty!10824 (Conc!5915) Bool)

(assert (=> d!488829 (= lt!585339 (isEmpty!10824 (c!264247 (_1!10075 (lex!1246 thiss!17113 rules!1846 (seqFromList!2015 lt!585118))))))))

(assert (=> d!488829 (= (isEmpty!10814 (_1!10075 (lex!1246 thiss!17113 rules!1846 (seqFromList!2015 lt!585118)))) lt!585339)))

(declare-fun bs!394649 () Bool)

(assert (= bs!394649 d!488829))

(declare-fun m!1950033 () Bool)

(assert (=> bs!394649 m!1950033))

(assert (=> bs!394649 m!1950033))

(declare-fun m!1950035 () Bool)

(assert (=> bs!394649 m!1950035))

(declare-fun m!1950037 () Bool)

(assert (=> bs!394649 m!1950037))

(assert (=> b!1623116 d!488829))

(declare-fun b!1623469 () Bool)

(declare-fun e!1041242 () Bool)

(declare-fun e!1041241 () Bool)

(assert (=> b!1623469 (= e!1041242 e!1041241)))

(declare-fun res!725447 () Bool)

(declare-fun lt!585393 () tuple2!17346)

(declare-fun size!14253 (BalanceConc!11772) Int)

(assert (=> b!1623469 (= res!725447 (< (size!14253 (_2!10075 lt!585393)) (size!14253 (seqFromList!2015 lt!585118))))))

(assert (=> b!1623469 (=> (not res!725447) (not e!1041241))))

(declare-fun d!488831 () Bool)

(declare-fun e!1041240 () Bool)

(assert (=> d!488831 e!1041240))

(declare-fun res!725449 () Bool)

(assert (=> d!488831 (=> (not res!725449) (not e!1041240))))

(assert (=> d!488831 (= res!725449 e!1041242)))

(declare-fun c!264304 () Bool)

(declare-fun size!14254 (BalanceConc!11774) Int)

(assert (=> d!488831 (= c!264304 (> (size!14254 (_1!10075 lt!585393)) 0))))

(declare-fun lexTailRecV2!548 (LexerInterface!2762 List!17859 BalanceConc!11772 BalanceConc!11772 BalanceConc!11772 BalanceConc!11774) tuple2!17346)

(assert (=> d!488831 (= lt!585393 (lexTailRecV2!548 thiss!17113 rules!1846 (seqFromList!2015 lt!585118) (BalanceConc!11773 Empty!5914) (seqFromList!2015 lt!585118) (BalanceConc!11775 Empty!5915)))))

(assert (=> d!488831 (= (lex!1246 thiss!17113 rules!1846 (seqFromList!2015 lt!585118)) lt!585393)))

(declare-fun b!1623470 () Bool)

(declare-datatypes ((tuple2!17354 0))(
  ( (tuple2!17355 (_1!10079 List!17860) (_2!10079 List!17857)) )
))
(declare-fun lexList!825 (LexerInterface!2762 List!17859 List!17857) tuple2!17354)

(assert (=> b!1623470 (= e!1041240 (= (list!6975 (_2!10075 lt!585393)) (_2!10079 (lexList!825 thiss!17113 rules!1846 (list!6975 (seqFromList!2015 lt!585118))))))))

(declare-fun b!1623471 () Bool)

(assert (=> b!1623471 (= e!1041241 (not (isEmpty!10814 (_1!10075 lt!585393))))))

(declare-fun b!1623472 () Bool)

(declare-fun res!725448 () Bool)

(assert (=> b!1623472 (=> (not res!725448) (not e!1041240))))

(assert (=> b!1623472 (= res!725448 (= (list!6976 (_1!10075 lt!585393)) (_1!10079 (lexList!825 thiss!17113 rules!1846 (list!6975 (seqFromList!2015 lt!585118))))))))

(declare-fun b!1623473 () Bool)

(assert (=> b!1623473 (= e!1041242 (= (_2!10075 lt!585393) (seqFromList!2015 lt!585118)))))

(assert (= (and d!488831 c!264304) b!1623469))

(assert (= (and d!488831 (not c!264304)) b!1623473))

(assert (= (and b!1623469 res!725447) b!1623471))

(assert (= (and d!488831 res!725449) b!1623472))

(assert (= (and b!1623472 res!725448) b!1623470))

(declare-fun m!1950083 () Bool)

(assert (=> b!1623472 m!1950083))

(assert (=> b!1623472 m!1949379))

(declare-fun m!1950085 () Bool)

(assert (=> b!1623472 m!1950085))

(assert (=> b!1623472 m!1950085))

(declare-fun m!1950087 () Bool)

(assert (=> b!1623472 m!1950087))

(declare-fun m!1950089 () Bool)

(assert (=> d!488831 m!1950089))

(assert (=> d!488831 m!1949379))

(assert (=> d!488831 m!1949379))

(declare-fun m!1950091 () Bool)

(assert (=> d!488831 m!1950091))

(declare-fun m!1950093 () Bool)

(assert (=> b!1623469 m!1950093))

(assert (=> b!1623469 m!1949379))

(declare-fun m!1950095 () Bool)

(assert (=> b!1623469 m!1950095))

(declare-fun m!1950097 () Bool)

(assert (=> b!1623470 m!1950097))

(assert (=> b!1623470 m!1949379))

(assert (=> b!1623470 m!1950085))

(assert (=> b!1623470 m!1950085))

(assert (=> b!1623470 m!1950087))

(declare-fun m!1950099 () Bool)

(assert (=> b!1623471 m!1950099))

(assert (=> b!1623116 d!488831))

(declare-fun d!488835 () Bool)

(declare-fun fromListB!886 (List!17857) BalanceConc!11772)

(assert (=> d!488835 (= (seqFromList!2015 lt!585118) (fromListB!886 lt!585118))))

(declare-fun bs!394650 () Bool)

(assert (= bs!394650 d!488835))

(declare-fun m!1950101 () Bool)

(assert (=> bs!394650 m!1950101))

(assert (=> b!1623116 d!488835))

(declare-fun b!1623502 () Bool)

(declare-fun e!1041262 () Bool)

(assert (=> b!1623502 (= e!1041262 (not (= (head!3413 lt!585118) (c!264246 (regex!3133 (rule!4959 (h!23191 tokens!457)))))))))

(declare-fun b!1623503 () Bool)

(declare-fun e!1041259 () Bool)

(declare-fun e!1041261 () Bool)

(assert (=> b!1623503 (= e!1041259 e!1041261)))

(declare-fun res!725471 () Bool)

(assert (=> b!1623503 (=> (not res!725471) (not e!1041261))))

(declare-fun lt!585396 () Bool)

(assert (=> b!1623503 (= res!725471 (not lt!585396))))

(declare-fun b!1623504 () Bool)

(declare-fun e!1041260 () Bool)

(assert (=> b!1623504 (= e!1041260 (= (head!3413 lt!585118) (c!264246 (regex!3133 (rule!4959 (h!23191 tokens!457))))))))

(declare-fun b!1623505 () Bool)

(declare-fun e!1041258 () Bool)

(declare-fun call!105185 () Bool)

(assert (=> b!1623505 (= e!1041258 (= lt!585396 call!105185))))

(declare-fun b!1623506 () Bool)

(declare-fun res!725469 () Bool)

(assert (=> b!1623506 (=> res!725469 e!1041259)))

(assert (=> b!1623506 (= res!725469 (not ((_ is ElementMatch!4461) (regex!3133 (rule!4959 (h!23191 tokens!457))))))))

(declare-fun e!1041257 () Bool)

(assert (=> b!1623506 (= e!1041257 e!1041259)))

(declare-fun b!1623507 () Bool)

(declare-fun res!725473 () Bool)

(assert (=> b!1623507 (=> res!725473 e!1041259)))

(assert (=> b!1623507 (= res!725473 e!1041260)))

(declare-fun res!725467 () Bool)

(assert (=> b!1623507 (=> (not res!725467) (not e!1041260))))

(assert (=> b!1623507 (= res!725467 lt!585396)))

(declare-fun b!1623508 () Bool)

(declare-fun res!725472 () Bool)

(assert (=> b!1623508 (=> (not res!725472) (not e!1041260))))

(assert (=> b!1623508 (= res!725472 (not call!105185))))

(declare-fun b!1623509 () Bool)

(declare-fun e!1041263 () Bool)

(assert (=> b!1623509 (= e!1041263 (matchR!1960 (derivativeStep!1078 (regex!3133 (rule!4959 (h!23191 tokens!457))) (head!3413 lt!585118)) (tail!2354 lt!585118)))))

(declare-fun b!1623510 () Bool)

(declare-fun res!725466 () Bool)

(assert (=> b!1623510 (=> res!725466 e!1041262)))

(assert (=> b!1623510 (= res!725466 (not (isEmpty!10817 (tail!2354 lt!585118))))))

(declare-fun b!1623511 () Bool)

(assert (=> b!1623511 (= e!1041257 (not lt!585396))))

(declare-fun b!1623512 () Bool)

(assert (=> b!1623512 (= e!1041261 e!1041262)))

(declare-fun res!725470 () Bool)

(assert (=> b!1623512 (=> res!725470 e!1041262)))

(assert (=> b!1623512 (= res!725470 call!105185)))

(declare-fun b!1623513 () Bool)

(declare-fun res!725468 () Bool)

(assert (=> b!1623513 (=> (not res!725468) (not e!1041260))))

(assert (=> b!1623513 (= res!725468 (isEmpty!10817 (tail!2354 lt!585118)))))

(declare-fun b!1623514 () Bool)

(declare-fun nullable!1313 (Regex!4461) Bool)

(assert (=> b!1623514 (= e!1041263 (nullable!1313 (regex!3133 (rule!4959 (h!23191 tokens!457)))))))

(declare-fun b!1623515 () Bool)

(assert (=> b!1623515 (= e!1041258 e!1041257)))

(declare-fun c!264312 () Bool)

(assert (=> b!1623515 (= c!264312 ((_ is EmptyLang!4461) (regex!3133 (rule!4959 (h!23191 tokens!457)))))))

(declare-fun bm!105180 () Bool)

(assert (=> bm!105180 (= call!105185 (isEmpty!10817 lt!585118))))

(declare-fun d!488837 () Bool)

(assert (=> d!488837 e!1041258))

(declare-fun c!264311 () Bool)

(assert (=> d!488837 (= c!264311 ((_ is EmptyExpr!4461) (regex!3133 (rule!4959 (h!23191 tokens!457)))))))

(assert (=> d!488837 (= lt!585396 e!1041263)))

(declare-fun c!264313 () Bool)

(assert (=> d!488837 (= c!264313 (isEmpty!10817 lt!585118))))

(declare-fun validRegex!1774 (Regex!4461) Bool)

(assert (=> d!488837 (validRegex!1774 (regex!3133 (rule!4959 (h!23191 tokens!457))))))

(assert (=> d!488837 (= (matchR!1960 (regex!3133 (rule!4959 (h!23191 tokens!457))) lt!585118) lt!585396)))

(assert (= (and d!488837 c!264313) b!1623514))

(assert (= (and d!488837 (not c!264313)) b!1623509))

(assert (= (and d!488837 c!264311) b!1623505))

(assert (= (and d!488837 (not c!264311)) b!1623515))

(assert (= (and b!1623515 c!264312) b!1623511))

(assert (= (and b!1623515 (not c!264312)) b!1623506))

(assert (= (and b!1623506 (not res!725469)) b!1623507))

(assert (= (and b!1623507 res!725467) b!1623508))

(assert (= (and b!1623508 res!725472) b!1623513))

(assert (= (and b!1623513 res!725468) b!1623504))

(assert (= (and b!1623507 (not res!725473)) b!1623503))

(assert (= (and b!1623503 res!725471) b!1623512))

(assert (= (and b!1623512 (not res!725470)) b!1623510))

(assert (= (and b!1623510 (not res!725466)) b!1623502))

(assert (= (or b!1623505 b!1623508 b!1623512) bm!105180))

(assert (=> b!1623502 m!1950021))

(assert (=> b!1623510 m!1950015))

(assert (=> b!1623510 m!1950015))

(declare-fun m!1950103 () Bool)

(assert (=> b!1623510 m!1950103))

(assert (=> b!1623504 m!1950021))

(declare-fun m!1950105 () Bool)

(assert (=> b!1623514 m!1950105))

(assert (=> b!1623509 m!1950021))

(assert (=> b!1623509 m!1950021))

(declare-fun m!1950107 () Bool)

(assert (=> b!1623509 m!1950107))

(assert (=> b!1623509 m!1950015))

(assert (=> b!1623509 m!1950107))

(assert (=> b!1623509 m!1950015))

(declare-fun m!1950109 () Bool)

(assert (=> b!1623509 m!1950109))

(declare-fun m!1950111 () Bool)

(assert (=> d!488837 m!1950111))

(declare-fun m!1950113 () Bool)

(assert (=> d!488837 m!1950113))

(assert (=> b!1623513 m!1950015))

(assert (=> b!1623513 m!1950015))

(assert (=> b!1623513 m!1950103))

(assert (=> bm!105180 m!1950111))

(assert (=> b!1623135 d!488837))

(declare-fun d!488839 () Bool)

(assert (=> d!488839 (= (head!3413 lt!585102) (h!23188 lt!585102))))

(assert (=> b!1623139 d!488839))

(declare-fun d!488841 () Bool)

(declare-fun e!1041266 () Bool)

(assert (=> d!488841 e!1041266))

(declare-fun res!725476 () Bool)

(assert (=> d!488841 (=> (not res!725476) (not e!1041266))))

(declare-fun lt!585399 () BalanceConc!11772)

(assert (=> d!488841 (= res!725476 (= (list!6975 lt!585399) (Cons!17787 (apply!4526 (charsOf!1782 (h!23191 (t!148867 tokens!457))) 0) Nil!17787)))))

(declare-fun singleton!660 (C!9096) BalanceConc!11772)

(assert (=> d!488841 (= lt!585399 (singleton!660 (apply!4526 (charsOf!1782 (h!23191 (t!148867 tokens!457))) 0)))))

(assert (=> d!488841 (= (singletonSeq!1544 (apply!4526 (charsOf!1782 (h!23191 (t!148867 tokens!457))) 0)) lt!585399)))

(declare-fun b!1623518 () Bool)

(declare-fun isBalanced!1780 (Conc!5914) Bool)

(assert (=> b!1623518 (= e!1041266 (isBalanced!1780 (c!264245 lt!585399)))))

(assert (= (and d!488841 res!725476) b!1623518))

(declare-fun m!1950115 () Bool)

(assert (=> d!488841 m!1950115))

(assert (=> d!488841 m!1949411))

(declare-fun m!1950117 () Bool)

(assert (=> d!488841 m!1950117))

(declare-fun m!1950119 () Bool)

(assert (=> b!1623518 m!1950119))

(assert (=> b!1623118 d!488841))

(declare-fun lt!585420 () Bool)

(declare-fun d!488843 () Bool)

(assert (=> d!488843 (= lt!585420 (prefixMatch!396 lt!585104 (list!6975 (++!4722 lt!585100 lt!585096))))))

(declare-datatypes ((List!17863 0))(
  ( (Nil!17793) (Cons!17793 (h!23194 Regex!4461) (t!148912 List!17863)) )
))
(declare-datatypes ((Context!1724 0))(
  ( (Context!1725 (exprs!1362 List!17863)) )
))
(declare-fun prefixMatchZipperSequence!518 ((InoxSet Context!1724) BalanceConc!11772 Int) Bool)

(declare-fun focus!168 (Regex!4461) (InoxSet Context!1724))

(assert (=> d!488843 (= lt!585420 (prefixMatchZipperSequence!518 (focus!168 lt!585104) (++!4722 lt!585100 lt!585096) 0))))

(declare-fun lt!585423 () Unit!28773)

(declare-fun lt!585426 () Unit!28773)

(assert (=> d!488843 (= lt!585423 lt!585426)))

(declare-fun lt!585425 () List!17857)

(declare-fun lt!585429 () (InoxSet Context!1724))

(declare-fun prefixMatchZipper!147 ((InoxSet Context!1724) List!17857) Bool)

(assert (=> d!488843 (= (prefixMatch!396 lt!585104 lt!585425) (prefixMatchZipper!147 lt!585429 lt!585425))))

(declare-datatypes ((List!17864 0))(
  ( (Nil!17794) (Cons!17794 (h!23195 Context!1724) (t!148913 List!17864)) )
))
(declare-fun lt!585427 () List!17864)

(declare-fun prefixMatchZipperRegexEquiv!147 ((InoxSet Context!1724) List!17864 Regex!4461 List!17857) Unit!28773)

(assert (=> d!488843 (= lt!585426 (prefixMatchZipperRegexEquiv!147 lt!585429 lt!585427 lt!585104 lt!585425))))

(assert (=> d!488843 (= lt!585425 (list!6975 (++!4722 lt!585100 lt!585096)))))

(declare-fun toList!908 ((InoxSet Context!1724)) List!17864)

(assert (=> d!488843 (= lt!585427 (toList!908 (focus!168 lt!585104)))))

(assert (=> d!488843 (= lt!585429 (focus!168 lt!585104))))

(declare-fun lt!585421 () Unit!28773)

(declare-fun lt!585422 () Unit!28773)

(assert (=> d!488843 (= lt!585421 lt!585422)))

(declare-fun lt!585424 () Int)

(declare-fun lt!585428 () (InoxSet Context!1724))

(declare-fun dropList!598 (BalanceConc!11772 Int) List!17857)

(assert (=> d!488843 (= (prefixMatchZipper!147 lt!585428 (dropList!598 (++!4722 lt!585100 lt!585096) lt!585424)) (prefixMatchZipperSequence!518 lt!585428 (++!4722 lt!585100 lt!585096) lt!585424))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!147 ((InoxSet Context!1724) BalanceConc!11772 Int) Unit!28773)

(assert (=> d!488843 (= lt!585422 (lemmaprefixMatchZipperSequenceEquivalent!147 lt!585428 (++!4722 lt!585100 lt!585096) lt!585424))))

(assert (=> d!488843 (= lt!585424 0)))

(assert (=> d!488843 (= lt!585428 (focus!168 lt!585104))))

(assert (=> d!488843 (validRegex!1774 lt!585104)))

(assert (=> d!488843 (= (prefixMatchZipperSequence!517 lt!585104 (++!4722 lt!585100 lt!585096)) lt!585420)))

(declare-fun bs!394651 () Bool)

(assert (= bs!394651 d!488843))

(assert (=> bs!394651 m!1949407))

(declare-fun m!1950121 () Bool)

(assert (=> bs!394651 m!1950121))

(assert (=> bs!394651 m!1949407))

(declare-fun m!1950123 () Bool)

(assert (=> bs!394651 m!1950123))

(assert (=> bs!394651 m!1950123))

(declare-fun m!1950125 () Bool)

(assert (=> bs!394651 m!1950125))

(declare-fun m!1950127 () Bool)

(assert (=> bs!394651 m!1950127))

(assert (=> bs!394651 m!1949407))

(declare-fun m!1950129 () Bool)

(assert (=> bs!394651 m!1950129))

(declare-fun m!1950131 () Bool)

(assert (=> bs!394651 m!1950131))

(declare-fun m!1950133 () Bool)

(assert (=> bs!394651 m!1950133))

(assert (=> bs!394651 m!1949407))

(declare-fun m!1950135 () Bool)

(assert (=> bs!394651 m!1950135))

(declare-fun m!1950137 () Bool)

(assert (=> bs!394651 m!1950137))

(assert (=> bs!394651 m!1949407))

(declare-fun m!1950139 () Bool)

(assert (=> bs!394651 m!1950139))

(declare-fun m!1950141 () Bool)

(assert (=> bs!394651 m!1950141))

(assert (=> bs!394651 m!1950137))

(declare-fun m!1950143 () Bool)

(assert (=> bs!394651 m!1950143))

(assert (=> bs!394651 m!1950135))

(declare-fun m!1950145 () Bool)

(assert (=> bs!394651 m!1950145))

(assert (=> bs!394651 m!1950137))

(assert (=> b!1623118 d!488843))

(declare-fun d!488845 () Bool)

(declare-fun e!1041275 () Bool)

(assert (=> d!488845 e!1041275))

(declare-fun res!725494 () Bool)

(assert (=> d!488845 (=> (not res!725494) (not e!1041275))))

(declare-fun appendAssocInst!430 (Conc!5914 Conc!5914) Bool)

(assert (=> d!488845 (= res!725494 (appendAssocInst!430 (c!264245 lt!585100) (c!264245 lt!585096)))))

(declare-fun lt!585438 () BalanceConc!11772)

(declare-fun ++!4723 (Conc!5914 Conc!5914) Conc!5914)

(assert (=> d!488845 (= lt!585438 (BalanceConc!11773 (++!4723 (c!264245 lt!585100) (c!264245 lt!585096))))))

(assert (=> d!488845 (= (++!4722 lt!585100 lt!585096) lt!585438)))

(declare-fun b!1623539 () Bool)

(assert (=> b!1623539 (= e!1041275 (= (list!6975 lt!585438) (++!4721 (list!6975 lt!585100) (list!6975 lt!585096))))))

(declare-fun b!1623536 () Bool)

(declare-fun res!725495 () Bool)

(assert (=> b!1623536 (=> (not res!725495) (not e!1041275))))

(assert (=> b!1623536 (= res!725495 (isBalanced!1780 (++!4723 (c!264245 lt!585100) (c!264245 lt!585096))))))

(declare-fun b!1623537 () Bool)

(declare-fun res!725496 () Bool)

(assert (=> b!1623537 (=> (not res!725496) (not e!1041275))))

(declare-fun height!900 (Conc!5914) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1623537 (= res!725496 (<= (height!900 (++!4723 (c!264245 lt!585100) (c!264245 lt!585096))) (+ (max!0 (height!900 (c!264245 lt!585100)) (height!900 (c!264245 lt!585096))) 1)))))

(declare-fun b!1623538 () Bool)

(declare-fun res!725497 () Bool)

(assert (=> b!1623538 (=> (not res!725497) (not e!1041275))))

(assert (=> b!1623538 (= res!725497 (>= (height!900 (++!4723 (c!264245 lt!585100) (c!264245 lt!585096))) (max!0 (height!900 (c!264245 lt!585100)) (height!900 (c!264245 lt!585096)))))))

(assert (= (and d!488845 res!725494) b!1623536))

(assert (= (and b!1623536 res!725495) b!1623537))

(assert (= (and b!1623537 res!725496) b!1623538))

(assert (= (and b!1623538 res!725497) b!1623539))

(declare-fun m!1950163 () Bool)

(assert (=> b!1623537 m!1950163))

(declare-fun m!1950165 () Bool)

(assert (=> b!1623537 m!1950165))

(assert (=> b!1623537 m!1950163))

(declare-fun m!1950167 () Bool)

(assert (=> b!1623537 m!1950167))

(assert (=> b!1623537 m!1950165))

(declare-fun m!1950169 () Bool)

(assert (=> b!1623537 m!1950169))

(declare-fun m!1950171 () Bool)

(assert (=> b!1623537 m!1950171))

(assert (=> b!1623537 m!1950169))

(declare-fun m!1950173 () Bool)

(assert (=> d!488845 m!1950173))

(assert (=> d!488845 m!1950169))

(assert (=> b!1623538 m!1950163))

(assert (=> b!1623538 m!1950165))

(assert (=> b!1623538 m!1950163))

(assert (=> b!1623538 m!1950167))

(assert (=> b!1623538 m!1950165))

(assert (=> b!1623538 m!1950169))

(assert (=> b!1623538 m!1950171))

(assert (=> b!1623538 m!1950169))

(assert (=> b!1623536 m!1950169))

(assert (=> b!1623536 m!1950169))

(declare-fun m!1950175 () Bool)

(assert (=> b!1623536 m!1950175))

(declare-fun m!1950177 () Bool)

(assert (=> b!1623539 m!1950177))

(assert (=> b!1623539 m!1949401))

(assert (=> b!1623539 m!1949375))

(assert (=> b!1623539 m!1949401))

(assert (=> b!1623539 m!1949375))

(declare-fun m!1950179 () Bool)

(assert (=> b!1623539 m!1950179))

(assert (=> b!1623118 d!488845))

(declare-fun d!488849 () Bool)

(declare-fun lt!585443 () C!9096)

(declare-fun apply!4531 (List!17857 Int) C!9096)

(assert (=> d!488849 (= lt!585443 (apply!4531 (list!6975 (charsOf!1782 (h!23191 (t!148867 tokens!457)))) 0))))

(declare-fun apply!4532 (Conc!5914 Int) C!9096)

(assert (=> d!488849 (= lt!585443 (apply!4532 (c!264245 (charsOf!1782 (h!23191 (t!148867 tokens!457)))) 0))))

(declare-fun e!1041283 () Bool)

(assert (=> d!488849 e!1041283))

(declare-fun res!725508 () Bool)

(assert (=> d!488849 (=> (not res!725508) (not e!1041283))))

(assert (=> d!488849 (= res!725508 (<= 0 0))))

(assert (=> d!488849 (= (apply!4526 (charsOf!1782 (h!23191 (t!148867 tokens!457))) 0) lt!585443)))

(declare-fun b!1623550 () Bool)

(assert (=> b!1623550 (= e!1041283 (< 0 (size!14253 (charsOf!1782 (h!23191 (t!148867 tokens!457))))))))

(assert (= (and d!488849 res!725508) b!1623550))

(assert (=> d!488849 m!1949415))

(assert (=> d!488849 m!1949953))

(assert (=> d!488849 m!1949953))

(declare-fun m!1950185 () Bool)

(assert (=> d!488849 m!1950185))

(declare-fun m!1950187 () Bool)

(assert (=> d!488849 m!1950187))

(assert (=> b!1623550 m!1949415))

(declare-fun m!1950189 () Bool)

(assert (=> b!1623550 m!1950189))

(assert (=> b!1623118 d!488849))

(declare-fun d!488853 () Bool)

(declare-fun lt!585447 () Unit!28773)

(declare-fun lemma!234 (List!17859 LexerInterface!2762 List!17859) Unit!28773)

(assert (=> d!488853 (= lt!585447 (lemma!234 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!67237 () Int)

(declare-fun generalisedUnion!242 (List!17863) Regex!4461)

(declare-fun map!3680 (List!17859 Int) List!17863)

(assert (=> d!488853 (= (rulesRegex!523 thiss!17113 rules!1846) (generalisedUnion!242 (map!3680 rules!1846 lambda!67237)))))

(declare-fun bs!394652 () Bool)

(assert (= bs!394652 d!488853))

(declare-fun m!1950197 () Bool)

(assert (=> bs!394652 m!1950197))

(declare-fun m!1950199 () Bool)

(assert (=> bs!394652 m!1950199))

(assert (=> bs!394652 m!1950199))

(declare-fun m!1950201 () Bool)

(assert (=> bs!394652 m!1950201))

(assert (=> b!1623118 d!488853))

(declare-fun d!488857 () Bool)

(declare-fun lt!585450 () BalanceConc!11772)

(assert (=> d!488857 (= (list!6975 lt!585450) (originalCharacters!3947 (h!23191 (t!148867 tokens!457))))))

(declare-fun dynLambda!7943 (Int TokenValue!3223) BalanceConc!11772)

(assert (=> d!488857 (= lt!585450 (dynLambda!7943 (toChars!4419 (transformation!3133 (rule!4959 (h!23191 (t!148867 tokens!457))))) (value!98963 (h!23191 (t!148867 tokens!457)))))))

(assert (=> d!488857 (= (charsOf!1782 (h!23191 (t!148867 tokens!457))) lt!585450)))

(declare-fun b_lambda!51157 () Bool)

(assert (=> (not b_lambda!51157) (not d!488857)))

(declare-fun t!148881 () Bool)

(declare-fun tb!93243 () Bool)

(assert (=> (and b!1623136 (= (toChars!4419 (transformation!3133 (rule!4959 (h!23191 tokens!457)))) (toChars!4419 (transformation!3133 (rule!4959 (h!23191 (t!148867 tokens!457)))))) t!148881) tb!93243))

(declare-fun b!1623556 () Bool)

(declare-fun e!1041287 () Bool)

(declare-fun tp!472282 () Bool)

(declare-fun inv!23178 (Conc!5914) Bool)

(assert (=> b!1623556 (= e!1041287 (and (inv!23178 (c!264245 (dynLambda!7943 (toChars!4419 (transformation!3133 (rule!4959 (h!23191 (t!148867 tokens!457))))) (value!98963 (h!23191 (t!148867 tokens!457)))))) tp!472282))))

(declare-fun result!112424 () Bool)

(declare-fun inv!23179 (BalanceConc!11772) Bool)

(assert (=> tb!93243 (= result!112424 (and (inv!23179 (dynLambda!7943 (toChars!4419 (transformation!3133 (rule!4959 (h!23191 (t!148867 tokens!457))))) (value!98963 (h!23191 (t!148867 tokens!457))))) e!1041287))))

(assert (= tb!93243 b!1623556))

(declare-fun m!1950203 () Bool)

(assert (=> b!1623556 m!1950203))

(declare-fun m!1950205 () Bool)

(assert (=> tb!93243 m!1950205))

(assert (=> d!488857 t!148881))

(declare-fun b_and!115133 () Bool)

(assert (= b_and!115119 (and (=> t!148881 result!112424) b_and!115133)))

(declare-fun t!148883 () Bool)

(declare-fun tb!93245 () Bool)

(assert (=> (and b!1623143 (= (toChars!4419 (transformation!3133 (h!23190 rules!1846))) (toChars!4419 (transformation!3133 (rule!4959 (h!23191 (t!148867 tokens!457)))))) t!148883) tb!93245))

(declare-fun result!112428 () Bool)

(assert (= result!112428 result!112424))

(assert (=> d!488857 t!148883))

(declare-fun b_and!115135 () Bool)

(assert (= b_and!115123 (and (=> t!148883 result!112428) b_and!115135)))

(declare-fun m!1950207 () Bool)

(assert (=> d!488857 m!1950207))

(declare-fun m!1950209 () Bool)

(assert (=> d!488857 m!1950209))

(assert (=> b!1623118 d!488857))

(declare-fun d!488859 () Bool)

(declare-fun lt!585499 () Bool)

(declare-fun e!1041301 () Bool)

(assert (=> d!488859 (= lt!585499 e!1041301)))

(declare-fun res!725533 () Bool)

(assert (=> d!488859 (=> (not res!725533) (not e!1041301))))

(assert (=> d!488859 (= res!725533 (= (list!6976 (_1!10075 (lex!1246 thiss!17113 rules!1846 (print!1293 thiss!17113 (singletonSeq!1545 (h!23191 tokens!457)))))) (list!6976 (singletonSeq!1545 (h!23191 tokens!457)))))))

(declare-fun e!1041300 () Bool)

(assert (=> d!488859 (= lt!585499 e!1041300)))

(declare-fun res!725534 () Bool)

(assert (=> d!488859 (=> (not res!725534) (not e!1041300))))

(declare-fun lt!585498 () tuple2!17346)

(assert (=> d!488859 (= res!725534 (= (size!14254 (_1!10075 lt!585498)) 1))))

(assert (=> d!488859 (= lt!585498 (lex!1246 thiss!17113 rules!1846 (print!1293 thiss!17113 (singletonSeq!1545 (h!23191 tokens!457)))))))

(assert (=> d!488859 (not (isEmpty!10816 rules!1846))))

(assert (=> d!488859 (= (rulesProduceIndividualToken!1414 thiss!17113 rules!1846 (h!23191 tokens!457)) lt!585499)))

(declare-fun b!1623580 () Bool)

(declare-fun res!725532 () Bool)

(assert (=> b!1623580 (=> (not res!725532) (not e!1041300))))

(declare-fun apply!4533 (BalanceConc!11774 Int) Token!5832)

(assert (=> b!1623580 (= res!725532 (= (apply!4533 (_1!10075 lt!585498) 0) (h!23191 tokens!457)))))

(declare-fun b!1623581 () Bool)

(assert (=> b!1623581 (= e!1041300 (isEmpty!10815 (_2!10075 lt!585498)))))

(declare-fun b!1623582 () Bool)

(assert (=> b!1623582 (= e!1041301 (isEmpty!10815 (_2!10075 (lex!1246 thiss!17113 rules!1846 (print!1293 thiss!17113 (singletonSeq!1545 (h!23191 tokens!457)))))))))

(assert (= (and d!488859 res!725534) b!1623580))

(assert (= (and b!1623580 res!725532) b!1623581))

(assert (= (and d!488859 res!725533) b!1623582))

(assert (=> d!488859 m!1949475))

(declare-fun m!1950289 () Bool)

(assert (=> d!488859 m!1950289))

(assert (=> d!488859 m!1950289))

(declare-fun m!1950291 () Bool)

(assert (=> d!488859 m!1950291))

(declare-fun m!1950293 () Bool)

(assert (=> d!488859 m!1950293))

(assert (=> d!488859 m!1949487))

(assert (=> d!488859 m!1949475))

(declare-fun m!1950295 () Bool)

(assert (=> d!488859 m!1950295))

(assert (=> d!488859 m!1949475))

(declare-fun m!1950297 () Bool)

(assert (=> d!488859 m!1950297))

(declare-fun m!1950299 () Bool)

(assert (=> b!1623580 m!1950299))

(declare-fun m!1950301 () Bool)

(assert (=> b!1623581 m!1950301))

(assert (=> b!1623582 m!1949475))

(assert (=> b!1623582 m!1949475))

(assert (=> b!1623582 m!1950289))

(assert (=> b!1623582 m!1950289))

(assert (=> b!1623582 m!1950291))

(declare-fun m!1950303 () Bool)

(assert (=> b!1623582 m!1950303))

(assert (=> b!1623140 d!488859))

(declare-fun d!488889 () Bool)

(declare-fun res!725557 () Bool)

(declare-fun e!1041325 () Bool)

(assert (=> d!488889 (=> res!725557 e!1041325)))

(assert (=> d!488889 (= res!725557 (or (not ((_ is Cons!17790) tokens!457)) (not ((_ is Cons!17790) (t!148867 tokens!457)))))))

(assert (=> d!488889 (= (tokensListTwoByTwoPredicateSeparableList!455 thiss!17113 tokens!457 rules!1846) e!1041325)))

(declare-fun b!1623611 () Bool)

(declare-fun e!1041324 () Bool)

(assert (=> b!1623611 (= e!1041325 e!1041324)))

(declare-fun res!725558 () Bool)

(assert (=> b!1623611 (=> (not res!725558) (not e!1041324))))

(assert (=> b!1623611 (= res!725558 (separableTokensPredicate!704 thiss!17113 (h!23191 tokens!457) (h!23191 (t!148867 tokens!457)) rules!1846))))

(declare-fun lt!585539 () Unit!28773)

(declare-fun Unit!28794 () Unit!28773)

(assert (=> b!1623611 (= lt!585539 Unit!28794)))

(assert (=> b!1623611 (> (size!14253 (charsOf!1782 (h!23191 (t!148867 tokens!457)))) 0)))

(declare-fun lt!585540 () Unit!28773)

(declare-fun Unit!28795 () Unit!28773)

(assert (=> b!1623611 (= lt!585540 Unit!28795)))

(assert (=> b!1623611 (rulesProduceIndividualToken!1414 thiss!17113 rules!1846 (h!23191 (t!148867 tokens!457)))))

(declare-fun lt!585543 () Unit!28773)

(declare-fun Unit!28796 () Unit!28773)

(assert (=> b!1623611 (= lt!585543 Unit!28796)))

(assert (=> b!1623611 (rulesProduceIndividualToken!1414 thiss!17113 rules!1846 (h!23191 tokens!457))))

(declare-fun lt!585542 () Unit!28773)

(declare-fun lt!585541 () Unit!28773)

(assert (=> b!1623611 (= lt!585542 lt!585541)))

(assert (=> b!1623611 (rulesProduceIndividualToken!1414 thiss!17113 rules!1846 (h!23191 (t!148867 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!561 (LexerInterface!2762 List!17859 List!17860 Token!5832) Unit!28773)

(assert (=> b!1623611 (= lt!585541 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!561 thiss!17113 rules!1846 tokens!457 (h!23191 (t!148867 tokens!457))))))

(declare-fun lt!585544 () Unit!28773)

(declare-fun lt!585538 () Unit!28773)

(assert (=> b!1623611 (= lt!585544 lt!585538)))

(assert (=> b!1623611 (rulesProduceIndividualToken!1414 thiss!17113 rules!1846 (h!23191 tokens!457))))

(assert (=> b!1623611 (= lt!585538 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!561 thiss!17113 rules!1846 tokens!457 (h!23191 tokens!457)))))

(declare-fun b!1623612 () Bool)

(assert (=> b!1623612 (= e!1041324 (tokensListTwoByTwoPredicateSeparableList!455 thiss!17113 (Cons!17790 (h!23191 (t!148867 tokens!457)) (t!148867 (t!148867 tokens!457))) rules!1846))))

(assert (= (and d!488889 (not res!725557)) b!1623611))

(assert (= (and b!1623611 res!725558) b!1623612))

(declare-fun m!1950339 () Bool)

(assert (=> b!1623611 m!1950339))

(assert (=> b!1623611 m!1949415))

(assert (=> b!1623611 m!1950189))

(declare-fun m!1950341 () Bool)

(assert (=> b!1623611 m!1950341))

(declare-fun m!1950343 () Bool)

(assert (=> b!1623611 m!1950343))

(assert (=> b!1623611 m!1949431))

(assert (=> b!1623611 m!1949415))

(assert (=> b!1623611 m!1949449))

(declare-fun m!1950345 () Bool)

(assert (=> b!1623612 m!1950345))

(assert (=> b!1623138 d!488889))

(declare-fun d!488899 () Bool)

(declare-fun lt!585547 () BalanceConc!11772)

(assert (=> d!488899 (= (list!6975 lt!585547) (printList!877 thiss!17113 (list!6976 (seqFromList!2016 tokens!457))))))

(assert (=> d!488899 (= lt!585547 (printTailRec!815 thiss!17113 (seqFromList!2016 tokens!457) 0 (BalanceConc!11773 Empty!5914)))))

(assert (=> d!488899 (= (print!1293 thiss!17113 (seqFromList!2016 tokens!457)) lt!585547)))

(declare-fun bs!394661 () Bool)

(assert (= bs!394661 d!488899))

(declare-fun m!1950347 () Bool)

(assert (=> bs!394661 m!1950347))

(assert (=> bs!394661 m!1949391))

(declare-fun m!1950349 () Bool)

(assert (=> bs!394661 m!1950349))

(assert (=> bs!394661 m!1950349))

(declare-fun m!1950351 () Bool)

(assert (=> bs!394661 m!1950351))

(assert (=> bs!394661 m!1949391))

(declare-fun m!1950353 () Bool)

(assert (=> bs!394661 m!1950353))

(assert (=> b!1623117 d!488899))

(declare-fun b!1623613 () Bool)

(declare-fun e!1041328 () Bool)

(declare-fun e!1041327 () Bool)

(assert (=> b!1623613 (= e!1041328 e!1041327)))

(declare-fun res!725559 () Bool)

(declare-fun lt!585548 () tuple2!17346)

(assert (=> b!1623613 (= res!725559 (< (size!14253 (_2!10075 lt!585548)) (size!14253 lt!585117)))))

(assert (=> b!1623613 (=> (not res!725559) (not e!1041327))))

(declare-fun d!488901 () Bool)

(declare-fun e!1041326 () Bool)

(assert (=> d!488901 e!1041326))

(declare-fun res!725561 () Bool)

(assert (=> d!488901 (=> (not res!725561) (not e!1041326))))

(assert (=> d!488901 (= res!725561 e!1041328)))

(declare-fun c!264323 () Bool)

(assert (=> d!488901 (= c!264323 (> (size!14254 (_1!10075 lt!585548)) 0))))

(assert (=> d!488901 (= lt!585548 (lexTailRecV2!548 thiss!17113 rules!1846 lt!585117 (BalanceConc!11773 Empty!5914) lt!585117 (BalanceConc!11775 Empty!5915)))))

(assert (=> d!488901 (= (lex!1246 thiss!17113 rules!1846 lt!585117) lt!585548)))

(declare-fun b!1623614 () Bool)

(assert (=> b!1623614 (= e!1041326 (= (list!6975 (_2!10075 lt!585548)) (_2!10079 (lexList!825 thiss!17113 rules!1846 (list!6975 lt!585117)))))))

(declare-fun b!1623615 () Bool)

(assert (=> b!1623615 (= e!1041327 (not (isEmpty!10814 (_1!10075 lt!585548))))))

(declare-fun b!1623616 () Bool)

(declare-fun res!725560 () Bool)

(assert (=> b!1623616 (=> (not res!725560) (not e!1041326))))

(assert (=> b!1623616 (= res!725560 (= (list!6976 (_1!10075 lt!585548)) (_1!10079 (lexList!825 thiss!17113 rules!1846 (list!6975 lt!585117)))))))

(declare-fun b!1623617 () Bool)

(assert (=> b!1623617 (= e!1041328 (= (_2!10075 lt!585548) lt!585117))))

(assert (= (and d!488901 c!264323) b!1623613))

(assert (= (and d!488901 (not c!264323)) b!1623617))

(assert (= (and b!1623613 res!725559) b!1623615))

(assert (= (and d!488901 res!725561) b!1623616))

(assert (= (and b!1623616 res!725560) b!1623614))

(declare-fun m!1950355 () Bool)

(assert (=> b!1623616 m!1950355))

(assert (=> b!1623616 m!1949385))

(assert (=> b!1623616 m!1949385))

(declare-fun m!1950357 () Bool)

(assert (=> b!1623616 m!1950357))

(declare-fun m!1950359 () Bool)

(assert (=> d!488901 m!1950359))

(declare-fun m!1950361 () Bool)

(assert (=> d!488901 m!1950361))

(declare-fun m!1950363 () Bool)

(assert (=> b!1623613 m!1950363))

(declare-fun m!1950365 () Bool)

(assert (=> b!1623613 m!1950365))

(declare-fun m!1950367 () Bool)

(assert (=> b!1623614 m!1950367))

(assert (=> b!1623614 m!1949385))

(assert (=> b!1623614 m!1949385))

(assert (=> b!1623614 m!1950357))

(declare-fun m!1950369 () Bool)

(assert (=> b!1623615 m!1950369))

(assert (=> b!1623117 d!488901))

(declare-fun d!488903 () Bool)

(declare-fun list!6980 (Conc!5914) List!17857)

(assert (=> d!488903 (= (list!6975 lt!585098) (list!6980 (c!264245 lt!585098)))))

(declare-fun bs!394662 () Bool)

(assert (= bs!394662 d!488903))

(declare-fun m!1950371 () Bool)

(assert (=> bs!394662 m!1950371))

(assert (=> b!1623117 d!488903))

(declare-fun b!1623620 () Bool)

(declare-fun res!725563 () Bool)

(declare-fun e!1041330 () Bool)

(assert (=> b!1623620 (=> (not res!725563) (not e!1041330))))

(declare-fun lt!585549 () List!17857)

(assert (=> b!1623620 (= res!725563 (= (size!14252 lt!585549) (+ (size!14252 lt!585118) (size!14252 lt!585102))))))

(declare-fun b!1623618 () Bool)

(declare-fun e!1041329 () List!17857)

(assert (=> b!1623618 (= e!1041329 lt!585102)))

(declare-fun b!1623621 () Bool)

(assert (=> b!1623621 (= e!1041330 (or (not (= lt!585102 Nil!17787)) (= lt!585549 lt!585118)))))

(declare-fun b!1623619 () Bool)

(assert (=> b!1623619 (= e!1041329 (Cons!17787 (h!23188 lt!585118) (++!4721 (t!148864 lt!585118) lt!585102)))))

(declare-fun d!488905 () Bool)

(assert (=> d!488905 e!1041330))

(declare-fun res!725562 () Bool)

(assert (=> d!488905 (=> (not res!725562) (not e!1041330))))

(assert (=> d!488905 (= res!725562 (= (content!2467 lt!585549) ((_ map or) (content!2467 lt!585118) (content!2467 lt!585102))))))

(assert (=> d!488905 (= lt!585549 e!1041329)))

(declare-fun c!264324 () Bool)

(assert (=> d!488905 (= c!264324 ((_ is Nil!17787) lt!585118))))

(assert (=> d!488905 (= (++!4721 lt!585118 lt!585102) lt!585549)))

(assert (= (and d!488905 c!264324) b!1623618))

(assert (= (and d!488905 (not c!264324)) b!1623619))

(assert (= (and d!488905 res!725562) b!1623620))

(assert (= (and b!1623620 res!725563) b!1623621))

(declare-fun m!1950373 () Bool)

(assert (=> b!1623620 m!1950373))

(assert (=> b!1623620 m!1949829))

(declare-fun m!1950375 () Bool)

(assert (=> b!1623620 m!1950375))

(declare-fun m!1950377 () Bool)

(assert (=> b!1623619 m!1950377))

(declare-fun m!1950379 () Bool)

(assert (=> d!488905 m!1950379))

(declare-fun m!1950381 () Bool)

(assert (=> d!488905 m!1950381))

(declare-fun m!1950383 () Bool)

(assert (=> d!488905 m!1950383))

(assert (=> b!1623117 d!488905))

(declare-fun d!488907 () Bool)

(assert (=> d!488907 (= (list!6975 lt!585100) (list!6980 (c!264245 lt!585100)))))

(declare-fun bs!394663 () Bool)

(assert (= bs!394663 d!488907))

(declare-fun m!1950385 () Bool)

(assert (=> bs!394663 m!1950385))

(assert (=> b!1623117 d!488907))

(declare-fun d!488909 () Bool)

(declare-fun fromListB!887 (List!17860) BalanceConc!11774)

(assert (=> d!488909 (= (seqFromList!2016 tokens!457) (fromListB!887 tokens!457))))

(declare-fun bs!394664 () Bool)

(assert (= bs!394664 d!488909))

(declare-fun m!1950387 () Bool)

(assert (=> bs!394664 m!1950387))

(assert (=> b!1623117 d!488909))

(declare-fun d!488911 () Bool)

(declare-fun lt!585550 () BalanceConc!11772)

(assert (=> d!488911 (= (list!6975 lt!585550) (originalCharacters!3947 (h!23191 tokens!457)))))

(assert (=> d!488911 (= lt!585550 (dynLambda!7943 (toChars!4419 (transformation!3133 (rule!4959 (h!23191 tokens!457)))) (value!98963 (h!23191 tokens!457))))))

(assert (=> d!488911 (= (charsOf!1782 (h!23191 tokens!457)) lt!585550)))

(declare-fun b_lambda!51161 () Bool)

(assert (=> (not b_lambda!51161) (not d!488911)))

(declare-fun t!148890 () Bool)

(declare-fun tb!93251 () Bool)

(assert (=> (and b!1623136 (= (toChars!4419 (transformation!3133 (rule!4959 (h!23191 tokens!457)))) (toChars!4419 (transformation!3133 (rule!4959 (h!23191 tokens!457))))) t!148890) tb!93251))

(declare-fun b!1623622 () Bool)

(declare-fun e!1041331 () Bool)

(declare-fun tp!472284 () Bool)

(assert (=> b!1623622 (= e!1041331 (and (inv!23178 (c!264245 (dynLambda!7943 (toChars!4419 (transformation!3133 (rule!4959 (h!23191 tokens!457)))) (value!98963 (h!23191 tokens!457))))) tp!472284))))

(declare-fun result!112434 () Bool)

(assert (=> tb!93251 (= result!112434 (and (inv!23179 (dynLambda!7943 (toChars!4419 (transformation!3133 (rule!4959 (h!23191 tokens!457)))) (value!98963 (h!23191 tokens!457)))) e!1041331))))

(assert (= tb!93251 b!1623622))

(declare-fun m!1950389 () Bool)

(assert (=> b!1623622 m!1950389))

(declare-fun m!1950391 () Bool)

(assert (=> tb!93251 m!1950391))

(assert (=> d!488911 t!148890))

(declare-fun b_and!115141 () Bool)

(assert (= b_and!115133 (and (=> t!148890 result!112434) b_and!115141)))

(declare-fun tb!93253 () Bool)

(declare-fun t!148892 () Bool)

(assert (=> (and b!1623143 (= (toChars!4419 (transformation!3133 (h!23190 rules!1846))) (toChars!4419 (transformation!3133 (rule!4959 (h!23191 tokens!457))))) t!148892) tb!93253))

(declare-fun result!112436 () Bool)

(assert (= result!112436 result!112434))

(assert (=> d!488911 t!148892))

(declare-fun b_and!115143 () Bool)

(assert (= b_and!115135 (and (=> t!148892 result!112436) b_and!115143)))

(declare-fun m!1950393 () Bool)

(assert (=> d!488911 m!1950393))

(declare-fun m!1950395 () Bool)

(assert (=> d!488911 m!1950395))

(assert (=> b!1623117 d!488911))

(declare-fun d!488913 () Bool)

(assert (=> d!488913 (= (seqFromList!2016 (t!148867 tokens!457)) (fromListB!887 (t!148867 tokens!457)))))

(declare-fun bs!394665 () Bool)

(assert (= bs!394665 d!488913))

(declare-fun m!1950397 () Bool)

(assert (=> bs!394665 m!1950397))

(assert (=> b!1623117 d!488913))

(declare-fun d!488915 () Bool)

(assert (=> d!488915 (= (list!6975 lt!585117) (list!6980 (c!264245 lt!585117)))))

(declare-fun bs!394666 () Bool)

(assert (= bs!394666 d!488915))

(declare-fun m!1950399 () Bool)

(assert (=> bs!394666 m!1950399))

(assert (=> b!1623117 d!488915))

(declare-fun d!488917 () Bool)

(declare-fun lt!585551 () BalanceConc!11772)

(assert (=> d!488917 (= (list!6975 lt!585551) (printList!877 thiss!17113 (list!6976 lt!585106)))))

(assert (=> d!488917 (= lt!585551 (printTailRec!815 thiss!17113 lt!585106 0 (BalanceConc!11773 Empty!5914)))))

(assert (=> d!488917 (= (print!1293 thiss!17113 lt!585106) lt!585551)))

(declare-fun bs!394667 () Bool)

(assert (= bs!394667 d!488917))

(declare-fun m!1950401 () Bool)

(assert (=> bs!394667 m!1950401))

(assert (=> bs!394667 m!1949435))

(assert (=> bs!394667 m!1949435))

(declare-fun m!1950403 () Bool)

(assert (=> bs!394667 m!1950403))

(declare-fun m!1950405 () Bool)

(assert (=> bs!394667 m!1950405))

(assert (=> b!1623117 d!488917))

(declare-fun d!488919 () Bool)

(assert (=> d!488919 (= (isEmpty!10817 (_2!10077 lt!585114)) ((_ is Nil!17787) (_2!10077 lt!585114)))))

(assert (=> b!1623142 d!488919))

(declare-fun d!488921 () Bool)

(declare-fun isEmpty!10827 (Option!3285) Bool)

(assert (=> d!488921 (= (isDefined!2652 (maxPrefixZipperSequence!657 thiss!17113 rules!1846 (seqFromList!2015 (originalCharacters!3947 (h!23191 tokens!457))))) (not (isEmpty!10827 (maxPrefixZipperSequence!657 thiss!17113 rules!1846 (seqFromList!2015 (originalCharacters!3947 (h!23191 tokens!457)))))))))

(declare-fun bs!394668 () Bool)

(assert (= bs!394668 d!488921))

(assert (=> bs!394668 m!1949419))

(declare-fun m!1950407 () Bool)

(assert (=> bs!394668 m!1950407))

(assert (=> b!1623119 d!488921))

(declare-fun b!1623639 () Bool)

(declare-fun e!1041347 () Option!3285)

(declare-fun lt!585569 () Option!3285)

(declare-fun lt!585570 () Option!3285)

(assert (=> b!1623639 (= e!1041347 (ite (and ((_ is None!3284) lt!585569) ((_ is None!3284) lt!585570)) None!3284 (ite ((_ is None!3284) lt!585570) lt!585569 (ite ((_ is None!3284) lt!585569) lt!585570 (ite (>= (size!14248 (_1!10076 (v!24307 lt!585569))) (size!14248 (_1!10076 (v!24307 lt!585570)))) lt!585569 lt!585570)))))))

(declare-fun call!105191 () Option!3285)

(assert (=> b!1623639 (= lt!585569 call!105191)))

(assert (=> b!1623639 (= lt!585570 (maxPrefixZipperSequence!657 thiss!17113 (t!148866 rules!1846) (seqFromList!2015 (originalCharacters!3947 (h!23191 tokens!457)))))))

(declare-fun bm!105186 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!311 (LexerInterface!2762 Rule!6066 BalanceConc!11772) Option!3285)

(assert (=> bm!105186 (= call!105191 (maxPrefixOneRuleZipperSequence!311 thiss!17113 (h!23190 rules!1846) (seqFromList!2015 (originalCharacters!3947 (h!23191 tokens!457)))))))

(declare-fun lt!585566 () Option!3285)

(declare-fun e!1041345 () Bool)

(declare-fun b!1623640 () Bool)

(declare-fun get!5123 (Option!3285) tuple2!17348)

(assert (=> b!1623640 (= e!1041345 (= (list!6975 (_2!10076 (get!5123 lt!585566))) (_2!10077 (get!5120 (maxPrefix!1326 thiss!17113 rules!1846 (list!6975 (seqFromList!2015 (originalCharacters!3947 (h!23191 tokens!457)))))))))))

(declare-fun b!1623642 () Bool)

(declare-fun res!725577 () Bool)

(declare-fun e!1041349 () Bool)

(assert (=> b!1623642 (=> (not res!725577) (not e!1041349))))

(declare-fun e!1041344 () Bool)

(assert (=> b!1623642 (= res!725577 e!1041344)))

(declare-fun res!725576 () Bool)

(assert (=> b!1623642 (=> res!725576 e!1041344)))

(assert (=> b!1623642 (= res!725576 (not (isDefined!2652 lt!585566)))))

(declare-fun b!1623643 () Bool)

(declare-fun e!1041346 () Bool)

(assert (=> b!1623643 (= e!1041344 e!1041346)))

(declare-fun res!725580 () Bool)

(assert (=> b!1623643 (=> (not res!725580) (not e!1041346))))

(declare-fun maxPrefixZipper!302 (LexerInterface!2762 List!17859 List!17857) Option!3286)

(assert (=> b!1623643 (= res!725580 (= (_1!10076 (get!5123 lt!585566)) (_1!10077 (get!5120 (maxPrefixZipper!302 thiss!17113 rules!1846 (list!6975 (seqFromList!2015 (originalCharacters!3947 (h!23191 tokens!457)))))))))))

(declare-fun b!1623644 () Bool)

(assert (=> b!1623644 (= e!1041346 (= (list!6975 (_2!10076 (get!5123 lt!585566))) (_2!10077 (get!5120 (maxPrefixZipper!302 thiss!17113 rules!1846 (list!6975 (seqFromList!2015 (originalCharacters!3947 (h!23191 tokens!457)))))))))))

(declare-fun b!1623645 () Bool)

(declare-fun e!1041348 () Bool)

(assert (=> b!1623645 (= e!1041349 e!1041348)))

(declare-fun res!725581 () Bool)

(assert (=> b!1623645 (=> res!725581 e!1041348)))

(assert (=> b!1623645 (= res!725581 (not (isDefined!2652 lt!585566)))))

(declare-fun b!1623646 () Bool)

(assert (=> b!1623646 (= e!1041347 call!105191)))

(declare-fun b!1623641 () Bool)

(assert (=> b!1623641 (= e!1041348 e!1041345)))

(declare-fun res!725579 () Bool)

(assert (=> b!1623641 (=> (not res!725579) (not e!1041345))))

(assert (=> b!1623641 (= res!725579 (= (_1!10076 (get!5123 lt!585566)) (_1!10077 (get!5120 (maxPrefix!1326 thiss!17113 rules!1846 (list!6975 (seqFromList!2015 (originalCharacters!3947 (h!23191 tokens!457)))))))))))

(declare-fun d!488923 () Bool)

(assert (=> d!488923 e!1041349))

(declare-fun res!725578 () Bool)

(assert (=> d!488923 (=> (not res!725578) (not e!1041349))))

(assert (=> d!488923 (= res!725578 (= (isDefined!2652 lt!585566) (isDefined!2653 (maxPrefixZipper!302 thiss!17113 rules!1846 (list!6975 (seqFromList!2015 (originalCharacters!3947 (h!23191 tokens!457))))))))))

(assert (=> d!488923 (= lt!585566 e!1041347)))

(declare-fun c!264327 () Bool)

(assert (=> d!488923 (= c!264327 (and ((_ is Cons!17789) rules!1846) ((_ is Nil!17789) (t!148866 rules!1846))))))

(declare-fun lt!585571 () Unit!28773)

(declare-fun lt!585572 () Unit!28773)

(assert (=> d!488923 (= lt!585571 lt!585572)))

(declare-fun lt!585567 () List!17857)

(declare-fun lt!585568 () List!17857)

(assert (=> d!488923 (isPrefix!1393 lt!585567 lt!585568)))

(assert (=> d!488923 (= lt!585572 (lemmaIsPrefixRefl!956 lt!585567 lt!585568))))

(assert (=> d!488923 (= lt!585568 (list!6975 (seqFromList!2015 (originalCharacters!3947 (h!23191 tokens!457)))))))

(assert (=> d!488923 (= lt!585567 (list!6975 (seqFromList!2015 (originalCharacters!3947 (h!23191 tokens!457)))))))

(assert (=> d!488923 (rulesValidInductive!968 thiss!17113 rules!1846)))

(assert (=> d!488923 (= (maxPrefixZipperSequence!657 thiss!17113 rules!1846 (seqFromList!2015 (originalCharacters!3947 (h!23191 tokens!457)))) lt!585566)))

(assert (= (and d!488923 c!264327) b!1623646))

(assert (= (and d!488923 (not c!264327)) b!1623639))

(assert (= (or b!1623646 b!1623639) bm!105186))

(assert (= (and d!488923 res!725578) b!1623642))

(assert (= (and b!1623642 (not res!725576)) b!1623643))

(assert (= (and b!1623643 res!725580) b!1623644))

(assert (= (and b!1623642 res!725577) b!1623645))

(assert (= (and b!1623645 (not res!725581)) b!1623641))

(assert (= (and b!1623641 res!725579) b!1623640))

(declare-fun m!1950409 () Bool)

(assert (=> b!1623642 m!1950409))

(declare-fun m!1950411 () Bool)

(assert (=> b!1623640 m!1950411))

(declare-fun m!1950413 () Bool)

(assert (=> b!1623640 m!1950413))

(declare-fun m!1950415 () Bool)

(assert (=> b!1623640 m!1950415))

(declare-fun m!1950417 () Bool)

(assert (=> b!1623640 m!1950417))

(declare-fun m!1950419 () Bool)

(assert (=> b!1623640 m!1950419))

(assert (=> b!1623640 m!1950411))

(assert (=> b!1623640 m!1949417))

(assert (=> b!1623640 m!1950419))

(assert (=> b!1623641 m!1950417))

(assert (=> b!1623641 m!1949417))

(assert (=> b!1623641 m!1950419))

(assert (=> b!1623641 m!1950419))

(assert (=> b!1623641 m!1950411))

(assert (=> b!1623641 m!1950411))

(assert (=> b!1623641 m!1950413))

(assert (=> b!1623644 m!1950415))

(assert (=> b!1623644 m!1950417))

(declare-fun m!1950421 () Bool)

(assert (=> b!1623644 m!1950421))

(declare-fun m!1950423 () Bool)

(assert (=> b!1623644 m!1950423))

(assert (=> b!1623644 m!1949417))

(assert (=> b!1623644 m!1950419))

(assert (=> b!1623644 m!1950419))

(assert (=> b!1623644 m!1950421))

(assert (=> b!1623643 m!1950417))

(assert (=> b!1623643 m!1949417))

(assert (=> b!1623643 m!1950419))

(assert (=> b!1623643 m!1950419))

(assert (=> b!1623643 m!1950421))

(assert (=> b!1623643 m!1950421))

(assert (=> b!1623643 m!1950423))

(assert (=> b!1623639 m!1949417))

(declare-fun m!1950425 () Bool)

(assert (=> b!1623639 m!1950425))

(assert (=> bm!105186 m!1949417))

(declare-fun m!1950427 () Bool)

(assert (=> bm!105186 m!1950427))

(assert (=> b!1623645 m!1950409))

(assert (=> d!488923 m!1950409))

(assert (=> d!488923 m!1950421))

(declare-fun m!1950429 () Bool)

(assert (=> d!488923 m!1950429))

(assert (=> d!488923 m!1949819))

(assert (=> d!488923 m!1949417))

(assert (=> d!488923 m!1950419))

(declare-fun m!1950431 () Bool)

(assert (=> d!488923 m!1950431))

(declare-fun m!1950433 () Bool)

(assert (=> d!488923 m!1950433))

(assert (=> d!488923 m!1950419))

(assert (=> d!488923 m!1950421))

(assert (=> b!1623119 d!488923))

(declare-fun d!488925 () Bool)

(assert (=> d!488925 (= (seqFromList!2015 (originalCharacters!3947 (h!23191 tokens!457))) (fromListB!886 (originalCharacters!3947 (h!23191 tokens!457))))))

(declare-fun bs!394669 () Bool)

(assert (= bs!394669 d!488925))

(declare-fun m!1950435 () Bool)

(assert (=> bs!394669 m!1950435))

(assert (=> b!1623119 d!488925))

(declare-fun d!488927 () Bool)

(declare-fun lt!585575 () C!9096)

(assert (=> d!488927 (= lt!585575 (head!3413 (list!6975 lt!585117)))))

(declare-fun head!3415 (Conc!5914) C!9096)

(assert (=> d!488927 (= lt!585575 (head!3415 (c!264245 lt!585117)))))

(assert (=> d!488927 (not (isEmpty!10815 lt!585117))))

(assert (=> d!488927 (= (head!3412 lt!585117) lt!585575)))

(declare-fun bs!394670 () Bool)

(assert (= bs!394670 d!488927))

(assert (=> bs!394670 m!1949385))

(assert (=> bs!394670 m!1949385))

(declare-fun m!1950437 () Bool)

(assert (=> bs!394670 m!1950437))

(declare-fun m!1950439 () Bool)

(assert (=> bs!394670 m!1950439))

(assert (=> bs!394670 m!1949433))

(assert (=> b!1623119 d!488927))

(declare-fun d!488929 () Bool)

(declare-fun lt!585576 () BalanceConc!11772)

(assert (=> d!488929 (= (list!6975 lt!585576) (printList!877 thiss!17113 (list!6976 lt!585119)))))

(assert (=> d!488929 (= lt!585576 (printTailRec!815 thiss!17113 lt!585119 0 (BalanceConc!11773 Empty!5914)))))

(assert (=> d!488929 (= (print!1293 thiss!17113 lt!585119) lt!585576)))

(declare-fun bs!394671 () Bool)

(assert (= bs!394671 d!488929))

(declare-fun m!1950441 () Bool)

(assert (=> bs!394671 m!1950441))

(declare-fun m!1950443 () Bool)

(assert (=> bs!394671 m!1950443))

(assert (=> bs!394671 m!1950443))

(declare-fun m!1950445 () Bool)

(assert (=> bs!394671 m!1950445))

(assert (=> bs!394671 m!1949467))

(assert (=> b!1623141 d!488929))

(declare-fun d!488931 () Bool)

(assert (=> d!488931 (= (list!6975 lt!585099) (list!6980 (c!264245 lt!585099)))))

(declare-fun bs!394672 () Bool)

(assert (= bs!394672 d!488931))

(declare-fun m!1950447 () Bool)

(assert (=> bs!394672 m!1950447))

(assert (=> b!1623141 d!488931))

(declare-fun b!1623647 () Bool)

(declare-fun res!725582 () Bool)

(declare-fun e!1041350 () Bool)

(assert (=> b!1623647 (=> (not res!725582) (not e!1041350))))

(declare-fun lt!585577 () Option!3286)

(assert (=> b!1623647 (= res!725582 (matchR!1960 (regex!3133 (rule!4959 (_1!10077 (get!5120 lt!585577)))) (list!6975 (charsOf!1782 (_1!10077 (get!5120 lt!585577))))))))

(declare-fun b!1623648 () Bool)

(declare-fun res!725587 () Bool)

(assert (=> b!1623648 (=> (not res!725587) (not e!1041350))))

(assert (=> b!1623648 (= res!725587 (< (size!14252 (_2!10077 (get!5120 lt!585577))) (size!14252 lt!585101)))))

(declare-fun b!1623649 () Bool)

(declare-fun res!725588 () Bool)

(assert (=> b!1623649 (=> (not res!725588) (not e!1041350))))

(assert (=> b!1623649 (= res!725588 (= (list!6975 (charsOf!1782 (_1!10077 (get!5120 lt!585577)))) (originalCharacters!3947 (_1!10077 (get!5120 lt!585577)))))))

(declare-fun b!1623650 () Bool)

(declare-fun res!725585 () Bool)

(assert (=> b!1623650 (=> (not res!725585) (not e!1041350))))

(assert (=> b!1623650 (= res!725585 (= (value!98963 (_1!10077 (get!5120 lt!585577))) (apply!4528 (transformation!3133 (rule!4959 (_1!10077 (get!5120 lt!585577)))) (seqFromList!2015 (originalCharacters!3947 (_1!10077 (get!5120 lt!585577)))))))))

(declare-fun b!1623651 () Bool)

(assert (=> b!1623651 (= e!1041350 (contains!3110 rules!1846 (rule!4959 (_1!10077 (get!5120 lt!585577)))))))

(declare-fun bm!105187 () Bool)

(declare-fun call!105192 () Option!3286)

(assert (=> bm!105187 (= call!105192 (maxPrefixOneRule!771 thiss!17113 (h!23190 rules!1846) lt!585101))))

(declare-fun b!1623652 () Bool)

(declare-fun res!725584 () Bool)

(assert (=> b!1623652 (=> (not res!725584) (not e!1041350))))

(assert (=> b!1623652 (= res!725584 (= (++!4721 (list!6975 (charsOf!1782 (_1!10077 (get!5120 lt!585577)))) (_2!10077 (get!5120 lt!585577))) lt!585101))))

(declare-fun b!1623653 () Bool)

(declare-fun e!1041351 () Bool)

(assert (=> b!1623653 (= e!1041351 e!1041350)))

(declare-fun res!725586 () Bool)

(assert (=> b!1623653 (=> (not res!725586) (not e!1041350))))

(assert (=> b!1623653 (= res!725586 (isDefined!2653 lt!585577))))

(declare-fun b!1623654 () Bool)

(declare-fun e!1041352 () Option!3286)

(declare-fun lt!585580 () Option!3286)

(declare-fun lt!585581 () Option!3286)

(assert (=> b!1623654 (= e!1041352 (ite (and ((_ is None!3285) lt!585580) ((_ is None!3285) lt!585581)) None!3285 (ite ((_ is None!3285) lt!585581) lt!585580 (ite ((_ is None!3285) lt!585580) lt!585581 (ite (>= (size!14248 (_1!10077 (v!24308 lt!585580))) (size!14248 (_1!10077 (v!24308 lt!585581)))) lt!585580 lt!585581)))))))

(assert (=> b!1623654 (= lt!585580 call!105192)))

(assert (=> b!1623654 (= lt!585581 (maxPrefix!1326 thiss!17113 (t!148866 rules!1846) lt!585101))))

(declare-fun b!1623655 () Bool)

(assert (=> b!1623655 (= e!1041352 call!105192)))

(declare-fun d!488933 () Bool)

(assert (=> d!488933 e!1041351))

(declare-fun res!725583 () Bool)

(assert (=> d!488933 (=> res!725583 e!1041351)))

(assert (=> d!488933 (= res!725583 (isEmpty!10821 lt!585577))))

(assert (=> d!488933 (= lt!585577 e!1041352)))

(declare-fun c!264328 () Bool)

(assert (=> d!488933 (= c!264328 (and ((_ is Cons!17789) rules!1846) ((_ is Nil!17789) (t!148866 rules!1846))))))

(declare-fun lt!585579 () Unit!28773)

(declare-fun lt!585578 () Unit!28773)

(assert (=> d!488933 (= lt!585579 lt!585578)))

(assert (=> d!488933 (isPrefix!1393 lt!585101 lt!585101)))

(assert (=> d!488933 (= lt!585578 (lemmaIsPrefixRefl!956 lt!585101 lt!585101))))

(assert (=> d!488933 (rulesValidInductive!968 thiss!17113 rules!1846)))

(assert (=> d!488933 (= (maxPrefix!1326 thiss!17113 rules!1846 lt!585101) lt!585577)))

(assert (= (and d!488933 c!264328) b!1623655))

(assert (= (and d!488933 (not c!264328)) b!1623654))

(assert (= (or b!1623655 b!1623654) bm!105187))

(assert (= (and d!488933 (not res!725583)) b!1623653))

(assert (= (and b!1623653 res!725586) b!1623649))

(assert (= (and b!1623649 res!725588) b!1623648))

(assert (= (and b!1623648 res!725587) b!1623652))

(assert (= (and b!1623652 res!725584) b!1623650))

(assert (= (and b!1623650 res!725585) b!1623647))

(assert (= (and b!1623647 res!725582) b!1623651))

(declare-fun m!1950449 () Bool)

(assert (=> b!1623648 m!1950449))

(declare-fun m!1950451 () Bool)

(assert (=> b!1623648 m!1950451))

(declare-fun m!1950453 () Bool)

(assert (=> b!1623648 m!1950453))

(assert (=> b!1623651 m!1950449))

(declare-fun m!1950455 () Bool)

(assert (=> b!1623651 m!1950455))

(assert (=> b!1623647 m!1950449))

(declare-fun m!1950457 () Bool)

(assert (=> b!1623647 m!1950457))

(assert (=> b!1623647 m!1950457))

(declare-fun m!1950459 () Bool)

(assert (=> b!1623647 m!1950459))

(assert (=> b!1623647 m!1950459))

(declare-fun m!1950461 () Bool)

(assert (=> b!1623647 m!1950461))

(declare-fun m!1950463 () Bool)

(assert (=> b!1623654 m!1950463))

(declare-fun m!1950465 () Bool)

(assert (=> b!1623653 m!1950465))

(assert (=> b!1623650 m!1950449))

(declare-fun m!1950467 () Bool)

(assert (=> b!1623650 m!1950467))

(assert (=> b!1623650 m!1950467))

(declare-fun m!1950469 () Bool)

(assert (=> b!1623650 m!1950469))

(declare-fun m!1950471 () Bool)

(assert (=> d!488933 m!1950471))

(declare-fun m!1950473 () Bool)

(assert (=> d!488933 m!1950473))

(declare-fun m!1950475 () Bool)

(assert (=> d!488933 m!1950475))

(assert (=> d!488933 m!1949819))

(assert (=> b!1623652 m!1950449))

(assert (=> b!1623652 m!1950457))

(assert (=> b!1623652 m!1950457))

(assert (=> b!1623652 m!1950459))

(assert (=> b!1623652 m!1950459))

(declare-fun m!1950477 () Bool)

(assert (=> b!1623652 m!1950477))

(assert (=> b!1623649 m!1950449))

(assert (=> b!1623649 m!1950457))

(assert (=> b!1623649 m!1950457))

(assert (=> b!1623649 m!1950459))

(declare-fun m!1950479 () Bool)

(assert (=> bm!105187 m!1950479))

(assert (=> b!1623141 d!488933))

(declare-fun d!488935 () Bool)

(declare-fun c!264331 () Bool)

(assert (=> d!488935 (= c!264331 ((_ is Cons!17790) (Cons!17790 (h!23191 tokens!457) Nil!17790)))))

(declare-fun e!1041355 () List!17857)

(assert (=> d!488935 (= (printList!877 thiss!17113 (Cons!17790 (h!23191 tokens!457) Nil!17790)) e!1041355)))

(declare-fun b!1623660 () Bool)

(assert (=> b!1623660 (= e!1041355 (++!4721 (list!6975 (charsOf!1782 (h!23191 (Cons!17790 (h!23191 tokens!457) Nil!17790)))) (printList!877 thiss!17113 (t!148867 (Cons!17790 (h!23191 tokens!457) Nil!17790)))))))

(declare-fun b!1623661 () Bool)

(assert (=> b!1623661 (= e!1041355 Nil!17787)))

(assert (= (and d!488935 c!264331) b!1623660))

(assert (= (and d!488935 (not c!264331)) b!1623661))

(declare-fun m!1950481 () Bool)

(assert (=> b!1623660 m!1950481))

(assert (=> b!1623660 m!1950481))

(declare-fun m!1950483 () Bool)

(assert (=> b!1623660 m!1950483))

(declare-fun m!1950485 () Bool)

(assert (=> b!1623660 m!1950485))

(assert (=> b!1623660 m!1950483))

(assert (=> b!1623660 m!1950485))

(declare-fun m!1950487 () Bool)

(assert (=> b!1623660 m!1950487))

(assert (=> b!1623141 d!488935))

(declare-fun d!488937 () Bool)

(declare-fun lt!585602 () BalanceConc!11772)

(declare-fun printListTailRec!351 (LexerInterface!2762 List!17860 List!17857) List!17857)

(declare-fun dropList!600 (BalanceConc!11774 Int) List!17860)

(assert (=> d!488937 (= (list!6975 lt!585602) (printListTailRec!351 thiss!17113 (dropList!600 lt!585119 0) (list!6975 (BalanceConc!11773 Empty!5914))))))

(declare-fun e!1041361 () BalanceConc!11772)

(assert (=> d!488937 (= lt!585602 e!1041361)))

(declare-fun c!264334 () Bool)

(assert (=> d!488937 (= c!264334 (>= 0 (size!14254 lt!585119)))))

(declare-fun e!1041360 () Bool)

(assert (=> d!488937 e!1041360))

(declare-fun res!725591 () Bool)

(assert (=> d!488937 (=> (not res!725591) (not e!1041360))))

(assert (=> d!488937 (= res!725591 (>= 0 0))))

(assert (=> d!488937 (= (printTailRec!815 thiss!17113 lt!585119 0 (BalanceConc!11773 Empty!5914)) lt!585602)))

(declare-fun b!1623668 () Bool)

(assert (=> b!1623668 (= e!1041360 (<= 0 (size!14254 lt!585119)))))

(declare-fun b!1623669 () Bool)

(assert (=> b!1623669 (= e!1041361 (BalanceConc!11773 Empty!5914))))

(declare-fun b!1623670 () Bool)

(assert (=> b!1623670 (= e!1041361 (printTailRec!815 thiss!17113 lt!585119 (+ 0 1) (++!4722 (BalanceConc!11773 Empty!5914) (charsOf!1782 (apply!4533 lt!585119 0)))))))

(declare-fun lt!585599 () List!17860)

(assert (=> b!1623670 (= lt!585599 (list!6976 lt!585119))))

(declare-fun lt!585598 () Unit!28773)

(declare-fun lemmaDropApply!558 (List!17860 Int) Unit!28773)

(assert (=> b!1623670 (= lt!585598 (lemmaDropApply!558 lt!585599 0))))

(declare-fun head!3417 (List!17860) Token!5832)

(declare-fun drop!868 (List!17860 Int) List!17860)

(declare-fun apply!4536 (List!17860 Int) Token!5832)

(assert (=> b!1623670 (= (head!3417 (drop!868 lt!585599 0)) (apply!4536 lt!585599 0))))

(declare-fun lt!585596 () Unit!28773)

(assert (=> b!1623670 (= lt!585596 lt!585598)))

(declare-fun lt!585597 () List!17860)

(assert (=> b!1623670 (= lt!585597 (list!6976 lt!585119))))

(declare-fun lt!585600 () Unit!28773)

(declare-fun lemmaDropTail!538 (List!17860 Int) Unit!28773)

(assert (=> b!1623670 (= lt!585600 (lemmaDropTail!538 lt!585597 0))))

(declare-fun tail!2356 (List!17860) List!17860)

(assert (=> b!1623670 (= (tail!2356 (drop!868 lt!585597 0)) (drop!868 lt!585597 (+ 0 1)))))

(declare-fun lt!585601 () Unit!28773)

(assert (=> b!1623670 (= lt!585601 lt!585600)))

(assert (= (and d!488937 res!725591) b!1623668))

(assert (= (and d!488937 c!264334) b!1623669))

(assert (= (and d!488937 (not c!264334)) b!1623670))

(declare-fun m!1950489 () Bool)

(assert (=> d!488937 m!1950489))

(declare-fun m!1950491 () Bool)

(assert (=> d!488937 m!1950491))

(declare-fun m!1950493 () Bool)

(assert (=> d!488937 m!1950493))

(declare-fun m!1950495 () Bool)

(assert (=> d!488937 m!1950495))

(assert (=> d!488937 m!1950493))

(assert (=> d!488937 m!1950495))

(declare-fun m!1950497 () Bool)

(assert (=> d!488937 m!1950497))

(assert (=> b!1623668 m!1950491))

(declare-fun m!1950499 () Bool)

(assert (=> b!1623670 m!1950499))

(declare-fun m!1950501 () Bool)

(assert (=> b!1623670 m!1950501))

(declare-fun m!1950503 () Bool)

(assert (=> b!1623670 m!1950503))

(declare-fun m!1950505 () Bool)

(assert (=> b!1623670 m!1950505))

(declare-fun m!1950507 () Bool)

(assert (=> b!1623670 m!1950507))

(assert (=> b!1623670 m!1950443))

(assert (=> b!1623670 m!1950501))

(declare-fun m!1950509 () Bool)

(assert (=> b!1623670 m!1950509))

(declare-fun m!1950511 () Bool)

(assert (=> b!1623670 m!1950511))

(declare-fun m!1950513 () Bool)

(assert (=> b!1623670 m!1950513))

(declare-fun m!1950515 () Bool)

(assert (=> b!1623670 m!1950515))

(declare-fun m!1950517 () Bool)

(assert (=> b!1623670 m!1950517))

(assert (=> b!1623670 m!1950515))

(assert (=> b!1623670 m!1950503))

(assert (=> b!1623670 m!1950509))

(assert (=> b!1623670 m!1950505))

(declare-fun m!1950519 () Bool)

(assert (=> b!1623670 m!1950519))

(declare-fun m!1950521 () Bool)

(assert (=> b!1623670 m!1950521))

(assert (=> b!1623141 d!488937))

(declare-fun d!488939 () Bool)

(declare-fun e!1041364 () Bool)

(assert (=> d!488939 e!1041364))

(declare-fun res!725594 () Bool)

(assert (=> d!488939 (=> (not res!725594) (not e!1041364))))

(declare-fun lt!585605 () BalanceConc!11774)

(assert (=> d!488939 (= res!725594 (= (list!6976 lt!585605) (Cons!17790 (h!23191 tokens!457) Nil!17790)))))

(declare-fun singleton!662 (Token!5832) BalanceConc!11774)

(assert (=> d!488939 (= lt!585605 (singleton!662 (h!23191 tokens!457)))))

(assert (=> d!488939 (= (singletonSeq!1545 (h!23191 tokens!457)) lt!585605)))

(declare-fun b!1623673 () Bool)

(declare-fun isBalanced!1782 (Conc!5915) Bool)

(assert (=> b!1623673 (= e!1041364 (isBalanced!1782 (c!264247 lt!585605)))))

(assert (= (and d!488939 res!725594) b!1623673))

(declare-fun m!1950523 () Bool)

(assert (=> d!488939 m!1950523))

(declare-fun m!1950525 () Bool)

(assert (=> d!488939 m!1950525))

(declare-fun m!1950527 () Bool)

(assert (=> b!1623673 m!1950527))

(assert (=> b!1623141 d!488939))

(declare-fun d!488941 () Bool)

(assert (=> d!488941 (= (separableTokensPredicate!704 thiss!17113 (h!23191 tokens!457) (h!23191 (t!148867 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!517 (rulesRegex!523 thiss!17113 rules!1846) (++!4722 (charsOf!1782 (h!23191 tokens!457)) (singletonSeq!1544 (apply!4526 (charsOf!1782 (h!23191 (t!148867 tokens!457))) 0))))))))

(declare-fun bs!394673 () Bool)

(assert (= bs!394673 d!488941))

(assert (=> bs!394673 m!1949405))

(assert (=> bs!394673 m!1949411))

(assert (=> bs!394673 m!1949413))

(assert (=> bs!394673 m!1949387))

(assert (=> bs!394673 m!1949413))

(declare-fun m!1950529 () Bool)

(assert (=> bs!394673 m!1950529))

(assert (=> bs!394673 m!1949387))

(assert (=> bs!394673 m!1949415))

(assert (=> bs!394673 m!1949411))

(assert (=> bs!394673 m!1949405))

(assert (=> bs!394673 m!1950529))

(declare-fun m!1950531 () Bool)

(assert (=> bs!394673 m!1950531))

(assert (=> bs!394673 m!1949415))

(assert (=> b!1623120 d!488941))

(declare-fun d!488943 () Bool)

(declare-fun res!725599 () Bool)

(declare-fun e!1041367 () Bool)

(assert (=> d!488943 (=> (not res!725599) (not e!1041367))))

(assert (=> d!488943 (= res!725599 (not (isEmpty!10817 (originalCharacters!3947 (h!23191 tokens!457)))))))

(assert (=> d!488943 (= (inv!23174 (h!23191 tokens!457)) e!1041367)))

(declare-fun b!1623678 () Bool)

(declare-fun res!725600 () Bool)

(assert (=> b!1623678 (=> (not res!725600) (not e!1041367))))

(assert (=> b!1623678 (= res!725600 (= (originalCharacters!3947 (h!23191 tokens!457)) (list!6975 (dynLambda!7943 (toChars!4419 (transformation!3133 (rule!4959 (h!23191 tokens!457)))) (value!98963 (h!23191 tokens!457))))))))

(declare-fun b!1623679 () Bool)

(assert (=> b!1623679 (= e!1041367 (= (size!14248 (h!23191 tokens!457)) (size!14252 (originalCharacters!3947 (h!23191 tokens!457)))))))

(assert (= (and d!488943 res!725599) b!1623678))

(assert (= (and b!1623678 res!725600) b!1623679))

(declare-fun b_lambda!51163 () Bool)

(assert (=> (not b_lambda!51163) (not b!1623678)))

(assert (=> b!1623678 t!148890))

(declare-fun b_and!115145 () Bool)

(assert (= b_and!115141 (and (=> t!148890 result!112434) b_and!115145)))

(assert (=> b!1623678 t!148892))

(declare-fun b_and!115147 () Bool)

(assert (= b_and!115143 (and (=> t!148892 result!112436) b_and!115147)))

(declare-fun m!1950533 () Bool)

(assert (=> d!488943 m!1950533))

(assert (=> b!1623678 m!1950395))

(assert (=> b!1623678 m!1950395))

(declare-fun m!1950535 () Bool)

(assert (=> b!1623678 m!1950535))

(assert (=> b!1623679 m!1949795))

(assert (=> b!1623123 d!488943))

(declare-fun b!1623690 () Bool)

(declare-fun e!1041374 () Bool)

(declare-fun inv!15 (TokenValue!3223) Bool)

(assert (=> b!1623690 (= e!1041374 (inv!15 (value!98963 (h!23191 tokens!457))))))

(declare-fun b!1623691 () Bool)

(declare-fun e!1041376 () Bool)

(declare-fun e!1041375 () Bool)

(assert (=> b!1623691 (= e!1041376 e!1041375)))

(declare-fun c!264339 () Bool)

(assert (=> b!1623691 (= c!264339 ((_ is IntegerValue!9670) (value!98963 (h!23191 tokens!457))))))

(declare-fun b!1623692 () Bool)

(declare-fun inv!17 (TokenValue!3223) Bool)

(assert (=> b!1623692 (= e!1041375 (inv!17 (value!98963 (h!23191 tokens!457))))))

(declare-fun b!1623693 () Bool)

(declare-fun res!725603 () Bool)

(assert (=> b!1623693 (=> res!725603 e!1041374)))

(assert (=> b!1623693 (= res!725603 (not ((_ is IntegerValue!9671) (value!98963 (h!23191 tokens!457)))))))

(assert (=> b!1623693 (= e!1041375 e!1041374)))

(declare-fun d!488945 () Bool)

(declare-fun c!264340 () Bool)

(assert (=> d!488945 (= c!264340 ((_ is IntegerValue!9669) (value!98963 (h!23191 tokens!457))))))

(assert (=> d!488945 (= (inv!21 (value!98963 (h!23191 tokens!457))) e!1041376)))

(declare-fun b!1623694 () Bool)

(declare-fun inv!16 (TokenValue!3223) Bool)

(assert (=> b!1623694 (= e!1041376 (inv!16 (value!98963 (h!23191 tokens!457))))))

(assert (= (and d!488945 c!264340) b!1623694))

(assert (= (and d!488945 (not c!264340)) b!1623691))

(assert (= (and b!1623691 c!264339) b!1623692))

(assert (= (and b!1623691 (not c!264339)) b!1623693))

(assert (= (and b!1623693 (not res!725603)) b!1623690))

(declare-fun m!1950537 () Bool)

(assert (=> b!1623690 m!1950537))

(declare-fun m!1950539 () Bool)

(assert (=> b!1623692 m!1950539))

(declare-fun m!1950541 () Bool)

(assert (=> b!1623694 m!1950541))

(assert (=> b!1623124 d!488945))

(declare-fun d!488947 () Bool)

(assert (=> d!488947 (= (isDefined!2653 lt!585112) (not (isEmpty!10821 lt!585112)))))

(declare-fun bs!394674 () Bool)

(assert (= bs!394674 d!488947))

(declare-fun m!1950543 () Bool)

(assert (=> bs!394674 m!1950543))

(assert (=> b!1623122 d!488947))

(declare-fun b!1623778 () Bool)

(declare-fun res!725625 () Bool)

(declare-fun e!1041436 () Bool)

(assert (=> b!1623778 (=> (not res!725625) (not e!1041436))))

(declare-fun lt!585734 () Token!5832)

(declare-datatypes ((Option!3288 0))(
  ( (None!3287) (Some!3287 (v!24316 Rule!6066)) )
))
(declare-fun get!5124 (Option!3288) Rule!6066)

(declare-fun getRuleFromTag!280 (LexerInterface!2762 List!17859 String!20447) Option!3288)

(assert (=> b!1623778 (= res!725625 (matchR!1960 (regex!3133 (get!5124 (getRuleFromTag!280 thiss!17113 rules!1846 (tag!3411 (rule!4959 lt!585734))))) (list!6975 (charsOf!1782 lt!585734))))))

(declare-fun b!1623779 () Bool)

(assert (=> b!1623779 (= e!1041436 (= (rule!4959 lt!585734) (get!5124 (getRuleFromTag!280 thiss!17113 rules!1846 (tag!3411 (rule!4959 lt!585734))))))))

(declare-fun d!488949 () Bool)

(assert (=> d!488949 (isDefined!2653 (maxPrefix!1326 thiss!17113 rules!1846 (++!4721 lt!585118 lt!585102)))))

(declare-fun lt!585729 () Unit!28773)

(declare-fun e!1041437 () Unit!28773)

(assert (=> d!488949 (= lt!585729 e!1041437)))

(declare-fun c!264348 () Bool)

(assert (=> d!488949 (= c!264348 (isEmpty!10821 (maxPrefix!1326 thiss!17113 rules!1846 (++!4721 lt!585118 lt!585102))))))

(declare-fun lt!585738 () Unit!28773)

(declare-fun lt!585727 () Unit!28773)

(assert (=> d!488949 (= lt!585738 lt!585727)))

(assert (=> d!488949 e!1041436))

(declare-fun res!725626 () Bool)

(assert (=> d!488949 (=> (not res!725626) (not e!1041436))))

(declare-fun isDefined!2655 (Option!3288) Bool)

(assert (=> d!488949 (= res!725626 (isDefined!2655 (getRuleFromTag!280 thiss!17113 rules!1846 (tag!3411 (rule!4959 lt!585734)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!280 (LexerInterface!2762 List!17859 List!17857 Token!5832) Unit!28773)

(assert (=> d!488949 (= lt!585727 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!280 thiss!17113 rules!1846 lt!585118 lt!585734))))

(declare-fun lt!585737 () Unit!28773)

(declare-fun lt!585735 () Unit!28773)

(assert (=> d!488949 (= lt!585737 lt!585735)))

(declare-fun lt!585731 () List!17857)

(assert (=> d!488949 (isPrefix!1393 lt!585731 (++!4721 lt!585118 lt!585102))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!166 (List!17857 List!17857 List!17857) Unit!28773)

(assert (=> d!488949 (= lt!585735 (lemmaPrefixStaysPrefixWhenAddingToSuffix!166 lt!585731 lt!585118 lt!585102))))

(assert (=> d!488949 (= lt!585731 (list!6975 (charsOf!1782 lt!585734)))))

(declare-fun lt!585736 () Unit!28773)

(declare-fun lt!585726 () Unit!28773)

(assert (=> d!488949 (= lt!585736 lt!585726)))

(declare-fun lt!585733 () List!17857)

(declare-fun lt!585740 () List!17857)

(assert (=> d!488949 (isPrefix!1393 lt!585733 (++!4721 lt!585733 lt!585740))))

(assert (=> d!488949 (= lt!585726 (lemmaConcatTwoListThenFirstIsPrefix!918 lt!585733 lt!585740))))

(assert (=> d!488949 (= lt!585740 (_2!10077 (get!5120 (maxPrefix!1326 thiss!17113 rules!1846 lt!585118))))))

(assert (=> d!488949 (= lt!585733 (list!6975 (charsOf!1782 lt!585734)))))

(assert (=> d!488949 (= lt!585734 (head!3417 (list!6976 (_1!10075 (lex!1246 thiss!17113 rules!1846 (seqFromList!2015 lt!585118))))))))

(assert (=> d!488949 (not (isEmpty!10816 rules!1846))))

(assert (=> d!488949 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!336 thiss!17113 rules!1846 lt!585118 lt!585102) lt!585729)))

(declare-fun b!1623781 () Bool)

(declare-fun Unit!28811 () Unit!28773)

(assert (=> b!1623781 (= e!1041437 Unit!28811)))

(declare-fun b!1623780 () Bool)

(declare-fun Unit!28812 () Unit!28773)

(assert (=> b!1623780 (= e!1041437 Unit!28812)))

(declare-fun lt!585732 () List!17857)

(assert (=> b!1623780 (= lt!585732 (++!4721 lt!585118 lt!585102))))

(declare-fun lt!585739 () Unit!28773)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!174 (LexerInterface!2762 Rule!6066 List!17859 List!17857) Unit!28773)

(assert (=> b!1623780 (= lt!585739 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!174 thiss!17113 (rule!4959 lt!585734) rules!1846 lt!585732))))

(assert (=> b!1623780 (isEmpty!10821 (maxPrefixOneRule!771 thiss!17113 (rule!4959 lt!585734) lt!585732))))

(declare-fun lt!585725 () Unit!28773)

(assert (=> b!1623780 (= lt!585725 lt!585739)))

(declare-fun lt!585741 () List!17857)

(assert (=> b!1623780 (= lt!585741 (list!6975 (charsOf!1782 lt!585734)))))

(declare-fun lt!585730 () Unit!28773)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!170 (LexerInterface!2762 Rule!6066 List!17857 List!17857) Unit!28773)

(assert (=> b!1623780 (= lt!585730 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!170 thiss!17113 (rule!4959 lt!585734) lt!585741 (++!4721 lt!585118 lt!585102)))))

(assert (=> b!1623780 (not (matchR!1960 (regex!3133 (rule!4959 lt!585734)) lt!585741))))

(declare-fun lt!585728 () Unit!28773)

(assert (=> b!1623780 (= lt!585728 lt!585730)))

(assert (=> b!1623780 false))

(assert (= (and d!488949 res!725626) b!1623778))

(assert (= (and b!1623778 res!725625) b!1623779))

(assert (= (and d!488949 c!264348) b!1623780))

(assert (= (and d!488949 (not c!264348)) b!1623781))

(declare-fun m!1950665 () Bool)

(assert (=> b!1623778 m!1950665))

(declare-fun m!1950667 () Bool)

(assert (=> b!1623778 m!1950667))

(declare-fun m!1950669 () Bool)

(assert (=> b!1623778 m!1950669))

(assert (=> b!1623778 m!1950669))

(assert (=> b!1623778 m!1950665))

(declare-fun m!1950671 () Bool)

(assert (=> b!1623778 m!1950671))

(declare-fun m!1950673 () Bool)

(assert (=> b!1623778 m!1950673))

(assert (=> b!1623778 m!1950671))

(assert (=> b!1623779 m!1950671))

(assert (=> b!1623779 m!1950671))

(assert (=> b!1623779 m!1950673))

(declare-fun m!1950675 () Bool)

(assert (=> d!488949 m!1950675))

(declare-fun m!1950677 () Bool)

(assert (=> d!488949 m!1950677))

(assert (=> d!488949 m!1950033))

(declare-fun m!1950679 () Bool)

(assert (=> d!488949 m!1950679))

(declare-fun m!1950681 () Bool)

(assert (=> d!488949 m!1950681))

(assert (=> d!488949 m!1949379))

(assert (=> d!488949 m!1949381))

(assert (=> d!488949 m!1949361))

(declare-fun m!1950683 () Bool)

(assert (=> d!488949 m!1950683))

(assert (=> d!488949 m!1949399))

(declare-fun m!1950685 () Bool)

(assert (=> d!488949 m!1950685))

(declare-fun m!1950687 () Bool)

(assert (=> d!488949 m!1950687))

(declare-fun m!1950689 () Bool)

(assert (=> d!488949 m!1950689))

(assert (=> d!488949 m!1950671))

(declare-fun m!1950691 () Bool)

(assert (=> d!488949 m!1950691))

(assert (=> d!488949 m!1950033))

(assert (=> d!488949 m!1950675))

(declare-fun m!1950693 () Bool)

(assert (=> d!488949 m!1950693))

(assert (=> d!488949 m!1949361))

(assert (=> d!488949 m!1950669))

(assert (=> d!488949 m!1949379))

(assert (=> d!488949 m!1949399))

(declare-fun m!1950695 () Bool)

(assert (=> d!488949 m!1950695))

(assert (=> d!488949 m!1949487))

(assert (=> d!488949 m!1950669))

(assert (=> d!488949 m!1950665))

(declare-fun m!1950697 () Bool)

(assert (=> d!488949 m!1950697))

(assert (=> d!488949 m!1949399))

(assert (=> d!488949 m!1950675))

(assert (=> d!488949 m!1950685))

(assert (=> d!488949 m!1950671))

(assert (=> b!1623780 m!1949399))

(declare-fun m!1950699 () Bool)

(assert (=> b!1623780 m!1950699))

(assert (=> b!1623780 m!1950669))

(declare-fun m!1950701 () Bool)

(assert (=> b!1623780 m!1950701))

(declare-fun m!1950703 () Bool)

(assert (=> b!1623780 m!1950703))

(assert (=> b!1623780 m!1950669))

(assert (=> b!1623780 m!1950665))

(assert (=> b!1623780 m!1949399))

(assert (=> b!1623780 m!1950703))

(declare-fun m!1950705 () Bool)

(assert (=> b!1623780 m!1950705))

(declare-fun m!1950707 () Bool)

(assert (=> b!1623780 m!1950707))

(assert (=> b!1623122 d!488949))

(declare-fun d!488961 () Bool)

(declare-fun e!1041440 () Bool)

(assert (=> d!488961 e!1041440))

(declare-fun res!725629 () Bool)

(assert (=> d!488961 (=> (not res!725629) (not e!1041440))))

(declare-fun prepend!657 (Conc!5915 Token!5832) Conc!5915)

(assert (=> d!488961 (= res!725629 (isBalanced!1782 (prepend!657 (c!264247 (seqFromList!2016 (t!148867 (t!148867 tokens!457)))) (h!23191 (t!148867 tokens!457)))))))

(declare-fun lt!585744 () BalanceConc!11774)

(assert (=> d!488961 (= lt!585744 (BalanceConc!11775 (prepend!657 (c!264247 (seqFromList!2016 (t!148867 (t!148867 tokens!457)))) (h!23191 (t!148867 tokens!457)))))))

(assert (=> d!488961 (= (prepend!655 (seqFromList!2016 (t!148867 (t!148867 tokens!457))) (h!23191 (t!148867 tokens!457))) lt!585744)))

(declare-fun b!1623784 () Bool)

(assert (=> b!1623784 (= e!1041440 (= (list!6976 lt!585744) (Cons!17790 (h!23191 (t!148867 tokens!457)) (list!6976 (seqFromList!2016 (t!148867 (t!148867 tokens!457)))))))))

(assert (= (and d!488961 res!725629) b!1623784))

(declare-fun m!1950709 () Bool)

(assert (=> d!488961 m!1950709))

(assert (=> d!488961 m!1950709))

(declare-fun m!1950711 () Bool)

(assert (=> d!488961 m!1950711))

(declare-fun m!1950713 () Bool)

(assert (=> b!1623784 m!1950713))

(assert (=> b!1623784 m!1949441))

(declare-fun m!1950715 () Bool)

(assert (=> b!1623784 m!1950715))

(assert (=> b!1623144 d!488961))

(declare-fun d!488963 () Bool)

(assert (=> d!488963 (= (list!6976 (prepend!655 (seqFromList!2016 (t!148867 (t!148867 tokens!457))) (h!23191 (t!148867 tokens!457)))) (list!6978 (c!264247 (prepend!655 (seqFromList!2016 (t!148867 (t!148867 tokens!457))) (h!23191 (t!148867 tokens!457))))))))

(declare-fun bs!394677 () Bool)

(assert (= bs!394677 d!488963))

(declare-fun m!1950717 () Bool)

(assert (=> bs!394677 m!1950717))

(assert (=> b!1623144 d!488963))

(declare-fun d!488965 () Bool)

(assert (=> d!488965 (= (seqFromList!2016 (t!148867 (t!148867 tokens!457))) (fromListB!887 (t!148867 (t!148867 tokens!457))))))

(declare-fun bs!394678 () Bool)

(assert (= bs!394678 d!488965))

(declare-fun m!1950719 () Bool)

(assert (=> bs!394678 m!1950719))

(assert (=> b!1623144 d!488965))

(declare-fun d!488967 () Bool)

(assert (=> d!488967 (= (list!6976 lt!585106) (list!6978 (c!264247 lt!585106)))))

(declare-fun bs!394679 () Bool)

(assert (= bs!394679 d!488967))

(declare-fun m!1950721 () Bool)

(assert (=> bs!394679 m!1950721))

(assert (=> b!1623144 d!488967))

(declare-fun d!488969 () Bool)

(assert (=> d!488969 (= (list!6976 (_1!10075 lt!585107)) (list!6976 (prepend!655 (seqFromList!2016 (t!148867 (t!148867 tokens!457))) (h!23191 (t!148867 tokens!457)))))))

(declare-fun lt!585747 () Unit!28773)

(declare-fun choose!9768 (Token!5832 List!17860 BalanceConc!11774) Unit!28773)

(assert (=> d!488969 (= lt!585747 (choose!9768 (h!23191 (t!148867 tokens!457)) (t!148867 (t!148867 tokens!457)) (_1!10075 lt!585107)))))

(declare-fun $colon$colon!325 (List!17860 Token!5832) List!17860)

(assert (=> d!488969 (= (list!6976 (_1!10075 lt!585107)) (list!6976 (seqFromList!2016 ($colon$colon!325 (t!148867 (t!148867 tokens!457)) (h!23191 (t!148867 tokens!457))))))))

(assert (=> d!488969 (= (seqFromListBHdTlConstructive!210 (h!23191 (t!148867 tokens!457)) (t!148867 (t!148867 tokens!457)) (_1!10075 lt!585107)) lt!585747)))

(declare-fun bs!394680 () Bool)

(assert (= bs!394680 d!488969))

(declare-fun m!1950723 () Bool)

(assert (=> bs!394680 m!1950723))

(assert (=> bs!394680 m!1949441))

(assert (=> bs!394680 m!1949437))

(assert (=> bs!394680 m!1949441))

(assert (=> bs!394680 m!1949437))

(assert (=> bs!394680 m!1949439))

(assert (=> bs!394680 m!1949459))

(declare-fun m!1950725 () Bool)

(assert (=> bs!394680 m!1950725))

(declare-fun m!1950727 () Bool)

(assert (=> bs!394680 m!1950727))

(declare-fun m!1950729 () Bool)

(assert (=> bs!394680 m!1950729))

(assert (=> bs!394680 m!1950723))

(assert (=> bs!394680 m!1950727))

(assert (=> b!1623144 d!488969))

(declare-fun d!488971 () Bool)

(declare-fun c!264350 () Bool)

(assert (=> d!488971 (= c!264350 (isEmpty!10817 (++!4721 lt!585118 lt!585109)))))

(declare-fun e!1041441 () Bool)

(assert (=> d!488971 (= (prefixMatch!396 lt!585104 (++!4721 lt!585118 lt!585109)) e!1041441)))

(declare-fun b!1623785 () Bool)

(assert (=> b!1623785 (= e!1041441 (not (lostCause!434 lt!585104)))))

(declare-fun b!1623786 () Bool)

(assert (=> b!1623786 (= e!1041441 (prefixMatch!396 (derivativeStep!1078 lt!585104 (head!3413 (++!4721 lt!585118 lt!585109))) (tail!2354 (++!4721 lt!585118 lt!585109))))))

(assert (= (and d!488971 c!264350) b!1623785))

(assert (= (and d!488971 (not c!264350)) b!1623786))

(assert (=> d!488971 m!1949371))

(declare-fun m!1950731 () Bool)

(assert (=> d!488971 m!1950731))

(assert (=> b!1623785 m!1949875))

(assert (=> b!1623786 m!1949371))

(declare-fun m!1950733 () Bool)

(assert (=> b!1623786 m!1950733))

(assert (=> b!1623786 m!1950733))

(declare-fun m!1950735 () Bool)

(assert (=> b!1623786 m!1950735))

(assert (=> b!1623786 m!1949371))

(declare-fun m!1950737 () Bool)

(assert (=> b!1623786 m!1950737))

(assert (=> b!1623786 m!1950735))

(assert (=> b!1623786 m!1950737))

(declare-fun m!1950739 () Bool)

(assert (=> b!1623786 m!1950739))

(assert (=> b!1623126 d!488971))

(declare-fun b!1623789 () Bool)

(declare-fun res!725631 () Bool)

(declare-fun e!1041443 () Bool)

(assert (=> b!1623789 (=> (not res!725631) (not e!1041443))))

(declare-fun lt!585748 () List!17857)

(assert (=> b!1623789 (= res!725631 (= (size!14252 lt!585748) (+ (size!14252 lt!585118) (size!14252 lt!585109))))))

(declare-fun b!1623787 () Bool)

(declare-fun e!1041442 () List!17857)

(assert (=> b!1623787 (= e!1041442 lt!585109)))

(declare-fun b!1623790 () Bool)

(assert (=> b!1623790 (= e!1041443 (or (not (= lt!585109 Nil!17787)) (= lt!585748 lt!585118)))))

(declare-fun b!1623788 () Bool)

(assert (=> b!1623788 (= e!1041442 (Cons!17787 (h!23188 lt!585118) (++!4721 (t!148864 lt!585118) lt!585109)))))

(declare-fun d!488973 () Bool)

(assert (=> d!488973 e!1041443))

(declare-fun res!725630 () Bool)

(assert (=> d!488973 (=> (not res!725630) (not e!1041443))))

(assert (=> d!488973 (= res!725630 (= (content!2467 lt!585748) ((_ map or) (content!2467 lt!585118) (content!2467 lt!585109))))))

(assert (=> d!488973 (= lt!585748 e!1041442)))

(declare-fun c!264351 () Bool)

(assert (=> d!488973 (= c!264351 ((_ is Nil!17787) lt!585118))))

(assert (=> d!488973 (= (++!4721 lt!585118 lt!585109) lt!585748)))

(assert (= (and d!488973 c!264351) b!1623787))

(assert (= (and d!488973 (not c!264351)) b!1623788))

(assert (= (and d!488973 res!725630) b!1623789))

(assert (= (and b!1623789 res!725631) b!1623790))

(declare-fun m!1950741 () Bool)

(assert (=> b!1623789 m!1950741))

(assert (=> b!1623789 m!1949829))

(declare-fun m!1950743 () Bool)

(assert (=> b!1623789 m!1950743))

(declare-fun m!1950745 () Bool)

(assert (=> b!1623788 m!1950745))

(declare-fun m!1950747 () Bool)

(assert (=> d!488973 m!1950747))

(assert (=> d!488973 m!1950381))

(declare-fun m!1950749 () Bool)

(assert (=> d!488973 m!1950749))

(assert (=> b!1623126 d!488973))

(declare-fun d!488975 () Bool)

(assert (=> d!488975 (= (list!6975 lt!585096) (list!6980 (c!264245 lt!585096)))))

(declare-fun bs!394681 () Bool)

(assert (= bs!394681 d!488975))

(declare-fun m!1950751 () Bool)

(assert (=> bs!394681 m!1950751))

(assert (=> b!1623126 d!488975))

(declare-fun b!1623804 () Bool)

(declare-fun b_free!43783 () Bool)

(declare-fun b_next!44487 () Bool)

(assert (=> b!1623804 (= b_free!43783 (not b_next!44487))))

(declare-fun tp!472348 () Bool)

(declare-fun b_and!115157 () Bool)

(assert (=> b!1623804 (= tp!472348 b_and!115157)))

(declare-fun b_free!43785 () Bool)

(declare-fun b_next!44489 () Bool)

(assert (=> b!1623804 (= b_free!43785 (not b_next!44489))))

(declare-fun t!148903 () Bool)

(declare-fun tb!93263 () Bool)

(assert (=> (and b!1623804 (= (toChars!4419 (transformation!3133 (rule!4959 (h!23191 (t!148867 tokens!457))))) (toChars!4419 (transformation!3133 (rule!4959 (h!23191 (t!148867 tokens!457)))))) t!148903) tb!93263))

(declare-fun result!112456 () Bool)

(assert (= result!112456 result!112424))

(assert (=> d!488857 t!148903))

(declare-fun t!148905 () Bool)

(declare-fun tb!93265 () Bool)

(assert (=> (and b!1623804 (= (toChars!4419 (transformation!3133 (rule!4959 (h!23191 (t!148867 tokens!457))))) (toChars!4419 (transformation!3133 (rule!4959 (h!23191 tokens!457))))) t!148905) tb!93265))

(declare-fun result!112458 () Bool)

(assert (= result!112458 result!112434))

(assert (=> d!488911 t!148905))

(assert (=> b!1623678 t!148905))

(declare-fun tp!472345 () Bool)

(declare-fun b_and!115159 () Bool)

(assert (=> b!1623804 (= tp!472345 (and (=> t!148903 result!112456) (=> t!148905 result!112458) b_and!115159))))

(declare-fun tp!472346 () Bool)

(declare-fun e!1041460 () Bool)

(declare-fun e!1041459 () Bool)

(declare-fun b!1623802 () Bool)

(assert (=> b!1623802 (= e!1041459 (and (inv!21 (value!98963 (h!23191 (t!148867 tokens!457)))) e!1041460 tp!472346))))

(declare-fun tp!472347 () Bool)

(declare-fun e!1041461 () Bool)

(declare-fun b!1623801 () Bool)

(assert (=> b!1623801 (= e!1041461 (and (inv!23174 (h!23191 (t!148867 tokens!457))) e!1041459 tp!472347))))

(declare-fun b!1623803 () Bool)

(declare-fun e!1041456 () Bool)

(declare-fun tp!472349 () Bool)

(assert (=> b!1623803 (= e!1041460 (and tp!472349 (inv!23171 (tag!3411 (rule!4959 (h!23191 (t!148867 tokens!457))))) (inv!23175 (transformation!3133 (rule!4959 (h!23191 (t!148867 tokens!457))))) e!1041456))))

(assert (=> b!1623123 (= tp!472271 e!1041461)))

(assert (=> b!1623804 (= e!1041456 (and tp!472348 tp!472345))))

(assert (= b!1623803 b!1623804))

(assert (= b!1623802 b!1623803))

(assert (= b!1623801 b!1623802))

(assert (= (and b!1623123 ((_ is Cons!17790) (t!148867 tokens!457))) b!1623801))

(declare-fun m!1950753 () Bool)

(assert (=> b!1623802 m!1950753))

(declare-fun m!1950755 () Bool)

(assert (=> b!1623801 m!1950755))

(declare-fun m!1950757 () Bool)

(assert (=> b!1623803 m!1950757))

(declare-fun m!1950759 () Bool)

(assert (=> b!1623803 m!1950759))

(declare-fun b!1623809 () Bool)

(declare-fun e!1041464 () Bool)

(declare-fun tp_is_empty!7273 () Bool)

(declare-fun tp!472352 () Bool)

(assert (=> b!1623809 (= e!1041464 (and tp_is_empty!7273 tp!472352))))

(assert (=> b!1623124 (= tp!472270 e!1041464)))

(assert (= (and b!1623124 ((_ is Cons!17787) (originalCharacters!3947 (h!23191 tokens!457)))) b!1623809))

(declare-fun b!1623820 () Bool)

(declare-fun e!1041467 () Bool)

(assert (=> b!1623820 (= e!1041467 tp_is_empty!7273)))

(assert (=> b!1623131 (= tp!472274 e!1041467)))

(declare-fun b!1623821 () Bool)

(declare-fun tp!472363 () Bool)

(declare-fun tp!472366 () Bool)

(assert (=> b!1623821 (= e!1041467 (and tp!472363 tp!472366))))

(declare-fun b!1623823 () Bool)

(declare-fun tp!472364 () Bool)

(declare-fun tp!472367 () Bool)

(assert (=> b!1623823 (= e!1041467 (and tp!472364 tp!472367))))

(declare-fun b!1623822 () Bool)

(declare-fun tp!472365 () Bool)

(assert (=> b!1623822 (= e!1041467 tp!472365)))

(assert (= (and b!1623131 ((_ is ElementMatch!4461) (regex!3133 (h!23190 rules!1846)))) b!1623820))

(assert (= (and b!1623131 ((_ is Concat!7685) (regex!3133 (h!23190 rules!1846)))) b!1623821))

(assert (= (and b!1623131 ((_ is Star!4461) (regex!3133 (h!23190 rules!1846)))) b!1623822))

(assert (= (and b!1623131 ((_ is Union!4461) (regex!3133 (h!23190 rules!1846)))) b!1623823))

(declare-fun b!1623824 () Bool)

(declare-fun e!1041468 () Bool)

(assert (=> b!1623824 (= e!1041468 tp_is_empty!7273)))

(assert (=> b!1623132 (= tp!472273 e!1041468)))

(declare-fun b!1623825 () Bool)

(declare-fun tp!472368 () Bool)

(declare-fun tp!472371 () Bool)

(assert (=> b!1623825 (= e!1041468 (and tp!472368 tp!472371))))

(declare-fun b!1623827 () Bool)

(declare-fun tp!472369 () Bool)

(declare-fun tp!472372 () Bool)

(assert (=> b!1623827 (= e!1041468 (and tp!472369 tp!472372))))

(declare-fun b!1623826 () Bool)

(declare-fun tp!472370 () Bool)

(assert (=> b!1623826 (= e!1041468 tp!472370)))

(assert (= (and b!1623132 ((_ is ElementMatch!4461) (regex!3133 (rule!4959 (h!23191 tokens!457))))) b!1623824))

(assert (= (and b!1623132 ((_ is Concat!7685) (regex!3133 (rule!4959 (h!23191 tokens!457))))) b!1623825))

(assert (= (and b!1623132 ((_ is Star!4461) (regex!3133 (rule!4959 (h!23191 tokens!457))))) b!1623826))

(assert (= (and b!1623132 ((_ is Union!4461) (regex!3133 (rule!4959 (h!23191 tokens!457))))) b!1623827))

(declare-fun b!1623838 () Bool)

(declare-fun b_free!43787 () Bool)

(declare-fun b_next!44491 () Bool)

(assert (=> b!1623838 (= b_free!43787 (not b_next!44491))))

(declare-fun tp!472384 () Bool)

(declare-fun b_and!115161 () Bool)

(assert (=> b!1623838 (= tp!472384 b_and!115161)))

(declare-fun b_free!43789 () Bool)

(declare-fun b_next!44493 () Bool)

(assert (=> b!1623838 (= b_free!43789 (not b_next!44493))))

(declare-fun tb!93267 () Bool)

(declare-fun t!148907 () Bool)

(assert (=> (and b!1623838 (= (toChars!4419 (transformation!3133 (h!23190 (t!148866 rules!1846)))) (toChars!4419 (transformation!3133 (rule!4959 (h!23191 (t!148867 tokens!457)))))) t!148907) tb!93267))

(declare-fun result!112466 () Bool)

(assert (= result!112466 result!112424))

(assert (=> d!488857 t!148907))

(declare-fun t!148909 () Bool)

(declare-fun tb!93269 () Bool)

(assert (=> (and b!1623838 (= (toChars!4419 (transformation!3133 (h!23190 (t!148866 rules!1846)))) (toChars!4419 (transformation!3133 (rule!4959 (h!23191 tokens!457))))) t!148909) tb!93269))

(declare-fun result!112468 () Bool)

(assert (= result!112468 result!112434))

(assert (=> d!488911 t!148909))

(assert (=> b!1623678 t!148909))

(declare-fun b_and!115163 () Bool)

(declare-fun tp!472381 () Bool)

(assert (=> b!1623838 (= tp!472381 (and (=> t!148907 result!112466) (=> t!148909 result!112468) b_and!115163))))

(declare-fun e!1041480 () Bool)

(assert (=> b!1623838 (= e!1041480 (and tp!472384 tp!472381))))

(declare-fun e!1041477 () Bool)

(declare-fun b!1623837 () Bool)

(declare-fun tp!472382 () Bool)

(assert (=> b!1623837 (= e!1041477 (and tp!472382 (inv!23171 (tag!3411 (h!23190 (t!148866 rules!1846)))) (inv!23175 (transformation!3133 (h!23190 (t!148866 rules!1846)))) e!1041480))))

(declare-fun b!1623836 () Bool)

(declare-fun e!1041478 () Bool)

(declare-fun tp!472383 () Bool)

(assert (=> b!1623836 (= e!1041478 (and e!1041477 tp!472383))))

(assert (=> b!1623125 (= tp!472276 e!1041478)))

(assert (= b!1623837 b!1623838))

(assert (= b!1623836 b!1623837))

(assert (= (and b!1623125 ((_ is Cons!17789) (t!148866 rules!1846))) b!1623836))

(declare-fun m!1950761 () Bool)

(assert (=> b!1623837 m!1950761))

(declare-fun m!1950763 () Bool)

(assert (=> b!1623837 m!1950763))

(declare-fun b_lambda!51171 () Bool)

(assert (= b_lambda!51161 (or (and b!1623136 b_free!43769) (and b!1623143 b_free!43773 (= (toChars!4419 (transformation!3133 (h!23190 rules!1846))) (toChars!4419 (transformation!3133 (rule!4959 (h!23191 tokens!457)))))) (and b!1623804 b_free!43785 (= (toChars!4419 (transformation!3133 (rule!4959 (h!23191 (t!148867 tokens!457))))) (toChars!4419 (transformation!3133 (rule!4959 (h!23191 tokens!457)))))) (and b!1623838 b_free!43789 (= (toChars!4419 (transformation!3133 (h!23190 (t!148866 rules!1846)))) (toChars!4419 (transformation!3133 (rule!4959 (h!23191 tokens!457)))))) b_lambda!51171)))

(declare-fun b_lambda!51173 () Bool)

(assert (= b_lambda!51157 (or (and b!1623136 b_free!43769 (= (toChars!4419 (transformation!3133 (rule!4959 (h!23191 tokens!457)))) (toChars!4419 (transformation!3133 (rule!4959 (h!23191 (t!148867 tokens!457))))))) (and b!1623143 b_free!43773 (= (toChars!4419 (transformation!3133 (h!23190 rules!1846))) (toChars!4419 (transformation!3133 (rule!4959 (h!23191 (t!148867 tokens!457))))))) (and b!1623804 b_free!43785) (and b!1623838 b_free!43789 (= (toChars!4419 (transformation!3133 (h!23190 (t!148866 rules!1846)))) (toChars!4419 (transformation!3133 (rule!4959 (h!23191 (t!148867 tokens!457))))))) b_lambda!51173)))

(declare-fun b_lambda!51175 () Bool)

(assert (= b_lambda!51163 (or (and b!1623136 b_free!43769) (and b!1623143 b_free!43773 (= (toChars!4419 (transformation!3133 (h!23190 rules!1846))) (toChars!4419 (transformation!3133 (rule!4959 (h!23191 tokens!457)))))) (and b!1623804 b_free!43785 (= (toChars!4419 (transformation!3133 (rule!4959 (h!23191 (t!148867 tokens!457))))) (toChars!4419 (transformation!3133 (rule!4959 (h!23191 tokens!457)))))) (and b!1623838 b_free!43789 (= (toChars!4419 (transformation!3133 (h!23190 (t!148866 rules!1846)))) (toChars!4419 (transformation!3133 (rule!4959 (h!23191 tokens!457)))))) b_lambda!51175)))

(check-sat (not b!1623357) (not d!488901) (not d!488973) (not b!1623822) (not b_next!44489) (not d!488831) (not b!1623580) (not b!1623471) (not d!488921) (not b!1623504) (not d!488911) (not b!1623649) (not b!1623385) b_and!115163 (not b!1623660) (not bm!105177) (not d!488969) (not b!1623640) (not b!1623351) (not b!1623615) (not b!1623538) (not b!1623556) (not d!488903) (not b!1623381) (not b!1623353) (not d!488899) tp_is_empty!7273 (not bm!105180) (not d!488933) (not d!488961) (not b!1623356) (not b!1623823) (not b!1623786) (not b_next!44487) (not d!488825) (not b!1623431) (not b!1623641) (not b_next!44477) (not b_next!44493) (not b!1623801) (not b!1623639) (not b!1623780) (not b!1623678) (not d!488947) (not b!1623784) (not d!488837) (not b!1623779) (not b!1623645) (not d!488795) b_and!115121 (not b!1623375) (not d!488781) (not d!488907) (not b!1623550) (not b!1623513) (not tb!93243) (not b!1623651) (not b!1623622) (not b!1623510) (not d!488963) (not b!1623446) (not b!1623647) (not b!1623825) (not b!1623802) (not d!488927) (not b!1623642) (not b!1623536) (not d!488791) (not b!1623518) (not d!488939) (not b!1623650) (not b!1623690) (not d!488925) (not b!1623614) (not b!1623539) (not b!1623430) (not b!1623360) (not b_next!44471) (not b!1623581) (not b!1623443) (not d!488915) b_and!115117 (not b!1623652) (not b!1623648) (not b!1623382) (not d!488967) (not d!488857) (not b!1623613) (not b!1623469) (not d!488799) (not b!1623324) (not d!488845) (not b!1623803) (not b!1623644) (not b_lambda!51171) (not b!1623654) (not d!488829) (not b!1623442) (not b!1623619) (not b!1623821) (not b!1623386) (not d!488785) (not bm!105187) (not d!488841) (not b!1623778) (not b!1623827) (not d!488975) b_and!115159 (not b!1623362) (not b!1623315) (not d!488777) (not b_next!44475) (not b!1623582) (not b!1623348) (not d!488843) (not b!1623359) (not b!1623354) (not d!488853) (not b!1623358) (not d!488913) (not b!1623668) (not b!1623837) (not d!488923) (not d!488931) (not b!1623836) (not d!488909) (not bm!105186) (not b!1623361) b_and!115145 b_and!115161 (not d!488917) (not b!1623826) (not b!1623314) (not b!1623616) (not b!1623789) (not b!1623788) (not b!1623785) (not b!1623441) (not b_lambda!51175) (not b!1623352) (not b!1623611) (not b_next!44473) b_and!115157 (not d!488905) (not b_next!44491) (not d!488941) (not d!488949) b_and!115147 (not b!1623620) (not d!488937) (not b!1623679) (not tb!93251) (not d!488943) (not d!488835) (not d!488929) (not d!488775) (not d!488783) (not d!488779) (not d!488801) (not b!1623363) (not d!488859) (not d!488965) (not b!1623509) (not b!1623374) (not b!1623347) (not b!1623694) (not b!1623612) (not d!488823) (not d!488971) (not b!1623502) (not d!488797) (not b!1623692) (not b!1623653) (not b!1623514) (not b!1623537) (not b_lambda!51173) (not b!1623472) (not b!1623470) (not b!1623349) (not b!1623673) (not d!488713) (not b!1623670) (not b!1623350) (not d!488849) (not b!1623643) (not b!1623809) (not bm!105176))
(check-sat (not b_next!44489) b_and!115163 b_and!115121 (not b_next!44471) b_and!115117 (not b_next!44487) (not b_next!44493) (not b_next!44477) b_and!115159 (not b_next!44475) b_and!115145 b_and!115161 (not b_next!44473) b_and!115157 (not b_next!44491) b_and!115147)
