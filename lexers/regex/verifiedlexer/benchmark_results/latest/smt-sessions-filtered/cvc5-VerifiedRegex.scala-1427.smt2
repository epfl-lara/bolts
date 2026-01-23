; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!74492 () Bool)

(assert start!74492)

(declare-fun b!839508 () Bool)

(declare-fun b_free!24933 () Bool)

(declare-fun b_next!24997 () Bool)

(assert (=> b!839508 (= b_free!24933 (not b_next!24997))))

(declare-fun tp!263823 () Bool)

(declare-fun b_and!72461 () Bool)

(assert (=> b!839508 (= tp!263823 b_and!72461)))

(declare-fun b_free!24935 () Bool)

(declare-fun b_next!24999 () Bool)

(assert (=> b!839508 (= b_free!24935 (not b_next!24999))))

(declare-fun tp!263821 () Bool)

(declare-fun b_and!72463 () Bool)

(assert (=> b!839508 (= tp!263821 b_and!72463)))

(declare-fun b!839506 () Bool)

(declare-fun b_free!24937 () Bool)

(declare-fun b_next!25001 () Bool)

(assert (=> b!839506 (= b_free!24937 (not b_next!25001))))

(declare-fun tp!263820 () Bool)

(declare-fun b_and!72465 () Bool)

(assert (=> b!839506 (= tp!263820 b_and!72465)))

(declare-fun b_free!24939 () Bool)

(declare-fun b_next!25003 () Bool)

(assert (=> b!839506 (= b_free!24939 (not b_next!25003))))

(declare-fun tp!263819 () Bool)

(declare-fun b_and!72467 () Bool)

(assert (=> b!839506 (= tp!263819 b_and!72467)))

(declare-fun b!839496 () Bool)

(declare-fun b_free!24941 () Bool)

(declare-fun b_next!25005 () Bool)

(assert (=> b!839496 (= b_free!24941 (not b_next!25005))))

(declare-fun tp!263827 () Bool)

(declare-fun b_and!72469 () Bool)

(assert (=> b!839496 (= tp!263827 b_and!72469)))

(declare-fun b_free!24943 () Bool)

(declare-fun b_next!25007 () Bool)

(assert (=> b!839496 (= b_free!24943 (not b_next!25007))))

(declare-fun tp!263818 () Bool)

(declare-fun b_and!72471 () Bool)

(assert (=> b!839496 (= tp!263818 b_and!72471)))

(declare-fun e!551978 () Bool)

(declare-fun tp!263824 () Bool)

(declare-fun e!551985 () Bool)

(declare-datatypes ((List!8984 0))(
  ( (Nil!8968) (Cons!8968 (h!14369 (_ BitVec 16)) (t!93368 List!8984)) )
))
(declare-datatypes ((TokenValue!1745 0))(
  ( (FloatLiteralValue!3490 (text!12660 List!8984)) (TokenValueExt!1744 (__x!7221 Int)) (Broken!8725 (value!54526 List!8984)) (Object!1760) (End!1745) (Def!1745) (Underscore!1745) (Match!1745) (Else!1745) (Error!1745) (Case!1745) (If!1745) (Extends!1745) (Abstract!1745) (Class!1745) (Val!1745) (DelimiterValue!3490 (del!1805 List!8984)) (KeywordValue!1751 (value!54527 List!8984)) (CommentValue!3490 (value!54528 List!8984)) (WhitespaceValue!3490 (value!54529 List!8984)) (IndentationValue!1745 (value!54530 List!8984)) (String!10624) (Int32!1745) (Broken!8726 (value!54531 List!8984)) (Boolean!1746) (Unit!13427) (OperatorValue!1748 (op!1805 List!8984)) (IdentifierValue!3490 (value!54532 List!8984)) (IdentifierValue!3491 (value!54533 List!8984)) (WhitespaceValue!3491 (value!54534 List!8984)) (True!3490) (False!3490) (Broken!8727 (value!54535 List!8984)) (Broken!8728 (value!54536 List!8984)) (True!3491) (RightBrace!1745) (RightBracket!1745) (Colon!1745) (Null!1745) (Comma!1745) (LeftBracket!1745) (False!3491) (LeftBrace!1745) (ImaginaryLiteralValue!1745 (text!12661 List!8984)) (StringLiteralValue!5235 (value!54537 List!8984)) (EOFValue!1745 (value!54538 List!8984)) (IdentValue!1745 (value!54539 List!8984)) (DelimiterValue!3491 (value!54540 List!8984)) (DedentValue!1745 (value!54541 List!8984)) (NewLineValue!1745 (value!54542 List!8984)) (IntegerValue!5235 (value!54543 (_ BitVec 32)) (text!12662 List!8984)) (IntegerValue!5236 (value!54544 Int) (text!12663 List!8984)) (Times!1745) (Or!1745) (Equal!1745) (Minus!1745) (Broken!8729 (value!54545 List!8984)) (And!1745) (Div!1745) (LessEqual!1745) (Mod!1745) (Concat!3857) (Not!1745) (Plus!1745) (SpaceValue!1745 (value!54546 List!8984)) (IntegerValue!5237 (value!54547 Int) (text!12664 List!8984)) (StringLiteralValue!5236 (text!12665 List!8984)) (FloatLiteralValue!3491 (text!12666 List!8984)) (BytesLiteralValue!1745 (value!54548 List!8984)) (CommentValue!3491 (value!54549 List!8984)) (StringLiteralValue!5237 (value!54550 List!8984)) (ErrorTokenValue!1745 (msg!1806 List!8984)) )
))
(declare-datatypes ((C!4794 0))(
  ( (C!4795 (val!2645 Int)) )
))
(declare-datatypes ((Regex!2112 0))(
  ( (ElementMatch!2112 (c!137001 C!4794)) (Concat!3858 (regOne!4736 Regex!2112) (regTwo!4736 Regex!2112)) (EmptyExpr!2112) (Star!2112 (reg!2441 Regex!2112)) (EmptyLang!2112) (Union!2112 (regOne!4737 Regex!2112) (regTwo!4737 Regex!2112)) )
))
(declare-datatypes ((String!10625 0))(
  ( (String!10626 (value!54551 String)) )
))
(declare-datatypes ((List!8985 0))(
  ( (Nil!8969) (Cons!8969 (h!14370 C!4794) (t!93369 List!8985)) )
))
(declare-datatypes ((IArray!5957 0))(
  ( (IArray!5958 (innerList!3036 List!8985)) )
))
(declare-datatypes ((Conc!2976 0))(
  ( (Node!2976 (left!6661 Conc!2976) (right!6991 Conc!2976) (csize!6182 Int) (cheight!3187 Int)) (Leaf!4404 (xs!5665 IArray!5957) (csize!6183 Int)) (Empty!2976) )
))
(declare-datatypes ((BalanceConc!5966 0))(
  ( (BalanceConc!5967 (c!137002 Conc!2976)) )
))
(declare-datatypes ((TokenValueInjection!3190 0))(
  ( (TokenValueInjection!3191 (toValue!2696 Int) (toChars!2555 Int)) )
))
(declare-datatypes ((Rule!3158 0))(
  ( (Rule!3159 (regex!1679 Regex!2112) (tag!1941 String!10625) (isSeparator!1679 Bool) (transformation!1679 TokenValueInjection!3190)) )
))
(declare-datatypes ((Token!3024 0))(
  ( (Token!3025 (value!54552 TokenValue!1745) (rule!3102 Rule!3158) (size!7516 Int) (originalCharacters!2235 List!8985)) )
))
(declare-datatypes ((List!8986 0))(
  ( (Nil!8970) (Cons!8970 (h!14371 Token!3024) (t!93370 List!8986)) )
))
(declare-fun l!5107 () List!8986)

(declare-fun b!839490 () Bool)

(declare-fun inv!11445 (Token!3024) Bool)

(assert (=> b!839490 (= e!551978 (and (inv!11445 (h!14371 l!5107)) e!551985 tp!263824))))

(declare-fun b!839491 () Bool)

(declare-fun res!383731 () Bool)

(declare-fun e!551981 () Bool)

(assert (=> b!839491 (=> res!383731 e!551981)))

(declare-fun lt!318250 () List!8986)

(declare-fun head!1439 (List!8986) Token!3024)

(assert (=> b!839491 (= res!383731 (not (= (head!1439 l!5107) (h!14371 lt!318250))))))

(declare-fun separatorToken!297 () Token!3024)

(declare-fun b!839492 () Bool)

(declare-fun tp!263817 () Bool)

(declare-fun e!551987 () Bool)

(declare-fun e!551977 () Bool)

(declare-fun inv!11442 (String!10625) Bool)

(declare-fun inv!11446 (TokenValueInjection!3190) Bool)

(assert (=> b!839492 (= e!551977 (and tp!263817 (inv!11442 (tag!1941 (rule!3102 separatorToken!297))) (inv!11446 (transformation!1679 (rule!3102 separatorToken!297))) e!551987))))

(declare-fun b!839493 () Bool)

(declare-fun res!383734 () Bool)

(declare-fun e!551979 () Bool)

(assert (=> b!839493 (=> (not res!383734) (not e!551979))))

(assert (=> b!839493 (= res!383734 (isSeparator!1679 (rule!3102 separatorToken!297)))))

(declare-fun e!551975 () Bool)

(declare-fun b!839494 () Bool)

(declare-fun tp!263826 () Bool)

(declare-fun inv!21 (TokenValue!1745) Bool)

(assert (=> b!839494 (= e!551985 (and (inv!21 (value!54552 (h!14371 l!5107))) e!551975 tp!263826))))

(declare-fun b!839495 () Bool)

(declare-fun res!383729 () Bool)

(assert (=> b!839495 (=> (not res!383729) (not e!551979))))

(declare-datatypes ((List!8987 0))(
  ( (Nil!8971) (Cons!8971 (h!14372 Rule!3158) (t!93371 List!8987)) )
))
(declare-fun rules!2621 () List!8987)

(declare-fun sepAndNonSepRulesDisjointChars!479 (List!8987 List!8987) Bool)

(assert (=> b!839495 (= res!383729 (sepAndNonSepRulesDisjointChars!479 rules!2621 rules!2621))))

(declare-fun e!551988 () Bool)

(assert (=> b!839496 (= e!551988 (and tp!263827 tp!263818))))

(declare-fun b!839497 () Bool)

(assert (=> b!839497 (= e!551979 (not e!551981))))

(declare-fun res!383730 () Bool)

(assert (=> b!839497 (=> res!383730 e!551981)))

(assert (=> b!839497 (= res!383730 (or (not (is-Cons!8970 lt!318250)) (not (is-Cons!8970 (t!93370 lt!318250)))))))

(declare-datatypes ((LexerInterface!1481 0))(
  ( (LexerInterfaceExt!1478 (__x!7222 Int)) (Lexer!1479) )
))
(declare-fun thiss!20117 () LexerInterface!1481)

(declare-fun rulesProduceEachTokenIndividuallyList!369 (LexerInterface!1481 List!8987 List!8986) Bool)

(assert (=> b!839497 (rulesProduceEachTokenIndividuallyList!369 thiss!20117 rules!2621 lt!318250)))

(declare-fun withSeparatorTokenList!11 (LexerInterface!1481 List!8986 Token!3024) List!8986)

(assert (=> b!839497 (= lt!318250 (withSeparatorTokenList!11 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13428 0))(
  ( (Unit!13429) )
))
(declare-fun lt!318252 () Unit!13428)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!11 (LexerInterface!1481 List!8987 List!8986 Token!3024) Unit!13428)

(assert (=> b!839497 (= lt!318252 (withSeparatorTokenListPreservesRulesProduceTokens!11 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun b!839498 () Bool)

(declare-fun res!383724 () Bool)

(assert (=> b!839498 (=> res!383724 e!551981)))

(assert (=> b!839498 (= res!383724 (not (= (h!14371 (t!93370 lt!318250)) separatorToken!297)))))

(declare-fun b!839499 () Bool)

(declare-fun res!383725 () Bool)

(assert (=> b!839499 (=> (not res!383725) (not e!551979))))

(assert (=> b!839499 (= res!383725 (rulesProduceEachTokenIndividuallyList!369 thiss!20117 rules!2621 l!5107))))

(declare-fun b!839500 () Bool)

(declare-fun res!383727 () Bool)

(assert (=> b!839500 (=> res!383727 e!551981)))

(declare-fun tail!997 (List!8986) List!8986)

(assert (=> b!839500 (= res!383727 (not (= (t!93370 (t!93370 lt!318250)) (withSeparatorTokenList!11 thiss!20117 (tail!997 l!5107) separatorToken!297))))))

(declare-fun res!383732 () Bool)

(assert (=> start!74492 (=> (not res!383732) (not e!551979))))

(assert (=> start!74492 (= res!383732 (is-Lexer!1479 thiss!20117))))

(assert (=> start!74492 e!551979))

(assert (=> start!74492 true))

(declare-fun e!551990 () Bool)

(assert (=> start!74492 e!551990))

(assert (=> start!74492 e!551978))

(declare-fun e!551974 () Bool)

(assert (=> start!74492 (and (inv!11445 separatorToken!297) e!551974)))

(declare-fun tp!263828 () Bool)

(declare-fun b!839501 () Bool)

(declare-fun e!551989 () Bool)

(assert (=> b!839501 (= e!551975 (and tp!263828 (inv!11442 (tag!1941 (rule!3102 (h!14371 l!5107)))) (inv!11446 (transformation!1679 (rule!3102 (h!14371 l!5107)))) e!551989))))

(declare-fun b!839502 () Bool)

(declare-fun res!383726 () Bool)

(assert (=> b!839502 (=> (not res!383726) (not e!551979))))

(declare-fun rulesProduceIndividualToken!545 (LexerInterface!1481 List!8987 Token!3024) Bool)

(assert (=> b!839502 (= res!383726 (rulesProduceIndividualToken!545 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun e!551976 () Bool)

(declare-fun tp!263829 () Bool)

(declare-fun b!839503 () Bool)

(assert (=> b!839503 (= e!551976 (and tp!263829 (inv!11442 (tag!1941 (h!14372 rules!2621))) (inv!11446 (transformation!1679 (h!14372 rules!2621))) e!551988))))

(declare-fun b!839504 () Bool)

(assert (=> b!839504 (= e!551981 (rulesProduceIndividualToken!545 thiss!20117 rules!2621 (h!14371 lt!318250)))))

(declare-fun separableTokensPredicate!21 (LexerInterface!1481 Token!3024 Token!3024 List!8987) Bool)

(assert (=> b!839504 (separableTokensPredicate!21 thiss!20117 (h!14371 lt!318250) (h!14371 (t!93370 lt!318250)) rules!2621)))

(declare-fun lt!318251 () Unit!13428)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!3 (LexerInterface!1481 Token!3024 Token!3024 List!8987) Unit!13428)

(assert (=> b!839504 (= lt!318251 (lemmaTokensOfDifferentKindsAreSeparable!3 thiss!20117 (h!14371 lt!318250) (h!14371 (t!93370 lt!318250)) rules!2621))))

(declare-fun b!839505 () Bool)

(declare-fun res!383733 () Bool)

(assert (=> b!839505 (=> (not res!383733) (not e!551979))))

(declare-fun lambda!24921 () Int)

(declare-fun forall!2094 (List!8986 Int) Bool)

(assert (=> b!839505 (= res!383733 (forall!2094 l!5107 lambda!24921))))

(assert (=> b!839506 (= e!551989 (and tp!263820 tp!263819))))

(declare-fun b!839507 () Bool)

(declare-fun res!383735 () Bool)

(assert (=> b!839507 (=> (not res!383735) (not e!551979))))

(declare-fun rulesInvariant!1357 (LexerInterface!1481 List!8987) Bool)

(assert (=> b!839507 (= res!383735 (rulesInvariant!1357 thiss!20117 rules!2621))))

(assert (=> b!839508 (= e!551987 (and tp!263823 tp!263821))))

(declare-fun b!839509 () Bool)

(declare-fun res!383728 () Bool)

(assert (=> b!839509 (=> (not res!383728) (not e!551979))))

(declare-fun isEmpty!5292 (List!8987) Bool)

(assert (=> b!839509 (= res!383728 (not (isEmpty!5292 rules!2621)))))

(declare-fun tp!263822 () Bool)

(declare-fun b!839510 () Bool)

(assert (=> b!839510 (= e!551974 (and (inv!21 (value!54552 separatorToken!297)) e!551977 tp!263822))))

(declare-fun b!839511 () Bool)

(declare-fun tp!263825 () Bool)

(assert (=> b!839511 (= e!551990 (and e!551976 tp!263825))))

(assert (= (and start!74492 res!383732) b!839509))

(assert (= (and b!839509 res!383728) b!839507))

(assert (= (and b!839507 res!383735) b!839499))

(assert (= (and b!839499 res!383725) b!839502))

(assert (= (and b!839502 res!383726) b!839493))

(assert (= (and b!839493 res!383734) b!839505))

(assert (= (and b!839505 res!383733) b!839495))

(assert (= (and b!839495 res!383729) b!839497))

(assert (= (and b!839497 (not res!383730)) b!839500))

(assert (= (and b!839500 (not res!383727)) b!839491))

(assert (= (and b!839491 (not res!383731)) b!839498))

(assert (= (and b!839498 (not res!383724)) b!839504))

(assert (= b!839503 b!839496))

(assert (= b!839511 b!839503))

(assert (= (and start!74492 (is-Cons!8971 rules!2621)) b!839511))

(assert (= b!839501 b!839506))

(assert (= b!839494 b!839501))

(assert (= b!839490 b!839494))

(assert (= (and start!74492 (is-Cons!8970 l!5107)) b!839490))

(assert (= b!839492 b!839508))

(assert (= b!839510 b!839492))

(assert (= start!74492 b!839510))

(declare-fun m!1072393 () Bool)

(assert (=> b!839501 m!1072393))

(declare-fun m!1072395 () Bool)

(assert (=> b!839501 m!1072395))

(declare-fun m!1072397 () Bool)

(assert (=> b!839504 m!1072397))

(declare-fun m!1072399 () Bool)

(assert (=> b!839504 m!1072399))

(declare-fun m!1072401 () Bool)

(assert (=> b!839504 m!1072401))

(declare-fun m!1072403 () Bool)

(assert (=> b!839500 m!1072403))

(assert (=> b!839500 m!1072403))

(declare-fun m!1072405 () Bool)

(assert (=> b!839500 m!1072405))

(declare-fun m!1072407 () Bool)

(assert (=> b!839499 m!1072407))

(declare-fun m!1072409 () Bool)

(assert (=> b!839505 m!1072409))

(declare-fun m!1072411 () Bool)

(assert (=> b!839502 m!1072411))

(declare-fun m!1072413 () Bool)

(assert (=> b!839497 m!1072413))

(declare-fun m!1072415 () Bool)

(assert (=> b!839497 m!1072415))

(declare-fun m!1072417 () Bool)

(assert (=> b!839497 m!1072417))

(declare-fun m!1072419 () Bool)

(assert (=> b!839503 m!1072419))

(declare-fun m!1072421 () Bool)

(assert (=> b!839503 m!1072421))

(declare-fun m!1072423 () Bool)

(assert (=> b!839490 m!1072423))

(declare-fun m!1072425 () Bool)

(assert (=> b!839507 m!1072425))

(declare-fun m!1072427 () Bool)

(assert (=> b!839492 m!1072427))

(declare-fun m!1072429 () Bool)

(assert (=> b!839492 m!1072429))

(declare-fun m!1072431 () Bool)

(assert (=> b!839509 m!1072431))

(declare-fun m!1072433 () Bool)

(assert (=> b!839491 m!1072433))

(declare-fun m!1072435 () Bool)

(assert (=> b!839494 m!1072435))

(declare-fun m!1072437 () Bool)

(assert (=> b!839510 m!1072437))

(declare-fun m!1072439 () Bool)

(assert (=> start!74492 m!1072439))

(declare-fun m!1072441 () Bool)

(assert (=> b!839495 m!1072441))

(push 1)

(assert (not b!839490))

(assert (not b!839503))

(assert (not b!839497))

(assert (not b!839492))

(assert (not b!839511))

(assert (not b!839491))

(assert (not b_next!25003))

(assert b_and!72467)

(assert (not b_next!25001))

(assert (not b!839510))

(assert (not b!839500))

(assert b_and!72465)

(assert b_and!72463)

(assert b_and!72469)

(assert (not b!839507))

(assert (not b!839495))

(assert (not b_next!25005))

(assert (not b_next!24997))

(assert b_and!72461)

(assert (not b!839501))

(assert (not b!839509))

(assert (not b!839494))

(assert (not b!839499))

(assert b_and!72471)

(assert (not b_next!24999))

(assert (not b!839502))

(assert (not b!839505))

(assert (not b!839504))

(assert (not b_next!25007))

(assert (not start!74492))

(check-sat)

(pop 1)

(push 1)

(assert b_and!72461)

(assert (not b_next!25003))

(assert b_and!72467)

(assert (not b_next!25001))

(assert b_and!72471)

(assert (not b_next!24999))

(assert b_and!72465)

(assert (not b_next!25007))

(assert b_and!72463)

(assert b_and!72469)

(assert (not b_next!25005))

(assert (not b_next!24997))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!839598 () Bool)

(declare-fun e!552058 () List!8986)

(assert (=> b!839598 (= e!552058 Nil!8970)))

(declare-fun b!839599 () Bool)

(declare-fun e!552054 () Bool)

(declare-fun e!552057 () List!8985)

(declare-fun printList!451 (LexerInterface!1481 List!8986) List!8985)

(declare-fun $colon$colon!64 (List!8986 Token!3024) List!8986)

(assert (=> b!839599 (= e!552054 (= (printList!451 thiss!20117 ($colon$colon!64 ($colon$colon!64 (withSeparatorTokenList!11 thiss!20117 (t!93370 (tail!997 l!5107)) separatorToken!297) separatorToken!297) (h!14371 (tail!997 l!5107)))) e!552057))))

(declare-fun c!137013 () Bool)

(declare-fun lt!318285 () List!8986)

(assert (=> b!839599 (= c!137013 (is-Cons!8970 lt!318285))))

(assert (=> b!839599 (= lt!318285 ($colon$colon!64 ($colon$colon!64 (withSeparatorTokenList!11 thiss!20117 (t!93370 (tail!997 l!5107)) separatorToken!297) separatorToken!297) (h!14371 (tail!997 l!5107))))))

(declare-fun b!839600 () Bool)

(declare-fun e!552055 () Bool)

(declare-fun e!552056 () Bool)

(assert (=> b!839600 (= e!552055 e!552056)))

(declare-fun res!383790 () Bool)

(assert (=> b!839600 (=> res!383790 e!552056)))

(assert (=> b!839600 (= res!383790 (not (is-Cons!8970 (tail!997 l!5107))))))

(declare-fun lt!318284 () List!8986)

(declare-fun d!261420 () Bool)

(declare-fun printWithSeparatorTokenList!9 (LexerInterface!1481 List!8986 Token!3024) List!8985)

(assert (=> d!261420 (= (printList!451 thiss!20117 lt!318284) (printWithSeparatorTokenList!9 thiss!20117 (tail!997 l!5107) separatorToken!297))))

(assert (=> d!261420 (= lt!318284 e!552058)))

(declare-fun c!137012 () Bool)

(assert (=> d!261420 (= c!137012 (is-Cons!8970 (tail!997 l!5107)))))

(assert (=> d!261420 e!552055))

(declare-fun res!383788 () Bool)

(assert (=> d!261420 (=> (not res!383788) (not e!552055))))

(assert (=> d!261420 (= res!383788 (isSeparator!1679 (rule!3102 separatorToken!297)))))

(assert (=> d!261420 (= (withSeparatorTokenList!11 thiss!20117 (tail!997 l!5107) separatorToken!297) lt!318284)))

(declare-fun b!839601 () Bool)

(declare-fun e!552059 () List!8985)

(declare-fun lt!318283 () List!8986)

(declare-fun ++!2325 (List!8985 List!8985) List!8985)

(declare-fun list!3539 (BalanceConc!5966) List!8985)

(declare-fun charsOf!966 (Token!3024) BalanceConc!5966)

(assert (=> b!839601 (= e!552059 (++!2325 (list!3539 (charsOf!966 (h!14371 lt!318283))) (printList!451 thiss!20117 (t!93370 lt!318283))))))

(declare-fun b!839602 () Bool)

(assert (=> b!839602 (= e!552056 (= (printList!451 thiss!20117 ($colon$colon!64 (withSeparatorTokenList!11 thiss!20117 (t!93370 (tail!997 l!5107)) separatorToken!297) separatorToken!297)) e!552059))))

(declare-fun c!137011 () Bool)

(assert (=> b!839602 (= c!137011 (is-Cons!8970 lt!318283))))

(assert (=> b!839602 (= lt!318283 ($colon$colon!64 (withSeparatorTokenList!11 thiss!20117 (t!93370 (tail!997 l!5107)) separatorToken!297) separatorToken!297))))

(declare-fun b!839603 () Bool)

(assert (=> b!839603 (= e!552058 ($colon$colon!64 ($colon$colon!64 (withSeparatorTokenList!11 thiss!20117 (t!93370 (tail!997 l!5107)) separatorToken!297) separatorToken!297) (h!14371 (tail!997 l!5107))))))

(declare-fun lt!318278 () List!8985)

(assert (=> b!839603 (= lt!318278 (list!3539 (charsOf!966 (h!14371 (tail!997 l!5107)))))))

(declare-fun lt!318279 () List!8985)

(assert (=> b!839603 (= lt!318279 (list!3539 (charsOf!966 separatorToken!297)))))

(declare-fun lt!318282 () List!8985)

(assert (=> b!839603 (= lt!318282 (printList!451 thiss!20117 (withSeparatorTokenList!11 thiss!20117 (t!93370 (tail!997 l!5107)) separatorToken!297)))))

(declare-fun lt!318281 () Unit!13428)

(declare-fun lemmaConcatAssociativity!726 (List!8985 List!8985 List!8985) Unit!13428)

(assert (=> b!839603 (= lt!318281 (lemmaConcatAssociativity!726 lt!318278 lt!318279 lt!318282))))

(assert (=> b!839603 (= (++!2325 (++!2325 lt!318278 lt!318279) lt!318282) (++!2325 lt!318278 (++!2325 lt!318279 lt!318282)))))

(declare-fun lt!318280 () Unit!13428)

(assert (=> b!839603 (= lt!318280 lt!318281)))

(declare-fun b!839604 () Bool)

(assert (=> b!839604 (= e!552057 (++!2325 (list!3539 (charsOf!966 (h!14371 lt!318285))) (printList!451 thiss!20117 (t!93370 lt!318285))))))

(declare-fun b!839605 () Bool)

(declare-fun res!383787 () Bool)

(assert (=> b!839605 (=> (not res!383787) (not e!552055))))

(assert (=> b!839605 (= res!383787 e!552054)))

(declare-fun res!383789 () Bool)

(assert (=> b!839605 (=> res!383789 e!552054)))

(assert (=> b!839605 (= res!383789 (not (is-Cons!8970 (tail!997 l!5107))))))

(declare-fun b!839606 () Bool)

(assert (=> b!839606 (= e!552059 Nil!8969)))

(declare-fun b!839607 () Bool)

(assert (=> b!839607 (= e!552057 Nil!8969)))

(assert (= (and d!261420 res!383788) b!839605))

(assert (= (and b!839605 (not res!383789)) b!839599))

(assert (= (and b!839599 c!137013) b!839604))

(assert (= (and b!839599 (not c!137013)) b!839607))

(assert (= (and b!839605 res!383787) b!839600))

(assert (= (and b!839600 (not res!383790)) b!839602))

(assert (= (and b!839602 c!137011) b!839601))

(assert (= (and b!839602 (not c!137011)) b!839606))

(assert (= (and d!261420 c!137012) b!839603))

(assert (= (and d!261420 (not c!137012)) b!839598))

(declare-fun m!1072493 () Bool)

(assert (=> b!839599 m!1072493))

(assert (=> b!839599 m!1072493))

(declare-fun m!1072495 () Bool)

(assert (=> b!839599 m!1072495))

(assert (=> b!839599 m!1072495))

(declare-fun m!1072497 () Bool)

(assert (=> b!839599 m!1072497))

(assert (=> b!839599 m!1072497))

(declare-fun m!1072499 () Bool)

(assert (=> b!839599 m!1072499))

(assert (=> b!839602 m!1072493))

(assert (=> b!839602 m!1072493))

(assert (=> b!839602 m!1072495))

(assert (=> b!839602 m!1072495))

(declare-fun m!1072501 () Bool)

(assert (=> b!839602 m!1072501))

(declare-fun m!1072503 () Bool)

(assert (=> d!261420 m!1072503))

(assert (=> d!261420 m!1072403))

(declare-fun m!1072505 () Bool)

(assert (=> d!261420 m!1072505))

(declare-fun m!1072507 () Bool)

(assert (=> b!839604 m!1072507))

(assert (=> b!839604 m!1072507))

(declare-fun m!1072509 () Bool)

(assert (=> b!839604 m!1072509))

(declare-fun m!1072511 () Bool)

(assert (=> b!839604 m!1072511))

(assert (=> b!839604 m!1072509))

(assert (=> b!839604 m!1072511))

(declare-fun m!1072513 () Bool)

(assert (=> b!839604 m!1072513))

(declare-fun m!1072515 () Bool)

(assert (=> b!839603 m!1072515))

(declare-fun m!1072517 () Bool)

(assert (=> b!839603 m!1072517))

(assert (=> b!839603 m!1072517))

(declare-fun m!1072519 () Bool)

(assert (=> b!839603 m!1072519))

(assert (=> b!839603 m!1072515))

(declare-fun m!1072521 () Bool)

(assert (=> b!839603 m!1072521))

(assert (=> b!839603 m!1072493))

(declare-fun m!1072523 () Bool)

(assert (=> b!839603 m!1072523))

(declare-fun m!1072525 () Bool)

(assert (=> b!839603 m!1072525))

(declare-fun m!1072527 () Bool)

(assert (=> b!839603 m!1072527))

(assert (=> b!839603 m!1072525))

(declare-fun m!1072529 () Bool)

(assert (=> b!839603 m!1072529))

(assert (=> b!839603 m!1072493))

(assert (=> b!839603 m!1072495))

(assert (=> b!839603 m!1072497))

(declare-fun m!1072531 () Bool)

(assert (=> b!839603 m!1072531))

(assert (=> b!839603 m!1072493))

(assert (=> b!839603 m!1072495))

(assert (=> b!839603 m!1072527))

(declare-fun m!1072533 () Bool)

(assert (=> b!839603 m!1072533))

(declare-fun m!1072535 () Bool)

(assert (=> b!839601 m!1072535))

(assert (=> b!839601 m!1072535))

(declare-fun m!1072537 () Bool)

(assert (=> b!839601 m!1072537))

(declare-fun m!1072539 () Bool)

(assert (=> b!839601 m!1072539))

(assert (=> b!839601 m!1072537))

(assert (=> b!839601 m!1072539))

(declare-fun m!1072541 () Bool)

(assert (=> b!839601 m!1072541))

(assert (=> b!839500 d!261420))

(declare-fun d!261424 () Bool)

(assert (=> d!261424 (= (tail!997 l!5107) (t!93370 l!5107))))

(assert (=> b!839500 d!261424))

(declare-fun bs!229786 () Bool)

(declare-fun d!261426 () Bool)

(assert (= bs!229786 (and d!261426 b!839505)))

(declare-fun lambda!24927 () Int)

(assert (=> bs!229786 (not (= lambda!24927 lambda!24921))))

(declare-fun b!839639 () Bool)

(declare-fun e!552084 () Bool)

(assert (=> b!839639 (= e!552084 true)))

(declare-fun b!839638 () Bool)

(declare-fun e!552083 () Bool)

(assert (=> b!839638 (= e!552083 e!552084)))

(declare-fun b!839637 () Bool)

(declare-fun e!552082 () Bool)

(assert (=> b!839637 (= e!552082 e!552083)))

(assert (=> d!261426 e!552082))

(assert (= b!839638 b!839639))

(assert (= b!839637 b!839638))

(assert (= (and d!261426 (is-Cons!8971 rules!2621)) b!839637))

(declare-fun order!5705 () Int)

(declare-fun order!5707 () Int)

(declare-fun dynLambda!4142 (Int Int) Int)

(declare-fun dynLambda!4143 (Int Int) Int)

(assert (=> b!839639 (< (dynLambda!4142 order!5705 (toValue!2696 (transformation!1679 (h!14372 rules!2621)))) (dynLambda!4143 order!5707 lambda!24927))))

(declare-fun order!5709 () Int)

(declare-fun dynLambda!4144 (Int Int) Int)

(assert (=> b!839639 (< (dynLambda!4144 order!5709 (toChars!2555 (transformation!1679 (h!14372 rules!2621)))) (dynLambda!4143 order!5707 lambda!24927))))

(assert (=> d!261426 true))

(declare-fun lt!318290 () Bool)

(assert (=> d!261426 (= lt!318290 (forall!2094 l!5107 lambda!24927))))

(declare-fun e!552075 () Bool)

(assert (=> d!261426 (= lt!318290 e!552075)))

(declare-fun res!383805 () Bool)

(assert (=> d!261426 (=> res!383805 e!552075)))

(assert (=> d!261426 (= res!383805 (not (is-Cons!8970 l!5107)))))

(assert (=> d!261426 (not (isEmpty!5292 rules!2621))))

(assert (=> d!261426 (= (rulesProduceEachTokenIndividuallyList!369 thiss!20117 rules!2621 l!5107) lt!318290)))

(declare-fun b!839627 () Bool)

(declare-fun e!552074 () Bool)

(assert (=> b!839627 (= e!552075 e!552074)))

(declare-fun res!383806 () Bool)

(assert (=> b!839627 (=> (not res!383806) (not e!552074))))

(assert (=> b!839627 (= res!383806 (rulesProduceIndividualToken!545 thiss!20117 rules!2621 (h!14371 l!5107)))))

(declare-fun b!839628 () Bool)

(assert (=> b!839628 (= e!552074 (rulesProduceEachTokenIndividuallyList!369 thiss!20117 rules!2621 (t!93370 l!5107)))))

(assert (= (and d!261426 (not res!383805)) b!839627))

(assert (= (and b!839627 res!383806) b!839628))

(declare-fun m!1072555 () Bool)

(assert (=> d!261426 m!1072555))

(assert (=> d!261426 m!1072431))

(declare-fun m!1072557 () Bool)

(assert (=> b!839627 m!1072557))

(declare-fun m!1072559 () Bool)

(assert (=> b!839628 m!1072559))

(assert (=> b!839499 d!261426))

(declare-fun b!839652 () Bool)

(declare-fun e!552092 () Bool)

(declare-fun inv!16 (TokenValue!1745) Bool)

(assert (=> b!839652 (= e!552092 (inv!16 (value!54552 separatorToken!297)))))

(declare-fun b!839653 () Bool)

(declare-fun res!383809 () Bool)

(declare-fun e!552093 () Bool)

(assert (=> b!839653 (=> res!383809 e!552093)))

(assert (=> b!839653 (= res!383809 (not (is-IntegerValue!5237 (value!54552 separatorToken!297))))))

(declare-fun e!552091 () Bool)

(assert (=> b!839653 (= e!552091 e!552093)))

(declare-fun d!261430 () Bool)

(declare-fun c!137019 () Bool)

(assert (=> d!261430 (= c!137019 (is-IntegerValue!5235 (value!54552 separatorToken!297)))))

(assert (=> d!261430 (= (inv!21 (value!54552 separatorToken!297)) e!552092)))

(declare-fun b!839654 () Bool)

(declare-fun inv!15 (TokenValue!1745) Bool)

(assert (=> b!839654 (= e!552093 (inv!15 (value!54552 separatorToken!297)))))

(declare-fun b!839655 () Bool)

(assert (=> b!839655 (= e!552092 e!552091)))

(declare-fun c!137018 () Bool)

(assert (=> b!839655 (= c!137018 (is-IntegerValue!5236 (value!54552 separatorToken!297)))))

(declare-fun b!839656 () Bool)

(declare-fun inv!17 (TokenValue!1745) Bool)

(assert (=> b!839656 (= e!552091 (inv!17 (value!54552 separatorToken!297)))))

(assert (= (and d!261430 c!137019) b!839652))

(assert (= (and d!261430 (not c!137019)) b!839655))

(assert (= (and b!839655 c!137018) b!839656))

(assert (= (and b!839655 (not c!137018)) b!839653))

(assert (= (and b!839653 (not res!383809)) b!839654))

(declare-fun m!1072561 () Bool)

(assert (=> b!839652 m!1072561))

(declare-fun m!1072563 () Bool)

(assert (=> b!839654 m!1072563))

(declare-fun m!1072565 () Bool)

(assert (=> b!839656 m!1072565))

(assert (=> b!839510 d!261430))

(declare-fun d!261432 () Bool)

(assert (=> d!261432 (= (isEmpty!5292 rules!2621) (is-Nil!8971 rules!2621))))

(assert (=> b!839509 d!261432))

(declare-fun d!261434 () Bool)

(assert (=> d!261434 (= (inv!11442 (tag!1941 (rule!3102 separatorToken!297))) (= (mod (str.len (value!54551 (tag!1941 (rule!3102 separatorToken!297)))) 2) 0))))

(assert (=> b!839492 d!261434))

(declare-fun d!261436 () Bool)

(declare-fun res!383812 () Bool)

(declare-fun e!552096 () Bool)

(assert (=> d!261436 (=> (not res!383812) (not e!552096))))

(declare-fun semiInverseModEq!647 (Int Int) Bool)

(assert (=> d!261436 (= res!383812 (semiInverseModEq!647 (toChars!2555 (transformation!1679 (rule!3102 separatorToken!297))) (toValue!2696 (transformation!1679 (rule!3102 separatorToken!297)))))))

(assert (=> d!261436 (= (inv!11446 (transformation!1679 (rule!3102 separatorToken!297))) e!552096)))

(declare-fun b!839659 () Bool)

(declare-fun equivClasses!614 (Int Int) Bool)

(assert (=> b!839659 (= e!552096 (equivClasses!614 (toChars!2555 (transformation!1679 (rule!3102 separatorToken!297))) (toValue!2696 (transformation!1679 (rule!3102 separatorToken!297)))))))

(assert (= (and d!261436 res!383812) b!839659))

(declare-fun m!1072567 () Bool)

(assert (=> d!261436 m!1072567))

(declare-fun m!1072569 () Bool)

(assert (=> b!839659 m!1072569))

(assert (=> b!839492 d!261436))

(declare-fun d!261438 () Bool)

(assert (=> d!261438 (= (head!1439 l!5107) (h!14371 l!5107))))

(assert (=> b!839491 d!261438))

(declare-fun d!261440 () Bool)

(declare-fun lt!318295 () Bool)

(declare-fun e!552102 () Bool)

(assert (=> d!261440 (= lt!318295 e!552102)))

(declare-fun res!383819 () Bool)

(assert (=> d!261440 (=> (not res!383819) (not e!552102))))

(declare-datatypes ((IArray!5961 0))(
  ( (IArray!5962 (innerList!3038 List!8986)) )
))
(declare-datatypes ((Conc!2978 0))(
  ( (Node!2978 (left!6667 Conc!2978) (right!6997 Conc!2978) (csize!6186 Int) (cheight!3189 Int)) (Leaf!4406 (xs!5667 IArray!5961) (csize!6187 Int)) (Empty!2978) )
))
(declare-datatypes ((BalanceConc!5970 0))(
  ( (BalanceConc!5971 (c!137040 Conc!2978)) )
))
(declare-fun list!3540 (BalanceConc!5970) List!8986)

(declare-datatypes ((tuple2!10314 0))(
  ( (tuple2!10315 (_1!5983 BalanceConc!5970) (_2!5983 BalanceConc!5966)) )
))
(declare-fun lex!595 (LexerInterface!1481 List!8987 BalanceConc!5966) tuple2!10314)

(declare-fun print!532 (LexerInterface!1481 BalanceConc!5970) BalanceConc!5966)

(declare-fun singletonSeq!494 (Token!3024) BalanceConc!5970)

(assert (=> d!261440 (= res!383819 (= (list!3540 (_1!5983 (lex!595 thiss!20117 rules!2621 (print!532 thiss!20117 (singletonSeq!494 separatorToken!297))))) (list!3540 (singletonSeq!494 separatorToken!297))))))

(declare-fun e!552101 () Bool)

(assert (=> d!261440 (= lt!318295 e!552101)))

(declare-fun res!383821 () Bool)

(assert (=> d!261440 (=> (not res!383821) (not e!552101))))

(declare-fun lt!318296 () tuple2!10314)

(declare-fun size!7518 (BalanceConc!5970) Int)

(assert (=> d!261440 (= res!383821 (= (size!7518 (_1!5983 lt!318296)) 1))))

(assert (=> d!261440 (= lt!318296 (lex!595 thiss!20117 rules!2621 (print!532 thiss!20117 (singletonSeq!494 separatorToken!297))))))

(assert (=> d!261440 (not (isEmpty!5292 rules!2621))))

(assert (=> d!261440 (= (rulesProduceIndividualToken!545 thiss!20117 rules!2621 separatorToken!297) lt!318295)))

(declare-fun b!839666 () Bool)

(declare-fun res!383820 () Bool)

(assert (=> b!839666 (=> (not res!383820) (not e!552101))))

(declare-fun apply!1804 (BalanceConc!5970 Int) Token!3024)

(assert (=> b!839666 (= res!383820 (= (apply!1804 (_1!5983 lt!318296) 0) separatorToken!297))))

(declare-fun b!839667 () Bool)

(declare-fun isEmpty!5294 (BalanceConc!5966) Bool)

(assert (=> b!839667 (= e!552101 (isEmpty!5294 (_2!5983 lt!318296)))))

(declare-fun b!839668 () Bool)

(assert (=> b!839668 (= e!552102 (isEmpty!5294 (_2!5983 (lex!595 thiss!20117 rules!2621 (print!532 thiss!20117 (singletonSeq!494 separatorToken!297))))))))

(assert (= (and d!261440 res!383821) b!839666))

(assert (= (and b!839666 res!383820) b!839667))

(assert (= (and d!261440 res!383819) b!839668))

(declare-fun m!1072571 () Bool)

(assert (=> d!261440 m!1072571))

(declare-fun m!1072573 () Bool)

(assert (=> d!261440 m!1072573))

(declare-fun m!1072575 () Bool)

(assert (=> d!261440 m!1072575))

(declare-fun m!1072577 () Bool)

(assert (=> d!261440 m!1072577))

(assert (=> d!261440 m!1072577))

(declare-fun m!1072579 () Bool)

(assert (=> d!261440 m!1072579))

(assert (=> d!261440 m!1072577))

(assert (=> d!261440 m!1072571))

(declare-fun m!1072581 () Bool)

(assert (=> d!261440 m!1072581))

(assert (=> d!261440 m!1072431))

(declare-fun m!1072583 () Bool)

(assert (=> b!839666 m!1072583))

(declare-fun m!1072585 () Bool)

(assert (=> b!839667 m!1072585))

(assert (=> b!839668 m!1072577))

(assert (=> b!839668 m!1072577))

(assert (=> b!839668 m!1072571))

(assert (=> b!839668 m!1072571))

(assert (=> b!839668 m!1072573))

(declare-fun m!1072587 () Bool)

(assert (=> b!839668 m!1072587))

(assert (=> b!839502 d!261440))

(declare-fun d!261442 () Bool)

(assert (=> d!261442 (= (inv!11442 (tag!1941 (rule!3102 (h!14371 l!5107)))) (= (mod (str.len (value!54551 (tag!1941 (rule!3102 (h!14371 l!5107))))) 2) 0))))

(assert (=> b!839501 d!261442))

(declare-fun d!261444 () Bool)

(declare-fun res!383822 () Bool)

(declare-fun e!552103 () Bool)

(assert (=> d!261444 (=> (not res!383822) (not e!552103))))

(assert (=> d!261444 (= res!383822 (semiInverseModEq!647 (toChars!2555 (transformation!1679 (rule!3102 (h!14371 l!5107)))) (toValue!2696 (transformation!1679 (rule!3102 (h!14371 l!5107))))))))

(assert (=> d!261444 (= (inv!11446 (transformation!1679 (rule!3102 (h!14371 l!5107)))) e!552103)))

(declare-fun b!839669 () Bool)

(assert (=> b!839669 (= e!552103 (equivClasses!614 (toChars!2555 (transformation!1679 (rule!3102 (h!14371 l!5107)))) (toValue!2696 (transformation!1679 (rule!3102 (h!14371 l!5107))))))))

(assert (= (and d!261444 res!383822) b!839669))

(declare-fun m!1072589 () Bool)

(assert (=> d!261444 m!1072589))

(declare-fun m!1072591 () Bool)

(assert (=> b!839669 m!1072591))

(assert (=> b!839501 d!261444))

(declare-fun d!261446 () Bool)

(declare-fun res!383827 () Bool)

(declare-fun e!552106 () Bool)

(assert (=> d!261446 (=> (not res!383827) (not e!552106))))

(declare-fun isEmpty!5295 (List!8985) Bool)

(assert (=> d!261446 (= res!383827 (not (isEmpty!5295 (originalCharacters!2235 (h!14371 l!5107)))))))

(assert (=> d!261446 (= (inv!11445 (h!14371 l!5107)) e!552106)))

(declare-fun b!839674 () Bool)

(declare-fun res!383828 () Bool)

(assert (=> b!839674 (=> (not res!383828) (not e!552106))))

(declare-fun dynLambda!4145 (Int TokenValue!1745) BalanceConc!5966)

(assert (=> b!839674 (= res!383828 (= (originalCharacters!2235 (h!14371 l!5107)) (list!3539 (dynLambda!4145 (toChars!2555 (transformation!1679 (rule!3102 (h!14371 l!5107)))) (value!54552 (h!14371 l!5107))))))))

(declare-fun b!839675 () Bool)

(declare-fun size!7519 (List!8985) Int)

(assert (=> b!839675 (= e!552106 (= (size!7516 (h!14371 l!5107)) (size!7519 (originalCharacters!2235 (h!14371 l!5107)))))))

(assert (= (and d!261446 res!383827) b!839674))

(assert (= (and b!839674 res!383828) b!839675))

(declare-fun b_lambda!27605 () Bool)

(assert (=> (not b_lambda!27605) (not b!839674)))

(declare-fun t!93388 () Bool)

(declare-fun tb!57899 () Bool)

(assert (=> (and b!839508 (= (toChars!2555 (transformation!1679 (rule!3102 separatorToken!297))) (toChars!2555 (transformation!1679 (rule!3102 (h!14371 l!5107))))) t!93388) tb!57899))

(declare-fun b!839680 () Bool)

(declare-fun e!552109 () Bool)

(declare-fun tp!263874 () Bool)

(declare-fun inv!11449 (Conc!2976) Bool)

(assert (=> b!839680 (= e!552109 (and (inv!11449 (c!137002 (dynLambda!4145 (toChars!2555 (transformation!1679 (rule!3102 (h!14371 l!5107)))) (value!54552 (h!14371 l!5107))))) tp!263874))))

(declare-fun result!67122 () Bool)

(declare-fun inv!11450 (BalanceConc!5966) Bool)

(assert (=> tb!57899 (= result!67122 (and (inv!11450 (dynLambda!4145 (toChars!2555 (transformation!1679 (rule!3102 (h!14371 l!5107)))) (value!54552 (h!14371 l!5107)))) e!552109))))

(assert (= tb!57899 b!839680))

(declare-fun m!1072593 () Bool)

(assert (=> b!839680 m!1072593))

(declare-fun m!1072595 () Bool)

(assert (=> tb!57899 m!1072595))

(assert (=> b!839674 t!93388))

(declare-fun b_and!72491 () Bool)

(assert (= b_and!72463 (and (=> t!93388 result!67122) b_and!72491)))

(declare-fun t!93390 () Bool)

(declare-fun tb!57901 () Bool)

(assert (=> (and b!839506 (= (toChars!2555 (transformation!1679 (rule!3102 (h!14371 l!5107)))) (toChars!2555 (transformation!1679 (rule!3102 (h!14371 l!5107))))) t!93390) tb!57901))

(declare-fun result!67126 () Bool)

(assert (= result!67126 result!67122))

(assert (=> b!839674 t!93390))

(declare-fun b_and!72493 () Bool)

(assert (= b_and!72467 (and (=> t!93390 result!67126) b_and!72493)))

(declare-fun tb!57903 () Bool)

(declare-fun t!93392 () Bool)

(assert (=> (and b!839496 (= (toChars!2555 (transformation!1679 (h!14372 rules!2621))) (toChars!2555 (transformation!1679 (rule!3102 (h!14371 l!5107))))) t!93392) tb!57903))

(declare-fun result!67128 () Bool)

(assert (= result!67128 result!67122))

(assert (=> b!839674 t!93392))

(declare-fun b_and!72495 () Bool)

(assert (= b_and!72471 (and (=> t!93392 result!67128) b_and!72495)))

(declare-fun m!1072597 () Bool)

(assert (=> d!261446 m!1072597))

(declare-fun m!1072599 () Bool)

(assert (=> b!839674 m!1072599))

(assert (=> b!839674 m!1072599))

(declare-fun m!1072601 () Bool)

(assert (=> b!839674 m!1072601))

(declare-fun m!1072603 () Bool)

(assert (=> b!839675 m!1072603))

(assert (=> b!839490 d!261446))

(declare-fun d!261448 () Bool)

(declare-fun res!383833 () Bool)

(declare-fun e!552114 () Bool)

(assert (=> d!261448 (=> res!383833 e!552114)))

(assert (=> d!261448 (= res!383833 (is-Nil!8970 l!5107))))

(assert (=> d!261448 (= (forall!2094 l!5107 lambda!24921) e!552114)))

(declare-fun b!839685 () Bool)

(declare-fun e!552115 () Bool)

(assert (=> b!839685 (= e!552114 e!552115)))

(declare-fun res!383834 () Bool)

(assert (=> b!839685 (=> (not res!383834) (not e!552115))))

(declare-fun dynLambda!4146 (Int Token!3024) Bool)

(assert (=> b!839685 (= res!383834 (dynLambda!4146 lambda!24921 (h!14371 l!5107)))))

(declare-fun b!839686 () Bool)

(assert (=> b!839686 (= e!552115 (forall!2094 (t!93370 l!5107) lambda!24921))))

(assert (= (and d!261448 (not res!383833)) b!839685))

(assert (= (and b!839685 res!383834) b!839686))

(declare-fun b_lambda!27607 () Bool)

(assert (=> (not b_lambda!27607) (not b!839685)))

(declare-fun m!1072605 () Bool)

(assert (=> b!839685 m!1072605))

(declare-fun m!1072607 () Bool)

(assert (=> b!839686 m!1072607))

(assert (=> b!839505 d!261448))

(declare-fun b!839687 () Bool)

(declare-fun e!552117 () Bool)

(assert (=> b!839687 (= e!552117 (inv!16 (value!54552 (h!14371 l!5107))))))

(declare-fun b!839688 () Bool)

(declare-fun res!383835 () Bool)

(declare-fun e!552118 () Bool)

(assert (=> b!839688 (=> res!383835 e!552118)))

(assert (=> b!839688 (= res!383835 (not (is-IntegerValue!5237 (value!54552 (h!14371 l!5107)))))))

(declare-fun e!552116 () Bool)

(assert (=> b!839688 (= e!552116 e!552118)))

(declare-fun d!261450 () Bool)

(declare-fun c!137021 () Bool)

(assert (=> d!261450 (= c!137021 (is-IntegerValue!5235 (value!54552 (h!14371 l!5107))))))

(assert (=> d!261450 (= (inv!21 (value!54552 (h!14371 l!5107))) e!552117)))

(declare-fun b!839689 () Bool)

(assert (=> b!839689 (= e!552118 (inv!15 (value!54552 (h!14371 l!5107))))))

(declare-fun b!839690 () Bool)

(assert (=> b!839690 (= e!552117 e!552116)))

(declare-fun c!137020 () Bool)

(assert (=> b!839690 (= c!137020 (is-IntegerValue!5236 (value!54552 (h!14371 l!5107))))))

(declare-fun b!839691 () Bool)

(assert (=> b!839691 (= e!552116 (inv!17 (value!54552 (h!14371 l!5107))))))

(assert (= (and d!261450 c!137021) b!839687))

(assert (= (and d!261450 (not c!137021)) b!839690))

(assert (= (and b!839690 c!137020) b!839691))

(assert (= (and b!839690 (not c!137020)) b!839688))

(assert (= (and b!839688 (not res!383835)) b!839689))

(declare-fun m!1072609 () Bool)

(assert (=> b!839687 m!1072609))

(declare-fun m!1072611 () Bool)

(assert (=> b!839689 m!1072611))

(declare-fun m!1072613 () Bool)

(assert (=> b!839691 m!1072613))

(assert (=> b!839494 d!261450))

(declare-fun d!261452 () Bool)

(declare-fun res!383836 () Bool)

(declare-fun e!552119 () Bool)

(assert (=> d!261452 (=> (not res!383836) (not e!552119))))

(assert (=> d!261452 (= res!383836 (not (isEmpty!5295 (originalCharacters!2235 separatorToken!297))))))

(assert (=> d!261452 (= (inv!11445 separatorToken!297) e!552119)))

(declare-fun b!839692 () Bool)

(declare-fun res!383837 () Bool)

(assert (=> b!839692 (=> (not res!383837) (not e!552119))))

(assert (=> b!839692 (= res!383837 (= (originalCharacters!2235 separatorToken!297) (list!3539 (dynLambda!4145 (toChars!2555 (transformation!1679 (rule!3102 separatorToken!297))) (value!54552 separatorToken!297)))))))

(declare-fun b!839693 () Bool)

(assert (=> b!839693 (= e!552119 (= (size!7516 separatorToken!297) (size!7519 (originalCharacters!2235 separatorToken!297))))))

(assert (= (and d!261452 res!383836) b!839692))

(assert (= (and b!839692 res!383837) b!839693))

(declare-fun b_lambda!27609 () Bool)

(assert (=> (not b_lambda!27609) (not b!839692)))

(declare-fun t!93394 () Bool)

(declare-fun tb!57905 () Bool)

(assert (=> (and b!839508 (= (toChars!2555 (transformation!1679 (rule!3102 separatorToken!297))) (toChars!2555 (transformation!1679 (rule!3102 separatorToken!297)))) t!93394) tb!57905))

(declare-fun b!839694 () Bool)

(declare-fun e!552120 () Bool)

(declare-fun tp!263875 () Bool)

(assert (=> b!839694 (= e!552120 (and (inv!11449 (c!137002 (dynLambda!4145 (toChars!2555 (transformation!1679 (rule!3102 separatorToken!297))) (value!54552 separatorToken!297)))) tp!263875))))

(declare-fun result!67130 () Bool)

(assert (=> tb!57905 (= result!67130 (and (inv!11450 (dynLambda!4145 (toChars!2555 (transformation!1679 (rule!3102 separatorToken!297))) (value!54552 separatorToken!297))) e!552120))))

(assert (= tb!57905 b!839694))

(declare-fun m!1072615 () Bool)

(assert (=> b!839694 m!1072615))

(declare-fun m!1072617 () Bool)

(assert (=> tb!57905 m!1072617))

(assert (=> b!839692 t!93394))

(declare-fun b_and!72497 () Bool)

(assert (= b_and!72491 (and (=> t!93394 result!67130) b_and!72497)))

(declare-fun tb!57907 () Bool)

(declare-fun t!93396 () Bool)

(assert (=> (and b!839506 (= (toChars!2555 (transformation!1679 (rule!3102 (h!14371 l!5107)))) (toChars!2555 (transformation!1679 (rule!3102 separatorToken!297)))) t!93396) tb!57907))

(declare-fun result!67132 () Bool)

(assert (= result!67132 result!67130))

(assert (=> b!839692 t!93396))

(declare-fun b_and!72499 () Bool)

(assert (= b_and!72493 (and (=> t!93396 result!67132) b_and!72499)))

(declare-fun tb!57909 () Bool)

(declare-fun t!93398 () Bool)

(assert (=> (and b!839496 (= (toChars!2555 (transformation!1679 (h!14372 rules!2621))) (toChars!2555 (transformation!1679 (rule!3102 separatorToken!297)))) t!93398) tb!57909))

(declare-fun result!67134 () Bool)

(assert (= result!67134 result!67130))

(assert (=> b!839692 t!93398))

(declare-fun b_and!72501 () Bool)

(assert (= b_and!72495 (and (=> t!93398 result!67134) b_and!72501)))

(declare-fun m!1072619 () Bool)

(assert (=> d!261452 m!1072619))

(declare-fun m!1072621 () Bool)

(assert (=> b!839692 m!1072621))

(assert (=> b!839692 m!1072621))

(declare-fun m!1072623 () Bool)

(assert (=> b!839692 m!1072623))

(declare-fun m!1072625 () Bool)

(assert (=> b!839693 m!1072625))

(assert (=> start!74492 d!261452))

(declare-fun d!261454 () Bool)

(declare-fun lt!318297 () Bool)

(declare-fun e!552122 () Bool)

(assert (=> d!261454 (= lt!318297 e!552122)))

(declare-fun res!383838 () Bool)

(assert (=> d!261454 (=> (not res!383838) (not e!552122))))

(assert (=> d!261454 (= res!383838 (= (list!3540 (_1!5983 (lex!595 thiss!20117 rules!2621 (print!532 thiss!20117 (singletonSeq!494 (h!14371 lt!318250)))))) (list!3540 (singletonSeq!494 (h!14371 lt!318250)))))))

(declare-fun e!552121 () Bool)

(assert (=> d!261454 (= lt!318297 e!552121)))

(declare-fun res!383840 () Bool)

(assert (=> d!261454 (=> (not res!383840) (not e!552121))))

(declare-fun lt!318298 () tuple2!10314)

(assert (=> d!261454 (= res!383840 (= (size!7518 (_1!5983 lt!318298)) 1))))

(assert (=> d!261454 (= lt!318298 (lex!595 thiss!20117 rules!2621 (print!532 thiss!20117 (singletonSeq!494 (h!14371 lt!318250)))))))

(assert (=> d!261454 (not (isEmpty!5292 rules!2621))))

(assert (=> d!261454 (= (rulesProduceIndividualToken!545 thiss!20117 rules!2621 (h!14371 lt!318250)) lt!318297)))

(declare-fun b!839695 () Bool)

(declare-fun res!383839 () Bool)

(assert (=> b!839695 (=> (not res!383839) (not e!552121))))

(assert (=> b!839695 (= res!383839 (= (apply!1804 (_1!5983 lt!318298) 0) (h!14371 lt!318250)))))

(declare-fun b!839696 () Bool)

(assert (=> b!839696 (= e!552121 (isEmpty!5294 (_2!5983 lt!318298)))))

(declare-fun b!839697 () Bool)

(assert (=> b!839697 (= e!552122 (isEmpty!5294 (_2!5983 (lex!595 thiss!20117 rules!2621 (print!532 thiss!20117 (singletonSeq!494 (h!14371 lt!318250)))))))))

(assert (= (and d!261454 res!383840) b!839695))

(assert (= (and b!839695 res!383839) b!839696))

(assert (= (and d!261454 res!383838) b!839697))

(declare-fun m!1072627 () Bool)

(assert (=> d!261454 m!1072627))

(declare-fun m!1072629 () Bool)

(assert (=> d!261454 m!1072629))

(declare-fun m!1072631 () Bool)

(assert (=> d!261454 m!1072631))

(declare-fun m!1072633 () Bool)

(assert (=> d!261454 m!1072633))

(assert (=> d!261454 m!1072633))

(declare-fun m!1072635 () Bool)

(assert (=> d!261454 m!1072635))

(assert (=> d!261454 m!1072633))

(assert (=> d!261454 m!1072627))

(declare-fun m!1072637 () Bool)

(assert (=> d!261454 m!1072637))

(assert (=> d!261454 m!1072431))

(declare-fun m!1072639 () Bool)

(assert (=> b!839695 m!1072639))

(declare-fun m!1072641 () Bool)

(assert (=> b!839696 m!1072641))

(assert (=> b!839697 m!1072633))

(assert (=> b!839697 m!1072633))

(assert (=> b!839697 m!1072627))

(assert (=> b!839697 m!1072627))

(assert (=> b!839697 m!1072629))

(declare-fun m!1072643 () Bool)

(assert (=> b!839697 m!1072643))

(assert (=> b!839504 d!261454))

(declare-fun d!261456 () Bool)

(declare-fun prefixMatchZipperSequence!2 (Regex!2112 BalanceConc!5966) Bool)

(declare-fun rulesRegex!1 (LexerInterface!1481 List!8987) Regex!2112)

(declare-fun ++!2326 (BalanceConc!5966 BalanceConc!5966) BalanceConc!5966)

(declare-fun singletonSeq!495 (C!4794) BalanceConc!5966)

(declare-fun apply!1805 (BalanceConc!5966 Int) C!4794)

(assert (=> d!261456 (= (separableTokensPredicate!21 thiss!20117 (h!14371 lt!318250) (h!14371 (t!93370 lt!318250)) rules!2621) (not (prefixMatchZipperSequence!2 (rulesRegex!1 thiss!20117 rules!2621) (++!2326 (charsOf!966 (h!14371 lt!318250)) (singletonSeq!495 (apply!1805 (charsOf!966 (h!14371 (t!93370 lt!318250))) 0))))))))

(declare-fun bs!229788 () Bool)

(assert (= bs!229788 d!261456))

(declare-fun m!1072649 () Bool)

(assert (=> bs!229788 m!1072649))

(declare-fun m!1072651 () Bool)

(assert (=> bs!229788 m!1072651))

(declare-fun m!1072653 () Bool)

(assert (=> bs!229788 m!1072653))

(declare-fun m!1072655 () Bool)

(assert (=> bs!229788 m!1072655))

(assert (=> bs!229788 m!1072653))

(declare-fun m!1072657 () Bool)

(assert (=> bs!229788 m!1072657))

(assert (=> bs!229788 m!1072655))

(declare-fun m!1072659 () Bool)

(assert (=> bs!229788 m!1072659))

(declare-fun m!1072661 () Bool)

(assert (=> bs!229788 m!1072661))

(assert (=> bs!229788 m!1072649))

(assert (=> bs!229788 m!1072661))

(assert (=> bs!229788 m!1072651))

(assert (=> bs!229788 m!1072659))

(assert (=> b!839504 d!261456))

(declare-fun d!261460 () Bool)

(assert (=> d!261460 (separableTokensPredicate!21 thiss!20117 (h!14371 lt!318250) (h!14371 (t!93370 lt!318250)) rules!2621)))

(declare-fun lt!318326 () Unit!13428)

(declare-fun choose!4945 (LexerInterface!1481 Token!3024 Token!3024 List!8987) Unit!13428)

(assert (=> d!261460 (= lt!318326 (choose!4945 thiss!20117 (h!14371 lt!318250) (h!14371 (t!93370 lt!318250)) rules!2621))))

(assert (=> d!261460 (not (isEmpty!5292 rules!2621))))

(assert (=> d!261460 (= (lemmaTokensOfDifferentKindsAreSeparable!3 thiss!20117 (h!14371 lt!318250) (h!14371 (t!93370 lt!318250)) rules!2621) lt!318326)))

(declare-fun bs!229789 () Bool)

(assert (= bs!229789 d!261460))

(assert (=> bs!229789 m!1072399))

(declare-fun m!1072713 () Bool)

(assert (=> bs!229789 m!1072713))

(assert (=> bs!229789 m!1072431))

(assert (=> b!839504 d!261460))

(declare-fun d!261464 () Bool)

(assert (=> d!261464 (= (inv!11442 (tag!1941 (h!14372 rules!2621))) (= (mod (str.len (value!54551 (tag!1941 (h!14372 rules!2621)))) 2) 0))))

(assert (=> b!839503 d!261464))

(declare-fun d!261466 () Bool)

(declare-fun res!383855 () Bool)

(declare-fun e!552152 () Bool)

(assert (=> d!261466 (=> (not res!383855) (not e!552152))))

(assert (=> d!261466 (= res!383855 (semiInverseModEq!647 (toChars!2555 (transformation!1679 (h!14372 rules!2621))) (toValue!2696 (transformation!1679 (h!14372 rules!2621)))))))

(assert (=> d!261466 (= (inv!11446 (transformation!1679 (h!14372 rules!2621))) e!552152)))

(declare-fun b!839743 () Bool)

(assert (=> b!839743 (= e!552152 (equivClasses!614 (toChars!2555 (transformation!1679 (h!14372 rules!2621))) (toValue!2696 (transformation!1679 (h!14372 rules!2621)))))))

(assert (= (and d!261466 res!383855) b!839743))

(declare-fun m!1072715 () Bool)

(assert (=> d!261466 m!1072715))

(declare-fun m!1072717 () Bool)

(assert (=> b!839743 m!1072717))

(assert (=> b!839503 d!261466))

(declare-fun bs!229790 () Bool)

(declare-fun d!261468 () Bool)

(assert (= bs!229790 (and d!261468 b!839505)))

(declare-fun lambda!24931 () Int)

(assert (=> bs!229790 (not (= lambda!24931 lambda!24921))))

(declare-fun bs!229791 () Bool)

(assert (= bs!229791 (and d!261468 d!261426)))

(assert (=> bs!229791 (= lambda!24931 lambda!24927)))

(declare-fun b!839748 () Bool)

(declare-fun e!552157 () Bool)

(assert (=> b!839748 (= e!552157 true)))

(declare-fun b!839747 () Bool)

(declare-fun e!552156 () Bool)

(assert (=> b!839747 (= e!552156 e!552157)))

(declare-fun b!839746 () Bool)

(declare-fun e!552155 () Bool)

(assert (=> b!839746 (= e!552155 e!552156)))

(assert (=> d!261468 e!552155))

(assert (= b!839747 b!839748))

(assert (= b!839746 b!839747))

(assert (= (and d!261468 (is-Cons!8971 rules!2621)) b!839746))

(assert (=> b!839748 (< (dynLambda!4142 order!5705 (toValue!2696 (transformation!1679 (h!14372 rules!2621)))) (dynLambda!4143 order!5707 lambda!24931))))

(assert (=> b!839748 (< (dynLambda!4144 order!5709 (toChars!2555 (transformation!1679 (h!14372 rules!2621)))) (dynLambda!4143 order!5707 lambda!24931))))

(assert (=> d!261468 true))

(declare-fun lt!318327 () Bool)

(assert (=> d!261468 (= lt!318327 (forall!2094 lt!318250 lambda!24931))))

(declare-fun e!552154 () Bool)

(assert (=> d!261468 (= lt!318327 e!552154)))

(declare-fun res!383856 () Bool)

(assert (=> d!261468 (=> res!383856 e!552154)))

(assert (=> d!261468 (= res!383856 (not (is-Cons!8970 lt!318250)))))

(assert (=> d!261468 (not (isEmpty!5292 rules!2621))))

(assert (=> d!261468 (= (rulesProduceEachTokenIndividuallyList!369 thiss!20117 rules!2621 lt!318250) lt!318327)))

(declare-fun b!839744 () Bool)

(declare-fun e!552153 () Bool)

(assert (=> b!839744 (= e!552154 e!552153)))

(declare-fun res!383857 () Bool)

(assert (=> b!839744 (=> (not res!383857) (not e!552153))))

(assert (=> b!839744 (= res!383857 (rulesProduceIndividualToken!545 thiss!20117 rules!2621 (h!14371 lt!318250)))))

(declare-fun b!839745 () Bool)

(assert (=> b!839745 (= e!552153 (rulesProduceEachTokenIndividuallyList!369 thiss!20117 rules!2621 (t!93370 lt!318250)))))

(assert (= (and d!261468 (not res!383856)) b!839744))

(assert (= (and b!839744 res!383857) b!839745))

(declare-fun m!1072719 () Bool)

(assert (=> d!261468 m!1072719))

(assert (=> d!261468 m!1072431))

(assert (=> b!839744 m!1072397))

(declare-fun m!1072721 () Bool)

(assert (=> b!839745 m!1072721))

(assert (=> b!839497 d!261468))

(declare-fun b!839749 () Bool)

(declare-fun e!552162 () List!8986)

(assert (=> b!839749 (= e!552162 Nil!8970)))

(declare-fun e!552158 () Bool)

(declare-fun e!552161 () List!8985)

(declare-fun b!839750 () Bool)

(assert (=> b!839750 (= e!552158 (= (printList!451 thiss!20117 ($colon$colon!64 ($colon$colon!64 (withSeparatorTokenList!11 thiss!20117 (t!93370 l!5107) separatorToken!297) separatorToken!297) (h!14371 l!5107))) e!552161))))

(declare-fun c!137033 () Bool)

(declare-fun lt!318335 () List!8986)

(assert (=> b!839750 (= c!137033 (is-Cons!8970 lt!318335))))

(assert (=> b!839750 (= lt!318335 ($colon$colon!64 ($colon$colon!64 (withSeparatorTokenList!11 thiss!20117 (t!93370 l!5107) separatorToken!297) separatorToken!297) (h!14371 l!5107)))))

(declare-fun b!839751 () Bool)

(declare-fun e!552159 () Bool)

(declare-fun e!552160 () Bool)

(assert (=> b!839751 (= e!552159 e!552160)))

(declare-fun res!383861 () Bool)

(assert (=> b!839751 (=> res!383861 e!552160)))

(assert (=> b!839751 (= res!383861 (not (is-Cons!8970 l!5107)))))

(declare-fun lt!318334 () List!8986)

(declare-fun d!261470 () Bool)

(assert (=> d!261470 (= (printList!451 thiss!20117 lt!318334) (printWithSeparatorTokenList!9 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!261470 (= lt!318334 e!552162)))

(declare-fun c!137032 () Bool)

(assert (=> d!261470 (= c!137032 (is-Cons!8970 l!5107))))

(assert (=> d!261470 e!552159))

(declare-fun res!383859 () Bool)

(assert (=> d!261470 (=> (not res!383859) (not e!552159))))

(assert (=> d!261470 (= res!383859 (isSeparator!1679 (rule!3102 separatorToken!297)))))

(assert (=> d!261470 (= (withSeparatorTokenList!11 thiss!20117 l!5107 separatorToken!297) lt!318334)))

(declare-fun b!839752 () Bool)

(declare-fun e!552163 () List!8985)

(declare-fun lt!318333 () List!8986)

(assert (=> b!839752 (= e!552163 (++!2325 (list!3539 (charsOf!966 (h!14371 lt!318333))) (printList!451 thiss!20117 (t!93370 lt!318333))))))

(declare-fun b!839753 () Bool)

(assert (=> b!839753 (= e!552160 (= (printList!451 thiss!20117 ($colon$colon!64 (withSeparatorTokenList!11 thiss!20117 (t!93370 l!5107) separatorToken!297) separatorToken!297)) e!552163))))

(declare-fun c!137031 () Bool)

(assert (=> b!839753 (= c!137031 (is-Cons!8970 lt!318333))))

(assert (=> b!839753 (= lt!318333 ($colon$colon!64 (withSeparatorTokenList!11 thiss!20117 (t!93370 l!5107) separatorToken!297) separatorToken!297))))

(declare-fun b!839754 () Bool)

(assert (=> b!839754 (= e!552162 ($colon$colon!64 ($colon$colon!64 (withSeparatorTokenList!11 thiss!20117 (t!93370 l!5107) separatorToken!297) separatorToken!297) (h!14371 l!5107)))))

(declare-fun lt!318328 () List!8985)

(assert (=> b!839754 (= lt!318328 (list!3539 (charsOf!966 (h!14371 l!5107))))))

(declare-fun lt!318329 () List!8985)

(assert (=> b!839754 (= lt!318329 (list!3539 (charsOf!966 separatorToken!297)))))

(declare-fun lt!318332 () List!8985)

(assert (=> b!839754 (= lt!318332 (printList!451 thiss!20117 (withSeparatorTokenList!11 thiss!20117 (t!93370 l!5107) separatorToken!297)))))

(declare-fun lt!318331 () Unit!13428)

(assert (=> b!839754 (= lt!318331 (lemmaConcatAssociativity!726 lt!318328 lt!318329 lt!318332))))

(assert (=> b!839754 (= (++!2325 (++!2325 lt!318328 lt!318329) lt!318332) (++!2325 lt!318328 (++!2325 lt!318329 lt!318332)))))

(declare-fun lt!318330 () Unit!13428)

(assert (=> b!839754 (= lt!318330 lt!318331)))

(declare-fun b!839755 () Bool)

(assert (=> b!839755 (= e!552161 (++!2325 (list!3539 (charsOf!966 (h!14371 lt!318335))) (printList!451 thiss!20117 (t!93370 lt!318335))))))

(declare-fun b!839756 () Bool)

(declare-fun res!383858 () Bool)

(assert (=> b!839756 (=> (not res!383858) (not e!552159))))

(assert (=> b!839756 (= res!383858 e!552158)))

(declare-fun res!383860 () Bool)

(assert (=> b!839756 (=> res!383860 e!552158)))

(assert (=> b!839756 (= res!383860 (not (is-Cons!8970 l!5107)))))

(declare-fun b!839757 () Bool)

(assert (=> b!839757 (= e!552163 Nil!8969)))

(declare-fun b!839758 () Bool)

(assert (=> b!839758 (= e!552161 Nil!8969)))

(assert (= (and d!261470 res!383859) b!839756))

(assert (= (and b!839756 (not res!383860)) b!839750))

(assert (= (and b!839750 c!137033) b!839755))

(assert (= (and b!839750 (not c!137033)) b!839758))

(assert (= (and b!839756 res!383858) b!839751))

(assert (= (and b!839751 (not res!383861)) b!839753))

(assert (= (and b!839753 c!137031) b!839752))

(assert (= (and b!839753 (not c!137031)) b!839757))

(assert (= (and d!261470 c!137032) b!839754))

(assert (= (and d!261470 (not c!137032)) b!839749))

(declare-fun m!1072723 () Bool)

(assert (=> b!839750 m!1072723))

(assert (=> b!839750 m!1072723))

(declare-fun m!1072725 () Bool)

(assert (=> b!839750 m!1072725))

(assert (=> b!839750 m!1072725))

(declare-fun m!1072727 () Bool)

(assert (=> b!839750 m!1072727))

(assert (=> b!839750 m!1072727))

(declare-fun m!1072729 () Bool)

(assert (=> b!839750 m!1072729))

(assert (=> b!839753 m!1072723))

(assert (=> b!839753 m!1072723))

(assert (=> b!839753 m!1072725))

(assert (=> b!839753 m!1072725))

(declare-fun m!1072731 () Bool)

(assert (=> b!839753 m!1072731))

(declare-fun m!1072733 () Bool)

(assert (=> d!261470 m!1072733))

(declare-fun m!1072735 () Bool)

(assert (=> d!261470 m!1072735))

(declare-fun m!1072737 () Bool)

(assert (=> b!839755 m!1072737))

(assert (=> b!839755 m!1072737))

(declare-fun m!1072739 () Bool)

(assert (=> b!839755 m!1072739))

(declare-fun m!1072741 () Bool)

(assert (=> b!839755 m!1072741))

(assert (=> b!839755 m!1072739))

(assert (=> b!839755 m!1072741))

(declare-fun m!1072743 () Bool)

(assert (=> b!839755 m!1072743))

(declare-fun m!1072745 () Bool)

(assert (=> b!839754 m!1072745))

(assert (=> b!839754 m!1072517))

(assert (=> b!839754 m!1072517))

(assert (=> b!839754 m!1072519))

(assert (=> b!839754 m!1072745))

(declare-fun m!1072747 () Bool)

(assert (=> b!839754 m!1072747))

(assert (=> b!839754 m!1072723))

(declare-fun m!1072749 () Bool)

(assert (=> b!839754 m!1072749))

(declare-fun m!1072751 () Bool)

(assert (=> b!839754 m!1072751))

(declare-fun m!1072753 () Bool)

(assert (=> b!839754 m!1072753))

(assert (=> b!839754 m!1072751))

(declare-fun m!1072755 () Bool)

(assert (=> b!839754 m!1072755))

(assert (=> b!839754 m!1072723))

(assert (=> b!839754 m!1072725))

(assert (=> b!839754 m!1072727))

(declare-fun m!1072757 () Bool)

(assert (=> b!839754 m!1072757))

(assert (=> b!839754 m!1072723))

(assert (=> b!839754 m!1072725))

(assert (=> b!839754 m!1072753))

(declare-fun m!1072759 () Bool)

(assert (=> b!839754 m!1072759))

(declare-fun m!1072761 () Bool)

(assert (=> b!839752 m!1072761))

(assert (=> b!839752 m!1072761))

(declare-fun m!1072763 () Bool)

(assert (=> b!839752 m!1072763))

(declare-fun m!1072765 () Bool)

(assert (=> b!839752 m!1072765))

(assert (=> b!839752 m!1072763))

(assert (=> b!839752 m!1072765))

(declare-fun m!1072767 () Bool)

(assert (=> b!839752 m!1072767))

(assert (=> b!839497 d!261470))

(declare-fun d!261472 () Bool)

(assert (=> d!261472 (rulesProduceEachTokenIndividuallyList!369 thiss!20117 rules!2621 (withSeparatorTokenList!11 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!318341 () Unit!13428)

(declare-fun choose!4946 (LexerInterface!1481 List!8987 List!8986 Token!3024) Unit!13428)

(assert (=> d!261472 (= lt!318341 (choose!4946 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!261472 (not (isEmpty!5292 rules!2621))))

(assert (=> d!261472 (= (withSeparatorTokenListPreservesRulesProduceTokens!11 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!318341)))

(declare-fun bs!229793 () Bool)

(assert (= bs!229793 d!261472))

(assert (=> bs!229793 m!1072415))

(assert (=> bs!229793 m!1072415))

(declare-fun m!1072779 () Bool)

(assert (=> bs!229793 m!1072779))

(declare-fun m!1072781 () Bool)

(assert (=> bs!229793 m!1072781))

(assert (=> bs!229793 m!1072431))

(assert (=> b!839497 d!261472))

(declare-fun d!261478 () Bool)

(declare-fun res!383867 () Bool)

(declare-fun e!552175 () Bool)

(assert (=> d!261478 (=> (not res!383867) (not e!552175))))

(declare-fun rulesValid!578 (LexerInterface!1481 List!8987) Bool)

(assert (=> d!261478 (= res!383867 (rulesValid!578 thiss!20117 rules!2621))))

(assert (=> d!261478 (= (rulesInvariant!1357 thiss!20117 rules!2621) e!552175)))

(declare-fun b!839776 () Bool)

(declare-datatypes ((List!8992 0))(
  ( (Nil!8976) (Cons!8976 (h!14377 String!10625) (t!93422 List!8992)) )
))
(declare-fun noDuplicateTag!578 (LexerInterface!1481 List!8987 List!8992) Bool)

(assert (=> b!839776 (= e!552175 (noDuplicateTag!578 thiss!20117 rules!2621 Nil!8976))))

(assert (= (and d!261478 res!383867) b!839776))

(declare-fun m!1072783 () Bool)

(assert (=> d!261478 m!1072783))

(declare-fun m!1072785 () Bool)

(assert (=> b!839776 m!1072785))

(assert (=> b!839507 d!261478))

(declare-fun d!261480 () Bool)

(declare-fun res!383872 () Bool)

(declare-fun e!552180 () Bool)

(assert (=> d!261480 (=> res!383872 e!552180)))

(assert (=> d!261480 (= res!383872 (not (is-Cons!8971 rules!2621)))))

(assert (=> d!261480 (= (sepAndNonSepRulesDisjointChars!479 rules!2621 rules!2621) e!552180)))

(declare-fun b!839781 () Bool)

(declare-fun e!552181 () Bool)

(assert (=> b!839781 (= e!552180 e!552181)))

(declare-fun res!383873 () Bool)

(assert (=> b!839781 (=> (not res!383873) (not e!552181))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!214 (Rule!3158 List!8987) Bool)

(assert (=> b!839781 (= res!383873 (ruleDisjointCharsFromAllFromOtherType!214 (h!14372 rules!2621) rules!2621))))

(declare-fun b!839782 () Bool)

(assert (=> b!839782 (= e!552181 (sepAndNonSepRulesDisjointChars!479 rules!2621 (t!93371 rules!2621)))))

(assert (= (and d!261480 (not res!383872)) b!839781))

(assert (= (and b!839781 res!383873) b!839782))

(declare-fun m!1072787 () Bool)

(assert (=> b!839781 m!1072787))

(declare-fun m!1072789 () Bool)

(assert (=> b!839782 m!1072789))

(assert (=> b!839495 d!261480))

(declare-fun b!839787 () Bool)

(declare-fun e!552184 () Bool)

(declare-fun tp_is_empty!3927 () Bool)

(declare-fun tp!263878 () Bool)

(assert (=> b!839787 (= e!552184 (and tp_is_empty!3927 tp!263878))))

(assert (=> b!839510 (= tp!263822 e!552184)))

(assert (= (and b!839510 (is-Cons!8969 (originalCharacters!2235 separatorToken!297))) b!839787))

(declare-fun b!839788 () Bool)

(declare-fun e!552185 () Bool)

(declare-fun tp!263879 () Bool)

(assert (=> b!839788 (= e!552185 (and tp_is_empty!3927 tp!263879))))

(assert (=> b!839494 (= tp!263826 e!552185)))

(assert (= (and b!839494 (is-Cons!8969 (originalCharacters!2235 (h!14371 l!5107)))) b!839788))

(declare-fun b!839802 () Bool)

(declare-fun e!552188 () Bool)

(declare-fun tp!263893 () Bool)

(declare-fun tp!263892 () Bool)

(assert (=> b!839802 (= e!552188 (and tp!263893 tp!263892))))

(declare-fun b!839799 () Bool)

(assert (=> b!839799 (= e!552188 tp_is_empty!3927)))

(declare-fun b!839800 () Bool)

(declare-fun tp!263890 () Bool)

(declare-fun tp!263891 () Bool)

(assert (=> b!839800 (= e!552188 (and tp!263890 tp!263891))))

(assert (=> b!839503 (= tp!263829 e!552188)))

(declare-fun b!839801 () Bool)

(declare-fun tp!263894 () Bool)

(assert (=> b!839801 (= e!552188 tp!263894)))

(assert (= (and b!839503 (is-ElementMatch!2112 (regex!1679 (h!14372 rules!2621)))) b!839799))

(assert (= (and b!839503 (is-Concat!3858 (regex!1679 (h!14372 rules!2621)))) b!839800))

(assert (= (and b!839503 (is-Star!2112 (regex!1679 (h!14372 rules!2621)))) b!839801))

(assert (= (and b!839503 (is-Union!2112 (regex!1679 (h!14372 rules!2621)))) b!839802))

(declare-fun b!839806 () Bool)

(declare-fun e!552189 () Bool)

(declare-fun tp!263898 () Bool)

(declare-fun tp!263897 () Bool)

(assert (=> b!839806 (= e!552189 (and tp!263898 tp!263897))))

(declare-fun b!839803 () Bool)

(assert (=> b!839803 (= e!552189 tp_is_empty!3927)))

(declare-fun b!839804 () Bool)

(declare-fun tp!263895 () Bool)

(declare-fun tp!263896 () Bool)

(assert (=> b!839804 (= e!552189 (and tp!263895 tp!263896))))

(assert (=> b!839492 (= tp!263817 e!552189)))

(declare-fun b!839805 () Bool)

(declare-fun tp!263899 () Bool)

(assert (=> b!839805 (= e!552189 tp!263899)))

(assert (= (and b!839492 (is-ElementMatch!2112 (regex!1679 (rule!3102 separatorToken!297)))) b!839803))

(assert (= (and b!839492 (is-Concat!3858 (regex!1679 (rule!3102 separatorToken!297)))) b!839804))

(assert (= (and b!839492 (is-Star!2112 (regex!1679 (rule!3102 separatorToken!297)))) b!839805))

(assert (= (and b!839492 (is-Union!2112 (regex!1679 (rule!3102 separatorToken!297)))) b!839806))

(declare-fun b!839810 () Bool)

(declare-fun e!552190 () Bool)

(declare-fun tp!263903 () Bool)

(declare-fun tp!263902 () Bool)

(assert (=> b!839810 (= e!552190 (and tp!263903 tp!263902))))

(declare-fun b!839807 () Bool)

(assert (=> b!839807 (= e!552190 tp_is_empty!3927)))

(declare-fun b!839808 () Bool)

(declare-fun tp!263900 () Bool)

(declare-fun tp!263901 () Bool)

(assert (=> b!839808 (= e!552190 (and tp!263900 tp!263901))))

(assert (=> b!839501 (= tp!263828 e!552190)))

(declare-fun b!839809 () Bool)

(declare-fun tp!263904 () Bool)

(assert (=> b!839809 (= e!552190 tp!263904)))

(assert (= (and b!839501 (is-ElementMatch!2112 (regex!1679 (rule!3102 (h!14371 l!5107))))) b!839807))

(assert (= (and b!839501 (is-Concat!3858 (regex!1679 (rule!3102 (h!14371 l!5107))))) b!839808))

(assert (= (and b!839501 (is-Star!2112 (regex!1679 (rule!3102 (h!14371 l!5107))))) b!839809))

(assert (= (and b!839501 (is-Union!2112 (regex!1679 (rule!3102 (h!14371 l!5107))))) b!839810))

(declare-fun b!839821 () Bool)

(declare-fun b_free!24957 () Bool)

(declare-fun b_next!25021 () Bool)

(assert (=> b!839821 (= b_free!24957 (not b_next!25021))))

(declare-fun tp!263915 () Bool)

(declare-fun b_and!72503 () Bool)

(assert (=> b!839821 (= tp!263915 b_and!72503)))

(declare-fun b_free!24959 () Bool)

(declare-fun b_next!25023 () Bool)

(assert (=> b!839821 (= b_free!24959 (not b_next!25023))))

(declare-fun tb!57911 () Bool)

(declare-fun t!93400 () Bool)

(assert (=> (and b!839821 (= (toChars!2555 (transformation!1679 (h!14372 (t!93371 rules!2621)))) (toChars!2555 (transformation!1679 (rule!3102 (h!14371 l!5107))))) t!93400) tb!57911))

(declare-fun result!67142 () Bool)

(assert (= result!67142 result!67122))

(assert (=> b!839674 t!93400))

(declare-fun t!93402 () Bool)

(declare-fun tb!57913 () Bool)

(assert (=> (and b!839821 (= (toChars!2555 (transformation!1679 (h!14372 (t!93371 rules!2621)))) (toChars!2555 (transformation!1679 (rule!3102 separatorToken!297)))) t!93402) tb!57913))

(declare-fun result!67144 () Bool)

(assert (= result!67144 result!67130))

(assert (=> b!839692 t!93402))

(declare-fun b_and!72505 () Bool)

(declare-fun tp!263913 () Bool)

(assert (=> b!839821 (= tp!263913 (and (=> t!93400 result!67142) (=> t!93402 result!67144) b_and!72505))))

(declare-fun e!552202 () Bool)

(assert (=> b!839821 (= e!552202 (and tp!263915 tp!263913))))

(declare-fun b!839820 () Bool)

(declare-fun tp!263916 () Bool)

(declare-fun e!552201 () Bool)

(assert (=> b!839820 (= e!552201 (and tp!263916 (inv!11442 (tag!1941 (h!14372 (t!93371 rules!2621)))) (inv!11446 (transformation!1679 (h!14372 (t!93371 rules!2621)))) e!552202))))

(declare-fun b!839819 () Bool)

(declare-fun e!552199 () Bool)

(declare-fun tp!263914 () Bool)

(assert (=> b!839819 (= e!552199 (and e!552201 tp!263914))))

(assert (=> b!839511 (= tp!263825 e!552199)))

(assert (= b!839820 b!839821))

(assert (= b!839819 b!839820))

(assert (= (and b!839511 (is-Cons!8971 (t!93371 rules!2621))) b!839819))

(declare-fun m!1072791 () Bool)

(assert (=> b!839820 m!1072791))

(declare-fun m!1072793 () Bool)

(assert (=> b!839820 m!1072793))

(declare-fun b!839835 () Bool)

(declare-fun b_free!24961 () Bool)

(declare-fun b_next!25025 () Bool)

(assert (=> b!839835 (= b_free!24961 (not b_next!25025))))

(declare-fun tp!263927 () Bool)

(declare-fun b_and!72507 () Bool)

(assert (=> b!839835 (= tp!263927 b_and!72507)))

(declare-fun b_free!24963 () Bool)

(declare-fun b_next!25027 () Bool)

(assert (=> b!839835 (= b_free!24963 (not b_next!25027))))

(declare-fun t!93404 () Bool)

(declare-fun tb!57915 () Bool)

(assert (=> (and b!839835 (= (toChars!2555 (transformation!1679 (rule!3102 (h!14371 (t!93370 l!5107))))) (toChars!2555 (transformation!1679 (rule!3102 (h!14371 l!5107))))) t!93404) tb!57915))

(declare-fun result!67148 () Bool)

(assert (= result!67148 result!67122))

(assert (=> b!839674 t!93404))

(declare-fun tb!57917 () Bool)

(declare-fun t!93406 () Bool)

(assert (=> (and b!839835 (= (toChars!2555 (transformation!1679 (rule!3102 (h!14371 (t!93370 l!5107))))) (toChars!2555 (transformation!1679 (rule!3102 separatorToken!297)))) t!93406) tb!57917))

(declare-fun result!67150 () Bool)

(assert (= result!67150 result!67130))

(assert (=> b!839692 t!93406))

(declare-fun tp!263928 () Bool)

(declare-fun b_and!72509 () Bool)

(assert (=> b!839835 (= tp!263928 (and (=> t!93404 result!67148) (=> t!93406 result!67150) b_and!72509))))

(declare-fun e!552215 () Bool)

(assert (=> b!839835 (= e!552215 (and tp!263927 tp!263928))))

(declare-fun e!552216 () Bool)

(declare-fun tp!263929 () Bool)

(declare-fun b!839834 () Bool)

(assert (=> b!839834 (= e!552216 (and tp!263929 (inv!11442 (tag!1941 (rule!3102 (h!14371 (t!93370 l!5107))))) (inv!11446 (transformation!1679 (rule!3102 (h!14371 (t!93370 l!5107))))) e!552215))))

(declare-fun tp!263931 () Bool)

(declare-fun b!839833 () Bool)

(declare-fun e!552218 () Bool)

(assert (=> b!839833 (= e!552218 (and (inv!21 (value!54552 (h!14371 (t!93370 l!5107)))) e!552216 tp!263931))))

(declare-fun e!552217 () Bool)

(assert (=> b!839490 (= tp!263824 e!552217)))

(declare-fun b!839832 () Bool)

(declare-fun tp!263930 () Bool)

(assert (=> b!839832 (= e!552217 (and (inv!11445 (h!14371 (t!93370 l!5107))) e!552218 tp!263930))))

(assert (= b!839834 b!839835))

(assert (= b!839833 b!839834))

(assert (= b!839832 b!839833))

(assert (= (and b!839490 (is-Cons!8970 (t!93370 l!5107))) b!839832))

(declare-fun m!1072795 () Bool)

(assert (=> b!839834 m!1072795))

(declare-fun m!1072797 () Bool)

(assert (=> b!839834 m!1072797))

(declare-fun m!1072799 () Bool)

(assert (=> b!839833 m!1072799))

(declare-fun m!1072801 () Bool)

(assert (=> b!839832 m!1072801))

(declare-fun b_lambda!27611 () Bool)

(assert (= b_lambda!27605 (or (and b!839835 b_free!24963 (= (toChars!2555 (transformation!1679 (rule!3102 (h!14371 (t!93370 l!5107))))) (toChars!2555 (transformation!1679 (rule!3102 (h!14371 l!5107)))))) (and b!839821 b_free!24959 (= (toChars!2555 (transformation!1679 (h!14372 (t!93371 rules!2621)))) (toChars!2555 (transformation!1679 (rule!3102 (h!14371 l!5107)))))) (and b!839496 b_free!24943 (= (toChars!2555 (transformation!1679 (h!14372 rules!2621))) (toChars!2555 (transformation!1679 (rule!3102 (h!14371 l!5107)))))) (and b!839506 b_free!24939) (and b!839508 b_free!24935 (= (toChars!2555 (transformation!1679 (rule!3102 separatorToken!297))) (toChars!2555 (transformation!1679 (rule!3102 (h!14371 l!5107)))))) b_lambda!27611)))

(declare-fun b_lambda!27613 () Bool)

(assert (= b_lambda!27607 (or b!839505 b_lambda!27613)))

(declare-fun bs!229794 () Bool)

(declare-fun d!261482 () Bool)

(assert (= bs!229794 (and d!261482 b!839505)))

(assert (=> bs!229794 (= (dynLambda!4146 lambda!24921 (h!14371 l!5107)) (not (isSeparator!1679 (rule!3102 (h!14371 l!5107)))))))

(assert (=> b!839685 d!261482))

(declare-fun b_lambda!27615 () Bool)

(assert (= b_lambda!27609 (or (and b!839821 b_free!24959 (= (toChars!2555 (transformation!1679 (h!14372 (t!93371 rules!2621)))) (toChars!2555 (transformation!1679 (rule!3102 separatorToken!297))))) (and b!839835 b_free!24963 (= (toChars!2555 (transformation!1679 (rule!3102 (h!14371 (t!93370 l!5107))))) (toChars!2555 (transformation!1679 (rule!3102 separatorToken!297))))) (and b!839506 b_free!24939 (= (toChars!2555 (transformation!1679 (rule!3102 (h!14371 l!5107)))) (toChars!2555 (transformation!1679 (rule!3102 separatorToken!297))))) (and b!839508 b_free!24935) (and b!839496 b_free!24943 (= (toChars!2555 (transformation!1679 (h!14372 rules!2621))) (toChars!2555 (transformation!1679 (rule!3102 separatorToken!297))))) b_lambda!27615)))

(push 1)

(assert (not tb!57905))

(assert (not b!839667))

(assert (not b!839810))

(assert b_and!72499)

(assert b_and!72505)

(assert b_and!72509)

(assert (not b!839666))

(assert (not b!839787))

(assert (not b!839801))

(assert (not b!839755))

(assert (not b!839686))

(assert (not b!839680))

(assert b_and!72497)

(assert (not b!839604))

(assert (not b!839746))

(assert (not d!261478))

(assert (not b!839659))

(assert (not b!839800))

(assert b_and!72469)

(assert (not b_lambda!27611))

(assert (not b!839669))

(assert (not b!839689))

(assert (not d!261460))

(assert (not d!261470))

(assert b_and!72503)

(assert (not b!839692))

(assert (not d!261444))

(assert (not b!839781))

(assert (not b!839776))

(assert (not tb!57899))

(assert (not d!261426))

(assert (not b!839654))

(assert (not d!261468))

(assert (not b_next!24997))

(assert (not d!261446))

(assert (not b!839675))

(assert (not b!839601))

(assert (not b_next!25005))

(assert (not b!839668))

(assert (not b!839637))

(assert b_and!72507)

(assert (not b!839752))

(assert (not b!839833))

(assert (not b!839832))

(assert b_and!72501)

(assert (not b_lambda!27615))

(assert (not b!839788))

(assert (not b!839691))

(assert (not b!839743))

(assert (not b!839602))

(assert b_and!72461)

(assert (not b!839652))

(assert (not b!839603))

(assert (not b_next!25003))

(assert (not d!261454))

(assert (not b!839693))

(assert (not b!839695))

(assert (not b!839809))

(assert (not d!261436))

(assert (not b!839782))

(assert (not b_next!25001))

(assert (not b!839805))

(assert (not d!261466))

(assert (not b!839599))

(assert (not b_next!25021))

(assert (not b!839819))

(assert (not b_next!25023))

(assert (not d!261440))

(assert (not d!261456))

(assert (not b_next!25027))

(assert (not b!839820))

(assert (not b_next!24999))

(assert tp_is_empty!3927)

(assert (not d!261420))

(assert (not b!839744))

(assert (not b!839806))

(assert (not b!839802))

(assert (not b!839745))

(assert (not b!839674))

(assert (not b!839687))

(assert (not b!839694))

(assert (not b!839834))

(assert (not b!839804))

(assert (not b!839754))

(assert (not b!839697))

(assert (not b!839808))

(assert (not b_next!25025))

(assert (not d!261452))

(assert b_and!72465)

(assert (not b_lambda!27613))

(assert (not b!839750))

(assert (not b_next!25007))

(assert (not b!839696))

(assert (not d!261472))

(assert (not b!839656))

(assert (not b!839753))

(assert (not b!839627))

(assert (not b!839628))

(check-sat)

(pop 1)

(push 1)

(assert b_and!72497)

(assert b_and!72469)

(assert b_and!72503)

(assert b_and!72499)

(assert b_and!72461)

(assert (not b_next!25003))

(assert b_and!72505)

(assert (not b_next!25023))

(assert (not b_next!25027))

(assert (not b_next!24999))

(assert (not b_next!25025))

(assert b_and!72465)

(assert (not b_next!25007))

(assert b_and!72509)

(assert (not b_next!25005))

(assert (not b_next!24997))

(assert b_and!72507)

(assert b_and!72501)

(assert (not b_next!25001))

(assert (not b_next!25021))

(check-sat)

(pop 1)

