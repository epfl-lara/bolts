; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74490 () Bool)

(assert start!74490)

(declare-fun b!839430 () Bool)

(declare-fun b_free!24921 () Bool)

(declare-fun b_next!24985 () Bool)

(assert (=> b!839430 (= b_free!24921 (not b_next!24985))))

(declare-fun tp!263778 () Bool)

(declare-fun b_and!72449 () Bool)

(assert (=> b!839430 (= tp!263778 b_and!72449)))

(declare-fun b_free!24923 () Bool)

(declare-fun b_next!24987 () Bool)

(assert (=> b!839430 (= b_free!24923 (not b_next!24987))))

(declare-fun tp!263785 () Bool)

(declare-fun b_and!72451 () Bool)

(assert (=> b!839430 (= tp!263785 b_and!72451)))

(declare-fun b!839436 () Bool)

(declare-fun b_free!24925 () Bool)

(declare-fun b_next!24989 () Bool)

(assert (=> b!839436 (= b_free!24925 (not b_next!24989))))

(declare-fun tp!263779 () Bool)

(declare-fun b_and!72453 () Bool)

(assert (=> b!839436 (= tp!263779 b_and!72453)))

(declare-fun b_free!24927 () Bool)

(declare-fun b_next!24991 () Bool)

(assert (=> b!839436 (= b_free!24927 (not b_next!24991))))

(declare-fun tp!263784 () Bool)

(declare-fun b_and!72455 () Bool)

(assert (=> b!839436 (= tp!263784 b_and!72455)))

(declare-fun b!839434 () Bool)

(declare-fun b_free!24929 () Bool)

(declare-fun b_next!24993 () Bool)

(assert (=> b!839434 (= b_free!24929 (not b_next!24993))))

(declare-fun tp!263787 () Bool)

(declare-fun b_and!72457 () Bool)

(assert (=> b!839434 (= tp!263787 b_and!72457)))

(declare-fun b_free!24931 () Bool)

(declare-fun b_next!24995 () Bool)

(assert (=> b!839434 (= b_free!24931 (not b_next!24995))))

(declare-fun tp!263786 () Bool)

(declare-fun b_and!72459 () Bool)

(assert (=> b!839434 (= tp!263786 b_and!72459)))

(declare-fun b!839424 () Bool)

(declare-fun res!383693 () Bool)

(declare-fun e!551936 () Bool)

(assert (=> b!839424 (=> (not res!383693) (not e!551936))))

(declare-datatypes ((List!8980 0))(
  ( (Nil!8964) (Cons!8964 (h!14365 (_ BitVec 16)) (t!93364 List!8980)) )
))
(declare-datatypes ((TokenValue!1744 0))(
  ( (FloatLiteralValue!3488 (text!12653 List!8980)) (TokenValueExt!1743 (__x!7219 Int)) (Broken!8720 (value!54496 List!8980)) (Object!1759) (End!1744) (Def!1744) (Underscore!1744) (Match!1744) (Else!1744) (Error!1744) (Case!1744) (If!1744) (Extends!1744) (Abstract!1744) (Class!1744) (Val!1744) (DelimiterValue!3488 (del!1804 List!8980)) (KeywordValue!1750 (value!54497 List!8980)) (CommentValue!3488 (value!54498 List!8980)) (WhitespaceValue!3488 (value!54499 List!8980)) (IndentationValue!1744 (value!54500 List!8980)) (String!10617) (Int32!1744) (Broken!8721 (value!54501 List!8980)) (Boolean!1745) (Unit!13424) (OperatorValue!1747 (op!1804 List!8980)) (IdentifierValue!3488 (value!54502 List!8980)) (IdentifierValue!3489 (value!54503 List!8980)) (WhitespaceValue!3489 (value!54504 List!8980)) (True!3488) (False!3488) (Broken!8722 (value!54505 List!8980)) (Broken!8723 (value!54506 List!8980)) (True!3489) (RightBrace!1744) (RightBracket!1744) (Colon!1744) (Null!1744) (Comma!1744) (LeftBracket!1744) (False!3489) (LeftBrace!1744) (ImaginaryLiteralValue!1744 (text!12654 List!8980)) (StringLiteralValue!5232 (value!54507 List!8980)) (EOFValue!1744 (value!54508 List!8980)) (IdentValue!1744 (value!54509 List!8980)) (DelimiterValue!3489 (value!54510 List!8980)) (DedentValue!1744 (value!54511 List!8980)) (NewLineValue!1744 (value!54512 List!8980)) (IntegerValue!5232 (value!54513 (_ BitVec 32)) (text!12655 List!8980)) (IntegerValue!5233 (value!54514 Int) (text!12656 List!8980)) (Times!1744) (Or!1744) (Equal!1744) (Minus!1744) (Broken!8724 (value!54515 List!8980)) (And!1744) (Div!1744) (LessEqual!1744) (Mod!1744) (Concat!3855) (Not!1744) (Plus!1744) (SpaceValue!1744 (value!54516 List!8980)) (IntegerValue!5234 (value!54517 Int) (text!12657 List!8980)) (StringLiteralValue!5233 (text!12658 List!8980)) (FloatLiteralValue!3489 (text!12659 List!8980)) (BytesLiteralValue!1744 (value!54518 List!8980)) (CommentValue!3489 (value!54519 List!8980)) (StringLiteralValue!5234 (value!54520 List!8980)) (ErrorTokenValue!1744 (msg!1805 List!8980)) )
))
(declare-datatypes ((C!4792 0))(
  ( (C!4793 (val!2644 Int)) )
))
(declare-datatypes ((Regex!2111 0))(
  ( (ElementMatch!2111 (c!136999 C!4792)) (Concat!3856 (regOne!4734 Regex!2111) (regTwo!4734 Regex!2111)) (EmptyExpr!2111) (Star!2111 (reg!2440 Regex!2111)) (EmptyLang!2111) (Union!2111 (regOne!4735 Regex!2111) (regTwo!4735 Regex!2111)) )
))
(declare-datatypes ((String!10618 0))(
  ( (String!10619 (value!54521 String)) )
))
(declare-datatypes ((List!8981 0))(
  ( (Nil!8965) (Cons!8965 (h!14366 C!4792) (t!93365 List!8981)) )
))
(declare-datatypes ((IArray!5955 0))(
  ( (IArray!5956 (innerList!3035 List!8981)) )
))
(declare-datatypes ((Conc!2975 0))(
  ( (Node!2975 (left!6659 Conc!2975) (right!6989 Conc!2975) (csize!6180 Int) (cheight!3186 Int)) (Leaf!4402 (xs!5664 IArray!5955) (csize!6181 Int)) (Empty!2975) )
))
(declare-datatypes ((BalanceConc!5964 0))(
  ( (BalanceConc!5965 (c!137000 Conc!2975)) )
))
(declare-datatypes ((TokenValueInjection!3188 0))(
  ( (TokenValueInjection!3189 (toValue!2695 Int) (toChars!2554 Int)) )
))
(declare-datatypes ((Rule!3156 0))(
  ( (Rule!3157 (regex!1678 Regex!2111) (tag!1940 String!10618) (isSeparator!1678 Bool) (transformation!1678 TokenValueInjection!3188)) )
))
(declare-datatypes ((List!8982 0))(
  ( (Nil!8966) (Cons!8966 (h!14367 Rule!3156) (t!93366 List!8982)) )
))
(declare-fun rules!2621 () List!8982)

(declare-fun sepAndNonSepRulesDisjointChars!478 (List!8982 List!8982) Bool)

(assert (=> b!839424 (= res!383693 (sepAndNonSepRulesDisjointChars!478 rules!2621 rules!2621))))

(declare-fun b!839425 () Bool)

(declare-fun res!383692 () Bool)

(assert (=> b!839425 (=> (not res!383692) (not e!551936))))

(declare-datatypes ((LexerInterface!1480 0))(
  ( (LexerInterfaceExt!1477 (__x!7220 Int)) (Lexer!1478) )
))
(declare-fun thiss!20117 () LexerInterface!1480)

(declare-fun rulesInvariant!1356 (LexerInterface!1480 List!8982) Bool)

(assert (=> b!839425 (= res!383692 (rulesInvariant!1356 thiss!20117 rules!2621))))

(declare-fun b!839426 () Bool)

(declare-fun res!383688 () Bool)

(assert (=> b!839426 (=> (not res!383688) (not e!551936))))

(declare-datatypes ((Token!3022 0))(
  ( (Token!3023 (value!54522 TokenValue!1744) (rule!3101 Rule!3156) (size!7515 Int) (originalCharacters!2234 List!8981)) )
))
(declare-fun separatorToken!297 () Token!3022)

(declare-fun rulesProduceIndividualToken!544 (LexerInterface!1480 List!8982 Token!3022) Bool)

(assert (=> b!839426 (= res!383688 (rulesProduceIndividualToken!544 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!839427 () Bool)

(declare-fun e!551935 () Bool)

(declare-fun e!551934 () Bool)

(declare-fun tp!263780 () Bool)

(assert (=> b!839427 (= e!551935 (and e!551934 tp!263780))))

(declare-fun b!839428 () Bool)

(declare-fun res!383699 () Bool)

(assert (=> b!839428 (=> (not res!383699) (not e!551936))))

(assert (=> b!839428 (= res!383699 (isSeparator!1678 (rule!3101 separatorToken!297)))))

(declare-fun tp!263782 () Bool)

(declare-fun e!551923 () Bool)

(declare-fun b!839429 () Bool)

(declare-datatypes ((List!8983 0))(
  ( (Nil!8967) (Cons!8967 (h!14368 Token!3022) (t!93367 List!8983)) )
))
(declare-fun l!5107 () List!8983)

(declare-fun e!551937 () Bool)

(declare-fun inv!11440 (Token!3022) Bool)

(assert (=> b!839429 (= e!551923 (and (inv!11440 (h!14368 l!5107)) e!551937 tp!263782))))

(declare-fun e!551931 () Bool)

(assert (=> b!839430 (= e!551931 (and tp!263778 tp!263785))))

(declare-fun b!839431 () Bool)

(declare-fun res!383689 () Bool)

(declare-fun e!551925 () Bool)

(assert (=> b!839431 (=> res!383689 e!551925)))

(declare-fun lt!318242 () List!8983)

(declare-fun head!1438 (List!8983) Token!3022)

(assert (=> b!839431 (= res!383689 (not (= (head!1438 l!5107) (h!14368 lt!318242))))))

(declare-fun b!839432 () Bool)

(declare-fun res!383690 () Bool)

(assert (=> b!839432 (=> res!383690 e!551925)))

(declare-fun withSeparatorTokenList!10 (LexerInterface!1480 List!8983 Token!3022) List!8983)

(declare-fun tail!996 (List!8983) List!8983)

(assert (=> b!839432 (= res!383690 (not (= (t!93367 (t!93367 lt!318242)) (withSeparatorTokenList!10 thiss!20117 (tail!996 l!5107) separatorToken!297))))))

(declare-fun e!551938 () Bool)

(assert (=> b!839434 (= e!551938 (and tp!263787 tp!263786))))

(declare-fun b!839435 () Bool)

(declare-fun e!551926 () Bool)

(declare-fun tp!263781 () Bool)

(declare-fun inv!11437 (String!10618) Bool)

(declare-fun inv!11441 (TokenValueInjection!3188) Bool)

(assert (=> b!839435 (= e!551926 (and tp!263781 (inv!11437 (tag!1940 (rule!3101 separatorToken!297))) (inv!11441 (transformation!1678 (rule!3101 separatorToken!297))) e!551931))))

(declare-fun e!551933 () Bool)

(assert (=> b!839436 (= e!551933 (and tp!263779 tp!263784))))

(declare-fun tp!263790 () Bool)

(declare-fun e!551924 () Bool)

(declare-fun b!839437 () Bool)

(assert (=> b!839437 (= e!551924 (and tp!263790 (inv!11437 (tag!1940 (rule!3101 (h!14368 l!5107)))) (inv!11441 (transformation!1678 (rule!3101 (h!14368 l!5107)))) e!551938))))

(declare-fun b!839438 () Bool)

(assert (=> b!839438 (= e!551936 (not e!551925))))

(declare-fun res!383698 () Bool)

(assert (=> b!839438 (=> res!383698 e!551925)))

(get-info :version)

(assert (=> b!839438 (= res!383698 (or (not ((_ is Cons!8967) lt!318242)) (not ((_ is Cons!8967) (t!93367 lt!318242)))))))

(declare-fun rulesProduceEachTokenIndividuallyList!368 (LexerInterface!1480 List!8982 List!8983) Bool)

(assert (=> b!839438 (rulesProduceEachTokenIndividuallyList!368 thiss!20117 rules!2621 lt!318242)))

(assert (=> b!839438 (= lt!318242 (withSeparatorTokenList!10 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13425 0))(
  ( (Unit!13426) )
))
(declare-fun lt!318241 () Unit!13425)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!10 (LexerInterface!1480 List!8982 List!8983 Token!3022) Unit!13425)

(assert (=> b!839438 (= lt!318241 (withSeparatorTokenListPreservesRulesProduceTokens!10 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun b!839439 () Bool)

(declare-fun res!383695 () Bool)

(assert (=> b!839439 (=> (not res!383695) (not e!551936))))

(declare-fun lambda!24918 () Int)

(declare-fun forall!2093 (List!8983 Int) Bool)

(assert (=> b!839439 (= res!383695 (forall!2093 l!5107 lambda!24918))))

(declare-fun b!839440 () Bool)

(declare-fun tp!263783 () Bool)

(declare-fun inv!21 (TokenValue!1744) Bool)

(assert (=> b!839440 (= e!551937 (and (inv!21 (value!54522 (h!14368 l!5107))) e!551924 tp!263783))))

(declare-fun b!839441 () Bool)

(declare-fun res!383694 () Bool)

(assert (=> b!839441 (=> (not res!383694) (not e!551936))))

(assert (=> b!839441 (= res!383694 (rulesProduceEachTokenIndividuallyList!368 thiss!20117 rules!2621 l!5107))))

(declare-fun b!839442 () Bool)

(declare-fun res!383691 () Bool)

(assert (=> b!839442 (=> res!383691 e!551925)))

(assert (=> b!839442 (= res!383691 (not (= (h!14368 (t!93367 lt!318242)) separatorToken!297)))))

(declare-fun b!839443 () Bool)

(assert (=> b!839443 (= e!551925 true)))

(declare-fun separableTokensPredicate!20 (LexerInterface!1480 Token!3022 Token!3022 List!8982) Bool)

(assert (=> b!839443 (separableTokensPredicate!20 thiss!20117 (h!14368 lt!318242) (h!14368 (t!93367 lt!318242)) rules!2621)))

(declare-fun lt!318243 () Unit!13425)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!2 (LexerInterface!1480 Token!3022 Token!3022 List!8982) Unit!13425)

(assert (=> b!839443 (= lt!318243 (lemmaTokensOfDifferentKindsAreSeparable!2 thiss!20117 (h!14368 lt!318242) (h!14368 (t!93367 lt!318242)) rules!2621))))

(declare-fun b!839444 () Bool)

(declare-fun res!383696 () Bool)

(assert (=> b!839444 (=> (not res!383696) (not e!551936))))

(declare-fun isEmpty!5291 (List!8982) Bool)

(assert (=> b!839444 (= res!383696 (not (isEmpty!5291 rules!2621)))))

(declare-fun e!551939 () Bool)

(declare-fun tp!263788 () Bool)

(declare-fun b!839445 () Bool)

(assert (=> b!839445 (= e!551939 (and (inv!21 (value!54522 separatorToken!297)) e!551926 tp!263788))))

(declare-fun res!383697 () Bool)

(assert (=> start!74490 (=> (not res!383697) (not e!551936))))

(assert (=> start!74490 (= res!383697 ((_ is Lexer!1478) thiss!20117))))

(assert (=> start!74490 e!551936))

(assert (=> start!74490 true))

(assert (=> start!74490 e!551935))

(assert (=> start!74490 e!551923))

(assert (=> start!74490 (and (inv!11440 separatorToken!297) e!551939)))

(declare-fun b!839433 () Bool)

(declare-fun tp!263789 () Bool)

(assert (=> b!839433 (= e!551934 (and tp!263789 (inv!11437 (tag!1940 (h!14367 rules!2621))) (inv!11441 (transformation!1678 (h!14367 rules!2621))) e!551933))))

(assert (= (and start!74490 res!383697) b!839444))

(assert (= (and b!839444 res!383696) b!839425))

(assert (= (and b!839425 res!383692) b!839441))

(assert (= (and b!839441 res!383694) b!839426))

(assert (= (and b!839426 res!383688) b!839428))

(assert (= (and b!839428 res!383699) b!839439))

(assert (= (and b!839439 res!383695) b!839424))

(assert (= (and b!839424 res!383693) b!839438))

(assert (= (and b!839438 (not res!383698)) b!839432))

(assert (= (and b!839432 (not res!383690)) b!839431))

(assert (= (and b!839431 (not res!383689)) b!839442))

(assert (= (and b!839442 (not res!383691)) b!839443))

(assert (= b!839433 b!839436))

(assert (= b!839427 b!839433))

(assert (= (and start!74490 ((_ is Cons!8966) rules!2621)) b!839427))

(assert (= b!839437 b!839434))

(assert (= b!839440 b!839437))

(assert (= b!839429 b!839440))

(assert (= (and start!74490 ((_ is Cons!8967) l!5107)) b!839429))

(assert (= b!839435 b!839430))

(assert (= b!839445 b!839435))

(assert (= start!74490 b!839445))

(declare-fun m!1072345 () Bool)

(assert (=> b!839431 m!1072345))

(declare-fun m!1072347 () Bool)

(assert (=> b!839440 m!1072347))

(declare-fun m!1072349 () Bool)

(assert (=> b!839435 m!1072349))

(declare-fun m!1072351 () Bool)

(assert (=> b!839435 m!1072351))

(declare-fun m!1072353 () Bool)

(assert (=> b!839426 m!1072353))

(declare-fun m!1072355 () Bool)

(assert (=> b!839439 m!1072355))

(declare-fun m!1072357 () Bool)

(assert (=> b!839424 m!1072357))

(declare-fun m!1072359 () Bool)

(assert (=> start!74490 m!1072359))

(declare-fun m!1072361 () Bool)

(assert (=> b!839432 m!1072361))

(assert (=> b!839432 m!1072361))

(declare-fun m!1072363 () Bool)

(assert (=> b!839432 m!1072363))

(declare-fun m!1072365 () Bool)

(assert (=> b!839433 m!1072365))

(declare-fun m!1072367 () Bool)

(assert (=> b!839433 m!1072367))

(declare-fun m!1072369 () Bool)

(assert (=> b!839445 m!1072369))

(declare-fun m!1072371 () Bool)

(assert (=> b!839438 m!1072371))

(declare-fun m!1072373 () Bool)

(assert (=> b!839438 m!1072373))

(declare-fun m!1072375 () Bool)

(assert (=> b!839438 m!1072375))

(declare-fun m!1072377 () Bool)

(assert (=> b!839441 m!1072377))

(declare-fun m!1072379 () Bool)

(assert (=> b!839443 m!1072379))

(declare-fun m!1072381 () Bool)

(assert (=> b!839443 m!1072381))

(declare-fun m!1072383 () Bool)

(assert (=> b!839425 m!1072383))

(declare-fun m!1072385 () Bool)

(assert (=> b!839429 m!1072385))

(declare-fun m!1072387 () Bool)

(assert (=> b!839437 m!1072387))

(declare-fun m!1072389 () Bool)

(assert (=> b!839437 m!1072389))

(declare-fun m!1072391 () Bool)

(assert (=> b!839444 m!1072391))

(check-sat (not b!839445) (not start!74490) b_and!72451 (not b!839441) (not b!839437) (not b!839432) (not b!839427) (not b!839433) (not b!839443) (not b!839431) (not b_next!24985) (not b!839439) (not b!839424) (not b!839425) (not b_next!24989) (not b!839426) (not b_next!24987) (not b!839444) b_and!72457 (not b_next!24991) (not b!839440) b_and!72449 (not b_next!24993) b_and!72455 (not b_next!24995) (not b!839438) b_and!72453 (not b!839429) b_and!72459 (not b!839435))
(check-sat (not b_next!24985) (not b_next!24989) (not b_next!24987) b_and!72449 b_and!72451 (not b_next!24995) b_and!72453 b_and!72459 b_and!72457 (not b_next!24991) (not b_next!24993) b_and!72455)
