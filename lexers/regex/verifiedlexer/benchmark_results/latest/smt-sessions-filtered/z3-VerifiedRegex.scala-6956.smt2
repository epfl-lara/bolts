; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!368084 () Bool)

(assert start!368084)

(declare-fun b!3925232 () Bool)

(declare-fun b_free!106973 () Bool)

(declare-fun b_next!107677 () Bool)

(assert (=> b!3925232 (= b_free!106973 (not b_next!107677))))

(declare-fun tp!1195062 () Bool)

(declare-fun b_and!299327 () Bool)

(assert (=> b!3925232 (= tp!1195062 b_and!299327)))

(declare-fun b_free!106975 () Bool)

(declare-fun b_next!107679 () Bool)

(assert (=> b!3925232 (= b_free!106975 (not b_next!107679))))

(declare-fun tp!1195058 () Bool)

(declare-fun b_and!299329 () Bool)

(assert (=> b!3925232 (= tp!1195058 b_and!299329)))

(declare-fun b!3925215 () Bool)

(declare-fun b_free!106977 () Bool)

(declare-fun b_next!107681 () Bool)

(assert (=> b!3925215 (= b_free!106977 (not b_next!107681))))

(declare-fun tp!1195048 () Bool)

(declare-fun b_and!299331 () Bool)

(assert (=> b!3925215 (= tp!1195048 b_and!299331)))

(declare-fun b_free!106979 () Bool)

(declare-fun b_next!107683 () Bool)

(assert (=> b!3925215 (= b_free!106979 (not b_next!107683))))

(declare-fun tp!1195060 () Bool)

(declare-fun b_and!299333 () Bool)

(assert (=> b!3925215 (= tp!1195060 b_and!299333)))

(declare-fun b!3925231 () Bool)

(declare-fun b_free!106981 () Bool)

(declare-fun b_next!107685 () Bool)

(assert (=> b!3925231 (= b_free!106981 (not b_next!107685))))

(declare-fun tp!1195055 () Bool)

(declare-fun b_and!299335 () Bool)

(assert (=> b!3925231 (= tp!1195055 b_and!299335)))

(declare-fun b_free!106983 () Bool)

(declare-fun b_next!107687 () Bool)

(assert (=> b!3925231 (= b_free!106983 (not b_next!107687))))

(declare-fun tp!1195047 () Bool)

(declare-fun b_and!299337 () Bool)

(assert (=> b!3925231 (= tp!1195047 b_and!299337)))

(declare-fun b!3925202 () Bool)

(declare-fun res!1587952 () Bool)

(declare-fun e!2427817 () Bool)

(assert (=> b!3925202 (=> (not res!1587952) (not e!2427817))))

(declare-datatypes ((C!22996 0))(
  ( (C!22997 (val!13592 Int)) )
))
(declare-datatypes ((List!41789 0))(
  ( (Nil!41665) (Cons!41665 (h!47085 C!22996) (t!324924 List!41789)) )
))
(declare-datatypes ((IArray!25427 0))(
  ( (IArray!25428 (innerList!12771 List!41789)) )
))
(declare-datatypes ((Conc!12711 0))(
  ( (Node!12711 (left!31811 Conc!12711) (right!32141 Conc!12711) (csize!25652 Int) (cheight!12922 Int)) (Leaf!19668 (xs!16017 IArray!25427) (csize!25653 Int)) (Empty!12711) )
))
(declare-datatypes ((BalanceConc!25016 0))(
  ( (BalanceConc!25017 (c!682022 Conc!12711)) )
))
(declare-datatypes ((List!41790 0))(
  ( (Nil!41666) (Cons!41666 (h!47086 (_ BitVec 16)) (t!324925 List!41790)) )
))
(declare-datatypes ((TokenValue!6730 0))(
  ( (FloatLiteralValue!13460 (text!47555 List!41790)) (TokenValueExt!6729 (__x!25677 Int)) (Broken!33650 (value!205858 List!41790)) (Object!6853) (End!6730) (Def!6730) (Underscore!6730) (Match!6730) (Else!6730) (Error!6730) (Case!6730) (If!6730) (Extends!6730) (Abstract!6730) (Class!6730) (Val!6730) (DelimiterValue!13460 (del!6790 List!41790)) (KeywordValue!6736 (value!205859 List!41790)) (CommentValue!13460 (value!205860 List!41790)) (WhitespaceValue!13460 (value!205861 List!41790)) (IndentationValue!6730 (value!205862 List!41790)) (String!47367) (Int32!6730) (Broken!33651 (value!205863 List!41790)) (Boolean!6731) (Unit!59959) (OperatorValue!6733 (op!6790 List!41790)) (IdentifierValue!13460 (value!205864 List!41790)) (IdentifierValue!13461 (value!205865 List!41790)) (WhitespaceValue!13461 (value!205866 List!41790)) (True!13460) (False!13460) (Broken!33652 (value!205867 List!41790)) (Broken!33653 (value!205868 List!41790)) (True!13461) (RightBrace!6730) (RightBracket!6730) (Colon!6730) (Null!6730) (Comma!6730) (LeftBracket!6730) (False!13461) (LeftBrace!6730) (ImaginaryLiteralValue!6730 (text!47556 List!41790)) (StringLiteralValue!20190 (value!205869 List!41790)) (EOFValue!6730 (value!205870 List!41790)) (IdentValue!6730 (value!205871 List!41790)) (DelimiterValue!13461 (value!205872 List!41790)) (DedentValue!6730 (value!205873 List!41790)) (NewLineValue!6730 (value!205874 List!41790)) (IntegerValue!20190 (value!205875 (_ BitVec 32)) (text!47557 List!41790)) (IntegerValue!20191 (value!205876 Int) (text!47558 List!41790)) (Times!6730) (Or!6730) (Equal!6730) (Minus!6730) (Broken!33654 (value!205877 List!41790)) (And!6730) (Div!6730) (LessEqual!6730) (Mod!6730) (Concat!18135) (Not!6730) (Plus!6730) (SpaceValue!6730 (value!205878 List!41790)) (IntegerValue!20192 (value!205879 Int) (text!47559 List!41790)) (StringLiteralValue!20191 (text!47560 List!41790)) (FloatLiteralValue!13461 (text!47561 List!41790)) (BytesLiteralValue!6730 (value!205880 List!41790)) (CommentValue!13461 (value!205881 List!41790)) (StringLiteralValue!20192 (value!205882 List!41790)) (ErrorTokenValue!6730 (msg!6791 List!41790)) )
))
(declare-datatypes ((Regex!11405 0))(
  ( (ElementMatch!11405 (c!682023 C!22996)) (Concat!18136 (regOne!23322 Regex!11405) (regTwo!23322 Regex!11405)) (EmptyExpr!11405) (Star!11405 (reg!11734 Regex!11405)) (EmptyLang!11405) (Union!11405 (regOne!23323 Regex!11405) (regTwo!23323 Regex!11405)) )
))
(declare-datatypes ((String!47368 0))(
  ( (String!47369 (value!205883 String)) )
))
(declare-datatypes ((TokenValueInjection!12888 0))(
  ( (TokenValueInjection!12889 (toValue!8952 Int) (toChars!8811 Int)) )
))
(declare-datatypes ((Rule!12800 0))(
  ( (Rule!12801 (regex!6500 Regex!11405) (tag!7360 String!47368) (isSeparator!6500 Bool) (transformation!6500 TokenValueInjection!12888)) )
))
(declare-datatypes ((List!41791 0))(
  ( (Nil!41667) (Cons!41667 (h!47087 Rule!12800) (t!324926 List!41791)) )
))
(declare-fun rules!2768 () List!41791)

(declare-fun isEmpty!24824 (List!41791) Bool)

(assert (=> b!3925202 (= res!1587952 (not (isEmpty!24824 rules!2768)))))

(declare-fun b!3925203 () Bool)

(declare-datatypes ((Unit!59960 0))(
  ( (Unit!59961) )
))
(declare-fun e!2427822 () Unit!59960)

(declare-fun Unit!59962 () Unit!59960)

(assert (=> b!3925203 (= e!2427822 Unit!59962)))

(declare-fun lt!1369466 () List!41789)

(declare-datatypes ((Token!12138 0))(
  ( (Token!12139 (value!205884 TokenValue!6730) (rule!9438 Rule!12800) (size!31265 Int) (originalCharacters!7100 List!41789)) )
))
(declare-datatypes ((tuple2!40934 0))(
  ( (tuple2!40935 (_1!23601 Token!12138) (_2!23601 List!41789)) )
))
(declare-datatypes ((Option!8920 0))(
  ( (None!8919) (Some!8919 (v!39245 tuple2!40934)) )
))
(declare-fun lt!1369451 () Option!8920)

(declare-fun lt!1369478 () Unit!59960)

(declare-fun lt!1369448 () tuple2!40934)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!548 (List!41789 List!41789 List!41789 List!41789) Unit!59960)

(assert (=> b!3925203 (= lt!1369478 (lemmaConcatSameAndSameSizesThenSameLists!548 lt!1369466 (_2!23601 (v!39245 lt!1369451)) lt!1369466 (_2!23601 lt!1369448)))))

(assert (=> b!3925203 (= (_2!23601 (v!39245 lt!1369451)) (_2!23601 lt!1369448))))

(declare-fun lt!1369462 () Unit!59960)

(declare-fun suffixResult!91 () List!41789)

(declare-datatypes ((LexerInterface!6089 0))(
  ( (LexerInterfaceExt!6086 (__x!25678 Int)) (Lexer!6087) )
))
(declare-fun thiss!20629 () LexerInterface!6089)

(declare-fun suffix!1176 () List!41789)

(declare-datatypes ((List!41792 0))(
  ( (Nil!41668) (Cons!41668 (h!47088 Token!12138) (t!324927 List!41792)) )
))
(declare-fun suffixTokens!72 () List!41792)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!100 (LexerInterface!6089 List!41791 List!41789 List!41789 List!41792 List!41789) Unit!59960)

(assert (=> b!3925203 (= lt!1369462 (lemmaLexWithSmallerInputCannotProduceSameResults!100 thiss!20629 rules!2768 suffix!1176 (_2!23601 lt!1369448) suffixTokens!72 suffixResult!91))))

(declare-fun res!1587943 () Bool)

(declare-datatypes ((tuple2!40936 0))(
  ( (tuple2!40937 (_1!23602 List!41792) (_2!23602 List!41789)) )
))
(declare-fun call!284704 () tuple2!40936)

(declare-fun lt!1369481 () tuple2!40936)

(assert (=> b!3925203 (= res!1587943 (not (= call!284704 lt!1369481)))))

(declare-fun e!2427828 () Bool)

(assert (=> b!3925203 (=> (not res!1587943) (not e!2427828))))

(assert (=> b!3925203 e!2427828))

(declare-fun b!3925204 () Bool)

(declare-fun res!1587944 () Bool)

(declare-fun e!2427842 () Bool)

(assert (=> b!3925204 (=> res!1587944 e!2427842)))

(declare-fun lt!1369445 () tuple2!40936)

(declare-fun lt!1369469 () tuple2!40936)

(declare-fun ++!10757 (List!41792 List!41792) List!41792)

(assert (=> b!3925204 (= res!1587944 (not (= lt!1369469 (tuple2!40937 (++!10757 (Cons!41668 (_1!23601 (v!39245 lt!1369451)) Nil!41668) (_1!23602 lt!1369445)) (_2!23602 lt!1369445)))))))

(declare-fun b!3925205 () Bool)

(declare-fun e!2427840 () Unit!59960)

(declare-fun Unit!59963 () Unit!59960)

(assert (=> b!3925205 (= e!2427840 Unit!59963)))

(declare-fun lt!1369470 () Unit!59960)

(declare-fun prefix!426 () List!41789)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2458 (List!41789 List!41789) Unit!59960)

(assert (=> b!3925205 (= lt!1369470 (lemmaConcatTwoListThenFirstIsPrefix!2458 prefix!426 suffix!1176))))

(declare-fun lt!1369473 () List!41789)

(declare-fun isPrefix!3595 (List!41789 List!41789) Bool)

(assert (=> b!3925205 (isPrefix!3595 prefix!426 lt!1369473)))

(declare-fun lt!1369453 () Unit!59960)

(declare-fun lemmaIsPrefixSameLengthThenSameList!791 (List!41789 List!41789 List!41789) Unit!59960)

(assert (=> b!3925205 (= lt!1369453 (lemmaIsPrefixSameLengthThenSameList!791 lt!1369466 prefix!426 lt!1369473))))

(assert (=> b!3925205 (= lt!1369466 prefix!426)))

(declare-fun lt!1369447 () Unit!59960)

(declare-fun lemmaSamePrefixThenSameSuffix!1816 (List!41789 List!41789 List!41789 List!41789 List!41789) Unit!59960)

(assert (=> b!3925205 (= lt!1369447 (lemmaSamePrefixThenSameSuffix!1816 lt!1369466 (_2!23601 (v!39245 lt!1369451)) prefix!426 suffix!1176 lt!1369473))))

(assert (=> b!3925205 false))

(declare-fun e!2427824 () Bool)

(declare-fun tp!1195061 () Bool)

(declare-fun b!3925206 () Bool)

(declare-fun e!2427841 () Bool)

(declare-fun inv!55855 (String!47368) Bool)

(declare-fun inv!55858 (TokenValueInjection!12888) Bool)

(assert (=> b!3925206 (= e!2427841 (and tp!1195061 (inv!55855 (tag!7360 (rule!9438 (h!47088 suffixTokens!72)))) (inv!55858 (transformation!6500 (rule!9438 (h!47088 suffixTokens!72)))) e!2427824))))

(declare-fun b!3925207 () Bool)

(declare-fun e!2427821 () Bool)

(declare-fun e!2427827 () Bool)

(assert (=> b!3925207 (= e!2427821 e!2427827)))

(declare-fun res!1587955 () Bool)

(assert (=> b!3925207 (=> res!1587955 e!2427827)))

(declare-fun lt!1369465 () List!41789)

(assert (=> b!3925207 (= res!1587955 (not (= lt!1369465 prefix!426)))))

(declare-fun lt!1369459 () List!41789)

(declare-fun ++!10758 (List!41789 List!41789) List!41789)

(assert (=> b!3925207 (= lt!1369465 (++!10758 lt!1369466 lt!1369459))))

(declare-fun getSuffix!2050 (List!41789 List!41789) List!41789)

(assert (=> b!3925207 (= lt!1369459 (getSuffix!2050 prefix!426 lt!1369466))))

(declare-fun b!3925208 () Bool)

(declare-fun res!1587953 () Bool)

(assert (=> b!3925208 (=> res!1587953 e!2427842)))

(assert (=> b!3925208 (= res!1587953 (or (not (= lt!1369445 (tuple2!40937 (_1!23602 lt!1369445) (_2!23602 lt!1369445)))) (= (_2!23601 (v!39245 lt!1369451)) suffix!1176)))))

(declare-fun b!3925209 () Bool)

(assert (=> b!3925209 (= e!2427828 false)))

(declare-fun e!2427837 () Bool)

(declare-fun e!2427831 () Bool)

(declare-fun b!3925210 () Bool)

(declare-fun tp!1195046 () Bool)

(declare-fun inv!55859 (Token!12138) Bool)

(assert (=> b!3925210 (= e!2427831 (and (inv!55859 (h!47088 suffixTokens!72)) e!2427837 tp!1195046))))

(declare-fun b!3925211 () Bool)

(declare-fun c!682021 () Bool)

(declare-fun lt!1369449 () List!41792)

(declare-fun isEmpty!24825 (List!41792) Bool)

(assert (=> b!3925211 (= c!682021 (isEmpty!24825 lt!1369449))))

(declare-fun prefixTokens!80 () List!41792)

(declare-fun tail!6045 (List!41792) List!41792)

(assert (=> b!3925211 (= lt!1369449 (tail!6045 prefixTokens!80))))

(declare-fun e!2427834 () Unit!59960)

(assert (=> b!3925211 (= e!2427834 e!2427822)))

(declare-fun b!3925212 () Bool)

(declare-fun Unit!59964 () Unit!59960)

(assert (=> b!3925212 (= e!2427834 Unit!59964)))

(declare-fun tp!1195054 () Bool)

(declare-fun b!3925213 () Bool)

(declare-fun e!2427814 () Bool)

(declare-fun e!2427815 () Bool)

(declare-fun inv!21 (TokenValue!6730) Bool)

(assert (=> b!3925213 (= e!2427814 (and (inv!21 (value!205884 (h!47088 prefixTokens!80))) e!2427815 tp!1195054))))

(declare-fun b!3925214 () Bool)

(declare-fun e!2427830 () Unit!59960)

(declare-fun Unit!59965 () Unit!59960)

(assert (=> b!3925214 (= e!2427830 Unit!59965)))

(declare-fun lt!1369476 () Int)

(declare-fun size!31266 (List!41789) Int)

(assert (=> b!3925214 (= lt!1369476 (size!31266 lt!1369473))))

(declare-fun lt!1369463 () Unit!59960)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1331 (LexerInterface!6089 List!41791 List!41789 List!41789 List!41789 Rule!12800) Unit!59960)

(assert (=> b!3925214 (= lt!1369463 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1331 thiss!20629 rules!2768 lt!1369466 lt!1369473 (_2!23601 (v!39245 lt!1369451)) (rule!9438 (_1!23601 (v!39245 lt!1369451)))))))

(declare-fun lt!1369455 () Int)

(declare-fun lt!1369452 () TokenValue!6730)

(declare-fun maxPrefixOneRule!2463 (LexerInterface!6089 Rule!12800 List!41789) Option!8920)

(assert (=> b!3925214 (= (maxPrefixOneRule!2463 thiss!20629 (rule!9438 (_1!23601 (v!39245 lt!1369451))) lt!1369473) (Some!8919 (tuple2!40935 (Token!12139 lt!1369452 (rule!9438 (_1!23601 (v!39245 lt!1369451))) lt!1369455 lt!1369466) (_2!23601 (v!39245 lt!1369451)))))))

(declare-fun get!13770 (Option!8920) tuple2!40934)

(assert (=> b!3925214 (= lt!1369448 (get!13770 lt!1369451))))

(declare-fun c!682018 () Bool)

(declare-fun lt!1369475 () Int)

(assert (=> b!3925214 (= c!682018 (< (size!31266 (_2!23601 lt!1369448)) lt!1369475))))

(declare-fun lt!1369467 () Unit!59960)

(assert (=> b!3925214 (= lt!1369467 e!2427834)))

(assert (=> b!3925214 false))

(declare-fun e!2427832 () Bool)

(assert (=> b!3925215 (= e!2427832 (and tp!1195048 tp!1195060))))

(declare-fun b!3925216 () Bool)

(declare-fun res!1587948 () Bool)

(assert (=> b!3925216 (=> (not res!1587948) (not e!2427817))))

(declare-fun rulesInvariant!5432 (LexerInterface!6089 List!41791) Bool)

(assert (=> b!3925216 (= res!1587948 (rulesInvariant!5432 thiss!20629 rules!2768))))

(declare-fun b!3925217 () Bool)

(declare-fun e!2427825 () Bool)

(declare-fun e!2427829 () Bool)

(assert (=> b!3925217 (= e!2427825 e!2427829)))

(declare-fun res!1587940 () Bool)

(assert (=> b!3925217 (=> (not res!1587940) (not e!2427829))))

(get-info :version)

(assert (=> b!3925217 (= res!1587940 ((_ is Some!8919) lt!1369451))))

(declare-fun maxPrefix!3393 (LexerInterface!6089 List!41791 List!41789) Option!8920)

(assert (=> b!3925217 (= lt!1369451 (maxPrefix!3393 thiss!20629 rules!2768 lt!1369473))))

(declare-fun b!3925218 () Bool)

(declare-fun tp!1195057 () Bool)

(assert (=> b!3925218 (= e!2427837 (and (inv!21 (value!205884 (h!47088 suffixTokens!72))) e!2427841 tp!1195057))))

(declare-fun b!3925220 () Bool)

(declare-fun e!2427836 () Bool)

(declare-fun tp!1195059 () Bool)

(assert (=> b!3925220 (= e!2427836 (and tp!1195059 (inv!55855 (tag!7360 (h!47087 rules!2768))) (inv!55858 (transformation!6500 (h!47087 rules!2768))) e!2427832))))

(declare-fun b!3925221 () Bool)

(declare-fun Unit!59966 () Unit!59960)

(assert (=> b!3925221 (= e!2427822 Unit!59966)))

(declare-fun lt!1369472 () Unit!59960)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!100 (LexerInterface!6089 List!41791 List!41789 List!41789 List!41792 List!41789 List!41792) Unit!59960)

(assert (=> b!3925221 (= lt!1369472 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!100 thiss!20629 rules!2768 suffix!1176 (_2!23601 lt!1369448) suffixTokens!72 suffixResult!91 lt!1369449))))

(declare-fun res!1587946 () Bool)

(assert (=> b!3925221 (= res!1587946 (not (= call!284704 (tuple2!40937 (++!10757 lt!1369449 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2427809 () Bool)

(assert (=> b!3925221 (=> (not res!1587946) (not e!2427809))))

(assert (=> b!3925221 e!2427809))

(declare-fun b!3925222 () Bool)

(declare-fun Unit!59967 () Unit!59960)

(assert (=> b!3925222 (= e!2427830 Unit!59967)))

(declare-fun b!3925223 () Bool)

(declare-fun res!1587949 () Bool)

(assert (=> b!3925223 (=> (not res!1587949) (not e!2427817))))

(declare-fun isEmpty!24826 (List!41789) Bool)

(assert (=> b!3925223 (= res!1587949 (not (isEmpty!24826 prefix!426)))))

(declare-fun b!3925224 () Bool)

(declare-fun res!1587947 () Bool)

(declare-fun e!2427818 () Bool)

(assert (=> b!3925224 (=> res!1587947 e!2427818)))

(declare-fun head!8319 (List!41792) Token!12138)

(assert (=> b!3925224 (= res!1587947 (not (= (head!8319 prefixTokens!80) (_1!23601 (v!39245 lt!1369451)))))))

(declare-fun b!3925225 () Bool)

(declare-fun Unit!59968 () Unit!59960)

(assert (=> b!3925225 (= e!2427840 Unit!59968)))

(declare-fun b!3925226 () Bool)

(declare-fun res!1587945 () Bool)

(assert (=> b!3925226 (=> (not res!1587945) (not e!2427817))))

(assert (=> b!3925226 (= res!1587945 (not (isEmpty!24825 prefixTokens!80)))))

(declare-fun b!3925227 () Bool)

(assert (=> b!3925227 (= e!2427809 false)))

(declare-fun bm!284699 () Bool)

(declare-fun lexList!1857 (LexerInterface!6089 List!41791 List!41789) tuple2!40936)

(assert (=> bm!284699 (= call!284704 (lexList!1857 thiss!20629 rules!2768 (_2!23601 lt!1369448)))))

(declare-fun b!3925228 () Bool)

(declare-fun e!2427835 () Bool)

(assert (=> b!3925228 (= e!2427835 e!2427825)))

(declare-fun res!1587942 () Bool)

(assert (=> b!3925228 (=> (not res!1587942) (not e!2427825))))

(assert (=> b!3925228 (= res!1587942 (= (lexList!1857 thiss!20629 rules!2768 suffix!1176) lt!1369481))))

(assert (=> b!3925228 (= lt!1369481 (tuple2!40937 suffixTokens!72 suffixResult!91))))

(declare-fun b!3925229 () Bool)

(assert (=> b!3925229 (= e!2427829 (not e!2427842))))

(declare-fun res!1587951 () Bool)

(assert (=> b!3925229 (=> res!1587951 e!2427842)))

(declare-fun lt!1369458 () List!41789)

(assert (=> b!3925229 (= res!1587951 (not (= lt!1369458 lt!1369473)))))

(assert (=> b!3925229 (= lt!1369445 (lexList!1857 thiss!20629 rules!2768 (_2!23601 (v!39245 lt!1369451))))))

(declare-fun lt!1369461 () List!41789)

(assert (=> b!3925229 (and (= (size!31265 (_1!23601 (v!39245 lt!1369451))) lt!1369455) (= (originalCharacters!7100 (_1!23601 (v!39245 lt!1369451))) lt!1369466) (= (v!39245 lt!1369451) (tuple2!40935 (Token!12139 lt!1369452 (rule!9438 (_1!23601 (v!39245 lt!1369451))) lt!1369455 lt!1369466) lt!1369461)))))

(assert (=> b!3925229 (= lt!1369455 (size!31266 lt!1369466))))

(declare-fun e!2427812 () Bool)

(assert (=> b!3925229 e!2427812))

(declare-fun res!1587954 () Bool)

(assert (=> b!3925229 (=> (not res!1587954) (not e!2427812))))

(assert (=> b!3925229 (= res!1587954 (= (value!205884 (_1!23601 (v!39245 lt!1369451))) lt!1369452))))

(declare-fun apply!9739 (TokenValueInjection!12888 BalanceConc!25016) TokenValue!6730)

(declare-fun seqFromList!4767 (List!41789) BalanceConc!25016)

(assert (=> b!3925229 (= lt!1369452 (apply!9739 (transformation!6500 (rule!9438 (_1!23601 (v!39245 lt!1369451)))) (seqFromList!4767 lt!1369466)))))

(assert (=> b!3925229 (= (_2!23601 (v!39245 lt!1369451)) lt!1369461)))

(declare-fun lt!1369446 () Unit!59960)

(assert (=> b!3925229 (= lt!1369446 (lemmaSamePrefixThenSameSuffix!1816 lt!1369466 (_2!23601 (v!39245 lt!1369451)) lt!1369466 lt!1369461 lt!1369473))))

(assert (=> b!3925229 (= lt!1369461 (getSuffix!2050 lt!1369473 lt!1369466))))

(assert (=> b!3925229 (isPrefix!3595 lt!1369466 lt!1369458)))

(assert (=> b!3925229 (= lt!1369458 (++!10758 lt!1369466 (_2!23601 (v!39245 lt!1369451))))))

(declare-fun lt!1369457 () Unit!59960)

(assert (=> b!3925229 (= lt!1369457 (lemmaConcatTwoListThenFirstIsPrefix!2458 lt!1369466 (_2!23601 (v!39245 lt!1369451))))))

(declare-fun list!15483 (BalanceConc!25016) List!41789)

(declare-fun charsOf!4324 (Token!12138) BalanceConc!25016)

(assert (=> b!3925229 (= lt!1369466 (list!15483 (charsOf!4324 (_1!23601 (v!39245 lt!1369451)))))))

(declare-fun ruleValid!2448 (LexerInterface!6089 Rule!12800) Bool)

(assert (=> b!3925229 (ruleValid!2448 thiss!20629 (rule!9438 (_1!23601 (v!39245 lt!1369451))))))

(declare-fun lt!1369468 () Unit!59960)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1528 (LexerInterface!6089 Rule!12800 List!41791) Unit!59960)

(assert (=> b!3925229 (= lt!1369468 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1528 thiss!20629 (rule!9438 (_1!23601 (v!39245 lt!1369451))) rules!2768))))

(declare-fun lt!1369477 () Unit!59960)

(declare-fun lemmaCharactersSize!1157 (Token!12138) Unit!59960)

(assert (=> b!3925229 (= lt!1369477 (lemmaCharactersSize!1157 (_1!23601 (v!39245 lt!1369451))))))

(declare-fun b!3925230 () Bool)

(assert (=> b!3925230 (= e!2427842 e!2427818)))

(declare-fun res!1587937 () Bool)

(assert (=> b!3925230 (=> res!1587937 e!2427818)))

(declare-fun lt!1369454 () Int)

(assert (=> b!3925230 (= res!1587937 (<= lt!1369454 lt!1369475))))

(declare-fun lt!1369471 () Unit!59960)

(assert (=> b!3925230 (= lt!1369471 e!2427840)))

(declare-fun c!682020 () Bool)

(assert (=> b!3925230 (= c!682020 (= lt!1369454 lt!1369475))))

(declare-fun lt!1369456 () Unit!59960)

(assert (=> b!3925230 (= lt!1369456 e!2427830)))

(declare-fun c!682019 () Bool)

(assert (=> b!3925230 (= c!682019 (< lt!1369454 lt!1369475))))

(assert (=> b!3925230 (= lt!1369475 (size!31266 suffix!1176))))

(assert (=> b!3925230 (= lt!1369454 (size!31266 (_2!23601 (v!39245 lt!1369451))))))

(assert (=> b!3925231 (= e!2427824 (and tp!1195055 tp!1195047))))

(declare-fun e!2427810 () Bool)

(assert (=> b!3925232 (= e!2427810 (and tp!1195062 tp!1195058))))

(declare-fun tp!1195051 () Bool)

(declare-fun e!2427811 () Bool)

(declare-fun b!3925233 () Bool)

(assert (=> b!3925233 (= e!2427811 (and (inv!55859 (h!47088 prefixTokens!80)) e!2427814 tp!1195051))))

(declare-fun b!3925234 () Bool)

(assert (=> b!3925234 (= e!2427812 (= (size!31265 (_1!23601 (v!39245 lt!1369451))) (size!31266 (originalCharacters!7100 (_1!23601 (v!39245 lt!1369451))))))))

(declare-fun b!3925235 () Bool)

(declare-fun e!2427838 () Bool)

(declare-fun tp_is_empty!19781 () Bool)

(declare-fun tp!1195050 () Bool)

(assert (=> b!3925235 (= e!2427838 (and tp_is_empty!19781 tp!1195050))))

(declare-fun tp!1195052 () Bool)

(declare-fun b!3925236 () Bool)

(assert (=> b!3925236 (= e!2427815 (and tp!1195052 (inv!55855 (tag!7360 (rule!9438 (h!47088 prefixTokens!80)))) (inv!55858 (transformation!6500 (rule!9438 (h!47088 prefixTokens!80)))) e!2427810))))

(declare-fun b!3925237 () Bool)

(declare-fun e!2427826 () Bool)

(declare-fun tp!1195053 () Bool)

(assert (=> b!3925237 (= e!2427826 (and tp_is_empty!19781 tp!1195053))))

(declare-fun b!3925238 () Bool)

(assert (=> b!3925238 (= e!2427818 e!2427821)))

(declare-fun res!1587941 () Bool)

(assert (=> b!3925238 (=> res!1587941 e!2427821)))

(assert (=> b!3925238 (= res!1587941 (>= lt!1369455 (size!31266 prefix!426)))))

(assert (=> b!3925238 (isPrefix!3595 lt!1369466 prefix!426)))

(declare-fun lt!1369464 () Unit!59960)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!273 (List!41789 List!41789 List!41789) Unit!59960)

(assert (=> b!3925238 (= lt!1369464 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!273 prefix!426 lt!1369466 lt!1369473))))

(assert (=> b!3925238 (isPrefix!3595 prefix!426 lt!1369473)))

(declare-fun lt!1369480 () Unit!59960)

(assert (=> b!3925238 (= lt!1369480 (lemmaConcatTwoListThenFirstIsPrefix!2458 prefix!426 suffix!1176))))

(declare-fun b!3925239 () Bool)

(declare-fun e!2427813 () Bool)

(declare-fun tp!1195056 () Bool)

(assert (=> b!3925239 (= e!2427813 (and e!2427836 tp!1195056))))

(declare-fun e!2427823 () Bool)

(declare-fun b!3925240 () Bool)

(declare-fun lt!1369474 () List!41789)

(declare-fun lt!1369479 () List!41789)

(assert (=> b!3925240 (= e!2427823 (or (not (= lt!1369473 lt!1369474)) (not (= lt!1369473 lt!1369479)) (= lt!1369458 lt!1369479)))))

(assert (=> b!3925240 (= lt!1369474 lt!1369479)))

(assert (=> b!3925240 (= lt!1369479 (++!10758 lt!1369466 (++!10758 lt!1369459 suffix!1176)))))

(declare-fun lt!1369450 () Unit!59960)

(declare-fun lemmaConcatAssociativity!2296 (List!41789 List!41789 List!41789) Unit!59960)

(assert (=> b!3925240 (= lt!1369450 (lemmaConcatAssociativity!2296 lt!1369466 lt!1369459 suffix!1176))))

(declare-fun res!1587938 () Bool)

(assert (=> start!368084 (=> (not res!1587938) (not e!2427817))))

(assert (=> start!368084 (= res!1587938 ((_ is Lexer!6087) thiss!20629))))

(assert (=> start!368084 e!2427817))

(declare-fun e!2427816 () Bool)

(assert (=> start!368084 e!2427816))

(assert (=> start!368084 true))

(assert (=> start!368084 e!2427826))

(assert (=> start!368084 e!2427813))

(assert (=> start!368084 e!2427811))

(assert (=> start!368084 e!2427831))

(assert (=> start!368084 e!2427838))

(declare-fun b!3925219 () Bool)

(declare-fun tp!1195049 () Bool)

(assert (=> b!3925219 (= e!2427816 (and tp_is_empty!19781 tp!1195049))))

(declare-fun b!3925241 () Bool)

(assert (=> b!3925241 (= e!2427827 e!2427823)))

(declare-fun res!1587950 () Bool)

(assert (=> b!3925241 (=> res!1587950 e!2427823)))

(assert (=> b!3925241 (= res!1587950 (or (not (= lt!1369474 lt!1369473)) (not (= lt!1369474 lt!1369458))))))

(assert (=> b!3925241 (= lt!1369474 (++!10758 lt!1369465 suffix!1176))))

(declare-fun b!3925242 () Bool)

(assert (=> b!3925242 (= e!2427817 e!2427835)))

(declare-fun res!1587939 () Bool)

(assert (=> b!3925242 (=> (not res!1587939) (not e!2427835))))

(declare-fun lt!1369460 () List!41792)

(assert (=> b!3925242 (= res!1587939 (= lt!1369469 (tuple2!40937 lt!1369460 suffixResult!91)))))

(assert (=> b!3925242 (= lt!1369469 (lexList!1857 thiss!20629 rules!2768 lt!1369473))))

(assert (=> b!3925242 (= lt!1369460 (++!10757 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3925242 (= lt!1369473 (++!10758 prefix!426 suffix!1176))))

(assert (= (and start!368084 res!1587938) b!3925202))

(assert (= (and b!3925202 res!1587952) b!3925216))

(assert (= (and b!3925216 res!1587948) b!3925226))

(assert (= (and b!3925226 res!1587945) b!3925223))

(assert (= (and b!3925223 res!1587949) b!3925242))

(assert (= (and b!3925242 res!1587939) b!3925228))

(assert (= (and b!3925228 res!1587942) b!3925217))

(assert (= (and b!3925217 res!1587940) b!3925229))

(assert (= (and b!3925229 res!1587954) b!3925234))

(assert (= (and b!3925229 (not res!1587951)) b!3925204))

(assert (= (and b!3925204 (not res!1587944)) b!3925208))

(assert (= (and b!3925208 (not res!1587953)) b!3925230))

(assert (= (and b!3925230 c!682019) b!3925214))

(assert (= (and b!3925230 (not c!682019)) b!3925222))

(assert (= (and b!3925214 c!682018) b!3925211))

(assert (= (and b!3925214 (not c!682018)) b!3925212))

(assert (= (and b!3925211 c!682021) b!3925203))

(assert (= (and b!3925211 (not c!682021)) b!3925221))

(assert (= (and b!3925203 res!1587943) b!3925209))

(assert (= (and b!3925221 res!1587946) b!3925227))

(assert (= (or b!3925203 b!3925221) bm!284699))

(assert (= (and b!3925230 c!682020) b!3925205))

(assert (= (and b!3925230 (not c!682020)) b!3925225))

(assert (= (and b!3925230 (not res!1587937)) b!3925224))

(assert (= (and b!3925224 (not res!1587947)) b!3925238))

(assert (= (and b!3925238 (not res!1587941)) b!3925207))

(assert (= (and b!3925207 (not res!1587955)) b!3925241))

(assert (= (and b!3925241 (not res!1587950)) b!3925240))

(assert (= (and start!368084 ((_ is Cons!41665) suffixResult!91)) b!3925219))

(assert (= (and start!368084 ((_ is Cons!41665) suffix!1176)) b!3925237))

(assert (= b!3925220 b!3925215))

(assert (= b!3925239 b!3925220))

(assert (= (and start!368084 ((_ is Cons!41667) rules!2768)) b!3925239))

(assert (= b!3925236 b!3925232))

(assert (= b!3925213 b!3925236))

(assert (= b!3925233 b!3925213))

(assert (= (and start!368084 ((_ is Cons!41668) prefixTokens!80)) b!3925233))

(assert (= b!3925206 b!3925231))

(assert (= b!3925218 b!3925206))

(assert (= b!3925210 b!3925218))

(assert (= (and start!368084 ((_ is Cons!41668) suffixTokens!72)) b!3925210))

(assert (= (and start!368084 ((_ is Cons!41665) prefix!426)) b!3925235))

(declare-fun m!4489303 () Bool)

(assert (=> b!3925224 m!4489303))

(declare-fun m!4489305 () Bool)

(assert (=> b!3925223 m!4489305))

(declare-fun m!4489307 () Bool)

(assert (=> b!3925230 m!4489307))

(declare-fun m!4489309 () Bool)

(assert (=> b!3925230 m!4489309))

(declare-fun m!4489311 () Bool)

(assert (=> b!3925202 m!4489311))

(declare-fun m!4489313 () Bool)

(assert (=> b!3925206 m!4489313))

(declare-fun m!4489315 () Bool)

(assert (=> b!3925206 m!4489315))

(declare-fun m!4489317 () Bool)

(assert (=> b!3925217 m!4489317))

(declare-fun m!4489319 () Bool)

(assert (=> b!3925214 m!4489319))

(declare-fun m!4489321 () Bool)

(assert (=> b!3925214 m!4489321))

(declare-fun m!4489323 () Bool)

(assert (=> b!3925214 m!4489323))

(declare-fun m!4489325 () Bool)

(assert (=> b!3925214 m!4489325))

(declare-fun m!4489327 () Bool)

(assert (=> b!3925214 m!4489327))

(declare-fun m!4489329 () Bool)

(assert (=> b!3925229 m!4489329))

(declare-fun m!4489331 () Bool)

(assert (=> b!3925229 m!4489331))

(declare-fun m!4489333 () Bool)

(assert (=> b!3925229 m!4489333))

(declare-fun m!4489335 () Bool)

(assert (=> b!3925229 m!4489335))

(declare-fun m!4489337 () Bool)

(assert (=> b!3925229 m!4489337))

(declare-fun m!4489339 () Bool)

(assert (=> b!3925229 m!4489339))

(declare-fun m!4489341 () Bool)

(assert (=> b!3925229 m!4489341))

(declare-fun m!4489343 () Bool)

(assert (=> b!3925229 m!4489343))

(declare-fun m!4489345 () Bool)

(assert (=> b!3925229 m!4489345))

(declare-fun m!4489347 () Bool)

(assert (=> b!3925229 m!4489347))

(declare-fun m!4489349 () Bool)

(assert (=> b!3925229 m!4489349))

(declare-fun m!4489351 () Bool)

(assert (=> b!3925229 m!4489351))

(assert (=> b!3925229 m!4489335))

(assert (=> b!3925229 m!4489345))

(declare-fun m!4489353 () Bool)

(assert (=> b!3925229 m!4489353))

(declare-fun m!4489355 () Bool)

(assert (=> b!3925229 m!4489355))

(declare-fun m!4489357 () Bool)

(assert (=> b!3925203 m!4489357))

(declare-fun m!4489359 () Bool)

(assert (=> b!3925203 m!4489359))

(declare-fun m!4489361 () Bool)

(assert (=> b!3925218 m!4489361))

(declare-fun m!4489363 () Bool)

(assert (=> b!3925210 m!4489363))

(declare-fun m!4489365 () Bool)

(assert (=> b!3925238 m!4489365))

(declare-fun m!4489367 () Bool)

(assert (=> b!3925238 m!4489367))

(declare-fun m!4489369 () Bool)

(assert (=> b!3925238 m!4489369))

(declare-fun m!4489371 () Bool)

(assert (=> b!3925238 m!4489371))

(declare-fun m!4489373 () Bool)

(assert (=> b!3925238 m!4489373))

(declare-fun m!4489375 () Bool)

(assert (=> b!3925207 m!4489375))

(declare-fun m!4489377 () Bool)

(assert (=> b!3925207 m!4489377))

(declare-fun m!4489379 () Bool)

(assert (=> b!3925240 m!4489379))

(assert (=> b!3925240 m!4489379))

(declare-fun m!4489381 () Bool)

(assert (=> b!3925240 m!4489381))

(declare-fun m!4489383 () Bool)

(assert (=> b!3925240 m!4489383))

(declare-fun m!4489385 () Bool)

(assert (=> bm!284699 m!4489385))

(declare-fun m!4489387 () Bool)

(assert (=> b!3925211 m!4489387))

(declare-fun m!4489389 () Bool)

(assert (=> b!3925211 m!4489389))

(declare-fun m!4489391 () Bool)

(assert (=> b!3925220 m!4489391))

(declare-fun m!4489393 () Bool)

(assert (=> b!3925220 m!4489393))

(declare-fun m!4489395 () Bool)

(assert (=> b!3925234 m!4489395))

(declare-fun m!4489397 () Bool)

(assert (=> b!3925236 m!4489397))

(declare-fun m!4489399 () Bool)

(assert (=> b!3925236 m!4489399))

(declare-fun m!4489401 () Bool)

(assert (=> b!3925221 m!4489401))

(declare-fun m!4489403 () Bool)

(assert (=> b!3925221 m!4489403))

(declare-fun m!4489405 () Bool)

(assert (=> b!3925228 m!4489405))

(declare-fun m!4489407 () Bool)

(assert (=> b!3925213 m!4489407))

(declare-fun m!4489409 () Bool)

(assert (=> b!3925226 m!4489409))

(declare-fun m!4489411 () Bool)

(assert (=> b!3925216 m!4489411))

(declare-fun m!4489413 () Bool)

(assert (=> b!3925233 m!4489413))

(declare-fun m!4489415 () Bool)

(assert (=> b!3925204 m!4489415))

(declare-fun m!4489417 () Bool)

(assert (=> b!3925242 m!4489417))

(declare-fun m!4489419 () Bool)

(assert (=> b!3925242 m!4489419))

(declare-fun m!4489421 () Bool)

(assert (=> b!3925242 m!4489421))

(declare-fun m!4489423 () Bool)

(assert (=> b!3925241 m!4489423))

(assert (=> b!3925205 m!4489369))

(assert (=> b!3925205 m!4489373))

(declare-fun m!4489425 () Bool)

(assert (=> b!3925205 m!4489425))

(declare-fun m!4489427 () Bool)

(assert (=> b!3925205 m!4489427))

(check-sat (not b!3925234) b_and!299331 (not b!3925214) b_and!299335 (not b!3925213) (not b!3925203) (not b!3925220) (not b_next!107685) (not b_next!107677) (not b!3925211) (not b!3925224) (not b_next!107679) (not b!3925207) (not b_next!107687) (not b!3925229) (not b!3925230) (not b!3925217) (not b!3925238) b_and!299337 (not b!3925219) (not b!3925216) (not b!3925237) b_and!299329 (not b!3925218) (not b!3925204) (not bm!284699) (not b!3925242) (not b!3925233) (not b!3925236) b_and!299333 (not b!3925206) (not b!3925226) (not b_next!107681) (not b!3925240) (not b!3925223) tp_is_empty!19781 (not b!3925221) (not b!3925228) (not b!3925210) (not b!3925239) (not b!3925241) (not b!3925235) (not b_next!107683) b_and!299327 (not b!3925202) (not b!3925205))
(check-sat (not b_next!107677) (not b_next!107679) (not b_next!107687) b_and!299331 b_and!299337 b_and!299329 b_and!299335 b_and!299333 (not b_next!107681) (not b_next!107683) b_and!299327 (not b_next!107685))
