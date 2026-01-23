; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!375120 () Bool)

(assert start!375120)

(declare-fun b!3986416 () Bool)

(declare-fun b_free!110721 () Bool)

(declare-fun b_next!111425 () Bool)

(assert (=> b!3986416 (= b_free!110721 (not b_next!111425))))

(declare-fun tp!1214824 () Bool)

(declare-fun b_and!306351 () Bool)

(assert (=> b!3986416 (= tp!1214824 b_and!306351)))

(declare-fun b_free!110723 () Bool)

(declare-fun b_next!111427 () Bool)

(assert (=> b!3986416 (= b_free!110723 (not b_next!111427))))

(declare-fun tp!1214812 () Bool)

(declare-fun b_and!306353 () Bool)

(assert (=> b!3986416 (= tp!1214812 b_and!306353)))

(declare-fun b!3986452 () Bool)

(declare-fun b_free!110725 () Bool)

(declare-fun b_next!111429 () Bool)

(assert (=> b!3986452 (= b_free!110725 (not b_next!111429))))

(declare-fun tp!1214816 () Bool)

(declare-fun b_and!306355 () Bool)

(assert (=> b!3986452 (= tp!1214816 b_and!306355)))

(declare-fun b_free!110727 () Bool)

(declare-fun b_next!111431 () Bool)

(assert (=> b!3986452 (= b_free!110727 (not b_next!111431))))

(declare-fun tp!1214818 () Bool)

(declare-fun b_and!306357 () Bool)

(assert (=> b!3986452 (= tp!1214818 b_and!306357)))

(declare-fun b!3986414 () Bool)

(declare-fun e!2470995 () Bool)

(assert (=> b!3986414 (= e!2470995 true)))

(declare-datatypes ((C!23484 0))(
  ( (C!23485 (val!13836 Int)) )
))
(declare-datatypes ((List!42764 0))(
  ( (Nil!42640) (Cons!42640 (h!48060 C!23484) (t!331563 List!42764)) )
))
(declare-fun lt!1403530 () List!42764)

(declare-fun lt!1403525 () List!42764)

(assert (=> b!3986414 (= lt!1403530 lt!1403525)))

(declare-fun lt!1403500 () List!42764)

(declare-datatypes ((Unit!61341 0))(
  ( (Unit!61342) )
))
(declare-fun lt!1403528 () Unit!61341)

(declare-fun lemmaIsPrefixSameLengthThenSameList!853 (List!42764 List!42764 List!42764) Unit!61341)

(assert (=> b!3986414 (= lt!1403528 (lemmaIsPrefixSameLengthThenSameList!853 lt!1403530 lt!1403525 lt!1403500))))

(declare-fun b!3986415 () Bool)

(declare-fun e!2470991 () Unit!61341)

(declare-fun Unit!61343 () Unit!61341)

(assert (=> b!3986415 (= e!2470991 Unit!61343)))

(declare-datatypes ((List!42765 0))(
  ( (Nil!42641) (Cons!42641 (h!48061 (_ BitVec 16)) (t!331564 List!42765)) )
))
(declare-datatypes ((TokenValue!6974 0))(
  ( (FloatLiteralValue!13948 (text!49263 List!42765)) (TokenValueExt!6973 (__x!26165 Int)) (Broken!34870 (value!212812 List!42765)) (Object!7097) (End!6974) (Def!6974) (Underscore!6974) (Match!6974) (Else!6974) (Error!6974) (Case!6974) (If!6974) (Extends!6974) (Abstract!6974) (Class!6974) (Val!6974) (DelimiterValue!13948 (del!7034 List!42765)) (KeywordValue!6980 (value!212813 List!42765)) (CommentValue!13948 (value!212814 List!42765)) (WhitespaceValue!13948 (value!212815 List!42765)) (IndentationValue!6974 (value!212816 List!42765)) (String!48587) (Int32!6974) (Broken!34871 (value!212817 List!42765)) (Boolean!6975) (Unit!61344) (OperatorValue!6977 (op!7034 List!42765)) (IdentifierValue!13948 (value!212818 List!42765)) (IdentifierValue!13949 (value!212819 List!42765)) (WhitespaceValue!13949 (value!212820 List!42765)) (True!13948) (False!13948) (Broken!34872 (value!212821 List!42765)) (Broken!34873 (value!212822 List!42765)) (True!13949) (RightBrace!6974) (RightBracket!6974) (Colon!6974) (Null!6974) (Comma!6974) (LeftBracket!6974) (False!13949) (LeftBrace!6974) (ImaginaryLiteralValue!6974 (text!49264 List!42765)) (StringLiteralValue!20922 (value!212823 List!42765)) (EOFValue!6974 (value!212824 List!42765)) (IdentValue!6974 (value!212825 List!42765)) (DelimiterValue!13949 (value!212826 List!42765)) (DedentValue!6974 (value!212827 List!42765)) (NewLineValue!6974 (value!212828 List!42765)) (IntegerValue!20922 (value!212829 (_ BitVec 32)) (text!49265 List!42765)) (IntegerValue!20923 (value!212830 Int) (text!49266 List!42765)) (Times!6974) (Or!6974) (Equal!6974) (Minus!6974) (Broken!34874 (value!212831 List!42765)) (And!6974) (Div!6974) (LessEqual!6974) (Mod!6974) (Concat!18623) (Not!6974) (Plus!6974) (SpaceValue!6974 (value!212832 List!42765)) (IntegerValue!20924 (value!212833 Int) (text!49267 List!42765)) (StringLiteralValue!20923 (text!49268 List!42765)) (FloatLiteralValue!13949 (text!49269 List!42765)) (BytesLiteralValue!6974 (value!212834 List!42765)) (CommentValue!13949 (value!212835 List!42765)) (StringLiteralValue!20924 (value!212836 List!42765)) (ErrorTokenValue!6974 (msg!7035 List!42765)) )
))
(declare-datatypes ((Regex!11649 0))(
  ( (ElementMatch!11649 (c!690158 C!23484)) (Concat!18624 (regOne!23810 Regex!11649) (regTwo!23810 Regex!11649)) (EmptyExpr!11649) (Star!11649 (reg!11978 Regex!11649)) (EmptyLang!11649) (Union!11649 (regOne!23811 Regex!11649) (regTwo!23811 Regex!11649)) )
))
(declare-datatypes ((String!48588 0))(
  ( (String!48589 (value!212837 String)) )
))
(declare-datatypes ((IArray!25915 0))(
  ( (IArray!25916 (innerList!13015 List!42764)) )
))
(declare-datatypes ((Conc!12955 0))(
  ( (Node!12955 (left!32229 Conc!12955) (right!32559 Conc!12955) (csize!26140 Int) (cheight!13166 Int)) (Leaf!20034 (xs!16261 IArray!25915) (csize!26141 Int)) (Empty!12955) )
))
(declare-datatypes ((BalanceConc!25504 0))(
  ( (BalanceConc!25505 (c!690159 Conc!12955)) )
))
(declare-datatypes ((TokenValueInjection!13376 0))(
  ( (TokenValueInjection!13377 (toValue!9232 Int) (toChars!9091 Int)) )
))
(declare-datatypes ((Rule!13288 0))(
  ( (Rule!13289 (regex!6744 Regex!11649) (tag!7604 String!48588) (isSeparator!6744 Bool) (transformation!6744 TokenValueInjection!13376)) )
))
(declare-datatypes ((Token!12626 0))(
  ( (Token!12627 (value!212838 TokenValue!6974) (rule!9756 Rule!13288) (size!31892 Int) (originalCharacters!7344 List!42764)) )
))
(declare-fun token!484 () Token!12626)

(declare-datatypes ((tuple2!41848 0))(
  ( (tuple2!41849 (_1!24058 Token!12626) (_2!24058 List!42764)) )
))
(declare-datatypes ((Option!9158 0))(
  ( (None!9157) (Some!9157 (v!39509 tuple2!41848)) )
))
(declare-fun lt!1403532 () Option!9158)

(declare-datatypes ((LexerInterface!6333 0))(
  ( (LexerInterfaceExt!6330 (__x!26166 Int)) (Lexer!6331) )
))
(declare-fun thiss!21717 () LexerInterface!6333)

(declare-fun lt!1403546 () Unit!61341)

(declare-datatypes ((List!42766 0))(
  ( (Nil!42642) (Cons!42642 (h!48062 Rule!13288) (t!331565 List!42766)) )
))
(declare-fun rules!2999 () List!42766)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!398 (LexerInterface!6333 List!42766 Rule!13288 List!42764 List!42764 List!42764 Rule!13288) Unit!61341)

(assert (=> b!3986415 (= lt!1403546 (lemmaMaxPrefixOutputsMaxPrefix!398 thiss!21717 rules!2999 (rule!9756 (_1!24058 (v!39509 lt!1403532))) lt!1403530 lt!1403500 lt!1403525 (rule!9756 token!484)))))

(assert (=> b!3986415 false))

(declare-fun e!2470997 () Bool)

(assert (=> b!3986416 (= e!2470997 (and tp!1214824 tp!1214812))))

(declare-fun b!3986418 () Bool)

(declare-fun e!2470963 () Unit!61341)

(declare-fun Unit!61345 () Unit!61341)

(assert (=> b!3986418 (= e!2470963 Unit!61345)))

(declare-fun b!3986419 () Bool)

(declare-fun e!2470993 () Bool)

(declare-fun tp_is_empty!20269 () Bool)

(declare-fun tp!1214819 () Bool)

(assert (=> b!3986419 (= e!2470993 (and tp_is_empty!20269 tp!1214819))))

(declare-fun b!3986420 () Bool)

(declare-fun e!2470975 () Bool)

(assert (=> b!3986420 (= e!2470975 false)))

(declare-fun b!3986421 () Bool)

(declare-fun e!2470998 () Bool)

(declare-fun tp!1214822 () Bool)

(assert (=> b!3986421 (= e!2470998 (and tp_is_empty!20269 tp!1214822))))

(declare-fun b!3986422 () Bool)

(declare-fun res!1616912 () Bool)

(declare-fun e!2470986 () Bool)

(assert (=> b!3986422 (=> (not res!1616912) (not e!2470986))))

(declare-fun rulesInvariant!5676 (LexerInterface!6333 List!42766) Bool)

(assert (=> b!3986422 (= res!1616912 (rulesInvariant!5676 thiss!21717 rules!2999))))

(declare-fun b!3986423 () Bool)

(declare-fun e!2470981 () Bool)

(declare-fun e!2470977 () Bool)

(assert (=> b!3986423 (= e!2470981 e!2470977)))

(declare-fun res!1616921 () Bool)

(assert (=> b!3986423 (=> res!1616921 e!2470977)))

(declare-fun lt!1403524 () List!42764)

(declare-fun lt!1403527 () List!42764)

(assert (=> b!3986423 (= res!1616921 (not (= lt!1403524 lt!1403527)))))

(declare-fun lt!1403514 () List!42764)

(declare-fun ++!11146 (List!42764 List!42764) List!42764)

(assert (=> b!3986423 (= lt!1403524 (++!11146 lt!1403525 lt!1403514))))

(declare-fun getSuffix!2262 (List!42764 List!42764) List!42764)

(assert (=> b!3986423 (= lt!1403514 (getSuffix!2262 lt!1403527 lt!1403525))))

(declare-fun e!2470964 () Bool)

(assert (=> b!3986423 e!2470964))

(declare-fun res!1616919 () Bool)

(assert (=> b!3986423 (=> (not res!1616919) (not e!2470964))))

(declare-fun isPrefix!3831 (List!42764 List!42764) Bool)

(assert (=> b!3986423 (= res!1616919 (isPrefix!3831 lt!1403527 lt!1403527))))

(declare-fun lt!1403506 () Unit!61341)

(declare-fun lemmaIsPrefixRefl!2423 (List!42764 List!42764) Unit!61341)

(assert (=> b!3986423 (= lt!1403506 (lemmaIsPrefixRefl!2423 lt!1403527 lt!1403527))))

(declare-fun b!3986424 () Bool)

(declare-fun e!2470985 () Bool)

(declare-fun e!2470989 () Bool)

(assert (=> b!3986424 (= e!2470985 e!2470989)))

(declare-fun res!1616920 () Bool)

(assert (=> b!3986424 (=> (not res!1616920) (not e!2470989))))

(declare-fun lt!1403529 () Option!9158)

(declare-fun maxPrefix!3631 (LexerInterface!6333 List!42766 List!42764) Option!9158)

(assert (=> b!3986424 (= res!1616920 (= (maxPrefix!3631 thiss!21717 rules!2999 lt!1403527) lt!1403529))))

(declare-fun lt!1403545 () tuple2!41848)

(assert (=> b!3986424 (= lt!1403529 (Some!9157 lt!1403545))))

(declare-fun suffixResult!105 () List!42764)

(assert (=> b!3986424 (= lt!1403545 (tuple2!41849 token!484 suffixResult!105))))

(declare-fun prefix!494 () List!42764)

(declare-fun suffix!1299 () List!42764)

(assert (=> b!3986424 (= lt!1403527 (++!11146 prefix!494 suffix!1299))))

(declare-fun lt!1403499 () Int)

(declare-fun b!3986425 () Bool)

(assert (=> b!3986425 (= e!2470964 (and (= (size!31892 token!484) lt!1403499) (= (originalCharacters!7344 token!484) lt!1403525)))))

(declare-fun b!3986426 () Bool)

(declare-fun e!2470966 () Bool)

(declare-fun e!2470980 () Bool)

(assert (=> b!3986426 (= e!2470966 e!2470980)))

(declare-fun res!1616909 () Bool)

(assert (=> b!3986426 (=> res!1616909 e!2470980)))

(declare-fun lt!1403539 () List!42764)

(assert (=> b!3986426 (= res!1616909 (not (= lt!1403539 lt!1403527)))))

(declare-fun lt!1403521 () List!42764)

(assert (=> b!3986426 (= lt!1403539 (++!11146 prefix!494 lt!1403521))))

(declare-fun lt!1403511 () List!42764)

(assert (=> b!3986426 (= lt!1403539 (++!11146 lt!1403500 lt!1403511))))

(declare-fun newSuffix!27 () List!42764)

(declare-fun lt!1403515 () Unit!61341)

(declare-fun lemmaConcatAssociativity!2466 (List!42764 List!42764 List!42764) Unit!61341)

(assert (=> b!3986426 (= lt!1403515 (lemmaConcatAssociativity!2466 prefix!494 newSuffix!27 lt!1403511))))

(declare-fun b!3986427 () Bool)

(declare-fun res!1616914 () Bool)

(assert (=> b!3986427 (=> (not res!1616914) (not e!2470964))))

(declare-fun lt!1403494 () TokenValue!6974)

(assert (=> b!3986427 (= res!1616914 (= (value!212838 token!484) lt!1403494))))

(declare-fun b!3986428 () Bool)

(declare-fun e!2470972 () Bool)

(assert (=> b!3986428 (= e!2470972 e!2470966)))

(declare-fun res!1616934 () Bool)

(assert (=> b!3986428 (=> res!1616934 e!2470966)))

(assert (=> b!3986428 (= res!1616934 (not (= lt!1403521 suffix!1299)))))

(assert (=> b!3986428 (= lt!1403521 (++!11146 newSuffix!27 lt!1403511))))

(assert (=> b!3986428 (= lt!1403511 (getSuffix!2262 suffix!1299 newSuffix!27))))

(declare-fun b!3986429 () Bool)

(declare-fun e!2470978 () Bool)

(declare-fun tp!1214815 () Bool)

(declare-fun inv!56952 (String!48588) Bool)

(declare-fun inv!56955 (TokenValueInjection!13376) Bool)

(assert (=> b!3986429 (= e!2470978 (and tp!1214815 (inv!56952 (tag!7604 (h!48062 rules!2999))) (inv!56955 (transformation!6744 (h!48062 rules!2999))) e!2470997))))

(declare-fun b!3986430 () Bool)

(declare-fun e!2470990 () Bool)

(declare-fun e!2470971 () Bool)

(assert (=> b!3986430 (= e!2470990 e!2470971)))

(declare-fun res!1616930 () Bool)

(assert (=> b!3986430 (=> res!1616930 e!2470971)))

(declare-fun lt!1403549 () Option!9158)

(assert (=> b!3986430 (= res!1616930 (not (= lt!1403549 lt!1403529)))))

(declare-fun lt!1403520 () Token!12626)

(assert (=> b!3986430 (= lt!1403549 (Some!9157 (tuple2!41849 lt!1403520 suffixResult!105)))))

(declare-fun maxPrefixOneRule!2665 (LexerInterface!6333 Rule!13288 List!42764) Option!9158)

(assert (=> b!3986430 (= lt!1403549 (maxPrefixOneRule!2665 thiss!21717 (rule!9756 token!484) lt!1403527))))

(assert (=> b!3986430 (= lt!1403520 (Token!12627 lt!1403494 (rule!9756 token!484) lt!1403499 lt!1403525))))

(declare-fun apply!9955 (TokenValueInjection!13376 BalanceConc!25504) TokenValue!6974)

(declare-fun seqFromList!4983 (List!42764) BalanceConc!25504)

(assert (=> b!3986430 (= lt!1403494 (apply!9955 (transformation!6744 (rule!9756 token!484)) (seqFromList!4983 lt!1403525)))))

(declare-fun lt!1403535 () Unit!61341)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1487 (LexerInterface!6333 List!42766 List!42764 List!42764 List!42764 Rule!13288) Unit!61341)

(assert (=> b!3986430 (= lt!1403535 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1487 thiss!21717 rules!2999 lt!1403525 lt!1403527 suffixResult!105 (rule!9756 token!484)))))

(declare-fun lt!1403526 () List!42764)

(assert (=> b!3986430 (= lt!1403526 suffixResult!105)))

(declare-fun lt!1403522 () Unit!61341)

(declare-fun lemmaSamePrefixThenSameSuffix!2018 (List!42764 List!42764 List!42764 List!42764 List!42764) Unit!61341)

(assert (=> b!3986430 (= lt!1403522 (lemmaSamePrefixThenSameSuffix!2018 lt!1403525 lt!1403526 lt!1403525 suffixResult!105 lt!1403527))))

(declare-fun lt!1403547 () List!42764)

(assert (=> b!3986430 (isPrefix!3831 lt!1403525 lt!1403547)))

(declare-fun lt!1403523 () Unit!61341)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2674 (List!42764 List!42764) Unit!61341)

(assert (=> b!3986430 (= lt!1403523 (lemmaConcatTwoListThenFirstIsPrefix!2674 lt!1403525 lt!1403526))))

(declare-fun b!3986431 () Bool)

(declare-fun e!2470983 () Bool)

(assert (=> b!3986431 (= e!2470989 (not e!2470983))))

(declare-fun res!1616913 () Bool)

(assert (=> b!3986431 (=> res!1616913 e!2470983)))

(declare-fun lt!1403538 () List!42764)

(assert (=> b!3986431 (= res!1616913 (not (= lt!1403538 lt!1403527)))))

(assert (=> b!3986431 (= lt!1403538 (++!11146 lt!1403525 suffixResult!105))))

(declare-fun lt!1403510 () Unit!61341)

(declare-fun lemmaInv!959 (TokenValueInjection!13376) Unit!61341)

(assert (=> b!3986431 (= lt!1403510 (lemmaInv!959 (transformation!6744 (rule!9756 token!484))))))

(declare-fun ruleValid!2676 (LexerInterface!6333 Rule!13288) Bool)

(assert (=> b!3986431 (ruleValid!2676 thiss!21717 (rule!9756 token!484))))

(declare-fun lt!1403498 () Unit!61341)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1750 (LexerInterface!6333 Rule!13288 List!42766) Unit!61341)

(assert (=> b!3986431 (= lt!1403498 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1750 thiss!21717 (rule!9756 token!484) rules!2999))))

(declare-fun b!3986432 () Bool)

(declare-fun e!2470979 () Bool)

(assert (=> b!3986432 (= e!2470980 e!2470979)))

(declare-fun res!1616935 () Bool)

(assert (=> b!3986432 (=> res!1616935 e!2470979)))

(assert (=> b!3986432 (= res!1616935 (not (isPrefix!3831 lt!1403530 lt!1403527)))))

(assert (=> b!3986432 (isPrefix!3831 lt!1403530 lt!1403539)))

(declare-fun lt!1403533 () Unit!61341)

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!664 (List!42764 List!42764 List!42764) Unit!61341)

(assert (=> b!3986432 (= lt!1403533 (lemmaPrefixStaysPrefixWhenAddingToSuffix!664 lt!1403530 lt!1403500 lt!1403511))))

(declare-fun b!3986433 () Bool)

(declare-fun e!2470974 () Bool)

(assert (=> b!3986433 (= e!2470974 e!2470985)))

(declare-fun res!1616936 () Bool)

(assert (=> b!3986433 (=> (not res!1616936) (not e!2470985))))

(declare-fun lt!1403536 () List!42764)

(assert (=> b!3986433 (= res!1616936 (= lt!1403536 lt!1403500))))

(assert (=> b!3986433 (= lt!1403500 (++!11146 prefix!494 newSuffix!27))))

(declare-fun newSuffixResult!27 () List!42764)

(assert (=> b!3986433 (= lt!1403536 (++!11146 lt!1403525 newSuffixResult!27))))

(declare-fun b!3986434 () Bool)

(declare-fun e!2470965 () Bool)

(declare-fun e!2470982 () Bool)

(assert (=> b!3986434 (= e!2470965 e!2470982)))

(declare-fun res!1616910 () Bool)

(assert (=> b!3986434 (=> res!1616910 e!2470982)))

(declare-fun lt!1403513 () List!42764)

(assert (=> b!3986434 (= res!1616910 (not (= lt!1403513 prefix!494)))))

(declare-fun lt!1403495 () List!42764)

(assert (=> b!3986434 (= lt!1403513 (++!11146 lt!1403525 lt!1403495))))

(assert (=> b!3986434 (= lt!1403495 (getSuffix!2262 prefix!494 lt!1403525))))

(assert (=> b!3986434 (isPrefix!3831 lt!1403525 prefix!494)))

(declare-fun lt!1403551 () Unit!61341)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!409 (List!42764 List!42764 List!42764) Unit!61341)

(assert (=> b!3986434 (= lt!1403551 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!409 prefix!494 lt!1403525 lt!1403527))))

(declare-fun b!3986435 () Bool)

(assert (=> b!3986435 (= e!2470983 e!2470965)))

(declare-fun res!1616923 () Bool)

(assert (=> b!3986435 (=> res!1616923 e!2470965)))

(assert (=> b!3986435 (= res!1616923 (not (isPrefix!3831 lt!1403525 lt!1403527)))))

(assert (=> b!3986435 (isPrefix!3831 prefix!494 lt!1403527)))

(declare-fun lt!1403543 () Unit!61341)

(assert (=> b!3986435 (= lt!1403543 (lemmaConcatTwoListThenFirstIsPrefix!2674 prefix!494 suffix!1299))))

(assert (=> b!3986435 (isPrefix!3831 lt!1403525 lt!1403538)))

(declare-fun lt!1403505 () Unit!61341)

(assert (=> b!3986435 (= lt!1403505 (lemmaConcatTwoListThenFirstIsPrefix!2674 lt!1403525 suffixResult!105))))

(declare-fun b!3986436 () Bool)

(declare-fun res!1616915 () Bool)

(assert (=> b!3986436 (=> (not res!1616915) (not e!2470964))))

(declare-fun size!31893 (List!42764) Int)

(assert (=> b!3986436 (= res!1616915 (= (size!31892 token!484) (size!31893 (originalCharacters!7344 token!484))))))

(declare-fun b!3986437 () Bool)

(declare-fun e!2470992 () Bool)

(assert (=> b!3986437 (= e!2470979 e!2470992)))

(declare-fun res!1616911 () Bool)

(assert (=> b!3986437 (=> res!1616911 e!2470992)))

(declare-fun lt!1403502 () List!42764)

(assert (=> b!3986437 (= res!1616911 (not (= lt!1403502 lt!1403500)))))

(declare-fun lt!1403550 () List!42764)

(assert (=> b!3986437 (= lt!1403502 (++!11146 lt!1403530 lt!1403550))))

(assert (=> b!3986437 (= lt!1403550 (getSuffix!2262 lt!1403500 lt!1403530))))

(declare-fun b!3986438 () Bool)

(declare-fun e!2470994 () Bool)

(declare-fun tp!1214813 () Bool)

(assert (=> b!3986438 (= e!2470994 (and e!2470978 tp!1214813))))

(declare-fun b!3986439 () Bool)

(declare-fun res!1616928 () Bool)

(assert (=> b!3986439 (=> res!1616928 e!2470979)))

(declare-fun lt!1403553 () List!42764)

(assert (=> b!3986439 (= res!1616928 (not (= lt!1403553 lt!1403500)))))

(declare-fun b!3986440 () Bool)

(declare-fun e!2470988 () Bool)

(assert (=> b!3986440 (= e!2470977 e!2470988)))

(declare-fun res!1616922 () Bool)

(assert (=> b!3986440 (=> res!1616922 e!2470988)))

(get-info :version)

(assert (=> b!3986440 (= res!1616922 (not ((_ is Some!9157) lt!1403532)))))

(assert (=> b!3986440 (= lt!1403532 (maxPrefix!3631 thiss!21717 rules!2999 lt!1403500))))

(assert (=> b!3986440 (and (= suffixResult!105 lt!1403514) (= lt!1403545 (tuple2!41849 lt!1403520 lt!1403514)))))

(declare-fun lt!1403509 () Unit!61341)

(assert (=> b!3986440 (= lt!1403509 (lemmaSamePrefixThenSameSuffix!2018 lt!1403525 suffixResult!105 lt!1403525 lt!1403514 lt!1403527))))

(assert (=> b!3986440 (isPrefix!3831 lt!1403525 lt!1403524)))

(declare-fun lt!1403496 () Unit!61341)

(assert (=> b!3986440 (= lt!1403496 (lemmaConcatTwoListThenFirstIsPrefix!2674 lt!1403525 lt!1403514))))

(declare-fun b!3986441 () Bool)

(declare-fun res!1616931 () Bool)

(assert (=> b!3986441 (=> (not res!1616931) (not e!2470986))))

(assert (=> b!3986441 (= res!1616931 (isPrefix!3831 newSuffix!27 suffix!1299))))

(declare-fun b!3986442 () Bool)

(assert (=> b!3986442 (= e!2470988 e!2470972)))

(declare-fun res!1616929 () Bool)

(assert (=> b!3986442 (=> res!1616929 e!2470972)))

(declare-fun lt!1403531 () Option!9158)

(assert (=> b!3986442 (= res!1616929 (not (= lt!1403531 (Some!9157 (v!39509 lt!1403532)))))))

(assert (=> b!3986442 (isPrefix!3831 lt!1403530 (++!11146 lt!1403530 newSuffixResult!27))))

(declare-fun lt!1403519 () Unit!61341)

(assert (=> b!3986442 (= lt!1403519 (lemmaConcatTwoListThenFirstIsPrefix!2674 lt!1403530 newSuffixResult!27))))

(assert (=> b!3986442 (isPrefix!3831 lt!1403530 lt!1403553)))

(assert (=> b!3986442 (= lt!1403553 (++!11146 lt!1403530 (_2!24058 (v!39509 lt!1403532))))))

(declare-fun lt!1403508 () Unit!61341)

(assert (=> b!3986442 (= lt!1403508 (lemmaConcatTwoListThenFirstIsPrefix!2674 lt!1403530 (_2!24058 (v!39509 lt!1403532))))))

(declare-fun lt!1403501 () TokenValue!6974)

(declare-fun lt!1403548 () Int)

(assert (=> b!3986442 (= lt!1403531 (Some!9157 (tuple2!41849 (Token!12627 lt!1403501 (rule!9756 (_1!24058 (v!39509 lt!1403532))) lt!1403548 lt!1403530) (_2!24058 (v!39509 lt!1403532)))))))

(assert (=> b!3986442 (= lt!1403531 (maxPrefixOneRule!2665 thiss!21717 (rule!9756 (_1!24058 (v!39509 lt!1403532))) lt!1403500))))

(assert (=> b!3986442 (= lt!1403548 (size!31893 lt!1403530))))

(assert (=> b!3986442 (= lt!1403501 (apply!9955 (transformation!6744 (rule!9756 (_1!24058 (v!39509 lt!1403532)))) (seqFromList!4983 lt!1403530)))))

(declare-fun lt!1403540 () Unit!61341)

(assert (=> b!3986442 (= lt!1403540 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1487 thiss!21717 rules!2999 lt!1403530 lt!1403500 (_2!24058 (v!39509 lt!1403532)) (rule!9756 (_1!24058 (v!39509 lt!1403532)))))))

(declare-fun list!15828 (BalanceConc!25504) List!42764)

(declare-fun charsOf!4560 (Token!12626) BalanceConc!25504)

(assert (=> b!3986442 (= lt!1403530 (list!15828 (charsOf!4560 (_1!24058 (v!39509 lt!1403532)))))))

(declare-fun lt!1403517 () Unit!61341)

(assert (=> b!3986442 (= lt!1403517 (lemmaInv!959 (transformation!6744 (rule!9756 (_1!24058 (v!39509 lt!1403532))))))))

(assert (=> b!3986442 (ruleValid!2676 thiss!21717 (rule!9756 (_1!24058 (v!39509 lt!1403532))))))

(declare-fun lt!1403512 () Unit!61341)

(assert (=> b!3986442 (= lt!1403512 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1750 thiss!21717 (rule!9756 (_1!24058 (v!39509 lt!1403532))) rules!2999))))

(declare-fun lt!1403504 () Unit!61341)

(declare-fun lemmaCharactersSize!1339 (Token!12626) Unit!61341)

(assert (=> b!3986442 (= lt!1403504 (lemmaCharactersSize!1339 token!484))))

(declare-fun lt!1403507 () Unit!61341)

(assert (=> b!3986442 (= lt!1403507 (lemmaCharactersSize!1339 (_1!24058 (v!39509 lt!1403532))))))

(declare-fun tp!1214823 () Bool)

(declare-fun b!3986443 () Bool)

(declare-fun e!2470996 () Bool)

(declare-fun e!2470969 () Bool)

(assert (=> b!3986443 (= e!2470969 (and tp!1214823 (inv!56952 (tag!7604 (rule!9756 token!484))) (inv!56955 (transformation!6744 (rule!9756 token!484))) e!2470996))))

(declare-fun b!3986444 () Bool)

(declare-fun res!1616918 () Bool)

(assert (=> b!3986444 (=> res!1616918 e!2470995)))

(assert (=> b!3986444 (= res!1616918 (not (isPrefix!3831 lt!1403530 lt!1403500)))))

(declare-fun res!1616917 () Bool)

(assert (=> start!375120 (=> (not res!1616917) (not e!2470986))))

(assert (=> start!375120 (= res!1616917 ((_ is Lexer!6331) thiss!21717))))

(assert (=> start!375120 e!2470986))

(assert (=> start!375120 e!2470998))

(declare-fun e!2470987 () Bool)

(declare-fun inv!56956 (Token!12626) Bool)

(assert (=> start!375120 (and (inv!56956 token!484) e!2470987)))

(assert (=> start!375120 e!2470993))

(declare-fun e!2470967 () Bool)

(assert (=> start!375120 e!2470967))

(declare-fun e!2470984 () Bool)

(assert (=> start!375120 e!2470984))

(assert (=> start!375120 true))

(assert (=> start!375120 e!2470994))

(declare-fun e!2470970 () Bool)

(assert (=> start!375120 e!2470970))

(declare-fun b!3986417 () Bool)

(declare-fun res!1616933 () Bool)

(assert (=> b!3986417 (=> (not res!1616933) (not e!2470986))))

(assert (=> b!3986417 (= res!1616933 (>= (size!31893 suffix!1299) (size!31893 newSuffix!27)))))

(declare-fun b!3986445 () Bool)

(assert (=> b!3986445 (= e!2470982 e!2470990)))

(declare-fun res!1616925 () Bool)

(assert (=> b!3986445 (=> res!1616925 e!2470990)))

(declare-fun lt!1403518 () List!42764)

(assert (=> b!3986445 (= res!1616925 (or (not (= lt!1403527 lt!1403518)) (not (= lt!1403527 lt!1403547))))))

(assert (=> b!3986445 (= lt!1403518 lt!1403547)))

(assert (=> b!3986445 (= lt!1403547 (++!11146 lt!1403525 lt!1403526))))

(assert (=> b!3986445 (= lt!1403518 (++!11146 lt!1403513 suffix!1299))))

(assert (=> b!3986445 (= lt!1403526 (++!11146 lt!1403495 suffix!1299))))

(declare-fun lt!1403541 () Unit!61341)

(assert (=> b!3986445 (= lt!1403541 (lemmaConcatAssociativity!2466 lt!1403525 lt!1403495 suffix!1299))))

(declare-fun b!3986446 () Bool)

(assert (=> b!3986446 (= e!2470992 e!2470995)))

(declare-fun res!1616932 () Bool)

(assert (=> b!3986446 (=> res!1616932 e!2470995)))

(assert (=> b!3986446 (= res!1616932 (not (= lt!1403499 lt!1403548)))))

(declare-fun lt!1403537 () Unit!61341)

(assert (=> b!3986446 (= lt!1403537 e!2470991)))

(declare-fun c!690156 () Bool)

(assert (=> b!3986446 (= c!690156 (< lt!1403548 lt!1403499))))

(declare-fun lt!1403497 () Unit!61341)

(assert (=> b!3986446 (= lt!1403497 e!2470963)))

(declare-fun c!690157 () Bool)

(assert (=> b!3986446 (= c!690157 (> lt!1403548 lt!1403499))))

(assert (=> b!3986446 (= (_2!24058 (v!39509 lt!1403532)) lt!1403550)))

(declare-fun lt!1403544 () Unit!61341)

(assert (=> b!3986446 (= lt!1403544 (lemmaSamePrefixThenSameSuffix!2018 lt!1403530 (_2!24058 (v!39509 lt!1403532)) lt!1403530 lt!1403550 lt!1403500))))

(assert (=> b!3986446 (isPrefix!3831 lt!1403530 lt!1403502)))

(declare-fun lt!1403503 () Unit!61341)

(assert (=> b!3986446 (= lt!1403503 (lemmaConcatTwoListThenFirstIsPrefix!2674 lt!1403530 lt!1403550))))

(declare-fun b!3986447 () Bool)

(assert (=> b!3986447 (= e!2470971 e!2470981)))

(declare-fun res!1616916 () Bool)

(assert (=> b!3986447 (=> res!1616916 e!2470981)))

(declare-fun matchR!5626 (Regex!11649 List!42764) Bool)

(assert (=> b!3986447 (= res!1616916 (not (matchR!5626 (regex!6744 (rule!9756 token!484)) lt!1403525)))))

(assert (=> b!3986447 (isPrefix!3831 lt!1403525 lt!1403500)))

(declare-fun lt!1403542 () Unit!61341)

(assert (=> b!3986447 (= lt!1403542 (lemmaPrefixStaysPrefixWhenAddingToSuffix!664 lt!1403525 prefix!494 newSuffix!27))))

(declare-fun lt!1403552 () Unit!61341)

(assert (=> b!3986447 (= lt!1403552 (lemmaPrefixStaysPrefixWhenAddingToSuffix!664 lt!1403525 prefix!494 suffix!1299))))

(declare-fun b!3986448 () Bool)

(declare-fun tp!1214814 () Bool)

(assert (=> b!3986448 (= e!2470970 (and tp_is_empty!20269 tp!1214814))))

(declare-fun b!3986449 () Bool)

(assert (=> b!3986449 (= e!2470986 e!2470974)))

(declare-fun res!1616924 () Bool)

(assert (=> b!3986449 (=> (not res!1616924) (not e!2470974))))

(declare-fun lt!1403534 () Int)

(assert (=> b!3986449 (= res!1616924 (>= lt!1403534 lt!1403499))))

(assert (=> b!3986449 (= lt!1403499 (size!31893 lt!1403525))))

(assert (=> b!3986449 (= lt!1403534 (size!31893 prefix!494))))

(assert (=> b!3986449 (= lt!1403525 (list!15828 (charsOf!4560 token!484)))))

(declare-fun b!3986450 () Bool)

(declare-fun tp!1214820 () Bool)

(assert (=> b!3986450 (= e!2470984 (and tp_is_empty!20269 tp!1214820))))

(declare-fun tp!1214821 () Bool)

(declare-fun b!3986451 () Bool)

(declare-fun inv!21 (TokenValue!6974) Bool)

(assert (=> b!3986451 (= e!2470987 (and (inv!21 (value!212838 token!484)) e!2470969 tp!1214821))))

(assert (=> b!3986452 (= e!2470996 (and tp!1214816 tp!1214818))))

(declare-fun b!3986453 () Bool)

(declare-fun tp!1214817 () Bool)

(assert (=> b!3986453 (= e!2470967 (and tp_is_empty!20269 tp!1214817))))

(declare-fun b!3986454 () Bool)

(declare-fun Unit!61346 () Unit!61341)

(assert (=> b!3986454 (= e!2470991 Unit!61346)))

(declare-fun b!3986455 () Bool)

(declare-fun res!1616927 () Bool)

(assert (=> b!3986455 (=> (not res!1616927) (not e!2470986))))

(declare-fun isEmpty!25484 (List!42766) Bool)

(assert (=> b!3986455 (= res!1616927 (not (isEmpty!25484 rules!2999)))))

(declare-fun b!3986456 () Bool)

(declare-fun Unit!61347 () Unit!61341)

(assert (=> b!3986456 (= e!2470963 Unit!61347)))

(declare-fun lt!1403516 () Unit!61341)

(assert (=> b!3986456 (= lt!1403516 (lemmaMaxPrefixOutputsMaxPrefix!398 thiss!21717 rules!2999 (rule!9756 token!484) lt!1403525 lt!1403527 lt!1403530 (rule!9756 (_1!24058 (v!39509 lt!1403532)))))))

(declare-fun res!1616926 () Bool)

(assert (=> b!3986456 (= res!1616926 (not (matchR!5626 (regex!6744 (rule!9756 (_1!24058 (v!39509 lt!1403532)))) lt!1403530)))))

(assert (=> b!3986456 (=> (not res!1616926) (not e!2470975))))

(assert (=> b!3986456 e!2470975))

(assert (= (and start!375120 res!1616917) b!3986455))

(assert (= (and b!3986455 res!1616927) b!3986422))

(assert (= (and b!3986422 res!1616912) b!3986417))

(assert (= (and b!3986417 res!1616933) b!3986441))

(assert (= (and b!3986441 res!1616931) b!3986449))

(assert (= (and b!3986449 res!1616924) b!3986433))

(assert (= (and b!3986433 res!1616936) b!3986424))

(assert (= (and b!3986424 res!1616920) b!3986431))

(assert (= (and b!3986431 (not res!1616913)) b!3986435))

(assert (= (and b!3986435 (not res!1616923)) b!3986434))

(assert (= (and b!3986434 (not res!1616910)) b!3986445))

(assert (= (and b!3986445 (not res!1616925)) b!3986430))

(assert (= (and b!3986430 (not res!1616930)) b!3986447))

(assert (= (and b!3986447 (not res!1616916)) b!3986423))

(assert (= (and b!3986423 res!1616919) b!3986427))

(assert (= (and b!3986427 res!1616914) b!3986436))

(assert (= (and b!3986436 res!1616915) b!3986425))

(assert (= (and b!3986423 (not res!1616921)) b!3986440))

(assert (= (and b!3986440 (not res!1616922)) b!3986442))

(assert (= (and b!3986442 (not res!1616929)) b!3986428))

(assert (= (and b!3986428 (not res!1616934)) b!3986426))

(assert (= (and b!3986426 (not res!1616909)) b!3986432))

(assert (= (and b!3986432 (not res!1616935)) b!3986439))

(assert (= (and b!3986439 (not res!1616928)) b!3986437))

(assert (= (and b!3986437 (not res!1616911)) b!3986446))

(assert (= (and b!3986446 c!690157) b!3986456))

(assert (= (and b!3986446 (not c!690157)) b!3986418))

(assert (= (and b!3986456 res!1616926) b!3986420))

(assert (= (and b!3986446 c!690156) b!3986415))

(assert (= (and b!3986446 (not c!690156)) b!3986454))

(assert (= (and b!3986446 (not res!1616932)) b!3986444))

(assert (= (and b!3986444 (not res!1616918)) b!3986414))

(assert (= (and start!375120 ((_ is Cons!42640) prefix!494)) b!3986421))

(assert (= b!3986443 b!3986452))

(assert (= b!3986451 b!3986443))

(assert (= start!375120 b!3986451))

(assert (= (and start!375120 ((_ is Cons!42640) suffixResult!105)) b!3986419))

(assert (= (and start!375120 ((_ is Cons!42640) suffix!1299)) b!3986453))

(assert (= (and start!375120 ((_ is Cons!42640) newSuffix!27)) b!3986450))

(assert (= b!3986429 b!3986416))

(assert (= b!3986438 b!3986429))

(assert (= (and start!375120 ((_ is Cons!42642) rules!2999)) b!3986438))

(assert (= (and start!375120 ((_ is Cons!42640) newSuffixResult!27)) b!3986448))

(declare-fun m!4562717 () Bool)

(assert (=> b!3986444 m!4562717))

(declare-fun m!4562719 () Bool)

(assert (=> b!3986435 m!4562719))

(declare-fun m!4562721 () Bool)

(assert (=> b!3986435 m!4562721))

(declare-fun m!4562723 () Bool)

(assert (=> b!3986435 m!4562723))

(declare-fun m!4562725 () Bool)

(assert (=> b!3986435 m!4562725))

(declare-fun m!4562727 () Bool)

(assert (=> b!3986435 m!4562727))

(declare-fun m!4562729 () Bool)

(assert (=> start!375120 m!4562729))

(declare-fun m!4562731 () Bool)

(assert (=> b!3986456 m!4562731))

(declare-fun m!4562733 () Bool)

(assert (=> b!3986456 m!4562733))

(declare-fun m!4562735 () Bool)

(assert (=> b!3986414 m!4562735))

(declare-fun m!4562737 () Bool)

(assert (=> b!3986445 m!4562737))

(declare-fun m!4562739 () Bool)

(assert (=> b!3986445 m!4562739))

(declare-fun m!4562741 () Bool)

(assert (=> b!3986445 m!4562741))

(declare-fun m!4562743 () Bool)

(assert (=> b!3986445 m!4562743))

(declare-fun m!4562745 () Bool)

(assert (=> b!3986429 m!4562745))

(declare-fun m!4562747 () Bool)

(assert (=> b!3986429 m!4562747))

(declare-fun m!4562749 () Bool)

(assert (=> b!3986431 m!4562749))

(declare-fun m!4562751 () Bool)

(assert (=> b!3986431 m!4562751))

(declare-fun m!4562753 () Bool)

(assert (=> b!3986431 m!4562753))

(declare-fun m!4562755 () Bool)

(assert (=> b!3986431 m!4562755))

(declare-fun m!4562757 () Bool)

(assert (=> b!3986424 m!4562757))

(declare-fun m!4562759 () Bool)

(assert (=> b!3986424 m!4562759))

(declare-fun m!4562761 () Bool)

(assert (=> b!3986422 m!4562761))

(declare-fun m!4562763 () Bool)

(assert (=> b!3986417 m!4562763))

(declare-fun m!4562765 () Bool)

(assert (=> b!3986417 m!4562765))

(declare-fun m!4562767 () Bool)

(assert (=> b!3986426 m!4562767))

(declare-fun m!4562769 () Bool)

(assert (=> b!3986426 m!4562769))

(declare-fun m!4562771 () Bool)

(assert (=> b!3986426 m!4562771))

(declare-fun m!4562773 () Bool)

(assert (=> b!3986449 m!4562773))

(declare-fun m!4562775 () Bool)

(assert (=> b!3986449 m!4562775))

(declare-fun m!4562777 () Bool)

(assert (=> b!3986449 m!4562777))

(assert (=> b!3986449 m!4562777))

(declare-fun m!4562779 () Bool)

(assert (=> b!3986449 m!4562779))

(declare-fun m!4562781 () Bool)

(assert (=> b!3986428 m!4562781))

(declare-fun m!4562783 () Bool)

(assert (=> b!3986428 m!4562783))

(declare-fun m!4562785 () Bool)

(assert (=> b!3986455 m!4562785))

(declare-fun m!4562787 () Bool)

(assert (=> b!3986437 m!4562787))

(declare-fun m!4562789 () Bool)

(assert (=> b!3986437 m!4562789))

(declare-fun m!4562791 () Bool)

(assert (=> b!3986441 m!4562791))

(declare-fun m!4562793 () Bool)

(assert (=> b!3986436 m!4562793))

(declare-fun m!4562795 () Bool)

(assert (=> b!3986446 m!4562795))

(declare-fun m!4562797 () Bool)

(assert (=> b!3986446 m!4562797))

(declare-fun m!4562799 () Bool)

(assert (=> b!3986446 m!4562799))

(declare-fun m!4562801 () Bool)

(assert (=> b!3986440 m!4562801))

(declare-fun m!4562803 () Bool)

(assert (=> b!3986440 m!4562803))

(declare-fun m!4562805 () Bool)

(assert (=> b!3986440 m!4562805))

(declare-fun m!4562807 () Bool)

(assert (=> b!3986440 m!4562807))

(declare-fun m!4562809 () Bool)

(assert (=> b!3986430 m!4562809))

(declare-fun m!4562811 () Bool)

(assert (=> b!3986430 m!4562811))

(declare-fun m!4562813 () Bool)

(assert (=> b!3986430 m!4562813))

(declare-fun m!4562815 () Bool)

(assert (=> b!3986430 m!4562815))

(declare-fun m!4562817 () Bool)

(assert (=> b!3986430 m!4562817))

(declare-fun m!4562819 () Bool)

(assert (=> b!3986430 m!4562819))

(assert (=> b!3986430 m!4562811))

(declare-fun m!4562821 () Bool)

(assert (=> b!3986430 m!4562821))

(declare-fun m!4562823 () Bool)

(assert (=> b!3986432 m!4562823))

(declare-fun m!4562825 () Bool)

(assert (=> b!3986432 m!4562825))

(declare-fun m!4562827 () Bool)

(assert (=> b!3986432 m!4562827))

(declare-fun m!4562829 () Bool)

(assert (=> b!3986434 m!4562829))

(declare-fun m!4562831 () Bool)

(assert (=> b!3986434 m!4562831))

(declare-fun m!4562833 () Bool)

(assert (=> b!3986434 m!4562833))

(declare-fun m!4562835 () Bool)

(assert (=> b!3986434 m!4562835))

(declare-fun m!4562837 () Bool)

(assert (=> b!3986433 m!4562837))

(declare-fun m!4562839 () Bool)

(assert (=> b!3986433 m!4562839))

(declare-fun m!4562841 () Bool)

(assert (=> b!3986451 m!4562841))

(declare-fun m!4562843 () Bool)

(assert (=> b!3986447 m!4562843))

(declare-fun m!4562845 () Bool)

(assert (=> b!3986447 m!4562845))

(declare-fun m!4562847 () Bool)

(assert (=> b!3986447 m!4562847))

(declare-fun m!4562849 () Bool)

(assert (=> b!3986447 m!4562849))

(declare-fun m!4562851 () Bool)

(assert (=> b!3986443 m!4562851))

(declare-fun m!4562853 () Bool)

(assert (=> b!3986443 m!4562853))

(declare-fun m!4562855 () Bool)

(assert (=> b!3986423 m!4562855))

(declare-fun m!4562857 () Bool)

(assert (=> b!3986423 m!4562857))

(declare-fun m!4562859 () Bool)

(assert (=> b!3986423 m!4562859))

(declare-fun m!4562861 () Bool)

(assert (=> b!3986423 m!4562861))

(declare-fun m!4562863 () Bool)

(assert (=> b!3986442 m!4562863))

(declare-fun m!4562865 () Bool)

(assert (=> b!3986442 m!4562865))

(declare-fun m!4562867 () Bool)

(assert (=> b!3986442 m!4562867))

(declare-fun m!4562869 () Bool)

(assert (=> b!3986442 m!4562869))

(declare-fun m!4562871 () Bool)

(assert (=> b!3986442 m!4562871))

(declare-fun m!4562873 () Bool)

(assert (=> b!3986442 m!4562873))

(declare-fun m!4562875 () Bool)

(assert (=> b!3986442 m!4562875))

(declare-fun m!4562877 () Bool)

(assert (=> b!3986442 m!4562877))

(declare-fun m!4562879 () Bool)

(assert (=> b!3986442 m!4562879))

(declare-fun m!4562881 () Bool)

(assert (=> b!3986442 m!4562881))

(declare-fun m!4562883 () Bool)

(assert (=> b!3986442 m!4562883))

(declare-fun m!4562885 () Bool)

(assert (=> b!3986442 m!4562885))

(declare-fun m!4562887 () Bool)

(assert (=> b!3986442 m!4562887))

(assert (=> b!3986442 m!4562887))

(declare-fun m!4562889 () Bool)

(assert (=> b!3986442 m!4562889))

(declare-fun m!4562891 () Bool)

(assert (=> b!3986442 m!4562891))

(assert (=> b!3986442 m!4562883))

(declare-fun m!4562893 () Bool)

(assert (=> b!3986442 m!4562893))

(declare-fun m!4562895 () Bool)

(assert (=> b!3986442 m!4562895))

(assert (=> b!3986442 m!4562881))

(declare-fun m!4562897 () Bool)

(assert (=> b!3986442 m!4562897))

(declare-fun m!4562899 () Bool)

(assert (=> b!3986415 m!4562899))

(check-sat (not b!3986432) tp_is_empty!20269 (not b!3986441) (not b!3986433) (not b!3986429) (not b!3986455) (not b!3986440) (not b_next!111427) (not b!3986447) (not b!3986444) (not b!3986448) (not b!3986437) (not b_next!111429) (not b!3986436) (not b!3986415) b_and!306351 b_and!306355 (not b!3986450) (not b!3986456) (not b_next!111431) (not b_next!111425) (not b!3986426) (not b!3986422) (not b!3986442) b_and!306353 (not b!3986430) (not b!3986451) b_and!306357 (not b!3986434) (not b!3986438) (not b!3986446) (not b!3986428) (not b!3986431) (not b!3986424) (not b!3986423) (not b!3986419) (not b!3986443) (not b!3986414) (not start!375120) (not b!3986417) (not b!3986449) (not b!3986445) (not b!3986421) (not b!3986453) (not b!3986435))
(check-sat (not b_next!111427) (not b_next!111429) b_and!306351 b_and!306355 (not b_next!111431) (not b_next!111425) b_and!306353 b_and!306357)
