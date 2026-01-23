; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!78084 () Bool)

(assert start!78084)

(declare-fun b!865639 () Bool)

(declare-fun b_free!26453 () Bool)

(declare-fun b_next!26517 () Bool)

(assert (=> b!865639 (= b_free!26453 (not b_next!26517))))

(declare-fun tp!273719 () Bool)

(declare-fun b_and!77585 () Bool)

(assert (=> b!865639 (= tp!273719 b_and!77585)))

(declare-fun b_free!26455 () Bool)

(declare-fun b_next!26519 () Bool)

(assert (=> b!865639 (= b_free!26455 (not b_next!26519))))

(declare-fun tp!273729 () Bool)

(declare-fun b_and!77587 () Bool)

(assert (=> b!865639 (= tp!273729 b_and!77587)))

(declare-fun b!865650 () Bool)

(declare-fun b_free!26457 () Bool)

(declare-fun b_next!26521 () Bool)

(assert (=> b!865650 (= b_free!26457 (not b_next!26521))))

(declare-fun tp!273718 () Bool)

(declare-fun b_and!77589 () Bool)

(assert (=> b!865650 (= tp!273718 b_and!77589)))

(declare-fun b_free!26459 () Bool)

(declare-fun b_next!26523 () Bool)

(assert (=> b!865650 (= b_free!26459 (not b_next!26523))))

(declare-fun tp!273724 () Bool)

(declare-fun b_and!77591 () Bool)

(assert (=> b!865650 (= tp!273724 b_and!77591)))

(declare-fun b!865638 () Bool)

(declare-fun b_free!26461 () Bool)

(declare-fun b_next!26525 () Bool)

(assert (=> b!865638 (= b_free!26461 (not b_next!26525))))

(declare-fun tp!273727 () Bool)

(declare-fun b_and!77593 () Bool)

(assert (=> b!865638 (= tp!273727 b_and!77593)))

(declare-fun b_free!26463 () Bool)

(declare-fun b_next!26527 () Bool)

(assert (=> b!865638 (= b_free!26463 (not b_next!26527))))

(declare-fun tp!273725 () Bool)

(declare-fun b_and!77595 () Bool)

(assert (=> b!865638 (= tp!273725 b_and!77595)))

(declare-fun e!569550 () Bool)

(assert (=> b!865638 (= e!569550 (and tp!273727 tp!273725))))

(declare-fun e!569548 () Bool)

(assert (=> b!865639 (= e!569548 (and tp!273719 tp!273729))))

(declare-fun b!865640 () Bool)

(declare-fun res!394241 () Bool)

(declare-fun e!569544 () Bool)

(assert (=> b!865640 (=> (not res!394241) (not e!569544))))

(declare-datatypes ((List!9364 0))(
  ( (Nil!9348) (Cons!9348 (h!14749 (_ BitVec 16)) (t!98722 List!9364)) )
))
(declare-datatypes ((TokenValue!1821 0))(
  ( (FloatLiteralValue!3642 (text!13192 List!9364)) (TokenValueExt!1820 (__x!7373 Int)) (Broken!9105 (value!56692 List!9364)) (Object!1836) (End!1821) (Def!1821) (Underscore!1821) (Match!1821) (Else!1821) (Error!1821) (Case!1821) (If!1821) (Extends!1821) (Abstract!1821) (Class!1821) (Val!1821) (DelimiterValue!3642 (del!1881 List!9364)) (KeywordValue!1827 (value!56693 List!9364)) (CommentValue!3642 (value!56694 List!9364)) (WhitespaceValue!3642 (value!56695 List!9364)) (IndentationValue!1821 (value!56696 List!9364)) (String!11004) (Int32!1821) (Broken!9106 (value!56697 List!9364)) (Boolean!1822) (Unit!13873) (OperatorValue!1824 (op!1881 List!9364)) (IdentifierValue!3642 (value!56698 List!9364)) (IdentifierValue!3643 (value!56699 List!9364)) (WhitespaceValue!3643 (value!56700 List!9364)) (True!3642) (False!3642) (Broken!9107 (value!56701 List!9364)) (Broken!9108 (value!56702 List!9364)) (True!3643) (RightBrace!1821) (RightBracket!1821) (Colon!1821) (Null!1821) (Comma!1821) (LeftBracket!1821) (False!3643) (LeftBrace!1821) (ImaginaryLiteralValue!1821 (text!13193 List!9364)) (StringLiteralValue!5463 (value!56703 List!9364)) (EOFValue!1821 (value!56704 List!9364)) (IdentValue!1821 (value!56705 List!9364)) (DelimiterValue!3643 (value!56706 List!9364)) (DedentValue!1821 (value!56707 List!9364)) (NewLineValue!1821 (value!56708 List!9364)) (IntegerValue!5463 (value!56709 (_ BitVec 32)) (text!13194 List!9364)) (IntegerValue!5464 (value!56710 Int) (text!13195 List!9364)) (Times!1821) (Or!1821) (Equal!1821) (Minus!1821) (Broken!9109 (value!56711 List!9364)) (And!1821) (Div!1821) (LessEqual!1821) (Mod!1821) (Concat!4009) (Not!1821) (Plus!1821) (SpaceValue!1821 (value!56712 List!9364)) (IntegerValue!5465 (value!56713 Int) (text!13196 List!9364)) (StringLiteralValue!5464 (text!13197 List!9364)) (FloatLiteralValue!3643 (text!13198 List!9364)) (BytesLiteralValue!1821 (value!56714 List!9364)) (CommentValue!3643 (value!56715 List!9364)) (StringLiteralValue!5465 (value!56716 List!9364)) (ErrorTokenValue!1821 (msg!1882 List!9364)) )
))
(declare-datatypes ((C!4946 0))(
  ( (C!4947 (val!2721 Int)) )
))
(declare-datatypes ((Regex!2188 0))(
  ( (ElementMatch!2188 (c!140087 C!4946)) (Concat!4010 (regOne!4888 Regex!2188) (regTwo!4888 Regex!2188)) (EmptyExpr!2188) (Star!2188 (reg!2517 Regex!2188)) (EmptyLang!2188) (Union!2188 (regOne!4889 Regex!2188) (regTwo!4889 Regex!2188)) )
))
(declare-datatypes ((String!11005 0))(
  ( (String!11006 (value!56717 String)) )
))
(declare-datatypes ((List!9365 0))(
  ( (Nil!9349) (Cons!9349 (h!14750 C!4946) (t!98723 List!9365)) )
))
(declare-datatypes ((IArray!6205 0))(
  ( (IArray!6206 (innerList!3160 List!9365)) )
))
(declare-datatypes ((Conc!3100 0))(
  ( (Node!3100 (left!6919 Conc!3100) (right!7249 Conc!3100) (csize!6430 Int) (cheight!3311 Int)) (Leaf!4566 (xs!5789 IArray!6205) (csize!6431 Int)) (Empty!3100) )
))
(declare-datatypes ((BalanceConc!6214 0))(
  ( (BalanceConc!6215 (c!140088 Conc!3100)) )
))
(declare-datatypes ((TokenValueInjection!3342 0))(
  ( (TokenValueInjection!3343 (toValue!2824 Int) (toChars!2683 Int)) )
))
(declare-datatypes ((Rule!3310 0))(
  ( (Rule!3311 (regex!1755 Regex!2188) (tag!2017 String!11005) (isSeparator!1755 Bool) (transformation!1755 TokenValueInjection!3342)) )
))
(declare-datatypes ((List!9366 0))(
  ( (Nil!9350) (Cons!9350 (h!14751 Rule!3310) (t!98724 List!9366)) )
))
(declare-fun rules!2621 () List!9366)

(declare-fun sepAndNonSepRulesDisjointChars!555 (List!9366 List!9366) Bool)

(assert (=> b!865640 (= res!394241 (sepAndNonSepRulesDisjointChars!555 rules!2621 rules!2621))))

(declare-fun b!865641 () Bool)

(declare-fun res!394238 () Bool)

(assert (=> b!865641 (=> (not res!394238) (not e!569544))))

(declare-datatypes ((Token!3176 0))(
  ( (Token!3177 (value!56718 TokenValue!1821) (rule!3178 Rule!3310) (size!7794 Int) (originalCharacters!2311 List!9365)) )
))
(declare-datatypes ((List!9367 0))(
  ( (Nil!9351) (Cons!9351 (h!14752 Token!3176) (t!98725 List!9367)) )
))
(declare-fun l!5107 () List!9367)

(declare-fun lambda!25973 () Int)

(declare-fun forall!2222 (List!9367 Int) Bool)

(assert (=> b!865641 (= res!394238 (forall!2222 l!5107 lambda!25973))))

(declare-fun b!865643 () Bool)

(declare-fun e!569558 () Bool)

(declare-fun e!569553 () Bool)

(assert (=> b!865643 (= e!569558 e!569553)))

(declare-fun res!394237 () Bool)

(assert (=> b!865643 (=> res!394237 e!569553)))

(declare-fun separatorToken!297 () Token!3176)

(declare-fun lt!326649 () List!9367)

(declare-datatypes ((LexerInterface!1557 0))(
  ( (LexerInterfaceExt!1554 (__x!7374 Int)) (Lexer!1555) )
))
(declare-fun thiss!20117 () LexerInterface!1557)

(declare-fun lt!326648 () List!9367)

(declare-fun withSeparatorTokenList!85 (LexerInterface!1557 List!9367 Token!3176) List!9367)

(assert (=> b!865643 (= res!394237 (not (= (t!98725 (t!98725 lt!326649)) (withSeparatorTokenList!85 thiss!20117 lt!326648 separatorToken!297))))))

(declare-fun tail!1063 (List!9367) List!9367)

(assert (=> b!865643 (= lt!326648 (tail!1063 l!5107))))

(declare-fun b!865644 () Bool)

(declare-fun e!569555 () Bool)

(declare-fun e!569554 () Bool)

(declare-fun tp!273721 () Bool)

(assert (=> b!865644 (= e!569555 (and e!569554 tp!273721))))

(declare-fun tp!273720 () Bool)

(declare-fun e!569551 () Bool)

(declare-fun b!865645 () Bool)

(declare-fun e!569547 () Bool)

(declare-fun inv!11884 (Token!3176) Bool)

(assert (=> b!865645 (= e!569551 (and (inv!11884 (h!14752 l!5107)) e!569547 tp!273720))))

(declare-fun e!569552 () Bool)

(declare-fun tp!273728 () Bool)

(declare-fun b!865646 () Bool)

(declare-fun e!569549 () Bool)

(declare-fun inv!11881 (String!11005) Bool)

(declare-fun inv!11885 (TokenValueInjection!3342) Bool)

(assert (=> b!865646 (= e!569552 (and tp!273728 (inv!11881 (tag!2017 (rule!3178 (h!14752 l!5107)))) (inv!11885 (transformation!1755 (rule!3178 (h!14752 l!5107)))) e!569549))))

(declare-fun b!865647 () Bool)

(declare-fun res!394242 () Bool)

(assert (=> b!865647 (=> (not res!394242) (not e!569544))))

(declare-fun rulesInvariant!1433 (LexerInterface!1557 List!9366) Bool)

(assert (=> b!865647 (= res!394242 (rulesInvariant!1433 thiss!20117 rules!2621))))

(declare-fun tp!273726 () Bool)

(declare-fun b!865648 () Bool)

(declare-fun inv!21 (TokenValue!1821) Bool)

(assert (=> b!865648 (= e!569547 (and (inv!21 (value!56718 (h!14752 l!5107))) e!569552 tp!273726))))

(declare-fun b!865649 () Bool)

(declare-fun res!394243 () Bool)

(assert (=> b!865649 (=> (not res!394243) (not e!569544))))

(declare-fun isEmpty!5552 (List!9366) Bool)

(assert (=> b!865649 (= res!394243 (not (isEmpty!5552 rules!2621)))))

(assert (=> b!865650 (= e!569549 (and tp!273718 tp!273724))))

(declare-fun b!865651 () Bool)

(declare-fun res!394244 () Bool)

(assert (=> b!865651 (=> res!394244 e!569553)))

(assert (=> b!865651 (= res!394244 (not (= (h!14752 (t!98725 lt!326649)) separatorToken!297)))))

(declare-fun b!865652 () Bool)

(declare-fun tp!273722 () Bool)

(assert (=> b!865652 (= e!569554 (and tp!273722 (inv!11881 (tag!2017 (h!14751 rules!2621))) (inv!11885 (transformation!1755 (h!14751 rules!2621))) e!569548))))

(declare-fun b!865653 () Bool)

(declare-fun res!394233 () Bool)

(assert (=> b!865653 (=> (not res!394233) (not e!569544))))

(declare-fun rulesProduceEachTokenIndividuallyList!445 (LexerInterface!1557 List!9366 List!9367) Bool)

(assert (=> b!865653 (= res!394233 (rulesProduceEachTokenIndividuallyList!445 thiss!20117 rules!2621 l!5107))))

(declare-fun res!394239 () Bool)

(assert (=> start!78084 (=> (not res!394239) (not e!569544))))

(assert (=> start!78084 (= res!394239 (is-Lexer!1555 thiss!20117))))

(assert (=> start!78084 e!569544))

(assert (=> start!78084 true))

(assert (=> start!78084 e!569555))

(assert (=> start!78084 e!569551))

(declare-fun e!569556 () Bool)

(assert (=> start!78084 (and (inv!11884 separatorToken!297) e!569556)))

(declare-fun b!865642 () Bool)

(declare-fun res!394240 () Bool)

(assert (=> b!865642 (=> (not res!394240) (not e!569544))))

(assert (=> b!865642 (= res!394240 (isSeparator!1755 (rule!3178 separatorToken!297)))))

(declare-fun b!865654 () Bool)

(declare-fun e!569546 () Bool)

(assert (=> b!865654 (= e!569546 (forall!2222 lt!326648 lambda!25973))))

(declare-fun e!569542 () Bool)

(declare-fun tp!273723 () Bool)

(declare-fun b!865655 () Bool)

(assert (=> b!865655 (= e!569556 (and (inv!21 (value!56718 separatorToken!297)) e!569542 tp!273723))))

(declare-fun b!865656 () Bool)

(assert (=> b!865656 (= e!569553 e!569546)))

(declare-fun res!394234 () Bool)

(assert (=> b!865656 (=> res!394234 e!569546)))

(assert (=> b!865656 (= res!394234 (not (rulesProduceEachTokenIndividuallyList!445 thiss!20117 rules!2621 lt!326648)))))

(declare-fun separableTokensPredicate!75 (LexerInterface!1557 Token!3176 Token!3176 List!9366) Bool)

(assert (=> b!865656 (separableTokensPredicate!75 thiss!20117 (h!14752 lt!326649) (h!14752 (t!98725 lt!326649)) rules!2621)))

(declare-datatypes ((Unit!13874 0))(
  ( (Unit!13875) )
))
(declare-fun lt!326650 () Unit!13874)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!53 (LexerInterface!1557 Token!3176 Token!3176 List!9366) Unit!13874)

(assert (=> b!865656 (= lt!326650 (lemmaTokensOfDifferentKindsAreSeparable!53 thiss!20117 (h!14752 lt!326649) (h!14752 (t!98725 lt!326649)) rules!2621))))

(declare-fun tp!273717 () Bool)

(declare-fun b!865657 () Bool)

(assert (=> b!865657 (= e!569542 (and tp!273717 (inv!11881 (tag!2017 (rule!3178 separatorToken!297))) (inv!11885 (transformation!1755 (rule!3178 separatorToken!297))) e!569550))))

(declare-fun b!865658 () Bool)

(declare-fun res!394236 () Bool)

(assert (=> b!865658 (=> (not res!394236) (not e!569544))))

(declare-fun rulesProduceIndividualToken!621 (LexerInterface!1557 List!9366 Token!3176) Bool)

(assert (=> b!865658 (= res!394236 (rulesProduceIndividualToken!621 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!865659 () Bool)

(assert (=> b!865659 (= e!569544 (not e!569558))))

(declare-fun res!394245 () Bool)

(assert (=> b!865659 (=> res!394245 e!569558)))

(assert (=> b!865659 (= res!394245 (or (not (is-Cons!9351 lt!326649)) (not (is-Cons!9351 (t!98725 lt!326649)))))))

(assert (=> b!865659 (rulesProduceEachTokenIndividuallyList!445 thiss!20117 rules!2621 lt!326649)))

(assert (=> b!865659 (= lt!326649 (withSeparatorTokenList!85 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!326651 () Unit!13874)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!85 (LexerInterface!1557 List!9366 List!9367 Token!3176) Unit!13874)

(assert (=> b!865659 (= lt!326651 (withSeparatorTokenListPreservesRulesProduceTokens!85 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun b!865660 () Bool)

(declare-fun res!394235 () Bool)

(assert (=> b!865660 (=> res!394235 e!569553)))

(declare-fun head!1501 (List!9367) Token!3176)

(assert (=> b!865660 (= res!394235 (not (= (head!1501 l!5107) (h!14752 lt!326649))))))

(assert (= (and start!78084 res!394239) b!865649))

(assert (= (and b!865649 res!394243) b!865647))

(assert (= (and b!865647 res!394242) b!865653))

(assert (= (and b!865653 res!394233) b!865658))

(assert (= (and b!865658 res!394236) b!865642))

(assert (= (and b!865642 res!394240) b!865641))

(assert (= (and b!865641 res!394238) b!865640))

(assert (= (and b!865640 res!394241) b!865659))

(assert (= (and b!865659 (not res!394245)) b!865643))

(assert (= (and b!865643 (not res!394237)) b!865660))

(assert (= (and b!865660 (not res!394235)) b!865651))

(assert (= (and b!865651 (not res!394244)) b!865656))

(assert (= (and b!865656 (not res!394234)) b!865654))

(assert (= b!865652 b!865639))

(assert (= b!865644 b!865652))

(assert (= (and start!78084 (is-Cons!9350 rules!2621)) b!865644))

(assert (= b!865646 b!865650))

(assert (= b!865648 b!865646))

(assert (= b!865645 b!865648))

(assert (= (and start!78084 (is-Cons!9351 l!5107)) b!865645))

(assert (= b!865657 b!865638))

(assert (= b!865655 b!865657))

(assert (= start!78084 b!865655))

(declare-fun m!1112465 () Bool)

(assert (=> b!865641 m!1112465))

(declare-fun m!1112467 () Bool)

(assert (=> start!78084 m!1112467))

(declare-fun m!1112469 () Bool)

(assert (=> b!865647 m!1112469))

(declare-fun m!1112471 () Bool)

(assert (=> b!865652 m!1112471))

(declare-fun m!1112473 () Bool)

(assert (=> b!865652 m!1112473))

(declare-fun m!1112475 () Bool)

(assert (=> b!865646 m!1112475))

(declare-fun m!1112477 () Bool)

(assert (=> b!865646 m!1112477))

(declare-fun m!1112479 () Bool)

(assert (=> b!865656 m!1112479))

(declare-fun m!1112481 () Bool)

(assert (=> b!865656 m!1112481))

(declare-fun m!1112483 () Bool)

(assert (=> b!865656 m!1112483))

(declare-fun m!1112485 () Bool)

(assert (=> b!865653 m!1112485))

(declare-fun m!1112487 () Bool)

(assert (=> b!865655 m!1112487))

(declare-fun m!1112489 () Bool)

(assert (=> b!865660 m!1112489))

(declare-fun m!1112491 () Bool)

(assert (=> b!865648 m!1112491))

(declare-fun m!1112493 () Bool)

(assert (=> b!865649 m!1112493))

(declare-fun m!1112495 () Bool)

(assert (=> b!865658 m!1112495))

(declare-fun m!1112497 () Bool)

(assert (=> b!865654 m!1112497))

(declare-fun m!1112499 () Bool)

(assert (=> b!865657 m!1112499))

(declare-fun m!1112501 () Bool)

(assert (=> b!865657 m!1112501))

(declare-fun m!1112503 () Bool)

(assert (=> b!865643 m!1112503))

(declare-fun m!1112505 () Bool)

(assert (=> b!865643 m!1112505))

(declare-fun m!1112507 () Bool)

(assert (=> b!865645 m!1112507))

(declare-fun m!1112509 () Bool)

(assert (=> b!865640 m!1112509))

(declare-fun m!1112511 () Bool)

(assert (=> b!865659 m!1112511))

(declare-fun m!1112513 () Bool)

(assert (=> b!865659 m!1112513))

(declare-fun m!1112515 () Bool)

(assert (=> b!865659 m!1112515))

(push 1)

(assert (not b!865646))

(assert (not b!865660))

(assert b_and!77593)

(assert (not start!78084))

(assert (not b_next!26519))

(assert b_and!77585)

(assert (not b!865652))

(assert (not b_next!26517))

(assert (not b!865659))

(assert b_and!77589)

(assert b_and!77587)

(assert (not b!865653))

(assert (not b!865649))

(assert (not b!865655))

(assert (not b!865641))

(assert (not b!865640))

(assert (not b!865658))

(assert (not b!865644))

(assert (not b_next!26521))

(assert (not b!865643))

(assert (not b_next!26527))

(assert (not b!865654))

(assert (not b!865656))

(assert b_and!77595)

(assert (not b!865648))

(assert (not b!865657))

(assert (not b!865645))

(assert b_and!77591)

(assert (not b_next!26525))

(assert (not b_next!26523))

(assert (not b!865647))

(check-sat)

(pop 1)

(push 1)

(assert b_and!77593)

(assert (not b_next!26519))

(assert (not b_next!26521))

(assert b_and!77585)

(assert (not b_next!26517))

(assert (not b_next!26527))

(assert b_and!77595)

(assert b_and!77589)

(assert b_and!77587)

(assert (not b_next!26523))

(assert b_and!77591)

(assert (not b_next!26525))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!232854 () Bool)

(declare-fun d!271894 () Bool)

(assert (= bs!232854 (and d!271894 b!865641)))

(declare-fun lambda!25981 () Int)

(assert (=> bs!232854 (not (= lambda!25981 lambda!25973))))

(declare-fun b!865798 () Bool)

(declare-fun e!569664 () Bool)

(assert (=> b!865798 (= e!569664 true)))

(declare-fun b!865797 () Bool)

(declare-fun e!569663 () Bool)

(assert (=> b!865797 (= e!569663 e!569664)))

(declare-fun b!865796 () Bool)

(declare-fun e!569662 () Bool)

(assert (=> b!865796 (= e!569662 e!569663)))

(assert (=> d!271894 e!569662))

(assert (= b!865797 b!865798))

(assert (= b!865796 b!865797))

(assert (= (and d!271894 (is-Cons!9350 rules!2621)) b!865796))

(declare-fun order!6101 () Int)

(declare-fun order!6103 () Int)

(declare-fun dynLambda!4435 (Int Int) Int)

(declare-fun dynLambda!4436 (Int Int) Int)

(assert (=> b!865798 (< (dynLambda!4435 order!6101 (toValue!2824 (transformation!1755 (h!14751 rules!2621)))) (dynLambda!4436 order!6103 lambda!25981))))

(declare-fun order!6105 () Int)

(declare-fun dynLambda!4437 (Int Int) Int)

(assert (=> b!865798 (< (dynLambda!4437 order!6105 (toChars!2683 (transformation!1755 (h!14751 rules!2621)))) (dynLambda!4436 order!6103 lambda!25981))))

(assert (=> d!271894 true))

(declare-fun lt!326692 () Bool)

(assert (=> d!271894 (= lt!326692 (forall!2222 lt!326649 lambda!25981))))

(declare-fun e!569654 () Bool)

(assert (=> d!271894 (= lt!326692 e!569654)))

(declare-fun res!394319 () Bool)

(assert (=> d!271894 (=> res!394319 e!569654)))

(assert (=> d!271894 (= res!394319 (not (is-Cons!9351 lt!326649)))))

(assert (=> d!271894 (not (isEmpty!5552 rules!2621))))

(assert (=> d!271894 (= (rulesProduceEachTokenIndividuallyList!445 thiss!20117 rules!2621 lt!326649) lt!326692)))

(declare-fun b!865786 () Bool)

(declare-fun e!569655 () Bool)

(assert (=> b!865786 (= e!569654 e!569655)))

(declare-fun res!394318 () Bool)

(assert (=> b!865786 (=> (not res!394318) (not e!569655))))

(assert (=> b!865786 (= res!394318 (rulesProduceIndividualToken!621 thiss!20117 rules!2621 (h!14752 lt!326649)))))

(declare-fun b!865787 () Bool)

(assert (=> b!865787 (= e!569655 (rulesProduceEachTokenIndividuallyList!445 thiss!20117 rules!2621 (t!98725 lt!326649)))))

(assert (= (and d!271894 (not res!394319)) b!865786))

(assert (= (and b!865786 res!394318) b!865787))

(declare-fun m!1112629 () Bool)

(assert (=> d!271894 m!1112629))

(assert (=> d!271894 m!1112493))

(declare-fun m!1112631 () Bool)

(assert (=> b!865786 m!1112631))

(declare-fun m!1112633 () Bool)

(assert (=> b!865787 m!1112633))

(assert (=> b!865659 d!271894))

(declare-fun b!865821 () Bool)

(declare-fun e!569681 () List!9365)

(declare-fun lt!326714 () List!9367)

(declare-fun ++!2419 (List!9365 List!9365) List!9365)

(declare-fun list!3691 (BalanceConc!6214) List!9365)

(declare-fun charsOf!1014 (Token!3176) BalanceConc!6214)

(declare-fun printList!497 (LexerInterface!1557 List!9367) List!9365)

(assert (=> b!865821 (= e!569681 (++!2419 (list!3691 (charsOf!1014 (h!14752 lt!326714))) (printList!497 thiss!20117 (t!98725 lt!326714))))))

(declare-fun b!865822 () Bool)

(declare-fun res!394330 () Bool)

(declare-fun e!569679 () Bool)

(assert (=> b!865822 (=> (not res!394330) (not e!569679))))

(declare-fun e!569677 () Bool)

(assert (=> b!865822 (= res!394330 e!569677)))

(declare-fun res!394328 () Bool)

(assert (=> b!865822 (=> res!394328 e!569677)))

(assert (=> b!865822 (= res!394328 (not (is-Cons!9351 l!5107)))))

(declare-fun b!865823 () Bool)

(declare-fun e!569682 () Bool)

(declare-fun $colon$colon!110 (List!9367 Token!3176) List!9367)

(assert (=> b!865823 (= e!569682 (= (printList!497 thiss!20117 ($colon$colon!110 (withSeparatorTokenList!85 thiss!20117 (t!98725 l!5107) separatorToken!297) separatorToken!297)) e!569681))))

(declare-fun c!140112 () Bool)

(assert (=> b!865823 (= c!140112 (is-Cons!9351 lt!326714))))

(assert (=> b!865823 (= lt!326714 ($colon$colon!110 (withSeparatorTokenList!85 thiss!20117 (t!98725 l!5107) separatorToken!297) separatorToken!297))))

(declare-fun b!865824 () Bool)

(assert (=> b!865824 (= e!569681 Nil!9349)))

(declare-fun b!865825 () Bool)

(assert (=> b!865825 (= e!569679 e!569682)))

(declare-fun res!394331 () Bool)

(assert (=> b!865825 (=> res!394331 e!569682)))

(assert (=> b!865825 (= res!394331 (not (is-Cons!9351 l!5107)))))

(declare-fun e!569680 () List!9365)

(declare-fun b!865826 () Bool)

(assert (=> b!865826 (= e!569677 (= (printList!497 thiss!20117 ($colon$colon!110 ($colon$colon!110 (withSeparatorTokenList!85 thiss!20117 (t!98725 l!5107) separatorToken!297) separatorToken!297) (h!14752 l!5107))) e!569680))))

(declare-fun c!140114 () Bool)

(declare-fun lt!326709 () List!9367)

(assert (=> b!865826 (= c!140114 (is-Cons!9351 lt!326709))))

(assert (=> b!865826 (= lt!326709 ($colon$colon!110 ($colon$colon!110 (withSeparatorTokenList!85 thiss!20117 (t!98725 l!5107) separatorToken!297) separatorToken!297) (h!14752 l!5107)))))

(declare-fun d!271910 () Bool)

(declare-fun lt!326715 () List!9367)

(declare-fun printWithSeparatorTokenList!55 (LexerInterface!1557 List!9367 Token!3176) List!9365)

(assert (=> d!271910 (= (printList!497 thiss!20117 lt!326715) (printWithSeparatorTokenList!55 thiss!20117 l!5107 separatorToken!297))))

(declare-fun e!569678 () List!9367)

(assert (=> d!271910 (= lt!326715 e!569678)))

(declare-fun c!140113 () Bool)

(assert (=> d!271910 (= c!140113 (is-Cons!9351 l!5107))))

(assert (=> d!271910 e!569679))

(declare-fun res!394329 () Bool)

(assert (=> d!271910 (=> (not res!394329) (not e!569679))))

(assert (=> d!271910 (= res!394329 (isSeparator!1755 (rule!3178 separatorToken!297)))))

(assert (=> d!271910 (= (withSeparatorTokenList!85 thiss!20117 l!5107 separatorToken!297) lt!326715)))

(declare-fun b!865827 () Bool)

(assert (=> b!865827 (= e!569678 Nil!9351)))

(declare-fun b!865828 () Bool)

(assert (=> b!865828 (= e!569680 (++!2419 (list!3691 (charsOf!1014 (h!14752 lt!326709))) (printList!497 thiss!20117 (t!98725 lt!326709))))))

(declare-fun b!865829 () Bool)

(assert (=> b!865829 (= e!569678 ($colon$colon!110 ($colon$colon!110 (withSeparatorTokenList!85 thiss!20117 (t!98725 l!5107) separatorToken!297) separatorToken!297) (h!14752 l!5107)))))

(declare-fun lt!326712 () List!9365)

(assert (=> b!865829 (= lt!326712 (list!3691 (charsOf!1014 (h!14752 l!5107))))))

(declare-fun lt!326710 () List!9365)

(assert (=> b!865829 (= lt!326710 (list!3691 (charsOf!1014 separatorToken!297)))))

(declare-fun lt!326711 () List!9365)

(assert (=> b!865829 (= lt!326711 (printList!497 thiss!20117 (withSeparatorTokenList!85 thiss!20117 (t!98725 l!5107) separatorToken!297)))))

(declare-fun lt!326716 () Unit!13874)

(declare-fun lemmaConcatAssociativity!774 (List!9365 List!9365 List!9365) Unit!13874)

(assert (=> b!865829 (= lt!326716 (lemmaConcatAssociativity!774 lt!326712 lt!326710 lt!326711))))

(assert (=> b!865829 (= (++!2419 (++!2419 lt!326712 lt!326710) lt!326711) (++!2419 lt!326712 (++!2419 lt!326710 lt!326711)))))

(declare-fun lt!326713 () Unit!13874)

(assert (=> b!865829 (= lt!326713 lt!326716)))

(declare-fun b!865830 () Bool)

(assert (=> b!865830 (= e!569680 Nil!9349)))

(assert (= (and d!271910 res!394329) b!865822))

(assert (= (and b!865822 (not res!394328)) b!865826))

(assert (= (and b!865826 c!140114) b!865828))

(assert (= (and b!865826 (not c!140114)) b!865830))

(assert (= (and b!865822 res!394330) b!865825))

(assert (= (and b!865825 (not res!394331)) b!865823))

(assert (= (and b!865823 c!140112) b!865821))

(assert (= (and b!865823 (not c!140112)) b!865824))

(assert (= (and d!271910 c!140113) b!865829))

(assert (= (and d!271910 (not c!140113)) b!865827))

(declare-fun m!1112635 () Bool)

(assert (=> d!271910 m!1112635))

(declare-fun m!1112637 () Bool)

(assert (=> d!271910 m!1112637))

(declare-fun m!1112639 () Bool)

(assert (=> b!865826 m!1112639))

(assert (=> b!865826 m!1112639))

(declare-fun m!1112641 () Bool)

(assert (=> b!865826 m!1112641))

(assert (=> b!865826 m!1112641))

(declare-fun m!1112643 () Bool)

(assert (=> b!865826 m!1112643))

(assert (=> b!865826 m!1112643))

(declare-fun m!1112645 () Bool)

(assert (=> b!865826 m!1112645))

(declare-fun m!1112647 () Bool)

(assert (=> b!865828 m!1112647))

(assert (=> b!865828 m!1112647))

(declare-fun m!1112649 () Bool)

(assert (=> b!865828 m!1112649))

(declare-fun m!1112651 () Bool)

(assert (=> b!865828 m!1112651))

(assert (=> b!865828 m!1112649))

(assert (=> b!865828 m!1112651))

(declare-fun m!1112653 () Bool)

(assert (=> b!865828 m!1112653))

(declare-fun m!1112655 () Bool)

(assert (=> b!865829 m!1112655))

(declare-fun m!1112657 () Bool)

(assert (=> b!865829 m!1112657))

(declare-fun m!1112659 () Bool)

(assert (=> b!865829 m!1112659))

(declare-fun m!1112661 () Bool)

(assert (=> b!865829 m!1112661))

(declare-fun m!1112663 () Bool)

(assert (=> b!865829 m!1112663))

(assert (=> b!865829 m!1112659))

(declare-fun m!1112665 () Bool)

(assert (=> b!865829 m!1112665))

(assert (=> b!865829 m!1112639))

(assert (=> b!865829 m!1112665))

(declare-fun m!1112667 () Bool)

(assert (=> b!865829 m!1112667))

(assert (=> b!865829 m!1112639))

(assert (=> b!865829 m!1112641))

(assert (=> b!865829 m!1112641))

(assert (=> b!865829 m!1112643))

(assert (=> b!865829 m!1112655))

(assert (=> b!865829 m!1112639))

(declare-fun m!1112669 () Bool)

(assert (=> b!865829 m!1112669))

(declare-fun m!1112671 () Bool)

(assert (=> b!865829 m!1112671))

(assert (=> b!865829 m!1112671))

(declare-fun m!1112673 () Bool)

(assert (=> b!865829 m!1112673))

(assert (=> b!865823 m!1112639))

(assert (=> b!865823 m!1112639))

(assert (=> b!865823 m!1112641))

(assert (=> b!865823 m!1112641))

(declare-fun m!1112675 () Bool)

(assert (=> b!865823 m!1112675))

(declare-fun m!1112677 () Bool)

(assert (=> b!865821 m!1112677))

(assert (=> b!865821 m!1112677))

(declare-fun m!1112679 () Bool)

(assert (=> b!865821 m!1112679))

(declare-fun m!1112681 () Bool)

(assert (=> b!865821 m!1112681))

(assert (=> b!865821 m!1112679))

(assert (=> b!865821 m!1112681))

(declare-fun m!1112683 () Bool)

(assert (=> b!865821 m!1112683))

(assert (=> b!865659 d!271910))

(declare-fun d!271912 () Bool)

(assert (=> d!271912 (rulesProduceEachTokenIndividuallyList!445 thiss!20117 rules!2621 (withSeparatorTokenList!85 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!326719 () Unit!13874)

(declare-fun choose!5087 (LexerInterface!1557 List!9366 List!9367 Token!3176) Unit!13874)

(assert (=> d!271912 (= lt!326719 (choose!5087 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!271912 (not (isEmpty!5552 rules!2621))))

(assert (=> d!271912 (= (withSeparatorTokenListPreservesRulesProduceTokens!85 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!326719)))

(declare-fun bs!232855 () Bool)

(assert (= bs!232855 d!271912))

(assert (=> bs!232855 m!1112513))

(assert (=> bs!232855 m!1112513))

(declare-fun m!1112685 () Bool)

(assert (=> bs!232855 m!1112685))

(declare-fun m!1112687 () Bool)

(assert (=> bs!232855 m!1112687))

(assert (=> bs!232855 m!1112493))

(assert (=> b!865659 d!271912))

(declare-fun d!271914 () Bool)

(assert (=> d!271914 (= (isEmpty!5552 rules!2621) (is-Nil!9350 rules!2621))))

(assert (=> b!865649 d!271914))

(declare-fun d!271916 () Bool)

(assert (=> d!271916 (= (head!1501 l!5107) (h!14752 l!5107))))

(assert (=> b!865660 d!271916))

(declare-fun d!271918 () Bool)

(declare-fun res!394336 () Bool)

(declare-fun e!569687 () Bool)

(assert (=> d!271918 (=> res!394336 e!569687)))

(assert (=> d!271918 (= res!394336 (not (is-Cons!9350 rules!2621)))))

(assert (=> d!271918 (= (sepAndNonSepRulesDisjointChars!555 rules!2621 rules!2621) e!569687)))

(declare-fun b!865835 () Bool)

(declare-fun e!569688 () Bool)

(assert (=> b!865835 (= e!569687 e!569688)))

(declare-fun res!394337 () Bool)

(assert (=> b!865835 (=> (not res!394337) (not e!569688))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!262 (Rule!3310 List!9366) Bool)

(assert (=> b!865835 (= res!394337 (ruleDisjointCharsFromAllFromOtherType!262 (h!14751 rules!2621) rules!2621))))

(declare-fun b!865836 () Bool)

(assert (=> b!865836 (= e!569688 (sepAndNonSepRulesDisjointChars!555 rules!2621 (t!98724 rules!2621)))))

(assert (= (and d!271918 (not res!394336)) b!865835))

(assert (= (and b!865835 res!394337) b!865836))

(declare-fun m!1112689 () Bool)

(assert (=> b!865835 m!1112689))

(declare-fun m!1112691 () Bool)

(assert (=> b!865836 m!1112691))

(assert (=> b!865640 d!271918))

(declare-fun d!271920 () Bool)

(declare-fun res!394342 () Bool)

(declare-fun e!569693 () Bool)

(assert (=> d!271920 (=> res!394342 e!569693)))

(assert (=> d!271920 (= res!394342 (is-Nil!9351 l!5107))))

(assert (=> d!271920 (= (forall!2222 l!5107 lambda!25973) e!569693)))

(declare-fun b!865841 () Bool)

(declare-fun e!569694 () Bool)

(assert (=> b!865841 (= e!569693 e!569694)))

(declare-fun res!394343 () Bool)

(assert (=> b!865841 (=> (not res!394343) (not e!569694))))

(declare-fun dynLambda!4438 (Int Token!3176) Bool)

(assert (=> b!865841 (= res!394343 (dynLambda!4438 lambda!25973 (h!14752 l!5107)))))

(declare-fun b!865842 () Bool)

(assert (=> b!865842 (= e!569694 (forall!2222 (t!98725 l!5107) lambda!25973))))

(assert (= (and d!271920 (not res!394342)) b!865841))

(assert (= (and b!865841 res!394343) b!865842))

(declare-fun b_lambda!29431 () Bool)

(assert (=> (not b_lambda!29431) (not b!865841)))

(declare-fun m!1112693 () Bool)

(assert (=> b!865841 m!1112693))

(declare-fun m!1112695 () Bool)

(assert (=> b!865842 m!1112695))

(assert (=> b!865641 d!271920))

(declare-fun d!271922 () Bool)

(assert (=> d!271922 (= (inv!11881 (tag!2017 (h!14751 rules!2621))) (= (mod (str.len (value!56717 (tag!2017 (h!14751 rules!2621)))) 2) 0))))

(assert (=> b!865652 d!271922))

(declare-fun d!271924 () Bool)

(declare-fun res!394346 () Bool)

(declare-fun e!569697 () Bool)

(assert (=> d!271924 (=> (not res!394346) (not e!569697))))

(declare-fun semiInverseModEq!695 (Int Int) Bool)

(assert (=> d!271924 (= res!394346 (semiInverseModEq!695 (toChars!2683 (transformation!1755 (h!14751 rules!2621))) (toValue!2824 (transformation!1755 (h!14751 rules!2621)))))))

(assert (=> d!271924 (= (inv!11885 (transformation!1755 (h!14751 rules!2621))) e!569697)))

(declare-fun b!865845 () Bool)

(declare-fun equivClasses!662 (Int Int) Bool)

(assert (=> b!865845 (= e!569697 (equivClasses!662 (toChars!2683 (transformation!1755 (h!14751 rules!2621))) (toValue!2824 (transformation!1755 (h!14751 rules!2621)))))))

(assert (= (and d!271924 res!394346) b!865845))

(declare-fun m!1112697 () Bool)

(assert (=> d!271924 m!1112697))

(declare-fun m!1112699 () Bool)

(assert (=> b!865845 m!1112699))

(assert (=> b!865652 d!271924))

(declare-fun bs!232856 () Bool)

(declare-fun d!271926 () Bool)

(assert (= bs!232856 (and d!271926 b!865641)))

(declare-fun lambda!25982 () Int)

(assert (=> bs!232856 (not (= lambda!25982 lambda!25973))))

(declare-fun bs!232857 () Bool)

(assert (= bs!232857 (and d!271926 d!271894)))

(assert (=> bs!232857 (= lambda!25982 lambda!25981)))

(declare-fun b!865850 () Bool)

(declare-fun e!569702 () Bool)

(assert (=> b!865850 (= e!569702 true)))

(declare-fun b!865849 () Bool)

(declare-fun e!569701 () Bool)

(assert (=> b!865849 (= e!569701 e!569702)))

(declare-fun b!865848 () Bool)

(declare-fun e!569700 () Bool)

(assert (=> b!865848 (= e!569700 e!569701)))

(assert (=> d!271926 e!569700))

(assert (= b!865849 b!865850))

(assert (= b!865848 b!865849))

(assert (= (and d!271926 (is-Cons!9350 rules!2621)) b!865848))

(assert (=> b!865850 (< (dynLambda!4435 order!6101 (toValue!2824 (transformation!1755 (h!14751 rules!2621)))) (dynLambda!4436 order!6103 lambda!25982))))

(assert (=> b!865850 (< (dynLambda!4437 order!6105 (toChars!2683 (transformation!1755 (h!14751 rules!2621)))) (dynLambda!4436 order!6103 lambda!25982))))

(assert (=> d!271926 true))

(declare-fun lt!326720 () Bool)

(assert (=> d!271926 (= lt!326720 (forall!2222 l!5107 lambda!25982))))

(declare-fun e!569698 () Bool)

(assert (=> d!271926 (= lt!326720 e!569698)))

(declare-fun res!394348 () Bool)

(assert (=> d!271926 (=> res!394348 e!569698)))

(assert (=> d!271926 (= res!394348 (not (is-Cons!9351 l!5107)))))

(assert (=> d!271926 (not (isEmpty!5552 rules!2621))))

(assert (=> d!271926 (= (rulesProduceEachTokenIndividuallyList!445 thiss!20117 rules!2621 l!5107) lt!326720)))

(declare-fun b!865846 () Bool)

(declare-fun e!569699 () Bool)

(assert (=> b!865846 (= e!569698 e!569699)))

(declare-fun res!394347 () Bool)

(assert (=> b!865846 (=> (not res!394347) (not e!569699))))

(assert (=> b!865846 (= res!394347 (rulesProduceIndividualToken!621 thiss!20117 rules!2621 (h!14752 l!5107)))))

(declare-fun b!865847 () Bool)

(assert (=> b!865847 (= e!569699 (rulesProduceEachTokenIndividuallyList!445 thiss!20117 rules!2621 (t!98725 l!5107)))))

(assert (= (and d!271926 (not res!394348)) b!865846))

(assert (= (and b!865846 res!394347) b!865847))

(declare-fun m!1112701 () Bool)

(assert (=> d!271926 m!1112701))

(assert (=> d!271926 m!1112493))

(declare-fun m!1112703 () Bool)

(assert (=> b!865846 m!1112703))

(declare-fun m!1112705 () Bool)

(assert (=> b!865847 m!1112705))

(assert (=> b!865653 d!271926))

(declare-fun b!865851 () Bool)

(declare-fun e!569707 () List!9365)

(declare-fun lt!326726 () List!9367)

(assert (=> b!865851 (= e!569707 (++!2419 (list!3691 (charsOf!1014 (h!14752 lt!326726))) (printList!497 thiss!20117 (t!98725 lt!326726))))))

(declare-fun b!865852 () Bool)

(declare-fun res!394351 () Bool)

(declare-fun e!569705 () Bool)

(assert (=> b!865852 (=> (not res!394351) (not e!569705))))

(declare-fun e!569703 () Bool)

(assert (=> b!865852 (= res!394351 e!569703)))

(declare-fun res!394349 () Bool)

(assert (=> b!865852 (=> res!394349 e!569703)))

(assert (=> b!865852 (= res!394349 (not (is-Cons!9351 lt!326648)))))

(declare-fun e!569708 () Bool)

(declare-fun b!865853 () Bool)

(assert (=> b!865853 (= e!569708 (= (printList!497 thiss!20117 ($colon$colon!110 (withSeparatorTokenList!85 thiss!20117 (t!98725 lt!326648) separatorToken!297) separatorToken!297)) e!569707))))

(declare-fun c!140115 () Bool)

(assert (=> b!865853 (= c!140115 (is-Cons!9351 lt!326726))))

(assert (=> b!865853 (= lt!326726 ($colon$colon!110 (withSeparatorTokenList!85 thiss!20117 (t!98725 lt!326648) separatorToken!297) separatorToken!297))))

(declare-fun b!865854 () Bool)

(assert (=> b!865854 (= e!569707 Nil!9349)))

(declare-fun b!865855 () Bool)

(assert (=> b!865855 (= e!569705 e!569708)))

(declare-fun res!394352 () Bool)

(assert (=> b!865855 (=> res!394352 e!569708)))

(assert (=> b!865855 (= res!394352 (not (is-Cons!9351 lt!326648)))))

(declare-fun e!569706 () List!9365)

(declare-fun b!865856 () Bool)

(assert (=> b!865856 (= e!569703 (= (printList!497 thiss!20117 ($colon$colon!110 ($colon$colon!110 (withSeparatorTokenList!85 thiss!20117 (t!98725 lt!326648) separatorToken!297) separatorToken!297) (h!14752 lt!326648))) e!569706))))

(declare-fun c!140117 () Bool)

(declare-fun lt!326721 () List!9367)

(assert (=> b!865856 (= c!140117 (is-Cons!9351 lt!326721))))

(assert (=> b!865856 (= lt!326721 ($colon$colon!110 ($colon$colon!110 (withSeparatorTokenList!85 thiss!20117 (t!98725 lt!326648) separatorToken!297) separatorToken!297) (h!14752 lt!326648)))))

(declare-fun d!271928 () Bool)

(declare-fun lt!326727 () List!9367)

(assert (=> d!271928 (= (printList!497 thiss!20117 lt!326727) (printWithSeparatorTokenList!55 thiss!20117 lt!326648 separatorToken!297))))

(declare-fun e!569704 () List!9367)

(assert (=> d!271928 (= lt!326727 e!569704)))

(declare-fun c!140116 () Bool)

(assert (=> d!271928 (= c!140116 (is-Cons!9351 lt!326648))))

(assert (=> d!271928 e!569705))

(declare-fun res!394350 () Bool)

(assert (=> d!271928 (=> (not res!394350) (not e!569705))))

(assert (=> d!271928 (= res!394350 (isSeparator!1755 (rule!3178 separatorToken!297)))))

(assert (=> d!271928 (= (withSeparatorTokenList!85 thiss!20117 lt!326648 separatorToken!297) lt!326727)))

(declare-fun b!865857 () Bool)

(assert (=> b!865857 (= e!569704 Nil!9351)))

(declare-fun b!865858 () Bool)

(assert (=> b!865858 (= e!569706 (++!2419 (list!3691 (charsOf!1014 (h!14752 lt!326721))) (printList!497 thiss!20117 (t!98725 lt!326721))))))

(declare-fun b!865859 () Bool)

(assert (=> b!865859 (= e!569704 ($colon$colon!110 ($colon$colon!110 (withSeparatorTokenList!85 thiss!20117 (t!98725 lt!326648) separatorToken!297) separatorToken!297) (h!14752 lt!326648)))))

(declare-fun lt!326724 () List!9365)

(assert (=> b!865859 (= lt!326724 (list!3691 (charsOf!1014 (h!14752 lt!326648))))))

(declare-fun lt!326722 () List!9365)

(assert (=> b!865859 (= lt!326722 (list!3691 (charsOf!1014 separatorToken!297)))))

(declare-fun lt!326723 () List!9365)

(assert (=> b!865859 (= lt!326723 (printList!497 thiss!20117 (withSeparatorTokenList!85 thiss!20117 (t!98725 lt!326648) separatorToken!297)))))

(declare-fun lt!326728 () Unit!13874)

(assert (=> b!865859 (= lt!326728 (lemmaConcatAssociativity!774 lt!326724 lt!326722 lt!326723))))

(assert (=> b!865859 (= (++!2419 (++!2419 lt!326724 lt!326722) lt!326723) (++!2419 lt!326724 (++!2419 lt!326722 lt!326723)))))

(declare-fun lt!326725 () Unit!13874)

(assert (=> b!865859 (= lt!326725 lt!326728)))

(declare-fun b!865860 () Bool)

(assert (=> b!865860 (= e!569706 Nil!9349)))

(assert (= (and d!271928 res!394350) b!865852))

(assert (= (and b!865852 (not res!394349)) b!865856))

(assert (= (and b!865856 c!140117) b!865858))

(assert (= (and b!865856 (not c!140117)) b!865860))

(assert (= (and b!865852 res!394351) b!865855))

(assert (= (and b!865855 (not res!394352)) b!865853))

(assert (= (and b!865853 c!140115) b!865851))

(assert (= (and b!865853 (not c!140115)) b!865854))

(assert (= (and d!271928 c!140116) b!865859))

(assert (= (and d!271928 (not c!140116)) b!865857))

(declare-fun m!1112707 () Bool)

(assert (=> d!271928 m!1112707))

(declare-fun m!1112709 () Bool)

(assert (=> d!271928 m!1112709))

(declare-fun m!1112711 () Bool)

(assert (=> b!865856 m!1112711))

(assert (=> b!865856 m!1112711))

(declare-fun m!1112713 () Bool)

(assert (=> b!865856 m!1112713))

(assert (=> b!865856 m!1112713))

(declare-fun m!1112715 () Bool)

(assert (=> b!865856 m!1112715))

(assert (=> b!865856 m!1112715))

(declare-fun m!1112717 () Bool)

(assert (=> b!865856 m!1112717))

(declare-fun m!1112719 () Bool)

(assert (=> b!865858 m!1112719))

(assert (=> b!865858 m!1112719))

(declare-fun m!1112721 () Bool)

(assert (=> b!865858 m!1112721))

(declare-fun m!1112723 () Bool)

(assert (=> b!865858 m!1112723))

(assert (=> b!865858 m!1112721))

(assert (=> b!865858 m!1112723))

(declare-fun m!1112725 () Bool)

(assert (=> b!865858 m!1112725))

(declare-fun m!1112727 () Bool)

(assert (=> b!865859 m!1112727))

(declare-fun m!1112729 () Bool)

(assert (=> b!865859 m!1112729))

(declare-fun m!1112731 () Bool)

(assert (=> b!865859 m!1112731))

(declare-fun m!1112733 () Bool)

(assert (=> b!865859 m!1112733))

(declare-fun m!1112735 () Bool)

(assert (=> b!865859 m!1112735))

(assert (=> b!865859 m!1112731))

(assert (=> b!865859 m!1112665))

(assert (=> b!865859 m!1112711))

(assert (=> b!865859 m!1112665))

(assert (=> b!865859 m!1112667))

(assert (=> b!865859 m!1112711))

(assert (=> b!865859 m!1112713))

(assert (=> b!865859 m!1112713))

(assert (=> b!865859 m!1112715))

(assert (=> b!865859 m!1112727))

(assert (=> b!865859 m!1112711))

(declare-fun m!1112737 () Bool)

(assert (=> b!865859 m!1112737))

(declare-fun m!1112739 () Bool)

(assert (=> b!865859 m!1112739))

(assert (=> b!865859 m!1112739))

(declare-fun m!1112741 () Bool)

(assert (=> b!865859 m!1112741))

(assert (=> b!865853 m!1112711))

(assert (=> b!865853 m!1112711))

(assert (=> b!865853 m!1112713))

(assert (=> b!865853 m!1112713))

(declare-fun m!1112743 () Bool)

(assert (=> b!865853 m!1112743))

(declare-fun m!1112745 () Bool)

(assert (=> b!865851 m!1112745))

(assert (=> b!865851 m!1112745))

(declare-fun m!1112747 () Bool)

(assert (=> b!865851 m!1112747))

(declare-fun m!1112749 () Bool)

(assert (=> b!865851 m!1112749))

(assert (=> b!865851 m!1112747))

(assert (=> b!865851 m!1112749))

(declare-fun m!1112751 () Bool)

(assert (=> b!865851 m!1112751))

(assert (=> b!865643 d!271928))

(declare-fun d!271930 () Bool)

(assert (=> d!271930 (= (tail!1063 l!5107) (t!98725 l!5107))))

(assert (=> b!865643 d!271930))

(declare-fun d!271932 () Bool)

(declare-fun res!394353 () Bool)

(declare-fun e!569709 () Bool)

(assert (=> d!271932 (=> res!394353 e!569709)))

(assert (=> d!271932 (= res!394353 (is-Nil!9351 lt!326648))))

(assert (=> d!271932 (= (forall!2222 lt!326648 lambda!25973) e!569709)))

(declare-fun b!865861 () Bool)

(declare-fun e!569710 () Bool)

(assert (=> b!865861 (= e!569709 e!569710)))

(declare-fun res!394354 () Bool)

(assert (=> b!865861 (=> (not res!394354) (not e!569710))))

(assert (=> b!865861 (= res!394354 (dynLambda!4438 lambda!25973 (h!14752 lt!326648)))))

(declare-fun b!865862 () Bool)

(assert (=> b!865862 (= e!569710 (forall!2222 (t!98725 lt!326648) lambda!25973))))

(assert (= (and d!271932 (not res!394353)) b!865861))

(assert (= (and b!865861 res!394354) b!865862))

(declare-fun b_lambda!29433 () Bool)

(assert (=> (not b_lambda!29433) (not b!865861)))

(declare-fun m!1112753 () Bool)

(assert (=> b!865861 m!1112753))

(declare-fun m!1112755 () Bool)

(assert (=> b!865862 m!1112755))

(assert (=> b!865654 d!271932))

(declare-fun b!865873 () Bool)

(declare-fun e!569718 () Bool)

(declare-fun inv!16 (TokenValue!1821) Bool)

(assert (=> b!865873 (= e!569718 (inv!16 (value!56718 separatorToken!297)))))

(declare-fun b!865874 () Bool)

(declare-fun e!569719 () Bool)

(assert (=> b!865874 (= e!569718 e!569719)))

(declare-fun c!140123 () Bool)

(assert (=> b!865874 (= c!140123 (is-IntegerValue!5464 (value!56718 separatorToken!297)))))

(declare-fun b!865875 () Bool)

(declare-fun res!394357 () Bool)

(declare-fun e!569717 () Bool)

(assert (=> b!865875 (=> res!394357 e!569717)))

(assert (=> b!865875 (= res!394357 (not (is-IntegerValue!5465 (value!56718 separatorToken!297))))))

(assert (=> b!865875 (= e!569719 e!569717)))

(declare-fun b!865876 () Bool)

(declare-fun inv!15 (TokenValue!1821) Bool)

(assert (=> b!865876 (= e!569717 (inv!15 (value!56718 separatorToken!297)))))

(declare-fun b!865877 () Bool)

(declare-fun inv!17 (TokenValue!1821) Bool)

(assert (=> b!865877 (= e!569719 (inv!17 (value!56718 separatorToken!297)))))

(declare-fun d!271934 () Bool)

(declare-fun c!140122 () Bool)

(assert (=> d!271934 (= c!140122 (is-IntegerValue!5463 (value!56718 separatorToken!297)))))

(assert (=> d!271934 (= (inv!21 (value!56718 separatorToken!297)) e!569718)))

(assert (= (and d!271934 c!140122) b!865873))

(assert (= (and d!271934 (not c!140122)) b!865874))

(assert (= (and b!865874 c!140123) b!865877))

(assert (= (and b!865874 (not c!140123)) b!865875))

(assert (= (and b!865875 (not res!394357)) b!865876))

(declare-fun m!1112757 () Bool)

(assert (=> b!865873 m!1112757))

(declare-fun m!1112759 () Bool)

(assert (=> b!865876 m!1112759))

(declare-fun m!1112761 () Bool)

(assert (=> b!865877 m!1112761))

(assert (=> b!865655 d!271934))

(declare-fun d!271936 () Bool)

(declare-fun res!394362 () Bool)

(declare-fun e!569722 () Bool)

(assert (=> d!271936 (=> (not res!394362) (not e!569722))))

(declare-fun isEmpty!5554 (List!9365) Bool)

(assert (=> d!271936 (= res!394362 (not (isEmpty!5554 (originalCharacters!2311 (h!14752 l!5107)))))))

(assert (=> d!271936 (= (inv!11884 (h!14752 l!5107)) e!569722)))

(declare-fun b!865882 () Bool)

(declare-fun res!394363 () Bool)

(assert (=> b!865882 (=> (not res!394363) (not e!569722))))

(declare-fun dynLambda!4439 (Int TokenValue!1821) BalanceConc!6214)

(assert (=> b!865882 (= res!394363 (= (originalCharacters!2311 (h!14752 l!5107)) (list!3691 (dynLambda!4439 (toChars!2683 (transformation!1755 (rule!3178 (h!14752 l!5107)))) (value!56718 (h!14752 l!5107))))))))

(declare-fun b!865883 () Bool)

(declare-fun size!7796 (List!9365) Int)

(assert (=> b!865883 (= e!569722 (= (size!7794 (h!14752 l!5107)) (size!7796 (originalCharacters!2311 (h!14752 l!5107)))))))

(assert (= (and d!271936 res!394362) b!865882))

(assert (= (and b!865882 res!394363) b!865883))

(declare-fun b_lambda!29435 () Bool)

(assert (=> (not b_lambda!29435) (not b!865882)))

(declare-fun t!98735 () Bool)

(declare-fun tb!62573 () Bool)

(assert (=> (and b!865639 (= (toChars!2683 (transformation!1755 (h!14751 rules!2621))) (toChars!2683 (transformation!1755 (rule!3178 (h!14752 l!5107))))) t!98735) tb!62573))

(declare-fun b!865888 () Bool)

(declare-fun e!569725 () Bool)

(declare-fun tp!273771 () Bool)

(declare-fun inv!11888 (Conc!3100) Bool)

(assert (=> b!865888 (= e!569725 (and (inv!11888 (c!140088 (dynLambda!4439 (toChars!2683 (transformation!1755 (rule!3178 (h!14752 l!5107)))) (value!56718 (h!14752 l!5107))))) tp!273771))))

(declare-fun result!72326 () Bool)

(declare-fun inv!11889 (BalanceConc!6214) Bool)

(assert (=> tb!62573 (= result!72326 (and (inv!11889 (dynLambda!4439 (toChars!2683 (transformation!1755 (rule!3178 (h!14752 l!5107)))) (value!56718 (h!14752 l!5107)))) e!569725))))

(assert (= tb!62573 b!865888))

(declare-fun m!1112763 () Bool)

(assert (=> b!865888 m!1112763))

(declare-fun m!1112765 () Bool)

(assert (=> tb!62573 m!1112765))

(assert (=> b!865882 t!98735))

(declare-fun b_and!77609 () Bool)

(assert (= b_and!77587 (and (=> t!98735 result!72326) b_and!77609)))

(declare-fun t!98737 () Bool)

(declare-fun tb!62575 () Bool)

(assert (=> (and b!865650 (= (toChars!2683 (transformation!1755 (rule!3178 (h!14752 l!5107)))) (toChars!2683 (transformation!1755 (rule!3178 (h!14752 l!5107))))) t!98737) tb!62575))

(declare-fun result!72330 () Bool)

(assert (= result!72330 result!72326))

(assert (=> b!865882 t!98737))

(declare-fun b_and!77611 () Bool)

(assert (= b_and!77591 (and (=> t!98737 result!72330) b_and!77611)))

(declare-fun tb!62577 () Bool)

(declare-fun t!98739 () Bool)

(assert (=> (and b!865638 (= (toChars!2683 (transformation!1755 (rule!3178 separatorToken!297))) (toChars!2683 (transformation!1755 (rule!3178 (h!14752 l!5107))))) t!98739) tb!62577))

(declare-fun result!72332 () Bool)

(assert (= result!72332 result!72326))

(assert (=> b!865882 t!98739))

(declare-fun b_and!77613 () Bool)

(assert (= b_and!77595 (and (=> t!98739 result!72332) b_and!77613)))

(declare-fun m!1112767 () Bool)

(assert (=> d!271936 m!1112767))

(declare-fun m!1112769 () Bool)

(assert (=> b!865882 m!1112769))

(assert (=> b!865882 m!1112769))

(declare-fun m!1112771 () Bool)

(assert (=> b!865882 m!1112771))

(declare-fun m!1112773 () Bool)

(assert (=> b!865883 m!1112773))

(assert (=> b!865645 d!271936))

(declare-fun d!271938 () Bool)

(declare-fun res!394364 () Bool)

(declare-fun e!569726 () Bool)

(assert (=> d!271938 (=> (not res!394364) (not e!569726))))

(assert (=> d!271938 (= res!394364 (not (isEmpty!5554 (originalCharacters!2311 separatorToken!297))))))

(assert (=> d!271938 (= (inv!11884 separatorToken!297) e!569726)))

(declare-fun b!865889 () Bool)

(declare-fun res!394365 () Bool)

(assert (=> b!865889 (=> (not res!394365) (not e!569726))))

(assert (=> b!865889 (= res!394365 (= (originalCharacters!2311 separatorToken!297) (list!3691 (dynLambda!4439 (toChars!2683 (transformation!1755 (rule!3178 separatorToken!297))) (value!56718 separatorToken!297)))))))

(declare-fun b!865890 () Bool)

(assert (=> b!865890 (= e!569726 (= (size!7794 separatorToken!297) (size!7796 (originalCharacters!2311 separatorToken!297))))))

(assert (= (and d!271938 res!394364) b!865889))

(assert (= (and b!865889 res!394365) b!865890))

(declare-fun b_lambda!29437 () Bool)

(assert (=> (not b_lambda!29437) (not b!865889)))

(declare-fun t!98741 () Bool)

(declare-fun tb!62579 () Bool)

(assert (=> (and b!865639 (= (toChars!2683 (transformation!1755 (h!14751 rules!2621))) (toChars!2683 (transformation!1755 (rule!3178 separatorToken!297)))) t!98741) tb!62579))

(declare-fun b!865891 () Bool)

(declare-fun e!569727 () Bool)

(declare-fun tp!273772 () Bool)

(assert (=> b!865891 (= e!569727 (and (inv!11888 (c!140088 (dynLambda!4439 (toChars!2683 (transformation!1755 (rule!3178 separatorToken!297))) (value!56718 separatorToken!297)))) tp!273772))))

(declare-fun result!72334 () Bool)

(assert (=> tb!62579 (= result!72334 (and (inv!11889 (dynLambda!4439 (toChars!2683 (transformation!1755 (rule!3178 separatorToken!297))) (value!56718 separatorToken!297))) e!569727))))

(assert (= tb!62579 b!865891))

(declare-fun m!1112775 () Bool)

(assert (=> b!865891 m!1112775))

(declare-fun m!1112777 () Bool)

(assert (=> tb!62579 m!1112777))

(assert (=> b!865889 t!98741))

(declare-fun b_and!77615 () Bool)

(assert (= b_and!77609 (and (=> t!98741 result!72334) b_and!77615)))

(declare-fun t!98743 () Bool)

(declare-fun tb!62581 () Bool)

(assert (=> (and b!865650 (= (toChars!2683 (transformation!1755 (rule!3178 (h!14752 l!5107)))) (toChars!2683 (transformation!1755 (rule!3178 separatorToken!297)))) t!98743) tb!62581))

(declare-fun result!72336 () Bool)

(assert (= result!72336 result!72334))

(assert (=> b!865889 t!98743))

(declare-fun b_and!77617 () Bool)

(assert (= b_and!77611 (and (=> t!98743 result!72336) b_and!77617)))

(declare-fun t!98745 () Bool)

(declare-fun tb!62583 () Bool)

(assert (=> (and b!865638 (= (toChars!2683 (transformation!1755 (rule!3178 separatorToken!297))) (toChars!2683 (transformation!1755 (rule!3178 separatorToken!297)))) t!98745) tb!62583))

(declare-fun result!72338 () Bool)

(assert (= result!72338 result!72334))

(assert (=> b!865889 t!98745))

(declare-fun b_and!77619 () Bool)

(assert (= b_and!77613 (and (=> t!98745 result!72338) b_and!77619)))

(declare-fun m!1112779 () Bool)

(assert (=> d!271938 m!1112779))

(declare-fun m!1112781 () Bool)

(assert (=> b!865889 m!1112781))

(assert (=> b!865889 m!1112781))

(declare-fun m!1112783 () Bool)

(assert (=> b!865889 m!1112783))

(declare-fun m!1112785 () Bool)

(assert (=> b!865890 m!1112785))

(assert (=> start!78084 d!271938))

(declare-fun bs!232858 () Bool)

(declare-fun d!271940 () Bool)

(assert (= bs!232858 (and d!271940 b!865641)))

(declare-fun lambda!25983 () Int)

(assert (=> bs!232858 (not (= lambda!25983 lambda!25973))))

(declare-fun bs!232859 () Bool)

(assert (= bs!232859 (and d!271940 d!271894)))

(assert (=> bs!232859 (= lambda!25983 lambda!25981)))

(declare-fun bs!232860 () Bool)

(assert (= bs!232860 (and d!271940 d!271926)))

(assert (=> bs!232860 (= lambda!25983 lambda!25982)))

(declare-fun b!865896 () Bool)

(declare-fun e!569732 () Bool)

(assert (=> b!865896 (= e!569732 true)))

(declare-fun b!865895 () Bool)

(declare-fun e!569731 () Bool)

(assert (=> b!865895 (= e!569731 e!569732)))

(declare-fun b!865894 () Bool)

(declare-fun e!569730 () Bool)

(assert (=> b!865894 (= e!569730 e!569731)))

(assert (=> d!271940 e!569730))

(assert (= b!865895 b!865896))

(assert (= b!865894 b!865895))

(assert (= (and d!271940 (is-Cons!9350 rules!2621)) b!865894))

(assert (=> b!865896 (< (dynLambda!4435 order!6101 (toValue!2824 (transformation!1755 (h!14751 rules!2621)))) (dynLambda!4436 order!6103 lambda!25983))))

(assert (=> b!865896 (< (dynLambda!4437 order!6105 (toChars!2683 (transformation!1755 (h!14751 rules!2621)))) (dynLambda!4436 order!6103 lambda!25983))))

(assert (=> d!271940 true))

(declare-fun lt!326729 () Bool)

(assert (=> d!271940 (= lt!326729 (forall!2222 lt!326648 lambda!25983))))

(declare-fun e!569728 () Bool)

(assert (=> d!271940 (= lt!326729 e!569728)))

(declare-fun res!394367 () Bool)

(assert (=> d!271940 (=> res!394367 e!569728)))

(assert (=> d!271940 (= res!394367 (not (is-Cons!9351 lt!326648)))))

(assert (=> d!271940 (not (isEmpty!5552 rules!2621))))

(assert (=> d!271940 (= (rulesProduceEachTokenIndividuallyList!445 thiss!20117 rules!2621 lt!326648) lt!326729)))

(declare-fun b!865892 () Bool)

(declare-fun e!569729 () Bool)

(assert (=> b!865892 (= e!569728 e!569729)))

(declare-fun res!394366 () Bool)

(assert (=> b!865892 (=> (not res!394366) (not e!569729))))

(assert (=> b!865892 (= res!394366 (rulesProduceIndividualToken!621 thiss!20117 rules!2621 (h!14752 lt!326648)))))

(declare-fun b!865893 () Bool)

(assert (=> b!865893 (= e!569729 (rulesProduceEachTokenIndividuallyList!445 thiss!20117 rules!2621 (t!98725 lt!326648)))))

(assert (= (and d!271940 (not res!394367)) b!865892))

(assert (= (and b!865892 res!394366) b!865893))

(declare-fun m!1112787 () Bool)

(assert (=> d!271940 m!1112787))

(assert (=> d!271940 m!1112493))

(declare-fun m!1112789 () Bool)

(assert (=> b!865892 m!1112789))

(declare-fun m!1112791 () Bool)

(assert (=> b!865893 m!1112791))

(assert (=> b!865656 d!271940))

(declare-fun d!271942 () Bool)

(declare-fun prefixMatchZipperSequence!46 (Regex!2188 BalanceConc!6214) Bool)

(declare-fun rulesRegex!31 (LexerInterface!1557 List!9366) Regex!2188)

(declare-fun ++!2420 (BalanceConc!6214 BalanceConc!6214) BalanceConc!6214)

(declare-fun singletonSeq!572 (C!4946) BalanceConc!6214)

(declare-fun apply!1964 (BalanceConc!6214 Int) C!4946)

(assert (=> d!271942 (= (separableTokensPredicate!75 thiss!20117 (h!14752 lt!326649) (h!14752 (t!98725 lt!326649)) rules!2621) (not (prefixMatchZipperSequence!46 (rulesRegex!31 thiss!20117 rules!2621) (++!2420 (charsOf!1014 (h!14752 lt!326649)) (singletonSeq!572 (apply!1964 (charsOf!1014 (h!14752 (t!98725 lt!326649))) 0))))))))

(declare-fun bs!232861 () Bool)

(assert (= bs!232861 d!271942))

(declare-fun m!1112793 () Bool)

(assert (=> bs!232861 m!1112793))

(declare-fun m!1112795 () Bool)

(assert (=> bs!232861 m!1112795))

(declare-fun m!1112797 () Bool)

(assert (=> bs!232861 m!1112797))

(assert (=> bs!232861 m!1112793))

(assert (=> bs!232861 m!1112797))

(declare-fun m!1112799 () Bool)

(assert (=> bs!232861 m!1112799))

(assert (=> bs!232861 m!1112799))

(declare-fun m!1112801 () Bool)

(assert (=> bs!232861 m!1112801))

(declare-fun m!1112803 () Bool)

(assert (=> bs!232861 m!1112803))

(declare-fun m!1112805 () Bool)

(assert (=> bs!232861 m!1112805))

(assert (=> bs!232861 m!1112805))

(assert (=> bs!232861 m!1112795))

(assert (=> bs!232861 m!1112801))

(assert (=> b!865656 d!271942))

(declare-fun d!271944 () Bool)

(assert (=> d!271944 (separableTokensPredicate!75 thiss!20117 (h!14752 lt!326649) (h!14752 (t!98725 lt!326649)) rules!2621)))

(declare-fun lt!326732 () Unit!13874)

(declare-fun choose!5088 (LexerInterface!1557 Token!3176 Token!3176 List!9366) Unit!13874)

(assert (=> d!271944 (= lt!326732 (choose!5088 thiss!20117 (h!14752 lt!326649) (h!14752 (t!98725 lt!326649)) rules!2621))))

(assert (=> d!271944 (not (isEmpty!5552 rules!2621))))

(assert (=> d!271944 (= (lemmaTokensOfDifferentKindsAreSeparable!53 thiss!20117 (h!14752 lt!326649) (h!14752 (t!98725 lt!326649)) rules!2621) lt!326732)))

(declare-fun bs!232862 () Bool)

(assert (= bs!232862 d!271944))

(assert (=> bs!232862 m!1112481))

(declare-fun m!1112807 () Bool)

(assert (=> bs!232862 m!1112807))

(assert (=> bs!232862 m!1112493))

(assert (=> b!865656 d!271944))

(declare-fun d!271946 () Bool)

(assert (=> d!271946 (= (inv!11881 (tag!2017 (rule!3178 (h!14752 l!5107)))) (= (mod (str.len (value!56717 (tag!2017 (rule!3178 (h!14752 l!5107))))) 2) 0))))

(assert (=> b!865646 d!271946))

(declare-fun d!271948 () Bool)

(declare-fun res!394368 () Bool)

(declare-fun e!569733 () Bool)

(assert (=> d!271948 (=> (not res!394368) (not e!569733))))

(assert (=> d!271948 (= res!394368 (semiInverseModEq!695 (toChars!2683 (transformation!1755 (rule!3178 (h!14752 l!5107)))) (toValue!2824 (transformation!1755 (rule!3178 (h!14752 l!5107))))))))

(assert (=> d!271948 (= (inv!11885 (transformation!1755 (rule!3178 (h!14752 l!5107)))) e!569733)))

(declare-fun b!865897 () Bool)

(assert (=> b!865897 (= e!569733 (equivClasses!662 (toChars!2683 (transformation!1755 (rule!3178 (h!14752 l!5107)))) (toValue!2824 (transformation!1755 (rule!3178 (h!14752 l!5107))))))))

(assert (= (and d!271948 res!394368) b!865897))

(declare-fun m!1112809 () Bool)

(assert (=> d!271948 m!1112809))

(declare-fun m!1112811 () Bool)

(assert (=> b!865897 m!1112811))

(assert (=> b!865646 d!271948))

(declare-fun d!271950 () Bool)

(assert (=> d!271950 (= (inv!11881 (tag!2017 (rule!3178 separatorToken!297))) (= (mod (str.len (value!56717 (tag!2017 (rule!3178 separatorToken!297)))) 2) 0))))

(assert (=> b!865657 d!271950))

(declare-fun d!271952 () Bool)

(declare-fun res!394369 () Bool)

(declare-fun e!569734 () Bool)

(assert (=> d!271952 (=> (not res!394369) (not e!569734))))

(assert (=> d!271952 (= res!394369 (semiInverseModEq!695 (toChars!2683 (transformation!1755 (rule!3178 separatorToken!297))) (toValue!2824 (transformation!1755 (rule!3178 separatorToken!297)))))))

(assert (=> d!271952 (= (inv!11885 (transformation!1755 (rule!3178 separatorToken!297))) e!569734)))

(declare-fun b!865898 () Bool)

(assert (=> b!865898 (= e!569734 (equivClasses!662 (toChars!2683 (transformation!1755 (rule!3178 separatorToken!297))) (toValue!2824 (transformation!1755 (rule!3178 separatorToken!297)))))))

(assert (= (and d!271952 res!394369) b!865898))

(declare-fun m!1112813 () Bool)

(assert (=> d!271952 m!1112813))

(declare-fun m!1112815 () Bool)

(assert (=> b!865898 m!1112815))

(assert (=> b!865657 d!271952))

(declare-fun d!271954 () Bool)

(declare-fun res!394372 () Bool)

(declare-fun e!569737 () Bool)

(assert (=> d!271954 (=> (not res!394372) (not e!569737))))

(declare-fun rulesValid!626 (LexerInterface!1557 List!9366) Bool)

(assert (=> d!271954 (= res!394372 (rulesValid!626 thiss!20117 rules!2621))))

(assert (=> d!271954 (= (rulesInvariant!1433 thiss!20117 rules!2621) e!569737)))

(declare-fun b!865901 () Bool)

(declare-datatypes ((List!9372 0))(
  ( (Nil!9356) (Cons!9356 (h!14757 String!11005) (t!98762 List!9372)) )
))
(declare-fun noDuplicateTag!626 (LexerInterface!1557 List!9366 List!9372) Bool)

(assert (=> b!865901 (= e!569737 (noDuplicateTag!626 thiss!20117 rules!2621 Nil!9356))))

(assert (= (and d!271954 res!394372) b!865901))

(declare-fun m!1112817 () Bool)

(assert (=> d!271954 m!1112817))

(declare-fun m!1112819 () Bool)

(assert (=> b!865901 m!1112819))

(assert (=> b!865647 d!271954))

(declare-fun d!271956 () Bool)

(declare-fun lt!326750 () Bool)

(declare-fun e!569780 () Bool)

(assert (=> d!271956 (= lt!326750 e!569780)))

(declare-fun res!394404 () Bool)

(assert (=> d!271956 (=> (not res!394404) (not e!569780))))

(declare-datatypes ((IArray!6209 0))(
  ( (IArray!6210 (innerList!3162 List!9367)) )
))
(declare-datatypes ((Conc!3102 0))(
  ( (Node!3102 (left!6925 Conc!3102) (right!7255 Conc!3102) (csize!6434 Int) (cheight!3313 Int)) (Leaf!4568 (xs!5791 IArray!6209) (csize!6435 Int)) (Empty!3102) )
))
(declare-datatypes ((BalanceConc!6218 0))(
  ( (BalanceConc!6219 (c!140131 Conc!3102)) )
))
(declare-fun list!3692 (BalanceConc!6218) List!9367)

(declare-datatypes ((tuple2!10470 0))(
  ( (tuple2!10471 (_1!6061 BalanceConc!6218) (_2!6061 BalanceConc!6214)) )
))
(declare-fun lex!643 (LexerInterface!1557 List!9366 BalanceConc!6214) tuple2!10470)

(declare-fun print!580 (LexerInterface!1557 BalanceConc!6218) BalanceConc!6214)

(declare-fun singletonSeq!573 (Token!3176) BalanceConc!6218)

(assert (=> d!271956 (= res!394404 (= (list!3692 (_1!6061 (lex!643 thiss!20117 rules!2621 (print!580 thiss!20117 (singletonSeq!573 separatorToken!297))))) (list!3692 (singletonSeq!573 separatorToken!297))))))

(declare-fun e!569779 () Bool)

(assert (=> d!271956 (= lt!326750 e!569779)))

(declare-fun res!394403 () Bool)

(assert (=> d!271956 (=> (not res!394403) (not e!569779))))

(declare-fun lt!326751 () tuple2!10470)

(declare-fun size!7797 (BalanceConc!6218) Int)

(assert (=> d!271956 (= res!394403 (= (size!7797 (_1!6061 lt!326751)) 1))))

(assert (=> d!271956 (= lt!326751 (lex!643 thiss!20117 rules!2621 (print!580 thiss!20117 (singletonSeq!573 separatorToken!297))))))

(assert (=> d!271956 (not (isEmpty!5552 rules!2621))))

(assert (=> d!271956 (= (rulesProduceIndividualToken!621 thiss!20117 rules!2621 separatorToken!297) lt!326750)))

(declare-fun b!865958 () Bool)

(declare-fun res!394402 () Bool)

(assert (=> b!865958 (=> (not res!394402) (not e!569779))))

(declare-fun apply!1965 (BalanceConc!6218 Int) Token!3176)

(assert (=> b!865958 (= res!394402 (= (apply!1965 (_1!6061 lt!326751) 0) separatorToken!297))))

(declare-fun b!865959 () Bool)

(declare-fun isEmpty!5555 (BalanceConc!6214) Bool)

(assert (=> b!865959 (= e!569779 (isEmpty!5555 (_2!6061 lt!326751)))))

(declare-fun b!865960 () Bool)

(assert (=> b!865960 (= e!569780 (isEmpty!5555 (_2!6061 (lex!643 thiss!20117 rules!2621 (print!580 thiss!20117 (singletonSeq!573 separatorToken!297))))))))

(assert (= (and d!271956 res!394403) b!865958))

(assert (= (and b!865958 res!394402) b!865959))

(assert (= (and d!271956 res!394404) b!865960))

(assert (=> d!271956 m!1112493))

(declare-fun m!1112915 () Bool)

(assert (=> d!271956 m!1112915))

(declare-fun m!1112917 () Bool)

(assert (=> d!271956 m!1112917))

(declare-fun m!1112919 () Bool)

(assert (=> d!271956 m!1112919))

(declare-fun m!1112921 () Bool)

(assert (=> d!271956 m!1112921))

(assert (=> d!271956 m!1112917))

(assert (=> d!271956 m!1112921))

(declare-fun m!1112923 () Bool)

(assert (=> d!271956 m!1112923))

(declare-fun m!1112925 () Bool)

(assert (=> d!271956 m!1112925))

(assert (=> d!271956 m!1112921))

(declare-fun m!1112927 () Bool)

(assert (=> b!865958 m!1112927))

(declare-fun m!1112929 () Bool)

(assert (=> b!865959 m!1112929))

(assert (=> b!865960 m!1112921))

(assert (=> b!865960 m!1112921))

(assert (=> b!865960 m!1112917))

(assert (=> b!865960 m!1112917))

(assert (=> b!865960 m!1112919))

(declare-fun m!1112931 () Bool)

(assert (=> b!865960 m!1112931))

(assert (=> b!865658 d!271956))

(declare-fun b!865961 () Bool)

(declare-fun e!569782 () Bool)

(assert (=> b!865961 (= e!569782 (inv!16 (value!56718 (h!14752 l!5107))))))

(declare-fun b!865962 () Bool)

(declare-fun e!569783 () Bool)

(assert (=> b!865962 (= e!569782 e!569783)))

(declare-fun c!140128 () Bool)

(assert (=> b!865962 (= c!140128 (is-IntegerValue!5464 (value!56718 (h!14752 l!5107))))))

(declare-fun b!865963 () Bool)

(declare-fun res!394405 () Bool)

(declare-fun e!569781 () Bool)

(assert (=> b!865963 (=> res!394405 e!569781)))

(assert (=> b!865963 (= res!394405 (not (is-IntegerValue!5465 (value!56718 (h!14752 l!5107)))))))

(assert (=> b!865963 (= e!569783 e!569781)))

(declare-fun b!865964 () Bool)

(assert (=> b!865964 (= e!569781 (inv!15 (value!56718 (h!14752 l!5107))))))

(declare-fun b!865965 () Bool)

(assert (=> b!865965 (= e!569783 (inv!17 (value!56718 (h!14752 l!5107))))))

(declare-fun d!271976 () Bool)

(declare-fun c!140127 () Bool)

(assert (=> d!271976 (= c!140127 (is-IntegerValue!5463 (value!56718 (h!14752 l!5107))))))

(assert (=> d!271976 (= (inv!21 (value!56718 (h!14752 l!5107))) e!569782)))

(assert (= (and d!271976 c!140127) b!865961))

(assert (= (and d!271976 (not c!140127)) b!865962))

(assert (= (and b!865962 c!140128) b!865965))

(assert (= (and b!865962 (not c!140128)) b!865963))

(assert (= (and b!865963 (not res!394405)) b!865964))

(declare-fun m!1112933 () Bool)

(assert (=> b!865961 m!1112933))

(declare-fun m!1112935 () Bool)

(assert (=> b!865964 m!1112935))

(declare-fun m!1112937 () Bool)

(assert (=> b!865965 m!1112937))

(assert (=> b!865648 d!271976))

(declare-fun b!865979 () Bool)

(declare-fun e!569786 () Bool)

(declare-fun tp!273790 () Bool)

(declare-fun tp!273786 () Bool)

(assert (=> b!865979 (= e!569786 (and tp!273790 tp!273786))))

(declare-fun b!865978 () Bool)

(declare-fun tp!273789 () Bool)

(assert (=> b!865978 (= e!569786 tp!273789)))

(declare-fun b!865976 () Bool)

(declare-fun tp_is_empty!4023 () Bool)

(assert (=> b!865976 (= e!569786 tp_is_empty!4023)))

(assert (=> b!865652 (= tp!273722 e!569786)))

(declare-fun b!865977 () Bool)

(declare-fun tp!273787 () Bool)

(declare-fun tp!273788 () Bool)

(assert (=> b!865977 (= e!569786 (and tp!273787 tp!273788))))

(assert (= (and b!865652 (is-ElementMatch!2188 (regex!1755 (h!14751 rules!2621)))) b!865976))

(assert (= (and b!865652 (is-Concat!4010 (regex!1755 (h!14751 rules!2621)))) b!865977))

(assert (= (and b!865652 (is-Star!2188 (regex!1755 (h!14751 rules!2621)))) b!865978))

(assert (= (and b!865652 (is-Union!2188 (regex!1755 (h!14751 rules!2621)))) b!865979))

(declare-fun b!865990 () Bool)

(declare-fun b_free!26477 () Bool)

(declare-fun b_next!26541 () Bool)

(assert (=> b!865990 (= b_free!26477 (not b_next!26541))))

(declare-fun tp!273801 () Bool)

(declare-fun b_and!77627 () Bool)

(assert (=> b!865990 (= tp!273801 b_and!77627)))

(declare-fun b_free!26479 () Bool)

(declare-fun b_next!26543 () Bool)

(assert (=> b!865990 (= b_free!26479 (not b_next!26543))))

(declare-fun t!98754 () Bool)

(declare-fun tb!62591 () Bool)

(assert (=> (and b!865990 (= (toChars!2683 (transformation!1755 (h!14751 (t!98724 rules!2621)))) (toChars!2683 (transformation!1755 (rule!3178 (h!14752 l!5107))))) t!98754) tb!62591))

(declare-fun result!72352 () Bool)

(assert (= result!72352 result!72326))

(assert (=> b!865882 t!98754))

(declare-fun t!98756 () Bool)

(declare-fun tb!62593 () Bool)

(assert (=> (and b!865990 (= (toChars!2683 (transformation!1755 (h!14751 (t!98724 rules!2621)))) (toChars!2683 (transformation!1755 (rule!3178 separatorToken!297)))) t!98756) tb!62593))

(declare-fun result!72354 () Bool)

(assert (= result!72354 result!72334))

(assert (=> b!865889 t!98756))

(declare-fun tp!273800 () Bool)

(declare-fun b_and!77629 () Bool)

(assert (=> b!865990 (= tp!273800 (and (=> t!98754 result!72352) (=> t!98756 result!72354) b_and!77629))))

(declare-fun e!569795 () Bool)

(assert (=> b!865990 (= e!569795 (and tp!273801 tp!273800))))

(declare-fun tp!273799 () Bool)

(declare-fun b!865989 () Bool)

(declare-fun e!569797 () Bool)

(assert (=> b!865989 (= e!569797 (and tp!273799 (inv!11881 (tag!2017 (h!14751 (t!98724 rules!2621)))) (inv!11885 (transformation!1755 (h!14751 (t!98724 rules!2621)))) e!569795))))

(declare-fun b!865988 () Bool)

(declare-fun e!569796 () Bool)

(declare-fun tp!273802 () Bool)

(assert (=> b!865988 (= e!569796 (and e!569797 tp!273802))))

(assert (=> b!865644 (= tp!273721 e!569796)))

(assert (= b!865989 b!865990))

(assert (= b!865988 b!865989))

(assert (= (and b!865644 (is-Cons!9350 (t!98724 rules!2621))) b!865988))

(declare-fun m!1112939 () Bool)

(assert (=> b!865989 m!1112939))

(declare-fun m!1112941 () Bool)

(assert (=> b!865989 m!1112941))

(declare-fun b!865995 () Bool)

(declare-fun e!569801 () Bool)

(declare-fun tp!273805 () Bool)

(assert (=> b!865995 (= e!569801 (and tp_is_empty!4023 tp!273805))))

(assert (=> b!865655 (= tp!273723 e!569801)))

(assert (= (and b!865655 (is-Cons!9349 (originalCharacters!2311 separatorToken!297))) b!865995))

(declare-fun b!866009 () Bool)

(declare-fun b_free!26481 () Bool)

(declare-fun b_next!26545 () Bool)

(assert (=> b!866009 (= b_free!26481 (not b_next!26545))))

(declare-fun tp!273817 () Bool)

(declare-fun b_and!77631 () Bool)

(assert (=> b!866009 (= tp!273817 b_and!77631)))

(declare-fun b_free!26483 () Bool)

(declare-fun b_next!26547 () Bool)

(assert (=> b!866009 (= b_free!26483 (not b_next!26547))))

(declare-fun t!98758 () Bool)

(declare-fun tb!62595 () Bool)

(assert (=> (and b!866009 (= (toChars!2683 (transformation!1755 (rule!3178 (h!14752 (t!98725 l!5107))))) (toChars!2683 (transformation!1755 (rule!3178 (h!14752 l!5107))))) t!98758) tb!62595))

(declare-fun result!72360 () Bool)

(assert (= result!72360 result!72326))

(assert (=> b!865882 t!98758))

(declare-fun tb!62597 () Bool)

(declare-fun t!98760 () Bool)

(assert (=> (and b!866009 (= (toChars!2683 (transformation!1755 (rule!3178 (h!14752 (t!98725 l!5107))))) (toChars!2683 (transformation!1755 (rule!3178 separatorToken!297)))) t!98760) tb!62597))

(declare-fun result!72362 () Bool)

(assert (= result!72362 result!72334))

(assert (=> b!865889 t!98760))

(declare-fun tp!273820 () Bool)

(declare-fun b_and!77633 () Bool)

(assert (=> b!866009 (= tp!273820 (and (=> t!98758 result!72360) (=> t!98760 result!72362) b_and!77633))))

(declare-fun b!866007 () Bool)

(declare-fun tp!273816 () Bool)

(declare-fun e!569819 () Bool)

(declare-fun e!569817 () Bool)

(assert (=> b!866007 (= e!569819 (and (inv!21 (value!56718 (h!14752 (t!98725 l!5107)))) e!569817 tp!273816))))

(declare-fun e!569815 () Bool)

(declare-fun b!866006 () Bool)

(declare-fun tp!273818 () Bool)

(assert (=> b!866006 (= e!569815 (and (inv!11884 (h!14752 (t!98725 l!5107))) e!569819 tp!273818))))

(declare-fun e!569814 () Bool)

(assert (=> b!866009 (= e!569814 (and tp!273817 tp!273820))))

(declare-fun tp!273819 () Bool)

(declare-fun b!866008 () Bool)

(assert (=> b!866008 (= e!569817 (and tp!273819 (inv!11881 (tag!2017 (rule!3178 (h!14752 (t!98725 l!5107))))) (inv!11885 (transformation!1755 (rule!3178 (h!14752 (t!98725 l!5107))))) e!569814))))

(assert (=> b!865645 (= tp!273720 e!569815)))

(assert (= b!866008 b!866009))

(assert (= b!866007 b!866008))

(assert (= b!866006 b!866007))

(assert (= (and b!865645 (is-Cons!9351 (t!98725 l!5107))) b!866006))

(declare-fun m!1112943 () Bool)

(assert (=> b!866007 m!1112943))

(declare-fun m!1112945 () Bool)

(assert (=> b!866006 m!1112945))

(declare-fun m!1112947 () Bool)

(assert (=> b!866008 m!1112947))

(declare-fun m!1112949 () Bool)

(assert (=> b!866008 m!1112949))

(declare-fun b!866013 () Bool)

(declare-fun e!569820 () Bool)

(declare-fun tp!273825 () Bool)

(declare-fun tp!273821 () Bool)

(assert (=> b!866013 (= e!569820 (and tp!273825 tp!273821))))

(declare-fun b!866012 () Bool)

(declare-fun tp!273824 () Bool)

(assert (=> b!866012 (= e!569820 tp!273824)))

(declare-fun b!866010 () Bool)

(assert (=> b!866010 (= e!569820 tp_is_empty!4023)))

(assert (=> b!865646 (= tp!273728 e!569820)))

(declare-fun b!866011 () Bool)

(declare-fun tp!273822 () Bool)

(declare-fun tp!273823 () Bool)

(assert (=> b!866011 (= e!569820 (and tp!273822 tp!273823))))

(assert (= (and b!865646 (is-ElementMatch!2188 (regex!1755 (rule!3178 (h!14752 l!5107))))) b!866010))

(assert (= (and b!865646 (is-Concat!4010 (regex!1755 (rule!3178 (h!14752 l!5107))))) b!866011))

(assert (= (and b!865646 (is-Star!2188 (regex!1755 (rule!3178 (h!14752 l!5107))))) b!866012))

(assert (= (and b!865646 (is-Union!2188 (regex!1755 (rule!3178 (h!14752 l!5107))))) b!866013))

(declare-fun b!866017 () Bool)

(declare-fun e!569821 () Bool)

(declare-fun tp!273830 () Bool)

(declare-fun tp!273826 () Bool)

(assert (=> b!866017 (= e!569821 (and tp!273830 tp!273826))))

(declare-fun b!866016 () Bool)

(declare-fun tp!273829 () Bool)

(assert (=> b!866016 (= e!569821 tp!273829)))

(declare-fun b!866014 () Bool)

(assert (=> b!866014 (= e!569821 tp_is_empty!4023)))

(assert (=> b!865657 (= tp!273717 e!569821)))

(declare-fun b!866015 () Bool)

(declare-fun tp!273827 () Bool)

(declare-fun tp!273828 () Bool)

(assert (=> b!866015 (= e!569821 (and tp!273827 tp!273828))))

(assert (= (and b!865657 (is-ElementMatch!2188 (regex!1755 (rule!3178 separatorToken!297)))) b!866014))

(assert (= (and b!865657 (is-Concat!4010 (regex!1755 (rule!3178 separatorToken!297)))) b!866015))

(assert (= (and b!865657 (is-Star!2188 (regex!1755 (rule!3178 separatorToken!297)))) b!866016))

(assert (= (and b!865657 (is-Union!2188 (regex!1755 (rule!3178 separatorToken!297)))) b!866017))

(declare-fun b!866018 () Bool)

(declare-fun e!569822 () Bool)

(declare-fun tp!273831 () Bool)

(assert (=> b!866018 (= e!569822 (and tp_is_empty!4023 tp!273831))))

(assert (=> b!865648 (= tp!273726 e!569822)))

(assert (= (and b!865648 (is-Cons!9349 (originalCharacters!2311 (h!14752 l!5107)))) b!866018))

(declare-fun b_lambda!29443 () Bool)

(assert (= b_lambda!29435 (or (and b!866009 b_free!26483 (= (toChars!2683 (transformation!1755 (rule!3178 (h!14752 (t!98725 l!5107))))) (toChars!2683 (transformation!1755 (rule!3178 (h!14752 l!5107)))))) (and b!865639 b_free!26455 (= (toChars!2683 (transformation!1755 (h!14751 rules!2621))) (toChars!2683 (transformation!1755 (rule!3178 (h!14752 l!5107)))))) (and b!865638 b_free!26463 (= (toChars!2683 (transformation!1755 (rule!3178 separatorToken!297))) (toChars!2683 (transformation!1755 (rule!3178 (h!14752 l!5107)))))) (and b!865650 b_free!26459) (and b!865990 b_free!26479 (= (toChars!2683 (transformation!1755 (h!14751 (t!98724 rules!2621)))) (toChars!2683 (transformation!1755 (rule!3178 (h!14752 l!5107)))))) b_lambda!29443)))

(declare-fun b_lambda!29445 () Bool)

(assert (= b_lambda!29431 (or b!865641 b_lambda!29445)))

(declare-fun bs!232868 () Bool)

(declare-fun d!271978 () Bool)

(assert (= bs!232868 (and d!271978 b!865641)))

(assert (=> bs!232868 (= (dynLambda!4438 lambda!25973 (h!14752 l!5107)) (not (isSeparator!1755 (rule!3178 (h!14752 l!5107)))))))

(assert (=> b!865841 d!271978))

(declare-fun b_lambda!29447 () Bool)

(assert (= b_lambda!29437 (or (and b!866009 b_free!26483 (= (toChars!2683 (transformation!1755 (rule!3178 (h!14752 (t!98725 l!5107))))) (toChars!2683 (transformation!1755 (rule!3178 separatorToken!297))))) (and b!865638 b_free!26463) (and b!865990 b_free!26479 (= (toChars!2683 (transformation!1755 (h!14751 (t!98724 rules!2621)))) (toChars!2683 (transformation!1755 (rule!3178 separatorToken!297))))) (and b!865639 b_free!26455 (= (toChars!2683 (transformation!1755 (h!14751 rules!2621))) (toChars!2683 (transformation!1755 (rule!3178 separatorToken!297))))) (and b!865650 b_free!26459 (= (toChars!2683 (transformation!1755 (rule!3178 (h!14752 l!5107)))) (toChars!2683 (transformation!1755 (rule!3178 separatorToken!297))))) b_lambda!29447)))

(declare-fun b_lambda!29449 () Bool)

(assert (= b_lambda!29433 (or b!865641 b_lambda!29449)))

(declare-fun bs!232869 () Bool)

(declare-fun d!271980 () Bool)

(assert (= bs!232869 (and d!271980 b!865641)))

(assert (=> bs!232869 (= (dynLambda!4438 lambda!25973 (h!14752 lt!326648)) (not (isSeparator!1755 (rule!3178 (h!14752 lt!326648)))))))

(assert (=> b!865861 d!271980))

(push 1)

(assert (not b!865979))

(assert (not b!865826))

(assert (not b!866011))

(assert b_and!77585)

(assert (not d!271912))

(assert (not b!866007))

(assert (not b!865958))

(assert (not d!271910))

(assert b_and!77627)

(assert (not b!865897))

(assert (not b!865901))

(assert (not b!865898))

(assert (not b!865883))

(assert (not b!865846))

(assert (not d!271940))

(assert b_and!77615)

(assert (not d!271938))

(assert b_and!77593)

(assert (not b!866006))

(assert (not b!865821))

(assert (not b!865995))

(assert (not d!271952))

(assert (not b!865862))

(assert (not b!865894))

(assert (not b_lambda!29449))

(assert (not b!865965))

(assert (not b!866017))

(assert (not tb!62579))

(assert (not b_next!26519))

(assert (not b_next!26545))

(assert (not d!271948))

(assert (not b!865961))

(assert (not b!866013))

(assert (not b!866012))

(assert (not b_lambda!29447))

(assert (not b!866015))

(assert (not b!865977))

(assert (not b!866018))

(assert b_and!77633)

(assert (not b!865892))

(assert (not b!865842))

(assert (not b_next!26521))

(assert (not tb!62573))

(assert (not d!271924))

(assert (not b!865823))

(assert (not b_lambda!29445))

(assert (not b!865787))

(assert (not b!865829))

(assert (not b!865889))

(assert (not b!865847))

(assert (not b_next!26543))

(assert (not b_next!26517))

(assert (not d!271936))

(assert (not b!865858))

(assert (not b!865891))

(assert b_and!77619)

(assert (not d!271944))

(assert (not b_lambda!29443))

(assert (not b_next!26527))

(assert (not b!866008))

(assert (not b!865835))

(assert (not d!271894))

(assert (not d!271942))

(assert (not b!865796))

(assert (not b!865786))

(assert (not d!271954))

(assert (not b!865853))

(assert b_and!77589)

(assert (not d!271956))

(assert (not b!865960))

(assert (not b!865848))

(assert (not b!865989))

(assert (not b!865836))

(assert (not b!865856))

(assert (not d!271926))

(assert tp_is_empty!4023)

(assert (not b_next!26541))

(assert (not d!271928))

(assert (not b!865873))

(assert (not b!865859))

(assert (not b!865964))

(assert (not b!865845))

(assert (not b!865888))

(assert (not b!865988))

(assert (not b!865877))

(assert (not b_next!26547))

(assert b_and!77617)

(assert (not b!865893))

(assert (not b!865876))

(assert (not b!866016))

(assert b_and!77631)

(assert (not b!865978))

(assert (not b!865882))

(assert (not b!865828))

(assert (not b_next!26525))

(assert (not b!865959))

(assert b_and!77629)

(assert (not b!865890))

(assert (not b!865851))

(assert (not b_next!26523))

(check-sat)

(pop 1)

(push 1)

(assert b_and!77627)

(assert b_and!77585)

(assert (not b_next!26543))

(assert (not b_next!26527))

(assert b_and!77589)

(assert (not b_next!26541))

(assert b_and!77631)

(assert (not b_next!26525))

(assert b_and!77629)

(assert (not b_next!26523))

(assert b_and!77615)

(assert b_and!77593)

(assert (not b_next!26519))

(assert (not b_next!26545))

(assert b_and!77633)

(assert (not b_next!26521))

(assert (not b_next!26517))

(assert b_and!77619)

(assert (not b_next!26547))

(assert b_and!77617)

(check-sat)

(pop 1)

