; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!348662 () Bool)

(assert start!348662)

(declare-fun b!3700829 () Bool)

(declare-fun b_free!98633 () Bool)

(declare-fun b_next!99337 () Bool)

(assert (=> b!3700829 (= b_free!98633 (not b_next!99337))))

(declare-fun tp!1125027 () Bool)

(declare-fun b_and!276743 () Bool)

(assert (=> b!3700829 (= tp!1125027 b_and!276743)))

(declare-fun b_free!98635 () Bool)

(declare-fun b_next!99339 () Bool)

(assert (=> b!3700829 (= b_free!98635 (not b_next!99339))))

(declare-fun tp!1125028 () Bool)

(declare-fun b_and!276745 () Bool)

(assert (=> b!3700829 (= tp!1125028 b_and!276745)))

(declare-fun b!3700836 () Bool)

(declare-fun b_free!98637 () Bool)

(declare-fun b_next!99341 () Bool)

(assert (=> b!3700836 (= b_free!98637 (not b_next!99341))))

(declare-fun tp!1125030 () Bool)

(declare-fun b_and!276747 () Bool)

(assert (=> b!3700836 (= tp!1125030 b_and!276747)))

(declare-fun b_free!98639 () Bool)

(declare-fun b_next!99343 () Bool)

(assert (=> b!3700836 (= b_free!98639 (not b_next!99343))))

(declare-fun tp!1125033 () Bool)

(declare-fun b_and!276749 () Bool)

(assert (=> b!3700836 (= tp!1125033 b_and!276749)))

(declare-fun b!3700826 () Bool)

(declare-fun e!2291970 () Bool)

(declare-datatypes ((List!39456 0))(
  ( (Nil!39332) (Cons!39332 (h!44752 (_ BitVec 16)) (t!302001 List!39456)) )
))
(declare-datatypes ((TokenValue!6208 0))(
  ( (FloatLiteralValue!12416 (text!43901 List!39456)) (TokenValueExt!6207 (__x!24633 Int)) (Broken!31040 (value!190801 List!39456)) (Object!6331) (End!6208) (Def!6208) (Underscore!6208) (Match!6208) (Else!6208) (Error!6208) (Case!6208) (If!6208) (Extends!6208) (Abstract!6208) (Class!6208) (Val!6208) (DelimiterValue!12416 (del!6268 List!39456)) (KeywordValue!6214 (value!190802 List!39456)) (CommentValue!12416 (value!190803 List!39456)) (WhitespaceValue!12416 (value!190804 List!39456)) (IndentationValue!6208 (value!190805 List!39456)) (String!44373) (Int32!6208) (Broken!31041 (value!190806 List!39456)) (Boolean!6209) (Unit!57299) (OperatorValue!6211 (op!6268 List!39456)) (IdentifierValue!12416 (value!190807 List!39456)) (IdentifierValue!12417 (value!190808 List!39456)) (WhitespaceValue!12417 (value!190809 List!39456)) (True!12416) (False!12416) (Broken!31042 (value!190810 List!39456)) (Broken!31043 (value!190811 List!39456)) (True!12417) (RightBrace!6208) (RightBracket!6208) (Colon!6208) (Null!6208) (Comma!6208) (LeftBracket!6208) (False!12417) (LeftBrace!6208) (ImaginaryLiteralValue!6208 (text!43902 List!39456)) (StringLiteralValue!18624 (value!190812 List!39456)) (EOFValue!6208 (value!190813 List!39456)) (IdentValue!6208 (value!190814 List!39456)) (DelimiterValue!12417 (value!190815 List!39456)) (DedentValue!6208 (value!190816 List!39456)) (NewLineValue!6208 (value!190817 List!39456)) (IntegerValue!18624 (value!190818 (_ BitVec 32)) (text!43903 List!39456)) (IntegerValue!18625 (value!190819 Int) (text!43904 List!39456)) (Times!6208) (Or!6208) (Equal!6208) (Minus!6208) (Broken!31044 (value!190820 List!39456)) (And!6208) (Div!6208) (LessEqual!6208) (Mod!6208) (Concat!16945) (Not!6208) (Plus!6208) (SpaceValue!6208 (value!190821 List!39456)) (IntegerValue!18626 (value!190822 Int) (text!43905 List!39456)) (StringLiteralValue!18625 (text!43906 List!39456)) (FloatLiteralValue!12417 (text!43907 List!39456)) (BytesLiteralValue!6208 (value!190823 List!39456)) (CommentValue!12417 (value!190824 List!39456)) (StringLiteralValue!18626 (value!190825 List!39456)) (ErrorTokenValue!6208 (msg!6269 List!39456)) )
))
(declare-datatypes ((C!21660 0))(
  ( (C!21661 (val!12878 Int)) )
))
(declare-datatypes ((List!39457 0))(
  ( (Nil!39333) (Cons!39333 (h!44753 C!21660) (t!302002 List!39457)) )
))
(declare-datatypes ((IArray!24155 0))(
  ( (IArray!24156 (innerList!12135 List!39457)) )
))
(declare-datatypes ((Conc!12075 0))(
  ( (Node!12075 (left!30614 Conc!12075) (right!30944 Conc!12075) (csize!24380 Int) (cheight!12286 Int)) (Leaf!18675 (xs!15277 IArray!24155) (csize!24381 Int)) (Empty!12075) )
))
(declare-datatypes ((BalanceConc!23764 0))(
  ( (BalanceConc!23765 (c!639466 Conc!12075)) )
))
(declare-datatypes ((Regex!10737 0))(
  ( (ElementMatch!10737 (c!639467 C!21660)) (Concat!16946 (regOne!21986 Regex!10737) (regTwo!21986 Regex!10737)) (EmptyExpr!10737) (Star!10737 (reg!11066 Regex!10737)) (EmptyLang!10737) (Union!10737 (regOne!21987 Regex!10737) (regTwo!21987 Regex!10737)) )
))
(declare-datatypes ((String!44374 0))(
  ( (String!44375 (value!190826 String)) )
))
(declare-datatypes ((TokenValueInjection!11844 0))(
  ( (TokenValueInjection!11845 (toValue!8314 Int) (toChars!8173 Int)) )
))
(declare-datatypes ((Rule!11756 0))(
  ( (Rule!11757 (regex!5978 Regex!10737) (tag!6810 String!44374) (isSeparator!5978 Bool) (transformation!5978 TokenValueInjection!11844)) )
))
(declare-datatypes ((Token!11310 0))(
  ( (Token!11311 (value!190827 TokenValue!6208) (rule!8846 Rule!11756) (size!29990 Int) (originalCharacters!6686 List!39457)) )
))
(declare-datatypes ((tuple2!39192 0))(
  ( (tuple2!39193 (_1!22730 Token!11310) (_2!22730 List!39457)) )
))
(declare-datatypes ((Option!8519 0))(
  ( (None!8518) (Some!8518 (v!38478 tuple2!39192)) )
))
(declare-fun lt!1295064 () Option!8519)

(declare-fun token!544 () Token!11310)

(declare-fun get!13095 (Option!8519) tuple2!39192)

(assert (=> b!3700826 (= e!2291970 (not (= (_1!22730 (get!13095 lt!1295064)) token!544)))))

(declare-fun b!3700828 () Bool)

(declare-fun e!2291973 () Bool)

(declare-fun e!2291979 () Bool)

(declare-fun tp!1125034 () Bool)

(assert (=> b!3700828 (= e!2291973 (and e!2291979 tp!1125034))))

(declare-fun e!2291969 () Bool)

(assert (=> b!3700829 (= e!2291969 (and tp!1125027 tp!1125028))))

(declare-fun b!3700830 () Bool)

(declare-fun e!2291978 () Bool)

(declare-fun lt!1295065 () Bool)

(assert (=> b!3700830 (= e!2291978 lt!1295065)))

(declare-fun e!2291966 () Bool)

(declare-fun e!2291967 () Bool)

(declare-fun b!3700831 () Bool)

(declare-fun tp!1125031 () Bool)

(declare-fun inv!21 (TokenValue!6208) Bool)

(assert (=> b!3700831 (= e!2291966 (and (inv!21 (value!190827 token!544)) e!2291967 tp!1125031))))

(declare-fun b!3700832 () Bool)

(declare-fun e!2291972 () Bool)

(declare-fun e!2291976 () Bool)

(assert (=> b!3700832 (= e!2291972 e!2291976)))

(declare-fun res!1505355 () Bool)

(assert (=> b!3700832 (=> (not res!1505355) (not e!2291976))))

(declare-fun lt!1295063 () Option!8519)

(declare-fun isDefined!6708 (Option!8519) Bool)

(assert (=> b!3700832 (= res!1505355 (isDefined!6708 lt!1295063))))

(declare-fun input!3172 () List!39457)

(declare-datatypes ((List!39458 0))(
  ( (Nil!39334) (Cons!39334 (h!44754 Rule!11756) (t!302003 List!39458)) )
))
(declare-fun rules!3598 () List!39458)

(declare-datatypes ((LexerInterface!5567 0))(
  ( (LexerInterfaceExt!5564 (__x!24634 Int)) (Lexer!5565) )
))
(declare-fun thiss!25322 () LexerInterface!5567)

(declare-fun maxPrefix!3089 (LexerInterface!5567 List!39458 List!39457) Option!8519)

(assert (=> b!3700832 (= lt!1295063 (maxPrefix!3089 thiss!25322 rules!3598 input!3172))))

(declare-fun b!3700833 () Bool)

(declare-fun e!2291968 () Bool)

(declare-fun e!2291965 () Bool)

(assert (=> b!3700833 (= e!2291968 e!2291965)))

(declare-fun res!1505356 () Bool)

(assert (=> b!3700833 (=> (not res!1505356) (not e!2291965))))

(declare-fun lt!1295066 () Rule!11756)

(declare-fun matchR!5270 (Regex!10737 List!39457) Bool)

(declare-fun list!14689 (BalanceConc!23764) List!39457)

(declare-fun charsOf!3967 (Token!11310) BalanceConc!23764)

(assert (=> b!3700833 (= res!1505356 (matchR!5270 (regex!5978 lt!1295066) (list!14689 (charsOf!3967 token!544))))))

(declare-datatypes ((Option!8520 0))(
  ( (None!8519) (Some!8519 (v!38479 Rule!11756)) )
))
(declare-fun lt!1295067 () Option!8520)

(declare-fun get!13096 (Option!8520) Rule!11756)

(assert (=> b!3700833 (= lt!1295066 (get!13096 lt!1295067))))

(declare-fun res!1505363 () Bool)

(assert (=> start!348662 (=> (not res!1505363) (not e!2291972))))

(get-info :version)

(assert (=> start!348662 (= res!1505363 ((_ is Lexer!5565) thiss!25322))))

(assert (=> start!348662 e!2291972))

(assert (=> start!348662 true))

(assert (=> start!348662 e!2291973))

(declare-fun inv!52860 (Token!11310) Bool)

(assert (=> start!348662 (and (inv!52860 token!544) e!2291966)))

(declare-fun e!2291964 () Bool)

(assert (=> start!348662 e!2291964))

(declare-fun b!3700827 () Bool)

(declare-fun res!1505357 () Bool)

(assert (=> b!3700827 (=> (not res!1505357) (not e!2291972))))

(declare-fun rulesInvariant!4964 (LexerInterface!5567 List!39458) Bool)

(assert (=> b!3700827 (= res!1505357 (rulesInvariant!4964 thiss!25322 rules!3598))))

(declare-fun b!3700834 () Bool)

(assert (=> b!3700834 (= e!2291965 (= (rule!8846 token!544) lt!1295066))))

(declare-fun b!3700835 () Bool)

(declare-fun res!1505361 () Bool)

(assert (=> b!3700835 (=> (not res!1505361) (not e!2291976))))

(assert (=> b!3700835 (= res!1505361 ((_ is Cons!39334) rules!3598))))

(declare-fun e!2291980 () Bool)

(assert (=> b!3700836 (= e!2291980 (and tp!1125030 tp!1125033))))

(declare-fun b!3700837 () Bool)

(declare-fun res!1505365 () Bool)

(declare-fun e!2291977 () Bool)

(assert (=> b!3700837 (=> (not res!1505365) (not e!2291977))))

(declare-fun isEmpty!23440 (List!39458) Bool)

(assert (=> b!3700837 (= res!1505365 (not (isEmpty!23440 (t!302003 rules!3598))))))

(declare-fun b!3700838 () Bool)

(declare-fun tp!1125032 () Bool)

(declare-fun inv!52857 (String!44374) Bool)

(declare-fun inv!52861 (TokenValueInjection!11844) Bool)

(assert (=> b!3700838 (= e!2291967 (and tp!1125032 (inv!52857 (tag!6810 (rule!8846 token!544))) (inv!52861 (transformation!5978 (rule!8846 token!544))) e!2291969))))

(declare-fun b!3700839 () Bool)

(declare-fun res!1505362 () Bool)

(assert (=> b!3700839 (=> (not res!1505362) (not e!2291972))))

(assert (=> b!3700839 (= res!1505362 (not (isEmpty!23440 rules!3598)))))

(declare-fun tp!1125026 () Bool)

(declare-fun b!3700840 () Bool)

(assert (=> b!3700840 (= e!2291979 (and tp!1125026 (inv!52857 (tag!6810 (h!44754 rules!3598))) (inv!52861 (transformation!5978 (h!44754 rules!3598))) e!2291980))))

(declare-fun b!3700841 () Bool)

(assert (=> b!3700841 (= e!2291977 (not e!2291978))))

(declare-fun res!1505354 () Bool)

(assert (=> b!3700841 (=> res!1505354 e!2291978)))

(assert (=> b!3700841 (= res!1505354 (not (rulesInvariant!4964 thiss!25322 (Cons!39334 (h!44754 rules!3598) (t!302003 rules!3598)))))))

(assert (=> b!3700841 e!2291968))

(declare-fun res!1505360 () Bool)

(assert (=> b!3700841 (=> (not res!1505360) (not e!2291968))))

(assert (=> b!3700841 (= res!1505360 lt!1295065)))

(declare-fun isDefined!6709 (Option!8520) Bool)

(assert (=> b!3700841 (= lt!1295065 (isDefined!6709 lt!1295067))))

(declare-fun getRuleFromTag!1518 (LexerInterface!5567 List!39458 String!44374) Option!8520)

(assert (=> b!3700841 (= lt!1295067 (getRuleFromTag!1518 thiss!25322 (t!302003 rules!3598) (tag!6810 (rule!8846 token!544))))))

(declare-datatypes ((Unit!57300 0))(
  ( (Unit!57301) )
))
(declare-fun lt!1295062 () Unit!57300)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1504 (LexerInterface!5567 List!39458 List!39457 Token!11310) Unit!57300)

(assert (=> b!3700841 (= lt!1295062 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!1504 thiss!25322 (t!302003 rules!3598) input!3172 token!544))))

(assert (=> b!3700841 (rulesInvariant!4964 thiss!25322 (t!302003 rules!3598))))

(declare-fun lt!1295068 () Unit!57300)

(declare-fun lemmaInvariantOnRulesThenOnTail!674 (LexerInterface!5567 Rule!11756 List!39458) Unit!57300)

(assert (=> b!3700841 (= lt!1295068 (lemmaInvariantOnRulesThenOnTail!674 thiss!25322 (h!44754 rules!3598) (t!302003 rules!3598)))))

(declare-fun b!3700842 () Bool)

(declare-fun res!1505358 () Bool)

(assert (=> b!3700842 (=> (not res!1505358) (not e!2291976))))

(assert (=> b!3700842 (= res!1505358 (= (_1!22730 (get!13095 lt!1295063)) token!544))))

(declare-fun b!3700843 () Bool)

(declare-fun tp_is_empty!18549 () Bool)

(declare-fun tp!1125029 () Bool)

(assert (=> b!3700843 (= e!2291964 (and tp_is_empty!18549 tp!1125029))))

(declare-fun b!3700844 () Bool)

(assert (=> b!3700844 (= e!2291976 e!2291977)))

(declare-fun res!1505364 () Bool)

(assert (=> b!3700844 (=> (not res!1505364) (not e!2291977))))

(assert (=> b!3700844 (= res!1505364 e!2291970)))

(declare-fun res!1505359 () Bool)

(assert (=> b!3700844 (=> res!1505359 e!2291970)))

(assert (=> b!3700844 (= res!1505359 (not (isDefined!6708 lt!1295064)))))

(declare-fun maxPrefixOneRule!2199 (LexerInterface!5567 Rule!11756 List!39457) Option!8519)

(assert (=> b!3700844 (= lt!1295064 (maxPrefixOneRule!2199 thiss!25322 (h!44754 rules!3598) input!3172))))

(assert (= (and start!348662 res!1505363) b!3700827))

(assert (= (and b!3700827 res!1505357) b!3700839))

(assert (= (and b!3700839 res!1505362) b!3700832))

(assert (= (and b!3700832 res!1505355) b!3700842))

(assert (= (and b!3700842 res!1505358) b!3700835))

(assert (= (and b!3700835 res!1505361) b!3700844))

(assert (= (and b!3700844 (not res!1505359)) b!3700826))

(assert (= (and b!3700844 res!1505364) b!3700837))

(assert (= (and b!3700837 res!1505365) b!3700841))

(assert (= (and b!3700841 res!1505360) b!3700833))

(assert (= (and b!3700833 res!1505356) b!3700834))

(assert (= (and b!3700841 (not res!1505354)) b!3700830))

(assert (= b!3700840 b!3700836))

(assert (= b!3700828 b!3700840))

(assert (= (and start!348662 ((_ is Cons!39334) rules!3598)) b!3700828))

(assert (= b!3700838 b!3700829))

(assert (= b!3700831 b!3700838))

(assert (= start!348662 b!3700831))

(assert (= (and start!348662 ((_ is Cons!39333) input!3172)) b!3700843))

(declare-fun m!4211959 () Bool)

(assert (=> start!348662 m!4211959))

(declare-fun m!4211961 () Bool)

(assert (=> b!3700826 m!4211961))

(declare-fun m!4211963 () Bool)

(assert (=> b!3700831 m!4211963))

(declare-fun m!4211965 () Bool)

(assert (=> b!3700827 m!4211965))

(declare-fun m!4211967 () Bool)

(assert (=> b!3700841 m!4211967))

(declare-fun m!4211969 () Bool)

(assert (=> b!3700841 m!4211969))

(declare-fun m!4211971 () Bool)

(assert (=> b!3700841 m!4211971))

(declare-fun m!4211973 () Bool)

(assert (=> b!3700841 m!4211973))

(declare-fun m!4211975 () Bool)

(assert (=> b!3700841 m!4211975))

(declare-fun m!4211977 () Bool)

(assert (=> b!3700841 m!4211977))

(declare-fun m!4211979 () Bool)

(assert (=> b!3700832 m!4211979))

(declare-fun m!4211981 () Bool)

(assert (=> b!3700832 m!4211981))

(declare-fun m!4211983 () Bool)

(assert (=> b!3700844 m!4211983))

(declare-fun m!4211985 () Bool)

(assert (=> b!3700844 m!4211985))

(declare-fun m!4211987 () Bool)

(assert (=> b!3700842 m!4211987))

(declare-fun m!4211989 () Bool)

(assert (=> b!3700840 m!4211989))

(declare-fun m!4211991 () Bool)

(assert (=> b!3700840 m!4211991))

(declare-fun m!4211993 () Bool)

(assert (=> b!3700839 m!4211993))

(declare-fun m!4211995 () Bool)

(assert (=> b!3700838 m!4211995))

(declare-fun m!4211997 () Bool)

(assert (=> b!3700838 m!4211997))

(declare-fun m!4211999 () Bool)

(assert (=> b!3700837 m!4211999))

(declare-fun m!4212001 () Bool)

(assert (=> b!3700833 m!4212001))

(assert (=> b!3700833 m!4212001))

(declare-fun m!4212003 () Bool)

(assert (=> b!3700833 m!4212003))

(assert (=> b!3700833 m!4212003))

(declare-fun m!4212005 () Bool)

(assert (=> b!3700833 m!4212005))

(declare-fun m!4212007 () Bool)

(assert (=> b!3700833 m!4212007))

(check-sat (not b_next!99343) (not b!3700833) b_and!276747 (not b!3700837) (not b!3700826) (not b_next!99339) (not b!3700827) (not b!3700828) (not b!3700843) (not b!3700832) (not b_next!99337) (not b_next!99341) (not b!3700844) (not b!3700838) (not b!3700842) (not start!348662) (not b!3700831) (not b!3700839) b_and!276745 (not b!3700841) (not b!3700840) tp_is_empty!18549 b_and!276749 b_and!276743)
(check-sat (not b_next!99343) (not b_next!99341) b_and!276747 b_and!276745 (not b_next!99339) (not b_next!99337) b_and!276749 b_and!276743)
