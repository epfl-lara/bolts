; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!353014 () Bool)

(assert start!353014)

(declare-fun b!3760298 () Bool)

(declare-fun b_free!100657 () Bool)

(declare-fun b_next!101361 () Bool)

(assert (=> b!3760298 (= b_free!100657 (not b_next!101361))))

(declare-fun tp!1148946 () Bool)

(declare-fun b_and!279299 () Bool)

(assert (=> b!3760298 (= tp!1148946 b_and!279299)))

(declare-fun b_free!100659 () Bool)

(declare-fun b_next!101363 () Bool)

(assert (=> b!3760298 (= b_free!100659 (not b_next!101363))))

(declare-fun tp!1148941 () Bool)

(declare-fun b_and!279301 () Bool)

(assert (=> b!3760298 (= tp!1148941 b_and!279301)))

(declare-fun b!3760300 () Bool)

(declare-fun b_free!100661 () Bool)

(declare-fun b_next!101365 () Bool)

(assert (=> b!3760300 (= b_free!100661 (not b_next!101365))))

(declare-fun tp!1148940 () Bool)

(declare-fun b_and!279303 () Bool)

(assert (=> b!3760300 (= tp!1148940 b_and!279303)))

(declare-fun b_free!100663 () Bool)

(declare-fun b_next!101367 () Bool)

(assert (=> b!3760300 (= b_free!100663 (not b_next!101367))))

(declare-fun tp!1148939 () Bool)

(declare-fun b_and!279305 () Bool)

(assert (=> b!3760300 (= tp!1148939 b_and!279305)))

(declare-fun b!3760293 () Bool)

(declare-fun e!2325575 () Bool)

(declare-datatypes ((List!40206 0))(
  ( (Nil!40082) (Cons!40082 (h!45502 (_ BitVec 16)) (t!303783 List!40206)) )
))
(declare-datatypes ((TokenValue!6371 0))(
  ( (FloatLiteralValue!12742 (text!45042 List!40206)) (TokenValueExt!6370 (__x!24959 Int)) (Broken!31855 (value!195583 List!40206)) (Object!6494) (End!6371) (Def!6371) (Underscore!6371) (Match!6371) (Else!6371) (Error!6371) (Case!6371) (If!6371) (Extends!6371) (Abstract!6371) (Class!6371) (Val!6371) (DelimiterValue!12742 (del!6431 List!40206)) (KeywordValue!6377 (value!195584 List!40206)) (CommentValue!12742 (value!195585 List!40206)) (WhitespaceValue!12742 (value!195586 List!40206)) (IndentationValue!6371 (value!195587 List!40206)) (String!45514) (Int32!6371) (Broken!31856 (value!195588 List!40206)) (Boolean!6372) (Unit!57806) (OperatorValue!6374 (op!6431 List!40206)) (IdentifierValue!12742 (value!195589 List!40206)) (IdentifierValue!12743 (value!195590 List!40206)) (WhitespaceValue!12743 (value!195591 List!40206)) (True!12742) (False!12742) (Broken!31857 (value!195592 List!40206)) (Broken!31858 (value!195593 List!40206)) (True!12743) (RightBrace!6371) (RightBracket!6371) (Colon!6371) (Null!6371) (Comma!6371) (LeftBracket!6371) (False!12743) (LeftBrace!6371) (ImaginaryLiteralValue!6371 (text!45043 List!40206)) (StringLiteralValue!19113 (value!195594 List!40206)) (EOFValue!6371 (value!195595 List!40206)) (IdentValue!6371 (value!195596 List!40206)) (DelimiterValue!12743 (value!195597 List!40206)) (DedentValue!6371 (value!195598 List!40206)) (NewLineValue!6371 (value!195599 List!40206)) (IntegerValue!19113 (value!195600 (_ BitVec 32)) (text!45044 List!40206)) (IntegerValue!19114 (value!195601 Int) (text!45045 List!40206)) (Times!6371) (Or!6371) (Equal!6371) (Minus!6371) (Broken!31859 (value!195602 List!40206)) (And!6371) (Div!6371) (LessEqual!6371) (Mod!6371) (Concat!17417) (Not!6371) (Plus!6371) (SpaceValue!6371 (value!195603 List!40206)) (IntegerValue!19115 (value!195604 Int) (text!45046 List!40206)) (StringLiteralValue!19114 (text!45047 List!40206)) (FloatLiteralValue!12743 (text!45048 List!40206)) (BytesLiteralValue!6371 (value!195605 List!40206)) (CommentValue!12743 (value!195606 List!40206)) (StringLiteralValue!19115 (value!195607 List!40206)) (ErrorTokenValue!6371 (msg!6432 List!40206)) )
))
(declare-datatypes ((C!22278 0))(
  ( (C!22279 (val!13203 Int)) )
))
(declare-datatypes ((List!40207 0))(
  ( (Nil!40083) (Cons!40083 (h!45503 C!22278) (t!303784 List!40207)) )
))
(declare-datatypes ((IArray!24553 0))(
  ( (IArray!24554 (innerList!12334 List!40207)) )
))
(declare-datatypes ((Conc!12274 0))(
  ( (Node!12274 (left!31036 Conc!12274) (right!31366 Conc!12274) (csize!24778 Int) (cheight!12485 Int)) (Leaf!19037 (xs!15480 IArray!24553) (csize!24779 Int)) (Empty!12274) )
))
(declare-datatypes ((BalanceConc!24142 0))(
  ( (BalanceConc!24143 (c!651124 Conc!12274)) )
))
(declare-datatypes ((Regex!11046 0))(
  ( (ElementMatch!11046 (c!651125 C!22278)) (Concat!17418 (regOne!22604 Regex!11046) (regTwo!22604 Regex!11046)) (EmptyExpr!11046) (Star!11046 (reg!11375 Regex!11046)) (EmptyLang!11046) (Union!11046 (regOne!22605 Regex!11046) (regTwo!22605 Regex!11046)) )
))
(declare-datatypes ((String!45515 0))(
  ( (String!45516 (value!195608 String)) )
))
(declare-datatypes ((TokenValueInjection!12170 0))(
  ( (TokenValueInjection!12171 (toValue!8497 Int) (toChars!8356 Int)) )
))
(declare-datatypes ((Rule!12082 0))(
  ( (Rule!12083 (regex!6141 Regex!11046) (tag!7001 String!45515) (isSeparator!6141 Bool) (transformation!6141 TokenValueInjection!12170)) )
))
(declare-datatypes ((Token!11420 0))(
  ( (Token!11421 (value!195609 TokenValue!6371) (rule!8905 Rule!12082) (size!30167 Int) (originalCharacters!6741 List!40207)) )
))
(declare-datatypes ((List!40208 0))(
  ( (Nil!40084) (Cons!40084 (h!45504 Token!11420) (t!303785 List!40208)) )
))
(declare-fun l!4295 () List!40208)

(declare-fun tp!1148945 () Bool)

(declare-fun e!2325564 () Bool)

(declare-fun inv!53752 (Token!11420) Bool)

(assert (=> b!3760293 (= e!2325575 (and (inv!53752 (h!45504 l!4295)) e!2325564 tp!1148945))))

(declare-fun e!2325568 () Bool)

(declare-fun e!2325571 () Bool)

(declare-fun b!3760294 () Bool)

(declare-fun tp!1148938 () Bool)

(declare-fun separatorToken!124 () Token!11420)

(declare-fun inv!21 (TokenValue!6371) Bool)

(assert (=> b!3760294 (= e!2325571 (and (inv!21 (value!195609 separatorToken!124)) e!2325568 tp!1148938))))

(declare-fun b!3760295 () Bool)

(declare-fun e!2325573 () Bool)

(declare-fun tp_is_empty!19087 () Bool)

(declare-fun tp!1148943 () Bool)

(assert (=> b!3760295 (= e!2325573 (and tp_is_empty!19087 tp!1148943))))

(declare-fun b!3760297 () Bool)

(declare-fun e!2325566 () Bool)

(declare-fun lt!1301596 () List!40207)

(declare-fun acc!415 () List!40207)

(declare-datatypes ((LexerInterface!5730 0))(
  ( (LexerInterfaceExt!5727 (__x!24960 Int)) (Lexer!5728) )
))
(declare-fun thiss!13942 () LexerInterface!5730)

(declare-fun printWithSeparatorTokenListTailRec!47 (LexerInterface!5730 List!40208 Token!11420 List!40207) List!40207)

(declare-fun ++!9938 (List!40207 List!40207) List!40207)

(declare-fun printWithSeparatorTokenList!409 (LexerInterface!5730 List!40208 Token!11420) List!40207)

(assert (=> b!3760297 (= e!2325566 (not (= (printWithSeparatorTokenListTailRec!47 thiss!13942 (t!303785 l!4295) separatorToken!124 lt!1301596) (++!9938 acc!415 (printWithSeparatorTokenList!409 thiss!13942 l!4295 separatorToken!124)))))))

(declare-fun lt!1301602 () List!40207)

(assert (=> b!3760297 (= lt!1301596 lt!1301602)))

(declare-fun lt!1301599 () List!40207)

(declare-fun lt!1301597 () List!40207)

(assert (=> b!3760297 (= lt!1301596 (++!9938 (++!9938 acc!415 lt!1301599) lt!1301597))))

(declare-datatypes ((Unit!57807 0))(
  ( (Unit!57808) )
))
(declare-fun lt!1301603 () Unit!57807)

(declare-fun lemmaConcatAssociativity!2101 (List!40207 List!40207 List!40207) Unit!57807)

(assert (=> b!3760297 (= lt!1301603 (lemmaConcatAssociativity!2101 acc!415 lt!1301599 lt!1301597))))

(declare-fun lt!1301598 () List!40207)

(declare-fun lt!1301601 () List!40207)

(assert (=> b!3760297 (= (++!9938 lt!1301602 lt!1301598) (++!9938 acc!415 (++!9938 lt!1301601 lt!1301598)))))

(assert (=> b!3760297 (= lt!1301602 (++!9938 acc!415 lt!1301601))))

(declare-fun lt!1301600 () Unit!57807)

(assert (=> b!3760297 (= lt!1301600 (lemmaConcatAssociativity!2101 acc!415 lt!1301601 lt!1301598))))

(assert (=> b!3760297 (= lt!1301598 (printWithSeparatorTokenList!409 thiss!13942 (t!303785 l!4295) separatorToken!124))))

(assert (=> b!3760297 (= lt!1301601 (++!9938 lt!1301599 lt!1301597))))

(declare-fun list!14795 (BalanceConc!24142) List!40207)

(declare-fun charsOf!3994 (Token!11420) BalanceConc!24142)

(assert (=> b!3760297 (= lt!1301597 (list!14795 (charsOf!3994 separatorToken!124)))))

(assert (=> b!3760297 (= lt!1301599 (list!14795 (charsOf!3994 (h!45504 l!4295))))))

(declare-fun e!2325570 () Bool)

(assert (=> b!3760298 (= e!2325570 (and tp!1148946 tp!1148941))))

(declare-fun b!3760299 () Bool)

(declare-fun e!2325563 () Bool)

(declare-fun tp!1148944 () Bool)

(assert (=> b!3760299 (= e!2325564 (and (inv!21 (value!195609 (h!45504 l!4295))) e!2325563 tp!1148944))))

(declare-fun e!2325565 () Bool)

(assert (=> b!3760300 (= e!2325565 (and tp!1148940 tp!1148939))))

(declare-fun b!3760301 () Bool)

(declare-fun tp!1148937 () Bool)

(declare-fun inv!53749 (String!45515) Bool)

(declare-fun inv!53753 (TokenValueInjection!12170) Bool)

(assert (=> b!3760301 (= e!2325568 (and tp!1148937 (inv!53749 (tag!7001 (rule!8905 separatorToken!124))) (inv!53753 (transformation!6141 (rule!8905 separatorToken!124))) e!2325565))))

(declare-fun res!1522779 () Bool)

(assert (=> start!353014 (=> (not res!1522779) (not e!2325566))))

(assert (=> start!353014 (= res!1522779 (and (is-Lexer!5728 thiss!13942) (isSeparator!6141 (rule!8905 separatorToken!124)) (is-Cons!40084 l!4295)))))

(assert (=> start!353014 e!2325566))

(assert (=> start!353014 true))

(assert (=> start!353014 (and (inv!53752 separatorToken!124) e!2325571)))

(assert (=> start!353014 e!2325575))

(assert (=> start!353014 e!2325573))

(declare-fun tp!1148942 () Bool)

(declare-fun b!3760296 () Bool)

(assert (=> b!3760296 (= e!2325563 (and tp!1148942 (inv!53749 (tag!7001 (rule!8905 (h!45504 l!4295)))) (inv!53753 (transformation!6141 (rule!8905 (h!45504 l!4295)))) e!2325570))))

(assert (= (and start!353014 res!1522779) b!3760297))

(assert (= b!3760301 b!3760300))

(assert (= b!3760294 b!3760301))

(assert (= start!353014 b!3760294))

(assert (= b!3760296 b!3760298))

(assert (= b!3760299 b!3760296))

(assert (= b!3760293 b!3760299))

(assert (= (and start!353014 (is-Cons!40084 l!4295)) b!3760293))

(assert (= (and start!353014 (is-Cons!40083 acc!415)) b!3760295))

(declare-fun m!4254205 () Bool)

(assert (=> b!3760296 m!4254205))

(declare-fun m!4254207 () Bool)

(assert (=> b!3760296 m!4254207))

(declare-fun m!4254209 () Bool)

(assert (=> start!353014 m!4254209))

(declare-fun m!4254211 () Bool)

(assert (=> b!3760297 m!4254211))

(declare-fun m!4254213 () Bool)

(assert (=> b!3760297 m!4254213))

(declare-fun m!4254215 () Bool)

(assert (=> b!3760297 m!4254215))

(declare-fun m!4254217 () Bool)

(assert (=> b!3760297 m!4254217))

(declare-fun m!4254219 () Bool)

(assert (=> b!3760297 m!4254219))

(declare-fun m!4254221 () Bool)

(assert (=> b!3760297 m!4254221))

(declare-fun m!4254223 () Bool)

(assert (=> b!3760297 m!4254223))

(assert (=> b!3760297 m!4254211))

(declare-fun m!4254225 () Bool)

(assert (=> b!3760297 m!4254225))

(declare-fun m!4254227 () Bool)

(assert (=> b!3760297 m!4254227))

(declare-fun m!4254229 () Bool)

(assert (=> b!3760297 m!4254229))

(assert (=> b!3760297 m!4254221))

(declare-fun m!4254231 () Bool)

(assert (=> b!3760297 m!4254231))

(declare-fun m!4254233 () Bool)

(assert (=> b!3760297 m!4254233))

(assert (=> b!3760297 m!4254217))

(declare-fun m!4254235 () Bool)

(assert (=> b!3760297 m!4254235))

(declare-fun m!4254237 () Bool)

(assert (=> b!3760297 m!4254237))

(declare-fun m!4254239 () Bool)

(assert (=> b!3760297 m!4254239))

(assert (=> b!3760297 m!4254239))

(declare-fun m!4254241 () Bool)

(assert (=> b!3760297 m!4254241))

(declare-fun m!4254243 () Bool)

(assert (=> b!3760297 m!4254243))

(assert (=> b!3760297 m!4254231))

(declare-fun m!4254245 () Bool)

(assert (=> b!3760293 m!4254245))

(declare-fun m!4254247 () Bool)

(assert (=> b!3760294 m!4254247))

(declare-fun m!4254249 () Bool)

(assert (=> b!3760301 m!4254249))

(declare-fun m!4254251 () Bool)

(assert (=> b!3760301 m!4254251))

(declare-fun m!4254253 () Bool)

(assert (=> b!3760299 m!4254253))

(push 1)

(assert (not b_next!101367))

(assert (not b!3760293))

(assert b_and!279299)

(assert (not b_next!101363))

(assert tp_is_empty!19087)

(assert (not b!3760299))

(assert (not start!353014))

(assert b_and!279305)

(assert (not b!3760296))

(assert (not b!3760301))

(assert (not b!3760294))

(assert (not b_next!101361))

(assert (not b_next!101365))

(assert (not b!3760297))

(assert (not b!3760295))

(assert b_and!279301)

(assert b_and!279303)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!101367))

(assert b_and!279299)

(assert (not b_next!101363))

(assert (not b_next!101361))

(assert (not b_next!101365))

(assert b_and!279305)

(assert b_and!279301)

(assert b_and!279303)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1098385 () Bool)

(declare-fun res!1522794 () Bool)

(declare-fun e!2325617 () Bool)

(assert (=> d!1098385 (=> (not res!1522794) (not e!2325617))))

(declare-fun isEmpty!23572 (List!40207) Bool)

(assert (=> d!1098385 (= res!1522794 (not (isEmpty!23572 (originalCharacters!6741 (h!45504 l!4295)))))))

(assert (=> d!1098385 (= (inv!53752 (h!45504 l!4295)) e!2325617)))

(declare-fun b!3760333 () Bool)

(declare-fun res!1522795 () Bool)

(assert (=> b!3760333 (=> (not res!1522795) (not e!2325617))))

(declare-fun dynLambda!17331 (Int TokenValue!6371) BalanceConc!24142)

(assert (=> b!3760333 (= res!1522795 (= (originalCharacters!6741 (h!45504 l!4295)) (list!14795 (dynLambda!17331 (toChars!8356 (transformation!6141 (rule!8905 (h!45504 l!4295)))) (value!195609 (h!45504 l!4295))))))))

(declare-fun b!3760334 () Bool)

(declare-fun size!30169 (List!40207) Int)

(assert (=> b!3760334 (= e!2325617 (= (size!30167 (h!45504 l!4295)) (size!30169 (originalCharacters!6741 (h!45504 l!4295)))))))

(assert (= (and d!1098385 res!1522794) b!3760333))

(assert (= (and b!3760333 res!1522795) b!3760334))

(declare-fun b_lambda!110315 () Bool)

(assert (=> (not b_lambda!110315) (not b!3760333)))

(declare-fun t!303790 () Bool)

(declare-fun tb!215181 () Bool)

(assert (=> (and b!3760298 (= (toChars!8356 (transformation!6141 (rule!8905 (h!45504 l!4295)))) (toChars!8356 (transformation!6141 (rule!8905 (h!45504 l!4295))))) t!303790) tb!215181))

(declare-fun b!3760339 () Bool)

(declare-fun e!2325620 () Bool)

(declare-fun tp!1148979 () Bool)

(declare-fun inv!53756 (Conc!12274) Bool)

(assert (=> b!3760339 (= e!2325620 (and (inv!53756 (c!651124 (dynLambda!17331 (toChars!8356 (transformation!6141 (rule!8905 (h!45504 l!4295)))) (value!195609 (h!45504 l!4295))))) tp!1148979))))

(declare-fun result!262750 () Bool)

(declare-fun inv!53757 (BalanceConc!24142) Bool)

(assert (=> tb!215181 (= result!262750 (and (inv!53757 (dynLambda!17331 (toChars!8356 (transformation!6141 (rule!8905 (h!45504 l!4295)))) (value!195609 (h!45504 l!4295)))) e!2325620))))

(assert (= tb!215181 b!3760339))

(declare-fun m!4254305 () Bool)

(assert (=> b!3760339 m!4254305))

(declare-fun m!4254307 () Bool)

(assert (=> tb!215181 m!4254307))

(assert (=> b!3760333 t!303790))

(declare-fun b_and!279315 () Bool)

(assert (= b_and!279301 (and (=> t!303790 result!262750) b_and!279315)))

(declare-fun tb!215183 () Bool)

(declare-fun t!303792 () Bool)

(assert (=> (and b!3760300 (= (toChars!8356 (transformation!6141 (rule!8905 separatorToken!124))) (toChars!8356 (transformation!6141 (rule!8905 (h!45504 l!4295))))) t!303792) tb!215183))

(declare-fun result!262754 () Bool)

(assert (= result!262754 result!262750))

(assert (=> b!3760333 t!303792))

(declare-fun b_and!279317 () Bool)

(assert (= b_and!279305 (and (=> t!303792 result!262754) b_and!279317)))

(declare-fun m!4254309 () Bool)

(assert (=> d!1098385 m!4254309))

(declare-fun m!4254311 () Bool)

(assert (=> b!3760333 m!4254311))

(assert (=> b!3760333 m!4254311))

(declare-fun m!4254313 () Bool)

(assert (=> b!3760333 m!4254313))

(declare-fun m!4254315 () Bool)

(assert (=> b!3760334 m!4254315))

(assert (=> b!3760293 d!1098385))

(declare-fun d!1098387 () Bool)

(declare-fun res!1522796 () Bool)

(declare-fun e!2325621 () Bool)

(assert (=> d!1098387 (=> (not res!1522796) (not e!2325621))))

(assert (=> d!1098387 (= res!1522796 (not (isEmpty!23572 (originalCharacters!6741 separatorToken!124))))))

(assert (=> d!1098387 (= (inv!53752 separatorToken!124) e!2325621)))

(declare-fun b!3760340 () Bool)

(declare-fun res!1522797 () Bool)

(assert (=> b!3760340 (=> (not res!1522797) (not e!2325621))))

(assert (=> b!3760340 (= res!1522797 (= (originalCharacters!6741 separatorToken!124) (list!14795 (dynLambda!17331 (toChars!8356 (transformation!6141 (rule!8905 separatorToken!124))) (value!195609 separatorToken!124)))))))

(declare-fun b!3760341 () Bool)

(assert (=> b!3760341 (= e!2325621 (= (size!30167 separatorToken!124) (size!30169 (originalCharacters!6741 separatorToken!124))))))

(assert (= (and d!1098387 res!1522796) b!3760340))

(assert (= (and b!3760340 res!1522797) b!3760341))

(declare-fun b_lambda!110317 () Bool)

(assert (=> (not b_lambda!110317) (not b!3760340)))

(declare-fun t!303794 () Bool)

(declare-fun tb!215185 () Bool)

(assert (=> (and b!3760298 (= (toChars!8356 (transformation!6141 (rule!8905 (h!45504 l!4295)))) (toChars!8356 (transformation!6141 (rule!8905 separatorToken!124)))) t!303794) tb!215185))

(declare-fun b!3760342 () Bool)

(declare-fun e!2325622 () Bool)

(declare-fun tp!1148980 () Bool)

(assert (=> b!3760342 (= e!2325622 (and (inv!53756 (c!651124 (dynLambda!17331 (toChars!8356 (transformation!6141 (rule!8905 separatorToken!124))) (value!195609 separatorToken!124)))) tp!1148980))))

(declare-fun result!262756 () Bool)

(assert (=> tb!215185 (= result!262756 (and (inv!53757 (dynLambda!17331 (toChars!8356 (transformation!6141 (rule!8905 separatorToken!124))) (value!195609 separatorToken!124))) e!2325622))))

(assert (= tb!215185 b!3760342))

(declare-fun m!4254317 () Bool)

(assert (=> b!3760342 m!4254317))

(declare-fun m!4254319 () Bool)

(assert (=> tb!215185 m!4254319))

(assert (=> b!3760340 t!303794))

(declare-fun b_and!279319 () Bool)

(assert (= b_and!279315 (and (=> t!303794 result!262756) b_and!279319)))

(declare-fun t!303796 () Bool)

(declare-fun tb!215187 () Bool)

(assert (=> (and b!3760300 (= (toChars!8356 (transformation!6141 (rule!8905 separatorToken!124))) (toChars!8356 (transformation!6141 (rule!8905 separatorToken!124)))) t!303796) tb!215187))

(declare-fun result!262758 () Bool)

(assert (= result!262758 result!262756))

(assert (=> b!3760340 t!303796))

(declare-fun b_and!279321 () Bool)

(assert (= b_and!279317 (and (=> t!303796 result!262758) b_and!279321)))

(declare-fun m!4254321 () Bool)

(assert (=> d!1098387 m!4254321))

(declare-fun m!4254323 () Bool)

(assert (=> b!3760340 m!4254323))

(assert (=> b!3760340 m!4254323))

(declare-fun m!4254325 () Bool)

(assert (=> b!3760340 m!4254325))

(declare-fun m!4254327 () Bool)

(assert (=> b!3760341 m!4254327))

(assert (=> start!353014 d!1098387))

(declare-fun b!3760353 () Bool)

(declare-fun e!2325630 () Bool)

(declare-fun e!2325631 () Bool)

(assert (=> b!3760353 (= e!2325630 e!2325631)))

(declare-fun c!651133 () Bool)

(assert (=> b!3760353 (= c!651133 (is-IntegerValue!19114 (value!195609 (h!45504 l!4295))))))

(declare-fun b!3760354 () Bool)

(declare-fun inv!17 (TokenValue!6371) Bool)

(assert (=> b!3760354 (= e!2325631 (inv!17 (value!195609 (h!45504 l!4295))))))

(declare-fun d!1098389 () Bool)

(declare-fun c!651132 () Bool)

(assert (=> d!1098389 (= c!651132 (is-IntegerValue!19113 (value!195609 (h!45504 l!4295))))))

(assert (=> d!1098389 (= (inv!21 (value!195609 (h!45504 l!4295))) e!2325630)))

(declare-fun b!3760355 () Bool)

(declare-fun res!1522800 () Bool)

(declare-fun e!2325629 () Bool)

(assert (=> b!3760355 (=> res!1522800 e!2325629)))

(assert (=> b!3760355 (= res!1522800 (not (is-IntegerValue!19115 (value!195609 (h!45504 l!4295)))))))

(assert (=> b!3760355 (= e!2325631 e!2325629)))

(declare-fun b!3760356 () Bool)

(declare-fun inv!16 (TokenValue!6371) Bool)

(assert (=> b!3760356 (= e!2325630 (inv!16 (value!195609 (h!45504 l!4295))))))

(declare-fun b!3760357 () Bool)

(declare-fun inv!15 (TokenValue!6371) Bool)

(assert (=> b!3760357 (= e!2325629 (inv!15 (value!195609 (h!45504 l!4295))))))

(assert (= (and d!1098389 c!651132) b!3760356))

(assert (= (and d!1098389 (not c!651132)) b!3760353))

(assert (= (and b!3760353 c!651133) b!3760354))

(assert (= (and b!3760353 (not c!651133)) b!3760355))

(assert (= (and b!3760355 (not res!1522800)) b!3760357))

(declare-fun m!4254329 () Bool)

(assert (=> b!3760354 m!4254329))

(declare-fun m!4254331 () Bool)

(assert (=> b!3760356 m!4254331))

(declare-fun m!4254333 () Bool)

(assert (=> b!3760357 m!4254333))

(assert (=> b!3760299 d!1098389))

(declare-fun b!3760358 () Bool)

(declare-fun e!2325633 () Bool)

(declare-fun e!2325634 () Bool)

(assert (=> b!3760358 (= e!2325633 e!2325634)))

(declare-fun c!651135 () Bool)

(assert (=> b!3760358 (= c!651135 (is-IntegerValue!19114 (value!195609 separatorToken!124)))))

(declare-fun b!3760359 () Bool)

(assert (=> b!3760359 (= e!2325634 (inv!17 (value!195609 separatorToken!124)))))

(declare-fun d!1098391 () Bool)

(declare-fun c!651134 () Bool)

(assert (=> d!1098391 (= c!651134 (is-IntegerValue!19113 (value!195609 separatorToken!124)))))

(assert (=> d!1098391 (= (inv!21 (value!195609 separatorToken!124)) e!2325633)))

(declare-fun b!3760360 () Bool)

(declare-fun res!1522801 () Bool)

(declare-fun e!2325632 () Bool)

(assert (=> b!3760360 (=> res!1522801 e!2325632)))

(assert (=> b!3760360 (= res!1522801 (not (is-IntegerValue!19115 (value!195609 separatorToken!124))))))

(assert (=> b!3760360 (= e!2325634 e!2325632)))

(declare-fun b!3760361 () Bool)

(assert (=> b!3760361 (= e!2325633 (inv!16 (value!195609 separatorToken!124)))))

(declare-fun b!3760362 () Bool)

(assert (=> b!3760362 (= e!2325632 (inv!15 (value!195609 separatorToken!124)))))

(assert (= (and d!1098391 c!651134) b!3760361))

(assert (= (and d!1098391 (not c!651134)) b!3760358))

(assert (= (and b!3760358 c!651135) b!3760359))

(assert (= (and b!3760358 (not c!651135)) b!3760360))

(assert (= (and b!3760360 (not res!1522801)) b!3760362))

(declare-fun m!4254335 () Bool)

(assert (=> b!3760359 m!4254335))

(declare-fun m!4254337 () Bool)

(assert (=> b!3760361 m!4254337))

(declare-fun m!4254339 () Bool)

(assert (=> b!3760362 m!4254339))

(assert (=> b!3760294 d!1098391))

(declare-fun d!1098393 () Bool)

(assert (=> d!1098393 (= (inv!53749 (tag!7001 (rule!8905 separatorToken!124))) (= (mod (str.len (value!195608 (tag!7001 (rule!8905 separatorToken!124)))) 2) 0))))

(assert (=> b!3760301 d!1098393))

(declare-fun d!1098395 () Bool)

(declare-fun res!1522804 () Bool)

(declare-fun e!2325637 () Bool)

(assert (=> d!1098395 (=> (not res!1522804) (not e!2325637))))

(declare-fun semiInverseModEq!2628 (Int Int) Bool)

(assert (=> d!1098395 (= res!1522804 (semiInverseModEq!2628 (toChars!8356 (transformation!6141 (rule!8905 separatorToken!124))) (toValue!8497 (transformation!6141 (rule!8905 separatorToken!124)))))))

(assert (=> d!1098395 (= (inv!53753 (transformation!6141 (rule!8905 separatorToken!124))) e!2325637)))

(declare-fun b!3760365 () Bool)

(declare-fun equivClasses!2527 (Int Int) Bool)

(assert (=> b!3760365 (= e!2325637 (equivClasses!2527 (toChars!8356 (transformation!6141 (rule!8905 separatorToken!124))) (toValue!8497 (transformation!6141 (rule!8905 separatorToken!124)))))))

(assert (= (and d!1098395 res!1522804) b!3760365))

(declare-fun m!4254341 () Bool)

(assert (=> d!1098395 m!4254341))

(declare-fun m!4254343 () Bool)

(assert (=> b!3760365 m!4254343))

(assert (=> b!3760301 d!1098395))

(declare-fun d!1098397 () Bool)

(assert (=> d!1098397 (= (inv!53749 (tag!7001 (rule!8905 (h!45504 l!4295)))) (= (mod (str.len (value!195608 (tag!7001 (rule!8905 (h!45504 l!4295))))) 2) 0))))

(assert (=> b!3760296 d!1098397))

(declare-fun d!1098399 () Bool)

(declare-fun res!1522805 () Bool)

(declare-fun e!2325638 () Bool)

(assert (=> d!1098399 (=> (not res!1522805) (not e!2325638))))

(assert (=> d!1098399 (= res!1522805 (semiInverseModEq!2628 (toChars!8356 (transformation!6141 (rule!8905 (h!45504 l!4295)))) (toValue!8497 (transformation!6141 (rule!8905 (h!45504 l!4295))))))))

(assert (=> d!1098399 (= (inv!53753 (transformation!6141 (rule!8905 (h!45504 l!4295)))) e!2325638)))

(declare-fun b!3760366 () Bool)

(assert (=> b!3760366 (= e!2325638 (equivClasses!2527 (toChars!8356 (transformation!6141 (rule!8905 (h!45504 l!4295)))) (toValue!8497 (transformation!6141 (rule!8905 (h!45504 l!4295))))))))

(assert (= (and d!1098399 res!1522805) b!3760366))

(declare-fun m!4254345 () Bool)

(assert (=> d!1098399 m!4254345))

(declare-fun m!4254347 () Bool)

(assert (=> b!3760366 m!4254347))

(assert (=> b!3760296 d!1098399))

(declare-fun d!1098401 () Bool)

(assert (=> d!1098401 (= (++!9938 (++!9938 acc!415 lt!1301599) lt!1301597) (++!9938 acc!415 (++!9938 lt!1301599 lt!1301597)))))

(declare-fun lt!1301630 () Unit!57807)

(declare-fun choose!22277 (List!40207 List!40207 List!40207) Unit!57807)

(assert (=> d!1098401 (= lt!1301630 (choose!22277 acc!415 lt!1301599 lt!1301597))))

(assert (=> d!1098401 (= (lemmaConcatAssociativity!2101 acc!415 lt!1301599 lt!1301597) lt!1301630)))

(declare-fun bs!575751 () Bool)

(assert (= bs!575751 d!1098401))

(declare-fun m!4254349 () Bool)

(assert (=> bs!575751 m!4254349))

(assert (=> bs!575751 m!4254229))

(assert (=> bs!575751 m!4254229))

(declare-fun m!4254351 () Bool)

(assert (=> bs!575751 m!4254351))

(assert (=> bs!575751 m!4254217))

(assert (=> bs!575751 m!4254219))

(assert (=> bs!575751 m!4254217))

(assert (=> b!3760297 d!1098401))

(declare-fun d!1098405 () Bool)

(declare-fun e!2325643 () Bool)

(assert (=> d!1098405 e!2325643))

(declare-fun res!1522810 () Bool)

(assert (=> d!1098405 (=> (not res!1522810) (not e!2325643))))

(declare-fun lt!1301633 () List!40207)

(declare-fun content!5883 (List!40207) (Set C!22278))

(assert (=> d!1098405 (= res!1522810 (= (content!5883 lt!1301633) (set.union (content!5883 lt!1301599) (content!5883 lt!1301597))))))

(declare-fun e!2325644 () List!40207)

(assert (=> d!1098405 (= lt!1301633 e!2325644)))

(declare-fun c!651138 () Bool)

(assert (=> d!1098405 (= c!651138 (is-Nil!40083 lt!1301599))))

(assert (=> d!1098405 (= (++!9938 lt!1301599 lt!1301597) lt!1301633)))

(declare-fun b!3760377 () Bool)

(declare-fun res!1522811 () Bool)

(assert (=> b!3760377 (=> (not res!1522811) (not e!2325643))))

(assert (=> b!3760377 (= res!1522811 (= (size!30169 lt!1301633) (+ (size!30169 lt!1301599) (size!30169 lt!1301597))))))

(declare-fun b!3760378 () Bool)

(assert (=> b!3760378 (= e!2325643 (or (not (= lt!1301597 Nil!40083)) (= lt!1301633 lt!1301599)))))

(declare-fun b!3760376 () Bool)

(assert (=> b!3760376 (= e!2325644 (Cons!40083 (h!45503 lt!1301599) (++!9938 (t!303784 lt!1301599) lt!1301597)))))

(declare-fun b!3760375 () Bool)

(assert (=> b!3760375 (= e!2325644 lt!1301597)))

(assert (= (and d!1098405 c!651138) b!3760375))

(assert (= (and d!1098405 (not c!651138)) b!3760376))

(assert (= (and d!1098405 res!1522810) b!3760377))

(assert (= (and b!3760377 res!1522811) b!3760378))

(declare-fun m!4254353 () Bool)

(assert (=> d!1098405 m!4254353))

(declare-fun m!4254355 () Bool)

(assert (=> d!1098405 m!4254355))

(declare-fun m!4254357 () Bool)

(assert (=> d!1098405 m!4254357))

(declare-fun m!4254359 () Bool)

(assert (=> b!3760377 m!4254359))

(declare-fun m!4254361 () Bool)

(assert (=> b!3760377 m!4254361))

(declare-fun m!4254363 () Bool)

(assert (=> b!3760377 m!4254363))

(declare-fun m!4254365 () Bool)

(assert (=> b!3760376 m!4254365))

(assert (=> b!3760297 d!1098405))

(declare-fun d!1098409 () Bool)

(declare-fun c!651141 () Bool)

(assert (=> d!1098409 (= c!651141 (is-Cons!40084 (t!303785 l!4295)))))

(declare-fun e!2325649 () List!40207)

(assert (=> d!1098409 (= (printWithSeparatorTokenList!409 thiss!13942 (t!303785 l!4295) separatorToken!124) e!2325649)))

(declare-fun b!3760385 () Bool)

(assert (=> b!3760385 (= e!2325649 (++!9938 (++!9938 (list!14795 (charsOf!3994 (h!45504 (t!303785 l!4295)))) (list!14795 (charsOf!3994 separatorToken!124))) (printWithSeparatorTokenList!409 thiss!13942 (t!303785 (t!303785 l!4295)) separatorToken!124)))))

(declare-fun b!3760386 () Bool)

(assert (=> b!3760386 (= e!2325649 Nil!40083)))

(assert (= (and d!1098409 c!651141) b!3760385))

(assert (= (and d!1098409 (not c!651141)) b!3760386))

(assert (=> b!3760385 m!4254211))

(assert (=> b!3760385 m!4254213))

(assert (=> b!3760385 m!4254211))

(declare-fun m!4254367 () Bool)

(assert (=> b!3760385 m!4254367))

(declare-fun m!4254369 () Bool)

(assert (=> b!3760385 m!4254369))

(declare-fun m!4254371 () Bool)

(assert (=> b!3760385 m!4254371))

(assert (=> b!3760385 m!4254369))

(declare-fun m!4254373 () Bool)

(assert (=> b!3760385 m!4254373))

(assert (=> b!3760385 m!4254213))

(assert (=> b!3760385 m!4254367))

(declare-fun m!4254375 () Bool)

(assert (=> b!3760385 m!4254375))

(assert (=> b!3760385 m!4254375))

(assert (=> b!3760385 m!4254373))

(assert (=> b!3760297 d!1098409))

(declare-fun d!1098411 () Bool)

(declare-fun c!651142 () Bool)

(assert (=> d!1098411 (= c!651142 (is-Cons!40084 l!4295))))

(declare-fun e!2325651 () List!40207)

(assert (=> d!1098411 (= (printWithSeparatorTokenList!409 thiss!13942 l!4295 separatorToken!124) e!2325651)))

(declare-fun b!3760388 () Bool)

(assert (=> b!3760388 (= e!2325651 (++!9938 (++!9938 (list!14795 (charsOf!3994 (h!45504 l!4295))) (list!14795 (charsOf!3994 separatorToken!124))) (printWithSeparatorTokenList!409 thiss!13942 (t!303785 l!4295) separatorToken!124)))))

(declare-fun b!3760389 () Bool)

(assert (=> b!3760389 (= e!2325651 Nil!40083)))

(assert (= (and d!1098411 c!651142) b!3760388))

(assert (= (and d!1098411 (not c!651142)) b!3760389))

(assert (=> b!3760388 m!4254211))

(assert (=> b!3760388 m!4254213))

(assert (=> b!3760388 m!4254211))

(declare-fun m!4254377 () Bool)

(assert (=> b!3760388 m!4254377))

(assert (=> b!3760388 m!4254235))

(declare-fun m!4254381 () Bool)

(assert (=> b!3760388 m!4254381))

(assert (=> b!3760388 m!4254235))

(assert (=> b!3760388 m!4254233))

(assert (=> b!3760388 m!4254213))

(assert (=> b!3760388 m!4254377))

(assert (=> b!3760388 m!4254231))

(assert (=> b!3760388 m!4254231))

(assert (=> b!3760388 m!4254233))

(assert (=> b!3760297 d!1098411))

(declare-fun d!1098415 () Bool)

(declare-fun list!14797 (Conc!12274) List!40207)

(assert (=> d!1098415 (= (list!14795 (charsOf!3994 (h!45504 l!4295))) (list!14797 (c!651124 (charsOf!3994 (h!45504 l!4295)))))))

(declare-fun bs!575752 () Bool)

(assert (= bs!575752 d!1098415))

(declare-fun m!4254385 () Bool)

(assert (=> bs!575752 m!4254385))

(assert (=> b!3760297 d!1098415))

(declare-fun d!1098417 () Bool)

(assert (=> d!1098417 (= (list!14795 (charsOf!3994 separatorToken!124)) (list!14797 (c!651124 (charsOf!3994 separatorToken!124))))))

(declare-fun bs!575753 () Bool)

(assert (= bs!575753 d!1098417))

(declare-fun m!4254387 () Bool)

(assert (=> bs!575753 m!4254387))

(assert (=> b!3760297 d!1098417))

(declare-fun d!1098419 () Bool)

(declare-fun e!2325652 () Bool)

(assert (=> d!1098419 e!2325652))

(declare-fun res!1522815 () Bool)

(assert (=> d!1098419 (=> (not res!1522815) (not e!2325652))))

(declare-fun lt!1301634 () List!40207)

(assert (=> d!1098419 (= res!1522815 (= (content!5883 lt!1301634) (set.union (content!5883 acc!415) (content!5883 (printWithSeparatorTokenList!409 thiss!13942 l!4295 separatorToken!124)))))))

(declare-fun e!2325653 () List!40207)

(assert (=> d!1098419 (= lt!1301634 e!2325653)))

(declare-fun c!651143 () Bool)

(assert (=> d!1098419 (= c!651143 (is-Nil!40083 acc!415))))

(assert (=> d!1098419 (= (++!9938 acc!415 (printWithSeparatorTokenList!409 thiss!13942 l!4295 separatorToken!124)) lt!1301634)))

(declare-fun b!3760392 () Bool)

(declare-fun res!1522816 () Bool)

(assert (=> b!3760392 (=> (not res!1522816) (not e!2325652))))

(assert (=> b!3760392 (= res!1522816 (= (size!30169 lt!1301634) (+ (size!30169 acc!415) (size!30169 (printWithSeparatorTokenList!409 thiss!13942 l!4295 separatorToken!124)))))))

(declare-fun b!3760393 () Bool)

(assert (=> b!3760393 (= e!2325652 (or (not (= (printWithSeparatorTokenList!409 thiss!13942 l!4295 separatorToken!124) Nil!40083)) (= lt!1301634 acc!415)))))

(declare-fun b!3760391 () Bool)

(assert (=> b!3760391 (= e!2325653 (Cons!40083 (h!45503 acc!415) (++!9938 (t!303784 acc!415) (printWithSeparatorTokenList!409 thiss!13942 l!4295 separatorToken!124))))))

(declare-fun b!3760390 () Bool)

(assert (=> b!3760390 (= e!2325653 (printWithSeparatorTokenList!409 thiss!13942 l!4295 separatorToken!124))))

(assert (= (and d!1098419 c!651143) b!3760390))

(assert (= (and d!1098419 (not c!651143)) b!3760391))

(assert (= (and d!1098419 res!1522815) b!3760392))

(assert (= (and b!3760392 res!1522816) b!3760393))

(declare-fun m!4254389 () Bool)

(assert (=> d!1098419 m!4254389))

(declare-fun m!4254391 () Bool)

(assert (=> d!1098419 m!4254391))

(assert (=> d!1098419 m!4254221))

(declare-fun m!4254393 () Bool)

(assert (=> d!1098419 m!4254393))

(declare-fun m!4254395 () Bool)

(assert (=> b!3760392 m!4254395))

(declare-fun m!4254397 () Bool)

(assert (=> b!3760392 m!4254397))

(assert (=> b!3760392 m!4254221))

(declare-fun m!4254399 () Bool)

(assert (=> b!3760392 m!4254399))

(assert (=> b!3760391 m!4254221))

(declare-fun m!4254401 () Bool)

(assert (=> b!3760391 m!4254401))

(assert (=> b!3760297 d!1098419))

(declare-fun d!1098421 () Bool)

(declare-fun e!2325654 () Bool)

(assert (=> d!1098421 e!2325654))

(declare-fun res!1522817 () Bool)

(assert (=> d!1098421 (=> (not res!1522817) (not e!2325654))))

(declare-fun lt!1301635 () List!40207)

(assert (=> d!1098421 (= res!1522817 (= (content!5883 lt!1301635) (set.union (content!5883 (++!9938 acc!415 lt!1301599)) (content!5883 lt!1301597))))))

(declare-fun e!2325655 () List!40207)

(assert (=> d!1098421 (= lt!1301635 e!2325655)))

(declare-fun c!651144 () Bool)

(assert (=> d!1098421 (= c!651144 (is-Nil!40083 (++!9938 acc!415 lt!1301599)))))

(assert (=> d!1098421 (= (++!9938 (++!9938 acc!415 lt!1301599) lt!1301597) lt!1301635)))

(declare-fun b!3760396 () Bool)

(declare-fun res!1522818 () Bool)

(assert (=> b!3760396 (=> (not res!1522818) (not e!2325654))))

(assert (=> b!3760396 (= res!1522818 (= (size!30169 lt!1301635) (+ (size!30169 (++!9938 acc!415 lt!1301599)) (size!30169 lt!1301597))))))

(declare-fun b!3760397 () Bool)

(assert (=> b!3760397 (= e!2325654 (or (not (= lt!1301597 Nil!40083)) (= lt!1301635 (++!9938 acc!415 lt!1301599))))))

(declare-fun b!3760395 () Bool)

(assert (=> b!3760395 (= e!2325655 (Cons!40083 (h!45503 (++!9938 acc!415 lt!1301599)) (++!9938 (t!303784 (++!9938 acc!415 lt!1301599)) lt!1301597)))))

(declare-fun b!3760394 () Bool)

(assert (=> b!3760394 (= e!2325655 lt!1301597)))

(assert (= (and d!1098421 c!651144) b!3760394))

(assert (= (and d!1098421 (not c!651144)) b!3760395))

(assert (= (and d!1098421 res!1522817) b!3760396))

(assert (= (and b!3760396 res!1522818) b!3760397))

(declare-fun m!4254403 () Bool)

(assert (=> d!1098421 m!4254403))

(assert (=> d!1098421 m!4254217))

(declare-fun m!4254405 () Bool)

(assert (=> d!1098421 m!4254405))

(assert (=> d!1098421 m!4254357))

(declare-fun m!4254407 () Bool)

(assert (=> b!3760396 m!4254407))

(assert (=> b!3760396 m!4254217))

(declare-fun m!4254409 () Bool)

(assert (=> b!3760396 m!4254409))

(assert (=> b!3760396 m!4254363))

(declare-fun m!4254411 () Bool)

(assert (=> b!3760395 m!4254411))

(assert (=> b!3760297 d!1098421))

(declare-fun d!1098423 () Bool)

(assert (=> d!1098423 (= (++!9938 (++!9938 acc!415 lt!1301601) lt!1301598) (++!9938 acc!415 (++!9938 lt!1301601 lt!1301598)))))

(declare-fun lt!1301636 () Unit!57807)

(assert (=> d!1098423 (= lt!1301636 (choose!22277 acc!415 lt!1301601 lt!1301598))))

(assert (=> d!1098423 (= (lemmaConcatAssociativity!2101 acc!415 lt!1301601 lt!1301598) lt!1301636)))

(declare-fun bs!575754 () Bool)

(assert (= bs!575754 d!1098423))

(declare-fun m!4254413 () Bool)

(assert (=> bs!575754 m!4254413))

(assert (=> bs!575754 m!4254239))

(assert (=> bs!575754 m!4254239))

(assert (=> bs!575754 m!4254241))

(assert (=> bs!575754 m!4254225))

(declare-fun m!4254415 () Bool)

(assert (=> bs!575754 m!4254415))

(assert (=> bs!575754 m!4254225))

(assert (=> b!3760297 d!1098423))

(declare-fun d!1098425 () Bool)

(declare-fun e!2325656 () Bool)

(assert (=> d!1098425 e!2325656))

(declare-fun res!1522819 () Bool)

(assert (=> d!1098425 (=> (not res!1522819) (not e!2325656))))

(declare-fun lt!1301637 () List!40207)

(assert (=> d!1098425 (= res!1522819 (= (content!5883 lt!1301637) (set.union (content!5883 acc!415) (content!5883 lt!1301599))))))

(declare-fun e!2325657 () List!40207)

(assert (=> d!1098425 (= lt!1301637 e!2325657)))

(declare-fun c!651145 () Bool)

(assert (=> d!1098425 (= c!651145 (is-Nil!40083 acc!415))))

(assert (=> d!1098425 (= (++!9938 acc!415 lt!1301599) lt!1301637)))

(declare-fun b!3760400 () Bool)

(declare-fun res!1522820 () Bool)

(assert (=> b!3760400 (=> (not res!1522820) (not e!2325656))))

(assert (=> b!3760400 (= res!1522820 (= (size!30169 lt!1301637) (+ (size!30169 acc!415) (size!30169 lt!1301599))))))

(declare-fun b!3760401 () Bool)

(assert (=> b!3760401 (= e!2325656 (or (not (= lt!1301599 Nil!40083)) (= lt!1301637 acc!415)))))

(declare-fun b!3760399 () Bool)

(assert (=> b!3760399 (= e!2325657 (Cons!40083 (h!45503 acc!415) (++!9938 (t!303784 acc!415) lt!1301599)))))

(declare-fun b!3760398 () Bool)

(assert (=> b!3760398 (= e!2325657 lt!1301599)))

(assert (= (and d!1098425 c!651145) b!3760398))

(assert (= (and d!1098425 (not c!651145)) b!3760399))

(assert (= (and d!1098425 res!1522819) b!3760400))

(assert (= (and b!3760400 res!1522820) b!3760401))

(declare-fun m!4254417 () Bool)

(assert (=> d!1098425 m!4254417))

(assert (=> d!1098425 m!4254391))

(assert (=> d!1098425 m!4254355))

(declare-fun m!4254419 () Bool)

(assert (=> b!3760400 m!4254419))

(assert (=> b!3760400 m!4254397))

(assert (=> b!3760400 m!4254361))

(declare-fun m!4254421 () Bool)

(assert (=> b!3760399 m!4254421))

(assert (=> b!3760297 d!1098425))

(declare-fun d!1098427 () Bool)

(declare-fun e!2325658 () Bool)

(assert (=> d!1098427 e!2325658))

(declare-fun res!1522821 () Bool)

(assert (=> d!1098427 (=> (not res!1522821) (not e!2325658))))

(declare-fun lt!1301640 () List!40207)

(assert (=> d!1098427 (= res!1522821 (= (content!5883 lt!1301640) (set.union (content!5883 lt!1301601) (content!5883 lt!1301598))))))

(declare-fun e!2325659 () List!40207)

(assert (=> d!1098427 (= lt!1301640 e!2325659)))

(declare-fun c!651146 () Bool)

(assert (=> d!1098427 (= c!651146 (is-Nil!40083 lt!1301601))))

(assert (=> d!1098427 (= (++!9938 lt!1301601 lt!1301598) lt!1301640)))

(declare-fun b!3760404 () Bool)

(declare-fun res!1522822 () Bool)

(assert (=> b!3760404 (=> (not res!1522822) (not e!2325658))))

(assert (=> b!3760404 (= res!1522822 (= (size!30169 lt!1301640) (+ (size!30169 lt!1301601) (size!30169 lt!1301598))))))

(declare-fun b!3760405 () Bool)

(assert (=> b!3760405 (= e!2325658 (or (not (= lt!1301598 Nil!40083)) (= lt!1301640 lt!1301601)))))

(declare-fun b!3760403 () Bool)

(assert (=> b!3760403 (= e!2325659 (Cons!40083 (h!45503 lt!1301601) (++!9938 (t!303784 lt!1301601) lt!1301598)))))

(declare-fun b!3760402 () Bool)

(assert (=> b!3760402 (= e!2325659 lt!1301598)))

(assert (= (and d!1098427 c!651146) b!3760402))

(assert (= (and d!1098427 (not c!651146)) b!3760403))

(assert (= (and d!1098427 res!1522821) b!3760404))

(assert (= (and b!3760404 res!1522822) b!3760405))

(declare-fun m!4254423 () Bool)

(assert (=> d!1098427 m!4254423))

(declare-fun m!4254425 () Bool)

(assert (=> d!1098427 m!4254425))

(declare-fun m!4254427 () Bool)

(assert (=> d!1098427 m!4254427))

(declare-fun m!4254429 () Bool)

(assert (=> b!3760404 m!4254429))

(declare-fun m!4254431 () Bool)

(assert (=> b!3760404 m!4254431))

(declare-fun m!4254433 () Bool)

(assert (=> b!3760404 m!4254433))

(declare-fun m!4254435 () Bool)

(assert (=> b!3760403 m!4254435))

(assert (=> b!3760297 d!1098427))

(declare-fun d!1098429 () Bool)

(declare-fun lt!1301644 () BalanceConc!24142)

(assert (=> d!1098429 (= (list!14795 lt!1301644) (originalCharacters!6741 separatorToken!124))))

(assert (=> d!1098429 (= lt!1301644 (dynLambda!17331 (toChars!8356 (transformation!6141 (rule!8905 separatorToken!124))) (value!195609 separatorToken!124)))))

(assert (=> d!1098429 (= (charsOf!3994 separatorToken!124) lt!1301644)))

(declare-fun b_lambda!110321 () Bool)

(assert (=> (not b_lambda!110321) (not d!1098429)))

(assert (=> d!1098429 t!303794))

(declare-fun b_and!279323 () Bool)

(assert (= b_and!279319 (and (=> t!303794 result!262756) b_and!279323)))

(assert (=> d!1098429 t!303796))

(declare-fun b_and!279325 () Bool)

(assert (= b_and!279321 (and (=> t!303796 result!262758) b_and!279325)))

(declare-fun m!4254437 () Bool)

(assert (=> d!1098429 m!4254437))

(assert (=> d!1098429 m!4254323))

(assert (=> b!3760297 d!1098429))

(declare-fun d!1098431 () Bool)

(declare-fun e!2325662 () Bool)

(assert (=> d!1098431 e!2325662))

(declare-fun res!1522823 () Bool)

(assert (=> d!1098431 (=> (not res!1522823) (not e!2325662))))

(declare-fun lt!1301645 () List!40207)

(assert (=> d!1098431 (= res!1522823 (= (content!5883 lt!1301645) (set.union (content!5883 lt!1301602) (content!5883 lt!1301598))))))

(declare-fun e!2325663 () List!40207)

(assert (=> d!1098431 (= lt!1301645 e!2325663)))

(declare-fun c!651147 () Bool)

(assert (=> d!1098431 (= c!651147 (is-Nil!40083 lt!1301602))))

(assert (=> d!1098431 (= (++!9938 lt!1301602 lt!1301598) lt!1301645)))

(declare-fun b!3760412 () Bool)

(declare-fun res!1522824 () Bool)

(assert (=> b!3760412 (=> (not res!1522824) (not e!2325662))))

(assert (=> b!3760412 (= res!1522824 (= (size!30169 lt!1301645) (+ (size!30169 lt!1301602) (size!30169 lt!1301598))))))

(declare-fun b!3760413 () Bool)

(assert (=> b!3760413 (= e!2325662 (or (not (= lt!1301598 Nil!40083)) (= lt!1301645 lt!1301602)))))

(declare-fun b!3760411 () Bool)

(assert (=> b!3760411 (= e!2325663 (Cons!40083 (h!45503 lt!1301602) (++!9938 (t!303784 lt!1301602) lt!1301598)))))

(declare-fun b!3760410 () Bool)

(assert (=> b!3760410 (= e!2325663 lt!1301598)))

(assert (= (and d!1098431 c!651147) b!3760410))

(assert (= (and d!1098431 (not c!651147)) b!3760411))

(assert (= (and d!1098431 res!1522823) b!3760412))

(assert (= (and b!3760412 res!1522824) b!3760413))

(declare-fun m!4254439 () Bool)

(assert (=> d!1098431 m!4254439))

(declare-fun m!4254441 () Bool)

(assert (=> d!1098431 m!4254441))

(assert (=> d!1098431 m!4254427))

(declare-fun m!4254443 () Bool)

(assert (=> b!3760412 m!4254443))

(declare-fun m!4254445 () Bool)

(assert (=> b!3760412 m!4254445))

(assert (=> b!3760412 m!4254433))

(declare-fun m!4254447 () Bool)

(assert (=> b!3760411 m!4254447))

(assert (=> b!3760297 d!1098431))

(declare-fun d!1098433 () Bool)

(declare-fun lt!1301646 () BalanceConc!24142)

(assert (=> d!1098433 (= (list!14795 lt!1301646) (originalCharacters!6741 (h!45504 l!4295)))))

(assert (=> d!1098433 (= lt!1301646 (dynLambda!17331 (toChars!8356 (transformation!6141 (rule!8905 (h!45504 l!4295)))) (value!195609 (h!45504 l!4295))))))

(assert (=> d!1098433 (= (charsOf!3994 (h!45504 l!4295)) lt!1301646)))

(declare-fun b_lambda!110323 () Bool)

(assert (=> (not b_lambda!110323) (not d!1098433)))

(assert (=> d!1098433 t!303790))

(declare-fun b_and!279327 () Bool)

(assert (= b_and!279323 (and (=> t!303790 result!262750) b_and!279327)))

(assert (=> d!1098433 t!303792))

(declare-fun b_and!279329 () Bool)

(assert (= b_and!279325 (and (=> t!303792 result!262754) b_and!279329)))

(declare-fun m!4254449 () Bool)

(assert (=> d!1098433 m!4254449))

(assert (=> d!1098433 m!4254311))

(assert (=> b!3760297 d!1098433))

(declare-fun lt!1301672 () List!40207)

(declare-fun d!1098435 () Bool)

(assert (=> d!1098435 (= lt!1301672 (++!9938 lt!1301596 (printWithSeparatorTokenList!409 thiss!13942 (t!303785 l!4295) separatorToken!124)))))

(declare-fun e!2325673 () List!40207)

(assert (=> d!1098435 (= lt!1301672 e!2325673)))

(declare-fun c!651153 () Bool)

(assert (=> d!1098435 (= c!651153 (is-Cons!40084 (t!303785 l!4295)))))

(assert (=> d!1098435 (isSeparator!6141 (rule!8905 separatorToken!124))))

(assert (=> d!1098435 (= (printWithSeparatorTokenListTailRec!47 thiss!13942 (t!303785 l!4295) separatorToken!124 lt!1301596) lt!1301672)))

(declare-fun b!3760431 () Bool)

(assert (=> b!3760431 (= e!2325673 (printWithSeparatorTokenListTailRec!47 thiss!13942 (t!303785 (t!303785 l!4295)) separatorToken!124 (++!9938 (++!9938 lt!1301596 (list!14795 (charsOf!3994 (h!45504 (t!303785 l!4295))))) (list!14795 (charsOf!3994 separatorToken!124)))))))

(declare-fun lt!1301671 () List!40207)

(assert (=> b!3760431 (= lt!1301671 (++!9938 (list!14795 (charsOf!3994 (h!45504 (t!303785 l!4295)))) (list!14795 (charsOf!3994 separatorToken!124))))))

(declare-fun lt!1301674 () List!40207)

(assert (=> b!3760431 (= lt!1301674 (printWithSeparatorTokenList!409 thiss!13942 (t!303785 (t!303785 l!4295)) separatorToken!124))))

(declare-fun lt!1301673 () Unit!57807)

(assert (=> b!3760431 (= lt!1301673 (lemmaConcatAssociativity!2101 lt!1301596 lt!1301671 lt!1301674))))

(assert (=> b!3760431 (= (++!9938 (++!9938 lt!1301596 lt!1301671) lt!1301674) (++!9938 lt!1301596 (++!9938 lt!1301671 lt!1301674)))))

(declare-fun lt!1301675 () Unit!57807)

(assert (=> b!3760431 (= lt!1301675 lt!1301673)))

(declare-fun lt!1301668 () List!40207)

(assert (=> b!3760431 (= lt!1301668 (list!14795 (charsOf!3994 (h!45504 (t!303785 l!4295)))))))

(declare-fun lt!1301670 () List!40207)

(assert (=> b!3760431 (= lt!1301670 (list!14795 (charsOf!3994 separatorToken!124)))))

(declare-fun lt!1301669 () Unit!57807)

(assert (=> b!3760431 (= lt!1301669 (lemmaConcatAssociativity!2101 lt!1301596 lt!1301668 lt!1301670))))

(assert (=> b!3760431 (= (++!9938 (++!9938 lt!1301596 lt!1301668) lt!1301670) (++!9938 lt!1301596 (++!9938 lt!1301668 lt!1301670)))))

(declare-fun lt!1301676 () Unit!57807)

(assert (=> b!3760431 (= lt!1301676 lt!1301669)))

(declare-fun b!3760432 () Bool)

(assert (=> b!3760432 (= e!2325673 lt!1301596)))

(assert (= (and d!1098435 c!651153) b!3760431))

(assert (= (and d!1098435 (not c!651153)) b!3760432))

(assert (=> d!1098435 m!4254235))

(assert (=> d!1098435 m!4254235))

(declare-fun m!4254473 () Bool)

(assert (=> d!1098435 m!4254473))

(declare-fun m!4254475 () Bool)

(assert (=> b!3760431 m!4254475))

(declare-fun m!4254477 () Bool)

(assert (=> b!3760431 m!4254477))

(assert (=> b!3760431 m!4254375))

(declare-fun m!4254479 () Bool)

(assert (=> b!3760431 m!4254479))

(assert (=> b!3760431 m!4254213))

(declare-fun m!4254481 () Bool)

(assert (=> b!3760431 m!4254481))

(assert (=> b!3760431 m!4254211))

(declare-fun m!4254483 () Bool)

(assert (=> b!3760431 m!4254483))

(declare-fun m!4254485 () Bool)

(assert (=> b!3760431 m!4254485))

(declare-fun m!4254487 () Bool)

(assert (=> b!3760431 m!4254487))

(assert (=> b!3760431 m!4254485))

(declare-fun m!4254489 () Bool)

(assert (=> b!3760431 m!4254489))

(assert (=> b!3760431 m!4254489))

(declare-fun m!4254491 () Bool)

(assert (=> b!3760431 m!4254491))

(assert (=> b!3760431 m!4254483))

(declare-fun m!4254493 () Bool)

(assert (=> b!3760431 m!4254493))

(assert (=> b!3760431 m!4254369))

(assert (=> b!3760431 m!4254373))

(assert (=> b!3760431 m!4254213))

(assert (=> b!3760431 m!4254367))

(assert (=> b!3760431 m!4254211))

(assert (=> b!3760431 m!4254213))

(assert (=> b!3760431 m!4254475))

(declare-fun m!4254495 () Bool)

(assert (=> b!3760431 m!4254495))

(assert (=> b!3760431 m!4254375))

(assert (=> b!3760431 m!4254373))

(assert (=> b!3760431 m!4254481))

(declare-fun m!4254497 () Bool)

(assert (=> b!3760431 m!4254497))

(assert (=> b!3760431 m!4254373))

(assert (=> b!3760431 m!4254479))

(declare-fun m!4254499 () Bool)

(assert (=> b!3760431 m!4254499))

(assert (=> b!3760297 d!1098435))

(declare-fun d!1098441 () Bool)

(declare-fun e!2325674 () Bool)

(assert (=> d!1098441 e!2325674))

(declare-fun res!1522831 () Bool)

(assert (=> d!1098441 (=> (not res!1522831) (not e!2325674))))

(declare-fun lt!1301677 () List!40207)

(assert (=> d!1098441 (= res!1522831 (= (content!5883 lt!1301677) (set.union (content!5883 acc!415) (content!5883 (++!9938 lt!1301601 lt!1301598)))))))

(declare-fun e!2325675 () List!40207)

(assert (=> d!1098441 (= lt!1301677 e!2325675)))

(declare-fun c!651154 () Bool)

(assert (=> d!1098441 (= c!651154 (is-Nil!40083 acc!415))))

(assert (=> d!1098441 (= (++!9938 acc!415 (++!9938 lt!1301601 lt!1301598)) lt!1301677)))

(declare-fun b!3760435 () Bool)

(declare-fun res!1522832 () Bool)

(assert (=> b!3760435 (=> (not res!1522832) (not e!2325674))))

(assert (=> b!3760435 (= res!1522832 (= (size!30169 lt!1301677) (+ (size!30169 acc!415) (size!30169 (++!9938 lt!1301601 lt!1301598)))))))

(declare-fun b!3760436 () Bool)

(assert (=> b!3760436 (= e!2325674 (or (not (= (++!9938 lt!1301601 lt!1301598) Nil!40083)) (= lt!1301677 acc!415)))))

(declare-fun b!3760434 () Bool)

(assert (=> b!3760434 (= e!2325675 (Cons!40083 (h!45503 acc!415) (++!9938 (t!303784 acc!415) (++!9938 lt!1301601 lt!1301598))))))

(declare-fun b!3760433 () Bool)

(assert (=> b!3760433 (= e!2325675 (++!9938 lt!1301601 lt!1301598))))

(assert (= (and d!1098441 c!651154) b!3760433))

(assert (= (and d!1098441 (not c!651154)) b!3760434))

(assert (= (and d!1098441 res!1522831) b!3760435))

(assert (= (and b!3760435 res!1522832) b!3760436))

(declare-fun m!4254501 () Bool)

(assert (=> d!1098441 m!4254501))

(assert (=> d!1098441 m!4254391))

(assert (=> d!1098441 m!4254239))

(declare-fun m!4254503 () Bool)

(assert (=> d!1098441 m!4254503))

(declare-fun m!4254505 () Bool)

(assert (=> b!3760435 m!4254505))

(assert (=> b!3760435 m!4254397))

(assert (=> b!3760435 m!4254239))

(declare-fun m!4254507 () Bool)

(assert (=> b!3760435 m!4254507))

(assert (=> b!3760434 m!4254239))

(declare-fun m!4254509 () Bool)

(assert (=> b!3760434 m!4254509))

(assert (=> b!3760297 d!1098441))

(declare-fun d!1098443 () Bool)

(declare-fun e!2325676 () Bool)

(assert (=> d!1098443 e!2325676))

(declare-fun res!1522833 () Bool)

(assert (=> d!1098443 (=> (not res!1522833) (not e!2325676))))

(declare-fun lt!1301678 () List!40207)

(assert (=> d!1098443 (= res!1522833 (= (content!5883 lt!1301678) (set.union (content!5883 acc!415) (content!5883 lt!1301601))))))

(declare-fun e!2325677 () List!40207)

(assert (=> d!1098443 (= lt!1301678 e!2325677)))

(declare-fun c!651155 () Bool)

(assert (=> d!1098443 (= c!651155 (is-Nil!40083 acc!415))))

(assert (=> d!1098443 (= (++!9938 acc!415 lt!1301601) lt!1301678)))

(declare-fun b!3760439 () Bool)

(declare-fun res!1522834 () Bool)

(assert (=> b!3760439 (=> (not res!1522834) (not e!2325676))))

(assert (=> b!3760439 (= res!1522834 (= (size!30169 lt!1301678) (+ (size!30169 acc!415) (size!30169 lt!1301601))))))

(declare-fun b!3760440 () Bool)

(assert (=> b!3760440 (= e!2325676 (or (not (= lt!1301601 Nil!40083)) (= lt!1301678 acc!415)))))

(declare-fun b!3760438 () Bool)

(assert (=> b!3760438 (= e!2325677 (Cons!40083 (h!45503 acc!415) (++!9938 (t!303784 acc!415) lt!1301601)))))

(declare-fun b!3760437 () Bool)

(assert (=> b!3760437 (= e!2325677 lt!1301601)))

(assert (= (and d!1098443 c!651155) b!3760437))

(assert (= (and d!1098443 (not c!651155)) b!3760438))

(assert (= (and d!1098443 res!1522833) b!3760439))

(assert (= (and b!3760439 res!1522834) b!3760440))

(declare-fun m!4254511 () Bool)

(assert (=> d!1098443 m!4254511))

(assert (=> d!1098443 m!4254391))

(assert (=> d!1098443 m!4254425))

(declare-fun m!4254513 () Bool)

(assert (=> b!3760439 m!4254513))

(assert (=> b!3760439 m!4254397))

(assert (=> b!3760439 m!4254431))

(declare-fun m!4254515 () Bool)

(assert (=> b!3760438 m!4254515))

(assert (=> b!3760297 d!1098443))

(declare-fun b!3760458 () Bool)

(declare-fun b_free!100673 () Bool)

(declare-fun b_next!101377 () Bool)

(assert (=> b!3760458 (= b_free!100673 (not b_next!101377))))

(declare-fun tp!1148997 () Bool)

(declare-fun b_and!279335 () Bool)

(assert (=> b!3760458 (= tp!1148997 b_and!279335)))

(declare-fun b_free!100675 () Bool)

(declare-fun b_next!101379 () Bool)

(assert (=> b!3760458 (= b_free!100675 (not b_next!101379))))

(declare-fun t!303802 () Bool)

(declare-fun tb!215193 () Bool)

(assert (=> (and b!3760458 (= (toChars!8356 (transformation!6141 (rule!8905 (h!45504 (t!303785 l!4295))))) (toChars!8356 (transformation!6141 (rule!8905 (h!45504 l!4295))))) t!303802) tb!215193))

(declare-fun result!262768 () Bool)

(assert (= result!262768 result!262750))

(assert (=> b!3760333 t!303802))

(declare-fun tb!215195 () Bool)

(declare-fun t!303804 () Bool)

(assert (=> (and b!3760458 (= (toChars!8356 (transformation!6141 (rule!8905 (h!45504 (t!303785 l!4295))))) (toChars!8356 (transformation!6141 (rule!8905 separatorToken!124)))) t!303804) tb!215195))

(declare-fun result!262770 () Bool)

(assert (= result!262770 result!262756))

(assert (=> b!3760340 t!303804))

(assert (=> d!1098429 t!303804))

(assert (=> d!1098433 t!303802))

(declare-fun tp!1148998 () Bool)

(declare-fun b_and!279337 () Bool)

(assert (=> b!3760458 (= tp!1148998 (and (=> t!303802 result!262768) (=> t!303804 result!262770) b_and!279337))))

(declare-fun e!2325693 () Bool)

(declare-fun tp!1148995 () Bool)

(declare-fun b!3760457 () Bool)

(declare-fun e!2325692 () Bool)

(assert (=> b!3760457 (= e!2325693 (and tp!1148995 (inv!53749 (tag!7001 (rule!8905 (h!45504 (t!303785 l!4295))))) (inv!53753 (transformation!6141 (rule!8905 (h!45504 (t!303785 l!4295))))) e!2325692))))

(declare-fun e!2325696 () Bool)

(declare-fun tp!1148996 () Bool)

(declare-fun b!3760455 () Bool)

(declare-fun e!2325694 () Bool)

(assert (=> b!3760455 (= e!2325694 (and (inv!53752 (h!45504 (t!303785 l!4295))) e!2325696 tp!1148996))))

(assert (=> b!3760293 (= tp!1148945 e!2325694)))

(assert (=> b!3760458 (= e!2325692 (and tp!1148997 tp!1148998))))

(declare-fun tp!1148994 () Bool)

(declare-fun b!3760456 () Bool)

(assert (=> b!3760456 (= e!2325696 (and (inv!21 (value!195609 (h!45504 (t!303785 l!4295)))) e!2325693 tp!1148994))))

(assert (= b!3760457 b!3760458))

(assert (= b!3760456 b!3760457))

(assert (= b!3760455 b!3760456))

(assert (= (and b!3760293 (is-Cons!40084 (t!303785 l!4295))) b!3760455))

(declare-fun m!4254517 () Bool)

(assert (=> b!3760457 m!4254517))

(declare-fun m!4254519 () Bool)

(assert (=> b!3760457 m!4254519))

(declare-fun m!4254521 () Bool)

(assert (=> b!3760455 m!4254521))

(declare-fun m!4254523 () Bool)

(assert (=> b!3760456 m!4254523))

(declare-fun b!3760465 () Bool)

(declare-fun e!2325701 () Bool)

(declare-fun tp!1149001 () Bool)

(assert (=> b!3760465 (= e!2325701 (and tp_is_empty!19087 tp!1149001))))

(assert (=> b!3760299 (= tp!1148944 e!2325701)))

(assert (= (and b!3760299 (is-Cons!40083 (originalCharacters!6741 (h!45504 l!4295)))) b!3760465))

(declare-fun b!3760466 () Bool)

(declare-fun e!2325702 () Bool)

(declare-fun tp!1149002 () Bool)

(assert (=> b!3760466 (= e!2325702 (and tp_is_empty!19087 tp!1149002))))

(assert (=> b!3760294 (= tp!1148938 e!2325702)))

(assert (= (and b!3760294 (is-Cons!40083 (originalCharacters!6741 separatorToken!124))) b!3760466))

(declare-fun b!3760467 () Bool)

(declare-fun e!2325703 () Bool)

(declare-fun tp!1149003 () Bool)

(assert (=> b!3760467 (= e!2325703 (and tp_is_empty!19087 tp!1149003))))

(assert (=> b!3760295 (= tp!1148943 e!2325703)))

(assert (= (and b!3760295 (is-Cons!40083 (t!303784 acc!415))) b!3760467))

(declare-fun b!3760478 () Bool)

(declare-fun e!2325706 () Bool)

(assert (=> b!3760478 (= e!2325706 tp_is_empty!19087)))

(declare-fun b!3760480 () Bool)

(declare-fun tp!1149017 () Bool)

(assert (=> b!3760480 (= e!2325706 tp!1149017)))

(declare-fun b!3760481 () Bool)

(declare-fun tp!1149014 () Bool)

(declare-fun tp!1149018 () Bool)

(assert (=> b!3760481 (= e!2325706 (and tp!1149014 tp!1149018))))

(declare-fun b!3760479 () Bool)

(declare-fun tp!1149016 () Bool)

(declare-fun tp!1149015 () Bool)

(assert (=> b!3760479 (= e!2325706 (and tp!1149016 tp!1149015))))

(assert (=> b!3760301 (= tp!1148937 e!2325706)))

(assert (= (and b!3760301 (is-ElementMatch!11046 (regex!6141 (rule!8905 separatorToken!124)))) b!3760478))

(assert (= (and b!3760301 (is-Concat!17418 (regex!6141 (rule!8905 separatorToken!124)))) b!3760479))

(assert (= (and b!3760301 (is-Star!11046 (regex!6141 (rule!8905 separatorToken!124)))) b!3760480))

(assert (= (and b!3760301 (is-Union!11046 (regex!6141 (rule!8905 separatorToken!124)))) b!3760481))

(declare-fun b!3760482 () Bool)

(declare-fun e!2325707 () Bool)

(assert (=> b!3760482 (= e!2325707 tp_is_empty!19087)))

(declare-fun b!3760484 () Bool)

(declare-fun tp!1149022 () Bool)

(assert (=> b!3760484 (= e!2325707 tp!1149022)))

(declare-fun b!3760485 () Bool)

(declare-fun tp!1149019 () Bool)

(declare-fun tp!1149023 () Bool)

(assert (=> b!3760485 (= e!2325707 (and tp!1149019 tp!1149023))))

(declare-fun b!3760483 () Bool)

(declare-fun tp!1149021 () Bool)

(declare-fun tp!1149020 () Bool)

(assert (=> b!3760483 (= e!2325707 (and tp!1149021 tp!1149020))))

(assert (=> b!3760296 (= tp!1148942 e!2325707)))

(assert (= (and b!3760296 (is-ElementMatch!11046 (regex!6141 (rule!8905 (h!45504 l!4295))))) b!3760482))

(assert (= (and b!3760296 (is-Concat!17418 (regex!6141 (rule!8905 (h!45504 l!4295))))) b!3760483))

(assert (= (and b!3760296 (is-Star!11046 (regex!6141 (rule!8905 (h!45504 l!4295))))) b!3760484))

(assert (= (and b!3760296 (is-Union!11046 (regex!6141 (rule!8905 (h!45504 l!4295))))) b!3760485))

(declare-fun b_lambda!110325 () Bool)

(assert (= b_lambda!110317 (or (and b!3760298 b_free!100659 (= (toChars!8356 (transformation!6141 (rule!8905 (h!45504 l!4295)))) (toChars!8356 (transformation!6141 (rule!8905 separatorToken!124))))) (and b!3760300 b_free!100663) (and b!3760458 b_free!100675 (= (toChars!8356 (transformation!6141 (rule!8905 (h!45504 (t!303785 l!4295))))) (toChars!8356 (transformation!6141 (rule!8905 separatorToken!124))))) b_lambda!110325)))

(declare-fun b_lambda!110327 () Bool)

(assert (= b_lambda!110321 (or (and b!3760298 b_free!100659 (= (toChars!8356 (transformation!6141 (rule!8905 (h!45504 l!4295)))) (toChars!8356 (transformation!6141 (rule!8905 separatorToken!124))))) (and b!3760300 b_free!100663) (and b!3760458 b_free!100675 (= (toChars!8356 (transformation!6141 (rule!8905 (h!45504 (t!303785 l!4295))))) (toChars!8356 (transformation!6141 (rule!8905 separatorToken!124))))) b_lambda!110327)))

(declare-fun b_lambda!110329 () Bool)

(assert (= b_lambda!110323 (or (and b!3760298 b_free!100659) (and b!3760300 b_free!100663 (= (toChars!8356 (transformation!6141 (rule!8905 separatorToken!124))) (toChars!8356 (transformation!6141 (rule!8905 (h!45504 l!4295)))))) (and b!3760458 b_free!100675 (= (toChars!8356 (transformation!6141 (rule!8905 (h!45504 (t!303785 l!4295))))) (toChars!8356 (transformation!6141 (rule!8905 (h!45504 l!4295)))))) b_lambda!110329)))

(declare-fun b_lambda!110331 () Bool)

(assert (= b_lambda!110315 (or (and b!3760298 b_free!100659) (and b!3760300 b_free!100663 (= (toChars!8356 (transformation!6141 (rule!8905 separatorToken!124))) (toChars!8356 (transformation!6141 (rule!8905 (h!45504 l!4295)))))) (and b!3760458 b_free!100675 (= (toChars!8356 (transformation!6141 (rule!8905 (h!45504 (t!303785 l!4295))))) (toChars!8356 (transformation!6141 (rule!8905 (h!45504 l!4295)))))) b_lambda!110331)))

(push 1)

(assert (not b!3760399))

(assert (not b_next!101361))

(assert (not d!1098419))

(assert (not d!1098441))

(assert (not b_next!101365))

(assert (not b!3760439))

(assert (not d!1098417))

(assert (not b!3760357))

(assert (not b_next!101367))

(assert (not b!3760340))

(assert (not b!3760435))

(assert (not b!3760438))

(assert (not b!3760484))

(assert (not b!3760403))

(assert (not d!1098423))

(assert (not b!3760366))

(assert b_and!279327)

(assert (not b!3760457))

(assert (not tb!215185))

(assert (not d!1098431))

(assert (not b!3760467))

(assert (not d!1098395))

(assert (not b!3760481))

(assert (not d!1098385))

(assert (not b!3760434))

(assert (not b!3760333))

(assert (not d!1098415))

(assert (not b!3760396))

(assert (not d!1098405))

(assert (not b!3760455))

(assert b_and!279299)

(assert (not b!3760392))

(assert (not d!1098401))

(assert (not b!3760395))

(assert (not b!3760400))

(assert (not b_next!101377))

(assert (not b_next!101363))

(assert (not b!3760341))

(assert (not b!3760376))

(assert tp_is_empty!19087)

(assert (not b!3760359))

(assert (not b!3760377))

(assert (not b!3760361))

(assert (not b_lambda!110331))

(assert (not b!3760362))

(assert (not b!3760391))

(assert (not d!1098427))

(assert (not b!3760483))

(assert (not b!3760365))

(assert (not b!3760456))

(assert (not b!3760466))

(assert (not b!3760342))

(assert (not d!1098433))

(assert (not b_lambda!110325))

(assert (not d!1098435))

(assert (not b!3760465))

(assert (not d!1098429))

(assert b_and!279335)

(assert (not d!1098387))

(assert (not b!3760412))

(assert (not d!1098421))

(assert (not tb!215181))

(assert (not b!3760388))

(assert (not d!1098399))

(assert (not b!3760385))

(assert (not b_lambda!110327))

(assert (not d!1098443))

(assert (not b!3760411))

(assert (not d!1098425))

(assert (not b!3760334))

(assert (not b!3760480))

(assert (not b!3760479))

(assert (not b_next!101379))

(assert (not b!3760485))

(assert b_and!279329)

(assert b_and!279337)

(assert (not b!3760404))

(assert (not b!3760339))

(assert (not b!3760431))

(assert (not b!3760354))

(assert (not b!3760356))

(assert b_and!279303)

(assert (not b_lambda!110329))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!101367))

(assert b_and!279327)

(assert b_and!279299)

(assert (not b_next!101361))

(assert b_and!279335)

(assert (not b_next!101379))

(assert (not b_next!101365))

(assert b_and!279329)

(assert b_and!279337)

(assert b_and!279303)

(assert (not b_next!101377))

(assert (not b_next!101363))

(check-sat)

(pop 1)

