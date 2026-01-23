; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!351378 () Bool)

(assert start!351378)

(declare-fun b!3742832 () Bool)

(declare-fun b_free!99173 () Bool)

(declare-fun b_next!99877 () Bool)

(assert (=> b!3742832 (= b_free!99173 (not b_next!99877))))

(declare-fun tp!1140784 () Bool)

(declare-fun b_and!277407 () Bool)

(assert (=> b!3742832 (= tp!1140784 b_and!277407)))

(declare-fun b_free!99175 () Bool)

(declare-fun b_next!99879 () Bool)

(assert (=> b!3742832 (= b_free!99175 (not b_next!99879))))

(declare-fun tp!1140779 () Bool)

(declare-fun b_and!277409 () Bool)

(assert (=> b!3742832 (= tp!1140779 b_and!277409)))

(declare-fun b!3742839 () Bool)

(declare-fun b_free!99177 () Bool)

(declare-fun b_next!99881 () Bool)

(assert (=> b!3742839 (= b_free!99177 (not b_next!99881))))

(declare-fun tp!1140775 () Bool)

(declare-fun b_and!277411 () Bool)

(assert (=> b!3742839 (= tp!1140775 b_and!277411)))

(declare-fun b_free!99179 () Bool)

(declare-fun b_next!99883 () Bool)

(assert (=> b!3742839 (= b_free!99179 (not b_next!99883))))

(declare-fun tp!1140778 () Bool)

(declare-fun b_and!277413 () Bool)

(assert (=> b!3742839 (= tp!1140778 b_and!277413)))

(declare-fun b!3742828 () Bool)

(declare-fun b_free!99181 () Bool)

(declare-fun b_next!99885 () Bool)

(assert (=> b!3742828 (= b_free!99181 (not b_next!99885))))

(declare-fun tp!1140782 () Bool)

(declare-fun b_and!277415 () Bool)

(assert (=> b!3742828 (= tp!1140782 b_and!277415)))

(declare-fun b_free!99183 () Bool)

(declare-fun b_next!99887 () Bool)

(assert (=> b!3742828 (= b_free!99183 (not b_next!99887))))

(declare-fun tp!1140788 () Bool)

(declare-fun b_and!277417 () Bool)

(assert (=> b!3742828 (= tp!1140788 b_and!277417)))

(declare-fun b!3742835 () Bool)

(declare-fun b_free!99185 () Bool)

(declare-fun b_next!99889 () Bool)

(assert (=> b!3742835 (= b_free!99185 (not b_next!99889))))

(declare-fun tp!1140777 () Bool)

(declare-fun b_and!277419 () Bool)

(assert (=> b!3742835 (= tp!1140777 b_and!277419)))

(declare-fun b_free!99187 () Bool)

(declare-fun b_next!99891 () Bool)

(assert (=> b!3742835 (= b_free!99187 (not b_next!99891))))

(declare-fun tp!1140781 () Bool)

(declare-fun b_and!277421 () Bool)

(assert (=> b!3742835 (= tp!1140781 b_and!277421)))

(declare-fun b!3742824 () Bool)

(declare-fun res!1517095 () Bool)

(declare-fun e!2314060 () Bool)

(assert (=> b!3742824 (=> (not res!1517095) (not e!2314060))))

(declare-datatypes ((List!39830 0))(
  ( (Nil!39706) (Cons!39706 (h!45126 (_ BitVec 16)) (t!302513 List!39830)) )
))
(declare-datatypes ((TokenValue!6272 0))(
  ( (FloatLiteralValue!12544 (text!44349 List!39830)) (TokenValueExt!6271 (__x!24761 Int)) (Broken!31360 (value!192787 List!39830)) (Object!6395) (End!6272) (Def!6272) (Underscore!6272) (Match!6272) (Else!6272) (Error!6272) (Case!6272) (If!6272) (Extends!6272) (Abstract!6272) (Class!6272) (Val!6272) (DelimiterValue!12544 (del!6332 List!39830)) (KeywordValue!6278 (value!192788 List!39830)) (CommentValue!12544 (value!192789 List!39830)) (WhitespaceValue!12544 (value!192790 List!39830)) (IndentationValue!6272 (value!192791 List!39830)) (String!44985) (Int32!6272) (Broken!31361 (value!192792 List!39830)) (Boolean!6273) (Unit!57607) (OperatorValue!6275 (op!6332 List!39830)) (IdentifierValue!12544 (value!192793 List!39830)) (IdentifierValue!12545 (value!192794 List!39830)) (WhitespaceValue!12545 (value!192795 List!39830)) (True!12544) (False!12544) (Broken!31362 (value!192796 List!39830)) (Broken!31363 (value!192797 List!39830)) (True!12545) (RightBrace!6272) (RightBracket!6272) (Colon!6272) (Null!6272) (Comma!6272) (LeftBracket!6272) (False!12545) (LeftBrace!6272) (ImaginaryLiteralValue!6272 (text!44350 List!39830)) (StringLiteralValue!18816 (value!192798 List!39830)) (EOFValue!6272 (value!192799 List!39830)) (IdentValue!6272 (value!192800 List!39830)) (DelimiterValue!12545 (value!192801 List!39830)) (DedentValue!6272 (value!192802 List!39830)) (NewLineValue!6272 (value!192803 List!39830)) (IntegerValue!18816 (value!192804 (_ BitVec 32)) (text!44351 List!39830)) (IntegerValue!18817 (value!192805 Int) (text!44352 List!39830)) (Times!6272) (Or!6272) (Equal!6272) (Minus!6272) (Broken!31364 (value!192806 List!39830)) (And!6272) (Div!6272) (LessEqual!6272) (Mod!6272) (Concat!17219) (Not!6272) (Plus!6272) (SpaceValue!6272 (value!192807 List!39830)) (IntegerValue!18818 (value!192808 Int) (text!44353 List!39830)) (StringLiteralValue!18817 (text!44354 List!39830)) (FloatLiteralValue!12545 (text!44355 List!39830)) (BytesLiteralValue!6272 (value!192809 List!39830)) (CommentValue!12545 (value!192810 List!39830)) (StringLiteralValue!18818 (value!192811 List!39830)) (ErrorTokenValue!6272 (msg!6333 List!39830)) )
))
(declare-datatypes ((C!22080 0))(
  ( (C!22081 (val!13088 Int)) )
))
(declare-datatypes ((List!39831 0))(
  ( (Nil!39707) (Cons!39707 (h!45127 C!22080) (t!302514 List!39831)) )
))
(declare-datatypes ((IArray!24283 0))(
  ( (IArray!24284 (innerList!12199 List!39831)) )
))
(declare-datatypes ((Conc!12139 0))(
  ( (Node!12139 (left!30791 Conc!12139) (right!31121 Conc!12139) (csize!24508 Int) (cheight!12350 Int)) (Leaf!18844 (xs!15341 IArray!24283) (csize!24509 Int)) (Empty!12139) )
))
(declare-datatypes ((Regex!10947 0))(
  ( (ElementMatch!10947 (c!648474 C!22080)) (Concat!17220 (regOne!22406 Regex!10947) (regTwo!22406 Regex!10947)) (EmptyExpr!10947) (Star!10947 (reg!11276 Regex!10947)) (EmptyLang!10947) (Union!10947 (regOne!22407 Regex!10947) (regTwo!22407 Regex!10947)) )
))
(declare-datatypes ((String!44986 0))(
  ( (String!44987 (value!192812 String)) )
))
(declare-datatypes ((BalanceConc!23892 0))(
  ( (BalanceConc!23893 (c!648475 Conc!12139)) )
))
(declare-datatypes ((TokenValueInjection!11972 0))(
  ( (TokenValueInjection!11973 (toValue!8386 Int) (toChars!8245 Int)) )
))
(declare-datatypes ((Rule!11884 0))(
  ( (Rule!11885 (regex!6042 Regex!10947) (tag!6902 String!44986) (isSeparator!6042 Bool) (transformation!6042 TokenValueInjection!11972)) )
))
(declare-datatypes ((List!39832 0))(
  ( (Nil!39708) (Cons!39708 (h!45128 Rule!11884) (t!302515 List!39832)) )
))
(declare-fun rulesRec!198 () List!39832)

(declare-fun rNSep!159 () Rule!11884)

(get-info :version)

(assert (=> b!3742824 (= res!1517095 (and ((_ is Cons!39708) rulesRec!198) (= (h!45128 rulesRec!198) rNSep!159)))))

(declare-fun b!3742825 () Bool)

(declare-fun res!1517093 () Bool)

(assert (=> b!3742825 (=> (not res!1517093) (not e!2314060))))

(declare-fun contains!8041 (List!39832 Rule!11884) Bool)

(assert (=> b!3742825 (= res!1517093 (contains!8041 rulesRec!198 rNSep!159))))

(declare-fun b!3742826 () Bool)

(declare-fun res!1517097 () Bool)

(assert (=> b!3742826 (=> (not res!1517097) (not e!2314060))))

(declare-fun rules!4189 () List!39832)

(assert (=> b!3742826 (= res!1517097 (contains!8041 rules!4189 rNSep!159))))

(declare-fun b!3742827 () Bool)

(declare-fun res!1517096 () Bool)

(assert (=> b!3742827 (=> (not res!1517096) (not e!2314060))))

(declare-fun c!6900 () C!22080)

(declare-fun contains!8042 (List!39831 C!22080) Bool)

(declare-fun usedCharacters!1210 (Regex!10947) List!39831)

(assert (=> b!3742827 (= res!1517096 (contains!8042 (usedCharacters!1210 (regex!6042 rNSep!159)) c!6900))))

(declare-fun e!2314057 () Bool)

(assert (=> b!3742828 (= e!2314057 (and tp!1140782 tp!1140788))))

(declare-fun res!1517100 () Bool)

(assert (=> start!351378 (=> (not res!1517100) (not e!2314060))))

(declare-datatypes ((LexerInterface!5631 0))(
  ( (LexerInterfaceExt!5628 (__x!24762 Int)) (Lexer!5629) )
))
(declare-fun thiss!27143 () LexerInterface!5631)

(assert (=> start!351378 (= res!1517100 ((_ is Lexer!5629) thiss!27143))))

(assert (=> start!351378 e!2314060))

(assert (=> start!351378 true))

(declare-fun e!2314056 () Bool)

(assert (=> start!351378 e!2314056))

(declare-fun e!2314061 () Bool)

(assert (=> start!351378 e!2314061))

(declare-fun e!2314058 () Bool)

(assert (=> start!351378 e!2314058))

(declare-fun tp_is_empty!18909 () Bool)

(assert (=> start!351378 tp_is_empty!18909))

(declare-fun e!2314062 () Bool)

(assert (=> start!351378 e!2314062))

(declare-fun tp!1140780 () Bool)

(declare-fun b!3742829 () Bool)

(declare-fun e!2314055 () Bool)

(declare-fun inv!53262 (String!44986) Bool)

(declare-fun inv!53264 (TokenValueInjection!11972) Bool)

(assert (=> b!3742829 (= e!2314062 (and tp!1140780 (inv!53262 (tag!6902 rNSep!159)) (inv!53264 (transformation!6042 rNSep!159)) e!2314055))))

(declare-fun b!3742830 () Bool)

(declare-fun e!2314067 () Bool)

(declare-fun tp!1140776 () Bool)

(assert (=> b!3742830 (= e!2314058 (and e!2314067 tp!1140776))))

(declare-fun b!3742831 () Bool)

(declare-fun e!2314063 () Bool)

(declare-fun tp!1140783 () Bool)

(assert (=> b!3742831 (= e!2314056 (and e!2314063 tp!1140783))))

(assert (=> b!3742832 (= e!2314055 (and tp!1140784 tp!1140779))))

(declare-fun b!3742833 () Bool)

(declare-fun tp!1140787 () Bool)

(declare-fun rSep!159 () Rule!11884)

(assert (=> b!3742833 (= e!2314061 (and tp!1140787 (inv!53262 (tag!6902 rSep!159)) (inv!53264 (transformation!6042 rSep!159)) e!2314057))))

(declare-fun b!3742834 () Bool)

(declare-fun tp!1140786 () Bool)

(declare-fun e!2314065 () Bool)

(assert (=> b!3742834 (= e!2314063 (and tp!1140786 (inv!53262 (tag!6902 (h!45128 rules!4189))) (inv!53264 (transformation!6042 (h!45128 rules!4189))) e!2314065))))

(assert (=> b!3742835 (= e!2314065 (and tp!1140777 tp!1140781))))

(declare-fun b!3742836 () Bool)

(declare-fun res!1517099 () Bool)

(assert (=> b!3742836 (=> (not res!1517099) (not e!2314060))))

(assert (=> b!3742836 (= res!1517099 (contains!8041 rules!4189 rSep!159))))

(declare-fun b!3742837 () Bool)

(declare-fun res!1517092 () Bool)

(assert (=> b!3742837 (=> (not res!1517092) (not e!2314060))))

(assert (=> b!3742837 (= res!1517092 (and (not (isSeparator!6042 rNSep!159)) (isSeparator!6042 rSep!159)))))

(declare-fun b!3742838 () Bool)

(declare-fun res!1517094 () Bool)

(assert (=> b!3742838 (=> (not res!1517094) (not e!2314060))))

(declare-fun rulesInvariant!5028 (LexerInterface!5631 List!39832) Bool)

(assert (=> b!3742838 (= res!1517094 (rulesInvariant!5028 thiss!27143 rules!4189))))

(declare-fun e!2314054 () Bool)

(assert (=> b!3742839 (= e!2314054 (and tp!1140775 tp!1140778))))

(declare-fun b!3742840 () Bool)

(assert (=> b!3742840 (= e!2314060 false)))

(declare-fun lt!1299276 () Bool)

(declare-fun ruleDisjointCharsFromAllFromOtherType!923 (Rule!11884 List!39832) Bool)

(assert (=> b!3742840 (= lt!1299276 (ruleDisjointCharsFromAllFromOtherType!923 rNSep!159 rules!4189))))

(declare-fun tp!1140785 () Bool)

(declare-fun b!3742841 () Bool)

(assert (=> b!3742841 (= e!2314067 (and tp!1140785 (inv!53262 (tag!6902 (h!45128 rulesRec!198))) (inv!53264 (transformation!6042 (h!45128 rulesRec!198))) e!2314054))))

(declare-fun b!3742842 () Bool)

(declare-fun res!1517098 () Bool)

(assert (=> b!3742842 (=> (not res!1517098) (not e!2314060))))

(declare-fun sepAndNonSepRulesDisjointChars!2020 (List!39832 List!39832) Bool)

(assert (=> b!3742842 (= res!1517098 (sepAndNonSepRulesDisjointChars!2020 rules!4189 rulesRec!198))))

(assert (= (and start!351378 res!1517100) b!3742838))

(assert (= (and b!3742838 res!1517094) b!3742836))

(assert (= (and b!3742836 res!1517099) b!3742825))

(assert (= (and b!3742825 res!1517093) b!3742826))

(assert (= (and b!3742826 res!1517097) b!3742837))

(assert (= (and b!3742837 res!1517092) b!3742827))

(assert (= (and b!3742827 res!1517096) b!3742842))

(assert (= (and b!3742842 res!1517098) b!3742824))

(assert (= (and b!3742824 res!1517095) b!3742840))

(assert (= b!3742834 b!3742835))

(assert (= b!3742831 b!3742834))

(assert (= (and start!351378 ((_ is Cons!39708) rules!4189)) b!3742831))

(assert (= b!3742833 b!3742828))

(assert (= start!351378 b!3742833))

(assert (= b!3742841 b!3742839))

(assert (= b!3742830 b!3742841))

(assert (= (and start!351378 ((_ is Cons!39708) rulesRec!198)) b!3742830))

(assert (= b!3742829 b!3742832))

(assert (= start!351378 b!3742829))

(declare-fun m!4236813 () Bool)

(assert (=> b!3742834 m!4236813))

(declare-fun m!4236815 () Bool)

(assert (=> b!3742834 m!4236815))

(declare-fun m!4236817 () Bool)

(assert (=> b!3742829 m!4236817))

(declare-fun m!4236819 () Bool)

(assert (=> b!3742829 m!4236819))

(declare-fun m!4236821 () Bool)

(assert (=> b!3742838 m!4236821))

(declare-fun m!4236823 () Bool)

(assert (=> b!3742825 m!4236823))

(declare-fun m!4236825 () Bool)

(assert (=> b!3742833 m!4236825))

(declare-fun m!4236827 () Bool)

(assert (=> b!3742833 m!4236827))

(declare-fun m!4236829 () Bool)

(assert (=> b!3742840 m!4236829))

(declare-fun m!4236831 () Bool)

(assert (=> b!3742841 m!4236831))

(declare-fun m!4236833 () Bool)

(assert (=> b!3742841 m!4236833))

(declare-fun m!4236835 () Bool)

(assert (=> b!3742836 m!4236835))

(declare-fun m!4236837 () Bool)

(assert (=> b!3742826 m!4236837))

(declare-fun m!4236839 () Bool)

(assert (=> b!3742842 m!4236839))

(declare-fun m!4236841 () Bool)

(assert (=> b!3742827 m!4236841))

(assert (=> b!3742827 m!4236841))

(declare-fun m!4236843 () Bool)

(assert (=> b!3742827 m!4236843))

(check-sat (not b!3742825) (not b_next!99885) (not b!3742831) (not b!3742842) b_and!277421 (not b!3742838) b_and!277417 (not b!3742836) (not b!3742833) (not b!3742841) (not b_next!99889) (not b!3742827) b_and!277413 b_and!277415 (not b!3742826) (not b!3742830) (not b!3742834) (not b_next!99879) b_and!277407 b_and!277411 b_and!277409 tp_is_empty!18909 (not b!3742840) (not b_next!99883) (not b!3742829) (not b_next!99891) (not b_next!99877) (not b_next!99887) (not b_next!99881) b_and!277419)
(check-sat (not b_next!99885) (not b_next!99883) b_and!277421 b_and!277417 (not b_next!99891) (not b_next!99889) b_and!277413 b_and!277415 (not b_next!99879) b_and!277407 b_and!277411 b_and!277409 (not b_next!99877) (not b_next!99887) (not b_next!99881) b_and!277419)
