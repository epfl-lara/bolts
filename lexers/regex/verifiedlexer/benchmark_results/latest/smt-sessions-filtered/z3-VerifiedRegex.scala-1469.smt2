; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78310 () Bool)

(assert start!78310)

(declare-fun b!867510 () Bool)

(declare-fun b_free!26609 () Bool)

(declare-fun b_next!26673 () Bool)

(assert (=> b!867510 (= b_free!26609 (not b_next!26673))))

(declare-fun tp!274439 () Bool)

(declare-fun b_and!77813 () Bool)

(assert (=> b!867510 (= tp!274439 b_and!77813)))

(declare-fun b_free!26611 () Bool)

(declare-fun b_next!26675 () Bool)

(assert (=> b!867510 (= b_free!26611 (not b_next!26675))))

(declare-fun tp!274437 () Bool)

(declare-fun b_and!77815 () Bool)

(assert (=> b!867510 (= tp!274437 b_and!77815)))

(declare-fun b!867500 () Bool)

(declare-fun b_free!26613 () Bool)

(declare-fun b_next!26677 () Bool)

(assert (=> b!867500 (= b_free!26613 (not b_next!26677))))

(declare-fun tp!274435 () Bool)

(declare-fun b_and!77817 () Bool)

(assert (=> b!867500 (= tp!274435 b_and!77817)))

(declare-fun b_free!26615 () Bool)

(declare-fun b_next!26679 () Bool)

(assert (=> b!867500 (= b_free!26615 (not b_next!26679))))

(declare-fun tp!274428 () Bool)

(declare-fun b_and!77819 () Bool)

(assert (=> b!867500 (= tp!274428 b_and!77819)))

(declare-fun b!867508 () Bool)

(declare-fun b_free!26617 () Bool)

(declare-fun b_next!26681 () Bool)

(assert (=> b!867508 (= b_free!26617 (not b_next!26681))))

(declare-fun tp!274438 () Bool)

(declare-fun b_and!77821 () Bool)

(assert (=> b!867508 (= tp!274438 b_and!77821)))

(declare-fun b_free!26619 () Bool)

(declare-fun b_next!26683 () Bool)

(assert (=> b!867508 (= b_free!26619 (not b_next!26683))))

(declare-fun tp!274429 () Bool)

(declare-fun b_and!77823 () Bool)

(assert (=> b!867508 (= tp!274429 b_and!77823)))

(declare-fun b!867486 () Bool)

(declare-fun e!570927 () Bool)

(declare-fun e!570934 () Bool)

(declare-fun tp!274433 () Bool)

(assert (=> b!867486 (= e!570927 (and e!570934 tp!274433))))

(declare-fun b!867487 () Bool)

(declare-fun res!395112 () Bool)

(declare-fun e!570935 () Bool)

(assert (=> b!867487 (=> (not res!395112) (not e!570935))))

(declare-datatypes ((List!9406 0))(
  ( (Nil!9390) (Cons!9390 (h!14791 (_ BitVec 16)) (t!98902 List!9406)) )
))
(declare-datatypes ((TokenValue!1830 0))(
  ( (FloatLiteralValue!3660 (text!13255 List!9406)) (TokenValueExt!1829 (__x!7391 Int)) (Broken!9150 (value!56947 List!9406)) (Object!1845) (End!1830) (Def!1830) (Underscore!1830) (Match!1830) (Else!1830) (Error!1830) (Case!1830) (If!1830) (Extends!1830) (Abstract!1830) (Class!1830) (Val!1830) (DelimiterValue!3660 (del!1890 List!9406)) (KeywordValue!1836 (value!56948 List!9406)) (CommentValue!3660 (value!56949 List!9406)) (WhitespaceValue!3660 (value!56950 List!9406)) (IndentationValue!1830 (value!56951 List!9406)) (String!11047) (Int32!1830) (Broken!9151 (value!56952 List!9406)) (Boolean!1831) (Unit!13906) (OperatorValue!1833 (op!1890 List!9406)) (IdentifierValue!3660 (value!56953 List!9406)) (IdentifierValue!3661 (value!56954 List!9406)) (WhitespaceValue!3661 (value!56955 List!9406)) (True!3660) (False!3660) (Broken!9152 (value!56956 List!9406)) (Broken!9153 (value!56957 List!9406)) (True!3661) (RightBrace!1830) (RightBracket!1830) (Colon!1830) (Null!1830) (Comma!1830) (LeftBracket!1830) (False!3661) (LeftBrace!1830) (ImaginaryLiteralValue!1830 (text!13256 List!9406)) (StringLiteralValue!5490 (value!56958 List!9406)) (EOFValue!1830 (value!56959 List!9406)) (IdentValue!1830 (value!56960 List!9406)) (DelimiterValue!3661 (value!56961 List!9406)) (DedentValue!1830 (value!56962 List!9406)) (NewLineValue!1830 (value!56963 List!9406)) (IntegerValue!5490 (value!56964 (_ BitVec 32)) (text!13257 List!9406)) (IntegerValue!5491 (value!56965 Int) (text!13258 List!9406)) (Times!1830) (Or!1830) (Equal!1830) (Minus!1830) (Broken!9154 (value!56966 List!9406)) (And!1830) (Div!1830) (LessEqual!1830) (Mod!1830) (Concat!4027) (Not!1830) (Plus!1830) (SpaceValue!1830 (value!56967 List!9406)) (IntegerValue!5492 (value!56968 Int) (text!13259 List!9406)) (StringLiteralValue!5491 (text!13260 List!9406)) (FloatLiteralValue!3661 (text!13261 List!9406)) (BytesLiteralValue!1830 (value!56969 List!9406)) (CommentValue!3661 (value!56970 List!9406)) (StringLiteralValue!5492 (value!56971 List!9406)) (ErrorTokenValue!1830 (msg!1891 List!9406)) )
))
(declare-datatypes ((C!4964 0))(
  ( (C!4965 (val!2730 Int)) )
))
(declare-datatypes ((Regex!2197 0))(
  ( (ElementMatch!2197 (c!140239 C!4964)) (Concat!4028 (regOne!4906 Regex!2197) (regTwo!4906 Regex!2197)) (EmptyExpr!2197) (Star!2197 (reg!2526 Regex!2197)) (EmptyLang!2197) (Union!2197 (regOne!4907 Regex!2197) (regTwo!4907 Regex!2197)) )
))
(declare-datatypes ((String!11048 0))(
  ( (String!11049 (value!56972 String)) )
))
(declare-datatypes ((List!9407 0))(
  ( (Nil!9391) (Cons!9391 (h!14792 C!4964) (t!98903 List!9407)) )
))
(declare-datatypes ((IArray!6235 0))(
  ( (IArray!6236 (innerList!3175 List!9407)) )
))
(declare-datatypes ((Conc!3115 0))(
  ( (Node!3115 (left!6950 Conc!3115) (right!7280 Conc!3115) (csize!6460 Int) (cheight!3326 Int)) (Leaf!4585 (xs!5804 IArray!6235) (csize!6461 Int)) (Empty!3115) )
))
(declare-datatypes ((BalanceConc!6244 0))(
  ( (BalanceConc!6245 (c!140240 Conc!3115)) )
))
(declare-datatypes ((TokenValueInjection!3360 0))(
  ( (TokenValueInjection!3361 (toValue!2833 Int) (toChars!2692 Int)) )
))
(declare-datatypes ((Rule!3328 0))(
  ( (Rule!3329 (regex!1764 Regex!2197) (tag!2026 String!11048) (isSeparator!1764 Bool) (transformation!1764 TokenValueInjection!3360)) )
))
(declare-datatypes ((List!9408 0))(
  ( (Nil!9392) (Cons!9392 (h!14793 Rule!3328) (t!98904 List!9408)) )
))
(declare-fun rules!2621 () List!9408)

(declare-datatypes ((LexerInterface!1566 0))(
  ( (LexerInterfaceExt!1563 (__x!7392 Int)) (Lexer!1564) )
))
(declare-fun thiss!20117 () LexerInterface!1566)

(declare-datatypes ((Token!3194 0))(
  ( (Token!3195 (value!56973 TokenValue!1830) (rule!3187 Rule!3328) (size!7817 Int) (originalCharacters!2320 List!9407)) )
))
(declare-datatypes ((List!9409 0))(
  ( (Nil!9393) (Cons!9393 (h!14794 Token!3194) (t!98905 List!9409)) )
))
(declare-fun l!5107 () List!9409)

(declare-fun rulesProduceEachTokenIndividuallyList!454 (LexerInterface!1566 List!9408 List!9409) Bool)

(assert (=> b!867487 (= res!395112 (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 l!5107))))

(declare-fun b!867488 () Bool)

(declare-fun res!395116 () Bool)

(assert (=> b!867488 (=> (not res!395116) (not e!570935))))

(declare-fun sepAndNonSepRulesDisjointChars!564 (List!9408 List!9408) Bool)

(assert (=> b!867488 (= res!395116 (sepAndNonSepRulesDisjointChars!564 rules!2621 rules!2621))))

(declare-fun b!867489 () Bool)

(declare-fun tp!274432 () Bool)

(declare-fun e!570925 () Bool)

(declare-fun inv!11923 (String!11048) Bool)

(declare-fun inv!11926 (TokenValueInjection!3360) Bool)

(assert (=> b!867489 (= e!570934 (and tp!274432 (inv!11923 (tag!2026 (h!14793 rules!2621))) (inv!11926 (transformation!1764 (h!14793 rules!2621))) e!570925))))

(declare-fun b!867490 () Bool)

(declare-fun e!570923 () Bool)

(assert (=> b!867490 (= e!570935 (not e!570923))))

(declare-fun res!395120 () Bool)

(assert (=> b!867490 (=> res!395120 e!570923)))

(declare-fun lt!327189 () List!9409)

(get-info :version)

(assert (=> b!867490 (= res!395120 (or (not ((_ is Cons!9393) lt!327189)) (not ((_ is Cons!9393) (t!98905 lt!327189)))))))

(assert (=> b!867490 (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 lt!327189)))

(declare-fun separatorToken!297 () Token!3194)

(declare-fun withSeparatorTokenList!94 (LexerInterface!1566 List!9409 Token!3194) List!9409)

(assert (=> b!867490 (= lt!327189 (withSeparatorTokenList!94 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13907 0))(
  ( (Unit!13908) )
))
(declare-fun lt!327186 () Unit!13907)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!94 (LexerInterface!1566 List!9408 List!9409 Token!3194) Unit!13907)

(assert (=> b!867490 (= lt!327186 (withSeparatorTokenListPreservesRulesProduceTokens!94 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun tp!274440 () Bool)

(declare-fun e!570940 () Bool)

(declare-fun e!570932 () Bool)

(declare-fun b!867491 () Bool)

(declare-fun inv!21 (TokenValue!1830) Bool)

(assert (=> b!867491 (= e!570940 (and (inv!21 (value!56973 separatorToken!297)) e!570932 tp!274440))))

(declare-fun b!867492 () Bool)

(declare-fun e!570924 () Bool)

(declare-fun lt!327184 () Token!3194)

(assert (=> b!867492 (= e!570924 (not (= (isSeparator!1764 (rule!3187 (h!14794 (t!98905 lt!327189)))) (isSeparator!1764 (rule!3187 lt!327184)))))))

(declare-fun b!867493 () Bool)

(declare-fun e!570930 () Bool)

(assert (=> b!867493 (= e!570930 e!570924)))

(declare-fun res!395113 () Bool)

(assert (=> b!867493 (=> res!395113 e!570924)))

(declare-fun rulesProduceIndividualToken!630 (LexerInterface!1566 List!9408 Token!3194) Bool)

(assert (=> b!867493 (= res!395113 (not (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 (t!98905 lt!327189)))))))

(declare-fun head!1510 (List!9409) Token!3194)

(assert (=> b!867493 (= lt!327184 (head!1510 (t!98905 (t!98905 lt!327189))))))

(declare-fun b!867494 () Bool)

(declare-fun res!395115 () Bool)

(assert (=> b!867494 (=> (not res!395115) (not e!570935))))

(declare-fun isEmpty!5578 (List!9408) Bool)

(assert (=> b!867494 (= res!395115 (not (isEmpty!5578 rules!2621)))))

(declare-fun b!867495 () Bool)

(declare-fun res!395110 () Bool)

(assert (=> b!867495 (=> (not res!395110) (not e!570935))))

(assert (=> b!867495 (= res!395110 (rulesProduceIndividualToken!630 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun tp!274431 () Bool)

(declare-fun e!570928 () Bool)

(declare-fun e!570929 () Bool)

(declare-fun b!867496 () Bool)

(assert (=> b!867496 (= e!570929 (and (inv!21 (value!56973 (h!14794 l!5107))) e!570928 tp!274431))))

(declare-fun e!570921 () Bool)

(declare-fun tp!274434 () Bool)

(declare-fun b!867497 () Bool)

(assert (=> b!867497 (= e!570928 (and tp!274434 (inv!11923 (tag!2026 (rule!3187 (h!14794 l!5107)))) (inv!11926 (transformation!1764 (rule!3187 (h!14794 l!5107)))) e!570921))))

(declare-fun b!867498 () Bool)

(declare-fun tp!274436 () Bool)

(declare-fun e!570941 () Bool)

(assert (=> b!867498 (= e!570932 (and tp!274436 (inv!11923 (tag!2026 (rule!3187 separatorToken!297))) (inv!11926 (transformation!1764 (rule!3187 separatorToken!297))) e!570941))))

(declare-fun e!570931 () Bool)

(declare-fun tp!274430 () Bool)

(declare-fun b!867499 () Bool)

(declare-fun inv!11927 (Token!3194) Bool)

(assert (=> b!867499 (= e!570931 (and (inv!11927 (h!14794 l!5107)) e!570929 tp!274430))))

(assert (=> b!867500 (= e!570925 (and tp!274435 tp!274428))))

(declare-fun b!867501 () Bool)

(declare-fun res!395122 () Bool)

(assert (=> b!867501 (=> (not res!395122) (not e!570935))))

(declare-fun lambda!26036 () Int)

(declare-fun forall!2231 (List!9409 Int) Bool)

(assert (=> b!867501 (= res!395122 (forall!2231 l!5107 lambda!26036))))

(declare-fun b!867502 () Bool)

(declare-fun e!570922 () Bool)

(assert (=> b!867502 (= e!570922 e!570930)))

(declare-fun res!395114 () Bool)

(assert (=> b!867502 (=> res!395114 e!570930)))

(declare-fun isEmpty!5579 (List!9409) Bool)

(assert (=> b!867502 (= res!395114 (isEmpty!5579 (t!98905 (t!98905 lt!327189))))))

(declare-fun e!570933 () Bool)

(assert (=> b!867502 e!570933))

(declare-fun res!395117 () Bool)

(assert (=> b!867502 (=> (not res!395117) (not e!570933))))

(declare-fun lt!327185 () List!9409)

(assert (=> b!867502 (= res!395117 (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 lt!327185))))

(declare-fun lt!327188 () List!9409)

(declare-fun lt!327187 () Unit!13907)

(assert (=> b!867502 (= lt!327187 (withSeparatorTokenListPreservesRulesProduceTokens!94 thiss!20117 rules!2621 lt!327188 separatorToken!297))))

(declare-fun lt!327190 () Unit!13907)

(declare-fun printWithSeparatorTokenImpliesSeparableTokensList!38 (LexerInterface!1566 List!9408 List!9409 Token!3194) Unit!13907)

(assert (=> b!867502 (= lt!327190 (printWithSeparatorTokenImpliesSeparableTokensList!38 thiss!20117 rules!2621 lt!327188 separatorToken!297))))

(declare-fun separableTokensPredicate!84 (LexerInterface!1566 Token!3194 Token!3194 List!9408) Bool)

(assert (=> b!867502 (separableTokensPredicate!84 thiss!20117 (h!14794 lt!327189) (h!14794 (t!98905 lt!327189)) rules!2621)))

(declare-fun lt!327191 () Unit!13907)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!62 (LexerInterface!1566 Token!3194 Token!3194 List!9408) Unit!13907)

(assert (=> b!867502 (= lt!327191 (lemmaTokensOfDifferentKindsAreSeparable!62 thiss!20117 (h!14794 lt!327189) (h!14794 (t!98905 lt!327189)) rules!2621))))

(declare-fun b!867503 () Bool)

(declare-fun res!395111 () Bool)

(assert (=> b!867503 (=> res!395111 e!570924)))

(assert (=> b!867503 (= res!395111 (not (rulesProduceIndividualToken!630 thiss!20117 rules!2621 lt!327184)))))

(declare-fun b!867504 () Bool)

(declare-fun res!395123 () Bool)

(assert (=> b!867504 (=> res!395123 e!570922)))

(assert (=> b!867504 (= res!395123 (not (= (head!1510 l!5107) (h!14794 lt!327189))))))

(declare-fun b!867505 () Bool)

(declare-fun res!395118 () Bool)

(assert (=> b!867505 (=> res!395118 e!570922)))

(assert (=> b!867505 (= res!395118 (not (= (h!14794 (t!98905 lt!327189)) separatorToken!297)))))

(declare-fun b!867506 () Bool)

(assert (=> b!867506 (= e!570923 e!570922)))

(declare-fun res!395109 () Bool)

(assert (=> b!867506 (=> res!395109 e!570922)))

(assert (=> b!867506 (= res!395109 (not (= (t!98905 (t!98905 lt!327189)) lt!327185)))))

(assert (=> b!867506 (= lt!327185 (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297))))

(declare-fun tail!1072 (List!9409) List!9409)

(assert (=> b!867506 (= lt!327188 (tail!1072 l!5107))))

(declare-fun b!867507 () Bool)

(declare-fun res!395108 () Bool)

(assert (=> b!867507 (=> (not res!395108) (not e!570935))))

(declare-fun rulesInvariant!1442 (LexerInterface!1566 List!9408) Bool)

(assert (=> b!867507 (= res!395108 (rulesInvariant!1442 thiss!20117 rules!2621))))

(assert (=> b!867508 (= e!570941 (and tp!274438 tp!274429))))

(declare-fun b!867509 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!60 (LexerInterface!1566 List!9409 List!9408) Bool)

(assert (=> b!867509 (= e!570933 (tokensListTwoByTwoPredicateSeparableList!60 thiss!20117 lt!327185 rules!2621))))

(assert (=> b!867510 (= e!570921 (and tp!274439 tp!274437))))

(declare-fun res!395121 () Bool)

(assert (=> start!78310 (=> (not res!395121) (not e!570935))))

(assert (=> start!78310 (= res!395121 ((_ is Lexer!1564) thiss!20117))))

(assert (=> start!78310 e!570935))

(assert (=> start!78310 true))

(assert (=> start!78310 e!570927))

(assert (=> start!78310 e!570931))

(assert (=> start!78310 (and (inv!11927 separatorToken!297) e!570940)))

(declare-fun b!867511 () Bool)

(declare-fun res!395119 () Bool)

(assert (=> b!867511 (=> (not res!395119) (not e!570935))))

(assert (=> b!867511 (= res!395119 (isSeparator!1764 (rule!3187 separatorToken!297)))))

(assert (= (and start!78310 res!395121) b!867494))

(assert (= (and b!867494 res!395115) b!867507))

(assert (= (and b!867507 res!395108) b!867487))

(assert (= (and b!867487 res!395112) b!867495))

(assert (= (and b!867495 res!395110) b!867511))

(assert (= (and b!867511 res!395119) b!867501))

(assert (= (and b!867501 res!395122) b!867488))

(assert (= (and b!867488 res!395116) b!867490))

(assert (= (and b!867490 (not res!395120)) b!867506))

(assert (= (and b!867506 (not res!395109)) b!867504))

(assert (= (and b!867504 (not res!395123)) b!867505))

(assert (= (and b!867505 (not res!395118)) b!867502))

(assert (= (and b!867502 res!395117) b!867509))

(assert (= (and b!867502 (not res!395114)) b!867493))

(assert (= (and b!867493 (not res!395113)) b!867503))

(assert (= (and b!867503 (not res!395111)) b!867492))

(assert (= b!867489 b!867500))

(assert (= b!867486 b!867489))

(assert (= (and start!78310 ((_ is Cons!9392) rules!2621)) b!867486))

(assert (= b!867497 b!867510))

(assert (= b!867496 b!867497))

(assert (= b!867499 b!867496))

(assert (= (and start!78310 ((_ is Cons!9393) l!5107)) b!867499))

(assert (= b!867498 b!867508))

(assert (= b!867491 b!867498))

(assert (= start!78310 b!867491))

(declare-fun m!1114481 () Bool)

(assert (=> b!867498 m!1114481))

(declare-fun m!1114483 () Bool)

(assert (=> b!867498 m!1114483))

(declare-fun m!1114485 () Bool)

(assert (=> b!867488 m!1114485))

(declare-fun m!1114487 () Bool)

(assert (=> start!78310 m!1114487))

(declare-fun m!1114489 () Bool)

(assert (=> b!867495 m!1114489))

(declare-fun m!1114491 () Bool)

(assert (=> b!867506 m!1114491))

(declare-fun m!1114493 () Bool)

(assert (=> b!867506 m!1114493))

(declare-fun m!1114495 () Bool)

(assert (=> b!867493 m!1114495))

(declare-fun m!1114497 () Bool)

(assert (=> b!867493 m!1114497))

(declare-fun m!1114499 () Bool)

(assert (=> b!867489 m!1114499))

(declare-fun m!1114501 () Bool)

(assert (=> b!867489 m!1114501))

(declare-fun m!1114503 () Bool)

(assert (=> b!867496 m!1114503))

(declare-fun m!1114505 () Bool)

(assert (=> b!867501 m!1114505))

(declare-fun m!1114507 () Bool)

(assert (=> b!867491 m!1114507))

(declare-fun m!1114509 () Bool)

(assert (=> b!867487 m!1114509))

(declare-fun m!1114511 () Bool)

(assert (=> b!867503 m!1114511))

(declare-fun m!1114513 () Bool)

(assert (=> b!867507 m!1114513))

(declare-fun m!1114515 () Bool)

(assert (=> b!867490 m!1114515))

(declare-fun m!1114517 () Bool)

(assert (=> b!867490 m!1114517))

(declare-fun m!1114519 () Bool)

(assert (=> b!867490 m!1114519))

(declare-fun m!1114521 () Bool)

(assert (=> b!867499 m!1114521))

(declare-fun m!1114523 () Bool)

(assert (=> b!867497 m!1114523))

(declare-fun m!1114525 () Bool)

(assert (=> b!867497 m!1114525))

(declare-fun m!1114527 () Bool)

(assert (=> b!867494 m!1114527))

(declare-fun m!1114529 () Bool)

(assert (=> b!867509 m!1114529))

(declare-fun m!1114531 () Bool)

(assert (=> b!867504 m!1114531))

(declare-fun m!1114533 () Bool)

(assert (=> b!867502 m!1114533))

(declare-fun m!1114535 () Bool)

(assert (=> b!867502 m!1114535))

(declare-fun m!1114537 () Bool)

(assert (=> b!867502 m!1114537))

(declare-fun m!1114539 () Bool)

(assert (=> b!867502 m!1114539))

(declare-fun m!1114541 () Bool)

(assert (=> b!867502 m!1114541))

(declare-fun m!1114543 () Bool)

(assert (=> b!867502 m!1114543))

(check-sat (not b_next!26675) (not start!78310) (not b!867502) (not b!867491) (not b!867506) (not b!867498) (not b_next!26677) (not b!867499) (not b!867490) (not b!867497) (not b!867489) b_and!77821 (not b!867494) (not b!867496) b_and!77817 (not b!867507) b_and!77815 (not b_next!26683) (not b!867509) b_and!77823 b_and!77819 (not b_next!26679) (not b!867486) (not b!867495) (not b!867493) (not b_next!26681) b_and!77813 (not b!867487) (not b!867503) (not b!867501) (not b_next!26673) (not b!867504) (not b!867488))
(check-sat (not b_next!26675) b_and!77817 b_and!77815 (not b_next!26683) (not b_next!26677) (not b_next!26673) b_and!77821 b_and!77823 b_and!77819 (not b_next!26679) (not b_next!26681) b_and!77813)
(get-model)

(declare-fun d!272272 () Bool)

(declare-fun res!395144 () Bool)

(declare-fun e!570948 () Bool)

(assert (=> d!272272 (=> (not res!395144) (not e!570948))))

(declare-fun isEmpty!5582 (List!9407) Bool)

(assert (=> d!272272 (= res!395144 (not (isEmpty!5582 (originalCharacters!2320 (h!14794 l!5107)))))))

(assert (=> d!272272 (= (inv!11927 (h!14794 l!5107)) e!570948)))

(declare-fun b!867520 () Bool)

(declare-fun res!395145 () Bool)

(assert (=> b!867520 (=> (not res!395145) (not e!570948))))

(declare-fun list!3705 (BalanceConc!6244) List!9407)

(declare-fun dynLambda!4470 (Int TokenValue!1830) BalanceConc!6244)

(assert (=> b!867520 (= res!395145 (= (originalCharacters!2320 (h!14794 l!5107)) (list!3705 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (value!56973 (h!14794 l!5107))))))))

(declare-fun b!867521 () Bool)

(declare-fun size!7820 (List!9407) Int)

(assert (=> b!867521 (= e!570948 (= (size!7817 (h!14794 l!5107)) (size!7820 (originalCharacters!2320 (h!14794 l!5107)))))))

(assert (= (and d!272272 res!395144) b!867520))

(assert (= (and b!867520 res!395145) b!867521))

(declare-fun b_lambda!29519 () Bool)

(assert (=> (not b_lambda!29519) (not b!867520)))

(declare-fun t!98907 () Bool)

(declare-fun tb!62693 () Bool)

(assert (=> (and b!867510 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107))))) t!98907) tb!62693))

(declare-fun b!867526 () Bool)

(declare-fun e!570951 () Bool)

(declare-fun tp!274443 () Bool)

(declare-fun inv!11930 (Conc!3115) Bool)

(assert (=> b!867526 (= e!570951 (and (inv!11930 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (value!56973 (h!14794 l!5107))))) tp!274443))))

(declare-fun result!72506 () Bool)

(declare-fun inv!11931 (BalanceConc!6244) Bool)

(assert (=> tb!62693 (= result!72506 (and (inv!11931 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (value!56973 (h!14794 l!5107)))) e!570951))))

(assert (= tb!62693 b!867526))

(declare-fun m!1114553 () Bool)

(assert (=> b!867526 m!1114553))

(declare-fun m!1114555 () Bool)

(assert (=> tb!62693 m!1114555))

(assert (=> b!867520 t!98907))

(declare-fun b_and!77825 () Bool)

(assert (= b_and!77815 (and (=> t!98907 result!72506) b_and!77825)))

(declare-fun tb!62695 () Bool)

(declare-fun t!98909 () Bool)

(assert (=> (and b!867500 (= (toChars!2692 (transformation!1764 (h!14793 rules!2621))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107))))) t!98909) tb!62695))

(declare-fun result!72510 () Bool)

(assert (= result!72510 result!72506))

(assert (=> b!867520 t!98909))

(declare-fun b_and!77827 () Bool)

(assert (= b_and!77819 (and (=> t!98909 result!72510) b_and!77827)))

(declare-fun t!98911 () Bool)

(declare-fun tb!62697 () Bool)

(assert (=> (and b!867508 (= (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107))))) t!98911) tb!62697))

(declare-fun result!72512 () Bool)

(assert (= result!72512 result!72506))

(assert (=> b!867520 t!98911))

(declare-fun b_and!77829 () Bool)

(assert (= b_and!77823 (and (=> t!98911 result!72512) b_and!77829)))

(declare-fun m!1114557 () Bool)

(assert (=> d!272272 m!1114557))

(declare-fun m!1114559 () Bool)

(assert (=> b!867520 m!1114559))

(assert (=> b!867520 m!1114559))

(declare-fun m!1114561 () Bool)

(assert (=> b!867520 m!1114561))

(declare-fun m!1114563 () Bool)

(assert (=> b!867521 m!1114563))

(assert (=> b!867499 d!272272))

(declare-fun d!272274 () Bool)

(assert (=> d!272274 (= (inv!11923 (tag!2026 (h!14793 rules!2621))) (= (mod (str.len (value!56972 (tag!2026 (h!14793 rules!2621)))) 2) 0))))

(assert (=> b!867489 d!272274))

(declare-fun d!272276 () Bool)

(declare-fun res!395157 () Bool)

(declare-fun e!570960 () Bool)

(assert (=> d!272276 (=> (not res!395157) (not e!570960))))

(declare-fun semiInverseModEq!702 (Int Int) Bool)

(assert (=> d!272276 (= res!395157 (semiInverseModEq!702 (toChars!2692 (transformation!1764 (h!14793 rules!2621))) (toValue!2833 (transformation!1764 (h!14793 rules!2621)))))))

(assert (=> d!272276 (= (inv!11926 (transformation!1764 (h!14793 rules!2621))) e!570960)))

(declare-fun b!867538 () Bool)

(declare-fun equivClasses!669 (Int Int) Bool)

(assert (=> b!867538 (= e!570960 (equivClasses!669 (toChars!2692 (transformation!1764 (h!14793 rules!2621))) (toValue!2833 (transformation!1764 (h!14793 rules!2621)))))))

(assert (= (and d!272276 res!395157) b!867538))

(declare-fun m!1114583 () Bool)

(assert (=> d!272276 m!1114583))

(declare-fun m!1114585 () Bool)

(assert (=> b!867538 m!1114585))

(assert (=> b!867489 d!272276))

(declare-fun bs!232929 () Bool)

(declare-fun d!272280 () Bool)

(assert (= bs!232929 (and d!272280 b!867501)))

(declare-fun lambda!26042 () Int)

(assert (=> bs!232929 (not (= lambda!26042 lambda!26036))))

(declare-fun b!867604 () Bool)

(declare-fun e!571008 () Bool)

(assert (=> b!867604 (= e!571008 true)))

(declare-fun b!867603 () Bool)

(declare-fun e!571007 () Bool)

(assert (=> b!867603 (= e!571007 e!571008)))

(declare-fun b!867602 () Bool)

(declare-fun e!571006 () Bool)

(assert (=> b!867602 (= e!571006 e!571007)))

(assert (=> d!272280 e!571006))

(assert (= b!867603 b!867604))

(assert (= b!867602 b!867603))

(assert (= (and d!272280 ((_ is Cons!9392) rules!2621)) b!867602))

(declare-fun order!6145 () Int)

(declare-fun order!6143 () Int)

(declare-fun dynLambda!4471 (Int Int) Int)

(declare-fun dynLambda!4472 (Int Int) Int)

(assert (=> b!867604 (< (dynLambda!4471 order!6143 (toValue!2833 (transformation!1764 (h!14793 rules!2621)))) (dynLambda!4472 order!6145 lambda!26042))))

(declare-fun order!6147 () Int)

(declare-fun dynLambda!4473 (Int Int) Int)

(assert (=> b!867604 (< (dynLambda!4473 order!6147 (toChars!2692 (transformation!1764 (h!14793 rules!2621)))) (dynLambda!4472 order!6145 lambda!26042))))

(assert (=> d!272280 true))

(declare-fun lt!327227 () Bool)

(assert (=> d!272280 (= lt!327227 (forall!2231 l!5107 lambda!26042))))

(declare-fun e!570998 () Bool)

(assert (=> d!272280 (= lt!327227 e!570998)))

(declare-fun res!395180 () Bool)

(assert (=> d!272280 (=> res!395180 e!570998)))

(assert (=> d!272280 (= res!395180 (not ((_ is Cons!9393) l!5107)))))

(assert (=> d!272280 (not (isEmpty!5578 rules!2621))))

(assert (=> d!272280 (= (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 l!5107) lt!327227)))

(declare-fun b!867592 () Bool)

(declare-fun e!570999 () Bool)

(assert (=> b!867592 (= e!570998 e!570999)))

(declare-fun res!395181 () Bool)

(assert (=> b!867592 (=> (not res!395181) (not e!570999))))

(assert (=> b!867592 (= res!395181 (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 l!5107)))))

(declare-fun b!867593 () Bool)

(assert (=> b!867593 (= e!570999 (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 (t!98905 l!5107)))))

(assert (= (and d!272280 (not res!395180)) b!867592))

(assert (= (and b!867592 res!395181) b!867593))

(declare-fun m!1114643 () Bool)

(assert (=> d!272280 m!1114643))

(assert (=> d!272280 m!1114527))

(declare-fun m!1114645 () Bool)

(assert (=> b!867592 m!1114645))

(declare-fun m!1114647 () Bool)

(assert (=> b!867593 m!1114647))

(assert (=> b!867487 d!272280))

(declare-fun d!272286 () Bool)

(assert (=> d!272286 (= (inv!11923 (tag!2026 (rule!3187 separatorToken!297))) (= (mod (str.len (value!56972 (tag!2026 (rule!3187 separatorToken!297)))) 2) 0))))

(assert (=> b!867498 d!272286))

(declare-fun d!272288 () Bool)

(declare-fun res!395182 () Bool)

(declare-fun e!571009 () Bool)

(assert (=> d!272288 (=> (not res!395182) (not e!571009))))

(assert (=> d!272288 (= res!395182 (semiInverseModEq!702 (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (toValue!2833 (transformation!1764 (rule!3187 separatorToken!297)))))))

(assert (=> d!272288 (= (inv!11926 (transformation!1764 (rule!3187 separatorToken!297))) e!571009)))

(declare-fun b!867607 () Bool)

(assert (=> b!867607 (= e!571009 (equivClasses!669 (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (toValue!2833 (transformation!1764 (rule!3187 separatorToken!297)))))))

(assert (= (and d!272288 res!395182) b!867607))

(declare-fun m!1114649 () Bool)

(assert (=> d!272288 m!1114649))

(declare-fun m!1114651 () Bool)

(assert (=> b!867607 m!1114651))

(assert (=> b!867498 d!272288))

(declare-fun d!272290 () Bool)

(declare-fun res!395207 () Bool)

(declare-fun e!571045 () Bool)

(assert (=> d!272290 (=> res!395207 e!571045)))

(assert (=> d!272290 (= res!395207 (or (not ((_ is Cons!9393) lt!327185)) (not ((_ is Cons!9393) (t!98905 lt!327185)))))))

(assert (=> d!272290 (= (tokensListTwoByTwoPredicateSeparableList!60 thiss!20117 lt!327185 rules!2621) e!571045)))

(declare-fun b!867655 () Bool)

(declare-fun e!571044 () Bool)

(assert (=> b!867655 (= e!571045 e!571044)))

(declare-fun res!395208 () Bool)

(assert (=> b!867655 (=> (not res!395208) (not e!571044))))

(assert (=> b!867655 (= res!395208 (separableTokensPredicate!84 thiss!20117 (h!14794 lt!327185) (h!14794 (t!98905 lt!327185)) rules!2621))))

(declare-fun lt!327257 () Unit!13907)

(declare-fun Unit!13912 () Unit!13907)

(assert (=> b!867655 (= lt!327257 Unit!13912)))

(declare-fun size!7822 (BalanceConc!6244) Int)

(declare-fun charsOf!1021 (Token!3194) BalanceConc!6244)

(assert (=> b!867655 (> (size!7822 (charsOf!1021 (h!14794 (t!98905 lt!327185)))) 0)))

(declare-fun lt!327255 () Unit!13907)

(declare-fun Unit!13913 () Unit!13907)

(assert (=> b!867655 (= lt!327255 Unit!13913)))

(assert (=> b!867655 (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 (t!98905 lt!327185)))))

(declare-fun lt!327254 () Unit!13907)

(declare-fun Unit!13914 () Unit!13907)

(assert (=> b!867655 (= lt!327254 Unit!13914)))

(assert (=> b!867655 (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 lt!327185))))

(declare-fun lt!327256 () Unit!13907)

(declare-fun lt!327252 () Unit!13907)

(assert (=> b!867655 (= lt!327256 lt!327252)))

(assert (=> b!867655 (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 (t!98905 lt!327185)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!242 (LexerInterface!1566 List!9408 List!9409 Token!3194) Unit!13907)

(assert (=> b!867655 (= lt!327252 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!242 thiss!20117 rules!2621 lt!327185 (h!14794 (t!98905 lt!327185))))))

(declare-fun lt!327258 () Unit!13907)

(declare-fun lt!327253 () Unit!13907)

(assert (=> b!867655 (= lt!327258 lt!327253)))

(assert (=> b!867655 (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 lt!327185))))

(assert (=> b!867655 (= lt!327253 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!242 thiss!20117 rules!2621 lt!327185 (h!14794 lt!327185)))))

(declare-fun b!867656 () Bool)

(assert (=> b!867656 (= e!571044 (tokensListTwoByTwoPredicateSeparableList!60 thiss!20117 (Cons!9393 (h!14794 (t!98905 lt!327185)) (t!98905 (t!98905 lt!327185))) rules!2621))))

(assert (= (and d!272290 (not res!395207)) b!867655))

(assert (= (and b!867655 res!395208) b!867656))

(declare-fun m!1114731 () Bool)

(assert (=> b!867655 m!1114731))

(declare-fun m!1114733 () Bool)

(assert (=> b!867655 m!1114733))

(declare-fun m!1114735 () Bool)

(assert (=> b!867655 m!1114735))

(assert (=> b!867655 m!1114735))

(declare-fun m!1114737 () Bool)

(assert (=> b!867655 m!1114737))

(declare-fun m!1114739 () Bool)

(assert (=> b!867655 m!1114739))

(declare-fun m!1114741 () Bool)

(assert (=> b!867655 m!1114741))

(declare-fun m!1114743 () Bool)

(assert (=> b!867655 m!1114743))

(declare-fun m!1114745 () Bool)

(assert (=> b!867656 m!1114745))

(assert (=> b!867509 d!272290))

(declare-fun d!272318 () Bool)

(declare-fun res!395213 () Bool)

(declare-fun e!571050 () Bool)

(assert (=> d!272318 (=> res!395213 e!571050)))

(assert (=> d!272318 (= res!395213 (not ((_ is Cons!9392) rules!2621)))))

(assert (=> d!272318 (= (sepAndNonSepRulesDisjointChars!564 rules!2621 rules!2621) e!571050)))

(declare-fun b!867661 () Bool)

(declare-fun e!571051 () Bool)

(assert (=> b!867661 (= e!571050 e!571051)))

(declare-fun res!395214 () Bool)

(assert (=> b!867661 (=> (not res!395214) (not e!571051))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!269 (Rule!3328 List!9408) Bool)

(assert (=> b!867661 (= res!395214 (ruleDisjointCharsFromAllFromOtherType!269 (h!14793 rules!2621) rules!2621))))

(declare-fun b!867662 () Bool)

(assert (=> b!867662 (= e!571051 (sepAndNonSepRulesDisjointChars!564 rules!2621 (t!98904 rules!2621)))))

(assert (= (and d!272318 (not res!395213)) b!867661))

(assert (= (and b!867661 res!395214) b!867662))

(declare-fun m!1114747 () Bool)

(assert (=> b!867661 m!1114747))

(declare-fun m!1114749 () Bool)

(assert (=> b!867662 m!1114749))

(assert (=> b!867488 d!272318))

(declare-fun b!867673 () Bool)

(declare-fun e!571060 () Bool)

(declare-fun inv!17 (TokenValue!1830) Bool)

(assert (=> b!867673 (= e!571060 (inv!17 (value!56973 separatorToken!297)))))

(declare-fun b!867674 () Bool)

(declare-fun e!571059 () Bool)

(declare-fun inv!16 (TokenValue!1830) Bool)

(assert (=> b!867674 (= e!571059 (inv!16 (value!56973 separatorToken!297)))))

(declare-fun b!867675 () Bool)

(declare-fun res!395217 () Bool)

(declare-fun e!571058 () Bool)

(assert (=> b!867675 (=> res!395217 e!571058)))

(assert (=> b!867675 (= res!395217 (not ((_ is IntegerValue!5492) (value!56973 separatorToken!297))))))

(assert (=> b!867675 (= e!571060 e!571058)))

(declare-fun b!867677 () Bool)

(declare-fun inv!15 (TokenValue!1830) Bool)

(assert (=> b!867677 (= e!571058 (inv!15 (value!56973 separatorToken!297)))))

(declare-fun b!867676 () Bool)

(assert (=> b!867676 (= e!571059 e!571060)))

(declare-fun c!140261 () Bool)

(assert (=> b!867676 (= c!140261 ((_ is IntegerValue!5491) (value!56973 separatorToken!297)))))

(declare-fun d!272320 () Bool)

(declare-fun c!140260 () Bool)

(assert (=> d!272320 (= c!140260 ((_ is IntegerValue!5490) (value!56973 separatorToken!297)))))

(assert (=> d!272320 (= (inv!21 (value!56973 separatorToken!297)) e!571059)))

(assert (= (and d!272320 c!140260) b!867674))

(assert (= (and d!272320 (not c!140260)) b!867676))

(assert (= (and b!867676 c!140261) b!867673))

(assert (= (and b!867676 (not c!140261)) b!867675))

(assert (= (and b!867675 (not res!395217)) b!867677))

(declare-fun m!1114751 () Bool)

(assert (=> b!867673 m!1114751))

(declare-fun m!1114753 () Bool)

(assert (=> b!867674 m!1114753))

(declare-fun m!1114755 () Bool)

(assert (=> b!867677 m!1114755))

(assert (=> b!867491 d!272320))

(declare-fun d!272322 () Bool)

(assert (=> d!272322 (= (isEmpty!5579 (t!98905 (t!98905 lt!327189))) ((_ is Nil!9393) (t!98905 (t!98905 lt!327189))))))

(assert (=> b!867502 d!272322))

(declare-fun d!272324 () Bool)

(declare-fun prefixMatchZipperSequence!53 (Regex!2197 BalanceConc!6244) Bool)

(declare-fun rulesRegex!38 (LexerInterface!1566 List!9408) Regex!2197)

(declare-fun ++!2433 (BalanceConc!6244 BalanceConc!6244) BalanceConc!6244)

(declare-fun singletonSeq!586 (C!4964) BalanceConc!6244)

(declare-fun apply!1978 (BalanceConc!6244 Int) C!4964)

(assert (=> d!272324 (= (separableTokensPredicate!84 thiss!20117 (h!14794 lt!327189) (h!14794 (t!98905 lt!327189)) rules!2621) (not (prefixMatchZipperSequence!53 (rulesRegex!38 thiss!20117 rules!2621) (++!2433 (charsOf!1021 (h!14794 lt!327189)) (singletonSeq!586 (apply!1978 (charsOf!1021 (h!14794 (t!98905 lt!327189))) 0))))))))

(declare-fun bs!232937 () Bool)

(assert (= bs!232937 d!272324))

(declare-fun m!1114757 () Bool)

(assert (=> bs!232937 m!1114757))

(declare-fun m!1114759 () Bool)

(assert (=> bs!232937 m!1114759))

(assert (=> bs!232937 m!1114757))

(declare-fun m!1114761 () Bool)

(assert (=> bs!232937 m!1114761))

(declare-fun m!1114763 () Bool)

(assert (=> bs!232937 m!1114763))

(declare-fun m!1114765 () Bool)

(assert (=> bs!232937 m!1114765))

(declare-fun m!1114767 () Bool)

(assert (=> bs!232937 m!1114767))

(declare-fun m!1114769 () Bool)

(assert (=> bs!232937 m!1114769))

(assert (=> bs!232937 m!1114759))

(assert (=> bs!232937 m!1114769))

(assert (=> bs!232937 m!1114761))

(assert (=> bs!232937 m!1114765))

(assert (=> bs!232937 m!1114767))

(assert (=> b!867502 d!272324))

(declare-fun d!272326 () Bool)

(assert (=> d!272326 (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297))))

(declare-fun lt!327281 () Unit!13907)

(declare-fun choose!5104 (LexerInterface!1566 List!9408 List!9409 Token!3194) Unit!13907)

(assert (=> d!272326 (= lt!327281 (choose!5104 thiss!20117 rules!2621 lt!327188 separatorToken!297))))

(assert (=> d!272326 (not (isEmpty!5578 rules!2621))))

(assert (=> d!272326 (= (withSeparatorTokenListPreservesRulesProduceTokens!94 thiss!20117 rules!2621 lt!327188 separatorToken!297) lt!327281)))

(declare-fun bs!232940 () Bool)

(assert (= bs!232940 d!272326))

(assert (=> bs!232940 m!1114491))

(assert (=> bs!232940 m!1114491))

(declare-fun m!1114857 () Bool)

(assert (=> bs!232940 m!1114857))

(declare-fun m!1114859 () Bool)

(assert (=> bs!232940 m!1114859))

(assert (=> bs!232940 m!1114527))

(assert (=> b!867502 d!272326))

(declare-fun d!272346 () Bool)

(assert (=> d!272346 (separableTokensPredicate!84 thiss!20117 (h!14794 lt!327189) (h!14794 (t!98905 lt!327189)) rules!2621)))

(declare-fun lt!327284 () Unit!13907)

(declare-fun choose!5105 (LexerInterface!1566 Token!3194 Token!3194 List!9408) Unit!13907)

(assert (=> d!272346 (= lt!327284 (choose!5105 thiss!20117 (h!14794 lt!327189) (h!14794 (t!98905 lt!327189)) rules!2621))))

(assert (=> d!272346 (not (isEmpty!5578 rules!2621))))

(assert (=> d!272346 (= (lemmaTokensOfDifferentKindsAreSeparable!62 thiss!20117 (h!14794 lt!327189) (h!14794 (t!98905 lt!327189)) rules!2621) lt!327284)))

(declare-fun bs!232941 () Bool)

(assert (= bs!232941 d!272346))

(assert (=> bs!232941 m!1114541))

(declare-fun m!1114861 () Bool)

(assert (=> bs!232941 m!1114861))

(assert (=> bs!232941 m!1114527))

(assert (=> b!867502 d!272346))

(declare-fun b!867795 () Bool)

(declare-fun res!395274 () Bool)

(declare-fun e!571137 () Bool)

(assert (=> b!867795 (=> (not res!395274) (not e!571137))))

(assert (=> b!867795 (= res!395274 (rulesInvariant!1442 thiss!20117 rules!2621))))

(declare-fun b!867796 () Bool)

(declare-fun res!395275 () Bool)

(assert (=> b!867796 (=> (not res!395275) (not e!571137))))

(assert (=> b!867796 (= res!395275 (rulesProduceIndividualToken!630 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!867797 () Bool)

(declare-fun res!395272 () Bool)

(assert (=> b!867797 (=> (not res!395272) (not e!571137))))

(assert (=> b!867797 (= res!395272 (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 lt!327188))))

(declare-fun d!272348 () Bool)

(assert (=> d!272348 e!571137))

(declare-fun res!395273 () Bool)

(assert (=> d!272348 (=> (not res!395273) (not e!571137))))

(assert (=> d!272348 (= res!395273 ((_ is Lexer!1564) thiss!20117))))

(declare-fun lt!327314 () Unit!13907)

(declare-fun choose!5106 (LexerInterface!1566 List!9408 List!9409 Token!3194) Unit!13907)

(assert (=> d!272348 (= lt!327314 (choose!5106 thiss!20117 rules!2621 lt!327188 separatorToken!297))))

(assert (=> d!272348 (not (isEmpty!5578 rules!2621))))

(assert (=> d!272348 (= (printWithSeparatorTokenImpliesSeparableTokensList!38 thiss!20117 rules!2621 lt!327188 separatorToken!297) lt!327314)))

(declare-fun b!867798 () Bool)

(declare-fun res!395271 () Bool)

(assert (=> b!867798 (=> (not res!395271) (not e!571137))))

(assert (=> b!867798 (= res!395271 (isSeparator!1764 (rule!3187 separatorToken!297)))))

(declare-fun b!867799 () Bool)

(assert (=> b!867799 (= e!571137 (tokensListTwoByTwoPredicateSeparableList!60 thiss!20117 (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297) rules!2621))))

(declare-fun lt!327313 () Unit!13907)

(declare-fun lt!327312 () Unit!13907)

(assert (=> b!867799 (= lt!327313 lt!327312)))

(assert (=> b!867799 (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297))))

(assert (=> b!867799 (= lt!327312 (withSeparatorTokenListPreservesRulesProduceTokens!94 thiss!20117 rules!2621 lt!327188 separatorToken!297))))

(assert (= (and d!272348 res!395273) b!867795))

(assert (= (and b!867795 res!395274) b!867797))

(assert (= (and b!867797 res!395272) b!867796))

(assert (= (and b!867796 res!395275) b!867798))

(assert (= (and b!867798 res!395271) b!867799))

(assert (=> b!867795 m!1114513))

(declare-fun m!1114901 () Bool)

(assert (=> b!867797 m!1114901))

(assert (=> b!867796 m!1114489))

(assert (=> b!867799 m!1114491))

(assert (=> b!867799 m!1114491))

(declare-fun m!1114903 () Bool)

(assert (=> b!867799 m!1114903))

(assert (=> b!867799 m!1114491))

(assert (=> b!867799 m!1114857))

(assert (=> b!867799 m!1114543))

(declare-fun m!1114905 () Bool)

(assert (=> d!272348 m!1114905))

(assert (=> d!272348 m!1114527))

(assert (=> b!867502 d!272348))

(declare-fun bs!232943 () Bool)

(declare-fun d!272356 () Bool)

(assert (= bs!232943 (and d!272356 b!867501)))

(declare-fun lambda!26045 () Int)

(assert (=> bs!232943 (not (= lambda!26045 lambda!26036))))

(declare-fun bs!232944 () Bool)

(assert (= bs!232944 (and d!272356 d!272280)))

(assert (=> bs!232944 (= lambda!26045 lambda!26042)))

(declare-fun b!867804 () Bool)

(declare-fun e!571142 () Bool)

(assert (=> b!867804 (= e!571142 true)))

(declare-fun b!867803 () Bool)

(declare-fun e!571141 () Bool)

(assert (=> b!867803 (= e!571141 e!571142)))

(declare-fun b!867802 () Bool)

(declare-fun e!571140 () Bool)

(assert (=> b!867802 (= e!571140 e!571141)))

(assert (=> d!272356 e!571140))

(assert (= b!867803 b!867804))

(assert (= b!867802 b!867803))

(assert (= (and d!272356 ((_ is Cons!9392) rules!2621)) b!867802))

(assert (=> b!867804 (< (dynLambda!4471 order!6143 (toValue!2833 (transformation!1764 (h!14793 rules!2621)))) (dynLambda!4472 order!6145 lambda!26045))))

(assert (=> b!867804 (< (dynLambda!4473 order!6147 (toChars!2692 (transformation!1764 (h!14793 rules!2621)))) (dynLambda!4472 order!6145 lambda!26045))))

(assert (=> d!272356 true))

(declare-fun lt!327315 () Bool)

(assert (=> d!272356 (= lt!327315 (forall!2231 lt!327185 lambda!26045))))

(declare-fun e!571138 () Bool)

(assert (=> d!272356 (= lt!327315 e!571138)))

(declare-fun res!395276 () Bool)

(assert (=> d!272356 (=> res!395276 e!571138)))

(assert (=> d!272356 (= res!395276 (not ((_ is Cons!9393) lt!327185)))))

(assert (=> d!272356 (not (isEmpty!5578 rules!2621))))

(assert (=> d!272356 (= (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 lt!327185) lt!327315)))

(declare-fun b!867800 () Bool)

(declare-fun e!571139 () Bool)

(assert (=> b!867800 (= e!571138 e!571139)))

(declare-fun res!395277 () Bool)

(assert (=> b!867800 (=> (not res!395277) (not e!571139))))

(assert (=> b!867800 (= res!395277 (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 lt!327185)))))

(declare-fun b!867801 () Bool)

(assert (=> b!867801 (= e!571139 (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 (t!98905 lt!327185)))))

(assert (= (and d!272356 (not res!395276)) b!867800))

(assert (= (and b!867800 res!395277) b!867801))

(declare-fun m!1114907 () Bool)

(assert (=> d!272356 m!1114907))

(assert (=> d!272356 m!1114527))

(assert (=> b!867800 m!1114741))

(declare-fun m!1114909 () Bool)

(assert (=> b!867801 m!1114909))

(assert (=> b!867502 d!272356))

(declare-fun bs!232945 () Bool)

(declare-fun d!272358 () Bool)

(assert (= bs!232945 (and d!272358 b!867501)))

(declare-fun lambda!26046 () Int)

(assert (=> bs!232945 (not (= lambda!26046 lambda!26036))))

(declare-fun bs!232946 () Bool)

(assert (= bs!232946 (and d!272358 d!272280)))

(assert (=> bs!232946 (= lambda!26046 lambda!26042)))

(declare-fun bs!232947 () Bool)

(assert (= bs!232947 (and d!272358 d!272356)))

(assert (=> bs!232947 (= lambda!26046 lambda!26045)))

(declare-fun b!867809 () Bool)

(declare-fun e!571147 () Bool)

(assert (=> b!867809 (= e!571147 true)))

(declare-fun b!867808 () Bool)

(declare-fun e!571146 () Bool)

(assert (=> b!867808 (= e!571146 e!571147)))

(declare-fun b!867807 () Bool)

(declare-fun e!571145 () Bool)

(assert (=> b!867807 (= e!571145 e!571146)))

(assert (=> d!272358 e!571145))

(assert (= b!867808 b!867809))

(assert (= b!867807 b!867808))

(assert (= (and d!272358 ((_ is Cons!9392) rules!2621)) b!867807))

(assert (=> b!867809 (< (dynLambda!4471 order!6143 (toValue!2833 (transformation!1764 (h!14793 rules!2621)))) (dynLambda!4472 order!6145 lambda!26046))))

(assert (=> b!867809 (< (dynLambda!4473 order!6147 (toChars!2692 (transformation!1764 (h!14793 rules!2621)))) (dynLambda!4472 order!6145 lambda!26046))))

(assert (=> d!272358 true))

(declare-fun lt!327316 () Bool)

(assert (=> d!272358 (= lt!327316 (forall!2231 lt!327189 lambda!26046))))

(declare-fun e!571143 () Bool)

(assert (=> d!272358 (= lt!327316 e!571143)))

(declare-fun res!395278 () Bool)

(assert (=> d!272358 (=> res!395278 e!571143)))

(assert (=> d!272358 (= res!395278 (not ((_ is Cons!9393) lt!327189)))))

(assert (=> d!272358 (not (isEmpty!5578 rules!2621))))

(assert (=> d!272358 (= (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 lt!327189) lt!327316)))

(declare-fun b!867805 () Bool)

(declare-fun e!571144 () Bool)

(assert (=> b!867805 (= e!571143 e!571144)))

(declare-fun res!395279 () Bool)

(assert (=> b!867805 (=> (not res!395279) (not e!571144))))

(assert (=> b!867805 (= res!395279 (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 lt!327189)))))

(declare-fun b!867806 () Bool)

(assert (=> b!867806 (= e!571144 (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 (t!98905 lt!327189)))))

(assert (= (and d!272358 (not res!395278)) b!867805))

(assert (= (and b!867805 res!395279) b!867806))

(declare-fun m!1114911 () Bool)

(assert (=> d!272358 m!1114911))

(assert (=> d!272358 m!1114527))

(declare-fun m!1114913 () Bool)

(assert (=> b!867805 m!1114913))

(declare-fun m!1114915 () Bool)

(assert (=> b!867806 m!1114915))

(assert (=> b!867490 d!272358))

(declare-fun b!867830 () Bool)

(declare-fun e!571161 () List!9407)

(declare-fun lt!327340 () List!9409)

(declare-fun ++!2434 (List!9407 List!9407) List!9407)

(declare-fun printList!504 (LexerInterface!1566 List!9409) List!9407)

(assert (=> b!867830 (= e!571161 (++!2434 (list!3705 (charsOf!1021 (h!14794 lt!327340))) (printList!504 thiss!20117 (t!98905 lt!327340))))))

(declare-fun b!867831 () Bool)

(declare-fun e!571164 () List!9407)

(assert (=> b!867831 (= e!571164 Nil!9391)))

(declare-fun d!272360 () Bool)

(declare-fun lt!327336 () List!9409)

(declare-fun printWithSeparatorTokenList!62 (LexerInterface!1566 List!9409 Token!3194) List!9407)

(assert (=> d!272360 (= (printList!504 thiss!20117 lt!327336) (printWithSeparatorTokenList!62 thiss!20117 l!5107 separatorToken!297))))

(declare-fun e!571162 () List!9409)

(assert (=> d!272360 (= lt!327336 e!571162)))

(declare-fun c!140276 () Bool)

(assert (=> d!272360 (= c!140276 ((_ is Cons!9393) l!5107))))

(declare-fun e!571160 () Bool)

(assert (=> d!272360 e!571160))

(declare-fun res!395291 () Bool)

(assert (=> d!272360 (=> (not res!395291) (not e!571160))))

(assert (=> d!272360 (= res!395291 (isSeparator!1764 (rule!3187 separatorToken!297)))))

(assert (=> d!272360 (= (withSeparatorTokenList!94 thiss!20117 l!5107 separatorToken!297) lt!327336)))

(declare-fun b!867832 () Bool)

(declare-fun e!571163 () Bool)

(assert (=> b!867832 (= e!571160 e!571163)))

(declare-fun res!395290 () Bool)

(assert (=> b!867832 (=> res!395290 e!571163)))

(assert (=> b!867832 (= res!395290 (not ((_ is Cons!9393) l!5107)))))

(declare-fun b!867833 () Bool)

(assert (=> b!867833 (= e!571162 Nil!9393)))

(declare-fun e!571165 () Bool)

(declare-fun b!867834 () Bool)

(declare-fun $colon$colon!117 (List!9409 Token!3194) List!9409)

(assert (=> b!867834 (= e!571165 (= (printList!504 thiss!20117 ($colon$colon!117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 l!5107) separatorToken!297) separatorToken!297) (h!14794 l!5107))) e!571164))))

(declare-fun c!140274 () Bool)

(declare-fun lt!327335 () List!9409)

(assert (=> b!867834 (= c!140274 ((_ is Cons!9393) lt!327335))))

(assert (=> b!867834 (= lt!327335 ($colon$colon!117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 l!5107) separatorToken!297) separatorToken!297) (h!14794 l!5107)))))

(declare-fun b!867835 () Bool)

(assert (=> b!867835 (= e!571164 (++!2434 (list!3705 (charsOf!1021 (h!14794 lt!327335))) (printList!504 thiss!20117 (t!98905 lt!327335))))))

(declare-fun b!867836 () Bool)

(assert (=> b!867836 (= e!571163 (= (printList!504 thiss!20117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 l!5107) separatorToken!297) separatorToken!297)) e!571161))))

(declare-fun c!140275 () Bool)

(assert (=> b!867836 (= c!140275 ((_ is Cons!9393) lt!327340))))

(assert (=> b!867836 (= lt!327340 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 l!5107) separatorToken!297) separatorToken!297))))

(declare-fun b!867837 () Bool)

(assert (=> b!867837 (= e!571162 ($colon$colon!117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 l!5107) separatorToken!297) separatorToken!297) (h!14794 l!5107)))))

(declare-fun lt!327334 () List!9407)

(assert (=> b!867837 (= lt!327334 (list!3705 (charsOf!1021 (h!14794 l!5107))))))

(declare-fun lt!327333 () List!9407)

(assert (=> b!867837 (= lt!327333 (list!3705 (charsOf!1021 separatorToken!297)))))

(declare-fun lt!327339 () List!9407)

(assert (=> b!867837 (= lt!327339 (printList!504 thiss!20117 (withSeparatorTokenList!94 thiss!20117 (t!98905 l!5107) separatorToken!297)))))

(declare-fun lt!327338 () Unit!13907)

(declare-fun lemmaConcatAssociativity!781 (List!9407 List!9407 List!9407) Unit!13907)

(assert (=> b!867837 (= lt!327338 (lemmaConcatAssociativity!781 lt!327334 lt!327333 lt!327339))))

(assert (=> b!867837 (= (++!2434 (++!2434 lt!327334 lt!327333) lt!327339) (++!2434 lt!327334 (++!2434 lt!327333 lt!327339)))))

(declare-fun lt!327337 () Unit!13907)

(assert (=> b!867837 (= lt!327337 lt!327338)))

(declare-fun b!867838 () Bool)

(declare-fun res!395289 () Bool)

(assert (=> b!867838 (=> (not res!395289) (not e!571160))))

(assert (=> b!867838 (= res!395289 e!571165)))

(declare-fun res!395288 () Bool)

(assert (=> b!867838 (=> res!395288 e!571165)))

(assert (=> b!867838 (= res!395288 (not ((_ is Cons!9393) l!5107)))))

(declare-fun b!867839 () Bool)

(assert (=> b!867839 (= e!571161 Nil!9391)))

(assert (= (and d!272360 res!395291) b!867838))

(assert (= (and b!867838 (not res!395288)) b!867834))

(assert (= (and b!867834 c!140274) b!867835))

(assert (= (and b!867834 (not c!140274)) b!867831))

(assert (= (and b!867838 res!395289) b!867832))

(assert (= (and b!867832 (not res!395290)) b!867836))

(assert (= (and b!867836 c!140275) b!867830))

(assert (= (and b!867836 (not c!140275)) b!867839))

(assert (= (and d!272360 c!140276) b!867837))

(assert (= (and d!272360 (not c!140276)) b!867833))

(declare-fun m!1114917 () Bool)

(assert (=> b!867830 m!1114917))

(assert (=> b!867830 m!1114917))

(declare-fun m!1114919 () Bool)

(assert (=> b!867830 m!1114919))

(declare-fun m!1114921 () Bool)

(assert (=> b!867830 m!1114921))

(assert (=> b!867830 m!1114919))

(assert (=> b!867830 m!1114921))

(declare-fun m!1114923 () Bool)

(assert (=> b!867830 m!1114923))

(declare-fun m!1114925 () Bool)

(assert (=> b!867836 m!1114925))

(assert (=> b!867836 m!1114925))

(declare-fun m!1114927 () Bool)

(assert (=> b!867836 m!1114927))

(assert (=> b!867836 m!1114927))

(declare-fun m!1114929 () Bool)

(assert (=> b!867836 m!1114929))

(declare-fun m!1114931 () Bool)

(assert (=> b!867837 m!1114931))

(assert (=> b!867837 m!1114927))

(declare-fun m!1114933 () Bool)

(assert (=> b!867837 m!1114933))

(declare-fun m!1114935 () Bool)

(assert (=> b!867837 m!1114935))

(declare-fun m!1114937 () Bool)

(assert (=> b!867837 m!1114937))

(declare-fun m!1114939 () Bool)

(assert (=> b!867837 m!1114939))

(assert (=> b!867837 m!1114925))

(declare-fun m!1114941 () Bool)

(assert (=> b!867837 m!1114941))

(assert (=> b!867837 m!1114925))

(declare-fun m!1114943 () Bool)

(assert (=> b!867837 m!1114943))

(declare-fun m!1114945 () Bool)

(assert (=> b!867837 m!1114945))

(declare-fun m!1114947 () Bool)

(assert (=> b!867837 m!1114947))

(assert (=> b!867837 m!1114931))

(declare-fun m!1114949 () Bool)

(assert (=> b!867837 m!1114949))

(assert (=> b!867837 m!1114935))

(declare-fun m!1114951 () Bool)

(assert (=> b!867837 m!1114951))

(assert (=> b!867837 m!1114937))

(assert (=> b!867837 m!1114943))

(assert (=> b!867837 m!1114925))

(assert (=> b!867837 m!1114927))

(declare-fun m!1114953 () Bool)

(assert (=> b!867835 m!1114953))

(assert (=> b!867835 m!1114953))

(declare-fun m!1114955 () Bool)

(assert (=> b!867835 m!1114955))

(declare-fun m!1114957 () Bool)

(assert (=> b!867835 m!1114957))

(assert (=> b!867835 m!1114955))

(assert (=> b!867835 m!1114957))

(declare-fun m!1114959 () Bool)

(assert (=> b!867835 m!1114959))

(assert (=> b!867834 m!1114925))

(assert (=> b!867834 m!1114925))

(assert (=> b!867834 m!1114927))

(assert (=> b!867834 m!1114927))

(assert (=> b!867834 m!1114933))

(assert (=> b!867834 m!1114933))

(declare-fun m!1114961 () Bool)

(assert (=> b!867834 m!1114961))

(declare-fun m!1114963 () Bool)

(assert (=> d!272360 m!1114963))

(declare-fun m!1114965 () Bool)

(assert (=> d!272360 m!1114965))

(assert (=> b!867490 d!272360))

(declare-fun d!272362 () Bool)

(assert (=> d!272362 (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 (withSeparatorTokenList!94 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!327341 () Unit!13907)

(assert (=> d!272362 (= lt!327341 (choose!5104 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!272362 (not (isEmpty!5578 rules!2621))))

(assert (=> d!272362 (= (withSeparatorTokenListPreservesRulesProduceTokens!94 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!327341)))

(declare-fun bs!232948 () Bool)

(assert (= bs!232948 d!272362))

(assert (=> bs!232948 m!1114517))

(assert (=> bs!232948 m!1114517))

(declare-fun m!1114967 () Bool)

(assert (=> bs!232948 m!1114967))

(declare-fun m!1114969 () Bool)

(assert (=> bs!232948 m!1114969))

(assert (=> bs!232948 m!1114527))

(assert (=> b!867490 d!272362))

(declare-fun d!272364 () Bool)

(declare-fun res!395296 () Bool)

(declare-fun e!571170 () Bool)

(assert (=> d!272364 (=> res!395296 e!571170)))

(assert (=> d!272364 (= res!395296 ((_ is Nil!9393) l!5107))))

(assert (=> d!272364 (= (forall!2231 l!5107 lambda!26036) e!571170)))

(declare-fun b!867844 () Bool)

(declare-fun e!571171 () Bool)

(assert (=> b!867844 (= e!571170 e!571171)))

(declare-fun res!395297 () Bool)

(assert (=> b!867844 (=> (not res!395297) (not e!571171))))

(declare-fun dynLambda!4474 (Int Token!3194) Bool)

(assert (=> b!867844 (= res!395297 (dynLambda!4474 lambda!26036 (h!14794 l!5107)))))

(declare-fun b!867845 () Bool)

(assert (=> b!867845 (= e!571171 (forall!2231 (t!98905 l!5107) lambda!26036))))

(assert (= (and d!272364 (not res!395296)) b!867844))

(assert (= (and b!867844 res!395297) b!867845))

(declare-fun b_lambda!29533 () Bool)

(assert (=> (not b_lambda!29533) (not b!867844)))

(declare-fun m!1114971 () Bool)

(assert (=> b!867844 m!1114971))

(declare-fun m!1114973 () Bool)

(assert (=> b!867845 m!1114973))

(assert (=> b!867501 d!272364))

(declare-fun d!272366 () Bool)

(assert (=> d!272366 (= (isEmpty!5578 rules!2621) ((_ is Nil!9392) rules!2621))))

(assert (=> b!867494 d!272366))

(declare-fun d!272368 () Bool)

(declare-fun lt!327347 () Bool)

(declare-fun e!571177 () Bool)

(assert (=> d!272368 (= lt!327347 e!571177)))

(declare-fun res!395305 () Bool)

(assert (=> d!272368 (=> (not res!395305) (not e!571177))))

(declare-datatypes ((IArray!6239 0))(
  ( (IArray!6240 (innerList!3177 List!9409)) )
))
(declare-datatypes ((Conc!3117 0))(
  ( (Node!3117 (left!6956 Conc!3117) (right!7286 Conc!3117) (csize!6464 Int) (cheight!3328 Int)) (Leaf!4587 (xs!5806 IArray!6239) (csize!6465 Int)) (Empty!3117) )
))
(declare-datatypes ((BalanceConc!6248 0))(
  ( (BalanceConc!6249 (c!140282 Conc!3117)) )
))
(declare-fun list!3706 (BalanceConc!6248) List!9409)

(declare-datatypes ((tuple2!10484 0))(
  ( (tuple2!10485 (_1!6068 BalanceConc!6248) (_2!6068 BalanceConc!6244)) )
))
(declare-fun lex!650 (LexerInterface!1566 List!9408 BalanceConc!6244) tuple2!10484)

(declare-fun print!587 (LexerInterface!1566 BalanceConc!6248) BalanceConc!6244)

(declare-fun singletonSeq!587 (Token!3194) BalanceConc!6248)

(assert (=> d!272368 (= res!395305 (= (list!3706 (_1!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 lt!327184))))) (list!3706 (singletonSeq!587 lt!327184))))))

(declare-fun e!571176 () Bool)

(assert (=> d!272368 (= lt!327347 e!571176)))

(declare-fun res!395304 () Bool)

(assert (=> d!272368 (=> (not res!395304) (not e!571176))))

(declare-fun lt!327346 () tuple2!10484)

(declare-fun size!7823 (BalanceConc!6248) Int)

(assert (=> d!272368 (= res!395304 (= (size!7823 (_1!6068 lt!327346)) 1))))

(assert (=> d!272368 (= lt!327346 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 lt!327184))))))

(assert (=> d!272368 (not (isEmpty!5578 rules!2621))))

(assert (=> d!272368 (= (rulesProduceIndividualToken!630 thiss!20117 rules!2621 lt!327184) lt!327347)))

(declare-fun b!867852 () Bool)

(declare-fun res!395306 () Bool)

(assert (=> b!867852 (=> (not res!395306) (not e!571176))))

(declare-fun apply!1979 (BalanceConc!6248 Int) Token!3194)

(assert (=> b!867852 (= res!395306 (= (apply!1979 (_1!6068 lt!327346) 0) lt!327184))))

(declare-fun b!867853 () Bool)

(declare-fun isEmpty!5583 (BalanceConc!6244) Bool)

(assert (=> b!867853 (= e!571176 (isEmpty!5583 (_2!6068 lt!327346)))))

(declare-fun b!867854 () Bool)

(assert (=> b!867854 (= e!571177 (isEmpty!5583 (_2!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 lt!327184))))))))

(assert (= (and d!272368 res!395304) b!867852))

(assert (= (and b!867852 res!395306) b!867853))

(assert (= (and d!272368 res!395305) b!867854))

(declare-fun m!1114975 () Bool)

(assert (=> d!272368 m!1114975))

(declare-fun m!1114977 () Bool)

(assert (=> d!272368 m!1114977))

(declare-fun m!1114979 () Bool)

(assert (=> d!272368 m!1114979))

(declare-fun m!1114981 () Bool)

(assert (=> d!272368 m!1114981))

(declare-fun m!1114983 () Bool)

(assert (=> d!272368 m!1114983))

(assert (=> d!272368 m!1114527))

(assert (=> d!272368 m!1114979))

(declare-fun m!1114985 () Bool)

(assert (=> d!272368 m!1114985))

(assert (=> d!272368 m!1114979))

(assert (=> d!272368 m!1114975))

(declare-fun m!1114987 () Bool)

(assert (=> b!867852 m!1114987))

(declare-fun m!1114989 () Bool)

(assert (=> b!867853 m!1114989))

(assert (=> b!867854 m!1114979))

(assert (=> b!867854 m!1114979))

(assert (=> b!867854 m!1114975))

(assert (=> b!867854 m!1114975))

(assert (=> b!867854 m!1114977))

(declare-fun m!1114991 () Bool)

(assert (=> b!867854 m!1114991))

(assert (=> b!867503 d!272368))

(declare-fun d!272370 () Bool)

(declare-fun lt!327349 () Bool)

(declare-fun e!571179 () Bool)

(assert (=> d!272370 (= lt!327349 e!571179)))

(declare-fun res!395308 () Bool)

(assert (=> d!272370 (=> (not res!395308) (not e!571179))))

(assert (=> d!272370 (= res!395308 (= (list!3706 (_1!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 (h!14794 (t!98905 lt!327189))))))) (list!3706 (singletonSeq!587 (h!14794 (t!98905 lt!327189))))))))

(declare-fun e!571178 () Bool)

(assert (=> d!272370 (= lt!327349 e!571178)))

(declare-fun res!395307 () Bool)

(assert (=> d!272370 (=> (not res!395307) (not e!571178))))

(declare-fun lt!327348 () tuple2!10484)

(assert (=> d!272370 (= res!395307 (= (size!7823 (_1!6068 lt!327348)) 1))))

(assert (=> d!272370 (= lt!327348 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 (h!14794 (t!98905 lt!327189))))))))

(assert (=> d!272370 (not (isEmpty!5578 rules!2621))))

(assert (=> d!272370 (= (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 (t!98905 lt!327189))) lt!327349)))

(declare-fun b!867855 () Bool)

(declare-fun res!395309 () Bool)

(assert (=> b!867855 (=> (not res!395309) (not e!571178))))

(assert (=> b!867855 (= res!395309 (= (apply!1979 (_1!6068 lt!327348) 0) (h!14794 (t!98905 lt!327189))))))

(declare-fun b!867856 () Bool)

(assert (=> b!867856 (= e!571178 (isEmpty!5583 (_2!6068 lt!327348)))))

(declare-fun b!867857 () Bool)

(assert (=> b!867857 (= e!571179 (isEmpty!5583 (_2!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 (h!14794 (t!98905 lt!327189))))))))))

(assert (= (and d!272370 res!395307) b!867855))

(assert (= (and b!867855 res!395309) b!867856))

(assert (= (and d!272370 res!395308) b!867857))

(declare-fun m!1114993 () Bool)

(assert (=> d!272370 m!1114993))

(declare-fun m!1114995 () Bool)

(assert (=> d!272370 m!1114995))

(declare-fun m!1114997 () Bool)

(assert (=> d!272370 m!1114997))

(declare-fun m!1114999 () Bool)

(assert (=> d!272370 m!1114999))

(declare-fun m!1115001 () Bool)

(assert (=> d!272370 m!1115001))

(assert (=> d!272370 m!1114527))

(assert (=> d!272370 m!1114997))

(declare-fun m!1115003 () Bool)

(assert (=> d!272370 m!1115003))

(assert (=> d!272370 m!1114997))

(assert (=> d!272370 m!1114993))

(declare-fun m!1115005 () Bool)

(assert (=> b!867855 m!1115005))

(declare-fun m!1115007 () Bool)

(assert (=> b!867856 m!1115007))

(assert (=> b!867857 m!1114997))

(assert (=> b!867857 m!1114997))

(assert (=> b!867857 m!1114993))

(assert (=> b!867857 m!1114993))

(assert (=> b!867857 m!1114995))

(declare-fun m!1115009 () Bool)

(assert (=> b!867857 m!1115009))

(assert (=> b!867493 d!272370))

(declare-fun d!272372 () Bool)

(assert (=> d!272372 (= (head!1510 (t!98905 (t!98905 lt!327189))) (h!14794 (t!98905 (t!98905 lt!327189))))))

(assert (=> b!867493 d!272372))

(declare-fun d!272374 () Bool)

(assert (=> d!272374 (= (head!1510 l!5107) (h!14794 l!5107))))

(assert (=> b!867504 d!272374))

(declare-fun d!272376 () Bool)

(declare-fun res!395310 () Bool)

(declare-fun e!571180 () Bool)

(assert (=> d!272376 (=> (not res!395310) (not e!571180))))

(assert (=> d!272376 (= res!395310 (not (isEmpty!5582 (originalCharacters!2320 separatorToken!297))))))

(assert (=> d!272376 (= (inv!11927 separatorToken!297) e!571180)))

(declare-fun b!867858 () Bool)

(declare-fun res!395311 () Bool)

(assert (=> b!867858 (=> (not res!395311) (not e!571180))))

(assert (=> b!867858 (= res!395311 (= (originalCharacters!2320 separatorToken!297) (list!3705 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (value!56973 separatorToken!297)))))))

(declare-fun b!867859 () Bool)

(assert (=> b!867859 (= e!571180 (= (size!7817 separatorToken!297) (size!7820 (originalCharacters!2320 separatorToken!297))))))

(assert (= (and d!272376 res!395310) b!867858))

(assert (= (and b!867858 res!395311) b!867859))

(declare-fun b_lambda!29535 () Bool)

(assert (=> (not b_lambda!29535) (not b!867858)))

(declare-fun tb!62719 () Bool)

(declare-fun t!98939 () Bool)

(assert (=> (and b!867510 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297)))) t!98939) tb!62719))

(declare-fun b!867860 () Bool)

(declare-fun e!571181 () Bool)

(declare-fun tp!274504 () Bool)

(assert (=> b!867860 (= e!571181 (and (inv!11930 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (value!56973 separatorToken!297)))) tp!274504))))

(declare-fun result!72544 () Bool)

(assert (=> tb!62719 (= result!72544 (and (inv!11931 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (value!56973 separatorToken!297))) e!571181))))

(assert (= tb!62719 b!867860))

(declare-fun m!1115011 () Bool)

(assert (=> b!867860 m!1115011))

(declare-fun m!1115013 () Bool)

(assert (=> tb!62719 m!1115013))

(assert (=> b!867858 t!98939))

(declare-fun b_and!77851 () Bool)

(assert (= b_and!77825 (and (=> t!98939 result!72544) b_and!77851)))

(declare-fun t!98941 () Bool)

(declare-fun tb!62721 () Bool)

(assert (=> (and b!867500 (= (toChars!2692 (transformation!1764 (h!14793 rules!2621))) (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297)))) t!98941) tb!62721))

(declare-fun result!72546 () Bool)

(assert (= result!72546 result!72544))

(assert (=> b!867858 t!98941))

(declare-fun b_and!77853 () Bool)

(assert (= b_and!77827 (and (=> t!98941 result!72546) b_and!77853)))

(declare-fun t!98943 () Bool)

(declare-fun tb!62723 () Bool)

(assert (=> (and b!867508 (= (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297)))) t!98943) tb!62723))

(declare-fun result!72548 () Bool)

(assert (= result!72548 result!72544))

(assert (=> b!867858 t!98943))

(declare-fun b_and!77855 () Bool)

(assert (= b_and!77829 (and (=> t!98943 result!72548) b_and!77855)))

(declare-fun m!1115015 () Bool)

(assert (=> d!272376 m!1115015))

(declare-fun m!1115017 () Bool)

(assert (=> b!867858 m!1115017))

(assert (=> b!867858 m!1115017))

(declare-fun m!1115019 () Bool)

(assert (=> b!867858 m!1115019))

(declare-fun m!1115021 () Bool)

(assert (=> b!867859 m!1115021))

(assert (=> start!78310 d!272376))

(declare-fun d!272378 () Bool)

(declare-fun res!395314 () Bool)

(declare-fun e!571184 () Bool)

(assert (=> d!272378 (=> (not res!395314) (not e!571184))))

(declare-fun rulesValid!633 (LexerInterface!1566 List!9408) Bool)

(assert (=> d!272378 (= res!395314 (rulesValid!633 thiss!20117 rules!2621))))

(assert (=> d!272378 (= (rulesInvariant!1442 thiss!20117 rules!2621) e!571184)))

(declare-fun b!867863 () Bool)

(declare-datatypes ((List!9411 0))(
  ( (Nil!9395) (Cons!9395 (h!14796 String!11048) (t!98953 List!9411)) )
))
(declare-fun noDuplicateTag!633 (LexerInterface!1566 List!9408 List!9411) Bool)

(assert (=> b!867863 (= e!571184 (noDuplicateTag!633 thiss!20117 rules!2621 Nil!9395))))

(assert (= (and d!272378 res!395314) b!867863))

(declare-fun m!1115023 () Bool)

(assert (=> d!272378 m!1115023))

(declare-fun m!1115025 () Bool)

(assert (=> b!867863 m!1115025))

(assert (=> b!867507 d!272378))

(declare-fun d!272380 () Bool)

(assert (=> d!272380 (= (inv!11923 (tag!2026 (rule!3187 (h!14794 l!5107)))) (= (mod (str.len (value!56972 (tag!2026 (rule!3187 (h!14794 l!5107))))) 2) 0))))

(assert (=> b!867497 d!272380))

(declare-fun d!272382 () Bool)

(declare-fun res!395315 () Bool)

(declare-fun e!571185 () Bool)

(assert (=> d!272382 (=> (not res!395315) (not e!571185))))

(assert (=> d!272382 (= res!395315 (semiInverseModEq!702 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (toValue!2833 (transformation!1764 (rule!3187 (h!14794 l!5107))))))))

(assert (=> d!272382 (= (inv!11926 (transformation!1764 (rule!3187 (h!14794 l!5107)))) e!571185)))

(declare-fun b!867864 () Bool)

(assert (=> b!867864 (= e!571185 (equivClasses!669 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (toValue!2833 (transformation!1764 (rule!3187 (h!14794 l!5107))))))))

(assert (= (and d!272382 res!395315) b!867864))

(declare-fun m!1115027 () Bool)

(assert (=> d!272382 m!1115027))

(declare-fun m!1115029 () Bool)

(assert (=> b!867864 m!1115029))

(assert (=> b!867497 d!272382))

(declare-fun d!272384 () Bool)

(declare-fun lt!327351 () Bool)

(declare-fun e!571187 () Bool)

(assert (=> d!272384 (= lt!327351 e!571187)))

(declare-fun res!395317 () Bool)

(assert (=> d!272384 (=> (not res!395317) (not e!571187))))

(assert (=> d!272384 (= res!395317 (= (list!3706 (_1!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 separatorToken!297))))) (list!3706 (singletonSeq!587 separatorToken!297))))))

(declare-fun e!571186 () Bool)

(assert (=> d!272384 (= lt!327351 e!571186)))

(declare-fun res!395316 () Bool)

(assert (=> d!272384 (=> (not res!395316) (not e!571186))))

(declare-fun lt!327350 () tuple2!10484)

(assert (=> d!272384 (= res!395316 (= (size!7823 (_1!6068 lt!327350)) 1))))

(assert (=> d!272384 (= lt!327350 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 separatorToken!297))))))

(assert (=> d!272384 (not (isEmpty!5578 rules!2621))))

(assert (=> d!272384 (= (rulesProduceIndividualToken!630 thiss!20117 rules!2621 separatorToken!297) lt!327351)))

(declare-fun b!867865 () Bool)

(declare-fun res!395318 () Bool)

(assert (=> b!867865 (=> (not res!395318) (not e!571186))))

(assert (=> b!867865 (= res!395318 (= (apply!1979 (_1!6068 lt!327350) 0) separatorToken!297))))

(declare-fun b!867866 () Bool)

(assert (=> b!867866 (= e!571186 (isEmpty!5583 (_2!6068 lt!327350)))))

(declare-fun b!867867 () Bool)

(assert (=> b!867867 (= e!571187 (isEmpty!5583 (_2!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 separatorToken!297))))))))

(assert (= (and d!272384 res!395316) b!867865))

(assert (= (and b!867865 res!395318) b!867866))

(assert (= (and d!272384 res!395317) b!867867))

(declare-fun m!1115031 () Bool)

(assert (=> d!272384 m!1115031))

(declare-fun m!1115033 () Bool)

(assert (=> d!272384 m!1115033))

(declare-fun m!1115035 () Bool)

(assert (=> d!272384 m!1115035))

(declare-fun m!1115037 () Bool)

(assert (=> d!272384 m!1115037))

(declare-fun m!1115039 () Bool)

(assert (=> d!272384 m!1115039))

(assert (=> d!272384 m!1114527))

(assert (=> d!272384 m!1115035))

(declare-fun m!1115041 () Bool)

(assert (=> d!272384 m!1115041))

(assert (=> d!272384 m!1115035))

(assert (=> d!272384 m!1115031))

(declare-fun m!1115043 () Bool)

(assert (=> b!867865 m!1115043))

(declare-fun m!1115045 () Bool)

(assert (=> b!867866 m!1115045))

(assert (=> b!867867 m!1115035))

(assert (=> b!867867 m!1115035))

(assert (=> b!867867 m!1115031))

(assert (=> b!867867 m!1115031))

(assert (=> b!867867 m!1115033))

(declare-fun m!1115047 () Bool)

(assert (=> b!867867 m!1115047))

(assert (=> b!867495 d!272384))

(declare-fun b!867868 () Bool)

(declare-fun e!571189 () List!9407)

(declare-fun lt!327359 () List!9409)

(assert (=> b!867868 (= e!571189 (++!2434 (list!3705 (charsOf!1021 (h!14794 lt!327359))) (printList!504 thiss!20117 (t!98905 lt!327359))))))

(declare-fun b!867869 () Bool)

(declare-fun e!571192 () List!9407)

(assert (=> b!867869 (= e!571192 Nil!9391)))

(declare-fun lt!327355 () List!9409)

(declare-fun d!272386 () Bool)

(assert (=> d!272386 (= (printList!504 thiss!20117 lt!327355) (printWithSeparatorTokenList!62 thiss!20117 lt!327188 separatorToken!297))))

(declare-fun e!571190 () List!9409)

(assert (=> d!272386 (= lt!327355 e!571190)))

(declare-fun c!140279 () Bool)

(assert (=> d!272386 (= c!140279 ((_ is Cons!9393) lt!327188))))

(declare-fun e!571188 () Bool)

(assert (=> d!272386 e!571188))

(declare-fun res!395322 () Bool)

(assert (=> d!272386 (=> (not res!395322) (not e!571188))))

(assert (=> d!272386 (= res!395322 (isSeparator!1764 (rule!3187 separatorToken!297)))))

(assert (=> d!272386 (= (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297) lt!327355)))

(declare-fun b!867870 () Bool)

(declare-fun e!571191 () Bool)

(assert (=> b!867870 (= e!571188 e!571191)))

(declare-fun res!395321 () Bool)

(assert (=> b!867870 (=> res!395321 e!571191)))

(assert (=> b!867870 (= res!395321 (not ((_ is Cons!9393) lt!327188)))))

(declare-fun b!867871 () Bool)

(assert (=> b!867871 (= e!571190 Nil!9393)))

(declare-fun e!571193 () Bool)

(declare-fun b!867872 () Bool)

(assert (=> b!867872 (= e!571193 (= (printList!504 thiss!20117 ($colon$colon!117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 lt!327188) separatorToken!297) separatorToken!297) (h!14794 lt!327188))) e!571192))))

(declare-fun c!140277 () Bool)

(declare-fun lt!327354 () List!9409)

(assert (=> b!867872 (= c!140277 ((_ is Cons!9393) lt!327354))))

(assert (=> b!867872 (= lt!327354 ($colon$colon!117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 lt!327188) separatorToken!297) separatorToken!297) (h!14794 lt!327188)))))

(declare-fun b!867873 () Bool)

(assert (=> b!867873 (= e!571192 (++!2434 (list!3705 (charsOf!1021 (h!14794 lt!327354))) (printList!504 thiss!20117 (t!98905 lt!327354))))))

(declare-fun b!867874 () Bool)

(assert (=> b!867874 (= e!571191 (= (printList!504 thiss!20117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 lt!327188) separatorToken!297) separatorToken!297)) e!571189))))

(declare-fun c!140278 () Bool)

(assert (=> b!867874 (= c!140278 ((_ is Cons!9393) lt!327359))))

(assert (=> b!867874 (= lt!327359 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 lt!327188) separatorToken!297) separatorToken!297))))

(declare-fun b!867875 () Bool)

(assert (=> b!867875 (= e!571190 ($colon$colon!117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 lt!327188) separatorToken!297) separatorToken!297) (h!14794 lt!327188)))))

(declare-fun lt!327353 () List!9407)

(assert (=> b!867875 (= lt!327353 (list!3705 (charsOf!1021 (h!14794 lt!327188))))))

(declare-fun lt!327352 () List!9407)

(assert (=> b!867875 (= lt!327352 (list!3705 (charsOf!1021 separatorToken!297)))))

(declare-fun lt!327358 () List!9407)

(assert (=> b!867875 (= lt!327358 (printList!504 thiss!20117 (withSeparatorTokenList!94 thiss!20117 (t!98905 lt!327188) separatorToken!297)))))

(declare-fun lt!327357 () Unit!13907)

(assert (=> b!867875 (= lt!327357 (lemmaConcatAssociativity!781 lt!327353 lt!327352 lt!327358))))

(assert (=> b!867875 (= (++!2434 (++!2434 lt!327353 lt!327352) lt!327358) (++!2434 lt!327353 (++!2434 lt!327352 lt!327358)))))

(declare-fun lt!327356 () Unit!13907)

(assert (=> b!867875 (= lt!327356 lt!327357)))

(declare-fun b!867876 () Bool)

(declare-fun res!395320 () Bool)

(assert (=> b!867876 (=> (not res!395320) (not e!571188))))

(assert (=> b!867876 (= res!395320 e!571193)))

(declare-fun res!395319 () Bool)

(assert (=> b!867876 (=> res!395319 e!571193)))

(assert (=> b!867876 (= res!395319 (not ((_ is Cons!9393) lt!327188)))))

(declare-fun b!867877 () Bool)

(assert (=> b!867877 (= e!571189 Nil!9391)))

(assert (= (and d!272386 res!395322) b!867876))

(assert (= (and b!867876 (not res!395319)) b!867872))

(assert (= (and b!867872 c!140277) b!867873))

(assert (= (and b!867872 (not c!140277)) b!867869))

(assert (= (and b!867876 res!395320) b!867870))

(assert (= (and b!867870 (not res!395321)) b!867874))

(assert (= (and b!867874 c!140278) b!867868))

(assert (= (and b!867874 (not c!140278)) b!867877))

(assert (= (and d!272386 c!140279) b!867875))

(assert (= (and d!272386 (not c!140279)) b!867871))

(declare-fun m!1115049 () Bool)

(assert (=> b!867868 m!1115049))

(assert (=> b!867868 m!1115049))

(declare-fun m!1115051 () Bool)

(assert (=> b!867868 m!1115051))

(declare-fun m!1115053 () Bool)

(assert (=> b!867868 m!1115053))

(assert (=> b!867868 m!1115051))

(assert (=> b!867868 m!1115053))

(declare-fun m!1115055 () Bool)

(assert (=> b!867868 m!1115055))

(declare-fun m!1115057 () Bool)

(assert (=> b!867874 m!1115057))

(assert (=> b!867874 m!1115057))

(declare-fun m!1115059 () Bool)

(assert (=> b!867874 m!1115059))

(assert (=> b!867874 m!1115059))

(declare-fun m!1115061 () Bool)

(assert (=> b!867874 m!1115061))

(declare-fun m!1115063 () Bool)

(assert (=> b!867875 m!1115063))

(assert (=> b!867875 m!1115059))

(declare-fun m!1115065 () Bool)

(assert (=> b!867875 m!1115065))

(declare-fun m!1115067 () Bool)

(assert (=> b!867875 m!1115067))

(declare-fun m!1115069 () Bool)

(assert (=> b!867875 m!1115069))

(declare-fun m!1115071 () Bool)

(assert (=> b!867875 m!1115071))

(assert (=> b!867875 m!1115057))

(declare-fun m!1115073 () Bool)

(assert (=> b!867875 m!1115073))

(assert (=> b!867875 m!1115057))

(assert (=> b!867875 m!1114943))

(assert (=> b!867875 m!1114945))

(declare-fun m!1115075 () Bool)

(assert (=> b!867875 m!1115075))

(assert (=> b!867875 m!1115063))

(declare-fun m!1115077 () Bool)

(assert (=> b!867875 m!1115077))

(assert (=> b!867875 m!1115067))

(declare-fun m!1115079 () Bool)

(assert (=> b!867875 m!1115079))

(assert (=> b!867875 m!1115069))

(assert (=> b!867875 m!1114943))

(assert (=> b!867875 m!1115057))

(assert (=> b!867875 m!1115059))

(declare-fun m!1115081 () Bool)

(assert (=> b!867873 m!1115081))

(assert (=> b!867873 m!1115081))

(declare-fun m!1115083 () Bool)

(assert (=> b!867873 m!1115083))

(declare-fun m!1115085 () Bool)

(assert (=> b!867873 m!1115085))

(assert (=> b!867873 m!1115083))

(assert (=> b!867873 m!1115085))

(declare-fun m!1115087 () Bool)

(assert (=> b!867873 m!1115087))

(assert (=> b!867872 m!1115057))

(assert (=> b!867872 m!1115057))

(assert (=> b!867872 m!1115059))

(assert (=> b!867872 m!1115059))

(assert (=> b!867872 m!1115065))

(assert (=> b!867872 m!1115065))

(declare-fun m!1115089 () Bool)

(assert (=> b!867872 m!1115089))

(declare-fun m!1115091 () Bool)

(assert (=> d!272386 m!1115091))

(declare-fun m!1115093 () Bool)

(assert (=> d!272386 m!1115093))

(assert (=> b!867506 d!272386))

(declare-fun d!272388 () Bool)

(assert (=> d!272388 (= (tail!1072 l!5107) (t!98905 l!5107))))

(assert (=> b!867506 d!272388))

(declare-fun b!867878 () Bool)

(declare-fun e!571196 () Bool)

(assert (=> b!867878 (= e!571196 (inv!17 (value!56973 (h!14794 l!5107))))))

(declare-fun b!867879 () Bool)

(declare-fun e!571195 () Bool)

(assert (=> b!867879 (= e!571195 (inv!16 (value!56973 (h!14794 l!5107))))))

(declare-fun b!867880 () Bool)

(declare-fun res!395323 () Bool)

(declare-fun e!571194 () Bool)

(assert (=> b!867880 (=> res!395323 e!571194)))

(assert (=> b!867880 (= res!395323 (not ((_ is IntegerValue!5492) (value!56973 (h!14794 l!5107)))))))

(assert (=> b!867880 (= e!571196 e!571194)))

(declare-fun b!867882 () Bool)

(assert (=> b!867882 (= e!571194 (inv!15 (value!56973 (h!14794 l!5107))))))

(declare-fun b!867881 () Bool)

(assert (=> b!867881 (= e!571195 e!571196)))

(declare-fun c!140281 () Bool)

(assert (=> b!867881 (= c!140281 ((_ is IntegerValue!5491) (value!56973 (h!14794 l!5107))))))

(declare-fun d!272390 () Bool)

(declare-fun c!140280 () Bool)

(assert (=> d!272390 (= c!140280 ((_ is IntegerValue!5490) (value!56973 (h!14794 l!5107))))))

(assert (=> d!272390 (= (inv!21 (value!56973 (h!14794 l!5107))) e!571195)))

(assert (= (and d!272390 c!140280) b!867879))

(assert (= (and d!272390 (not c!140280)) b!867881))

(assert (= (and b!867881 c!140281) b!867878))

(assert (= (and b!867881 (not c!140281)) b!867880))

(assert (= (and b!867880 (not res!395323)) b!867882))

(declare-fun m!1115095 () Bool)

(assert (=> b!867878 m!1115095))

(declare-fun m!1115097 () Bool)

(assert (=> b!867879 m!1115097))

(declare-fun m!1115099 () Bool)

(assert (=> b!867882 m!1115099))

(assert (=> b!867496 d!272390))

(declare-fun b!867896 () Bool)

(declare-fun b_free!26629 () Bool)

(declare-fun b_next!26693 () Bool)

(assert (=> b!867896 (= b_free!26629 (not b_next!26693))))

(declare-fun tp!274517 () Bool)

(declare-fun b_and!77857 () Bool)

(assert (=> b!867896 (= tp!274517 b_and!77857)))

(declare-fun b_free!26631 () Bool)

(declare-fun b_next!26695 () Bool)

(assert (=> b!867896 (= b_free!26631 (not b_next!26695))))

(declare-fun t!98946 () Bool)

(declare-fun tb!62725 () Bool)

(assert (=> (and b!867896 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107))))) t!98946) tb!62725))

(declare-fun result!72552 () Bool)

(assert (= result!72552 result!72506))

(assert (=> b!867520 t!98946))

(declare-fun t!98948 () Bool)

(declare-fun tb!62727 () Bool)

(assert (=> (and b!867896 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))) (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297)))) t!98948) tb!62727))

(declare-fun result!72554 () Bool)

(assert (= result!72554 result!72544))

(assert (=> b!867858 t!98948))

(declare-fun b_and!77859 () Bool)

(declare-fun tp!274516 () Bool)

(assert (=> b!867896 (= tp!274516 (and (=> t!98946 result!72552) (=> t!98948 result!72554) b_and!77859))))

(declare-fun e!571211 () Bool)

(assert (=> b!867896 (= e!571211 (and tp!274517 tp!274516))))

(declare-fun tp!274519 () Bool)

(declare-fun e!571212 () Bool)

(declare-fun b!867895 () Bool)

(assert (=> b!867895 (= e!571212 (and tp!274519 (inv!11923 (tag!2026 (rule!3187 (h!14794 (t!98905 l!5107))))) (inv!11926 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))) e!571211))))

(declare-fun e!571214 () Bool)

(declare-fun b!867894 () Bool)

(declare-fun tp!274518 () Bool)

(assert (=> b!867894 (= e!571214 (and (inv!21 (value!56973 (h!14794 (t!98905 l!5107)))) e!571212 tp!274518))))

(declare-fun tp!274515 () Bool)

(declare-fun b!867893 () Bool)

(declare-fun e!571209 () Bool)

(assert (=> b!867893 (= e!571209 (and (inv!11927 (h!14794 (t!98905 l!5107))) e!571214 tp!274515))))

(assert (=> b!867499 (= tp!274430 e!571209)))

(assert (= b!867895 b!867896))

(assert (= b!867894 b!867895))

(assert (= b!867893 b!867894))

(assert (= (and b!867499 ((_ is Cons!9393) (t!98905 l!5107))) b!867893))

(declare-fun m!1115101 () Bool)

(assert (=> b!867895 m!1115101))

(declare-fun m!1115103 () Bool)

(assert (=> b!867895 m!1115103))

(declare-fun m!1115105 () Bool)

(assert (=> b!867894 m!1115105))

(declare-fun m!1115107 () Bool)

(assert (=> b!867893 m!1115107))

(declare-fun b!867909 () Bool)

(declare-fun e!571217 () Bool)

(declare-fun tp!274530 () Bool)

(assert (=> b!867909 (= e!571217 tp!274530)))

(declare-fun b!867908 () Bool)

(declare-fun tp!274533 () Bool)

(declare-fun tp!274534 () Bool)

(assert (=> b!867908 (= e!571217 (and tp!274533 tp!274534))))

(assert (=> b!867489 (= tp!274432 e!571217)))

(declare-fun b!867910 () Bool)

(declare-fun tp!274531 () Bool)

(declare-fun tp!274532 () Bool)

(assert (=> b!867910 (= e!571217 (and tp!274531 tp!274532))))

(declare-fun b!867907 () Bool)

(declare-fun tp_is_empty!4037 () Bool)

(assert (=> b!867907 (= e!571217 tp_is_empty!4037)))

(assert (= (and b!867489 ((_ is ElementMatch!2197) (regex!1764 (h!14793 rules!2621)))) b!867907))

(assert (= (and b!867489 ((_ is Concat!4028) (regex!1764 (h!14793 rules!2621)))) b!867908))

(assert (= (and b!867489 ((_ is Star!2197) (regex!1764 (h!14793 rules!2621)))) b!867909))

(assert (= (and b!867489 ((_ is Union!2197) (regex!1764 (h!14793 rules!2621)))) b!867910))

(declare-fun b!867913 () Bool)

(declare-fun e!571218 () Bool)

(declare-fun tp!274535 () Bool)

(assert (=> b!867913 (= e!571218 tp!274535)))

(declare-fun b!867912 () Bool)

(declare-fun tp!274538 () Bool)

(declare-fun tp!274539 () Bool)

(assert (=> b!867912 (= e!571218 (and tp!274538 tp!274539))))

(assert (=> b!867498 (= tp!274436 e!571218)))

(declare-fun b!867914 () Bool)

(declare-fun tp!274536 () Bool)

(declare-fun tp!274537 () Bool)

(assert (=> b!867914 (= e!571218 (and tp!274536 tp!274537))))

(declare-fun b!867911 () Bool)

(assert (=> b!867911 (= e!571218 tp_is_empty!4037)))

(assert (= (and b!867498 ((_ is ElementMatch!2197) (regex!1764 (rule!3187 separatorToken!297)))) b!867911))

(assert (= (and b!867498 ((_ is Concat!4028) (regex!1764 (rule!3187 separatorToken!297)))) b!867912))

(assert (= (and b!867498 ((_ is Star!2197) (regex!1764 (rule!3187 separatorToken!297)))) b!867913))

(assert (= (and b!867498 ((_ is Union!2197) (regex!1764 (rule!3187 separatorToken!297)))) b!867914))

(declare-fun b!867919 () Bool)

(declare-fun e!571221 () Bool)

(declare-fun tp!274542 () Bool)

(assert (=> b!867919 (= e!571221 (and tp_is_empty!4037 tp!274542))))

(assert (=> b!867491 (= tp!274440 e!571221)))

(assert (= (and b!867491 ((_ is Cons!9391) (originalCharacters!2320 separatorToken!297))) b!867919))

(declare-fun b!867930 () Bool)

(declare-fun b_free!26633 () Bool)

(declare-fun b_next!26697 () Bool)

(assert (=> b!867930 (= b_free!26633 (not b_next!26697))))

(declare-fun tp!274552 () Bool)

(declare-fun b_and!77861 () Bool)

(assert (=> b!867930 (= tp!274552 b_and!77861)))

(declare-fun b_free!26635 () Bool)

(declare-fun b_next!26699 () Bool)

(assert (=> b!867930 (= b_free!26635 (not b_next!26699))))

(declare-fun tb!62729 () Bool)

(declare-fun t!98950 () Bool)

(assert (=> (and b!867930 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 rules!2621)))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107))))) t!98950) tb!62729))

(declare-fun result!72562 () Bool)

(assert (= result!72562 result!72506))

(assert (=> b!867520 t!98950))

(declare-fun tb!62731 () Bool)

(declare-fun t!98952 () Bool)

(assert (=> (and b!867930 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 rules!2621)))) (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297)))) t!98952) tb!62731))

(declare-fun result!72564 () Bool)

(assert (= result!72564 result!72544))

(assert (=> b!867858 t!98952))

(declare-fun b_and!77863 () Bool)

(declare-fun tp!274551 () Bool)

(assert (=> b!867930 (= tp!274551 (and (=> t!98950 result!72562) (=> t!98952 result!72564) b_and!77863))))

(declare-fun e!571231 () Bool)

(assert (=> b!867930 (= e!571231 (and tp!274552 tp!274551))))

(declare-fun e!571232 () Bool)

(declare-fun b!867929 () Bool)

(declare-fun tp!274554 () Bool)

(assert (=> b!867929 (= e!571232 (and tp!274554 (inv!11923 (tag!2026 (h!14793 (t!98904 rules!2621)))) (inv!11926 (transformation!1764 (h!14793 (t!98904 rules!2621)))) e!571231))))

(declare-fun b!867928 () Bool)

(declare-fun e!571230 () Bool)

(declare-fun tp!274553 () Bool)

(assert (=> b!867928 (= e!571230 (and e!571232 tp!274553))))

(assert (=> b!867486 (= tp!274433 e!571230)))

(assert (= b!867929 b!867930))

(assert (= b!867928 b!867929))

(assert (= (and b!867486 ((_ is Cons!9392) (t!98904 rules!2621))) b!867928))

(declare-fun m!1115109 () Bool)

(assert (=> b!867929 m!1115109))

(declare-fun m!1115111 () Bool)

(assert (=> b!867929 m!1115111))

(declare-fun b!867933 () Bool)

(declare-fun e!571234 () Bool)

(declare-fun tp!274555 () Bool)

(assert (=> b!867933 (= e!571234 tp!274555)))

(declare-fun b!867932 () Bool)

(declare-fun tp!274558 () Bool)

(declare-fun tp!274559 () Bool)

(assert (=> b!867932 (= e!571234 (and tp!274558 tp!274559))))

(assert (=> b!867497 (= tp!274434 e!571234)))

(declare-fun b!867934 () Bool)

(declare-fun tp!274556 () Bool)

(declare-fun tp!274557 () Bool)

(assert (=> b!867934 (= e!571234 (and tp!274556 tp!274557))))

(declare-fun b!867931 () Bool)

(assert (=> b!867931 (= e!571234 tp_is_empty!4037)))

(assert (= (and b!867497 ((_ is ElementMatch!2197) (regex!1764 (rule!3187 (h!14794 l!5107))))) b!867931))

(assert (= (and b!867497 ((_ is Concat!4028) (regex!1764 (rule!3187 (h!14794 l!5107))))) b!867932))

(assert (= (and b!867497 ((_ is Star!2197) (regex!1764 (rule!3187 (h!14794 l!5107))))) b!867933))

(assert (= (and b!867497 ((_ is Union!2197) (regex!1764 (rule!3187 (h!14794 l!5107))))) b!867934))

(declare-fun b!867935 () Bool)

(declare-fun e!571235 () Bool)

(declare-fun tp!274560 () Bool)

(assert (=> b!867935 (= e!571235 (and tp_is_empty!4037 tp!274560))))

(assert (=> b!867496 (= tp!274431 e!571235)))

(assert (= (and b!867496 ((_ is Cons!9391) (originalCharacters!2320 (h!14794 l!5107)))) b!867935))

(declare-fun b_lambda!29537 () Bool)

(assert (= b_lambda!29519 (or (and b!867896 b_free!26631 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))))) (and b!867510 b_free!26611) (and b!867500 b_free!26615 (= (toChars!2692 (transformation!1764 (h!14793 rules!2621))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))))) (and b!867930 b_free!26635 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 rules!2621)))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))))) (and b!867508 b_free!26619 (= (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))))) b_lambda!29537)))

(declare-fun b_lambda!29539 () Bool)

(assert (= b_lambda!29533 (or b!867501 b_lambda!29539)))

(declare-fun bs!232949 () Bool)

(declare-fun d!272392 () Bool)

(assert (= bs!232949 (and d!272392 b!867501)))

(assert (=> bs!232949 (= (dynLambda!4474 lambda!26036 (h!14794 l!5107)) (not (isSeparator!1764 (rule!3187 (h!14794 l!5107)))))))

(assert (=> b!867844 d!272392))

(declare-fun b_lambda!29541 () Bool)

(assert (= b_lambda!29535 (or (and b!867500 b_free!26615 (= (toChars!2692 (transformation!1764 (h!14793 rules!2621))) (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))))) (and b!867930 b_free!26635 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 rules!2621)))) (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))))) (and b!867510 b_free!26611 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))))) (and b!867896 b_free!26631 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))) (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))))) (and b!867508 b_free!26619) b_lambda!29541)))

(check-sat (not b!867893) (not b!867802) (not b_next!26695) (not d!272356) (not b_next!26675) (not d!272384) (not b!867863) (not b!867856) b_and!77817 (not d!272280) (not d!272378) (not b!867795) b_and!77855 (not b!867929) (not b!867835) (not d!272382) (not b_next!26693) (not d!272346) (not b!867662) (not b_next!26683) (not d!272368) (not b!867855) (not b!867908) (not b!867913) tp_is_empty!4037 (not b!867800) (not b!867661) b_and!77857 (not d!272324) (not b!867607) (not b!867910) (not b!867872) (not b!867874) (not b!867592) (not b!867526) (not b!867806) (not b!867593) (not b!867873) (not b!867852) (not d!272376) (not b_next!26679) (not b!867914) (not b!867895) (not b!867864) (not b!867909) (not b!867894) (not b!867520) (not b_next!26681) b_and!77813 (not b_next!26677) (not b_next!26697) (not d!272272) (not tb!62719) (not b!867857) (not b!867928) (not b!867801) b_and!77859 (not b!867854) (not d!272276) (not b!867677) (not d!272370) (not b!867538) (not b!867859) (not b!867655) (not b!867878) (not d!272360) (not b!867797) (not b!867934) b_and!77863 (not d!272362) (not b_lambda!29539) (not b!867674) b_and!77861 (not b!867866) (not d!272358) (not b!867845) (not b!867865) (not b!867807) (not b_next!26699) (not b!867875) (not b_next!26673) (not b_lambda!29537) (not b!867858) (not b!867853) (not b!867933) (not b!867860) (not b!867836) (not b!867673) (not b!867837) (not b_lambda!29541) (not b!867521) (not d!272386) (not b!867882) (not tb!62693) (not b!867919) b_and!77853 (not b!867868) (not b!867796) (not b!867656) (not b!867912) (not d!272326) (not b!867830) (not b!867834) (not b!867879) (not d!272348) b_and!77821 (not b!867935) b_and!77851 (not b!867867) (not b!867932) (not d!272288) (not b!867799) (not b!867805) (not b!867602))
(check-sat b_and!77817 b_and!77855 (not b_next!26693) (not b_next!26683) b_and!77857 (not b_next!26679) b_and!77859 b_and!77863 b_and!77861 b_and!77853 b_and!77821 b_and!77851 (not b_next!26695) (not b_next!26675) (not b_next!26681) b_and!77813 (not b_next!26677) (not b_next!26697) (not b_next!26699) (not b_next!26673))
(get-model)

(declare-fun d!272472 () Bool)

(declare-fun lt!327408 () Token!3194)

(declare-fun apply!1980 (List!9409 Int) Token!3194)

(assert (=> d!272472 (= lt!327408 (apply!1980 (list!3706 (_1!6068 lt!327348)) 0))))

(declare-fun apply!1981 (Conc!3117 Int) Token!3194)

(assert (=> d!272472 (= lt!327408 (apply!1981 (c!140282 (_1!6068 lt!327348)) 0))))

(declare-fun e!571294 () Bool)

(assert (=> d!272472 e!571294))

(declare-fun res!395371 () Bool)

(assert (=> d!272472 (=> (not res!395371) (not e!571294))))

(assert (=> d!272472 (= res!395371 (<= 0 0))))

(assert (=> d!272472 (= (apply!1979 (_1!6068 lt!327348) 0) lt!327408)))

(declare-fun b!868034 () Bool)

(assert (=> b!868034 (= e!571294 (< 0 (size!7823 (_1!6068 lt!327348))))))

(assert (= (and d!272472 res!395371) b!868034))

(declare-fun m!1115393 () Bool)

(assert (=> d!272472 m!1115393))

(assert (=> d!272472 m!1115393))

(declare-fun m!1115395 () Bool)

(assert (=> d!272472 m!1115395))

(declare-fun m!1115397 () Bool)

(assert (=> d!272472 m!1115397))

(assert (=> b!868034 m!1114999))

(assert (=> b!867855 d!272472))

(declare-fun d!272474 () Bool)

(declare-fun charsToBigInt!1 (List!9406) Int)

(assert (=> d!272474 (= (inv!17 (value!56973 (h!14794 l!5107))) (= (charsToBigInt!1 (text!13258 (value!56973 (h!14794 l!5107)))) (value!56965 (value!56973 (h!14794 l!5107)))))))

(declare-fun bs!232967 () Bool)

(assert (= bs!232967 d!272474))

(declare-fun m!1115399 () Bool)

(assert (=> bs!232967 m!1115399))

(assert (=> b!867878 d!272474))

(declare-fun d!272476 () Bool)

(assert (=> d!272476 (= (isEmpty!5582 (originalCharacters!2320 (h!14794 l!5107))) ((_ is Nil!9391) (originalCharacters!2320 (h!14794 l!5107))))))

(assert (=> d!272272 d!272476))

(declare-fun b!868043 () Bool)

(declare-fun e!571299 () List!9407)

(assert (=> b!868043 (= e!571299 (printList!504 thiss!20117 (t!98905 lt!327354)))))

(declare-fun b!868046 () Bool)

(declare-fun e!571300 () Bool)

(declare-fun lt!327411 () List!9407)

(assert (=> b!868046 (= e!571300 (or (not (= (printList!504 thiss!20117 (t!98905 lt!327354)) Nil!9391)) (= lt!327411 (list!3705 (charsOf!1021 (h!14794 lt!327354))))))))

(declare-fun b!868044 () Bool)

(assert (=> b!868044 (= e!571299 (Cons!9391 (h!14792 (list!3705 (charsOf!1021 (h!14794 lt!327354)))) (++!2434 (t!98903 (list!3705 (charsOf!1021 (h!14794 lt!327354)))) (printList!504 thiss!20117 (t!98905 lt!327354)))))))

(declare-fun b!868045 () Bool)

(declare-fun res!395376 () Bool)

(assert (=> b!868045 (=> (not res!395376) (not e!571300))))

(assert (=> b!868045 (= res!395376 (= (size!7820 lt!327411) (+ (size!7820 (list!3705 (charsOf!1021 (h!14794 lt!327354)))) (size!7820 (printList!504 thiss!20117 (t!98905 lt!327354))))))))

(declare-fun d!272478 () Bool)

(assert (=> d!272478 e!571300))

(declare-fun res!395377 () Bool)

(assert (=> d!272478 (=> (not res!395377) (not e!571300))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1362 (List!9407) (InoxSet C!4964))

(assert (=> d!272478 (= res!395377 (= (content!1362 lt!327411) ((_ map or) (content!1362 (list!3705 (charsOf!1021 (h!14794 lt!327354)))) (content!1362 (printList!504 thiss!20117 (t!98905 lt!327354))))))))

(assert (=> d!272478 (= lt!327411 e!571299)))

(declare-fun c!140311 () Bool)

(assert (=> d!272478 (= c!140311 ((_ is Nil!9391) (list!3705 (charsOf!1021 (h!14794 lt!327354)))))))

(assert (=> d!272478 (= (++!2434 (list!3705 (charsOf!1021 (h!14794 lt!327354))) (printList!504 thiss!20117 (t!98905 lt!327354))) lt!327411)))

(assert (= (and d!272478 c!140311) b!868043))

(assert (= (and d!272478 (not c!140311)) b!868044))

(assert (= (and d!272478 res!395377) b!868045))

(assert (= (and b!868045 res!395376) b!868046))

(assert (=> b!868044 m!1115085))

(declare-fun m!1115401 () Bool)

(assert (=> b!868044 m!1115401))

(declare-fun m!1115403 () Bool)

(assert (=> b!868045 m!1115403))

(assert (=> b!868045 m!1115083))

(declare-fun m!1115405 () Bool)

(assert (=> b!868045 m!1115405))

(assert (=> b!868045 m!1115085))

(declare-fun m!1115407 () Bool)

(assert (=> b!868045 m!1115407))

(declare-fun m!1115409 () Bool)

(assert (=> d!272478 m!1115409))

(assert (=> d!272478 m!1115083))

(declare-fun m!1115411 () Bool)

(assert (=> d!272478 m!1115411))

(assert (=> d!272478 m!1115085))

(declare-fun m!1115413 () Bool)

(assert (=> d!272478 m!1115413))

(assert (=> b!867873 d!272478))

(declare-fun d!272480 () Bool)

(declare-fun list!3708 (Conc!3115) List!9407)

(assert (=> d!272480 (= (list!3705 (charsOf!1021 (h!14794 lt!327354))) (list!3708 (c!140240 (charsOf!1021 (h!14794 lt!327354)))))))

(declare-fun bs!232968 () Bool)

(assert (= bs!232968 d!272480))

(declare-fun m!1115415 () Bool)

(assert (=> bs!232968 m!1115415))

(assert (=> b!867873 d!272480))

(declare-fun d!272482 () Bool)

(declare-fun lt!327414 () BalanceConc!6244)

(assert (=> d!272482 (= (list!3705 lt!327414) (originalCharacters!2320 (h!14794 lt!327354)))))

(assert (=> d!272482 (= lt!327414 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327354)))) (value!56973 (h!14794 lt!327354))))))

(assert (=> d!272482 (= (charsOf!1021 (h!14794 lt!327354)) lt!327414)))

(declare-fun b_lambda!29549 () Bool)

(assert (=> (not b_lambda!29549) (not d!272482)))

(declare-fun tb!62743 () Bool)

(declare-fun t!98967 () Bool)

(assert (=> (and b!867930 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 rules!2621)))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327354))))) t!98967) tb!62743))

(declare-fun b!868047 () Bool)

(declare-fun e!571301 () Bool)

(declare-fun tp!274562 () Bool)

(assert (=> b!868047 (= e!571301 (and (inv!11930 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327354)))) (value!56973 (h!14794 lt!327354))))) tp!274562))))

(declare-fun result!72576 () Bool)

(assert (=> tb!62743 (= result!72576 (and (inv!11931 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327354)))) (value!56973 (h!14794 lt!327354)))) e!571301))))

(assert (= tb!62743 b!868047))

(declare-fun m!1115417 () Bool)

(assert (=> b!868047 m!1115417))

(declare-fun m!1115419 () Bool)

(assert (=> tb!62743 m!1115419))

(assert (=> d!272482 t!98967))

(declare-fun b_and!77895 () Bool)

(assert (= b_and!77863 (and (=> t!98967 result!72576) b_and!77895)))

(declare-fun t!98969 () Bool)

(declare-fun tb!62745 () Bool)

(assert (=> (and b!867510 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327354))))) t!98969) tb!62745))

(declare-fun result!72578 () Bool)

(assert (= result!72578 result!72576))

(assert (=> d!272482 t!98969))

(declare-fun b_and!77897 () Bool)

(assert (= b_and!77851 (and (=> t!98969 result!72578) b_and!77897)))

(declare-fun tb!62747 () Bool)

(declare-fun t!98971 () Bool)

(assert (=> (and b!867508 (= (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327354))))) t!98971) tb!62747))

(declare-fun result!72580 () Bool)

(assert (= result!72580 result!72576))

(assert (=> d!272482 t!98971))

(declare-fun b_and!77899 () Bool)

(assert (= b_and!77855 (and (=> t!98971 result!72580) b_and!77899)))

(declare-fun t!98973 () Bool)

(declare-fun tb!62749 () Bool)

(assert (=> (and b!867500 (= (toChars!2692 (transformation!1764 (h!14793 rules!2621))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327354))))) t!98973) tb!62749))

(declare-fun result!72582 () Bool)

(assert (= result!72582 result!72576))

(assert (=> d!272482 t!98973))

(declare-fun b_and!77901 () Bool)

(assert (= b_and!77853 (and (=> t!98973 result!72582) b_and!77901)))

(declare-fun tb!62751 () Bool)

(declare-fun t!98975 () Bool)

(assert (=> (and b!867896 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327354))))) t!98975) tb!62751))

(declare-fun result!72584 () Bool)

(assert (= result!72584 result!72576))

(assert (=> d!272482 t!98975))

(declare-fun b_and!77903 () Bool)

(assert (= b_and!77859 (and (=> t!98975 result!72584) b_and!77903)))

(declare-fun m!1115421 () Bool)

(assert (=> d!272482 m!1115421))

(declare-fun m!1115423 () Bool)

(assert (=> d!272482 m!1115423))

(assert (=> b!867873 d!272482))

(declare-fun d!272484 () Bool)

(declare-fun c!140314 () Bool)

(assert (=> d!272484 (= c!140314 ((_ is Cons!9393) (t!98905 lt!327354)))))

(declare-fun e!571304 () List!9407)

(assert (=> d!272484 (= (printList!504 thiss!20117 (t!98905 lt!327354)) e!571304)))

(declare-fun b!868052 () Bool)

(assert (=> b!868052 (= e!571304 (++!2434 (list!3705 (charsOf!1021 (h!14794 (t!98905 lt!327354)))) (printList!504 thiss!20117 (t!98905 (t!98905 lt!327354)))))))

(declare-fun b!868053 () Bool)

(assert (=> b!868053 (= e!571304 Nil!9391)))

(assert (= (and d!272484 c!140314) b!868052))

(assert (= (and d!272484 (not c!140314)) b!868053))

(declare-fun m!1115425 () Bool)

(assert (=> b!868052 m!1115425))

(assert (=> b!868052 m!1115425))

(declare-fun m!1115427 () Bool)

(assert (=> b!868052 m!1115427))

(declare-fun m!1115429 () Bool)

(assert (=> b!868052 m!1115429))

(assert (=> b!868052 m!1115427))

(assert (=> b!868052 m!1115429))

(declare-fun m!1115431 () Bool)

(assert (=> b!868052 m!1115431))

(assert (=> b!867873 d!272484))

(declare-fun d!272486 () Bool)

(assert (=> d!272486 true))

(declare-fun order!6151 () Int)

(declare-fun lambda!26053 () Int)

(declare-fun dynLambda!4476 (Int Int) Int)

(assert (=> d!272486 (< (dynLambda!4471 order!6143 (toValue!2833 (transformation!1764 (rule!3187 separatorToken!297)))) (dynLambda!4476 order!6151 lambda!26053))))

(declare-fun Forall2!336 (Int) Bool)

(assert (=> d!272486 (= (equivClasses!669 (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (toValue!2833 (transformation!1764 (rule!3187 separatorToken!297)))) (Forall2!336 lambda!26053))))

(declare-fun bs!232969 () Bool)

(assert (= bs!232969 d!272486))

(declare-fun m!1115433 () Bool)

(assert (=> bs!232969 m!1115433))

(assert (=> b!867607 d!272486))

(declare-fun d!272488 () Bool)

(declare-fun res!395380 () Bool)

(declare-fun e!571307 () Bool)

(assert (=> d!272488 (=> res!395380 e!571307)))

(assert (=> d!272488 (= res!395380 ((_ is Nil!9393) (t!98905 l!5107)))))

(assert (=> d!272488 (= (forall!2231 (t!98905 l!5107) lambda!26036) e!571307)))

(declare-fun b!868058 () Bool)

(declare-fun e!571308 () Bool)

(assert (=> b!868058 (= e!571307 e!571308)))

(declare-fun res!395381 () Bool)

(assert (=> b!868058 (=> (not res!395381) (not e!571308))))

(assert (=> b!868058 (= res!395381 (dynLambda!4474 lambda!26036 (h!14794 (t!98905 l!5107))))))

(declare-fun b!868059 () Bool)

(assert (=> b!868059 (= e!571308 (forall!2231 (t!98905 (t!98905 l!5107)) lambda!26036))))

(assert (= (and d!272488 (not res!395380)) b!868058))

(assert (= (and b!868058 res!395381) b!868059))

(declare-fun b_lambda!29551 () Bool)

(assert (=> (not b_lambda!29551) (not b!868058)))

(declare-fun m!1115435 () Bool)

(assert (=> b!868058 m!1115435))

(declare-fun m!1115437 () Bool)

(assert (=> b!868059 m!1115437))

(assert (=> b!867845 d!272488))

(declare-fun d!272490 () Bool)

(assert (=> d!272490 (= ($colon$colon!117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 lt!327188) separatorToken!297) separatorToken!297) (h!14794 lt!327188)) (Cons!9393 (h!14794 lt!327188) ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 lt!327188) separatorToken!297) separatorToken!297)))))

(assert (=> b!867875 d!272490))

(declare-fun d!272492 () Bool)

(declare-fun lt!327415 () BalanceConc!6244)

(assert (=> d!272492 (= (list!3705 lt!327415) (originalCharacters!2320 (h!14794 lt!327188)))))

(assert (=> d!272492 (= lt!327415 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327188)))) (value!56973 (h!14794 lt!327188))))))

(assert (=> d!272492 (= (charsOf!1021 (h!14794 lt!327188)) lt!327415)))

(declare-fun b_lambda!29553 () Bool)

(assert (=> (not b_lambda!29553) (not d!272492)))

(declare-fun t!98978 () Bool)

(declare-fun tb!62753 () Bool)

(assert (=> (and b!867500 (= (toChars!2692 (transformation!1764 (h!14793 rules!2621))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327188))))) t!98978) tb!62753))

(declare-fun b!868060 () Bool)

(declare-fun e!571309 () Bool)

(declare-fun tp!274563 () Bool)

(assert (=> b!868060 (= e!571309 (and (inv!11930 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327188)))) (value!56973 (h!14794 lt!327188))))) tp!274563))))

(declare-fun result!72586 () Bool)

(assert (=> tb!62753 (= result!72586 (and (inv!11931 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327188)))) (value!56973 (h!14794 lt!327188)))) e!571309))))

(assert (= tb!62753 b!868060))

(declare-fun m!1115439 () Bool)

(assert (=> b!868060 m!1115439))

(declare-fun m!1115441 () Bool)

(assert (=> tb!62753 m!1115441))

(assert (=> d!272492 t!98978))

(declare-fun b_and!77905 () Bool)

(assert (= b_and!77901 (and (=> t!98978 result!72586) b_and!77905)))

(declare-fun tb!62755 () Bool)

(declare-fun t!98980 () Bool)

(assert (=> (and b!867930 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 rules!2621)))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327188))))) t!98980) tb!62755))

(declare-fun result!72588 () Bool)

(assert (= result!72588 result!72586))

(assert (=> d!272492 t!98980))

(declare-fun b_and!77907 () Bool)

(assert (= b_and!77895 (and (=> t!98980 result!72588) b_and!77907)))

(declare-fun t!98982 () Bool)

(declare-fun tb!62757 () Bool)

(assert (=> (and b!867508 (= (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327188))))) t!98982) tb!62757))

(declare-fun result!72590 () Bool)

(assert (= result!72590 result!72586))

(assert (=> d!272492 t!98982))

(declare-fun b_and!77909 () Bool)

(assert (= b_and!77899 (and (=> t!98982 result!72590) b_and!77909)))

(declare-fun t!98984 () Bool)

(declare-fun tb!62759 () Bool)

(assert (=> (and b!867896 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327188))))) t!98984) tb!62759))

(declare-fun result!72592 () Bool)

(assert (= result!72592 result!72586))

(assert (=> d!272492 t!98984))

(declare-fun b_and!77911 () Bool)

(assert (= b_and!77903 (and (=> t!98984 result!72592) b_and!77911)))

(declare-fun t!98986 () Bool)

(declare-fun tb!62761 () Bool)

(assert (=> (and b!867510 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327188))))) t!98986) tb!62761))

(declare-fun result!72594 () Bool)

(assert (= result!72594 result!72586))

(assert (=> d!272492 t!98986))

(declare-fun b_and!77913 () Bool)

(assert (= b_and!77897 (and (=> t!98986 result!72594) b_and!77913)))

(declare-fun m!1115443 () Bool)

(assert (=> d!272492 m!1115443))

(declare-fun m!1115445 () Bool)

(assert (=> d!272492 m!1115445))

(assert (=> b!867875 d!272492))

(declare-fun b!868061 () Bool)

(declare-fun e!571310 () List!9407)

(assert (=> b!868061 (= e!571310 lt!327358)))

(declare-fun lt!327416 () List!9407)

(declare-fun e!571311 () Bool)

(declare-fun b!868064 () Bool)

(assert (=> b!868064 (= e!571311 (or (not (= lt!327358 Nil!9391)) (= lt!327416 (++!2434 lt!327353 lt!327352))))))

(declare-fun b!868062 () Bool)

(assert (=> b!868062 (= e!571310 (Cons!9391 (h!14792 (++!2434 lt!327353 lt!327352)) (++!2434 (t!98903 (++!2434 lt!327353 lt!327352)) lt!327358)))))

(declare-fun b!868063 () Bool)

(declare-fun res!395382 () Bool)

(assert (=> b!868063 (=> (not res!395382) (not e!571311))))

(assert (=> b!868063 (= res!395382 (= (size!7820 lt!327416) (+ (size!7820 (++!2434 lt!327353 lt!327352)) (size!7820 lt!327358))))))

(declare-fun d!272494 () Bool)

(assert (=> d!272494 e!571311))

(declare-fun res!395383 () Bool)

(assert (=> d!272494 (=> (not res!395383) (not e!571311))))

(assert (=> d!272494 (= res!395383 (= (content!1362 lt!327416) ((_ map or) (content!1362 (++!2434 lt!327353 lt!327352)) (content!1362 lt!327358))))))

(assert (=> d!272494 (= lt!327416 e!571310)))

(declare-fun c!140315 () Bool)

(assert (=> d!272494 (= c!140315 ((_ is Nil!9391) (++!2434 lt!327353 lt!327352)))))

(assert (=> d!272494 (= (++!2434 (++!2434 lt!327353 lt!327352) lt!327358) lt!327416)))

(assert (= (and d!272494 c!140315) b!868061))

(assert (= (and d!272494 (not c!140315)) b!868062))

(assert (= (and d!272494 res!395383) b!868063))

(assert (= (and b!868063 res!395382) b!868064))

(declare-fun m!1115447 () Bool)

(assert (=> b!868062 m!1115447))

(declare-fun m!1115449 () Bool)

(assert (=> b!868063 m!1115449))

(assert (=> b!868063 m!1115063))

(declare-fun m!1115451 () Bool)

(assert (=> b!868063 m!1115451))

(declare-fun m!1115453 () Bool)

(assert (=> b!868063 m!1115453))

(declare-fun m!1115455 () Bool)

(assert (=> d!272494 m!1115455))

(assert (=> d!272494 m!1115063))

(declare-fun m!1115457 () Bool)

(assert (=> d!272494 m!1115457))

(declare-fun m!1115459 () Bool)

(assert (=> d!272494 m!1115459))

(assert (=> b!867875 d!272494))

(declare-fun b!868065 () Bool)

(declare-fun e!571312 () List!9407)

(assert (=> b!868065 (= e!571312 (++!2434 lt!327352 lt!327358))))

(declare-fun lt!327417 () List!9407)

(declare-fun b!868068 () Bool)

(declare-fun e!571313 () Bool)

(assert (=> b!868068 (= e!571313 (or (not (= (++!2434 lt!327352 lt!327358) Nil!9391)) (= lt!327417 lt!327353)))))

(declare-fun b!868066 () Bool)

(assert (=> b!868066 (= e!571312 (Cons!9391 (h!14792 lt!327353) (++!2434 (t!98903 lt!327353) (++!2434 lt!327352 lt!327358))))))

(declare-fun b!868067 () Bool)

(declare-fun res!395384 () Bool)

(assert (=> b!868067 (=> (not res!395384) (not e!571313))))

(assert (=> b!868067 (= res!395384 (= (size!7820 lt!327417) (+ (size!7820 lt!327353) (size!7820 (++!2434 lt!327352 lt!327358)))))))

(declare-fun d!272496 () Bool)

(assert (=> d!272496 e!571313))

(declare-fun res!395385 () Bool)

(assert (=> d!272496 (=> (not res!395385) (not e!571313))))

(assert (=> d!272496 (= res!395385 (= (content!1362 lt!327417) ((_ map or) (content!1362 lt!327353) (content!1362 (++!2434 lt!327352 lt!327358)))))))

(assert (=> d!272496 (= lt!327417 e!571312)))

(declare-fun c!140316 () Bool)

(assert (=> d!272496 (= c!140316 ((_ is Nil!9391) lt!327353))))

(assert (=> d!272496 (= (++!2434 lt!327353 (++!2434 lt!327352 lt!327358)) lt!327417)))

(assert (= (and d!272496 c!140316) b!868065))

(assert (= (and d!272496 (not c!140316)) b!868066))

(assert (= (and d!272496 res!395385) b!868067))

(assert (= (and b!868067 res!395384) b!868068))

(assert (=> b!868066 m!1115069))

(declare-fun m!1115461 () Bool)

(assert (=> b!868066 m!1115461))

(declare-fun m!1115463 () Bool)

(assert (=> b!868067 m!1115463))

(declare-fun m!1115465 () Bool)

(assert (=> b!868067 m!1115465))

(assert (=> b!868067 m!1115069))

(declare-fun m!1115467 () Bool)

(assert (=> b!868067 m!1115467))

(declare-fun m!1115469 () Bool)

(assert (=> d!272496 m!1115469))

(declare-fun m!1115471 () Bool)

(assert (=> d!272496 m!1115471))

(assert (=> d!272496 m!1115069))

(declare-fun m!1115473 () Bool)

(assert (=> d!272496 m!1115473))

(assert (=> b!867875 d!272496))

(declare-fun d!272498 () Bool)

(declare-fun lt!327418 () BalanceConc!6244)

(assert (=> d!272498 (= (list!3705 lt!327418) (originalCharacters!2320 separatorToken!297))))

(assert (=> d!272498 (= lt!327418 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (value!56973 separatorToken!297)))))

(assert (=> d!272498 (= (charsOf!1021 separatorToken!297) lt!327418)))

(declare-fun b_lambda!29555 () Bool)

(assert (=> (not b_lambda!29555) (not d!272498)))

(assert (=> d!272498 t!98952))

(declare-fun b_and!77915 () Bool)

(assert (= b_and!77907 (and (=> t!98952 result!72564) b_and!77915)))

(assert (=> d!272498 t!98948))

(declare-fun b_and!77917 () Bool)

(assert (= b_and!77911 (and (=> t!98948 result!72554) b_and!77917)))

(assert (=> d!272498 t!98943))

(declare-fun b_and!77919 () Bool)

(assert (= b_and!77909 (and (=> t!98943 result!72548) b_and!77919)))

(assert (=> d!272498 t!98939))

(declare-fun b_and!77921 () Bool)

(assert (= b_and!77913 (and (=> t!98939 result!72544) b_and!77921)))

(assert (=> d!272498 t!98941))

(declare-fun b_and!77923 () Bool)

(assert (= b_and!77905 (and (=> t!98941 result!72546) b_and!77923)))

(declare-fun m!1115475 () Bool)

(assert (=> d!272498 m!1115475))

(assert (=> d!272498 m!1115017))

(assert (=> b!867875 d!272498))

(declare-fun d!272500 () Bool)

(assert (=> d!272500 (= ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 lt!327188) separatorToken!297) separatorToken!297) (Cons!9393 separatorToken!297 (withSeparatorTokenList!94 thiss!20117 (t!98905 lt!327188) separatorToken!297)))))

(assert (=> b!867875 d!272500))

(declare-fun d!272502 () Bool)

(assert (=> d!272502 (= (list!3705 (charsOf!1021 separatorToken!297)) (list!3708 (c!140240 (charsOf!1021 separatorToken!297))))))

(declare-fun bs!232970 () Bool)

(assert (= bs!232970 d!272502))

(declare-fun m!1115477 () Bool)

(assert (=> bs!232970 m!1115477))

(assert (=> b!867875 d!272502))

(declare-fun d!272504 () Bool)

(declare-fun c!140317 () Bool)

(assert (=> d!272504 (= c!140317 ((_ is Cons!9393) (withSeparatorTokenList!94 thiss!20117 (t!98905 lt!327188) separatorToken!297)))))

(declare-fun e!571314 () List!9407)

(assert (=> d!272504 (= (printList!504 thiss!20117 (withSeparatorTokenList!94 thiss!20117 (t!98905 lt!327188) separatorToken!297)) e!571314)))

(declare-fun b!868069 () Bool)

(assert (=> b!868069 (= e!571314 (++!2434 (list!3705 (charsOf!1021 (h!14794 (withSeparatorTokenList!94 thiss!20117 (t!98905 lt!327188) separatorToken!297)))) (printList!504 thiss!20117 (t!98905 (withSeparatorTokenList!94 thiss!20117 (t!98905 lt!327188) separatorToken!297)))))))

(declare-fun b!868070 () Bool)

(assert (=> b!868070 (= e!571314 Nil!9391)))

(assert (= (and d!272504 c!140317) b!868069))

(assert (= (and d!272504 (not c!140317)) b!868070))

(declare-fun m!1115479 () Bool)

(assert (=> b!868069 m!1115479))

(assert (=> b!868069 m!1115479))

(declare-fun m!1115481 () Bool)

(assert (=> b!868069 m!1115481))

(declare-fun m!1115483 () Bool)

(assert (=> b!868069 m!1115483))

(assert (=> b!868069 m!1115481))

(assert (=> b!868069 m!1115483))

(declare-fun m!1115485 () Bool)

(assert (=> b!868069 m!1115485))

(assert (=> b!867875 d!272504))

(declare-fun b!868071 () Bool)

(declare-fun e!571315 () List!9407)

(assert (=> b!868071 (= e!571315 lt!327352)))

(declare-fun b!868074 () Bool)

(declare-fun e!571316 () Bool)

(declare-fun lt!327419 () List!9407)

(assert (=> b!868074 (= e!571316 (or (not (= lt!327352 Nil!9391)) (= lt!327419 lt!327353)))))

(declare-fun b!868072 () Bool)

(assert (=> b!868072 (= e!571315 (Cons!9391 (h!14792 lt!327353) (++!2434 (t!98903 lt!327353) lt!327352)))))

(declare-fun b!868073 () Bool)

(declare-fun res!395386 () Bool)

(assert (=> b!868073 (=> (not res!395386) (not e!571316))))

(assert (=> b!868073 (= res!395386 (= (size!7820 lt!327419) (+ (size!7820 lt!327353) (size!7820 lt!327352))))))

(declare-fun d!272506 () Bool)

(assert (=> d!272506 e!571316))

(declare-fun res!395387 () Bool)

(assert (=> d!272506 (=> (not res!395387) (not e!571316))))

(assert (=> d!272506 (= res!395387 (= (content!1362 lt!327419) ((_ map or) (content!1362 lt!327353) (content!1362 lt!327352))))))

(assert (=> d!272506 (= lt!327419 e!571315)))

(declare-fun c!140318 () Bool)

(assert (=> d!272506 (= c!140318 ((_ is Nil!9391) lt!327353))))

(assert (=> d!272506 (= (++!2434 lt!327353 lt!327352) lt!327419)))

(assert (= (and d!272506 c!140318) b!868071))

(assert (= (and d!272506 (not c!140318)) b!868072))

(assert (= (and d!272506 res!395387) b!868073))

(assert (= (and b!868073 res!395386) b!868074))

(declare-fun m!1115487 () Bool)

(assert (=> b!868072 m!1115487))

(declare-fun m!1115489 () Bool)

(assert (=> b!868073 m!1115489))

(assert (=> b!868073 m!1115465))

(declare-fun m!1115491 () Bool)

(assert (=> b!868073 m!1115491))

(declare-fun m!1115493 () Bool)

(assert (=> d!272506 m!1115493))

(assert (=> d!272506 m!1115471))

(declare-fun m!1115495 () Bool)

(assert (=> d!272506 m!1115495))

(assert (=> b!867875 d!272506))

(declare-fun b!868075 () Bool)

(declare-fun e!571317 () List!9407)

(assert (=> b!868075 (= e!571317 lt!327358)))

(declare-fun b!868078 () Bool)

(declare-fun e!571318 () Bool)

(declare-fun lt!327420 () List!9407)

(assert (=> b!868078 (= e!571318 (or (not (= lt!327358 Nil!9391)) (= lt!327420 lt!327352)))))

(declare-fun b!868076 () Bool)

(assert (=> b!868076 (= e!571317 (Cons!9391 (h!14792 lt!327352) (++!2434 (t!98903 lt!327352) lt!327358)))))

(declare-fun b!868077 () Bool)

(declare-fun res!395388 () Bool)

(assert (=> b!868077 (=> (not res!395388) (not e!571318))))

(assert (=> b!868077 (= res!395388 (= (size!7820 lt!327420) (+ (size!7820 lt!327352) (size!7820 lt!327358))))))

(declare-fun d!272508 () Bool)

(assert (=> d!272508 e!571318))

(declare-fun res!395389 () Bool)

(assert (=> d!272508 (=> (not res!395389) (not e!571318))))

(assert (=> d!272508 (= res!395389 (= (content!1362 lt!327420) ((_ map or) (content!1362 lt!327352) (content!1362 lt!327358))))))

(assert (=> d!272508 (= lt!327420 e!571317)))

(declare-fun c!140319 () Bool)

(assert (=> d!272508 (= c!140319 ((_ is Nil!9391) lt!327352))))

(assert (=> d!272508 (= (++!2434 lt!327352 lt!327358) lt!327420)))

(assert (= (and d!272508 c!140319) b!868075))

(assert (= (and d!272508 (not c!140319)) b!868076))

(assert (= (and d!272508 res!395389) b!868077))

(assert (= (and b!868077 res!395388) b!868078))

(declare-fun m!1115497 () Bool)

(assert (=> b!868076 m!1115497))

(declare-fun m!1115499 () Bool)

(assert (=> b!868077 m!1115499))

(assert (=> b!868077 m!1115491))

(assert (=> b!868077 m!1115453))

(declare-fun m!1115501 () Bool)

(assert (=> d!272508 m!1115501))

(assert (=> d!272508 m!1115495))

(assert (=> d!272508 m!1115459))

(assert (=> b!867875 d!272508))

(declare-fun d!272510 () Bool)

(assert (=> d!272510 (= (++!2434 (++!2434 lt!327353 lt!327352) lt!327358) (++!2434 lt!327353 (++!2434 lt!327352 lt!327358)))))

(declare-fun lt!327423 () Unit!13907)

(declare-fun choose!5108 (List!9407 List!9407 List!9407) Unit!13907)

(assert (=> d!272510 (= lt!327423 (choose!5108 lt!327353 lt!327352 lt!327358))))

(assert (=> d!272510 (= (lemmaConcatAssociativity!781 lt!327353 lt!327352 lt!327358) lt!327423)))

(declare-fun bs!232971 () Bool)

(assert (= bs!232971 d!272510))

(assert (=> bs!232971 m!1115063))

(assert (=> bs!232971 m!1115077))

(assert (=> bs!232971 m!1115069))

(assert (=> bs!232971 m!1115071))

(declare-fun m!1115503 () Bool)

(assert (=> bs!232971 m!1115503))

(assert (=> bs!232971 m!1115063))

(assert (=> bs!232971 m!1115069))

(assert (=> b!867875 d!272510))

(declare-fun b!868079 () Bool)

(declare-fun e!571320 () List!9407)

(declare-fun lt!327431 () List!9409)

(assert (=> b!868079 (= e!571320 (++!2434 (list!3705 (charsOf!1021 (h!14794 lt!327431))) (printList!504 thiss!20117 (t!98905 lt!327431))))))

(declare-fun b!868080 () Bool)

(declare-fun e!571323 () List!9407)

(assert (=> b!868080 (= e!571323 Nil!9391)))

(declare-fun lt!327427 () List!9409)

(declare-fun d!272512 () Bool)

(assert (=> d!272512 (= (printList!504 thiss!20117 lt!327427) (printWithSeparatorTokenList!62 thiss!20117 (t!98905 lt!327188) separatorToken!297))))

(declare-fun e!571321 () List!9409)

(assert (=> d!272512 (= lt!327427 e!571321)))

(declare-fun c!140322 () Bool)

(assert (=> d!272512 (= c!140322 ((_ is Cons!9393) (t!98905 lt!327188)))))

(declare-fun e!571319 () Bool)

(assert (=> d!272512 e!571319))

(declare-fun res!395393 () Bool)

(assert (=> d!272512 (=> (not res!395393) (not e!571319))))

(assert (=> d!272512 (= res!395393 (isSeparator!1764 (rule!3187 separatorToken!297)))))

(assert (=> d!272512 (= (withSeparatorTokenList!94 thiss!20117 (t!98905 lt!327188) separatorToken!297) lt!327427)))

(declare-fun b!868081 () Bool)

(declare-fun e!571322 () Bool)

(assert (=> b!868081 (= e!571319 e!571322)))

(declare-fun res!395392 () Bool)

(assert (=> b!868081 (=> res!395392 e!571322)))

(assert (=> b!868081 (= res!395392 (not ((_ is Cons!9393) (t!98905 lt!327188))))))

(declare-fun b!868082 () Bool)

(assert (=> b!868082 (= e!571321 Nil!9393)))

(declare-fun e!571324 () Bool)

(declare-fun b!868083 () Bool)

(assert (=> b!868083 (= e!571324 (= (printList!504 thiss!20117 ($colon$colon!117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 (t!98905 lt!327188)) separatorToken!297) separatorToken!297) (h!14794 (t!98905 lt!327188)))) e!571323))))

(declare-fun c!140320 () Bool)

(declare-fun lt!327426 () List!9409)

(assert (=> b!868083 (= c!140320 ((_ is Cons!9393) lt!327426))))

(assert (=> b!868083 (= lt!327426 ($colon$colon!117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 (t!98905 lt!327188)) separatorToken!297) separatorToken!297) (h!14794 (t!98905 lt!327188))))))

(declare-fun b!868084 () Bool)

(assert (=> b!868084 (= e!571323 (++!2434 (list!3705 (charsOf!1021 (h!14794 lt!327426))) (printList!504 thiss!20117 (t!98905 lt!327426))))))

(declare-fun b!868085 () Bool)

(assert (=> b!868085 (= e!571322 (= (printList!504 thiss!20117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 (t!98905 lt!327188)) separatorToken!297) separatorToken!297)) e!571320))))

(declare-fun c!140321 () Bool)

(assert (=> b!868085 (= c!140321 ((_ is Cons!9393) lt!327431))))

(assert (=> b!868085 (= lt!327431 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 (t!98905 lt!327188)) separatorToken!297) separatorToken!297))))

(declare-fun b!868086 () Bool)

(assert (=> b!868086 (= e!571321 ($colon$colon!117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 (t!98905 lt!327188)) separatorToken!297) separatorToken!297) (h!14794 (t!98905 lt!327188))))))

(declare-fun lt!327425 () List!9407)

(assert (=> b!868086 (= lt!327425 (list!3705 (charsOf!1021 (h!14794 (t!98905 lt!327188)))))))

(declare-fun lt!327424 () List!9407)

(assert (=> b!868086 (= lt!327424 (list!3705 (charsOf!1021 separatorToken!297)))))

(declare-fun lt!327430 () List!9407)

(assert (=> b!868086 (= lt!327430 (printList!504 thiss!20117 (withSeparatorTokenList!94 thiss!20117 (t!98905 (t!98905 lt!327188)) separatorToken!297)))))

(declare-fun lt!327429 () Unit!13907)

(assert (=> b!868086 (= lt!327429 (lemmaConcatAssociativity!781 lt!327425 lt!327424 lt!327430))))

(assert (=> b!868086 (= (++!2434 (++!2434 lt!327425 lt!327424) lt!327430) (++!2434 lt!327425 (++!2434 lt!327424 lt!327430)))))

(declare-fun lt!327428 () Unit!13907)

(assert (=> b!868086 (= lt!327428 lt!327429)))

(declare-fun b!868087 () Bool)

(declare-fun res!395391 () Bool)

(assert (=> b!868087 (=> (not res!395391) (not e!571319))))

(assert (=> b!868087 (= res!395391 e!571324)))

(declare-fun res!395390 () Bool)

(assert (=> b!868087 (=> res!395390 e!571324)))

(assert (=> b!868087 (= res!395390 (not ((_ is Cons!9393) (t!98905 lt!327188))))))

(declare-fun b!868088 () Bool)

(assert (=> b!868088 (= e!571320 Nil!9391)))

(assert (= (and d!272512 res!395393) b!868087))

(assert (= (and b!868087 (not res!395390)) b!868083))

(assert (= (and b!868083 c!140320) b!868084))

(assert (= (and b!868083 (not c!140320)) b!868080))

(assert (= (and b!868087 res!395391) b!868081))

(assert (= (and b!868081 (not res!395392)) b!868085))

(assert (= (and b!868085 c!140321) b!868079))

(assert (= (and b!868085 (not c!140321)) b!868088))

(assert (= (and d!272512 c!140322) b!868086))

(assert (= (and d!272512 (not c!140322)) b!868082))

(declare-fun m!1115505 () Bool)

(assert (=> b!868079 m!1115505))

(assert (=> b!868079 m!1115505))

(declare-fun m!1115507 () Bool)

(assert (=> b!868079 m!1115507))

(declare-fun m!1115509 () Bool)

(assert (=> b!868079 m!1115509))

(assert (=> b!868079 m!1115507))

(assert (=> b!868079 m!1115509))

(declare-fun m!1115511 () Bool)

(assert (=> b!868079 m!1115511))

(declare-fun m!1115513 () Bool)

(assert (=> b!868085 m!1115513))

(assert (=> b!868085 m!1115513))

(declare-fun m!1115515 () Bool)

(assert (=> b!868085 m!1115515))

(assert (=> b!868085 m!1115515))

(declare-fun m!1115517 () Bool)

(assert (=> b!868085 m!1115517))

(declare-fun m!1115519 () Bool)

(assert (=> b!868086 m!1115519))

(assert (=> b!868086 m!1115515))

(declare-fun m!1115521 () Bool)

(assert (=> b!868086 m!1115521))

(declare-fun m!1115523 () Bool)

(assert (=> b!868086 m!1115523))

(declare-fun m!1115525 () Bool)

(assert (=> b!868086 m!1115525))

(declare-fun m!1115527 () Bool)

(assert (=> b!868086 m!1115527))

(assert (=> b!868086 m!1115513))

(declare-fun m!1115529 () Bool)

(assert (=> b!868086 m!1115529))

(assert (=> b!868086 m!1115513))

(assert (=> b!868086 m!1114943))

(assert (=> b!868086 m!1114945))

(declare-fun m!1115531 () Bool)

(assert (=> b!868086 m!1115531))

(assert (=> b!868086 m!1115519))

(declare-fun m!1115533 () Bool)

(assert (=> b!868086 m!1115533))

(assert (=> b!868086 m!1115523))

(declare-fun m!1115535 () Bool)

(assert (=> b!868086 m!1115535))

(assert (=> b!868086 m!1115525))

(assert (=> b!868086 m!1114943))

(assert (=> b!868086 m!1115513))

(assert (=> b!868086 m!1115515))

(declare-fun m!1115537 () Bool)

(assert (=> b!868084 m!1115537))

(assert (=> b!868084 m!1115537))

(declare-fun m!1115539 () Bool)

(assert (=> b!868084 m!1115539))

(declare-fun m!1115541 () Bool)

(assert (=> b!868084 m!1115541))

(assert (=> b!868084 m!1115539))

(assert (=> b!868084 m!1115541))

(declare-fun m!1115543 () Bool)

(assert (=> b!868084 m!1115543))

(assert (=> b!868083 m!1115513))

(assert (=> b!868083 m!1115513))

(assert (=> b!868083 m!1115515))

(assert (=> b!868083 m!1115515))

(assert (=> b!868083 m!1115521))

(assert (=> b!868083 m!1115521))

(declare-fun m!1115545 () Bool)

(assert (=> b!868083 m!1115545))

(declare-fun m!1115547 () Bool)

(assert (=> d!272512 m!1115547))

(declare-fun m!1115549 () Bool)

(assert (=> d!272512 m!1115549))

(assert (=> b!867875 d!272512))

(declare-fun d!272514 () Bool)

(assert (=> d!272514 (= (list!3705 (charsOf!1021 (h!14794 lt!327188))) (list!3708 (c!140240 (charsOf!1021 (h!14794 lt!327188)))))))

(declare-fun bs!232972 () Bool)

(assert (= bs!232972 d!272514))

(declare-fun m!1115551 () Bool)

(assert (=> bs!232972 m!1115551))

(assert (=> b!867875 d!272514))

(declare-fun d!272516 () Bool)

(declare-fun res!395394 () Bool)

(declare-fun e!571325 () Bool)

(assert (=> d!272516 (=> (not res!395394) (not e!571325))))

(assert (=> d!272516 (= res!395394 (not (isEmpty!5582 (originalCharacters!2320 (h!14794 (t!98905 l!5107))))))))

(assert (=> d!272516 (= (inv!11927 (h!14794 (t!98905 l!5107))) e!571325)))

(declare-fun b!868089 () Bool)

(declare-fun res!395395 () Bool)

(assert (=> b!868089 (=> (not res!395395) (not e!571325))))

(assert (=> b!868089 (= res!395395 (= (originalCharacters!2320 (h!14794 (t!98905 l!5107))) (list!3705 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))) (value!56973 (h!14794 (t!98905 l!5107)))))))))

(declare-fun b!868090 () Bool)

(assert (=> b!868090 (= e!571325 (= (size!7817 (h!14794 (t!98905 l!5107))) (size!7820 (originalCharacters!2320 (h!14794 (t!98905 l!5107))))))))

(assert (= (and d!272516 res!395394) b!868089))

(assert (= (and b!868089 res!395395) b!868090))

(declare-fun b_lambda!29557 () Bool)

(assert (=> (not b_lambda!29557) (not b!868089)))

(declare-fun t!98988 () Bool)

(declare-fun tb!62763 () Bool)

(assert (=> (and b!867510 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107)))))) t!98988) tb!62763))

(declare-fun b!868091 () Bool)

(declare-fun e!571326 () Bool)

(declare-fun tp!274564 () Bool)

(assert (=> b!868091 (= e!571326 (and (inv!11930 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))) (value!56973 (h!14794 (t!98905 l!5107)))))) tp!274564))))

(declare-fun result!72596 () Bool)

(assert (=> tb!62763 (= result!72596 (and (inv!11931 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))) (value!56973 (h!14794 (t!98905 l!5107))))) e!571326))))

(assert (= tb!62763 b!868091))

(declare-fun m!1115553 () Bool)

(assert (=> b!868091 m!1115553))

(declare-fun m!1115555 () Bool)

(assert (=> tb!62763 m!1115555))

(assert (=> b!868089 t!98988))

(declare-fun b_and!77925 () Bool)

(assert (= b_and!77921 (and (=> t!98988 result!72596) b_and!77925)))

(declare-fun t!98990 () Bool)

(declare-fun tb!62765 () Bool)

(assert (=> (and b!867930 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 rules!2621)))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107)))))) t!98990) tb!62765))

(declare-fun result!72598 () Bool)

(assert (= result!72598 result!72596))

(assert (=> b!868089 t!98990))

(declare-fun b_and!77927 () Bool)

(assert (= b_and!77915 (and (=> t!98990 result!72598) b_and!77927)))

(declare-fun t!98992 () Bool)

(declare-fun tb!62767 () Bool)

(assert (=> (and b!867896 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107)))))) t!98992) tb!62767))

(declare-fun result!72600 () Bool)

(assert (= result!72600 result!72596))

(assert (=> b!868089 t!98992))

(declare-fun b_and!77929 () Bool)

(assert (= b_and!77917 (and (=> t!98992 result!72600) b_and!77929)))

(declare-fun t!98994 () Bool)

(declare-fun tb!62769 () Bool)

(assert (=> (and b!867508 (= (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107)))))) t!98994) tb!62769))

(declare-fun result!72602 () Bool)

(assert (= result!72602 result!72596))

(assert (=> b!868089 t!98994))

(declare-fun b_and!77931 () Bool)

(assert (= b_and!77919 (and (=> t!98994 result!72602) b_and!77931)))

(declare-fun t!98996 () Bool)

(declare-fun tb!62771 () Bool)

(assert (=> (and b!867500 (= (toChars!2692 (transformation!1764 (h!14793 rules!2621))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107)))))) t!98996) tb!62771))

(declare-fun result!72604 () Bool)

(assert (= result!72604 result!72596))

(assert (=> b!868089 t!98996))

(declare-fun b_and!77933 () Bool)

(assert (= b_and!77923 (and (=> t!98996 result!72604) b_and!77933)))

(declare-fun m!1115557 () Bool)

(assert (=> d!272516 m!1115557))

(declare-fun m!1115559 () Bool)

(assert (=> b!868089 m!1115559))

(assert (=> b!868089 m!1115559))

(declare-fun m!1115561 () Bool)

(assert (=> b!868089 m!1115561))

(declare-fun m!1115563 () Bool)

(assert (=> b!868090 m!1115563))

(assert (=> b!867893 d!272516))

(declare-fun d!272518 () Bool)

(declare-fun c!140323 () Bool)

(assert (=> d!272518 (= c!140323 ((_ is Cons!9393) ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 l!5107) separatorToken!297) separatorToken!297)))))

(declare-fun e!571327 () List!9407)

(assert (=> d!272518 (= (printList!504 thiss!20117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 l!5107) separatorToken!297) separatorToken!297)) e!571327)))

(declare-fun b!868092 () Bool)

(assert (=> b!868092 (= e!571327 (++!2434 (list!3705 (charsOf!1021 (h!14794 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 l!5107) separatorToken!297) separatorToken!297)))) (printList!504 thiss!20117 (t!98905 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 l!5107) separatorToken!297) separatorToken!297)))))))

(declare-fun b!868093 () Bool)

(assert (=> b!868093 (= e!571327 Nil!9391)))

(assert (= (and d!272518 c!140323) b!868092))

(assert (= (and d!272518 (not c!140323)) b!868093))

(declare-fun m!1115565 () Bool)

(assert (=> b!868092 m!1115565))

(assert (=> b!868092 m!1115565))

(declare-fun m!1115567 () Bool)

(assert (=> b!868092 m!1115567))

(declare-fun m!1115569 () Bool)

(assert (=> b!868092 m!1115569))

(assert (=> b!868092 m!1115567))

(assert (=> b!868092 m!1115569))

(declare-fun m!1115571 () Bool)

(assert (=> b!868092 m!1115571))

(assert (=> b!867836 d!272518))

(declare-fun d!272520 () Bool)

(assert (=> d!272520 (= ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 l!5107) separatorToken!297) separatorToken!297) (Cons!9393 separatorToken!297 (withSeparatorTokenList!94 thiss!20117 (t!98905 l!5107) separatorToken!297)))))

(assert (=> b!867836 d!272520))

(declare-fun b!868094 () Bool)

(declare-fun e!571329 () List!9407)

(declare-fun lt!327439 () List!9409)

(assert (=> b!868094 (= e!571329 (++!2434 (list!3705 (charsOf!1021 (h!14794 lt!327439))) (printList!504 thiss!20117 (t!98905 lt!327439))))))

(declare-fun b!868095 () Bool)

(declare-fun e!571332 () List!9407)

(assert (=> b!868095 (= e!571332 Nil!9391)))

(declare-fun lt!327435 () List!9409)

(declare-fun d!272522 () Bool)

(assert (=> d!272522 (= (printList!504 thiss!20117 lt!327435) (printWithSeparatorTokenList!62 thiss!20117 (t!98905 l!5107) separatorToken!297))))

(declare-fun e!571330 () List!9409)

(assert (=> d!272522 (= lt!327435 e!571330)))

(declare-fun c!140326 () Bool)

(assert (=> d!272522 (= c!140326 ((_ is Cons!9393) (t!98905 l!5107)))))

(declare-fun e!571328 () Bool)

(assert (=> d!272522 e!571328))

(declare-fun res!395399 () Bool)

(assert (=> d!272522 (=> (not res!395399) (not e!571328))))

(assert (=> d!272522 (= res!395399 (isSeparator!1764 (rule!3187 separatorToken!297)))))

(assert (=> d!272522 (= (withSeparatorTokenList!94 thiss!20117 (t!98905 l!5107) separatorToken!297) lt!327435)))

(declare-fun b!868096 () Bool)

(declare-fun e!571331 () Bool)

(assert (=> b!868096 (= e!571328 e!571331)))

(declare-fun res!395398 () Bool)

(assert (=> b!868096 (=> res!395398 e!571331)))

(assert (=> b!868096 (= res!395398 (not ((_ is Cons!9393) (t!98905 l!5107))))))

(declare-fun b!868097 () Bool)

(assert (=> b!868097 (= e!571330 Nil!9393)))

(declare-fun b!868098 () Bool)

(declare-fun e!571333 () Bool)

(assert (=> b!868098 (= e!571333 (= (printList!504 thiss!20117 ($colon$colon!117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 (t!98905 l!5107)) separatorToken!297) separatorToken!297) (h!14794 (t!98905 l!5107)))) e!571332))))

(declare-fun c!140324 () Bool)

(declare-fun lt!327434 () List!9409)

(assert (=> b!868098 (= c!140324 ((_ is Cons!9393) lt!327434))))

(assert (=> b!868098 (= lt!327434 ($colon$colon!117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 (t!98905 l!5107)) separatorToken!297) separatorToken!297) (h!14794 (t!98905 l!5107))))))

(declare-fun b!868099 () Bool)

(assert (=> b!868099 (= e!571332 (++!2434 (list!3705 (charsOf!1021 (h!14794 lt!327434))) (printList!504 thiss!20117 (t!98905 lt!327434))))))

(declare-fun b!868100 () Bool)

(assert (=> b!868100 (= e!571331 (= (printList!504 thiss!20117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 (t!98905 l!5107)) separatorToken!297) separatorToken!297)) e!571329))))

(declare-fun c!140325 () Bool)

(assert (=> b!868100 (= c!140325 ((_ is Cons!9393) lt!327439))))

(assert (=> b!868100 (= lt!327439 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 (t!98905 l!5107)) separatorToken!297) separatorToken!297))))

(declare-fun b!868101 () Bool)

(assert (=> b!868101 (= e!571330 ($colon$colon!117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 (t!98905 l!5107)) separatorToken!297) separatorToken!297) (h!14794 (t!98905 l!5107))))))

(declare-fun lt!327433 () List!9407)

(assert (=> b!868101 (= lt!327433 (list!3705 (charsOf!1021 (h!14794 (t!98905 l!5107)))))))

(declare-fun lt!327432 () List!9407)

(assert (=> b!868101 (= lt!327432 (list!3705 (charsOf!1021 separatorToken!297)))))

(declare-fun lt!327438 () List!9407)

(assert (=> b!868101 (= lt!327438 (printList!504 thiss!20117 (withSeparatorTokenList!94 thiss!20117 (t!98905 (t!98905 l!5107)) separatorToken!297)))))

(declare-fun lt!327437 () Unit!13907)

(assert (=> b!868101 (= lt!327437 (lemmaConcatAssociativity!781 lt!327433 lt!327432 lt!327438))))

(assert (=> b!868101 (= (++!2434 (++!2434 lt!327433 lt!327432) lt!327438) (++!2434 lt!327433 (++!2434 lt!327432 lt!327438)))))

(declare-fun lt!327436 () Unit!13907)

(assert (=> b!868101 (= lt!327436 lt!327437)))

(declare-fun b!868102 () Bool)

(declare-fun res!395397 () Bool)

(assert (=> b!868102 (=> (not res!395397) (not e!571328))))

(assert (=> b!868102 (= res!395397 e!571333)))

(declare-fun res!395396 () Bool)

(assert (=> b!868102 (=> res!395396 e!571333)))

(assert (=> b!868102 (= res!395396 (not ((_ is Cons!9393) (t!98905 l!5107))))))

(declare-fun b!868103 () Bool)

(assert (=> b!868103 (= e!571329 Nil!9391)))

(assert (= (and d!272522 res!395399) b!868102))

(assert (= (and b!868102 (not res!395396)) b!868098))

(assert (= (and b!868098 c!140324) b!868099))

(assert (= (and b!868098 (not c!140324)) b!868095))

(assert (= (and b!868102 res!395397) b!868096))

(assert (= (and b!868096 (not res!395398)) b!868100))

(assert (= (and b!868100 c!140325) b!868094))

(assert (= (and b!868100 (not c!140325)) b!868103))

(assert (= (and d!272522 c!140326) b!868101))

(assert (= (and d!272522 (not c!140326)) b!868097))

(declare-fun m!1115573 () Bool)

(assert (=> b!868094 m!1115573))

(assert (=> b!868094 m!1115573))

(declare-fun m!1115575 () Bool)

(assert (=> b!868094 m!1115575))

(declare-fun m!1115577 () Bool)

(assert (=> b!868094 m!1115577))

(assert (=> b!868094 m!1115575))

(assert (=> b!868094 m!1115577))

(declare-fun m!1115579 () Bool)

(assert (=> b!868094 m!1115579))

(declare-fun m!1115581 () Bool)

(assert (=> b!868100 m!1115581))

(assert (=> b!868100 m!1115581))

(declare-fun m!1115583 () Bool)

(assert (=> b!868100 m!1115583))

(assert (=> b!868100 m!1115583))

(declare-fun m!1115585 () Bool)

(assert (=> b!868100 m!1115585))

(declare-fun m!1115587 () Bool)

(assert (=> b!868101 m!1115587))

(assert (=> b!868101 m!1115583))

(declare-fun m!1115589 () Bool)

(assert (=> b!868101 m!1115589))

(declare-fun m!1115591 () Bool)

(assert (=> b!868101 m!1115591))

(declare-fun m!1115593 () Bool)

(assert (=> b!868101 m!1115593))

(declare-fun m!1115595 () Bool)

(assert (=> b!868101 m!1115595))

(assert (=> b!868101 m!1115581))

(declare-fun m!1115597 () Bool)

(assert (=> b!868101 m!1115597))

(assert (=> b!868101 m!1115581))

(assert (=> b!868101 m!1114943))

(assert (=> b!868101 m!1114945))

(declare-fun m!1115599 () Bool)

(assert (=> b!868101 m!1115599))

(assert (=> b!868101 m!1115587))

(declare-fun m!1115601 () Bool)

(assert (=> b!868101 m!1115601))

(assert (=> b!868101 m!1115591))

(declare-fun m!1115603 () Bool)

(assert (=> b!868101 m!1115603))

(assert (=> b!868101 m!1115593))

(assert (=> b!868101 m!1114943))

(assert (=> b!868101 m!1115581))

(assert (=> b!868101 m!1115583))

(declare-fun m!1115605 () Bool)

(assert (=> b!868099 m!1115605))

(assert (=> b!868099 m!1115605))

(declare-fun m!1115607 () Bool)

(assert (=> b!868099 m!1115607))

(declare-fun m!1115609 () Bool)

(assert (=> b!868099 m!1115609))

(assert (=> b!868099 m!1115607))

(assert (=> b!868099 m!1115609))

(declare-fun m!1115611 () Bool)

(assert (=> b!868099 m!1115611))

(assert (=> b!868098 m!1115581))

(assert (=> b!868098 m!1115581))

(assert (=> b!868098 m!1115583))

(assert (=> b!868098 m!1115583))

(assert (=> b!868098 m!1115589))

(assert (=> b!868098 m!1115589))

(declare-fun m!1115613 () Bool)

(assert (=> b!868098 m!1115613))

(declare-fun m!1115615 () Bool)

(assert (=> d!272522 m!1115615))

(declare-fun m!1115617 () Bool)

(assert (=> d!272522 m!1115617))

(assert (=> b!867836 d!272522))

(declare-fun lt!327442 () Bool)

(declare-fun d!272524 () Bool)

(assert (=> d!272524 (= lt!327442 (isEmpty!5582 (list!3705 (_2!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 (h!14794 (t!98905 lt!327189)))))))))))

(declare-fun isEmpty!5585 (Conc!3115) Bool)

(assert (=> d!272524 (= lt!327442 (isEmpty!5585 (c!140240 (_2!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 (h!14794 (t!98905 lt!327189)))))))))))

(assert (=> d!272524 (= (isEmpty!5583 (_2!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 (h!14794 (t!98905 lt!327189))))))) lt!327442)))

(declare-fun bs!232973 () Bool)

(assert (= bs!232973 d!272524))

(declare-fun m!1115619 () Bool)

(assert (=> bs!232973 m!1115619))

(assert (=> bs!232973 m!1115619))

(declare-fun m!1115621 () Bool)

(assert (=> bs!232973 m!1115621))

(declare-fun m!1115623 () Bool)

(assert (=> bs!232973 m!1115623))

(assert (=> b!867857 d!272524))

(declare-fun b!868149 () Bool)

(declare-fun e!571360 () Bool)

(declare-fun e!571362 () Bool)

(assert (=> b!868149 (= e!571360 e!571362)))

(declare-fun res!395435 () Bool)

(declare-fun lt!327492 () tuple2!10484)

(assert (=> b!868149 (= res!395435 (< (size!7822 (_2!6068 lt!327492)) (size!7822 (print!587 thiss!20117 (singletonSeq!587 (h!14794 (t!98905 lt!327189)))))))))

(assert (=> b!868149 (=> (not res!395435) (not e!571362))))

(declare-fun b!868150 () Bool)

(assert (=> b!868150 (= e!571360 (= (_2!6068 lt!327492) (print!587 thiss!20117 (singletonSeq!587 (h!14794 (t!98905 lt!327189))))))))

(declare-fun b!868151 () Bool)

(declare-fun res!395434 () Bool)

(declare-fun e!571361 () Bool)

(assert (=> b!868151 (=> (not res!395434) (not e!571361))))

(declare-datatypes ((tuple2!10488 0))(
  ( (tuple2!10489 (_1!6070 List!9409) (_2!6070 List!9407)) )
))
(declare-fun lexList!404 (LexerInterface!1566 List!9408 List!9407) tuple2!10488)

(assert (=> b!868151 (= res!395434 (= (list!3706 (_1!6068 lt!327492)) (_1!6070 (lexList!404 thiss!20117 rules!2621 (list!3705 (print!587 thiss!20117 (singletonSeq!587 (h!14794 (t!98905 lt!327189)))))))))))

(declare-fun d!272526 () Bool)

(assert (=> d!272526 e!571361))

(declare-fun res!395433 () Bool)

(assert (=> d!272526 (=> (not res!395433) (not e!571361))))

(assert (=> d!272526 (= res!395433 e!571360)))

(declare-fun c!140337 () Bool)

(assert (=> d!272526 (= c!140337 (> (size!7823 (_1!6068 lt!327492)) 0))))

(declare-fun lexTailRecV2!311 (LexerInterface!1566 List!9408 BalanceConc!6244 BalanceConc!6244 BalanceConc!6244 BalanceConc!6248) tuple2!10484)

(assert (=> d!272526 (= lt!327492 (lexTailRecV2!311 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 (h!14794 (t!98905 lt!327189)))) (BalanceConc!6245 Empty!3115) (print!587 thiss!20117 (singletonSeq!587 (h!14794 (t!98905 lt!327189)))) (BalanceConc!6249 Empty!3117)))))

(assert (=> d!272526 (= (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 (h!14794 (t!98905 lt!327189))))) lt!327492)))

(declare-fun b!868152 () Bool)

(assert (=> b!868152 (= e!571361 (= (list!3705 (_2!6068 lt!327492)) (_2!6070 (lexList!404 thiss!20117 rules!2621 (list!3705 (print!587 thiss!20117 (singletonSeq!587 (h!14794 (t!98905 lt!327189)))))))))))

(declare-fun b!868153 () Bool)

(declare-fun isEmpty!5586 (BalanceConc!6248) Bool)

(assert (=> b!868153 (= e!571362 (not (isEmpty!5586 (_1!6068 lt!327492))))))

(assert (= (and d!272526 c!140337) b!868149))

(assert (= (and d!272526 (not c!140337)) b!868150))

(assert (= (and b!868149 res!395435) b!868153))

(assert (= (and d!272526 res!395433) b!868151))

(assert (= (and b!868151 res!395434) b!868152))

(declare-fun m!1115727 () Bool)

(assert (=> b!868149 m!1115727))

(assert (=> b!868149 m!1114993))

(declare-fun m!1115729 () Bool)

(assert (=> b!868149 m!1115729))

(declare-fun m!1115731 () Bool)

(assert (=> d!272526 m!1115731))

(assert (=> d!272526 m!1114993))

(assert (=> d!272526 m!1114993))

(declare-fun m!1115733 () Bool)

(assert (=> d!272526 m!1115733))

(declare-fun m!1115735 () Bool)

(assert (=> b!868151 m!1115735))

(assert (=> b!868151 m!1114993))

(declare-fun m!1115737 () Bool)

(assert (=> b!868151 m!1115737))

(assert (=> b!868151 m!1115737))

(declare-fun m!1115739 () Bool)

(assert (=> b!868151 m!1115739))

(declare-fun m!1115741 () Bool)

(assert (=> b!868153 m!1115741))

(declare-fun m!1115743 () Bool)

(assert (=> b!868152 m!1115743))

(assert (=> b!868152 m!1114993))

(assert (=> b!868152 m!1115737))

(assert (=> b!868152 m!1115737))

(assert (=> b!868152 m!1115739))

(assert (=> b!867857 d!272526))

(declare-fun d!272544 () Bool)

(declare-fun lt!327502 () BalanceConc!6244)

(assert (=> d!272544 (= (list!3705 lt!327502) (printList!504 thiss!20117 (list!3706 (singletonSeq!587 (h!14794 (t!98905 lt!327189))))))))

(declare-fun printTailRec!486 (LexerInterface!1566 BalanceConc!6248 Int BalanceConc!6244) BalanceConc!6244)

(assert (=> d!272544 (= lt!327502 (printTailRec!486 thiss!20117 (singletonSeq!587 (h!14794 (t!98905 lt!327189))) 0 (BalanceConc!6245 Empty!3115)))))

(assert (=> d!272544 (= (print!587 thiss!20117 (singletonSeq!587 (h!14794 (t!98905 lt!327189)))) lt!327502)))

(declare-fun bs!232985 () Bool)

(assert (= bs!232985 d!272544))

(declare-fun m!1115787 () Bool)

(assert (=> bs!232985 m!1115787))

(assert (=> bs!232985 m!1114997))

(assert (=> bs!232985 m!1115003))

(assert (=> bs!232985 m!1115003))

(declare-fun m!1115789 () Bool)

(assert (=> bs!232985 m!1115789))

(assert (=> bs!232985 m!1114997))

(declare-fun m!1115791 () Bool)

(assert (=> bs!232985 m!1115791))

(assert (=> b!867857 d!272544))

(declare-fun d!272558 () Bool)

(declare-fun e!571388 () Bool)

(assert (=> d!272558 e!571388))

(declare-fun res!395453 () Bool)

(assert (=> d!272558 (=> (not res!395453) (not e!571388))))

(declare-fun lt!327511 () BalanceConc!6248)

(assert (=> d!272558 (= res!395453 (= (list!3706 lt!327511) (Cons!9393 (h!14794 (t!98905 lt!327189)) Nil!9393)))))

(declare-fun singleton!281 (Token!3194) BalanceConc!6248)

(assert (=> d!272558 (= lt!327511 (singleton!281 (h!14794 (t!98905 lt!327189))))))

(assert (=> d!272558 (= (singletonSeq!587 (h!14794 (t!98905 lt!327189))) lt!327511)))

(declare-fun b!868188 () Bool)

(declare-fun isBalanced!864 (Conc!3117) Bool)

(assert (=> b!868188 (= e!571388 (isBalanced!864 (c!140282 lt!327511)))))

(assert (= (and d!272558 res!395453) b!868188))

(declare-fun m!1115805 () Bool)

(assert (=> d!272558 m!1115805))

(declare-fun m!1115807 () Bool)

(assert (=> d!272558 m!1115807))

(declare-fun m!1115809 () Bool)

(assert (=> b!868188 m!1115809))

(assert (=> b!867857 d!272558))

(declare-fun d!272566 () Bool)

(declare-fun charsToBigInt!0 (List!9406 Int) Int)

(assert (=> d!272566 (= (inv!15 (value!56973 (h!14794 l!5107))) (= (charsToBigInt!0 (text!13259 (value!56973 (h!14794 l!5107))) 0) (value!56968 (value!56973 (h!14794 l!5107)))))))

(declare-fun bs!232987 () Bool)

(assert (= bs!232987 d!272566))

(declare-fun m!1115829 () Bool)

(assert (=> bs!232987 m!1115829))

(assert (=> b!867882 d!272566))

(declare-fun d!272570 () Bool)

(assert (=> d!272570 (= (inv!11923 (tag!2026 (rule!3187 (h!14794 (t!98905 l!5107))))) (= (mod (str.len (value!56972 (tag!2026 (rule!3187 (h!14794 (t!98905 l!5107)))))) 2) 0))))

(assert (=> b!867895 d!272570))

(declare-fun d!272572 () Bool)

(declare-fun res!395454 () Bool)

(declare-fun e!571389 () Bool)

(assert (=> d!272572 (=> (not res!395454) (not e!571389))))

(assert (=> d!272572 (= res!395454 (semiInverseModEq!702 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))) (toValue!2833 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107)))))))))

(assert (=> d!272572 (= (inv!11926 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))) e!571389)))

(declare-fun b!868189 () Bool)

(assert (=> b!868189 (= e!571389 (equivClasses!669 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))) (toValue!2833 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107)))))))))

(assert (= (and d!272572 res!395454) b!868189))

(declare-fun m!1115831 () Bool)

(assert (=> d!272572 m!1115831))

(declare-fun m!1115833 () Bool)

(assert (=> b!868189 m!1115833))

(assert (=> b!867895 d!272572))

(declare-fun d!272574 () Bool)

(declare-fun res!395455 () Bool)

(declare-fun e!571390 () Bool)

(assert (=> d!272574 (=> res!395455 e!571390)))

(assert (=> d!272574 (= res!395455 ((_ is Nil!9393) l!5107))))

(assert (=> d!272574 (= (forall!2231 l!5107 lambda!26042) e!571390)))

(declare-fun b!868190 () Bool)

(declare-fun e!571391 () Bool)

(assert (=> b!868190 (= e!571390 e!571391)))

(declare-fun res!395456 () Bool)

(assert (=> b!868190 (=> (not res!395456) (not e!571391))))

(assert (=> b!868190 (= res!395456 (dynLambda!4474 lambda!26042 (h!14794 l!5107)))))

(declare-fun b!868191 () Bool)

(assert (=> b!868191 (= e!571391 (forall!2231 (t!98905 l!5107) lambda!26042))))

(assert (= (and d!272574 (not res!395455)) b!868190))

(assert (= (and b!868190 res!395456) b!868191))

(declare-fun b_lambda!29563 () Bool)

(assert (=> (not b_lambda!29563) (not b!868190)))

(declare-fun m!1115835 () Bool)

(assert (=> b!868190 m!1115835))

(declare-fun m!1115837 () Bool)

(assert (=> b!868191 m!1115837))

(assert (=> d!272280 d!272574))

(assert (=> d!272280 d!272366))

(declare-fun d!272576 () Bool)

(declare-fun charsToInt!0 (List!9406) (_ BitVec 32))

(assert (=> d!272576 (= (inv!16 (value!56973 separatorToken!297)) (= (charsToInt!0 (text!13257 (value!56973 separatorToken!297))) (value!56964 (value!56973 separatorToken!297))))))

(declare-fun bs!232988 () Bool)

(assert (= bs!232988 d!272576))

(declare-fun m!1115839 () Bool)

(assert (=> bs!232988 m!1115839))

(assert (=> b!867674 d!272576))

(declare-fun bs!232989 () Bool)

(declare-fun d!272578 () Bool)

(assert (= bs!232989 (and d!272578 b!867501)))

(declare-fun lambda!26061 () Int)

(assert (=> bs!232989 (not (= lambda!26061 lambda!26036))))

(declare-fun bs!232990 () Bool)

(assert (= bs!232990 (and d!272578 d!272280)))

(assert (=> bs!232990 (= lambda!26061 lambda!26042)))

(declare-fun bs!232991 () Bool)

(assert (= bs!232991 (and d!272578 d!272356)))

(assert (=> bs!232991 (= lambda!26061 lambda!26045)))

(declare-fun bs!232992 () Bool)

(assert (= bs!232992 (and d!272578 d!272358)))

(assert (=> bs!232992 (= lambda!26061 lambda!26046)))

(declare-fun b!868198 () Bool)

(declare-fun e!571398 () Bool)

(assert (=> b!868198 (= e!571398 true)))

(declare-fun b!868197 () Bool)

(declare-fun e!571397 () Bool)

(assert (=> b!868197 (= e!571397 e!571398)))

(declare-fun b!868196 () Bool)

(declare-fun e!571396 () Bool)

(assert (=> b!868196 (= e!571396 e!571397)))

(assert (=> d!272578 e!571396))

(assert (= b!868197 b!868198))

(assert (= b!868196 b!868197))

(assert (= (and d!272578 ((_ is Cons!9392) rules!2621)) b!868196))

(assert (=> b!868198 (< (dynLambda!4471 order!6143 (toValue!2833 (transformation!1764 (h!14793 rules!2621)))) (dynLambda!4472 order!6145 lambda!26061))))

(assert (=> b!868198 (< (dynLambda!4473 order!6147 (toChars!2692 (transformation!1764 (h!14793 rules!2621)))) (dynLambda!4472 order!6145 lambda!26061))))

(assert (=> d!272578 true))

(declare-fun lt!327512 () Bool)

(assert (=> d!272578 (= lt!327512 (forall!2231 (t!98905 l!5107) lambda!26061))))

(declare-fun e!571394 () Bool)

(assert (=> d!272578 (= lt!327512 e!571394)))

(declare-fun res!395459 () Bool)

(assert (=> d!272578 (=> res!395459 e!571394)))

(assert (=> d!272578 (= res!395459 (not ((_ is Cons!9393) (t!98905 l!5107))))))

(assert (=> d!272578 (not (isEmpty!5578 rules!2621))))

(assert (=> d!272578 (= (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 (t!98905 l!5107)) lt!327512)))

(declare-fun b!868194 () Bool)

(declare-fun e!571395 () Bool)

(assert (=> b!868194 (= e!571394 e!571395)))

(declare-fun res!395460 () Bool)

(assert (=> b!868194 (=> (not res!395460) (not e!571395))))

(assert (=> b!868194 (= res!395460 (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 (t!98905 l!5107))))))

(declare-fun b!868195 () Bool)

(assert (=> b!868195 (= e!571395 (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 (t!98905 (t!98905 l!5107))))))

(assert (= (and d!272578 (not res!395459)) b!868194))

(assert (= (and b!868194 res!395460) b!868195))

(declare-fun m!1115843 () Bool)

(assert (=> d!272578 m!1115843))

(assert (=> d!272578 m!1114527))

(declare-fun m!1115845 () Bool)

(assert (=> b!868194 m!1115845))

(declare-fun m!1115847 () Bool)

(assert (=> b!868195 m!1115847))

(assert (=> b!867593 d!272578))

(declare-fun d!272582 () Bool)

(assert (=> d!272582 (tokensListTwoByTwoPredicateSeparableList!60 thiss!20117 (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297) rules!2621)))

(declare-fun lt!327527 () Unit!13907)

(declare-fun lt!327528 () Unit!13907)

(assert (=> d!272582 (= lt!327527 lt!327528)))

(assert (=> d!272582 (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297))))

(assert (=> d!272582 (= lt!327528 (withSeparatorTokenListPreservesRulesProduceTokens!94 thiss!20117 rules!2621 lt!327188 separatorToken!297))))

(assert (=> d!272582 true))

(declare-fun _$39!229 () Unit!13907)

(assert (=> d!272582 (= (choose!5106 thiss!20117 rules!2621 lt!327188 separatorToken!297) _$39!229)))

(declare-fun bs!233004 () Bool)

(assert (= bs!233004 d!272582))

(assert (=> bs!233004 m!1114491))

(assert (=> bs!233004 m!1114491))

(assert (=> bs!233004 m!1114903))

(assert (=> bs!233004 m!1114491))

(assert (=> bs!233004 m!1114857))

(assert (=> bs!233004 m!1114543))

(assert (=> d!272348 d!272582))

(assert (=> d!272348 d!272366))

(declare-fun b!868237 () Bool)

(declare-fun e!571430 () Bool)

(declare-fun e!571429 () Bool)

(assert (=> b!868237 (= e!571430 e!571429)))

(declare-fun res!395485 () Bool)

(assert (=> b!868237 (= res!395485 (not ((_ is Cons!9392) rules!2621)))))

(assert (=> b!868237 (=> res!395485 e!571429)))

(declare-fun b!868238 () Bool)

(declare-fun e!571431 () Bool)

(assert (=> b!868238 (= e!571430 e!571431)))

(declare-fun res!395486 () Bool)

(declare-fun rulesUseDisjointChars!133 (Rule!3328 Rule!3328) Bool)

(assert (=> b!868238 (= res!395486 (rulesUseDisjointChars!133 (h!14793 rules!2621) (h!14793 rules!2621)))))

(assert (=> b!868238 (=> (not res!395486) (not e!571431))))

(declare-fun b!868239 () Bool)

(declare-fun call!50569 () Bool)

(assert (=> b!868239 (= e!571431 call!50569)))

(declare-fun b!868240 () Bool)

(assert (=> b!868240 (= e!571429 call!50569)))

(declare-fun bm!50564 () Bool)

(assert (=> bm!50564 (= call!50569 (ruleDisjointCharsFromAllFromOtherType!269 (h!14793 rules!2621) (t!98904 rules!2621)))))

(declare-fun d!272600 () Bool)

(declare-fun c!140349 () Bool)

(assert (=> d!272600 (= c!140349 (and ((_ is Cons!9392) rules!2621) (not (= (isSeparator!1764 (h!14793 rules!2621)) (isSeparator!1764 (h!14793 rules!2621))))))))

(assert (=> d!272600 (= (ruleDisjointCharsFromAllFromOtherType!269 (h!14793 rules!2621) rules!2621) e!571430)))

(assert (= (and d!272600 c!140349) b!868238))

(assert (= (and d!272600 (not c!140349)) b!868237))

(assert (= (and b!868238 res!395486) b!868239))

(assert (= (and b!868237 (not res!395485)) b!868240))

(assert (= (or b!868239 b!868240) bm!50564))

(declare-fun m!1115957 () Bool)

(assert (=> b!868238 m!1115957))

(declare-fun m!1115961 () Bool)

(assert (=> bm!50564 m!1115961))

(assert (=> b!867661 d!272600))

(declare-fun d!272628 () Bool)

(declare-fun c!140355 () Bool)

(assert (=> d!272628 (= c!140355 ((_ is Node!3115) (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (value!56973 separatorToken!297)))))))

(declare-fun e!571439 () Bool)

(assert (=> d!272628 (= (inv!11930 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (value!56973 separatorToken!297)))) e!571439)))

(declare-fun b!868253 () Bool)

(declare-fun inv!11934 (Conc!3115) Bool)

(assert (=> b!868253 (= e!571439 (inv!11934 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (value!56973 separatorToken!297)))))))

(declare-fun b!868254 () Bool)

(declare-fun e!571440 () Bool)

(assert (=> b!868254 (= e!571439 e!571440)))

(declare-fun res!395489 () Bool)

(assert (=> b!868254 (= res!395489 (not ((_ is Leaf!4585) (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (value!56973 separatorToken!297))))))))

(assert (=> b!868254 (=> res!395489 e!571440)))

(declare-fun b!868255 () Bool)

(declare-fun inv!11935 (Conc!3115) Bool)

(assert (=> b!868255 (= e!571440 (inv!11935 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (value!56973 separatorToken!297)))))))

(assert (= (and d!272628 c!140355) b!868253))

(assert (= (and d!272628 (not c!140355)) b!868254))

(assert (= (and b!868254 (not res!395489)) b!868255))

(declare-fun m!1115993 () Bool)

(assert (=> b!868253 m!1115993))

(declare-fun m!1115995 () Bool)

(assert (=> b!868255 m!1115995))

(assert (=> b!867860 d!272628))

(declare-fun d!272642 () Bool)

(declare-fun res!395490 () Bool)

(declare-fun e!571441 () Bool)

(assert (=> d!272642 (=> res!395490 e!571441)))

(assert (=> d!272642 (= res!395490 ((_ is Nil!9393) lt!327185))))

(assert (=> d!272642 (= (forall!2231 lt!327185 lambda!26045) e!571441)))

(declare-fun b!868256 () Bool)

(declare-fun e!571442 () Bool)

(assert (=> b!868256 (= e!571441 e!571442)))

(declare-fun res!395491 () Bool)

(assert (=> b!868256 (=> (not res!395491) (not e!571442))))

(assert (=> b!868256 (= res!395491 (dynLambda!4474 lambda!26045 (h!14794 lt!327185)))))

(declare-fun b!868257 () Bool)

(assert (=> b!868257 (= e!571442 (forall!2231 (t!98905 lt!327185) lambda!26045))))

(assert (= (and d!272642 (not res!395490)) b!868256))

(assert (= (and b!868256 res!395491) b!868257))

(declare-fun b_lambda!29569 () Bool)

(assert (=> (not b_lambda!29569) (not b!868256)))

(declare-fun m!1115997 () Bool)

(assert (=> b!868256 m!1115997))

(declare-fun m!1115999 () Bool)

(assert (=> b!868257 m!1115999))

(assert (=> d!272356 d!272642))

(assert (=> d!272356 d!272366))

(declare-fun d!272646 () Bool)

(assert (=> d!272646 (= (inv!11923 (tag!2026 (h!14793 (t!98904 rules!2621)))) (= (mod (str.len (value!56972 (tag!2026 (h!14793 (t!98904 rules!2621))))) 2) 0))))

(assert (=> b!867929 d!272646))

(declare-fun d!272648 () Bool)

(declare-fun res!395494 () Bool)

(declare-fun e!571445 () Bool)

(assert (=> d!272648 (=> (not res!395494) (not e!571445))))

(assert (=> d!272648 (= res!395494 (semiInverseModEq!702 (toChars!2692 (transformation!1764 (h!14793 (t!98904 rules!2621)))) (toValue!2833 (transformation!1764 (h!14793 (t!98904 rules!2621))))))))

(assert (=> d!272648 (= (inv!11926 (transformation!1764 (h!14793 (t!98904 rules!2621)))) e!571445)))

(declare-fun b!868260 () Bool)

(assert (=> b!868260 (= e!571445 (equivClasses!669 (toChars!2692 (transformation!1764 (h!14793 (t!98904 rules!2621)))) (toValue!2833 (transformation!1764 (h!14793 (t!98904 rules!2621))))))))

(assert (= (and d!272648 res!395494) b!868260))

(declare-fun m!1116005 () Bool)

(assert (=> d!272648 m!1116005))

(declare-fun m!1116007 () Bool)

(assert (=> b!868260 m!1116007))

(assert (=> b!867929 d!272648))

(declare-fun d!272652 () Bool)

(declare-fun lt!327538 () Int)

(assert (=> d!272652 (= lt!327538 (size!7820 (list!3705 (charsOf!1021 (h!14794 (t!98905 lt!327185))))))))

(declare-fun size!7826 (Conc!3115) Int)

(assert (=> d!272652 (= lt!327538 (size!7826 (c!140240 (charsOf!1021 (h!14794 (t!98905 lt!327185))))))))

(assert (=> d!272652 (= (size!7822 (charsOf!1021 (h!14794 (t!98905 lt!327185)))) lt!327538)))

(declare-fun bs!233016 () Bool)

(assert (= bs!233016 d!272652))

(assert (=> bs!233016 m!1114735))

(declare-fun m!1116033 () Bool)

(assert (=> bs!233016 m!1116033))

(assert (=> bs!233016 m!1116033))

(declare-fun m!1116035 () Bool)

(assert (=> bs!233016 m!1116035))

(declare-fun m!1116037 () Bool)

(assert (=> bs!233016 m!1116037))

(assert (=> b!867655 d!272652))

(declare-fun d!272660 () Bool)

(assert (=> d!272660 (= (separableTokensPredicate!84 thiss!20117 (h!14794 lt!327185) (h!14794 (t!98905 lt!327185)) rules!2621) (not (prefixMatchZipperSequence!53 (rulesRegex!38 thiss!20117 rules!2621) (++!2433 (charsOf!1021 (h!14794 lt!327185)) (singletonSeq!586 (apply!1978 (charsOf!1021 (h!14794 (t!98905 lt!327185))) 0))))))))

(declare-fun bs!233017 () Bool)

(assert (= bs!233017 d!272660))

(assert (=> bs!233017 m!1114757))

(declare-fun m!1116047 () Bool)

(assert (=> bs!233017 m!1116047))

(assert (=> bs!233017 m!1114757))

(declare-fun m!1116049 () Bool)

(assert (=> bs!233017 m!1116049))

(declare-fun m!1116051 () Bool)

(assert (=> bs!233017 m!1116051))

(assert (=> bs!233017 m!1114735))

(declare-fun m!1116053 () Bool)

(assert (=> bs!233017 m!1116053))

(declare-fun m!1116055 () Bool)

(assert (=> bs!233017 m!1116055))

(assert (=> bs!233017 m!1116047))

(assert (=> bs!233017 m!1116055))

(assert (=> bs!233017 m!1116049))

(assert (=> bs!233017 m!1114735))

(assert (=> bs!233017 m!1116053))

(assert (=> b!867655 d!272660))

(declare-fun d!272664 () Bool)

(assert (=> d!272664 (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 (t!98905 lt!327185)))))

(declare-fun lt!327554 () Unit!13907)

(declare-fun choose!5109 (LexerInterface!1566 List!9408 List!9409 Token!3194) Unit!13907)

(assert (=> d!272664 (= lt!327554 (choose!5109 thiss!20117 rules!2621 lt!327185 (h!14794 (t!98905 lt!327185))))))

(assert (=> d!272664 (not (isEmpty!5578 rules!2621))))

(assert (=> d!272664 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!242 thiss!20117 rules!2621 lt!327185 (h!14794 (t!98905 lt!327185))) lt!327554)))

(declare-fun bs!233035 () Bool)

(assert (= bs!233035 d!272664))

(assert (=> bs!233035 m!1114739))

(declare-fun m!1116101 () Bool)

(assert (=> bs!233035 m!1116101))

(assert (=> bs!233035 m!1114527))

(assert (=> b!867655 d!272664))

(declare-fun d!272682 () Bool)

(assert (=> d!272682 (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 lt!327185))))

(declare-fun lt!327555 () Unit!13907)

(assert (=> d!272682 (= lt!327555 (choose!5109 thiss!20117 rules!2621 lt!327185 (h!14794 lt!327185)))))

(assert (=> d!272682 (not (isEmpty!5578 rules!2621))))

(assert (=> d!272682 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!242 thiss!20117 rules!2621 lt!327185 (h!14794 lt!327185)) lt!327555)))

(declare-fun bs!233036 () Bool)

(assert (= bs!233036 d!272682))

(assert (=> bs!233036 m!1114741))

(declare-fun m!1116103 () Bool)

(assert (=> bs!233036 m!1116103))

(assert (=> bs!233036 m!1114527))

(assert (=> b!867655 d!272682))

(declare-fun d!272684 () Bool)

(declare-fun lt!327556 () BalanceConc!6244)

(assert (=> d!272684 (= (list!3705 lt!327556) (originalCharacters!2320 (h!14794 (t!98905 lt!327185))))))

(assert (=> d!272684 (= lt!327556 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 lt!327185))))) (value!56973 (h!14794 (t!98905 lt!327185)))))))

(assert (=> d!272684 (= (charsOf!1021 (h!14794 (t!98905 lt!327185))) lt!327556)))

(declare-fun b_lambda!29577 () Bool)

(assert (=> (not b_lambda!29577) (not d!272684)))

(declare-fun t!99041 () Bool)

(declare-fun tb!62813 () Bool)

(assert (=> (and b!867500 (= (toChars!2692 (transformation!1764 (h!14793 rules!2621))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 lt!327185)))))) t!99041) tb!62813))

(declare-fun b!868285 () Bool)

(declare-fun e!571465 () Bool)

(declare-fun tp!274569 () Bool)

(assert (=> b!868285 (= e!571465 (and (inv!11930 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 lt!327185))))) (value!56973 (h!14794 (t!98905 lt!327185)))))) tp!274569))))

(declare-fun result!72646 () Bool)

(assert (=> tb!62813 (= result!72646 (and (inv!11931 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 lt!327185))))) (value!56973 (h!14794 (t!98905 lt!327185))))) e!571465))))

(assert (= tb!62813 b!868285))

(declare-fun m!1116105 () Bool)

(assert (=> b!868285 m!1116105))

(declare-fun m!1116107 () Bool)

(assert (=> tb!62813 m!1116107))

(assert (=> d!272684 t!99041))

(declare-fun b_and!77975 () Bool)

(assert (= b_and!77933 (and (=> t!99041 result!72646) b_and!77975)))

(declare-fun tb!62815 () Bool)

(declare-fun t!99043 () Bool)

(assert (=> (and b!867508 (= (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 lt!327185)))))) t!99043) tb!62815))

(declare-fun result!72648 () Bool)

(assert (= result!72648 result!72646))

(assert (=> d!272684 t!99043))

(declare-fun b_and!77977 () Bool)

(assert (= b_and!77931 (and (=> t!99043 result!72648) b_and!77977)))

(declare-fun t!99045 () Bool)

(declare-fun tb!62817 () Bool)

(assert (=> (and b!867930 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 rules!2621)))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 lt!327185)))))) t!99045) tb!62817))

(declare-fun result!72650 () Bool)

(assert (= result!72650 result!72646))

(assert (=> d!272684 t!99045))

(declare-fun b_and!77979 () Bool)

(assert (= b_and!77927 (and (=> t!99045 result!72650) b_and!77979)))

(declare-fun tb!62819 () Bool)

(declare-fun t!99047 () Bool)

(assert (=> (and b!867510 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 lt!327185)))))) t!99047) tb!62819))

(declare-fun result!72652 () Bool)

(assert (= result!72652 result!72646))

(assert (=> d!272684 t!99047))

(declare-fun b_and!77981 () Bool)

(assert (= b_and!77925 (and (=> t!99047 result!72652) b_and!77981)))

(declare-fun t!99049 () Bool)

(declare-fun tb!62821 () Bool)

(assert (=> (and b!867896 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 lt!327185)))))) t!99049) tb!62821))

(declare-fun result!72654 () Bool)

(assert (= result!72654 result!72646))

(assert (=> d!272684 t!99049))

(declare-fun b_and!77983 () Bool)

(assert (= b_and!77929 (and (=> t!99049 result!72654) b_and!77983)))

(declare-fun m!1116109 () Bool)

(assert (=> d!272684 m!1116109))

(declare-fun m!1116111 () Bool)

(assert (=> d!272684 m!1116111))

(assert (=> b!867655 d!272684))

(declare-fun d!272686 () Bool)

(declare-fun lt!327558 () Bool)

(declare-fun e!571467 () Bool)

(assert (=> d!272686 (= lt!327558 e!571467)))

(declare-fun res!395507 () Bool)

(assert (=> d!272686 (=> (not res!395507) (not e!571467))))

(assert (=> d!272686 (= res!395507 (= (list!3706 (_1!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 (h!14794 lt!327185)))))) (list!3706 (singletonSeq!587 (h!14794 lt!327185)))))))

(declare-fun e!571466 () Bool)

(assert (=> d!272686 (= lt!327558 e!571466)))

(declare-fun res!395506 () Bool)

(assert (=> d!272686 (=> (not res!395506) (not e!571466))))

(declare-fun lt!327557 () tuple2!10484)

(assert (=> d!272686 (= res!395506 (= (size!7823 (_1!6068 lt!327557)) 1))))

(assert (=> d!272686 (= lt!327557 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 (h!14794 lt!327185)))))))

(assert (=> d!272686 (not (isEmpty!5578 rules!2621))))

(assert (=> d!272686 (= (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 lt!327185)) lt!327558)))

(declare-fun b!868286 () Bool)

(declare-fun res!395508 () Bool)

(assert (=> b!868286 (=> (not res!395508) (not e!571466))))

(assert (=> b!868286 (= res!395508 (= (apply!1979 (_1!6068 lt!327557) 0) (h!14794 lt!327185)))))

(declare-fun b!868287 () Bool)

(assert (=> b!868287 (= e!571466 (isEmpty!5583 (_2!6068 lt!327557)))))

(declare-fun b!868288 () Bool)

(assert (=> b!868288 (= e!571467 (isEmpty!5583 (_2!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 (h!14794 lt!327185)))))))))

(assert (= (and d!272686 res!395506) b!868286))

(assert (= (and b!868286 res!395508) b!868287))

(assert (= (and d!272686 res!395507) b!868288))

(declare-fun m!1116113 () Bool)

(assert (=> d!272686 m!1116113))

(declare-fun m!1116115 () Bool)

(assert (=> d!272686 m!1116115))

(declare-fun m!1116117 () Bool)

(assert (=> d!272686 m!1116117))

(declare-fun m!1116119 () Bool)

(assert (=> d!272686 m!1116119))

(declare-fun m!1116121 () Bool)

(assert (=> d!272686 m!1116121))

(assert (=> d!272686 m!1114527))

(assert (=> d!272686 m!1116117))

(declare-fun m!1116123 () Bool)

(assert (=> d!272686 m!1116123))

(assert (=> d!272686 m!1116117))

(assert (=> d!272686 m!1116113))

(declare-fun m!1116125 () Bool)

(assert (=> b!868286 m!1116125))

(declare-fun m!1116127 () Bool)

(assert (=> b!868287 m!1116127))

(assert (=> b!868288 m!1116117))

(assert (=> b!868288 m!1116117))

(assert (=> b!868288 m!1116113))

(assert (=> b!868288 m!1116113))

(assert (=> b!868288 m!1116115))

(declare-fun m!1116129 () Bool)

(assert (=> b!868288 m!1116129))

(assert (=> b!867655 d!272686))

(declare-fun d!272688 () Bool)

(declare-fun lt!327560 () Bool)

(declare-fun e!571469 () Bool)

(assert (=> d!272688 (= lt!327560 e!571469)))

(declare-fun res!395510 () Bool)

(assert (=> d!272688 (=> (not res!395510) (not e!571469))))

(assert (=> d!272688 (= res!395510 (= (list!3706 (_1!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 (h!14794 (t!98905 lt!327185))))))) (list!3706 (singletonSeq!587 (h!14794 (t!98905 lt!327185))))))))

(declare-fun e!571468 () Bool)

(assert (=> d!272688 (= lt!327560 e!571468)))

(declare-fun res!395509 () Bool)

(assert (=> d!272688 (=> (not res!395509) (not e!571468))))

(declare-fun lt!327559 () tuple2!10484)

(assert (=> d!272688 (= res!395509 (= (size!7823 (_1!6068 lt!327559)) 1))))

(assert (=> d!272688 (= lt!327559 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 (h!14794 (t!98905 lt!327185))))))))

(assert (=> d!272688 (not (isEmpty!5578 rules!2621))))

(assert (=> d!272688 (= (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 (t!98905 lt!327185))) lt!327560)))

(declare-fun b!868289 () Bool)

(declare-fun res!395511 () Bool)

(assert (=> b!868289 (=> (not res!395511) (not e!571468))))

(assert (=> b!868289 (= res!395511 (= (apply!1979 (_1!6068 lt!327559) 0) (h!14794 (t!98905 lt!327185))))))

(declare-fun b!868290 () Bool)

(assert (=> b!868290 (= e!571468 (isEmpty!5583 (_2!6068 lt!327559)))))

(declare-fun b!868291 () Bool)

(assert (=> b!868291 (= e!571469 (isEmpty!5583 (_2!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 (h!14794 (t!98905 lt!327185))))))))))

(assert (= (and d!272688 res!395509) b!868289))

(assert (= (and b!868289 res!395511) b!868290))

(assert (= (and d!272688 res!395510) b!868291))

(declare-fun m!1116131 () Bool)

(assert (=> d!272688 m!1116131))

(declare-fun m!1116133 () Bool)

(assert (=> d!272688 m!1116133))

(declare-fun m!1116135 () Bool)

(assert (=> d!272688 m!1116135))

(declare-fun m!1116137 () Bool)

(assert (=> d!272688 m!1116137))

(declare-fun m!1116139 () Bool)

(assert (=> d!272688 m!1116139))

(assert (=> d!272688 m!1114527))

(assert (=> d!272688 m!1116135))

(declare-fun m!1116141 () Bool)

(assert (=> d!272688 m!1116141))

(assert (=> d!272688 m!1116135))

(assert (=> d!272688 m!1116131))

(declare-fun m!1116143 () Bool)

(assert (=> b!868289 m!1116143))

(declare-fun m!1116145 () Bool)

(assert (=> b!868290 m!1116145))

(assert (=> b!868291 m!1116135))

(assert (=> b!868291 m!1116135))

(assert (=> b!868291 m!1116131))

(assert (=> b!868291 m!1116131))

(assert (=> b!868291 m!1116133))

(declare-fun m!1116147 () Bool)

(assert (=> b!868291 m!1116147))

(assert (=> b!867655 d!272688))

(declare-fun d!272690 () Bool)

(declare-fun res!395512 () Bool)

(declare-fun e!571470 () Bool)

(assert (=> d!272690 (=> res!395512 e!571470)))

(assert (=> d!272690 (= res!395512 ((_ is Nil!9393) lt!327189))))

(assert (=> d!272690 (= (forall!2231 lt!327189 lambda!26046) e!571470)))

(declare-fun b!868292 () Bool)

(declare-fun e!571471 () Bool)

(assert (=> b!868292 (= e!571470 e!571471)))

(declare-fun res!395513 () Bool)

(assert (=> b!868292 (=> (not res!395513) (not e!571471))))

(assert (=> b!868292 (= res!395513 (dynLambda!4474 lambda!26046 (h!14794 lt!327189)))))

(declare-fun b!868293 () Bool)

(assert (=> b!868293 (= e!571471 (forall!2231 (t!98905 lt!327189) lambda!26046))))

(assert (= (and d!272690 (not res!395512)) b!868292))

(assert (= (and b!868292 res!395513) b!868293))

(declare-fun b_lambda!29579 () Bool)

(assert (=> (not b_lambda!29579) (not b!868292)))

(declare-fun m!1116149 () Bool)

(assert (=> b!868292 m!1116149))

(declare-fun m!1116151 () Bool)

(assert (=> b!868293 m!1116151))

(assert (=> d!272358 d!272690))

(assert (=> d!272358 d!272366))

(declare-fun d!272692 () Bool)

(assert (=> d!272692 (= (list!3705 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (value!56973 separatorToken!297))) (list!3708 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (value!56973 separatorToken!297)))))))

(declare-fun bs!233037 () Bool)

(assert (= bs!233037 d!272692))

(declare-fun m!1116153 () Bool)

(assert (=> bs!233037 m!1116153))

(assert (=> b!867858 d!272692))

(declare-fun d!272694 () Bool)

(declare-fun lt!327561 () Bool)

(assert (=> d!272694 (= lt!327561 (isEmpty!5582 (list!3705 (_2!6068 lt!327346))))))

(assert (=> d!272694 (= lt!327561 (isEmpty!5585 (c!140240 (_2!6068 lt!327346))))))

(assert (=> d!272694 (= (isEmpty!5583 (_2!6068 lt!327346)) lt!327561)))

(declare-fun bs!233038 () Bool)

(assert (= bs!233038 d!272694))

(declare-fun m!1116155 () Bool)

(assert (=> bs!233038 m!1116155))

(assert (=> bs!233038 m!1116155))

(declare-fun m!1116157 () Bool)

(assert (=> bs!233038 m!1116157))

(declare-fun m!1116159 () Bool)

(assert (=> bs!233038 m!1116159))

(assert (=> b!867853 d!272694))

(declare-fun bs!233039 () Bool)

(declare-fun d!272696 () Bool)

(assert (= bs!233039 (and d!272696 d!272358)))

(declare-fun lambda!26070 () Int)

(assert (=> bs!233039 (= lambda!26070 lambda!26046)))

(declare-fun bs!233040 () Bool)

(assert (= bs!233040 (and d!272696 b!867501)))

(assert (=> bs!233040 (not (= lambda!26070 lambda!26036))))

(declare-fun bs!233041 () Bool)

(assert (= bs!233041 (and d!272696 d!272356)))

(assert (=> bs!233041 (= lambda!26070 lambda!26045)))

(declare-fun bs!233042 () Bool)

(assert (= bs!233042 (and d!272696 d!272578)))

(assert (=> bs!233042 (= lambda!26070 lambda!26061)))

(declare-fun bs!233043 () Bool)

(assert (= bs!233043 (and d!272696 d!272280)))

(assert (=> bs!233043 (= lambda!26070 lambda!26042)))

(declare-fun b!868298 () Bool)

(declare-fun e!571476 () Bool)

(assert (=> b!868298 (= e!571476 true)))

(declare-fun b!868297 () Bool)

(declare-fun e!571475 () Bool)

(assert (=> b!868297 (= e!571475 e!571476)))

(declare-fun b!868296 () Bool)

(declare-fun e!571474 () Bool)

(assert (=> b!868296 (= e!571474 e!571475)))

(assert (=> d!272696 e!571474))

(assert (= b!868297 b!868298))

(assert (= b!868296 b!868297))

(assert (= (and d!272696 ((_ is Cons!9392) rules!2621)) b!868296))

(assert (=> b!868298 (< (dynLambda!4471 order!6143 (toValue!2833 (transformation!1764 (h!14793 rules!2621)))) (dynLambda!4472 order!6145 lambda!26070))))

(assert (=> b!868298 (< (dynLambda!4473 order!6147 (toChars!2692 (transformation!1764 (h!14793 rules!2621)))) (dynLambda!4472 order!6145 lambda!26070))))

(assert (=> d!272696 true))

(declare-fun lt!327562 () Bool)

(assert (=> d!272696 (= lt!327562 (forall!2231 (withSeparatorTokenList!94 thiss!20117 l!5107 separatorToken!297) lambda!26070))))

(declare-fun e!571472 () Bool)

(assert (=> d!272696 (= lt!327562 e!571472)))

(declare-fun res!395514 () Bool)

(assert (=> d!272696 (=> res!395514 e!571472)))

(assert (=> d!272696 (= res!395514 (not ((_ is Cons!9393) (withSeparatorTokenList!94 thiss!20117 l!5107 separatorToken!297))))))

(assert (=> d!272696 (not (isEmpty!5578 rules!2621))))

(assert (=> d!272696 (= (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 (withSeparatorTokenList!94 thiss!20117 l!5107 separatorToken!297)) lt!327562)))

(declare-fun b!868294 () Bool)

(declare-fun e!571473 () Bool)

(assert (=> b!868294 (= e!571472 e!571473)))

(declare-fun res!395515 () Bool)

(assert (=> b!868294 (=> (not res!395515) (not e!571473))))

(assert (=> b!868294 (= res!395515 (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 (withSeparatorTokenList!94 thiss!20117 l!5107 separatorToken!297))))))

(declare-fun b!868295 () Bool)

(assert (=> b!868295 (= e!571473 (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 (t!98905 (withSeparatorTokenList!94 thiss!20117 l!5107 separatorToken!297))))))

(assert (= (and d!272696 (not res!395514)) b!868294))

(assert (= (and b!868294 res!395515) b!868295))

(assert (=> d!272696 m!1114517))

(declare-fun m!1116161 () Bool)

(assert (=> d!272696 m!1116161))

(assert (=> d!272696 m!1114527))

(declare-fun m!1116163 () Bool)

(assert (=> b!868294 m!1116163))

(declare-fun m!1116165 () Bool)

(assert (=> b!868295 m!1116165))

(assert (=> d!272362 d!272696))

(assert (=> d!272362 d!272360))

(declare-fun d!272698 () Bool)

(assert (=> d!272698 (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 (withSeparatorTokenList!94 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!272698 true))

(declare-fun _$32!383 () Unit!13907)

(assert (=> d!272698 (= (choose!5104 thiss!20117 rules!2621 l!5107 separatorToken!297) _$32!383)))

(declare-fun bs!233055 () Bool)

(assert (= bs!233055 d!272698))

(assert (=> bs!233055 m!1114517))

(assert (=> bs!233055 m!1114517))

(assert (=> bs!233055 m!1114967))

(assert (=> d!272362 d!272698))

(assert (=> d!272362 d!272366))

(declare-fun d!272742 () Bool)

(declare-fun c!140365 () Bool)

(assert (=> d!272742 (= c!140365 ((_ is Cons!9393) lt!327355))))

(declare-fun e!571494 () List!9407)

(assert (=> d!272742 (= (printList!504 thiss!20117 lt!327355) e!571494)))

(declare-fun b!868329 () Bool)

(assert (=> b!868329 (= e!571494 (++!2434 (list!3705 (charsOf!1021 (h!14794 lt!327355))) (printList!504 thiss!20117 (t!98905 lt!327355))))))

(declare-fun b!868330 () Bool)

(assert (=> b!868330 (= e!571494 Nil!9391)))

(assert (= (and d!272742 c!140365) b!868329))

(assert (= (and d!272742 (not c!140365)) b!868330))

(declare-fun m!1116297 () Bool)

(assert (=> b!868329 m!1116297))

(assert (=> b!868329 m!1116297))

(declare-fun m!1116299 () Bool)

(assert (=> b!868329 m!1116299))

(declare-fun m!1116301 () Bool)

(assert (=> b!868329 m!1116301))

(assert (=> b!868329 m!1116299))

(assert (=> b!868329 m!1116301))

(declare-fun m!1116303 () Bool)

(assert (=> b!868329 m!1116303))

(assert (=> d!272386 d!272742))

(declare-fun d!272744 () Bool)

(declare-fun c!140368 () Bool)

(assert (=> d!272744 (= c!140368 ((_ is Cons!9393) lt!327188))))

(declare-fun e!571497 () List!9407)

(assert (=> d!272744 (= (printWithSeparatorTokenList!62 thiss!20117 lt!327188 separatorToken!297) e!571497)))

(declare-fun b!868335 () Bool)

(assert (=> b!868335 (= e!571497 (++!2434 (++!2434 (list!3705 (charsOf!1021 (h!14794 lt!327188))) (list!3705 (charsOf!1021 separatorToken!297))) (printWithSeparatorTokenList!62 thiss!20117 (t!98905 lt!327188) separatorToken!297)))))

(declare-fun b!868336 () Bool)

(assert (=> b!868336 (= e!571497 Nil!9391)))

(assert (= (and d!272744 c!140368) b!868335))

(assert (= (and d!272744 (not c!140368)) b!868336))

(declare-fun m!1116305 () Bool)

(assert (=> b!868335 m!1116305))

(assert (=> b!868335 m!1115549))

(declare-fun m!1116307 () Bool)

(assert (=> b!868335 m!1116307))

(assert (=> b!868335 m!1115067))

(assert (=> b!868335 m!1114943))

(assert (=> b!868335 m!1114945))

(assert (=> b!868335 m!1114943))

(assert (=> b!868335 m!1115067))

(assert (=> b!868335 m!1115079))

(assert (=> b!868335 m!1115079))

(assert (=> b!868335 m!1114945))

(assert (=> b!868335 m!1116305))

(assert (=> b!868335 m!1115549))

(assert (=> d!272386 d!272744))

(declare-fun d!272746 () Bool)

(declare-fun lt!327581 () Bool)

(assert (=> d!272746 (= lt!327581 (isEmpty!5582 (list!3705 (_2!6068 lt!327350))))))

(assert (=> d!272746 (= lt!327581 (isEmpty!5585 (c!140240 (_2!6068 lt!327350))))))

(assert (=> d!272746 (= (isEmpty!5583 (_2!6068 lt!327350)) lt!327581)))

(declare-fun bs!233056 () Bool)

(assert (= bs!233056 d!272746))

(declare-fun m!1116309 () Bool)

(assert (=> bs!233056 m!1116309))

(assert (=> bs!233056 m!1116309))

(declare-fun m!1116311 () Bool)

(assert (=> bs!233056 m!1116311))

(declare-fun m!1116313 () Bool)

(assert (=> bs!233056 m!1116313))

(assert (=> b!867866 d!272746))

(assert (=> b!867800 d!272686))

(assert (=> b!867795 d!272378))

(declare-fun d!272748 () Bool)

(declare-fun lt!327583 () Bool)

(declare-fun e!571499 () Bool)

(assert (=> d!272748 (= lt!327583 e!571499)))

(declare-fun res!395531 () Bool)

(assert (=> d!272748 (=> (not res!395531) (not e!571499))))

(assert (=> d!272748 (= res!395531 (= (list!3706 (_1!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 (h!14794 lt!327189)))))) (list!3706 (singletonSeq!587 (h!14794 lt!327189)))))))

(declare-fun e!571498 () Bool)

(assert (=> d!272748 (= lt!327583 e!571498)))

(declare-fun res!395530 () Bool)

(assert (=> d!272748 (=> (not res!395530) (not e!571498))))

(declare-fun lt!327582 () tuple2!10484)

(assert (=> d!272748 (= res!395530 (= (size!7823 (_1!6068 lt!327582)) 1))))

(assert (=> d!272748 (= lt!327582 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 (h!14794 lt!327189)))))))

(assert (=> d!272748 (not (isEmpty!5578 rules!2621))))

(assert (=> d!272748 (= (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 lt!327189)) lt!327583)))

(declare-fun b!868337 () Bool)

(declare-fun res!395532 () Bool)

(assert (=> b!868337 (=> (not res!395532) (not e!571498))))

(assert (=> b!868337 (= res!395532 (= (apply!1979 (_1!6068 lt!327582) 0) (h!14794 lt!327189)))))

(declare-fun b!868338 () Bool)

(assert (=> b!868338 (= e!571498 (isEmpty!5583 (_2!6068 lt!327582)))))

(declare-fun b!868339 () Bool)

(assert (=> b!868339 (= e!571499 (isEmpty!5583 (_2!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 (h!14794 lt!327189)))))))))

(assert (= (and d!272748 res!395530) b!868337))

(assert (= (and b!868337 res!395532) b!868338))

(assert (= (and d!272748 res!395531) b!868339))

(declare-fun m!1116315 () Bool)

(assert (=> d!272748 m!1116315))

(declare-fun m!1116317 () Bool)

(assert (=> d!272748 m!1116317))

(declare-fun m!1116319 () Bool)

(assert (=> d!272748 m!1116319))

(declare-fun m!1116321 () Bool)

(assert (=> d!272748 m!1116321))

(declare-fun m!1116323 () Bool)

(assert (=> d!272748 m!1116323))

(assert (=> d!272748 m!1114527))

(assert (=> d!272748 m!1116319))

(declare-fun m!1116325 () Bool)

(assert (=> d!272748 m!1116325))

(assert (=> d!272748 m!1116319))

(assert (=> d!272748 m!1116315))

(declare-fun m!1116327 () Bool)

(assert (=> b!868337 m!1116327))

(declare-fun m!1116329 () Bool)

(assert (=> b!868338 m!1116329))

(assert (=> b!868339 m!1116319))

(assert (=> b!868339 m!1116319))

(assert (=> b!868339 m!1116315))

(assert (=> b!868339 m!1116315))

(assert (=> b!868339 m!1116317))

(declare-fun m!1116331 () Bool)

(assert (=> b!868339 m!1116331))

(assert (=> b!867805 d!272748))

(declare-fun d!272750 () Bool)

(declare-fun lt!327586 () Int)

(assert (=> d!272750 (>= lt!327586 0)))

(declare-fun e!571502 () Int)

(assert (=> d!272750 (= lt!327586 e!571502)))

(declare-fun c!140371 () Bool)

(assert (=> d!272750 (= c!140371 ((_ is Nil!9391) (originalCharacters!2320 (h!14794 l!5107))))))

(assert (=> d!272750 (= (size!7820 (originalCharacters!2320 (h!14794 l!5107))) lt!327586)))

(declare-fun b!868344 () Bool)

(assert (=> b!868344 (= e!571502 0)))

(declare-fun b!868345 () Bool)

(assert (=> b!868345 (= e!571502 (+ 1 (size!7820 (t!98903 (originalCharacters!2320 (h!14794 l!5107))))))))

(assert (= (and d!272750 c!140371) b!868344))

(assert (= (and d!272750 (not c!140371)) b!868345))

(declare-fun m!1116333 () Bool)

(assert (=> b!868345 m!1116333))

(assert (=> b!867521 d!272750))

(declare-fun d!272752 () Bool)

(assert (=> d!272752 true))

(declare-fun lambda!26074 () Int)

(declare-fun order!6155 () Int)

(declare-fun dynLambda!4478 (Int Int) Int)

(assert (=> d!272752 (< (dynLambda!4473 order!6147 (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297)))) (dynLambda!4478 order!6155 lambda!26074))))

(assert (=> d!272752 true))

(assert (=> d!272752 (< (dynLambda!4471 order!6143 (toValue!2833 (transformation!1764 (rule!3187 separatorToken!297)))) (dynLambda!4478 order!6155 lambda!26074))))

(declare-fun Forall!427 (Int) Bool)

(assert (=> d!272752 (= (semiInverseModEq!702 (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (toValue!2833 (transformation!1764 (rule!3187 separatorToken!297)))) (Forall!427 lambda!26074))))

(declare-fun bs!233057 () Bool)

(assert (= bs!233057 d!272752))

(declare-fun m!1116335 () Bool)

(assert (=> bs!233057 m!1116335))

(assert (=> d!272288 d!272752))

(declare-fun bs!233058 () Bool)

(declare-fun d!272754 () Bool)

(assert (= bs!233058 (and d!272754 d!272358)))

(declare-fun lambda!26075 () Int)

(assert (=> bs!233058 (= lambda!26075 lambda!26046)))

(declare-fun bs!233059 () Bool)

(assert (= bs!233059 (and d!272754 d!272696)))

(assert (=> bs!233059 (= lambda!26075 lambda!26070)))

(declare-fun bs!233060 () Bool)

(assert (= bs!233060 (and d!272754 b!867501)))

(assert (=> bs!233060 (not (= lambda!26075 lambda!26036))))

(declare-fun bs!233061 () Bool)

(assert (= bs!233061 (and d!272754 d!272356)))

(assert (=> bs!233061 (= lambda!26075 lambda!26045)))

(declare-fun bs!233062 () Bool)

(assert (= bs!233062 (and d!272754 d!272578)))

(assert (=> bs!233062 (= lambda!26075 lambda!26061)))

(declare-fun bs!233063 () Bool)

(assert (= bs!233063 (and d!272754 d!272280)))

(assert (=> bs!233063 (= lambda!26075 lambda!26042)))

(declare-fun b!868354 () Bool)

(declare-fun e!571507 () Bool)

(assert (=> b!868354 (= e!571507 true)))

(declare-fun b!868353 () Bool)

(declare-fun e!571506 () Bool)

(assert (=> b!868353 (= e!571506 e!571507)))

(declare-fun b!868352 () Bool)

(declare-fun e!571505 () Bool)

(assert (=> b!868352 (= e!571505 e!571506)))

(assert (=> d!272754 e!571505))

(assert (= b!868353 b!868354))

(assert (= b!868352 b!868353))

(assert (= (and d!272754 ((_ is Cons!9392) rules!2621)) b!868352))

(assert (=> b!868354 (< (dynLambda!4471 order!6143 (toValue!2833 (transformation!1764 (h!14793 rules!2621)))) (dynLambda!4472 order!6145 lambda!26075))))

(assert (=> b!868354 (< (dynLambda!4473 order!6147 (toChars!2692 (transformation!1764 (h!14793 rules!2621)))) (dynLambda!4472 order!6145 lambda!26075))))

(assert (=> d!272754 true))

(declare-fun lt!327587 () Bool)

(assert (=> d!272754 (= lt!327587 (forall!2231 lt!327188 lambda!26075))))

(declare-fun e!571503 () Bool)

(assert (=> d!272754 (= lt!327587 e!571503)))

(declare-fun res!395533 () Bool)

(assert (=> d!272754 (=> res!395533 e!571503)))

(assert (=> d!272754 (= res!395533 (not ((_ is Cons!9393) lt!327188)))))

(assert (=> d!272754 (not (isEmpty!5578 rules!2621))))

(assert (=> d!272754 (= (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 lt!327188) lt!327587)))

(declare-fun b!868350 () Bool)

(declare-fun e!571504 () Bool)

(assert (=> b!868350 (= e!571503 e!571504)))

(declare-fun res!395534 () Bool)

(assert (=> b!868350 (=> (not res!395534) (not e!571504))))

(assert (=> b!868350 (= res!395534 (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 lt!327188)))))

(declare-fun b!868351 () Bool)

(assert (=> b!868351 (= e!571504 (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 (t!98905 lt!327188)))))

(assert (= (and d!272754 (not res!395533)) b!868350))

(assert (= (and b!868350 res!395534) b!868351))

(declare-fun m!1116337 () Bool)

(assert (=> d!272754 m!1116337))

(assert (=> d!272754 m!1114527))

(declare-fun m!1116339 () Bool)

(assert (=> b!868350 m!1116339))

(declare-fun m!1116341 () Bool)

(assert (=> b!868351 m!1116341))

(assert (=> b!867797 d!272754))

(declare-fun c!140372 () Bool)

(declare-fun d!272756 () Bool)

(assert (=> d!272756 (= c!140372 ((_ is Cons!9393) ($colon$colon!117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 lt!327188) separatorToken!297) separatorToken!297) (h!14794 lt!327188))))))

(declare-fun e!571508 () List!9407)

(assert (=> d!272756 (= (printList!504 thiss!20117 ($colon$colon!117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 lt!327188) separatorToken!297) separatorToken!297) (h!14794 lt!327188))) e!571508)))

(declare-fun b!868355 () Bool)

(assert (=> b!868355 (= e!571508 (++!2434 (list!3705 (charsOf!1021 (h!14794 ($colon$colon!117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 lt!327188) separatorToken!297) separatorToken!297) (h!14794 lt!327188))))) (printList!504 thiss!20117 (t!98905 ($colon$colon!117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 lt!327188) separatorToken!297) separatorToken!297) (h!14794 lt!327188))))))))

(declare-fun b!868356 () Bool)

(assert (=> b!868356 (= e!571508 Nil!9391)))

(assert (= (and d!272756 c!140372) b!868355))

(assert (= (and d!272756 (not c!140372)) b!868356))

(declare-fun m!1116343 () Bool)

(assert (=> b!868355 m!1116343))

(assert (=> b!868355 m!1116343))

(declare-fun m!1116345 () Bool)

(assert (=> b!868355 m!1116345))

(declare-fun m!1116347 () Bool)

(assert (=> b!868355 m!1116347))

(assert (=> b!868355 m!1116345))

(assert (=> b!868355 m!1116347))

(declare-fun m!1116349 () Bool)

(assert (=> b!868355 m!1116349))

(assert (=> b!867872 d!272756))

(assert (=> b!867872 d!272490))

(assert (=> b!867872 d!272500))

(assert (=> b!867872 d!272512))

(declare-fun d!272758 () Bool)

(declare-fun lt!327588 () BalanceConc!6244)

(assert (=> d!272758 (= (list!3705 lt!327588) (originalCharacters!2320 (h!14794 (t!98905 lt!327189))))))

(assert (=> d!272758 (= lt!327588 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 lt!327189))))) (value!56973 (h!14794 (t!98905 lt!327189)))))))

(assert (=> d!272758 (= (charsOf!1021 (h!14794 (t!98905 lt!327189))) lt!327588)))

(declare-fun b_lambda!29585 () Bool)

(assert (=> (not b_lambda!29585) (not d!272758)))

(declare-fun t!99071 () Bool)

(declare-fun tb!62843 () Bool)

(assert (=> (and b!867500 (= (toChars!2692 (transformation!1764 (h!14793 rules!2621))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 lt!327189)))))) t!99071) tb!62843))

(declare-fun b!868357 () Bool)

(declare-fun e!571509 () Bool)

(declare-fun tp!274572 () Bool)

(assert (=> b!868357 (= e!571509 (and (inv!11930 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 lt!327189))))) (value!56973 (h!14794 (t!98905 lt!327189)))))) tp!274572))))

(declare-fun result!72676 () Bool)

(assert (=> tb!62843 (= result!72676 (and (inv!11931 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 lt!327189))))) (value!56973 (h!14794 (t!98905 lt!327189))))) e!571509))))

(assert (= tb!62843 b!868357))

(declare-fun m!1116351 () Bool)

(assert (=> b!868357 m!1116351))

(declare-fun m!1116353 () Bool)

(assert (=> tb!62843 m!1116353))

(assert (=> d!272758 t!99071))

(declare-fun b_and!78005 () Bool)

(assert (= b_and!77975 (and (=> t!99071 result!72676) b_and!78005)))

(declare-fun tb!62845 () Bool)

(declare-fun t!99073 () Bool)

(assert (=> (and b!867896 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 lt!327189)))))) t!99073) tb!62845))

(declare-fun result!72678 () Bool)

(assert (= result!72678 result!72676))

(assert (=> d!272758 t!99073))

(declare-fun b_and!78007 () Bool)

(assert (= b_and!77983 (and (=> t!99073 result!72678) b_and!78007)))

(declare-fun tb!62847 () Bool)

(declare-fun t!99075 () Bool)

(assert (=> (and b!867510 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 lt!327189)))))) t!99075) tb!62847))

(declare-fun result!72680 () Bool)

(assert (= result!72680 result!72676))

(assert (=> d!272758 t!99075))

(declare-fun b_and!78009 () Bool)

(assert (= b_and!77981 (and (=> t!99075 result!72680) b_and!78009)))

(declare-fun tb!62849 () Bool)

(declare-fun t!99077 () Bool)

(assert (=> (and b!867508 (= (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 lt!327189)))))) t!99077) tb!62849))

(declare-fun result!72682 () Bool)

(assert (= result!72682 result!72676))

(assert (=> d!272758 t!99077))

(declare-fun b_and!78011 () Bool)

(assert (= b_and!77977 (and (=> t!99077 result!72682) b_and!78011)))

(declare-fun t!99079 () Bool)

(declare-fun tb!62851 () Bool)

(assert (=> (and b!867930 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 rules!2621)))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 lt!327189)))))) t!99079) tb!62851))

(declare-fun result!72684 () Bool)

(assert (= result!72684 result!72676))

(assert (=> d!272758 t!99079))

(declare-fun b_and!78013 () Bool)

(assert (= b_and!77979 (and (=> t!99079 result!72684) b_and!78013)))

(declare-fun m!1116355 () Bool)

(assert (=> d!272758 m!1116355))

(declare-fun m!1116357 () Bool)

(assert (=> d!272758 m!1116357))

(assert (=> d!272324 d!272758))

(declare-fun d!272760 () Bool)

(declare-fun lt!327593 () C!4964)

(declare-fun apply!1986 (List!9407 Int) C!4964)

(assert (=> d!272760 (= lt!327593 (apply!1986 (list!3705 (charsOf!1021 (h!14794 (t!98905 lt!327189)))) 0))))

(declare-fun apply!1987 (Conc!3115 Int) C!4964)

(assert (=> d!272760 (= lt!327593 (apply!1987 (c!140240 (charsOf!1021 (h!14794 (t!98905 lt!327189)))) 0))))

(declare-fun e!571512 () Bool)

(assert (=> d!272760 e!571512))

(declare-fun res!395537 () Bool)

(assert (=> d!272760 (=> (not res!395537) (not e!571512))))

(assert (=> d!272760 (= res!395537 (<= 0 0))))

(assert (=> d!272760 (= (apply!1978 (charsOf!1021 (h!14794 (t!98905 lt!327189))) 0) lt!327593)))

(declare-fun b!868360 () Bool)

(assert (=> b!868360 (= e!571512 (< 0 (size!7822 (charsOf!1021 (h!14794 (t!98905 lt!327189))))))))

(assert (= (and d!272760 res!395537) b!868360))

(assert (=> d!272760 m!1114765))

(declare-fun m!1116359 () Bool)

(assert (=> d!272760 m!1116359))

(assert (=> d!272760 m!1116359))

(declare-fun m!1116361 () Bool)

(assert (=> d!272760 m!1116361))

(declare-fun m!1116363 () Bool)

(assert (=> d!272760 m!1116363))

(assert (=> b!868360 m!1114765))

(declare-fun m!1116365 () Bool)

(assert (=> b!868360 m!1116365))

(assert (=> d!272324 d!272760))

(declare-fun d!272762 () Bool)

(declare-fun e!571517 () Bool)

(assert (=> d!272762 e!571517))

(declare-fun res!395543 () Bool)

(assert (=> d!272762 (=> (not res!395543) (not e!571517))))

(declare-fun lt!327600 () BalanceConc!6244)

(assert (=> d!272762 (= res!395543 (= (list!3705 lt!327600) (Cons!9391 (apply!1978 (charsOf!1021 (h!14794 (t!98905 lt!327189))) 0) Nil!9391)))))

(declare-fun singleton!282 (C!4964) BalanceConc!6244)

(assert (=> d!272762 (= lt!327600 (singleton!282 (apply!1978 (charsOf!1021 (h!14794 (t!98905 lt!327189))) 0)))))

(assert (=> d!272762 (= (singletonSeq!586 (apply!1978 (charsOf!1021 (h!14794 (t!98905 lt!327189))) 0)) lt!327600)))

(declare-fun b!868366 () Bool)

(declare-fun isBalanced!865 (Conc!3115) Bool)

(assert (=> b!868366 (= e!571517 (isBalanced!865 (c!140240 lt!327600)))))

(assert (= (and d!272762 res!395543) b!868366))

(declare-fun m!1116399 () Bool)

(assert (=> d!272762 m!1116399))

(assert (=> d!272762 m!1114767))

(declare-fun m!1116401 () Bool)

(assert (=> d!272762 m!1116401))

(declare-fun m!1116403 () Bool)

(assert (=> b!868366 m!1116403))

(assert (=> d!272324 d!272762))

(declare-fun d!272772 () Bool)

(declare-fun lt!327601 () BalanceConc!6244)

(assert (=> d!272772 (= (list!3705 lt!327601) (originalCharacters!2320 (h!14794 lt!327189)))))

(assert (=> d!272772 (= lt!327601 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327189)))) (value!56973 (h!14794 lt!327189))))))

(assert (=> d!272772 (= (charsOf!1021 (h!14794 lt!327189)) lt!327601)))

(declare-fun b_lambda!29587 () Bool)

(assert (=> (not b_lambda!29587) (not d!272772)))

(declare-fun tb!62853 () Bool)

(declare-fun t!99083 () Bool)

(assert (=> (and b!867930 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 rules!2621)))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327189))))) t!99083) tb!62853))

(declare-fun b!868367 () Bool)

(declare-fun e!571518 () Bool)

(declare-fun tp!274573 () Bool)

(assert (=> b!868367 (= e!571518 (and (inv!11930 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327189)))) (value!56973 (h!14794 lt!327189))))) tp!274573))))

(declare-fun result!72686 () Bool)

(assert (=> tb!62853 (= result!72686 (and (inv!11931 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327189)))) (value!56973 (h!14794 lt!327189)))) e!571518))))

(assert (= tb!62853 b!868367))

(declare-fun m!1116405 () Bool)

(assert (=> b!868367 m!1116405))

(declare-fun m!1116407 () Bool)

(assert (=> tb!62853 m!1116407))

(assert (=> d!272772 t!99083))

(declare-fun b_and!78015 () Bool)

(assert (= b_and!78013 (and (=> t!99083 result!72686) b_and!78015)))

(declare-fun tb!62855 () Bool)

(declare-fun t!99085 () Bool)

(assert (=> (and b!867510 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327189))))) t!99085) tb!62855))

(declare-fun result!72688 () Bool)

(assert (= result!72688 result!72686))

(assert (=> d!272772 t!99085))

(declare-fun b_and!78017 () Bool)

(assert (= b_and!78009 (and (=> t!99085 result!72688) b_and!78017)))

(declare-fun t!99087 () Bool)

(declare-fun tb!62857 () Bool)

(assert (=> (and b!867896 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327189))))) t!99087) tb!62857))

(declare-fun result!72690 () Bool)

(assert (= result!72690 result!72686))

(assert (=> d!272772 t!99087))

(declare-fun b_and!78019 () Bool)

(assert (= b_and!78007 (and (=> t!99087 result!72690) b_and!78019)))

(declare-fun t!99089 () Bool)

(declare-fun tb!62859 () Bool)

(assert (=> (and b!867508 (= (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327189))))) t!99089) tb!62859))

(declare-fun result!72692 () Bool)

(assert (= result!72692 result!72686))

(assert (=> d!272772 t!99089))

(declare-fun b_and!78021 () Bool)

(assert (= b_and!78011 (and (=> t!99089 result!72692) b_and!78021)))

(declare-fun t!99091 () Bool)

(declare-fun tb!62861 () Bool)

(assert (=> (and b!867500 (= (toChars!2692 (transformation!1764 (h!14793 rules!2621))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327189))))) t!99091) tb!62861))

(declare-fun result!72694 () Bool)

(assert (= result!72694 result!72686))

(assert (=> d!272772 t!99091))

(declare-fun b_and!78023 () Bool)

(assert (= b_and!78005 (and (=> t!99091 result!72694) b_and!78023)))

(declare-fun m!1116411 () Bool)

(assert (=> d!272772 m!1116411))

(declare-fun m!1116415 () Bool)

(assert (=> d!272772 m!1116415))

(assert (=> d!272324 d!272772))

(declare-fun d!272774 () Bool)

(declare-fun lt!327608 () Unit!13907)

(declare-fun lemma!18 (List!9408 LexerInterface!1566 List!9408) Unit!13907)

(assert (=> d!272774 (= lt!327608 (lemma!18 rules!2621 thiss!20117 rules!2621))))

(declare-fun lambda!26079 () Int)

(declare-datatypes ((List!9414 0))(
  ( (Nil!9398) (Cons!9398 (h!14799 Regex!2197) (t!99232 List!9414)) )
))
(declare-fun generalisedUnion!22 (List!9414) Regex!2197)

(declare-fun map!1932 (List!9408 Int) List!9414)

(assert (=> d!272774 (= (rulesRegex!38 thiss!20117 rules!2621) (generalisedUnion!22 (map!1932 rules!2621 lambda!26079)))))

(declare-fun bs!233072 () Bool)

(assert (= bs!233072 d!272774))

(declare-fun m!1116435 () Bool)

(assert (=> bs!233072 m!1116435))

(declare-fun m!1116437 () Bool)

(assert (=> bs!233072 m!1116437))

(assert (=> bs!233072 m!1116437))

(declare-fun m!1116439 () Bool)

(assert (=> bs!233072 m!1116439))

(assert (=> d!272324 d!272774))

(declare-fun lt!327637 () Bool)

(declare-fun d!272786 () Bool)

(declare-fun prefixMatch!16 (Regex!2197 List!9407) Bool)

(assert (=> d!272786 (= lt!327637 (prefixMatch!16 (rulesRegex!38 thiss!20117 rules!2621) (list!3705 (++!2433 (charsOf!1021 (h!14794 lt!327189)) (singletonSeq!586 (apply!1978 (charsOf!1021 (h!14794 (t!98905 lt!327189))) 0))))))))

(declare-datatypes ((Context!882 0))(
  ( (Context!883 (exprs!941 List!9414)) )
))
(declare-fun prefixMatchZipperSequence!55 ((InoxSet Context!882) BalanceConc!6244 Int) Bool)

(declare-fun focus!36 (Regex!2197) (InoxSet Context!882))

(assert (=> d!272786 (= lt!327637 (prefixMatchZipperSequence!55 (focus!36 (rulesRegex!38 thiss!20117 rules!2621)) (++!2433 (charsOf!1021 (h!14794 lt!327189)) (singletonSeq!586 (apply!1978 (charsOf!1021 (h!14794 (t!98905 lt!327189))) 0))) 0))))

(declare-fun lt!327641 () Unit!13907)

(declare-fun lt!327635 () Unit!13907)

(assert (=> d!272786 (= lt!327641 lt!327635)))

(declare-fun lt!327636 () (InoxSet Context!882))

(declare-fun lt!327640 () List!9407)

(declare-fun prefixMatchZipper!16 ((InoxSet Context!882) List!9407) Bool)

(assert (=> d!272786 (= (prefixMatch!16 (rulesRegex!38 thiss!20117 rules!2621) lt!327640) (prefixMatchZipper!16 lt!327636 lt!327640))))

(declare-datatypes ((List!9415 0))(
  ( (Nil!9399) (Cons!9399 (h!14800 Context!882) (t!99233 List!9415)) )
))
(declare-fun lt!327643 () List!9415)

(declare-fun prefixMatchZipperRegexEquiv!16 ((InoxSet Context!882) List!9415 Regex!2197 List!9407) Unit!13907)

(assert (=> d!272786 (= lt!327635 (prefixMatchZipperRegexEquiv!16 lt!327636 lt!327643 (rulesRegex!38 thiss!20117 rules!2621) lt!327640))))

(assert (=> d!272786 (= lt!327640 (list!3705 (++!2433 (charsOf!1021 (h!14794 lt!327189)) (singletonSeq!586 (apply!1978 (charsOf!1021 (h!14794 (t!98905 lt!327189))) 0)))))))

(declare-fun toList!582 ((InoxSet Context!882)) List!9415)

(assert (=> d!272786 (= lt!327643 (toList!582 (focus!36 (rulesRegex!38 thiss!20117 rules!2621))))))

(assert (=> d!272786 (= lt!327636 (focus!36 (rulesRegex!38 thiss!20117 rules!2621)))))

(declare-fun lt!327639 () Unit!13907)

(declare-fun lt!327638 () Unit!13907)

(assert (=> d!272786 (= lt!327639 lt!327638)))

(declare-fun lt!327642 () (InoxSet Context!882))

(declare-fun lt!327634 () Int)

(declare-fun dropList!280 (BalanceConc!6244 Int) List!9407)

(assert (=> d!272786 (= (prefixMatchZipper!16 lt!327642 (dropList!280 (++!2433 (charsOf!1021 (h!14794 lt!327189)) (singletonSeq!586 (apply!1978 (charsOf!1021 (h!14794 (t!98905 lt!327189))) 0))) lt!327634)) (prefixMatchZipperSequence!55 lt!327642 (++!2433 (charsOf!1021 (h!14794 lt!327189)) (singletonSeq!586 (apply!1978 (charsOf!1021 (h!14794 (t!98905 lt!327189))) 0))) lt!327634))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!16 ((InoxSet Context!882) BalanceConc!6244 Int) Unit!13907)

(assert (=> d!272786 (= lt!327638 (lemmaprefixMatchZipperSequenceEquivalent!16 lt!327642 (++!2433 (charsOf!1021 (h!14794 lt!327189)) (singletonSeq!586 (apply!1978 (charsOf!1021 (h!14794 (t!98905 lt!327189))) 0))) lt!327634))))

(assert (=> d!272786 (= lt!327634 0)))

(assert (=> d!272786 (= lt!327642 (focus!36 (rulesRegex!38 thiss!20117 rules!2621)))))

(declare-fun validRegex!666 (Regex!2197) Bool)

(assert (=> d!272786 (validRegex!666 (rulesRegex!38 thiss!20117 rules!2621))))

(assert (=> d!272786 (= (prefixMatchZipperSequence!53 (rulesRegex!38 thiss!20117 rules!2621) (++!2433 (charsOf!1021 (h!14794 lt!327189)) (singletonSeq!586 (apply!1978 (charsOf!1021 (h!14794 (t!98905 lt!327189))) 0)))) lt!327637)))

(declare-fun bs!233085 () Bool)

(assert (= bs!233085 d!272786))

(assert (=> bs!233085 m!1114757))

(declare-fun m!1116517 () Bool)

(assert (=> bs!233085 m!1116517))

(assert (=> bs!233085 m!1114757))

(declare-fun m!1116519 () Bool)

(assert (=> bs!233085 m!1116519))

(declare-fun m!1116521 () Bool)

(assert (=> bs!233085 m!1116521))

(assert (=> bs!233085 m!1114761))

(declare-fun m!1116523 () Bool)

(assert (=> bs!233085 m!1116523))

(assert (=> bs!233085 m!1114757))

(assert (=> bs!233085 m!1116521))

(declare-fun m!1116525 () Bool)

(assert (=> bs!233085 m!1116525))

(assert (=> bs!233085 m!1114757))

(declare-fun m!1116527 () Bool)

(assert (=> bs!233085 m!1116527))

(assert (=> bs!233085 m!1116521))

(declare-fun m!1116529 () Bool)

(assert (=> bs!233085 m!1116529))

(assert (=> bs!233085 m!1114761))

(declare-fun m!1116531 () Bool)

(assert (=> bs!233085 m!1116531))

(assert (=> bs!233085 m!1114757))

(declare-fun m!1116533 () Bool)

(assert (=> bs!233085 m!1116533))

(declare-fun m!1116535 () Bool)

(assert (=> bs!233085 m!1116535))

(declare-fun m!1116537 () Bool)

(assert (=> bs!233085 m!1116537))

(declare-fun m!1116539 () Bool)

(assert (=> bs!233085 m!1116539))

(assert (=> bs!233085 m!1114761))

(assert (=> bs!233085 m!1116533))

(assert (=> bs!233085 m!1114761))

(assert (=> bs!233085 m!1116537))

(assert (=> bs!233085 m!1114761))

(declare-fun m!1116541 () Bool)

(assert (=> bs!233085 m!1116541))

(assert (=> d!272324 d!272786))

(declare-fun b!868507 () Bool)

(declare-fun e!571588 () Bool)

(declare-fun lt!327646 () BalanceConc!6244)

(assert (=> b!868507 (= e!571588 (= (list!3705 lt!327646) (++!2434 (list!3705 (charsOf!1021 (h!14794 lt!327189))) (list!3705 (singletonSeq!586 (apply!1978 (charsOf!1021 (h!14794 (t!98905 lt!327189))) 0))))))))

(declare-fun b!868504 () Bool)

(declare-fun res!395563 () Bool)

(assert (=> b!868504 (=> (not res!395563) (not e!571588))))

(declare-fun ++!2436 (Conc!3115 Conc!3115) Conc!3115)

(assert (=> b!868504 (= res!395563 (isBalanced!865 (++!2436 (c!140240 (charsOf!1021 (h!14794 lt!327189))) (c!140240 (singletonSeq!586 (apply!1978 (charsOf!1021 (h!14794 (t!98905 lt!327189))) 0))))))))

(declare-fun b!868506 () Bool)

(declare-fun res!395565 () Bool)

(assert (=> b!868506 (=> (not res!395565) (not e!571588))))

(declare-fun height!410 (Conc!3115) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!868506 (= res!395565 (>= (height!410 (++!2436 (c!140240 (charsOf!1021 (h!14794 lt!327189))) (c!140240 (singletonSeq!586 (apply!1978 (charsOf!1021 (h!14794 (t!98905 lt!327189))) 0))))) (max!0 (height!410 (c!140240 (charsOf!1021 (h!14794 lt!327189)))) (height!410 (c!140240 (singletonSeq!586 (apply!1978 (charsOf!1021 (h!14794 (t!98905 lt!327189))) 0)))))))))

(declare-fun b!868505 () Bool)

(declare-fun res!395562 () Bool)

(assert (=> b!868505 (=> (not res!395562) (not e!571588))))

(assert (=> b!868505 (= res!395562 (<= (height!410 (++!2436 (c!140240 (charsOf!1021 (h!14794 lt!327189))) (c!140240 (singletonSeq!586 (apply!1978 (charsOf!1021 (h!14794 (t!98905 lt!327189))) 0))))) (+ (max!0 (height!410 (c!140240 (charsOf!1021 (h!14794 lt!327189)))) (height!410 (c!140240 (singletonSeq!586 (apply!1978 (charsOf!1021 (h!14794 (t!98905 lt!327189))) 0))))) 1)))))

(declare-fun d!272808 () Bool)

(assert (=> d!272808 e!571588))

(declare-fun res!395564 () Bool)

(assert (=> d!272808 (=> (not res!395564) (not e!571588))))

(declare-fun appendAssocInst!202 (Conc!3115 Conc!3115) Bool)

(assert (=> d!272808 (= res!395564 (appendAssocInst!202 (c!140240 (charsOf!1021 (h!14794 lt!327189))) (c!140240 (singletonSeq!586 (apply!1978 (charsOf!1021 (h!14794 (t!98905 lt!327189))) 0)))))))

(assert (=> d!272808 (= lt!327646 (BalanceConc!6245 (++!2436 (c!140240 (charsOf!1021 (h!14794 lt!327189))) (c!140240 (singletonSeq!586 (apply!1978 (charsOf!1021 (h!14794 (t!98905 lt!327189))) 0))))))))

(assert (=> d!272808 (= (++!2433 (charsOf!1021 (h!14794 lt!327189)) (singletonSeq!586 (apply!1978 (charsOf!1021 (h!14794 (t!98905 lt!327189))) 0))) lt!327646)))

(assert (= (and d!272808 res!395564) b!868504))

(assert (= (and b!868504 res!395563) b!868505))

(assert (= (and b!868505 res!395562) b!868506))

(assert (= (and b!868506 res!395565) b!868507))

(declare-fun m!1116549 () Bool)

(assert (=> d!272808 m!1116549))

(declare-fun m!1116551 () Bool)

(assert (=> d!272808 m!1116551))

(assert (=> b!868506 m!1116551))

(declare-fun m!1116553 () Bool)

(assert (=> b!868506 m!1116553))

(declare-fun m!1116555 () Bool)

(assert (=> b!868506 m!1116555))

(assert (=> b!868506 m!1116551))

(assert (=> b!868506 m!1116555))

(declare-fun m!1116557 () Bool)

(assert (=> b!868506 m!1116557))

(declare-fun m!1116559 () Bool)

(assert (=> b!868506 m!1116559))

(assert (=> b!868506 m!1116557))

(assert (=> b!868504 m!1116551))

(assert (=> b!868504 m!1116551))

(declare-fun m!1116561 () Bool)

(assert (=> b!868504 m!1116561))

(assert (=> b!868505 m!1116551))

(assert (=> b!868505 m!1116553))

(assert (=> b!868505 m!1116555))

(assert (=> b!868505 m!1116551))

(assert (=> b!868505 m!1116555))

(assert (=> b!868505 m!1116557))

(assert (=> b!868505 m!1116559))

(assert (=> b!868505 m!1116557))

(declare-fun m!1116563 () Bool)

(assert (=> b!868507 m!1116563))

(assert (=> b!868507 m!1114759))

(declare-fun m!1116565 () Bool)

(assert (=> b!868507 m!1116565))

(assert (=> b!868507 m!1114769))

(declare-fun m!1116567 () Bool)

(assert (=> b!868507 m!1116567))

(assert (=> b!868507 m!1116565))

(assert (=> b!868507 m!1116567))

(declare-fun m!1116569 () Bool)

(assert (=> b!868507 m!1116569))

(assert (=> d!272324 d!272808))

(declare-fun d!272818 () Bool)

(declare-fun res!395566 () Bool)

(declare-fun e!571590 () Bool)

(assert (=> d!272818 (=> res!395566 e!571590)))

(assert (=> d!272818 (= res!395566 (or (not ((_ is Cons!9393) (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297))) (not ((_ is Cons!9393) (t!98905 (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297))))))))

(assert (=> d!272818 (= (tokensListTwoByTwoPredicateSeparableList!60 thiss!20117 (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297) rules!2621) e!571590)))

(declare-fun b!868508 () Bool)

(declare-fun e!571589 () Bool)

(assert (=> b!868508 (= e!571590 e!571589)))

(declare-fun res!395567 () Bool)

(assert (=> b!868508 (=> (not res!395567) (not e!571589))))

(assert (=> b!868508 (= res!395567 (separableTokensPredicate!84 thiss!20117 (h!14794 (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297)) (h!14794 (t!98905 (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297))) rules!2621))))

(declare-fun lt!327652 () Unit!13907)

(declare-fun Unit!13918 () Unit!13907)

(assert (=> b!868508 (= lt!327652 Unit!13918)))

(assert (=> b!868508 (> (size!7822 (charsOf!1021 (h!14794 (t!98905 (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297))))) 0)))

(declare-fun lt!327650 () Unit!13907)

(declare-fun Unit!13919 () Unit!13907)

(assert (=> b!868508 (= lt!327650 Unit!13919)))

(assert (=> b!868508 (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 (t!98905 (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297))))))

(declare-fun lt!327649 () Unit!13907)

(declare-fun Unit!13920 () Unit!13907)

(assert (=> b!868508 (= lt!327649 Unit!13920)))

(assert (=> b!868508 (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297)))))

(declare-fun lt!327651 () Unit!13907)

(declare-fun lt!327647 () Unit!13907)

(assert (=> b!868508 (= lt!327651 lt!327647)))

(assert (=> b!868508 (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 (t!98905 (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297))))))

(assert (=> b!868508 (= lt!327647 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!242 thiss!20117 rules!2621 (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297) (h!14794 (t!98905 (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297)))))))

(declare-fun lt!327653 () Unit!13907)

(declare-fun lt!327648 () Unit!13907)

(assert (=> b!868508 (= lt!327653 lt!327648)))

(assert (=> b!868508 (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297)))))

(assert (=> b!868508 (= lt!327648 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!242 thiss!20117 rules!2621 (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297) (h!14794 (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297))))))

(declare-fun b!868509 () Bool)

(assert (=> b!868509 (= e!571589 (tokensListTwoByTwoPredicateSeparableList!60 thiss!20117 (Cons!9393 (h!14794 (t!98905 (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297))) (t!98905 (t!98905 (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297)))) rules!2621))))

(assert (= (and d!272818 (not res!395566)) b!868508))

(assert (= (and b!868508 res!395567) b!868509))

(declare-fun m!1116571 () Bool)

(assert (=> b!868508 m!1116571))

(assert (=> b!868508 m!1114491))

(declare-fun m!1116573 () Bool)

(assert (=> b!868508 m!1116573))

(declare-fun m!1116575 () Bool)

(assert (=> b!868508 m!1116575))

(assert (=> b!868508 m!1116575))

(declare-fun m!1116577 () Bool)

(assert (=> b!868508 m!1116577))

(declare-fun m!1116579 () Bool)

(assert (=> b!868508 m!1116579))

(declare-fun m!1116581 () Bool)

(assert (=> b!868508 m!1116581))

(assert (=> b!868508 m!1114491))

(declare-fun m!1116583 () Bool)

(assert (=> b!868508 m!1116583))

(declare-fun m!1116585 () Bool)

(assert (=> b!868509 m!1116585))

(assert (=> b!867799 d!272818))

(assert (=> b!867799 d!272386))

(declare-fun bs!233090 () Bool)

(declare-fun d!272820 () Bool)

(assert (= bs!233090 (and d!272820 d!272358)))

(declare-fun lambda!26081 () Int)

(assert (=> bs!233090 (= lambda!26081 lambda!26046)))

(declare-fun bs!233091 () Bool)

(assert (= bs!233091 (and d!272820 d!272754)))

(assert (=> bs!233091 (= lambda!26081 lambda!26075)))

(declare-fun bs!233092 () Bool)

(assert (= bs!233092 (and d!272820 d!272696)))

(assert (=> bs!233092 (= lambda!26081 lambda!26070)))

(declare-fun bs!233093 () Bool)

(assert (= bs!233093 (and d!272820 b!867501)))

(assert (=> bs!233093 (not (= lambda!26081 lambda!26036))))

(declare-fun bs!233094 () Bool)

(assert (= bs!233094 (and d!272820 d!272356)))

(assert (=> bs!233094 (= lambda!26081 lambda!26045)))

(declare-fun bs!233095 () Bool)

(assert (= bs!233095 (and d!272820 d!272578)))

(assert (=> bs!233095 (= lambda!26081 lambda!26061)))

(declare-fun bs!233096 () Bool)

(assert (= bs!233096 (and d!272820 d!272280)))

(assert (=> bs!233096 (= lambda!26081 lambda!26042)))

(declare-fun b!868514 () Bool)

(declare-fun e!571595 () Bool)

(assert (=> b!868514 (= e!571595 true)))

(declare-fun b!868513 () Bool)

(declare-fun e!571594 () Bool)

(assert (=> b!868513 (= e!571594 e!571595)))

(declare-fun b!868512 () Bool)

(declare-fun e!571593 () Bool)

(assert (=> b!868512 (= e!571593 e!571594)))

(assert (=> d!272820 e!571593))

(assert (= b!868513 b!868514))

(assert (= b!868512 b!868513))

(assert (= (and d!272820 ((_ is Cons!9392) rules!2621)) b!868512))

(assert (=> b!868514 (< (dynLambda!4471 order!6143 (toValue!2833 (transformation!1764 (h!14793 rules!2621)))) (dynLambda!4472 order!6145 lambda!26081))))

(assert (=> b!868514 (< (dynLambda!4473 order!6147 (toChars!2692 (transformation!1764 (h!14793 rules!2621)))) (dynLambda!4472 order!6145 lambda!26081))))

(assert (=> d!272820 true))

(declare-fun lt!327654 () Bool)

(assert (=> d!272820 (= lt!327654 (forall!2231 (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297) lambda!26081))))

(declare-fun e!571591 () Bool)

(assert (=> d!272820 (= lt!327654 e!571591)))

(declare-fun res!395568 () Bool)

(assert (=> d!272820 (=> res!395568 e!571591)))

(assert (=> d!272820 (= res!395568 (not ((_ is Cons!9393) (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297))))))

(assert (=> d!272820 (not (isEmpty!5578 rules!2621))))

(assert (=> d!272820 (= (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297)) lt!327654)))

(declare-fun b!868510 () Bool)

(declare-fun e!571592 () Bool)

(assert (=> b!868510 (= e!571591 e!571592)))

(declare-fun res!395569 () Bool)

(assert (=> b!868510 (=> (not res!395569) (not e!571592))))

(assert (=> b!868510 (= res!395569 (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297))))))

(declare-fun b!868511 () Bool)

(assert (=> b!868511 (= e!571592 (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 (t!98905 (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297))))))

(assert (= (and d!272820 (not res!395568)) b!868510))

(assert (= (and b!868510 res!395569) b!868511))

(assert (=> d!272820 m!1114491))

(declare-fun m!1116587 () Bool)

(assert (=> d!272820 m!1116587))

(assert (=> d!272820 m!1114527))

(assert (=> b!868510 m!1116581))

(declare-fun m!1116589 () Bool)

(assert (=> b!868511 m!1116589))

(assert (=> b!867799 d!272820))

(assert (=> b!867799 d!272326))

(declare-fun c!140382 () Bool)

(declare-fun d!272822 () Bool)

(assert (=> d!272822 (= c!140382 ((_ is Cons!9393) ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 lt!327188) separatorToken!297) separatorToken!297)))))

(declare-fun e!571596 () List!9407)

(assert (=> d!272822 (= (printList!504 thiss!20117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 lt!327188) separatorToken!297) separatorToken!297)) e!571596)))

(declare-fun b!868515 () Bool)

(assert (=> b!868515 (= e!571596 (++!2434 (list!3705 (charsOf!1021 (h!14794 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 lt!327188) separatorToken!297) separatorToken!297)))) (printList!504 thiss!20117 (t!98905 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 lt!327188) separatorToken!297) separatorToken!297)))))))

(declare-fun b!868516 () Bool)

(assert (=> b!868516 (= e!571596 Nil!9391)))

(assert (= (and d!272822 c!140382) b!868515))

(assert (= (and d!272822 (not c!140382)) b!868516))

(declare-fun m!1116591 () Bool)

(assert (=> b!868515 m!1116591))

(assert (=> b!868515 m!1116591))

(declare-fun m!1116593 () Bool)

(assert (=> b!868515 m!1116593))

(declare-fun m!1116595 () Bool)

(assert (=> b!868515 m!1116595))

(assert (=> b!868515 m!1116593))

(assert (=> b!868515 m!1116595))

(declare-fun m!1116597 () Bool)

(assert (=> b!868515 m!1116597))

(assert (=> b!867874 d!272822))

(assert (=> b!867874 d!272500))

(assert (=> b!867874 d!272512))

(declare-fun bs!233097 () Bool)

(declare-fun d!272824 () Bool)

(assert (= bs!233097 (and d!272824 d!272486)))

(declare-fun lambda!26082 () Int)

(assert (=> bs!233097 (= (= (toValue!2833 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (toValue!2833 (transformation!1764 (rule!3187 separatorToken!297)))) (= lambda!26082 lambda!26053))))

(assert (=> d!272824 true))

(assert (=> d!272824 (< (dynLambda!4471 order!6143 (toValue!2833 (transformation!1764 (rule!3187 (h!14794 l!5107))))) (dynLambda!4476 order!6151 lambda!26082))))

(assert (=> d!272824 (= (equivClasses!669 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (toValue!2833 (transformation!1764 (rule!3187 (h!14794 l!5107))))) (Forall2!336 lambda!26082))))

(declare-fun bs!233098 () Bool)

(assert (= bs!233098 d!272824))

(declare-fun m!1116599 () Bool)

(assert (=> bs!233098 m!1116599))

(assert (=> b!867864 d!272824))

(declare-fun b!868517 () Bool)

(declare-fun e!571597 () List!9407)

(assert (=> b!868517 (= e!571597 (printList!504 thiss!20117 (t!98905 lt!327335)))))

(declare-fun e!571598 () Bool)

(declare-fun b!868520 () Bool)

(declare-fun lt!327655 () List!9407)

(assert (=> b!868520 (= e!571598 (or (not (= (printList!504 thiss!20117 (t!98905 lt!327335)) Nil!9391)) (= lt!327655 (list!3705 (charsOf!1021 (h!14794 lt!327335))))))))

(declare-fun b!868518 () Bool)

(assert (=> b!868518 (= e!571597 (Cons!9391 (h!14792 (list!3705 (charsOf!1021 (h!14794 lt!327335)))) (++!2434 (t!98903 (list!3705 (charsOf!1021 (h!14794 lt!327335)))) (printList!504 thiss!20117 (t!98905 lt!327335)))))))

(declare-fun b!868519 () Bool)

(declare-fun res!395570 () Bool)

(assert (=> b!868519 (=> (not res!395570) (not e!571598))))

(assert (=> b!868519 (= res!395570 (= (size!7820 lt!327655) (+ (size!7820 (list!3705 (charsOf!1021 (h!14794 lt!327335)))) (size!7820 (printList!504 thiss!20117 (t!98905 lt!327335))))))))

(declare-fun d!272826 () Bool)

(assert (=> d!272826 e!571598))

(declare-fun res!395571 () Bool)

(assert (=> d!272826 (=> (not res!395571) (not e!571598))))

(assert (=> d!272826 (= res!395571 (= (content!1362 lt!327655) ((_ map or) (content!1362 (list!3705 (charsOf!1021 (h!14794 lt!327335)))) (content!1362 (printList!504 thiss!20117 (t!98905 lt!327335))))))))

(assert (=> d!272826 (= lt!327655 e!571597)))

(declare-fun c!140383 () Bool)

(assert (=> d!272826 (= c!140383 ((_ is Nil!9391) (list!3705 (charsOf!1021 (h!14794 lt!327335)))))))

(assert (=> d!272826 (= (++!2434 (list!3705 (charsOf!1021 (h!14794 lt!327335))) (printList!504 thiss!20117 (t!98905 lt!327335))) lt!327655)))

(assert (= (and d!272826 c!140383) b!868517))

(assert (= (and d!272826 (not c!140383)) b!868518))

(assert (= (and d!272826 res!395571) b!868519))

(assert (= (and b!868519 res!395570) b!868520))

(assert (=> b!868518 m!1114957))

(declare-fun m!1116601 () Bool)

(assert (=> b!868518 m!1116601))

(declare-fun m!1116603 () Bool)

(assert (=> b!868519 m!1116603))

(assert (=> b!868519 m!1114955))

(declare-fun m!1116605 () Bool)

(assert (=> b!868519 m!1116605))

(assert (=> b!868519 m!1114957))

(declare-fun m!1116607 () Bool)

(assert (=> b!868519 m!1116607))

(declare-fun m!1116609 () Bool)

(assert (=> d!272826 m!1116609))

(assert (=> d!272826 m!1114955))

(declare-fun m!1116611 () Bool)

(assert (=> d!272826 m!1116611))

(assert (=> d!272826 m!1114957))

(declare-fun m!1116613 () Bool)

(assert (=> d!272826 m!1116613))

(assert (=> b!867835 d!272826))

(declare-fun d!272828 () Bool)

(assert (=> d!272828 (= (list!3705 (charsOf!1021 (h!14794 lt!327335))) (list!3708 (c!140240 (charsOf!1021 (h!14794 lt!327335)))))))

(declare-fun bs!233099 () Bool)

(assert (= bs!233099 d!272828))

(declare-fun m!1116615 () Bool)

(assert (=> bs!233099 m!1116615))

(assert (=> b!867835 d!272828))

(declare-fun d!272830 () Bool)

(declare-fun lt!327656 () BalanceConc!6244)

(assert (=> d!272830 (= (list!3705 lt!327656) (originalCharacters!2320 (h!14794 lt!327335)))))

(assert (=> d!272830 (= lt!327656 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327335)))) (value!56973 (h!14794 lt!327335))))))

(assert (=> d!272830 (= (charsOf!1021 (h!14794 lt!327335)) lt!327656)))

(declare-fun b_lambda!29609 () Bool)

(assert (=> (not b_lambda!29609) (not d!272830)))

(declare-fun tb!62927 () Bool)

(declare-fun t!99157 () Bool)

(assert (=> (and b!867510 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327335))))) t!99157) tb!62927))

(declare-fun b!868521 () Bool)

(declare-fun e!571599 () Bool)

(declare-fun tp!274685 () Bool)

(assert (=> b!868521 (= e!571599 (and (inv!11930 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327335)))) (value!56973 (h!14794 lt!327335))))) tp!274685))))

(declare-fun result!72762 () Bool)

(assert (=> tb!62927 (= result!72762 (and (inv!11931 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327335)))) (value!56973 (h!14794 lt!327335)))) e!571599))))

(assert (= tb!62927 b!868521))

(declare-fun m!1116617 () Bool)

(assert (=> b!868521 m!1116617))

(declare-fun m!1116619 () Bool)

(assert (=> tb!62927 m!1116619))

(assert (=> d!272830 t!99157))

(declare-fun b_and!78053 () Bool)

(assert (= b_and!78017 (and (=> t!99157 result!72762) b_and!78053)))

(declare-fun tb!62929 () Bool)

(declare-fun t!99159 () Bool)

(assert (=> (and b!867500 (= (toChars!2692 (transformation!1764 (h!14793 rules!2621))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327335))))) t!99159) tb!62929))

(declare-fun result!72764 () Bool)

(assert (= result!72764 result!72762))

(assert (=> d!272830 t!99159))

(declare-fun b_and!78055 () Bool)

(assert (= b_and!78023 (and (=> t!99159 result!72764) b_and!78055)))

(declare-fun tb!62931 () Bool)

(declare-fun t!99161 () Bool)

(assert (=> (and b!867896 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327335))))) t!99161) tb!62931))

(declare-fun result!72766 () Bool)

(assert (= result!72766 result!72762))

(assert (=> d!272830 t!99161))

(declare-fun b_and!78057 () Bool)

(assert (= b_and!78019 (and (=> t!99161 result!72766) b_and!78057)))

(declare-fun t!99163 () Bool)

(declare-fun tb!62933 () Bool)

(assert (=> (and b!867508 (= (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327335))))) t!99163) tb!62933))

(declare-fun result!72768 () Bool)

(assert (= result!72768 result!72762))

(assert (=> d!272830 t!99163))

(declare-fun b_and!78059 () Bool)

(assert (= b_and!78021 (and (=> t!99163 result!72768) b_and!78059)))

(declare-fun tb!62935 () Bool)

(declare-fun t!99165 () Bool)

(assert (=> (and b!867930 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 rules!2621)))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327335))))) t!99165) tb!62935))

(declare-fun result!72770 () Bool)

(assert (= result!72770 result!72762))

(assert (=> d!272830 t!99165))

(declare-fun b_and!78061 () Bool)

(assert (= b_and!78015 (and (=> t!99165 result!72770) b_and!78061)))

(declare-fun m!1116621 () Bool)

(assert (=> d!272830 m!1116621))

(declare-fun m!1116623 () Bool)

(assert (=> d!272830 m!1116623))

(assert (=> b!867835 d!272830))

(declare-fun d!272832 () Bool)

(declare-fun c!140384 () Bool)

(assert (=> d!272832 (= c!140384 ((_ is Cons!9393) (t!98905 lt!327335)))))

(declare-fun e!571600 () List!9407)

(assert (=> d!272832 (= (printList!504 thiss!20117 (t!98905 lt!327335)) e!571600)))

(declare-fun b!868522 () Bool)

(assert (=> b!868522 (= e!571600 (++!2434 (list!3705 (charsOf!1021 (h!14794 (t!98905 lt!327335)))) (printList!504 thiss!20117 (t!98905 (t!98905 lt!327335)))))))

(declare-fun b!868523 () Bool)

(assert (=> b!868523 (= e!571600 Nil!9391)))

(assert (= (and d!272832 c!140384) b!868522))

(assert (= (and d!272832 (not c!140384)) b!868523))

(declare-fun m!1116625 () Bool)

(assert (=> b!868522 m!1116625))

(assert (=> b!868522 m!1116625))

(declare-fun m!1116627 () Bool)

(assert (=> b!868522 m!1116627))

(declare-fun m!1116629 () Bool)

(assert (=> b!868522 m!1116629))

(assert (=> b!868522 m!1116627))

(assert (=> b!868522 m!1116629))

(declare-fun m!1116631 () Bool)

(assert (=> b!868522 m!1116631))

(assert (=> b!867835 d!272832))

(assert (=> d!272326 d!272820))

(assert (=> d!272326 d!272386))

(declare-fun d!272834 () Bool)

(assert (=> d!272834 (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 (withSeparatorTokenList!94 thiss!20117 lt!327188 separatorToken!297))))

(assert (=> d!272834 true))

(declare-fun _$32!384 () Unit!13907)

(assert (=> d!272834 (= (choose!5104 thiss!20117 rules!2621 lt!327188 separatorToken!297) _$32!384)))

(declare-fun bs!233100 () Bool)

(assert (= bs!233100 d!272834))

(assert (=> bs!233100 m!1114491))

(assert (=> bs!233100 m!1114491))

(assert (=> bs!233100 m!1114857))

(assert (=> d!272326 d!272834))

(assert (=> d!272326 d!272366))

(declare-fun d!272836 () Bool)

(assert (=> d!272836 (= (inv!16 (value!56973 (h!14794 l!5107))) (= (charsToInt!0 (text!13257 (value!56973 (h!14794 l!5107)))) (value!56964 (value!56973 (h!14794 l!5107)))))))

(declare-fun bs!233101 () Bool)

(assert (= bs!233101 d!272836))

(declare-fun m!1116633 () Bool)

(assert (=> bs!233101 m!1116633))

(assert (=> b!867879 d!272836))

(declare-fun d!272838 () Bool)

(declare-fun c!140385 () Bool)

(assert (=> d!272838 (= c!140385 ((_ is Node!3115) (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (value!56973 (h!14794 l!5107))))))))

(declare-fun e!571601 () Bool)

(assert (=> d!272838 (= (inv!11930 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (value!56973 (h!14794 l!5107))))) e!571601)))

(declare-fun b!868524 () Bool)

(assert (=> b!868524 (= e!571601 (inv!11934 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (value!56973 (h!14794 l!5107))))))))

(declare-fun b!868525 () Bool)

(declare-fun e!571602 () Bool)

(assert (=> b!868525 (= e!571601 e!571602)))

(declare-fun res!395572 () Bool)

(assert (=> b!868525 (= res!395572 (not ((_ is Leaf!4585) (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (value!56973 (h!14794 l!5107)))))))))

(assert (=> b!868525 (=> res!395572 e!571602)))

(declare-fun b!868526 () Bool)

(assert (=> b!868526 (= e!571602 (inv!11935 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (value!56973 (h!14794 l!5107))))))))

(assert (= (and d!272838 c!140385) b!868524))

(assert (= (and d!272838 (not c!140385)) b!868525))

(assert (= (and b!868525 (not res!395572)) b!868526))

(declare-fun m!1116635 () Bool)

(assert (=> b!868524 m!1116635))

(declare-fun m!1116637 () Bool)

(assert (=> b!868526 m!1116637))

(assert (=> b!867526 d!272838))

(declare-fun b!868527 () Bool)

(declare-fun e!571603 () List!9407)

(assert (=> b!868527 (= e!571603 lt!327339)))

(declare-fun e!571604 () Bool)

(declare-fun b!868530 () Bool)

(declare-fun lt!327657 () List!9407)

(assert (=> b!868530 (= e!571604 (or (not (= lt!327339 Nil!9391)) (= lt!327657 (++!2434 lt!327334 lt!327333))))))

(declare-fun b!868528 () Bool)

(assert (=> b!868528 (= e!571603 (Cons!9391 (h!14792 (++!2434 lt!327334 lt!327333)) (++!2434 (t!98903 (++!2434 lt!327334 lt!327333)) lt!327339)))))

(declare-fun b!868529 () Bool)

(declare-fun res!395573 () Bool)

(assert (=> b!868529 (=> (not res!395573) (not e!571604))))

(assert (=> b!868529 (= res!395573 (= (size!7820 lt!327657) (+ (size!7820 (++!2434 lt!327334 lt!327333)) (size!7820 lt!327339))))))

(declare-fun d!272840 () Bool)

(assert (=> d!272840 e!571604))

(declare-fun res!395574 () Bool)

(assert (=> d!272840 (=> (not res!395574) (not e!571604))))

(assert (=> d!272840 (= res!395574 (= (content!1362 lt!327657) ((_ map or) (content!1362 (++!2434 lt!327334 lt!327333)) (content!1362 lt!327339))))))

(assert (=> d!272840 (= lt!327657 e!571603)))

(declare-fun c!140386 () Bool)

(assert (=> d!272840 (= c!140386 ((_ is Nil!9391) (++!2434 lt!327334 lt!327333)))))

(assert (=> d!272840 (= (++!2434 (++!2434 lt!327334 lt!327333) lt!327339) lt!327657)))

(assert (= (and d!272840 c!140386) b!868527))

(assert (= (and d!272840 (not c!140386)) b!868528))

(assert (= (and d!272840 res!395574) b!868529))

(assert (= (and b!868529 res!395573) b!868530))

(declare-fun m!1116639 () Bool)

(assert (=> b!868528 m!1116639))

(declare-fun m!1116641 () Bool)

(assert (=> b!868529 m!1116641))

(assert (=> b!868529 m!1114931))

(declare-fun m!1116643 () Bool)

(assert (=> b!868529 m!1116643))

(declare-fun m!1116645 () Bool)

(assert (=> b!868529 m!1116645))

(declare-fun m!1116647 () Bool)

(assert (=> d!272840 m!1116647))

(assert (=> d!272840 m!1114931))

(declare-fun m!1116649 () Bool)

(assert (=> d!272840 m!1116649))

(declare-fun m!1116651 () Bool)

(assert (=> d!272840 m!1116651))

(assert (=> b!867837 d!272840))

(declare-fun d!272842 () Bool)

(declare-fun c!140387 () Bool)

(assert (=> d!272842 (= c!140387 ((_ is Cons!9393) (withSeparatorTokenList!94 thiss!20117 (t!98905 l!5107) separatorToken!297)))))

(declare-fun e!571605 () List!9407)

(assert (=> d!272842 (= (printList!504 thiss!20117 (withSeparatorTokenList!94 thiss!20117 (t!98905 l!5107) separatorToken!297)) e!571605)))

(declare-fun b!868531 () Bool)

(assert (=> b!868531 (= e!571605 (++!2434 (list!3705 (charsOf!1021 (h!14794 (withSeparatorTokenList!94 thiss!20117 (t!98905 l!5107) separatorToken!297)))) (printList!504 thiss!20117 (t!98905 (withSeparatorTokenList!94 thiss!20117 (t!98905 l!5107) separatorToken!297)))))))

(declare-fun b!868532 () Bool)

(assert (=> b!868532 (= e!571605 Nil!9391)))

(assert (= (and d!272842 c!140387) b!868531))

(assert (= (and d!272842 (not c!140387)) b!868532))

(declare-fun m!1116653 () Bool)

(assert (=> b!868531 m!1116653))

(assert (=> b!868531 m!1116653))

(declare-fun m!1116655 () Bool)

(assert (=> b!868531 m!1116655))

(declare-fun m!1116657 () Bool)

(assert (=> b!868531 m!1116657))

(assert (=> b!868531 m!1116655))

(assert (=> b!868531 m!1116657))

(declare-fun m!1116659 () Bool)

(assert (=> b!868531 m!1116659))

(assert (=> b!867837 d!272842))

(assert (=> b!867837 d!272498))

(declare-fun b!868533 () Bool)

(declare-fun e!571606 () List!9407)

(assert (=> b!868533 (= e!571606 (++!2434 lt!327333 lt!327339))))

(declare-fun e!571607 () Bool)

(declare-fun b!868536 () Bool)

(declare-fun lt!327658 () List!9407)

(assert (=> b!868536 (= e!571607 (or (not (= (++!2434 lt!327333 lt!327339) Nil!9391)) (= lt!327658 lt!327334)))))

(declare-fun b!868534 () Bool)

(assert (=> b!868534 (= e!571606 (Cons!9391 (h!14792 lt!327334) (++!2434 (t!98903 lt!327334) (++!2434 lt!327333 lt!327339))))))

(declare-fun b!868535 () Bool)

(declare-fun res!395575 () Bool)

(assert (=> b!868535 (=> (not res!395575) (not e!571607))))

(assert (=> b!868535 (= res!395575 (= (size!7820 lt!327658) (+ (size!7820 lt!327334) (size!7820 (++!2434 lt!327333 lt!327339)))))))

(declare-fun d!272844 () Bool)

(assert (=> d!272844 e!571607))

(declare-fun res!395576 () Bool)

(assert (=> d!272844 (=> (not res!395576) (not e!571607))))

(assert (=> d!272844 (= res!395576 (= (content!1362 lt!327658) ((_ map or) (content!1362 lt!327334) (content!1362 (++!2434 lt!327333 lt!327339)))))))

(assert (=> d!272844 (= lt!327658 e!571606)))

(declare-fun c!140388 () Bool)

(assert (=> d!272844 (= c!140388 ((_ is Nil!9391) lt!327334))))

(assert (=> d!272844 (= (++!2434 lt!327334 (++!2434 lt!327333 lt!327339)) lt!327658)))

(assert (= (and d!272844 c!140388) b!868533))

(assert (= (and d!272844 (not c!140388)) b!868534))

(assert (= (and d!272844 res!395576) b!868535))

(assert (= (and b!868535 res!395575) b!868536))

(assert (=> b!868534 m!1114937))

(declare-fun m!1116661 () Bool)

(assert (=> b!868534 m!1116661))

(declare-fun m!1116663 () Bool)

(assert (=> b!868535 m!1116663))

(declare-fun m!1116665 () Bool)

(assert (=> b!868535 m!1116665))

(assert (=> b!868535 m!1114937))

(declare-fun m!1116667 () Bool)

(assert (=> b!868535 m!1116667))

(declare-fun m!1116669 () Bool)

(assert (=> d!272844 m!1116669))

(declare-fun m!1116671 () Bool)

(assert (=> d!272844 m!1116671))

(assert (=> d!272844 m!1114937))

(declare-fun m!1116673 () Bool)

(assert (=> d!272844 m!1116673))

(assert (=> b!867837 d!272844))

(assert (=> b!867837 d!272502))

(declare-fun d!272846 () Bool)

(assert (=> d!272846 (= (++!2434 (++!2434 lt!327334 lt!327333) lt!327339) (++!2434 lt!327334 (++!2434 lt!327333 lt!327339)))))

(declare-fun lt!327659 () Unit!13907)

(assert (=> d!272846 (= lt!327659 (choose!5108 lt!327334 lt!327333 lt!327339))))

(assert (=> d!272846 (= (lemmaConcatAssociativity!781 lt!327334 lt!327333 lt!327339) lt!327659)))

(declare-fun bs!233102 () Bool)

(assert (= bs!233102 d!272846))

(assert (=> bs!233102 m!1114931))

(assert (=> bs!233102 m!1114949))

(assert (=> bs!233102 m!1114937))

(assert (=> bs!233102 m!1114939))

(declare-fun m!1116675 () Bool)

(assert (=> bs!233102 m!1116675))

(assert (=> bs!233102 m!1114931))

(assert (=> bs!233102 m!1114937))

(assert (=> b!867837 d!272846))

(declare-fun b!868537 () Bool)

(declare-fun e!571608 () List!9407)

(assert (=> b!868537 (= e!571608 lt!327333)))

(declare-fun b!868540 () Bool)

(declare-fun lt!327660 () List!9407)

(declare-fun e!571609 () Bool)

(assert (=> b!868540 (= e!571609 (or (not (= lt!327333 Nil!9391)) (= lt!327660 lt!327334)))))

(declare-fun b!868538 () Bool)

(assert (=> b!868538 (= e!571608 (Cons!9391 (h!14792 lt!327334) (++!2434 (t!98903 lt!327334) lt!327333)))))

(declare-fun b!868539 () Bool)

(declare-fun res!395577 () Bool)

(assert (=> b!868539 (=> (not res!395577) (not e!571609))))

(assert (=> b!868539 (= res!395577 (= (size!7820 lt!327660) (+ (size!7820 lt!327334) (size!7820 lt!327333))))))

(declare-fun d!272848 () Bool)

(assert (=> d!272848 e!571609))

(declare-fun res!395578 () Bool)

(assert (=> d!272848 (=> (not res!395578) (not e!571609))))

(assert (=> d!272848 (= res!395578 (= (content!1362 lt!327660) ((_ map or) (content!1362 lt!327334) (content!1362 lt!327333))))))

(assert (=> d!272848 (= lt!327660 e!571608)))

(declare-fun c!140389 () Bool)

(assert (=> d!272848 (= c!140389 ((_ is Nil!9391) lt!327334))))

(assert (=> d!272848 (= (++!2434 lt!327334 lt!327333) lt!327660)))

(assert (= (and d!272848 c!140389) b!868537))

(assert (= (and d!272848 (not c!140389)) b!868538))

(assert (= (and d!272848 res!395578) b!868539))

(assert (= (and b!868539 res!395577) b!868540))

(declare-fun m!1116677 () Bool)

(assert (=> b!868538 m!1116677))

(declare-fun m!1116679 () Bool)

(assert (=> b!868539 m!1116679))

(assert (=> b!868539 m!1116665))

(declare-fun m!1116681 () Bool)

(assert (=> b!868539 m!1116681))

(declare-fun m!1116683 () Bool)

(assert (=> d!272848 m!1116683))

(assert (=> d!272848 m!1116671))

(declare-fun m!1116685 () Bool)

(assert (=> d!272848 m!1116685))

(assert (=> b!867837 d!272848))

(declare-fun d!272850 () Bool)

(assert (=> d!272850 (= (list!3705 (charsOf!1021 (h!14794 l!5107))) (list!3708 (c!140240 (charsOf!1021 (h!14794 l!5107)))))))

(declare-fun bs!233103 () Bool)

(assert (= bs!233103 d!272850))

(declare-fun m!1116687 () Bool)

(assert (=> bs!233103 m!1116687))

(assert (=> b!867837 d!272850))

(declare-fun b!868541 () Bool)

(declare-fun e!571610 () List!9407)

(assert (=> b!868541 (= e!571610 lt!327339)))

(declare-fun e!571611 () Bool)

(declare-fun lt!327661 () List!9407)

(declare-fun b!868544 () Bool)

(assert (=> b!868544 (= e!571611 (or (not (= lt!327339 Nil!9391)) (= lt!327661 lt!327333)))))

(declare-fun b!868542 () Bool)

(assert (=> b!868542 (= e!571610 (Cons!9391 (h!14792 lt!327333) (++!2434 (t!98903 lt!327333) lt!327339)))))

(declare-fun b!868543 () Bool)

(declare-fun res!395579 () Bool)

(assert (=> b!868543 (=> (not res!395579) (not e!571611))))

(assert (=> b!868543 (= res!395579 (= (size!7820 lt!327661) (+ (size!7820 lt!327333) (size!7820 lt!327339))))))

(declare-fun d!272852 () Bool)

(assert (=> d!272852 e!571611))

(declare-fun res!395580 () Bool)

(assert (=> d!272852 (=> (not res!395580) (not e!571611))))

(assert (=> d!272852 (= res!395580 (= (content!1362 lt!327661) ((_ map or) (content!1362 lt!327333) (content!1362 lt!327339))))))

(assert (=> d!272852 (= lt!327661 e!571610)))

(declare-fun c!140390 () Bool)

(assert (=> d!272852 (= c!140390 ((_ is Nil!9391) lt!327333))))

(assert (=> d!272852 (= (++!2434 lt!327333 lt!327339) lt!327661)))

(assert (= (and d!272852 c!140390) b!868541))

(assert (= (and d!272852 (not c!140390)) b!868542))

(assert (= (and d!272852 res!395580) b!868543))

(assert (= (and b!868543 res!395579) b!868544))

(declare-fun m!1116689 () Bool)

(assert (=> b!868542 m!1116689))

(declare-fun m!1116691 () Bool)

(assert (=> b!868543 m!1116691))

(assert (=> b!868543 m!1116681))

(assert (=> b!868543 m!1116645))

(declare-fun m!1116693 () Bool)

(assert (=> d!272852 m!1116693))

(assert (=> d!272852 m!1116685))

(assert (=> d!272852 m!1116651))

(assert (=> b!867837 d!272852))

(declare-fun d!272854 () Bool)

(assert (=> d!272854 (= ($colon$colon!117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 l!5107) separatorToken!297) separatorToken!297) (h!14794 l!5107)) (Cons!9393 (h!14794 l!5107) ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 l!5107) separatorToken!297) separatorToken!297)))))

(assert (=> b!867837 d!272854))

(declare-fun d!272856 () Bool)

(declare-fun lt!327662 () BalanceConc!6244)

(assert (=> d!272856 (= (list!3705 lt!327662) (originalCharacters!2320 (h!14794 l!5107)))))

(assert (=> d!272856 (= lt!327662 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (value!56973 (h!14794 l!5107))))))

(assert (=> d!272856 (= (charsOf!1021 (h!14794 l!5107)) lt!327662)))

(declare-fun b_lambda!29611 () Bool)

(assert (=> (not b_lambda!29611) (not d!272856)))

(assert (=> d!272856 t!98907))

(declare-fun b_and!78063 () Bool)

(assert (= b_and!78053 (and (=> t!98907 result!72506) b_and!78063)))

(assert (=> d!272856 t!98946))

(declare-fun b_and!78065 () Bool)

(assert (= b_and!78057 (and (=> t!98946 result!72552) b_and!78065)))

(assert (=> d!272856 t!98950))

(declare-fun b_and!78067 () Bool)

(assert (= b_and!78061 (and (=> t!98950 result!72562) b_and!78067)))

(assert (=> d!272856 t!98909))

(declare-fun b_and!78069 () Bool)

(assert (= b_and!78055 (and (=> t!98909 result!72510) b_and!78069)))

(assert (=> d!272856 t!98911))

(declare-fun b_and!78071 () Bool)

(assert (= b_and!78059 (and (=> t!98911 result!72512) b_and!78071)))

(declare-fun m!1116695 () Bool)

(assert (=> d!272856 m!1116695))

(assert (=> d!272856 m!1114559))

(assert (=> b!867837 d!272856))

(assert (=> b!867837 d!272520))

(assert (=> b!867837 d!272522))

(declare-fun d!272858 () Bool)

(declare-fun lt!327663 () Bool)

(assert (=> d!272858 (= lt!327663 (isEmpty!5582 (list!3705 (_2!6068 lt!327348))))))

(assert (=> d!272858 (= lt!327663 (isEmpty!5585 (c!140240 (_2!6068 lt!327348))))))

(assert (=> d!272858 (= (isEmpty!5583 (_2!6068 lt!327348)) lt!327663)))

(declare-fun bs!233104 () Bool)

(assert (= bs!233104 d!272858))

(declare-fun m!1116697 () Bool)

(assert (=> bs!233104 m!1116697))

(assert (=> bs!233104 m!1116697))

(declare-fun m!1116699 () Bool)

(assert (=> bs!233104 m!1116699))

(declare-fun m!1116701 () Bool)

(assert (=> bs!233104 m!1116701))

(assert (=> b!867856 d!272858))

(declare-fun d!272860 () Bool)

(assert (=> d!272860 (= (inv!11931 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (value!56973 (h!14794 l!5107)))) (isBalanced!865 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (value!56973 (h!14794 l!5107))))))))

(declare-fun bs!233105 () Bool)

(assert (= bs!233105 d!272860))

(declare-fun m!1116703 () Bool)

(assert (=> bs!233105 m!1116703))

(assert (=> tb!62693 d!272860))

(declare-fun d!272862 () Bool)

(assert (=> d!272862 (= (inv!11931 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (value!56973 separatorToken!297))) (isBalanced!865 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (value!56973 separatorToken!297)))))))

(declare-fun bs!233106 () Bool)

(assert (= bs!233106 d!272862))

(declare-fun m!1116705 () Bool)

(assert (=> bs!233106 m!1116705))

(assert (=> tb!62719 d!272862))

(declare-fun b!868545 () Bool)

(declare-fun e!571614 () Bool)

(assert (=> b!868545 (= e!571614 (inv!17 (value!56973 (h!14794 (t!98905 l!5107)))))))

(declare-fun b!868546 () Bool)

(declare-fun e!571613 () Bool)

(assert (=> b!868546 (= e!571613 (inv!16 (value!56973 (h!14794 (t!98905 l!5107)))))))

(declare-fun b!868547 () Bool)

(declare-fun res!395581 () Bool)

(declare-fun e!571612 () Bool)

(assert (=> b!868547 (=> res!395581 e!571612)))

(assert (=> b!868547 (= res!395581 (not ((_ is IntegerValue!5492) (value!56973 (h!14794 (t!98905 l!5107))))))))

(assert (=> b!868547 (= e!571614 e!571612)))

(declare-fun b!868549 () Bool)

(assert (=> b!868549 (= e!571612 (inv!15 (value!56973 (h!14794 (t!98905 l!5107)))))))

(declare-fun b!868548 () Bool)

(assert (=> b!868548 (= e!571613 e!571614)))

(declare-fun c!140392 () Bool)

(assert (=> b!868548 (= c!140392 ((_ is IntegerValue!5491) (value!56973 (h!14794 (t!98905 l!5107)))))))

(declare-fun d!272864 () Bool)

(declare-fun c!140391 () Bool)

(assert (=> d!272864 (= c!140391 ((_ is IntegerValue!5490) (value!56973 (h!14794 (t!98905 l!5107)))))))

(assert (=> d!272864 (= (inv!21 (value!56973 (h!14794 (t!98905 l!5107)))) e!571613)))

(assert (= (and d!272864 c!140391) b!868546))

(assert (= (and d!272864 (not c!140391)) b!868548))

(assert (= (and b!868548 c!140392) b!868545))

(assert (= (and b!868548 (not c!140392)) b!868547))

(assert (= (and b!868547 (not res!395581)) b!868549))

(declare-fun m!1116707 () Bool)

(assert (=> b!868545 m!1116707))

(declare-fun m!1116709 () Bool)

(assert (=> b!868546 m!1116709))

(declare-fun m!1116711 () Bool)

(assert (=> b!868549 m!1116711))

(assert (=> b!867894 d!272864))

(declare-fun d!272866 () Bool)

(assert (=> d!272866 (= (inv!17 (value!56973 separatorToken!297)) (= (charsToBigInt!1 (text!13258 (value!56973 separatorToken!297))) (value!56965 (value!56973 separatorToken!297))))))

(declare-fun bs!233107 () Bool)

(assert (= bs!233107 d!272866))

(declare-fun m!1116713 () Bool)

(assert (=> bs!233107 m!1116713))

(assert (=> b!867673 d!272866))

(declare-fun d!272868 () Bool)

(declare-fun lt!327665 () Bool)

(declare-fun e!571616 () Bool)

(assert (=> d!272868 (= lt!327665 e!571616)))

(declare-fun res!395583 () Bool)

(assert (=> d!272868 (=> (not res!395583) (not e!571616))))

(assert (=> d!272868 (= res!395583 (= (list!3706 (_1!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 (h!14794 l!5107)))))) (list!3706 (singletonSeq!587 (h!14794 l!5107)))))))

(declare-fun e!571615 () Bool)

(assert (=> d!272868 (= lt!327665 e!571615)))

(declare-fun res!395582 () Bool)

(assert (=> d!272868 (=> (not res!395582) (not e!571615))))

(declare-fun lt!327664 () tuple2!10484)

(assert (=> d!272868 (= res!395582 (= (size!7823 (_1!6068 lt!327664)) 1))))

(assert (=> d!272868 (= lt!327664 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 (h!14794 l!5107)))))))

(assert (=> d!272868 (not (isEmpty!5578 rules!2621))))

(assert (=> d!272868 (= (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 l!5107)) lt!327665)))

(declare-fun b!868550 () Bool)

(declare-fun res!395584 () Bool)

(assert (=> b!868550 (=> (not res!395584) (not e!571615))))

(assert (=> b!868550 (= res!395584 (= (apply!1979 (_1!6068 lt!327664) 0) (h!14794 l!5107)))))

(declare-fun b!868551 () Bool)

(assert (=> b!868551 (= e!571615 (isEmpty!5583 (_2!6068 lt!327664)))))

(declare-fun b!868552 () Bool)

(assert (=> b!868552 (= e!571616 (isEmpty!5583 (_2!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 (h!14794 l!5107)))))))))

(assert (= (and d!272868 res!395582) b!868550))

(assert (= (and b!868550 res!395584) b!868551))

(assert (= (and d!272868 res!395583) b!868552))

(declare-fun m!1116715 () Bool)

(assert (=> d!272868 m!1116715))

(declare-fun m!1116717 () Bool)

(assert (=> d!272868 m!1116717))

(declare-fun m!1116719 () Bool)

(assert (=> d!272868 m!1116719))

(declare-fun m!1116721 () Bool)

(assert (=> d!272868 m!1116721))

(declare-fun m!1116723 () Bool)

(assert (=> d!272868 m!1116723))

(assert (=> d!272868 m!1114527))

(assert (=> d!272868 m!1116719))

(declare-fun m!1116725 () Bool)

(assert (=> d!272868 m!1116725))

(assert (=> d!272868 m!1116719))

(assert (=> d!272868 m!1116715))

(declare-fun m!1116727 () Bool)

(assert (=> b!868550 m!1116727))

(declare-fun m!1116729 () Bool)

(assert (=> b!868551 m!1116729))

(assert (=> b!868552 m!1116719))

(assert (=> b!868552 m!1116719))

(assert (=> b!868552 m!1116715))

(assert (=> b!868552 m!1116715))

(assert (=> b!868552 m!1116717))

(declare-fun m!1116731 () Bool)

(assert (=> b!868552 m!1116731))

(assert (=> b!867592 d!272868))

(declare-fun d!272870 () Bool)

(declare-fun lt!327666 () BalanceConc!6244)

(assert (=> d!272870 (= (list!3705 lt!327666) (printList!504 thiss!20117 (list!3706 (singletonSeq!587 separatorToken!297))))))

(assert (=> d!272870 (= lt!327666 (printTailRec!486 thiss!20117 (singletonSeq!587 separatorToken!297) 0 (BalanceConc!6245 Empty!3115)))))

(assert (=> d!272870 (= (print!587 thiss!20117 (singletonSeq!587 separatorToken!297)) lt!327666)))

(declare-fun bs!233108 () Bool)

(assert (= bs!233108 d!272870))

(declare-fun m!1116733 () Bool)

(assert (=> bs!233108 m!1116733))

(assert (=> bs!233108 m!1115035))

(assert (=> bs!233108 m!1115041))

(assert (=> bs!233108 m!1115041))

(declare-fun m!1116735 () Bool)

(assert (=> bs!233108 m!1116735))

(assert (=> bs!233108 m!1115035))

(declare-fun m!1116737 () Bool)

(assert (=> bs!233108 m!1116737))

(assert (=> d!272384 d!272870))

(declare-fun b!868553 () Bool)

(declare-fun e!571617 () Bool)

(declare-fun e!571619 () Bool)

(assert (=> b!868553 (= e!571617 e!571619)))

(declare-fun lt!327667 () tuple2!10484)

(declare-fun res!395587 () Bool)

(assert (=> b!868553 (= res!395587 (< (size!7822 (_2!6068 lt!327667)) (size!7822 (print!587 thiss!20117 (singletonSeq!587 separatorToken!297)))))))

(assert (=> b!868553 (=> (not res!395587) (not e!571619))))

(declare-fun b!868554 () Bool)

(assert (=> b!868554 (= e!571617 (= (_2!6068 lt!327667) (print!587 thiss!20117 (singletonSeq!587 separatorToken!297))))))

(declare-fun b!868555 () Bool)

(declare-fun res!395586 () Bool)

(declare-fun e!571618 () Bool)

(assert (=> b!868555 (=> (not res!395586) (not e!571618))))

(assert (=> b!868555 (= res!395586 (= (list!3706 (_1!6068 lt!327667)) (_1!6070 (lexList!404 thiss!20117 rules!2621 (list!3705 (print!587 thiss!20117 (singletonSeq!587 separatorToken!297)))))))))

(declare-fun d!272872 () Bool)

(assert (=> d!272872 e!571618))

(declare-fun res!395585 () Bool)

(assert (=> d!272872 (=> (not res!395585) (not e!571618))))

(assert (=> d!272872 (= res!395585 e!571617)))

(declare-fun c!140393 () Bool)

(assert (=> d!272872 (= c!140393 (> (size!7823 (_1!6068 lt!327667)) 0))))

(assert (=> d!272872 (= lt!327667 (lexTailRecV2!311 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 separatorToken!297)) (BalanceConc!6245 Empty!3115) (print!587 thiss!20117 (singletonSeq!587 separatorToken!297)) (BalanceConc!6249 Empty!3117)))))

(assert (=> d!272872 (= (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 separatorToken!297))) lt!327667)))

(declare-fun b!868556 () Bool)

(assert (=> b!868556 (= e!571618 (= (list!3705 (_2!6068 lt!327667)) (_2!6070 (lexList!404 thiss!20117 rules!2621 (list!3705 (print!587 thiss!20117 (singletonSeq!587 separatorToken!297)))))))))

(declare-fun b!868557 () Bool)

(assert (=> b!868557 (= e!571619 (not (isEmpty!5586 (_1!6068 lt!327667))))))

(assert (= (and d!272872 c!140393) b!868553))

(assert (= (and d!272872 (not c!140393)) b!868554))

(assert (= (and b!868553 res!395587) b!868557))

(assert (= (and d!272872 res!395585) b!868555))

(assert (= (and b!868555 res!395586) b!868556))

(declare-fun m!1116739 () Bool)

(assert (=> b!868553 m!1116739))

(assert (=> b!868553 m!1115031))

(declare-fun m!1116741 () Bool)

(assert (=> b!868553 m!1116741))

(declare-fun m!1116743 () Bool)

(assert (=> d!272872 m!1116743))

(assert (=> d!272872 m!1115031))

(assert (=> d!272872 m!1115031))

(declare-fun m!1116745 () Bool)

(assert (=> d!272872 m!1116745))

(declare-fun m!1116747 () Bool)

(assert (=> b!868555 m!1116747))

(assert (=> b!868555 m!1115031))

(declare-fun m!1116749 () Bool)

(assert (=> b!868555 m!1116749))

(assert (=> b!868555 m!1116749))

(declare-fun m!1116751 () Bool)

(assert (=> b!868555 m!1116751))

(declare-fun m!1116753 () Bool)

(assert (=> b!868557 m!1116753))

(declare-fun m!1116755 () Bool)

(assert (=> b!868556 m!1116755))

(assert (=> b!868556 m!1115031))

(assert (=> b!868556 m!1116749))

(assert (=> b!868556 m!1116749))

(assert (=> b!868556 m!1116751))

(assert (=> d!272384 d!272872))

(declare-fun d!272874 () Bool)

(declare-fun list!3710 (Conc!3117) List!9409)

(assert (=> d!272874 (= (list!3706 (_1!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 separatorToken!297))))) (list!3710 (c!140282 (_1!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 separatorToken!297)))))))))

(declare-fun bs!233109 () Bool)

(assert (= bs!233109 d!272874))

(declare-fun m!1116757 () Bool)

(assert (=> bs!233109 m!1116757))

(assert (=> d!272384 d!272874))

(assert (=> d!272384 d!272366))

(declare-fun d!272876 () Bool)

(declare-fun lt!327670 () Int)

(declare-fun size!7827 (List!9409) Int)

(assert (=> d!272876 (= lt!327670 (size!7827 (list!3706 (_1!6068 lt!327350))))))

(declare-fun size!7828 (Conc!3117) Int)

(assert (=> d!272876 (= lt!327670 (size!7828 (c!140282 (_1!6068 lt!327350))))))

(assert (=> d!272876 (= (size!7823 (_1!6068 lt!327350)) lt!327670)))

(declare-fun bs!233110 () Bool)

(assert (= bs!233110 d!272876))

(declare-fun m!1116759 () Bool)

(assert (=> bs!233110 m!1116759))

(assert (=> bs!233110 m!1116759))

(declare-fun m!1116761 () Bool)

(assert (=> bs!233110 m!1116761))

(declare-fun m!1116763 () Bool)

(assert (=> bs!233110 m!1116763))

(assert (=> d!272384 d!272876))

(declare-fun d!272878 () Bool)

(assert (=> d!272878 (= (list!3706 (singletonSeq!587 separatorToken!297)) (list!3710 (c!140282 (singletonSeq!587 separatorToken!297))))))

(declare-fun bs!233111 () Bool)

(assert (= bs!233111 d!272878))

(declare-fun m!1116765 () Bool)

(assert (=> bs!233111 m!1116765))

(assert (=> d!272384 d!272878))

(declare-fun d!272880 () Bool)

(declare-fun e!571620 () Bool)

(assert (=> d!272880 e!571620))

(declare-fun res!395588 () Bool)

(assert (=> d!272880 (=> (not res!395588) (not e!571620))))

(declare-fun lt!327671 () BalanceConc!6248)

(assert (=> d!272880 (= res!395588 (= (list!3706 lt!327671) (Cons!9393 separatorToken!297 Nil!9393)))))

(assert (=> d!272880 (= lt!327671 (singleton!281 separatorToken!297))))

(assert (=> d!272880 (= (singletonSeq!587 separatorToken!297) lt!327671)))

(declare-fun b!868558 () Bool)

(assert (=> b!868558 (= e!571620 (isBalanced!864 (c!140282 lt!327671)))))

(assert (= (and d!272880 res!395588) b!868558))

(declare-fun m!1116767 () Bool)

(assert (=> d!272880 m!1116767))

(declare-fun m!1116769 () Bool)

(assert (=> d!272880 m!1116769))

(declare-fun m!1116771 () Bool)

(assert (=> b!868558 m!1116771))

(assert (=> d!272384 d!272880))

(declare-fun d!272882 () Bool)

(assert (=> d!272882 (= (inv!15 (value!56973 separatorToken!297)) (= (charsToBigInt!0 (text!13259 (value!56973 separatorToken!297)) 0) (value!56968 (value!56973 separatorToken!297))))))

(declare-fun bs!233112 () Bool)

(assert (= bs!233112 d!272882))

(declare-fun m!1116773 () Bool)

(assert (=> bs!233112 m!1116773))

(assert (=> b!867677 d!272882))

(declare-fun d!272884 () Bool)

(declare-fun res!395593 () Bool)

(declare-fun e!571625 () Bool)

(assert (=> d!272884 (=> res!395593 e!571625)))

(assert (=> d!272884 (= res!395593 ((_ is Nil!9392) rules!2621))))

(assert (=> d!272884 (= (noDuplicateTag!633 thiss!20117 rules!2621 Nil!9395) e!571625)))

(declare-fun b!868563 () Bool)

(declare-fun e!571626 () Bool)

(assert (=> b!868563 (= e!571625 e!571626)))

(declare-fun res!395594 () Bool)

(assert (=> b!868563 (=> (not res!395594) (not e!571626))))

(declare-fun contains!1716 (List!9411 String!11048) Bool)

(assert (=> b!868563 (= res!395594 (not (contains!1716 Nil!9395 (tag!2026 (h!14793 rules!2621)))))))

(declare-fun b!868564 () Bool)

(assert (=> b!868564 (= e!571626 (noDuplicateTag!633 thiss!20117 (t!98904 rules!2621) (Cons!9395 (tag!2026 (h!14793 rules!2621)) Nil!9395)))))

(assert (= (and d!272884 (not res!395593)) b!868563))

(assert (= (and b!868563 res!395594) b!868564))

(declare-fun m!1116775 () Bool)

(assert (=> b!868563 m!1116775))

(declare-fun m!1116777 () Bool)

(assert (=> b!868564 m!1116777))

(assert (=> b!867863 d!272884))

(declare-fun d!272886 () Bool)

(declare-fun res!395595 () Bool)

(declare-fun e!571627 () Bool)

(assert (=> d!272886 (=> res!395595 e!571627)))

(assert (=> d!272886 (= res!395595 (not ((_ is Cons!9392) (t!98904 rules!2621))))))

(assert (=> d!272886 (= (sepAndNonSepRulesDisjointChars!564 rules!2621 (t!98904 rules!2621)) e!571627)))

(declare-fun b!868565 () Bool)

(declare-fun e!571628 () Bool)

(assert (=> b!868565 (= e!571627 e!571628)))

(declare-fun res!395596 () Bool)

(assert (=> b!868565 (=> (not res!395596) (not e!571628))))

(assert (=> b!868565 (= res!395596 (ruleDisjointCharsFromAllFromOtherType!269 (h!14793 (t!98904 rules!2621)) rules!2621))))

(declare-fun b!868566 () Bool)

(assert (=> b!868566 (= e!571628 (sepAndNonSepRulesDisjointChars!564 rules!2621 (t!98904 (t!98904 rules!2621))))))

(assert (= (and d!272886 (not res!395595)) b!868565))

(assert (= (and b!868565 res!395596) b!868566))

(declare-fun m!1116779 () Bool)

(assert (=> b!868565 m!1116779))

(declare-fun m!1116781 () Bool)

(assert (=> b!868566 m!1116781))

(assert (=> b!867662 d!272886))

(declare-fun d!272888 () Bool)

(assert (=> d!272888 (= (isEmpty!5582 (originalCharacters!2320 separatorToken!297)) ((_ is Nil!9391) (originalCharacters!2320 separatorToken!297)))))

(assert (=> d!272376 d!272888))

(declare-fun d!272890 () Bool)

(declare-fun res!395597 () Bool)

(declare-fun e!571630 () Bool)

(assert (=> d!272890 (=> res!395597 e!571630)))

(assert (=> d!272890 (= res!395597 (or (not ((_ is Cons!9393) (Cons!9393 (h!14794 (t!98905 lt!327185)) (t!98905 (t!98905 lt!327185))))) (not ((_ is Cons!9393) (t!98905 (Cons!9393 (h!14794 (t!98905 lt!327185)) (t!98905 (t!98905 lt!327185))))))))))

(assert (=> d!272890 (= (tokensListTwoByTwoPredicateSeparableList!60 thiss!20117 (Cons!9393 (h!14794 (t!98905 lt!327185)) (t!98905 (t!98905 lt!327185))) rules!2621) e!571630)))

(declare-fun b!868567 () Bool)

(declare-fun e!571629 () Bool)

(assert (=> b!868567 (= e!571630 e!571629)))

(declare-fun res!395598 () Bool)

(assert (=> b!868567 (=> (not res!395598) (not e!571629))))

(assert (=> b!868567 (= res!395598 (separableTokensPredicate!84 thiss!20117 (h!14794 (Cons!9393 (h!14794 (t!98905 lt!327185)) (t!98905 (t!98905 lt!327185)))) (h!14794 (t!98905 (Cons!9393 (h!14794 (t!98905 lt!327185)) (t!98905 (t!98905 lt!327185))))) rules!2621))))

(declare-fun lt!327677 () Unit!13907)

(declare-fun Unit!13924 () Unit!13907)

(assert (=> b!868567 (= lt!327677 Unit!13924)))

(assert (=> b!868567 (> (size!7822 (charsOf!1021 (h!14794 (t!98905 (Cons!9393 (h!14794 (t!98905 lt!327185)) (t!98905 (t!98905 lt!327185))))))) 0)))

(declare-fun lt!327675 () Unit!13907)

(declare-fun Unit!13925 () Unit!13907)

(assert (=> b!868567 (= lt!327675 Unit!13925)))

(assert (=> b!868567 (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 (t!98905 (Cons!9393 (h!14794 (t!98905 lt!327185)) (t!98905 (t!98905 lt!327185))))))))

(declare-fun lt!327674 () Unit!13907)

(declare-fun Unit!13926 () Unit!13907)

(assert (=> b!868567 (= lt!327674 Unit!13926)))

(assert (=> b!868567 (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 (Cons!9393 (h!14794 (t!98905 lt!327185)) (t!98905 (t!98905 lt!327185)))))))

(declare-fun lt!327676 () Unit!13907)

(declare-fun lt!327672 () Unit!13907)

(assert (=> b!868567 (= lt!327676 lt!327672)))

(assert (=> b!868567 (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 (t!98905 (Cons!9393 (h!14794 (t!98905 lt!327185)) (t!98905 (t!98905 lt!327185))))))))

(assert (=> b!868567 (= lt!327672 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!242 thiss!20117 rules!2621 (Cons!9393 (h!14794 (t!98905 lt!327185)) (t!98905 (t!98905 lt!327185))) (h!14794 (t!98905 (Cons!9393 (h!14794 (t!98905 lt!327185)) (t!98905 (t!98905 lt!327185)))))))))

(declare-fun lt!327678 () Unit!13907)

(declare-fun lt!327673 () Unit!13907)

(assert (=> b!868567 (= lt!327678 lt!327673)))

(assert (=> b!868567 (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 (Cons!9393 (h!14794 (t!98905 lt!327185)) (t!98905 (t!98905 lt!327185)))))))

(assert (=> b!868567 (= lt!327673 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!242 thiss!20117 rules!2621 (Cons!9393 (h!14794 (t!98905 lt!327185)) (t!98905 (t!98905 lt!327185))) (h!14794 (Cons!9393 (h!14794 (t!98905 lt!327185)) (t!98905 (t!98905 lt!327185))))))))

(declare-fun b!868568 () Bool)

(assert (=> b!868568 (= e!571629 (tokensListTwoByTwoPredicateSeparableList!60 thiss!20117 (Cons!9393 (h!14794 (t!98905 (Cons!9393 (h!14794 (t!98905 lt!327185)) (t!98905 (t!98905 lt!327185))))) (t!98905 (t!98905 (Cons!9393 (h!14794 (t!98905 lt!327185)) (t!98905 (t!98905 lt!327185)))))) rules!2621))))

(assert (= (and d!272890 (not res!395597)) b!868567))

(assert (= (and b!868567 res!395598) b!868568))

(declare-fun m!1116783 () Bool)

(assert (=> b!868567 m!1116783))

(declare-fun m!1116785 () Bool)

(assert (=> b!868567 m!1116785))

(declare-fun m!1116787 () Bool)

(assert (=> b!868567 m!1116787))

(assert (=> b!868567 m!1116787))

(declare-fun m!1116789 () Bool)

(assert (=> b!868567 m!1116789))

(declare-fun m!1116791 () Bool)

(assert (=> b!868567 m!1116791))

(declare-fun m!1116793 () Bool)

(assert (=> b!868567 m!1116793))

(declare-fun m!1116795 () Bool)

(assert (=> b!868567 m!1116795))

(declare-fun m!1116797 () Bool)

(assert (=> b!868568 m!1116797))

(assert (=> b!867656 d!272890))

(declare-fun d!272892 () Bool)

(declare-fun lt!327679 () Token!3194)

(assert (=> d!272892 (= lt!327679 (apply!1980 (list!3706 (_1!6068 lt!327346)) 0))))

(assert (=> d!272892 (= lt!327679 (apply!1981 (c!140282 (_1!6068 lt!327346)) 0))))

(declare-fun e!571631 () Bool)

(assert (=> d!272892 e!571631))

(declare-fun res!395599 () Bool)

(assert (=> d!272892 (=> (not res!395599) (not e!571631))))

(assert (=> d!272892 (= res!395599 (<= 0 0))))

(assert (=> d!272892 (= (apply!1979 (_1!6068 lt!327346) 0) lt!327679)))

(declare-fun b!868569 () Bool)

(assert (=> b!868569 (= e!571631 (< 0 (size!7823 (_1!6068 lt!327346))))))

(assert (= (and d!272892 res!395599) b!868569))

(declare-fun m!1116799 () Bool)

(assert (=> d!272892 m!1116799))

(assert (=> d!272892 m!1116799))

(declare-fun m!1116801 () Bool)

(assert (=> d!272892 m!1116801))

(declare-fun m!1116803 () Bool)

(assert (=> d!272892 m!1116803))

(assert (=> b!868569 m!1114981))

(assert (=> b!867852 d!272892))

(assert (=> d!272370 d!272558))

(assert (=> d!272370 d!272366))

(declare-fun d!272894 () Bool)

(declare-fun lt!327680 () Int)

(assert (=> d!272894 (= lt!327680 (size!7827 (list!3706 (_1!6068 lt!327348))))))

(assert (=> d!272894 (= lt!327680 (size!7828 (c!140282 (_1!6068 lt!327348))))))

(assert (=> d!272894 (= (size!7823 (_1!6068 lt!327348)) lt!327680)))

(declare-fun bs!233113 () Bool)

(assert (= bs!233113 d!272894))

(assert (=> bs!233113 m!1115393))

(assert (=> bs!233113 m!1115393))

(declare-fun m!1116805 () Bool)

(assert (=> bs!233113 m!1116805))

(declare-fun m!1116807 () Bool)

(assert (=> bs!233113 m!1116807))

(assert (=> d!272370 d!272894))

(declare-fun d!272896 () Bool)

(assert (=> d!272896 (= (list!3706 (singletonSeq!587 (h!14794 (t!98905 lt!327189)))) (list!3710 (c!140282 (singletonSeq!587 (h!14794 (t!98905 lt!327189))))))))

(declare-fun bs!233114 () Bool)

(assert (= bs!233114 d!272896))

(declare-fun m!1116809 () Bool)

(assert (=> bs!233114 m!1116809))

(assert (=> d!272370 d!272896))

(declare-fun d!272898 () Bool)

(assert (=> d!272898 (= (list!3706 (_1!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 (h!14794 (t!98905 lt!327189))))))) (list!3710 (c!140282 (_1!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 (h!14794 (t!98905 lt!327189)))))))))))

(declare-fun bs!233115 () Bool)

(assert (= bs!233115 d!272898))

(declare-fun m!1116811 () Bool)

(assert (=> bs!233115 m!1116811))

(assert (=> d!272370 d!272898))

(assert (=> d!272370 d!272544))

(assert (=> d!272370 d!272526))

(declare-fun d!272900 () Bool)

(declare-fun lt!327681 () Token!3194)

(assert (=> d!272900 (= lt!327681 (apply!1980 (list!3706 (_1!6068 lt!327350)) 0))))

(assert (=> d!272900 (= lt!327681 (apply!1981 (c!140282 (_1!6068 lt!327350)) 0))))

(declare-fun e!571632 () Bool)

(assert (=> d!272900 e!571632))

(declare-fun res!395600 () Bool)

(assert (=> d!272900 (=> (not res!395600) (not e!571632))))

(assert (=> d!272900 (= res!395600 (<= 0 0))))

(assert (=> d!272900 (= (apply!1979 (_1!6068 lt!327350) 0) lt!327681)))

(declare-fun b!868570 () Bool)

(assert (=> b!868570 (= e!571632 (< 0 (size!7823 (_1!6068 lt!327350))))))

(assert (= (and d!272900 res!395600) b!868570))

(assert (=> d!272900 m!1116759))

(assert (=> d!272900 m!1116759))

(declare-fun m!1116813 () Bool)

(assert (=> d!272900 m!1116813))

(declare-fun m!1116815 () Bool)

(assert (=> d!272900 m!1116815))

(assert (=> b!868570 m!1115037))

(assert (=> b!867865 d!272900))

(assert (=> d!272346 d!272324))

(declare-fun d!272902 () Bool)

(assert (=> d!272902 (separableTokensPredicate!84 thiss!20117 (h!14794 lt!327189) (h!14794 (t!98905 lt!327189)) rules!2621)))

(assert (=> d!272902 true))

(declare-fun _$37!244 () Unit!13907)

(assert (=> d!272902 (= (choose!5105 thiss!20117 (h!14794 lt!327189) (h!14794 (t!98905 lt!327189)) rules!2621) _$37!244)))

(declare-fun bs!233116 () Bool)

(assert (= bs!233116 d!272902))

(assert (=> bs!233116 m!1114541))

(assert (=> d!272346 d!272902))

(assert (=> d!272346 d!272366))

(declare-fun lt!327682 () Bool)

(declare-fun d!272904 () Bool)

(assert (=> d!272904 (= lt!327682 (isEmpty!5582 (list!3705 (_2!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 lt!327184)))))))))

(assert (=> d!272904 (= lt!327682 (isEmpty!5585 (c!140240 (_2!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 lt!327184)))))))))

(assert (=> d!272904 (= (isEmpty!5583 (_2!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 lt!327184))))) lt!327682)))

(declare-fun bs!233117 () Bool)

(assert (= bs!233117 d!272904))

(declare-fun m!1116817 () Bool)

(assert (=> bs!233117 m!1116817))

(assert (=> bs!233117 m!1116817))

(declare-fun m!1116819 () Bool)

(assert (=> bs!233117 m!1116819))

(declare-fun m!1116821 () Bool)

(assert (=> bs!233117 m!1116821))

(assert (=> b!867854 d!272904))

(declare-fun b!868571 () Bool)

(declare-fun e!571633 () Bool)

(declare-fun e!571635 () Bool)

(assert (=> b!868571 (= e!571633 e!571635)))

(declare-fun res!395603 () Bool)

(declare-fun lt!327683 () tuple2!10484)

(assert (=> b!868571 (= res!395603 (< (size!7822 (_2!6068 lt!327683)) (size!7822 (print!587 thiss!20117 (singletonSeq!587 lt!327184)))))))

(assert (=> b!868571 (=> (not res!395603) (not e!571635))))

(declare-fun b!868572 () Bool)

(assert (=> b!868572 (= e!571633 (= (_2!6068 lt!327683) (print!587 thiss!20117 (singletonSeq!587 lt!327184))))))

(declare-fun b!868573 () Bool)

(declare-fun res!395602 () Bool)

(declare-fun e!571634 () Bool)

(assert (=> b!868573 (=> (not res!395602) (not e!571634))))

(assert (=> b!868573 (= res!395602 (= (list!3706 (_1!6068 lt!327683)) (_1!6070 (lexList!404 thiss!20117 rules!2621 (list!3705 (print!587 thiss!20117 (singletonSeq!587 lt!327184)))))))))

(declare-fun d!272906 () Bool)

(assert (=> d!272906 e!571634))

(declare-fun res!395601 () Bool)

(assert (=> d!272906 (=> (not res!395601) (not e!571634))))

(assert (=> d!272906 (= res!395601 e!571633)))

(declare-fun c!140394 () Bool)

(assert (=> d!272906 (= c!140394 (> (size!7823 (_1!6068 lt!327683)) 0))))

(assert (=> d!272906 (= lt!327683 (lexTailRecV2!311 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 lt!327184)) (BalanceConc!6245 Empty!3115) (print!587 thiss!20117 (singletonSeq!587 lt!327184)) (BalanceConc!6249 Empty!3117)))))

(assert (=> d!272906 (= (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 lt!327184))) lt!327683)))

(declare-fun b!868574 () Bool)

(assert (=> b!868574 (= e!571634 (= (list!3705 (_2!6068 lt!327683)) (_2!6070 (lexList!404 thiss!20117 rules!2621 (list!3705 (print!587 thiss!20117 (singletonSeq!587 lt!327184)))))))))

(declare-fun b!868575 () Bool)

(assert (=> b!868575 (= e!571635 (not (isEmpty!5586 (_1!6068 lt!327683))))))

(assert (= (and d!272906 c!140394) b!868571))

(assert (= (and d!272906 (not c!140394)) b!868572))

(assert (= (and b!868571 res!395603) b!868575))

(assert (= (and d!272906 res!395601) b!868573))

(assert (= (and b!868573 res!395602) b!868574))

(declare-fun m!1116823 () Bool)

(assert (=> b!868571 m!1116823))

(assert (=> b!868571 m!1114975))

(declare-fun m!1116825 () Bool)

(assert (=> b!868571 m!1116825))

(declare-fun m!1116827 () Bool)

(assert (=> d!272906 m!1116827))

(assert (=> d!272906 m!1114975))

(assert (=> d!272906 m!1114975))

(declare-fun m!1116829 () Bool)

(assert (=> d!272906 m!1116829))

(declare-fun m!1116831 () Bool)

(assert (=> b!868573 m!1116831))

(assert (=> b!868573 m!1114975))

(declare-fun m!1116833 () Bool)

(assert (=> b!868573 m!1116833))

(assert (=> b!868573 m!1116833))

(declare-fun m!1116835 () Bool)

(assert (=> b!868573 m!1116835))

(declare-fun m!1116837 () Bool)

(assert (=> b!868575 m!1116837))

(declare-fun m!1116839 () Bool)

(assert (=> b!868574 m!1116839))

(assert (=> b!868574 m!1114975))

(assert (=> b!868574 m!1116833))

(assert (=> b!868574 m!1116833))

(assert (=> b!868574 m!1116835))

(assert (=> b!867854 d!272906))

(declare-fun d!272908 () Bool)

(declare-fun lt!327684 () BalanceConc!6244)

(assert (=> d!272908 (= (list!3705 lt!327684) (printList!504 thiss!20117 (list!3706 (singletonSeq!587 lt!327184))))))

(assert (=> d!272908 (= lt!327684 (printTailRec!486 thiss!20117 (singletonSeq!587 lt!327184) 0 (BalanceConc!6245 Empty!3115)))))

(assert (=> d!272908 (= (print!587 thiss!20117 (singletonSeq!587 lt!327184)) lt!327684)))

(declare-fun bs!233118 () Bool)

(assert (= bs!233118 d!272908))

(declare-fun m!1116841 () Bool)

(assert (=> bs!233118 m!1116841))

(assert (=> bs!233118 m!1114979))

(assert (=> bs!233118 m!1114985))

(assert (=> bs!233118 m!1114985))

(declare-fun m!1116843 () Bool)

(assert (=> bs!233118 m!1116843))

(assert (=> bs!233118 m!1114979))

(declare-fun m!1116845 () Bool)

(assert (=> bs!233118 m!1116845))

(assert (=> b!867854 d!272908))

(declare-fun d!272910 () Bool)

(declare-fun e!571636 () Bool)

(assert (=> d!272910 e!571636))

(declare-fun res!395604 () Bool)

(assert (=> d!272910 (=> (not res!395604) (not e!571636))))

(declare-fun lt!327685 () BalanceConc!6248)

(assert (=> d!272910 (= res!395604 (= (list!3706 lt!327685) (Cons!9393 lt!327184 Nil!9393)))))

(assert (=> d!272910 (= lt!327685 (singleton!281 lt!327184))))

(assert (=> d!272910 (= (singletonSeq!587 lt!327184) lt!327685)))

(declare-fun b!868576 () Bool)

(assert (=> b!868576 (= e!571636 (isBalanced!864 (c!140282 lt!327685)))))

(assert (= (and d!272910 res!395604) b!868576))

(declare-fun m!1116847 () Bool)

(assert (=> d!272910 m!1116847))

(declare-fun m!1116849 () Bool)

(assert (=> d!272910 m!1116849))

(declare-fun m!1116851 () Bool)

(assert (=> b!868576 m!1116851))

(assert (=> b!867854 d!272910))

(declare-fun d!272912 () Bool)

(declare-fun lt!327686 () Int)

(assert (=> d!272912 (>= lt!327686 0)))

(declare-fun e!571637 () Int)

(assert (=> d!272912 (= lt!327686 e!571637)))

(declare-fun c!140395 () Bool)

(assert (=> d!272912 (= c!140395 ((_ is Nil!9391) (originalCharacters!2320 separatorToken!297)))))

(assert (=> d!272912 (= (size!7820 (originalCharacters!2320 separatorToken!297)) lt!327686)))

(declare-fun b!868577 () Bool)

(assert (=> b!868577 (= e!571637 0)))

(declare-fun b!868578 () Bool)

(assert (=> b!868578 (= e!571637 (+ 1 (size!7820 (t!98903 (originalCharacters!2320 separatorToken!297)))))))

(assert (= (and d!272912 c!140395) b!868577))

(assert (= (and d!272912 (not c!140395)) b!868578))

(declare-fun m!1116853 () Bool)

(assert (=> b!868578 m!1116853))

(assert (=> b!867859 d!272912))

(declare-fun b!868579 () Bool)

(declare-fun e!571638 () List!9407)

(assert (=> b!868579 (= e!571638 (printList!504 thiss!20117 (t!98905 lt!327359)))))

(declare-fun b!868582 () Bool)

(declare-fun lt!327687 () List!9407)

(declare-fun e!571639 () Bool)

(assert (=> b!868582 (= e!571639 (or (not (= (printList!504 thiss!20117 (t!98905 lt!327359)) Nil!9391)) (= lt!327687 (list!3705 (charsOf!1021 (h!14794 lt!327359))))))))

(declare-fun b!868580 () Bool)

(assert (=> b!868580 (= e!571638 (Cons!9391 (h!14792 (list!3705 (charsOf!1021 (h!14794 lt!327359)))) (++!2434 (t!98903 (list!3705 (charsOf!1021 (h!14794 lt!327359)))) (printList!504 thiss!20117 (t!98905 lt!327359)))))))

(declare-fun b!868581 () Bool)

(declare-fun res!395605 () Bool)

(assert (=> b!868581 (=> (not res!395605) (not e!571639))))

(assert (=> b!868581 (= res!395605 (= (size!7820 lt!327687) (+ (size!7820 (list!3705 (charsOf!1021 (h!14794 lt!327359)))) (size!7820 (printList!504 thiss!20117 (t!98905 lt!327359))))))))

(declare-fun d!272914 () Bool)

(assert (=> d!272914 e!571639))

(declare-fun res!395606 () Bool)

(assert (=> d!272914 (=> (not res!395606) (not e!571639))))

(assert (=> d!272914 (= res!395606 (= (content!1362 lt!327687) ((_ map or) (content!1362 (list!3705 (charsOf!1021 (h!14794 lt!327359)))) (content!1362 (printList!504 thiss!20117 (t!98905 lt!327359))))))))

(assert (=> d!272914 (= lt!327687 e!571638)))

(declare-fun c!140396 () Bool)

(assert (=> d!272914 (= c!140396 ((_ is Nil!9391) (list!3705 (charsOf!1021 (h!14794 lt!327359)))))))

(assert (=> d!272914 (= (++!2434 (list!3705 (charsOf!1021 (h!14794 lt!327359))) (printList!504 thiss!20117 (t!98905 lt!327359))) lt!327687)))

(assert (= (and d!272914 c!140396) b!868579))

(assert (= (and d!272914 (not c!140396)) b!868580))

(assert (= (and d!272914 res!395606) b!868581))

(assert (= (and b!868581 res!395605) b!868582))

(assert (=> b!868580 m!1115053))

(declare-fun m!1116855 () Bool)

(assert (=> b!868580 m!1116855))

(declare-fun m!1116857 () Bool)

(assert (=> b!868581 m!1116857))

(assert (=> b!868581 m!1115051))

(declare-fun m!1116859 () Bool)

(assert (=> b!868581 m!1116859))

(assert (=> b!868581 m!1115053))

(declare-fun m!1116861 () Bool)

(assert (=> b!868581 m!1116861))

(declare-fun m!1116863 () Bool)

(assert (=> d!272914 m!1116863))

(assert (=> d!272914 m!1115051))

(declare-fun m!1116865 () Bool)

(assert (=> d!272914 m!1116865))

(assert (=> d!272914 m!1115053))

(declare-fun m!1116867 () Bool)

(assert (=> d!272914 m!1116867))

(assert (=> b!867868 d!272914))

(declare-fun d!272916 () Bool)

(assert (=> d!272916 (= (list!3705 (charsOf!1021 (h!14794 lt!327359))) (list!3708 (c!140240 (charsOf!1021 (h!14794 lt!327359)))))))

(declare-fun bs!233119 () Bool)

(assert (= bs!233119 d!272916))

(declare-fun m!1116869 () Bool)

(assert (=> bs!233119 m!1116869))

(assert (=> b!867868 d!272916))

(declare-fun d!272918 () Bool)

(declare-fun lt!327688 () BalanceConc!6244)

(assert (=> d!272918 (= (list!3705 lt!327688) (originalCharacters!2320 (h!14794 lt!327359)))))

(assert (=> d!272918 (= lt!327688 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327359)))) (value!56973 (h!14794 lt!327359))))))

(assert (=> d!272918 (= (charsOf!1021 (h!14794 lt!327359)) lt!327688)))

(declare-fun b_lambda!29613 () Bool)

(assert (=> (not b_lambda!29613) (not d!272918)))

(declare-fun tb!62937 () Bool)

(declare-fun t!99167 () Bool)

(assert (=> (and b!867500 (= (toChars!2692 (transformation!1764 (h!14793 rules!2621))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327359))))) t!99167) tb!62937))

(declare-fun b!868583 () Bool)

(declare-fun e!571640 () Bool)

(declare-fun tp!274686 () Bool)

(assert (=> b!868583 (= e!571640 (and (inv!11930 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327359)))) (value!56973 (h!14794 lt!327359))))) tp!274686))))

(declare-fun result!72772 () Bool)

(assert (=> tb!62937 (= result!72772 (and (inv!11931 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327359)))) (value!56973 (h!14794 lt!327359)))) e!571640))))

(assert (= tb!62937 b!868583))

(declare-fun m!1116871 () Bool)

(assert (=> b!868583 m!1116871))

(declare-fun m!1116873 () Bool)

(assert (=> tb!62937 m!1116873))

(assert (=> d!272918 t!99167))

(declare-fun b_and!78073 () Bool)

(assert (= b_and!78069 (and (=> t!99167 result!72772) b_and!78073)))

(declare-fun t!99169 () Bool)

(declare-fun tb!62939 () Bool)

(assert (=> (and b!867508 (= (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327359))))) t!99169) tb!62939))

(declare-fun result!72774 () Bool)

(assert (= result!72774 result!72772))

(assert (=> d!272918 t!99169))

(declare-fun b_and!78075 () Bool)

(assert (= b_and!78071 (and (=> t!99169 result!72774) b_and!78075)))

(declare-fun tb!62941 () Bool)

(declare-fun t!99171 () Bool)

(assert (=> (and b!867930 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 rules!2621)))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327359))))) t!99171) tb!62941))

(declare-fun result!72776 () Bool)

(assert (= result!72776 result!72772))

(assert (=> d!272918 t!99171))

(declare-fun b_and!78077 () Bool)

(assert (= b_and!78067 (and (=> t!99171 result!72776) b_and!78077)))

(declare-fun tb!62943 () Bool)

(declare-fun t!99173 () Bool)

(assert (=> (and b!867510 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327359))))) t!99173) tb!62943))

(declare-fun result!72778 () Bool)

(assert (= result!72778 result!72772))

(assert (=> d!272918 t!99173))

(declare-fun b_and!78079 () Bool)

(assert (= b_and!78063 (and (=> t!99173 result!72778) b_and!78079)))

(declare-fun tb!62945 () Bool)

(declare-fun t!99175 () Bool)

(assert (=> (and b!867896 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327359))))) t!99175) tb!62945))

(declare-fun result!72780 () Bool)

(assert (= result!72780 result!72772))

(assert (=> d!272918 t!99175))

(declare-fun b_and!78081 () Bool)

(assert (= b_and!78065 (and (=> t!99175 result!72780) b_and!78081)))

(declare-fun m!1116875 () Bool)

(assert (=> d!272918 m!1116875))

(declare-fun m!1116877 () Bool)

(assert (=> d!272918 m!1116877))

(assert (=> b!867868 d!272918))

(declare-fun d!272920 () Bool)

(declare-fun c!140397 () Bool)

(assert (=> d!272920 (= c!140397 ((_ is Cons!9393) (t!98905 lt!327359)))))

(declare-fun e!571641 () List!9407)

(assert (=> d!272920 (= (printList!504 thiss!20117 (t!98905 lt!327359)) e!571641)))

(declare-fun b!868584 () Bool)

(assert (=> b!868584 (= e!571641 (++!2434 (list!3705 (charsOf!1021 (h!14794 (t!98905 lt!327359)))) (printList!504 thiss!20117 (t!98905 (t!98905 lt!327359)))))))

(declare-fun b!868585 () Bool)

(assert (=> b!868585 (= e!571641 Nil!9391)))

(assert (= (and d!272920 c!140397) b!868584))

(assert (= (and d!272920 (not c!140397)) b!868585))

(declare-fun m!1116879 () Bool)

(assert (=> b!868584 m!1116879))

(assert (=> b!868584 m!1116879))

(declare-fun m!1116881 () Bool)

(assert (=> b!868584 m!1116881))

(declare-fun m!1116883 () Bool)

(assert (=> b!868584 m!1116883))

(assert (=> b!868584 m!1116881))

(assert (=> b!868584 m!1116883))

(declare-fun m!1116885 () Bool)

(assert (=> b!868584 m!1116885))

(assert (=> b!867868 d!272920))

(assert (=> d!272368 d!272910))

(declare-fun d!272922 () Bool)

(assert (=> d!272922 (= (list!3706 (singletonSeq!587 lt!327184)) (list!3710 (c!140282 (singletonSeq!587 lt!327184))))))

(declare-fun bs!233120 () Bool)

(assert (= bs!233120 d!272922))

(declare-fun m!1116887 () Bool)

(assert (=> bs!233120 m!1116887))

(assert (=> d!272368 d!272922))

(assert (=> d!272368 d!272908))

(assert (=> d!272368 d!272366))

(declare-fun d!272924 () Bool)

(declare-fun lt!327689 () Int)

(assert (=> d!272924 (= lt!327689 (size!7827 (list!3706 (_1!6068 lt!327346))))))

(assert (=> d!272924 (= lt!327689 (size!7828 (c!140282 (_1!6068 lt!327346))))))

(assert (=> d!272924 (= (size!7823 (_1!6068 lt!327346)) lt!327689)))

(declare-fun bs!233121 () Bool)

(assert (= bs!233121 d!272924))

(assert (=> bs!233121 m!1116799))

(assert (=> bs!233121 m!1116799))

(declare-fun m!1116889 () Bool)

(assert (=> bs!233121 m!1116889))

(declare-fun m!1116891 () Bool)

(assert (=> bs!233121 m!1116891))

(assert (=> d!272368 d!272924))

(declare-fun d!272926 () Bool)

(assert (=> d!272926 (= (list!3706 (_1!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 lt!327184))))) (list!3710 (c!140282 (_1!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 lt!327184)))))))))

(declare-fun bs!233122 () Bool)

(assert (= bs!233122 d!272926))

(declare-fun m!1116893 () Bool)

(assert (=> bs!233122 m!1116893))

(assert (=> d!272368 d!272926))

(assert (=> d!272368 d!272906))

(declare-fun b!868586 () Bool)

(declare-fun e!571642 () List!9407)

(assert (=> b!868586 (= e!571642 (printList!504 thiss!20117 (t!98905 lt!327340)))))

(declare-fun b!868589 () Bool)

(declare-fun lt!327690 () List!9407)

(declare-fun e!571643 () Bool)

(assert (=> b!868589 (= e!571643 (or (not (= (printList!504 thiss!20117 (t!98905 lt!327340)) Nil!9391)) (= lt!327690 (list!3705 (charsOf!1021 (h!14794 lt!327340))))))))

(declare-fun b!868587 () Bool)

(assert (=> b!868587 (= e!571642 (Cons!9391 (h!14792 (list!3705 (charsOf!1021 (h!14794 lt!327340)))) (++!2434 (t!98903 (list!3705 (charsOf!1021 (h!14794 lt!327340)))) (printList!504 thiss!20117 (t!98905 lt!327340)))))))

(declare-fun b!868588 () Bool)

(declare-fun res!395607 () Bool)

(assert (=> b!868588 (=> (not res!395607) (not e!571643))))

(assert (=> b!868588 (= res!395607 (= (size!7820 lt!327690) (+ (size!7820 (list!3705 (charsOf!1021 (h!14794 lt!327340)))) (size!7820 (printList!504 thiss!20117 (t!98905 lt!327340))))))))

(declare-fun d!272928 () Bool)

(assert (=> d!272928 e!571643))

(declare-fun res!395608 () Bool)

(assert (=> d!272928 (=> (not res!395608) (not e!571643))))

(assert (=> d!272928 (= res!395608 (= (content!1362 lt!327690) ((_ map or) (content!1362 (list!3705 (charsOf!1021 (h!14794 lt!327340)))) (content!1362 (printList!504 thiss!20117 (t!98905 lt!327340))))))))

(assert (=> d!272928 (= lt!327690 e!571642)))

(declare-fun c!140398 () Bool)

(assert (=> d!272928 (= c!140398 ((_ is Nil!9391) (list!3705 (charsOf!1021 (h!14794 lt!327340)))))))

(assert (=> d!272928 (= (++!2434 (list!3705 (charsOf!1021 (h!14794 lt!327340))) (printList!504 thiss!20117 (t!98905 lt!327340))) lt!327690)))

(assert (= (and d!272928 c!140398) b!868586))

(assert (= (and d!272928 (not c!140398)) b!868587))

(assert (= (and d!272928 res!395608) b!868588))

(assert (= (and b!868588 res!395607) b!868589))

(assert (=> b!868587 m!1114921))

(declare-fun m!1116895 () Bool)

(assert (=> b!868587 m!1116895))

(declare-fun m!1116897 () Bool)

(assert (=> b!868588 m!1116897))

(assert (=> b!868588 m!1114919))

(declare-fun m!1116899 () Bool)

(assert (=> b!868588 m!1116899))

(assert (=> b!868588 m!1114921))

(declare-fun m!1116901 () Bool)

(assert (=> b!868588 m!1116901))

(declare-fun m!1116903 () Bool)

(assert (=> d!272928 m!1116903))

(assert (=> d!272928 m!1114919))

(declare-fun m!1116905 () Bool)

(assert (=> d!272928 m!1116905))

(assert (=> d!272928 m!1114921))

(declare-fun m!1116907 () Bool)

(assert (=> d!272928 m!1116907))

(assert (=> b!867830 d!272928))

(declare-fun d!272930 () Bool)

(assert (=> d!272930 (= (list!3705 (charsOf!1021 (h!14794 lt!327340))) (list!3708 (c!140240 (charsOf!1021 (h!14794 lt!327340)))))))

(declare-fun bs!233123 () Bool)

(assert (= bs!233123 d!272930))

(declare-fun m!1116909 () Bool)

(assert (=> bs!233123 m!1116909))

(assert (=> b!867830 d!272930))

(declare-fun d!272932 () Bool)

(declare-fun lt!327691 () BalanceConc!6244)

(assert (=> d!272932 (= (list!3705 lt!327691) (originalCharacters!2320 (h!14794 lt!327340)))))

(assert (=> d!272932 (= lt!327691 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327340)))) (value!56973 (h!14794 lt!327340))))))

(assert (=> d!272932 (= (charsOf!1021 (h!14794 lt!327340)) lt!327691)))

(declare-fun b_lambda!29615 () Bool)

(assert (=> (not b_lambda!29615) (not d!272932)))

(declare-fun tb!62947 () Bool)

(declare-fun t!99177 () Bool)

(assert (=> (and b!867896 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327340))))) t!99177) tb!62947))

(declare-fun b!868590 () Bool)

(declare-fun e!571644 () Bool)

(declare-fun tp!274687 () Bool)

(assert (=> b!868590 (= e!571644 (and (inv!11930 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327340)))) (value!56973 (h!14794 lt!327340))))) tp!274687))))

(declare-fun result!72782 () Bool)

(assert (=> tb!62947 (= result!72782 (and (inv!11931 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327340)))) (value!56973 (h!14794 lt!327340)))) e!571644))))

(assert (= tb!62947 b!868590))

(declare-fun m!1116911 () Bool)

(assert (=> b!868590 m!1116911))

(declare-fun m!1116913 () Bool)

(assert (=> tb!62947 m!1116913))

(assert (=> d!272932 t!99177))

(declare-fun b_and!78083 () Bool)

(assert (= b_and!78081 (and (=> t!99177 result!72782) b_and!78083)))

(declare-fun t!99179 () Bool)

(declare-fun tb!62949 () Bool)

(assert (=> (and b!867510 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327340))))) t!99179) tb!62949))

(declare-fun result!72784 () Bool)

(assert (= result!72784 result!72782))

(assert (=> d!272932 t!99179))

(declare-fun b_and!78085 () Bool)

(assert (= b_and!78079 (and (=> t!99179 result!72784) b_and!78085)))

(declare-fun t!99181 () Bool)

(declare-fun tb!62951 () Bool)

(assert (=> (and b!867500 (= (toChars!2692 (transformation!1764 (h!14793 rules!2621))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327340))))) t!99181) tb!62951))

(declare-fun result!72786 () Bool)

(assert (= result!72786 result!72782))

(assert (=> d!272932 t!99181))

(declare-fun b_and!78087 () Bool)

(assert (= b_and!78073 (and (=> t!99181 result!72786) b_and!78087)))

(declare-fun t!99183 () Bool)

(declare-fun tb!62953 () Bool)

(assert (=> (and b!867508 (= (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327340))))) t!99183) tb!62953))

(declare-fun result!72788 () Bool)

(assert (= result!72788 result!72782))

(assert (=> d!272932 t!99183))

(declare-fun b_and!78089 () Bool)

(assert (= b_and!78075 (and (=> t!99183 result!72788) b_and!78089)))

(declare-fun t!99185 () Bool)

(declare-fun tb!62955 () Bool)

(assert (=> (and b!867930 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 rules!2621)))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327340))))) t!99185) tb!62955))

(declare-fun result!72790 () Bool)

(assert (= result!72790 result!72782))

(assert (=> d!272932 t!99185))

(declare-fun b_and!78091 () Bool)

(assert (= b_and!78077 (and (=> t!99185 result!72790) b_and!78091)))

(declare-fun m!1116915 () Bool)

(assert (=> d!272932 m!1116915))

(declare-fun m!1116917 () Bool)

(assert (=> d!272932 m!1116917))

(assert (=> b!867830 d!272932))

(declare-fun d!272934 () Bool)

(declare-fun c!140399 () Bool)

(assert (=> d!272934 (= c!140399 ((_ is Cons!9393) (t!98905 lt!327340)))))

(declare-fun e!571645 () List!9407)

(assert (=> d!272934 (= (printList!504 thiss!20117 (t!98905 lt!327340)) e!571645)))

(declare-fun b!868591 () Bool)

(assert (=> b!868591 (= e!571645 (++!2434 (list!3705 (charsOf!1021 (h!14794 (t!98905 lt!327340)))) (printList!504 thiss!20117 (t!98905 (t!98905 lt!327340)))))))

(declare-fun b!868592 () Bool)

(assert (=> b!868592 (= e!571645 Nil!9391)))

(assert (= (and d!272934 c!140399) b!868591))

(assert (= (and d!272934 (not c!140399)) b!868592))

(declare-fun m!1116919 () Bool)

(assert (=> b!868591 m!1116919))

(assert (=> b!868591 m!1116919))

(declare-fun m!1116921 () Bool)

(assert (=> b!868591 m!1116921))

(declare-fun m!1116923 () Bool)

(assert (=> b!868591 m!1116923))

(assert (=> b!868591 m!1116921))

(assert (=> b!868591 m!1116923))

(declare-fun m!1116925 () Bool)

(assert (=> b!868591 m!1116925))

(assert (=> b!867830 d!272934))

(declare-fun bs!233124 () Bool)

(declare-fun d!272936 () Bool)

(assert (= bs!233124 (and d!272936 d!272754)))

(declare-fun lambda!26083 () Int)

(assert (=> bs!233124 (= lambda!26083 lambda!26075)))

(declare-fun bs!233125 () Bool)

(assert (= bs!233125 (and d!272936 d!272696)))

(assert (=> bs!233125 (= lambda!26083 lambda!26070)))

(declare-fun bs!233126 () Bool)

(assert (= bs!233126 (and d!272936 b!867501)))

(assert (=> bs!233126 (not (= lambda!26083 lambda!26036))))

(declare-fun bs!233127 () Bool)

(assert (= bs!233127 (and d!272936 d!272356)))

(assert (=> bs!233127 (= lambda!26083 lambda!26045)))

(declare-fun bs!233128 () Bool)

(assert (= bs!233128 (and d!272936 d!272820)))

(assert (=> bs!233128 (= lambda!26083 lambda!26081)))

(declare-fun bs!233129 () Bool)

(assert (= bs!233129 (and d!272936 d!272358)))

(assert (=> bs!233129 (= lambda!26083 lambda!26046)))

(declare-fun bs!233130 () Bool)

(assert (= bs!233130 (and d!272936 d!272578)))

(assert (=> bs!233130 (= lambda!26083 lambda!26061)))

(declare-fun bs!233131 () Bool)

(assert (= bs!233131 (and d!272936 d!272280)))

(assert (=> bs!233131 (= lambda!26083 lambda!26042)))

(declare-fun b!868597 () Bool)

(declare-fun e!571650 () Bool)

(assert (=> b!868597 (= e!571650 true)))

(declare-fun b!868596 () Bool)

(declare-fun e!571649 () Bool)

(assert (=> b!868596 (= e!571649 e!571650)))

(declare-fun b!868595 () Bool)

(declare-fun e!571648 () Bool)

(assert (=> b!868595 (= e!571648 e!571649)))

(assert (=> d!272936 e!571648))

(assert (= b!868596 b!868597))

(assert (= b!868595 b!868596))

(assert (= (and d!272936 ((_ is Cons!9392) rules!2621)) b!868595))

(assert (=> b!868597 (< (dynLambda!4471 order!6143 (toValue!2833 (transformation!1764 (h!14793 rules!2621)))) (dynLambda!4472 order!6145 lambda!26083))))

(assert (=> b!868597 (< (dynLambda!4473 order!6147 (toChars!2692 (transformation!1764 (h!14793 rules!2621)))) (dynLambda!4472 order!6145 lambda!26083))))

(assert (=> d!272936 true))

(declare-fun lt!327692 () Bool)

(assert (=> d!272936 (= lt!327692 (forall!2231 (t!98905 lt!327185) lambda!26083))))

(declare-fun e!571646 () Bool)

(assert (=> d!272936 (= lt!327692 e!571646)))

(declare-fun res!395609 () Bool)

(assert (=> d!272936 (=> res!395609 e!571646)))

(assert (=> d!272936 (= res!395609 (not ((_ is Cons!9393) (t!98905 lt!327185))))))

(assert (=> d!272936 (not (isEmpty!5578 rules!2621))))

(assert (=> d!272936 (= (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 (t!98905 lt!327185)) lt!327692)))

(declare-fun b!868593 () Bool)

(declare-fun e!571647 () Bool)

(assert (=> b!868593 (= e!571646 e!571647)))

(declare-fun res!395610 () Bool)

(assert (=> b!868593 (=> (not res!395610) (not e!571647))))

(assert (=> b!868593 (= res!395610 (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 (t!98905 lt!327185))))))

(declare-fun b!868594 () Bool)

(assert (=> b!868594 (= e!571647 (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 (t!98905 (t!98905 lt!327185))))))

(assert (= (and d!272936 (not res!395609)) b!868593))

(assert (= (and b!868593 res!395610) b!868594))

(declare-fun m!1116927 () Bool)

(assert (=> d!272936 m!1116927))

(assert (=> d!272936 m!1114527))

(assert (=> b!868593 m!1114739))

(declare-fun m!1116929 () Bool)

(assert (=> b!868594 m!1116929))

(assert (=> b!867801 d!272936))

(declare-fun d!272938 () Bool)

(declare-fun lt!327693 () Bool)

(assert (=> d!272938 (= lt!327693 (isEmpty!5582 (list!3705 (_2!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 separatorToken!297)))))))))

(assert (=> d!272938 (= lt!327693 (isEmpty!5585 (c!140240 (_2!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 separatorToken!297)))))))))

(assert (=> d!272938 (= (isEmpty!5583 (_2!6068 (lex!650 thiss!20117 rules!2621 (print!587 thiss!20117 (singletonSeq!587 separatorToken!297))))) lt!327693)))

(declare-fun bs!233132 () Bool)

(assert (= bs!233132 d!272938))

(declare-fun m!1116931 () Bool)

(assert (=> bs!233132 m!1116931))

(assert (=> bs!233132 m!1116931))

(declare-fun m!1116933 () Bool)

(assert (=> bs!233132 m!1116933))

(declare-fun m!1116935 () Bool)

(assert (=> bs!233132 m!1116935))

(assert (=> b!867867 d!272938))

(assert (=> b!867867 d!272872))

(assert (=> b!867867 d!272870))

(assert (=> b!867867 d!272880))

(declare-fun d!272940 () Bool)

(declare-fun c!140400 () Bool)

(assert (=> d!272940 (= c!140400 ((_ is Cons!9393) lt!327336))))

(declare-fun e!571651 () List!9407)

(assert (=> d!272940 (= (printList!504 thiss!20117 lt!327336) e!571651)))

(declare-fun b!868598 () Bool)

(assert (=> b!868598 (= e!571651 (++!2434 (list!3705 (charsOf!1021 (h!14794 lt!327336))) (printList!504 thiss!20117 (t!98905 lt!327336))))))

(declare-fun b!868599 () Bool)

(assert (=> b!868599 (= e!571651 Nil!9391)))

(assert (= (and d!272940 c!140400) b!868598))

(assert (= (and d!272940 (not c!140400)) b!868599))

(declare-fun m!1116937 () Bool)

(assert (=> b!868598 m!1116937))

(assert (=> b!868598 m!1116937))

(declare-fun m!1116939 () Bool)

(assert (=> b!868598 m!1116939))

(declare-fun m!1116941 () Bool)

(assert (=> b!868598 m!1116941))

(assert (=> b!868598 m!1116939))

(assert (=> b!868598 m!1116941))

(declare-fun m!1116943 () Bool)

(assert (=> b!868598 m!1116943))

(assert (=> d!272360 d!272940))

(declare-fun d!272942 () Bool)

(declare-fun c!140401 () Bool)

(assert (=> d!272942 (= c!140401 ((_ is Cons!9393) l!5107))))

(declare-fun e!571652 () List!9407)

(assert (=> d!272942 (= (printWithSeparatorTokenList!62 thiss!20117 l!5107 separatorToken!297) e!571652)))

(declare-fun b!868600 () Bool)

(assert (=> b!868600 (= e!571652 (++!2434 (++!2434 (list!3705 (charsOf!1021 (h!14794 l!5107))) (list!3705 (charsOf!1021 separatorToken!297))) (printWithSeparatorTokenList!62 thiss!20117 (t!98905 l!5107) separatorToken!297)))))

(declare-fun b!868601 () Bool)

(assert (=> b!868601 (= e!571652 Nil!9391)))

(assert (= (and d!272942 c!140401) b!868600))

(assert (= (and d!272942 (not c!140401)) b!868601))

(declare-fun m!1116945 () Bool)

(assert (=> b!868600 m!1116945))

(assert (=> b!868600 m!1115617))

(declare-fun m!1116947 () Bool)

(assert (=> b!868600 m!1116947))

(assert (=> b!868600 m!1114935))

(assert (=> b!868600 m!1114943))

(assert (=> b!868600 m!1114945))

(assert (=> b!868600 m!1114943))

(assert (=> b!868600 m!1114935))

(assert (=> b!868600 m!1114951))

(assert (=> b!868600 m!1114951))

(assert (=> b!868600 m!1114945))

(assert (=> b!868600 m!1116945))

(assert (=> b!868600 m!1115617))

(assert (=> d!272360 d!272942))

(declare-fun bs!233133 () Bool)

(declare-fun d!272944 () Bool)

(assert (= bs!233133 (and d!272944 d!272752)))

(declare-fun lambda!26084 () Int)

(assert (=> bs!233133 (= (and (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297)))) (= (toValue!2833 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (toValue!2833 (transformation!1764 (rule!3187 separatorToken!297))))) (= lambda!26084 lambda!26074))))

(assert (=> d!272944 true))

(assert (=> d!272944 (< (dynLambda!4473 order!6147 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107))))) (dynLambda!4478 order!6155 lambda!26084))))

(assert (=> d!272944 true))

(assert (=> d!272944 (< (dynLambda!4471 order!6143 (toValue!2833 (transformation!1764 (rule!3187 (h!14794 l!5107))))) (dynLambda!4478 order!6155 lambda!26084))))

(assert (=> d!272944 (= (semiInverseModEq!702 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (toValue!2833 (transformation!1764 (rule!3187 (h!14794 l!5107))))) (Forall!427 lambda!26084))))

(declare-fun bs!233134 () Bool)

(assert (= bs!233134 d!272944))

(declare-fun m!1116949 () Bool)

(assert (=> bs!233134 m!1116949))

(assert (=> d!272382 d!272944))

(assert (=> b!867796 d!272384))

(declare-fun bs!233135 () Bool)

(declare-fun d!272946 () Bool)

(assert (= bs!233135 (and d!272946 d!272754)))

(declare-fun lambda!26085 () Int)

(assert (=> bs!233135 (= lambda!26085 lambda!26075)))

(declare-fun bs!233136 () Bool)

(assert (= bs!233136 (and d!272946 d!272696)))

(assert (=> bs!233136 (= lambda!26085 lambda!26070)))

(declare-fun bs!233137 () Bool)

(assert (= bs!233137 (and d!272946 b!867501)))

(assert (=> bs!233137 (not (= lambda!26085 lambda!26036))))

(declare-fun bs!233138 () Bool)

(assert (= bs!233138 (and d!272946 d!272356)))

(assert (=> bs!233138 (= lambda!26085 lambda!26045)))

(declare-fun bs!233139 () Bool)

(assert (= bs!233139 (and d!272946 d!272936)))

(assert (=> bs!233139 (= lambda!26085 lambda!26083)))

(declare-fun bs!233140 () Bool)

(assert (= bs!233140 (and d!272946 d!272820)))

(assert (=> bs!233140 (= lambda!26085 lambda!26081)))

(declare-fun bs!233141 () Bool)

(assert (= bs!233141 (and d!272946 d!272358)))

(assert (=> bs!233141 (= lambda!26085 lambda!26046)))

(declare-fun bs!233142 () Bool)

(assert (= bs!233142 (and d!272946 d!272578)))

(assert (=> bs!233142 (= lambda!26085 lambda!26061)))

(declare-fun bs!233143 () Bool)

(assert (= bs!233143 (and d!272946 d!272280)))

(assert (=> bs!233143 (= lambda!26085 lambda!26042)))

(declare-fun b!868606 () Bool)

(declare-fun e!571657 () Bool)

(assert (=> b!868606 (= e!571657 true)))

(declare-fun b!868605 () Bool)

(declare-fun e!571656 () Bool)

(assert (=> b!868605 (= e!571656 e!571657)))

(declare-fun b!868604 () Bool)

(declare-fun e!571655 () Bool)

(assert (=> b!868604 (= e!571655 e!571656)))

(assert (=> d!272946 e!571655))

(assert (= b!868605 b!868606))

(assert (= b!868604 b!868605))

(assert (= (and d!272946 ((_ is Cons!9392) rules!2621)) b!868604))

(assert (=> b!868606 (< (dynLambda!4471 order!6143 (toValue!2833 (transformation!1764 (h!14793 rules!2621)))) (dynLambda!4472 order!6145 lambda!26085))))

(assert (=> b!868606 (< (dynLambda!4473 order!6147 (toChars!2692 (transformation!1764 (h!14793 rules!2621)))) (dynLambda!4472 order!6145 lambda!26085))))

(assert (=> d!272946 true))

(declare-fun lt!327694 () Bool)

(assert (=> d!272946 (= lt!327694 (forall!2231 (t!98905 lt!327189) lambda!26085))))

(declare-fun e!571653 () Bool)

(assert (=> d!272946 (= lt!327694 e!571653)))

(declare-fun res!395611 () Bool)

(assert (=> d!272946 (=> res!395611 e!571653)))

(assert (=> d!272946 (= res!395611 (not ((_ is Cons!9393) (t!98905 lt!327189))))))

(assert (=> d!272946 (not (isEmpty!5578 rules!2621))))

(assert (=> d!272946 (= (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 (t!98905 lt!327189)) lt!327694)))

(declare-fun b!868602 () Bool)

(declare-fun e!571654 () Bool)

(assert (=> b!868602 (= e!571653 e!571654)))

(declare-fun res!395612 () Bool)

(assert (=> b!868602 (=> (not res!395612) (not e!571654))))

(assert (=> b!868602 (= res!395612 (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 (t!98905 lt!327189))))))

(declare-fun b!868603 () Bool)

(assert (=> b!868603 (= e!571654 (rulesProduceEachTokenIndividuallyList!454 thiss!20117 rules!2621 (t!98905 (t!98905 lt!327189))))))

(assert (= (and d!272946 (not res!395611)) b!868602))

(assert (= (and b!868602 res!395612) b!868603))

(declare-fun m!1116951 () Bool)

(assert (=> d!272946 m!1116951))

(assert (=> d!272946 m!1114527))

(assert (=> b!868602 m!1114495))

(declare-fun m!1116953 () Bool)

(assert (=> b!868603 m!1116953))

(assert (=> b!867806 d!272946))

(declare-fun d!272948 () Bool)

(assert (=> d!272948 true))

(declare-fun lt!327697 () Bool)

(declare-fun rulesValidInductive!625 (LexerInterface!1566 List!9408) Bool)

(assert (=> d!272948 (= lt!327697 (rulesValidInductive!625 thiss!20117 rules!2621))))

(declare-fun lambda!26088 () Int)

(declare-fun forall!2233 (List!9408 Int) Bool)

(assert (=> d!272948 (= lt!327697 (forall!2233 rules!2621 lambda!26088))))

(assert (=> d!272948 (= (rulesValid!633 thiss!20117 rules!2621) lt!327697)))

(declare-fun bs!233144 () Bool)

(assert (= bs!233144 d!272948))

(declare-fun m!1116955 () Bool)

(assert (=> bs!233144 m!1116955))

(declare-fun m!1116957 () Bool)

(assert (=> bs!233144 m!1116957))

(assert (=> d!272378 d!272948))

(declare-fun d!272950 () Bool)

(declare-fun c!140402 () Bool)

(assert (=> d!272950 (= c!140402 ((_ is Cons!9393) ($colon$colon!117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 l!5107) separatorToken!297) separatorToken!297) (h!14794 l!5107))))))

(declare-fun e!571658 () List!9407)

(assert (=> d!272950 (= (printList!504 thiss!20117 ($colon$colon!117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 l!5107) separatorToken!297) separatorToken!297) (h!14794 l!5107))) e!571658)))

(declare-fun b!868609 () Bool)

(assert (=> b!868609 (= e!571658 (++!2434 (list!3705 (charsOf!1021 (h!14794 ($colon$colon!117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 l!5107) separatorToken!297) separatorToken!297) (h!14794 l!5107))))) (printList!504 thiss!20117 (t!98905 ($colon$colon!117 ($colon$colon!117 (withSeparatorTokenList!94 thiss!20117 (t!98905 l!5107) separatorToken!297) separatorToken!297) (h!14794 l!5107))))))))

(declare-fun b!868610 () Bool)

(assert (=> b!868610 (= e!571658 Nil!9391)))

(assert (= (and d!272950 c!140402) b!868609))

(assert (= (and d!272950 (not c!140402)) b!868610))

(declare-fun m!1116959 () Bool)

(assert (=> b!868609 m!1116959))

(assert (=> b!868609 m!1116959))

(declare-fun m!1116961 () Bool)

(assert (=> b!868609 m!1116961))

(declare-fun m!1116963 () Bool)

(assert (=> b!868609 m!1116963))

(assert (=> b!868609 m!1116961))

(assert (=> b!868609 m!1116963))

(declare-fun m!1116965 () Bool)

(assert (=> b!868609 m!1116965))

(assert (=> b!867834 d!272950))

(assert (=> b!867834 d!272854))

(assert (=> b!867834 d!272520))

(assert (=> b!867834 d!272522))

(declare-fun d!272952 () Bool)

(assert (=> d!272952 (= (list!3705 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (value!56973 (h!14794 l!5107)))) (list!3708 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (value!56973 (h!14794 l!5107))))))))

(declare-fun bs!233145 () Bool)

(assert (= bs!233145 d!272952))

(declare-fun m!1116967 () Bool)

(assert (=> bs!233145 m!1116967))

(assert (=> b!867520 d!272952))

(declare-fun bs!233146 () Bool)

(declare-fun d!272954 () Bool)

(assert (= bs!233146 (and d!272954 d!272486)))

(declare-fun lambda!26089 () Int)

(assert (=> bs!233146 (= (= (toValue!2833 (transformation!1764 (h!14793 rules!2621))) (toValue!2833 (transformation!1764 (rule!3187 separatorToken!297)))) (= lambda!26089 lambda!26053))))

(declare-fun bs!233147 () Bool)

(assert (= bs!233147 (and d!272954 d!272824)))

(assert (=> bs!233147 (= (= (toValue!2833 (transformation!1764 (h!14793 rules!2621))) (toValue!2833 (transformation!1764 (rule!3187 (h!14794 l!5107))))) (= lambda!26089 lambda!26082))))

(assert (=> d!272954 true))

(assert (=> d!272954 (< (dynLambda!4471 order!6143 (toValue!2833 (transformation!1764 (h!14793 rules!2621)))) (dynLambda!4476 order!6151 lambda!26089))))

(assert (=> d!272954 (= (equivClasses!669 (toChars!2692 (transformation!1764 (h!14793 rules!2621))) (toValue!2833 (transformation!1764 (h!14793 rules!2621)))) (Forall2!336 lambda!26089))))

(declare-fun bs!233148 () Bool)

(assert (= bs!233148 d!272954))

(declare-fun m!1116969 () Bool)

(assert (=> bs!233148 m!1116969))

(assert (=> b!867538 d!272954))

(declare-fun bs!233149 () Bool)

(declare-fun d!272956 () Bool)

(assert (= bs!233149 (and d!272956 d!272752)))

(declare-fun lambda!26090 () Int)

(assert (=> bs!233149 (= (and (= (toChars!2692 (transformation!1764 (h!14793 rules!2621))) (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297)))) (= (toValue!2833 (transformation!1764 (h!14793 rules!2621))) (toValue!2833 (transformation!1764 (rule!3187 separatorToken!297))))) (= lambda!26090 lambda!26074))))

(declare-fun bs!233150 () Bool)

(assert (= bs!233150 (and d!272956 d!272944)))

(assert (=> bs!233150 (= (and (= (toChars!2692 (transformation!1764 (h!14793 rules!2621))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107))))) (= (toValue!2833 (transformation!1764 (h!14793 rules!2621))) (toValue!2833 (transformation!1764 (rule!3187 (h!14794 l!5107)))))) (= lambda!26090 lambda!26084))))

(assert (=> d!272956 true))

(assert (=> d!272956 (< (dynLambda!4473 order!6147 (toChars!2692 (transformation!1764 (h!14793 rules!2621)))) (dynLambda!4478 order!6155 lambda!26090))))

(assert (=> d!272956 true))

(assert (=> d!272956 (< (dynLambda!4471 order!6143 (toValue!2833 (transformation!1764 (h!14793 rules!2621)))) (dynLambda!4478 order!6155 lambda!26090))))

(assert (=> d!272956 (= (semiInverseModEq!702 (toChars!2692 (transformation!1764 (h!14793 rules!2621))) (toValue!2833 (transformation!1764 (h!14793 rules!2621)))) (Forall!427 lambda!26090))))

(declare-fun bs!233151 () Bool)

(assert (= bs!233151 d!272956))

(declare-fun m!1116971 () Bool)

(assert (=> bs!233151 m!1116971))

(assert (=> d!272276 d!272956))

(declare-fun b!868613 () Bool)

(declare-fun e!571661 () Bool)

(assert (=> b!868613 (= e!571661 true)))

(declare-fun b!868612 () Bool)

(declare-fun e!571660 () Bool)

(assert (=> b!868612 (= e!571660 e!571661)))

(declare-fun b!868611 () Bool)

(declare-fun e!571659 () Bool)

(assert (=> b!868611 (= e!571659 e!571660)))

(assert (=> b!867802 e!571659))

(assert (= b!868612 b!868613))

(assert (= b!868611 b!868612))

(assert (= (and b!867802 ((_ is Cons!9392) (t!98904 rules!2621))) b!868611))

(assert (=> b!868613 (< (dynLambda!4471 order!6143 (toValue!2833 (transformation!1764 (h!14793 (t!98904 rules!2621))))) (dynLambda!4472 order!6145 lambda!26045))))

(assert (=> b!868613 (< (dynLambda!4473 order!6147 (toChars!2692 (transformation!1764 (h!14793 (t!98904 rules!2621))))) (dynLambda!4472 order!6145 lambda!26045))))

(declare-fun b!868617 () Bool)

(declare-fun b_free!26645 () Bool)

(declare-fun b_next!26709 () Bool)

(assert (=> b!868617 (= b_free!26645 (not b_next!26709))))

(declare-fun tp!274690 () Bool)

(declare-fun b_and!78093 () Bool)

(assert (=> b!868617 (= tp!274690 b_and!78093)))

(declare-fun b_free!26647 () Bool)

(declare-fun b_next!26711 () Bool)

(assert (=> b!868617 (= b_free!26647 (not b_next!26711))))

(declare-fun t!99187 () Bool)

(declare-fun tb!62957 () Bool)

(assert (=> (and b!868617 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 (t!98905 l!5107)))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327359))))) t!99187) tb!62957))

(declare-fun result!72792 () Bool)

(assert (= result!72792 result!72772))

(assert (=> d!272918 t!99187))

(declare-fun t!99189 () Bool)

(declare-fun tb!62959 () Bool)

(assert (=> (and b!868617 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 (t!98905 l!5107)))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327189))))) t!99189) tb!62959))

(declare-fun result!72794 () Bool)

(assert (= result!72794 result!72686))

(assert (=> d!272772 t!99189))

(declare-fun tb!62961 () Bool)

(declare-fun t!99191 () Bool)

(assert (=> (and b!868617 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 (t!98905 l!5107)))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327335))))) t!99191) tb!62961))

(declare-fun result!72796 () Bool)

(assert (= result!72796 result!72762))

(assert (=> d!272830 t!99191))

(declare-fun t!99193 () Bool)

(declare-fun tb!62963 () Bool)

(assert (=> (and b!868617 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 (t!98905 l!5107)))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327188))))) t!99193) tb!62963))

(declare-fun result!72798 () Bool)

(assert (= result!72798 result!72586))

(assert (=> d!272492 t!99193))

(declare-fun t!99195 () Bool)

(declare-fun tb!62965 () Bool)

(assert (=> (and b!868617 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 (t!98905 l!5107)))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107))))) t!99195) tb!62965))

(declare-fun result!72800 () Bool)

(assert (= result!72800 result!72506))

(assert (=> b!867520 t!99195))

(declare-fun t!99197 () Bool)

(declare-fun tb!62967 () Bool)

(assert (=> (and b!868617 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 (t!98905 l!5107)))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107)))))) t!99197) tb!62967))

(declare-fun result!72802 () Bool)

(assert (= result!72802 result!72596))

(assert (=> b!868089 t!99197))

(declare-fun tb!62969 () Bool)

(declare-fun t!99199 () Bool)

(assert (=> (and b!868617 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 (t!98905 l!5107)))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 lt!327189)))))) t!99199) tb!62969))

(declare-fun result!72804 () Bool)

(assert (= result!72804 result!72676))

(assert (=> d!272758 t!99199))

(declare-fun t!99201 () Bool)

(declare-fun tb!62971 () Bool)

(assert (=> (and b!868617 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 (t!98905 l!5107)))))) (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297)))) t!99201) tb!62971))

(declare-fun result!72806 () Bool)

(assert (= result!72806 result!72544))

(assert (=> d!272498 t!99201))

(declare-fun t!99203 () Bool)

(declare-fun tb!62973 () Bool)

(assert (=> (and b!868617 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 (t!98905 l!5107)))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327354))))) t!99203) tb!62973))

(declare-fun result!72808 () Bool)

(assert (= result!72808 result!72576))

(assert (=> d!272482 t!99203))

(assert (=> b!867858 t!99201))

(declare-fun t!99205 () Bool)

(declare-fun tb!62975 () Bool)

(assert (=> (and b!868617 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 (t!98905 l!5107)))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327340))))) t!99205) tb!62975))

(declare-fun result!72810 () Bool)

(assert (= result!72810 result!72782))

(assert (=> d!272932 t!99205))

(declare-fun tb!62977 () Bool)

(declare-fun t!99207 () Bool)

(assert (=> (and b!868617 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 (t!98905 l!5107)))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 lt!327185)))))) t!99207) tb!62977))

(declare-fun result!72812 () Bool)

(assert (= result!72812 result!72646))

(assert (=> d!272684 t!99207))

(assert (=> d!272856 t!99195))

(declare-fun b_and!78095 () Bool)

(declare-fun tp!274689 () Bool)

(assert (=> b!868617 (= tp!274689 (and (=> t!99191 result!72796) (=> t!99199 result!72804) (=> t!99197 result!72802) (=> t!99189 result!72794) (=> t!99195 result!72800) (=> t!99207 result!72812) (=> t!99201 result!72806) (=> t!99193 result!72798) (=> t!99203 result!72808) (=> t!99187 result!72792) (=> t!99205 result!72810) b_and!78095))))

(declare-fun e!571664 () Bool)

(assert (=> b!868617 (= e!571664 (and tp!274690 tp!274689))))

(declare-fun tp!274692 () Bool)

(declare-fun e!571665 () Bool)

(declare-fun b!868616 () Bool)

(assert (=> b!868616 (= e!571665 (and tp!274692 (inv!11923 (tag!2026 (rule!3187 (h!14794 (t!98905 (t!98905 l!5107)))))) (inv!11926 (transformation!1764 (rule!3187 (h!14794 (t!98905 (t!98905 l!5107)))))) e!571664))))

(declare-fun b!868615 () Bool)

(declare-fun tp!274691 () Bool)

(declare-fun e!571667 () Bool)

(assert (=> b!868615 (= e!571667 (and (inv!21 (value!56973 (h!14794 (t!98905 (t!98905 l!5107))))) e!571665 tp!274691))))

(declare-fun b!868614 () Bool)

(declare-fun tp!274688 () Bool)

(declare-fun e!571662 () Bool)

(assert (=> b!868614 (= e!571662 (and (inv!11927 (h!14794 (t!98905 (t!98905 l!5107)))) e!571667 tp!274688))))

(assert (=> b!867893 (= tp!274515 e!571662)))

(assert (= b!868616 b!868617))

(assert (= b!868615 b!868616))

(assert (= b!868614 b!868615))

(assert (= (and b!867893 ((_ is Cons!9393) (t!98905 (t!98905 l!5107)))) b!868614))

(declare-fun m!1116973 () Bool)

(assert (=> b!868616 m!1116973))

(declare-fun m!1116975 () Bool)

(assert (=> b!868616 m!1116975))

(declare-fun m!1116977 () Bool)

(assert (=> b!868615 m!1116977))

(declare-fun m!1116979 () Bool)

(assert (=> b!868614 m!1116979))

(declare-fun tp!274701 () Bool)

(declare-fun tp!274699 () Bool)

(declare-fun e!571673 () Bool)

(declare-fun b!868626 () Bool)

(assert (=> b!868626 (= e!571673 (and (inv!11930 (left!6950 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (value!56973 (h!14794 l!5107)))))) tp!274701 (inv!11930 (right!7280 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (value!56973 (h!14794 l!5107)))))) tp!274699))))

(declare-fun b!868628 () Bool)

(declare-fun e!571672 () Bool)

(declare-fun tp!274700 () Bool)

(assert (=> b!868628 (= e!571672 tp!274700)))

(declare-fun b!868627 () Bool)

(declare-fun inv!11937 (IArray!6235) Bool)

(assert (=> b!868627 (= e!571673 (and (inv!11937 (xs!5804 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (value!56973 (h!14794 l!5107)))))) e!571672))))

(assert (=> b!867526 (= tp!274443 (and (inv!11930 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (value!56973 (h!14794 l!5107))))) e!571673))))

(assert (= (and b!867526 ((_ is Node!3115) (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (value!56973 (h!14794 l!5107)))))) b!868626))

(assert (= b!868627 b!868628))

(assert (= (and b!867526 ((_ is Leaf!4585) (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (value!56973 (h!14794 l!5107)))))) b!868627))

(declare-fun m!1116981 () Bool)

(assert (=> b!868626 m!1116981))

(declare-fun m!1116983 () Bool)

(assert (=> b!868626 m!1116983))

(declare-fun m!1116985 () Bool)

(assert (=> b!868627 m!1116985))

(assert (=> b!867526 m!1114553))

(declare-fun b!868631 () Bool)

(declare-fun e!571676 () Bool)

(assert (=> b!868631 (= e!571676 true)))

(declare-fun b!868630 () Bool)

(declare-fun e!571675 () Bool)

(assert (=> b!868630 (= e!571675 e!571676)))

(declare-fun b!868629 () Bool)

(declare-fun e!571674 () Bool)

(assert (=> b!868629 (= e!571674 e!571675)))

(assert (=> b!867807 e!571674))

(assert (= b!868630 b!868631))

(assert (= b!868629 b!868630))

(assert (= (and b!867807 ((_ is Cons!9392) (t!98904 rules!2621))) b!868629))

(assert (=> b!868631 (< (dynLambda!4471 order!6143 (toValue!2833 (transformation!1764 (h!14793 (t!98904 rules!2621))))) (dynLambda!4472 order!6145 lambda!26046))))

(assert (=> b!868631 (< (dynLambda!4473 order!6147 (toChars!2692 (transformation!1764 (h!14793 (t!98904 rules!2621))))) (dynLambda!4472 order!6145 lambda!26046))))

(declare-fun b!868634 () Bool)

(declare-fun e!571679 () Bool)

(assert (=> b!868634 (= e!571679 true)))

(declare-fun b!868633 () Bool)

(declare-fun e!571678 () Bool)

(assert (=> b!868633 (= e!571678 e!571679)))

(declare-fun b!868632 () Bool)

(declare-fun e!571677 () Bool)

(assert (=> b!868632 (= e!571677 e!571678)))

(assert (=> b!867602 e!571677))

(assert (= b!868633 b!868634))

(assert (= b!868632 b!868633))

(assert (= (and b!867602 ((_ is Cons!9392) (t!98904 rules!2621))) b!868632))

(assert (=> b!868634 (< (dynLambda!4471 order!6143 (toValue!2833 (transformation!1764 (h!14793 (t!98904 rules!2621))))) (dynLambda!4472 order!6145 lambda!26042))))

(assert (=> b!868634 (< (dynLambda!4473 order!6147 (toChars!2692 (transformation!1764 (h!14793 (t!98904 rules!2621))))) (dynLambda!4472 order!6145 lambda!26042))))

(declare-fun b!868635 () Bool)

(declare-fun e!571680 () Bool)

(declare-fun tp!274702 () Bool)

(assert (=> b!868635 (= e!571680 (and tp_is_empty!4037 tp!274702))))

(assert (=> b!867894 (= tp!274518 e!571680)))

(assert (= (and b!867894 ((_ is Cons!9391) (originalCharacters!2320 (h!14794 (t!98905 l!5107))))) b!868635))

(declare-fun b!868638 () Bool)

(declare-fun e!571681 () Bool)

(declare-fun tp!274703 () Bool)

(assert (=> b!868638 (= e!571681 tp!274703)))

(declare-fun b!868637 () Bool)

(declare-fun tp!274706 () Bool)

(declare-fun tp!274707 () Bool)

(assert (=> b!868637 (= e!571681 (and tp!274706 tp!274707))))

(assert (=> b!867932 (= tp!274558 e!571681)))

(declare-fun b!868639 () Bool)

(declare-fun tp!274704 () Bool)

(declare-fun tp!274705 () Bool)

(assert (=> b!868639 (= e!571681 (and tp!274704 tp!274705))))

(declare-fun b!868636 () Bool)

(assert (=> b!868636 (= e!571681 tp_is_empty!4037)))

(assert (= (and b!867932 ((_ is ElementMatch!2197) (regOne!4906 (regex!1764 (rule!3187 (h!14794 l!5107)))))) b!868636))

(assert (= (and b!867932 ((_ is Concat!4028) (regOne!4906 (regex!1764 (rule!3187 (h!14794 l!5107)))))) b!868637))

(assert (= (and b!867932 ((_ is Star!2197) (regOne!4906 (regex!1764 (rule!3187 (h!14794 l!5107)))))) b!868638))

(assert (= (and b!867932 ((_ is Union!2197) (regOne!4906 (regex!1764 (rule!3187 (h!14794 l!5107)))))) b!868639))

(declare-fun b!868642 () Bool)

(declare-fun e!571682 () Bool)

(declare-fun tp!274708 () Bool)

(assert (=> b!868642 (= e!571682 tp!274708)))

(declare-fun b!868641 () Bool)

(declare-fun tp!274711 () Bool)

(declare-fun tp!274712 () Bool)

(assert (=> b!868641 (= e!571682 (and tp!274711 tp!274712))))

(assert (=> b!867932 (= tp!274559 e!571682)))

(declare-fun b!868643 () Bool)

(declare-fun tp!274709 () Bool)

(declare-fun tp!274710 () Bool)

(assert (=> b!868643 (= e!571682 (and tp!274709 tp!274710))))

(declare-fun b!868640 () Bool)

(assert (=> b!868640 (= e!571682 tp_is_empty!4037)))

(assert (= (and b!867932 ((_ is ElementMatch!2197) (regTwo!4906 (regex!1764 (rule!3187 (h!14794 l!5107)))))) b!868640))

(assert (= (and b!867932 ((_ is Concat!4028) (regTwo!4906 (regex!1764 (rule!3187 (h!14794 l!5107)))))) b!868641))

(assert (= (and b!867932 ((_ is Star!2197) (regTwo!4906 (regex!1764 (rule!3187 (h!14794 l!5107)))))) b!868642))

(assert (= (and b!867932 ((_ is Union!2197) (regTwo!4906 (regex!1764 (rule!3187 (h!14794 l!5107)))))) b!868643))

(declare-fun b!868646 () Bool)

(declare-fun e!571683 () Bool)

(declare-fun tp!274713 () Bool)

(assert (=> b!868646 (= e!571683 tp!274713)))

(declare-fun b!868645 () Bool)

(declare-fun tp!274716 () Bool)

(declare-fun tp!274717 () Bool)

(assert (=> b!868645 (= e!571683 (and tp!274716 tp!274717))))

(assert (=> b!867895 (= tp!274519 e!571683)))

(declare-fun b!868647 () Bool)

(declare-fun tp!274714 () Bool)

(declare-fun tp!274715 () Bool)

(assert (=> b!868647 (= e!571683 (and tp!274714 tp!274715))))

(declare-fun b!868644 () Bool)

(assert (=> b!868644 (= e!571683 tp_is_empty!4037)))

(assert (= (and b!867895 ((_ is ElementMatch!2197) (regex!1764 (rule!3187 (h!14794 (t!98905 l!5107)))))) b!868644))

(assert (= (and b!867895 ((_ is Concat!4028) (regex!1764 (rule!3187 (h!14794 (t!98905 l!5107)))))) b!868645))

(assert (= (and b!867895 ((_ is Star!2197) (regex!1764 (rule!3187 (h!14794 (t!98905 l!5107)))))) b!868646))

(assert (= (and b!867895 ((_ is Union!2197) (regex!1764 (rule!3187 (h!14794 (t!98905 l!5107)))))) b!868647))

(declare-fun b!868650 () Bool)

(declare-fun e!571684 () Bool)

(declare-fun tp!274718 () Bool)

(assert (=> b!868650 (= e!571684 tp!274718)))

(declare-fun b!868649 () Bool)

(declare-fun tp!274721 () Bool)

(declare-fun tp!274722 () Bool)

(assert (=> b!868649 (= e!571684 (and tp!274721 tp!274722))))

(assert (=> b!867933 (= tp!274555 e!571684)))

(declare-fun b!868651 () Bool)

(declare-fun tp!274719 () Bool)

(declare-fun tp!274720 () Bool)

(assert (=> b!868651 (= e!571684 (and tp!274719 tp!274720))))

(declare-fun b!868648 () Bool)

(assert (=> b!868648 (= e!571684 tp_is_empty!4037)))

(assert (= (and b!867933 ((_ is ElementMatch!2197) (reg!2526 (regex!1764 (rule!3187 (h!14794 l!5107)))))) b!868648))

(assert (= (and b!867933 ((_ is Concat!4028) (reg!2526 (regex!1764 (rule!3187 (h!14794 l!5107)))))) b!868649))

(assert (= (and b!867933 ((_ is Star!2197) (reg!2526 (regex!1764 (rule!3187 (h!14794 l!5107)))))) b!868650))

(assert (= (and b!867933 ((_ is Union!2197) (reg!2526 (regex!1764 (rule!3187 (h!14794 l!5107)))))) b!868651))

(declare-fun b!868654 () Bool)

(declare-fun e!571685 () Bool)

(declare-fun tp!274723 () Bool)

(assert (=> b!868654 (= e!571685 tp!274723)))

(declare-fun b!868653 () Bool)

(declare-fun tp!274726 () Bool)

(declare-fun tp!274727 () Bool)

(assert (=> b!868653 (= e!571685 (and tp!274726 tp!274727))))

(assert (=> b!867934 (= tp!274556 e!571685)))

(declare-fun b!868655 () Bool)

(declare-fun tp!274724 () Bool)

(declare-fun tp!274725 () Bool)

(assert (=> b!868655 (= e!571685 (and tp!274724 tp!274725))))

(declare-fun b!868652 () Bool)

(assert (=> b!868652 (= e!571685 tp_is_empty!4037)))

(assert (= (and b!867934 ((_ is ElementMatch!2197) (regOne!4907 (regex!1764 (rule!3187 (h!14794 l!5107)))))) b!868652))

(assert (= (and b!867934 ((_ is Concat!4028) (regOne!4907 (regex!1764 (rule!3187 (h!14794 l!5107)))))) b!868653))

(assert (= (and b!867934 ((_ is Star!2197) (regOne!4907 (regex!1764 (rule!3187 (h!14794 l!5107)))))) b!868654))

(assert (= (and b!867934 ((_ is Union!2197) (regOne!4907 (regex!1764 (rule!3187 (h!14794 l!5107)))))) b!868655))

(declare-fun b!868658 () Bool)

(declare-fun e!571686 () Bool)

(declare-fun tp!274728 () Bool)

(assert (=> b!868658 (= e!571686 tp!274728)))

(declare-fun b!868657 () Bool)

(declare-fun tp!274731 () Bool)

(declare-fun tp!274732 () Bool)

(assert (=> b!868657 (= e!571686 (and tp!274731 tp!274732))))

(assert (=> b!867934 (= tp!274557 e!571686)))

(declare-fun b!868659 () Bool)

(declare-fun tp!274729 () Bool)

(declare-fun tp!274730 () Bool)

(assert (=> b!868659 (= e!571686 (and tp!274729 tp!274730))))

(declare-fun b!868656 () Bool)

(assert (=> b!868656 (= e!571686 tp_is_empty!4037)))

(assert (= (and b!867934 ((_ is ElementMatch!2197) (regTwo!4907 (regex!1764 (rule!3187 (h!14794 l!5107)))))) b!868656))

(assert (= (and b!867934 ((_ is Concat!4028) (regTwo!4907 (regex!1764 (rule!3187 (h!14794 l!5107)))))) b!868657))

(assert (= (and b!867934 ((_ is Star!2197) (regTwo!4907 (regex!1764 (rule!3187 (h!14794 l!5107)))))) b!868658))

(assert (= (and b!867934 ((_ is Union!2197) (regTwo!4907 (regex!1764 (rule!3187 (h!14794 l!5107)))))) b!868659))

(declare-fun b!868662 () Bool)

(declare-fun e!571687 () Bool)

(declare-fun tp!274733 () Bool)

(assert (=> b!868662 (= e!571687 tp!274733)))

(declare-fun b!868661 () Bool)

(declare-fun tp!274736 () Bool)

(declare-fun tp!274737 () Bool)

(assert (=> b!868661 (= e!571687 (and tp!274736 tp!274737))))

(assert (=> b!867908 (= tp!274533 e!571687)))

(declare-fun b!868663 () Bool)

(declare-fun tp!274734 () Bool)

(declare-fun tp!274735 () Bool)

(assert (=> b!868663 (= e!571687 (and tp!274734 tp!274735))))

(declare-fun b!868660 () Bool)

(assert (=> b!868660 (= e!571687 tp_is_empty!4037)))

(assert (= (and b!867908 ((_ is ElementMatch!2197) (regOne!4906 (regex!1764 (h!14793 rules!2621))))) b!868660))

(assert (= (and b!867908 ((_ is Concat!4028) (regOne!4906 (regex!1764 (h!14793 rules!2621))))) b!868661))

(assert (= (and b!867908 ((_ is Star!2197) (regOne!4906 (regex!1764 (h!14793 rules!2621))))) b!868662))

(assert (= (and b!867908 ((_ is Union!2197) (regOne!4906 (regex!1764 (h!14793 rules!2621))))) b!868663))

(declare-fun b!868666 () Bool)

(declare-fun e!571688 () Bool)

(declare-fun tp!274738 () Bool)

(assert (=> b!868666 (= e!571688 tp!274738)))

(declare-fun b!868665 () Bool)

(declare-fun tp!274741 () Bool)

(declare-fun tp!274742 () Bool)

(assert (=> b!868665 (= e!571688 (and tp!274741 tp!274742))))

(assert (=> b!867908 (= tp!274534 e!571688)))

(declare-fun b!868667 () Bool)

(declare-fun tp!274739 () Bool)

(declare-fun tp!274740 () Bool)

(assert (=> b!868667 (= e!571688 (and tp!274739 tp!274740))))

(declare-fun b!868664 () Bool)

(assert (=> b!868664 (= e!571688 tp_is_empty!4037)))

(assert (= (and b!867908 ((_ is ElementMatch!2197) (regTwo!4906 (regex!1764 (h!14793 rules!2621))))) b!868664))

(assert (= (and b!867908 ((_ is Concat!4028) (regTwo!4906 (regex!1764 (h!14793 rules!2621))))) b!868665))

(assert (= (and b!867908 ((_ is Star!2197) (regTwo!4906 (regex!1764 (h!14793 rules!2621))))) b!868666))

(assert (= (and b!867908 ((_ is Union!2197) (regTwo!4906 (regex!1764 (h!14793 rules!2621))))) b!868667))

(declare-fun b!868668 () Bool)

(declare-fun tp!274745 () Bool)

(declare-fun tp!274743 () Bool)

(declare-fun e!571690 () Bool)

(assert (=> b!868668 (= e!571690 (and (inv!11930 (left!6950 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (value!56973 separatorToken!297))))) tp!274745 (inv!11930 (right!7280 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (value!56973 separatorToken!297))))) tp!274743))))

(declare-fun b!868670 () Bool)

(declare-fun e!571689 () Bool)

(declare-fun tp!274744 () Bool)

(assert (=> b!868670 (= e!571689 tp!274744)))

(declare-fun b!868669 () Bool)

(assert (=> b!868669 (= e!571690 (and (inv!11937 (xs!5804 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (value!56973 separatorToken!297))))) e!571689))))

(assert (=> b!867860 (= tp!274504 (and (inv!11930 (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (value!56973 separatorToken!297)))) e!571690))))

(assert (= (and b!867860 ((_ is Node!3115) (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (value!56973 separatorToken!297))))) b!868668))

(assert (= b!868669 b!868670))

(assert (= (and b!867860 ((_ is Leaf!4585) (c!140240 (dynLambda!4470 (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (value!56973 separatorToken!297))))) b!868669))

(declare-fun m!1116987 () Bool)

(assert (=> b!868668 m!1116987))

(declare-fun m!1116989 () Bool)

(assert (=> b!868668 m!1116989))

(declare-fun m!1116991 () Bool)

(assert (=> b!868669 m!1116991))

(assert (=> b!867860 m!1115011))

(declare-fun b!868673 () Bool)

(declare-fun b_free!26649 () Bool)

(declare-fun b_next!26713 () Bool)

(assert (=> b!868673 (= b_free!26649 (not b_next!26713))))

(declare-fun tp!274747 () Bool)

(declare-fun b_and!78097 () Bool)

(assert (=> b!868673 (= tp!274747 b_and!78097)))

(declare-fun b_free!26651 () Bool)

(declare-fun b_next!26715 () Bool)

(assert (=> b!868673 (= b_free!26651 (not b_next!26715))))

(declare-fun t!99209 () Bool)

(declare-fun tb!62979 () Bool)

(assert (=> (and b!868673 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 (t!98904 rules!2621))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327359))))) t!99209) tb!62979))

(declare-fun result!72816 () Bool)

(assert (= result!72816 result!72772))

(assert (=> d!272918 t!99209))

(declare-fun tb!62981 () Bool)

(declare-fun t!99211 () Bool)

(assert (=> (and b!868673 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 (t!98904 rules!2621))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327189))))) t!99211) tb!62981))

(declare-fun result!72818 () Bool)

(assert (= result!72818 result!72686))

(assert (=> d!272772 t!99211))

(declare-fun t!99213 () Bool)

(declare-fun tb!62983 () Bool)

(assert (=> (and b!868673 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 (t!98904 rules!2621))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327335))))) t!99213) tb!62983))

(declare-fun result!72820 () Bool)

(assert (= result!72820 result!72762))

(assert (=> d!272830 t!99213))

(declare-fun tb!62985 () Bool)

(declare-fun t!99215 () Bool)

(assert (=> (and b!868673 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 (t!98904 rules!2621))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327188))))) t!99215) tb!62985))

(declare-fun result!72822 () Bool)

(assert (= result!72822 result!72586))

(assert (=> d!272492 t!99215))

(declare-fun tb!62987 () Bool)

(declare-fun t!99217 () Bool)

(assert (=> (and b!868673 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 (t!98904 rules!2621))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107))))) t!99217) tb!62987))

(declare-fun result!72824 () Bool)

(assert (= result!72824 result!72506))

(assert (=> b!867520 t!99217))

(declare-fun tb!62989 () Bool)

(declare-fun t!99219 () Bool)

(assert (=> (and b!868673 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 (t!98904 rules!2621))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107)))))) t!99219) tb!62989))

(declare-fun result!72826 () Bool)

(assert (= result!72826 result!72596))

(assert (=> b!868089 t!99219))

(declare-fun t!99221 () Bool)

(declare-fun tb!62991 () Bool)

(assert (=> (and b!868673 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 (t!98904 rules!2621))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 lt!327189)))))) t!99221) tb!62991))

(declare-fun result!72828 () Bool)

(assert (= result!72828 result!72676))

(assert (=> d!272758 t!99221))

(declare-fun t!99223 () Bool)

(declare-fun tb!62993 () Bool)

(assert (=> (and b!868673 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 (t!98904 rules!2621))))) (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297)))) t!99223) tb!62993))

(declare-fun result!72830 () Bool)

(assert (= result!72830 result!72544))

(assert (=> d!272498 t!99223))

(declare-fun t!99225 () Bool)

(declare-fun tb!62995 () Bool)

(assert (=> (and b!868673 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 (t!98904 rules!2621))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327354))))) t!99225) tb!62995))

(declare-fun result!72832 () Bool)

(assert (= result!72832 result!72576))

(assert (=> d!272482 t!99225))

(assert (=> b!867858 t!99223))

(declare-fun t!99227 () Bool)

(declare-fun tb!62997 () Bool)

(assert (=> (and b!868673 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 (t!98904 rules!2621))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 lt!327340))))) t!99227) tb!62997))

(declare-fun result!72834 () Bool)

(assert (= result!72834 result!72782))

(assert (=> d!272932 t!99227))

(declare-fun tb!62999 () Bool)

(declare-fun t!99229 () Bool)

(assert (=> (and b!868673 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 (t!98904 rules!2621))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 lt!327185)))))) t!99229) tb!62999))

(declare-fun result!72836 () Bool)

(assert (= result!72836 result!72646))

(assert (=> d!272684 t!99229))

(assert (=> d!272856 t!99217))

(declare-fun tp!274746 () Bool)

(declare-fun b_and!78099 () Bool)

(assert (=> b!868673 (= tp!274746 (and (=> t!99223 result!72830) (=> t!99209 result!72816) (=> t!99229 result!72836) (=> t!99221 result!72828) (=> t!99211 result!72818) (=> t!99213 result!72820) (=> t!99219 result!72826) (=> t!99227 result!72834) (=> t!99225 result!72832) (=> t!99217 result!72824) (=> t!99215 result!72822) b_and!78099))))

(declare-fun e!571692 () Bool)

(assert (=> b!868673 (= e!571692 (and tp!274747 tp!274746))))

(declare-fun b!868672 () Bool)

(declare-fun tp!274749 () Bool)

(declare-fun e!571693 () Bool)

(assert (=> b!868672 (= e!571693 (and tp!274749 (inv!11923 (tag!2026 (h!14793 (t!98904 (t!98904 rules!2621))))) (inv!11926 (transformation!1764 (h!14793 (t!98904 (t!98904 rules!2621))))) e!571692))))

(declare-fun b!868671 () Bool)

(declare-fun e!571691 () Bool)

(declare-fun tp!274748 () Bool)

(assert (=> b!868671 (= e!571691 (and e!571693 tp!274748))))

(assert (=> b!867928 (= tp!274553 e!571691)))

(assert (= b!868672 b!868673))

(assert (= b!868671 b!868672))

(assert (= (and b!867928 ((_ is Cons!9392) (t!98904 (t!98904 rules!2621)))) b!868671))

(declare-fun m!1116993 () Bool)

(assert (=> b!868672 m!1116993))

(declare-fun m!1116995 () Bool)

(assert (=> b!868672 m!1116995))

(declare-fun b!868676 () Bool)

(declare-fun e!571695 () Bool)

(declare-fun tp!274750 () Bool)

(assert (=> b!868676 (= e!571695 tp!274750)))

(declare-fun b!868675 () Bool)

(declare-fun tp!274753 () Bool)

(declare-fun tp!274754 () Bool)

(assert (=> b!868675 (= e!571695 (and tp!274753 tp!274754))))

(assert (=> b!867909 (= tp!274530 e!571695)))

(declare-fun b!868677 () Bool)

(declare-fun tp!274751 () Bool)

(declare-fun tp!274752 () Bool)

(assert (=> b!868677 (= e!571695 (and tp!274751 tp!274752))))

(declare-fun b!868674 () Bool)

(assert (=> b!868674 (= e!571695 tp_is_empty!4037)))

(assert (= (and b!867909 ((_ is ElementMatch!2197) (reg!2526 (regex!1764 (h!14793 rules!2621))))) b!868674))

(assert (= (and b!867909 ((_ is Concat!4028) (reg!2526 (regex!1764 (h!14793 rules!2621))))) b!868675))

(assert (= (and b!867909 ((_ is Star!2197) (reg!2526 (regex!1764 (h!14793 rules!2621))))) b!868676))

(assert (= (and b!867909 ((_ is Union!2197) (reg!2526 (regex!1764 (h!14793 rules!2621))))) b!868677))

(declare-fun b!868678 () Bool)

(declare-fun e!571696 () Bool)

(declare-fun tp!274755 () Bool)

(assert (=> b!868678 (= e!571696 (and tp_is_empty!4037 tp!274755))))

(assert (=> b!867935 (= tp!274560 e!571696)))

(assert (= (and b!867935 ((_ is Cons!9391) (t!98903 (originalCharacters!2320 (h!14794 l!5107))))) b!868678))

(declare-fun b!868681 () Bool)

(declare-fun e!571697 () Bool)

(declare-fun tp!274756 () Bool)

(assert (=> b!868681 (= e!571697 tp!274756)))

(declare-fun b!868680 () Bool)

(declare-fun tp!274759 () Bool)

(declare-fun tp!274760 () Bool)

(assert (=> b!868680 (= e!571697 (and tp!274759 tp!274760))))

(assert (=> b!867929 (= tp!274554 e!571697)))

(declare-fun b!868682 () Bool)

(declare-fun tp!274757 () Bool)

(declare-fun tp!274758 () Bool)

(assert (=> b!868682 (= e!571697 (and tp!274757 tp!274758))))

(declare-fun b!868679 () Bool)

(assert (=> b!868679 (= e!571697 tp_is_empty!4037)))

(assert (= (and b!867929 ((_ is ElementMatch!2197) (regex!1764 (h!14793 (t!98904 rules!2621))))) b!868679))

(assert (= (and b!867929 ((_ is Concat!4028) (regex!1764 (h!14793 (t!98904 rules!2621))))) b!868680))

(assert (= (and b!867929 ((_ is Star!2197) (regex!1764 (h!14793 (t!98904 rules!2621))))) b!868681))

(assert (= (and b!867929 ((_ is Union!2197) (regex!1764 (h!14793 (t!98904 rules!2621))))) b!868682))

(declare-fun b!868685 () Bool)

(declare-fun e!571698 () Bool)

(declare-fun tp!274761 () Bool)

(assert (=> b!868685 (= e!571698 tp!274761)))

(declare-fun b!868684 () Bool)

(declare-fun tp!274764 () Bool)

(declare-fun tp!274765 () Bool)

(assert (=> b!868684 (= e!571698 (and tp!274764 tp!274765))))

(assert (=> b!867910 (= tp!274531 e!571698)))

(declare-fun b!868686 () Bool)

(declare-fun tp!274762 () Bool)

(declare-fun tp!274763 () Bool)

(assert (=> b!868686 (= e!571698 (and tp!274762 tp!274763))))

(declare-fun b!868683 () Bool)

(assert (=> b!868683 (= e!571698 tp_is_empty!4037)))

(assert (= (and b!867910 ((_ is ElementMatch!2197) (regOne!4907 (regex!1764 (h!14793 rules!2621))))) b!868683))

(assert (= (and b!867910 ((_ is Concat!4028) (regOne!4907 (regex!1764 (h!14793 rules!2621))))) b!868684))

(assert (= (and b!867910 ((_ is Star!2197) (regOne!4907 (regex!1764 (h!14793 rules!2621))))) b!868685))

(assert (= (and b!867910 ((_ is Union!2197) (regOne!4907 (regex!1764 (h!14793 rules!2621))))) b!868686))

(declare-fun b!868689 () Bool)

(declare-fun e!571699 () Bool)

(declare-fun tp!274766 () Bool)

(assert (=> b!868689 (= e!571699 tp!274766)))

(declare-fun b!868688 () Bool)

(declare-fun tp!274769 () Bool)

(declare-fun tp!274770 () Bool)

(assert (=> b!868688 (= e!571699 (and tp!274769 tp!274770))))

(assert (=> b!867910 (= tp!274532 e!571699)))

(declare-fun b!868690 () Bool)

(declare-fun tp!274767 () Bool)

(declare-fun tp!274768 () Bool)

(assert (=> b!868690 (= e!571699 (and tp!274767 tp!274768))))

(declare-fun b!868687 () Bool)

(assert (=> b!868687 (= e!571699 tp_is_empty!4037)))

(assert (= (and b!867910 ((_ is ElementMatch!2197) (regTwo!4907 (regex!1764 (h!14793 rules!2621))))) b!868687))

(assert (= (and b!867910 ((_ is Concat!4028) (regTwo!4907 (regex!1764 (h!14793 rules!2621))))) b!868688))

(assert (= (and b!867910 ((_ is Star!2197) (regTwo!4907 (regex!1764 (h!14793 rules!2621))))) b!868689))

(assert (= (and b!867910 ((_ is Union!2197) (regTwo!4907 (regex!1764 (h!14793 rules!2621))))) b!868690))

(declare-fun b!868691 () Bool)

(declare-fun e!571700 () Bool)

(declare-fun tp!274771 () Bool)

(assert (=> b!868691 (= e!571700 (and tp_is_empty!4037 tp!274771))))

(assert (=> b!867919 (= tp!274542 e!571700)))

(assert (= (and b!867919 ((_ is Cons!9391) (t!98903 (originalCharacters!2320 separatorToken!297)))) b!868691))

(declare-fun b!868694 () Bool)

(declare-fun e!571701 () Bool)

(declare-fun tp!274772 () Bool)

(assert (=> b!868694 (= e!571701 tp!274772)))

(declare-fun b!868693 () Bool)

(declare-fun tp!274775 () Bool)

(declare-fun tp!274776 () Bool)

(assert (=> b!868693 (= e!571701 (and tp!274775 tp!274776))))

(assert (=> b!867912 (= tp!274538 e!571701)))

(declare-fun b!868695 () Bool)

(declare-fun tp!274773 () Bool)

(declare-fun tp!274774 () Bool)

(assert (=> b!868695 (= e!571701 (and tp!274773 tp!274774))))

(declare-fun b!868692 () Bool)

(assert (=> b!868692 (= e!571701 tp_is_empty!4037)))

(assert (= (and b!867912 ((_ is ElementMatch!2197) (regOne!4906 (regex!1764 (rule!3187 separatorToken!297))))) b!868692))

(assert (= (and b!867912 ((_ is Concat!4028) (regOne!4906 (regex!1764 (rule!3187 separatorToken!297))))) b!868693))

(assert (= (and b!867912 ((_ is Star!2197) (regOne!4906 (regex!1764 (rule!3187 separatorToken!297))))) b!868694))

(assert (= (and b!867912 ((_ is Union!2197) (regOne!4906 (regex!1764 (rule!3187 separatorToken!297))))) b!868695))

(declare-fun b!868698 () Bool)

(declare-fun e!571702 () Bool)

(declare-fun tp!274777 () Bool)

(assert (=> b!868698 (= e!571702 tp!274777)))

(declare-fun b!868697 () Bool)

(declare-fun tp!274780 () Bool)

(declare-fun tp!274781 () Bool)

(assert (=> b!868697 (= e!571702 (and tp!274780 tp!274781))))

(assert (=> b!867912 (= tp!274539 e!571702)))

(declare-fun b!868699 () Bool)

(declare-fun tp!274778 () Bool)

(declare-fun tp!274779 () Bool)

(assert (=> b!868699 (= e!571702 (and tp!274778 tp!274779))))

(declare-fun b!868696 () Bool)

(assert (=> b!868696 (= e!571702 tp_is_empty!4037)))

(assert (= (and b!867912 ((_ is ElementMatch!2197) (regTwo!4906 (regex!1764 (rule!3187 separatorToken!297))))) b!868696))

(assert (= (and b!867912 ((_ is Concat!4028) (regTwo!4906 (regex!1764 (rule!3187 separatorToken!297))))) b!868697))

(assert (= (and b!867912 ((_ is Star!2197) (regTwo!4906 (regex!1764 (rule!3187 separatorToken!297))))) b!868698))

(assert (= (and b!867912 ((_ is Union!2197) (regTwo!4906 (regex!1764 (rule!3187 separatorToken!297))))) b!868699))

(declare-fun b!868702 () Bool)

(declare-fun e!571703 () Bool)

(declare-fun tp!274782 () Bool)

(assert (=> b!868702 (= e!571703 tp!274782)))

(declare-fun b!868701 () Bool)

(declare-fun tp!274785 () Bool)

(declare-fun tp!274786 () Bool)

(assert (=> b!868701 (= e!571703 (and tp!274785 tp!274786))))

(assert (=> b!867914 (= tp!274536 e!571703)))

(declare-fun b!868703 () Bool)

(declare-fun tp!274783 () Bool)

(declare-fun tp!274784 () Bool)

(assert (=> b!868703 (= e!571703 (and tp!274783 tp!274784))))

(declare-fun b!868700 () Bool)

(assert (=> b!868700 (= e!571703 tp_is_empty!4037)))

(assert (= (and b!867914 ((_ is ElementMatch!2197) (regOne!4907 (regex!1764 (rule!3187 separatorToken!297))))) b!868700))

(assert (= (and b!867914 ((_ is Concat!4028) (regOne!4907 (regex!1764 (rule!3187 separatorToken!297))))) b!868701))

(assert (= (and b!867914 ((_ is Star!2197) (regOne!4907 (regex!1764 (rule!3187 separatorToken!297))))) b!868702))

(assert (= (and b!867914 ((_ is Union!2197) (regOne!4907 (regex!1764 (rule!3187 separatorToken!297))))) b!868703))

(declare-fun b!868706 () Bool)

(declare-fun e!571704 () Bool)

(declare-fun tp!274787 () Bool)

(assert (=> b!868706 (= e!571704 tp!274787)))

(declare-fun b!868705 () Bool)

(declare-fun tp!274790 () Bool)

(declare-fun tp!274791 () Bool)

(assert (=> b!868705 (= e!571704 (and tp!274790 tp!274791))))

(assert (=> b!867914 (= tp!274537 e!571704)))

(declare-fun b!868707 () Bool)

(declare-fun tp!274788 () Bool)

(declare-fun tp!274789 () Bool)

(assert (=> b!868707 (= e!571704 (and tp!274788 tp!274789))))

(declare-fun b!868704 () Bool)

(assert (=> b!868704 (= e!571704 tp_is_empty!4037)))

(assert (= (and b!867914 ((_ is ElementMatch!2197) (regTwo!4907 (regex!1764 (rule!3187 separatorToken!297))))) b!868704))

(assert (= (and b!867914 ((_ is Concat!4028) (regTwo!4907 (regex!1764 (rule!3187 separatorToken!297))))) b!868705))

(assert (= (and b!867914 ((_ is Star!2197) (regTwo!4907 (regex!1764 (rule!3187 separatorToken!297))))) b!868706))

(assert (= (and b!867914 ((_ is Union!2197) (regTwo!4907 (regex!1764 (rule!3187 separatorToken!297))))) b!868707))

(declare-fun b!868710 () Bool)

(declare-fun e!571705 () Bool)

(declare-fun tp!274792 () Bool)

(assert (=> b!868710 (= e!571705 tp!274792)))

(declare-fun b!868709 () Bool)

(declare-fun tp!274795 () Bool)

(declare-fun tp!274796 () Bool)

(assert (=> b!868709 (= e!571705 (and tp!274795 tp!274796))))

(assert (=> b!867913 (= tp!274535 e!571705)))

(declare-fun b!868711 () Bool)

(declare-fun tp!274793 () Bool)

(declare-fun tp!274794 () Bool)

(assert (=> b!868711 (= e!571705 (and tp!274793 tp!274794))))

(declare-fun b!868708 () Bool)

(assert (=> b!868708 (= e!571705 tp_is_empty!4037)))

(assert (= (and b!867913 ((_ is ElementMatch!2197) (reg!2526 (regex!1764 (rule!3187 separatorToken!297))))) b!868708))

(assert (= (and b!867913 ((_ is Concat!4028) (reg!2526 (regex!1764 (rule!3187 separatorToken!297))))) b!868709))

(assert (= (and b!867913 ((_ is Star!2197) (reg!2526 (regex!1764 (rule!3187 separatorToken!297))))) b!868710))

(assert (= (and b!867913 ((_ is Union!2197) (reg!2526 (regex!1764 (rule!3187 separatorToken!297))))) b!868711))

(declare-fun b_lambda!29617 () Bool)

(assert (= b_lambda!29569 (or d!272356 b_lambda!29617)))

(declare-fun bs!233152 () Bool)

(declare-fun d!272958 () Bool)

(assert (= bs!233152 (and d!272958 d!272356)))

(assert (=> bs!233152 (= (dynLambda!4474 lambda!26045 (h!14794 lt!327185)) (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 lt!327185)))))

(assert (=> bs!233152 m!1114741))

(assert (=> b!868256 d!272958))

(declare-fun b_lambda!29619 () Bool)

(assert (= b_lambda!29611 (or (and b!867896 b_free!26631 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))))) (and b!868617 b_free!26647 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 (t!98905 l!5107)))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))))) (and b!867510 b_free!26611) (and b!867500 b_free!26615 (= (toChars!2692 (transformation!1764 (h!14793 rules!2621))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))))) (and b!867930 b_free!26635 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 rules!2621)))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))))) (and b!868673 b_free!26651 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 (t!98904 rules!2621))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))))) (and b!867508 b_free!26619 (= (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))))) b_lambda!29619)))

(declare-fun b_lambda!29621 () Bool)

(assert (= b_lambda!29555 (or (and b!867500 b_free!26615 (= (toChars!2692 (transformation!1764 (h!14793 rules!2621))) (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))))) (and b!867930 b_free!26635 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 rules!2621)))) (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))))) (and b!867510 b_free!26611 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))))) (and b!868673 b_free!26651 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 (t!98904 rules!2621))))) (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))))) (and b!867896 b_free!26631 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))) (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))))) (and b!868617 b_free!26647 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 (t!98905 l!5107)))))) (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))))) (and b!867508 b_free!26619) b_lambda!29621)))

(declare-fun b_lambda!29623 () Bool)

(assert (= b_lambda!29563 (or d!272280 b_lambda!29623)))

(declare-fun bs!233153 () Bool)

(declare-fun d!272960 () Bool)

(assert (= bs!233153 (and d!272960 d!272280)))

(assert (=> bs!233153 (= (dynLambda!4474 lambda!26042 (h!14794 l!5107)) (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 l!5107)))))

(assert (=> bs!233153 m!1114645))

(assert (=> b!868190 d!272960))

(declare-fun b_lambda!29625 () Bool)

(assert (= b_lambda!29551 (or b!867501 b_lambda!29625)))

(declare-fun bs!233154 () Bool)

(declare-fun d!272962 () Bool)

(assert (= bs!233154 (and d!272962 b!867501)))

(assert (=> bs!233154 (= (dynLambda!4474 lambda!26036 (h!14794 (t!98905 l!5107))) (not (isSeparator!1764 (rule!3187 (h!14794 (t!98905 l!5107))))))))

(assert (=> b!868058 d!272962))

(declare-fun b_lambda!29627 () Bool)

(assert (= b_lambda!29579 (or d!272358 b_lambda!29627)))

(declare-fun bs!233155 () Bool)

(declare-fun d!272964 () Bool)

(assert (= bs!233155 (and d!272964 d!272358)))

(assert (=> bs!233155 (= (dynLambda!4474 lambda!26046 (h!14794 lt!327189)) (rulesProduceIndividualToken!630 thiss!20117 rules!2621 (h!14794 lt!327189)))))

(assert (=> bs!233155 m!1114913))

(assert (=> b!868292 d!272964))

(declare-fun b_lambda!29629 () Bool)

(assert (= b_lambda!29557 (or (and b!868617 b_free!26647 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 (t!98905 l!5107)))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))))) (and b!867930 b_free!26635 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 rules!2621)))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))))) (and b!867896 b_free!26631) (and b!867500 b_free!26615 (= (toChars!2692 (transformation!1764 (h!14793 rules!2621))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))))) (and b!867508 b_free!26619 (= (toChars!2692 (transformation!1764 (rule!3187 separatorToken!297))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))))) (and b!867510 b_free!26611 (= (toChars!2692 (transformation!1764 (rule!3187 (h!14794 l!5107)))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))))) (and b!868673 b_free!26651 (= (toChars!2692 (transformation!1764 (h!14793 (t!98904 (t!98904 rules!2621))))) (toChars!2692 (transformation!1764 (rule!3187 (h!14794 (t!98905 l!5107))))))) b_lambda!29629)))

(check-sat (not d!272880) (not d!272512) (not b_next!26695) (not b!868655) (not b!868553) (not b_next!26675) (not tb!62947) (not d!272868) (not b!868099) (not d!272900) (not b!868707) (not d!272904) (not b!868506) (not d!272848) (not d!272872) b_and!77817 (not b!868069) (not b!868508) (not b!868507) (not b!868060) b_and!78095 (not b!868077) (not b!868260) (not b!868505) (not b_lambda!29625) (not b!868519) (not b!868539) (not b!868682) (not b!868045) (not b_lambda!29621) (not d!272492) (not d!272850) (not b!868571) (not b!868076) (not b_lambda!29585) (not b!868098) (not b!868697) (not tb!62937) (not b!868576) (not d!272514) (not d!272852) (not d!272878) (not d!272944) (not b!868670) (not b!868699) (not b!868701) (not b!868570) (not d!272830) (not d!272506) (not d!272516) (not b!868295) (not bs!233153) (not d!272910) b_and!78089 (not b!868238) b_and!78085 (not d!272652) (not b!868556) (not b!868289) (not b_lambda!29613) (not b!868367) (not b!868528) (not d!272908) (not b_lambda!29549) (not d!272772) (not b_next!26693) (not b!868089) (not d!272902) (not d!272510) (not b!868355) (not b!868627) (not b_lambda!29615) (not b!868678) (not b_next!26683) (not b!868671) (not d!272876) (not b!868709) (not b_lambda!29553) (not b!868086) (not b!868615) (not b!868063) (not b!868694) (not b!868578) (not b!868659) (not d!272844) (not b!868059) (not d!272820) (not b!868101) (not d!272648) (not b!868091) (not b!868257) (not b!868672) (not b!868291) (not d!272522) tp_is_empty!4037 (not b!868285) (not b!868255) (not b!868551) (not d!272954) (not b!868643) (not b!868352) (not b_lambda!29587) (not b!868695) (not b!868595) (not b!868296) (not b!868642) (not b!868092) (not b!868521) (not b!868188) b_and!77857 (not b!868153) (not b!868558) (not b!868654) (not b!868569) (not b!868335) (not b!868647) (not b!868598) (not b!868504) (not b!868526) (not b!868676) (not d!272874) (not d!272682) (not b!868529) (not b!868566) (not b!868616) (not d!272566) (not d!272698) (not b!868688) (not b!868632) (not b!867526) (not b!868593) (not b!868543) (not b!868567) (not b!868588) (not b!868573) (not b!868641) (not b_next!26679) (not d!272840) (not b!868698) (not b!868072) (not b!868253) (not d!272526) (not b!868611) (not b!868638) (not d!272494) (not b!868090) (not b!868591) (not d!272692) (not d!272860) (not b!868635) (not b!868710) (not b!868581) (not b!868686) (not b!868557) (not d!272578) (not tb!62843) (not b_lambda!29609) (not b!868657) (not b!868522) (not b!868524) (not tb!62753) (not b!868545) b_and!77813 (not b!868546) (not b!868518) (not b!868666) (not bs!233155) (not b!868563) (not b_next!26681) (not b_next!26677) (not b!868564) (not bs!233152) (not b!868628) (not d!272486) (not b!868338) (not d!272786) (not b_next!26711) (not b!868550) (not b_next!26697) (not b!868691) (not d!272696) (not b!868345) (not d!272916) (not d!272948) (not tb!62813) (not tb!62763) (not b!868646) (not d!272808) (not b!868690) (not b!868084) (not b!868079) (not d!272858) (not b!868531) (not b!868665) (not b!868574) (not d!272952) (not b!868629) (not b!868669) (not b!868350) (not b!868511) (not b!868189) (not b_lambda!29617) (not b!868062) (not d!272498) (not b!868661) b_and!78091 (not b!868575) (not b!868510) (not d!272870) (not d!272898) (not d!272576) (not b!868052) (not b!868680) (not b!868512) (not b!868538) (not b!868677) (not b!868552) (not b!868286) (not b!868047) (not b!868360) (not b!868594) b_and!78083 (not d!272932) (not b!868565) (not b_next!26715) (not tb!62853) (not d!272936) (not d!272762) (not b!868684) (not d!272938) (not b_lambda!29627) (not b_lambda!29539) (not b!868689) (not d!272684) (not b!868693) (not b!868663) b_and!77861 (not b!868609) (not b!868637) (not b!868066) (not d!272472) (not tb!62927) (not d!272926) (not b!868288) (not b!868542) (not b!868584) (not b!868681) (not b!868294) (not b!868357) (not b!868293) (not b!868604) (not b!868085) (not d!272686) (not d!272774) (not b!868583) (not d!272758) (not b!868290) (not b_next!26699) (not b!868614) (not b!868703) (not b_next!26673) (not b!868658) (not b!868702) (not d!272924) (not d!272846) (not b_next!26713) (not d!272894) (not b!868515) (not b!868568) (not b_lambda!29537) (not d!272836) (not d!272502) (not b!868587) (not b!868711) (not d!272482) (not b!868600) (not b!867860) (not b_lambda!29629) (not b!868149) (not d!272752) (not b!868073) (not b!868100) (not b!868329) (not b!868535) (not b!868534) (not d!272660) (not b!868067) (not b!868555) (not b!868706) (not d!272760) (not b!868094) (not b_lambda!29577) (not d!272480) (not d!272572) (not d!272694) b_and!78087 (not d!272856) (not b!868351) (not b_lambda!29541) (not b_next!26709) (not b!868645) (not d!272828) b_and!78097 (not d!272906) (not bm!50564) (not b!868191) (not b!868151) (not d!272826) (not b!868337) (not b!868603) b_and!78099 (not b!868705) (not b!868675) (not b!868196) (not d!272474) (not b!868287) (not d!272866) (not b!868650) (not d!272824) (not d!272478) (not tb!62743) (not b!868339) (not b!868668) (not b!868580) (not d!272558) (not d!272524) (not b!868509) (not b_lambda!29619) (not b!868194) (not d!272896) (not d!272544) (not d!272582) (not b!868651) (not b!868590) (not b!868602) (not b!868083) (not b!868649) (not b!868152) (not b!868667) (not b!868626) (not d!272748) (not b!868195) (not b!868366) (not d!272914) (not d!272834) (not b!868044) (not b!868662) (not b!868034) (not b!868653) b_and!77821 (not b_lambda!29623) (not d!272922) (not d!272664) (not d!272688) (not d!272882) (not d!272918) (not d!272746) (not d!272496) (not d!272946) (not b!868549) (not d!272930) (not b!868685) (not d!272508) (not d!272754) (not d!272892) b_and!78093 (not b!868639) (not d!272928) (not d!272956) (not d!272862))
(check-sat b_and!77817 b_and!78095 (not b_next!26683) b_and!77857 (not b_next!26679) b_and!78091 b_and!77861 b_and!78099 b_and!77821 b_and!78093 (not b_next!26695) (not b_next!26675) b_and!78089 b_and!78085 (not b_next!26693) (not b_next!26681) b_and!77813 (not b_next!26711) (not b_next!26677) (not b_next!26697) (not b_next!26715) b_and!78083 (not b_next!26713) (not b_next!26699) (not b_next!26673) b_and!78087 (not b_next!26709) b_and!78097)
