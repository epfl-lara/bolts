; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!348658 () Bool)

(assert start!348658)

(declare-fun b!3700721 () Bool)

(declare-fun b_free!98617 () Bool)

(declare-fun b_next!99321 () Bool)

(assert (=> b!3700721 (= b_free!98617 (not b_next!99321))))

(declare-fun tp!1124972 () Bool)

(declare-fun b_and!276727 () Bool)

(assert (=> b!3700721 (= tp!1124972 b_and!276727)))

(declare-fun b_free!98619 () Bool)

(declare-fun b_next!99323 () Bool)

(assert (=> b!3700721 (= b_free!98619 (not b_next!99323))))

(declare-fun tp!1124980 () Bool)

(declare-fun b_and!276729 () Bool)

(assert (=> b!3700721 (= tp!1124980 b_and!276729)))

(declare-fun b!3700716 () Bool)

(declare-fun b_free!98621 () Bool)

(declare-fun b_next!99325 () Bool)

(assert (=> b!3700716 (= b_free!98621 (not b_next!99325))))

(declare-fun tp!1124974 () Bool)

(declare-fun b_and!276731 () Bool)

(assert (=> b!3700716 (= tp!1124974 b_and!276731)))

(declare-fun b_free!98623 () Bool)

(declare-fun b_next!99327 () Bool)

(assert (=> b!3700716 (= b_free!98623 (not b_next!99327))))

(declare-fun tp!1124979 () Bool)

(declare-fun b_and!276733 () Bool)

(assert (=> b!3700716 (= tp!1124979 b_and!276733)))

(declare-fun b!3700713 () Bool)

(declare-fun res!1505293 () Bool)

(declare-fun e!2291870 () Bool)

(assert (=> b!3700713 (=> (not res!1505293) (not e!2291870))))

(declare-datatypes ((LexerInterface!5565 0))(
  ( (LexerInterfaceExt!5562 (__x!24629 Int)) (Lexer!5563) )
))
(declare-fun thiss!25322 () LexerInterface!5565)

(declare-datatypes ((List!39450 0))(
  ( (Nil!39326) (Cons!39326 (h!44746 (_ BitVec 16)) (t!301995 List!39450)) )
))
(declare-datatypes ((TokenValue!6206 0))(
  ( (FloatLiteralValue!12412 (text!43887 List!39450)) (TokenValueExt!6205 (__x!24630 Int)) (Broken!31030 (value!190744 List!39450)) (Object!6329) (End!6206) (Def!6206) (Underscore!6206) (Match!6206) (Else!6206) (Error!6206) (Case!6206) (If!6206) (Extends!6206) (Abstract!6206) (Class!6206) (Val!6206) (DelimiterValue!12412 (del!6266 List!39450)) (KeywordValue!6212 (value!190745 List!39450)) (CommentValue!12412 (value!190746 List!39450)) (WhitespaceValue!12412 (value!190747 List!39450)) (IndentationValue!6206 (value!190748 List!39450)) (String!44363) (Int32!6206) (Broken!31031 (value!190749 List!39450)) (Boolean!6207) (Unit!57293) (OperatorValue!6209 (op!6266 List!39450)) (IdentifierValue!12412 (value!190750 List!39450)) (IdentifierValue!12413 (value!190751 List!39450)) (WhitespaceValue!12413 (value!190752 List!39450)) (True!12412) (False!12412) (Broken!31032 (value!190753 List!39450)) (Broken!31033 (value!190754 List!39450)) (True!12413) (RightBrace!6206) (RightBracket!6206) (Colon!6206) (Null!6206) (Comma!6206) (LeftBracket!6206) (False!12413) (LeftBrace!6206) (ImaginaryLiteralValue!6206 (text!43888 List!39450)) (StringLiteralValue!18618 (value!190755 List!39450)) (EOFValue!6206 (value!190756 List!39450)) (IdentValue!6206 (value!190757 List!39450)) (DelimiterValue!12413 (value!190758 List!39450)) (DedentValue!6206 (value!190759 List!39450)) (NewLineValue!6206 (value!190760 List!39450)) (IntegerValue!18618 (value!190761 (_ BitVec 32)) (text!43889 List!39450)) (IntegerValue!18619 (value!190762 Int) (text!43890 List!39450)) (Times!6206) (Or!6206) (Equal!6206) (Minus!6206) (Broken!31034 (value!190763 List!39450)) (And!6206) (Div!6206) (LessEqual!6206) (Mod!6206) (Concat!16941) (Not!6206) (Plus!6206) (SpaceValue!6206 (value!190764 List!39450)) (IntegerValue!18620 (value!190765 Int) (text!43891 List!39450)) (StringLiteralValue!18619 (text!43892 List!39450)) (FloatLiteralValue!12413 (text!43893 List!39450)) (BytesLiteralValue!6206 (value!190766 List!39450)) (CommentValue!12413 (value!190767 List!39450)) (StringLiteralValue!18620 (value!190768 List!39450)) (ErrorTokenValue!6206 (msg!6267 List!39450)) )
))
(declare-datatypes ((C!21656 0))(
  ( (C!21657 (val!12876 Int)) )
))
(declare-datatypes ((Regex!10735 0))(
  ( (ElementMatch!10735 (c!639460 C!21656)) (Concat!16942 (regOne!21982 Regex!10735) (regTwo!21982 Regex!10735)) (EmptyExpr!10735) (Star!10735 (reg!11064 Regex!10735)) (EmptyLang!10735) (Union!10735 (regOne!21983 Regex!10735) (regTwo!21983 Regex!10735)) )
))
(declare-datatypes ((String!44364 0))(
  ( (String!44365 (value!190769 String)) )
))
(declare-datatypes ((List!39451 0))(
  ( (Nil!39327) (Cons!39327 (h!44747 C!21656) (t!301996 List!39451)) )
))
(declare-datatypes ((IArray!24151 0))(
  ( (IArray!24152 (innerList!12133 List!39451)) )
))
(declare-datatypes ((Conc!12073 0))(
  ( (Node!12073 (left!30611 Conc!12073) (right!30941 Conc!12073) (csize!24376 Int) (cheight!12284 Int)) (Leaf!18672 (xs!15275 IArray!24151) (csize!24377 Int)) (Empty!12073) )
))
(declare-datatypes ((BalanceConc!23760 0))(
  ( (BalanceConc!23761 (c!639461 Conc!12073)) )
))
(declare-datatypes ((TokenValueInjection!11840 0))(
  ( (TokenValueInjection!11841 (toValue!8312 Int) (toChars!8171 Int)) )
))
(declare-datatypes ((Rule!11752 0))(
  ( (Rule!11753 (regex!5976 Regex!10735) (tag!6808 String!44364) (isSeparator!5976 Bool) (transformation!5976 TokenValueInjection!11840)) )
))
(declare-datatypes ((List!39452 0))(
  ( (Nil!39328) (Cons!39328 (h!44748 Rule!11752) (t!301997 List!39452)) )
))
(declare-fun rules!3598 () List!39452)

(declare-fun rulesInvariant!4962 (LexerInterface!5565 List!39452) Bool)

(assert (=> b!3700713 (= res!1505293 (rulesInvariant!4962 thiss!25322 rules!3598))))

(declare-fun b!3700714 () Bool)

(declare-fun res!1505287 () Bool)

(declare-fun e!2291875 () Bool)

(assert (=> b!3700714 (=> (not res!1505287) (not e!2291875))))

(get-info :version)

(assert (=> b!3700714 (= res!1505287 ((_ is Cons!39328) rules!3598))))

(declare-fun b!3700715 () Bool)

(declare-fun e!2291863 () Bool)

(assert (=> b!3700715 (= e!2291863 (not (rulesInvariant!4962 thiss!25322 (Cons!39328 (h!44748 rules!3598) (t!301997 rules!3598)))))))

(declare-fun e!2291865 () Bool)

(assert (=> b!3700715 e!2291865))

(declare-fun res!1505290 () Bool)

(assert (=> b!3700715 (=> (not res!1505290) (not e!2291865))))

(declare-datatypes ((Option!8515 0))(
  ( (None!8514) (Some!8514 (v!38474 Rule!11752)) )
))
(declare-fun lt!1295022 () Option!8515)

(declare-fun isDefined!6704 (Option!8515) Bool)

(assert (=> b!3700715 (= res!1505290 (isDefined!6704 lt!1295022))))

(declare-datatypes ((Token!11306 0))(
  ( (Token!11307 (value!190770 TokenValue!6206) (rule!8844 Rule!11752) (size!29988 Int) (originalCharacters!6684 List!39451)) )
))
(declare-fun token!544 () Token!11306)

(declare-fun getRuleFromTag!1516 (LexerInterface!5565 List!39452 String!44364) Option!8515)

(assert (=> b!3700715 (= lt!1295022 (getRuleFromTag!1516 thiss!25322 (t!301997 rules!3598) (tag!6808 (rule!8844 token!544))))))

(declare-fun input!3172 () List!39451)

(declare-datatypes ((Unit!57294 0))(
  ( (Unit!57295) )
))
(declare-fun lt!1295026 () Unit!57294)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1502 (LexerInterface!5565 List!39452 List!39451 Token!11306) Unit!57294)

(assert (=> b!3700715 (= lt!1295026 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1502 thiss!25322 (t!301997 rules!3598) input!3172 token!544))))

(assert (=> b!3700715 (rulesInvariant!4962 thiss!25322 (t!301997 rules!3598))))

(declare-fun lt!1295025 () Unit!57294)

(declare-fun lemmaInvariantOnRulesThenOnTail!672 (LexerInterface!5565 Rule!11752 List!39452) Unit!57294)

(assert (=> b!3700715 (= lt!1295025 (lemmaInvariantOnRulesThenOnTail!672 thiss!25322 (h!44748 rules!3598) (t!301997 rules!3598)))))

(declare-fun e!2291876 () Bool)

(assert (=> b!3700716 (= e!2291876 (and tp!1124974 tp!1124979))))

(declare-fun tp!1124976 () Bool)

(declare-fun b!3700717 () Bool)

(declare-fun e!2291874 () Bool)

(declare-fun e!2291869 () Bool)

(declare-fun inv!52850 (String!44364) Bool)

(declare-fun inv!52853 (TokenValueInjection!11840) Bool)

(assert (=> b!3700717 (= e!2291874 (and tp!1124976 (inv!52850 (tag!6808 (h!44748 rules!3598))) (inv!52853 (transformation!5976 (h!44748 rules!3598))) e!2291869))))

(declare-fun b!3700718 () Bool)

(declare-fun e!2291868 () Bool)

(declare-datatypes ((tuple2!39188 0))(
  ( (tuple2!39189 (_1!22728 Token!11306) (_2!22728 List!39451)) )
))
(declare-datatypes ((Option!8516 0))(
  ( (None!8515) (Some!8515 (v!38475 tuple2!39188)) )
))
(declare-fun lt!1295024 () Option!8516)

(declare-fun get!13090 (Option!8516) tuple2!39188)

(assert (=> b!3700718 (= e!2291868 (not (= (_1!22728 (get!13090 lt!1295024)) token!544)))))

(declare-fun b!3700719 () Bool)

(declare-fun res!1505289 () Bool)

(assert (=> b!3700719 (=> (not res!1505289) (not e!2291870))))

(declare-fun isEmpty!23438 (List!39452) Bool)

(assert (=> b!3700719 (= res!1505289 (not (isEmpty!23438 rules!3598)))))

(declare-fun b!3700720 () Bool)

(assert (=> b!3700720 (= e!2291875 e!2291863)))

(declare-fun res!1505291 () Bool)

(assert (=> b!3700720 (=> (not res!1505291) (not e!2291863))))

(assert (=> b!3700720 (= res!1505291 e!2291868)))

(declare-fun res!1505284 () Bool)

(assert (=> b!3700720 (=> res!1505284 e!2291868)))

(declare-fun isDefined!6705 (Option!8516) Bool)

(assert (=> b!3700720 (= res!1505284 (not (isDefined!6705 lt!1295024)))))

(declare-fun maxPrefixOneRule!2197 (LexerInterface!5565 Rule!11752 List!39451) Option!8516)

(assert (=> b!3700720 (= lt!1295024 (maxPrefixOneRule!2197 thiss!25322 (h!44748 rules!3598) input!3172))))

(assert (=> b!3700721 (= e!2291869 (and tp!1124972 tp!1124980))))

(declare-fun b!3700722 () Bool)

(declare-fun e!2291867 () Bool)

(assert (=> b!3700722 (= e!2291865 e!2291867)))

(declare-fun res!1505292 () Bool)

(assert (=> b!3700722 (=> (not res!1505292) (not e!2291867))))

(declare-fun lt!1295023 () Rule!11752)

(declare-fun matchR!5268 (Regex!10735 List!39451) Bool)

(declare-fun list!14687 (BalanceConc!23760) List!39451)

(declare-fun charsOf!3965 (Token!11306) BalanceConc!23760)

(assert (=> b!3700722 (= res!1505292 (matchR!5268 (regex!5976 lt!1295023) (list!14687 (charsOf!3965 token!544))))))

(declare-fun get!13091 (Option!8515) Rule!11752)

(assert (=> b!3700722 (= lt!1295023 (get!13091 lt!1295022))))

(declare-fun b!3700723 () Bool)

(declare-fun res!1505286 () Bool)

(assert (=> b!3700723 (=> (not res!1505286) (not e!2291863))))

(assert (=> b!3700723 (= res!1505286 (not (isEmpty!23438 (t!301997 rules!3598))))))

(declare-fun b!3700724 () Bool)

(assert (=> b!3700724 (= e!2291867 (= (rule!8844 token!544) lt!1295023))))

(declare-fun tp!1124977 () Bool)

(declare-fun b!3700725 () Bool)

(declare-fun e!2291873 () Bool)

(assert (=> b!3700725 (= e!2291873 (and tp!1124977 (inv!52850 (tag!6808 (rule!8844 token!544))) (inv!52853 (transformation!5976 (rule!8844 token!544))) e!2291876))))

(declare-fun b!3700726 () Bool)

(declare-fun e!2291871 () Bool)

(declare-fun tp!1124978 () Bool)

(assert (=> b!3700726 (= e!2291871 (and e!2291874 tp!1124978))))

(declare-fun res!1505283 () Bool)

(assert (=> start!348658 (=> (not res!1505283) (not e!2291870))))

(assert (=> start!348658 (= res!1505283 ((_ is Lexer!5563) thiss!25322))))

(assert (=> start!348658 e!2291870))

(assert (=> start!348658 true))

(assert (=> start!348658 e!2291871))

(declare-fun e!2291877 () Bool)

(declare-fun inv!52854 (Token!11306) Bool)

(assert (=> start!348658 (and (inv!52854 token!544) e!2291877)))

(declare-fun e!2291866 () Bool)

(assert (=> start!348658 e!2291866))

(declare-fun tp!1124973 () Bool)

(declare-fun b!3700727 () Bool)

(declare-fun inv!21 (TokenValue!6206) Bool)

(assert (=> b!3700727 (= e!2291877 (and (inv!21 (value!190770 token!544)) e!2291873 tp!1124973))))

(declare-fun b!3700728 () Bool)

(declare-fun res!1505285 () Bool)

(assert (=> b!3700728 (=> (not res!1505285) (not e!2291875))))

(declare-fun lt!1295021 () Option!8516)

(assert (=> b!3700728 (= res!1505285 (= (_1!22728 (get!13090 lt!1295021)) token!544))))

(declare-fun b!3700729 () Bool)

(assert (=> b!3700729 (= e!2291870 e!2291875)))

(declare-fun res!1505288 () Bool)

(assert (=> b!3700729 (=> (not res!1505288) (not e!2291875))))

(assert (=> b!3700729 (= res!1505288 (isDefined!6705 lt!1295021))))

(declare-fun maxPrefix!3087 (LexerInterface!5565 List!39452 List!39451) Option!8516)

(assert (=> b!3700729 (= lt!1295021 (maxPrefix!3087 thiss!25322 rules!3598 input!3172))))

(declare-fun b!3700730 () Bool)

(declare-fun tp_is_empty!18545 () Bool)

(declare-fun tp!1124975 () Bool)

(assert (=> b!3700730 (= e!2291866 (and tp_is_empty!18545 tp!1124975))))

(assert (= (and start!348658 res!1505283) b!3700713))

(assert (= (and b!3700713 res!1505293) b!3700719))

(assert (= (and b!3700719 res!1505289) b!3700729))

(assert (= (and b!3700729 res!1505288) b!3700728))

(assert (= (and b!3700728 res!1505285) b!3700714))

(assert (= (and b!3700714 res!1505287) b!3700720))

(assert (= (and b!3700720 (not res!1505284)) b!3700718))

(assert (= (and b!3700720 res!1505291) b!3700723))

(assert (= (and b!3700723 res!1505286) b!3700715))

(assert (= (and b!3700715 res!1505290) b!3700722))

(assert (= (and b!3700722 res!1505292) b!3700724))

(assert (= b!3700717 b!3700721))

(assert (= b!3700726 b!3700717))

(assert (= (and start!348658 ((_ is Cons!39328) rules!3598)) b!3700726))

(assert (= b!3700725 b!3700716))

(assert (= b!3700727 b!3700725))

(assert (= start!348658 b!3700727))

(assert (= (and start!348658 ((_ is Cons!39327) input!3172)) b!3700730))

(declare-fun m!4211859 () Bool)

(assert (=> start!348658 m!4211859))

(declare-fun m!4211861 () Bool)

(assert (=> b!3700728 m!4211861))

(declare-fun m!4211863 () Bool)

(assert (=> b!3700729 m!4211863))

(declare-fun m!4211865 () Bool)

(assert (=> b!3700729 m!4211865))

(declare-fun m!4211867 () Bool)

(assert (=> b!3700723 m!4211867))

(declare-fun m!4211869 () Bool)

(assert (=> b!3700725 m!4211869))

(declare-fun m!4211871 () Bool)

(assert (=> b!3700725 m!4211871))

(declare-fun m!4211873 () Bool)

(assert (=> b!3700715 m!4211873))

(declare-fun m!4211875 () Bool)

(assert (=> b!3700715 m!4211875))

(declare-fun m!4211877 () Bool)

(assert (=> b!3700715 m!4211877))

(declare-fun m!4211879 () Bool)

(assert (=> b!3700715 m!4211879))

(declare-fun m!4211881 () Bool)

(assert (=> b!3700715 m!4211881))

(declare-fun m!4211883 () Bool)

(assert (=> b!3700715 m!4211883))

(declare-fun m!4211885 () Bool)

(assert (=> b!3700718 m!4211885))

(declare-fun m!4211887 () Bool)

(assert (=> b!3700727 m!4211887))

(declare-fun m!4211889 () Bool)

(assert (=> b!3700720 m!4211889))

(declare-fun m!4211891 () Bool)

(assert (=> b!3700720 m!4211891))

(declare-fun m!4211893 () Bool)

(assert (=> b!3700717 m!4211893))

(declare-fun m!4211895 () Bool)

(assert (=> b!3700717 m!4211895))

(declare-fun m!4211897 () Bool)

(assert (=> b!3700722 m!4211897))

(assert (=> b!3700722 m!4211897))

(declare-fun m!4211899 () Bool)

(assert (=> b!3700722 m!4211899))

(assert (=> b!3700722 m!4211899))

(declare-fun m!4211901 () Bool)

(assert (=> b!3700722 m!4211901))

(declare-fun m!4211903 () Bool)

(assert (=> b!3700722 m!4211903))

(declare-fun m!4211905 () Bool)

(assert (=> b!3700719 m!4211905))

(declare-fun m!4211907 () Bool)

(assert (=> b!3700713 m!4211907))

(check-sat (not b!3700728) (not b!3700729) (not start!348658) (not b_next!99325) (not b!3700722) (not b!3700719) (not b_next!99321) (not b!3700730) (not b!3700715) (not b!3700725) (not b_next!99327) (not b!3700726) tp_is_empty!18545 (not b!3700717) b_and!276731 (not b!3700727) b_and!276727 (not b_next!99323) (not b!3700713) (not b!3700720) (not b!3700723) (not b!3700718) b_and!276733 b_and!276729)
(check-sat (not b_next!99325) b_and!276731 (not b_next!99321) b_and!276727 (not b_next!99323) (not b_next!99327) b_and!276733 b_and!276729)
