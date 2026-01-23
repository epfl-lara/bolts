; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104910 () Bool)

(assert start!104910)

(declare-fun b!1183548 () Bool)

(declare-fun b_free!28333 () Bool)

(declare-fun b_next!29037 () Bool)

(assert (=> b!1183548 (= b_free!28333 (not b_next!29037))))

(declare-fun tp!337378 () Bool)

(declare-fun b_and!81373 () Bool)

(assert (=> b!1183548 (= tp!337378 b_and!81373)))

(declare-fun b_free!28335 () Bool)

(declare-fun b_next!29039 () Bool)

(assert (=> b!1183548 (= b_free!28335 (not b_next!29039))))

(declare-fun tp!337375 () Bool)

(declare-fun b_and!81375 () Bool)

(assert (=> b!1183548 (= tp!337375 b_and!81375)))

(declare-fun b!1183539 () Bool)

(declare-fun b_free!28337 () Bool)

(declare-fun b_next!29041 () Bool)

(assert (=> b!1183539 (= b_free!28337 (not b_next!29041))))

(declare-fun tp!337376 () Bool)

(declare-fun b_and!81377 () Bool)

(assert (=> b!1183539 (= tp!337376 b_and!81377)))

(declare-fun b_free!28339 () Bool)

(declare-fun b_next!29043 () Bool)

(assert (=> b!1183539 (= b_free!28339 (not b_next!29043))))

(declare-fun tp!337377 () Bool)

(declare-fun b_and!81379 () Bool)

(assert (=> b!1183539 (= tp!337377 b_and!81379)))

(declare-fun b!1183561 () Bool)

(declare-fun e!759981 () Bool)

(assert (=> b!1183561 (= e!759981 true)))

(declare-fun b!1183560 () Bool)

(declare-fun e!759980 () Bool)

(assert (=> b!1183560 (= e!759980 e!759981)))

(declare-fun b!1183559 () Bool)

(declare-fun e!759979 () Bool)

(assert (=> b!1183559 (= e!759979 e!759980)))

(declare-fun b!1183544 () Bool)

(assert (=> b!1183544 e!759979))

(assert (= b!1183560 b!1183561))

(assert (= b!1183559 b!1183560))

(declare-datatypes ((C!6992 0))(
  ( (C!6993 (val!3792 Int)) )
))
(declare-datatypes ((List!11860 0))(
  ( (Nil!11836) (Cons!11836 (h!17237 C!6992) (t!111642 List!11860)) )
))
(declare-datatypes ((IArray!7759 0))(
  ( (IArray!7760 (innerList!3937 List!11860)) )
))
(declare-datatypes ((Conc!3877 0))(
  ( (Node!3877 (left!10308 Conc!3877) (right!10638 Conc!3877) (csize!7984 Int) (cheight!4088 Int)) (Leaf!5941 (xs!6582 IArray!7759) (csize!7985 Int)) (Empty!3877) )
))
(declare-datatypes ((String!14332 0))(
  ( (String!14333 (value!66940 String)) )
))
(declare-datatypes ((List!11861 0))(
  ( (Nil!11837) (Cons!11837 (h!17238 (_ BitVec 16)) (t!111643 List!11861)) )
))
(declare-datatypes ((BalanceConc!7776 0))(
  ( (BalanceConc!7777 (c!196958 Conc!3877)) )
))
(declare-datatypes ((TokenValue!2133 0))(
  ( (FloatLiteralValue!4266 (text!15376 List!11861)) (TokenValueExt!2132 (__x!7977 Int)) (Broken!10665 (value!66941 List!11861)) (Object!2156) (End!2133) (Def!2133) (Underscore!2133) (Match!2133) (Else!2133) (Error!2133) (Case!2133) (If!2133) (Extends!2133) (Abstract!2133) (Class!2133) (Val!2133) (DelimiterValue!4266 (del!2193 List!11861)) (KeywordValue!2139 (value!66942 List!11861)) (CommentValue!4266 (value!66943 List!11861)) (WhitespaceValue!4266 (value!66944 List!11861)) (IndentationValue!2133 (value!66945 List!11861)) (String!14334) (Int32!2133) (Broken!10666 (value!66946 List!11861)) (Boolean!2134) (Unit!18151) (OperatorValue!2136 (op!2193 List!11861)) (IdentifierValue!4266 (value!66947 List!11861)) (IdentifierValue!4267 (value!66948 List!11861)) (WhitespaceValue!4267 (value!66949 List!11861)) (True!4266) (False!4266) (Broken!10667 (value!66950 List!11861)) (Broken!10668 (value!66951 List!11861)) (True!4267) (RightBrace!2133) (RightBracket!2133) (Colon!2133) (Null!2133) (Comma!2133) (LeftBracket!2133) (False!4267) (LeftBrace!2133) (ImaginaryLiteralValue!2133 (text!15377 List!11861)) (StringLiteralValue!6399 (value!66952 List!11861)) (EOFValue!2133 (value!66953 List!11861)) (IdentValue!2133 (value!66954 List!11861)) (DelimiterValue!4267 (value!66955 List!11861)) (DedentValue!2133 (value!66956 List!11861)) (NewLineValue!2133 (value!66957 List!11861)) (IntegerValue!6399 (value!66958 (_ BitVec 32)) (text!15378 List!11861)) (IntegerValue!6400 (value!66959 Int) (text!15379 List!11861)) (Times!2133) (Or!2133) (Equal!2133) (Minus!2133) (Broken!10669 (value!66960 List!11861)) (And!2133) (Div!2133) (LessEqual!2133) (Mod!2133) (Concat!5470) (Not!2133) (Plus!2133) (SpaceValue!2133 (value!66961 List!11861)) (IntegerValue!6401 (value!66962 Int) (text!15380 List!11861)) (StringLiteralValue!6400 (text!15381 List!11861)) (FloatLiteralValue!4267 (text!15382 List!11861)) (BytesLiteralValue!2133 (value!66963 List!11861)) (CommentValue!4267 (value!66964 List!11861)) (StringLiteralValue!6401 (value!66965 List!11861)) (ErrorTokenValue!2133 (msg!2194 List!11861)) )
))
(declare-datatypes ((Regex!3337 0))(
  ( (ElementMatch!3337 (c!196959 C!6992)) (Concat!5471 (regOne!7186 Regex!3337) (regTwo!7186 Regex!3337)) (EmptyExpr!3337) (Star!3337 (reg!3666 Regex!3337)) (EmptyLang!3337) (Union!3337 (regOne!7187 Regex!3337) (regTwo!7187 Regex!3337)) )
))
(declare-datatypes ((TokenValueInjection!3966 0))(
  ( (TokenValueInjection!3967 (toValue!3180 Int) (toChars!3039 Int)) )
))
(declare-datatypes ((Rule!3934 0))(
  ( (Rule!3935 (regex!2067 Regex!3337) (tag!2329 String!14332) (isSeparator!2067 Bool) (transformation!2067 TokenValueInjection!3966)) )
))
(declare-datatypes ((List!11862 0))(
  ( (Nil!11838) (Cons!11838 (h!17239 Rule!3934) (t!111644 List!11862)) )
))
(declare-fun rules!4386 () List!11862)

(get-info :version)

(assert (= (and b!1183544 ((_ is Cons!11838) rules!4386)) b!1183559))

(declare-fun order!7317 () Int)

(declare-fun order!7319 () Int)

(declare-fun lambda!48757 () Int)

(declare-fun dynLambda!5256 (Int Int) Int)

(declare-fun dynLambda!5257 (Int Int) Int)

(assert (=> b!1183561 (< (dynLambda!5256 order!7317 (toValue!3180 (transformation!2067 (h!17239 rules!4386)))) (dynLambda!5257 order!7319 lambda!48757))))

(declare-fun order!7321 () Int)

(declare-fun dynLambda!5258 (Int Int) Int)

(assert (=> b!1183561 (< (dynLambda!5258 order!7321 (toChars!3039 (transformation!2067 (h!17239 rules!4386)))) (dynLambda!5257 order!7319 lambda!48757))))

(declare-fun b!1183531 () Bool)

(declare-datatypes ((Token!3796 0))(
  ( (Token!3797 (value!66966 TokenValue!2133) (rule!3488 Rule!3934) (size!9339 Int) (originalCharacters!2621 List!11860)) )
))
(declare-datatypes ((List!11863 0))(
  ( (Nil!11839) (Cons!11839 (h!17240 Token!3796) (t!111645 List!11863)) )
))
(declare-fun lt!407260 () List!11863)

(declare-fun e!759958 () Bool)

(declare-datatypes ((LexerInterface!1762 0))(
  ( (LexerInterfaceExt!1759 (__x!7978 Int)) (Lexer!1760) )
))
(declare-fun thiss!27592 () LexerInterface!1762)

(declare-fun rulesProduceEachTokenIndividuallyList!628 (LexerInterface!1762 List!11862 List!11863) Bool)

(assert (=> b!1183531 (= e!759958 (rulesProduceEachTokenIndividuallyList!628 thiss!27592 rules!4386 (t!111645 lt!407260)))))

(declare-fun b!1183532 () Bool)

(declare-fun e!759960 () Bool)

(declare-fun e!759967 () Bool)

(declare-fun tp!337380 () Bool)

(assert (=> b!1183532 (= e!759960 (and e!759967 tp!337380))))

(declare-fun b!1183533 () Bool)

(declare-fun res!534879 () Bool)

(declare-fun e!759963 () Bool)

(assert (=> b!1183533 (=> (not res!534879) (not e!759963))))

(declare-fun rulesInvariant!1636 (LexerInterface!1762 List!11862) Bool)

(assert (=> b!1183533 (= res!534879 (rulesInvariant!1636 thiss!27592 rules!4386))))

(declare-fun lt!407256 () List!11863)

(declare-fun b!1183534 () Bool)

(declare-fun e!759971 () Bool)

(assert (=> b!1183534 (= e!759971 (rulesProduceEachTokenIndividuallyList!628 thiss!27592 rules!4386 (t!111645 lt!407256)))))

(declare-fun b!1183535 () Bool)

(declare-fun res!534881 () Bool)

(assert (=> b!1183535 (=> (not res!534881) (not e!759963))))

(declare-fun l!6534 () List!11863)

(declare-fun i!1621 () Int)

(assert (=> b!1183535 (= res!534881 (and (not ((_ is Nil!11839) l!6534)) (> i!1621 0)))))

(declare-fun b!1183536 () Bool)

(declare-fun res!534878 () Bool)

(assert (=> b!1183536 (=> (not res!534878) (not e!759963))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!156 (LexerInterface!1762 List!11863 List!11862) Bool)

(assert (=> b!1183536 (= res!534878 (tokensListTwoByTwoPredicateSeparableList!156 thiss!27592 l!6534 rules!4386))))

(declare-fun b!1183537 () Bool)

(declare-fun res!534885 () Bool)

(assert (=> b!1183537 (=> (not res!534885) (not e!759963))))

(assert (=> b!1183537 (= res!534885 (rulesProduceEachTokenIndividuallyList!628 thiss!27592 rules!4386 (t!111645 l!6534)))))

(declare-fun b!1183538 () Bool)

(declare-fun e!759957 () Bool)

(assert (=> b!1183538 (= e!759957 e!759958)))

(declare-fun res!534882 () Bool)

(assert (=> b!1183538 (=> (not res!534882) (not e!759958))))

(declare-fun rulesProduceIndividualToken!791 (LexerInterface!1762 List!11862 Token!3796) Bool)

(assert (=> b!1183538 (= res!534882 (rulesProduceIndividualToken!791 thiss!27592 rules!4386 (h!17240 lt!407260)))))

(declare-fun e!759966 () Bool)

(assert (=> b!1183539 (= e!759966 (and tp!337376 tp!337377))))

(declare-fun e!759964 () Bool)

(declare-fun b!1183540 () Bool)

(declare-fun e!759970 () Bool)

(declare-fun tp!337372 () Bool)

(declare-fun inv!21 (TokenValue!2133) Bool)

(assert (=> b!1183540 (= e!759970 (and (inv!21 (value!66966 (h!17240 l!6534))) e!759964 tp!337372))))

(declare-fun res!534887 () Bool)

(assert (=> start!104910 (=> (not res!534887) (not e!759963))))

(assert (=> start!104910 (= res!534887 ((_ is Lexer!1760) thiss!27592))))

(assert (=> start!104910 e!759963))

(assert (=> start!104910 true))

(assert (=> start!104910 e!759960))

(declare-fun e!759972 () Bool)

(assert (=> start!104910 e!759972))

(declare-fun b!1183541 () Bool)

(declare-fun tp!337373 () Bool)

(declare-fun inv!15661 (Token!3796) Bool)

(assert (=> b!1183541 (= e!759972 (and (inv!15661 (h!17240 l!6534)) e!759970 tp!337373))))

(declare-fun tp!337379 () Bool)

(declare-fun b!1183542 () Bool)

(declare-fun inv!15658 (String!14332) Bool)

(declare-fun inv!15662 (TokenValueInjection!3966) Bool)

(assert (=> b!1183542 (= e!759964 (and tp!337379 (inv!15658 (tag!2329 (rule!3488 (h!17240 l!6534)))) (inv!15662 (transformation!2067 (rule!3488 (h!17240 l!6534)))) e!759966))))

(declare-fun b!1183543 () Bool)

(declare-fun res!534889 () Bool)

(assert (=> b!1183543 (=> (not res!534889) (not e!759963))))

(declare-fun isEmpty!7132 (List!11862) Bool)

(assert (=> b!1183543 (= res!534889 (not (isEmpty!7132 rules!4386)))))

(assert (=> b!1183544 (= e!759963 (not (rulesInvariant!1636 Lexer!1760 rules!4386)))))

(declare-fun subseq!321 (List!11863 List!11863) Bool)

(assert (=> b!1183544 (subseq!321 lt!407256 l!6534)))

(declare-datatypes ((Unit!18152 0))(
  ( (Unit!18153) )
))
(declare-fun lt!407258 () Unit!18152)

(declare-fun lemmaDropSubseq!84 (List!11863 Int) Unit!18152)

(assert (=> b!1183544 (= lt!407258 (lemmaDropSubseq!84 l!6534 i!1621))))

(declare-fun e!759965 () Bool)

(assert (=> b!1183544 (= (rulesProduceEachTokenIndividuallyList!628 thiss!27592 rules!4386 lt!407256) e!759965)))

(declare-fun res!534880 () Bool)

(assert (=> b!1183544 (=> res!534880 e!759965)))

(assert (=> b!1183544 (= res!534880 (not ((_ is Cons!11839) lt!407256)))))

(declare-fun drop!545 (List!11863 Int) List!11863)

(assert (=> b!1183544 (= lt!407256 (drop!545 l!6534 i!1621))))

(declare-fun e!759969 () Bool)

(assert (=> b!1183544 e!759969))

(declare-fun res!534883 () Bool)

(assert (=> b!1183544 (=> (not res!534883) (not e!759969))))

(declare-fun forall!3134 (List!11863 Int) Bool)

(assert (=> b!1183544 (= res!534883 (forall!3134 lt!407260 lambda!48757))))

(declare-fun lt!407259 () Unit!18152)

(declare-fun lemmaForallSubseq!185 (List!11863 List!11863 Int) Unit!18152)

(assert (=> b!1183544 (= lt!407259 (lemmaForallSubseq!185 lt!407260 (t!111645 l!6534) lambda!48757))))

(assert (=> b!1183544 (subseq!321 lt!407260 (t!111645 l!6534))))

(declare-fun lt!407255 () Unit!18152)

(assert (=> b!1183544 (= lt!407255 (lemmaDropSubseq!84 (t!111645 l!6534) (- i!1621 1)))))

(assert (=> b!1183544 (= (rulesProduceEachTokenIndividuallyList!628 thiss!27592 rules!4386 lt!407260) e!759957)))

(declare-fun res!534888 () Bool)

(assert (=> b!1183544 (=> res!534888 e!759957)))

(assert (=> b!1183544 (= res!534888 (not ((_ is Cons!11839) lt!407260)))))

(assert (=> b!1183544 (= lt!407260 (drop!545 (t!111645 l!6534) (- i!1621 1)))))

(declare-fun lt!407257 () Unit!18152)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!60 (LexerInterface!1762 List!11863 Int List!11862) Unit!18152)

(assert (=> b!1183544 (= lt!407257 (tokensListTwoByTwoPredicateSeparableTokensDropList!60 thiss!27592 (t!111645 l!6534) (- i!1621 1) rules!4386))))

(declare-fun b!1183545 () Bool)

(declare-fun res!534886 () Bool)

(assert (=> b!1183545 (=> (not res!534886) (not e!759963))))

(assert (=> b!1183545 (= res!534886 (tokensListTwoByTwoPredicateSeparableList!156 thiss!27592 (t!111645 l!6534) rules!4386))))

(declare-fun e!759968 () Bool)

(declare-fun tp!337374 () Bool)

(declare-fun b!1183546 () Bool)

(assert (=> b!1183546 (= e!759967 (and tp!337374 (inv!15658 (tag!2329 (h!17239 rules!4386))) (inv!15662 (transformation!2067 (h!17239 rules!4386))) e!759968))))

(declare-fun b!1183547 () Bool)

(assert (=> b!1183547 (= e!759965 e!759971)))

(declare-fun res!534890 () Bool)

(assert (=> b!1183547 (=> (not res!534890) (not e!759971))))

(assert (=> b!1183547 (= res!534890 (rulesProduceIndividualToken!791 thiss!27592 rules!4386 (h!17240 lt!407256)))))

(assert (=> b!1183548 (= e!759968 (and tp!337378 tp!337375))))

(declare-fun b!1183549 () Bool)

(declare-fun res!534884 () Bool)

(assert (=> b!1183549 (=> (not res!534884) (not e!759963))))

(assert (=> b!1183549 (= res!534884 (rulesProduceEachTokenIndividuallyList!628 thiss!27592 rules!4386 l!6534))))

(declare-fun b!1183550 () Bool)

(assert (=> b!1183550 (= e!759969 (tokensListTwoByTwoPredicateSeparableList!156 thiss!27592 lt!407260 rules!4386))))

(assert (= (and start!104910 res!534887) b!1183543))

(assert (= (and b!1183543 res!534889) b!1183533))

(assert (= (and b!1183533 res!534879) b!1183549))

(assert (= (and b!1183549 res!534884) b!1183536))

(assert (= (and b!1183536 res!534878) b!1183535))

(assert (= (and b!1183535 res!534881) b!1183537))

(assert (= (and b!1183537 res!534885) b!1183545))

(assert (= (and b!1183545 res!534886) b!1183544))

(assert (= (and b!1183544 (not res!534888)) b!1183538))

(assert (= (and b!1183538 res!534882) b!1183531))

(assert (= (and b!1183544 res!534883) b!1183550))

(assert (= (and b!1183544 (not res!534880)) b!1183547))

(assert (= (and b!1183547 res!534890) b!1183534))

(assert (= b!1183546 b!1183548))

(assert (= b!1183532 b!1183546))

(assert (= (and start!104910 ((_ is Cons!11838) rules!4386)) b!1183532))

(assert (= b!1183542 b!1183539))

(assert (= b!1183540 b!1183542))

(assert (= b!1183541 b!1183540))

(assert (= (and start!104910 ((_ is Cons!11839) l!6534)) b!1183541))

(declare-fun m!1359379 () Bool)

(assert (=> b!1183538 m!1359379))

(declare-fun m!1359381 () Bool)

(assert (=> b!1183549 m!1359381))

(declare-fun m!1359383 () Bool)

(assert (=> b!1183542 m!1359383))

(declare-fun m!1359385 () Bool)

(assert (=> b!1183542 m!1359385))

(declare-fun m!1359387 () Bool)

(assert (=> b!1183541 m!1359387))

(declare-fun m!1359389 () Bool)

(assert (=> b!1183550 m!1359389))

(declare-fun m!1359391 () Bool)

(assert (=> b!1183536 m!1359391))

(declare-fun m!1359393 () Bool)

(assert (=> b!1183544 m!1359393))

(declare-fun m!1359395 () Bool)

(assert (=> b!1183544 m!1359395))

(declare-fun m!1359397 () Bool)

(assert (=> b!1183544 m!1359397))

(declare-fun m!1359399 () Bool)

(assert (=> b!1183544 m!1359399))

(declare-fun m!1359401 () Bool)

(assert (=> b!1183544 m!1359401))

(declare-fun m!1359403 () Bool)

(assert (=> b!1183544 m!1359403))

(declare-fun m!1359405 () Bool)

(assert (=> b!1183544 m!1359405))

(declare-fun m!1359407 () Bool)

(assert (=> b!1183544 m!1359407))

(declare-fun m!1359409 () Bool)

(assert (=> b!1183544 m!1359409))

(declare-fun m!1359411 () Bool)

(assert (=> b!1183544 m!1359411))

(declare-fun m!1359413 () Bool)

(assert (=> b!1183544 m!1359413))

(declare-fun m!1359415 () Bool)

(assert (=> b!1183544 m!1359415))

(declare-fun m!1359417 () Bool)

(assert (=> b!1183540 m!1359417))

(declare-fun m!1359419 () Bool)

(assert (=> b!1183537 m!1359419))

(declare-fun m!1359421 () Bool)

(assert (=> b!1183547 m!1359421))

(declare-fun m!1359423 () Bool)

(assert (=> b!1183534 m!1359423))

(declare-fun m!1359425 () Bool)

(assert (=> b!1183545 m!1359425))

(declare-fun m!1359427 () Bool)

(assert (=> b!1183543 m!1359427))

(declare-fun m!1359429 () Bool)

(assert (=> b!1183533 m!1359429))

(declare-fun m!1359431 () Bool)

(assert (=> b!1183546 m!1359431))

(declare-fun m!1359433 () Bool)

(assert (=> b!1183546 m!1359433))

(declare-fun m!1359435 () Bool)

(assert (=> b!1183531 m!1359435))

(check-sat (not b!1183545) (not b!1183541) (not b!1183546) (not b_next!29041) (not b!1183540) (not b!1183549) (not b!1183536) (not b!1183550) (not b!1183534) (not b!1183544) b_and!81379 (not b!1183547) b_and!81375 (not b!1183538) (not b!1183542) (not b!1183543) (not b!1183533) (not b_next!29037) (not b_next!29039) b_and!81377 (not b!1183559) (not b!1183537) (not b!1183531) (not b!1183532) (not b_next!29043) b_and!81373)
(check-sat (not b_next!29041) b_and!81377 b_and!81379 b_and!81375 (not b_next!29037) (not b_next!29039) (not b_next!29043) b_and!81373)
