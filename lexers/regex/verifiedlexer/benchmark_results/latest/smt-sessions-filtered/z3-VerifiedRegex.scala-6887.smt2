; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!362756 () Bool)

(assert start!362756)

(declare-fun b!3866854 () Bool)

(declare-fun b_free!104245 () Bool)

(declare-fun b_next!104949 () Bool)

(assert (=> b!3866854 (= b_free!104245 (not b_next!104949))))

(declare-fun tp!1172429 () Bool)

(declare-fun b_and!289707 () Bool)

(assert (=> b!3866854 (= tp!1172429 b_and!289707)))

(declare-fun b_free!104247 () Bool)

(declare-fun b_next!104951 () Bool)

(assert (=> b!3866854 (= b_free!104247 (not b_next!104951))))

(declare-fun tp!1172421 () Bool)

(declare-fun b_and!289709 () Bool)

(assert (=> b!3866854 (= tp!1172421 b_and!289709)))

(declare-fun b!3866847 () Bool)

(declare-fun b_free!104249 () Bool)

(declare-fun b_next!104953 () Bool)

(assert (=> b!3866847 (= b_free!104249 (not b_next!104953))))

(declare-fun tp!1172419 () Bool)

(declare-fun b_and!289711 () Bool)

(assert (=> b!3866847 (= tp!1172419 b_and!289711)))

(declare-fun b_free!104251 () Bool)

(declare-fun b_next!104955 () Bool)

(assert (=> b!3866847 (= b_free!104251 (not b_next!104955))))

(declare-fun tp!1172428 () Bool)

(declare-fun b_and!289713 () Bool)

(assert (=> b!3866847 (= tp!1172428 b_and!289713)))

(declare-fun b!3866858 () Bool)

(declare-fun b_free!104253 () Bool)

(declare-fun b_next!104957 () Bool)

(assert (=> b!3866858 (= b_free!104253 (not b_next!104957))))

(declare-fun tp!1172422 () Bool)

(declare-fun b_and!289715 () Bool)

(assert (=> b!3866858 (= tp!1172422 b_and!289715)))

(declare-fun b_free!104255 () Bool)

(declare-fun b_next!104959 () Bool)

(assert (=> b!3866858 (= b_free!104255 (not b_next!104959))))

(declare-fun tp!1172426 () Bool)

(declare-fun b_and!289717 () Bool)

(assert (=> b!3866858 (= tp!1172426 b_and!289717)))

(declare-fun b!3866823 () Bool)

(declare-fun e!2391266 () Bool)

(assert (=> b!3866823 (= e!2391266 false)))

(declare-fun b!3866824 () Bool)

(declare-datatypes ((Unit!58780 0))(
  ( (Unit!58781) )
))
(declare-fun e!2391241 () Unit!58780)

(declare-fun Unit!58782 () Unit!58780)

(assert (=> b!3866824 (= e!2391241 Unit!58782)))

(declare-fun lt!1344707 () Int)

(declare-datatypes ((C!22720 0))(
  ( (C!22721 (val!13454 Int)) )
))
(declare-datatypes ((List!41174 0))(
  ( (Nil!41050) (Cons!41050 (h!46470 C!22720) (t!314049 List!41174)) )
))
(declare-fun lt!1344725 () List!41174)

(declare-fun size!30861 (List!41174) Int)

(assert (=> b!3866824 (= lt!1344707 (size!30861 lt!1344725))))

(declare-fun lt!1344719 () List!41174)

(declare-datatypes ((LexerInterface!5951 0))(
  ( (LexerInterfaceExt!5948 (__x!25401 Int)) (Lexer!5949) )
))
(declare-fun thiss!20629 () LexerInterface!5951)

(declare-datatypes ((IArray!25151 0))(
  ( (IArray!25152 (innerList!12633 List!41174)) )
))
(declare-datatypes ((Conc!12573 0))(
  ( (Node!12573 (left!31572 Conc!12573) (right!31902 Conc!12573) (csize!25376 Int) (cheight!12784 Int)) (Leaf!19461 (xs!15879 IArray!25151) (csize!25377 Int)) (Empty!12573) )
))
(declare-datatypes ((BalanceConc!24740 0))(
  ( (BalanceConc!24741 (c!673004 Conc!12573)) )
))
(declare-datatypes ((List!41175 0))(
  ( (Nil!41051) (Cons!41051 (h!46471 (_ BitVec 16)) (t!314050 List!41175)) )
))
(declare-datatypes ((TokenValue!6592 0))(
  ( (FloatLiteralValue!13184 (text!46589 List!41175)) (TokenValueExt!6591 (__x!25402 Int)) (Broken!32960 (value!201925 List!41175)) (Object!6715) (End!6592) (Def!6592) (Underscore!6592) (Match!6592) (Else!6592) (Error!6592) (Case!6592) (If!6592) (Extends!6592) (Abstract!6592) (Class!6592) (Val!6592) (DelimiterValue!13184 (del!6652 List!41175)) (KeywordValue!6598 (value!201926 List!41175)) (CommentValue!13184 (value!201927 List!41175)) (WhitespaceValue!13184 (value!201928 List!41175)) (IndentationValue!6592 (value!201929 List!41175)) (String!46677) (Int32!6592) (Broken!32961 (value!201930 List!41175)) (Boolean!6593) (Unit!58783) (OperatorValue!6595 (op!6652 List!41175)) (IdentifierValue!13184 (value!201931 List!41175)) (IdentifierValue!13185 (value!201932 List!41175)) (WhitespaceValue!13185 (value!201933 List!41175)) (True!13184) (False!13184) (Broken!32962 (value!201934 List!41175)) (Broken!32963 (value!201935 List!41175)) (True!13185) (RightBrace!6592) (RightBracket!6592) (Colon!6592) (Null!6592) (Comma!6592) (LeftBracket!6592) (False!13185) (LeftBrace!6592) (ImaginaryLiteralValue!6592 (text!46590 List!41175)) (StringLiteralValue!19776 (value!201936 List!41175)) (EOFValue!6592 (value!201937 List!41175)) (IdentValue!6592 (value!201938 List!41175)) (DelimiterValue!13185 (value!201939 List!41175)) (DedentValue!6592 (value!201940 List!41175)) (NewLineValue!6592 (value!201941 List!41175)) (IntegerValue!19776 (value!201942 (_ BitVec 32)) (text!46591 List!41175)) (IntegerValue!19777 (value!201943 Int) (text!46592 List!41175)) (Times!6592) (Or!6592) (Equal!6592) (Minus!6592) (Broken!32964 (value!201944 List!41175)) (And!6592) (Div!6592) (LessEqual!6592) (Mod!6592) (Concat!17859) (Not!6592) (Plus!6592) (SpaceValue!6592 (value!201945 List!41175)) (IntegerValue!19778 (value!201946 Int) (text!46593 List!41175)) (StringLiteralValue!19777 (text!46594 List!41175)) (FloatLiteralValue!13185 (text!46595 List!41175)) (BytesLiteralValue!6592 (value!201947 List!41175)) (CommentValue!13185 (value!201948 List!41175)) (StringLiteralValue!19778 (value!201949 List!41175)) (ErrorTokenValue!6592 (msg!6653 List!41175)) )
))
(declare-datatypes ((Regex!11267 0))(
  ( (ElementMatch!11267 (c!673005 C!22720)) (Concat!17860 (regOne!23046 Regex!11267) (regTwo!23046 Regex!11267)) (EmptyExpr!11267) (Star!11267 (reg!11596 Regex!11267)) (EmptyLang!11267) (Union!11267 (regOne!23047 Regex!11267) (regTwo!23047 Regex!11267)) )
))
(declare-datatypes ((String!46678 0))(
  ( (String!46679 (value!201950 String)) )
))
(declare-datatypes ((TokenValueInjection!12612 0))(
  ( (TokenValueInjection!12613 (toValue!8790 Int) (toChars!8649 Int)) )
))
(declare-datatypes ((Rule!12524 0))(
  ( (Rule!12525 (regex!6362 Regex!11267) (tag!7222 String!46678) (isSeparator!6362 Bool) (transformation!6362 TokenValueInjection!12612)) )
))
(declare-datatypes ((List!41176 0))(
  ( (Nil!41052) (Cons!41052 (h!46472 Rule!12524) (t!314051 List!41176)) )
))
(declare-fun rules!2768 () List!41176)

(declare-fun lt!1344715 () Unit!58780)

(declare-datatypes ((Token!11862 0))(
  ( (Token!11863 (value!201951 TokenValue!6592) (rule!9242 Rule!12524) (size!30862 Int) (originalCharacters!6962 List!41174)) )
))
(declare-datatypes ((tuple2!40266 0))(
  ( (tuple2!40267 (_1!23267 Token!11862) (_2!23267 List!41174)) )
))
(declare-datatypes ((Option!8780 0))(
  ( (None!8779) (Some!8779 (v!39077 tuple2!40266)) )
))
(declare-fun lt!1344716 () Option!8780)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1235 (LexerInterface!5951 List!41176 List!41174 List!41174 List!41174 Rule!12524) Unit!58780)

(assert (=> b!3866824 (= lt!1344715 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1235 thiss!20629 rules!2768 lt!1344719 lt!1344725 (_2!23267 (v!39077 lt!1344716)) (rule!9242 (_1!23267 (v!39077 lt!1344716)))))))

(declare-fun lt!1344718 () TokenValue!6592)

(declare-fun lt!1344733 () Int)

(declare-fun maxPrefixOneRule!2337 (LexerInterface!5951 Rule!12524 List!41174) Option!8780)

(assert (=> b!3866824 (= (maxPrefixOneRule!2337 thiss!20629 (rule!9242 (_1!23267 (v!39077 lt!1344716))) lt!1344725) (Some!8779 (tuple2!40267 (Token!11863 lt!1344718 (rule!9242 (_1!23267 (v!39077 lt!1344716))) lt!1344733 lt!1344719) (_2!23267 (v!39077 lt!1344716)))))))

(declare-fun lt!1344720 () tuple2!40266)

(declare-fun get!13583 (Option!8780) tuple2!40266)

(assert (=> b!3866824 (= lt!1344720 (get!13583 lt!1344716))))

(declare-fun c!673001 () Bool)

(declare-fun lt!1344704 () Int)

(assert (=> b!3866824 (= c!673001 (< (size!30861 (_2!23267 lt!1344720)) lt!1344704))))

(declare-fun lt!1344726 () Unit!58780)

(declare-fun e!2391245 () Unit!58780)

(assert (=> b!3866824 (= lt!1344726 e!2391245)))

(assert (=> b!3866824 false))

(declare-fun b!3866825 () Bool)

(declare-fun e!2391270 () Bool)

(declare-fun e!2391244 () Bool)

(assert (=> b!3866825 (= e!2391270 e!2391244)))

(declare-fun res!1566006 () Bool)

(assert (=> b!3866825 (=> (not res!1566006) (not e!2391244))))

(get-info :version)

(assert (=> b!3866825 (= res!1566006 ((_ is Some!8779) lt!1344716))))

(declare-fun maxPrefix!3255 (LexerInterface!5951 List!41176 List!41174) Option!8780)

(assert (=> b!3866825 (= lt!1344716 (maxPrefix!3255 thiss!20629 rules!2768 lt!1344725))))

(declare-fun b!3866826 () Bool)

(declare-fun e!2391247 () Unit!58780)

(declare-fun Unit!58784 () Unit!58780)

(assert (=> b!3866826 (= e!2391247 Unit!58784)))

(declare-fun lt!1344710 () Unit!58780)

(declare-fun prefix!426 () List!41174)

(declare-fun suffix!1176 () List!41174)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2324 (List!41174 List!41174) Unit!58780)

(assert (=> b!3866826 (= lt!1344710 (lemmaConcatTwoListThenFirstIsPrefix!2324 prefix!426 suffix!1176))))

(declare-fun isPrefix!3461 (List!41174 List!41174) Bool)

(assert (=> b!3866826 (isPrefix!3461 prefix!426 lt!1344725)))

(declare-fun lt!1344717 () Unit!58780)

(declare-fun lemmaIsPrefixSameLengthThenSameList!713 (List!41174 List!41174 List!41174) Unit!58780)

(assert (=> b!3866826 (= lt!1344717 (lemmaIsPrefixSameLengthThenSameList!713 lt!1344719 prefix!426 lt!1344725))))

(assert (=> b!3866826 (= lt!1344719 prefix!426)))

(declare-fun lt!1344703 () Unit!58780)

(declare-fun lemmaSamePrefixThenSameSuffix!1682 (List!41174 List!41174 List!41174 List!41174 List!41174) Unit!58780)

(assert (=> b!3866826 (= lt!1344703 (lemmaSamePrefixThenSameSuffix!1682 lt!1344719 (_2!23267 (v!39077 lt!1344716)) prefix!426 suffix!1176 lt!1344725))))

(assert (=> b!3866826 false))

(declare-fun b!3866827 () Bool)

(declare-fun e!2391262 () Bool)

(assert (=> b!3866827 (= e!2391262 (= (size!30862 (_1!23267 (v!39077 lt!1344716))) (size!30861 (originalCharacters!6962 (_1!23267 (v!39077 lt!1344716))))))))

(declare-fun e!2391240 () Bool)

(declare-fun b!3866828 () Bool)

(declare-fun tp!1172425 () Bool)

(declare-datatypes ((List!41177 0))(
  ( (Nil!41053) (Cons!41053 (h!46473 Token!11862) (t!314052 List!41177)) )
))
(declare-fun prefixTokens!80 () List!41177)

(declare-fun e!2391242 () Bool)

(declare-fun inv!55208 (String!46678) Bool)

(declare-fun inv!55211 (TokenValueInjection!12612) Bool)

(assert (=> b!3866828 (= e!2391242 (and tp!1172425 (inv!55208 (tag!7222 (rule!9242 (h!46473 prefixTokens!80)))) (inv!55211 (transformation!6362 (rule!9242 (h!46473 prefixTokens!80)))) e!2391240))))

(declare-fun b!3866829 () Bool)

(declare-fun e!2391263 () Bool)

(assert (=> b!3866829 (= e!2391263 true)))

(declare-fun lt!1344721 () Int)

(assert (=> b!3866829 (= lt!1344721 (size!30861 prefix!426))))

(assert (=> b!3866829 (isPrefix!3461 lt!1344719 prefix!426)))

(declare-fun lt!1344732 () Unit!58780)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!211 (List!41174 List!41174 List!41174) Unit!58780)

(assert (=> b!3866829 (= lt!1344732 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!211 prefix!426 lt!1344719 lt!1344725))))

(assert (=> b!3866829 (isPrefix!3461 prefix!426 lt!1344725)))

(declare-fun lt!1344706 () Unit!58780)

(assert (=> b!3866829 (= lt!1344706 (lemmaConcatTwoListThenFirstIsPrefix!2324 prefix!426 suffix!1176))))

(declare-fun b!3866830 () Bool)

(declare-fun res!1566007 () Bool)

(assert (=> b!3866830 (=> res!1566007 e!2391263)))

(declare-fun head!8172 (List!41177) Token!11862)

(assert (=> b!3866830 (= res!1566007 (not (= (head!8172 prefixTokens!80) (_1!23267 (v!39077 lt!1344716)))))))

(declare-fun b!3866831 () Bool)

(declare-fun c!673000 () Bool)

(declare-fun lt!1344705 () List!41177)

(declare-fun isEmpty!24340 (List!41177) Bool)

(assert (=> b!3866831 (= c!673000 (isEmpty!24340 lt!1344705))))

(declare-fun tail!5889 (List!41177) List!41177)

(assert (=> b!3866831 (= lt!1344705 (tail!5889 prefixTokens!80))))

(declare-fun e!2391265 () Unit!58780)

(assert (=> b!3866831 (= e!2391245 e!2391265)))

(declare-fun b!3866832 () Bool)

(declare-fun e!2391257 () Bool)

(assert (=> b!3866832 (= e!2391257 false)))

(declare-fun b!3866833 () Bool)

(declare-fun Unit!58785 () Unit!58780)

(assert (=> b!3866833 (= e!2391247 Unit!58785)))

(declare-fun b!3866834 () Bool)

(declare-fun res!1566004 () Bool)

(declare-fun e!2391256 () Bool)

(assert (=> b!3866834 (=> res!1566004 e!2391256)))

(declare-datatypes ((tuple2!40268 0))(
  ( (tuple2!40269 (_1!23268 List!41177) (_2!23268 List!41174)) )
))
(declare-fun lt!1344712 () tuple2!40268)

(declare-fun lt!1344714 () tuple2!40268)

(declare-fun ++!10481 (List!41177 List!41177) List!41177)

(assert (=> b!3866834 (= res!1566004 (not (= lt!1344714 (tuple2!40269 (++!10481 (Cons!41053 (_1!23267 (v!39077 lt!1344716)) Nil!41053) (_1!23268 lt!1344712)) (_2!23268 lt!1344712)))))))

(declare-fun e!2391248 () Bool)

(declare-fun tp!1172415 () Bool)

(declare-fun b!3866835 () Bool)

(declare-fun e!2391258 () Bool)

(declare-fun inv!55212 (Token!11862) Bool)

(assert (=> b!3866835 (= e!2391258 (and (inv!55212 (h!46473 prefixTokens!80)) e!2391248 tp!1172415))))

(declare-fun b!3866836 () Bool)

(assert (=> b!3866836 (= e!2391256 e!2391263)))

(declare-fun res!1566013 () Bool)

(assert (=> b!3866836 (=> res!1566013 e!2391263)))

(declare-fun lt!1344713 () Int)

(assert (=> b!3866836 (= res!1566013 (<= lt!1344713 lt!1344704))))

(declare-fun lt!1344723 () Unit!58780)

(assert (=> b!3866836 (= lt!1344723 e!2391247)))

(declare-fun c!673003 () Bool)

(assert (=> b!3866836 (= c!673003 (= lt!1344713 lt!1344704))))

(declare-fun lt!1344709 () Unit!58780)

(assert (=> b!3866836 (= lt!1344709 e!2391241)))

(declare-fun c!673002 () Bool)

(assert (=> b!3866836 (= c!673002 (< lt!1344713 lt!1344704))))

(assert (=> b!3866836 (= lt!1344704 (size!30861 suffix!1176))))

(assert (=> b!3866836 (= lt!1344713 (size!30861 (_2!23267 (v!39077 lt!1344716))))))

(declare-fun e!2391246 () Bool)

(declare-fun tp!1172417 () Bool)

(declare-fun b!3866837 () Bool)

(declare-fun e!2391250 () Bool)

(declare-fun suffixTokens!72 () List!41177)

(assert (=> b!3866837 (= e!2391250 (and (inv!55212 (h!46473 suffixTokens!72)) e!2391246 tp!1172417))))

(declare-fun b!3866838 () Bool)

(declare-fun tp!1172416 () Bool)

(declare-fun inv!21 (TokenValue!6592) Bool)

(assert (=> b!3866838 (= e!2391248 (and (inv!21 (value!201951 (h!46473 prefixTokens!80))) e!2391242 tp!1172416))))

(declare-fun b!3866839 () Bool)

(declare-fun res!1566014 () Bool)

(declare-fun e!2391268 () Bool)

(assert (=> b!3866839 (=> (not res!1566014) (not e!2391268))))

(declare-fun isEmpty!24341 (List!41174) Bool)

(assert (=> b!3866839 (= res!1566014 (not (isEmpty!24341 prefix!426)))))

(declare-fun b!3866840 () Bool)

(declare-fun e!2391249 () Bool)

(declare-fun tp_is_empty!19505 () Bool)

(declare-fun tp!1172430 () Bool)

(assert (=> b!3866840 (= e!2391249 (and tp_is_empty!19505 tp!1172430))))

(declare-fun b!3866841 () Bool)

(declare-fun res!1566009 () Bool)

(assert (=> b!3866841 (=> (not res!1566009) (not e!2391268))))

(declare-fun isEmpty!24342 (List!41176) Bool)

(assert (=> b!3866841 (= res!1566009 (not (isEmpty!24342 rules!2768)))))

(declare-fun b!3866842 () Bool)

(declare-fun res!1566003 () Bool)

(assert (=> b!3866842 (=> res!1566003 e!2391256)))

(assert (=> b!3866842 (= res!1566003 (or (not (= lt!1344712 (tuple2!40269 (_1!23268 lt!1344712) (_2!23268 lt!1344712)))) (= (_2!23267 (v!39077 lt!1344716)) suffix!1176)))))

(declare-fun b!3866843 () Bool)

(declare-fun res!1566012 () Bool)

(assert (=> b!3866843 (=> (not res!1566012) (not e!2391268))))

(declare-fun rulesInvariant!5294 (LexerInterface!5951 List!41176) Bool)

(assert (=> b!3866843 (= res!1566012 (rulesInvariant!5294 thiss!20629 rules!2768))))

(declare-fun b!3866844 () Bool)

(declare-fun Unit!58786 () Unit!58780)

(assert (=> b!3866844 (= e!2391245 Unit!58786)))

(declare-fun b!3866845 () Bool)

(declare-fun e!2391259 () Bool)

(declare-fun tp!1172423 () Bool)

(assert (=> b!3866845 (= e!2391259 (and tp_is_empty!19505 tp!1172423))))

(declare-fun b!3866846 () Bool)

(declare-fun e!2391254 () Bool)

(assert (=> b!3866846 (= e!2391268 e!2391254)))

(declare-fun res!1566011 () Bool)

(assert (=> b!3866846 (=> (not res!1566011) (not e!2391254))))

(declare-fun lt!1344711 () List!41177)

(declare-fun suffixResult!91 () List!41174)

(assert (=> b!3866846 (= res!1566011 (= lt!1344714 (tuple2!40269 lt!1344711 suffixResult!91)))))

(declare-fun lexList!1719 (LexerInterface!5951 List!41176 List!41174) tuple2!40268)

(assert (=> b!3866846 (= lt!1344714 (lexList!1719 thiss!20629 rules!2768 lt!1344725))))

(assert (=> b!3866846 (= lt!1344711 (++!10481 prefixTokens!80 suffixTokens!72))))

(declare-fun ++!10482 (List!41174 List!41174) List!41174)

(assert (=> b!3866846 (= lt!1344725 (++!10482 prefix!426 suffix!1176))))

(declare-fun e!2391255 () Bool)

(assert (=> b!3866847 (= e!2391255 (and tp!1172419 tp!1172428))))

(declare-fun b!3866848 () Bool)

(declare-fun e!2391251 () Bool)

(declare-fun tp!1172418 () Bool)

(assert (=> b!3866848 (= e!2391251 (and tp_is_empty!19505 tp!1172418))))

(declare-fun b!3866849 () Bool)

(declare-fun Unit!58787 () Unit!58780)

(assert (=> b!3866849 (= e!2391265 Unit!58787)))

(declare-fun lt!1344702 () Unit!58780)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!22 (LexerInterface!5951 List!41176 List!41174 List!41174 List!41177 List!41174 List!41177) Unit!58780)

(assert (=> b!3866849 (= lt!1344702 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!22 thiss!20629 rules!2768 suffix!1176 (_2!23267 lt!1344720) suffixTokens!72 suffixResult!91 lt!1344705))))

(declare-fun res!1566002 () Bool)

(declare-fun call!282660 () tuple2!40268)

(assert (=> b!3866849 (= res!1566002 (not (= call!282660 (tuple2!40269 (++!10481 lt!1344705 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3866849 (=> (not res!1566002) (not e!2391266))))

(assert (=> b!3866849 e!2391266))

(declare-fun b!3866850 () Bool)

(assert (=> b!3866850 (= e!2391254 e!2391270)))

(declare-fun res!1566008 () Bool)

(assert (=> b!3866850 (=> (not res!1566008) (not e!2391270))))

(declare-fun lt!1344722 () tuple2!40268)

(assert (=> b!3866850 (= res!1566008 (= (lexList!1719 thiss!20629 rules!2768 suffix!1176) lt!1344722))))

(assert (=> b!3866850 (= lt!1344722 (tuple2!40269 suffixTokens!72 suffixResult!91))))

(declare-fun b!3866851 () Bool)

(declare-fun e!2391253 () Bool)

(declare-fun tp!1172427 () Bool)

(assert (=> b!3866851 (= e!2391246 (and (inv!21 (value!201951 (h!46473 suffixTokens!72))) e!2391253 tp!1172427))))

(declare-fun e!2391252 () Bool)

(declare-fun b!3866852 () Bool)

(declare-fun tp!1172424 () Bool)

(assert (=> b!3866852 (= e!2391253 (and tp!1172424 (inv!55208 (tag!7222 (rule!9242 (h!46473 suffixTokens!72)))) (inv!55211 (transformation!6362 (rule!9242 (h!46473 suffixTokens!72)))) e!2391252))))

(declare-fun b!3866853 () Bool)

(declare-fun Unit!58788 () Unit!58780)

(assert (=> b!3866853 (= e!2391265 Unit!58788)))

(declare-fun lt!1344730 () Unit!58780)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!446 (List!41174 List!41174 List!41174 List!41174) Unit!58780)

(assert (=> b!3866853 (= lt!1344730 (lemmaConcatSameAndSameSizesThenSameLists!446 lt!1344719 (_2!23267 (v!39077 lt!1344716)) lt!1344719 (_2!23267 lt!1344720)))))

(assert (=> b!3866853 (= (_2!23267 (v!39077 lt!1344716)) (_2!23267 lt!1344720))))

(declare-fun lt!1344708 () Unit!58780)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!22 (LexerInterface!5951 List!41176 List!41174 List!41174 List!41177 List!41174) Unit!58780)

(assert (=> b!3866853 (= lt!1344708 (lemmaLexWithSmallerInputCannotProduceSameResults!22 thiss!20629 rules!2768 suffix!1176 (_2!23267 lt!1344720) suffixTokens!72 suffixResult!91))))

(declare-fun res!1566015 () Bool)

(assert (=> b!3866853 (= res!1566015 (not (= call!282660 lt!1344722)))))

(assert (=> b!3866853 (=> (not res!1566015) (not e!2391257))))

(assert (=> b!3866853 e!2391257))

(assert (=> b!3866854 (= e!2391252 (and tp!1172429 tp!1172421))))

(declare-fun bm!282655 () Bool)

(assert (=> bm!282655 (= call!282660 (lexList!1719 thiss!20629 rules!2768 (_2!23267 lt!1344720)))))

(declare-fun res!1566001 () Bool)

(assert (=> start!362756 (=> (not res!1566001) (not e!2391268))))

(assert (=> start!362756 (= res!1566001 ((_ is Lexer!5949) thiss!20629))))

(assert (=> start!362756 e!2391268))

(assert (=> start!362756 e!2391259))

(assert (=> start!362756 true))

(assert (=> start!362756 e!2391249))

(declare-fun e!2391267 () Bool)

(assert (=> start!362756 e!2391267))

(assert (=> start!362756 e!2391258))

(assert (=> start!362756 e!2391250))

(assert (=> start!362756 e!2391251))

(declare-fun b!3866855 () Bool)

(assert (=> b!3866855 (= e!2391244 (not e!2391256))))

(declare-fun res!1566010 () Bool)

(assert (=> b!3866855 (=> res!1566010 e!2391256)))

(declare-fun lt!1344731 () List!41174)

(assert (=> b!3866855 (= res!1566010 (not (= lt!1344731 lt!1344725)))))

(assert (=> b!3866855 (= lt!1344712 (lexList!1719 thiss!20629 rules!2768 (_2!23267 (v!39077 lt!1344716))))))

(declare-fun lt!1344729 () List!41174)

(assert (=> b!3866855 (and (= (size!30862 (_1!23267 (v!39077 lt!1344716))) lt!1344733) (= (originalCharacters!6962 (_1!23267 (v!39077 lt!1344716))) lt!1344719) (= (v!39077 lt!1344716) (tuple2!40267 (Token!11863 lt!1344718 (rule!9242 (_1!23267 (v!39077 lt!1344716))) lt!1344733 lt!1344719) lt!1344729)))))

(assert (=> b!3866855 (= lt!1344733 (size!30861 lt!1344719))))

(assert (=> b!3866855 e!2391262))

(declare-fun res!1566000 () Bool)

(assert (=> b!3866855 (=> (not res!1566000) (not e!2391262))))

(assert (=> b!3866855 (= res!1566000 (= (value!201951 (_1!23267 (v!39077 lt!1344716))) lt!1344718))))

(declare-fun apply!9605 (TokenValueInjection!12612 BalanceConc!24740) TokenValue!6592)

(declare-fun seqFromList!4633 (List!41174) BalanceConc!24740)

(assert (=> b!3866855 (= lt!1344718 (apply!9605 (transformation!6362 (rule!9242 (_1!23267 (v!39077 lt!1344716)))) (seqFromList!4633 lt!1344719)))))

(assert (=> b!3866855 (= (_2!23267 (v!39077 lt!1344716)) lt!1344729)))

(declare-fun lt!1344727 () Unit!58780)

(assert (=> b!3866855 (= lt!1344727 (lemmaSamePrefixThenSameSuffix!1682 lt!1344719 (_2!23267 (v!39077 lt!1344716)) lt!1344719 lt!1344729 lt!1344725))))

(declare-fun getSuffix!1916 (List!41174 List!41174) List!41174)

(assert (=> b!3866855 (= lt!1344729 (getSuffix!1916 lt!1344725 lt!1344719))))

(assert (=> b!3866855 (isPrefix!3461 lt!1344719 lt!1344731)))

(assert (=> b!3866855 (= lt!1344731 (++!10482 lt!1344719 (_2!23267 (v!39077 lt!1344716))))))

(declare-fun lt!1344724 () Unit!58780)

(assert (=> b!3866855 (= lt!1344724 (lemmaConcatTwoListThenFirstIsPrefix!2324 lt!1344719 (_2!23267 (v!39077 lt!1344716))))))

(declare-fun list!15274 (BalanceConc!24740) List!41174)

(declare-fun charsOf!4190 (Token!11862) BalanceConc!24740)

(assert (=> b!3866855 (= lt!1344719 (list!15274 (charsOf!4190 (_1!23267 (v!39077 lt!1344716)))))))

(declare-fun ruleValid!2314 (LexerInterface!5951 Rule!12524) Bool)

(assert (=> b!3866855 (ruleValid!2314 thiss!20629 (rule!9242 (_1!23267 (v!39077 lt!1344716))))))

(declare-fun lt!1344701 () Unit!58780)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1394 (LexerInterface!5951 Rule!12524 List!41176) Unit!58780)

(assert (=> b!3866855 (= lt!1344701 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1394 thiss!20629 (rule!9242 (_1!23267 (v!39077 lt!1344716))) rules!2768))))

(declare-fun lt!1344728 () Unit!58780)

(declare-fun lemmaCharactersSize!1023 (Token!11862) Unit!58780)

(assert (=> b!3866855 (= lt!1344728 (lemmaCharactersSize!1023 (_1!23267 (v!39077 lt!1344716))))))

(declare-fun b!3866856 () Bool)

(declare-fun tp!1172420 () Bool)

(declare-fun e!2391239 () Bool)

(assert (=> b!3866856 (= e!2391239 (and tp!1172420 (inv!55208 (tag!7222 (h!46472 rules!2768))) (inv!55211 (transformation!6362 (h!46472 rules!2768))) e!2391255))))

(declare-fun b!3866857 () Bool)

(declare-fun tp!1172414 () Bool)

(assert (=> b!3866857 (= e!2391267 (and e!2391239 tp!1172414))))

(assert (=> b!3866858 (= e!2391240 (and tp!1172422 tp!1172426))))

(declare-fun b!3866859 () Bool)

(declare-fun res!1566005 () Bool)

(assert (=> b!3866859 (=> (not res!1566005) (not e!2391268))))

(assert (=> b!3866859 (= res!1566005 (not (isEmpty!24340 prefixTokens!80)))))

(declare-fun b!3866860 () Bool)

(declare-fun Unit!58789 () Unit!58780)

(assert (=> b!3866860 (= e!2391241 Unit!58789)))

(assert (= (and start!362756 res!1566001) b!3866841))

(assert (= (and b!3866841 res!1566009) b!3866843))

(assert (= (and b!3866843 res!1566012) b!3866859))

(assert (= (and b!3866859 res!1566005) b!3866839))

(assert (= (and b!3866839 res!1566014) b!3866846))

(assert (= (and b!3866846 res!1566011) b!3866850))

(assert (= (and b!3866850 res!1566008) b!3866825))

(assert (= (and b!3866825 res!1566006) b!3866855))

(assert (= (and b!3866855 res!1566000) b!3866827))

(assert (= (and b!3866855 (not res!1566010)) b!3866834))

(assert (= (and b!3866834 (not res!1566004)) b!3866842))

(assert (= (and b!3866842 (not res!1566003)) b!3866836))

(assert (= (and b!3866836 c!673002) b!3866824))

(assert (= (and b!3866836 (not c!673002)) b!3866860))

(assert (= (and b!3866824 c!673001) b!3866831))

(assert (= (and b!3866824 (not c!673001)) b!3866844))

(assert (= (and b!3866831 c!673000) b!3866853))

(assert (= (and b!3866831 (not c!673000)) b!3866849))

(assert (= (and b!3866853 res!1566015) b!3866832))

(assert (= (and b!3866849 res!1566002) b!3866823))

(assert (= (or b!3866853 b!3866849) bm!282655))

(assert (= (and b!3866836 c!673003) b!3866826))

(assert (= (and b!3866836 (not c!673003)) b!3866833))

(assert (= (and b!3866836 (not res!1566013)) b!3866830))

(assert (= (and b!3866830 (not res!1566007)) b!3866829))

(assert (= (and start!362756 ((_ is Cons!41050) suffixResult!91)) b!3866845))

(assert (= (and start!362756 ((_ is Cons!41050) suffix!1176)) b!3866840))

(assert (= b!3866856 b!3866847))

(assert (= b!3866857 b!3866856))

(assert (= (and start!362756 ((_ is Cons!41052) rules!2768)) b!3866857))

(assert (= b!3866828 b!3866858))

(assert (= b!3866838 b!3866828))

(assert (= b!3866835 b!3866838))

(assert (= (and start!362756 ((_ is Cons!41053) prefixTokens!80)) b!3866835))

(assert (= b!3866852 b!3866854))

(assert (= b!3866851 b!3866852))

(assert (= b!3866837 b!3866851))

(assert (= (and start!362756 ((_ is Cons!41053) suffixTokens!72)) b!3866837))

(assert (= (and start!362756 ((_ is Cons!41050) prefix!426)) b!3866848))

(declare-fun m!4422395 () Bool)

(assert (=> b!3866829 m!4422395))

(declare-fun m!4422397 () Bool)

(assert (=> b!3866829 m!4422397))

(declare-fun m!4422399 () Bool)

(assert (=> b!3866829 m!4422399))

(declare-fun m!4422401 () Bool)

(assert (=> b!3866829 m!4422401))

(declare-fun m!4422403 () Bool)

(assert (=> b!3866829 m!4422403))

(declare-fun m!4422405 () Bool)

(assert (=> b!3866846 m!4422405))

(declare-fun m!4422407 () Bool)

(assert (=> b!3866846 m!4422407))

(declare-fun m!4422409 () Bool)

(assert (=> b!3866846 m!4422409))

(declare-fun m!4422411 () Bool)

(assert (=> b!3866855 m!4422411))

(declare-fun m!4422413 () Bool)

(assert (=> b!3866855 m!4422413))

(declare-fun m!4422415 () Bool)

(assert (=> b!3866855 m!4422415))

(declare-fun m!4422417 () Bool)

(assert (=> b!3866855 m!4422417))

(declare-fun m!4422419 () Bool)

(assert (=> b!3866855 m!4422419))

(declare-fun m!4422421 () Bool)

(assert (=> b!3866855 m!4422421))

(assert (=> b!3866855 m!4422419))

(declare-fun m!4422423 () Bool)

(assert (=> b!3866855 m!4422423))

(assert (=> b!3866855 m!4422415))

(declare-fun m!4422425 () Bool)

(assert (=> b!3866855 m!4422425))

(declare-fun m!4422427 () Bool)

(assert (=> b!3866855 m!4422427))

(declare-fun m!4422429 () Bool)

(assert (=> b!3866855 m!4422429))

(declare-fun m!4422431 () Bool)

(assert (=> b!3866855 m!4422431))

(declare-fun m!4422433 () Bool)

(assert (=> b!3866855 m!4422433))

(declare-fun m!4422435 () Bool)

(assert (=> b!3866855 m!4422435))

(declare-fun m!4422437 () Bool)

(assert (=> b!3866855 m!4422437))

(declare-fun m!4422439 () Bool)

(assert (=> b!3866838 m!4422439))

(declare-fun m!4422441 () Bool)

(assert (=> b!3866841 m!4422441))

(declare-fun m!4422443 () Bool)

(assert (=> b!3866852 m!4422443))

(declare-fun m!4422445 () Bool)

(assert (=> b!3866852 m!4422445))

(declare-fun m!4422447 () Bool)

(assert (=> b!3866839 m!4422447))

(declare-fun m!4422449 () Bool)

(assert (=> b!3866851 m!4422449))

(declare-fun m!4422451 () Bool)

(assert (=> b!3866834 m!4422451))

(declare-fun m!4422453 () Bool)

(assert (=> b!3866824 m!4422453))

(declare-fun m!4422455 () Bool)

(assert (=> b!3866824 m!4422455))

(declare-fun m!4422457 () Bool)

(assert (=> b!3866824 m!4422457))

(declare-fun m!4422459 () Bool)

(assert (=> b!3866824 m!4422459))

(declare-fun m!4422461 () Bool)

(assert (=> b!3866824 m!4422461))

(declare-fun m!4422463 () Bool)

(assert (=> b!3866830 m!4422463))

(declare-fun m!4422465 () Bool)

(assert (=> b!3866849 m!4422465))

(declare-fun m!4422467 () Bool)

(assert (=> b!3866849 m!4422467))

(declare-fun m!4422469 () Bool)

(assert (=> b!3866828 m!4422469))

(declare-fun m!4422471 () Bool)

(assert (=> b!3866828 m!4422471))

(declare-fun m!4422473 () Bool)

(assert (=> b!3866831 m!4422473))

(declare-fun m!4422475 () Bool)

(assert (=> b!3866831 m!4422475))

(declare-fun m!4422477 () Bool)

(assert (=> b!3866850 m!4422477))

(declare-fun m!4422479 () Bool)

(assert (=> b!3866836 m!4422479))

(declare-fun m!4422481 () Bool)

(assert (=> b!3866836 m!4422481))

(declare-fun m!4422483 () Bool)

(assert (=> b!3866859 m!4422483))

(declare-fun m!4422485 () Bool)

(assert (=> b!3866843 m!4422485))

(declare-fun m!4422487 () Bool)

(assert (=> b!3866825 m!4422487))

(declare-fun m!4422489 () Bool)

(assert (=> b!3866837 m!4422489))

(declare-fun m!4422491 () Bool)

(assert (=> b!3866827 m!4422491))

(declare-fun m!4422493 () Bool)

(assert (=> b!3866835 m!4422493))

(declare-fun m!4422495 () Bool)

(assert (=> b!3866853 m!4422495))

(declare-fun m!4422497 () Bool)

(assert (=> b!3866853 m!4422497))

(assert (=> b!3866826 m!4422399))

(assert (=> b!3866826 m!4422397))

(declare-fun m!4422499 () Bool)

(assert (=> b!3866826 m!4422499))

(declare-fun m!4422501 () Bool)

(assert (=> b!3866826 m!4422501))

(declare-fun m!4422503 () Bool)

(assert (=> b!3866856 m!4422503))

(declare-fun m!4422505 () Bool)

(assert (=> b!3866856 m!4422505))

(declare-fun m!4422507 () Bool)

(assert (=> bm!282655 m!4422507))

(check-sat (not b!3866838) (not b!3866845) (not b!3866852) (not b!3866857) (not b!3866825) (not b!3866859) (not b!3866827) (not b_next!104949) (not b!3866855) b_and!289709 (not b!3866841) (not b!3866837) (not b!3866830) (not b!3866850) (not b!3866836) (not b_next!104953) (not b!3866839) (not b!3866843) (not b!3866851) b_and!289713 (not b!3866846) b_and!289717 (not bm!282655) (not b!3866849) b_and!289707 (not b_next!104955) (not b!3866848) (not b!3866840) (not b!3866828) b_and!289715 (not b!3866834) (not b!3866835) b_and!289711 (not b!3866853) (not b!3866826) (not b!3866831) (not b_next!104951) (not b!3866824) (not b_next!104957) (not b!3866856) tp_is_empty!19505 (not b!3866829) (not b_next!104959))
(check-sat (not b_next!104953) b_and!289715 b_and!289711 (not b_next!104949) (not b_next!104951) b_and!289709 (not b_next!104957) (not b_next!104959) b_and!289713 b_and!289717 b_and!289707 (not b_next!104955))
