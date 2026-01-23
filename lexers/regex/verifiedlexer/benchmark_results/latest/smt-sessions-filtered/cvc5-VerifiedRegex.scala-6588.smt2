; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!348152 () Bool)

(assert start!348152)

(declare-fun b!3696944 () Bool)

(declare-fun b_free!98385 () Bool)

(declare-fun b_next!99089 () Bool)

(assert (=> b!3696944 (= b_free!98385 (not b_next!99089))))

(declare-fun tp!1123715 () Bool)

(declare-fun b_and!276339 () Bool)

(assert (=> b!3696944 (= tp!1123715 b_and!276339)))

(declare-fun b_free!98387 () Bool)

(declare-fun b_next!99091 () Bool)

(assert (=> b!3696944 (= b_free!98387 (not b_next!99091))))

(declare-fun tp!1123719 () Bool)

(declare-fun b_and!276341 () Bool)

(assert (=> b!3696944 (= tp!1123719 b_and!276341)))

(declare-fun b!3696946 () Bool)

(declare-fun b_free!98389 () Bool)

(declare-fun b_next!99093 () Bool)

(assert (=> b!3696946 (= b_free!98389 (not b_next!99093))))

(declare-fun tp!1123721 () Bool)

(declare-fun b_and!276343 () Bool)

(assert (=> b!3696946 (= tp!1123721 b_and!276343)))

(declare-fun b_free!98391 () Bool)

(declare-fun b_next!99095 () Bool)

(assert (=> b!3696946 (= b_free!98391 (not b_next!99095))))

(declare-fun tp!1123716 () Bool)

(declare-fun b_and!276345 () Bool)

(assert (=> b!3696946 (= tp!1123716 b_and!276345)))

(declare-fun b!3696943 () Bool)

(declare-fun e!2289520 () Bool)

(declare-fun e!2289511 () Bool)

(assert (=> b!3696943 (= e!2289520 e!2289511)))

(declare-fun res!1503428 () Bool)

(assert (=> b!3696943 (=> (not res!1503428) (not e!2289511))))

(declare-datatypes ((List!39373 0))(
  ( (Nil!39249) (Cons!39249 (h!44669 (_ BitVec 16)) (t!301732 List!39373)) )
))
(declare-datatypes ((TokenValue!6185 0))(
  ( (FloatLiteralValue!12370 (text!43740 List!39373)) (TokenValueExt!6184 (__x!24587 Int)) (Broken!30925 (value!190147 List!39373)) (Object!6308) (End!6185) (Def!6185) (Underscore!6185) (Match!6185) (Else!6185) (Error!6185) (Case!6185) (If!6185) (Extends!6185) (Abstract!6185) (Class!6185) (Val!6185) (DelimiterValue!12370 (del!6245 List!39373)) (KeywordValue!6191 (value!190148 List!39373)) (CommentValue!12370 (value!190149 List!39373)) (WhitespaceValue!12370 (value!190150 List!39373)) (IndentationValue!6185 (value!190151 List!39373)) (String!44260) (Int32!6185) (Broken!30926 (value!190152 List!39373)) (Boolean!6186) (Unit!57228) (OperatorValue!6188 (op!6245 List!39373)) (IdentifierValue!12370 (value!190153 List!39373)) (IdentifierValue!12371 (value!190154 List!39373)) (WhitespaceValue!12371 (value!190155 List!39373)) (True!12370) (False!12370) (Broken!30927 (value!190156 List!39373)) (Broken!30928 (value!190157 List!39373)) (True!12371) (RightBrace!6185) (RightBracket!6185) (Colon!6185) (Null!6185) (Comma!6185) (LeftBracket!6185) (False!12371) (LeftBrace!6185) (ImaginaryLiteralValue!6185 (text!43741 List!39373)) (StringLiteralValue!18555 (value!190158 List!39373)) (EOFValue!6185 (value!190159 List!39373)) (IdentValue!6185 (value!190160 List!39373)) (DelimiterValue!12371 (value!190161 List!39373)) (DedentValue!6185 (value!190162 List!39373)) (NewLineValue!6185 (value!190163 List!39373)) (IntegerValue!18555 (value!190164 (_ BitVec 32)) (text!43742 List!39373)) (IntegerValue!18556 (value!190165 Int) (text!43743 List!39373)) (Times!6185) (Or!6185) (Equal!6185) (Minus!6185) (Broken!30929 (value!190166 List!39373)) (And!6185) (Div!6185) (LessEqual!6185) (Mod!6185) (Concat!16899) (Not!6185) (Plus!6185) (SpaceValue!6185 (value!190167 List!39373)) (IntegerValue!18557 (value!190168 Int) (text!43744 List!39373)) (StringLiteralValue!18556 (text!43745 List!39373)) (FloatLiteralValue!12371 (text!43746 List!39373)) (BytesLiteralValue!6185 (value!190169 List!39373)) (CommentValue!12371 (value!190170 List!39373)) (StringLiteralValue!18557 (value!190171 List!39373)) (ErrorTokenValue!6185 (msg!6246 List!39373)) )
))
(declare-datatypes ((C!21614 0))(
  ( (C!21615 (val!12855 Int)) )
))
(declare-datatypes ((List!39374 0))(
  ( (Nil!39250) (Cons!39250 (h!44670 C!21614) (t!301733 List!39374)) )
))
(declare-datatypes ((IArray!24109 0))(
  ( (IArray!24110 (innerList!12112 List!39374)) )
))
(declare-datatypes ((Conc!12052 0))(
  ( (Node!12052 (left!30576 Conc!12052) (right!30906 Conc!12052) (csize!24334 Int) (cheight!12263 Int)) (Leaf!18641 (xs!15254 IArray!24109) (csize!24335 Int)) (Empty!12052) )
))
(declare-datatypes ((BalanceConc!23718 0))(
  ( (BalanceConc!23719 (c!638989 Conc!12052)) )
))
(declare-datatypes ((Regex!10714 0))(
  ( (ElementMatch!10714 (c!638990 C!21614)) (Concat!16900 (regOne!21940 Regex!10714) (regTwo!21940 Regex!10714)) (EmptyExpr!10714) (Star!10714 (reg!11043 Regex!10714)) (EmptyLang!10714) (Union!10714 (regOne!21941 Regex!10714) (regTwo!21941 Regex!10714)) )
))
(declare-datatypes ((String!44261 0))(
  ( (String!44262 (value!190172 String)) )
))
(declare-datatypes ((TokenValueInjection!11798 0))(
  ( (TokenValueInjection!11799 (toValue!8287 Int) (toChars!8146 Int)) )
))
(declare-datatypes ((Rule!11710 0))(
  ( (Rule!11711 (regex!5955 Regex!10714) (tag!6785 String!44261) (isSeparator!5955 Bool) (transformation!5955 TokenValueInjection!11798)) )
))
(declare-datatypes ((Token!11264 0))(
  ( (Token!11265 (value!190173 TokenValue!6185) (rule!8811 Rule!11710) (size!29939 Int) (originalCharacters!6663 List!39374)) )
))
(declare-datatypes ((tuple2!39122 0))(
  ( (tuple2!39123 (_1!22695 Token!11264) (_2!22695 List!39374)) )
))
(declare-datatypes ((Option!8489 0))(
  ( (None!8488) (Some!8488 (v!38446 tuple2!39122)) )
))
(declare-fun lt!1293974 () Option!8489)

(declare-fun isDefined!6678 (Option!8489) Bool)

(assert (=> b!3696943 (= res!1503428 (isDefined!6678 lt!1293974))))

(declare-fun input!3172 () List!39374)

(declare-datatypes ((List!39375 0))(
  ( (Nil!39251) (Cons!39251 (h!44671 Rule!11710) (t!301734 List!39375)) )
))
(declare-fun rules!3598 () List!39375)

(declare-datatypes ((LexerInterface!5544 0))(
  ( (LexerInterfaceExt!5541 (__x!24588 Int)) (Lexer!5542) )
))
(declare-fun thiss!25322 () LexerInterface!5544)

(declare-fun maxPrefix!3066 (LexerInterface!5544 List!39375 List!39374) Option!8489)

(assert (=> b!3696943 (= lt!1293974 (maxPrefix!3066 thiss!25322 rules!3598 input!3172))))

(declare-fun e!2289518 () Bool)

(assert (=> b!3696944 (= e!2289518 (and tp!1123715 tp!1123719))))

(declare-fun b!3696945 () Bool)

(declare-fun res!1503426 () Bool)

(assert (=> b!3696945 (=> (not res!1503426) (not e!2289520))))

(declare-fun isEmpty!23387 (List!39375) Bool)

(assert (=> b!3696945 (= res!1503426 (not (isEmpty!23387 rules!3598)))))

(declare-fun e!2289515 () Bool)

(assert (=> b!3696946 (= e!2289515 (and tp!1123721 tp!1123716))))

(declare-fun e!2289517 () Bool)

(declare-fun b!3696947 () Bool)

(declare-fun tp!1123718 () Bool)

(declare-fun inv!52745 (String!44261) Bool)

(declare-fun inv!52748 (TokenValueInjection!11798) Bool)

(assert (=> b!3696947 (= e!2289517 (and tp!1123718 (inv!52745 (tag!6785 (h!44671 rules!3598))) (inv!52748 (transformation!5955 (h!44671 rules!3598))) e!2289515))))

(declare-fun b!3696948 () Bool)

(declare-fun e!2289516 () Bool)

(assert (=> b!3696948 (= e!2289511 e!2289516)))

(declare-fun res!1503430 () Bool)

(assert (=> b!3696948 (=> (not res!1503430) (not e!2289516))))

(declare-fun lt!1293973 () Option!8489)

(assert (=> b!3696948 (= res!1503430 (isDefined!6678 lt!1293973))))

(declare-fun maxPrefixOneRule!2176 (LexerInterface!5544 Rule!11710 List!39374) Option!8489)

(assert (=> b!3696948 (= lt!1293973 (maxPrefixOneRule!2176 thiss!25322 (h!44671 rules!3598) input!3172))))

(declare-fun token!544 () Token!11264)

(declare-fun tp!1123713 () Bool)

(declare-fun b!3696949 () Bool)

(declare-fun e!2289510 () Bool)

(assert (=> b!3696949 (= e!2289510 (and tp!1123713 (inv!52745 (tag!6785 (rule!8811 token!544))) (inv!52748 (transformation!5955 (rule!8811 token!544))) e!2289518))))

(declare-fun b!3696950 () Bool)

(declare-fun e!2289514 () Bool)

(declare-fun tp_is_empty!18503 () Bool)

(declare-fun tp!1123720 () Bool)

(assert (=> b!3696950 (= e!2289514 (and tp_is_empty!18503 tp!1123720))))

(declare-fun b!3696951 () Bool)

(assert (=> b!3696951 (= e!2289516 (not (= (h!44671 rules!3598) (rule!8811 token!544))))))

(declare-fun tp!1123717 () Bool)

(declare-fun b!3696952 () Bool)

(declare-fun e!2289509 () Bool)

(declare-fun inv!21 (TokenValue!6185) Bool)

(assert (=> b!3696952 (= e!2289509 (and (inv!21 (value!190173 token!544)) e!2289510 tp!1123717))))

(declare-fun b!3696954 () Bool)

(declare-fun res!1503429 () Bool)

(assert (=> b!3696954 (=> (not res!1503429) (not e!2289511))))

(declare-fun get!13054 (Option!8489) tuple2!39122)

(assert (=> b!3696954 (= res!1503429 (= (_1!22695 (get!13054 lt!1293974)) token!544))))

(declare-fun b!3696955 () Bool)

(declare-fun res!1503431 () Bool)

(assert (=> b!3696955 (=> (not res!1503431) (not e!2289516))))

(assert (=> b!3696955 (= res!1503431 (= (_1!22695 (get!13054 lt!1293973)) token!544))))

(declare-fun b!3696956 () Bool)

(declare-fun res!1503432 () Bool)

(assert (=> b!3696956 (=> (not res!1503432) (not e!2289520))))

(declare-fun rulesInvariant!4941 (LexerInterface!5544 List!39375) Bool)

(assert (=> b!3696956 (= res!1503432 (rulesInvariant!4941 thiss!25322 rules!3598))))

(declare-fun b!3696957 () Bool)

(declare-fun e!2289519 () Bool)

(declare-fun tp!1123714 () Bool)

(assert (=> b!3696957 (= e!2289519 (and e!2289517 tp!1123714))))

(declare-fun b!3696953 () Bool)

(declare-fun res!1503433 () Bool)

(assert (=> b!3696953 (=> (not res!1503433) (not e!2289511))))

(assert (=> b!3696953 (= res!1503433 (is-Cons!39251 rules!3598))))

(declare-fun res!1503427 () Bool)

(assert (=> start!348152 (=> (not res!1503427) (not e!2289520))))

(assert (=> start!348152 (= res!1503427 (is-Lexer!5542 thiss!25322))))

(assert (=> start!348152 e!2289520))

(assert (=> start!348152 true))

(assert (=> start!348152 e!2289519))

(declare-fun inv!52749 (Token!11264) Bool)

(assert (=> start!348152 (and (inv!52749 token!544) e!2289509)))

(assert (=> start!348152 e!2289514))

(assert (= (and start!348152 res!1503427) b!3696956))

(assert (= (and b!3696956 res!1503432) b!3696945))

(assert (= (and b!3696945 res!1503426) b!3696943))

(assert (= (and b!3696943 res!1503428) b!3696954))

(assert (= (and b!3696954 res!1503429) b!3696953))

(assert (= (and b!3696953 res!1503433) b!3696948))

(assert (= (and b!3696948 res!1503430) b!3696955))

(assert (= (and b!3696955 res!1503431) b!3696951))

(assert (= b!3696947 b!3696946))

(assert (= b!3696957 b!3696947))

(assert (= (and start!348152 (is-Cons!39251 rules!3598)) b!3696957))

(assert (= b!3696949 b!3696944))

(assert (= b!3696952 b!3696949))

(assert (= start!348152 b!3696952))

(assert (= (and start!348152 (is-Cons!39250 input!3172)) b!3696950))

(declare-fun m!4208497 () Bool)

(assert (=> b!3696956 m!4208497))

(declare-fun m!4208499 () Bool)

(assert (=> b!3696952 m!4208499))

(declare-fun m!4208501 () Bool)

(assert (=> start!348152 m!4208501))

(declare-fun m!4208503 () Bool)

(assert (=> b!3696948 m!4208503))

(declare-fun m!4208505 () Bool)

(assert (=> b!3696948 m!4208505))

(declare-fun m!4208507 () Bool)

(assert (=> b!3696954 m!4208507))

(declare-fun m!4208509 () Bool)

(assert (=> b!3696943 m!4208509))

(declare-fun m!4208511 () Bool)

(assert (=> b!3696943 m!4208511))

(declare-fun m!4208513 () Bool)

(assert (=> b!3696949 m!4208513))

(declare-fun m!4208515 () Bool)

(assert (=> b!3696949 m!4208515))

(declare-fun m!4208517 () Bool)

(assert (=> b!3696955 m!4208517))

(declare-fun m!4208519 () Bool)

(assert (=> b!3696945 m!4208519))

(declare-fun m!4208521 () Bool)

(assert (=> b!3696947 m!4208521))

(declare-fun m!4208523 () Bool)

(assert (=> b!3696947 m!4208523))

(push 1)

(assert (not b!3696949))

(assert (not b!3696948))

(assert (not b_next!99095))

(assert (not b!3696950))

(assert (not b!3696947))

(assert (not b!3696955))

(assert (not b!3696952))

(assert tp_is_empty!18503)

(assert (not b_next!99089))

(assert b_and!276343)

(assert b_and!276341)

(assert (not b_next!99091))

(assert b_and!276339)

(assert (not b!3696954))

(assert (not b!3696956))

(assert (not b!3696945))

(assert (not b!3696957))

(assert (not b!3696943))

(assert b_and!276345)

(assert (not start!348152))

(assert (not b_next!99093))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!99095))

(assert (not b_next!99089))

(assert b_and!276345)

(assert b_and!276343)

(assert (not b_next!99093))

(assert b_and!276341)

(assert (not b_next!99091))

(assert b_and!276339)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1084319 () Bool)

(declare-fun res!1503470 () Bool)

(declare-fun e!2289563 () Bool)

(assert (=> d!1084319 (=> (not res!1503470) (not e!2289563))))

(declare-fun isEmpty!23389 (List!39374) Bool)

(assert (=> d!1084319 (= res!1503470 (not (isEmpty!23389 (originalCharacters!6663 token!544))))))

(assert (=> d!1084319 (= (inv!52749 token!544) e!2289563)))

(declare-fun b!3697007 () Bool)

(declare-fun res!1503471 () Bool)

(assert (=> b!3697007 (=> (not res!1503471) (not e!2289563))))

(declare-fun list!14664 (BalanceConc!23718) List!39374)

(declare-fun dynLambda!17159 (Int TokenValue!6185) BalanceConc!23718)

(assert (=> b!3697007 (= res!1503471 (= (originalCharacters!6663 token!544) (list!14664 (dynLambda!17159 (toChars!8146 (transformation!5955 (rule!8811 token!544))) (value!190173 token!544)))))))

(declare-fun b!3697008 () Bool)

(declare-fun size!29941 (List!39374) Int)

(assert (=> b!3697008 (= e!2289563 (= (size!29939 token!544) (size!29941 (originalCharacters!6663 token!544))))))

(assert (= (and d!1084319 res!1503470) b!3697007))

(assert (= (and b!3697007 res!1503471) b!3697008))

(declare-fun b_lambda!109651 () Bool)

(assert (=> (not b_lambda!109651) (not b!3697007)))

(declare-fun t!301739 () Bool)

(declare-fun tb!214077 () Bool)

(assert (=> (and b!3696944 (= (toChars!8146 (transformation!5955 (rule!8811 token!544))) (toChars!8146 (transformation!5955 (rule!8811 token!544)))) t!301739) tb!214077))

(declare-fun b!3697013 () Bool)

(declare-fun e!2289566 () Bool)

(declare-fun tp!1123751 () Bool)

(declare-fun inv!52752 (Conc!12052) Bool)

(assert (=> b!3697013 (= e!2289566 (and (inv!52752 (c!638989 (dynLambda!17159 (toChars!8146 (transformation!5955 (rule!8811 token!544))) (value!190173 token!544)))) tp!1123751))))

(declare-fun result!260750 () Bool)

(declare-fun inv!52753 (BalanceConc!23718) Bool)

(assert (=> tb!214077 (= result!260750 (and (inv!52753 (dynLambda!17159 (toChars!8146 (transformation!5955 (rule!8811 token!544))) (value!190173 token!544))) e!2289566))))

(assert (= tb!214077 b!3697013))

(declare-fun m!4208553 () Bool)

(assert (=> b!3697013 m!4208553))

(declare-fun m!4208555 () Bool)

(assert (=> tb!214077 m!4208555))

(assert (=> b!3697007 t!301739))

(declare-fun b_and!276355 () Bool)

(assert (= b_and!276341 (and (=> t!301739 result!260750) b_and!276355)))

(declare-fun tb!214079 () Bool)

(declare-fun t!301741 () Bool)

(assert (=> (and b!3696946 (= (toChars!8146 (transformation!5955 (h!44671 rules!3598))) (toChars!8146 (transformation!5955 (rule!8811 token!544)))) t!301741) tb!214079))

(declare-fun result!260754 () Bool)

(assert (= result!260754 result!260750))

(assert (=> b!3697007 t!301741))

(declare-fun b_and!276357 () Bool)

(assert (= b_and!276345 (and (=> t!301741 result!260754) b_and!276357)))

(declare-fun m!4208557 () Bool)

(assert (=> d!1084319 m!4208557))

(declare-fun m!4208559 () Bool)

(assert (=> b!3697007 m!4208559))

(assert (=> b!3697007 m!4208559))

(declare-fun m!4208561 () Bool)

(assert (=> b!3697007 m!4208561))

(declare-fun m!4208563 () Bool)

(assert (=> b!3697008 m!4208563))

(assert (=> start!348152 d!1084319))

(declare-fun d!1084321 () Bool)

(declare-fun res!1503474 () Bool)

(declare-fun e!2289569 () Bool)

(assert (=> d!1084321 (=> (not res!1503474) (not e!2289569))))

(declare-fun rulesValid!2296 (LexerInterface!5544 List!39375) Bool)

(assert (=> d!1084321 (= res!1503474 (rulesValid!2296 thiss!25322 rules!3598))))

(assert (=> d!1084321 (= (rulesInvariant!4941 thiss!25322 rules!3598) e!2289569)))

(declare-fun b!3697016 () Bool)

(declare-datatypes ((List!39379 0))(
  ( (Nil!39255) (Cons!39255 (h!44675 String!44261) (t!301744 List!39379)) )
))
(declare-fun noDuplicateTag!2292 (LexerInterface!5544 List!39375 List!39379) Bool)

(assert (=> b!3697016 (= e!2289569 (noDuplicateTag!2292 thiss!25322 rules!3598 Nil!39255))))

(assert (= (and d!1084321 res!1503474) b!3697016))

(declare-fun m!4208565 () Bool)

(assert (=> d!1084321 m!4208565))

(declare-fun m!4208567 () Bool)

(assert (=> b!3697016 m!4208567))

(assert (=> b!3696956 d!1084321))

(declare-fun d!1084323 () Bool)

(assert (=> d!1084323 (= (isEmpty!23387 rules!3598) (is-Nil!39251 rules!3598))))

(assert (=> b!3696945 d!1084323))

(declare-fun d!1084325 () Bool)

(assert (=> d!1084325 (= (get!13054 lt!1293973) (v!38446 lt!1293973))))

(assert (=> b!3696955 d!1084325))

(declare-fun d!1084327 () Bool)

(assert (=> d!1084327 (= (get!13054 lt!1293974) (v!38446 lt!1293974))))

(assert (=> b!3696954 d!1084327))

(declare-fun d!1084329 () Bool)

(assert (=> d!1084329 (= (inv!52745 (tag!6785 (rule!8811 token!544))) (= (mod (str.len (value!190172 (tag!6785 (rule!8811 token!544)))) 2) 0))))

(assert (=> b!3696949 d!1084329))

(declare-fun d!1084331 () Bool)

(declare-fun res!1503477 () Bool)

(declare-fun e!2289572 () Bool)

(assert (=> d!1084331 (=> (not res!1503477) (not e!2289572))))

(declare-fun semiInverseModEq!2539 (Int Int) Bool)

(assert (=> d!1084331 (= res!1503477 (semiInverseModEq!2539 (toChars!8146 (transformation!5955 (rule!8811 token!544))) (toValue!8287 (transformation!5955 (rule!8811 token!544)))))))

(assert (=> d!1084331 (= (inv!52748 (transformation!5955 (rule!8811 token!544))) e!2289572)))

(declare-fun b!3697019 () Bool)

(declare-fun equivClasses!2438 (Int Int) Bool)

(assert (=> b!3697019 (= e!2289572 (equivClasses!2438 (toChars!8146 (transformation!5955 (rule!8811 token!544))) (toValue!8287 (transformation!5955 (rule!8811 token!544)))))))

(assert (= (and d!1084331 res!1503477) b!3697019))

(declare-fun m!4208569 () Bool)

(assert (=> d!1084331 m!4208569))

(declare-fun m!4208571 () Bool)

(assert (=> b!3697019 m!4208571))

(assert (=> b!3696949 d!1084331))

(declare-fun d!1084333 () Bool)

(declare-fun isEmpty!23390 (Option!8489) Bool)

(assert (=> d!1084333 (= (isDefined!6678 lt!1293973) (not (isEmpty!23390 lt!1293973)))))

(declare-fun bs!574306 () Bool)

(assert (= bs!574306 d!1084333))

(declare-fun m!4208573 () Bool)

(assert (=> bs!574306 m!4208573))

(assert (=> b!3696948 d!1084333))

(declare-fun d!1084335 () Bool)

(declare-fun e!2289581 () Bool)

(assert (=> d!1084335 e!2289581))

(declare-fun res!1503497 () Bool)

(assert (=> d!1084335 (=> res!1503497 e!2289581)))

(declare-fun lt!1293994 () Option!8489)

(assert (=> d!1084335 (= res!1503497 (isEmpty!23390 lt!1293994))))

(declare-fun e!2289583 () Option!8489)

(assert (=> d!1084335 (= lt!1293994 e!2289583)))

(declare-fun c!638996 () Bool)

(declare-datatypes ((tuple2!39126 0))(
  ( (tuple2!39127 (_1!22697 List!39374) (_2!22697 List!39374)) )
))
(declare-fun lt!1293993 () tuple2!39126)

(assert (=> d!1084335 (= c!638996 (isEmpty!23389 (_1!22697 lt!1293993)))))

(declare-fun findLongestMatch!1028 (Regex!10714 List!39374) tuple2!39126)

(assert (=> d!1084335 (= lt!1293993 (findLongestMatch!1028 (regex!5955 (h!44671 rules!3598)) input!3172))))

(declare-fun ruleValid!2151 (LexerInterface!5544 Rule!11710) Bool)

(assert (=> d!1084335 (ruleValid!2151 thiss!25322 (h!44671 rules!3598))))

(assert (=> d!1084335 (= (maxPrefixOneRule!2176 thiss!25322 (h!44671 rules!3598) input!3172) lt!1293994)))

(declare-fun b!3697038 () Bool)

(declare-fun e!2289582 () Bool)

(assert (=> b!3697038 (= e!2289582 (= (size!29939 (_1!22695 (get!13054 lt!1293994))) (size!29941 (originalCharacters!6663 (_1!22695 (get!13054 lt!1293994))))))))

(declare-fun b!3697039 () Bool)

(declare-fun res!1503493 () Bool)

(assert (=> b!3697039 (=> (not res!1503493) (not e!2289582))))

(assert (=> b!3697039 (= res!1503493 (< (size!29941 (_2!22695 (get!13054 lt!1293994))) (size!29941 input!3172)))))

(declare-fun b!3697040 () Bool)

(declare-fun apply!9391 (TokenValueInjection!11798 BalanceConc!23718) TokenValue!6185)

(declare-fun seqFromList!4470 (List!39374) BalanceConc!23718)

(declare-fun size!29942 (BalanceConc!23718) Int)

(assert (=> b!3697040 (= e!2289583 (Some!8488 (tuple2!39123 (Token!11265 (apply!9391 (transformation!5955 (h!44671 rules!3598)) (seqFromList!4470 (_1!22697 lt!1293993))) (h!44671 rules!3598) (size!29942 (seqFromList!4470 (_1!22697 lt!1293993))) (_1!22697 lt!1293993)) (_2!22697 lt!1293993))))))

(declare-datatypes ((Unit!57230 0))(
  ( (Unit!57231) )
))
(declare-fun lt!1293995 () Unit!57230)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1086 (Regex!10714 List!39374) Unit!57230)

(assert (=> b!3697040 (= lt!1293995 (longestMatchIsAcceptedByMatchOrIsEmpty!1086 (regex!5955 (h!44671 rules!3598)) input!3172))))

(declare-fun res!1503498 () Bool)

(declare-fun findLongestMatchInner!1113 (Regex!10714 List!39374 Int List!39374 List!39374 Int) tuple2!39126)

(assert (=> b!3697040 (= res!1503498 (isEmpty!23389 (_1!22697 (findLongestMatchInner!1113 (regex!5955 (h!44671 rules!3598)) Nil!39250 (size!29941 Nil!39250) input!3172 input!3172 (size!29941 input!3172)))))))

(declare-fun e!2289584 () Bool)

(assert (=> b!3697040 (=> res!1503498 e!2289584)))

(assert (=> b!3697040 e!2289584))

(declare-fun lt!1293992 () Unit!57230)

(assert (=> b!3697040 (= lt!1293992 lt!1293995)))

(declare-fun lt!1293991 () Unit!57230)

(declare-fun lemmaSemiInverse!1619 (TokenValueInjection!11798 BalanceConc!23718) Unit!57230)

(assert (=> b!3697040 (= lt!1293991 (lemmaSemiInverse!1619 (transformation!5955 (h!44671 rules!3598)) (seqFromList!4470 (_1!22697 lt!1293993))))))

(declare-fun b!3697041 () Bool)

(declare-fun matchR!5251 (Regex!10714 List!39374) Bool)

(assert (=> b!3697041 (= e!2289584 (matchR!5251 (regex!5955 (h!44671 rules!3598)) (_1!22697 (findLongestMatchInner!1113 (regex!5955 (h!44671 rules!3598)) Nil!39250 (size!29941 Nil!39250) input!3172 input!3172 (size!29941 input!3172)))))))

(declare-fun b!3697042 () Bool)

(declare-fun res!1503492 () Bool)

(assert (=> b!3697042 (=> (not res!1503492) (not e!2289582))))

(assert (=> b!3697042 (= res!1503492 (= (value!190173 (_1!22695 (get!13054 lt!1293994))) (apply!9391 (transformation!5955 (rule!8811 (_1!22695 (get!13054 lt!1293994)))) (seqFromList!4470 (originalCharacters!6663 (_1!22695 (get!13054 lt!1293994)))))))))

(declare-fun b!3697043 () Bool)

(declare-fun res!1503496 () Bool)

(assert (=> b!3697043 (=> (not res!1503496) (not e!2289582))))

(assert (=> b!3697043 (= res!1503496 (= (rule!8811 (_1!22695 (get!13054 lt!1293994))) (h!44671 rules!3598)))))

(declare-fun b!3697044 () Bool)

(assert (=> b!3697044 (= e!2289581 e!2289582)))

(declare-fun res!1503495 () Bool)

(assert (=> b!3697044 (=> (not res!1503495) (not e!2289582))))

(declare-fun charsOf!3948 (Token!11264) BalanceConc!23718)

(assert (=> b!3697044 (= res!1503495 (matchR!5251 (regex!5955 (h!44671 rules!3598)) (list!14664 (charsOf!3948 (_1!22695 (get!13054 lt!1293994))))))))

(declare-fun b!3697045 () Bool)

(assert (=> b!3697045 (= e!2289583 None!8488)))

(declare-fun b!3697046 () Bool)

(declare-fun res!1503494 () Bool)

(assert (=> b!3697046 (=> (not res!1503494) (not e!2289582))))

(declare-fun ++!9751 (List!39374 List!39374) List!39374)

(assert (=> b!3697046 (= res!1503494 (= (++!9751 (list!14664 (charsOf!3948 (_1!22695 (get!13054 lt!1293994)))) (_2!22695 (get!13054 lt!1293994))) input!3172))))

(assert (= (and d!1084335 c!638996) b!3697045))

(assert (= (and d!1084335 (not c!638996)) b!3697040))

(assert (= (and b!3697040 (not res!1503498)) b!3697041))

(assert (= (and d!1084335 (not res!1503497)) b!3697044))

(assert (= (and b!3697044 res!1503495) b!3697046))

(assert (= (and b!3697046 res!1503494) b!3697039))

(assert (= (and b!3697039 res!1503493) b!3697043))

(assert (= (and b!3697043 res!1503496) b!3697042))

(assert (= (and b!3697042 res!1503492) b!3697038))

(declare-fun m!4208577 () Bool)

(assert (=> b!3697040 m!4208577))

(declare-fun m!4208579 () Bool)

(assert (=> b!3697040 m!4208579))

(assert (=> b!3697040 m!4208577))

(declare-fun m!4208581 () Bool)

(assert (=> b!3697040 m!4208581))

(assert (=> b!3697040 m!4208577))

(declare-fun m!4208583 () Bool)

(assert (=> b!3697040 m!4208583))

(declare-fun m!4208585 () Bool)

(assert (=> b!3697040 m!4208585))

(assert (=> b!3697040 m!4208577))

(declare-fun m!4208587 () Bool)

(assert (=> b!3697040 m!4208587))

(declare-fun m!4208589 () Bool)

(assert (=> b!3697040 m!4208589))

(assert (=> b!3697040 m!4208589))

(assert (=> b!3697040 m!4208585))

(declare-fun m!4208591 () Bool)

(assert (=> b!3697040 m!4208591))

(declare-fun m!4208593 () Bool)

(assert (=> b!3697040 m!4208593))

(assert (=> b!3697041 m!4208589))

(assert (=> b!3697041 m!4208585))

(assert (=> b!3697041 m!4208589))

(assert (=> b!3697041 m!4208585))

(assert (=> b!3697041 m!4208591))

(declare-fun m!4208595 () Bool)

(assert (=> b!3697041 m!4208595))

(declare-fun m!4208597 () Bool)

(assert (=> b!3697042 m!4208597))

(declare-fun m!4208599 () Bool)

(assert (=> b!3697042 m!4208599))

(assert (=> b!3697042 m!4208599))

(declare-fun m!4208601 () Bool)

(assert (=> b!3697042 m!4208601))

(assert (=> b!3697038 m!4208597))

(declare-fun m!4208603 () Bool)

(assert (=> b!3697038 m!4208603))

(assert (=> b!3697046 m!4208597))

(declare-fun m!4208605 () Bool)

(assert (=> b!3697046 m!4208605))

(assert (=> b!3697046 m!4208605))

(declare-fun m!4208607 () Bool)

(assert (=> b!3697046 m!4208607))

(assert (=> b!3697046 m!4208607))

(declare-fun m!4208609 () Bool)

(assert (=> b!3697046 m!4208609))

(assert (=> b!3697044 m!4208597))

(assert (=> b!3697044 m!4208605))

(assert (=> b!3697044 m!4208605))

(assert (=> b!3697044 m!4208607))

(assert (=> b!3697044 m!4208607))

(declare-fun m!4208611 () Bool)

(assert (=> b!3697044 m!4208611))

(assert (=> b!3697039 m!4208597))

(declare-fun m!4208613 () Bool)

(assert (=> b!3697039 m!4208613))

(assert (=> b!3697039 m!4208585))

(assert (=> b!3697043 m!4208597))

(declare-fun m!4208615 () Bool)

(assert (=> d!1084335 m!4208615))

(declare-fun m!4208617 () Bool)

(assert (=> d!1084335 m!4208617))

(declare-fun m!4208619 () Bool)

(assert (=> d!1084335 m!4208619))

(declare-fun m!4208621 () Bool)

(assert (=> d!1084335 m!4208621))

(assert (=> b!3696948 d!1084335))

(declare-fun d!1084341 () Bool)

(assert (=> d!1084341 (= (isDefined!6678 lt!1293974) (not (isEmpty!23390 lt!1293974)))))

(declare-fun bs!574308 () Bool)

(assert (= bs!574308 d!1084341))

(declare-fun m!4208623 () Bool)

(assert (=> bs!574308 m!4208623))

(assert (=> b!3696943 d!1084341))

(declare-fun b!3697065 () Bool)

(declare-fun res!1503518 () Bool)

(declare-fun e!2289593 () Bool)

(assert (=> b!3697065 (=> (not res!1503518) (not e!2289593))))

(declare-fun lt!1294009 () Option!8489)

(assert (=> b!3697065 (= res!1503518 (< (size!29941 (_2!22695 (get!13054 lt!1294009))) (size!29941 input!3172)))))

(declare-fun b!3697066 () Bool)

(declare-fun res!1503519 () Bool)

(assert (=> b!3697066 (=> (not res!1503519) (not e!2289593))))

(assert (=> b!3697066 (= res!1503519 (= (list!14664 (charsOf!3948 (_1!22695 (get!13054 lt!1294009)))) (originalCharacters!6663 (_1!22695 (get!13054 lt!1294009)))))))

(declare-fun b!3697067 () Bool)

(declare-fun res!1503515 () Bool)

(assert (=> b!3697067 (=> (not res!1503515) (not e!2289593))))

(assert (=> b!3697067 (= res!1503515 (matchR!5251 (regex!5955 (rule!8811 (_1!22695 (get!13054 lt!1294009)))) (list!14664 (charsOf!3948 (_1!22695 (get!13054 lt!1294009))))))))

(declare-fun b!3697068 () Bool)

(declare-fun res!1503514 () Bool)

(assert (=> b!3697068 (=> (not res!1503514) (not e!2289593))))

(assert (=> b!3697068 (= res!1503514 (= (++!9751 (list!14664 (charsOf!3948 (_1!22695 (get!13054 lt!1294009)))) (_2!22695 (get!13054 lt!1294009))) input!3172))))

(declare-fun d!1084343 () Bool)

(declare-fun e!2289592 () Bool)

(assert (=> d!1084343 e!2289592))

(declare-fun res!1503517 () Bool)

(assert (=> d!1084343 (=> res!1503517 e!2289592)))

(assert (=> d!1084343 (= res!1503517 (isEmpty!23390 lt!1294009))))

(declare-fun e!2289591 () Option!8489)

(assert (=> d!1084343 (= lt!1294009 e!2289591)))

(declare-fun c!638999 () Bool)

(assert (=> d!1084343 (= c!638999 (and (is-Cons!39251 rules!3598) (is-Nil!39251 (t!301734 rules!3598))))))

(declare-fun lt!1294007 () Unit!57230)

(declare-fun lt!1294006 () Unit!57230)

(assert (=> d!1084343 (= lt!1294007 lt!1294006)))

(declare-fun isPrefix!3273 (List!39374 List!39374) Bool)

(assert (=> d!1084343 (isPrefix!3273 input!3172 input!3172)))

(declare-fun lemmaIsPrefixRefl!2058 (List!39374 List!39374) Unit!57230)

(assert (=> d!1084343 (= lt!1294006 (lemmaIsPrefixRefl!2058 input!3172 input!3172))))

(declare-fun rulesValidInductive!2139 (LexerInterface!5544 List!39375) Bool)

(assert (=> d!1084343 (rulesValidInductive!2139 thiss!25322 rules!3598)))

(assert (=> d!1084343 (= (maxPrefix!3066 thiss!25322 rules!3598 input!3172) lt!1294009)))

(declare-fun b!3697069 () Bool)

(declare-fun res!1503513 () Bool)

(assert (=> b!3697069 (=> (not res!1503513) (not e!2289593))))

(assert (=> b!3697069 (= res!1503513 (= (value!190173 (_1!22695 (get!13054 lt!1294009))) (apply!9391 (transformation!5955 (rule!8811 (_1!22695 (get!13054 lt!1294009)))) (seqFromList!4470 (originalCharacters!6663 (_1!22695 (get!13054 lt!1294009)))))))))

(declare-fun b!3697070 () Bool)

(declare-fun contains!7825 (List!39375 Rule!11710) Bool)

(assert (=> b!3697070 (= e!2289593 (contains!7825 rules!3598 (rule!8811 (_1!22695 (get!13054 lt!1294009)))))))

(declare-fun call!267191 () Option!8489)

(declare-fun bm!267186 () Bool)

(assert (=> bm!267186 (= call!267191 (maxPrefixOneRule!2176 thiss!25322 (h!44671 rules!3598) input!3172))))

(declare-fun b!3697071 () Bool)

(declare-fun lt!1294008 () Option!8489)

(declare-fun lt!1294010 () Option!8489)

(assert (=> b!3697071 (= e!2289591 (ite (and (is-None!8488 lt!1294008) (is-None!8488 lt!1294010)) None!8488 (ite (is-None!8488 lt!1294010) lt!1294008 (ite (is-None!8488 lt!1294008) lt!1294010 (ite (>= (size!29939 (_1!22695 (v!38446 lt!1294008))) (size!29939 (_1!22695 (v!38446 lt!1294010)))) lt!1294008 lt!1294010)))))))

(assert (=> b!3697071 (= lt!1294008 call!267191)))

(assert (=> b!3697071 (= lt!1294010 (maxPrefix!3066 thiss!25322 (t!301734 rules!3598) input!3172))))

(declare-fun b!3697072 () Bool)

(assert (=> b!3697072 (= e!2289592 e!2289593)))

(declare-fun res!1503516 () Bool)

(assert (=> b!3697072 (=> (not res!1503516) (not e!2289593))))

(assert (=> b!3697072 (= res!1503516 (isDefined!6678 lt!1294009))))

(declare-fun b!3697073 () Bool)

(assert (=> b!3697073 (= e!2289591 call!267191)))

(assert (= (and d!1084343 c!638999) b!3697073))

(assert (= (and d!1084343 (not c!638999)) b!3697071))

(assert (= (or b!3697073 b!3697071) bm!267186))

(assert (= (and d!1084343 (not res!1503517)) b!3697072))

(assert (= (and b!3697072 res!1503516) b!3697066))

(assert (= (and b!3697066 res!1503519) b!3697065))

(assert (= (and b!3697065 res!1503518) b!3697068))

(assert (= (and b!3697068 res!1503514) b!3697069))

(assert (= (and b!3697069 res!1503513) b!3697067))

(assert (= (and b!3697067 res!1503515) b!3697070))

(declare-fun m!4208625 () Bool)

(assert (=> b!3697072 m!4208625))

(declare-fun m!4208627 () Bool)

(assert (=> b!3697068 m!4208627))

(declare-fun m!4208629 () Bool)

(assert (=> b!3697068 m!4208629))

(assert (=> b!3697068 m!4208629))

(declare-fun m!4208631 () Bool)

(assert (=> b!3697068 m!4208631))

(assert (=> b!3697068 m!4208631))

(declare-fun m!4208633 () Bool)

(assert (=> b!3697068 m!4208633))

(assert (=> b!3697070 m!4208627))

(declare-fun m!4208635 () Bool)

(assert (=> b!3697070 m!4208635))

(assert (=> b!3697066 m!4208627))

(assert (=> b!3697066 m!4208629))

(assert (=> b!3697066 m!4208629))

(assert (=> b!3697066 m!4208631))

(declare-fun m!4208637 () Bool)

(assert (=> b!3697071 m!4208637))

(assert (=> b!3697067 m!4208627))

(assert (=> b!3697067 m!4208629))

(assert (=> b!3697067 m!4208629))

(assert (=> b!3697067 m!4208631))

(assert (=> b!3697067 m!4208631))

(declare-fun m!4208639 () Bool)

(assert (=> b!3697067 m!4208639))

(assert (=> bm!267186 m!4208505))

(assert (=> b!3697069 m!4208627))

(declare-fun m!4208641 () Bool)

(assert (=> b!3697069 m!4208641))

(assert (=> b!3697069 m!4208641))

(declare-fun m!4208643 () Bool)

(assert (=> b!3697069 m!4208643))

(declare-fun m!4208645 () Bool)

(assert (=> d!1084343 m!4208645))

(declare-fun m!4208647 () Bool)

(assert (=> d!1084343 m!4208647))

(declare-fun m!4208649 () Bool)

(assert (=> d!1084343 m!4208649))

(declare-fun m!4208651 () Bool)

(assert (=> d!1084343 m!4208651))

(assert (=> b!3697065 m!4208627))

(declare-fun m!4208653 () Bool)

(assert (=> b!3697065 m!4208653))

(assert (=> b!3697065 m!4208585))

(assert (=> b!3696943 d!1084343))

(declare-fun b!3697084 () Bool)

(declare-fun res!1503522 () Bool)

(declare-fun e!2289601 () Bool)

(assert (=> b!3697084 (=> res!1503522 e!2289601)))

(assert (=> b!3697084 (= res!1503522 (not (is-IntegerValue!18557 (value!190173 token!544))))))

(declare-fun e!2289602 () Bool)

(assert (=> b!3697084 (= e!2289602 e!2289601)))

(declare-fun b!3697086 () Bool)

(declare-fun inv!15 (TokenValue!6185) Bool)

(assert (=> b!3697086 (= e!2289601 (inv!15 (value!190173 token!544)))))

(declare-fun b!3697087 () Bool)

(declare-fun inv!17 (TokenValue!6185) Bool)

(assert (=> b!3697087 (= e!2289602 (inv!17 (value!190173 token!544)))))

(declare-fun b!3697088 () Bool)

(declare-fun e!2289600 () Bool)

(assert (=> b!3697088 (= e!2289600 e!2289602)))

(declare-fun c!639004 () Bool)

(assert (=> b!3697088 (= c!639004 (is-IntegerValue!18556 (value!190173 token!544)))))

(declare-fun d!1084345 () Bool)

(declare-fun c!639005 () Bool)

(assert (=> d!1084345 (= c!639005 (is-IntegerValue!18555 (value!190173 token!544)))))

(assert (=> d!1084345 (= (inv!21 (value!190173 token!544)) e!2289600)))

(declare-fun b!3697085 () Bool)

(declare-fun inv!16 (TokenValue!6185) Bool)

(assert (=> b!3697085 (= e!2289600 (inv!16 (value!190173 token!544)))))

(assert (= (and d!1084345 c!639005) b!3697085))

(assert (= (and d!1084345 (not c!639005)) b!3697088))

(assert (= (and b!3697088 c!639004) b!3697087))

(assert (= (and b!3697088 (not c!639004)) b!3697084))

(assert (= (and b!3697084 (not res!1503522)) b!3697086))

(declare-fun m!4208655 () Bool)

(assert (=> b!3697086 m!4208655))

(declare-fun m!4208657 () Bool)

(assert (=> b!3697087 m!4208657))

(declare-fun m!4208659 () Bool)

(assert (=> b!3697085 m!4208659))

(assert (=> b!3696952 d!1084345))

(declare-fun d!1084347 () Bool)

(assert (=> d!1084347 (= (inv!52745 (tag!6785 (h!44671 rules!3598))) (= (mod (str.len (value!190172 (tag!6785 (h!44671 rules!3598)))) 2) 0))))

(assert (=> b!3696947 d!1084347))

(declare-fun d!1084349 () Bool)

(declare-fun res!1503523 () Bool)

(declare-fun e!2289603 () Bool)

(assert (=> d!1084349 (=> (not res!1503523) (not e!2289603))))

(assert (=> d!1084349 (= res!1503523 (semiInverseModEq!2539 (toChars!8146 (transformation!5955 (h!44671 rules!3598))) (toValue!8287 (transformation!5955 (h!44671 rules!3598)))))))

(assert (=> d!1084349 (= (inv!52748 (transformation!5955 (h!44671 rules!3598))) e!2289603)))

(declare-fun b!3697089 () Bool)

(assert (=> b!3697089 (= e!2289603 (equivClasses!2438 (toChars!8146 (transformation!5955 (h!44671 rules!3598))) (toValue!8287 (transformation!5955 (h!44671 rules!3598)))))))

(assert (= (and d!1084349 res!1503523) b!3697089))

(declare-fun m!4208661 () Bool)

(assert (=> d!1084349 m!4208661))

(declare-fun m!4208663 () Bool)

(assert (=> b!3697089 m!4208663))

(assert (=> b!3696947 d!1084349))

(declare-fun b!3697100 () Bool)

(declare-fun b_free!98401 () Bool)

(declare-fun b_next!99105 () Bool)

(assert (=> b!3697100 (= b_free!98401 (not b_next!99105))))

(declare-fun tp!1123763 () Bool)

(declare-fun b_and!276359 () Bool)

(assert (=> b!3697100 (= tp!1123763 b_and!276359)))

(declare-fun b_free!98403 () Bool)

(declare-fun b_next!99107 () Bool)

(assert (=> b!3697100 (= b_free!98403 (not b_next!99107))))

(declare-fun tb!214081 () Bool)

(declare-fun t!301743 () Bool)

(assert (=> (and b!3697100 (= (toChars!8146 (transformation!5955 (h!44671 (t!301734 rules!3598)))) (toChars!8146 (transformation!5955 (rule!8811 token!544)))) t!301743) tb!214081))

(declare-fun result!260758 () Bool)

(assert (= result!260758 result!260750))

(assert (=> b!3697007 t!301743))

(declare-fun b_and!276361 () Bool)

(declare-fun tp!1123762 () Bool)

(assert (=> b!3697100 (= tp!1123762 (and (=> t!301743 result!260758) b_and!276361))))

(declare-fun e!2289615 () Bool)

(assert (=> b!3697100 (= e!2289615 (and tp!1123763 tp!1123762))))

(declare-fun tp!1123761 () Bool)

(declare-fun b!3697099 () Bool)

(declare-fun e!2289614 () Bool)

(assert (=> b!3697099 (= e!2289614 (and tp!1123761 (inv!52745 (tag!6785 (h!44671 (t!301734 rules!3598)))) (inv!52748 (transformation!5955 (h!44671 (t!301734 rules!3598)))) e!2289615))))

(declare-fun b!3697098 () Bool)

(declare-fun e!2289612 () Bool)

(declare-fun tp!1123760 () Bool)

(assert (=> b!3697098 (= e!2289612 (and e!2289614 tp!1123760))))

(assert (=> b!3696957 (= tp!1123714 e!2289612)))

(assert (= b!3697099 b!3697100))

(assert (= b!3697098 b!3697099))

(assert (= (and b!3696957 (is-Cons!39251 (t!301734 rules!3598))) b!3697098))

(declare-fun m!4208665 () Bool)

(assert (=> b!3697099 m!4208665))

(declare-fun m!4208667 () Bool)

(assert (=> b!3697099 m!4208667))

(declare-fun b!3697105 () Bool)

(declare-fun e!2289618 () Bool)

(declare-fun tp!1123766 () Bool)

(assert (=> b!3697105 (= e!2289618 (and tp_is_empty!18503 tp!1123766))))

(assert (=> b!3696950 (= tp!1123720 e!2289618)))

(assert (= (and b!3696950 (is-Cons!39250 (t!301733 input!3172))) b!3697105))

(declare-fun b!3697119 () Bool)

(declare-fun e!2289621 () Bool)

(declare-fun tp!1123778 () Bool)

(declare-fun tp!1123777 () Bool)

(assert (=> b!3697119 (= e!2289621 (and tp!1123778 tp!1123777))))

(declare-fun b!3697118 () Bool)

(declare-fun tp!1123780 () Bool)

(assert (=> b!3697118 (= e!2289621 tp!1123780)))

(assert (=> b!3696949 (= tp!1123713 e!2289621)))

(declare-fun b!3697117 () Bool)

(declare-fun tp!1123779 () Bool)

(declare-fun tp!1123781 () Bool)

(assert (=> b!3697117 (= e!2289621 (and tp!1123779 tp!1123781))))

(declare-fun b!3697116 () Bool)

(assert (=> b!3697116 (= e!2289621 tp_is_empty!18503)))

(assert (= (and b!3696949 (is-ElementMatch!10714 (regex!5955 (rule!8811 token!544)))) b!3697116))

(assert (= (and b!3696949 (is-Concat!16900 (regex!5955 (rule!8811 token!544)))) b!3697117))

(assert (= (and b!3696949 (is-Star!10714 (regex!5955 (rule!8811 token!544)))) b!3697118))

(assert (= (and b!3696949 (is-Union!10714 (regex!5955 (rule!8811 token!544)))) b!3697119))

(declare-fun b!3697120 () Bool)

(declare-fun e!2289622 () Bool)

(declare-fun tp!1123782 () Bool)

(assert (=> b!3697120 (= e!2289622 (and tp_is_empty!18503 tp!1123782))))

(assert (=> b!3696952 (= tp!1123717 e!2289622)))

(assert (= (and b!3696952 (is-Cons!39250 (originalCharacters!6663 token!544))) b!3697120))

(declare-fun b!3697124 () Bool)

(declare-fun e!2289623 () Bool)

(declare-fun tp!1123784 () Bool)

(declare-fun tp!1123783 () Bool)

(assert (=> b!3697124 (= e!2289623 (and tp!1123784 tp!1123783))))

(declare-fun b!3697123 () Bool)

(declare-fun tp!1123786 () Bool)

(assert (=> b!3697123 (= e!2289623 tp!1123786)))

(assert (=> b!3696947 (= tp!1123718 e!2289623)))

(declare-fun b!3697122 () Bool)

(declare-fun tp!1123785 () Bool)

(declare-fun tp!1123787 () Bool)

(assert (=> b!3697122 (= e!2289623 (and tp!1123785 tp!1123787))))

(declare-fun b!3697121 () Bool)

(assert (=> b!3697121 (= e!2289623 tp_is_empty!18503)))

(assert (= (and b!3696947 (is-ElementMatch!10714 (regex!5955 (h!44671 rules!3598)))) b!3697121))

(assert (= (and b!3696947 (is-Concat!16900 (regex!5955 (h!44671 rules!3598)))) b!3697122))

(assert (= (and b!3696947 (is-Star!10714 (regex!5955 (h!44671 rules!3598)))) b!3697123))

(assert (= (and b!3696947 (is-Union!10714 (regex!5955 (h!44671 rules!3598)))) b!3697124))

(declare-fun b_lambda!109653 () Bool)

(assert (= b_lambda!109651 (or (and b!3696944 b_free!98387) (and b!3696946 b_free!98391 (= (toChars!8146 (transformation!5955 (h!44671 rules!3598))) (toChars!8146 (transformation!5955 (rule!8811 token!544))))) (and b!3697100 b_free!98403 (= (toChars!8146 (transformation!5955 (h!44671 (t!301734 rules!3598)))) (toChars!8146 (transformation!5955 (rule!8811 token!544))))) b_lambda!109653)))

(push 1)

(assert (not b!3697013))

(assert (not b!3697043))

(assert tp_is_empty!18503)

(assert (not b!3697068))

(assert (not b!3697089))

(assert (not b!3697008))

(assert (not b!3697123))

(assert (not tb!214077))

(assert (not b!3697069))

(assert (not b_lambda!109653))

(assert (not b!3697070))

(assert (not d!1084341))

(assert (not b!3697067))

(assert (not b!3697016))

(assert (not b!3697071))

(assert (not b!3697119))

(assert (not b!3697120))

(assert (not b_next!99095))

(assert (not b!3697085))

(assert (not b_next!99105))

(assert (not b_next!99091))

(assert (not b!3697039))

(assert (not d!1084335))

(assert b_and!276339)

(assert (not b!3697099))

(assert (not b!3697046))

(assert (not b!3697098))

(assert (not d!1084331))

(assert (not b!3697007))

(assert (not b!3697065))

(assert (not b!3697105))

(assert (not b!3697117))

(assert b_and!276359)

(assert (not b!3697042))

(assert (not b!3697118))

(assert (not b!3697122))

(assert (not d!1084343))

(assert (not d!1084319))

(assert (not b!3697072))

(assert (not b!3697066))

(assert (not b!3697038))

(assert (not b!3697086))

(assert (not bm!267186))

(assert (not d!1084333))

(assert (not b_next!99089))

(assert (not b_next!99107))

(assert (not b!3697040))

(assert (not d!1084349))

(assert (not b!3697044))

(assert (not b!3697087))

(assert b_and!276361)

(assert (not b!3697019))

(assert (not b!3697041))

(assert b_and!276343)

(assert (not b_next!99093))

(assert b_and!276355)

(assert b_and!276357)

(assert (not d!1084321))

(assert (not b!3697124))

(check-sat)

(pop 1)

(push 1)

(assert b_and!276359)

(assert b_and!276361)

(assert b_and!276343)

(assert b_and!276357)

(assert (not b_next!99095))

(assert (not b_next!99105))

(assert (not b_next!99091))

(assert b_and!276339)

(assert (not b_next!99089))

(assert (not b_next!99107))

(assert (not b_next!99093))

(assert b_and!276355)

(check-sat)

(pop 1)

