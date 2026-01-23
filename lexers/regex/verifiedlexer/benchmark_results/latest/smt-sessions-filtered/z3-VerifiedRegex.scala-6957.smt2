; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!368088 () Bool)

(assert start!368088)

(declare-fun b!3925461 () Bool)

(declare-fun b_free!106997 () Bool)

(declare-fun b_next!107701 () Bool)

(assert (=> b!3925461 (= b_free!106997 (not b_next!107701))))

(declare-fun tp!1195163 () Bool)

(declare-fun b_and!299351 () Bool)

(assert (=> b!3925461 (= tp!1195163 b_and!299351)))

(declare-fun b_free!106999 () Bool)

(declare-fun b_next!107703 () Bool)

(assert (=> b!3925461 (= b_free!106999 (not b_next!107703))))

(declare-fun tp!1195156 () Bool)

(declare-fun b_and!299353 () Bool)

(assert (=> b!3925461 (= tp!1195156 b_and!299353)))

(declare-fun b!3925493 () Bool)

(declare-fun b_free!107001 () Bool)

(declare-fun b_next!107705 () Bool)

(assert (=> b!3925493 (= b_free!107001 (not b_next!107705))))

(declare-fun tp!1195157 () Bool)

(declare-fun b_and!299355 () Bool)

(assert (=> b!3925493 (= tp!1195157 b_and!299355)))

(declare-fun b_free!107003 () Bool)

(declare-fun b_next!107707 () Bool)

(assert (=> b!3925493 (= b_free!107003 (not b_next!107707))))

(declare-fun tp!1195158 () Bool)

(declare-fun b_and!299357 () Bool)

(assert (=> b!3925493 (= tp!1195158 b_and!299357)))

(declare-fun b!3925460 () Bool)

(declare-fun b_free!107005 () Bool)

(declare-fun b_next!107709 () Bool)

(assert (=> b!3925460 (= b_free!107005 (not b_next!107709))))

(declare-fun tp!1195148 () Bool)

(declare-fun b_and!299359 () Bool)

(assert (=> b!3925460 (= tp!1195148 b_and!299359)))

(declare-fun b_free!107007 () Bool)

(declare-fun b_next!107711 () Bool)

(assert (=> b!3925460 (= b_free!107007 (not b_next!107711))))

(declare-fun tp!1195150 () Bool)

(declare-fun b_and!299361 () Bool)

(assert (=> b!3925460 (= tp!1195150 b_and!299361)))

(declare-fun b!3925453 () Bool)

(declare-fun res!1588058 () Bool)

(declare-fun e!2428050 () Bool)

(assert (=> b!3925453 (=> res!1588058 e!2428050)))

(declare-datatypes ((List!41797 0))(
  ( (Nil!41673) (Cons!41673 (h!47093 (_ BitVec 16)) (t!324932 List!41797)) )
))
(declare-datatypes ((TokenValue!6732 0))(
  ( (FloatLiteralValue!13464 (text!47569 List!41797)) (TokenValueExt!6731 (__x!25681 Int)) (Broken!33660 (value!205915 List!41797)) (Object!6855) (End!6732) (Def!6732) (Underscore!6732) (Match!6732) (Else!6732) (Error!6732) (Case!6732) (If!6732) (Extends!6732) (Abstract!6732) (Class!6732) (Val!6732) (DelimiterValue!13464 (del!6792 List!41797)) (KeywordValue!6738 (value!205916 List!41797)) (CommentValue!13464 (value!205917 List!41797)) (WhitespaceValue!13464 (value!205918 List!41797)) (IndentationValue!6732 (value!205919 List!41797)) (String!47377) (Int32!6732) (Broken!33661 (value!205920 List!41797)) (Boolean!6733) (Unit!59979) (OperatorValue!6735 (op!6792 List!41797)) (IdentifierValue!13464 (value!205921 List!41797)) (IdentifierValue!13465 (value!205922 List!41797)) (WhitespaceValue!13465 (value!205923 List!41797)) (True!13464) (False!13464) (Broken!33662 (value!205924 List!41797)) (Broken!33663 (value!205925 List!41797)) (True!13465) (RightBrace!6732) (RightBracket!6732) (Colon!6732) (Null!6732) (Comma!6732) (LeftBracket!6732) (False!13465) (LeftBrace!6732) (ImaginaryLiteralValue!6732 (text!47570 List!41797)) (StringLiteralValue!20196 (value!205926 List!41797)) (EOFValue!6732 (value!205927 List!41797)) (IdentValue!6732 (value!205928 List!41797)) (DelimiterValue!13465 (value!205929 List!41797)) (DedentValue!6732 (value!205930 List!41797)) (NewLineValue!6732 (value!205931 List!41797)) (IntegerValue!20196 (value!205932 (_ BitVec 32)) (text!47571 List!41797)) (IntegerValue!20197 (value!205933 Int) (text!47572 List!41797)) (Times!6732) (Or!6732) (Equal!6732) (Minus!6732) (Broken!33664 (value!205934 List!41797)) (And!6732) (Div!6732) (LessEqual!6732) (Mod!6732) (Concat!18139) (Not!6732) (Plus!6732) (SpaceValue!6732 (value!205935 List!41797)) (IntegerValue!20198 (value!205936 Int) (text!47573 List!41797)) (StringLiteralValue!20197 (text!47574 List!41797)) (FloatLiteralValue!13465 (text!47575 List!41797)) (BytesLiteralValue!6732 (value!205937 List!41797)) (CommentValue!13465 (value!205938 List!41797)) (StringLiteralValue!20198 (value!205939 List!41797)) (ErrorTokenValue!6732 (msg!6793 List!41797)) )
))
(declare-datatypes ((C!23000 0))(
  ( (C!23001 (val!13594 Int)) )
))
(declare-datatypes ((Regex!11407 0))(
  ( (ElementMatch!11407 (c!682052 C!23000)) (Concat!18140 (regOne!23326 Regex!11407) (regTwo!23326 Regex!11407)) (EmptyExpr!11407) (Star!11407 (reg!11736 Regex!11407)) (EmptyLang!11407) (Union!11407 (regOne!23327 Regex!11407) (regTwo!23327 Regex!11407)) )
))
(declare-datatypes ((String!47378 0))(
  ( (String!47379 (value!205940 String)) )
))
(declare-datatypes ((List!41798 0))(
  ( (Nil!41674) (Cons!41674 (h!47094 C!23000) (t!324933 List!41798)) )
))
(declare-datatypes ((IArray!25431 0))(
  ( (IArray!25432 (innerList!12773 List!41798)) )
))
(declare-datatypes ((Conc!12713 0))(
  ( (Node!12713 (left!31814 Conc!12713) (right!32144 Conc!12713) (csize!25656 Int) (cheight!12924 Int)) (Leaf!19671 (xs!16019 IArray!25431) (csize!25657 Int)) (Empty!12713) )
))
(declare-datatypes ((BalanceConc!25020 0))(
  ( (BalanceConc!25021 (c!682053 Conc!12713)) )
))
(declare-datatypes ((TokenValueInjection!12892 0))(
  ( (TokenValueInjection!12893 (toValue!8954 Int) (toChars!8813 Int)) )
))
(declare-datatypes ((Rule!12804 0))(
  ( (Rule!12805 (regex!6502 Regex!11407) (tag!7362 String!47378) (isSeparator!6502 Bool) (transformation!6502 TokenValueInjection!12892)) )
))
(declare-datatypes ((Token!12142 0))(
  ( (Token!12143 (value!205941 TokenValue!6732) (rule!9440 Rule!12804) (size!31269 Int) (originalCharacters!7102 List!41798)) )
))
(declare-datatypes ((List!41799 0))(
  ( (Nil!41675) (Cons!41675 (h!47095 Token!12142) (t!324934 List!41799)) )
))
(declare-fun prefixTokens!80 () List!41799)

(declare-datatypes ((tuple2!40942 0))(
  ( (tuple2!40943 (_1!23605 Token!12142) (_2!23605 List!41798)) )
))
(declare-datatypes ((Option!8922 0))(
  ( (None!8921) (Some!8921 (v!39247 tuple2!40942)) )
))
(declare-fun lt!1369714 () Option!8922)

(declare-fun head!8321 (List!41799) Token!12142)

(assert (=> b!3925453 (= res!1588058 (not (= (head!8321 prefixTokens!80) (_1!23605 (v!39247 lt!1369714)))))))

(declare-fun b!3925454 () Bool)

(declare-fun e!2428036 () Bool)

(declare-fun lt!1369713 () List!41798)

(assert (=> b!3925454 (= e!2428036 (= lt!1369713 (_2!23605 (v!39247 lt!1369714))))))

(assert (=> b!3925454 (= (_2!23605 (v!39247 lt!1369714)) lt!1369713)))

(declare-fun lt!1369688 () List!41798)

(declare-fun lt!1369711 () List!41798)

(declare-datatypes ((Unit!59980 0))(
  ( (Unit!59981) )
))
(declare-fun lt!1369683 () Unit!59980)

(declare-fun lemmaSamePrefixThenSameSuffix!1818 (List!41798 List!41798 List!41798 List!41798 List!41798) Unit!59980)

(assert (=> b!3925454 (= lt!1369683 (lemmaSamePrefixThenSameSuffix!1818 lt!1369711 (_2!23605 (v!39247 lt!1369714)) lt!1369711 lt!1369713 lt!1369688))))

(declare-fun lt!1369710 () List!41798)

(declare-fun isPrefix!3597 (List!41798 List!41798) Bool)

(assert (=> b!3925454 (isPrefix!3597 lt!1369711 lt!1369710)))

(declare-fun lt!1369694 () Unit!59980)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2460 (List!41798 List!41798) Unit!59980)

(assert (=> b!3925454 (= lt!1369694 (lemmaConcatTwoListThenFirstIsPrefix!2460 lt!1369711 lt!1369713))))

(declare-fun e!2428043 () Bool)

(declare-fun b!3925455 () Bool)

(declare-fun tp!1195152 () Bool)

(declare-fun e!2428029 () Bool)

(declare-fun inv!21 (TokenValue!6732) Bool)

(assert (=> b!3925455 (= e!2428029 (and (inv!21 (value!205941 (h!47095 prefixTokens!80))) e!2428043 tp!1195152))))

(declare-fun b!3925456 () Bool)

(declare-fun e!2428057 () Unit!59980)

(declare-fun Unit!59982 () Unit!59980)

(assert (=> b!3925456 (= e!2428057 Unit!59982)))

(declare-fun lt!1369691 () tuple2!40942)

(declare-fun lt!1369698 () Unit!59980)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!550 (List!41798 List!41798 List!41798 List!41798) Unit!59980)

(assert (=> b!3925456 (= lt!1369698 (lemmaConcatSameAndSameSizesThenSameLists!550 lt!1369711 (_2!23605 (v!39247 lt!1369714)) lt!1369711 (_2!23605 lt!1369691)))))

(assert (=> b!3925456 (= (_2!23605 (v!39247 lt!1369714)) (_2!23605 lt!1369691))))

(declare-fun suffixResult!91 () List!41798)

(declare-datatypes ((LexerInterface!6091 0))(
  ( (LexerInterfaceExt!6088 (__x!25682 Int)) (Lexer!6089) )
))
(declare-fun thiss!20629 () LexerInterface!6091)

(declare-fun suffix!1176 () List!41798)

(declare-datatypes ((List!41800 0))(
  ( (Nil!41676) (Cons!41676 (h!47096 Rule!12804) (t!324935 List!41800)) )
))
(declare-fun rules!2768 () List!41800)

(declare-fun suffixTokens!72 () List!41799)

(declare-fun lt!1369717 () Unit!59980)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!102 (LexerInterface!6091 List!41800 List!41798 List!41798 List!41799 List!41798) Unit!59980)

(assert (=> b!3925456 (= lt!1369717 (lemmaLexWithSmallerInputCannotProduceSameResults!102 thiss!20629 rules!2768 suffix!1176 (_2!23605 lt!1369691) suffixTokens!72 suffixResult!91))))

(declare-fun res!1588071 () Bool)

(declare-datatypes ((tuple2!40944 0))(
  ( (tuple2!40945 (_1!23606 List!41799) (_2!23606 List!41798)) )
))
(declare-fun call!284710 () tuple2!40944)

(declare-fun lt!1369696 () tuple2!40944)

(assert (=> b!3925456 (= res!1588071 (not (= call!284710 lt!1369696)))))

(declare-fun e!2428023 () Bool)

(assert (=> b!3925456 (=> (not res!1588071) (not e!2428023))))

(assert (=> b!3925456 e!2428023))

(declare-fun b!3925457 () Bool)

(declare-fun e!2428052 () Unit!59980)

(declare-fun Unit!59983 () Unit!59980)

(assert (=> b!3925457 (= e!2428052 Unit!59983)))

(declare-fun b!3925458 () Bool)

(declare-fun e!2428032 () Bool)

(assert (=> b!3925458 (= e!2428032 false)))

(declare-fun b!3925459 () Bool)

(declare-fun res!1588066 () Bool)

(declare-fun e!2428037 () Bool)

(assert (=> b!3925459 (=> (not res!1588066) (not e!2428037))))

(declare-fun rulesInvariant!5434 (LexerInterface!6091 List!41800) Bool)

(assert (=> b!3925459 (= res!1588066 (rulesInvariant!5434 thiss!20629 rules!2768))))

(declare-fun e!2428033 () Bool)

(assert (=> b!3925460 (= e!2428033 (and tp!1195148 tp!1195150))))

(declare-fun e!2428056 () Bool)

(assert (=> b!3925461 (= e!2428056 (and tp!1195163 tp!1195156))))

(declare-fun res!1588063 () Bool)

(assert (=> start!368088 (=> (not res!1588063) (not e!2428037))))

(get-info :version)

(assert (=> start!368088 (= res!1588063 ((_ is Lexer!6089) thiss!20629))))

(assert (=> start!368088 e!2428037))

(declare-fun e!2428030 () Bool)

(assert (=> start!368088 e!2428030))

(assert (=> start!368088 true))

(declare-fun e!2428025 () Bool)

(assert (=> start!368088 e!2428025))

(declare-fun e!2428038 () Bool)

(assert (=> start!368088 e!2428038))

(declare-fun e!2428058 () Bool)

(assert (=> start!368088 e!2428058))

(declare-fun e!2428045 () Bool)

(assert (=> start!368088 e!2428045))

(declare-fun e!2428054 () Bool)

(assert (=> start!368088 e!2428054))

(declare-fun b!3925462 () Bool)

(declare-fun e!2428040 () Bool)

(declare-fun e!2428053 () Bool)

(assert (=> b!3925462 (= e!2428040 e!2428053)))

(declare-fun res!1588067 () Bool)

(assert (=> b!3925462 (=> (not res!1588067) (not e!2428053))))

(declare-fun lexList!1859 (LexerInterface!6091 List!41800 List!41798) tuple2!40944)

(assert (=> b!3925462 (= res!1588067 (= (lexList!1859 thiss!20629 rules!2768 suffix!1176) lt!1369696))))

(assert (=> b!3925462 (= lt!1369696 (tuple2!40945 suffixTokens!72 suffixResult!91))))

(declare-fun b!3925463 () Bool)

(declare-fun Unit!59984 () Unit!59980)

(assert (=> b!3925463 (= e!2428052 Unit!59984)))

(declare-fun lt!1369706 () Unit!59980)

(declare-fun prefix!426 () List!41798)

(assert (=> b!3925463 (= lt!1369706 (lemmaConcatTwoListThenFirstIsPrefix!2460 prefix!426 suffix!1176))))

(assert (=> b!3925463 (isPrefix!3597 prefix!426 lt!1369688)))

(declare-fun lt!1369689 () Unit!59980)

(declare-fun lemmaIsPrefixSameLengthThenSameList!793 (List!41798 List!41798 List!41798) Unit!59980)

(assert (=> b!3925463 (= lt!1369689 (lemmaIsPrefixSameLengthThenSameList!793 lt!1369711 prefix!426 lt!1369688))))

(assert (=> b!3925463 (= lt!1369711 prefix!426)))

(declare-fun lt!1369712 () Unit!59980)

(assert (=> b!3925463 (= lt!1369712 (lemmaSamePrefixThenSameSuffix!1818 lt!1369711 (_2!23605 (v!39247 lt!1369714)) prefix!426 suffix!1176 lt!1369688))))

(assert (=> b!3925463 false))

(declare-fun b!3925464 () Bool)

(declare-fun e!2428055 () Unit!59980)

(declare-fun Unit!59985 () Unit!59980)

(assert (=> b!3925464 (= e!2428055 Unit!59985)))

(declare-fun lt!1369687 () Int)

(declare-fun size!31270 (List!41798) Int)

(assert (=> b!3925464 (= lt!1369687 (size!31270 lt!1369688))))

(declare-fun lt!1369684 () Unit!59980)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1333 (LexerInterface!6091 List!41800 List!41798 List!41798 List!41798 Rule!12804) Unit!59980)

(assert (=> b!3925464 (= lt!1369684 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1333 thiss!20629 rules!2768 lt!1369711 lt!1369688 (_2!23605 (v!39247 lt!1369714)) (rule!9440 (_1!23605 (v!39247 lt!1369714)))))))

(declare-fun lt!1369719 () TokenValue!6732)

(declare-fun lt!1369692 () Int)

(declare-fun maxPrefixOneRule!2465 (LexerInterface!6091 Rule!12804 List!41798) Option!8922)

(assert (=> b!3925464 (= (maxPrefixOneRule!2465 thiss!20629 (rule!9440 (_1!23605 (v!39247 lt!1369714))) lt!1369688) (Some!8921 (tuple2!40943 (Token!12143 lt!1369719 (rule!9440 (_1!23605 (v!39247 lt!1369714))) lt!1369692 lt!1369711) (_2!23605 (v!39247 lt!1369714)))))))

(declare-fun get!13773 (Option!8922) tuple2!40942)

(assert (=> b!3925464 (= lt!1369691 (get!13773 lt!1369714))))

(declare-fun c!682050 () Bool)

(declare-fun lt!1369718 () Int)

(assert (=> b!3925464 (= c!682050 (< (size!31270 (_2!23605 lt!1369691)) lt!1369718))))

(declare-fun lt!1369685 () Unit!59980)

(declare-fun e!2428047 () Unit!59980)

(assert (=> b!3925464 (= lt!1369685 e!2428047)))

(assert (=> b!3925464 false))

(declare-fun b!3925465 () Bool)

(declare-fun e!2428027 () Bool)

(declare-fun e!2428034 () Bool)

(assert (=> b!3925465 (= e!2428027 e!2428034)))

(declare-fun res!1588057 () Bool)

(assert (=> b!3925465 (=> res!1588057 e!2428034)))

(declare-fun lt!1369715 () List!41798)

(assert (=> b!3925465 (= res!1588057 (not (= lt!1369715 prefix!426)))))

(declare-fun lt!1369702 () List!41798)

(declare-fun ++!10761 (List!41798 List!41798) List!41798)

(assert (=> b!3925465 (= lt!1369715 (++!10761 lt!1369711 lt!1369702))))

(declare-fun getSuffix!2052 (List!41798 List!41798) List!41798)

(assert (=> b!3925465 (= lt!1369702 (getSuffix!2052 prefix!426 lt!1369711))))

(declare-fun b!3925466 () Bool)

(declare-fun Unit!59986 () Unit!59980)

(assert (=> b!3925466 (= e!2428055 Unit!59986)))

(declare-fun b!3925467 () Bool)

(declare-fun Unit!59987 () Unit!59980)

(assert (=> b!3925467 (= e!2428047 Unit!59987)))

(declare-fun b!3925468 () Bool)

(declare-fun res!1588072 () Bool)

(assert (=> b!3925468 (=> (not res!1588072) (not e!2428037))))

(declare-fun isEmpty!24830 (List!41799) Bool)

(assert (=> b!3925468 (= res!1588072 (not (isEmpty!24830 prefixTokens!80)))))

(declare-fun b!3925469 () Bool)

(declare-fun e!2428031 () Bool)

(assert (=> b!3925469 (= e!2428031 e!2428036)))

(declare-fun res!1588068 () Bool)

(assert (=> b!3925469 (=> res!1588068 e!2428036)))

(declare-fun lt!1369716 () List!41798)

(declare-fun lt!1369704 () List!41798)

(assert (=> b!3925469 (= res!1588068 (or (not (= lt!1369688 lt!1369716)) (not (= lt!1369688 lt!1369710)) (not (= lt!1369704 lt!1369710))))))

(assert (=> b!3925469 (= lt!1369716 lt!1369710)))

(assert (=> b!3925469 (= lt!1369710 (++!10761 lt!1369711 lt!1369713))))

(assert (=> b!3925469 (= lt!1369713 (++!10761 lt!1369702 suffix!1176))))

(declare-fun lt!1369690 () Unit!59980)

(declare-fun lemmaConcatAssociativity!2298 (List!41798 List!41798 List!41798) Unit!59980)

(assert (=> b!3925469 (= lt!1369690 (lemmaConcatAssociativity!2298 lt!1369711 lt!1369702 suffix!1176))))

(declare-fun b!3925470 () Bool)

(declare-fun tp!1195151 () Bool)

(declare-fun e!2428042 () Bool)

(declare-fun inv!55865 (Token!12142) Bool)

(assert (=> b!3925470 (= e!2428045 (and (inv!55865 (h!47095 suffixTokens!72)) e!2428042 tp!1195151))))

(declare-fun b!3925471 () Bool)

(declare-fun e!2428024 () Bool)

(assert (=> b!3925471 (= e!2428053 e!2428024)))

(declare-fun res!1588070 () Bool)

(assert (=> b!3925471 (=> (not res!1588070) (not e!2428024))))

(assert (=> b!3925471 (= res!1588070 ((_ is Some!8921) lt!1369714))))

(declare-fun maxPrefix!3395 (LexerInterface!6091 List!41800 List!41798) Option!8922)

(assert (=> b!3925471 (= lt!1369714 (maxPrefix!3395 thiss!20629 rules!2768 lt!1369688))))

(declare-fun b!3925472 () Bool)

(declare-fun tp_is_empty!19785 () Bool)

(declare-fun tp!1195153 () Bool)

(assert (=> b!3925472 (= e!2428030 (and tp_is_empty!19785 tp!1195153))))

(declare-fun b!3925473 () Bool)

(assert (=> b!3925473 (= e!2428034 e!2428031)))

(declare-fun res!1588060 () Bool)

(assert (=> b!3925473 (=> res!1588060 e!2428031)))

(assert (=> b!3925473 (= res!1588060 (or (not (= lt!1369716 lt!1369688)) (not (= lt!1369716 lt!1369704))))))

(assert (=> b!3925473 (= lt!1369716 (++!10761 lt!1369715 suffix!1176))))

(declare-fun b!3925474 () Bool)

(declare-fun Unit!59988 () Unit!59980)

(assert (=> b!3925474 (= e!2428057 Unit!59988)))

(declare-fun lt!1369709 () List!41799)

(declare-fun lt!1369708 () Unit!59980)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!102 (LexerInterface!6091 List!41800 List!41798 List!41798 List!41799 List!41798 List!41799) Unit!59980)

(assert (=> b!3925474 (= lt!1369708 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!102 thiss!20629 rules!2768 suffix!1176 (_2!23605 lt!1369691) suffixTokens!72 suffixResult!91 lt!1369709))))

(declare-fun res!1588064 () Bool)

(declare-fun ++!10762 (List!41799 List!41799) List!41799)

(assert (=> b!3925474 (= res!1588064 (not (= call!284710 (tuple2!40945 (++!10762 lt!1369709 suffixTokens!72) suffixResult!91))))))

(assert (=> b!3925474 (=> (not res!1588064) (not e!2428032))))

(assert (=> b!3925474 e!2428032))

(declare-fun b!3925475 () Bool)

(declare-fun res!1588073 () Bool)

(assert (=> b!3925475 (=> (not res!1588073) (not e!2428037))))

(declare-fun isEmpty!24831 (List!41798) Bool)

(assert (=> b!3925475 (= res!1588073 (not (isEmpty!24831 prefix!426)))))

(declare-fun tp!1195161 () Bool)

(declare-fun b!3925476 () Bool)

(assert (=> b!3925476 (= e!2428058 (and (inv!55865 (h!47095 prefixTokens!80)) e!2428029 tp!1195161))))

(declare-fun b!3925477 () Bool)

(declare-fun res!1588074 () Bool)

(assert (=> b!3925477 (=> (not res!1588074) (not e!2428037))))

(declare-fun isEmpty!24832 (List!41800) Bool)

(assert (=> b!3925477 (= res!1588074 (not (isEmpty!24832 rules!2768)))))

(declare-fun b!3925478 () Bool)

(declare-fun tp!1195154 () Bool)

(assert (=> b!3925478 (= e!2428054 (and tp_is_empty!19785 tp!1195154))))

(declare-fun tp!1195162 () Bool)

(declare-fun b!3925479 () Bool)

(declare-fun e!2428028 () Bool)

(declare-fun inv!55862 (String!47378) Bool)

(declare-fun inv!55866 (TokenValueInjection!12892) Bool)

(assert (=> b!3925479 (= e!2428028 (and tp!1195162 (inv!55862 (tag!7362 (rule!9440 (h!47095 suffixTokens!72)))) (inv!55866 (transformation!6502 (rule!9440 (h!47095 suffixTokens!72)))) e!2428056))))

(declare-fun b!3925480 () Bool)

(declare-fun e!2428044 () Bool)

(declare-fun tp!1195164 () Bool)

(assert (=> b!3925480 (= e!2428038 (and e!2428044 tp!1195164))))

(declare-fun b!3925481 () Bool)

(declare-fun e!2428049 () Bool)

(assert (=> b!3925481 (= e!2428049 e!2428050)))

(declare-fun res!1588069 () Bool)

(assert (=> b!3925481 (=> res!1588069 e!2428050)))

(declare-fun lt!1369720 () Int)

(assert (=> b!3925481 (= res!1588069 (<= lt!1369720 lt!1369718))))

(declare-fun lt!1369705 () Unit!59980)

(assert (=> b!3925481 (= lt!1369705 e!2428052)))

(declare-fun c!682048 () Bool)

(assert (=> b!3925481 (= c!682048 (= lt!1369720 lt!1369718))))

(declare-fun lt!1369682 () Unit!59980)

(assert (=> b!3925481 (= lt!1369682 e!2428055)))

(declare-fun c!682049 () Bool)

(assert (=> b!3925481 (= c!682049 (< lt!1369720 lt!1369718))))

(assert (=> b!3925481 (= lt!1369718 (size!31270 suffix!1176))))

(assert (=> b!3925481 (= lt!1369720 (size!31270 (_2!23605 (v!39247 lt!1369714))))))

(declare-fun tp!1195159 () Bool)

(declare-fun b!3925482 () Bool)

(assert (=> b!3925482 (= e!2428042 (and (inv!21 (value!205941 (h!47095 suffixTokens!72))) e!2428028 tp!1195159))))

(declare-fun b!3925483 () Bool)

(declare-fun res!1588061 () Bool)

(assert (=> b!3925483 (=> res!1588061 e!2428049)))

(declare-fun lt!1369697 () tuple2!40944)

(assert (=> b!3925483 (= res!1588061 (or (not (= lt!1369697 (tuple2!40945 (_1!23606 lt!1369697) (_2!23606 lt!1369697)))) (= (_2!23605 (v!39247 lt!1369714)) suffix!1176)))))

(declare-fun b!3925484 () Bool)

(declare-fun c!682051 () Bool)

(assert (=> b!3925484 (= c!682051 (isEmpty!24830 lt!1369709))))

(declare-fun tail!6047 (List!41799) List!41799)

(assert (=> b!3925484 (= lt!1369709 (tail!6047 prefixTokens!80))))

(assert (=> b!3925484 (= e!2428047 e!2428057)))

(declare-fun b!3925485 () Bool)

(assert (=> b!3925485 (= e!2428024 (not e!2428049))))

(declare-fun res!1588059 () Bool)

(assert (=> b!3925485 (=> res!1588059 e!2428049)))

(assert (=> b!3925485 (= res!1588059 (not (= lt!1369704 lt!1369688)))))

(assert (=> b!3925485 (= lt!1369697 (lexList!1859 thiss!20629 rules!2768 (_2!23605 (v!39247 lt!1369714))))))

(declare-fun lt!1369700 () List!41798)

(assert (=> b!3925485 (and (= (size!31269 (_1!23605 (v!39247 lt!1369714))) lt!1369692) (= (originalCharacters!7102 (_1!23605 (v!39247 lt!1369714))) lt!1369711) (= (v!39247 lt!1369714) (tuple2!40943 (Token!12143 lt!1369719 (rule!9440 (_1!23605 (v!39247 lt!1369714))) lt!1369692 lt!1369711) lt!1369700)))))

(assert (=> b!3925485 (= lt!1369692 (size!31270 lt!1369711))))

(declare-fun e!2428035 () Bool)

(assert (=> b!3925485 e!2428035))

(declare-fun res!1588062 () Bool)

(assert (=> b!3925485 (=> (not res!1588062) (not e!2428035))))

(assert (=> b!3925485 (= res!1588062 (= (value!205941 (_1!23605 (v!39247 lt!1369714))) lt!1369719))))

(declare-fun apply!9741 (TokenValueInjection!12892 BalanceConc!25020) TokenValue!6732)

(declare-fun seqFromList!4769 (List!41798) BalanceConc!25020)

(assert (=> b!3925485 (= lt!1369719 (apply!9741 (transformation!6502 (rule!9440 (_1!23605 (v!39247 lt!1369714)))) (seqFromList!4769 lt!1369711)))))

(assert (=> b!3925485 (= (_2!23605 (v!39247 lt!1369714)) lt!1369700)))

(declare-fun lt!1369701 () Unit!59980)

(assert (=> b!3925485 (= lt!1369701 (lemmaSamePrefixThenSameSuffix!1818 lt!1369711 (_2!23605 (v!39247 lt!1369714)) lt!1369711 lt!1369700 lt!1369688))))

(assert (=> b!3925485 (= lt!1369700 (getSuffix!2052 lt!1369688 lt!1369711))))

(assert (=> b!3925485 (isPrefix!3597 lt!1369711 lt!1369704)))

(assert (=> b!3925485 (= lt!1369704 (++!10761 lt!1369711 (_2!23605 (v!39247 lt!1369714))))))

(declare-fun lt!1369686 () Unit!59980)

(assert (=> b!3925485 (= lt!1369686 (lemmaConcatTwoListThenFirstIsPrefix!2460 lt!1369711 (_2!23605 (v!39247 lt!1369714))))))

(declare-fun list!15485 (BalanceConc!25020) List!41798)

(declare-fun charsOf!4326 (Token!12142) BalanceConc!25020)

(assert (=> b!3925485 (= lt!1369711 (list!15485 (charsOf!4326 (_1!23605 (v!39247 lt!1369714)))))))

(declare-fun ruleValid!2450 (LexerInterface!6091 Rule!12804) Bool)

(assert (=> b!3925485 (ruleValid!2450 thiss!20629 (rule!9440 (_1!23605 (v!39247 lt!1369714))))))

(declare-fun lt!1369721 () Unit!59980)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1530 (LexerInterface!6091 Rule!12804 List!41800) Unit!59980)

(assert (=> b!3925485 (= lt!1369721 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1530 thiss!20629 (rule!9440 (_1!23605 (v!39247 lt!1369714))) rules!2768))))

(declare-fun lt!1369695 () Unit!59980)

(declare-fun lemmaCharactersSize!1159 (Token!12142) Unit!59980)

(assert (=> b!3925485 (= lt!1369695 (lemmaCharactersSize!1159 (_1!23605 (v!39247 lt!1369714))))))

(declare-fun b!3925486 () Bool)

(declare-fun res!1588056 () Bool)

(assert (=> b!3925486 (=> res!1588056 e!2428049)))

(declare-fun lt!1369693 () tuple2!40944)

(assert (=> b!3925486 (= res!1588056 (not (= lt!1369693 (tuple2!40945 (++!10762 (Cons!41675 (_1!23605 (v!39247 lt!1369714)) Nil!41675) (_1!23606 lt!1369697)) (_2!23606 lt!1369697)))))))

(declare-fun bm!284705 () Bool)

(assert (=> bm!284705 (= call!284710 (lexList!1859 thiss!20629 rules!2768 (_2!23605 lt!1369691)))))

(declare-fun b!3925487 () Bool)

(declare-fun e!2428046 () Bool)

(declare-fun tp!1195160 () Bool)

(assert (=> b!3925487 (= e!2428043 (and tp!1195160 (inv!55862 (tag!7362 (rule!9440 (h!47095 prefixTokens!80)))) (inv!55866 (transformation!6502 (rule!9440 (h!47095 prefixTokens!80)))) e!2428046))))

(declare-fun b!3925488 () Bool)

(declare-fun tp!1195149 () Bool)

(assert (=> b!3925488 (= e!2428044 (and tp!1195149 (inv!55862 (tag!7362 (h!47096 rules!2768))) (inv!55866 (transformation!6502 (h!47096 rules!2768))) e!2428033))))

(declare-fun b!3925489 () Bool)

(assert (=> b!3925489 (= e!2428037 e!2428040)))

(declare-fun res!1588065 () Bool)

(assert (=> b!3925489 (=> (not res!1588065) (not e!2428040))))

(declare-fun lt!1369707 () List!41799)

(assert (=> b!3925489 (= res!1588065 (= lt!1369693 (tuple2!40945 lt!1369707 suffixResult!91)))))

(assert (=> b!3925489 (= lt!1369693 (lexList!1859 thiss!20629 rules!2768 lt!1369688))))

(assert (=> b!3925489 (= lt!1369707 (++!10762 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3925489 (= lt!1369688 (++!10761 prefix!426 suffix!1176))))

(declare-fun b!3925490 () Bool)

(declare-fun tp!1195155 () Bool)

(assert (=> b!3925490 (= e!2428025 (and tp_is_empty!19785 tp!1195155))))

(declare-fun b!3925491 () Bool)

(assert (=> b!3925491 (= e!2428023 false)))

(declare-fun b!3925492 () Bool)

(assert (=> b!3925492 (= e!2428035 (= (size!31269 (_1!23605 (v!39247 lt!1369714))) (size!31270 (originalCharacters!7102 (_1!23605 (v!39247 lt!1369714))))))))

(assert (=> b!3925493 (= e!2428046 (and tp!1195157 tp!1195158))))

(declare-fun b!3925494 () Bool)

(assert (=> b!3925494 (= e!2428050 e!2428027)))

(declare-fun res!1588075 () Bool)

(assert (=> b!3925494 (=> res!1588075 e!2428027)))

(assert (=> b!3925494 (= res!1588075 (>= lt!1369692 (size!31270 prefix!426)))))

(assert (=> b!3925494 (isPrefix!3597 lt!1369711 prefix!426)))

(declare-fun lt!1369703 () Unit!59980)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!275 (List!41798 List!41798 List!41798) Unit!59980)

(assert (=> b!3925494 (= lt!1369703 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!275 prefix!426 lt!1369711 lt!1369688))))

(assert (=> b!3925494 (isPrefix!3597 prefix!426 lt!1369688)))

(declare-fun lt!1369699 () Unit!59980)

(assert (=> b!3925494 (= lt!1369699 (lemmaConcatTwoListThenFirstIsPrefix!2460 prefix!426 suffix!1176))))

(assert (= (and start!368088 res!1588063) b!3925477))

(assert (= (and b!3925477 res!1588074) b!3925459))

(assert (= (and b!3925459 res!1588066) b!3925468))

(assert (= (and b!3925468 res!1588072) b!3925475))

(assert (= (and b!3925475 res!1588073) b!3925489))

(assert (= (and b!3925489 res!1588065) b!3925462))

(assert (= (and b!3925462 res!1588067) b!3925471))

(assert (= (and b!3925471 res!1588070) b!3925485))

(assert (= (and b!3925485 res!1588062) b!3925492))

(assert (= (and b!3925485 (not res!1588059)) b!3925486))

(assert (= (and b!3925486 (not res!1588056)) b!3925483))

(assert (= (and b!3925483 (not res!1588061)) b!3925481))

(assert (= (and b!3925481 c!682049) b!3925464))

(assert (= (and b!3925481 (not c!682049)) b!3925466))

(assert (= (and b!3925464 c!682050) b!3925484))

(assert (= (and b!3925464 (not c!682050)) b!3925467))

(assert (= (and b!3925484 c!682051) b!3925456))

(assert (= (and b!3925484 (not c!682051)) b!3925474))

(assert (= (and b!3925456 res!1588071) b!3925491))

(assert (= (and b!3925474 res!1588064) b!3925458))

(assert (= (or b!3925456 b!3925474) bm!284705))

(assert (= (and b!3925481 c!682048) b!3925463))

(assert (= (and b!3925481 (not c!682048)) b!3925457))

(assert (= (and b!3925481 (not res!1588069)) b!3925453))

(assert (= (and b!3925453 (not res!1588058)) b!3925494))

(assert (= (and b!3925494 (not res!1588075)) b!3925465))

(assert (= (and b!3925465 (not res!1588057)) b!3925473))

(assert (= (and b!3925473 (not res!1588060)) b!3925469))

(assert (= (and b!3925469 (not res!1588068)) b!3925454))

(assert (= (and start!368088 ((_ is Cons!41674) suffixResult!91)) b!3925472))

(assert (= (and start!368088 ((_ is Cons!41674) suffix!1176)) b!3925490))

(assert (= b!3925488 b!3925460))

(assert (= b!3925480 b!3925488))

(assert (= (and start!368088 ((_ is Cons!41676) rules!2768)) b!3925480))

(assert (= b!3925487 b!3925493))

(assert (= b!3925455 b!3925487))

(assert (= b!3925476 b!3925455))

(assert (= (and start!368088 ((_ is Cons!41675) prefixTokens!80)) b!3925476))

(assert (= b!3925479 b!3925461))

(assert (= b!3925482 b!3925479))

(assert (= b!3925470 b!3925482))

(assert (= (and start!368088 ((_ is Cons!41675) suffixTokens!72)) b!3925470))

(assert (= (and start!368088 ((_ is Cons!41674) prefix!426)) b!3925478))

(declare-fun m!4489561 () Bool)

(assert (=> b!3925455 m!4489561))

(declare-fun m!4489563 () Bool)

(assert (=> b!3925476 m!4489563))

(declare-fun m!4489565 () Bool)

(assert (=> b!3925485 m!4489565))

(declare-fun m!4489567 () Bool)

(assert (=> b!3925485 m!4489567))

(declare-fun m!4489569 () Bool)

(assert (=> b!3925485 m!4489569))

(declare-fun m!4489571 () Bool)

(assert (=> b!3925485 m!4489571))

(declare-fun m!4489573 () Bool)

(assert (=> b!3925485 m!4489573))

(declare-fun m!4489575 () Bool)

(assert (=> b!3925485 m!4489575))

(declare-fun m!4489577 () Bool)

(assert (=> b!3925485 m!4489577))

(declare-fun m!4489579 () Bool)

(assert (=> b!3925485 m!4489579))

(declare-fun m!4489581 () Bool)

(assert (=> b!3925485 m!4489581))

(assert (=> b!3925485 m!4489567))

(declare-fun m!4489583 () Bool)

(assert (=> b!3925485 m!4489583))

(declare-fun m!4489585 () Bool)

(assert (=> b!3925485 m!4489585))

(declare-fun m!4489587 () Bool)

(assert (=> b!3925485 m!4489587))

(assert (=> b!3925485 m!4489577))

(declare-fun m!4489589 () Bool)

(assert (=> b!3925485 m!4489589))

(declare-fun m!4489591 () Bool)

(assert (=> b!3925485 m!4489591))

(declare-fun m!4489593 () Bool)

(assert (=> b!3925484 m!4489593))

(declare-fun m!4489595 () Bool)

(assert (=> b!3925484 m!4489595))

(declare-fun m!4489597 () Bool)

(assert (=> b!3925479 m!4489597))

(declare-fun m!4489599 () Bool)

(assert (=> b!3925479 m!4489599))

(declare-fun m!4489601 () Bool)

(assert (=> b!3925482 m!4489601))

(declare-fun m!4489603 () Bool)

(assert (=> b!3925488 m!4489603))

(declare-fun m!4489605 () Bool)

(assert (=> b!3925488 m!4489605))

(declare-fun m!4489607 () Bool)

(assert (=> b!3925492 m!4489607))

(declare-fun m!4489609 () Bool)

(assert (=> b!3925486 m!4489609))

(declare-fun m!4489611 () Bool)

(assert (=> b!3925494 m!4489611))

(declare-fun m!4489613 () Bool)

(assert (=> b!3925494 m!4489613))

(declare-fun m!4489615 () Bool)

(assert (=> b!3925494 m!4489615))

(declare-fun m!4489617 () Bool)

(assert (=> b!3925494 m!4489617))

(declare-fun m!4489619 () Bool)

(assert (=> b!3925494 m!4489619))

(declare-fun m!4489621 () Bool)

(assert (=> b!3925462 m!4489621))

(declare-fun m!4489623 () Bool)

(assert (=> b!3925465 m!4489623))

(declare-fun m!4489625 () Bool)

(assert (=> b!3925465 m!4489625))

(declare-fun m!4489627 () Bool)

(assert (=> b!3925489 m!4489627))

(declare-fun m!4489629 () Bool)

(assert (=> b!3925489 m!4489629))

(declare-fun m!4489631 () Bool)

(assert (=> b!3925489 m!4489631))

(declare-fun m!4489633 () Bool)

(assert (=> b!3925474 m!4489633))

(declare-fun m!4489635 () Bool)

(assert (=> b!3925474 m!4489635))

(declare-fun m!4489637 () Bool)

(assert (=> b!3925453 m!4489637))

(declare-fun m!4489639 () Bool)

(assert (=> b!3925459 m!4489639))

(declare-fun m!4489641 () Bool)

(assert (=> bm!284705 m!4489641))

(assert (=> b!3925463 m!4489615))

(assert (=> b!3925463 m!4489617))

(declare-fun m!4489643 () Bool)

(assert (=> b!3925463 m!4489643))

(declare-fun m!4489645 () Bool)

(assert (=> b!3925463 m!4489645))

(declare-fun m!4489647 () Bool)

(assert (=> b!3925475 m!4489647))

(declare-fun m!4489649 () Bool)

(assert (=> b!3925471 m!4489649))

(declare-fun m!4489651 () Bool)

(assert (=> b!3925473 m!4489651))

(declare-fun m!4489653 () Bool)

(assert (=> b!3925456 m!4489653))

(declare-fun m!4489655 () Bool)

(assert (=> b!3925456 m!4489655))

(declare-fun m!4489657 () Bool)

(assert (=> b!3925487 m!4489657))

(declare-fun m!4489659 () Bool)

(assert (=> b!3925487 m!4489659))

(declare-fun m!4489661 () Bool)

(assert (=> b!3925454 m!4489661))

(declare-fun m!4489663 () Bool)

(assert (=> b!3925454 m!4489663))

(declare-fun m!4489665 () Bool)

(assert (=> b!3925454 m!4489665))

(declare-fun m!4489667 () Bool)

(assert (=> b!3925464 m!4489667))

(declare-fun m!4489669 () Bool)

(assert (=> b!3925464 m!4489669))

(declare-fun m!4489671 () Bool)

(assert (=> b!3925464 m!4489671))

(declare-fun m!4489673 () Bool)

(assert (=> b!3925464 m!4489673))

(declare-fun m!4489675 () Bool)

(assert (=> b!3925464 m!4489675))

(declare-fun m!4489677 () Bool)

(assert (=> b!3925468 m!4489677))

(declare-fun m!4489679 () Bool)

(assert (=> b!3925477 m!4489679))

(declare-fun m!4489681 () Bool)

(assert (=> b!3925481 m!4489681))

(declare-fun m!4489683 () Bool)

(assert (=> b!3925481 m!4489683))

(declare-fun m!4489685 () Bool)

(assert (=> b!3925469 m!4489685))

(declare-fun m!4489687 () Bool)

(assert (=> b!3925469 m!4489687))

(declare-fun m!4489689 () Bool)

(assert (=> b!3925469 m!4489689))

(declare-fun m!4489691 () Bool)

(assert (=> b!3925470 m!4489691))

(check-sat (not b!3925462) (not b!3925492) (not b!3925456) (not b!3925459) (not b_next!107703) (not b!3925486) (not b!3925494) b_and!299359 (not b!3925489) tp_is_empty!19785 (not b!3925474) (not b_next!107711) (not b!3925453) b_and!299355 (not b!3925488) (not b!3925490) (not b_next!107709) (not b!3925482) (not b!3925468) b_and!299361 (not b!3925455) (not b!3925477) (not b!3925473) (not b!3925454) (not b!3925478) (not b!3925471) (not b_next!107701) (not b!3925464) (not b!3925487) (not b!3925485) (not b!3925481) (not b!3925463) (not b_next!107707) b_and!299351 (not b!3925475) b_and!299353 (not b!3925479) (not b!3925469) (not b!3925472) b_and!299357 (not b!3925465) (not b!3925476) (not b!3925470) (not b!3925484) (not b_next!107705) (not bm!284705) (not b!3925480))
(check-sat (not b_next!107709) b_and!299361 (not b_next!107703) b_and!299359 (not b_next!107701) b_and!299353 b_and!299357 (not b_next!107711) (not b_next!107705) b_and!299355 (not b_next!107707) b_and!299351)
