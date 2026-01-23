; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!48658 () Bool)

(assert start!48658)

(declare-fun b!530068 () Bool)

(declare-fun b_free!14201 () Bool)

(declare-fun b_next!14217 () Bool)

(assert (=> b!530068 (= b_free!14201 (not b_next!14217))))

(declare-fun tp!168846 () Bool)

(declare-fun b_and!51731 () Bool)

(assert (=> b!530068 (= tp!168846 b_and!51731)))

(declare-fun b_free!14203 () Bool)

(declare-fun b_next!14219 () Bool)

(assert (=> b!530068 (= b_free!14203 (not b_next!14219))))

(declare-fun tp!168845 () Bool)

(declare-fun b_and!51733 () Bool)

(assert (=> b!530068 (= tp!168845 b_and!51733)))

(declare-fun b!530063 () Bool)

(declare-fun b_free!14205 () Bool)

(declare-fun b_next!14221 () Bool)

(assert (=> b!530063 (= b_free!14205 (not b_next!14221))))

(declare-fun tp!168841 () Bool)

(declare-fun b_and!51735 () Bool)

(assert (=> b!530063 (= tp!168841 b_and!51735)))

(declare-fun b_free!14207 () Bool)

(declare-fun b_next!14223 () Bool)

(assert (=> b!530063 (= b_free!14207 (not b_next!14223))))

(declare-fun tp!168847 () Bool)

(declare-fun b_and!51737 () Bool)

(assert (=> b!530063 (= tp!168847 b_and!51737)))

(declare-fun e!318974 () Bool)

(declare-datatypes ((C!3402 0))(
  ( (C!3403 (val!1927 Int)) )
))
(declare-datatypes ((Regex!1240 0))(
  ( (ElementMatch!1240 (c!101323 C!3402)) (Concat!2170 (regOne!2992 Regex!1240) (regTwo!2992 Regex!1240)) (EmptyExpr!1240) (Star!1240 (reg!1569 Regex!1240)) (EmptyLang!1240) (Union!1240 (regOne!2993 Regex!1240) (regTwo!2993 Regex!1240)) )
))
(declare-datatypes ((List!5038 0))(
  ( (Nil!5028) (Cons!5028 (h!10429 (_ BitVec 16)) (t!73689 List!5038)) )
))
(declare-datatypes ((TokenValue!930 0))(
  ( (FloatLiteralValue!1860 (text!6955 List!5038)) (TokenValueExt!929 (__x!3758 Int)) (Broken!4650 (value!30663 List!5038)) (Object!939) (End!930) (Def!930) (Underscore!930) (Match!930) (Else!930) (Error!930) (Case!930) (If!930) (Extends!930) (Abstract!930) (Class!930) (Val!930) (DelimiterValue!1860 (del!990 List!5038)) (KeywordValue!936 (value!30664 List!5038)) (CommentValue!1860 (value!30665 List!5038)) (WhitespaceValue!1860 (value!30666 List!5038)) (IndentationValue!930 (value!30667 List!5038)) (String!6395) (Int32!930) (Broken!4651 (value!30668 List!5038)) (Boolean!931) (Unit!8829) (OperatorValue!933 (op!990 List!5038)) (IdentifierValue!1860 (value!30669 List!5038)) (IdentifierValue!1861 (value!30670 List!5038)) (WhitespaceValue!1861 (value!30671 List!5038)) (True!1860) (False!1860) (Broken!4652 (value!30672 List!5038)) (Broken!4653 (value!30673 List!5038)) (True!1861) (RightBrace!930) (RightBracket!930) (Colon!930) (Null!930) (Comma!930) (LeftBracket!930) (False!1861) (LeftBrace!930) (ImaginaryLiteralValue!930 (text!6956 List!5038)) (StringLiteralValue!2790 (value!30674 List!5038)) (EOFValue!930 (value!30675 List!5038)) (IdentValue!930 (value!30676 List!5038)) (DelimiterValue!1861 (value!30677 List!5038)) (DedentValue!930 (value!30678 List!5038)) (NewLineValue!930 (value!30679 List!5038)) (IntegerValue!2790 (value!30680 (_ BitVec 32)) (text!6957 List!5038)) (IntegerValue!2791 (value!30681 Int) (text!6958 List!5038)) (Times!930) (Or!930) (Equal!930) (Minus!930) (Broken!4654 (value!30682 List!5038)) (And!930) (Div!930) (LessEqual!930) (Mod!930) (Concat!2171) (Not!930) (Plus!930) (SpaceValue!930 (value!30683 List!5038)) (IntegerValue!2792 (value!30684 Int) (text!6959 List!5038)) (StringLiteralValue!2791 (text!6960 List!5038)) (FloatLiteralValue!1861 (text!6961 List!5038)) (BytesLiteralValue!930 (value!30685 List!5038)) (CommentValue!1861 (value!30686 List!5038)) (StringLiteralValue!2792 (value!30687 List!5038)) (ErrorTokenValue!930 (msg!991 List!5038)) )
))
(declare-datatypes ((String!6396 0))(
  ( (String!6397 (value!30688 String)) )
))
(declare-datatypes ((List!5039 0))(
  ( (Nil!5029) (Cons!5029 (h!10430 C!3402) (t!73690 List!5039)) )
))
(declare-datatypes ((IArray!3247 0))(
  ( (IArray!3248 (innerList!1681 List!5039)) )
))
(declare-datatypes ((Conc!1623 0))(
  ( (Node!1623 (left!4257 Conc!1623) (right!4587 Conc!1623) (csize!3476 Int) (cheight!1834 Int)) (Leaf!2584 (xs!4260 IArray!3247) (csize!3477 Int)) (Empty!1623) )
))
(declare-datatypes ((BalanceConc!3254 0))(
  ( (BalanceConc!3255 (c!101324 Conc!1623)) )
))
(declare-datatypes ((TokenValueInjection!1628 0))(
  ( (TokenValueInjection!1629 (toValue!1749 Int) (toChars!1608 Int)) )
))
(declare-datatypes ((Rule!1612 0))(
  ( (Rule!1613 (regex!906 Regex!1240) (tag!1168 String!6396) (isSeparator!906 Bool) (transformation!906 TokenValueInjection!1628)) )
))
(declare-datatypes ((Token!1548 0))(
  ( (Token!1549 (value!30689 TokenValue!930) (rule!1606 Rule!1612) (size!4088 Int) (originalCharacters!945 List!5039)) )
))
(declare-fun token!491 () Token!1548)

(declare-fun b!530062 () Bool)

(declare-fun tp!168839 () Bool)

(declare-fun e!318980 () Bool)

(declare-fun inv!6307 (String!6396) Bool)

(declare-fun inv!6310 (TokenValueInjection!1628) Bool)

(assert (=> b!530062 (= e!318974 (and tp!168839 (inv!6307 (tag!1168 (rule!1606 token!491))) (inv!6310 (transformation!906 (rule!1606 token!491))) e!318980))))

(declare-fun e!318981 () Bool)

(assert (=> b!530063 (= e!318981 (and tp!168841 tp!168847))))

(declare-fun b!530064 () Bool)

(declare-fun res!223800 () Bool)

(declare-fun e!318975 () Bool)

(assert (=> b!530064 (=> (not res!223800) (not e!318975))))

(declare-fun input!2705 () List!5039)

(declare-fun isEmpty!3640 (List!5039) Bool)

(assert (=> b!530064 (= res!223800 (not (isEmpty!3640 input!2705)))))

(declare-fun b!530065 () Bool)

(declare-fun e!318973 () Bool)

(declare-fun e!318983 () Bool)

(declare-fun tp!168840 () Bool)

(assert (=> b!530065 (= e!318973 (and e!318983 tp!168840))))

(declare-fun b!530066 () Bool)

(declare-fun e!318976 () Bool)

(declare-datatypes ((LexerInterface!792 0))(
  ( (LexerInterfaceExt!789 (__x!3759 Int)) (Lexer!790) )
))
(declare-fun thiss!22590 () LexerInterface!792)

(declare-datatypes ((List!5040 0))(
  ( (Nil!5030) (Cons!5030 (h!10431 Rule!1612) (t!73691 List!5040)) )
))
(declare-fun rules!3103 () List!5040)

(declare-fun rulesValidInductive!307 (LexerInterface!792 List!5040) Bool)

(assert (=> b!530066 (= e!318976 (not (rulesValidInductive!307 thiss!22590 rules!3103)))))

(declare-fun b!530067 () Bool)

(declare-fun res!223801 () Bool)

(assert (=> b!530067 (=> (not res!223801) (not e!318975))))

(declare-fun rulesInvariant!755 (LexerInterface!792 List!5040) Bool)

(assert (=> b!530067 (= res!223801 (rulesInvariant!755 thiss!22590 rules!3103))))

(declare-fun b!530069 () Bool)

(assert (=> b!530069 (= e!318975 e!318976)))

(declare-fun res!223797 () Bool)

(assert (=> b!530069 (=> (not res!223797) (not e!318976))))

(declare-datatypes ((tuple2!6166 0))(
  ( (tuple2!6167 (_1!3347 Token!1548) (_2!3347 List!5039)) )
))
(declare-datatypes ((Option!1256 0))(
  ( (None!1255) (Some!1255 (v!16060 tuple2!6166)) )
))
(declare-fun lt!218424 () Option!1256)

(declare-fun isDefined!1068 (Option!1256) Bool)

(assert (=> b!530069 (= res!223797 (isDefined!1068 lt!218424))))

(declare-fun suffix!1342 () List!5039)

(declare-fun maxPrefix!490 (LexerInterface!792 List!5040 List!5039) Option!1256)

(declare-fun ++!1394 (List!5039 List!5039) List!5039)

(assert (=> b!530069 (= lt!218424 (maxPrefix!490 thiss!22590 rules!3103 (++!1394 input!2705 suffix!1342)))))

(declare-fun e!318984 () Bool)

(declare-fun b!530070 () Bool)

(declare-fun tp!168844 () Bool)

(declare-fun inv!21 (TokenValue!930) Bool)

(assert (=> b!530070 (= e!318984 (and (inv!21 (value!30689 token!491)) e!318974 tp!168844))))

(declare-fun b!530071 () Bool)

(declare-fun res!223796 () Bool)

(assert (=> b!530071 (=> (not res!223796) (not e!318975))))

(declare-fun isEmpty!3641 (List!5040) Bool)

(assert (=> b!530071 (= res!223796 (not (isEmpty!3641 rules!3103)))))

(declare-fun b!530072 () Bool)

(declare-fun res!223802 () Bool)

(assert (=> b!530072 (=> (not res!223802) (not e!318975))))

(declare-fun list!2092 (BalanceConc!3254) List!5039)

(declare-fun charsOf!535 (Token!1548) BalanceConc!3254)

(assert (=> b!530072 (= res!223802 (= (list!2092 (charsOf!535 token!491)) input!2705))))

(declare-fun b!530073 () Bool)

(declare-fun e!318985 () Bool)

(declare-fun tp_is_empty!2835 () Bool)

(declare-fun tp!168843 () Bool)

(assert (=> b!530073 (= e!318985 (and tp_is_empty!2835 tp!168843))))

(declare-fun b!530074 () Bool)

(declare-fun e!318978 () Bool)

(declare-fun tp!168848 () Bool)

(assert (=> b!530074 (= e!318978 (and tp_is_empty!2835 tp!168848))))

(declare-fun b!530075 () Bool)

(declare-fun res!223799 () Bool)

(assert (=> b!530075 (=> (not res!223799) (not e!318976))))

(declare-fun get!1874 (Option!1256) tuple2!6166)

(assert (=> b!530075 (= res!223799 (= (_1!3347 (get!1874 lt!218424)) token!491))))

(declare-fun b!530076 () Bool)

(declare-fun tp!168842 () Bool)

(assert (=> b!530076 (= e!318983 (and tp!168842 (inv!6307 (tag!1168 (h!10431 rules!3103))) (inv!6310 (transformation!906 (h!10431 rules!3103))) e!318981))))

(declare-fun res!223798 () Bool)

(assert (=> start!48658 (=> (not res!223798) (not e!318975))))

(assert (=> start!48658 (= res!223798 (is-Lexer!790 thiss!22590))))

(assert (=> start!48658 e!318975))

(assert (=> start!48658 e!318985))

(assert (=> start!48658 e!318973))

(declare-fun inv!6311 (Token!1548) Bool)

(assert (=> start!48658 (and (inv!6311 token!491) e!318984)))

(assert (=> start!48658 true))

(assert (=> start!48658 e!318978))

(assert (=> b!530068 (= e!318980 (and tp!168846 tp!168845))))

(assert (= (and start!48658 res!223798) b!530071))

(assert (= (and b!530071 res!223796) b!530067))

(assert (= (and b!530067 res!223801) b!530064))

(assert (= (and b!530064 res!223800) b!530072))

(assert (= (and b!530072 res!223802) b!530069))

(assert (= (and b!530069 res!223797) b!530075))

(assert (= (and b!530075 res!223799) b!530066))

(assert (= (and start!48658 (is-Cons!5029 suffix!1342)) b!530073))

(assert (= b!530076 b!530063))

(assert (= b!530065 b!530076))

(assert (= (and start!48658 (is-Cons!5030 rules!3103)) b!530065))

(assert (= b!530062 b!530068))

(assert (= b!530070 b!530062))

(assert (= start!48658 b!530070))

(assert (= (and start!48658 (is-Cons!5029 input!2705)) b!530074))

(declare-fun m!775411 () Bool)

(assert (=> b!530072 m!775411))

(assert (=> b!530072 m!775411))

(declare-fun m!775413 () Bool)

(assert (=> b!530072 m!775413))

(declare-fun m!775415 () Bool)

(assert (=> b!530070 m!775415))

(declare-fun m!775417 () Bool)

(assert (=> b!530064 m!775417))

(declare-fun m!775419 () Bool)

(assert (=> b!530067 m!775419))

(declare-fun m!775421 () Bool)

(assert (=> b!530069 m!775421))

(declare-fun m!775423 () Bool)

(assert (=> b!530069 m!775423))

(assert (=> b!530069 m!775423))

(declare-fun m!775425 () Bool)

(assert (=> b!530069 m!775425))

(declare-fun m!775427 () Bool)

(assert (=> b!530075 m!775427))

(declare-fun m!775429 () Bool)

(assert (=> b!530076 m!775429))

(declare-fun m!775431 () Bool)

(assert (=> b!530076 m!775431))

(declare-fun m!775433 () Bool)

(assert (=> b!530071 m!775433))

(declare-fun m!775435 () Bool)

(assert (=> start!48658 m!775435))

(declare-fun m!775437 () Bool)

(assert (=> b!530066 m!775437))

(declare-fun m!775439 () Bool)

(assert (=> b!530062 m!775439))

(declare-fun m!775441 () Bool)

(assert (=> b!530062 m!775441))

(push 1)

(assert b_and!51737)

(assert b_and!51731)

(assert (not b!530076))

(assert (not b_next!14217))

(assert b_and!51735)

(assert (not b!530071))

(assert (not b!530062))

(assert (not b!530065))

(assert (not b!530064))

(assert (not b!530075))

(assert (not b!530069))

(assert (not b!530074))

(assert (not b!530070))

(assert (not b!530066))

(assert (not start!48658))

(assert (not b!530072))

(assert (not b_next!14219))

(assert b_and!51733)

(assert tp_is_empty!2835)

(assert (not b_next!14221))

(assert (not b!530067))

(assert (not b!530073))

(assert (not b_next!14223))

(check-sat)

(pop 1)

(push 1)

(assert b_and!51737)

(assert b_and!51731)

(assert (not b_next!14217))

(assert b_and!51735)

(assert (not b_next!14223))

(assert (not b_next!14219))

(assert b_and!51733)

(assert (not b_next!14221))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!188203 () Bool)

(assert (=> d!188203 (= (inv!6307 (tag!1168 (h!10431 rules!3103))) (= (mod (str.len (value!30688 (tag!1168 (h!10431 rules!3103)))) 2) 0))))

(assert (=> b!530076 d!188203))

(declare-fun d!188207 () Bool)

(declare-fun res!223833 () Bool)

(declare-fun e!319030 () Bool)

(assert (=> d!188207 (=> (not res!223833) (not e!319030))))

(declare-fun semiInverseModEq!362 (Int Int) Bool)

(assert (=> d!188207 (= res!223833 (semiInverseModEq!362 (toChars!1608 (transformation!906 (h!10431 rules!3103))) (toValue!1749 (transformation!906 (h!10431 rules!3103)))))))

(assert (=> d!188207 (= (inv!6310 (transformation!906 (h!10431 rules!3103))) e!319030)))

(declare-fun b!530127 () Bool)

(declare-fun equivClasses!345 (Int Int) Bool)

(assert (=> b!530127 (= e!319030 (equivClasses!345 (toChars!1608 (transformation!906 (h!10431 rules!3103))) (toValue!1749 (transformation!906 (h!10431 rules!3103)))))))

(assert (= (and d!188207 res!223833) b!530127))

(declare-fun m!775479 () Bool)

(assert (=> d!188207 m!775479))

(declare-fun m!775481 () Bool)

(assert (=> b!530127 m!775481))

(assert (=> b!530076 d!188207))

(declare-fun d!188211 () Bool)

(assert (=> d!188211 (= (get!1874 lt!218424) (v!16060 lt!218424))))

(assert (=> b!530075 d!188211))

(declare-fun b!530142 () Bool)

(declare-fun e!319041 () Bool)

(declare-fun inv!16 (TokenValue!930) Bool)

(assert (=> b!530142 (= e!319041 (inv!16 (value!30689 token!491)))))

(declare-fun b!530143 () Bool)

(declare-fun e!319040 () Bool)

(assert (=> b!530143 (= e!319041 e!319040)))

(declare-fun c!101333 () Bool)

(assert (=> b!530143 (= c!101333 (is-IntegerValue!2791 (value!30689 token!491)))))

(declare-fun b!530144 () Bool)

(declare-fun res!223840 () Bool)

(declare-fun e!319039 () Bool)

(assert (=> b!530144 (=> res!223840 e!319039)))

(assert (=> b!530144 (= res!223840 (not (is-IntegerValue!2792 (value!30689 token!491))))))

(assert (=> b!530144 (= e!319040 e!319039)))

(declare-fun d!188213 () Bool)

(declare-fun c!101332 () Bool)

(assert (=> d!188213 (= c!101332 (is-IntegerValue!2790 (value!30689 token!491)))))

(assert (=> d!188213 (= (inv!21 (value!30689 token!491)) e!319041)))

(declare-fun b!530145 () Bool)

(declare-fun inv!15 (TokenValue!930) Bool)

(assert (=> b!530145 (= e!319039 (inv!15 (value!30689 token!491)))))

(declare-fun b!530146 () Bool)

(declare-fun inv!17 (TokenValue!930) Bool)

(assert (=> b!530146 (= e!319040 (inv!17 (value!30689 token!491)))))

(assert (= (and d!188213 c!101332) b!530142))

(assert (= (and d!188213 (not c!101332)) b!530143))

(assert (= (and b!530143 c!101333) b!530146))

(assert (= (and b!530143 (not c!101333)) b!530144))

(assert (= (and b!530144 (not res!223840)) b!530145))

(declare-fun m!775483 () Bool)

(assert (=> b!530142 m!775483))

(declare-fun m!775485 () Bool)

(assert (=> b!530145 m!775485))

(declare-fun m!775487 () Bool)

(assert (=> b!530146 m!775487))

(assert (=> b!530070 d!188213))

(declare-fun d!188215 () Bool)

(declare-fun list!2094 (Conc!1623) List!5039)

(assert (=> d!188215 (= (list!2092 (charsOf!535 token!491)) (list!2094 (c!101324 (charsOf!535 token!491))))))

(declare-fun bs!67114 () Bool)

(assert (= bs!67114 d!188215))

(declare-fun m!775489 () Bool)

(assert (=> bs!67114 m!775489))

(assert (=> b!530072 d!188215))

(declare-fun d!188217 () Bool)

(declare-fun lt!218430 () BalanceConc!3254)

(assert (=> d!188217 (= (list!2092 lt!218430) (originalCharacters!945 token!491))))

(declare-fun dynLambda!3056 (Int TokenValue!930) BalanceConc!3254)

(assert (=> d!188217 (= lt!218430 (dynLambda!3056 (toChars!1608 (transformation!906 (rule!1606 token!491))) (value!30689 token!491)))))

(assert (=> d!188217 (= (charsOf!535 token!491) lt!218430)))

(declare-fun b_lambda!20513 () Bool)

(assert (=> (not b_lambda!20513) (not d!188217)))

(declare-fun t!73698 () Bool)

(declare-fun tb!47225 () Bool)

(assert (=> (and b!530068 (= (toChars!1608 (transformation!906 (rule!1606 token!491))) (toChars!1608 (transformation!906 (rule!1606 token!491)))) t!73698) tb!47225))

(declare-fun b!530158 () Bool)

(declare-fun e!319048 () Bool)

(declare-fun tp!168884 () Bool)

(declare-fun inv!6314 (Conc!1623) Bool)

(assert (=> b!530158 (= e!319048 (and (inv!6314 (c!101324 (dynLambda!3056 (toChars!1608 (transformation!906 (rule!1606 token!491))) (value!30689 token!491)))) tp!168884))))

(declare-fun result!52610 () Bool)

(declare-fun inv!6315 (BalanceConc!3254) Bool)

(assert (=> tb!47225 (= result!52610 (and (inv!6315 (dynLambda!3056 (toChars!1608 (transformation!906 (rule!1606 token!491))) (value!30689 token!491))) e!319048))))

(assert (= tb!47225 b!530158))

(declare-fun m!775503 () Bool)

(assert (=> b!530158 m!775503))

(declare-fun m!775505 () Bool)

(assert (=> tb!47225 m!775505))

(assert (=> d!188217 t!73698))

(declare-fun b_and!51751 () Bool)

(assert (= b_and!51733 (and (=> t!73698 result!52610) b_and!51751)))

(declare-fun t!73702 () Bool)

(declare-fun tb!47229 () Bool)

(assert (=> (and b!530063 (= (toChars!1608 (transformation!906 (h!10431 rules!3103))) (toChars!1608 (transformation!906 (rule!1606 token!491)))) t!73702) tb!47229))

(declare-fun result!52616 () Bool)

(assert (= result!52616 result!52610))

(assert (=> d!188217 t!73702))

(declare-fun b_and!51753 () Bool)

(assert (= b_and!51737 (and (=> t!73702 result!52616) b_and!51753)))

(declare-fun m!775507 () Bool)

(assert (=> d!188217 m!775507))

(declare-fun m!775509 () Bool)

(assert (=> d!188217 m!775509))

(assert (=> b!530072 d!188217))

(declare-fun d!188221 () Bool)

(assert (=> d!188221 (= (isEmpty!3641 rules!3103) (is-Nil!5030 rules!3103))))

(assert (=> b!530071 d!188221))

(declare-fun d!188223 () Bool)

(assert (=> d!188223 true))

(declare-fun lt!218435 () Bool)

(declare-fun lambda!15390 () Int)

(declare-fun forall!1507 (List!5040 Int) Bool)

(assert (=> d!188223 (= lt!218435 (forall!1507 rules!3103 lambda!15390))))

(declare-fun e!319067 () Bool)

(assert (=> d!188223 (= lt!218435 e!319067)))

(declare-fun res!223854 () Bool)

(assert (=> d!188223 (=> res!223854 e!319067)))

(assert (=> d!188223 (= res!223854 (not (is-Cons!5030 rules!3103)))))

(assert (=> d!188223 (= (rulesValidInductive!307 thiss!22590 rules!3103) lt!218435)))

(declare-fun b!530182 () Bool)

(declare-fun e!319066 () Bool)

(assert (=> b!530182 (= e!319067 e!319066)))

(declare-fun res!223855 () Bool)

(assert (=> b!530182 (=> (not res!223855) (not e!319066))))

(declare-fun ruleValid!144 (LexerInterface!792 Rule!1612) Bool)

(assert (=> b!530182 (= res!223855 (ruleValid!144 thiss!22590 (h!10431 rules!3103)))))

(declare-fun b!530183 () Bool)

(assert (=> b!530183 (= e!319066 (rulesValidInductive!307 thiss!22590 (t!73691 rules!3103)))))

(assert (= (and d!188223 (not res!223854)) b!530182))

(assert (= (and b!530182 res!223855) b!530183))

(declare-fun m!775517 () Bool)

(assert (=> d!188223 m!775517))

(declare-fun m!775519 () Bool)

(assert (=> b!530182 m!775519))

(declare-fun m!775521 () Bool)

(assert (=> b!530183 m!775521))

(assert (=> b!530066 d!188223))

(declare-fun d!188229 () Bool)

(declare-fun res!223858 () Bool)

(declare-fun e!319070 () Bool)

(assert (=> d!188229 (=> (not res!223858) (not e!319070))))

(declare-fun rulesValid!327 (LexerInterface!792 List!5040) Bool)

(assert (=> d!188229 (= res!223858 (rulesValid!327 thiss!22590 rules!3103))))

(assert (=> d!188229 (= (rulesInvariant!755 thiss!22590 rules!3103) e!319070)))

(declare-fun b!530188 () Bool)

(declare-datatypes ((List!5044 0))(
  ( (Nil!5034) (Cons!5034 (h!10435 String!6396) (t!73705 List!5044)) )
))
(declare-fun noDuplicateTag!327 (LexerInterface!792 List!5040 List!5044) Bool)

(assert (=> b!530188 (= e!319070 (noDuplicateTag!327 thiss!22590 rules!3103 Nil!5034))))

(assert (= (and d!188229 res!223858) b!530188))

(declare-fun m!775523 () Bool)

(assert (=> d!188229 m!775523))

(declare-fun m!775525 () Bool)

(assert (=> b!530188 m!775525))

(assert (=> b!530067 d!188229))

(declare-fun d!188231 () Bool)

(assert (=> d!188231 (= (inv!6307 (tag!1168 (rule!1606 token!491))) (= (mod (str.len (value!30688 (tag!1168 (rule!1606 token!491)))) 2) 0))))

(assert (=> b!530062 d!188231))

(declare-fun d!188233 () Bool)

(declare-fun res!223859 () Bool)

(declare-fun e!319071 () Bool)

(assert (=> d!188233 (=> (not res!223859) (not e!319071))))

(assert (=> d!188233 (= res!223859 (semiInverseModEq!362 (toChars!1608 (transformation!906 (rule!1606 token!491))) (toValue!1749 (transformation!906 (rule!1606 token!491)))))))

(assert (=> d!188233 (= (inv!6310 (transformation!906 (rule!1606 token!491))) e!319071)))

(declare-fun b!530189 () Bool)

(assert (=> b!530189 (= e!319071 (equivClasses!345 (toChars!1608 (transformation!906 (rule!1606 token!491))) (toValue!1749 (transformation!906 (rule!1606 token!491)))))))

(assert (= (and d!188233 res!223859) b!530189))

(declare-fun m!775527 () Bool)

(assert (=> d!188233 m!775527))

(declare-fun m!775529 () Bool)

(assert (=> b!530189 m!775529))

(assert (=> b!530062 d!188233))

(declare-fun d!188235 () Bool)

(declare-fun isEmpty!3644 (Option!1256) Bool)

(assert (=> d!188235 (= (isDefined!1068 lt!218424) (not (isEmpty!3644 lt!218424)))))

(declare-fun bs!67115 () Bool)

(assert (= bs!67115 d!188235))

(declare-fun m!775531 () Bool)

(assert (=> bs!67115 m!775531))

(assert (=> b!530069 d!188235))

(declare-fun b!530208 () Bool)

(declare-fun e!319078 () Bool)

(declare-fun lt!218447 () Option!1256)

(declare-fun contains!1180 (List!5040 Rule!1612) Bool)

(assert (=> b!530208 (= e!319078 (contains!1180 rules!3103 (rule!1606 (_1!3347 (get!1874 lt!218447)))))))

(declare-fun b!530209 () Bool)

(declare-fun e!319080 () Option!1256)

(declare-fun lt!218449 () Option!1256)

(declare-fun lt!218448 () Option!1256)

(assert (=> b!530209 (= e!319080 (ite (and (is-None!1255 lt!218449) (is-None!1255 lt!218448)) None!1255 (ite (is-None!1255 lt!218448) lt!218449 (ite (is-None!1255 lt!218449) lt!218448 (ite (>= (size!4088 (_1!3347 (v!16060 lt!218449))) (size!4088 (_1!3347 (v!16060 lt!218448)))) lt!218449 lt!218448)))))))

(declare-fun call!38142 () Option!1256)

(assert (=> b!530209 (= lt!218449 call!38142)))

(assert (=> b!530209 (= lt!218448 (maxPrefix!490 thiss!22590 (t!73691 rules!3103) (++!1394 input!2705 suffix!1342)))))

(declare-fun b!530210 () Bool)

(assert (=> b!530210 (= e!319080 call!38142)))

(declare-fun b!530211 () Bool)

(declare-fun e!319079 () Bool)

(assert (=> b!530211 (= e!319079 e!319078)))

(declare-fun res!223878 () Bool)

(assert (=> b!530211 (=> (not res!223878) (not e!319078))))

(assert (=> b!530211 (= res!223878 (isDefined!1068 lt!218447))))

(declare-fun b!530212 () Bool)

(declare-fun res!223875 () Bool)

(assert (=> b!530212 (=> (not res!223875) (not e!319078))))

(declare-fun matchR!435 (Regex!1240 List!5039) Bool)

(assert (=> b!530212 (= res!223875 (matchR!435 (regex!906 (rule!1606 (_1!3347 (get!1874 lt!218447)))) (list!2092 (charsOf!535 (_1!3347 (get!1874 lt!218447))))))))

(declare-fun b!530213 () Bool)

(declare-fun res!223880 () Bool)

(assert (=> b!530213 (=> (not res!223880) (not e!319078))))

(assert (=> b!530213 (= res!223880 (= (++!1394 (list!2092 (charsOf!535 (_1!3347 (get!1874 lt!218447)))) (_2!3347 (get!1874 lt!218447))) (++!1394 input!2705 suffix!1342)))))

(declare-fun b!530214 () Bool)

(declare-fun res!223877 () Bool)

(assert (=> b!530214 (=> (not res!223877) (not e!319078))))

(declare-fun size!4090 (List!5039) Int)

(assert (=> b!530214 (= res!223877 (< (size!4090 (_2!3347 (get!1874 lt!218447))) (size!4090 (++!1394 input!2705 suffix!1342))))))

(declare-fun b!530215 () Bool)

(declare-fun res!223876 () Bool)

(assert (=> b!530215 (=> (not res!223876) (not e!319078))))

(declare-fun apply!1201 (TokenValueInjection!1628 BalanceConc!3254) TokenValue!930)

(declare-fun seqFromList!1124 (List!5039) BalanceConc!3254)

(assert (=> b!530215 (= res!223876 (= (value!30689 (_1!3347 (get!1874 lt!218447))) (apply!1201 (transformation!906 (rule!1606 (_1!3347 (get!1874 lt!218447)))) (seqFromList!1124 (originalCharacters!945 (_1!3347 (get!1874 lt!218447)))))))))

(declare-fun b!530216 () Bool)

(declare-fun res!223874 () Bool)

(assert (=> b!530216 (=> (not res!223874) (not e!319078))))

(assert (=> b!530216 (= res!223874 (= (list!2092 (charsOf!535 (_1!3347 (get!1874 lt!218447)))) (originalCharacters!945 (_1!3347 (get!1874 lt!218447)))))))

(declare-fun bm!38137 () Bool)

(declare-fun maxPrefixOneRule!235 (LexerInterface!792 Rule!1612 List!5039) Option!1256)

(assert (=> bm!38137 (= call!38142 (maxPrefixOneRule!235 thiss!22590 (h!10431 rules!3103) (++!1394 input!2705 suffix!1342)))))

(declare-fun d!188237 () Bool)

(assert (=> d!188237 e!319079))

(declare-fun res!223879 () Bool)

(assert (=> d!188237 (=> res!223879 e!319079)))

(assert (=> d!188237 (= res!223879 (isEmpty!3644 lt!218447))))

(assert (=> d!188237 (= lt!218447 e!319080)))

(declare-fun c!101342 () Bool)

(assert (=> d!188237 (= c!101342 (and (is-Cons!5030 rules!3103) (is-Nil!5030 (t!73691 rules!3103))))))

(declare-datatypes ((Unit!8831 0))(
  ( (Unit!8832) )
))
(declare-fun lt!218446 () Unit!8831)

(declare-fun lt!218450 () Unit!8831)

(assert (=> d!188237 (= lt!218446 lt!218450)))

(declare-fun isPrefix!558 (List!5039 List!5039) Bool)

(assert (=> d!188237 (isPrefix!558 (++!1394 input!2705 suffix!1342) (++!1394 input!2705 suffix!1342))))

(declare-fun lemmaIsPrefixRefl!304 (List!5039 List!5039) Unit!8831)

(assert (=> d!188237 (= lt!218450 (lemmaIsPrefixRefl!304 (++!1394 input!2705 suffix!1342) (++!1394 input!2705 suffix!1342)))))

(assert (=> d!188237 (rulesValidInductive!307 thiss!22590 rules!3103)))

(assert (=> d!188237 (= (maxPrefix!490 thiss!22590 rules!3103 (++!1394 input!2705 suffix!1342)) lt!218447)))

(assert (= (and d!188237 c!101342) b!530210))

(assert (= (and d!188237 (not c!101342)) b!530209))

(assert (= (or b!530210 b!530209) bm!38137))

(assert (= (and d!188237 (not res!223879)) b!530211))

(assert (= (and b!530211 res!223878) b!530216))

(assert (= (and b!530216 res!223874) b!530214))

(assert (= (and b!530214 res!223877) b!530213))

(assert (= (and b!530213 res!223880) b!530215))

(assert (= (and b!530215 res!223876) b!530212))

(assert (= (and b!530212 res!223875) b!530208))

(declare-fun m!775533 () Bool)

(assert (=> b!530213 m!775533))

(declare-fun m!775535 () Bool)

(assert (=> b!530213 m!775535))

(assert (=> b!530213 m!775535))

(declare-fun m!775537 () Bool)

(assert (=> b!530213 m!775537))

(assert (=> b!530213 m!775537))

(declare-fun m!775539 () Bool)

(assert (=> b!530213 m!775539))

(assert (=> b!530215 m!775533))

(declare-fun m!775541 () Bool)

(assert (=> b!530215 m!775541))

(assert (=> b!530215 m!775541))

(declare-fun m!775543 () Bool)

(assert (=> b!530215 m!775543))

(assert (=> b!530208 m!775533))

(declare-fun m!775545 () Bool)

(assert (=> b!530208 m!775545))

(assert (=> bm!38137 m!775423))

(declare-fun m!775547 () Bool)

(assert (=> bm!38137 m!775547))

(assert (=> b!530209 m!775423))

(declare-fun m!775549 () Bool)

(assert (=> b!530209 m!775549))

(assert (=> b!530214 m!775533))

(declare-fun m!775551 () Bool)

(assert (=> b!530214 m!775551))

(assert (=> b!530214 m!775423))

(declare-fun m!775553 () Bool)

(assert (=> b!530214 m!775553))

(declare-fun m!775555 () Bool)

(assert (=> b!530211 m!775555))

(assert (=> b!530216 m!775533))

(assert (=> b!530216 m!775535))

(assert (=> b!530216 m!775535))

(assert (=> b!530216 m!775537))

(declare-fun m!775557 () Bool)

(assert (=> d!188237 m!775557))

(assert (=> d!188237 m!775423))

(assert (=> d!188237 m!775423))

(declare-fun m!775559 () Bool)

(assert (=> d!188237 m!775559))

(assert (=> d!188237 m!775423))

(assert (=> d!188237 m!775423))

(declare-fun m!775561 () Bool)

(assert (=> d!188237 m!775561))

(assert (=> d!188237 m!775437))

(assert (=> b!530212 m!775533))

(assert (=> b!530212 m!775535))

(assert (=> b!530212 m!775535))

(assert (=> b!530212 m!775537))

(assert (=> b!530212 m!775537))

(declare-fun m!775563 () Bool)

(assert (=> b!530212 m!775563))

(assert (=> b!530069 d!188237))

(declare-fun d!188239 () Bool)

(declare-fun e!319085 () Bool)

(assert (=> d!188239 e!319085))

(declare-fun res!223886 () Bool)

(assert (=> d!188239 (=> (not res!223886) (not e!319085))))

(declare-fun lt!218453 () List!5039)

(declare-fun content!895 (List!5039) (Set C!3402))

(assert (=> d!188239 (= res!223886 (= (content!895 lt!218453) (set.union (content!895 input!2705) (content!895 suffix!1342))))))

(declare-fun e!319086 () List!5039)

(assert (=> d!188239 (= lt!218453 e!319086)))

(declare-fun c!101345 () Bool)

(assert (=> d!188239 (= c!101345 (is-Nil!5029 input!2705))))

(assert (=> d!188239 (= (++!1394 input!2705 suffix!1342) lt!218453)))

(declare-fun b!530227 () Bool)

(declare-fun res!223885 () Bool)

(assert (=> b!530227 (=> (not res!223885) (not e!319085))))

(assert (=> b!530227 (= res!223885 (= (size!4090 lt!218453) (+ (size!4090 input!2705) (size!4090 suffix!1342))))))

(declare-fun b!530226 () Bool)

(assert (=> b!530226 (= e!319086 (Cons!5029 (h!10430 input!2705) (++!1394 (t!73690 input!2705) suffix!1342)))))

(declare-fun b!530228 () Bool)

(assert (=> b!530228 (= e!319085 (or (not (= suffix!1342 Nil!5029)) (= lt!218453 input!2705)))))

(declare-fun b!530225 () Bool)

(assert (=> b!530225 (= e!319086 suffix!1342)))

(assert (= (and d!188239 c!101345) b!530225))

(assert (= (and d!188239 (not c!101345)) b!530226))

(assert (= (and d!188239 res!223886) b!530227))

(assert (= (and b!530227 res!223885) b!530228))

(declare-fun m!775565 () Bool)

(assert (=> d!188239 m!775565))

(declare-fun m!775567 () Bool)

(assert (=> d!188239 m!775567))

(declare-fun m!775569 () Bool)

(assert (=> d!188239 m!775569))

(declare-fun m!775571 () Bool)

(assert (=> b!530227 m!775571))

(declare-fun m!775573 () Bool)

(assert (=> b!530227 m!775573))

(declare-fun m!775575 () Bool)

(assert (=> b!530227 m!775575))

(declare-fun m!775577 () Bool)

(assert (=> b!530226 m!775577))

(assert (=> b!530069 d!188239))

(declare-fun d!188241 () Bool)

(assert (=> d!188241 (= (isEmpty!3640 input!2705) (is-Nil!5029 input!2705))))

(assert (=> b!530064 d!188241))

(declare-fun d!188243 () Bool)

(declare-fun res!223891 () Bool)

(declare-fun e!319089 () Bool)

(assert (=> d!188243 (=> (not res!223891) (not e!319089))))

(assert (=> d!188243 (= res!223891 (not (isEmpty!3640 (originalCharacters!945 token!491))))))

(assert (=> d!188243 (= (inv!6311 token!491) e!319089)))

(declare-fun b!530233 () Bool)

(declare-fun res!223892 () Bool)

(assert (=> b!530233 (=> (not res!223892) (not e!319089))))

(assert (=> b!530233 (= res!223892 (= (originalCharacters!945 token!491) (list!2092 (dynLambda!3056 (toChars!1608 (transformation!906 (rule!1606 token!491))) (value!30689 token!491)))))))

(declare-fun b!530234 () Bool)

(assert (=> b!530234 (= e!319089 (= (size!4088 token!491) (size!4090 (originalCharacters!945 token!491))))))

(assert (= (and d!188243 res!223891) b!530233))

(assert (= (and b!530233 res!223892) b!530234))

(declare-fun b_lambda!20515 () Bool)

(assert (=> (not b_lambda!20515) (not b!530233)))

(assert (=> b!530233 t!73698))

(declare-fun b_and!51755 () Bool)

(assert (= b_and!51751 (and (=> t!73698 result!52610) b_and!51755)))

(assert (=> b!530233 t!73702))

(declare-fun b_and!51757 () Bool)

(assert (= b_and!51753 (and (=> t!73702 result!52616) b_and!51757)))

(declare-fun m!775579 () Bool)

(assert (=> d!188243 m!775579))

(assert (=> b!530233 m!775509))

(assert (=> b!530233 m!775509))

(declare-fun m!775581 () Bool)

(assert (=> b!530233 m!775581))

(declare-fun m!775583 () Bool)

(assert (=> b!530234 m!775583))

(assert (=> start!48658 d!188243))

(declare-fun b!530245 () Bool)

(declare-fun b_free!14217 () Bool)

(declare-fun b_next!14233 () Bool)

(assert (=> b!530245 (= b_free!14217 (not b_next!14233))))

(declare-fun tp!168895 () Bool)

(declare-fun b_and!51759 () Bool)

(assert (=> b!530245 (= tp!168895 b_and!51759)))

(declare-fun b_free!14219 () Bool)

(declare-fun b_next!14235 () Bool)

(assert (=> b!530245 (= b_free!14219 (not b_next!14235))))

(declare-fun t!73704 () Bool)

(declare-fun tb!47231 () Bool)

(assert (=> (and b!530245 (= (toChars!1608 (transformation!906 (h!10431 (t!73691 rules!3103)))) (toChars!1608 (transformation!906 (rule!1606 token!491)))) t!73704) tb!47231))

(declare-fun result!52620 () Bool)

(assert (= result!52620 result!52610))

(assert (=> d!188217 t!73704))

(assert (=> b!530233 t!73704))

(declare-fun b_and!51761 () Bool)

(declare-fun tp!168893 () Bool)

(assert (=> b!530245 (= tp!168893 (and (=> t!73704 result!52620) b_and!51761))))

(declare-fun e!319100 () Bool)

(assert (=> b!530245 (= e!319100 (and tp!168895 tp!168893))))

(declare-fun tp!168894 () Bool)

(declare-fun b!530244 () Bool)

(declare-fun e!319101 () Bool)

(assert (=> b!530244 (= e!319101 (and tp!168894 (inv!6307 (tag!1168 (h!10431 (t!73691 rules!3103)))) (inv!6310 (transformation!906 (h!10431 (t!73691 rules!3103)))) e!319100))))

(declare-fun b!530243 () Bool)

(declare-fun e!319098 () Bool)

(declare-fun tp!168896 () Bool)

(assert (=> b!530243 (= e!319098 (and e!319101 tp!168896))))

(assert (=> b!530065 (= tp!168840 e!319098)))

(assert (= b!530244 b!530245))

(assert (= b!530243 b!530244))

(assert (= (and b!530065 (is-Cons!5030 (t!73691 rules!3103))) b!530243))

(declare-fun m!775585 () Bool)

(assert (=> b!530244 m!775585))

(declare-fun m!775587 () Bool)

(assert (=> b!530244 m!775587))

(declare-fun e!319104 () Bool)

(assert (=> b!530076 (= tp!168842 e!319104)))

(declare-fun b!530257 () Bool)

(declare-fun tp!168908 () Bool)

(declare-fun tp!168907 () Bool)

(assert (=> b!530257 (= e!319104 (and tp!168908 tp!168907))))

(declare-fun b!530258 () Bool)

(declare-fun tp!168911 () Bool)

(assert (=> b!530258 (= e!319104 tp!168911)))

(declare-fun b!530256 () Bool)

(assert (=> b!530256 (= e!319104 tp_is_empty!2835)))

(declare-fun b!530259 () Bool)

(declare-fun tp!168909 () Bool)

(declare-fun tp!168910 () Bool)

(assert (=> b!530259 (= e!319104 (and tp!168909 tp!168910))))

(assert (= (and b!530076 (is-ElementMatch!1240 (regex!906 (h!10431 rules!3103)))) b!530256))

(assert (= (and b!530076 (is-Concat!2170 (regex!906 (h!10431 rules!3103)))) b!530257))

(assert (= (and b!530076 (is-Star!1240 (regex!906 (h!10431 rules!3103)))) b!530258))

(assert (= (and b!530076 (is-Union!1240 (regex!906 (h!10431 rules!3103)))) b!530259))

(declare-fun b!530264 () Bool)

(declare-fun e!319107 () Bool)

(declare-fun tp!168914 () Bool)

(assert (=> b!530264 (= e!319107 (and tp_is_empty!2835 tp!168914))))

(assert (=> b!530070 (= tp!168844 e!319107)))

(assert (= (and b!530070 (is-Cons!5029 (originalCharacters!945 token!491))) b!530264))

(declare-fun b!530265 () Bool)

(declare-fun e!319108 () Bool)

(declare-fun tp!168915 () Bool)

(assert (=> b!530265 (= e!319108 (and tp_is_empty!2835 tp!168915))))

(assert (=> b!530073 (= tp!168843 e!319108)))

(assert (= (and b!530073 (is-Cons!5029 (t!73690 suffix!1342))) b!530265))

(declare-fun e!319109 () Bool)

(assert (=> b!530062 (= tp!168839 e!319109)))

(declare-fun b!530267 () Bool)

(declare-fun tp!168917 () Bool)

(declare-fun tp!168916 () Bool)

(assert (=> b!530267 (= e!319109 (and tp!168917 tp!168916))))

(declare-fun b!530268 () Bool)

(declare-fun tp!168920 () Bool)

(assert (=> b!530268 (= e!319109 tp!168920)))

(declare-fun b!530266 () Bool)

(assert (=> b!530266 (= e!319109 tp_is_empty!2835)))

(declare-fun b!530269 () Bool)

(declare-fun tp!168918 () Bool)

(declare-fun tp!168919 () Bool)

(assert (=> b!530269 (= e!319109 (and tp!168918 tp!168919))))

(assert (= (and b!530062 (is-ElementMatch!1240 (regex!906 (rule!1606 token!491)))) b!530266))

(assert (= (and b!530062 (is-Concat!2170 (regex!906 (rule!1606 token!491)))) b!530267))

(assert (= (and b!530062 (is-Star!1240 (regex!906 (rule!1606 token!491)))) b!530268))

(assert (= (and b!530062 (is-Union!1240 (regex!906 (rule!1606 token!491)))) b!530269))

(declare-fun b!530270 () Bool)

(declare-fun e!319110 () Bool)

(declare-fun tp!168921 () Bool)

(assert (=> b!530270 (= e!319110 (and tp_is_empty!2835 tp!168921))))

(assert (=> b!530074 (= tp!168848 e!319110)))

(assert (= (and b!530074 (is-Cons!5029 (t!73690 input!2705))) b!530270))

(declare-fun b_lambda!20517 () Bool)

(assert (= b_lambda!20513 (or (and b!530068 b_free!14203) (and b!530063 b_free!14207 (= (toChars!1608 (transformation!906 (h!10431 rules!3103))) (toChars!1608 (transformation!906 (rule!1606 token!491))))) (and b!530245 b_free!14219 (= (toChars!1608 (transformation!906 (h!10431 (t!73691 rules!3103)))) (toChars!1608 (transformation!906 (rule!1606 token!491))))) b_lambda!20517)))

(declare-fun b_lambda!20519 () Bool)

(assert (= b_lambda!20515 (or (and b!530068 b_free!14203) (and b!530063 b_free!14207 (= (toChars!1608 (transformation!906 (h!10431 rules!3103))) (toChars!1608 (transformation!906 (rule!1606 token!491))))) (and b!530245 b_free!14219 (= (toChars!1608 (transformation!906 (h!10431 (t!73691 rules!3103)))) (toChars!1608 (transformation!906 (rule!1606 token!491))))) b_lambda!20519)))

(push 1)

(assert (not b!530188))

(assert b_and!51735)

(assert (not d!188237))

(assert (not b!530265))

(assert (not d!188207))

(assert (not b!530243))

(assert (not b!530189))

(assert (not b!530213))

(assert (not d!188233))

(assert (not bm!38137))

(assert (not b!530264))

(assert (not b!530269))

(assert (not b!530259))

(assert (not d!188239))

(assert (not b!530216))

(assert (not b_next!14223))

(assert (not b!530183))

(assert (not b!530268))

(assert b_and!51731)

(assert (not b_next!14235))

(assert (not b!530233))

(assert (not b_lambda!20519))

(assert (not b!530227))

(assert (not b!530226))

(assert (not b!530270))

(assert (not tb!47225))

(assert (not b!530208))

(assert b_and!51759)

(assert (not b_next!14217))

(assert (not b!530258))

(assert (not b!530209))

(assert (not b_next!14233))

(assert (not d!188229))

(assert (not b!530127))

(assert (not b!530267))

(assert (not b!530212))

(assert (not d!188223))

(assert (not b!530257))

(assert (not b_lambda!20517))

(assert b_and!51757)

(assert (not b!530182))

(assert b_and!51755)

(assert (not d!188243))

(assert (not b!530145))

(assert (not d!188217))

(assert (not b!530158))

(assert (not b!530214))

(assert (not b!530146))

(assert (not b!530215))

(assert (not b_next!14219))

(assert tp_is_empty!2835)

(assert (not b_next!14221))

(assert (not b!530244))

(assert b_and!51761)

(assert (not d!188215))

(assert (not b!530211))

(assert (not b!530234))

(assert (not b!530142))

(assert (not d!188235))

(check-sat)

(pop 1)

(push 1)

(assert b_and!51759)

(assert (not b_next!14217))

(assert b_and!51735)

(assert (not b_next!14233))

(assert b_and!51761)

(assert (not b_next!14223))

(assert b_and!51731)

(assert (not b_next!14235))

(assert b_and!51757)

(assert b_and!51755)

(assert (not b_next!14219))

(assert (not b_next!14221))

(check-sat)

(pop 1)

