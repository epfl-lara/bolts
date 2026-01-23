; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105628 () Bool)

(assert start!105628)

(declare-fun b!1189434 () Bool)

(declare-fun b_free!28757 () Bool)

(declare-fun b_next!29461 () Bool)

(assert (=> b!1189434 (= b_free!28757 (not b_next!29461))))

(declare-fun tp!339521 () Bool)

(declare-fun b_and!81949 () Bool)

(assert (=> b!1189434 (= tp!339521 b_and!81949)))

(declare-fun b_free!28759 () Bool)

(declare-fun b_next!29463 () Bool)

(assert (=> b!1189434 (= b_free!28759 (not b_next!29463))))

(declare-fun tp!339517 () Bool)

(declare-fun b_and!81951 () Bool)

(assert (=> b!1189434 (= tp!339517 b_and!81951)))

(declare-fun b!1189430 () Bool)

(declare-fun b_free!28761 () Bool)

(declare-fun b_next!29465 () Bool)

(assert (=> b!1189430 (= b_free!28761 (not b_next!29465))))

(declare-fun tp!339522 () Bool)

(declare-fun b_and!81953 () Bool)

(assert (=> b!1189430 (= tp!339522 b_and!81953)))

(declare-fun b_free!28763 () Bool)

(declare-fun b_next!29467 () Bool)

(assert (=> b!1189430 (= b_free!28763 (not b_next!29467))))

(declare-fun tp!339516 () Bool)

(declare-fun b_and!81955 () Bool)

(assert (=> b!1189430 (= tp!339516 b_and!81955)))

(declare-fun b!1189457 () Bool)

(declare-fun e!764613 () Bool)

(assert (=> b!1189457 (= e!764613 true)))

(declare-fun b!1189456 () Bool)

(declare-fun e!764612 () Bool)

(assert (=> b!1189456 (= e!764612 e!764613)))

(declare-fun b!1189455 () Bool)

(declare-fun e!764611 () Bool)

(assert (=> b!1189455 (= e!764611 e!764612)))

(declare-fun b!1189432 () Bool)

(assert (=> b!1189432 e!764611))

(assert (= b!1189456 b!1189457))

(assert (= b!1189455 b!1189456))

(declare-datatypes ((C!7052 0))(
  ( (C!7053 (val!3822 Int)) )
))
(declare-datatypes ((List!11999 0))(
  ( (Nil!11975) (Cons!11975 (h!17376 C!7052) (t!112179 List!11999)) )
))
(declare-datatypes ((IArray!7845 0))(
  ( (IArray!7846 (innerList!3980 List!11999)) )
))
(declare-datatypes ((Conc!3920 0))(
  ( (Node!3920 (left!10422 Conc!3920) (right!10752 Conc!3920) (csize!8070 Int) (cheight!4131 Int)) (Leaf!5999 (xs!6625 IArray!7845) (csize!8071 Int)) (Empty!3920) )
))
(declare-datatypes ((List!12000 0))(
  ( (Nil!11976) (Cons!11976 (h!17377 (_ BitVec 16)) (t!112180 List!12000)) )
))
(declare-datatypes ((BalanceConc!7862 0))(
  ( (BalanceConc!7863 (c!197429 Conc!3920)) )
))
(declare-datatypes ((Regex!3367 0))(
  ( (ElementMatch!3367 (c!197430 C!7052)) (Concat!5530 (regOne!7246 Regex!3367) (regTwo!7246 Regex!3367)) (EmptyExpr!3367) (Star!3367 (reg!3696 Regex!3367)) (EmptyLang!3367) (Union!3367 (regOne!7247 Regex!3367) (regTwo!7247 Regex!3367)) )
))
(declare-datatypes ((String!14482 0))(
  ( (String!14483 (value!67795 String)) )
))
(declare-datatypes ((TokenValue!2163 0))(
  ( (FloatLiteralValue!4326 (text!15586 List!12000)) (TokenValueExt!2162 (__x!8037 Int)) (Broken!10815 (value!67796 List!12000)) (Object!2186) (End!2163) (Def!2163) (Underscore!2163) (Match!2163) (Else!2163) (Error!2163) (Case!2163) (If!2163) (Extends!2163) (Abstract!2163) (Class!2163) (Val!2163) (DelimiterValue!4326 (del!2223 List!12000)) (KeywordValue!2169 (value!67797 List!12000)) (CommentValue!4326 (value!67798 List!12000)) (WhitespaceValue!4326 (value!67799 List!12000)) (IndentationValue!2163 (value!67800 List!12000)) (String!14484) (Int32!2163) (Broken!10816 (value!67801 List!12000)) (Boolean!2164) (Unit!18373) (OperatorValue!2166 (op!2223 List!12000)) (IdentifierValue!4326 (value!67802 List!12000)) (IdentifierValue!4327 (value!67803 List!12000)) (WhitespaceValue!4327 (value!67804 List!12000)) (True!4326) (False!4326) (Broken!10817 (value!67805 List!12000)) (Broken!10818 (value!67806 List!12000)) (True!4327) (RightBrace!2163) (RightBracket!2163) (Colon!2163) (Null!2163) (Comma!2163) (LeftBracket!2163) (False!4327) (LeftBrace!2163) (ImaginaryLiteralValue!2163 (text!15587 List!12000)) (StringLiteralValue!6489 (value!67807 List!12000)) (EOFValue!2163 (value!67808 List!12000)) (IdentValue!2163 (value!67809 List!12000)) (DelimiterValue!4327 (value!67810 List!12000)) (DedentValue!2163 (value!67811 List!12000)) (NewLineValue!2163 (value!67812 List!12000)) (IntegerValue!6489 (value!67813 (_ BitVec 32)) (text!15588 List!12000)) (IntegerValue!6490 (value!67814 Int) (text!15589 List!12000)) (Times!2163) (Or!2163) (Equal!2163) (Minus!2163) (Broken!10819 (value!67815 List!12000)) (And!2163) (Div!2163) (LessEqual!2163) (Mod!2163) (Concat!5531) (Not!2163) (Plus!2163) (SpaceValue!2163 (value!67816 List!12000)) (IntegerValue!6491 (value!67817 Int) (text!15590 List!12000)) (StringLiteralValue!6490 (text!15591 List!12000)) (FloatLiteralValue!4327 (text!15592 List!12000)) (BytesLiteralValue!2163 (value!67818 List!12000)) (CommentValue!4327 (value!67819 List!12000)) (StringLiteralValue!6491 (value!67820 List!12000)) (ErrorTokenValue!2163 (msg!2224 List!12000)) )
))
(declare-datatypes ((TokenValueInjection!4026 0))(
  ( (TokenValueInjection!4027 (toValue!3214 Int) (toChars!3073 Int)) )
))
(declare-datatypes ((Rule!3994 0))(
  ( (Rule!3995 (regex!2097 Regex!3367) (tag!2359 String!14482) (isSeparator!2097 Bool) (transformation!2097 TokenValueInjection!4026)) )
))
(declare-datatypes ((List!12001 0))(
  ( (Nil!11977) (Cons!11977 (h!17378 Rule!3994) (t!112181 List!12001)) )
))
(declare-fun rules!4386 () List!12001)

(get-info :version)

(assert (= (and b!1189432 ((_ is Cons!11977) rules!4386)) b!1189455))

(declare-fun lambda!49022 () Int)

(declare-fun order!7495 () Int)

(declare-fun order!7493 () Int)

(declare-fun dynLambda!5374 (Int Int) Int)

(declare-fun dynLambda!5375 (Int Int) Int)

(assert (=> b!1189457 (< (dynLambda!5374 order!7493 (toValue!3214 (transformation!2097 (h!17378 rules!4386)))) (dynLambda!5375 order!7495 lambda!49022))))

(declare-fun order!7497 () Int)

(declare-fun dynLambda!5376 (Int Int) Int)

(assert (=> b!1189457 (< (dynLambda!5376 order!7497 (toChars!3073 (transformation!2097 (h!17378 rules!4386)))) (dynLambda!5375 order!7495 lambda!49022))))

(declare-fun b!1189427 () Bool)

(declare-fun e!764589 () Bool)

(declare-fun e!764602 () Bool)

(assert (=> b!1189427 (= e!764589 e!764602)))

(declare-fun res!537380 () Bool)

(assert (=> b!1189427 (=> (not res!537380) (not e!764602))))

(declare-datatypes ((LexerInterface!1792 0))(
  ( (LexerInterfaceExt!1789 (__x!8038 Int)) (Lexer!1790) )
))
(declare-fun thiss!27592 () LexerInterface!1792)

(declare-datatypes ((Token!3856 0))(
  ( (Token!3857 (value!67821 TokenValue!2163) (rule!3518 Rule!3994) (size!9438 Int) (originalCharacters!2651 List!11999)) )
))
(declare-datatypes ((List!12002 0))(
  ( (Nil!11978) (Cons!11978 (h!17379 Token!3856) (t!112182 List!12002)) )
))
(declare-fun lt!408928 () List!12002)

(declare-fun rulesProduceIndividualToken!818 (LexerInterface!1792 List!12001 Token!3856) Bool)

(assert (=> b!1189427 (= res!537380 (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 lt!408928)))))

(declare-fun b!1189428 () Bool)

(declare-fun res!537382 () Bool)

(declare-fun e!764601 () Bool)

(assert (=> b!1189428 (=> (not res!537382) (not e!764601))))

(declare-fun l!6534 () List!12002)

(declare-fun rulesProduceEachTokenIndividuallyList!658 (LexerInterface!1792 List!12001 List!12002) Bool)

(assert (=> b!1189428 (= res!537382 (rulesProduceEachTokenIndividuallyList!658 thiss!27592 rules!4386 l!6534))))

(declare-fun b!1189429 () Bool)

(declare-fun res!537377 () Bool)

(assert (=> b!1189429 (=> (not res!537377) (not e!764601))))

(declare-fun rulesInvariant!1666 (LexerInterface!1792 List!12001) Bool)

(assert (=> b!1189429 (= res!537377 (rulesInvariant!1666 thiss!27592 rules!4386))))

(declare-fun e!764595 () Bool)

(assert (=> b!1189430 (= e!764595 (and tp!339522 tp!339516))))

(declare-fun b!1189431 () Bool)

(declare-fun e!764600 () Bool)

(declare-fun e!764591 () Bool)

(declare-fun tp!339519 () Bool)

(assert (=> b!1189431 (= e!764600 (and e!764591 tp!339519))))

(declare-fun res!537376 () Bool)

(assert (=> start!105628 (=> (not res!537376) (not e!764601))))

(assert (=> start!105628 (= res!537376 ((_ is Lexer!1790) thiss!27592))))

(assert (=> start!105628 e!764601))

(assert (=> start!105628 true))

(assert (=> start!105628 e!764600))

(declare-fun e!764592 () Bool)

(assert (=> start!105628 e!764592))

(declare-fun tokensListTwoByTwoPredicateSeparableList!186 (LexerInterface!1792 List!12002 List!12001) Bool)

(assert (=> b!1189432 (= e!764601 (not (tokensListTwoByTwoPredicateSeparableList!186 thiss!27592 lt!408928 rules!4386)))))

(declare-fun forall!3167 (List!12002 Int) Bool)

(assert (=> b!1189432 (forall!3167 lt!408928 lambda!49022)))

(declare-datatypes ((Unit!18374 0))(
  ( (Unit!18375) )
))
(declare-fun lt!408931 () Unit!18374)

(declare-fun lemmaForallSubseq!201 (List!12002 List!12002 Int) Unit!18374)

(assert (=> b!1189432 (= lt!408931 (lemmaForallSubseq!201 lt!408928 l!6534 lambda!49022))))

(declare-fun subseq!341 (List!12002 List!12002) Bool)

(assert (=> b!1189432 (subseq!341 lt!408928 l!6534)))

(declare-fun lt!408927 () Unit!18374)

(declare-fun i!1621 () Int)

(declare-fun lemmaDropSubseq!104 (List!12002 Int) Unit!18374)

(assert (=> b!1189432 (= lt!408927 (lemmaDropSubseq!104 l!6534 i!1621))))

(assert (=> b!1189432 (= (rulesProduceEachTokenIndividuallyList!658 thiss!27592 rules!4386 lt!408928) e!764589)))

(declare-fun res!537379 () Bool)

(assert (=> b!1189432 (=> res!537379 e!764589)))

(assert (=> b!1189432 (= res!537379 (not ((_ is Cons!11978) lt!408928)))))

(declare-fun drop!565 (List!12002 Int) List!12002)

(assert (=> b!1189432 (= lt!408928 (drop!565 l!6534 i!1621))))

(declare-fun e!764597 () Bool)

(assert (=> b!1189432 e!764597))

(declare-fun res!537375 () Bool)

(assert (=> b!1189432 (=> (not res!537375) (not e!764597))))

(declare-fun lt!408932 () List!12002)

(assert (=> b!1189432 (= res!537375 (forall!3167 lt!408932 lambda!49022))))

(declare-fun lt!408926 () Unit!18374)

(assert (=> b!1189432 (= lt!408926 (lemmaForallSubseq!201 lt!408932 (t!112182 l!6534) lambda!49022))))

(assert (=> b!1189432 (subseq!341 lt!408932 (t!112182 l!6534))))

(declare-fun lt!408929 () Unit!18374)

(assert (=> b!1189432 (= lt!408929 (lemmaDropSubseq!104 (t!112182 l!6534) (- i!1621 1)))))

(declare-fun e!764598 () Bool)

(assert (=> b!1189432 (= (rulesProduceEachTokenIndividuallyList!658 thiss!27592 rules!4386 lt!408932) e!764598)))

(declare-fun res!537371 () Bool)

(assert (=> b!1189432 (=> res!537371 e!764598)))

(assert (=> b!1189432 (= res!537371 (not ((_ is Cons!11978) lt!408932)))))

(assert (=> b!1189432 (= lt!408932 (drop!565 (t!112182 l!6534) (- i!1621 1)))))

(declare-fun lt!408930 () Unit!18374)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!72 (LexerInterface!1792 List!12002 Int List!12001) Unit!18374)

(assert (=> b!1189432 (= lt!408930 (tokensListTwoByTwoPredicateSeparableTokensDropList!72 thiss!27592 (t!112182 l!6534) (- i!1621 1) rules!4386))))

(declare-fun b!1189433 () Bool)

(declare-fun res!537378 () Bool)

(assert (=> b!1189433 (=> (not res!537378) (not e!764601))))

(declare-fun isEmpty!7199 (List!12001) Bool)

(assert (=> b!1189433 (= res!537378 (not (isEmpty!7199 rules!4386)))))

(declare-fun e!764596 () Bool)

(assert (=> b!1189434 (= e!764596 (and tp!339521 tp!339517))))

(declare-fun e!764590 () Bool)

(declare-fun tp!339515 () Bool)

(declare-fun e!764604 () Bool)

(declare-fun b!1189435 () Bool)

(declare-fun inv!21 (TokenValue!2163) Bool)

(assert (=> b!1189435 (= e!764590 (and (inv!21 (value!67821 (h!17379 l!6534))) e!764604 tp!339515))))

(declare-fun b!1189436 () Bool)

(assert (=> b!1189436 (= e!764602 (rulesProduceEachTokenIndividuallyList!658 thiss!27592 rules!4386 (t!112182 lt!408928)))))

(declare-fun b!1189437 () Bool)

(declare-fun res!537373 () Bool)

(assert (=> b!1189437 (=> (not res!537373) (not e!764601))))

(assert (=> b!1189437 (= res!537373 (tokensListTwoByTwoPredicateSeparableList!186 thiss!27592 (t!112182 l!6534) rules!4386))))

(declare-fun b!1189438 () Bool)

(assert (=> b!1189438 (= e!764597 (tokensListTwoByTwoPredicateSeparableList!186 thiss!27592 lt!408932 rules!4386))))

(declare-fun b!1189439 () Bool)

(declare-fun res!537374 () Bool)

(assert (=> b!1189439 (=> (not res!537374) (not e!764601))))

(assert (=> b!1189439 (= res!537374 (rulesProduceEachTokenIndividuallyList!658 thiss!27592 rules!4386 (t!112182 l!6534)))))

(declare-fun b!1189440 () Bool)

(declare-fun e!764593 () Bool)

(assert (=> b!1189440 (= e!764598 e!764593)))

(declare-fun res!537381 () Bool)

(assert (=> b!1189440 (=> (not res!537381) (not e!764593))))

(assert (=> b!1189440 (= res!537381 (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 lt!408932)))))

(declare-fun tp!339518 () Bool)

(declare-fun b!1189441 () Bool)

(declare-fun inv!15809 (String!14482) Bool)

(declare-fun inv!15812 (TokenValueInjection!4026) Bool)

(assert (=> b!1189441 (= e!764604 (and tp!339518 (inv!15809 (tag!2359 (rule!3518 (h!17379 l!6534)))) (inv!15812 (transformation!2097 (rule!3518 (h!17379 l!6534)))) e!764596))))

(declare-fun b!1189442 () Bool)

(assert (=> b!1189442 (= e!764593 (rulesProduceEachTokenIndividuallyList!658 thiss!27592 rules!4386 (t!112182 lt!408932)))))

(declare-fun tp!339520 () Bool)

(declare-fun b!1189443 () Bool)

(assert (=> b!1189443 (= e!764591 (and tp!339520 (inv!15809 (tag!2359 (h!17378 rules!4386))) (inv!15812 (transformation!2097 (h!17378 rules!4386))) e!764595))))

(declare-fun b!1189444 () Bool)

(declare-fun res!537370 () Bool)

(assert (=> b!1189444 (=> (not res!537370) (not e!764601))))

(assert (=> b!1189444 (= res!537370 (tokensListTwoByTwoPredicateSeparableList!186 thiss!27592 l!6534 rules!4386))))

(declare-fun b!1189445 () Bool)

(declare-fun res!537372 () Bool)

(assert (=> b!1189445 (=> (not res!537372) (not e!764601))))

(assert (=> b!1189445 (= res!537372 (and (not ((_ is Nil!11978) l!6534)) (> i!1621 0)))))

(declare-fun b!1189446 () Bool)

(declare-fun tp!339514 () Bool)

(declare-fun inv!15813 (Token!3856) Bool)

(assert (=> b!1189446 (= e!764592 (and (inv!15813 (h!17379 l!6534)) e!764590 tp!339514))))

(assert (= (and start!105628 res!537376) b!1189433))

(assert (= (and b!1189433 res!537378) b!1189429))

(assert (= (and b!1189429 res!537377) b!1189428))

(assert (= (and b!1189428 res!537382) b!1189444))

(assert (= (and b!1189444 res!537370) b!1189445))

(assert (= (and b!1189445 res!537372) b!1189439))

(assert (= (and b!1189439 res!537374) b!1189437))

(assert (= (and b!1189437 res!537373) b!1189432))

(assert (= (and b!1189432 (not res!537371)) b!1189440))

(assert (= (and b!1189440 res!537381) b!1189442))

(assert (= (and b!1189432 res!537375) b!1189438))

(assert (= (and b!1189432 (not res!537379)) b!1189427))

(assert (= (and b!1189427 res!537380) b!1189436))

(assert (= b!1189443 b!1189430))

(assert (= b!1189431 b!1189443))

(assert (= (and start!105628 ((_ is Cons!11977) rules!4386)) b!1189431))

(assert (= b!1189441 b!1189434))

(assert (= b!1189435 b!1189441))

(assert (= b!1189446 b!1189435))

(assert (= (and start!105628 ((_ is Cons!11978) l!6534)) b!1189446))

(declare-fun m!1364647 () Bool)

(assert (=> b!1189439 m!1364647))

(declare-fun m!1364649 () Bool)

(assert (=> b!1189438 m!1364649))

(declare-fun m!1364651 () Bool)

(assert (=> b!1189435 m!1364651))

(declare-fun m!1364653 () Bool)

(assert (=> b!1189427 m!1364653))

(declare-fun m!1364655 () Bool)

(assert (=> b!1189436 m!1364655))

(declare-fun m!1364657 () Bool)

(assert (=> b!1189433 m!1364657))

(declare-fun m!1364659 () Bool)

(assert (=> b!1189442 m!1364659))

(declare-fun m!1364661 () Bool)

(assert (=> b!1189428 m!1364661))

(declare-fun m!1364663 () Bool)

(assert (=> b!1189446 m!1364663))

(declare-fun m!1364665 () Bool)

(assert (=> b!1189444 m!1364665))

(declare-fun m!1364667 () Bool)

(assert (=> b!1189432 m!1364667))

(declare-fun m!1364669 () Bool)

(assert (=> b!1189432 m!1364669))

(declare-fun m!1364671 () Bool)

(assert (=> b!1189432 m!1364671))

(declare-fun m!1364673 () Bool)

(assert (=> b!1189432 m!1364673))

(declare-fun m!1364675 () Bool)

(assert (=> b!1189432 m!1364675))

(declare-fun m!1364677 () Bool)

(assert (=> b!1189432 m!1364677))

(declare-fun m!1364679 () Bool)

(assert (=> b!1189432 m!1364679))

(declare-fun m!1364681 () Bool)

(assert (=> b!1189432 m!1364681))

(declare-fun m!1364683 () Bool)

(assert (=> b!1189432 m!1364683))

(declare-fun m!1364685 () Bool)

(assert (=> b!1189432 m!1364685))

(declare-fun m!1364687 () Bool)

(assert (=> b!1189432 m!1364687))

(declare-fun m!1364689 () Bool)

(assert (=> b!1189432 m!1364689))

(declare-fun m!1364691 () Bool)

(assert (=> b!1189432 m!1364691))

(declare-fun m!1364693 () Bool)

(assert (=> b!1189432 m!1364693))

(declare-fun m!1364695 () Bool)

(assert (=> b!1189441 m!1364695))

(declare-fun m!1364697 () Bool)

(assert (=> b!1189441 m!1364697))

(declare-fun m!1364699 () Bool)

(assert (=> b!1189437 m!1364699))

(declare-fun m!1364701 () Bool)

(assert (=> b!1189429 m!1364701))

(declare-fun m!1364703 () Bool)

(assert (=> b!1189443 m!1364703))

(declare-fun m!1364705 () Bool)

(assert (=> b!1189443 m!1364705))

(declare-fun m!1364707 () Bool)

(assert (=> b!1189440 m!1364707))

(check-sat (not b!1189438) (not b_next!29463) (not b!1189436) (not b!1189444) (not b_next!29467) b_and!81955 b_and!81951 (not b!1189442) (not b!1189443) (not b!1189431) (not b!1189433) (not b_next!29465) (not b!1189455) (not b!1189446) (not b!1189441) (not b!1189440) (not b!1189437) (not b!1189439) (not b!1189428) (not b_next!29461) (not b!1189432) b_and!81949 (not b!1189429) (not b!1189427) b_and!81953 (not b!1189435))
(check-sat (not b_next!29463) (not b_next!29467) b_and!81955 b_and!81951 (not b_next!29461) b_and!81949 b_and!81953 (not b_next!29465))
(get-model)

(declare-fun d!339977 () Bool)

(declare-fun res!537392 () Bool)

(declare-fun e!764616 () Bool)

(assert (=> d!339977 (=> (not res!537392) (not e!764616))))

(declare-fun rulesValid!751 (LexerInterface!1792 List!12001) Bool)

(assert (=> d!339977 (= res!537392 (rulesValid!751 thiss!27592 rules!4386))))

(assert (=> d!339977 (= (rulesInvariant!1666 thiss!27592 rules!4386) e!764616)))

(declare-fun b!1189460 () Bool)

(declare-datatypes ((List!12003 0))(
  ( (Nil!11979) (Cons!11979 (h!17380 String!14482) (t!112209 List!12003)) )
))
(declare-fun noDuplicateTag!751 (LexerInterface!1792 List!12001 List!12003) Bool)

(assert (=> b!1189460 (= e!764616 (noDuplicateTag!751 thiss!27592 rules!4386 Nil!11979))))

(assert (= (and d!339977 res!537392) b!1189460))

(declare-fun m!1364709 () Bool)

(assert (=> d!339977 m!1364709))

(declare-fun m!1364711 () Bool)

(assert (=> b!1189460 m!1364711))

(assert (=> b!1189429 d!339977))

(declare-fun bs!287767 () Bool)

(declare-fun d!339981 () Bool)

(assert (= bs!287767 (and d!339981 b!1189432)))

(declare-fun lambda!49028 () Int)

(assert (=> bs!287767 (= (= thiss!27592 Lexer!1790) (= lambda!49028 lambda!49022))))

(declare-fun b!1189486 () Bool)

(declare-fun e!764640 () Bool)

(assert (=> b!1189486 (= e!764640 true)))

(declare-fun b!1189485 () Bool)

(declare-fun e!764639 () Bool)

(assert (=> b!1189485 (= e!764639 e!764640)))

(declare-fun b!1189484 () Bool)

(declare-fun e!764638 () Bool)

(assert (=> b!1189484 (= e!764638 e!764639)))

(assert (=> d!339981 e!764638))

(assert (= b!1189485 b!1189486))

(assert (= b!1189484 b!1189485))

(assert (= (and d!339981 ((_ is Cons!11977) rules!4386)) b!1189484))

(assert (=> b!1189486 (< (dynLambda!5374 order!7493 (toValue!3214 (transformation!2097 (h!17378 rules!4386)))) (dynLambda!5375 order!7495 lambda!49028))))

(assert (=> b!1189486 (< (dynLambda!5376 order!7497 (toChars!3073 (transformation!2097 (h!17378 rules!4386)))) (dynLambda!5375 order!7495 lambda!49028))))

(assert (=> d!339981 true))

(declare-fun lt!408959 () Bool)

(assert (=> d!339981 (= lt!408959 (forall!3167 (t!112182 l!6534) lambda!49028))))

(declare-fun e!764637 () Bool)

(assert (=> d!339981 (= lt!408959 e!764637)))

(declare-fun res!537410 () Bool)

(assert (=> d!339981 (=> res!537410 e!764637)))

(assert (=> d!339981 (= res!537410 (not ((_ is Cons!11978) (t!112182 l!6534))))))

(assert (=> d!339981 (not (isEmpty!7199 rules!4386))))

(assert (=> d!339981 (= (rulesProduceEachTokenIndividuallyList!658 thiss!27592 rules!4386 (t!112182 l!6534)) lt!408959)))

(declare-fun b!1189482 () Bool)

(declare-fun e!764636 () Bool)

(assert (=> b!1189482 (= e!764637 e!764636)))

(declare-fun res!537409 () Bool)

(assert (=> b!1189482 (=> (not res!537409) (not e!764636))))

(assert (=> b!1189482 (= res!537409 (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 (t!112182 l!6534))))))

(declare-fun b!1189483 () Bool)

(assert (=> b!1189483 (= e!764636 (rulesProduceEachTokenIndividuallyList!658 thiss!27592 rules!4386 (t!112182 (t!112182 l!6534))))))

(assert (= (and d!339981 (not res!537410)) b!1189482))

(assert (= (and b!1189482 res!537409) b!1189483))

(declare-fun m!1364733 () Bool)

(assert (=> d!339981 m!1364733))

(assert (=> d!339981 m!1364657))

(declare-fun m!1364735 () Bool)

(assert (=> b!1189482 m!1364735))

(declare-fun m!1364737 () Bool)

(assert (=> b!1189483 m!1364737))

(assert (=> b!1189439 d!339981))

(declare-fun bs!287768 () Bool)

(declare-fun d!339987 () Bool)

(assert (= bs!287768 (and d!339987 b!1189432)))

(declare-fun lambda!49029 () Int)

(assert (=> bs!287768 (= (= thiss!27592 Lexer!1790) (= lambda!49029 lambda!49022))))

(declare-fun bs!287769 () Bool)

(assert (= bs!287769 (and d!339987 d!339981)))

(assert (=> bs!287769 (= lambda!49029 lambda!49028)))

(declare-fun b!1189493 () Bool)

(declare-fun e!764645 () Bool)

(assert (=> b!1189493 (= e!764645 true)))

(declare-fun b!1189492 () Bool)

(declare-fun e!764644 () Bool)

(assert (=> b!1189492 (= e!764644 e!764645)))

(declare-fun b!1189491 () Bool)

(declare-fun e!764643 () Bool)

(assert (=> b!1189491 (= e!764643 e!764644)))

(assert (=> d!339987 e!764643))

(assert (= b!1189492 b!1189493))

(assert (= b!1189491 b!1189492))

(assert (= (and d!339987 ((_ is Cons!11977) rules!4386)) b!1189491))

(assert (=> b!1189493 (< (dynLambda!5374 order!7493 (toValue!3214 (transformation!2097 (h!17378 rules!4386)))) (dynLambda!5375 order!7495 lambda!49029))))

(assert (=> b!1189493 (< (dynLambda!5376 order!7497 (toChars!3073 (transformation!2097 (h!17378 rules!4386)))) (dynLambda!5375 order!7495 lambda!49029))))

(assert (=> d!339987 true))

(declare-fun lt!408960 () Bool)

(assert (=> d!339987 (= lt!408960 (forall!3167 l!6534 lambda!49029))))

(declare-fun e!764642 () Bool)

(assert (=> d!339987 (= lt!408960 e!764642)))

(declare-fun res!537412 () Bool)

(assert (=> d!339987 (=> res!537412 e!764642)))

(assert (=> d!339987 (= res!537412 (not ((_ is Cons!11978) l!6534)))))

(assert (=> d!339987 (not (isEmpty!7199 rules!4386))))

(assert (=> d!339987 (= (rulesProduceEachTokenIndividuallyList!658 thiss!27592 rules!4386 l!6534) lt!408960)))

(declare-fun b!1189489 () Bool)

(declare-fun e!764641 () Bool)

(assert (=> b!1189489 (= e!764642 e!764641)))

(declare-fun res!537411 () Bool)

(assert (=> b!1189489 (=> (not res!537411) (not e!764641))))

(assert (=> b!1189489 (= res!537411 (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 l!6534)))))

(declare-fun b!1189490 () Bool)

(assert (=> b!1189490 (= e!764641 (rulesProduceEachTokenIndividuallyList!658 thiss!27592 rules!4386 (t!112182 l!6534)))))

(assert (= (and d!339987 (not res!537412)) b!1189489))

(assert (= (and b!1189489 res!537411) b!1189490))

(declare-fun m!1364739 () Bool)

(assert (=> d!339987 m!1364739))

(assert (=> d!339987 m!1364657))

(declare-fun m!1364741 () Bool)

(assert (=> b!1189489 m!1364741))

(assert (=> b!1189490 m!1364647))

(assert (=> b!1189428 d!339987))

(declare-fun d!339989 () Bool)

(assert (=> d!339989 (= (inv!15809 (tag!2359 (rule!3518 (h!17379 l!6534)))) (= (mod (str.len (value!67795 (tag!2359 (rule!3518 (h!17379 l!6534))))) 2) 0))))

(assert (=> b!1189441 d!339989))

(declare-fun d!339991 () Bool)

(declare-fun res!537415 () Bool)

(declare-fun e!764648 () Bool)

(assert (=> d!339991 (=> (not res!537415) (not e!764648))))

(declare-fun semiInverseModEq!763 (Int Int) Bool)

(assert (=> d!339991 (= res!537415 (semiInverseModEq!763 (toChars!3073 (transformation!2097 (rule!3518 (h!17379 l!6534)))) (toValue!3214 (transformation!2097 (rule!3518 (h!17379 l!6534))))))))

(assert (=> d!339991 (= (inv!15812 (transformation!2097 (rule!3518 (h!17379 l!6534)))) e!764648)))

(declare-fun b!1189496 () Bool)

(declare-fun equivClasses!730 (Int Int) Bool)

(assert (=> b!1189496 (= e!764648 (equivClasses!730 (toChars!3073 (transformation!2097 (rule!3518 (h!17379 l!6534)))) (toValue!3214 (transformation!2097 (rule!3518 (h!17379 l!6534))))))))

(assert (= (and d!339991 res!537415) b!1189496))

(declare-fun m!1364743 () Bool)

(assert (=> d!339991 m!1364743))

(declare-fun m!1364745 () Bool)

(assert (=> b!1189496 m!1364745))

(assert (=> b!1189441 d!339991))

(declare-fun d!339993 () Bool)

(declare-fun lt!408989 () Bool)

(declare-fun e!764695 () Bool)

(assert (=> d!339993 (= lt!408989 e!764695)))

(declare-fun res!537462 () Bool)

(assert (=> d!339993 (=> (not res!537462) (not e!764695))))

(declare-datatypes ((IArray!7849 0))(
  ( (IArray!7850 (innerList!3982 List!12002)) )
))
(declare-datatypes ((Conc!3922 0))(
  ( (Node!3922 (left!10424 Conc!3922) (right!10754 Conc!3922) (csize!8074 Int) (cheight!4133 Int)) (Leaf!6001 (xs!6627 IArray!7849) (csize!8075 Int)) (Empty!3922) )
))
(declare-datatypes ((BalanceConc!7866 0))(
  ( (BalanceConc!7867 (c!197476 Conc!3922)) )
))
(declare-fun list!4393 (BalanceConc!7866) List!12002)

(declare-datatypes ((tuple2!12130 0))(
  ( (tuple2!12131 (_1!6912 BalanceConc!7866) (_2!6912 BalanceConc!7862)) )
))
(declare-fun lex!747 (LexerInterface!1792 List!12001 BalanceConc!7862) tuple2!12130)

(declare-fun print!684 (LexerInterface!1792 BalanceConc!7866) BalanceConc!7862)

(declare-fun singletonSeq!732 (Token!3856) BalanceConc!7866)

(assert (=> d!339993 (= res!537462 (= (list!4393 (_1!6912 (lex!747 thiss!27592 rules!4386 (print!684 thiss!27592 (singletonSeq!732 (h!17379 lt!408932)))))) (list!4393 (singletonSeq!732 (h!17379 lt!408932)))))))

(declare-fun e!764696 () Bool)

(assert (=> d!339993 (= lt!408989 e!764696)))

(declare-fun res!537463 () Bool)

(assert (=> d!339993 (=> (not res!537463) (not e!764696))))

(declare-fun lt!408988 () tuple2!12130)

(declare-fun size!9442 (BalanceConc!7866) Int)

(assert (=> d!339993 (= res!537463 (= (size!9442 (_1!6912 lt!408988)) 1))))

(assert (=> d!339993 (= lt!408988 (lex!747 thiss!27592 rules!4386 (print!684 thiss!27592 (singletonSeq!732 (h!17379 lt!408932)))))))

(assert (=> d!339993 (not (isEmpty!7199 rules!4386))))

(assert (=> d!339993 (= (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 lt!408932)) lt!408989)))

(declare-fun b!1189548 () Bool)

(declare-fun res!537461 () Bool)

(assert (=> b!1189548 (=> (not res!537461) (not e!764696))))

(declare-fun apply!2603 (BalanceConc!7866 Int) Token!3856)

(assert (=> b!1189548 (= res!537461 (= (apply!2603 (_1!6912 lt!408988) 0) (h!17379 lt!408932)))))

(declare-fun b!1189549 () Bool)

(declare-fun isEmpty!7201 (BalanceConc!7862) Bool)

(assert (=> b!1189549 (= e!764696 (isEmpty!7201 (_2!6912 lt!408988)))))

(declare-fun b!1189550 () Bool)

(assert (=> b!1189550 (= e!764695 (isEmpty!7201 (_2!6912 (lex!747 thiss!27592 rules!4386 (print!684 thiss!27592 (singletonSeq!732 (h!17379 lt!408932)))))))))

(assert (= (and d!339993 res!537463) b!1189548))

(assert (= (and b!1189548 res!537461) b!1189549))

(assert (= (and d!339993 res!537462) b!1189550))

(declare-fun m!1364815 () Bool)

(assert (=> d!339993 m!1364815))

(declare-fun m!1364817 () Bool)

(assert (=> d!339993 m!1364817))

(declare-fun m!1364819 () Bool)

(assert (=> d!339993 m!1364819))

(assert (=> d!339993 m!1364817))

(declare-fun m!1364821 () Bool)

(assert (=> d!339993 m!1364821))

(assert (=> d!339993 m!1364657))

(assert (=> d!339993 m!1364821))

(declare-fun m!1364823 () Bool)

(assert (=> d!339993 m!1364823))

(assert (=> d!339993 m!1364817))

(declare-fun m!1364825 () Bool)

(assert (=> d!339993 m!1364825))

(declare-fun m!1364827 () Bool)

(assert (=> b!1189548 m!1364827))

(declare-fun m!1364829 () Bool)

(assert (=> b!1189549 m!1364829))

(assert (=> b!1189550 m!1364817))

(assert (=> b!1189550 m!1364817))

(assert (=> b!1189550 m!1364821))

(assert (=> b!1189550 m!1364821))

(assert (=> b!1189550 m!1364823))

(declare-fun m!1364831 () Bool)

(assert (=> b!1189550 m!1364831))

(assert (=> b!1189440 d!339993))

(declare-fun bs!287779 () Bool)

(declare-fun d!340019 () Bool)

(assert (= bs!287779 (and d!340019 b!1189432)))

(declare-fun lambda!49032 () Int)

(assert (=> bs!287779 (= (= thiss!27592 Lexer!1790) (= lambda!49032 lambda!49022))))

(declare-fun bs!287780 () Bool)

(assert (= bs!287780 (and d!340019 d!339981)))

(assert (=> bs!287780 (= lambda!49032 lambda!49028)))

(declare-fun bs!287781 () Bool)

(assert (= bs!287781 (and d!340019 d!339987)))

(assert (=> bs!287781 (= lambda!49032 lambda!49029)))

(declare-fun b!1189555 () Bool)

(declare-fun e!764701 () Bool)

(assert (=> b!1189555 (= e!764701 true)))

(declare-fun b!1189554 () Bool)

(declare-fun e!764700 () Bool)

(assert (=> b!1189554 (= e!764700 e!764701)))

(declare-fun b!1189553 () Bool)

(declare-fun e!764699 () Bool)

(assert (=> b!1189553 (= e!764699 e!764700)))

(assert (=> d!340019 e!764699))

(assert (= b!1189554 b!1189555))

(assert (= b!1189553 b!1189554))

(assert (= (and d!340019 ((_ is Cons!11977) rules!4386)) b!1189553))

(assert (=> b!1189555 (< (dynLambda!5374 order!7493 (toValue!3214 (transformation!2097 (h!17378 rules!4386)))) (dynLambda!5375 order!7495 lambda!49032))))

(assert (=> b!1189555 (< (dynLambda!5376 order!7497 (toChars!3073 (transformation!2097 (h!17378 rules!4386)))) (dynLambda!5375 order!7495 lambda!49032))))

(assert (=> d!340019 true))

(declare-fun lt!408990 () Bool)

(assert (=> d!340019 (= lt!408990 (forall!3167 (t!112182 lt!408932) lambda!49032))))

(declare-fun e!764698 () Bool)

(assert (=> d!340019 (= lt!408990 e!764698)))

(declare-fun res!537465 () Bool)

(assert (=> d!340019 (=> res!537465 e!764698)))

(assert (=> d!340019 (= res!537465 (not ((_ is Cons!11978) (t!112182 lt!408932))))))

(assert (=> d!340019 (not (isEmpty!7199 rules!4386))))

(assert (=> d!340019 (= (rulesProduceEachTokenIndividuallyList!658 thiss!27592 rules!4386 (t!112182 lt!408932)) lt!408990)))

(declare-fun b!1189551 () Bool)

(declare-fun e!764697 () Bool)

(assert (=> b!1189551 (= e!764698 e!764697)))

(declare-fun res!537464 () Bool)

(assert (=> b!1189551 (=> (not res!537464) (not e!764697))))

(assert (=> b!1189551 (= res!537464 (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 (t!112182 lt!408932))))))

(declare-fun b!1189552 () Bool)

(assert (=> b!1189552 (= e!764697 (rulesProduceEachTokenIndividuallyList!658 thiss!27592 rules!4386 (t!112182 (t!112182 lt!408932))))))

(assert (= (and d!340019 (not res!537465)) b!1189551))

(assert (= (and b!1189551 res!537464) b!1189552))

(declare-fun m!1364833 () Bool)

(assert (=> d!340019 m!1364833))

(assert (=> d!340019 m!1364657))

(declare-fun m!1364835 () Bool)

(assert (=> b!1189551 m!1364835))

(declare-fun m!1364837 () Bool)

(assert (=> b!1189552 m!1364837))

(assert (=> b!1189442 d!340019))

(declare-fun d!340021 () Bool)

(assert (=> d!340021 (= (isEmpty!7199 rules!4386) ((_ is Nil!11977) rules!4386))))

(assert (=> b!1189433 d!340021))

(declare-fun d!340023 () Bool)

(assert (=> d!340023 (= (inv!15809 (tag!2359 (h!17378 rules!4386))) (= (mod (str.len (value!67795 (tag!2359 (h!17378 rules!4386)))) 2) 0))))

(assert (=> b!1189443 d!340023))

(declare-fun d!340025 () Bool)

(declare-fun res!537466 () Bool)

(declare-fun e!764702 () Bool)

(assert (=> d!340025 (=> (not res!537466) (not e!764702))))

(assert (=> d!340025 (= res!537466 (semiInverseModEq!763 (toChars!3073 (transformation!2097 (h!17378 rules!4386))) (toValue!3214 (transformation!2097 (h!17378 rules!4386)))))))

(assert (=> d!340025 (= (inv!15812 (transformation!2097 (h!17378 rules!4386))) e!764702)))

(declare-fun b!1189556 () Bool)

(assert (=> b!1189556 (= e!764702 (equivClasses!730 (toChars!3073 (transformation!2097 (h!17378 rules!4386))) (toValue!3214 (transformation!2097 (h!17378 rules!4386)))))))

(assert (= (and d!340025 res!537466) b!1189556))

(declare-fun m!1364839 () Bool)

(assert (=> d!340025 m!1364839))

(declare-fun m!1364841 () Bool)

(assert (=> b!1189556 m!1364841))

(assert (=> b!1189443 d!340025))

(declare-fun bs!287782 () Bool)

(declare-fun d!340027 () Bool)

(assert (= bs!287782 (and d!340027 b!1189432)))

(declare-fun lambda!49033 () Int)

(assert (=> bs!287782 (= (= thiss!27592 Lexer!1790) (= lambda!49033 lambda!49022))))

(declare-fun bs!287783 () Bool)

(assert (= bs!287783 (and d!340027 d!339981)))

(assert (=> bs!287783 (= lambda!49033 lambda!49028)))

(declare-fun bs!287784 () Bool)

(assert (= bs!287784 (and d!340027 d!339987)))

(assert (=> bs!287784 (= lambda!49033 lambda!49029)))

(declare-fun bs!287785 () Bool)

(assert (= bs!287785 (and d!340027 d!340019)))

(assert (=> bs!287785 (= lambda!49033 lambda!49032)))

(declare-fun b!1189561 () Bool)

(declare-fun e!764707 () Bool)

(assert (=> b!1189561 (= e!764707 true)))

(declare-fun b!1189560 () Bool)

(declare-fun e!764706 () Bool)

(assert (=> b!1189560 (= e!764706 e!764707)))

(declare-fun b!1189559 () Bool)

(declare-fun e!764705 () Bool)

(assert (=> b!1189559 (= e!764705 e!764706)))

(assert (=> d!340027 e!764705))

(assert (= b!1189560 b!1189561))

(assert (= b!1189559 b!1189560))

(assert (= (and d!340027 ((_ is Cons!11977) rules!4386)) b!1189559))

(assert (=> b!1189561 (< (dynLambda!5374 order!7493 (toValue!3214 (transformation!2097 (h!17378 rules!4386)))) (dynLambda!5375 order!7495 lambda!49033))))

(assert (=> b!1189561 (< (dynLambda!5376 order!7497 (toChars!3073 (transformation!2097 (h!17378 rules!4386)))) (dynLambda!5375 order!7495 lambda!49033))))

(assert (=> d!340027 true))

(declare-fun lt!408991 () Bool)

(assert (=> d!340027 (= lt!408991 (forall!3167 lt!408932 lambda!49033))))

(declare-fun e!764704 () Bool)

(assert (=> d!340027 (= lt!408991 e!764704)))

(declare-fun res!537468 () Bool)

(assert (=> d!340027 (=> res!537468 e!764704)))

(assert (=> d!340027 (= res!537468 (not ((_ is Cons!11978) lt!408932)))))

(assert (=> d!340027 (not (isEmpty!7199 rules!4386))))

(assert (=> d!340027 (= (rulesProduceEachTokenIndividuallyList!658 thiss!27592 rules!4386 lt!408932) lt!408991)))

(declare-fun b!1189557 () Bool)

(declare-fun e!764703 () Bool)

(assert (=> b!1189557 (= e!764704 e!764703)))

(declare-fun res!537467 () Bool)

(assert (=> b!1189557 (=> (not res!537467) (not e!764703))))

(assert (=> b!1189557 (= res!537467 (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 lt!408932)))))

(declare-fun b!1189558 () Bool)

(assert (=> b!1189558 (= e!764703 (rulesProduceEachTokenIndividuallyList!658 thiss!27592 rules!4386 (t!112182 lt!408932)))))

(assert (= (and d!340027 (not res!537468)) b!1189557))

(assert (= (and b!1189557 res!537467) b!1189558))

(declare-fun m!1364843 () Bool)

(assert (=> d!340027 m!1364843))

(assert (=> d!340027 m!1364657))

(assert (=> b!1189557 m!1364707))

(assert (=> b!1189558 m!1364659))

(assert (=> b!1189432 d!340027))

(declare-fun d!340029 () Bool)

(assert (=> d!340029 (subseq!341 (drop!565 l!6534 i!1621) l!6534)))

(declare-fun lt!408994 () Unit!18374)

(declare-fun choose!7690 (List!12002 Int) Unit!18374)

(assert (=> d!340029 (= lt!408994 (choose!7690 l!6534 i!1621))))

(assert (=> d!340029 (= (lemmaDropSubseq!104 l!6534 i!1621) lt!408994)))

(declare-fun bs!287786 () Bool)

(assert (= bs!287786 d!340029))

(assert (=> bs!287786 m!1364693))

(assert (=> bs!287786 m!1364693))

(declare-fun m!1364845 () Bool)

(assert (=> bs!287786 m!1364845))

(declare-fun m!1364847 () Bool)

(assert (=> bs!287786 m!1364847))

(assert (=> b!1189432 d!340029))

(declare-fun bs!287787 () Bool)

(declare-fun d!340031 () Bool)

(assert (= bs!287787 (and d!340031 d!339987)))

(declare-fun lambda!49034 () Int)

(assert (=> bs!287787 (= lambda!49034 lambda!49029)))

(declare-fun bs!287788 () Bool)

(assert (= bs!287788 (and d!340031 d!340019)))

(assert (=> bs!287788 (= lambda!49034 lambda!49032)))

(declare-fun bs!287789 () Bool)

(assert (= bs!287789 (and d!340031 b!1189432)))

(assert (=> bs!287789 (= (= thiss!27592 Lexer!1790) (= lambda!49034 lambda!49022))))

(declare-fun bs!287790 () Bool)

(assert (= bs!287790 (and d!340031 d!339981)))

(assert (=> bs!287790 (= lambda!49034 lambda!49028)))

(declare-fun bs!287791 () Bool)

(assert (= bs!287791 (and d!340031 d!340027)))

(assert (=> bs!287791 (= lambda!49034 lambda!49033)))

(declare-fun b!1189566 () Bool)

(declare-fun e!764712 () Bool)

(assert (=> b!1189566 (= e!764712 true)))

(declare-fun b!1189565 () Bool)

(declare-fun e!764711 () Bool)

(assert (=> b!1189565 (= e!764711 e!764712)))

(declare-fun b!1189564 () Bool)

(declare-fun e!764710 () Bool)

(assert (=> b!1189564 (= e!764710 e!764711)))

(assert (=> d!340031 e!764710))

(assert (= b!1189565 b!1189566))

(assert (= b!1189564 b!1189565))

(assert (= (and d!340031 ((_ is Cons!11977) rules!4386)) b!1189564))

(assert (=> b!1189566 (< (dynLambda!5374 order!7493 (toValue!3214 (transformation!2097 (h!17378 rules!4386)))) (dynLambda!5375 order!7495 lambda!49034))))

(assert (=> b!1189566 (< (dynLambda!5376 order!7497 (toChars!3073 (transformation!2097 (h!17378 rules!4386)))) (dynLambda!5375 order!7495 lambda!49034))))

(assert (=> d!340031 true))

(declare-fun lt!408995 () Bool)

(assert (=> d!340031 (= lt!408995 (forall!3167 lt!408928 lambda!49034))))

(declare-fun e!764709 () Bool)

(assert (=> d!340031 (= lt!408995 e!764709)))

(declare-fun res!537470 () Bool)

(assert (=> d!340031 (=> res!537470 e!764709)))

(assert (=> d!340031 (= res!537470 (not ((_ is Cons!11978) lt!408928)))))

(assert (=> d!340031 (not (isEmpty!7199 rules!4386))))

(assert (=> d!340031 (= (rulesProduceEachTokenIndividuallyList!658 thiss!27592 rules!4386 lt!408928) lt!408995)))

(declare-fun b!1189562 () Bool)

(declare-fun e!764708 () Bool)

(assert (=> b!1189562 (= e!764709 e!764708)))

(declare-fun res!537469 () Bool)

(assert (=> b!1189562 (=> (not res!537469) (not e!764708))))

(assert (=> b!1189562 (= res!537469 (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 lt!408928)))))

(declare-fun b!1189563 () Bool)

(assert (=> b!1189563 (= e!764708 (rulesProduceEachTokenIndividuallyList!658 thiss!27592 rules!4386 (t!112182 lt!408928)))))

(assert (= (and d!340031 (not res!537470)) b!1189562))

(assert (= (and b!1189562 res!537469) b!1189563))

(declare-fun m!1364849 () Bool)

(assert (=> d!340031 m!1364849))

(assert (=> d!340031 m!1364657))

(assert (=> b!1189562 m!1364653))

(assert (=> b!1189563 m!1364655))

(assert (=> b!1189432 d!340031))

(declare-fun d!340033 () Bool)

(declare-fun res!537475 () Bool)

(declare-fun e!764717 () Bool)

(assert (=> d!340033 (=> res!537475 e!764717)))

(assert (=> d!340033 (= res!537475 ((_ is Nil!11978) lt!408932))))

(assert (=> d!340033 (= (forall!3167 lt!408932 lambda!49022) e!764717)))

(declare-fun b!1189571 () Bool)

(declare-fun e!764718 () Bool)

(assert (=> b!1189571 (= e!764717 e!764718)))

(declare-fun res!537476 () Bool)

(assert (=> b!1189571 (=> (not res!537476) (not e!764718))))

(declare-fun dynLambda!5379 (Int Token!3856) Bool)

(assert (=> b!1189571 (= res!537476 (dynLambda!5379 lambda!49022 (h!17379 lt!408932)))))

(declare-fun b!1189572 () Bool)

(assert (=> b!1189572 (= e!764718 (forall!3167 (t!112182 lt!408932) lambda!49022))))

(assert (= (and d!340033 (not res!537475)) b!1189571))

(assert (= (and b!1189571 res!537476) b!1189572))

(declare-fun b_lambda!35723 () Bool)

(assert (=> (not b_lambda!35723) (not b!1189571)))

(declare-fun m!1364851 () Bool)

(assert (=> b!1189571 m!1364851))

(declare-fun m!1364853 () Bool)

(assert (=> b!1189572 m!1364853))

(assert (=> b!1189432 d!340033))

(declare-fun d!340035 () Bool)

(declare-fun res!537493 () Bool)

(declare-fun e!764739 () Bool)

(assert (=> d!340035 (=> res!537493 e!764739)))

(assert (=> d!340035 (= res!537493 (or (not ((_ is Cons!11978) lt!408928)) (not ((_ is Cons!11978) (t!112182 lt!408928)))))))

(assert (=> d!340035 (= (tokensListTwoByTwoPredicateSeparableList!186 thiss!27592 lt!408928 rules!4386) e!764739)))

(declare-fun b!1189592 () Bool)

(declare-fun e!764738 () Bool)

(assert (=> b!1189592 (= e!764739 e!764738)))

(declare-fun res!537494 () Bool)

(assert (=> b!1189592 (=> (not res!537494) (not e!764738))))

(declare-fun separableTokensPredicate!175 (LexerInterface!1792 Token!3856 Token!3856 List!12001) Bool)

(assert (=> b!1189592 (= res!537494 (separableTokensPredicate!175 thiss!27592 (h!17379 lt!408928) (h!17379 (t!112182 lt!408928)) rules!4386))))

(declare-fun lt!409034 () Unit!18374)

(declare-fun Unit!18385 () Unit!18374)

(assert (=> b!1189592 (= lt!409034 Unit!18385)))

(declare-fun size!9444 (BalanceConc!7862) Int)

(declare-fun charsOf!1113 (Token!3856) BalanceConc!7862)

(assert (=> b!1189592 (> (size!9444 (charsOf!1113 (h!17379 (t!112182 lt!408928)))) 0)))

(declare-fun lt!409033 () Unit!18374)

(declare-fun Unit!18386 () Unit!18374)

(assert (=> b!1189592 (= lt!409033 Unit!18386)))

(assert (=> b!1189592 (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 (t!112182 lt!408928)))))

(declare-fun lt!409031 () Unit!18374)

(declare-fun Unit!18387 () Unit!18374)

(assert (=> b!1189592 (= lt!409031 Unit!18387)))

(assert (=> b!1189592 (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 lt!408928))))

(declare-fun lt!409032 () Unit!18374)

(declare-fun lt!409037 () Unit!18374)

(assert (=> b!1189592 (= lt!409032 lt!409037)))

(assert (=> b!1189592 (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 (t!112182 lt!408928)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!334 (LexerInterface!1792 List!12001 List!12002 Token!3856) Unit!18374)

(assert (=> b!1189592 (= lt!409037 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!334 thiss!27592 rules!4386 lt!408928 (h!17379 (t!112182 lt!408928))))))

(declare-fun lt!409036 () Unit!18374)

(declare-fun lt!409035 () Unit!18374)

(assert (=> b!1189592 (= lt!409036 lt!409035)))

(assert (=> b!1189592 (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 lt!408928))))

(assert (=> b!1189592 (= lt!409035 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!334 thiss!27592 rules!4386 lt!408928 (h!17379 lt!408928)))))

(declare-fun b!1189593 () Bool)

(assert (=> b!1189593 (= e!764738 (tokensListTwoByTwoPredicateSeparableList!186 thiss!27592 (Cons!11978 (h!17379 (t!112182 lt!408928)) (t!112182 (t!112182 lt!408928))) rules!4386))))

(assert (= (and d!340035 (not res!537493)) b!1189592))

(assert (= (and b!1189592 res!537494) b!1189593))

(declare-fun m!1364873 () Bool)

(assert (=> b!1189592 m!1364873))

(declare-fun m!1364875 () Bool)

(assert (=> b!1189592 m!1364875))

(declare-fun m!1364877 () Bool)

(assert (=> b!1189592 m!1364877))

(assert (=> b!1189592 m!1364875))

(declare-fun m!1364879 () Bool)

(assert (=> b!1189592 m!1364879))

(declare-fun m!1364881 () Bool)

(assert (=> b!1189592 m!1364881))

(assert (=> b!1189592 m!1364653))

(declare-fun m!1364883 () Bool)

(assert (=> b!1189592 m!1364883))

(declare-fun m!1364885 () Bool)

(assert (=> b!1189593 m!1364885))

(assert (=> b!1189432 d!340035))

(declare-fun b!1189620 () Bool)

(declare-fun e!764760 () Bool)

(declare-fun e!764758 () Bool)

(assert (=> b!1189620 (= e!764760 e!764758)))

(declare-fun res!537505 () Bool)

(assert (=> b!1189620 (=> (not res!537505) (not e!764758))))

(assert (=> b!1189620 (= res!537505 ((_ is Cons!11978) (t!112182 l!6534)))))

(declare-fun b!1189623 () Bool)

(declare-fun e!764759 () Bool)

(assert (=> b!1189623 (= e!764759 (subseq!341 lt!408932 (t!112182 (t!112182 l!6534))))))

(declare-fun b!1189621 () Bool)

(assert (=> b!1189621 (= e!764758 e!764759)))

(declare-fun res!537507 () Bool)

(assert (=> b!1189621 (=> res!537507 e!764759)))

(declare-fun e!764761 () Bool)

(assert (=> b!1189621 (= res!537507 e!764761)))

(declare-fun res!537508 () Bool)

(assert (=> b!1189621 (=> (not res!537508) (not e!764761))))

(assert (=> b!1189621 (= res!537508 (= (h!17379 lt!408932) (h!17379 (t!112182 l!6534))))))

(declare-fun d!340039 () Bool)

(declare-fun res!537506 () Bool)

(assert (=> d!340039 (=> res!537506 e!764760)))

(assert (=> d!340039 (= res!537506 ((_ is Nil!11978) lt!408932))))

(assert (=> d!340039 (= (subseq!341 lt!408932 (t!112182 l!6534)) e!764760)))

(declare-fun b!1189622 () Bool)

(assert (=> b!1189622 (= e!764761 (subseq!341 (t!112182 lt!408932) (t!112182 (t!112182 l!6534))))))

(assert (= (and d!340039 (not res!537506)) b!1189620))

(assert (= (and b!1189620 res!537505) b!1189621))

(assert (= (and b!1189621 res!537508) b!1189622))

(assert (= (and b!1189621 (not res!537507)) b!1189623))

(declare-fun m!1364887 () Bool)

(assert (=> b!1189623 m!1364887))

(declare-fun m!1364889 () Bool)

(assert (=> b!1189622 m!1364889))

(assert (=> b!1189432 d!340039))

(declare-fun d!340041 () Bool)

(declare-fun res!537510 () Bool)

(declare-fun e!764767 () Bool)

(assert (=> d!340041 (=> res!537510 e!764767)))

(assert (=> d!340041 (= res!537510 ((_ is Nil!11978) lt!408928))))

(assert (=> d!340041 (= (forall!3167 lt!408928 lambda!49022) e!764767)))

(declare-fun b!1189633 () Bool)

(declare-fun e!764768 () Bool)

(assert (=> b!1189633 (= e!764767 e!764768)))

(declare-fun res!537511 () Bool)

(assert (=> b!1189633 (=> (not res!537511) (not e!764768))))

(assert (=> b!1189633 (= res!537511 (dynLambda!5379 lambda!49022 (h!17379 lt!408928)))))

(declare-fun b!1189634 () Bool)

(assert (=> b!1189634 (= e!764768 (forall!3167 (t!112182 lt!408928) lambda!49022))))

(assert (= (and d!340041 (not res!537510)) b!1189633))

(assert (= (and b!1189633 res!537511) b!1189634))

(declare-fun b_lambda!35725 () Bool)

(assert (=> (not b_lambda!35725) (not b!1189633)))

(declare-fun m!1364891 () Bool)

(assert (=> b!1189633 m!1364891))

(declare-fun m!1364893 () Bool)

(assert (=> b!1189634 m!1364893))

(assert (=> b!1189432 d!340041))

(declare-fun b!1189635 () Bool)

(declare-fun e!764771 () Bool)

(declare-fun e!764769 () Bool)

(assert (=> b!1189635 (= e!764771 e!764769)))

(declare-fun res!537512 () Bool)

(assert (=> b!1189635 (=> (not res!537512) (not e!764769))))

(assert (=> b!1189635 (= res!537512 ((_ is Cons!11978) l!6534))))

(declare-fun b!1189638 () Bool)

(declare-fun e!764770 () Bool)

(assert (=> b!1189638 (= e!764770 (subseq!341 lt!408928 (t!112182 l!6534)))))

(declare-fun b!1189636 () Bool)

(assert (=> b!1189636 (= e!764769 e!764770)))

(declare-fun res!537514 () Bool)

(assert (=> b!1189636 (=> res!537514 e!764770)))

(declare-fun e!764772 () Bool)

(assert (=> b!1189636 (= res!537514 e!764772)))

(declare-fun res!537515 () Bool)

(assert (=> b!1189636 (=> (not res!537515) (not e!764772))))

(assert (=> b!1189636 (= res!537515 (= (h!17379 lt!408928) (h!17379 l!6534)))))

(declare-fun d!340043 () Bool)

(declare-fun res!537513 () Bool)

(assert (=> d!340043 (=> res!537513 e!764771)))

(assert (=> d!340043 (= res!537513 ((_ is Nil!11978) lt!408928))))

(assert (=> d!340043 (= (subseq!341 lt!408928 l!6534) e!764771)))

(declare-fun b!1189637 () Bool)

(assert (=> b!1189637 (= e!764772 (subseq!341 (t!112182 lt!408928) (t!112182 l!6534)))))

(assert (= (and d!340043 (not res!537513)) b!1189635))

(assert (= (and b!1189635 res!537512) b!1189636))

(assert (= (and b!1189636 res!537515) b!1189637))

(assert (= (and b!1189636 (not res!537514)) b!1189638))

(declare-fun m!1364903 () Bool)

(assert (=> b!1189638 m!1364903))

(declare-fun m!1364905 () Bool)

(assert (=> b!1189637 m!1364905))

(assert (=> b!1189432 d!340043))

(declare-fun bs!287816 () Bool)

(declare-fun b!1189764 () Bool)

(assert (= bs!287816 (and b!1189764 d!339987)))

(declare-fun lambda!49043 () Int)

(assert (=> bs!287816 (= (= Lexer!1790 thiss!27592) (= lambda!49043 lambda!49029))))

(declare-fun bs!287817 () Bool)

(assert (= bs!287817 (and b!1189764 b!1189432)))

(assert (=> bs!287817 (= lambda!49043 lambda!49022)))

(declare-fun bs!287818 () Bool)

(assert (= bs!287818 (and b!1189764 d!339981)))

(assert (=> bs!287818 (= (= Lexer!1790 thiss!27592) (= lambda!49043 lambda!49028))))

(declare-fun bs!287819 () Bool)

(assert (= bs!287819 (and b!1189764 d!340027)))

(assert (=> bs!287819 (= (= Lexer!1790 thiss!27592) (= lambda!49043 lambda!49033))))

(declare-fun bs!287820 () Bool)

(assert (= bs!287820 (and b!1189764 d!340031)))

(assert (=> bs!287820 (= (= Lexer!1790 thiss!27592) (= lambda!49043 lambda!49034))))

(declare-fun bs!287821 () Bool)

(assert (= bs!287821 (and b!1189764 d!340019)))

(assert (=> bs!287821 (= (= Lexer!1790 thiss!27592) (= lambda!49043 lambda!49032))))

(declare-fun b!1189768 () Bool)

(declare-fun e!764875 () Bool)

(assert (=> b!1189768 (= e!764875 true)))

(declare-fun b!1189767 () Bool)

(declare-fun e!764874 () Bool)

(assert (=> b!1189767 (= e!764874 e!764875)))

(declare-fun b!1189766 () Bool)

(declare-fun e!764873 () Bool)

(assert (=> b!1189766 (= e!764873 e!764874)))

(assert (=> b!1189764 e!764873))

(assert (= b!1189767 b!1189768))

(assert (= b!1189766 b!1189767))

(assert (= (and b!1189764 ((_ is Cons!11977) rules!4386)) b!1189766))

(assert (=> b!1189768 (< (dynLambda!5374 order!7493 (toValue!3214 (transformation!2097 (h!17378 rules!4386)))) (dynLambda!5375 order!7495 lambda!49043))))

(assert (=> b!1189768 (< (dynLambda!5376 order!7497 (toChars!3073 (transformation!2097 (h!17378 rules!4386)))) (dynLambda!5375 order!7495 lambda!49043))))

(declare-fun b!1189763 () Bool)

(declare-fun e!764872 () Bool)

(declare-fun lt!409077 () List!12002)

(assert (=> b!1189763 (= e!764872 (rulesProduceEachTokenIndividuallyList!658 thiss!27592 rules!4386 (t!112182 lt!409077)))))

(declare-fun b!1189762 () Bool)

(declare-fun e!764871 () Bool)

(assert (=> b!1189762 (= e!764871 e!764872)))

(declare-fun res!537554 () Bool)

(assert (=> b!1189762 (=> (not res!537554) (not e!764872))))

(assert (=> b!1189762 (= res!537554 (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 lt!409077)))))

(declare-fun b!1189765 () Bool)

(declare-fun e!764869 () Bool)

(declare-fun lt!409081 () List!12002)

(assert (=> b!1189765 (= e!764869 (subseq!341 lt!409081 (t!112182 l!6534)))))

(declare-fun e!764870 () Bool)

(assert (=> b!1189764 (= e!764870 (tokensListTwoByTwoPredicateSeparableList!186 thiss!27592 (drop!565 (t!112182 l!6534) (- i!1621 1)) rules!4386))))

(declare-fun lt!409078 () Unit!18374)

(declare-fun lt!409076 () Unit!18374)

(assert (=> b!1189764 (= lt!409078 lt!409076)))

(assert (=> b!1189764 (forall!3167 lt!409081 lambda!49043)))

(assert (=> b!1189764 (= lt!409076 (lemmaForallSubseq!201 lt!409081 (t!112182 l!6534) lambda!49043))))

(assert (=> b!1189764 e!764869))

(declare-fun res!537557 () Bool)

(assert (=> b!1189764 (=> (not res!537557) (not e!764869))))

(assert (=> b!1189764 (= res!537557 (forall!3167 (t!112182 l!6534) lambda!49043))))

(assert (=> b!1189764 (= lt!409081 (drop!565 (t!112182 l!6534) (- i!1621 1)))))

(declare-fun lt!409079 () Unit!18374)

(declare-fun lt!409080 () Unit!18374)

(assert (=> b!1189764 (= lt!409079 lt!409080)))

(assert (=> b!1189764 (subseq!341 (drop!565 (t!112182 l!6534) (- i!1621 1)) (t!112182 l!6534))))

(assert (=> b!1189764 (= lt!409080 (lemmaDropSubseq!104 (t!112182 l!6534) (- i!1621 1)))))

(declare-fun d!340047 () Bool)

(assert (=> d!340047 e!764870))

(declare-fun res!537556 () Bool)

(assert (=> d!340047 (=> (not res!537556) (not e!764870))))

(assert (=> d!340047 (= res!537556 (= (rulesProduceEachTokenIndividuallyList!658 thiss!27592 rules!4386 (drop!565 (t!112182 l!6534) (- i!1621 1))) e!764871))))

(declare-fun res!537555 () Bool)

(assert (=> d!340047 (=> res!537555 e!764871)))

(assert (=> d!340047 (= res!537555 (not ((_ is Cons!11978) lt!409077)))))

(assert (=> d!340047 (= lt!409077 (drop!565 (t!112182 l!6534) (- i!1621 1)))))

(declare-fun lt!409075 () Unit!18374)

(declare-fun choose!7691 (LexerInterface!1792 List!12002 Int List!12001) Unit!18374)

(assert (=> d!340047 (= lt!409075 (choose!7691 thiss!27592 (t!112182 l!6534) (- i!1621 1) rules!4386))))

(assert (=> d!340047 (not (isEmpty!7199 rules!4386))))

(assert (=> d!340047 (= (tokensListTwoByTwoPredicateSeparableTokensDropList!72 thiss!27592 (t!112182 l!6534) (- i!1621 1) rules!4386) lt!409075)))

(assert (= (and d!340047 (not res!537555)) b!1189762))

(assert (= (and b!1189762 res!537554) b!1189763))

(assert (= (and d!340047 res!537556) b!1189764))

(assert (= (and b!1189764 res!537557) b!1189765))

(declare-fun m!1365019 () Bool)

(assert (=> b!1189765 m!1365019))

(assert (=> d!340047 m!1364677))

(assert (=> d!340047 m!1364677))

(declare-fun m!1365021 () Bool)

(assert (=> d!340047 m!1365021))

(declare-fun m!1365023 () Bool)

(assert (=> d!340047 m!1365023))

(assert (=> d!340047 m!1364657))

(declare-fun m!1365025 () Bool)

(assert (=> b!1189763 m!1365025))

(assert (=> b!1189764 m!1364677))

(declare-fun m!1365027 () Bool)

(assert (=> b!1189764 m!1365027))

(declare-fun m!1365029 () Bool)

(assert (=> b!1189764 m!1365029))

(assert (=> b!1189764 m!1364677))

(declare-fun m!1365031 () Bool)

(assert (=> b!1189764 m!1365031))

(declare-fun m!1365033 () Bool)

(assert (=> b!1189764 m!1365033))

(assert (=> b!1189764 m!1364681))

(declare-fun m!1365035 () Bool)

(assert (=> b!1189764 m!1365035))

(assert (=> b!1189764 m!1364677))

(declare-fun m!1365037 () Bool)

(assert (=> b!1189762 m!1365037))

(assert (=> b!1189432 d!340047))

(declare-fun d!340081 () Bool)

(assert (=> d!340081 (subseq!341 (drop!565 (t!112182 l!6534) (- i!1621 1)) (t!112182 l!6534))))

(declare-fun lt!409082 () Unit!18374)

(assert (=> d!340081 (= lt!409082 (choose!7690 (t!112182 l!6534) (- i!1621 1)))))

(assert (=> d!340081 (= (lemmaDropSubseq!104 (t!112182 l!6534) (- i!1621 1)) lt!409082)))

(declare-fun bs!287822 () Bool)

(assert (= bs!287822 d!340081))

(assert (=> bs!287822 m!1364677))

(assert (=> bs!287822 m!1364677))

(assert (=> bs!287822 m!1365031))

(declare-fun m!1365039 () Bool)

(assert (=> bs!287822 m!1365039))

(assert (=> b!1189432 d!340081))

(declare-fun d!340083 () Bool)

(assert (=> d!340083 (forall!3167 lt!408928 lambda!49022)))

(declare-fun lt!409085 () Unit!18374)

(declare-fun choose!7692 (List!12002 List!12002 Int) Unit!18374)

(assert (=> d!340083 (= lt!409085 (choose!7692 lt!408928 l!6534 lambda!49022))))

(assert (=> d!340083 (forall!3167 l!6534 lambda!49022)))

(assert (=> d!340083 (= (lemmaForallSubseq!201 lt!408928 l!6534 lambda!49022) lt!409085)))

(declare-fun bs!287823 () Bool)

(assert (= bs!287823 d!340083))

(assert (=> bs!287823 m!1364689))

(declare-fun m!1365041 () Bool)

(assert (=> bs!287823 m!1365041))

(declare-fun m!1365043 () Bool)

(assert (=> bs!287823 m!1365043))

(assert (=> b!1189432 d!340083))

(declare-fun d!340085 () Bool)

(assert (=> d!340085 (forall!3167 lt!408932 lambda!49022)))

(declare-fun lt!409086 () Unit!18374)

(assert (=> d!340085 (= lt!409086 (choose!7692 lt!408932 (t!112182 l!6534) lambda!49022))))

(assert (=> d!340085 (forall!3167 (t!112182 l!6534) lambda!49022)))

(assert (=> d!340085 (= (lemmaForallSubseq!201 lt!408932 (t!112182 l!6534) lambda!49022) lt!409086)))

(declare-fun bs!287824 () Bool)

(assert (= bs!287824 d!340085))

(assert (=> bs!287824 m!1364685))

(declare-fun m!1365045 () Bool)

(assert (=> bs!287824 m!1365045))

(declare-fun m!1365047 () Bool)

(assert (=> bs!287824 m!1365047))

(assert (=> b!1189432 d!340085))

(declare-fun b!1189787 () Bool)

(declare-fun e!764890 () Int)

(declare-fun call!82661 () Int)

(assert (=> b!1189787 (= e!764890 (- call!82661 i!1621))))

(declare-fun b!1189788 () Bool)

(declare-fun e!764888 () List!12002)

(assert (=> b!1189788 (= e!764888 l!6534)))

(declare-fun b!1189790 () Bool)

(declare-fun e!764887 () Bool)

(declare-fun lt!409089 () List!12002)

(declare-fun e!764886 () Int)

(declare-fun size!9445 (List!12002) Int)

(assert (=> b!1189790 (= e!764887 (= (size!9445 lt!409089) e!764886))))

(declare-fun c!197462 () Bool)

(assert (=> b!1189790 (= c!197462 (<= i!1621 0))))

(declare-fun b!1189791 () Bool)

(assert (=> b!1189791 (= e!764890 0)))

(declare-fun b!1189792 () Bool)

(declare-fun e!764889 () List!12002)

(assert (=> b!1189792 (= e!764889 Nil!11978)))

(declare-fun b!1189793 () Bool)

(assert (=> b!1189793 (= e!764888 (drop!565 (t!112182 l!6534) (- i!1621 1)))))

(declare-fun b!1189794 () Bool)

(assert (=> b!1189794 (= e!764886 call!82661)))

(declare-fun b!1189789 () Bool)

(assert (=> b!1189789 (= e!764889 e!764888)))

(declare-fun c!197465 () Bool)

(assert (=> b!1189789 (= c!197465 (<= i!1621 0))))

(declare-fun d!340087 () Bool)

(assert (=> d!340087 e!764887))

(declare-fun res!537560 () Bool)

(assert (=> d!340087 (=> (not res!537560) (not e!764887))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1653 (List!12002) (InoxSet Token!3856))

(assert (=> d!340087 (= res!537560 (= ((_ map implies) (content!1653 lt!409089) (content!1653 l!6534)) ((as const (InoxSet Token!3856)) true)))))

(assert (=> d!340087 (= lt!409089 e!764889)))

(declare-fun c!197464 () Bool)

(assert (=> d!340087 (= c!197464 ((_ is Nil!11978) l!6534))))

(assert (=> d!340087 (= (drop!565 l!6534 i!1621) lt!409089)))

(declare-fun bm!82656 () Bool)

(assert (=> bm!82656 (= call!82661 (size!9445 l!6534))))

(declare-fun b!1189795 () Bool)

(assert (=> b!1189795 (= e!764886 e!764890)))

(declare-fun c!197463 () Bool)

(assert (=> b!1189795 (= c!197463 (>= i!1621 call!82661))))

(assert (= (and d!340087 c!197464) b!1189792))

(assert (= (and d!340087 (not c!197464)) b!1189789))

(assert (= (and b!1189789 c!197465) b!1189788))

(assert (= (and b!1189789 (not c!197465)) b!1189793))

(assert (= (and d!340087 res!537560) b!1189790))

(assert (= (and b!1189790 c!197462) b!1189794))

(assert (= (and b!1189790 (not c!197462)) b!1189795))

(assert (= (and b!1189795 c!197463) b!1189791))

(assert (= (and b!1189795 (not c!197463)) b!1189787))

(assert (= (or b!1189794 b!1189795 b!1189787) bm!82656))

(declare-fun m!1365049 () Bool)

(assert (=> b!1189790 m!1365049))

(assert (=> b!1189793 m!1364677))

(declare-fun m!1365051 () Bool)

(assert (=> d!340087 m!1365051))

(declare-fun m!1365053 () Bool)

(assert (=> d!340087 m!1365053))

(declare-fun m!1365055 () Bool)

(assert (=> bm!82656 m!1365055))

(assert (=> b!1189432 d!340087))

(declare-fun b!1189796 () Bool)

(declare-fun e!764895 () Int)

(declare-fun call!82662 () Int)

(assert (=> b!1189796 (= e!764895 (- call!82662 (- i!1621 1)))))

(declare-fun b!1189797 () Bool)

(declare-fun e!764893 () List!12002)

(assert (=> b!1189797 (= e!764893 (t!112182 l!6534))))

(declare-fun b!1189799 () Bool)

(declare-fun e!764892 () Bool)

(declare-fun lt!409090 () List!12002)

(declare-fun e!764891 () Int)

(assert (=> b!1189799 (= e!764892 (= (size!9445 lt!409090) e!764891))))

(declare-fun c!197466 () Bool)

(assert (=> b!1189799 (= c!197466 (<= (- i!1621 1) 0))))

(declare-fun b!1189800 () Bool)

(assert (=> b!1189800 (= e!764895 0)))

(declare-fun b!1189801 () Bool)

(declare-fun e!764894 () List!12002)

(assert (=> b!1189801 (= e!764894 Nil!11978)))

(declare-fun b!1189802 () Bool)

(assert (=> b!1189802 (= e!764893 (drop!565 (t!112182 (t!112182 l!6534)) (- (- i!1621 1) 1)))))

(declare-fun b!1189803 () Bool)

(assert (=> b!1189803 (= e!764891 call!82662)))

(declare-fun b!1189798 () Bool)

(assert (=> b!1189798 (= e!764894 e!764893)))

(declare-fun c!197469 () Bool)

(assert (=> b!1189798 (= c!197469 (<= (- i!1621 1) 0))))

(declare-fun d!340089 () Bool)

(assert (=> d!340089 e!764892))

(declare-fun res!537561 () Bool)

(assert (=> d!340089 (=> (not res!537561) (not e!764892))))

(assert (=> d!340089 (= res!537561 (= ((_ map implies) (content!1653 lt!409090) (content!1653 (t!112182 l!6534))) ((as const (InoxSet Token!3856)) true)))))

(assert (=> d!340089 (= lt!409090 e!764894)))

(declare-fun c!197468 () Bool)

(assert (=> d!340089 (= c!197468 ((_ is Nil!11978) (t!112182 l!6534)))))

(assert (=> d!340089 (= (drop!565 (t!112182 l!6534) (- i!1621 1)) lt!409090)))

(declare-fun bm!82657 () Bool)

(assert (=> bm!82657 (= call!82662 (size!9445 (t!112182 l!6534)))))

(declare-fun b!1189804 () Bool)

(assert (=> b!1189804 (= e!764891 e!764895)))

(declare-fun c!197467 () Bool)

(assert (=> b!1189804 (= c!197467 (>= (- i!1621 1) call!82662))))

(assert (= (and d!340089 c!197468) b!1189801))

(assert (= (and d!340089 (not c!197468)) b!1189798))

(assert (= (and b!1189798 c!197469) b!1189797))

(assert (= (and b!1189798 (not c!197469)) b!1189802))

(assert (= (and d!340089 res!537561) b!1189799))

(assert (= (and b!1189799 c!197466) b!1189803))

(assert (= (and b!1189799 (not c!197466)) b!1189804))

(assert (= (and b!1189804 c!197467) b!1189800))

(assert (= (and b!1189804 (not c!197467)) b!1189796))

(assert (= (or b!1189803 b!1189804 b!1189796) bm!82657))

(declare-fun m!1365057 () Bool)

(assert (=> b!1189799 m!1365057))

(declare-fun m!1365059 () Bool)

(assert (=> b!1189802 m!1365059))

(declare-fun m!1365061 () Bool)

(assert (=> d!340089 m!1365061))

(declare-fun m!1365063 () Bool)

(assert (=> d!340089 m!1365063))

(declare-fun m!1365065 () Bool)

(assert (=> bm!82657 m!1365065))

(assert (=> b!1189432 d!340089))

(declare-fun d!340091 () Bool)

(declare-fun res!537562 () Bool)

(declare-fun e!764897 () Bool)

(assert (=> d!340091 (=> res!537562 e!764897)))

(assert (=> d!340091 (= res!537562 (or (not ((_ is Cons!11978) l!6534)) (not ((_ is Cons!11978) (t!112182 l!6534)))))))

(assert (=> d!340091 (= (tokensListTwoByTwoPredicateSeparableList!186 thiss!27592 l!6534 rules!4386) e!764897)))

(declare-fun b!1189805 () Bool)

(declare-fun e!764896 () Bool)

(assert (=> b!1189805 (= e!764897 e!764896)))

(declare-fun res!537563 () Bool)

(assert (=> b!1189805 (=> (not res!537563) (not e!764896))))

(assert (=> b!1189805 (= res!537563 (separableTokensPredicate!175 thiss!27592 (h!17379 l!6534) (h!17379 (t!112182 l!6534)) rules!4386))))

(declare-fun lt!409094 () Unit!18374)

(declare-fun Unit!18391 () Unit!18374)

(assert (=> b!1189805 (= lt!409094 Unit!18391)))

(assert (=> b!1189805 (> (size!9444 (charsOf!1113 (h!17379 (t!112182 l!6534)))) 0)))

(declare-fun lt!409093 () Unit!18374)

(declare-fun Unit!18392 () Unit!18374)

(assert (=> b!1189805 (= lt!409093 Unit!18392)))

(assert (=> b!1189805 (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 (t!112182 l!6534)))))

(declare-fun lt!409091 () Unit!18374)

(declare-fun Unit!18393 () Unit!18374)

(assert (=> b!1189805 (= lt!409091 Unit!18393)))

(assert (=> b!1189805 (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 l!6534))))

(declare-fun lt!409092 () Unit!18374)

(declare-fun lt!409097 () Unit!18374)

(assert (=> b!1189805 (= lt!409092 lt!409097)))

(assert (=> b!1189805 (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 (t!112182 l!6534)))))

(assert (=> b!1189805 (= lt!409097 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!334 thiss!27592 rules!4386 l!6534 (h!17379 (t!112182 l!6534))))))

(declare-fun lt!409096 () Unit!18374)

(declare-fun lt!409095 () Unit!18374)

(assert (=> b!1189805 (= lt!409096 lt!409095)))

(assert (=> b!1189805 (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 l!6534))))

(assert (=> b!1189805 (= lt!409095 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!334 thiss!27592 rules!4386 l!6534 (h!17379 l!6534)))))

(declare-fun b!1189806 () Bool)

(assert (=> b!1189806 (= e!764896 (tokensListTwoByTwoPredicateSeparableList!186 thiss!27592 (Cons!11978 (h!17379 (t!112182 l!6534)) (t!112182 (t!112182 l!6534))) rules!4386))))

(assert (= (and d!340091 (not res!537562)) b!1189805))

(assert (= (and b!1189805 res!537563) b!1189806))

(declare-fun m!1365067 () Bool)

(assert (=> b!1189805 m!1365067))

(declare-fun m!1365069 () Bool)

(assert (=> b!1189805 m!1365069))

(declare-fun m!1365071 () Bool)

(assert (=> b!1189805 m!1365071))

(assert (=> b!1189805 m!1365069))

(assert (=> b!1189805 m!1364735))

(declare-fun m!1365073 () Bool)

(assert (=> b!1189805 m!1365073))

(assert (=> b!1189805 m!1364741))

(declare-fun m!1365075 () Bool)

(assert (=> b!1189805 m!1365075))

(declare-fun m!1365077 () Bool)

(assert (=> b!1189806 m!1365077))

(assert (=> b!1189444 d!340091))

(declare-fun d!340093 () Bool)

(declare-fun res!537568 () Bool)

(declare-fun e!764900 () Bool)

(assert (=> d!340093 (=> (not res!537568) (not e!764900))))

(declare-fun isEmpty!7203 (List!11999) Bool)

(assert (=> d!340093 (= res!537568 (not (isEmpty!7203 (originalCharacters!2651 (h!17379 l!6534)))))))

(assert (=> d!340093 (= (inv!15813 (h!17379 l!6534)) e!764900)))

(declare-fun b!1189811 () Bool)

(declare-fun res!537569 () Bool)

(assert (=> b!1189811 (=> (not res!537569) (not e!764900))))

(declare-fun list!4395 (BalanceConc!7862) List!11999)

(declare-fun dynLambda!5380 (Int TokenValue!2163) BalanceConc!7862)

(assert (=> b!1189811 (= res!537569 (= (originalCharacters!2651 (h!17379 l!6534)) (list!4395 (dynLambda!5380 (toChars!3073 (transformation!2097 (rule!3518 (h!17379 l!6534)))) (value!67821 (h!17379 l!6534))))))))

(declare-fun b!1189812 () Bool)

(declare-fun size!9446 (List!11999) Int)

(assert (=> b!1189812 (= e!764900 (= (size!9438 (h!17379 l!6534)) (size!9446 (originalCharacters!2651 (h!17379 l!6534)))))))

(assert (= (and d!340093 res!537568) b!1189811))

(assert (= (and b!1189811 res!537569) b!1189812))

(declare-fun b_lambda!35735 () Bool)

(assert (=> (not b_lambda!35735) (not b!1189811)))

(declare-fun t!112202 () Bool)

(declare-fun tb!66465 () Bool)

(assert (=> (and b!1189434 (= (toChars!3073 (transformation!2097 (rule!3518 (h!17379 l!6534)))) (toChars!3073 (transformation!2097 (rule!3518 (h!17379 l!6534))))) t!112202) tb!66465))

(declare-fun b!1189817 () Bool)

(declare-fun e!764903 () Bool)

(declare-fun tp!339578 () Bool)

(declare-fun inv!15816 (Conc!3920) Bool)

(assert (=> b!1189817 (= e!764903 (and (inv!15816 (c!197429 (dynLambda!5380 (toChars!3073 (transformation!2097 (rule!3518 (h!17379 l!6534)))) (value!67821 (h!17379 l!6534))))) tp!339578))))

(declare-fun result!79960 () Bool)

(declare-fun inv!15817 (BalanceConc!7862) Bool)

(assert (=> tb!66465 (= result!79960 (and (inv!15817 (dynLambda!5380 (toChars!3073 (transformation!2097 (rule!3518 (h!17379 l!6534)))) (value!67821 (h!17379 l!6534)))) e!764903))))

(assert (= tb!66465 b!1189817))

(declare-fun m!1365079 () Bool)

(assert (=> b!1189817 m!1365079))

(declare-fun m!1365081 () Bool)

(assert (=> tb!66465 m!1365081))

(assert (=> b!1189811 t!112202))

(declare-fun b_and!81969 () Bool)

(assert (= b_and!81951 (and (=> t!112202 result!79960) b_and!81969)))

(declare-fun tb!66467 () Bool)

(declare-fun t!112204 () Bool)

(assert (=> (and b!1189430 (= (toChars!3073 (transformation!2097 (h!17378 rules!4386))) (toChars!3073 (transformation!2097 (rule!3518 (h!17379 l!6534))))) t!112204) tb!66467))

(declare-fun result!79964 () Bool)

(assert (= result!79964 result!79960))

(assert (=> b!1189811 t!112204))

(declare-fun b_and!81971 () Bool)

(assert (= b_and!81955 (and (=> t!112204 result!79964) b_and!81971)))

(declare-fun m!1365083 () Bool)

(assert (=> d!340093 m!1365083))

(declare-fun m!1365085 () Bool)

(assert (=> b!1189811 m!1365085))

(assert (=> b!1189811 m!1365085))

(declare-fun m!1365087 () Bool)

(assert (=> b!1189811 m!1365087))

(declare-fun m!1365089 () Bool)

(assert (=> b!1189812 m!1365089))

(assert (=> b!1189446 d!340093))

(declare-fun b!1189828 () Bool)

(declare-fun e!764912 () Bool)

(declare-fun inv!16 (TokenValue!2163) Bool)

(assert (=> b!1189828 (= e!764912 (inv!16 (value!67821 (h!17379 l!6534))))))

(declare-fun b!1189829 () Bool)

(declare-fun e!764911 () Bool)

(assert (=> b!1189829 (= e!764912 e!764911)))

(declare-fun c!197474 () Bool)

(assert (=> b!1189829 (= c!197474 ((_ is IntegerValue!6490) (value!67821 (h!17379 l!6534))))))

(declare-fun b!1189830 () Bool)

(declare-fun inv!17 (TokenValue!2163) Bool)

(assert (=> b!1189830 (= e!764911 (inv!17 (value!67821 (h!17379 l!6534))))))

(declare-fun b!1189831 () Bool)

(declare-fun res!537572 () Bool)

(declare-fun e!764910 () Bool)

(assert (=> b!1189831 (=> res!537572 e!764910)))

(assert (=> b!1189831 (= res!537572 (not ((_ is IntegerValue!6491) (value!67821 (h!17379 l!6534)))))))

(assert (=> b!1189831 (= e!764911 e!764910)))

(declare-fun b!1189832 () Bool)

(declare-fun inv!15 (TokenValue!2163) Bool)

(assert (=> b!1189832 (= e!764910 (inv!15 (value!67821 (h!17379 l!6534))))))

(declare-fun d!340095 () Bool)

(declare-fun c!197475 () Bool)

(assert (=> d!340095 (= c!197475 ((_ is IntegerValue!6489) (value!67821 (h!17379 l!6534))))))

(assert (=> d!340095 (= (inv!21 (value!67821 (h!17379 l!6534))) e!764912)))

(assert (= (and d!340095 c!197475) b!1189828))

(assert (= (and d!340095 (not c!197475)) b!1189829))

(assert (= (and b!1189829 c!197474) b!1189830))

(assert (= (and b!1189829 (not c!197474)) b!1189831))

(assert (= (and b!1189831 (not res!537572)) b!1189832))

(declare-fun m!1365091 () Bool)

(assert (=> b!1189828 m!1365091))

(declare-fun m!1365093 () Bool)

(assert (=> b!1189830 m!1365093))

(declare-fun m!1365095 () Bool)

(assert (=> b!1189832 m!1365095))

(assert (=> b!1189435 d!340095))

(declare-fun d!340097 () Bool)

(declare-fun res!537573 () Bool)

(declare-fun e!764914 () Bool)

(assert (=> d!340097 (=> res!537573 e!764914)))

(assert (=> d!340097 (= res!537573 (or (not ((_ is Cons!11978) (t!112182 l!6534))) (not ((_ is Cons!11978) (t!112182 (t!112182 l!6534))))))))

(assert (=> d!340097 (= (tokensListTwoByTwoPredicateSeparableList!186 thiss!27592 (t!112182 l!6534) rules!4386) e!764914)))

(declare-fun b!1189833 () Bool)

(declare-fun e!764913 () Bool)

(assert (=> b!1189833 (= e!764914 e!764913)))

(declare-fun res!537574 () Bool)

(assert (=> b!1189833 (=> (not res!537574) (not e!764913))))

(assert (=> b!1189833 (= res!537574 (separableTokensPredicate!175 thiss!27592 (h!17379 (t!112182 l!6534)) (h!17379 (t!112182 (t!112182 l!6534))) rules!4386))))

(declare-fun lt!409101 () Unit!18374)

(declare-fun Unit!18394 () Unit!18374)

(assert (=> b!1189833 (= lt!409101 Unit!18394)))

(assert (=> b!1189833 (> (size!9444 (charsOf!1113 (h!17379 (t!112182 (t!112182 l!6534))))) 0)))

(declare-fun lt!409100 () Unit!18374)

(declare-fun Unit!18395 () Unit!18374)

(assert (=> b!1189833 (= lt!409100 Unit!18395)))

(assert (=> b!1189833 (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 (t!112182 (t!112182 l!6534))))))

(declare-fun lt!409098 () Unit!18374)

(declare-fun Unit!18396 () Unit!18374)

(assert (=> b!1189833 (= lt!409098 Unit!18396)))

(assert (=> b!1189833 (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 (t!112182 l!6534)))))

(declare-fun lt!409099 () Unit!18374)

(declare-fun lt!409104 () Unit!18374)

(assert (=> b!1189833 (= lt!409099 lt!409104)))

(assert (=> b!1189833 (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 (t!112182 (t!112182 l!6534))))))

(assert (=> b!1189833 (= lt!409104 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!334 thiss!27592 rules!4386 (t!112182 l!6534) (h!17379 (t!112182 (t!112182 l!6534)))))))

(declare-fun lt!409103 () Unit!18374)

(declare-fun lt!409102 () Unit!18374)

(assert (=> b!1189833 (= lt!409103 lt!409102)))

(assert (=> b!1189833 (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 (t!112182 l!6534)))))

(assert (=> b!1189833 (= lt!409102 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!334 thiss!27592 rules!4386 (t!112182 l!6534) (h!17379 (t!112182 l!6534))))))

(declare-fun b!1189834 () Bool)

(assert (=> b!1189834 (= e!764913 (tokensListTwoByTwoPredicateSeparableList!186 thiss!27592 (Cons!11978 (h!17379 (t!112182 (t!112182 l!6534))) (t!112182 (t!112182 (t!112182 l!6534)))) rules!4386))))

(assert (= (and d!340097 (not res!537573)) b!1189833))

(assert (= (and b!1189833 res!537574) b!1189834))

(declare-fun m!1365097 () Bool)

(assert (=> b!1189833 m!1365097))

(declare-fun m!1365099 () Bool)

(assert (=> b!1189833 m!1365099))

(declare-fun m!1365101 () Bool)

(assert (=> b!1189833 m!1365101))

(assert (=> b!1189833 m!1365099))

(declare-fun m!1365103 () Bool)

(assert (=> b!1189833 m!1365103))

(declare-fun m!1365105 () Bool)

(assert (=> b!1189833 m!1365105))

(assert (=> b!1189833 m!1364735))

(declare-fun m!1365107 () Bool)

(assert (=> b!1189833 m!1365107))

(declare-fun m!1365109 () Bool)

(assert (=> b!1189834 m!1365109))

(assert (=> b!1189437 d!340097))

(declare-fun bs!287825 () Bool)

(declare-fun d!340099 () Bool)

(assert (= bs!287825 (and d!340099 d!339987)))

(declare-fun lambda!49044 () Int)

(assert (=> bs!287825 (= lambda!49044 lambda!49029)))

(declare-fun bs!287826 () Bool)

(assert (= bs!287826 (and d!340099 b!1189432)))

(assert (=> bs!287826 (= (= thiss!27592 Lexer!1790) (= lambda!49044 lambda!49022))))

(declare-fun bs!287827 () Bool)

(assert (= bs!287827 (and d!340099 d!339981)))

(assert (=> bs!287827 (= lambda!49044 lambda!49028)))

(declare-fun bs!287828 () Bool)

(assert (= bs!287828 (and d!340099 b!1189764)))

(assert (=> bs!287828 (= (= thiss!27592 Lexer!1790) (= lambda!49044 lambda!49043))))

(declare-fun bs!287829 () Bool)

(assert (= bs!287829 (and d!340099 d!340027)))

(assert (=> bs!287829 (= lambda!49044 lambda!49033)))

(declare-fun bs!287830 () Bool)

(assert (= bs!287830 (and d!340099 d!340031)))

(assert (=> bs!287830 (= lambda!49044 lambda!49034)))

(declare-fun bs!287831 () Bool)

(assert (= bs!287831 (and d!340099 d!340019)))

(assert (=> bs!287831 (= lambda!49044 lambda!49032)))

(declare-fun b!1189839 () Bool)

(declare-fun e!764919 () Bool)

(assert (=> b!1189839 (= e!764919 true)))

(declare-fun b!1189838 () Bool)

(declare-fun e!764918 () Bool)

(assert (=> b!1189838 (= e!764918 e!764919)))

(declare-fun b!1189837 () Bool)

(declare-fun e!764917 () Bool)

(assert (=> b!1189837 (= e!764917 e!764918)))

(assert (=> d!340099 e!764917))

(assert (= b!1189838 b!1189839))

(assert (= b!1189837 b!1189838))

(assert (= (and d!340099 ((_ is Cons!11977) rules!4386)) b!1189837))

(assert (=> b!1189839 (< (dynLambda!5374 order!7493 (toValue!3214 (transformation!2097 (h!17378 rules!4386)))) (dynLambda!5375 order!7495 lambda!49044))))

(assert (=> b!1189839 (< (dynLambda!5376 order!7497 (toChars!3073 (transformation!2097 (h!17378 rules!4386)))) (dynLambda!5375 order!7495 lambda!49044))))

(assert (=> d!340099 true))

(declare-fun lt!409105 () Bool)

(assert (=> d!340099 (= lt!409105 (forall!3167 (t!112182 lt!408928) lambda!49044))))

(declare-fun e!764916 () Bool)

(assert (=> d!340099 (= lt!409105 e!764916)))

(declare-fun res!537576 () Bool)

(assert (=> d!340099 (=> res!537576 e!764916)))

(assert (=> d!340099 (= res!537576 (not ((_ is Cons!11978) (t!112182 lt!408928))))))

(assert (=> d!340099 (not (isEmpty!7199 rules!4386))))

(assert (=> d!340099 (= (rulesProduceEachTokenIndividuallyList!658 thiss!27592 rules!4386 (t!112182 lt!408928)) lt!409105)))

(declare-fun b!1189835 () Bool)

(declare-fun e!764915 () Bool)

(assert (=> b!1189835 (= e!764916 e!764915)))

(declare-fun res!537575 () Bool)

(assert (=> b!1189835 (=> (not res!537575) (not e!764915))))

(assert (=> b!1189835 (= res!537575 (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 (t!112182 lt!408928))))))

(declare-fun b!1189836 () Bool)

(assert (=> b!1189836 (= e!764915 (rulesProduceEachTokenIndividuallyList!658 thiss!27592 rules!4386 (t!112182 (t!112182 lt!408928))))))

(assert (= (and d!340099 (not res!537576)) b!1189835))

(assert (= (and b!1189835 res!537575) b!1189836))

(declare-fun m!1365111 () Bool)

(assert (=> d!340099 m!1365111))

(assert (=> d!340099 m!1364657))

(assert (=> b!1189835 m!1364879))

(declare-fun m!1365113 () Bool)

(assert (=> b!1189836 m!1365113))

(assert (=> b!1189436 d!340099))

(declare-fun d!340101 () Bool)

(declare-fun res!537577 () Bool)

(declare-fun e!764921 () Bool)

(assert (=> d!340101 (=> res!537577 e!764921)))

(assert (=> d!340101 (= res!537577 (or (not ((_ is Cons!11978) lt!408932)) (not ((_ is Cons!11978) (t!112182 lt!408932)))))))

(assert (=> d!340101 (= (tokensListTwoByTwoPredicateSeparableList!186 thiss!27592 lt!408932 rules!4386) e!764921)))

(declare-fun b!1189840 () Bool)

(declare-fun e!764920 () Bool)

(assert (=> b!1189840 (= e!764921 e!764920)))

(declare-fun res!537578 () Bool)

(assert (=> b!1189840 (=> (not res!537578) (not e!764920))))

(assert (=> b!1189840 (= res!537578 (separableTokensPredicate!175 thiss!27592 (h!17379 lt!408932) (h!17379 (t!112182 lt!408932)) rules!4386))))

(declare-fun lt!409109 () Unit!18374)

(declare-fun Unit!18397 () Unit!18374)

(assert (=> b!1189840 (= lt!409109 Unit!18397)))

(assert (=> b!1189840 (> (size!9444 (charsOf!1113 (h!17379 (t!112182 lt!408932)))) 0)))

(declare-fun lt!409108 () Unit!18374)

(declare-fun Unit!18398 () Unit!18374)

(assert (=> b!1189840 (= lt!409108 Unit!18398)))

(assert (=> b!1189840 (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 (t!112182 lt!408932)))))

(declare-fun lt!409106 () Unit!18374)

(declare-fun Unit!18399 () Unit!18374)

(assert (=> b!1189840 (= lt!409106 Unit!18399)))

(assert (=> b!1189840 (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 lt!408932))))

(declare-fun lt!409107 () Unit!18374)

(declare-fun lt!409112 () Unit!18374)

(assert (=> b!1189840 (= lt!409107 lt!409112)))

(assert (=> b!1189840 (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 (t!112182 lt!408932)))))

(assert (=> b!1189840 (= lt!409112 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!334 thiss!27592 rules!4386 lt!408932 (h!17379 (t!112182 lt!408932))))))

(declare-fun lt!409111 () Unit!18374)

(declare-fun lt!409110 () Unit!18374)

(assert (=> b!1189840 (= lt!409111 lt!409110)))

(assert (=> b!1189840 (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 lt!408932))))

(assert (=> b!1189840 (= lt!409110 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!334 thiss!27592 rules!4386 lt!408932 (h!17379 lt!408932)))))

(declare-fun b!1189841 () Bool)

(assert (=> b!1189841 (= e!764920 (tokensListTwoByTwoPredicateSeparableList!186 thiss!27592 (Cons!11978 (h!17379 (t!112182 lt!408932)) (t!112182 (t!112182 lt!408932))) rules!4386))))

(assert (= (and d!340101 (not res!537577)) b!1189840))

(assert (= (and b!1189840 res!537578) b!1189841))

(declare-fun m!1365115 () Bool)

(assert (=> b!1189840 m!1365115))

(declare-fun m!1365117 () Bool)

(assert (=> b!1189840 m!1365117))

(declare-fun m!1365119 () Bool)

(assert (=> b!1189840 m!1365119))

(assert (=> b!1189840 m!1365117))

(assert (=> b!1189840 m!1364835))

(declare-fun m!1365121 () Bool)

(assert (=> b!1189840 m!1365121))

(assert (=> b!1189840 m!1364707))

(declare-fun m!1365123 () Bool)

(assert (=> b!1189840 m!1365123))

(declare-fun m!1365125 () Bool)

(assert (=> b!1189841 m!1365125))

(assert (=> b!1189438 d!340101))

(declare-fun d!340103 () Bool)

(declare-fun lt!409114 () Bool)

(declare-fun e!764922 () Bool)

(assert (=> d!340103 (= lt!409114 e!764922)))

(declare-fun res!537580 () Bool)

(assert (=> d!340103 (=> (not res!537580) (not e!764922))))

(assert (=> d!340103 (= res!537580 (= (list!4393 (_1!6912 (lex!747 thiss!27592 rules!4386 (print!684 thiss!27592 (singletonSeq!732 (h!17379 lt!408928)))))) (list!4393 (singletonSeq!732 (h!17379 lt!408928)))))))

(declare-fun e!764923 () Bool)

(assert (=> d!340103 (= lt!409114 e!764923)))

(declare-fun res!537581 () Bool)

(assert (=> d!340103 (=> (not res!537581) (not e!764923))))

(declare-fun lt!409113 () tuple2!12130)

(assert (=> d!340103 (= res!537581 (= (size!9442 (_1!6912 lt!409113)) 1))))

(assert (=> d!340103 (= lt!409113 (lex!747 thiss!27592 rules!4386 (print!684 thiss!27592 (singletonSeq!732 (h!17379 lt!408928)))))))

(assert (=> d!340103 (not (isEmpty!7199 rules!4386))))

(assert (=> d!340103 (= (rulesProduceIndividualToken!818 thiss!27592 rules!4386 (h!17379 lt!408928)) lt!409114)))

(declare-fun b!1189842 () Bool)

(declare-fun res!537579 () Bool)

(assert (=> b!1189842 (=> (not res!537579) (not e!764923))))

(assert (=> b!1189842 (= res!537579 (= (apply!2603 (_1!6912 lt!409113) 0) (h!17379 lt!408928)))))

(declare-fun b!1189843 () Bool)

(assert (=> b!1189843 (= e!764923 (isEmpty!7201 (_2!6912 lt!409113)))))

(declare-fun b!1189844 () Bool)

(assert (=> b!1189844 (= e!764922 (isEmpty!7201 (_2!6912 (lex!747 thiss!27592 rules!4386 (print!684 thiss!27592 (singletonSeq!732 (h!17379 lt!408928)))))))))

(assert (= (and d!340103 res!537581) b!1189842))

(assert (= (and b!1189842 res!537579) b!1189843))

(assert (= (and d!340103 res!537580) b!1189844))

(declare-fun m!1365127 () Bool)

(assert (=> d!340103 m!1365127))

(declare-fun m!1365129 () Bool)

(assert (=> d!340103 m!1365129))

(declare-fun m!1365131 () Bool)

(assert (=> d!340103 m!1365131))

(assert (=> d!340103 m!1365129))

(declare-fun m!1365133 () Bool)

(assert (=> d!340103 m!1365133))

(assert (=> d!340103 m!1364657))

(assert (=> d!340103 m!1365133))

(declare-fun m!1365135 () Bool)

(assert (=> d!340103 m!1365135))

(assert (=> d!340103 m!1365129))

(declare-fun m!1365137 () Bool)

(assert (=> d!340103 m!1365137))

(declare-fun m!1365139 () Bool)

(assert (=> b!1189842 m!1365139))

(declare-fun m!1365141 () Bool)

(assert (=> b!1189843 m!1365141))

(assert (=> b!1189844 m!1365129))

(assert (=> b!1189844 m!1365129))

(assert (=> b!1189844 m!1365133))

(assert (=> b!1189844 m!1365133))

(assert (=> b!1189844 m!1365135))

(declare-fun m!1365143 () Bool)

(assert (=> b!1189844 m!1365143))

(assert (=> b!1189427 d!340103))

(declare-fun b!1189857 () Bool)

(declare-fun e!764926 () Bool)

(declare-fun tp!339592 () Bool)

(assert (=> b!1189857 (= e!764926 tp!339592)))

(declare-fun b!1189855 () Bool)

(declare-fun tp_is_empty!5863 () Bool)

(assert (=> b!1189855 (= e!764926 tp_is_empty!5863)))

(declare-fun b!1189856 () Bool)

(declare-fun tp!339590 () Bool)

(declare-fun tp!339591 () Bool)

(assert (=> b!1189856 (= e!764926 (and tp!339590 tp!339591))))

(declare-fun b!1189858 () Bool)

(declare-fun tp!339593 () Bool)

(declare-fun tp!339589 () Bool)

(assert (=> b!1189858 (= e!764926 (and tp!339593 tp!339589))))

(assert (=> b!1189441 (= tp!339518 e!764926)))

(assert (= (and b!1189441 ((_ is ElementMatch!3367) (regex!2097 (rule!3518 (h!17379 l!6534))))) b!1189855))

(assert (= (and b!1189441 ((_ is Concat!5530) (regex!2097 (rule!3518 (h!17379 l!6534))))) b!1189856))

(assert (= (and b!1189441 ((_ is Star!3367) (regex!2097 (rule!3518 (h!17379 l!6534))))) b!1189857))

(assert (= (and b!1189441 ((_ is Union!3367) (regex!2097 (rule!3518 (h!17379 l!6534))))) b!1189858))

(declare-fun b!1189869 () Bool)

(declare-fun b_free!28773 () Bool)

(declare-fun b_next!29477 () Bool)

(assert (=> b!1189869 (= b_free!28773 (not b_next!29477))))

(declare-fun tp!339605 () Bool)

(declare-fun b_and!81973 () Bool)

(assert (=> b!1189869 (= tp!339605 b_and!81973)))

(declare-fun b_free!28775 () Bool)

(declare-fun b_next!29479 () Bool)

(assert (=> b!1189869 (= b_free!28775 (not b_next!29479))))

(declare-fun t!112206 () Bool)

(declare-fun tb!66469 () Bool)

(assert (=> (and b!1189869 (= (toChars!3073 (transformation!2097 (h!17378 (t!112181 rules!4386)))) (toChars!3073 (transformation!2097 (rule!3518 (h!17379 l!6534))))) t!112206) tb!66469))

(declare-fun result!79970 () Bool)

(assert (= result!79970 result!79960))

(assert (=> b!1189811 t!112206))

(declare-fun b_and!81975 () Bool)

(declare-fun tp!339603 () Bool)

(assert (=> b!1189869 (= tp!339603 (and (=> t!112206 result!79970) b_and!81975))))

(declare-fun e!764936 () Bool)

(assert (=> b!1189869 (= e!764936 (and tp!339605 tp!339603))))

(declare-fun e!764938 () Bool)

(declare-fun b!1189868 () Bool)

(declare-fun tp!339602 () Bool)

(assert (=> b!1189868 (= e!764938 (and tp!339602 (inv!15809 (tag!2359 (h!17378 (t!112181 rules!4386)))) (inv!15812 (transformation!2097 (h!17378 (t!112181 rules!4386)))) e!764936))))

(declare-fun b!1189867 () Bool)

(declare-fun e!764935 () Bool)

(declare-fun tp!339604 () Bool)

(assert (=> b!1189867 (= e!764935 (and e!764938 tp!339604))))

(assert (=> b!1189431 (= tp!339519 e!764935)))

(assert (= b!1189868 b!1189869))

(assert (= b!1189867 b!1189868))

(assert (= (and b!1189431 ((_ is Cons!11977) (t!112181 rules!4386))) b!1189867))

(declare-fun m!1365145 () Bool)

(assert (=> b!1189868 m!1365145))

(declare-fun m!1365147 () Bool)

(assert (=> b!1189868 m!1365147))

(declare-fun b!1189872 () Bool)

(declare-fun e!764939 () Bool)

(declare-fun tp!339609 () Bool)

(assert (=> b!1189872 (= e!764939 tp!339609)))

(declare-fun b!1189870 () Bool)

(assert (=> b!1189870 (= e!764939 tp_is_empty!5863)))

(declare-fun b!1189871 () Bool)

(declare-fun tp!339607 () Bool)

(declare-fun tp!339608 () Bool)

(assert (=> b!1189871 (= e!764939 (and tp!339607 tp!339608))))

(declare-fun b!1189873 () Bool)

(declare-fun tp!339610 () Bool)

(declare-fun tp!339606 () Bool)

(assert (=> b!1189873 (= e!764939 (and tp!339610 tp!339606))))

(assert (=> b!1189443 (= tp!339520 e!764939)))

(assert (= (and b!1189443 ((_ is ElementMatch!3367) (regex!2097 (h!17378 rules!4386)))) b!1189870))

(assert (= (and b!1189443 ((_ is Concat!5530) (regex!2097 (h!17378 rules!4386)))) b!1189871))

(assert (= (and b!1189443 ((_ is Star!3367) (regex!2097 (h!17378 rules!4386)))) b!1189872))

(assert (= (and b!1189443 ((_ is Union!3367) (regex!2097 (h!17378 rules!4386)))) b!1189873))

(declare-fun b!1189876 () Bool)

(declare-fun e!764942 () Bool)

(assert (=> b!1189876 (= e!764942 true)))

(declare-fun b!1189875 () Bool)

(declare-fun e!764941 () Bool)

(assert (=> b!1189875 (= e!764941 e!764942)))

(declare-fun b!1189874 () Bool)

(declare-fun e!764940 () Bool)

(assert (=> b!1189874 (= e!764940 e!764941)))

(assert (=> b!1189455 e!764940))

(assert (= b!1189875 b!1189876))

(assert (= b!1189874 b!1189875))

(assert (= (and b!1189455 ((_ is Cons!11977) (t!112181 rules!4386))) b!1189874))

(assert (=> b!1189876 (< (dynLambda!5374 order!7493 (toValue!3214 (transformation!2097 (h!17378 (t!112181 rules!4386))))) (dynLambda!5375 order!7495 lambda!49022))))

(assert (=> b!1189876 (< (dynLambda!5376 order!7497 (toChars!3073 (transformation!2097 (h!17378 (t!112181 rules!4386))))) (dynLambda!5375 order!7495 lambda!49022))))

(declare-fun b!1189890 () Bool)

(declare-fun b_free!28777 () Bool)

(declare-fun b_next!29481 () Bool)

(assert (=> b!1189890 (= b_free!28777 (not b_next!29481))))

(declare-fun tp!339623 () Bool)

(declare-fun b_and!81977 () Bool)

(assert (=> b!1189890 (= tp!339623 b_and!81977)))

(declare-fun b_free!28779 () Bool)

(declare-fun b_next!29483 () Bool)

(assert (=> b!1189890 (= b_free!28779 (not b_next!29483))))

(declare-fun t!112208 () Bool)

(declare-fun tb!66471 () Bool)

(assert (=> (and b!1189890 (= (toChars!3073 (transformation!2097 (rule!3518 (h!17379 (t!112182 l!6534))))) (toChars!3073 (transformation!2097 (rule!3518 (h!17379 l!6534))))) t!112208) tb!66471))

(declare-fun result!79974 () Bool)

(assert (= result!79974 result!79960))

(assert (=> b!1189811 t!112208))

(declare-fun b_and!81979 () Bool)

(declare-fun tp!339624 () Bool)

(assert (=> b!1189890 (= tp!339624 (and (=> t!112208 result!79974) b_and!81979))))

(declare-fun tp!339625 () Bool)

(declare-fun e!764957 () Bool)

(declare-fun e!764958 () Bool)

(declare-fun b!1189887 () Bool)

(assert (=> b!1189887 (= e!764957 (and (inv!15813 (h!17379 (t!112182 l!6534))) e!764958 tp!339625))))

(declare-fun b!1189888 () Bool)

(declare-fun tp!339621 () Bool)

(declare-fun e!764955 () Bool)

(assert (=> b!1189888 (= e!764958 (and (inv!21 (value!67821 (h!17379 (t!112182 l!6534)))) e!764955 tp!339621))))

(declare-fun e!764956 () Bool)

(declare-fun tp!339622 () Bool)

(declare-fun b!1189889 () Bool)

(assert (=> b!1189889 (= e!764955 (and tp!339622 (inv!15809 (tag!2359 (rule!3518 (h!17379 (t!112182 l!6534))))) (inv!15812 (transformation!2097 (rule!3518 (h!17379 (t!112182 l!6534))))) e!764956))))

(assert (=> b!1189890 (= e!764956 (and tp!339623 tp!339624))))

(assert (=> b!1189446 (= tp!339514 e!764957)))

(assert (= b!1189889 b!1189890))

(assert (= b!1189888 b!1189889))

(assert (= b!1189887 b!1189888))

(assert (= (and b!1189446 ((_ is Cons!11978) (t!112182 l!6534))) b!1189887))

(declare-fun m!1365149 () Bool)

(assert (=> b!1189887 m!1365149))

(declare-fun m!1365151 () Bool)

(assert (=> b!1189888 m!1365151))

(declare-fun m!1365153 () Bool)

(assert (=> b!1189889 m!1365153))

(declare-fun m!1365155 () Bool)

(assert (=> b!1189889 m!1365155))

(declare-fun b!1189895 () Bool)

(declare-fun e!764963 () Bool)

(declare-fun tp!339628 () Bool)

(assert (=> b!1189895 (= e!764963 (and tp_is_empty!5863 tp!339628))))

(assert (=> b!1189435 (= tp!339515 e!764963)))

(assert (= (and b!1189435 ((_ is Cons!11975) (originalCharacters!2651 (h!17379 l!6534)))) b!1189895))

(declare-fun b_lambda!35737 () Bool)

(assert (= b_lambda!35725 (or b!1189432 b_lambda!35737)))

(declare-fun bs!287832 () Bool)

(declare-fun d!340105 () Bool)

(assert (= bs!287832 (and d!340105 b!1189432)))

(assert (=> bs!287832 (= (dynLambda!5379 lambda!49022 (h!17379 lt!408928)) (rulesProduceIndividualToken!818 Lexer!1790 rules!4386 (h!17379 lt!408928)))))

(declare-fun m!1365157 () Bool)

(assert (=> bs!287832 m!1365157))

(assert (=> b!1189633 d!340105))

(declare-fun b_lambda!35739 () Bool)

(assert (= b_lambda!35723 (or b!1189432 b_lambda!35739)))

(declare-fun bs!287833 () Bool)

(declare-fun d!340107 () Bool)

(assert (= bs!287833 (and d!340107 b!1189432)))

(assert (=> bs!287833 (= (dynLambda!5379 lambda!49022 (h!17379 lt!408932)) (rulesProduceIndividualToken!818 Lexer!1790 rules!4386 (h!17379 lt!408932)))))

(declare-fun m!1365159 () Bool)

(assert (=> bs!287833 m!1365159))

(assert (=> b!1189571 d!340107))

(declare-fun b_lambda!35741 () Bool)

(assert (= b_lambda!35735 (or (and b!1189434 b_free!28759) (and b!1189430 b_free!28763 (= (toChars!3073 (transformation!2097 (h!17378 rules!4386))) (toChars!3073 (transformation!2097 (rule!3518 (h!17379 l!6534)))))) (and b!1189869 b_free!28775 (= (toChars!3073 (transformation!2097 (h!17378 (t!112181 rules!4386)))) (toChars!3073 (transformation!2097 (rule!3518 (h!17379 l!6534)))))) (and b!1189890 b_free!28779 (= (toChars!3073 (transformation!2097 (rule!3518 (h!17379 (t!112182 l!6534))))) (toChars!3073 (transformation!2097 (rule!3518 (h!17379 l!6534)))))) b_lambda!35741)))

(check-sat (not d!340025) (not b!1189765) (not b_lambda!35737) (not b_next!29467) (not d!340085) (not b!1189871) (not b!1189563) (not d!340083) (not b!1189762) (not b_next!29463) (not b!1189858) (not b!1189889) (not b!1189812) (not b!1189562) (not b!1189867) (not b!1189806) b_and!81977 (not b!1189557) (not bm!82657) (not b_lambda!35739) (not b_next!29477) (not d!340019) (not b!1189799) (not b!1189638) (not d!339987) (not bm!82656) (not b!1189887) (not b!1189460) (not b!1189802) (not b!1189489) (not b!1189833) b_and!81979 (not b!1189832) (not b!1189828) (not b!1189868) b_and!81971 (not d!340089) (not b!1189766) b_and!81973 (not b!1189842) b_and!81975 (not b!1189496) (not b!1189872) (not d!340029) (not b!1189817) (not d!340031) (not b!1189550) (not b!1189637) (not b!1189572) (not bs!287833) (not b!1189764) (not b!1189484) (not d!340099) (not b!1189841) (not b!1189843) (not d!339993) b_and!81969 (not b_lambda!35741) (not b!1189553) (not b!1189830) (not b!1189483) (not b_next!29461) (not bs!287832) (not b!1189790) (not b!1189491) (not b!1189834) (not b!1189559) (not tb!66465) (not b!1189623) b_and!81949 (not b!1189549) (not b_next!29479) (not b!1189857) (not b!1189482) (not b!1189593) (not b!1189856) (not b!1189873) (not b!1189844) (not d!340087) (not b!1189874) (not b!1189836) (not b!1189840) (not b!1189548) (not b!1189895) (not d!339977) (not b!1189835) (not b!1189888) (not b!1189556) (not b!1189552) (not b!1189793) (not b!1189551) (not b!1189763) (not d!339991) (not b!1189558) (not b!1189490) (not d!339981) (not b_next!29483) (not b!1189837) b_and!81953 tp_is_empty!5863 (not b!1189805) (not b!1189634) (not d!340103) (not d!340081) (not d!340027) (not b_next!29465) (not b!1189811) (not b!1189564) (not d!340093) (not b!1189622) (not b!1189592) (not d!340047) (not b_next!29481))
(check-sat (not b_next!29463) (not b_next!29467) b_and!81969 (not b_next!29461) (not b_next!29483) b_and!81953 (not b_next!29465) (not b_next!29481) b_and!81977 (not b_next!29477) b_and!81979 b_and!81971 b_and!81973 b_and!81975 b_and!81949 (not b_next!29479))
