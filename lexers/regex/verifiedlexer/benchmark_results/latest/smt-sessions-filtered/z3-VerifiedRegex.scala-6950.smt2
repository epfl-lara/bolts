; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!367924 () Bool)

(assert start!367924)

(declare-fun b!3923182 () Bool)

(declare-fun b_free!106805 () Bool)

(declare-fun b_next!107509 () Bool)

(assert (=> b!3923182 (= b_free!106805 (not b_next!107509))))

(declare-fun tp!1194309 () Bool)

(declare-fun b_and!299111 () Bool)

(assert (=> b!3923182 (= tp!1194309 b_and!299111)))

(declare-fun b_free!106807 () Bool)

(declare-fun b_next!107511 () Bool)

(assert (=> b!3923182 (= b_free!106807 (not b_next!107511))))

(declare-fun tp!1194298 () Bool)

(declare-fun b_and!299113 () Bool)

(assert (=> b!3923182 (= tp!1194298 b_and!299113)))

(declare-fun b!3923204 () Bool)

(declare-fun b_free!106809 () Bool)

(declare-fun b_next!107513 () Bool)

(assert (=> b!3923204 (= b_free!106809 (not b_next!107513))))

(declare-fun tp!1194311 () Bool)

(declare-fun b_and!299115 () Bool)

(assert (=> b!3923204 (= tp!1194311 b_and!299115)))

(declare-fun b_free!106811 () Bool)

(declare-fun b_next!107515 () Bool)

(assert (=> b!3923204 (= b_free!106811 (not b_next!107515))))

(declare-fun tp!1194301 () Bool)

(declare-fun b_and!299117 () Bool)

(assert (=> b!3923204 (= tp!1194301 b_and!299117)))

(declare-fun b!3923214 () Bool)

(declare-fun b_free!106813 () Bool)

(declare-fun b_next!107517 () Bool)

(assert (=> b!3923214 (= b_free!106813 (not b_next!107517))))

(declare-fun tp!1194299 () Bool)

(declare-fun b_and!299119 () Bool)

(assert (=> b!3923214 (= tp!1194299 b_and!299119)))

(declare-fun b_free!106815 () Bool)

(declare-fun b_next!107519 () Bool)

(assert (=> b!3923214 (= b_free!106815 (not b_next!107519))))

(declare-fun tp!1194305 () Bool)

(declare-fun b_and!299121 () Bool)

(assert (=> b!3923214 (= tp!1194305 b_and!299121)))

(declare-fun b!3923178 () Bool)

(declare-fun e!2426238 () Bool)

(declare-fun e!2426241 () Bool)

(assert (=> b!3923178 (= e!2426238 e!2426241)))

(declare-fun res!1587035 () Bool)

(assert (=> b!3923178 (=> (not res!1587035) (not e!2426241))))

(declare-datatypes ((List!41739 0))(
  ( (Nil!41615) (Cons!41615 (h!47035 (_ BitVec 16)) (t!324778 List!41739)) )
))
(declare-datatypes ((TokenValue!6718 0))(
  ( (FloatLiteralValue!13436 (text!47471 List!41739)) (TokenValueExt!6717 (__x!25653 Int)) (Broken!33590 (value!205516 List!41739)) (Object!6841) (End!6718) (Def!6718) (Underscore!6718) (Match!6718) (Else!6718) (Error!6718) (Case!6718) (If!6718) (Extends!6718) (Abstract!6718) (Class!6718) (Val!6718) (DelimiterValue!13436 (del!6778 List!41739)) (KeywordValue!6724 (value!205517 List!41739)) (CommentValue!13436 (value!205518 List!41739)) (WhitespaceValue!13436 (value!205519 List!41739)) (IndentationValue!6718 (value!205520 List!41739)) (String!47307) (Int32!6718) (Broken!33591 (value!205521 List!41739)) (Boolean!6719) (Unit!59837) (OperatorValue!6721 (op!6778 List!41739)) (IdentifierValue!13436 (value!205522 List!41739)) (IdentifierValue!13437 (value!205523 List!41739)) (WhitespaceValue!13437 (value!205524 List!41739)) (True!13436) (False!13436) (Broken!33592 (value!205525 List!41739)) (Broken!33593 (value!205526 List!41739)) (True!13437) (RightBrace!6718) (RightBracket!6718) (Colon!6718) (Null!6718) (Comma!6718) (LeftBracket!6718) (False!13437) (LeftBrace!6718) (ImaginaryLiteralValue!6718 (text!47472 List!41739)) (StringLiteralValue!20154 (value!205527 List!41739)) (EOFValue!6718 (value!205528 List!41739)) (IdentValue!6718 (value!205529 List!41739)) (DelimiterValue!13437 (value!205530 List!41739)) (DedentValue!6718 (value!205531 List!41739)) (NewLineValue!6718 (value!205532 List!41739)) (IntegerValue!20154 (value!205533 (_ BitVec 32)) (text!47473 List!41739)) (IntegerValue!20155 (value!205534 Int) (text!47474 List!41739)) (Times!6718) (Or!6718) (Equal!6718) (Minus!6718) (Broken!33594 (value!205535 List!41739)) (And!6718) (Div!6718) (LessEqual!6718) (Mod!6718) (Concat!18111) (Not!6718) (Plus!6718) (SpaceValue!6718 (value!205536 List!41739)) (IntegerValue!20156 (value!205537 Int) (text!47475 List!41739)) (StringLiteralValue!20155 (text!47476 List!41739)) (FloatLiteralValue!13437 (text!47477 List!41739)) (BytesLiteralValue!6718 (value!205538 List!41739)) (CommentValue!13437 (value!205539 List!41739)) (StringLiteralValue!20156 (value!205540 List!41739)) (ErrorTokenValue!6718 (msg!6779 List!41739)) )
))
(declare-datatypes ((C!22972 0))(
  ( (C!22973 (val!13580 Int)) )
))
(declare-datatypes ((Regex!11393 0))(
  ( (ElementMatch!11393 (c!681744 C!22972)) (Concat!18112 (regOne!23298 Regex!11393) (regTwo!23298 Regex!11393)) (EmptyExpr!11393) (Star!11393 (reg!11722 Regex!11393)) (EmptyLang!11393) (Union!11393 (regOne!23299 Regex!11393) (regTwo!23299 Regex!11393)) )
))
(declare-datatypes ((String!47308 0))(
  ( (String!47309 (value!205541 String)) )
))
(declare-datatypes ((List!41740 0))(
  ( (Nil!41616) (Cons!41616 (h!47036 C!22972) (t!324779 List!41740)) )
))
(declare-datatypes ((IArray!25403 0))(
  ( (IArray!25404 (innerList!12759 List!41740)) )
))
(declare-datatypes ((Conc!12699 0))(
  ( (Node!12699 (left!31793 Conc!12699) (right!32123 Conc!12699) (csize!25628 Int) (cheight!12910 Int)) (Leaf!19650 (xs!16005 IArray!25403) (csize!25629 Int)) (Empty!12699) )
))
(declare-datatypes ((BalanceConc!24992 0))(
  ( (BalanceConc!24993 (c!681745 Conc!12699)) )
))
(declare-datatypes ((TokenValueInjection!12864 0))(
  ( (TokenValueInjection!12865 (toValue!8940 Int) (toChars!8799 Int)) )
))
(declare-datatypes ((Rule!12776 0))(
  ( (Rule!12777 (regex!6488 Regex!11393) (tag!7348 String!47308) (isSeparator!6488 Bool) (transformation!6488 TokenValueInjection!12864)) )
))
(declare-datatypes ((Token!12114 0))(
  ( (Token!12115 (value!205542 TokenValue!6718) (rule!9424 Rule!12776) (size!31237 Int) (originalCharacters!7088 List!41740)) )
))
(declare-datatypes ((tuple2!40882 0))(
  ( (tuple2!40883 (_1!23575 Token!12114) (_2!23575 List!41740)) )
))
(declare-datatypes ((Option!8908 0))(
  ( (None!8907) (Some!8907 (v!39233 tuple2!40882)) )
))
(declare-fun lt!1367982 () Option!8908)

(get-info :version)

(assert (=> b!3923178 (= res!1587035 ((_ is Some!8907) lt!1367982))))

(declare-fun lt!1367967 () List!41740)

(declare-datatypes ((LexerInterface!6077 0))(
  ( (LexerInterfaceExt!6074 (__x!25654 Int)) (Lexer!6075) )
))
(declare-fun thiss!20629 () LexerInterface!6077)

(declare-datatypes ((List!41741 0))(
  ( (Nil!41617) (Cons!41617 (h!47037 Rule!12776) (t!324780 List!41741)) )
))
(declare-fun rules!2768 () List!41741)

(declare-fun maxPrefix!3381 (LexerInterface!6077 List!41741 List!41740) Option!8908)

(assert (=> b!3923178 (= lt!1367982 (maxPrefix!3381 thiss!20629 rules!2768 lt!1367967))))

(declare-fun b!3923179 () Bool)

(declare-fun e!2426235 () Bool)

(assert (=> b!3923179 (= e!2426235 e!2426238)))

(declare-fun res!1587042 () Bool)

(assert (=> b!3923179 (=> (not res!1587042) (not e!2426238))))

(declare-fun suffix!1176 () List!41740)

(declare-datatypes ((List!41742 0))(
  ( (Nil!41618) (Cons!41618 (h!47038 Token!12114) (t!324781 List!41742)) )
))
(declare-datatypes ((tuple2!40884 0))(
  ( (tuple2!40885 (_1!23576 List!41742) (_2!23576 List!41740)) )
))
(declare-fun lt!1367981 () tuple2!40884)

(declare-fun lexList!1845 (LexerInterface!6077 List!41741 List!41740) tuple2!40884)

(assert (=> b!3923179 (= res!1587042 (= (lexList!1845 thiss!20629 rules!2768 suffix!1176) lt!1367981))))

(declare-fun suffixTokens!72 () List!41742)

(declare-fun suffixResult!91 () List!41740)

(assert (=> b!3923179 (= lt!1367981 (tuple2!40885 suffixTokens!72 suffixResult!91))))

(declare-fun b!3923180 () Bool)

(declare-datatypes ((Unit!59838 0))(
  ( (Unit!59839) )
))
(declare-fun e!2426223 () Unit!59838)

(declare-fun Unit!59840 () Unit!59838)

(assert (=> b!3923180 (= e!2426223 Unit!59840)))

(declare-fun lt!1367970 () Unit!59838)

(declare-fun prefix!426 () List!41740)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2446 (List!41740 List!41740) Unit!59838)

(assert (=> b!3923180 (= lt!1367970 (lemmaConcatTwoListThenFirstIsPrefix!2446 prefix!426 suffix!1176))))

(declare-fun isPrefix!3583 (List!41740 List!41740) Bool)

(assert (=> b!3923180 (isPrefix!3583 prefix!426 lt!1367967)))

(declare-fun lt!1367966 () List!41740)

(declare-fun lt!1367968 () Unit!59838)

(declare-fun lemmaIsPrefixSameLengthThenSameList!779 (List!41740 List!41740 List!41740) Unit!59838)

(assert (=> b!3923180 (= lt!1367968 (lemmaIsPrefixSameLengthThenSameList!779 lt!1367966 prefix!426 lt!1367967))))

(assert (=> b!3923180 (= lt!1367966 prefix!426)))

(declare-fun lt!1367978 () Unit!59838)

(declare-fun lemmaSamePrefixThenSameSuffix!1804 (List!41740 List!41740 List!41740 List!41740 List!41740) Unit!59838)

(assert (=> b!3923180 (= lt!1367978 (lemmaSamePrefixThenSameSuffix!1804 lt!1367966 (_2!23575 (v!39233 lt!1367982)) prefix!426 suffix!1176 lt!1367967))))

(assert (=> b!3923180 false))

(declare-fun b!3923181 () Bool)

(declare-fun e!2426251 () Bool)

(declare-fun ++!10733 (List!41740 List!41740) List!41740)

(declare-fun getSuffix!2038 (List!41740 List!41740) List!41740)

(assert (=> b!3923181 (= e!2426251 (= (++!10733 lt!1367966 (getSuffix!2038 prefix!426 lt!1367966)) prefix!426))))

(declare-fun e!2426253 () Bool)

(assert (=> b!3923182 (= e!2426253 (and tp!1194309 tp!1194298))))

(declare-fun b!3923183 () Bool)

(declare-fun res!1587048 () Bool)

(declare-fun e!2426234 () Bool)

(assert (=> b!3923183 (=> res!1587048 e!2426234)))

(declare-fun prefixTokens!80 () List!41742)

(declare-fun head!8305 (List!41742) Token!12114)

(assert (=> b!3923183 (= res!1587048 (not (= (head!8305 prefixTokens!80) (_1!23575 (v!39233 lt!1367982)))))))

(declare-fun b!3923184 () Bool)

(declare-fun res!1587037 () Bool)

(declare-fun e!2426247 () Bool)

(assert (=> b!3923184 (=> res!1587037 e!2426247)))

(declare-fun lt!1367973 () tuple2!40884)

(declare-fun lt!1367972 () tuple2!40884)

(declare-fun ++!10734 (List!41742 List!41742) List!41742)

(assert (=> b!3923184 (= res!1587037 (not (= lt!1367972 (tuple2!40885 (++!10734 (Cons!41618 (_1!23575 (v!39233 lt!1367982)) Nil!41618) (_1!23576 lt!1367973)) (_2!23576 lt!1367973)))))))

(declare-fun b!3923185 () Bool)

(declare-fun c!681742 () Bool)

(declare-fun lt!1367979 () List!41742)

(declare-fun isEmpty!24786 (List!41742) Bool)

(assert (=> b!3923185 (= c!681742 (isEmpty!24786 lt!1367979))))

(declare-fun tail!6031 (List!41742) List!41742)

(assert (=> b!3923185 (= lt!1367979 (tail!6031 prefixTokens!80))))

(declare-fun e!2426231 () Unit!59838)

(declare-fun e!2426248 () Unit!59838)

(assert (=> b!3923185 (= e!2426231 e!2426248)))

(declare-fun b!3923186 () Bool)

(declare-fun e!2426252 () Bool)

(assert (=> b!3923186 (= e!2426252 false)))

(declare-fun b!3923187 () Bool)

(declare-fun e!2426237 () Unit!59838)

(declare-fun Unit!59841 () Unit!59838)

(assert (=> b!3923187 (= e!2426237 Unit!59841)))

(declare-fun bm!284657 () Bool)

(declare-fun call!284662 () tuple2!40884)

(declare-fun lt!1367957 () tuple2!40882)

(assert (=> bm!284657 (= call!284662 (lexList!1845 thiss!20629 rules!2768 (_2!23575 lt!1367957)))))

(declare-fun b!3923188 () Bool)

(declare-fun res!1587039 () Bool)

(declare-fun e!2426228 () Bool)

(assert (=> b!3923188 (=> (not res!1587039) (not e!2426228))))

(declare-fun isEmpty!24787 (List!41740) Bool)

(assert (=> b!3923188 (= res!1587039 (not (isEmpty!24787 prefix!426)))))

(declare-fun b!3923189 () Bool)

(declare-fun res!1587033 () Bool)

(assert (=> b!3923189 (=> res!1587033 e!2426247)))

(assert (=> b!3923189 (= res!1587033 (or (not (= lt!1367973 (tuple2!40885 (_1!23576 lt!1367973) (_2!23576 lt!1367973)))) (= (_2!23575 (v!39233 lt!1367982)) suffix!1176)))))

(declare-fun b!3923190 () Bool)

(declare-fun Unit!59842 () Unit!59838)

(assert (=> b!3923190 (= e!2426231 Unit!59842)))

(declare-fun res!1587044 () Bool)

(assert (=> start!367924 (=> (not res!1587044) (not e!2426228))))

(assert (=> start!367924 (= res!1587044 ((_ is Lexer!6075) thiss!20629))))

(assert (=> start!367924 e!2426228))

(declare-fun e!2426242 () Bool)

(assert (=> start!367924 e!2426242))

(assert (=> start!367924 true))

(declare-fun e!2426224 () Bool)

(assert (=> start!367924 e!2426224))

(declare-fun e!2426244 () Bool)

(assert (=> start!367924 e!2426244))

(declare-fun e!2426225 () Bool)

(assert (=> start!367924 e!2426225))

(declare-fun e!2426236 () Bool)

(assert (=> start!367924 e!2426236))

(declare-fun e!2426254 () Bool)

(assert (=> start!367924 e!2426254))

(declare-fun b!3923191 () Bool)

(declare-fun res!1587047 () Bool)

(assert (=> b!3923191 (=> (not res!1587047) (not e!2426228))))

(declare-fun rulesInvariant!5420 (LexerInterface!6077 List!41741) Bool)

(assert (=> b!3923191 (= res!1587047 (rulesInvariant!5420 thiss!20629 rules!2768))))

(declare-fun e!2426250 () Bool)

(declare-fun b!3923192 () Bool)

(declare-fun tp!1194300 () Bool)

(declare-fun e!2426239 () Bool)

(declare-fun inv!21 (TokenValue!6718) Bool)

(assert (=> b!3923192 (= e!2426250 (and (inv!21 (value!205542 (h!47038 suffixTokens!72))) e!2426239 tp!1194300))))

(declare-fun e!2426243 () Bool)

(declare-fun b!3923193 () Bool)

(declare-fun tp!1194302 () Bool)

(declare-fun e!2426233 () Bool)

(declare-fun inv!55809 (String!47308) Bool)

(declare-fun inv!55812 (TokenValueInjection!12864) Bool)

(assert (=> b!3923193 (= e!2426233 (and tp!1194302 (inv!55809 (tag!7348 (rule!9424 (h!47038 prefixTokens!80)))) (inv!55812 (transformation!6488 (rule!9424 (h!47038 prefixTokens!80)))) e!2426243))))

(declare-fun b!3923194 () Bool)

(declare-fun tp_is_empty!19757 () Bool)

(declare-fun tp!1194308 () Bool)

(assert (=> b!3923194 (= e!2426242 (and tp_is_empty!19757 tp!1194308))))

(declare-fun b!3923195 () Bool)

(assert (=> b!3923195 (= e!2426228 e!2426235)))

(declare-fun res!1587046 () Bool)

(assert (=> b!3923195 (=> (not res!1587046) (not e!2426235))))

(declare-fun lt!1367986 () List!41742)

(assert (=> b!3923195 (= res!1587046 (= lt!1367972 (tuple2!40885 lt!1367986 suffixResult!91)))))

(assert (=> b!3923195 (= lt!1367972 (lexList!1845 thiss!20629 rules!2768 lt!1367967))))

(assert (=> b!3923195 (= lt!1367986 (++!10734 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3923195 (= lt!1367967 (++!10733 prefix!426 suffix!1176))))

(declare-fun e!2426246 () Bool)

(declare-fun b!3923196 () Bool)

(declare-fun tp!1194306 () Bool)

(declare-fun inv!55813 (Token!12114) Bool)

(assert (=> b!3923196 (= e!2426225 (and (inv!55813 (h!47038 prefixTokens!80)) e!2426246 tp!1194306))))

(declare-fun b!3923197 () Bool)

(declare-fun Unit!59843 () Unit!59838)

(assert (=> b!3923197 (= e!2426248 Unit!59843)))

(declare-fun lt!1367964 () Unit!59838)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!536 (List!41740 List!41740 List!41740 List!41740) Unit!59838)

(assert (=> b!3923197 (= lt!1367964 (lemmaConcatSameAndSameSizesThenSameLists!536 lt!1367966 (_2!23575 (v!39233 lt!1367982)) lt!1367966 (_2!23575 lt!1367957)))))

(assert (=> b!3923197 (= (_2!23575 (v!39233 lt!1367982)) (_2!23575 lt!1367957))))

(declare-fun lt!1367958 () Unit!59838)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!88 (LexerInterface!6077 List!41741 List!41740 List!41740 List!41742 List!41740) Unit!59838)

(assert (=> b!3923197 (= lt!1367958 (lemmaLexWithSmallerInputCannotProduceSameResults!88 thiss!20629 rules!2768 suffix!1176 (_2!23575 lt!1367957) suffixTokens!72 suffixResult!91))))

(declare-fun res!1587032 () Bool)

(assert (=> b!3923197 (= res!1587032 (not (= call!284662 lt!1367981)))))

(assert (=> b!3923197 (=> (not res!1587032) (not e!2426252))))

(assert (=> b!3923197 e!2426252))

(declare-fun b!3923198 () Bool)

(declare-fun res!1587040 () Bool)

(assert (=> b!3923198 (=> (not res!1587040) (not e!2426228))))

(declare-fun isEmpty!24788 (List!41741) Bool)

(assert (=> b!3923198 (= res!1587040 (not (isEmpty!24788 rules!2768)))))

(declare-fun b!3923199 () Bool)

(declare-fun Unit!59844 () Unit!59838)

(assert (=> b!3923199 (= e!2426248 Unit!59844)))

(declare-fun lt!1367962 () Unit!59838)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!88 (LexerInterface!6077 List!41741 List!41740 List!41740 List!41742 List!41740 List!41742) Unit!59838)

(assert (=> b!3923199 (= lt!1367962 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!88 thiss!20629 rules!2768 suffix!1176 (_2!23575 lt!1367957) suffixTokens!72 suffixResult!91 lt!1367979))))

(declare-fun res!1587043 () Bool)

(assert (=> b!3923199 (= res!1587043 (not (= call!284662 (tuple2!40885 (++!10734 lt!1367979 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2426240 () Bool)

(assert (=> b!3923199 (=> (not res!1587043) (not e!2426240))))

(assert (=> b!3923199 e!2426240))

(declare-fun b!3923200 () Bool)

(declare-fun tp!1194312 () Bool)

(assert (=> b!3923200 (= e!2426246 (and (inv!21 (value!205542 (h!47038 prefixTokens!80))) e!2426233 tp!1194312))))

(declare-fun b!3923201 () Bool)

(declare-fun tp!1194307 () Bool)

(assert (=> b!3923201 (= e!2426254 (and tp_is_empty!19757 tp!1194307))))

(declare-fun b!3923202 () Bool)

(declare-fun e!2426227 () Bool)

(declare-fun size!31238 (List!41740) Int)

(assert (=> b!3923202 (= e!2426227 (= (size!31237 (_1!23575 (v!39233 lt!1367982))) (size!31238 (originalCharacters!7088 (_1!23575 (v!39233 lt!1367982))))))))

(declare-fun b!3923203 () Bool)

(declare-fun tp!1194303 () Bool)

(assert (=> b!3923203 (= e!2426224 (and tp_is_empty!19757 tp!1194303))))

(declare-fun e!2426226 () Bool)

(assert (=> b!3923204 (= e!2426226 (and tp!1194311 tp!1194301))))

(declare-fun b!3923205 () Bool)

(assert (=> b!3923205 (= e!2426234 e!2426251)))

(declare-fun res!1587038 () Bool)

(assert (=> b!3923205 (=> res!1587038 e!2426251)))

(declare-fun lt!1367987 () Int)

(assert (=> b!3923205 (= res!1587038 (>= lt!1367987 (size!31238 prefix!426)))))

(assert (=> b!3923205 (isPrefix!3583 lt!1367966 prefix!426)))

(declare-fun lt!1367971 () Unit!59838)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!261 (List!41740 List!41740 List!41740) Unit!59838)

(assert (=> b!3923205 (= lt!1367971 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!261 prefix!426 lt!1367966 lt!1367967))))

(assert (=> b!3923205 (isPrefix!3583 prefix!426 lt!1367967)))

(declare-fun lt!1367969 () Unit!59838)

(assert (=> b!3923205 (= lt!1367969 (lemmaConcatTwoListThenFirstIsPrefix!2446 prefix!426 suffix!1176))))

(declare-fun b!3923206 () Bool)

(declare-fun res!1587036 () Bool)

(assert (=> b!3923206 (=> (not res!1587036) (not e!2426228))))

(assert (=> b!3923206 (= res!1587036 (not (isEmpty!24786 prefixTokens!80)))))

(declare-fun b!3923207 () Bool)

(declare-fun e!2426245 () Bool)

(declare-fun tp!1194296 () Bool)

(assert (=> b!3923207 (= e!2426244 (and e!2426245 tp!1194296))))

(declare-fun b!3923208 () Bool)

(declare-fun Unit!59845 () Unit!59838)

(assert (=> b!3923208 (= e!2426237 Unit!59845)))

(declare-fun lt!1367980 () Int)

(assert (=> b!3923208 (= lt!1367980 (size!31238 lt!1367967))))

(declare-fun lt!1367965 () Unit!59838)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1319 (LexerInterface!6077 List!41741 List!41740 List!41740 List!41740 Rule!12776) Unit!59838)

(assert (=> b!3923208 (= lt!1367965 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1319 thiss!20629 rules!2768 lt!1367966 lt!1367967 (_2!23575 (v!39233 lt!1367982)) (rule!9424 (_1!23575 (v!39233 lt!1367982)))))))

(declare-fun lt!1367985 () TokenValue!6718)

(declare-fun maxPrefixOneRule!2451 (LexerInterface!6077 Rule!12776 List!41740) Option!8908)

(assert (=> b!3923208 (= (maxPrefixOneRule!2451 thiss!20629 (rule!9424 (_1!23575 (v!39233 lt!1367982))) lt!1367967) (Some!8907 (tuple2!40883 (Token!12115 lt!1367985 (rule!9424 (_1!23575 (v!39233 lt!1367982))) lt!1367987 lt!1367966) (_2!23575 (v!39233 lt!1367982)))))))

(declare-fun get!13752 (Option!8908) tuple2!40882)

(assert (=> b!3923208 (= lt!1367957 (get!13752 lt!1367982))))

(declare-fun c!681741 () Bool)

(declare-fun lt!1367956 () Int)

(assert (=> b!3923208 (= c!681741 (< (size!31238 (_2!23575 lt!1367957)) lt!1367956))))

(declare-fun lt!1367977 () Unit!59838)

(assert (=> b!3923208 (= lt!1367977 e!2426231)))

(assert (=> b!3923208 false))

(declare-fun b!3923209 () Bool)

(declare-fun tp!1194297 () Bool)

(assert (=> b!3923209 (= e!2426239 (and tp!1194297 (inv!55809 (tag!7348 (rule!9424 (h!47038 suffixTokens!72)))) (inv!55812 (transformation!6488 (rule!9424 (h!47038 suffixTokens!72)))) e!2426226))))

(declare-fun b!3923210 () Bool)

(declare-fun Unit!59846 () Unit!59838)

(assert (=> b!3923210 (= e!2426223 Unit!59846)))

(declare-fun tp!1194304 () Bool)

(declare-fun b!3923211 () Bool)

(assert (=> b!3923211 (= e!2426245 (and tp!1194304 (inv!55809 (tag!7348 (h!47037 rules!2768))) (inv!55812 (transformation!6488 (h!47037 rules!2768))) e!2426253))))

(declare-fun b!3923212 () Bool)

(assert (=> b!3923212 (= e!2426241 (not e!2426247))))

(declare-fun res!1587034 () Bool)

(assert (=> b!3923212 (=> res!1587034 e!2426247)))

(declare-fun lt!1367976 () List!41740)

(assert (=> b!3923212 (= res!1587034 (not (= lt!1367976 lt!1367967)))))

(assert (=> b!3923212 (= lt!1367973 (lexList!1845 thiss!20629 rules!2768 (_2!23575 (v!39233 lt!1367982))))))

(declare-fun lt!1367960 () List!41740)

(assert (=> b!3923212 (and (= (size!31237 (_1!23575 (v!39233 lt!1367982))) lt!1367987) (= (originalCharacters!7088 (_1!23575 (v!39233 lt!1367982))) lt!1367966) (= (v!39233 lt!1367982) (tuple2!40883 (Token!12115 lt!1367985 (rule!9424 (_1!23575 (v!39233 lt!1367982))) lt!1367987 lt!1367966) lt!1367960)))))

(assert (=> b!3923212 (= lt!1367987 (size!31238 lt!1367966))))

(assert (=> b!3923212 e!2426227))

(declare-fun res!1587045 () Bool)

(assert (=> b!3923212 (=> (not res!1587045) (not e!2426227))))

(assert (=> b!3923212 (= res!1587045 (= (value!205542 (_1!23575 (v!39233 lt!1367982))) lt!1367985))))

(declare-fun apply!9727 (TokenValueInjection!12864 BalanceConc!24992) TokenValue!6718)

(declare-fun seqFromList!4755 (List!41740) BalanceConc!24992)

(assert (=> b!3923212 (= lt!1367985 (apply!9727 (transformation!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982)))) (seqFromList!4755 lt!1367966)))))

(assert (=> b!3923212 (= (_2!23575 (v!39233 lt!1367982)) lt!1367960)))

(declare-fun lt!1367961 () Unit!59838)

(assert (=> b!3923212 (= lt!1367961 (lemmaSamePrefixThenSameSuffix!1804 lt!1367966 (_2!23575 (v!39233 lt!1367982)) lt!1367966 lt!1367960 lt!1367967))))

(assert (=> b!3923212 (= lt!1367960 (getSuffix!2038 lt!1367967 lt!1367966))))

(assert (=> b!3923212 (isPrefix!3583 lt!1367966 lt!1367976)))

(assert (=> b!3923212 (= lt!1367976 (++!10733 lt!1367966 (_2!23575 (v!39233 lt!1367982))))))

(declare-fun lt!1367984 () Unit!59838)

(assert (=> b!3923212 (= lt!1367984 (lemmaConcatTwoListThenFirstIsPrefix!2446 lt!1367966 (_2!23575 (v!39233 lt!1367982))))))

(declare-fun list!15469 (BalanceConc!24992) List!41740)

(declare-fun charsOf!4312 (Token!12114) BalanceConc!24992)

(assert (=> b!3923212 (= lt!1367966 (list!15469 (charsOf!4312 (_1!23575 (v!39233 lt!1367982)))))))

(declare-fun ruleValid!2436 (LexerInterface!6077 Rule!12776) Bool)

(assert (=> b!3923212 (ruleValid!2436 thiss!20629 (rule!9424 (_1!23575 (v!39233 lt!1367982))))))

(declare-fun lt!1367983 () Unit!59838)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1516 (LexerInterface!6077 Rule!12776 List!41741) Unit!59838)

(assert (=> b!3923212 (= lt!1367983 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1516 thiss!20629 (rule!9424 (_1!23575 (v!39233 lt!1367982))) rules!2768))))

(declare-fun lt!1367975 () Unit!59838)

(declare-fun lemmaCharactersSize!1145 (Token!12114) Unit!59838)

(assert (=> b!3923212 (= lt!1367975 (lemmaCharactersSize!1145 (_1!23575 (v!39233 lt!1367982))))))

(declare-fun b!3923213 () Bool)

(declare-fun tp!1194310 () Bool)

(assert (=> b!3923213 (= e!2426236 (and (inv!55813 (h!47038 suffixTokens!72)) e!2426250 tp!1194310))))

(assert (=> b!3923214 (= e!2426243 (and tp!1194299 tp!1194305))))

(declare-fun b!3923215 () Bool)

(assert (=> b!3923215 (= e!2426240 false)))

(declare-fun b!3923216 () Bool)

(assert (=> b!3923216 (= e!2426247 e!2426234)))

(declare-fun res!1587041 () Bool)

(assert (=> b!3923216 (=> res!1587041 e!2426234)))

(declare-fun lt!1367974 () Int)

(assert (=> b!3923216 (= res!1587041 (<= lt!1367974 lt!1367956))))

(declare-fun lt!1367959 () Unit!59838)

(assert (=> b!3923216 (= lt!1367959 e!2426223)))

(declare-fun c!681743 () Bool)

(assert (=> b!3923216 (= c!681743 (= lt!1367974 lt!1367956))))

(declare-fun lt!1367963 () Unit!59838)

(assert (=> b!3923216 (= lt!1367963 e!2426237)))

(declare-fun c!681740 () Bool)

(assert (=> b!3923216 (= c!681740 (< lt!1367974 lt!1367956))))

(assert (=> b!3923216 (= lt!1367956 (size!31238 suffix!1176))))

(assert (=> b!3923216 (= lt!1367974 (size!31238 (_2!23575 (v!39233 lt!1367982))))))

(assert (= (and start!367924 res!1587044) b!3923198))

(assert (= (and b!3923198 res!1587040) b!3923191))

(assert (= (and b!3923191 res!1587047) b!3923206))

(assert (= (and b!3923206 res!1587036) b!3923188))

(assert (= (and b!3923188 res!1587039) b!3923195))

(assert (= (and b!3923195 res!1587046) b!3923179))

(assert (= (and b!3923179 res!1587042) b!3923178))

(assert (= (and b!3923178 res!1587035) b!3923212))

(assert (= (and b!3923212 res!1587045) b!3923202))

(assert (= (and b!3923212 (not res!1587034)) b!3923184))

(assert (= (and b!3923184 (not res!1587037)) b!3923189))

(assert (= (and b!3923189 (not res!1587033)) b!3923216))

(assert (= (and b!3923216 c!681740) b!3923208))

(assert (= (and b!3923216 (not c!681740)) b!3923187))

(assert (= (and b!3923208 c!681741) b!3923185))

(assert (= (and b!3923208 (not c!681741)) b!3923190))

(assert (= (and b!3923185 c!681742) b!3923197))

(assert (= (and b!3923185 (not c!681742)) b!3923199))

(assert (= (and b!3923197 res!1587032) b!3923186))

(assert (= (and b!3923199 res!1587043) b!3923215))

(assert (= (or b!3923197 b!3923199) bm!284657))

(assert (= (and b!3923216 c!681743) b!3923180))

(assert (= (and b!3923216 (not c!681743)) b!3923210))

(assert (= (and b!3923216 (not res!1587041)) b!3923183))

(assert (= (and b!3923183 (not res!1587048)) b!3923205))

(assert (= (and b!3923205 (not res!1587038)) b!3923181))

(assert (= (and start!367924 ((_ is Cons!41616) suffixResult!91)) b!3923194))

(assert (= (and start!367924 ((_ is Cons!41616) suffix!1176)) b!3923203))

(assert (= b!3923211 b!3923182))

(assert (= b!3923207 b!3923211))

(assert (= (and start!367924 ((_ is Cons!41617) rules!2768)) b!3923207))

(assert (= b!3923193 b!3923214))

(assert (= b!3923200 b!3923193))

(assert (= b!3923196 b!3923200))

(assert (= (and start!367924 ((_ is Cons!41618) prefixTokens!80)) b!3923196))

(assert (= b!3923209 b!3923204))

(assert (= b!3923192 b!3923209))

(assert (= b!3923213 b!3923192))

(assert (= (and start!367924 ((_ is Cons!41618) suffixTokens!72)) b!3923213))

(assert (= (and start!367924 ((_ is Cons!41616) prefix!426)) b!3923201))

(declare-fun m!4487123 () Bool)

(assert (=> b!3923212 m!4487123))

(declare-fun m!4487125 () Bool)

(assert (=> b!3923212 m!4487125))

(declare-fun m!4487127 () Bool)

(assert (=> b!3923212 m!4487127))

(assert (=> b!3923212 m!4487127))

(declare-fun m!4487129 () Bool)

(assert (=> b!3923212 m!4487129))

(declare-fun m!4487131 () Bool)

(assert (=> b!3923212 m!4487131))

(declare-fun m!4487133 () Bool)

(assert (=> b!3923212 m!4487133))

(declare-fun m!4487135 () Bool)

(assert (=> b!3923212 m!4487135))

(declare-fun m!4487137 () Bool)

(assert (=> b!3923212 m!4487137))

(declare-fun m!4487139 () Bool)

(assert (=> b!3923212 m!4487139))

(declare-fun m!4487141 () Bool)

(assert (=> b!3923212 m!4487141))

(declare-fun m!4487143 () Bool)

(assert (=> b!3923212 m!4487143))

(declare-fun m!4487145 () Bool)

(assert (=> b!3923212 m!4487145))

(declare-fun m!4487147 () Bool)

(assert (=> b!3923212 m!4487147))

(declare-fun m!4487149 () Bool)

(assert (=> b!3923212 m!4487149))

(assert (=> b!3923212 m!4487141))

(declare-fun m!4487151 () Bool)

(assert (=> bm!284657 m!4487151))

(declare-fun m!4487153 () Bool)

(assert (=> b!3923213 m!4487153))

(declare-fun m!4487155 () Bool)

(assert (=> b!3923183 m!4487155))

(declare-fun m!4487157 () Bool)

(assert (=> b!3923191 m!4487157))

(declare-fun m!4487159 () Bool)

(assert (=> b!3923199 m!4487159))

(declare-fun m!4487161 () Bool)

(assert (=> b!3923199 m!4487161))

(declare-fun m!4487163 () Bool)

(assert (=> b!3923197 m!4487163))

(declare-fun m!4487165 () Bool)

(assert (=> b!3923197 m!4487165))

(declare-fun m!4487167 () Bool)

(assert (=> b!3923184 m!4487167))

(declare-fun m!4487169 () Bool)

(assert (=> b!3923206 m!4487169))

(declare-fun m!4487171 () Bool)

(assert (=> b!3923205 m!4487171))

(declare-fun m!4487173 () Bool)

(assert (=> b!3923205 m!4487173))

(declare-fun m!4487175 () Bool)

(assert (=> b!3923205 m!4487175))

(declare-fun m!4487177 () Bool)

(assert (=> b!3923205 m!4487177))

(declare-fun m!4487179 () Bool)

(assert (=> b!3923205 m!4487179))

(assert (=> b!3923180 m!4487179))

(assert (=> b!3923180 m!4487177))

(declare-fun m!4487181 () Bool)

(assert (=> b!3923180 m!4487181))

(declare-fun m!4487183 () Bool)

(assert (=> b!3923180 m!4487183))

(declare-fun m!4487185 () Bool)

(assert (=> b!3923185 m!4487185))

(declare-fun m!4487187 () Bool)

(assert (=> b!3923185 m!4487187))

(declare-fun m!4487189 () Bool)

(assert (=> b!3923209 m!4487189))

(declare-fun m!4487191 () Bool)

(assert (=> b!3923209 m!4487191))

(declare-fun m!4487193 () Bool)

(assert (=> b!3923192 m!4487193))

(declare-fun m!4487195 () Bool)

(assert (=> b!3923202 m!4487195))

(declare-fun m!4487197 () Bool)

(assert (=> b!3923200 m!4487197))

(declare-fun m!4487199 () Bool)

(assert (=> b!3923211 m!4487199))

(declare-fun m!4487201 () Bool)

(assert (=> b!3923211 m!4487201))

(declare-fun m!4487203 () Bool)

(assert (=> b!3923181 m!4487203))

(assert (=> b!3923181 m!4487203))

(declare-fun m!4487205 () Bool)

(assert (=> b!3923181 m!4487205))

(declare-fun m!4487207 () Bool)

(assert (=> b!3923208 m!4487207))

(declare-fun m!4487209 () Bool)

(assert (=> b!3923208 m!4487209))

(declare-fun m!4487211 () Bool)

(assert (=> b!3923208 m!4487211))

(declare-fun m!4487213 () Bool)

(assert (=> b!3923208 m!4487213))

(declare-fun m!4487215 () Bool)

(assert (=> b!3923208 m!4487215))

(declare-fun m!4487217 () Bool)

(assert (=> b!3923216 m!4487217))

(declare-fun m!4487219 () Bool)

(assert (=> b!3923216 m!4487219))

(declare-fun m!4487221 () Bool)

(assert (=> b!3923188 m!4487221))

(declare-fun m!4487223 () Bool)

(assert (=> b!3923193 m!4487223))

(declare-fun m!4487225 () Bool)

(assert (=> b!3923193 m!4487225))

(declare-fun m!4487227 () Bool)

(assert (=> b!3923178 m!4487227))

(declare-fun m!4487229 () Bool)

(assert (=> b!3923195 m!4487229))

(declare-fun m!4487231 () Bool)

(assert (=> b!3923195 m!4487231))

(declare-fun m!4487233 () Bool)

(assert (=> b!3923195 m!4487233))

(declare-fun m!4487235 () Bool)

(assert (=> b!3923198 m!4487235))

(declare-fun m!4487237 () Bool)

(assert (=> b!3923179 m!4487237))

(declare-fun m!4487239 () Bool)

(assert (=> b!3923196 m!4487239))

(check-sat (not b!3923202) b_and!299111 (not b!3923199) (not b!3923197) (not b!3923216) (not b_next!107511) (not b!3923192) (not b!3923178) b_and!299113 (not b!3923209) (not b_next!107519) (not b_next!107517) (not b!3923200) (not b!3923181) (not bm!284657) (not b!3923183) b_and!299121 (not b!3923205) (not b!3923184) (not b!3923180) (not b!3923212) b_and!299115 (not b!3923208) b_and!299119 tp_is_empty!19757 (not b!3923191) (not b!3923185) (not b!3923188) (not b_next!107509) (not b!3923211) (not b_next!107515) (not b!3923213) (not b!3923194) (not b!3923203) (not b!3923201) (not b!3923196) b_and!299117 (not b!3923206) (not b!3923195) (not b!3923207) (not b!3923198) (not b!3923179) (not b!3923193) (not b_next!107513))
(check-sat b_and!299121 b_and!299111 (not b_next!107509) (not b_next!107515) (not b_next!107511) b_and!299117 b_and!299113 (not b_next!107513) (not b_next!107519) (not b_next!107517) b_and!299115 b_and!299119)
(get-model)

(declare-fun b!3923254 () Bool)

(declare-fun e!2426278 () Bool)

(declare-fun e!2426276 () Bool)

(assert (=> b!3923254 (= e!2426278 e!2426276)))

(declare-fun c!681760 () Bool)

(assert (=> b!3923254 (= c!681760 ((_ is IntegerValue!20155) (value!205542 (h!47038 prefixTokens!80))))))

(declare-fun d!1163385 () Bool)

(declare-fun c!681759 () Bool)

(assert (=> d!1163385 (= c!681759 ((_ is IntegerValue!20154) (value!205542 (h!47038 prefixTokens!80))))))

(assert (=> d!1163385 (= (inv!21 (value!205542 (h!47038 prefixTokens!80))) e!2426278)))

(declare-fun b!3923255 () Bool)

(declare-fun e!2426277 () Bool)

(declare-fun inv!15 (TokenValue!6718) Bool)

(assert (=> b!3923255 (= e!2426277 (inv!15 (value!205542 (h!47038 prefixTokens!80))))))

(declare-fun b!3923256 () Bool)

(declare-fun res!1587067 () Bool)

(assert (=> b!3923256 (=> res!1587067 e!2426277)))

(assert (=> b!3923256 (= res!1587067 (not ((_ is IntegerValue!20156) (value!205542 (h!47038 prefixTokens!80)))))))

(assert (=> b!3923256 (= e!2426276 e!2426277)))

(declare-fun b!3923257 () Bool)

(declare-fun inv!17 (TokenValue!6718) Bool)

(assert (=> b!3923257 (= e!2426276 (inv!17 (value!205542 (h!47038 prefixTokens!80))))))

(declare-fun b!3923258 () Bool)

(declare-fun inv!16 (TokenValue!6718) Bool)

(assert (=> b!3923258 (= e!2426278 (inv!16 (value!205542 (h!47038 prefixTokens!80))))))

(assert (= (and d!1163385 c!681759) b!3923258))

(assert (= (and d!1163385 (not c!681759)) b!3923254))

(assert (= (and b!3923254 c!681760) b!3923257))

(assert (= (and b!3923254 (not c!681760)) b!3923256))

(assert (= (and b!3923256 (not res!1587067)) b!3923255))

(declare-fun m!4487265 () Bool)

(assert (=> b!3923255 m!4487265))

(declare-fun m!4487267 () Bool)

(assert (=> b!3923257 m!4487267))

(declare-fun m!4487269 () Bool)

(assert (=> b!3923258 m!4487269))

(assert (=> b!3923200 d!1163385))

(declare-fun d!1163389 () Bool)

(assert (=> d!1163389 (isPrefix!3583 prefix!426 (++!10733 prefix!426 suffix!1176))))

(declare-fun lt!1368008 () Unit!59838)

(declare-fun choose!23276 (List!41740 List!41740) Unit!59838)

(assert (=> d!1163389 (= lt!1368008 (choose!23276 prefix!426 suffix!1176))))

(assert (=> d!1163389 (= (lemmaConcatTwoListThenFirstIsPrefix!2446 prefix!426 suffix!1176) lt!1368008)))

(declare-fun bs!585930 () Bool)

(assert (= bs!585930 d!1163389))

(assert (=> bs!585930 m!4487233))

(assert (=> bs!585930 m!4487233))

(declare-fun m!4487281 () Bool)

(assert (=> bs!585930 m!4487281))

(declare-fun m!4487283 () Bool)

(assert (=> bs!585930 m!4487283))

(assert (=> b!3923180 d!1163389))

(declare-fun b!3923302 () Bool)

(declare-fun e!2426306 () Bool)

(declare-fun e!2426307 () Bool)

(assert (=> b!3923302 (= e!2426306 e!2426307)))

(declare-fun res!1587094 () Bool)

(assert (=> b!3923302 (=> (not res!1587094) (not e!2426307))))

(assert (=> b!3923302 (= res!1587094 (not ((_ is Nil!41616) lt!1367967)))))

(declare-fun b!3923303 () Bool)

(declare-fun res!1587096 () Bool)

(assert (=> b!3923303 (=> (not res!1587096) (not e!2426307))))

(declare-fun head!8307 (List!41740) C!22972)

(assert (=> b!3923303 (= res!1587096 (= (head!8307 prefix!426) (head!8307 lt!1367967)))))

(declare-fun d!1163393 () Bool)

(declare-fun e!2426305 () Bool)

(assert (=> d!1163393 e!2426305))

(declare-fun res!1587095 () Bool)

(assert (=> d!1163393 (=> res!1587095 e!2426305)))

(declare-fun lt!1368015 () Bool)

(assert (=> d!1163393 (= res!1587095 (not lt!1368015))))

(assert (=> d!1163393 (= lt!1368015 e!2426306)))

(declare-fun res!1587097 () Bool)

(assert (=> d!1163393 (=> res!1587097 e!2426306)))

(assert (=> d!1163393 (= res!1587097 ((_ is Nil!41616) prefix!426))))

(assert (=> d!1163393 (= (isPrefix!3583 prefix!426 lt!1367967) lt!1368015)))

(declare-fun b!3923304 () Bool)

(declare-fun tail!6033 (List!41740) List!41740)

(assert (=> b!3923304 (= e!2426307 (isPrefix!3583 (tail!6033 prefix!426) (tail!6033 lt!1367967)))))

(declare-fun b!3923305 () Bool)

(assert (=> b!3923305 (= e!2426305 (>= (size!31238 lt!1367967) (size!31238 prefix!426)))))

(assert (= (and d!1163393 (not res!1587097)) b!3923302))

(assert (= (and b!3923302 res!1587094) b!3923303))

(assert (= (and b!3923303 res!1587096) b!3923304))

(assert (= (and d!1163393 (not res!1587095)) b!3923305))

(declare-fun m!4487321 () Bool)

(assert (=> b!3923303 m!4487321))

(declare-fun m!4487323 () Bool)

(assert (=> b!3923303 m!4487323))

(declare-fun m!4487325 () Bool)

(assert (=> b!3923304 m!4487325))

(declare-fun m!4487327 () Bool)

(assert (=> b!3923304 m!4487327))

(assert (=> b!3923304 m!4487325))

(assert (=> b!3923304 m!4487327))

(declare-fun m!4487329 () Bool)

(assert (=> b!3923304 m!4487329))

(assert (=> b!3923305 m!4487211))

(assert (=> b!3923305 m!4487171))

(assert (=> b!3923180 d!1163393))

(declare-fun d!1163403 () Bool)

(assert (=> d!1163403 (= lt!1367966 prefix!426)))

(declare-fun lt!1368018 () Unit!59838)

(declare-fun choose!23277 (List!41740 List!41740 List!41740) Unit!59838)

(assert (=> d!1163403 (= lt!1368018 (choose!23277 lt!1367966 prefix!426 lt!1367967))))

(assert (=> d!1163403 (isPrefix!3583 lt!1367966 lt!1367967)))

(assert (=> d!1163403 (= (lemmaIsPrefixSameLengthThenSameList!779 lt!1367966 prefix!426 lt!1367967) lt!1368018)))

(declare-fun bs!585931 () Bool)

(assert (= bs!585931 d!1163403))

(declare-fun m!4487331 () Bool)

(assert (=> bs!585931 m!4487331))

(declare-fun m!4487333 () Bool)

(assert (=> bs!585931 m!4487333))

(assert (=> b!3923180 d!1163403))

(declare-fun d!1163405 () Bool)

(assert (=> d!1163405 (= (_2!23575 (v!39233 lt!1367982)) suffix!1176)))

(declare-fun lt!1368021 () Unit!59838)

(declare-fun choose!23279 (List!41740 List!41740 List!41740 List!41740 List!41740) Unit!59838)

(assert (=> d!1163405 (= lt!1368021 (choose!23279 lt!1367966 (_2!23575 (v!39233 lt!1367982)) prefix!426 suffix!1176 lt!1367967))))

(assert (=> d!1163405 (isPrefix!3583 lt!1367966 lt!1367967)))

(assert (=> d!1163405 (= (lemmaSamePrefixThenSameSuffix!1804 lt!1367966 (_2!23575 (v!39233 lt!1367982)) prefix!426 suffix!1176 lt!1367967) lt!1368021)))

(declare-fun bs!585932 () Bool)

(assert (= bs!585932 d!1163405))

(declare-fun m!4487335 () Bool)

(assert (=> bs!585932 m!4487335))

(assert (=> bs!585932 m!4487333))

(assert (=> b!3923180 d!1163405))

(declare-fun d!1163407 () Bool)

(declare-fun e!2426363 () Bool)

(assert (=> d!1163407 e!2426363))

(declare-fun res!1587163 () Bool)

(assert (=> d!1163407 (=> res!1587163 e!2426363)))

(declare-fun lt!1368083 () Option!8908)

(declare-fun isEmpty!24790 (Option!8908) Bool)

(assert (=> d!1163407 (= res!1587163 (isEmpty!24790 lt!1368083))))

(declare-fun e!2426365 () Option!8908)

(assert (=> d!1163407 (= lt!1368083 e!2426365)))

(declare-fun c!681788 () Bool)

(assert (=> d!1163407 (= c!681788 (and ((_ is Cons!41617) rules!2768) ((_ is Nil!41617) (t!324780 rules!2768))))))

(declare-fun lt!1368085 () Unit!59838)

(declare-fun lt!1368081 () Unit!59838)

(assert (=> d!1163407 (= lt!1368085 lt!1368081)))

(assert (=> d!1163407 (isPrefix!3583 lt!1367967 lt!1367967)))

(declare-fun lemmaIsPrefixRefl!2270 (List!41740 List!41740) Unit!59838)

(assert (=> d!1163407 (= lt!1368081 (lemmaIsPrefixRefl!2270 lt!1367967 lt!1367967))))

(declare-fun rulesValidInductive!2340 (LexerInterface!6077 List!41741) Bool)

(assert (=> d!1163407 (rulesValidInductive!2340 thiss!20629 rules!2768)))

(assert (=> d!1163407 (= (maxPrefix!3381 thiss!20629 rules!2768 lt!1367967) lt!1368083)))

(declare-fun b!3923413 () Bool)

(declare-fun lt!1368084 () Option!8908)

(declare-fun lt!1368082 () Option!8908)

(assert (=> b!3923413 (= e!2426365 (ite (and ((_ is None!8907) lt!1368084) ((_ is None!8907) lt!1368082)) None!8907 (ite ((_ is None!8907) lt!1368082) lt!1368084 (ite ((_ is None!8907) lt!1368084) lt!1368082 (ite (>= (size!31237 (_1!23575 (v!39233 lt!1368084))) (size!31237 (_1!23575 (v!39233 lt!1368082)))) lt!1368084 lt!1368082)))))))

(declare-fun call!284668 () Option!8908)

(assert (=> b!3923413 (= lt!1368084 call!284668)))

(assert (=> b!3923413 (= lt!1368082 (maxPrefix!3381 thiss!20629 (t!324780 rules!2768) lt!1367967))))

(declare-fun b!3923414 () Bool)

(assert (=> b!3923414 (= e!2426365 call!284668)))

(declare-fun b!3923415 () Bool)

(declare-fun res!1587165 () Bool)

(declare-fun e!2426364 () Bool)

(assert (=> b!3923415 (=> (not res!1587165) (not e!2426364))))

(assert (=> b!3923415 (= res!1587165 (< (size!31238 (_2!23575 (get!13752 lt!1368083))) (size!31238 lt!1367967)))))

(declare-fun bm!284663 () Bool)

(assert (=> bm!284663 (= call!284668 (maxPrefixOneRule!2451 thiss!20629 (h!47037 rules!2768) lt!1367967))))

(declare-fun b!3923416 () Bool)

(declare-fun res!1587162 () Bool)

(assert (=> b!3923416 (=> (not res!1587162) (not e!2426364))))

(assert (=> b!3923416 (= res!1587162 (= (++!10733 (list!15469 (charsOf!4312 (_1!23575 (get!13752 lt!1368083)))) (_2!23575 (get!13752 lt!1368083))) lt!1367967))))

(declare-fun b!3923417 () Bool)

(declare-fun res!1587164 () Bool)

(assert (=> b!3923417 (=> (not res!1587164) (not e!2426364))))

(assert (=> b!3923417 (= res!1587164 (= (value!205542 (_1!23575 (get!13752 lt!1368083))) (apply!9727 (transformation!6488 (rule!9424 (_1!23575 (get!13752 lt!1368083)))) (seqFromList!4755 (originalCharacters!7088 (_1!23575 (get!13752 lt!1368083)))))))))

(declare-fun b!3923418 () Bool)

(declare-fun contains!8355 (List!41741 Rule!12776) Bool)

(assert (=> b!3923418 (= e!2426364 (contains!8355 rules!2768 (rule!9424 (_1!23575 (get!13752 lt!1368083)))))))

(declare-fun b!3923419 () Bool)

(declare-fun res!1587161 () Bool)

(assert (=> b!3923419 (=> (not res!1587161) (not e!2426364))))

(declare-fun matchR!5472 (Regex!11393 List!41740) Bool)

(assert (=> b!3923419 (= res!1587161 (matchR!5472 (regex!6488 (rule!9424 (_1!23575 (get!13752 lt!1368083)))) (list!15469 (charsOf!4312 (_1!23575 (get!13752 lt!1368083))))))))

(declare-fun b!3923420 () Bool)

(declare-fun res!1587167 () Bool)

(assert (=> b!3923420 (=> (not res!1587167) (not e!2426364))))

(assert (=> b!3923420 (= res!1587167 (= (list!15469 (charsOf!4312 (_1!23575 (get!13752 lt!1368083)))) (originalCharacters!7088 (_1!23575 (get!13752 lt!1368083)))))))

(declare-fun b!3923421 () Bool)

(assert (=> b!3923421 (= e!2426363 e!2426364)))

(declare-fun res!1587166 () Bool)

(assert (=> b!3923421 (=> (not res!1587166) (not e!2426364))))

(declare-fun isDefined!6939 (Option!8908) Bool)

(assert (=> b!3923421 (= res!1587166 (isDefined!6939 lt!1368083))))

(assert (= (and d!1163407 c!681788) b!3923414))

(assert (= (and d!1163407 (not c!681788)) b!3923413))

(assert (= (or b!3923414 b!3923413) bm!284663))

(assert (= (and d!1163407 (not res!1587163)) b!3923421))

(assert (= (and b!3923421 res!1587166) b!3923420))

(assert (= (and b!3923420 res!1587167) b!3923415))

(assert (= (and b!3923415 res!1587165) b!3923416))

(assert (= (and b!3923416 res!1587162) b!3923417))

(assert (= (and b!3923417 res!1587164) b!3923419))

(assert (= (and b!3923419 res!1587161) b!3923418))

(declare-fun m!4487485 () Bool)

(assert (=> b!3923415 m!4487485))

(declare-fun m!4487487 () Bool)

(assert (=> b!3923415 m!4487487))

(assert (=> b!3923415 m!4487211))

(assert (=> b!3923419 m!4487485))

(declare-fun m!4487489 () Bool)

(assert (=> b!3923419 m!4487489))

(assert (=> b!3923419 m!4487489))

(declare-fun m!4487491 () Bool)

(assert (=> b!3923419 m!4487491))

(assert (=> b!3923419 m!4487491))

(declare-fun m!4487493 () Bool)

(assert (=> b!3923419 m!4487493))

(declare-fun m!4487495 () Bool)

(assert (=> bm!284663 m!4487495))

(assert (=> b!3923418 m!4487485))

(declare-fun m!4487497 () Bool)

(assert (=> b!3923418 m!4487497))

(assert (=> b!3923416 m!4487485))

(assert (=> b!3923416 m!4487489))

(assert (=> b!3923416 m!4487489))

(assert (=> b!3923416 m!4487491))

(assert (=> b!3923416 m!4487491))

(declare-fun m!4487499 () Bool)

(assert (=> b!3923416 m!4487499))

(assert (=> b!3923417 m!4487485))

(declare-fun m!4487501 () Bool)

(assert (=> b!3923417 m!4487501))

(assert (=> b!3923417 m!4487501))

(declare-fun m!4487507 () Bool)

(assert (=> b!3923417 m!4487507))

(declare-fun m!4487509 () Bool)

(assert (=> b!3923421 m!4487509))

(declare-fun m!4487511 () Bool)

(assert (=> d!1163407 m!4487511))

(declare-fun m!4487513 () Bool)

(assert (=> d!1163407 m!4487513))

(declare-fun m!4487515 () Bool)

(assert (=> d!1163407 m!4487515))

(declare-fun m!4487517 () Bool)

(assert (=> d!1163407 m!4487517))

(assert (=> b!3923420 m!4487485))

(assert (=> b!3923420 m!4487489))

(assert (=> b!3923420 m!4487489))

(assert (=> b!3923420 m!4487491))

(declare-fun m!4487519 () Bool)

(assert (=> b!3923413 m!4487519))

(assert (=> b!3923178 d!1163407))

(declare-fun b!3923457 () Bool)

(declare-fun e!2426388 () tuple2!40884)

(declare-fun lt!1368102 () Option!8908)

(declare-fun lt!1368104 () tuple2!40884)

(assert (=> b!3923457 (= e!2426388 (tuple2!40885 (Cons!41618 (_1!23575 (v!39233 lt!1368102)) (_1!23576 lt!1368104)) (_2!23576 lt!1368104)))))

(assert (=> b!3923457 (= lt!1368104 (lexList!1845 thiss!20629 rules!2768 (_2!23575 (v!39233 lt!1368102))))))

(declare-fun b!3923458 () Bool)

(assert (=> b!3923458 (= e!2426388 (tuple2!40885 Nil!41618 suffix!1176))))

(declare-fun b!3923459 () Bool)

(declare-fun e!2426389 () Bool)

(declare-fun lt!1368103 () tuple2!40884)

(assert (=> b!3923459 (= e!2426389 (not (isEmpty!24786 (_1!23576 lt!1368103))))))

(declare-fun b!3923460 () Bool)

(declare-fun e!2426390 () Bool)

(assert (=> b!3923460 (= e!2426390 e!2426389)))

(declare-fun res!1587183 () Bool)

(assert (=> b!3923460 (= res!1587183 (< (size!31238 (_2!23576 lt!1368103)) (size!31238 suffix!1176)))))

(assert (=> b!3923460 (=> (not res!1587183) (not e!2426389))))

(declare-fun d!1163465 () Bool)

(assert (=> d!1163465 e!2426390))

(declare-fun c!681798 () Bool)

(declare-fun size!31240 (List!41742) Int)

(assert (=> d!1163465 (= c!681798 (> (size!31240 (_1!23576 lt!1368103)) 0))))

(assert (=> d!1163465 (= lt!1368103 e!2426388)))

(declare-fun c!681799 () Bool)

(assert (=> d!1163465 (= c!681799 ((_ is Some!8907) lt!1368102))))

(assert (=> d!1163465 (= lt!1368102 (maxPrefix!3381 thiss!20629 rules!2768 suffix!1176))))

(assert (=> d!1163465 (= (lexList!1845 thiss!20629 rules!2768 suffix!1176) lt!1368103)))

(declare-fun b!3923461 () Bool)

(assert (=> b!3923461 (= e!2426390 (= (_2!23576 lt!1368103) suffix!1176))))

(assert (= (and d!1163465 c!681799) b!3923457))

(assert (= (and d!1163465 (not c!681799)) b!3923458))

(assert (= (and d!1163465 c!681798) b!3923460))

(assert (= (and d!1163465 (not c!681798)) b!3923461))

(assert (= (and b!3923460 res!1587183) b!3923459))

(declare-fun m!4487547 () Bool)

(assert (=> b!3923457 m!4487547))

(declare-fun m!4487549 () Bool)

(assert (=> b!3923459 m!4487549))

(declare-fun m!4487551 () Bool)

(assert (=> b!3923460 m!4487551))

(assert (=> b!3923460 m!4487217))

(declare-fun m!4487553 () Bool)

(assert (=> d!1163465 m!4487553))

(declare-fun m!4487555 () Bool)

(assert (=> d!1163465 m!4487555))

(assert (=> b!3923179 d!1163465))

(declare-fun d!1163483 () Bool)

(assert (=> d!1163483 (not (= (lexList!1845 thiss!20629 rules!2768 (_2!23575 lt!1367957)) (tuple2!40885 (++!10734 lt!1367979 suffixTokens!72) suffixResult!91)))))

(declare-fun lt!1368117 () Unit!59838)

(declare-fun choose!23281 (LexerInterface!6077 List!41741 List!41740 List!41740 List!41742 List!41740 List!41742) Unit!59838)

(assert (=> d!1163483 (= lt!1368117 (choose!23281 thiss!20629 rules!2768 suffix!1176 (_2!23575 lt!1367957) suffixTokens!72 suffixResult!91 lt!1367979))))

(assert (=> d!1163483 (not (isEmpty!24788 rules!2768))))

(assert (=> d!1163483 (= (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!88 thiss!20629 rules!2768 suffix!1176 (_2!23575 lt!1367957) suffixTokens!72 suffixResult!91 lt!1367979) lt!1368117)))

(declare-fun bs!585944 () Bool)

(assert (= bs!585944 d!1163483))

(assert (=> bs!585944 m!4487151))

(assert (=> bs!585944 m!4487161))

(declare-fun m!4487557 () Bool)

(assert (=> bs!585944 m!4487557))

(assert (=> bs!585944 m!4487235))

(assert (=> b!3923199 d!1163483))

(declare-fun b!3923497 () Bool)

(declare-fun e!2426407 () List!41742)

(assert (=> b!3923497 (= e!2426407 suffixTokens!72)))

(declare-fun b!3923500 () Bool)

(declare-fun e!2426408 () Bool)

(declare-fun lt!1368125 () List!41742)

(assert (=> b!3923500 (= e!2426408 (or (not (= suffixTokens!72 Nil!41618)) (= lt!1368125 lt!1367979)))))

(declare-fun b!3923499 () Bool)

(declare-fun res!1587210 () Bool)

(assert (=> b!3923499 (=> (not res!1587210) (not e!2426408))))

(assert (=> b!3923499 (= res!1587210 (= (size!31240 lt!1368125) (+ (size!31240 lt!1367979) (size!31240 suffixTokens!72))))))

(declare-fun d!1163485 () Bool)

(assert (=> d!1163485 e!2426408))

(declare-fun res!1587209 () Bool)

(assert (=> d!1163485 (=> (not res!1587209) (not e!2426408))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6267 (List!41742) (InoxSet Token!12114))

(assert (=> d!1163485 (= res!1587209 (= (content!6267 lt!1368125) ((_ map or) (content!6267 lt!1367979) (content!6267 suffixTokens!72))))))

(assert (=> d!1163485 (= lt!1368125 e!2426407)))

(declare-fun c!681805 () Bool)

(assert (=> d!1163485 (= c!681805 ((_ is Nil!41618) lt!1367979))))

(assert (=> d!1163485 (= (++!10734 lt!1367979 suffixTokens!72) lt!1368125)))

(declare-fun b!3923498 () Bool)

(assert (=> b!3923498 (= e!2426407 (Cons!41618 (h!47038 lt!1367979) (++!10734 (t!324781 lt!1367979) suffixTokens!72)))))

(assert (= (and d!1163485 c!681805) b!3923497))

(assert (= (and d!1163485 (not c!681805)) b!3923498))

(assert (= (and d!1163485 res!1587209) b!3923499))

(assert (= (and b!3923499 res!1587210) b!3923500))

(declare-fun m!4487599 () Bool)

(assert (=> b!3923499 m!4487599))

(declare-fun m!4487603 () Bool)

(assert (=> b!3923499 m!4487603))

(declare-fun m!4487605 () Bool)

(assert (=> b!3923499 m!4487605))

(declare-fun m!4487607 () Bool)

(assert (=> d!1163485 m!4487607))

(declare-fun m!4487609 () Bool)

(assert (=> d!1163485 m!4487609))

(declare-fun m!4487611 () Bool)

(assert (=> d!1163485 m!4487611))

(declare-fun m!4487613 () Bool)

(assert (=> b!3923498 m!4487613))

(assert (=> b!3923199 d!1163485))

(declare-fun d!1163489 () Bool)

(assert (=> d!1163489 (and (= lt!1367966 lt!1367966) (= (_2!23575 (v!39233 lt!1367982)) (_2!23575 lt!1367957)))))

(declare-fun lt!1368133 () Unit!59838)

(declare-fun choose!23282 (List!41740 List!41740 List!41740 List!41740) Unit!59838)

(assert (=> d!1163489 (= lt!1368133 (choose!23282 lt!1367966 (_2!23575 (v!39233 lt!1367982)) lt!1367966 (_2!23575 lt!1367957)))))

(assert (=> d!1163489 (= (++!10733 lt!1367966 (_2!23575 (v!39233 lt!1367982))) (++!10733 lt!1367966 (_2!23575 lt!1367957)))))

(assert (=> d!1163489 (= (lemmaConcatSameAndSameSizesThenSameLists!536 lt!1367966 (_2!23575 (v!39233 lt!1367982)) lt!1367966 (_2!23575 lt!1367957)) lt!1368133)))

(declare-fun bs!585945 () Bool)

(assert (= bs!585945 d!1163489))

(declare-fun m!4487631 () Bool)

(assert (=> bs!585945 m!4487631))

(assert (=> bs!585945 m!4487149))

(declare-fun m!4487633 () Bool)

(assert (=> bs!585945 m!4487633))

(assert (=> b!3923197 d!1163489))

(declare-fun d!1163503 () Bool)

(assert (=> d!1163503 (not (= (lexList!1845 thiss!20629 rules!2768 (_2!23575 lt!1367957)) (tuple2!40885 suffixTokens!72 suffixResult!91)))))

(declare-fun lt!1368143 () Unit!59838)

(declare-fun choose!23283 (LexerInterface!6077 List!41741 List!41740 List!41740 List!41742 List!41740) Unit!59838)

(assert (=> d!1163503 (= lt!1368143 (choose!23283 thiss!20629 rules!2768 suffix!1176 (_2!23575 lt!1367957) suffixTokens!72 suffixResult!91))))

(assert (=> d!1163503 (not (isEmpty!24788 rules!2768))))

(assert (=> d!1163503 (= (lemmaLexWithSmallerInputCannotProduceSameResults!88 thiss!20629 rules!2768 suffix!1176 (_2!23575 lt!1367957) suffixTokens!72 suffixResult!91) lt!1368143)))

(declare-fun bs!585948 () Bool)

(assert (= bs!585948 d!1163503))

(assert (=> bs!585948 m!4487151))

(declare-fun m!4487679 () Bool)

(assert (=> bs!585948 m!4487679))

(assert (=> bs!585948 m!4487235))

(assert (=> b!3923197 d!1163503))

(declare-fun d!1163519 () Bool)

(assert (=> d!1163519 (= (isEmpty!24788 rules!2768) ((_ is Nil!41617) rules!2768))))

(assert (=> b!3923198 d!1163519))

(declare-fun d!1163521 () Bool)

(declare-fun res!1587219 () Bool)

(declare-fun e!2426469 () Bool)

(assert (=> d!1163521 (=> (not res!1587219) (not e!2426469))))

(assert (=> d!1163521 (= res!1587219 (not (isEmpty!24787 (originalCharacters!7088 (h!47038 prefixTokens!80)))))))

(assert (=> d!1163521 (= (inv!55813 (h!47038 prefixTokens!80)) e!2426469)))

(declare-fun b!3923583 () Bool)

(declare-fun res!1587220 () Bool)

(assert (=> b!3923583 (=> (not res!1587220) (not e!2426469))))

(declare-fun dynLambda!17861 (Int TokenValue!6718) BalanceConc!24992)

(assert (=> b!3923583 (= res!1587220 (= (originalCharacters!7088 (h!47038 prefixTokens!80)) (list!15469 (dynLambda!17861 (toChars!8799 (transformation!6488 (rule!9424 (h!47038 prefixTokens!80)))) (value!205542 (h!47038 prefixTokens!80))))))))

(declare-fun b!3923584 () Bool)

(assert (=> b!3923584 (= e!2426469 (= (size!31237 (h!47038 prefixTokens!80)) (size!31238 (originalCharacters!7088 (h!47038 prefixTokens!80)))))))

(assert (= (and d!1163521 res!1587219) b!3923583))

(assert (= (and b!3923583 res!1587220) b!3923584))

(declare-fun b_lambda!114859 () Bool)

(assert (=> (not b_lambda!114859) (not b!3923583)))

(declare-fun tb!234365 () Bool)

(declare-fun t!324831 () Bool)

(assert (=> (and b!3923182 (= (toChars!8799 (transformation!6488 (h!47037 rules!2768))) (toChars!8799 (transformation!6488 (rule!9424 (h!47038 prefixTokens!80))))) t!324831) tb!234365))

(declare-fun b!3923589 () Bool)

(declare-fun e!2426472 () Bool)

(declare-fun tp!1194384 () Bool)

(declare-fun inv!55816 (Conc!12699) Bool)

(assert (=> b!3923589 (= e!2426472 (and (inv!55816 (c!681745 (dynLambda!17861 (toChars!8799 (transformation!6488 (rule!9424 (h!47038 prefixTokens!80)))) (value!205542 (h!47038 prefixTokens!80))))) tp!1194384))))

(declare-fun result!284002 () Bool)

(declare-fun inv!55817 (BalanceConc!24992) Bool)

(assert (=> tb!234365 (= result!284002 (and (inv!55817 (dynLambda!17861 (toChars!8799 (transformation!6488 (rule!9424 (h!47038 prefixTokens!80)))) (value!205542 (h!47038 prefixTokens!80)))) e!2426472))))

(assert (= tb!234365 b!3923589))

(declare-fun m!4487681 () Bool)

(assert (=> b!3923589 m!4487681))

(declare-fun m!4487683 () Bool)

(assert (=> tb!234365 m!4487683))

(assert (=> b!3923583 t!324831))

(declare-fun b_and!299159 () Bool)

(assert (= b_and!299113 (and (=> t!324831 result!284002) b_and!299159)))

(declare-fun tb!234367 () Bool)

(declare-fun t!324833 () Bool)

(assert (=> (and b!3923204 (= (toChars!8799 (transformation!6488 (rule!9424 (h!47038 suffixTokens!72)))) (toChars!8799 (transformation!6488 (rule!9424 (h!47038 prefixTokens!80))))) t!324833) tb!234367))

(declare-fun result!284006 () Bool)

(assert (= result!284006 result!284002))

(assert (=> b!3923583 t!324833))

(declare-fun b_and!299161 () Bool)

(assert (= b_and!299117 (and (=> t!324833 result!284006) b_and!299161)))

(declare-fun t!324835 () Bool)

(declare-fun tb!234369 () Bool)

(assert (=> (and b!3923214 (= (toChars!8799 (transformation!6488 (rule!9424 (h!47038 prefixTokens!80)))) (toChars!8799 (transformation!6488 (rule!9424 (h!47038 prefixTokens!80))))) t!324835) tb!234369))

(declare-fun result!284008 () Bool)

(assert (= result!284008 result!284002))

(assert (=> b!3923583 t!324835))

(declare-fun b_and!299163 () Bool)

(assert (= b_and!299121 (and (=> t!324835 result!284008) b_and!299163)))

(declare-fun m!4487685 () Bool)

(assert (=> d!1163521 m!4487685))

(declare-fun m!4487687 () Bool)

(assert (=> b!3923583 m!4487687))

(assert (=> b!3923583 m!4487687))

(declare-fun m!4487689 () Bool)

(assert (=> b!3923583 m!4487689))

(declare-fun m!4487691 () Bool)

(assert (=> b!3923584 m!4487691))

(assert (=> b!3923196 d!1163521))

(declare-fun d!1163523 () Bool)

(declare-fun lt!1368146 () Int)

(assert (=> d!1163523 (>= lt!1368146 0)))

(declare-fun e!2426475 () Int)

(assert (=> d!1163523 (= lt!1368146 e!2426475)))

(declare-fun c!681815 () Bool)

(assert (=> d!1163523 (= c!681815 ((_ is Nil!41616) suffix!1176))))

(assert (=> d!1163523 (= (size!31238 suffix!1176) lt!1368146)))

(declare-fun b!3923594 () Bool)

(assert (=> b!3923594 (= e!2426475 0)))

(declare-fun b!3923595 () Bool)

(assert (=> b!3923595 (= e!2426475 (+ 1 (size!31238 (t!324779 suffix!1176))))))

(assert (= (and d!1163523 c!681815) b!3923594))

(assert (= (and d!1163523 (not c!681815)) b!3923595))

(declare-fun m!4487693 () Bool)

(assert (=> b!3923595 m!4487693))

(assert (=> b!3923216 d!1163523))

(declare-fun d!1163525 () Bool)

(declare-fun lt!1368147 () Int)

(assert (=> d!1163525 (>= lt!1368147 0)))

(declare-fun e!2426476 () Int)

(assert (=> d!1163525 (= lt!1368147 e!2426476)))

(declare-fun c!681816 () Bool)

(assert (=> d!1163525 (= c!681816 ((_ is Nil!41616) (_2!23575 (v!39233 lt!1367982))))))

(assert (=> d!1163525 (= (size!31238 (_2!23575 (v!39233 lt!1367982))) lt!1368147)))

(declare-fun b!3923596 () Bool)

(assert (=> b!3923596 (= e!2426476 0)))

(declare-fun b!3923597 () Bool)

(assert (=> b!3923597 (= e!2426476 (+ 1 (size!31238 (t!324779 (_2!23575 (v!39233 lt!1367982))))))))

(assert (= (and d!1163525 c!681816) b!3923596))

(assert (= (and d!1163525 (not c!681816)) b!3923597))

(declare-fun m!4487695 () Bool)

(assert (=> b!3923597 m!4487695))

(assert (=> b!3923216 d!1163525))

(declare-fun b!3923598 () Bool)

(declare-fun e!2426477 () tuple2!40884)

(declare-fun lt!1368148 () Option!8908)

(declare-fun lt!1368150 () tuple2!40884)

(assert (=> b!3923598 (= e!2426477 (tuple2!40885 (Cons!41618 (_1!23575 (v!39233 lt!1368148)) (_1!23576 lt!1368150)) (_2!23576 lt!1368150)))))

(assert (=> b!3923598 (= lt!1368150 (lexList!1845 thiss!20629 rules!2768 (_2!23575 (v!39233 lt!1368148))))))

(declare-fun b!3923599 () Bool)

(assert (=> b!3923599 (= e!2426477 (tuple2!40885 Nil!41618 lt!1367967))))

(declare-fun b!3923600 () Bool)

(declare-fun e!2426478 () Bool)

(declare-fun lt!1368149 () tuple2!40884)

(assert (=> b!3923600 (= e!2426478 (not (isEmpty!24786 (_1!23576 lt!1368149))))))

(declare-fun b!3923601 () Bool)

(declare-fun e!2426479 () Bool)

(assert (=> b!3923601 (= e!2426479 e!2426478)))

(declare-fun res!1587221 () Bool)

(assert (=> b!3923601 (= res!1587221 (< (size!31238 (_2!23576 lt!1368149)) (size!31238 lt!1367967)))))

(assert (=> b!3923601 (=> (not res!1587221) (not e!2426478))))

(declare-fun d!1163527 () Bool)

(assert (=> d!1163527 e!2426479))

(declare-fun c!681817 () Bool)

(assert (=> d!1163527 (= c!681817 (> (size!31240 (_1!23576 lt!1368149)) 0))))

(assert (=> d!1163527 (= lt!1368149 e!2426477)))

(declare-fun c!681818 () Bool)

(assert (=> d!1163527 (= c!681818 ((_ is Some!8907) lt!1368148))))

(assert (=> d!1163527 (= lt!1368148 (maxPrefix!3381 thiss!20629 rules!2768 lt!1367967))))

(assert (=> d!1163527 (= (lexList!1845 thiss!20629 rules!2768 lt!1367967) lt!1368149)))

(declare-fun b!3923602 () Bool)

(assert (=> b!3923602 (= e!2426479 (= (_2!23576 lt!1368149) lt!1367967))))

(assert (= (and d!1163527 c!681818) b!3923598))

(assert (= (and d!1163527 (not c!681818)) b!3923599))

(assert (= (and d!1163527 c!681817) b!3923601))

(assert (= (and d!1163527 (not c!681817)) b!3923602))

(assert (= (and b!3923601 res!1587221) b!3923600))

(declare-fun m!4487697 () Bool)

(assert (=> b!3923598 m!4487697))

(declare-fun m!4487699 () Bool)

(assert (=> b!3923600 m!4487699))

(declare-fun m!4487701 () Bool)

(assert (=> b!3923601 m!4487701))

(assert (=> b!3923601 m!4487211))

(declare-fun m!4487703 () Bool)

(assert (=> d!1163527 m!4487703))

(assert (=> d!1163527 m!4487227))

(assert (=> b!3923195 d!1163527))

(declare-fun b!3923603 () Bool)

(declare-fun e!2426480 () List!41742)

(assert (=> b!3923603 (= e!2426480 suffixTokens!72)))

(declare-fun b!3923606 () Bool)

(declare-fun lt!1368151 () List!41742)

(declare-fun e!2426481 () Bool)

(assert (=> b!3923606 (= e!2426481 (or (not (= suffixTokens!72 Nil!41618)) (= lt!1368151 prefixTokens!80)))))

(declare-fun b!3923605 () Bool)

(declare-fun res!1587223 () Bool)

(assert (=> b!3923605 (=> (not res!1587223) (not e!2426481))))

(assert (=> b!3923605 (= res!1587223 (= (size!31240 lt!1368151) (+ (size!31240 prefixTokens!80) (size!31240 suffixTokens!72))))))

(declare-fun d!1163529 () Bool)

(assert (=> d!1163529 e!2426481))

(declare-fun res!1587222 () Bool)

(assert (=> d!1163529 (=> (not res!1587222) (not e!2426481))))

(assert (=> d!1163529 (= res!1587222 (= (content!6267 lt!1368151) ((_ map or) (content!6267 prefixTokens!80) (content!6267 suffixTokens!72))))))

(assert (=> d!1163529 (= lt!1368151 e!2426480)))

(declare-fun c!681819 () Bool)

(assert (=> d!1163529 (= c!681819 ((_ is Nil!41618) prefixTokens!80))))

(assert (=> d!1163529 (= (++!10734 prefixTokens!80 suffixTokens!72) lt!1368151)))

(declare-fun b!3923604 () Bool)

(assert (=> b!3923604 (= e!2426480 (Cons!41618 (h!47038 prefixTokens!80) (++!10734 (t!324781 prefixTokens!80) suffixTokens!72)))))

(assert (= (and d!1163529 c!681819) b!3923603))

(assert (= (and d!1163529 (not c!681819)) b!3923604))

(assert (= (and d!1163529 res!1587222) b!3923605))

(assert (= (and b!3923605 res!1587223) b!3923606))

(declare-fun m!4487705 () Bool)

(assert (=> b!3923605 m!4487705))

(declare-fun m!4487707 () Bool)

(assert (=> b!3923605 m!4487707))

(assert (=> b!3923605 m!4487605))

(declare-fun m!4487709 () Bool)

(assert (=> d!1163529 m!4487709))

(declare-fun m!4487711 () Bool)

(assert (=> d!1163529 m!4487711))

(assert (=> d!1163529 m!4487611))

(declare-fun m!4487713 () Bool)

(assert (=> b!3923604 m!4487713))

(assert (=> b!3923195 d!1163529))

(declare-fun b!3923615 () Bool)

(declare-fun e!2426487 () List!41740)

(assert (=> b!3923615 (= e!2426487 suffix!1176)))

(declare-fun b!3923618 () Bool)

(declare-fun e!2426486 () Bool)

(declare-fun lt!1368154 () List!41740)

(assert (=> b!3923618 (= e!2426486 (or (not (= suffix!1176 Nil!41616)) (= lt!1368154 prefix!426)))))

(declare-fun b!3923617 () Bool)

(declare-fun res!1587228 () Bool)

(assert (=> b!3923617 (=> (not res!1587228) (not e!2426486))))

(assert (=> b!3923617 (= res!1587228 (= (size!31238 lt!1368154) (+ (size!31238 prefix!426) (size!31238 suffix!1176))))))

(declare-fun b!3923616 () Bool)

(assert (=> b!3923616 (= e!2426487 (Cons!41616 (h!47036 prefix!426) (++!10733 (t!324779 prefix!426) suffix!1176)))))

(declare-fun d!1163531 () Bool)

(assert (=> d!1163531 e!2426486))

(declare-fun res!1587229 () Bool)

(assert (=> d!1163531 (=> (not res!1587229) (not e!2426486))))

(declare-fun content!6268 (List!41740) (InoxSet C!22972))

(assert (=> d!1163531 (= res!1587229 (= (content!6268 lt!1368154) ((_ map or) (content!6268 prefix!426) (content!6268 suffix!1176))))))

(assert (=> d!1163531 (= lt!1368154 e!2426487)))

(declare-fun c!681822 () Bool)

(assert (=> d!1163531 (= c!681822 ((_ is Nil!41616) prefix!426))))

(assert (=> d!1163531 (= (++!10733 prefix!426 suffix!1176) lt!1368154)))

(assert (= (and d!1163531 c!681822) b!3923615))

(assert (= (and d!1163531 (not c!681822)) b!3923616))

(assert (= (and d!1163531 res!1587229) b!3923617))

(assert (= (and b!3923617 res!1587228) b!3923618))

(declare-fun m!4487715 () Bool)

(assert (=> b!3923617 m!4487715))

(assert (=> b!3923617 m!4487171))

(assert (=> b!3923617 m!4487217))

(declare-fun m!4487717 () Bool)

(assert (=> b!3923616 m!4487717))

(declare-fun m!4487719 () Bool)

(assert (=> d!1163531 m!4487719))

(declare-fun m!4487721 () Bool)

(assert (=> d!1163531 m!4487721))

(declare-fun m!4487723 () Bool)

(assert (=> d!1163531 m!4487723))

(assert (=> b!3923195 d!1163531))

(declare-fun d!1163533 () Bool)

(assert (=> d!1163533 (= (inv!55809 (tag!7348 (rule!9424 (h!47038 prefixTokens!80)))) (= (mod (str.len (value!205541 (tag!7348 (rule!9424 (h!47038 prefixTokens!80))))) 2) 0))))

(assert (=> b!3923193 d!1163533))

(declare-fun d!1163535 () Bool)

(declare-fun res!1587232 () Bool)

(declare-fun e!2426490 () Bool)

(assert (=> d!1163535 (=> (not res!1587232) (not e!2426490))))

(declare-fun semiInverseModEq!2791 (Int Int) Bool)

(assert (=> d!1163535 (= res!1587232 (semiInverseModEq!2791 (toChars!8799 (transformation!6488 (rule!9424 (h!47038 prefixTokens!80)))) (toValue!8940 (transformation!6488 (rule!9424 (h!47038 prefixTokens!80))))))))

(assert (=> d!1163535 (= (inv!55812 (transformation!6488 (rule!9424 (h!47038 prefixTokens!80)))) e!2426490)))

(declare-fun b!3923621 () Bool)

(declare-fun equivClasses!2690 (Int Int) Bool)

(assert (=> b!3923621 (= e!2426490 (equivClasses!2690 (toChars!8799 (transformation!6488 (rule!9424 (h!47038 prefixTokens!80)))) (toValue!8940 (transformation!6488 (rule!9424 (h!47038 prefixTokens!80))))))))

(assert (= (and d!1163535 res!1587232) b!3923621))

(declare-fun m!4487725 () Bool)

(assert (=> d!1163535 m!4487725))

(declare-fun m!4487727 () Bool)

(assert (=> b!3923621 m!4487727))

(assert (=> b!3923193 d!1163535))

(declare-fun b!3923622 () Bool)

(declare-fun e!2426493 () Bool)

(declare-fun e!2426491 () Bool)

(assert (=> b!3923622 (= e!2426493 e!2426491)))

(declare-fun c!681824 () Bool)

(assert (=> b!3923622 (= c!681824 ((_ is IntegerValue!20155) (value!205542 (h!47038 suffixTokens!72))))))

(declare-fun d!1163537 () Bool)

(declare-fun c!681823 () Bool)

(assert (=> d!1163537 (= c!681823 ((_ is IntegerValue!20154) (value!205542 (h!47038 suffixTokens!72))))))

(assert (=> d!1163537 (= (inv!21 (value!205542 (h!47038 suffixTokens!72))) e!2426493)))

(declare-fun b!3923623 () Bool)

(declare-fun e!2426492 () Bool)

(assert (=> b!3923623 (= e!2426492 (inv!15 (value!205542 (h!47038 suffixTokens!72))))))

(declare-fun b!3923624 () Bool)

(declare-fun res!1587233 () Bool)

(assert (=> b!3923624 (=> res!1587233 e!2426492)))

(assert (=> b!3923624 (= res!1587233 (not ((_ is IntegerValue!20156) (value!205542 (h!47038 suffixTokens!72)))))))

(assert (=> b!3923624 (= e!2426491 e!2426492)))

(declare-fun b!3923625 () Bool)

(assert (=> b!3923625 (= e!2426491 (inv!17 (value!205542 (h!47038 suffixTokens!72))))))

(declare-fun b!3923626 () Bool)

(assert (=> b!3923626 (= e!2426493 (inv!16 (value!205542 (h!47038 suffixTokens!72))))))

(assert (= (and d!1163537 c!681823) b!3923626))

(assert (= (and d!1163537 (not c!681823)) b!3923622))

(assert (= (and b!3923622 c!681824) b!3923625))

(assert (= (and b!3923622 (not c!681824)) b!3923624))

(assert (= (and b!3923624 (not res!1587233)) b!3923623))

(declare-fun m!4487729 () Bool)

(assert (=> b!3923623 m!4487729))

(declare-fun m!4487731 () Bool)

(assert (=> b!3923625 m!4487731))

(declare-fun m!4487733 () Bool)

(assert (=> b!3923626 m!4487733))

(assert (=> b!3923192 d!1163537))

(declare-fun d!1163539 () Bool)

(declare-fun res!1587234 () Bool)

(declare-fun e!2426494 () Bool)

(assert (=> d!1163539 (=> (not res!1587234) (not e!2426494))))

(assert (=> d!1163539 (= res!1587234 (not (isEmpty!24787 (originalCharacters!7088 (h!47038 suffixTokens!72)))))))

(assert (=> d!1163539 (= (inv!55813 (h!47038 suffixTokens!72)) e!2426494)))

(declare-fun b!3923627 () Bool)

(declare-fun res!1587235 () Bool)

(assert (=> b!3923627 (=> (not res!1587235) (not e!2426494))))

(assert (=> b!3923627 (= res!1587235 (= (originalCharacters!7088 (h!47038 suffixTokens!72)) (list!15469 (dynLambda!17861 (toChars!8799 (transformation!6488 (rule!9424 (h!47038 suffixTokens!72)))) (value!205542 (h!47038 suffixTokens!72))))))))

(declare-fun b!3923628 () Bool)

(assert (=> b!3923628 (= e!2426494 (= (size!31237 (h!47038 suffixTokens!72)) (size!31238 (originalCharacters!7088 (h!47038 suffixTokens!72)))))))

(assert (= (and d!1163539 res!1587234) b!3923627))

(assert (= (and b!3923627 res!1587235) b!3923628))

(declare-fun b_lambda!114861 () Bool)

(assert (=> (not b_lambda!114861) (not b!3923627)))

(declare-fun t!324837 () Bool)

(declare-fun tb!234371 () Bool)

(assert (=> (and b!3923182 (= (toChars!8799 (transformation!6488 (h!47037 rules!2768))) (toChars!8799 (transformation!6488 (rule!9424 (h!47038 suffixTokens!72))))) t!324837) tb!234371))

(declare-fun b!3923629 () Bool)

(declare-fun e!2426495 () Bool)

(declare-fun tp!1194385 () Bool)

(assert (=> b!3923629 (= e!2426495 (and (inv!55816 (c!681745 (dynLambda!17861 (toChars!8799 (transformation!6488 (rule!9424 (h!47038 suffixTokens!72)))) (value!205542 (h!47038 suffixTokens!72))))) tp!1194385))))

(declare-fun result!284010 () Bool)

(assert (=> tb!234371 (= result!284010 (and (inv!55817 (dynLambda!17861 (toChars!8799 (transformation!6488 (rule!9424 (h!47038 suffixTokens!72)))) (value!205542 (h!47038 suffixTokens!72)))) e!2426495))))

(assert (= tb!234371 b!3923629))

(declare-fun m!4487735 () Bool)

(assert (=> b!3923629 m!4487735))

(declare-fun m!4487737 () Bool)

(assert (=> tb!234371 m!4487737))

(assert (=> b!3923627 t!324837))

(declare-fun b_and!299165 () Bool)

(assert (= b_and!299159 (and (=> t!324837 result!284010) b_and!299165)))

(declare-fun t!324839 () Bool)

(declare-fun tb!234373 () Bool)

(assert (=> (and b!3923204 (= (toChars!8799 (transformation!6488 (rule!9424 (h!47038 suffixTokens!72)))) (toChars!8799 (transformation!6488 (rule!9424 (h!47038 suffixTokens!72))))) t!324839) tb!234373))

(declare-fun result!284012 () Bool)

(assert (= result!284012 result!284010))

(assert (=> b!3923627 t!324839))

(declare-fun b_and!299167 () Bool)

(assert (= b_and!299161 (and (=> t!324839 result!284012) b_and!299167)))

(declare-fun tb!234375 () Bool)

(declare-fun t!324841 () Bool)

(assert (=> (and b!3923214 (= (toChars!8799 (transformation!6488 (rule!9424 (h!47038 prefixTokens!80)))) (toChars!8799 (transformation!6488 (rule!9424 (h!47038 suffixTokens!72))))) t!324841) tb!234375))

(declare-fun result!284014 () Bool)

(assert (= result!284014 result!284010))

(assert (=> b!3923627 t!324841))

(declare-fun b_and!299169 () Bool)

(assert (= b_and!299163 (and (=> t!324841 result!284014) b_and!299169)))

(declare-fun m!4487739 () Bool)

(assert (=> d!1163539 m!4487739))

(declare-fun m!4487741 () Bool)

(assert (=> b!3923627 m!4487741))

(assert (=> b!3923627 m!4487741))

(declare-fun m!4487743 () Bool)

(assert (=> b!3923627 m!4487743))

(declare-fun m!4487745 () Bool)

(assert (=> b!3923628 m!4487745))

(assert (=> b!3923213 d!1163539))

(declare-fun d!1163541 () Bool)

(declare-fun fromListB!2200 (List!41740) BalanceConc!24992)

(assert (=> d!1163541 (= (seqFromList!4755 lt!1367966) (fromListB!2200 lt!1367966))))

(declare-fun bs!585949 () Bool)

(assert (= bs!585949 d!1163541))

(declare-fun m!4487747 () Bool)

(assert (=> bs!585949 m!4487747))

(assert (=> b!3923212 d!1163541))

(declare-fun b!3923630 () Bool)

(declare-fun e!2426497 () Bool)

(declare-fun e!2426498 () Bool)

(assert (=> b!3923630 (= e!2426497 e!2426498)))

(declare-fun res!1587236 () Bool)

(assert (=> b!3923630 (=> (not res!1587236) (not e!2426498))))

(assert (=> b!3923630 (= res!1587236 (not ((_ is Nil!41616) lt!1367976)))))

(declare-fun b!3923631 () Bool)

(declare-fun res!1587238 () Bool)

(assert (=> b!3923631 (=> (not res!1587238) (not e!2426498))))

(assert (=> b!3923631 (= res!1587238 (= (head!8307 lt!1367966) (head!8307 lt!1367976)))))

(declare-fun d!1163543 () Bool)

(declare-fun e!2426496 () Bool)

(assert (=> d!1163543 e!2426496))

(declare-fun res!1587237 () Bool)

(assert (=> d!1163543 (=> res!1587237 e!2426496)))

(declare-fun lt!1368155 () Bool)

(assert (=> d!1163543 (= res!1587237 (not lt!1368155))))

(assert (=> d!1163543 (= lt!1368155 e!2426497)))

(declare-fun res!1587239 () Bool)

(assert (=> d!1163543 (=> res!1587239 e!2426497)))

(assert (=> d!1163543 (= res!1587239 ((_ is Nil!41616) lt!1367966))))

(assert (=> d!1163543 (= (isPrefix!3583 lt!1367966 lt!1367976) lt!1368155)))

(declare-fun b!3923632 () Bool)

(assert (=> b!3923632 (= e!2426498 (isPrefix!3583 (tail!6033 lt!1367966) (tail!6033 lt!1367976)))))

(declare-fun b!3923633 () Bool)

(assert (=> b!3923633 (= e!2426496 (>= (size!31238 lt!1367976) (size!31238 lt!1367966)))))

(assert (= (and d!1163543 (not res!1587239)) b!3923630))

(assert (= (and b!3923630 res!1587236) b!3923631))

(assert (= (and b!3923631 res!1587238) b!3923632))

(assert (= (and d!1163543 (not res!1587237)) b!3923633))

(declare-fun m!4487749 () Bool)

(assert (=> b!3923631 m!4487749))

(declare-fun m!4487751 () Bool)

(assert (=> b!3923631 m!4487751))

(declare-fun m!4487753 () Bool)

(assert (=> b!3923632 m!4487753))

(declare-fun m!4487755 () Bool)

(assert (=> b!3923632 m!4487755))

(assert (=> b!3923632 m!4487753))

(assert (=> b!3923632 m!4487755))

(declare-fun m!4487757 () Bool)

(assert (=> b!3923632 m!4487757))

(declare-fun m!4487759 () Bool)

(assert (=> b!3923633 m!4487759))

(assert (=> b!3923633 m!4487139))

(assert (=> b!3923212 d!1163543))

(declare-fun b!3923634 () Bool)

(declare-fun e!2426499 () tuple2!40884)

(declare-fun lt!1368156 () Option!8908)

(declare-fun lt!1368158 () tuple2!40884)

(assert (=> b!3923634 (= e!2426499 (tuple2!40885 (Cons!41618 (_1!23575 (v!39233 lt!1368156)) (_1!23576 lt!1368158)) (_2!23576 lt!1368158)))))

(assert (=> b!3923634 (= lt!1368158 (lexList!1845 thiss!20629 rules!2768 (_2!23575 (v!39233 lt!1368156))))))

(declare-fun b!3923635 () Bool)

(assert (=> b!3923635 (= e!2426499 (tuple2!40885 Nil!41618 (_2!23575 (v!39233 lt!1367982))))))

(declare-fun b!3923636 () Bool)

(declare-fun e!2426500 () Bool)

(declare-fun lt!1368157 () tuple2!40884)

(assert (=> b!3923636 (= e!2426500 (not (isEmpty!24786 (_1!23576 lt!1368157))))))

(declare-fun b!3923637 () Bool)

(declare-fun e!2426501 () Bool)

(assert (=> b!3923637 (= e!2426501 e!2426500)))

(declare-fun res!1587240 () Bool)

(assert (=> b!3923637 (= res!1587240 (< (size!31238 (_2!23576 lt!1368157)) (size!31238 (_2!23575 (v!39233 lt!1367982)))))))

(assert (=> b!3923637 (=> (not res!1587240) (not e!2426500))))

(declare-fun d!1163545 () Bool)

(assert (=> d!1163545 e!2426501))

(declare-fun c!681825 () Bool)

(assert (=> d!1163545 (= c!681825 (> (size!31240 (_1!23576 lt!1368157)) 0))))

(assert (=> d!1163545 (= lt!1368157 e!2426499)))

(declare-fun c!681826 () Bool)

(assert (=> d!1163545 (= c!681826 ((_ is Some!8907) lt!1368156))))

(assert (=> d!1163545 (= lt!1368156 (maxPrefix!3381 thiss!20629 rules!2768 (_2!23575 (v!39233 lt!1367982))))))

(assert (=> d!1163545 (= (lexList!1845 thiss!20629 rules!2768 (_2!23575 (v!39233 lt!1367982))) lt!1368157)))

(declare-fun b!3923638 () Bool)

(assert (=> b!3923638 (= e!2426501 (= (_2!23576 lt!1368157) (_2!23575 (v!39233 lt!1367982))))))

(assert (= (and d!1163545 c!681826) b!3923634))

(assert (= (and d!1163545 (not c!681826)) b!3923635))

(assert (= (and d!1163545 c!681825) b!3923637))

(assert (= (and d!1163545 (not c!681825)) b!3923638))

(assert (= (and b!3923637 res!1587240) b!3923636))

(declare-fun m!4487761 () Bool)

(assert (=> b!3923634 m!4487761))

(declare-fun m!4487763 () Bool)

(assert (=> b!3923636 m!4487763))

(declare-fun m!4487765 () Bool)

(assert (=> b!3923637 m!4487765))

(assert (=> b!3923637 m!4487219))

(declare-fun m!4487767 () Bool)

(assert (=> d!1163545 m!4487767))

(declare-fun m!4487769 () Bool)

(assert (=> d!1163545 m!4487769))

(assert (=> b!3923212 d!1163545))

(declare-fun d!1163547 () Bool)

(declare-fun lt!1368159 () Int)

(assert (=> d!1163547 (>= lt!1368159 0)))

(declare-fun e!2426502 () Int)

(assert (=> d!1163547 (= lt!1368159 e!2426502)))

(declare-fun c!681827 () Bool)

(assert (=> d!1163547 (= c!681827 ((_ is Nil!41616) lt!1367966))))

(assert (=> d!1163547 (= (size!31238 lt!1367966) lt!1368159)))

(declare-fun b!3923639 () Bool)

(assert (=> b!3923639 (= e!2426502 0)))

(declare-fun b!3923640 () Bool)

(assert (=> b!3923640 (= e!2426502 (+ 1 (size!31238 (t!324779 lt!1367966))))))

(assert (= (and d!1163547 c!681827) b!3923639))

(assert (= (and d!1163547 (not c!681827)) b!3923640))

(declare-fun m!4487771 () Bool)

(assert (=> b!3923640 m!4487771))

(assert (=> b!3923212 d!1163547))

(declare-fun d!1163549 () Bool)

(declare-fun lt!1368162 () List!41740)

(assert (=> d!1163549 (= (++!10733 lt!1367966 lt!1368162) lt!1367967)))

(declare-fun e!2426505 () List!41740)

(assert (=> d!1163549 (= lt!1368162 e!2426505)))

(declare-fun c!681830 () Bool)

(assert (=> d!1163549 (= c!681830 ((_ is Cons!41616) lt!1367966))))

(assert (=> d!1163549 (>= (size!31238 lt!1367967) (size!31238 lt!1367966))))

(assert (=> d!1163549 (= (getSuffix!2038 lt!1367967 lt!1367966) lt!1368162)))

(declare-fun b!3923645 () Bool)

(assert (=> b!3923645 (= e!2426505 (getSuffix!2038 (tail!6033 lt!1367967) (t!324779 lt!1367966)))))

(declare-fun b!3923646 () Bool)

(assert (=> b!3923646 (= e!2426505 lt!1367967)))

(assert (= (and d!1163549 c!681830) b!3923645))

(assert (= (and d!1163549 (not c!681830)) b!3923646))

(declare-fun m!4487773 () Bool)

(assert (=> d!1163549 m!4487773))

(assert (=> d!1163549 m!4487211))

(assert (=> d!1163549 m!4487139))

(assert (=> b!3923645 m!4487327))

(assert (=> b!3923645 m!4487327))

(declare-fun m!4487775 () Bool)

(assert (=> b!3923645 m!4487775))

(assert (=> b!3923212 d!1163549))

(declare-fun d!1163551 () Bool)

(assert (=> d!1163551 (= (_2!23575 (v!39233 lt!1367982)) lt!1367960)))

(declare-fun lt!1368163 () Unit!59838)

(assert (=> d!1163551 (= lt!1368163 (choose!23279 lt!1367966 (_2!23575 (v!39233 lt!1367982)) lt!1367966 lt!1367960 lt!1367967))))

(assert (=> d!1163551 (isPrefix!3583 lt!1367966 lt!1367967)))

(assert (=> d!1163551 (= (lemmaSamePrefixThenSameSuffix!1804 lt!1367966 (_2!23575 (v!39233 lt!1367982)) lt!1367966 lt!1367960 lt!1367967) lt!1368163)))

(declare-fun bs!585950 () Bool)

(assert (= bs!585950 d!1163551))

(declare-fun m!4487777 () Bool)

(assert (=> bs!585950 m!4487777))

(assert (=> bs!585950 m!4487333))

(assert (=> b!3923212 d!1163551))

(declare-fun d!1163553 () Bool)

(declare-fun lt!1368166 () BalanceConc!24992)

(assert (=> d!1163553 (= (list!15469 lt!1368166) (originalCharacters!7088 (_1!23575 (v!39233 lt!1367982))))))

(assert (=> d!1163553 (= lt!1368166 (dynLambda!17861 (toChars!8799 (transformation!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982))))) (value!205542 (_1!23575 (v!39233 lt!1367982)))))))

(assert (=> d!1163553 (= (charsOf!4312 (_1!23575 (v!39233 lt!1367982))) lt!1368166)))

(declare-fun b_lambda!114863 () Bool)

(assert (=> (not b_lambda!114863) (not d!1163553)))

(declare-fun tb!234377 () Bool)

(declare-fun t!324843 () Bool)

(assert (=> (and b!3923182 (= (toChars!8799 (transformation!6488 (h!47037 rules!2768))) (toChars!8799 (transformation!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982)))))) t!324843) tb!234377))

(declare-fun b!3923647 () Bool)

(declare-fun e!2426506 () Bool)

(declare-fun tp!1194386 () Bool)

(assert (=> b!3923647 (= e!2426506 (and (inv!55816 (c!681745 (dynLambda!17861 (toChars!8799 (transformation!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982))))) (value!205542 (_1!23575 (v!39233 lt!1367982)))))) tp!1194386))))

(declare-fun result!284016 () Bool)

(assert (=> tb!234377 (= result!284016 (and (inv!55817 (dynLambda!17861 (toChars!8799 (transformation!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982))))) (value!205542 (_1!23575 (v!39233 lt!1367982))))) e!2426506))))

(assert (= tb!234377 b!3923647))

(declare-fun m!4487779 () Bool)

(assert (=> b!3923647 m!4487779))

(declare-fun m!4487781 () Bool)

(assert (=> tb!234377 m!4487781))

(assert (=> d!1163553 t!324843))

(declare-fun b_and!299171 () Bool)

(assert (= b_and!299165 (and (=> t!324843 result!284016) b_and!299171)))

(declare-fun tb!234379 () Bool)

(declare-fun t!324845 () Bool)

(assert (=> (and b!3923204 (= (toChars!8799 (transformation!6488 (rule!9424 (h!47038 suffixTokens!72)))) (toChars!8799 (transformation!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982)))))) t!324845) tb!234379))

(declare-fun result!284018 () Bool)

(assert (= result!284018 result!284016))

(assert (=> d!1163553 t!324845))

(declare-fun b_and!299173 () Bool)

(assert (= b_and!299167 (and (=> t!324845 result!284018) b_and!299173)))

(declare-fun tb!234381 () Bool)

(declare-fun t!324847 () Bool)

(assert (=> (and b!3923214 (= (toChars!8799 (transformation!6488 (rule!9424 (h!47038 prefixTokens!80)))) (toChars!8799 (transformation!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982)))))) t!324847) tb!234381))

(declare-fun result!284020 () Bool)

(assert (= result!284020 result!284016))

(assert (=> d!1163553 t!324847))

(declare-fun b_and!299175 () Bool)

(assert (= b_and!299169 (and (=> t!324847 result!284020) b_and!299175)))

(declare-fun m!4487783 () Bool)

(assert (=> d!1163553 m!4487783))

(declare-fun m!4487785 () Bool)

(assert (=> d!1163553 m!4487785))

(assert (=> b!3923212 d!1163553))

(declare-fun b!3923648 () Bool)

(declare-fun e!2426508 () List!41740)

(assert (=> b!3923648 (= e!2426508 (_2!23575 (v!39233 lt!1367982)))))

(declare-fun e!2426507 () Bool)

(declare-fun b!3923651 () Bool)

(declare-fun lt!1368167 () List!41740)

(assert (=> b!3923651 (= e!2426507 (or (not (= (_2!23575 (v!39233 lt!1367982)) Nil!41616)) (= lt!1368167 lt!1367966)))))

(declare-fun b!3923650 () Bool)

(declare-fun res!1587241 () Bool)

(assert (=> b!3923650 (=> (not res!1587241) (not e!2426507))))

(assert (=> b!3923650 (= res!1587241 (= (size!31238 lt!1368167) (+ (size!31238 lt!1367966) (size!31238 (_2!23575 (v!39233 lt!1367982))))))))

(declare-fun b!3923649 () Bool)

(assert (=> b!3923649 (= e!2426508 (Cons!41616 (h!47036 lt!1367966) (++!10733 (t!324779 lt!1367966) (_2!23575 (v!39233 lt!1367982)))))))

(declare-fun d!1163555 () Bool)

(assert (=> d!1163555 e!2426507))

(declare-fun res!1587242 () Bool)

(assert (=> d!1163555 (=> (not res!1587242) (not e!2426507))))

(assert (=> d!1163555 (= res!1587242 (= (content!6268 lt!1368167) ((_ map or) (content!6268 lt!1367966) (content!6268 (_2!23575 (v!39233 lt!1367982))))))))

(assert (=> d!1163555 (= lt!1368167 e!2426508)))

(declare-fun c!681831 () Bool)

(assert (=> d!1163555 (= c!681831 ((_ is Nil!41616) lt!1367966))))

(assert (=> d!1163555 (= (++!10733 lt!1367966 (_2!23575 (v!39233 lt!1367982))) lt!1368167)))

(assert (= (and d!1163555 c!681831) b!3923648))

(assert (= (and d!1163555 (not c!681831)) b!3923649))

(assert (= (and d!1163555 res!1587242) b!3923650))

(assert (= (and b!3923650 res!1587241) b!3923651))

(declare-fun m!4487787 () Bool)

(assert (=> b!3923650 m!4487787))

(assert (=> b!3923650 m!4487139))

(assert (=> b!3923650 m!4487219))

(declare-fun m!4487789 () Bool)

(assert (=> b!3923649 m!4487789))

(declare-fun m!4487791 () Bool)

(assert (=> d!1163555 m!4487791))

(declare-fun m!4487793 () Bool)

(assert (=> d!1163555 m!4487793))

(declare-fun m!4487795 () Bool)

(assert (=> d!1163555 m!4487795))

(assert (=> b!3923212 d!1163555))

(declare-fun d!1163557 () Bool)

(assert (=> d!1163557 (ruleValid!2436 thiss!20629 (rule!9424 (_1!23575 (v!39233 lt!1367982))))))

(declare-fun lt!1368170 () Unit!59838)

(declare-fun choose!23286 (LexerInterface!6077 Rule!12776 List!41741) Unit!59838)

(assert (=> d!1163557 (= lt!1368170 (choose!23286 thiss!20629 (rule!9424 (_1!23575 (v!39233 lt!1367982))) rules!2768))))

(assert (=> d!1163557 (contains!8355 rules!2768 (rule!9424 (_1!23575 (v!39233 lt!1367982))))))

(assert (=> d!1163557 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1516 thiss!20629 (rule!9424 (_1!23575 (v!39233 lt!1367982))) rules!2768) lt!1368170)))

(declare-fun bs!585951 () Bool)

(assert (= bs!585951 d!1163557))

(assert (=> bs!585951 m!4487135))

(declare-fun m!4487797 () Bool)

(assert (=> bs!585951 m!4487797))

(declare-fun m!4487799 () Bool)

(assert (=> bs!585951 m!4487799))

(assert (=> b!3923212 d!1163557))

(declare-fun d!1163559 () Bool)

(declare-fun res!1587247 () Bool)

(declare-fun e!2426511 () Bool)

(assert (=> d!1163559 (=> (not res!1587247) (not e!2426511))))

(declare-fun validRegex!5190 (Regex!11393) Bool)

(assert (=> d!1163559 (= res!1587247 (validRegex!5190 (regex!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982))))))))

(assert (=> d!1163559 (= (ruleValid!2436 thiss!20629 (rule!9424 (_1!23575 (v!39233 lt!1367982)))) e!2426511)))

(declare-fun b!3923656 () Bool)

(declare-fun res!1587248 () Bool)

(assert (=> b!3923656 (=> (not res!1587248) (not e!2426511))))

(declare-fun nullable!3991 (Regex!11393) Bool)

(assert (=> b!3923656 (= res!1587248 (not (nullable!3991 (regex!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982)))))))))

(declare-fun b!3923657 () Bool)

(assert (=> b!3923657 (= e!2426511 (not (= (tag!7348 (rule!9424 (_1!23575 (v!39233 lt!1367982)))) (String!47309 ""))))))

(assert (= (and d!1163559 res!1587247) b!3923656))

(assert (= (and b!3923656 res!1587248) b!3923657))

(declare-fun m!4487801 () Bool)

(assert (=> d!1163559 m!4487801))

(declare-fun m!4487803 () Bool)

(assert (=> b!3923656 m!4487803))

(assert (=> b!3923212 d!1163559))

(declare-fun d!1163561 () Bool)

(assert (=> d!1163561 (= (size!31237 (_1!23575 (v!39233 lt!1367982))) (size!31238 (originalCharacters!7088 (_1!23575 (v!39233 lt!1367982)))))))

(declare-fun Unit!59848 () Unit!59838)

(assert (=> d!1163561 (= (lemmaCharactersSize!1145 (_1!23575 (v!39233 lt!1367982))) Unit!59848)))

(declare-fun bs!585952 () Bool)

(assert (= bs!585952 d!1163561))

(assert (=> bs!585952 m!4487195))

(assert (=> b!3923212 d!1163561))

(declare-fun d!1163563 () Bool)

(declare-fun list!15471 (Conc!12699) List!41740)

(assert (=> d!1163563 (= (list!15469 (charsOf!4312 (_1!23575 (v!39233 lt!1367982)))) (list!15471 (c!681745 (charsOf!4312 (_1!23575 (v!39233 lt!1367982))))))))

(declare-fun bs!585953 () Bool)

(assert (= bs!585953 d!1163563))

(declare-fun m!4487805 () Bool)

(assert (=> bs!585953 m!4487805))

(assert (=> b!3923212 d!1163563))

(declare-fun d!1163565 () Bool)

(assert (=> d!1163565 (isPrefix!3583 lt!1367966 (++!10733 lt!1367966 (_2!23575 (v!39233 lt!1367982))))))

(declare-fun lt!1368171 () Unit!59838)

(assert (=> d!1163565 (= lt!1368171 (choose!23276 lt!1367966 (_2!23575 (v!39233 lt!1367982))))))

(assert (=> d!1163565 (= (lemmaConcatTwoListThenFirstIsPrefix!2446 lt!1367966 (_2!23575 (v!39233 lt!1367982))) lt!1368171)))

(declare-fun bs!585954 () Bool)

(assert (= bs!585954 d!1163565))

(assert (=> bs!585954 m!4487149))

(assert (=> bs!585954 m!4487149))

(declare-fun m!4487807 () Bool)

(assert (=> bs!585954 m!4487807))

(declare-fun m!4487809 () Bool)

(assert (=> bs!585954 m!4487809))

(assert (=> b!3923212 d!1163565))

(declare-fun d!1163567 () Bool)

(declare-fun dynLambda!17862 (Int BalanceConc!24992) TokenValue!6718)

(assert (=> d!1163567 (= (apply!9727 (transformation!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982)))) (seqFromList!4755 lt!1367966)) (dynLambda!17862 (toValue!8940 (transformation!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982))))) (seqFromList!4755 lt!1367966)))))

(declare-fun b_lambda!114865 () Bool)

(assert (=> (not b_lambda!114865) (not d!1163567)))

(declare-fun t!324849 () Bool)

(declare-fun tb!234383 () Bool)

(assert (=> (and b!3923182 (= (toValue!8940 (transformation!6488 (h!47037 rules!2768))) (toValue!8940 (transformation!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982)))))) t!324849) tb!234383))

(declare-fun result!284022 () Bool)

(assert (=> tb!234383 (= result!284022 (inv!21 (dynLambda!17862 (toValue!8940 (transformation!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982))))) (seqFromList!4755 lt!1367966))))))

(declare-fun m!4487811 () Bool)

(assert (=> tb!234383 m!4487811))

(assert (=> d!1163567 t!324849))

(declare-fun b_and!299177 () Bool)

(assert (= b_and!299111 (and (=> t!324849 result!284022) b_and!299177)))

(declare-fun tb!234385 () Bool)

(declare-fun t!324851 () Bool)

(assert (=> (and b!3923204 (= (toValue!8940 (transformation!6488 (rule!9424 (h!47038 suffixTokens!72)))) (toValue!8940 (transformation!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982)))))) t!324851) tb!234385))

(declare-fun result!284026 () Bool)

(assert (= result!284026 result!284022))

(assert (=> d!1163567 t!324851))

(declare-fun b_and!299179 () Bool)

(assert (= b_and!299115 (and (=> t!324851 result!284026) b_and!299179)))

(declare-fun tb!234387 () Bool)

(declare-fun t!324853 () Bool)

(assert (=> (and b!3923214 (= (toValue!8940 (transformation!6488 (rule!9424 (h!47038 prefixTokens!80)))) (toValue!8940 (transformation!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982)))))) t!324853) tb!234387))

(declare-fun result!284028 () Bool)

(assert (= result!284028 result!284022))

(assert (=> d!1163567 t!324853))

(declare-fun b_and!299181 () Bool)

(assert (= b_and!299119 (and (=> t!324853 result!284028) b_and!299181)))

(assert (=> d!1163567 m!4487141))

(declare-fun m!4487813 () Bool)

(assert (=> d!1163567 m!4487813))

(assert (=> b!3923212 d!1163567))

(declare-fun d!1163569 () Bool)

(declare-fun res!1587251 () Bool)

(declare-fun e!2426517 () Bool)

(assert (=> d!1163569 (=> (not res!1587251) (not e!2426517))))

(declare-fun rulesValid!2525 (LexerInterface!6077 List!41741) Bool)

(assert (=> d!1163569 (= res!1587251 (rulesValid!2525 thiss!20629 rules!2768))))

(assert (=> d!1163569 (= (rulesInvariant!5420 thiss!20629 rules!2768) e!2426517)))

(declare-fun b!3923662 () Bool)

(declare-datatypes ((List!41744 0))(
  ( (Nil!41620) (Cons!41620 (h!47040 String!47308) (t!324879 List!41744)) )
))
(declare-fun noDuplicateTag!2526 (LexerInterface!6077 List!41741 List!41744) Bool)

(assert (=> b!3923662 (= e!2426517 (noDuplicateTag!2526 thiss!20629 rules!2768 Nil!41620))))

(assert (= (and d!1163569 res!1587251) b!3923662))

(declare-fun m!4487815 () Bool)

(assert (=> d!1163569 m!4487815))

(declare-fun m!4487817 () Bool)

(assert (=> b!3923662 m!4487817))

(assert (=> b!3923191 d!1163569))

(declare-fun d!1163571 () Bool)

(assert (=> d!1163571 (= (inv!55809 (tag!7348 (h!47037 rules!2768))) (= (mod (str.len (value!205541 (tag!7348 (h!47037 rules!2768)))) 2) 0))))

(assert (=> b!3923211 d!1163571))

(declare-fun d!1163573 () Bool)

(declare-fun res!1587252 () Bool)

(declare-fun e!2426518 () Bool)

(assert (=> d!1163573 (=> (not res!1587252) (not e!2426518))))

(assert (=> d!1163573 (= res!1587252 (semiInverseModEq!2791 (toChars!8799 (transformation!6488 (h!47037 rules!2768))) (toValue!8940 (transformation!6488 (h!47037 rules!2768)))))))

(assert (=> d!1163573 (= (inv!55812 (transformation!6488 (h!47037 rules!2768))) e!2426518)))

(declare-fun b!3923663 () Bool)

(assert (=> b!3923663 (= e!2426518 (equivClasses!2690 (toChars!8799 (transformation!6488 (h!47037 rules!2768))) (toValue!8940 (transformation!6488 (h!47037 rules!2768)))))))

(assert (= (and d!1163573 res!1587252) b!3923663))

(declare-fun m!4487819 () Bool)

(assert (=> d!1163573 m!4487819))

(declare-fun m!4487821 () Bool)

(assert (=> b!3923663 m!4487821))

(assert (=> b!3923211 d!1163573))

(declare-fun d!1163575 () Bool)

(assert (=> d!1163575 (= (isEmpty!24787 prefix!426) ((_ is Nil!41616) prefix!426))))

(assert (=> b!3923188 d!1163575))

(declare-fun d!1163577 () Bool)

(assert (=> d!1163577 (= (inv!55809 (tag!7348 (rule!9424 (h!47038 suffixTokens!72)))) (= (mod (str.len (value!205541 (tag!7348 (rule!9424 (h!47038 suffixTokens!72))))) 2) 0))))

(assert (=> b!3923209 d!1163577))

(declare-fun d!1163579 () Bool)

(declare-fun res!1587253 () Bool)

(declare-fun e!2426519 () Bool)

(assert (=> d!1163579 (=> (not res!1587253) (not e!2426519))))

(assert (=> d!1163579 (= res!1587253 (semiInverseModEq!2791 (toChars!8799 (transformation!6488 (rule!9424 (h!47038 suffixTokens!72)))) (toValue!8940 (transformation!6488 (rule!9424 (h!47038 suffixTokens!72))))))))

(assert (=> d!1163579 (= (inv!55812 (transformation!6488 (rule!9424 (h!47038 suffixTokens!72)))) e!2426519)))

(declare-fun b!3923664 () Bool)

(assert (=> b!3923664 (= e!2426519 (equivClasses!2690 (toChars!8799 (transformation!6488 (rule!9424 (h!47038 suffixTokens!72)))) (toValue!8940 (transformation!6488 (rule!9424 (h!47038 suffixTokens!72))))))))

(assert (= (and d!1163579 res!1587253) b!3923664))

(declare-fun m!4487823 () Bool)

(assert (=> d!1163579 m!4487823))

(declare-fun m!4487825 () Bool)

(assert (=> b!3923664 m!4487825))

(assert (=> b!3923209 d!1163579))

(declare-fun d!1163581 () Bool)

(assert (=> d!1163581 (= (maxPrefixOneRule!2451 thiss!20629 (rule!9424 (_1!23575 (v!39233 lt!1367982))) lt!1367967) (Some!8907 (tuple2!40883 (Token!12115 (apply!9727 (transformation!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982)))) (seqFromList!4755 lt!1367966)) (rule!9424 (_1!23575 (v!39233 lt!1367982))) (size!31238 lt!1367966) lt!1367966) (_2!23575 (v!39233 lt!1367982)))))))

(declare-fun lt!1368174 () Unit!59838)

(declare-fun choose!23287 (LexerInterface!6077 List!41741 List!41740 List!41740 List!41740 Rule!12776) Unit!59838)

(assert (=> d!1163581 (= lt!1368174 (choose!23287 thiss!20629 rules!2768 lt!1367966 lt!1367967 (_2!23575 (v!39233 lt!1367982)) (rule!9424 (_1!23575 (v!39233 lt!1367982)))))))

(assert (=> d!1163581 (not (isEmpty!24788 rules!2768))))

(assert (=> d!1163581 (= (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1319 thiss!20629 rules!2768 lt!1367966 lt!1367967 (_2!23575 (v!39233 lt!1367982)) (rule!9424 (_1!23575 (v!39233 lt!1367982)))) lt!1368174)))

(declare-fun bs!585955 () Bool)

(assert (= bs!585955 d!1163581))

(assert (=> bs!585955 m!4487235))

(assert (=> bs!585955 m!4487139))

(assert (=> bs!585955 m!4487141))

(assert (=> bs!585955 m!4487207))

(declare-fun m!4487827 () Bool)

(assert (=> bs!585955 m!4487827))

(assert (=> bs!585955 m!4487141))

(assert (=> bs!585955 m!4487143))

(assert (=> b!3923208 d!1163581))

(declare-fun d!1163583 () Bool)

(assert (=> d!1163583 (= (get!13752 lt!1367982) (v!39233 lt!1367982))))

(assert (=> b!3923208 d!1163583))

(declare-fun b!3923683 () Bool)

(declare-fun e!2426530 () Bool)

(declare-fun lt!1368186 () Option!8908)

(assert (=> b!3923683 (= e!2426530 (= (size!31237 (_1!23575 (get!13752 lt!1368186))) (size!31238 (originalCharacters!7088 (_1!23575 (get!13752 lt!1368186))))))))

(declare-fun b!3923684 () Bool)

(declare-fun res!1587269 () Bool)

(assert (=> b!3923684 (=> (not res!1587269) (not e!2426530))))

(assert (=> b!3923684 (= res!1587269 (= (value!205542 (_1!23575 (get!13752 lt!1368186))) (apply!9727 (transformation!6488 (rule!9424 (_1!23575 (get!13752 lt!1368186)))) (seqFromList!4755 (originalCharacters!7088 (_1!23575 (get!13752 lt!1368186)))))))))

(declare-fun b!3923685 () Bool)

(declare-fun e!2426531 () Bool)

(declare-datatypes ((tuple2!40888 0))(
  ( (tuple2!40889 (_1!23578 List!41740) (_2!23578 List!41740)) )
))
(declare-fun findLongestMatchInner!1252 (Regex!11393 List!41740 Int List!41740 List!41740 Int) tuple2!40888)

(assert (=> b!3923685 (= e!2426531 (matchR!5472 (regex!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982)))) (_1!23578 (findLongestMatchInner!1252 (regex!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982)))) Nil!41616 (size!31238 Nil!41616) lt!1367967 lt!1367967 (size!31238 lt!1367967)))))))

(declare-fun b!3923686 () Bool)

(declare-fun res!1587271 () Bool)

(assert (=> b!3923686 (=> (not res!1587271) (not e!2426530))))

(assert (=> b!3923686 (= res!1587271 (= (rule!9424 (_1!23575 (get!13752 lt!1368186))) (rule!9424 (_1!23575 (v!39233 lt!1367982)))))))

(declare-fun b!3923687 () Bool)

(declare-fun e!2426528 () Option!8908)

(assert (=> b!3923687 (= e!2426528 None!8907)))

(declare-fun d!1163585 () Bool)

(declare-fun e!2426529 () Bool)

(assert (=> d!1163585 e!2426529))

(declare-fun res!1587273 () Bool)

(assert (=> d!1163585 (=> res!1587273 e!2426529)))

(assert (=> d!1163585 (= res!1587273 (isEmpty!24790 lt!1368186))))

(assert (=> d!1163585 (= lt!1368186 e!2426528)))

(declare-fun c!681834 () Bool)

(declare-fun lt!1368188 () tuple2!40888)

(assert (=> d!1163585 (= c!681834 (isEmpty!24787 (_1!23578 lt!1368188)))))

(declare-fun findLongestMatch!1165 (Regex!11393 List!41740) tuple2!40888)

(assert (=> d!1163585 (= lt!1368188 (findLongestMatch!1165 (regex!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982)))) lt!1367967))))

(assert (=> d!1163585 (ruleValid!2436 thiss!20629 (rule!9424 (_1!23575 (v!39233 lt!1367982))))))

(assert (=> d!1163585 (= (maxPrefixOneRule!2451 thiss!20629 (rule!9424 (_1!23575 (v!39233 lt!1367982))) lt!1367967) lt!1368186)))

(declare-fun b!3923688 () Bool)

(declare-fun res!1587274 () Bool)

(assert (=> b!3923688 (=> (not res!1587274) (not e!2426530))))

(assert (=> b!3923688 (= res!1587274 (= (++!10733 (list!15469 (charsOf!4312 (_1!23575 (get!13752 lt!1368186)))) (_2!23575 (get!13752 lt!1368186))) lt!1367967))))

(declare-fun b!3923689 () Bool)

(declare-fun size!31242 (BalanceConc!24992) Int)

(assert (=> b!3923689 (= e!2426528 (Some!8907 (tuple2!40883 (Token!12115 (apply!9727 (transformation!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982)))) (seqFromList!4755 (_1!23578 lt!1368188))) (rule!9424 (_1!23575 (v!39233 lt!1367982))) (size!31242 (seqFromList!4755 (_1!23578 lt!1368188))) (_1!23578 lt!1368188)) (_2!23578 lt!1368188))))))

(declare-fun lt!1368187 () Unit!59838)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1225 (Regex!11393 List!41740) Unit!59838)

(assert (=> b!3923689 (= lt!1368187 (longestMatchIsAcceptedByMatchOrIsEmpty!1225 (regex!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982)))) lt!1367967))))

(declare-fun res!1587272 () Bool)

(assert (=> b!3923689 (= res!1587272 (isEmpty!24787 (_1!23578 (findLongestMatchInner!1252 (regex!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982)))) Nil!41616 (size!31238 Nil!41616) lt!1367967 lt!1367967 (size!31238 lt!1367967)))))))

(assert (=> b!3923689 (=> res!1587272 e!2426531)))

(assert (=> b!3923689 e!2426531))

(declare-fun lt!1368189 () Unit!59838)

(assert (=> b!3923689 (= lt!1368189 lt!1368187)))

(declare-fun lt!1368185 () Unit!59838)

(declare-fun lemmaSemiInverse!1758 (TokenValueInjection!12864 BalanceConc!24992) Unit!59838)

(assert (=> b!3923689 (= lt!1368185 (lemmaSemiInverse!1758 (transformation!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982)))) (seqFromList!4755 (_1!23578 lt!1368188))))))

(declare-fun b!3923690 () Bool)

(assert (=> b!3923690 (= e!2426529 e!2426530)))

(declare-fun res!1587268 () Bool)

(assert (=> b!3923690 (=> (not res!1587268) (not e!2426530))))

(assert (=> b!3923690 (= res!1587268 (matchR!5472 (regex!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982)))) (list!15469 (charsOf!4312 (_1!23575 (get!13752 lt!1368186))))))))

(declare-fun b!3923691 () Bool)

(declare-fun res!1587270 () Bool)

(assert (=> b!3923691 (=> (not res!1587270) (not e!2426530))))

(assert (=> b!3923691 (= res!1587270 (< (size!31238 (_2!23575 (get!13752 lt!1368186))) (size!31238 lt!1367967)))))

(assert (= (and d!1163585 c!681834) b!3923687))

(assert (= (and d!1163585 (not c!681834)) b!3923689))

(assert (= (and b!3923689 (not res!1587272)) b!3923685))

(assert (= (and d!1163585 (not res!1587273)) b!3923690))

(assert (= (and b!3923690 res!1587268) b!3923688))

(assert (= (and b!3923688 res!1587274) b!3923691))

(assert (= (and b!3923691 res!1587270) b!3923686))

(assert (= (and b!3923686 res!1587271) b!3923684))

(assert (= (and b!3923684 res!1587269) b!3923683))

(declare-fun m!4487829 () Bool)

(assert (=> b!3923690 m!4487829))

(declare-fun m!4487831 () Bool)

(assert (=> b!3923690 m!4487831))

(assert (=> b!3923690 m!4487831))

(declare-fun m!4487833 () Bool)

(assert (=> b!3923690 m!4487833))

(assert (=> b!3923690 m!4487833))

(declare-fun m!4487835 () Bool)

(assert (=> b!3923690 m!4487835))

(assert (=> b!3923684 m!4487829))

(declare-fun m!4487837 () Bool)

(assert (=> b!3923684 m!4487837))

(assert (=> b!3923684 m!4487837))

(declare-fun m!4487839 () Bool)

(assert (=> b!3923684 m!4487839))

(declare-fun m!4487841 () Bool)

(assert (=> b!3923685 m!4487841))

(assert (=> b!3923685 m!4487211))

(assert (=> b!3923685 m!4487841))

(assert (=> b!3923685 m!4487211))

(declare-fun m!4487843 () Bool)

(assert (=> b!3923685 m!4487843))

(declare-fun m!4487845 () Bool)

(assert (=> b!3923685 m!4487845))

(declare-fun m!4487847 () Bool)

(assert (=> b!3923689 m!4487847))

(declare-fun m!4487849 () Bool)

(assert (=> b!3923689 m!4487849))

(declare-fun m!4487851 () Bool)

(assert (=> b!3923689 m!4487851))

(assert (=> b!3923689 m!4487847))

(declare-fun m!4487853 () Bool)

(assert (=> b!3923689 m!4487853))

(assert (=> b!3923689 m!4487847))

(declare-fun m!4487855 () Bool)

(assert (=> b!3923689 m!4487855))

(assert (=> b!3923689 m!4487841))

(assert (=> b!3923689 m!4487211))

(assert (=> b!3923689 m!4487843))

(declare-fun m!4487857 () Bool)

(assert (=> b!3923689 m!4487857))

(assert (=> b!3923689 m!4487847))

(assert (=> b!3923689 m!4487841))

(assert (=> b!3923689 m!4487211))

(assert (=> b!3923691 m!4487829))

(declare-fun m!4487859 () Bool)

(assert (=> b!3923691 m!4487859))

(assert (=> b!3923691 m!4487211))

(declare-fun m!4487861 () Bool)

(assert (=> d!1163585 m!4487861))

(declare-fun m!4487863 () Bool)

(assert (=> d!1163585 m!4487863))

(declare-fun m!4487865 () Bool)

(assert (=> d!1163585 m!4487865))

(assert (=> d!1163585 m!4487135))

(assert (=> b!3923686 m!4487829))

(assert (=> b!3923688 m!4487829))

(assert (=> b!3923688 m!4487831))

(assert (=> b!3923688 m!4487831))

(assert (=> b!3923688 m!4487833))

(assert (=> b!3923688 m!4487833))

(declare-fun m!4487867 () Bool)

(assert (=> b!3923688 m!4487867))

(assert (=> b!3923683 m!4487829))

(declare-fun m!4487869 () Bool)

(assert (=> b!3923683 m!4487869))

(assert (=> b!3923208 d!1163585))

(declare-fun d!1163587 () Bool)

(declare-fun lt!1368190 () Int)

(assert (=> d!1163587 (>= lt!1368190 0)))

(declare-fun e!2426532 () Int)

(assert (=> d!1163587 (= lt!1368190 e!2426532)))

(declare-fun c!681835 () Bool)

(assert (=> d!1163587 (= c!681835 ((_ is Nil!41616) lt!1367967))))

(assert (=> d!1163587 (= (size!31238 lt!1367967) lt!1368190)))

(declare-fun b!3923692 () Bool)

(assert (=> b!3923692 (= e!2426532 0)))

(declare-fun b!3923693 () Bool)

(assert (=> b!3923693 (= e!2426532 (+ 1 (size!31238 (t!324779 lt!1367967))))))

(assert (= (and d!1163587 c!681835) b!3923692))

(assert (= (and d!1163587 (not c!681835)) b!3923693))

(declare-fun m!4487871 () Bool)

(assert (=> b!3923693 m!4487871))

(assert (=> b!3923208 d!1163587))

(declare-fun d!1163589 () Bool)

(declare-fun lt!1368191 () Int)

(assert (=> d!1163589 (>= lt!1368191 0)))

(declare-fun e!2426533 () Int)

(assert (=> d!1163589 (= lt!1368191 e!2426533)))

(declare-fun c!681836 () Bool)

(assert (=> d!1163589 (= c!681836 ((_ is Nil!41616) (_2!23575 lt!1367957)))))

(assert (=> d!1163589 (= (size!31238 (_2!23575 lt!1367957)) lt!1368191)))

(declare-fun b!3923694 () Bool)

(assert (=> b!3923694 (= e!2426533 0)))

(declare-fun b!3923695 () Bool)

(assert (=> b!3923695 (= e!2426533 (+ 1 (size!31238 (t!324779 (_2!23575 lt!1367957)))))))

(assert (= (and d!1163589 c!681836) b!3923694))

(assert (= (and d!1163589 (not c!681836)) b!3923695))

(declare-fun m!4487873 () Bool)

(assert (=> b!3923695 m!4487873))

(assert (=> b!3923208 d!1163589))

(declare-fun b!3923696 () Bool)

(declare-fun e!2426534 () tuple2!40884)

(declare-fun lt!1368192 () Option!8908)

(declare-fun lt!1368194 () tuple2!40884)

(assert (=> b!3923696 (= e!2426534 (tuple2!40885 (Cons!41618 (_1!23575 (v!39233 lt!1368192)) (_1!23576 lt!1368194)) (_2!23576 lt!1368194)))))

(assert (=> b!3923696 (= lt!1368194 (lexList!1845 thiss!20629 rules!2768 (_2!23575 (v!39233 lt!1368192))))))

(declare-fun b!3923697 () Bool)

(assert (=> b!3923697 (= e!2426534 (tuple2!40885 Nil!41618 (_2!23575 lt!1367957)))))

(declare-fun b!3923698 () Bool)

(declare-fun e!2426535 () Bool)

(declare-fun lt!1368193 () tuple2!40884)

(assert (=> b!3923698 (= e!2426535 (not (isEmpty!24786 (_1!23576 lt!1368193))))))

(declare-fun b!3923699 () Bool)

(declare-fun e!2426536 () Bool)

(assert (=> b!3923699 (= e!2426536 e!2426535)))

(declare-fun res!1587275 () Bool)

(assert (=> b!3923699 (= res!1587275 (< (size!31238 (_2!23576 lt!1368193)) (size!31238 (_2!23575 lt!1367957))))))

(assert (=> b!3923699 (=> (not res!1587275) (not e!2426535))))

(declare-fun d!1163591 () Bool)

(assert (=> d!1163591 e!2426536))

(declare-fun c!681837 () Bool)

(assert (=> d!1163591 (= c!681837 (> (size!31240 (_1!23576 lt!1368193)) 0))))

(assert (=> d!1163591 (= lt!1368193 e!2426534)))

(declare-fun c!681838 () Bool)

(assert (=> d!1163591 (= c!681838 ((_ is Some!8907) lt!1368192))))

(assert (=> d!1163591 (= lt!1368192 (maxPrefix!3381 thiss!20629 rules!2768 (_2!23575 lt!1367957)))))

(assert (=> d!1163591 (= (lexList!1845 thiss!20629 rules!2768 (_2!23575 lt!1367957)) lt!1368193)))

(declare-fun b!3923700 () Bool)

(assert (=> b!3923700 (= e!2426536 (= (_2!23576 lt!1368193) (_2!23575 lt!1367957)))))

(assert (= (and d!1163591 c!681838) b!3923696))

(assert (= (and d!1163591 (not c!681838)) b!3923697))

(assert (= (and d!1163591 c!681837) b!3923699))

(assert (= (and d!1163591 (not c!681837)) b!3923700))

(assert (= (and b!3923699 res!1587275) b!3923698))

(declare-fun m!4487875 () Bool)

(assert (=> b!3923696 m!4487875))

(declare-fun m!4487877 () Bool)

(assert (=> b!3923698 m!4487877))

(declare-fun m!4487879 () Bool)

(assert (=> b!3923699 m!4487879))

(assert (=> b!3923699 m!4487215))

(declare-fun m!4487881 () Bool)

(assert (=> d!1163591 m!4487881))

(declare-fun m!4487883 () Bool)

(assert (=> d!1163591 m!4487883))

(assert (=> bm!284657 d!1163591))

(declare-fun d!1163593 () Bool)

(assert (=> d!1163593 (= (isEmpty!24786 lt!1367979) ((_ is Nil!41618) lt!1367979))))

(assert (=> b!3923185 d!1163593))

(declare-fun d!1163595 () Bool)

(assert (=> d!1163595 (= (tail!6031 prefixTokens!80) (t!324781 prefixTokens!80))))

(assert (=> b!3923185 d!1163595))

(declare-fun b!3923701 () Bool)

(declare-fun e!2426538 () Bool)

(declare-fun e!2426539 () Bool)

(assert (=> b!3923701 (= e!2426538 e!2426539)))

(declare-fun res!1587276 () Bool)

(assert (=> b!3923701 (=> (not res!1587276) (not e!2426539))))

(assert (=> b!3923701 (= res!1587276 (not ((_ is Nil!41616) prefix!426)))))

(declare-fun b!3923702 () Bool)

(declare-fun res!1587278 () Bool)

(assert (=> b!3923702 (=> (not res!1587278) (not e!2426539))))

(assert (=> b!3923702 (= res!1587278 (= (head!8307 lt!1367966) (head!8307 prefix!426)))))

(declare-fun d!1163597 () Bool)

(declare-fun e!2426537 () Bool)

(assert (=> d!1163597 e!2426537))

(declare-fun res!1587277 () Bool)

(assert (=> d!1163597 (=> res!1587277 e!2426537)))

(declare-fun lt!1368195 () Bool)

(assert (=> d!1163597 (= res!1587277 (not lt!1368195))))

(assert (=> d!1163597 (= lt!1368195 e!2426538)))

(declare-fun res!1587279 () Bool)

(assert (=> d!1163597 (=> res!1587279 e!2426538)))

(assert (=> d!1163597 (= res!1587279 ((_ is Nil!41616) lt!1367966))))

(assert (=> d!1163597 (= (isPrefix!3583 lt!1367966 prefix!426) lt!1368195)))

(declare-fun b!3923703 () Bool)

(assert (=> b!3923703 (= e!2426539 (isPrefix!3583 (tail!6033 lt!1367966) (tail!6033 prefix!426)))))

(declare-fun b!3923704 () Bool)

(assert (=> b!3923704 (= e!2426537 (>= (size!31238 prefix!426) (size!31238 lt!1367966)))))

(assert (= (and d!1163597 (not res!1587279)) b!3923701))

(assert (= (and b!3923701 res!1587276) b!3923702))

(assert (= (and b!3923702 res!1587278) b!3923703))

(assert (= (and d!1163597 (not res!1587277)) b!3923704))

(assert (=> b!3923702 m!4487749))

(assert (=> b!3923702 m!4487321))

(assert (=> b!3923703 m!4487753))

(assert (=> b!3923703 m!4487325))

(assert (=> b!3923703 m!4487753))

(assert (=> b!3923703 m!4487325))

(declare-fun m!4487885 () Bool)

(assert (=> b!3923703 m!4487885))

(assert (=> b!3923704 m!4487171))

(assert (=> b!3923704 m!4487139))

(assert (=> b!3923205 d!1163597))

(assert (=> b!3923205 d!1163393))

(assert (=> b!3923205 d!1163389))

(declare-fun d!1163599 () Bool)

(assert (=> d!1163599 (isPrefix!3583 lt!1367966 prefix!426)))

(declare-fun lt!1368198 () Unit!59838)

(declare-fun choose!23288 (List!41740 List!41740 List!41740) Unit!59838)

(assert (=> d!1163599 (= lt!1368198 (choose!23288 prefix!426 lt!1367966 lt!1367967))))

(assert (=> d!1163599 (isPrefix!3583 prefix!426 lt!1367967)))

(assert (=> d!1163599 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!261 prefix!426 lt!1367966 lt!1367967) lt!1368198)))

(declare-fun bs!585956 () Bool)

(assert (= bs!585956 d!1163599))

(assert (=> bs!585956 m!4487175))

(declare-fun m!4487887 () Bool)

(assert (=> bs!585956 m!4487887))

(assert (=> bs!585956 m!4487177))

(assert (=> b!3923205 d!1163599))

(declare-fun d!1163601 () Bool)

(declare-fun lt!1368199 () Int)

(assert (=> d!1163601 (>= lt!1368199 0)))

(declare-fun e!2426540 () Int)

(assert (=> d!1163601 (= lt!1368199 e!2426540)))

(declare-fun c!681839 () Bool)

(assert (=> d!1163601 (= c!681839 ((_ is Nil!41616) prefix!426))))

(assert (=> d!1163601 (= (size!31238 prefix!426) lt!1368199)))

(declare-fun b!3923705 () Bool)

(assert (=> b!3923705 (= e!2426540 0)))

(declare-fun b!3923706 () Bool)

(assert (=> b!3923706 (= e!2426540 (+ 1 (size!31238 (t!324779 prefix!426))))))

(assert (= (and d!1163601 c!681839) b!3923705))

(assert (= (and d!1163601 (not c!681839)) b!3923706))

(declare-fun m!4487889 () Bool)

(assert (=> b!3923706 m!4487889))

(assert (=> b!3923205 d!1163601))

(declare-fun d!1163603 () Bool)

(assert (=> d!1163603 (= (isEmpty!24786 prefixTokens!80) ((_ is Nil!41618) prefixTokens!80))))

(assert (=> b!3923206 d!1163603))

(declare-fun b!3923707 () Bool)

(declare-fun e!2426541 () List!41742)

(assert (=> b!3923707 (= e!2426541 (_1!23576 lt!1367973))))

(declare-fun b!3923710 () Bool)

(declare-fun lt!1368200 () List!41742)

(declare-fun e!2426542 () Bool)

(assert (=> b!3923710 (= e!2426542 (or (not (= (_1!23576 lt!1367973) Nil!41618)) (= lt!1368200 (Cons!41618 (_1!23575 (v!39233 lt!1367982)) Nil!41618))))))

(declare-fun b!3923709 () Bool)

(declare-fun res!1587281 () Bool)

(assert (=> b!3923709 (=> (not res!1587281) (not e!2426542))))

(assert (=> b!3923709 (= res!1587281 (= (size!31240 lt!1368200) (+ (size!31240 (Cons!41618 (_1!23575 (v!39233 lt!1367982)) Nil!41618)) (size!31240 (_1!23576 lt!1367973)))))))

(declare-fun d!1163605 () Bool)

(assert (=> d!1163605 e!2426542))

(declare-fun res!1587280 () Bool)

(assert (=> d!1163605 (=> (not res!1587280) (not e!2426542))))

(assert (=> d!1163605 (= res!1587280 (= (content!6267 lt!1368200) ((_ map or) (content!6267 (Cons!41618 (_1!23575 (v!39233 lt!1367982)) Nil!41618)) (content!6267 (_1!23576 lt!1367973)))))))

(assert (=> d!1163605 (= lt!1368200 e!2426541)))

(declare-fun c!681840 () Bool)

(assert (=> d!1163605 (= c!681840 ((_ is Nil!41618) (Cons!41618 (_1!23575 (v!39233 lt!1367982)) Nil!41618)))))

(assert (=> d!1163605 (= (++!10734 (Cons!41618 (_1!23575 (v!39233 lt!1367982)) Nil!41618) (_1!23576 lt!1367973)) lt!1368200)))

(declare-fun b!3923708 () Bool)

(assert (=> b!3923708 (= e!2426541 (Cons!41618 (h!47038 (Cons!41618 (_1!23575 (v!39233 lt!1367982)) Nil!41618)) (++!10734 (t!324781 (Cons!41618 (_1!23575 (v!39233 lt!1367982)) Nil!41618)) (_1!23576 lt!1367973))))))

(assert (= (and d!1163605 c!681840) b!3923707))

(assert (= (and d!1163605 (not c!681840)) b!3923708))

(assert (= (and d!1163605 res!1587280) b!3923709))

(assert (= (and b!3923709 res!1587281) b!3923710))

(declare-fun m!4487891 () Bool)

(assert (=> b!3923709 m!4487891))

(declare-fun m!4487893 () Bool)

(assert (=> b!3923709 m!4487893))

(declare-fun m!4487895 () Bool)

(assert (=> b!3923709 m!4487895))

(declare-fun m!4487897 () Bool)

(assert (=> d!1163605 m!4487897))

(declare-fun m!4487899 () Bool)

(assert (=> d!1163605 m!4487899))

(declare-fun m!4487901 () Bool)

(assert (=> d!1163605 m!4487901))

(declare-fun m!4487903 () Bool)

(assert (=> b!3923708 m!4487903))

(assert (=> b!3923184 d!1163605))

(declare-fun d!1163607 () Bool)

(assert (=> d!1163607 (= (head!8305 prefixTokens!80) (h!47038 prefixTokens!80))))

(assert (=> b!3923183 d!1163607))

(declare-fun b!3923711 () Bool)

(declare-fun e!2426544 () List!41740)

(assert (=> b!3923711 (= e!2426544 (getSuffix!2038 prefix!426 lt!1367966))))

(declare-fun b!3923714 () Bool)

(declare-fun lt!1368201 () List!41740)

(declare-fun e!2426543 () Bool)

(assert (=> b!3923714 (= e!2426543 (or (not (= (getSuffix!2038 prefix!426 lt!1367966) Nil!41616)) (= lt!1368201 lt!1367966)))))

(declare-fun b!3923713 () Bool)

(declare-fun res!1587282 () Bool)

(assert (=> b!3923713 (=> (not res!1587282) (not e!2426543))))

(assert (=> b!3923713 (= res!1587282 (= (size!31238 lt!1368201) (+ (size!31238 lt!1367966) (size!31238 (getSuffix!2038 prefix!426 lt!1367966)))))))

(declare-fun b!3923712 () Bool)

(assert (=> b!3923712 (= e!2426544 (Cons!41616 (h!47036 lt!1367966) (++!10733 (t!324779 lt!1367966) (getSuffix!2038 prefix!426 lt!1367966))))))

(declare-fun d!1163609 () Bool)

(assert (=> d!1163609 e!2426543))

(declare-fun res!1587283 () Bool)

(assert (=> d!1163609 (=> (not res!1587283) (not e!2426543))))

(assert (=> d!1163609 (= res!1587283 (= (content!6268 lt!1368201) ((_ map or) (content!6268 lt!1367966) (content!6268 (getSuffix!2038 prefix!426 lt!1367966)))))))

(assert (=> d!1163609 (= lt!1368201 e!2426544)))

(declare-fun c!681841 () Bool)

(assert (=> d!1163609 (= c!681841 ((_ is Nil!41616) lt!1367966))))

(assert (=> d!1163609 (= (++!10733 lt!1367966 (getSuffix!2038 prefix!426 lt!1367966)) lt!1368201)))

(assert (= (and d!1163609 c!681841) b!3923711))

(assert (= (and d!1163609 (not c!681841)) b!3923712))

(assert (= (and d!1163609 res!1587283) b!3923713))

(assert (= (and b!3923713 res!1587282) b!3923714))

(declare-fun m!4487905 () Bool)

(assert (=> b!3923713 m!4487905))

(assert (=> b!3923713 m!4487139))

(assert (=> b!3923713 m!4487203))

(declare-fun m!4487907 () Bool)

(assert (=> b!3923713 m!4487907))

(assert (=> b!3923712 m!4487203))

(declare-fun m!4487909 () Bool)

(assert (=> b!3923712 m!4487909))

(declare-fun m!4487911 () Bool)

(assert (=> d!1163609 m!4487911))

(assert (=> d!1163609 m!4487793))

(assert (=> d!1163609 m!4487203))

(declare-fun m!4487913 () Bool)

(assert (=> d!1163609 m!4487913))

(assert (=> b!3923181 d!1163609))

(declare-fun d!1163611 () Bool)

(declare-fun lt!1368202 () List!41740)

(assert (=> d!1163611 (= (++!10733 lt!1367966 lt!1368202) prefix!426)))

(declare-fun e!2426545 () List!41740)

(assert (=> d!1163611 (= lt!1368202 e!2426545)))

(declare-fun c!681842 () Bool)

(assert (=> d!1163611 (= c!681842 ((_ is Cons!41616) lt!1367966))))

(assert (=> d!1163611 (>= (size!31238 prefix!426) (size!31238 lt!1367966))))

(assert (=> d!1163611 (= (getSuffix!2038 prefix!426 lt!1367966) lt!1368202)))

(declare-fun b!3923715 () Bool)

(assert (=> b!3923715 (= e!2426545 (getSuffix!2038 (tail!6033 prefix!426) (t!324779 lt!1367966)))))

(declare-fun b!3923716 () Bool)

(assert (=> b!3923716 (= e!2426545 prefix!426)))

(assert (= (and d!1163611 c!681842) b!3923715))

(assert (= (and d!1163611 (not c!681842)) b!3923716))

(declare-fun m!4487915 () Bool)

(assert (=> d!1163611 m!4487915))

(assert (=> d!1163611 m!4487171))

(assert (=> d!1163611 m!4487139))

(assert (=> b!3923715 m!4487325))

(assert (=> b!3923715 m!4487325))

(declare-fun m!4487917 () Bool)

(assert (=> b!3923715 m!4487917))

(assert (=> b!3923181 d!1163611))

(declare-fun d!1163613 () Bool)

(declare-fun lt!1368203 () Int)

(assert (=> d!1163613 (>= lt!1368203 0)))

(declare-fun e!2426546 () Int)

(assert (=> d!1163613 (= lt!1368203 e!2426546)))

(declare-fun c!681843 () Bool)

(assert (=> d!1163613 (= c!681843 ((_ is Nil!41616) (originalCharacters!7088 (_1!23575 (v!39233 lt!1367982)))))))

(assert (=> d!1163613 (= (size!31238 (originalCharacters!7088 (_1!23575 (v!39233 lt!1367982)))) lt!1368203)))

(declare-fun b!3923717 () Bool)

(assert (=> b!3923717 (= e!2426546 0)))

(declare-fun b!3923718 () Bool)

(assert (=> b!3923718 (= e!2426546 (+ 1 (size!31238 (t!324779 (originalCharacters!7088 (_1!23575 (v!39233 lt!1367982)))))))))

(assert (= (and d!1163613 c!681843) b!3923717))

(assert (= (and d!1163613 (not c!681843)) b!3923718))

(declare-fun m!4487919 () Bool)

(assert (=> b!3923718 m!4487919))

(assert (=> b!3923202 d!1163613))

(declare-fun b!3923723 () Bool)

(declare-fun e!2426549 () Bool)

(declare-fun tp!1194389 () Bool)

(assert (=> b!3923723 (= e!2426549 (and tp_is_empty!19757 tp!1194389))))

(assert (=> b!3923200 (= tp!1194312 e!2426549)))

(assert (= (and b!3923200 ((_ is Cons!41616) (originalCharacters!7088 (h!47038 prefixTokens!80)))) b!3923723))

(declare-fun b!3923736 () Bool)

(declare-fun e!2426552 () Bool)

(declare-fun tp!1194401 () Bool)

(assert (=> b!3923736 (= e!2426552 tp!1194401)))

(declare-fun b!3923734 () Bool)

(assert (=> b!3923734 (= e!2426552 tp_is_empty!19757)))

(declare-fun b!3923737 () Bool)

(declare-fun tp!1194404 () Bool)

(declare-fun tp!1194403 () Bool)

(assert (=> b!3923737 (= e!2426552 (and tp!1194404 tp!1194403))))

(assert (=> b!3923211 (= tp!1194304 e!2426552)))

(declare-fun b!3923735 () Bool)

(declare-fun tp!1194402 () Bool)

(declare-fun tp!1194400 () Bool)

(assert (=> b!3923735 (= e!2426552 (and tp!1194402 tp!1194400))))

(assert (= (and b!3923211 ((_ is ElementMatch!11393) (regex!6488 (h!47037 rules!2768)))) b!3923734))

(assert (= (and b!3923211 ((_ is Concat!18112) (regex!6488 (h!47037 rules!2768)))) b!3923735))

(assert (= (and b!3923211 ((_ is Star!11393) (regex!6488 (h!47037 rules!2768)))) b!3923736))

(assert (= (and b!3923211 ((_ is Union!11393) (regex!6488 (h!47037 rules!2768)))) b!3923737))

(declare-fun b!3923740 () Bool)

(declare-fun e!2426553 () Bool)

(declare-fun tp!1194406 () Bool)

(assert (=> b!3923740 (= e!2426553 tp!1194406)))

(declare-fun b!3923738 () Bool)

(assert (=> b!3923738 (= e!2426553 tp_is_empty!19757)))

(declare-fun b!3923741 () Bool)

(declare-fun tp!1194409 () Bool)

(declare-fun tp!1194408 () Bool)

(assert (=> b!3923741 (= e!2426553 (and tp!1194409 tp!1194408))))

(assert (=> b!3923209 (= tp!1194297 e!2426553)))

(declare-fun b!3923739 () Bool)

(declare-fun tp!1194407 () Bool)

(declare-fun tp!1194405 () Bool)

(assert (=> b!3923739 (= e!2426553 (and tp!1194407 tp!1194405))))

(assert (= (and b!3923209 ((_ is ElementMatch!11393) (regex!6488 (rule!9424 (h!47038 suffixTokens!72))))) b!3923738))

(assert (= (and b!3923209 ((_ is Concat!18112) (regex!6488 (rule!9424 (h!47038 suffixTokens!72))))) b!3923739))

(assert (= (and b!3923209 ((_ is Star!11393) (regex!6488 (rule!9424 (h!47038 suffixTokens!72))))) b!3923740))

(assert (= (and b!3923209 ((_ is Union!11393) (regex!6488 (rule!9424 (h!47038 suffixTokens!72))))) b!3923741))

(declare-fun b!3923755 () Bool)

(declare-fun b_free!106829 () Bool)

(declare-fun b_next!107533 () Bool)

(assert (=> b!3923755 (= b_free!106829 (not b_next!107533))))

(declare-fun tb!234389 () Bool)

(declare-fun t!324856 () Bool)

(assert (=> (and b!3923755 (= (toValue!8940 (transformation!6488 (rule!9424 (h!47038 (t!324781 prefixTokens!80))))) (toValue!8940 (transformation!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982)))))) t!324856) tb!234389))

(declare-fun result!284036 () Bool)

(assert (= result!284036 result!284022))

(assert (=> d!1163567 t!324856))

(declare-fun tp!1194423 () Bool)

(declare-fun b_and!299183 () Bool)

(assert (=> b!3923755 (= tp!1194423 (and (=> t!324856 result!284036) b_and!299183))))

(declare-fun b_free!106831 () Bool)

(declare-fun b_next!107535 () Bool)

(assert (=> b!3923755 (= b_free!106831 (not b_next!107535))))

(declare-fun t!324858 () Bool)

(declare-fun tb!234391 () Bool)

(assert (=> (and b!3923755 (= (toChars!8799 (transformation!6488 (rule!9424 (h!47038 (t!324781 prefixTokens!80))))) (toChars!8799 (transformation!6488 (rule!9424 (h!47038 prefixTokens!80))))) t!324858) tb!234391))

(declare-fun result!284038 () Bool)

(assert (= result!284038 result!284002))

(assert (=> b!3923583 t!324858))

(declare-fun tb!234393 () Bool)

(declare-fun t!324860 () Bool)

(assert (=> (and b!3923755 (= (toChars!8799 (transformation!6488 (rule!9424 (h!47038 (t!324781 prefixTokens!80))))) (toChars!8799 (transformation!6488 (rule!9424 (h!47038 suffixTokens!72))))) t!324860) tb!234393))

(declare-fun result!284040 () Bool)

(assert (= result!284040 result!284010))

(assert (=> b!3923627 t!324860))

(declare-fun tb!234395 () Bool)

(declare-fun t!324862 () Bool)

(assert (=> (and b!3923755 (= (toChars!8799 (transformation!6488 (rule!9424 (h!47038 (t!324781 prefixTokens!80))))) (toChars!8799 (transformation!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982)))))) t!324862) tb!234395))

(declare-fun result!284042 () Bool)

(assert (= result!284042 result!284016))

(assert (=> d!1163553 t!324862))

(declare-fun tp!1194421 () Bool)

(declare-fun b_and!299185 () Bool)

(assert (=> b!3923755 (= tp!1194421 (and (=> t!324858 result!284038) (=> t!324860 result!284040) (=> t!324862 result!284042) b_and!299185))))

(declare-fun e!2426571 () Bool)

(declare-fun b!3923754 () Bool)

(declare-fun tp!1194424 () Bool)

(declare-fun e!2426570 () Bool)

(assert (=> b!3923754 (= e!2426570 (and tp!1194424 (inv!55809 (tag!7348 (rule!9424 (h!47038 (t!324781 prefixTokens!80))))) (inv!55812 (transformation!6488 (rule!9424 (h!47038 (t!324781 prefixTokens!80))))) e!2426571))))

(declare-fun e!2426569 () Bool)

(assert (=> b!3923196 (= tp!1194306 e!2426569)))

(declare-fun b!3923753 () Bool)

(declare-fun e!2426568 () Bool)

(declare-fun tp!1194420 () Bool)

(assert (=> b!3923753 (= e!2426568 (and (inv!21 (value!205542 (h!47038 (t!324781 prefixTokens!80)))) e!2426570 tp!1194420))))

(assert (=> b!3923755 (= e!2426571 (and tp!1194423 tp!1194421))))

(declare-fun b!3923752 () Bool)

(declare-fun tp!1194422 () Bool)

(assert (=> b!3923752 (= e!2426569 (and (inv!55813 (h!47038 (t!324781 prefixTokens!80))) e!2426568 tp!1194422))))

(assert (= b!3923754 b!3923755))

(assert (= b!3923753 b!3923754))

(assert (= b!3923752 b!3923753))

(assert (= (and b!3923196 ((_ is Cons!41618) (t!324781 prefixTokens!80))) b!3923752))

(declare-fun m!4487921 () Bool)

(assert (=> b!3923754 m!4487921))

(declare-fun m!4487923 () Bool)

(assert (=> b!3923754 m!4487923))

(declare-fun m!4487925 () Bool)

(assert (=> b!3923753 m!4487925))

(declare-fun m!4487927 () Bool)

(assert (=> b!3923752 m!4487927))

(declare-fun b!3923766 () Bool)

(declare-fun b_free!106833 () Bool)

(declare-fun b_next!107537 () Bool)

(assert (=> b!3923766 (= b_free!106833 (not b_next!107537))))

(declare-fun tb!234397 () Bool)

(declare-fun t!324864 () Bool)

(assert (=> (and b!3923766 (= (toValue!8940 (transformation!6488 (h!47037 (t!324780 rules!2768)))) (toValue!8940 (transformation!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982)))))) t!324864) tb!234397))

(declare-fun result!284046 () Bool)

(assert (= result!284046 result!284022))

(assert (=> d!1163567 t!324864))

(declare-fun b_and!299187 () Bool)

(declare-fun tp!1194433 () Bool)

(assert (=> b!3923766 (= tp!1194433 (and (=> t!324864 result!284046) b_and!299187))))

(declare-fun b_free!106835 () Bool)

(declare-fun b_next!107539 () Bool)

(assert (=> b!3923766 (= b_free!106835 (not b_next!107539))))

(declare-fun t!324866 () Bool)

(declare-fun tb!234399 () Bool)

(assert (=> (and b!3923766 (= (toChars!8799 (transformation!6488 (h!47037 (t!324780 rules!2768)))) (toChars!8799 (transformation!6488 (rule!9424 (h!47038 prefixTokens!80))))) t!324866) tb!234399))

(declare-fun result!284048 () Bool)

(assert (= result!284048 result!284002))

(assert (=> b!3923583 t!324866))

(declare-fun t!324868 () Bool)

(declare-fun tb!234401 () Bool)

(assert (=> (and b!3923766 (= (toChars!8799 (transformation!6488 (h!47037 (t!324780 rules!2768)))) (toChars!8799 (transformation!6488 (rule!9424 (h!47038 suffixTokens!72))))) t!324868) tb!234401))

(declare-fun result!284050 () Bool)

(assert (= result!284050 result!284010))

(assert (=> b!3923627 t!324868))

(declare-fun tb!234403 () Bool)

(declare-fun t!324870 () Bool)

(assert (=> (and b!3923766 (= (toChars!8799 (transformation!6488 (h!47037 (t!324780 rules!2768)))) (toChars!8799 (transformation!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982)))))) t!324870) tb!234403))

(declare-fun result!284052 () Bool)

(assert (= result!284052 result!284016))

(assert (=> d!1163553 t!324870))

(declare-fun tp!1194434 () Bool)

(declare-fun b_and!299189 () Bool)

(assert (=> b!3923766 (= tp!1194434 (and (=> t!324866 result!284048) (=> t!324868 result!284050) (=> t!324870 result!284052) b_and!299189))))

(declare-fun e!2426582 () Bool)

(assert (=> b!3923766 (= e!2426582 (and tp!1194433 tp!1194434))))

(declare-fun b!3923765 () Bool)

(declare-fun tp!1194435 () Bool)

(declare-fun e!2426580 () Bool)

(assert (=> b!3923765 (= e!2426580 (and tp!1194435 (inv!55809 (tag!7348 (h!47037 (t!324780 rules!2768)))) (inv!55812 (transformation!6488 (h!47037 (t!324780 rules!2768)))) e!2426582))))

(declare-fun b!3923764 () Bool)

(declare-fun e!2426583 () Bool)

(declare-fun tp!1194436 () Bool)

(assert (=> b!3923764 (= e!2426583 (and e!2426580 tp!1194436))))

(assert (=> b!3923207 (= tp!1194296 e!2426583)))

(assert (= b!3923765 b!3923766))

(assert (= b!3923764 b!3923765))

(assert (= (and b!3923207 ((_ is Cons!41617) (t!324780 rules!2768))) b!3923764))

(declare-fun m!4487929 () Bool)

(assert (=> b!3923765 m!4487929))

(declare-fun m!4487931 () Bool)

(assert (=> b!3923765 m!4487931))

(declare-fun b!3923769 () Bool)

(declare-fun e!2426584 () Bool)

(declare-fun tp!1194438 () Bool)

(assert (=> b!3923769 (= e!2426584 tp!1194438)))

(declare-fun b!3923767 () Bool)

(assert (=> b!3923767 (= e!2426584 tp_is_empty!19757)))

(declare-fun b!3923770 () Bool)

(declare-fun tp!1194441 () Bool)

(declare-fun tp!1194440 () Bool)

(assert (=> b!3923770 (= e!2426584 (and tp!1194441 tp!1194440))))

(assert (=> b!3923193 (= tp!1194302 e!2426584)))

(declare-fun b!3923768 () Bool)

(declare-fun tp!1194439 () Bool)

(declare-fun tp!1194437 () Bool)

(assert (=> b!3923768 (= e!2426584 (and tp!1194439 tp!1194437))))

(assert (= (and b!3923193 ((_ is ElementMatch!11393) (regex!6488 (rule!9424 (h!47038 prefixTokens!80))))) b!3923767))

(assert (= (and b!3923193 ((_ is Concat!18112) (regex!6488 (rule!9424 (h!47038 prefixTokens!80))))) b!3923768))

(assert (= (and b!3923193 ((_ is Star!11393) (regex!6488 (rule!9424 (h!47038 prefixTokens!80))))) b!3923769))

(assert (= (and b!3923193 ((_ is Union!11393) (regex!6488 (rule!9424 (h!47038 prefixTokens!80))))) b!3923770))

(declare-fun b!3923771 () Bool)

(declare-fun e!2426585 () Bool)

(declare-fun tp!1194442 () Bool)

(assert (=> b!3923771 (= e!2426585 (and tp_is_empty!19757 tp!1194442))))

(assert (=> b!3923194 (= tp!1194308 e!2426585)))

(assert (= (and b!3923194 ((_ is Cons!41616) (t!324779 suffixResult!91))) b!3923771))

(declare-fun b!3923772 () Bool)

(declare-fun e!2426586 () Bool)

(declare-fun tp!1194443 () Bool)

(assert (=> b!3923772 (= e!2426586 (and tp_is_empty!19757 tp!1194443))))

(assert (=> b!3923192 (= tp!1194300 e!2426586)))

(assert (= (and b!3923192 ((_ is Cons!41616) (originalCharacters!7088 (h!47038 suffixTokens!72)))) b!3923772))

(declare-fun b!3923776 () Bool)

(declare-fun b_free!106837 () Bool)

(declare-fun b_next!107541 () Bool)

(assert (=> b!3923776 (= b_free!106837 (not b_next!107541))))

(declare-fun t!324872 () Bool)

(declare-fun tb!234405 () Bool)

(assert (=> (and b!3923776 (= (toValue!8940 (transformation!6488 (rule!9424 (h!47038 (t!324781 suffixTokens!72))))) (toValue!8940 (transformation!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982)))))) t!324872) tb!234405))

(declare-fun result!284054 () Bool)

(assert (= result!284054 result!284022))

(assert (=> d!1163567 t!324872))

(declare-fun tp!1194447 () Bool)

(declare-fun b_and!299191 () Bool)

(assert (=> b!3923776 (= tp!1194447 (and (=> t!324872 result!284054) b_and!299191))))

(declare-fun b_free!106839 () Bool)

(declare-fun b_next!107543 () Bool)

(assert (=> b!3923776 (= b_free!106839 (not b_next!107543))))

(declare-fun tb!234407 () Bool)

(declare-fun t!324874 () Bool)

(assert (=> (and b!3923776 (= (toChars!8799 (transformation!6488 (rule!9424 (h!47038 (t!324781 suffixTokens!72))))) (toChars!8799 (transformation!6488 (rule!9424 (h!47038 prefixTokens!80))))) t!324874) tb!234407))

(declare-fun result!284056 () Bool)

(assert (= result!284056 result!284002))

(assert (=> b!3923583 t!324874))

(declare-fun t!324876 () Bool)

(declare-fun tb!234409 () Bool)

(assert (=> (and b!3923776 (= (toChars!8799 (transformation!6488 (rule!9424 (h!47038 (t!324781 suffixTokens!72))))) (toChars!8799 (transformation!6488 (rule!9424 (h!47038 suffixTokens!72))))) t!324876) tb!234409))

(declare-fun result!284058 () Bool)

(assert (= result!284058 result!284010))

(assert (=> b!3923627 t!324876))

(declare-fun tb!234411 () Bool)

(declare-fun t!324878 () Bool)

(assert (=> (and b!3923776 (= (toChars!8799 (transformation!6488 (rule!9424 (h!47038 (t!324781 suffixTokens!72))))) (toChars!8799 (transformation!6488 (rule!9424 (_1!23575 (v!39233 lt!1367982)))))) t!324878) tb!234411))

(declare-fun result!284060 () Bool)

(assert (= result!284060 result!284016))

(assert (=> d!1163553 t!324878))

(declare-fun tp!1194445 () Bool)

(declare-fun b_and!299193 () Bool)

(assert (=> b!3923776 (= tp!1194445 (and (=> t!324874 result!284056) (=> t!324876 result!284058) (=> t!324878 result!284060) b_and!299193))))

(declare-fun e!2426591 () Bool)

(declare-fun e!2426592 () Bool)

(declare-fun b!3923775 () Bool)

(declare-fun tp!1194448 () Bool)

(assert (=> b!3923775 (= e!2426591 (and tp!1194448 (inv!55809 (tag!7348 (rule!9424 (h!47038 (t!324781 suffixTokens!72))))) (inv!55812 (transformation!6488 (rule!9424 (h!47038 (t!324781 suffixTokens!72))))) e!2426592))))

(declare-fun e!2426590 () Bool)

(assert (=> b!3923213 (= tp!1194310 e!2426590)))

(declare-fun b!3923774 () Bool)

(declare-fun tp!1194444 () Bool)

(declare-fun e!2426589 () Bool)

(assert (=> b!3923774 (= e!2426589 (and (inv!21 (value!205542 (h!47038 (t!324781 suffixTokens!72)))) e!2426591 tp!1194444))))

(assert (=> b!3923776 (= e!2426592 (and tp!1194447 tp!1194445))))

(declare-fun tp!1194446 () Bool)

(declare-fun b!3923773 () Bool)

(assert (=> b!3923773 (= e!2426590 (and (inv!55813 (h!47038 (t!324781 suffixTokens!72))) e!2426589 tp!1194446))))

(assert (= b!3923775 b!3923776))

(assert (= b!3923774 b!3923775))

(assert (= b!3923773 b!3923774))

(assert (= (and b!3923213 ((_ is Cons!41618) (t!324781 suffixTokens!72))) b!3923773))

(declare-fun m!4487933 () Bool)

(assert (=> b!3923775 m!4487933))

(declare-fun m!4487935 () Bool)

(assert (=> b!3923775 m!4487935))

(declare-fun m!4487937 () Bool)

(assert (=> b!3923774 m!4487937))

(declare-fun m!4487939 () Bool)

(assert (=> b!3923773 m!4487939))

(declare-fun b!3923777 () Bool)

(declare-fun e!2426593 () Bool)

(declare-fun tp!1194449 () Bool)

(assert (=> b!3923777 (= e!2426593 (and tp_is_empty!19757 tp!1194449))))

(assert (=> b!3923203 (= tp!1194303 e!2426593)))

(assert (= (and b!3923203 ((_ is Cons!41616) (t!324779 suffix!1176))) b!3923777))

(declare-fun b!3923778 () Bool)

(declare-fun e!2426594 () Bool)

(declare-fun tp!1194450 () Bool)

(assert (=> b!3923778 (= e!2426594 (and tp_is_empty!19757 tp!1194450))))

(assert (=> b!3923201 (= tp!1194307 e!2426594)))

(assert (= (and b!3923201 ((_ is Cons!41616) (t!324779 prefix!426))) b!3923778))

(declare-fun b_lambda!114867 () Bool)

(assert (= b_lambda!114861 (or (and b!3923204 b_free!106811) (and b!3923214 b_free!106815 (= (toChars!8799 (transformation!6488 (rule!9424 (h!47038 prefixTokens!80)))) (toChars!8799 (transformation!6488 (rule!9424 (h!47038 suffixTokens!72)))))) (and b!3923766 b_free!106835 (= (toChars!8799 (transformation!6488 (h!47037 (t!324780 rules!2768)))) (toChars!8799 (transformation!6488 (rule!9424 (h!47038 suffixTokens!72)))))) (and b!3923182 b_free!106807 (= (toChars!8799 (transformation!6488 (h!47037 rules!2768))) (toChars!8799 (transformation!6488 (rule!9424 (h!47038 suffixTokens!72)))))) (and b!3923776 b_free!106839 (= (toChars!8799 (transformation!6488 (rule!9424 (h!47038 (t!324781 suffixTokens!72))))) (toChars!8799 (transformation!6488 (rule!9424 (h!47038 suffixTokens!72)))))) (and b!3923755 b_free!106831 (= (toChars!8799 (transformation!6488 (rule!9424 (h!47038 (t!324781 prefixTokens!80))))) (toChars!8799 (transformation!6488 (rule!9424 (h!47038 suffixTokens!72)))))) b_lambda!114867)))

(declare-fun b_lambda!114869 () Bool)

(assert (= b_lambda!114859 (or (and b!3923214 b_free!106815) (and b!3923766 b_free!106835 (= (toChars!8799 (transformation!6488 (h!47037 (t!324780 rules!2768)))) (toChars!8799 (transformation!6488 (rule!9424 (h!47038 prefixTokens!80)))))) (and b!3923776 b_free!106839 (= (toChars!8799 (transformation!6488 (rule!9424 (h!47038 (t!324781 suffixTokens!72))))) (toChars!8799 (transformation!6488 (rule!9424 (h!47038 prefixTokens!80)))))) (and b!3923204 b_free!106811 (= (toChars!8799 (transformation!6488 (rule!9424 (h!47038 suffixTokens!72)))) (toChars!8799 (transformation!6488 (rule!9424 (h!47038 prefixTokens!80)))))) (and b!3923182 b_free!106807 (= (toChars!8799 (transformation!6488 (h!47037 rules!2768))) (toChars!8799 (transformation!6488 (rule!9424 (h!47038 prefixTokens!80)))))) (and b!3923755 b_free!106831 (= (toChars!8799 (transformation!6488 (rule!9424 (h!47038 (t!324781 prefixTokens!80))))) (toChars!8799 (transformation!6488 (rule!9424 (h!47038 prefixTokens!80)))))) b_lambda!114869)))

(check-sat (not b!3923754) (not b!3923616) (not b_next!107519) (not b!3923460) (not b!3923421) (not b_next!107517) (not b!3923303) b_and!299187 (not d!1163559) (not b_next!107539) (not b!3923420) (not b!3923736) (not tb!234383) (not b!3923626) (not tb!234377) (not d!1163551) (not d!1163563) b_and!299171 (not b!3923304) (not b_next!107537) (not d!1163407) (not b_lambda!114867) (not b!3923775) (not d!1163579) (not b!3923752) (not b!3923498) (not b!3923617) (not b!3923769) (not b!3923604) (not d!1163569) (not b!3923419) (not b!3923583) (not d!1163585) (not b_next!107533) (not b!3923636) (not d!1163541) (not b!3923768) (not b!3923627) (not b_lambda!114863) (not tb!234365) (not b!3923753) (not b!3923688) (not b!3923632) (not d!1163561) (not b!3923703) (not b!3923771) (not b!3923737) (not b_lambda!114869) (not b!3923633) (not b!3923629) (not b!3923778) (not b!3923777) (not d!1163521) (not b!3923689) (not d!1163465) (not b!3923686) b_and!299183 (not b_lambda!114865) (not b!3923258) (not b!3923255) (not b!3923702) (not d!1163573) (not b!3923601) (not d!1163531) (not b!3923691) (not b!3923764) (not b!3923417) (not b!3923704) (not d!1163605) (not d!1163581) tp_is_empty!19757 (not b!3923656) (not bm!284663) (not d!1163611) (not b!3923683) (not b!3923706) (not d!1163599) (not b!3923774) (not b_next!107509) (not b!3923416) (not tb!234371) (not b!3923645) b_and!299173 b_and!299189 (not b!3923650) (not b!3923413) (not b!3923418) (not b!3923625) (not b!3923715) (not d!1163565) (not b_next!107515) (not b!3923684) (not d!1163389) (not b_next!107511) (not b!3923584) (not d!1163489) (not d!1163545) (not b!3923598) (not d!1163535) (not b!3923695) (not d!1163553) (not d!1163483) (not b!3923640) (not b!3923693) (not d!1163403) (not b!3923631) (not b!3923647) (not b!3923739) (not b!3923415) (not b!3923637) (not d!1163591) (not b!3923621) (not b!3923723) (not b!3923699) (not b!3923741) (not b!3923663) (not b!3923595) (not b!3923459) (not b!3923698) (not b_next!107535) (not b!3923623) (not b!3923499) (not b!3923708) (not d!1163527) (not d!1163549) (not b!3923685) (not d!1163405) (not d!1163529) (not b!3923712) (not b!3923770) b_and!299185 (not b!3923662) b_and!299191 (not b!3923589) (not b_next!107543) (not b!3923605) (not d!1163503) (not b!3923772) (not d!1163485) b_and!299175 (not b!3923457) (not b!3923718) b_and!299177 (not b!3923709) (not b!3923597) (not b!3923305) (not b!3923634) (not b!3923735) (not b!3923628) (not b!3923257) (not b!3923765) (not d!1163539) b_and!299179 (not b!3923773) (not b!3923649) (not b!3923713) b_and!299181 b_and!299193 (not b!3923690) (not b_next!107541) (not b!3923600) (not d!1163555) (not b!3923740) (not d!1163609) (not b!3923696) (not d!1163557) (not b_next!107513) (not b!3923664))
(check-sat (not b_next!107533) b_and!299183 (not b_next!107509) (not b_next!107515) (not b_next!107511) (not b_next!107535) b_and!299175 b_and!299177 (not b_next!107541) (not b_next!107513) (not b_next!107519) (not b_next!107517) b_and!299187 (not b_next!107539) (not b_next!107537) b_and!299171 b_and!299173 b_and!299189 b_and!299185 b_and!299191 (not b_next!107543) b_and!299179 b_and!299181 b_and!299193)
