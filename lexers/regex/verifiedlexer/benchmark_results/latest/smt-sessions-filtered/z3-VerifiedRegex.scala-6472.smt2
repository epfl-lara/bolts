; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!339590 () Bool)

(assert start!339590)

(declare-fun b!3637900 () Bool)

(declare-fun b_free!95289 () Bool)

(declare-fun b_next!95993 () Bool)

(assert (=> b!3637900 (= b_free!95289 (not b_next!95993))))

(declare-fun tp!1110084 () Bool)

(declare-fun b_and!267827 () Bool)

(assert (=> b!3637900 (= tp!1110084 b_and!267827)))

(declare-fun b_free!95291 () Bool)

(declare-fun b_next!95995 () Bool)

(assert (=> b!3637900 (= b_free!95291 (not b_next!95995))))

(declare-fun tp!1110083 () Bool)

(declare-fun b_and!267829 () Bool)

(assert (=> b!3637900 (= tp!1110083 b_and!267829)))

(declare-fun b!3637892 () Bool)

(declare-fun b_free!95293 () Bool)

(declare-fun b_next!95997 () Bool)

(assert (=> b!3637892 (= b_free!95293 (not b_next!95997))))

(declare-fun tp!1110079 () Bool)

(declare-fun b_and!267831 () Bool)

(assert (=> b!3637892 (= tp!1110079 b_and!267831)))

(declare-fun b_free!95295 () Bool)

(declare-fun b_next!95999 () Bool)

(assert (=> b!3637892 (= b_free!95295 (not b_next!95999))))

(declare-fun tp!1110077 () Bool)

(declare-fun b_and!267833 () Bool)

(assert (=> b!3637892 (= tp!1110077 b_and!267833)))

(declare-fun b!3637890 () Bool)

(declare-fun b_free!95297 () Bool)

(declare-fun b_next!96001 () Bool)

(assert (=> b!3637890 (= b_free!95297 (not b_next!96001))))

(declare-fun tp!1110086 () Bool)

(declare-fun b_and!267835 () Bool)

(assert (=> b!3637890 (= tp!1110086 b_and!267835)))

(declare-fun b_free!95299 () Bool)

(declare-fun b_next!96003 () Bool)

(assert (=> b!3637890 (= b_free!95299 (not b_next!96003))))

(declare-fun tp!1110089 () Bool)

(declare-fun b_and!267837 () Bool)

(assert (=> b!3637890 (= tp!1110089 b_and!267837)))

(declare-fun b!3637898 () Bool)

(declare-fun b_free!95301 () Bool)

(declare-fun b_next!96005 () Bool)

(assert (=> b!3637898 (= b_free!95301 (not b_next!96005))))

(declare-fun tp!1110090 () Bool)

(declare-fun b_and!267839 () Bool)

(assert (=> b!3637898 (= tp!1110090 b_and!267839)))

(declare-fun b_free!95303 () Bool)

(declare-fun b_next!96007 () Bool)

(assert (=> b!3637898 (= b_free!95303 (not b_next!96007))))

(declare-fun tp!1110076 () Bool)

(declare-fun b_and!267841 () Bool)

(assert (=> b!3637898 (= tp!1110076 b_and!267841)))

(declare-fun b!3637885 () Bool)

(declare-fun res!1474076 () Bool)

(declare-fun e!2251922 () Bool)

(assert (=> b!3637885 (=> res!1474076 e!2251922)))

(declare-datatypes ((List!38459 0))(
  ( (Nil!38335) (Cons!38335 (h!43755 (_ BitVec 16)) (t!296122 List!38459)) )
))
(declare-datatypes ((TokenValue!5954 0))(
  ( (FloatLiteralValue!11908 (text!42123 List!38459)) (TokenValueExt!5953 (__x!24125 Int)) (Broken!29770 (value!183568 List!38459)) (Object!6077) (End!5954) (Def!5954) (Underscore!5954) (Match!5954) (Else!5954) (Error!5954) (Case!5954) (If!5954) (Extends!5954) (Abstract!5954) (Class!5954) (Val!5954) (DelimiterValue!11908 (del!6014 List!38459)) (KeywordValue!5960 (value!183569 List!38459)) (CommentValue!11908 (value!183570 List!38459)) (WhitespaceValue!11908 (value!183571 List!38459)) (IndentationValue!5954 (value!183572 List!38459)) (String!43103) (Int32!5954) (Broken!29771 (value!183573 List!38459)) (Boolean!5955) (Unit!55165) (OperatorValue!5957 (op!6014 List!38459)) (IdentifierValue!11908 (value!183574 List!38459)) (IdentifierValue!11909 (value!183575 List!38459)) (WhitespaceValue!11909 (value!183576 List!38459)) (True!11908) (False!11908) (Broken!29772 (value!183577 List!38459)) (Broken!29773 (value!183578 List!38459)) (True!11909) (RightBrace!5954) (RightBracket!5954) (Colon!5954) (Null!5954) (Comma!5954) (LeftBracket!5954) (False!11909) (LeftBrace!5954) (ImaginaryLiteralValue!5954 (text!42124 List!38459)) (StringLiteralValue!17862 (value!183579 List!38459)) (EOFValue!5954 (value!183580 List!38459)) (IdentValue!5954 (value!183581 List!38459)) (DelimiterValue!11909 (value!183582 List!38459)) (DedentValue!5954 (value!183583 List!38459)) (NewLineValue!5954 (value!183584 List!38459)) (IntegerValue!17862 (value!183585 (_ BitVec 32)) (text!42125 List!38459)) (IntegerValue!17863 (value!183586 Int) (text!42126 List!38459)) (Times!5954) (Or!5954) (Equal!5954) (Minus!5954) (Broken!29774 (value!183587 List!38459)) (And!5954) (Div!5954) (LessEqual!5954) (Mod!5954) (Concat!16437) (Not!5954) (Plus!5954) (SpaceValue!5954 (value!183588 List!38459)) (IntegerValue!17864 (value!183589 Int) (text!42127 List!38459)) (StringLiteralValue!17863 (text!42128 List!38459)) (FloatLiteralValue!11909 (text!42129 List!38459)) (BytesLiteralValue!5954 (value!183590 List!38459)) (CommentValue!11909 (value!183591 List!38459)) (StringLiteralValue!17864 (value!183592 List!38459)) (ErrorTokenValue!5954 (msg!6015 List!38459)) )
))
(declare-datatypes ((String!43104 0))(
  ( (String!43105 (value!183593 String)) )
))
(declare-datatypes ((C!21152 0))(
  ( (C!21153 (val!12624 Int)) )
))
(declare-datatypes ((Regex!10483 0))(
  ( (ElementMatch!10483 (c!629110 C!21152)) (Concat!16438 (regOne!21478 Regex!10483) (regTwo!21478 Regex!10483)) (EmptyExpr!10483) (Star!10483 (reg!10812 Regex!10483)) (EmptyLang!10483) (Union!10483 (regOne!21479 Regex!10483) (regTwo!21479 Regex!10483)) )
))
(declare-datatypes ((List!38460 0))(
  ( (Nil!38336) (Cons!38336 (h!43756 C!21152) (t!296123 List!38460)) )
))
(declare-datatypes ((IArray!23411 0))(
  ( (IArray!23412 (innerList!11763 List!38460)) )
))
(declare-datatypes ((Conc!11703 0))(
  ( (Node!11703 (left!29931 Conc!11703) (right!30261 Conc!11703) (csize!23636 Int) (cheight!11914 Int)) (Leaf!18176 (xs!14905 IArray!23411) (csize!23637 Int)) (Empty!11703) )
))
(declare-datatypes ((BalanceConc!23020 0))(
  ( (BalanceConc!23021 (c!629111 Conc!11703)) )
))
(declare-datatypes ((TokenValueInjection!11336 0))(
  ( (TokenValueInjection!11337 (toValue!8016 Int) (toChars!7875 Int)) )
))
(declare-datatypes ((Rule!11248 0))(
  ( (Rule!11249 (regex!5724 Regex!10483) (tag!6468 String!43104) (isSeparator!5724 Bool) (transformation!5724 TokenValueInjection!11336)) )
))
(declare-datatypes ((Token!10814 0))(
  ( (Token!10815 (value!183594 TokenValue!5954) (rule!8502 Rule!11248) (size!29255 Int) (originalCharacters!6438 List!38460)) )
))
(declare-datatypes ((tuple2!38204 0))(
  ( (tuple2!38205 (_1!22236 Token!10814) (_2!22236 List!38460)) )
))
(declare-fun lt!1259024 () tuple2!38204)

(declare-fun lt!1259046 () List!38460)

(declare-fun matchR!5052 (Regex!10483 List!38460) Bool)

(assert (=> b!3637885 (= res!1474076 (not (matchR!5052 (regex!5724 (rule!8502 (_1!22236 lt!1259024))) lt!1259046)))))

(declare-fun b!3637886 () Bool)

(declare-fun e!2251926 () Bool)

(declare-fun e!2251915 () Bool)

(declare-fun tp!1110078 () Bool)

(assert (=> b!3637886 (= e!2251926 (and e!2251915 tp!1110078))))

(declare-fun b!3637887 () Bool)

(declare-fun res!1474093 () Bool)

(declare-fun e!2251909 () Bool)

(assert (=> b!3637887 (=> res!1474093 e!2251909)))

(declare-fun suffix!1395 () List!38460)

(declare-fun isEmpty!22692 (List!38460) Bool)

(assert (=> b!3637887 (= res!1474093 (isEmpty!22692 suffix!1395))))

(declare-fun b!3637888 () Bool)

(declare-fun e!2251918 () Bool)

(assert (=> b!3637888 (= e!2251918 e!2251922)))

(declare-fun res!1474078 () Bool)

(assert (=> b!3637888 (=> res!1474078 e!2251922)))

(declare-fun lt!1259029 () List!38460)

(declare-fun isPrefix!3087 (List!38460 List!38460) Bool)

(assert (=> b!3637888 (= res!1474078 (not (isPrefix!3087 lt!1259046 lt!1259029)))))

(declare-fun ++!9540 (List!38460 List!38460) List!38460)

(assert (=> b!3637888 (isPrefix!3087 lt!1259046 (++!9540 lt!1259046 (_2!22236 lt!1259024)))))

(declare-datatypes ((Unit!55166 0))(
  ( (Unit!55167) )
))
(declare-fun lt!1259036 () Unit!55166)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2006 (List!38460 List!38460) Unit!55166)

(assert (=> b!3637888 (= lt!1259036 (lemmaConcatTwoListThenFirstIsPrefix!2006 lt!1259046 (_2!22236 lt!1259024)))))

(declare-fun lt!1259049 () BalanceConc!23020)

(declare-fun list!14186 (BalanceConc!23020) List!38460)

(assert (=> b!3637888 (= lt!1259046 (list!14186 lt!1259049))))

(declare-fun charsOf!3738 (Token!10814) BalanceConc!23020)

(assert (=> b!3637888 (= lt!1259049 (charsOf!3738 (_1!22236 lt!1259024)))))

(declare-fun e!2251903 () Bool)

(assert (=> b!3637888 e!2251903))

(declare-fun res!1474081 () Bool)

(assert (=> b!3637888 (=> (not res!1474081) (not e!2251903))))

(declare-datatypes ((Option!8076 0))(
  ( (None!8075) (Some!8075 (v!37895 Rule!11248)) )
))
(declare-fun lt!1259037 () Option!8076)

(declare-fun isDefined!6308 (Option!8076) Bool)

(assert (=> b!3637888 (= res!1474081 (isDefined!6308 lt!1259037))))

(declare-datatypes ((List!38461 0))(
  ( (Nil!38337) (Cons!38337 (h!43757 Rule!11248) (t!296124 List!38461)) )
))
(declare-fun rules!3307 () List!38461)

(declare-datatypes ((LexerInterface!5313 0))(
  ( (LexerInterfaceExt!5310 (__x!24126 Int)) (Lexer!5311) )
))
(declare-fun thiss!23823 () LexerInterface!5313)

(declare-fun getRuleFromTag!1328 (LexerInterface!5313 List!38461 String!43104) Option!8076)

(assert (=> b!3637888 (= lt!1259037 (getRuleFromTag!1328 thiss!23823 rules!3307 (tag!6468 (rule!8502 (_1!22236 lt!1259024)))))))

(declare-fun lt!1259041 () Unit!55166)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1328 (LexerInterface!5313 List!38461 List!38460 Token!10814) Unit!55166)

(assert (=> b!3637888 (= lt!1259041 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1328 thiss!23823 rules!3307 lt!1259029 (_1!22236 lt!1259024)))))

(declare-datatypes ((Option!8077 0))(
  ( (None!8076) (Some!8076 (v!37896 tuple2!38204)) )
))
(declare-fun lt!1259026 () Option!8077)

(declare-fun get!12548 (Option!8077) tuple2!38204)

(assert (=> b!3637888 (= lt!1259024 (get!12548 lt!1259026))))

(declare-fun lt!1259039 () Unit!55166)

(declare-fun lt!1259038 () List!38460)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!991 (LexerInterface!5313 List!38461 List!38460 List!38460) Unit!55166)

(assert (=> b!3637888 (= lt!1259039 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!991 thiss!23823 rules!3307 lt!1259038 suffix!1395))))

(declare-fun maxPrefix!2847 (LexerInterface!5313 List!38461 List!38460) Option!8077)

(assert (=> b!3637888 (= lt!1259026 (maxPrefix!2847 thiss!23823 rules!3307 lt!1259029))))

(assert (=> b!3637888 (isPrefix!3087 lt!1259038 lt!1259029)))

(declare-fun lt!1259031 () Unit!55166)

(assert (=> b!3637888 (= lt!1259031 (lemmaConcatTwoListThenFirstIsPrefix!2006 lt!1259038 suffix!1395))))

(assert (=> b!3637888 (= lt!1259029 (++!9540 lt!1259038 suffix!1395))))

(declare-fun b!3637889 () Bool)

(declare-fun res!1474079 () Bool)

(declare-fun e!2251910 () Bool)

(assert (=> b!3637889 (=> (not res!1474079) (not e!2251910))))

(declare-fun rulesInvariant!4710 (LexerInterface!5313 List!38461) Bool)

(assert (=> b!3637889 (= res!1474079 (rulesInvariant!4710 thiss!23823 rules!3307))))

(declare-fun e!2251916 () Bool)

(assert (=> b!3637890 (= e!2251916 (and tp!1110086 tp!1110089))))

(declare-fun res!1474084 () Bool)

(assert (=> start!339590 (=> (not res!1474084) (not e!2251910))))

(get-info :version)

(assert (=> start!339590 (= res!1474084 ((_ is Lexer!5311) thiss!23823))))

(assert (=> start!339590 e!2251910))

(assert (=> start!339590 e!2251926))

(declare-fun e!2251923 () Bool)

(assert (=> start!339590 e!2251923))

(assert (=> start!339590 true))

(declare-fun token!511 () Token!10814)

(declare-fun e!2251905 () Bool)

(declare-fun inv!51766 (Token!10814) Bool)

(assert (=> start!339590 (and (inv!51766 token!511) e!2251905)))

(declare-fun e!2251920 () Bool)

(assert (=> start!339590 e!2251920))

(declare-fun e!2251913 () Bool)

(assert (=> start!339590 e!2251913))

(declare-fun b!3637891 () Bool)

(declare-fun res!1474073 () Bool)

(declare-fun e!2251912 () Bool)

(assert (=> b!3637891 (=> (not res!1474073) (not e!2251912))))

(declare-fun lt!1259035 () tuple2!38204)

(assert (=> b!3637891 (= res!1474073 (isEmpty!22692 (_2!22236 lt!1259035)))))

(declare-fun e!2251907 () Bool)

(assert (=> b!3637892 (= e!2251907 (and tp!1110079 tp!1110077))))

(declare-fun b!3637893 () Bool)

(declare-fun res!1474071 () Bool)

(assert (=> b!3637893 (=> (not res!1474071) (not e!2251910))))

(declare-fun isEmpty!22693 (List!38461) Bool)

(assert (=> b!3637893 (= res!1474071 (not (isEmpty!22693 rules!3307)))))

(declare-fun b!3637894 () Bool)

(declare-fun res!1474074 () Bool)

(assert (=> b!3637894 (=> (not res!1474074) (not e!2251912))))

(declare-fun rule!403 () Rule!11248)

(assert (=> b!3637894 (= res!1474074 (= (rule!8502 token!511) rule!403))))

(declare-fun b!3637895 () Bool)

(declare-fun e!2251906 () Bool)

(declare-fun lt!1259044 () Rule!11248)

(assert (=> b!3637895 (= e!2251906 (= (rule!8502 (_1!22236 lt!1259024)) lt!1259044))))

(declare-fun tp!1110082 () Bool)

(declare-fun b!3637896 () Bool)

(declare-fun e!2251925 () Bool)

(declare-fun inv!21 (TokenValue!5954) Bool)

(assert (=> b!3637896 (= e!2251905 (and (inv!21 (value!183594 token!511)) e!2251925 tp!1110082))))

(declare-fun b!3637897 () Bool)

(declare-fun tp_is_empty!18049 () Bool)

(declare-fun tp!1110081 () Bool)

(assert (=> b!3637897 (= e!2251923 (and tp_is_empty!18049 tp!1110081))))

(declare-fun e!2251908 () Bool)

(assert (=> b!3637898 (= e!2251908 (and tp!1110090 tp!1110076))))

(declare-fun b!3637899 () Bool)

(declare-fun res!1474075 () Bool)

(declare-fun e!2251904 () Bool)

(assert (=> b!3637899 (=> res!1474075 e!2251904)))

(declare-fun validRegex!4799 (Regex!10483) Bool)

(assert (=> b!3637899 (= res!1474075 (not (validRegex!4799 (regex!5724 rule!403))))))

(declare-fun e!2251917 () Bool)

(assert (=> b!3637900 (= e!2251917 (and tp!1110084 tp!1110083))))

(declare-fun b!3637901 () Bool)

(declare-fun e!2251902 () Bool)

(assert (=> b!3637901 (= e!2251902 e!2251904)))

(declare-fun res!1474091 () Bool)

(assert (=> b!3637901 (=> res!1474091 e!2251904)))

(declare-fun lt!1259040 () List!38460)

(declare-fun lt!1259034 () C!21152)

(declare-fun contains!7513 (List!38460 C!21152) Bool)

(assert (=> b!3637901 (= res!1474091 (contains!7513 lt!1259040 lt!1259034))))

(declare-fun head!7718 (List!38460) C!21152)

(assert (=> b!3637901 (= lt!1259034 (head!7718 lt!1259046))))

(declare-fun b!3637902 () Bool)

(declare-fun res!1474090 () Bool)

(assert (=> b!3637902 (=> (not res!1474090) (not e!2251910))))

(declare-fun contains!7514 (List!38461 Rule!11248) Bool)

(assert (=> b!3637902 (= res!1474090 (contains!7514 rules!3307 rule!403))))

(declare-fun b!3637903 () Bool)

(declare-fun res!1474077 () Bool)

(assert (=> b!3637903 (=> res!1474077 e!2251918)))

(declare-fun anOtherTypeRule!33 () Rule!11248)

(declare-fun lt!1259028 () C!21152)

(declare-fun usedCharacters!936 (Regex!10483) List!38460)

(assert (=> b!3637903 (= res!1474077 (not (contains!7513 (usedCharacters!936 (regex!5724 anOtherTypeRule!33)) lt!1259028)))))

(declare-fun b!3637904 () Bool)

(declare-fun res!1474080 () Bool)

(assert (=> b!3637904 (=> (not res!1474080) (not e!2251910))))

(assert (=> b!3637904 (= res!1474080 (contains!7514 rules!3307 anOtherTypeRule!33))))

(declare-fun tp!1110085 () Bool)

(declare-fun b!3637905 () Bool)

(declare-fun inv!51763 (String!43104) Bool)

(declare-fun inv!51767 (TokenValueInjection!11336) Bool)

(assert (=> b!3637905 (= e!2251920 (and tp!1110085 (inv!51763 (tag!6468 rule!403)) (inv!51767 (transformation!5724 rule!403)) e!2251908))))

(declare-fun b!3637906 () Bool)

(declare-fun res!1474089 () Bool)

(assert (=> b!3637906 (=> (not res!1474089) (not e!2251910))))

(assert (=> b!3637906 (= res!1474089 (not (= (isSeparator!5724 anOtherTypeRule!33) (isSeparator!5724 rule!403))))))

(declare-fun b!3637907 () Bool)

(declare-fun tp!1110088 () Bool)

(assert (=> b!3637907 (= e!2251913 (and tp!1110088 (inv!51763 (tag!6468 anOtherTypeRule!33)) (inv!51767 (transformation!5724 anOtherTypeRule!33)) e!2251917))))

(declare-fun b!3637908 () Bool)

(declare-fun e!2251924 () Bool)

(assert (=> b!3637908 (= e!2251924 e!2251902)))

(declare-fun res!1474083 () Bool)

(assert (=> b!3637908 (=> res!1474083 e!2251902)))

(declare-fun lt!1259050 () List!38460)

(declare-fun lt!1259033 () Option!8077)

(assert (=> b!3637908 (= res!1474083 (or (not (= lt!1259050 (_2!22236 lt!1259024))) (not (= lt!1259033 (Some!8076 (tuple2!38205 (_1!22236 lt!1259024) lt!1259050))))))))

(assert (=> b!3637908 (= (_2!22236 lt!1259024) lt!1259050)))

(declare-fun lt!1259043 () Unit!55166)

(declare-fun lemmaSamePrefixThenSameSuffix!1414 (List!38460 List!38460 List!38460 List!38460 List!38460) Unit!55166)

(assert (=> b!3637908 (= lt!1259043 (lemmaSamePrefixThenSameSuffix!1414 lt!1259046 (_2!22236 lt!1259024) lt!1259046 lt!1259050 lt!1259029))))

(declare-fun getSuffix!1640 (List!38460 List!38460) List!38460)

(assert (=> b!3637908 (= lt!1259050 (getSuffix!1640 lt!1259029 lt!1259046))))

(declare-fun lt!1259027 () TokenValue!5954)

(declare-fun lt!1259030 () Int)

(assert (=> b!3637908 (= lt!1259033 (Some!8076 (tuple2!38205 (Token!10815 lt!1259027 (rule!8502 (_1!22236 lt!1259024)) lt!1259030 lt!1259046) (_2!22236 lt!1259024))))))

(declare-fun maxPrefixOneRule!1985 (LexerInterface!5313 Rule!11248 List!38460) Option!8077)

(assert (=> b!3637908 (= lt!1259033 (maxPrefixOneRule!1985 thiss!23823 (rule!8502 (_1!22236 lt!1259024)) lt!1259029))))

(declare-fun size!29256 (List!38460) Int)

(assert (=> b!3637908 (= lt!1259030 (size!29256 lt!1259046))))

(declare-fun apply!9226 (TokenValueInjection!11336 BalanceConc!23020) TokenValue!5954)

(declare-fun seqFromList!4273 (List!38460) BalanceConc!23020)

(assert (=> b!3637908 (= lt!1259027 (apply!9226 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))) (seqFromList!4273 lt!1259046)))))

(declare-fun lt!1259032 () Unit!55166)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1041 (LexerInterface!5313 List!38461 List!38460 List!38460 List!38460 Rule!11248) Unit!55166)

(assert (=> b!3637908 (= lt!1259032 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1041 thiss!23823 rules!3307 lt!1259046 lt!1259029 (_2!22236 lt!1259024) (rule!8502 (_1!22236 lt!1259024))))))

(declare-fun b!3637909 () Bool)

(assert (=> b!3637909 (= e!2251922 e!2251924)))

(declare-fun res!1474087 () Bool)

(assert (=> b!3637909 (=> res!1474087 e!2251924)))

(declare-fun size!29257 (BalanceConc!23020) Int)

(assert (=> b!3637909 (= res!1474087 (not (= lt!1259026 (Some!8076 (tuple2!38205 (Token!10815 (apply!9226 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))) lt!1259049) (rule!8502 (_1!22236 lt!1259024)) (size!29257 lt!1259049) lt!1259046) (_2!22236 lt!1259024))))))))

(declare-fun lt!1259047 () Unit!55166)

(declare-fun lemmaCharactersSize!769 (Token!10814) Unit!55166)

(assert (=> b!3637909 (= lt!1259047 (lemmaCharactersSize!769 (_1!22236 lt!1259024)))))

(declare-fun lt!1259025 () Unit!55166)

(declare-fun lemmaEqSameImage!907 (TokenValueInjection!11336 BalanceConc!23020 BalanceConc!23020) Unit!55166)

(assert (=> b!3637909 (= lt!1259025 (lemmaEqSameImage!907 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))) lt!1259049 (seqFromList!4273 (originalCharacters!6438 (_1!22236 lt!1259024)))))))

(declare-fun lt!1259048 () Unit!55166)

(declare-fun lemmaSemiInverse!1473 (TokenValueInjection!11336 BalanceConc!23020) Unit!55166)

(assert (=> b!3637909 (= lt!1259048 (lemmaSemiInverse!1473 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))) lt!1259049))))

(declare-fun b!3637910 () Bool)

(assert (=> b!3637910 (= e!2251909 e!2251918)))

(declare-fun res!1474085 () Bool)

(assert (=> b!3637910 (=> res!1474085 e!2251918)))

(assert (=> b!3637910 (= res!1474085 (contains!7513 lt!1259040 lt!1259028))))

(assert (=> b!3637910 (= lt!1259028 (head!7718 suffix!1395))))

(assert (=> b!3637910 (= lt!1259040 (usedCharacters!936 (regex!5724 rule!403)))))

(declare-fun b!3637911 () Bool)

(assert (=> b!3637911 (= e!2251912 (not e!2251909))))

(declare-fun res!1474092 () Bool)

(assert (=> b!3637911 (=> res!1474092 e!2251909)))

(assert (=> b!3637911 (= res!1474092 (not (matchR!5052 (regex!5724 rule!403) lt!1259038)))))

(declare-fun ruleValid!1988 (LexerInterface!5313 Rule!11248) Bool)

(assert (=> b!3637911 (ruleValid!1988 thiss!23823 rule!403)))

(declare-fun lt!1259042 () Unit!55166)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1142 (LexerInterface!5313 Rule!11248 List!38461) Unit!55166)

(assert (=> b!3637911 (= lt!1259042 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1142 thiss!23823 rule!403 rules!3307))))

(declare-fun b!3637912 () Bool)

(declare-fun tp!1110087 () Bool)

(assert (=> b!3637912 (= e!2251925 (and tp!1110087 (inv!51763 (tag!6468 (rule!8502 token!511))) (inv!51767 (transformation!5724 (rule!8502 token!511))) e!2251907))))

(declare-fun b!3637913 () Bool)

(declare-fun e!2251914 () Bool)

(assert (=> b!3637913 (= e!2251914 e!2251912)))

(declare-fun res!1474072 () Bool)

(assert (=> b!3637913 (=> (not res!1474072) (not e!2251912))))

(assert (=> b!3637913 (= res!1474072 (= (_1!22236 lt!1259035) token!511))))

(declare-fun lt!1259045 () Option!8077)

(assert (=> b!3637913 (= lt!1259035 (get!12548 lt!1259045))))

(declare-fun b!3637914 () Bool)

(assert (=> b!3637914 (= e!2251910 e!2251914)))

(declare-fun res!1474082 () Bool)

(assert (=> b!3637914 (=> (not res!1474082) (not e!2251914))))

(declare-fun isDefined!6309 (Option!8077) Bool)

(assert (=> b!3637914 (= res!1474082 (isDefined!6309 lt!1259045))))

(assert (=> b!3637914 (= lt!1259045 (maxPrefix!2847 thiss!23823 rules!3307 lt!1259038))))

(assert (=> b!3637914 (= lt!1259038 (list!14186 (charsOf!3738 token!511)))))

(declare-fun b!3637915 () Bool)

(assert (=> b!3637915 (= e!2251903 e!2251906)))

(declare-fun res!1474086 () Bool)

(assert (=> b!3637915 (=> (not res!1474086) (not e!2251906))))

(assert (=> b!3637915 (= res!1474086 (matchR!5052 (regex!5724 lt!1259044) (list!14186 (charsOf!3738 (_1!22236 lt!1259024)))))))

(declare-fun get!12549 (Option!8076) Rule!11248)

(assert (=> b!3637915 (= lt!1259044 (get!12549 lt!1259037))))

(declare-fun b!3637916 () Bool)

(declare-fun res!1474088 () Bool)

(assert (=> b!3637916 (=> res!1474088 e!2251918)))

(declare-fun sepAndNonSepRulesDisjointChars!1892 (List!38461 List!38461) Bool)

(assert (=> b!3637916 (= res!1474088 (not (sepAndNonSepRulesDisjointChars!1892 rules!3307 rules!3307)))))

(declare-fun tp!1110080 () Bool)

(declare-fun b!3637917 () Bool)

(assert (=> b!3637917 (= e!2251915 (and tp!1110080 (inv!51763 (tag!6468 (h!43757 rules!3307))) (inv!51767 (transformation!5724 (h!43757 rules!3307))) e!2251916))))

(declare-fun b!3637918 () Bool)

(assert (=> b!3637918 (= e!2251904 (contains!7513 lt!1259038 lt!1259034))))

(assert (= (and start!339590 res!1474084) b!3637893))

(assert (= (and b!3637893 res!1474071) b!3637889))

(assert (= (and b!3637889 res!1474079) b!3637902))

(assert (= (and b!3637902 res!1474090) b!3637904))

(assert (= (and b!3637904 res!1474080) b!3637906))

(assert (= (and b!3637906 res!1474089) b!3637914))

(assert (= (and b!3637914 res!1474082) b!3637913))

(assert (= (and b!3637913 res!1474072) b!3637891))

(assert (= (and b!3637891 res!1474073) b!3637894))

(assert (= (and b!3637894 res!1474074) b!3637911))

(assert (= (and b!3637911 (not res!1474092)) b!3637887))

(assert (= (and b!3637887 (not res!1474093)) b!3637910))

(assert (= (and b!3637910 (not res!1474085)) b!3637903))

(assert (= (and b!3637903 (not res!1474077)) b!3637916))

(assert (= (and b!3637916 (not res!1474088)) b!3637888))

(assert (= (and b!3637888 res!1474081) b!3637915))

(assert (= (and b!3637915 res!1474086) b!3637895))

(assert (= (and b!3637888 (not res!1474078)) b!3637885))

(assert (= (and b!3637885 (not res!1474076)) b!3637909))

(assert (= (and b!3637909 (not res!1474087)) b!3637908))

(assert (= (and b!3637908 (not res!1474083)) b!3637901))

(assert (= (and b!3637901 (not res!1474091)) b!3637899))

(assert (= (and b!3637899 (not res!1474075)) b!3637918))

(assert (= b!3637917 b!3637890))

(assert (= b!3637886 b!3637917))

(assert (= (and start!339590 ((_ is Cons!38337) rules!3307)) b!3637886))

(assert (= (and start!339590 ((_ is Cons!38336) suffix!1395)) b!3637897))

(assert (= b!3637912 b!3637892))

(assert (= b!3637896 b!3637912))

(assert (= start!339590 b!3637896))

(assert (= b!3637905 b!3637898))

(assert (= start!339590 b!3637905))

(assert (= b!3637907 b!3637900))

(assert (= start!339590 b!3637907))

(declare-fun m!4140429 () Bool)

(assert (=> b!3637902 m!4140429))

(declare-fun m!4140431 () Bool)

(assert (=> b!3637907 m!4140431))

(declare-fun m!4140433 () Bool)

(assert (=> b!3637907 m!4140433))

(declare-fun m!4140435 () Bool)

(assert (=> b!3637887 m!4140435))

(declare-fun m!4140437 () Bool)

(assert (=> b!3637913 m!4140437))

(declare-fun m!4140439 () Bool)

(assert (=> start!339590 m!4140439))

(declare-fun m!4140441 () Bool)

(assert (=> b!3637904 m!4140441))

(declare-fun m!4140443 () Bool)

(assert (=> b!3637909 m!4140443))

(assert (=> b!3637909 m!4140443))

(declare-fun m!4140445 () Bool)

(assert (=> b!3637909 m!4140445))

(declare-fun m!4140447 () Bool)

(assert (=> b!3637909 m!4140447))

(declare-fun m!4140449 () Bool)

(assert (=> b!3637909 m!4140449))

(declare-fun m!4140451 () Bool)

(assert (=> b!3637909 m!4140451))

(declare-fun m!4140453 () Bool)

(assert (=> b!3637909 m!4140453))

(declare-fun m!4140455 () Bool)

(assert (=> b!3637888 m!4140455))

(declare-fun m!4140457 () Bool)

(assert (=> b!3637888 m!4140457))

(declare-fun m!4140459 () Bool)

(assert (=> b!3637888 m!4140459))

(declare-fun m!4140461 () Bool)

(assert (=> b!3637888 m!4140461))

(declare-fun m!4140463 () Bool)

(assert (=> b!3637888 m!4140463))

(declare-fun m!4140465 () Bool)

(assert (=> b!3637888 m!4140465))

(declare-fun m!4140467 () Bool)

(assert (=> b!3637888 m!4140467))

(declare-fun m!4140469 () Bool)

(assert (=> b!3637888 m!4140469))

(declare-fun m!4140471 () Bool)

(assert (=> b!3637888 m!4140471))

(declare-fun m!4140473 () Bool)

(assert (=> b!3637888 m!4140473))

(assert (=> b!3637888 m!4140463))

(declare-fun m!4140475 () Bool)

(assert (=> b!3637888 m!4140475))

(declare-fun m!4140477 () Bool)

(assert (=> b!3637888 m!4140477))

(declare-fun m!4140479 () Bool)

(assert (=> b!3637888 m!4140479))

(declare-fun m!4140481 () Bool)

(assert (=> b!3637888 m!4140481))

(declare-fun m!4140483 () Bool)

(assert (=> b!3637888 m!4140483))

(declare-fun m!4140485 () Bool)

(assert (=> b!3637891 m!4140485))

(declare-fun m!4140487 () Bool)

(assert (=> b!3637889 m!4140487))

(declare-fun m!4140489 () Bool)

(assert (=> b!3637885 m!4140489))

(declare-fun m!4140491 () Bool)

(assert (=> b!3637911 m!4140491))

(declare-fun m!4140493 () Bool)

(assert (=> b!3637911 m!4140493))

(declare-fun m!4140495 () Bool)

(assert (=> b!3637911 m!4140495))

(declare-fun m!4140497 () Bool)

(assert (=> b!3637912 m!4140497))

(declare-fun m!4140499 () Bool)

(assert (=> b!3637912 m!4140499))

(declare-fun m!4140501 () Bool)

(assert (=> b!3637908 m!4140501))

(declare-fun m!4140503 () Bool)

(assert (=> b!3637908 m!4140503))

(declare-fun m!4140505 () Bool)

(assert (=> b!3637908 m!4140505))

(declare-fun m!4140507 () Bool)

(assert (=> b!3637908 m!4140507))

(declare-fun m!4140509 () Bool)

(assert (=> b!3637908 m!4140509))

(declare-fun m!4140511 () Bool)

(assert (=> b!3637908 m!4140511))

(declare-fun m!4140513 () Bool)

(assert (=> b!3637908 m!4140513))

(assert (=> b!3637908 m!4140509))

(declare-fun m!4140515 () Bool)

(assert (=> b!3637896 m!4140515))

(declare-fun m!4140517 () Bool)

(assert (=> b!3637899 m!4140517))

(declare-fun m!4140519 () Bool)

(assert (=> b!3637918 m!4140519))

(declare-fun m!4140521 () Bool)

(assert (=> b!3637905 m!4140521))

(declare-fun m!4140523 () Bool)

(assert (=> b!3637905 m!4140523))

(declare-fun m!4140525 () Bool)

(assert (=> b!3637917 m!4140525))

(declare-fun m!4140527 () Bool)

(assert (=> b!3637917 m!4140527))

(declare-fun m!4140529 () Bool)

(assert (=> b!3637903 m!4140529))

(assert (=> b!3637903 m!4140529))

(declare-fun m!4140531 () Bool)

(assert (=> b!3637903 m!4140531))

(declare-fun m!4140533 () Bool)

(assert (=> b!3637916 m!4140533))

(declare-fun m!4140535 () Bool)

(assert (=> b!3637901 m!4140535))

(declare-fun m!4140537 () Bool)

(assert (=> b!3637901 m!4140537))

(declare-fun m!4140539 () Bool)

(assert (=> b!3637914 m!4140539))

(declare-fun m!4140541 () Bool)

(assert (=> b!3637914 m!4140541))

(declare-fun m!4140543 () Bool)

(assert (=> b!3637914 m!4140543))

(assert (=> b!3637914 m!4140543))

(declare-fun m!4140545 () Bool)

(assert (=> b!3637914 m!4140545))

(declare-fun m!4140547 () Bool)

(assert (=> b!3637893 m!4140547))

(assert (=> b!3637915 m!4140471))

(assert (=> b!3637915 m!4140471))

(declare-fun m!4140549 () Bool)

(assert (=> b!3637915 m!4140549))

(assert (=> b!3637915 m!4140549))

(declare-fun m!4140551 () Bool)

(assert (=> b!3637915 m!4140551))

(declare-fun m!4140553 () Bool)

(assert (=> b!3637915 m!4140553))

(declare-fun m!4140555 () Bool)

(assert (=> b!3637910 m!4140555))

(declare-fun m!4140557 () Bool)

(assert (=> b!3637910 m!4140557))

(declare-fun m!4140559 () Bool)

(assert (=> b!3637910 m!4140559))

(check-sat (not b!3637899) b_and!267833 (not b!3637904) (not b!3637885) (not b!3637896) (not b!3637911) (not b!3637912) b_and!267827 b_and!267835 (not b!3637903) (not b!3637905) tp_is_empty!18049 (not b!3637893) (not b!3637891) (not b_next!96003) (not b!3637888) (not b!3637901) (not b!3637909) (not b!3637897) (not b!3637916) (not b!3637887) (not b_next!95995) b_and!267837 (not b!3637908) (not b_next!95993) (not b_next!95997) (not b!3637913) b_and!267831 b_and!267839 (not b!3637886) (not b!3637917) (not b_next!95999) (not b_next!96007) b_and!267829 (not b_next!96005) (not b!3637915) (not b!3637902) (not start!339590) (not b_next!96001) (not b!3637907) (not b!3637910) b_and!267841 (not b!3637914) (not b!3637918) (not b!3637889))
(check-sat (not b_next!96003) b_and!267833 b_and!267831 b_and!267827 b_and!267835 b_and!267839 (not b_next!96001) b_and!267841 (not b_next!95995) b_and!267837 (not b_next!95993) (not b_next!95997) (not b_next!95999) (not b_next!96007) b_and!267829 (not b_next!96005))
(get-model)

(declare-fun b!3638004 () Bool)

(declare-fun e!2251978 () Bool)

(declare-fun e!2251983 () Bool)

(assert (=> b!3638004 (= e!2251978 e!2251983)))

(declare-fun res!1474148 () Bool)

(declare-fun nullable!3637 (Regex!10483) Bool)

(assert (=> b!3638004 (= res!1474148 (not (nullable!3637 (reg!10812 (regex!5724 rule!403)))))))

(assert (=> b!3638004 (=> (not res!1474148) (not e!2251983))))

(declare-fun bm!263023 () Bool)

(declare-fun call!263028 () Bool)

(declare-fun call!263029 () Bool)

(assert (=> bm!263023 (= call!263028 call!263029)))

(declare-fun b!3638005 () Bool)

(assert (=> b!3638005 (= e!2251983 call!263029)))

(declare-fun b!3638006 () Bool)

(declare-fun e!2251982 () Bool)

(declare-fun call!263030 () Bool)

(assert (=> b!3638006 (= e!2251982 call!263030)))

(declare-fun b!3638007 () Bool)

(declare-fun e!2251981 () Bool)

(assert (=> b!3638007 (= e!2251981 e!2251982)))

(declare-fun res!1474150 () Bool)

(assert (=> b!3638007 (=> (not res!1474150) (not e!2251982))))

(assert (=> b!3638007 (= res!1474150 call!263028)))

(declare-fun b!3638008 () Bool)

(declare-fun e!2251984 () Bool)

(assert (=> b!3638008 (= e!2251984 call!263028)))

(declare-fun b!3638009 () Bool)

(declare-fun res!1474147 () Bool)

(assert (=> b!3638009 (=> res!1474147 e!2251981)))

(assert (=> b!3638009 (= res!1474147 (not ((_ is Concat!16438) (regex!5724 rule!403))))))

(declare-fun e!2251980 () Bool)

(assert (=> b!3638009 (= e!2251980 e!2251981)))

(declare-fun d!1069785 () Bool)

(declare-fun res!1474149 () Bool)

(declare-fun e!2251979 () Bool)

(assert (=> d!1069785 (=> res!1474149 e!2251979)))

(assert (=> d!1069785 (= res!1474149 ((_ is ElementMatch!10483) (regex!5724 rule!403)))))

(assert (=> d!1069785 (= (validRegex!4799 (regex!5724 rule!403)) e!2251979)))

(declare-fun b!3638003 () Bool)

(assert (=> b!3638003 (= e!2251978 e!2251980)))

(declare-fun c!629133 () Bool)

(assert (=> b!3638003 (= c!629133 ((_ is Union!10483) (regex!5724 rule!403)))))

(declare-fun c!629134 () Bool)

(declare-fun bm!263024 () Bool)

(assert (=> bm!263024 (= call!263029 (validRegex!4799 (ite c!629134 (reg!10812 (regex!5724 rule!403)) (ite c!629133 (regTwo!21479 (regex!5724 rule!403)) (regOne!21478 (regex!5724 rule!403))))))))

(declare-fun b!3638010 () Bool)

(assert (=> b!3638010 (= e!2251979 e!2251978)))

(assert (=> b!3638010 (= c!629134 ((_ is Star!10483) (regex!5724 rule!403)))))

(declare-fun bm!263025 () Bool)

(assert (=> bm!263025 (= call!263030 (validRegex!4799 (ite c!629133 (regOne!21479 (regex!5724 rule!403)) (regTwo!21478 (regex!5724 rule!403)))))))

(declare-fun b!3638011 () Bool)

(declare-fun res!1474146 () Bool)

(assert (=> b!3638011 (=> (not res!1474146) (not e!2251984))))

(assert (=> b!3638011 (= res!1474146 call!263030)))

(assert (=> b!3638011 (= e!2251980 e!2251984)))

(assert (= (and d!1069785 (not res!1474149)) b!3638010))

(assert (= (and b!3638010 c!629134) b!3638004))

(assert (= (and b!3638010 (not c!629134)) b!3638003))

(assert (= (and b!3638004 res!1474148) b!3638005))

(assert (= (and b!3638003 c!629133) b!3638011))

(assert (= (and b!3638003 (not c!629133)) b!3638009))

(assert (= (and b!3638011 res!1474146) b!3638008))

(assert (= (and b!3638009 (not res!1474147)) b!3638007))

(assert (= (and b!3638007 res!1474150) b!3638006))

(assert (= (or b!3638011 b!3638006) bm!263025))

(assert (= (or b!3638008 b!3638007) bm!263023))

(assert (= (or b!3638005 bm!263023) bm!263024))

(declare-fun m!4140593 () Bool)

(assert (=> b!3638004 m!4140593))

(declare-fun m!4140595 () Bool)

(assert (=> bm!263024 m!4140595))

(declare-fun m!4140597 () Bool)

(assert (=> bm!263025 m!4140597))

(assert (=> b!3637899 d!1069785))

(declare-fun d!1069797 () Bool)

(declare-fun res!1474161 () Bool)

(declare-fun e!2251997 () Bool)

(assert (=> d!1069797 (=> (not res!1474161) (not e!2251997))))

(assert (=> d!1069797 (= res!1474161 (not (isEmpty!22692 (originalCharacters!6438 token!511))))))

(assert (=> d!1069797 (= (inv!51766 token!511) e!2251997)))

(declare-fun b!3638035 () Bool)

(declare-fun res!1474162 () Bool)

(assert (=> b!3638035 (=> (not res!1474162) (not e!2251997))))

(declare-fun dynLambda!16664 (Int TokenValue!5954) BalanceConc!23020)

(assert (=> b!3638035 (= res!1474162 (= (originalCharacters!6438 token!511) (list!14186 (dynLambda!16664 (toChars!7875 (transformation!5724 (rule!8502 token!511))) (value!183594 token!511)))))))

(declare-fun b!3638036 () Bool)

(assert (=> b!3638036 (= e!2251997 (= (size!29255 token!511) (size!29256 (originalCharacters!6438 token!511))))))

(assert (= (and d!1069797 res!1474161) b!3638035))

(assert (= (and b!3638035 res!1474162) b!3638036))

(declare-fun b_lambda!107813 () Bool)

(assert (=> (not b_lambda!107813) (not b!3638035)))

(declare-fun t!296134 () Bool)

(declare-fun tb!209429 () Bool)

(assert (=> (and b!3637900 (= (toChars!7875 (transformation!5724 anOtherTypeRule!33)) (toChars!7875 (transformation!5724 (rule!8502 token!511)))) t!296134) tb!209429))

(declare-fun b!3638044 () Bool)

(declare-fun e!2252003 () Bool)

(declare-fun tp!1110096 () Bool)

(declare-fun inv!51770 (Conc!11703) Bool)

(assert (=> b!3638044 (= e!2252003 (and (inv!51770 (c!629111 (dynLambda!16664 (toChars!7875 (transformation!5724 (rule!8502 token!511))) (value!183594 token!511)))) tp!1110096))))

(declare-fun result!255092 () Bool)

(declare-fun inv!51771 (BalanceConc!23020) Bool)

(assert (=> tb!209429 (= result!255092 (and (inv!51771 (dynLambda!16664 (toChars!7875 (transformation!5724 (rule!8502 token!511))) (value!183594 token!511))) e!2252003))))

(assert (= tb!209429 b!3638044))

(declare-fun m!4140615 () Bool)

(assert (=> b!3638044 m!4140615))

(declare-fun m!4140617 () Bool)

(assert (=> tb!209429 m!4140617))

(assert (=> b!3638035 t!296134))

(declare-fun b_and!267851 () Bool)

(assert (= b_and!267829 (and (=> t!296134 result!255092) b_and!267851)))

(declare-fun t!296136 () Bool)

(declare-fun tb!209431 () Bool)

(assert (=> (and b!3637892 (= (toChars!7875 (transformation!5724 (rule!8502 token!511))) (toChars!7875 (transformation!5724 (rule!8502 token!511)))) t!296136) tb!209431))

(declare-fun result!255096 () Bool)

(assert (= result!255096 result!255092))

(assert (=> b!3638035 t!296136))

(declare-fun b_and!267853 () Bool)

(assert (= b_and!267833 (and (=> t!296136 result!255096) b_and!267853)))

(declare-fun tb!209433 () Bool)

(declare-fun t!296138 () Bool)

(assert (=> (and b!3637890 (= (toChars!7875 (transformation!5724 (h!43757 rules!3307))) (toChars!7875 (transformation!5724 (rule!8502 token!511)))) t!296138) tb!209433))

(declare-fun result!255098 () Bool)

(assert (= result!255098 result!255092))

(assert (=> b!3638035 t!296138))

(declare-fun b_and!267855 () Bool)

(assert (= b_and!267837 (and (=> t!296138 result!255098) b_and!267855)))

(declare-fun tb!209435 () Bool)

(declare-fun t!296140 () Bool)

(assert (=> (and b!3637898 (= (toChars!7875 (transformation!5724 rule!403)) (toChars!7875 (transformation!5724 (rule!8502 token!511)))) t!296140) tb!209435))

(declare-fun result!255100 () Bool)

(assert (= result!255100 result!255092))

(assert (=> b!3638035 t!296140))

(declare-fun b_and!267857 () Bool)

(assert (= b_and!267841 (and (=> t!296140 result!255100) b_and!267857)))

(declare-fun m!4140627 () Bool)

(assert (=> d!1069797 m!4140627))

(declare-fun m!4140629 () Bool)

(assert (=> b!3638035 m!4140629))

(assert (=> b!3638035 m!4140629))

(declare-fun m!4140631 () Bool)

(assert (=> b!3638035 m!4140631))

(declare-fun m!4140633 () Bool)

(assert (=> b!3638036 m!4140633))

(assert (=> start!339590 d!1069797))

(declare-fun d!1069813 () Bool)

(declare-fun res!1474185 () Bool)

(declare-fun e!2252023 () Bool)

(assert (=> d!1069813 (=> res!1474185 e!2252023)))

(assert (=> d!1069813 (= res!1474185 (not ((_ is Cons!38337) rules!3307)))))

(assert (=> d!1069813 (= (sepAndNonSepRulesDisjointChars!1892 rules!3307 rules!3307) e!2252023)))

(declare-fun b!3638064 () Bool)

(declare-fun e!2252024 () Bool)

(assert (=> b!3638064 (= e!2252023 e!2252024)))

(declare-fun res!1474186 () Bool)

(assert (=> b!3638064 (=> (not res!1474186) (not e!2252024))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!861 (Rule!11248 List!38461) Bool)

(assert (=> b!3638064 (= res!1474186 (ruleDisjointCharsFromAllFromOtherType!861 (h!43757 rules!3307) rules!3307))))

(declare-fun b!3638065 () Bool)

(assert (=> b!3638065 (= e!2252024 (sepAndNonSepRulesDisjointChars!1892 rules!3307 (t!296124 rules!3307)))))

(assert (= (and d!1069813 (not res!1474185)) b!3638064))

(assert (= (and b!3638064 res!1474186) b!3638065))

(declare-fun m!4140645 () Bool)

(assert (=> b!3638064 m!4140645))

(declare-fun m!4140647 () Bool)

(assert (=> b!3638065 m!4140647))

(assert (=> b!3637916 d!1069813))

(declare-fun d!1069819 () Bool)

(assert (=> d!1069819 (= (inv!51763 (tag!6468 (h!43757 rules!3307))) (= (mod (str.len (value!183593 (tag!6468 (h!43757 rules!3307)))) 2) 0))))

(assert (=> b!3637917 d!1069819))

(declare-fun d!1069821 () Bool)

(declare-fun res!1474189 () Bool)

(declare-fun e!2252027 () Bool)

(assert (=> d!1069821 (=> (not res!1474189) (not e!2252027))))

(declare-fun semiInverseModEq!2437 (Int Int) Bool)

(assert (=> d!1069821 (= res!1474189 (semiInverseModEq!2437 (toChars!7875 (transformation!5724 (h!43757 rules!3307))) (toValue!8016 (transformation!5724 (h!43757 rules!3307)))))))

(assert (=> d!1069821 (= (inv!51767 (transformation!5724 (h!43757 rules!3307))) e!2252027)))

(declare-fun b!3638068 () Bool)

(declare-fun equivClasses!2336 (Int Int) Bool)

(assert (=> b!3638068 (= e!2252027 (equivClasses!2336 (toChars!7875 (transformation!5724 (h!43757 rules!3307))) (toValue!8016 (transformation!5724 (h!43757 rules!3307)))))))

(assert (= (and d!1069821 res!1474189) b!3638068))

(declare-fun m!4140651 () Bool)

(assert (=> d!1069821 m!4140651))

(declare-fun m!4140653 () Bool)

(assert (=> b!3638068 m!4140653))

(assert (=> b!3637917 d!1069821))

(declare-fun b!3638079 () Bool)

(declare-fun e!2252034 () Bool)

(declare-fun inv!16 (TokenValue!5954) Bool)

(assert (=> b!3638079 (= e!2252034 (inv!16 (value!183594 token!511)))))

(declare-fun b!3638080 () Bool)

(declare-fun e!2252035 () Bool)

(assert (=> b!3638080 (= e!2252034 e!2252035)))

(declare-fun c!629143 () Bool)

(assert (=> b!3638080 (= c!629143 ((_ is IntegerValue!17863) (value!183594 token!511)))))

(declare-fun b!3638081 () Bool)

(declare-fun e!2252036 () Bool)

(declare-fun inv!15 (TokenValue!5954) Bool)

(assert (=> b!3638081 (= e!2252036 (inv!15 (value!183594 token!511)))))

(declare-fun d!1069825 () Bool)

(declare-fun c!629144 () Bool)

(assert (=> d!1069825 (= c!629144 ((_ is IntegerValue!17862) (value!183594 token!511)))))

(assert (=> d!1069825 (= (inv!21 (value!183594 token!511)) e!2252034)))

(declare-fun b!3638082 () Bool)

(declare-fun inv!17 (TokenValue!5954) Bool)

(assert (=> b!3638082 (= e!2252035 (inv!17 (value!183594 token!511)))))

(declare-fun b!3638083 () Bool)

(declare-fun res!1474192 () Bool)

(assert (=> b!3638083 (=> res!1474192 e!2252036)))

(assert (=> b!3638083 (= res!1474192 (not ((_ is IntegerValue!17864) (value!183594 token!511))))))

(assert (=> b!3638083 (= e!2252035 e!2252036)))

(assert (= (and d!1069825 c!629144) b!3638079))

(assert (= (and d!1069825 (not c!629144)) b!3638080))

(assert (= (and b!3638080 c!629143) b!3638082))

(assert (= (and b!3638080 (not c!629143)) b!3638083))

(assert (= (and b!3638083 (not res!1474192)) b!3638081))

(declare-fun m!4140655 () Bool)

(assert (=> b!3638079 m!4140655))

(declare-fun m!4140657 () Bool)

(assert (=> b!3638081 m!4140657))

(declare-fun m!4140659 () Bool)

(assert (=> b!3638082 m!4140659))

(assert (=> b!3637896 d!1069825))

(declare-fun d!1069827 () Bool)

(declare-fun lt!1259067 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5514 (List!38460) (InoxSet C!21152))

(assert (=> d!1069827 (= lt!1259067 (select (content!5514 lt!1259038) lt!1259034))))

(declare-fun e!2252041 () Bool)

(assert (=> d!1069827 (= lt!1259067 e!2252041)))

(declare-fun res!1474197 () Bool)

(assert (=> d!1069827 (=> (not res!1474197) (not e!2252041))))

(assert (=> d!1069827 (= res!1474197 ((_ is Cons!38336) lt!1259038))))

(assert (=> d!1069827 (= (contains!7513 lt!1259038 lt!1259034) lt!1259067)))

(declare-fun b!3638088 () Bool)

(declare-fun e!2252042 () Bool)

(assert (=> b!3638088 (= e!2252041 e!2252042)))

(declare-fun res!1474198 () Bool)

(assert (=> b!3638088 (=> res!1474198 e!2252042)))

(assert (=> b!3638088 (= res!1474198 (= (h!43756 lt!1259038) lt!1259034))))

(declare-fun b!3638089 () Bool)

(assert (=> b!3638089 (= e!2252042 (contains!7513 (t!296123 lt!1259038) lt!1259034))))

(assert (= (and d!1069827 res!1474197) b!3638088))

(assert (= (and b!3638088 (not res!1474198)) b!3638089))

(declare-fun m!4140661 () Bool)

(assert (=> d!1069827 m!4140661))

(declare-fun m!4140663 () Bool)

(assert (=> d!1069827 m!4140663))

(declare-fun m!4140665 () Bool)

(assert (=> b!3638089 m!4140665))

(assert (=> b!3637918 d!1069827))

(declare-fun d!1069829 () Bool)

(declare-fun isEmpty!22695 (Option!8077) Bool)

(assert (=> d!1069829 (= (isDefined!6309 lt!1259045) (not (isEmpty!22695 lt!1259045)))))

(declare-fun bs!571859 () Bool)

(assert (= bs!571859 d!1069829))

(declare-fun m!4140667 () Bool)

(assert (=> bs!571859 m!4140667))

(assert (=> b!3637914 d!1069829))

(declare-fun b!3638143 () Bool)

(declare-fun res!1474235 () Bool)

(declare-fun e!2252067 () Bool)

(assert (=> b!3638143 (=> (not res!1474235) (not e!2252067))))

(declare-fun lt!1259098 () Option!8077)

(assert (=> b!3638143 (= res!1474235 (= (++!9540 (list!14186 (charsOf!3738 (_1!22236 (get!12548 lt!1259098)))) (_2!22236 (get!12548 lt!1259098))) lt!1259038))))

(declare-fun b!3638144 () Bool)

(declare-fun res!1474240 () Bool)

(assert (=> b!3638144 (=> (not res!1474240) (not e!2252067))))

(assert (=> b!3638144 (= res!1474240 (= (value!183594 (_1!22236 (get!12548 lt!1259098))) (apply!9226 (transformation!5724 (rule!8502 (_1!22236 (get!12548 lt!1259098)))) (seqFromList!4273 (originalCharacters!6438 (_1!22236 (get!12548 lt!1259098)))))))))

(declare-fun b!3638145 () Bool)

(declare-fun e!2252069 () Option!8077)

(declare-fun lt!1259102 () Option!8077)

(declare-fun lt!1259099 () Option!8077)

(assert (=> b!3638145 (= e!2252069 (ite (and ((_ is None!8076) lt!1259102) ((_ is None!8076) lt!1259099)) None!8076 (ite ((_ is None!8076) lt!1259099) lt!1259102 (ite ((_ is None!8076) lt!1259102) lt!1259099 (ite (>= (size!29255 (_1!22236 (v!37896 lt!1259102))) (size!29255 (_1!22236 (v!37896 lt!1259099)))) lt!1259102 lt!1259099)))))))

(declare-fun call!263037 () Option!8077)

(assert (=> b!3638145 (= lt!1259102 call!263037)))

(assert (=> b!3638145 (= lt!1259099 (maxPrefix!2847 thiss!23823 (t!296124 rules!3307) lt!1259038))))

(declare-fun bm!263032 () Bool)

(assert (=> bm!263032 (= call!263037 (maxPrefixOneRule!1985 thiss!23823 (h!43757 rules!3307) lt!1259038))))

(declare-fun b!3638147 () Bool)

(declare-fun res!1474237 () Bool)

(assert (=> b!3638147 (=> (not res!1474237) (not e!2252067))))

(assert (=> b!3638147 (= res!1474237 (matchR!5052 (regex!5724 (rule!8502 (_1!22236 (get!12548 lt!1259098)))) (list!14186 (charsOf!3738 (_1!22236 (get!12548 lt!1259098))))))))

(declare-fun b!3638148 () Bool)

(assert (=> b!3638148 (= e!2252067 (contains!7514 rules!3307 (rule!8502 (_1!22236 (get!12548 lt!1259098)))))))

(declare-fun b!3638149 () Bool)

(declare-fun e!2252068 () Bool)

(assert (=> b!3638149 (= e!2252068 e!2252067)))

(declare-fun res!1474239 () Bool)

(assert (=> b!3638149 (=> (not res!1474239) (not e!2252067))))

(assert (=> b!3638149 (= res!1474239 (isDefined!6309 lt!1259098))))

(declare-fun b!3638150 () Bool)

(declare-fun res!1474234 () Bool)

(assert (=> b!3638150 (=> (not res!1474234) (not e!2252067))))

(assert (=> b!3638150 (= res!1474234 (= (list!14186 (charsOf!3738 (_1!22236 (get!12548 lt!1259098)))) (originalCharacters!6438 (_1!22236 (get!12548 lt!1259098)))))))

(declare-fun b!3638151 () Bool)

(assert (=> b!3638151 (= e!2252069 call!263037)))

(declare-fun d!1069831 () Bool)

(assert (=> d!1069831 e!2252068))

(declare-fun res!1474238 () Bool)

(assert (=> d!1069831 (=> res!1474238 e!2252068)))

(assert (=> d!1069831 (= res!1474238 (isEmpty!22695 lt!1259098))))

(assert (=> d!1069831 (= lt!1259098 e!2252069)))

(declare-fun c!629153 () Bool)

(assert (=> d!1069831 (= c!629153 (and ((_ is Cons!38337) rules!3307) ((_ is Nil!38337) (t!296124 rules!3307))))))

(declare-fun lt!1259100 () Unit!55166)

(declare-fun lt!1259101 () Unit!55166)

(assert (=> d!1069831 (= lt!1259100 lt!1259101)))

(assert (=> d!1069831 (isPrefix!3087 lt!1259038 lt!1259038)))

(declare-fun lemmaIsPrefixRefl!1958 (List!38460 List!38460) Unit!55166)

(assert (=> d!1069831 (= lt!1259101 (lemmaIsPrefixRefl!1958 lt!1259038 lt!1259038))))

(declare-fun rulesValidInductive!2023 (LexerInterface!5313 List!38461) Bool)

(assert (=> d!1069831 (rulesValidInductive!2023 thiss!23823 rules!3307)))

(assert (=> d!1069831 (= (maxPrefix!2847 thiss!23823 rules!3307 lt!1259038) lt!1259098)))

(declare-fun b!3638146 () Bool)

(declare-fun res!1474236 () Bool)

(assert (=> b!3638146 (=> (not res!1474236) (not e!2252067))))

(assert (=> b!3638146 (= res!1474236 (< (size!29256 (_2!22236 (get!12548 lt!1259098))) (size!29256 lt!1259038)))))

(assert (= (and d!1069831 c!629153) b!3638151))

(assert (= (and d!1069831 (not c!629153)) b!3638145))

(assert (= (or b!3638151 b!3638145) bm!263032))

(assert (= (and d!1069831 (not res!1474238)) b!3638149))

(assert (= (and b!3638149 res!1474239) b!3638150))

(assert (= (and b!3638150 res!1474234) b!3638146))

(assert (= (and b!3638146 res!1474236) b!3638143))

(assert (= (and b!3638143 res!1474235) b!3638144))

(assert (= (and b!3638144 res!1474240) b!3638147))

(assert (= (and b!3638147 res!1474237) b!3638148))

(declare-fun m!4140731 () Bool)

(assert (=> b!3638148 m!4140731))

(declare-fun m!4140733 () Bool)

(assert (=> b!3638148 m!4140733))

(declare-fun m!4140735 () Bool)

(assert (=> b!3638149 m!4140735))

(declare-fun m!4140737 () Bool)

(assert (=> bm!263032 m!4140737))

(assert (=> b!3638143 m!4140731))

(declare-fun m!4140739 () Bool)

(assert (=> b!3638143 m!4140739))

(assert (=> b!3638143 m!4140739))

(declare-fun m!4140741 () Bool)

(assert (=> b!3638143 m!4140741))

(assert (=> b!3638143 m!4140741))

(declare-fun m!4140743 () Bool)

(assert (=> b!3638143 m!4140743))

(declare-fun m!4140745 () Bool)

(assert (=> b!3638145 m!4140745))

(assert (=> b!3638147 m!4140731))

(assert (=> b!3638147 m!4140739))

(assert (=> b!3638147 m!4140739))

(assert (=> b!3638147 m!4140741))

(assert (=> b!3638147 m!4140741))

(declare-fun m!4140747 () Bool)

(assert (=> b!3638147 m!4140747))

(declare-fun m!4140749 () Bool)

(assert (=> d!1069831 m!4140749))

(declare-fun m!4140751 () Bool)

(assert (=> d!1069831 m!4140751))

(declare-fun m!4140753 () Bool)

(assert (=> d!1069831 m!4140753))

(declare-fun m!4140755 () Bool)

(assert (=> d!1069831 m!4140755))

(assert (=> b!3638144 m!4140731))

(declare-fun m!4140757 () Bool)

(assert (=> b!3638144 m!4140757))

(assert (=> b!3638144 m!4140757))

(declare-fun m!4140759 () Bool)

(assert (=> b!3638144 m!4140759))

(assert (=> b!3638146 m!4140731))

(declare-fun m!4140761 () Bool)

(assert (=> b!3638146 m!4140761))

(declare-fun m!4140763 () Bool)

(assert (=> b!3638146 m!4140763))

(assert (=> b!3638150 m!4140731))

(assert (=> b!3638150 m!4140739))

(assert (=> b!3638150 m!4140739))

(assert (=> b!3638150 m!4140741))

(assert (=> b!3637914 d!1069831))

(declare-fun d!1069845 () Bool)

(declare-fun list!14188 (Conc!11703) List!38460)

(assert (=> d!1069845 (= (list!14186 (charsOf!3738 token!511)) (list!14188 (c!629111 (charsOf!3738 token!511))))))

(declare-fun bs!571862 () Bool)

(assert (= bs!571862 d!1069845))

(declare-fun m!4140765 () Bool)

(assert (=> bs!571862 m!4140765))

(assert (=> b!3637914 d!1069845))

(declare-fun d!1069847 () Bool)

(declare-fun lt!1259109 () BalanceConc!23020)

(assert (=> d!1069847 (= (list!14186 lt!1259109) (originalCharacters!6438 token!511))))

(assert (=> d!1069847 (= lt!1259109 (dynLambda!16664 (toChars!7875 (transformation!5724 (rule!8502 token!511))) (value!183594 token!511)))))

(assert (=> d!1069847 (= (charsOf!3738 token!511) lt!1259109)))

(declare-fun b_lambda!107817 () Bool)

(assert (=> (not b_lambda!107817) (not d!1069847)))

(assert (=> d!1069847 t!296134))

(declare-fun b_and!267867 () Bool)

(assert (= b_and!267851 (and (=> t!296134 result!255092) b_and!267867)))

(assert (=> d!1069847 t!296136))

(declare-fun b_and!267869 () Bool)

(assert (= b_and!267853 (and (=> t!296136 result!255096) b_and!267869)))

(assert (=> d!1069847 t!296138))

(declare-fun b_and!267871 () Bool)

(assert (= b_and!267855 (and (=> t!296138 result!255098) b_and!267871)))

(assert (=> d!1069847 t!296140))

(declare-fun b_and!267873 () Bool)

(assert (= b_and!267857 (and (=> t!296140 result!255100) b_and!267873)))

(declare-fun m!4140775 () Bool)

(assert (=> d!1069847 m!4140775))

(assert (=> d!1069847 m!4140629))

(assert (=> b!3637914 d!1069847))

(declare-fun d!1069855 () Bool)

(assert (=> d!1069855 (= (isEmpty!22693 rules!3307) ((_ is Nil!38337) rules!3307))))

(assert (=> b!3637893 d!1069855))

(declare-fun d!1069857 () Bool)

(declare-fun e!2252111 () Bool)

(assert (=> d!1069857 e!2252111))

(declare-fun c!629171 () Bool)

(assert (=> d!1069857 (= c!629171 ((_ is EmptyExpr!10483) (regex!5724 lt!1259044)))))

(declare-fun lt!1259112 () Bool)

(declare-fun e!2252114 () Bool)

(assert (=> d!1069857 (= lt!1259112 e!2252114)))

(declare-fun c!629170 () Bool)

(assert (=> d!1069857 (= c!629170 (isEmpty!22692 (list!14186 (charsOf!3738 (_1!22236 lt!1259024)))))))

(assert (=> d!1069857 (validRegex!4799 (regex!5724 lt!1259044))))

(assert (=> d!1069857 (= (matchR!5052 (regex!5724 lt!1259044) (list!14186 (charsOf!3738 (_1!22236 lt!1259024)))) lt!1259112)))

(declare-fun b!3638213 () Bool)

(declare-fun derivativeStep!3186 (Regex!10483 C!21152) Regex!10483)

(declare-fun tail!5635 (List!38460) List!38460)

(assert (=> b!3638213 (= e!2252114 (matchR!5052 (derivativeStep!3186 (regex!5724 lt!1259044) (head!7718 (list!14186 (charsOf!3738 (_1!22236 lt!1259024))))) (tail!5635 (list!14186 (charsOf!3738 (_1!22236 lt!1259024))))))))

(declare-fun b!3638214 () Bool)

(declare-fun call!263049 () Bool)

(assert (=> b!3638214 (= e!2252111 (= lt!1259112 call!263049))))

(declare-fun b!3638215 () Bool)

(declare-fun res!1474272 () Bool)

(declare-fun e!2252112 () Bool)

(assert (=> b!3638215 (=> (not res!1474272) (not e!2252112))))

(assert (=> b!3638215 (= res!1474272 (not call!263049))))

(declare-fun b!3638216 () Bool)

(assert (=> b!3638216 (= e!2252112 (= (head!7718 (list!14186 (charsOf!3738 (_1!22236 lt!1259024)))) (c!629110 (regex!5724 lt!1259044))))))

(declare-fun b!3638217 () Bool)

(declare-fun res!1474277 () Bool)

(declare-fun e!2252108 () Bool)

(assert (=> b!3638217 (=> res!1474277 e!2252108)))

(assert (=> b!3638217 (= res!1474277 (not (isEmpty!22692 (tail!5635 (list!14186 (charsOf!3738 (_1!22236 lt!1259024)))))))))

(declare-fun b!3638218 () Bool)

(declare-fun e!2252110 () Bool)

(assert (=> b!3638218 (= e!2252110 (not lt!1259112))))

(declare-fun b!3638219 () Bool)

(declare-fun e!2252113 () Bool)

(assert (=> b!3638219 (= e!2252113 e!2252108)))

(declare-fun res!1474275 () Bool)

(assert (=> b!3638219 (=> res!1474275 e!2252108)))

(assert (=> b!3638219 (= res!1474275 call!263049)))

(declare-fun b!3638220 () Bool)

(assert (=> b!3638220 (= e!2252108 (not (= (head!7718 (list!14186 (charsOf!3738 (_1!22236 lt!1259024)))) (c!629110 (regex!5724 lt!1259044)))))))

(declare-fun b!3638221 () Bool)

(declare-fun res!1474276 () Bool)

(assert (=> b!3638221 (=> (not res!1474276) (not e!2252112))))

(assert (=> b!3638221 (= res!1474276 (isEmpty!22692 (tail!5635 (list!14186 (charsOf!3738 (_1!22236 lt!1259024))))))))

(declare-fun b!3638222 () Bool)

(assert (=> b!3638222 (= e!2252114 (nullable!3637 (regex!5724 lt!1259044)))))

(declare-fun bm!263044 () Bool)

(assert (=> bm!263044 (= call!263049 (isEmpty!22692 (list!14186 (charsOf!3738 (_1!22236 lt!1259024)))))))

(declare-fun b!3638223 () Bool)

(assert (=> b!3638223 (= e!2252111 e!2252110)))

(declare-fun c!629169 () Bool)

(assert (=> b!3638223 (= c!629169 ((_ is EmptyLang!10483) (regex!5724 lt!1259044)))))

(declare-fun b!3638224 () Bool)

(declare-fun res!1474274 () Bool)

(declare-fun e!2252109 () Bool)

(assert (=> b!3638224 (=> res!1474274 e!2252109)))

(assert (=> b!3638224 (= res!1474274 (not ((_ is ElementMatch!10483) (regex!5724 lt!1259044))))))

(assert (=> b!3638224 (= e!2252110 e!2252109)))

(declare-fun b!3638225 () Bool)

(assert (=> b!3638225 (= e!2252109 e!2252113)))

(declare-fun res!1474273 () Bool)

(assert (=> b!3638225 (=> (not res!1474273) (not e!2252113))))

(assert (=> b!3638225 (= res!1474273 (not lt!1259112))))

(declare-fun b!3638226 () Bool)

(declare-fun res!1474279 () Bool)

(assert (=> b!3638226 (=> res!1474279 e!2252109)))

(assert (=> b!3638226 (= res!1474279 e!2252112)))

(declare-fun res!1474278 () Bool)

(assert (=> b!3638226 (=> (not res!1474278) (not e!2252112))))

(assert (=> b!3638226 (= res!1474278 lt!1259112)))

(assert (= (and d!1069857 c!629170) b!3638222))

(assert (= (and d!1069857 (not c!629170)) b!3638213))

(assert (= (and d!1069857 c!629171) b!3638214))

(assert (= (and d!1069857 (not c!629171)) b!3638223))

(assert (= (and b!3638223 c!629169) b!3638218))

(assert (= (and b!3638223 (not c!629169)) b!3638224))

(assert (= (and b!3638224 (not res!1474274)) b!3638226))

(assert (= (and b!3638226 res!1474278) b!3638215))

(assert (= (and b!3638215 res!1474272) b!3638221))

(assert (= (and b!3638221 res!1474276) b!3638216))

(assert (= (and b!3638226 (not res!1474279)) b!3638225))

(assert (= (and b!3638225 res!1474273) b!3638219))

(assert (= (and b!3638219 (not res!1474275)) b!3638217))

(assert (= (and b!3638217 (not res!1474277)) b!3638220))

(assert (= (or b!3638214 b!3638215 b!3638219) bm!263044))

(assert (=> b!3638220 m!4140549))

(declare-fun m!4140777 () Bool)

(assert (=> b!3638220 m!4140777))

(assert (=> b!3638217 m!4140549))

(declare-fun m!4140779 () Bool)

(assert (=> b!3638217 m!4140779))

(assert (=> b!3638217 m!4140779))

(declare-fun m!4140781 () Bool)

(assert (=> b!3638217 m!4140781))

(assert (=> b!3638221 m!4140549))

(assert (=> b!3638221 m!4140779))

(assert (=> b!3638221 m!4140779))

(assert (=> b!3638221 m!4140781))

(declare-fun m!4140783 () Bool)

(assert (=> b!3638222 m!4140783))

(assert (=> d!1069857 m!4140549))

(declare-fun m!4140785 () Bool)

(assert (=> d!1069857 m!4140785))

(declare-fun m!4140787 () Bool)

(assert (=> d!1069857 m!4140787))

(assert (=> b!3638213 m!4140549))

(assert (=> b!3638213 m!4140777))

(assert (=> b!3638213 m!4140777))

(declare-fun m!4140789 () Bool)

(assert (=> b!3638213 m!4140789))

(assert (=> b!3638213 m!4140549))

(assert (=> b!3638213 m!4140779))

(assert (=> b!3638213 m!4140789))

(assert (=> b!3638213 m!4140779))

(declare-fun m!4140791 () Bool)

(assert (=> b!3638213 m!4140791))

(assert (=> b!3638216 m!4140549))

(assert (=> b!3638216 m!4140777))

(assert (=> bm!263044 m!4140549))

(assert (=> bm!263044 m!4140785))

(assert (=> b!3637915 d!1069857))

(declare-fun d!1069859 () Bool)

(assert (=> d!1069859 (= (list!14186 (charsOf!3738 (_1!22236 lt!1259024))) (list!14188 (c!629111 (charsOf!3738 (_1!22236 lt!1259024)))))))

(declare-fun bs!571864 () Bool)

(assert (= bs!571864 d!1069859))

(declare-fun m!4140793 () Bool)

(assert (=> bs!571864 m!4140793))

(assert (=> b!3637915 d!1069859))

(declare-fun d!1069861 () Bool)

(declare-fun lt!1259113 () BalanceConc!23020)

(assert (=> d!1069861 (= (list!14186 lt!1259113) (originalCharacters!6438 (_1!22236 lt!1259024)))))

(assert (=> d!1069861 (= lt!1259113 (dynLambda!16664 (toChars!7875 (transformation!5724 (rule!8502 (_1!22236 lt!1259024)))) (value!183594 (_1!22236 lt!1259024))))))

(assert (=> d!1069861 (= (charsOf!3738 (_1!22236 lt!1259024)) lt!1259113)))

(declare-fun b_lambda!107819 () Bool)

(assert (=> (not b_lambda!107819) (not d!1069861)))

(declare-fun tb!209445 () Bool)

(declare-fun t!296150 () Bool)

(assert (=> (and b!3637900 (= (toChars!7875 (transformation!5724 anOtherTypeRule!33)) (toChars!7875 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) t!296150) tb!209445))

(declare-fun b!3638227 () Bool)

(declare-fun e!2252115 () Bool)

(declare-fun tp!1110097 () Bool)

(assert (=> b!3638227 (= e!2252115 (and (inv!51770 (c!629111 (dynLambda!16664 (toChars!7875 (transformation!5724 (rule!8502 (_1!22236 lt!1259024)))) (value!183594 (_1!22236 lt!1259024))))) tp!1110097))))

(declare-fun result!255112 () Bool)

(assert (=> tb!209445 (= result!255112 (and (inv!51771 (dynLambda!16664 (toChars!7875 (transformation!5724 (rule!8502 (_1!22236 lt!1259024)))) (value!183594 (_1!22236 lt!1259024)))) e!2252115))))

(assert (= tb!209445 b!3638227))

(declare-fun m!4140795 () Bool)

(assert (=> b!3638227 m!4140795))

(declare-fun m!4140797 () Bool)

(assert (=> tb!209445 m!4140797))

(assert (=> d!1069861 t!296150))

(declare-fun b_and!267875 () Bool)

(assert (= b_and!267867 (and (=> t!296150 result!255112) b_and!267875)))

(declare-fun tb!209447 () Bool)

(declare-fun t!296152 () Bool)

(assert (=> (and b!3637892 (= (toChars!7875 (transformation!5724 (rule!8502 token!511))) (toChars!7875 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) t!296152) tb!209447))

(declare-fun result!255114 () Bool)

(assert (= result!255114 result!255112))

(assert (=> d!1069861 t!296152))

(declare-fun b_and!267877 () Bool)

(assert (= b_and!267869 (and (=> t!296152 result!255114) b_and!267877)))

(declare-fun t!296154 () Bool)

(declare-fun tb!209449 () Bool)

(assert (=> (and b!3637890 (= (toChars!7875 (transformation!5724 (h!43757 rules!3307))) (toChars!7875 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) t!296154) tb!209449))

(declare-fun result!255116 () Bool)

(assert (= result!255116 result!255112))

(assert (=> d!1069861 t!296154))

(declare-fun b_and!267879 () Bool)

(assert (= b_and!267871 (and (=> t!296154 result!255116) b_and!267879)))

(declare-fun tb!209451 () Bool)

(declare-fun t!296156 () Bool)

(assert (=> (and b!3637898 (= (toChars!7875 (transformation!5724 rule!403)) (toChars!7875 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) t!296156) tb!209451))

(declare-fun result!255118 () Bool)

(assert (= result!255118 result!255112))

(assert (=> d!1069861 t!296156))

(declare-fun b_and!267881 () Bool)

(assert (= b_and!267873 (and (=> t!296156 result!255118) b_and!267881)))

(declare-fun m!4140799 () Bool)

(assert (=> d!1069861 m!4140799))

(declare-fun m!4140801 () Bool)

(assert (=> d!1069861 m!4140801))

(assert (=> b!3637915 d!1069861))

(declare-fun d!1069863 () Bool)

(assert (=> d!1069863 (= (get!12549 lt!1259037) (v!37895 lt!1259037))))

(assert (=> b!3637915 d!1069863))

(declare-fun d!1069865 () Bool)

(declare-fun e!2252119 () Bool)

(assert (=> d!1069865 e!2252119))

(declare-fun c!629174 () Bool)

(assert (=> d!1069865 (= c!629174 ((_ is EmptyExpr!10483) (regex!5724 rule!403)))))

(declare-fun lt!1259114 () Bool)

(declare-fun e!2252122 () Bool)

(assert (=> d!1069865 (= lt!1259114 e!2252122)))

(declare-fun c!629173 () Bool)

(assert (=> d!1069865 (= c!629173 (isEmpty!22692 lt!1259038))))

(assert (=> d!1069865 (validRegex!4799 (regex!5724 rule!403))))

(assert (=> d!1069865 (= (matchR!5052 (regex!5724 rule!403) lt!1259038) lt!1259114)))

(declare-fun b!3638228 () Bool)

(assert (=> b!3638228 (= e!2252122 (matchR!5052 (derivativeStep!3186 (regex!5724 rule!403) (head!7718 lt!1259038)) (tail!5635 lt!1259038)))))

(declare-fun b!3638229 () Bool)

(declare-fun call!263050 () Bool)

(assert (=> b!3638229 (= e!2252119 (= lt!1259114 call!263050))))

(declare-fun b!3638230 () Bool)

(declare-fun res!1474280 () Bool)

(declare-fun e!2252120 () Bool)

(assert (=> b!3638230 (=> (not res!1474280) (not e!2252120))))

(assert (=> b!3638230 (= res!1474280 (not call!263050))))

(declare-fun b!3638231 () Bool)

(assert (=> b!3638231 (= e!2252120 (= (head!7718 lt!1259038) (c!629110 (regex!5724 rule!403))))))

(declare-fun b!3638232 () Bool)

(declare-fun res!1474285 () Bool)

(declare-fun e!2252116 () Bool)

(assert (=> b!3638232 (=> res!1474285 e!2252116)))

(assert (=> b!3638232 (= res!1474285 (not (isEmpty!22692 (tail!5635 lt!1259038))))))

(declare-fun b!3638233 () Bool)

(declare-fun e!2252118 () Bool)

(assert (=> b!3638233 (= e!2252118 (not lt!1259114))))

(declare-fun b!3638234 () Bool)

(declare-fun e!2252121 () Bool)

(assert (=> b!3638234 (= e!2252121 e!2252116)))

(declare-fun res!1474283 () Bool)

(assert (=> b!3638234 (=> res!1474283 e!2252116)))

(assert (=> b!3638234 (= res!1474283 call!263050)))

(declare-fun b!3638235 () Bool)

(assert (=> b!3638235 (= e!2252116 (not (= (head!7718 lt!1259038) (c!629110 (regex!5724 rule!403)))))))

(declare-fun b!3638236 () Bool)

(declare-fun res!1474284 () Bool)

(assert (=> b!3638236 (=> (not res!1474284) (not e!2252120))))

(assert (=> b!3638236 (= res!1474284 (isEmpty!22692 (tail!5635 lt!1259038)))))

(declare-fun b!3638237 () Bool)

(assert (=> b!3638237 (= e!2252122 (nullable!3637 (regex!5724 rule!403)))))

(declare-fun bm!263045 () Bool)

(assert (=> bm!263045 (= call!263050 (isEmpty!22692 lt!1259038))))

(declare-fun b!3638238 () Bool)

(assert (=> b!3638238 (= e!2252119 e!2252118)))

(declare-fun c!629172 () Bool)

(assert (=> b!3638238 (= c!629172 ((_ is EmptyLang!10483) (regex!5724 rule!403)))))

(declare-fun b!3638239 () Bool)

(declare-fun res!1474282 () Bool)

(declare-fun e!2252117 () Bool)

(assert (=> b!3638239 (=> res!1474282 e!2252117)))

(assert (=> b!3638239 (= res!1474282 (not ((_ is ElementMatch!10483) (regex!5724 rule!403))))))

(assert (=> b!3638239 (= e!2252118 e!2252117)))

(declare-fun b!3638240 () Bool)

(assert (=> b!3638240 (= e!2252117 e!2252121)))

(declare-fun res!1474281 () Bool)

(assert (=> b!3638240 (=> (not res!1474281) (not e!2252121))))

(assert (=> b!3638240 (= res!1474281 (not lt!1259114))))

(declare-fun b!3638241 () Bool)

(declare-fun res!1474287 () Bool)

(assert (=> b!3638241 (=> res!1474287 e!2252117)))

(assert (=> b!3638241 (= res!1474287 e!2252120)))

(declare-fun res!1474286 () Bool)

(assert (=> b!3638241 (=> (not res!1474286) (not e!2252120))))

(assert (=> b!3638241 (= res!1474286 lt!1259114)))

(assert (= (and d!1069865 c!629173) b!3638237))

(assert (= (and d!1069865 (not c!629173)) b!3638228))

(assert (= (and d!1069865 c!629174) b!3638229))

(assert (= (and d!1069865 (not c!629174)) b!3638238))

(assert (= (and b!3638238 c!629172) b!3638233))

(assert (= (and b!3638238 (not c!629172)) b!3638239))

(assert (= (and b!3638239 (not res!1474282)) b!3638241))

(assert (= (and b!3638241 res!1474286) b!3638230))

(assert (= (and b!3638230 res!1474280) b!3638236))

(assert (= (and b!3638236 res!1474284) b!3638231))

(assert (= (and b!3638241 (not res!1474287)) b!3638240))

(assert (= (and b!3638240 res!1474281) b!3638234))

(assert (= (and b!3638234 (not res!1474283)) b!3638232))

(assert (= (and b!3638232 (not res!1474285)) b!3638235))

(assert (= (or b!3638229 b!3638230 b!3638234) bm!263045))

(declare-fun m!4140803 () Bool)

(assert (=> b!3638235 m!4140803))

(declare-fun m!4140805 () Bool)

(assert (=> b!3638232 m!4140805))

(assert (=> b!3638232 m!4140805))

(declare-fun m!4140807 () Bool)

(assert (=> b!3638232 m!4140807))

(assert (=> b!3638236 m!4140805))

(assert (=> b!3638236 m!4140805))

(assert (=> b!3638236 m!4140807))

(declare-fun m!4140809 () Bool)

(assert (=> b!3638237 m!4140809))

(declare-fun m!4140811 () Bool)

(assert (=> d!1069865 m!4140811))

(assert (=> d!1069865 m!4140517))

(assert (=> b!3638228 m!4140803))

(assert (=> b!3638228 m!4140803))

(declare-fun m!4140813 () Bool)

(assert (=> b!3638228 m!4140813))

(assert (=> b!3638228 m!4140805))

(assert (=> b!3638228 m!4140813))

(assert (=> b!3638228 m!4140805))

(declare-fun m!4140815 () Bool)

(assert (=> b!3638228 m!4140815))

(assert (=> b!3638231 m!4140803))

(assert (=> bm!263045 m!4140811))

(assert (=> b!3637911 d!1069865))

(declare-fun d!1069867 () Bool)

(declare-fun res!1474292 () Bool)

(declare-fun e!2252125 () Bool)

(assert (=> d!1069867 (=> (not res!1474292) (not e!2252125))))

(assert (=> d!1069867 (= res!1474292 (validRegex!4799 (regex!5724 rule!403)))))

(assert (=> d!1069867 (= (ruleValid!1988 thiss!23823 rule!403) e!2252125)))

(declare-fun b!3638246 () Bool)

(declare-fun res!1474293 () Bool)

(assert (=> b!3638246 (=> (not res!1474293) (not e!2252125))))

(assert (=> b!3638246 (= res!1474293 (not (nullable!3637 (regex!5724 rule!403))))))

(declare-fun b!3638247 () Bool)

(assert (=> b!3638247 (= e!2252125 (not (= (tag!6468 rule!403) (String!43105 ""))))))

(assert (= (and d!1069867 res!1474292) b!3638246))

(assert (= (and b!3638246 res!1474293) b!3638247))

(assert (=> d!1069867 m!4140517))

(assert (=> b!3638246 m!4140809))

(assert (=> b!3637911 d!1069867))

(declare-fun d!1069869 () Bool)

(assert (=> d!1069869 (ruleValid!1988 thiss!23823 rule!403)))

(declare-fun lt!1259117 () Unit!55166)

(declare-fun choose!21381 (LexerInterface!5313 Rule!11248 List!38461) Unit!55166)

(assert (=> d!1069869 (= lt!1259117 (choose!21381 thiss!23823 rule!403 rules!3307))))

(assert (=> d!1069869 (contains!7514 rules!3307 rule!403)))

(assert (=> d!1069869 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1142 thiss!23823 rule!403 rules!3307) lt!1259117)))

(declare-fun bs!571865 () Bool)

(assert (= bs!571865 d!1069869))

(assert (=> bs!571865 m!4140493))

(declare-fun m!4140817 () Bool)

(assert (=> bs!571865 m!4140817))

(assert (=> bs!571865 m!4140429))

(assert (=> b!3637911 d!1069869))

(declare-fun d!1069871 () Bool)

(assert (=> d!1069871 (= (inv!51763 (tag!6468 (rule!8502 token!511))) (= (mod (str.len (value!183593 (tag!6468 (rule!8502 token!511)))) 2) 0))))

(assert (=> b!3637912 d!1069871))

(declare-fun d!1069873 () Bool)

(declare-fun res!1474294 () Bool)

(declare-fun e!2252126 () Bool)

(assert (=> d!1069873 (=> (not res!1474294) (not e!2252126))))

(assert (=> d!1069873 (= res!1474294 (semiInverseModEq!2437 (toChars!7875 (transformation!5724 (rule!8502 token!511))) (toValue!8016 (transformation!5724 (rule!8502 token!511)))))))

(assert (=> d!1069873 (= (inv!51767 (transformation!5724 (rule!8502 token!511))) e!2252126)))

(declare-fun b!3638248 () Bool)

(assert (=> b!3638248 (= e!2252126 (equivClasses!2336 (toChars!7875 (transformation!5724 (rule!8502 token!511))) (toValue!8016 (transformation!5724 (rule!8502 token!511)))))))

(assert (= (and d!1069873 res!1474294) b!3638248))

(declare-fun m!4140819 () Bool)

(assert (=> d!1069873 m!4140819))

(declare-fun m!4140821 () Bool)

(assert (=> b!3638248 m!4140821))

(assert (=> b!3637912 d!1069873))

(declare-fun d!1069875 () Bool)

(assert (=> d!1069875 (= (isEmpty!22692 (_2!22236 lt!1259035)) ((_ is Nil!38336) (_2!22236 lt!1259035)))))

(assert (=> b!3637891 d!1069875))

(declare-fun d!1069877 () Bool)

(assert (=> d!1069877 (= (get!12548 lt!1259045) (v!37896 lt!1259045))))

(assert (=> b!3637913 d!1069877))

(declare-fun d!1069879 () Bool)

(declare-fun dynLambda!16665 (Int BalanceConc!23020) TokenValue!5954)

(assert (=> d!1069879 (= (apply!9226 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))) (seqFromList!4273 lt!1259046)) (dynLambda!16665 (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024)))) (seqFromList!4273 lt!1259046)))))

(declare-fun b_lambda!107821 () Bool)

(assert (=> (not b_lambda!107821) (not d!1069879)))

(declare-fun tb!209453 () Bool)

(declare-fun t!296158 () Bool)

(assert (=> (and b!3637900 (= (toValue!8016 (transformation!5724 anOtherTypeRule!33)) (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) t!296158) tb!209453))

(declare-fun result!255120 () Bool)

(assert (=> tb!209453 (= result!255120 (inv!21 (dynLambda!16665 (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024)))) (seqFromList!4273 lt!1259046))))))

(declare-fun m!4140823 () Bool)

(assert (=> tb!209453 m!4140823))

(assert (=> d!1069879 t!296158))

(declare-fun b_and!267883 () Bool)

(assert (= b_and!267827 (and (=> t!296158 result!255120) b_and!267883)))

(declare-fun tb!209455 () Bool)

(declare-fun t!296160 () Bool)

(assert (=> (and b!3637892 (= (toValue!8016 (transformation!5724 (rule!8502 token!511))) (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) t!296160) tb!209455))

(declare-fun result!255124 () Bool)

(assert (= result!255124 result!255120))

(assert (=> d!1069879 t!296160))

(declare-fun b_and!267885 () Bool)

(assert (= b_and!267831 (and (=> t!296160 result!255124) b_and!267885)))

(declare-fun t!296162 () Bool)

(declare-fun tb!209457 () Bool)

(assert (=> (and b!3637890 (= (toValue!8016 (transformation!5724 (h!43757 rules!3307))) (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) t!296162) tb!209457))

(declare-fun result!255126 () Bool)

(assert (= result!255126 result!255120))

(assert (=> d!1069879 t!296162))

(declare-fun b_and!267887 () Bool)

(assert (= b_and!267835 (and (=> t!296162 result!255126) b_and!267887)))

(declare-fun tb!209459 () Bool)

(declare-fun t!296164 () Bool)

(assert (=> (and b!3637898 (= (toValue!8016 (transformation!5724 rule!403)) (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) t!296164) tb!209459))

(declare-fun result!255128 () Bool)

(assert (= result!255128 result!255120))

(assert (=> d!1069879 t!296164))

(declare-fun b_and!267889 () Bool)

(assert (= b_and!267839 (and (=> t!296164 result!255128) b_and!267889)))

(assert (=> d!1069879 m!4140509))

(declare-fun m!4140825 () Bool)

(assert (=> d!1069879 m!4140825))

(assert (=> b!3637908 d!1069879))

(declare-fun b!3638354 () Bool)

(declare-fun e!2252182 () Bool)

(declare-datatypes ((tuple2!38208 0))(
  ( (tuple2!38209 (_1!22238 List!38460) (_2!22238 List!38460)) )
))
(declare-fun findLongestMatchInner!1033 (Regex!10483 List!38460 Int List!38460 List!38460 Int) tuple2!38208)

(assert (=> b!3638354 (= e!2252182 (matchR!5052 (regex!5724 (rule!8502 (_1!22236 lt!1259024))) (_1!22238 (findLongestMatchInner!1033 (regex!5724 (rule!8502 (_1!22236 lt!1259024))) Nil!38336 (size!29256 Nil!38336) lt!1259029 lt!1259029 (size!29256 lt!1259029)))))))

(declare-fun b!3638355 () Bool)

(declare-fun res!1474378 () Bool)

(declare-fun e!2252183 () Bool)

(assert (=> b!3638355 (=> (not res!1474378) (not e!2252183))))

(declare-fun lt!1259161 () Option!8077)

(assert (=> b!3638355 (= res!1474378 (< (size!29256 (_2!22236 (get!12548 lt!1259161))) (size!29256 lt!1259029)))))

(declare-fun b!3638356 () Bool)

(declare-fun e!2252181 () Option!8077)

(declare-fun lt!1259165 () tuple2!38208)

(assert (=> b!3638356 (= e!2252181 (Some!8076 (tuple2!38205 (Token!10815 (apply!9226 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))) (seqFromList!4273 (_1!22238 lt!1259165))) (rule!8502 (_1!22236 lt!1259024)) (size!29257 (seqFromList!4273 (_1!22238 lt!1259165))) (_1!22238 lt!1259165)) (_2!22238 lt!1259165))))))

(declare-fun lt!1259163 () Unit!55166)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1006 (Regex!10483 List!38460) Unit!55166)

(assert (=> b!3638356 (= lt!1259163 (longestMatchIsAcceptedByMatchOrIsEmpty!1006 (regex!5724 (rule!8502 (_1!22236 lt!1259024))) lt!1259029))))

(declare-fun res!1474376 () Bool)

(assert (=> b!3638356 (= res!1474376 (isEmpty!22692 (_1!22238 (findLongestMatchInner!1033 (regex!5724 (rule!8502 (_1!22236 lt!1259024))) Nil!38336 (size!29256 Nil!38336) lt!1259029 lt!1259029 (size!29256 lt!1259029)))))))

(assert (=> b!3638356 (=> res!1474376 e!2252182)))

(assert (=> b!3638356 e!2252182))

(declare-fun lt!1259162 () Unit!55166)

(assert (=> b!3638356 (= lt!1259162 lt!1259163)))

(declare-fun lt!1259164 () Unit!55166)

(assert (=> b!3638356 (= lt!1259164 (lemmaSemiInverse!1473 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))) (seqFromList!4273 (_1!22238 lt!1259165))))))

(declare-fun b!3638357 () Bool)

(assert (=> b!3638357 (= e!2252183 (= (size!29255 (_1!22236 (get!12548 lt!1259161))) (size!29256 (originalCharacters!6438 (_1!22236 (get!12548 lt!1259161))))))))

(declare-fun b!3638358 () Bool)

(assert (=> b!3638358 (= e!2252181 None!8076)))

(declare-fun d!1069881 () Bool)

(declare-fun e!2252184 () Bool)

(assert (=> d!1069881 e!2252184))

(declare-fun res!1474380 () Bool)

(assert (=> d!1069881 (=> res!1474380 e!2252184)))

(assert (=> d!1069881 (= res!1474380 (isEmpty!22695 lt!1259161))))

(assert (=> d!1069881 (= lt!1259161 e!2252181)))

(declare-fun c!629186 () Bool)

(assert (=> d!1069881 (= c!629186 (isEmpty!22692 (_1!22238 lt!1259165)))))

(declare-fun findLongestMatch!948 (Regex!10483 List!38460) tuple2!38208)

(assert (=> d!1069881 (= lt!1259165 (findLongestMatch!948 (regex!5724 (rule!8502 (_1!22236 lt!1259024))) lt!1259029))))

(assert (=> d!1069881 (ruleValid!1988 thiss!23823 (rule!8502 (_1!22236 lt!1259024)))))

(assert (=> d!1069881 (= (maxPrefixOneRule!1985 thiss!23823 (rule!8502 (_1!22236 lt!1259024)) lt!1259029) lt!1259161)))

(declare-fun b!3638359 () Bool)

(assert (=> b!3638359 (= e!2252184 e!2252183)))

(declare-fun res!1474382 () Bool)

(assert (=> b!3638359 (=> (not res!1474382) (not e!2252183))))

(assert (=> b!3638359 (= res!1474382 (matchR!5052 (regex!5724 (rule!8502 (_1!22236 lt!1259024))) (list!14186 (charsOf!3738 (_1!22236 (get!12548 lt!1259161))))))))

(declare-fun b!3638360 () Bool)

(declare-fun res!1474379 () Bool)

(assert (=> b!3638360 (=> (not res!1474379) (not e!2252183))))

(assert (=> b!3638360 (= res!1474379 (= (rule!8502 (_1!22236 (get!12548 lt!1259161))) (rule!8502 (_1!22236 lt!1259024))))))

(declare-fun b!3638361 () Bool)

(declare-fun res!1474377 () Bool)

(assert (=> b!3638361 (=> (not res!1474377) (not e!2252183))))

(assert (=> b!3638361 (= res!1474377 (= (value!183594 (_1!22236 (get!12548 lt!1259161))) (apply!9226 (transformation!5724 (rule!8502 (_1!22236 (get!12548 lt!1259161)))) (seqFromList!4273 (originalCharacters!6438 (_1!22236 (get!12548 lt!1259161)))))))))

(declare-fun b!3638362 () Bool)

(declare-fun res!1474381 () Bool)

(assert (=> b!3638362 (=> (not res!1474381) (not e!2252183))))

(assert (=> b!3638362 (= res!1474381 (= (++!9540 (list!14186 (charsOf!3738 (_1!22236 (get!12548 lt!1259161)))) (_2!22236 (get!12548 lt!1259161))) lt!1259029))))

(assert (= (and d!1069881 c!629186) b!3638358))

(assert (= (and d!1069881 (not c!629186)) b!3638356))

(assert (= (and b!3638356 (not res!1474376)) b!3638354))

(assert (= (and d!1069881 (not res!1474380)) b!3638359))

(assert (= (and b!3638359 res!1474382) b!3638362))

(assert (= (and b!3638362 res!1474381) b!3638355))

(assert (= (and b!3638355 res!1474378) b!3638360))

(assert (= (and b!3638360 res!1474379) b!3638361))

(assert (= (and b!3638361 res!1474377) b!3638357))

(declare-fun m!4140935 () Bool)

(assert (=> b!3638362 m!4140935))

(declare-fun m!4140937 () Bool)

(assert (=> b!3638362 m!4140937))

(assert (=> b!3638362 m!4140937))

(declare-fun m!4140939 () Bool)

(assert (=> b!3638362 m!4140939))

(assert (=> b!3638362 m!4140939))

(declare-fun m!4140941 () Bool)

(assert (=> b!3638362 m!4140941))

(assert (=> b!3638359 m!4140935))

(assert (=> b!3638359 m!4140937))

(assert (=> b!3638359 m!4140937))

(assert (=> b!3638359 m!4140939))

(assert (=> b!3638359 m!4140939))

(declare-fun m!4140943 () Bool)

(assert (=> b!3638359 m!4140943))

(assert (=> b!3638355 m!4140935))

(declare-fun m!4140945 () Bool)

(assert (=> b!3638355 m!4140945))

(declare-fun m!4140947 () Bool)

(assert (=> b!3638355 m!4140947))

(declare-fun m!4140949 () Bool)

(assert (=> b!3638356 m!4140949))

(declare-fun m!4140951 () Bool)

(assert (=> b!3638356 m!4140951))

(declare-fun m!4140953 () Bool)

(assert (=> b!3638356 m!4140953))

(assert (=> b!3638356 m!4140951))

(declare-fun m!4140955 () Bool)

(assert (=> b!3638356 m!4140955))

(declare-fun m!4140957 () Bool)

(assert (=> b!3638356 m!4140957))

(assert (=> b!3638356 m!4140957))

(assert (=> b!3638356 m!4140947))

(declare-fun m!4140959 () Bool)

(assert (=> b!3638356 m!4140959))

(declare-fun m!4140961 () Bool)

(assert (=> b!3638356 m!4140961))

(assert (=> b!3638356 m!4140951))

(assert (=> b!3638356 m!4140947))

(assert (=> b!3638356 m!4140951))

(declare-fun m!4140963 () Bool)

(assert (=> b!3638356 m!4140963))

(assert (=> b!3638357 m!4140935))

(declare-fun m!4140965 () Bool)

(assert (=> b!3638357 m!4140965))

(assert (=> b!3638354 m!4140957))

(assert (=> b!3638354 m!4140947))

(assert (=> b!3638354 m!4140957))

(assert (=> b!3638354 m!4140947))

(assert (=> b!3638354 m!4140959))

(declare-fun m!4140967 () Bool)

(assert (=> b!3638354 m!4140967))

(assert (=> b!3638360 m!4140935))

(assert (=> b!3638361 m!4140935))

(declare-fun m!4140969 () Bool)

(assert (=> b!3638361 m!4140969))

(assert (=> b!3638361 m!4140969))

(declare-fun m!4140971 () Bool)

(assert (=> b!3638361 m!4140971))

(declare-fun m!4140973 () Bool)

(assert (=> d!1069881 m!4140973))

(declare-fun m!4140975 () Bool)

(assert (=> d!1069881 m!4140975))

(declare-fun m!4140977 () Bool)

(assert (=> d!1069881 m!4140977))

(declare-fun m!4140979 () Bool)

(assert (=> d!1069881 m!4140979))

(assert (=> b!3637908 d!1069881))

(declare-fun d!1069919 () Bool)

(declare-fun lt!1259173 () List!38460)

(assert (=> d!1069919 (= (++!9540 lt!1259046 lt!1259173) lt!1259029)))

(declare-fun e!2252189 () List!38460)

(assert (=> d!1069919 (= lt!1259173 e!2252189)))

(declare-fun c!629190 () Bool)

(assert (=> d!1069919 (= c!629190 ((_ is Cons!38336) lt!1259046))))

(assert (=> d!1069919 (>= (size!29256 lt!1259029) (size!29256 lt!1259046))))

(assert (=> d!1069919 (= (getSuffix!1640 lt!1259029 lt!1259046) lt!1259173)))

(declare-fun b!3638371 () Bool)

(assert (=> b!3638371 (= e!2252189 (getSuffix!1640 (tail!5635 lt!1259029) (t!296123 lt!1259046)))))

(declare-fun b!3638372 () Bool)

(assert (=> b!3638372 (= e!2252189 lt!1259029)))

(assert (= (and d!1069919 c!629190) b!3638371))

(assert (= (and d!1069919 (not c!629190)) b!3638372))

(declare-fun m!4140981 () Bool)

(assert (=> d!1069919 m!4140981))

(assert (=> d!1069919 m!4140947))

(assert (=> d!1069919 m!4140513))

(declare-fun m!4140983 () Bool)

(assert (=> b!3638371 m!4140983))

(assert (=> b!3638371 m!4140983))

(declare-fun m!4140985 () Bool)

(assert (=> b!3638371 m!4140985))

(assert (=> b!3637908 d!1069919))

(declare-fun d!1069921 () Bool)

(assert (=> d!1069921 (= (_2!22236 lt!1259024) lt!1259050)))

(declare-fun lt!1259182 () Unit!55166)

(declare-fun choose!21383 (List!38460 List!38460 List!38460 List!38460 List!38460) Unit!55166)

(assert (=> d!1069921 (= lt!1259182 (choose!21383 lt!1259046 (_2!22236 lt!1259024) lt!1259046 lt!1259050 lt!1259029))))

(assert (=> d!1069921 (isPrefix!3087 lt!1259046 lt!1259029)))

(assert (=> d!1069921 (= (lemmaSamePrefixThenSameSuffix!1414 lt!1259046 (_2!22236 lt!1259024) lt!1259046 lt!1259050 lt!1259029) lt!1259182)))

(declare-fun bs!571872 () Bool)

(assert (= bs!571872 d!1069921))

(declare-fun m!4140987 () Bool)

(assert (=> bs!571872 m!4140987))

(assert (=> bs!571872 m!4140469))

(assert (=> b!3637908 d!1069921))

(declare-fun d!1069923 () Bool)

(declare-fun fromListB!1973 (List!38460) BalanceConc!23020)

(assert (=> d!1069923 (= (seqFromList!4273 lt!1259046) (fromListB!1973 lt!1259046))))

(declare-fun bs!571873 () Bool)

(assert (= bs!571873 d!1069923))

(declare-fun m!4140989 () Bool)

(assert (=> bs!571873 m!4140989))

(assert (=> b!3637908 d!1069923))

(declare-fun d!1069925 () Bool)

(declare-fun lt!1259188 () Int)

(assert (=> d!1069925 (>= lt!1259188 0)))

(declare-fun e!2252204 () Int)

(assert (=> d!1069925 (= lt!1259188 e!2252204)))

(declare-fun c!629199 () Bool)

(assert (=> d!1069925 (= c!629199 ((_ is Nil!38336) lt!1259046))))

(assert (=> d!1069925 (= (size!29256 lt!1259046) lt!1259188)))

(declare-fun b!3638395 () Bool)

(assert (=> b!3638395 (= e!2252204 0)))

(declare-fun b!3638396 () Bool)

(assert (=> b!3638396 (= e!2252204 (+ 1 (size!29256 (t!296123 lt!1259046))))))

(assert (= (and d!1069925 c!629199) b!3638395))

(assert (= (and d!1069925 (not c!629199)) b!3638396))

(declare-fun m!4141003 () Bool)

(assert (=> b!3638396 m!4141003))

(assert (=> b!3637908 d!1069925))

(declare-fun d!1069929 () Bool)

(assert (=> d!1069929 (= (maxPrefixOneRule!1985 thiss!23823 (rule!8502 (_1!22236 lt!1259024)) lt!1259029) (Some!8076 (tuple2!38205 (Token!10815 (apply!9226 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))) (seqFromList!4273 lt!1259046)) (rule!8502 (_1!22236 lt!1259024)) (size!29256 lt!1259046) lt!1259046) (_2!22236 lt!1259024))))))

(declare-fun lt!1259191 () Unit!55166)

(declare-fun choose!21384 (LexerInterface!5313 List!38461 List!38460 List!38460 List!38460 Rule!11248) Unit!55166)

(assert (=> d!1069929 (= lt!1259191 (choose!21384 thiss!23823 rules!3307 lt!1259046 lt!1259029 (_2!22236 lt!1259024) (rule!8502 (_1!22236 lt!1259024))))))

(assert (=> d!1069929 (not (isEmpty!22693 rules!3307))))

(assert (=> d!1069929 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1041 thiss!23823 rules!3307 lt!1259046 lt!1259029 (_2!22236 lt!1259024) (rule!8502 (_1!22236 lt!1259024))) lt!1259191)))

(declare-fun bs!571874 () Bool)

(assert (= bs!571874 d!1069929))

(assert (=> bs!571874 m!4140505))

(assert (=> bs!571874 m!4140509))

(assert (=> bs!571874 m!4140511))

(declare-fun m!4141005 () Bool)

(assert (=> bs!571874 m!4141005))

(assert (=> bs!571874 m!4140509))

(assert (=> bs!571874 m!4140547))

(assert (=> bs!571874 m!4140513))

(assert (=> b!3637908 d!1069929))

(declare-fun d!1069931 () Bool)

(assert (=> d!1069931 (= (isEmpty!22692 suffix!1395) ((_ is Nil!38336) suffix!1395))))

(assert (=> b!3637887 d!1069931))

(declare-fun d!1069933 () Bool)

(assert (=> d!1069933 (= (size!29255 (_1!22236 lt!1259024)) (size!29256 (originalCharacters!6438 (_1!22236 lt!1259024))))))

(declare-fun Unit!55170 () Unit!55166)

(assert (=> d!1069933 (= (lemmaCharactersSize!769 (_1!22236 lt!1259024)) Unit!55170)))

(declare-fun bs!571875 () Bool)

(assert (= bs!571875 d!1069933))

(declare-fun m!4141007 () Bool)

(assert (=> bs!571875 m!4141007))

(assert (=> b!3637909 d!1069933))

(declare-fun b!3638468 () Bool)

(declare-fun e!2252245 () Bool)

(assert (=> b!3638468 (= e!2252245 true)))

(declare-fun d!1069935 () Bool)

(assert (=> d!1069935 e!2252245))

(assert (= d!1069935 b!3638468))

(declare-fun order!21045 () Int)

(declare-fun order!21043 () Int)

(declare-fun lambda!124358 () Int)

(declare-fun dynLambda!16666 (Int Int) Int)

(declare-fun dynLambda!16667 (Int Int) Int)

(assert (=> b!3638468 (< (dynLambda!16666 order!21043 (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) (dynLambda!16667 order!21045 lambda!124358))))

(declare-fun order!21047 () Int)

(declare-fun dynLambda!16668 (Int Int) Int)

(assert (=> b!3638468 (< (dynLambda!16668 order!21047 (toChars!7875 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) (dynLambda!16667 order!21045 lambda!124358))))

(assert (=> d!1069935 (= (list!14186 (dynLambda!16664 (toChars!7875 (transformation!5724 (rule!8502 (_1!22236 lt!1259024)))) (dynLambda!16665 (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024)))) lt!1259049))) (list!14186 lt!1259049))))

(declare-fun lt!1259259 () Unit!55166)

(declare-fun ForallOf!693 (Int BalanceConc!23020) Unit!55166)

(assert (=> d!1069935 (= lt!1259259 (ForallOf!693 lambda!124358 lt!1259049))))

(assert (=> d!1069935 (= (lemmaSemiInverse!1473 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))) lt!1259049) lt!1259259)))

(declare-fun b_lambda!107827 () Bool)

(assert (=> (not b_lambda!107827) (not d!1069935)))

(declare-fun tb!209469 () Bool)

(declare-fun t!296174 () Bool)

(assert (=> (and b!3637900 (= (toChars!7875 (transformation!5724 anOtherTypeRule!33)) (toChars!7875 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) t!296174) tb!209469))

(declare-fun b!3638469 () Bool)

(declare-fun e!2252246 () Bool)

(declare-fun tp!1110099 () Bool)

(assert (=> b!3638469 (= e!2252246 (and (inv!51770 (c!629111 (dynLambda!16664 (toChars!7875 (transformation!5724 (rule!8502 (_1!22236 lt!1259024)))) (dynLambda!16665 (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024)))) lt!1259049)))) tp!1110099))))

(declare-fun result!255138 () Bool)

(assert (=> tb!209469 (= result!255138 (and (inv!51771 (dynLambda!16664 (toChars!7875 (transformation!5724 (rule!8502 (_1!22236 lt!1259024)))) (dynLambda!16665 (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024)))) lt!1259049))) e!2252246))))

(assert (= tb!209469 b!3638469))

(declare-fun m!4141151 () Bool)

(assert (=> b!3638469 m!4141151))

(declare-fun m!4141153 () Bool)

(assert (=> tb!209469 m!4141153))

(assert (=> d!1069935 t!296174))

(declare-fun b_and!267907 () Bool)

(assert (= b_and!267875 (and (=> t!296174 result!255138) b_and!267907)))

(declare-fun tb!209471 () Bool)

(declare-fun t!296176 () Bool)

(assert (=> (and b!3637892 (= (toChars!7875 (transformation!5724 (rule!8502 token!511))) (toChars!7875 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) t!296176) tb!209471))

(declare-fun result!255140 () Bool)

(assert (= result!255140 result!255138))

(assert (=> d!1069935 t!296176))

(declare-fun b_and!267909 () Bool)

(assert (= b_and!267877 (and (=> t!296176 result!255140) b_and!267909)))

(declare-fun tb!209473 () Bool)

(declare-fun t!296178 () Bool)

(assert (=> (and b!3637890 (= (toChars!7875 (transformation!5724 (h!43757 rules!3307))) (toChars!7875 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) t!296178) tb!209473))

(declare-fun result!255142 () Bool)

(assert (= result!255142 result!255138))

(assert (=> d!1069935 t!296178))

(declare-fun b_and!267911 () Bool)

(assert (= b_and!267879 (and (=> t!296178 result!255142) b_and!267911)))

(declare-fun tb!209475 () Bool)

(declare-fun t!296180 () Bool)

(assert (=> (and b!3637898 (= (toChars!7875 (transformation!5724 rule!403)) (toChars!7875 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) t!296180) tb!209475))

(declare-fun result!255144 () Bool)

(assert (= result!255144 result!255138))

(assert (=> d!1069935 t!296180))

(declare-fun b_and!267913 () Bool)

(assert (= b_and!267881 (and (=> t!296180 result!255144) b_and!267913)))

(declare-fun b_lambda!107829 () Bool)

(assert (=> (not b_lambda!107829) (not d!1069935)))

(declare-fun t!296182 () Bool)

(declare-fun tb!209477 () Bool)

(assert (=> (and b!3637900 (= (toValue!8016 (transformation!5724 anOtherTypeRule!33)) (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) t!296182) tb!209477))

(declare-fun result!255146 () Bool)

(assert (=> tb!209477 (= result!255146 (inv!21 (dynLambda!16665 (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024)))) lt!1259049)))))

(declare-fun m!4141155 () Bool)

(assert (=> tb!209477 m!4141155))

(assert (=> d!1069935 t!296182))

(declare-fun b_and!267915 () Bool)

(assert (= b_and!267883 (and (=> t!296182 result!255146) b_and!267915)))

(declare-fun tb!209479 () Bool)

(declare-fun t!296184 () Bool)

(assert (=> (and b!3637892 (= (toValue!8016 (transformation!5724 (rule!8502 token!511))) (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) t!296184) tb!209479))

(declare-fun result!255148 () Bool)

(assert (= result!255148 result!255146))

(assert (=> d!1069935 t!296184))

(declare-fun b_and!267917 () Bool)

(assert (= b_and!267885 (and (=> t!296184 result!255148) b_and!267917)))

(declare-fun t!296186 () Bool)

(declare-fun tb!209481 () Bool)

(assert (=> (and b!3637890 (= (toValue!8016 (transformation!5724 (h!43757 rules!3307))) (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) t!296186) tb!209481))

(declare-fun result!255150 () Bool)

(assert (= result!255150 result!255146))

(assert (=> d!1069935 t!296186))

(declare-fun b_and!267919 () Bool)

(assert (= b_and!267887 (and (=> t!296186 result!255150) b_and!267919)))

(declare-fun t!296188 () Bool)

(declare-fun tb!209483 () Bool)

(assert (=> (and b!3637898 (= (toValue!8016 (transformation!5724 rule!403)) (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) t!296188) tb!209483))

(declare-fun result!255152 () Bool)

(assert (= result!255152 result!255146))

(assert (=> d!1069935 t!296188))

(declare-fun b_and!267921 () Bool)

(assert (= b_and!267889 (and (=> t!296188 result!255152) b_and!267921)))

(declare-fun m!4141157 () Bool)

(assert (=> d!1069935 m!4141157))

(declare-fun m!4141159 () Bool)

(assert (=> d!1069935 m!4141159))

(declare-fun m!4141161 () Bool)

(assert (=> d!1069935 m!4141161))

(assert (=> d!1069935 m!4140479))

(assert (=> d!1069935 m!4141161))

(assert (=> d!1069935 m!4141157))

(declare-fun m!4141163 () Bool)

(assert (=> d!1069935 m!4141163))

(assert (=> b!3637909 d!1069935))

(declare-fun d!1069971 () Bool)

(assert (=> d!1069971 (= (apply!9226 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))) lt!1259049) (dynLambda!16665 (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024)))) lt!1259049))))

(declare-fun b_lambda!107831 () Bool)

(assert (=> (not b_lambda!107831) (not d!1069971)))

(assert (=> d!1069971 t!296182))

(declare-fun b_and!267923 () Bool)

(assert (= b_and!267915 (and (=> t!296182 result!255146) b_and!267923)))

(assert (=> d!1069971 t!296184))

(declare-fun b_and!267925 () Bool)

(assert (= b_and!267917 (and (=> t!296184 result!255148) b_and!267925)))

(assert (=> d!1069971 t!296186))

(declare-fun b_and!267927 () Bool)

(assert (= b_and!267919 (and (=> t!296186 result!255150) b_and!267927)))

(assert (=> d!1069971 t!296188))

(declare-fun b_and!267929 () Bool)

(assert (= b_and!267921 (and (=> t!296188 result!255152) b_and!267929)))

(assert (=> d!1069971 m!4141161))

(assert (=> b!3637909 d!1069971))

(declare-fun d!1069973 () Bool)

(assert (=> d!1069973 (= (seqFromList!4273 (originalCharacters!6438 (_1!22236 lt!1259024))) (fromListB!1973 (originalCharacters!6438 (_1!22236 lt!1259024))))))

(declare-fun bs!571879 () Bool)

(assert (= bs!571879 d!1069973))

(declare-fun m!4141165 () Bool)

(assert (=> bs!571879 m!4141165))

(assert (=> b!3637909 d!1069973))

(declare-fun d!1069975 () Bool)

(declare-fun lt!1259262 () Int)

(assert (=> d!1069975 (= lt!1259262 (size!29256 (list!14186 lt!1259049)))))

(declare-fun size!29258 (Conc!11703) Int)

(assert (=> d!1069975 (= lt!1259262 (size!29258 (c!629111 lt!1259049)))))

(assert (=> d!1069975 (= (size!29257 lt!1259049) lt!1259262)))

(declare-fun bs!571880 () Bool)

(assert (= bs!571880 d!1069975))

(assert (=> bs!571880 m!4140479))

(assert (=> bs!571880 m!4140479))

(declare-fun m!4141167 () Bool)

(assert (=> bs!571880 m!4141167))

(declare-fun m!4141169 () Bool)

(assert (=> bs!571880 m!4141169))

(assert (=> b!3637909 d!1069975))

(declare-fun b!3638476 () Bool)

(declare-fun e!2252252 () Bool)

(assert (=> b!3638476 (= e!2252252 true)))

(declare-fun d!1069977 () Bool)

(assert (=> d!1069977 e!2252252))

(assert (= d!1069977 b!3638476))

(declare-fun lambda!124361 () Int)

(declare-fun order!21049 () Int)

(declare-fun dynLambda!16669 (Int Int) Int)

(assert (=> b!3638476 (< (dynLambda!16666 order!21043 (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) (dynLambda!16669 order!21049 lambda!124361))))

(assert (=> b!3638476 (< (dynLambda!16668 order!21047 (toChars!7875 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) (dynLambda!16669 order!21049 lambda!124361))))

(assert (=> d!1069977 (= (dynLambda!16665 (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024)))) lt!1259049) (dynLambda!16665 (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024)))) (seqFromList!4273 (originalCharacters!6438 (_1!22236 lt!1259024)))))))

(declare-fun lt!1259265 () Unit!55166)

(declare-fun Forall2of!351 (Int BalanceConc!23020 BalanceConc!23020) Unit!55166)

(assert (=> d!1069977 (= lt!1259265 (Forall2of!351 lambda!124361 lt!1259049 (seqFromList!4273 (originalCharacters!6438 (_1!22236 lt!1259024)))))))

(assert (=> d!1069977 (= (list!14186 lt!1259049) (list!14186 (seqFromList!4273 (originalCharacters!6438 (_1!22236 lt!1259024)))))))

(assert (=> d!1069977 (= (lemmaEqSameImage!907 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))) lt!1259049 (seqFromList!4273 (originalCharacters!6438 (_1!22236 lt!1259024)))) lt!1259265)))

(declare-fun b_lambda!107833 () Bool)

(assert (=> (not b_lambda!107833) (not d!1069977)))

(assert (=> d!1069977 t!296182))

(declare-fun b_and!267931 () Bool)

(assert (= b_and!267923 (and (=> t!296182 result!255146) b_and!267931)))

(assert (=> d!1069977 t!296184))

(declare-fun b_and!267933 () Bool)

(assert (= b_and!267925 (and (=> t!296184 result!255148) b_and!267933)))

(assert (=> d!1069977 t!296186))

(declare-fun b_and!267935 () Bool)

(assert (= b_and!267927 (and (=> t!296186 result!255150) b_and!267935)))

(assert (=> d!1069977 t!296188))

(declare-fun b_and!267937 () Bool)

(assert (= b_and!267929 (and (=> t!296188 result!255152) b_and!267937)))

(declare-fun b_lambda!107835 () Bool)

(assert (=> (not b_lambda!107835) (not d!1069977)))

(declare-fun t!296190 () Bool)

(declare-fun tb!209485 () Bool)

(assert (=> (and b!3637900 (= (toValue!8016 (transformation!5724 anOtherTypeRule!33)) (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) t!296190) tb!209485))

(declare-fun result!255154 () Bool)

(assert (=> tb!209485 (= result!255154 (inv!21 (dynLambda!16665 (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024)))) (seqFromList!4273 (originalCharacters!6438 (_1!22236 lt!1259024))))))))

(declare-fun m!4141171 () Bool)

(assert (=> tb!209485 m!4141171))

(assert (=> d!1069977 t!296190))

(declare-fun b_and!267939 () Bool)

(assert (= b_and!267931 (and (=> t!296190 result!255154) b_and!267939)))

(declare-fun tb!209487 () Bool)

(declare-fun t!296192 () Bool)

(assert (=> (and b!3637892 (= (toValue!8016 (transformation!5724 (rule!8502 token!511))) (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) t!296192) tb!209487))

(declare-fun result!255156 () Bool)

(assert (= result!255156 result!255154))

(assert (=> d!1069977 t!296192))

(declare-fun b_and!267941 () Bool)

(assert (= b_and!267933 (and (=> t!296192 result!255156) b_and!267941)))

(declare-fun t!296194 () Bool)

(declare-fun tb!209489 () Bool)

(assert (=> (and b!3637890 (= (toValue!8016 (transformation!5724 (h!43757 rules!3307))) (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) t!296194) tb!209489))

(declare-fun result!255158 () Bool)

(assert (= result!255158 result!255154))

(assert (=> d!1069977 t!296194))

(declare-fun b_and!267943 () Bool)

(assert (= b_and!267935 (and (=> t!296194 result!255158) b_and!267943)))

(declare-fun tb!209491 () Bool)

(declare-fun t!296196 () Bool)

(assert (=> (and b!3637898 (= (toValue!8016 (transformation!5724 rule!403)) (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) t!296196) tb!209491))

(declare-fun result!255160 () Bool)

(assert (= result!255160 result!255154))

(assert (=> d!1069977 t!296196))

(declare-fun b_and!267945 () Bool)

(assert (= b_and!267937 (and (=> t!296196 result!255160) b_and!267945)))

(assert (=> d!1069977 m!4140443))

(declare-fun m!4141173 () Bool)

(assert (=> d!1069977 m!4141173))

(assert (=> d!1069977 m!4140479))

(assert (=> d!1069977 m!4140443))

(declare-fun m!4141175 () Bool)

(assert (=> d!1069977 m!4141175))

(assert (=> d!1069977 m!4140443))

(declare-fun m!4141177 () Bool)

(assert (=> d!1069977 m!4141177))

(assert (=> d!1069977 m!4141161))

(assert (=> b!3637909 d!1069977))

(declare-fun d!1069979 () Bool)

(declare-fun e!2252256 () Bool)

(assert (=> d!1069979 e!2252256))

(declare-fun res!1474429 () Bool)

(assert (=> d!1069979 (=> (not res!1474429) (not e!2252256))))

(assert (=> d!1069979 (= res!1474429 (isDefined!6308 (getRuleFromTag!1328 thiss!23823 rules!3307 (tag!6468 (rule!8502 (_1!22236 lt!1259024))))))))

(declare-fun lt!1259268 () Unit!55166)

(declare-fun choose!21385 (LexerInterface!5313 List!38461 List!38460 Token!10814) Unit!55166)

(assert (=> d!1069979 (= lt!1259268 (choose!21385 thiss!23823 rules!3307 lt!1259029 (_1!22236 lt!1259024)))))

(assert (=> d!1069979 (rulesInvariant!4710 thiss!23823 rules!3307)))

(assert (=> d!1069979 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1328 thiss!23823 rules!3307 lt!1259029 (_1!22236 lt!1259024)) lt!1259268)))

(declare-fun b!3638481 () Bool)

(declare-fun res!1474430 () Bool)

(assert (=> b!3638481 (=> (not res!1474430) (not e!2252256))))

(assert (=> b!3638481 (= res!1474430 (matchR!5052 (regex!5724 (get!12549 (getRuleFromTag!1328 thiss!23823 rules!3307 (tag!6468 (rule!8502 (_1!22236 lt!1259024)))))) (list!14186 (charsOf!3738 (_1!22236 lt!1259024)))))))

(declare-fun b!3638482 () Bool)

(assert (=> b!3638482 (= e!2252256 (= (rule!8502 (_1!22236 lt!1259024)) (get!12549 (getRuleFromTag!1328 thiss!23823 rules!3307 (tag!6468 (rule!8502 (_1!22236 lt!1259024)))))))))

(assert (= (and d!1069979 res!1474429) b!3638481))

(assert (= (and b!3638481 res!1474430) b!3638482))

(assert (=> d!1069979 m!4140475))

(assert (=> d!1069979 m!4140475))

(declare-fun m!4141179 () Bool)

(assert (=> d!1069979 m!4141179))

(declare-fun m!4141181 () Bool)

(assert (=> d!1069979 m!4141181))

(assert (=> d!1069979 m!4140487))

(assert (=> b!3638481 m!4140471))

(assert (=> b!3638481 m!4140471))

(assert (=> b!3638481 m!4140549))

(assert (=> b!3638481 m!4140475))

(declare-fun m!4141183 () Bool)

(assert (=> b!3638481 m!4141183))

(assert (=> b!3638481 m!4140549))

(declare-fun m!4141185 () Bool)

(assert (=> b!3638481 m!4141185))

(assert (=> b!3638481 m!4140475))

(assert (=> b!3638482 m!4140475))

(assert (=> b!3638482 m!4140475))

(assert (=> b!3638482 m!4141183))

(assert (=> b!3637888 d!1069979))

(declare-fun d!1069981 () Bool)

(assert (=> d!1069981 (= (get!12548 lt!1259026) (v!37896 lt!1259026))))

(assert (=> b!3637888 d!1069981))

(declare-fun d!1069983 () Bool)

(declare-fun e!2252266 () Bool)

(assert (=> d!1069983 e!2252266))

(declare-fun res!1474435 () Bool)

(assert (=> d!1069983 (=> res!1474435 e!2252266)))

(declare-fun lt!1259275 () Option!8076)

(declare-fun isEmpty!22697 (Option!8076) Bool)

(assert (=> d!1069983 (= res!1474435 (isEmpty!22697 lt!1259275))))

(declare-fun e!2252268 () Option!8076)

(assert (=> d!1069983 (= lt!1259275 e!2252268)))

(declare-fun c!629223 () Bool)

(assert (=> d!1069983 (= c!629223 (and ((_ is Cons!38337) rules!3307) (= (tag!6468 (h!43757 rules!3307)) (tag!6468 (rule!8502 (_1!22236 lt!1259024))))))))

(assert (=> d!1069983 (rulesInvariant!4710 thiss!23823 rules!3307)))

(assert (=> d!1069983 (= (getRuleFromTag!1328 thiss!23823 rules!3307 (tag!6468 (rule!8502 (_1!22236 lt!1259024)))) lt!1259275)))

(declare-fun b!3638495 () Bool)

(declare-fun e!2252267 () Bool)

(assert (=> b!3638495 (= e!2252267 (= (tag!6468 (get!12549 lt!1259275)) (tag!6468 (rule!8502 (_1!22236 lt!1259024)))))))

(declare-fun b!3638496 () Bool)

(declare-fun e!2252265 () Option!8076)

(assert (=> b!3638496 (= e!2252268 e!2252265)))

(declare-fun c!629222 () Bool)

(assert (=> b!3638496 (= c!629222 (and ((_ is Cons!38337) rules!3307) (not (= (tag!6468 (h!43757 rules!3307)) (tag!6468 (rule!8502 (_1!22236 lt!1259024)))))))))

(declare-fun b!3638497 () Bool)

(assert (=> b!3638497 (= e!2252266 e!2252267)))

(declare-fun res!1474436 () Bool)

(assert (=> b!3638497 (=> (not res!1474436) (not e!2252267))))

(assert (=> b!3638497 (= res!1474436 (contains!7514 rules!3307 (get!12549 lt!1259275)))))

(declare-fun b!3638498 () Bool)

(declare-fun lt!1259276 () Unit!55166)

(declare-fun lt!1259277 () Unit!55166)

(assert (=> b!3638498 (= lt!1259276 lt!1259277)))

(assert (=> b!3638498 (rulesInvariant!4710 thiss!23823 (t!296124 rules!3307))))

(declare-fun lemmaInvariantOnRulesThenOnTail!567 (LexerInterface!5313 Rule!11248 List!38461) Unit!55166)

(assert (=> b!3638498 (= lt!1259277 (lemmaInvariantOnRulesThenOnTail!567 thiss!23823 (h!43757 rules!3307) (t!296124 rules!3307)))))

(assert (=> b!3638498 (= e!2252265 (getRuleFromTag!1328 thiss!23823 (t!296124 rules!3307) (tag!6468 (rule!8502 (_1!22236 lt!1259024)))))))

(declare-fun b!3638499 () Bool)

(assert (=> b!3638499 (= e!2252268 (Some!8075 (h!43757 rules!3307)))))

(declare-fun b!3638500 () Bool)

(assert (=> b!3638500 (= e!2252265 None!8075)))

(assert (= (and d!1069983 c!629223) b!3638499))

(assert (= (and d!1069983 (not c!629223)) b!3638496))

(assert (= (and b!3638496 c!629222) b!3638498))

(assert (= (and b!3638496 (not c!629222)) b!3638500))

(assert (= (and d!1069983 (not res!1474435)) b!3638497))

(assert (= (and b!3638497 res!1474436) b!3638495))

(declare-fun m!4141187 () Bool)

(assert (=> d!1069983 m!4141187))

(assert (=> d!1069983 m!4140487))

(declare-fun m!4141189 () Bool)

(assert (=> b!3638495 m!4141189))

(assert (=> b!3638497 m!4141189))

(assert (=> b!3638497 m!4141189))

(declare-fun m!4141191 () Bool)

(assert (=> b!3638497 m!4141191))

(declare-fun m!4141193 () Bool)

(assert (=> b!3638498 m!4141193))

(declare-fun m!4141195 () Bool)

(assert (=> b!3638498 m!4141195))

(declare-fun m!4141197 () Bool)

(assert (=> b!3638498 m!4141197))

(assert (=> b!3637888 d!1069983))

(declare-fun b!3638511 () Bool)

(declare-fun e!2252276 () Bool)

(assert (=> b!3638511 (= e!2252276 (isPrefix!3087 (tail!5635 lt!1259046) (tail!5635 lt!1259029)))))

(declare-fun d!1069985 () Bool)

(declare-fun e!2252277 () Bool)

(assert (=> d!1069985 e!2252277))

(declare-fun res!1474447 () Bool)

(assert (=> d!1069985 (=> res!1474447 e!2252277)))

(declare-fun lt!1259280 () Bool)

(assert (=> d!1069985 (= res!1474447 (not lt!1259280))))

(declare-fun e!2252275 () Bool)

(assert (=> d!1069985 (= lt!1259280 e!2252275)))

(declare-fun res!1474446 () Bool)

(assert (=> d!1069985 (=> res!1474446 e!2252275)))

(assert (=> d!1069985 (= res!1474446 ((_ is Nil!38336) lt!1259046))))

(assert (=> d!1069985 (= (isPrefix!3087 lt!1259046 lt!1259029) lt!1259280)))

(declare-fun b!3638509 () Bool)

(assert (=> b!3638509 (= e!2252275 e!2252276)))

(declare-fun res!1474448 () Bool)

(assert (=> b!3638509 (=> (not res!1474448) (not e!2252276))))

(assert (=> b!3638509 (= res!1474448 (not ((_ is Nil!38336) lt!1259029)))))

(declare-fun b!3638510 () Bool)

(declare-fun res!1474445 () Bool)

(assert (=> b!3638510 (=> (not res!1474445) (not e!2252276))))

(assert (=> b!3638510 (= res!1474445 (= (head!7718 lt!1259046) (head!7718 lt!1259029)))))

(declare-fun b!3638512 () Bool)

(assert (=> b!3638512 (= e!2252277 (>= (size!29256 lt!1259029) (size!29256 lt!1259046)))))

(assert (= (and d!1069985 (not res!1474446)) b!3638509))

(assert (= (and b!3638509 res!1474448) b!3638510))

(assert (= (and b!3638510 res!1474445) b!3638511))

(assert (= (and d!1069985 (not res!1474447)) b!3638512))

(declare-fun m!4141199 () Bool)

(assert (=> b!3638511 m!4141199))

(assert (=> b!3638511 m!4140983))

(assert (=> b!3638511 m!4141199))

(assert (=> b!3638511 m!4140983))

(declare-fun m!4141201 () Bool)

(assert (=> b!3638511 m!4141201))

(assert (=> b!3638510 m!4140537))

(declare-fun m!4141203 () Bool)

(assert (=> b!3638510 m!4141203))

(assert (=> b!3638512 m!4140947))

(assert (=> b!3638512 m!4140513))

(assert (=> b!3637888 d!1069985))

(declare-fun b!3638578 () Bool)

(declare-fun res!1474457 () Bool)

(declare-fun e!2252317 () Bool)

(assert (=> b!3638578 (=> (not res!1474457) (not e!2252317))))

(declare-fun lt!1259322 () Token!10814)

(assert (=> b!3638578 (= res!1474457 (matchR!5052 (regex!5724 (get!12549 (getRuleFromTag!1328 thiss!23823 rules!3307 (tag!6468 (rule!8502 lt!1259322))))) (list!14186 (charsOf!3738 lt!1259322))))))

(declare-fun b!3638579 () Bool)

(assert (=> b!3638579 (= e!2252317 (= (rule!8502 lt!1259322) (get!12549 (getRuleFromTag!1328 thiss!23823 rules!3307 (tag!6468 (rule!8502 lt!1259322))))))))

(declare-fun d!1069987 () Bool)

(assert (=> d!1069987 (isDefined!6309 (maxPrefix!2847 thiss!23823 rules!3307 (++!9540 lt!1259038 suffix!1395)))))

(declare-fun lt!1259333 () Unit!55166)

(declare-fun e!2252316 () Unit!55166)

(assert (=> d!1069987 (= lt!1259333 e!2252316)))

(declare-fun c!629227 () Bool)

(assert (=> d!1069987 (= c!629227 (isEmpty!22695 (maxPrefix!2847 thiss!23823 rules!3307 (++!9540 lt!1259038 suffix!1395))))))

(declare-fun lt!1259329 () Unit!55166)

(declare-fun lt!1259331 () Unit!55166)

(assert (=> d!1069987 (= lt!1259329 lt!1259331)))

(assert (=> d!1069987 e!2252317))

(declare-fun res!1474456 () Bool)

(assert (=> d!1069987 (=> (not res!1474456) (not e!2252317))))

(assert (=> d!1069987 (= res!1474456 (isDefined!6308 (getRuleFromTag!1328 thiss!23823 rules!3307 (tag!6468 (rule!8502 lt!1259322)))))))

(assert (=> d!1069987 (= lt!1259331 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1328 thiss!23823 rules!3307 lt!1259038 lt!1259322))))

(declare-fun lt!1259330 () Unit!55166)

(declare-fun lt!1259320 () Unit!55166)

(assert (=> d!1069987 (= lt!1259330 lt!1259320)))

(declare-fun lt!1259325 () List!38460)

(assert (=> d!1069987 (isPrefix!3087 lt!1259325 (++!9540 lt!1259038 suffix!1395))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!488 (List!38460 List!38460 List!38460) Unit!55166)

(assert (=> d!1069987 (= lt!1259320 (lemmaPrefixStaysPrefixWhenAddingToSuffix!488 lt!1259325 lt!1259038 suffix!1395))))

(assert (=> d!1069987 (= lt!1259325 (list!14186 (charsOf!3738 lt!1259322)))))

(declare-fun lt!1259324 () Unit!55166)

(declare-fun lt!1259319 () Unit!55166)

(assert (=> d!1069987 (= lt!1259324 lt!1259319)))

(declare-fun lt!1259335 () List!38460)

(declare-fun lt!1259321 () List!38460)

(assert (=> d!1069987 (isPrefix!3087 lt!1259335 (++!9540 lt!1259335 lt!1259321))))

(assert (=> d!1069987 (= lt!1259319 (lemmaConcatTwoListThenFirstIsPrefix!2006 lt!1259335 lt!1259321))))

(assert (=> d!1069987 (= lt!1259321 (_2!22236 (get!12548 (maxPrefix!2847 thiss!23823 rules!3307 lt!1259038))))))

(assert (=> d!1069987 (= lt!1259335 (list!14186 (charsOf!3738 lt!1259322)))))

(declare-datatypes ((List!38464 0))(
  ( (Nil!38340) (Cons!38340 (h!43760 Token!10814) (t!296247 List!38464)) )
))
(declare-fun head!7720 (List!38464) Token!10814)

(declare-datatypes ((IArray!23415 0))(
  ( (IArray!23416 (innerList!11765 List!38464)) )
))
(declare-datatypes ((Conc!11705 0))(
  ( (Node!11705 (left!29937 Conc!11705) (right!30267 Conc!11705) (csize!23640 Int) (cheight!11916 Int)) (Leaf!18178 (xs!14907 IArray!23415) (csize!23641 Int)) (Empty!11705) )
))
(declare-datatypes ((BalanceConc!23024 0))(
  ( (BalanceConc!23025 (c!629253 Conc!11705)) )
))
(declare-fun list!14190 (BalanceConc!23024) List!38464)

(declare-datatypes ((tuple2!38212 0))(
  ( (tuple2!38213 (_1!22240 BalanceConc!23024) (_2!22240 BalanceConc!23020)) )
))
(declare-fun lex!2520 (LexerInterface!5313 List!38461 BalanceConc!23020) tuple2!38212)

(assert (=> d!1069987 (= lt!1259322 (head!7720 (list!14190 (_1!22240 (lex!2520 thiss!23823 rules!3307 (seqFromList!4273 lt!1259038))))))))

(assert (=> d!1069987 (not (isEmpty!22693 rules!3307))))

(assert (=> d!1069987 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!991 thiss!23823 rules!3307 lt!1259038 suffix!1395) lt!1259333)))

(declare-fun b!3638581 () Bool)

(declare-fun Unit!55171 () Unit!55166)

(assert (=> b!3638581 (= e!2252316 Unit!55171)))

(declare-fun b!3638580 () Bool)

(declare-fun Unit!55172 () Unit!55166)

(assert (=> b!3638580 (= e!2252316 Unit!55172)))

(declare-fun lt!1259334 () List!38460)

(assert (=> b!3638580 (= lt!1259334 (++!9540 lt!1259038 suffix!1395))))

(declare-fun lt!1259323 () Unit!55166)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!524 (LexerInterface!5313 Rule!11248 List!38461 List!38460) Unit!55166)

(assert (=> b!3638580 (= lt!1259323 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!524 thiss!23823 (rule!8502 lt!1259322) rules!3307 lt!1259334))))

(assert (=> b!3638580 (isEmpty!22695 (maxPrefixOneRule!1985 thiss!23823 (rule!8502 lt!1259322) lt!1259334))))

(declare-fun lt!1259327 () Unit!55166)

(assert (=> b!3638580 (= lt!1259327 lt!1259323)))

(declare-fun lt!1259326 () List!38460)

(assert (=> b!3638580 (= lt!1259326 (list!14186 (charsOf!3738 lt!1259322)))))

(declare-fun lt!1259328 () Unit!55166)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!512 (LexerInterface!5313 Rule!11248 List!38460 List!38460) Unit!55166)

(assert (=> b!3638580 (= lt!1259328 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!512 thiss!23823 (rule!8502 lt!1259322) lt!1259326 (++!9540 lt!1259038 suffix!1395)))))

(assert (=> b!3638580 (not (matchR!5052 (regex!5724 (rule!8502 lt!1259322)) lt!1259326))))

(declare-fun lt!1259332 () Unit!55166)

(assert (=> b!3638580 (= lt!1259332 lt!1259328)))

(assert (=> b!3638580 false))

(assert (= (and d!1069987 res!1474456) b!3638578))

(assert (= (and b!3638578 res!1474457) b!3638579))

(assert (= (and d!1069987 c!629227) b!3638580))

(assert (= (and d!1069987 (not c!629227)) b!3638581))

(declare-fun m!4141237 () Bool)

(assert (=> b!3638578 m!4141237))

(declare-fun m!4141239 () Bool)

(assert (=> b!3638578 m!4141239))

(declare-fun m!4141241 () Bool)

(assert (=> b!3638578 m!4141241))

(declare-fun m!4141243 () Bool)

(assert (=> b!3638578 m!4141243))

(assert (=> b!3638578 m!4141239))

(declare-fun m!4141245 () Bool)

(assert (=> b!3638578 m!4141245))

(assert (=> b!3638578 m!4141237))

(assert (=> b!3638578 m!4141241))

(assert (=> b!3638579 m!4141241))

(assert (=> b!3638579 m!4141241))

(assert (=> b!3638579 m!4141243))

(assert (=> d!1069987 m!4140541))

(assert (=> d!1069987 m!4140459))

(declare-fun m!4141247 () Bool)

(assert (=> d!1069987 m!4141247))

(declare-fun m!4141249 () Bool)

(assert (=> d!1069987 m!4141249))

(declare-fun m!4141251 () Bool)

(assert (=> d!1069987 m!4141251))

(declare-fun m!4141253 () Bool)

(assert (=> d!1069987 m!4141253))

(declare-fun m!4141255 () Bool)

(assert (=> d!1069987 m!4141255))

(assert (=> d!1069987 m!4141241))

(assert (=> d!1069987 m!4140459))

(declare-fun m!4141257 () Bool)

(assert (=> d!1069987 m!4141257))

(assert (=> d!1069987 m!4141257))

(declare-fun m!4141259 () Bool)

(assert (=> d!1069987 m!4141259))

(assert (=> d!1069987 m!4140547))

(declare-fun m!4141261 () Bool)

(assert (=> d!1069987 m!4141261))

(assert (=> d!1069987 m!4141241))

(declare-fun m!4141263 () Bool)

(assert (=> d!1069987 m!4141263))

(assert (=> d!1069987 m!4141237))

(assert (=> d!1069987 m!4141239))

(assert (=> d!1069987 m!4141255))

(declare-fun m!4141265 () Bool)

(assert (=> d!1069987 m!4141265))

(assert (=> d!1069987 m!4140541))

(declare-fun m!4141267 () Bool)

(assert (=> d!1069987 m!4141267))

(assert (=> d!1069987 m!4140459))

(declare-fun m!4141269 () Bool)

(assert (=> d!1069987 m!4141269))

(assert (=> d!1069987 m!4141251))

(declare-fun m!4141271 () Bool)

(assert (=> d!1069987 m!4141271))

(assert (=> d!1069987 m!4141271))

(declare-fun m!4141273 () Bool)

(assert (=> d!1069987 m!4141273))

(assert (=> d!1069987 m!4141237))

(assert (=> d!1069987 m!4141257))

(declare-fun m!4141275 () Bool)

(assert (=> d!1069987 m!4141275))

(assert (=> b!3638580 m!4141237))

(assert (=> b!3638580 m!4141239))

(declare-fun m!4141277 () Bool)

(assert (=> b!3638580 m!4141277))

(declare-fun m!4141279 () Bool)

(assert (=> b!3638580 m!4141279))

(declare-fun m!4141281 () Bool)

(assert (=> b!3638580 m!4141281))

(assert (=> b!3638580 m!4141237))

(assert (=> b!3638580 m!4140459))

(declare-fun m!4141283 () Bool)

(assert (=> b!3638580 m!4141283))

(declare-fun m!4141285 () Bool)

(assert (=> b!3638580 m!4141285))

(assert (=> b!3638580 m!4141277))

(assert (=> b!3638580 m!4140459))

(assert (=> b!3637888 d!1069987))

(declare-fun b!3638584 () Bool)

(declare-fun e!2252319 () Bool)

(assert (=> b!3638584 (= e!2252319 (isPrefix!3087 (tail!5635 lt!1259038) (tail!5635 lt!1259029)))))

(declare-fun d!1069999 () Bool)

(declare-fun e!2252320 () Bool)

(assert (=> d!1069999 e!2252320))

(declare-fun res!1474460 () Bool)

(assert (=> d!1069999 (=> res!1474460 e!2252320)))

(declare-fun lt!1259336 () Bool)

(assert (=> d!1069999 (= res!1474460 (not lt!1259336))))

(declare-fun e!2252318 () Bool)

(assert (=> d!1069999 (= lt!1259336 e!2252318)))

(declare-fun res!1474459 () Bool)

(assert (=> d!1069999 (=> res!1474459 e!2252318)))

(assert (=> d!1069999 (= res!1474459 ((_ is Nil!38336) lt!1259038))))

(assert (=> d!1069999 (= (isPrefix!3087 lt!1259038 lt!1259029) lt!1259336)))

(declare-fun b!3638582 () Bool)

(assert (=> b!3638582 (= e!2252318 e!2252319)))

(declare-fun res!1474461 () Bool)

(assert (=> b!3638582 (=> (not res!1474461) (not e!2252319))))

(assert (=> b!3638582 (= res!1474461 (not ((_ is Nil!38336) lt!1259029)))))

(declare-fun b!3638583 () Bool)

(declare-fun res!1474458 () Bool)

(assert (=> b!3638583 (=> (not res!1474458) (not e!2252319))))

(assert (=> b!3638583 (= res!1474458 (= (head!7718 lt!1259038) (head!7718 lt!1259029)))))

(declare-fun b!3638585 () Bool)

(assert (=> b!3638585 (= e!2252320 (>= (size!29256 lt!1259029) (size!29256 lt!1259038)))))

(assert (= (and d!1069999 (not res!1474459)) b!3638582))

(assert (= (and b!3638582 res!1474461) b!3638583))

(assert (= (and b!3638583 res!1474458) b!3638584))

(assert (= (and d!1069999 (not res!1474460)) b!3638585))

(assert (=> b!3638584 m!4140805))

(assert (=> b!3638584 m!4140983))

(assert (=> b!3638584 m!4140805))

(assert (=> b!3638584 m!4140983))

(declare-fun m!4141287 () Bool)

(assert (=> b!3638584 m!4141287))

(assert (=> b!3638583 m!4140803))

(assert (=> b!3638583 m!4141203))

(assert (=> b!3638585 m!4140947))

(assert (=> b!3638585 m!4140763))

(assert (=> b!3637888 d!1069999))

(declare-fun b!3638586 () Bool)

(declare-fun res!1474463 () Bool)

(declare-fun e!2252321 () Bool)

(assert (=> b!3638586 (=> (not res!1474463) (not e!2252321))))

(declare-fun lt!1259337 () Option!8077)

(assert (=> b!3638586 (= res!1474463 (= (++!9540 (list!14186 (charsOf!3738 (_1!22236 (get!12548 lt!1259337)))) (_2!22236 (get!12548 lt!1259337))) lt!1259029))))

(declare-fun b!3638587 () Bool)

(declare-fun res!1474468 () Bool)

(assert (=> b!3638587 (=> (not res!1474468) (not e!2252321))))

(assert (=> b!3638587 (= res!1474468 (= (value!183594 (_1!22236 (get!12548 lt!1259337))) (apply!9226 (transformation!5724 (rule!8502 (_1!22236 (get!12548 lt!1259337)))) (seqFromList!4273 (originalCharacters!6438 (_1!22236 (get!12548 lt!1259337)))))))))

(declare-fun b!3638588 () Bool)

(declare-fun e!2252323 () Option!8077)

(declare-fun lt!1259341 () Option!8077)

(declare-fun lt!1259338 () Option!8077)

(assert (=> b!3638588 (= e!2252323 (ite (and ((_ is None!8076) lt!1259341) ((_ is None!8076) lt!1259338)) None!8076 (ite ((_ is None!8076) lt!1259338) lt!1259341 (ite ((_ is None!8076) lt!1259341) lt!1259338 (ite (>= (size!29255 (_1!22236 (v!37896 lt!1259341))) (size!29255 (_1!22236 (v!37896 lt!1259338)))) lt!1259341 lt!1259338)))))))

(declare-fun call!263061 () Option!8077)

(assert (=> b!3638588 (= lt!1259341 call!263061)))

(assert (=> b!3638588 (= lt!1259338 (maxPrefix!2847 thiss!23823 (t!296124 rules!3307) lt!1259029))))

(declare-fun bm!263056 () Bool)

(assert (=> bm!263056 (= call!263061 (maxPrefixOneRule!1985 thiss!23823 (h!43757 rules!3307) lt!1259029))))

(declare-fun b!3638590 () Bool)

(declare-fun res!1474465 () Bool)

(assert (=> b!3638590 (=> (not res!1474465) (not e!2252321))))

(assert (=> b!3638590 (= res!1474465 (matchR!5052 (regex!5724 (rule!8502 (_1!22236 (get!12548 lt!1259337)))) (list!14186 (charsOf!3738 (_1!22236 (get!12548 lt!1259337))))))))

(declare-fun b!3638591 () Bool)

(assert (=> b!3638591 (= e!2252321 (contains!7514 rules!3307 (rule!8502 (_1!22236 (get!12548 lt!1259337)))))))

(declare-fun b!3638592 () Bool)

(declare-fun e!2252322 () Bool)

(assert (=> b!3638592 (= e!2252322 e!2252321)))

(declare-fun res!1474467 () Bool)

(assert (=> b!3638592 (=> (not res!1474467) (not e!2252321))))

(assert (=> b!3638592 (= res!1474467 (isDefined!6309 lt!1259337))))

(declare-fun b!3638593 () Bool)

(declare-fun res!1474462 () Bool)

(assert (=> b!3638593 (=> (not res!1474462) (not e!2252321))))

(assert (=> b!3638593 (= res!1474462 (= (list!14186 (charsOf!3738 (_1!22236 (get!12548 lt!1259337)))) (originalCharacters!6438 (_1!22236 (get!12548 lt!1259337)))))))

(declare-fun b!3638594 () Bool)

(assert (=> b!3638594 (= e!2252323 call!263061)))

(declare-fun d!1070001 () Bool)

(assert (=> d!1070001 e!2252322))

(declare-fun res!1474466 () Bool)

(assert (=> d!1070001 (=> res!1474466 e!2252322)))

(assert (=> d!1070001 (= res!1474466 (isEmpty!22695 lt!1259337))))

(assert (=> d!1070001 (= lt!1259337 e!2252323)))

(declare-fun c!629228 () Bool)

(assert (=> d!1070001 (= c!629228 (and ((_ is Cons!38337) rules!3307) ((_ is Nil!38337) (t!296124 rules!3307))))))

(declare-fun lt!1259339 () Unit!55166)

(declare-fun lt!1259340 () Unit!55166)

(assert (=> d!1070001 (= lt!1259339 lt!1259340)))

(assert (=> d!1070001 (isPrefix!3087 lt!1259029 lt!1259029)))

(assert (=> d!1070001 (= lt!1259340 (lemmaIsPrefixRefl!1958 lt!1259029 lt!1259029))))

(assert (=> d!1070001 (rulesValidInductive!2023 thiss!23823 rules!3307)))

(assert (=> d!1070001 (= (maxPrefix!2847 thiss!23823 rules!3307 lt!1259029) lt!1259337)))

(declare-fun b!3638589 () Bool)

(declare-fun res!1474464 () Bool)

(assert (=> b!3638589 (=> (not res!1474464) (not e!2252321))))

(assert (=> b!3638589 (= res!1474464 (< (size!29256 (_2!22236 (get!12548 lt!1259337))) (size!29256 lt!1259029)))))

(assert (= (and d!1070001 c!629228) b!3638594))

(assert (= (and d!1070001 (not c!629228)) b!3638588))

(assert (= (or b!3638594 b!3638588) bm!263056))

(assert (= (and d!1070001 (not res!1474466)) b!3638592))

(assert (= (and b!3638592 res!1474467) b!3638593))

(assert (= (and b!3638593 res!1474462) b!3638589))

(assert (= (and b!3638589 res!1474464) b!3638586))

(assert (= (and b!3638586 res!1474463) b!3638587))

(assert (= (and b!3638587 res!1474468) b!3638590))

(assert (= (and b!3638590 res!1474465) b!3638591))

(declare-fun m!4141289 () Bool)

(assert (=> b!3638591 m!4141289))

(declare-fun m!4141291 () Bool)

(assert (=> b!3638591 m!4141291))

(declare-fun m!4141293 () Bool)

(assert (=> b!3638592 m!4141293))

(declare-fun m!4141295 () Bool)

(assert (=> bm!263056 m!4141295))

(assert (=> b!3638586 m!4141289))

(declare-fun m!4141297 () Bool)

(assert (=> b!3638586 m!4141297))

(assert (=> b!3638586 m!4141297))

(declare-fun m!4141299 () Bool)

(assert (=> b!3638586 m!4141299))

(assert (=> b!3638586 m!4141299))

(declare-fun m!4141301 () Bool)

(assert (=> b!3638586 m!4141301))

(declare-fun m!4141303 () Bool)

(assert (=> b!3638588 m!4141303))

(assert (=> b!3638590 m!4141289))

(assert (=> b!3638590 m!4141297))

(assert (=> b!3638590 m!4141297))

(assert (=> b!3638590 m!4141299))

(assert (=> b!3638590 m!4141299))

(declare-fun m!4141305 () Bool)

(assert (=> b!3638590 m!4141305))

(declare-fun m!4141307 () Bool)

(assert (=> d!1070001 m!4141307))

(declare-fun m!4141309 () Bool)

(assert (=> d!1070001 m!4141309))

(declare-fun m!4141311 () Bool)

(assert (=> d!1070001 m!4141311))

(assert (=> d!1070001 m!4140755))

(assert (=> b!3638587 m!4141289))

(declare-fun m!4141313 () Bool)

(assert (=> b!3638587 m!4141313))

(assert (=> b!3638587 m!4141313))

(declare-fun m!4141315 () Bool)

(assert (=> b!3638587 m!4141315))

(assert (=> b!3638589 m!4141289))

(declare-fun m!4141317 () Bool)

(assert (=> b!3638589 m!4141317))

(assert (=> b!3638589 m!4140947))

(assert (=> b!3638593 m!4141289))

(assert (=> b!3638593 m!4141297))

(assert (=> b!3638593 m!4141297))

(assert (=> b!3638593 m!4141299))

(assert (=> b!3637888 d!1070001))

(declare-fun d!1070003 () Bool)

(assert (=> d!1070003 (= (list!14186 lt!1259049) (list!14188 (c!629111 lt!1259049)))))

(declare-fun bs!571882 () Bool)

(assert (= bs!571882 d!1070003))

(declare-fun m!4141319 () Bool)

(assert (=> bs!571882 m!4141319))

(assert (=> b!3637888 d!1070003))

(declare-fun d!1070005 () Bool)

(assert (=> d!1070005 (= (isDefined!6308 lt!1259037) (not (isEmpty!22697 lt!1259037)))))

(declare-fun bs!571883 () Bool)

(assert (= bs!571883 d!1070005))

(declare-fun m!4141321 () Bool)

(assert (=> bs!571883 m!4141321))

(assert (=> b!3637888 d!1070005))

(declare-fun d!1070007 () Bool)

(assert (=> d!1070007 (isPrefix!3087 lt!1259038 (++!9540 lt!1259038 suffix!1395))))

(declare-fun lt!1259344 () Unit!55166)

(declare-fun choose!21386 (List!38460 List!38460) Unit!55166)

(assert (=> d!1070007 (= lt!1259344 (choose!21386 lt!1259038 suffix!1395))))

(assert (=> d!1070007 (= (lemmaConcatTwoListThenFirstIsPrefix!2006 lt!1259038 suffix!1395) lt!1259344)))

(declare-fun bs!571884 () Bool)

(assert (= bs!571884 d!1070007))

(assert (=> bs!571884 m!4140459))

(assert (=> bs!571884 m!4140459))

(declare-fun m!4141323 () Bool)

(assert (=> bs!571884 m!4141323))

(declare-fun m!4141325 () Bool)

(assert (=> bs!571884 m!4141325))

(assert (=> b!3637888 d!1070007))

(declare-fun d!1070009 () Bool)

(assert (=> d!1070009 (isPrefix!3087 lt!1259046 (++!9540 lt!1259046 (_2!22236 lt!1259024)))))

(declare-fun lt!1259345 () Unit!55166)

(assert (=> d!1070009 (= lt!1259345 (choose!21386 lt!1259046 (_2!22236 lt!1259024)))))

(assert (=> d!1070009 (= (lemmaConcatTwoListThenFirstIsPrefix!2006 lt!1259046 (_2!22236 lt!1259024)) lt!1259345)))

(declare-fun bs!571885 () Bool)

(assert (= bs!571885 d!1070009))

(assert (=> bs!571885 m!4140463))

(assert (=> bs!571885 m!4140463))

(assert (=> bs!571885 m!4140465))

(declare-fun m!4141327 () Bool)

(assert (=> bs!571885 m!4141327))

(assert (=> b!3637888 d!1070009))

(assert (=> b!3637888 d!1069861))

(declare-fun b!3638603 () Bool)

(declare-fun e!2252329 () List!38460)

(assert (=> b!3638603 (= e!2252329 (_2!22236 lt!1259024))))

(declare-fun b!3638605 () Bool)

(declare-fun res!1474474 () Bool)

(declare-fun e!2252328 () Bool)

(assert (=> b!3638605 (=> (not res!1474474) (not e!2252328))))

(declare-fun lt!1259348 () List!38460)

(assert (=> b!3638605 (= res!1474474 (= (size!29256 lt!1259348) (+ (size!29256 lt!1259046) (size!29256 (_2!22236 lt!1259024)))))))

(declare-fun d!1070011 () Bool)

(assert (=> d!1070011 e!2252328))

(declare-fun res!1474473 () Bool)

(assert (=> d!1070011 (=> (not res!1474473) (not e!2252328))))

(assert (=> d!1070011 (= res!1474473 (= (content!5514 lt!1259348) ((_ map or) (content!5514 lt!1259046) (content!5514 (_2!22236 lt!1259024)))))))

(assert (=> d!1070011 (= lt!1259348 e!2252329)))

(declare-fun c!629231 () Bool)

(assert (=> d!1070011 (= c!629231 ((_ is Nil!38336) lt!1259046))))

(assert (=> d!1070011 (= (++!9540 lt!1259046 (_2!22236 lt!1259024)) lt!1259348)))

(declare-fun b!3638606 () Bool)

(assert (=> b!3638606 (= e!2252328 (or (not (= (_2!22236 lt!1259024) Nil!38336)) (= lt!1259348 lt!1259046)))))

(declare-fun b!3638604 () Bool)

(assert (=> b!3638604 (= e!2252329 (Cons!38336 (h!43756 lt!1259046) (++!9540 (t!296123 lt!1259046) (_2!22236 lt!1259024))))))

(assert (= (and d!1070011 c!629231) b!3638603))

(assert (= (and d!1070011 (not c!629231)) b!3638604))

(assert (= (and d!1070011 res!1474473) b!3638605))

(assert (= (and b!3638605 res!1474474) b!3638606))

(declare-fun m!4141329 () Bool)

(assert (=> b!3638605 m!4141329))

(assert (=> b!3638605 m!4140513))

(declare-fun m!4141331 () Bool)

(assert (=> b!3638605 m!4141331))

(declare-fun m!4141333 () Bool)

(assert (=> d!1070011 m!4141333))

(declare-fun m!4141335 () Bool)

(assert (=> d!1070011 m!4141335))

(declare-fun m!4141337 () Bool)

(assert (=> d!1070011 m!4141337))

(declare-fun m!4141339 () Bool)

(assert (=> b!3638604 m!4141339))

(assert (=> b!3637888 d!1070011))

(declare-fun b!3638609 () Bool)

(declare-fun e!2252331 () Bool)

(assert (=> b!3638609 (= e!2252331 (isPrefix!3087 (tail!5635 lt!1259046) (tail!5635 (++!9540 lt!1259046 (_2!22236 lt!1259024)))))))

(declare-fun d!1070013 () Bool)

(declare-fun e!2252332 () Bool)

(assert (=> d!1070013 e!2252332))

(declare-fun res!1474477 () Bool)

(assert (=> d!1070013 (=> res!1474477 e!2252332)))

(declare-fun lt!1259349 () Bool)

(assert (=> d!1070013 (= res!1474477 (not lt!1259349))))

(declare-fun e!2252330 () Bool)

(assert (=> d!1070013 (= lt!1259349 e!2252330)))

(declare-fun res!1474476 () Bool)

(assert (=> d!1070013 (=> res!1474476 e!2252330)))

(assert (=> d!1070013 (= res!1474476 ((_ is Nil!38336) lt!1259046))))

(assert (=> d!1070013 (= (isPrefix!3087 lt!1259046 (++!9540 lt!1259046 (_2!22236 lt!1259024))) lt!1259349)))

(declare-fun b!3638607 () Bool)

(assert (=> b!3638607 (= e!2252330 e!2252331)))

(declare-fun res!1474478 () Bool)

(assert (=> b!3638607 (=> (not res!1474478) (not e!2252331))))

(assert (=> b!3638607 (= res!1474478 (not ((_ is Nil!38336) (++!9540 lt!1259046 (_2!22236 lt!1259024)))))))

(declare-fun b!3638608 () Bool)

(declare-fun res!1474475 () Bool)

(assert (=> b!3638608 (=> (not res!1474475) (not e!2252331))))

(assert (=> b!3638608 (= res!1474475 (= (head!7718 lt!1259046) (head!7718 (++!9540 lt!1259046 (_2!22236 lt!1259024)))))))

(declare-fun b!3638610 () Bool)

(assert (=> b!3638610 (= e!2252332 (>= (size!29256 (++!9540 lt!1259046 (_2!22236 lt!1259024))) (size!29256 lt!1259046)))))

(assert (= (and d!1070013 (not res!1474476)) b!3638607))

(assert (= (and b!3638607 res!1474478) b!3638608))

(assert (= (and b!3638608 res!1474475) b!3638609))

(assert (= (and d!1070013 (not res!1474477)) b!3638610))

(assert (=> b!3638609 m!4141199))

(assert (=> b!3638609 m!4140463))

(declare-fun m!4141341 () Bool)

(assert (=> b!3638609 m!4141341))

(assert (=> b!3638609 m!4141199))

(assert (=> b!3638609 m!4141341))

(declare-fun m!4141343 () Bool)

(assert (=> b!3638609 m!4141343))

(assert (=> b!3638608 m!4140537))

(assert (=> b!3638608 m!4140463))

(declare-fun m!4141345 () Bool)

(assert (=> b!3638608 m!4141345))

(assert (=> b!3638610 m!4140463))

(declare-fun m!4141347 () Bool)

(assert (=> b!3638610 m!4141347))

(assert (=> b!3638610 m!4140513))

(assert (=> b!3637888 d!1070013))

(declare-fun b!3638611 () Bool)

(declare-fun e!2252334 () List!38460)

(assert (=> b!3638611 (= e!2252334 suffix!1395)))

(declare-fun b!3638613 () Bool)

(declare-fun res!1474480 () Bool)

(declare-fun e!2252333 () Bool)

(assert (=> b!3638613 (=> (not res!1474480) (not e!2252333))))

(declare-fun lt!1259350 () List!38460)

(assert (=> b!3638613 (= res!1474480 (= (size!29256 lt!1259350) (+ (size!29256 lt!1259038) (size!29256 suffix!1395))))))

(declare-fun d!1070015 () Bool)

(assert (=> d!1070015 e!2252333))

(declare-fun res!1474479 () Bool)

(assert (=> d!1070015 (=> (not res!1474479) (not e!2252333))))

(assert (=> d!1070015 (= res!1474479 (= (content!5514 lt!1259350) ((_ map or) (content!5514 lt!1259038) (content!5514 suffix!1395))))))

(assert (=> d!1070015 (= lt!1259350 e!2252334)))

(declare-fun c!629232 () Bool)

(assert (=> d!1070015 (= c!629232 ((_ is Nil!38336) lt!1259038))))

(assert (=> d!1070015 (= (++!9540 lt!1259038 suffix!1395) lt!1259350)))

(declare-fun b!3638614 () Bool)

(assert (=> b!3638614 (= e!2252333 (or (not (= suffix!1395 Nil!38336)) (= lt!1259350 lt!1259038)))))

(declare-fun b!3638612 () Bool)

(assert (=> b!3638612 (= e!2252334 (Cons!38336 (h!43756 lt!1259038) (++!9540 (t!296123 lt!1259038) suffix!1395)))))

(assert (= (and d!1070015 c!629232) b!3638611))

(assert (= (and d!1070015 (not c!629232)) b!3638612))

(assert (= (and d!1070015 res!1474479) b!3638613))

(assert (= (and b!3638613 res!1474480) b!3638614))

(declare-fun m!4141349 () Bool)

(assert (=> b!3638613 m!4141349))

(assert (=> b!3638613 m!4140763))

(declare-fun m!4141351 () Bool)

(assert (=> b!3638613 m!4141351))

(declare-fun m!4141353 () Bool)

(assert (=> d!1070015 m!4141353))

(assert (=> d!1070015 m!4140661))

(declare-fun m!4141355 () Bool)

(assert (=> d!1070015 m!4141355))

(declare-fun m!4141357 () Bool)

(assert (=> b!3638612 m!4141357))

(assert (=> b!3637888 d!1070015))

(declare-fun d!1070017 () Bool)

(declare-fun lt!1259351 () Bool)

(assert (=> d!1070017 (= lt!1259351 (select (content!5514 lt!1259040) lt!1259028))))

(declare-fun e!2252335 () Bool)

(assert (=> d!1070017 (= lt!1259351 e!2252335)))

(declare-fun res!1474481 () Bool)

(assert (=> d!1070017 (=> (not res!1474481) (not e!2252335))))

(assert (=> d!1070017 (= res!1474481 ((_ is Cons!38336) lt!1259040))))

(assert (=> d!1070017 (= (contains!7513 lt!1259040 lt!1259028) lt!1259351)))

(declare-fun b!3638615 () Bool)

(declare-fun e!2252336 () Bool)

(assert (=> b!3638615 (= e!2252335 e!2252336)))

(declare-fun res!1474482 () Bool)

(assert (=> b!3638615 (=> res!1474482 e!2252336)))

(assert (=> b!3638615 (= res!1474482 (= (h!43756 lt!1259040) lt!1259028))))

(declare-fun b!3638616 () Bool)

(assert (=> b!3638616 (= e!2252336 (contains!7513 (t!296123 lt!1259040) lt!1259028))))

(assert (= (and d!1070017 res!1474481) b!3638615))

(assert (= (and b!3638615 (not res!1474482)) b!3638616))

(declare-fun m!4141359 () Bool)

(assert (=> d!1070017 m!4141359))

(declare-fun m!4141361 () Bool)

(assert (=> d!1070017 m!4141361))

(declare-fun m!4141363 () Bool)

(assert (=> b!3638616 m!4141363))

(assert (=> b!3637910 d!1070017))

(declare-fun d!1070019 () Bool)

(assert (=> d!1070019 (= (head!7718 suffix!1395) (h!43756 suffix!1395))))

(assert (=> b!3637910 d!1070019))

(declare-fun d!1070021 () Bool)

(declare-fun c!629243 () Bool)

(assert (=> d!1070021 (= c!629243 (or ((_ is EmptyExpr!10483) (regex!5724 rule!403)) ((_ is EmptyLang!10483) (regex!5724 rule!403))))))

(declare-fun e!2252345 () List!38460)

(assert (=> d!1070021 (= (usedCharacters!936 (regex!5724 rule!403)) e!2252345)))

(declare-fun b!3638633 () Bool)

(declare-fun e!2252346 () List!38460)

(declare-fun call!263073 () List!38460)

(assert (=> b!3638633 (= e!2252346 call!263073)))

(declare-fun b!3638634 () Bool)

(declare-fun e!2252348 () List!38460)

(assert (=> b!3638634 (= e!2252345 e!2252348)))

(declare-fun c!629242 () Bool)

(assert (=> b!3638634 (= c!629242 ((_ is ElementMatch!10483) (regex!5724 rule!403)))))

(declare-fun b!3638635 () Bool)

(assert (=> b!3638635 (= e!2252345 Nil!38336)))

(declare-fun c!629241 () Bool)

(declare-fun call!263070 () List!38460)

(declare-fun c!629244 () Bool)

(declare-fun bm!263065 () Bool)

(assert (=> bm!263065 (= call!263070 (usedCharacters!936 (ite c!629241 (reg!10812 (regex!5724 rule!403)) (ite c!629244 (regTwo!21479 (regex!5724 rule!403)) (regOne!21478 (regex!5724 rule!403))))))))

(declare-fun b!3638636 () Bool)

(declare-fun e!2252347 () List!38460)

(assert (=> b!3638636 (= e!2252347 e!2252346)))

(assert (=> b!3638636 (= c!629244 ((_ is Union!10483) (regex!5724 rule!403)))))

(declare-fun b!3638637 () Bool)

(assert (=> b!3638637 (= e!2252348 (Cons!38336 (c!629110 (regex!5724 rule!403)) Nil!38336))))

(declare-fun bm!263066 () Bool)

(declare-fun call!263072 () List!38460)

(declare-fun call!263071 () List!38460)

(assert (=> bm!263066 (= call!263073 (++!9540 (ite c!629244 call!263071 call!263072) (ite c!629244 call!263072 call!263071)))))

(declare-fun bm!263067 () Bool)

(assert (=> bm!263067 (= call!263072 call!263070)))

(declare-fun b!3638638 () Bool)

(assert (=> b!3638638 (= c!629241 ((_ is Star!10483) (regex!5724 rule!403)))))

(assert (=> b!3638638 (= e!2252348 e!2252347)))

(declare-fun bm!263068 () Bool)

(assert (=> bm!263068 (= call!263071 (usedCharacters!936 (ite c!629244 (regOne!21479 (regex!5724 rule!403)) (regTwo!21478 (regex!5724 rule!403)))))))

(declare-fun b!3638639 () Bool)

(assert (=> b!3638639 (= e!2252346 call!263073)))

(declare-fun b!3638640 () Bool)

(assert (=> b!3638640 (= e!2252347 call!263070)))

(assert (= (and d!1070021 c!629243) b!3638635))

(assert (= (and d!1070021 (not c!629243)) b!3638634))

(assert (= (and b!3638634 c!629242) b!3638637))

(assert (= (and b!3638634 (not c!629242)) b!3638638))

(assert (= (and b!3638638 c!629241) b!3638640))

(assert (= (and b!3638638 (not c!629241)) b!3638636))

(assert (= (and b!3638636 c!629244) b!3638639))

(assert (= (and b!3638636 (not c!629244)) b!3638633))

(assert (= (or b!3638639 b!3638633) bm!263068))

(assert (= (or b!3638639 b!3638633) bm!263067))

(assert (= (or b!3638639 b!3638633) bm!263066))

(assert (= (or b!3638640 bm!263067) bm!263065))

(declare-fun m!4141365 () Bool)

(assert (=> bm!263065 m!4141365))

(declare-fun m!4141367 () Bool)

(assert (=> bm!263066 m!4141367))

(declare-fun m!4141369 () Bool)

(assert (=> bm!263068 m!4141369))

(assert (=> b!3637910 d!1070021))

(declare-fun d!1070023 () Bool)

(declare-fun res!1474485 () Bool)

(declare-fun e!2252351 () Bool)

(assert (=> d!1070023 (=> (not res!1474485) (not e!2252351))))

(declare-fun rulesValid!2194 (LexerInterface!5313 List!38461) Bool)

(assert (=> d!1070023 (= res!1474485 (rulesValid!2194 thiss!23823 rules!3307))))

(assert (=> d!1070023 (= (rulesInvariant!4710 thiss!23823 rules!3307) e!2252351)))

(declare-fun b!3638643 () Bool)

(declare-datatypes ((List!38465 0))(
  ( (Nil!38341) (Cons!38341 (h!43761 String!43104) (t!296248 List!38465)) )
))
(declare-fun noDuplicateTag!2190 (LexerInterface!5313 List!38461 List!38465) Bool)

(assert (=> b!3638643 (= e!2252351 (noDuplicateTag!2190 thiss!23823 rules!3307 Nil!38341))))

(assert (= (and d!1070023 res!1474485) b!3638643))

(declare-fun m!4141371 () Bool)

(assert (=> d!1070023 m!4141371))

(declare-fun m!4141373 () Bool)

(assert (=> b!3638643 m!4141373))

(assert (=> b!3637889 d!1070023))

(declare-fun d!1070025 () Bool)

(declare-fun e!2252355 () Bool)

(assert (=> d!1070025 e!2252355))

(declare-fun c!629247 () Bool)

(assert (=> d!1070025 (= c!629247 ((_ is EmptyExpr!10483) (regex!5724 (rule!8502 (_1!22236 lt!1259024)))))))

(declare-fun lt!1259352 () Bool)

(declare-fun e!2252358 () Bool)

(assert (=> d!1070025 (= lt!1259352 e!2252358)))

(declare-fun c!629246 () Bool)

(assert (=> d!1070025 (= c!629246 (isEmpty!22692 lt!1259046))))

(assert (=> d!1070025 (validRegex!4799 (regex!5724 (rule!8502 (_1!22236 lt!1259024))))))

(assert (=> d!1070025 (= (matchR!5052 (regex!5724 (rule!8502 (_1!22236 lt!1259024))) lt!1259046) lt!1259352)))

(declare-fun b!3638644 () Bool)

(assert (=> b!3638644 (= e!2252358 (matchR!5052 (derivativeStep!3186 (regex!5724 (rule!8502 (_1!22236 lt!1259024))) (head!7718 lt!1259046)) (tail!5635 lt!1259046)))))

(declare-fun b!3638645 () Bool)

(declare-fun call!263074 () Bool)

(assert (=> b!3638645 (= e!2252355 (= lt!1259352 call!263074))))

(declare-fun b!3638646 () Bool)

(declare-fun res!1474486 () Bool)

(declare-fun e!2252356 () Bool)

(assert (=> b!3638646 (=> (not res!1474486) (not e!2252356))))

(assert (=> b!3638646 (= res!1474486 (not call!263074))))

(declare-fun b!3638647 () Bool)

(assert (=> b!3638647 (= e!2252356 (= (head!7718 lt!1259046) (c!629110 (regex!5724 (rule!8502 (_1!22236 lt!1259024))))))))

(declare-fun b!3638648 () Bool)

(declare-fun res!1474491 () Bool)

(declare-fun e!2252352 () Bool)

(assert (=> b!3638648 (=> res!1474491 e!2252352)))

(assert (=> b!3638648 (= res!1474491 (not (isEmpty!22692 (tail!5635 lt!1259046))))))

(declare-fun b!3638649 () Bool)

(declare-fun e!2252354 () Bool)

(assert (=> b!3638649 (= e!2252354 (not lt!1259352))))

(declare-fun b!3638650 () Bool)

(declare-fun e!2252357 () Bool)

(assert (=> b!3638650 (= e!2252357 e!2252352)))

(declare-fun res!1474489 () Bool)

(assert (=> b!3638650 (=> res!1474489 e!2252352)))

(assert (=> b!3638650 (= res!1474489 call!263074)))

(declare-fun b!3638651 () Bool)

(assert (=> b!3638651 (= e!2252352 (not (= (head!7718 lt!1259046) (c!629110 (regex!5724 (rule!8502 (_1!22236 lt!1259024)))))))))

(declare-fun b!3638652 () Bool)

(declare-fun res!1474490 () Bool)

(assert (=> b!3638652 (=> (not res!1474490) (not e!2252356))))

(assert (=> b!3638652 (= res!1474490 (isEmpty!22692 (tail!5635 lt!1259046)))))

(declare-fun b!3638653 () Bool)

(assert (=> b!3638653 (= e!2252358 (nullable!3637 (regex!5724 (rule!8502 (_1!22236 lt!1259024)))))))

(declare-fun bm!263069 () Bool)

(assert (=> bm!263069 (= call!263074 (isEmpty!22692 lt!1259046))))

(declare-fun b!3638654 () Bool)

(assert (=> b!3638654 (= e!2252355 e!2252354)))

(declare-fun c!629245 () Bool)

(assert (=> b!3638654 (= c!629245 ((_ is EmptyLang!10483) (regex!5724 (rule!8502 (_1!22236 lt!1259024)))))))

(declare-fun b!3638655 () Bool)

(declare-fun res!1474488 () Bool)

(declare-fun e!2252353 () Bool)

(assert (=> b!3638655 (=> res!1474488 e!2252353)))

(assert (=> b!3638655 (= res!1474488 (not ((_ is ElementMatch!10483) (regex!5724 (rule!8502 (_1!22236 lt!1259024))))))))

(assert (=> b!3638655 (= e!2252354 e!2252353)))

(declare-fun b!3638656 () Bool)

(assert (=> b!3638656 (= e!2252353 e!2252357)))

(declare-fun res!1474487 () Bool)

(assert (=> b!3638656 (=> (not res!1474487) (not e!2252357))))

(assert (=> b!3638656 (= res!1474487 (not lt!1259352))))

(declare-fun b!3638657 () Bool)

(declare-fun res!1474493 () Bool)

(assert (=> b!3638657 (=> res!1474493 e!2252353)))

(assert (=> b!3638657 (= res!1474493 e!2252356)))

(declare-fun res!1474492 () Bool)

(assert (=> b!3638657 (=> (not res!1474492) (not e!2252356))))

(assert (=> b!3638657 (= res!1474492 lt!1259352)))

(assert (= (and d!1070025 c!629246) b!3638653))

(assert (= (and d!1070025 (not c!629246)) b!3638644))

(assert (= (and d!1070025 c!629247) b!3638645))

(assert (= (and d!1070025 (not c!629247)) b!3638654))

(assert (= (and b!3638654 c!629245) b!3638649))

(assert (= (and b!3638654 (not c!629245)) b!3638655))

(assert (= (and b!3638655 (not res!1474488)) b!3638657))

(assert (= (and b!3638657 res!1474492) b!3638646))

(assert (= (and b!3638646 res!1474486) b!3638652))

(assert (= (and b!3638652 res!1474490) b!3638647))

(assert (= (and b!3638657 (not res!1474493)) b!3638656))

(assert (= (and b!3638656 res!1474487) b!3638650))

(assert (= (and b!3638650 (not res!1474489)) b!3638648))

(assert (= (and b!3638648 (not res!1474491)) b!3638651))

(assert (= (or b!3638645 b!3638646 b!3638650) bm!263069))

(assert (=> b!3638651 m!4140537))

(assert (=> b!3638648 m!4141199))

(assert (=> b!3638648 m!4141199))

(declare-fun m!4141375 () Bool)

(assert (=> b!3638648 m!4141375))

(assert (=> b!3638652 m!4141199))

(assert (=> b!3638652 m!4141199))

(assert (=> b!3638652 m!4141375))

(declare-fun m!4141377 () Bool)

(assert (=> b!3638653 m!4141377))

(declare-fun m!4141379 () Bool)

(assert (=> d!1070025 m!4141379))

(declare-fun m!4141381 () Bool)

(assert (=> d!1070025 m!4141381))

(assert (=> b!3638644 m!4140537))

(assert (=> b!3638644 m!4140537))

(declare-fun m!4141383 () Bool)

(assert (=> b!3638644 m!4141383))

(assert (=> b!3638644 m!4141199))

(assert (=> b!3638644 m!4141383))

(assert (=> b!3638644 m!4141199))

(declare-fun m!4141385 () Bool)

(assert (=> b!3638644 m!4141385))

(assert (=> b!3638647 m!4140537))

(assert (=> bm!263069 m!4141379))

(assert (=> b!3637885 d!1070025))

(declare-fun d!1070027 () Bool)

(assert (=> d!1070027 (= (inv!51763 (tag!6468 anOtherTypeRule!33)) (= (mod (str.len (value!183593 (tag!6468 anOtherTypeRule!33))) 2) 0))))

(assert (=> b!3637907 d!1070027))

(declare-fun d!1070029 () Bool)

(declare-fun res!1474494 () Bool)

(declare-fun e!2252359 () Bool)

(assert (=> d!1070029 (=> (not res!1474494) (not e!2252359))))

(assert (=> d!1070029 (= res!1474494 (semiInverseModEq!2437 (toChars!7875 (transformation!5724 anOtherTypeRule!33)) (toValue!8016 (transformation!5724 anOtherTypeRule!33))))))

(assert (=> d!1070029 (= (inv!51767 (transformation!5724 anOtherTypeRule!33)) e!2252359)))

(declare-fun b!3638658 () Bool)

(assert (=> b!3638658 (= e!2252359 (equivClasses!2336 (toChars!7875 (transformation!5724 anOtherTypeRule!33)) (toValue!8016 (transformation!5724 anOtherTypeRule!33))))))

(assert (= (and d!1070029 res!1474494) b!3638658))

(declare-fun m!4141387 () Bool)

(assert (=> d!1070029 m!4141387))

(declare-fun m!4141389 () Bool)

(assert (=> b!3638658 m!4141389))

(assert (=> b!3637907 d!1070029))

(declare-fun d!1070031 () Bool)

(declare-fun lt!1259353 () Bool)

(assert (=> d!1070031 (= lt!1259353 (select (content!5514 (usedCharacters!936 (regex!5724 anOtherTypeRule!33))) lt!1259028))))

(declare-fun e!2252360 () Bool)

(assert (=> d!1070031 (= lt!1259353 e!2252360)))

(declare-fun res!1474495 () Bool)

(assert (=> d!1070031 (=> (not res!1474495) (not e!2252360))))

(assert (=> d!1070031 (= res!1474495 ((_ is Cons!38336) (usedCharacters!936 (regex!5724 anOtherTypeRule!33))))))

(assert (=> d!1070031 (= (contains!7513 (usedCharacters!936 (regex!5724 anOtherTypeRule!33)) lt!1259028) lt!1259353)))

(declare-fun b!3638659 () Bool)

(declare-fun e!2252361 () Bool)

(assert (=> b!3638659 (= e!2252360 e!2252361)))

(declare-fun res!1474496 () Bool)

(assert (=> b!3638659 (=> res!1474496 e!2252361)))

(assert (=> b!3638659 (= res!1474496 (= (h!43756 (usedCharacters!936 (regex!5724 anOtherTypeRule!33))) lt!1259028))))

(declare-fun b!3638660 () Bool)

(assert (=> b!3638660 (= e!2252361 (contains!7513 (t!296123 (usedCharacters!936 (regex!5724 anOtherTypeRule!33))) lt!1259028))))

(assert (= (and d!1070031 res!1474495) b!3638659))

(assert (= (and b!3638659 (not res!1474496)) b!3638660))

(assert (=> d!1070031 m!4140529))

(declare-fun m!4141391 () Bool)

(assert (=> d!1070031 m!4141391))

(declare-fun m!4141393 () Bool)

(assert (=> d!1070031 m!4141393))

(declare-fun m!4141395 () Bool)

(assert (=> b!3638660 m!4141395))

(assert (=> b!3637903 d!1070031))

(declare-fun d!1070033 () Bool)

(declare-fun c!629250 () Bool)

(assert (=> d!1070033 (= c!629250 (or ((_ is EmptyExpr!10483) (regex!5724 anOtherTypeRule!33)) ((_ is EmptyLang!10483) (regex!5724 anOtherTypeRule!33))))))

(declare-fun e!2252362 () List!38460)

(assert (=> d!1070033 (= (usedCharacters!936 (regex!5724 anOtherTypeRule!33)) e!2252362)))

(declare-fun b!3638661 () Bool)

(declare-fun e!2252363 () List!38460)

(declare-fun call!263078 () List!38460)

(assert (=> b!3638661 (= e!2252363 call!263078)))

(declare-fun b!3638662 () Bool)

(declare-fun e!2252365 () List!38460)

(assert (=> b!3638662 (= e!2252362 e!2252365)))

(declare-fun c!629249 () Bool)

(assert (=> b!3638662 (= c!629249 ((_ is ElementMatch!10483) (regex!5724 anOtherTypeRule!33)))))

(declare-fun b!3638663 () Bool)

(assert (=> b!3638663 (= e!2252362 Nil!38336)))

(declare-fun call!263075 () List!38460)

(declare-fun bm!263070 () Bool)

(declare-fun c!629248 () Bool)

(declare-fun c!629251 () Bool)

(assert (=> bm!263070 (= call!263075 (usedCharacters!936 (ite c!629248 (reg!10812 (regex!5724 anOtherTypeRule!33)) (ite c!629251 (regTwo!21479 (regex!5724 anOtherTypeRule!33)) (regOne!21478 (regex!5724 anOtherTypeRule!33))))))))

(declare-fun b!3638664 () Bool)

(declare-fun e!2252364 () List!38460)

(assert (=> b!3638664 (= e!2252364 e!2252363)))

(assert (=> b!3638664 (= c!629251 ((_ is Union!10483) (regex!5724 anOtherTypeRule!33)))))

(declare-fun b!3638665 () Bool)

(assert (=> b!3638665 (= e!2252365 (Cons!38336 (c!629110 (regex!5724 anOtherTypeRule!33)) Nil!38336))))

(declare-fun bm!263071 () Bool)

(declare-fun call!263077 () List!38460)

(declare-fun call!263076 () List!38460)

(assert (=> bm!263071 (= call!263078 (++!9540 (ite c!629251 call!263076 call!263077) (ite c!629251 call!263077 call!263076)))))

(declare-fun bm!263072 () Bool)

(assert (=> bm!263072 (= call!263077 call!263075)))

(declare-fun b!3638666 () Bool)

(assert (=> b!3638666 (= c!629248 ((_ is Star!10483) (regex!5724 anOtherTypeRule!33)))))

(assert (=> b!3638666 (= e!2252365 e!2252364)))

(declare-fun bm!263073 () Bool)

(assert (=> bm!263073 (= call!263076 (usedCharacters!936 (ite c!629251 (regOne!21479 (regex!5724 anOtherTypeRule!33)) (regTwo!21478 (regex!5724 anOtherTypeRule!33)))))))

(declare-fun b!3638667 () Bool)

(assert (=> b!3638667 (= e!2252363 call!263078)))

(declare-fun b!3638668 () Bool)

(assert (=> b!3638668 (= e!2252364 call!263075)))

(assert (= (and d!1070033 c!629250) b!3638663))

(assert (= (and d!1070033 (not c!629250)) b!3638662))

(assert (= (and b!3638662 c!629249) b!3638665))

(assert (= (and b!3638662 (not c!629249)) b!3638666))

(assert (= (and b!3638666 c!629248) b!3638668))

(assert (= (and b!3638666 (not c!629248)) b!3638664))

(assert (= (and b!3638664 c!629251) b!3638667))

(assert (= (and b!3638664 (not c!629251)) b!3638661))

(assert (= (or b!3638667 b!3638661) bm!263073))

(assert (= (or b!3638667 b!3638661) bm!263072))

(assert (= (or b!3638667 b!3638661) bm!263071))

(assert (= (or b!3638668 bm!263072) bm!263070))

(declare-fun m!4141397 () Bool)

(assert (=> bm!263070 m!4141397))

(declare-fun m!4141399 () Bool)

(assert (=> bm!263071 m!4141399))

(declare-fun m!4141401 () Bool)

(assert (=> bm!263073 m!4141401))

(assert (=> b!3637903 d!1070033))

(declare-fun d!1070035 () Bool)

(declare-fun lt!1259356 () Bool)

(declare-fun content!5515 (List!38461) (InoxSet Rule!11248))

(assert (=> d!1070035 (= lt!1259356 (select (content!5515 rules!3307) anOtherTypeRule!33))))

(declare-fun e!2252370 () Bool)

(assert (=> d!1070035 (= lt!1259356 e!2252370)))

(declare-fun res!1474501 () Bool)

(assert (=> d!1070035 (=> (not res!1474501) (not e!2252370))))

(assert (=> d!1070035 (= res!1474501 ((_ is Cons!38337) rules!3307))))

(assert (=> d!1070035 (= (contains!7514 rules!3307 anOtherTypeRule!33) lt!1259356)))

(declare-fun b!3638673 () Bool)

(declare-fun e!2252371 () Bool)

(assert (=> b!3638673 (= e!2252370 e!2252371)))

(declare-fun res!1474502 () Bool)

(assert (=> b!3638673 (=> res!1474502 e!2252371)))

(assert (=> b!3638673 (= res!1474502 (= (h!43757 rules!3307) anOtherTypeRule!33))))

(declare-fun b!3638674 () Bool)

(assert (=> b!3638674 (= e!2252371 (contains!7514 (t!296124 rules!3307) anOtherTypeRule!33))))

(assert (= (and d!1070035 res!1474501) b!3638673))

(assert (= (and b!3638673 (not res!1474502)) b!3638674))

(declare-fun m!4141403 () Bool)

(assert (=> d!1070035 m!4141403))

(declare-fun m!4141405 () Bool)

(assert (=> d!1070035 m!4141405))

(declare-fun m!4141407 () Bool)

(assert (=> b!3638674 m!4141407))

(assert (=> b!3637904 d!1070035))

(declare-fun d!1070037 () Bool)

(assert (=> d!1070037 (= (inv!51763 (tag!6468 rule!403)) (= (mod (str.len (value!183593 (tag!6468 rule!403))) 2) 0))))

(assert (=> b!3637905 d!1070037))

(declare-fun d!1070039 () Bool)

(declare-fun res!1474503 () Bool)

(declare-fun e!2252372 () Bool)

(assert (=> d!1070039 (=> (not res!1474503) (not e!2252372))))

(assert (=> d!1070039 (= res!1474503 (semiInverseModEq!2437 (toChars!7875 (transformation!5724 rule!403)) (toValue!8016 (transformation!5724 rule!403))))))

(assert (=> d!1070039 (= (inv!51767 (transformation!5724 rule!403)) e!2252372)))

(declare-fun b!3638675 () Bool)

(assert (=> b!3638675 (= e!2252372 (equivClasses!2336 (toChars!7875 (transformation!5724 rule!403)) (toValue!8016 (transformation!5724 rule!403))))))

(assert (= (and d!1070039 res!1474503) b!3638675))

(declare-fun m!4141409 () Bool)

(assert (=> d!1070039 m!4141409))

(declare-fun m!4141411 () Bool)

(assert (=> b!3638675 m!4141411))

(assert (=> b!3637905 d!1070039))

(declare-fun d!1070041 () Bool)

(declare-fun lt!1259357 () Bool)

(assert (=> d!1070041 (= lt!1259357 (select (content!5514 lt!1259040) lt!1259034))))

(declare-fun e!2252373 () Bool)

(assert (=> d!1070041 (= lt!1259357 e!2252373)))

(declare-fun res!1474504 () Bool)

(assert (=> d!1070041 (=> (not res!1474504) (not e!2252373))))

(assert (=> d!1070041 (= res!1474504 ((_ is Cons!38336) lt!1259040))))

(assert (=> d!1070041 (= (contains!7513 lt!1259040 lt!1259034) lt!1259357)))

(declare-fun b!3638676 () Bool)

(declare-fun e!2252374 () Bool)

(assert (=> b!3638676 (= e!2252373 e!2252374)))

(declare-fun res!1474505 () Bool)

(assert (=> b!3638676 (=> res!1474505 e!2252374)))

(assert (=> b!3638676 (= res!1474505 (= (h!43756 lt!1259040) lt!1259034))))

(declare-fun b!3638677 () Bool)

(assert (=> b!3638677 (= e!2252374 (contains!7513 (t!296123 lt!1259040) lt!1259034))))

(assert (= (and d!1070041 res!1474504) b!3638676))

(assert (= (and b!3638676 (not res!1474505)) b!3638677))

(assert (=> d!1070041 m!4141359))

(declare-fun m!4141413 () Bool)

(assert (=> d!1070041 m!4141413))

(declare-fun m!4141415 () Bool)

(assert (=> b!3638677 m!4141415))

(assert (=> b!3637901 d!1070041))

(declare-fun d!1070043 () Bool)

(assert (=> d!1070043 (= (head!7718 lt!1259046) (h!43756 lt!1259046))))

(assert (=> b!3637901 d!1070043))

(declare-fun d!1070045 () Bool)

(declare-fun lt!1259358 () Bool)

(assert (=> d!1070045 (= lt!1259358 (select (content!5515 rules!3307) rule!403))))

(declare-fun e!2252375 () Bool)

(assert (=> d!1070045 (= lt!1259358 e!2252375)))

(declare-fun res!1474506 () Bool)

(assert (=> d!1070045 (=> (not res!1474506) (not e!2252375))))

(assert (=> d!1070045 (= res!1474506 ((_ is Cons!38337) rules!3307))))

(assert (=> d!1070045 (= (contains!7514 rules!3307 rule!403) lt!1259358)))

(declare-fun b!3638678 () Bool)

(declare-fun e!2252376 () Bool)

(assert (=> b!3638678 (= e!2252375 e!2252376)))

(declare-fun res!1474507 () Bool)

(assert (=> b!3638678 (=> res!1474507 e!2252376)))

(assert (=> b!3638678 (= res!1474507 (= (h!43757 rules!3307) rule!403))))

(declare-fun b!3638679 () Bool)

(assert (=> b!3638679 (= e!2252376 (contains!7514 (t!296124 rules!3307) rule!403))))

(assert (= (and d!1070045 res!1474506) b!3638678))

(assert (= (and b!3638678 (not res!1474507)) b!3638679))

(assert (=> d!1070045 m!4141403))

(declare-fun m!4141417 () Bool)

(assert (=> d!1070045 m!4141417))

(declare-fun m!4141419 () Bool)

(assert (=> b!3638679 m!4141419))

(assert (=> b!3637902 d!1070045))

(declare-fun b!3638693 () Bool)

(declare-fun e!2252379 () Bool)

(declare-fun tp!1110157 () Bool)

(declare-fun tp!1110159 () Bool)

(assert (=> b!3638693 (= e!2252379 (and tp!1110157 tp!1110159))))

(assert (=> b!3637905 (= tp!1110085 e!2252379)))

(declare-fun b!3638691 () Bool)

(declare-fun tp!1110158 () Bool)

(declare-fun tp!1110160 () Bool)

(assert (=> b!3638691 (= e!2252379 (and tp!1110158 tp!1110160))))

(declare-fun b!3638692 () Bool)

(declare-fun tp!1110161 () Bool)

(assert (=> b!3638692 (= e!2252379 tp!1110161)))

(declare-fun b!3638690 () Bool)

(assert (=> b!3638690 (= e!2252379 tp_is_empty!18049)))

(assert (= (and b!3637905 ((_ is ElementMatch!10483) (regex!5724 rule!403))) b!3638690))

(assert (= (and b!3637905 ((_ is Concat!16438) (regex!5724 rule!403))) b!3638691))

(assert (= (and b!3637905 ((_ is Star!10483) (regex!5724 rule!403))) b!3638692))

(assert (= (and b!3637905 ((_ is Union!10483) (regex!5724 rule!403))) b!3638693))

(declare-fun b!3638697 () Bool)

(declare-fun e!2252380 () Bool)

(declare-fun tp!1110162 () Bool)

(declare-fun tp!1110164 () Bool)

(assert (=> b!3638697 (= e!2252380 (and tp!1110162 tp!1110164))))

(assert (=> b!3637917 (= tp!1110080 e!2252380)))

(declare-fun b!3638695 () Bool)

(declare-fun tp!1110163 () Bool)

(declare-fun tp!1110165 () Bool)

(assert (=> b!3638695 (= e!2252380 (and tp!1110163 tp!1110165))))

(declare-fun b!3638696 () Bool)

(declare-fun tp!1110166 () Bool)

(assert (=> b!3638696 (= e!2252380 tp!1110166)))

(declare-fun b!3638694 () Bool)

(assert (=> b!3638694 (= e!2252380 tp_is_empty!18049)))

(assert (= (and b!3637917 ((_ is ElementMatch!10483) (regex!5724 (h!43757 rules!3307)))) b!3638694))

(assert (= (and b!3637917 ((_ is Concat!16438) (regex!5724 (h!43757 rules!3307)))) b!3638695))

(assert (= (and b!3637917 ((_ is Star!10483) (regex!5724 (h!43757 rules!3307)))) b!3638696))

(assert (= (and b!3637917 ((_ is Union!10483) (regex!5724 (h!43757 rules!3307)))) b!3638697))

(declare-fun b!3638701 () Bool)

(declare-fun e!2252381 () Bool)

(declare-fun tp!1110167 () Bool)

(declare-fun tp!1110169 () Bool)

(assert (=> b!3638701 (= e!2252381 (and tp!1110167 tp!1110169))))

(assert (=> b!3637912 (= tp!1110087 e!2252381)))

(declare-fun b!3638699 () Bool)

(declare-fun tp!1110168 () Bool)

(declare-fun tp!1110170 () Bool)

(assert (=> b!3638699 (= e!2252381 (and tp!1110168 tp!1110170))))

(declare-fun b!3638700 () Bool)

(declare-fun tp!1110171 () Bool)

(assert (=> b!3638700 (= e!2252381 tp!1110171)))

(declare-fun b!3638698 () Bool)

(assert (=> b!3638698 (= e!2252381 tp_is_empty!18049)))

(assert (= (and b!3637912 ((_ is ElementMatch!10483) (regex!5724 (rule!8502 token!511)))) b!3638698))

(assert (= (and b!3637912 ((_ is Concat!16438) (regex!5724 (rule!8502 token!511)))) b!3638699))

(assert (= (and b!3637912 ((_ is Star!10483) (regex!5724 (rule!8502 token!511)))) b!3638700))

(assert (= (and b!3637912 ((_ is Union!10483) (regex!5724 (rule!8502 token!511)))) b!3638701))

(declare-fun b!3638706 () Bool)

(declare-fun e!2252384 () Bool)

(declare-fun tp!1110174 () Bool)

(assert (=> b!3638706 (= e!2252384 (and tp_is_empty!18049 tp!1110174))))

(assert (=> b!3637896 (= tp!1110082 e!2252384)))

(assert (= (and b!3637896 ((_ is Cons!38336) (originalCharacters!6438 token!511))) b!3638706))

(declare-fun b!3638710 () Bool)

(declare-fun e!2252385 () Bool)

(declare-fun tp!1110175 () Bool)

(declare-fun tp!1110177 () Bool)

(assert (=> b!3638710 (= e!2252385 (and tp!1110175 tp!1110177))))

(assert (=> b!3637907 (= tp!1110088 e!2252385)))

(declare-fun b!3638708 () Bool)

(declare-fun tp!1110176 () Bool)

(declare-fun tp!1110178 () Bool)

(assert (=> b!3638708 (= e!2252385 (and tp!1110176 tp!1110178))))

(declare-fun b!3638709 () Bool)

(declare-fun tp!1110179 () Bool)

(assert (=> b!3638709 (= e!2252385 tp!1110179)))

(declare-fun b!3638707 () Bool)

(assert (=> b!3638707 (= e!2252385 tp_is_empty!18049)))

(assert (= (and b!3637907 ((_ is ElementMatch!10483) (regex!5724 anOtherTypeRule!33))) b!3638707))

(assert (= (and b!3637907 ((_ is Concat!16438) (regex!5724 anOtherTypeRule!33))) b!3638708))

(assert (= (and b!3637907 ((_ is Star!10483) (regex!5724 anOtherTypeRule!33))) b!3638709))

(assert (= (and b!3637907 ((_ is Union!10483) (regex!5724 anOtherTypeRule!33))) b!3638710))

(declare-fun b!3638721 () Bool)

(declare-fun b_free!95309 () Bool)

(declare-fun b_next!96013 () Bool)

(assert (=> b!3638721 (= b_free!95309 (not b_next!96013))))

(declare-fun tb!209529 () Bool)

(declare-fun t!296234 () Bool)

(assert (=> (and b!3638721 (= (toValue!8016 (transformation!5724 (h!43757 (t!296124 rules!3307)))) (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) t!296234) tb!209529))

(declare-fun result!255210 () Bool)

(assert (= result!255210 result!255146))

(assert (=> d!1069971 t!296234))

(declare-fun t!296236 () Bool)

(declare-fun tb!209531 () Bool)

(assert (=> (and b!3638721 (= (toValue!8016 (transformation!5724 (h!43757 (t!296124 rules!3307)))) (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) t!296236) tb!209531))

(declare-fun result!255212 () Bool)

(assert (= result!255212 result!255154))

(assert (=> d!1069977 t!296236))

(assert (=> d!1069977 t!296234))

(assert (=> d!1069935 t!296234))

(declare-fun tb!209533 () Bool)

(declare-fun t!296238 () Bool)

(assert (=> (and b!3638721 (= (toValue!8016 (transformation!5724 (h!43757 (t!296124 rules!3307)))) (toValue!8016 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) t!296238) tb!209533))

(declare-fun result!255214 () Bool)

(assert (= result!255214 result!255120))

(assert (=> d!1069879 t!296238))

(declare-fun tp!1110189 () Bool)

(declare-fun b_and!267991 () Bool)

(assert (=> b!3638721 (= tp!1110189 (and (=> t!296236 result!255212) (=> t!296238 result!255214) (=> t!296234 result!255210) b_and!267991))))

(declare-fun b_free!95311 () Bool)

(declare-fun b_next!96015 () Bool)

(assert (=> b!3638721 (= b_free!95311 (not b_next!96015))))

(declare-fun tb!209535 () Bool)

(declare-fun t!296240 () Bool)

(assert (=> (and b!3638721 (= (toChars!7875 (transformation!5724 (h!43757 (t!296124 rules!3307)))) (toChars!7875 (transformation!5724 (rule!8502 token!511)))) t!296240) tb!209535))

(declare-fun result!255216 () Bool)

(assert (= result!255216 result!255092))

(assert (=> b!3638035 t!296240))

(assert (=> d!1069847 t!296240))

(declare-fun t!296242 () Bool)

(declare-fun tb!209537 () Bool)

(assert (=> (and b!3638721 (= (toChars!7875 (transformation!5724 (h!43757 (t!296124 rules!3307)))) (toChars!7875 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) t!296242) tb!209537))

(declare-fun result!255218 () Bool)

(assert (= result!255218 result!255112))

(assert (=> d!1069861 t!296242))

(declare-fun tb!209539 () Bool)

(declare-fun t!296244 () Bool)

(assert (=> (and b!3638721 (= (toChars!7875 (transformation!5724 (h!43757 (t!296124 rules!3307)))) (toChars!7875 (transformation!5724 (rule!8502 (_1!22236 lt!1259024))))) t!296244) tb!209539))

(declare-fun result!255220 () Bool)

(assert (= result!255220 result!255138))

(assert (=> d!1069935 t!296244))

(declare-fun tp!1110191 () Bool)

(declare-fun b_and!267993 () Bool)

(assert (=> b!3638721 (= tp!1110191 (and (=> t!296240 result!255216) (=> t!296242 result!255218) (=> t!296244 result!255220) b_and!267993))))

(declare-fun e!2252395 () Bool)

(assert (=> b!3638721 (= e!2252395 (and tp!1110189 tp!1110191))))

(declare-fun e!2252394 () Bool)

(declare-fun tp!1110190 () Bool)

(declare-fun b!3638720 () Bool)

(assert (=> b!3638720 (= e!2252394 (and tp!1110190 (inv!51763 (tag!6468 (h!43757 (t!296124 rules!3307)))) (inv!51767 (transformation!5724 (h!43757 (t!296124 rules!3307)))) e!2252395))))

(declare-fun b!3638719 () Bool)

(declare-fun e!2252397 () Bool)

(declare-fun tp!1110188 () Bool)

(assert (=> b!3638719 (= e!2252397 (and e!2252394 tp!1110188))))

(assert (=> b!3637886 (= tp!1110078 e!2252397)))

(assert (= b!3638720 b!3638721))

(assert (= b!3638719 b!3638720))

(assert (= (and b!3637886 ((_ is Cons!38337) (t!296124 rules!3307))) b!3638719))

(declare-fun m!4141421 () Bool)

(assert (=> b!3638720 m!4141421))

(declare-fun m!4141423 () Bool)

(assert (=> b!3638720 m!4141423))

(declare-fun b!3638722 () Bool)

(declare-fun e!2252398 () Bool)

(declare-fun tp!1110192 () Bool)

(assert (=> b!3638722 (= e!2252398 (and tp_is_empty!18049 tp!1110192))))

(assert (=> b!3637897 (= tp!1110081 e!2252398)))

(assert (= (and b!3637897 ((_ is Cons!38336) (t!296123 suffix!1395))) b!3638722))

(declare-fun b_lambda!107851 () Bool)

(assert (= b_lambda!107817 (or (and b!3637892 b_free!95295) (and b!3637898 b_free!95303 (= (toChars!7875 (transformation!5724 rule!403)) (toChars!7875 (transformation!5724 (rule!8502 token!511))))) (and b!3637900 b_free!95291 (= (toChars!7875 (transformation!5724 anOtherTypeRule!33)) (toChars!7875 (transformation!5724 (rule!8502 token!511))))) (and b!3638721 b_free!95311 (= (toChars!7875 (transformation!5724 (h!43757 (t!296124 rules!3307)))) (toChars!7875 (transformation!5724 (rule!8502 token!511))))) (and b!3637890 b_free!95299 (= (toChars!7875 (transformation!5724 (h!43757 rules!3307))) (toChars!7875 (transformation!5724 (rule!8502 token!511))))) b_lambda!107851)))

(declare-fun b_lambda!107853 () Bool)

(assert (= b_lambda!107813 (or (and b!3637892 b_free!95295) (and b!3637898 b_free!95303 (= (toChars!7875 (transformation!5724 rule!403)) (toChars!7875 (transformation!5724 (rule!8502 token!511))))) (and b!3637900 b_free!95291 (= (toChars!7875 (transformation!5724 anOtherTypeRule!33)) (toChars!7875 (transformation!5724 (rule!8502 token!511))))) (and b!3638721 b_free!95311 (= (toChars!7875 (transformation!5724 (h!43757 (t!296124 rules!3307)))) (toChars!7875 (transformation!5724 (rule!8502 token!511))))) (and b!3637890 b_free!95299 (= (toChars!7875 (transformation!5724 (h!43757 rules!3307))) (toChars!7875 (transformation!5724 (rule!8502 token!511))))) b_lambda!107853)))

(check-sat (not d!1069979) (not b!3638700) (not b_next!96003) (not b!3638082) (not b!3638612) (not b!3638081) (not d!1069865) (not b!3638044) b_and!267907 (not b!3638469) (not bm!263032) (not b!3638610) (not d!1069831) (not b!3638361) (not b_lambda!107833) (not b!3638675) (not b!3638498) (not d!1069847) (not d!1069867) (not b!3638592) (not b!3638064) (not b!3638147) (not b!3638696) (not b!3638578) (not d!1070009) (not d!1069861) (not d!1070025) (not b!3638692) (not d!1070017) (not b!3638719) (not d!1070031) b_and!267941 (not b!3638217) (not b!3638587) (not b!3638145) (not b!3638396) b_and!267909 b_and!267991 (not d!1069975) (not bm!263065) (not d!1070015) (not d!1070023) (not b!3638697) (not b!3638237) (not bm!263070) (not b!3638220) (not d!1069987) (not b!3638658) b_and!267943 (not b!3638232) (not b_next!95995) (not d!1069973) (not b!3638695) (not tb!209485) (not bm!263024) (not b_next!95993) (not b!3638708) (not b_next!95997) (not d!1069881) (not b!3638584) b_and!267911 (not b!3638004) (not b!3638710) (not b!3638643) (not b!3638590) (not b!3638709) (not b!3638354) (not bm!263073) (not b!3638720) (not d!1069923) (not b!3638647) (not b!3638605) (not b!3638359) (not b_lambda!107853) (not d!1069821) (not b!3638644) (not b_lambda!107829) (not d!1069983) b_and!267945 (not b!3638585) (not bm!263066) (not b!3638660) (not b!3638065) (not d!1070003) (not d!1069929) (not b_lambda!107851) (not b!3638216) (not b!3638357) (not d!1069797) (not b!3638495) (not b!3638512) (not b!3638608) (not b!3638706) (not b_next!96015) (not b!3638589) (not b!3638510) b_and!267939 (not bm!263068) (not b!3638651) (not b!3638482) (not d!1070005) (not b!3638591) (not b!3638248) (not d!1069873) (not d!1069829) (not b_lambda!107831) (not tb!209445) (not b!3638231) (not bm!263071) (not b!3638362) (not b!3638586) (not bm!263025) (not d!1070039) (not bm!263044) (not b!3638228) (not b!3638089) (not b!3638679) (not b!3638699) (not tb!209469) (not b!3638144) (not b!3638221) (not tb!209429) (not d!1070011) (not b!3638371) (not b!3638150) (not b!3638604) (not b!3638701) (not d!1070001) (not b!3638227) (not b!3638235) (not b!3638213) (not b_next!96013) (not b!3638674) (not d!1070045) (not b!3638653) (not b!3638609) (not b!3638236) (not d!1069827) (not b!3638149) (not b_next!95999) (not d!1070007) b_and!267993 (not b_next!96007) (not d!1069919) b_and!267913 (not tb!209453) (not b!3638613) (not b!3638068) (not b!3638588) (not d!1069935) (not b!3638079) (not d!1070035) (not b!3638583) (not d!1069869) (not b!3638355) (not b_next!96005) (not bm!263045) (not tb!209477) (not bm!263056) (not d!1069859) (not d!1069977) (not d!1069857) (not b!3638035) (not b!3638222) (not b!3638593) (not b!3638616) (not b!3638481) (not b!3638580) (not b!3638691) (not b!3638036) (not b!3638722) (not d!1070029) (not b_next!96001) (not b!3638146) (not b_lambda!107819) tp_is_empty!18049 (not d!1069921) (not b!3638246) (not b!3638497) (not b!3638652) (not b!3638648) (not d!1069845) (not b_lambda!107821) (not b_lambda!107835) (not b!3638356) (not b!3638693) (not b!3638148) (not b!3638579) (not b_lambda!107827) (not d!1070041) (not b!3638677) (not b!3638143) (not b!3638360) (not d!1069933) (not bm!263069) (not b!3638511))
(check-sat (not b_next!96003) b_and!267907 b_and!267941 b_and!267911 b_and!267945 (not b_next!96015) b_and!267939 (not b_next!96013) (not b_next!96005) (not b_next!96001) b_and!267909 b_and!267991 b_and!267943 (not b_next!95995) (not b_next!95993) (not b_next!95997) (not b_next!95999) b_and!267913 b_and!267993 (not b_next!96007))
