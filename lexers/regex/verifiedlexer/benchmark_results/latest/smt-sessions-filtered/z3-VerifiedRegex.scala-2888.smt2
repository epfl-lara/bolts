; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!168666 () Bool)

(assert start!168666)

(declare-fun b!1721134 () Bool)

(declare-fun b_free!46907 () Bool)

(declare-fun b_next!47611 () Bool)

(assert (=> b!1721134 (= b_free!46907 (not b_next!47611))))

(declare-fun tp!491449 () Bool)

(declare-fun b_and!125699 () Bool)

(assert (=> b!1721134 (= tp!491449 b_and!125699)))

(declare-fun b_free!46909 () Bool)

(declare-fun b_next!47613 () Bool)

(assert (=> b!1721134 (= b_free!46909 (not b_next!47613))))

(declare-fun tp!491448 () Bool)

(declare-fun b_and!125701 () Bool)

(assert (=> b!1721134 (= tp!491448 b_and!125701)))

(declare-fun b!1721126 () Bool)

(declare-fun b_free!46911 () Bool)

(declare-fun b_next!47615 () Bool)

(assert (=> b!1721126 (= b_free!46911 (not b_next!47615))))

(declare-fun tp!491445 () Bool)

(declare-fun b_and!125703 () Bool)

(assert (=> b!1721126 (= tp!491445 b_and!125703)))

(declare-fun b_free!46913 () Bool)

(declare-fun b_next!47617 () Bool)

(assert (=> b!1721126 (= b_free!46913 (not b_next!47617))))

(declare-fun tp!491452 () Bool)

(declare-fun b_and!125705 () Bool)

(assert (=> b!1721126 (= tp!491452 b_and!125705)))

(declare-fun b!1721131 () Bool)

(declare-fun b_free!46915 () Bool)

(declare-fun b_next!47619 () Bool)

(assert (=> b!1721131 (= b_free!46915 (not b_next!47619))))

(declare-fun tp!491453 () Bool)

(declare-fun b_and!125707 () Bool)

(assert (=> b!1721131 (= tp!491453 b_and!125707)))

(declare-fun b_free!46917 () Bool)

(declare-fun b_next!47621 () Bool)

(assert (=> b!1721131 (= b_free!46917 (not b_next!47621))))

(declare-fun tp!491447 () Bool)

(declare-fun b_and!125709 () Bool)

(assert (=> b!1721131 (= tp!491447 b_and!125709)))

(declare-fun b!1721164 () Bool)

(declare-fun e!1100905 () Bool)

(assert (=> b!1721164 (= e!1100905 true)))

(declare-fun b!1721163 () Bool)

(declare-fun e!1100904 () Bool)

(assert (=> b!1721163 (= e!1100904 e!1100905)))

(declare-fun b!1721162 () Bool)

(declare-fun e!1100903 () Bool)

(assert (=> b!1721162 (= e!1100903 e!1100904)))

(declare-fun b!1721143 () Bool)

(assert (=> b!1721143 e!1100903))

(assert (= b!1721163 b!1721164))

(assert (= b!1721162 b!1721163))

(assert (= b!1721143 b!1721162))

(declare-fun lambda!69116 () Int)

(declare-fun order!11477 () Int)

(declare-datatypes ((List!18906 0))(
  ( (Nil!18836) (Cons!18836 (h!24237 (_ BitVec 16)) (t!159509 List!18906)) )
))
(declare-datatypes ((TokenValue!3427 0))(
  ( (FloatLiteralValue!6854 (text!24434 List!18906)) (TokenValueExt!3426 (__x!12156 Int)) (Broken!17135 (value!104751 List!18906)) (Object!3496) (End!3427) (Def!3427) (Underscore!3427) (Match!3427) (Else!3427) (Error!3427) (Case!3427) (If!3427) (Extends!3427) (Abstract!3427) (Class!3427) (Val!3427) (DelimiterValue!6854 (del!3487 List!18906)) (KeywordValue!3433 (value!104752 List!18906)) (CommentValue!6854 (value!104753 List!18906)) (WhitespaceValue!6854 (value!104754 List!18906)) (IndentationValue!3427 (value!104755 List!18906)) (String!21466) (Int32!3427) (Broken!17136 (value!104756 List!18906)) (Boolean!3428) (Unit!32676) (OperatorValue!3430 (op!3487 List!18906)) (IdentifierValue!6854 (value!104757 List!18906)) (IdentifierValue!6855 (value!104758 List!18906)) (WhitespaceValue!6855 (value!104759 List!18906)) (True!6854) (False!6854) (Broken!17137 (value!104760 List!18906)) (Broken!17138 (value!104761 List!18906)) (True!6855) (RightBrace!3427) (RightBracket!3427) (Colon!3427) (Null!3427) (Comma!3427) (LeftBracket!3427) (False!6855) (LeftBrace!3427) (ImaginaryLiteralValue!3427 (text!24435 List!18906)) (StringLiteralValue!10281 (value!104762 List!18906)) (EOFValue!3427 (value!104763 List!18906)) (IdentValue!3427 (value!104764 List!18906)) (DelimiterValue!6855 (value!104765 List!18906)) (DedentValue!3427 (value!104766 List!18906)) (NewLineValue!3427 (value!104767 List!18906)) (IntegerValue!10281 (value!104768 (_ BitVec 32)) (text!24436 List!18906)) (IntegerValue!10282 (value!104769 Int) (text!24437 List!18906)) (Times!3427) (Or!3427) (Equal!3427) (Minus!3427) (Broken!17139 (value!104770 List!18906)) (And!3427) (Div!3427) (LessEqual!3427) (Mod!3427) (Concat!8092) (Not!3427) (Plus!3427) (SpaceValue!3427 (value!104771 List!18906)) (IntegerValue!10283 (value!104772 Int) (text!24438 List!18906)) (StringLiteralValue!10282 (text!24439 List!18906)) (FloatLiteralValue!6855 (text!24440 List!18906)) (BytesLiteralValue!3427 (value!104773 List!18906)) (CommentValue!6855 (value!104774 List!18906)) (StringLiteralValue!10283 (value!104775 List!18906)) (ErrorTokenValue!3427 (msg!3488 List!18906)) )
))
(declare-datatypes ((C!9504 0))(
  ( (C!9505 (val!5348 Int)) )
))
(declare-datatypes ((List!18907 0))(
  ( (Nil!18837) (Cons!18837 (h!24238 C!9504) (t!159510 List!18907)) )
))
(declare-datatypes ((Regex!4665 0))(
  ( (ElementMatch!4665 (c!281616 C!9504)) (Concat!8093 (regOne!9842 Regex!4665) (regTwo!9842 Regex!4665)) (EmptyExpr!4665) (Star!4665 (reg!4994 Regex!4665)) (EmptyLang!4665) (Union!4665 (regOne!9843 Regex!4665) (regTwo!9843 Regex!4665)) )
))
(declare-datatypes ((String!21467 0))(
  ( (String!21468 (value!104776 String)) )
))
(declare-datatypes ((IArray!12535 0))(
  ( (IArray!12536 (innerList!6325 List!18907)) )
))
(declare-datatypes ((Conc!6265 0))(
  ( (Node!6265 (left!15031 Conc!6265) (right!15361 Conc!6265) (csize!12760 Int) (cheight!6476 Int)) (Leaf!9154 (xs!9141 IArray!12535) (csize!12761 Int)) (Empty!6265) )
))
(declare-datatypes ((BalanceConc!12474 0))(
  ( (BalanceConc!12475 (c!281617 Conc!6265)) )
))
(declare-datatypes ((TokenValueInjection!6514 0))(
  ( (TokenValueInjection!6515 (toValue!4844 Int) (toChars!4703 Int)) )
))
(declare-datatypes ((Rule!6474 0))(
  ( (Rule!6475 (regex!3337 Regex!4665) (tag!3647 String!21467) (isSeparator!3337 Bool) (transformation!3337 TokenValueInjection!6514)) )
))
(declare-datatypes ((Token!6240 0))(
  ( (Token!6241 (value!104777 TokenValue!3427) (rule!5283 Rule!6474) (size!14968 Int) (originalCharacters!4151 List!18907)) )
))
(declare-datatypes ((tuple2!18530 0))(
  ( (tuple2!18531 (_1!10667 Token!6240) (_2!10667 List!18907)) )
))
(declare-fun lt!658369 () tuple2!18530)

(declare-fun order!11475 () Int)

(declare-fun dynLambda!8672 (Int Int) Int)

(declare-fun dynLambda!8673 (Int Int) Int)

(assert (=> b!1721164 (< (dynLambda!8672 order!11475 (toValue!4844 (transformation!3337 (rule!5283 (_1!10667 lt!658369))))) (dynLambda!8673 order!11477 lambda!69116))))

(declare-fun order!11479 () Int)

(declare-fun dynLambda!8674 (Int Int) Int)

(assert (=> b!1721164 (< (dynLambda!8674 order!11479 (toChars!4703 (transformation!3337 (rule!5283 (_1!10667 lt!658369))))) (dynLambda!8673 order!11477 lambda!69116))))

(declare-fun b!1721125 () Bool)

(declare-fun e!1100874 () Bool)

(declare-fun e!1100883 () Bool)

(declare-fun tp!491451 () Bool)

(assert (=> b!1721125 (= e!1100874 (and e!1100883 tp!491451))))

(declare-fun e!1100892 () Bool)

(assert (=> b!1721126 (= e!1100892 (and tp!491445 tp!491452))))

(declare-fun b!1721127 () Bool)

(declare-fun rule!422 () Rule!6474)

(declare-fun e!1100882 () Bool)

(declare-fun e!1100880 () Bool)

(declare-fun tp!491454 () Bool)

(declare-fun inv!24323 (String!21467) Bool)

(declare-fun inv!24328 (TokenValueInjection!6514) Bool)

(assert (=> b!1721127 (= e!1100882 (and tp!491454 (inv!24323 (tag!3647 rule!422)) (inv!24328 (transformation!3337 rule!422)) e!1100880))))

(declare-fun b!1721128 () Bool)

(declare-fun e!1100875 () Bool)

(declare-fun e!1100872 () Bool)

(assert (=> b!1721128 (= e!1100875 e!1100872)))

(declare-fun res!772167 () Bool)

(assert (=> b!1721128 (=> (not res!772167) (not e!1100872))))

(declare-datatypes ((Option!3698 0))(
  ( (None!3697) (Some!3697 (v!25100 tuple2!18530)) )
))
(declare-fun lt!658362 () Option!3698)

(declare-fun isDefined!3041 (Option!3698) Bool)

(assert (=> b!1721128 (= res!772167 (isDefined!3041 lt!658362))))

(declare-datatypes ((LexerInterface!2966 0))(
  ( (LexerInterfaceExt!2963 (__x!12157 Int)) (Lexer!2964) )
))
(declare-fun thiss!24550 () LexerInterface!2966)

(declare-fun lt!658378 () List!18907)

(declare-datatypes ((List!18908 0))(
  ( (Nil!18838) (Cons!18838 (h!24239 Rule!6474) (t!159511 List!18908)) )
))
(declare-fun rules!3447 () List!18908)

(declare-fun maxPrefix!1520 (LexerInterface!2966 List!18908 List!18907) Option!3698)

(assert (=> b!1721128 (= lt!658362 (maxPrefix!1520 thiss!24550 rules!3447 lt!658378))))

(declare-fun token!523 () Token!6240)

(declare-fun list!7610 (BalanceConc!12474) List!18907)

(declare-fun charsOf!1986 (Token!6240) BalanceConc!12474)

(assert (=> b!1721128 (= lt!658378 (list!7610 (charsOf!1986 token!523)))))

(declare-fun b!1721129 () Bool)

(declare-fun e!1100876 () Bool)

(declare-fun tp!491455 () Bool)

(declare-fun e!1100873 () Bool)

(declare-fun inv!21 (TokenValue!3427) Bool)

(assert (=> b!1721129 (= e!1100876 (and (inv!21 (value!104777 token!523)) e!1100873 tp!491455))))

(declare-fun b!1721130 () Bool)

(declare-fun e!1100889 () Bool)

(declare-fun e!1100888 () Bool)

(assert (=> b!1721130 (= e!1100889 e!1100888)))

(declare-fun res!772172 () Bool)

(assert (=> b!1721130 (=> res!772172 e!1100888)))

(declare-fun lt!658365 () Option!3698)

(declare-fun lt!658371 () List!18907)

(declare-fun lt!658382 () BalanceConc!12474)

(declare-fun apply!5142 (TokenValueInjection!6514 BalanceConc!12474) TokenValue!3427)

(declare-fun size!14969 (BalanceConc!12474) Int)

(assert (=> b!1721130 (= res!772172 (not (= lt!658365 (Some!3697 (tuple2!18531 (Token!6241 (apply!5142 (transformation!3337 (rule!5283 (_1!10667 lt!658369))) lt!658382) (rule!5283 (_1!10667 lt!658369)) (size!14969 lt!658382) lt!658371) (_2!10667 lt!658369))))))))

(declare-datatypes ((Unit!32677 0))(
  ( (Unit!32678) )
))
(declare-fun lt!658368 () Unit!32677)

(declare-fun lemmaCharactersSize!409 (Token!6240) Unit!32677)

(assert (=> b!1721130 (= lt!658368 (lemmaCharactersSize!409 (_1!10667 lt!658369)))))

(declare-fun lt!658384 () Unit!32677)

(declare-fun lemmaEqSameImage!262 (TokenValueInjection!6514 BalanceConc!12474 BalanceConc!12474) Unit!32677)

(declare-fun seqFromList!2311 (List!18907) BalanceConc!12474)

(assert (=> b!1721130 (= lt!658384 (lemmaEqSameImage!262 (transformation!3337 (rule!5283 (_1!10667 lt!658369))) lt!658382 (seqFromList!2311 (originalCharacters!4151 (_1!10667 lt!658369)))))))

(declare-fun res!772168 () Bool)

(assert (=> start!168666 (=> (not res!772168) (not e!1100875))))

(get-info :version)

(assert (=> start!168666 (= res!772168 ((_ is Lexer!2964) thiss!24550))))

(assert (=> start!168666 e!1100875))

(declare-fun e!1100877 () Bool)

(assert (=> start!168666 e!1100877))

(assert (=> start!168666 e!1100882))

(assert (=> start!168666 true))

(declare-fun inv!24329 (Token!6240) Bool)

(assert (=> start!168666 (and (inv!24329 token!523) e!1100876)))

(assert (=> start!168666 e!1100874))

(assert (=> b!1721131 (= e!1100880 (and tp!491453 tp!491447))))

(declare-fun b!1721132 () Bool)

(declare-fun e!1100893 () Bool)

(declare-fun e!1100881 () Bool)

(assert (=> b!1721132 (= e!1100893 e!1100881)))

(declare-fun res!772181 () Bool)

(assert (=> b!1721132 (=> res!772181 e!1100881)))

(declare-fun suffix!1421 () List!18907)

(declare-fun lt!658372 () Regex!4665)

(declare-fun prefixMatch!550 (Regex!4665 List!18907) Bool)

(declare-fun ++!5162 (List!18907 List!18907) List!18907)

(declare-fun head!3890 (List!18907) C!9504)

(assert (=> b!1721132 (= res!772181 (prefixMatch!550 lt!658372 (++!5162 lt!658378 (Cons!18837 (head!3890 suffix!1421) Nil!18837))))))

(declare-fun rulesRegex!695 (LexerInterface!2966 List!18908) Regex!4665)

(assert (=> b!1721132 (= lt!658372 (rulesRegex!695 thiss!24550 rules!3447))))

(declare-fun b!1721133 () Bool)

(declare-fun tp!491456 () Bool)

(assert (=> b!1721133 (= e!1100873 (and tp!491456 (inv!24323 (tag!3647 (rule!5283 token!523))) (inv!24328 (transformation!3337 (rule!5283 token!523))) e!1100892))))

(declare-fun e!1100884 () Bool)

(assert (=> b!1721134 (= e!1100884 (and tp!491449 tp!491448))))

(declare-fun b!1721135 () Bool)

(declare-fun res!772165 () Bool)

(assert (=> b!1721135 (=> (not res!772165) (not e!1100875))))

(declare-fun contains!3359 (List!18908 Rule!6474) Bool)

(assert (=> b!1721135 (= res!772165 (contains!3359 rules!3447 rule!422))))

(declare-fun b!1721136 () Bool)

(declare-fun e!1100878 () Bool)

(assert (=> b!1721136 (= e!1100881 e!1100878)))

(declare-fun res!772171 () Bool)

(assert (=> b!1721136 (=> res!772171 e!1100878)))

(declare-fun lt!658361 () List!18907)

(declare-fun isPrefix!1578 (List!18907 List!18907) Bool)

(assert (=> b!1721136 (= res!772171 (not (isPrefix!1578 lt!658371 lt!658361)))))

(assert (=> b!1721136 (isPrefix!1578 lt!658371 (++!5162 lt!658371 (_2!10667 lt!658369)))))

(declare-fun lt!658379 () Unit!32677)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1088 (List!18907 List!18907) Unit!32677)

(assert (=> b!1721136 (= lt!658379 (lemmaConcatTwoListThenFirstIsPrefix!1088 lt!658371 (_2!10667 lt!658369)))))

(assert (=> b!1721136 (= lt!658371 (list!7610 lt!658382))))

(assert (=> b!1721136 (= lt!658382 (charsOf!1986 (_1!10667 lt!658369)))))

(declare-fun e!1100886 () Bool)

(assert (=> b!1721136 e!1100886))

(declare-fun res!772179 () Bool)

(assert (=> b!1721136 (=> (not res!772179) (not e!1100886))))

(declare-datatypes ((Option!3699 0))(
  ( (None!3698) (Some!3698 (v!25101 Rule!6474)) )
))
(declare-fun lt!658373 () Option!3699)

(declare-fun isDefined!3042 (Option!3699) Bool)

(assert (=> b!1721136 (= res!772179 (isDefined!3042 lt!658373))))

(declare-fun getRuleFromTag!387 (LexerInterface!2966 List!18908 String!21467) Option!3699)

(assert (=> b!1721136 (= lt!658373 (getRuleFromTag!387 thiss!24550 rules!3447 (tag!3647 (rule!5283 (_1!10667 lt!658369)))))))

(declare-fun lt!658380 () Unit!32677)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!387 (LexerInterface!2966 List!18908 List!18907 Token!6240) Unit!32677)

(assert (=> b!1721136 (= lt!658380 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!387 thiss!24550 rules!3447 lt!658361 (_1!10667 lt!658369)))))

(declare-fun get!5584 (Option!3698) tuple2!18530)

(assert (=> b!1721136 (= lt!658369 (get!5584 lt!658365))))

(declare-fun lt!658363 () Unit!32677)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!490 (LexerInterface!2966 List!18908 List!18907 List!18907) Unit!32677)

(assert (=> b!1721136 (= lt!658363 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!490 thiss!24550 rules!3447 lt!658378 suffix!1421))))

(assert (=> b!1721136 (= lt!658365 (maxPrefix!1520 thiss!24550 rules!3447 lt!658361))))

(assert (=> b!1721136 (isPrefix!1578 lt!658378 lt!658361)))

(declare-fun lt!658376 () Unit!32677)

(assert (=> b!1721136 (= lt!658376 (lemmaConcatTwoListThenFirstIsPrefix!1088 lt!658378 suffix!1421))))

(assert (=> b!1721136 (= lt!658361 (++!5162 lt!658378 suffix!1421))))

(declare-fun b!1721137 () Bool)

(declare-fun res!772182 () Bool)

(assert (=> b!1721137 (=> (not res!772182) (not e!1100875))))

(declare-fun isEmpty!11845 (List!18908) Bool)

(assert (=> b!1721137 (= res!772182 (not (isEmpty!11845 rules!3447)))))

(declare-fun b!1721138 () Bool)

(declare-fun tp_is_empty!7573 () Bool)

(declare-fun tp!491446 () Bool)

(assert (=> b!1721138 (= e!1100877 (and tp_is_empty!7573 tp!491446))))

(declare-fun b!1721139 () Bool)

(declare-fun e!1100894 () Bool)

(assert (=> b!1721139 (= e!1100894 e!1100889)))

(declare-fun res!772174 () Bool)

(assert (=> b!1721139 (=> res!772174 e!1100889)))

(declare-fun dynLambda!8675 (Int TokenValue!3427) BalanceConc!12474)

(declare-fun dynLambda!8676 (Int BalanceConc!12474) TokenValue!3427)

(assert (=> b!1721139 (= res!772174 (not (= (list!7610 (dynLambda!8675 (toChars!4703 (transformation!3337 (rule!5283 (_1!10667 lt!658369)))) (dynLambda!8676 (toValue!4844 (transformation!3337 (rule!5283 (_1!10667 lt!658369)))) lt!658382))) lt!658371)))))

(declare-fun lt!658383 () Unit!32677)

(declare-fun lemmaSemiInverse!483 (TokenValueInjection!6514 BalanceConc!12474) Unit!32677)

(assert (=> b!1721139 (= lt!658383 (lemmaSemiInverse!483 (transformation!3337 (rule!5283 (_1!10667 lt!658369))) lt!658382))))

(declare-fun b!1721140 () Bool)

(declare-fun e!1100891 () Bool)

(assert (=> b!1721140 (= e!1100886 e!1100891)))

(declare-fun res!772173 () Bool)

(assert (=> b!1721140 (=> (not res!772173) (not e!1100891))))

(declare-fun lt!658381 () Rule!6474)

(declare-fun matchR!2139 (Regex!4665 List!18907) Bool)

(assert (=> b!1721140 (= res!772173 (matchR!2139 (regex!3337 lt!658381) (list!7610 (charsOf!1986 (_1!10667 lt!658369)))))))

(declare-fun get!5585 (Option!3699) Rule!6474)

(assert (=> b!1721140 (= lt!658381 (get!5585 lt!658373))))

(declare-fun b!1721141 () Bool)

(declare-fun tp!491450 () Bool)

(assert (=> b!1721141 (= e!1100883 (and tp!491450 (inv!24323 (tag!3647 (h!24239 rules!3447))) (inv!24328 (transformation!3337 (h!24239 rules!3447))) e!1100884))))

(declare-fun b!1721142 () Bool)

(declare-fun res!772183 () Bool)

(assert (=> b!1721142 (=> res!772183 e!1100878)))

(assert (=> b!1721142 (= res!772183 (not (matchR!2139 (regex!3337 (rule!5283 (_1!10667 lt!658369))) lt!658371)))))

(assert (=> b!1721143 (= e!1100878 e!1100894)))

(declare-fun res!772177 () Bool)

(assert (=> b!1721143 (=> res!772177 e!1100894)))

(declare-fun Forall!712 (Int) Bool)

(assert (=> b!1721143 (= res!772177 (not (Forall!712 lambda!69116)))))

(declare-fun lt!658360 () Unit!32677)

(declare-fun lemmaInv!544 (TokenValueInjection!6514) Unit!32677)

(assert (=> b!1721143 (= lt!658360 (lemmaInv!544 (transformation!3337 (rule!5283 (_1!10667 lt!658369)))))))

(declare-fun b!1721144 () Bool)

(assert (=> b!1721144 (= e!1100891 (= (rule!5283 (_1!10667 lt!658369)) lt!658381))))

(declare-fun b!1721145 () Bool)

(declare-fun e!1100895 () Bool)

(assert (=> b!1721145 (= e!1100895 (not e!1100893))))

(declare-fun res!772178 () Bool)

(assert (=> b!1721145 (=> res!772178 e!1100893)))

(assert (=> b!1721145 (= res!772178 (not (matchR!2139 (regex!3337 rule!422) lt!658378)))))

(declare-fun ruleValid!836 (LexerInterface!2966 Rule!6474) Bool)

(assert (=> b!1721145 (ruleValid!836 thiss!24550 rule!422)))

(declare-fun lt!658377 () Unit!32677)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!360 (LexerInterface!2966 Rule!6474 List!18908) Unit!32677)

(assert (=> b!1721145 (= lt!658377 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!360 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1721146 () Bool)

(assert (=> b!1721146 (= e!1100872 e!1100895)))

(declare-fun res!772184 () Bool)

(assert (=> b!1721146 (=> (not res!772184) (not e!1100895))))

(declare-fun lt!658359 () tuple2!18530)

(assert (=> b!1721146 (= res!772184 (= (_1!10667 lt!658359) token!523))))

(assert (=> b!1721146 (= lt!658359 (get!5584 lt!658362))))

(declare-fun b!1721147 () Bool)

(declare-fun res!772176 () Bool)

(assert (=> b!1721147 (=> (not res!772176) (not e!1100895))))

(declare-fun isEmpty!11846 (List!18907) Bool)

(assert (=> b!1721147 (= res!772176 (isEmpty!11846 (_2!10667 lt!658359)))))

(declare-fun b!1721148 () Bool)

(declare-fun res!772166 () Bool)

(assert (=> b!1721148 (=> res!772166 e!1100889)))

(assert (=> b!1721148 (= res!772166 (not (= lt!658382 (dynLambda!8675 (toChars!4703 (transformation!3337 (rule!5283 (_1!10667 lt!658369)))) (value!104777 (_1!10667 lt!658369))))))))

(declare-fun b!1721149 () Bool)

(declare-fun e!1100885 () Bool)

(assert (=> b!1721149 (= e!1100885 true)))

(assert (=> b!1721149 (matchR!2139 lt!658372 lt!658378)))

(declare-fun lt!658364 () Unit!32677)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!86 (LexerInterface!2966 List!18908 List!18907 Token!6240 Rule!6474 List!18907) Unit!32677)

(assert (=> b!1721149 (= lt!658364 (lemmaMaxPrefixThenMatchesRulesRegex!86 thiss!24550 rules!3447 lt!658378 token!523 rule!422 Nil!18837))))

(declare-fun b!1721150 () Bool)

(declare-fun res!772175 () Bool)

(assert (=> b!1721150 (=> (not res!772175) (not e!1100875))))

(declare-fun rulesInvariant!2635 (LexerInterface!2966 List!18908) Bool)

(assert (=> b!1721150 (= res!772175 (rulesInvariant!2635 thiss!24550 rules!3447))))

(declare-fun b!1721151 () Bool)

(declare-fun res!772180 () Bool)

(assert (=> b!1721151 (=> (not res!772180) (not e!1100895))))

(assert (=> b!1721151 (= res!772180 (= (rule!5283 token!523) rule!422))))

(declare-fun b!1721152 () Bool)

(declare-fun res!772170 () Bool)

(assert (=> b!1721152 (=> res!772170 e!1100893)))

(assert (=> b!1721152 (= res!772170 (isEmpty!11846 suffix!1421))))

(declare-fun b!1721153 () Bool)

(assert (=> b!1721153 (= e!1100888 e!1100885)))

(declare-fun res!772169 () Bool)

(assert (=> b!1721153 (=> res!772169 e!1100885)))

(declare-fun lt!658374 () List!18907)

(declare-fun lt!658375 () Option!3698)

(assert (=> b!1721153 (= res!772169 (or (not (= lt!658374 (_2!10667 lt!658369))) (not (= lt!658375 (Some!3697 (tuple2!18531 (_1!10667 lt!658369) lt!658374))))))))

(assert (=> b!1721153 (= (_2!10667 lt!658369) lt!658374)))

(declare-fun lt!658358 () Unit!32677)

(declare-fun lemmaSamePrefixThenSameSuffix!722 (List!18907 List!18907 List!18907 List!18907 List!18907) Unit!32677)

(assert (=> b!1721153 (= lt!658358 (lemmaSamePrefixThenSameSuffix!722 lt!658371 (_2!10667 lt!658369) lt!658371 lt!658374 lt!658361))))

(declare-fun getSuffix!772 (List!18907 List!18907) List!18907)

(assert (=> b!1721153 (= lt!658374 (getSuffix!772 lt!658361 lt!658371))))

(declare-fun lt!658366 () TokenValue!3427)

(declare-fun lt!658370 () Int)

(assert (=> b!1721153 (= lt!658375 (Some!3697 (tuple2!18531 (Token!6241 lt!658366 (rule!5283 (_1!10667 lt!658369)) lt!658370 lt!658371) (_2!10667 lt!658369))))))

(declare-fun maxPrefixOneRule!896 (LexerInterface!2966 Rule!6474 List!18907) Option!3698)

(assert (=> b!1721153 (= lt!658375 (maxPrefixOneRule!896 thiss!24550 (rule!5283 (_1!10667 lt!658369)) lt!658361))))

(declare-fun size!14970 (List!18907) Int)

(assert (=> b!1721153 (= lt!658370 (size!14970 lt!658371))))

(assert (=> b!1721153 (= lt!658366 (apply!5142 (transformation!3337 (rule!5283 (_1!10667 lt!658369))) (seqFromList!2311 lt!658371)))))

(declare-fun lt!658367 () Unit!32677)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!295 (LexerInterface!2966 List!18908 List!18907 List!18907 List!18907 Rule!6474) Unit!32677)

(assert (=> b!1721153 (= lt!658367 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!295 thiss!24550 rules!3447 lt!658371 lt!658361 (_2!10667 lt!658369) (rule!5283 (_1!10667 lt!658369))))))

(assert (= (and start!168666 res!772168) b!1721137))

(assert (= (and b!1721137 res!772182) b!1721150))

(assert (= (and b!1721150 res!772175) b!1721135))

(assert (= (and b!1721135 res!772165) b!1721128))

(assert (= (and b!1721128 res!772167) b!1721146))

(assert (= (and b!1721146 res!772184) b!1721147))

(assert (= (and b!1721147 res!772176) b!1721151))

(assert (= (and b!1721151 res!772180) b!1721145))

(assert (= (and b!1721145 (not res!772178)) b!1721152))

(assert (= (and b!1721152 (not res!772170)) b!1721132))

(assert (= (and b!1721132 (not res!772181)) b!1721136))

(assert (= (and b!1721136 res!772179) b!1721140))

(assert (= (and b!1721140 res!772173) b!1721144))

(assert (= (and b!1721136 (not res!772171)) b!1721142))

(assert (= (and b!1721142 (not res!772183)) b!1721143))

(assert (= (and b!1721143 (not res!772177)) b!1721139))

(assert (= (and b!1721139 (not res!772174)) b!1721148))

(assert (= (and b!1721148 (not res!772166)) b!1721130))

(assert (= (and b!1721130 (not res!772172)) b!1721153))

(assert (= (and b!1721153 (not res!772169)) b!1721149))

(assert (= (and start!168666 ((_ is Cons!18837) suffix!1421)) b!1721138))

(assert (= b!1721127 b!1721131))

(assert (= start!168666 b!1721127))

(assert (= b!1721133 b!1721126))

(assert (= b!1721129 b!1721133))

(assert (= start!168666 b!1721129))

(assert (= b!1721141 b!1721134))

(assert (= b!1721125 b!1721141))

(assert (= (and start!168666 ((_ is Cons!18838) rules!3447)) b!1721125))

(declare-fun b_lambda!54579 () Bool)

(assert (=> (not b_lambda!54579) (not b!1721139)))

(declare-fun tb!102021 () Bool)

(declare-fun t!159492 () Bool)

(assert (=> (and b!1721134 (= (toChars!4703 (transformation!3337 (h!24239 rules!3447))) (toChars!4703 (transformation!3337 (rule!5283 (_1!10667 lt!658369))))) t!159492) tb!102021))

(declare-fun e!1100908 () Bool)

(declare-fun b!1721169 () Bool)

(declare-fun tp!491459 () Bool)

(declare-fun inv!24330 (Conc!6265) Bool)

(assert (=> b!1721169 (= e!1100908 (and (inv!24330 (c!281617 (dynLambda!8675 (toChars!4703 (transformation!3337 (rule!5283 (_1!10667 lt!658369)))) (dynLambda!8676 (toValue!4844 (transformation!3337 (rule!5283 (_1!10667 lt!658369)))) lt!658382)))) tp!491459))))

(declare-fun result!122624 () Bool)

(declare-fun inv!24331 (BalanceConc!12474) Bool)

(assert (=> tb!102021 (= result!122624 (and (inv!24331 (dynLambda!8675 (toChars!4703 (transformation!3337 (rule!5283 (_1!10667 lt!658369)))) (dynLambda!8676 (toValue!4844 (transformation!3337 (rule!5283 (_1!10667 lt!658369)))) lt!658382))) e!1100908))))

(assert (= tb!102021 b!1721169))

(declare-fun m!2126769 () Bool)

(assert (=> b!1721169 m!2126769))

(declare-fun m!2126771 () Bool)

(assert (=> tb!102021 m!2126771))

(assert (=> b!1721139 t!159492))

(declare-fun b_and!125711 () Bool)

(assert (= b_and!125701 (and (=> t!159492 result!122624) b_and!125711)))

(declare-fun tb!102023 () Bool)

(declare-fun t!159494 () Bool)

(assert (=> (and b!1721126 (= (toChars!4703 (transformation!3337 (rule!5283 token!523))) (toChars!4703 (transformation!3337 (rule!5283 (_1!10667 lt!658369))))) t!159494) tb!102023))

(declare-fun result!122628 () Bool)

(assert (= result!122628 result!122624))

(assert (=> b!1721139 t!159494))

(declare-fun b_and!125713 () Bool)

(assert (= b_and!125705 (and (=> t!159494 result!122628) b_and!125713)))

(declare-fun t!159496 () Bool)

(declare-fun tb!102025 () Bool)

(assert (=> (and b!1721131 (= (toChars!4703 (transformation!3337 rule!422)) (toChars!4703 (transformation!3337 (rule!5283 (_1!10667 lt!658369))))) t!159496) tb!102025))

(declare-fun result!122630 () Bool)

(assert (= result!122630 result!122624))

(assert (=> b!1721139 t!159496))

(declare-fun b_and!125715 () Bool)

(assert (= b_and!125709 (and (=> t!159496 result!122630) b_and!125715)))

(declare-fun b_lambda!54581 () Bool)

(assert (=> (not b_lambda!54581) (not b!1721139)))

(declare-fun t!159498 () Bool)

(declare-fun tb!102027 () Bool)

(assert (=> (and b!1721134 (= (toValue!4844 (transformation!3337 (h!24239 rules!3447))) (toValue!4844 (transformation!3337 (rule!5283 (_1!10667 lt!658369))))) t!159498) tb!102027))

(declare-fun result!122632 () Bool)

(assert (=> tb!102027 (= result!122632 (inv!21 (dynLambda!8676 (toValue!4844 (transformation!3337 (rule!5283 (_1!10667 lt!658369)))) lt!658382)))))

(declare-fun m!2126773 () Bool)

(assert (=> tb!102027 m!2126773))

(assert (=> b!1721139 t!159498))

(declare-fun b_and!125717 () Bool)

(assert (= b_and!125699 (and (=> t!159498 result!122632) b_and!125717)))

(declare-fun tb!102029 () Bool)

(declare-fun t!159500 () Bool)

(assert (=> (and b!1721126 (= (toValue!4844 (transformation!3337 (rule!5283 token!523))) (toValue!4844 (transformation!3337 (rule!5283 (_1!10667 lt!658369))))) t!159500) tb!102029))

(declare-fun result!122636 () Bool)

(assert (= result!122636 result!122632))

(assert (=> b!1721139 t!159500))

(declare-fun b_and!125719 () Bool)

(assert (= b_and!125703 (and (=> t!159500 result!122636) b_and!125719)))

(declare-fun t!159502 () Bool)

(declare-fun tb!102031 () Bool)

(assert (=> (and b!1721131 (= (toValue!4844 (transformation!3337 rule!422)) (toValue!4844 (transformation!3337 (rule!5283 (_1!10667 lt!658369))))) t!159502) tb!102031))

(declare-fun result!122638 () Bool)

(assert (= result!122638 result!122632))

(assert (=> b!1721139 t!159502))

(declare-fun b_and!125721 () Bool)

(assert (= b_and!125707 (and (=> t!159502 result!122638) b_and!125721)))

(declare-fun b_lambda!54583 () Bool)

(assert (=> (not b_lambda!54583) (not b!1721148)))

(declare-fun tb!102033 () Bool)

(declare-fun t!159504 () Bool)

(assert (=> (and b!1721134 (= (toChars!4703 (transformation!3337 (h!24239 rules!3447))) (toChars!4703 (transformation!3337 (rule!5283 (_1!10667 lt!658369))))) t!159504) tb!102033))

(declare-fun b!1721172 () Bool)

(declare-fun e!1100912 () Bool)

(declare-fun tp!491460 () Bool)

(assert (=> b!1721172 (= e!1100912 (and (inv!24330 (c!281617 (dynLambda!8675 (toChars!4703 (transformation!3337 (rule!5283 (_1!10667 lt!658369)))) (value!104777 (_1!10667 lt!658369))))) tp!491460))))

(declare-fun result!122640 () Bool)

(assert (=> tb!102033 (= result!122640 (and (inv!24331 (dynLambda!8675 (toChars!4703 (transformation!3337 (rule!5283 (_1!10667 lt!658369)))) (value!104777 (_1!10667 lt!658369)))) e!1100912))))

(assert (= tb!102033 b!1721172))

(declare-fun m!2126775 () Bool)

(assert (=> b!1721172 m!2126775))

(declare-fun m!2126777 () Bool)

(assert (=> tb!102033 m!2126777))

(assert (=> b!1721148 t!159504))

(declare-fun b_and!125723 () Bool)

(assert (= b_and!125711 (and (=> t!159504 result!122640) b_and!125723)))

(declare-fun tb!102035 () Bool)

(declare-fun t!159506 () Bool)

(assert (=> (and b!1721126 (= (toChars!4703 (transformation!3337 (rule!5283 token!523))) (toChars!4703 (transformation!3337 (rule!5283 (_1!10667 lt!658369))))) t!159506) tb!102035))

(declare-fun result!122642 () Bool)

(assert (= result!122642 result!122640))

(assert (=> b!1721148 t!159506))

(declare-fun b_and!125725 () Bool)

(assert (= b_and!125713 (and (=> t!159506 result!122642) b_and!125725)))

(declare-fun tb!102037 () Bool)

(declare-fun t!159508 () Bool)

(assert (=> (and b!1721131 (= (toChars!4703 (transformation!3337 rule!422)) (toChars!4703 (transformation!3337 (rule!5283 (_1!10667 lt!658369))))) t!159508) tb!102037))

(declare-fun result!122644 () Bool)

(assert (= result!122644 result!122640))

(assert (=> b!1721148 t!159508))

(declare-fun b_and!125727 () Bool)

(assert (= b_and!125715 (and (=> t!159508 result!122644) b_and!125727)))

(declare-fun m!2126779 () Bool)

(assert (=> b!1721132 m!2126779))

(declare-fun m!2126781 () Bool)

(assert (=> b!1721132 m!2126781))

(assert (=> b!1721132 m!2126781))

(declare-fun m!2126783 () Bool)

(assert (=> b!1721132 m!2126783))

(declare-fun m!2126785 () Bool)

(assert (=> b!1721132 m!2126785))

(declare-fun m!2126787 () Bool)

(assert (=> b!1721142 m!2126787))

(declare-fun m!2126789 () Bool)

(assert (=> b!1721146 m!2126789))

(declare-fun m!2126791 () Bool)

(assert (=> b!1721139 m!2126791))

(assert (=> b!1721139 m!2126791))

(declare-fun m!2126793 () Bool)

(assert (=> b!1721139 m!2126793))

(assert (=> b!1721139 m!2126793))

(declare-fun m!2126795 () Bool)

(assert (=> b!1721139 m!2126795))

(declare-fun m!2126797 () Bool)

(assert (=> b!1721139 m!2126797))

(declare-fun m!2126799 () Bool)

(assert (=> b!1721129 m!2126799))

(declare-fun m!2126801 () Bool)

(assert (=> b!1721137 m!2126801))

(declare-fun m!2126803 () Bool)

(assert (=> b!1721149 m!2126803))

(declare-fun m!2126805 () Bool)

(assert (=> b!1721149 m!2126805))

(declare-fun m!2126807 () Bool)

(assert (=> b!1721153 m!2126807))

(declare-fun m!2126809 () Bool)

(assert (=> b!1721153 m!2126809))

(declare-fun m!2126811 () Bool)

(assert (=> b!1721153 m!2126811))

(declare-fun m!2126813 () Bool)

(assert (=> b!1721153 m!2126813))

(assert (=> b!1721153 m!2126813))

(declare-fun m!2126815 () Bool)

(assert (=> b!1721153 m!2126815))

(declare-fun m!2126817 () Bool)

(assert (=> b!1721153 m!2126817))

(declare-fun m!2126819 () Bool)

(assert (=> b!1721153 m!2126819))

(declare-fun m!2126821 () Bool)

(assert (=> b!1721145 m!2126821))

(declare-fun m!2126823 () Bool)

(assert (=> b!1721145 m!2126823))

(declare-fun m!2126825 () Bool)

(assert (=> b!1721145 m!2126825))

(declare-fun m!2126827 () Bool)

(assert (=> b!1721141 m!2126827))

(declare-fun m!2126829 () Bool)

(assert (=> b!1721141 m!2126829))

(declare-fun m!2126831 () Bool)

(assert (=> b!1721133 m!2126831))

(declare-fun m!2126833 () Bool)

(assert (=> b!1721133 m!2126833))

(declare-fun m!2126835 () Bool)

(assert (=> b!1721148 m!2126835))

(declare-fun m!2126837 () Bool)

(assert (=> b!1721140 m!2126837))

(assert (=> b!1721140 m!2126837))

(declare-fun m!2126839 () Bool)

(assert (=> b!1721140 m!2126839))

(assert (=> b!1721140 m!2126839))

(declare-fun m!2126841 () Bool)

(assert (=> b!1721140 m!2126841))

(declare-fun m!2126843 () Bool)

(assert (=> b!1721140 m!2126843))

(declare-fun m!2126845 () Bool)

(assert (=> b!1721136 m!2126845))

(declare-fun m!2126847 () Bool)

(assert (=> b!1721136 m!2126847))

(declare-fun m!2126849 () Bool)

(assert (=> b!1721136 m!2126849))

(declare-fun m!2126851 () Bool)

(assert (=> b!1721136 m!2126851))

(declare-fun m!2126853 () Bool)

(assert (=> b!1721136 m!2126853))

(declare-fun m!2126855 () Bool)

(assert (=> b!1721136 m!2126855))

(declare-fun m!2126857 () Bool)

(assert (=> b!1721136 m!2126857))

(declare-fun m!2126859 () Bool)

(assert (=> b!1721136 m!2126859))

(assert (=> b!1721136 m!2126837))

(declare-fun m!2126861 () Bool)

(assert (=> b!1721136 m!2126861))

(declare-fun m!2126863 () Bool)

(assert (=> b!1721136 m!2126863))

(declare-fun m!2126865 () Bool)

(assert (=> b!1721136 m!2126865))

(declare-fun m!2126867 () Bool)

(assert (=> b!1721136 m!2126867))

(declare-fun m!2126869 () Bool)

(assert (=> b!1721136 m!2126869))

(assert (=> b!1721136 m!2126867))

(declare-fun m!2126871 () Bool)

(assert (=> b!1721136 m!2126871))

(declare-fun m!2126873 () Bool)

(assert (=> b!1721130 m!2126873))

(assert (=> b!1721130 m!2126873))

(declare-fun m!2126875 () Bool)

(assert (=> b!1721130 m!2126875))

(declare-fun m!2126877 () Bool)

(assert (=> b!1721130 m!2126877))

(declare-fun m!2126879 () Bool)

(assert (=> b!1721130 m!2126879))

(declare-fun m!2126881 () Bool)

(assert (=> b!1721130 m!2126881))

(declare-fun m!2126883 () Bool)

(assert (=> b!1721128 m!2126883))

(declare-fun m!2126885 () Bool)

(assert (=> b!1721128 m!2126885))

(declare-fun m!2126887 () Bool)

(assert (=> b!1721128 m!2126887))

(assert (=> b!1721128 m!2126887))

(declare-fun m!2126889 () Bool)

(assert (=> b!1721128 m!2126889))

(declare-fun m!2126891 () Bool)

(assert (=> b!1721150 m!2126891))

(declare-fun m!2126893 () Bool)

(assert (=> b!1721135 m!2126893))

(declare-fun m!2126895 () Bool)

(assert (=> b!1721147 m!2126895))

(declare-fun m!2126897 () Bool)

(assert (=> b!1721143 m!2126897))

(declare-fun m!2126899 () Bool)

(assert (=> b!1721143 m!2126899))

(declare-fun m!2126901 () Bool)

(assert (=> b!1721127 m!2126901))

(declare-fun m!2126903 () Bool)

(assert (=> b!1721127 m!2126903))

(declare-fun m!2126905 () Bool)

(assert (=> b!1721152 m!2126905))

(declare-fun m!2126907 () Bool)

(assert (=> start!168666 m!2126907))

(check-sat (not b!1721130) (not b!1721137) b_and!125727 b_and!125721 (not b_next!47613) (not b_lambda!54581) (not b!1721153) (not b!1721128) (not tb!102027) (not tb!102033) (not b!1721138) (not b!1721145) (not b!1721139) (not b!1721172) (not b_next!47619) b_and!125723 (not b!1721127) (not b!1721133) (not b!1721132) (not b_next!47617) b_and!125719 (not b!1721140) (not b_next!47621) (not b!1721169) (not b!1721125) (not b_lambda!54583) (not b!1721136) (not b!1721146) (not b!1721150) b_and!125725 tp_is_empty!7573 (not b!1721143) (not tb!102021) b_and!125717 (not b!1721129) (not b!1721147) (not b!1721135) (not start!168666) (not b_next!47615) (not b!1721152) (not b!1721141) (not b_lambda!54579) (not b!1721142) (not b!1721149) (not b_next!47611))
(check-sat b_and!125727 b_and!125721 (not b_next!47613) (not b_next!47621) b_and!125725 b_and!125717 (not b_next!47615) (not b_next!47611) (not b_next!47619) b_and!125723 (not b_next!47617) b_and!125719)
