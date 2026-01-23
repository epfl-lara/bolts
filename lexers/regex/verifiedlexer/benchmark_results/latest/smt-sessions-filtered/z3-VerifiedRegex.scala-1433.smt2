; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74718 () Bool)

(assert start!74718)

(declare-fun b!841496 () Bool)

(declare-fun b_free!25137 () Bool)

(declare-fun b_next!25201 () Bool)

(assert (=> b!841496 (= b_free!25137 (not b_next!25201))))

(declare-fun tp!264694 () Bool)

(declare-fun b_and!72749 () Bool)

(assert (=> b!841496 (= tp!264694 b_and!72749)))

(declare-fun b_free!25139 () Bool)

(declare-fun b_next!25203 () Bool)

(assert (=> b!841496 (= b_free!25139 (not b_next!25203))))

(declare-fun tp!264690 () Bool)

(declare-fun b_and!72751 () Bool)

(assert (=> b!841496 (= tp!264690 b_and!72751)))

(declare-fun b!841491 () Bool)

(declare-fun b_free!25141 () Bool)

(declare-fun b_next!25205 () Bool)

(assert (=> b!841491 (= b_free!25141 (not b_next!25205))))

(declare-fun tp!264696 () Bool)

(declare-fun b_and!72753 () Bool)

(assert (=> b!841491 (= tp!264696 b_and!72753)))

(declare-fun b_free!25143 () Bool)

(declare-fun b_next!25207 () Bool)

(assert (=> b!841491 (= b_free!25143 (not b_next!25207))))

(declare-fun tp!264686 () Bool)

(declare-fun b_and!72755 () Bool)

(assert (=> b!841491 (= tp!264686 b_and!72755)))

(declare-fun b!841504 () Bool)

(declare-fun b_free!25145 () Bool)

(declare-fun b_next!25209 () Bool)

(assert (=> b!841504 (= b_free!25145 (not b_next!25209))))

(declare-fun tp!264698 () Bool)

(declare-fun b_and!72757 () Bool)

(assert (=> b!841504 (= tp!264698 b_and!72757)))

(declare-fun b_free!25147 () Bool)

(declare-fun b_next!25211 () Bool)

(assert (=> b!841504 (= b_free!25147 (not b_next!25211))))

(declare-fun tp!264697 () Bool)

(declare-fun b_and!72759 () Bool)

(assert (=> b!841504 (= tp!264697 b_and!72759)))

(declare-fun b!841489 () Bool)

(declare-fun res!384667 () Bool)

(declare-fun e!553489 () Bool)

(assert (=> b!841489 (=> (not res!384667) (not e!553489))))

(declare-datatypes ((List!9042 0))(
  ( (Nil!9026) (Cons!9026 (h!14427 (_ BitVec 16)) (t!93584 List!9042)) )
))
(declare-datatypes ((TokenValue!1758 0))(
  ( (FloatLiteralValue!3516 (text!12751 List!9042)) (TokenValueExt!1757 (__x!7247 Int)) (Broken!8790 (value!54895 List!9042)) (Object!1773) (End!1758) (Def!1758) (Underscore!1758) (Match!1758) (Else!1758) (Error!1758) (Case!1758) (If!1758) (Extends!1758) (Abstract!1758) (Class!1758) (Val!1758) (DelimiterValue!3516 (del!1818 List!9042)) (KeywordValue!1764 (value!54896 List!9042)) (CommentValue!3516 (value!54897 List!9042)) (WhitespaceValue!3516 (value!54898 List!9042)) (IndentationValue!1758 (value!54899 List!9042)) (String!10687) (Int32!1758) (Broken!8791 (value!54900 List!9042)) (Boolean!1759) (Unit!13466) (OperatorValue!1761 (op!1818 List!9042)) (IdentifierValue!3516 (value!54901 List!9042)) (IdentifierValue!3517 (value!54902 List!9042)) (WhitespaceValue!3517 (value!54903 List!9042)) (True!3516) (False!3516) (Broken!8792 (value!54904 List!9042)) (Broken!8793 (value!54905 List!9042)) (True!3517) (RightBrace!1758) (RightBracket!1758) (Colon!1758) (Null!1758) (Comma!1758) (LeftBracket!1758) (False!3517) (LeftBrace!1758) (ImaginaryLiteralValue!1758 (text!12752 List!9042)) (StringLiteralValue!5274 (value!54906 List!9042)) (EOFValue!1758 (value!54907 List!9042)) (IdentValue!1758 (value!54908 List!9042)) (DelimiterValue!3517 (value!54909 List!9042)) (DedentValue!1758 (value!54910 List!9042)) (NewLineValue!1758 (value!54911 List!9042)) (IntegerValue!5274 (value!54912 (_ BitVec 32)) (text!12753 List!9042)) (IntegerValue!5275 (value!54913 Int) (text!12754 List!9042)) (Times!1758) (Or!1758) (Equal!1758) (Minus!1758) (Broken!8794 (value!54914 List!9042)) (And!1758) (Div!1758) (LessEqual!1758) (Mod!1758) (Concat!3883) (Not!1758) (Plus!1758) (SpaceValue!1758 (value!54915 List!9042)) (IntegerValue!5276 (value!54916 Int) (text!12755 List!9042)) (StringLiteralValue!5275 (text!12756 List!9042)) (FloatLiteralValue!3517 (text!12757 List!9042)) (BytesLiteralValue!1758 (value!54917 List!9042)) (CommentValue!3517 (value!54918 List!9042)) (StringLiteralValue!5276 (value!54919 List!9042)) (ErrorTokenValue!1758 (msg!1819 List!9042)) )
))
(declare-datatypes ((C!4820 0))(
  ( (C!4821 (val!2658 Int)) )
))
(declare-datatypes ((Regex!2125 0))(
  ( (ElementMatch!2125 (c!137153 C!4820)) (Concat!3884 (regOne!4762 Regex!2125) (regTwo!4762 Regex!2125)) (EmptyExpr!2125) (Star!2125 (reg!2454 Regex!2125)) (EmptyLang!2125) (Union!2125 (regOne!4763 Regex!2125) (regTwo!4763 Regex!2125)) )
))
(declare-datatypes ((String!10688 0))(
  ( (String!10689 (value!54920 String)) )
))
(declare-datatypes ((List!9043 0))(
  ( (Nil!9027) (Cons!9027 (h!14428 C!4820) (t!93585 List!9043)) )
))
(declare-datatypes ((IArray!5995 0))(
  ( (IArray!5996 (innerList!3055 List!9043)) )
))
(declare-datatypes ((Conc!2995 0))(
  ( (Node!2995 (left!6698 Conc!2995) (right!7028 Conc!2995) (csize!6220 Int) (cheight!3206 Int)) (Leaf!4429 (xs!5684 IArray!5995) (csize!6221 Int)) (Empty!2995) )
))
(declare-datatypes ((BalanceConc!6004 0))(
  ( (BalanceConc!6005 (c!137154 Conc!2995)) )
))
(declare-datatypes ((TokenValueInjection!3216 0))(
  ( (TokenValueInjection!3217 (toValue!2709 Int) (toChars!2568 Int)) )
))
(declare-datatypes ((Rule!3184 0))(
  ( (Rule!3185 (regex!1692 Regex!2125) (tag!1954 String!10688) (isSeparator!1692 Bool) (transformation!1692 TokenValueInjection!3216)) )
))
(declare-datatypes ((Token!3050 0))(
  ( (Token!3051 (value!54921 TokenValue!1758) (rule!3115 Rule!3184) (size!7541 Int) (originalCharacters!2248 List!9043)) )
))
(declare-fun separatorToken!297 () Token!3050)

(assert (=> b!841489 (= res!384667 (isSeparator!1692 (rule!3115 separatorToken!297)))))

(declare-fun b!841490 () Bool)

(declare-fun e!553475 () Bool)

(assert (=> b!841490 (= e!553475 true)))

(declare-fun res!384673 () Bool)

(assert (=> start!74718 (=> (not res!384673) (not e!553489))))

(declare-datatypes ((LexerInterface!1494 0))(
  ( (LexerInterfaceExt!1491 (__x!7248 Int)) (Lexer!1492) )
))
(declare-fun thiss!20117 () LexerInterface!1494)

(get-info :version)

(assert (=> start!74718 (= res!384673 ((_ is Lexer!1492) thiss!20117))))

(assert (=> start!74718 e!553489))

(assert (=> start!74718 true))

(declare-fun e!553480 () Bool)

(assert (=> start!74718 e!553480))

(declare-fun e!553485 () Bool)

(assert (=> start!74718 e!553485))

(declare-fun e!553472 () Bool)

(declare-fun inv!11501 (Token!3050) Bool)

(assert (=> start!74718 (and (inv!11501 separatorToken!297) e!553472)))

(declare-fun e!553484 () Bool)

(assert (=> b!841491 (= e!553484 (and tp!264696 tp!264686))))

(declare-fun b!841492 () Bool)

(declare-fun e!553476 () Bool)

(assert (=> b!841492 (= e!553489 (not e!553476))))

(declare-fun res!384665 () Bool)

(assert (=> b!841492 (=> res!384665 e!553476)))

(declare-datatypes ((List!9044 0))(
  ( (Nil!9028) (Cons!9028 (h!14429 Token!3050) (t!93586 List!9044)) )
))
(declare-fun lt!318696 () List!9044)

(assert (=> b!841492 (= res!384665 (or (not ((_ is Cons!9028) lt!318696)) (not ((_ is Cons!9028) (t!93586 lt!318696)))))))

(declare-datatypes ((List!9045 0))(
  ( (Nil!9029) (Cons!9029 (h!14430 Rule!3184) (t!93587 List!9045)) )
))
(declare-fun rules!2621 () List!9045)

(declare-fun rulesProduceEachTokenIndividuallyList!382 (LexerInterface!1494 List!9045 List!9044) Bool)

(assert (=> b!841492 (rulesProduceEachTokenIndividuallyList!382 thiss!20117 rules!2621 lt!318696)))

(declare-fun l!5107 () List!9044)

(declare-fun withSeparatorTokenList!24 (LexerInterface!1494 List!9044 Token!3050) List!9044)

(assert (=> b!841492 (= lt!318696 (withSeparatorTokenList!24 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13467 0))(
  ( (Unit!13468) )
))
(declare-fun lt!318697 () Unit!13467)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!24 (LexerInterface!1494 List!9045 List!9044 Token!3050) Unit!13467)

(assert (=> b!841492 (= lt!318697 (withSeparatorTokenListPreservesRulesProduceTokens!24 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun tp!264692 () Bool)

(declare-fun e!553481 () Bool)

(declare-fun b!841493 () Bool)

(declare-fun e!553477 () Bool)

(declare-fun inv!21 (TokenValue!1758) Bool)

(assert (=> b!841493 (= e!553481 (and (inv!21 (value!54921 (h!14429 l!5107))) e!553477 tp!264692))))

(declare-fun b!841494 () Bool)

(declare-fun res!384674 () Bool)

(declare-fun e!553471 () Bool)

(assert (=> b!841494 (=> res!384674 e!553471)))

(assert (=> b!841494 (= res!384674 (not (= (h!14429 (t!93586 lt!318696)) separatorToken!297)))))

(declare-fun b!841495 () Bool)

(assert (=> b!841495 (= e!553471 e!553475)))

(declare-fun res!384664 () Bool)

(assert (=> b!841495 (=> res!384664 e!553475)))

(declare-fun lt!318699 () List!9044)

(assert (=> b!841495 (= res!384664 (not (rulesProduceEachTokenIndividuallyList!382 thiss!20117 rules!2621 lt!318699)))))

(declare-fun separableTokensPredicate!34 (LexerInterface!1494 Token!3050 Token!3050 List!9045) Bool)

(assert (=> b!841495 (separableTokensPredicate!34 thiss!20117 (h!14429 lt!318696) (h!14429 (t!93586 lt!318696)) rules!2621)))

(declare-fun lt!318698 () Unit!13467)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!16 (LexerInterface!1494 Token!3050 Token!3050 List!9045) Unit!13467)

(assert (=> b!841495 (= lt!318698 (lemmaTokensOfDifferentKindsAreSeparable!16 thiss!20117 (h!14429 lt!318696) (h!14429 (t!93586 lt!318696)) rules!2621))))

(declare-fun e!553482 () Bool)

(assert (=> b!841496 (= e!553482 (and tp!264694 tp!264690))))

(declare-fun b!841497 () Bool)

(declare-fun res!384669 () Bool)

(assert (=> b!841497 (=> (not res!384669) (not e!553489))))

(declare-fun lambda!24992 () Int)

(declare-fun forall!2107 (List!9044 Int) Bool)

(assert (=> b!841497 (= res!384669 (forall!2107 l!5107 lambda!24992))))

(declare-fun b!841498 () Bool)

(declare-fun e!553483 () Bool)

(declare-fun tp!264687 () Bool)

(declare-fun inv!11498 (String!10688) Bool)

(declare-fun inv!11502 (TokenValueInjection!3216) Bool)

(assert (=> b!841498 (= e!553483 (and tp!264687 (inv!11498 (tag!1954 (rule!3115 separatorToken!297))) (inv!11502 (transformation!1692 (rule!3115 separatorToken!297))) e!553482))))

(declare-fun b!841499 () Bool)

(declare-fun tp!264688 () Bool)

(assert (=> b!841499 (= e!553485 (and (inv!11501 (h!14429 l!5107)) e!553481 tp!264688))))

(declare-fun b!841500 () Bool)

(declare-fun res!384666 () Bool)

(assert (=> b!841500 (=> (not res!384666) (not e!553489))))

(assert (=> b!841500 (= res!384666 (rulesProduceEachTokenIndividuallyList!382 thiss!20117 rules!2621 l!5107))))

(declare-fun b!841501 () Bool)

(declare-fun res!384663 () Bool)

(assert (=> b!841501 (=> (not res!384663) (not e!553489))))

(declare-fun sepAndNonSepRulesDisjointChars!492 (List!9045 List!9045) Bool)

(assert (=> b!841501 (= res!384663 (sepAndNonSepRulesDisjointChars!492 rules!2621 rules!2621))))

(declare-fun b!841502 () Bool)

(declare-fun tp!264689 () Bool)

(assert (=> b!841502 (= e!553472 (and (inv!21 (value!54921 separatorToken!297)) e!553483 tp!264689))))

(declare-fun e!553487 () Bool)

(declare-fun tp!264693 () Bool)

(declare-fun e!553473 () Bool)

(declare-fun b!841503 () Bool)

(assert (=> b!841503 (= e!553487 (and tp!264693 (inv!11498 (tag!1954 (h!14430 rules!2621))) (inv!11502 (transformation!1692 (h!14430 rules!2621))) e!553473))))

(assert (=> b!841504 (= e!553473 (and tp!264698 tp!264697))))

(declare-fun b!841505 () Bool)

(declare-fun res!384662 () Bool)

(assert (=> b!841505 (=> (not res!384662) (not e!553489))))

(declare-fun rulesProduceIndividualToken!558 (LexerInterface!1494 List!9045 Token!3050) Bool)

(assert (=> b!841505 (= res!384662 (rulesProduceIndividualToken!558 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!841506 () Bool)

(assert (=> b!841506 (= e!553476 e!553471)))

(declare-fun res!384670 () Bool)

(assert (=> b!841506 (=> res!384670 e!553471)))

(assert (=> b!841506 (= res!384670 (not (= (t!93586 (t!93586 lt!318696)) (withSeparatorTokenList!24 thiss!20117 lt!318699 separatorToken!297))))))

(declare-fun tail!1010 (List!9044) List!9044)

(assert (=> b!841506 (= lt!318699 (tail!1010 l!5107))))

(declare-fun tp!264691 () Bool)

(declare-fun b!841507 () Bool)

(assert (=> b!841507 (= e!553477 (and tp!264691 (inv!11498 (tag!1954 (rule!3115 (h!14429 l!5107)))) (inv!11502 (transformation!1692 (rule!3115 (h!14429 l!5107)))) e!553484))))

(declare-fun b!841508 () Bool)

(declare-fun tp!264695 () Bool)

(assert (=> b!841508 (= e!553480 (and e!553487 tp!264695))))

(declare-fun b!841509 () Bool)

(declare-fun res!384668 () Bool)

(assert (=> b!841509 (=> (not res!384668) (not e!553489))))

(declare-fun isEmpty!5319 (List!9045) Bool)

(assert (=> b!841509 (= res!384668 (not (isEmpty!5319 rules!2621)))))

(declare-fun b!841510 () Bool)

(declare-fun res!384671 () Bool)

(assert (=> b!841510 (=> (not res!384671) (not e!553489))))

(declare-fun rulesInvariant!1370 (LexerInterface!1494 List!9045) Bool)

(assert (=> b!841510 (= res!384671 (rulesInvariant!1370 thiss!20117 rules!2621))))

(declare-fun b!841511 () Bool)

(declare-fun res!384672 () Bool)

(assert (=> b!841511 (=> res!384672 e!553471)))

(declare-fun head!1452 (List!9044) Token!3050)

(assert (=> b!841511 (= res!384672 (not (= (head!1452 l!5107) (h!14429 lt!318696))))))

(assert (= (and start!74718 res!384673) b!841509))

(assert (= (and b!841509 res!384668) b!841510))

(assert (= (and b!841510 res!384671) b!841500))

(assert (= (and b!841500 res!384666) b!841505))

(assert (= (and b!841505 res!384662) b!841489))

(assert (= (and b!841489 res!384667) b!841497))

(assert (= (and b!841497 res!384669) b!841501))

(assert (= (and b!841501 res!384663) b!841492))

(assert (= (and b!841492 (not res!384665)) b!841506))

(assert (= (and b!841506 (not res!384670)) b!841511))

(assert (= (and b!841511 (not res!384672)) b!841494))

(assert (= (and b!841494 (not res!384674)) b!841495))

(assert (= (and b!841495 (not res!384664)) b!841490))

(assert (= b!841503 b!841504))

(assert (= b!841508 b!841503))

(assert (= (and start!74718 ((_ is Cons!9029) rules!2621)) b!841508))

(assert (= b!841507 b!841491))

(assert (= b!841493 b!841507))

(assert (= b!841499 b!841493))

(assert (= (and start!74718 ((_ is Cons!9028) l!5107)) b!841499))

(assert (= b!841498 b!841496))

(assert (= b!841502 b!841498))

(assert (= start!74718 b!841502))

(declare-fun m!1074491 () Bool)

(assert (=> b!841499 m!1074491))

(declare-fun m!1074493 () Bool)

(assert (=> start!74718 m!1074493))

(declare-fun m!1074495 () Bool)

(assert (=> b!841493 m!1074495))

(declare-fun m!1074497 () Bool)

(assert (=> b!841497 m!1074497))

(declare-fun m!1074499 () Bool)

(assert (=> b!841507 m!1074499))

(declare-fun m!1074501 () Bool)

(assert (=> b!841507 m!1074501))

(declare-fun m!1074503 () Bool)

(assert (=> b!841500 m!1074503))

(declare-fun m!1074505 () Bool)

(assert (=> b!841506 m!1074505))

(declare-fun m!1074507 () Bool)

(assert (=> b!841506 m!1074507))

(declare-fun m!1074509 () Bool)

(assert (=> b!841511 m!1074509))

(declare-fun m!1074511 () Bool)

(assert (=> b!841510 m!1074511))

(declare-fun m!1074513 () Bool)

(assert (=> b!841495 m!1074513))

(declare-fun m!1074515 () Bool)

(assert (=> b!841495 m!1074515))

(declare-fun m!1074517 () Bool)

(assert (=> b!841495 m!1074517))

(declare-fun m!1074519 () Bool)

(assert (=> b!841492 m!1074519))

(declare-fun m!1074521 () Bool)

(assert (=> b!841492 m!1074521))

(declare-fun m!1074523 () Bool)

(assert (=> b!841492 m!1074523))

(declare-fun m!1074525 () Bool)

(assert (=> b!841501 m!1074525))

(declare-fun m!1074527 () Bool)

(assert (=> b!841502 m!1074527))

(declare-fun m!1074529 () Bool)

(assert (=> b!841505 m!1074529))

(declare-fun m!1074531 () Bool)

(assert (=> b!841509 m!1074531))

(declare-fun m!1074533 () Bool)

(assert (=> b!841498 m!1074533))

(declare-fun m!1074535 () Bool)

(assert (=> b!841498 m!1074535))

(declare-fun m!1074537 () Bool)

(assert (=> b!841503 m!1074537))

(declare-fun m!1074539 () Bool)

(assert (=> b!841503 m!1074539))

(check-sat (not b!841500) (not b!841503) (not b!841499) (not b_next!25205) (not b!841506) (not b_next!25209) (not b!841492) (not b!841493) (not b!841507) (not start!74718) (not b_next!25203) b_and!72755 (not b!841495) b_and!72753 b_and!72759 b_and!72751 (not b!841501) (not b!841508) (not b_next!25201) (not b!841510) (not b!841498) (not b!841511) (not b!841509) (not b!841502) b_and!72757 (not b_next!25207) b_and!72749 (not b!841497) (not b_next!25211) (not b!841505))
(check-sat (not b_next!25205) (not b_next!25209) (not b_next!25201) b_and!72757 (not b_next!25203) b_and!72755 (not b_next!25211) b_and!72753 b_and!72759 b_and!72751 (not b_next!25207) b_and!72749)
