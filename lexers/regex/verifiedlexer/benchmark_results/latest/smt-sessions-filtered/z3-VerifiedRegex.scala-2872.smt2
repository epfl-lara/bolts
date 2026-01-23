; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!167382 () Bool)

(assert start!167382)

(declare-fun b!1711781 () Bool)

(declare-fun b_free!46459 () Bool)

(declare-fun b_next!47163 () Bool)

(assert (=> b!1711781 (= b_free!46459 (not b_next!47163))))

(declare-fun tp!489229 () Bool)

(declare-fun b_and!123961 () Bool)

(assert (=> b!1711781 (= tp!489229 b_and!123961)))

(declare-fun b_free!46461 () Bool)

(declare-fun b_next!47165 () Bool)

(assert (=> b!1711781 (= b_free!46461 (not b_next!47165))))

(declare-fun tp!489230 () Bool)

(declare-fun b_and!123963 () Bool)

(assert (=> b!1711781 (= tp!489230 b_and!123963)))

(declare-fun b!1711777 () Bool)

(declare-fun b_free!46463 () Bool)

(declare-fun b_next!47167 () Bool)

(assert (=> b!1711777 (= b_free!46463 (not b_next!47167))))

(declare-fun tp!489222 () Bool)

(declare-fun b_and!123965 () Bool)

(assert (=> b!1711777 (= tp!489222 b_and!123965)))

(declare-fun b_free!46465 () Bool)

(declare-fun b_next!47169 () Bool)

(assert (=> b!1711777 (= b_free!46465 (not b_next!47169))))

(declare-fun tp!489221 () Bool)

(declare-fun b_and!123967 () Bool)

(assert (=> b!1711777 (= tp!489221 b_and!123967)))

(declare-fun b!1711769 () Bool)

(declare-fun b_free!46467 () Bool)

(declare-fun b_next!47171 () Bool)

(assert (=> b!1711769 (= b_free!46467 (not b_next!47171))))

(declare-fun tp!489219 () Bool)

(declare-fun b_and!123969 () Bool)

(assert (=> b!1711769 (= tp!489219 b_and!123969)))

(declare-fun b_free!46469 () Bool)

(declare-fun b_next!47173 () Bool)

(assert (=> b!1711769 (= b_free!46469 (not b_next!47173))))

(declare-fun tp!489225 () Bool)

(declare-fun b_and!123971 () Bool)

(assert (=> b!1711769 (= tp!489225 b_and!123971)))

(declare-fun b!1711764 () Bool)

(declare-fun res!767377 () Bool)

(declare-fun e!1094814 () Bool)

(assert (=> b!1711764 (=> res!767377 e!1094814)))

(declare-datatypes ((C!9440 0))(
  ( (C!9441 (val!5316 Int)) )
))
(declare-datatypes ((List!18769 0))(
  ( (Nil!18699) (Cons!18699 (h!24100 C!9440) (t!158332 List!18769)) )
))
(declare-fun suffix!1421 () List!18769)

(declare-datatypes ((LexerInterface!2934 0))(
  ( (LexerInterfaceExt!2931 (__x!12092 Int)) (Lexer!2932) )
))
(declare-fun thiss!24550 () LexerInterface!2934)

(declare-fun lt!654045 () List!18769)

(declare-datatypes ((List!18770 0))(
  ( (Nil!18700) (Cons!18700 (h!24101 (_ BitVec 16)) (t!158333 List!18770)) )
))
(declare-datatypes ((TokenValue!3395 0))(
  ( (FloatLiteralValue!6790 (text!24210 List!18770)) (TokenValueExt!3394 (__x!12093 Int)) (Broken!16975 (value!103839 List!18770)) (Object!3464) (End!3395) (Def!3395) (Underscore!3395) (Match!3395) (Else!3395) (Error!3395) (Case!3395) (If!3395) (Extends!3395) (Abstract!3395) (Class!3395) (Val!3395) (DelimiterValue!6790 (del!3455 List!18770)) (KeywordValue!3401 (value!103840 List!18770)) (CommentValue!6790 (value!103841 List!18770)) (WhitespaceValue!6790 (value!103842 List!18770)) (IndentationValue!3395 (value!103843 List!18770)) (String!21306) (Int32!3395) (Broken!16976 (value!103844 List!18770)) (Boolean!3396) (Unit!32528) (OperatorValue!3398 (op!3455 List!18770)) (IdentifierValue!6790 (value!103845 List!18770)) (IdentifierValue!6791 (value!103846 List!18770)) (WhitespaceValue!6791 (value!103847 List!18770)) (True!6790) (False!6790) (Broken!16977 (value!103848 List!18770)) (Broken!16978 (value!103849 List!18770)) (True!6791) (RightBrace!3395) (RightBracket!3395) (Colon!3395) (Null!3395) (Comma!3395) (LeftBracket!3395) (False!6791) (LeftBrace!3395) (ImaginaryLiteralValue!3395 (text!24211 List!18770)) (StringLiteralValue!10185 (value!103850 List!18770)) (EOFValue!3395 (value!103851 List!18770)) (IdentValue!3395 (value!103852 List!18770)) (DelimiterValue!6791 (value!103853 List!18770)) (DedentValue!3395 (value!103854 List!18770)) (NewLineValue!3395 (value!103855 List!18770)) (IntegerValue!10185 (value!103856 (_ BitVec 32)) (text!24212 List!18770)) (IntegerValue!10186 (value!103857 Int) (text!24213 List!18770)) (Times!3395) (Or!3395) (Equal!3395) (Minus!3395) (Broken!16979 (value!103858 List!18770)) (And!3395) (Div!3395) (LessEqual!3395) (Mod!3395) (Concat!8028) (Not!3395) (Plus!3395) (SpaceValue!3395 (value!103859 List!18770)) (IntegerValue!10187 (value!103860 Int) (text!24214 List!18770)) (StringLiteralValue!10186 (text!24215 List!18770)) (FloatLiteralValue!6791 (text!24216 List!18770)) (BytesLiteralValue!3395 (value!103861 List!18770)) (CommentValue!6791 (value!103862 List!18770)) (StringLiteralValue!10187 (value!103863 List!18770)) (ErrorTokenValue!3395 (msg!3456 List!18770)) )
))
(declare-datatypes ((Regex!4633 0))(
  ( (ElementMatch!4633 (c!280452 C!9440)) (Concat!8029 (regOne!9778 Regex!4633) (regTwo!9778 Regex!4633)) (EmptyExpr!4633) (Star!4633 (reg!4962 Regex!4633)) (EmptyLang!4633) (Union!4633 (regOne!9779 Regex!4633) (regTwo!9779 Regex!4633)) )
))
(declare-datatypes ((String!21307 0))(
  ( (String!21308 (value!103864 String)) )
))
(declare-datatypes ((IArray!12443 0))(
  ( (IArray!12444 (innerList!6279 List!18769)) )
))
(declare-datatypes ((Conc!6219 0))(
  ( (Node!6219 (left!14905 Conc!6219) (right!15235 Conc!6219) (csize!12668 Int) (cheight!6430 Int)) (Leaf!9092 (xs!9095 IArray!12443) (csize!12669 Int)) (Empty!6219) )
))
(declare-datatypes ((BalanceConc!12382 0))(
  ( (BalanceConc!12383 (c!280453 Conc!6219)) )
))
(declare-datatypes ((TokenValueInjection!6450 0))(
  ( (TokenValueInjection!6451 (toValue!4808 Int) (toChars!4667 Int)) )
))
(declare-datatypes ((Rule!6410 0))(
  ( (Rule!6411 (regex!3305 Regex!4633) (tag!3601 String!21307) (isSeparator!3305 Bool) (transformation!3305 TokenValueInjection!6450)) )
))
(declare-datatypes ((List!18771 0))(
  ( (Nil!18701) (Cons!18701 (h!24102 Rule!6410) (t!158334 List!18771)) )
))
(declare-fun rules!3447 () List!18771)

(declare-fun prefixMatch!518 (Regex!4633 List!18769) Bool)

(declare-fun rulesRegex!663 (LexerInterface!2934 List!18771) Regex!4633)

(declare-fun ++!5130 (List!18769 List!18769) List!18769)

(declare-fun head!3842 (List!18769) C!9440)

(assert (=> b!1711764 (= res!767377 (prefixMatch!518 (rulesRegex!663 thiss!24550 rules!3447) (++!5130 lt!654045 (Cons!18699 (head!3842 suffix!1421) Nil!18699))))))

(declare-fun b!1711765 () Bool)

(declare-fun e!1094808 () Bool)

(assert (=> b!1711765 (= e!1094814 e!1094808)))

(declare-fun res!767380 () Bool)

(assert (=> b!1711765 (=> res!767380 e!1094808)))

(declare-fun lt!654050 () List!18769)

(declare-fun lt!654053 () List!18769)

(declare-fun isPrefix!1546 (List!18769 List!18769) Bool)

(assert (=> b!1711765 (= res!767380 (not (isPrefix!1546 lt!654050 lt!654053)))))

(declare-datatypes ((Token!6176 0))(
  ( (Token!6177 (value!103865 TokenValue!3395) (rule!5241 Rule!6410) (size!14866 Int) (originalCharacters!4119 List!18769)) )
))
(declare-datatypes ((tuple2!18414 0))(
  ( (tuple2!18415 (_1!10609 Token!6176) (_2!10609 List!18769)) )
))
(declare-fun lt!654048 () tuple2!18414)

(assert (=> b!1711765 (isPrefix!1546 lt!654050 (++!5130 lt!654050 (_2!10609 lt!654048)))))

(declare-datatypes ((Unit!32529 0))(
  ( (Unit!32530) )
))
(declare-fun lt!654054 () Unit!32529)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1056 (List!18769 List!18769) Unit!32529)

(assert (=> b!1711765 (= lt!654054 (lemmaConcatTwoListThenFirstIsPrefix!1056 lt!654050 (_2!10609 lt!654048)))))

(declare-fun list!7546 (BalanceConc!12382) List!18769)

(declare-fun charsOf!1954 (Token!6176) BalanceConc!12382)

(assert (=> b!1711765 (= lt!654050 (list!7546 (charsOf!1954 (_1!10609 lt!654048))))))

(declare-fun e!1094807 () Bool)

(assert (=> b!1711765 e!1094807))

(declare-fun res!767368 () Bool)

(assert (=> b!1711765 (=> (not res!767368) (not e!1094807))))

(declare-datatypes ((Option!3634 0))(
  ( (None!3633) (Some!3633 (v!25022 Rule!6410)) )
))
(declare-fun lt!654058 () Option!3634)

(declare-fun isDefined!2977 (Option!3634) Bool)

(assert (=> b!1711765 (= res!767368 (isDefined!2977 lt!654058))))

(declare-fun getRuleFromTag!355 (LexerInterface!2934 List!18771 String!21307) Option!3634)

(assert (=> b!1711765 (= lt!654058 (getRuleFromTag!355 thiss!24550 rules!3447 (tag!3601 (rule!5241 (_1!10609 lt!654048)))))))

(declare-fun lt!654049 () Unit!32529)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!355 (LexerInterface!2934 List!18771 List!18769 Token!6176) Unit!32529)

(assert (=> b!1711765 (= lt!654049 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!355 thiss!24550 rules!3447 lt!654053 (_1!10609 lt!654048)))))

(declare-datatypes ((Option!3635 0))(
  ( (None!3634) (Some!3634 (v!25023 tuple2!18414)) )
))
(declare-fun lt!654051 () Option!3635)

(declare-fun get!5504 (Option!3635) tuple2!18414)

(assert (=> b!1711765 (= lt!654048 (get!5504 lt!654051))))

(declare-fun lt!654046 () Unit!32529)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!458 (LexerInterface!2934 List!18771 List!18769 List!18769) Unit!32529)

(assert (=> b!1711765 (= lt!654046 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!458 thiss!24550 rules!3447 lt!654045 suffix!1421))))

(declare-fun maxPrefix!1488 (LexerInterface!2934 List!18771 List!18769) Option!3635)

(assert (=> b!1711765 (= lt!654051 (maxPrefix!1488 thiss!24550 rules!3447 lt!654053))))

(assert (=> b!1711765 (isPrefix!1546 lt!654045 lt!654053)))

(declare-fun lt!654052 () Unit!32529)

(assert (=> b!1711765 (= lt!654052 (lemmaConcatTwoListThenFirstIsPrefix!1056 lt!654045 suffix!1421))))

(assert (=> b!1711765 (= lt!654053 (++!5130 lt!654045 suffix!1421))))

(declare-fun b!1711766 () Bool)

(declare-fun res!767375 () Bool)

(declare-fun e!1094799 () Bool)

(assert (=> b!1711766 (=> (not res!767375) (not e!1094799))))

(declare-fun rule!422 () Rule!6410)

(declare-fun contains!3325 (List!18771 Rule!6410) Bool)

(assert (=> b!1711766 (= res!767375 (contains!3325 rules!3447 rule!422))))

(declare-fun b!1711767 () Bool)

(declare-fun validRegex!1866 (Regex!4633) Bool)

(assert (=> b!1711767 (= e!1094808 (validRegex!1866 (regex!3305 (rule!5241 (_1!10609 lt!654048)))))))

(declare-fun b!1711768 () Bool)

(declare-fun res!767369 () Bool)

(declare-fun e!1094810 () Bool)

(assert (=> b!1711768 (=> (not res!767369) (not e!1094810))))

(declare-fun token!523 () Token!6176)

(assert (=> b!1711768 (= res!767369 (= (rule!5241 token!523) rule!422))))

(declare-fun e!1094816 () Bool)

(assert (=> b!1711769 (= e!1094816 (and tp!489219 tp!489225))))

(declare-fun b!1711770 () Bool)

(assert (=> b!1711770 (= e!1094810 (not e!1094814))))

(declare-fun res!767379 () Bool)

(assert (=> b!1711770 (=> res!767379 e!1094814)))

(declare-fun matchR!2107 (Regex!4633 List!18769) Bool)

(assert (=> b!1711770 (= res!767379 (not (matchR!2107 (regex!3305 rule!422) lt!654045)))))

(declare-fun ruleValid!804 (LexerInterface!2934 Rule!6410) Bool)

(assert (=> b!1711770 (ruleValid!804 thiss!24550 rule!422)))

(declare-fun lt!654055 () Unit!32529)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!328 (LexerInterface!2934 Rule!6410 List!18771) Unit!32529)

(assert (=> b!1711770 (= lt!654055 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!328 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1711771 () Bool)

(declare-fun res!767370 () Bool)

(assert (=> b!1711771 (=> (not res!767370) (not e!1094810))))

(declare-fun lt!654047 () tuple2!18414)

(declare-fun isEmpty!11747 (List!18769) Bool)

(assert (=> b!1711771 (= res!767370 (isEmpty!11747 (_2!10609 lt!654047)))))

(declare-fun b!1711773 () Bool)

(declare-fun res!767374 () Bool)

(assert (=> b!1711773 (=> (not res!767374) (not e!1094799))))

(declare-fun rulesInvariant!2603 (LexerInterface!2934 List!18771) Bool)

(assert (=> b!1711773 (= res!767374 (rulesInvariant!2603 thiss!24550 rules!3447))))

(declare-fun e!1094801 () Bool)

(declare-fun e!1094800 () Bool)

(declare-fun b!1711774 () Bool)

(declare-fun tp!489223 () Bool)

(declare-fun inv!21 (TokenValue!3395) Bool)

(assert (=> b!1711774 (= e!1094800 (and (inv!21 (value!103865 token!523)) e!1094801 tp!489223))))

(declare-fun b!1711775 () Bool)

(declare-fun e!1094813 () Bool)

(declare-fun lt!654057 () Rule!6410)

(assert (=> b!1711775 (= e!1094813 (= (rule!5241 (_1!10609 lt!654048)) lt!654057))))

(declare-fun e!1094815 () Bool)

(declare-fun b!1711776 () Bool)

(declare-fun tp!489220 () Bool)

(declare-fun inv!24115 (String!21307) Bool)

(declare-fun inv!24118 (TokenValueInjection!6450) Bool)

(assert (=> b!1711776 (= e!1094815 (and tp!489220 (inv!24115 (tag!3601 (h!24102 rules!3447))) (inv!24118 (transformation!3305 (h!24102 rules!3447))) e!1094816))))

(declare-fun e!1094809 () Bool)

(assert (=> b!1711777 (= e!1094809 (and tp!489222 tp!489221))))

(declare-fun b!1711778 () Bool)

(declare-fun res!767373 () Bool)

(assert (=> b!1711778 (=> res!767373 e!1094814)))

(assert (=> b!1711778 (= res!767373 (isEmpty!11747 suffix!1421))))

(declare-fun b!1711779 () Bool)

(declare-fun e!1094817 () Bool)

(declare-fun tp!489227 () Bool)

(assert (=> b!1711779 (= e!1094801 (and tp!489227 (inv!24115 (tag!3601 (rule!5241 token!523))) (inv!24118 (transformation!3305 (rule!5241 token!523))) e!1094817))))

(declare-fun tp!489228 () Bool)

(declare-fun b!1711780 () Bool)

(declare-fun e!1094805 () Bool)

(assert (=> b!1711780 (= e!1094805 (and tp!489228 (inv!24115 (tag!3601 rule!422)) (inv!24118 (transformation!3305 rule!422)) e!1094809))))

(assert (=> b!1711781 (= e!1094817 (and tp!489229 tp!489230))))

(declare-fun b!1711782 () Bool)

(declare-fun e!1094803 () Bool)

(assert (=> b!1711782 (= e!1094803 e!1094810)))

(declare-fun res!767371 () Bool)

(assert (=> b!1711782 (=> (not res!767371) (not e!1094810))))

(assert (=> b!1711782 (= res!767371 (= (_1!10609 lt!654047) token!523))))

(declare-fun lt!654056 () Option!3635)

(assert (=> b!1711782 (= lt!654047 (get!5504 lt!654056))))

(declare-fun b!1711783 () Bool)

(assert (=> b!1711783 (= e!1094807 e!1094813)))

(declare-fun res!767372 () Bool)

(assert (=> b!1711783 (=> (not res!767372) (not e!1094813))))

(assert (=> b!1711783 (= res!767372 (matchR!2107 (regex!3305 lt!654057) (list!7546 (charsOf!1954 (_1!10609 lt!654048)))))))

(declare-fun get!5505 (Option!3634) Rule!6410)

(assert (=> b!1711783 (= lt!654057 (get!5505 lt!654058))))

(declare-fun b!1711784 () Bool)

(declare-fun res!767378 () Bool)

(assert (=> b!1711784 (=> (not res!767378) (not e!1094799))))

(declare-fun isEmpty!11748 (List!18771) Bool)

(assert (=> b!1711784 (= res!767378 (not (isEmpty!11748 rules!3447)))))

(declare-fun b!1711772 () Bool)

(assert (=> b!1711772 (= e!1094799 e!1094803)))

(declare-fun res!767376 () Bool)

(assert (=> b!1711772 (=> (not res!767376) (not e!1094803))))

(declare-fun isDefined!2978 (Option!3635) Bool)

(assert (=> b!1711772 (= res!767376 (isDefined!2978 lt!654056))))

(assert (=> b!1711772 (= lt!654056 (maxPrefix!1488 thiss!24550 rules!3447 lt!654045))))

(assert (=> b!1711772 (= lt!654045 (list!7546 (charsOf!1954 token!523)))))

(declare-fun res!767381 () Bool)

(assert (=> start!167382 (=> (not res!767381) (not e!1094799))))

(get-info :version)

(assert (=> start!167382 (= res!767381 ((_ is Lexer!2932) thiss!24550))))

(assert (=> start!167382 e!1094799))

(declare-fun e!1094804 () Bool)

(assert (=> start!167382 e!1094804))

(assert (=> start!167382 e!1094805))

(assert (=> start!167382 true))

(declare-fun inv!24119 (Token!6176) Bool)

(assert (=> start!167382 (and (inv!24119 token!523) e!1094800)))

(declare-fun e!1094811 () Bool)

(assert (=> start!167382 e!1094811))

(declare-fun b!1711785 () Bool)

(declare-fun tp_is_empty!7509 () Bool)

(declare-fun tp!489224 () Bool)

(assert (=> b!1711785 (= e!1094804 (and tp_is_empty!7509 tp!489224))))

(declare-fun b!1711786 () Bool)

(declare-fun tp!489226 () Bool)

(assert (=> b!1711786 (= e!1094811 (and e!1094815 tp!489226))))

(assert (= (and start!167382 res!767381) b!1711784))

(assert (= (and b!1711784 res!767378) b!1711773))

(assert (= (and b!1711773 res!767374) b!1711766))

(assert (= (and b!1711766 res!767375) b!1711772))

(assert (= (and b!1711772 res!767376) b!1711782))

(assert (= (and b!1711782 res!767371) b!1711771))

(assert (= (and b!1711771 res!767370) b!1711768))

(assert (= (and b!1711768 res!767369) b!1711770))

(assert (= (and b!1711770 (not res!767379)) b!1711778))

(assert (= (and b!1711778 (not res!767373)) b!1711764))

(assert (= (and b!1711764 (not res!767377)) b!1711765))

(assert (= (and b!1711765 res!767368) b!1711783))

(assert (= (and b!1711783 res!767372) b!1711775))

(assert (= (and b!1711765 (not res!767380)) b!1711767))

(assert (= (and start!167382 ((_ is Cons!18699) suffix!1421)) b!1711785))

(assert (= b!1711780 b!1711777))

(assert (= start!167382 b!1711780))

(assert (= b!1711779 b!1711781))

(assert (= b!1711774 b!1711779))

(assert (= start!167382 b!1711774))

(assert (= b!1711776 b!1711769))

(assert (= b!1711786 b!1711776))

(assert (= (and start!167382 ((_ is Cons!18701) rules!3447)) b!1711786))

(declare-fun m!2115139 () Bool)

(assert (=> b!1711770 m!2115139))

(declare-fun m!2115141 () Bool)

(assert (=> b!1711770 m!2115141))

(declare-fun m!2115143 () Bool)

(assert (=> b!1711770 m!2115143))

(declare-fun m!2115145 () Bool)

(assert (=> b!1711765 m!2115145))

(declare-fun m!2115147 () Bool)

(assert (=> b!1711765 m!2115147))

(declare-fun m!2115149 () Bool)

(assert (=> b!1711765 m!2115149))

(declare-fun m!2115151 () Bool)

(assert (=> b!1711765 m!2115151))

(declare-fun m!2115153 () Bool)

(assert (=> b!1711765 m!2115153))

(declare-fun m!2115155 () Bool)

(assert (=> b!1711765 m!2115155))

(declare-fun m!2115157 () Bool)

(assert (=> b!1711765 m!2115157))

(declare-fun m!2115159 () Bool)

(assert (=> b!1711765 m!2115159))

(declare-fun m!2115161 () Bool)

(assert (=> b!1711765 m!2115161))

(declare-fun m!2115163 () Bool)

(assert (=> b!1711765 m!2115163))

(declare-fun m!2115165 () Bool)

(assert (=> b!1711765 m!2115165))

(assert (=> b!1711765 m!2115157))

(declare-fun m!2115167 () Bool)

(assert (=> b!1711765 m!2115167))

(declare-fun m!2115169 () Bool)

(assert (=> b!1711765 m!2115169))

(assert (=> b!1711765 m!2115151))

(declare-fun m!2115171 () Bool)

(assert (=> b!1711765 m!2115171))

(declare-fun m!2115173 () Bool)

(assert (=> b!1711765 m!2115173))

(declare-fun m!2115175 () Bool)

(assert (=> b!1711779 m!2115175))

(declare-fun m!2115177 () Bool)

(assert (=> b!1711779 m!2115177))

(declare-fun m!2115179 () Bool)

(assert (=> b!1711776 m!2115179))

(declare-fun m!2115181 () Bool)

(assert (=> b!1711776 m!2115181))

(declare-fun m!2115183 () Bool)

(assert (=> b!1711774 m!2115183))

(declare-fun m!2115185 () Bool)

(assert (=> b!1711784 m!2115185))

(declare-fun m!2115187 () Bool)

(assert (=> b!1711771 m!2115187))

(assert (=> b!1711783 m!2115157))

(assert (=> b!1711783 m!2115157))

(assert (=> b!1711783 m!2115159))

(assert (=> b!1711783 m!2115159))

(declare-fun m!2115189 () Bool)

(assert (=> b!1711783 m!2115189))

(declare-fun m!2115191 () Bool)

(assert (=> b!1711783 m!2115191))

(declare-fun m!2115193 () Bool)

(assert (=> b!1711780 m!2115193))

(declare-fun m!2115195 () Bool)

(assert (=> b!1711780 m!2115195))

(declare-fun m!2115197 () Bool)

(assert (=> b!1711772 m!2115197))

(declare-fun m!2115199 () Bool)

(assert (=> b!1711772 m!2115199))

(declare-fun m!2115201 () Bool)

(assert (=> b!1711772 m!2115201))

(assert (=> b!1711772 m!2115201))

(declare-fun m!2115203 () Bool)

(assert (=> b!1711772 m!2115203))

(declare-fun m!2115205 () Bool)

(assert (=> b!1711773 m!2115205))

(declare-fun m!2115207 () Bool)

(assert (=> start!167382 m!2115207))

(declare-fun m!2115209 () Bool)

(assert (=> b!1711778 m!2115209))

(declare-fun m!2115211 () Bool)

(assert (=> b!1711782 m!2115211))

(declare-fun m!2115213 () Bool)

(assert (=> b!1711764 m!2115213))

(declare-fun m!2115215 () Bool)

(assert (=> b!1711764 m!2115215))

(declare-fun m!2115217 () Bool)

(assert (=> b!1711764 m!2115217))

(assert (=> b!1711764 m!2115213))

(assert (=> b!1711764 m!2115217))

(declare-fun m!2115219 () Bool)

(assert (=> b!1711764 m!2115219))

(declare-fun m!2115221 () Bool)

(assert (=> b!1711766 m!2115221))

(declare-fun m!2115223 () Bool)

(assert (=> b!1711767 m!2115223))

(check-sat (not b!1711764) (not b!1711771) (not b_next!47167) b_and!123969 (not b_next!47171) (not b!1711786) (not b!1711783) (not b!1711765) (not b!1711772) b_and!123965 (not b!1711774) (not b!1711766) (not b!1711780) (not b!1711767) b_and!123963 b_and!123961 (not start!167382) (not b!1711785) (not b_next!47165) (not b!1711776) tp_is_empty!7509 (not b_next!47163) (not b_next!47173) (not b!1711782) b_and!123967 (not b_next!47169) (not b!1711784) (not b!1711778) (not b!1711773) b_and!123971 (not b!1711770) (not b!1711779))
(check-sat b_and!123963 b_and!123961 (not b_next!47165) (not b_next!47163) (not b_next!47167) b_and!123969 (not b_next!47171) (not b_next!47169) b_and!123965 b_and!123971 (not b_next!47173) b_and!123967)
(get-model)

(declare-fun d!525183 () Bool)

(assert (=> d!525183 (= (get!5504 lt!654051) (v!25023 lt!654051))))

(assert (=> b!1711765 d!525183))

(declare-fun d!525191 () Bool)

(declare-fun e!1094876 () Bool)

(assert (=> d!525191 e!1094876))

(declare-fun res!767438 () Bool)

(assert (=> d!525191 (=> res!767438 e!1094876)))

(declare-fun lt!654077 () Option!3634)

(declare-fun isEmpty!11750 (Option!3634) Bool)

(assert (=> d!525191 (= res!767438 (isEmpty!11750 lt!654077))))

(declare-fun e!1094873 () Option!3634)

(assert (=> d!525191 (= lt!654077 e!1094873)))

(declare-fun c!280480 () Bool)

(assert (=> d!525191 (= c!280480 (and ((_ is Cons!18701) rules!3447) (= (tag!3601 (h!24102 rules!3447)) (tag!3601 (rule!5241 (_1!10609 lt!654048))))))))

(assert (=> d!525191 (rulesInvariant!2603 thiss!24550 rules!3447)))

(assert (=> d!525191 (= (getRuleFromTag!355 thiss!24550 rules!3447 (tag!3601 (rule!5241 (_1!10609 lt!654048)))) lt!654077)))

(declare-fun b!1711884 () Bool)

(declare-fun lt!654079 () Unit!32529)

(declare-fun lt!654078 () Unit!32529)

(assert (=> b!1711884 (= lt!654079 lt!654078)))

(assert (=> b!1711884 (rulesInvariant!2603 thiss!24550 (t!158334 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!119 (LexerInterface!2934 Rule!6410 List!18771) Unit!32529)

(assert (=> b!1711884 (= lt!654078 (lemmaInvariantOnRulesThenOnTail!119 thiss!24550 (h!24102 rules!3447) (t!158334 rules!3447)))))

(declare-fun e!1094874 () Option!3634)

(assert (=> b!1711884 (= e!1094874 (getRuleFromTag!355 thiss!24550 (t!158334 rules!3447) (tag!3601 (rule!5241 (_1!10609 lt!654048)))))))

(declare-fun b!1711885 () Bool)

(assert (=> b!1711885 (= e!1094873 (Some!3633 (h!24102 rules!3447)))))

(declare-fun b!1711886 () Bool)

(declare-fun e!1094875 () Bool)

(assert (=> b!1711886 (= e!1094875 (= (tag!3601 (get!5505 lt!654077)) (tag!3601 (rule!5241 (_1!10609 lt!654048)))))))

(declare-fun b!1711887 () Bool)

(assert (=> b!1711887 (= e!1094876 e!1094875)))

(declare-fun res!767439 () Bool)

(assert (=> b!1711887 (=> (not res!767439) (not e!1094875))))

(assert (=> b!1711887 (= res!767439 (contains!3325 rules!3447 (get!5505 lt!654077)))))

(declare-fun b!1711888 () Bool)

(assert (=> b!1711888 (= e!1094873 e!1094874)))

(declare-fun c!280479 () Bool)

(assert (=> b!1711888 (= c!280479 (and ((_ is Cons!18701) rules!3447) (not (= (tag!3601 (h!24102 rules!3447)) (tag!3601 (rule!5241 (_1!10609 lt!654048)))))))))

(declare-fun b!1711889 () Bool)

(assert (=> b!1711889 (= e!1094874 None!3633)))

(assert (= (and d!525191 c!280480) b!1711885))

(assert (= (and d!525191 (not c!280480)) b!1711888))

(assert (= (and b!1711888 c!280479) b!1711884))

(assert (= (and b!1711888 (not c!280479)) b!1711889))

(assert (= (and d!525191 (not res!767438)) b!1711887))

(assert (= (and b!1711887 res!767439) b!1711886))

(declare-fun m!2115291 () Bool)

(assert (=> d!525191 m!2115291))

(assert (=> d!525191 m!2115205))

(declare-fun m!2115293 () Bool)

(assert (=> b!1711884 m!2115293))

(declare-fun m!2115295 () Bool)

(assert (=> b!1711884 m!2115295))

(declare-fun m!2115297 () Bool)

(assert (=> b!1711884 m!2115297))

(declare-fun m!2115299 () Bool)

(assert (=> b!1711886 m!2115299))

(assert (=> b!1711887 m!2115299))

(assert (=> b!1711887 m!2115299))

(declare-fun m!2115301 () Bool)

(assert (=> b!1711887 m!2115301))

(assert (=> b!1711765 d!525191))

(declare-fun b!1711918 () Bool)

(declare-fun res!767458 () Bool)

(declare-fun e!1094887 () Bool)

(assert (=> b!1711918 (=> (not res!767458) (not e!1094887))))

(declare-fun lt!654092 () List!18769)

(declare-fun size!14868 (List!18769) Int)

(assert (=> b!1711918 (= res!767458 (= (size!14868 lt!654092) (+ (size!14868 lt!654050) (size!14868 (_2!10609 lt!654048)))))))

(declare-fun b!1711917 () Bool)

(declare-fun e!1094888 () List!18769)

(assert (=> b!1711917 (= e!1094888 (Cons!18699 (h!24100 lt!654050) (++!5130 (t!158332 lt!654050) (_2!10609 lt!654048))))))

(declare-fun b!1711916 () Bool)

(assert (=> b!1711916 (= e!1094888 (_2!10609 lt!654048))))

(declare-fun b!1711919 () Bool)

(assert (=> b!1711919 (= e!1094887 (or (not (= (_2!10609 lt!654048) Nil!18699)) (= lt!654092 lt!654050)))))

(declare-fun d!525203 () Bool)

(assert (=> d!525203 e!1094887))

(declare-fun res!767459 () Bool)

(assert (=> d!525203 (=> (not res!767459) (not e!1094887))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2661 (List!18769) (InoxSet C!9440))

(assert (=> d!525203 (= res!767459 (= (content!2661 lt!654092) ((_ map or) (content!2661 lt!654050) (content!2661 (_2!10609 lt!654048)))))))

(assert (=> d!525203 (= lt!654092 e!1094888)))

(declare-fun c!280485 () Bool)

(assert (=> d!525203 (= c!280485 ((_ is Nil!18699) lt!654050))))

(assert (=> d!525203 (= (++!5130 lt!654050 (_2!10609 lt!654048)) lt!654092)))

(assert (= (and d!525203 c!280485) b!1711916))

(assert (= (and d!525203 (not c!280485)) b!1711917))

(assert (= (and d!525203 res!767459) b!1711918))

(assert (= (and b!1711918 res!767458) b!1711919))

(declare-fun m!2115303 () Bool)

(assert (=> b!1711918 m!2115303))

(declare-fun m!2115305 () Bool)

(assert (=> b!1711918 m!2115305))

(declare-fun m!2115307 () Bool)

(assert (=> b!1711918 m!2115307))

(declare-fun m!2115309 () Bool)

(assert (=> b!1711917 m!2115309))

(declare-fun m!2115311 () Bool)

(assert (=> d!525203 m!2115311))

(declare-fun m!2115313 () Bool)

(assert (=> d!525203 m!2115313))

(declare-fun m!2115315 () Bool)

(assert (=> d!525203 m!2115315))

(assert (=> b!1711765 d!525203))

(declare-fun b!1711957 () Bool)

(declare-fun e!1094911 () Bool)

(declare-fun e!1094910 () Bool)

(assert (=> b!1711957 (= e!1094911 e!1094910)))

(declare-fun res!767485 () Bool)

(assert (=> b!1711957 (=> (not res!767485) (not e!1094910))))

(assert (=> b!1711957 (= res!767485 (not ((_ is Nil!18699) (++!5130 lt!654050 (_2!10609 lt!654048)))))))

(declare-fun d!525205 () Bool)

(declare-fun e!1094909 () Bool)

(assert (=> d!525205 e!1094909))

(declare-fun res!767486 () Bool)

(assert (=> d!525205 (=> res!767486 e!1094909)))

(declare-fun lt!654105 () Bool)

(assert (=> d!525205 (= res!767486 (not lt!654105))))

(assert (=> d!525205 (= lt!654105 e!1094911)))

(declare-fun res!767483 () Bool)

(assert (=> d!525205 (=> res!767483 e!1094911)))

(assert (=> d!525205 (= res!767483 ((_ is Nil!18699) lt!654050))))

(assert (=> d!525205 (= (isPrefix!1546 lt!654050 (++!5130 lt!654050 (_2!10609 lt!654048))) lt!654105)))

(declare-fun b!1711960 () Bool)

(assert (=> b!1711960 (= e!1094909 (>= (size!14868 (++!5130 lt!654050 (_2!10609 lt!654048))) (size!14868 lt!654050)))))

(declare-fun b!1711959 () Bool)

(declare-fun tail!2555 (List!18769) List!18769)

(assert (=> b!1711959 (= e!1094910 (isPrefix!1546 (tail!2555 lt!654050) (tail!2555 (++!5130 lt!654050 (_2!10609 lt!654048)))))))

(declare-fun b!1711958 () Bool)

(declare-fun res!767484 () Bool)

(assert (=> b!1711958 (=> (not res!767484) (not e!1094910))))

(assert (=> b!1711958 (= res!767484 (= (head!3842 lt!654050) (head!3842 (++!5130 lt!654050 (_2!10609 lt!654048)))))))

(assert (= (and d!525205 (not res!767483)) b!1711957))

(assert (= (and b!1711957 res!767485) b!1711958))

(assert (= (and b!1711958 res!767484) b!1711959))

(assert (= (and d!525205 (not res!767486)) b!1711960))

(assert (=> b!1711960 m!2115151))

(declare-fun m!2115385 () Bool)

(assert (=> b!1711960 m!2115385))

(assert (=> b!1711960 m!2115305))

(declare-fun m!2115387 () Bool)

(assert (=> b!1711959 m!2115387))

(assert (=> b!1711959 m!2115151))

(declare-fun m!2115389 () Bool)

(assert (=> b!1711959 m!2115389))

(assert (=> b!1711959 m!2115387))

(assert (=> b!1711959 m!2115389))

(declare-fun m!2115391 () Bool)

(assert (=> b!1711959 m!2115391))

(declare-fun m!2115393 () Bool)

(assert (=> b!1711958 m!2115393))

(assert (=> b!1711958 m!2115151))

(declare-fun m!2115395 () Bool)

(assert (=> b!1711958 m!2115395))

(assert (=> b!1711765 d!525205))

(declare-fun d!525225 () Bool)

(assert (=> d!525225 (isPrefix!1546 lt!654045 (++!5130 lt!654045 suffix!1421))))

(declare-fun lt!654108 () Unit!32529)

(declare-fun choose!10386 (List!18769 List!18769) Unit!32529)

(assert (=> d!525225 (= lt!654108 (choose!10386 lt!654045 suffix!1421))))

(assert (=> d!525225 (= (lemmaConcatTwoListThenFirstIsPrefix!1056 lt!654045 suffix!1421) lt!654108)))

(declare-fun bs!401803 () Bool)

(assert (= bs!401803 d!525225))

(assert (=> bs!401803 m!2115153))

(assert (=> bs!401803 m!2115153))

(declare-fun m!2115397 () Bool)

(assert (=> bs!401803 m!2115397))

(declare-fun m!2115399 () Bool)

(assert (=> bs!401803 m!2115399))

(assert (=> b!1711765 d!525225))

(declare-fun d!525227 () Bool)

(assert (=> d!525227 (isPrefix!1546 lt!654050 (++!5130 lt!654050 (_2!10609 lt!654048)))))

(declare-fun lt!654109 () Unit!32529)

(assert (=> d!525227 (= lt!654109 (choose!10386 lt!654050 (_2!10609 lt!654048)))))

(assert (=> d!525227 (= (lemmaConcatTwoListThenFirstIsPrefix!1056 lt!654050 (_2!10609 lt!654048)) lt!654109)))

(declare-fun bs!401804 () Bool)

(assert (= bs!401804 d!525227))

(assert (=> bs!401804 m!2115151))

(assert (=> bs!401804 m!2115151))

(assert (=> bs!401804 m!2115171))

(declare-fun m!2115401 () Bool)

(assert (=> bs!401804 m!2115401))

(assert (=> b!1711765 d!525227))

(declare-fun d!525229 () Bool)

(assert (=> d!525229 (= (isDefined!2977 lt!654058) (not (isEmpty!11750 lt!654058)))))

(declare-fun bs!401805 () Bool)

(assert (= bs!401805 d!525229))

(declare-fun m!2115413 () Bool)

(assert (=> bs!401805 m!2115413))

(assert (=> b!1711765 d!525229))

(declare-fun d!525239 () Bool)

(declare-fun e!1094953 () Bool)

(assert (=> d!525239 e!1094953))

(declare-fun res!767530 () Bool)

(assert (=> d!525239 (=> (not res!767530) (not e!1094953))))

(assert (=> d!525239 (= res!767530 (isDefined!2977 (getRuleFromTag!355 thiss!24550 rules!3447 (tag!3601 (rule!5241 (_1!10609 lt!654048))))))))

(declare-fun lt!654123 () Unit!32529)

(declare-fun choose!10387 (LexerInterface!2934 List!18771 List!18769 Token!6176) Unit!32529)

(assert (=> d!525239 (= lt!654123 (choose!10387 thiss!24550 rules!3447 lt!654053 (_1!10609 lt!654048)))))

(assert (=> d!525239 (rulesInvariant!2603 thiss!24550 rules!3447)))

(assert (=> d!525239 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!355 thiss!24550 rules!3447 lt!654053 (_1!10609 lt!654048)) lt!654123)))

(declare-fun b!1712018 () Bool)

(declare-fun res!767531 () Bool)

(assert (=> b!1712018 (=> (not res!767531) (not e!1094953))))

(assert (=> b!1712018 (= res!767531 (matchR!2107 (regex!3305 (get!5505 (getRuleFromTag!355 thiss!24550 rules!3447 (tag!3601 (rule!5241 (_1!10609 lt!654048)))))) (list!7546 (charsOf!1954 (_1!10609 lt!654048)))))))

(declare-fun b!1712019 () Bool)

(assert (=> b!1712019 (= e!1094953 (= (rule!5241 (_1!10609 lt!654048)) (get!5505 (getRuleFromTag!355 thiss!24550 rules!3447 (tag!3601 (rule!5241 (_1!10609 lt!654048)))))))))

(assert (= (and d!525239 res!767530) b!1712018))

(assert (= (and b!1712018 res!767531) b!1712019))

(assert (=> d!525239 m!2115165))

(assert (=> d!525239 m!2115165))

(declare-fun m!2115455 () Bool)

(assert (=> d!525239 m!2115455))

(declare-fun m!2115457 () Bool)

(assert (=> d!525239 m!2115457))

(assert (=> d!525239 m!2115205))

(assert (=> b!1712018 m!2115165))

(declare-fun m!2115459 () Bool)

(assert (=> b!1712018 m!2115459))

(assert (=> b!1712018 m!2115159))

(declare-fun m!2115461 () Bool)

(assert (=> b!1712018 m!2115461))

(assert (=> b!1712018 m!2115157))

(assert (=> b!1712018 m!2115165))

(assert (=> b!1712018 m!2115157))

(assert (=> b!1712018 m!2115159))

(assert (=> b!1712019 m!2115165))

(assert (=> b!1712019 m!2115165))

(assert (=> b!1712019 m!2115459))

(assert (=> b!1711765 d!525239))

(declare-fun d!525255 () Bool)

(declare-fun lt!654126 () BalanceConc!12382)

(assert (=> d!525255 (= (list!7546 lt!654126) (originalCharacters!4119 (_1!10609 lt!654048)))))

(declare-fun dynLambda!8501 (Int TokenValue!3395) BalanceConc!12382)

(assert (=> d!525255 (= lt!654126 (dynLambda!8501 (toChars!4667 (transformation!3305 (rule!5241 (_1!10609 lt!654048)))) (value!103865 (_1!10609 lt!654048))))))

(assert (=> d!525255 (= (charsOf!1954 (_1!10609 lt!654048)) lt!654126)))

(declare-fun b_lambda!54011 () Bool)

(assert (=> (not b_lambda!54011) (not d!525255)))

(declare-fun tb!101015 () Bool)

(declare-fun t!158348 () Bool)

(assert (=> (and b!1711781 (= (toChars!4667 (transformation!3305 (rule!5241 token!523))) (toChars!4667 (transformation!3305 (rule!5241 (_1!10609 lt!654048))))) t!158348) tb!101015))

(declare-fun b!1712024 () Bool)

(declare-fun e!1094956 () Bool)

(declare-fun tp!489237 () Bool)

(declare-fun inv!24122 (Conc!6219) Bool)

(assert (=> b!1712024 (= e!1094956 (and (inv!24122 (c!280453 (dynLambda!8501 (toChars!4667 (transformation!3305 (rule!5241 (_1!10609 lt!654048)))) (value!103865 (_1!10609 lt!654048))))) tp!489237))))

(declare-fun result!121384 () Bool)

(declare-fun inv!24123 (BalanceConc!12382) Bool)

(assert (=> tb!101015 (= result!121384 (and (inv!24123 (dynLambda!8501 (toChars!4667 (transformation!3305 (rule!5241 (_1!10609 lt!654048)))) (value!103865 (_1!10609 lt!654048)))) e!1094956))))

(assert (= tb!101015 b!1712024))

(declare-fun m!2115463 () Bool)

(assert (=> b!1712024 m!2115463))

(declare-fun m!2115465 () Bool)

(assert (=> tb!101015 m!2115465))

(assert (=> d!525255 t!158348))

(declare-fun b_and!123991 () Bool)

(assert (= b_and!123963 (and (=> t!158348 result!121384) b_and!123991)))

(declare-fun t!158350 () Bool)

(declare-fun tb!101017 () Bool)

(assert (=> (and b!1711777 (= (toChars!4667 (transformation!3305 rule!422)) (toChars!4667 (transformation!3305 (rule!5241 (_1!10609 lt!654048))))) t!158350) tb!101017))

(declare-fun result!121388 () Bool)

(assert (= result!121388 result!121384))

(assert (=> d!525255 t!158350))

(declare-fun b_and!123993 () Bool)

(assert (= b_and!123967 (and (=> t!158350 result!121388) b_and!123993)))

(declare-fun tb!101019 () Bool)

(declare-fun t!158352 () Bool)

(assert (=> (and b!1711769 (= (toChars!4667 (transformation!3305 (h!24102 rules!3447))) (toChars!4667 (transformation!3305 (rule!5241 (_1!10609 lt!654048))))) t!158352) tb!101019))

(declare-fun result!121390 () Bool)

(assert (= result!121390 result!121384))

(assert (=> d!525255 t!158352))

(declare-fun b_and!123995 () Bool)

(assert (= b_and!123971 (and (=> t!158352 result!121390) b_and!123995)))

(declare-fun m!2115467 () Bool)

(assert (=> d!525255 m!2115467))

(declare-fun m!2115469 () Bool)

(assert (=> d!525255 m!2115469))

(assert (=> b!1711765 d!525255))

(declare-fun b!1712025 () Bool)

(declare-fun e!1094959 () Bool)

(declare-fun e!1094958 () Bool)

(assert (=> b!1712025 (= e!1094959 e!1094958)))

(declare-fun res!767534 () Bool)

(assert (=> b!1712025 (=> (not res!767534) (not e!1094958))))

(assert (=> b!1712025 (= res!767534 (not ((_ is Nil!18699) lt!654053)))))

(declare-fun d!525257 () Bool)

(declare-fun e!1094957 () Bool)

(assert (=> d!525257 e!1094957))

(declare-fun res!767535 () Bool)

(assert (=> d!525257 (=> res!767535 e!1094957)))

(declare-fun lt!654127 () Bool)

(assert (=> d!525257 (= res!767535 (not lt!654127))))

(assert (=> d!525257 (= lt!654127 e!1094959)))

(declare-fun res!767532 () Bool)

(assert (=> d!525257 (=> res!767532 e!1094959)))

(assert (=> d!525257 (= res!767532 ((_ is Nil!18699) lt!654050))))

(assert (=> d!525257 (= (isPrefix!1546 lt!654050 lt!654053) lt!654127)))

(declare-fun b!1712028 () Bool)

(assert (=> b!1712028 (= e!1094957 (>= (size!14868 lt!654053) (size!14868 lt!654050)))))

(declare-fun b!1712027 () Bool)

(assert (=> b!1712027 (= e!1094958 (isPrefix!1546 (tail!2555 lt!654050) (tail!2555 lt!654053)))))

(declare-fun b!1712026 () Bool)

(declare-fun res!767533 () Bool)

(assert (=> b!1712026 (=> (not res!767533) (not e!1094958))))

(assert (=> b!1712026 (= res!767533 (= (head!3842 lt!654050) (head!3842 lt!654053)))))

(assert (= (and d!525257 (not res!767532)) b!1712025))

(assert (= (and b!1712025 res!767534) b!1712026))

(assert (= (and b!1712026 res!767533) b!1712027))

(assert (= (and d!525257 (not res!767535)) b!1712028))

(declare-fun m!2115471 () Bool)

(assert (=> b!1712028 m!2115471))

(assert (=> b!1712028 m!2115305))

(assert (=> b!1712027 m!2115387))

(declare-fun m!2115473 () Bool)

(assert (=> b!1712027 m!2115473))

(assert (=> b!1712027 m!2115387))

(assert (=> b!1712027 m!2115473))

(declare-fun m!2115475 () Bool)

(assert (=> b!1712027 m!2115475))

(assert (=> b!1712026 m!2115393))

(declare-fun m!2115477 () Bool)

(assert (=> b!1712026 m!2115477))

(assert (=> b!1711765 d!525257))

(declare-fun b!1712140 () Bool)

(declare-fun lt!654233 () Token!6176)

(declare-fun e!1095023 () Bool)

(assert (=> b!1712140 (= e!1095023 (= (rule!5241 lt!654233) (get!5505 (getRuleFromTag!355 thiss!24550 rules!3447 (tag!3601 (rule!5241 lt!654233))))))))

(declare-fun b!1712139 () Bool)

(declare-fun res!767581 () Bool)

(assert (=> b!1712139 (=> (not res!767581) (not e!1095023))))

(assert (=> b!1712139 (= res!767581 (matchR!2107 (regex!3305 (get!5505 (getRuleFromTag!355 thiss!24550 rules!3447 (tag!3601 (rule!5241 lt!654233))))) (list!7546 (charsOf!1954 lt!654233))))))

(declare-fun b!1712141 () Bool)

(declare-fun e!1095024 () Unit!32529)

(declare-fun Unit!32532 () Unit!32529)

(assert (=> b!1712141 (= e!1095024 Unit!32532)))

(declare-fun lt!654245 () List!18769)

(assert (=> b!1712141 (= lt!654245 (++!5130 lt!654045 suffix!1421))))

(declare-fun lt!654247 () Unit!32529)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!249 (LexerInterface!2934 Rule!6410 List!18771 List!18769) Unit!32529)

(assert (=> b!1712141 (= lt!654247 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!249 thiss!24550 (rule!5241 lt!654233) rules!3447 lt!654245))))

(declare-fun isEmpty!11751 (Option!3635) Bool)

(declare-fun maxPrefixOneRule!870 (LexerInterface!2934 Rule!6410 List!18769) Option!3635)

(assert (=> b!1712141 (isEmpty!11751 (maxPrefixOneRule!870 thiss!24550 (rule!5241 lt!654233) lt!654245))))

(declare-fun lt!654234 () Unit!32529)

(assert (=> b!1712141 (= lt!654234 lt!654247)))

(declare-fun lt!654246 () List!18769)

(assert (=> b!1712141 (= lt!654246 (list!7546 (charsOf!1954 lt!654233)))))

(declare-fun lt!654242 () Unit!32529)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!245 (LexerInterface!2934 Rule!6410 List!18769 List!18769) Unit!32529)

(assert (=> b!1712141 (= lt!654242 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!245 thiss!24550 (rule!5241 lt!654233) lt!654246 (++!5130 lt!654045 suffix!1421)))))

(assert (=> b!1712141 (not (matchR!2107 (regex!3305 (rule!5241 lt!654233)) lt!654246))))

(declare-fun lt!654248 () Unit!32529)

(assert (=> b!1712141 (= lt!654248 lt!654242)))

(assert (=> b!1712141 false))

(declare-fun d!525259 () Bool)

(assert (=> d!525259 (isDefined!2978 (maxPrefix!1488 thiss!24550 rules!3447 (++!5130 lt!654045 suffix!1421)))))

(declare-fun lt!654236 () Unit!32529)

(assert (=> d!525259 (= lt!654236 e!1095024)))

(declare-fun c!280510 () Bool)

(assert (=> d!525259 (= c!280510 (isEmpty!11751 (maxPrefix!1488 thiss!24550 rules!3447 (++!5130 lt!654045 suffix!1421))))))

(declare-fun lt!654235 () Unit!32529)

(declare-fun lt!654240 () Unit!32529)

(assert (=> d!525259 (= lt!654235 lt!654240)))

(assert (=> d!525259 e!1095023))

(declare-fun res!767582 () Bool)

(assert (=> d!525259 (=> (not res!767582) (not e!1095023))))

(assert (=> d!525259 (= res!767582 (isDefined!2977 (getRuleFromTag!355 thiss!24550 rules!3447 (tag!3601 (rule!5241 lt!654233)))))))

(assert (=> d!525259 (= lt!654240 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!355 thiss!24550 rules!3447 lt!654045 lt!654233))))

(declare-fun lt!654238 () Unit!32529)

(declare-fun lt!654237 () Unit!32529)

(assert (=> d!525259 (= lt!654238 lt!654237)))

(declare-fun lt!654244 () List!18769)

(assert (=> d!525259 (isPrefix!1546 lt!654244 (++!5130 lt!654045 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!241 (List!18769 List!18769 List!18769) Unit!32529)

(assert (=> d!525259 (= lt!654237 (lemmaPrefixStaysPrefixWhenAddingToSuffix!241 lt!654244 lt!654045 suffix!1421))))

(assert (=> d!525259 (= lt!654244 (list!7546 (charsOf!1954 lt!654233)))))

(declare-fun lt!654241 () Unit!32529)

(declare-fun lt!654239 () Unit!32529)

(assert (=> d!525259 (= lt!654241 lt!654239)))

(declare-fun lt!654249 () List!18769)

(declare-fun lt!654243 () List!18769)

(assert (=> d!525259 (isPrefix!1546 lt!654249 (++!5130 lt!654249 lt!654243))))

(assert (=> d!525259 (= lt!654239 (lemmaConcatTwoListThenFirstIsPrefix!1056 lt!654249 lt!654243))))

(assert (=> d!525259 (= lt!654243 (_2!10609 (get!5504 (maxPrefix!1488 thiss!24550 rules!3447 lt!654045))))))

(assert (=> d!525259 (= lt!654249 (list!7546 (charsOf!1954 lt!654233)))))

(declare-datatypes ((List!18775 0))(
  ( (Nil!18705) (Cons!18705 (h!24106 Token!6176) (t!158370 List!18775)) )
))
(declare-fun head!3844 (List!18775) Token!6176)

(declare-datatypes ((IArray!12447 0))(
  ( (IArray!12448 (innerList!6281 List!18775)) )
))
(declare-datatypes ((Conc!6221 0))(
  ( (Node!6221 (left!14907 Conc!6221) (right!15237 Conc!6221) (csize!12672 Int) (cheight!6432 Int)) (Leaf!9094 (xs!9097 IArray!12447) (csize!12673 Int)) (Empty!6221) )
))
(declare-datatypes ((BalanceConc!12386 0))(
  ( (BalanceConc!12387 (c!280545 Conc!6221)) )
))
(declare-fun list!7549 (BalanceConc!12386) List!18775)

(declare-datatypes ((tuple2!18418 0))(
  ( (tuple2!18419 (_1!10611 BalanceConc!12386) (_2!10611 BalanceConc!12382)) )
))
(declare-fun lex!1380 (LexerInterface!2934 List!18771 BalanceConc!12382) tuple2!18418)

(declare-fun seqFromList!2279 (List!18769) BalanceConc!12382)

(assert (=> d!525259 (= lt!654233 (head!3844 (list!7549 (_1!10611 (lex!1380 thiss!24550 rules!3447 (seqFromList!2279 lt!654045))))))))

(assert (=> d!525259 (not (isEmpty!11748 rules!3447))))

(assert (=> d!525259 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!458 thiss!24550 rules!3447 lt!654045 suffix!1421) lt!654236)))

(declare-fun b!1712142 () Bool)

(declare-fun Unit!32534 () Unit!32529)

(assert (=> b!1712142 (= e!1095024 Unit!32534)))

(assert (= (and d!525259 res!767582) b!1712139))

(assert (= (and b!1712139 res!767581) b!1712140))

(assert (= (and d!525259 c!280510) b!1712141))

(assert (= (and d!525259 (not c!280510)) b!1712142))

(declare-fun m!2115613 () Bool)

(assert (=> b!1712140 m!2115613))

(assert (=> b!1712140 m!2115613))

(declare-fun m!2115615 () Bool)

(assert (=> b!1712140 m!2115615))

(assert (=> b!1712139 m!2115613))

(declare-fun m!2115617 () Bool)

(assert (=> b!1712139 m!2115617))

(declare-fun m!2115619 () Bool)

(assert (=> b!1712139 m!2115619))

(assert (=> b!1712139 m!2115619))

(declare-fun m!2115621 () Bool)

(assert (=> b!1712139 m!2115621))

(assert (=> b!1712139 m!2115617))

(assert (=> b!1712139 m!2115613))

(assert (=> b!1712139 m!2115615))

(assert (=> b!1712141 m!2115617))

(assert (=> b!1712141 m!2115619))

(declare-fun m!2115623 () Bool)

(assert (=> b!1712141 m!2115623))

(declare-fun m!2115625 () Bool)

(assert (=> b!1712141 m!2115625))

(declare-fun m!2115627 () Bool)

(assert (=> b!1712141 m!2115627))

(assert (=> b!1712141 m!2115623))

(declare-fun m!2115629 () Bool)

(assert (=> b!1712141 m!2115629))

(assert (=> b!1712141 m!2115617))

(assert (=> b!1712141 m!2115153))

(declare-fun m!2115631 () Bool)

(assert (=> b!1712141 m!2115631))

(assert (=> b!1712141 m!2115153))

(declare-fun m!2115633 () Bool)

(assert (=> d!525259 m!2115633))

(declare-fun m!2115635 () Bool)

(assert (=> d!525259 m!2115635))

(assert (=> d!525259 m!2115613))

(declare-fun m!2115637 () Bool)

(assert (=> d!525259 m!2115637))

(assert (=> d!525259 m!2115199))

(declare-fun m!2115639 () Bool)

(assert (=> d!525259 m!2115639))

(declare-fun m!2115641 () Bool)

(assert (=> d!525259 m!2115641))

(declare-fun m!2115643 () Bool)

(assert (=> d!525259 m!2115643))

(declare-fun m!2115645 () Bool)

(assert (=> d!525259 m!2115645))

(assert (=> d!525259 m!2115633))

(assert (=> d!525259 m!2115153))

(declare-fun m!2115647 () Bool)

(assert (=> d!525259 m!2115647))

(assert (=> d!525259 m!2115199))

(assert (=> d!525259 m!2115613))

(declare-fun m!2115649 () Bool)

(assert (=> d!525259 m!2115649))

(assert (=> d!525259 m!2115617))

(assert (=> d!525259 m!2115619))

(assert (=> d!525259 m!2115185))

(assert (=> d!525259 m!2115641))

(declare-fun m!2115651 () Bool)

(assert (=> d!525259 m!2115651))

(assert (=> d!525259 m!2115645))

(declare-fun m!2115653 () Bool)

(assert (=> d!525259 m!2115653))

(assert (=> d!525259 m!2115647))

(declare-fun m!2115655 () Bool)

(assert (=> d!525259 m!2115655))

(assert (=> d!525259 m!2115153))

(declare-fun m!2115657 () Bool)

(assert (=> d!525259 m!2115657))

(assert (=> d!525259 m!2115153))

(declare-fun m!2115659 () Bool)

(assert (=> d!525259 m!2115659))

(assert (=> d!525259 m!2115647))

(declare-fun m!2115661 () Bool)

(assert (=> d!525259 m!2115661))

(assert (=> d!525259 m!2115617))

(assert (=> b!1711765 d!525259))

(declare-fun b!1712145 () Bool)

(declare-fun res!767583 () Bool)

(declare-fun e!1095025 () Bool)

(assert (=> b!1712145 (=> (not res!767583) (not e!1095025))))

(declare-fun lt!654250 () List!18769)

(assert (=> b!1712145 (= res!767583 (= (size!14868 lt!654250) (+ (size!14868 lt!654045) (size!14868 suffix!1421))))))

(declare-fun b!1712144 () Bool)

(declare-fun e!1095026 () List!18769)

(assert (=> b!1712144 (= e!1095026 (Cons!18699 (h!24100 lt!654045) (++!5130 (t!158332 lt!654045) suffix!1421)))))

(declare-fun b!1712143 () Bool)

(assert (=> b!1712143 (= e!1095026 suffix!1421)))

(declare-fun b!1712146 () Bool)

(assert (=> b!1712146 (= e!1095025 (or (not (= suffix!1421 Nil!18699)) (= lt!654250 lt!654045)))))

(declare-fun d!525279 () Bool)

(assert (=> d!525279 e!1095025))

(declare-fun res!767584 () Bool)

(assert (=> d!525279 (=> (not res!767584) (not e!1095025))))

(assert (=> d!525279 (= res!767584 (= (content!2661 lt!654250) ((_ map or) (content!2661 lt!654045) (content!2661 suffix!1421))))))

(assert (=> d!525279 (= lt!654250 e!1095026)))

(declare-fun c!280511 () Bool)

(assert (=> d!525279 (= c!280511 ((_ is Nil!18699) lt!654045))))

(assert (=> d!525279 (= (++!5130 lt!654045 suffix!1421) lt!654250)))

(assert (= (and d!525279 c!280511) b!1712143))

(assert (= (and d!525279 (not c!280511)) b!1712144))

(assert (= (and d!525279 res!767584) b!1712145))

(assert (= (and b!1712145 res!767583) b!1712146))

(declare-fun m!2115663 () Bool)

(assert (=> b!1712145 m!2115663))

(declare-fun m!2115665 () Bool)

(assert (=> b!1712145 m!2115665))

(declare-fun m!2115667 () Bool)

(assert (=> b!1712145 m!2115667))

(declare-fun m!2115669 () Bool)

(assert (=> b!1712144 m!2115669))

(declare-fun m!2115671 () Bool)

(assert (=> d!525279 m!2115671))

(declare-fun m!2115673 () Bool)

(assert (=> d!525279 m!2115673))

(declare-fun m!2115675 () Bool)

(assert (=> d!525279 m!2115675))

(assert (=> b!1711765 d!525279))

(declare-fun b!1712165 () Bool)

(declare-fun res!767604 () Bool)

(declare-fun e!1095033 () Bool)

(assert (=> b!1712165 (=> (not res!767604) (not e!1095033))))

(declare-fun lt!654261 () Option!3635)

(assert (=> b!1712165 (= res!767604 (= (list!7546 (charsOf!1954 (_1!10609 (get!5504 lt!654261)))) (originalCharacters!4119 (_1!10609 (get!5504 lt!654261)))))))

(declare-fun b!1712166 () Bool)

(declare-fun res!767601 () Bool)

(assert (=> b!1712166 (=> (not res!767601) (not e!1095033))))

(declare-fun apply!5114 (TokenValueInjection!6450 BalanceConc!12382) TokenValue!3395)

(assert (=> b!1712166 (= res!767601 (= (value!103865 (_1!10609 (get!5504 lt!654261))) (apply!5114 (transformation!3305 (rule!5241 (_1!10609 (get!5504 lt!654261)))) (seqFromList!2279 (originalCharacters!4119 (_1!10609 (get!5504 lt!654261)))))))))

(declare-fun call!109492 () Option!3635)

(declare-fun bm!109487 () Bool)

(assert (=> bm!109487 (= call!109492 (maxPrefixOneRule!870 thiss!24550 (h!24102 rules!3447) lt!654053))))

(declare-fun b!1712167 () Bool)

(assert (=> b!1712167 (= e!1095033 (contains!3325 rules!3447 (rule!5241 (_1!10609 (get!5504 lt!654261)))))))

(declare-fun b!1712168 () Bool)

(declare-fun e!1095034 () Option!3635)

(declare-fun lt!654262 () Option!3635)

(declare-fun lt!654265 () Option!3635)

(assert (=> b!1712168 (= e!1095034 (ite (and ((_ is None!3634) lt!654262) ((_ is None!3634) lt!654265)) None!3634 (ite ((_ is None!3634) lt!654265) lt!654262 (ite ((_ is None!3634) lt!654262) lt!654265 (ite (>= (size!14866 (_1!10609 (v!25023 lt!654262))) (size!14866 (_1!10609 (v!25023 lt!654265)))) lt!654262 lt!654265)))))))

(assert (=> b!1712168 (= lt!654262 call!109492)))

(assert (=> b!1712168 (= lt!654265 (maxPrefix!1488 thiss!24550 (t!158334 rules!3447) lt!654053))))

(declare-fun b!1712169 () Bool)

(declare-fun res!767599 () Bool)

(assert (=> b!1712169 (=> (not res!767599) (not e!1095033))))

(assert (=> b!1712169 (= res!767599 (matchR!2107 (regex!3305 (rule!5241 (_1!10609 (get!5504 lt!654261)))) (list!7546 (charsOf!1954 (_1!10609 (get!5504 lt!654261))))))))

(declare-fun d!525281 () Bool)

(declare-fun e!1095035 () Bool)

(assert (=> d!525281 e!1095035))

(declare-fun res!767605 () Bool)

(assert (=> d!525281 (=> res!767605 e!1095035)))

(assert (=> d!525281 (= res!767605 (isEmpty!11751 lt!654261))))

(assert (=> d!525281 (= lt!654261 e!1095034)))

(declare-fun c!280514 () Bool)

(assert (=> d!525281 (= c!280514 (and ((_ is Cons!18701) rules!3447) ((_ is Nil!18701) (t!158334 rules!3447))))))

(declare-fun lt!654263 () Unit!32529)

(declare-fun lt!654264 () Unit!32529)

(assert (=> d!525281 (= lt!654263 lt!654264)))

(assert (=> d!525281 (isPrefix!1546 lt!654053 lt!654053)))

(declare-fun lemmaIsPrefixRefl!1055 (List!18769 List!18769) Unit!32529)

(assert (=> d!525281 (= lt!654264 (lemmaIsPrefixRefl!1055 lt!654053 lt!654053))))

(declare-fun rulesValidInductive!1090 (LexerInterface!2934 List!18771) Bool)

(assert (=> d!525281 (rulesValidInductive!1090 thiss!24550 rules!3447)))

(assert (=> d!525281 (= (maxPrefix!1488 thiss!24550 rules!3447 lt!654053) lt!654261)))

(declare-fun b!1712170 () Bool)

(assert (=> b!1712170 (= e!1095034 call!109492)))

(declare-fun b!1712171 () Bool)

(declare-fun res!767600 () Bool)

(assert (=> b!1712171 (=> (not res!767600) (not e!1095033))))

(assert (=> b!1712171 (= res!767600 (< (size!14868 (_2!10609 (get!5504 lt!654261))) (size!14868 lt!654053)))))

(declare-fun b!1712172 () Bool)

(assert (=> b!1712172 (= e!1095035 e!1095033)))

(declare-fun res!767603 () Bool)

(assert (=> b!1712172 (=> (not res!767603) (not e!1095033))))

(assert (=> b!1712172 (= res!767603 (isDefined!2978 lt!654261))))

(declare-fun b!1712173 () Bool)

(declare-fun res!767602 () Bool)

(assert (=> b!1712173 (=> (not res!767602) (not e!1095033))))

(assert (=> b!1712173 (= res!767602 (= (++!5130 (list!7546 (charsOf!1954 (_1!10609 (get!5504 lt!654261)))) (_2!10609 (get!5504 lt!654261))) lt!654053))))

(assert (= (and d!525281 c!280514) b!1712170))

(assert (= (and d!525281 (not c!280514)) b!1712168))

(assert (= (or b!1712170 b!1712168) bm!109487))

(assert (= (and d!525281 (not res!767605)) b!1712172))

(assert (= (and b!1712172 res!767603) b!1712165))

(assert (= (and b!1712165 res!767604) b!1712171))

(assert (= (and b!1712171 res!767600) b!1712173))

(assert (= (and b!1712173 res!767602) b!1712166))

(assert (= (and b!1712166 res!767601) b!1712169))

(assert (= (and b!1712169 res!767599) b!1712167))

(declare-fun m!2115677 () Bool)

(assert (=> bm!109487 m!2115677))

(declare-fun m!2115679 () Bool)

(assert (=> b!1712168 m!2115679))

(declare-fun m!2115681 () Bool)

(assert (=> d!525281 m!2115681))

(declare-fun m!2115683 () Bool)

(assert (=> d!525281 m!2115683))

(declare-fun m!2115685 () Bool)

(assert (=> d!525281 m!2115685))

(declare-fun m!2115687 () Bool)

(assert (=> d!525281 m!2115687))

(declare-fun m!2115689 () Bool)

(assert (=> b!1712166 m!2115689))

(declare-fun m!2115691 () Bool)

(assert (=> b!1712166 m!2115691))

(assert (=> b!1712166 m!2115691))

(declare-fun m!2115693 () Bool)

(assert (=> b!1712166 m!2115693))

(assert (=> b!1712171 m!2115689))

(declare-fun m!2115695 () Bool)

(assert (=> b!1712171 m!2115695))

(assert (=> b!1712171 m!2115471))

(assert (=> b!1712169 m!2115689))

(declare-fun m!2115697 () Bool)

(assert (=> b!1712169 m!2115697))

(assert (=> b!1712169 m!2115697))

(declare-fun m!2115699 () Bool)

(assert (=> b!1712169 m!2115699))

(assert (=> b!1712169 m!2115699))

(declare-fun m!2115701 () Bool)

(assert (=> b!1712169 m!2115701))

(assert (=> b!1712165 m!2115689))

(assert (=> b!1712165 m!2115697))

(assert (=> b!1712165 m!2115697))

(assert (=> b!1712165 m!2115699))

(assert (=> b!1712167 m!2115689))

(declare-fun m!2115703 () Bool)

(assert (=> b!1712167 m!2115703))

(declare-fun m!2115705 () Bool)

(assert (=> b!1712172 m!2115705))

(assert (=> b!1712173 m!2115689))

(assert (=> b!1712173 m!2115697))

(assert (=> b!1712173 m!2115697))

(assert (=> b!1712173 m!2115699))

(assert (=> b!1712173 m!2115699))

(declare-fun m!2115707 () Bool)

(assert (=> b!1712173 m!2115707))

(assert (=> b!1711765 d!525281))

(declare-fun b!1712174 () Bool)

(declare-fun e!1095038 () Bool)

(declare-fun e!1095037 () Bool)

(assert (=> b!1712174 (= e!1095038 e!1095037)))

(declare-fun res!767608 () Bool)

(assert (=> b!1712174 (=> (not res!767608) (not e!1095037))))

(assert (=> b!1712174 (= res!767608 (not ((_ is Nil!18699) lt!654053)))))

(declare-fun d!525283 () Bool)

(declare-fun e!1095036 () Bool)

(assert (=> d!525283 e!1095036))

(declare-fun res!767609 () Bool)

(assert (=> d!525283 (=> res!767609 e!1095036)))

(declare-fun lt!654266 () Bool)

(assert (=> d!525283 (= res!767609 (not lt!654266))))

(assert (=> d!525283 (= lt!654266 e!1095038)))

(declare-fun res!767606 () Bool)

(assert (=> d!525283 (=> res!767606 e!1095038)))

(assert (=> d!525283 (= res!767606 ((_ is Nil!18699) lt!654045))))

(assert (=> d!525283 (= (isPrefix!1546 lt!654045 lt!654053) lt!654266)))

(declare-fun b!1712177 () Bool)

(assert (=> b!1712177 (= e!1095036 (>= (size!14868 lt!654053) (size!14868 lt!654045)))))

(declare-fun b!1712176 () Bool)

(assert (=> b!1712176 (= e!1095037 (isPrefix!1546 (tail!2555 lt!654045) (tail!2555 lt!654053)))))

(declare-fun b!1712175 () Bool)

(declare-fun res!767607 () Bool)

(assert (=> b!1712175 (=> (not res!767607) (not e!1095037))))

(assert (=> b!1712175 (= res!767607 (= (head!3842 lt!654045) (head!3842 lt!654053)))))

(assert (= (and d!525283 (not res!767606)) b!1712174))

(assert (= (and b!1712174 res!767608) b!1712175))

(assert (= (and b!1712175 res!767607) b!1712176))

(assert (= (and d!525283 (not res!767609)) b!1712177))

(assert (=> b!1712177 m!2115471))

(assert (=> b!1712177 m!2115665))

(declare-fun m!2115709 () Bool)

(assert (=> b!1712176 m!2115709))

(assert (=> b!1712176 m!2115473))

(assert (=> b!1712176 m!2115709))

(assert (=> b!1712176 m!2115473))

(declare-fun m!2115711 () Bool)

(assert (=> b!1712176 m!2115711))

(declare-fun m!2115713 () Bool)

(assert (=> b!1712175 m!2115713))

(assert (=> b!1712175 m!2115477))

(assert (=> b!1711765 d!525283))

(declare-fun d!525285 () Bool)

(declare-fun list!7550 (Conc!6219) List!18769)

(assert (=> d!525285 (= (list!7546 (charsOf!1954 (_1!10609 lt!654048))) (list!7550 (c!280453 (charsOf!1954 (_1!10609 lt!654048)))))))

(declare-fun bs!401809 () Bool)

(assert (= bs!401809 d!525285))

(declare-fun m!2115715 () Bool)

(assert (=> bs!401809 m!2115715))

(assert (=> b!1711765 d!525285))

(declare-fun d!525287 () Bool)

(assert (=> d!525287 (= (inv!24115 (tag!3601 (h!24102 rules!3447))) (= (mod (str.len (value!103864 (tag!3601 (h!24102 rules!3447)))) 2) 0))))

(assert (=> b!1711776 d!525287))

(declare-fun d!525289 () Bool)

(declare-fun res!767612 () Bool)

(declare-fun e!1095041 () Bool)

(assert (=> d!525289 (=> (not res!767612) (not e!1095041))))

(declare-fun semiInverseModEq!1305 (Int Int) Bool)

(assert (=> d!525289 (= res!767612 (semiInverseModEq!1305 (toChars!4667 (transformation!3305 (h!24102 rules!3447))) (toValue!4808 (transformation!3305 (h!24102 rules!3447)))))))

(assert (=> d!525289 (= (inv!24118 (transformation!3305 (h!24102 rules!3447))) e!1095041)))

(declare-fun b!1712180 () Bool)

(declare-fun equivClasses!1246 (Int Int) Bool)

(assert (=> b!1712180 (= e!1095041 (equivClasses!1246 (toChars!4667 (transformation!3305 (h!24102 rules!3447))) (toValue!4808 (transformation!3305 (h!24102 rules!3447)))))))

(assert (= (and d!525289 res!767612) b!1712180))

(declare-fun m!2115717 () Bool)

(assert (=> d!525289 m!2115717))

(declare-fun m!2115719 () Bool)

(assert (=> b!1712180 m!2115719))

(assert (=> b!1711776 d!525289))

(declare-fun d!525291 () Bool)

(declare-fun lt!654269 () Bool)

(declare-fun content!2662 (List!18771) (InoxSet Rule!6410))

(assert (=> d!525291 (= lt!654269 (select (content!2662 rules!3447) rule!422))))

(declare-fun e!1095046 () Bool)

(assert (=> d!525291 (= lt!654269 e!1095046)))

(declare-fun res!767617 () Bool)

(assert (=> d!525291 (=> (not res!767617) (not e!1095046))))

(assert (=> d!525291 (= res!767617 ((_ is Cons!18701) rules!3447))))

(assert (=> d!525291 (= (contains!3325 rules!3447 rule!422) lt!654269)))

(declare-fun b!1712185 () Bool)

(declare-fun e!1095047 () Bool)

(assert (=> b!1712185 (= e!1095046 e!1095047)))

(declare-fun res!767618 () Bool)

(assert (=> b!1712185 (=> res!767618 e!1095047)))

(assert (=> b!1712185 (= res!767618 (= (h!24102 rules!3447) rule!422))))

(declare-fun b!1712186 () Bool)

(assert (=> b!1712186 (= e!1095047 (contains!3325 (t!158334 rules!3447) rule!422))))

(assert (= (and d!525291 res!767617) b!1712185))

(assert (= (and b!1712185 (not res!767618)) b!1712186))

(declare-fun m!2115721 () Bool)

(assert (=> d!525291 m!2115721))

(declare-fun m!2115723 () Bool)

(assert (=> d!525291 m!2115723))

(declare-fun m!2115725 () Bool)

(assert (=> b!1712186 m!2115725))

(assert (=> b!1711766 d!525291))

(declare-fun d!525293 () Bool)

(declare-fun res!767621 () Bool)

(declare-fun e!1095050 () Bool)

(assert (=> d!525293 (=> (not res!767621) (not e!1095050))))

(declare-fun rulesValid!1233 (LexerInterface!2934 List!18771) Bool)

(assert (=> d!525293 (= res!767621 (rulesValid!1233 thiss!24550 rules!3447))))

(assert (=> d!525293 (= (rulesInvariant!2603 thiss!24550 rules!3447) e!1095050)))

(declare-fun b!1712189 () Bool)

(declare-datatypes ((List!18776 0))(
  ( (Nil!18706) (Cons!18706 (h!24107 String!21307) (t!158371 List!18776)) )
))
(declare-fun noDuplicateTag!1233 (LexerInterface!2934 List!18771 List!18776) Bool)

(assert (=> b!1712189 (= e!1095050 (noDuplicateTag!1233 thiss!24550 rules!3447 Nil!18706))))

(assert (= (and d!525293 res!767621) b!1712189))

(declare-fun m!2115727 () Bool)

(assert (=> d!525293 m!2115727))

(declare-fun m!2115729 () Bool)

(assert (=> b!1712189 m!2115729))

(assert (=> b!1711773 d!525293))

(declare-fun d!525295 () Bool)

(assert (=> d!525295 (= (isEmpty!11748 rules!3447) ((_ is Nil!18701) rules!3447))))

(assert (=> b!1711784 d!525295))

(declare-fun b!1712218 () Bool)

(declare-fun e!1095068 () Bool)

(assert (=> b!1712218 (= e!1095068 (= (head!3842 (list!7546 (charsOf!1954 (_1!10609 lt!654048)))) (c!280452 (regex!3305 lt!654057))))))

(declare-fun b!1712219 () Bool)

(declare-fun e!1095067 () Bool)

(declare-fun lt!654272 () Bool)

(declare-fun call!109495 () Bool)

(assert (=> b!1712219 (= e!1095067 (= lt!654272 call!109495))))

(declare-fun b!1712220 () Bool)

(declare-fun e!1095071 () Bool)

(declare-fun e!1095065 () Bool)

(assert (=> b!1712220 (= e!1095071 e!1095065)))

(declare-fun res!767642 () Bool)

(assert (=> b!1712220 (=> res!767642 e!1095065)))

(assert (=> b!1712220 (= res!767642 call!109495)))

(declare-fun b!1712222 () Bool)

(declare-fun e!1095070 () Bool)

(declare-fun nullable!1392 (Regex!4633) Bool)

(assert (=> b!1712222 (= e!1095070 (nullable!1392 (regex!3305 lt!654057)))))

(declare-fun bm!109490 () Bool)

(assert (=> bm!109490 (= call!109495 (isEmpty!11747 (list!7546 (charsOf!1954 (_1!10609 lt!654048)))))))

(declare-fun b!1712223 () Bool)

(declare-fun e!1095066 () Bool)

(assert (=> b!1712223 (= e!1095066 e!1095071)))

(declare-fun res!767639 () Bool)

(assert (=> b!1712223 (=> (not res!767639) (not e!1095071))))

(assert (=> b!1712223 (= res!767639 (not lt!654272))))

(declare-fun b!1712224 () Bool)

(declare-fun res!767644 () Bool)

(assert (=> b!1712224 (=> res!767644 e!1095066)))

(assert (=> b!1712224 (= res!767644 (not ((_ is ElementMatch!4633) (regex!3305 lt!654057))))))

(declare-fun e!1095069 () Bool)

(assert (=> b!1712224 (= e!1095069 e!1095066)))

(declare-fun b!1712225 () Bool)

(declare-fun res!767643 () Bool)

(assert (=> b!1712225 (=> res!767643 e!1095066)))

(assert (=> b!1712225 (= res!767643 e!1095068)))

(declare-fun res!767645 () Bool)

(assert (=> b!1712225 (=> (not res!767645) (not e!1095068))))

(assert (=> b!1712225 (= res!767645 lt!654272)))

(declare-fun b!1712226 () Bool)

(assert (=> b!1712226 (= e!1095069 (not lt!654272))))

(declare-fun b!1712227 () Bool)

(declare-fun res!767638 () Bool)

(assert (=> b!1712227 (=> (not res!767638) (not e!1095068))))

(assert (=> b!1712227 (= res!767638 (not call!109495))))

(declare-fun b!1712228 () Bool)

(declare-fun derivativeStep!1160 (Regex!4633 C!9440) Regex!4633)

(assert (=> b!1712228 (= e!1095070 (matchR!2107 (derivativeStep!1160 (regex!3305 lt!654057) (head!3842 (list!7546 (charsOf!1954 (_1!10609 lt!654048))))) (tail!2555 (list!7546 (charsOf!1954 (_1!10609 lt!654048))))))))

(declare-fun b!1712229 () Bool)

(declare-fun res!767641 () Bool)

(assert (=> b!1712229 (=> (not res!767641) (not e!1095068))))

(assert (=> b!1712229 (= res!767641 (isEmpty!11747 (tail!2555 (list!7546 (charsOf!1954 (_1!10609 lt!654048))))))))

(declare-fun d!525297 () Bool)

(assert (=> d!525297 e!1095067))

(declare-fun c!280521 () Bool)

(assert (=> d!525297 (= c!280521 ((_ is EmptyExpr!4633) (regex!3305 lt!654057)))))

(assert (=> d!525297 (= lt!654272 e!1095070)))

(declare-fun c!280523 () Bool)

(assert (=> d!525297 (= c!280523 (isEmpty!11747 (list!7546 (charsOf!1954 (_1!10609 lt!654048)))))))

(assert (=> d!525297 (validRegex!1866 (regex!3305 lt!654057))))

(assert (=> d!525297 (= (matchR!2107 (regex!3305 lt!654057) (list!7546 (charsOf!1954 (_1!10609 lt!654048)))) lt!654272)))

(declare-fun b!1712221 () Bool)

(assert (=> b!1712221 (= e!1095067 e!1095069)))

(declare-fun c!280522 () Bool)

(assert (=> b!1712221 (= c!280522 ((_ is EmptyLang!4633) (regex!3305 lt!654057)))))

(declare-fun b!1712230 () Bool)

(assert (=> b!1712230 (= e!1095065 (not (= (head!3842 (list!7546 (charsOf!1954 (_1!10609 lt!654048)))) (c!280452 (regex!3305 lt!654057)))))))

(declare-fun b!1712231 () Bool)

(declare-fun res!767640 () Bool)

(assert (=> b!1712231 (=> res!767640 e!1095065)))

(assert (=> b!1712231 (= res!767640 (not (isEmpty!11747 (tail!2555 (list!7546 (charsOf!1954 (_1!10609 lt!654048)))))))))

(assert (= (and d!525297 c!280523) b!1712222))

(assert (= (and d!525297 (not c!280523)) b!1712228))

(assert (= (and d!525297 c!280521) b!1712219))

(assert (= (and d!525297 (not c!280521)) b!1712221))

(assert (= (and b!1712221 c!280522) b!1712226))

(assert (= (and b!1712221 (not c!280522)) b!1712224))

(assert (= (and b!1712224 (not res!767644)) b!1712225))

(assert (= (and b!1712225 res!767645) b!1712227))

(assert (= (and b!1712227 res!767638) b!1712229))

(assert (= (and b!1712229 res!767641) b!1712218))

(assert (= (and b!1712225 (not res!767643)) b!1712223))

(assert (= (and b!1712223 res!767639) b!1712220))

(assert (= (and b!1712220 (not res!767642)) b!1712231))

(assert (= (and b!1712231 (not res!767640)) b!1712230))

(assert (= (or b!1712219 b!1712220 b!1712227) bm!109490))

(assert (=> d!525297 m!2115159))

(declare-fun m!2115731 () Bool)

(assert (=> d!525297 m!2115731))

(declare-fun m!2115733 () Bool)

(assert (=> d!525297 m!2115733))

(assert (=> b!1712231 m!2115159))

(declare-fun m!2115735 () Bool)

(assert (=> b!1712231 m!2115735))

(assert (=> b!1712231 m!2115735))

(declare-fun m!2115737 () Bool)

(assert (=> b!1712231 m!2115737))

(declare-fun m!2115739 () Bool)

(assert (=> b!1712222 m!2115739))

(assert (=> bm!109490 m!2115159))

(assert (=> bm!109490 m!2115731))

(assert (=> b!1712229 m!2115159))

(assert (=> b!1712229 m!2115735))

(assert (=> b!1712229 m!2115735))

(assert (=> b!1712229 m!2115737))

(assert (=> b!1712218 m!2115159))

(declare-fun m!2115741 () Bool)

(assert (=> b!1712218 m!2115741))

(assert (=> b!1712230 m!2115159))

(assert (=> b!1712230 m!2115741))

(assert (=> b!1712228 m!2115159))

(assert (=> b!1712228 m!2115741))

(assert (=> b!1712228 m!2115741))

(declare-fun m!2115743 () Bool)

(assert (=> b!1712228 m!2115743))

(assert (=> b!1712228 m!2115159))

(assert (=> b!1712228 m!2115735))

(assert (=> b!1712228 m!2115743))

(assert (=> b!1712228 m!2115735))

(declare-fun m!2115745 () Bool)

(assert (=> b!1712228 m!2115745))

(assert (=> b!1711783 d!525297))

(assert (=> b!1711783 d!525285))

(assert (=> b!1711783 d!525255))

(declare-fun d!525299 () Bool)

(assert (=> d!525299 (= (get!5505 lt!654058) (v!25022 lt!654058))))

(assert (=> b!1711783 d!525299))

(declare-fun d!525301 () Bool)

(declare-fun c!280526 () Bool)

(assert (=> d!525301 (= c!280526 (isEmpty!11747 (++!5130 lt!654045 (Cons!18699 (head!3842 suffix!1421) Nil!18699))))))

(declare-fun e!1095074 () Bool)

(assert (=> d!525301 (= (prefixMatch!518 (rulesRegex!663 thiss!24550 rules!3447) (++!5130 lt!654045 (Cons!18699 (head!3842 suffix!1421) Nil!18699))) e!1095074)))

(declare-fun b!1712236 () Bool)

(declare-fun lostCause!502 (Regex!4633) Bool)

(assert (=> b!1712236 (= e!1095074 (not (lostCause!502 (rulesRegex!663 thiss!24550 rules!3447))))))

(declare-fun b!1712237 () Bool)

(assert (=> b!1712237 (= e!1095074 (prefixMatch!518 (derivativeStep!1160 (rulesRegex!663 thiss!24550 rules!3447) (head!3842 (++!5130 lt!654045 (Cons!18699 (head!3842 suffix!1421) Nil!18699)))) (tail!2555 (++!5130 lt!654045 (Cons!18699 (head!3842 suffix!1421) Nil!18699)))))))

(assert (= (and d!525301 c!280526) b!1712236))

(assert (= (and d!525301 (not c!280526)) b!1712237))

(assert (=> d!525301 m!2115217))

(declare-fun m!2115747 () Bool)

(assert (=> d!525301 m!2115747))

(assert (=> b!1712236 m!2115213))

(declare-fun m!2115749 () Bool)

(assert (=> b!1712236 m!2115749))

(assert (=> b!1712237 m!2115217))

(declare-fun m!2115751 () Bool)

(assert (=> b!1712237 m!2115751))

(assert (=> b!1712237 m!2115213))

(assert (=> b!1712237 m!2115751))

(declare-fun m!2115753 () Bool)

(assert (=> b!1712237 m!2115753))

(assert (=> b!1712237 m!2115217))

(declare-fun m!2115755 () Bool)

(assert (=> b!1712237 m!2115755))

(assert (=> b!1712237 m!2115753))

(assert (=> b!1712237 m!2115755))

(declare-fun m!2115757 () Bool)

(assert (=> b!1712237 m!2115757))

(assert (=> b!1711764 d!525301))

(declare-fun d!525303 () Bool)

(declare-fun lt!654275 () Unit!32529)

(declare-fun lemma!316 (List!18771 LexerInterface!2934 List!18771) Unit!32529)

(assert (=> d!525303 (= lt!654275 (lemma!316 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!68858 () Int)

(declare-datatypes ((List!18777 0))(
  ( (Nil!18707) (Cons!18707 (h!24108 Regex!4633) (t!158372 List!18777)) )
))
(declare-fun generalisedUnion!324 (List!18777) Regex!4633)

(declare-fun map!3848 (List!18771 Int) List!18777)

(assert (=> d!525303 (= (rulesRegex!663 thiss!24550 rules!3447) (generalisedUnion!324 (map!3848 rules!3447 lambda!68858)))))

(declare-fun bs!401810 () Bool)

(assert (= bs!401810 d!525303))

(declare-fun m!2115759 () Bool)

(assert (=> bs!401810 m!2115759))

(declare-fun m!2115761 () Bool)

(assert (=> bs!401810 m!2115761))

(assert (=> bs!401810 m!2115761))

(declare-fun m!2115763 () Bool)

(assert (=> bs!401810 m!2115763))

(assert (=> b!1711764 d!525303))

(declare-fun b!1712240 () Bool)

(declare-fun res!767646 () Bool)

(declare-fun e!1095075 () Bool)

(assert (=> b!1712240 (=> (not res!767646) (not e!1095075))))

(declare-fun lt!654276 () List!18769)

(assert (=> b!1712240 (= res!767646 (= (size!14868 lt!654276) (+ (size!14868 lt!654045) (size!14868 (Cons!18699 (head!3842 suffix!1421) Nil!18699)))))))

(declare-fun b!1712239 () Bool)

(declare-fun e!1095076 () List!18769)

(assert (=> b!1712239 (= e!1095076 (Cons!18699 (h!24100 lt!654045) (++!5130 (t!158332 lt!654045) (Cons!18699 (head!3842 suffix!1421) Nil!18699))))))

(declare-fun b!1712238 () Bool)

(assert (=> b!1712238 (= e!1095076 (Cons!18699 (head!3842 suffix!1421) Nil!18699))))

(declare-fun b!1712241 () Bool)

(assert (=> b!1712241 (= e!1095075 (or (not (= (Cons!18699 (head!3842 suffix!1421) Nil!18699) Nil!18699)) (= lt!654276 lt!654045)))))

(declare-fun d!525305 () Bool)

(assert (=> d!525305 e!1095075))

(declare-fun res!767647 () Bool)

(assert (=> d!525305 (=> (not res!767647) (not e!1095075))))

(assert (=> d!525305 (= res!767647 (= (content!2661 lt!654276) ((_ map or) (content!2661 lt!654045) (content!2661 (Cons!18699 (head!3842 suffix!1421) Nil!18699)))))))

(assert (=> d!525305 (= lt!654276 e!1095076)))

(declare-fun c!280527 () Bool)

(assert (=> d!525305 (= c!280527 ((_ is Nil!18699) lt!654045))))

(assert (=> d!525305 (= (++!5130 lt!654045 (Cons!18699 (head!3842 suffix!1421) Nil!18699)) lt!654276)))

(assert (= (and d!525305 c!280527) b!1712238))

(assert (= (and d!525305 (not c!280527)) b!1712239))

(assert (= (and d!525305 res!767647) b!1712240))

(assert (= (and b!1712240 res!767646) b!1712241))

(declare-fun m!2115765 () Bool)

(assert (=> b!1712240 m!2115765))

(assert (=> b!1712240 m!2115665))

(declare-fun m!2115767 () Bool)

(assert (=> b!1712240 m!2115767))

(declare-fun m!2115769 () Bool)

(assert (=> b!1712239 m!2115769))

(declare-fun m!2115771 () Bool)

(assert (=> d!525305 m!2115771))

(assert (=> d!525305 m!2115673))

(declare-fun m!2115773 () Bool)

(assert (=> d!525305 m!2115773))

(assert (=> b!1711764 d!525305))

(declare-fun d!525307 () Bool)

(assert (=> d!525307 (= (head!3842 suffix!1421) (h!24100 suffix!1421))))

(assert (=> b!1711764 d!525307))

(declare-fun b!1712252 () Bool)

(declare-fun e!1095084 () Bool)

(declare-fun e!1095085 () Bool)

(assert (=> b!1712252 (= e!1095084 e!1095085)))

(declare-fun c!280532 () Bool)

(assert (=> b!1712252 (= c!280532 ((_ is IntegerValue!10186) (value!103865 token!523)))))

(declare-fun b!1712253 () Bool)

(declare-fun inv!17 (TokenValue!3395) Bool)

(assert (=> b!1712253 (= e!1095085 (inv!17 (value!103865 token!523)))))

(declare-fun d!525309 () Bool)

(declare-fun c!280533 () Bool)

(assert (=> d!525309 (= c!280533 ((_ is IntegerValue!10185) (value!103865 token!523)))))

(assert (=> d!525309 (= (inv!21 (value!103865 token!523)) e!1095084)))

(declare-fun b!1712254 () Bool)

(declare-fun inv!16 (TokenValue!3395) Bool)

(assert (=> b!1712254 (= e!1095084 (inv!16 (value!103865 token!523)))))

(declare-fun b!1712255 () Bool)

(declare-fun e!1095083 () Bool)

(declare-fun inv!15 (TokenValue!3395) Bool)

(assert (=> b!1712255 (= e!1095083 (inv!15 (value!103865 token!523)))))

(declare-fun b!1712256 () Bool)

(declare-fun res!767650 () Bool)

(assert (=> b!1712256 (=> res!767650 e!1095083)))

(assert (=> b!1712256 (= res!767650 (not ((_ is IntegerValue!10187) (value!103865 token!523))))))

(assert (=> b!1712256 (= e!1095085 e!1095083)))

(assert (= (and d!525309 c!280533) b!1712254))

(assert (= (and d!525309 (not c!280533)) b!1712252))

(assert (= (and b!1712252 c!280532) b!1712253))

(assert (= (and b!1712252 (not c!280532)) b!1712256))

(assert (= (and b!1712256 (not res!767650)) b!1712255))

(declare-fun m!2115775 () Bool)

(assert (=> b!1712253 m!2115775))

(declare-fun m!2115777 () Bool)

(assert (=> b!1712254 m!2115777))

(declare-fun m!2115779 () Bool)

(assert (=> b!1712255 m!2115779))

(assert (=> b!1711774 d!525309))

(declare-fun b!1712257 () Bool)

(declare-fun e!1095089 () Bool)

(assert (=> b!1712257 (= e!1095089 (= (head!3842 lt!654045) (c!280452 (regex!3305 rule!422))))))

(declare-fun b!1712258 () Bool)

(declare-fun e!1095088 () Bool)

(declare-fun lt!654277 () Bool)

(declare-fun call!109496 () Bool)

(assert (=> b!1712258 (= e!1095088 (= lt!654277 call!109496))))

(declare-fun b!1712259 () Bool)

(declare-fun e!1095092 () Bool)

(declare-fun e!1095086 () Bool)

(assert (=> b!1712259 (= e!1095092 e!1095086)))

(declare-fun res!767655 () Bool)

(assert (=> b!1712259 (=> res!767655 e!1095086)))

(assert (=> b!1712259 (= res!767655 call!109496)))

(declare-fun b!1712261 () Bool)

(declare-fun e!1095091 () Bool)

(assert (=> b!1712261 (= e!1095091 (nullable!1392 (regex!3305 rule!422)))))

(declare-fun bm!109491 () Bool)

(assert (=> bm!109491 (= call!109496 (isEmpty!11747 lt!654045))))

(declare-fun b!1712262 () Bool)

(declare-fun e!1095087 () Bool)

(assert (=> b!1712262 (= e!1095087 e!1095092)))

(declare-fun res!767652 () Bool)

(assert (=> b!1712262 (=> (not res!767652) (not e!1095092))))

(assert (=> b!1712262 (= res!767652 (not lt!654277))))

(declare-fun b!1712263 () Bool)

(declare-fun res!767657 () Bool)

(assert (=> b!1712263 (=> res!767657 e!1095087)))

(assert (=> b!1712263 (= res!767657 (not ((_ is ElementMatch!4633) (regex!3305 rule!422))))))

(declare-fun e!1095090 () Bool)

(assert (=> b!1712263 (= e!1095090 e!1095087)))

(declare-fun b!1712264 () Bool)

(declare-fun res!767656 () Bool)

(assert (=> b!1712264 (=> res!767656 e!1095087)))

(assert (=> b!1712264 (= res!767656 e!1095089)))

(declare-fun res!767658 () Bool)

(assert (=> b!1712264 (=> (not res!767658) (not e!1095089))))

(assert (=> b!1712264 (= res!767658 lt!654277)))

(declare-fun b!1712265 () Bool)

(assert (=> b!1712265 (= e!1095090 (not lt!654277))))

(declare-fun b!1712266 () Bool)

(declare-fun res!767651 () Bool)

(assert (=> b!1712266 (=> (not res!767651) (not e!1095089))))

(assert (=> b!1712266 (= res!767651 (not call!109496))))

(declare-fun b!1712267 () Bool)

(assert (=> b!1712267 (= e!1095091 (matchR!2107 (derivativeStep!1160 (regex!3305 rule!422) (head!3842 lt!654045)) (tail!2555 lt!654045)))))

(declare-fun b!1712268 () Bool)

(declare-fun res!767654 () Bool)

(assert (=> b!1712268 (=> (not res!767654) (not e!1095089))))

(assert (=> b!1712268 (= res!767654 (isEmpty!11747 (tail!2555 lt!654045)))))

(declare-fun d!525311 () Bool)

(assert (=> d!525311 e!1095088))

(declare-fun c!280534 () Bool)

(assert (=> d!525311 (= c!280534 ((_ is EmptyExpr!4633) (regex!3305 rule!422)))))

(assert (=> d!525311 (= lt!654277 e!1095091)))

(declare-fun c!280536 () Bool)

(assert (=> d!525311 (= c!280536 (isEmpty!11747 lt!654045))))

(assert (=> d!525311 (validRegex!1866 (regex!3305 rule!422))))

(assert (=> d!525311 (= (matchR!2107 (regex!3305 rule!422) lt!654045) lt!654277)))

(declare-fun b!1712260 () Bool)

(assert (=> b!1712260 (= e!1095088 e!1095090)))

(declare-fun c!280535 () Bool)

(assert (=> b!1712260 (= c!280535 ((_ is EmptyLang!4633) (regex!3305 rule!422)))))

(declare-fun b!1712269 () Bool)

(assert (=> b!1712269 (= e!1095086 (not (= (head!3842 lt!654045) (c!280452 (regex!3305 rule!422)))))))

(declare-fun b!1712270 () Bool)

(declare-fun res!767653 () Bool)

(assert (=> b!1712270 (=> res!767653 e!1095086)))

(assert (=> b!1712270 (= res!767653 (not (isEmpty!11747 (tail!2555 lt!654045))))))

(assert (= (and d!525311 c!280536) b!1712261))

(assert (= (and d!525311 (not c!280536)) b!1712267))

(assert (= (and d!525311 c!280534) b!1712258))

(assert (= (and d!525311 (not c!280534)) b!1712260))

(assert (= (and b!1712260 c!280535) b!1712265))

(assert (= (and b!1712260 (not c!280535)) b!1712263))

(assert (= (and b!1712263 (not res!767657)) b!1712264))

(assert (= (and b!1712264 res!767658) b!1712266))

(assert (= (and b!1712266 res!767651) b!1712268))

(assert (= (and b!1712268 res!767654) b!1712257))

(assert (= (and b!1712264 (not res!767656)) b!1712262))

(assert (= (and b!1712262 res!767652) b!1712259))

(assert (= (and b!1712259 (not res!767655)) b!1712270))

(assert (= (and b!1712270 (not res!767653)) b!1712269))

(assert (= (or b!1712258 b!1712259 b!1712266) bm!109491))

(declare-fun m!2115781 () Bool)

(assert (=> d!525311 m!2115781))

(declare-fun m!2115783 () Bool)

(assert (=> d!525311 m!2115783))

(assert (=> b!1712270 m!2115709))

(assert (=> b!1712270 m!2115709))

(declare-fun m!2115785 () Bool)

(assert (=> b!1712270 m!2115785))

(declare-fun m!2115787 () Bool)

(assert (=> b!1712261 m!2115787))

(assert (=> bm!109491 m!2115781))

(assert (=> b!1712268 m!2115709))

(assert (=> b!1712268 m!2115709))

(assert (=> b!1712268 m!2115785))

(assert (=> b!1712257 m!2115713))

(assert (=> b!1712269 m!2115713))

(assert (=> b!1712267 m!2115713))

(assert (=> b!1712267 m!2115713))

(declare-fun m!2115789 () Bool)

(assert (=> b!1712267 m!2115789))

(assert (=> b!1712267 m!2115709))

(assert (=> b!1712267 m!2115789))

(assert (=> b!1712267 m!2115709))

(declare-fun m!2115791 () Bool)

(assert (=> b!1712267 m!2115791))

(assert (=> b!1711770 d!525311))

(declare-fun d!525313 () Bool)

(declare-fun res!767663 () Bool)

(declare-fun e!1095095 () Bool)

(assert (=> d!525313 (=> (not res!767663) (not e!1095095))))

(assert (=> d!525313 (= res!767663 (validRegex!1866 (regex!3305 rule!422)))))

(assert (=> d!525313 (= (ruleValid!804 thiss!24550 rule!422) e!1095095)))

(declare-fun b!1712275 () Bool)

(declare-fun res!767664 () Bool)

(assert (=> b!1712275 (=> (not res!767664) (not e!1095095))))

(assert (=> b!1712275 (= res!767664 (not (nullable!1392 (regex!3305 rule!422))))))

(declare-fun b!1712276 () Bool)

(assert (=> b!1712276 (= e!1095095 (not (= (tag!3601 rule!422) (String!21308 ""))))))

(assert (= (and d!525313 res!767663) b!1712275))

(assert (= (and b!1712275 res!767664) b!1712276))

(assert (=> d!525313 m!2115783))

(assert (=> b!1712275 m!2115787))

(assert (=> b!1711770 d!525313))

(declare-fun d!525315 () Bool)

(assert (=> d!525315 (ruleValid!804 thiss!24550 rule!422)))

(declare-fun lt!654280 () Unit!32529)

(declare-fun choose!10390 (LexerInterface!2934 Rule!6410 List!18771) Unit!32529)

(assert (=> d!525315 (= lt!654280 (choose!10390 thiss!24550 rule!422 rules!3447))))

(assert (=> d!525315 (contains!3325 rules!3447 rule!422)))

(assert (=> d!525315 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!328 thiss!24550 rule!422 rules!3447) lt!654280)))

(declare-fun bs!401811 () Bool)

(assert (= bs!401811 d!525315))

(assert (=> bs!401811 m!2115141))

(declare-fun m!2115793 () Bool)

(assert (=> bs!401811 m!2115793))

(assert (=> bs!401811 m!2115221))

(assert (=> b!1711770 d!525315))

(declare-fun d!525317 () Bool)

(assert (=> d!525317 (= (isDefined!2978 lt!654056) (not (isEmpty!11751 lt!654056)))))

(declare-fun bs!401812 () Bool)

(assert (= bs!401812 d!525317))

(declare-fun m!2115795 () Bool)

(assert (=> bs!401812 m!2115795))

(assert (=> b!1711772 d!525317))

(declare-fun b!1712277 () Bool)

(declare-fun res!767670 () Bool)

(declare-fun e!1095096 () Bool)

(assert (=> b!1712277 (=> (not res!767670) (not e!1095096))))

(declare-fun lt!654281 () Option!3635)

(assert (=> b!1712277 (= res!767670 (= (list!7546 (charsOf!1954 (_1!10609 (get!5504 lt!654281)))) (originalCharacters!4119 (_1!10609 (get!5504 lt!654281)))))))

(declare-fun b!1712278 () Bool)

(declare-fun res!767667 () Bool)

(assert (=> b!1712278 (=> (not res!767667) (not e!1095096))))

(assert (=> b!1712278 (= res!767667 (= (value!103865 (_1!10609 (get!5504 lt!654281))) (apply!5114 (transformation!3305 (rule!5241 (_1!10609 (get!5504 lt!654281)))) (seqFromList!2279 (originalCharacters!4119 (_1!10609 (get!5504 lt!654281)))))))))

(declare-fun call!109497 () Option!3635)

(declare-fun bm!109492 () Bool)

(assert (=> bm!109492 (= call!109497 (maxPrefixOneRule!870 thiss!24550 (h!24102 rules!3447) lt!654045))))

(declare-fun b!1712279 () Bool)

(assert (=> b!1712279 (= e!1095096 (contains!3325 rules!3447 (rule!5241 (_1!10609 (get!5504 lt!654281)))))))

(declare-fun b!1712280 () Bool)

(declare-fun e!1095097 () Option!3635)

(declare-fun lt!654282 () Option!3635)

(declare-fun lt!654285 () Option!3635)

(assert (=> b!1712280 (= e!1095097 (ite (and ((_ is None!3634) lt!654282) ((_ is None!3634) lt!654285)) None!3634 (ite ((_ is None!3634) lt!654285) lt!654282 (ite ((_ is None!3634) lt!654282) lt!654285 (ite (>= (size!14866 (_1!10609 (v!25023 lt!654282))) (size!14866 (_1!10609 (v!25023 lt!654285)))) lt!654282 lt!654285)))))))

(assert (=> b!1712280 (= lt!654282 call!109497)))

(assert (=> b!1712280 (= lt!654285 (maxPrefix!1488 thiss!24550 (t!158334 rules!3447) lt!654045))))

(declare-fun b!1712281 () Bool)

(declare-fun res!767665 () Bool)

(assert (=> b!1712281 (=> (not res!767665) (not e!1095096))))

(assert (=> b!1712281 (= res!767665 (matchR!2107 (regex!3305 (rule!5241 (_1!10609 (get!5504 lt!654281)))) (list!7546 (charsOf!1954 (_1!10609 (get!5504 lt!654281))))))))

(declare-fun d!525319 () Bool)

(declare-fun e!1095098 () Bool)

(assert (=> d!525319 e!1095098))

(declare-fun res!767671 () Bool)

(assert (=> d!525319 (=> res!767671 e!1095098)))

(assert (=> d!525319 (= res!767671 (isEmpty!11751 lt!654281))))

(assert (=> d!525319 (= lt!654281 e!1095097)))

(declare-fun c!280537 () Bool)

(assert (=> d!525319 (= c!280537 (and ((_ is Cons!18701) rules!3447) ((_ is Nil!18701) (t!158334 rules!3447))))))

(declare-fun lt!654283 () Unit!32529)

(declare-fun lt!654284 () Unit!32529)

(assert (=> d!525319 (= lt!654283 lt!654284)))

(assert (=> d!525319 (isPrefix!1546 lt!654045 lt!654045)))

(assert (=> d!525319 (= lt!654284 (lemmaIsPrefixRefl!1055 lt!654045 lt!654045))))

(assert (=> d!525319 (rulesValidInductive!1090 thiss!24550 rules!3447)))

(assert (=> d!525319 (= (maxPrefix!1488 thiss!24550 rules!3447 lt!654045) lt!654281)))

(declare-fun b!1712282 () Bool)

(assert (=> b!1712282 (= e!1095097 call!109497)))

(declare-fun b!1712283 () Bool)

(declare-fun res!767666 () Bool)

(assert (=> b!1712283 (=> (not res!767666) (not e!1095096))))

(assert (=> b!1712283 (= res!767666 (< (size!14868 (_2!10609 (get!5504 lt!654281))) (size!14868 lt!654045)))))

(declare-fun b!1712284 () Bool)

(assert (=> b!1712284 (= e!1095098 e!1095096)))

(declare-fun res!767669 () Bool)

(assert (=> b!1712284 (=> (not res!767669) (not e!1095096))))

(assert (=> b!1712284 (= res!767669 (isDefined!2978 lt!654281))))

(declare-fun b!1712285 () Bool)

(declare-fun res!767668 () Bool)

(assert (=> b!1712285 (=> (not res!767668) (not e!1095096))))

(assert (=> b!1712285 (= res!767668 (= (++!5130 (list!7546 (charsOf!1954 (_1!10609 (get!5504 lt!654281)))) (_2!10609 (get!5504 lt!654281))) lt!654045))))

(assert (= (and d!525319 c!280537) b!1712282))

(assert (= (and d!525319 (not c!280537)) b!1712280))

(assert (= (or b!1712282 b!1712280) bm!109492))

(assert (= (and d!525319 (not res!767671)) b!1712284))

(assert (= (and b!1712284 res!767669) b!1712277))

(assert (= (and b!1712277 res!767670) b!1712283))

(assert (= (and b!1712283 res!767666) b!1712285))

(assert (= (and b!1712285 res!767668) b!1712278))

(assert (= (and b!1712278 res!767667) b!1712281))

(assert (= (and b!1712281 res!767665) b!1712279))

(declare-fun m!2115797 () Bool)

(assert (=> bm!109492 m!2115797))

(declare-fun m!2115799 () Bool)

(assert (=> b!1712280 m!2115799))

(declare-fun m!2115801 () Bool)

(assert (=> d!525319 m!2115801))

(declare-fun m!2115803 () Bool)

(assert (=> d!525319 m!2115803))

(declare-fun m!2115805 () Bool)

(assert (=> d!525319 m!2115805))

(assert (=> d!525319 m!2115687))

(declare-fun m!2115807 () Bool)

(assert (=> b!1712278 m!2115807))

(declare-fun m!2115809 () Bool)

(assert (=> b!1712278 m!2115809))

(assert (=> b!1712278 m!2115809))

(declare-fun m!2115811 () Bool)

(assert (=> b!1712278 m!2115811))

(assert (=> b!1712283 m!2115807))

(declare-fun m!2115813 () Bool)

(assert (=> b!1712283 m!2115813))

(assert (=> b!1712283 m!2115665))

(assert (=> b!1712281 m!2115807))

(declare-fun m!2115815 () Bool)

(assert (=> b!1712281 m!2115815))

(assert (=> b!1712281 m!2115815))

(declare-fun m!2115817 () Bool)

(assert (=> b!1712281 m!2115817))

(assert (=> b!1712281 m!2115817))

(declare-fun m!2115819 () Bool)

(assert (=> b!1712281 m!2115819))

(assert (=> b!1712277 m!2115807))

(assert (=> b!1712277 m!2115815))

(assert (=> b!1712277 m!2115815))

(assert (=> b!1712277 m!2115817))

(assert (=> b!1712279 m!2115807))

(declare-fun m!2115821 () Bool)

(assert (=> b!1712279 m!2115821))

(declare-fun m!2115823 () Bool)

(assert (=> b!1712284 m!2115823))

(assert (=> b!1712285 m!2115807))

(assert (=> b!1712285 m!2115815))

(assert (=> b!1712285 m!2115815))

(assert (=> b!1712285 m!2115817))

(assert (=> b!1712285 m!2115817))

(declare-fun m!2115825 () Bool)

(assert (=> b!1712285 m!2115825))

(assert (=> b!1711772 d!525319))

(declare-fun d!525321 () Bool)

(assert (=> d!525321 (= (list!7546 (charsOf!1954 token!523)) (list!7550 (c!280453 (charsOf!1954 token!523))))))

(declare-fun bs!401813 () Bool)

(assert (= bs!401813 d!525321))

(declare-fun m!2115827 () Bool)

(assert (=> bs!401813 m!2115827))

(assert (=> b!1711772 d!525321))

(declare-fun d!525323 () Bool)

(declare-fun lt!654286 () BalanceConc!12382)

(assert (=> d!525323 (= (list!7546 lt!654286) (originalCharacters!4119 token!523))))

(assert (=> d!525323 (= lt!654286 (dynLambda!8501 (toChars!4667 (transformation!3305 (rule!5241 token!523))) (value!103865 token!523)))))

(assert (=> d!525323 (= (charsOf!1954 token!523) lt!654286)))

(declare-fun b_lambda!54017 () Bool)

(assert (=> (not b_lambda!54017) (not d!525323)))

(declare-fun t!158359 () Bool)

(declare-fun tb!101025 () Bool)

(assert (=> (and b!1711781 (= (toChars!4667 (transformation!3305 (rule!5241 token!523))) (toChars!4667 (transformation!3305 (rule!5241 token!523)))) t!158359) tb!101025))

(declare-fun b!1712286 () Bool)

(declare-fun e!1095099 () Bool)

(declare-fun tp!489279 () Bool)

(assert (=> b!1712286 (= e!1095099 (and (inv!24122 (c!280453 (dynLambda!8501 (toChars!4667 (transformation!3305 (rule!5241 token!523))) (value!103865 token!523)))) tp!489279))))

(declare-fun result!121402 () Bool)

(assert (=> tb!101025 (= result!121402 (and (inv!24123 (dynLambda!8501 (toChars!4667 (transformation!3305 (rule!5241 token!523))) (value!103865 token!523))) e!1095099))))

(assert (= tb!101025 b!1712286))

(declare-fun m!2115829 () Bool)

(assert (=> b!1712286 m!2115829))

(declare-fun m!2115831 () Bool)

(assert (=> tb!101025 m!2115831))

(assert (=> d!525323 t!158359))

(declare-fun b_and!124001 () Bool)

(assert (= b_and!123991 (and (=> t!158359 result!121402) b_and!124001)))

(declare-fun tb!101027 () Bool)

(declare-fun t!158361 () Bool)

(assert (=> (and b!1711777 (= (toChars!4667 (transformation!3305 rule!422)) (toChars!4667 (transformation!3305 (rule!5241 token!523)))) t!158361) tb!101027))

(declare-fun result!121404 () Bool)

(assert (= result!121404 result!121402))

(assert (=> d!525323 t!158361))

(declare-fun b_and!124003 () Bool)

(assert (= b_and!123993 (and (=> t!158361 result!121404) b_and!124003)))

(declare-fun tb!101029 () Bool)

(declare-fun t!158363 () Bool)

(assert (=> (and b!1711769 (= (toChars!4667 (transformation!3305 (h!24102 rules!3447))) (toChars!4667 (transformation!3305 (rule!5241 token!523)))) t!158363) tb!101029))

(declare-fun result!121406 () Bool)

(assert (= result!121406 result!121402))

(assert (=> d!525323 t!158363))

(declare-fun b_and!124005 () Bool)

(assert (= b_and!123995 (and (=> t!158363 result!121406) b_and!124005)))

(declare-fun m!2115833 () Bool)

(assert (=> d!525323 m!2115833))

(declare-fun m!2115835 () Bool)

(assert (=> d!525323 m!2115835))

(assert (=> b!1711772 d!525323))

(declare-fun d!525325 () Bool)

(assert (=> d!525325 (= (isEmpty!11747 (_2!10609 lt!654047)) ((_ is Nil!18699) (_2!10609 lt!654047)))))

(assert (=> b!1711771 d!525325))

(declare-fun d!525327 () Bool)

(assert (=> d!525327 (= (get!5504 lt!654056) (v!25023 lt!654056))))

(assert (=> b!1711782 d!525327))

(declare-fun b!1712305 () Bool)

(declare-fun e!1095114 () Bool)

(declare-fun e!1095117 () Bool)

(assert (=> b!1712305 (= e!1095114 e!1095117)))

(declare-fun c!280543 () Bool)

(assert (=> b!1712305 (= c!280543 ((_ is Star!4633) (regex!3305 (rule!5241 (_1!10609 lt!654048)))))))

(declare-fun b!1712306 () Bool)

(declare-fun e!1095115 () Bool)

(declare-fun call!109504 () Bool)

(assert (=> b!1712306 (= e!1095115 call!109504)))

(declare-fun bm!109499 () Bool)

(declare-fun call!109506 () Bool)

(declare-fun c!280542 () Bool)

(assert (=> bm!109499 (= call!109506 (validRegex!1866 (ite c!280542 (regOne!9779 (regex!3305 (rule!5241 (_1!10609 lt!654048)))) (regTwo!9778 (regex!3305 (rule!5241 (_1!10609 lt!654048)))))))))

(declare-fun b!1712307 () Bool)

(declare-fun e!1095119 () Bool)

(declare-fun call!109505 () Bool)

(assert (=> b!1712307 (= e!1095119 call!109505)))

(declare-fun bm!109500 () Bool)

(assert (=> bm!109500 (= call!109504 (validRegex!1866 (ite c!280543 (reg!4962 (regex!3305 (rule!5241 (_1!10609 lt!654048)))) (ite c!280542 (regTwo!9779 (regex!3305 (rule!5241 (_1!10609 lt!654048)))) (regOne!9778 (regex!3305 (rule!5241 (_1!10609 lt!654048))))))))))

(declare-fun b!1712308 () Bool)

(assert (=> b!1712308 (= e!1095117 e!1095115)))

(declare-fun res!767683 () Bool)

(assert (=> b!1712308 (= res!767683 (not (nullable!1392 (reg!4962 (regex!3305 (rule!5241 (_1!10609 lt!654048)))))))))

(assert (=> b!1712308 (=> (not res!767683) (not e!1095115))))

(declare-fun b!1712309 () Bool)

(declare-fun res!767685 () Bool)

(declare-fun e!1095120 () Bool)

(assert (=> b!1712309 (=> res!767685 e!1095120)))

(assert (=> b!1712309 (= res!767685 (not ((_ is Concat!8029) (regex!3305 (rule!5241 (_1!10609 lt!654048))))))))

(declare-fun e!1095116 () Bool)

(assert (=> b!1712309 (= e!1095116 e!1095120)))

(declare-fun b!1712310 () Bool)

(assert (=> b!1712310 (= e!1095117 e!1095116)))

(assert (=> b!1712310 (= c!280542 ((_ is Union!4633) (regex!3305 (rule!5241 (_1!10609 lt!654048)))))))

(declare-fun bm!109501 () Bool)

(assert (=> bm!109501 (= call!109505 call!109504)))

(declare-fun b!1712311 () Bool)

(declare-fun res!767682 () Bool)

(assert (=> b!1712311 (=> (not res!767682) (not e!1095119))))

(assert (=> b!1712311 (= res!767682 call!109506)))

(assert (=> b!1712311 (= e!1095116 e!1095119)))

(declare-fun d!525329 () Bool)

(declare-fun res!767686 () Bool)

(assert (=> d!525329 (=> res!767686 e!1095114)))

(assert (=> d!525329 (= res!767686 ((_ is ElementMatch!4633) (regex!3305 (rule!5241 (_1!10609 lt!654048)))))))

(assert (=> d!525329 (= (validRegex!1866 (regex!3305 (rule!5241 (_1!10609 lt!654048)))) e!1095114)))

(declare-fun b!1712312 () Bool)

(declare-fun e!1095118 () Bool)

(assert (=> b!1712312 (= e!1095118 call!109506)))

(declare-fun b!1712313 () Bool)

(assert (=> b!1712313 (= e!1095120 e!1095118)))

(declare-fun res!767684 () Bool)

(assert (=> b!1712313 (=> (not res!767684) (not e!1095118))))

(assert (=> b!1712313 (= res!767684 call!109505)))

(assert (= (and d!525329 (not res!767686)) b!1712305))

(assert (= (and b!1712305 c!280543) b!1712308))

(assert (= (and b!1712305 (not c!280543)) b!1712310))

(assert (= (and b!1712308 res!767683) b!1712306))

(assert (= (and b!1712310 c!280542) b!1712311))

(assert (= (and b!1712310 (not c!280542)) b!1712309))

(assert (= (and b!1712311 res!767682) b!1712307))

(assert (= (and b!1712309 (not res!767685)) b!1712313))

(assert (= (and b!1712313 res!767684) b!1712312))

(assert (= (or b!1712311 b!1712312) bm!109499))

(assert (= (or b!1712307 b!1712313) bm!109501))

(assert (= (or b!1712306 bm!109501) bm!109500))

(declare-fun m!2115837 () Bool)

(assert (=> bm!109499 m!2115837))

(declare-fun m!2115839 () Bool)

(assert (=> bm!109500 m!2115839))

(declare-fun m!2115841 () Bool)

(assert (=> b!1712308 m!2115841))

(assert (=> b!1711767 d!525329))

(declare-fun d!525331 () Bool)

(assert (=> d!525331 (= (isEmpty!11747 suffix!1421) ((_ is Nil!18699) suffix!1421))))

(assert (=> b!1711778 d!525331))

(declare-fun d!525333 () Bool)

(assert (=> d!525333 (= (inv!24115 (tag!3601 rule!422)) (= (mod (str.len (value!103864 (tag!3601 rule!422))) 2) 0))))

(assert (=> b!1711780 d!525333))

(declare-fun d!525335 () Bool)

(declare-fun res!767687 () Bool)

(declare-fun e!1095121 () Bool)

(assert (=> d!525335 (=> (not res!767687) (not e!1095121))))

(assert (=> d!525335 (= res!767687 (semiInverseModEq!1305 (toChars!4667 (transformation!3305 rule!422)) (toValue!4808 (transformation!3305 rule!422))))))

(assert (=> d!525335 (= (inv!24118 (transformation!3305 rule!422)) e!1095121)))

(declare-fun b!1712314 () Bool)

(assert (=> b!1712314 (= e!1095121 (equivClasses!1246 (toChars!4667 (transformation!3305 rule!422)) (toValue!4808 (transformation!3305 rule!422))))))

(assert (= (and d!525335 res!767687) b!1712314))

(declare-fun m!2115843 () Bool)

(assert (=> d!525335 m!2115843))

(declare-fun m!2115845 () Bool)

(assert (=> b!1712314 m!2115845))

(assert (=> b!1711780 d!525335))

(declare-fun d!525337 () Bool)

(assert (=> d!525337 (= (inv!24115 (tag!3601 (rule!5241 token!523))) (= (mod (str.len (value!103864 (tag!3601 (rule!5241 token!523)))) 2) 0))))

(assert (=> b!1711779 d!525337))

(declare-fun d!525339 () Bool)

(declare-fun res!767688 () Bool)

(declare-fun e!1095122 () Bool)

(assert (=> d!525339 (=> (not res!767688) (not e!1095122))))

(assert (=> d!525339 (= res!767688 (semiInverseModEq!1305 (toChars!4667 (transformation!3305 (rule!5241 token!523))) (toValue!4808 (transformation!3305 (rule!5241 token!523)))))))

(assert (=> d!525339 (= (inv!24118 (transformation!3305 (rule!5241 token!523))) e!1095122)))

(declare-fun b!1712315 () Bool)

(assert (=> b!1712315 (= e!1095122 (equivClasses!1246 (toChars!4667 (transformation!3305 (rule!5241 token!523))) (toValue!4808 (transformation!3305 (rule!5241 token!523)))))))

(assert (= (and d!525339 res!767688) b!1712315))

(declare-fun m!2115847 () Bool)

(assert (=> d!525339 m!2115847))

(declare-fun m!2115849 () Bool)

(assert (=> b!1712315 m!2115849))

(assert (=> b!1711779 d!525339))

(declare-fun d!525341 () Bool)

(declare-fun res!767693 () Bool)

(declare-fun e!1095125 () Bool)

(assert (=> d!525341 (=> (not res!767693) (not e!1095125))))

(assert (=> d!525341 (= res!767693 (not (isEmpty!11747 (originalCharacters!4119 token!523))))))

(assert (=> d!525341 (= (inv!24119 token!523) e!1095125)))

(declare-fun b!1712320 () Bool)

(declare-fun res!767694 () Bool)

(assert (=> b!1712320 (=> (not res!767694) (not e!1095125))))

(assert (=> b!1712320 (= res!767694 (= (originalCharacters!4119 token!523) (list!7546 (dynLambda!8501 (toChars!4667 (transformation!3305 (rule!5241 token!523))) (value!103865 token!523)))))))

(declare-fun b!1712321 () Bool)

(assert (=> b!1712321 (= e!1095125 (= (size!14866 token!523) (size!14868 (originalCharacters!4119 token!523))))))

(assert (= (and d!525341 res!767693) b!1712320))

(assert (= (and b!1712320 res!767694) b!1712321))

(declare-fun b_lambda!54019 () Bool)

(assert (=> (not b_lambda!54019) (not b!1712320)))

(assert (=> b!1712320 t!158359))

(declare-fun b_and!124007 () Bool)

(assert (= b_and!124001 (and (=> t!158359 result!121402) b_and!124007)))

(assert (=> b!1712320 t!158361))

(declare-fun b_and!124009 () Bool)

(assert (= b_and!124003 (and (=> t!158361 result!121404) b_and!124009)))

(assert (=> b!1712320 t!158363))

(declare-fun b_and!124011 () Bool)

(assert (= b_and!124005 (and (=> t!158363 result!121406) b_and!124011)))

(declare-fun m!2115851 () Bool)

(assert (=> d!525341 m!2115851))

(assert (=> b!1712320 m!2115835))

(assert (=> b!1712320 m!2115835))

(declare-fun m!2115853 () Bool)

(assert (=> b!1712320 m!2115853))

(declare-fun m!2115855 () Bool)

(assert (=> b!1712321 m!2115855))

(assert (=> start!167382 d!525341))

(declare-fun b!1712334 () Bool)

(declare-fun e!1095128 () Bool)

(declare-fun tp!489290 () Bool)

(assert (=> b!1712334 (= e!1095128 tp!489290)))

(assert (=> b!1711776 (= tp!489220 e!1095128)))

(declare-fun b!1712333 () Bool)

(declare-fun tp!489293 () Bool)

(declare-fun tp!489291 () Bool)

(assert (=> b!1712333 (= e!1095128 (and tp!489293 tp!489291))))

(declare-fun b!1712332 () Bool)

(assert (=> b!1712332 (= e!1095128 tp_is_empty!7509)))

(declare-fun b!1712335 () Bool)

(declare-fun tp!489292 () Bool)

(declare-fun tp!489294 () Bool)

(assert (=> b!1712335 (= e!1095128 (and tp!489292 tp!489294))))

(assert (= (and b!1711776 ((_ is ElementMatch!4633) (regex!3305 (h!24102 rules!3447)))) b!1712332))

(assert (= (and b!1711776 ((_ is Concat!8029) (regex!3305 (h!24102 rules!3447)))) b!1712333))

(assert (= (and b!1711776 ((_ is Star!4633) (regex!3305 (h!24102 rules!3447)))) b!1712334))

(assert (= (and b!1711776 ((_ is Union!4633) (regex!3305 (h!24102 rules!3447)))) b!1712335))

(declare-fun b!1712346 () Bool)

(declare-fun b_free!46475 () Bool)

(declare-fun b_next!47179 () Bool)

(assert (=> b!1712346 (= b_free!46475 (not b_next!47179))))

(declare-fun tp!489303 () Bool)

(declare-fun b_and!124013 () Bool)

(assert (=> b!1712346 (= tp!489303 b_and!124013)))

(declare-fun b_free!46477 () Bool)

(declare-fun b_next!47181 () Bool)

(assert (=> b!1712346 (= b_free!46477 (not b_next!47181))))

(declare-fun t!158365 () Bool)

(declare-fun tb!101031 () Bool)

(assert (=> (and b!1712346 (= (toChars!4667 (transformation!3305 (h!24102 (t!158334 rules!3447)))) (toChars!4667 (transformation!3305 (rule!5241 (_1!10609 lt!654048))))) t!158365) tb!101031))

(declare-fun result!121412 () Bool)

(assert (= result!121412 result!121384))

(assert (=> d!525255 t!158365))

(declare-fun t!158367 () Bool)

(declare-fun tb!101033 () Bool)

(assert (=> (and b!1712346 (= (toChars!4667 (transformation!3305 (h!24102 (t!158334 rules!3447)))) (toChars!4667 (transformation!3305 (rule!5241 token!523)))) t!158367) tb!101033))

(declare-fun result!121414 () Bool)

(assert (= result!121414 result!121402))

(assert (=> d!525323 t!158367))

(assert (=> b!1712320 t!158367))

(declare-fun tp!489304 () Bool)

(declare-fun b_and!124015 () Bool)

(assert (=> b!1712346 (= tp!489304 (and (=> t!158365 result!121412) (=> t!158367 result!121414) b_and!124015))))

(declare-fun e!1095139 () Bool)

(assert (=> b!1712346 (= e!1095139 (and tp!489303 tp!489304))))

(declare-fun tp!489306 () Bool)

(declare-fun e!1095140 () Bool)

(declare-fun b!1712345 () Bool)

(assert (=> b!1712345 (= e!1095140 (and tp!489306 (inv!24115 (tag!3601 (h!24102 (t!158334 rules!3447)))) (inv!24118 (transformation!3305 (h!24102 (t!158334 rules!3447)))) e!1095139))))

(declare-fun b!1712344 () Bool)

(declare-fun e!1095137 () Bool)

(declare-fun tp!489305 () Bool)

(assert (=> b!1712344 (= e!1095137 (and e!1095140 tp!489305))))

(assert (=> b!1711786 (= tp!489226 e!1095137)))

(assert (= b!1712345 b!1712346))

(assert (= b!1712344 b!1712345))

(assert (= (and b!1711786 ((_ is Cons!18701) (t!158334 rules!3447))) b!1712344))

(declare-fun m!2115857 () Bool)

(assert (=> b!1712345 m!2115857))

(declare-fun m!2115859 () Bool)

(assert (=> b!1712345 m!2115859))

(declare-fun b!1712351 () Bool)

(declare-fun e!1095143 () Bool)

(declare-fun tp!489309 () Bool)

(assert (=> b!1712351 (= e!1095143 (and tp_is_empty!7509 tp!489309))))

(assert (=> b!1711785 (= tp!489224 e!1095143)))

(assert (= (and b!1711785 ((_ is Cons!18699) (t!158332 suffix!1421))) b!1712351))

(declare-fun b!1712354 () Bool)

(declare-fun e!1095144 () Bool)

(declare-fun tp!489310 () Bool)

(assert (=> b!1712354 (= e!1095144 tp!489310)))

(assert (=> b!1711780 (= tp!489228 e!1095144)))

(declare-fun b!1712353 () Bool)

(declare-fun tp!489313 () Bool)

(declare-fun tp!489311 () Bool)

(assert (=> b!1712353 (= e!1095144 (and tp!489313 tp!489311))))

(declare-fun b!1712352 () Bool)

(assert (=> b!1712352 (= e!1095144 tp_is_empty!7509)))

(declare-fun b!1712355 () Bool)

(declare-fun tp!489312 () Bool)

(declare-fun tp!489314 () Bool)

(assert (=> b!1712355 (= e!1095144 (and tp!489312 tp!489314))))

(assert (= (and b!1711780 ((_ is ElementMatch!4633) (regex!3305 rule!422))) b!1712352))

(assert (= (and b!1711780 ((_ is Concat!8029) (regex!3305 rule!422))) b!1712353))

(assert (= (and b!1711780 ((_ is Star!4633) (regex!3305 rule!422))) b!1712354))

(assert (= (and b!1711780 ((_ is Union!4633) (regex!3305 rule!422))) b!1712355))

(declare-fun b!1712358 () Bool)

(declare-fun e!1095145 () Bool)

(declare-fun tp!489315 () Bool)

(assert (=> b!1712358 (= e!1095145 tp!489315)))

(assert (=> b!1711779 (= tp!489227 e!1095145)))

(declare-fun b!1712357 () Bool)

(declare-fun tp!489318 () Bool)

(declare-fun tp!489316 () Bool)

(assert (=> b!1712357 (= e!1095145 (and tp!489318 tp!489316))))

(declare-fun b!1712356 () Bool)

(assert (=> b!1712356 (= e!1095145 tp_is_empty!7509)))

(declare-fun b!1712359 () Bool)

(declare-fun tp!489317 () Bool)

(declare-fun tp!489319 () Bool)

(assert (=> b!1712359 (= e!1095145 (and tp!489317 tp!489319))))

(assert (= (and b!1711779 ((_ is ElementMatch!4633) (regex!3305 (rule!5241 token!523)))) b!1712356))

(assert (= (and b!1711779 ((_ is Concat!8029) (regex!3305 (rule!5241 token!523)))) b!1712357))

(assert (= (and b!1711779 ((_ is Star!4633) (regex!3305 (rule!5241 token!523)))) b!1712358))

(assert (= (and b!1711779 ((_ is Union!4633) (regex!3305 (rule!5241 token!523)))) b!1712359))

(declare-fun b!1712360 () Bool)

(declare-fun e!1095146 () Bool)

(declare-fun tp!489320 () Bool)

(assert (=> b!1712360 (= e!1095146 (and tp_is_empty!7509 tp!489320))))

(assert (=> b!1711774 (= tp!489223 e!1095146)))

(assert (= (and b!1711774 ((_ is Cons!18699) (originalCharacters!4119 token!523))) b!1712360))

(declare-fun b_lambda!54021 () Bool)

(assert (= b_lambda!54017 (or (and b!1711781 b_free!46461) (and b!1711777 b_free!46465 (= (toChars!4667 (transformation!3305 rule!422)) (toChars!4667 (transformation!3305 (rule!5241 token!523))))) (and b!1711769 b_free!46469 (= (toChars!4667 (transformation!3305 (h!24102 rules!3447))) (toChars!4667 (transformation!3305 (rule!5241 token!523))))) (and b!1712346 b_free!46477 (= (toChars!4667 (transformation!3305 (h!24102 (t!158334 rules!3447)))) (toChars!4667 (transformation!3305 (rule!5241 token!523))))) b_lambda!54021)))

(declare-fun b_lambda!54023 () Bool)

(assert (= b_lambda!54019 (or (and b!1711781 b_free!46461) (and b!1711777 b_free!46465 (= (toChars!4667 (transformation!3305 rule!422)) (toChars!4667 (transformation!3305 (rule!5241 token!523))))) (and b!1711769 b_free!46469 (= (toChars!4667 (transformation!3305 (h!24102 rules!3447))) (toChars!4667 (transformation!3305 (rule!5241 token!523))))) (and b!1712346 b_free!46477 (= (toChars!4667 (transformation!3305 (h!24102 (t!158334 rules!3447)))) (toChars!4667 (transformation!3305 (rule!5241 token!523))))) b_lambda!54023)))

(check-sat (not d!525311) (not b!1711917) (not b!1712270) (not b!1712345) (not bm!109490) (not bm!109492) (not b!1712355) (not b!1712165) (not b!1712141) (not tb!101025) (not b!1712231) (not d!525203) b_and!123961 (not d!525313) (not b_next!47165) (not b!1712228) (not d!525305) (not b!1712269) (not d!525315) (not b!1712335) (not b!1712222) (not b!1712320) (not b!1712353) (not b!1712240) b_and!124013 (not b!1712186) (not d!525301) (not b!1712236) tp_is_empty!7509 (not b!1712229) (not b!1712281) (not b_next!47163) (not d!525321) (not b!1712145) b_and!124011 (not b!1712169) (not d!525281) (not b!1712333) (not b!1712255) (not b!1712144) (not b!1712168) (not bm!109491) (not d!525291) (not d!525319) (not b_next!47167) (not b!1712026) (not b_lambda!54021) (not b!1712283) (not b!1711959) (not b!1712253) (not b!1712285) (not d!525341) (not b!1712261) b_and!123969 (not b!1712321) b_and!124015 (not bm!109500) (not b!1712239) (not bm!109499) (not b!1712315) (not b!1712172) (not b!1711886) b_and!124009 (not b!1712359) (not d!525303) (not b_next!47171) (not b!1712344) (not b!1711918) (not b_next!47173) (not b!1712257) (not d!525293) (not b_next!47169) (not b!1712027) (not d!525285) (not b!1712173) (not b!1712280) (not b!1712254) (not b!1712354) (not b!1712176) (not b!1712166) (not d!525323) (not b!1712334) (not b!1712308) (not b!1712018) (not b!1712314) (not b!1712171) (not b_lambda!54011) (not b!1712189) (not d!525255) (not d!525239) (not b!1712177) (not b!1712268) (not d!525229) (not b!1712175) (not b!1712180) (not d!525225) (not b!1712230) (not b_next!47181) b_and!124007 (not b!1712139) (not d!525227) (not b!1712140) (not tb!101015) (not b!1712218) (not b!1712237) (not d!525335) (not b!1711887) (not b!1712024) (not d!525317) (not b!1712358) (not b!1712275) b_and!123965 (not b!1711884) (not b_lambda!54023) (not b!1711960) (not bm!109487) (not b!1712277) (not b!1712279) (not d!525191) (not b!1712286) (not b!1712019) (not b_next!47179) (not d!525297) (not b!1712351) (not b!1712267) (not d!525279) (not d!525259) (not d!525289) (not b!1712167) (not b!1711958) (not b!1712284) (not b!1712278) (not b!1712360) (not b!1712357) (not d!525339) (not b!1712028))
(check-sat b_and!123961 (not b_next!47165) b_and!124013 (not b_next!47167) (not b_next!47173) (not b_next!47169) b_and!123965 (not b_next!47179) b_and!124011 (not b_next!47163) b_and!124015 b_and!123969 b_and!124009 (not b_next!47171) (not b_next!47181) b_and!124007)
