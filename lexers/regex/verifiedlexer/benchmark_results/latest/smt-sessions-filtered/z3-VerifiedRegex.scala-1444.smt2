; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75462 () Bool)

(assert start!75462)

(declare-fun b!846785 () Bool)

(declare-fun b_free!25513 () Bool)

(declare-fun b_next!25577 () Bool)

(assert (=> b!846785 (= b_free!25513 (not b_next!25577))))

(declare-fun tp!266618 () Bool)

(declare-fun b_and!73685 () Bool)

(assert (=> b!846785 (= tp!266618 b_and!73685)))

(declare-fun b_free!25515 () Bool)

(declare-fun b_next!25579 () Bool)

(assert (=> b!846785 (= b_free!25515 (not b_next!25579))))

(declare-fun tp!266627 () Bool)

(declare-fun b_and!73687 () Bool)

(assert (=> b!846785 (= tp!266627 b_and!73687)))

(declare-fun b!846779 () Bool)

(declare-fun b_free!25517 () Bool)

(declare-fun b_next!25581 () Bool)

(assert (=> b!846779 (= b_free!25517 (not b_next!25581))))

(declare-fun tp!266621 () Bool)

(declare-fun b_and!73689 () Bool)

(assert (=> b!846779 (= tp!266621 b_and!73689)))

(declare-fun b_free!25519 () Bool)

(declare-fun b_next!25583 () Bool)

(assert (=> b!846779 (= b_free!25519 (not b_next!25583))))

(declare-fun tp!266624 () Bool)

(declare-fun b_and!73691 () Bool)

(assert (=> b!846779 (= tp!266624 b_and!73691)))

(declare-fun b!846786 () Bool)

(declare-fun b_free!25521 () Bool)

(declare-fun b_next!25585 () Bool)

(assert (=> b!846786 (= b_free!25521 (not b_next!25585))))

(declare-fun tp!266620 () Bool)

(declare-fun b_and!73693 () Bool)

(assert (=> b!846786 (= tp!266620 b_and!73693)))

(declare-fun b_free!25523 () Bool)

(declare-fun b_next!25587 () Bool)

(assert (=> b!846786 (= b_free!25523 (not b_next!25587))))

(declare-fun tp!266616 () Bool)

(declare-fun b_and!73695 () Bool)

(assert (=> b!846786 (= tp!266616 b_and!73695)))

(declare-fun b!846764 () Bool)

(declare-fun e!557236 () Bool)

(declare-fun e!557241 () Bool)

(declare-fun tp!266623 () Bool)

(assert (=> b!846764 (= e!557236 (and e!557241 tp!266623))))

(declare-fun b!846765 () Bool)

(declare-fun res!387146 () Bool)

(declare-fun e!557228 () Bool)

(assert (=> b!846765 (=> (not res!387146) (not e!557228))))

(declare-datatypes ((List!9148 0))(
  ( (Nil!9132) (Cons!9132 (h!14533 (_ BitVec 16)) (t!94488 List!9148)) )
))
(declare-datatypes ((TokenValue!1780 0))(
  ( (FloatLiteralValue!3560 (text!12905 List!9148)) (TokenValueExt!1779 (__x!7291 Int)) (Broken!8900 (value!55522 List!9148)) (Object!1795) (End!1780) (Def!1780) (Underscore!1780) (Match!1780) (Else!1780) (Error!1780) (Case!1780) (If!1780) (Extends!1780) (Abstract!1780) (Class!1780) (Val!1780) (DelimiterValue!3560 (del!1840 List!9148)) (KeywordValue!1786 (value!55523 List!9148)) (CommentValue!3560 (value!55524 List!9148)) (WhitespaceValue!3560 (value!55525 List!9148)) (IndentationValue!1780 (value!55526 List!9148)) (String!10797) (Int32!1780) (Broken!8901 (value!55527 List!9148)) (Boolean!1781) (Unit!13598) (OperatorValue!1783 (op!1840 List!9148)) (IdentifierValue!3560 (value!55528 List!9148)) (IdentifierValue!3561 (value!55529 List!9148)) (WhitespaceValue!3561 (value!55530 List!9148)) (True!3560) (False!3560) (Broken!8902 (value!55531 List!9148)) (Broken!8903 (value!55532 List!9148)) (True!3561) (RightBrace!1780) (RightBracket!1780) (Colon!1780) (Null!1780) (Comma!1780) (LeftBracket!1780) (False!3561) (LeftBrace!1780) (ImaginaryLiteralValue!1780 (text!12906 List!9148)) (StringLiteralValue!5340 (value!55533 List!9148)) (EOFValue!1780 (value!55534 List!9148)) (IdentValue!1780 (value!55535 List!9148)) (DelimiterValue!3561 (value!55536 List!9148)) (DedentValue!1780 (value!55537 List!9148)) (NewLineValue!1780 (value!55538 List!9148)) (IntegerValue!5340 (value!55539 (_ BitVec 32)) (text!12907 List!9148)) (IntegerValue!5341 (value!55540 Int) (text!12908 List!9148)) (Times!1780) (Or!1780) (Equal!1780) (Minus!1780) (Broken!8904 (value!55541 List!9148)) (And!1780) (Div!1780) (LessEqual!1780) (Mod!1780) (Concat!3927) (Not!1780) (Plus!1780) (SpaceValue!1780 (value!55542 List!9148)) (IntegerValue!5342 (value!55543 Int) (text!12909 List!9148)) (StringLiteralValue!5341 (text!12910 List!9148)) (FloatLiteralValue!3561 (text!12911 List!9148)) (BytesLiteralValue!1780 (value!55544 List!9148)) (CommentValue!3561 (value!55545 List!9148)) (StringLiteralValue!5342 (value!55546 List!9148)) (ErrorTokenValue!1780 (msg!1841 List!9148)) )
))
(declare-datatypes ((C!4864 0))(
  ( (C!4865 (val!2680 Int)) )
))
(declare-datatypes ((Regex!2147 0))(
  ( (ElementMatch!2147 (c!137643 C!4864)) (Concat!3928 (regOne!4806 Regex!2147) (regTwo!4806 Regex!2147)) (EmptyExpr!2147) (Star!2147 (reg!2476 Regex!2147)) (EmptyLang!2147) (Union!2147 (regOne!4807 Regex!2147) (regTwo!4807 Regex!2147)) )
))
(declare-datatypes ((String!10798 0))(
  ( (String!10799 (value!55547 String)) )
))
(declare-datatypes ((List!9149 0))(
  ( (Nil!9133) (Cons!9133 (h!14534 C!4864) (t!94489 List!9149)) )
))
(declare-datatypes ((IArray!6059 0))(
  ( (IArray!6060 (innerList!3087 List!9149)) )
))
(declare-datatypes ((Conc!3027 0))(
  ( (Node!3027 (left!6761 Conc!3027) (right!7091 Conc!3027) (csize!6284 Int) (cheight!3238 Int)) (Leaf!4472 (xs!5716 IArray!6059) (csize!6285 Int)) (Empty!3027) )
))
(declare-datatypes ((BalanceConc!6068 0))(
  ( (BalanceConc!6069 (c!137644 Conc!3027)) )
))
(declare-datatypes ((TokenValueInjection!3260 0))(
  ( (TokenValueInjection!3261 (toValue!2739 Int) (toChars!2598 Int)) )
))
(declare-datatypes ((Rule!3228 0))(
  ( (Rule!3229 (regex!1714 Regex!2147) (tag!1976 String!10798) (isSeparator!1714 Bool) (transformation!1714 TokenValueInjection!3260)) )
))
(declare-datatypes ((Token!3094 0))(
  ( (Token!3095 (value!55548 TokenValue!1780) (rule!3137 Rule!3228) (size!7607 Int) (originalCharacters!2270 List!9149)) )
))
(declare-fun separatorToken!297 () Token!3094)

(assert (=> b!846765 (= res!387146 (isSeparator!1714 (rule!3137 separatorToken!297)))))

(declare-fun b!846766 () Bool)

(declare-fun e!557237 () Bool)

(declare-fun e!557247 () Bool)

(assert (=> b!846766 (= e!557237 e!557247)))

(declare-fun res!387136 () Bool)

(assert (=> b!846766 (=> res!387136 e!557247)))

(declare-datatypes ((List!9150 0))(
  ( (Nil!9134) (Cons!9134 (h!14535 Token!3094) (t!94490 List!9150)) )
))
(declare-fun lt!320749 () List!9150)

(declare-fun isEmpty!5389 (List!9150) Bool)

(assert (=> b!846766 (= res!387136 (isEmpty!5389 (t!94490 (t!94490 lt!320749))))))

(declare-fun e!557235 () Bool)

(assert (=> b!846766 e!557235))

(declare-fun res!387139 () Bool)

(assert (=> b!846766 (=> (not res!387139) (not e!557235))))

(declare-fun lt!320741 () List!9150)

(declare-datatypes ((List!9151 0))(
  ( (Nil!9135) (Cons!9135 (h!14536 Rule!3228) (t!94491 List!9151)) )
))
(declare-fun rules!2621 () List!9151)

(declare-datatypes ((LexerInterface!1516 0))(
  ( (LexerInterfaceExt!1513 (__x!7292 Int)) (Lexer!1514) )
))
(declare-fun thiss!20117 () LexerInterface!1516)

(declare-fun rulesProduceEachTokenIndividuallyList!404 (LexerInterface!1516 List!9151 List!9150) Bool)

(assert (=> b!846766 (= res!387139 (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 lt!320741))))

(declare-datatypes ((Unit!13599 0))(
  ( (Unit!13600) )
))
(declare-fun lt!320748 () Unit!13599)

(declare-fun lt!320744 () List!9150)

(declare-fun withSeparatorTokenListPreservesRulesProduceTokens!46 (LexerInterface!1516 List!9151 List!9150 Token!3094) Unit!13599)

(assert (=> b!846766 (= lt!320748 (withSeparatorTokenListPreservesRulesProduceTokens!46 thiss!20117 rules!2621 lt!320744 separatorToken!297))))

(declare-fun lt!320747 () Unit!13599)

(declare-fun printWithSeparatorTokenImpliesSeparableTokensList!22 (LexerInterface!1516 List!9151 List!9150 Token!3094) Unit!13599)

(assert (=> b!846766 (= lt!320747 (printWithSeparatorTokenImpliesSeparableTokensList!22 thiss!20117 rules!2621 lt!320744 separatorToken!297))))

(declare-fun separableTokensPredicate!56 (LexerInterface!1516 Token!3094 Token!3094 List!9151) Bool)

(assert (=> b!846766 (separableTokensPredicate!56 thiss!20117 (h!14535 lt!320749) (h!14535 (t!94490 lt!320749)) rules!2621)))

(declare-fun lt!320745 () Unit!13599)

(declare-fun lemmaTokensOfDifferentKindsAreSeparable!38 (LexerInterface!1516 Token!3094 Token!3094 List!9151) Unit!13599)

(assert (=> b!846766 (= lt!320745 (lemmaTokensOfDifferentKindsAreSeparable!38 thiss!20117 (h!14535 lt!320749) (h!14535 (t!94490 lt!320749)) rules!2621))))

(declare-fun res!387149 () Bool)

(assert (=> start!75462 (=> (not res!387149) (not e!557228))))

(get-info :version)

(assert (=> start!75462 (= res!387149 ((_ is Lexer!1514) thiss!20117))))

(assert (=> start!75462 e!557228))

(assert (=> start!75462 true))

(assert (=> start!75462 e!557236))

(declare-fun e!557230 () Bool)

(assert (=> start!75462 e!557230))

(declare-fun e!557246 () Bool)

(declare-fun inv!11610 (Token!3094) Bool)

(assert (=> start!75462 (and (inv!11610 separatorToken!297) e!557246)))

(declare-fun b!846767 () Bool)

(declare-fun res!387135 () Bool)

(assert (=> b!846767 (=> (not res!387135) (not e!557228))))

(declare-fun isEmpty!5390 (List!9151) Bool)

(assert (=> b!846767 (= res!387135 (not (isEmpty!5390 rules!2621)))))

(declare-fun b!846768 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!38 (LexerInterface!1516 List!9150 List!9151) Bool)

(assert (=> b!846768 (= e!557235 (tokensListTwoByTwoPredicateSeparableList!38 thiss!20117 lt!320741 rules!2621))))

(declare-fun b!846769 () Bool)

(declare-fun res!387144 () Bool)

(assert (=> b!846769 (=> (not res!387144) (not e!557228))))

(declare-fun sepAndNonSepRulesDisjointChars!514 (List!9151 List!9151) Bool)

(assert (=> b!846769 (= res!387144 (sepAndNonSepRulesDisjointChars!514 rules!2621 rules!2621))))

(declare-fun b!846770 () Bool)

(declare-fun e!557243 () Bool)

(assert (=> b!846770 (= e!557247 e!557243)))

(declare-fun res!387145 () Bool)

(assert (=> b!846770 (=> res!387145 e!557243)))

(declare-fun rulesProduceIndividualToken!580 (LexerInterface!1516 List!9151 Token!3094) Bool)

(assert (=> b!846770 (= res!387145 (not (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 (t!94490 lt!320749)))))))

(declare-fun lt!320742 () Token!3094)

(assert (=> b!846770 (separableTokensPredicate!56 thiss!20117 (h!14535 (t!94490 lt!320749)) lt!320742 rules!2621)))

(declare-fun lt!320743 () Unit!13599)

(assert (=> b!846770 (= lt!320743 (lemmaTokensOfDifferentKindsAreSeparable!38 thiss!20117 (h!14535 (t!94490 lt!320749)) lt!320742 rules!2621))))

(declare-fun head!1474 (List!9150) Token!3094)

(assert (=> b!846770 (= lt!320742 (head!1474 (t!94490 (t!94490 lt!320749))))))

(declare-fun b!846771 () Bool)

(declare-fun res!387143 () Bool)

(assert (=> b!846771 (=> res!387143 e!557237)))

(assert (=> b!846771 (= res!387143 (not (= (h!14535 (t!94490 lt!320749)) separatorToken!297)))))

(declare-fun b!846772 () Bool)

(declare-fun res!387137 () Bool)

(assert (=> b!846772 (=> res!387137 e!557237)))

(declare-fun l!5107 () List!9150)

(assert (=> b!846772 (= res!387137 (not (= (head!1474 l!5107) (h!14535 lt!320749))))))

(declare-fun b!846773 () Bool)

(declare-fun e!557232 () Bool)

(assert (=> b!846773 (= e!557228 (not e!557232))))

(declare-fun res!387134 () Bool)

(assert (=> b!846773 (=> res!387134 e!557232)))

(assert (=> b!846773 (= res!387134 (or (not ((_ is Cons!9134) lt!320749)) (not ((_ is Cons!9134) (t!94490 lt!320749)))))))

(assert (=> b!846773 (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 lt!320749)))

(declare-fun withSeparatorTokenList!46 (LexerInterface!1516 List!9150 Token!3094) List!9150)

(assert (=> b!846773 (= lt!320749 (withSeparatorTokenList!46 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!320746 () Unit!13599)

(assert (=> b!846773 (= lt!320746 (withSeparatorTokenListPreservesRulesProduceTokens!46 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(declare-fun b!846774 () Bool)

(assert (=> b!846774 (= e!557232 e!557237)))

(declare-fun res!387142 () Bool)

(assert (=> b!846774 (=> res!387142 e!557237)))

(assert (=> b!846774 (= res!387142 (not (= (t!94490 (t!94490 lt!320749)) lt!320741)))))

(assert (=> b!846774 (= lt!320741 (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297))))

(declare-fun tail!1032 (List!9150) List!9150)

(assert (=> b!846774 (= lt!320744 (tail!1032 l!5107))))

(declare-fun b!846775 () Bool)

(declare-fun res!387147 () Bool)

(assert (=> b!846775 (=> res!387147 e!557243)))

(assert (=> b!846775 (= res!387147 (not (rulesProduceIndividualToken!580 thiss!20117 rules!2621 lt!320742)))))

(declare-fun b!846776 () Bool)

(declare-fun res!387141 () Bool)

(assert (=> b!846776 (=> (not res!387141) (not e!557228))))

(assert (=> b!846776 (= res!387141 (rulesProduceIndividualToken!580 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun e!557245 () Bool)

(declare-fun b!846777 () Bool)

(declare-fun e!557227 () Bool)

(declare-fun tp!266617 () Bool)

(declare-fun inv!11607 (String!10798) Bool)

(declare-fun inv!11611 (TokenValueInjection!3260) Bool)

(assert (=> b!846777 (= e!557245 (and tp!266617 (inv!11607 (tag!1976 (rule!3137 separatorToken!297))) (inv!11611 (transformation!1714 (rule!3137 separatorToken!297))) e!557227))))

(declare-fun e!557244 () Bool)

(declare-fun tp!266622 () Bool)

(declare-fun e!557231 () Bool)

(declare-fun b!846778 () Bool)

(declare-fun inv!21 (TokenValue!1780) Bool)

(assert (=> b!846778 (= e!557244 (and (inv!21 (value!55548 (h!14535 l!5107))) e!557231 tp!266622))))

(declare-fun e!557240 () Bool)

(assert (=> b!846779 (= e!557240 (and tp!266621 tp!266624))))

(declare-fun b!846780 () Bool)

(declare-fun tp!266628 () Bool)

(declare-fun e!557229 () Bool)

(assert (=> b!846780 (= e!557241 (and tp!266628 (inv!11607 (tag!1976 (h!14536 rules!2621))) (inv!11611 (transformation!1714 (h!14536 rules!2621))) e!557229))))

(declare-fun tp!266626 () Bool)

(declare-fun b!846781 () Bool)

(assert (=> b!846781 (= e!557246 (and (inv!21 (value!55548 separatorToken!297)) e!557245 tp!266626))))

(declare-fun b!846782 () Bool)

(declare-fun res!387138 () Bool)

(assert (=> b!846782 (=> (not res!387138) (not e!557228))))

(assert (=> b!846782 (= res!387138 (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 l!5107))))

(declare-fun tp!266619 () Bool)

(declare-fun b!846783 () Bool)

(assert (=> b!846783 (= e!557230 (and (inv!11610 (h!14535 l!5107)) e!557244 tp!266619))))

(declare-fun tp!266625 () Bool)

(declare-fun b!846784 () Bool)

(assert (=> b!846784 (= e!557231 (and tp!266625 (inv!11607 (tag!1976 (rule!3137 (h!14535 l!5107)))) (inv!11611 (transformation!1714 (rule!3137 (h!14535 l!5107)))) e!557240))))

(assert (=> b!846785 (= e!557229 (and tp!266618 tp!266627))))

(assert (=> b!846786 (= e!557227 (and tp!266620 tp!266616))))

(declare-fun b!846787 () Bool)

(declare-fun res!387140 () Bool)

(assert (=> b!846787 (=> (not res!387140) (not e!557228))))

(declare-fun lambda!25220 () Int)

(declare-fun forall!2141 (List!9150 Int) Bool)

(assert (=> b!846787 (= res!387140 (forall!2141 l!5107 lambda!25220))))

(declare-fun b!846788 () Bool)

(declare-fun res!387148 () Bool)

(assert (=> b!846788 (=> (not res!387148) (not e!557228))))

(declare-fun rulesInvariant!1392 (LexerInterface!1516 List!9151) Bool)

(assert (=> b!846788 (= res!387148 (rulesInvariant!1392 thiss!20117 rules!2621))))

(declare-fun b!846789 () Bool)

(declare-fun isEmpty!5391 (BalanceConc!6068) Bool)

(declare-fun charsOf!985 (Token!3094) BalanceConc!6068)

(assert (=> b!846789 (= e!557243 (not (isEmpty!5391 (charsOf!985 lt!320742))))))

(assert (= (and start!75462 res!387149) b!846767))

(assert (= (and b!846767 res!387135) b!846788))

(assert (= (and b!846788 res!387148) b!846782))

(assert (= (and b!846782 res!387138) b!846776))

(assert (= (and b!846776 res!387141) b!846765))

(assert (= (and b!846765 res!387146) b!846787))

(assert (= (and b!846787 res!387140) b!846769))

(assert (= (and b!846769 res!387144) b!846773))

(assert (= (and b!846773 (not res!387134)) b!846774))

(assert (= (and b!846774 (not res!387142)) b!846772))

(assert (= (and b!846772 (not res!387137)) b!846771))

(assert (= (and b!846771 (not res!387143)) b!846766))

(assert (= (and b!846766 res!387139) b!846768))

(assert (= (and b!846766 (not res!387136)) b!846770))

(assert (= (and b!846770 (not res!387145)) b!846775))

(assert (= (and b!846775 (not res!387147)) b!846789))

(assert (= b!846780 b!846785))

(assert (= b!846764 b!846780))

(assert (= (and start!75462 ((_ is Cons!9135) rules!2621)) b!846764))

(assert (= b!846784 b!846779))

(assert (= b!846778 b!846784))

(assert (= b!846783 b!846778))

(assert (= (and start!75462 ((_ is Cons!9134) l!5107)) b!846783))

(assert (= b!846777 b!846786))

(assert (= b!846781 b!846777))

(assert (= start!75462 b!846781))

(declare-fun m!1082017 () Bool)

(assert (=> b!846780 m!1082017))

(declare-fun m!1082019 () Bool)

(assert (=> b!846780 m!1082019))

(declare-fun m!1082021 () Bool)

(assert (=> b!846766 m!1082021))

(declare-fun m!1082023 () Bool)

(assert (=> b!846766 m!1082023))

(declare-fun m!1082025 () Bool)

(assert (=> b!846766 m!1082025))

(declare-fun m!1082027 () Bool)

(assert (=> b!846766 m!1082027))

(declare-fun m!1082029 () Bool)

(assert (=> b!846766 m!1082029))

(declare-fun m!1082031 () Bool)

(assert (=> b!846766 m!1082031))

(declare-fun m!1082033 () Bool)

(assert (=> b!846778 m!1082033))

(declare-fun m!1082035 () Bool)

(assert (=> b!846782 m!1082035))

(declare-fun m!1082037 () Bool)

(assert (=> b!846781 m!1082037))

(declare-fun m!1082039 () Bool)

(assert (=> b!846783 m!1082039))

(declare-fun m!1082041 () Bool)

(assert (=> b!846776 m!1082041))

(declare-fun m!1082043 () Bool)

(assert (=> b!846770 m!1082043))

(declare-fun m!1082045 () Bool)

(assert (=> b!846770 m!1082045))

(declare-fun m!1082047 () Bool)

(assert (=> b!846770 m!1082047))

(declare-fun m!1082049 () Bool)

(assert (=> b!846770 m!1082049))

(declare-fun m!1082051 () Bool)

(assert (=> b!846773 m!1082051))

(declare-fun m!1082053 () Bool)

(assert (=> b!846773 m!1082053))

(declare-fun m!1082055 () Bool)

(assert (=> b!846773 m!1082055))

(declare-fun m!1082057 () Bool)

(assert (=> b!846774 m!1082057))

(declare-fun m!1082059 () Bool)

(assert (=> b!846774 m!1082059))

(declare-fun m!1082061 () Bool)

(assert (=> start!75462 m!1082061))

(declare-fun m!1082063 () Bool)

(assert (=> b!846788 m!1082063))

(declare-fun m!1082065 () Bool)

(assert (=> b!846777 m!1082065))

(declare-fun m!1082067 () Bool)

(assert (=> b!846777 m!1082067))

(declare-fun m!1082069 () Bool)

(assert (=> b!846775 m!1082069))

(declare-fun m!1082071 () Bool)

(assert (=> b!846784 m!1082071))

(declare-fun m!1082073 () Bool)

(assert (=> b!846784 m!1082073))

(declare-fun m!1082075 () Bool)

(assert (=> b!846772 m!1082075))

(declare-fun m!1082077 () Bool)

(assert (=> b!846767 m!1082077))

(declare-fun m!1082079 () Bool)

(assert (=> b!846769 m!1082079))

(declare-fun m!1082081 () Bool)

(assert (=> b!846768 m!1082081))

(declare-fun m!1082083 () Bool)

(assert (=> b!846787 m!1082083))

(declare-fun m!1082085 () Bool)

(assert (=> b!846789 m!1082085))

(assert (=> b!846789 m!1082085))

(declare-fun m!1082087 () Bool)

(assert (=> b!846789 m!1082087))

(check-sat b_and!73693 (not b!846782) (not b!846773) b_and!73685 (not b!846766) (not b!846789) (not b!846775) (not b!846788) (not b!846781) b_and!73695 b_and!73691 (not b_next!25585) (not b!846772) (not b!846776) (not b_next!25581) (not b!846768) b_and!73687 (not b!846777) (not b!846767) (not start!75462) (not b!846764) b_and!73689 (not b!846770) (not b!846778) (not b_next!25579) (not b!846780) (not b!846769) (not b!846783) (not b_next!25577) (not b!846774) (not b_next!25587) (not b!846787) (not b_next!25583) (not b!846784))
(check-sat b_and!73693 (not b_next!25581) b_and!73687 b_and!73685 b_and!73689 b_and!73695 (not b_next!25579) b_and!73691 (not b_next!25577) (not b_next!25587) (not b_next!25583) (not b_next!25585))
(get-model)

(declare-fun b!846820 () Bool)

(declare-fun res!387162 () Bool)

(declare-fun e!557267 () Bool)

(assert (=> b!846820 (=> res!387162 e!557267)))

(assert (=> b!846820 (= res!387162 (not ((_ is IntegerValue!5342) (value!55548 separatorToken!297))))))

(declare-fun e!557268 () Bool)

(assert (=> b!846820 (= e!557268 e!557267)))

(declare-fun b!846821 () Bool)

(declare-fun e!557266 () Bool)

(assert (=> b!846821 (= e!557266 e!557268)))

(declare-fun c!137655 () Bool)

(assert (=> b!846821 (= c!137655 ((_ is IntegerValue!5341) (value!55548 separatorToken!297)))))

(declare-fun b!846822 () Bool)

(declare-fun inv!17 (TokenValue!1780) Bool)

(assert (=> b!846822 (= e!557268 (inv!17 (value!55548 separatorToken!297)))))

(declare-fun d!263485 () Bool)

(declare-fun c!137656 () Bool)

(assert (=> d!263485 (= c!137656 ((_ is IntegerValue!5340) (value!55548 separatorToken!297)))))

(assert (=> d!263485 (= (inv!21 (value!55548 separatorToken!297)) e!557266)))

(declare-fun b!846823 () Bool)

(declare-fun inv!15 (TokenValue!1780) Bool)

(assert (=> b!846823 (= e!557267 (inv!15 (value!55548 separatorToken!297)))))

(declare-fun b!846824 () Bool)

(declare-fun inv!16 (TokenValue!1780) Bool)

(assert (=> b!846824 (= e!557266 (inv!16 (value!55548 separatorToken!297)))))

(assert (= (and d!263485 c!137656) b!846824))

(assert (= (and d!263485 (not c!137656)) b!846821))

(assert (= (and b!846821 c!137655) b!846822))

(assert (= (and b!846821 (not c!137655)) b!846820))

(assert (= (and b!846820 (not res!387162)) b!846823))

(declare-fun m!1082109 () Bool)

(assert (=> b!846822 m!1082109))

(declare-fun m!1082111 () Bool)

(assert (=> b!846823 m!1082111))

(declare-fun m!1082113 () Bool)

(assert (=> b!846824 m!1082113))

(assert (=> b!846781 d!263485))

(declare-fun d!263487 () Bool)

(declare-fun res!387167 () Bool)

(declare-fun e!557271 () Bool)

(assert (=> d!263487 (=> (not res!387167) (not e!557271))))

(declare-fun isEmpty!5394 (List!9149) Bool)

(assert (=> d!263487 (= res!387167 (not (isEmpty!5394 (originalCharacters!2270 separatorToken!297))))))

(assert (=> d!263487 (= (inv!11610 separatorToken!297) e!557271)))

(declare-fun b!846829 () Bool)

(declare-fun res!387168 () Bool)

(assert (=> b!846829 (=> (not res!387168) (not e!557271))))

(declare-fun list!3581 (BalanceConc!6068) List!9149)

(declare-fun dynLambda!4235 (Int TokenValue!1780) BalanceConc!6068)

(assert (=> b!846829 (= res!387168 (= (originalCharacters!2270 separatorToken!297) (list!3581 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (value!55548 separatorToken!297)))))))

(declare-fun b!846830 () Bool)

(declare-fun size!7610 (List!9149) Int)

(assert (=> b!846830 (= e!557271 (= (size!7607 separatorToken!297) (size!7610 (originalCharacters!2270 separatorToken!297))))))

(assert (= (and d!263487 res!387167) b!846829))

(assert (= (and b!846829 res!387168) b!846830))

(declare-fun b_lambda!27993 () Bool)

(assert (=> (not b_lambda!27993) (not b!846829)))

(declare-fun t!94499 () Bool)

(declare-fun tb!58775 () Bool)

(assert (=> (and b!846785 (= (toChars!2598 (transformation!1714 (h!14536 rules!2621))) (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297)))) t!94499) tb!58775))

(declare-fun b!846835 () Bool)

(declare-fun e!557274 () Bool)

(declare-fun tp!266634 () Bool)

(declare-fun inv!11614 (Conc!3027) Bool)

(assert (=> b!846835 (= e!557274 (and (inv!11614 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (value!55548 separatorToken!297)))) tp!266634))))

(declare-fun result!68166 () Bool)

(declare-fun inv!11615 (BalanceConc!6068) Bool)

(assert (=> tb!58775 (= result!68166 (and (inv!11615 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (value!55548 separatorToken!297))) e!557274))))

(assert (= tb!58775 b!846835))

(declare-fun m!1082115 () Bool)

(assert (=> b!846835 m!1082115))

(declare-fun m!1082117 () Bool)

(assert (=> tb!58775 m!1082117))

(assert (=> b!846829 t!94499))

(declare-fun b_and!73703 () Bool)

(assert (= b_and!73687 (and (=> t!94499 result!68166) b_and!73703)))

(declare-fun tb!58777 () Bool)

(declare-fun t!94501 () Bool)

(assert (=> (and b!846779 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297)))) t!94501) tb!58777))

(declare-fun result!68170 () Bool)

(assert (= result!68170 result!68166))

(assert (=> b!846829 t!94501))

(declare-fun b_and!73705 () Bool)

(assert (= b_and!73691 (and (=> t!94501 result!68170) b_and!73705)))

(declare-fun t!94503 () Bool)

(declare-fun tb!58779 () Bool)

(assert (=> (and b!846786 (= (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297)))) t!94503) tb!58779))

(declare-fun result!68172 () Bool)

(assert (= result!68172 result!68166))

(assert (=> b!846829 t!94503))

(declare-fun b_and!73707 () Bool)

(assert (= b_and!73695 (and (=> t!94503 result!68172) b_and!73707)))

(declare-fun m!1082119 () Bool)

(assert (=> d!263487 m!1082119))

(declare-fun m!1082121 () Bool)

(assert (=> b!846829 m!1082121))

(assert (=> b!846829 m!1082121))

(declare-fun m!1082123 () Bool)

(assert (=> b!846829 m!1082123))

(declare-fun m!1082125 () Bool)

(assert (=> b!846830 m!1082125))

(assert (=> start!75462 d!263487))

(declare-fun bs!230454 () Bool)

(declare-fun d!263489 () Bool)

(assert (= bs!230454 (and d!263489 b!846787)))

(declare-fun lambda!25226 () Int)

(assert (=> bs!230454 (not (= lambda!25226 lambda!25220))))

(declare-fun b!846900 () Bool)

(declare-fun e!557319 () Bool)

(assert (=> b!846900 (= e!557319 true)))

(declare-fun b!846899 () Bool)

(declare-fun e!557318 () Bool)

(assert (=> b!846899 (= e!557318 e!557319)))

(declare-fun b!846898 () Bool)

(declare-fun e!557317 () Bool)

(assert (=> b!846898 (= e!557317 e!557318)))

(assert (=> d!263489 e!557317))

(assert (= b!846899 b!846900))

(assert (= b!846898 b!846899))

(assert (= (and d!263489 ((_ is Cons!9135) rules!2621)) b!846898))

(declare-fun order!5823 () Int)

(declare-fun order!5825 () Int)

(declare-fun dynLambda!4236 (Int Int) Int)

(declare-fun dynLambda!4237 (Int Int) Int)

(assert (=> b!846900 (< (dynLambda!4236 order!5823 (toValue!2739 (transformation!1714 (h!14536 rules!2621)))) (dynLambda!4237 order!5825 lambda!25226))))

(declare-fun order!5827 () Int)

(declare-fun dynLambda!4238 (Int Int) Int)

(assert (=> b!846900 (< (dynLambda!4238 order!5827 (toChars!2598 (transformation!1714 (h!14536 rules!2621)))) (dynLambda!4237 order!5825 lambda!25226))))

(assert (=> d!263489 true))

(declare-fun lt!320770 () Bool)

(assert (=> d!263489 (= lt!320770 (forall!2141 l!5107 lambda!25226))))

(declare-fun e!557310 () Bool)

(assert (=> d!263489 (= lt!320770 e!557310)))

(declare-fun res!387204 () Bool)

(assert (=> d!263489 (=> res!387204 e!557310)))

(assert (=> d!263489 (= res!387204 (not ((_ is Cons!9134) l!5107)))))

(assert (=> d!263489 (not (isEmpty!5390 rules!2621))))

(assert (=> d!263489 (= (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 l!5107) lt!320770)))

(declare-fun b!846888 () Bool)

(declare-fun e!557309 () Bool)

(assert (=> b!846888 (= e!557310 e!557309)))

(declare-fun res!387205 () Bool)

(assert (=> b!846888 (=> (not res!387205) (not e!557309))))

(assert (=> b!846888 (= res!387205 (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 l!5107)))))

(declare-fun b!846889 () Bool)

(assert (=> b!846889 (= e!557309 (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 (t!94490 l!5107)))))

(assert (= (and d!263489 (not res!387204)) b!846888))

(assert (= (and b!846888 res!387205) b!846889))

(declare-fun m!1082155 () Bool)

(assert (=> d!263489 m!1082155))

(assert (=> d!263489 m!1082077))

(declare-fun m!1082157 () Bool)

(assert (=> b!846888 m!1082157))

(declare-fun m!1082159 () Bool)

(assert (=> b!846889 m!1082159))

(assert (=> b!846782 d!263489))

(declare-fun d!263503 () Bool)

(declare-fun res!387210 () Bool)

(declare-fun e!557324 () Bool)

(assert (=> d!263503 (=> res!387210 e!557324)))

(assert (=> d!263503 (= res!387210 (not ((_ is Cons!9135) rules!2621)))))

(assert (=> d!263503 (= (sepAndNonSepRulesDisjointChars!514 rules!2621 rules!2621) e!557324)))

(declare-fun b!846907 () Bool)

(declare-fun e!557325 () Bool)

(assert (=> b!846907 (= e!557324 e!557325)))

(declare-fun res!387211 () Bool)

(assert (=> b!846907 (=> (not res!387211) (not e!557325))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!231 (Rule!3228 List!9151) Bool)

(assert (=> b!846907 (= res!387211 (ruleDisjointCharsFromAllFromOtherType!231 (h!14536 rules!2621) rules!2621))))

(declare-fun b!846908 () Bool)

(assert (=> b!846908 (= e!557325 (sepAndNonSepRulesDisjointChars!514 rules!2621 (t!94491 rules!2621)))))

(assert (= (and d!263503 (not res!387210)) b!846907))

(assert (= (and b!846907 res!387211) b!846908))

(declare-fun m!1082161 () Bool)

(assert (=> b!846907 m!1082161))

(declare-fun m!1082163 () Bool)

(assert (=> b!846908 m!1082163))

(assert (=> b!846769 d!263503))

(declare-fun d!263505 () Bool)

(assert (=> d!263505 (= (inv!11607 (tag!1976 (h!14536 rules!2621))) (= (mod (str.len (value!55547 (tag!1976 (h!14536 rules!2621)))) 2) 0))))

(assert (=> b!846780 d!263505))

(declare-fun d!263507 () Bool)

(declare-fun res!387214 () Bool)

(declare-fun e!557328 () Bool)

(assert (=> d!263507 (=> (not res!387214) (not e!557328))))

(declare-fun semiInverseModEq!664 (Int Int) Bool)

(assert (=> d!263507 (= res!387214 (semiInverseModEq!664 (toChars!2598 (transformation!1714 (h!14536 rules!2621))) (toValue!2739 (transformation!1714 (h!14536 rules!2621)))))))

(assert (=> d!263507 (= (inv!11611 (transformation!1714 (h!14536 rules!2621))) e!557328)))

(declare-fun b!846911 () Bool)

(declare-fun equivClasses!631 (Int Int) Bool)

(assert (=> b!846911 (= e!557328 (equivClasses!631 (toChars!2598 (transformation!1714 (h!14536 rules!2621))) (toValue!2739 (transformation!1714 (h!14536 rules!2621)))))))

(assert (= (and d!263507 res!387214) b!846911))

(declare-fun m!1082165 () Bool)

(assert (=> d!263507 m!1082165))

(declare-fun m!1082167 () Bool)

(assert (=> b!846911 m!1082167))

(assert (=> b!846780 d!263507))

(declare-fun d!263509 () Bool)

(declare-fun lt!320783 () Bool)

(declare-fun e!557339 () Bool)

(assert (=> d!263509 (= lt!320783 e!557339)))

(declare-fun res!387224 () Bool)

(assert (=> d!263509 (=> (not res!387224) (not e!557339))))

(declare-datatypes ((IArray!6063 0))(
  ( (IArray!6064 (innerList!3089 List!9150)) )
))
(declare-datatypes ((Conc!3029 0))(
  ( (Node!3029 (left!6767 Conc!3029) (right!7097 Conc!3029) (csize!6288 Int) (cheight!3240 Int)) (Leaf!4474 (xs!5718 IArray!6063) (csize!6289 Int)) (Empty!3029) )
))
(declare-datatypes ((BalanceConc!6072 0))(
  ( (BalanceConc!6073 (c!137686 Conc!3029)) )
))
(declare-fun list!3582 (BalanceConc!6072) List!9150)

(declare-datatypes ((tuple2!10356 0))(
  ( (tuple2!10357 (_1!6004 BalanceConc!6072) (_2!6004 BalanceConc!6068)) )
))
(declare-fun lex!612 (LexerInterface!1516 List!9151 BalanceConc!6068) tuple2!10356)

(declare-fun print!549 (LexerInterface!1516 BalanceConc!6072) BalanceConc!6068)

(declare-fun singletonSeq!528 (Token!3094) BalanceConc!6072)

(assert (=> d!263509 (= res!387224 (= (list!3582 (_1!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 (h!14535 (t!94490 lt!320749))))))) (list!3582 (singletonSeq!528 (h!14535 (t!94490 lt!320749))))))))

(declare-fun e!557338 () Bool)

(assert (=> d!263509 (= lt!320783 e!557338)))

(declare-fun res!387225 () Bool)

(assert (=> d!263509 (=> (not res!387225) (not e!557338))))

(declare-fun lt!320782 () tuple2!10356)

(declare-fun size!7612 (BalanceConc!6072) Int)

(assert (=> d!263509 (= res!387225 (= (size!7612 (_1!6004 lt!320782)) 1))))

(assert (=> d!263509 (= lt!320782 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 (h!14535 (t!94490 lt!320749))))))))

(assert (=> d!263509 (not (isEmpty!5390 rules!2621))))

(assert (=> d!263509 (= (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 (t!94490 lt!320749))) lt!320783)))

(declare-fun b!846923 () Bool)

(declare-fun res!387223 () Bool)

(assert (=> b!846923 (=> (not res!387223) (not e!557338))))

(declare-fun apply!1854 (BalanceConc!6072 Int) Token!3094)

(assert (=> b!846923 (= res!387223 (= (apply!1854 (_1!6004 lt!320782) 0) (h!14535 (t!94490 lt!320749))))))

(declare-fun b!846924 () Bool)

(assert (=> b!846924 (= e!557338 (isEmpty!5391 (_2!6004 lt!320782)))))

(declare-fun b!846925 () Bool)

(assert (=> b!846925 (= e!557339 (isEmpty!5391 (_2!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 (h!14535 (t!94490 lt!320749))))))))))

(assert (= (and d!263509 res!387225) b!846923))

(assert (= (and b!846923 res!387223) b!846924))

(assert (= (and d!263509 res!387224) b!846925))

(declare-fun m!1082193 () Bool)

(assert (=> d!263509 m!1082193))

(declare-fun m!1082195 () Bool)

(assert (=> d!263509 m!1082195))

(assert (=> d!263509 m!1082193))

(assert (=> d!263509 m!1082193))

(declare-fun m!1082197 () Bool)

(assert (=> d!263509 m!1082197))

(declare-fun m!1082199 () Bool)

(assert (=> d!263509 m!1082199))

(assert (=> d!263509 m!1082077))

(declare-fun m!1082201 () Bool)

(assert (=> d!263509 m!1082201))

(assert (=> d!263509 m!1082195))

(declare-fun m!1082203 () Bool)

(assert (=> d!263509 m!1082203))

(declare-fun m!1082205 () Bool)

(assert (=> b!846923 m!1082205))

(declare-fun m!1082207 () Bool)

(assert (=> b!846924 m!1082207))

(assert (=> b!846925 m!1082193))

(assert (=> b!846925 m!1082193))

(assert (=> b!846925 m!1082195))

(assert (=> b!846925 m!1082195))

(assert (=> b!846925 m!1082203))

(declare-fun m!1082209 () Bool)

(assert (=> b!846925 m!1082209))

(assert (=> b!846770 d!263509))

(declare-fun d!263519 () Bool)

(declare-fun prefixMatchZipperSequence!23 (Regex!2147 BalanceConc!6068) Bool)

(declare-fun rulesRegex!18 (LexerInterface!1516 List!9151) Regex!2147)

(declare-fun ++!2363 (BalanceConc!6068 BalanceConc!6068) BalanceConc!6068)

(declare-fun singletonSeq!529 (C!4864) BalanceConc!6068)

(declare-fun apply!1855 (BalanceConc!6068 Int) C!4864)

(assert (=> d!263519 (= (separableTokensPredicate!56 thiss!20117 (h!14535 (t!94490 lt!320749)) lt!320742 rules!2621) (not (prefixMatchZipperSequence!23 (rulesRegex!18 thiss!20117 rules!2621) (++!2363 (charsOf!985 (h!14535 (t!94490 lt!320749))) (singletonSeq!529 (apply!1855 (charsOf!985 lt!320742) 0))))))))

(declare-fun bs!230460 () Bool)

(assert (= bs!230460 d!263519))

(assert (=> bs!230460 m!1082085))

(declare-fun m!1082211 () Bool)

(assert (=> bs!230460 m!1082211))

(declare-fun m!1082213 () Bool)

(assert (=> bs!230460 m!1082213))

(declare-fun m!1082215 () Bool)

(assert (=> bs!230460 m!1082215))

(declare-fun m!1082217 () Bool)

(assert (=> bs!230460 m!1082217))

(declare-fun m!1082219 () Bool)

(assert (=> bs!230460 m!1082219))

(assert (=> bs!230460 m!1082085))

(assert (=> bs!230460 m!1082211))

(assert (=> bs!230460 m!1082215))

(declare-fun m!1082221 () Bool)

(assert (=> bs!230460 m!1082221))

(assert (=> bs!230460 m!1082221))

(assert (=> bs!230460 m!1082213))

(assert (=> bs!230460 m!1082217))

(assert (=> b!846770 d!263519))

(declare-fun d!263521 () Bool)

(assert (=> d!263521 (separableTokensPredicate!56 thiss!20117 (h!14535 (t!94490 lt!320749)) lt!320742 rules!2621)))

(declare-fun lt!320786 () Unit!13599)

(declare-fun choose!4998 (LexerInterface!1516 Token!3094 Token!3094 List!9151) Unit!13599)

(assert (=> d!263521 (= lt!320786 (choose!4998 thiss!20117 (h!14535 (t!94490 lt!320749)) lt!320742 rules!2621))))

(assert (=> d!263521 (not (isEmpty!5390 rules!2621))))

(assert (=> d!263521 (= (lemmaTokensOfDifferentKindsAreSeparable!38 thiss!20117 (h!14535 (t!94490 lt!320749)) lt!320742 rules!2621) lt!320786)))

(declare-fun bs!230461 () Bool)

(assert (= bs!230461 d!263521))

(assert (=> bs!230461 m!1082045))

(declare-fun m!1082223 () Bool)

(assert (=> bs!230461 m!1082223))

(assert (=> bs!230461 m!1082077))

(assert (=> b!846770 d!263521))

(declare-fun d!263523 () Bool)

(assert (=> d!263523 (= (head!1474 (t!94490 (t!94490 lt!320749))) (h!14535 (t!94490 (t!94490 lt!320749))))))

(assert (=> b!846770 d!263523))

(declare-fun bs!230462 () Bool)

(declare-fun d!263525 () Bool)

(assert (= bs!230462 (and d!263525 b!846787)))

(declare-fun lambda!25228 () Int)

(assert (=> bs!230462 (not (= lambda!25228 lambda!25220))))

(declare-fun bs!230463 () Bool)

(assert (= bs!230463 (and d!263525 d!263489)))

(assert (=> bs!230463 (= lambda!25228 lambda!25226)))

(declare-fun b!846930 () Bool)

(declare-fun e!557344 () Bool)

(assert (=> b!846930 (= e!557344 true)))

(declare-fun b!846929 () Bool)

(declare-fun e!557343 () Bool)

(assert (=> b!846929 (= e!557343 e!557344)))

(declare-fun b!846928 () Bool)

(declare-fun e!557342 () Bool)

(assert (=> b!846928 (= e!557342 e!557343)))

(assert (=> d!263525 e!557342))

(assert (= b!846929 b!846930))

(assert (= b!846928 b!846929))

(assert (= (and d!263525 ((_ is Cons!9135) rules!2621)) b!846928))

(assert (=> b!846930 (< (dynLambda!4236 order!5823 (toValue!2739 (transformation!1714 (h!14536 rules!2621)))) (dynLambda!4237 order!5825 lambda!25228))))

(assert (=> b!846930 (< (dynLambda!4238 order!5827 (toChars!2598 (transformation!1714 (h!14536 rules!2621)))) (dynLambda!4237 order!5825 lambda!25228))))

(assert (=> d!263525 true))

(declare-fun lt!320787 () Bool)

(assert (=> d!263525 (= lt!320787 (forall!2141 lt!320749 lambda!25228))))

(declare-fun e!557341 () Bool)

(assert (=> d!263525 (= lt!320787 e!557341)))

(declare-fun res!387226 () Bool)

(assert (=> d!263525 (=> res!387226 e!557341)))

(assert (=> d!263525 (= res!387226 (not ((_ is Cons!9134) lt!320749)))))

(assert (=> d!263525 (not (isEmpty!5390 rules!2621))))

(assert (=> d!263525 (= (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 lt!320749) lt!320787)))

(declare-fun b!846926 () Bool)

(declare-fun e!557340 () Bool)

(assert (=> b!846926 (= e!557341 e!557340)))

(declare-fun res!387227 () Bool)

(assert (=> b!846926 (=> (not res!387227) (not e!557340))))

(assert (=> b!846926 (= res!387227 (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 lt!320749)))))

(declare-fun b!846927 () Bool)

(assert (=> b!846927 (= e!557340 (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 (t!94490 lt!320749)))))

(assert (= (and d!263525 (not res!387226)) b!846926))

(assert (= (and b!846926 res!387227) b!846927))

(declare-fun m!1082225 () Bool)

(assert (=> d!263525 m!1082225))

(assert (=> d!263525 m!1082077))

(declare-fun m!1082227 () Bool)

(assert (=> b!846926 m!1082227))

(declare-fun m!1082229 () Bool)

(assert (=> b!846927 m!1082229))

(assert (=> b!846773 d!263525))

(declare-fun b!846960 () Bool)

(declare-fun e!557364 () List!9149)

(declare-fun lt!320811 () List!9150)

(declare-fun ++!2364 (List!9149 List!9149) List!9149)

(declare-fun printList!468 (LexerInterface!1516 List!9150) List!9149)

(assert (=> b!846960 (= e!557364 (++!2364 (list!3581 (charsOf!985 (h!14535 lt!320811))) (printList!468 thiss!20117 (t!94490 lt!320811))))))

(declare-fun b!846961 () Bool)

(declare-fun e!557368 () List!9149)

(declare-fun lt!320815 () List!9150)

(assert (=> b!846961 (= e!557368 (++!2364 (list!3581 (charsOf!985 (h!14535 lt!320815))) (printList!468 thiss!20117 (t!94490 lt!320815))))))

(declare-fun b!846962 () Bool)

(assert (=> b!846962 (= e!557364 Nil!9133)))

(declare-fun lt!320810 () List!9150)

(declare-fun d!263527 () Bool)

(declare-fun printWithSeparatorTokenList!26 (LexerInterface!1516 List!9150 Token!3094) List!9149)

(assert (=> d!263527 (= (printList!468 thiss!20117 lt!320810) (printWithSeparatorTokenList!26 thiss!20117 l!5107 separatorToken!297))))

(declare-fun e!557367 () List!9150)

(assert (=> d!263527 (= lt!320810 e!557367)))

(declare-fun c!137667 () Bool)

(assert (=> d!263527 (= c!137667 ((_ is Cons!9134) l!5107))))

(declare-fun e!557365 () Bool)

(assert (=> d!263527 e!557365))

(declare-fun res!387248 () Bool)

(assert (=> d!263527 (=> (not res!387248) (not e!557365))))

(assert (=> d!263527 (= res!387248 (isSeparator!1714 (rule!3137 separatorToken!297)))))

(assert (=> d!263527 (= (withSeparatorTokenList!46 thiss!20117 l!5107 separatorToken!297) lt!320810)))

(declare-fun b!846963 () Bool)

(assert (=> b!846963 (= e!557368 Nil!9133)))

(declare-fun b!846964 () Bool)

(declare-fun e!557366 () Bool)

(declare-fun $colon$colon!81 (List!9150 Token!3094) List!9150)

(assert (=> b!846964 (= e!557366 (= (printList!468 thiss!20117 ($colon$colon!81 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 l!5107) separatorToken!297) separatorToken!297) (h!14535 l!5107))) e!557368))))

(declare-fun c!137665 () Bool)

(assert (=> b!846964 (= c!137665 ((_ is Cons!9134) lt!320815))))

(assert (=> b!846964 (= lt!320815 ($colon$colon!81 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 l!5107) separatorToken!297) separatorToken!297) (h!14535 l!5107)))))

(declare-fun b!846965 () Bool)

(assert (=> b!846965 (= e!557367 ($colon$colon!81 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 l!5107) separatorToken!297) separatorToken!297) (h!14535 l!5107)))))

(declare-fun lt!320813 () List!9149)

(assert (=> b!846965 (= lt!320813 (list!3581 (charsOf!985 (h!14535 l!5107))))))

(declare-fun lt!320812 () List!9149)

(assert (=> b!846965 (= lt!320812 (list!3581 (charsOf!985 separatorToken!297)))))

(declare-fun lt!320814 () List!9149)

(assert (=> b!846965 (= lt!320814 (printList!468 thiss!20117 (withSeparatorTokenList!46 thiss!20117 (t!94490 l!5107) separatorToken!297)))))

(declare-fun lt!320817 () Unit!13599)

(declare-fun lemmaConcatAssociativity!743 (List!9149 List!9149 List!9149) Unit!13599)

(assert (=> b!846965 (= lt!320817 (lemmaConcatAssociativity!743 lt!320813 lt!320812 lt!320814))))

(assert (=> b!846965 (= (++!2364 (++!2364 lt!320813 lt!320812) lt!320814) (++!2364 lt!320813 (++!2364 lt!320812 lt!320814)))))

(declare-fun lt!320816 () Unit!13599)

(assert (=> b!846965 (= lt!320816 lt!320817)))

(declare-fun b!846966 () Bool)

(assert (=> b!846966 (= e!557367 Nil!9134)))

(declare-fun b!846967 () Bool)

(declare-fun res!387245 () Bool)

(assert (=> b!846967 (=> (not res!387245) (not e!557365))))

(assert (=> b!846967 (= res!387245 e!557366)))

(declare-fun res!387247 () Bool)

(assert (=> b!846967 (=> res!387247 e!557366)))

(assert (=> b!846967 (= res!387247 (not ((_ is Cons!9134) l!5107)))))

(declare-fun e!557363 () Bool)

(declare-fun b!846968 () Bool)

(assert (=> b!846968 (= e!557363 (= (printList!468 thiss!20117 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 l!5107) separatorToken!297) separatorToken!297)) e!557364))))

(declare-fun c!137666 () Bool)

(assert (=> b!846968 (= c!137666 ((_ is Cons!9134) lt!320811))))

(assert (=> b!846968 (= lt!320811 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 l!5107) separatorToken!297) separatorToken!297))))

(declare-fun b!846969 () Bool)

(assert (=> b!846969 (= e!557365 e!557363)))

(declare-fun res!387246 () Bool)

(assert (=> b!846969 (=> res!387246 e!557363)))

(assert (=> b!846969 (= res!387246 (not ((_ is Cons!9134) l!5107)))))

(assert (= (and d!263527 res!387248) b!846967))

(assert (= (and b!846967 (not res!387247)) b!846964))

(assert (= (and b!846964 c!137665) b!846961))

(assert (= (and b!846964 (not c!137665)) b!846963))

(assert (= (and b!846967 res!387245) b!846969))

(assert (= (and b!846969 (not res!387246)) b!846968))

(assert (= (and b!846968 c!137666) b!846960))

(assert (= (and b!846968 (not c!137666)) b!846962))

(assert (= (and d!263527 c!137667) b!846965))

(assert (= (and d!263527 (not c!137667)) b!846966))

(declare-fun m!1082249 () Bool)

(assert (=> b!846960 m!1082249))

(assert (=> b!846960 m!1082249))

(declare-fun m!1082251 () Bool)

(assert (=> b!846960 m!1082251))

(declare-fun m!1082253 () Bool)

(assert (=> b!846960 m!1082253))

(assert (=> b!846960 m!1082251))

(assert (=> b!846960 m!1082253))

(declare-fun m!1082257 () Bool)

(assert (=> b!846960 m!1082257))

(declare-fun m!1082259 () Bool)

(assert (=> b!846964 m!1082259))

(assert (=> b!846964 m!1082259))

(declare-fun m!1082265 () Bool)

(assert (=> b!846964 m!1082265))

(assert (=> b!846964 m!1082265))

(declare-fun m!1082267 () Bool)

(assert (=> b!846964 m!1082267))

(assert (=> b!846964 m!1082267))

(declare-fun m!1082269 () Bool)

(assert (=> b!846964 m!1082269))

(declare-fun m!1082271 () Bool)

(assert (=> b!846965 m!1082271))

(declare-fun m!1082273 () Bool)

(assert (=> b!846965 m!1082273))

(declare-fun m!1082275 () Bool)

(assert (=> b!846965 m!1082275))

(declare-fun m!1082277 () Bool)

(assert (=> b!846965 m!1082277))

(assert (=> b!846965 m!1082275))

(declare-fun m!1082279 () Bool)

(assert (=> b!846965 m!1082279))

(declare-fun m!1082281 () Bool)

(assert (=> b!846965 m!1082281))

(declare-fun m!1082283 () Bool)

(assert (=> b!846965 m!1082283))

(assert (=> b!846965 m!1082259))

(assert (=> b!846965 m!1082259))

(assert (=> b!846965 m!1082265))

(assert (=> b!846965 m!1082279))

(declare-fun m!1082285 () Bool)

(assert (=> b!846965 m!1082285))

(assert (=> b!846965 m!1082265))

(assert (=> b!846965 m!1082267))

(assert (=> b!846965 m!1082271))

(assert (=> b!846965 m!1082281))

(declare-fun m!1082287 () Bool)

(assert (=> b!846965 m!1082287))

(assert (=> b!846965 m!1082259))

(declare-fun m!1082289 () Bool)

(assert (=> b!846965 m!1082289))

(declare-fun m!1082291 () Bool)

(assert (=> b!846961 m!1082291))

(assert (=> b!846961 m!1082291))

(declare-fun m!1082293 () Bool)

(assert (=> b!846961 m!1082293))

(declare-fun m!1082295 () Bool)

(assert (=> b!846961 m!1082295))

(assert (=> b!846961 m!1082293))

(assert (=> b!846961 m!1082295))

(declare-fun m!1082297 () Bool)

(assert (=> b!846961 m!1082297))

(assert (=> b!846968 m!1082259))

(assert (=> b!846968 m!1082259))

(assert (=> b!846968 m!1082265))

(assert (=> b!846968 m!1082265))

(declare-fun m!1082299 () Bool)

(assert (=> b!846968 m!1082299))

(declare-fun m!1082301 () Bool)

(assert (=> d!263527 m!1082301))

(declare-fun m!1082303 () Bool)

(assert (=> d!263527 m!1082303))

(assert (=> b!846773 d!263527))

(declare-fun d!263533 () Bool)

(assert (=> d!263533 (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 (withSeparatorTokenList!46 thiss!20117 l!5107 separatorToken!297))))

(declare-fun lt!320851 () Unit!13599)

(declare-fun choose!4999 (LexerInterface!1516 List!9151 List!9150 Token!3094) Unit!13599)

(assert (=> d!263533 (= lt!320851 (choose!4999 thiss!20117 rules!2621 l!5107 separatorToken!297))))

(assert (=> d!263533 (not (isEmpty!5390 rules!2621))))

(assert (=> d!263533 (= (withSeparatorTokenListPreservesRulesProduceTokens!46 thiss!20117 rules!2621 l!5107 separatorToken!297) lt!320851)))

(declare-fun bs!230470 () Bool)

(assert (= bs!230470 d!263533))

(assert (=> bs!230470 m!1082053))

(assert (=> bs!230470 m!1082053))

(declare-fun m!1082429 () Bool)

(assert (=> bs!230470 m!1082429))

(declare-fun m!1082431 () Bool)

(assert (=> bs!230470 m!1082431))

(assert (=> bs!230470 m!1082077))

(assert (=> b!846773 d!263533))

(declare-fun d!263563 () Bool)

(assert (=> d!263563 (= (inv!11607 (tag!1976 (rule!3137 (h!14535 l!5107)))) (= (mod (str.len (value!55547 (tag!1976 (rule!3137 (h!14535 l!5107))))) 2) 0))))

(assert (=> b!846784 d!263563))

(declare-fun d!263565 () Bool)

(declare-fun res!387285 () Bool)

(declare-fun e!557410 () Bool)

(assert (=> d!263565 (=> (not res!387285) (not e!557410))))

(assert (=> d!263565 (= res!387285 (semiInverseModEq!664 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (toValue!2739 (transformation!1714 (rule!3137 (h!14535 l!5107))))))))

(assert (=> d!263565 (= (inv!11611 (transformation!1714 (rule!3137 (h!14535 l!5107)))) e!557410)))

(declare-fun b!847028 () Bool)

(assert (=> b!847028 (= e!557410 (equivClasses!631 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (toValue!2739 (transformation!1714 (rule!3137 (h!14535 l!5107))))))))

(assert (= (and d!263565 res!387285) b!847028))

(declare-fun m!1082433 () Bool)

(assert (=> d!263565 m!1082433))

(declare-fun m!1082435 () Bool)

(assert (=> b!847028 m!1082435))

(assert (=> b!846784 d!263565))

(declare-fun b!847029 () Bool)

(declare-fun e!557412 () List!9149)

(declare-fun lt!320853 () List!9150)

(assert (=> b!847029 (= e!557412 (++!2364 (list!3581 (charsOf!985 (h!14535 lt!320853))) (printList!468 thiss!20117 (t!94490 lt!320853))))))

(declare-fun b!847030 () Bool)

(declare-fun e!557416 () List!9149)

(declare-fun lt!320857 () List!9150)

(assert (=> b!847030 (= e!557416 (++!2364 (list!3581 (charsOf!985 (h!14535 lt!320857))) (printList!468 thiss!20117 (t!94490 lt!320857))))))

(declare-fun b!847031 () Bool)

(assert (=> b!847031 (= e!557412 Nil!9133)))

(declare-fun lt!320852 () List!9150)

(declare-fun d!263567 () Bool)

(assert (=> d!263567 (= (printList!468 thiss!20117 lt!320852) (printWithSeparatorTokenList!26 thiss!20117 lt!320744 separatorToken!297))))

(declare-fun e!557415 () List!9150)

(assert (=> d!263567 (= lt!320852 e!557415)))

(declare-fun c!137679 () Bool)

(assert (=> d!263567 (= c!137679 ((_ is Cons!9134) lt!320744))))

(declare-fun e!557413 () Bool)

(assert (=> d!263567 e!557413))

(declare-fun res!387289 () Bool)

(assert (=> d!263567 (=> (not res!387289) (not e!557413))))

(assert (=> d!263567 (= res!387289 (isSeparator!1714 (rule!3137 separatorToken!297)))))

(assert (=> d!263567 (= (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297) lt!320852)))

(declare-fun b!847032 () Bool)

(assert (=> b!847032 (= e!557416 Nil!9133)))

(declare-fun e!557414 () Bool)

(declare-fun b!847033 () Bool)

(assert (=> b!847033 (= e!557414 (= (printList!468 thiss!20117 ($colon$colon!81 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 lt!320744) separatorToken!297) separatorToken!297) (h!14535 lt!320744))) e!557416))))

(declare-fun c!137677 () Bool)

(assert (=> b!847033 (= c!137677 ((_ is Cons!9134) lt!320857))))

(assert (=> b!847033 (= lt!320857 ($colon$colon!81 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 lt!320744) separatorToken!297) separatorToken!297) (h!14535 lt!320744)))))

(declare-fun b!847034 () Bool)

(assert (=> b!847034 (= e!557415 ($colon$colon!81 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 lt!320744) separatorToken!297) separatorToken!297) (h!14535 lt!320744)))))

(declare-fun lt!320855 () List!9149)

(assert (=> b!847034 (= lt!320855 (list!3581 (charsOf!985 (h!14535 lt!320744))))))

(declare-fun lt!320854 () List!9149)

(assert (=> b!847034 (= lt!320854 (list!3581 (charsOf!985 separatorToken!297)))))

(declare-fun lt!320856 () List!9149)

(assert (=> b!847034 (= lt!320856 (printList!468 thiss!20117 (withSeparatorTokenList!46 thiss!20117 (t!94490 lt!320744) separatorToken!297)))))

(declare-fun lt!320859 () Unit!13599)

(assert (=> b!847034 (= lt!320859 (lemmaConcatAssociativity!743 lt!320855 lt!320854 lt!320856))))

(assert (=> b!847034 (= (++!2364 (++!2364 lt!320855 lt!320854) lt!320856) (++!2364 lt!320855 (++!2364 lt!320854 lt!320856)))))

(declare-fun lt!320858 () Unit!13599)

(assert (=> b!847034 (= lt!320858 lt!320859)))

(declare-fun b!847035 () Bool)

(assert (=> b!847035 (= e!557415 Nil!9134)))

(declare-fun b!847036 () Bool)

(declare-fun res!387286 () Bool)

(assert (=> b!847036 (=> (not res!387286) (not e!557413))))

(assert (=> b!847036 (= res!387286 e!557414)))

(declare-fun res!387288 () Bool)

(assert (=> b!847036 (=> res!387288 e!557414)))

(assert (=> b!847036 (= res!387288 (not ((_ is Cons!9134) lt!320744)))))

(declare-fun e!557411 () Bool)

(declare-fun b!847037 () Bool)

(assert (=> b!847037 (= e!557411 (= (printList!468 thiss!20117 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 lt!320744) separatorToken!297) separatorToken!297)) e!557412))))

(declare-fun c!137678 () Bool)

(assert (=> b!847037 (= c!137678 ((_ is Cons!9134) lt!320853))))

(assert (=> b!847037 (= lt!320853 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 lt!320744) separatorToken!297) separatorToken!297))))

(declare-fun b!847038 () Bool)

(assert (=> b!847038 (= e!557413 e!557411)))

(declare-fun res!387287 () Bool)

(assert (=> b!847038 (=> res!387287 e!557411)))

(assert (=> b!847038 (= res!387287 (not ((_ is Cons!9134) lt!320744)))))

(assert (= (and d!263567 res!387289) b!847036))

(assert (= (and b!847036 (not res!387288)) b!847033))

(assert (= (and b!847033 c!137677) b!847030))

(assert (= (and b!847033 (not c!137677)) b!847032))

(assert (= (and b!847036 res!387286) b!847038))

(assert (= (and b!847038 (not res!387287)) b!847037))

(assert (= (and b!847037 c!137678) b!847029))

(assert (= (and b!847037 (not c!137678)) b!847031))

(assert (= (and d!263567 c!137679) b!847034))

(assert (= (and d!263567 (not c!137679)) b!847035))

(declare-fun m!1082437 () Bool)

(assert (=> b!847029 m!1082437))

(assert (=> b!847029 m!1082437))

(declare-fun m!1082439 () Bool)

(assert (=> b!847029 m!1082439))

(declare-fun m!1082441 () Bool)

(assert (=> b!847029 m!1082441))

(assert (=> b!847029 m!1082439))

(assert (=> b!847029 m!1082441))

(declare-fun m!1082443 () Bool)

(assert (=> b!847029 m!1082443))

(declare-fun m!1082445 () Bool)

(assert (=> b!847033 m!1082445))

(assert (=> b!847033 m!1082445))

(declare-fun m!1082447 () Bool)

(assert (=> b!847033 m!1082447))

(assert (=> b!847033 m!1082447))

(declare-fun m!1082449 () Bool)

(assert (=> b!847033 m!1082449))

(assert (=> b!847033 m!1082449))

(declare-fun m!1082451 () Bool)

(assert (=> b!847033 m!1082451))

(declare-fun m!1082453 () Bool)

(assert (=> b!847034 m!1082453))

(declare-fun m!1082455 () Bool)

(assert (=> b!847034 m!1082455))

(declare-fun m!1082457 () Bool)

(assert (=> b!847034 m!1082457))

(declare-fun m!1082459 () Bool)

(assert (=> b!847034 m!1082459))

(assert (=> b!847034 m!1082457))

(assert (=> b!847034 m!1082279))

(declare-fun m!1082461 () Bool)

(assert (=> b!847034 m!1082461))

(declare-fun m!1082463 () Bool)

(assert (=> b!847034 m!1082463))

(assert (=> b!847034 m!1082445))

(assert (=> b!847034 m!1082445))

(assert (=> b!847034 m!1082447))

(assert (=> b!847034 m!1082279))

(assert (=> b!847034 m!1082285))

(assert (=> b!847034 m!1082447))

(assert (=> b!847034 m!1082449))

(assert (=> b!847034 m!1082453))

(assert (=> b!847034 m!1082461))

(declare-fun m!1082465 () Bool)

(assert (=> b!847034 m!1082465))

(assert (=> b!847034 m!1082445))

(declare-fun m!1082467 () Bool)

(assert (=> b!847034 m!1082467))

(declare-fun m!1082469 () Bool)

(assert (=> b!847030 m!1082469))

(assert (=> b!847030 m!1082469))

(declare-fun m!1082471 () Bool)

(assert (=> b!847030 m!1082471))

(declare-fun m!1082473 () Bool)

(assert (=> b!847030 m!1082473))

(assert (=> b!847030 m!1082471))

(assert (=> b!847030 m!1082473))

(declare-fun m!1082475 () Bool)

(assert (=> b!847030 m!1082475))

(assert (=> b!847037 m!1082445))

(assert (=> b!847037 m!1082445))

(assert (=> b!847037 m!1082447))

(assert (=> b!847037 m!1082447))

(declare-fun m!1082477 () Bool)

(assert (=> b!847037 m!1082477))

(declare-fun m!1082479 () Bool)

(assert (=> d!263567 m!1082479))

(declare-fun m!1082481 () Bool)

(assert (=> d!263567 m!1082481))

(assert (=> b!846774 d!263567))

(declare-fun d!263569 () Bool)

(assert (=> d!263569 (= (tail!1032 l!5107) (t!94490 l!5107))))

(assert (=> b!846774 d!263569))

(declare-fun d!263571 () Bool)

(assert (=> d!263571 (= (head!1474 l!5107) (h!14535 l!5107))))

(assert (=> b!846772 d!263571))

(declare-fun d!263573 () Bool)

(declare-fun res!387290 () Bool)

(declare-fun e!557417 () Bool)

(assert (=> d!263573 (=> (not res!387290) (not e!557417))))

(assert (=> d!263573 (= res!387290 (not (isEmpty!5394 (originalCharacters!2270 (h!14535 l!5107)))))))

(assert (=> d!263573 (= (inv!11610 (h!14535 l!5107)) e!557417)))

(declare-fun b!847039 () Bool)

(declare-fun res!387291 () Bool)

(assert (=> b!847039 (=> (not res!387291) (not e!557417))))

(assert (=> b!847039 (= res!387291 (= (originalCharacters!2270 (h!14535 l!5107)) (list!3581 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (value!55548 (h!14535 l!5107))))))))

(declare-fun b!847040 () Bool)

(assert (=> b!847040 (= e!557417 (= (size!7607 (h!14535 l!5107)) (size!7610 (originalCharacters!2270 (h!14535 l!5107)))))))

(assert (= (and d!263573 res!387290) b!847039))

(assert (= (and b!847039 res!387291) b!847040))

(declare-fun b_lambda!27999 () Bool)

(assert (=> (not b_lambda!27999) (not b!847039)))

(declare-fun t!94517 () Bool)

(declare-fun tb!58787 () Bool)

(assert (=> (and b!846785 (= (toChars!2598 (transformation!1714 (h!14536 rules!2621))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107))))) t!94517) tb!58787))

(declare-fun b!847041 () Bool)

(declare-fun e!557418 () Bool)

(declare-fun tp!266636 () Bool)

(assert (=> b!847041 (= e!557418 (and (inv!11614 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (value!55548 (h!14535 l!5107))))) tp!266636))))

(declare-fun result!68180 () Bool)

(assert (=> tb!58787 (= result!68180 (and (inv!11615 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (value!55548 (h!14535 l!5107)))) e!557418))))

(assert (= tb!58787 b!847041))

(declare-fun m!1082483 () Bool)

(assert (=> b!847041 m!1082483))

(declare-fun m!1082485 () Bool)

(assert (=> tb!58787 m!1082485))

(assert (=> b!847039 t!94517))

(declare-fun b_and!73715 () Bool)

(assert (= b_and!73703 (and (=> t!94517 result!68180) b_and!73715)))

(declare-fun t!94519 () Bool)

(declare-fun tb!58789 () Bool)

(assert (=> (and b!846779 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107))))) t!94519) tb!58789))

(declare-fun result!68182 () Bool)

(assert (= result!68182 result!68180))

(assert (=> b!847039 t!94519))

(declare-fun b_and!73717 () Bool)

(assert (= b_and!73705 (and (=> t!94519 result!68182) b_and!73717)))

(declare-fun tb!58791 () Bool)

(declare-fun t!94521 () Bool)

(assert (=> (and b!846786 (= (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107))))) t!94521) tb!58791))

(declare-fun result!68184 () Bool)

(assert (= result!68184 result!68180))

(assert (=> b!847039 t!94521))

(declare-fun b_and!73719 () Bool)

(assert (= b_and!73707 (and (=> t!94521 result!68184) b_and!73719)))

(declare-fun m!1082487 () Bool)

(assert (=> d!263573 m!1082487))

(declare-fun m!1082489 () Bool)

(assert (=> b!847039 m!1082489))

(assert (=> b!847039 m!1082489))

(declare-fun m!1082491 () Bool)

(assert (=> b!847039 m!1082491))

(declare-fun m!1082493 () Bool)

(assert (=> b!847040 m!1082493))

(assert (=> b!846783 d!263573))

(declare-fun d!263575 () Bool)

(declare-fun lt!320861 () Bool)

(declare-fun e!557420 () Bool)

(assert (=> d!263575 (= lt!320861 e!557420)))

(declare-fun res!387293 () Bool)

(assert (=> d!263575 (=> (not res!387293) (not e!557420))))

(assert (=> d!263575 (= res!387293 (= (list!3582 (_1!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 separatorToken!297))))) (list!3582 (singletonSeq!528 separatorToken!297))))))

(declare-fun e!557419 () Bool)

(assert (=> d!263575 (= lt!320861 e!557419)))

(declare-fun res!387294 () Bool)

(assert (=> d!263575 (=> (not res!387294) (not e!557419))))

(declare-fun lt!320860 () tuple2!10356)

(assert (=> d!263575 (= res!387294 (= (size!7612 (_1!6004 lt!320860)) 1))))

(assert (=> d!263575 (= lt!320860 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 separatorToken!297))))))

(assert (=> d!263575 (not (isEmpty!5390 rules!2621))))

(assert (=> d!263575 (= (rulesProduceIndividualToken!580 thiss!20117 rules!2621 separatorToken!297) lt!320861)))

(declare-fun b!847042 () Bool)

(declare-fun res!387292 () Bool)

(assert (=> b!847042 (=> (not res!387292) (not e!557419))))

(assert (=> b!847042 (= res!387292 (= (apply!1854 (_1!6004 lt!320860) 0) separatorToken!297))))

(declare-fun b!847043 () Bool)

(assert (=> b!847043 (= e!557419 (isEmpty!5391 (_2!6004 lt!320860)))))

(declare-fun b!847044 () Bool)

(assert (=> b!847044 (= e!557420 (isEmpty!5391 (_2!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 separatorToken!297))))))))

(assert (= (and d!263575 res!387294) b!847042))

(assert (= (and b!847042 res!387292) b!847043))

(assert (= (and d!263575 res!387293) b!847044))

(declare-fun m!1082495 () Bool)

(assert (=> d!263575 m!1082495))

(declare-fun m!1082497 () Bool)

(assert (=> d!263575 m!1082497))

(assert (=> d!263575 m!1082495))

(assert (=> d!263575 m!1082495))

(declare-fun m!1082499 () Bool)

(assert (=> d!263575 m!1082499))

(declare-fun m!1082501 () Bool)

(assert (=> d!263575 m!1082501))

(assert (=> d!263575 m!1082077))

(declare-fun m!1082503 () Bool)

(assert (=> d!263575 m!1082503))

(assert (=> d!263575 m!1082497))

(declare-fun m!1082505 () Bool)

(assert (=> d!263575 m!1082505))

(declare-fun m!1082507 () Bool)

(assert (=> b!847042 m!1082507))

(declare-fun m!1082509 () Bool)

(assert (=> b!847043 m!1082509))

(assert (=> b!847044 m!1082495))

(assert (=> b!847044 m!1082495))

(assert (=> b!847044 m!1082497))

(assert (=> b!847044 m!1082497))

(assert (=> b!847044 m!1082505))

(declare-fun m!1082511 () Bool)

(assert (=> b!847044 m!1082511))

(assert (=> b!846776 d!263575))

(declare-fun d!263577 () Bool)

(declare-fun res!387299 () Bool)

(declare-fun e!557425 () Bool)

(assert (=> d!263577 (=> res!387299 e!557425)))

(assert (=> d!263577 (= res!387299 ((_ is Nil!9134) l!5107))))

(assert (=> d!263577 (= (forall!2141 l!5107 lambda!25220) e!557425)))

(declare-fun b!847049 () Bool)

(declare-fun e!557426 () Bool)

(assert (=> b!847049 (= e!557425 e!557426)))

(declare-fun res!387300 () Bool)

(assert (=> b!847049 (=> (not res!387300) (not e!557426))))

(declare-fun dynLambda!4239 (Int Token!3094) Bool)

(assert (=> b!847049 (= res!387300 (dynLambda!4239 lambda!25220 (h!14535 l!5107)))))

(declare-fun b!847050 () Bool)

(assert (=> b!847050 (= e!557426 (forall!2141 (t!94490 l!5107) lambda!25220))))

(assert (= (and d!263577 (not res!387299)) b!847049))

(assert (= (and b!847049 res!387300) b!847050))

(declare-fun b_lambda!28001 () Bool)

(assert (=> (not b_lambda!28001) (not b!847049)))

(declare-fun m!1082513 () Bool)

(assert (=> b!847049 m!1082513))

(declare-fun m!1082515 () Bool)

(assert (=> b!847050 m!1082515))

(assert (=> b!846787 d!263577))

(declare-fun bs!230471 () Bool)

(declare-fun d!263579 () Bool)

(assert (= bs!230471 (and d!263579 b!846787)))

(declare-fun lambda!25230 () Int)

(assert (=> bs!230471 (not (= lambda!25230 lambda!25220))))

(declare-fun bs!230472 () Bool)

(assert (= bs!230472 (and d!263579 d!263489)))

(assert (=> bs!230472 (= lambda!25230 lambda!25226)))

(declare-fun bs!230473 () Bool)

(assert (= bs!230473 (and d!263579 d!263525)))

(assert (=> bs!230473 (= lambda!25230 lambda!25228)))

(declare-fun b!847055 () Bool)

(declare-fun e!557431 () Bool)

(assert (=> b!847055 (= e!557431 true)))

(declare-fun b!847054 () Bool)

(declare-fun e!557430 () Bool)

(assert (=> b!847054 (= e!557430 e!557431)))

(declare-fun b!847053 () Bool)

(declare-fun e!557429 () Bool)

(assert (=> b!847053 (= e!557429 e!557430)))

(assert (=> d!263579 e!557429))

(assert (= b!847054 b!847055))

(assert (= b!847053 b!847054))

(assert (= (and d!263579 ((_ is Cons!9135) rules!2621)) b!847053))

(assert (=> b!847055 (< (dynLambda!4236 order!5823 (toValue!2739 (transformation!1714 (h!14536 rules!2621)))) (dynLambda!4237 order!5825 lambda!25230))))

(assert (=> b!847055 (< (dynLambda!4238 order!5827 (toChars!2598 (transformation!1714 (h!14536 rules!2621)))) (dynLambda!4237 order!5825 lambda!25230))))

(assert (=> d!263579 true))

(declare-fun lt!320862 () Bool)

(assert (=> d!263579 (= lt!320862 (forall!2141 lt!320741 lambda!25230))))

(declare-fun e!557428 () Bool)

(assert (=> d!263579 (= lt!320862 e!557428)))

(declare-fun res!387301 () Bool)

(assert (=> d!263579 (=> res!387301 e!557428)))

(assert (=> d!263579 (= res!387301 (not ((_ is Cons!9134) lt!320741)))))

(assert (=> d!263579 (not (isEmpty!5390 rules!2621))))

(assert (=> d!263579 (= (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 lt!320741) lt!320862)))

(declare-fun b!847051 () Bool)

(declare-fun e!557427 () Bool)

(assert (=> b!847051 (= e!557428 e!557427)))

(declare-fun res!387302 () Bool)

(assert (=> b!847051 (=> (not res!387302) (not e!557427))))

(assert (=> b!847051 (= res!387302 (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 lt!320741)))))

(declare-fun b!847052 () Bool)

(assert (=> b!847052 (= e!557427 (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 (t!94490 lt!320741)))))

(assert (= (and d!263579 (not res!387301)) b!847051))

(assert (= (and b!847051 res!387302) b!847052))

(declare-fun m!1082517 () Bool)

(assert (=> d!263579 m!1082517))

(assert (=> d!263579 m!1082077))

(declare-fun m!1082519 () Bool)

(assert (=> b!847051 m!1082519))

(declare-fun m!1082521 () Bool)

(assert (=> b!847052 m!1082521))

(assert (=> b!846766 d!263579))

(declare-fun d!263581 () Bool)

(assert (=> d!263581 (separableTokensPredicate!56 thiss!20117 (h!14535 lt!320749) (h!14535 (t!94490 lt!320749)) rules!2621)))

(declare-fun lt!320863 () Unit!13599)

(assert (=> d!263581 (= lt!320863 (choose!4998 thiss!20117 (h!14535 lt!320749) (h!14535 (t!94490 lt!320749)) rules!2621))))

(assert (=> d!263581 (not (isEmpty!5390 rules!2621))))

(assert (=> d!263581 (= (lemmaTokensOfDifferentKindsAreSeparable!38 thiss!20117 (h!14535 lt!320749) (h!14535 (t!94490 lt!320749)) rules!2621) lt!320863)))

(declare-fun bs!230474 () Bool)

(assert (= bs!230474 d!263581))

(assert (=> bs!230474 m!1082021))

(declare-fun m!1082523 () Bool)

(assert (=> bs!230474 m!1082523))

(assert (=> bs!230474 m!1082077))

(assert (=> b!846766 d!263581))

(declare-fun d!263583 () Bool)

(assert (=> d!263583 (= (isEmpty!5389 (t!94490 (t!94490 lt!320749))) ((_ is Nil!9134) (t!94490 (t!94490 lt!320749))))))

(assert (=> b!846766 d!263583))

(declare-fun d!263585 () Bool)

(assert (=> d!263585 (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297))))

(declare-fun lt!320864 () Unit!13599)

(assert (=> d!263585 (= lt!320864 (choose!4999 thiss!20117 rules!2621 lt!320744 separatorToken!297))))

(assert (=> d!263585 (not (isEmpty!5390 rules!2621))))

(assert (=> d!263585 (= (withSeparatorTokenListPreservesRulesProduceTokens!46 thiss!20117 rules!2621 lt!320744 separatorToken!297) lt!320864)))

(declare-fun bs!230475 () Bool)

(assert (= bs!230475 d!263585))

(assert (=> bs!230475 m!1082057))

(assert (=> bs!230475 m!1082057))

(declare-fun m!1082525 () Bool)

(assert (=> bs!230475 m!1082525))

(declare-fun m!1082527 () Bool)

(assert (=> bs!230475 m!1082527))

(assert (=> bs!230475 m!1082077))

(assert (=> b!846766 d!263585))

(declare-fun b!847139 () Bool)

(declare-fun res!387327 () Bool)

(declare-fun e!557488 () Bool)

(assert (=> b!847139 (=> (not res!387327) (not e!557488))))

(assert (=> b!847139 (= res!387327 (rulesInvariant!1392 thiss!20117 rules!2621))))

(declare-fun b!847140 () Bool)

(declare-fun res!387329 () Bool)

(assert (=> b!847140 (=> (not res!387329) (not e!557488))))

(assert (=> b!847140 (= res!387329 (rulesProduceIndividualToken!580 thiss!20117 rules!2621 separatorToken!297))))

(declare-fun b!847141 () Bool)

(declare-fun res!387326 () Bool)

(assert (=> b!847141 (=> (not res!387326) (not e!557488))))

(assert (=> b!847141 (= res!387326 (isSeparator!1714 (rule!3137 separatorToken!297)))))

(declare-fun b!847142 () Bool)

(assert (=> b!847142 (= e!557488 (tokensListTwoByTwoPredicateSeparableList!38 thiss!20117 (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297) rules!2621))))

(declare-fun lt!320900 () Unit!13599)

(declare-fun lt!320901 () Unit!13599)

(assert (=> b!847142 (= lt!320900 lt!320901)))

(assert (=> b!847142 (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297))))

(assert (=> b!847142 (= lt!320901 (withSeparatorTokenListPreservesRulesProduceTokens!46 thiss!20117 rules!2621 lt!320744 separatorToken!297))))

(declare-fun b!847143 () Bool)

(declare-fun res!387330 () Bool)

(assert (=> b!847143 (=> (not res!387330) (not e!557488))))

(assert (=> b!847143 (= res!387330 (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 lt!320744))))

(declare-fun d!263587 () Bool)

(assert (=> d!263587 e!557488))

(declare-fun res!387328 () Bool)

(assert (=> d!263587 (=> (not res!387328) (not e!557488))))

(assert (=> d!263587 (= res!387328 ((_ is Lexer!1514) thiss!20117))))

(declare-fun lt!320902 () Unit!13599)

(declare-fun choose!5000 (LexerInterface!1516 List!9151 List!9150 Token!3094) Unit!13599)

(assert (=> d!263587 (= lt!320902 (choose!5000 thiss!20117 rules!2621 lt!320744 separatorToken!297))))

(assert (=> d!263587 (not (isEmpty!5390 rules!2621))))

(assert (=> d!263587 (= (printWithSeparatorTokenImpliesSeparableTokensList!22 thiss!20117 rules!2621 lt!320744 separatorToken!297) lt!320902)))

(assert (= (and d!263587 res!387328) b!847139))

(assert (= (and b!847139 res!387327) b!847143))

(assert (= (and b!847143 res!387330) b!847140))

(assert (= (and b!847140 res!387329) b!847141))

(assert (= (and b!847141 res!387326) b!847142))

(assert (=> b!847142 m!1082057))

(assert (=> b!847142 m!1082057))

(declare-fun m!1082617 () Bool)

(assert (=> b!847142 m!1082617))

(assert (=> b!847142 m!1082057))

(assert (=> b!847142 m!1082525))

(assert (=> b!847142 m!1082025))

(assert (=> b!847139 m!1082063))

(declare-fun m!1082619 () Bool)

(assert (=> d!263587 m!1082619))

(assert (=> d!263587 m!1082077))

(assert (=> b!847140 m!1082041))

(declare-fun m!1082621 () Bool)

(assert (=> b!847143 m!1082621))

(assert (=> b!846766 d!263587))

(declare-fun d!263603 () Bool)

(assert (=> d!263603 (= (separableTokensPredicate!56 thiss!20117 (h!14535 lt!320749) (h!14535 (t!94490 lt!320749)) rules!2621) (not (prefixMatchZipperSequence!23 (rulesRegex!18 thiss!20117 rules!2621) (++!2363 (charsOf!985 (h!14535 lt!320749)) (singletonSeq!529 (apply!1855 (charsOf!985 (h!14535 (t!94490 lt!320749))) 0))))))))

(declare-fun bs!230477 () Bool)

(assert (= bs!230477 d!263603))

(assert (=> bs!230477 m!1082221))

(declare-fun m!1082623 () Bool)

(assert (=> bs!230477 m!1082623))

(declare-fun m!1082625 () Bool)

(assert (=> bs!230477 m!1082625))

(assert (=> bs!230477 m!1082215))

(declare-fun m!1082627 () Bool)

(assert (=> bs!230477 m!1082627))

(declare-fun m!1082629 () Bool)

(assert (=> bs!230477 m!1082629))

(assert (=> bs!230477 m!1082221))

(assert (=> bs!230477 m!1082623))

(assert (=> bs!230477 m!1082215))

(declare-fun m!1082631 () Bool)

(assert (=> bs!230477 m!1082631))

(assert (=> bs!230477 m!1082631))

(assert (=> bs!230477 m!1082625))

(assert (=> bs!230477 m!1082627))

(assert (=> b!846766 d!263603))

(declare-fun d!263605 () Bool)

(declare-fun lt!320904 () Bool)

(declare-fun e!557490 () Bool)

(assert (=> d!263605 (= lt!320904 e!557490)))

(declare-fun res!387332 () Bool)

(assert (=> d!263605 (=> (not res!387332) (not e!557490))))

(assert (=> d!263605 (= res!387332 (= (list!3582 (_1!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 lt!320742))))) (list!3582 (singletonSeq!528 lt!320742))))))

(declare-fun e!557489 () Bool)

(assert (=> d!263605 (= lt!320904 e!557489)))

(declare-fun res!387333 () Bool)

(assert (=> d!263605 (=> (not res!387333) (not e!557489))))

(declare-fun lt!320903 () tuple2!10356)

(assert (=> d!263605 (= res!387333 (= (size!7612 (_1!6004 lt!320903)) 1))))

(assert (=> d!263605 (= lt!320903 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 lt!320742))))))

(assert (=> d!263605 (not (isEmpty!5390 rules!2621))))

(assert (=> d!263605 (= (rulesProduceIndividualToken!580 thiss!20117 rules!2621 lt!320742) lt!320904)))

(declare-fun b!847144 () Bool)

(declare-fun res!387331 () Bool)

(assert (=> b!847144 (=> (not res!387331) (not e!557489))))

(assert (=> b!847144 (= res!387331 (= (apply!1854 (_1!6004 lt!320903) 0) lt!320742))))

(declare-fun b!847145 () Bool)

(assert (=> b!847145 (= e!557489 (isEmpty!5391 (_2!6004 lt!320903)))))

(declare-fun b!847146 () Bool)

(assert (=> b!847146 (= e!557490 (isEmpty!5391 (_2!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 lt!320742))))))))

(assert (= (and d!263605 res!387333) b!847144))

(assert (= (and b!847144 res!387331) b!847145))

(assert (= (and d!263605 res!387332) b!847146))

(declare-fun m!1082633 () Bool)

(assert (=> d!263605 m!1082633))

(declare-fun m!1082635 () Bool)

(assert (=> d!263605 m!1082635))

(assert (=> d!263605 m!1082633))

(assert (=> d!263605 m!1082633))

(declare-fun m!1082637 () Bool)

(assert (=> d!263605 m!1082637))

(declare-fun m!1082639 () Bool)

(assert (=> d!263605 m!1082639))

(assert (=> d!263605 m!1082077))

(declare-fun m!1082641 () Bool)

(assert (=> d!263605 m!1082641))

(assert (=> d!263605 m!1082635))

(declare-fun m!1082643 () Bool)

(assert (=> d!263605 m!1082643))

(declare-fun m!1082645 () Bool)

(assert (=> b!847144 m!1082645))

(declare-fun m!1082647 () Bool)

(assert (=> b!847145 m!1082647))

(assert (=> b!847146 m!1082633))

(assert (=> b!847146 m!1082633))

(assert (=> b!847146 m!1082635))

(assert (=> b!847146 m!1082635))

(assert (=> b!847146 m!1082643))

(declare-fun m!1082649 () Bool)

(assert (=> b!847146 m!1082649))

(assert (=> b!846775 d!263605))

(declare-fun d!263607 () Bool)

(declare-fun lt!320907 () Bool)

(assert (=> d!263607 (= lt!320907 (isEmpty!5394 (list!3581 (charsOf!985 lt!320742))))))

(declare-fun isEmpty!5395 (Conc!3027) Bool)

(assert (=> d!263607 (= lt!320907 (isEmpty!5395 (c!137644 (charsOf!985 lt!320742))))))

(assert (=> d!263607 (= (isEmpty!5391 (charsOf!985 lt!320742)) lt!320907)))

(declare-fun bs!230478 () Bool)

(assert (= bs!230478 d!263607))

(assert (=> bs!230478 m!1082085))

(declare-fun m!1082651 () Bool)

(assert (=> bs!230478 m!1082651))

(assert (=> bs!230478 m!1082651))

(declare-fun m!1082653 () Bool)

(assert (=> bs!230478 m!1082653))

(declare-fun m!1082655 () Bool)

(assert (=> bs!230478 m!1082655))

(assert (=> b!846789 d!263607))

(declare-fun d!263609 () Bool)

(declare-fun lt!320910 () BalanceConc!6068)

(assert (=> d!263609 (= (list!3581 lt!320910) (originalCharacters!2270 lt!320742))))

(assert (=> d!263609 (= lt!320910 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 lt!320742))) (value!55548 lt!320742)))))

(assert (=> d!263609 (= (charsOf!985 lt!320742) lt!320910)))

(declare-fun b_lambda!28011 () Bool)

(assert (=> (not b_lambda!28011) (not d!263609)))

(declare-fun t!94542 () Bool)

(declare-fun tb!58811 () Bool)

(assert (=> (and b!846785 (= (toChars!2598 (transformation!1714 (h!14536 rules!2621))) (toChars!2598 (transformation!1714 (rule!3137 lt!320742)))) t!94542) tb!58811))

(declare-fun b!847147 () Bool)

(declare-fun e!557491 () Bool)

(declare-fun tp!266694 () Bool)

(assert (=> b!847147 (= e!557491 (and (inv!11614 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 lt!320742))) (value!55548 lt!320742)))) tp!266694))))

(declare-fun result!68212 () Bool)

(assert (=> tb!58811 (= result!68212 (and (inv!11615 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 lt!320742))) (value!55548 lt!320742))) e!557491))))

(assert (= tb!58811 b!847147))

(declare-fun m!1082657 () Bool)

(assert (=> b!847147 m!1082657))

(declare-fun m!1082659 () Bool)

(assert (=> tb!58811 m!1082659))

(assert (=> d!263609 t!94542))

(declare-fun b_and!73735 () Bool)

(assert (= b_and!73715 (and (=> t!94542 result!68212) b_and!73735)))

(declare-fun t!94544 () Bool)

(declare-fun tb!58813 () Bool)

(assert (=> (and b!846779 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (toChars!2598 (transformation!1714 (rule!3137 lt!320742)))) t!94544) tb!58813))

(declare-fun result!68214 () Bool)

(assert (= result!68214 result!68212))

(assert (=> d!263609 t!94544))

(declare-fun b_and!73737 () Bool)

(assert (= b_and!73717 (and (=> t!94544 result!68214) b_and!73737)))

(declare-fun t!94546 () Bool)

(declare-fun tb!58815 () Bool)

(assert (=> (and b!846786 (= (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (toChars!2598 (transformation!1714 (rule!3137 lt!320742)))) t!94546) tb!58815))

(declare-fun result!68216 () Bool)

(assert (= result!68216 result!68212))

(assert (=> d!263609 t!94546))

(declare-fun b_and!73739 () Bool)

(assert (= b_and!73719 (and (=> t!94546 result!68216) b_and!73739)))

(declare-fun m!1082661 () Bool)

(assert (=> d!263609 m!1082661))

(declare-fun m!1082663 () Bool)

(assert (=> d!263609 m!1082663))

(assert (=> b!846789 d!263609))

(declare-fun d!263611 () Bool)

(declare-fun res!387338 () Bool)

(declare-fun e!557497 () Bool)

(assert (=> d!263611 (=> res!387338 e!557497)))

(assert (=> d!263611 (= res!387338 (or (not ((_ is Cons!9134) lt!320741)) (not ((_ is Cons!9134) (t!94490 lt!320741)))))))

(assert (=> d!263611 (= (tokensListTwoByTwoPredicateSeparableList!38 thiss!20117 lt!320741 rules!2621) e!557497)))

(declare-fun b!847152 () Bool)

(declare-fun e!557496 () Bool)

(assert (=> b!847152 (= e!557497 e!557496)))

(declare-fun res!387339 () Bool)

(assert (=> b!847152 (=> (not res!387339) (not e!557496))))

(assert (=> b!847152 (= res!387339 (separableTokensPredicate!56 thiss!20117 (h!14535 lt!320741) (h!14535 (t!94490 lt!320741)) rules!2621))))

(declare-fun lt!320927 () Unit!13599)

(declare-fun Unit!13604 () Unit!13599)

(assert (=> b!847152 (= lt!320927 Unit!13604)))

(declare-fun size!7613 (BalanceConc!6068) Int)

(assert (=> b!847152 (> (size!7613 (charsOf!985 (h!14535 (t!94490 lt!320741)))) 0)))

(declare-fun lt!320925 () Unit!13599)

(declare-fun Unit!13605 () Unit!13599)

(assert (=> b!847152 (= lt!320925 Unit!13605)))

(assert (=> b!847152 (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 (t!94490 lt!320741)))))

(declare-fun lt!320928 () Unit!13599)

(declare-fun Unit!13606 () Unit!13599)

(assert (=> b!847152 (= lt!320928 Unit!13606)))

(assert (=> b!847152 (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 lt!320741))))

(declare-fun lt!320931 () Unit!13599)

(declare-fun lt!320930 () Unit!13599)

(assert (=> b!847152 (= lt!320931 lt!320930)))

(assert (=> b!847152 (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 (t!94490 lt!320741)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!226 (LexerInterface!1516 List!9151 List!9150 Token!3094) Unit!13599)

(assert (=> b!847152 (= lt!320930 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!226 thiss!20117 rules!2621 lt!320741 (h!14535 (t!94490 lt!320741))))))

(declare-fun lt!320926 () Unit!13599)

(declare-fun lt!320929 () Unit!13599)

(assert (=> b!847152 (= lt!320926 lt!320929)))

(assert (=> b!847152 (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 lt!320741))))

(assert (=> b!847152 (= lt!320929 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!226 thiss!20117 rules!2621 lt!320741 (h!14535 lt!320741)))))

(declare-fun b!847153 () Bool)

(assert (=> b!847153 (= e!557496 (tokensListTwoByTwoPredicateSeparableList!38 thiss!20117 (Cons!9134 (h!14535 (t!94490 lt!320741)) (t!94490 (t!94490 lt!320741))) rules!2621))))

(assert (= (and d!263611 (not res!387338)) b!847152))

(assert (= (and b!847152 res!387339) b!847153))

(declare-fun m!1082665 () Bool)

(assert (=> b!847152 m!1082665))

(assert (=> b!847152 m!1082519))

(declare-fun m!1082667 () Bool)

(assert (=> b!847152 m!1082667))

(declare-fun m!1082669 () Bool)

(assert (=> b!847152 m!1082669))

(declare-fun m!1082671 () Bool)

(assert (=> b!847152 m!1082671))

(declare-fun m!1082673 () Bool)

(assert (=> b!847152 m!1082673))

(assert (=> b!847152 m!1082671))

(declare-fun m!1082675 () Bool)

(assert (=> b!847152 m!1082675))

(declare-fun m!1082677 () Bool)

(assert (=> b!847153 m!1082677))

(assert (=> b!846768 d!263611))

(declare-fun d!263613 () Bool)

(assert (=> d!263613 (= (inv!11607 (tag!1976 (rule!3137 separatorToken!297))) (= (mod (str.len (value!55547 (tag!1976 (rule!3137 separatorToken!297)))) 2) 0))))

(assert (=> b!846777 d!263613))

(declare-fun d!263615 () Bool)

(declare-fun res!387340 () Bool)

(declare-fun e!557498 () Bool)

(assert (=> d!263615 (=> (not res!387340) (not e!557498))))

(assert (=> d!263615 (= res!387340 (semiInverseModEq!664 (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (toValue!2739 (transformation!1714 (rule!3137 separatorToken!297)))))))

(assert (=> d!263615 (= (inv!11611 (transformation!1714 (rule!3137 separatorToken!297))) e!557498)))

(declare-fun b!847154 () Bool)

(assert (=> b!847154 (= e!557498 (equivClasses!631 (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (toValue!2739 (transformation!1714 (rule!3137 separatorToken!297)))))))

(assert (= (and d!263615 res!387340) b!847154))

(declare-fun m!1082679 () Bool)

(assert (=> d!263615 m!1082679))

(declare-fun m!1082681 () Bool)

(assert (=> b!847154 m!1082681))

(assert (=> b!846777 d!263615))

(declare-fun d!263617 () Bool)

(declare-fun res!387343 () Bool)

(declare-fun e!557501 () Bool)

(assert (=> d!263617 (=> (not res!387343) (not e!557501))))

(declare-fun rulesValid!595 (LexerInterface!1516 List!9151) Bool)

(assert (=> d!263617 (= res!387343 (rulesValid!595 thiss!20117 rules!2621))))

(assert (=> d!263617 (= (rulesInvariant!1392 thiss!20117 rules!2621) e!557501)))

(declare-fun b!847157 () Bool)

(declare-datatypes ((List!9153 0))(
  ( (Nil!9137) (Cons!9137 (h!14538 String!10798) (t!94559 List!9153)) )
))
(declare-fun noDuplicateTag!595 (LexerInterface!1516 List!9151 List!9153) Bool)

(assert (=> b!847157 (= e!557501 (noDuplicateTag!595 thiss!20117 rules!2621 Nil!9137))))

(assert (= (and d!263617 res!387343) b!847157))

(declare-fun m!1082683 () Bool)

(assert (=> d!263617 m!1082683))

(declare-fun m!1082685 () Bool)

(assert (=> b!847157 m!1082685))

(assert (=> b!846788 d!263617))

(declare-fun d!263619 () Bool)

(assert (=> d!263619 (= (isEmpty!5390 rules!2621) ((_ is Nil!9135) rules!2621))))

(assert (=> b!846767 d!263619))

(declare-fun b!847158 () Bool)

(declare-fun res!387344 () Bool)

(declare-fun e!557503 () Bool)

(assert (=> b!847158 (=> res!387344 e!557503)))

(assert (=> b!847158 (= res!387344 (not ((_ is IntegerValue!5342) (value!55548 (h!14535 l!5107)))))))

(declare-fun e!557504 () Bool)

(assert (=> b!847158 (= e!557504 e!557503)))

(declare-fun b!847159 () Bool)

(declare-fun e!557502 () Bool)

(assert (=> b!847159 (= e!557502 e!557504)))

(declare-fun c!137684 () Bool)

(assert (=> b!847159 (= c!137684 ((_ is IntegerValue!5341) (value!55548 (h!14535 l!5107))))))

(declare-fun b!847160 () Bool)

(assert (=> b!847160 (= e!557504 (inv!17 (value!55548 (h!14535 l!5107))))))

(declare-fun d!263621 () Bool)

(declare-fun c!137685 () Bool)

(assert (=> d!263621 (= c!137685 ((_ is IntegerValue!5340) (value!55548 (h!14535 l!5107))))))

(assert (=> d!263621 (= (inv!21 (value!55548 (h!14535 l!5107))) e!557502)))

(declare-fun b!847161 () Bool)

(assert (=> b!847161 (= e!557503 (inv!15 (value!55548 (h!14535 l!5107))))))

(declare-fun b!847162 () Bool)

(assert (=> b!847162 (= e!557502 (inv!16 (value!55548 (h!14535 l!5107))))))

(assert (= (and d!263621 c!137685) b!847162))

(assert (= (and d!263621 (not c!137685)) b!847159))

(assert (= (and b!847159 c!137684) b!847160))

(assert (= (and b!847159 (not c!137684)) b!847158))

(assert (= (and b!847158 (not res!387344)) b!847161))

(declare-fun m!1082687 () Bool)

(assert (=> b!847160 m!1082687))

(declare-fun m!1082689 () Bool)

(assert (=> b!847161 m!1082689))

(declare-fun m!1082691 () Bool)

(assert (=> b!847162 m!1082691))

(assert (=> b!846778 d!263621))

(declare-fun b!847167 () Bool)

(declare-fun e!557507 () Bool)

(declare-fun tp_is_empty!3961 () Bool)

(declare-fun tp!266697 () Bool)

(assert (=> b!847167 (= e!557507 (and tp_is_empty!3961 tp!266697))))

(assert (=> b!846781 (= tp!266626 e!557507)))

(assert (= (and b!846781 ((_ is Cons!9133) (originalCharacters!2270 separatorToken!297))) b!847167))

(declare-fun b!847179 () Bool)

(declare-fun e!557510 () Bool)

(declare-fun tp!266709 () Bool)

(declare-fun tp!266708 () Bool)

(assert (=> b!847179 (= e!557510 (and tp!266709 tp!266708))))

(declare-fun b!847181 () Bool)

(declare-fun tp!266710 () Bool)

(declare-fun tp!266711 () Bool)

(assert (=> b!847181 (= e!557510 (and tp!266710 tp!266711))))

(declare-fun b!847180 () Bool)

(declare-fun tp!266712 () Bool)

(assert (=> b!847180 (= e!557510 tp!266712)))

(declare-fun b!847178 () Bool)

(assert (=> b!847178 (= e!557510 tp_is_empty!3961)))

(assert (=> b!846780 (= tp!266628 e!557510)))

(assert (= (and b!846780 ((_ is ElementMatch!2147) (regex!1714 (h!14536 rules!2621)))) b!847178))

(assert (= (and b!846780 ((_ is Concat!3928) (regex!1714 (h!14536 rules!2621)))) b!847179))

(assert (= (and b!846780 ((_ is Star!2147) (regex!1714 (h!14536 rules!2621)))) b!847180))

(assert (= (and b!846780 ((_ is Union!2147) (regex!1714 (h!14536 rules!2621)))) b!847181))

(declare-fun b!847183 () Bool)

(declare-fun e!557511 () Bool)

(declare-fun tp!266714 () Bool)

(declare-fun tp!266713 () Bool)

(assert (=> b!847183 (= e!557511 (and tp!266714 tp!266713))))

(declare-fun b!847185 () Bool)

(declare-fun tp!266715 () Bool)

(declare-fun tp!266716 () Bool)

(assert (=> b!847185 (= e!557511 (and tp!266715 tp!266716))))

(declare-fun b!847184 () Bool)

(declare-fun tp!266717 () Bool)

(assert (=> b!847184 (= e!557511 tp!266717)))

(declare-fun b!847182 () Bool)

(assert (=> b!847182 (= e!557511 tp_is_empty!3961)))

(assert (=> b!846784 (= tp!266625 e!557511)))

(assert (= (and b!846784 ((_ is ElementMatch!2147) (regex!1714 (rule!3137 (h!14535 l!5107))))) b!847182))

(assert (= (and b!846784 ((_ is Concat!3928) (regex!1714 (rule!3137 (h!14535 l!5107))))) b!847183))

(assert (= (and b!846784 ((_ is Star!2147) (regex!1714 (rule!3137 (h!14535 l!5107))))) b!847184))

(assert (= (and b!846784 ((_ is Union!2147) (regex!1714 (rule!3137 (h!14535 l!5107))))) b!847185))

(declare-fun b!847199 () Bool)

(declare-fun b_free!25533 () Bool)

(declare-fun b_next!25597 () Bool)

(assert (=> b!847199 (= b_free!25533 (not b_next!25597))))

(declare-fun tp!266732 () Bool)

(declare-fun b_and!73741 () Bool)

(assert (=> b!847199 (= tp!266732 b_and!73741)))

(declare-fun b_free!25535 () Bool)

(declare-fun b_next!25599 () Bool)

(assert (=> b!847199 (= b_free!25535 (not b_next!25599))))

(declare-fun t!94548 () Bool)

(declare-fun tb!58817 () Bool)

(assert (=> (and b!847199 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))) (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297)))) t!94548) tb!58817))

(declare-fun result!68224 () Bool)

(assert (= result!68224 result!68166))

(assert (=> b!846829 t!94548))

(declare-fun t!94550 () Bool)

(declare-fun tb!58819 () Bool)

(assert (=> (and b!847199 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107))))) t!94550) tb!58819))

(declare-fun result!68226 () Bool)

(assert (= result!68226 result!68180))

(assert (=> b!847039 t!94550))

(declare-fun tb!58821 () Bool)

(declare-fun t!94552 () Bool)

(assert (=> (and b!847199 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))) (toChars!2598 (transformation!1714 (rule!3137 lt!320742)))) t!94552) tb!58821))

(declare-fun result!68228 () Bool)

(assert (= result!68228 result!68212))

(assert (=> d!263609 t!94552))

(declare-fun b_and!73743 () Bool)

(declare-fun tp!266729 () Bool)

(assert (=> b!847199 (= tp!266729 (and (=> t!94548 result!68224) (=> t!94550 result!68226) (=> t!94552 result!68228) b_and!73743))))

(declare-fun e!557525 () Bool)

(declare-fun b!847198 () Bool)

(declare-fun tp!266728 () Bool)

(declare-fun e!557527 () Bool)

(assert (=> b!847198 (= e!557525 (and tp!266728 (inv!11607 (tag!1976 (rule!3137 (h!14535 (t!94490 l!5107))))) (inv!11611 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))) e!557527))))

(declare-fun e!557528 () Bool)

(declare-fun tp!266731 () Bool)

(declare-fun b!847196 () Bool)

(declare-fun e!557524 () Bool)

(assert (=> b!847196 (= e!557524 (and (inv!11610 (h!14535 (t!94490 l!5107))) e!557528 tp!266731))))

(assert (=> b!847199 (= e!557527 (and tp!266732 tp!266729))))

(declare-fun tp!266730 () Bool)

(declare-fun b!847197 () Bool)

(assert (=> b!847197 (= e!557528 (and (inv!21 (value!55548 (h!14535 (t!94490 l!5107)))) e!557525 tp!266730))))

(assert (=> b!846783 (= tp!266619 e!557524)))

(assert (= b!847198 b!847199))

(assert (= b!847197 b!847198))

(assert (= b!847196 b!847197))

(assert (= (and b!846783 ((_ is Cons!9134) (t!94490 l!5107))) b!847196))

(declare-fun m!1082693 () Bool)

(assert (=> b!847198 m!1082693))

(declare-fun m!1082695 () Bool)

(assert (=> b!847198 m!1082695))

(declare-fun m!1082697 () Bool)

(assert (=> b!847196 m!1082697))

(declare-fun m!1082699 () Bool)

(assert (=> b!847197 m!1082699))

(declare-fun b!847210 () Bool)

(declare-fun b_free!25537 () Bool)

(declare-fun b_next!25601 () Bool)

(assert (=> b!847210 (= b_free!25537 (not b_next!25601))))

(declare-fun tp!266743 () Bool)

(declare-fun b_and!73745 () Bool)

(assert (=> b!847210 (= tp!266743 b_and!73745)))

(declare-fun b_free!25539 () Bool)

(declare-fun b_next!25603 () Bool)

(assert (=> b!847210 (= b_free!25539 (not b_next!25603))))

(declare-fun t!94554 () Bool)

(declare-fun tb!58823 () Bool)

(assert (=> (and b!847210 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 rules!2621)))) (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297)))) t!94554) tb!58823))

(declare-fun result!68232 () Bool)

(assert (= result!68232 result!68166))

(assert (=> b!846829 t!94554))

(declare-fun t!94556 () Bool)

(declare-fun tb!58825 () Bool)

(assert (=> (and b!847210 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 rules!2621)))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107))))) t!94556) tb!58825))

(declare-fun result!68234 () Bool)

(assert (= result!68234 result!68180))

(assert (=> b!847039 t!94556))

(declare-fun tb!58827 () Bool)

(declare-fun t!94558 () Bool)

(assert (=> (and b!847210 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 rules!2621)))) (toChars!2598 (transformation!1714 (rule!3137 lt!320742)))) t!94558) tb!58827))

(declare-fun result!68236 () Bool)

(assert (= result!68236 result!68212))

(assert (=> d!263609 t!94558))

(declare-fun tp!266741 () Bool)

(declare-fun b_and!73747 () Bool)

(assert (=> b!847210 (= tp!266741 (and (=> t!94554 result!68232) (=> t!94556 result!68234) (=> t!94558 result!68236) b_and!73747))))

(declare-fun e!557539 () Bool)

(assert (=> b!847210 (= e!557539 (and tp!266743 tp!266741))))

(declare-fun tp!266742 () Bool)

(declare-fun e!557541 () Bool)

(declare-fun b!847209 () Bool)

(assert (=> b!847209 (= e!557541 (and tp!266742 (inv!11607 (tag!1976 (h!14536 (t!94491 rules!2621)))) (inv!11611 (transformation!1714 (h!14536 (t!94491 rules!2621)))) e!557539))))

(declare-fun b!847208 () Bool)

(declare-fun e!557540 () Bool)

(declare-fun tp!266744 () Bool)

(assert (=> b!847208 (= e!557540 (and e!557541 tp!266744))))

(assert (=> b!846764 (= tp!266623 e!557540)))

(assert (= b!847209 b!847210))

(assert (= b!847208 b!847209))

(assert (= (and b!846764 ((_ is Cons!9135) (t!94491 rules!2621))) b!847208))

(declare-fun m!1082701 () Bool)

(assert (=> b!847209 m!1082701))

(declare-fun m!1082703 () Bool)

(assert (=> b!847209 m!1082703))

(declare-fun b!847212 () Bool)

(declare-fun e!557542 () Bool)

(declare-fun tp!266746 () Bool)

(declare-fun tp!266745 () Bool)

(assert (=> b!847212 (= e!557542 (and tp!266746 tp!266745))))

(declare-fun b!847214 () Bool)

(declare-fun tp!266747 () Bool)

(declare-fun tp!266748 () Bool)

(assert (=> b!847214 (= e!557542 (and tp!266747 tp!266748))))

(declare-fun b!847213 () Bool)

(declare-fun tp!266749 () Bool)

(assert (=> b!847213 (= e!557542 tp!266749)))

(declare-fun b!847211 () Bool)

(assert (=> b!847211 (= e!557542 tp_is_empty!3961)))

(assert (=> b!846777 (= tp!266617 e!557542)))

(assert (= (and b!846777 ((_ is ElementMatch!2147) (regex!1714 (rule!3137 separatorToken!297)))) b!847211))

(assert (= (and b!846777 ((_ is Concat!3928) (regex!1714 (rule!3137 separatorToken!297)))) b!847212))

(assert (= (and b!846777 ((_ is Star!2147) (regex!1714 (rule!3137 separatorToken!297)))) b!847213))

(assert (= (and b!846777 ((_ is Union!2147) (regex!1714 (rule!3137 separatorToken!297)))) b!847214))

(declare-fun b!847215 () Bool)

(declare-fun e!557543 () Bool)

(declare-fun tp!266750 () Bool)

(assert (=> b!847215 (= e!557543 (and tp_is_empty!3961 tp!266750))))

(assert (=> b!846778 (= tp!266622 e!557543)))

(assert (= (and b!846778 ((_ is Cons!9133) (originalCharacters!2270 (h!14535 l!5107)))) b!847215))

(declare-fun b_lambda!28013 () Bool)

(assert (= b_lambda!27993 (or (and b!846786 b_free!25523) (and b!846779 b_free!25519 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))))) (and b!847199 b_free!25535 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))) (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))))) (and b!846785 b_free!25515 (= (toChars!2598 (transformation!1714 (h!14536 rules!2621))) (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))))) (and b!847210 b_free!25539 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 rules!2621)))) (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))))) b_lambda!28013)))

(declare-fun b_lambda!28015 () Bool)

(assert (= b_lambda!27999 (or (and b!846786 b_free!25523 (= (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))))) (and b!846779 b_free!25519) (and b!847199 b_free!25535 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))))) (and b!846785 b_free!25515 (= (toChars!2598 (transformation!1714 (h!14536 rules!2621))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))))) (and b!847210 b_free!25539 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 rules!2621)))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))))) b_lambda!28015)))

(declare-fun b_lambda!28017 () Bool)

(assert (= b_lambda!28001 (or b!846787 b_lambda!28017)))

(declare-fun bs!230479 () Bool)

(declare-fun d!263623 () Bool)

(assert (= bs!230479 (and d!263623 b!846787)))

(assert (=> bs!230479 (= (dynLambda!4239 lambda!25220 (h!14535 l!5107)) (not (isSeparator!1714 (rule!3137 (h!14535 l!5107)))))))

(assert (=> b!847049 d!263623))

(check-sat (not b!846960) b_and!73735 (not b!846829) (not b!846888) b_and!73693 (not b!846928) (not b!847145) (not d!263533) b_and!73741 b_and!73737 (not b!847144) (not d!263565) (not b!846835) (not b!847142) (not b!847052) (not b!847179) (not b!846924) (not b_next!25581) b_and!73739 (not b!847146) (not b!846824) (not d!263605) (not b!847209) (not d!263567) (not b!847030) b_and!73745 (not b!847160) (not tb!58787) (not b!846923) (not d!263489) (not b!847184) (not d!263615) b_and!73743 (not b!846925) (not b_lambda!28017) (not b_next!25599) (not b!847214) (not tb!58775) (not b!847140) (not b!846911) (not tb!58811) (not b!847196) (not b!846898) (not b!847029) (not b!847197) (not b_next!25601) (not b!847143) b_and!73685 (not b_lambda!28015) (not d!263487) (not d!263573) (not b!846965) b_and!73689 (not b!847185) (not b!846823) (not b!847043) (not d!263579) (not b!847162) (not b!847212) (not d!263617) (not b!846961) (not d!263587) (not d!263507) (not b!847154) (not b!847180) (not d!263527) (not d!263585) (not b!846968) (not b_lambda!28013) (not b!847033) (not b!847028) (not b!847037) (not d!263519) (not b!847053) (not b!846926) (not d!263509) (not b_next!25603) (not b!847157) (not b!847050) (not b!847044) (not d!263575) (not b!847208) (not b!846908) (not b!847147) (not b!847034) (not b!847153) (not b!847167) (not b_next!25579) (not b!847039) (not b!847198) (not b!847051) (not b!847215) (not d!263603) (not b!846964) (not b!847139) (not b!847152) (not b_next!25577) tp_is_empty!3961 (not b!847181) (not b!847040) (not b!847213) (not b_next!25587) (not b!847041) (not b_lambda!28011) (not b_next!25597) b_and!73747 (not b!846907) (not b_next!25583) (not d!263607) (not b!846927) (not b!846822) (not b_next!25585) (not b!847183) (not d!263581) (not d!263521) (not d!263609) (not b!847042) (not b!847161) (not b!846830) (not d!263525) (not b!846889))
(check-sat b_and!73693 b_and!73735 b_and!73745 b_and!73743 (not b_next!25599) b_and!73689 (not b_next!25603) (not b_next!25579) (not b_next!25577) (not b_next!25587) (not b_next!25585) b_and!73741 b_and!73737 (not b_next!25581) b_and!73739 (not b_next!25601) b_and!73685 (not b_next!25583) (not b_next!25597) b_and!73747)
(get-model)

(declare-fun d!263681 () Bool)

(declare-fun lt!320967 () Bool)

(assert (=> d!263681 (= lt!320967 (isEmpty!5394 (list!3581 (_2!6004 lt!320782))))))

(assert (=> d!263681 (= lt!320967 (isEmpty!5395 (c!137644 (_2!6004 lt!320782))))))

(assert (=> d!263681 (= (isEmpty!5391 (_2!6004 lt!320782)) lt!320967)))

(declare-fun bs!230490 () Bool)

(assert (= bs!230490 d!263681))

(declare-fun m!1082885 () Bool)

(assert (=> bs!230490 m!1082885))

(assert (=> bs!230490 m!1082885))

(declare-fun m!1082887 () Bool)

(assert (=> bs!230490 m!1082887))

(declare-fun m!1082889 () Bool)

(assert (=> bs!230490 m!1082889))

(assert (=> b!846924 d!263681))

(assert (=> d!263521 d!263519))

(declare-fun d!263683 () Bool)

(assert (=> d!263683 (separableTokensPredicate!56 thiss!20117 (h!14535 (t!94490 lt!320749)) lt!320742 rules!2621)))

(assert (=> d!263683 true))

(declare-fun _$37!206 () Unit!13599)

(assert (=> d!263683 (= (choose!4998 thiss!20117 (h!14535 (t!94490 lt!320749)) lt!320742 rules!2621) _$37!206)))

(declare-fun bs!230493 () Bool)

(assert (= bs!230493 d!263683))

(assert (=> bs!230493 m!1082045))

(assert (=> d!263521 d!263683))

(assert (=> d!263521 d!263619))

(declare-fun d!263691 () Bool)

(declare-fun lt!321019 () Bool)

(declare-fun prefixMatch!5 (Regex!2147 List!9149) Bool)

(assert (=> d!263691 (= lt!321019 (prefixMatch!5 (rulesRegex!18 thiss!20117 rules!2621) (list!3581 (++!2363 (charsOf!985 (h!14535 (t!94490 lt!320749))) (singletonSeq!529 (apply!1855 (charsOf!985 lt!320742) 0))))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!9154 0))(
  ( (Nil!9138) (Cons!9138 (h!14539 Regex!2147) (t!94846 List!9154)) )
))
(declare-datatypes ((Context!860 0))(
  ( (Context!861 (exprs!930 List!9154)) )
))
(declare-fun prefixMatchZipperSequence!24 ((InoxSet Context!860) BalanceConc!6068 Int) Bool)

(declare-fun focus!25 (Regex!2147) (InoxSet Context!860))

(assert (=> d!263691 (= lt!321019 (prefixMatchZipperSequence!24 (focus!25 (rulesRegex!18 thiss!20117 rules!2621)) (++!2363 (charsOf!985 (h!14535 (t!94490 lt!320749))) (singletonSeq!529 (apply!1855 (charsOf!985 lt!320742) 0))) 0))))

(declare-fun lt!321020 () Unit!13599)

(declare-fun lt!321025 () Unit!13599)

(assert (=> d!263691 (= lt!321020 lt!321025)))

(declare-fun lt!321016 () List!9149)

(declare-fun lt!321021 () (InoxSet Context!860))

(declare-fun prefixMatchZipper!5 ((InoxSet Context!860) List!9149) Bool)

(assert (=> d!263691 (= (prefixMatch!5 (rulesRegex!18 thiss!20117 rules!2621) lt!321016) (prefixMatchZipper!5 lt!321021 lt!321016))))

(declare-datatypes ((List!9155 0))(
  ( (Nil!9139) (Cons!9139 (h!14540 Context!860) (t!94847 List!9155)) )
))
(declare-fun lt!321024 () List!9155)

(declare-fun prefixMatchZipperRegexEquiv!5 ((InoxSet Context!860) List!9155 Regex!2147 List!9149) Unit!13599)

(assert (=> d!263691 (= lt!321025 (prefixMatchZipperRegexEquiv!5 lt!321021 lt!321024 (rulesRegex!18 thiss!20117 rules!2621) lt!321016))))

(assert (=> d!263691 (= lt!321016 (list!3581 (++!2363 (charsOf!985 (h!14535 (t!94490 lt!320749))) (singletonSeq!529 (apply!1855 (charsOf!985 lt!320742) 0)))))))

(declare-fun toList!571 ((InoxSet Context!860)) List!9155)

(assert (=> d!263691 (= lt!321024 (toList!571 (focus!25 (rulesRegex!18 thiss!20117 rules!2621))))))

(assert (=> d!263691 (= lt!321021 (focus!25 (rulesRegex!18 thiss!20117 rules!2621)))))

(declare-fun lt!321023 () Unit!13599)

(declare-fun lt!321018 () Unit!13599)

(assert (=> d!263691 (= lt!321023 lt!321018)))

(declare-fun lt!321017 () Int)

(declare-fun lt!321022 () (InoxSet Context!860))

(declare-fun dropList!267 (BalanceConc!6068 Int) List!9149)

(assert (=> d!263691 (= (prefixMatchZipper!5 lt!321022 (dropList!267 (++!2363 (charsOf!985 (h!14535 (t!94490 lt!320749))) (singletonSeq!529 (apply!1855 (charsOf!985 lt!320742) 0))) lt!321017)) (prefixMatchZipperSequence!24 lt!321022 (++!2363 (charsOf!985 (h!14535 (t!94490 lt!320749))) (singletonSeq!529 (apply!1855 (charsOf!985 lt!320742) 0))) lt!321017))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!5 ((InoxSet Context!860) BalanceConc!6068 Int) Unit!13599)

(assert (=> d!263691 (= lt!321018 (lemmaprefixMatchZipperSequenceEquivalent!5 lt!321022 (++!2363 (charsOf!985 (h!14535 (t!94490 lt!320749))) (singletonSeq!529 (apply!1855 (charsOf!985 lt!320742) 0))) lt!321017))))

(assert (=> d!263691 (= lt!321017 0)))

(assert (=> d!263691 (= lt!321022 (focus!25 (rulesRegex!18 thiss!20117 rules!2621)))))

(declare-fun validRegex!655 (Regex!2147) Bool)

(assert (=> d!263691 (validRegex!655 (rulesRegex!18 thiss!20117 rules!2621))))

(assert (=> d!263691 (= (prefixMatchZipperSequence!23 (rulesRegex!18 thiss!20117 rules!2621) (++!2363 (charsOf!985 (h!14535 (t!94490 lt!320749))) (singletonSeq!529 (apply!1855 (charsOf!985 lt!320742) 0)))) lt!321019)))

(declare-fun bs!230523 () Bool)

(assert (= bs!230523 d!263691))

(assert (=> bs!230523 m!1082217))

(declare-fun m!1083073 () Bool)

(assert (=> bs!230523 m!1083073))

(assert (=> bs!230523 m!1082215))

(declare-fun m!1083075 () Bool)

(assert (=> bs!230523 m!1083075))

(assert (=> bs!230523 m!1082215))

(declare-fun m!1083077 () Bool)

(assert (=> bs!230523 m!1083077))

(assert (=> bs!230523 m!1082217))

(declare-fun m!1083079 () Bool)

(assert (=> bs!230523 m!1083079))

(declare-fun m!1083081 () Bool)

(assert (=> bs!230523 m!1083081))

(declare-fun m!1083083 () Bool)

(assert (=> bs!230523 m!1083083))

(declare-fun m!1083085 () Bool)

(assert (=> bs!230523 m!1083085))

(assert (=> bs!230523 m!1082217))

(assert (=> bs!230523 m!1083081))

(assert (=> bs!230523 m!1082215))

(assert (=> bs!230523 m!1083079))

(declare-fun m!1083089 () Bool)

(assert (=> bs!230523 m!1083089))

(assert (=> bs!230523 m!1082215))

(declare-fun m!1083091 () Bool)

(assert (=> bs!230523 m!1083091))

(assert (=> bs!230523 m!1082217))

(declare-fun m!1083093 () Bool)

(assert (=> bs!230523 m!1083093))

(declare-fun m!1083095 () Bool)

(assert (=> bs!230523 m!1083095))

(declare-fun m!1083097 () Bool)

(assert (=> bs!230523 m!1083097))

(assert (=> bs!230523 m!1083095))

(assert (=> bs!230523 m!1082217))

(declare-fun m!1083099 () Bool)

(assert (=> bs!230523 m!1083099))

(assert (=> bs!230523 m!1082215))

(assert (=> bs!230523 m!1083095))

(assert (=> d!263519 d!263691))

(declare-fun d!263745 () Bool)

(declare-fun lt!321041 () C!4864)

(declare-fun apply!1856 (List!9149 Int) C!4864)

(assert (=> d!263745 (= lt!321041 (apply!1856 (list!3581 (charsOf!985 lt!320742)) 0))))

(declare-fun apply!1857 (Conc!3027 Int) C!4864)

(assert (=> d!263745 (= lt!321041 (apply!1857 (c!137644 (charsOf!985 lt!320742)) 0))))

(declare-fun e!557656 () Bool)

(assert (=> d!263745 e!557656))

(declare-fun res!387433 () Bool)

(assert (=> d!263745 (=> (not res!387433) (not e!557656))))

(assert (=> d!263745 (= res!387433 (<= 0 0))))

(assert (=> d!263745 (= (apply!1855 (charsOf!985 lt!320742) 0) lt!321041)))

(declare-fun b!847379 () Bool)

(assert (=> b!847379 (= e!557656 (< 0 (size!7613 (charsOf!985 lt!320742))))))

(assert (= (and d!263745 res!387433) b!847379))

(assert (=> d!263745 m!1082085))

(assert (=> d!263745 m!1082651))

(assert (=> d!263745 m!1082651))

(declare-fun m!1083187 () Bool)

(assert (=> d!263745 m!1083187))

(declare-fun m!1083189 () Bool)

(assert (=> d!263745 m!1083189))

(assert (=> b!847379 m!1082085))

(declare-fun m!1083191 () Bool)

(assert (=> b!847379 m!1083191))

(assert (=> d!263519 d!263745))

(declare-fun d!263771 () Bool)

(declare-fun lt!321043 () BalanceConc!6068)

(assert (=> d!263771 (= (list!3581 lt!321043) (originalCharacters!2270 (h!14535 (t!94490 lt!320749))))))

(assert (=> d!263771 (= lt!321043 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 lt!320749))))) (value!55548 (h!14535 (t!94490 lt!320749)))))))

(assert (=> d!263771 (= (charsOf!985 (h!14535 (t!94490 lt!320749))) lt!321043)))

(declare-fun b_lambda!28035 () Bool)

(assert (=> (not b_lambda!28035) (not d!263771)))

(declare-fun tb!58853 () Bool)

(declare-fun t!94587 () Bool)

(assert (=> (and b!846786 (= (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 lt!320749)))))) t!94587) tb!58853))

(declare-fun b!847381 () Bool)

(declare-fun e!557658 () Bool)

(declare-fun tp!266754 () Bool)

(assert (=> b!847381 (= e!557658 (and (inv!11614 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 lt!320749))))) (value!55548 (h!14535 (t!94490 lt!320749)))))) tp!266754))))

(declare-fun result!68262 () Bool)

(assert (=> tb!58853 (= result!68262 (and (inv!11615 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 lt!320749))))) (value!55548 (h!14535 (t!94490 lt!320749))))) e!557658))))

(assert (= tb!58853 b!847381))

(declare-fun m!1083201 () Bool)

(assert (=> b!847381 m!1083201))

(declare-fun m!1083203 () Bool)

(assert (=> tb!58853 m!1083203))

(assert (=> d!263771 t!94587))

(declare-fun b_and!73799 () Bool)

(assert (= b_and!73739 (and (=> t!94587 result!68262) b_and!73799)))

(declare-fun tb!58861 () Bool)

(declare-fun t!94595 () Bool)

(assert (=> (and b!846779 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 lt!320749)))))) t!94595) tb!58861))

(declare-fun result!68270 () Bool)

(assert (= result!68270 result!68262))

(assert (=> d!263771 t!94595))

(declare-fun b_and!73801 () Bool)

(assert (= b_and!73737 (and (=> t!94595 result!68270) b_and!73801)))

(declare-fun t!94597 () Bool)

(declare-fun tb!58863 () Bool)

(assert (=> (and b!847210 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 rules!2621)))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 lt!320749)))))) t!94597) tb!58863))

(declare-fun result!68272 () Bool)

(assert (= result!68272 result!68262))

(assert (=> d!263771 t!94597))

(declare-fun b_and!73803 () Bool)

(assert (= b_and!73747 (and (=> t!94597 result!68272) b_and!73803)))

(declare-fun t!94599 () Bool)

(declare-fun tb!58865 () Bool)

(assert (=> (and b!846785 (= (toChars!2598 (transformation!1714 (h!14536 rules!2621))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 lt!320749)))))) t!94599) tb!58865))

(declare-fun result!68274 () Bool)

(assert (= result!68274 result!68262))

(assert (=> d!263771 t!94599))

(declare-fun b_and!73805 () Bool)

(assert (= b_and!73735 (and (=> t!94599 result!68274) b_and!73805)))

(declare-fun t!94601 () Bool)

(declare-fun tb!58867 () Bool)

(assert (=> (and b!847199 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 lt!320749)))))) t!94601) tb!58867))

(declare-fun result!68276 () Bool)

(assert (= result!68276 result!68262))

(assert (=> d!263771 t!94601))

(declare-fun b_and!73807 () Bool)

(assert (= b_and!73743 (and (=> t!94601 result!68276) b_and!73807)))

(declare-fun m!1083211 () Bool)

(assert (=> d!263771 m!1083211))

(declare-fun m!1083213 () Bool)

(assert (=> d!263771 m!1083213))

(assert (=> d!263519 d!263771))

(declare-fun e!557672 () Bool)

(declare-fun b!847416 () Bool)

(declare-fun lt!321055 () BalanceConc!6068)

(assert (=> b!847416 (= e!557672 (= (list!3581 lt!321055) (++!2364 (list!3581 (charsOf!985 (h!14535 (t!94490 lt!320749)))) (list!3581 (singletonSeq!529 (apply!1855 (charsOf!985 lt!320742) 0))))))))

(declare-fun b!847415 () Bool)

(declare-fun res!387450 () Bool)

(assert (=> b!847415 (=> (not res!387450) (not e!557672))))

(declare-fun height!395 (Conc!3027) Int)

(declare-fun ++!2365 (Conc!3027 Conc!3027) Conc!3027)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!847415 (= res!387450 (>= (height!395 (++!2365 (c!137644 (charsOf!985 (h!14535 (t!94490 lt!320749)))) (c!137644 (singletonSeq!529 (apply!1855 (charsOf!985 lt!320742) 0))))) (max!0 (height!395 (c!137644 (charsOf!985 (h!14535 (t!94490 lt!320749))))) (height!395 (c!137644 (singletonSeq!529 (apply!1855 (charsOf!985 lt!320742) 0)))))))))

(declare-fun b!847414 () Bool)

(declare-fun res!387453 () Bool)

(assert (=> b!847414 (=> (not res!387453) (not e!557672))))

(assert (=> b!847414 (= res!387453 (<= (height!395 (++!2365 (c!137644 (charsOf!985 (h!14535 (t!94490 lt!320749)))) (c!137644 (singletonSeq!529 (apply!1855 (charsOf!985 lt!320742) 0))))) (+ (max!0 (height!395 (c!137644 (charsOf!985 (h!14535 (t!94490 lt!320749))))) (height!395 (c!137644 (singletonSeq!529 (apply!1855 (charsOf!985 lt!320742) 0))))) 1)))))

(declare-fun d!263775 () Bool)

(assert (=> d!263775 e!557672))

(declare-fun res!387452 () Bool)

(assert (=> d!263775 (=> (not res!387452) (not e!557672))))

(declare-fun appendAssocInst!191 (Conc!3027 Conc!3027) Bool)

(assert (=> d!263775 (= res!387452 (appendAssocInst!191 (c!137644 (charsOf!985 (h!14535 (t!94490 lt!320749)))) (c!137644 (singletonSeq!529 (apply!1855 (charsOf!985 lt!320742) 0)))))))

(assert (=> d!263775 (= lt!321055 (BalanceConc!6069 (++!2365 (c!137644 (charsOf!985 (h!14535 (t!94490 lt!320749)))) (c!137644 (singletonSeq!529 (apply!1855 (charsOf!985 lt!320742) 0))))))))

(assert (=> d!263775 (= (++!2363 (charsOf!985 (h!14535 (t!94490 lt!320749))) (singletonSeq!529 (apply!1855 (charsOf!985 lt!320742) 0))) lt!321055)))

(declare-fun b!847413 () Bool)

(declare-fun res!387451 () Bool)

(assert (=> b!847413 (=> (not res!387451) (not e!557672))))

(declare-fun isBalanced!819 (Conc!3027) Bool)

(assert (=> b!847413 (= res!387451 (isBalanced!819 (++!2365 (c!137644 (charsOf!985 (h!14535 (t!94490 lt!320749)))) (c!137644 (singletonSeq!529 (apply!1855 (charsOf!985 lt!320742) 0))))))))

(assert (= (and d!263775 res!387452) b!847413))

(assert (= (and b!847413 res!387451) b!847414))

(assert (= (and b!847414 res!387453) b!847415))

(assert (= (and b!847415 res!387450) b!847416))

(declare-fun m!1083287 () Bool)

(assert (=> b!847413 m!1083287))

(assert (=> b!847413 m!1083287))

(declare-fun m!1083289 () Bool)

(assert (=> b!847413 m!1083289))

(assert (=> b!847414 m!1083287))

(declare-fun m!1083291 () Bool)

(assert (=> b!847414 m!1083291))

(declare-fun m!1083293 () Bool)

(assert (=> b!847414 m!1083293))

(declare-fun m!1083295 () Bool)

(assert (=> b!847414 m!1083295))

(declare-fun m!1083297 () Bool)

(assert (=> b!847414 m!1083297))

(assert (=> b!847414 m!1083293))

(assert (=> b!847414 m!1083295))

(assert (=> b!847414 m!1083287))

(declare-fun m!1083299 () Bool)

(assert (=> b!847416 m!1083299))

(assert (=> b!847416 m!1082221))

(declare-fun m!1083301 () Bool)

(assert (=> b!847416 m!1083301))

(assert (=> b!847416 m!1082213))

(declare-fun m!1083303 () Bool)

(assert (=> b!847416 m!1083303))

(assert (=> b!847416 m!1083301))

(assert (=> b!847416 m!1083303))

(declare-fun m!1083305 () Bool)

(assert (=> b!847416 m!1083305))

(assert (=> b!847415 m!1083287))

(assert (=> b!847415 m!1083291))

(assert (=> b!847415 m!1083293))

(assert (=> b!847415 m!1083295))

(assert (=> b!847415 m!1083297))

(assert (=> b!847415 m!1083293))

(assert (=> b!847415 m!1083295))

(assert (=> b!847415 m!1083287))

(declare-fun m!1083307 () Bool)

(assert (=> d!263775 m!1083307))

(assert (=> d!263775 m!1083287))

(assert (=> d!263519 d!263775))

(declare-fun d!263799 () Bool)

(declare-fun e!557675 () Bool)

(assert (=> d!263799 e!557675))

(declare-fun res!387456 () Bool)

(assert (=> d!263799 (=> (not res!387456) (not e!557675))))

(declare-fun lt!321058 () BalanceConc!6068)

(assert (=> d!263799 (= res!387456 (= (list!3581 lt!321058) (Cons!9133 (apply!1855 (charsOf!985 lt!320742) 0) Nil!9133)))))

(declare-fun singleton!248 (C!4864) BalanceConc!6068)

(assert (=> d!263799 (= lt!321058 (singleton!248 (apply!1855 (charsOf!985 lt!320742) 0)))))

(assert (=> d!263799 (= (singletonSeq!529 (apply!1855 (charsOf!985 lt!320742) 0)) lt!321058)))

(declare-fun b!847419 () Bool)

(assert (=> b!847419 (= e!557675 (isBalanced!819 (c!137644 lt!321058)))))

(assert (= (and d!263799 res!387456) b!847419))

(declare-fun m!1083309 () Bool)

(assert (=> d!263799 m!1083309))

(assert (=> d!263799 m!1082211))

(declare-fun m!1083311 () Bool)

(assert (=> d!263799 m!1083311))

(declare-fun m!1083313 () Bool)

(assert (=> b!847419 m!1083313))

(assert (=> d!263519 d!263799))

(declare-fun d!263801 () Bool)

(declare-fun lt!321061 () Unit!13599)

(declare-fun lemma!7 (List!9151 LexerInterface!1516 List!9151) Unit!13599)

(assert (=> d!263801 (= lt!321061 (lemma!7 rules!2621 thiss!20117 rules!2621))))

(declare-fun lambda!25244 () Int)

(declare-fun generalisedUnion!11 (List!9154) Regex!2147)

(declare-fun map!1896 (List!9151 Int) List!9154)

(assert (=> d!263801 (= (rulesRegex!18 thiss!20117 rules!2621) (generalisedUnion!11 (map!1896 rules!2621 lambda!25244)))))

(declare-fun bs!230536 () Bool)

(assert (= bs!230536 d!263801))

(declare-fun m!1083315 () Bool)

(assert (=> bs!230536 m!1083315))

(declare-fun m!1083317 () Bool)

(assert (=> bs!230536 m!1083317))

(assert (=> bs!230536 m!1083317))

(declare-fun m!1083319 () Bool)

(assert (=> bs!230536 m!1083319))

(assert (=> d!263519 d!263801))

(assert (=> d!263519 d!263609))

(declare-fun d!263803 () Bool)

(declare-fun lt!321064 () Token!3094)

(declare-fun apply!1858 (List!9150 Int) Token!3094)

(assert (=> d!263803 (= lt!321064 (apply!1858 (list!3582 (_1!6004 lt!320903)) 0))))

(declare-fun apply!1859 (Conc!3029 Int) Token!3094)

(assert (=> d!263803 (= lt!321064 (apply!1859 (c!137686 (_1!6004 lt!320903)) 0))))

(declare-fun e!557678 () Bool)

(assert (=> d!263803 e!557678))

(declare-fun res!387459 () Bool)

(assert (=> d!263803 (=> (not res!387459) (not e!557678))))

(assert (=> d!263803 (= res!387459 (<= 0 0))))

(assert (=> d!263803 (= (apply!1854 (_1!6004 lt!320903) 0) lt!321064)))

(declare-fun b!847422 () Bool)

(assert (=> b!847422 (= e!557678 (< 0 (size!7612 (_1!6004 lt!320903))))))

(assert (= (and d!263803 res!387459) b!847422))

(declare-fun m!1083321 () Bool)

(assert (=> d!263803 m!1083321))

(assert (=> d!263803 m!1083321))

(declare-fun m!1083323 () Bool)

(assert (=> d!263803 m!1083323))

(declare-fun m!1083325 () Bool)

(assert (=> d!263803 m!1083325))

(assert (=> b!847422 m!1082639))

(assert (=> b!847144 d!263803))

(declare-fun d!263805 () Bool)

(declare-fun charsToBigInt!1 (List!9148) Int)

(assert (=> d!263805 (= (inv!17 (value!55548 separatorToken!297)) (= (charsToBigInt!1 (text!12908 (value!55548 separatorToken!297))) (value!55540 (value!55548 separatorToken!297))))))

(declare-fun bs!230537 () Bool)

(assert (= bs!230537 d!263805))

(declare-fun m!1083327 () Bool)

(assert (=> bs!230537 m!1083327))

(assert (=> b!846822 d!263805))

(declare-fun d!263807 () Bool)

(declare-fun lt!321066 () Bool)

(declare-fun e!557680 () Bool)

(assert (=> d!263807 (= lt!321066 e!557680)))

(declare-fun res!387461 () Bool)

(assert (=> d!263807 (=> (not res!387461) (not e!557680))))

(assert (=> d!263807 (= res!387461 (= (list!3582 (_1!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 (h!14535 lt!320749)))))) (list!3582 (singletonSeq!528 (h!14535 lt!320749)))))))

(declare-fun e!557679 () Bool)

(assert (=> d!263807 (= lt!321066 e!557679)))

(declare-fun res!387462 () Bool)

(assert (=> d!263807 (=> (not res!387462) (not e!557679))))

(declare-fun lt!321065 () tuple2!10356)

(assert (=> d!263807 (= res!387462 (= (size!7612 (_1!6004 lt!321065)) 1))))

(assert (=> d!263807 (= lt!321065 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 (h!14535 lt!320749)))))))

(assert (=> d!263807 (not (isEmpty!5390 rules!2621))))

(assert (=> d!263807 (= (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 lt!320749)) lt!321066)))

(declare-fun b!847423 () Bool)

(declare-fun res!387460 () Bool)

(assert (=> b!847423 (=> (not res!387460) (not e!557679))))

(assert (=> b!847423 (= res!387460 (= (apply!1854 (_1!6004 lt!321065) 0) (h!14535 lt!320749)))))

(declare-fun b!847424 () Bool)

(assert (=> b!847424 (= e!557679 (isEmpty!5391 (_2!6004 lt!321065)))))

(declare-fun b!847425 () Bool)

(assert (=> b!847425 (= e!557680 (isEmpty!5391 (_2!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 (h!14535 lt!320749)))))))))

(assert (= (and d!263807 res!387462) b!847423))

(assert (= (and b!847423 res!387460) b!847424))

(assert (= (and d!263807 res!387461) b!847425))

(declare-fun m!1083329 () Bool)

(assert (=> d!263807 m!1083329))

(declare-fun m!1083331 () Bool)

(assert (=> d!263807 m!1083331))

(assert (=> d!263807 m!1083329))

(assert (=> d!263807 m!1083329))

(declare-fun m!1083333 () Bool)

(assert (=> d!263807 m!1083333))

(declare-fun m!1083335 () Bool)

(assert (=> d!263807 m!1083335))

(assert (=> d!263807 m!1082077))

(declare-fun m!1083337 () Bool)

(assert (=> d!263807 m!1083337))

(assert (=> d!263807 m!1083331))

(declare-fun m!1083339 () Bool)

(assert (=> d!263807 m!1083339))

(declare-fun m!1083341 () Bool)

(assert (=> b!847423 m!1083341))

(declare-fun m!1083343 () Bool)

(assert (=> b!847424 m!1083343))

(assert (=> b!847425 m!1083329))

(assert (=> b!847425 m!1083329))

(assert (=> b!847425 m!1083331))

(assert (=> b!847425 m!1083331))

(assert (=> b!847425 m!1083339))

(declare-fun m!1083345 () Bool)

(assert (=> b!847425 m!1083345))

(assert (=> b!846926 d!263807))

(declare-fun e!557685 () Bool)

(declare-fun b!847437 () Bool)

(declare-fun lt!321069 () List!9149)

(assert (=> b!847437 (= e!557685 (or (not (= (printList!468 thiss!20117 (t!94490 lt!320853)) Nil!9133)) (= lt!321069 (list!3581 (charsOf!985 (h!14535 lt!320853))))))))

(declare-fun b!847436 () Bool)

(declare-fun res!387467 () Bool)

(assert (=> b!847436 (=> (not res!387467) (not e!557685))))

(assert (=> b!847436 (= res!387467 (= (size!7610 lt!321069) (+ (size!7610 (list!3581 (charsOf!985 (h!14535 lt!320853)))) (size!7610 (printList!468 thiss!20117 (t!94490 lt!320853))))))))

(declare-fun d!263809 () Bool)

(assert (=> d!263809 e!557685))

(declare-fun res!387468 () Bool)

(assert (=> d!263809 (=> (not res!387468) (not e!557685))))

(declare-fun content!1338 (List!9149) (InoxSet C!4864))

(assert (=> d!263809 (= res!387468 (= (content!1338 lt!321069) ((_ map or) (content!1338 (list!3581 (charsOf!985 (h!14535 lt!320853)))) (content!1338 (printList!468 thiss!20117 (t!94490 lt!320853))))))))

(declare-fun e!557686 () List!9149)

(assert (=> d!263809 (= lt!321069 e!557686)))

(declare-fun c!137733 () Bool)

(assert (=> d!263809 (= c!137733 ((_ is Nil!9133) (list!3581 (charsOf!985 (h!14535 lt!320853)))))))

(assert (=> d!263809 (= (++!2364 (list!3581 (charsOf!985 (h!14535 lt!320853))) (printList!468 thiss!20117 (t!94490 lt!320853))) lt!321069)))

(declare-fun b!847434 () Bool)

(assert (=> b!847434 (= e!557686 (printList!468 thiss!20117 (t!94490 lt!320853)))))

(declare-fun b!847435 () Bool)

(assert (=> b!847435 (= e!557686 (Cons!9133 (h!14534 (list!3581 (charsOf!985 (h!14535 lt!320853)))) (++!2364 (t!94489 (list!3581 (charsOf!985 (h!14535 lt!320853)))) (printList!468 thiss!20117 (t!94490 lt!320853)))))))

(assert (= (and d!263809 c!137733) b!847434))

(assert (= (and d!263809 (not c!137733)) b!847435))

(assert (= (and d!263809 res!387468) b!847436))

(assert (= (and b!847436 res!387467) b!847437))

(declare-fun m!1083347 () Bool)

(assert (=> b!847436 m!1083347))

(assert (=> b!847436 m!1082439))

(declare-fun m!1083349 () Bool)

(assert (=> b!847436 m!1083349))

(assert (=> b!847436 m!1082441))

(declare-fun m!1083351 () Bool)

(assert (=> b!847436 m!1083351))

(declare-fun m!1083353 () Bool)

(assert (=> d!263809 m!1083353))

(assert (=> d!263809 m!1082439))

(declare-fun m!1083355 () Bool)

(assert (=> d!263809 m!1083355))

(assert (=> d!263809 m!1082441))

(declare-fun m!1083357 () Bool)

(assert (=> d!263809 m!1083357))

(assert (=> b!847435 m!1082441))

(declare-fun m!1083359 () Bool)

(assert (=> b!847435 m!1083359))

(assert (=> b!847029 d!263809))

(declare-fun d!263811 () Bool)

(declare-fun list!3585 (Conc!3027) List!9149)

(assert (=> d!263811 (= (list!3581 (charsOf!985 (h!14535 lt!320853))) (list!3585 (c!137644 (charsOf!985 (h!14535 lt!320853)))))))

(declare-fun bs!230538 () Bool)

(assert (= bs!230538 d!263811))

(declare-fun m!1083361 () Bool)

(assert (=> bs!230538 m!1083361))

(assert (=> b!847029 d!263811))

(declare-fun d!263813 () Bool)

(declare-fun lt!321070 () BalanceConc!6068)

(assert (=> d!263813 (= (list!3581 lt!321070) (originalCharacters!2270 (h!14535 lt!320853)))))

(assert (=> d!263813 (= lt!321070 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320853)))) (value!55548 (h!14535 lt!320853))))))

(assert (=> d!263813 (= (charsOf!985 (h!14535 lt!320853)) lt!321070)))

(declare-fun b_lambda!28039 () Bool)

(assert (=> (not b_lambda!28039) (not d!263813)))

(declare-fun t!94614 () Bool)

(declare-fun tb!58879 () Bool)

(assert (=> (and b!846786 (= (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320853))))) t!94614) tb!58879))

(declare-fun b!847438 () Bool)

(declare-fun e!557687 () Bool)

(declare-fun tp!266756 () Bool)

(assert (=> b!847438 (= e!557687 (and (inv!11614 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320853)))) (value!55548 (h!14535 lt!320853))))) tp!266756))))

(declare-fun result!68288 () Bool)

(assert (=> tb!58879 (= result!68288 (and (inv!11615 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320853)))) (value!55548 (h!14535 lt!320853)))) e!557687))))

(assert (= tb!58879 b!847438))

(declare-fun m!1083363 () Bool)

(assert (=> b!847438 m!1083363))

(declare-fun m!1083365 () Bool)

(assert (=> tb!58879 m!1083365))

(assert (=> d!263813 t!94614))

(declare-fun b_and!73819 () Bool)

(assert (= b_and!73799 (and (=> t!94614 result!68288) b_and!73819)))

(declare-fun tb!58881 () Bool)

(declare-fun t!94616 () Bool)

(assert (=> (and b!846779 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320853))))) t!94616) tb!58881))

(declare-fun result!68290 () Bool)

(assert (= result!68290 result!68288))

(assert (=> d!263813 t!94616))

(declare-fun b_and!73821 () Bool)

(assert (= b_and!73801 (and (=> t!94616 result!68290) b_and!73821)))

(declare-fun tb!58883 () Bool)

(declare-fun t!94618 () Bool)

(assert (=> (and b!846785 (= (toChars!2598 (transformation!1714 (h!14536 rules!2621))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320853))))) t!94618) tb!58883))

(declare-fun result!68292 () Bool)

(assert (= result!68292 result!68288))

(assert (=> d!263813 t!94618))

(declare-fun b_and!73823 () Bool)

(assert (= b_and!73805 (and (=> t!94618 result!68292) b_and!73823)))

(declare-fun tb!58885 () Bool)

(declare-fun t!94620 () Bool)

(assert (=> (and b!847210 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 rules!2621)))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320853))))) t!94620) tb!58885))

(declare-fun result!68294 () Bool)

(assert (= result!68294 result!68288))

(assert (=> d!263813 t!94620))

(declare-fun b_and!73825 () Bool)

(assert (= b_and!73803 (and (=> t!94620 result!68294) b_and!73825)))

(declare-fun tb!58887 () Bool)

(declare-fun t!94622 () Bool)

(assert (=> (and b!847199 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320853))))) t!94622) tb!58887))

(declare-fun result!68296 () Bool)

(assert (= result!68296 result!68288))

(assert (=> d!263813 t!94622))

(declare-fun b_and!73827 () Bool)

(assert (= b_and!73807 (and (=> t!94622 result!68296) b_and!73827)))

(declare-fun m!1083367 () Bool)

(assert (=> d!263813 m!1083367))

(declare-fun m!1083369 () Bool)

(assert (=> d!263813 m!1083369))

(assert (=> b!847029 d!263813))

(declare-fun d!263815 () Bool)

(declare-fun c!137736 () Bool)

(assert (=> d!263815 (= c!137736 ((_ is Cons!9134) (t!94490 lt!320853)))))

(declare-fun e!557690 () List!9149)

(assert (=> d!263815 (= (printList!468 thiss!20117 (t!94490 lt!320853)) e!557690)))

(declare-fun b!847443 () Bool)

(assert (=> b!847443 (= e!557690 (++!2364 (list!3581 (charsOf!985 (h!14535 (t!94490 lt!320853)))) (printList!468 thiss!20117 (t!94490 (t!94490 lt!320853)))))))

(declare-fun b!847444 () Bool)

(assert (=> b!847444 (= e!557690 Nil!9133)))

(assert (= (and d!263815 c!137736) b!847443))

(assert (= (and d!263815 (not c!137736)) b!847444))

(declare-fun m!1083371 () Bool)

(assert (=> b!847443 m!1083371))

(assert (=> b!847443 m!1083371))

(declare-fun m!1083373 () Bool)

(assert (=> b!847443 m!1083373))

(declare-fun m!1083375 () Bool)

(assert (=> b!847443 m!1083375))

(assert (=> b!847443 m!1083373))

(assert (=> b!847443 m!1083375))

(declare-fun m!1083377 () Bool)

(assert (=> b!847443 m!1083377))

(assert (=> b!847029 d!263815))

(declare-fun d!263817 () Bool)

(declare-fun lt!321071 () BalanceConc!6068)

(assert (=> d!263817 (= (list!3581 lt!321071) (originalCharacters!2270 (h!14535 lt!320749)))))

(assert (=> d!263817 (= lt!321071 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320749)))) (value!55548 (h!14535 lt!320749))))))

(assert (=> d!263817 (= (charsOf!985 (h!14535 lt!320749)) lt!321071)))

(declare-fun b_lambda!28041 () Bool)

(assert (=> (not b_lambda!28041) (not d!263817)))

(declare-fun t!94624 () Bool)

(declare-fun tb!58889 () Bool)

(assert (=> (and b!847210 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 rules!2621)))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320749))))) t!94624) tb!58889))

(declare-fun b!847445 () Bool)

(declare-fun e!557691 () Bool)

(declare-fun tp!266757 () Bool)

(assert (=> b!847445 (= e!557691 (and (inv!11614 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320749)))) (value!55548 (h!14535 lt!320749))))) tp!266757))))

(declare-fun result!68298 () Bool)

(assert (=> tb!58889 (= result!68298 (and (inv!11615 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320749)))) (value!55548 (h!14535 lt!320749)))) e!557691))))

(assert (= tb!58889 b!847445))

(declare-fun m!1083379 () Bool)

(assert (=> b!847445 m!1083379))

(declare-fun m!1083381 () Bool)

(assert (=> tb!58889 m!1083381))

(assert (=> d!263817 t!94624))

(declare-fun b_and!73829 () Bool)

(assert (= b_and!73825 (and (=> t!94624 result!68298) b_and!73829)))

(declare-fun tb!58891 () Bool)

(declare-fun t!94626 () Bool)

(assert (=> (and b!846779 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320749))))) t!94626) tb!58891))

(declare-fun result!68300 () Bool)

(assert (= result!68300 result!68298))

(assert (=> d!263817 t!94626))

(declare-fun b_and!73831 () Bool)

(assert (= b_and!73821 (and (=> t!94626 result!68300) b_and!73831)))

(declare-fun t!94628 () Bool)

(declare-fun tb!58893 () Bool)

(assert (=> (and b!846785 (= (toChars!2598 (transformation!1714 (h!14536 rules!2621))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320749))))) t!94628) tb!58893))

(declare-fun result!68302 () Bool)

(assert (= result!68302 result!68298))

(assert (=> d!263817 t!94628))

(declare-fun b_and!73833 () Bool)

(assert (= b_and!73823 (and (=> t!94628 result!68302) b_and!73833)))

(declare-fun t!94630 () Bool)

(declare-fun tb!58895 () Bool)

(assert (=> (and b!846786 (= (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320749))))) t!94630) tb!58895))

(declare-fun result!68304 () Bool)

(assert (= result!68304 result!68298))

(assert (=> d!263817 t!94630))

(declare-fun b_and!73835 () Bool)

(assert (= b_and!73819 (and (=> t!94630 result!68304) b_and!73835)))

(declare-fun t!94632 () Bool)

(declare-fun tb!58897 () Bool)

(assert (=> (and b!847199 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320749))))) t!94632) tb!58897))

(declare-fun result!68306 () Bool)

(assert (= result!68306 result!68298))

(assert (=> d!263817 t!94632))

(declare-fun b_and!73837 () Bool)

(assert (= b_and!73827 (and (=> t!94632 result!68306) b_and!73837)))

(declare-fun m!1083383 () Bool)

(assert (=> d!263817 m!1083383))

(declare-fun m!1083385 () Bool)

(assert (=> d!263817 m!1083385))

(assert (=> d!263603 d!263817))

(declare-fun d!263819 () Bool)

(declare-fun e!557692 () Bool)

(assert (=> d!263819 e!557692))

(declare-fun res!387469 () Bool)

(assert (=> d!263819 (=> (not res!387469) (not e!557692))))

(declare-fun lt!321072 () BalanceConc!6068)

(assert (=> d!263819 (= res!387469 (= (list!3581 lt!321072) (Cons!9133 (apply!1855 (charsOf!985 (h!14535 (t!94490 lt!320749))) 0) Nil!9133)))))

(assert (=> d!263819 (= lt!321072 (singleton!248 (apply!1855 (charsOf!985 (h!14535 (t!94490 lt!320749))) 0)))))

(assert (=> d!263819 (= (singletonSeq!529 (apply!1855 (charsOf!985 (h!14535 (t!94490 lt!320749))) 0)) lt!321072)))

(declare-fun b!847446 () Bool)

(assert (=> b!847446 (= e!557692 (isBalanced!819 (c!137644 lt!321072)))))

(assert (= (and d!263819 res!387469) b!847446))

(declare-fun m!1083387 () Bool)

(assert (=> d!263819 m!1083387))

(assert (=> d!263819 m!1082623))

(declare-fun m!1083389 () Bool)

(assert (=> d!263819 m!1083389))

(declare-fun m!1083391 () Bool)

(assert (=> b!847446 m!1083391))

(assert (=> d!263603 d!263819))

(declare-fun lt!321076 () Bool)

(declare-fun d!263821 () Bool)

(assert (=> d!263821 (= lt!321076 (prefixMatch!5 (rulesRegex!18 thiss!20117 rules!2621) (list!3581 (++!2363 (charsOf!985 (h!14535 lt!320749)) (singletonSeq!529 (apply!1855 (charsOf!985 (h!14535 (t!94490 lt!320749))) 0))))))))

(assert (=> d!263821 (= lt!321076 (prefixMatchZipperSequence!24 (focus!25 (rulesRegex!18 thiss!20117 rules!2621)) (++!2363 (charsOf!985 (h!14535 lt!320749)) (singletonSeq!529 (apply!1855 (charsOf!985 (h!14535 (t!94490 lt!320749))) 0))) 0))))

(declare-fun lt!321077 () Unit!13599)

(declare-fun lt!321082 () Unit!13599)

(assert (=> d!263821 (= lt!321077 lt!321082)))

(declare-fun lt!321078 () (InoxSet Context!860))

(declare-fun lt!321073 () List!9149)

(assert (=> d!263821 (= (prefixMatch!5 (rulesRegex!18 thiss!20117 rules!2621) lt!321073) (prefixMatchZipper!5 lt!321078 lt!321073))))

(declare-fun lt!321081 () List!9155)

(assert (=> d!263821 (= lt!321082 (prefixMatchZipperRegexEquiv!5 lt!321078 lt!321081 (rulesRegex!18 thiss!20117 rules!2621) lt!321073))))

(assert (=> d!263821 (= lt!321073 (list!3581 (++!2363 (charsOf!985 (h!14535 lt!320749)) (singletonSeq!529 (apply!1855 (charsOf!985 (h!14535 (t!94490 lt!320749))) 0)))))))

(assert (=> d!263821 (= lt!321081 (toList!571 (focus!25 (rulesRegex!18 thiss!20117 rules!2621))))))

(assert (=> d!263821 (= lt!321078 (focus!25 (rulesRegex!18 thiss!20117 rules!2621)))))

(declare-fun lt!321080 () Unit!13599)

(declare-fun lt!321075 () Unit!13599)

(assert (=> d!263821 (= lt!321080 lt!321075)))

(declare-fun lt!321079 () (InoxSet Context!860))

(declare-fun lt!321074 () Int)

(assert (=> d!263821 (= (prefixMatchZipper!5 lt!321079 (dropList!267 (++!2363 (charsOf!985 (h!14535 lt!320749)) (singletonSeq!529 (apply!1855 (charsOf!985 (h!14535 (t!94490 lt!320749))) 0))) lt!321074)) (prefixMatchZipperSequence!24 lt!321079 (++!2363 (charsOf!985 (h!14535 lt!320749)) (singletonSeq!529 (apply!1855 (charsOf!985 (h!14535 (t!94490 lt!320749))) 0))) lt!321074))))

(assert (=> d!263821 (= lt!321075 (lemmaprefixMatchZipperSequenceEquivalent!5 lt!321079 (++!2363 (charsOf!985 (h!14535 lt!320749)) (singletonSeq!529 (apply!1855 (charsOf!985 (h!14535 (t!94490 lt!320749))) 0))) lt!321074))))

(assert (=> d!263821 (= lt!321074 0)))

(assert (=> d!263821 (= lt!321079 (focus!25 (rulesRegex!18 thiss!20117 rules!2621)))))

(assert (=> d!263821 (validRegex!655 (rulesRegex!18 thiss!20117 rules!2621))))

(assert (=> d!263821 (= (prefixMatchZipperSequence!23 (rulesRegex!18 thiss!20117 rules!2621) (++!2363 (charsOf!985 (h!14535 lt!320749)) (singletonSeq!529 (apply!1855 (charsOf!985 (h!14535 (t!94490 lt!320749))) 0)))) lt!321076)))

(declare-fun bs!230539 () Bool)

(assert (= bs!230539 d!263821))

(assert (=> bs!230539 m!1082627))

(declare-fun m!1083393 () Bool)

(assert (=> bs!230539 m!1083393))

(assert (=> bs!230539 m!1082215))

(assert (=> bs!230539 m!1083075))

(assert (=> bs!230539 m!1082215))

(declare-fun m!1083395 () Bool)

(assert (=> bs!230539 m!1083395))

(assert (=> bs!230539 m!1082627))

(declare-fun m!1083397 () Bool)

(assert (=> bs!230539 m!1083397))

(declare-fun m!1083399 () Bool)

(assert (=> bs!230539 m!1083399))

(declare-fun m!1083401 () Bool)

(assert (=> bs!230539 m!1083401))

(declare-fun m!1083403 () Bool)

(assert (=> bs!230539 m!1083403))

(assert (=> bs!230539 m!1082627))

(assert (=> bs!230539 m!1083399))

(assert (=> bs!230539 m!1082215))

(assert (=> bs!230539 m!1083397))

(declare-fun m!1083405 () Bool)

(assert (=> bs!230539 m!1083405))

(assert (=> bs!230539 m!1082215))

(declare-fun m!1083407 () Bool)

(assert (=> bs!230539 m!1083407))

(assert (=> bs!230539 m!1082627))

(declare-fun m!1083409 () Bool)

(assert (=> bs!230539 m!1083409))

(assert (=> bs!230539 m!1083095))

(assert (=> bs!230539 m!1083097))

(assert (=> bs!230539 m!1083095))

(assert (=> bs!230539 m!1082627))

(declare-fun m!1083411 () Bool)

(assert (=> bs!230539 m!1083411))

(assert (=> bs!230539 m!1082215))

(assert (=> bs!230539 m!1083095))

(assert (=> d!263603 d!263821))

(assert (=> d!263603 d!263771))

(assert (=> d!263603 d!263801))

(declare-fun d!263823 () Bool)

(declare-fun lt!321083 () C!4864)

(assert (=> d!263823 (= lt!321083 (apply!1856 (list!3581 (charsOf!985 (h!14535 (t!94490 lt!320749)))) 0))))

(assert (=> d!263823 (= lt!321083 (apply!1857 (c!137644 (charsOf!985 (h!14535 (t!94490 lt!320749)))) 0))))

(declare-fun e!557693 () Bool)

(assert (=> d!263823 e!557693))

(declare-fun res!387470 () Bool)

(assert (=> d!263823 (=> (not res!387470) (not e!557693))))

(assert (=> d!263823 (= res!387470 (<= 0 0))))

(assert (=> d!263823 (= (apply!1855 (charsOf!985 (h!14535 (t!94490 lt!320749))) 0) lt!321083)))

(declare-fun b!847447 () Bool)

(assert (=> b!847447 (= e!557693 (< 0 (size!7613 (charsOf!985 (h!14535 (t!94490 lt!320749))))))))

(assert (= (and d!263823 res!387470) b!847447))

(assert (=> d!263823 m!1082221))

(assert (=> d!263823 m!1083301))

(assert (=> d!263823 m!1083301))

(declare-fun m!1083413 () Bool)

(assert (=> d!263823 m!1083413))

(declare-fun m!1083415 () Bool)

(assert (=> d!263823 m!1083415))

(assert (=> b!847447 m!1082221))

(declare-fun m!1083417 () Bool)

(assert (=> b!847447 m!1083417))

(assert (=> d!263603 d!263823))

(declare-fun b!847451 () Bool)

(declare-fun e!557694 () Bool)

(declare-fun lt!321084 () BalanceConc!6068)

(assert (=> b!847451 (= e!557694 (= (list!3581 lt!321084) (++!2364 (list!3581 (charsOf!985 (h!14535 lt!320749))) (list!3581 (singletonSeq!529 (apply!1855 (charsOf!985 (h!14535 (t!94490 lt!320749))) 0))))))))

(declare-fun b!847450 () Bool)

(declare-fun res!387471 () Bool)

(assert (=> b!847450 (=> (not res!387471) (not e!557694))))

(assert (=> b!847450 (= res!387471 (>= (height!395 (++!2365 (c!137644 (charsOf!985 (h!14535 lt!320749))) (c!137644 (singletonSeq!529 (apply!1855 (charsOf!985 (h!14535 (t!94490 lt!320749))) 0))))) (max!0 (height!395 (c!137644 (charsOf!985 (h!14535 lt!320749)))) (height!395 (c!137644 (singletonSeq!529 (apply!1855 (charsOf!985 (h!14535 (t!94490 lt!320749))) 0)))))))))

(declare-fun b!847449 () Bool)

(declare-fun res!387474 () Bool)

(assert (=> b!847449 (=> (not res!387474) (not e!557694))))

(assert (=> b!847449 (= res!387474 (<= (height!395 (++!2365 (c!137644 (charsOf!985 (h!14535 lt!320749))) (c!137644 (singletonSeq!529 (apply!1855 (charsOf!985 (h!14535 (t!94490 lt!320749))) 0))))) (+ (max!0 (height!395 (c!137644 (charsOf!985 (h!14535 lt!320749)))) (height!395 (c!137644 (singletonSeq!529 (apply!1855 (charsOf!985 (h!14535 (t!94490 lt!320749))) 0))))) 1)))))

(declare-fun d!263825 () Bool)

(assert (=> d!263825 e!557694))

(declare-fun res!387473 () Bool)

(assert (=> d!263825 (=> (not res!387473) (not e!557694))))

(assert (=> d!263825 (= res!387473 (appendAssocInst!191 (c!137644 (charsOf!985 (h!14535 lt!320749))) (c!137644 (singletonSeq!529 (apply!1855 (charsOf!985 (h!14535 (t!94490 lt!320749))) 0)))))))

(assert (=> d!263825 (= lt!321084 (BalanceConc!6069 (++!2365 (c!137644 (charsOf!985 (h!14535 lt!320749))) (c!137644 (singletonSeq!529 (apply!1855 (charsOf!985 (h!14535 (t!94490 lt!320749))) 0))))))))

(assert (=> d!263825 (= (++!2363 (charsOf!985 (h!14535 lt!320749)) (singletonSeq!529 (apply!1855 (charsOf!985 (h!14535 (t!94490 lt!320749))) 0))) lt!321084)))

(declare-fun b!847448 () Bool)

(declare-fun res!387472 () Bool)

(assert (=> b!847448 (=> (not res!387472) (not e!557694))))

(assert (=> b!847448 (= res!387472 (isBalanced!819 (++!2365 (c!137644 (charsOf!985 (h!14535 lt!320749))) (c!137644 (singletonSeq!529 (apply!1855 (charsOf!985 (h!14535 (t!94490 lt!320749))) 0))))))))

(assert (= (and d!263825 res!387473) b!847448))

(assert (= (and b!847448 res!387472) b!847449))

(assert (= (and b!847449 res!387474) b!847450))

(assert (= (and b!847450 res!387471) b!847451))

(declare-fun m!1083419 () Bool)

(assert (=> b!847448 m!1083419))

(assert (=> b!847448 m!1083419))

(declare-fun m!1083421 () Bool)

(assert (=> b!847448 m!1083421))

(assert (=> b!847449 m!1083419))

(declare-fun m!1083423 () Bool)

(assert (=> b!847449 m!1083423))

(declare-fun m!1083425 () Bool)

(assert (=> b!847449 m!1083425))

(declare-fun m!1083427 () Bool)

(assert (=> b!847449 m!1083427))

(declare-fun m!1083429 () Bool)

(assert (=> b!847449 m!1083429))

(assert (=> b!847449 m!1083425))

(assert (=> b!847449 m!1083427))

(assert (=> b!847449 m!1083419))

(declare-fun m!1083431 () Bool)

(assert (=> b!847451 m!1083431))

(assert (=> b!847451 m!1082631))

(declare-fun m!1083433 () Bool)

(assert (=> b!847451 m!1083433))

(assert (=> b!847451 m!1082625))

(declare-fun m!1083435 () Bool)

(assert (=> b!847451 m!1083435))

(assert (=> b!847451 m!1083433))

(assert (=> b!847451 m!1083435))

(declare-fun m!1083437 () Bool)

(assert (=> b!847451 m!1083437))

(assert (=> b!847450 m!1083419))

(assert (=> b!847450 m!1083423))

(assert (=> b!847450 m!1083425))

(assert (=> b!847450 m!1083427))

(assert (=> b!847450 m!1083429))

(assert (=> b!847450 m!1083425))

(assert (=> b!847450 m!1083427))

(assert (=> b!847450 m!1083419))

(declare-fun m!1083439 () Bool)

(assert (=> d!263825 m!1083439))

(assert (=> d!263825 m!1083419))

(assert (=> d!263603 d!263825))

(declare-fun d!263827 () Bool)

(assert (=> d!263827 true))

(declare-fun lt!321087 () Bool)

(declare-fun rulesValidInductive!602 (LexerInterface!1516 List!9151) Bool)

(assert (=> d!263827 (= lt!321087 (rulesValidInductive!602 thiss!20117 rules!2621))))

(declare-fun lambda!25247 () Int)

(declare-fun forall!2142 (List!9151 Int) Bool)

(assert (=> d!263827 (= lt!321087 (forall!2142 rules!2621 lambda!25247))))

(assert (=> d!263827 (= (rulesValid!595 thiss!20117 rules!2621) lt!321087)))

(declare-fun bs!230540 () Bool)

(assert (= bs!230540 d!263827))

(declare-fun m!1083441 () Bool)

(assert (=> bs!230540 m!1083441))

(declare-fun m!1083443 () Bool)

(assert (=> bs!230540 m!1083443))

(assert (=> d!263617 d!263827))

(declare-fun lt!321088 () Bool)

(declare-fun d!263829 () Bool)

(assert (=> d!263829 (= lt!321088 (isEmpty!5394 (list!3581 (_2!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 lt!320742)))))))))

(assert (=> d!263829 (= lt!321088 (isEmpty!5395 (c!137644 (_2!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 lt!320742)))))))))

(assert (=> d!263829 (= (isEmpty!5391 (_2!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 lt!320742))))) lt!321088)))

(declare-fun bs!230541 () Bool)

(assert (= bs!230541 d!263829))

(declare-fun m!1083445 () Bool)

(assert (=> bs!230541 m!1083445))

(assert (=> bs!230541 m!1083445))

(declare-fun m!1083447 () Bool)

(assert (=> bs!230541 m!1083447))

(declare-fun m!1083449 () Bool)

(assert (=> bs!230541 m!1083449))

(assert (=> b!847146 d!263829))

(declare-fun b!847527 () Bool)

(declare-fun res!387521 () Bool)

(declare-fun e!557743 () Bool)

(assert (=> b!847527 (=> (not res!387521) (not e!557743))))

(declare-fun lt!321110 () tuple2!10356)

(declare-datatypes ((tuple2!10360 0))(
  ( (tuple2!10361 (_1!6006 List!9150) (_2!6006 List!9149)) )
))
(declare-fun lexList!382 (LexerInterface!1516 List!9151 List!9149) tuple2!10360)

(assert (=> b!847527 (= res!387521 (= (list!3582 (_1!6004 lt!321110)) (_1!6006 (lexList!382 thiss!20117 rules!2621 (list!3581 (print!549 thiss!20117 (singletonSeq!528 lt!320742)))))))))

(declare-fun e!557741 () Bool)

(declare-fun b!847528 () Bool)

(assert (=> b!847528 (= e!557741 (= (_2!6004 lt!321110) (print!549 thiss!20117 (singletonSeq!528 lt!320742))))))

(declare-fun b!847529 () Bool)

(declare-fun e!557742 () Bool)

(declare-fun isEmpty!5397 (BalanceConc!6072) Bool)

(assert (=> b!847529 (= e!557742 (not (isEmpty!5397 (_1!6004 lt!321110))))))

(declare-fun d!263831 () Bool)

(assert (=> d!263831 e!557743))

(declare-fun res!387519 () Bool)

(assert (=> d!263831 (=> (not res!387519) (not e!557743))))

(assert (=> d!263831 (= res!387519 e!557741)))

(declare-fun c!137753 () Bool)

(assert (=> d!263831 (= c!137753 (> (size!7612 (_1!6004 lt!321110)) 0))))

(declare-fun lexTailRecV2!289 (LexerInterface!1516 List!9151 BalanceConc!6068 BalanceConc!6068 BalanceConc!6068 BalanceConc!6072) tuple2!10356)

(assert (=> d!263831 (= lt!321110 (lexTailRecV2!289 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 lt!320742)) (BalanceConc!6069 Empty!3027) (print!549 thiss!20117 (singletonSeq!528 lt!320742)) (BalanceConc!6073 Empty!3029)))))

(assert (=> d!263831 (= (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 lt!320742))) lt!321110)))

(declare-fun b!847530 () Bool)

(assert (=> b!847530 (= e!557741 e!557742)))

(declare-fun res!387520 () Bool)

(assert (=> b!847530 (= res!387520 (< (size!7613 (_2!6004 lt!321110)) (size!7613 (print!549 thiss!20117 (singletonSeq!528 lt!320742)))))))

(assert (=> b!847530 (=> (not res!387520) (not e!557742))))

(declare-fun b!847531 () Bool)

(assert (=> b!847531 (= e!557743 (= (list!3581 (_2!6004 lt!321110)) (_2!6006 (lexList!382 thiss!20117 rules!2621 (list!3581 (print!549 thiss!20117 (singletonSeq!528 lt!320742)))))))))

(assert (= (and d!263831 c!137753) b!847530))

(assert (= (and d!263831 (not c!137753)) b!847528))

(assert (= (and b!847530 res!387520) b!847529))

(assert (= (and d!263831 res!387519) b!847527))

(assert (= (and b!847527 res!387521) b!847531))

(declare-fun m!1083659 () Bool)

(assert (=> b!847529 m!1083659))

(declare-fun m!1083661 () Bool)

(assert (=> d!263831 m!1083661))

(assert (=> d!263831 m!1082635))

(assert (=> d!263831 m!1082635))

(declare-fun m!1083663 () Bool)

(assert (=> d!263831 m!1083663))

(declare-fun m!1083665 () Bool)

(assert (=> b!847531 m!1083665))

(assert (=> b!847531 m!1082635))

(declare-fun m!1083667 () Bool)

(assert (=> b!847531 m!1083667))

(assert (=> b!847531 m!1083667))

(declare-fun m!1083669 () Bool)

(assert (=> b!847531 m!1083669))

(declare-fun m!1083671 () Bool)

(assert (=> b!847527 m!1083671))

(assert (=> b!847527 m!1082635))

(assert (=> b!847527 m!1083667))

(assert (=> b!847527 m!1083667))

(assert (=> b!847527 m!1083669))

(declare-fun m!1083673 () Bool)

(assert (=> b!847530 m!1083673))

(assert (=> b!847530 m!1082635))

(declare-fun m!1083675 () Bool)

(assert (=> b!847530 m!1083675))

(assert (=> b!847146 d!263831))

(declare-fun d!263899 () Bool)

(declare-fun lt!321113 () BalanceConc!6068)

(assert (=> d!263899 (= (list!3581 lt!321113) (printList!468 thiss!20117 (list!3582 (singletonSeq!528 lt!320742))))))

(declare-fun printTailRec!464 (LexerInterface!1516 BalanceConc!6072 Int BalanceConc!6068) BalanceConc!6068)

(assert (=> d!263899 (= lt!321113 (printTailRec!464 thiss!20117 (singletonSeq!528 lt!320742) 0 (BalanceConc!6069 Empty!3027)))))

(assert (=> d!263899 (= (print!549 thiss!20117 (singletonSeq!528 lt!320742)) lt!321113)))

(declare-fun bs!230566 () Bool)

(assert (= bs!230566 d!263899))

(declare-fun m!1083677 () Bool)

(assert (=> bs!230566 m!1083677))

(assert (=> bs!230566 m!1082633))

(assert (=> bs!230566 m!1082637))

(assert (=> bs!230566 m!1082637))

(declare-fun m!1083679 () Bool)

(assert (=> bs!230566 m!1083679))

(assert (=> bs!230566 m!1082633))

(declare-fun m!1083681 () Bool)

(assert (=> bs!230566 m!1083681))

(assert (=> b!847146 d!263899))

(declare-fun d!263901 () Bool)

(declare-fun e!557746 () Bool)

(assert (=> d!263901 e!557746))

(declare-fun res!387524 () Bool)

(assert (=> d!263901 (=> (not res!387524) (not e!557746))))

(declare-fun lt!321116 () BalanceConc!6072)

(assert (=> d!263901 (= res!387524 (= (list!3582 lt!321116) (Cons!9134 lt!320742 Nil!9134)))))

(declare-fun singleton!249 (Token!3094) BalanceConc!6072)

(assert (=> d!263901 (= lt!321116 (singleton!249 lt!320742))))

(assert (=> d!263901 (= (singletonSeq!528 lt!320742) lt!321116)))

(declare-fun b!847534 () Bool)

(declare-fun isBalanced!821 (Conc!3029) Bool)

(assert (=> b!847534 (= e!557746 (isBalanced!821 (c!137686 lt!321116)))))

(assert (= (and d!263901 res!387524) b!847534))

(declare-fun m!1083683 () Bool)

(assert (=> d!263901 m!1083683))

(declare-fun m!1083685 () Bool)

(assert (=> d!263901 m!1083685))

(declare-fun m!1083687 () Bool)

(assert (=> b!847534 m!1083687))

(assert (=> b!847146 d!263901))

(declare-fun d!263903 () Bool)

(declare-fun res!387525 () Bool)

(declare-fun e!557747 () Bool)

(assert (=> d!263903 (=> res!387525 e!557747)))

(assert (=> d!263903 (= res!387525 ((_ is Nil!9134) lt!320741))))

(assert (=> d!263903 (= (forall!2141 lt!320741 lambda!25230) e!557747)))

(declare-fun b!847535 () Bool)

(declare-fun e!557748 () Bool)

(assert (=> b!847535 (= e!557747 e!557748)))

(declare-fun res!387526 () Bool)

(assert (=> b!847535 (=> (not res!387526) (not e!557748))))

(assert (=> b!847535 (= res!387526 (dynLambda!4239 lambda!25230 (h!14535 lt!320741)))))

(declare-fun b!847536 () Bool)

(assert (=> b!847536 (= e!557748 (forall!2141 (t!94490 lt!320741) lambda!25230))))

(assert (= (and d!263903 (not res!387525)) b!847535))

(assert (= (and b!847535 res!387526) b!847536))

(declare-fun b_lambda!28049 () Bool)

(assert (=> (not b_lambda!28049) (not b!847535)))

(declare-fun m!1083689 () Bool)

(assert (=> b!847535 m!1083689))

(declare-fun m!1083691 () Bool)

(assert (=> b!847536 m!1083691))

(assert (=> d!263579 d!263903))

(assert (=> d!263579 d!263619))

(assert (=> d!263605 d!263901))

(assert (=> d!263605 d!263831))

(declare-fun d!263905 () Bool)

(declare-fun lt!321119 () Int)

(declare-fun size!7616 (List!9150) Int)

(assert (=> d!263905 (= lt!321119 (size!7616 (list!3582 (_1!6004 lt!320903))))))

(declare-fun size!7617 (Conc!3029) Int)

(assert (=> d!263905 (= lt!321119 (size!7617 (c!137686 (_1!6004 lt!320903))))))

(assert (=> d!263905 (= (size!7612 (_1!6004 lt!320903)) lt!321119)))

(declare-fun bs!230567 () Bool)

(assert (= bs!230567 d!263905))

(assert (=> bs!230567 m!1083321))

(assert (=> bs!230567 m!1083321))

(declare-fun m!1083693 () Bool)

(assert (=> bs!230567 m!1083693))

(declare-fun m!1083695 () Bool)

(assert (=> bs!230567 m!1083695))

(assert (=> d!263605 d!263905))

(assert (=> d!263605 d!263619))

(declare-fun d!263907 () Bool)

(declare-fun list!3586 (Conc!3029) List!9150)

(assert (=> d!263907 (= (list!3582 (_1!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 lt!320742))))) (list!3586 (c!137686 (_1!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 lt!320742)))))))))

(declare-fun bs!230568 () Bool)

(assert (= bs!230568 d!263907))

(declare-fun m!1083697 () Bool)

(assert (=> bs!230568 m!1083697))

(assert (=> d!263605 d!263907))

(declare-fun d!263909 () Bool)

(assert (=> d!263909 (= (list!3582 (singletonSeq!528 lt!320742)) (list!3586 (c!137686 (singletonSeq!528 lt!320742))))))

(declare-fun bs!230569 () Bool)

(assert (= bs!230569 d!263909))

(declare-fun m!1083699 () Bool)

(assert (=> bs!230569 m!1083699))

(assert (=> d!263605 d!263909))

(assert (=> d!263605 d!263899))

(declare-fun d!263911 () Bool)

(declare-fun res!387531 () Bool)

(declare-fun e!557753 () Bool)

(assert (=> d!263911 (=> res!387531 e!557753)))

(assert (=> d!263911 (= res!387531 ((_ is Nil!9135) rules!2621))))

(assert (=> d!263911 (= (noDuplicateTag!595 thiss!20117 rules!2621 Nil!9137) e!557753)))

(declare-fun b!847541 () Bool)

(declare-fun e!557754 () Bool)

(assert (=> b!847541 (= e!557753 e!557754)))

(declare-fun res!387532 () Bool)

(assert (=> b!847541 (=> (not res!387532) (not e!557754))))

(declare-fun contains!1692 (List!9153 String!10798) Bool)

(assert (=> b!847541 (= res!387532 (not (contains!1692 Nil!9137 (tag!1976 (h!14536 rules!2621)))))))

(declare-fun b!847542 () Bool)

(assert (=> b!847542 (= e!557754 (noDuplicateTag!595 thiss!20117 (t!94491 rules!2621) (Cons!9137 (tag!1976 (h!14536 rules!2621)) Nil!9137)))))

(assert (= (and d!263911 (not res!387531)) b!847541))

(assert (= (and b!847541 res!387532) b!847542))

(declare-fun m!1083701 () Bool)

(assert (=> b!847541 m!1083701))

(declare-fun m!1083703 () Bool)

(assert (=> b!847542 m!1083703))

(assert (=> b!847157 d!263911))

(declare-fun d!263913 () Bool)

(assert (=> d!263913 (= (inv!11615 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (value!55548 separatorToken!297))) (isBalanced!819 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (value!55548 separatorToken!297)))))))

(declare-fun bs!230570 () Bool)

(assert (= bs!230570 d!263913))

(declare-fun m!1083705 () Bool)

(assert (=> bs!230570 m!1083705))

(assert (=> tb!58775 d!263913))

(declare-fun d!263915 () Bool)

(declare-fun lt!321140 () Token!3094)

(assert (=> d!263915 (= lt!321140 (apply!1858 (list!3582 (_1!6004 lt!320860)) 0))))

(assert (=> d!263915 (= lt!321140 (apply!1859 (c!137686 (_1!6004 lt!320860)) 0))))

(declare-fun e!557755 () Bool)

(assert (=> d!263915 e!557755))

(declare-fun res!387533 () Bool)

(assert (=> d!263915 (=> (not res!387533) (not e!557755))))

(assert (=> d!263915 (= res!387533 (<= 0 0))))

(assert (=> d!263915 (= (apply!1854 (_1!6004 lt!320860) 0) lt!321140)))

(declare-fun b!847543 () Bool)

(assert (=> b!847543 (= e!557755 (< 0 (size!7612 (_1!6004 lt!320860))))))

(assert (= (and d!263915 res!387533) b!847543))

(declare-fun m!1083707 () Bool)

(assert (=> d!263915 m!1083707))

(assert (=> d!263915 m!1083707))

(declare-fun m!1083709 () Bool)

(assert (=> d!263915 m!1083709))

(declare-fun m!1083711 () Bool)

(assert (=> d!263915 m!1083711))

(assert (=> b!847543 m!1082501))

(assert (=> b!847042 d!263915))

(declare-fun bs!230571 () Bool)

(declare-fun d!263917 () Bool)

(assert (= bs!230571 (and d!263917 b!846787)))

(declare-fun lambda!25250 () Int)

(assert (=> bs!230571 (not (= lambda!25250 lambda!25220))))

(declare-fun bs!230572 () Bool)

(assert (= bs!230572 (and d!263917 d!263489)))

(assert (=> bs!230572 (= lambda!25250 lambda!25226)))

(declare-fun bs!230573 () Bool)

(assert (= bs!230573 (and d!263917 d!263525)))

(assert (=> bs!230573 (= lambda!25250 lambda!25228)))

(declare-fun bs!230574 () Bool)

(assert (= bs!230574 (and d!263917 d!263579)))

(assert (=> bs!230574 (= lambda!25250 lambda!25230)))

(declare-fun b!847548 () Bool)

(declare-fun e!557760 () Bool)

(assert (=> b!847548 (= e!557760 true)))

(declare-fun b!847547 () Bool)

(declare-fun e!557759 () Bool)

(assert (=> b!847547 (= e!557759 e!557760)))

(declare-fun b!847546 () Bool)

(declare-fun e!557758 () Bool)

(assert (=> b!847546 (= e!557758 e!557759)))

(assert (=> d!263917 e!557758))

(assert (= b!847547 b!847548))

(assert (= b!847546 b!847547))

(assert (= (and d!263917 ((_ is Cons!9135) rules!2621)) b!847546))

(assert (=> b!847548 (< (dynLambda!4236 order!5823 (toValue!2739 (transformation!1714 (h!14536 rules!2621)))) (dynLambda!4237 order!5825 lambda!25250))))

(assert (=> b!847548 (< (dynLambda!4238 order!5827 (toChars!2598 (transformation!1714 (h!14536 rules!2621)))) (dynLambda!4237 order!5825 lambda!25250))))

(assert (=> d!263917 true))

(declare-fun lt!321141 () Bool)

(assert (=> d!263917 (= lt!321141 (forall!2141 lt!320744 lambda!25250))))

(declare-fun e!557757 () Bool)

(assert (=> d!263917 (= lt!321141 e!557757)))

(declare-fun res!387534 () Bool)

(assert (=> d!263917 (=> res!387534 e!557757)))

(assert (=> d!263917 (= res!387534 (not ((_ is Cons!9134) lt!320744)))))

(assert (=> d!263917 (not (isEmpty!5390 rules!2621))))

(assert (=> d!263917 (= (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 lt!320744) lt!321141)))

(declare-fun b!847544 () Bool)

(declare-fun e!557756 () Bool)

(assert (=> b!847544 (= e!557757 e!557756)))

(declare-fun res!387535 () Bool)

(assert (=> b!847544 (=> (not res!387535) (not e!557756))))

(assert (=> b!847544 (= res!387535 (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 lt!320744)))))

(declare-fun b!847545 () Bool)

(assert (=> b!847545 (= e!557756 (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 (t!94490 lt!320744)))))

(assert (= (and d!263917 (not res!387534)) b!847544))

(assert (= (and b!847544 res!387535) b!847545))

(declare-fun m!1083713 () Bool)

(assert (=> d!263917 m!1083713))

(assert (=> d!263917 m!1082077))

(declare-fun m!1083715 () Bool)

(assert (=> b!847544 m!1083715))

(declare-fun m!1083717 () Bool)

(assert (=> b!847545 m!1083717))

(assert (=> b!847143 d!263917))

(declare-fun d!263919 () Bool)

(declare-fun charsToBigInt!0 (List!9148 Int) Int)

(assert (=> d!263919 (= (inv!15 (value!55548 (h!14535 l!5107))) (= (charsToBigInt!0 (text!12909 (value!55548 (h!14535 l!5107))) 0) (value!55543 (value!55548 (h!14535 l!5107)))))))

(declare-fun bs!230576 () Bool)

(assert (= bs!230576 d!263919))

(declare-fun m!1083745 () Bool)

(assert (=> bs!230576 m!1083745))

(assert (=> b!847161 d!263919))

(declare-fun lt!321152 () Bool)

(declare-fun d!263923 () Bool)

(assert (=> d!263923 (= lt!321152 (isEmpty!5394 (list!3581 (_2!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 separatorToken!297)))))))))

(assert (=> d!263923 (= lt!321152 (isEmpty!5395 (c!137644 (_2!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 separatorToken!297)))))))))

(assert (=> d!263923 (= (isEmpty!5391 (_2!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 separatorToken!297))))) lt!321152)))

(declare-fun bs!230577 () Bool)

(assert (= bs!230577 d!263923))

(declare-fun m!1083747 () Bool)

(assert (=> bs!230577 m!1083747))

(assert (=> bs!230577 m!1083747))

(declare-fun m!1083749 () Bool)

(assert (=> bs!230577 m!1083749))

(declare-fun m!1083751 () Bool)

(assert (=> bs!230577 m!1083751))

(assert (=> b!847044 d!263923))

(declare-fun b!847549 () Bool)

(declare-fun res!387538 () Bool)

(declare-fun e!557763 () Bool)

(assert (=> b!847549 (=> (not res!387538) (not e!557763))))

(declare-fun lt!321153 () tuple2!10356)

(assert (=> b!847549 (= res!387538 (= (list!3582 (_1!6004 lt!321153)) (_1!6006 (lexList!382 thiss!20117 rules!2621 (list!3581 (print!549 thiss!20117 (singletonSeq!528 separatorToken!297)))))))))

(declare-fun e!557761 () Bool)

(declare-fun b!847550 () Bool)

(assert (=> b!847550 (= e!557761 (= (_2!6004 lt!321153) (print!549 thiss!20117 (singletonSeq!528 separatorToken!297))))))

(declare-fun b!847551 () Bool)

(declare-fun e!557762 () Bool)

(assert (=> b!847551 (= e!557762 (not (isEmpty!5397 (_1!6004 lt!321153))))))

(declare-fun d!263925 () Bool)

(assert (=> d!263925 e!557763))

(declare-fun res!387536 () Bool)

(assert (=> d!263925 (=> (not res!387536) (not e!557763))))

(assert (=> d!263925 (= res!387536 e!557761)))

(declare-fun c!137754 () Bool)

(assert (=> d!263925 (= c!137754 (> (size!7612 (_1!6004 lt!321153)) 0))))

(assert (=> d!263925 (= lt!321153 (lexTailRecV2!289 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 separatorToken!297)) (BalanceConc!6069 Empty!3027) (print!549 thiss!20117 (singletonSeq!528 separatorToken!297)) (BalanceConc!6073 Empty!3029)))))

(assert (=> d!263925 (= (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 separatorToken!297))) lt!321153)))

(declare-fun b!847552 () Bool)

(assert (=> b!847552 (= e!557761 e!557762)))

(declare-fun res!387537 () Bool)

(assert (=> b!847552 (= res!387537 (< (size!7613 (_2!6004 lt!321153)) (size!7613 (print!549 thiss!20117 (singletonSeq!528 separatorToken!297)))))))

(assert (=> b!847552 (=> (not res!387537) (not e!557762))))

(declare-fun b!847553 () Bool)

(assert (=> b!847553 (= e!557763 (= (list!3581 (_2!6004 lt!321153)) (_2!6006 (lexList!382 thiss!20117 rules!2621 (list!3581 (print!549 thiss!20117 (singletonSeq!528 separatorToken!297)))))))))

(assert (= (and d!263925 c!137754) b!847552))

(assert (= (and d!263925 (not c!137754)) b!847550))

(assert (= (and b!847552 res!387537) b!847551))

(assert (= (and d!263925 res!387536) b!847549))

(assert (= (and b!847549 res!387538) b!847553))

(declare-fun m!1083753 () Bool)

(assert (=> b!847551 m!1083753))

(declare-fun m!1083755 () Bool)

(assert (=> d!263925 m!1083755))

(assert (=> d!263925 m!1082497))

(assert (=> d!263925 m!1082497))

(declare-fun m!1083757 () Bool)

(assert (=> d!263925 m!1083757))

(declare-fun m!1083759 () Bool)

(assert (=> b!847553 m!1083759))

(assert (=> b!847553 m!1082497))

(declare-fun m!1083761 () Bool)

(assert (=> b!847553 m!1083761))

(assert (=> b!847553 m!1083761))

(declare-fun m!1083763 () Bool)

(assert (=> b!847553 m!1083763))

(declare-fun m!1083765 () Bool)

(assert (=> b!847549 m!1083765))

(assert (=> b!847549 m!1082497))

(assert (=> b!847549 m!1083761))

(assert (=> b!847549 m!1083761))

(assert (=> b!847549 m!1083763))

(declare-fun m!1083767 () Bool)

(assert (=> b!847552 m!1083767))

(assert (=> b!847552 m!1082497))

(declare-fun m!1083769 () Bool)

(assert (=> b!847552 m!1083769))

(assert (=> b!847044 d!263925))

(declare-fun d!263927 () Bool)

(declare-fun lt!321156 () BalanceConc!6068)

(assert (=> d!263927 (= (list!3581 lt!321156) (printList!468 thiss!20117 (list!3582 (singletonSeq!528 separatorToken!297))))))

(assert (=> d!263927 (= lt!321156 (printTailRec!464 thiss!20117 (singletonSeq!528 separatorToken!297) 0 (BalanceConc!6069 Empty!3027)))))

(assert (=> d!263927 (= (print!549 thiss!20117 (singletonSeq!528 separatorToken!297)) lt!321156)))

(declare-fun bs!230578 () Bool)

(assert (= bs!230578 d!263927))

(declare-fun m!1083771 () Bool)

(assert (=> bs!230578 m!1083771))

(assert (=> bs!230578 m!1082495))

(assert (=> bs!230578 m!1082499))

(assert (=> bs!230578 m!1082499))

(declare-fun m!1083773 () Bool)

(assert (=> bs!230578 m!1083773))

(assert (=> bs!230578 m!1082495))

(declare-fun m!1083775 () Bool)

(assert (=> bs!230578 m!1083775))

(assert (=> b!847044 d!263927))

(declare-fun d!263929 () Bool)

(declare-fun e!557764 () Bool)

(assert (=> d!263929 e!557764))

(declare-fun res!387539 () Bool)

(assert (=> d!263929 (=> (not res!387539) (not e!557764))))

(declare-fun lt!321157 () BalanceConc!6072)

(assert (=> d!263929 (= res!387539 (= (list!3582 lt!321157) (Cons!9134 separatorToken!297 Nil!9134)))))

(assert (=> d!263929 (= lt!321157 (singleton!249 separatorToken!297))))

(assert (=> d!263929 (= (singletonSeq!528 separatorToken!297) lt!321157)))

(declare-fun b!847554 () Bool)

(assert (=> b!847554 (= e!557764 (isBalanced!821 (c!137686 lt!321157)))))

(assert (= (and d!263929 res!387539) b!847554))

(declare-fun m!1083777 () Bool)

(assert (=> d!263929 m!1083777))

(declare-fun m!1083779 () Bool)

(assert (=> d!263929 m!1083779))

(declare-fun m!1083781 () Bool)

(assert (=> b!847554 m!1083781))

(assert (=> b!847044 d!263929))

(declare-fun d!263931 () Bool)

(declare-fun res!387540 () Bool)

(declare-fun e!557765 () Bool)

(assert (=> d!263931 (=> res!387540 e!557765)))

(assert (=> d!263931 (= res!387540 ((_ is Nil!9134) (t!94490 l!5107)))))

(assert (=> d!263931 (= (forall!2141 (t!94490 l!5107) lambda!25220) e!557765)))

(declare-fun b!847555 () Bool)

(declare-fun e!557766 () Bool)

(assert (=> b!847555 (= e!557765 e!557766)))

(declare-fun res!387541 () Bool)

(assert (=> b!847555 (=> (not res!387541) (not e!557766))))

(assert (=> b!847555 (= res!387541 (dynLambda!4239 lambda!25220 (h!14535 (t!94490 l!5107))))))

(declare-fun b!847556 () Bool)

(assert (=> b!847556 (= e!557766 (forall!2141 (t!94490 (t!94490 l!5107)) lambda!25220))))

(assert (= (and d!263931 (not res!387540)) b!847555))

(assert (= (and b!847555 res!387541) b!847556))

(declare-fun b_lambda!28051 () Bool)

(assert (=> (not b_lambda!28051) (not b!847555)))

(declare-fun m!1083783 () Bool)

(assert (=> b!847555 m!1083783))

(declare-fun m!1083785 () Bool)

(assert (=> b!847556 m!1083785))

(assert (=> b!847050 d!263931))

(declare-fun d!263933 () Bool)

(declare-fun lt!321159 () Int)

(assert (=> d!263933 (= lt!321159 (size!7616 (list!3582 (_1!6004 lt!320782))))))

(assert (=> d!263933 (= lt!321159 (size!7617 (c!137686 (_1!6004 lt!320782))))))

(assert (=> d!263933 (= (size!7612 (_1!6004 lt!320782)) lt!321159)))

(declare-fun bs!230580 () Bool)

(assert (= bs!230580 d!263933))

(declare-fun m!1083793 () Bool)

(assert (=> bs!230580 m!1083793))

(assert (=> bs!230580 m!1083793))

(declare-fun m!1083795 () Bool)

(assert (=> bs!230580 m!1083795))

(declare-fun m!1083797 () Bool)

(assert (=> bs!230580 m!1083797))

(assert (=> d!263509 d!263933))

(declare-fun d!263937 () Bool)

(declare-fun e!557767 () Bool)

(assert (=> d!263937 e!557767))

(declare-fun res!387542 () Bool)

(assert (=> d!263937 (=> (not res!387542) (not e!557767))))

(declare-fun lt!321160 () BalanceConc!6072)

(assert (=> d!263937 (= res!387542 (= (list!3582 lt!321160) (Cons!9134 (h!14535 (t!94490 lt!320749)) Nil!9134)))))

(assert (=> d!263937 (= lt!321160 (singleton!249 (h!14535 (t!94490 lt!320749))))))

(assert (=> d!263937 (= (singletonSeq!528 (h!14535 (t!94490 lt!320749))) lt!321160)))

(declare-fun b!847557 () Bool)

(assert (=> b!847557 (= e!557767 (isBalanced!821 (c!137686 lt!321160)))))

(assert (= (and d!263937 res!387542) b!847557))

(declare-fun m!1083799 () Bool)

(assert (=> d!263937 m!1083799))

(declare-fun m!1083801 () Bool)

(assert (=> d!263937 m!1083801))

(declare-fun m!1083803 () Bool)

(assert (=> b!847557 m!1083803))

(assert (=> d!263509 d!263937))

(declare-fun b!847558 () Bool)

(declare-fun res!387545 () Bool)

(declare-fun e!557770 () Bool)

(assert (=> b!847558 (=> (not res!387545) (not e!557770))))

(declare-fun lt!321161 () tuple2!10356)

(assert (=> b!847558 (= res!387545 (= (list!3582 (_1!6004 lt!321161)) (_1!6006 (lexList!382 thiss!20117 rules!2621 (list!3581 (print!549 thiss!20117 (singletonSeq!528 (h!14535 (t!94490 lt!320749)))))))))))

(declare-fun e!557768 () Bool)

(declare-fun b!847559 () Bool)

(assert (=> b!847559 (= e!557768 (= (_2!6004 lt!321161) (print!549 thiss!20117 (singletonSeq!528 (h!14535 (t!94490 lt!320749))))))))

(declare-fun b!847560 () Bool)

(declare-fun e!557769 () Bool)

(assert (=> b!847560 (= e!557769 (not (isEmpty!5397 (_1!6004 lt!321161))))))

(declare-fun d!263939 () Bool)

(assert (=> d!263939 e!557770))

(declare-fun res!387543 () Bool)

(assert (=> d!263939 (=> (not res!387543) (not e!557770))))

(assert (=> d!263939 (= res!387543 e!557768)))

(declare-fun c!137755 () Bool)

(assert (=> d!263939 (= c!137755 (> (size!7612 (_1!6004 lt!321161)) 0))))

(assert (=> d!263939 (= lt!321161 (lexTailRecV2!289 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 (h!14535 (t!94490 lt!320749)))) (BalanceConc!6069 Empty!3027) (print!549 thiss!20117 (singletonSeq!528 (h!14535 (t!94490 lt!320749)))) (BalanceConc!6073 Empty!3029)))))

(assert (=> d!263939 (= (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 (h!14535 (t!94490 lt!320749))))) lt!321161)))

(declare-fun b!847561 () Bool)

(assert (=> b!847561 (= e!557768 e!557769)))

(declare-fun res!387544 () Bool)

(assert (=> b!847561 (= res!387544 (< (size!7613 (_2!6004 lt!321161)) (size!7613 (print!549 thiss!20117 (singletonSeq!528 (h!14535 (t!94490 lt!320749)))))))))

(assert (=> b!847561 (=> (not res!387544) (not e!557769))))

(declare-fun b!847562 () Bool)

(assert (=> b!847562 (= e!557770 (= (list!3581 (_2!6004 lt!321161)) (_2!6006 (lexList!382 thiss!20117 rules!2621 (list!3581 (print!549 thiss!20117 (singletonSeq!528 (h!14535 (t!94490 lt!320749)))))))))))

(assert (= (and d!263939 c!137755) b!847561))

(assert (= (and d!263939 (not c!137755)) b!847559))

(assert (= (and b!847561 res!387544) b!847560))

(assert (= (and d!263939 res!387543) b!847558))

(assert (= (and b!847558 res!387545) b!847562))

(declare-fun m!1083805 () Bool)

(assert (=> b!847560 m!1083805))

(declare-fun m!1083807 () Bool)

(assert (=> d!263939 m!1083807))

(assert (=> d!263939 m!1082195))

(assert (=> d!263939 m!1082195))

(declare-fun m!1083809 () Bool)

(assert (=> d!263939 m!1083809))

(declare-fun m!1083811 () Bool)

(assert (=> b!847562 m!1083811))

(assert (=> b!847562 m!1082195))

(declare-fun m!1083813 () Bool)

(assert (=> b!847562 m!1083813))

(assert (=> b!847562 m!1083813))

(declare-fun m!1083815 () Bool)

(assert (=> b!847562 m!1083815))

(declare-fun m!1083817 () Bool)

(assert (=> b!847558 m!1083817))

(assert (=> b!847558 m!1082195))

(assert (=> b!847558 m!1083813))

(assert (=> b!847558 m!1083813))

(assert (=> b!847558 m!1083815))

(declare-fun m!1083819 () Bool)

(assert (=> b!847561 m!1083819))

(assert (=> b!847561 m!1082195))

(declare-fun m!1083821 () Bool)

(assert (=> b!847561 m!1083821))

(assert (=> d!263509 d!263939))

(assert (=> d!263509 d!263619))

(declare-fun d!263941 () Bool)

(assert (=> d!263941 (= (list!3582 (singletonSeq!528 (h!14535 (t!94490 lt!320749)))) (list!3586 (c!137686 (singletonSeq!528 (h!14535 (t!94490 lt!320749))))))))

(declare-fun bs!230581 () Bool)

(assert (= bs!230581 d!263941))

(declare-fun m!1083823 () Bool)

(assert (=> bs!230581 m!1083823))

(assert (=> d!263509 d!263941))

(declare-fun d!263943 () Bool)

(declare-fun lt!321162 () BalanceConc!6068)

(assert (=> d!263943 (= (list!3581 lt!321162) (printList!468 thiss!20117 (list!3582 (singletonSeq!528 (h!14535 (t!94490 lt!320749))))))))

(assert (=> d!263943 (= lt!321162 (printTailRec!464 thiss!20117 (singletonSeq!528 (h!14535 (t!94490 lt!320749))) 0 (BalanceConc!6069 Empty!3027)))))

(assert (=> d!263943 (= (print!549 thiss!20117 (singletonSeq!528 (h!14535 (t!94490 lt!320749)))) lt!321162)))

(declare-fun bs!230582 () Bool)

(assert (= bs!230582 d!263943))

(declare-fun m!1083825 () Bool)

(assert (=> bs!230582 m!1083825))

(assert (=> bs!230582 m!1082193))

(assert (=> bs!230582 m!1082197))

(assert (=> bs!230582 m!1082197))

(declare-fun m!1083827 () Bool)

(assert (=> bs!230582 m!1083827))

(assert (=> bs!230582 m!1082193))

(declare-fun m!1083829 () Bool)

(assert (=> bs!230582 m!1083829))

(assert (=> d!263509 d!263943))

(declare-fun d!263945 () Bool)

(assert (=> d!263945 (= (list!3582 (_1!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 (h!14535 (t!94490 lt!320749))))))) (list!3586 (c!137686 (_1!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 (h!14535 (t!94490 lt!320749)))))))))))

(declare-fun bs!230583 () Bool)

(assert (= bs!230583 d!263945))

(declare-fun m!1083831 () Bool)

(assert (=> bs!230583 m!1083831))

(assert (=> d!263509 d!263945))

(declare-fun bs!230584 () Bool)

(declare-fun d!263947 () Bool)

(assert (= bs!230584 (and d!263947 d!263579)))

(declare-fun lambda!25254 () Int)

(assert (=> bs!230584 (= lambda!25254 lambda!25230)))

(declare-fun bs!230585 () Bool)

(assert (= bs!230585 (and d!263947 b!846787)))

(assert (=> bs!230585 (not (= lambda!25254 lambda!25220))))

(declare-fun bs!230586 () Bool)

(assert (= bs!230586 (and d!263947 d!263917)))

(assert (=> bs!230586 (= lambda!25254 lambda!25250)))

(declare-fun bs!230587 () Bool)

(assert (= bs!230587 (and d!263947 d!263525)))

(assert (=> bs!230587 (= lambda!25254 lambda!25228)))

(declare-fun bs!230588 () Bool)

(assert (= bs!230588 (and d!263947 d!263489)))

(assert (=> bs!230588 (= lambda!25254 lambda!25226)))

(declare-fun b!847567 () Bool)

(declare-fun e!557775 () Bool)

(assert (=> b!847567 (= e!557775 true)))

(declare-fun b!847566 () Bool)

(declare-fun e!557774 () Bool)

(assert (=> b!847566 (= e!557774 e!557775)))

(declare-fun b!847565 () Bool)

(declare-fun e!557773 () Bool)

(assert (=> b!847565 (= e!557773 e!557774)))

(assert (=> d!263947 e!557773))

(assert (= b!847566 b!847567))

(assert (= b!847565 b!847566))

(assert (= (and d!263947 ((_ is Cons!9135) rules!2621)) b!847565))

(assert (=> b!847567 (< (dynLambda!4236 order!5823 (toValue!2739 (transformation!1714 (h!14536 rules!2621)))) (dynLambda!4237 order!5825 lambda!25254))))

(assert (=> b!847567 (< (dynLambda!4238 order!5827 (toChars!2598 (transformation!1714 (h!14536 rules!2621)))) (dynLambda!4237 order!5825 lambda!25254))))

(assert (=> d!263947 true))

(declare-fun lt!321163 () Bool)

(assert (=> d!263947 (= lt!321163 (forall!2141 (t!94490 l!5107) lambda!25254))))

(declare-fun e!557772 () Bool)

(assert (=> d!263947 (= lt!321163 e!557772)))

(declare-fun res!387546 () Bool)

(assert (=> d!263947 (=> res!387546 e!557772)))

(assert (=> d!263947 (= res!387546 (not ((_ is Cons!9134) (t!94490 l!5107))))))

(assert (=> d!263947 (not (isEmpty!5390 rules!2621))))

(assert (=> d!263947 (= (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 (t!94490 l!5107)) lt!321163)))

(declare-fun b!847563 () Bool)

(declare-fun e!557771 () Bool)

(assert (=> b!847563 (= e!557772 e!557771)))

(declare-fun res!387547 () Bool)

(assert (=> b!847563 (=> (not res!387547) (not e!557771))))

(assert (=> b!847563 (= res!387547 (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 (t!94490 l!5107))))))

(declare-fun b!847564 () Bool)

(assert (=> b!847564 (= e!557771 (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 (t!94490 (t!94490 l!5107))))))

(assert (= (and d!263947 (not res!387546)) b!847563))

(assert (= (and b!847563 res!387547) b!847564))

(declare-fun m!1083833 () Bool)

(assert (=> d!263947 m!1083833))

(assert (=> d!263947 m!1082077))

(declare-fun m!1083835 () Bool)

(assert (=> b!847563 m!1083835))

(declare-fun m!1083837 () Bool)

(assert (=> b!847564 m!1083837))

(assert (=> b!846889 d!263947))

(declare-fun d!263949 () Bool)

(declare-fun res!387551 () Bool)

(declare-fun e!557780 () Bool)

(assert (=> d!263949 (=> res!387551 e!557780)))

(assert (=> d!263949 (= res!387551 (or (not ((_ is Cons!9134) (Cons!9134 (h!14535 (t!94490 lt!320741)) (t!94490 (t!94490 lt!320741))))) (not ((_ is Cons!9134) (t!94490 (Cons!9134 (h!14535 (t!94490 lt!320741)) (t!94490 (t!94490 lt!320741))))))))))

(assert (=> d!263949 (= (tokensListTwoByTwoPredicateSeparableList!38 thiss!20117 (Cons!9134 (h!14535 (t!94490 lt!320741)) (t!94490 (t!94490 lt!320741))) rules!2621) e!557780)))

(declare-fun b!847571 () Bool)

(declare-fun e!557779 () Bool)

(assert (=> b!847571 (= e!557780 e!557779)))

(declare-fun res!387552 () Bool)

(assert (=> b!847571 (=> (not res!387552) (not e!557779))))

(assert (=> b!847571 (= res!387552 (separableTokensPredicate!56 thiss!20117 (h!14535 (Cons!9134 (h!14535 (t!94490 lt!320741)) (t!94490 (t!94490 lt!320741)))) (h!14535 (t!94490 (Cons!9134 (h!14535 (t!94490 lt!320741)) (t!94490 (t!94490 lt!320741))))) rules!2621))))

(declare-fun lt!321169 () Unit!13599)

(declare-fun Unit!13613 () Unit!13599)

(assert (=> b!847571 (= lt!321169 Unit!13613)))

(assert (=> b!847571 (> (size!7613 (charsOf!985 (h!14535 (t!94490 (Cons!9134 (h!14535 (t!94490 lt!320741)) (t!94490 (t!94490 lt!320741))))))) 0)))

(declare-fun lt!321167 () Unit!13599)

(declare-fun Unit!13614 () Unit!13599)

(assert (=> b!847571 (= lt!321167 Unit!13614)))

(assert (=> b!847571 (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 (t!94490 (Cons!9134 (h!14535 (t!94490 lt!320741)) (t!94490 (t!94490 lt!320741))))))))

(declare-fun lt!321170 () Unit!13599)

(declare-fun Unit!13615 () Unit!13599)

(assert (=> b!847571 (= lt!321170 Unit!13615)))

(assert (=> b!847571 (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 (Cons!9134 (h!14535 (t!94490 lt!320741)) (t!94490 (t!94490 lt!320741)))))))

(declare-fun lt!321173 () Unit!13599)

(declare-fun lt!321172 () Unit!13599)

(assert (=> b!847571 (= lt!321173 lt!321172)))

(assert (=> b!847571 (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 (t!94490 (Cons!9134 (h!14535 (t!94490 lt!320741)) (t!94490 (t!94490 lt!320741))))))))

(assert (=> b!847571 (= lt!321172 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!226 thiss!20117 rules!2621 (Cons!9134 (h!14535 (t!94490 lt!320741)) (t!94490 (t!94490 lt!320741))) (h!14535 (t!94490 (Cons!9134 (h!14535 (t!94490 lt!320741)) (t!94490 (t!94490 lt!320741)))))))))

(declare-fun lt!321168 () Unit!13599)

(declare-fun lt!321171 () Unit!13599)

(assert (=> b!847571 (= lt!321168 lt!321171)))

(assert (=> b!847571 (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 (Cons!9134 (h!14535 (t!94490 lt!320741)) (t!94490 (t!94490 lt!320741)))))))

(assert (=> b!847571 (= lt!321171 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!226 thiss!20117 rules!2621 (Cons!9134 (h!14535 (t!94490 lt!320741)) (t!94490 (t!94490 lt!320741))) (h!14535 (Cons!9134 (h!14535 (t!94490 lt!320741)) (t!94490 (t!94490 lt!320741))))))))

(declare-fun b!847572 () Bool)

(assert (=> b!847572 (= e!557779 (tokensListTwoByTwoPredicateSeparableList!38 thiss!20117 (Cons!9134 (h!14535 (t!94490 (Cons!9134 (h!14535 (t!94490 lt!320741)) (t!94490 (t!94490 lt!320741))))) (t!94490 (t!94490 (Cons!9134 (h!14535 (t!94490 lt!320741)) (t!94490 (t!94490 lt!320741)))))) rules!2621))))

(assert (= (and d!263949 (not res!387551)) b!847571))

(assert (= (and b!847571 res!387552) b!847572))

(declare-fun m!1083845 () Bool)

(assert (=> b!847571 m!1083845))

(declare-fun m!1083847 () Bool)

(assert (=> b!847571 m!1083847))

(declare-fun m!1083849 () Bool)

(assert (=> b!847571 m!1083849))

(declare-fun m!1083851 () Bool)

(assert (=> b!847571 m!1083851))

(declare-fun m!1083853 () Bool)

(assert (=> b!847571 m!1083853))

(declare-fun m!1083855 () Bool)

(assert (=> b!847571 m!1083855))

(assert (=> b!847571 m!1083853))

(declare-fun m!1083857 () Bool)

(assert (=> b!847571 m!1083857))

(declare-fun m!1083859 () Bool)

(assert (=> b!847572 m!1083859))

(assert (=> b!847153 d!263949))

(declare-fun d!263953 () Bool)

(declare-fun res!387553 () Bool)

(declare-fun e!557781 () Bool)

(assert (=> d!263953 (=> res!387553 e!557781)))

(assert (=> d!263953 (= res!387553 ((_ is Nil!9134) lt!320749))))

(assert (=> d!263953 (= (forall!2141 lt!320749 lambda!25228) e!557781)))

(declare-fun b!847573 () Bool)

(declare-fun e!557782 () Bool)

(assert (=> b!847573 (= e!557781 e!557782)))

(declare-fun res!387554 () Bool)

(assert (=> b!847573 (=> (not res!387554) (not e!557782))))

(assert (=> b!847573 (= res!387554 (dynLambda!4239 lambda!25228 (h!14535 lt!320749)))))

(declare-fun b!847574 () Bool)

(assert (=> b!847574 (= e!557782 (forall!2141 (t!94490 lt!320749) lambda!25228))))

(assert (= (and d!263953 (not res!387553)) b!847573))

(assert (= (and b!847573 res!387554) b!847574))

(declare-fun b_lambda!28053 () Bool)

(assert (=> (not b_lambda!28053) (not b!847573)))

(declare-fun m!1083861 () Bool)

(assert (=> b!847573 m!1083861))

(declare-fun m!1083863 () Bool)

(assert (=> b!847574 m!1083863))

(assert (=> d!263525 d!263953))

(assert (=> d!263525 d!263619))

(declare-fun d!263955 () Bool)

(declare-fun c!137758 () Bool)

(assert (=> d!263955 (= c!137758 ((_ is Node!3027) (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (value!55548 (h!14535 l!5107))))))))

(declare-fun e!557790 () Bool)

(assert (=> d!263955 (= (inv!11614 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (value!55548 (h!14535 l!5107))))) e!557790)))

(declare-fun b!847584 () Bool)

(declare-fun inv!11618 (Conc!3027) Bool)

(assert (=> b!847584 (= e!557790 (inv!11618 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (value!55548 (h!14535 l!5107))))))))

(declare-fun b!847585 () Bool)

(declare-fun e!557791 () Bool)

(assert (=> b!847585 (= e!557790 e!557791)))

(declare-fun res!387560 () Bool)

(assert (=> b!847585 (= res!387560 (not ((_ is Leaf!4472) (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (value!55548 (h!14535 l!5107)))))))))

(assert (=> b!847585 (=> res!387560 e!557791)))

(declare-fun b!847586 () Bool)

(declare-fun inv!11619 (Conc!3027) Bool)

(assert (=> b!847586 (= e!557791 (inv!11619 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (value!55548 (h!14535 l!5107))))))))

(assert (= (and d!263955 c!137758) b!847584))

(assert (= (and d!263955 (not c!137758)) b!847585))

(assert (= (and b!847585 (not res!387560)) b!847586))

(declare-fun m!1083871 () Bool)

(assert (=> b!847584 m!1083871))

(declare-fun m!1083873 () Bool)

(assert (=> b!847586 m!1083873))

(assert (=> b!847041 d!263955))

(declare-fun bs!230589 () Bool)

(declare-fun d!263959 () Bool)

(assert (= bs!230589 (and d!263959 d!263579)))

(declare-fun lambda!25255 () Int)

(assert (=> bs!230589 (= lambda!25255 lambda!25230)))

(declare-fun bs!230590 () Bool)

(assert (= bs!230590 (and d!263959 b!846787)))

(assert (=> bs!230590 (not (= lambda!25255 lambda!25220))))

(declare-fun bs!230591 () Bool)

(assert (= bs!230591 (and d!263959 d!263917)))

(assert (=> bs!230591 (= lambda!25255 lambda!25250)))

(declare-fun bs!230592 () Bool)

(assert (= bs!230592 (and d!263959 d!263525)))

(assert (=> bs!230592 (= lambda!25255 lambda!25228)))

(declare-fun bs!230593 () Bool)

(assert (= bs!230593 (and d!263959 d!263489)))

(assert (=> bs!230593 (= lambda!25255 lambda!25226)))

(declare-fun bs!230594 () Bool)

(assert (= bs!230594 (and d!263959 d!263947)))

(assert (=> bs!230594 (= lambda!25255 lambda!25254)))

(declare-fun b!847593 () Bool)

(declare-fun e!557797 () Bool)

(assert (=> b!847593 (= e!557797 true)))

(declare-fun b!847592 () Bool)

(declare-fun e!557796 () Bool)

(assert (=> b!847592 (= e!557796 e!557797)))

(declare-fun b!847591 () Bool)

(declare-fun e!557795 () Bool)

(assert (=> b!847591 (= e!557795 e!557796)))

(assert (=> d!263959 e!557795))

(assert (= b!847592 b!847593))

(assert (= b!847591 b!847592))

(assert (= (and d!263959 ((_ is Cons!9135) rules!2621)) b!847591))

(assert (=> b!847593 (< (dynLambda!4236 order!5823 (toValue!2739 (transformation!1714 (h!14536 rules!2621)))) (dynLambda!4237 order!5825 lambda!25255))))

(assert (=> b!847593 (< (dynLambda!4238 order!5827 (toChars!2598 (transformation!1714 (h!14536 rules!2621)))) (dynLambda!4237 order!5825 lambda!25255))))

(assert (=> d!263959 true))

(declare-fun lt!321177 () Bool)

(assert (=> d!263959 (= lt!321177 (forall!2141 (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297) lambda!25255))))

(declare-fun e!557794 () Bool)

(assert (=> d!263959 (= lt!321177 e!557794)))

(declare-fun res!387561 () Bool)

(assert (=> d!263959 (=> res!387561 e!557794)))

(assert (=> d!263959 (= res!387561 (not ((_ is Cons!9134) (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297))))))

(assert (=> d!263959 (not (isEmpty!5390 rules!2621))))

(assert (=> d!263959 (= (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297)) lt!321177)))

(declare-fun b!847589 () Bool)

(declare-fun e!557793 () Bool)

(assert (=> b!847589 (= e!557794 e!557793)))

(declare-fun res!387562 () Bool)

(assert (=> b!847589 (=> (not res!387562) (not e!557793))))

(assert (=> b!847589 (= res!387562 (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297))))))

(declare-fun b!847590 () Bool)

(assert (=> b!847590 (= e!557793 (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 (t!94490 (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297))))))

(assert (= (and d!263959 (not res!387561)) b!847589))

(assert (= (and b!847589 res!387562) b!847590))

(assert (=> d!263959 m!1082057))

(declare-fun m!1083883 () Bool)

(assert (=> d!263959 m!1083883))

(assert (=> d!263959 m!1082077))

(declare-fun m!1083885 () Bool)

(assert (=> b!847589 m!1083885))

(declare-fun m!1083887 () Bool)

(assert (=> b!847590 m!1083887))

(assert (=> d!263585 d!263959))

(assert (=> d!263585 d!263567))

(declare-fun d!263963 () Bool)

(assert (=> d!263963 (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297))))

(assert (=> d!263963 true))

(declare-fun _$32!307 () Unit!13599)

(assert (=> d!263963 (= (choose!4999 thiss!20117 rules!2621 lt!320744 separatorToken!297) _$32!307)))

(declare-fun bs!230615 () Bool)

(assert (= bs!230615 d!263963))

(assert (=> bs!230615 m!1082057))

(assert (=> bs!230615 m!1082057))

(assert (=> bs!230615 m!1082525))

(assert (=> d!263585 d!263963))

(assert (=> d!263585 d!263619))

(declare-fun d!264013 () Bool)

(assert (=> d!264013 true))

(declare-fun order!5833 () Int)

(declare-fun lambda!25264 () Int)

(declare-fun dynLambda!4241 (Int Int) Int)

(assert (=> d!264013 (< (dynLambda!4236 order!5823 (toValue!2739 (transformation!1714 (rule!3137 separatorToken!297)))) (dynLambda!4241 order!5833 lambda!25264))))

(declare-fun Forall2!315 (Int) Bool)

(assert (=> d!264013 (= (equivClasses!631 (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (toValue!2739 (transformation!1714 (rule!3137 separatorToken!297)))) (Forall2!315 lambda!25264))))

(declare-fun bs!230616 () Bool)

(assert (= bs!230616 d!264013))

(declare-fun m!1084029 () Bool)

(assert (=> bs!230616 m!1084029))

(assert (=> b!847154 d!264013))

(declare-fun b!847642 () Bool)

(declare-fun e!557827 () Bool)

(declare-fun call!50489 () Bool)

(assert (=> b!847642 (= e!557827 call!50489)))

(declare-fun b!847643 () Bool)

(declare-fun e!557829 () Bool)

(declare-fun e!557828 () Bool)

(assert (=> b!847643 (= e!557829 e!557828)))

(declare-fun res!387584 () Bool)

(assert (=> b!847643 (= res!387584 (not ((_ is Cons!9135) rules!2621)))))

(assert (=> b!847643 (=> res!387584 e!557828)))

(declare-fun bm!50484 () Bool)

(assert (=> bm!50484 (= call!50489 (ruleDisjointCharsFromAllFromOtherType!231 (h!14536 rules!2621) (t!94491 rules!2621)))))

(declare-fun b!847644 () Bool)

(assert (=> b!847644 (= e!557829 e!557827)))

(declare-fun res!387585 () Bool)

(declare-fun rulesUseDisjointChars!111 (Rule!3228 Rule!3228) Bool)

(assert (=> b!847644 (= res!387585 (rulesUseDisjointChars!111 (h!14536 rules!2621) (h!14536 rules!2621)))))

(assert (=> b!847644 (=> (not res!387585) (not e!557827))))

(declare-fun d!264015 () Bool)

(declare-fun c!137768 () Bool)

(assert (=> d!264015 (= c!137768 (and ((_ is Cons!9135) rules!2621) (not (= (isSeparator!1714 (h!14536 rules!2621)) (isSeparator!1714 (h!14536 rules!2621))))))))

(assert (=> d!264015 (= (ruleDisjointCharsFromAllFromOtherType!231 (h!14536 rules!2621) rules!2621) e!557829)))

(declare-fun b!847645 () Bool)

(assert (=> b!847645 (= e!557828 call!50489)))

(assert (= (and d!264015 c!137768) b!847644))

(assert (= (and d!264015 (not c!137768)) b!847643))

(assert (= (and b!847644 res!387585) b!847642))

(assert (= (and b!847643 (not res!387584)) b!847645))

(assert (= (or b!847642 b!847645) bm!50484))

(declare-fun m!1084031 () Bool)

(assert (=> bm!50484 m!1084031))

(declare-fun m!1084033 () Bool)

(assert (=> b!847644 m!1084033))

(assert (=> b!846907 d!264015))

(declare-fun d!264017 () Bool)

(declare-fun c!137769 () Bool)

(assert (=> d!264017 (= c!137769 ((_ is Cons!9134) ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 lt!320744) separatorToken!297) separatorToken!297)))))

(declare-fun e!557830 () List!9149)

(assert (=> d!264017 (= (printList!468 thiss!20117 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 lt!320744) separatorToken!297) separatorToken!297)) e!557830)))

(declare-fun b!847646 () Bool)

(assert (=> b!847646 (= e!557830 (++!2364 (list!3581 (charsOf!985 (h!14535 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 lt!320744) separatorToken!297) separatorToken!297)))) (printList!468 thiss!20117 (t!94490 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 lt!320744) separatorToken!297) separatorToken!297)))))))

(declare-fun b!847647 () Bool)

(assert (=> b!847647 (= e!557830 Nil!9133)))

(assert (= (and d!264017 c!137769) b!847646))

(assert (= (and d!264017 (not c!137769)) b!847647))

(declare-fun m!1084035 () Bool)

(assert (=> b!847646 m!1084035))

(assert (=> b!847646 m!1084035))

(declare-fun m!1084037 () Bool)

(assert (=> b!847646 m!1084037))

(declare-fun m!1084039 () Bool)

(assert (=> b!847646 m!1084039))

(assert (=> b!847646 m!1084037))

(assert (=> b!847646 m!1084039))

(declare-fun m!1084041 () Bool)

(assert (=> b!847646 m!1084041))

(assert (=> b!847037 d!264017))

(declare-fun d!264019 () Bool)

(assert (=> d!264019 (= ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 lt!320744) separatorToken!297) separatorToken!297) (Cons!9134 separatorToken!297 (withSeparatorTokenList!46 thiss!20117 (t!94490 lt!320744) separatorToken!297)))))

(assert (=> b!847037 d!264019))

(declare-fun b!847648 () Bool)

(declare-fun e!557832 () List!9149)

(declare-fun lt!321200 () List!9150)

(assert (=> b!847648 (= e!557832 (++!2364 (list!3581 (charsOf!985 (h!14535 lt!321200))) (printList!468 thiss!20117 (t!94490 lt!321200))))))

(declare-fun b!847649 () Bool)

(declare-fun e!557836 () List!9149)

(declare-fun lt!321204 () List!9150)

(assert (=> b!847649 (= e!557836 (++!2364 (list!3581 (charsOf!985 (h!14535 lt!321204))) (printList!468 thiss!20117 (t!94490 lt!321204))))))

(declare-fun b!847650 () Bool)

(assert (=> b!847650 (= e!557832 Nil!9133)))

(declare-fun d!264021 () Bool)

(declare-fun lt!321199 () List!9150)

(assert (=> d!264021 (= (printList!468 thiss!20117 lt!321199) (printWithSeparatorTokenList!26 thiss!20117 (t!94490 lt!320744) separatorToken!297))))

(declare-fun e!557835 () List!9150)

(assert (=> d!264021 (= lt!321199 e!557835)))

(declare-fun c!137772 () Bool)

(assert (=> d!264021 (= c!137772 ((_ is Cons!9134) (t!94490 lt!320744)))))

(declare-fun e!557833 () Bool)

(assert (=> d!264021 e!557833))

(declare-fun res!387589 () Bool)

(assert (=> d!264021 (=> (not res!387589) (not e!557833))))

(assert (=> d!264021 (= res!387589 (isSeparator!1714 (rule!3137 separatorToken!297)))))

(assert (=> d!264021 (= (withSeparatorTokenList!46 thiss!20117 (t!94490 lt!320744) separatorToken!297) lt!321199)))

(declare-fun b!847651 () Bool)

(assert (=> b!847651 (= e!557836 Nil!9133)))

(declare-fun e!557834 () Bool)

(declare-fun b!847652 () Bool)

(assert (=> b!847652 (= e!557834 (= (printList!468 thiss!20117 ($colon$colon!81 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 (t!94490 lt!320744)) separatorToken!297) separatorToken!297) (h!14535 (t!94490 lt!320744)))) e!557836))))

(declare-fun c!137770 () Bool)

(assert (=> b!847652 (= c!137770 ((_ is Cons!9134) lt!321204))))

(assert (=> b!847652 (= lt!321204 ($colon$colon!81 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 (t!94490 lt!320744)) separatorToken!297) separatorToken!297) (h!14535 (t!94490 lt!320744))))))

(declare-fun b!847653 () Bool)

(assert (=> b!847653 (= e!557835 ($colon$colon!81 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 (t!94490 lt!320744)) separatorToken!297) separatorToken!297) (h!14535 (t!94490 lt!320744))))))

(declare-fun lt!321202 () List!9149)

(assert (=> b!847653 (= lt!321202 (list!3581 (charsOf!985 (h!14535 (t!94490 lt!320744)))))))

(declare-fun lt!321201 () List!9149)

(assert (=> b!847653 (= lt!321201 (list!3581 (charsOf!985 separatorToken!297)))))

(declare-fun lt!321203 () List!9149)

(assert (=> b!847653 (= lt!321203 (printList!468 thiss!20117 (withSeparatorTokenList!46 thiss!20117 (t!94490 (t!94490 lt!320744)) separatorToken!297)))))

(declare-fun lt!321206 () Unit!13599)

(assert (=> b!847653 (= lt!321206 (lemmaConcatAssociativity!743 lt!321202 lt!321201 lt!321203))))

(assert (=> b!847653 (= (++!2364 (++!2364 lt!321202 lt!321201) lt!321203) (++!2364 lt!321202 (++!2364 lt!321201 lt!321203)))))

(declare-fun lt!321205 () Unit!13599)

(assert (=> b!847653 (= lt!321205 lt!321206)))

(declare-fun b!847654 () Bool)

(assert (=> b!847654 (= e!557835 Nil!9134)))

(declare-fun b!847655 () Bool)

(declare-fun res!387586 () Bool)

(assert (=> b!847655 (=> (not res!387586) (not e!557833))))

(assert (=> b!847655 (= res!387586 e!557834)))

(declare-fun res!387588 () Bool)

(assert (=> b!847655 (=> res!387588 e!557834)))

(assert (=> b!847655 (= res!387588 (not ((_ is Cons!9134) (t!94490 lt!320744))))))

(declare-fun b!847656 () Bool)

(declare-fun e!557831 () Bool)

(assert (=> b!847656 (= e!557831 (= (printList!468 thiss!20117 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 (t!94490 lt!320744)) separatorToken!297) separatorToken!297)) e!557832))))

(declare-fun c!137771 () Bool)

(assert (=> b!847656 (= c!137771 ((_ is Cons!9134) lt!321200))))

(assert (=> b!847656 (= lt!321200 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 (t!94490 lt!320744)) separatorToken!297) separatorToken!297))))

(declare-fun b!847657 () Bool)

(assert (=> b!847657 (= e!557833 e!557831)))

(declare-fun res!387587 () Bool)

(assert (=> b!847657 (=> res!387587 e!557831)))

(assert (=> b!847657 (= res!387587 (not ((_ is Cons!9134) (t!94490 lt!320744))))))

(assert (= (and d!264021 res!387589) b!847655))

(assert (= (and b!847655 (not res!387588)) b!847652))

(assert (= (and b!847652 c!137770) b!847649))

(assert (= (and b!847652 (not c!137770)) b!847651))

(assert (= (and b!847655 res!387586) b!847657))

(assert (= (and b!847657 (not res!387587)) b!847656))

(assert (= (and b!847656 c!137771) b!847648))

(assert (= (and b!847656 (not c!137771)) b!847650))

(assert (= (and d!264021 c!137772) b!847653))

(assert (= (and d!264021 (not c!137772)) b!847654))

(declare-fun m!1084043 () Bool)

(assert (=> b!847648 m!1084043))

(assert (=> b!847648 m!1084043))

(declare-fun m!1084045 () Bool)

(assert (=> b!847648 m!1084045))

(declare-fun m!1084047 () Bool)

(assert (=> b!847648 m!1084047))

(assert (=> b!847648 m!1084045))

(assert (=> b!847648 m!1084047))

(declare-fun m!1084049 () Bool)

(assert (=> b!847648 m!1084049))

(declare-fun m!1084051 () Bool)

(assert (=> b!847652 m!1084051))

(assert (=> b!847652 m!1084051))

(declare-fun m!1084053 () Bool)

(assert (=> b!847652 m!1084053))

(assert (=> b!847652 m!1084053))

(declare-fun m!1084055 () Bool)

(assert (=> b!847652 m!1084055))

(assert (=> b!847652 m!1084055))

(declare-fun m!1084057 () Bool)

(assert (=> b!847652 m!1084057))

(declare-fun m!1084059 () Bool)

(assert (=> b!847653 m!1084059))

(declare-fun m!1084061 () Bool)

(assert (=> b!847653 m!1084061))

(declare-fun m!1084063 () Bool)

(assert (=> b!847653 m!1084063))

(declare-fun m!1084065 () Bool)

(assert (=> b!847653 m!1084065))

(assert (=> b!847653 m!1084063))

(assert (=> b!847653 m!1082279))

(declare-fun m!1084067 () Bool)

(assert (=> b!847653 m!1084067))

(declare-fun m!1084069 () Bool)

(assert (=> b!847653 m!1084069))

(assert (=> b!847653 m!1084051))

(assert (=> b!847653 m!1084051))

(assert (=> b!847653 m!1084053))

(assert (=> b!847653 m!1082279))

(assert (=> b!847653 m!1082285))

(assert (=> b!847653 m!1084053))

(assert (=> b!847653 m!1084055))

(assert (=> b!847653 m!1084059))

(assert (=> b!847653 m!1084067))

(declare-fun m!1084071 () Bool)

(assert (=> b!847653 m!1084071))

(assert (=> b!847653 m!1084051))

(declare-fun m!1084073 () Bool)

(assert (=> b!847653 m!1084073))

(declare-fun m!1084075 () Bool)

(assert (=> b!847649 m!1084075))

(assert (=> b!847649 m!1084075))

(declare-fun m!1084077 () Bool)

(assert (=> b!847649 m!1084077))

(declare-fun m!1084079 () Bool)

(assert (=> b!847649 m!1084079))

(assert (=> b!847649 m!1084077))

(assert (=> b!847649 m!1084079))

(declare-fun m!1084081 () Bool)

(assert (=> b!847649 m!1084081))

(assert (=> b!847656 m!1084051))

(assert (=> b!847656 m!1084051))

(assert (=> b!847656 m!1084053))

(assert (=> b!847656 m!1084053))

(declare-fun m!1084083 () Bool)

(assert (=> b!847656 m!1084083))

(declare-fun m!1084085 () Bool)

(assert (=> d!264021 m!1084085))

(declare-fun m!1084087 () Bool)

(assert (=> d!264021 m!1084087))

(assert (=> b!847037 d!264021))

(declare-fun d!264023 () Bool)

(assert (=> d!264023 (= (inv!11615 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (value!55548 (h!14535 l!5107)))) (isBalanced!819 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (value!55548 (h!14535 l!5107))))))))

(declare-fun bs!230617 () Bool)

(assert (= bs!230617 d!264023))

(declare-fun m!1084089 () Bool)

(assert (=> bs!230617 m!1084089))

(assert (=> tb!58787 d!264023))

(assert (=> b!847140 d!263575))

(declare-fun c!137773 () Bool)

(declare-fun d!264025 () Bool)

(assert (=> d!264025 (= c!137773 ((_ is Cons!9134) ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 l!5107) separatorToken!297) separatorToken!297)))))

(declare-fun e!557837 () List!9149)

(assert (=> d!264025 (= (printList!468 thiss!20117 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 l!5107) separatorToken!297) separatorToken!297)) e!557837)))

(declare-fun b!847658 () Bool)

(assert (=> b!847658 (= e!557837 (++!2364 (list!3581 (charsOf!985 (h!14535 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 l!5107) separatorToken!297) separatorToken!297)))) (printList!468 thiss!20117 (t!94490 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 l!5107) separatorToken!297) separatorToken!297)))))))

(declare-fun b!847659 () Bool)

(assert (=> b!847659 (= e!557837 Nil!9133)))

(assert (= (and d!264025 c!137773) b!847658))

(assert (= (and d!264025 (not c!137773)) b!847659))

(declare-fun m!1084091 () Bool)

(assert (=> b!847658 m!1084091))

(assert (=> b!847658 m!1084091))

(declare-fun m!1084093 () Bool)

(assert (=> b!847658 m!1084093))

(declare-fun m!1084095 () Bool)

(assert (=> b!847658 m!1084095))

(assert (=> b!847658 m!1084093))

(assert (=> b!847658 m!1084095))

(declare-fun m!1084097 () Bool)

(assert (=> b!847658 m!1084097))

(assert (=> b!846968 d!264025))

(declare-fun d!264027 () Bool)

(assert (=> d!264027 (= ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 l!5107) separatorToken!297) separatorToken!297) (Cons!9134 separatorToken!297 (withSeparatorTokenList!46 thiss!20117 (t!94490 l!5107) separatorToken!297)))))

(assert (=> b!846968 d!264027))

(declare-fun b!847660 () Bool)

(declare-fun e!557839 () List!9149)

(declare-fun lt!321208 () List!9150)

(assert (=> b!847660 (= e!557839 (++!2364 (list!3581 (charsOf!985 (h!14535 lt!321208))) (printList!468 thiss!20117 (t!94490 lt!321208))))))

(declare-fun b!847661 () Bool)

(declare-fun e!557843 () List!9149)

(declare-fun lt!321212 () List!9150)

(assert (=> b!847661 (= e!557843 (++!2364 (list!3581 (charsOf!985 (h!14535 lt!321212))) (printList!468 thiss!20117 (t!94490 lt!321212))))))

(declare-fun b!847662 () Bool)

(assert (=> b!847662 (= e!557839 Nil!9133)))

(declare-fun lt!321207 () List!9150)

(declare-fun d!264029 () Bool)

(assert (=> d!264029 (= (printList!468 thiss!20117 lt!321207) (printWithSeparatorTokenList!26 thiss!20117 (t!94490 l!5107) separatorToken!297))))

(declare-fun e!557842 () List!9150)

(assert (=> d!264029 (= lt!321207 e!557842)))

(declare-fun c!137776 () Bool)

(assert (=> d!264029 (= c!137776 ((_ is Cons!9134) (t!94490 l!5107)))))

(declare-fun e!557840 () Bool)

(assert (=> d!264029 e!557840))

(declare-fun res!387593 () Bool)

(assert (=> d!264029 (=> (not res!387593) (not e!557840))))

(assert (=> d!264029 (= res!387593 (isSeparator!1714 (rule!3137 separatorToken!297)))))

(assert (=> d!264029 (= (withSeparatorTokenList!46 thiss!20117 (t!94490 l!5107) separatorToken!297) lt!321207)))

(declare-fun b!847663 () Bool)

(assert (=> b!847663 (= e!557843 Nil!9133)))

(declare-fun b!847664 () Bool)

(declare-fun e!557841 () Bool)

(assert (=> b!847664 (= e!557841 (= (printList!468 thiss!20117 ($colon$colon!81 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 (t!94490 l!5107)) separatorToken!297) separatorToken!297) (h!14535 (t!94490 l!5107)))) e!557843))))

(declare-fun c!137774 () Bool)

(assert (=> b!847664 (= c!137774 ((_ is Cons!9134) lt!321212))))

(assert (=> b!847664 (= lt!321212 ($colon$colon!81 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 (t!94490 l!5107)) separatorToken!297) separatorToken!297) (h!14535 (t!94490 l!5107))))))

(declare-fun b!847665 () Bool)

(assert (=> b!847665 (= e!557842 ($colon$colon!81 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 (t!94490 l!5107)) separatorToken!297) separatorToken!297) (h!14535 (t!94490 l!5107))))))

(declare-fun lt!321210 () List!9149)

(assert (=> b!847665 (= lt!321210 (list!3581 (charsOf!985 (h!14535 (t!94490 l!5107)))))))

(declare-fun lt!321209 () List!9149)

(assert (=> b!847665 (= lt!321209 (list!3581 (charsOf!985 separatorToken!297)))))

(declare-fun lt!321211 () List!9149)

(assert (=> b!847665 (= lt!321211 (printList!468 thiss!20117 (withSeparatorTokenList!46 thiss!20117 (t!94490 (t!94490 l!5107)) separatorToken!297)))))

(declare-fun lt!321214 () Unit!13599)

(assert (=> b!847665 (= lt!321214 (lemmaConcatAssociativity!743 lt!321210 lt!321209 lt!321211))))

(assert (=> b!847665 (= (++!2364 (++!2364 lt!321210 lt!321209) lt!321211) (++!2364 lt!321210 (++!2364 lt!321209 lt!321211)))))

(declare-fun lt!321213 () Unit!13599)

(assert (=> b!847665 (= lt!321213 lt!321214)))

(declare-fun b!847666 () Bool)

(assert (=> b!847666 (= e!557842 Nil!9134)))

(declare-fun b!847667 () Bool)

(declare-fun res!387590 () Bool)

(assert (=> b!847667 (=> (not res!387590) (not e!557840))))

(assert (=> b!847667 (= res!387590 e!557841)))

(declare-fun res!387592 () Bool)

(assert (=> b!847667 (=> res!387592 e!557841)))

(assert (=> b!847667 (= res!387592 (not ((_ is Cons!9134) (t!94490 l!5107))))))

(declare-fun b!847668 () Bool)

(declare-fun e!557838 () Bool)

(assert (=> b!847668 (= e!557838 (= (printList!468 thiss!20117 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 (t!94490 l!5107)) separatorToken!297) separatorToken!297)) e!557839))))

(declare-fun c!137775 () Bool)

(assert (=> b!847668 (= c!137775 ((_ is Cons!9134) lt!321208))))

(assert (=> b!847668 (= lt!321208 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 (t!94490 l!5107)) separatorToken!297) separatorToken!297))))

(declare-fun b!847669 () Bool)

(assert (=> b!847669 (= e!557840 e!557838)))

(declare-fun res!387591 () Bool)

(assert (=> b!847669 (=> res!387591 e!557838)))

(assert (=> b!847669 (= res!387591 (not ((_ is Cons!9134) (t!94490 l!5107))))))

(assert (= (and d!264029 res!387593) b!847667))

(assert (= (and b!847667 (not res!387592)) b!847664))

(assert (= (and b!847664 c!137774) b!847661))

(assert (= (and b!847664 (not c!137774)) b!847663))

(assert (= (and b!847667 res!387590) b!847669))

(assert (= (and b!847669 (not res!387591)) b!847668))

(assert (= (and b!847668 c!137775) b!847660))

(assert (= (and b!847668 (not c!137775)) b!847662))

(assert (= (and d!264029 c!137776) b!847665))

(assert (= (and d!264029 (not c!137776)) b!847666))

(declare-fun m!1084099 () Bool)

(assert (=> b!847660 m!1084099))

(assert (=> b!847660 m!1084099))

(declare-fun m!1084101 () Bool)

(assert (=> b!847660 m!1084101))

(declare-fun m!1084103 () Bool)

(assert (=> b!847660 m!1084103))

(assert (=> b!847660 m!1084101))

(assert (=> b!847660 m!1084103))

(declare-fun m!1084105 () Bool)

(assert (=> b!847660 m!1084105))

(declare-fun m!1084107 () Bool)

(assert (=> b!847664 m!1084107))

(assert (=> b!847664 m!1084107))

(declare-fun m!1084109 () Bool)

(assert (=> b!847664 m!1084109))

(assert (=> b!847664 m!1084109))

(declare-fun m!1084111 () Bool)

(assert (=> b!847664 m!1084111))

(assert (=> b!847664 m!1084111))

(declare-fun m!1084113 () Bool)

(assert (=> b!847664 m!1084113))

(declare-fun m!1084115 () Bool)

(assert (=> b!847665 m!1084115))

(declare-fun m!1084117 () Bool)

(assert (=> b!847665 m!1084117))

(declare-fun m!1084119 () Bool)

(assert (=> b!847665 m!1084119))

(declare-fun m!1084121 () Bool)

(assert (=> b!847665 m!1084121))

(assert (=> b!847665 m!1084119))

(assert (=> b!847665 m!1082279))

(declare-fun m!1084123 () Bool)

(assert (=> b!847665 m!1084123))

(declare-fun m!1084125 () Bool)

(assert (=> b!847665 m!1084125))

(assert (=> b!847665 m!1084107))

(assert (=> b!847665 m!1084107))

(assert (=> b!847665 m!1084109))

(assert (=> b!847665 m!1082279))

(assert (=> b!847665 m!1082285))

(assert (=> b!847665 m!1084109))

(assert (=> b!847665 m!1084111))

(assert (=> b!847665 m!1084115))

(assert (=> b!847665 m!1084123))

(declare-fun m!1084127 () Bool)

(assert (=> b!847665 m!1084127))

(assert (=> b!847665 m!1084107))

(declare-fun m!1084129 () Bool)

(assert (=> b!847665 m!1084129))

(declare-fun m!1084131 () Bool)

(assert (=> b!847661 m!1084131))

(assert (=> b!847661 m!1084131))

(declare-fun m!1084133 () Bool)

(assert (=> b!847661 m!1084133))

(declare-fun m!1084135 () Bool)

(assert (=> b!847661 m!1084135))

(assert (=> b!847661 m!1084133))

(assert (=> b!847661 m!1084135))

(declare-fun m!1084137 () Bool)

(assert (=> b!847661 m!1084137))

(assert (=> b!847668 m!1084107))

(assert (=> b!847668 m!1084107))

(assert (=> b!847668 m!1084109))

(assert (=> b!847668 m!1084109))

(declare-fun m!1084139 () Bool)

(assert (=> b!847668 m!1084139))

(declare-fun m!1084141 () Bool)

(assert (=> d!264029 m!1084141))

(declare-fun m!1084143 () Bool)

(assert (=> d!264029 m!1084143))

(assert (=> b!846968 d!264029))

(declare-fun d!264031 () Bool)

(assert (=> d!264031 (= (isEmpty!5394 (originalCharacters!2270 separatorToken!297)) ((_ is Nil!9133) (originalCharacters!2270 separatorToken!297)))))

(assert (=> d!263487 d!264031))

(declare-fun d!264033 () Bool)

(declare-fun res!387594 () Bool)

(declare-fun e!557845 () Bool)

(assert (=> d!264033 (=> res!387594 e!557845)))

(assert (=> d!264033 (= res!387594 (or (not ((_ is Cons!9134) (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297))) (not ((_ is Cons!9134) (t!94490 (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297))))))))

(assert (=> d!264033 (= (tokensListTwoByTwoPredicateSeparableList!38 thiss!20117 (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297) rules!2621) e!557845)))

(declare-fun b!847670 () Bool)

(declare-fun e!557844 () Bool)

(assert (=> b!847670 (= e!557845 e!557844)))

(declare-fun res!387595 () Bool)

(assert (=> b!847670 (=> (not res!387595) (not e!557844))))

(assert (=> b!847670 (= res!387595 (separableTokensPredicate!56 thiss!20117 (h!14535 (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297)) (h!14535 (t!94490 (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297))) rules!2621))))

(declare-fun lt!321217 () Unit!13599)

(declare-fun Unit!13616 () Unit!13599)

(assert (=> b!847670 (= lt!321217 Unit!13616)))

(assert (=> b!847670 (> (size!7613 (charsOf!985 (h!14535 (t!94490 (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297))))) 0)))

(declare-fun lt!321215 () Unit!13599)

(declare-fun Unit!13617 () Unit!13599)

(assert (=> b!847670 (= lt!321215 Unit!13617)))

(assert (=> b!847670 (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 (t!94490 (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297))))))

(declare-fun lt!321218 () Unit!13599)

(declare-fun Unit!13618 () Unit!13599)

(assert (=> b!847670 (= lt!321218 Unit!13618)))

(assert (=> b!847670 (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297)))))

(declare-fun lt!321221 () Unit!13599)

(declare-fun lt!321220 () Unit!13599)

(assert (=> b!847670 (= lt!321221 lt!321220)))

(assert (=> b!847670 (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 (t!94490 (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297))))))

(assert (=> b!847670 (= lt!321220 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!226 thiss!20117 rules!2621 (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297) (h!14535 (t!94490 (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297)))))))

(declare-fun lt!321216 () Unit!13599)

(declare-fun lt!321219 () Unit!13599)

(assert (=> b!847670 (= lt!321216 lt!321219)))

(assert (=> b!847670 (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297)))))

(assert (=> b!847670 (= lt!321219 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!226 thiss!20117 rules!2621 (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297) (h!14535 (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297))))))

(declare-fun b!847671 () Bool)

(assert (=> b!847671 (= e!557844 (tokensListTwoByTwoPredicateSeparableList!38 thiss!20117 (Cons!9134 (h!14535 (t!94490 (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297))) (t!94490 (t!94490 (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297)))) rules!2621))))

(assert (= (and d!264033 (not res!387594)) b!847670))

(assert (= (and b!847670 res!387595) b!847671))

(assert (=> b!847670 m!1082057))

(declare-fun m!1084145 () Bool)

(assert (=> b!847670 m!1084145))

(assert (=> b!847670 m!1083885))

(declare-fun m!1084147 () Bool)

(assert (=> b!847670 m!1084147))

(assert (=> b!847670 m!1082057))

(declare-fun m!1084149 () Bool)

(assert (=> b!847670 m!1084149))

(declare-fun m!1084151 () Bool)

(assert (=> b!847670 m!1084151))

(declare-fun m!1084153 () Bool)

(assert (=> b!847670 m!1084153))

(assert (=> b!847670 m!1084151))

(declare-fun m!1084155 () Bool)

(assert (=> b!847670 m!1084155))

(declare-fun m!1084157 () Bool)

(assert (=> b!847671 m!1084157))

(assert (=> b!847142 d!264033))

(assert (=> b!847142 d!263567))

(assert (=> b!847142 d!263959))

(assert (=> b!847142 d!263585))

(declare-fun d!264035 () Bool)

(assert (=> d!264035 (= (inv!17 (value!55548 (h!14535 l!5107))) (= (charsToBigInt!1 (text!12908 (value!55548 (h!14535 l!5107)))) (value!55540 (value!55548 (h!14535 l!5107)))))))

(declare-fun bs!230618 () Bool)

(assert (= bs!230618 d!264035))

(declare-fun m!1084159 () Bool)

(assert (=> bs!230618 m!1084159))

(assert (=> b!847160 d!264035))

(declare-fun b!847675 () Bool)

(declare-fun lt!321222 () List!9149)

(declare-fun e!557846 () Bool)

(assert (=> b!847675 (= e!557846 (or (not (= (printList!468 thiss!20117 (t!94490 lt!320811)) Nil!9133)) (= lt!321222 (list!3581 (charsOf!985 (h!14535 lt!320811))))))))

(declare-fun b!847674 () Bool)

(declare-fun res!387596 () Bool)

(assert (=> b!847674 (=> (not res!387596) (not e!557846))))

(assert (=> b!847674 (= res!387596 (= (size!7610 lt!321222) (+ (size!7610 (list!3581 (charsOf!985 (h!14535 lt!320811)))) (size!7610 (printList!468 thiss!20117 (t!94490 lt!320811))))))))

(declare-fun d!264037 () Bool)

(assert (=> d!264037 e!557846))

(declare-fun res!387597 () Bool)

(assert (=> d!264037 (=> (not res!387597) (not e!557846))))

(assert (=> d!264037 (= res!387597 (= (content!1338 lt!321222) ((_ map or) (content!1338 (list!3581 (charsOf!985 (h!14535 lt!320811)))) (content!1338 (printList!468 thiss!20117 (t!94490 lt!320811))))))))

(declare-fun e!557847 () List!9149)

(assert (=> d!264037 (= lt!321222 e!557847)))

(declare-fun c!137777 () Bool)

(assert (=> d!264037 (= c!137777 ((_ is Nil!9133) (list!3581 (charsOf!985 (h!14535 lt!320811)))))))

(assert (=> d!264037 (= (++!2364 (list!3581 (charsOf!985 (h!14535 lt!320811))) (printList!468 thiss!20117 (t!94490 lt!320811))) lt!321222)))

(declare-fun b!847672 () Bool)

(assert (=> b!847672 (= e!557847 (printList!468 thiss!20117 (t!94490 lt!320811)))))

(declare-fun b!847673 () Bool)

(assert (=> b!847673 (= e!557847 (Cons!9133 (h!14534 (list!3581 (charsOf!985 (h!14535 lt!320811)))) (++!2364 (t!94489 (list!3581 (charsOf!985 (h!14535 lt!320811)))) (printList!468 thiss!20117 (t!94490 lt!320811)))))))

(assert (= (and d!264037 c!137777) b!847672))

(assert (= (and d!264037 (not c!137777)) b!847673))

(assert (= (and d!264037 res!387597) b!847674))

(assert (= (and b!847674 res!387596) b!847675))

(declare-fun m!1084161 () Bool)

(assert (=> b!847674 m!1084161))

(assert (=> b!847674 m!1082251))

(declare-fun m!1084163 () Bool)

(assert (=> b!847674 m!1084163))

(assert (=> b!847674 m!1082253))

(declare-fun m!1084165 () Bool)

(assert (=> b!847674 m!1084165))

(declare-fun m!1084167 () Bool)

(assert (=> d!264037 m!1084167))

(assert (=> d!264037 m!1082251))

(declare-fun m!1084169 () Bool)

(assert (=> d!264037 m!1084169))

(assert (=> d!264037 m!1082253))

(declare-fun m!1084171 () Bool)

(assert (=> d!264037 m!1084171))

(assert (=> b!847673 m!1082253))

(declare-fun m!1084173 () Bool)

(assert (=> b!847673 m!1084173))

(assert (=> b!846960 d!264037))

(declare-fun d!264039 () Bool)

(assert (=> d!264039 (= (list!3581 (charsOf!985 (h!14535 lt!320811))) (list!3585 (c!137644 (charsOf!985 (h!14535 lt!320811)))))))

(declare-fun bs!230619 () Bool)

(assert (= bs!230619 d!264039))

(declare-fun m!1084175 () Bool)

(assert (=> bs!230619 m!1084175))

(assert (=> b!846960 d!264039))

(declare-fun d!264041 () Bool)

(declare-fun lt!321223 () BalanceConc!6068)

(assert (=> d!264041 (= (list!3581 lt!321223) (originalCharacters!2270 (h!14535 lt!320811)))))

(assert (=> d!264041 (= lt!321223 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320811)))) (value!55548 (h!14535 lt!320811))))))

(assert (=> d!264041 (= (charsOf!985 (h!14535 lt!320811)) lt!321223)))

(declare-fun b_lambda!28059 () Bool)

(assert (=> (not b_lambda!28059) (not d!264041)))

(declare-fun t!94678 () Bool)

(declare-fun tb!58939 () Bool)

(assert (=> (and b!847210 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 rules!2621)))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320811))))) t!94678) tb!58939))

(declare-fun b!847676 () Bool)

(declare-fun e!557848 () Bool)

(declare-fun tp!266762 () Bool)

(assert (=> b!847676 (= e!557848 (and (inv!11614 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320811)))) (value!55548 (h!14535 lt!320811))))) tp!266762))))

(declare-fun result!68348 () Bool)

(assert (=> tb!58939 (= result!68348 (and (inv!11615 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320811)))) (value!55548 (h!14535 lt!320811)))) e!557848))))

(assert (= tb!58939 b!847676))

(declare-fun m!1084177 () Bool)

(assert (=> b!847676 m!1084177))

(declare-fun m!1084179 () Bool)

(assert (=> tb!58939 m!1084179))

(assert (=> d!264041 t!94678))

(declare-fun b_and!73879 () Bool)

(assert (= b_and!73829 (and (=> t!94678 result!68348) b_and!73879)))

(declare-fun tb!58941 () Bool)

(declare-fun t!94680 () Bool)

(assert (=> (and b!846786 (= (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320811))))) t!94680) tb!58941))

(declare-fun result!68350 () Bool)

(assert (= result!68350 result!68348))

(assert (=> d!264041 t!94680))

(declare-fun b_and!73881 () Bool)

(assert (= b_and!73835 (and (=> t!94680 result!68350) b_and!73881)))

(declare-fun t!94682 () Bool)

(declare-fun tb!58943 () Bool)

(assert (=> (and b!846785 (= (toChars!2598 (transformation!1714 (h!14536 rules!2621))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320811))))) t!94682) tb!58943))

(declare-fun result!68352 () Bool)

(assert (= result!68352 result!68348))

(assert (=> d!264041 t!94682))

(declare-fun b_and!73883 () Bool)

(assert (= b_and!73833 (and (=> t!94682 result!68352) b_and!73883)))

(declare-fun tb!58945 () Bool)

(declare-fun t!94684 () Bool)

(assert (=> (and b!846779 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320811))))) t!94684) tb!58945))

(declare-fun result!68354 () Bool)

(assert (= result!68354 result!68348))

(assert (=> d!264041 t!94684))

(declare-fun b_and!73885 () Bool)

(assert (= b_and!73831 (and (=> t!94684 result!68354) b_and!73885)))

(declare-fun tb!58947 () Bool)

(declare-fun t!94686 () Bool)

(assert (=> (and b!847199 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320811))))) t!94686) tb!58947))

(declare-fun result!68356 () Bool)

(assert (= result!68356 result!68348))

(assert (=> d!264041 t!94686))

(declare-fun b_and!73887 () Bool)

(assert (= b_and!73837 (and (=> t!94686 result!68356) b_and!73887)))

(declare-fun m!1084181 () Bool)

(assert (=> d!264041 m!1084181))

(declare-fun m!1084183 () Bool)

(assert (=> d!264041 m!1084183))

(assert (=> b!846960 d!264041))

(declare-fun d!264043 () Bool)

(declare-fun c!137778 () Bool)

(assert (=> d!264043 (= c!137778 ((_ is Cons!9134) (t!94490 lt!320811)))))

(declare-fun e!557849 () List!9149)

(assert (=> d!264043 (= (printList!468 thiss!20117 (t!94490 lt!320811)) e!557849)))

(declare-fun b!847677 () Bool)

(assert (=> b!847677 (= e!557849 (++!2364 (list!3581 (charsOf!985 (h!14535 (t!94490 lt!320811)))) (printList!468 thiss!20117 (t!94490 (t!94490 lt!320811)))))))

(declare-fun b!847678 () Bool)

(assert (=> b!847678 (= e!557849 Nil!9133)))

(assert (= (and d!264043 c!137778) b!847677))

(assert (= (and d!264043 (not c!137778)) b!847678))

(declare-fun m!1084185 () Bool)

(assert (=> b!847677 m!1084185))

(assert (=> b!847677 m!1084185))

(declare-fun m!1084187 () Bool)

(assert (=> b!847677 m!1084187))

(declare-fun m!1084189 () Bool)

(assert (=> b!847677 m!1084189))

(assert (=> b!847677 m!1084187))

(assert (=> b!847677 m!1084189))

(declare-fun m!1084191 () Bool)

(assert (=> b!847677 m!1084191))

(assert (=> b!846960 d!264043))

(declare-fun d!264045 () Bool)

(declare-fun charsToInt!0 (List!9148) (_ BitVec 32))

(assert (=> d!264045 (= (inv!16 (value!55548 separatorToken!297)) (= (charsToInt!0 (text!12907 (value!55548 separatorToken!297))) (value!55539 (value!55548 separatorToken!297))))))

(declare-fun bs!230620 () Bool)

(assert (= bs!230620 d!264045))

(declare-fun m!1084193 () Bool)

(assert (=> bs!230620 m!1084193))

(assert (=> b!846824 d!264045))

(declare-fun d!264047 () Bool)

(assert (=> d!264047 (tokensListTwoByTwoPredicateSeparableList!38 thiss!20117 (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297) rules!2621)))

(declare-fun lt!321242 () Unit!13599)

(declare-fun lt!321243 () Unit!13599)

(assert (=> d!264047 (= lt!321242 lt!321243)))

(assert (=> d!264047 (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 (withSeparatorTokenList!46 thiss!20117 lt!320744 separatorToken!297))))

(assert (=> d!264047 (= lt!321243 (withSeparatorTokenListPreservesRulesProduceTokens!46 thiss!20117 rules!2621 lt!320744 separatorToken!297))))

(assert (=> d!264047 true))

(declare-fun _$39!202 () Unit!13599)

(assert (=> d!264047 (= (choose!5000 thiss!20117 rules!2621 lt!320744 separatorToken!297) _$39!202)))

(declare-fun bs!230623 () Bool)

(assert (= bs!230623 d!264047))

(assert (=> bs!230623 m!1082057))

(assert (=> bs!230623 m!1082057))

(assert (=> bs!230623 m!1082617))

(assert (=> bs!230623 m!1082057))

(assert (=> bs!230623 m!1082525))

(assert (=> bs!230623 m!1082025))

(assert (=> d!263587 d!264047))

(assert (=> d!263587 d!263619))

(declare-fun d!264057 () Bool)

(declare-fun res!387601 () Bool)

(declare-fun e!557853 () Bool)

(assert (=> d!264057 (=> (not res!387601) (not e!557853))))

(assert (=> d!264057 (= res!387601 (not (isEmpty!5394 (originalCharacters!2270 (h!14535 (t!94490 l!5107))))))))

(assert (=> d!264057 (= (inv!11610 (h!14535 (t!94490 l!5107))) e!557853)))

(declare-fun b!847683 () Bool)

(declare-fun res!387602 () Bool)

(assert (=> b!847683 (=> (not res!387602) (not e!557853))))

(assert (=> b!847683 (= res!387602 (= (originalCharacters!2270 (h!14535 (t!94490 l!5107))) (list!3581 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))) (value!55548 (h!14535 (t!94490 l!5107)))))))))

(declare-fun b!847684 () Bool)

(assert (=> b!847684 (= e!557853 (= (size!7607 (h!14535 (t!94490 l!5107))) (size!7610 (originalCharacters!2270 (h!14535 (t!94490 l!5107))))))))

(assert (= (and d!264057 res!387601) b!847683))

(assert (= (and b!847683 res!387602) b!847684))

(declare-fun b_lambda!28063 () Bool)

(assert (=> (not b_lambda!28063) (not b!847683)))

(declare-fun t!94699 () Bool)

(declare-fun tb!58959 () Bool)

(assert (=> (and b!846779 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107)))))) t!94699) tb!58959))

(declare-fun b!847685 () Bool)

(declare-fun e!557854 () Bool)

(declare-fun tp!266764 () Bool)

(assert (=> b!847685 (= e!557854 (and (inv!11614 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))) (value!55548 (h!14535 (t!94490 l!5107)))))) tp!266764))))

(declare-fun result!68368 () Bool)

(assert (=> tb!58959 (= result!68368 (and (inv!11615 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))) (value!55548 (h!14535 (t!94490 l!5107))))) e!557854))))

(assert (= tb!58959 b!847685))

(declare-fun m!1084237 () Bool)

(assert (=> b!847685 m!1084237))

(declare-fun m!1084239 () Bool)

(assert (=> tb!58959 m!1084239))

(assert (=> b!847683 t!94699))

(declare-fun b_and!73899 () Bool)

(assert (= b_and!73885 (and (=> t!94699 result!68368) b_and!73899)))

(declare-fun t!94701 () Bool)

(declare-fun tb!58961 () Bool)

(assert (=> (and b!847199 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107)))))) t!94701) tb!58961))

(declare-fun result!68370 () Bool)

(assert (= result!68370 result!68368))

(assert (=> b!847683 t!94701))

(declare-fun b_and!73901 () Bool)

(assert (= b_and!73887 (and (=> t!94701 result!68370) b_and!73901)))

(declare-fun tb!58963 () Bool)

(declare-fun t!94703 () Bool)

(assert (=> (and b!846786 (= (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107)))))) t!94703) tb!58963))

(declare-fun result!68372 () Bool)

(assert (= result!68372 result!68368))

(assert (=> b!847683 t!94703))

(declare-fun b_and!73903 () Bool)

(assert (= b_and!73881 (and (=> t!94703 result!68372) b_and!73903)))

(declare-fun t!94705 () Bool)

(declare-fun tb!58965 () Bool)

(assert (=> (and b!847210 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 rules!2621)))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107)))))) t!94705) tb!58965))

(declare-fun result!68374 () Bool)

(assert (= result!68374 result!68368))

(assert (=> b!847683 t!94705))

(declare-fun b_and!73905 () Bool)

(assert (= b_and!73879 (and (=> t!94705 result!68374) b_and!73905)))

(declare-fun t!94707 () Bool)

(declare-fun tb!58967 () Bool)

(assert (=> (and b!846785 (= (toChars!2598 (transformation!1714 (h!14536 rules!2621))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107)))))) t!94707) tb!58967))

(declare-fun result!68376 () Bool)

(assert (= result!68376 result!68368))

(assert (=> b!847683 t!94707))

(declare-fun b_and!73907 () Bool)

(assert (= b_and!73883 (and (=> t!94707 result!68376) b_and!73907)))

(declare-fun m!1084243 () Bool)

(assert (=> d!264057 m!1084243))

(declare-fun m!1084245 () Bool)

(assert (=> b!847683 m!1084245))

(assert (=> b!847683 m!1084245))

(declare-fun m!1084249 () Bool)

(assert (=> b!847683 m!1084249))

(declare-fun m!1084251 () Bool)

(assert (=> b!847684 m!1084251))

(assert (=> b!847196 d!264057))

(declare-fun d!264065 () Bool)

(declare-fun c!137779 () Bool)

(assert (=> d!264065 (= c!137779 ((_ is Cons!9134) ($colon$colon!81 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 lt!320744) separatorToken!297) separatorToken!297) (h!14535 lt!320744))))))

(declare-fun e!557855 () List!9149)

(assert (=> d!264065 (= (printList!468 thiss!20117 ($colon$colon!81 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 lt!320744) separatorToken!297) separatorToken!297) (h!14535 lt!320744))) e!557855)))

(declare-fun b!847686 () Bool)

(assert (=> b!847686 (= e!557855 (++!2364 (list!3581 (charsOf!985 (h!14535 ($colon$colon!81 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 lt!320744) separatorToken!297) separatorToken!297) (h!14535 lt!320744))))) (printList!468 thiss!20117 (t!94490 ($colon$colon!81 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 lt!320744) separatorToken!297) separatorToken!297) (h!14535 lt!320744))))))))

(declare-fun b!847687 () Bool)

(assert (=> b!847687 (= e!557855 Nil!9133)))

(assert (= (and d!264065 c!137779) b!847686))

(assert (= (and d!264065 (not c!137779)) b!847687))

(declare-fun m!1084255 () Bool)

(assert (=> b!847686 m!1084255))

(assert (=> b!847686 m!1084255))

(declare-fun m!1084257 () Bool)

(assert (=> b!847686 m!1084257))

(declare-fun m!1084259 () Bool)

(assert (=> b!847686 m!1084259))

(assert (=> b!847686 m!1084257))

(assert (=> b!847686 m!1084259))

(declare-fun m!1084261 () Bool)

(assert (=> b!847686 m!1084261))

(assert (=> b!847033 d!264065))

(declare-fun d!264067 () Bool)

(assert (=> d!264067 (= ($colon$colon!81 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 lt!320744) separatorToken!297) separatorToken!297) (h!14535 lt!320744)) (Cons!9134 (h!14535 lt!320744) ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 lt!320744) separatorToken!297) separatorToken!297)))))

(assert (=> b!847033 d!264067))

(assert (=> b!847033 d!264019))

(assert (=> b!847033 d!264021))

(declare-fun d!264069 () Bool)

(assert (=> d!264069 (= (list!3581 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (value!55548 separatorToken!297))) (list!3585 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (value!55548 separatorToken!297)))))))

(declare-fun bs!230628 () Bool)

(assert (= bs!230628 d!264069))

(declare-fun m!1084263 () Bool)

(assert (=> bs!230628 m!1084263))

(assert (=> b!846829 d!264069))

(declare-fun d!264071 () Bool)

(declare-fun lt!321248 () Int)

(assert (=> d!264071 (>= lt!321248 0)))

(declare-fun e!557864 () Int)

(assert (=> d!264071 (= lt!321248 e!557864)))

(declare-fun c!137782 () Bool)

(assert (=> d!264071 (= c!137782 ((_ is Nil!9133) (originalCharacters!2270 (h!14535 l!5107))))))

(assert (=> d!264071 (= (size!7610 (originalCharacters!2270 (h!14535 l!5107))) lt!321248)))

(declare-fun b!847703 () Bool)

(assert (=> b!847703 (= e!557864 0)))

(declare-fun b!847704 () Bool)

(assert (=> b!847704 (= e!557864 (+ 1 (size!7610 (t!94489 (originalCharacters!2270 (h!14535 l!5107))))))))

(assert (= (and d!264071 c!137782) b!847703))

(assert (= (and d!264071 (not c!137782)) b!847704))

(declare-fun m!1084271 () Bool)

(assert (=> b!847704 m!1084271))

(assert (=> b!847040 d!264071))

(assert (=> d!263581 d!263603))

(declare-fun d!264073 () Bool)

(assert (=> d!264073 (separableTokensPredicate!56 thiss!20117 (h!14535 lt!320749) (h!14535 (t!94490 lt!320749)) rules!2621)))

(assert (=> d!264073 true))

(declare-fun _$37!208 () Unit!13599)

(assert (=> d!264073 (= (choose!4998 thiss!20117 (h!14535 lt!320749) (h!14535 (t!94490 lt!320749)) rules!2621) _$37!208)))

(declare-fun bs!230629 () Bool)

(assert (= bs!230629 d!264073))

(assert (=> bs!230629 m!1082021))

(assert (=> d!263581 d!264073))

(assert (=> d!263581 d!263619))

(declare-fun d!264075 () Bool)

(assert (=> d!264075 (= (inv!11607 (tag!1976 (rule!3137 (h!14535 (t!94490 l!5107))))) (= (mod (str.len (value!55547 (tag!1976 (rule!3137 (h!14535 (t!94490 l!5107)))))) 2) 0))))

(assert (=> b!847198 d!264075))

(declare-fun d!264077 () Bool)

(declare-fun res!387603 () Bool)

(declare-fun e!557869 () Bool)

(assert (=> d!264077 (=> (not res!387603) (not e!557869))))

(assert (=> d!264077 (= res!387603 (semiInverseModEq!664 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))) (toValue!2739 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107)))))))))

(assert (=> d!264077 (= (inv!11611 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))) e!557869)))

(declare-fun b!847718 () Bool)

(assert (=> b!847718 (= e!557869 (equivClasses!631 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))) (toValue!2739 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107)))))))))

(assert (= (and d!264077 res!387603) b!847718))

(declare-fun m!1084273 () Bool)

(assert (=> d!264077 m!1084273))

(declare-fun m!1084275 () Bool)

(assert (=> b!847718 m!1084275))

(assert (=> b!847198 d!264077))

(declare-fun d!264079 () Bool)

(declare-fun lt!321250 () Bool)

(declare-fun e!557873 () Bool)

(assert (=> d!264079 (= lt!321250 e!557873)))

(declare-fun res!387605 () Bool)

(assert (=> d!264079 (=> (not res!387605) (not e!557873))))

(assert (=> d!264079 (= res!387605 (= (list!3582 (_1!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 (h!14535 lt!320741)))))) (list!3582 (singletonSeq!528 (h!14535 lt!320741)))))))

(declare-fun e!557872 () Bool)

(assert (=> d!264079 (= lt!321250 e!557872)))

(declare-fun res!387606 () Bool)

(assert (=> d!264079 (=> (not res!387606) (not e!557872))))

(declare-fun lt!321249 () tuple2!10356)

(assert (=> d!264079 (= res!387606 (= (size!7612 (_1!6004 lt!321249)) 1))))

(assert (=> d!264079 (= lt!321249 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 (h!14535 lt!320741)))))))

(assert (=> d!264079 (not (isEmpty!5390 rules!2621))))

(assert (=> d!264079 (= (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 lt!320741)) lt!321250)))

(declare-fun b!847722 () Bool)

(declare-fun res!387604 () Bool)

(assert (=> b!847722 (=> (not res!387604) (not e!557872))))

(assert (=> b!847722 (= res!387604 (= (apply!1854 (_1!6004 lt!321249) 0) (h!14535 lt!320741)))))

(declare-fun b!847723 () Bool)

(assert (=> b!847723 (= e!557872 (isEmpty!5391 (_2!6004 lt!321249)))))

(declare-fun b!847724 () Bool)

(assert (=> b!847724 (= e!557873 (isEmpty!5391 (_2!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 (h!14535 lt!320741)))))))))

(assert (= (and d!264079 res!387606) b!847722))

(assert (= (and b!847722 res!387604) b!847723))

(assert (= (and d!264079 res!387605) b!847724))

(declare-fun m!1084283 () Bool)

(assert (=> d!264079 m!1084283))

(declare-fun m!1084285 () Bool)

(assert (=> d!264079 m!1084285))

(assert (=> d!264079 m!1084283))

(assert (=> d!264079 m!1084283))

(declare-fun m!1084287 () Bool)

(assert (=> d!264079 m!1084287))

(declare-fun m!1084289 () Bool)

(assert (=> d!264079 m!1084289))

(assert (=> d!264079 m!1082077))

(declare-fun m!1084291 () Bool)

(assert (=> d!264079 m!1084291))

(assert (=> d!264079 m!1084285))

(declare-fun m!1084293 () Bool)

(assert (=> d!264079 m!1084293))

(declare-fun m!1084295 () Bool)

(assert (=> b!847722 m!1084295))

(declare-fun m!1084297 () Bool)

(assert (=> b!847723 m!1084297))

(assert (=> b!847724 m!1084283))

(assert (=> b!847724 m!1084283))

(assert (=> b!847724 m!1084285))

(assert (=> b!847724 m!1084285))

(assert (=> b!847724 m!1084293))

(declare-fun m!1084299 () Bool)

(assert (=> b!847724 m!1084299))

(assert (=> b!847051 d!264079))

(declare-fun c!137783 () Bool)

(declare-fun d!264081 () Bool)

(assert (=> d!264081 (= c!137783 ((_ is Cons!9134) ($colon$colon!81 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 l!5107) separatorToken!297) separatorToken!297) (h!14535 l!5107))))))

(declare-fun e!557883 () List!9149)

(assert (=> d!264081 (= (printList!468 thiss!20117 ($colon$colon!81 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 l!5107) separatorToken!297) separatorToken!297) (h!14535 l!5107))) e!557883)))

(declare-fun b!847743 () Bool)

(assert (=> b!847743 (= e!557883 (++!2364 (list!3581 (charsOf!985 (h!14535 ($colon$colon!81 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 l!5107) separatorToken!297) separatorToken!297) (h!14535 l!5107))))) (printList!468 thiss!20117 (t!94490 ($colon$colon!81 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 l!5107) separatorToken!297) separatorToken!297) (h!14535 l!5107))))))))

(declare-fun b!847744 () Bool)

(assert (=> b!847744 (= e!557883 Nil!9133)))

(assert (= (and d!264081 c!137783) b!847743))

(assert (= (and d!264081 (not c!137783)) b!847744))

(declare-fun m!1084301 () Bool)

(assert (=> b!847743 m!1084301))

(assert (=> b!847743 m!1084301))

(declare-fun m!1084303 () Bool)

(assert (=> b!847743 m!1084303))

(declare-fun m!1084305 () Bool)

(assert (=> b!847743 m!1084305))

(assert (=> b!847743 m!1084303))

(assert (=> b!847743 m!1084305))

(declare-fun m!1084307 () Bool)

(assert (=> b!847743 m!1084307))

(assert (=> b!846964 d!264081))

(declare-fun d!264083 () Bool)

(assert (=> d!264083 (= ($colon$colon!81 ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 l!5107) separatorToken!297) separatorToken!297) (h!14535 l!5107)) (Cons!9134 (h!14535 l!5107) ($colon$colon!81 (withSeparatorTokenList!46 thiss!20117 (t!94490 l!5107) separatorToken!297) separatorToken!297)))))

(assert (=> b!846964 d!264083))

(assert (=> b!846964 d!264027))

(assert (=> b!846964 d!264029))

(declare-fun d!264085 () Bool)

(assert (=> d!264085 (= (inv!11615 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 lt!320742))) (value!55548 lt!320742))) (isBalanced!819 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 lt!320742))) (value!55548 lt!320742)))))))

(declare-fun bs!230630 () Bool)

(assert (= bs!230630 d!264085))

(declare-fun m!1084309 () Bool)

(assert (=> bs!230630 m!1084309))

(assert (=> tb!58811 d!264085))

(declare-fun d!264087 () Bool)

(declare-fun res!387607 () Bool)

(declare-fun e!557889 () Bool)

(assert (=> d!264087 (=> res!387607 e!557889)))

(assert (=> d!264087 (= res!387607 ((_ is Nil!9134) l!5107))))

(assert (=> d!264087 (= (forall!2141 l!5107 lambda!25226) e!557889)))

(declare-fun b!847765 () Bool)

(declare-fun e!557890 () Bool)

(assert (=> b!847765 (= e!557889 e!557890)))

(declare-fun res!387608 () Bool)

(assert (=> b!847765 (=> (not res!387608) (not e!557890))))

(assert (=> b!847765 (= res!387608 (dynLambda!4239 lambda!25226 (h!14535 l!5107)))))

(declare-fun b!847766 () Bool)

(assert (=> b!847766 (= e!557890 (forall!2141 (t!94490 l!5107) lambda!25226))))

(assert (= (and d!264087 (not res!387607)) b!847765))

(assert (= (and b!847765 res!387608) b!847766))

(declare-fun b_lambda!28065 () Bool)

(assert (=> (not b_lambda!28065) (not b!847765)))

(declare-fun m!1084311 () Bool)

(assert (=> b!847765 m!1084311))

(declare-fun m!1084313 () Bool)

(assert (=> b!847766 m!1084313))

(assert (=> d!263489 d!264087))

(assert (=> d!263489 d!263619))

(declare-fun d!264089 () Bool)

(declare-fun c!137784 () Bool)

(assert (=> d!264089 (= c!137784 ((_ is Cons!9134) lt!320810))))

(declare-fun e!557895 () List!9149)

(assert (=> d!264089 (= (printList!468 thiss!20117 lt!320810) e!557895)))

(declare-fun b!847770 () Bool)

(assert (=> b!847770 (= e!557895 (++!2364 (list!3581 (charsOf!985 (h!14535 lt!320810))) (printList!468 thiss!20117 (t!94490 lt!320810))))))

(declare-fun b!847771 () Bool)

(assert (=> b!847771 (= e!557895 Nil!9133)))

(assert (= (and d!264089 c!137784) b!847770))

(assert (= (and d!264089 (not c!137784)) b!847771))

(declare-fun m!1084315 () Bool)

(assert (=> b!847770 m!1084315))

(assert (=> b!847770 m!1084315))

(declare-fun m!1084317 () Bool)

(assert (=> b!847770 m!1084317))

(declare-fun m!1084319 () Bool)

(assert (=> b!847770 m!1084319))

(assert (=> b!847770 m!1084317))

(assert (=> b!847770 m!1084319))

(declare-fun m!1084321 () Bool)

(assert (=> b!847770 m!1084321))

(assert (=> d!263527 d!264089))

(declare-fun d!264091 () Bool)

(declare-fun c!137787 () Bool)

(assert (=> d!264091 (= c!137787 ((_ is Cons!9134) l!5107))))

(declare-fun e!557916 () List!9149)

(assert (=> d!264091 (= (printWithSeparatorTokenList!26 thiss!20117 l!5107 separatorToken!297) e!557916)))

(declare-fun b!847811 () Bool)

(assert (=> b!847811 (= e!557916 (++!2364 (++!2364 (list!3581 (charsOf!985 (h!14535 l!5107))) (list!3581 (charsOf!985 separatorToken!297))) (printWithSeparatorTokenList!26 thiss!20117 (t!94490 l!5107) separatorToken!297)))))

(declare-fun b!847812 () Bool)

(assert (=> b!847812 (= e!557916 Nil!9133)))

(assert (= (and d!264091 c!137787) b!847811))

(assert (= (and d!264091 (not c!137787)) b!847812))

(assert (=> b!847811 m!1082279))

(assert (=> b!847811 m!1082279))

(assert (=> b!847811 m!1082285))

(assert (=> b!847811 m!1082287))

(assert (=> b!847811 m!1082285))

(declare-fun m!1084333 () Bool)

(assert (=> b!847811 m!1084333))

(assert (=> b!847811 m!1084333))

(assert (=> b!847811 m!1084143))

(declare-fun m!1084335 () Bool)

(assert (=> b!847811 m!1084335))

(assert (=> b!847811 m!1082281))

(assert (=> b!847811 m!1082287))

(assert (=> b!847811 m!1084143))

(assert (=> b!847811 m!1082281))

(assert (=> d!263527 d!264091))

(declare-fun d!264093 () Bool)

(declare-fun c!137788 () Bool)

(assert (=> d!264093 (= c!137788 ((_ is Cons!9134) lt!320852))))

(declare-fun e!557918 () List!9149)

(assert (=> d!264093 (= (printList!468 thiss!20117 lt!320852) e!557918)))

(declare-fun b!847814 () Bool)

(assert (=> b!847814 (= e!557918 (++!2364 (list!3581 (charsOf!985 (h!14535 lt!320852))) (printList!468 thiss!20117 (t!94490 lt!320852))))))

(declare-fun b!847815 () Bool)

(assert (=> b!847815 (= e!557918 Nil!9133)))

(assert (= (and d!264093 c!137788) b!847814))

(assert (= (and d!264093 (not c!137788)) b!847815))

(declare-fun m!1084345 () Bool)

(assert (=> b!847814 m!1084345))

(assert (=> b!847814 m!1084345))

(declare-fun m!1084347 () Bool)

(assert (=> b!847814 m!1084347))

(declare-fun m!1084349 () Bool)

(assert (=> b!847814 m!1084349))

(assert (=> b!847814 m!1084347))

(assert (=> b!847814 m!1084349))

(declare-fun m!1084351 () Bool)

(assert (=> b!847814 m!1084351))

(assert (=> d!263567 d!264093))

(declare-fun d!264095 () Bool)

(declare-fun c!137789 () Bool)

(assert (=> d!264095 (= c!137789 ((_ is Cons!9134) lt!320744))))

(declare-fun e!557919 () List!9149)

(assert (=> d!264095 (= (printWithSeparatorTokenList!26 thiss!20117 lt!320744 separatorToken!297) e!557919)))

(declare-fun b!847816 () Bool)

(assert (=> b!847816 (= e!557919 (++!2364 (++!2364 (list!3581 (charsOf!985 (h!14535 lt!320744))) (list!3581 (charsOf!985 separatorToken!297))) (printWithSeparatorTokenList!26 thiss!20117 (t!94490 lt!320744) separatorToken!297)))))

(declare-fun b!847817 () Bool)

(assert (=> b!847817 (= e!557919 Nil!9133)))

(assert (= (and d!264095 c!137789) b!847816))

(assert (= (and d!264095 (not c!137789)) b!847817))

(assert (=> b!847816 m!1082279))

(assert (=> b!847816 m!1082279))

(assert (=> b!847816 m!1082285))

(assert (=> b!847816 m!1082465))

(assert (=> b!847816 m!1082285))

(declare-fun m!1084353 () Bool)

(assert (=> b!847816 m!1084353))

(assert (=> b!847816 m!1084353))

(assert (=> b!847816 m!1084087))

(declare-fun m!1084355 () Bool)

(assert (=> b!847816 m!1084355))

(assert (=> b!847816 m!1082461))

(assert (=> b!847816 m!1082465))

(assert (=> b!847816 m!1084087))

(assert (=> b!847816 m!1082461))

(assert (=> d!263567 d!264095))

(declare-fun d!264105 () Bool)

(assert (=> d!264105 (= (inv!11607 (tag!1976 (h!14536 (t!94491 rules!2621)))) (= (mod (str.len (value!55547 (tag!1976 (h!14536 (t!94491 rules!2621))))) 2) 0))))

(assert (=> b!847209 d!264105))

(declare-fun d!264107 () Bool)

(declare-fun res!387609 () Bool)

(declare-fun e!557920 () Bool)

(assert (=> d!264107 (=> (not res!387609) (not e!557920))))

(assert (=> d!264107 (= res!387609 (semiInverseModEq!664 (toChars!2598 (transformation!1714 (h!14536 (t!94491 rules!2621)))) (toValue!2739 (transformation!1714 (h!14536 (t!94491 rules!2621))))))))

(assert (=> d!264107 (= (inv!11611 (transformation!1714 (h!14536 (t!94491 rules!2621)))) e!557920)))

(declare-fun b!847818 () Bool)

(assert (=> b!847818 (= e!557920 (equivClasses!631 (toChars!2598 (transformation!1714 (h!14536 (t!94491 rules!2621)))) (toValue!2739 (transformation!1714 (h!14536 (t!94491 rules!2621))))))))

(assert (= (and d!264107 res!387609) b!847818))

(declare-fun m!1084357 () Bool)

(assert (=> d!264107 m!1084357))

(declare-fun m!1084359 () Bool)

(assert (=> b!847818 m!1084359))

(assert (=> b!847209 d!264107))

(declare-fun d!264109 () Bool)

(assert (=> d!264109 true))

(declare-fun order!5835 () Int)

(declare-fun lambda!25267 () Int)

(declare-fun dynLambda!4243 (Int Int) Int)

(assert (=> d!264109 (< (dynLambda!4238 order!5827 (toChars!2598 (transformation!1714 (h!14536 rules!2621)))) (dynLambda!4243 order!5835 lambda!25267))))

(assert (=> d!264109 true))

(assert (=> d!264109 (< (dynLambda!4236 order!5823 (toValue!2739 (transformation!1714 (h!14536 rules!2621)))) (dynLambda!4243 order!5835 lambda!25267))))

(declare-fun Forall!405 (Int) Bool)

(assert (=> d!264109 (= (semiInverseModEq!664 (toChars!2598 (transformation!1714 (h!14536 rules!2621))) (toValue!2739 (transformation!1714 (h!14536 rules!2621)))) (Forall!405 lambda!25267))))

(declare-fun bs!230635 () Bool)

(assert (= bs!230635 d!264109))

(declare-fun m!1084361 () Bool)

(assert (=> bs!230635 m!1084361))

(assert (=> d!263507 d!264109))

(declare-fun d!264111 () Bool)

(declare-fun lt!321251 () Bool)

(assert (=> d!264111 (= lt!321251 (isEmpty!5394 (list!3581 (_2!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 (h!14535 (t!94490 lt!320749)))))))))))

(assert (=> d!264111 (= lt!321251 (isEmpty!5395 (c!137644 (_2!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 (h!14535 (t!94490 lt!320749)))))))))))

(assert (=> d!264111 (= (isEmpty!5391 (_2!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 (h!14535 (t!94490 lt!320749))))))) lt!321251)))

(declare-fun bs!230636 () Bool)

(assert (= bs!230636 d!264111))

(declare-fun m!1084363 () Bool)

(assert (=> bs!230636 m!1084363))

(assert (=> bs!230636 m!1084363))

(declare-fun m!1084365 () Bool)

(assert (=> bs!230636 m!1084365))

(declare-fun m!1084367 () Bool)

(assert (=> bs!230636 m!1084367))

(assert (=> b!846925 d!264111))

(assert (=> b!846925 d!263939))

(assert (=> b!846925 d!263943))

(assert (=> b!846925 d!263937))

(declare-fun d!264113 () Bool)

(assert (=> d!264113 (= (isEmpty!5394 (list!3581 (charsOf!985 lt!320742))) ((_ is Nil!9133) (list!3581 (charsOf!985 lt!320742))))))

(assert (=> d!263607 d!264113))

(declare-fun d!264115 () Bool)

(assert (=> d!264115 (= (list!3581 (charsOf!985 lt!320742)) (list!3585 (c!137644 (charsOf!985 lt!320742))))))

(declare-fun bs!230637 () Bool)

(assert (= bs!230637 d!264115))

(declare-fun m!1084369 () Bool)

(assert (=> bs!230637 m!1084369))

(assert (=> d!263607 d!264115))

(declare-fun d!264117 () Bool)

(declare-fun lt!321254 () Bool)

(assert (=> d!264117 (= lt!321254 (isEmpty!5394 (list!3585 (c!137644 (charsOf!985 lt!320742)))))))

(declare-fun size!7619 (Conc!3027) Int)

(assert (=> d!264117 (= lt!321254 (= (size!7619 (c!137644 (charsOf!985 lt!320742))) 0))))

(assert (=> d!264117 (= (isEmpty!5395 (c!137644 (charsOf!985 lt!320742))) lt!321254)))

(declare-fun bs!230638 () Bool)

(assert (= bs!230638 d!264117))

(assert (=> bs!230638 m!1084369))

(assert (=> bs!230638 m!1084369))

(declare-fun m!1084371 () Bool)

(assert (=> bs!230638 m!1084371))

(declare-fun m!1084373 () Bool)

(assert (=> bs!230638 m!1084373))

(assert (=> d!263607 d!264117))

(declare-fun d!264119 () Bool)

(assert (=> d!264119 (= (isEmpty!5394 (originalCharacters!2270 (h!14535 l!5107))) ((_ is Nil!9133) (originalCharacters!2270 (h!14535 l!5107))))))

(assert (=> d!263573 d!264119))

(declare-fun bs!230639 () Bool)

(declare-fun d!264121 () Bool)

(assert (= bs!230639 (and d!264121 d!263579)))

(declare-fun lambda!25268 () Int)

(assert (=> bs!230639 (= lambda!25268 lambda!25230)))

(declare-fun bs!230640 () Bool)

(assert (= bs!230640 (and d!264121 b!846787)))

(assert (=> bs!230640 (not (= lambda!25268 lambda!25220))))

(declare-fun bs!230641 () Bool)

(assert (= bs!230641 (and d!264121 d!263959)))

(assert (=> bs!230641 (= lambda!25268 lambda!25255)))

(declare-fun bs!230642 () Bool)

(assert (= bs!230642 (and d!264121 d!263917)))

(assert (=> bs!230642 (= lambda!25268 lambda!25250)))

(declare-fun bs!230643 () Bool)

(assert (= bs!230643 (and d!264121 d!263525)))

(assert (=> bs!230643 (= lambda!25268 lambda!25228)))

(declare-fun bs!230644 () Bool)

(assert (= bs!230644 (and d!264121 d!263489)))

(assert (=> bs!230644 (= lambda!25268 lambda!25226)))

(declare-fun bs!230645 () Bool)

(assert (= bs!230645 (and d!264121 d!263947)))

(assert (=> bs!230645 (= lambda!25268 lambda!25254)))

(declare-fun b!847827 () Bool)

(declare-fun e!557925 () Bool)

(assert (=> b!847827 (= e!557925 true)))

(declare-fun b!847826 () Bool)

(declare-fun e!557924 () Bool)

(assert (=> b!847826 (= e!557924 e!557925)))

(declare-fun b!847825 () Bool)

(declare-fun e!557923 () Bool)

(assert (=> b!847825 (= e!557923 e!557924)))

(assert (=> d!264121 e!557923))

(assert (= b!847826 b!847827))

(assert (= b!847825 b!847826))

(assert (= (and d!264121 ((_ is Cons!9135) rules!2621)) b!847825))

(assert (=> b!847827 (< (dynLambda!4236 order!5823 (toValue!2739 (transformation!1714 (h!14536 rules!2621)))) (dynLambda!4237 order!5825 lambda!25268))))

(assert (=> b!847827 (< (dynLambda!4238 order!5827 (toChars!2598 (transformation!1714 (h!14536 rules!2621)))) (dynLambda!4237 order!5825 lambda!25268))))

(assert (=> d!264121 true))

(declare-fun lt!321255 () Bool)

(assert (=> d!264121 (= lt!321255 (forall!2141 (t!94490 lt!320749) lambda!25268))))

(declare-fun e!557922 () Bool)

(assert (=> d!264121 (= lt!321255 e!557922)))

(declare-fun res!387610 () Bool)

(assert (=> d!264121 (=> res!387610 e!557922)))

(assert (=> d!264121 (= res!387610 (not ((_ is Cons!9134) (t!94490 lt!320749))))))

(assert (=> d!264121 (not (isEmpty!5390 rules!2621))))

(assert (=> d!264121 (= (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 (t!94490 lt!320749)) lt!321255)))

(declare-fun b!847823 () Bool)

(declare-fun e!557921 () Bool)

(assert (=> b!847823 (= e!557922 e!557921)))

(declare-fun res!387611 () Bool)

(assert (=> b!847823 (=> (not res!387611) (not e!557921))))

(assert (=> b!847823 (= res!387611 (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 (t!94490 lt!320749))))))

(declare-fun b!847824 () Bool)

(assert (=> b!847824 (= e!557921 (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 (t!94490 (t!94490 lt!320749))))))

(assert (= (and d!264121 (not res!387610)) b!847823))

(assert (= (and b!847823 res!387611) b!847824))

(declare-fun m!1084375 () Bool)

(assert (=> d!264121 m!1084375))

(assert (=> d!264121 m!1082077))

(assert (=> b!847823 m!1082043))

(declare-fun m!1084377 () Bool)

(assert (=> b!847824 m!1084377))

(assert (=> b!846927 d!264121))

(declare-fun bs!230646 () Bool)

(declare-fun d!264123 () Bool)

(assert (= bs!230646 (and d!264123 d!263579)))

(declare-fun lambda!25269 () Int)

(assert (=> bs!230646 (= lambda!25269 lambda!25230)))

(declare-fun bs!230647 () Bool)

(assert (= bs!230647 (and d!264123 b!846787)))

(assert (=> bs!230647 (not (= lambda!25269 lambda!25220))))

(declare-fun bs!230648 () Bool)

(assert (= bs!230648 (and d!264123 d!263959)))

(assert (=> bs!230648 (= lambda!25269 lambda!25255)))

(declare-fun bs!230649 () Bool)

(assert (= bs!230649 (and d!264123 d!264121)))

(assert (=> bs!230649 (= lambda!25269 lambda!25268)))

(declare-fun bs!230650 () Bool)

(assert (= bs!230650 (and d!264123 d!263917)))

(assert (=> bs!230650 (= lambda!25269 lambda!25250)))

(declare-fun bs!230651 () Bool)

(assert (= bs!230651 (and d!264123 d!263525)))

(assert (=> bs!230651 (= lambda!25269 lambda!25228)))

(declare-fun bs!230652 () Bool)

(assert (= bs!230652 (and d!264123 d!263489)))

(assert (=> bs!230652 (= lambda!25269 lambda!25226)))

(declare-fun bs!230653 () Bool)

(assert (= bs!230653 (and d!264123 d!263947)))

(assert (=> bs!230653 (= lambda!25269 lambda!25254)))

(declare-fun b!847832 () Bool)

(declare-fun e!557930 () Bool)

(assert (=> b!847832 (= e!557930 true)))

(declare-fun b!847831 () Bool)

(declare-fun e!557929 () Bool)

(assert (=> b!847831 (= e!557929 e!557930)))

(declare-fun b!847830 () Bool)

(declare-fun e!557928 () Bool)

(assert (=> b!847830 (= e!557928 e!557929)))

(assert (=> d!264123 e!557928))

(assert (= b!847831 b!847832))

(assert (= b!847830 b!847831))

(assert (= (and d!264123 ((_ is Cons!9135) rules!2621)) b!847830))

(assert (=> b!847832 (< (dynLambda!4236 order!5823 (toValue!2739 (transformation!1714 (h!14536 rules!2621)))) (dynLambda!4237 order!5825 lambda!25269))))

(assert (=> b!847832 (< (dynLambda!4238 order!5827 (toChars!2598 (transformation!1714 (h!14536 rules!2621)))) (dynLambda!4237 order!5825 lambda!25269))))

(assert (=> d!264123 true))

(declare-fun lt!321256 () Bool)

(assert (=> d!264123 (= lt!321256 (forall!2141 (withSeparatorTokenList!46 thiss!20117 l!5107 separatorToken!297) lambda!25269))))

(declare-fun e!557927 () Bool)

(assert (=> d!264123 (= lt!321256 e!557927)))

(declare-fun res!387612 () Bool)

(assert (=> d!264123 (=> res!387612 e!557927)))

(assert (=> d!264123 (= res!387612 (not ((_ is Cons!9134) (withSeparatorTokenList!46 thiss!20117 l!5107 separatorToken!297))))))

(assert (=> d!264123 (not (isEmpty!5390 rules!2621))))

(assert (=> d!264123 (= (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 (withSeparatorTokenList!46 thiss!20117 l!5107 separatorToken!297)) lt!321256)))

(declare-fun b!847828 () Bool)

(declare-fun e!557926 () Bool)

(assert (=> b!847828 (= e!557927 e!557926)))

(declare-fun res!387613 () Bool)

(assert (=> b!847828 (=> (not res!387613) (not e!557926))))

(assert (=> b!847828 (= res!387613 (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 (withSeparatorTokenList!46 thiss!20117 l!5107 separatorToken!297))))))

(declare-fun b!847829 () Bool)

(assert (=> b!847829 (= e!557926 (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 (t!94490 (withSeparatorTokenList!46 thiss!20117 l!5107 separatorToken!297))))))

(assert (= (and d!264123 (not res!387612)) b!847828))

(assert (= (and b!847828 res!387613) b!847829))

(assert (=> d!264123 m!1082053))

(declare-fun m!1084379 () Bool)

(assert (=> d!264123 m!1084379))

(assert (=> d!264123 m!1082077))

(declare-fun m!1084381 () Bool)

(assert (=> b!847828 m!1084381))

(declare-fun m!1084383 () Bool)

(assert (=> b!847829 m!1084383))

(assert (=> d!263533 d!264123))

(assert (=> d!263533 d!263527))

(declare-fun d!264125 () Bool)

(assert (=> d!264125 (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 (withSeparatorTokenList!46 thiss!20117 l!5107 separatorToken!297))))

(assert (=> d!264125 true))

(declare-fun _$32!308 () Unit!13599)

(assert (=> d!264125 (= (choose!4999 thiss!20117 rules!2621 l!5107 separatorToken!297) _$32!308)))

(declare-fun bs!230654 () Bool)

(assert (= bs!230654 d!264125))

(assert (=> bs!230654 m!1082053))

(assert (=> bs!230654 m!1082053))

(assert (=> bs!230654 m!1082429))

(assert (=> d!263533 d!264125))

(assert (=> d!263533 d!263619))

(declare-fun d!264127 () Bool)

(declare-fun lt!321257 () Bool)

(assert (=> d!264127 (= lt!321257 (isEmpty!5394 (list!3581 (_2!6004 lt!320903))))))

(assert (=> d!264127 (= lt!321257 (isEmpty!5395 (c!137644 (_2!6004 lt!320903))))))

(assert (=> d!264127 (= (isEmpty!5391 (_2!6004 lt!320903)) lt!321257)))

(declare-fun bs!230655 () Bool)

(assert (= bs!230655 d!264127))

(declare-fun m!1084385 () Bool)

(assert (=> bs!230655 m!1084385))

(assert (=> bs!230655 m!1084385))

(declare-fun m!1084387 () Bool)

(assert (=> bs!230655 m!1084387))

(declare-fun m!1084389 () Bool)

(assert (=> bs!230655 m!1084389))

(assert (=> b!847145 d!264127))

(declare-fun d!264129 () Bool)

(assert (=> d!264129 (= (inv!15 (value!55548 separatorToken!297)) (= (charsToBigInt!0 (text!12909 (value!55548 separatorToken!297)) 0) (value!55543 (value!55548 separatorToken!297))))))

(declare-fun bs!230656 () Bool)

(assert (= bs!230656 d!264129))

(declare-fun m!1084391 () Bool)

(assert (=> bs!230656 m!1084391))

(assert (=> b!846823 d!264129))

(declare-fun lt!321258 () List!9149)

(declare-fun e!557931 () Bool)

(declare-fun b!847836 () Bool)

(assert (=> b!847836 (= e!557931 (or (not (= (printList!468 thiss!20117 (t!94490 lt!320857)) Nil!9133)) (= lt!321258 (list!3581 (charsOf!985 (h!14535 lt!320857))))))))

(declare-fun b!847835 () Bool)

(declare-fun res!387614 () Bool)

(assert (=> b!847835 (=> (not res!387614) (not e!557931))))

(assert (=> b!847835 (= res!387614 (= (size!7610 lt!321258) (+ (size!7610 (list!3581 (charsOf!985 (h!14535 lt!320857)))) (size!7610 (printList!468 thiss!20117 (t!94490 lt!320857))))))))

(declare-fun d!264131 () Bool)

(assert (=> d!264131 e!557931))

(declare-fun res!387615 () Bool)

(assert (=> d!264131 (=> (not res!387615) (not e!557931))))

(assert (=> d!264131 (= res!387615 (= (content!1338 lt!321258) ((_ map or) (content!1338 (list!3581 (charsOf!985 (h!14535 lt!320857)))) (content!1338 (printList!468 thiss!20117 (t!94490 lt!320857))))))))

(declare-fun e!557932 () List!9149)

(assert (=> d!264131 (= lt!321258 e!557932)))

(declare-fun c!137790 () Bool)

(assert (=> d!264131 (= c!137790 ((_ is Nil!9133) (list!3581 (charsOf!985 (h!14535 lt!320857)))))))

(assert (=> d!264131 (= (++!2364 (list!3581 (charsOf!985 (h!14535 lt!320857))) (printList!468 thiss!20117 (t!94490 lt!320857))) lt!321258)))

(declare-fun b!847833 () Bool)

(assert (=> b!847833 (= e!557932 (printList!468 thiss!20117 (t!94490 lt!320857)))))

(declare-fun b!847834 () Bool)

(assert (=> b!847834 (= e!557932 (Cons!9133 (h!14534 (list!3581 (charsOf!985 (h!14535 lt!320857)))) (++!2364 (t!94489 (list!3581 (charsOf!985 (h!14535 lt!320857)))) (printList!468 thiss!20117 (t!94490 lt!320857)))))))

(assert (= (and d!264131 c!137790) b!847833))

(assert (= (and d!264131 (not c!137790)) b!847834))

(assert (= (and d!264131 res!387615) b!847835))

(assert (= (and b!847835 res!387614) b!847836))

(declare-fun m!1084393 () Bool)

(assert (=> b!847835 m!1084393))

(assert (=> b!847835 m!1082471))

(declare-fun m!1084395 () Bool)

(assert (=> b!847835 m!1084395))

(assert (=> b!847835 m!1082473))

(declare-fun m!1084397 () Bool)

(assert (=> b!847835 m!1084397))

(declare-fun m!1084399 () Bool)

(assert (=> d!264131 m!1084399))

(assert (=> d!264131 m!1082471))

(declare-fun m!1084401 () Bool)

(assert (=> d!264131 m!1084401))

(assert (=> d!264131 m!1082473))

(declare-fun m!1084403 () Bool)

(assert (=> d!264131 m!1084403))

(assert (=> b!847834 m!1082473))

(declare-fun m!1084405 () Bool)

(assert (=> b!847834 m!1084405))

(assert (=> b!847030 d!264131))

(declare-fun d!264133 () Bool)

(assert (=> d!264133 (= (list!3581 (charsOf!985 (h!14535 lt!320857))) (list!3585 (c!137644 (charsOf!985 (h!14535 lt!320857)))))))

(declare-fun bs!230657 () Bool)

(assert (= bs!230657 d!264133))

(declare-fun m!1084407 () Bool)

(assert (=> bs!230657 m!1084407))

(assert (=> b!847030 d!264133))

(declare-fun d!264135 () Bool)

(declare-fun lt!321259 () BalanceConc!6068)

(assert (=> d!264135 (= (list!3581 lt!321259) (originalCharacters!2270 (h!14535 lt!320857)))))

(assert (=> d!264135 (= lt!321259 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320857)))) (value!55548 (h!14535 lt!320857))))))

(assert (=> d!264135 (= (charsOf!985 (h!14535 lt!320857)) lt!321259)))

(declare-fun b_lambda!28083 () Bool)

(assert (=> (not b_lambda!28083) (not d!264135)))

(declare-fun t!94758 () Bool)

(declare-fun tb!59017 () Bool)

(assert (=> (and b!846785 (= (toChars!2598 (transformation!1714 (h!14536 rules!2621))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320857))))) t!94758) tb!59017))

(declare-fun b!847837 () Bool)

(declare-fun e!557933 () Bool)

(declare-fun tp!266877 () Bool)

(assert (=> b!847837 (= e!557933 (and (inv!11614 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320857)))) (value!55548 (h!14535 lt!320857))))) tp!266877))))

(declare-fun result!68428 () Bool)

(assert (=> tb!59017 (= result!68428 (and (inv!11615 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320857)))) (value!55548 (h!14535 lt!320857)))) e!557933))))

(assert (= tb!59017 b!847837))

(declare-fun m!1084409 () Bool)

(assert (=> b!847837 m!1084409))

(declare-fun m!1084411 () Bool)

(assert (=> tb!59017 m!1084411))

(assert (=> d!264135 t!94758))

(declare-fun b_and!73917 () Bool)

(assert (= b_and!73907 (and (=> t!94758 result!68428) b_and!73917)))

(declare-fun t!94760 () Bool)

(declare-fun tb!59019 () Bool)

(assert (=> (and b!847199 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320857))))) t!94760) tb!59019))

(declare-fun result!68430 () Bool)

(assert (= result!68430 result!68428))

(assert (=> d!264135 t!94760))

(declare-fun b_and!73919 () Bool)

(assert (= b_and!73901 (and (=> t!94760 result!68430) b_and!73919)))

(declare-fun t!94762 () Bool)

(declare-fun tb!59021 () Bool)

(assert (=> (and b!846779 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320857))))) t!94762) tb!59021))

(declare-fun result!68432 () Bool)

(assert (= result!68432 result!68428))

(assert (=> d!264135 t!94762))

(declare-fun b_and!73921 () Bool)

(assert (= b_and!73899 (and (=> t!94762 result!68432) b_and!73921)))

(declare-fun tb!59023 () Bool)

(declare-fun t!94764 () Bool)

(assert (=> (and b!847210 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 rules!2621)))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320857))))) t!94764) tb!59023))

(declare-fun result!68434 () Bool)

(assert (= result!68434 result!68428))

(assert (=> d!264135 t!94764))

(declare-fun b_and!73923 () Bool)

(assert (= b_and!73905 (and (=> t!94764 result!68434) b_and!73923)))

(declare-fun tb!59025 () Bool)

(declare-fun t!94766 () Bool)

(assert (=> (and b!846786 (= (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320857))))) t!94766) tb!59025))

(declare-fun result!68436 () Bool)

(assert (= result!68436 result!68428))

(assert (=> d!264135 t!94766))

(declare-fun b_and!73925 () Bool)

(assert (= b_and!73903 (and (=> t!94766 result!68436) b_and!73925)))

(declare-fun m!1084413 () Bool)

(assert (=> d!264135 m!1084413))

(declare-fun m!1084415 () Bool)

(assert (=> d!264135 m!1084415))

(assert (=> b!847030 d!264135))

(declare-fun d!264137 () Bool)

(declare-fun c!137791 () Bool)

(assert (=> d!264137 (= c!137791 ((_ is Cons!9134) (t!94490 lt!320857)))))

(declare-fun e!557934 () List!9149)

(assert (=> d!264137 (= (printList!468 thiss!20117 (t!94490 lt!320857)) e!557934)))

(declare-fun b!847838 () Bool)

(assert (=> b!847838 (= e!557934 (++!2364 (list!3581 (charsOf!985 (h!14535 (t!94490 lt!320857)))) (printList!468 thiss!20117 (t!94490 (t!94490 lt!320857)))))))

(declare-fun b!847839 () Bool)

(assert (=> b!847839 (= e!557934 Nil!9133)))

(assert (= (and d!264137 c!137791) b!847838))

(assert (= (and d!264137 (not c!137791)) b!847839))

(declare-fun m!1084417 () Bool)

(assert (=> b!847838 m!1084417))

(assert (=> b!847838 m!1084417))

(declare-fun m!1084419 () Bool)

(assert (=> b!847838 m!1084419))

(declare-fun m!1084421 () Bool)

(assert (=> b!847838 m!1084421))

(assert (=> b!847838 m!1084419))

(assert (=> b!847838 m!1084421))

(declare-fun m!1084423 () Bool)

(assert (=> b!847838 m!1084423))

(assert (=> b!847030 d!264137))

(declare-fun bs!230658 () Bool)

(declare-fun d!264139 () Bool)

(assert (= bs!230658 (and d!264139 d!264109)))

(declare-fun lambda!25270 () Int)

(assert (=> bs!230658 (= (and (= (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (toChars!2598 (transformation!1714 (h!14536 rules!2621)))) (= (toValue!2739 (transformation!1714 (rule!3137 separatorToken!297))) (toValue!2739 (transformation!1714 (h!14536 rules!2621))))) (= lambda!25270 lambda!25267))))

(assert (=> d!264139 true))

(assert (=> d!264139 (< (dynLambda!4238 order!5827 (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297)))) (dynLambda!4243 order!5835 lambda!25270))))

(assert (=> d!264139 true))

(assert (=> d!264139 (< (dynLambda!4236 order!5823 (toValue!2739 (transformation!1714 (rule!3137 separatorToken!297)))) (dynLambda!4243 order!5835 lambda!25270))))

(assert (=> d!264139 (= (semiInverseModEq!664 (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (toValue!2739 (transformation!1714 (rule!3137 separatorToken!297)))) (Forall!405 lambda!25270))))

(declare-fun bs!230659 () Bool)

(assert (= bs!230659 d!264139))

(declare-fun m!1084425 () Bool)

(assert (=> bs!230659 m!1084425))

(assert (=> d!263615 d!264139))

(declare-fun d!264141 () Bool)

(declare-fun lt!321261 () Bool)

(declare-fun e!557936 () Bool)

(assert (=> d!264141 (= lt!321261 e!557936)))

(declare-fun res!387617 () Bool)

(assert (=> d!264141 (=> (not res!387617) (not e!557936))))

(assert (=> d!264141 (= res!387617 (= (list!3582 (_1!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 (h!14535 l!5107)))))) (list!3582 (singletonSeq!528 (h!14535 l!5107)))))))

(declare-fun e!557935 () Bool)

(assert (=> d!264141 (= lt!321261 e!557935)))

(declare-fun res!387618 () Bool)

(assert (=> d!264141 (=> (not res!387618) (not e!557935))))

(declare-fun lt!321260 () tuple2!10356)

(assert (=> d!264141 (= res!387618 (= (size!7612 (_1!6004 lt!321260)) 1))))

(assert (=> d!264141 (= lt!321260 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 (h!14535 l!5107)))))))

(assert (=> d!264141 (not (isEmpty!5390 rules!2621))))

(assert (=> d!264141 (= (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 l!5107)) lt!321261)))

(declare-fun b!847840 () Bool)

(declare-fun res!387616 () Bool)

(assert (=> b!847840 (=> (not res!387616) (not e!557935))))

(assert (=> b!847840 (= res!387616 (= (apply!1854 (_1!6004 lt!321260) 0) (h!14535 l!5107)))))

(declare-fun b!847841 () Bool)

(assert (=> b!847841 (= e!557935 (isEmpty!5391 (_2!6004 lt!321260)))))

(declare-fun b!847842 () Bool)

(assert (=> b!847842 (= e!557936 (isEmpty!5391 (_2!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 (h!14535 l!5107)))))))))

(assert (= (and d!264141 res!387618) b!847840))

(assert (= (and b!847840 res!387616) b!847841))

(assert (= (and d!264141 res!387617) b!847842))

(declare-fun m!1084427 () Bool)

(assert (=> d!264141 m!1084427))

(declare-fun m!1084429 () Bool)

(assert (=> d!264141 m!1084429))

(assert (=> d!264141 m!1084427))

(assert (=> d!264141 m!1084427))

(declare-fun m!1084431 () Bool)

(assert (=> d!264141 m!1084431))

(declare-fun m!1084433 () Bool)

(assert (=> d!264141 m!1084433))

(assert (=> d!264141 m!1082077))

(declare-fun m!1084435 () Bool)

(assert (=> d!264141 m!1084435))

(assert (=> d!264141 m!1084429))

(declare-fun m!1084437 () Bool)

(assert (=> d!264141 m!1084437))

(declare-fun m!1084439 () Bool)

(assert (=> b!847840 m!1084439))

(declare-fun m!1084441 () Bool)

(assert (=> b!847841 m!1084441))

(assert (=> b!847842 m!1084427))

(assert (=> b!847842 m!1084427))

(assert (=> b!847842 m!1084429))

(assert (=> b!847842 m!1084429))

(assert (=> b!847842 m!1084437))

(declare-fun m!1084443 () Bool)

(assert (=> b!847842 m!1084443))

(assert (=> b!846888 d!264141))

(declare-fun d!264143 () Bool)

(assert (=> d!264143 (= (inv!16 (value!55548 (h!14535 l!5107))) (= (charsToInt!0 (text!12907 (value!55548 (h!14535 l!5107)))) (value!55539 (value!55548 (h!14535 l!5107)))))))

(declare-fun bs!230660 () Bool)

(assert (= bs!230660 d!264143))

(declare-fun m!1084445 () Bool)

(assert (=> bs!230660 m!1084445))

(assert (=> b!847162 d!264143))

(declare-fun d!264145 () Bool)

(declare-fun lt!321262 () Bool)

(assert (=> d!264145 (= lt!321262 (isEmpty!5394 (list!3581 (_2!6004 lt!320860))))))

(assert (=> d!264145 (= lt!321262 (isEmpty!5395 (c!137644 (_2!6004 lt!320860))))))

(assert (=> d!264145 (= (isEmpty!5391 (_2!6004 lt!320860)) lt!321262)))

(declare-fun bs!230661 () Bool)

(assert (= bs!230661 d!264145))

(declare-fun m!1084447 () Bool)

(assert (=> bs!230661 m!1084447))

(assert (=> bs!230661 m!1084447))

(declare-fun m!1084449 () Bool)

(assert (=> bs!230661 m!1084449))

(declare-fun m!1084451 () Bool)

(assert (=> bs!230661 m!1084451))

(assert (=> b!847043 d!264145))

(declare-fun bs!230662 () Bool)

(declare-fun d!264147 () Bool)

(assert (= bs!230662 (and d!264147 d!264013)))

(declare-fun lambda!25271 () Int)

(assert (=> bs!230662 (= (= (toValue!2739 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (toValue!2739 (transformation!1714 (rule!3137 separatorToken!297)))) (= lambda!25271 lambda!25264))))

(assert (=> d!264147 true))

(assert (=> d!264147 (< (dynLambda!4236 order!5823 (toValue!2739 (transformation!1714 (rule!3137 (h!14535 l!5107))))) (dynLambda!4241 order!5833 lambda!25271))))

(assert (=> d!264147 (= (equivClasses!631 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (toValue!2739 (transformation!1714 (rule!3137 (h!14535 l!5107))))) (Forall2!315 lambda!25271))))

(declare-fun bs!230663 () Bool)

(assert (= bs!230663 d!264147))

(declare-fun m!1084453 () Bool)

(assert (=> bs!230663 m!1084453))

(assert (=> b!847028 d!264147))

(declare-fun d!264149 () Bool)

(assert (=> d!264149 (= (list!3581 lt!320910) (list!3585 (c!137644 lt!320910)))))

(declare-fun bs!230664 () Bool)

(assert (= bs!230664 d!264149))

(declare-fun m!1084455 () Bool)

(assert (=> bs!230664 m!1084455))

(assert (=> d!263609 d!264149))

(declare-fun d!264151 () Bool)

(declare-fun lt!321264 () Bool)

(declare-fun e!557938 () Bool)

(assert (=> d!264151 (= lt!321264 e!557938)))

(declare-fun res!387620 () Bool)

(assert (=> d!264151 (=> (not res!387620) (not e!557938))))

(assert (=> d!264151 (= res!387620 (= (list!3582 (_1!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 (h!14535 (t!94490 lt!320741))))))) (list!3582 (singletonSeq!528 (h!14535 (t!94490 lt!320741))))))))

(declare-fun e!557937 () Bool)

(assert (=> d!264151 (= lt!321264 e!557937)))

(declare-fun res!387621 () Bool)

(assert (=> d!264151 (=> (not res!387621) (not e!557937))))

(declare-fun lt!321263 () tuple2!10356)

(assert (=> d!264151 (= res!387621 (= (size!7612 (_1!6004 lt!321263)) 1))))

(assert (=> d!264151 (= lt!321263 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 (h!14535 (t!94490 lt!320741))))))))

(assert (=> d!264151 (not (isEmpty!5390 rules!2621))))

(assert (=> d!264151 (= (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 (t!94490 lt!320741))) lt!321264)))

(declare-fun b!847843 () Bool)

(declare-fun res!387619 () Bool)

(assert (=> b!847843 (=> (not res!387619) (not e!557937))))

(assert (=> b!847843 (= res!387619 (= (apply!1854 (_1!6004 lt!321263) 0) (h!14535 (t!94490 lt!320741))))))

(declare-fun b!847844 () Bool)

(assert (=> b!847844 (= e!557937 (isEmpty!5391 (_2!6004 lt!321263)))))

(declare-fun b!847845 () Bool)

(assert (=> b!847845 (= e!557938 (isEmpty!5391 (_2!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 (h!14535 (t!94490 lt!320741))))))))))

(assert (= (and d!264151 res!387621) b!847843))

(assert (= (and b!847843 res!387619) b!847844))

(assert (= (and d!264151 res!387620) b!847845))

(declare-fun m!1084457 () Bool)

(assert (=> d!264151 m!1084457))

(declare-fun m!1084459 () Bool)

(assert (=> d!264151 m!1084459))

(assert (=> d!264151 m!1084457))

(assert (=> d!264151 m!1084457))

(declare-fun m!1084461 () Bool)

(assert (=> d!264151 m!1084461))

(declare-fun m!1084463 () Bool)

(assert (=> d!264151 m!1084463))

(assert (=> d!264151 m!1082077))

(declare-fun m!1084465 () Bool)

(assert (=> d!264151 m!1084465))

(assert (=> d!264151 m!1084459))

(declare-fun m!1084467 () Bool)

(assert (=> d!264151 m!1084467))

(declare-fun m!1084469 () Bool)

(assert (=> b!847843 m!1084469))

(declare-fun m!1084471 () Bool)

(assert (=> b!847844 m!1084471))

(assert (=> b!847845 m!1084457))

(assert (=> b!847845 m!1084457))

(assert (=> b!847845 m!1084459))

(assert (=> b!847845 m!1084459))

(assert (=> b!847845 m!1084467))

(declare-fun m!1084473 () Bool)

(assert (=> b!847845 m!1084473))

(assert (=> b!847152 d!264151))

(declare-fun d!264153 () Bool)

(declare-fun lt!321265 () BalanceConc!6068)

(assert (=> d!264153 (= (list!3581 lt!321265) (originalCharacters!2270 (h!14535 (t!94490 lt!320741))))))

(assert (=> d!264153 (= lt!321265 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 lt!320741))))) (value!55548 (h!14535 (t!94490 lt!320741)))))))

(assert (=> d!264153 (= (charsOf!985 (h!14535 (t!94490 lt!320741))) lt!321265)))

(declare-fun b_lambda!28085 () Bool)

(assert (=> (not b_lambda!28085) (not d!264153)))

(declare-fun t!94768 () Bool)

(declare-fun tb!59027 () Bool)

(assert (=> (and b!847210 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 rules!2621)))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 lt!320741)))))) t!94768) tb!59027))

(declare-fun b!847846 () Bool)

(declare-fun e!557939 () Bool)

(declare-fun tp!266878 () Bool)

(assert (=> b!847846 (= e!557939 (and (inv!11614 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 lt!320741))))) (value!55548 (h!14535 (t!94490 lt!320741)))))) tp!266878))))

(declare-fun result!68438 () Bool)

(assert (=> tb!59027 (= result!68438 (and (inv!11615 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 lt!320741))))) (value!55548 (h!14535 (t!94490 lt!320741))))) e!557939))))

(assert (= tb!59027 b!847846))

(declare-fun m!1084475 () Bool)

(assert (=> b!847846 m!1084475))

(declare-fun m!1084477 () Bool)

(assert (=> tb!59027 m!1084477))

(assert (=> d!264153 t!94768))

(declare-fun b_and!73927 () Bool)

(assert (= b_and!73923 (and (=> t!94768 result!68438) b_and!73927)))

(declare-fun tb!59029 () Bool)

(declare-fun t!94770 () Bool)

(assert (=> (and b!846779 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 lt!320741)))))) t!94770) tb!59029))

(declare-fun result!68440 () Bool)

(assert (= result!68440 result!68438))

(assert (=> d!264153 t!94770))

(declare-fun b_and!73929 () Bool)

(assert (= b_and!73921 (and (=> t!94770 result!68440) b_and!73929)))

(declare-fun tb!59031 () Bool)

(declare-fun t!94772 () Bool)

(assert (=> (and b!846785 (= (toChars!2598 (transformation!1714 (h!14536 rules!2621))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 lt!320741)))))) t!94772) tb!59031))

(declare-fun result!68442 () Bool)

(assert (= result!68442 result!68438))

(assert (=> d!264153 t!94772))

(declare-fun b_and!73931 () Bool)

(assert (= b_and!73917 (and (=> t!94772 result!68442) b_and!73931)))

(declare-fun t!94774 () Bool)

(declare-fun tb!59033 () Bool)

(assert (=> (and b!846786 (= (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 lt!320741)))))) t!94774) tb!59033))

(declare-fun result!68444 () Bool)

(assert (= result!68444 result!68438))

(assert (=> d!264153 t!94774))

(declare-fun b_and!73933 () Bool)

(assert (= b_and!73925 (and (=> t!94774 result!68444) b_and!73933)))

(declare-fun tb!59035 () Bool)

(declare-fun t!94776 () Bool)

(assert (=> (and b!847199 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 lt!320741)))))) t!94776) tb!59035))

(declare-fun result!68446 () Bool)

(assert (= result!68446 result!68438))

(assert (=> d!264153 t!94776))

(declare-fun b_and!73935 () Bool)

(assert (= b_and!73919 (and (=> t!94776 result!68446) b_and!73935)))

(declare-fun m!1084479 () Bool)

(assert (=> d!264153 m!1084479))

(declare-fun m!1084481 () Bool)

(assert (=> d!264153 m!1084481))

(assert (=> b!847152 d!264153))

(declare-fun d!264155 () Bool)

(assert (=> d!264155 (= (separableTokensPredicate!56 thiss!20117 (h!14535 lt!320741) (h!14535 (t!94490 lt!320741)) rules!2621) (not (prefixMatchZipperSequence!23 (rulesRegex!18 thiss!20117 rules!2621) (++!2363 (charsOf!985 (h!14535 lt!320741)) (singletonSeq!529 (apply!1855 (charsOf!985 (h!14535 (t!94490 lt!320741))) 0))))))))

(declare-fun bs!230665 () Bool)

(assert (= bs!230665 d!264155))

(assert (=> bs!230665 m!1082671))

(declare-fun m!1084483 () Bool)

(assert (=> bs!230665 m!1084483))

(declare-fun m!1084485 () Bool)

(assert (=> bs!230665 m!1084485))

(assert (=> bs!230665 m!1082215))

(declare-fun m!1084487 () Bool)

(assert (=> bs!230665 m!1084487))

(declare-fun m!1084489 () Bool)

(assert (=> bs!230665 m!1084489))

(assert (=> bs!230665 m!1082671))

(assert (=> bs!230665 m!1084483))

(assert (=> bs!230665 m!1082215))

(declare-fun m!1084491 () Bool)

(assert (=> bs!230665 m!1084491))

(assert (=> bs!230665 m!1084491))

(assert (=> bs!230665 m!1084485))

(assert (=> bs!230665 m!1084487))

(assert (=> b!847152 d!264155))

(declare-fun d!264157 () Bool)

(declare-fun lt!321268 () Int)

(assert (=> d!264157 (= lt!321268 (size!7610 (list!3581 (charsOf!985 (h!14535 (t!94490 lt!320741))))))))

(assert (=> d!264157 (= lt!321268 (size!7619 (c!137644 (charsOf!985 (h!14535 (t!94490 lt!320741))))))))

(assert (=> d!264157 (= (size!7613 (charsOf!985 (h!14535 (t!94490 lt!320741)))) lt!321268)))

(declare-fun bs!230666 () Bool)

(assert (= bs!230666 d!264157))

(assert (=> bs!230666 m!1082671))

(declare-fun m!1084493 () Bool)

(assert (=> bs!230666 m!1084493))

(assert (=> bs!230666 m!1084493))

(declare-fun m!1084495 () Bool)

(assert (=> bs!230666 m!1084495))

(declare-fun m!1084497 () Bool)

(assert (=> bs!230666 m!1084497))

(assert (=> b!847152 d!264157))

(declare-fun d!264159 () Bool)

(assert (=> d!264159 (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 lt!320741))))

(declare-fun lt!321271 () Unit!13599)

(declare-fun choose!5002 (LexerInterface!1516 List!9151 List!9150 Token!3094) Unit!13599)

(assert (=> d!264159 (= lt!321271 (choose!5002 thiss!20117 rules!2621 lt!320741 (h!14535 lt!320741)))))

(assert (=> d!264159 (not (isEmpty!5390 rules!2621))))

(assert (=> d!264159 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!226 thiss!20117 rules!2621 lt!320741 (h!14535 lt!320741)) lt!321271)))

(declare-fun bs!230667 () Bool)

(assert (= bs!230667 d!264159))

(assert (=> bs!230667 m!1082519))

(declare-fun m!1084499 () Bool)

(assert (=> bs!230667 m!1084499))

(assert (=> bs!230667 m!1082077))

(assert (=> b!847152 d!264159))

(assert (=> b!847152 d!264079))

(declare-fun d!264161 () Bool)

(assert (=> d!264161 (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 (t!94490 lt!320741)))))

(declare-fun lt!321272 () Unit!13599)

(assert (=> d!264161 (= lt!321272 (choose!5002 thiss!20117 rules!2621 lt!320741 (h!14535 (t!94490 lt!320741))))))

(assert (=> d!264161 (not (isEmpty!5390 rules!2621))))

(assert (=> d!264161 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!226 thiss!20117 rules!2621 lt!320741 (h!14535 (t!94490 lt!320741))) lt!321272)))

(declare-fun bs!230668 () Bool)

(assert (= bs!230668 d!264161))

(assert (=> bs!230668 m!1082667))

(declare-fun m!1084501 () Bool)

(assert (=> bs!230668 m!1084501))

(assert (=> bs!230668 m!1082077))

(assert (=> b!847152 d!264161))

(declare-fun d!264163 () Bool)

(declare-fun lt!321273 () Token!3094)

(assert (=> d!264163 (= lt!321273 (apply!1858 (list!3582 (_1!6004 lt!320782)) 0))))

(assert (=> d!264163 (= lt!321273 (apply!1859 (c!137686 (_1!6004 lt!320782)) 0))))

(declare-fun e!557940 () Bool)

(assert (=> d!264163 e!557940))

(declare-fun res!387622 () Bool)

(assert (=> d!264163 (=> (not res!387622) (not e!557940))))

(assert (=> d!264163 (= res!387622 (<= 0 0))))

(assert (=> d!264163 (= (apply!1854 (_1!6004 lt!320782) 0) lt!321273)))

(declare-fun b!847847 () Bool)

(assert (=> b!847847 (= e!557940 (< 0 (size!7612 (_1!6004 lt!320782))))))

(assert (= (and d!264163 res!387622) b!847847))

(assert (=> d!264163 m!1083793))

(assert (=> d!264163 m!1083793))

(declare-fun m!1084503 () Bool)

(assert (=> d!264163 m!1084503))

(declare-fun m!1084505 () Bool)

(assert (=> d!264163 m!1084505))

(assert (=> b!847847 m!1082199))

(assert (=> b!846923 d!264163))

(declare-fun d!264165 () Bool)

(declare-fun c!137792 () Bool)

(assert (=> d!264165 (= c!137792 ((_ is Node!3027) (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (value!55548 separatorToken!297)))))))

(declare-fun e!557941 () Bool)

(assert (=> d!264165 (= (inv!11614 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (value!55548 separatorToken!297)))) e!557941)))

(declare-fun b!847848 () Bool)

(assert (=> b!847848 (= e!557941 (inv!11618 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (value!55548 separatorToken!297)))))))

(declare-fun b!847849 () Bool)

(declare-fun e!557942 () Bool)

(assert (=> b!847849 (= e!557941 e!557942)))

(declare-fun res!387623 () Bool)

(assert (=> b!847849 (= res!387623 (not ((_ is Leaf!4472) (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (value!55548 separatorToken!297))))))))

(assert (=> b!847849 (=> res!387623 e!557942)))

(declare-fun b!847850 () Bool)

(assert (=> b!847850 (= e!557942 (inv!11619 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (value!55548 separatorToken!297)))))))

(assert (= (and d!264165 c!137792) b!847848))

(assert (= (and d!264165 (not c!137792)) b!847849))

(assert (= (and b!847849 (not res!387623)) b!847850))

(declare-fun m!1084507 () Bool)

(assert (=> b!847848 m!1084507))

(declare-fun m!1084509 () Bool)

(assert (=> b!847850 m!1084509))

(assert (=> b!846835 d!264165))

(declare-fun bs!230669 () Bool)

(declare-fun d!264167 () Bool)

(assert (= bs!230669 (and d!264167 d!263579)))

(declare-fun lambda!25272 () Int)

(assert (=> bs!230669 (= lambda!25272 lambda!25230)))

(declare-fun bs!230670 () Bool)

(assert (= bs!230670 (and d!264167 b!846787)))

(assert (=> bs!230670 (not (= lambda!25272 lambda!25220))))

(declare-fun bs!230671 () Bool)

(assert (= bs!230671 (and d!264167 d!264123)))

(assert (=> bs!230671 (= lambda!25272 lambda!25269)))

(declare-fun bs!230672 () Bool)

(assert (= bs!230672 (and d!264167 d!263959)))

(assert (=> bs!230672 (= lambda!25272 lambda!25255)))

(declare-fun bs!230673 () Bool)

(assert (= bs!230673 (and d!264167 d!264121)))

(assert (=> bs!230673 (= lambda!25272 lambda!25268)))

(declare-fun bs!230674 () Bool)

(assert (= bs!230674 (and d!264167 d!263917)))

(assert (=> bs!230674 (= lambda!25272 lambda!25250)))

(declare-fun bs!230675 () Bool)

(assert (= bs!230675 (and d!264167 d!263525)))

(assert (=> bs!230675 (= lambda!25272 lambda!25228)))

(declare-fun bs!230676 () Bool)

(assert (= bs!230676 (and d!264167 d!263489)))

(assert (=> bs!230676 (= lambda!25272 lambda!25226)))

(declare-fun bs!230677 () Bool)

(assert (= bs!230677 (and d!264167 d!263947)))

(assert (=> bs!230677 (= lambda!25272 lambda!25254)))

(declare-fun b!847855 () Bool)

(declare-fun e!557947 () Bool)

(assert (=> b!847855 (= e!557947 true)))

(declare-fun b!847854 () Bool)

(declare-fun e!557946 () Bool)

(assert (=> b!847854 (= e!557946 e!557947)))

(declare-fun b!847853 () Bool)

(declare-fun e!557945 () Bool)

(assert (=> b!847853 (= e!557945 e!557946)))

(assert (=> d!264167 e!557945))

(assert (= b!847854 b!847855))

(assert (= b!847853 b!847854))

(assert (= (and d!264167 ((_ is Cons!9135) rules!2621)) b!847853))

(assert (=> b!847855 (< (dynLambda!4236 order!5823 (toValue!2739 (transformation!1714 (h!14536 rules!2621)))) (dynLambda!4237 order!5825 lambda!25272))))

(assert (=> b!847855 (< (dynLambda!4238 order!5827 (toChars!2598 (transformation!1714 (h!14536 rules!2621)))) (dynLambda!4237 order!5825 lambda!25272))))

(assert (=> d!264167 true))

(declare-fun lt!321274 () Bool)

(assert (=> d!264167 (= lt!321274 (forall!2141 (t!94490 lt!320741) lambda!25272))))

(declare-fun e!557944 () Bool)

(assert (=> d!264167 (= lt!321274 e!557944)))

(declare-fun res!387624 () Bool)

(assert (=> d!264167 (=> res!387624 e!557944)))

(assert (=> d!264167 (= res!387624 (not ((_ is Cons!9134) (t!94490 lt!320741))))))

(assert (=> d!264167 (not (isEmpty!5390 rules!2621))))

(assert (=> d!264167 (= (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 (t!94490 lt!320741)) lt!321274)))

(declare-fun b!847851 () Bool)

(declare-fun e!557943 () Bool)

(assert (=> b!847851 (= e!557944 e!557943)))

(declare-fun res!387625 () Bool)

(assert (=> b!847851 (=> (not res!387625) (not e!557943))))

(assert (=> b!847851 (= res!387625 (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 (t!94490 lt!320741))))))

(declare-fun b!847852 () Bool)

(assert (=> b!847852 (= e!557943 (rulesProduceEachTokenIndividuallyList!404 thiss!20117 rules!2621 (t!94490 (t!94490 lt!320741))))))

(assert (= (and d!264167 (not res!387624)) b!847851))

(assert (= (and b!847851 res!387625) b!847852))

(declare-fun m!1084511 () Bool)

(assert (=> d!264167 m!1084511))

(assert (=> d!264167 m!1082077))

(assert (=> b!847851 m!1082667))

(declare-fun m!1084513 () Bool)

(assert (=> b!847852 m!1084513))

(assert (=> b!847052 d!264167))

(declare-fun d!264169 () Bool)

(declare-fun res!387626 () Bool)

(declare-fun e!557948 () Bool)

(assert (=> d!264169 (=> res!387626 e!557948)))

(assert (=> d!264169 (= res!387626 (not ((_ is Cons!9135) (t!94491 rules!2621))))))

(assert (=> d!264169 (= (sepAndNonSepRulesDisjointChars!514 rules!2621 (t!94491 rules!2621)) e!557948)))

(declare-fun b!847856 () Bool)

(declare-fun e!557949 () Bool)

(assert (=> b!847856 (= e!557948 e!557949)))

(declare-fun res!387627 () Bool)

(assert (=> b!847856 (=> (not res!387627) (not e!557949))))

(assert (=> b!847856 (= res!387627 (ruleDisjointCharsFromAllFromOtherType!231 (h!14536 (t!94491 rules!2621)) rules!2621))))

(declare-fun b!847857 () Bool)

(assert (=> b!847857 (= e!557949 (sepAndNonSepRulesDisjointChars!514 rules!2621 (t!94491 (t!94491 rules!2621))))))

(assert (= (and d!264169 (not res!387626)) b!847856))

(assert (= (and b!847856 res!387627) b!847857))

(declare-fun m!1084515 () Bool)

(assert (=> b!847856 m!1084515))

(declare-fun m!1084517 () Bool)

(assert (=> b!847857 m!1084517))

(assert (=> b!846908 d!264169))

(assert (=> b!847139 d!263617))

(declare-fun bs!230678 () Bool)

(declare-fun d!264171 () Bool)

(assert (= bs!230678 (and d!264171 d!264013)))

(declare-fun lambda!25273 () Int)

(assert (=> bs!230678 (= (= (toValue!2739 (transformation!1714 (h!14536 rules!2621))) (toValue!2739 (transformation!1714 (rule!3137 separatorToken!297)))) (= lambda!25273 lambda!25264))))

(declare-fun bs!230679 () Bool)

(assert (= bs!230679 (and d!264171 d!264147)))

(assert (=> bs!230679 (= (= (toValue!2739 (transformation!1714 (h!14536 rules!2621))) (toValue!2739 (transformation!1714 (rule!3137 (h!14535 l!5107))))) (= lambda!25273 lambda!25271))))

(assert (=> d!264171 true))

(assert (=> d!264171 (< (dynLambda!4236 order!5823 (toValue!2739 (transformation!1714 (h!14536 rules!2621)))) (dynLambda!4241 order!5833 lambda!25273))))

(assert (=> d!264171 (= (equivClasses!631 (toChars!2598 (transformation!1714 (h!14536 rules!2621))) (toValue!2739 (transformation!1714 (h!14536 rules!2621)))) (Forall2!315 lambda!25273))))

(declare-fun bs!230680 () Bool)

(assert (= bs!230680 d!264171))

(declare-fun m!1084519 () Bool)

(assert (=> bs!230680 m!1084519))

(assert (=> b!846911 d!264171))

(declare-fun bs!230681 () Bool)

(declare-fun d!264173 () Bool)

(assert (= bs!230681 (and d!264173 d!264109)))

(declare-fun lambda!25274 () Int)

(assert (=> bs!230681 (= (and (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (toChars!2598 (transformation!1714 (h!14536 rules!2621)))) (= (toValue!2739 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (toValue!2739 (transformation!1714 (h!14536 rules!2621))))) (= lambda!25274 lambda!25267))))

(declare-fun bs!230682 () Bool)

(assert (= bs!230682 (and d!264173 d!264139)))

(assert (=> bs!230682 (= (and (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297)))) (= (toValue!2739 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (toValue!2739 (transformation!1714 (rule!3137 separatorToken!297))))) (= lambda!25274 lambda!25270))))

(assert (=> d!264173 true))

(assert (=> d!264173 (< (dynLambda!4238 order!5827 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107))))) (dynLambda!4243 order!5835 lambda!25274))))

(assert (=> d!264173 true))

(assert (=> d!264173 (< (dynLambda!4236 order!5823 (toValue!2739 (transformation!1714 (rule!3137 (h!14535 l!5107))))) (dynLambda!4243 order!5835 lambda!25274))))

(assert (=> d!264173 (= (semiInverseModEq!664 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (toValue!2739 (transformation!1714 (rule!3137 (h!14535 l!5107))))) (Forall!405 lambda!25274))))

(declare-fun bs!230683 () Bool)

(assert (= bs!230683 d!264173))

(declare-fun m!1084521 () Bool)

(assert (=> bs!230683 m!1084521))

(assert (=> d!263565 d!264173))

(declare-fun d!264175 () Bool)

(declare-fun c!137793 () Bool)

(assert (=> d!264175 (= c!137793 ((_ is Node!3027) (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 lt!320742))) (value!55548 lt!320742)))))))

(declare-fun e!557950 () Bool)

(assert (=> d!264175 (= (inv!11614 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 lt!320742))) (value!55548 lt!320742)))) e!557950)))

(declare-fun b!847858 () Bool)

(assert (=> b!847858 (= e!557950 (inv!11618 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 lt!320742))) (value!55548 lt!320742)))))))

(declare-fun b!847859 () Bool)

(declare-fun e!557951 () Bool)

(assert (=> b!847859 (= e!557950 e!557951)))

(declare-fun res!387628 () Bool)

(assert (=> b!847859 (= res!387628 (not ((_ is Leaf!4472) (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 lt!320742))) (value!55548 lt!320742))))))))

(assert (=> b!847859 (=> res!387628 e!557951)))

(declare-fun b!847860 () Bool)

(assert (=> b!847860 (= e!557951 (inv!11619 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 lt!320742))) (value!55548 lt!320742)))))))

(assert (= (and d!264175 c!137793) b!847858))

(assert (= (and d!264175 (not c!137793)) b!847859))

(assert (= (and b!847859 (not res!387628)) b!847860))

(declare-fun m!1084523 () Bool)

(assert (=> b!847858 m!1084523))

(declare-fun m!1084525 () Bool)

(assert (=> b!847860 m!1084525))

(assert (=> b!847147 d!264175))

(declare-fun lt!321275 () List!9149)

(declare-fun e!557952 () Bool)

(declare-fun b!847864 () Bool)

(assert (=> b!847864 (= e!557952 (or (not (= (printList!468 thiss!20117 (t!94490 lt!320815)) Nil!9133)) (= lt!321275 (list!3581 (charsOf!985 (h!14535 lt!320815))))))))

(declare-fun b!847863 () Bool)

(declare-fun res!387629 () Bool)

(assert (=> b!847863 (=> (not res!387629) (not e!557952))))

(assert (=> b!847863 (= res!387629 (= (size!7610 lt!321275) (+ (size!7610 (list!3581 (charsOf!985 (h!14535 lt!320815)))) (size!7610 (printList!468 thiss!20117 (t!94490 lt!320815))))))))

(declare-fun d!264177 () Bool)

(assert (=> d!264177 e!557952))

(declare-fun res!387630 () Bool)

(assert (=> d!264177 (=> (not res!387630) (not e!557952))))

(assert (=> d!264177 (= res!387630 (= (content!1338 lt!321275) ((_ map or) (content!1338 (list!3581 (charsOf!985 (h!14535 lt!320815)))) (content!1338 (printList!468 thiss!20117 (t!94490 lt!320815))))))))

(declare-fun e!557953 () List!9149)

(assert (=> d!264177 (= lt!321275 e!557953)))

(declare-fun c!137794 () Bool)

(assert (=> d!264177 (= c!137794 ((_ is Nil!9133) (list!3581 (charsOf!985 (h!14535 lt!320815)))))))

(assert (=> d!264177 (= (++!2364 (list!3581 (charsOf!985 (h!14535 lt!320815))) (printList!468 thiss!20117 (t!94490 lt!320815))) lt!321275)))

(declare-fun b!847861 () Bool)

(assert (=> b!847861 (= e!557953 (printList!468 thiss!20117 (t!94490 lt!320815)))))

(declare-fun b!847862 () Bool)

(assert (=> b!847862 (= e!557953 (Cons!9133 (h!14534 (list!3581 (charsOf!985 (h!14535 lt!320815)))) (++!2364 (t!94489 (list!3581 (charsOf!985 (h!14535 lt!320815)))) (printList!468 thiss!20117 (t!94490 lt!320815)))))))

(assert (= (and d!264177 c!137794) b!847861))

(assert (= (and d!264177 (not c!137794)) b!847862))

(assert (= (and d!264177 res!387630) b!847863))

(assert (= (and b!847863 res!387629) b!847864))

(declare-fun m!1084527 () Bool)

(assert (=> b!847863 m!1084527))

(assert (=> b!847863 m!1082293))

(declare-fun m!1084529 () Bool)

(assert (=> b!847863 m!1084529))

(assert (=> b!847863 m!1082295))

(declare-fun m!1084531 () Bool)

(assert (=> b!847863 m!1084531))

(declare-fun m!1084533 () Bool)

(assert (=> d!264177 m!1084533))

(assert (=> d!264177 m!1082293))

(declare-fun m!1084535 () Bool)

(assert (=> d!264177 m!1084535))

(assert (=> d!264177 m!1082295))

(declare-fun m!1084537 () Bool)

(assert (=> d!264177 m!1084537))

(assert (=> b!847862 m!1082295))

(declare-fun m!1084539 () Bool)

(assert (=> b!847862 m!1084539))

(assert (=> b!846961 d!264177))

(declare-fun d!264179 () Bool)

(assert (=> d!264179 (= (list!3581 (charsOf!985 (h!14535 lt!320815))) (list!3585 (c!137644 (charsOf!985 (h!14535 lt!320815)))))))

(declare-fun bs!230684 () Bool)

(assert (= bs!230684 d!264179))

(declare-fun m!1084541 () Bool)

(assert (=> bs!230684 m!1084541))

(assert (=> b!846961 d!264179))

(declare-fun d!264181 () Bool)

(declare-fun lt!321276 () BalanceConc!6068)

(assert (=> d!264181 (= (list!3581 lt!321276) (originalCharacters!2270 (h!14535 lt!320815)))))

(assert (=> d!264181 (= lt!321276 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320815)))) (value!55548 (h!14535 lt!320815))))))

(assert (=> d!264181 (= (charsOf!985 (h!14535 lt!320815)) lt!321276)))

(declare-fun b_lambda!28087 () Bool)

(assert (=> (not b_lambda!28087) (not d!264181)))

(declare-fun t!94779 () Bool)

(declare-fun tb!59037 () Bool)

(assert (=> (and b!846786 (= (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320815))))) t!94779) tb!59037))

(declare-fun b!847865 () Bool)

(declare-fun e!557954 () Bool)

(declare-fun tp!266879 () Bool)

(assert (=> b!847865 (= e!557954 (and (inv!11614 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320815)))) (value!55548 (h!14535 lt!320815))))) tp!266879))))

(declare-fun result!68448 () Bool)

(assert (=> tb!59037 (= result!68448 (and (inv!11615 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320815)))) (value!55548 (h!14535 lt!320815)))) e!557954))))

(assert (= tb!59037 b!847865))

(declare-fun m!1084543 () Bool)

(assert (=> b!847865 m!1084543))

(declare-fun m!1084545 () Bool)

(assert (=> tb!59037 m!1084545))

(assert (=> d!264181 t!94779))

(declare-fun b_and!73937 () Bool)

(assert (= b_and!73933 (and (=> t!94779 result!68448) b_and!73937)))

(declare-fun tb!59039 () Bool)

(declare-fun t!94781 () Bool)

(assert (=> (and b!846779 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320815))))) t!94781) tb!59039))

(declare-fun result!68450 () Bool)

(assert (= result!68450 result!68448))

(assert (=> d!264181 t!94781))

(declare-fun b_and!73939 () Bool)

(assert (= b_and!73929 (and (=> t!94781 result!68450) b_and!73939)))

(declare-fun t!94783 () Bool)

(declare-fun tb!59041 () Bool)

(assert (=> (and b!847199 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320815))))) t!94783) tb!59041))

(declare-fun result!68452 () Bool)

(assert (= result!68452 result!68448))

(assert (=> d!264181 t!94783))

(declare-fun b_and!73941 () Bool)

(assert (= b_and!73935 (and (=> t!94783 result!68452) b_and!73941)))

(declare-fun tb!59043 () Bool)

(declare-fun t!94785 () Bool)

(assert (=> (and b!847210 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 rules!2621)))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320815))))) t!94785) tb!59043))

(declare-fun result!68454 () Bool)

(assert (= result!68454 result!68448))

(assert (=> d!264181 t!94785))

(declare-fun b_and!73943 () Bool)

(assert (= b_and!73927 (and (=> t!94785 result!68454) b_and!73943)))

(declare-fun tb!59045 () Bool)

(declare-fun t!94787 () Bool)

(assert (=> (and b!846785 (= (toChars!2598 (transformation!1714 (h!14536 rules!2621))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320815))))) t!94787) tb!59045))

(declare-fun result!68456 () Bool)

(assert (= result!68456 result!68448))

(assert (=> d!264181 t!94787))

(declare-fun b_and!73945 () Bool)

(assert (= b_and!73931 (and (=> t!94787 result!68456) b_and!73945)))

(declare-fun m!1084547 () Bool)

(assert (=> d!264181 m!1084547))

(declare-fun m!1084549 () Bool)

(assert (=> d!264181 m!1084549))

(assert (=> b!846961 d!264181))

(declare-fun d!264183 () Bool)

(declare-fun c!137795 () Bool)

(assert (=> d!264183 (= c!137795 ((_ is Cons!9134) (t!94490 lt!320815)))))

(declare-fun e!557955 () List!9149)

(assert (=> d!264183 (= (printList!468 thiss!20117 (t!94490 lt!320815)) e!557955)))

(declare-fun b!847866 () Bool)

(assert (=> b!847866 (= e!557955 (++!2364 (list!3581 (charsOf!985 (h!14535 (t!94490 lt!320815)))) (printList!468 thiss!20117 (t!94490 (t!94490 lt!320815)))))))

(declare-fun b!847867 () Bool)

(assert (=> b!847867 (= e!557955 Nil!9133)))

(assert (= (and d!264183 c!137795) b!847866))

(assert (= (and d!264183 (not c!137795)) b!847867))

(declare-fun m!1084551 () Bool)

(assert (=> b!847866 m!1084551))

(assert (=> b!847866 m!1084551))

(declare-fun m!1084553 () Bool)

(assert (=> b!847866 m!1084553))

(declare-fun m!1084555 () Bool)

(assert (=> b!847866 m!1084555))

(assert (=> b!847866 m!1084553))

(assert (=> b!847866 m!1084555))

(declare-fun m!1084557 () Bool)

(assert (=> b!847866 m!1084557))

(assert (=> b!846961 d!264183))

(declare-fun d!264185 () Bool)

(assert (=> d!264185 (= (list!3581 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (value!55548 (h!14535 l!5107)))) (list!3585 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (value!55548 (h!14535 l!5107))))))))

(declare-fun bs!230685 () Bool)

(assert (= bs!230685 d!264185))

(declare-fun m!1084559 () Bool)

(assert (=> bs!230685 m!1084559))

(assert (=> b!847039 d!264185))

(assert (=> b!847034 d!264019))

(declare-fun d!264187 () Bool)

(declare-fun lt!321277 () BalanceConc!6068)

(assert (=> d!264187 (= (list!3581 lt!321277) (originalCharacters!2270 separatorToken!297))))

(assert (=> d!264187 (= lt!321277 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (value!55548 separatorToken!297)))))

(assert (=> d!264187 (= (charsOf!985 separatorToken!297) lt!321277)))

(declare-fun b_lambda!28089 () Bool)

(assert (=> (not b_lambda!28089) (not d!264187)))

(assert (=> d!264187 t!94503))

(declare-fun b_and!73947 () Bool)

(assert (= b_and!73937 (and (=> t!94503 result!68172) b_and!73947)))

(assert (=> d!264187 t!94548))

(declare-fun b_and!73949 () Bool)

(assert (= b_and!73941 (and (=> t!94548 result!68224) b_and!73949)))

(assert (=> d!264187 t!94499))

(declare-fun b_and!73951 () Bool)

(assert (= b_and!73945 (and (=> t!94499 result!68166) b_and!73951)))

(assert (=> d!264187 t!94501))

(declare-fun b_and!73953 () Bool)

(assert (= b_and!73939 (and (=> t!94501 result!68170) b_and!73953)))

(assert (=> d!264187 t!94554))

(declare-fun b_and!73955 () Bool)

(assert (= b_and!73943 (and (=> t!94554 result!68232) b_and!73955)))

(declare-fun m!1084561 () Bool)

(assert (=> d!264187 m!1084561))

(assert (=> d!264187 m!1082121))

(assert (=> b!847034 d!264187))

(declare-fun d!264189 () Bool)

(declare-fun lt!321278 () BalanceConc!6068)

(assert (=> d!264189 (= (list!3581 lt!321278) (originalCharacters!2270 (h!14535 lt!320744)))))

(assert (=> d!264189 (= lt!321278 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320744)))) (value!55548 (h!14535 lt!320744))))))

(assert (=> d!264189 (= (charsOf!985 (h!14535 lt!320744)) lt!321278)))

(declare-fun b_lambda!28091 () Bool)

(assert (=> (not b_lambda!28091) (not d!264189)))

(declare-fun tb!59047 () Bool)

(declare-fun t!94789 () Bool)

(assert (=> (and b!846785 (= (toChars!2598 (transformation!1714 (h!14536 rules!2621))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320744))))) t!94789) tb!59047))

(declare-fun b!847868 () Bool)

(declare-fun e!557956 () Bool)

(declare-fun tp!266880 () Bool)

(assert (=> b!847868 (= e!557956 (and (inv!11614 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320744)))) (value!55548 (h!14535 lt!320744))))) tp!266880))))

(declare-fun result!68458 () Bool)

(assert (=> tb!59047 (= result!68458 (and (inv!11615 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320744)))) (value!55548 (h!14535 lt!320744)))) e!557956))))

(assert (= tb!59047 b!847868))

(declare-fun m!1084563 () Bool)

(assert (=> b!847868 m!1084563))

(declare-fun m!1084565 () Bool)

(assert (=> tb!59047 m!1084565))

(assert (=> d!264189 t!94789))

(declare-fun b_and!73957 () Bool)

(assert (= b_and!73951 (and (=> t!94789 result!68458) b_and!73957)))

(declare-fun t!94791 () Bool)

(declare-fun tb!59049 () Bool)

(assert (=> (and b!847199 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320744))))) t!94791) tb!59049))

(declare-fun result!68460 () Bool)

(assert (= result!68460 result!68458))

(assert (=> d!264189 t!94791))

(declare-fun b_and!73959 () Bool)

(assert (= b_and!73949 (and (=> t!94791 result!68460) b_and!73959)))

(declare-fun t!94793 () Bool)

(declare-fun tb!59051 () Bool)

(assert (=> (and b!846786 (= (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320744))))) t!94793) tb!59051))

(declare-fun result!68462 () Bool)

(assert (= result!68462 result!68458))

(assert (=> d!264189 t!94793))

(declare-fun b_and!73961 () Bool)

(assert (= b_and!73947 (and (=> t!94793 result!68462) b_and!73961)))

(declare-fun t!94795 () Bool)

(declare-fun tb!59053 () Bool)

(assert (=> (and b!847210 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 rules!2621)))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320744))))) t!94795) tb!59053))

(declare-fun result!68464 () Bool)

(assert (= result!68464 result!68458))

(assert (=> d!264189 t!94795))

(declare-fun b_and!73963 () Bool)

(assert (= b_and!73955 (and (=> t!94795 result!68464) b_and!73963)))

(declare-fun tb!59055 () Bool)

(declare-fun t!94797 () Bool)

(assert (=> (and b!846779 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320744))))) t!94797) tb!59055))

(declare-fun result!68466 () Bool)

(assert (= result!68466 result!68458))

(assert (=> d!264189 t!94797))

(declare-fun b_and!73965 () Bool)

(assert (= b_and!73953 (and (=> t!94797 result!68466) b_and!73965)))

(declare-fun m!1084567 () Bool)

(assert (=> d!264189 m!1084567))

(declare-fun m!1084569 () Bool)

(assert (=> d!264189 m!1084569))

(assert (=> b!847034 d!264189))

(declare-fun b!847872 () Bool)

(declare-fun e!557957 () Bool)

(declare-fun lt!321279 () List!9149)

(assert (=> b!847872 (= e!557957 (or (not (= lt!320856 Nil!9133)) (= lt!321279 lt!320854)))))

(declare-fun b!847871 () Bool)

(declare-fun res!387631 () Bool)

(assert (=> b!847871 (=> (not res!387631) (not e!557957))))

(assert (=> b!847871 (= res!387631 (= (size!7610 lt!321279) (+ (size!7610 lt!320854) (size!7610 lt!320856))))))

(declare-fun d!264191 () Bool)

(assert (=> d!264191 e!557957))

(declare-fun res!387632 () Bool)

(assert (=> d!264191 (=> (not res!387632) (not e!557957))))

(assert (=> d!264191 (= res!387632 (= (content!1338 lt!321279) ((_ map or) (content!1338 lt!320854) (content!1338 lt!320856))))))

(declare-fun e!557958 () List!9149)

(assert (=> d!264191 (= lt!321279 e!557958)))

(declare-fun c!137796 () Bool)

(assert (=> d!264191 (= c!137796 ((_ is Nil!9133) lt!320854))))

(assert (=> d!264191 (= (++!2364 lt!320854 lt!320856) lt!321279)))

(declare-fun b!847869 () Bool)

(assert (=> b!847869 (= e!557958 lt!320856)))

(declare-fun b!847870 () Bool)

(assert (=> b!847870 (= e!557958 (Cons!9133 (h!14534 lt!320854) (++!2364 (t!94489 lt!320854) lt!320856)))))

(assert (= (and d!264191 c!137796) b!847869))

(assert (= (and d!264191 (not c!137796)) b!847870))

(assert (= (and d!264191 res!387632) b!847871))

(assert (= (and b!847871 res!387631) b!847872))

(declare-fun m!1084571 () Bool)

(assert (=> b!847871 m!1084571))

(declare-fun m!1084573 () Bool)

(assert (=> b!847871 m!1084573))

(declare-fun m!1084575 () Bool)

(assert (=> b!847871 m!1084575))

(declare-fun m!1084577 () Bool)

(assert (=> d!264191 m!1084577))

(declare-fun m!1084579 () Bool)

(assert (=> d!264191 m!1084579))

(declare-fun m!1084581 () Bool)

(assert (=> d!264191 m!1084581))

(declare-fun m!1084583 () Bool)

(assert (=> b!847870 m!1084583))

(assert (=> b!847034 d!264191))

(declare-fun d!264193 () Bool)

(assert (=> d!264193 (= (list!3581 (charsOf!985 separatorToken!297)) (list!3585 (c!137644 (charsOf!985 separatorToken!297))))))

(declare-fun bs!230686 () Bool)

(assert (= bs!230686 d!264193))

(declare-fun m!1084585 () Bool)

(assert (=> bs!230686 m!1084585))

(assert (=> b!847034 d!264193))

(declare-fun d!264195 () Bool)

(assert (=> d!264195 (= (++!2364 (++!2364 lt!320855 lt!320854) lt!320856) (++!2364 lt!320855 (++!2364 lt!320854 lt!320856)))))

(declare-fun lt!321282 () Unit!13599)

(declare-fun choose!5004 (List!9149 List!9149 List!9149) Unit!13599)

(assert (=> d!264195 (= lt!321282 (choose!5004 lt!320855 lt!320854 lt!320856))))

(assert (=> d!264195 (= (lemmaConcatAssociativity!743 lt!320855 lt!320854 lt!320856) lt!321282)))

(declare-fun bs!230687 () Bool)

(assert (= bs!230687 d!264195))

(assert (=> bs!230687 m!1082457))

(assert (=> bs!230687 m!1082459))

(assert (=> bs!230687 m!1082453))

(assert (=> bs!230687 m!1082455))

(assert (=> bs!230687 m!1082453))

(assert (=> bs!230687 m!1082457))

(declare-fun m!1084587 () Bool)

(assert (=> bs!230687 m!1084587))

(assert (=> b!847034 d!264195))

(declare-fun b!847876 () Bool)

(declare-fun lt!321283 () List!9149)

(declare-fun e!557959 () Bool)

(assert (=> b!847876 (= e!557959 (or (not (= lt!320854 Nil!9133)) (= lt!321283 lt!320855)))))

(declare-fun b!847875 () Bool)

(declare-fun res!387633 () Bool)

(assert (=> b!847875 (=> (not res!387633) (not e!557959))))

(assert (=> b!847875 (= res!387633 (= (size!7610 lt!321283) (+ (size!7610 lt!320855) (size!7610 lt!320854))))))

(declare-fun d!264197 () Bool)

(assert (=> d!264197 e!557959))

(declare-fun res!387634 () Bool)

(assert (=> d!264197 (=> (not res!387634) (not e!557959))))

(assert (=> d!264197 (= res!387634 (= (content!1338 lt!321283) ((_ map or) (content!1338 lt!320855) (content!1338 lt!320854))))))

(declare-fun e!557960 () List!9149)

(assert (=> d!264197 (= lt!321283 e!557960)))

(declare-fun c!137797 () Bool)

(assert (=> d!264197 (= c!137797 ((_ is Nil!9133) lt!320855))))

(assert (=> d!264197 (= (++!2364 lt!320855 lt!320854) lt!321283)))

(declare-fun b!847873 () Bool)

(assert (=> b!847873 (= e!557960 lt!320854)))

(declare-fun b!847874 () Bool)

(assert (=> b!847874 (= e!557960 (Cons!9133 (h!14534 lt!320855) (++!2364 (t!94489 lt!320855) lt!320854)))))

(assert (= (and d!264197 c!137797) b!847873))

(assert (= (and d!264197 (not c!137797)) b!847874))

(assert (= (and d!264197 res!387634) b!847875))

(assert (= (and b!847875 res!387633) b!847876))

(declare-fun m!1084589 () Bool)

(assert (=> b!847875 m!1084589))

(declare-fun m!1084591 () Bool)

(assert (=> b!847875 m!1084591))

(assert (=> b!847875 m!1084573))

(declare-fun m!1084593 () Bool)

(assert (=> d!264197 m!1084593))

(declare-fun m!1084595 () Bool)

(assert (=> d!264197 m!1084595))

(assert (=> d!264197 m!1084579))

(declare-fun m!1084597 () Bool)

(assert (=> b!847874 m!1084597))

(assert (=> b!847034 d!264197))

(assert (=> b!847034 d!264067))

(declare-fun lt!321284 () List!9149)

(declare-fun b!847880 () Bool)

(declare-fun e!557961 () Bool)

(assert (=> b!847880 (= e!557961 (or (not (= lt!320856 Nil!9133)) (= lt!321284 (++!2364 lt!320855 lt!320854))))))

(declare-fun b!847879 () Bool)

(declare-fun res!387635 () Bool)

(assert (=> b!847879 (=> (not res!387635) (not e!557961))))

(assert (=> b!847879 (= res!387635 (= (size!7610 lt!321284) (+ (size!7610 (++!2364 lt!320855 lt!320854)) (size!7610 lt!320856))))))

(declare-fun d!264199 () Bool)

(assert (=> d!264199 e!557961))

(declare-fun res!387636 () Bool)

(assert (=> d!264199 (=> (not res!387636) (not e!557961))))

(assert (=> d!264199 (= res!387636 (= (content!1338 lt!321284) ((_ map or) (content!1338 (++!2364 lt!320855 lt!320854)) (content!1338 lt!320856))))))

(declare-fun e!557962 () List!9149)

(assert (=> d!264199 (= lt!321284 e!557962)))

(declare-fun c!137798 () Bool)

(assert (=> d!264199 (= c!137798 ((_ is Nil!9133) (++!2364 lt!320855 lt!320854)))))

(assert (=> d!264199 (= (++!2364 (++!2364 lt!320855 lt!320854) lt!320856) lt!321284)))

(declare-fun b!847877 () Bool)

(assert (=> b!847877 (= e!557962 lt!320856)))

(declare-fun b!847878 () Bool)

(assert (=> b!847878 (= e!557962 (Cons!9133 (h!14534 (++!2364 lt!320855 lt!320854)) (++!2364 (t!94489 (++!2364 lt!320855 lt!320854)) lt!320856)))))

(assert (= (and d!264199 c!137798) b!847877))

(assert (= (and d!264199 (not c!137798)) b!847878))

(assert (= (and d!264199 res!387636) b!847879))

(assert (= (and b!847879 res!387635) b!847880))

(declare-fun m!1084599 () Bool)

(assert (=> b!847879 m!1084599))

(assert (=> b!847879 m!1082453))

(declare-fun m!1084601 () Bool)

(assert (=> b!847879 m!1084601))

(assert (=> b!847879 m!1084575))

(declare-fun m!1084603 () Bool)

(assert (=> d!264199 m!1084603))

(assert (=> d!264199 m!1082453))

(declare-fun m!1084605 () Bool)

(assert (=> d!264199 m!1084605))

(assert (=> d!264199 m!1084581))

(declare-fun m!1084607 () Bool)

(assert (=> b!847878 m!1084607))

(assert (=> b!847034 d!264199))

(declare-fun b!847884 () Bool)

(declare-fun e!557963 () Bool)

(declare-fun lt!321285 () List!9149)

(assert (=> b!847884 (= e!557963 (or (not (= (++!2364 lt!320854 lt!320856) Nil!9133)) (= lt!321285 lt!320855)))))

(declare-fun b!847883 () Bool)

(declare-fun res!387637 () Bool)

(assert (=> b!847883 (=> (not res!387637) (not e!557963))))

(assert (=> b!847883 (= res!387637 (= (size!7610 lt!321285) (+ (size!7610 lt!320855) (size!7610 (++!2364 lt!320854 lt!320856)))))))

(declare-fun d!264201 () Bool)

(assert (=> d!264201 e!557963))

(declare-fun res!387638 () Bool)

(assert (=> d!264201 (=> (not res!387638) (not e!557963))))

(assert (=> d!264201 (= res!387638 (= (content!1338 lt!321285) ((_ map or) (content!1338 lt!320855) (content!1338 (++!2364 lt!320854 lt!320856)))))))

(declare-fun e!557964 () List!9149)

(assert (=> d!264201 (= lt!321285 e!557964)))

(declare-fun c!137799 () Bool)

(assert (=> d!264201 (= c!137799 ((_ is Nil!9133) lt!320855))))

(assert (=> d!264201 (= (++!2364 lt!320855 (++!2364 lt!320854 lt!320856)) lt!321285)))

(declare-fun b!847881 () Bool)

(assert (=> b!847881 (= e!557964 (++!2364 lt!320854 lt!320856))))

(declare-fun b!847882 () Bool)

(assert (=> b!847882 (= e!557964 (Cons!9133 (h!14534 lt!320855) (++!2364 (t!94489 lt!320855) (++!2364 lt!320854 lt!320856))))))

(assert (= (and d!264201 c!137799) b!847881))

(assert (= (and d!264201 (not c!137799)) b!847882))

(assert (= (and d!264201 res!387638) b!847883))

(assert (= (and b!847883 res!387637) b!847884))

(declare-fun m!1084609 () Bool)

(assert (=> b!847883 m!1084609))

(assert (=> b!847883 m!1084591))

(assert (=> b!847883 m!1082457))

(declare-fun m!1084611 () Bool)

(assert (=> b!847883 m!1084611))

(declare-fun m!1084613 () Bool)

(assert (=> d!264201 m!1084613))

(assert (=> d!264201 m!1084595))

(assert (=> d!264201 m!1082457))

(declare-fun m!1084615 () Bool)

(assert (=> d!264201 m!1084615))

(assert (=> b!847882 m!1082457))

(declare-fun m!1084617 () Bool)

(assert (=> b!847882 m!1084617))

(assert (=> b!847034 d!264201))

(declare-fun d!264203 () Bool)

(assert (=> d!264203 (= (list!3581 (charsOf!985 (h!14535 lt!320744))) (list!3585 (c!137644 (charsOf!985 (h!14535 lt!320744)))))))

(declare-fun bs!230688 () Bool)

(assert (= bs!230688 d!264203))

(declare-fun m!1084619 () Bool)

(assert (=> bs!230688 m!1084619))

(assert (=> b!847034 d!264203))

(assert (=> b!847034 d!264021))

(declare-fun c!137800 () Bool)

(declare-fun d!264205 () Bool)

(assert (=> d!264205 (= c!137800 ((_ is Cons!9134) (withSeparatorTokenList!46 thiss!20117 (t!94490 lt!320744) separatorToken!297)))))

(declare-fun e!557965 () List!9149)

(assert (=> d!264205 (= (printList!468 thiss!20117 (withSeparatorTokenList!46 thiss!20117 (t!94490 lt!320744) separatorToken!297)) e!557965)))

(declare-fun b!847885 () Bool)

(assert (=> b!847885 (= e!557965 (++!2364 (list!3581 (charsOf!985 (h!14535 (withSeparatorTokenList!46 thiss!20117 (t!94490 lt!320744) separatorToken!297)))) (printList!468 thiss!20117 (t!94490 (withSeparatorTokenList!46 thiss!20117 (t!94490 lt!320744) separatorToken!297)))))))

(declare-fun b!847886 () Bool)

(assert (=> b!847886 (= e!557965 Nil!9133)))

(assert (= (and d!264205 c!137800) b!847885))

(assert (= (and d!264205 (not c!137800)) b!847886))

(declare-fun m!1084621 () Bool)

(assert (=> b!847885 m!1084621))

(assert (=> b!847885 m!1084621))

(declare-fun m!1084623 () Bool)

(assert (=> b!847885 m!1084623))

(declare-fun m!1084625 () Bool)

(assert (=> b!847885 m!1084625))

(assert (=> b!847885 m!1084623))

(assert (=> b!847885 m!1084625))

(declare-fun m!1084627 () Bool)

(assert (=> b!847885 m!1084627))

(assert (=> b!847034 d!264205))

(assert (=> d!263575 d!263927))

(assert (=> d!263575 d!263925))

(declare-fun d!264207 () Bool)

(assert (=> d!264207 (= (list!3582 (_1!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 separatorToken!297))))) (list!3586 (c!137686 (_1!6004 (lex!612 thiss!20117 rules!2621 (print!549 thiss!20117 (singletonSeq!528 separatorToken!297)))))))))

(declare-fun bs!230689 () Bool)

(assert (= bs!230689 d!264207))

(declare-fun m!1084629 () Bool)

(assert (=> bs!230689 m!1084629))

(assert (=> d!263575 d!264207))

(assert (=> d!263575 d!263619))

(declare-fun d!264209 () Bool)

(declare-fun lt!321286 () Int)

(assert (=> d!264209 (= lt!321286 (size!7616 (list!3582 (_1!6004 lt!320860))))))

(assert (=> d!264209 (= lt!321286 (size!7617 (c!137686 (_1!6004 lt!320860))))))

(assert (=> d!264209 (= (size!7612 (_1!6004 lt!320860)) lt!321286)))

(declare-fun bs!230690 () Bool)

(assert (= bs!230690 d!264209))

(assert (=> bs!230690 m!1083707))

(assert (=> bs!230690 m!1083707))

(declare-fun m!1084631 () Bool)

(assert (=> bs!230690 m!1084631))

(declare-fun m!1084633 () Bool)

(assert (=> bs!230690 m!1084633))

(assert (=> d!263575 d!264209))

(declare-fun d!264211 () Bool)

(assert (=> d!264211 (= (list!3582 (singletonSeq!528 separatorToken!297)) (list!3586 (c!137686 (singletonSeq!528 separatorToken!297))))))

(declare-fun bs!230691 () Bool)

(assert (= bs!230691 d!264211))

(declare-fun m!1084635 () Bool)

(assert (=> bs!230691 m!1084635))

(assert (=> d!263575 d!264211))

(assert (=> d!263575 d!263929))

(declare-fun b!847887 () Bool)

(declare-fun res!387639 () Bool)

(declare-fun e!557967 () Bool)

(assert (=> b!847887 (=> res!387639 e!557967)))

(assert (=> b!847887 (= res!387639 (not ((_ is IntegerValue!5342) (value!55548 (h!14535 (t!94490 l!5107))))))))

(declare-fun e!557968 () Bool)

(assert (=> b!847887 (= e!557968 e!557967)))

(declare-fun b!847888 () Bool)

(declare-fun e!557966 () Bool)

(assert (=> b!847888 (= e!557966 e!557968)))

(declare-fun c!137801 () Bool)

(assert (=> b!847888 (= c!137801 ((_ is IntegerValue!5341) (value!55548 (h!14535 (t!94490 l!5107)))))))

(declare-fun b!847889 () Bool)

(assert (=> b!847889 (= e!557968 (inv!17 (value!55548 (h!14535 (t!94490 l!5107)))))))

(declare-fun d!264213 () Bool)

(declare-fun c!137802 () Bool)

(assert (=> d!264213 (= c!137802 ((_ is IntegerValue!5340) (value!55548 (h!14535 (t!94490 l!5107)))))))

(assert (=> d!264213 (= (inv!21 (value!55548 (h!14535 (t!94490 l!5107)))) e!557966)))

(declare-fun b!847890 () Bool)

(assert (=> b!847890 (= e!557967 (inv!15 (value!55548 (h!14535 (t!94490 l!5107)))))))

(declare-fun b!847891 () Bool)

(assert (=> b!847891 (= e!557966 (inv!16 (value!55548 (h!14535 (t!94490 l!5107)))))))

(assert (= (and d!264213 c!137802) b!847891))

(assert (= (and d!264213 (not c!137802)) b!847888))

(assert (= (and b!847888 c!137801) b!847889))

(assert (= (and b!847888 (not c!137801)) b!847887))

(assert (= (and b!847887 (not res!387639)) b!847890))

(declare-fun m!1084637 () Bool)

(assert (=> b!847889 m!1084637))

(declare-fun m!1084639 () Bool)

(assert (=> b!847890 m!1084639))

(declare-fun m!1084641 () Bool)

(assert (=> b!847891 m!1084641))

(assert (=> b!847197 d!264213))

(declare-fun d!264215 () Bool)

(declare-fun lt!321287 () Int)

(assert (=> d!264215 (>= lt!321287 0)))

(declare-fun e!557969 () Int)

(assert (=> d!264215 (= lt!321287 e!557969)))

(declare-fun c!137803 () Bool)

(assert (=> d!264215 (= c!137803 ((_ is Nil!9133) (originalCharacters!2270 separatorToken!297)))))

(assert (=> d!264215 (= (size!7610 (originalCharacters!2270 separatorToken!297)) lt!321287)))

(declare-fun b!847892 () Bool)

(assert (=> b!847892 (= e!557969 0)))

(declare-fun b!847893 () Bool)

(assert (=> b!847893 (= e!557969 (+ 1 (size!7610 (t!94489 (originalCharacters!2270 separatorToken!297)))))))

(assert (= (and d!264215 c!137803) b!847892))

(assert (= (and d!264215 (not c!137803)) b!847893))

(declare-fun m!1084643 () Bool)

(assert (=> b!847893 m!1084643))

(assert (=> b!846830 d!264215))

(declare-fun c!137804 () Bool)

(declare-fun d!264217 () Bool)

(assert (=> d!264217 (= c!137804 ((_ is Cons!9134) (withSeparatorTokenList!46 thiss!20117 (t!94490 l!5107) separatorToken!297)))))

(declare-fun e!557970 () List!9149)

(assert (=> d!264217 (= (printList!468 thiss!20117 (withSeparatorTokenList!46 thiss!20117 (t!94490 l!5107) separatorToken!297)) e!557970)))

(declare-fun b!847894 () Bool)

(assert (=> b!847894 (= e!557970 (++!2364 (list!3581 (charsOf!985 (h!14535 (withSeparatorTokenList!46 thiss!20117 (t!94490 l!5107) separatorToken!297)))) (printList!468 thiss!20117 (t!94490 (withSeparatorTokenList!46 thiss!20117 (t!94490 l!5107) separatorToken!297)))))))

(declare-fun b!847895 () Bool)

(assert (=> b!847895 (= e!557970 Nil!9133)))

(assert (= (and d!264217 c!137804) b!847894))

(assert (= (and d!264217 (not c!137804)) b!847895))

(declare-fun m!1084645 () Bool)

(assert (=> b!847894 m!1084645))

(assert (=> b!847894 m!1084645))

(declare-fun m!1084647 () Bool)

(assert (=> b!847894 m!1084647))

(declare-fun m!1084649 () Bool)

(assert (=> b!847894 m!1084649))

(assert (=> b!847894 m!1084647))

(assert (=> b!847894 m!1084649))

(declare-fun m!1084651 () Bool)

(assert (=> b!847894 m!1084651))

(assert (=> b!846965 d!264217))

(declare-fun b!847899 () Bool)

(declare-fun e!557971 () Bool)

(declare-fun lt!321288 () List!9149)

(assert (=> b!847899 (= e!557971 (or (not (= (++!2364 lt!320812 lt!320814) Nil!9133)) (= lt!321288 lt!320813)))))

(declare-fun b!847898 () Bool)

(declare-fun res!387640 () Bool)

(assert (=> b!847898 (=> (not res!387640) (not e!557971))))

(assert (=> b!847898 (= res!387640 (= (size!7610 lt!321288) (+ (size!7610 lt!320813) (size!7610 (++!2364 lt!320812 lt!320814)))))))

(declare-fun d!264219 () Bool)

(assert (=> d!264219 e!557971))

(declare-fun res!387641 () Bool)

(assert (=> d!264219 (=> (not res!387641) (not e!557971))))

(assert (=> d!264219 (= res!387641 (= (content!1338 lt!321288) ((_ map or) (content!1338 lt!320813) (content!1338 (++!2364 lt!320812 lt!320814)))))))

(declare-fun e!557972 () List!9149)

(assert (=> d!264219 (= lt!321288 e!557972)))

(declare-fun c!137805 () Bool)

(assert (=> d!264219 (= c!137805 ((_ is Nil!9133) lt!320813))))

(assert (=> d!264219 (= (++!2364 lt!320813 (++!2364 lt!320812 lt!320814)) lt!321288)))

(declare-fun b!847896 () Bool)

(assert (=> b!847896 (= e!557972 (++!2364 lt!320812 lt!320814))))

(declare-fun b!847897 () Bool)

(assert (=> b!847897 (= e!557972 (Cons!9133 (h!14534 lt!320813) (++!2364 (t!94489 lt!320813) (++!2364 lt!320812 lt!320814))))))

(assert (= (and d!264219 c!137805) b!847896))

(assert (= (and d!264219 (not c!137805)) b!847897))

(assert (= (and d!264219 res!387641) b!847898))

(assert (= (and b!847898 res!387640) b!847899))

(declare-fun m!1084653 () Bool)

(assert (=> b!847898 m!1084653))

(declare-fun m!1084655 () Bool)

(assert (=> b!847898 m!1084655))

(assert (=> b!847898 m!1082275))

(declare-fun m!1084657 () Bool)

(assert (=> b!847898 m!1084657))

(declare-fun m!1084659 () Bool)

(assert (=> d!264219 m!1084659))

(declare-fun m!1084661 () Bool)

(assert (=> d!264219 m!1084661))

(assert (=> d!264219 m!1082275))

(declare-fun m!1084663 () Bool)

(assert (=> d!264219 m!1084663))

(assert (=> b!847897 m!1082275))

(declare-fun m!1084665 () Bool)

(assert (=> b!847897 m!1084665))

(assert (=> b!846965 d!264219))

(assert (=> b!846965 d!264187))

(assert (=> b!846965 d!264193))

(declare-fun d!264221 () Bool)

(assert (=> d!264221 (= (++!2364 (++!2364 lt!320813 lt!320812) lt!320814) (++!2364 lt!320813 (++!2364 lt!320812 lt!320814)))))

(declare-fun lt!321289 () Unit!13599)

(assert (=> d!264221 (= lt!321289 (choose!5004 lt!320813 lt!320812 lt!320814))))

(assert (=> d!264221 (= (lemmaConcatAssociativity!743 lt!320813 lt!320812 lt!320814) lt!321289)))

(declare-fun bs!230692 () Bool)

(assert (= bs!230692 d!264221))

(assert (=> bs!230692 m!1082275))

(assert (=> bs!230692 m!1082277))

(assert (=> bs!230692 m!1082271))

(assert (=> bs!230692 m!1082273))

(assert (=> bs!230692 m!1082271))

(assert (=> bs!230692 m!1082275))

(declare-fun m!1084667 () Bool)

(assert (=> bs!230692 m!1084667))

(assert (=> b!846965 d!264221))

(declare-fun e!557973 () Bool)

(declare-fun b!847903 () Bool)

(declare-fun lt!321290 () List!9149)

(assert (=> b!847903 (= e!557973 (or (not (= lt!320812 Nil!9133)) (= lt!321290 lt!320813)))))

(declare-fun b!847902 () Bool)

(declare-fun res!387642 () Bool)

(assert (=> b!847902 (=> (not res!387642) (not e!557973))))

(assert (=> b!847902 (= res!387642 (= (size!7610 lt!321290) (+ (size!7610 lt!320813) (size!7610 lt!320812))))))

(declare-fun d!264223 () Bool)

(assert (=> d!264223 e!557973))

(declare-fun res!387643 () Bool)

(assert (=> d!264223 (=> (not res!387643) (not e!557973))))

(assert (=> d!264223 (= res!387643 (= (content!1338 lt!321290) ((_ map or) (content!1338 lt!320813) (content!1338 lt!320812))))))

(declare-fun e!557974 () List!9149)

(assert (=> d!264223 (= lt!321290 e!557974)))

(declare-fun c!137806 () Bool)

(assert (=> d!264223 (= c!137806 ((_ is Nil!9133) lt!320813))))

(assert (=> d!264223 (= (++!2364 lt!320813 lt!320812) lt!321290)))

(declare-fun b!847900 () Bool)

(assert (=> b!847900 (= e!557974 lt!320812)))

(declare-fun b!847901 () Bool)

(assert (=> b!847901 (= e!557974 (Cons!9133 (h!14534 lt!320813) (++!2364 (t!94489 lt!320813) lt!320812)))))

(assert (= (and d!264223 c!137806) b!847900))

(assert (= (and d!264223 (not c!137806)) b!847901))

(assert (= (and d!264223 res!387643) b!847902))

(assert (= (and b!847902 res!387642) b!847903))

(declare-fun m!1084669 () Bool)

(assert (=> b!847902 m!1084669))

(assert (=> b!847902 m!1084655))

(declare-fun m!1084671 () Bool)

(assert (=> b!847902 m!1084671))

(declare-fun m!1084673 () Bool)

(assert (=> d!264223 m!1084673))

(assert (=> d!264223 m!1084661))

(declare-fun m!1084675 () Bool)

(assert (=> d!264223 m!1084675))

(declare-fun m!1084677 () Bool)

(assert (=> b!847901 m!1084677))

(assert (=> b!846965 d!264223))

(declare-fun e!557975 () Bool)

(declare-fun b!847907 () Bool)

(declare-fun lt!321291 () List!9149)

(assert (=> b!847907 (= e!557975 (or (not (= lt!320814 Nil!9133)) (= lt!321291 (++!2364 lt!320813 lt!320812))))))

(declare-fun b!847906 () Bool)

(declare-fun res!387644 () Bool)

(assert (=> b!847906 (=> (not res!387644) (not e!557975))))

(assert (=> b!847906 (= res!387644 (= (size!7610 lt!321291) (+ (size!7610 (++!2364 lt!320813 lt!320812)) (size!7610 lt!320814))))))

(declare-fun d!264225 () Bool)

(assert (=> d!264225 e!557975))

(declare-fun res!387645 () Bool)

(assert (=> d!264225 (=> (not res!387645) (not e!557975))))

(assert (=> d!264225 (= res!387645 (= (content!1338 lt!321291) ((_ map or) (content!1338 (++!2364 lt!320813 lt!320812)) (content!1338 lt!320814))))))

(declare-fun e!557976 () List!9149)

(assert (=> d!264225 (= lt!321291 e!557976)))

(declare-fun c!137807 () Bool)

(assert (=> d!264225 (= c!137807 ((_ is Nil!9133) (++!2364 lt!320813 lt!320812)))))

(assert (=> d!264225 (= (++!2364 (++!2364 lt!320813 lt!320812) lt!320814) lt!321291)))

(declare-fun b!847904 () Bool)

(assert (=> b!847904 (= e!557976 lt!320814)))

(declare-fun b!847905 () Bool)

(assert (=> b!847905 (= e!557976 (Cons!9133 (h!14534 (++!2364 lt!320813 lt!320812)) (++!2364 (t!94489 (++!2364 lt!320813 lt!320812)) lt!320814)))))

(assert (= (and d!264225 c!137807) b!847904))

(assert (= (and d!264225 (not c!137807)) b!847905))

(assert (= (and d!264225 res!387645) b!847906))

(assert (= (and b!847906 res!387644) b!847907))

(declare-fun m!1084679 () Bool)

(assert (=> b!847906 m!1084679))

(assert (=> b!847906 m!1082271))

(declare-fun m!1084681 () Bool)

(assert (=> b!847906 m!1084681))

(declare-fun m!1084683 () Bool)

(assert (=> b!847906 m!1084683))

(declare-fun m!1084685 () Bool)

(assert (=> d!264225 m!1084685))

(assert (=> d!264225 m!1082271))

(declare-fun m!1084687 () Bool)

(assert (=> d!264225 m!1084687))

(declare-fun m!1084689 () Bool)

(assert (=> d!264225 m!1084689))

(declare-fun m!1084691 () Bool)

(assert (=> b!847905 m!1084691))

(assert (=> b!846965 d!264225))

(assert (=> b!846965 d!264083))

(declare-fun d!264227 () Bool)

(declare-fun lt!321292 () BalanceConc!6068)

(assert (=> d!264227 (= (list!3581 lt!321292) (originalCharacters!2270 (h!14535 l!5107)))))

(assert (=> d!264227 (= lt!321292 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (value!55548 (h!14535 l!5107))))))

(assert (=> d!264227 (= (charsOf!985 (h!14535 l!5107)) lt!321292)))

(declare-fun b_lambda!28093 () Bool)

(assert (=> (not b_lambda!28093) (not d!264227)))

(assert (=> d!264227 t!94517))

(declare-fun b_and!73967 () Bool)

(assert (= b_and!73957 (and (=> t!94517 result!68180) b_and!73967)))

(assert (=> d!264227 t!94519))

(declare-fun b_and!73969 () Bool)

(assert (= b_and!73965 (and (=> t!94519 result!68182) b_and!73969)))

(assert (=> d!264227 t!94550))

(declare-fun b_and!73971 () Bool)

(assert (= b_and!73959 (and (=> t!94550 result!68226) b_and!73971)))

(assert (=> d!264227 t!94521))

(declare-fun b_and!73973 () Bool)

(assert (= b_and!73961 (and (=> t!94521 result!68184) b_and!73973)))

(assert (=> d!264227 t!94556))

(declare-fun b_and!73975 () Bool)

(assert (= b_and!73963 (and (=> t!94556 result!68234) b_and!73975)))

(declare-fun m!1084693 () Bool)

(assert (=> d!264227 m!1084693))

(assert (=> d!264227 m!1082489))

(assert (=> b!846965 d!264227))

(assert (=> b!846965 d!264027))

(assert (=> b!846965 d!264029))

(declare-fun e!557977 () Bool)

(declare-fun lt!321293 () List!9149)

(declare-fun b!847911 () Bool)

(assert (=> b!847911 (= e!557977 (or (not (= lt!320814 Nil!9133)) (= lt!321293 lt!320812)))))

(declare-fun b!847910 () Bool)

(declare-fun res!387646 () Bool)

(assert (=> b!847910 (=> (not res!387646) (not e!557977))))

(assert (=> b!847910 (= res!387646 (= (size!7610 lt!321293) (+ (size!7610 lt!320812) (size!7610 lt!320814))))))

(declare-fun d!264229 () Bool)

(assert (=> d!264229 e!557977))

(declare-fun res!387647 () Bool)

(assert (=> d!264229 (=> (not res!387647) (not e!557977))))

(assert (=> d!264229 (= res!387647 (= (content!1338 lt!321293) ((_ map or) (content!1338 lt!320812) (content!1338 lt!320814))))))

(declare-fun e!557978 () List!9149)

(assert (=> d!264229 (= lt!321293 e!557978)))

(declare-fun c!137808 () Bool)

(assert (=> d!264229 (= c!137808 ((_ is Nil!9133) lt!320812))))

(assert (=> d!264229 (= (++!2364 lt!320812 lt!320814) lt!321293)))

(declare-fun b!847908 () Bool)

(assert (=> b!847908 (= e!557978 lt!320814)))

(declare-fun b!847909 () Bool)

(assert (=> b!847909 (= e!557978 (Cons!9133 (h!14534 lt!320812) (++!2364 (t!94489 lt!320812) lt!320814)))))

(assert (= (and d!264229 c!137808) b!847908))

(assert (= (and d!264229 (not c!137808)) b!847909))

(assert (= (and d!264229 res!387647) b!847910))

(assert (= (and b!847910 res!387646) b!847911))

(declare-fun m!1084695 () Bool)

(assert (=> b!847910 m!1084695))

(assert (=> b!847910 m!1084671))

(assert (=> b!847910 m!1084683))

(declare-fun m!1084697 () Bool)

(assert (=> d!264229 m!1084697))

(assert (=> d!264229 m!1084675))

(assert (=> d!264229 m!1084689))

(declare-fun m!1084699 () Bool)

(assert (=> b!847909 m!1084699))

(assert (=> b!846965 d!264229))

(declare-fun d!264231 () Bool)

(assert (=> d!264231 (= (list!3581 (charsOf!985 (h!14535 l!5107))) (list!3585 (c!137644 (charsOf!985 (h!14535 l!5107)))))))

(declare-fun bs!230693 () Bool)

(assert (= bs!230693 d!264231))

(declare-fun m!1084701 () Bool)

(assert (=> bs!230693 m!1084701))

(assert (=> b!846965 d!264231))

(declare-fun b!847913 () Bool)

(declare-fun e!557979 () Bool)

(declare-fun tp!266882 () Bool)

(declare-fun tp!266881 () Bool)

(assert (=> b!847913 (= e!557979 (and tp!266882 tp!266881))))

(declare-fun b!847915 () Bool)

(declare-fun tp!266883 () Bool)

(declare-fun tp!266884 () Bool)

(assert (=> b!847915 (= e!557979 (and tp!266883 tp!266884))))

(declare-fun b!847914 () Bool)

(declare-fun tp!266885 () Bool)

(assert (=> b!847914 (= e!557979 tp!266885)))

(declare-fun b!847912 () Bool)

(assert (=> b!847912 (= e!557979 tp_is_empty!3961)))

(assert (=> b!847184 (= tp!266717 e!557979)))

(assert (= (and b!847184 ((_ is ElementMatch!2147) (reg!2476 (regex!1714 (rule!3137 (h!14535 l!5107)))))) b!847912))

(assert (= (and b!847184 ((_ is Concat!3928) (reg!2476 (regex!1714 (rule!3137 (h!14535 l!5107)))))) b!847913))

(assert (= (and b!847184 ((_ is Star!2147) (reg!2476 (regex!1714 (rule!3137 (h!14535 l!5107)))))) b!847914))

(assert (= (and b!847184 ((_ is Union!2147) (reg!2476 (regex!1714 (rule!3137 (h!14535 l!5107)))))) b!847915))

(declare-fun b!847918 () Bool)

(declare-fun b_free!25549 () Bool)

(declare-fun b_next!25613 () Bool)

(assert (=> b!847918 (= b_free!25549 (not b_next!25613))))

(declare-fun tp!266888 () Bool)

(declare-fun b_and!73977 () Bool)

(assert (=> b!847918 (= tp!266888 b_and!73977)))

(declare-fun b_free!25551 () Bool)

(declare-fun b_next!25615 () Bool)

(assert (=> b!847918 (= b_free!25551 (not b_next!25615))))

(declare-fun tb!59057 () Bool)

(declare-fun t!94799 () Bool)

(assert (=> (and b!847918 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 (t!94491 rules!2621))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320744))))) t!94799) tb!59057))

(declare-fun result!68468 () Bool)

(assert (= result!68468 result!68458))

(assert (=> d!264189 t!94799))

(declare-fun t!94801 () Bool)

(declare-fun tb!59059 () Bool)

(assert (=> (and b!847918 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 (t!94491 rules!2621))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320815))))) t!94801) tb!59059))

(declare-fun result!68470 () Bool)

(assert (= result!68470 result!68448))

(assert (=> d!264181 t!94801))

(declare-fun tb!59061 () Bool)

(declare-fun t!94803 () Bool)

(assert (=> (and b!847918 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 (t!94491 rules!2621))))) (toChars!2598 (transformation!1714 (rule!3137 lt!320742)))) t!94803) tb!59061))

(declare-fun result!68472 () Bool)

(assert (= result!68472 result!68212))

(assert (=> d!263609 t!94803))

(declare-fun t!94805 () Bool)

(declare-fun tb!59063 () Bool)

(assert (=> (and b!847918 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 (t!94491 rules!2621))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320749))))) t!94805) tb!59063))

(declare-fun result!68474 () Bool)

(assert (= result!68474 result!68298))

(assert (=> d!263817 t!94805))

(declare-fun tb!59065 () Bool)

(declare-fun t!94807 () Bool)

(assert (=> (and b!847918 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 (t!94491 rules!2621))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107)))))) t!94807) tb!59065))

(declare-fun result!68476 () Bool)

(assert (= result!68476 result!68368))

(assert (=> b!847683 t!94807))

(declare-fun t!94809 () Bool)

(declare-fun tb!59067 () Bool)

(assert (=> (and b!847918 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 (t!94491 rules!2621))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320811))))) t!94809) tb!59067))

(declare-fun result!68478 () Bool)

(assert (= result!68478 result!68348))

(assert (=> d!264041 t!94809))

(declare-fun t!94811 () Bool)

(declare-fun tb!59069 () Bool)

(assert (=> (and b!847918 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 (t!94491 rules!2621))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 lt!320749)))))) t!94811) tb!59069))

(declare-fun result!68480 () Bool)

(assert (= result!68480 result!68262))

(assert (=> d!263771 t!94811))

(declare-fun t!94813 () Bool)

(declare-fun tb!59071 () Bool)

(assert (=> (and b!847918 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 (t!94491 rules!2621))))) (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297)))) t!94813) tb!59071))

(declare-fun result!68482 () Bool)

(assert (= result!68482 result!68166))

(assert (=> b!846829 t!94813))

(declare-fun t!94815 () Bool)

(declare-fun tb!59073 () Bool)

(assert (=> (and b!847918 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 (t!94491 rules!2621))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320857))))) t!94815) tb!59073))

(declare-fun result!68484 () Bool)

(assert (= result!68484 result!68428))

(assert (=> d!264135 t!94815))

(declare-fun t!94817 () Bool)

(declare-fun tb!59075 () Bool)

(assert (=> (and b!847918 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 (t!94491 rules!2621))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320853))))) t!94817) tb!59075))

(declare-fun result!68486 () Bool)

(assert (= result!68486 result!68288))

(assert (=> d!263813 t!94817))

(declare-fun t!94819 () Bool)

(declare-fun tb!59077 () Bool)

(assert (=> (and b!847918 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 (t!94491 rules!2621))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107))))) t!94819) tb!59077))

(declare-fun result!68488 () Bool)

(assert (= result!68488 result!68180))

(assert (=> d!264227 t!94819))

(assert (=> d!264187 t!94813))

(declare-fun t!94821 () Bool)

(declare-fun tb!59079 () Bool)

(assert (=> (and b!847918 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 (t!94491 rules!2621))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 lt!320741)))))) t!94821) tb!59079))

(declare-fun result!68490 () Bool)

(assert (= result!68490 result!68438))

(assert (=> d!264153 t!94821))

(assert (=> b!847039 t!94819))

(declare-fun b_and!73979 () Bool)

(declare-fun tp!266886 () Bool)

(assert (=> b!847918 (= tp!266886 (and (=> t!94799 result!68468) (=> t!94811 result!68480) (=> t!94819 result!68488) (=> t!94809 result!68478) (=> t!94813 result!68482) (=> t!94807 result!68476) (=> t!94815 result!68484) (=> t!94803 result!68472) (=> t!94821 result!68490) (=> t!94805 result!68474) (=> t!94801 result!68470) (=> t!94817 result!68486) b_and!73979))))

(declare-fun e!557981 () Bool)

(assert (=> b!847918 (= e!557981 (and tp!266888 tp!266886))))

(declare-fun b!847917 () Bool)

(declare-fun tp!266887 () Bool)

(declare-fun e!557983 () Bool)

(assert (=> b!847917 (= e!557983 (and tp!266887 (inv!11607 (tag!1976 (h!14536 (t!94491 (t!94491 rules!2621))))) (inv!11611 (transformation!1714 (h!14536 (t!94491 (t!94491 rules!2621))))) e!557981))))

(declare-fun b!847916 () Bool)

(declare-fun e!557982 () Bool)

(declare-fun tp!266889 () Bool)

(assert (=> b!847916 (= e!557982 (and e!557983 tp!266889))))

(assert (=> b!847208 (= tp!266744 e!557982)))

(assert (= b!847917 b!847918))

(assert (= b!847916 b!847917))

(assert (= (and b!847208 ((_ is Cons!9135) (t!94491 (t!94491 rules!2621)))) b!847916))

(declare-fun m!1084703 () Bool)

(assert (=> b!847917 m!1084703))

(declare-fun m!1084705 () Bool)

(assert (=> b!847917 m!1084705))

(declare-fun b!847920 () Bool)

(declare-fun e!557984 () Bool)

(declare-fun tp!266891 () Bool)

(declare-fun tp!266890 () Bool)

(assert (=> b!847920 (= e!557984 (and tp!266891 tp!266890))))

(declare-fun b!847922 () Bool)

(declare-fun tp!266892 () Bool)

(declare-fun tp!266893 () Bool)

(assert (=> b!847922 (= e!557984 (and tp!266892 tp!266893))))

(declare-fun b!847921 () Bool)

(declare-fun tp!266894 () Bool)

(assert (=> b!847921 (= e!557984 tp!266894)))

(declare-fun b!847919 () Bool)

(assert (=> b!847919 (= e!557984 tp_is_empty!3961)))

(assert (=> b!847185 (= tp!266715 e!557984)))

(assert (= (and b!847185 ((_ is ElementMatch!2147) (regOne!4807 (regex!1714 (rule!3137 (h!14535 l!5107)))))) b!847919))

(assert (= (and b!847185 ((_ is Concat!3928) (regOne!4807 (regex!1714 (rule!3137 (h!14535 l!5107)))))) b!847920))

(assert (= (and b!847185 ((_ is Star!2147) (regOne!4807 (regex!1714 (rule!3137 (h!14535 l!5107)))))) b!847921))

(assert (= (and b!847185 ((_ is Union!2147) (regOne!4807 (regex!1714 (rule!3137 (h!14535 l!5107)))))) b!847922))

(declare-fun b!847924 () Bool)

(declare-fun e!557985 () Bool)

(declare-fun tp!266896 () Bool)

(declare-fun tp!266895 () Bool)

(assert (=> b!847924 (= e!557985 (and tp!266896 tp!266895))))

(declare-fun b!847926 () Bool)

(declare-fun tp!266897 () Bool)

(declare-fun tp!266898 () Bool)

(assert (=> b!847926 (= e!557985 (and tp!266897 tp!266898))))

(declare-fun b!847925 () Bool)

(declare-fun tp!266899 () Bool)

(assert (=> b!847925 (= e!557985 tp!266899)))

(declare-fun b!847923 () Bool)

(assert (=> b!847923 (= e!557985 tp_is_empty!3961)))

(assert (=> b!847185 (= tp!266716 e!557985)))

(assert (= (and b!847185 ((_ is ElementMatch!2147) (regTwo!4807 (regex!1714 (rule!3137 (h!14535 l!5107)))))) b!847923))

(assert (= (and b!847185 ((_ is Concat!3928) (regTwo!4807 (regex!1714 (rule!3137 (h!14535 l!5107)))))) b!847924))

(assert (= (and b!847185 ((_ is Star!2147) (regTwo!4807 (regex!1714 (rule!3137 (h!14535 l!5107)))))) b!847925))

(assert (= (and b!847185 ((_ is Union!2147) (regTwo!4807 (regex!1714 (rule!3137 (h!14535 l!5107)))))) b!847926))

(declare-fun b!847928 () Bool)

(declare-fun e!557986 () Bool)

(declare-fun tp!266901 () Bool)

(declare-fun tp!266900 () Bool)

(assert (=> b!847928 (= e!557986 (and tp!266901 tp!266900))))

(declare-fun b!847930 () Bool)

(declare-fun tp!266902 () Bool)

(declare-fun tp!266903 () Bool)

(assert (=> b!847930 (= e!557986 (and tp!266902 tp!266903))))

(declare-fun b!847929 () Bool)

(declare-fun tp!266904 () Bool)

(assert (=> b!847929 (= e!557986 tp!266904)))

(declare-fun b!847927 () Bool)

(assert (=> b!847927 (= e!557986 tp_is_empty!3961)))

(assert (=> b!847209 (= tp!266742 e!557986)))

(assert (= (and b!847209 ((_ is ElementMatch!2147) (regex!1714 (h!14536 (t!94491 rules!2621))))) b!847927))

(assert (= (and b!847209 ((_ is Concat!3928) (regex!1714 (h!14536 (t!94491 rules!2621))))) b!847928))

(assert (= (and b!847209 ((_ is Star!2147) (regex!1714 (h!14536 (t!94491 rules!2621))))) b!847929))

(assert (= (and b!847209 ((_ is Union!2147) (regex!1714 (h!14536 (t!94491 rules!2621))))) b!847930))

(declare-fun b!847932 () Bool)

(declare-fun e!557987 () Bool)

(declare-fun tp!266906 () Bool)

(declare-fun tp!266905 () Bool)

(assert (=> b!847932 (= e!557987 (and tp!266906 tp!266905))))

(declare-fun b!847934 () Bool)

(declare-fun tp!266907 () Bool)

(declare-fun tp!266908 () Bool)

(assert (=> b!847934 (= e!557987 (and tp!266907 tp!266908))))

(declare-fun b!847933 () Bool)

(declare-fun tp!266909 () Bool)

(assert (=> b!847933 (= e!557987 tp!266909)))

(declare-fun b!847931 () Bool)

(assert (=> b!847931 (= e!557987 tp_is_empty!3961)))

(assert (=> b!847212 (= tp!266746 e!557987)))

(assert (= (and b!847212 ((_ is ElementMatch!2147) (regOne!4806 (regex!1714 (rule!3137 separatorToken!297))))) b!847931))

(assert (= (and b!847212 ((_ is Concat!3928) (regOne!4806 (regex!1714 (rule!3137 separatorToken!297))))) b!847932))

(assert (= (and b!847212 ((_ is Star!2147) (regOne!4806 (regex!1714 (rule!3137 separatorToken!297))))) b!847933))

(assert (= (and b!847212 ((_ is Union!2147) (regOne!4806 (regex!1714 (rule!3137 separatorToken!297))))) b!847934))

(declare-fun b!847936 () Bool)

(declare-fun e!557988 () Bool)

(declare-fun tp!266911 () Bool)

(declare-fun tp!266910 () Bool)

(assert (=> b!847936 (= e!557988 (and tp!266911 tp!266910))))

(declare-fun b!847938 () Bool)

(declare-fun tp!266912 () Bool)

(declare-fun tp!266913 () Bool)

(assert (=> b!847938 (= e!557988 (and tp!266912 tp!266913))))

(declare-fun b!847937 () Bool)

(declare-fun tp!266914 () Bool)

(assert (=> b!847937 (= e!557988 tp!266914)))

(declare-fun b!847935 () Bool)

(assert (=> b!847935 (= e!557988 tp_is_empty!3961)))

(assert (=> b!847212 (= tp!266745 e!557988)))

(assert (= (and b!847212 ((_ is ElementMatch!2147) (regTwo!4806 (regex!1714 (rule!3137 separatorToken!297))))) b!847935))

(assert (= (and b!847212 ((_ is Concat!3928) (regTwo!4806 (regex!1714 (rule!3137 separatorToken!297))))) b!847936))

(assert (= (and b!847212 ((_ is Star!2147) (regTwo!4806 (regex!1714 (rule!3137 separatorToken!297))))) b!847937))

(assert (= (and b!847212 ((_ is Union!2147) (regTwo!4806 (regex!1714 (rule!3137 separatorToken!297))))) b!847938))

(declare-fun b!847940 () Bool)

(declare-fun e!557989 () Bool)

(declare-fun tp!266916 () Bool)

(declare-fun tp!266915 () Bool)

(assert (=> b!847940 (= e!557989 (and tp!266916 tp!266915))))

(declare-fun b!847942 () Bool)

(declare-fun tp!266917 () Bool)

(declare-fun tp!266918 () Bool)

(assert (=> b!847942 (= e!557989 (and tp!266917 tp!266918))))

(declare-fun b!847941 () Bool)

(declare-fun tp!266919 () Bool)

(assert (=> b!847941 (= e!557989 tp!266919)))

(declare-fun b!847939 () Bool)

(assert (=> b!847939 (= e!557989 tp_is_empty!3961)))

(assert (=> b!847213 (= tp!266749 e!557989)))

(assert (= (and b!847213 ((_ is ElementMatch!2147) (reg!2476 (regex!1714 (rule!3137 separatorToken!297))))) b!847939))

(assert (= (and b!847213 ((_ is Concat!3928) (reg!2476 (regex!1714 (rule!3137 separatorToken!297))))) b!847940))

(assert (= (and b!847213 ((_ is Star!2147) (reg!2476 (regex!1714 (rule!3137 separatorToken!297))))) b!847941))

(assert (= (and b!847213 ((_ is Union!2147) (reg!2476 (regex!1714 (rule!3137 separatorToken!297))))) b!847942))

(declare-fun b!847944 () Bool)

(declare-fun e!557990 () Bool)

(declare-fun tp!266921 () Bool)

(declare-fun tp!266920 () Bool)

(assert (=> b!847944 (= e!557990 (and tp!266921 tp!266920))))

(declare-fun b!847946 () Bool)

(declare-fun tp!266922 () Bool)

(declare-fun tp!266923 () Bool)

(assert (=> b!847946 (= e!557990 (and tp!266922 tp!266923))))

(declare-fun b!847945 () Bool)

(declare-fun tp!266924 () Bool)

(assert (=> b!847945 (= e!557990 tp!266924)))

(declare-fun b!847943 () Bool)

(assert (=> b!847943 (= e!557990 tp_is_empty!3961)))

(assert (=> b!847214 (= tp!266747 e!557990)))

(assert (= (and b!847214 ((_ is ElementMatch!2147) (regOne!4807 (regex!1714 (rule!3137 separatorToken!297))))) b!847943))

(assert (= (and b!847214 ((_ is Concat!3928) (regOne!4807 (regex!1714 (rule!3137 separatorToken!297))))) b!847944))

(assert (= (and b!847214 ((_ is Star!2147) (regOne!4807 (regex!1714 (rule!3137 separatorToken!297))))) b!847945))

(assert (= (and b!847214 ((_ is Union!2147) (regOne!4807 (regex!1714 (rule!3137 separatorToken!297))))) b!847946))

(declare-fun b!847948 () Bool)

(declare-fun e!557991 () Bool)

(declare-fun tp!266926 () Bool)

(declare-fun tp!266925 () Bool)

(assert (=> b!847948 (= e!557991 (and tp!266926 tp!266925))))

(declare-fun b!847950 () Bool)

(declare-fun tp!266927 () Bool)

(declare-fun tp!266928 () Bool)

(assert (=> b!847950 (= e!557991 (and tp!266927 tp!266928))))

(declare-fun b!847949 () Bool)

(declare-fun tp!266929 () Bool)

(assert (=> b!847949 (= e!557991 tp!266929)))

(declare-fun b!847947 () Bool)

(assert (=> b!847947 (= e!557991 tp_is_empty!3961)))

(assert (=> b!847214 (= tp!266748 e!557991)))

(assert (= (and b!847214 ((_ is ElementMatch!2147) (regTwo!4807 (regex!1714 (rule!3137 separatorToken!297))))) b!847947))

(assert (= (and b!847214 ((_ is Concat!3928) (regTwo!4807 (regex!1714 (rule!3137 separatorToken!297))))) b!847948))

(assert (= (and b!847214 ((_ is Star!2147) (regTwo!4807 (regex!1714 (rule!3137 separatorToken!297))))) b!847949))

(assert (= (and b!847214 ((_ is Union!2147) (regTwo!4807 (regex!1714 (rule!3137 separatorToken!297))))) b!847950))

(declare-fun b!847953 () Bool)

(declare-fun e!557994 () Bool)

(assert (=> b!847953 (= e!557994 true)))

(declare-fun b!847952 () Bool)

(declare-fun e!557993 () Bool)

(assert (=> b!847952 (= e!557993 e!557994)))

(declare-fun b!847951 () Bool)

(declare-fun e!557992 () Bool)

(assert (=> b!847951 (= e!557992 e!557993)))

(assert (=> b!847053 e!557992))

(assert (= b!847952 b!847953))

(assert (= b!847951 b!847952))

(assert (= (and b!847053 ((_ is Cons!9135) (t!94491 rules!2621))) b!847951))

(assert (=> b!847953 (< (dynLambda!4236 order!5823 (toValue!2739 (transformation!1714 (h!14536 (t!94491 rules!2621))))) (dynLambda!4237 order!5825 lambda!25230))))

(assert (=> b!847953 (< (dynLambda!4238 order!5827 (toChars!2598 (transformation!1714 (h!14536 (t!94491 rules!2621))))) (dynLambda!4237 order!5825 lambda!25230))))

(declare-fun b!847962 () Bool)

(declare-fun e!557999 () Bool)

(declare-fun tp!266937 () Bool)

(declare-fun tp!266938 () Bool)

(assert (=> b!847962 (= e!557999 (and (inv!11614 (left!6761 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (value!55548 (h!14535 l!5107)))))) tp!266937 (inv!11614 (right!7091 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (value!55548 (h!14535 l!5107)))))) tp!266938))))

(declare-fun b!847964 () Bool)

(declare-fun e!558000 () Bool)

(declare-fun tp!266936 () Bool)

(assert (=> b!847964 (= e!558000 tp!266936)))

(declare-fun b!847963 () Bool)

(declare-fun inv!11621 (IArray!6059) Bool)

(assert (=> b!847963 (= e!557999 (and (inv!11621 (xs!5716 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (value!55548 (h!14535 l!5107)))))) e!558000))))

(assert (=> b!847041 (= tp!266636 (and (inv!11614 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (value!55548 (h!14535 l!5107))))) e!557999))))

(assert (= (and b!847041 ((_ is Node!3027) (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (value!55548 (h!14535 l!5107)))))) b!847962))

(assert (= b!847963 b!847964))

(assert (= (and b!847041 ((_ is Leaf!4472) (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (value!55548 (h!14535 l!5107)))))) b!847963))

(declare-fun m!1084707 () Bool)

(assert (=> b!847962 m!1084707))

(declare-fun m!1084709 () Bool)

(assert (=> b!847962 m!1084709))

(declare-fun m!1084711 () Bool)

(assert (=> b!847963 m!1084711))

(assert (=> b!847041 m!1082483))

(declare-fun b!847965 () Bool)

(declare-fun e!558001 () Bool)

(declare-fun tp!266939 () Bool)

(assert (=> b!847965 (= e!558001 (and tp_is_empty!3961 tp!266939))))

(assert (=> b!847167 (= tp!266697 e!558001)))

(assert (= (and b!847167 ((_ is Cons!9133) (t!94489 (originalCharacters!2270 separatorToken!297)))) b!847965))

(declare-fun b!847967 () Bool)

(declare-fun e!558002 () Bool)

(declare-fun tp!266941 () Bool)

(declare-fun tp!266940 () Bool)

(assert (=> b!847967 (= e!558002 (and tp!266941 tp!266940))))

(declare-fun b!847969 () Bool)

(declare-fun tp!266942 () Bool)

(declare-fun tp!266943 () Bool)

(assert (=> b!847969 (= e!558002 (and tp!266942 tp!266943))))

(declare-fun b!847968 () Bool)

(declare-fun tp!266944 () Bool)

(assert (=> b!847968 (= e!558002 tp!266944)))

(declare-fun b!847966 () Bool)

(assert (=> b!847966 (= e!558002 tp_is_empty!3961)))

(assert (=> b!847183 (= tp!266714 e!558002)))

(assert (= (and b!847183 ((_ is ElementMatch!2147) (regOne!4806 (regex!1714 (rule!3137 (h!14535 l!5107)))))) b!847966))

(assert (= (and b!847183 ((_ is Concat!3928) (regOne!4806 (regex!1714 (rule!3137 (h!14535 l!5107)))))) b!847967))

(assert (= (and b!847183 ((_ is Star!2147) (regOne!4806 (regex!1714 (rule!3137 (h!14535 l!5107)))))) b!847968))

(assert (= (and b!847183 ((_ is Union!2147) (regOne!4806 (regex!1714 (rule!3137 (h!14535 l!5107)))))) b!847969))

(declare-fun b!847971 () Bool)

(declare-fun e!558003 () Bool)

(declare-fun tp!266946 () Bool)

(declare-fun tp!266945 () Bool)

(assert (=> b!847971 (= e!558003 (and tp!266946 tp!266945))))

(declare-fun b!847973 () Bool)

(declare-fun tp!266947 () Bool)

(declare-fun tp!266948 () Bool)

(assert (=> b!847973 (= e!558003 (and tp!266947 tp!266948))))

(declare-fun b!847972 () Bool)

(declare-fun tp!266949 () Bool)

(assert (=> b!847972 (= e!558003 tp!266949)))

(declare-fun b!847970 () Bool)

(assert (=> b!847970 (= e!558003 tp_is_empty!3961)))

(assert (=> b!847183 (= tp!266713 e!558003)))

(assert (= (and b!847183 ((_ is ElementMatch!2147) (regTwo!4806 (regex!1714 (rule!3137 (h!14535 l!5107)))))) b!847970))

(assert (= (and b!847183 ((_ is Concat!3928) (regTwo!4806 (regex!1714 (rule!3137 (h!14535 l!5107)))))) b!847971))

(assert (= (and b!847183 ((_ is Star!2147) (regTwo!4806 (regex!1714 (rule!3137 (h!14535 l!5107)))))) b!847972))

(assert (= (and b!847183 ((_ is Union!2147) (regTwo!4806 (regex!1714 (rule!3137 (h!14535 l!5107)))))) b!847973))

(declare-fun tp!266951 () Bool)

(declare-fun e!558004 () Bool)

(declare-fun b!847974 () Bool)

(declare-fun tp!266952 () Bool)

(assert (=> b!847974 (= e!558004 (and (inv!11614 (left!6761 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (value!55548 separatorToken!297))))) tp!266951 (inv!11614 (right!7091 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (value!55548 separatorToken!297))))) tp!266952))))

(declare-fun b!847976 () Bool)

(declare-fun e!558005 () Bool)

(declare-fun tp!266950 () Bool)

(assert (=> b!847976 (= e!558005 tp!266950)))

(declare-fun b!847975 () Bool)

(assert (=> b!847975 (= e!558004 (and (inv!11621 (xs!5716 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (value!55548 separatorToken!297))))) e!558005))))

(assert (=> b!846835 (= tp!266634 (and (inv!11614 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (value!55548 separatorToken!297)))) e!558004))))

(assert (= (and b!846835 ((_ is Node!3027) (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (value!55548 separatorToken!297))))) b!847974))

(assert (= b!847975 b!847976))

(assert (= (and b!846835 ((_ is Leaf!4472) (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (value!55548 separatorToken!297))))) b!847975))

(declare-fun m!1084713 () Bool)

(assert (=> b!847974 m!1084713))

(declare-fun m!1084715 () Bool)

(assert (=> b!847974 m!1084715))

(declare-fun m!1084717 () Bool)

(assert (=> b!847975 m!1084717))

(assert (=> b!846835 m!1082115))

(declare-fun b!847978 () Bool)

(declare-fun e!558006 () Bool)

(declare-fun tp!266954 () Bool)

(declare-fun tp!266953 () Bool)

(assert (=> b!847978 (= e!558006 (and tp!266954 tp!266953))))

(declare-fun b!847980 () Bool)

(declare-fun tp!266955 () Bool)

(declare-fun tp!266956 () Bool)

(assert (=> b!847980 (= e!558006 (and tp!266955 tp!266956))))

(declare-fun b!847979 () Bool)

(declare-fun tp!266957 () Bool)

(assert (=> b!847979 (= e!558006 tp!266957)))

(declare-fun b!847977 () Bool)

(assert (=> b!847977 (= e!558006 tp_is_empty!3961)))

(assert (=> b!847179 (= tp!266709 e!558006)))

(assert (= (and b!847179 ((_ is ElementMatch!2147) (regOne!4806 (regex!1714 (h!14536 rules!2621))))) b!847977))

(assert (= (and b!847179 ((_ is Concat!3928) (regOne!4806 (regex!1714 (h!14536 rules!2621))))) b!847978))

(assert (= (and b!847179 ((_ is Star!2147) (regOne!4806 (regex!1714 (h!14536 rules!2621))))) b!847979))

(assert (= (and b!847179 ((_ is Union!2147) (regOne!4806 (regex!1714 (h!14536 rules!2621))))) b!847980))

(declare-fun b!847982 () Bool)

(declare-fun e!558007 () Bool)

(declare-fun tp!266959 () Bool)

(declare-fun tp!266958 () Bool)

(assert (=> b!847982 (= e!558007 (and tp!266959 tp!266958))))

(declare-fun b!847984 () Bool)

(declare-fun tp!266960 () Bool)

(declare-fun tp!266961 () Bool)

(assert (=> b!847984 (= e!558007 (and tp!266960 tp!266961))))

(declare-fun b!847983 () Bool)

(declare-fun tp!266962 () Bool)

(assert (=> b!847983 (= e!558007 tp!266962)))

(declare-fun b!847981 () Bool)

(assert (=> b!847981 (= e!558007 tp_is_empty!3961)))

(assert (=> b!847179 (= tp!266708 e!558007)))

(assert (= (and b!847179 ((_ is ElementMatch!2147) (regTwo!4806 (regex!1714 (h!14536 rules!2621))))) b!847981))

(assert (= (and b!847179 ((_ is Concat!3928) (regTwo!4806 (regex!1714 (h!14536 rules!2621))))) b!847982))

(assert (= (and b!847179 ((_ is Star!2147) (regTwo!4806 (regex!1714 (h!14536 rules!2621))))) b!847983))

(assert (= (and b!847179 ((_ is Union!2147) (regTwo!4806 (regex!1714 (h!14536 rules!2621))))) b!847984))

(declare-fun b!847986 () Bool)

(declare-fun e!558008 () Bool)

(declare-fun tp!266964 () Bool)

(declare-fun tp!266963 () Bool)

(assert (=> b!847986 (= e!558008 (and tp!266964 tp!266963))))

(declare-fun b!847988 () Bool)

(declare-fun tp!266965 () Bool)

(declare-fun tp!266966 () Bool)

(assert (=> b!847988 (= e!558008 (and tp!266965 tp!266966))))

(declare-fun b!847987 () Bool)

(declare-fun tp!266967 () Bool)

(assert (=> b!847987 (= e!558008 tp!266967)))

(declare-fun b!847985 () Bool)

(assert (=> b!847985 (= e!558008 tp_is_empty!3961)))

(assert (=> b!847180 (= tp!266712 e!558008)))

(assert (= (and b!847180 ((_ is ElementMatch!2147) (reg!2476 (regex!1714 (h!14536 rules!2621))))) b!847985))

(assert (= (and b!847180 ((_ is Concat!3928) (reg!2476 (regex!1714 (h!14536 rules!2621))))) b!847986))

(assert (= (and b!847180 ((_ is Star!2147) (reg!2476 (regex!1714 (h!14536 rules!2621))))) b!847987))

(assert (= (and b!847180 ((_ is Union!2147) (reg!2476 (regex!1714 (h!14536 rules!2621))))) b!847988))

(declare-fun b!847990 () Bool)

(declare-fun e!558009 () Bool)

(declare-fun tp!266969 () Bool)

(declare-fun tp!266968 () Bool)

(assert (=> b!847990 (= e!558009 (and tp!266969 tp!266968))))

(declare-fun b!847992 () Bool)

(declare-fun tp!266970 () Bool)

(declare-fun tp!266971 () Bool)

(assert (=> b!847992 (= e!558009 (and tp!266970 tp!266971))))

(declare-fun b!847991 () Bool)

(declare-fun tp!266972 () Bool)

(assert (=> b!847991 (= e!558009 tp!266972)))

(declare-fun b!847989 () Bool)

(assert (=> b!847989 (= e!558009 tp_is_empty!3961)))

(assert (=> b!847181 (= tp!266710 e!558009)))

(assert (= (and b!847181 ((_ is ElementMatch!2147) (regOne!4807 (regex!1714 (h!14536 rules!2621))))) b!847989))

(assert (= (and b!847181 ((_ is Concat!3928) (regOne!4807 (regex!1714 (h!14536 rules!2621))))) b!847990))

(assert (= (and b!847181 ((_ is Star!2147) (regOne!4807 (regex!1714 (h!14536 rules!2621))))) b!847991))

(assert (= (and b!847181 ((_ is Union!2147) (regOne!4807 (regex!1714 (h!14536 rules!2621))))) b!847992))

(declare-fun b!847994 () Bool)

(declare-fun e!558010 () Bool)

(declare-fun tp!266974 () Bool)

(declare-fun tp!266973 () Bool)

(assert (=> b!847994 (= e!558010 (and tp!266974 tp!266973))))

(declare-fun b!847996 () Bool)

(declare-fun tp!266975 () Bool)

(declare-fun tp!266976 () Bool)

(assert (=> b!847996 (= e!558010 (and tp!266975 tp!266976))))

(declare-fun b!847995 () Bool)

(declare-fun tp!266977 () Bool)

(assert (=> b!847995 (= e!558010 tp!266977)))

(declare-fun b!847993 () Bool)

(assert (=> b!847993 (= e!558010 tp_is_empty!3961)))

(assert (=> b!847181 (= tp!266711 e!558010)))

(assert (= (and b!847181 ((_ is ElementMatch!2147) (regTwo!4807 (regex!1714 (h!14536 rules!2621))))) b!847993))

(assert (= (and b!847181 ((_ is Concat!3928) (regTwo!4807 (regex!1714 (h!14536 rules!2621))))) b!847994))

(assert (= (and b!847181 ((_ is Star!2147) (regTwo!4807 (regex!1714 (h!14536 rules!2621))))) b!847995))

(assert (= (and b!847181 ((_ is Union!2147) (regTwo!4807 (regex!1714 (h!14536 rules!2621))))) b!847996))

(declare-fun b!847999 () Bool)

(declare-fun e!558013 () Bool)

(assert (=> b!847999 (= e!558013 true)))

(declare-fun b!847998 () Bool)

(declare-fun e!558012 () Bool)

(assert (=> b!847998 (= e!558012 e!558013)))

(declare-fun b!847997 () Bool)

(declare-fun e!558011 () Bool)

(assert (=> b!847997 (= e!558011 e!558012)))

(assert (=> b!846898 e!558011))

(assert (= b!847998 b!847999))

(assert (= b!847997 b!847998))

(assert (= (and b!846898 ((_ is Cons!9135) (t!94491 rules!2621))) b!847997))

(assert (=> b!847999 (< (dynLambda!4236 order!5823 (toValue!2739 (transformation!1714 (h!14536 (t!94491 rules!2621))))) (dynLambda!4237 order!5825 lambda!25226))))

(assert (=> b!847999 (< (dynLambda!4238 order!5827 (toChars!2598 (transformation!1714 (h!14536 (t!94491 rules!2621))))) (dynLambda!4237 order!5825 lambda!25226))))

(declare-fun tp!266979 () Bool)

(declare-fun tp!266980 () Bool)

(declare-fun e!558014 () Bool)

(declare-fun b!848000 () Bool)

(assert (=> b!848000 (= e!558014 (and (inv!11614 (left!6761 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 lt!320742))) (value!55548 lt!320742))))) tp!266979 (inv!11614 (right!7091 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 lt!320742))) (value!55548 lt!320742))))) tp!266980))))

(declare-fun b!848002 () Bool)

(declare-fun e!558015 () Bool)

(declare-fun tp!266978 () Bool)

(assert (=> b!848002 (= e!558015 tp!266978)))

(declare-fun b!848001 () Bool)

(assert (=> b!848001 (= e!558014 (and (inv!11621 (xs!5716 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 lt!320742))) (value!55548 lt!320742))))) e!558015))))

(assert (=> b!847147 (= tp!266694 (and (inv!11614 (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 lt!320742))) (value!55548 lt!320742)))) e!558014))))

(assert (= (and b!847147 ((_ is Node!3027) (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 lt!320742))) (value!55548 lt!320742))))) b!848000))

(assert (= b!848001 b!848002))

(assert (= (and b!847147 ((_ is Leaf!4472) (c!137644 (dynLambda!4235 (toChars!2598 (transformation!1714 (rule!3137 lt!320742))) (value!55548 lt!320742))))) b!848001))

(declare-fun m!1084719 () Bool)

(assert (=> b!848000 m!1084719))

(declare-fun m!1084721 () Bool)

(assert (=> b!848000 m!1084721))

(declare-fun m!1084723 () Bool)

(assert (=> b!848001 m!1084723))

(assert (=> b!847147 m!1082657))

(declare-fun b!848006 () Bool)

(declare-fun b_free!25553 () Bool)

(declare-fun b_next!25617 () Bool)

(assert (=> b!848006 (= b_free!25553 (not b_next!25617))))

(declare-fun tp!266985 () Bool)

(declare-fun b_and!73981 () Bool)

(assert (=> b!848006 (= tp!266985 b_and!73981)))

(declare-fun b_free!25555 () Bool)

(declare-fun b_next!25619 () Bool)

(assert (=> b!848006 (= b_free!25555 (not b_next!25619))))

(declare-fun t!94823 () Bool)

(declare-fun tb!59081 () Bool)

(assert (=> (and b!848006 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 (t!94490 l!5107)))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320744))))) t!94823) tb!59081))

(declare-fun result!68494 () Bool)

(assert (= result!68494 result!68458))

(assert (=> d!264189 t!94823))

(declare-fun tb!59083 () Bool)

(declare-fun t!94825 () Bool)

(assert (=> (and b!848006 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 (t!94490 l!5107)))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320815))))) t!94825) tb!59083))

(declare-fun result!68496 () Bool)

(assert (= result!68496 result!68448))

(assert (=> d!264181 t!94825))

(declare-fun tb!59085 () Bool)

(declare-fun t!94827 () Bool)

(assert (=> (and b!848006 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 (t!94490 l!5107)))))) (toChars!2598 (transformation!1714 (rule!3137 lt!320742)))) t!94827) tb!59085))

(declare-fun result!68498 () Bool)

(assert (= result!68498 result!68212))

(assert (=> d!263609 t!94827))

(declare-fun t!94829 () Bool)

(declare-fun tb!59087 () Bool)

(assert (=> (and b!848006 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 (t!94490 l!5107)))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320749))))) t!94829) tb!59087))

(declare-fun result!68500 () Bool)

(assert (= result!68500 result!68298))

(assert (=> d!263817 t!94829))

(declare-fun t!94831 () Bool)

(declare-fun tb!59089 () Bool)

(assert (=> (and b!848006 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 (t!94490 l!5107)))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107)))))) t!94831) tb!59089))

(declare-fun result!68502 () Bool)

(assert (= result!68502 result!68368))

(assert (=> b!847683 t!94831))

(declare-fun tb!59091 () Bool)

(declare-fun t!94833 () Bool)

(assert (=> (and b!848006 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 (t!94490 l!5107)))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320811))))) t!94833) tb!59091))

(declare-fun result!68504 () Bool)

(assert (= result!68504 result!68348))

(assert (=> d!264041 t!94833))

(declare-fun tb!59093 () Bool)

(declare-fun t!94835 () Bool)

(assert (=> (and b!848006 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 (t!94490 l!5107)))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 lt!320749)))))) t!94835) tb!59093))

(declare-fun result!68506 () Bool)

(assert (= result!68506 result!68262))

(assert (=> d!263771 t!94835))

(declare-fun tb!59095 () Bool)

(declare-fun t!94837 () Bool)

(assert (=> (and b!848006 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 (t!94490 l!5107)))))) (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297)))) t!94837) tb!59095))

(declare-fun result!68508 () Bool)

(assert (= result!68508 result!68166))

(assert (=> b!846829 t!94837))

(declare-fun tb!59097 () Bool)

(declare-fun t!94839 () Bool)

(assert (=> (and b!848006 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 (t!94490 l!5107)))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320857))))) t!94839) tb!59097))

(declare-fun result!68510 () Bool)

(assert (= result!68510 result!68428))

(assert (=> d!264135 t!94839))

(declare-fun t!94841 () Bool)

(declare-fun tb!59099 () Bool)

(assert (=> (and b!848006 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 (t!94490 l!5107)))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 lt!320853))))) t!94841) tb!59099))

(declare-fun result!68512 () Bool)

(assert (= result!68512 result!68288))

(assert (=> d!263813 t!94841))

(declare-fun t!94843 () Bool)

(declare-fun tb!59101 () Bool)

(assert (=> (and b!848006 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 (t!94490 l!5107)))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107))))) t!94843) tb!59101))

(declare-fun result!68514 () Bool)

(assert (= result!68514 result!68180))

(assert (=> d!264227 t!94843))

(assert (=> d!264187 t!94837))

(declare-fun t!94845 () Bool)

(declare-fun tb!59103 () Bool)

(assert (=> (and b!848006 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 (t!94490 l!5107)))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 lt!320741)))))) t!94845) tb!59103))

(declare-fun result!68516 () Bool)

(assert (= result!68516 result!68438))

(assert (=> d!264153 t!94845))

(assert (=> b!847039 t!94843))

(declare-fun tp!266982 () Bool)

(declare-fun b_and!73983 () Bool)

(assert (=> b!848006 (= tp!266982 (and (=> t!94843 result!68514) (=> t!94835 result!68506) (=> t!94845 result!68516) (=> t!94823 result!68494) (=> t!94827 result!68498) (=> t!94833 result!68504) (=> t!94841 result!68512) (=> t!94825 result!68496) (=> t!94839 result!68510) (=> t!94829 result!68500) (=> t!94837 result!68508) (=> t!94831 result!68502) b_and!73983))))

(declare-fun e!558017 () Bool)

(declare-fun b!848005 () Bool)

(declare-fun tp!266981 () Bool)

(declare-fun e!558019 () Bool)

(assert (=> b!848005 (= e!558017 (and tp!266981 (inv!11607 (tag!1976 (rule!3137 (h!14535 (t!94490 (t!94490 l!5107)))))) (inv!11611 (transformation!1714 (rule!3137 (h!14535 (t!94490 (t!94490 l!5107)))))) e!558019))))

(declare-fun b!848003 () Bool)

(declare-fun tp!266984 () Bool)

(declare-fun e!558016 () Bool)

(declare-fun e!558020 () Bool)

(assert (=> b!848003 (= e!558016 (and (inv!11610 (h!14535 (t!94490 (t!94490 l!5107)))) e!558020 tp!266984))))

(assert (=> b!848006 (= e!558019 (and tp!266985 tp!266982))))

(declare-fun b!848004 () Bool)

(declare-fun tp!266983 () Bool)

(assert (=> b!848004 (= e!558020 (and (inv!21 (value!55548 (h!14535 (t!94490 (t!94490 l!5107))))) e!558017 tp!266983))))

(assert (=> b!847196 (= tp!266731 e!558016)))

(assert (= b!848005 b!848006))

(assert (= b!848004 b!848005))

(assert (= b!848003 b!848004))

(assert (= (and b!847196 ((_ is Cons!9134) (t!94490 (t!94490 l!5107)))) b!848003))

(declare-fun m!1084725 () Bool)

(assert (=> b!848005 m!1084725))

(declare-fun m!1084727 () Bool)

(assert (=> b!848005 m!1084727))

(declare-fun m!1084729 () Bool)

(assert (=> b!848003 m!1084729))

(declare-fun m!1084731 () Bool)

(assert (=> b!848004 m!1084731))

(declare-fun b!848007 () Bool)

(declare-fun e!558022 () Bool)

(declare-fun tp!266986 () Bool)

(assert (=> b!848007 (= e!558022 (and tp_is_empty!3961 tp!266986))))

(assert (=> b!847215 (= tp!266750 e!558022)))

(assert (= (and b!847215 ((_ is Cons!9133) (t!94489 (originalCharacters!2270 (h!14535 l!5107))))) b!848007))

(declare-fun b!848008 () Bool)

(declare-fun e!558023 () Bool)

(declare-fun tp!266987 () Bool)

(assert (=> b!848008 (= e!558023 (and tp_is_empty!3961 tp!266987))))

(assert (=> b!847197 (= tp!266730 e!558023)))

(assert (= (and b!847197 ((_ is Cons!9133) (originalCharacters!2270 (h!14535 (t!94490 l!5107))))) b!848008))

(declare-fun b!848010 () Bool)

(declare-fun e!558024 () Bool)

(declare-fun tp!266989 () Bool)

(declare-fun tp!266988 () Bool)

(assert (=> b!848010 (= e!558024 (and tp!266989 tp!266988))))

(declare-fun b!848012 () Bool)

(declare-fun tp!266990 () Bool)

(declare-fun tp!266991 () Bool)

(assert (=> b!848012 (= e!558024 (and tp!266990 tp!266991))))

(declare-fun b!848011 () Bool)

(declare-fun tp!266992 () Bool)

(assert (=> b!848011 (= e!558024 tp!266992)))

(declare-fun b!848009 () Bool)

(assert (=> b!848009 (= e!558024 tp_is_empty!3961)))

(assert (=> b!847198 (= tp!266728 e!558024)))

(assert (= (and b!847198 ((_ is ElementMatch!2147) (regex!1714 (rule!3137 (h!14535 (t!94490 l!5107)))))) b!848009))

(assert (= (and b!847198 ((_ is Concat!3928) (regex!1714 (rule!3137 (h!14535 (t!94490 l!5107)))))) b!848010))

(assert (= (and b!847198 ((_ is Star!2147) (regex!1714 (rule!3137 (h!14535 (t!94490 l!5107)))))) b!848011))

(assert (= (and b!847198 ((_ is Union!2147) (regex!1714 (rule!3137 (h!14535 (t!94490 l!5107)))))) b!848012))

(declare-fun b!848015 () Bool)

(declare-fun e!558027 () Bool)

(assert (=> b!848015 (= e!558027 true)))

(declare-fun b!848014 () Bool)

(declare-fun e!558026 () Bool)

(assert (=> b!848014 (= e!558026 e!558027)))

(declare-fun b!848013 () Bool)

(declare-fun e!558025 () Bool)

(assert (=> b!848013 (= e!558025 e!558026)))

(assert (=> b!846928 e!558025))

(assert (= b!848014 b!848015))

(assert (= b!848013 b!848014))

(assert (= (and b!846928 ((_ is Cons!9135) (t!94491 rules!2621))) b!848013))

(assert (=> b!848015 (< (dynLambda!4236 order!5823 (toValue!2739 (transformation!1714 (h!14536 (t!94491 rules!2621))))) (dynLambda!4237 order!5825 lambda!25228))))

(assert (=> b!848015 (< (dynLambda!4238 order!5827 (toChars!2598 (transformation!1714 (h!14536 (t!94491 rules!2621))))) (dynLambda!4237 order!5825 lambda!25228))))

(declare-fun b_lambda!28095 () Bool)

(assert (= b_lambda!28053 (or d!263525 b_lambda!28095)))

(declare-fun bs!230694 () Bool)

(declare-fun d!264233 () Bool)

(assert (= bs!230694 (and d!264233 d!263525)))

(assert (=> bs!230694 (= (dynLambda!4239 lambda!25228 (h!14535 lt!320749)) (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 lt!320749)))))

(assert (=> bs!230694 m!1082227))

(assert (=> b!847573 d!264233))

(declare-fun b_lambda!28097 () Bool)

(assert (= b_lambda!28011 (or (and b!847918 b_free!25551 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 (t!94491 rules!2621))))) (toChars!2598 (transformation!1714 (rule!3137 lt!320742))))) (and b!846786 b_free!25523 (= (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (toChars!2598 (transformation!1714 (rule!3137 lt!320742))))) (and b!846785 b_free!25515 (= (toChars!2598 (transformation!1714 (h!14536 rules!2621))) (toChars!2598 (transformation!1714 (rule!3137 lt!320742))))) (and b!847199 b_free!25535 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))) (toChars!2598 (transformation!1714 (rule!3137 lt!320742))))) (and b!847210 b_free!25539 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 rules!2621)))) (toChars!2598 (transformation!1714 (rule!3137 lt!320742))))) (and b!846779 b_free!25519 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (toChars!2598 (transformation!1714 (rule!3137 lt!320742))))) (and b!848006 b_free!25555 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 (t!94490 l!5107)))))) (toChars!2598 (transformation!1714 (rule!3137 lt!320742))))) b_lambda!28097)))

(declare-fun b_lambda!28099 () Bool)

(assert (= b_lambda!28051 (or b!846787 b_lambda!28099)))

(declare-fun bs!230695 () Bool)

(declare-fun d!264235 () Bool)

(assert (= bs!230695 (and d!264235 b!846787)))

(assert (=> bs!230695 (= (dynLambda!4239 lambda!25220 (h!14535 (t!94490 l!5107))) (not (isSeparator!1714 (rule!3137 (h!14535 (t!94490 l!5107))))))))

(assert (=> b!847555 d!264235))

(declare-fun b_lambda!28101 () Bool)

(assert (= b_lambda!28049 (or d!263579 b_lambda!28101)))

(declare-fun bs!230696 () Bool)

(declare-fun d!264237 () Bool)

(assert (= bs!230696 (and d!264237 d!263579)))

(assert (=> bs!230696 (= (dynLambda!4239 lambda!25230 (h!14535 lt!320741)) (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 lt!320741)))))

(assert (=> bs!230696 m!1082519))

(assert (=> b!847535 d!264237))

(declare-fun b_lambda!28103 () Bool)

(assert (= b_lambda!28065 (or d!263489 b_lambda!28103)))

(declare-fun bs!230697 () Bool)

(declare-fun d!264239 () Bool)

(assert (= bs!230697 (and d!264239 d!263489)))

(assert (=> bs!230697 (= (dynLambda!4239 lambda!25226 (h!14535 l!5107)) (rulesProduceIndividualToken!580 thiss!20117 rules!2621 (h!14535 l!5107)))))

(assert (=> bs!230697 m!1082157))

(assert (=> b!847765 d!264239))

(declare-fun b_lambda!28105 () Bool)

(assert (= b_lambda!28063 (or (and b!846785 b_free!25515 (= (toChars!2598 (transformation!1714 (h!14536 rules!2621))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))))) (and b!848006 b_free!25555 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 (t!94490 l!5107)))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))))) (and b!847210 b_free!25539 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 rules!2621)))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))))) (and b!846786 b_free!25523 (= (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))))) (and b!846779 b_free!25519 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))))) (and b!847199 b_free!25535) (and b!847918 b_free!25551 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 (t!94491 rules!2621))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))))) b_lambda!28105)))

(declare-fun b_lambda!28107 () Bool)

(assert (= b_lambda!28089 (or (and b!846786 b_free!25523) (and b!848006 b_free!25555 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 (t!94490 l!5107)))))) (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))))) (and b!846779 b_free!25519 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))) (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))))) (and b!846785 b_free!25515 (= (toChars!2598 (transformation!1714 (h!14536 rules!2621))) (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))))) (and b!847210 b_free!25539 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 rules!2621)))) (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))))) (and b!847918 b_free!25551 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 (t!94491 rules!2621))))) (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))))) (and b!847199 b_free!25535 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))) (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))))) b_lambda!28107)))

(declare-fun b_lambda!28109 () Bool)

(assert (= b_lambda!28093 (or (and b!848006 b_free!25555 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 (t!94490 l!5107)))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))))) (and b!846786 b_free!25523 (= (toChars!2598 (transformation!1714 (rule!3137 separatorToken!297))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))))) (and b!846779 b_free!25519) (and b!847199 b_free!25535 (= (toChars!2598 (transformation!1714 (rule!3137 (h!14535 (t!94490 l!5107))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))))) (and b!846785 b_free!25515 (= (toChars!2598 (transformation!1714 (h!14536 rules!2621))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))))) (and b!847210 b_free!25539 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 rules!2621)))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))))) (and b!847918 b_free!25551 (= (toChars!2598 (transformation!1714 (h!14536 (t!94491 (t!94491 rules!2621))))) (toChars!2598 (transformation!1714 (rule!3137 (h!14535 l!5107)))))) b_lambda!28109)))

(check-sat b_and!73693 b_and!73967 (not b!847644) (not b!847978) (not b!847879) (not b!847529) (not d!263907) (not d!263905) (not b!848012) (not b!847980) (not d!263745) (not b!847419) (not d!264023) (not b!847853) (not b_lambda!28091) (not d!264133) (not b!847653) (not d!263803) b_and!73979 (not b!847414) (not b!847683) (not d!264121) (not b!846835) (not b!847656) b_and!73741 (not b!847530) (not d!263799) (not b!847561) (not b_lambda!28103) (not d!263939) (not d!263817) (not d!264151) (not d!264219) (not d!264181) (not b_next!25581) (not b!847673) (not bs!230694) (not b!847938) (not d!264149) (not b!847424) (not d!264131) (not b!847990) (not b!847840) (not b_next!25615) (not b!847937) (not d!264129) (not b!847438) (not b!847834) (not b!847857) (not d!263943) (not b!847909) (not b!847823) (not b!847841) (not b!847565) (not b!847670) (not b!847968) (not b!847929) (not b!847975) (not d!264077) (not b!848002) (not b!847649) (not b!847973) b_and!73981 (not b!847450) (not b!847934) (not b!847562) (not b!847871) (not d!264153) (not b!847563) (not b!847875) b_and!73745 (not b!847564) (not b!847527) (not b!847944) (not b!847926) (not b_lambda!28105) (not d!264135) (not d!263801) (not b!847969) (not b!847835) (not d!264227) (not d!263809) (not b!847554) (not d!264163) (not b!847722) (not b!847558) (not b!847851) (not b!847992) (not b!847425) (not b!847868) (not b_lambda!28017) (not b!847925) (not b!847930) (not b!848005) (not b!847962) (not b!847837) (not b!847546) (not b!847848) (not d!263805) (not b!847591) (not b!847844) (not b!847446) (not b_next!25599) (not b!847718) (not b_lambda!28041) (not d!264199) (not b!848001) (not b!848007) (not d!264147) (not b!847589) (not b!847933) b_and!73969 (not d!263827) (not b!847660) (not b!847914) (not tb!58939) (not b_lambda!28099) (not tb!58853) (not d!263947) (not d!264069) (not b!847671) (not b!847915) (not d!263915) (not d!264013) (not b!847571) (not d!264229) (not b!847551) (not b!847723) b_and!73685 (not d!264145) (not b_next!25601) (not b!847422) (not b!847878) (not d!264085) (not b!847967) (not b!847829) (not tb!59047) (not b!847704) (not b_lambda!28015) (not d!264177) (not b!847951) (not b_lambda!28097) (not tb!58959) (not d!263917) (not b!848011) (not b!847863) (not b!847846) (not b!847862) (not b!847536) (not b!847828) (not d!264185) b_and!73689 (not d!263811) (not b!847685) (not d!264029) (not d!263923) (not d!263925) (not b!847541) (not d!263909) (not d!264173) (not d!264157) (not d!264125) (not b!847449) (not b!847838) (not d!264191) (not d!263959) (not b!847963) (not d!264211) (not d!264193) (not d!263683) (not d!263691) (not b!847897) (not d!264109) (not b!847724) (not b!847534) (not d!264171) (not b!847665) (not b!847922) (not b!848003) (not b!847811) (not b!847984) (not b_next!25619) (not d!263919) (not b!847932) (not b!847910) (not d!264209) (not b!847972) (not b!847976) (not b!847553) (not b!847677) (not d!263937) (not b_lambda!28095) (not b!847652) (not b!847531) (not b!847866) (not b!847814) (not d!264057) (not d!264035) (not d!263807) (not b_lambda!28013) (not b!847885) (not b!847852) (not tb!59017) (not b!847572) (not b!847874) (not b!847916) (not d!264159) (not b!847544) (not d!263819) (not b!847979) (not d!264047) (not b!847684) (not d!263831) (not b!847987) (not b!847850) (not d!263933) (not b!847995) (not d!264107) (not b!847928) (not b_next!25603) (not d!264127) (not d!264079) (not b_lambda!28035) (not d!264039) (not b!847447) (not d!264045) (not d!264201) (not d!263963) (not d!264117) (not b!847668) (not b!847924) (not b!847646) (not d!264167) (not b!847986) (not d!264203) (not b!847818) (not b!847590) (not d!263813) (not b!847661) (not d!264207) b_and!73977 (not b!847994) (not b!847894) (not d!264021) (not b!847949) (not b!847974) (not b!847416) b_and!73971 (not d!263945) (not bm!50484) (not b!847147) (not b!847557) (not b!847686) (not b!847825) (not b!847770) (not b!848004) (not b!847584) b_and!73973 (not b_lambda!28059) (not tb!58889) (not b!847860) (not b!848010) (not b_lambda!28039) b_and!73983 (not d!264111) (not b!847890) (not d!264189) (not d!264143) (not b!847889) (not b!847870) (not d!263913) (not d!264155) (not b!847902) (not b_next!25617) (not b!847542) (not d!263899) (not d!263821) (not d!263829) (not b_next!25579) (not b!847856) (not bs!230697) (not d!263775) (not d!264161) (not b!847766) (not d!263681) (not d!263823) (not d!264073) (not b!847543) (not b!847445) (not b_lambda!28087) (not b!847586) (not b!847664) (not b_lambda!28101) (not b!847946) (not b!847997) (not tb!59027) (not b!848000) (not b!847917) (not d!263941) (not d!264037) (not b!847845) (not b!848008) (not b!847965) (not b!847676) (not b!847648) (not b!847743) (not b!847921) (not bs!230696) (not b!847991) (not d!263901) (not d!264141) (not b!847988) (not b!847556) (not b!847824) (not b!847945) (not b_next!25613) (not tb!58879) (not b_next!25577) tp_is_empty!3961 (not d!264231) (not b!847843) (not b!847381) (not b!847983) (not d!263825) (not b!847443) (not b!847913) (not d!264041) (not b!847415) (not d!264225) (not d!264195) (not b_lambda!28085) (not d!264139) (not b!847982) (not b!847041) (not d!264115) (not b!847552) (not b!847891) (not b!847940) (not b!847905) (not b!847936) (not b!847865) (not b_next!25587) (not b!847674) (not b_lambda!28083) (not b!847549) (not b!847842) (not b_next!25583) (not b_next!25597) (not b!847448) (not b!847830) (not b!847942) (not b!847574) (not d!263927) (not d!263929) (not tb!59037) (not d!264197) (not b!847451) (not b!847658) (not b!847560) (not b_next!25585) (not b!847816) (not b!847971) (not d!264223) (not b!847893) (not b_lambda!28109) (not b!848013) (not d!264123) (not b!847906) b_and!73975 (not b!847996) (not b!847847) (not b!847941) (not b!847379) (not b_lambda!28107) (not b!847882) (not d!264179) (not b!847435) (not b!847948) (not b!847545) (not b!847950) (not b!847901) (not b!847436) (not b!847964) (not b!847858) (not b!847898) (not d!264221) (not d!263771) (not b!847423) (not b!847883) (not d!264187) (not b!847413) (not b!847920))
(check-sat (not b_next!25581) (not b_next!25615) b_and!73981 b_and!73745 (not b_next!25599) b_and!73969 b_and!73689 (not b_next!25619) (not b_next!25603) b_and!73977 b_and!73983 (not b_next!25613) (not b_next!25577) (not b_next!25587) (not b_next!25585) b_and!73975 b_and!73693 b_and!73967 b_and!73741 b_and!73979 (not b_next!25601) b_and!73685 b_and!73971 b_and!73973 (not b_next!25617) (not b_next!25579) (not b_next!25583) (not b_next!25597))
