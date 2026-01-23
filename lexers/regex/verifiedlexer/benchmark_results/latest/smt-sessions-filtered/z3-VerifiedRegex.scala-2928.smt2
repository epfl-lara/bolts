; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!171898 () Bool)

(assert start!171898)

(declare-fun b!1744786 () Bool)

(declare-fun b_free!48011 () Bool)

(declare-fun b_next!48715 () Bool)

(assert (=> b!1744786 (= b_free!48011 (not b_next!48715))))

(declare-fun tp!496609 () Bool)

(declare-fun b_and!129811 () Bool)

(assert (=> b!1744786 (= tp!496609 b_and!129811)))

(declare-fun b_free!48013 () Bool)

(declare-fun b_next!48717 () Bool)

(assert (=> b!1744786 (= b_free!48013 (not b_next!48717))))

(declare-fun tp!496617 () Bool)

(declare-fun b_and!129813 () Bool)

(assert (=> b!1744786 (= tp!496617 b_and!129813)))

(declare-fun b!1744772 () Bool)

(declare-fun b_free!48015 () Bool)

(declare-fun b_next!48719 () Bool)

(assert (=> b!1744772 (= b_free!48015 (not b_next!48719))))

(declare-fun tp!496610 () Bool)

(declare-fun b_and!129815 () Bool)

(assert (=> b!1744772 (= tp!496610 b_and!129815)))

(declare-fun b_free!48017 () Bool)

(declare-fun b_next!48721 () Bool)

(assert (=> b!1744772 (= b_free!48017 (not b_next!48721))))

(declare-fun tp!496616 () Bool)

(declare-fun b_and!129817 () Bool)

(assert (=> b!1744772 (= tp!496616 b_and!129817)))

(declare-fun b!1744778 () Bool)

(declare-fun b_free!48019 () Bool)

(declare-fun b_next!48723 () Bool)

(assert (=> b!1744778 (= b_free!48019 (not b_next!48723))))

(declare-fun tp!496619 () Bool)

(declare-fun b_and!129819 () Bool)

(assert (=> b!1744778 (= tp!496619 b_and!129819)))

(declare-fun b_free!48021 () Bool)

(declare-fun b_next!48725 () Bool)

(assert (=> b!1744778 (= b_free!48021 (not b_next!48725))))

(declare-fun tp!496620 () Bool)

(declare-fun b_and!129821 () Bool)

(assert (=> b!1744778 (= tp!496620 b_and!129821)))

(declare-fun b!1744798 () Bool)

(declare-fun e!1116663 () Bool)

(assert (=> b!1744798 (= e!1116663 true)))

(declare-fun b!1744797 () Bool)

(declare-fun e!1116662 () Bool)

(assert (=> b!1744797 (= e!1116662 e!1116663)))

(declare-fun b!1744796 () Bool)

(declare-fun e!1116661 () Bool)

(assert (=> b!1744796 (= e!1116661 e!1116662)))

(declare-fun b!1744777 () Bool)

(assert (=> b!1744777 e!1116661))

(assert (= b!1744797 b!1744798))

(assert (= b!1744796 b!1744797))

(assert (= b!1744777 b!1744796))

(declare-datatypes ((List!19246 0))(
  ( (Nil!19176) (Cons!19176 (h!24577 (_ BitVec 16)) (t!162187 List!19246)) )
))
(declare-datatypes ((TokenValue!3507 0))(
  ( (FloatLiteralValue!7014 (text!24994 List!19246)) (TokenValueExt!3506 (__x!12316 Int)) (Broken!17535 (value!107031 List!19246)) (Object!3576) (End!3507) (Def!3507) (Underscore!3507) (Match!3507) (Else!3507) (Error!3507) (Case!3507) (If!3507) (Extends!3507) (Abstract!3507) (Class!3507) (Val!3507) (DelimiterValue!7014 (del!3567 List!19246)) (KeywordValue!3513 (value!107032 List!19246)) (CommentValue!7014 (value!107033 List!19246)) (WhitespaceValue!7014 (value!107034 List!19246)) (IndentationValue!3507 (value!107035 List!19246)) (String!21866) (Int32!3507) (Broken!17536 (value!107036 List!19246)) (Boolean!3508) (Unit!33248) (OperatorValue!3510 (op!3567 List!19246)) (IdentifierValue!7014 (value!107037 List!19246)) (IdentifierValue!7015 (value!107038 List!19246)) (WhitespaceValue!7015 (value!107039 List!19246)) (True!7014) (False!7014) (Broken!17537 (value!107040 List!19246)) (Broken!17538 (value!107041 List!19246)) (True!7015) (RightBrace!3507) (RightBracket!3507) (Colon!3507) (Null!3507) (Comma!3507) (LeftBracket!3507) (False!7015) (LeftBrace!3507) (ImaginaryLiteralValue!3507 (text!24995 List!19246)) (StringLiteralValue!10521 (value!107042 List!19246)) (EOFValue!3507 (value!107043 List!19246)) (IdentValue!3507 (value!107044 List!19246)) (DelimiterValue!7015 (value!107045 List!19246)) (DedentValue!3507 (value!107046 List!19246)) (NewLineValue!3507 (value!107047 List!19246)) (IntegerValue!10521 (value!107048 (_ BitVec 32)) (text!24996 List!19246)) (IntegerValue!10522 (value!107049 Int) (text!24997 List!19246)) (Times!3507) (Or!3507) (Equal!3507) (Minus!3507) (Broken!17539 (value!107050 List!19246)) (And!3507) (Div!3507) (LessEqual!3507) (Mod!3507) (Concat!8252) (Not!3507) (Plus!3507) (SpaceValue!3507 (value!107051 List!19246)) (IntegerValue!10523 (value!107052 Int) (text!24998 List!19246)) (StringLiteralValue!10522 (text!24999 List!19246)) (FloatLiteralValue!7015 (text!25000 List!19246)) (BytesLiteralValue!3507 (value!107053 List!19246)) (CommentValue!7015 (value!107054 List!19246)) (StringLiteralValue!10523 (value!107055 List!19246)) (ErrorTokenValue!3507 (msg!3568 List!19246)) )
))
(declare-datatypes ((C!9664 0))(
  ( (C!9665 (val!5428 Int)) )
))
(declare-datatypes ((List!19247 0))(
  ( (Nil!19177) (Cons!19177 (h!24578 C!9664) (t!162188 List!19247)) )
))
(declare-datatypes ((Regex!4745 0))(
  ( (ElementMatch!4745 (c!284660 C!9664)) (Concat!8253 (regOne!10002 Regex!4745) (regTwo!10002 Regex!4745)) (EmptyExpr!4745) (Star!4745 (reg!5074 Regex!4745)) (EmptyLang!4745) (Union!4745 (regOne!10003 Regex!4745) (regTwo!10003 Regex!4745)) )
))
(declare-datatypes ((String!21867 0))(
  ( (String!21868 (value!107056 String)) )
))
(declare-datatypes ((IArray!12763 0))(
  ( (IArray!12764 (innerList!6439 List!19247)) )
))
(declare-datatypes ((Conc!6379 0))(
  ( (Node!6379 (left!15333 Conc!6379) (right!15663 Conc!6379) (csize!12988 Int) (cheight!6590 Int)) (Leaf!9308 (xs!9255 IArray!12763) (csize!12989 Int)) (Empty!6379) )
))
(declare-datatypes ((BalanceConc!12702 0))(
  ( (BalanceConc!12703 (c!284661 Conc!6379)) )
))
(declare-datatypes ((TokenValueInjection!6674 0))(
  ( (TokenValueInjection!6675 (toValue!4928 Int) (toChars!4787 Int)) )
))
(declare-datatypes ((Rule!6634 0))(
  ( (Rule!6635 (regex!3417 Regex!4745) (tag!3761 String!21867) (isSeparator!3417 Bool) (transformation!3417 TokenValueInjection!6674)) )
))
(declare-datatypes ((Token!6400 0))(
  ( (Token!6401 (value!107057 TokenValue!3507) (rule!5421 Rule!6634) (size!15228 Int) (originalCharacters!4231 List!19247)) )
))
(declare-datatypes ((tuple2!18822 0))(
  ( (tuple2!18823 (_1!10813 Token!6400) (_2!10813 List!19247)) )
))
(declare-fun lt!672748 () tuple2!18822)

(declare-fun order!11981 () Int)

(declare-fun order!11979 () Int)

(declare-fun lambda!69692 () Int)

(declare-fun dynLambda!9076 (Int Int) Int)

(declare-fun dynLambda!9077 (Int Int) Int)

(assert (=> b!1744798 (< (dynLambda!9076 order!11979 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748))))) (dynLambda!9077 order!11981 lambda!69692))))

(declare-fun order!11983 () Int)

(declare-fun dynLambda!9078 (Int Int) Int)

(assert (=> b!1744798 (< (dynLambda!9078 order!11983 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748))))) (dynLambda!9077 order!11981 lambda!69692))))

(declare-fun e!1116651 () Bool)

(declare-fun e!1116633 () Bool)

(declare-fun rule!422 () Rule!6634)

(declare-fun tp!496612 () Bool)

(declare-fun b!1744762 () Bool)

(declare-fun inv!24847 (String!21867) Bool)

(declare-fun inv!24852 (TokenValueInjection!6674) Bool)

(assert (=> b!1744762 (= e!1116651 (and tp!496612 (inv!24847 (tag!3761 rule!422)) (inv!24852 (transformation!3417 rule!422)) e!1116633))))

(declare-fun b!1744763 () Bool)

(declare-fun e!1116650 () Bool)

(declare-fun e!1116636 () Bool)

(assert (=> b!1744763 (= e!1116650 e!1116636)))

(declare-fun res!784519 () Bool)

(assert (=> b!1744763 (=> (not res!784519) (not e!1116636))))

(declare-datatypes ((Option!3858 0))(
  ( (None!3857) (Some!3857 (v!25294 tuple2!18822)) )
))
(declare-fun lt!672742 () Option!3858)

(declare-fun isDefined!3201 (Option!3858) Bool)

(assert (=> b!1744763 (= res!784519 (isDefined!3201 lt!672742))))

(declare-datatypes ((LexerInterface!3046 0))(
  ( (LexerInterfaceExt!3043 (__x!12317 Int)) (Lexer!3044) )
))
(declare-fun thiss!24550 () LexerInterface!3046)

(declare-fun lt!672750 () List!19247)

(declare-datatypes ((List!19248 0))(
  ( (Nil!19178) (Cons!19178 (h!24579 Rule!6634) (t!162189 List!19248)) )
))
(declare-fun rules!3447 () List!19248)

(declare-fun maxPrefix!1600 (LexerInterface!3046 List!19248 List!19247) Option!3858)

(assert (=> b!1744763 (= lt!672742 (maxPrefix!1600 thiss!24550 rules!3447 lt!672750))))

(declare-fun token!523 () Token!6400)

(declare-fun list!7762 (BalanceConc!12702) List!19247)

(declare-fun charsOf!2066 (Token!6400) BalanceConc!12702)

(assert (=> b!1744763 (= lt!672750 (list!7762 (charsOf!2066 token!523)))))

(declare-fun e!1116652 () Bool)

(declare-fun tp!496611 () Bool)

(declare-fun e!1116641 () Bool)

(declare-fun b!1744764 () Bool)

(declare-fun inv!21 (TokenValue!3507) Bool)

(assert (=> b!1744764 (= e!1116641 (and (inv!21 (value!107057 token!523)) e!1116652 tp!496611))))

(declare-fun b!1744765 () Bool)

(declare-fun tp!496615 () Bool)

(declare-fun e!1116649 () Bool)

(assert (=> b!1744765 (= e!1116652 (and tp!496615 (inv!24847 (tag!3761 (rule!5421 token!523))) (inv!24852 (transformation!3417 (rule!5421 token!523))) e!1116649))))

(declare-fun b!1744766 () Bool)

(declare-fun e!1116644 () Bool)

(declare-fun e!1116639 () Bool)

(assert (=> b!1744766 (= e!1116644 e!1116639)))

(declare-fun res!784524 () Bool)

(assert (=> b!1744766 (=> res!784524 e!1116639)))

(declare-fun lt!672744 () BalanceConc!12702)

(declare-fun lt!672743 () List!19247)

(declare-fun dynLambda!9079 (Int TokenValue!3507) BalanceConc!12702)

(declare-fun dynLambda!9080 (Int BalanceConc!12702) TokenValue!3507)

(assert (=> b!1744766 (= res!784524 (not (= (list!7762 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744))) lt!672743)))))

(declare-datatypes ((Unit!33249 0))(
  ( (Unit!33250) )
))
(declare-fun lt!672745 () Unit!33249)

(declare-fun lemmaSemiInverse!557 (TokenValueInjection!6674 BalanceConc!12702) Unit!33249)

(assert (=> b!1744766 (= lt!672745 (lemmaSemiInverse!557 (transformation!3417 (rule!5421 (_1!10813 lt!672748))) lt!672744))))

(declare-fun b!1744767 () Bool)

(declare-fun e!1116643 () Bool)

(assert (=> b!1744767 (= e!1116636 e!1116643)))

(declare-fun res!784525 () Bool)

(assert (=> b!1744767 (=> (not res!784525) (not e!1116643))))

(declare-fun lt!672737 () tuple2!18822)

(assert (=> b!1744767 (= res!784525 (= (_1!10813 lt!672737) token!523))))

(declare-fun get!5784 (Option!3858) tuple2!18822)

(assert (=> b!1744767 (= lt!672737 (get!5784 lt!672742))))

(declare-fun b!1744768 () Bool)

(declare-fun res!784528 () Bool)

(assert (=> b!1744768 (=> (not res!784528) (not e!1116650))))

(declare-fun rulesInvariant!2715 (LexerInterface!3046 List!19248) Bool)

(assert (=> b!1744768 (= res!784528 (rulesInvariant!2715 thiss!24550 rules!3447))))

(declare-fun b!1744769 () Bool)

(declare-fun e!1116638 () Bool)

(declare-fun e!1116634 () Bool)

(declare-fun tp!496614 () Bool)

(assert (=> b!1744769 (= e!1116638 (and e!1116634 tp!496614))))

(declare-fun b!1744771 () Bool)

(declare-fun res!784514 () Bool)

(declare-fun e!1116647 () Bool)

(assert (=> b!1744771 (=> res!784514 e!1116647)))

(declare-fun suffix!1421 () List!19247)

(declare-fun prefixMatch!630 (Regex!4745 List!19247) Bool)

(declare-fun rulesRegex!775 (LexerInterface!3046 List!19248) Regex!4745)

(declare-fun ++!5242 (List!19247 List!19247) List!19247)

(declare-fun head!4006 (List!19247) C!9664)

(assert (=> b!1744771 (= res!784514 (prefixMatch!630 (rulesRegex!775 thiss!24550 rules!3447) (++!5242 lt!672750 (Cons!19177 (head!4006 suffix!1421) Nil!19177))))))

(assert (=> b!1744772 (= e!1116649 (and tp!496610 tp!496616))))

(declare-fun b!1744773 () Bool)

(declare-fun res!784515 () Bool)

(assert (=> b!1744773 (=> (not res!784515) (not e!1116650))))

(declare-fun isEmpty!12077 (List!19248) Bool)

(assert (=> b!1744773 (= res!784515 (not (isEmpty!12077 rules!3447)))))

(declare-fun b!1744774 () Bool)

(declare-fun res!784521 () Bool)

(declare-fun e!1116642 () Bool)

(assert (=> b!1744774 (=> res!784521 e!1116642)))

(declare-fun matchR!2219 (Regex!4745 List!19247) Bool)

(assert (=> b!1744774 (= res!784521 (not (matchR!2219 (regex!3417 (rule!5421 (_1!10813 lt!672748))) lt!672743)))))

(declare-fun b!1744775 () Bool)

(assert (=> b!1744775 (= e!1116639 (= lt!672744 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (value!107057 (_1!10813 lt!672748)))))))

(declare-fun b!1744776 () Bool)

(declare-fun e!1116645 () Bool)

(declare-fun lt!672734 () Rule!6634)

(assert (=> b!1744776 (= e!1116645 (= (rule!5421 (_1!10813 lt!672748)) lt!672734))))

(assert (=> b!1744777 (= e!1116642 e!1116644)))

(declare-fun res!784512 () Bool)

(assert (=> b!1744777 (=> res!784512 e!1116644)))

(declare-fun Forall!786 (Int) Bool)

(assert (=> b!1744777 (= res!784512 (not (Forall!786 lambda!69692)))))

(declare-fun lt!672741 () Unit!33249)

(declare-fun lemmaInv!618 (TokenValueInjection!6674) Unit!33249)

(assert (=> b!1744777 (= lt!672741 (lemmaInv!618 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))))))

(declare-fun e!1116653 () Bool)

(assert (=> b!1744778 (= e!1116653 (and tp!496619 tp!496620))))

(declare-fun b!1744779 () Bool)

(declare-fun res!784522 () Bool)

(assert (=> b!1744779 (=> res!784522 e!1116647)))

(declare-fun isEmpty!12078 (List!19247) Bool)

(assert (=> b!1744779 (= res!784522 (isEmpty!12078 suffix!1421))))

(declare-fun b!1744780 () Bool)

(declare-fun res!784518 () Bool)

(assert (=> b!1744780 (=> (not res!784518) (not e!1116643))))

(assert (=> b!1744780 (= res!784518 (= (rule!5421 token!523) rule!422))))

(declare-fun b!1744781 () Bool)

(assert (=> b!1744781 (= e!1116647 e!1116642)))

(declare-fun res!784516 () Bool)

(assert (=> b!1744781 (=> res!784516 e!1116642)))

(declare-fun lt!672747 () List!19247)

(declare-fun isPrefix!1658 (List!19247 List!19247) Bool)

(assert (=> b!1744781 (= res!784516 (not (isPrefix!1658 lt!672743 lt!672747)))))

(assert (=> b!1744781 (isPrefix!1658 lt!672743 (++!5242 lt!672743 (_2!10813 lt!672748)))))

(declare-fun lt!672738 () Unit!33249)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1168 (List!19247 List!19247) Unit!33249)

(assert (=> b!1744781 (= lt!672738 (lemmaConcatTwoListThenFirstIsPrefix!1168 lt!672743 (_2!10813 lt!672748)))))

(assert (=> b!1744781 (= lt!672743 (list!7762 lt!672744))))

(assert (=> b!1744781 (= lt!672744 (charsOf!2066 (_1!10813 lt!672748)))))

(declare-fun e!1116635 () Bool)

(assert (=> b!1744781 e!1116635))

(declare-fun res!784520 () Bool)

(assert (=> b!1744781 (=> (not res!784520) (not e!1116635))))

(declare-datatypes ((Option!3859 0))(
  ( (None!3858) (Some!3858 (v!25295 Rule!6634)) )
))
(declare-fun lt!672749 () Option!3859)

(declare-fun isDefined!3202 (Option!3859) Bool)

(assert (=> b!1744781 (= res!784520 (isDefined!3202 lt!672749))))

(declare-fun getRuleFromTag!467 (LexerInterface!3046 List!19248 String!21867) Option!3859)

(assert (=> b!1744781 (= lt!672749 (getRuleFromTag!467 thiss!24550 rules!3447 (tag!3761 (rule!5421 (_1!10813 lt!672748)))))))

(declare-fun lt!672739 () Unit!33249)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!467 (LexerInterface!3046 List!19248 List!19247 Token!6400) Unit!33249)

(assert (=> b!1744781 (= lt!672739 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!467 thiss!24550 rules!3447 lt!672747 (_1!10813 lt!672748)))))

(declare-fun lt!672740 () Option!3858)

(assert (=> b!1744781 (= lt!672748 (get!5784 lt!672740))))

(declare-fun lt!672746 () Unit!33249)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!570 (LexerInterface!3046 List!19248 List!19247 List!19247) Unit!33249)

(assert (=> b!1744781 (= lt!672746 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!570 thiss!24550 rules!3447 lt!672750 suffix!1421))))

(assert (=> b!1744781 (= lt!672740 (maxPrefix!1600 thiss!24550 rules!3447 lt!672747))))

(assert (=> b!1744781 (isPrefix!1658 lt!672750 lt!672747)))

(declare-fun lt!672736 () Unit!33249)

(assert (=> b!1744781 (= lt!672736 (lemmaConcatTwoListThenFirstIsPrefix!1168 lt!672750 suffix!1421))))

(assert (=> b!1744781 (= lt!672747 (++!5242 lt!672750 suffix!1421))))

(declare-fun b!1744782 () Bool)

(assert (=> b!1744782 (= e!1116643 (not e!1116647))))

(declare-fun res!784523 () Bool)

(assert (=> b!1744782 (=> res!784523 e!1116647)))

(assert (=> b!1744782 (= res!784523 (not (matchR!2219 (regex!3417 rule!422) lt!672750)))))

(declare-fun ruleValid!916 (LexerInterface!3046 Rule!6634) Bool)

(assert (=> b!1744782 (ruleValid!916 thiss!24550 rule!422)))

(declare-fun lt!672735 () Unit!33249)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!440 (LexerInterface!3046 Rule!6634 List!19248) Unit!33249)

(assert (=> b!1744782 (= lt!672735 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!440 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1744783 () Bool)

(declare-fun tp!496613 () Bool)

(assert (=> b!1744783 (= e!1116634 (and tp!496613 (inv!24847 (tag!3761 (h!24579 rules!3447))) (inv!24852 (transformation!3417 (h!24579 rules!3447))) e!1116653))))

(declare-fun b!1744770 () Bool)

(declare-fun res!784526 () Bool)

(assert (=> b!1744770 (=> (not res!784526) (not e!1116643))))

(assert (=> b!1744770 (= res!784526 (isEmpty!12078 (_2!10813 lt!672737)))))

(declare-fun res!784527 () Bool)

(assert (=> start!171898 (=> (not res!784527) (not e!1116650))))

(get-info :version)

(assert (=> start!171898 (= res!784527 ((_ is Lexer!3044) thiss!24550))))

(assert (=> start!171898 e!1116650))

(declare-fun e!1116640 () Bool)

(assert (=> start!171898 e!1116640))

(assert (=> start!171898 e!1116651))

(assert (=> start!171898 true))

(declare-fun inv!24853 (Token!6400) Bool)

(assert (=> start!171898 (and (inv!24853 token!523) e!1116641)))

(assert (=> start!171898 e!1116638))

(declare-fun b!1744784 () Bool)

(declare-fun res!784513 () Bool)

(assert (=> b!1744784 (=> (not res!784513) (not e!1116650))))

(declare-fun contains!3441 (List!19248 Rule!6634) Bool)

(assert (=> b!1744784 (= res!784513 (contains!3441 rules!3447 rule!422))))

(declare-fun b!1744785 () Bool)

(declare-fun tp_is_empty!7733 () Bool)

(declare-fun tp!496618 () Bool)

(assert (=> b!1744785 (= e!1116640 (and tp_is_empty!7733 tp!496618))))

(assert (=> b!1744786 (= e!1116633 (and tp!496609 tp!496617))))

(declare-fun b!1744787 () Bool)

(assert (=> b!1744787 (= e!1116635 e!1116645)))

(declare-fun res!784517 () Bool)

(assert (=> b!1744787 (=> (not res!784517) (not e!1116645))))

(assert (=> b!1744787 (= res!784517 (matchR!2219 (regex!3417 lt!672734) (list!7762 (charsOf!2066 (_1!10813 lt!672748)))))))

(declare-fun get!5785 (Option!3859) Rule!6634)

(assert (=> b!1744787 (= lt!672734 (get!5785 lt!672749))))

(assert (= (and start!171898 res!784527) b!1744773))

(assert (= (and b!1744773 res!784515) b!1744768))

(assert (= (and b!1744768 res!784528) b!1744784))

(assert (= (and b!1744784 res!784513) b!1744763))

(assert (= (and b!1744763 res!784519) b!1744767))

(assert (= (and b!1744767 res!784525) b!1744770))

(assert (= (and b!1744770 res!784526) b!1744780))

(assert (= (and b!1744780 res!784518) b!1744782))

(assert (= (and b!1744782 (not res!784523)) b!1744779))

(assert (= (and b!1744779 (not res!784522)) b!1744771))

(assert (= (and b!1744771 (not res!784514)) b!1744781))

(assert (= (and b!1744781 res!784520) b!1744787))

(assert (= (and b!1744787 res!784517) b!1744776))

(assert (= (and b!1744781 (not res!784516)) b!1744774))

(assert (= (and b!1744774 (not res!784521)) b!1744777))

(assert (= (and b!1744777 (not res!784512)) b!1744766))

(assert (= (and b!1744766 (not res!784524)) b!1744775))

(assert (= (and start!171898 ((_ is Cons!19177) suffix!1421)) b!1744785))

(assert (= b!1744762 b!1744786))

(assert (= start!171898 b!1744762))

(assert (= b!1744765 b!1744772))

(assert (= b!1744764 b!1744765))

(assert (= start!171898 b!1744764))

(assert (= b!1744783 b!1744778))

(assert (= b!1744769 b!1744783))

(assert (= (and start!171898 ((_ is Cons!19178) rules!3447)) b!1744769))

(declare-fun b_lambda!55899 () Bool)

(assert (=> (not b_lambda!55899) (not b!1744766)))

(declare-fun tb!104357 () Bool)

(declare-fun t!162170 () Bool)

(assert (=> (and b!1744786 (= (toChars!4787 (transformation!3417 rule!422)) (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748))))) t!162170) tb!104357))

(declare-fun tp!496623 () Bool)

(declare-fun e!1116666 () Bool)

(declare-fun b!1744803 () Bool)

(declare-fun inv!24854 (Conc!6379) Bool)

(assert (=> b!1744803 (= e!1116666 (and (inv!24854 (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744)))) tp!496623))))

(declare-fun result!125528 () Bool)

(declare-fun inv!24855 (BalanceConc!12702) Bool)

(assert (=> tb!104357 (= result!125528 (and (inv!24855 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744))) e!1116666))))

(assert (= tb!104357 b!1744803))

(declare-fun m!2156533 () Bool)

(assert (=> b!1744803 m!2156533))

(declare-fun m!2156535 () Bool)

(assert (=> tb!104357 m!2156535))

(assert (=> b!1744766 t!162170))

(declare-fun b_and!129823 () Bool)

(assert (= b_and!129813 (and (=> t!162170 result!125528) b_and!129823)))

(declare-fun tb!104359 () Bool)

(declare-fun t!162172 () Bool)

(assert (=> (and b!1744772 (= (toChars!4787 (transformation!3417 (rule!5421 token!523))) (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748))))) t!162172) tb!104359))

(declare-fun result!125532 () Bool)

(assert (= result!125532 result!125528))

(assert (=> b!1744766 t!162172))

(declare-fun b_and!129825 () Bool)

(assert (= b_and!129817 (and (=> t!162172 result!125532) b_and!129825)))

(declare-fun tb!104361 () Bool)

(declare-fun t!162174 () Bool)

(assert (=> (and b!1744778 (= (toChars!4787 (transformation!3417 (h!24579 rules!3447))) (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748))))) t!162174) tb!104361))

(declare-fun result!125534 () Bool)

(assert (= result!125534 result!125528))

(assert (=> b!1744766 t!162174))

(declare-fun b_and!129827 () Bool)

(assert (= b_and!129821 (and (=> t!162174 result!125534) b_and!129827)))

(declare-fun b_lambda!55901 () Bool)

(assert (=> (not b_lambda!55901) (not b!1744766)))

(declare-fun tb!104363 () Bool)

(declare-fun t!162176 () Bool)

(assert (=> (and b!1744786 (= (toValue!4928 (transformation!3417 rule!422)) (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748))))) t!162176) tb!104363))

(declare-fun result!125536 () Bool)

(assert (=> tb!104363 (= result!125536 (inv!21 (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744)))))

(declare-fun m!2156537 () Bool)

(assert (=> tb!104363 m!2156537))

(assert (=> b!1744766 t!162176))

(declare-fun b_and!129829 () Bool)

(assert (= b_and!129811 (and (=> t!162176 result!125536) b_and!129829)))

(declare-fun tb!104365 () Bool)

(declare-fun t!162178 () Bool)

(assert (=> (and b!1744772 (= (toValue!4928 (transformation!3417 (rule!5421 token!523))) (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748))))) t!162178) tb!104365))

(declare-fun result!125540 () Bool)

(assert (= result!125540 result!125536))

(assert (=> b!1744766 t!162178))

(declare-fun b_and!129831 () Bool)

(assert (= b_and!129815 (and (=> t!162178 result!125540) b_and!129831)))

(declare-fun tb!104367 () Bool)

(declare-fun t!162180 () Bool)

(assert (=> (and b!1744778 (= (toValue!4928 (transformation!3417 (h!24579 rules!3447))) (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748))))) t!162180) tb!104367))

(declare-fun result!125542 () Bool)

(assert (= result!125542 result!125536))

(assert (=> b!1744766 t!162180))

(declare-fun b_and!129833 () Bool)

(assert (= b_and!129819 (and (=> t!162180 result!125542) b_and!129833)))

(declare-fun b_lambda!55903 () Bool)

(assert (=> (not b_lambda!55903) (not b!1744775)))

(declare-fun t!162182 () Bool)

(declare-fun tb!104369 () Bool)

(assert (=> (and b!1744786 (= (toChars!4787 (transformation!3417 rule!422)) (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748))))) t!162182) tb!104369))

(declare-fun b!1744806 () Bool)

(declare-fun e!1116670 () Bool)

(declare-fun tp!496624 () Bool)

(assert (=> b!1744806 (= e!1116670 (and (inv!24854 (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (value!107057 (_1!10813 lt!672748))))) tp!496624))))

(declare-fun result!125544 () Bool)

(assert (=> tb!104369 (= result!125544 (and (inv!24855 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (value!107057 (_1!10813 lt!672748)))) e!1116670))))

(assert (= tb!104369 b!1744806))

(declare-fun m!2156539 () Bool)

(assert (=> b!1744806 m!2156539))

(declare-fun m!2156541 () Bool)

(assert (=> tb!104369 m!2156541))

(assert (=> b!1744775 t!162182))

(declare-fun b_and!129835 () Bool)

(assert (= b_and!129823 (and (=> t!162182 result!125544) b_and!129835)))

(declare-fun t!162184 () Bool)

(declare-fun tb!104371 () Bool)

(assert (=> (and b!1744772 (= (toChars!4787 (transformation!3417 (rule!5421 token!523))) (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748))))) t!162184) tb!104371))

(declare-fun result!125546 () Bool)

(assert (= result!125546 result!125544))

(assert (=> b!1744775 t!162184))

(declare-fun b_and!129837 () Bool)

(assert (= b_and!129825 (and (=> t!162184 result!125546) b_and!129837)))

(declare-fun tb!104373 () Bool)

(declare-fun t!162186 () Bool)

(assert (=> (and b!1744778 (= (toChars!4787 (transformation!3417 (h!24579 rules!3447))) (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748))))) t!162186) tb!104373))

(declare-fun result!125548 () Bool)

(assert (= result!125548 result!125544))

(assert (=> b!1744775 t!162186))

(declare-fun b_and!129839 () Bool)

(assert (= b_and!129827 (and (=> t!162186 result!125548) b_and!129839)))

(declare-fun m!2156543 () Bool)

(assert (=> b!1744766 m!2156543))

(assert (=> b!1744766 m!2156543))

(declare-fun m!2156545 () Bool)

(assert (=> b!1744766 m!2156545))

(assert (=> b!1744766 m!2156545))

(declare-fun m!2156547 () Bool)

(assert (=> b!1744766 m!2156547))

(declare-fun m!2156549 () Bool)

(assert (=> b!1744766 m!2156549))

(declare-fun m!2156551 () Bool)

(assert (=> b!1744763 m!2156551))

(declare-fun m!2156553 () Bool)

(assert (=> b!1744763 m!2156553))

(declare-fun m!2156555 () Bool)

(assert (=> b!1744763 m!2156555))

(assert (=> b!1744763 m!2156555))

(declare-fun m!2156557 () Bool)

(assert (=> b!1744763 m!2156557))

(declare-fun m!2156559 () Bool)

(assert (=> b!1744781 m!2156559))

(declare-fun m!2156561 () Bool)

(assert (=> b!1744781 m!2156561))

(declare-fun m!2156563 () Bool)

(assert (=> b!1744781 m!2156563))

(declare-fun m!2156565 () Bool)

(assert (=> b!1744781 m!2156565))

(declare-fun m!2156567 () Bool)

(assert (=> b!1744781 m!2156567))

(declare-fun m!2156569 () Bool)

(assert (=> b!1744781 m!2156569))

(declare-fun m!2156571 () Bool)

(assert (=> b!1744781 m!2156571))

(declare-fun m!2156573 () Bool)

(assert (=> b!1744781 m!2156573))

(declare-fun m!2156575 () Bool)

(assert (=> b!1744781 m!2156575))

(declare-fun m!2156577 () Bool)

(assert (=> b!1744781 m!2156577))

(declare-fun m!2156579 () Bool)

(assert (=> b!1744781 m!2156579))

(declare-fun m!2156581 () Bool)

(assert (=> b!1744781 m!2156581))

(declare-fun m!2156583 () Bool)

(assert (=> b!1744781 m!2156583))

(declare-fun m!2156585 () Bool)

(assert (=> b!1744781 m!2156585))

(assert (=> b!1744781 m!2156563))

(declare-fun m!2156587 () Bool)

(assert (=> b!1744781 m!2156587))

(declare-fun m!2156589 () Bool)

(assert (=> b!1744771 m!2156589))

(declare-fun m!2156591 () Bool)

(assert (=> b!1744771 m!2156591))

(declare-fun m!2156593 () Bool)

(assert (=> b!1744771 m!2156593))

(assert (=> b!1744771 m!2156589))

(assert (=> b!1744771 m!2156593))

(declare-fun m!2156595 () Bool)

(assert (=> b!1744771 m!2156595))

(declare-fun m!2156597 () Bool)

(assert (=> b!1744783 m!2156597))

(declare-fun m!2156599 () Bool)

(assert (=> b!1744783 m!2156599))

(declare-fun m!2156601 () Bool)

(assert (=> b!1744773 m!2156601))

(declare-fun m!2156603 () Bool)

(assert (=> b!1744764 m!2156603))

(declare-fun m!2156605 () Bool)

(assert (=> b!1744767 m!2156605))

(declare-fun m!2156607 () Bool)

(assert (=> b!1744782 m!2156607))

(declare-fun m!2156609 () Bool)

(assert (=> b!1744782 m!2156609))

(declare-fun m!2156611 () Bool)

(assert (=> b!1744782 m!2156611))

(declare-fun m!2156613 () Bool)

(assert (=> b!1744765 m!2156613))

(declare-fun m!2156615 () Bool)

(assert (=> b!1744765 m!2156615))

(declare-fun m!2156617 () Bool)

(assert (=> start!171898 m!2156617))

(declare-fun m!2156619 () Bool)

(assert (=> b!1744762 m!2156619))

(declare-fun m!2156621 () Bool)

(assert (=> b!1744762 m!2156621))

(assert (=> b!1744787 m!2156585))

(assert (=> b!1744787 m!2156585))

(declare-fun m!2156623 () Bool)

(assert (=> b!1744787 m!2156623))

(assert (=> b!1744787 m!2156623))

(declare-fun m!2156625 () Bool)

(assert (=> b!1744787 m!2156625))

(declare-fun m!2156627 () Bool)

(assert (=> b!1744787 m!2156627))

(declare-fun m!2156629 () Bool)

(assert (=> b!1744774 m!2156629))

(declare-fun m!2156631 () Bool)

(assert (=> b!1744768 m!2156631))

(declare-fun m!2156633 () Bool)

(assert (=> b!1744784 m!2156633))

(declare-fun m!2156635 () Bool)

(assert (=> b!1744770 m!2156635))

(declare-fun m!2156637 () Bool)

(assert (=> b!1744777 m!2156637))

(declare-fun m!2156639 () Bool)

(assert (=> b!1744777 m!2156639))

(declare-fun m!2156641 () Bool)

(assert (=> b!1744775 m!2156641))

(declare-fun m!2156643 () Bool)

(assert (=> b!1744779 m!2156643))

(check-sat (not start!171898) b_and!129833 (not b!1744763) (not b!1744769) (not b!1744770) (not b_next!48725) (not b_lambda!55899) (not b_lambda!55901) (not b!1744768) (not b!1744765) (not tb!104363) b_and!129837 (not b!1744781) (not b!1744777) b_and!129839 (not b!1744773) (not b!1744771) (not b_lambda!55903) (not b!1744785) (not b!1744783) (not b!1744762) (not b_next!48717) b_and!129829 b_and!129835 (not b!1744803) (not b!1744767) (not b_next!48719) (not b!1744782) (not b_next!48715) (not b_next!48723) (not b!1744764) tp_is_empty!7733 (not b!1744787) (not b!1744806) (not b_next!48721) (not b!1744784) (not tb!104357) (not b!1744779) b_and!129831 (not b!1744766) (not b!1744774) (not tb!104369))
(check-sat b_and!129837 b_and!129833 b_and!129839 b_and!129835 (not b_next!48719) (not b_next!48721) (not b_next!48725) b_and!129831 (not b_next!48717) b_and!129829 (not b_next!48715) (not b_next!48723))
(get-model)

(declare-fun d!533205 () Bool)

(assert (=> d!533205 (= (inv!24847 (tag!3761 (h!24579 rules!3447))) (= (mod (str.len (value!107056 (tag!3761 (h!24579 rules!3447)))) 2) 0))))

(assert (=> b!1744783 d!533205))

(declare-fun d!533209 () Bool)

(declare-fun res!784588 () Bool)

(declare-fun e!1116734 () Bool)

(assert (=> d!533209 (=> (not res!784588) (not e!1116734))))

(declare-fun semiInverseModEq!1353 (Int Int) Bool)

(assert (=> d!533209 (= res!784588 (semiInverseModEq!1353 (toChars!4787 (transformation!3417 (h!24579 rules!3447))) (toValue!4928 (transformation!3417 (h!24579 rules!3447)))))))

(assert (=> d!533209 (= (inv!24852 (transformation!3417 (h!24579 rules!3447))) e!1116734)))

(declare-fun b!1744918 () Bool)

(declare-fun equivClasses!1294 (Int Int) Bool)

(assert (=> b!1744918 (= e!1116734 (equivClasses!1294 (toChars!4787 (transformation!3417 (h!24579 rules!3447))) (toValue!4928 (transformation!3417 (h!24579 rules!3447)))))))

(assert (= (and d!533209 res!784588) b!1744918))

(declare-fun m!2156743 () Bool)

(assert (=> d!533209 m!2156743))

(declare-fun m!2156745 () Bool)

(assert (=> b!1744918 m!2156745))

(assert (=> b!1744783 d!533209))

(declare-fun b!1744959 () Bool)

(declare-fun res!784619 () Bool)

(declare-fun e!1116763 () Bool)

(assert (=> b!1744959 (=> res!784619 e!1116763)))

(declare-fun tail!2607 (List!19247) List!19247)

(assert (=> b!1744959 (= res!784619 (not (isEmpty!12078 (tail!2607 lt!672750))))))

(declare-fun b!1744960 () Bool)

(declare-fun res!784620 () Bool)

(declare-fun e!1116761 () Bool)

(assert (=> b!1744960 (=> (not res!784620) (not e!1116761))))

(assert (=> b!1744960 (= res!784620 (isEmpty!12078 (tail!2607 lt!672750)))))

(declare-fun b!1744961 () Bool)

(declare-fun e!1116760 () Bool)

(declare-fun lt!672778 () Bool)

(assert (=> b!1744961 (= e!1116760 (not lt!672778))))

(declare-fun b!1744962 () Bool)

(declare-fun e!1116762 () Bool)

(assert (=> b!1744962 (= e!1116762 e!1116763)))

(declare-fun res!784617 () Bool)

(assert (=> b!1744962 (=> res!784617 e!1116763)))

(declare-fun call!110222 () Bool)

(assert (=> b!1744962 (= res!784617 call!110222)))

(declare-fun b!1744963 () Bool)

(declare-fun e!1116759 () Bool)

(assert (=> b!1744963 (= e!1116759 (= lt!672778 call!110222))))

(declare-fun b!1744964 () Bool)

(declare-fun e!1116764 () Bool)

(declare-fun derivativeStep!1208 (Regex!4745 C!9664) Regex!4745)

(assert (=> b!1744964 (= e!1116764 (matchR!2219 (derivativeStep!1208 (regex!3417 rule!422) (head!4006 lt!672750)) (tail!2607 lt!672750)))))

(declare-fun b!1744965 () Bool)

(declare-fun res!784621 () Bool)

(assert (=> b!1744965 (=> (not res!784621) (not e!1116761))))

(assert (=> b!1744965 (= res!784621 (not call!110222))))

(declare-fun b!1744966 () Bool)

(assert (=> b!1744966 (= e!1116763 (not (= (head!4006 lt!672750) (c!284660 (regex!3417 rule!422)))))))

(declare-fun d!533213 () Bool)

(assert (=> d!533213 e!1116759))

(declare-fun c!284696 () Bool)

(assert (=> d!533213 (= c!284696 ((_ is EmptyExpr!4745) (regex!3417 rule!422)))))

(assert (=> d!533213 (= lt!672778 e!1116764)))

(declare-fun c!284694 () Bool)

(assert (=> d!533213 (= c!284694 (isEmpty!12078 lt!672750))))

(declare-fun validRegex!1913 (Regex!4745) Bool)

(assert (=> d!533213 (validRegex!1913 (regex!3417 rule!422))))

(assert (=> d!533213 (= (matchR!2219 (regex!3417 rule!422) lt!672750) lt!672778)))

(declare-fun b!1744967 () Bool)

(declare-fun e!1116758 () Bool)

(assert (=> b!1744967 (= e!1116758 e!1116762)))

(declare-fun res!784624 () Bool)

(assert (=> b!1744967 (=> (not res!784624) (not e!1116762))))

(assert (=> b!1744967 (= res!784624 (not lt!672778))))

(declare-fun b!1744968 () Bool)

(assert (=> b!1744968 (= e!1116761 (= (head!4006 lt!672750) (c!284660 (regex!3417 rule!422))))))

(declare-fun b!1744969 () Bool)

(assert (=> b!1744969 (= e!1116759 e!1116760)))

(declare-fun c!284695 () Bool)

(assert (=> b!1744969 (= c!284695 ((_ is EmptyLang!4745) (regex!3417 rule!422)))))

(declare-fun b!1744970 () Bool)

(declare-fun res!784622 () Bool)

(assert (=> b!1744970 (=> res!784622 e!1116758)))

(assert (=> b!1744970 (= res!784622 (not ((_ is ElementMatch!4745) (regex!3417 rule!422))))))

(assert (=> b!1744970 (= e!1116760 e!1116758)))

(declare-fun bm!110217 () Bool)

(assert (=> bm!110217 (= call!110222 (isEmpty!12078 lt!672750))))

(declare-fun b!1744971 () Bool)

(declare-fun res!784618 () Bool)

(assert (=> b!1744971 (=> res!784618 e!1116758)))

(assert (=> b!1744971 (= res!784618 e!1116761)))

(declare-fun res!784623 () Bool)

(assert (=> b!1744971 (=> (not res!784623) (not e!1116761))))

(assert (=> b!1744971 (= res!784623 lt!672778)))

(declare-fun b!1744972 () Bool)

(declare-fun nullable!1439 (Regex!4745) Bool)

(assert (=> b!1744972 (= e!1116764 (nullable!1439 (regex!3417 rule!422)))))

(assert (= (and d!533213 c!284694) b!1744972))

(assert (= (and d!533213 (not c!284694)) b!1744964))

(assert (= (and d!533213 c!284696) b!1744963))

(assert (= (and d!533213 (not c!284696)) b!1744969))

(assert (= (and b!1744969 c!284695) b!1744961))

(assert (= (and b!1744969 (not c!284695)) b!1744970))

(assert (= (and b!1744970 (not res!784622)) b!1744971))

(assert (= (and b!1744971 res!784623) b!1744965))

(assert (= (and b!1744965 res!784621) b!1744960))

(assert (= (and b!1744960 res!784620) b!1744968))

(assert (= (and b!1744971 (not res!784618)) b!1744967))

(assert (= (and b!1744967 res!784624) b!1744962))

(assert (= (and b!1744962 (not res!784617)) b!1744959))

(assert (= (and b!1744959 (not res!784619)) b!1744966))

(assert (= (or b!1744963 b!1744962 b!1744965) bm!110217))

(declare-fun m!2156761 () Bool)

(assert (=> b!1744972 m!2156761))

(declare-fun m!2156763 () Bool)

(assert (=> bm!110217 m!2156763))

(declare-fun m!2156765 () Bool)

(assert (=> b!1744960 m!2156765))

(assert (=> b!1744960 m!2156765))

(declare-fun m!2156767 () Bool)

(assert (=> b!1744960 m!2156767))

(declare-fun m!2156769 () Bool)

(assert (=> b!1744968 m!2156769))

(assert (=> b!1744964 m!2156769))

(assert (=> b!1744964 m!2156769))

(declare-fun m!2156771 () Bool)

(assert (=> b!1744964 m!2156771))

(assert (=> b!1744964 m!2156765))

(assert (=> b!1744964 m!2156771))

(assert (=> b!1744964 m!2156765))

(declare-fun m!2156773 () Bool)

(assert (=> b!1744964 m!2156773))

(assert (=> b!1744966 m!2156769))

(assert (=> b!1744959 m!2156765))

(assert (=> b!1744959 m!2156765))

(assert (=> b!1744959 m!2156767))

(assert (=> d!533213 m!2156763))

(declare-fun m!2156775 () Bool)

(assert (=> d!533213 m!2156775))

(assert (=> b!1744782 d!533213))

(declare-fun d!533217 () Bool)

(declare-fun res!784629 () Bool)

(declare-fun e!1116767 () Bool)

(assert (=> d!533217 (=> (not res!784629) (not e!1116767))))

(assert (=> d!533217 (= res!784629 (validRegex!1913 (regex!3417 rule!422)))))

(assert (=> d!533217 (= (ruleValid!916 thiss!24550 rule!422) e!1116767)))

(declare-fun b!1744977 () Bool)

(declare-fun res!784630 () Bool)

(assert (=> b!1744977 (=> (not res!784630) (not e!1116767))))

(assert (=> b!1744977 (= res!784630 (not (nullable!1439 (regex!3417 rule!422))))))

(declare-fun b!1744978 () Bool)

(assert (=> b!1744978 (= e!1116767 (not (= (tag!3761 rule!422) (String!21868 ""))))))

(assert (= (and d!533217 res!784629) b!1744977))

(assert (= (and b!1744977 res!784630) b!1744978))

(assert (=> d!533217 m!2156775))

(assert (=> b!1744977 m!2156761))

(assert (=> b!1744782 d!533217))

(declare-fun d!533219 () Bool)

(assert (=> d!533219 (ruleValid!916 thiss!24550 rule!422)))

(declare-fun lt!672781 () Unit!33249)

(declare-fun choose!10753 (LexerInterface!3046 Rule!6634 List!19248) Unit!33249)

(assert (=> d!533219 (= lt!672781 (choose!10753 thiss!24550 rule!422 rules!3447))))

(assert (=> d!533219 (contains!3441 rules!3447 rule!422)))

(assert (=> d!533219 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!440 thiss!24550 rule!422 rules!3447) lt!672781)))

(declare-fun bs!403210 () Bool)

(assert (= bs!403210 d!533219))

(assert (=> bs!403210 m!2156609))

(declare-fun m!2156777 () Bool)

(assert (=> bs!403210 m!2156777))

(assert (=> bs!403210 m!2156633))

(assert (=> b!1744782 d!533219))

(declare-fun d!533221 () Bool)

(declare-fun isBalanced!1991 (Conc!6379) Bool)

(assert (=> d!533221 (= (inv!24855 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (value!107057 (_1!10813 lt!672748)))) (isBalanced!1991 (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (value!107057 (_1!10813 lt!672748))))))))

(declare-fun bs!403211 () Bool)

(assert (= bs!403211 d!533221))

(declare-fun m!2156779 () Bool)

(assert (=> bs!403211 m!2156779))

(assert (=> tb!104369 d!533221))

(declare-fun d!533223 () Bool)

(assert (=> d!533223 (isPrefix!1658 lt!672743 (++!5242 lt!672743 (_2!10813 lt!672748)))))

(declare-fun lt!672784 () Unit!33249)

(declare-fun choose!10754 (List!19247 List!19247) Unit!33249)

(assert (=> d!533223 (= lt!672784 (choose!10754 lt!672743 (_2!10813 lt!672748)))))

(assert (=> d!533223 (= (lemmaConcatTwoListThenFirstIsPrefix!1168 lt!672743 (_2!10813 lt!672748)) lt!672784)))

(declare-fun bs!403212 () Bool)

(assert (= bs!403212 d!533223))

(assert (=> bs!403212 m!2156563))

(assert (=> bs!403212 m!2156563))

(assert (=> bs!403212 m!2156565))

(declare-fun m!2156781 () Bool)

(assert (=> bs!403212 m!2156781))

(assert (=> b!1744781 d!533223))

(declare-fun b!1744988 () Bool)

(declare-fun res!784642 () Bool)

(declare-fun e!1116774 () Bool)

(assert (=> b!1744988 (=> (not res!784642) (not e!1116774))))

(assert (=> b!1744988 (= res!784642 (= (head!4006 lt!672743) (head!4006 (++!5242 lt!672743 (_2!10813 lt!672748)))))))

(declare-fun d!533225 () Bool)

(declare-fun e!1116775 () Bool)

(assert (=> d!533225 e!1116775))

(declare-fun res!784641 () Bool)

(assert (=> d!533225 (=> res!784641 e!1116775)))

(declare-fun lt!672787 () Bool)

(assert (=> d!533225 (= res!784641 (not lt!672787))))

(declare-fun e!1116776 () Bool)

(assert (=> d!533225 (= lt!672787 e!1116776)))

(declare-fun res!784640 () Bool)

(assert (=> d!533225 (=> res!784640 e!1116776)))

(assert (=> d!533225 (= res!784640 ((_ is Nil!19177) lt!672743))))

(assert (=> d!533225 (= (isPrefix!1658 lt!672743 (++!5242 lt!672743 (_2!10813 lt!672748))) lt!672787)))

(declare-fun b!1744989 () Bool)

(assert (=> b!1744989 (= e!1116774 (isPrefix!1658 (tail!2607 lt!672743) (tail!2607 (++!5242 lt!672743 (_2!10813 lt!672748)))))))

(declare-fun b!1744987 () Bool)

(assert (=> b!1744987 (= e!1116776 e!1116774)))

(declare-fun res!784639 () Bool)

(assert (=> b!1744987 (=> (not res!784639) (not e!1116774))))

(assert (=> b!1744987 (= res!784639 (not ((_ is Nil!19177) (++!5242 lt!672743 (_2!10813 lt!672748)))))))

(declare-fun b!1744990 () Bool)

(declare-fun size!15230 (List!19247) Int)

(assert (=> b!1744990 (= e!1116775 (>= (size!15230 (++!5242 lt!672743 (_2!10813 lt!672748))) (size!15230 lt!672743)))))

(assert (= (and d!533225 (not res!784640)) b!1744987))

(assert (= (and b!1744987 res!784639) b!1744988))

(assert (= (and b!1744988 res!784642) b!1744989))

(assert (= (and d!533225 (not res!784641)) b!1744990))

(declare-fun m!2156783 () Bool)

(assert (=> b!1744988 m!2156783))

(assert (=> b!1744988 m!2156563))

(declare-fun m!2156785 () Bool)

(assert (=> b!1744988 m!2156785))

(declare-fun m!2156787 () Bool)

(assert (=> b!1744989 m!2156787))

(assert (=> b!1744989 m!2156563))

(declare-fun m!2156789 () Bool)

(assert (=> b!1744989 m!2156789))

(assert (=> b!1744989 m!2156787))

(assert (=> b!1744989 m!2156789))

(declare-fun m!2156791 () Bool)

(assert (=> b!1744989 m!2156791))

(assert (=> b!1744990 m!2156563))

(declare-fun m!2156793 () Bool)

(assert (=> b!1744990 m!2156793))

(declare-fun m!2156795 () Bool)

(assert (=> b!1744990 m!2156795))

(assert (=> b!1744781 d!533225))

(declare-fun d!533227 () Bool)

(declare-fun isEmpty!12081 (Option!3859) Bool)

(assert (=> d!533227 (= (isDefined!3202 lt!672749) (not (isEmpty!12081 lt!672749)))))

(declare-fun bs!403213 () Bool)

(assert (= bs!403213 d!533227))

(declare-fun m!2156797 () Bool)

(assert (=> bs!403213 m!2156797))

(assert (=> b!1744781 d!533227))

(declare-fun b!1744992 () Bool)

(declare-fun res!784646 () Bool)

(declare-fun e!1116777 () Bool)

(assert (=> b!1744992 (=> (not res!784646) (not e!1116777))))

(assert (=> b!1744992 (= res!784646 (= (head!4006 lt!672750) (head!4006 lt!672747)))))

(declare-fun d!533229 () Bool)

(declare-fun e!1116778 () Bool)

(assert (=> d!533229 e!1116778))

(declare-fun res!784645 () Bool)

(assert (=> d!533229 (=> res!784645 e!1116778)))

(declare-fun lt!672788 () Bool)

(assert (=> d!533229 (= res!784645 (not lt!672788))))

(declare-fun e!1116779 () Bool)

(assert (=> d!533229 (= lt!672788 e!1116779)))

(declare-fun res!784644 () Bool)

(assert (=> d!533229 (=> res!784644 e!1116779)))

(assert (=> d!533229 (= res!784644 ((_ is Nil!19177) lt!672750))))

(assert (=> d!533229 (= (isPrefix!1658 lt!672750 lt!672747) lt!672788)))

(declare-fun b!1744993 () Bool)

(assert (=> b!1744993 (= e!1116777 (isPrefix!1658 (tail!2607 lt!672750) (tail!2607 lt!672747)))))

(declare-fun b!1744991 () Bool)

(assert (=> b!1744991 (= e!1116779 e!1116777)))

(declare-fun res!784643 () Bool)

(assert (=> b!1744991 (=> (not res!784643) (not e!1116777))))

(assert (=> b!1744991 (= res!784643 (not ((_ is Nil!19177) lt!672747)))))

(declare-fun b!1744994 () Bool)

(assert (=> b!1744994 (= e!1116778 (>= (size!15230 lt!672747) (size!15230 lt!672750)))))

(assert (= (and d!533229 (not res!784644)) b!1744991))

(assert (= (and b!1744991 res!784643) b!1744992))

(assert (= (and b!1744992 res!784646) b!1744993))

(assert (= (and d!533229 (not res!784645)) b!1744994))

(assert (=> b!1744992 m!2156769))

(declare-fun m!2156799 () Bool)

(assert (=> b!1744992 m!2156799))

(assert (=> b!1744993 m!2156765))

(declare-fun m!2156801 () Bool)

(assert (=> b!1744993 m!2156801))

(assert (=> b!1744993 m!2156765))

(assert (=> b!1744993 m!2156801))

(declare-fun m!2156803 () Bool)

(assert (=> b!1744993 m!2156803))

(declare-fun m!2156805 () Bool)

(assert (=> b!1744994 m!2156805))

(declare-fun m!2156807 () Bool)

(assert (=> b!1744994 m!2156807))

(assert (=> b!1744781 d!533229))

(declare-fun b!1744996 () Bool)

(declare-fun res!784650 () Bool)

(declare-fun e!1116780 () Bool)

(assert (=> b!1744996 (=> (not res!784650) (not e!1116780))))

(assert (=> b!1744996 (= res!784650 (= (head!4006 lt!672743) (head!4006 lt!672747)))))

(declare-fun d!533231 () Bool)

(declare-fun e!1116781 () Bool)

(assert (=> d!533231 e!1116781))

(declare-fun res!784649 () Bool)

(assert (=> d!533231 (=> res!784649 e!1116781)))

(declare-fun lt!672789 () Bool)

(assert (=> d!533231 (= res!784649 (not lt!672789))))

(declare-fun e!1116782 () Bool)

(assert (=> d!533231 (= lt!672789 e!1116782)))

(declare-fun res!784648 () Bool)

(assert (=> d!533231 (=> res!784648 e!1116782)))

(assert (=> d!533231 (= res!784648 ((_ is Nil!19177) lt!672743))))

(assert (=> d!533231 (= (isPrefix!1658 lt!672743 lt!672747) lt!672789)))

(declare-fun b!1744997 () Bool)

(assert (=> b!1744997 (= e!1116780 (isPrefix!1658 (tail!2607 lt!672743) (tail!2607 lt!672747)))))

(declare-fun b!1744995 () Bool)

(assert (=> b!1744995 (= e!1116782 e!1116780)))

(declare-fun res!784647 () Bool)

(assert (=> b!1744995 (=> (not res!784647) (not e!1116780))))

(assert (=> b!1744995 (= res!784647 (not ((_ is Nil!19177) lt!672747)))))

(declare-fun b!1744998 () Bool)

(assert (=> b!1744998 (= e!1116781 (>= (size!15230 lt!672747) (size!15230 lt!672743)))))

(assert (= (and d!533231 (not res!784648)) b!1744995))

(assert (= (and b!1744995 res!784647) b!1744996))

(assert (= (and b!1744996 res!784650) b!1744997))

(assert (= (and d!533231 (not res!784649)) b!1744998))

(assert (=> b!1744996 m!2156783))

(assert (=> b!1744996 m!2156799))

(assert (=> b!1744997 m!2156787))

(assert (=> b!1744997 m!2156801))

(assert (=> b!1744997 m!2156787))

(assert (=> b!1744997 m!2156801))

(declare-fun m!2156809 () Bool)

(assert (=> b!1744997 m!2156809))

(assert (=> b!1744998 m!2156805))

(assert (=> b!1744998 m!2156795))

(assert (=> b!1744781 d!533231))

(declare-fun d!533233 () Bool)

(assert (=> d!533233 (= (get!5784 lt!672740) (v!25294 lt!672740))))

(assert (=> b!1744781 d!533233))

(declare-fun d!533235 () Bool)

(assert (=> d!533235 (isPrefix!1658 lt!672750 (++!5242 lt!672750 suffix!1421))))

(declare-fun lt!672790 () Unit!33249)

(assert (=> d!533235 (= lt!672790 (choose!10754 lt!672750 suffix!1421))))

(assert (=> d!533235 (= (lemmaConcatTwoListThenFirstIsPrefix!1168 lt!672750 suffix!1421) lt!672790)))

(declare-fun bs!403214 () Bool)

(assert (= bs!403214 d!533235))

(assert (=> bs!403214 m!2156581))

(assert (=> bs!403214 m!2156581))

(declare-fun m!2156811 () Bool)

(assert (=> bs!403214 m!2156811))

(declare-fun m!2156813 () Bool)

(assert (=> bs!403214 m!2156813))

(assert (=> b!1744781 d!533235))

(declare-fun b!1745114 () Bool)

(declare-fun e!1116842 () Unit!33249)

(declare-fun Unit!33254 () Unit!33249)

(assert (=> b!1745114 (= e!1116842 Unit!33254)))

(declare-fun b!1745111 () Bool)

(declare-fun res!784721 () Bool)

(declare-fun e!1116843 () Bool)

(assert (=> b!1745111 (=> (not res!784721) (not e!1116843))))

(declare-fun lt!672929 () Token!6400)

(assert (=> b!1745111 (= res!784721 (matchR!2219 (regex!3417 (get!5785 (getRuleFromTag!467 thiss!24550 rules!3447 (tag!3761 (rule!5421 lt!672929))))) (list!7762 (charsOf!2066 lt!672929))))))

(declare-fun b!1745112 () Bool)

(assert (=> b!1745112 (= e!1116843 (= (rule!5421 lt!672929) (get!5785 (getRuleFromTag!467 thiss!24550 rules!3447 (tag!3761 (rule!5421 lt!672929))))))))

(declare-fun b!1745113 () Bool)

(declare-fun Unit!33255 () Unit!33249)

(assert (=> b!1745113 (= e!1116842 Unit!33255)))

(declare-fun lt!672924 () List!19247)

(assert (=> b!1745113 (= lt!672924 (++!5242 lt!672750 suffix!1421))))

(declare-fun lt!672921 () Unit!33249)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!297 (LexerInterface!3046 Rule!6634 List!19248 List!19247) Unit!33249)

(assert (=> b!1745113 (= lt!672921 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!297 thiss!24550 (rule!5421 lt!672929) rules!3447 lt!672924))))

(declare-fun isEmpty!12082 (Option!3858) Bool)

(declare-fun maxPrefixOneRule!972 (LexerInterface!3046 Rule!6634 List!19247) Option!3858)

(assert (=> b!1745113 (isEmpty!12082 (maxPrefixOneRule!972 thiss!24550 (rule!5421 lt!672929) lt!672924))))

(declare-fun lt!672925 () Unit!33249)

(assert (=> b!1745113 (= lt!672925 lt!672921)))

(declare-fun lt!672932 () List!19247)

(assert (=> b!1745113 (= lt!672932 (list!7762 (charsOf!2066 lt!672929)))))

(declare-fun lt!672927 () Unit!33249)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!293 (LexerInterface!3046 Rule!6634 List!19247 List!19247) Unit!33249)

(assert (=> b!1745113 (= lt!672927 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!293 thiss!24550 (rule!5421 lt!672929) lt!672932 (++!5242 lt!672750 suffix!1421)))))

(assert (=> b!1745113 (not (matchR!2219 (regex!3417 (rule!5421 lt!672929)) lt!672932))))

(declare-fun lt!672917 () Unit!33249)

(assert (=> b!1745113 (= lt!672917 lt!672927)))

(assert (=> b!1745113 false))

(declare-fun d!533237 () Bool)

(assert (=> d!533237 (isDefined!3201 (maxPrefix!1600 thiss!24550 rules!3447 (++!5242 lt!672750 suffix!1421)))))

(declare-fun lt!672928 () Unit!33249)

(assert (=> d!533237 (= lt!672928 e!1116842)))

(declare-fun c!284717 () Bool)

(assert (=> d!533237 (= c!284717 (isEmpty!12082 (maxPrefix!1600 thiss!24550 rules!3447 (++!5242 lt!672750 suffix!1421))))))

(declare-fun lt!672930 () Unit!33249)

(declare-fun lt!672926 () Unit!33249)

(assert (=> d!533237 (= lt!672930 lt!672926)))

(assert (=> d!533237 e!1116843))

(declare-fun res!784720 () Bool)

(assert (=> d!533237 (=> (not res!784720) (not e!1116843))))

(assert (=> d!533237 (= res!784720 (isDefined!3202 (getRuleFromTag!467 thiss!24550 rules!3447 (tag!3761 (rule!5421 lt!672929)))))))

(assert (=> d!533237 (= lt!672926 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!467 thiss!24550 rules!3447 lt!672750 lt!672929))))

(declare-fun lt!672931 () Unit!33249)

(declare-fun lt!672918 () Unit!33249)

(assert (=> d!533237 (= lt!672931 lt!672918)))

(declare-fun lt!672933 () List!19247)

(assert (=> d!533237 (isPrefix!1658 lt!672933 (++!5242 lt!672750 suffix!1421))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!289 (List!19247 List!19247 List!19247) Unit!33249)

(assert (=> d!533237 (= lt!672918 (lemmaPrefixStaysPrefixWhenAddingToSuffix!289 lt!672933 lt!672750 suffix!1421))))

(assert (=> d!533237 (= lt!672933 (list!7762 (charsOf!2066 lt!672929)))))

(declare-fun lt!672923 () Unit!33249)

(declare-fun lt!672922 () Unit!33249)

(assert (=> d!533237 (= lt!672923 lt!672922)))

(declare-fun lt!672919 () List!19247)

(declare-fun lt!672920 () List!19247)

(assert (=> d!533237 (isPrefix!1658 lt!672919 (++!5242 lt!672919 lt!672920))))

(assert (=> d!533237 (= lt!672922 (lemmaConcatTwoListThenFirstIsPrefix!1168 lt!672919 lt!672920))))

(assert (=> d!533237 (= lt!672920 (_2!10813 (get!5784 (maxPrefix!1600 thiss!24550 rules!3447 lt!672750))))))

(assert (=> d!533237 (= lt!672919 (list!7762 (charsOf!2066 lt!672929)))))

(declare-datatypes ((List!19251 0))(
  ( (Nil!19181) (Cons!19181 (h!24582 Token!6400) (t!162220 List!19251)) )
))
(declare-fun head!4008 (List!19251) Token!6400)

(declare-datatypes ((IArray!12767 0))(
  ( (IArray!12768 (innerList!6441 List!19251)) )
))
(declare-datatypes ((Conc!6381 0))(
  ( (Node!6381 (left!15335 Conc!6381) (right!15665 Conc!6381) (csize!12992 Int) (cheight!6592 Int)) (Leaf!9310 (xs!9257 IArray!12767) (csize!12993 Int)) (Empty!6381) )
))
(declare-datatypes ((BalanceConc!12706 0))(
  ( (BalanceConc!12707 (c!284761 Conc!6381)) )
))
(declare-fun list!7765 (BalanceConc!12706) List!19251)

(declare-datatypes ((tuple2!18826 0))(
  ( (tuple2!18827 (_1!10815 BalanceConc!12706) (_2!10815 BalanceConc!12702)) )
))
(declare-fun lex!1428 (LexerInterface!3046 List!19248 BalanceConc!12702) tuple2!18826)

(declare-fun seqFromList!2387 (List!19247) BalanceConc!12702)

(assert (=> d!533237 (= lt!672929 (head!4008 (list!7765 (_1!10815 (lex!1428 thiss!24550 rules!3447 (seqFromList!2387 lt!672750))))))))

(assert (=> d!533237 (not (isEmpty!12077 rules!3447))))

(assert (=> d!533237 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!570 thiss!24550 rules!3447 lt!672750 suffix!1421) lt!672928)))

(assert (= (and d!533237 res!784720) b!1745111))

(assert (= (and b!1745111 res!784721) b!1745112))

(assert (= (and d!533237 c!284717) b!1745113))

(assert (= (and d!533237 (not c!284717)) b!1745114))

(declare-fun m!2157013 () Bool)

(assert (=> b!1745111 m!2157013))

(declare-fun m!2157015 () Bool)

(assert (=> b!1745111 m!2157015))

(assert (=> b!1745111 m!2157013))

(declare-fun m!2157017 () Bool)

(assert (=> b!1745111 m!2157017))

(declare-fun m!2157019 () Bool)

(assert (=> b!1745111 m!2157019))

(assert (=> b!1745111 m!2157017))

(assert (=> b!1745111 m!2157015))

(declare-fun m!2157021 () Bool)

(assert (=> b!1745111 m!2157021))

(assert (=> b!1745112 m!2157017))

(assert (=> b!1745112 m!2157017))

(assert (=> b!1745112 m!2157019))

(assert (=> b!1745113 m!2157013))

(assert (=> b!1745113 m!2157015))

(assert (=> b!1745113 m!2156581))

(declare-fun m!2157023 () Bool)

(assert (=> b!1745113 m!2157023))

(declare-fun m!2157025 () Bool)

(assert (=> b!1745113 m!2157025))

(declare-fun m!2157027 () Bool)

(assert (=> b!1745113 m!2157027))

(declare-fun m!2157029 () Bool)

(assert (=> b!1745113 m!2157029))

(assert (=> b!1745113 m!2157013))

(assert (=> b!1745113 m!2157025))

(assert (=> b!1745113 m!2156581))

(declare-fun m!2157031 () Bool)

(assert (=> b!1745113 m!2157031))

(declare-fun m!2157033 () Bool)

(assert (=> d!533237 m!2157033))

(declare-fun m!2157035 () Bool)

(assert (=> d!533237 m!2157035))

(declare-fun m!2157037 () Bool)

(assert (=> d!533237 m!2157037))

(assert (=> d!533237 m!2156553))

(declare-fun m!2157039 () Bool)

(assert (=> d!533237 m!2157039))

(assert (=> d!533237 m!2157017))

(declare-fun m!2157041 () Bool)

(assert (=> d!533237 m!2157041))

(assert (=> d!533237 m!2157017))

(declare-fun m!2157043 () Bool)

(assert (=> d!533237 m!2157043))

(declare-fun m!2157045 () Bool)

(assert (=> d!533237 m!2157045))

(declare-fun m!2157047 () Bool)

(assert (=> d!533237 m!2157047))

(assert (=> d!533237 m!2157013))

(assert (=> d!533237 m!2157015))

(assert (=> d!533237 m!2156601))

(assert (=> d!533237 m!2156581))

(declare-fun m!2157051 () Bool)

(assert (=> d!533237 m!2157051))

(declare-fun m!2157055 () Bool)

(assert (=> d!533237 m!2157055))

(declare-fun m!2157057 () Bool)

(assert (=> d!533237 m!2157057))

(assert (=> d!533237 m!2157013))

(assert (=> d!533237 m!2156581))

(assert (=> d!533237 m!2157055))

(assert (=> d!533237 m!2157055))

(declare-fun m!2157063 () Bool)

(assert (=> d!533237 m!2157063))

(assert (=> d!533237 m!2157045))

(declare-fun m!2157065 () Bool)

(assert (=> d!533237 m!2157065))

(assert (=> d!533237 m!2157039))

(declare-fun m!2157071 () Bool)

(assert (=> d!533237 m!2157071))

(assert (=> d!533237 m!2157035))

(assert (=> d!533237 m!2156581))

(assert (=> d!533237 m!2156553))

(declare-fun m!2157073 () Bool)

(assert (=> d!533237 m!2157073))

(assert (=> b!1744781 d!533237))

(declare-fun b!1745182 () Bool)

(declare-fun e!1116888 () Bool)

(declare-fun e!1116889 () Bool)

(assert (=> b!1745182 (= e!1116888 e!1116889)))

(declare-fun res!784745 () Bool)

(assert (=> b!1745182 (=> (not res!784745) (not e!1116889))))

(declare-fun lt!672941 () Option!3859)

(assert (=> b!1745182 (= res!784745 (contains!3441 rules!3447 (get!5785 lt!672941)))))

(declare-fun b!1745183 () Bool)

(assert (=> b!1745183 (= e!1116889 (= (tag!3761 (get!5785 lt!672941)) (tag!3761 (rule!5421 (_1!10813 lt!672748)))))))

(declare-fun b!1745184 () Bool)

(declare-fun e!1116887 () Option!3859)

(assert (=> b!1745184 (= e!1116887 None!3858)))

(declare-fun b!1745185 () Bool)

(declare-fun e!1116890 () Option!3859)

(assert (=> b!1745185 (= e!1116890 e!1116887)))

(declare-fun c!284728 () Bool)

(assert (=> b!1745185 (= c!284728 (and ((_ is Cons!19178) rules!3447) (not (= (tag!3761 (h!24579 rules!3447)) (tag!3761 (rule!5421 (_1!10813 lt!672748)))))))))

(declare-fun b!1745186 () Bool)

(assert (=> b!1745186 (= e!1116890 (Some!3858 (h!24579 rules!3447)))))

(declare-fun d!533289 () Bool)

(assert (=> d!533289 e!1116888))

(declare-fun res!784746 () Bool)

(assert (=> d!533289 (=> res!784746 e!1116888)))

(assert (=> d!533289 (= res!784746 (isEmpty!12081 lt!672941))))

(assert (=> d!533289 (= lt!672941 e!1116890)))

(declare-fun c!284727 () Bool)

(assert (=> d!533289 (= c!284727 (and ((_ is Cons!19178) rules!3447) (= (tag!3761 (h!24579 rules!3447)) (tag!3761 (rule!5421 (_1!10813 lt!672748))))))))

(assert (=> d!533289 (rulesInvariant!2715 thiss!24550 rules!3447)))

(assert (=> d!533289 (= (getRuleFromTag!467 thiss!24550 rules!3447 (tag!3761 (rule!5421 (_1!10813 lt!672748)))) lt!672941)))

(declare-fun b!1745181 () Bool)

(declare-fun lt!672943 () Unit!33249)

(declare-fun lt!672942 () Unit!33249)

(assert (=> b!1745181 (= lt!672943 lt!672942)))

(assert (=> b!1745181 (rulesInvariant!2715 thiss!24550 (t!162189 rules!3447))))

(declare-fun lemmaInvariantOnRulesThenOnTail!168 (LexerInterface!3046 Rule!6634 List!19248) Unit!33249)

(assert (=> b!1745181 (= lt!672942 (lemmaInvariantOnRulesThenOnTail!168 thiss!24550 (h!24579 rules!3447) (t!162189 rules!3447)))))

(assert (=> b!1745181 (= e!1116887 (getRuleFromTag!467 thiss!24550 (t!162189 rules!3447) (tag!3761 (rule!5421 (_1!10813 lt!672748)))))))

(assert (= (and d!533289 c!284727) b!1745186))

(assert (= (and d!533289 (not c!284727)) b!1745185))

(assert (= (and b!1745185 c!284728) b!1745181))

(assert (= (and b!1745185 (not c!284728)) b!1745184))

(assert (= (and d!533289 (not res!784746)) b!1745182))

(assert (= (and b!1745182 res!784745) b!1745183))

(declare-fun m!2157103 () Bool)

(assert (=> b!1745182 m!2157103))

(assert (=> b!1745182 m!2157103))

(declare-fun m!2157105 () Bool)

(assert (=> b!1745182 m!2157105))

(assert (=> b!1745183 m!2157103))

(declare-fun m!2157107 () Bool)

(assert (=> d!533289 m!2157107))

(assert (=> d!533289 m!2156631))

(declare-fun m!2157109 () Bool)

(assert (=> b!1745181 m!2157109))

(declare-fun m!2157111 () Bool)

(assert (=> b!1745181 m!2157111))

(declare-fun m!2157113 () Bool)

(assert (=> b!1745181 m!2157113))

(assert (=> b!1744781 d!533289))

(declare-fun call!110231 () Option!3858)

(declare-fun bm!110226 () Bool)

(assert (=> bm!110226 (= call!110231 (maxPrefixOneRule!972 thiss!24550 (h!24579 rules!3447) lt!672747))))

(declare-fun b!1745234 () Bool)

(declare-fun e!1116909 () Option!3858)

(declare-fun lt!672956 () Option!3858)

(declare-fun lt!672957 () Option!3858)

(assert (=> b!1745234 (= e!1116909 (ite (and ((_ is None!3857) lt!672956) ((_ is None!3857) lt!672957)) None!3857 (ite ((_ is None!3857) lt!672957) lt!672956 (ite ((_ is None!3857) lt!672956) lt!672957 (ite (>= (size!15228 (_1!10813 (v!25294 lt!672956))) (size!15228 (_1!10813 (v!25294 lt!672957)))) lt!672956 lt!672957)))))))

(assert (=> b!1745234 (= lt!672956 call!110231)))

(assert (=> b!1745234 (= lt!672957 (maxPrefix!1600 thiss!24550 (t!162189 rules!3447) lt!672747))))

(declare-fun b!1745235 () Bool)

(declare-fun e!1116910 () Bool)

(declare-fun lt!672954 () Option!3858)

(assert (=> b!1745235 (= e!1116910 (contains!3441 rules!3447 (rule!5421 (_1!10813 (get!5784 lt!672954)))))))

(declare-fun b!1745236 () Bool)

(declare-fun res!784763 () Bool)

(assert (=> b!1745236 (=> (not res!784763) (not e!1116910))))

(assert (=> b!1745236 (= res!784763 (< (size!15230 (_2!10813 (get!5784 lt!672954))) (size!15230 lt!672747)))))

(declare-fun b!1745237 () Bool)

(declare-fun res!784764 () Bool)

(assert (=> b!1745237 (=> (not res!784764) (not e!1116910))))

(assert (=> b!1745237 (= res!784764 (= (list!7762 (charsOf!2066 (_1!10813 (get!5784 lt!672954)))) (originalCharacters!4231 (_1!10813 (get!5784 lt!672954)))))))

(declare-fun b!1745238 () Bool)

(assert (=> b!1745238 (= e!1116909 call!110231)))

(declare-fun d!533303 () Bool)

(declare-fun e!1116911 () Bool)

(assert (=> d!533303 e!1116911))

(declare-fun res!784762 () Bool)

(assert (=> d!533303 (=> res!784762 e!1116911)))

(assert (=> d!533303 (= res!784762 (isEmpty!12082 lt!672954))))

(assert (=> d!533303 (= lt!672954 e!1116909)))

(declare-fun c!284731 () Bool)

(assert (=> d!533303 (= c!284731 (and ((_ is Cons!19178) rules!3447) ((_ is Nil!19178) (t!162189 rules!3447))))))

(declare-fun lt!672955 () Unit!33249)

(declare-fun lt!672958 () Unit!33249)

(assert (=> d!533303 (= lt!672955 lt!672958)))

(assert (=> d!533303 (isPrefix!1658 lt!672747 lt!672747)))

(declare-fun lemmaIsPrefixRefl!1105 (List!19247 List!19247) Unit!33249)

(assert (=> d!533303 (= lt!672958 (lemmaIsPrefixRefl!1105 lt!672747 lt!672747))))

(declare-fun rulesValidInductive!1142 (LexerInterface!3046 List!19248) Bool)

(assert (=> d!533303 (rulesValidInductive!1142 thiss!24550 rules!3447)))

(assert (=> d!533303 (= (maxPrefix!1600 thiss!24550 rules!3447 lt!672747) lt!672954)))

(declare-fun b!1745239 () Bool)

(declare-fun res!784766 () Bool)

(assert (=> b!1745239 (=> (not res!784766) (not e!1116910))))

(assert (=> b!1745239 (= res!784766 (= (++!5242 (list!7762 (charsOf!2066 (_1!10813 (get!5784 lt!672954)))) (_2!10813 (get!5784 lt!672954))) lt!672747))))

(declare-fun b!1745240 () Bool)

(declare-fun res!784765 () Bool)

(assert (=> b!1745240 (=> (not res!784765) (not e!1116910))))

(assert (=> b!1745240 (= res!784765 (matchR!2219 (regex!3417 (rule!5421 (_1!10813 (get!5784 lt!672954)))) (list!7762 (charsOf!2066 (_1!10813 (get!5784 lt!672954))))))))

(declare-fun b!1745241 () Bool)

(assert (=> b!1745241 (= e!1116911 e!1116910)))

(declare-fun res!784767 () Bool)

(assert (=> b!1745241 (=> (not res!784767) (not e!1116910))))

(assert (=> b!1745241 (= res!784767 (isDefined!3201 lt!672954))))

(declare-fun b!1745242 () Bool)

(declare-fun res!784761 () Bool)

(assert (=> b!1745242 (=> (not res!784761) (not e!1116910))))

(declare-fun apply!5218 (TokenValueInjection!6674 BalanceConc!12702) TokenValue!3507)

(assert (=> b!1745242 (= res!784761 (= (value!107057 (_1!10813 (get!5784 lt!672954))) (apply!5218 (transformation!3417 (rule!5421 (_1!10813 (get!5784 lt!672954)))) (seqFromList!2387 (originalCharacters!4231 (_1!10813 (get!5784 lt!672954)))))))))

(assert (= (and d!533303 c!284731) b!1745238))

(assert (= (and d!533303 (not c!284731)) b!1745234))

(assert (= (or b!1745238 b!1745234) bm!110226))

(assert (= (and d!533303 (not res!784762)) b!1745241))

(assert (= (and b!1745241 res!784767) b!1745237))

(assert (= (and b!1745237 res!784764) b!1745236))

(assert (= (and b!1745236 res!784763) b!1745239))

(assert (= (and b!1745239 res!784766) b!1745242))

(assert (= (and b!1745242 res!784761) b!1745240))

(assert (= (and b!1745240 res!784765) b!1745235))

(declare-fun m!2157125 () Bool)

(assert (=> b!1745237 m!2157125))

(declare-fun m!2157127 () Bool)

(assert (=> b!1745237 m!2157127))

(assert (=> b!1745237 m!2157127))

(declare-fun m!2157129 () Bool)

(assert (=> b!1745237 m!2157129))

(declare-fun m!2157131 () Bool)

(assert (=> b!1745234 m!2157131))

(assert (=> b!1745240 m!2157125))

(assert (=> b!1745240 m!2157127))

(assert (=> b!1745240 m!2157127))

(assert (=> b!1745240 m!2157129))

(assert (=> b!1745240 m!2157129))

(declare-fun m!2157133 () Bool)

(assert (=> b!1745240 m!2157133))

(declare-fun m!2157135 () Bool)

(assert (=> d!533303 m!2157135))

(declare-fun m!2157137 () Bool)

(assert (=> d!533303 m!2157137))

(declare-fun m!2157139 () Bool)

(assert (=> d!533303 m!2157139))

(declare-fun m!2157141 () Bool)

(assert (=> d!533303 m!2157141))

(assert (=> b!1745236 m!2157125))

(declare-fun m!2157143 () Bool)

(assert (=> b!1745236 m!2157143))

(assert (=> b!1745236 m!2156805))

(assert (=> b!1745235 m!2157125))

(declare-fun m!2157145 () Bool)

(assert (=> b!1745235 m!2157145))

(declare-fun m!2157147 () Bool)

(assert (=> bm!110226 m!2157147))

(assert (=> b!1745242 m!2157125))

(declare-fun m!2157149 () Bool)

(assert (=> b!1745242 m!2157149))

(assert (=> b!1745242 m!2157149))

(declare-fun m!2157151 () Bool)

(assert (=> b!1745242 m!2157151))

(assert (=> b!1745239 m!2157125))

(assert (=> b!1745239 m!2157127))

(assert (=> b!1745239 m!2157127))

(assert (=> b!1745239 m!2157129))

(assert (=> b!1745239 m!2157129))

(declare-fun m!2157153 () Bool)

(assert (=> b!1745239 m!2157153))

(declare-fun m!2157155 () Bool)

(assert (=> b!1745241 m!2157155))

(assert (=> b!1744781 d!533303))

(declare-fun d!533305 () Bool)

(declare-fun list!7766 (Conc!6379) List!19247)

(assert (=> d!533305 (= (list!7762 lt!672744) (list!7766 (c!284661 lt!672744)))))

(declare-fun bs!403225 () Bool)

(assert (= bs!403225 d!533305))

(declare-fun m!2157157 () Bool)

(assert (=> bs!403225 m!2157157))

(assert (=> b!1744781 d!533305))

(declare-fun b!1745251 () Bool)

(declare-fun e!1116917 () List!19247)

(assert (=> b!1745251 (= e!1116917 suffix!1421)))

(declare-fun d!533307 () Bool)

(declare-fun e!1116916 () Bool)

(assert (=> d!533307 e!1116916))

(declare-fun res!784772 () Bool)

(assert (=> d!533307 (=> (not res!784772) (not e!1116916))))

(declare-fun lt!672961 () List!19247)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2754 (List!19247) (InoxSet C!9664))

(assert (=> d!533307 (= res!784772 (= (content!2754 lt!672961) ((_ map or) (content!2754 lt!672750) (content!2754 suffix!1421))))))

(assert (=> d!533307 (= lt!672961 e!1116917)))

(declare-fun c!284734 () Bool)

(assert (=> d!533307 (= c!284734 ((_ is Nil!19177) lt!672750))))

(assert (=> d!533307 (= (++!5242 lt!672750 suffix!1421) lt!672961)))

(declare-fun b!1745253 () Bool)

(declare-fun res!784773 () Bool)

(assert (=> b!1745253 (=> (not res!784773) (not e!1116916))))

(assert (=> b!1745253 (= res!784773 (= (size!15230 lt!672961) (+ (size!15230 lt!672750) (size!15230 suffix!1421))))))

(declare-fun b!1745252 () Bool)

(assert (=> b!1745252 (= e!1116917 (Cons!19177 (h!24578 lt!672750) (++!5242 (t!162188 lt!672750) suffix!1421)))))

(declare-fun b!1745254 () Bool)

(assert (=> b!1745254 (= e!1116916 (or (not (= suffix!1421 Nil!19177)) (= lt!672961 lt!672750)))))

(assert (= (and d!533307 c!284734) b!1745251))

(assert (= (and d!533307 (not c!284734)) b!1745252))

(assert (= (and d!533307 res!784772) b!1745253))

(assert (= (and b!1745253 res!784773) b!1745254))

(declare-fun m!2157159 () Bool)

(assert (=> d!533307 m!2157159))

(declare-fun m!2157161 () Bool)

(assert (=> d!533307 m!2157161))

(declare-fun m!2157163 () Bool)

(assert (=> d!533307 m!2157163))

(declare-fun m!2157165 () Bool)

(assert (=> b!1745253 m!2157165))

(assert (=> b!1745253 m!2156807))

(declare-fun m!2157167 () Bool)

(assert (=> b!1745253 m!2157167))

(declare-fun m!2157169 () Bool)

(assert (=> b!1745252 m!2157169))

(assert (=> b!1744781 d!533307))

(declare-fun b!1745255 () Bool)

(declare-fun e!1116919 () List!19247)

(assert (=> b!1745255 (= e!1116919 (_2!10813 lt!672748))))

(declare-fun d!533309 () Bool)

(declare-fun e!1116918 () Bool)

(assert (=> d!533309 e!1116918))

(declare-fun res!784774 () Bool)

(assert (=> d!533309 (=> (not res!784774) (not e!1116918))))

(declare-fun lt!672962 () List!19247)

(assert (=> d!533309 (= res!784774 (= (content!2754 lt!672962) ((_ map or) (content!2754 lt!672743) (content!2754 (_2!10813 lt!672748)))))))

(assert (=> d!533309 (= lt!672962 e!1116919)))

(declare-fun c!284735 () Bool)

(assert (=> d!533309 (= c!284735 ((_ is Nil!19177) lt!672743))))

(assert (=> d!533309 (= (++!5242 lt!672743 (_2!10813 lt!672748)) lt!672962)))

(declare-fun b!1745257 () Bool)

(declare-fun res!784775 () Bool)

(assert (=> b!1745257 (=> (not res!784775) (not e!1116918))))

(assert (=> b!1745257 (= res!784775 (= (size!15230 lt!672962) (+ (size!15230 lt!672743) (size!15230 (_2!10813 lt!672748)))))))

(declare-fun b!1745256 () Bool)

(assert (=> b!1745256 (= e!1116919 (Cons!19177 (h!24578 lt!672743) (++!5242 (t!162188 lt!672743) (_2!10813 lt!672748))))))

(declare-fun b!1745258 () Bool)

(assert (=> b!1745258 (= e!1116918 (or (not (= (_2!10813 lt!672748) Nil!19177)) (= lt!672962 lt!672743)))))

(assert (= (and d!533309 c!284735) b!1745255))

(assert (= (and d!533309 (not c!284735)) b!1745256))

(assert (= (and d!533309 res!784774) b!1745257))

(assert (= (and b!1745257 res!784775) b!1745258))

(declare-fun m!2157171 () Bool)

(assert (=> d!533309 m!2157171))

(declare-fun m!2157173 () Bool)

(assert (=> d!533309 m!2157173))

(declare-fun m!2157175 () Bool)

(assert (=> d!533309 m!2157175))

(declare-fun m!2157177 () Bool)

(assert (=> b!1745257 m!2157177))

(assert (=> b!1745257 m!2156795))

(declare-fun m!2157179 () Bool)

(assert (=> b!1745257 m!2157179))

(declare-fun m!2157181 () Bool)

(assert (=> b!1745256 m!2157181))

(assert (=> b!1744781 d!533309))

(declare-fun d!533311 () Bool)

(declare-fun lt!672965 () BalanceConc!12702)

(assert (=> d!533311 (= (list!7762 lt!672965) (originalCharacters!4231 (_1!10813 lt!672748)))))

(assert (=> d!533311 (= lt!672965 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (value!107057 (_1!10813 lt!672748))))))

(assert (=> d!533311 (= (charsOf!2066 (_1!10813 lt!672748)) lt!672965)))

(declare-fun b_lambda!55925 () Bool)

(assert (=> (not b_lambda!55925) (not d!533311)))

(assert (=> d!533311 t!162182))

(declare-fun b_and!129875 () Bool)

(assert (= b_and!129835 (and (=> t!162182 result!125544) b_and!129875)))

(assert (=> d!533311 t!162184))

(declare-fun b_and!129877 () Bool)

(assert (= b_and!129837 (and (=> t!162184 result!125546) b_and!129877)))

(assert (=> d!533311 t!162186))

(declare-fun b_and!129879 () Bool)

(assert (= b_and!129839 (and (=> t!162186 result!125548) b_and!129879)))

(declare-fun m!2157183 () Bool)

(assert (=> d!533311 m!2157183))

(assert (=> d!533311 m!2156641))

(assert (=> b!1744781 d!533311))

(declare-fun d!533313 () Bool)

(declare-fun e!1116922 () Bool)

(assert (=> d!533313 e!1116922))

(declare-fun res!784780 () Bool)

(assert (=> d!533313 (=> (not res!784780) (not e!1116922))))

(assert (=> d!533313 (= res!784780 (isDefined!3202 (getRuleFromTag!467 thiss!24550 rules!3447 (tag!3761 (rule!5421 (_1!10813 lt!672748))))))))

(declare-fun lt!672968 () Unit!33249)

(declare-fun choose!10755 (LexerInterface!3046 List!19248 List!19247 Token!6400) Unit!33249)

(assert (=> d!533313 (= lt!672968 (choose!10755 thiss!24550 rules!3447 lt!672747 (_1!10813 lt!672748)))))

(assert (=> d!533313 (rulesInvariant!2715 thiss!24550 rules!3447)))

(assert (=> d!533313 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!467 thiss!24550 rules!3447 lt!672747 (_1!10813 lt!672748)) lt!672968)))

(declare-fun b!1745263 () Bool)

(declare-fun res!784781 () Bool)

(assert (=> b!1745263 (=> (not res!784781) (not e!1116922))))

(assert (=> b!1745263 (= res!784781 (matchR!2219 (regex!3417 (get!5785 (getRuleFromTag!467 thiss!24550 rules!3447 (tag!3761 (rule!5421 (_1!10813 lt!672748)))))) (list!7762 (charsOf!2066 (_1!10813 lt!672748)))))))

(declare-fun b!1745264 () Bool)

(assert (=> b!1745264 (= e!1116922 (= (rule!5421 (_1!10813 lt!672748)) (get!5785 (getRuleFromTag!467 thiss!24550 rules!3447 (tag!3761 (rule!5421 (_1!10813 lt!672748)))))))))

(assert (= (and d!533313 res!784780) b!1745263))

(assert (= (and b!1745263 res!784781) b!1745264))

(assert (=> d!533313 m!2156569))

(assert (=> d!533313 m!2156569))

(declare-fun m!2157185 () Bool)

(assert (=> d!533313 m!2157185))

(declare-fun m!2157187 () Bool)

(assert (=> d!533313 m!2157187))

(assert (=> d!533313 m!2156631))

(assert (=> b!1745263 m!2156623))

(declare-fun m!2157189 () Bool)

(assert (=> b!1745263 m!2157189))

(assert (=> b!1745263 m!2156569))

(assert (=> b!1745263 m!2156585))

(assert (=> b!1745263 m!2156623))

(assert (=> b!1745263 m!2156569))

(declare-fun m!2157191 () Bool)

(assert (=> b!1745263 m!2157191))

(assert (=> b!1745263 m!2156585))

(assert (=> b!1745264 m!2156569))

(assert (=> b!1745264 m!2156569))

(assert (=> b!1745264 m!2157191))

(assert (=> b!1744781 d!533313))

(declare-fun d!533315 () Bool)

(declare-fun c!284738 () Bool)

(assert (=> d!533315 (= c!284738 ((_ is Node!6379) (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744)))))))

(declare-fun e!1116927 () Bool)

(assert (=> d!533315 (= (inv!24854 (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744)))) e!1116927)))

(declare-fun b!1745271 () Bool)

(declare-fun inv!24858 (Conc!6379) Bool)

(assert (=> b!1745271 (= e!1116927 (inv!24858 (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744)))))))

(declare-fun b!1745272 () Bool)

(declare-fun e!1116928 () Bool)

(assert (=> b!1745272 (= e!1116927 e!1116928)))

(declare-fun res!784784 () Bool)

(assert (=> b!1745272 (= res!784784 (not ((_ is Leaf!9308) (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744))))))))

(assert (=> b!1745272 (=> res!784784 e!1116928)))

(declare-fun b!1745273 () Bool)

(declare-fun inv!24859 (Conc!6379) Bool)

(assert (=> b!1745273 (= e!1116928 (inv!24859 (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744)))))))

(assert (= (and d!533315 c!284738) b!1745271))

(assert (= (and d!533315 (not c!284738)) b!1745272))

(assert (= (and b!1745272 (not res!784784)) b!1745273))

(declare-fun m!2157193 () Bool)

(assert (=> b!1745271 m!2157193))

(declare-fun m!2157195 () Bool)

(assert (=> b!1745273 m!2157195))

(assert (=> b!1744803 d!533315))

(declare-fun d!533317 () Bool)

(assert (=> d!533317 (= (isEmpty!12078 suffix!1421) ((_ is Nil!19177) suffix!1421))))

(assert (=> b!1744779 d!533317))

(declare-fun d!533319 () Bool)

(declare-fun choose!10756 (Int) Bool)

(assert (=> d!533319 (= (Forall!786 lambda!69692) (choose!10756 lambda!69692))))

(declare-fun bs!403226 () Bool)

(assert (= bs!403226 d!533319))

(declare-fun m!2157197 () Bool)

(assert (=> bs!403226 m!2157197))

(assert (=> b!1744777 d!533319))

(declare-fun d!533321 () Bool)

(declare-fun e!1116931 () Bool)

(assert (=> d!533321 e!1116931))

(declare-fun res!784787 () Bool)

(assert (=> d!533321 (=> (not res!784787) (not e!1116931))))

(assert (=> d!533321 (= res!784787 (semiInverseModEq!1353 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748))))))))

(declare-fun Unit!33256 () Unit!33249)

(assert (=> d!533321 (= (lemmaInv!618 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) Unit!33256)))

(declare-fun b!1745276 () Bool)

(assert (=> b!1745276 (= e!1116931 (equivClasses!1294 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748))))))))

(assert (= (and d!533321 res!784787) b!1745276))

(declare-fun m!2157199 () Bool)

(assert (=> d!533321 m!2157199))

(declare-fun m!2157201 () Bool)

(assert (=> b!1745276 m!2157201))

(assert (=> b!1744777 d!533321))

(declare-fun b!1745277 () Bool)

(declare-fun res!784790 () Bool)

(declare-fun e!1116937 () Bool)

(assert (=> b!1745277 (=> res!784790 e!1116937)))

(assert (=> b!1745277 (= res!784790 (not (isEmpty!12078 (tail!2607 lt!672743))))))

(declare-fun b!1745278 () Bool)

(declare-fun res!784791 () Bool)

(declare-fun e!1116935 () Bool)

(assert (=> b!1745278 (=> (not res!784791) (not e!1116935))))

(assert (=> b!1745278 (= res!784791 (isEmpty!12078 (tail!2607 lt!672743)))))

(declare-fun b!1745279 () Bool)

(declare-fun e!1116934 () Bool)

(declare-fun lt!672969 () Bool)

(assert (=> b!1745279 (= e!1116934 (not lt!672969))))

(declare-fun b!1745280 () Bool)

(declare-fun e!1116936 () Bool)

(assert (=> b!1745280 (= e!1116936 e!1116937)))

(declare-fun res!784788 () Bool)

(assert (=> b!1745280 (=> res!784788 e!1116937)))

(declare-fun call!110232 () Bool)

(assert (=> b!1745280 (= res!784788 call!110232)))

(declare-fun b!1745281 () Bool)

(declare-fun e!1116933 () Bool)

(assert (=> b!1745281 (= e!1116933 (= lt!672969 call!110232))))

(declare-fun b!1745282 () Bool)

(declare-fun e!1116938 () Bool)

(assert (=> b!1745282 (= e!1116938 (matchR!2219 (derivativeStep!1208 (regex!3417 (rule!5421 (_1!10813 lt!672748))) (head!4006 lt!672743)) (tail!2607 lt!672743)))))

(declare-fun b!1745283 () Bool)

(declare-fun res!784792 () Bool)

(assert (=> b!1745283 (=> (not res!784792) (not e!1116935))))

(assert (=> b!1745283 (= res!784792 (not call!110232))))

(declare-fun b!1745284 () Bool)

(assert (=> b!1745284 (= e!1116937 (not (= (head!4006 lt!672743) (c!284660 (regex!3417 (rule!5421 (_1!10813 lt!672748)))))))))

(declare-fun d!533323 () Bool)

(assert (=> d!533323 e!1116933))

(declare-fun c!284741 () Bool)

(assert (=> d!533323 (= c!284741 ((_ is EmptyExpr!4745) (regex!3417 (rule!5421 (_1!10813 lt!672748)))))))

(assert (=> d!533323 (= lt!672969 e!1116938)))

(declare-fun c!284739 () Bool)

(assert (=> d!533323 (= c!284739 (isEmpty!12078 lt!672743))))

(assert (=> d!533323 (validRegex!1913 (regex!3417 (rule!5421 (_1!10813 lt!672748))))))

(assert (=> d!533323 (= (matchR!2219 (regex!3417 (rule!5421 (_1!10813 lt!672748))) lt!672743) lt!672969)))

(declare-fun b!1745285 () Bool)

(declare-fun e!1116932 () Bool)

(assert (=> b!1745285 (= e!1116932 e!1116936)))

(declare-fun res!784795 () Bool)

(assert (=> b!1745285 (=> (not res!784795) (not e!1116936))))

(assert (=> b!1745285 (= res!784795 (not lt!672969))))

(declare-fun b!1745286 () Bool)

(assert (=> b!1745286 (= e!1116935 (= (head!4006 lt!672743) (c!284660 (regex!3417 (rule!5421 (_1!10813 lt!672748))))))))

(declare-fun b!1745287 () Bool)

(assert (=> b!1745287 (= e!1116933 e!1116934)))

(declare-fun c!284740 () Bool)

(assert (=> b!1745287 (= c!284740 ((_ is EmptyLang!4745) (regex!3417 (rule!5421 (_1!10813 lt!672748)))))))

(declare-fun b!1745288 () Bool)

(declare-fun res!784793 () Bool)

(assert (=> b!1745288 (=> res!784793 e!1116932)))

(assert (=> b!1745288 (= res!784793 (not ((_ is ElementMatch!4745) (regex!3417 (rule!5421 (_1!10813 lt!672748))))))))

(assert (=> b!1745288 (= e!1116934 e!1116932)))

(declare-fun bm!110227 () Bool)

(assert (=> bm!110227 (= call!110232 (isEmpty!12078 lt!672743))))

(declare-fun b!1745289 () Bool)

(declare-fun res!784789 () Bool)

(assert (=> b!1745289 (=> res!784789 e!1116932)))

(assert (=> b!1745289 (= res!784789 e!1116935)))

(declare-fun res!784794 () Bool)

(assert (=> b!1745289 (=> (not res!784794) (not e!1116935))))

(assert (=> b!1745289 (= res!784794 lt!672969)))

(declare-fun b!1745290 () Bool)

(assert (=> b!1745290 (= e!1116938 (nullable!1439 (regex!3417 (rule!5421 (_1!10813 lt!672748)))))))

(assert (= (and d!533323 c!284739) b!1745290))

(assert (= (and d!533323 (not c!284739)) b!1745282))

(assert (= (and d!533323 c!284741) b!1745281))

(assert (= (and d!533323 (not c!284741)) b!1745287))

(assert (= (and b!1745287 c!284740) b!1745279))

(assert (= (and b!1745287 (not c!284740)) b!1745288))

(assert (= (and b!1745288 (not res!784793)) b!1745289))

(assert (= (and b!1745289 res!784794) b!1745283))

(assert (= (and b!1745283 res!784792) b!1745278))

(assert (= (and b!1745278 res!784791) b!1745286))

(assert (= (and b!1745289 (not res!784789)) b!1745285))

(assert (= (and b!1745285 res!784795) b!1745280))

(assert (= (and b!1745280 (not res!784788)) b!1745277))

(assert (= (and b!1745277 (not res!784790)) b!1745284))

(assert (= (or b!1745281 b!1745280 b!1745283) bm!110227))

(declare-fun m!2157203 () Bool)

(assert (=> b!1745290 m!2157203))

(declare-fun m!2157205 () Bool)

(assert (=> bm!110227 m!2157205))

(assert (=> b!1745278 m!2156787))

(assert (=> b!1745278 m!2156787))

(declare-fun m!2157207 () Bool)

(assert (=> b!1745278 m!2157207))

(assert (=> b!1745286 m!2156783))

(assert (=> b!1745282 m!2156783))

(assert (=> b!1745282 m!2156783))

(declare-fun m!2157209 () Bool)

(assert (=> b!1745282 m!2157209))

(assert (=> b!1745282 m!2156787))

(assert (=> b!1745282 m!2157209))

(assert (=> b!1745282 m!2156787))

(declare-fun m!2157211 () Bool)

(assert (=> b!1745282 m!2157211))

(assert (=> b!1745284 m!2156783))

(assert (=> b!1745277 m!2156787))

(assert (=> b!1745277 m!2156787))

(assert (=> b!1745277 m!2157207))

(assert (=> d!533323 m!2157205))

(declare-fun m!2157213 () Bool)

(assert (=> d!533323 m!2157213))

(assert (=> b!1744774 d!533323))

(declare-fun d!533325 () Bool)

(assert (=> d!533325 (= (isEmpty!12077 rules!3447) ((_ is Nil!19178) rules!3447))))

(assert (=> b!1744773 d!533325))

(declare-fun d!533327 () Bool)

(declare-fun c!284744 () Bool)

(assert (=> d!533327 (= c!284744 (isEmpty!12078 (++!5242 lt!672750 (Cons!19177 (head!4006 suffix!1421) Nil!19177))))))

(declare-fun e!1116941 () Bool)

(assert (=> d!533327 (= (prefixMatch!630 (rulesRegex!775 thiss!24550 rules!3447) (++!5242 lt!672750 (Cons!19177 (head!4006 suffix!1421) Nil!19177))) e!1116941)))

(declare-fun b!1745295 () Bool)

(declare-fun lostCause!550 (Regex!4745) Bool)

(assert (=> b!1745295 (= e!1116941 (not (lostCause!550 (rulesRegex!775 thiss!24550 rules!3447))))))

(declare-fun b!1745296 () Bool)

(assert (=> b!1745296 (= e!1116941 (prefixMatch!630 (derivativeStep!1208 (rulesRegex!775 thiss!24550 rules!3447) (head!4006 (++!5242 lt!672750 (Cons!19177 (head!4006 suffix!1421) Nil!19177)))) (tail!2607 (++!5242 lt!672750 (Cons!19177 (head!4006 suffix!1421) Nil!19177)))))))

(assert (= (and d!533327 c!284744) b!1745295))

(assert (= (and d!533327 (not c!284744)) b!1745296))

(assert (=> d!533327 m!2156593))

(declare-fun m!2157215 () Bool)

(assert (=> d!533327 m!2157215))

(assert (=> b!1745295 m!2156589))

(declare-fun m!2157217 () Bool)

(assert (=> b!1745295 m!2157217))

(assert (=> b!1745296 m!2156593))

(declare-fun m!2157219 () Bool)

(assert (=> b!1745296 m!2157219))

(assert (=> b!1745296 m!2156589))

(assert (=> b!1745296 m!2157219))

(declare-fun m!2157221 () Bool)

(assert (=> b!1745296 m!2157221))

(assert (=> b!1745296 m!2156593))

(declare-fun m!2157223 () Bool)

(assert (=> b!1745296 m!2157223))

(assert (=> b!1745296 m!2157221))

(assert (=> b!1745296 m!2157223))

(declare-fun m!2157225 () Bool)

(assert (=> b!1745296 m!2157225))

(assert (=> b!1744771 d!533327))

(declare-fun d!533329 () Bool)

(declare-fun lt!672972 () Unit!33249)

(declare-fun lemma!363 (List!19248 LexerInterface!3046 List!19248) Unit!33249)

(assert (=> d!533329 (= lt!672972 (lemma!363 rules!3447 thiss!24550 rules!3447))))

(declare-fun lambda!69701 () Int)

(declare-datatypes ((List!19252 0))(
  ( (Nil!19182) (Cons!19182 (h!24583 Regex!4745) (t!162221 List!19252)) )
))
(declare-fun generalisedUnion!371 (List!19252) Regex!4745)

(declare-fun map!3951 (List!19248 Int) List!19252)

(assert (=> d!533329 (= (rulesRegex!775 thiss!24550 rules!3447) (generalisedUnion!371 (map!3951 rules!3447 lambda!69701)))))

(declare-fun bs!403227 () Bool)

(assert (= bs!403227 d!533329))

(declare-fun m!2157227 () Bool)

(assert (=> bs!403227 m!2157227))

(declare-fun m!2157229 () Bool)

(assert (=> bs!403227 m!2157229))

(assert (=> bs!403227 m!2157229))

(declare-fun m!2157231 () Bool)

(assert (=> bs!403227 m!2157231))

(assert (=> b!1744771 d!533329))

(declare-fun b!1745297 () Bool)

(declare-fun e!1116943 () List!19247)

(assert (=> b!1745297 (= e!1116943 (Cons!19177 (head!4006 suffix!1421) Nil!19177))))

(declare-fun d!533331 () Bool)

(declare-fun e!1116942 () Bool)

(assert (=> d!533331 e!1116942))

(declare-fun res!784796 () Bool)

(assert (=> d!533331 (=> (not res!784796) (not e!1116942))))

(declare-fun lt!672973 () List!19247)

(assert (=> d!533331 (= res!784796 (= (content!2754 lt!672973) ((_ map or) (content!2754 lt!672750) (content!2754 (Cons!19177 (head!4006 suffix!1421) Nil!19177)))))))

(assert (=> d!533331 (= lt!672973 e!1116943)))

(declare-fun c!284745 () Bool)

(assert (=> d!533331 (= c!284745 ((_ is Nil!19177) lt!672750))))

(assert (=> d!533331 (= (++!5242 lt!672750 (Cons!19177 (head!4006 suffix!1421) Nil!19177)) lt!672973)))

(declare-fun b!1745299 () Bool)

(declare-fun res!784797 () Bool)

(assert (=> b!1745299 (=> (not res!784797) (not e!1116942))))

(assert (=> b!1745299 (= res!784797 (= (size!15230 lt!672973) (+ (size!15230 lt!672750) (size!15230 (Cons!19177 (head!4006 suffix!1421) Nil!19177)))))))

(declare-fun b!1745298 () Bool)

(assert (=> b!1745298 (= e!1116943 (Cons!19177 (h!24578 lt!672750) (++!5242 (t!162188 lt!672750) (Cons!19177 (head!4006 suffix!1421) Nil!19177))))))

(declare-fun b!1745300 () Bool)

(assert (=> b!1745300 (= e!1116942 (or (not (= (Cons!19177 (head!4006 suffix!1421) Nil!19177) Nil!19177)) (= lt!672973 lt!672750)))))

(assert (= (and d!533331 c!284745) b!1745297))

(assert (= (and d!533331 (not c!284745)) b!1745298))

(assert (= (and d!533331 res!784796) b!1745299))

(assert (= (and b!1745299 res!784797) b!1745300))

(declare-fun m!2157233 () Bool)

(assert (=> d!533331 m!2157233))

(assert (=> d!533331 m!2157161))

(declare-fun m!2157235 () Bool)

(assert (=> d!533331 m!2157235))

(declare-fun m!2157237 () Bool)

(assert (=> b!1745299 m!2157237))

(assert (=> b!1745299 m!2156807))

(declare-fun m!2157239 () Bool)

(assert (=> b!1745299 m!2157239))

(declare-fun m!2157241 () Bool)

(assert (=> b!1745298 m!2157241))

(assert (=> b!1744771 d!533331))

(declare-fun d!533333 () Bool)

(assert (=> d!533333 (= (head!4006 suffix!1421) (h!24578 suffix!1421))))

(assert (=> b!1744771 d!533333))

(declare-fun d!533335 () Bool)

(assert (=> d!533335 (= (isEmpty!12078 (_2!10813 lt!672737)) ((_ is Nil!19177) (_2!10813 lt!672737)))))

(assert (=> b!1744770 d!533335))

(declare-fun d!533337 () Bool)

(declare-fun res!784802 () Bool)

(declare-fun e!1116946 () Bool)

(assert (=> d!533337 (=> (not res!784802) (not e!1116946))))

(assert (=> d!533337 (= res!784802 (not (isEmpty!12078 (originalCharacters!4231 token!523))))))

(assert (=> d!533337 (= (inv!24853 token!523) e!1116946)))

(declare-fun b!1745305 () Bool)

(declare-fun res!784803 () Bool)

(assert (=> b!1745305 (=> (not res!784803) (not e!1116946))))

(assert (=> b!1745305 (= res!784803 (= (originalCharacters!4231 token!523) (list!7762 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 token!523))) (value!107057 token!523)))))))

(declare-fun b!1745306 () Bool)

(assert (=> b!1745306 (= e!1116946 (= (size!15228 token!523) (size!15230 (originalCharacters!4231 token!523))))))

(assert (= (and d!533337 res!784802) b!1745305))

(assert (= (and b!1745305 res!784803) b!1745306))

(declare-fun b_lambda!55927 () Bool)

(assert (=> (not b_lambda!55927) (not b!1745305)))

(declare-fun t!162206 () Bool)

(declare-fun tb!104389 () Bool)

(assert (=> (and b!1744786 (= (toChars!4787 (transformation!3417 rule!422)) (toChars!4787 (transformation!3417 (rule!5421 token!523)))) t!162206) tb!104389))

(declare-fun b!1745307 () Bool)

(declare-fun e!1116947 () Bool)

(declare-fun tp!496679 () Bool)

(assert (=> b!1745307 (= e!1116947 (and (inv!24854 (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 token!523))) (value!107057 token!523)))) tp!496679))))

(declare-fun result!125572 () Bool)

(assert (=> tb!104389 (= result!125572 (and (inv!24855 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 token!523))) (value!107057 token!523))) e!1116947))))

(assert (= tb!104389 b!1745307))

(declare-fun m!2157243 () Bool)

(assert (=> b!1745307 m!2157243))

(declare-fun m!2157245 () Bool)

(assert (=> tb!104389 m!2157245))

(assert (=> b!1745305 t!162206))

(declare-fun b_and!129881 () Bool)

(assert (= b_and!129875 (and (=> t!162206 result!125572) b_and!129881)))

(declare-fun t!162208 () Bool)

(declare-fun tb!104391 () Bool)

(assert (=> (and b!1744772 (= (toChars!4787 (transformation!3417 (rule!5421 token!523))) (toChars!4787 (transformation!3417 (rule!5421 token!523)))) t!162208) tb!104391))

(declare-fun result!125574 () Bool)

(assert (= result!125574 result!125572))

(assert (=> b!1745305 t!162208))

(declare-fun b_and!129883 () Bool)

(assert (= b_and!129877 (and (=> t!162208 result!125574) b_and!129883)))

(declare-fun tb!104393 () Bool)

(declare-fun t!162210 () Bool)

(assert (=> (and b!1744778 (= (toChars!4787 (transformation!3417 (h!24579 rules!3447))) (toChars!4787 (transformation!3417 (rule!5421 token!523)))) t!162210) tb!104393))

(declare-fun result!125576 () Bool)

(assert (= result!125576 result!125572))

(assert (=> b!1745305 t!162210))

(declare-fun b_and!129885 () Bool)

(assert (= b_and!129879 (and (=> t!162210 result!125576) b_and!129885)))

(declare-fun m!2157247 () Bool)

(assert (=> d!533337 m!2157247))

(declare-fun m!2157249 () Bool)

(assert (=> b!1745305 m!2157249))

(assert (=> b!1745305 m!2157249))

(declare-fun m!2157251 () Bool)

(assert (=> b!1745305 m!2157251))

(declare-fun m!2157253 () Bool)

(assert (=> b!1745306 m!2157253))

(assert (=> start!171898 d!533337))

(declare-fun d!533339 () Bool)

(declare-fun res!784806 () Bool)

(declare-fun e!1116950 () Bool)

(assert (=> d!533339 (=> (not res!784806) (not e!1116950))))

(declare-fun rulesValid!1279 (LexerInterface!3046 List!19248) Bool)

(assert (=> d!533339 (= res!784806 (rulesValid!1279 thiss!24550 rules!3447))))

(assert (=> d!533339 (= (rulesInvariant!2715 thiss!24550 rules!3447) e!1116950)))

(declare-fun b!1745310 () Bool)

(declare-datatypes ((List!19254 0))(
  ( (Nil!19184) (Cons!19184 (h!24585 String!21867) (t!162223 List!19254)) )
))
(declare-fun noDuplicateTag!1279 (LexerInterface!3046 List!19248 List!19254) Bool)

(assert (=> b!1745310 (= e!1116950 (noDuplicateTag!1279 thiss!24550 rules!3447 Nil!19184))))

(assert (= (and d!533339 res!784806) b!1745310))

(declare-fun m!2157255 () Bool)

(assert (=> d!533339 m!2157255))

(declare-fun m!2157257 () Bool)

(assert (=> b!1745310 m!2157257))

(assert (=> b!1744768 d!533339))

(declare-fun d!533341 () Bool)

(assert (=> d!533341 (= (get!5784 lt!672742) (v!25294 lt!672742))))

(assert (=> b!1744767 d!533341))

(declare-fun d!533343 () Bool)

(assert (=> d!533343 (= (list!7762 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744))) (list!7766 (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744)))))))

(declare-fun bs!403228 () Bool)

(assert (= bs!403228 d!533343))

(declare-fun m!2157259 () Bool)

(assert (=> bs!403228 m!2157259))

(assert (=> b!1744766 d!533343))

(declare-fun bs!403229 () Bool)

(declare-fun d!533345 () Bool)

(assert (= bs!403229 (and d!533345 b!1744777)))

(declare-fun lambda!69704 () Int)

(assert (=> bs!403229 (= lambda!69704 lambda!69692)))

(declare-fun b!1745315 () Bool)

(declare-fun e!1116953 () Bool)

(assert (=> b!1745315 (= e!1116953 true)))

(assert (=> d!533345 e!1116953))

(assert (= d!533345 b!1745315))

(assert (=> b!1745315 (< (dynLambda!9076 order!11979 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748))))) (dynLambda!9077 order!11981 lambda!69704))))

(assert (=> b!1745315 (< (dynLambda!9078 order!11983 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748))))) (dynLambda!9077 order!11981 lambda!69704))))

(assert (=> d!533345 (= (list!7762 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744))) (list!7762 lt!672744))))

(declare-fun lt!672976 () Unit!33249)

(declare-fun ForallOf!292 (Int BalanceConc!12702) Unit!33249)

(assert (=> d!533345 (= lt!672976 (ForallOf!292 lambda!69704 lt!672744))))

(assert (=> d!533345 (= (lemmaSemiInverse!557 (transformation!3417 (rule!5421 (_1!10813 lt!672748))) lt!672744) lt!672976)))

(declare-fun b_lambda!55929 () Bool)

(assert (=> (not b_lambda!55929) (not d!533345)))

(assert (=> d!533345 t!162170))

(declare-fun b_and!129887 () Bool)

(assert (= b_and!129881 (and (=> t!162170 result!125528) b_and!129887)))

(assert (=> d!533345 t!162172))

(declare-fun b_and!129889 () Bool)

(assert (= b_and!129883 (and (=> t!162172 result!125532) b_and!129889)))

(assert (=> d!533345 t!162174))

(declare-fun b_and!129891 () Bool)

(assert (= b_and!129885 (and (=> t!162174 result!125534) b_and!129891)))

(declare-fun b_lambda!55931 () Bool)

(assert (=> (not b_lambda!55931) (not d!533345)))

(assert (=> d!533345 t!162176))

(declare-fun b_and!129893 () Bool)

(assert (= b_and!129829 (and (=> t!162176 result!125536) b_and!129893)))

(assert (=> d!533345 t!162178))

(declare-fun b_and!129895 () Bool)

(assert (= b_and!129831 (and (=> t!162178 result!125540) b_and!129895)))

(assert (=> d!533345 t!162180))

(declare-fun b_and!129897 () Bool)

(assert (= b_and!129833 (and (=> t!162180 result!125542) b_and!129897)))

(assert (=> d!533345 m!2156543))

(declare-fun m!2157261 () Bool)

(assert (=> d!533345 m!2157261))

(assert (=> d!533345 m!2156575))

(assert (=> d!533345 m!2156543))

(assert (=> d!533345 m!2156545))

(assert (=> d!533345 m!2156545))

(assert (=> d!533345 m!2156547))

(assert (=> b!1744766 d!533345))

(declare-fun b!1745316 () Bool)

(declare-fun res!784809 () Bool)

(declare-fun e!1116959 () Bool)

(assert (=> b!1745316 (=> res!784809 e!1116959)))

(assert (=> b!1745316 (= res!784809 (not (isEmpty!12078 (tail!2607 (list!7762 (charsOf!2066 (_1!10813 lt!672748)))))))))

(declare-fun b!1745317 () Bool)

(declare-fun res!784810 () Bool)

(declare-fun e!1116957 () Bool)

(assert (=> b!1745317 (=> (not res!784810) (not e!1116957))))

(assert (=> b!1745317 (= res!784810 (isEmpty!12078 (tail!2607 (list!7762 (charsOf!2066 (_1!10813 lt!672748))))))))

(declare-fun b!1745318 () Bool)

(declare-fun e!1116956 () Bool)

(declare-fun lt!672977 () Bool)

(assert (=> b!1745318 (= e!1116956 (not lt!672977))))

(declare-fun b!1745319 () Bool)

(declare-fun e!1116958 () Bool)

(assert (=> b!1745319 (= e!1116958 e!1116959)))

(declare-fun res!784807 () Bool)

(assert (=> b!1745319 (=> res!784807 e!1116959)))

(declare-fun call!110233 () Bool)

(assert (=> b!1745319 (= res!784807 call!110233)))

(declare-fun b!1745320 () Bool)

(declare-fun e!1116955 () Bool)

(assert (=> b!1745320 (= e!1116955 (= lt!672977 call!110233))))

(declare-fun b!1745321 () Bool)

(declare-fun e!1116960 () Bool)

(assert (=> b!1745321 (= e!1116960 (matchR!2219 (derivativeStep!1208 (regex!3417 lt!672734) (head!4006 (list!7762 (charsOf!2066 (_1!10813 lt!672748))))) (tail!2607 (list!7762 (charsOf!2066 (_1!10813 lt!672748))))))))

(declare-fun b!1745322 () Bool)

(declare-fun res!784811 () Bool)

(assert (=> b!1745322 (=> (not res!784811) (not e!1116957))))

(assert (=> b!1745322 (= res!784811 (not call!110233))))

(declare-fun b!1745323 () Bool)

(assert (=> b!1745323 (= e!1116959 (not (= (head!4006 (list!7762 (charsOf!2066 (_1!10813 lt!672748)))) (c!284660 (regex!3417 lt!672734)))))))

(declare-fun d!533347 () Bool)

(assert (=> d!533347 e!1116955))

(declare-fun c!284749 () Bool)

(assert (=> d!533347 (= c!284749 ((_ is EmptyExpr!4745) (regex!3417 lt!672734)))))

(assert (=> d!533347 (= lt!672977 e!1116960)))

(declare-fun c!284747 () Bool)

(assert (=> d!533347 (= c!284747 (isEmpty!12078 (list!7762 (charsOf!2066 (_1!10813 lt!672748)))))))

(assert (=> d!533347 (validRegex!1913 (regex!3417 lt!672734))))

(assert (=> d!533347 (= (matchR!2219 (regex!3417 lt!672734) (list!7762 (charsOf!2066 (_1!10813 lt!672748)))) lt!672977)))

(declare-fun b!1745324 () Bool)

(declare-fun e!1116954 () Bool)

(assert (=> b!1745324 (= e!1116954 e!1116958)))

(declare-fun res!784814 () Bool)

(assert (=> b!1745324 (=> (not res!784814) (not e!1116958))))

(assert (=> b!1745324 (= res!784814 (not lt!672977))))

(declare-fun b!1745325 () Bool)

(assert (=> b!1745325 (= e!1116957 (= (head!4006 (list!7762 (charsOf!2066 (_1!10813 lt!672748)))) (c!284660 (regex!3417 lt!672734))))))

(declare-fun b!1745326 () Bool)

(assert (=> b!1745326 (= e!1116955 e!1116956)))

(declare-fun c!284748 () Bool)

(assert (=> b!1745326 (= c!284748 ((_ is EmptyLang!4745) (regex!3417 lt!672734)))))

(declare-fun b!1745327 () Bool)

(declare-fun res!784812 () Bool)

(assert (=> b!1745327 (=> res!784812 e!1116954)))

(assert (=> b!1745327 (= res!784812 (not ((_ is ElementMatch!4745) (regex!3417 lt!672734))))))

(assert (=> b!1745327 (= e!1116956 e!1116954)))

(declare-fun bm!110228 () Bool)

(assert (=> bm!110228 (= call!110233 (isEmpty!12078 (list!7762 (charsOf!2066 (_1!10813 lt!672748)))))))

(declare-fun b!1745328 () Bool)

(declare-fun res!784808 () Bool)

(assert (=> b!1745328 (=> res!784808 e!1116954)))

(assert (=> b!1745328 (= res!784808 e!1116957)))

(declare-fun res!784813 () Bool)

(assert (=> b!1745328 (=> (not res!784813) (not e!1116957))))

(assert (=> b!1745328 (= res!784813 lt!672977)))

(declare-fun b!1745329 () Bool)

(assert (=> b!1745329 (= e!1116960 (nullable!1439 (regex!3417 lt!672734)))))

(assert (= (and d!533347 c!284747) b!1745329))

(assert (= (and d!533347 (not c!284747)) b!1745321))

(assert (= (and d!533347 c!284749) b!1745320))

(assert (= (and d!533347 (not c!284749)) b!1745326))

(assert (= (and b!1745326 c!284748) b!1745318))

(assert (= (and b!1745326 (not c!284748)) b!1745327))

(assert (= (and b!1745327 (not res!784812)) b!1745328))

(assert (= (and b!1745328 res!784813) b!1745322))

(assert (= (and b!1745322 res!784811) b!1745317))

(assert (= (and b!1745317 res!784810) b!1745325))

(assert (= (and b!1745328 (not res!784808)) b!1745324))

(assert (= (and b!1745324 res!784814) b!1745319))

(assert (= (and b!1745319 (not res!784807)) b!1745316))

(assert (= (and b!1745316 (not res!784809)) b!1745323))

(assert (= (or b!1745320 b!1745319 b!1745322) bm!110228))

(declare-fun m!2157263 () Bool)

(assert (=> b!1745329 m!2157263))

(assert (=> bm!110228 m!2156623))

(declare-fun m!2157265 () Bool)

(assert (=> bm!110228 m!2157265))

(assert (=> b!1745317 m!2156623))

(declare-fun m!2157267 () Bool)

(assert (=> b!1745317 m!2157267))

(assert (=> b!1745317 m!2157267))

(declare-fun m!2157269 () Bool)

(assert (=> b!1745317 m!2157269))

(assert (=> b!1745325 m!2156623))

(declare-fun m!2157271 () Bool)

(assert (=> b!1745325 m!2157271))

(assert (=> b!1745321 m!2156623))

(assert (=> b!1745321 m!2157271))

(assert (=> b!1745321 m!2157271))

(declare-fun m!2157273 () Bool)

(assert (=> b!1745321 m!2157273))

(assert (=> b!1745321 m!2156623))

(assert (=> b!1745321 m!2157267))

(assert (=> b!1745321 m!2157273))

(assert (=> b!1745321 m!2157267))

(declare-fun m!2157275 () Bool)

(assert (=> b!1745321 m!2157275))

(assert (=> b!1745323 m!2156623))

(assert (=> b!1745323 m!2157271))

(assert (=> b!1745316 m!2156623))

(assert (=> b!1745316 m!2157267))

(assert (=> b!1745316 m!2157267))

(assert (=> b!1745316 m!2157269))

(assert (=> d!533347 m!2156623))

(assert (=> d!533347 m!2157265))

(declare-fun m!2157277 () Bool)

(assert (=> d!533347 m!2157277))

(assert (=> b!1744787 d!533347))

(declare-fun d!533349 () Bool)

(assert (=> d!533349 (= (list!7762 (charsOf!2066 (_1!10813 lt!672748))) (list!7766 (c!284661 (charsOf!2066 (_1!10813 lt!672748)))))))

(declare-fun bs!403230 () Bool)

(assert (= bs!403230 d!533349))

(declare-fun m!2157279 () Bool)

(assert (=> bs!403230 m!2157279))

(assert (=> b!1744787 d!533349))

(assert (=> b!1744787 d!533311))

(declare-fun d!533351 () Bool)

(assert (=> d!533351 (= (get!5785 lt!672749) (v!25295 lt!672749))))

(assert (=> b!1744787 d!533351))

(declare-fun b!1745340 () Bool)

(declare-fun e!1116968 () Bool)

(declare-fun inv!16 (TokenValue!3507) Bool)

(assert (=> b!1745340 (= e!1116968 (inv!16 (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744)))))

(declare-fun d!533353 () Bool)

(declare-fun c!284754 () Bool)

(assert (=> d!533353 (= c!284754 ((_ is IntegerValue!10521) (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744)))))

(assert (=> d!533353 (= (inv!21 (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744)) e!1116968)))

(declare-fun b!1745341 () Bool)

(declare-fun res!784817 () Bool)

(declare-fun e!1116969 () Bool)

(assert (=> b!1745341 (=> res!784817 e!1116969)))

(assert (=> b!1745341 (= res!784817 (not ((_ is IntegerValue!10523) (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744))))))

(declare-fun e!1116967 () Bool)

(assert (=> b!1745341 (= e!1116967 e!1116969)))

(declare-fun b!1745342 () Bool)

(declare-fun inv!17 (TokenValue!3507) Bool)

(assert (=> b!1745342 (= e!1116967 (inv!17 (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744)))))

(declare-fun b!1745343 () Bool)

(assert (=> b!1745343 (= e!1116968 e!1116967)))

(declare-fun c!284755 () Bool)

(assert (=> b!1745343 (= c!284755 ((_ is IntegerValue!10522) (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744)))))

(declare-fun b!1745344 () Bool)

(declare-fun inv!15 (TokenValue!3507) Bool)

(assert (=> b!1745344 (= e!1116969 (inv!15 (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744)))))

(assert (= (and d!533353 c!284754) b!1745340))

(assert (= (and d!533353 (not c!284754)) b!1745343))

(assert (= (and b!1745343 c!284755) b!1745342))

(assert (= (and b!1745343 (not c!284755)) b!1745341))

(assert (= (and b!1745341 (not res!784817)) b!1745344))

(declare-fun m!2157281 () Bool)

(assert (=> b!1745340 m!2157281))

(declare-fun m!2157283 () Bool)

(assert (=> b!1745342 m!2157283))

(declare-fun m!2157285 () Bool)

(assert (=> b!1745344 m!2157285))

(assert (=> tb!104363 d!533353))

(declare-fun d!533355 () Bool)

(assert (=> d!533355 (= (inv!24847 (tag!3761 (rule!5421 token!523))) (= (mod (str.len (value!107056 (tag!3761 (rule!5421 token!523)))) 2) 0))))

(assert (=> b!1744765 d!533355))

(declare-fun d!533357 () Bool)

(declare-fun res!784818 () Bool)

(declare-fun e!1116970 () Bool)

(assert (=> d!533357 (=> (not res!784818) (not e!1116970))))

(assert (=> d!533357 (= res!784818 (semiInverseModEq!1353 (toChars!4787 (transformation!3417 (rule!5421 token!523))) (toValue!4928 (transformation!3417 (rule!5421 token!523)))))))

(assert (=> d!533357 (= (inv!24852 (transformation!3417 (rule!5421 token!523))) e!1116970)))

(declare-fun b!1745345 () Bool)

(assert (=> b!1745345 (= e!1116970 (equivClasses!1294 (toChars!4787 (transformation!3417 (rule!5421 token!523))) (toValue!4928 (transformation!3417 (rule!5421 token!523)))))))

(assert (= (and d!533357 res!784818) b!1745345))

(declare-fun m!2157287 () Bool)

(assert (=> d!533357 m!2157287))

(declare-fun m!2157289 () Bool)

(assert (=> b!1745345 m!2157289))

(assert (=> b!1744765 d!533357))

(declare-fun d!533359 () Bool)

(declare-fun c!284756 () Bool)

(assert (=> d!533359 (= c!284756 ((_ is Node!6379) (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (value!107057 (_1!10813 lt!672748))))))))

(declare-fun e!1116971 () Bool)

(assert (=> d!533359 (= (inv!24854 (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (value!107057 (_1!10813 lt!672748))))) e!1116971)))

(declare-fun b!1745346 () Bool)

(assert (=> b!1745346 (= e!1116971 (inv!24858 (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (value!107057 (_1!10813 lt!672748))))))))

(declare-fun b!1745347 () Bool)

(declare-fun e!1116972 () Bool)

(assert (=> b!1745347 (= e!1116971 e!1116972)))

(declare-fun res!784819 () Bool)

(assert (=> b!1745347 (= res!784819 (not ((_ is Leaf!9308) (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (value!107057 (_1!10813 lt!672748)))))))))

(assert (=> b!1745347 (=> res!784819 e!1116972)))

(declare-fun b!1745348 () Bool)

(assert (=> b!1745348 (= e!1116972 (inv!24859 (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (value!107057 (_1!10813 lt!672748))))))))

(assert (= (and d!533359 c!284756) b!1745346))

(assert (= (and d!533359 (not c!284756)) b!1745347))

(assert (= (and b!1745347 (not res!784819)) b!1745348))

(declare-fun m!2157291 () Bool)

(assert (=> b!1745346 m!2157291))

(declare-fun m!2157293 () Bool)

(assert (=> b!1745348 m!2157293))

(assert (=> b!1744806 d!533359))

(declare-fun b!1745349 () Bool)

(declare-fun e!1116974 () Bool)

(assert (=> b!1745349 (= e!1116974 (inv!16 (value!107057 token!523)))))

(declare-fun d!533361 () Bool)

(declare-fun c!284757 () Bool)

(assert (=> d!533361 (= c!284757 ((_ is IntegerValue!10521) (value!107057 token!523)))))

(assert (=> d!533361 (= (inv!21 (value!107057 token!523)) e!1116974)))

(declare-fun b!1745350 () Bool)

(declare-fun res!784820 () Bool)

(declare-fun e!1116975 () Bool)

(assert (=> b!1745350 (=> res!784820 e!1116975)))

(assert (=> b!1745350 (= res!784820 (not ((_ is IntegerValue!10523) (value!107057 token!523))))))

(declare-fun e!1116973 () Bool)

(assert (=> b!1745350 (= e!1116973 e!1116975)))

(declare-fun b!1745351 () Bool)

(assert (=> b!1745351 (= e!1116973 (inv!17 (value!107057 token!523)))))

(declare-fun b!1745352 () Bool)

(assert (=> b!1745352 (= e!1116974 e!1116973)))

(declare-fun c!284758 () Bool)

(assert (=> b!1745352 (= c!284758 ((_ is IntegerValue!10522) (value!107057 token!523)))))

(declare-fun b!1745353 () Bool)

(assert (=> b!1745353 (= e!1116975 (inv!15 (value!107057 token!523)))))

(assert (= (and d!533361 c!284757) b!1745349))

(assert (= (and d!533361 (not c!284757)) b!1745352))

(assert (= (and b!1745352 c!284758) b!1745351))

(assert (= (and b!1745352 (not c!284758)) b!1745350))

(assert (= (and b!1745350 (not res!784820)) b!1745353))

(declare-fun m!2157295 () Bool)

(assert (=> b!1745349 m!2157295))

(declare-fun m!2157297 () Bool)

(assert (=> b!1745351 m!2157297))

(declare-fun m!2157299 () Bool)

(assert (=> b!1745353 m!2157299))

(assert (=> b!1744764 d!533361))

(declare-fun d!533363 () Bool)

(assert (=> d!533363 (= (inv!24855 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744))) (isBalanced!1991 (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744)))))))

(declare-fun bs!403231 () Bool)

(assert (= bs!403231 d!533363))

(declare-fun m!2157301 () Bool)

(assert (=> bs!403231 m!2157301))

(assert (=> tb!104357 d!533363))

(declare-fun d!533365 () Bool)

(assert (=> d!533365 (= (isDefined!3201 lt!672742) (not (isEmpty!12082 lt!672742)))))

(declare-fun bs!403232 () Bool)

(assert (= bs!403232 d!533365))

(declare-fun m!2157303 () Bool)

(assert (=> bs!403232 m!2157303))

(assert (=> b!1744763 d!533365))

(declare-fun bm!110229 () Bool)

(declare-fun call!110234 () Option!3858)

(assert (=> bm!110229 (= call!110234 (maxPrefixOneRule!972 thiss!24550 (h!24579 rules!3447) lt!672750))))

(declare-fun b!1745354 () Bool)

(declare-fun e!1116976 () Option!3858)

(declare-fun lt!672980 () Option!3858)

(declare-fun lt!672981 () Option!3858)

(assert (=> b!1745354 (= e!1116976 (ite (and ((_ is None!3857) lt!672980) ((_ is None!3857) lt!672981)) None!3857 (ite ((_ is None!3857) lt!672981) lt!672980 (ite ((_ is None!3857) lt!672980) lt!672981 (ite (>= (size!15228 (_1!10813 (v!25294 lt!672980))) (size!15228 (_1!10813 (v!25294 lt!672981)))) lt!672980 lt!672981)))))))

(assert (=> b!1745354 (= lt!672980 call!110234)))

(assert (=> b!1745354 (= lt!672981 (maxPrefix!1600 thiss!24550 (t!162189 rules!3447) lt!672750))))

(declare-fun b!1745355 () Bool)

(declare-fun e!1116977 () Bool)

(declare-fun lt!672978 () Option!3858)

(assert (=> b!1745355 (= e!1116977 (contains!3441 rules!3447 (rule!5421 (_1!10813 (get!5784 lt!672978)))))))

(declare-fun b!1745356 () Bool)

(declare-fun res!784823 () Bool)

(assert (=> b!1745356 (=> (not res!784823) (not e!1116977))))

(assert (=> b!1745356 (= res!784823 (< (size!15230 (_2!10813 (get!5784 lt!672978))) (size!15230 lt!672750)))))

(declare-fun b!1745357 () Bool)

(declare-fun res!784824 () Bool)

(assert (=> b!1745357 (=> (not res!784824) (not e!1116977))))

(assert (=> b!1745357 (= res!784824 (= (list!7762 (charsOf!2066 (_1!10813 (get!5784 lt!672978)))) (originalCharacters!4231 (_1!10813 (get!5784 lt!672978)))))))

(declare-fun b!1745358 () Bool)

(assert (=> b!1745358 (= e!1116976 call!110234)))

(declare-fun d!533367 () Bool)

(declare-fun e!1116978 () Bool)

(assert (=> d!533367 e!1116978))

(declare-fun res!784822 () Bool)

(assert (=> d!533367 (=> res!784822 e!1116978)))

(assert (=> d!533367 (= res!784822 (isEmpty!12082 lt!672978))))

(assert (=> d!533367 (= lt!672978 e!1116976)))

(declare-fun c!284759 () Bool)

(assert (=> d!533367 (= c!284759 (and ((_ is Cons!19178) rules!3447) ((_ is Nil!19178) (t!162189 rules!3447))))))

(declare-fun lt!672979 () Unit!33249)

(declare-fun lt!672982 () Unit!33249)

(assert (=> d!533367 (= lt!672979 lt!672982)))

(assert (=> d!533367 (isPrefix!1658 lt!672750 lt!672750)))

(assert (=> d!533367 (= lt!672982 (lemmaIsPrefixRefl!1105 lt!672750 lt!672750))))

(assert (=> d!533367 (rulesValidInductive!1142 thiss!24550 rules!3447)))

(assert (=> d!533367 (= (maxPrefix!1600 thiss!24550 rules!3447 lt!672750) lt!672978)))

(declare-fun b!1745359 () Bool)

(declare-fun res!784826 () Bool)

(assert (=> b!1745359 (=> (not res!784826) (not e!1116977))))

(assert (=> b!1745359 (= res!784826 (= (++!5242 (list!7762 (charsOf!2066 (_1!10813 (get!5784 lt!672978)))) (_2!10813 (get!5784 lt!672978))) lt!672750))))

(declare-fun b!1745360 () Bool)

(declare-fun res!784825 () Bool)

(assert (=> b!1745360 (=> (not res!784825) (not e!1116977))))

(assert (=> b!1745360 (= res!784825 (matchR!2219 (regex!3417 (rule!5421 (_1!10813 (get!5784 lt!672978)))) (list!7762 (charsOf!2066 (_1!10813 (get!5784 lt!672978))))))))

(declare-fun b!1745361 () Bool)

(assert (=> b!1745361 (= e!1116978 e!1116977)))

(declare-fun res!784827 () Bool)

(assert (=> b!1745361 (=> (not res!784827) (not e!1116977))))

(assert (=> b!1745361 (= res!784827 (isDefined!3201 lt!672978))))

(declare-fun b!1745362 () Bool)

(declare-fun res!784821 () Bool)

(assert (=> b!1745362 (=> (not res!784821) (not e!1116977))))

(assert (=> b!1745362 (= res!784821 (= (value!107057 (_1!10813 (get!5784 lt!672978))) (apply!5218 (transformation!3417 (rule!5421 (_1!10813 (get!5784 lt!672978)))) (seqFromList!2387 (originalCharacters!4231 (_1!10813 (get!5784 lt!672978)))))))))

(assert (= (and d!533367 c!284759) b!1745358))

(assert (= (and d!533367 (not c!284759)) b!1745354))

(assert (= (or b!1745358 b!1745354) bm!110229))

(assert (= (and d!533367 (not res!784822)) b!1745361))

(assert (= (and b!1745361 res!784827) b!1745357))

(assert (= (and b!1745357 res!784824) b!1745356))

(assert (= (and b!1745356 res!784823) b!1745359))

(assert (= (and b!1745359 res!784826) b!1745362))

(assert (= (and b!1745362 res!784821) b!1745360))

(assert (= (and b!1745360 res!784825) b!1745355))

(declare-fun m!2157305 () Bool)

(assert (=> b!1745357 m!2157305))

(declare-fun m!2157307 () Bool)

(assert (=> b!1745357 m!2157307))

(assert (=> b!1745357 m!2157307))

(declare-fun m!2157309 () Bool)

(assert (=> b!1745357 m!2157309))

(declare-fun m!2157311 () Bool)

(assert (=> b!1745354 m!2157311))

(assert (=> b!1745360 m!2157305))

(assert (=> b!1745360 m!2157307))

(assert (=> b!1745360 m!2157307))

(assert (=> b!1745360 m!2157309))

(assert (=> b!1745360 m!2157309))

(declare-fun m!2157313 () Bool)

(assert (=> b!1745360 m!2157313))

(declare-fun m!2157315 () Bool)

(assert (=> d!533367 m!2157315))

(declare-fun m!2157317 () Bool)

(assert (=> d!533367 m!2157317))

(declare-fun m!2157319 () Bool)

(assert (=> d!533367 m!2157319))

(assert (=> d!533367 m!2157141))

(assert (=> b!1745356 m!2157305))

(declare-fun m!2157321 () Bool)

(assert (=> b!1745356 m!2157321))

(assert (=> b!1745356 m!2156807))

(assert (=> b!1745355 m!2157305))

(declare-fun m!2157323 () Bool)

(assert (=> b!1745355 m!2157323))

(declare-fun m!2157325 () Bool)

(assert (=> bm!110229 m!2157325))

(assert (=> b!1745362 m!2157305))

(declare-fun m!2157327 () Bool)

(assert (=> b!1745362 m!2157327))

(assert (=> b!1745362 m!2157327))

(declare-fun m!2157329 () Bool)

(assert (=> b!1745362 m!2157329))

(assert (=> b!1745359 m!2157305))

(assert (=> b!1745359 m!2157307))

(assert (=> b!1745359 m!2157307))

(assert (=> b!1745359 m!2157309))

(assert (=> b!1745359 m!2157309))

(declare-fun m!2157331 () Bool)

(assert (=> b!1745359 m!2157331))

(declare-fun m!2157333 () Bool)

(assert (=> b!1745361 m!2157333))

(assert (=> b!1744763 d!533367))

(declare-fun d!533369 () Bool)

(assert (=> d!533369 (= (list!7762 (charsOf!2066 token!523)) (list!7766 (c!284661 (charsOf!2066 token!523))))))

(declare-fun bs!403233 () Bool)

(assert (= bs!403233 d!533369))

(declare-fun m!2157335 () Bool)

(assert (=> bs!403233 m!2157335))

(assert (=> b!1744763 d!533369))

(declare-fun d!533371 () Bool)

(declare-fun lt!672983 () BalanceConc!12702)

(assert (=> d!533371 (= (list!7762 lt!672983) (originalCharacters!4231 token!523))))

(assert (=> d!533371 (= lt!672983 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 token!523))) (value!107057 token!523)))))

(assert (=> d!533371 (= (charsOf!2066 token!523) lt!672983)))

(declare-fun b_lambda!55933 () Bool)

(assert (=> (not b_lambda!55933) (not d!533371)))

(assert (=> d!533371 t!162206))

(declare-fun b_and!129899 () Bool)

(assert (= b_and!129887 (and (=> t!162206 result!125572) b_and!129899)))

(assert (=> d!533371 t!162208))

(declare-fun b_and!129901 () Bool)

(assert (= b_and!129889 (and (=> t!162208 result!125574) b_and!129901)))

(assert (=> d!533371 t!162210))

(declare-fun b_and!129903 () Bool)

(assert (= b_and!129891 (and (=> t!162210 result!125576) b_and!129903)))

(declare-fun m!2157337 () Bool)

(assert (=> d!533371 m!2157337))

(assert (=> d!533371 m!2157249))

(assert (=> b!1744763 d!533371))

(declare-fun d!533373 () Bool)

(declare-fun lt!672986 () Bool)

(declare-fun content!2755 (List!19248) (InoxSet Rule!6634))

(assert (=> d!533373 (= lt!672986 (select (content!2755 rules!3447) rule!422))))

(declare-fun e!1116983 () Bool)

(assert (=> d!533373 (= lt!672986 e!1116983)))

(declare-fun res!784833 () Bool)

(assert (=> d!533373 (=> (not res!784833) (not e!1116983))))

(assert (=> d!533373 (= res!784833 ((_ is Cons!19178) rules!3447))))

(assert (=> d!533373 (= (contains!3441 rules!3447 rule!422) lt!672986)))

(declare-fun b!1745367 () Bool)

(declare-fun e!1116984 () Bool)

(assert (=> b!1745367 (= e!1116983 e!1116984)))

(declare-fun res!784832 () Bool)

(assert (=> b!1745367 (=> res!784832 e!1116984)))

(assert (=> b!1745367 (= res!784832 (= (h!24579 rules!3447) rule!422))))

(declare-fun b!1745368 () Bool)

(assert (=> b!1745368 (= e!1116984 (contains!3441 (t!162189 rules!3447) rule!422))))

(assert (= (and d!533373 res!784833) b!1745367))

(assert (= (and b!1745367 (not res!784832)) b!1745368))

(declare-fun m!2157339 () Bool)

(assert (=> d!533373 m!2157339))

(declare-fun m!2157341 () Bool)

(assert (=> d!533373 m!2157341))

(declare-fun m!2157343 () Bool)

(assert (=> b!1745368 m!2157343))

(assert (=> b!1744784 d!533373))

(declare-fun d!533375 () Bool)

(assert (=> d!533375 (= (inv!24847 (tag!3761 rule!422)) (= (mod (str.len (value!107056 (tag!3761 rule!422))) 2) 0))))

(assert (=> b!1744762 d!533375))

(declare-fun d!533377 () Bool)

(declare-fun res!784834 () Bool)

(declare-fun e!1116985 () Bool)

(assert (=> d!533377 (=> (not res!784834) (not e!1116985))))

(assert (=> d!533377 (= res!784834 (semiInverseModEq!1353 (toChars!4787 (transformation!3417 rule!422)) (toValue!4928 (transformation!3417 rule!422))))))

(assert (=> d!533377 (= (inv!24852 (transformation!3417 rule!422)) e!1116985)))

(declare-fun b!1745369 () Bool)

(assert (=> b!1745369 (= e!1116985 (equivClasses!1294 (toChars!4787 (transformation!3417 rule!422)) (toValue!4928 (transformation!3417 rule!422))))))

(assert (= (and d!533377 res!784834) b!1745369))

(declare-fun m!2157345 () Bool)

(assert (=> d!533377 m!2157345))

(declare-fun m!2157347 () Bool)

(assert (=> b!1745369 m!2157347))

(assert (=> b!1744762 d!533377))

(declare-fun b!1745383 () Bool)

(declare-fun e!1116988 () Bool)

(declare-fun tp!496694 () Bool)

(declare-fun tp!496690 () Bool)

(assert (=> b!1745383 (= e!1116988 (and tp!496694 tp!496690))))

(declare-fun b!1745380 () Bool)

(assert (=> b!1745380 (= e!1116988 tp_is_empty!7733)))

(assert (=> b!1744783 (= tp!496613 e!1116988)))

(declare-fun b!1745381 () Bool)

(declare-fun tp!496692 () Bool)

(declare-fun tp!496693 () Bool)

(assert (=> b!1745381 (= e!1116988 (and tp!496692 tp!496693))))

(declare-fun b!1745382 () Bool)

(declare-fun tp!496691 () Bool)

(assert (=> b!1745382 (= e!1116988 tp!496691)))

(assert (= (and b!1744783 ((_ is ElementMatch!4745) (regex!3417 (h!24579 rules!3447)))) b!1745380))

(assert (= (and b!1744783 ((_ is Concat!8253) (regex!3417 (h!24579 rules!3447)))) b!1745381))

(assert (= (and b!1744783 ((_ is Star!4745) (regex!3417 (h!24579 rules!3447)))) b!1745382))

(assert (= (and b!1744783 ((_ is Union!4745) (regex!3417 (h!24579 rules!3447)))) b!1745383))

(declare-fun b!1745387 () Bool)

(declare-fun e!1116989 () Bool)

(declare-fun tp!496699 () Bool)

(declare-fun tp!496695 () Bool)

(assert (=> b!1745387 (= e!1116989 (and tp!496699 tp!496695))))

(declare-fun b!1745384 () Bool)

(assert (=> b!1745384 (= e!1116989 tp_is_empty!7733)))

(assert (=> b!1744765 (= tp!496615 e!1116989)))

(declare-fun b!1745385 () Bool)

(declare-fun tp!496697 () Bool)

(declare-fun tp!496698 () Bool)

(assert (=> b!1745385 (= e!1116989 (and tp!496697 tp!496698))))

(declare-fun b!1745386 () Bool)

(declare-fun tp!496696 () Bool)

(assert (=> b!1745386 (= e!1116989 tp!496696)))

(assert (= (and b!1744765 ((_ is ElementMatch!4745) (regex!3417 (rule!5421 token!523)))) b!1745384))

(assert (= (and b!1744765 ((_ is Concat!8253) (regex!3417 (rule!5421 token!523)))) b!1745385))

(assert (= (and b!1744765 ((_ is Star!4745) (regex!3417 (rule!5421 token!523)))) b!1745386))

(assert (= (and b!1744765 ((_ is Union!4745) (regex!3417 (rule!5421 token!523)))) b!1745387))

(declare-fun b!1745396 () Bool)

(declare-fun tp!496708 () Bool)

(declare-fun e!1116994 () Bool)

(declare-fun tp!496706 () Bool)

(assert (=> b!1745396 (= e!1116994 (and (inv!24854 (left!15333 (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (value!107057 (_1!10813 lt!672748)))))) tp!496708 (inv!24854 (right!15663 (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (value!107057 (_1!10813 lt!672748)))))) tp!496706))))

(declare-fun b!1745398 () Bool)

(declare-fun e!1116995 () Bool)

(declare-fun tp!496707 () Bool)

(assert (=> b!1745398 (= e!1116995 tp!496707)))

(declare-fun b!1745397 () Bool)

(declare-fun inv!24861 (IArray!12763) Bool)

(assert (=> b!1745397 (= e!1116994 (and (inv!24861 (xs!9255 (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (value!107057 (_1!10813 lt!672748)))))) e!1116995))))

(assert (=> b!1744806 (= tp!496624 (and (inv!24854 (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (value!107057 (_1!10813 lt!672748))))) e!1116994))))

(assert (= (and b!1744806 ((_ is Node!6379) (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (value!107057 (_1!10813 lt!672748)))))) b!1745396))

(assert (= b!1745397 b!1745398))

(assert (= (and b!1744806 ((_ is Leaf!9308) (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (value!107057 (_1!10813 lt!672748)))))) b!1745397))

(declare-fun m!2157349 () Bool)

(assert (=> b!1745396 m!2157349))

(declare-fun m!2157351 () Bool)

(assert (=> b!1745396 m!2157351))

(declare-fun m!2157353 () Bool)

(assert (=> b!1745397 m!2157353))

(assert (=> b!1744806 m!2156539))

(declare-fun tp!496711 () Bool)

(declare-fun tp!496709 () Bool)

(declare-fun b!1745399 () Bool)

(declare-fun e!1116996 () Bool)

(assert (=> b!1745399 (= e!1116996 (and (inv!24854 (left!15333 (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744))))) tp!496711 (inv!24854 (right!15663 (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744))))) tp!496709))))

(declare-fun b!1745401 () Bool)

(declare-fun e!1116997 () Bool)

(declare-fun tp!496710 () Bool)

(assert (=> b!1745401 (= e!1116997 tp!496710)))

(declare-fun b!1745400 () Bool)

(assert (=> b!1745400 (= e!1116996 (and (inv!24861 (xs!9255 (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744))))) e!1116997))))

(assert (=> b!1744803 (= tp!496623 (and (inv!24854 (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744)))) e!1116996))))

(assert (= (and b!1744803 ((_ is Node!6379) (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744))))) b!1745399))

(assert (= b!1745400 b!1745401))

(assert (= (and b!1744803 ((_ is Leaf!9308) (c!284661 (dynLambda!9079 (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) (dynLambda!9080 (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))) lt!672744))))) b!1745400))

(declare-fun m!2157355 () Bool)

(assert (=> b!1745399 m!2157355))

(declare-fun m!2157357 () Bool)

(assert (=> b!1745399 m!2157357))

(declare-fun m!2157359 () Bool)

(assert (=> b!1745400 m!2157359))

(assert (=> b!1744803 m!2156533))

(declare-fun b!1745406 () Bool)

(declare-fun e!1117000 () Bool)

(declare-fun tp!496714 () Bool)

(assert (=> b!1745406 (= e!1117000 (and tp_is_empty!7733 tp!496714))))

(assert (=> b!1744764 (= tp!496611 e!1117000)))

(assert (= (and b!1744764 ((_ is Cons!19177) (originalCharacters!4231 token!523))) b!1745406))

(declare-fun b!1745407 () Bool)

(declare-fun e!1117001 () Bool)

(declare-fun tp!496715 () Bool)

(assert (=> b!1745407 (= e!1117001 (and tp_is_empty!7733 tp!496715))))

(assert (=> b!1744785 (= tp!496618 e!1117001)))

(assert (= (and b!1744785 ((_ is Cons!19177) (t!162188 suffix!1421))) b!1745407))

(declare-fun b!1745418 () Bool)

(declare-fun b_free!48027 () Bool)

(declare-fun b_next!48731 () Bool)

(assert (=> b!1745418 (= b_free!48027 (not b_next!48731))))

(declare-fun tb!104395 () Bool)

(declare-fun t!162213 () Bool)

(assert (=> (and b!1745418 (= (toValue!4928 (transformation!3417 (h!24579 (t!162189 rules!3447)))) (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748))))) t!162213) tb!104395))

(declare-fun result!125586 () Bool)

(assert (= result!125586 result!125536))

(assert (=> b!1744766 t!162213))

(assert (=> d!533345 t!162213))

(declare-fun b_and!129905 () Bool)

(declare-fun tp!496724 () Bool)

(assert (=> b!1745418 (= tp!496724 (and (=> t!162213 result!125586) b_and!129905))))

(declare-fun b_free!48029 () Bool)

(declare-fun b_next!48733 () Bool)

(assert (=> b!1745418 (= b_free!48029 (not b_next!48733))))

(declare-fun tb!104397 () Bool)

(declare-fun t!162215 () Bool)

(assert (=> (and b!1745418 (= (toChars!4787 (transformation!3417 (h!24579 (t!162189 rules!3447)))) (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748))))) t!162215) tb!104397))

(declare-fun result!125588 () Bool)

(assert (= result!125588 result!125544))

(assert (=> d!533311 t!162215))

(assert (=> b!1744775 t!162215))

(declare-fun t!162217 () Bool)

(declare-fun tb!104399 () Bool)

(assert (=> (and b!1745418 (= (toChars!4787 (transformation!3417 (h!24579 (t!162189 rules!3447)))) (toChars!4787 (transformation!3417 (rule!5421 token!523)))) t!162217) tb!104399))

(declare-fun result!125590 () Bool)

(assert (= result!125590 result!125572))

(assert (=> b!1745305 t!162217))

(declare-fun t!162219 () Bool)

(declare-fun tb!104401 () Bool)

(assert (=> (and b!1745418 (= (toChars!4787 (transformation!3417 (h!24579 (t!162189 rules!3447)))) (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748))))) t!162219) tb!104401))

(declare-fun result!125592 () Bool)

(assert (= result!125592 result!125528))

(assert (=> b!1744766 t!162219))

(assert (=> d!533345 t!162219))

(assert (=> d!533371 t!162217))

(declare-fun b_and!129907 () Bool)

(declare-fun tp!496725 () Bool)

(assert (=> b!1745418 (= tp!496725 (and (=> t!162219 result!125592) (=> t!162217 result!125590) (=> t!162215 result!125588) b_and!129907))))

(declare-fun e!1117012 () Bool)

(assert (=> b!1745418 (= e!1117012 (and tp!496724 tp!496725))))

(declare-fun b!1745417 () Bool)

(declare-fun e!1117010 () Bool)

(declare-fun tp!496727 () Bool)

(assert (=> b!1745417 (= e!1117010 (and tp!496727 (inv!24847 (tag!3761 (h!24579 (t!162189 rules!3447)))) (inv!24852 (transformation!3417 (h!24579 (t!162189 rules!3447)))) e!1117012))))

(declare-fun b!1745416 () Bool)

(declare-fun e!1117011 () Bool)

(declare-fun tp!496726 () Bool)

(assert (=> b!1745416 (= e!1117011 (and e!1117010 tp!496726))))

(assert (=> b!1744769 (= tp!496614 e!1117011)))

(assert (= b!1745417 b!1745418))

(assert (= b!1745416 b!1745417))

(assert (= (and b!1744769 ((_ is Cons!19178) (t!162189 rules!3447))) b!1745416))

(declare-fun m!2157361 () Bool)

(assert (=> b!1745417 m!2157361))

(declare-fun m!2157363 () Bool)

(assert (=> b!1745417 m!2157363))

(declare-fun b!1745422 () Bool)

(declare-fun e!1117014 () Bool)

(declare-fun tp!496732 () Bool)

(declare-fun tp!496728 () Bool)

(assert (=> b!1745422 (= e!1117014 (and tp!496732 tp!496728))))

(declare-fun b!1745419 () Bool)

(assert (=> b!1745419 (= e!1117014 tp_is_empty!7733)))

(assert (=> b!1744762 (= tp!496612 e!1117014)))

(declare-fun b!1745420 () Bool)

(declare-fun tp!496730 () Bool)

(declare-fun tp!496731 () Bool)

(assert (=> b!1745420 (= e!1117014 (and tp!496730 tp!496731))))

(declare-fun b!1745421 () Bool)

(declare-fun tp!496729 () Bool)

(assert (=> b!1745421 (= e!1117014 tp!496729)))

(assert (= (and b!1744762 ((_ is ElementMatch!4745) (regex!3417 rule!422))) b!1745419))

(assert (= (and b!1744762 ((_ is Concat!8253) (regex!3417 rule!422))) b!1745420))

(assert (= (and b!1744762 ((_ is Star!4745) (regex!3417 rule!422))) b!1745421))

(assert (= (and b!1744762 ((_ is Union!4745) (regex!3417 rule!422))) b!1745422))

(declare-fun b_lambda!55935 () Bool)

(assert (= b_lambda!55899 (or (and b!1744786 b_free!48013 (= (toChars!4787 (transformation!3417 rule!422)) (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))))) (and b!1744772 b_free!48017 (= (toChars!4787 (transformation!3417 (rule!5421 token!523))) (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))))) (and b!1744778 b_free!48021 (= (toChars!4787 (transformation!3417 (h!24579 rules!3447))) (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))))) (and b!1745418 b_free!48029 (= (toChars!4787 (transformation!3417 (h!24579 (t!162189 rules!3447)))) (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))))) b_lambda!55935)))

(declare-fun b_lambda!55937 () Bool)

(assert (= b_lambda!55901 (or (and b!1744786 b_free!48011 (= (toValue!4928 (transformation!3417 rule!422)) (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))))) (and b!1744772 b_free!48015 (= (toValue!4928 (transformation!3417 (rule!5421 token!523))) (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))))) (and b!1744778 b_free!48019 (= (toValue!4928 (transformation!3417 (h!24579 rules!3447))) (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))))) (and b!1745418 b_free!48027 (= (toValue!4928 (transformation!3417 (h!24579 (t!162189 rules!3447)))) (toValue!4928 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))))) b_lambda!55937)))

(declare-fun b_lambda!55939 () Bool)

(assert (= b_lambda!55933 (or (and b!1744786 b_free!48013 (= (toChars!4787 (transformation!3417 rule!422)) (toChars!4787 (transformation!3417 (rule!5421 token!523))))) (and b!1744772 b_free!48017) (and b!1744778 b_free!48021 (= (toChars!4787 (transformation!3417 (h!24579 rules!3447))) (toChars!4787 (transformation!3417 (rule!5421 token!523))))) (and b!1745418 b_free!48029 (= (toChars!4787 (transformation!3417 (h!24579 (t!162189 rules!3447)))) (toChars!4787 (transformation!3417 (rule!5421 token!523))))) b_lambda!55939)))

(declare-fun b_lambda!55941 () Bool)

(assert (= b_lambda!55927 (or (and b!1744786 b_free!48013 (= (toChars!4787 (transformation!3417 rule!422)) (toChars!4787 (transformation!3417 (rule!5421 token!523))))) (and b!1744772 b_free!48017) (and b!1744778 b_free!48021 (= (toChars!4787 (transformation!3417 (h!24579 rules!3447))) (toChars!4787 (transformation!3417 (rule!5421 token!523))))) (and b!1745418 b_free!48029 (= (toChars!4787 (transformation!3417 (h!24579 (t!162189 rules!3447)))) (toChars!4787 (transformation!3417 (rule!5421 token!523))))) b_lambda!55941)))

(declare-fun b_lambda!55943 () Bool)

(assert (= b_lambda!55903 (or (and b!1744786 b_free!48013 (= (toChars!4787 (transformation!3417 rule!422)) (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))))) (and b!1744772 b_free!48017 (= (toChars!4787 (transformation!3417 (rule!5421 token!523))) (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))))) (and b!1744778 b_free!48021 (= (toChars!4787 (transformation!3417 (h!24579 rules!3447))) (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))))) (and b!1745418 b_free!48029 (= (toChars!4787 (transformation!3417 (h!24579 (t!162189 rules!3447)))) (toChars!4787 (transformation!3417 (rule!5421 (_1!10813 lt!672748)))))) b_lambda!55943)))

(check-sat (not d!533223) (not d!533289) (not b!1745298) (not b_lambda!55931) (not b_lambda!55935) (not b!1745236) (not d!533221) (not b!1745113) (not bm!110226) (not b!1745386) (not b!1745307) (not b!1745344) (not b!1745416) (not bm!110227) (not d!533305) (not b!1744918) b_and!129893 (not b!1744990) (not b!1745239) (not b!1745381) (not b!1745240) b_and!129905 (not b!1744959) (not b!1745401) (not d!533369) (not b!1744988) (not b!1745263) (not b!1744993) (not b!1745252) (not b!1745387) (not b!1745273) (not d!533371) (not d!533323) (not d!533363) (not b!1745321) (not d!533237) (not d!533321) (not b!1745357) (not b!1745399) (not d!533213) (not d!533373) (not d!533347) (not b!1745305) (not d!533345) (not b!1745256) (not b!1744968) (not b_lambda!55943) (not d!533311) (not b!1745242) (not d!533227) (not d!533309) (not b!1745112) (not b!1745284) b_and!129901 (not b!1745296) (not b!1745351) (not b!1745323) (not b!1745348) (not bm!110229) (not b!1745316) (not b!1744989) (not b_next!48731) (not b!1745290) (not b!1745397) (not d!533367) (not b!1745329) (not d!533313) (not d!533235) (not b_next!48717) (not b!1745234) (not b!1745182) (not b!1744998) (not b!1745271) (not b!1745253) (not d!533365) (not d!533303) (not d!533319) (not b_lambda!55939) b_and!129907 b_and!129899 (not b!1744960) (not b!1744803) (not b!1745295) b_and!129903 (not b!1744977) (not b!1745276) (not d!533219) (not b!1745286) (not b!1745398) (not d!533349) (not b_next!48719) (not b!1745317) (not b!1745181) (not b!1745349) (not b!1745237) (not b!1745306) (not b_next!48715) (not b_next!48723) (not b!1745264) (not b!1745354) (not b!1744972) (not d!533337) (not b!1745282) (not b!1745346) (not b!1744964) (not b_lambda!55925) tp_is_empty!7733 (not tb!104389) (not b!1745345) (not d!533217) (not b!1744966) (not b!1745257) (not b!1744992) (not b!1745369) (not b!1745299) (not b!1745407) (not b!1744806) (not b!1745241) (not b_next!48733) (not d!533343) (not b!1745277) (not b_lambda!55937) (not b!1745362) (not b!1744996) (not b_next!48721) (not d!533329) (not bm!110217) (not b!1745400) (not b!1745383) (not d!533377) (not b!1744994) (not b_next!48725) (not d!533331) (not b!1745422) (not b!1745359) (not b!1745360) (not d!533209) (not b!1745420) (not b!1745356) (not b!1745325) (not b!1744997) (not b_lambda!55929) (not b!1745183) b_and!129895 (not d!533327) (not b!1745235) (not b!1745310) (not b_lambda!55941) (not b!1745406) (not b!1745417) (not b!1745361) (not b!1745340) b_and!129897 (not b!1745368) (not b!1745421) (not b!1745353) (not b!1745355) (not b!1745111) (not bm!110228) (not d!533339) (not d!533357) (not b!1745278) (not d!533307) (not b!1745382) (not b!1745396) (not b!1745385) (not b!1745342))
(check-sat b_and!129893 b_and!129905 b_and!129901 (not b_next!48731) (not b_next!48717) b_and!129903 (not b_next!48719) (not b_next!48725) b_and!129895 b_and!129897 b_and!129907 b_and!129899 (not b_next!48715) (not b_next!48723) (not b_next!48721) (not b_next!48733))
