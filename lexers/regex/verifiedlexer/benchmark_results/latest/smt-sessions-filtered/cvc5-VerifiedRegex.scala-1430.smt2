; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!74640 () Bool)

(assert start!74640)

(declare-fun b!840664 () Bool)

(declare-fun b_free!25037 () Bool)

(declare-fun b_next!25101 () Bool)

(assert (=> b!840664 (= b_free!25037 (not b_next!25101))))

(declare-fun tp!264295 () Bool)

(declare-fun b_and!72625 () Bool)

(assert (=> b!840664 (= tp!264295 b_and!72625)))

(declare-fun b_free!25039 () Bool)

(declare-fun b_next!25103 () Bool)

(assert (=> b!840664 (= b_free!25039 (not b_next!25103))))

(declare-fun tp!264294 () Bool)

(declare-fun b_and!72627 () Bool)

(assert (=> b!840664 (= tp!264294 b_and!72627)))

(declare-fun b!840648 () Bool)

(declare-fun b_free!25041 () Bool)

(declare-fun b_next!25105 () Bool)

(assert (=> b!840648 (= b_free!25041 (not b_next!25105))))

(declare-fun tp!264296 () Bool)

(declare-fun b_and!72629 () Bool)

(assert (=> b!840648 (= tp!264296 b_and!72629)))

(declare-fun b_free!25043 () Bool)

(declare-fun b_next!25107 () Bool)

(assert (=> b!840648 (= b_free!25043 (not b_next!25107))))

(declare-fun tp!264301 () Bool)

(declare-fun b_and!72631 () Bool)

(assert (=> b!840648 (= tp!264301 b_and!72631)))

(declare-fun b!840659 () Bool)

(declare-fun b_free!25045 () Bool)

(declare-fun b_next!25109 () Bool)

(assert (=> b!840659 (= b_free!25045 (not b_next!25109))))

(declare-fun tp!264299 () Bool)

(declare-fun b_and!72633 () Bool)

(assert (=> b!840659 (= tp!264299 b_and!72633)))

(declare-fun b_free!25047 () Bool)

(declare-fun b_next!25111 () Bool)

(assert (=> b!840659 (= b_free!25047 (not b_next!25111))))

(declare-fun tp!264293 () Bool)

(declare-fun b_and!72635 () Bool)

(assert (=> b!840659 (= tp!264293 b_and!72635)))

(declare-fun e!552832 () Bool)

(declare-fun e!552823 () Bool)

(declare-datatypes ((List!9012 0))(
  ( (Nil!8996) (Cons!8996 (h!14397 (_ BitVec 16)) (t!93508 List!9012)) )
))
(declare-datatypes ((TokenValue!1751 0))(
  ( (FloatLiteralValue!3502 (text!12702 List!9012)) (TokenValueExt!1750 (__x!7233 Int)) (Broken!8755 (value!54697 List!9012)) (Object!1766) (End!1751) (Def!1751) (Underscore!1751) (Match!1751) (Else!1751) (Error!1751) (Case!1751) (If!1751) (Extends!1751) (Abstract!1751) (Class!1751) (Val!1751) (DelimiterValue!3502 (del!1811 List!9012)) (KeywordValue!1757 (value!54698 List!9012)) (CommentValue!3502 (value!54699 List!9012)) (WhitespaceValue!3502 (value!54700 List!9012)) (IndentationValue!1751 (value!54701 List!9012)) (String!10654) (Int32!1751) (Broken!8756 (value!54702 List!9012)) (Boolean!1752) (Unit!13445) (OperatorValue!1754 (op!1811 List!9012)) (IdentifierValue!3502 (value!54703 List!9012)) (IdentifierValue!3503 (value!54704 List!9012)) (WhitespaceValue!3503 (value!54705 List!9012)) (True!3502) (False!3502) (Broken!8757 (value!54706 List!9012)) (Broken!8758 (value!54707 List!9012)) (True!3503) (RightBrace!1751) (RightBracket!1751) (Colon!1751) (Null!1751) (Comma!1751) (LeftBracket!1751) (False!3503) (LeftBrace!1751) (ImaginaryLiteralValue!1751 (text!12703 List!9012)) (StringLiteralValue!5253 (value!54708 List!9012)) (EOFValue!1751 (value!54709 List!9012)) (IdentValue!1751 (value!54710 List!9012)) (DelimiterValue!3503 (value!54711 List!9012)) (DedentValue!1751 (value!54712 List!9012)) (NewLineValue!1751 (value!54713 List!9012)) (IntegerValue!5253 (value!54714 (_ BitVec 32)) (text!12704 List!9012)) (IntegerValue!5254 (value!54715 Int) (text!12705 List!9012)) (Times!1751) (Or!1751) (Equal!1751) (Minus!1751) (Broken!8759 (value!54716 List!9012)) (And!1751) (Div!1751) (LessEqual!1751) (Mod!1751) (Concat!3869) (Not!1751) (Plus!1751) (SpaceValue!1751 (value!54717 List!9012)) (IntegerValue!5255 (value!54718 Int) (text!12706 List!9012)) (StringLiteralValue!5254 (text!12707 List!9012)) (FloatLiteralValue!3503 (text!12708 List!9012)) (BytesLiteralValue!1751 (value!54719 List!9012)) (CommentValue!3503 (value!54720 List!9012)) (StringLiteralValue!5255 (value!54721 List!9012)) (ErrorTokenValue!1751 (msg!1812 List!9012)) )
))
(declare-datatypes ((C!4806 0))(
  ( (C!4807 (val!2651 Int)) )
))
(declare-datatypes ((Regex!2118 0))(
  ( (ElementMatch!2118 (c!137097 C!4806)) (Concat!3870 (regOne!4748 Regex!2118) (regTwo!4748 Regex!2118)) (EmptyExpr!2118) (Star!2118 (reg!2447 Regex!2118)) (EmptyLang!2118) (Union!2118 (regOne!4749 Regex!2118) (regTwo!4749 Regex!2118)) )
))
(declare-datatypes ((String!10655 0))(
  ( (String!10656 (value!54722 String)) )
))
(declare-datatypes ((List!9013 0))(
  ( (Nil!8997) (Cons!8997 (h!14398 C!4806) (t!93509 List!9013)) )
))
(declare-datatypes ((IArray!5977 0))(
  ( (IArray!5978 (innerList!3046 List!9013)) )
))
(declare-datatypes ((Conc!2986 0))(
  ( (Node!2986 (left!6682 Conc!2986) (right!7012 Conc!2986) (csize!6202 Int) (cheight!3197 Int)) (Leaf!4417 (xs!5675 IArray!5977) (csize!6203 Int)) (Empty!2986) )
))
(declare-datatypes ((BalanceConc!5986 0))(
  ( (BalanceConc!5987 (c!137098 Conc!2986)) )
))
(declare-datatypes ((TokenValueInjection!3202 0))(
  ( (TokenValueInjection!3203 (toValue!2702 Int) (toChars!2561 Int)) )
))
(declare-datatypes ((Rule!3170 0))(
  ( (Rule!3171 (regex!1685 Regex!2118) (tag!1947 String!10655) (isSeparator!1685 Bool) (transformation!1685 TokenValueInjection!3202)) )
))
(declare-datatypes ((Token!3036 0))(
  ( (Token!3037 (value!54723 TokenValue!1751) (rule!3108 Rule!3170) (size!7530 Int) (originalCharacters!2241 List!9013)) )
))
(declare-datatypes ((List!9014 0))(
  ( (Nil!8998) (Cons!8998 (h!14399 Token!3036) (t!93510 List!9014)) )
))
(declare-fun l!5107 () List!9014)

(declare-fun tp!264297 () Bool)

(declare-fun b!840644 () Bool)

(declare-fun inv!11471 (String!10655) Bool)

(declare-fun inv!11474 (TokenValueInjection!3202) Bool)

(assert (=> b!840644 (= e!552832 (and tp!264297 (inv!11471 (tag!1947 (rule!3108 (h!14399 l!5107)))) (inv!11474 (transformation!1685 (rule!3108 (h!14399 l!5107)))) e!552823))))

(declare-fun b!840645 () Bool)

(declare-fun res!384253 () Bool)

(declare-fun e!552831 () Bool)

(assert (=> b!840645 (=> res!384253 e!552831)))

(declare-fun lt!318522 () List!9014)

(declare-fun separatorToken!297 () Token!3036)

(assert (=> b!840645 (= res!384253 (not (= (h!14399 (t!93510 lt!318522)) separatorToken!297)))))

(declare-fun b!840646 () Bool)

(declare-fun e!552822 () Bool)

(declare-fun e!552825 () Bool)

(declare-fun tp!264300 () Bool)

(assert (=> b!840646 (= e!552822 (and e!552825 tp!264300))))

(declare-fun e!552824 () Bool)

(declare-fun tp!264304 () Bool)

(declare-fun b!840647 () Bool)

(declare-fun inv!21 (TokenValue!1751) Bool)

(assert (=> b!840647 (= e!552824 (and (inv!21 (value!54723 (h!14399 l!5107))) e!552832 tp!264304))))

(assert (=> b!840648 (= e!552823 (and tp!264296 tp!264301))))

(declare-fun tp!264302 () Bool)

(declare-fun b!840649 () Bool)

(declare-fun e!552830 () Bool)

(declare-fun e!552837 () Bool)

(assert (=> b!840649 (= e!552830 (and tp!264302 (inv!11471 (tag!1947 (rule!3108 separatorToken!297))) (inv!11474 (transformation!1685 (rule!3108 separatorToken!297))) e!552837))))

(declare-fun b!840650 () Bool)

(declare-fun res!384255 () Bool)

(declare-fun e!552838 () Bool)

(assert (=> b!840650 (=> (not res!384255) (not e!552838))))

(declare-datatypes ((List!9015 0))(
  ( (Nil!8999) (Cons!8999 (h!14400 Rule!3170) (t!93511 List!9015)) )
))
(declare-fun rules!2621 () List!9015)

(declare-datatypes ((LexerInterface!1487 0))(
  ( (LexerInterfaceExt!1484 (__x!7234 Int)) (Lexer!1485) )
))
(declare-fun thiss!20117 () LexerInterface!1487)

(declare-fun rulesProduceIndividualToken!551 (LexerInterface!1487 List!9015 Token!3036) Bool)

(assert (=> b!840650 (= res!384255 (rulesProduceIndividualToken!551 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!840651 () Bool)

(declare-fun res!384257 () Bool)

(assert (=> b!840651 (=> res!384257 e!552831)))

(declare-fun withSeparatorTokenList!17 (LexerInterface!1487 List!9014 Token!3036) List!9014)

(declare-fun tail!1003 (List!9014) List!9014)

(assert (=> b!840651 (= res!384257 (not (= (t!93510 (t!93510 lt!318522)) (withSeparatorTokenList!17 thiss!20117 (tail!1003 l!5107) separatorToken!297))))))

(declare-fun tp!264305 () Bool)

(declare-fun e!552834 () Bool)

(declare-fun b!840652 () Bool)

(assert (=> b!840652 (= e!552834 (and (inv!21 (value!54723 separatorToken!297)) e!552830 tp!264305))))

(declare-fun tp!264298 () Bool)

(declare-fun b!840654 () Bool)

(declare-fun e!552828 () Bool)

(declare-fun inv!11475 (Token!3036) Bool)

(assert (=> b!840654 (= e!552828 (and (inv!11475 (h!14399 l!5107)) e!552824 tp!264298))))

(declare-fun b!840655 () Bool)

(declare-fun res!384254 () Bool)

(assert (=> b!840655 (=> (not res!384254) (not e!552838))))

(declare-fun rulesProduceEachTokenIndividuallyList!375 (LexerInterface!1487 List!9015 List!9014) Bool)

(assert (=> b!840655 (= res!384254 (rulesProduceEachTokenIndividuallyList!375 thiss!20117 rules!2621 l!5107))))

(declare-fun b!840656 () Bool)

(assert (=> b!840656 (= e!552838 (not e!552831))))

(declare-fun res!384258 () Bool)

(assert (=> b!840656 (=> res!384258 e!552831)))

(assert (=> b!840656 (= res!384258 (or (not (is-Cons!8998 lt!318522)) (not (is-Cons!8998 (t!93510 lt!318522)))))))

(assert (=> b!840656 (rulesProduceEachTokenIndividuallyList!375 thiss!20117 rules!2621 lt!318522)))

(assert (=> b!840656 (= lt!318522 (withSeparatorTokenList!17 thiss!20117 l!5107 separatorToken!297))))

(declare-datatypes ((Unit!13446 0))(
  ( (Unit!13447) )
))
(declare-fun lt!318520 () Unit!13446)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!17 (LexerInterface!1487 List!9015 List!9014 Token!3036) Unit!13446)

(assert (=> b!840656 (= lt!318520 (withSeparatorTokenListPreservesRulesProduceTokens!17 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun b!840657 () Bool)

(declare-fun tp!264303 () Bool)

(declare-fun e!552827 () Bool)

(assert (=> b!840657 (= e!552825 (and tp!264303 (inv!11471 (tag!1947 (h!14400 rules!2621))) (inv!11474 (transformation!1685 (h!14400 rules!2621))) e!552827))))

(declare-fun b!840658 () Bool)

(declare-fun res!384260 () Bool)

(assert (=> b!840658 (=> (not res!384260) (not e!552838))))

(declare-fun sepAndNonSepRulesDisjointChars!485 (List!9015 List!9015) Bool)

(assert (=> b!840658 (= res!384260 (sepAndNonSepRulesDisjointChars!485 rules!2621 rules!2621))))

(assert (=> b!840659 (= e!552827 (and tp!264299 tp!264293))))

(declare-fun b!840660 () Bool)

(declare-fun res!384259 () Bool)

(assert (=> b!840660 (=> (not res!384259) (not e!552838))))

(declare-fun isEmpty!5308 (List!9015) Bool)

(assert (=> b!840660 (= res!384259 (not (isEmpty!5308 rules!2621)))))

(declare-fun b!840661 () Bool)

(declare-fun res!384261 () Bool)

(assert (=> b!840661 (=> (not res!384261) (not e!552838))))

(declare-fun lambda!24955 () Int)

(declare-fun forall!2100 (List!9014 Int) Bool)

(assert (=> b!840661 (= res!384261 (forall!2100 l!5107 lambda!24955))))

(declare-fun b!840662 () Bool)

(declare-fun res!384256 () Bool)

(assert (=> b!840662 (=> (not res!384256) (not e!552838))))

(declare-fun rulesInvariant!1363 (LexerInterface!1487 List!9015) Bool)

(assert (=> b!840662 (= res!384256 (rulesInvariant!1363 thiss!20117 rules!2621))))

(declare-fun b!840663 () Bool)

(declare-fun res!384251 () Bool)

(assert (=> b!840663 (=> res!384251 e!552831)))

(declare-fun head!1445 (List!9014) Token!3036)

(assert (=> b!840663 (= res!384251 (not (= (head!1445 l!5107) (h!14399 lt!318522))))))

(assert (=> b!840664 (= e!552837 (and tp!264295 tp!264294))))

(declare-fun b!840665 () Bool)

(assert (=> b!840665 (= e!552831 (not (= l!5107 Nil!8998)))))

(declare-fun separableTokensPredicate!27 (LexerInterface!1487 Token!3036 Token!3036 List!9015) Bool)

(assert (=> b!840665 (separableTokensPredicate!27 thiss!20117 (h!14399 lt!318522) (h!14399 (t!93510 lt!318522)) rules!2621)))

(declare-fun lt!318521 () Unit!13446)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!9 (LexerInterface!1487 Token!3036 Token!3036 List!9015) Unit!13446)

(assert (=> b!840665 (= lt!318521 (lemmaTokensOfDifferentKindsAreSeparable!9 thiss!20117 (h!14399 lt!318522) (h!14399 (t!93510 lt!318522)) rules!2621))))

(declare-fun res!384252 () Bool)

(assert (=> start!74640 (=> (not res!384252) (not e!552838))))

(assert (=> start!74640 (= res!384252 (is-Lexer!1485 thiss!20117))))

(assert (=> start!74640 e!552838))

(assert (=> start!74640 true))

(assert (=> start!74640 e!552822))

(assert (=> start!74640 e!552828))

(assert (=> start!74640 (and (inv!11475 separatorToken!297) e!552834)))

(declare-fun b!840653 () Bool)

(declare-fun res!384250 () Bool)

(assert (=> b!840653 (=> (not res!384250) (not e!552838))))

(assert (=> b!840653 (= res!384250 (isSeparator!1685 (rule!3108 separatorToken!297)))))

(assert (= (and start!74640 res!384252) b!840660))

(assert (= (and b!840660 res!384259) b!840662))

(assert (= (and b!840662 res!384256) b!840655))

(assert (= (and b!840655 res!384254) b!840650))

(assert (= (and b!840650 res!384255) b!840653))

(assert (= (and b!840653 res!384250) b!840661))

(assert (= (and b!840661 res!384261) b!840658))

(assert (= (and b!840658 res!384260) b!840656))

(assert (= (and b!840656 (not res!384258)) b!840651))

(assert (= (and b!840651 (not res!384257)) b!840663))

(assert (= (and b!840663 (not res!384251)) b!840645))

(assert (= (and b!840645 (not res!384253)) b!840665))

(assert (= b!840657 b!840659))

(assert (= b!840646 b!840657))

(assert (= (and start!74640 (is-Cons!8999 rules!2621)) b!840646))

(assert (= b!840644 b!840648))

(assert (= b!840647 b!840644))

(assert (= b!840654 b!840647))

(assert (= (and start!74640 (is-Cons!8998 l!5107)) b!840654))

(assert (= b!840649 b!840664))

(assert (= b!840652 b!840649))

(assert (= start!74640 b!840652))

(declare-fun m!1073705 () Bool)

(assert (=> b!840652 m!1073705))

(declare-fun m!1073707 () Bool)

(assert (=> b!840651 m!1073707))

(assert (=> b!840651 m!1073707))

(declare-fun m!1073709 () Bool)

(assert (=> b!840651 m!1073709))

(declare-fun m!1073711 () Bool)

(assert (=> b!840644 m!1073711))

(declare-fun m!1073713 () Bool)

(assert (=> b!840644 m!1073713))

(declare-fun m!1073715 () Bool)

(assert (=> b!840655 m!1073715))

(declare-fun m!1073717 () Bool)

(assert (=> start!74640 m!1073717))

(declare-fun m!1073719 () Bool)

(assert (=> b!840657 m!1073719))

(declare-fun m!1073721 () Bool)

(assert (=> b!840657 m!1073721))

(declare-fun m!1073723 () Bool)

(assert (=> b!840661 m!1073723))

(declare-fun m!1073725 () Bool)

(assert (=> b!840660 m!1073725))

(declare-fun m!1073727 () Bool)

(assert (=> b!840654 m!1073727))

(declare-fun m!1073729 () Bool)

(assert (=> b!840663 m!1073729))

(declare-fun m!1073731 () Bool)

(assert (=> b!840665 m!1073731))

(declare-fun m!1073733 () Bool)

(assert (=> b!840665 m!1073733))

(declare-fun m!1073735 () Bool)

(assert (=> b!840650 m!1073735))

(declare-fun m!1073737 () Bool)

(assert (=> b!840658 m!1073737))

(declare-fun m!1073739 () Bool)

(assert (=> b!840662 m!1073739))

(declare-fun m!1073741 () Bool)

(assert (=> b!840649 m!1073741))

(declare-fun m!1073743 () Bool)

(assert (=> b!840649 m!1073743))

(declare-fun m!1073745 () Bool)

(assert (=> b!840656 m!1073745))

(declare-fun m!1073747 () Bool)

(assert (=> b!840656 m!1073747))

(declare-fun m!1073749 () Bool)

(assert (=> b!840656 m!1073749))

(declare-fun m!1073751 () Bool)

(assert (=> b!840647 m!1073751))

(push 1)

(assert (not b!840650))

(assert (not b!840647))

(assert (not b!840663))

(assert (not b!840658))

(assert (not b!840662))

(assert b_and!72627)

(assert (not b_next!25109))

(assert (not b!840654))

(assert b_and!72625)

(assert (not start!74640))

(assert (not b!840660))

(assert (not b!840651))

(assert b_and!72635)

(assert (not b_next!25105))

(assert (not b_next!25103))

(assert (not b!840652))

(assert (not b_next!25111))

(assert (not b!840657))

(assert (not b!840649))

(assert (not b!840655))

(assert (not b_next!25101))

(assert b_and!72631)

(assert b_and!72629)

(assert (not b!840661))

(assert (not b!840656))

(assert (not b!840665))

(assert (not b!840646))

(assert (not b!840644))

(assert (not b_next!25107))

(assert b_and!72633)

(check-sat)

(pop 1)

(push 1)

(assert b_and!72625)

(assert b_and!72635)

(assert (not b_next!25111))

(assert b_and!72627)

(assert (not b_next!25109))

(assert b_and!72629)

(assert (not b_next!25105))

(assert (not b_next!25103))

(assert (not b_next!25101))

(assert b_and!72631)

(assert (not b_next!25107))

(assert b_and!72633)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!840752 () Bool)

(declare-fun e!552903 () List!9014)

(assert (=> b!840752 (= e!552903 Nil!8998)))

(declare-fun b!840753 () Bool)

(declare-fun res!384315 () Bool)

(declare-fun e!552904 () Bool)

(assert (=> b!840753 (=> (not res!384315) (not e!552904))))

(declare-fun e!552902 () Bool)

(assert (=> b!840753 (= res!384315 e!552902)))

(declare-fun res!384313 () Bool)

(assert (=> b!840753 (=> res!384313 e!552902)))

(assert (=> b!840753 (= res!384313 (not (is-Cons!8998 (tail!1003 l!5107))))))

(declare-fun b!840754 () Bool)

(declare-fun e!552906 () List!9013)

(declare-fun lt!318550 () List!9014)

(declare-fun ++!2333 (List!9013 List!9013) List!9013)

(declare-fun list!3547 (BalanceConc!5986) List!9013)

(declare-fun charsOf!970 (Token!3036) BalanceConc!5986)

(declare-fun printList!455 (LexerInterface!1487 List!9014) List!9013)

(assert (=> b!840754 (= e!552906 (++!2333 (list!3547 (charsOf!970 (h!14399 lt!318550))) (printList!455 thiss!20117 (t!93510 lt!318550))))))

(declare-fun b!840755 () Bool)

(declare-fun e!552907 () List!9013)

(declare-fun lt!318554 () List!9014)

(assert (=> b!840755 (= e!552907 (++!2333 (list!3547 (charsOf!970 (h!14399 lt!318554))) (printList!455 thiss!20117 (t!93510 lt!318554))))))

(declare-fun b!840756 () Bool)

(declare-fun e!552905 () Bool)

(assert (=> b!840756 (= e!552904 e!552905)))

(declare-fun res!384314 () Bool)

(assert (=> b!840756 (=> res!384314 e!552905)))

(assert (=> b!840756 (= res!384314 (not (is-Cons!8998 (tail!1003 l!5107))))))

(declare-fun b!840757 () Bool)

(declare-fun $colon$colon!68 (List!9014 Token!3036) List!9014)

(assert (=> b!840757 (= e!552903 ($colon$colon!68 ($colon$colon!68 (withSeparatorTokenList!17 thiss!20117 (t!93510 (tail!1003 l!5107)) separatorToken!297) separatorToken!297) (h!14399 (tail!1003 l!5107))))))

(declare-fun lt!318552 () List!9013)

(assert (=> b!840757 (= lt!318552 (list!3547 (charsOf!970 (h!14399 (tail!1003 l!5107)))))))

(declare-fun lt!318551 () List!9013)

(assert (=> b!840757 (= lt!318551 (list!3547 (charsOf!970 separatorToken!297)))))

(declare-fun lt!318555 () List!9013)

(assert (=> b!840757 (= lt!318555 (printList!455 thiss!20117 (withSeparatorTokenList!17 thiss!20117 (t!93510 (tail!1003 l!5107)) separatorToken!297)))))

(declare-fun lt!318553 () Unit!13446)

(declare-fun lemmaConcatAssociativity!730 (List!9013 List!9013 List!9013) Unit!13446)

(assert (=> b!840757 (= lt!318553 (lemmaConcatAssociativity!730 lt!318552 lt!318551 lt!318555))))

(assert (=> b!840757 (= (++!2333 (++!2333 lt!318552 lt!318551) lt!318555) (++!2333 lt!318552 (++!2333 lt!318551 lt!318555)))))

(declare-fun lt!318549 () Unit!13446)

(assert (=> b!840757 (= lt!318549 lt!318553)))

(declare-fun b!840758 () Bool)

(assert (=> b!840758 (= e!552902 (= (printList!455 thiss!20117 ($colon$colon!68 ($colon$colon!68 (withSeparatorTokenList!17 thiss!20117 (t!93510 (tail!1003 l!5107)) separatorToken!297) separatorToken!297) (h!14399 (tail!1003 l!5107)))) e!552906))))

(declare-fun c!137108 () Bool)

(assert (=> b!840758 (= c!137108 (is-Cons!8998 lt!318550))))

(assert (=> b!840758 (= lt!318550 ($colon$colon!68 ($colon$colon!68 (withSeparatorTokenList!17 thiss!20117 (t!93510 (tail!1003 l!5107)) separatorToken!297) separatorToken!297) (h!14399 (tail!1003 l!5107))))))

(declare-fun b!840759 () Bool)

(assert (=> b!840759 (= e!552907 Nil!8997)))

(declare-fun lt!318548 () List!9014)

(declare-fun d!261643 () Bool)

(declare-fun printWithSeparatorTokenList!13 (LexerInterface!1487 List!9014 Token!3036) List!9013)

(assert (=> d!261643 (= (printList!455 thiss!20117 lt!318548) (printWithSeparatorTokenList!13 thiss!20117 (tail!1003 l!5107) separatorToken!297))))

(assert (=> d!261643 (= lt!318548 e!552903)))

(declare-fun c!137109 () Bool)

(assert (=> d!261643 (= c!137109 (is-Cons!8998 (tail!1003 l!5107)))))

(assert (=> d!261643 e!552904))

(declare-fun res!384316 () Bool)

(assert (=> d!261643 (=> (not res!384316) (not e!552904))))

(assert (=> d!261643 (= res!384316 (isSeparator!1685 (rule!3108 separatorToken!297)))))

(assert (=> d!261643 (= (withSeparatorTokenList!17 thiss!20117 (tail!1003 l!5107) separatorToken!297) lt!318548)))

(declare-fun b!840760 () Bool)

(assert (=> b!840760 (= e!552905 (= (printList!455 thiss!20117 ($colon$colon!68 (withSeparatorTokenList!17 thiss!20117 (t!93510 (tail!1003 l!5107)) separatorToken!297) separatorToken!297)) e!552907))))

(declare-fun c!137107 () Bool)

(assert (=> b!840760 (= c!137107 (is-Cons!8998 lt!318554))))

(assert (=> b!840760 (= lt!318554 ($colon$colon!68 (withSeparatorTokenList!17 thiss!20117 (t!93510 (tail!1003 l!5107)) separatorToken!297) separatorToken!297))))

(declare-fun b!840761 () Bool)

(assert (=> b!840761 (= e!552906 Nil!8997)))

(assert (= (and d!261643 res!384316) b!840753))

(assert (= (and b!840753 (not res!384313)) b!840758))

(assert (= (and b!840758 c!137108) b!840754))

(assert (= (and b!840758 (not c!137108)) b!840761))

(assert (= (and b!840753 res!384315) b!840756))

(assert (= (and b!840756 (not res!384314)) b!840760))

(assert (= (and b!840760 c!137107) b!840755))

(assert (= (and b!840760 (not c!137107)) b!840759))

(assert (= (and d!261643 c!137109) b!840757))

(assert (= (and d!261643 (not c!137109)) b!840752))

(declare-fun m!1073801 () Bool)

(assert (=> b!840760 m!1073801))

(assert (=> b!840760 m!1073801))

(declare-fun m!1073803 () Bool)

(assert (=> b!840760 m!1073803))

(assert (=> b!840760 m!1073803))

(declare-fun m!1073805 () Bool)

(assert (=> b!840760 m!1073805))

(assert (=> b!840758 m!1073801))

(assert (=> b!840758 m!1073801))

(assert (=> b!840758 m!1073803))

(assert (=> b!840758 m!1073803))

(declare-fun m!1073807 () Bool)

(assert (=> b!840758 m!1073807))

(assert (=> b!840758 m!1073807))

(declare-fun m!1073809 () Bool)

(assert (=> b!840758 m!1073809))

(assert (=> b!840757 m!1073801))

(assert (=> b!840757 m!1073803))

(assert (=> b!840757 m!1073807))

(declare-fun m!1073811 () Bool)

(assert (=> b!840757 m!1073811))

(declare-fun m!1073813 () Bool)

(assert (=> b!840757 m!1073813))

(declare-fun m!1073815 () Bool)

(assert (=> b!840757 m!1073815))

(assert (=> b!840757 m!1073811))

(declare-fun m!1073817 () Bool)

(assert (=> b!840757 m!1073817))

(declare-fun m!1073819 () Bool)

(assert (=> b!840757 m!1073819))

(declare-fun m!1073821 () Bool)

(assert (=> b!840757 m!1073821))

(declare-fun m!1073823 () Bool)

(assert (=> b!840757 m!1073823))

(declare-fun m!1073825 () Bool)

(assert (=> b!840757 m!1073825))

(assert (=> b!840757 m!1073819))

(assert (=> b!840757 m!1073823))

(assert (=> b!840757 m!1073815))

(declare-fun m!1073827 () Bool)

(assert (=> b!840757 m!1073827))

(assert (=> b!840757 m!1073801))

(declare-fun m!1073829 () Bool)

(assert (=> b!840757 m!1073829))

(assert (=> b!840757 m!1073801))

(assert (=> b!840757 m!1073803))

(declare-fun m!1073831 () Bool)

(assert (=> d!261643 m!1073831))

(assert (=> d!261643 m!1073707))

(declare-fun m!1073833 () Bool)

(assert (=> d!261643 m!1073833))

(declare-fun m!1073835 () Bool)

(assert (=> b!840754 m!1073835))

(assert (=> b!840754 m!1073835))

(declare-fun m!1073837 () Bool)

(assert (=> b!840754 m!1073837))

(declare-fun m!1073839 () Bool)

(assert (=> b!840754 m!1073839))

(assert (=> b!840754 m!1073837))

(assert (=> b!840754 m!1073839))

(declare-fun m!1073841 () Bool)

(assert (=> b!840754 m!1073841))

(declare-fun m!1073843 () Bool)

(assert (=> b!840755 m!1073843))

(assert (=> b!840755 m!1073843))

(declare-fun m!1073845 () Bool)

(assert (=> b!840755 m!1073845))

(declare-fun m!1073847 () Bool)

(assert (=> b!840755 m!1073847))

(assert (=> b!840755 m!1073845))

(assert (=> b!840755 m!1073847))

(declare-fun m!1073849 () Bool)

(assert (=> b!840755 m!1073849))

(assert (=> b!840651 d!261643))

(declare-fun d!261645 () Bool)

(assert (=> d!261645 (= (tail!1003 l!5107) (t!93510 l!5107))))

(assert (=> b!840651 d!261645))

(declare-fun d!261647 () Bool)

(declare-fun res!384321 () Bool)

(declare-fun e!552912 () Bool)

(assert (=> d!261647 (=> res!384321 e!552912)))

(assert (=> d!261647 (= res!384321 (is-Nil!8998 l!5107))))

(assert (=> d!261647 (= (forall!2100 l!5107 lambda!24955) e!552912)))

(declare-fun b!840766 () Bool)

(declare-fun e!552913 () Bool)

(assert (=> b!840766 (= e!552912 e!552913)))

(declare-fun res!384322 () Bool)

(assert (=> b!840766 (=> (not res!384322) (not e!552913))))

(declare-fun dynLambda!4162 (Int Token!3036) Bool)

(assert (=> b!840766 (= res!384322 (dynLambda!4162 lambda!24955 (h!14399 l!5107)))))

(declare-fun b!840767 () Bool)

(assert (=> b!840767 (= e!552913 (forall!2100 (t!93510 l!5107) lambda!24955))))

(assert (= (and d!261647 (not res!384321)) b!840766))

(assert (= (and b!840766 res!384322) b!840767))

(declare-fun b_lambda!27655 () Bool)

(assert (=> (not b_lambda!27655) (not b!840766)))

(declare-fun m!1073851 () Bool)

(assert (=> b!840766 m!1073851))

(declare-fun m!1073853 () Bool)

(assert (=> b!840767 m!1073853))

(assert (=> b!840661 d!261647))

(declare-fun d!261649 () Bool)

(declare-fun lt!318585 () Bool)

(declare-fun e!552939 () Bool)

(assert (=> d!261649 (= lt!318585 e!552939)))

(declare-fun res!384345 () Bool)

(assert (=> d!261649 (=> (not res!384345) (not e!552939))))

(declare-datatypes ((IArray!5981 0))(
  ( (IArray!5982 (innerList!3048 List!9014)) )
))
(declare-datatypes ((Conc!2988 0))(
  ( (Node!2988 (left!6688 Conc!2988) (right!7018 Conc!2988) (csize!6206 Int) (cheight!3199 Int)) (Leaf!4419 (xs!5677 IArray!5981) (csize!6207 Int)) (Empty!2988) )
))
(declare-datatypes ((BalanceConc!5990 0))(
  ( (BalanceConc!5991 (c!137141 Conc!2988)) )
))
(declare-fun list!3548 (BalanceConc!5990) List!9014)

(declare-datatypes ((tuple2!10322 0))(
  ( (tuple2!10323 (_1!5987 BalanceConc!5990) (_2!5987 BalanceConc!5986)) )
))
(declare-fun lex!599 (LexerInterface!1487 List!9015 BalanceConc!5986) tuple2!10322)

(declare-fun print!536 (LexerInterface!1487 BalanceConc!5990) BalanceConc!5986)

(declare-fun singletonSeq!502 (Token!3036) BalanceConc!5990)

(assert (=> d!261649 (= res!384345 (= (list!3548 (_1!5987 (lex!599 thiss!20117 rules!2621 (print!536 thiss!20117 (singletonSeq!502 separatorToken!297))))) (list!3548 (singletonSeq!502 separatorToken!297))))))

(declare-fun e!552940 () Bool)

(assert (=> d!261649 (= lt!318585 e!552940)))

(declare-fun res!384346 () Bool)

(assert (=> d!261649 (=> (not res!384346) (not e!552940))))

(declare-fun lt!318584 () tuple2!10322)

(declare-fun size!7532 (BalanceConc!5990) Int)

(assert (=> d!261649 (= res!384346 (= (size!7532 (_1!5987 lt!318584)) 1))))

(assert (=> d!261649 (= lt!318584 (lex!599 thiss!20117 rules!2621 (print!536 thiss!20117 (singletonSeq!502 separatorToken!297))))))

(assert (=> d!261649 (not (isEmpty!5308 rules!2621))))

(assert (=> d!261649 (= (rulesProduceIndividualToken!551 thiss!20117 rules!2621 separatorToken!297) lt!318585)))

(declare-fun b!840807 () Bool)

(declare-fun res!384344 () Bool)

(assert (=> b!840807 (=> (not res!384344) (not e!552940))))

(declare-fun apply!1812 (BalanceConc!5990 Int) Token!3036)

(assert (=> b!840807 (= res!384344 (= (apply!1812 (_1!5987 lt!318584) 0) separatorToken!297))))

(declare-fun b!840808 () Bool)

(declare-fun isEmpty!5310 (BalanceConc!5986) Bool)

(assert (=> b!840808 (= e!552940 (isEmpty!5310 (_2!5987 lt!318584)))))

(declare-fun b!840809 () Bool)

(assert (=> b!840809 (= e!552939 (isEmpty!5310 (_2!5987 (lex!599 thiss!20117 rules!2621 (print!536 thiss!20117 (singletonSeq!502 separatorToken!297))))))))

(assert (= (and d!261649 res!384346) b!840807))

(assert (= (and b!840807 res!384344) b!840808))

(assert (= (and d!261649 res!384345) b!840809))

(declare-fun m!1073907 () Bool)

(assert (=> d!261649 m!1073907))

(assert (=> d!261649 m!1073725))

(declare-fun m!1073911 () Bool)

(assert (=> d!261649 m!1073911))

(declare-fun m!1073913 () Bool)

(assert (=> d!261649 m!1073913))

(assert (=> d!261649 m!1073913))

(declare-fun m!1073915 () Bool)

(assert (=> d!261649 m!1073915))

(assert (=> d!261649 m!1073911))

(assert (=> d!261649 m!1073911))

(declare-fun m!1073917 () Bool)

(assert (=> d!261649 m!1073917))

(declare-fun m!1073919 () Bool)

(assert (=> d!261649 m!1073919))

(declare-fun m!1073921 () Bool)

(assert (=> b!840807 m!1073921))

(declare-fun m!1073923 () Bool)

(assert (=> b!840808 m!1073923))

(assert (=> b!840809 m!1073911))

(assert (=> b!840809 m!1073911))

(assert (=> b!840809 m!1073913))

(assert (=> b!840809 m!1073913))

(assert (=> b!840809 m!1073915))

(declare-fun m!1073925 () Bool)

(assert (=> b!840809 m!1073925))

(assert (=> b!840650 d!261649))

(declare-fun d!261659 () Bool)

(assert (=> d!261659 (= (isEmpty!5308 rules!2621) (is-Nil!8999 rules!2621))))

(assert (=> b!840660 d!261659))

(declare-fun d!261661 () Bool)

(assert (=> d!261661 (= (inv!11471 (tag!1947 (rule!3108 separatorToken!297))) (= (mod (str.len (value!54722 (tag!1947 (rule!3108 separatorToken!297)))) 2) 0))))

(assert (=> b!840649 d!261661))

(declare-fun d!261665 () Bool)

(declare-fun res!384349 () Bool)

(declare-fun e!552943 () Bool)

(assert (=> d!261665 (=> (not res!384349) (not e!552943))))

(declare-fun semiInverseModEq!651 (Int Int) Bool)

(assert (=> d!261665 (= res!384349 (semiInverseModEq!651 (toChars!2561 (transformation!1685 (rule!3108 separatorToken!297))) (toValue!2702 (transformation!1685 (rule!3108 separatorToken!297)))))))

(assert (=> d!261665 (= (inv!11474 (transformation!1685 (rule!3108 separatorToken!297))) e!552943)))

(declare-fun b!840812 () Bool)

(declare-fun equivClasses!618 (Int Int) Bool)

(assert (=> b!840812 (= e!552943 (equivClasses!618 (toChars!2561 (transformation!1685 (rule!3108 separatorToken!297))) (toValue!2702 (transformation!1685 (rule!3108 separatorToken!297)))))))

(assert (= (and d!261665 res!384349) b!840812))

(declare-fun m!1073927 () Bool)

(assert (=> d!261665 m!1073927))

(declare-fun m!1073929 () Bool)

(assert (=> b!840812 m!1073929))

(assert (=> b!840649 d!261665))

(declare-fun d!261671 () Bool)

(declare-fun res!384358 () Bool)

(declare-fun e!552950 () Bool)

(assert (=> d!261671 (=> (not res!384358) (not e!552950))))

(declare-fun isEmpty!5311 (List!9013) Bool)

(assert (=> d!261671 (= res!384358 (not (isEmpty!5311 (originalCharacters!2241 separatorToken!297))))))

(assert (=> d!261671 (= (inv!11475 separatorToken!297) e!552950)))

(declare-fun b!840821 () Bool)

(declare-fun res!384359 () Bool)

(assert (=> b!840821 (=> (not res!384359) (not e!552950))))

(declare-fun dynLambda!4163 (Int TokenValue!1751) BalanceConc!5986)

(assert (=> b!840821 (= res!384359 (= (originalCharacters!2241 separatorToken!297) (list!3547 (dynLambda!4163 (toChars!2561 (transformation!1685 (rule!3108 separatorToken!297))) (value!54723 separatorToken!297)))))))

(declare-fun b!840822 () Bool)

(declare-fun size!7533 (List!9013) Int)

(assert (=> b!840822 (= e!552950 (= (size!7530 separatorToken!297) (size!7533 (originalCharacters!2241 separatorToken!297))))))

(assert (= (and d!261671 res!384358) b!840821))

(assert (= (and b!840821 res!384359) b!840822))

(declare-fun b_lambda!27657 () Bool)

(assert (=> (not b_lambda!27657) (not b!840821)))

(declare-fun t!93518 () Bool)

(declare-fun tb!57993 () Bool)

(assert (=> (and b!840664 (= (toChars!2561 (transformation!1685 (rule!3108 separatorToken!297))) (toChars!2561 (transformation!1685 (rule!3108 separatorToken!297)))) t!93518) tb!57993))

(declare-fun b!840829 () Bool)

(declare-fun e!552955 () Bool)

(declare-fun tp!264347 () Bool)

(declare-fun inv!11478 (Conc!2986) Bool)

(assert (=> b!840829 (= e!552955 (and (inv!11478 (c!137098 (dynLambda!4163 (toChars!2561 (transformation!1685 (rule!3108 separatorToken!297))) (value!54723 separatorToken!297)))) tp!264347))))

(declare-fun result!67254 () Bool)

(declare-fun inv!11479 (BalanceConc!5986) Bool)

(assert (=> tb!57993 (= result!67254 (and (inv!11479 (dynLambda!4163 (toChars!2561 (transformation!1685 (rule!3108 separatorToken!297))) (value!54723 separatorToken!297))) e!552955))))

(assert (= tb!57993 b!840829))

(declare-fun m!1073935 () Bool)

(assert (=> b!840829 m!1073935))

(declare-fun m!1073937 () Bool)

(assert (=> tb!57993 m!1073937))

(assert (=> b!840821 t!93518))

(declare-fun b_and!72649 () Bool)

(assert (= b_and!72627 (and (=> t!93518 result!67254) b_and!72649)))

(declare-fun t!93520 () Bool)

(declare-fun tb!57995 () Bool)

(assert (=> (and b!840648 (= (toChars!2561 (transformation!1685 (rule!3108 (h!14399 l!5107)))) (toChars!2561 (transformation!1685 (rule!3108 separatorToken!297)))) t!93520) tb!57995))

(declare-fun result!67258 () Bool)

(assert (= result!67258 result!67254))

(assert (=> b!840821 t!93520))

(declare-fun b_and!72651 () Bool)

(assert (= b_and!72631 (and (=> t!93520 result!67258) b_and!72651)))

(declare-fun t!93522 () Bool)

(declare-fun tb!57997 () Bool)

(assert (=> (and b!840659 (= (toChars!2561 (transformation!1685 (h!14400 rules!2621))) (toChars!2561 (transformation!1685 (rule!3108 separatorToken!297)))) t!93522) tb!57997))

(declare-fun result!67260 () Bool)

(assert (= result!67260 result!67254))

(assert (=> b!840821 t!93522))

(declare-fun b_and!72653 () Bool)

(assert (= b_and!72635 (and (=> t!93522 result!67260) b_and!72653)))

(declare-fun m!1073939 () Bool)

(assert (=> d!261671 m!1073939))

(declare-fun m!1073941 () Bool)

(assert (=> b!840821 m!1073941))

(assert (=> b!840821 m!1073941))

(declare-fun m!1073943 () Bool)

(assert (=> b!840821 m!1073943))

(declare-fun m!1073945 () Bool)

(assert (=> b!840822 m!1073945))

(assert (=> start!74640 d!261671))

(declare-fun d!261675 () Bool)

(declare-fun res!384366 () Bool)

(declare-fun e!552960 () Bool)

(assert (=> d!261675 (=> res!384366 e!552960)))

(assert (=> d!261675 (= res!384366 (not (is-Cons!8999 rules!2621)))))

(assert (=> d!261675 (= (sepAndNonSepRulesDisjointChars!485 rules!2621 rules!2621) e!552960)))

(declare-fun b!840836 () Bool)

(declare-fun e!552961 () Bool)

(assert (=> b!840836 (= e!552960 e!552961)))

(declare-fun res!384367 () Bool)

(assert (=> b!840836 (=> (not res!384367) (not e!552961))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!218 (Rule!3170 List!9015) Bool)

(assert (=> b!840836 (= res!384367 (ruleDisjointCharsFromAllFromOtherType!218 (h!14400 rules!2621) rules!2621))))

(declare-fun b!840837 () Bool)

(assert (=> b!840837 (= e!552961 (sepAndNonSepRulesDisjointChars!485 rules!2621 (t!93511 rules!2621)))))

(assert (= (and d!261675 (not res!384366)) b!840836))

(assert (= (and b!840836 res!384367) b!840837))

(declare-fun m!1073947 () Bool)

(assert (=> b!840836 m!1073947))

(declare-fun m!1073949 () Bool)

(assert (=> b!840837 m!1073949))

(assert (=> b!840658 d!261675))

(declare-fun d!261677 () Bool)

(declare-fun c!137127 () Bool)

(assert (=> d!261677 (= c!137127 (is-IntegerValue!5253 (value!54723 (h!14399 l!5107))))))

(declare-fun e!552976 () Bool)

(assert (=> d!261677 (= (inv!21 (value!54723 (h!14399 l!5107))) e!552976)))

(declare-fun b!840856 () Bool)

(declare-fun e!552974 () Bool)

(assert (=> b!840856 (= e!552976 e!552974)))

(declare-fun c!137129 () Bool)

(assert (=> b!840856 (= c!137129 (is-IntegerValue!5254 (value!54723 (h!14399 l!5107))))))

(declare-fun b!840857 () Bool)

(declare-fun inv!17 (TokenValue!1751) Bool)

(assert (=> b!840857 (= e!552974 (inv!17 (value!54723 (h!14399 l!5107))))))

(declare-fun b!840858 () Bool)

(declare-fun res!384372 () Bool)

(declare-fun e!552978 () Bool)

(assert (=> b!840858 (=> res!384372 e!552978)))

(assert (=> b!840858 (= res!384372 (not (is-IntegerValue!5255 (value!54723 (h!14399 l!5107)))))))

(assert (=> b!840858 (= e!552974 e!552978)))

(declare-fun b!840859 () Bool)

(declare-fun inv!16 (TokenValue!1751) Bool)

(assert (=> b!840859 (= e!552976 (inv!16 (value!54723 (h!14399 l!5107))))))

(declare-fun b!840860 () Bool)

(declare-fun inv!15 (TokenValue!1751) Bool)

(assert (=> b!840860 (= e!552978 (inv!15 (value!54723 (h!14399 l!5107))))))

(assert (= (and d!261677 c!137127) b!840859))

(assert (= (and d!261677 (not c!137127)) b!840856))

(assert (= (and b!840856 c!137129) b!840857))

(assert (= (and b!840856 (not c!137129)) b!840858))

(assert (= (and b!840858 (not res!384372)) b!840860))

(declare-fun m!1073951 () Bool)

(assert (=> b!840857 m!1073951))

(declare-fun m!1073953 () Bool)

(assert (=> b!840859 m!1073953))

(declare-fun m!1073955 () Bool)

(assert (=> b!840860 m!1073955))

(assert (=> b!840647 d!261677))

(declare-fun d!261679 () Bool)

(assert (=> d!261679 (= (inv!11471 (tag!1947 (h!14400 rules!2621))) (= (mod (str.len (value!54722 (tag!1947 (h!14400 rules!2621)))) 2) 0))))

(assert (=> b!840657 d!261679))

(declare-fun d!261681 () Bool)

(declare-fun res!384374 () Bool)

(declare-fun e!552980 () Bool)

(assert (=> d!261681 (=> (not res!384374) (not e!552980))))

(assert (=> d!261681 (= res!384374 (semiInverseModEq!651 (toChars!2561 (transformation!1685 (h!14400 rules!2621))) (toValue!2702 (transformation!1685 (h!14400 rules!2621)))))))

(assert (=> d!261681 (= (inv!11474 (transformation!1685 (h!14400 rules!2621))) e!552980)))

(declare-fun b!840866 () Bool)

(assert (=> b!840866 (= e!552980 (equivClasses!618 (toChars!2561 (transformation!1685 (h!14400 rules!2621))) (toValue!2702 (transformation!1685 (h!14400 rules!2621)))))))

(assert (= (and d!261681 res!384374) b!840866))

(declare-fun m!1073961 () Bool)

(assert (=> d!261681 m!1073961))

(declare-fun m!1073965 () Bool)

(assert (=> b!840866 m!1073965))

(assert (=> b!840657 d!261681))

(declare-fun bs!229822 () Bool)

(declare-fun d!261683 () Bool)

(assert (= bs!229822 (and d!261683 b!840661)))

(declare-fun lambda!24961 () Int)

(assert (=> bs!229822 (not (= lambda!24961 lambda!24955))))

(declare-fun b!840905 () Bool)

(declare-fun e!553012 () Bool)

(assert (=> b!840905 (= e!553012 true)))

(declare-fun b!840904 () Bool)

(declare-fun e!553011 () Bool)

(assert (=> b!840904 (= e!553011 e!553012)))

(declare-fun b!840903 () Bool)

(declare-fun e!553010 () Bool)

(assert (=> b!840903 (= e!553010 e!553011)))

(assert (=> d!261683 e!553010))

(assert (= b!840904 b!840905))

(assert (= b!840903 b!840904))

(assert (= (and d!261683 (is-Cons!8999 rules!2621)) b!840903))

(declare-fun order!5731 () Int)

(declare-fun order!5729 () Int)

(declare-fun dynLambda!4164 (Int Int) Int)

(declare-fun dynLambda!4165 (Int Int) Int)

(assert (=> b!840905 (< (dynLambda!4164 order!5729 (toValue!2702 (transformation!1685 (h!14400 rules!2621)))) (dynLambda!4165 order!5731 lambda!24961))))

(declare-fun order!5733 () Int)

(declare-fun dynLambda!4166 (Int Int) Int)

(assert (=> b!840905 (< (dynLambda!4166 order!5733 (toChars!2561 (transformation!1685 (h!14400 rules!2621)))) (dynLambda!4165 order!5731 lambda!24961))))

(assert (=> d!261683 true))

(declare-fun lt!318596 () Bool)

(assert (=> d!261683 (= lt!318596 (forall!2100 lt!318522 lambda!24961))))

(declare-fun e!553002 () Bool)

(assert (=> d!261683 (= lt!318596 e!553002)))

(declare-fun res!384397 () Bool)

(assert (=> d!261683 (=> res!384397 e!553002)))

(assert (=> d!261683 (= res!384397 (not (is-Cons!8998 lt!318522)))))

(assert (=> d!261683 (not (isEmpty!5308 rules!2621))))

(assert (=> d!261683 (= (rulesProduceEachTokenIndividuallyList!375 thiss!20117 rules!2621 lt!318522) lt!318596)))

(declare-fun b!840893 () Bool)

(declare-fun e!553003 () Bool)

(assert (=> b!840893 (= e!553002 e!553003)))

(declare-fun res!384398 () Bool)

(assert (=> b!840893 (=> (not res!384398) (not e!553003))))

(assert (=> b!840893 (= res!384398 (rulesProduceIndividualToken!551 thiss!20117 rules!2621 (h!14399 lt!318522)))))

(declare-fun b!840894 () Bool)

(assert (=> b!840894 (= e!553003 (rulesProduceEachTokenIndividuallyList!375 thiss!20117 rules!2621 (t!93510 lt!318522)))))

(assert (= (and d!261683 (not res!384397)) b!840893))

(assert (= (and b!840893 res!384398) b!840894))

(declare-fun m!1073999 () Bool)

(assert (=> d!261683 m!1073999))

(assert (=> d!261683 m!1073725))

(declare-fun m!1074001 () Bool)

(assert (=> b!840893 m!1074001))

(declare-fun m!1074003 () Bool)

(assert (=> b!840894 m!1074003))

(assert (=> b!840656 d!261683))

(declare-fun b!840908 () Bool)

(declare-fun e!553014 () List!9014)

(assert (=> b!840908 (= e!553014 Nil!8998)))

(declare-fun b!840909 () Bool)

(declare-fun res!384401 () Bool)

(declare-fun e!553015 () Bool)

(assert (=> b!840909 (=> (not res!384401) (not e!553015))))

(declare-fun e!553013 () Bool)

(assert (=> b!840909 (= res!384401 e!553013)))

(declare-fun res!384399 () Bool)

(assert (=> b!840909 (=> res!384399 e!553013)))

(assert (=> b!840909 (= res!384399 (not (is-Cons!8998 l!5107)))))

(declare-fun b!840910 () Bool)

(declare-fun e!553017 () List!9013)

(declare-fun lt!318599 () List!9014)

(assert (=> b!840910 (= e!553017 (++!2333 (list!3547 (charsOf!970 (h!14399 lt!318599))) (printList!455 thiss!20117 (t!93510 lt!318599))))))

(declare-fun b!840911 () Bool)

(declare-fun e!553018 () List!9013)

(declare-fun lt!318603 () List!9014)

(assert (=> b!840911 (= e!553018 (++!2333 (list!3547 (charsOf!970 (h!14399 lt!318603))) (printList!455 thiss!20117 (t!93510 lt!318603))))))

(declare-fun b!840912 () Bool)

(declare-fun e!553016 () Bool)

(assert (=> b!840912 (= e!553015 e!553016)))

(declare-fun res!384400 () Bool)

(assert (=> b!840912 (=> res!384400 e!553016)))

(assert (=> b!840912 (= res!384400 (not (is-Cons!8998 l!5107)))))

(declare-fun b!840913 () Bool)

(assert (=> b!840913 (= e!553014 ($colon$colon!68 ($colon$colon!68 (withSeparatorTokenList!17 thiss!20117 (t!93510 l!5107) separatorToken!297) separatorToken!297) (h!14399 l!5107)))))

(declare-fun lt!318601 () List!9013)

(assert (=> b!840913 (= lt!318601 (list!3547 (charsOf!970 (h!14399 l!5107))))))

(declare-fun lt!318600 () List!9013)

(assert (=> b!840913 (= lt!318600 (list!3547 (charsOf!970 separatorToken!297)))))

(declare-fun lt!318604 () List!9013)

(assert (=> b!840913 (= lt!318604 (printList!455 thiss!20117 (withSeparatorTokenList!17 thiss!20117 (t!93510 l!5107) separatorToken!297)))))

(declare-fun lt!318602 () Unit!13446)

(assert (=> b!840913 (= lt!318602 (lemmaConcatAssociativity!730 lt!318601 lt!318600 lt!318604))))

(assert (=> b!840913 (= (++!2333 (++!2333 lt!318601 lt!318600) lt!318604) (++!2333 lt!318601 (++!2333 lt!318600 lt!318604)))))

(declare-fun lt!318598 () Unit!13446)

(assert (=> b!840913 (= lt!318598 lt!318602)))

(declare-fun b!840914 () Bool)

(assert (=> b!840914 (= e!553013 (= (printList!455 thiss!20117 ($colon$colon!68 ($colon$colon!68 (withSeparatorTokenList!17 thiss!20117 (t!93510 l!5107) separatorToken!297) separatorToken!297) (h!14399 l!5107))) e!553017))))

(declare-fun c!137134 () Bool)

(assert (=> b!840914 (= c!137134 (is-Cons!8998 lt!318599))))

(assert (=> b!840914 (= lt!318599 ($colon$colon!68 ($colon$colon!68 (withSeparatorTokenList!17 thiss!20117 (t!93510 l!5107) separatorToken!297) separatorToken!297) (h!14399 l!5107)))))

(declare-fun b!840915 () Bool)

(assert (=> b!840915 (= e!553018 Nil!8997)))

(declare-fun d!261697 () Bool)

(declare-fun lt!318597 () List!9014)

(assert (=> d!261697 (= (printList!455 thiss!20117 lt!318597) (printWithSeparatorTokenList!13 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!261697 (= lt!318597 e!553014)))

(declare-fun c!137135 () Bool)

(assert (=> d!261697 (= c!137135 (is-Cons!8998 l!5107))))

(assert (=> d!261697 e!553015))

(declare-fun res!384402 () Bool)

(assert (=> d!261697 (=> (not res!384402) (not e!553015))))

(assert (=> d!261697 (= res!384402 (isSeparator!1685 (rule!3108 separatorToken!297)))))

(assert (=> d!261697 (= (withSeparatorTokenList!17 thiss!20117 l!5107 separatorToken!297) lt!318597)))

(declare-fun b!840916 () Bool)

(assert (=> b!840916 (= e!553016 (= (printList!455 thiss!20117 ($colon$colon!68 (withSeparatorTokenList!17 thiss!20117 (t!93510 l!5107) separatorToken!297) separatorToken!297)) e!553018))))

(declare-fun c!137133 () Bool)

(assert (=> b!840916 (= c!137133 (is-Cons!8998 lt!318603))))

(assert (=> b!840916 (= lt!318603 ($colon$colon!68 (withSeparatorTokenList!17 thiss!20117 (t!93510 l!5107) separatorToken!297) separatorToken!297))))

(declare-fun b!840917 () Bool)

(assert (=> b!840917 (= e!553017 Nil!8997)))

(assert (= (and d!261697 res!384402) b!840909))

(assert (= (and b!840909 (not res!384399)) b!840914))

(assert (= (and b!840914 c!137134) b!840910))

(assert (= (and b!840914 (not c!137134)) b!840917))

(assert (= (and b!840909 res!384401) b!840912))

(assert (= (and b!840912 (not res!384400)) b!840916))

(assert (= (and b!840916 c!137133) b!840911))

(assert (= (and b!840916 (not c!137133)) b!840915))

(assert (= (and d!261697 c!137135) b!840913))

(assert (= (and d!261697 (not c!137135)) b!840908))

(declare-fun m!1074005 () Bool)

(assert (=> b!840916 m!1074005))

(assert (=> b!840916 m!1074005))

(declare-fun m!1074007 () Bool)

(assert (=> b!840916 m!1074007))

(assert (=> b!840916 m!1074007))

(declare-fun m!1074009 () Bool)

(assert (=> b!840916 m!1074009))

(assert (=> b!840914 m!1074005))

(assert (=> b!840914 m!1074005))

(assert (=> b!840914 m!1074007))

(assert (=> b!840914 m!1074007))

(declare-fun m!1074011 () Bool)

(assert (=> b!840914 m!1074011))

(assert (=> b!840914 m!1074011))

(declare-fun m!1074013 () Bool)

(assert (=> b!840914 m!1074013))

(assert (=> b!840913 m!1074005))

(assert (=> b!840913 m!1074007))

(assert (=> b!840913 m!1074011))

(declare-fun m!1074015 () Bool)

(assert (=> b!840913 m!1074015))

(declare-fun m!1074017 () Bool)

(assert (=> b!840913 m!1074017))

(declare-fun m!1074019 () Bool)

(assert (=> b!840913 m!1074019))

(assert (=> b!840913 m!1074015))

(declare-fun m!1074021 () Bool)

(assert (=> b!840913 m!1074021))

(declare-fun m!1074023 () Bool)

(assert (=> b!840913 m!1074023))

(declare-fun m!1074025 () Bool)

(assert (=> b!840913 m!1074025))

(assert (=> b!840913 m!1073823))

(assert (=> b!840913 m!1073825))

(assert (=> b!840913 m!1074023))

(assert (=> b!840913 m!1073823))

(assert (=> b!840913 m!1074019))

(declare-fun m!1074027 () Bool)

(assert (=> b!840913 m!1074027))

(assert (=> b!840913 m!1074005))

(declare-fun m!1074029 () Bool)

(assert (=> b!840913 m!1074029))

(assert (=> b!840913 m!1074005))

(assert (=> b!840913 m!1074007))

(declare-fun m!1074031 () Bool)

(assert (=> d!261697 m!1074031))

(declare-fun m!1074033 () Bool)

(assert (=> d!261697 m!1074033))

(declare-fun m!1074035 () Bool)

(assert (=> b!840910 m!1074035))

(assert (=> b!840910 m!1074035))

(declare-fun m!1074037 () Bool)

(assert (=> b!840910 m!1074037))

(declare-fun m!1074039 () Bool)

(assert (=> b!840910 m!1074039))

(assert (=> b!840910 m!1074037))

(assert (=> b!840910 m!1074039))

(declare-fun m!1074041 () Bool)

(assert (=> b!840910 m!1074041))

(declare-fun m!1074043 () Bool)

(assert (=> b!840911 m!1074043))

(assert (=> b!840911 m!1074043))

(declare-fun m!1074045 () Bool)

(assert (=> b!840911 m!1074045))

(declare-fun m!1074047 () Bool)

(assert (=> b!840911 m!1074047))

(assert (=> b!840911 m!1074045))

(assert (=> b!840911 m!1074047))

(declare-fun m!1074049 () Bool)

(assert (=> b!840911 m!1074049))

(assert (=> b!840656 d!261697))

(declare-fun d!261699 () Bool)

(assert (=> d!261699 (rulesProduceEachTokenIndividuallyList!375 thiss!20117 rules!2621 (withSeparatorTokenList!17 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!318607 () Unit!13446)

(declare-fun choose!4953 (LexerInterface!1487 List!9015 List!9014 Token!3036) Unit!13446)

(assert (=> d!261699 (= lt!318607 (choose!4953 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!261699 (not (isEmpty!5308 rules!2621))))

(assert (=> d!261699 (= (withSeparatorTokenListPreservesRulesProduceTokens!17 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!318607)))

(declare-fun bs!229823 () Bool)

(assert (= bs!229823 d!261699))

(assert (=> bs!229823 m!1073747))

(assert (=> bs!229823 m!1073747))

(declare-fun m!1074051 () Bool)

(assert (=> bs!229823 m!1074051))

(declare-fun m!1074053 () Bool)

(assert (=> bs!229823 m!1074053))

(assert (=> bs!229823 m!1073725))

(assert (=> b!840656 d!261699))

(declare-fun bs!229824 () Bool)

(declare-fun d!261701 () Bool)

(assert (= bs!229824 (and d!261701 b!840661)))

(declare-fun lambda!24962 () Int)

(assert (=> bs!229824 (not (= lambda!24962 lambda!24955))))

(declare-fun bs!229825 () Bool)

(assert (= bs!229825 (and d!261701 d!261683)))

(assert (=> bs!229825 (= lambda!24962 lambda!24961)))

(declare-fun b!840922 () Bool)

(declare-fun e!553023 () Bool)

(assert (=> b!840922 (= e!553023 true)))

(declare-fun b!840921 () Bool)

(declare-fun e!553022 () Bool)

(assert (=> b!840921 (= e!553022 e!553023)))

(declare-fun b!840920 () Bool)

(declare-fun e!553021 () Bool)

(assert (=> b!840920 (= e!553021 e!553022)))

(assert (=> d!261701 e!553021))

(assert (= b!840921 b!840922))

(assert (= b!840920 b!840921))

(assert (= (and d!261701 (is-Cons!8999 rules!2621)) b!840920))

(assert (=> b!840922 (< (dynLambda!4164 order!5729 (toValue!2702 (transformation!1685 (h!14400 rules!2621)))) (dynLambda!4165 order!5731 lambda!24962))))

(assert (=> b!840922 (< (dynLambda!4166 order!5733 (toChars!2561 (transformation!1685 (h!14400 rules!2621)))) (dynLambda!4165 order!5731 lambda!24962))))

(assert (=> d!261701 true))

(declare-fun lt!318608 () Bool)

(assert (=> d!261701 (= lt!318608 (forall!2100 l!5107 lambda!24962))))

(declare-fun e!553019 () Bool)

(assert (=> d!261701 (= lt!318608 e!553019)))

(declare-fun res!384403 () Bool)

(assert (=> d!261701 (=> res!384403 e!553019)))

(assert (=> d!261701 (= res!384403 (not (is-Cons!8998 l!5107)))))

(assert (=> d!261701 (not (isEmpty!5308 rules!2621))))

(assert (=> d!261701 (= (rulesProduceEachTokenIndividuallyList!375 thiss!20117 rules!2621 l!5107) lt!318608)))

(declare-fun b!840918 () Bool)

(declare-fun e!553020 () Bool)

(assert (=> b!840918 (= e!553019 e!553020)))

(declare-fun res!384404 () Bool)

(assert (=> b!840918 (=> (not res!384404) (not e!553020))))

(assert (=> b!840918 (= res!384404 (rulesProduceIndividualToken!551 thiss!20117 rules!2621 (h!14399 l!5107)))))

(declare-fun b!840919 () Bool)

(assert (=> b!840919 (= e!553020 (rulesProduceEachTokenIndividuallyList!375 thiss!20117 rules!2621 (t!93510 l!5107)))))

(assert (= (and d!261701 (not res!384403)) b!840918))

(assert (= (and b!840918 res!384404) b!840919))

(declare-fun m!1074055 () Bool)

(assert (=> d!261701 m!1074055))

(assert (=> d!261701 m!1073725))

(declare-fun m!1074057 () Bool)

(assert (=> b!840918 m!1074057))

(declare-fun m!1074059 () Bool)

(assert (=> b!840919 m!1074059))

(assert (=> b!840655 d!261701))

(declare-fun d!261703 () Bool)

(assert (=> d!261703 (= (inv!11471 (tag!1947 (rule!3108 (h!14399 l!5107)))) (= (mod (str.len (value!54722 (tag!1947 (rule!3108 (h!14399 l!5107))))) 2) 0))))

(assert (=> b!840644 d!261703))

(declare-fun d!261705 () Bool)

(declare-fun res!384405 () Bool)

(declare-fun e!553024 () Bool)

(assert (=> d!261705 (=> (not res!384405) (not e!553024))))

(assert (=> d!261705 (= res!384405 (semiInverseModEq!651 (toChars!2561 (transformation!1685 (rule!3108 (h!14399 l!5107)))) (toValue!2702 (transformation!1685 (rule!3108 (h!14399 l!5107))))))))

(assert (=> d!261705 (= (inv!11474 (transformation!1685 (rule!3108 (h!14399 l!5107)))) e!553024)))

(declare-fun b!840923 () Bool)

(assert (=> b!840923 (= e!553024 (equivClasses!618 (toChars!2561 (transformation!1685 (rule!3108 (h!14399 l!5107)))) (toValue!2702 (transformation!1685 (rule!3108 (h!14399 l!5107))))))))

(assert (= (and d!261705 res!384405) b!840923))

(declare-fun m!1074061 () Bool)

(assert (=> d!261705 m!1074061))

(declare-fun m!1074063 () Bool)

(assert (=> b!840923 m!1074063))

(assert (=> b!840644 d!261705))

(declare-fun d!261707 () Bool)

(declare-fun prefixMatchZipperSequence!6 (Regex!2118 BalanceConc!5986) Bool)

(declare-fun rulesRegex!5 (LexerInterface!1487 List!9015) Regex!2118)

(declare-fun ++!2334 (BalanceConc!5986 BalanceConc!5986) BalanceConc!5986)

(declare-fun singletonSeq!503 (C!4806) BalanceConc!5986)

(declare-fun apply!1813 (BalanceConc!5986 Int) C!4806)

(assert (=> d!261707 (= (separableTokensPredicate!27 thiss!20117 (h!14399 lt!318522) (h!14399 (t!93510 lt!318522)) rules!2621) (not (prefixMatchZipperSequence!6 (rulesRegex!5 thiss!20117 rules!2621) (++!2334 (charsOf!970 (h!14399 lt!318522)) (singletonSeq!503 (apply!1813 (charsOf!970 (h!14399 (t!93510 lt!318522))) 0))))))))

(declare-fun bs!229826 () Bool)

(assert (= bs!229826 d!261707))

(declare-fun m!1074065 () Bool)

(assert (=> bs!229826 m!1074065))

(declare-fun m!1074067 () Bool)

(assert (=> bs!229826 m!1074067))

(declare-fun m!1074069 () Bool)

(assert (=> bs!229826 m!1074069))

(assert (=> bs!229826 m!1074065))

(assert (=> bs!229826 m!1074067))

(declare-fun m!1074071 () Bool)

(assert (=> bs!229826 m!1074071))

(declare-fun m!1074073 () Bool)

(assert (=> bs!229826 m!1074073))

(assert (=> bs!229826 m!1074069))

(declare-fun m!1074075 () Bool)

(assert (=> bs!229826 m!1074075))

(assert (=> bs!229826 m!1074073))

(assert (=> bs!229826 m!1074071))

(assert (=> bs!229826 m!1074075))

(declare-fun m!1074077 () Bool)

(assert (=> bs!229826 m!1074077))

(assert (=> b!840665 d!261707))

(declare-fun d!261709 () Bool)

(assert (=> d!261709 (separableTokensPredicate!27 thiss!20117 (h!14399 lt!318522) (h!14399 (t!93510 lt!318522)) rules!2621)))

(declare-fun lt!318611 () Unit!13446)

(declare-fun choose!4954 (LexerInterface!1487 Token!3036 Token!3036 List!9015) Unit!13446)

(assert (=> d!261709 (= lt!318611 (choose!4954 thiss!20117 (h!14399 lt!318522) (h!14399 (t!93510 lt!318522)) rules!2621))))

(assert (=> d!261709 (not (isEmpty!5308 rules!2621))))

(assert (=> d!261709 (= (lemmaTokensOfDifferentKindsAreSeparable!9 thiss!20117 (h!14399 lt!318522) (h!14399 (t!93510 lt!318522)) rules!2621) lt!318611)))

(declare-fun bs!229827 () Bool)

(assert (= bs!229827 d!261709))

(assert (=> bs!229827 m!1073731))

(declare-fun m!1074079 () Bool)

(assert (=> bs!229827 m!1074079))

(assert (=> bs!229827 m!1073725))

(assert (=> b!840665 d!261709))

(declare-fun d!261711 () Bool)

(declare-fun res!384406 () Bool)

(declare-fun e!553025 () Bool)

(assert (=> d!261711 (=> (not res!384406) (not e!553025))))

(assert (=> d!261711 (= res!384406 (not (isEmpty!5311 (originalCharacters!2241 (h!14399 l!5107)))))))

(assert (=> d!261711 (= (inv!11475 (h!14399 l!5107)) e!553025)))

(declare-fun b!840924 () Bool)

(declare-fun res!384407 () Bool)

(assert (=> b!840924 (=> (not res!384407) (not e!553025))))

(assert (=> b!840924 (= res!384407 (= (originalCharacters!2241 (h!14399 l!5107)) (list!3547 (dynLambda!4163 (toChars!2561 (transformation!1685 (rule!3108 (h!14399 l!5107)))) (value!54723 (h!14399 l!5107))))))))

(declare-fun b!840925 () Bool)

(assert (=> b!840925 (= e!553025 (= (size!7530 (h!14399 l!5107)) (size!7533 (originalCharacters!2241 (h!14399 l!5107)))))))

(assert (= (and d!261711 res!384406) b!840924))

(assert (= (and b!840924 res!384407) b!840925))

(declare-fun b_lambda!27661 () Bool)

(assert (=> (not b_lambda!27661) (not b!840924)))

(declare-fun t!93529 () Bool)

(declare-fun tb!57999 () Bool)

(assert (=> (and b!840664 (= (toChars!2561 (transformation!1685 (rule!3108 separatorToken!297))) (toChars!2561 (transformation!1685 (rule!3108 (h!14399 l!5107))))) t!93529) tb!57999))

(declare-fun b!840926 () Bool)

(declare-fun e!553026 () Bool)

(declare-fun tp!264348 () Bool)

(assert (=> b!840926 (= e!553026 (and (inv!11478 (c!137098 (dynLambda!4163 (toChars!2561 (transformation!1685 (rule!3108 (h!14399 l!5107)))) (value!54723 (h!14399 l!5107))))) tp!264348))))

(declare-fun result!67262 () Bool)

(assert (=> tb!57999 (= result!67262 (and (inv!11479 (dynLambda!4163 (toChars!2561 (transformation!1685 (rule!3108 (h!14399 l!5107)))) (value!54723 (h!14399 l!5107)))) e!553026))))

(assert (= tb!57999 b!840926))

(declare-fun m!1074081 () Bool)

(assert (=> b!840926 m!1074081))

(declare-fun m!1074083 () Bool)

(assert (=> tb!57999 m!1074083))

(assert (=> b!840924 t!93529))

(declare-fun b_and!72655 () Bool)

(assert (= b_and!72649 (and (=> t!93529 result!67262) b_and!72655)))

(declare-fun t!93531 () Bool)

(declare-fun tb!58001 () Bool)

(assert (=> (and b!840648 (= (toChars!2561 (transformation!1685 (rule!3108 (h!14399 l!5107)))) (toChars!2561 (transformation!1685 (rule!3108 (h!14399 l!5107))))) t!93531) tb!58001))

(declare-fun result!67264 () Bool)

(assert (= result!67264 result!67262))

(assert (=> b!840924 t!93531))

(declare-fun b_and!72657 () Bool)

(assert (= b_and!72651 (and (=> t!93531 result!67264) b_and!72657)))

(declare-fun tb!58003 () Bool)

(declare-fun t!93533 () Bool)

(assert (=> (and b!840659 (= (toChars!2561 (transformation!1685 (h!14400 rules!2621))) (toChars!2561 (transformation!1685 (rule!3108 (h!14399 l!5107))))) t!93533) tb!58003))

(declare-fun result!67266 () Bool)

(assert (= result!67266 result!67262))

(assert (=> b!840924 t!93533))

(declare-fun b_and!72659 () Bool)

(assert (= b_and!72653 (and (=> t!93533 result!67266) b_and!72659)))

(declare-fun m!1074085 () Bool)

(assert (=> d!261711 m!1074085))

(declare-fun m!1074087 () Bool)

(assert (=> b!840924 m!1074087))

(assert (=> b!840924 m!1074087))

(declare-fun m!1074089 () Bool)

(assert (=> b!840924 m!1074089))

(declare-fun m!1074091 () Bool)

(assert (=> b!840925 m!1074091))

(assert (=> b!840654 d!261711))

(declare-fun d!261713 () Bool)

(assert (=> d!261713 (= (head!1445 l!5107) (h!14399 l!5107))))

(assert (=> b!840663 d!261713))

(declare-fun d!261715 () Bool)

(declare-fun c!137136 () Bool)

(assert (=> d!261715 (= c!137136 (is-IntegerValue!5253 (value!54723 separatorToken!297)))))

(declare-fun e!553028 () Bool)

(assert (=> d!261715 (= (inv!21 (value!54723 separatorToken!297)) e!553028)))

(declare-fun b!840927 () Bool)

(declare-fun e!553027 () Bool)

(assert (=> b!840927 (= e!553028 e!553027)))

(declare-fun c!137137 () Bool)

(assert (=> b!840927 (= c!137137 (is-IntegerValue!5254 (value!54723 separatorToken!297)))))

(declare-fun b!840928 () Bool)

(assert (=> b!840928 (= e!553027 (inv!17 (value!54723 separatorToken!297)))))

(declare-fun b!840929 () Bool)

(declare-fun res!384408 () Bool)

(declare-fun e!553029 () Bool)

(assert (=> b!840929 (=> res!384408 e!553029)))

(assert (=> b!840929 (= res!384408 (not (is-IntegerValue!5255 (value!54723 separatorToken!297))))))

(assert (=> b!840929 (= e!553027 e!553029)))

(declare-fun b!840930 () Bool)

(assert (=> b!840930 (= e!553028 (inv!16 (value!54723 separatorToken!297)))))

(declare-fun b!840931 () Bool)

(assert (=> b!840931 (= e!553029 (inv!15 (value!54723 separatorToken!297)))))

(assert (= (and d!261715 c!137136) b!840930))

(assert (= (and d!261715 (not c!137136)) b!840927))

(assert (= (and b!840927 c!137137) b!840928))

(assert (= (and b!840927 (not c!137137)) b!840929))

(assert (= (and b!840929 (not res!384408)) b!840931))

(declare-fun m!1074093 () Bool)

(assert (=> b!840928 m!1074093))

(declare-fun m!1074095 () Bool)

(assert (=> b!840930 m!1074095))

(declare-fun m!1074097 () Bool)

(assert (=> b!840931 m!1074097))

(assert (=> b!840652 d!261715))

(declare-fun d!261717 () Bool)

(declare-fun res!384411 () Bool)

(declare-fun e!553032 () Bool)

(assert (=> d!261717 (=> (not res!384411) (not e!553032))))

(declare-fun rulesValid!582 (LexerInterface!1487 List!9015) Bool)

(assert (=> d!261717 (= res!384411 (rulesValid!582 thiss!20117 rules!2621))))

(assert (=> d!261717 (= (rulesInvariant!1363 thiss!20117 rules!2621) e!553032)))

(declare-fun b!840934 () Bool)

(declare-datatypes ((List!9020 0))(
  ( (Nil!9004) (Cons!9004 (h!14405 String!10655) (t!93554 List!9020)) )
))
(declare-fun noDuplicateTag!582 (LexerInterface!1487 List!9015 List!9020) Bool)

(assert (=> b!840934 (= e!553032 (noDuplicateTag!582 thiss!20117 rules!2621 Nil!9004))))

(assert (= (and d!261717 res!384411) b!840934))

(declare-fun m!1074099 () Bool)

(assert (=> d!261717 m!1074099))

(declare-fun m!1074101 () Bool)

(assert (=> b!840934 m!1074101))

(assert (=> b!840662 d!261717))

(declare-fun b!840946 () Bool)

(declare-fun e!553035 () Bool)

(declare-fun tp!264359 () Bool)

(declare-fun tp!264360 () Bool)

(assert (=> b!840946 (= e!553035 (and tp!264359 tp!264360))))

(assert (=> b!840644 (= tp!264297 e!553035)))

(declare-fun b!840945 () Bool)

(declare-fun tp_is_empty!3935 () Bool)

(assert (=> b!840945 (= e!553035 tp_is_empty!3935)))

(declare-fun b!840947 () Bool)

(declare-fun tp!264362 () Bool)

(assert (=> b!840947 (= e!553035 tp!264362)))

(declare-fun b!840948 () Bool)

(declare-fun tp!264361 () Bool)

(declare-fun tp!264363 () Bool)

(assert (=> b!840948 (= e!553035 (and tp!264361 tp!264363))))

(assert (= (and b!840644 (is-ElementMatch!2118 (regex!1685 (rule!3108 (h!14399 l!5107))))) b!840945))

(assert (= (and b!840644 (is-Concat!3870 (regex!1685 (rule!3108 (h!14399 l!5107))))) b!840946))

(assert (= (and b!840644 (is-Star!2118 (regex!1685 (rule!3108 (h!14399 l!5107))))) b!840947))

(assert (= (and b!840644 (is-Union!2118 (regex!1685 (rule!3108 (h!14399 l!5107))))) b!840948))

(declare-fun b!840950 () Bool)

(declare-fun e!553036 () Bool)

(declare-fun tp!264364 () Bool)

(declare-fun tp!264365 () Bool)

(assert (=> b!840950 (= e!553036 (and tp!264364 tp!264365))))

(assert (=> b!840649 (= tp!264302 e!553036)))

(declare-fun b!840949 () Bool)

(assert (=> b!840949 (= e!553036 tp_is_empty!3935)))

(declare-fun b!840951 () Bool)

(declare-fun tp!264367 () Bool)

(assert (=> b!840951 (= e!553036 tp!264367)))

(declare-fun b!840952 () Bool)

(declare-fun tp!264366 () Bool)

(declare-fun tp!264368 () Bool)

(assert (=> b!840952 (= e!553036 (and tp!264366 tp!264368))))

(assert (= (and b!840649 (is-ElementMatch!2118 (regex!1685 (rule!3108 separatorToken!297)))) b!840949))

(assert (= (and b!840649 (is-Concat!3870 (regex!1685 (rule!3108 separatorToken!297)))) b!840950))

(assert (= (and b!840649 (is-Star!2118 (regex!1685 (rule!3108 separatorToken!297)))) b!840951))

(assert (= (and b!840649 (is-Union!2118 (regex!1685 (rule!3108 separatorToken!297)))) b!840952))

(declare-fun b!840966 () Bool)

(declare-fun b_free!25061 () Bool)

(declare-fun b_next!25125 () Bool)

(assert (=> b!840966 (= b_free!25061 (not b_next!25125))))

(declare-fun tp!264382 () Bool)

(declare-fun b_and!72661 () Bool)

(assert (=> b!840966 (= tp!264382 b_and!72661)))

(declare-fun b_free!25063 () Bool)

(declare-fun b_next!25127 () Bool)

(assert (=> b!840966 (= b_free!25063 (not b_next!25127))))

(declare-fun tb!58005 () Bool)

(declare-fun t!93535 () Bool)

(assert (=> (and b!840966 (= (toChars!2561 (transformation!1685 (rule!3108 (h!14399 (t!93510 l!5107))))) (toChars!2561 (transformation!1685 (rule!3108 separatorToken!297)))) t!93535) tb!58005))

(declare-fun result!67272 () Bool)

(assert (= result!67272 result!67254))

(assert (=> b!840821 t!93535))

(declare-fun t!93537 () Bool)

(declare-fun tb!58007 () Bool)

(assert (=> (and b!840966 (= (toChars!2561 (transformation!1685 (rule!3108 (h!14399 (t!93510 l!5107))))) (toChars!2561 (transformation!1685 (rule!3108 (h!14399 l!5107))))) t!93537) tb!58007))

(declare-fun result!67274 () Bool)

(assert (= result!67274 result!67262))

(assert (=> b!840924 t!93537))

(declare-fun b_and!72663 () Bool)

(declare-fun tp!264381 () Bool)

(assert (=> b!840966 (= tp!264381 (and (=> t!93535 result!67272) (=> t!93537 result!67274) b_and!72663))))

(declare-fun e!553050 () Bool)

(declare-fun tp!264379 () Bool)

(declare-fun e!553053 () Bool)

(declare-fun b!840964 () Bool)

(assert (=> b!840964 (= e!553050 (and (inv!21 (value!54723 (h!14399 (t!93510 l!5107)))) e!553053 tp!264379))))

(declare-fun e!553051 () Bool)

(assert (=> b!840654 (= tp!264298 e!553051)))

(declare-fun e!553049 () Bool)

(declare-fun tp!264380 () Bool)

(declare-fun b!840965 () Bool)

(assert (=> b!840965 (= e!553053 (and tp!264380 (inv!11471 (tag!1947 (rule!3108 (h!14399 (t!93510 l!5107))))) (inv!11474 (transformation!1685 (rule!3108 (h!14399 (t!93510 l!5107))))) e!553049))))

(assert (=> b!840966 (= e!553049 (and tp!264382 tp!264381))))

(declare-fun b!840963 () Bool)

(declare-fun tp!264383 () Bool)

(assert (=> b!840963 (= e!553051 (and (inv!11475 (h!14399 (t!93510 l!5107))) e!553050 tp!264383))))

(assert (= b!840965 b!840966))

(assert (= b!840964 b!840965))

(assert (= b!840963 b!840964))

(assert (= (and b!840654 (is-Cons!8998 (t!93510 l!5107))) b!840963))

(declare-fun m!1074103 () Bool)

(assert (=> b!840964 m!1074103))

(declare-fun m!1074105 () Bool)

(assert (=> b!840965 m!1074105))

(declare-fun m!1074107 () Bool)

(assert (=> b!840965 m!1074107))

(declare-fun m!1074109 () Bool)

(assert (=> b!840963 m!1074109))

(declare-fun b!840971 () Bool)

(declare-fun e!553057 () Bool)

(declare-fun tp!264386 () Bool)

(assert (=> b!840971 (= e!553057 (and tp_is_empty!3935 tp!264386))))

(assert (=> b!840647 (= tp!264304 e!553057)))

(assert (= (and b!840647 (is-Cons!8997 (originalCharacters!2241 (h!14399 l!5107)))) b!840971))

(declare-fun b!840972 () Bool)

(declare-fun e!553058 () Bool)

(declare-fun tp!264387 () Bool)

(assert (=> b!840972 (= e!553058 (and tp_is_empty!3935 tp!264387))))

(assert (=> b!840652 (= tp!264305 e!553058)))

(assert (= (and b!840652 (is-Cons!8997 (originalCharacters!2241 separatorToken!297))) b!840972))

(declare-fun b!840974 () Bool)

(declare-fun e!553059 () Bool)

(declare-fun tp!264388 () Bool)

(declare-fun tp!264389 () Bool)

(assert (=> b!840974 (= e!553059 (and tp!264388 tp!264389))))

(assert (=> b!840657 (= tp!264303 e!553059)))

(declare-fun b!840973 () Bool)

(assert (=> b!840973 (= e!553059 tp_is_empty!3935)))

(declare-fun b!840975 () Bool)

(declare-fun tp!264391 () Bool)

(assert (=> b!840975 (= e!553059 tp!264391)))

(declare-fun b!840976 () Bool)

(declare-fun tp!264390 () Bool)

(declare-fun tp!264392 () Bool)

(assert (=> b!840976 (= e!553059 (and tp!264390 tp!264392))))

(assert (= (and b!840657 (is-ElementMatch!2118 (regex!1685 (h!14400 rules!2621)))) b!840973))

(assert (= (and b!840657 (is-Concat!3870 (regex!1685 (h!14400 rules!2621)))) b!840974))

(assert (= (and b!840657 (is-Star!2118 (regex!1685 (h!14400 rules!2621)))) b!840975))

(assert (= (and b!840657 (is-Union!2118 (regex!1685 (h!14400 rules!2621)))) b!840976))

(declare-fun b!840987 () Bool)

(declare-fun b_free!25065 () Bool)

(declare-fun b_next!25129 () Bool)

(assert (=> b!840987 (= b_free!25065 (not b_next!25129))))

(declare-fun tp!264402 () Bool)

(declare-fun b_and!72665 () Bool)

(assert (=> b!840987 (= tp!264402 b_and!72665)))

(declare-fun b_free!25067 () Bool)

(declare-fun b_next!25131 () Bool)

(assert (=> b!840987 (= b_free!25067 (not b_next!25131))))

(declare-fun t!93539 () Bool)

(declare-fun tb!58009 () Bool)

(assert (=> (and b!840987 (= (toChars!2561 (transformation!1685 (h!14400 (t!93511 rules!2621)))) (toChars!2561 (transformation!1685 (rule!3108 separatorToken!297)))) t!93539) tb!58009))

(declare-fun result!67280 () Bool)

(assert (= result!67280 result!67254))

(assert (=> b!840821 t!93539))

(declare-fun tb!58011 () Bool)

(declare-fun t!93541 () Bool)

(assert (=> (and b!840987 (= (toChars!2561 (transformation!1685 (h!14400 (t!93511 rules!2621)))) (toChars!2561 (transformation!1685 (rule!3108 (h!14399 l!5107))))) t!93541) tb!58011))

(declare-fun result!67282 () Bool)

(assert (= result!67282 result!67262))

(assert (=> b!840924 t!93541))

(declare-fun tp!264403 () Bool)

(declare-fun b_and!72667 () Bool)

(assert (=> b!840987 (= tp!264403 (and (=> t!93539 result!67280) (=> t!93541 result!67282) b_and!72667))))

(declare-fun e!553071 () Bool)

(assert (=> b!840987 (= e!553071 (and tp!264402 tp!264403))))

(declare-fun tp!264401 () Bool)

(declare-fun b!840986 () Bool)

(declare-fun e!553070 () Bool)

(assert (=> b!840986 (= e!553070 (and tp!264401 (inv!11471 (tag!1947 (h!14400 (t!93511 rules!2621)))) (inv!11474 (transformation!1685 (h!14400 (t!93511 rules!2621)))) e!553071))))

(declare-fun b!840985 () Bool)

(declare-fun e!553069 () Bool)

(declare-fun tp!264404 () Bool)

(assert (=> b!840985 (= e!553069 (and e!553070 tp!264404))))

(assert (=> b!840646 (= tp!264300 e!553069)))

(assert (= b!840986 b!840987))

(assert (= b!840985 b!840986))

(assert (= (and b!840646 (is-Cons!8999 (t!93511 rules!2621))) b!840985))

(declare-fun m!1074111 () Bool)

(assert (=> b!840986 m!1074111))

(declare-fun m!1074113 () Bool)

(assert (=> b!840986 m!1074113))

(declare-fun b_lambda!27663 () Bool)

(assert (= b_lambda!27657 (or (and b!840659 b_free!25047 (= (toChars!2561 (transformation!1685 (h!14400 rules!2621))) (toChars!2561 (transformation!1685 (rule!3108 separatorToken!297))))) (and b!840648 b_free!25043 (= (toChars!2561 (transformation!1685 (rule!3108 (h!14399 l!5107)))) (toChars!2561 (transformation!1685 (rule!3108 separatorToken!297))))) (and b!840966 b_free!25063 (= (toChars!2561 (transformation!1685 (rule!3108 (h!14399 (t!93510 l!5107))))) (toChars!2561 (transformation!1685 (rule!3108 separatorToken!297))))) (and b!840987 b_free!25067 (= (toChars!2561 (transformation!1685 (h!14400 (t!93511 rules!2621)))) (toChars!2561 (transformation!1685 (rule!3108 separatorToken!297))))) (and b!840664 b_free!25039) b_lambda!27663)))

(declare-fun b_lambda!27665 () Bool)

(assert (= b_lambda!27655 (or b!840661 b_lambda!27665)))

(declare-fun bs!229828 () Bool)

(declare-fun d!261719 () Bool)

(assert (= bs!229828 (and d!261719 b!840661)))

(assert (=> bs!229828 (= (dynLambda!4162 lambda!24955 (h!14399 l!5107)) (not (isSeparator!1685 (rule!3108 (h!14399 l!5107)))))))

(assert (=> b!840766 d!261719))

(declare-fun b_lambda!27667 () Bool)

(assert (= b_lambda!27661 (or (and b!840659 b_free!25047 (= (toChars!2561 (transformation!1685 (h!14400 rules!2621))) (toChars!2561 (transformation!1685 (rule!3108 (h!14399 l!5107)))))) (and b!840966 b_free!25063 (= (toChars!2561 (transformation!1685 (rule!3108 (h!14399 (t!93510 l!5107))))) (toChars!2561 (transformation!1685 (rule!3108 (h!14399 l!5107)))))) (and b!840664 b_free!25039 (= (toChars!2561 (transformation!1685 (rule!3108 separatorToken!297))) (toChars!2561 (transformation!1685 (rule!3108 (h!14399 l!5107)))))) (and b!840987 b_free!25067 (= (toChars!2561 (transformation!1685 (h!14400 (t!93511 rules!2621)))) (toChars!2561 (transformation!1685 (rule!3108 (h!14399 l!5107)))))) (and b!840648 b_free!25043) b_lambda!27667)))

(push 1)

(assert (not d!261707))

(assert (not d!261665))

(assert (not b!840860))

(assert b_and!72655)

(assert (not b!840934))

(assert (not b!840974))

(assert (not b_next!25101))

(assert (not b!840952))

(assert b_and!72625)

(assert (not tb!57993))

(assert (not b!840821))

(assert (not b!840950))

(assert (not b!840916))

(assert b_and!72657)

(assert (not d!261681))

(assert b_and!72665)

(assert (not b_next!25127))

(assert (not b!840757))

(assert (not b!840986))

(assert (not b_next!25105))

(assert (not b!840926))

(assert (not d!261717))

(assert (not b_next!25103))

(assert (not b_lambda!27665))

(assert (not b!840925))

(assert b_and!72659)

(assert (not d!261643))

(assert (not b_next!25125))

(assert (not b!840910))

(assert (not b!840985))

(assert (not b!840919))

(assert (not b!840923))

(assert (not b!840809))

(assert (not b_next!25129))

(assert (not b!840767))

(assert (not b!840931))

(assert (not b_lambda!27667))

(assert (not b!840920))

(assert (not b!840924))

(assert (not b_lambda!27663))

(assert (not b!840946))

(assert (not b!840808))

(assert (not b!840760))

(assert (not tb!57999))

(assert (not b!840758))

(assert (not b!840913))

(assert (not d!261699))

(assert (not b!840812))

(assert (not d!261709))

(assert (not b!840894))

(assert (not b!840829))

(assert (not b!840754))

(assert (not b!840972))

(assert (not b!840755))

(assert (not b_next!25111))

(assert (not b!840947))

(assert (not b!840859))

(assert (not b!840836))

(assert (not d!261701))

(assert (not b!840903))

(assert (not b!840857))

(assert (not b!840866))

(assert (not b!840893))

(assert (not b_next!25131))

(assert (not b!840837))

(assert (not b!840965))

(assert (not d!261711))

(assert b_and!72663)

(assert (not b_next!25109))

(assert (not d!261697))

(assert (not b!840964))

(assert (not b!840963))

(assert (not b!840928))

(assert b_and!72629)

(assert (not b!840948))

(assert (not d!261671))

(assert b_and!72667)

(assert (not b!840976))

(assert (not b!840951))

(assert (not b!840971))

(assert (not d!261705))

(assert (not b!840930))

(assert (not d!261683))

(assert (not b!840914))

(assert (not b!840822))

(assert (not b!840918))

(assert tp_is_empty!3935)

(assert (not d!261649))

(assert (not b!840911))

(assert (not b!840807))

(assert (not b!840975))

(assert (not b_next!25107))

(assert b_and!72633)

(assert b_and!72661)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!25129))

(assert (not b_next!25111))

(assert b_and!72655)

(assert (not b_next!25131))

(assert b_and!72663)

(assert (not b_next!25109))

(assert (not b_next!25101))

(assert b_and!72629)

(assert b_and!72667)

(assert b_and!72625)

(assert b_and!72657)

(assert b_and!72665)

(assert (not b_next!25127))

(assert (not b_next!25105))

(assert (not b_next!25103))

(assert (not b_next!25125))

(assert b_and!72659)

(assert (not b_next!25107))

(assert b_and!72633)

(assert b_and!72661)

(check-sat)

(pop 1)

