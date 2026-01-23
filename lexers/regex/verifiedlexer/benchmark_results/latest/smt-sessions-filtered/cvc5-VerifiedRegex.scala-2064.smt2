; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!104912 () Bool)

(assert start!104912)

(declare-fun b!1183620 () Bool)

(declare-fun b_free!28341 () Bool)

(declare-fun b_next!29045 () Bool)

(assert (=> b!1183620 (= b_free!28341 (not b_next!29045))))

(declare-fun tp!337399 () Bool)

(declare-fun b_and!81381 () Bool)

(assert (=> b!1183620 (= tp!337399 b_and!81381)))

(declare-fun b_free!28343 () Bool)

(declare-fun b_next!29047 () Bool)

(assert (=> b!1183620 (= b_free!28343 (not b_next!29047))))

(declare-fun tp!337403 () Bool)

(declare-fun b_and!81383 () Bool)

(assert (=> b!1183620 (= tp!337403 b_and!81383)))

(declare-fun b!1183618 () Bool)

(declare-fun b_free!28345 () Bool)

(declare-fun b_next!29049 () Bool)

(assert (=> b!1183618 (= b_free!28345 (not b_next!29049))))

(declare-fun tp!337406 () Bool)

(declare-fun b_and!81385 () Bool)

(assert (=> b!1183618 (= tp!337406 b_and!81385)))

(declare-fun b_free!28347 () Bool)

(declare-fun b_next!29051 () Bool)

(assert (=> b!1183618 (= b_free!28347 (not b_next!29051))))

(declare-fun tp!337400 () Bool)

(declare-fun b_and!81387 () Bool)

(assert (=> b!1183618 (= tp!337400 b_and!81387)))

(declare-fun b!1183632 () Bool)

(declare-fun e!760038 () Bool)

(assert (=> b!1183632 (= e!760038 true)))

(declare-fun b!1183631 () Bool)

(declare-fun e!760037 () Bool)

(assert (=> b!1183631 (= e!760037 e!760038)))

(declare-fun b!1183630 () Bool)

(declare-fun e!760036 () Bool)

(assert (=> b!1183630 (= e!760036 e!760037)))

(declare-fun b!1183614 () Bool)

(assert (=> b!1183614 e!760036))

(assert (= b!1183631 b!1183632))

(assert (= b!1183630 b!1183631))

(declare-datatypes ((C!6994 0))(
  ( (C!6995 (val!3793 Int)) )
))
(declare-datatypes ((List!11864 0))(
  ( (Nil!11840) (Cons!11840 (h!17241 C!6994) (t!111648 List!11864)) )
))
(declare-datatypes ((IArray!7761 0))(
  ( (IArray!7762 (innerList!3938 List!11864)) )
))
(declare-datatypes ((Conc!3878 0))(
  ( (Node!3878 (left!10312 Conc!3878) (right!10642 Conc!3878) (csize!7986 Int) (cheight!4089 Int)) (Leaf!5943 (xs!6583 IArray!7761) (csize!7987 Int)) (Empty!3878) )
))
(declare-datatypes ((List!11865 0))(
  ( (Nil!11841) (Cons!11841 (h!17242 (_ BitVec 16)) (t!111649 List!11865)) )
))
(declare-datatypes ((BalanceConc!7778 0))(
  ( (BalanceConc!7779 (c!196960 Conc!3878)) )
))
(declare-datatypes ((TokenValue!2134 0))(
  ( (FloatLiteralValue!4268 (text!15383 List!11865)) (TokenValueExt!2133 (__x!7979 Int)) (Broken!10670 (value!66970 List!11865)) (Object!2157) (End!2134) (Def!2134) (Underscore!2134) (Match!2134) (Else!2134) (Error!2134) (Case!2134) (If!2134) (Extends!2134) (Abstract!2134) (Class!2134) (Val!2134) (DelimiterValue!4268 (del!2194 List!11865)) (KeywordValue!2140 (value!66971 List!11865)) (CommentValue!4268 (value!66972 List!11865)) (WhitespaceValue!4268 (value!66973 List!11865)) (IndentationValue!2134 (value!66974 List!11865)) (String!14339) (Int32!2134) (Broken!10671 (value!66975 List!11865)) (Boolean!2135) (Unit!18154) (OperatorValue!2137 (op!2194 List!11865)) (IdentifierValue!4268 (value!66976 List!11865)) (IdentifierValue!4269 (value!66977 List!11865)) (WhitespaceValue!4269 (value!66978 List!11865)) (True!4268) (False!4268) (Broken!10672 (value!66979 List!11865)) (Broken!10673 (value!66980 List!11865)) (True!4269) (RightBrace!2134) (RightBracket!2134) (Colon!2134) (Null!2134) (Comma!2134) (LeftBracket!2134) (False!4269) (LeftBrace!2134) (ImaginaryLiteralValue!2134 (text!15384 List!11865)) (StringLiteralValue!6402 (value!66981 List!11865)) (EOFValue!2134 (value!66982 List!11865)) (IdentValue!2134 (value!66983 List!11865)) (DelimiterValue!4269 (value!66984 List!11865)) (DedentValue!2134 (value!66985 List!11865)) (NewLineValue!2134 (value!66986 List!11865)) (IntegerValue!6402 (value!66987 (_ BitVec 32)) (text!15385 List!11865)) (IntegerValue!6403 (value!66988 Int) (text!15386 List!11865)) (Times!2134) (Or!2134) (Equal!2134) (Minus!2134) (Broken!10674 (value!66989 List!11865)) (And!2134) (Div!2134) (LessEqual!2134) (Mod!2134) (Concat!5472) (Not!2134) (Plus!2134) (SpaceValue!2134 (value!66990 List!11865)) (IntegerValue!6404 (value!66991 Int) (text!15387 List!11865)) (StringLiteralValue!6403 (text!15388 List!11865)) (FloatLiteralValue!4269 (text!15389 List!11865)) (BytesLiteralValue!2134 (value!66992 List!11865)) (CommentValue!4269 (value!66993 List!11865)) (StringLiteralValue!6404 (value!66994 List!11865)) (ErrorTokenValue!2134 (msg!2195 List!11865)) )
))
(declare-datatypes ((Regex!3338 0))(
  ( (ElementMatch!3338 (c!196961 C!6994)) (Concat!5473 (regOne!7188 Regex!3338) (regTwo!7188 Regex!3338)) (EmptyExpr!3338) (Star!3338 (reg!3667 Regex!3338)) (EmptyLang!3338) (Union!3338 (regOne!7189 Regex!3338) (regTwo!7189 Regex!3338)) )
))
(declare-datatypes ((String!14340 0))(
  ( (String!14341 (value!66995 String)) )
))
(declare-datatypes ((TokenValueInjection!3968 0))(
  ( (TokenValueInjection!3969 (toValue!3181 Int) (toChars!3040 Int)) )
))
(declare-datatypes ((Rule!3936 0))(
  ( (Rule!3937 (regex!2068 Regex!3338) (tag!2330 String!14340) (isSeparator!2068 Bool) (transformation!2068 TokenValueInjection!3968)) )
))
(declare-datatypes ((List!11866 0))(
  ( (Nil!11842) (Cons!11842 (h!17243 Rule!3936) (t!111650 List!11866)) )
))
(declare-fun rules!4386 () List!11866)

(assert (= (and b!1183614 (is-Cons!11842 rules!4386)) b!1183630))

(declare-fun order!7325 () Int)

(declare-fun lambda!48760 () Int)

(declare-fun order!7323 () Int)

(declare-fun dynLambda!5259 (Int Int) Int)

(declare-fun dynLambda!5260 (Int Int) Int)

(assert (=> b!1183632 (< (dynLambda!5259 order!7323 (toValue!3181 (transformation!2068 (h!17243 rules!4386)))) (dynLambda!5260 order!7325 lambda!48760))))

(declare-fun order!7327 () Int)

(declare-fun dynLambda!5261 (Int Int) Int)

(assert (=> b!1183632 (< (dynLambda!5261 order!7327 (toChars!3040 (transformation!2068 (h!17243 rules!4386)))) (dynLambda!5260 order!7325 lambda!48760))))

(declare-fun b!1183602 () Bool)

(declare-fun e!760015 () Bool)

(declare-fun e!760027 () Bool)

(assert (=> b!1183602 (= e!760015 e!760027)))

(declare-fun res!534923 () Bool)

(assert (=> b!1183602 (=> (not res!534923) (not e!760027))))

(declare-datatypes ((LexerInterface!1763 0))(
  ( (LexerInterfaceExt!1760 (__x!7980 Int)) (Lexer!1761) )
))
(declare-fun thiss!27592 () LexerInterface!1763)

(declare-datatypes ((Token!3798 0))(
  ( (Token!3799 (value!66996 TokenValue!2134) (rule!3489 Rule!3936) (size!9340 Int) (originalCharacters!2622 List!11864)) )
))
(declare-datatypes ((List!11867 0))(
  ( (Nil!11843) (Cons!11843 (h!17244 Token!3798) (t!111651 List!11867)) )
))
(declare-fun lt!407273 () List!11867)

(declare-fun rulesProduceIndividualToken!792 (LexerInterface!1763 List!11866 Token!3798) Bool)

(assert (=> b!1183602 (= res!534923 (rulesProduceIndividualToken!792 thiss!27592 rules!4386 (h!17244 lt!407273)))))

(declare-fun b!1183603 () Bool)

(declare-fun e!760026 () Bool)

(declare-fun e!760018 () Bool)

(assert (=> b!1183603 (= e!760026 e!760018)))

(declare-fun res!534917 () Bool)

(assert (=> b!1183603 (=> (not res!534917) (not e!760018))))

(declare-fun lt!407274 () List!11867)

(assert (=> b!1183603 (= res!534917 (rulesProduceIndividualToken!792 thiss!27592 rules!4386 (h!17244 lt!407274)))))

(declare-fun b!1183604 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!629 (LexerInterface!1763 List!11866 List!11867) Bool)

(assert (=> b!1183604 (= e!760018 (rulesProduceEachTokenIndividuallyList!629 thiss!27592 rules!4386 (t!111651 lt!407274)))))

(declare-fun b!1183605 () Bool)

(declare-fun res!534925 () Bool)

(declare-fun e!760014 () Bool)

(assert (=> b!1183605 (=> (not res!534925) (not e!760014))))

(declare-fun l!6534 () List!11867)

(declare-fun tokensListTwoByTwoPredicateSeparableList!157 (LexerInterface!1763 List!11867 List!11866) Bool)

(assert (=> b!1183605 (= res!534925 (tokensListTwoByTwoPredicateSeparableList!157 thiss!27592 l!6534 rules!4386))))

(declare-fun b!1183606 () Bool)

(declare-fun e!760020 () Bool)

(declare-fun e!760021 () Bool)

(declare-fun tp!337407 () Bool)

(assert (=> b!1183606 (= e!760020 (and e!760021 tp!337407))))

(declare-fun b!1183607 () Bool)

(declare-fun res!534918 () Bool)

(assert (=> b!1183607 (=> (not res!534918) (not e!760014))))

(declare-fun i!1621 () Int)

(assert (=> b!1183607 (= res!534918 (and (not (is-Nil!11843 l!6534)) (> i!1621 0)))))

(declare-fun e!760023 () Bool)

(declare-fun b!1183608 () Bool)

(declare-fun tp!337404 () Bool)

(declare-fun e!760017 () Bool)

(declare-fun inv!21 (TokenValue!2134) Bool)

(assert (=> b!1183608 (= e!760023 (and (inv!21 (value!66996 (h!17244 l!6534))) e!760017 tp!337404))))

(declare-fun b!1183609 () Bool)

(declare-fun res!534929 () Bool)

(assert (=> b!1183609 (=> (not res!534929) (not e!760014))))

(assert (=> b!1183609 (= res!534929 (rulesProduceEachTokenIndividuallyList!629 thiss!27592 rules!4386 l!6534))))

(declare-fun res!534928 () Bool)

(assert (=> start!104912 (=> (not res!534928) (not e!760014))))

(assert (=> start!104912 (= res!534928 (is-Lexer!1761 thiss!27592))))

(assert (=> start!104912 e!760014))

(assert (=> start!104912 true))

(assert (=> start!104912 e!760020))

(declare-fun e!760016 () Bool)

(assert (=> start!104912 e!760016))

(declare-fun b!1183610 () Bool)

(declare-fun e!760022 () Bool)

(declare-fun tp!337402 () Bool)

(declare-fun inv!15663 (String!14340) Bool)

(declare-fun inv!15666 (TokenValueInjection!3968) Bool)

(assert (=> b!1183610 (= e!760017 (and tp!337402 (inv!15663 (tag!2330 (rule!3489 (h!17244 l!6534)))) (inv!15666 (transformation!2068 (rule!3489 (h!17244 l!6534)))) e!760022))))

(declare-fun e!760024 () Bool)

(declare-fun tp!337401 () Bool)

(declare-fun b!1183611 () Bool)

(assert (=> b!1183611 (= e!760021 (and tp!337401 (inv!15663 (tag!2330 (h!17243 rules!4386))) (inv!15666 (transformation!2068 (h!17243 rules!4386))) e!760024))))

(declare-fun b!1183612 () Bool)

(declare-fun res!534924 () Bool)

(assert (=> b!1183612 (=> (not res!534924) (not e!760014))))

(assert (=> b!1183612 (= res!534924 (tokensListTwoByTwoPredicateSeparableList!157 thiss!27592 (t!111651 l!6534) rules!4386))))

(declare-fun b!1183613 () Bool)

(declare-fun res!534927 () Bool)

(assert (=> b!1183613 (=> (not res!534927) (not e!760014))))

(assert (=> b!1183613 (= res!534927 (rulesProduceEachTokenIndividuallyList!629 thiss!27592 rules!4386 (t!111651 l!6534)))))

(assert (=> b!1183614 (= e!760014 (not true))))

(declare-fun subseq!322 (List!11867 List!11867) Bool)

(assert (=> b!1183614 (subseq!322 lt!407273 l!6534)))

(declare-datatypes ((Unit!18155 0))(
  ( (Unit!18156) )
))
(declare-fun lt!407275 () Unit!18155)

(declare-fun lemmaDropSubseq!85 (List!11867 Int) Unit!18155)

(assert (=> b!1183614 (= lt!407275 (lemmaDropSubseq!85 l!6534 i!1621))))

(assert (=> b!1183614 (= (rulesProduceEachTokenIndividuallyList!629 thiss!27592 rules!4386 lt!407273) e!760015)))

(declare-fun res!534926 () Bool)

(assert (=> b!1183614 (=> res!534926 e!760015)))

(assert (=> b!1183614 (= res!534926 (not (is-Cons!11843 lt!407273)))))

(declare-fun drop!546 (List!11867 Int) List!11867)

(assert (=> b!1183614 (= lt!407273 (drop!546 l!6534 i!1621))))

(declare-fun e!760019 () Bool)

(assert (=> b!1183614 e!760019))

(declare-fun res!534922 () Bool)

(assert (=> b!1183614 (=> (not res!534922) (not e!760019))))

(declare-fun forall!3135 (List!11867 Int) Bool)

(assert (=> b!1183614 (= res!534922 (forall!3135 lt!407274 lambda!48760))))

(declare-fun lt!407276 () Unit!18155)

(declare-fun lemmaForallSubseq!186 (List!11867 List!11867 Int) Unit!18155)

(assert (=> b!1183614 (= lt!407276 (lemmaForallSubseq!186 lt!407274 (t!111651 l!6534) lambda!48760))))

(assert (=> b!1183614 (subseq!322 lt!407274 (t!111651 l!6534))))

(declare-fun lt!407277 () Unit!18155)

(assert (=> b!1183614 (= lt!407277 (lemmaDropSubseq!85 (t!111651 l!6534) (- i!1621 1)))))

(assert (=> b!1183614 (= (rulesProduceEachTokenIndividuallyList!629 thiss!27592 rules!4386 lt!407274) e!760026)))

(declare-fun res!534921 () Bool)

(assert (=> b!1183614 (=> res!534921 e!760026)))

(assert (=> b!1183614 (= res!534921 (not (is-Cons!11843 lt!407274)))))

(assert (=> b!1183614 (= lt!407274 (drop!546 (t!111651 l!6534) (- i!1621 1)))))

(declare-fun lt!407278 () Unit!18155)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensDropList!61 (LexerInterface!1763 List!11867 Int List!11866) Unit!18155)

(assert (=> b!1183614 (= lt!407278 (tokensListTwoByTwoPredicateSeparableTokensDropList!61 thiss!27592 (t!111651 l!6534) (- i!1621 1) rules!4386))))

(declare-fun b!1183615 () Bool)

(declare-fun tp!337405 () Bool)

(declare-fun inv!15667 (Token!3798) Bool)

(assert (=> b!1183615 (= e!760016 (and (inv!15667 (h!17244 l!6534)) e!760023 tp!337405))))

(declare-fun b!1183616 () Bool)

(assert (=> b!1183616 (= e!760027 (rulesProduceEachTokenIndividuallyList!629 thiss!27592 rules!4386 (t!111651 lt!407273)))))

(declare-fun b!1183617 () Bool)

(declare-fun res!534919 () Bool)

(assert (=> b!1183617 (=> (not res!534919) (not e!760014))))

(declare-fun isEmpty!7133 (List!11866) Bool)

(assert (=> b!1183617 (= res!534919 (not (isEmpty!7133 rules!4386)))))

(assert (=> b!1183618 (= e!760022 (and tp!337406 tp!337400))))

(declare-fun b!1183619 () Bool)

(assert (=> b!1183619 (= e!760019 (tokensListTwoByTwoPredicateSeparableList!157 thiss!27592 lt!407274 rules!4386))))

(assert (=> b!1183620 (= e!760024 (and tp!337399 tp!337403))))

(declare-fun b!1183621 () Bool)

(declare-fun res!534920 () Bool)

(assert (=> b!1183621 (=> (not res!534920) (not e!760014))))

(declare-fun rulesInvariant!1637 (LexerInterface!1763 List!11866) Bool)

(assert (=> b!1183621 (= res!534920 (rulesInvariant!1637 thiss!27592 rules!4386))))

(assert (= (and start!104912 res!534928) b!1183617))

(assert (= (and b!1183617 res!534919) b!1183621))

(assert (= (and b!1183621 res!534920) b!1183609))

(assert (= (and b!1183609 res!534929) b!1183605))

(assert (= (and b!1183605 res!534925) b!1183607))

(assert (= (and b!1183607 res!534918) b!1183613))

(assert (= (and b!1183613 res!534927) b!1183612))

(assert (= (and b!1183612 res!534924) b!1183614))

(assert (= (and b!1183614 (not res!534921)) b!1183603))

(assert (= (and b!1183603 res!534917) b!1183604))

(assert (= (and b!1183614 res!534922) b!1183619))

(assert (= (and b!1183614 (not res!534926)) b!1183602))

(assert (= (and b!1183602 res!534923) b!1183616))

(assert (= b!1183611 b!1183620))

(assert (= b!1183606 b!1183611))

(assert (= (and start!104912 (is-Cons!11842 rules!4386)) b!1183606))

(assert (= b!1183610 b!1183618))

(assert (= b!1183608 b!1183610))

(assert (= b!1183615 b!1183608))

(assert (= (and start!104912 (is-Cons!11843 l!6534)) b!1183615))

(declare-fun m!1359437 () Bool)

(assert (=> b!1183612 m!1359437))

(declare-fun m!1359439 () Bool)

(assert (=> b!1183610 m!1359439))

(declare-fun m!1359441 () Bool)

(assert (=> b!1183610 m!1359441))

(declare-fun m!1359443 () Bool)

(assert (=> b!1183608 m!1359443))

(declare-fun m!1359445 () Bool)

(assert (=> b!1183604 m!1359445))

(declare-fun m!1359447 () Bool)

(assert (=> b!1183614 m!1359447))

(declare-fun m!1359449 () Bool)

(assert (=> b!1183614 m!1359449))

(declare-fun m!1359451 () Bool)

(assert (=> b!1183614 m!1359451))

(declare-fun m!1359453 () Bool)

(assert (=> b!1183614 m!1359453))

(declare-fun m!1359455 () Bool)

(assert (=> b!1183614 m!1359455))

(declare-fun m!1359457 () Bool)

(assert (=> b!1183614 m!1359457))

(declare-fun m!1359459 () Bool)

(assert (=> b!1183614 m!1359459))

(declare-fun m!1359461 () Bool)

(assert (=> b!1183614 m!1359461))

(declare-fun m!1359463 () Bool)

(assert (=> b!1183614 m!1359463))

(declare-fun m!1359465 () Bool)

(assert (=> b!1183614 m!1359465))

(declare-fun m!1359467 () Bool)

(assert (=> b!1183614 m!1359467))

(declare-fun m!1359469 () Bool)

(assert (=> b!1183616 m!1359469))

(declare-fun m!1359471 () Bool)

(assert (=> b!1183605 m!1359471))

(declare-fun m!1359473 () Bool)

(assert (=> b!1183617 m!1359473))

(declare-fun m!1359475 () Bool)

(assert (=> b!1183613 m!1359475))

(declare-fun m!1359477 () Bool)

(assert (=> b!1183602 m!1359477))

(declare-fun m!1359479 () Bool)

(assert (=> b!1183609 m!1359479))

(declare-fun m!1359481 () Bool)

(assert (=> b!1183615 m!1359481))

(declare-fun m!1359483 () Bool)

(assert (=> b!1183619 m!1359483))

(declare-fun m!1359485 () Bool)

(assert (=> b!1183621 m!1359485))

(declare-fun m!1359487 () Bool)

(assert (=> b!1183603 m!1359487))

(declare-fun m!1359489 () Bool)

(assert (=> b!1183611 m!1359489))

(declare-fun m!1359491 () Bool)

(assert (=> b!1183611 m!1359491))

(push 1)

(assert (not b!1183610))

(assert (not b!1183616))

(assert b_and!81387)

(assert (not b!1183606))

(assert (not b_next!29047))

(assert (not b!1183619))

(assert (not b_next!29045))

(assert (not b!1183604))

(assert (not b!1183611))

(assert b_and!81385)

(assert (not b!1183617))

(assert (not b!1183603))

(assert (not b!1183602))

(assert b_and!81381)

(assert (not b!1183630))

(assert (not b!1183612))

(assert (not b!1183609))

(assert (not b!1183614))

(assert (not b!1183605))

(assert (not b!1183621))

(assert (not b!1183613))

(assert (not b_next!29051))

(assert (not b!1183608))

(assert b_and!81383)

(assert (not b_next!29049))

(assert (not b!1183615))

(check-sat)

(pop 1)

(push 1)

(assert b_and!81387)

(assert b_and!81385)

(assert (not b_next!29047))

(assert b_and!81381)

(assert (not b_next!29049))

(assert (not b_next!29045))

(assert (not b_next!29051))

(assert b_and!81383)

(check-sat)

(pop 1)

