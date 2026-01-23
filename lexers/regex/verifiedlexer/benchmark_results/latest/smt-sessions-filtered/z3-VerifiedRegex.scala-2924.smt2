; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!171482 () Bool)

(assert start!171482)

(declare-fun b!1741695 () Bool)

(declare-fun b_free!47891 () Bool)

(declare-fun b_next!48595 () Bool)

(assert (=> b!1741695 (= b_free!47891 (not b_next!48595))))

(declare-fun tp!495918 () Bool)

(declare-fun b_and!129473 () Bool)

(assert (=> b!1741695 (= tp!495918 b_and!129473)))

(declare-fun b_free!47893 () Bool)

(declare-fun b_next!48597 () Bool)

(assert (=> b!1741695 (= b_free!47893 (not b_next!48597))))

(declare-fun tp!495922 () Bool)

(declare-fun b_and!129475 () Bool)

(assert (=> b!1741695 (= tp!495922 b_and!129475)))

(declare-fun b!1741699 () Bool)

(declare-fun b_free!47895 () Bool)

(declare-fun b_next!48599 () Bool)

(assert (=> b!1741699 (= b_free!47895 (not b_next!48599))))

(declare-fun tp!495915 () Bool)

(declare-fun b_and!129477 () Bool)

(assert (=> b!1741699 (= tp!495915 b_and!129477)))

(declare-fun b_free!47897 () Bool)

(declare-fun b_next!48601 () Bool)

(assert (=> b!1741699 (= b_free!47897 (not b_next!48601))))

(declare-fun tp!495919 () Bool)

(declare-fun b_and!129479 () Bool)

(assert (=> b!1741699 (= tp!495919 b_and!129479)))

(declare-fun b!1741700 () Bool)

(declare-fun b_free!47899 () Bool)

(declare-fun b_next!48603 () Bool)

(assert (=> b!1741700 (= b_free!47899 (not b_next!48603))))

(declare-fun tp!495916 () Bool)

(declare-fun b_and!129481 () Bool)

(assert (=> b!1741700 (= tp!495916 b_and!129481)))

(declare-fun b_free!47901 () Bool)

(declare-fun b_next!48605 () Bool)

(assert (=> b!1741700 (= b_free!47901 (not b_next!48605))))

(declare-fun tp!495925 () Bool)

(declare-fun b_and!129483 () Bool)

(assert (=> b!1741700 (= tp!495925 b_and!129483)))

(declare-fun b!1741684 () Bool)

(declare-fun e!1114766 () Bool)

(declare-datatypes ((List!19211 0))(
  ( (Nil!19141) (Cons!19141 (h!24542 (_ BitVec 16)) (t!161910 List!19211)) )
))
(declare-datatypes ((TokenValue!3499 0))(
  ( (FloatLiteralValue!6998 (text!24938 List!19211)) (TokenValueExt!3498 (__x!12300 Int)) (Broken!17495 (value!106803 List!19211)) (Object!3568) (End!3499) (Def!3499) (Underscore!3499) (Match!3499) (Else!3499) (Error!3499) (Case!3499) (If!3499) (Extends!3499) (Abstract!3499) (Class!3499) (Val!3499) (DelimiterValue!6998 (del!3559 List!19211)) (KeywordValue!3505 (value!106804 List!19211)) (CommentValue!6998 (value!106805 List!19211)) (WhitespaceValue!6998 (value!106806 List!19211)) (IndentationValue!3499 (value!106807 List!19211)) (String!21826) (Int32!3499) (Broken!17496 (value!106808 List!19211)) (Boolean!3500) (Unit!33208) (OperatorValue!3502 (op!3559 List!19211)) (IdentifierValue!6998 (value!106809 List!19211)) (IdentifierValue!6999 (value!106810 List!19211)) (WhitespaceValue!6999 (value!106811 List!19211)) (True!6998) (False!6998) (Broken!17497 (value!106812 List!19211)) (Broken!17498 (value!106813 List!19211)) (True!6999) (RightBrace!3499) (RightBracket!3499) (Colon!3499) (Null!3499) (Comma!3499) (LeftBracket!3499) (False!6999) (LeftBrace!3499) (ImaginaryLiteralValue!3499 (text!24939 List!19211)) (StringLiteralValue!10497 (value!106814 List!19211)) (EOFValue!3499 (value!106815 List!19211)) (IdentValue!3499 (value!106816 List!19211)) (DelimiterValue!6999 (value!106817 List!19211)) (DedentValue!3499 (value!106818 List!19211)) (NewLineValue!3499 (value!106819 List!19211)) (IntegerValue!10497 (value!106820 (_ BitVec 32)) (text!24940 List!19211)) (IntegerValue!10498 (value!106821 Int) (text!24941 List!19211)) (Times!3499) (Or!3499) (Equal!3499) (Minus!3499) (Broken!17499 (value!106822 List!19211)) (And!3499) (Div!3499) (LessEqual!3499) (Mod!3499) (Concat!8236) (Not!3499) (Plus!3499) (SpaceValue!3499 (value!106823 List!19211)) (IntegerValue!10499 (value!106824 Int) (text!24942 List!19211)) (StringLiteralValue!10498 (text!24943 List!19211)) (FloatLiteralValue!6999 (text!24944 List!19211)) (BytesLiteralValue!3499 (value!106825 List!19211)) (CommentValue!6999 (value!106826 List!19211)) (StringLiteralValue!10499 (value!106827 List!19211)) (ErrorTokenValue!3499 (msg!3560 List!19211)) )
))
(declare-datatypes ((C!9648 0))(
  ( (C!9649 (val!5420 Int)) )
))
(declare-datatypes ((List!19212 0))(
  ( (Nil!19142) (Cons!19142 (h!24543 C!9648) (t!161911 List!19212)) )
))
(declare-datatypes ((Regex!4737 0))(
  ( (ElementMatch!4737 (c!284164 C!9648)) (Concat!8237 (regOne!9986 Regex!4737) (regTwo!9986 Regex!4737)) (EmptyExpr!4737) (Star!4737 (reg!5066 Regex!4737)) (EmptyLang!4737) (Union!4737 (regOne!9987 Regex!4737) (regTwo!9987 Regex!4737)) )
))
(declare-datatypes ((String!21827 0))(
  ( (String!21828 (value!106828 String)) )
))
(declare-datatypes ((IArray!12739 0))(
  ( (IArray!12740 (innerList!6427 List!19212)) )
))
(declare-datatypes ((Conc!6367 0))(
  ( (Node!6367 (left!15305 Conc!6367) (right!15635 Conc!6367) (csize!12964 Int) (cheight!6578 Int)) (Leaf!9292 (xs!9243 IArray!12739) (csize!12965 Int)) (Empty!6367) )
))
(declare-datatypes ((BalanceConc!12678 0))(
  ( (BalanceConc!12679 (c!284165 Conc!6367)) )
))
(declare-datatypes ((TokenValueInjection!6658 0))(
  ( (TokenValueInjection!6659 (toValue!4916 Int) (toChars!4775 Int)) )
))
(declare-datatypes ((Rule!6618 0))(
  ( (Rule!6619 (regex!3409 Regex!4737) (tag!3749 String!21827) (isSeparator!3409 Bool) (transformation!3409 TokenValueInjection!6658)) )
))
(declare-datatypes ((Token!6384 0))(
  ( (Token!6385 (value!106829 TokenValue!3499) (rule!5411 Rule!6618) (size!15208 Int) (originalCharacters!4223 List!19212)) )
))
(declare-datatypes ((tuple2!18790 0))(
  ( (tuple2!18791 (_1!10797 Token!6384) (_2!10797 List!19212)) )
))
(declare-fun lt!671622 () tuple2!18790)

(declare-fun lt!671619 () List!19212)

(declare-fun matchR!2211 (Regex!4737 List!19212) Bool)

(assert (=> b!1741684 (= e!1114766 (matchR!2211 (regex!3409 (rule!5411 (_1!10797 lt!671622))) lt!671619))))

(declare-fun rule!422 () Rule!6618)

(declare-fun e!1114772 () Bool)

(declare-fun b!1741685 () Bool)

(declare-fun tp!495924 () Bool)

(declare-fun e!1114760 () Bool)

(declare-fun inv!24800 (String!21827) Bool)

(declare-fun inv!24803 (TokenValueInjection!6658) Bool)

(assert (=> b!1741685 (= e!1114772 (and tp!495924 (inv!24800 (tag!3749 rule!422)) (inv!24803 (transformation!3409 rule!422)) e!1114760))))

(declare-fun b!1741686 () Bool)

(declare-fun res!783043 () Bool)

(declare-fun e!1114767 () Bool)

(assert (=> b!1741686 (=> res!783043 e!1114767)))

(declare-fun suffix!1421 () List!19212)

(declare-datatypes ((LexerInterface!3038 0))(
  ( (LexerInterfaceExt!3035 (__x!12301 Int)) (Lexer!3036) )
))
(declare-fun thiss!24550 () LexerInterface!3038)

(declare-datatypes ((List!19213 0))(
  ( (Nil!19143) (Cons!19143 (h!24544 Rule!6618) (t!161912 List!19213)) )
))
(declare-fun rules!3447 () List!19213)

(declare-fun lt!671627 () List!19212)

(declare-fun prefixMatch!622 (Regex!4737 List!19212) Bool)

(declare-fun rulesRegex!767 (LexerInterface!3038 List!19213) Regex!4737)

(declare-fun ++!5234 (List!19212 List!19212) List!19212)

(declare-fun head!3992 (List!19212) C!9648)

(assert (=> b!1741686 (= res!783043 (prefixMatch!622 (rulesRegex!767 thiss!24550 rules!3447) (++!5234 lt!671627 (Cons!19142 (head!3992 suffix!1421) Nil!19142))))))

(declare-fun b!1741687 () Bool)

(declare-fun e!1114771 () Bool)

(declare-fun e!1114770 () Bool)

(assert (=> b!1741687 (= e!1114771 e!1114770)))

(declare-fun res!783032 () Bool)

(assert (=> b!1741687 (=> (not res!783032) (not e!1114770))))

(declare-fun lt!671623 () tuple2!18790)

(declare-fun token!523 () Token!6384)

(assert (=> b!1741687 (= res!783032 (= (_1!10797 lt!671623) token!523))))

(declare-datatypes ((Option!3842 0))(
  ( (None!3841) (Some!3841 (v!25274 tuple2!18790)) )
))
(declare-fun lt!671629 () Option!3842)

(declare-fun get!5764 (Option!3842) tuple2!18790)

(assert (=> b!1741687 (= lt!671623 (get!5764 lt!671629))))

(declare-fun b!1741688 () Bool)

(declare-fun res!783044 () Bool)

(declare-fun e!1114759 () Bool)

(assert (=> b!1741688 (=> (not res!783044) (not e!1114759))))

(declare-fun isEmpty!12049 (List!19213) Bool)

(assert (=> b!1741688 (= res!783044 (not (isEmpty!12049 rules!3447)))))

(declare-fun b!1741689 () Bool)

(assert (=> b!1741689 (= e!1114770 (not e!1114767))))

(declare-fun res!783033 () Bool)

(assert (=> b!1741689 (=> res!783033 e!1114767)))

(assert (=> b!1741689 (= res!783033 (not (matchR!2211 (regex!3409 rule!422) lt!671627)))))

(declare-fun ruleValid!908 (LexerInterface!3038 Rule!6618) Bool)

(assert (=> b!1741689 (ruleValid!908 thiss!24550 rule!422)))

(declare-datatypes ((Unit!33209 0))(
  ( (Unit!33210) )
))
(declare-fun lt!671617 () Unit!33209)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!432 (LexerInterface!3038 Rule!6618 List!19213) Unit!33209)

(assert (=> b!1741689 (= lt!671617 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!432 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1741690 () Bool)

(assert (=> b!1741690 (= e!1114759 e!1114771)))

(declare-fun res!783039 () Bool)

(assert (=> b!1741690 (=> (not res!783039) (not e!1114771))))

(declare-fun isDefined!3185 (Option!3842) Bool)

(assert (=> b!1741690 (= res!783039 (isDefined!3185 lt!671629))))

(declare-fun maxPrefix!1592 (LexerInterface!3038 List!19213 List!19212) Option!3842)

(assert (=> b!1741690 (= lt!671629 (maxPrefix!1592 thiss!24550 rules!3447 lt!671627))))

(declare-fun list!7742 (BalanceConc!12678) List!19212)

(declare-fun charsOf!2058 (Token!6384) BalanceConc!12678)

(assert (=> b!1741690 (= lt!671627 (list!7742 (charsOf!2058 token!523)))))

(declare-fun b!1741691 () Bool)

(declare-fun res!783038 () Bool)

(assert (=> b!1741691 (=> (not res!783038) (not e!1114770))))

(declare-fun isEmpty!12050 (List!19212) Bool)

(assert (=> b!1741691 (= res!783038 (isEmpty!12050 (_2!10797 lt!671623)))))

(declare-fun b!1741692 () Bool)

(declare-fun e!1114758 () Bool)

(declare-fun e!1114763 () Bool)

(declare-fun tp!495923 () Bool)

(assert (=> b!1741692 (= e!1114758 (and e!1114763 tp!495923))))

(declare-fun b!1741693 () Bool)

(declare-fun res!783035 () Bool)

(assert (=> b!1741693 (=> res!783035 e!1114767)))

(assert (=> b!1741693 (= res!783035 (isEmpty!12050 suffix!1421))))

(declare-fun b!1741694 () Bool)

(declare-fun e!1114757 () Bool)

(declare-fun e!1114762 () Bool)

(assert (=> b!1741694 (= e!1114757 e!1114762)))

(declare-fun res!783045 () Bool)

(assert (=> b!1741694 (=> (not res!783045) (not e!1114762))))

(declare-fun lt!671618 () Rule!6618)

(assert (=> b!1741694 (= res!783045 (matchR!2211 (regex!3409 lt!671618) (list!7742 (charsOf!2058 (_1!10797 lt!671622)))))))

(declare-datatypes ((Option!3843 0))(
  ( (None!3842) (Some!3842 (v!25275 Rule!6618)) )
))
(declare-fun lt!671620 () Option!3843)

(declare-fun get!5765 (Option!3843) Rule!6618)

(assert (=> b!1741694 (= lt!671618 (get!5765 lt!671620))))

(declare-fun res!783036 () Bool)

(assert (=> start!171482 (=> (not res!783036) (not e!1114759))))

(get-info :version)

(assert (=> start!171482 (= res!783036 ((_ is Lexer!3036) thiss!24550))))

(assert (=> start!171482 e!1114759))

(declare-fun e!1114773 () Bool)

(assert (=> start!171482 e!1114773))

(assert (=> start!171482 e!1114772))

(assert (=> start!171482 true))

(declare-fun e!1114768 () Bool)

(declare-fun inv!24804 (Token!6384) Bool)

(assert (=> start!171482 (and (inv!24804 token!523) e!1114768)))

(assert (=> start!171482 e!1114758))

(declare-fun e!1114769 () Bool)

(assert (=> b!1741695 (= e!1114769 (and tp!495918 tp!495922))))

(declare-fun b!1741696 () Bool)

(declare-fun res!783037 () Bool)

(assert (=> b!1741696 (=> (not res!783037) (not e!1114759))))

(declare-fun contains!3431 (List!19213 Rule!6618) Bool)

(assert (=> b!1741696 (= res!783037 (contains!3431 rules!3447 rule!422))))

(declare-fun tp!495926 () Bool)

(declare-fun b!1741697 () Bool)

(assert (=> b!1741697 (= e!1114763 (and tp!495926 (inv!24800 (tag!3749 (h!24544 rules!3447))) (inv!24803 (transformation!3409 (h!24544 rules!3447))) e!1114769))))

(declare-fun b!1741698 () Bool)

(declare-fun tp_is_empty!7717 () Bool)

(declare-fun tp!495921 () Bool)

(assert (=> b!1741698 (= e!1114773 (and tp_is_empty!7717 tp!495921))))

(assert (=> b!1741699 (= e!1114760 (and tp!495915 tp!495919))))

(declare-fun e!1114764 () Bool)

(assert (=> b!1741700 (= e!1114764 (and tp!495916 tp!495925))))

(declare-fun b!1741701 () Bool)

(declare-fun tp!495920 () Bool)

(declare-fun e!1114761 () Bool)

(declare-fun inv!21 (TokenValue!3499) Bool)

(assert (=> b!1741701 (= e!1114768 (and (inv!21 (value!106829 token!523)) e!1114761 tp!495920))))

(declare-fun b!1741702 () Bool)

(assert (=> b!1741702 (= e!1114767 e!1114766)))

(declare-fun res!783042 () Bool)

(assert (=> b!1741702 (=> res!783042 e!1114766)))

(declare-fun lt!671621 () List!19212)

(declare-fun isPrefix!1650 (List!19212 List!19212) Bool)

(assert (=> b!1741702 (= res!783042 (not (isPrefix!1650 lt!671619 lt!671621)))))

(assert (=> b!1741702 (isPrefix!1650 lt!671619 (++!5234 lt!671619 (_2!10797 lt!671622)))))

(declare-fun lt!671626 () Unit!33209)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1160 (List!19212 List!19212) Unit!33209)

(assert (=> b!1741702 (= lt!671626 (lemmaConcatTwoListThenFirstIsPrefix!1160 lt!671619 (_2!10797 lt!671622)))))

(assert (=> b!1741702 (= lt!671619 (list!7742 (charsOf!2058 (_1!10797 lt!671622))))))

(assert (=> b!1741702 e!1114757))

(declare-fun res!783040 () Bool)

(assert (=> b!1741702 (=> (not res!783040) (not e!1114757))))

(declare-fun isDefined!3186 (Option!3843) Bool)

(assert (=> b!1741702 (= res!783040 (isDefined!3186 lt!671620))))

(declare-fun getRuleFromTag!459 (LexerInterface!3038 List!19213 String!21827) Option!3843)

(assert (=> b!1741702 (= lt!671620 (getRuleFromTag!459 thiss!24550 rules!3447 (tag!3749 (rule!5411 (_1!10797 lt!671622)))))))

(declare-fun lt!671628 () Unit!33209)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!459 (LexerInterface!3038 List!19213 List!19212 Token!6384) Unit!33209)

(assert (=> b!1741702 (= lt!671628 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!459 thiss!24550 rules!3447 lt!671621 (_1!10797 lt!671622)))))

(declare-fun lt!671624 () Option!3842)

(assert (=> b!1741702 (= lt!671622 (get!5764 lt!671624))))

(declare-fun lt!671625 () Unit!33209)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!562 (LexerInterface!3038 List!19213 List!19212 List!19212) Unit!33209)

(assert (=> b!1741702 (= lt!671625 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!562 thiss!24550 rules!3447 lt!671627 suffix!1421))))

(assert (=> b!1741702 (= lt!671624 (maxPrefix!1592 thiss!24550 rules!3447 lt!671621))))

(assert (=> b!1741702 (isPrefix!1650 lt!671627 lt!671621)))

(declare-fun lt!671630 () Unit!33209)

(assert (=> b!1741702 (= lt!671630 (lemmaConcatTwoListThenFirstIsPrefix!1160 lt!671627 suffix!1421))))

(assert (=> b!1741702 (= lt!671621 (++!5234 lt!671627 suffix!1421))))

(declare-fun b!1741703 () Bool)

(declare-fun res!783034 () Bool)

(assert (=> b!1741703 (=> (not res!783034) (not e!1114770))))

(assert (=> b!1741703 (= res!783034 (= (rule!5411 token!523) rule!422))))

(declare-fun b!1741704 () Bool)

(declare-fun tp!495917 () Bool)

(assert (=> b!1741704 (= e!1114761 (and tp!495917 (inv!24800 (tag!3749 (rule!5411 token!523))) (inv!24803 (transformation!3409 (rule!5411 token!523))) e!1114764))))

(declare-fun b!1741705 () Bool)

(assert (=> b!1741705 (= e!1114762 (= (rule!5411 (_1!10797 lt!671622)) lt!671618))))

(declare-fun b!1741706 () Bool)

(declare-fun res!783041 () Bool)

(assert (=> b!1741706 (=> (not res!783041) (not e!1114759))))

(declare-fun rulesInvariant!2707 (LexerInterface!3038 List!19213) Bool)

(assert (=> b!1741706 (= res!783041 (rulesInvariant!2707 thiss!24550 rules!3447))))

(assert (= (and start!171482 res!783036) b!1741688))

(assert (= (and b!1741688 res!783044) b!1741706))

(assert (= (and b!1741706 res!783041) b!1741696))

(assert (= (and b!1741696 res!783037) b!1741690))

(assert (= (and b!1741690 res!783039) b!1741687))

(assert (= (and b!1741687 res!783032) b!1741691))

(assert (= (and b!1741691 res!783038) b!1741703))

(assert (= (and b!1741703 res!783034) b!1741689))

(assert (= (and b!1741689 (not res!783033)) b!1741693))

(assert (= (and b!1741693 (not res!783035)) b!1741686))

(assert (= (and b!1741686 (not res!783043)) b!1741702))

(assert (= (and b!1741702 res!783040) b!1741694))

(assert (= (and b!1741694 res!783045) b!1741705))

(assert (= (and b!1741702 (not res!783042)) b!1741684))

(assert (= (and start!171482 ((_ is Cons!19142) suffix!1421)) b!1741698))

(assert (= b!1741685 b!1741699))

(assert (= start!171482 b!1741685))

(assert (= b!1741704 b!1741700))

(assert (= b!1741701 b!1741704))

(assert (= start!171482 b!1741701))

(assert (= b!1741697 b!1741695))

(assert (= b!1741692 b!1741697))

(assert (= (and start!171482 ((_ is Cons!19143) rules!3447)) b!1741692))

(declare-fun m!2152763 () Bool)

(assert (=> b!1741689 m!2152763))

(declare-fun m!2152765 () Bool)

(assert (=> b!1741689 m!2152765))

(declare-fun m!2152767 () Bool)

(assert (=> b!1741689 m!2152767))

(declare-fun m!2152769 () Bool)

(assert (=> b!1741704 m!2152769))

(declare-fun m!2152771 () Bool)

(assert (=> b!1741704 m!2152771))

(declare-fun m!2152773 () Bool)

(assert (=> b!1741691 m!2152773))

(declare-fun m!2152775 () Bool)

(assert (=> b!1741697 m!2152775))

(declare-fun m!2152777 () Bool)

(assert (=> b!1741697 m!2152777))

(declare-fun m!2152779 () Bool)

(assert (=> start!171482 m!2152779))

(declare-fun m!2152781 () Bool)

(assert (=> b!1741693 m!2152781))

(declare-fun m!2152783 () Bool)

(assert (=> b!1741701 m!2152783))

(declare-fun m!2152785 () Bool)

(assert (=> b!1741685 m!2152785))

(declare-fun m!2152787 () Bool)

(assert (=> b!1741685 m!2152787))

(declare-fun m!2152789 () Bool)

(assert (=> b!1741690 m!2152789))

(declare-fun m!2152791 () Bool)

(assert (=> b!1741690 m!2152791))

(declare-fun m!2152793 () Bool)

(assert (=> b!1741690 m!2152793))

(assert (=> b!1741690 m!2152793))

(declare-fun m!2152795 () Bool)

(assert (=> b!1741690 m!2152795))

(declare-fun m!2152797 () Bool)

(assert (=> b!1741688 m!2152797))

(declare-fun m!2152799 () Bool)

(assert (=> b!1741702 m!2152799))

(declare-fun m!2152801 () Bool)

(assert (=> b!1741702 m!2152801))

(declare-fun m!2152803 () Bool)

(assert (=> b!1741702 m!2152803))

(declare-fun m!2152805 () Bool)

(assert (=> b!1741702 m!2152805))

(declare-fun m!2152807 () Bool)

(assert (=> b!1741702 m!2152807))

(declare-fun m!2152809 () Bool)

(assert (=> b!1741702 m!2152809))

(declare-fun m!2152811 () Bool)

(assert (=> b!1741702 m!2152811))

(assert (=> b!1741702 m!2152801))

(declare-fun m!2152813 () Bool)

(assert (=> b!1741702 m!2152813))

(declare-fun m!2152815 () Bool)

(assert (=> b!1741702 m!2152815))

(declare-fun m!2152817 () Bool)

(assert (=> b!1741702 m!2152817))

(assert (=> b!1741702 m!2152803))

(declare-fun m!2152819 () Bool)

(assert (=> b!1741702 m!2152819))

(declare-fun m!2152821 () Bool)

(assert (=> b!1741702 m!2152821))

(declare-fun m!2152823 () Bool)

(assert (=> b!1741702 m!2152823))

(declare-fun m!2152825 () Bool)

(assert (=> b!1741702 m!2152825))

(declare-fun m!2152827 () Bool)

(assert (=> b!1741702 m!2152827))

(declare-fun m!2152829 () Bool)

(assert (=> b!1741696 m!2152829))

(assert (=> b!1741694 m!2152803))

(assert (=> b!1741694 m!2152803))

(assert (=> b!1741694 m!2152819))

(assert (=> b!1741694 m!2152819))

(declare-fun m!2152831 () Bool)

(assert (=> b!1741694 m!2152831))

(declare-fun m!2152833 () Bool)

(assert (=> b!1741694 m!2152833))

(declare-fun m!2152835 () Bool)

(assert (=> b!1741686 m!2152835))

(declare-fun m!2152837 () Bool)

(assert (=> b!1741686 m!2152837))

(declare-fun m!2152839 () Bool)

(assert (=> b!1741686 m!2152839))

(assert (=> b!1741686 m!2152835))

(assert (=> b!1741686 m!2152839))

(declare-fun m!2152841 () Bool)

(assert (=> b!1741686 m!2152841))

(declare-fun m!2152843 () Bool)

(assert (=> b!1741687 m!2152843))

(declare-fun m!2152845 () Bool)

(assert (=> b!1741706 m!2152845))

(declare-fun m!2152847 () Bool)

(assert (=> b!1741684 m!2152847))

(check-sat (not b_next!48601) (not b!1741698) (not b_next!48605) (not start!171482) (not b!1741687) tp_is_empty!7717 (not b!1741692) (not b!1741696) (not b!1741693) (not b_next!48595) (not b!1741686) (not b!1741704) (not b!1741701) b_and!129483 (not b!1741689) (not b!1741690) (not b_next!48599) b_and!129475 (not b!1741684) (not b!1741694) (not b!1741697) (not b!1741702) (not b_next!48603) b_and!129479 (not b_next!48597) b_and!129477 b_and!129481 (not b!1741688) (not b!1741691) (not b!1741706) (not b!1741685) b_and!129473)
(check-sat b_and!129483 (not b_next!48601) (not b_next!48599) b_and!129475 (not b_next!48605) b_and!129481 b_and!129473 (not b_next!48595) (not b_next!48603) b_and!129479 (not b_next!48597) b_and!129477)
