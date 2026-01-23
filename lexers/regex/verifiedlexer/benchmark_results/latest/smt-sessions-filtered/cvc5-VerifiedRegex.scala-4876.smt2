; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!249926 () Bool)

(assert start!249926)

(declare-fun b!2581991 () Bool)

(declare-fun b_free!72605 () Bool)

(declare-fun b_next!73309 () Bool)

(assert (=> b!2581991 (= b_free!72605 (not b_next!73309))))

(declare-fun tp!819610 () Bool)

(declare-fun b_and!188923 () Bool)

(assert (=> b!2581991 (= tp!819610 b_and!188923)))

(declare-fun b_free!72607 () Bool)

(declare-fun b_next!73311 () Bool)

(assert (=> b!2581991 (= b_free!72607 (not b_next!73311))))

(declare-fun tp!819619 () Bool)

(declare-fun b_and!188925 () Bool)

(assert (=> b!2581991 (= tp!819619 b_and!188925)))

(declare-fun b!2581983 () Bool)

(declare-fun b_free!72609 () Bool)

(declare-fun b_next!73313 () Bool)

(assert (=> b!2581983 (= b_free!72609 (not b_next!73313))))

(declare-fun tp!819616 () Bool)

(declare-fun b_and!188927 () Bool)

(assert (=> b!2581983 (= tp!819616 b_and!188927)))

(declare-fun b_free!72611 () Bool)

(declare-fun b_next!73315 () Bool)

(assert (=> b!2581983 (= b_free!72611 (not b_next!73315))))

(declare-fun tp!819611 () Bool)

(declare-fun b_and!188929 () Bool)

(assert (=> b!2581983 (= tp!819611 b_and!188929)))

(declare-fun b!2582000 () Bool)

(declare-fun b_free!72613 () Bool)

(declare-fun b_next!73317 () Bool)

(assert (=> b!2582000 (= b_free!72613 (not b_next!73317))))

(declare-fun tp!819615 () Bool)

(declare-fun b_and!188931 () Bool)

(assert (=> b!2582000 (= tp!819615 b_and!188931)))

(declare-fun b_free!72615 () Bool)

(declare-fun b_next!73319 () Bool)

(assert (=> b!2582000 (= b_free!72615 (not b_next!73319))))

(declare-fun tp!819617 () Bool)

(declare-fun b_and!188933 () Bool)

(assert (=> b!2582000 (= tp!819617 b_and!188933)))

(declare-fun b!2581982 () Bool)

(declare-fun e!1629218 () Bool)

(declare-fun tp_is_empty!13203 () Bool)

(declare-fun tp!819612 () Bool)

(assert (=> b!2581982 (= e!1629218 (and tp_is_empty!13203 tp!819612))))

(declare-fun e!1629230 () Bool)

(assert (=> b!2581983 (= e!1629230 (and tp!819616 tp!819611))))

(declare-fun b!2581984 () Bool)

(declare-fun res!1085793 () Bool)

(declare-fun e!1629225 () Bool)

(assert (=> b!2581984 (=> (not res!1085793) (not e!1629225))))

(declare-fun e!1629220 () Bool)

(assert (=> b!2581984 (= res!1085793 e!1629220)))

(declare-fun res!1085792 () Bool)

(assert (=> b!2581984 (=> (not res!1085792) (not e!1629220))))

(declare-datatypes ((C!15466 0))(
  ( (C!15467 (val!9429 Int)) )
))
(declare-datatypes ((List!29820 0))(
  ( (Nil!29720) (Cons!29720 (h!35140 C!15466) (t!211783 List!29820)) )
))
(declare-fun lt!908188 () List!29820)

(declare-fun input!3654 () List!29820)

(declare-fun suffix!1684 () List!29820)

(declare-fun ++!7300 (List!29820 List!29820) List!29820)

(assert (=> b!2581984 (= res!1085792 (= input!3654 (++!7300 lt!908188 suffix!1684)))))

(declare-datatypes ((List!29821 0))(
  ( (Nil!29721) (Cons!29721 (h!35141 (_ BitVec 16)) (t!211784 List!29821)) )
))
(declare-datatypes ((TokenValue!4732 0))(
  ( (FloatLiteralValue!9464 (text!33569 List!29821)) (TokenValueExt!4731 (__x!19297 Int)) (Broken!23660 (value!145758 List!29821)) (Object!4831) (End!4732) (Def!4732) (Underscore!4732) (Match!4732) (Else!4732) (Error!4732) (Case!4732) (If!4732) (Extends!4732) (Abstract!4732) (Class!4732) (Val!4732) (DelimiterValue!9464 (del!4792 List!29821)) (KeywordValue!4738 (value!145759 List!29821)) (CommentValue!9464 (value!145760 List!29821)) (WhitespaceValue!9464 (value!145761 List!29821)) (IndentationValue!4732 (value!145762 List!29821)) (String!33069) (Int32!4732) (Broken!23661 (value!145763 List!29821)) (Boolean!4733) (Unit!43560) (OperatorValue!4735 (op!4792 List!29821)) (IdentifierValue!9464 (value!145764 List!29821)) (IdentifierValue!9465 (value!145765 List!29821)) (WhitespaceValue!9465 (value!145766 List!29821)) (True!9464) (False!9464) (Broken!23662 (value!145767 List!29821)) (Broken!23663 (value!145768 List!29821)) (True!9465) (RightBrace!4732) (RightBracket!4732) (Colon!4732) (Null!4732) (Comma!4732) (LeftBracket!4732) (False!9465) (LeftBrace!4732) (ImaginaryLiteralValue!4732 (text!33570 List!29821)) (StringLiteralValue!14196 (value!145769 List!29821)) (EOFValue!4732 (value!145770 List!29821)) (IdentValue!4732 (value!145771 List!29821)) (DelimiterValue!9465 (value!145772 List!29821)) (DedentValue!4732 (value!145773 List!29821)) (NewLineValue!4732 (value!145774 List!29821)) (IntegerValue!14196 (value!145775 (_ BitVec 32)) (text!33571 List!29821)) (IntegerValue!14197 (value!145776 Int) (text!33572 List!29821)) (Times!4732) (Or!4732) (Equal!4732) (Minus!4732) (Broken!23664 (value!145777 List!29821)) (And!4732) (Div!4732) (LessEqual!4732) (Mod!4732) (Concat!12386) (Not!4732) (Plus!4732) (SpaceValue!4732 (value!145778 List!29821)) (IntegerValue!14198 (value!145779 Int) (text!33573 List!29821)) (StringLiteralValue!14197 (text!33574 List!29821)) (FloatLiteralValue!9465 (text!33575 List!29821)) (BytesLiteralValue!4732 (value!145780 List!29821)) (CommentValue!9465 (value!145781 List!29821)) (StringLiteralValue!14198 (value!145782 List!29821)) (ErrorTokenValue!4732 (msg!4793 List!29821)) )
))
(declare-datatypes ((IArray!18557 0))(
  ( (IArray!18558 (innerList!9336 List!29820)) )
))
(declare-datatypes ((Conc!9276 0))(
  ( (Node!9276 (left!22656 Conc!9276) (right!22986 Conc!9276) (csize!18782 Int) (cheight!9487 Int)) (Leaf!14153 (xs!12260 IArray!18557) (csize!18783 Int)) (Empty!9276) )
))
(declare-datatypes ((BalanceConc!18166 0))(
  ( (BalanceConc!18167 (c!416326 Conc!9276)) )
))
(declare-datatypes ((String!33070 0))(
  ( (String!33071 (value!145783 String)) )
))
(declare-datatypes ((TokenValueInjection!8904 0))(
  ( (TokenValueInjection!8905 (toValue!6396 Int) (toChars!6255 Int)) )
))
(declare-datatypes ((Regex!7654 0))(
  ( (ElementMatch!7654 (c!416327 C!15466)) (Concat!12387 (regOne!15820 Regex!7654) (regTwo!15820 Regex!7654)) (EmptyExpr!7654) (Star!7654 (reg!7983 Regex!7654)) (EmptyLang!7654) (Union!7654 (regOne!15821 Regex!7654) (regTwo!15821 Regex!7654)) )
))
(declare-datatypes ((Rule!8820 0))(
  ( (Rule!8821 (regex!4510 Regex!7654) (tag!5000 String!33070) (isSeparator!4510 Bool) (transformation!4510 TokenValueInjection!8904)) )
))
(declare-datatypes ((Token!8490 0))(
  ( (Token!8491 (value!145784 TokenValue!4732) (rule!6868 Rule!8820) (size!23041 Int) (originalCharacters!5276 List!29820)) )
))
(declare-fun token!562 () Token!8490)

(declare-fun list!11232 (BalanceConc!18166) List!29820)

(declare-fun charsOf!2839 (Token!8490) BalanceConc!18166)

(assert (=> b!2581984 (= lt!908188 (list!11232 (charsOf!2839 token!562)))))

(declare-fun b!2581985 () Bool)

(declare-fun res!1085785 () Bool)

(assert (=> b!2581985 (=> (not res!1085785) (not e!1629225))))

(declare-datatypes ((List!29822 0))(
  ( (Nil!29722) (Cons!29722 (h!35142 Rule!8820) (t!211785 List!29822)) )
))
(declare-fun rules!4580 () List!29822)

(declare-fun rule!570 () Rule!8820)

(declare-fun contains!5312 (List!29822 Rule!8820) Bool)

(assert (=> b!2581985 (= res!1085785 (contains!5312 rules!4580 rule!570))))

(declare-fun b!2581986 () Bool)

(declare-fun res!1085790 () Bool)

(assert (=> b!2581986 (=> (not res!1085790) (not e!1629225))))

(declare-fun isEmpty!17082 (List!29822) Bool)

(assert (=> b!2581986 (= res!1085790 (not (isEmpty!17082 rules!4580)))))

(declare-fun b!2581987 () Bool)

(declare-fun res!1085787 () Bool)

(assert (=> b!2581987 (=> (not res!1085787) (not e!1629225))))

(assert (=> b!2581987 (= res!1085787 (= (rule!6868 token!562) rule!570))))

(declare-fun b!2581989 () Bool)

(declare-fun e!1629219 () Bool)

(declare-fun tp!819607 () Bool)

(assert (=> b!2581989 (= e!1629219 (and tp_is_empty!13203 tp!819607))))

(declare-fun b!2581990 () Bool)

(declare-fun e!1629214 () Bool)

(assert (=> b!2581990 (= e!1629225 (not e!1629214))))

(declare-fun res!1085788 () Bool)

(assert (=> b!2581990 (=> res!1085788 e!1629214)))

(declare-datatypes ((tuple2!29680 0))(
  ( (tuple2!29681 (_1!17382 Token!8490) (_2!17382 List!29820)) )
))
(declare-datatypes ((Option!5925 0))(
  ( (None!5924) (Some!5924 (v!32019 tuple2!29680)) )
))
(declare-fun lt!908194 () Option!5925)

(assert (=> b!2581990 (= res!1085788 (not (= lt!908194 (Some!5924 (tuple2!29681 token!562 suffix!1684)))))))

(declare-fun lt!908193 () TokenValue!4732)

(declare-fun lt!908189 () List!29820)

(declare-fun lt!908192 () Int)

(assert (=> b!2581990 (= lt!908194 (Some!5924 (tuple2!29681 (Token!8491 lt!908193 rule!570 lt!908192 lt!908189) suffix!1684)))))

(declare-datatypes ((LexerInterface!4107 0))(
  ( (LexerInterfaceExt!4104 (__x!19298 Int)) (Lexer!4105) )
))
(declare-fun thiss!28211 () LexerInterface!4107)

(declare-fun maxPrefixOneRule!1445 (LexerInterface!4107 Rule!8820 List!29820) Option!5925)

(assert (=> b!2581990 (= lt!908194 (maxPrefixOneRule!1445 thiss!28211 rule!570 input!3654))))

(declare-fun size!23042 (List!29820) Int)

(assert (=> b!2581990 (= lt!908192 (size!23042 lt!908189))))

(declare-fun apply!7015 (TokenValueInjection!8904 BalanceConc!18166) TokenValue!4732)

(declare-fun seqFromList!3150 (List!29820) BalanceConc!18166)

(assert (=> b!2581990 (= lt!908193 (apply!7015 (transformation!4510 rule!570) (seqFromList!3150 lt!908189)))))

(declare-datatypes ((Unit!43561 0))(
  ( (Unit!43562) )
))
(declare-fun lt!908191 () Unit!43561)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!608 (LexerInterface!4107 List!29822 List!29820 List!29820 List!29820 Rule!8820) Unit!43561)

(assert (=> b!2581990 (= lt!908191 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!608 thiss!28211 rules!4580 lt!908189 input!3654 suffix!1684 rule!570))))

(assert (=> b!2581990 (= lt!908189 (list!11232 (charsOf!2839 token!562)))))

(declare-fun e!1629222 () Bool)

(assert (=> b!2581991 (= e!1629222 (and tp!819610 tp!819619))))

(declare-fun b!2581992 () Bool)

(declare-fun e!1629221 () Bool)

(declare-fun tp!819614 () Bool)

(declare-fun inv!40134 (String!33070) Bool)

(declare-fun inv!40137 (TokenValueInjection!8904) Bool)

(assert (=> b!2581992 (= e!1629221 (and tp!819614 (inv!40134 (tag!5000 rule!570)) (inv!40137 (transformation!4510 rule!570)) e!1629230))))

(declare-fun b!2581993 () Bool)

(declare-fun e!1629216 () Bool)

(declare-fun e!1629223 () Bool)

(declare-fun tp!819613 () Bool)

(assert (=> b!2581993 (= e!1629216 (and e!1629223 tp!819613))))

(declare-fun b!2581994 () Bool)

(declare-fun tp!819609 () Bool)

(assert (=> b!2581994 (= e!1629223 (and tp!819609 (inv!40134 (tag!5000 (h!35142 rules!4580))) (inv!40137 (transformation!4510 (h!35142 rules!4580))) e!1629222))))

(declare-fun e!1629224 () Bool)

(declare-fun e!1629215 () Bool)

(declare-fun tp!819618 () Bool)

(declare-fun b!2581995 () Bool)

(assert (=> b!2581995 (= e!1629215 (and tp!819618 (inv!40134 (tag!5000 (rule!6868 token!562))) (inv!40137 (transformation!4510 (rule!6868 token!562))) e!1629224))))

(declare-fun b!2581996 () Bool)

(declare-fun matchR!3587 (Regex!7654 List!29820) Bool)

(assert (=> b!2581996 (= e!1629220 (not (not (matchR!3587 (regex!4510 rule!570) lt!908188))))))

(declare-fun ruleValid!1516 (LexerInterface!4107 Rule!8820) Bool)

(assert (=> b!2581996 (ruleValid!1516 thiss!28211 rule!570)))

(declare-fun lt!908190 () Unit!43561)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!909 (LexerInterface!4107 Rule!8820 List!29822) Unit!43561)

(assert (=> b!2581996 (= lt!908190 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!909 thiss!28211 rule!570 rules!4580))))

(declare-fun b!2581997 () Bool)

(declare-fun res!1085786 () Bool)

(assert (=> b!2581997 (=> (not res!1085786) (not e!1629225))))

(declare-fun rulesInvariant!3607 (LexerInterface!4107 List!29822) Bool)

(assert (=> b!2581997 (= res!1085786 (rulesInvariant!3607 thiss!28211 rules!4580))))

(declare-fun res!1085789 () Bool)

(assert (=> start!249926 (=> (not res!1085789) (not e!1629225))))

(assert (=> start!249926 (= res!1085789 (is-Lexer!4105 thiss!28211))))

(assert (=> start!249926 e!1629225))

(assert (=> start!249926 e!1629216))

(assert (=> start!249926 e!1629221))

(assert (=> start!249926 true))

(assert (=> start!249926 e!1629219))

(declare-fun e!1629228 () Bool)

(declare-fun inv!40138 (Token!8490) Bool)

(assert (=> start!249926 (and (inv!40138 token!562) e!1629228)))

(assert (=> start!249926 e!1629218))

(declare-fun b!2581988 () Bool)

(declare-fun res!1085791 () Bool)

(assert (=> b!2581988 (=> (not res!1085791) (not e!1629225))))

(declare-fun maxPrefix!2279 (LexerInterface!4107 List!29822 List!29820) Option!5925)

(assert (=> b!2581988 (= res!1085791 (= (maxPrefix!2279 thiss!28211 rules!4580 input!3654) (Some!5924 (tuple2!29681 token!562 suffix!1684))))))

(declare-fun b!2581998 () Bool)

(assert (=> b!2581998 (= e!1629214 true)))

(declare-fun b!2581999 () Bool)

(declare-fun res!1085784 () Bool)

(assert (=> b!2581999 (=> res!1085784 e!1629214)))

(assert (=> b!2581999 (= res!1085784 (not (matchR!3587 (regex!4510 rule!570) lt!908189)))))

(assert (=> b!2582000 (= e!1629224 (and tp!819615 tp!819617))))

(declare-fun b!2582001 () Bool)

(declare-fun tp!819608 () Bool)

(declare-fun inv!21 (TokenValue!4732) Bool)

(assert (=> b!2582001 (= e!1629228 (and (inv!21 (value!145784 token!562)) e!1629215 tp!819608))))

(assert (= (and start!249926 res!1085789) b!2581986))

(assert (= (and b!2581986 res!1085790) b!2581997))

(assert (= (and b!2581997 res!1085786) b!2581985))

(assert (= (and b!2581985 res!1085785) b!2581988))

(assert (= (and b!2581988 res!1085791) b!2581987))

(assert (= (and b!2581987 res!1085787) b!2581984))

(assert (= (and b!2581984 res!1085792) b!2581996))

(assert (= (and b!2581984 res!1085793) b!2581990))

(assert (= (and b!2581990 (not res!1085788)) b!2581999))

(assert (= (and b!2581999 (not res!1085784)) b!2581998))

(assert (= b!2581994 b!2581991))

(assert (= b!2581993 b!2581994))

(assert (= (and start!249926 (is-Cons!29722 rules!4580)) b!2581993))

(assert (= b!2581992 b!2581983))

(assert (= start!249926 b!2581992))

(assert (= (and start!249926 (is-Cons!29720 input!3654)) b!2581989))

(assert (= b!2581995 b!2582000))

(assert (= b!2582001 b!2581995))

(assert (= start!249926 b!2582001))

(assert (= (and start!249926 (is-Cons!29720 suffix!1684)) b!2581982))

(declare-fun m!2918537 () Bool)

(assert (=> b!2581992 m!2918537))

(declare-fun m!2918539 () Bool)

(assert (=> b!2581992 m!2918539))

(declare-fun m!2918541 () Bool)

(assert (=> b!2581995 m!2918541))

(declare-fun m!2918543 () Bool)

(assert (=> b!2581995 m!2918543))

(declare-fun m!2918545 () Bool)

(assert (=> b!2581984 m!2918545))

(declare-fun m!2918547 () Bool)

(assert (=> b!2581984 m!2918547))

(assert (=> b!2581984 m!2918547))

(declare-fun m!2918549 () Bool)

(assert (=> b!2581984 m!2918549))

(assert (=> b!2581990 m!2918547))

(assert (=> b!2581990 m!2918549))

(assert (=> b!2581990 m!2918547))

(declare-fun m!2918551 () Bool)

(assert (=> b!2581990 m!2918551))

(declare-fun m!2918553 () Bool)

(assert (=> b!2581990 m!2918553))

(declare-fun m!2918555 () Bool)

(assert (=> b!2581990 m!2918555))

(declare-fun m!2918557 () Bool)

(assert (=> b!2581990 m!2918557))

(declare-fun m!2918559 () Bool)

(assert (=> b!2581990 m!2918559))

(assert (=> b!2581990 m!2918555))

(declare-fun m!2918561 () Bool)

(assert (=> start!249926 m!2918561))

(declare-fun m!2918563 () Bool)

(assert (=> b!2581986 m!2918563))

(declare-fun m!2918565 () Bool)

(assert (=> b!2581994 m!2918565))

(declare-fun m!2918567 () Bool)

(assert (=> b!2581994 m!2918567))

(declare-fun m!2918569 () Bool)

(assert (=> b!2582001 m!2918569))

(declare-fun m!2918571 () Bool)

(assert (=> b!2581996 m!2918571))

(declare-fun m!2918573 () Bool)

(assert (=> b!2581996 m!2918573))

(declare-fun m!2918575 () Bool)

(assert (=> b!2581996 m!2918575))

(declare-fun m!2918577 () Bool)

(assert (=> b!2581985 m!2918577))

(declare-fun m!2918579 () Bool)

(assert (=> b!2581988 m!2918579))

(declare-fun m!2918581 () Bool)

(assert (=> b!2581999 m!2918581))

(declare-fun m!2918583 () Bool)

(assert (=> b!2581997 m!2918583))

(push 1)

(assert (not b_next!73317))

(assert (not b!2581985))

(assert (not b!2581993))

(assert (not b!2581992))

(assert (not b!2581997))

(assert (not b_next!73319))

(assert b_and!188923)

(assert (not b!2581982))

(assert b_and!188933)

(assert (not b!2581990))

(assert b_and!188929)

(assert (not start!249926))

(assert (not b!2581988))

(assert (not b!2581986))

(assert b_and!188925)

(assert (not b!2581989))

(assert b_and!188931)

(assert (not b!2581996))

(assert (not b!2582001))

(assert (not b_next!73313))

(assert (not b_next!73315))

(assert (not b_next!73311))

(assert (not b!2581994))

(assert (not b!2581999))

(assert (not b_next!73309))

(assert b_and!188927)

(assert (not b!2581984))

(assert (not b!2581995))

(assert tp_is_empty!13203)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!73317))

(assert b_and!188933)

(assert b_and!188929)

(assert b_and!188925)

(assert b_and!188931)

(assert (not b_next!73313))

(assert (not b_next!73319))

(assert b_and!188923)

(assert (not b_next!73315))

(assert (not b_next!73311))

(assert (not b_next!73309))

(assert b_and!188927)

(check-sat)

(pop 1)

