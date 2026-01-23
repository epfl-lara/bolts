; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!104922 () Bool)

(assert start!104922)

(declare-fun b!1183971 () Bool)

(declare-fun b_free!28381 () Bool)

(declare-fun b_next!29085 () Bool)

(assert (=> b!1183971 (= b_free!28381 (not b_next!29085))))

(declare-fun tp!337535 () Bool)

(declare-fun b_and!81421 () Bool)

(assert (=> b!1183971 (= tp!337535 b_and!81421)))

(declare-fun b_free!28383 () Bool)

(declare-fun b_next!29087 () Bool)

(assert (=> b!1183971 (= b_free!28383 (not b_next!29087))))

(declare-fun tp!337536 () Bool)

(declare-fun b_and!81423 () Bool)

(assert (=> b!1183971 (= tp!337536 b_and!81423)))

(declare-fun b!1183965 () Bool)

(declare-fun b_free!28385 () Bool)

(declare-fun b_next!29089 () Bool)

(assert (=> b!1183965 (= b_free!28385 (not b_next!29089))))

(declare-fun tp!337541 () Bool)

(declare-fun b_and!81425 () Bool)

(assert (=> b!1183965 (= tp!337541 b_and!81425)))

(declare-fun b_free!28387 () Bool)

(declare-fun b_next!29091 () Bool)

(assert (=> b!1183965 (= b_free!28387 (not b_next!29091))))

(declare-fun tp!337534 () Bool)

(declare-fun b_and!81427 () Bool)

(assert (=> b!1183965 (= tp!337534 b_and!81427)))

(declare-fun b!1183987 () Bool)

(declare-fun e!760323 () Bool)

(assert (=> b!1183987 (= e!760323 true)))

(declare-fun b!1183986 () Bool)

(declare-fun e!760322 () Bool)

(assert (=> b!1183986 (= e!760322 e!760323)))

(declare-fun b!1183985 () Bool)

(declare-fun e!760321 () Bool)

(assert (=> b!1183985 (= e!760321 e!760322)))

(declare-fun b!1183974 () Bool)

(assert (=> b!1183974 e!760321))

(assert (= b!1183986 b!1183987))

(assert (= b!1183985 b!1183986))

(declare-datatypes ((C!7004 0))(
  ( (C!7005 (val!3798 Int)) )
))
(declare-datatypes ((List!11884 0))(
  ( (Nil!11860) (Cons!11860 (h!17261 C!7004) (t!111686 List!11884)) )
))
(declare-datatypes ((IArray!7771 0))(
  ( (IArray!7772 (innerList!3943 List!11884)) )
))
(declare-datatypes ((Conc!3883 0))(
  ( (Node!3883 (left!10329 Conc!3883) (right!10659 Conc!3883) (csize!7996 Int) (cheight!4094 Int)) (Leaf!5950 (xs!6588 IArray!7771) (csize!7997 Int)) (Empty!3883) )
))
(declare-datatypes ((String!14362 0))(
  ( (String!14363 (value!67111 String)) )
))
(declare-datatypes ((List!11885 0))(
  ( (Nil!11861) (Cons!11861 (h!17262 (_ BitVec 16)) (t!111687 List!11885)) )
))
(declare-datatypes ((BalanceConc!7788 0))(
  ( (BalanceConc!7789 (c!196970 Conc!3883)) )
))
(declare-datatypes ((TokenValue!2139 0))(
  ( (FloatLiteralValue!4278 (text!15418 List!11885)) (TokenValueExt!2138 (__x!7989 Int)) (Broken!10695 (value!67112 List!11885)) (Object!2162) (End!2139) (Def!2139) (Underscore!2139) (Match!2139) (Else!2139) (Error!2139) (Case!2139) (If!2139) (Extends!2139) (Abstract!2139) (Class!2139) (Val!2139) (DelimiterValue!4278 (del!2199 List!11885)) (KeywordValue!2145 (value!67113 List!11885)) (CommentValue!4278 (value!67114 List!11885)) (WhitespaceValue!4278 (value!67115 List!11885)) (IndentationValue!2139 (value!67116 List!11885)) (String!14364) (Int32!2139) (Broken!10696 (value!67117 List!11885)) (Boolean!2140) (Unit!18169) (OperatorValue!2142 (op!2199 List!11885)) (IdentifierValue!4278 (value!67118 List!11885)) (IdentifierValue!4279 (value!67119 List!11885)) (WhitespaceValue!4279 (value!67120 List!11885)) (True!4278) (False!4278) (Broken!10697 (value!67121 List!11885)) (Broken!10698 (value!67122 List!11885)) (True!4279) (RightBrace!2139) (RightBracket!2139) (Colon!2139) (Null!2139) (Comma!2139) (LeftBracket!2139) (False!4279) (LeftBrace!2139) (ImaginaryLiteralValue!2139 (text!15419 List!11885)) (StringLiteralValue!6417 (value!67123 List!11885)) (EOFValue!2139 (value!67124 List!11885)) (IdentValue!2139 (value!67125 List!11885)) (DelimiterValue!4279 (value!67126 List!11885)) (DedentValue!2139 (value!67127 List!11885)) (NewLineValue!2139 (value!67128 List!11885)) (IntegerValue!6417 (value!67129 (_ BitVec 32)) (text!15420 List!11885)) (IntegerValue!6418 (value!67130 Int) (text!15421 List!11885)) (Times!2139) (Or!2139) (Equal!2139) (Minus!2139) (Broken!10699 (value!67131 List!11885)) (And!2139) (Div!2139) (LessEqual!2139) (Mod!2139) (Concat!5482) (Not!2139) (Plus!2139) (SpaceValue!2139 (value!67132 List!11885)) (IntegerValue!6419 (value!67133 Int) (text!15422 List!11885)) (StringLiteralValue!6418 (text!15423 List!11885)) (FloatLiteralValue!4279 (text!15424 List!11885)) (BytesLiteralValue!2139 (value!67134 List!11885)) (CommentValue!4279 (value!67135 List!11885)) (StringLiteralValue!6419 (value!67136 List!11885)) (ErrorTokenValue!2139 (msg!2200 List!11885)) )
))
(declare-datatypes ((Regex!3343 0))(
  ( (ElementMatch!3343 (c!196971 C!7004)) (Concat!5483 (regOne!7198 Regex!3343) (regTwo!7198 Regex!3343)) (EmptyExpr!3343) (Star!3343 (reg!3672 Regex!3343)) (EmptyLang!3343) (Union!3343 (regOne!7199 Regex!3343) (regTwo!7199 Regex!3343)) )
))
(declare-datatypes ((TokenValueInjection!3978 0))(
  ( (TokenValueInjection!3979 (toValue!3186 Int) (toChars!3045 Int)) )
))
(declare-datatypes ((Rule!3946 0))(
  ( (Rule!3947 (regex!2073 Regex!3343) (tag!2335 String!14362) (isSeparator!2073 Bool) (transformation!2073 TokenValueInjection!3978)) )
))
(declare-datatypes ((List!11886 0))(
  ( (Nil!11862) (Cons!11862 (h!17263 Rule!3946) (t!111688 List!11886)) )
))
(declare-fun rules!4386 () List!11886)

(get-info :version)

(assert (= (and b!1183974 ((_ is Cons!11862) rules!4386)) b!1183985))

(declare-fun order!7353 () Int)

(declare-fun order!7355 () Int)

(declare-fun lambda!48783 () Int)

(declare-fun dynLambda!5274 (Int Int) Int)

(declare-fun dynLambda!5275 (Int Int) Int)

(assert (=> b!1183987 (< (dynLambda!5274 order!7353 (toValue!3186 (transformation!2073 (h!17263 rules!4386)))) (dynLambda!5275 order!7355 lambda!48783))))

(declare-fun order!7357 () Int)

(declare-fun dynLambda!5276 (Int Int) Int)

(assert (=> b!1183987 (< (dynLambda!5276 order!7357 (toChars!3045 (transformation!2073 (h!17263 rules!4386)))) (dynLambda!5275 order!7355 lambda!48783))))

(declare-fun b!1183957 () Bool)

(declare-fun e!760312 () Bool)

(declare-fun e!760305 () Bool)

(declare-fun tp!337539 () Bool)

(assert (=> b!1183957 (= e!760312 (and e!760305 tp!337539))))

(declare-fun e!760300 () Bool)

(declare-fun b!1183958 () Bool)

(declare-fun tp!337537 () Bool)

(declare-fun inv!15679 (String!14362) Bool)

(declare-fun inv!15682 (TokenValueInjection!3978) Bool)

(assert (=> b!1183958 (= e!760305 (and tp!337537 (inv!15679 (tag!2335 (h!17263 rules!4386))) (inv!15682 (transformation!2073 (h!17263 rules!4386))) e!760300))))

(declare-datatypes ((Token!3808 0))(
  ( (Token!3809 (value!67137 TokenValue!2139) (rule!3494 Rule!3946) (size!9345 Int) (originalCharacters!2627 List!11884)) )
))
(declare-datatypes ((List!11887 0))(
  ( (Nil!11863) (Cons!11863 (h!17264 Token!3808) (t!111689 List!11887)) )
))
(declare-fun l!6534 () List!11887)

(declare-fun b!1183959 () Bool)

(declare-fun e!760307 () Bool)

(declare-fun e!760311 () Bool)

(declare-fun tp!337540 () Bool)

(declare-fun inv!15683 (Token!3808) Bool)

(assert (=> b!1183959 (= e!760311 (and (inv!15683 (h!17264 l!6534)) e!760307 tp!337540))))

(declare-fun b!1183960 () Bool)

(declare-fun res!535123 () Bool)

(declare-fun e!760306 () Bool)

(assert (=> b!1183960 (=> (not res!535123) (not e!760306))))

(declare-fun i!1621 () Int)

(assert (=> b!1183960 (= res!535123 (and (not ((_ is Nil!11863) l!6534)) (> i!1621 0)))))

(declare-datatypes ((LexerInterface!1768 0))(
  ( (LexerInterfaceExt!1765 (__x!7990 Int)) (Lexer!1766) )
))
(declare-fun thiss!27592 () LexerInterface!1768)

(declare-fun e!760310 () Bool)

(declare-fun b!1183961 () Bool)

(declare-fun lt!407379 () List!11887)

(declare-fun rulesProduceEachTokenIndividuallyList!634 (LexerInterface!1768 List!11886 List!11887) Bool)

(assert (=> b!1183961 (= e!760310 (rulesProduceEachTokenIndividuallyList!634 thiss!27592 rules!4386 (t!111689 lt!407379)))))

(declare-fun b!1183962 () Bool)

(declare-fun res!535116 () Bool)

(assert (=> b!1183962 (=> (not res!535116) (not e!760306))))

(declare-fun isEmpty!7138 (List!11886) Bool)

(assert (=> b!1183962 (= res!535116 (not (isEmpty!7138 rules!4386)))))

(declare-fun b!1183964 () Bool)

(declare-fun res!535115 () Bool)

(assert (=> b!1183964 (=> (not res!535115) (not e!760306))))

(assert (=> b!1183964 (= res!535115 (rulesProduceEachTokenIndividuallyList!634 thiss!27592 rules!4386 (t!111689 l!6534)))))

(assert (=> b!1183965 (= e!760300 (and tp!337541 tp!337534))))

(declare-fun tp!337538 () Bool)

(declare-fun e!760302 () Bool)

(declare-fun b!1183966 () Bool)

(declare-fun e!760299 () Bool)

(assert (=> b!1183966 (= e!760299 (and tp!337538 (inv!15679 (tag!2335 (rule!3494 (h!17264 l!6534)))) (inv!15682 (transformation!2073 (rule!3494 (h!17264 l!6534)))) e!760302))))

(declare-fun b!1183967 () Bool)

(declare-fun res!535121 () Bool)

(assert (=> b!1183967 (=> (not res!535121) (not e!760306))))

(assert (=> b!1183967 (= res!535121 (rulesProduceEachTokenIndividuallyList!634 thiss!27592 rules!4386 l!6534))))

(declare-fun b!1183968 () Bool)

(declare-fun res!535122 () Bool)

(assert (=> b!1183968 (=> (not res!535122) (not e!760306))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!162 (LexerInterface!1768 List!11887 List!11886) Bool)

(assert (=> b!1183968 (= res!535122 (tokensListTwoByTwoPredicateSeparableList!162 thiss!27592 l!6534 rules!4386))))

(declare-fun tp!337542 () Bool)

(declare-fun b!1183969 () Bool)

(declare-fun inv!21 (TokenValue!2139) Bool)

(assert (=> b!1183969 (= e!760307 (and (inv!21 (value!67137 (h!17264 l!6534))) e!760299 tp!337542))))

(declare-fun lt!407383 () List!11887)

(declare-fun e!760301 () Bool)

(declare-fun b!1183970 () Bool)

(assert (=> b!1183970 (= e!760301 (tokensListTwoByTwoPredicateSeparableList!162 thiss!27592 lt!407383 rules!4386))))

(assert (=> b!1183971 (= e!760302 (and tp!337535 tp!337536))))

(declare-fun e!760308 () Bool)

(declare-fun b!1183972 () Bool)

(assert (=> b!1183972 (= e!760308 (rulesProduceEachTokenIndividuallyList!634 thiss!27592 rules!4386 (t!111689 lt!407383)))))

(declare-fun b!1183973 () Bool)

(declare-fun res!535124 () Bool)

(assert (=> b!1183973 (=> (not res!535124) (not e!760306))))

(declare-fun rulesInvariant!1642 (LexerInterface!1768 List!11886) Bool)

(assert (=> b!1183973 (= res!535124 (rulesInvariant!1642 thiss!27592 rules!4386))))

(declare-fun lt!407380 () Bool)

(assert (=> b!1183974 (= e!760306 (not lt!407380))))

(declare-fun forall!3140 (List!11887 Int) Bool)

(assert (=> b!1183974 (forall!3140 lt!407379 lambda!48783)))

(declare-datatypes ((Unit!18170 0))(
  ( (Unit!18171) )
))
(declare-fun lt!407386 () Unit!18170)

(declare-fun lemmaForallSubseq!191 (List!11887 List!11887 Int) Unit!18170)

(assert (=> b!1183974 (= lt!407386 (lemmaForallSubseq!191 lt!407379 l!6534 lambda!48783))))

(declare-fun subseq!327 (List!11887 List!11887) Bool)

(assert (=> b!1183974 (subseq!327 lt!407379 l!6534)))

(declare-fun lt!407382 () Unit!18170)

(declare-fun lemmaDropSubseq!90 (List!11887 Int) Unit!18170)

(assert (=> b!1183974 (= lt!407382 (lemmaDropSubseq!90 l!6534 i!1621))))

(declare-fun e!760309 () Bool)

(assert (=> b!1183974 (= lt!407380 e!760309)))

(declare-fun res!535114 () Bool)

(assert (=> b!1183974 (=> res!535114 e!760309)))

(assert (=> b!1183974 (= res!535114 (not ((_ is Cons!11863) lt!407379)))))

(assert (=> b!1183974 (= lt!407380 (rulesProduceEachTokenIndividuallyList!634 thiss!27592 rules!4386 lt!407379))))

(declare-fun drop!551 (List!11887 Int) List!11887)

(assert (=> b!1183974 (= lt!407379 (drop!551 l!6534 i!1621))))

(assert (=> b!1183974 e!760301))

(declare-fun res!535117 () Bool)

(assert (=> b!1183974 (=> (not res!535117) (not e!760301))))

(assert (=> b!1183974 (= res!535117 (forall!3140 lt!407383 lambda!48783))))

(declare-fun lt!407381 () Unit!18170)

(assert (=> b!1183974 (= lt!407381 (lemmaForallSubseq!191 lt!407383 (t!111689 l!6534) lambda!48783))))

(assert (=> b!1183974 (subseq!327 lt!407383 (t!111689 l!6534))))

(declare-fun lt!407385 () Unit!18170)

(assert (=> b!1183974 (= lt!407385 (lemmaDropSubseq!90 (t!111689 l!6534) (- i!1621 1)))))

(declare-fun e!760313 () Bool)

(assert (=> b!1183974 (= (rulesProduceEachTokenIndividuallyList!634 thiss!27592 rules!4386 lt!407383) e!760313)))

(declare-fun res!535119 () Bool)

(assert (=> b!1183974 (=> res!535119 e!760313)))

(assert (=> b!1183974 (= res!535119 (not ((_ is Cons!11863) lt!407383)))))

(assert (=> b!1183974 (= lt!407383 (drop!551 (t!111689 l!6534) (- i!1621 1)))))

(declare-fun lt!407384 () Unit!18170)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!66 (LexerInterface!1768 List!11887 Int List!11886) Unit!18170)

(assert (=> b!1183974 (= lt!407384 (tokensListTwoByTwoPredicateSeparableTokensDropList!66 thiss!27592 (t!111689 l!6534) (- i!1621 1) rules!4386))))

(declare-fun b!1183975 () Bool)

(assert (=> b!1183975 (= e!760309 e!760310)))

(declare-fun res!535112 () Bool)

(assert (=> b!1183975 (=> (not res!535112) (not e!760310))))

(declare-fun rulesProduceIndividualToken!797 (LexerInterface!1768 List!11886 Token!3808) Bool)

(assert (=> b!1183975 (= res!535112 (rulesProduceIndividualToken!797 thiss!27592 rules!4386 (h!17264 lt!407379)))))

(declare-fun b!1183976 () Bool)

(assert (=> b!1183976 (= e!760313 e!760308)))

(declare-fun res!535118 () Bool)

(assert (=> b!1183976 (=> (not res!535118) (not e!760308))))

(assert (=> b!1183976 (= res!535118 (rulesProduceIndividualToken!797 thiss!27592 rules!4386 (h!17264 lt!407383)))))

(declare-fun res!535113 () Bool)

(assert (=> start!104922 (=> (not res!535113) (not e!760306))))

(assert (=> start!104922 (= res!535113 ((_ is Lexer!1766) thiss!27592))))

(assert (=> start!104922 e!760306))

(assert (=> start!104922 true))

(assert (=> start!104922 e!760312))

(assert (=> start!104922 e!760311))

(declare-fun b!1183963 () Bool)

(declare-fun res!535120 () Bool)

(assert (=> b!1183963 (=> (not res!535120) (not e!760306))))

(assert (=> b!1183963 (= res!535120 (tokensListTwoByTwoPredicateSeparableList!162 thiss!27592 (t!111689 l!6534) rules!4386))))

(assert (= (and start!104922 res!535113) b!1183962))

(assert (= (and b!1183962 res!535116) b!1183973))

(assert (= (and b!1183973 res!535124) b!1183967))

(assert (= (and b!1183967 res!535121) b!1183968))

(assert (= (and b!1183968 res!535122) b!1183960))

(assert (= (and b!1183960 res!535123) b!1183964))

(assert (= (and b!1183964 res!535115) b!1183963))

(assert (= (and b!1183963 res!535120) b!1183974))

(assert (= (and b!1183974 (not res!535119)) b!1183976))

(assert (= (and b!1183976 res!535118) b!1183972))

(assert (= (and b!1183974 res!535117) b!1183970))

(assert (= (and b!1183974 (not res!535114)) b!1183975))

(assert (= (and b!1183975 res!535112) b!1183961))

(assert (= b!1183958 b!1183965))

(assert (= b!1183957 b!1183958))

(assert (= (and start!104922 ((_ is Cons!11862) rules!4386)) b!1183957))

(assert (= b!1183966 b!1183971))

(assert (= b!1183969 b!1183966))

(assert (= b!1183959 b!1183969))

(assert (= (and start!104922 ((_ is Cons!11863) l!6534)) b!1183959))

(declare-fun m!1359729 () Bool)

(assert (=> b!1183975 m!1359729))

(declare-fun m!1359731 () Bool)

(assert (=> b!1183970 m!1359731))

(declare-fun m!1359733 () Bool)

(assert (=> b!1183976 m!1359733))

(declare-fun m!1359735 () Bool)

(assert (=> b!1183973 m!1359735))

(declare-fun m!1359737 () Bool)

(assert (=> b!1183963 m!1359737))

(declare-fun m!1359739 () Bool)

(assert (=> b!1183974 m!1359739))

(declare-fun m!1359741 () Bool)

(assert (=> b!1183974 m!1359741))

(declare-fun m!1359743 () Bool)

(assert (=> b!1183974 m!1359743))

(declare-fun m!1359745 () Bool)

(assert (=> b!1183974 m!1359745))

(declare-fun m!1359747 () Bool)

(assert (=> b!1183974 m!1359747))

(declare-fun m!1359749 () Bool)

(assert (=> b!1183974 m!1359749))

(declare-fun m!1359751 () Bool)

(assert (=> b!1183974 m!1359751))

(declare-fun m!1359753 () Bool)

(assert (=> b!1183974 m!1359753))

(declare-fun m!1359755 () Bool)

(assert (=> b!1183974 m!1359755))

(declare-fun m!1359757 () Bool)

(assert (=> b!1183974 m!1359757))

(declare-fun m!1359759 () Bool)

(assert (=> b!1183974 m!1359759))

(declare-fun m!1359761 () Bool)

(assert (=> b!1183974 m!1359761))

(declare-fun m!1359763 () Bool)

(assert (=> b!1183974 m!1359763))

(declare-fun m!1359765 () Bool)

(assert (=> b!1183969 m!1359765))

(declare-fun m!1359767 () Bool)

(assert (=> b!1183958 m!1359767))

(declare-fun m!1359769 () Bool)

(assert (=> b!1183958 m!1359769))

(declare-fun m!1359771 () Bool)

(assert (=> b!1183962 m!1359771))

(declare-fun m!1359773 () Bool)

(assert (=> b!1183966 m!1359773))

(declare-fun m!1359775 () Bool)

(assert (=> b!1183966 m!1359775))

(declare-fun m!1359777 () Bool)

(assert (=> b!1183968 m!1359777))

(declare-fun m!1359779 () Bool)

(assert (=> b!1183964 m!1359779))

(declare-fun m!1359781 () Bool)

(assert (=> b!1183972 m!1359781))

(declare-fun m!1359783 () Bool)

(assert (=> b!1183961 m!1359783))

(declare-fun m!1359785 () Bool)

(assert (=> b!1183967 m!1359785))

(declare-fun m!1359787 () Bool)

(assert (=> b!1183959 m!1359787))

(check-sat b_and!81421 (not b!1183975) (not b!1183972) (not b!1183974) (not b_next!29087) (not b!1183959) (not b!1183962) (not b!1183968) (not b!1183957) (not b!1183969) (not b!1183964) b_and!81423 (not b!1183958) (not b_next!29091) b_and!81425 (not b!1183961) (not b!1183973) (not b_next!29089) (not b!1183963) (not b!1183985) b_and!81427 (not b!1183966) (not b!1183970) (not b!1183967) (not b!1183976) (not b_next!29085))
(check-sat b_and!81421 (not b_next!29087) b_and!81425 (not b_next!29089) b_and!81427 (not b_next!29085) b_and!81423 (not b_next!29091))
(get-model)

(declare-fun bs!287171 () Bool)

(declare-fun d!338601 () Bool)

(assert (= bs!287171 (and d!338601 b!1183974)))

(declare-fun lambda!48789 () Int)

(assert (=> bs!287171 (= (= thiss!27592 Lexer!1766) (= lambda!48789 lambda!48783))))

(declare-fun b!1184022 () Bool)

(declare-fun e!760350 () Bool)

(assert (=> b!1184022 (= e!760350 true)))

(declare-fun b!1184021 () Bool)

(declare-fun e!760349 () Bool)

(assert (=> b!1184021 (= e!760349 e!760350)))

(declare-fun b!1184020 () Bool)

(declare-fun e!760348 () Bool)

(assert (=> b!1184020 (= e!760348 e!760349)))

(assert (=> d!338601 e!760348))

(assert (= b!1184021 b!1184022))

(assert (= b!1184020 b!1184021))

(assert (= (and d!338601 ((_ is Cons!11862) rules!4386)) b!1184020))

(assert (=> b!1184022 (< (dynLambda!5274 order!7353 (toValue!3186 (transformation!2073 (h!17263 rules!4386)))) (dynLambda!5275 order!7355 lambda!48789))))

(assert (=> b!1184022 (< (dynLambda!5276 order!7357 (toChars!3045 (transformation!2073 (h!17263 rules!4386)))) (dynLambda!5275 order!7355 lambda!48789))))

(assert (=> d!338601 true))

(declare-fun lt!407392 () Bool)

(assert (=> d!338601 (= lt!407392 (forall!3140 lt!407383 lambda!48789))))

(declare-fun e!760347 () Bool)

(assert (=> d!338601 (= lt!407392 e!760347)))

(declare-fun res!535146 () Bool)

(assert (=> d!338601 (=> res!535146 e!760347)))

(assert (=> d!338601 (= res!535146 (not ((_ is Cons!11863) lt!407383)))))

(assert (=> d!338601 (not (isEmpty!7138 rules!4386))))

(assert (=> d!338601 (= (rulesProduceEachTokenIndividuallyList!634 thiss!27592 rules!4386 lt!407383) lt!407392)))

(declare-fun b!1184018 () Bool)

(declare-fun e!760346 () Bool)

(assert (=> b!1184018 (= e!760347 e!760346)))

(declare-fun res!535145 () Bool)

(assert (=> b!1184018 (=> (not res!535145) (not e!760346))))

(assert (=> b!1184018 (= res!535145 (rulesProduceIndividualToken!797 thiss!27592 rules!4386 (h!17264 lt!407383)))))

(declare-fun b!1184019 () Bool)

(assert (=> b!1184019 (= e!760346 (rulesProduceEachTokenIndividuallyList!634 thiss!27592 rules!4386 (t!111689 lt!407383)))))

(assert (= (and d!338601 (not res!535146)) b!1184018))

(assert (= (and b!1184018 res!535145) b!1184019))

(declare-fun m!1359801 () Bool)

(assert (=> d!338601 m!1359801))

(assert (=> d!338601 m!1359771))

(assert (=> b!1184018 m!1359733))

(assert (=> b!1184019 m!1359781))

(assert (=> b!1183974 d!338601))

(declare-fun b!1184050 () Bool)

(declare-fun e!760374 () Bool)

(assert (=> b!1184050 (= e!760374 (subseq!327 lt!407383 (t!111689 (t!111689 l!6534))))))

(declare-fun b!1184047 () Bool)

(declare-fun e!760373 () Bool)

(declare-fun e!760375 () Bool)

(assert (=> b!1184047 (= e!760373 e!760375)))

(declare-fun res!535166 () Bool)

(assert (=> b!1184047 (=> (not res!535166) (not e!760375))))

(assert (=> b!1184047 (= res!535166 ((_ is Cons!11863) (t!111689 l!6534)))))

(declare-fun b!1184048 () Bool)

(assert (=> b!1184048 (= e!760375 e!760374)))

(declare-fun res!535169 () Bool)

(assert (=> b!1184048 (=> res!535169 e!760374)))

(declare-fun e!760376 () Bool)

(assert (=> b!1184048 (= res!535169 e!760376)))

(declare-fun res!535167 () Bool)

(assert (=> b!1184048 (=> (not res!535167) (not e!760376))))

(assert (=> b!1184048 (= res!535167 (= (h!17264 lt!407383) (h!17264 (t!111689 l!6534))))))

(declare-fun d!338609 () Bool)

(declare-fun res!535168 () Bool)

(assert (=> d!338609 (=> res!535168 e!760373)))

(assert (=> d!338609 (= res!535168 ((_ is Nil!11863) lt!407383))))

(assert (=> d!338609 (= (subseq!327 lt!407383 (t!111689 l!6534)) e!760373)))

(declare-fun b!1184049 () Bool)

(assert (=> b!1184049 (= e!760376 (subseq!327 (t!111689 lt!407383) (t!111689 (t!111689 l!6534))))))

(assert (= (and d!338609 (not res!535168)) b!1184047))

(assert (= (and b!1184047 res!535166) b!1184048))

(assert (= (and b!1184048 res!535167) b!1184049))

(assert (= (and b!1184048 (not res!535169)) b!1184050))

(declare-fun m!1359827 () Bool)

(assert (=> b!1184050 m!1359827))

(declare-fun m!1359829 () Bool)

(assert (=> b!1184049 m!1359829))

(assert (=> b!1183974 d!338609))

(declare-fun bs!287177 () Bool)

(declare-fun d!338619 () Bool)

(assert (= bs!287177 (and d!338619 b!1183974)))

(declare-fun lambda!48792 () Int)

(assert (=> bs!287177 (= (= thiss!27592 Lexer!1766) (= lambda!48792 lambda!48783))))

(declare-fun bs!287178 () Bool)

(assert (= bs!287178 (and d!338619 d!338601)))

(assert (=> bs!287178 (= lambda!48792 lambda!48789)))

(declare-fun b!1184060 () Bool)

(declare-fun e!760386 () Bool)

(assert (=> b!1184060 (= e!760386 true)))

(declare-fun b!1184059 () Bool)

(declare-fun e!760385 () Bool)

(assert (=> b!1184059 (= e!760385 e!760386)))

(declare-fun b!1184058 () Bool)

(declare-fun e!760384 () Bool)

(assert (=> b!1184058 (= e!760384 e!760385)))

(assert (=> d!338619 e!760384))

(assert (= b!1184059 b!1184060))

(assert (= b!1184058 b!1184059))

(assert (= (and d!338619 ((_ is Cons!11862) rules!4386)) b!1184058))

(assert (=> b!1184060 (< (dynLambda!5274 order!7353 (toValue!3186 (transformation!2073 (h!17263 rules!4386)))) (dynLambda!5275 order!7355 lambda!48792))))

(assert (=> b!1184060 (< (dynLambda!5276 order!7357 (toChars!3045 (transformation!2073 (h!17263 rules!4386)))) (dynLambda!5275 order!7355 lambda!48792))))

(assert (=> d!338619 true))

(declare-fun lt!407416 () Bool)

(assert (=> d!338619 (= lt!407416 (forall!3140 lt!407379 lambda!48792))))

(declare-fun e!760380 () Bool)

(assert (=> d!338619 (= lt!407416 e!760380)))

(declare-fun res!535173 () Bool)

(assert (=> d!338619 (=> res!535173 e!760380)))

(assert (=> d!338619 (= res!535173 (not ((_ is Cons!11863) lt!407379)))))

(assert (=> d!338619 (not (isEmpty!7138 rules!4386))))

(assert (=> d!338619 (= (rulesProduceEachTokenIndividuallyList!634 thiss!27592 rules!4386 lt!407379) lt!407416)))

(declare-fun b!1184053 () Bool)

(declare-fun e!760379 () Bool)

(assert (=> b!1184053 (= e!760380 e!760379)))

(declare-fun res!535172 () Bool)

(assert (=> b!1184053 (=> (not res!535172) (not e!760379))))

(assert (=> b!1184053 (= res!535172 (rulesProduceIndividualToken!797 thiss!27592 rules!4386 (h!17264 lt!407379)))))

(declare-fun b!1184055 () Bool)

(assert (=> b!1184055 (= e!760379 (rulesProduceEachTokenIndividuallyList!634 thiss!27592 rules!4386 (t!111689 lt!407379)))))

(assert (= (and d!338619 (not res!535173)) b!1184053))

(assert (= (and b!1184053 res!535172) b!1184055))

(declare-fun m!1359845 () Bool)

(assert (=> d!338619 m!1359845))

(assert (=> d!338619 m!1359771))

(assert (=> b!1184053 m!1359729))

(assert (=> b!1184055 m!1359783))

(assert (=> b!1183974 d!338619))

(declare-fun d!338625 () Bool)

(assert (=> d!338625 (forall!3140 lt!407379 lambda!48783)))

(declare-fun lt!407426 () Unit!18170)

(declare-fun choose!7657 (List!11887 List!11887 Int) Unit!18170)

(assert (=> d!338625 (= lt!407426 (choose!7657 lt!407379 l!6534 lambda!48783))))

(assert (=> d!338625 (forall!3140 l!6534 lambda!48783)))

(assert (=> d!338625 (= (lemmaForallSubseq!191 lt!407379 l!6534 lambda!48783) lt!407426)))

(declare-fun bs!287179 () Bool)

(assert (= bs!287179 d!338625))

(assert (=> bs!287179 m!1359747))

(declare-fun m!1359849 () Bool)

(assert (=> bs!287179 m!1359849))

(declare-fun m!1359851 () Bool)

(assert (=> bs!287179 m!1359851))

(assert (=> b!1183974 d!338625))

(declare-fun d!338627 () Bool)

(declare-fun res!535180 () Bool)

(declare-fun e!760393 () Bool)

(assert (=> d!338627 (=> res!535180 e!760393)))

(assert (=> d!338627 (= res!535180 ((_ is Nil!11863) lt!407383))))

(assert (=> d!338627 (= (forall!3140 lt!407383 lambda!48783) e!760393)))

(declare-fun b!1184067 () Bool)

(declare-fun e!760394 () Bool)

(assert (=> b!1184067 (= e!760393 e!760394)))

(declare-fun res!535181 () Bool)

(assert (=> b!1184067 (=> (not res!535181) (not e!760394))))

(declare-fun dynLambda!5279 (Int Token!3808) Bool)

(assert (=> b!1184067 (= res!535181 (dynLambda!5279 lambda!48783 (h!17264 lt!407383)))))

(declare-fun b!1184068 () Bool)

(assert (=> b!1184068 (= e!760394 (forall!3140 (t!111689 lt!407383) lambda!48783))))

(assert (= (and d!338627 (not res!535180)) b!1184067))

(assert (= (and b!1184067 res!535181) b!1184068))

(declare-fun b_lambda!35419 () Bool)

(assert (=> (not b_lambda!35419) (not b!1184067)))

(declare-fun m!1359853 () Bool)

(assert (=> b!1184067 m!1359853))

(declare-fun m!1359855 () Bool)

(assert (=> b!1184068 m!1359855))

(assert (=> b!1183974 d!338627))

(declare-fun b!1184072 () Bool)

(declare-fun e!760396 () Bool)

(assert (=> b!1184072 (= e!760396 (subseq!327 lt!407379 (t!111689 l!6534)))))

(declare-fun b!1184069 () Bool)

(declare-fun e!760395 () Bool)

(declare-fun e!760397 () Bool)

(assert (=> b!1184069 (= e!760395 e!760397)))

(declare-fun res!535182 () Bool)

(assert (=> b!1184069 (=> (not res!535182) (not e!760397))))

(assert (=> b!1184069 (= res!535182 ((_ is Cons!11863) l!6534))))

(declare-fun b!1184070 () Bool)

(assert (=> b!1184070 (= e!760397 e!760396)))

(declare-fun res!535185 () Bool)

(assert (=> b!1184070 (=> res!535185 e!760396)))

(declare-fun e!760398 () Bool)

(assert (=> b!1184070 (= res!535185 e!760398)))

(declare-fun res!535183 () Bool)

(assert (=> b!1184070 (=> (not res!535183) (not e!760398))))

(assert (=> b!1184070 (= res!535183 (= (h!17264 lt!407379) (h!17264 l!6534)))))

(declare-fun d!338629 () Bool)

(declare-fun res!535184 () Bool)

(assert (=> d!338629 (=> res!535184 e!760395)))

(assert (=> d!338629 (= res!535184 ((_ is Nil!11863) lt!407379))))

(assert (=> d!338629 (= (subseq!327 lt!407379 l!6534) e!760395)))

(declare-fun b!1184071 () Bool)

(assert (=> b!1184071 (= e!760398 (subseq!327 (t!111689 lt!407379) (t!111689 l!6534)))))

(assert (= (and d!338629 (not res!535184)) b!1184069))

(assert (= (and b!1184069 res!535182) b!1184070))

(assert (= (and b!1184070 res!535183) b!1184071))

(assert (= (and b!1184070 (not res!535185)) b!1184072))

(declare-fun m!1359857 () Bool)

(assert (=> b!1184072 m!1359857))

(declare-fun m!1359859 () Bool)

(assert (=> b!1184071 m!1359859))

(assert (=> b!1183974 d!338629))

(declare-fun bs!287192 () Bool)

(declare-fun b!1184126 () Bool)

(assert (= bs!287192 (and b!1184126 b!1183974)))

(declare-fun lambda!48797 () Int)

(assert (=> bs!287192 (= lambda!48797 lambda!48783)))

(declare-fun bs!287193 () Bool)

(assert (= bs!287193 (and b!1184126 d!338601)))

(assert (=> bs!287193 (= (= Lexer!1766 thiss!27592) (= lambda!48797 lambda!48789))))

(declare-fun bs!287194 () Bool)

(assert (= bs!287194 (and b!1184126 d!338619)))

(assert (=> bs!287194 (= (= Lexer!1766 thiss!27592) (= lambda!48797 lambda!48792))))

(declare-fun b!1184130 () Bool)

(declare-fun e!760447 () Bool)

(assert (=> b!1184130 (= e!760447 true)))

(declare-fun b!1184129 () Bool)

(declare-fun e!760446 () Bool)

(assert (=> b!1184129 (= e!760446 e!760447)))

(declare-fun b!1184128 () Bool)

(declare-fun e!760445 () Bool)

(assert (=> b!1184128 (= e!760445 e!760446)))

(assert (=> b!1184126 e!760445))

(assert (= b!1184129 b!1184130))

(assert (= b!1184128 b!1184129))

(assert (= (and b!1184126 ((_ is Cons!11862) rules!4386)) b!1184128))

(assert (=> b!1184130 (< (dynLambda!5274 order!7353 (toValue!3186 (transformation!2073 (h!17263 rules!4386)))) (dynLambda!5275 order!7355 lambda!48797))))

(assert (=> b!1184130 (< (dynLambda!5276 order!7357 (toChars!3045 (transformation!2073 (h!17263 rules!4386)))) (dynLambda!5275 order!7355 lambda!48797))))

(declare-fun e!760443 () Bool)

(declare-fun lt!407469 () List!11887)

(declare-fun b!1184125 () Bool)

(assert (=> b!1184125 (= e!760443 (rulesProduceEachTokenIndividuallyList!634 thiss!27592 rules!4386 (t!111689 lt!407469)))))

(declare-fun b!1184127 () Bool)

(declare-fun e!760441 () Bool)

(declare-fun lt!407465 () List!11887)

(assert (=> b!1184127 (= e!760441 (subseq!327 lt!407465 (t!111689 l!6534)))))

(declare-fun d!338631 () Bool)

(declare-fun e!760444 () Bool)

(assert (=> d!338631 e!760444))

(declare-fun res!535229 () Bool)

(assert (=> d!338631 (=> (not res!535229) (not e!760444))))

(declare-fun e!760442 () Bool)

(assert (=> d!338631 (= res!535229 (= (rulesProduceEachTokenIndividuallyList!634 thiss!27592 rules!4386 (drop!551 (t!111689 l!6534) (- i!1621 1))) e!760442))))

(declare-fun res!535226 () Bool)

(assert (=> d!338631 (=> res!535226 e!760442)))

(assert (=> d!338631 (= res!535226 (not ((_ is Cons!11863) lt!407469)))))

(assert (=> d!338631 (= lt!407469 (drop!551 (t!111689 l!6534) (- i!1621 1)))))

(declare-fun lt!407466 () Unit!18170)

(declare-fun choose!7659 (LexerInterface!1768 List!11887 Int List!11886) Unit!18170)

(assert (=> d!338631 (= lt!407466 (choose!7659 thiss!27592 (t!111689 l!6534) (- i!1621 1) rules!4386))))

(assert (=> d!338631 (not (isEmpty!7138 rules!4386))))

(assert (=> d!338631 (= (tokensListTwoByTwoPredicateSeparableTokensDropList!66 thiss!27592 (t!111689 l!6534) (- i!1621 1) rules!4386) lt!407466)))

(declare-fun b!1184124 () Bool)

(assert (=> b!1184124 (= e!760442 e!760443)))

(declare-fun res!535227 () Bool)

(assert (=> b!1184124 (=> (not res!535227) (not e!760443))))

(assert (=> b!1184124 (= res!535227 (rulesProduceIndividualToken!797 thiss!27592 rules!4386 (h!17264 lt!407469)))))

(assert (=> b!1184126 (= e!760444 (tokensListTwoByTwoPredicateSeparableList!162 thiss!27592 (drop!551 (t!111689 l!6534) (- i!1621 1)) rules!4386))))

(declare-fun lt!407467 () Unit!18170)

(declare-fun lt!407468 () Unit!18170)

(assert (=> b!1184126 (= lt!407467 lt!407468)))

(assert (=> b!1184126 (forall!3140 lt!407465 lambda!48797)))

(assert (=> b!1184126 (= lt!407468 (lemmaForallSubseq!191 lt!407465 (t!111689 l!6534) lambda!48797))))

(assert (=> b!1184126 e!760441))

(declare-fun res!535228 () Bool)

(assert (=> b!1184126 (=> (not res!535228) (not e!760441))))

(assert (=> b!1184126 (= res!535228 (forall!3140 (t!111689 l!6534) lambda!48797))))

(assert (=> b!1184126 (= lt!407465 (drop!551 (t!111689 l!6534) (- i!1621 1)))))

(declare-fun lt!407470 () Unit!18170)

(declare-fun lt!407471 () Unit!18170)

(assert (=> b!1184126 (= lt!407470 lt!407471)))

(assert (=> b!1184126 (subseq!327 (drop!551 (t!111689 l!6534) (- i!1621 1)) (t!111689 l!6534))))

(assert (=> b!1184126 (= lt!407471 (lemmaDropSubseq!90 (t!111689 l!6534) (- i!1621 1)))))

(assert (= (and d!338631 (not res!535226)) b!1184124))

(assert (= (and b!1184124 res!535227) b!1184125))

(assert (= (and d!338631 res!535229) b!1184126))

(assert (= (and b!1184126 res!535228) b!1184127))

(declare-fun m!1359949 () Bool)

(assert (=> b!1184127 m!1359949))

(declare-fun m!1359951 () Bool)

(assert (=> b!1184125 m!1359951))

(assert (=> d!338631 m!1359757))

(assert (=> d!338631 m!1359757))

(declare-fun m!1359953 () Bool)

(assert (=> d!338631 m!1359953))

(declare-fun m!1359955 () Bool)

(assert (=> d!338631 m!1359955))

(assert (=> d!338631 m!1359771))

(declare-fun m!1359957 () Bool)

(assert (=> b!1184124 m!1359957))

(assert (=> b!1184126 m!1359757))

(declare-fun m!1359959 () Bool)

(assert (=> b!1184126 m!1359959))

(declare-fun m!1359961 () Bool)

(assert (=> b!1184126 m!1359961))

(declare-fun m!1359963 () Bool)

(assert (=> b!1184126 m!1359963))

(declare-fun m!1359965 () Bool)

(assert (=> b!1184126 m!1359965))

(assert (=> b!1184126 m!1359757))

(declare-fun m!1359967 () Bool)

(assert (=> b!1184126 m!1359967))

(assert (=> b!1184126 m!1359757))

(assert (=> b!1184126 m!1359749))

(assert (=> b!1183974 d!338631))

(declare-fun d!338655 () Bool)

(assert (=> d!338655 (subseq!327 (drop!551 l!6534 i!1621) l!6534)))

(declare-fun lt!407474 () Unit!18170)

(declare-fun choose!7661 (List!11887 Int) Unit!18170)

(assert (=> d!338655 (= lt!407474 (choose!7661 l!6534 i!1621))))

(assert (=> d!338655 (= (lemmaDropSubseq!90 l!6534 i!1621) lt!407474)))

(declare-fun bs!287195 () Bool)

(assert (= bs!287195 d!338655))

(assert (=> bs!287195 m!1359739))

(assert (=> bs!287195 m!1359739))

(declare-fun m!1359969 () Bool)

(assert (=> bs!287195 m!1359969))

(declare-fun m!1359971 () Bool)

(assert (=> bs!287195 m!1359971))

(assert (=> b!1183974 d!338655))

(declare-fun d!338657 () Bool)

(declare-fun res!535230 () Bool)

(declare-fun e!760448 () Bool)

(assert (=> d!338657 (=> res!535230 e!760448)))

(assert (=> d!338657 (= res!535230 ((_ is Nil!11863) lt!407379))))

(assert (=> d!338657 (= (forall!3140 lt!407379 lambda!48783) e!760448)))

(declare-fun b!1184131 () Bool)

(declare-fun e!760449 () Bool)

(assert (=> b!1184131 (= e!760448 e!760449)))

(declare-fun res!535231 () Bool)

(assert (=> b!1184131 (=> (not res!535231) (not e!760449))))

(assert (=> b!1184131 (= res!535231 (dynLambda!5279 lambda!48783 (h!17264 lt!407379)))))

(declare-fun b!1184132 () Bool)

(assert (=> b!1184132 (= e!760449 (forall!3140 (t!111689 lt!407379) lambda!48783))))

(assert (= (and d!338657 (not res!535230)) b!1184131))

(assert (= (and b!1184131 res!535231) b!1184132))

(declare-fun b_lambda!35427 () Bool)

(assert (=> (not b_lambda!35427) (not b!1184131)))

(declare-fun m!1359973 () Bool)

(assert (=> b!1184131 m!1359973))

(declare-fun m!1359975 () Bool)

(assert (=> b!1184132 m!1359975))

(assert (=> b!1183974 d!338657))

(declare-fun d!338659 () Bool)

(assert (=> d!338659 (subseq!327 (drop!551 (t!111689 l!6534) (- i!1621 1)) (t!111689 l!6534))))

(declare-fun lt!407475 () Unit!18170)

(assert (=> d!338659 (= lt!407475 (choose!7661 (t!111689 l!6534) (- i!1621 1)))))

(assert (=> d!338659 (= (lemmaDropSubseq!90 (t!111689 l!6534) (- i!1621 1)) lt!407475)))

(declare-fun bs!287196 () Bool)

(assert (= bs!287196 d!338659))

(assert (=> bs!287196 m!1359757))

(assert (=> bs!287196 m!1359757))

(assert (=> bs!287196 m!1359959))

(declare-fun m!1359977 () Bool)

(assert (=> bs!287196 m!1359977))

(assert (=> b!1183974 d!338659))

(declare-fun d!338661 () Bool)

(assert (=> d!338661 (forall!3140 lt!407383 lambda!48783)))

(declare-fun lt!407476 () Unit!18170)

(assert (=> d!338661 (= lt!407476 (choose!7657 lt!407383 (t!111689 l!6534) lambda!48783))))

(assert (=> d!338661 (forall!3140 (t!111689 l!6534) lambda!48783)))

(assert (=> d!338661 (= (lemmaForallSubseq!191 lt!407383 (t!111689 l!6534) lambda!48783) lt!407476)))

(declare-fun bs!287197 () Bool)

(assert (= bs!287197 d!338661))

(assert (=> bs!287197 m!1359745))

(declare-fun m!1359979 () Bool)

(assert (=> bs!287197 m!1359979))

(declare-fun m!1359981 () Bool)

(assert (=> bs!287197 m!1359981))

(assert (=> b!1183974 d!338661))

(declare-fun b!1184151 () Bool)

(declare-fun e!760461 () List!11887)

(assert (=> b!1184151 (= e!760461 l!6534)))

(declare-fun b!1184152 () Bool)

(declare-fun e!760463 () Int)

(declare-fun call!82607 () Int)

(assert (=> b!1184152 (= e!760463 (- call!82607 i!1621))))

(declare-fun b!1184153 () Bool)

(assert (=> b!1184153 (= e!760463 0)))

(declare-fun d!338663 () Bool)

(declare-fun e!760460 () Bool)

(assert (=> d!338663 e!760460))

(declare-fun res!535234 () Bool)

(assert (=> d!338663 (=> (not res!535234) (not e!760460))))

(declare-fun lt!407479 () List!11887)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1639 (List!11887) (InoxSet Token!3808))

(assert (=> d!338663 (= res!535234 (= ((_ map implies) (content!1639 lt!407479) (content!1639 l!6534)) ((as const (InoxSet Token!3808)) true)))))

(declare-fun e!760464 () List!11887)

(assert (=> d!338663 (= lt!407479 e!760464)))

(declare-fun c!196988 () Bool)

(assert (=> d!338663 (= c!196988 ((_ is Nil!11863) l!6534))))

(assert (=> d!338663 (= (drop!551 l!6534 i!1621) lt!407479)))

(declare-fun b!1184154 () Bool)

(assert (=> b!1184154 (= e!760464 Nil!11863)))

(declare-fun b!1184155 () Bool)

(assert (=> b!1184155 (= e!760464 e!760461)))

(declare-fun c!196987 () Bool)

(assert (=> b!1184155 (= c!196987 (<= i!1621 0))))

(declare-fun b!1184156 () Bool)

(declare-fun e!760462 () Int)

(assert (=> b!1184156 (= e!760462 e!760463)))

(declare-fun c!196989 () Bool)

(assert (=> b!1184156 (= c!196989 (>= i!1621 call!82607))))

(declare-fun b!1184157 () Bool)

(assert (=> b!1184157 (= e!760461 (drop!551 (t!111689 l!6534) (- i!1621 1)))))

(declare-fun b!1184158 () Bool)

(declare-fun size!9349 (List!11887) Int)

(assert (=> b!1184158 (= e!760460 (= (size!9349 lt!407479) e!760462))))

(declare-fun c!196986 () Bool)

(assert (=> b!1184158 (= c!196986 (<= i!1621 0))))

(declare-fun b!1184159 () Bool)

(assert (=> b!1184159 (= e!760462 call!82607)))

(declare-fun bm!82602 () Bool)

(assert (=> bm!82602 (= call!82607 (size!9349 l!6534))))

(assert (= (and d!338663 c!196988) b!1184154))

(assert (= (and d!338663 (not c!196988)) b!1184155))

(assert (= (and b!1184155 c!196987) b!1184151))

(assert (= (and b!1184155 (not c!196987)) b!1184157))

(assert (= (and d!338663 res!535234) b!1184158))

(assert (= (and b!1184158 c!196986) b!1184159))

(assert (= (and b!1184158 (not c!196986)) b!1184156))

(assert (= (and b!1184156 c!196989) b!1184153))

(assert (= (and b!1184156 (not c!196989)) b!1184152))

(assert (= (or b!1184159 b!1184156 b!1184152) bm!82602))

(declare-fun m!1359983 () Bool)

(assert (=> d!338663 m!1359983))

(declare-fun m!1359985 () Bool)

(assert (=> d!338663 m!1359985))

(assert (=> b!1184157 m!1359757))

(declare-fun m!1359987 () Bool)

(assert (=> b!1184158 m!1359987))

(declare-fun m!1359989 () Bool)

(assert (=> bm!82602 m!1359989))

(assert (=> b!1183974 d!338663))

(declare-fun b!1184160 () Bool)

(declare-fun e!760466 () List!11887)

(assert (=> b!1184160 (= e!760466 (t!111689 l!6534))))

(declare-fun b!1184161 () Bool)

(declare-fun e!760468 () Int)

(declare-fun call!82608 () Int)

(assert (=> b!1184161 (= e!760468 (- call!82608 (- i!1621 1)))))

(declare-fun b!1184162 () Bool)

(assert (=> b!1184162 (= e!760468 0)))

(declare-fun d!338665 () Bool)

(declare-fun e!760465 () Bool)

(assert (=> d!338665 e!760465))

(declare-fun res!535235 () Bool)

(assert (=> d!338665 (=> (not res!535235) (not e!760465))))

(declare-fun lt!407480 () List!11887)

(assert (=> d!338665 (= res!535235 (= ((_ map implies) (content!1639 lt!407480) (content!1639 (t!111689 l!6534))) ((as const (InoxSet Token!3808)) true)))))

(declare-fun e!760469 () List!11887)

(assert (=> d!338665 (= lt!407480 e!760469)))

(declare-fun c!196992 () Bool)

(assert (=> d!338665 (= c!196992 ((_ is Nil!11863) (t!111689 l!6534)))))

(assert (=> d!338665 (= (drop!551 (t!111689 l!6534) (- i!1621 1)) lt!407480)))

(declare-fun b!1184163 () Bool)

(assert (=> b!1184163 (= e!760469 Nil!11863)))

(declare-fun b!1184164 () Bool)

(assert (=> b!1184164 (= e!760469 e!760466)))

(declare-fun c!196991 () Bool)

(assert (=> b!1184164 (= c!196991 (<= (- i!1621 1) 0))))

(declare-fun b!1184165 () Bool)

(declare-fun e!760467 () Int)

(assert (=> b!1184165 (= e!760467 e!760468)))

(declare-fun c!196993 () Bool)

(assert (=> b!1184165 (= c!196993 (>= (- i!1621 1) call!82608))))

(declare-fun b!1184166 () Bool)

(assert (=> b!1184166 (= e!760466 (drop!551 (t!111689 (t!111689 l!6534)) (- (- i!1621 1) 1)))))

(declare-fun b!1184167 () Bool)

(assert (=> b!1184167 (= e!760465 (= (size!9349 lt!407480) e!760467))))

(declare-fun c!196990 () Bool)

(assert (=> b!1184167 (= c!196990 (<= (- i!1621 1) 0))))

(declare-fun b!1184168 () Bool)

(assert (=> b!1184168 (= e!760467 call!82608)))

(declare-fun bm!82603 () Bool)

(assert (=> bm!82603 (= call!82608 (size!9349 (t!111689 l!6534)))))

(assert (= (and d!338665 c!196992) b!1184163))

(assert (= (and d!338665 (not c!196992)) b!1184164))

(assert (= (and b!1184164 c!196991) b!1184160))

(assert (= (and b!1184164 (not c!196991)) b!1184166))

(assert (= (and d!338665 res!535235) b!1184167))

(assert (= (and b!1184167 c!196990) b!1184168))

(assert (= (and b!1184167 (not c!196990)) b!1184165))

(assert (= (and b!1184165 c!196993) b!1184162))

(assert (= (and b!1184165 (not c!196993)) b!1184161))

(assert (= (or b!1184168 b!1184165 b!1184161) bm!82603))

(declare-fun m!1359991 () Bool)

(assert (=> d!338665 m!1359991))

(declare-fun m!1359993 () Bool)

(assert (=> d!338665 m!1359993))

(declare-fun m!1359995 () Bool)

(assert (=> b!1184166 m!1359995))

(declare-fun m!1359997 () Bool)

(assert (=> b!1184167 m!1359997))

(declare-fun m!1359999 () Bool)

(assert (=> bm!82603 m!1359999))

(assert (=> b!1183974 d!338665))

(declare-fun d!338667 () Bool)

(declare-fun lt!407508 () Bool)

(declare-fun e!760489 () Bool)

(assert (=> d!338667 (= lt!407508 e!760489)))

(declare-fun res!535256 () Bool)

(assert (=> d!338667 (=> (not res!535256) (not e!760489))))

(declare-datatypes ((IArray!7775 0))(
  ( (IArray!7776 (innerList!3945 List!11887)) )
))
(declare-datatypes ((Conc!3885 0))(
  ( (Node!3885 (left!10331 Conc!3885) (right!10661 Conc!3885) (csize!8000 Int) (cheight!4096 Int)) (Leaf!5952 (xs!6590 IArray!7775) (csize!8001 Int)) (Empty!3885) )
))
(declare-datatypes ((BalanceConc!7792 0))(
  ( (BalanceConc!7793 (c!197017 Conc!3885)) )
))
(declare-fun list!4357 (BalanceConc!7792) List!11887)

(declare-datatypes ((tuple2!12100 0))(
  ( (tuple2!12101 (_1!6897 BalanceConc!7792) (_2!6897 BalanceConc!7788)) )
))
(declare-fun lex!734 (LexerInterface!1768 List!11886 BalanceConc!7788) tuple2!12100)

(declare-fun print!671 (LexerInterface!1768 BalanceConc!7792) BalanceConc!7788)

(declare-fun singletonSeq!717 (Token!3808) BalanceConc!7792)

(assert (=> d!338667 (= res!535256 (= (list!4357 (_1!6897 (lex!734 thiss!27592 rules!4386 (print!671 thiss!27592 (singletonSeq!717 (h!17264 lt!407379)))))) (list!4357 (singletonSeq!717 (h!17264 lt!407379)))))))

(declare-fun e!760490 () Bool)

(assert (=> d!338667 (= lt!407508 e!760490)))

(declare-fun res!535255 () Bool)

(assert (=> d!338667 (=> (not res!535255) (not e!760490))))

(declare-fun lt!407507 () tuple2!12100)

(declare-fun size!9351 (BalanceConc!7792) Int)

(assert (=> d!338667 (= res!535255 (= (size!9351 (_1!6897 lt!407507)) 1))))

(assert (=> d!338667 (= lt!407507 (lex!734 thiss!27592 rules!4386 (print!671 thiss!27592 (singletonSeq!717 (h!17264 lt!407379)))))))

(assert (=> d!338667 (not (isEmpty!7138 rules!4386))))

(assert (=> d!338667 (= (rulesProduceIndividualToken!797 thiss!27592 rules!4386 (h!17264 lt!407379)) lt!407508)))

(declare-fun b!1184190 () Bool)

(declare-fun res!535254 () Bool)

(assert (=> b!1184190 (=> (not res!535254) (not e!760490))))

(declare-fun apply!2584 (BalanceConc!7792 Int) Token!3808)

(assert (=> b!1184190 (= res!535254 (= (apply!2584 (_1!6897 lt!407507) 0) (h!17264 lt!407379)))))

(declare-fun b!1184191 () Bool)

(declare-fun isEmpty!7141 (BalanceConc!7788) Bool)

(assert (=> b!1184191 (= e!760490 (isEmpty!7141 (_2!6897 lt!407507)))))

(declare-fun b!1184192 () Bool)

(assert (=> b!1184192 (= e!760489 (isEmpty!7141 (_2!6897 (lex!734 thiss!27592 rules!4386 (print!671 thiss!27592 (singletonSeq!717 (h!17264 lt!407379)))))))))

(assert (= (and d!338667 res!535255) b!1184190))

(assert (= (and b!1184190 res!535254) b!1184191))

(assert (= (and d!338667 res!535256) b!1184192))

(declare-fun m!1360023 () Bool)

(assert (=> d!338667 m!1360023))

(declare-fun m!1360025 () Bool)

(assert (=> d!338667 m!1360025))

(declare-fun m!1360027 () Bool)

(assert (=> d!338667 m!1360027))

(declare-fun m!1360029 () Bool)

(assert (=> d!338667 m!1360029))

(declare-fun m!1360031 () Bool)

(assert (=> d!338667 m!1360031))

(assert (=> d!338667 m!1359771))

(declare-fun m!1360033 () Bool)

(assert (=> d!338667 m!1360033))

(assert (=> d!338667 m!1360023))

(assert (=> d!338667 m!1360029))

(assert (=> d!338667 m!1360023))

(declare-fun m!1360035 () Bool)

(assert (=> b!1184190 m!1360035))

(declare-fun m!1360037 () Bool)

(assert (=> b!1184191 m!1360037))

(assert (=> b!1184192 m!1360023))

(assert (=> b!1184192 m!1360023))

(assert (=> b!1184192 m!1360029))

(assert (=> b!1184192 m!1360029))

(assert (=> b!1184192 m!1360031))

(declare-fun m!1360039 () Bool)

(assert (=> b!1184192 m!1360039))

(assert (=> b!1183975 d!338667))

(declare-fun bs!287205 () Bool)

(declare-fun d!338673 () Bool)

(assert (= bs!287205 (and d!338673 b!1183974)))

(declare-fun lambda!48801 () Int)

(assert (=> bs!287205 (= (= thiss!27592 Lexer!1766) (= lambda!48801 lambda!48783))))

(declare-fun bs!287206 () Bool)

(assert (= bs!287206 (and d!338673 d!338601)))

(assert (=> bs!287206 (= lambda!48801 lambda!48789)))

(declare-fun bs!287207 () Bool)

(assert (= bs!287207 (and d!338673 d!338619)))

(assert (=> bs!287207 (= lambda!48801 lambda!48792)))

(declare-fun bs!287208 () Bool)

(assert (= bs!287208 (and d!338673 b!1184126)))

(assert (=> bs!287208 (= (= thiss!27592 Lexer!1766) (= lambda!48801 lambda!48797))))

(declare-fun b!1184197 () Bool)

(declare-fun e!760495 () Bool)

(assert (=> b!1184197 (= e!760495 true)))

(declare-fun b!1184196 () Bool)

(declare-fun e!760494 () Bool)

(assert (=> b!1184196 (= e!760494 e!760495)))

(declare-fun b!1184195 () Bool)

(declare-fun e!760493 () Bool)

(assert (=> b!1184195 (= e!760493 e!760494)))

(assert (=> d!338673 e!760493))

(assert (= b!1184196 b!1184197))

(assert (= b!1184195 b!1184196))

(assert (= (and d!338673 ((_ is Cons!11862) rules!4386)) b!1184195))

(assert (=> b!1184197 (< (dynLambda!5274 order!7353 (toValue!3186 (transformation!2073 (h!17263 rules!4386)))) (dynLambda!5275 order!7355 lambda!48801))))

(assert (=> b!1184197 (< (dynLambda!5276 order!7357 (toChars!3045 (transformation!2073 (h!17263 rules!4386)))) (dynLambda!5275 order!7355 lambda!48801))))

(assert (=> d!338673 true))

(declare-fun lt!407509 () Bool)

(assert (=> d!338673 (= lt!407509 (forall!3140 (t!111689 l!6534) lambda!48801))))

(declare-fun e!760492 () Bool)

(assert (=> d!338673 (= lt!407509 e!760492)))

(declare-fun res!535258 () Bool)

(assert (=> d!338673 (=> res!535258 e!760492)))

(assert (=> d!338673 (= res!535258 (not ((_ is Cons!11863) (t!111689 l!6534))))))

(assert (=> d!338673 (not (isEmpty!7138 rules!4386))))

(assert (=> d!338673 (= (rulesProduceEachTokenIndividuallyList!634 thiss!27592 rules!4386 (t!111689 l!6534)) lt!407509)))

(declare-fun b!1184193 () Bool)

(declare-fun e!760491 () Bool)

(assert (=> b!1184193 (= e!760492 e!760491)))

(declare-fun res!535257 () Bool)

(assert (=> b!1184193 (=> (not res!535257) (not e!760491))))

(assert (=> b!1184193 (= res!535257 (rulesProduceIndividualToken!797 thiss!27592 rules!4386 (h!17264 (t!111689 l!6534))))))

(declare-fun b!1184194 () Bool)

(assert (=> b!1184194 (= e!760491 (rulesProduceEachTokenIndividuallyList!634 thiss!27592 rules!4386 (t!111689 (t!111689 l!6534))))))

(assert (= (and d!338673 (not res!535258)) b!1184193))

(assert (= (and b!1184193 res!535257) b!1184194))

(declare-fun m!1360041 () Bool)

(assert (=> d!338673 m!1360041))

(assert (=> d!338673 m!1359771))

(declare-fun m!1360043 () Bool)

(assert (=> b!1184193 m!1360043))

(declare-fun m!1360045 () Bool)

(assert (=> b!1184194 m!1360045))

(assert (=> b!1183964 d!338673))

(declare-fun d!338675 () Bool)

(declare-fun res!535275 () Bool)

(declare-fun e!760515 () Bool)

(assert (=> d!338675 (=> (not res!535275) (not e!760515))))

(declare-fun rulesValid!732 (LexerInterface!1768 List!11886) Bool)

(assert (=> d!338675 (= res!535275 (rulesValid!732 thiss!27592 rules!4386))))

(assert (=> d!338675 (= (rulesInvariant!1642 thiss!27592 rules!4386) e!760515)))

(declare-fun b!1184217 () Bool)

(declare-datatypes ((List!11888 0))(
  ( (Nil!11864) (Cons!11864 (h!17265 String!14362) (t!111716 List!11888)) )
))
(declare-fun noDuplicateTag!732 (LexerInterface!1768 List!11886 List!11888) Bool)

(assert (=> b!1184217 (= e!760515 (noDuplicateTag!732 thiss!27592 rules!4386 Nil!11864))))

(assert (= (and d!338675 res!535275) b!1184217))

(declare-fun m!1360051 () Bool)

(assert (=> d!338675 m!1360051))

(declare-fun m!1360053 () Bool)

(assert (=> b!1184217 m!1360053))

(assert (=> b!1183973 d!338675))

(declare-fun d!338679 () Bool)

(assert (=> d!338679 (= (isEmpty!7138 rules!4386) ((_ is Nil!11862) rules!4386))))

(assert (=> b!1183962 d!338679))

(declare-fun d!338681 () Bool)

(declare-fun res!535293 () Bool)

(declare-fun e!760588 () Bool)

(assert (=> d!338681 (=> res!535293 e!760588)))

(assert (=> d!338681 (= res!535293 (or (not ((_ is Cons!11863) (t!111689 l!6534))) (not ((_ is Cons!11863) (t!111689 (t!111689 l!6534))))))))

(assert (=> d!338681 (= (tokensListTwoByTwoPredicateSeparableList!162 thiss!27592 (t!111689 l!6534) rules!4386) e!760588)))

(declare-fun b!1184317 () Bool)

(declare-fun e!760589 () Bool)

(assert (=> b!1184317 (= e!760588 e!760589)))

(declare-fun res!535292 () Bool)

(assert (=> b!1184317 (=> (not res!535292) (not e!760589))))

(declare-fun separableTokensPredicate!156 (LexerInterface!1768 Token!3808 Token!3808 List!11886) Bool)

(assert (=> b!1184317 (= res!535292 (separableTokensPredicate!156 thiss!27592 (h!17264 (t!111689 l!6534)) (h!17264 (t!111689 (t!111689 l!6534))) rules!4386))))

(declare-fun lt!407530 () Unit!18170)

(declare-fun Unit!18181 () Unit!18170)

(assert (=> b!1184317 (= lt!407530 Unit!18181)))

(declare-fun size!9352 (BalanceConc!7788) Int)

(declare-fun charsOf!1094 (Token!3808) BalanceConc!7788)

(assert (=> b!1184317 (> (size!9352 (charsOf!1094 (h!17264 (t!111689 (t!111689 l!6534))))) 0)))

(declare-fun lt!407533 () Unit!18170)

(declare-fun Unit!18182 () Unit!18170)

(assert (=> b!1184317 (= lt!407533 Unit!18182)))

(assert (=> b!1184317 (rulesProduceIndividualToken!797 thiss!27592 rules!4386 (h!17264 (t!111689 (t!111689 l!6534))))))

(declare-fun lt!407535 () Unit!18170)

(declare-fun Unit!18183 () Unit!18170)

(assert (=> b!1184317 (= lt!407535 Unit!18183)))

(assert (=> b!1184317 (rulesProduceIndividualToken!797 thiss!27592 rules!4386 (h!17264 (t!111689 l!6534)))))

(declare-fun lt!407529 () Unit!18170)

(declare-fun lt!407531 () Unit!18170)

(assert (=> b!1184317 (= lt!407529 lt!407531)))

(assert (=> b!1184317 (rulesProduceIndividualToken!797 thiss!27592 rules!4386 (h!17264 (t!111689 (t!111689 l!6534))))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!315 (LexerInterface!1768 List!11886 List!11887 Token!3808) Unit!18170)

(assert (=> b!1184317 (= lt!407531 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!315 thiss!27592 rules!4386 (t!111689 l!6534) (h!17264 (t!111689 (t!111689 l!6534)))))))

(declare-fun lt!407534 () Unit!18170)

(declare-fun lt!407532 () Unit!18170)

(assert (=> b!1184317 (= lt!407534 lt!407532)))

(assert (=> b!1184317 (rulesProduceIndividualToken!797 thiss!27592 rules!4386 (h!17264 (t!111689 l!6534)))))

(assert (=> b!1184317 (= lt!407532 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!315 thiss!27592 rules!4386 (t!111689 l!6534) (h!17264 (t!111689 l!6534))))))

(declare-fun b!1184318 () Bool)

(assert (=> b!1184318 (= e!760589 (tokensListTwoByTwoPredicateSeparableList!162 thiss!27592 (Cons!11863 (h!17264 (t!111689 (t!111689 l!6534))) (t!111689 (t!111689 (t!111689 l!6534)))) rules!4386))))

(assert (= (and d!338681 (not res!535293)) b!1184317))

(assert (= (and b!1184317 res!535292) b!1184318))

(declare-fun m!1360103 () Bool)

(assert (=> b!1184317 m!1360103))

(declare-fun m!1360105 () Bool)

(assert (=> b!1184317 m!1360105))

(assert (=> b!1184317 m!1360043))

(declare-fun m!1360107 () Bool)

(assert (=> b!1184317 m!1360107))

(declare-fun m!1360109 () Bool)

(assert (=> b!1184317 m!1360109))

(declare-fun m!1360111 () Bool)

(assert (=> b!1184317 m!1360111))

(assert (=> b!1184317 m!1360111))

(declare-fun m!1360113 () Bool)

(assert (=> b!1184317 m!1360113))

(declare-fun m!1360115 () Bool)

(assert (=> b!1184318 m!1360115))

(assert (=> b!1183963 d!338681))

(declare-fun d!338701 () Bool)

(assert (=> d!338701 (= (inv!15679 (tag!2335 (rule!3494 (h!17264 l!6534)))) (= (mod (str.len (value!67111 (tag!2335 (rule!3494 (h!17264 l!6534))))) 2) 0))))

(assert (=> b!1183966 d!338701))

(declare-fun d!338703 () Bool)

(declare-fun res!535296 () Bool)

(declare-fun e!760592 () Bool)

(assert (=> d!338703 (=> (not res!535296) (not e!760592))))

(declare-fun semiInverseModEq!745 (Int Int) Bool)

(assert (=> d!338703 (= res!535296 (semiInverseModEq!745 (toChars!3045 (transformation!2073 (rule!3494 (h!17264 l!6534)))) (toValue!3186 (transformation!2073 (rule!3494 (h!17264 l!6534))))))))

(assert (=> d!338703 (= (inv!15682 (transformation!2073 (rule!3494 (h!17264 l!6534)))) e!760592)))

(declare-fun b!1184321 () Bool)

(declare-fun equivClasses!712 (Int Int) Bool)

(assert (=> b!1184321 (= e!760592 (equivClasses!712 (toChars!3045 (transformation!2073 (rule!3494 (h!17264 l!6534)))) (toValue!3186 (transformation!2073 (rule!3494 (h!17264 l!6534))))))))

(assert (= (and d!338703 res!535296) b!1184321))

(declare-fun m!1360117 () Bool)

(assert (=> d!338703 m!1360117))

(declare-fun m!1360119 () Bool)

(assert (=> b!1184321 m!1360119))

(assert (=> b!1183966 d!338703))

(declare-fun bs!287218 () Bool)

(declare-fun d!338705 () Bool)

(assert (= bs!287218 (and d!338705 d!338673)))

(declare-fun lambda!48803 () Int)

(assert (=> bs!287218 (= lambda!48803 lambda!48801)))

(declare-fun bs!287219 () Bool)

(assert (= bs!287219 (and d!338705 b!1184126)))

(assert (=> bs!287219 (= (= thiss!27592 Lexer!1766) (= lambda!48803 lambda!48797))))

(declare-fun bs!287220 () Bool)

(assert (= bs!287220 (and d!338705 b!1183974)))

(assert (=> bs!287220 (= (= thiss!27592 Lexer!1766) (= lambda!48803 lambda!48783))))

(declare-fun bs!287221 () Bool)

(assert (= bs!287221 (and d!338705 d!338619)))

(assert (=> bs!287221 (= lambda!48803 lambda!48792)))

(declare-fun bs!287222 () Bool)

(assert (= bs!287222 (and d!338705 d!338601)))

(assert (=> bs!287222 (= lambda!48803 lambda!48789)))

(declare-fun b!1184326 () Bool)

(declare-fun e!760597 () Bool)

(assert (=> b!1184326 (= e!760597 true)))

(declare-fun b!1184325 () Bool)

(declare-fun e!760596 () Bool)

(assert (=> b!1184325 (= e!760596 e!760597)))

(declare-fun b!1184324 () Bool)

(declare-fun e!760595 () Bool)

(assert (=> b!1184324 (= e!760595 e!760596)))

(assert (=> d!338705 e!760595))

(assert (= b!1184325 b!1184326))

(assert (= b!1184324 b!1184325))

(assert (= (and d!338705 ((_ is Cons!11862) rules!4386)) b!1184324))

(assert (=> b!1184326 (< (dynLambda!5274 order!7353 (toValue!3186 (transformation!2073 (h!17263 rules!4386)))) (dynLambda!5275 order!7355 lambda!48803))))

(assert (=> b!1184326 (< (dynLambda!5276 order!7357 (toChars!3045 (transformation!2073 (h!17263 rules!4386)))) (dynLambda!5275 order!7355 lambda!48803))))

(assert (=> d!338705 true))

(declare-fun lt!407536 () Bool)

(assert (=> d!338705 (= lt!407536 (forall!3140 l!6534 lambda!48803))))

(declare-fun e!760594 () Bool)

(assert (=> d!338705 (= lt!407536 e!760594)))

(declare-fun res!535298 () Bool)

(assert (=> d!338705 (=> res!535298 e!760594)))

(assert (=> d!338705 (= res!535298 (not ((_ is Cons!11863) l!6534)))))

(assert (=> d!338705 (not (isEmpty!7138 rules!4386))))

(assert (=> d!338705 (= (rulesProduceEachTokenIndividuallyList!634 thiss!27592 rules!4386 l!6534) lt!407536)))

(declare-fun b!1184322 () Bool)

(declare-fun e!760593 () Bool)

(assert (=> b!1184322 (= e!760594 e!760593)))

(declare-fun res!535297 () Bool)

(assert (=> b!1184322 (=> (not res!535297) (not e!760593))))

(assert (=> b!1184322 (= res!535297 (rulesProduceIndividualToken!797 thiss!27592 rules!4386 (h!17264 l!6534)))))

(declare-fun b!1184323 () Bool)

(assert (=> b!1184323 (= e!760593 (rulesProduceEachTokenIndividuallyList!634 thiss!27592 rules!4386 (t!111689 l!6534)))))

(assert (= (and d!338705 (not res!535298)) b!1184322))

(assert (= (and b!1184322 res!535297) b!1184323))

(declare-fun m!1360121 () Bool)

(assert (=> d!338705 m!1360121))

(assert (=> d!338705 m!1359771))

(declare-fun m!1360123 () Bool)

(assert (=> b!1184322 m!1360123))

(assert (=> b!1184323 m!1359779))

(assert (=> b!1183967 d!338705))

(declare-fun d!338707 () Bool)

(declare-fun lt!407538 () Bool)

(declare-fun e!760598 () Bool)

(assert (=> d!338707 (= lt!407538 e!760598)))

(declare-fun res!535301 () Bool)

(assert (=> d!338707 (=> (not res!535301) (not e!760598))))

(assert (=> d!338707 (= res!535301 (= (list!4357 (_1!6897 (lex!734 thiss!27592 rules!4386 (print!671 thiss!27592 (singletonSeq!717 (h!17264 lt!407383)))))) (list!4357 (singletonSeq!717 (h!17264 lt!407383)))))))

(declare-fun e!760599 () Bool)

(assert (=> d!338707 (= lt!407538 e!760599)))

(declare-fun res!535300 () Bool)

(assert (=> d!338707 (=> (not res!535300) (not e!760599))))

(declare-fun lt!407537 () tuple2!12100)

(assert (=> d!338707 (= res!535300 (= (size!9351 (_1!6897 lt!407537)) 1))))

(assert (=> d!338707 (= lt!407537 (lex!734 thiss!27592 rules!4386 (print!671 thiss!27592 (singletonSeq!717 (h!17264 lt!407383)))))))

(assert (=> d!338707 (not (isEmpty!7138 rules!4386))))

(assert (=> d!338707 (= (rulesProduceIndividualToken!797 thiss!27592 rules!4386 (h!17264 lt!407383)) lt!407538)))

(declare-fun b!1184327 () Bool)

(declare-fun res!535299 () Bool)

(assert (=> b!1184327 (=> (not res!535299) (not e!760599))))

(assert (=> b!1184327 (= res!535299 (= (apply!2584 (_1!6897 lt!407537) 0) (h!17264 lt!407383)))))

(declare-fun b!1184328 () Bool)

(assert (=> b!1184328 (= e!760599 (isEmpty!7141 (_2!6897 lt!407537)))))

(declare-fun b!1184329 () Bool)

(assert (=> b!1184329 (= e!760598 (isEmpty!7141 (_2!6897 (lex!734 thiss!27592 rules!4386 (print!671 thiss!27592 (singletonSeq!717 (h!17264 lt!407383)))))))))

(assert (= (and d!338707 res!535300) b!1184327))

(assert (= (and b!1184327 res!535299) b!1184328))

(assert (= (and d!338707 res!535301) b!1184329))

(declare-fun m!1360125 () Bool)

(assert (=> d!338707 m!1360125))

(declare-fun m!1360127 () Bool)

(assert (=> d!338707 m!1360127))

(declare-fun m!1360129 () Bool)

(assert (=> d!338707 m!1360129))

(declare-fun m!1360131 () Bool)

(assert (=> d!338707 m!1360131))

(declare-fun m!1360133 () Bool)

(assert (=> d!338707 m!1360133))

(assert (=> d!338707 m!1359771))

(declare-fun m!1360135 () Bool)

(assert (=> d!338707 m!1360135))

(assert (=> d!338707 m!1360125))

(assert (=> d!338707 m!1360131))

(assert (=> d!338707 m!1360125))

(declare-fun m!1360137 () Bool)

(assert (=> b!1184327 m!1360137))

(declare-fun m!1360139 () Bool)

(assert (=> b!1184328 m!1360139))

(assert (=> b!1184329 m!1360125))

(assert (=> b!1184329 m!1360125))

(assert (=> b!1184329 m!1360131))

(assert (=> b!1184329 m!1360131))

(assert (=> b!1184329 m!1360133))

(declare-fun m!1360141 () Bool)

(assert (=> b!1184329 m!1360141))

(assert (=> b!1183976 d!338707))

(declare-fun b!1184340 () Bool)

(declare-fun e!760608 () Bool)

(declare-fun inv!16 (TokenValue!2139) Bool)

(assert (=> b!1184340 (= e!760608 (inv!16 (value!67137 (h!17264 l!6534))))))

(declare-fun b!1184341 () Bool)

(declare-fun e!760606 () Bool)

(declare-fun inv!17 (TokenValue!2139) Bool)

(assert (=> b!1184341 (= e!760606 (inv!17 (value!67137 (h!17264 l!6534))))))

(declare-fun b!1184342 () Bool)

(declare-fun res!535304 () Bool)

(declare-fun e!760607 () Bool)

(assert (=> b!1184342 (=> res!535304 e!760607)))

(assert (=> b!1184342 (= res!535304 (not ((_ is IntegerValue!6419) (value!67137 (h!17264 l!6534)))))))

(assert (=> b!1184342 (= e!760606 e!760607)))

(declare-fun b!1184343 () Bool)

(declare-fun inv!15 (TokenValue!2139) Bool)

(assert (=> b!1184343 (= e!760607 (inv!15 (value!67137 (h!17264 l!6534))))))

(declare-fun d!338709 () Bool)

(declare-fun c!197016 () Bool)

(assert (=> d!338709 (= c!197016 ((_ is IntegerValue!6417) (value!67137 (h!17264 l!6534))))))

(assert (=> d!338709 (= (inv!21 (value!67137 (h!17264 l!6534))) e!760608)))

(declare-fun b!1184344 () Bool)

(assert (=> b!1184344 (= e!760608 e!760606)))

(declare-fun c!197015 () Bool)

(assert (=> b!1184344 (= c!197015 ((_ is IntegerValue!6418) (value!67137 (h!17264 l!6534))))))

(assert (= (and d!338709 c!197016) b!1184340))

(assert (= (and d!338709 (not c!197016)) b!1184344))

(assert (= (and b!1184344 c!197015) b!1184341))

(assert (= (and b!1184344 (not c!197015)) b!1184342))

(assert (= (and b!1184342 (not res!535304)) b!1184343))

(declare-fun m!1360143 () Bool)

(assert (=> b!1184340 m!1360143))

(declare-fun m!1360145 () Bool)

(assert (=> b!1184341 m!1360145))

(declare-fun m!1360147 () Bool)

(assert (=> b!1184343 m!1360147))

(assert (=> b!1183969 d!338709))

(declare-fun d!338711 () Bool)

(assert (=> d!338711 (= (inv!15679 (tag!2335 (h!17263 rules!4386))) (= (mod (str.len (value!67111 (tag!2335 (h!17263 rules!4386)))) 2) 0))))

(assert (=> b!1183958 d!338711))

(declare-fun d!338713 () Bool)

(declare-fun res!535305 () Bool)

(declare-fun e!760609 () Bool)

(assert (=> d!338713 (=> (not res!535305) (not e!760609))))

(assert (=> d!338713 (= res!535305 (semiInverseModEq!745 (toChars!3045 (transformation!2073 (h!17263 rules!4386))) (toValue!3186 (transformation!2073 (h!17263 rules!4386)))))))

(assert (=> d!338713 (= (inv!15682 (transformation!2073 (h!17263 rules!4386))) e!760609)))

(declare-fun b!1184345 () Bool)

(assert (=> b!1184345 (= e!760609 (equivClasses!712 (toChars!3045 (transformation!2073 (h!17263 rules!4386))) (toValue!3186 (transformation!2073 (h!17263 rules!4386)))))))

(assert (= (and d!338713 res!535305) b!1184345))

(declare-fun m!1360149 () Bool)

(assert (=> d!338713 m!1360149))

(declare-fun m!1360151 () Bool)

(assert (=> b!1184345 m!1360151))

(assert (=> b!1183958 d!338713))

(declare-fun d!338715 () Bool)

(declare-fun res!535310 () Bool)

(declare-fun e!760612 () Bool)

(assert (=> d!338715 (=> (not res!535310) (not e!760612))))

(declare-fun isEmpty!7142 (List!11884) Bool)

(assert (=> d!338715 (= res!535310 (not (isEmpty!7142 (originalCharacters!2627 (h!17264 l!6534)))))))

(assert (=> d!338715 (= (inv!15683 (h!17264 l!6534)) e!760612)))

(declare-fun b!1184350 () Bool)

(declare-fun res!535311 () Bool)

(assert (=> b!1184350 (=> (not res!535311) (not e!760612))))

(declare-fun list!4358 (BalanceConc!7788) List!11884)

(declare-fun dynLambda!5280 (Int TokenValue!2139) BalanceConc!7788)

(assert (=> b!1184350 (= res!535311 (= (originalCharacters!2627 (h!17264 l!6534)) (list!4358 (dynLambda!5280 (toChars!3045 (transformation!2073 (rule!3494 (h!17264 l!6534)))) (value!67137 (h!17264 l!6534))))))))

(declare-fun b!1184351 () Bool)

(declare-fun size!9353 (List!11884) Int)

(assert (=> b!1184351 (= e!760612 (= (size!9345 (h!17264 l!6534)) (size!9353 (originalCharacters!2627 (h!17264 l!6534)))))))

(assert (= (and d!338715 res!535310) b!1184350))

(assert (= (and b!1184350 res!535311) b!1184351))

(declare-fun b_lambda!35435 () Bool)

(assert (=> (not b_lambda!35435) (not b!1184350)))

(declare-fun t!111709 () Bool)

(declare-fun tb!66213 () Bool)

(assert (=> (and b!1183971 (= (toChars!3045 (transformation!2073 (rule!3494 (h!17264 l!6534)))) (toChars!3045 (transformation!2073 (rule!3494 (h!17264 l!6534))))) t!111709) tb!66213))

(declare-fun b!1184356 () Bool)

(declare-fun e!760615 () Bool)

(declare-fun tp!337598 () Bool)

(declare-fun inv!15686 (Conc!3883) Bool)

(assert (=> b!1184356 (= e!760615 (and (inv!15686 (c!196970 (dynLambda!5280 (toChars!3045 (transformation!2073 (rule!3494 (h!17264 l!6534)))) (value!67137 (h!17264 l!6534))))) tp!337598))))

(declare-fun result!79484 () Bool)

(declare-fun inv!15687 (BalanceConc!7788) Bool)

(assert (=> tb!66213 (= result!79484 (and (inv!15687 (dynLambda!5280 (toChars!3045 (transformation!2073 (rule!3494 (h!17264 l!6534)))) (value!67137 (h!17264 l!6534)))) e!760615))))

(assert (= tb!66213 b!1184356))

(declare-fun m!1360153 () Bool)

(assert (=> b!1184356 m!1360153))

(declare-fun m!1360155 () Bool)

(assert (=> tb!66213 m!1360155))

(assert (=> b!1184350 t!111709))

(declare-fun b_and!81441 () Bool)

(assert (= b_and!81423 (and (=> t!111709 result!79484) b_and!81441)))

(declare-fun tb!66215 () Bool)

(declare-fun t!111711 () Bool)

(assert (=> (and b!1183965 (= (toChars!3045 (transformation!2073 (h!17263 rules!4386))) (toChars!3045 (transformation!2073 (rule!3494 (h!17264 l!6534))))) t!111711) tb!66215))

(declare-fun result!79488 () Bool)

(assert (= result!79488 result!79484))

(assert (=> b!1184350 t!111711))

(declare-fun b_and!81443 () Bool)

(assert (= b_and!81427 (and (=> t!111711 result!79488) b_and!81443)))

(declare-fun m!1360157 () Bool)

(assert (=> d!338715 m!1360157))

(declare-fun m!1360159 () Bool)

(assert (=> b!1184350 m!1360159))

(assert (=> b!1184350 m!1360159))

(declare-fun m!1360161 () Bool)

(assert (=> b!1184350 m!1360161))

(declare-fun m!1360163 () Bool)

(assert (=> b!1184351 m!1360163))

(assert (=> b!1183959 d!338715))

(declare-fun d!338717 () Bool)

(declare-fun res!535313 () Bool)

(declare-fun e!760616 () Bool)

(assert (=> d!338717 (=> res!535313 e!760616)))

(assert (=> d!338717 (= res!535313 (or (not ((_ is Cons!11863) l!6534)) (not ((_ is Cons!11863) (t!111689 l!6534)))))))

(assert (=> d!338717 (= (tokensListTwoByTwoPredicateSeparableList!162 thiss!27592 l!6534 rules!4386) e!760616)))

(declare-fun b!1184357 () Bool)

(declare-fun e!760617 () Bool)

(assert (=> b!1184357 (= e!760616 e!760617)))

(declare-fun res!535312 () Bool)

(assert (=> b!1184357 (=> (not res!535312) (not e!760617))))

(assert (=> b!1184357 (= res!535312 (separableTokensPredicate!156 thiss!27592 (h!17264 l!6534) (h!17264 (t!111689 l!6534)) rules!4386))))

(declare-fun lt!407540 () Unit!18170)

(declare-fun Unit!18184 () Unit!18170)

(assert (=> b!1184357 (= lt!407540 Unit!18184)))

(assert (=> b!1184357 (> (size!9352 (charsOf!1094 (h!17264 (t!111689 l!6534)))) 0)))

(declare-fun lt!407543 () Unit!18170)

(declare-fun Unit!18185 () Unit!18170)

(assert (=> b!1184357 (= lt!407543 Unit!18185)))

(assert (=> b!1184357 (rulesProduceIndividualToken!797 thiss!27592 rules!4386 (h!17264 (t!111689 l!6534)))))

(declare-fun lt!407545 () Unit!18170)

(declare-fun Unit!18186 () Unit!18170)

(assert (=> b!1184357 (= lt!407545 Unit!18186)))

(assert (=> b!1184357 (rulesProduceIndividualToken!797 thiss!27592 rules!4386 (h!17264 l!6534))))

(declare-fun lt!407539 () Unit!18170)

(declare-fun lt!407541 () Unit!18170)

(assert (=> b!1184357 (= lt!407539 lt!407541)))

(assert (=> b!1184357 (rulesProduceIndividualToken!797 thiss!27592 rules!4386 (h!17264 (t!111689 l!6534)))))

(assert (=> b!1184357 (= lt!407541 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!315 thiss!27592 rules!4386 l!6534 (h!17264 (t!111689 l!6534))))))

(declare-fun lt!407544 () Unit!18170)

(declare-fun lt!407542 () Unit!18170)

(assert (=> b!1184357 (= lt!407544 lt!407542)))

(assert (=> b!1184357 (rulesProduceIndividualToken!797 thiss!27592 rules!4386 (h!17264 l!6534))))

(assert (=> b!1184357 (= lt!407542 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!315 thiss!27592 rules!4386 l!6534 (h!17264 l!6534)))))

(declare-fun b!1184358 () Bool)

(assert (=> b!1184358 (= e!760617 (tokensListTwoByTwoPredicateSeparableList!162 thiss!27592 (Cons!11863 (h!17264 (t!111689 l!6534)) (t!111689 (t!111689 l!6534))) rules!4386))))

(assert (= (and d!338717 (not res!535313)) b!1184357))

(assert (= (and b!1184357 res!535312) b!1184358))

(declare-fun m!1360165 () Bool)

(assert (=> b!1184357 m!1360165))

(declare-fun m!1360167 () Bool)

(assert (=> b!1184357 m!1360167))

(assert (=> b!1184357 m!1360123))

(assert (=> b!1184357 m!1360043))

(declare-fun m!1360169 () Bool)

(assert (=> b!1184357 m!1360169))

(declare-fun m!1360171 () Bool)

(assert (=> b!1184357 m!1360171))

(assert (=> b!1184357 m!1360171))

(declare-fun m!1360173 () Bool)

(assert (=> b!1184357 m!1360173))

(declare-fun m!1360175 () Bool)

(assert (=> b!1184358 m!1360175))

(assert (=> b!1183968 d!338717))

(declare-fun bs!287223 () Bool)

(declare-fun d!338719 () Bool)

(assert (= bs!287223 (and d!338719 d!338673)))

(declare-fun lambda!48804 () Int)

(assert (=> bs!287223 (= lambda!48804 lambda!48801)))

(declare-fun bs!287224 () Bool)

(assert (= bs!287224 (and d!338719 b!1184126)))

(assert (=> bs!287224 (= (= thiss!27592 Lexer!1766) (= lambda!48804 lambda!48797))))

(declare-fun bs!287225 () Bool)

(assert (= bs!287225 (and d!338719 b!1183974)))

(assert (=> bs!287225 (= (= thiss!27592 Lexer!1766) (= lambda!48804 lambda!48783))))

(declare-fun bs!287226 () Bool)

(assert (= bs!287226 (and d!338719 d!338619)))

(assert (=> bs!287226 (= lambda!48804 lambda!48792)))

(declare-fun bs!287227 () Bool)

(assert (= bs!287227 (and d!338719 d!338705)))

(assert (=> bs!287227 (= lambda!48804 lambda!48803)))

(declare-fun bs!287228 () Bool)

(assert (= bs!287228 (and d!338719 d!338601)))

(assert (=> bs!287228 (= lambda!48804 lambda!48789)))

(declare-fun b!1184363 () Bool)

(declare-fun e!760622 () Bool)

(assert (=> b!1184363 (= e!760622 true)))

(declare-fun b!1184362 () Bool)

(declare-fun e!760621 () Bool)

(assert (=> b!1184362 (= e!760621 e!760622)))

(declare-fun b!1184361 () Bool)

(declare-fun e!760620 () Bool)

(assert (=> b!1184361 (= e!760620 e!760621)))

(assert (=> d!338719 e!760620))

(assert (= b!1184362 b!1184363))

(assert (= b!1184361 b!1184362))

(assert (= (and d!338719 ((_ is Cons!11862) rules!4386)) b!1184361))

(assert (=> b!1184363 (< (dynLambda!5274 order!7353 (toValue!3186 (transformation!2073 (h!17263 rules!4386)))) (dynLambda!5275 order!7355 lambda!48804))))

(assert (=> b!1184363 (< (dynLambda!5276 order!7357 (toChars!3045 (transformation!2073 (h!17263 rules!4386)))) (dynLambda!5275 order!7355 lambda!48804))))

(assert (=> d!338719 true))

(declare-fun lt!407546 () Bool)

(assert (=> d!338719 (= lt!407546 (forall!3140 (t!111689 lt!407379) lambda!48804))))

(declare-fun e!760619 () Bool)

(assert (=> d!338719 (= lt!407546 e!760619)))

(declare-fun res!535315 () Bool)

(assert (=> d!338719 (=> res!535315 e!760619)))

(assert (=> d!338719 (= res!535315 (not ((_ is Cons!11863) (t!111689 lt!407379))))))

(assert (=> d!338719 (not (isEmpty!7138 rules!4386))))

(assert (=> d!338719 (= (rulesProduceEachTokenIndividuallyList!634 thiss!27592 rules!4386 (t!111689 lt!407379)) lt!407546)))

(declare-fun b!1184359 () Bool)

(declare-fun e!760618 () Bool)

(assert (=> b!1184359 (= e!760619 e!760618)))

(declare-fun res!535314 () Bool)

(assert (=> b!1184359 (=> (not res!535314) (not e!760618))))

(assert (=> b!1184359 (= res!535314 (rulesProduceIndividualToken!797 thiss!27592 rules!4386 (h!17264 (t!111689 lt!407379))))))

(declare-fun b!1184360 () Bool)

(assert (=> b!1184360 (= e!760618 (rulesProduceEachTokenIndividuallyList!634 thiss!27592 rules!4386 (t!111689 (t!111689 lt!407379))))))

(assert (= (and d!338719 (not res!535315)) b!1184359))

(assert (= (and b!1184359 res!535314) b!1184360))

(declare-fun m!1360177 () Bool)

(assert (=> d!338719 m!1360177))

(assert (=> d!338719 m!1359771))

(declare-fun m!1360179 () Bool)

(assert (=> b!1184359 m!1360179))

(declare-fun m!1360181 () Bool)

(assert (=> b!1184360 m!1360181))

(assert (=> b!1183961 d!338719))

(declare-fun bs!287229 () Bool)

(declare-fun d!338721 () Bool)

(assert (= bs!287229 (and d!338721 d!338673)))

(declare-fun lambda!48805 () Int)

(assert (=> bs!287229 (= lambda!48805 lambda!48801)))

(declare-fun bs!287230 () Bool)

(assert (= bs!287230 (and d!338721 b!1184126)))

(assert (=> bs!287230 (= (= thiss!27592 Lexer!1766) (= lambda!48805 lambda!48797))))

(declare-fun bs!287231 () Bool)

(assert (= bs!287231 (and d!338721 b!1183974)))

(assert (=> bs!287231 (= (= thiss!27592 Lexer!1766) (= lambda!48805 lambda!48783))))

(declare-fun bs!287232 () Bool)

(assert (= bs!287232 (and d!338721 d!338705)))

(assert (=> bs!287232 (= lambda!48805 lambda!48803)))

(declare-fun bs!287233 () Bool)

(assert (= bs!287233 (and d!338721 d!338601)))

(assert (=> bs!287233 (= lambda!48805 lambda!48789)))

(declare-fun bs!287234 () Bool)

(assert (= bs!287234 (and d!338721 d!338619)))

(assert (=> bs!287234 (= lambda!48805 lambda!48792)))

(declare-fun bs!287235 () Bool)

(assert (= bs!287235 (and d!338721 d!338719)))

(assert (=> bs!287235 (= lambda!48805 lambda!48804)))

(declare-fun b!1184368 () Bool)

(declare-fun e!760627 () Bool)

(assert (=> b!1184368 (= e!760627 true)))

(declare-fun b!1184367 () Bool)

(declare-fun e!760626 () Bool)

(assert (=> b!1184367 (= e!760626 e!760627)))

(declare-fun b!1184366 () Bool)

(declare-fun e!760625 () Bool)

(assert (=> b!1184366 (= e!760625 e!760626)))

(assert (=> d!338721 e!760625))

(assert (= b!1184367 b!1184368))

(assert (= b!1184366 b!1184367))

(assert (= (and d!338721 ((_ is Cons!11862) rules!4386)) b!1184366))

(assert (=> b!1184368 (< (dynLambda!5274 order!7353 (toValue!3186 (transformation!2073 (h!17263 rules!4386)))) (dynLambda!5275 order!7355 lambda!48805))))

(assert (=> b!1184368 (< (dynLambda!5276 order!7357 (toChars!3045 (transformation!2073 (h!17263 rules!4386)))) (dynLambda!5275 order!7355 lambda!48805))))

(assert (=> d!338721 true))

(declare-fun lt!407547 () Bool)

(assert (=> d!338721 (= lt!407547 (forall!3140 (t!111689 lt!407383) lambda!48805))))

(declare-fun e!760624 () Bool)

(assert (=> d!338721 (= lt!407547 e!760624)))

(declare-fun res!535317 () Bool)

(assert (=> d!338721 (=> res!535317 e!760624)))

(assert (=> d!338721 (= res!535317 (not ((_ is Cons!11863) (t!111689 lt!407383))))))

(assert (=> d!338721 (not (isEmpty!7138 rules!4386))))

(assert (=> d!338721 (= (rulesProduceEachTokenIndividuallyList!634 thiss!27592 rules!4386 (t!111689 lt!407383)) lt!407547)))

(declare-fun b!1184364 () Bool)

(declare-fun e!760623 () Bool)

(assert (=> b!1184364 (= e!760624 e!760623)))

(declare-fun res!535316 () Bool)

(assert (=> b!1184364 (=> (not res!535316) (not e!760623))))

(assert (=> b!1184364 (= res!535316 (rulesProduceIndividualToken!797 thiss!27592 rules!4386 (h!17264 (t!111689 lt!407383))))))

(declare-fun b!1184365 () Bool)

(assert (=> b!1184365 (= e!760623 (rulesProduceEachTokenIndividuallyList!634 thiss!27592 rules!4386 (t!111689 (t!111689 lt!407383))))))

(assert (= (and d!338721 (not res!535317)) b!1184364))

(assert (= (and b!1184364 res!535316) b!1184365))

(declare-fun m!1360183 () Bool)

(assert (=> d!338721 m!1360183))

(assert (=> d!338721 m!1359771))

(declare-fun m!1360185 () Bool)

(assert (=> b!1184364 m!1360185))

(declare-fun m!1360187 () Bool)

(assert (=> b!1184365 m!1360187))

(assert (=> b!1183972 d!338721))

(declare-fun d!338723 () Bool)

(declare-fun res!535319 () Bool)

(declare-fun e!760628 () Bool)

(assert (=> d!338723 (=> res!535319 e!760628)))

(assert (=> d!338723 (= res!535319 (or (not ((_ is Cons!11863) lt!407383)) (not ((_ is Cons!11863) (t!111689 lt!407383)))))))

(assert (=> d!338723 (= (tokensListTwoByTwoPredicateSeparableList!162 thiss!27592 lt!407383 rules!4386) e!760628)))

(declare-fun b!1184369 () Bool)

(declare-fun e!760629 () Bool)

(assert (=> b!1184369 (= e!760628 e!760629)))

(declare-fun res!535318 () Bool)

(assert (=> b!1184369 (=> (not res!535318) (not e!760629))))

(assert (=> b!1184369 (= res!535318 (separableTokensPredicate!156 thiss!27592 (h!17264 lt!407383) (h!17264 (t!111689 lt!407383)) rules!4386))))

(declare-fun lt!407549 () Unit!18170)

(declare-fun Unit!18187 () Unit!18170)

(assert (=> b!1184369 (= lt!407549 Unit!18187)))

(assert (=> b!1184369 (> (size!9352 (charsOf!1094 (h!17264 (t!111689 lt!407383)))) 0)))

(declare-fun lt!407552 () Unit!18170)

(declare-fun Unit!18188 () Unit!18170)

(assert (=> b!1184369 (= lt!407552 Unit!18188)))

(assert (=> b!1184369 (rulesProduceIndividualToken!797 thiss!27592 rules!4386 (h!17264 (t!111689 lt!407383)))))

(declare-fun lt!407554 () Unit!18170)

(declare-fun Unit!18189 () Unit!18170)

(assert (=> b!1184369 (= lt!407554 Unit!18189)))

(assert (=> b!1184369 (rulesProduceIndividualToken!797 thiss!27592 rules!4386 (h!17264 lt!407383))))

(declare-fun lt!407548 () Unit!18170)

(declare-fun lt!407550 () Unit!18170)

(assert (=> b!1184369 (= lt!407548 lt!407550)))

(assert (=> b!1184369 (rulesProduceIndividualToken!797 thiss!27592 rules!4386 (h!17264 (t!111689 lt!407383)))))

(assert (=> b!1184369 (= lt!407550 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!315 thiss!27592 rules!4386 lt!407383 (h!17264 (t!111689 lt!407383))))))

(declare-fun lt!407553 () Unit!18170)

(declare-fun lt!407551 () Unit!18170)

(assert (=> b!1184369 (= lt!407553 lt!407551)))

(assert (=> b!1184369 (rulesProduceIndividualToken!797 thiss!27592 rules!4386 (h!17264 lt!407383))))

(assert (=> b!1184369 (= lt!407551 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!315 thiss!27592 rules!4386 lt!407383 (h!17264 lt!407383)))))

(declare-fun b!1184370 () Bool)

(assert (=> b!1184370 (= e!760629 (tokensListTwoByTwoPredicateSeparableList!162 thiss!27592 (Cons!11863 (h!17264 (t!111689 lt!407383)) (t!111689 (t!111689 lt!407383))) rules!4386))))

(assert (= (and d!338723 (not res!535319)) b!1184369))

(assert (= (and b!1184369 res!535318) b!1184370))

(declare-fun m!1360189 () Bool)

(assert (=> b!1184369 m!1360189))

(declare-fun m!1360191 () Bool)

(assert (=> b!1184369 m!1360191))

(assert (=> b!1184369 m!1359733))

(assert (=> b!1184369 m!1360185))

(declare-fun m!1360193 () Bool)

(assert (=> b!1184369 m!1360193))

(declare-fun m!1360195 () Bool)

(assert (=> b!1184369 m!1360195))

(assert (=> b!1184369 m!1360195))

(declare-fun m!1360197 () Bool)

(assert (=> b!1184369 m!1360197))

(declare-fun m!1360199 () Bool)

(assert (=> b!1184370 m!1360199))

(assert (=> b!1183970 d!338723))

(declare-fun b!1184373 () Bool)

(declare-fun e!760632 () Bool)

(assert (=> b!1184373 (= e!760632 true)))

(declare-fun b!1184372 () Bool)

(declare-fun e!760631 () Bool)

(assert (=> b!1184372 (= e!760631 e!760632)))

(declare-fun b!1184371 () Bool)

(declare-fun e!760630 () Bool)

(assert (=> b!1184371 (= e!760630 e!760631)))

(assert (=> b!1183985 e!760630))

(assert (= b!1184372 b!1184373))

(assert (= b!1184371 b!1184372))

(assert (= (and b!1183985 ((_ is Cons!11862) (t!111688 rules!4386))) b!1184371))

(assert (=> b!1184373 (< (dynLambda!5274 order!7353 (toValue!3186 (transformation!2073 (h!17263 (t!111688 rules!4386))))) (dynLambda!5275 order!7355 lambda!48783))))

(assert (=> b!1184373 (< (dynLambda!5276 order!7357 (toChars!3045 (transformation!2073 (h!17263 (t!111688 rules!4386))))) (dynLambda!5275 order!7355 lambda!48783))))

(declare-fun b!1184386 () Bool)

(declare-fun e!760635 () Bool)

(declare-fun tp!337610 () Bool)

(assert (=> b!1184386 (= e!760635 tp!337610)))

(declare-fun b!1184385 () Bool)

(declare-fun tp!337613 () Bool)

(declare-fun tp!337612 () Bool)

(assert (=> b!1184385 (= e!760635 (and tp!337613 tp!337612))))

(declare-fun b!1184384 () Bool)

(declare-fun tp_is_empty!5819 () Bool)

(assert (=> b!1184384 (= e!760635 tp_is_empty!5819)))

(assert (=> b!1183966 (= tp!337538 e!760635)))

(declare-fun b!1184387 () Bool)

(declare-fun tp!337609 () Bool)

(declare-fun tp!337611 () Bool)

(assert (=> b!1184387 (= e!760635 (and tp!337609 tp!337611))))

(assert (= (and b!1183966 ((_ is ElementMatch!3343) (regex!2073 (rule!3494 (h!17264 l!6534))))) b!1184384))

(assert (= (and b!1183966 ((_ is Concat!5483) (regex!2073 (rule!3494 (h!17264 l!6534))))) b!1184385))

(assert (= (and b!1183966 ((_ is Star!3343) (regex!2073 (rule!3494 (h!17264 l!6534))))) b!1184386))

(assert (= (and b!1183966 ((_ is Union!3343) (regex!2073 (rule!3494 (h!17264 l!6534))))) b!1184387))

(declare-fun b!1184392 () Bool)

(declare-fun e!760638 () Bool)

(declare-fun tp!337616 () Bool)

(assert (=> b!1184392 (= e!760638 (and tp_is_empty!5819 tp!337616))))

(assert (=> b!1183969 (= tp!337542 e!760638)))

(assert (= (and b!1183969 ((_ is Cons!11860) (originalCharacters!2627 (h!17264 l!6534)))) b!1184392))

(declare-fun b!1184395 () Bool)

(declare-fun e!760639 () Bool)

(declare-fun tp!337618 () Bool)

(assert (=> b!1184395 (= e!760639 tp!337618)))

(declare-fun b!1184394 () Bool)

(declare-fun tp!337621 () Bool)

(declare-fun tp!337620 () Bool)

(assert (=> b!1184394 (= e!760639 (and tp!337621 tp!337620))))

(declare-fun b!1184393 () Bool)

(assert (=> b!1184393 (= e!760639 tp_is_empty!5819)))

(assert (=> b!1183958 (= tp!337537 e!760639)))

(declare-fun b!1184396 () Bool)

(declare-fun tp!337617 () Bool)

(declare-fun tp!337619 () Bool)

(assert (=> b!1184396 (= e!760639 (and tp!337617 tp!337619))))

(assert (= (and b!1183958 ((_ is ElementMatch!3343) (regex!2073 (h!17263 rules!4386)))) b!1184393))

(assert (= (and b!1183958 ((_ is Concat!5483) (regex!2073 (h!17263 rules!4386)))) b!1184394))

(assert (= (and b!1183958 ((_ is Star!3343) (regex!2073 (h!17263 rules!4386)))) b!1184395))

(assert (= (and b!1183958 ((_ is Union!3343) (regex!2073 (h!17263 rules!4386)))) b!1184396))

(declare-fun b!1184410 () Bool)

(declare-fun b_free!28397 () Bool)

(declare-fun b_next!29101 () Bool)

(assert (=> b!1184410 (= b_free!28397 (not b_next!29101))))

(declare-fun tp!337633 () Bool)

(declare-fun b_and!81445 () Bool)

(assert (=> b!1184410 (= tp!337633 b_and!81445)))

(declare-fun b_free!28399 () Bool)

(declare-fun b_next!29103 () Bool)

(assert (=> b!1184410 (= b_free!28399 (not b_next!29103))))

(declare-fun t!111713 () Bool)

(declare-fun tb!66217 () Bool)

(assert (=> (and b!1184410 (= (toChars!3045 (transformation!2073 (rule!3494 (h!17264 (t!111689 l!6534))))) (toChars!3045 (transformation!2073 (rule!3494 (h!17264 l!6534))))) t!111713) tb!66217))

(declare-fun result!79496 () Bool)

(assert (= result!79496 result!79484))

(assert (=> b!1184350 t!111713))

(declare-fun b_and!81447 () Bool)

(declare-fun tp!337636 () Bool)

(assert (=> b!1184410 (= tp!337636 (and (=> t!111713 result!79496) b_and!81447))))

(declare-fun e!760652 () Bool)

(declare-fun e!760653 () Bool)

(declare-fun tp!337635 () Bool)

(declare-fun b!1184407 () Bool)

(assert (=> b!1184407 (= e!760652 (and (inv!15683 (h!17264 (t!111689 l!6534))) e!760653 tp!337635))))

(declare-fun e!760654 () Bool)

(declare-fun b!1184409 () Bool)

(declare-fun e!760657 () Bool)

(declare-fun tp!337634 () Bool)

(assert (=> b!1184409 (= e!760657 (and tp!337634 (inv!15679 (tag!2335 (rule!3494 (h!17264 (t!111689 l!6534))))) (inv!15682 (transformation!2073 (rule!3494 (h!17264 (t!111689 l!6534))))) e!760654))))

(assert (=> b!1183959 (= tp!337540 e!760652)))

(assert (=> b!1184410 (= e!760654 (and tp!337633 tp!337636))))

(declare-fun tp!337632 () Bool)

(declare-fun b!1184408 () Bool)

(assert (=> b!1184408 (= e!760653 (and (inv!21 (value!67137 (h!17264 (t!111689 l!6534)))) e!760657 tp!337632))))

(assert (= b!1184409 b!1184410))

(assert (= b!1184408 b!1184409))

(assert (= b!1184407 b!1184408))

(assert (= (and b!1183959 ((_ is Cons!11863) (t!111689 l!6534))) b!1184407))

(declare-fun m!1360201 () Bool)

(assert (=> b!1184407 m!1360201))

(declare-fun m!1360203 () Bool)

(assert (=> b!1184409 m!1360203))

(declare-fun m!1360205 () Bool)

(assert (=> b!1184409 m!1360205))

(declare-fun m!1360207 () Bool)

(assert (=> b!1184408 m!1360207))

(declare-fun b!1184421 () Bool)

(declare-fun b_free!28401 () Bool)

(declare-fun b_next!29105 () Bool)

(assert (=> b!1184421 (= b_free!28401 (not b_next!29105))))

(declare-fun tp!337646 () Bool)

(declare-fun b_and!81449 () Bool)

(assert (=> b!1184421 (= tp!337646 b_and!81449)))

(declare-fun b_free!28403 () Bool)

(declare-fun b_next!29107 () Bool)

(assert (=> b!1184421 (= b_free!28403 (not b_next!29107))))

(declare-fun tb!66219 () Bool)

(declare-fun t!111715 () Bool)

(assert (=> (and b!1184421 (= (toChars!3045 (transformation!2073 (h!17263 (t!111688 rules!4386)))) (toChars!3045 (transformation!2073 (rule!3494 (h!17264 l!6534))))) t!111715) tb!66219))

(declare-fun result!79500 () Bool)

(assert (= result!79500 result!79484))

(assert (=> b!1184350 t!111715))

(declare-fun b_and!81451 () Bool)

(declare-fun tp!337645 () Bool)

(assert (=> b!1184421 (= tp!337645 (and (=> t!111715 result!79500) b_and!81451))))

(declare-fun e!760667 () Bool)

(assert (=> b!1184421 (= e!760667 (and tp!337646 tp!337645))))

(declare-fun e!760668 () Bool)

(declare-fun tp!337648 () Bool)

(declare-fun b!1184420 () Bool)

(assert (=> b!1184420 (= e!760668 (and tp!337648 (inv!15679 (tag!2335 (h!17263 (t!111688 rules!4386)))) (inv!15682 (transformation!2073 (h!17263 (t!111688 rules!4386)))) e!760667))))

(declare-fun b!1184419 () Bool)

(declare-fun e!760666 () Bool)

(declare-fun tp!337647 () Bool)

(assert (=> b!1184419 (= e!760666 (and e!760668 tp!337647))))

(assert (=> b!1183957 (= tp!337539 e!760666)))

(assert (= b!1184420 b!1184421))

(assert (= b!1184419 b!1184420))

(assert (= (and b!1183957 ((_ is Cons!11862) (t!111688 rules!4386))) b!1184419))

(declare-fun m!1360209 () Bool)

(assert (=> b!1184420 m!1360209))

(declare-fun m!1360211 () Bool)

(assert (=> b!1184420 m!1360211))

(declare-fun b_lambda!35437 () Bool)

(assert (= b_lambda!35427 (or b!1183974 b_lambda!35437)))

(declare-fun bs!287236 () Bool)

(declare-fun d!338725 () Bool)

(assert (= bs!287236 (and d!338725 b!1183974)))

(assert (=> bs!287236 (= (dynLambda!5279 lambda!48783 (h!17264 lt!407379)) (rulesProduceIndividualToken!797 Lexer!1766 rules!4386 (h!17264 lt!407379)))))

(declare-fun m!1360213 () Bool)

(assert (=> bs!287236 m!1360213))

(assert (=> b!1184131 d!338725))

(declare-fun b_lambda!35439 () Bool)

(assert (= b_lambda!35435 (or (and b!1183971 b_free!28383) (and b!1183965 b_free!28387 (= (toChars!3045 (transformation!2073 (h!17263 rules!4386))) (toChars!3045 (transformation!2073 (rule!3494 (h!17264 l!6534)))))) (and b!1184410 b_free!28399 (= (toChars!3045 (transformation!2073 (rule!3494 (h!17264 (t!111689 l!6534))))) (toChars!3045 (transformation!2073 (rule!3494 (h!17264 l!6534)))))) (and b!1184421 b_free!28403 (= (toChars!3045 (transformation!2073 (h!17263 (t!111688 rules!4386)))) (toChars!3045 (transformation!2073 (rule!3494 (h!17264 l!6534)))))) b_lambda!35439)))

(declare-fun b_lambda!35441 () Bool)

(assert (= b_lambda!35419 (or b!1183974 b_lambda!35441)))

(declare-fun bs!287237 () Bool)

(declare-fun d!338727 () Bool)

(assert (= bs!287237 (and d!338727 b!1183974)))

(assert (=> bs!287237 (= (dynLambda!5279 lambda!48783 (h!17264 lt!407383)) (rulesProduceIndividualToken!797 Lexer!1766 rules!4386 (h!17264 lt!407383)))))

(declare-fun m!1360215 () Bool)

(assert (=> bs!287237 m!1360215))

(assert (=> b!1184067 d!338727))

(check-sat (not b!1184364) (not d!338673) (not d!338721) (not b!1184371) (not b_lambda!35437) (not b!1184132) (not b!1184072) (not b!1184167) (not b!1184359) (not b!1184366) b_and!81447 (not d!338661) (not bm!82603) b_and!81443 (not b!1184127) (not d!338631) (not b!1184360) (not d!338675) (not d!338703) (not b!1184329) (not b!1184386) (not b!1184128) (not b!1184321) (not b!1184340) (not b!1184191) (not d!338663) (not b!1184420) (not b!1184356) b_and!81421 (not b!1184392) (not b!1184190) (not b!1184124) (not b_next!29091) (not b!1184049) b_and!81451 (not b_lambda!35439) (not b_next!29101) (not b!1184396) (not b!1184322) (not d!338659) (not d!338601) (not bs!287236) (not b!1184317) (not tb!66213) (not b!1184055) (not b!1184058) (not d!338619) (not d!338667) (not b_next!29103) (not b!1184328) (not b!1184327) (not b!1184409) (not b!1184068) (not b!1184318) (not d!338713) (not b!1184217) (not d!338665) (not b!1184126) (not b!1184419) (not b!1184350) (not b!1184385) (not b!1184053) (not d!338715) (not b!1184157) (not b_lambda!35441) tp_is_empty!5819 (not b_next!29087) (not b!1184195) (not b!1184407) (not b!1184357) (not d!338707) (not b!1184387) b_and!81441 (not b!1184343) (not d!338655) (not b!1184194) (not d!338719) (not bs!287237) (not b!1184019) (not d!338625) b_and!81425 (not b!1184395) (not b!1184361) (not b_next!29105) (not b_next!29107) (not b!1184324) (not b!1184365) (not b_next!29089) (not b!1184341) (not b!1184158) (not b!1184323) (not b!1184071) (not b!1184358) (not b!1184369) (not b!1184408) (not b!1184050) (not b!1184166) (not b!1184020) (not b!1184394) (not b!1184125) b_and!81445 (not d!338705) (not b!1184193) (not b!1184351) (not b!1184345) b_and!81449 (not b!1184192) (not b!1184018) (not bm!82602) (not b!1184370) (not b_next!29085))
(check-sat b_and!81421 (not b_next!29091) (not b_next!29103) (not b_next!29087) b_and!81441 b_and!81425 (not b_next!29089) (not b_next!29085) b_and!81447 b_and!81443 (not b_next!29101) b_and!81451 (not b_next!29105) (not b_next!29107) b_and!81445 b_and!81449)
